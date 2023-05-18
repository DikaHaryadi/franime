import 'package:flutter/material.dart';
import 'package:franime/screens/utilities/apk_styles.dart';
import 'package:franime/screens/utilities/dimensions.dart';
import 'package:franime/screens/utilities/small_text.dart';
import 'package:franime/screens/utilities/widget/big_text.dart';
import 'package:gap/gap.dart';

class CompleteSection extends StatefulWidget {
  const CompleteSection({Key? key}) : super(key: key);

  @override
  State<CompleteSection> createState() => _CompleteSectionState();
}

class _CompleteSectionState extends State<CompleteSection> {
  final searchEpsController = TextEditingController();
  final List<Map<String, dynamic>> epsAnime =
      List.generate(100, (index) => {"id": index, "episode": "Eps $index"})
          .toList();

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundEps = [];
  @override
  initState() {
    // ini buat nyari search anime title
    _foundEps = epsAnime;
    // ini buat ngapus tulisan yg udh di tulis sebelumnya
    searchEpsController.addListener(() => setState(() {}));
    super.initState();
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
                left: Dimensions.width15,
                right: Dimensions.width15,
                top: Dimensions.height30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: "Complete Anime",
                      size: Dimensions.font14,
                    ),
                    SmallText(text: "Franime.id")
                  ],
                ),
                Expanded(
                  child: Container(
                    height: Dimensions.completeImgHeightSize,
                    width: Dimensions.completeImgWidthSize,
                    margin: EdgeInsets.only(
                        left: Dimensions.width10,
                        right: Dimensions.width10,
                        top: Dimensions.height10),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                        color: const Color(0xFFF4F6FD)),
                    padding: EdgeInsets.only(
                        left: Dimensions.width15,
                        right: Dimensions.width15,
                        bottom: Dimensions.height5),
                    child: TextField(
                      controller: searchEpsController,
                      onChanged: ((value) => _runFilter(value)),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Complete Anime",
                        hintStyle: Styles.headLineStyle3
                            .copyWith(color: Colors.black.withOpacity(0.2)),
                        suffixIcon: searchEpsController.text.isEmpty
                            ? Container(
                                width: 0,
                              )
                            : IconButton(
                                icon: const Icon(Icons.close),
                                color: Colors.black,
                                iconSize: Dimensions.iconsize16,
                                onPressed: (() {
                                  searchEpsController.clear();
                                  _foundEps.clear();
                                }),
                              ),
                      ),
                    ),
                  ),
                ),
              ],
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
                                color: Colors.orange.withOpacity(0.8)),
                            child: Padding(
                              padding:
                                  EdgeInsets.only(bottom: Dimensions.height10),
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
