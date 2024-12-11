import 'package:flutter/material.dart';
import 'package:knowknowgram_app/common/custom_appbar.dart';
import 'package:knowknowgram_app/theme/colors.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  // 그리드 사이즈
  final int gridSize = 10;

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
    [2, 1],
    [1]
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
    [1, 1]
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
  void _updateCell (Offset position, BoxConstraints constraints) {
    final cellSize = constraints.maxWidth / gridSize;

    final int row = (position.dy ~/ cellSize).clamp(0, gridSize-1);
    final int col = (position.dx ~/ cellSize).clamp(0, gridSize-1);

    setState(() {
      grid[row][col] = currentState;
      print('드래그 row : $row , col $col ${grid[row][col]}');
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
              children: [
                SizedBox(
                  width: 50,
                ),
                Expanded(
                  child: Row(
                    children: colHints
                        .map(
                          (e) => Expanded(
                            child: Column(
                              children: e
                                  .map(
                                    (num) => Text(
                                      '$num',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                  children: [
                Column(
                  children: rowHints
                      .map(
                        (e) => Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: e
                                .map(
                                  (num) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 4.0),
                                    child: Text(
                                      '$num',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      )
                      .toList(),
                ),
                SizedBox(
                  width: 8,
                ),

                // 드래그 포함
                Expanded(
                  child: LayoutBuilder(
                      builder: (context, constraints){
                    return GestureDetector(
                      onPanStart: (details) {
                        _updateCell(details.localPosition, constraints);
                      },
                      onPanUpdate: (details) {
                        _updateCell(details.localPosition, constraints);
                      },
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: gridSize,
                            mainAxisSpacing: 1,
                            crossAxisSpacing: 1,
                          ),
                          itemCount: gridSize * gridSize,
                          itemBuilder: (context, index) {
                            int row = index ~/ gridSize;
                            int col = index % gridSize;

                            double iconSize = (constraints.maxWidth / gridSize);
                  
                            return GestureDetector(
                              onTap: () {
                                _onCellTap(row, col);
                              },
                              child: Container(
                                color: grid[row][col] == 1
                                              ? mainMintText
                                              : Colors.white.withOpacity(0.1),
                                          child: grid[row][col] == 2
                                              ? Center(
                                                  child: Icon(
                                                    Icons.close_rounded,
                                                    color: mainMintText,
                                                    size: iconSize,
                                                  ),
                                                )
                                              : null,
                              ),
                            );
                          }
                      ),
                    );
                  }),
                )

                // 클릭만 가능
                // Expanded(
                //   child: GridView.builder(
                //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: gridSize,
                //         mainAxisSpacing: 1,
                //         crossAxisSpacing: 1,
                //       ),
                //       itemCount: gridSize * gridSize,
                //       itemBuilder: (context, index) {
                //         int row = index ~/ gridSize;
                //         int col = index % gridSize;
                //         return GestureDetector(
                //           onTap: () => _onCellTap(row, col),
                //           child: Container(
                //             color: grid[row][col] == 1
                //                 ? mainMintText
                //                 : Colors.white.withOpacity(0.1),
                //             child: grid[row][col] == 2
                //                 ? Center(
                //                     child: Icon(
                //                       Icons.close,
                //                       color: Colors.black,
                //                     ),
                //                   )
                //                 : null,
                //           ),
                //         );
                //       }),
                // ),
              ]),
            ),
            Expanded(
              child: Container(
                child: Row(
                  children: [
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 50,
        color: Colors.yellow,
        child: Container(
        ),
      ),
    );
  }
}
