import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Show the nearest route to you',
          style: TextStyle(
            fontSize: 22.0,
            color: Colors.black,
            fontFamily: 'roboto',
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children:
        [
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 40.0,
              end: 40.0,
              top: 40.0,
              bottom: 5,
            ),
            child: Row(
              children: [
                const Text(
                  'from',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        hintText: 'From your place',
                        hintStyle: TextStyle(
                          fontFamily: 'roboto',
                        ),
                        prefixIcon: Icon(
                          Icons.location_pin,
                          color: Color(0xff0057FF),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
              children: [
                const Spacer(),
                InkWell(
                  child: Image.asset('assets/images/123.png'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 40.0,
              top: 5.0,
              end: 40.0,
              bottom: 30.0,
            ),
            child: Row(
              children: [
                const Text(
                  'to',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  width: 42.0,
                ),
                Expanded(
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black),
                    ),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                          hintText: 'to where',
                          hintStyle: TextStyle(
                            fontFamily: 'roboto',
                          ),
                          prefixIcon: Icon(
                            Icons.where_to_vote_outlined,
                            color: Color(0xff0057FF),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 25.0,
              end: 25.0,
              top: 20.0,
            ),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: TextFormField(
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  hintText: 'Add your home location',
                  hintStyle: TextStyle(
                    fontFamily: 'roboto',
                  ),
                  prefixIcon: Icon(
                    Icons.home,
                    color: Color(0xff0057FF),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 25.0,
              end: 25.0,
            ),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: TextFormField(
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  hintText: 'Add your work place',
                  hintStyle: TextStyle(
                    fontFamily: 'roboto',
                  ),
                  prefixIcon: Icon(
                    Icons.work_rounded,
                    color: Color(0xff0057FF),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 25.0,
              end: 25.0,
            ),
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.black),
              ),
              child: TextFormField(
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  hintText: 'Add Favorite place ',
                  hintStyle: TextStyle(
                    fontFamily: 'roboto',
                  ),
                  prefixIcon: Icon(
                    Icons.favorite_border,
                    color: Color(0xff0057FF),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
