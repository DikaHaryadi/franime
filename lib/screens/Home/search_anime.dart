import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:franime/screens/utilities/apk_styles.dart';
import 'package:franime/screens/utilities/dimensions.dart';
import 'package:franime/screens/utilities/widget/big_text.dart';
import 'package:gap/gap.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // ini buat menghapus search anime title
  final searchEpsController = TextEditingController();

  //ini buat automatic generate gridview
  final List<Map<String, dynamic>> epsAnime =
      List.generate(1000, (index) => {"id": index, "episode": "Judul $index"})
          .toList();

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundEps = [];
  @override
  initState() {
    super.initState();
    // ini buat nyari search anime title
    _foundEps = epsAnime;
    // ini buat ngapus tulisan yg udh di tulis sebelumnya
    searchEpsController.addListener(() => setState(() {}));
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = epsAnime;
    } else {
      results = epsAnime
          .where((user) => user["episode"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }
    setState(() {
      _foundEps = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(
                left: Dimensions.width10,
                right: Dimensions.width10,
                top: Dimensions.height50),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius15),
                color: const Color(0xFFF4F6FD)),
            padding: EdgeInsets.only(
                left: Dimensions.width15,
                right: Dimensions.width15,
                bottom: Dimensions.height5),
            child: TextField(
              controller: searchEpsController,
              textInputAction: TextInputAction.done,
              // ini proses mencari judul anime
              onChanged: ((value) => _runFilter(value)),
              decoration: InputDecoration(
                // ini buat ngasih garis di sekitar textfield nya
                border: InputBorder.none,
                icon: Icon(
                  FluentSystemIcons.ic_fluent_search_regular,
                  color: const Color(0xFFBFC205),
                  size: Dimensions.iconsize25,
                ),
                hintText: "Search Anime",
                hintStyle: Styles.headLineStyle3
                    .copyWith(color: Colors.black.withOpacity(0.2)),
                suffixIcon: searchEpsController.text.isEmpty
                    ? Container(
                        width: 0,
                      )
                    : IconButton(
                        icon: const Icon(Icons.close),
                        iconSize: Dimensions.iconsize16,
                        color: Colors.black,
                        onPressed: (() {
                          searchEpsController.clear();
                          _foundEps.clear();
                        }),
                      ),
              ),
            ),
          ),
          Gap(Dimensions.height10),
          // implement GridView.builder
          Expanded(
              child: _foundEps.isNotEmpty
                  ? GridView.builder(
                      padding: EdgeInsets.all(Dimensions.height20),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 100,
                        childAspectRatio: 3 / 4,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemCount: _foundEps.length,
                      itemBuilder: (_, index) {
                        return Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.orange.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(bottom: Dimensions.height5),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  _foundEps[index]["episode"].toString(),
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: Dimensions.font14),
                                ),
                              ),
                            ));
                      })
                  : Center(
                      child: BigText(
                        text: "No results found",
                        color: Colors.black.withOpacity(0.3),
                      ),
                    )),
        ],
      ),
    );
  }
}
