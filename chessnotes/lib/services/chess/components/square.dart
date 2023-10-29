import 'package:flutter/material.dart';
import 'package:chessnotes/services/chess/components/piece.dart';
import 'package:chessnotes/services/chess/components/colors.dart';

class Square extends StatelessWidget {
  final bool isWhite;
  final ChessPiece? piece;
  final bool isSelected;
  final bool isValidMove;
  final void Function()? onTap;

  const Square({
    super.key,
    required this.isWhite,
    required this.piece,
    required this.isSelected,
    required this.onTap,
    required this.isValidMove
  });

  @override
  Widget build(BuildContext context) {
    Color? squareColor;

    // if Selected, square is blue
    if (isSelected) {
      squareColor = Colors.blue;
    }

    else if (isValidMove) {
      squareColor = Colors.blue[300];
    }

    // otherwise, it's light or dark
    else {
      squareColor = isWhite ? foregroundColor : backgroundColor;
    }


    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: squareColor,
        margin: EdgeInsets.all(isValidMove ? 8 : 0),
        child: piece != null
            ? Image.asset(
                piece!.imagePath,
                color: piece!.isWhite ? Colors.white : Colors.black,
              )
            : null,
      ),
    );
  }
}