import 'package:flutter/material.dart';
import 'package:insta_digin/utils/custom_print.dart';

class PaginationController {
  int currentPage;
  int totalPages;
  ScrollController? scrollController;
  Function fetchDataOnNewPage;

  PaginationController({
    this.currentPage = 1,
    this.totalPages = 1,
    required this.fetchDataOnNewPage,
  }) {
    try {
      scrollController?.dispose();
      scrollController = ScrollController();
      attachListenerOnScrollController();
    } catch (e) {
      printErr("Scroll controller: $e");
    }
  }

  void reset() {
    currentPage = 1;
    totalPages = 1;
  }

  void attachListenerOnScrollController() {
    scrollController!.addListener(() async {
      if (scrollController!.position.pixels ==
          scrollController!.position.maxScrollExtent) {
        fetchDataOnNewPage();
      }
    });
  }

  void incrementCurrentPage() {
    currentPage++;
  }

  void decrementCurrentPage() {
    currentPage--;
  }

  bool isValidPage() {
    return currentPage <= totalPages;
  }
}
