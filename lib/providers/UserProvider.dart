import 'package:colorapp/model/color.dart';
import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  List checkState = [
    Colord.getData(
        state: false,
        col: "Dahlia",
        cols:
            'https://upload.wikimedia.org/wikipedia/commons/a/ab/Dahlia_x_hybrida.jpg',
        price: 100.00),
    Colord.getData(
        state: false,
        col: "Lily",
        cols:
            "https://upload.wikimedia.org/wikipedia/commons/3/30/Lilium_candidum_1.jpg",
        price: 100.00),
    Colord.getData(
        state: false,
        col: "Iris",
        cols:
            "https://upload.wikimedia.org/wikipedia/commons/4/49/Iris_germanica_%28Purple_bearded_Iris%29%2C_Wakehurst_Place%2C_UK_-_Diliff.jpg",
        price: 120.00),
    Colord.getData(
        state: false,
        col: "Daisy",
        cols:
            "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS6nLTlbFfoKTgA0mkKOpXhyrYOgxdIEff8du16eU07R0gGggpo",
        price: 104.78),
    Colord.getData(
        state: false,
        col: "Daffodil",
        cols:
            "https://t3.gstatic.com/licensed-image?q=tbn:ANd9GcRXNsFmTqTKxXLhCdzlNiRNPqjR1U_tEH8sLkKT18N0nh_tdL7LxzEfTDpEcvW9a0bV",
        price: 112.99),
    Colord.getData(
        state: false,
        col: "Tulip",
        cols:
            "https://t3.gstatic.com/licensed-image?q=tbn:ANd9GcTnuMdz8NbpO5c-FxH1BFE1_Z-RkIzBetqjYH7ySXAZ9S07lIqxN2yiN_9QO2dLn5aG",
        price: 100.00),
    Colord.getData(
        state: false,
        col: "Rose",
        cols:
            "https://t2.gstatic.com/licensed-image?q=tbn:ANd9GcSAGPbjEEPCpSnwvmura8ARSyCJg-otGamF2T17JFpTkGgqZuGJzGxpMY606YpQyGnk",
        price: 210.00),
    Colord.getData(
        state: false,
        col: "Marigold",
        cols:
            "https://upload.wikimedia.org/wikipedia/commons/b/b0/Tagetes_erecta_chendumalli_chedi.jpg",
        price: 102.00),
    Colord.getData(
        state: false,
        col: "Jasmine",
        cols:
            "https://t2.gstatic.com/licensed-image?q=tbn:ANd9GcT1HpopvAg4M0gTmLR2-36Ek8jxLZPE6iXtdvFZUuNR1ERfg0a_G8ZHWCvamADnwNWZ",
        price: 150.78),
    Colord.getData(
        state: false,
        col: "Sunflower",
        cols:
            "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSTw7sfiHPVHe_RwI9W6t55dFl-zy9wpsTH4k_I_PKxC_JenevW",
        price: 120.99),
  ];

  void setColor(int i, bool val) {
    checkState[i] = val;
    notifyListeners();
  }

  bool? getColor(
    int i,
  ) {
    notifyListeners();
    return checkState[i];
  }
}
