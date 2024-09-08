import 'package:flutter/material.dart';
import 'package:flutter_practice32_hw3/config/colors.dart';
import 'package:flutter_practice32_hw3/mixins/variables.dart';
import 'package:flutter_practice32_hw3/mixins/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with CustomWidgets, CustomVariables {
  bool _turnOfX = true;
  int _scoreOfO = 0;
  int _scoreOfX = 0;

  @override
  void initState() {
    super.initState();
    _scoreOfO = 0;
    _scoreOfX = 0;
  }

  void clear() {
    setState(() {
      firstButton = "";
      secondButton = "";
      thirdButton = "";
      fourthButton = "";
      fifthButton = "";
      sixthButton = "";
      seventhButton = "";
      eighthButton = "";
      ninethButton = "";
      _turnOfX = true;
    });
  }

  void checkForWinner() {
    if (firstButton != "" &&
        firstButton == secondButton &&
        firstButton == thirdButton) {
      if (firstButton == "X") {
        _scoreOfX++;
        clear();
      } else {
        _scoreOfO++;
        clear();
      }
    } else if (fourthButton != "" &&
        fourthButton == fifthButton &&
        fourthButton == sixthButton) {
      if (fourthButton == "X") {
        _scoreOfX++;
        clear();
      } else {
        _scoreOfO++;
        clear();
      }
    } else if (seventhButton != "" &&
        seventhButton == eighthButton &&
        seventhButton == ninethButton) {
      if (seventhButton == "X") {
        _scoreOfX++;
        clear();
      } else {
        _scoreOfO++;
        clear();
      }
    } else if (thirdButton != "" &&
        thirdButton == sixthButton &&
        thirdButton == ninethButton) {
      if (thirdButton == "X") {
        _scoreOfX++;
        clear();
      } else {
        _scoreOfO++;
        clear();
      }
    } else if (firstButton != "" &&
        firstButton == fourthButton &&
        firstButton == seventhButton) {
      if (firstButton == "X") {
        _scoreOfX++;
        clear();
      } else {
        _scoreOfO++;
        clear();
      }
    } else if (secondButton != "" &&
        secondButton == fifthButton &&
        secondButton == eighthButton) {
      if (secondButton == "X") {
        _scoreOfX++;
        clear();
      } else {
        _scoreOfO++;
        clear();
      }
    } else if (firstButton != "" &&
        firstButton == fifthButton &&
        firstButton == ninethButton) {
      if (firstButton == "X") {
        _scoreOfX++;
        clear();
      } else {
        _scoreOfO++;
        clear();
      }
    } else if (seventhButton != "" &&
        seventhButton == fifthButton &&
        seventhButton == thirdButton) {
      if (seventhButton == "X") {
        _scoreOfX++;
        clear();
      } else {
        _scoreOfO++;
        clear();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: CustomColors.black,
        centerTitle: true,
        title: Text(
          "Tic Tac Toe",
          style: TextStyle(
              color: CustomColors.white,
              fontSize: 24,
              fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
              onPressed: () {
                clear();
              },
              icon: Icon(Icons.restart_alt_rounded,
                  color: CustomColors.white, size: 30)),
          SizedBox(
            width: 9,
          )
        ],
      ),
      body: Column(
        children: [
          // Top part
          Expanded(
              child: Container(
            padding: EdgeInsets.only(top: 10),
            width: double.infinity,
            // Top Texts Part where scores of the users will be shown
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        customText(textContent: "Player O"),
                        SizedBox(
                          height: 10,
                        ),
                        customText(textContent: _scoreOfO.toString())
                      ],
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Column(
                      children: [
                        customText(textContent: "Player X"),
                        SizedBox(
                          height: 10,
                        ),
                        customText(textContent: _scoreOfX.toString()),
                      ],
                    )
                  ],
                )
              ],
            ),
          )),
          // Middle part
          Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    // 1st Expanded
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          border: Border.symmetric(
                              horizontal: BorderSide(
                                  color: CustomColors.grey, width: 3))),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                  height: double.infinity,
                                  child: TextButton(
                                      onPressed: () {
                                        if (firstButton.isEmpty) {
                                          setState(() {
                                            firstButton = _turnOfX ? "X" : "O";
                                            _turnOfX = !_turnOfX;
                                            checkForWinner();
                                          });
                                        }
                                      },
                                      child: Text(
                                        firstButton,
                                        style: TextStyle(
                                            color: CustomColors.red,
                                            fontSize: 40,
                                            fontWeight: FontWeight.w500),
                                      )))),
                          Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.symmetric(
                                          vertical: BorderSide(
                                              color: CustomColors.grey,
                                              width: 3))),
                                  height: double.infinity,
                                  child: TextButton(
                                      onPressed: () {
                                        if (secondButton.isEmpty) {
                                          setState(() {
                                            secondButton = _turnOfX ? "X" : "O";
                                            _turnOfX = !_turnOfX;
                                            checkForWinner();
                                          });
                                        }
                                      },
                                      child: Text(
                                        secondButton,
                                        style: TextStyle(
                                            color: CustomColors.red,
                                            fontSize: 40,
                                            fontWeight: FontWeight.w500),
                                      )))),
                          Expanded(
                              child: Container(
                                  height: double.infinity,
                                  child: TextButton(
                                      onPressed: () {
                                        if (thirdButton.isEmpty) {
                                          setState(() {
                                            thirdButton = _turnOfX ? "X" : "O";
                                            _turnOfX = !_turnOfX;
                                            checkForWinner();
                                          });
                                        }
                                      },
                                      child: Text(
                                        thirdButton,
                                        style: TextStyle(
                                            color: CustomColors.red,
                                            fontSize: 40,
                                            fontWeight: FontWeight.w500),
                                      ))))
                        ],
                      ),
                    )),
                    // 2nd Expanded
                    Expanded(
                        child: Container(
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                  height: double.infinity,
                                  child: TextButton(
                                      onPressed: () {
                                        if (fourthButton.isEmpty) {
                                          setState(() {
                                            fourthButton = _turnOfX ? "X" : "O";
                                            _turnOfX = !_turnOfX;
                                            checkForWinner();
                                          });
                                        }
                                      },
                                      child: Text(
                                        fourthButton,
                                        style: TextStyle(
                                            color: CustomColors.red,
                                            fontSize: 40,
                                            fontWeight: FontWeight.w500),
                                      )))),
                          Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.symmetric(
                                          vertical: BorderSide(
                                              color: CustomColors.grey,
                                              width: 3))),
                                  height: double.infinity,
                                  child: TextButton(
                                      onPressed: () {
                                        if (fifthButton.isEmpty) {
                                          setState(() {
                                            fifthButton = _turnOfX ? "X" : "O";
                                            _turnOfX = !_turnOfX;
                                            checkForWinner();
                                          });
                                        }
                                      },
                                      child: Text(
                                        fifthButton,
                                        style: TextStyle(
                                            color: CustomColors.red,
                                            fontSize: 40,
                                            fontWeight: FontWeight.w500),
                                      )))),
                          Expanded(
                              child: Container(
                                  height: double.infinity,
                                  child: TextButton(
                                      onPressed: () {
                                        if (sixthButton.isEmpty) {
                                          setState(() {
                                            sixthButton = _turnOfX ? "X" : "O";
                                            _turnOfX = !_turnOfX;
                                            checkForWinner();
                                          });
                                        }
                                      },
                                      child: Text(
                                        sixthButton,
                                        style: TextStyle(
                                            color: CustomColors.red,
                                            fontSize: 40,
                                            fontWeight: FontWeight.w500),
                                      ))))
                        ],
                      ),
                    )),
                    // 3rd Expanded
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          border: Border.symmetric(
                              horizontal: BorderSide(
                                  color: CustomColors.grey, width: 3))),
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                  height: double.infinity,
                                  child: TextButton(
                                      onPressed: () {
                                        if (seventhButton.isEmpty) {
                                          setState(() {
                                            seventhButton =
                                                _turnOfX ? "X" : "O";
                                            _turnOfX = !_turnOfX;
                                            checkForWinner();
                                          });
                                        }
                                      },
                                      child: Text(
                                        seventhButton,
                                        style: TextStyle(
                                            color: CustomColors.red,
                                            fontSize: 40,
                                            fontWeight: FontWeight.w500),
                                      )))),
                          Expanded(
                              child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.symmetric(
                                          vertical: BorderSide(
                                              color: CustomColors.grey,
                                              width: 3))),
                                  height: double.infinity,
                                  child: TextButton(
                                      onPressed: () {
                                        if (eighthButton.isEmpty) {
                                          setState(() {
                                            eighthButton = _turnOfX ? "X" : "O";
                                            _turnOfX = !_turnOfX;
                                            checkForWinner();
                                          });
                                        }
                                      },
                                      child: Text(
                                        eighthButton,
                                        style: TextStyle(
                                            color: CustomColors.red,
                                            fontSize: 40,
                                            fontWeight: FontWeight.w500),
                                      )))),
                          Expanded(
                              child: Container(
                                  height: double.infinity,
                                  child: TextButton(
                                      onPressed: () {
                                        if (ninethButton.isEmpty) {
                                          setState(() {
                                            ninethButton = _turnOfX ? "X" : "O";
                                            _turnOfX = !_turnOfX;
                                            checkForWinner();
                                          });
                                        }
                                      },
                                      child: Text(
                                        ninethButton,
                                        style: TextStyle(
                                            color: CustomColors.red,
                                            fontSize: 40,
                                            fontWeight: FontWeight.w500),
                                      ))))
                        ],
                      ),
                    )),
                  ],
                ),
              )),
          // Bottom part
          Expanded(
              child: Container(
            width: double.infinity,
            // padding: EdgeInsets.only(bottom: 20),
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.fromLTRB(55, 17, 55, 10),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: CustomColors.grey, width: 3),
                      left: BorderSide(color: CustomColors.grey, width: 3),
                      right: BorderSide(color: CustomColors.grey, width: 3))),
              child: Text(
                _turnOfX ? "Turn of X" : "Turn of O",
                style: TextStyle(
                    color: CustomColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
