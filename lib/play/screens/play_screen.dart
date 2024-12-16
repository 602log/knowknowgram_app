import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:knowknowgram_app/common/custom_appbar.dart';
import 'package:knowknowgram_app/theme/colors.dart';
import 'dart:math' as math;

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  bool back = false;
  bool forward = false;
  bool cancel = false;
  bool check = false;

  // 그리드 사이즈
  final int gridSize = 25;

  // 힌트
  final List<List<int>> rowHints = [
    [1, 1],
    [3],
    [1],
    [2, 1],
    [1],
    [1, 1],
    [3],
    [1],
    [2, 1, 3],
    [1],
    [1],
    [2],
    [3],
    [1, 1],
    [1, 1],
    [1],
    [2],
    [3],
    [2, 1, 3, 4, 5],
    [1],
    [1],
    [2],
    [3],
    [1, 1],
    [1, 1],
    // [1],
    // [2],
    // [3],
    // [2, 1, 3, 4, 5],
    // [1],
  ];

  final List<List<int>> colHints = [
    [1],
    [2],
    [3],
    [1, 1],
    [1, 1],
    [1],
    [2],
    [3],
    [1, 1],
    [1, 1],
    [1, 1],
    [3],
    [1],
    [2, 1],
    [1],
    [1, 1],
    [3],
    [1],
    [2, 1],
    [1],
    [1],
    [2],
    [3],
    [1, 1],
    [1, 1],
    // [1],
    // [2],
    // [3],
    // [2, 1, 3, 4, 5],
    // [1],

  ];

  // 드래그 중 선택할 상태 (기본 : 채운칸)
  int currentState = 1;

  /*
  0: 빈칸,
  1: 채운칸,
  -1: 지운칸
  셀 상태 관리
  */
  List<List<int>> grid = [];

  void initState() {
    super.initState();
    // 초기 모두 칸을 빈칸으로 생성
    grid = List.generate(
      gridSize,
          (index) => List.generate(gridSize, (_) => 0),
    );
  }

  // 셀 탭했을 때 상태 변경
  void _onCellTap(int row, int col) {
    setState(() {
      // 0 -> 1 -> -1 -> 0 순환
      grid[row][col] = (grid[row][col] + 1) % 3;
      print('클릭 row : $row , col $col ${grid[row][col]}');
    });
  }

  // 특정 좌표에서 셀 상태 업데이트
  void _updateCell(Offset position, BoxConstraints constraints) {
    print('position $position');
    final cellSize = (constraints.maxWidth - 80) / gridSize ;

    final int row = ((position.dy + 40) ~/ cellSize).clamp(0, gridSize - 1);
    final int col = ((position.dx + 10) ~/ cellSize).clamp(0, gridSize - 1);

    setState(() {
      grid[row][col] = currentState;
      print('드래그 row : $row , col $col ${grid[row][col]}');
    });
  }

  void toggleCell(int row, int col) {
    setState(() {
      // 셀 상태 변경: 0 -> 1 -> 0
      grid[row][col] = (grid[row][col] + 1) % 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mediumBlack,
      appBar: CustomAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.remove_done,
                      color: Colors.white,
                      size: 18.0,
                    ),
                    Text(
                      'reset',
                      style: TextStyle(color: Colors.white, fontSize: 10.0),
                    )
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 30,
            ),

            Center(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return GestureDetector(
                    onPanStart: (details) {
                      _updateCell((details.localPosition + Offset(-80, -80)), constraints);
                    },
                    onPanUpdate: (details) {
                      _updateCell((details.localPosition + Offset(-80, -80) ), constraints);
                    },
                    child: Table(
                      columnWidths: {
                        0: FixedColumnWidth(60),
                      },
                      border: TableBorder.all(color: Colors.black, width: 1),
                      children: [
                        // 첫 번째 행: 빈 셀 + 열 힌트
                        TableRow(
                          children: [
                            SizedBox(), // 빈 셀 (왼쪽 위 모서리)
                            ...colHints.map(
                                    (hints) => Column(
                                  children: hints.map((e) =>
                                      Text(
                                        e.toString(), // 힌트를 줄바꿈으로 나열
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 9,
                                          color: Colors.white,
                                        ),
                                      ),
                                  ).toList(),
                                )
                            ),
                          ],
                        ),

                        // 나머지 행: 행 힌트 + 게임판
                        ...List.generate(
                          gridSize,
                              (rowIndex) => TableRow(
                            children: [
                              // 행 힌트
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  rowHints[rowIndex].join("  "), // 힌트를 공백으로 나열
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 9,
                                    color: Colors.white,
                                  ),
                                ),
                              ),

                              // 게임판 셀
                              ...List.generate(
                                gridSize,
                                    (colIndex) => GestureDetector(
                                  onTap: () {
                                    _onCellTap(rowIndex, colIndex);
                                  },
                                  child: AspectRatio(
                                    aspectRatio: 1.0,
                                    child: Container(
                                      color: grid[rowIndex][colIndex] == 1
                                          ? mainMintText
                                          : Colors.white.withOpacity(0.1),
                                      child: grid[rowIndex][colIndex] == 2
                                          ? Center(
                                        child: Icon(
                                          Icons.close_rounded,
                                          color: mainMintText,
                                          size: 8,
                                        ),
                                      )
                                          : null,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Expanded(
            //   flex: 1,
            //   child: Row(
            //     children: [
            //       Expanded(
            //         flex: 1,
            //           child: SizedBox()
            //       ),
            //       Expanded(
            //         flex: 10,
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceAround,
            //           children: colHints.map((e) =>
            //             Column(
            //               children: e.map((num) =>
            //                 Text(
            //                   '$num',
            //                   style: TextStyle(
            //                     color: Colors.white,
            //                     fontSize: 12.0
            //                   ),
            //                 )
            //               ).toList(),
            //             )
            //           ).toList(),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            //
            // Expanded(
            //   flex: 10,
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Expanded(
            //           flex: 1,
            //           child: Column(
            //             children: rowHints.map((e) =>
            //                 Row(
            //                   children: e.map((num) =>
            //                     Text(
            //                       '$num',
            //                       style: TextStyle(
            //                         color: Colors.white,
            //                         fontSize: 12.5
            //                       ),
            //                     )
            //                   ).toList(),
            //                 )
            //             ).toList(),
            //           )
            //       ),
            //       Expanded(
            //         flex: 10,
            //         child: LayoutBuilder(
            //           builder: (context, constraints){
            //             return GestureDetector(
            //               onPanStart: (details) {
            //                 _updateCell(details.localPosition, constraints);
            //               },
            //               onPanUpdate: (details){
            //                 _updateCell(details.localPosition, constraints);
            //               },
            //               child: GridView.builder(
            //                 physics: NeverScrollableScrollPhysics(),
            //                   shrinkWrap: true,
            //                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //                     crossAxisCount: gridSize,
            //                     mainAxisSpacing: 1,
            //                     crossAxisSpacing: 1,
            //                   ),
            //                   itemCount: gridSize * gridSize,
            //                   itemBuilder: (context, index){
            //                     int row = index ~/ gridSize;
            //                     int col = index % gridSize;
            //
            //                     double iconSize = (constraints.maxWidth / gridSize);
            //
            //                     return GestureDetector(
            //                       onTap: (){
            //                         _onCellTap(row, col);
            //                       },
            //                       child: Container(
            //                         color: grid[row][col] == 1
            //                           ? mainMintText
            //                           : Colors.white.withOpacity(0.1),
            //                         child: grid[row][col] == 2
            //                           ? Center(
            //                           child: Icon(
            //                             Icons.close_rounded,
            //                             color: mainMintText,
            //                             size: iconSize,
            //                           ),
            //                         ) : null,
            //                       ),
            //                     );
            //                   }
            //               ),
            //             );
            //           },
            //         )
            //       ),
            //     ],
            //   ),
            // ),

            SizedBox(
              height: 30,
            ),

            Container(
              padding: EdgeInsets.symmetric(
                  vertical: 10.0, horizontal: 20.0),
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(35.0),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.1),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.1),
                      spreadRadius: 10.0,
                      blurRadius: 40.0,
                      offset: Offset(-10, -10),
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(50.0),
                    splashColor: splashMint,
                    onTap: () {
                      setState(() {
                        back = !back;
                      });
                    },
                    child: Ink(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.undo,
                        color: back ? mainMintText : Colors.white,
                        size: 40.0,
                      ),
                    ),
                  ),
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.rotationY(math.pi),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(45.0),
                      splashColor: splashMint,
                      onTap: () {
                        setState(() {
                          forward = !forward;
                        });
                      },
                      child: Ink(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.undo,
                          color: forward ? mainMintText : Colors.white,
                          size: 40.0,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(45.0),
                    onTap: () {
                      setState(() {
                        cancel = !cancel;
                        if (cancel) check = false;
                      });
                    },
                    child: Icon(
                      Icons.cancel,
                      color: cancel ? mainMintText : Colors.white,
                      size: 40.0,
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(45.0),
                    onTap: () {
                      setState(() {
                        check = !check;
                        if (check) cancel = false;
                      });
                    },
                    child: Icon(
                      Icons.check_circle,
                      color: check ? mainMintText : Colors.white,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 50,
        color: Colors.yellow,
        child: Container(),
      ),
    );
  }
}
