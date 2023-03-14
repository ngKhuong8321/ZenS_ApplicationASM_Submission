import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class JokeContainer extends StatefulWidget {
  int curr;
  JokeContainer({Key? key, required this.curr}) : super(key: key);

  ///List of joke
  final List<String> jokesList = [
    '''A child asked his father, "How were people born?" So his father said, "Adam and Eve made babies, then their babies became adults and made babies, and so on."

The child then went to his mother, asked her the same question and she told him, "We were monkeys then we evolved to become like we are now."

The child ran back to his father and said, "You lied to me!" His father replied, "No, your mom was talking about her side of the family."''',
    '''Teacher: "Kids,what does the chicken give you?" Student: "Meat!" Teacher: "Very good! Now what does the pig give you?" Student: "Bacon!" Teacher: "Great! And what does the fat cow give you?" Student: "Homework!"''',
    '''The teacher asked Jimmy, "Why is your cat at school today Jimmy?" Jimmy replied crying, "Because I heard my daddy tell my mommy, 'I am going to eat that pussy once Jimmy leaves for school today!'"''',
    '''A housewife, an accountant and a lawyer were asked "How much is 2+2?" The housewife replies: "Four!". The accountant says: "I think it's either 3 or 4. Let me run those figures through my spreadsheet one more time." The lawyer pulls the drapes, dims the lights and asks in a hushed voice, "How much do you want it to be?"''',
  ];

  @override
  State<JokeContainer> createState() => _JokeContainerState();
}

class _JokeContainerState extends State<JokeContainer> {
  // Next joke on click function
  void proceed(bool isFunny) async {
    final prefs = await SharedPreferences.getInstance(); //cookie setup
    await prefs.setBool('joke${widget.curr}', isFunny);

    if (widget.curr < 4) {
      setState(() {
        widget.curr++;
      });
    } else {} //do nothing
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20.0),
          width: MediaQuery.of(context).size.width,
          child: Center(
            // Jokes goes here
            child: widget.curr < 4
                ? Container(
                    margin: const EdgeInsets.all(15.0),
                    child: Text(
                      widget.jokesList[widget.curr],
                    ),
                  )
                : SizedBox(
                    // Message when out of jokes
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.10,
                            width: MediaQuery.of(context).size.height * 0.12,
                            margin:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Image.asset(
                              'img/logo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: const Text(
                              '''That's all the jokes for today!
Come back another day!''',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ),
        ),

        /// Buttons Section
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey, width: 0.2),
            ),
          ),
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  proceed(true);
                },
                style: TextButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 44, 126, 219), // Text Color
                ),
                child: const Text(
                  'This is Funny!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  proceed(false);
                },
                style: TextButton.styleFrom(
                  backgroundColor:
                      const Color.fromARGB(255, 41, 179, 99), // Text Color
                ),
                child: const Text(
                  'This is not funny.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
