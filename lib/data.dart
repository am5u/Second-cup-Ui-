import 'package:flutter/material.dart';
import 'package:hello_world/Models/Gifts.dart';
import 'package:hello_world/Models/invoice.dart';
import 'package:hello_world/wedgits/Giftcard.dart';

const List<Gift> allGifts = [
  Gift(
    title: "100 EGP Voucher",
    about: "HERE IS A 100 EGP",
    imageUrl: "cofee.jpg",
    // no image url provided
    validFrom: "26/05/2024 - 08:14",
    status: "Redeemed",
  ),
  Gift(
    title: "HAPPY EASTER",
    about: "ENJOY 50% OFF UP TO 200EGP ON ALL PRODUCTS",
    imageUrl: "backtoschool.jpg",
    // no image url provided
    validFrom: "02/05/2024 - 06:00",
    status: "Expired",
  ),
  Gift(
    title: "Mother DAY GIFT",
    about: "BUY A  CUP OF COFFEE FOR YOU MOM , OR A COFFEE MUG",
    imageUrl: "newcollection.jpg",
    // no image url provided
    validFrom: "22/04/2024 – 11:14",
    status: "Expired",
  ),
  Gift(
    title: "HAZARD OPENING GIFT",
    about: "ENJOY 50% OFF UP TO 200EGP ON ALL PRODUCTS",
    imageUrl: "backtoschool.jpg",
    // no image url provided
    validFrom: "09/04/2024 – 07:14",
    status: "Expired",
  ),
];
const List<Invoice> allInvoices = [
  Invoice(
      name: ['CARAMEL CORRETTO CHILLER LARGE', 'Ice spnash latte'],
      quantity: [1, 2],
      price: [59.21, 60.00]),
  Invoice(
      name: ['CHEESE CAKE BLUEBERRY PCS', 'cheese cake '],
      quantity: [1, 3],
      price: [61.79, 305.10]),
  Invoice(
      name: ['CHEESE CAKE LOTUS PCS', 'mocha'],
      quantity: [1, 3],
      price: [61.78, 80.00]),
];
