import 'package:flutter/material.dart';
import 'package:hello_world/Models/Gifts.dart';
import 'package:hello_world/Models/Invoice.dart';
import 'package:hello_world/Models/item.dart';
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
    status: "09/04/2024 – 07:14",
  ),
  Gift(
    title: "Mother DAY GIFT",
    about: "BUY A  CUP OF COFFEE FOR YOU MOM , OR A COFFEE MUG",
    imageUrl: "newcollection.jpg",
    // no image url provided
    validFrom: "22/04/2024 – 11:14",
    status: "09/04/2024 – 07:14",
  ),
  Gift(
    title: "Mother DAY GIFT",
    about: "BUY A  CUP OF COFFEE FOR YOU MOM , OR A COFFEE MUG",
    imageUrl: "newcollection.jpg",
    // no image url provided
    validFrom: "22/04/2024 – 11:14",
    status: "Expired",
  ),
];

List<Invoice> invoices = [
  Invoice(date: "23 JUN 2024", items: [
    Item(name: 'FRUMITCHA CHILLER -REGULAR', quantity: 1, price: 120),
  ]),
  Invoice(date: "23 JUN 2024", items: [
    Item(name: 'CARMEL CORRETO CHILLETR LARGE', quantity: 1, price: 58.00),
  ]),
  Invoice(date: "20 JUN 2024", items: [
    Item(name: 'CARMEL CORRETO CHILLETR LARGE', quantity: 1, price: 115.00),
  ]),
  Invoice(date: "27 MAY 2024", items: [
    Item(name: 'CARMEL CORRETO CHILLETR LARGE', quantity: 3, price: 115.00),
    Item(name: "SPANISH LATTE HOT REGULAR", quantity: 1, price: 100.00),
  ]),
  Invoice(date: "20 JUN 2024", items: [
    Item(name: 'MoCHAAINO SMALL', quantity: 1, price: 0.0),
  ]),
  Invoice(date: "20 JUN 2024", items: [
    Item(name: 'CARMEL CORRETO CHILLETR LARGE', quantity: 2, price: 115.00),
  ]),
];
