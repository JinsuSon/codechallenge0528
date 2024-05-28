import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/img.png',
                        width: 65,
                        height: 65,
                      ),
                    ),
                    const Icon(
                      color: Colors.white,
                      Icons.add,
                      size: 35,
                    ),
                  ],
                ),
              ),
            ),
            const Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(left: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Date Today',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'List Dates',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
                flex: 5,
                child: Column(
                  children: [
                    const Expanded(
                      child: BoxContent(
                        names: [
                          'ALEX',
                          'HELENA',
                          'NANA',
                        ],
                        backGroundColor: Color(0xfffff954),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        constraints: const BoxConstraints.expand(),
                        decoration: BoxDecoration(
                            color: const Color(0xff9d6bcf),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Text('Daily Project'),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        constraints: const BoxConstraints.expand(),
                        decoration: BoxDecoration(
                            color: const Color(0xffbded4c),
                            borderRadius: BorderRadius.circular(30)),
                        child: const Text('Weekly Planning'),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class BoxContent extends StatelessWidget {
  final Color backGroundColor;
  final List<String> names;
  final isMe = false;

  const BoxContent({
    super.key,
    required this.backGroundColor,
    required this.names,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(11),
        child: Column(
          children: [
            const Row(
              children: [
                Column(
                  children: [
                    TimeInput(
                      hourBegin: '11',
                      minutesBegin: '30',
                      hourEnd: '12',
                      minutesEnd: '20',
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DESIGN',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                    Text(
                      'MEETING',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    )
                  ],
                )
              ],
            ),
            Transform.translate(
              offset: const Offset(-40, 5),
              child: Wrap(
                spacing: 40,
                runSpacing: 4.0,
                children: names.map((name) {
                  final isMe = name == 'ME';
                  return Text(
                    name,
                    style:
                        TextStyle(color: isMe ? Colors.black : Colors.black38),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TimeInput extends StatelessWidget {
  final String hourBegin;
  final String minutesBegin;
  final String hourEnd;
  final String minutesEnd;

  const TimeInput({
    super.key,
    required this.hourBegin,
    required this.minutesBegin,
    required this.hourEnd,
    required this.minutesEnd,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          hourBegin,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          minutesBegin,
          style: const TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Text(
          '|',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        Text(
          hourEnd,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          minutesEnd,
          style: const TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
