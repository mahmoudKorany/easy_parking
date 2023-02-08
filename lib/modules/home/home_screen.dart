import 'package:easy_parking/modules/filter_screen/filter_screen.dart';
import 'package:easy_parking/modules/search_screen/search_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image(
            image: AssetImage(
              'assets/images/12.png',
            ),
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.only(
            top: 100.0,
            start: 20.0,
            end: 20.0
          ),
          child: SizedBox(
            height: 50,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black)
                      ),
                      child: TextFormField(
                        enabled: false,
                        decoration: const InputDecoration(
                          hintText: 'Search for the world',
                          hintStyle: TextStyle(
                            fontFamily: 'roboto',
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                          ),
                          suffixIcon: Icon(
                            Icons.mic,
                          ),
                        ),
                      ),
                    ),
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
                    },
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 20.0),
                  child: Container(
                    width: 49.0,
                    height: 49.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black)
                    ),
                    child: IconButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const FilterScreen()));
                      },
                      icon: const Icon(
                        Icons.reorder_sharp,
                        color: Color(0xff0057FF),
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
