unint64_t sub_21AE1C()
{
  result = qword_3265C8;
  if (!qword_3265C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3265C8);
  }

  return result;
}

unsigned __int8 *ColorConstants.subscript.getter(uint64_t a1, unint64_t a2)
{
  if (qword_315AD8 != -1)
  {
    swift_once();
  }

  if (*(qword_354040 + 16) && (sub_D410(a1, a2), (v4 & 1) != 0))
  {

    swift_getAtKeyPath();

    return v6;
  }

  else
  {

    return Color.init(hexString:)(a1, a2);
  }
}

uint64_t sub_21AF58()
{
  sub_2EF0(&qword_3265E8, &qword_28A6B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_28A680;
  *(inited + 32) = 0x79654B736B6F6F62;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = 0x636142736B6F6F62;
  *(inited + 64) = 0xEF646E756F72676BLL;
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x8000000000294CB0;
  *(inited + 96) = swift_getKeyPath();
  *(inited + 104) = 0xD000000000000017;
  *(inited + 112) = 0x8000000000294CD0;
  *(inited + 120) = swift_getKeyPath();
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x8000000000294CF0;
  *(inited + 144) = swift_getKeyPath();
  *(inited + 152) = 0xD00000000000001FLL;
  *(inited + 160) = 0x8000000000294D10;
  *(inited + 168) = swift_getKeyPath();
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x8000000000294D30;
  *(inited + 192) = swift_getKeyPath();
  *(inited + 200) = 0x646552736B6F6F62;
  *(inited + 208) = 0xE800000000000000;
  *(inited + 216) = swift_getKeyPath();
  *(inited + 224) = 0x61724F736B6F6F62;
  *(inited + 232) = 0xEB0000000065676ELL;
  *(inited + 240) = swift_getKeyPath();
  *(inited + 248) = 0x617247736B6F6F62;
  *(inited + 256) = 0xE900000000000079;
  *(inited + 264) = swift_getKeyPath();
  *(inited + 272) = 0x657247736B6F6F62;
  *(inited + 280) = 0xEA00000000006E65;
  *(inited + 288) = swift_getKeyPath();
  *(inited + 296) = 0x616554736B6F6F62;
  *(inited + 304) = 0xE90000000000006CLL;
  *(inited + 312) = swift_getKeyPath();
  *(inited + 320) = 0x756C42736B6F6F62;
  *(inited + 328) = 0xE900000000000065;
  *(inited + 336) = swift_getKeyPath();
  *(inited + 344) = 0x727550736B6F6F62;
  *(inited + 352) = 0xEB00000000656C70;
  *(inited + 360) = swift_getKeyPath();
  strcpy((inited + 368), "booksMagenta");
  *(inited + 381) = 0;
  *(inited + 382) = -5120;
  *(inited + 384) = swift_getKeyPath();
  *(inited + 392) = 0xD000000000000013;
  *(inited + 400) = 0x8000000000294DB0;
  *(inited + 408) = swift_getKeyPath();
  *(inited + 416) = 0xD000000000000010;
  *(inited + 424) = 0x8000000000294DD0;
  *(inited + 432) = swift_getKeyPath();
  strcpy((inited + 440), "booksSeparator");
  *(inited + 455) = -18;
  *(inited + 456) = swift_getKeyPath();
  *(inited + 464) = 0xD000000000000013;
  *(inited + 472) = 0x8000000000294DF0;
  *(inited + 480) = swift_getKeyPath();
  *(inited + 488) = 0xD000000000000015;
  *(inited + 496) = 0x8000000000294E10;
  *(inited + 504) = swift_getKeyPath();
  *(inited + 512) = 0xD00000000000001ELL;
  *(inited + 520) = 0x8000000000294E30;
  *(inited + 528) = swift_getKeyPath();
  *(inited + 536) = 0x62614C736B6F6F62;
  *(inited + 544) = 0xEA00000000006C65;
  *(inited + 552) = swift_getKeyPath();
  *(inited + 560) = 0xD000000000000013;
  *(inited + 568) = 0x8000000000294D50;
  *(inited + 576) = swift_getKeyPath();
  *(inited + 584) = 0xD000000000000012;
  *(inited + 592) = 0x8000000000294D70;
  *(inited + 600) = swift_getKeyPath();
  *(inited + 608) = 0xD000000000000014;
  *(inited + 616) = 0x8000000000294D90;
  *(inited + 624) = swift_getKeyPath();
  *(inited + 632) = 0x696857736B6F6F62;
  *(inited + 640) = 0xEF6C6562614C6574;
  *(inited + 648) = swift_getKeyPath();
  strcpy((inited + 656), "vibrantPrimary");
  *(inited + 671) = -18;
  *(inited + 672) = swift_getKeyPath();
  *(inited + 680) = 0xD000000000000010;
  *(inited + 688) = 0x8000000000294E50;
  *(inited + 696) = swift_getKeyPath();
  *(inited + 704) = 0x54746E6172626976;
  *(inited + 712) = 0xEF79726169747265;
  *(inited + 720) = swift_getKeyPath();
  *(inited + 728) = 0xD000000000000011;
  *(inited + 736) = 0x8000000000294E70;
  *(inited + 744) = swift_getKeyPath();
  *(inited + 752) = 0xD000000000000017;
  *(inited + 760) = 0x8000000000294E90;
  *(inited + 768) = swift_getKeyPath();
  *(inited + 776) = 0xD000000000000019;
  *(inited + 784) = 0x8000000000294EB0;
  *(inited + 792) = swift_getKeyPath();
  *(inited + 800) = 0xD00000000000001BLL;
  *(inited + 808) = 0x8000000000294ED0;
  *(inited + 816) = swift_getKeyPath();
  v1 = sub_F038(inited);
  swift_setDeallocating();
  sub_2EF0(&qword_3265F0, &qword_28ABE8);
  result = swift_arrayDestroy();
  qword_354040 = v1;
  return result;
}

uint64_t sub_21B5A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_261180();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4BD3C(a1, v10);
  (*(v5 + 104))(v7, enum case for ColorScheme.dark(_:), v4);
  sub_60AB0();
  LOBYTE(a1) = sub_264390();
  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(v10, v4);
  if (a1)
  {
    result = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  }

  else
  {
    result = sub_262F80();
  }

  *a2 = result;
  return result;
}

uint64_t sub_21B734@<X0>(SEL *a1@<X3>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() *a1];
  result = sub_263070();
  *a2 = result;
  return result;
}

void sub_21B77C(SEL *a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = [objc_opt_self() *a1];
  sub_263070();
  v5 = sub_263000();

  *a2 = v5;
}

uint64_t sub_21B7F0()
{
  sub_2EF0(&qword_3265D8, &qword_28A6A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_28A690;
  *(inited + 32) = 0x79654B736B6F6F62;
  *(inited + 40) = 0xE800000000000000;
  v1 = objc_opt_self();
  *(inited + 48) = [v1 labelColor];
  *(inited + 56) = 0x636142736B6F6F62;
  *(inited + 64) = 0xEF646E756F72676BLL;
  *(inited + 72) = [v1 systemBackgroundColor];
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x8000000000294CB0;
  *(inited + 96) = [v1 secondarySystemBackgroundColor];
  *(inited + 104) = 0xD000000000000017;
  *(inited + 112) = 0x8000000000294CD0;
  *(inited + 120) = [v1 tertiarySystemBackgroundColor];
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x8000000000294CF0;
  *(inited + 144) = [v1 systemGroupedBackgroundColor];
  *(inited + 152) = 0xD00000000000001FLL;
  *(inited + 160) = 0x8000000000294D10;
  *(inited + 168) = [v1 secondarySystemGroupedBackgroundColor];
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x8000000000294D30;
  *(inited + 192) = [v1 tertiarySystemGroupedBackgroundColor];
  *(inited + 200) = 0x646552736B6F6F62;
  *(inited + 208) = 0xE800000000000000;
  *(inited + 216) = [v1 systemRedColor];
  *(inited + 224) = 0x61724F736B6F6F62;
  *(inited + 232) = 0xEB0000000065676ELL;
  *(inited + 240) = [v1 systemRedColor];
  *(inited + 248) = 0x657247736B6F6F62;
  *(inited + 256) = 0xEA00000000006E65;
  *(inited + 264) = [v1 systemGreenColor];
  *(inited + 272) = 0x616554736B6F6F62;
  *(inited + 280) = 0xE90000000000006CLL;
  *(inited + 288) = [v1 systemTealColor];
  *(inited + 296) = 0x756C42736B6F6F62;
  *(inited + 304) = 0xE900000000000065;
  *(inited + 312) = [v1 systemBlueColor];
  *(inited + 320) = 0x727550736B6F6F62;
  *(inited + 328) = 0xEB00000000656C70;
  *(inited + 336) = [v1 systemPurpleColor];
  strcpy((inited + 344), "booksMagenta");
  *(inited + 357) = 0;
  *(inited + 358) = -5120;
  *(inited + 360) = [v1 magentaColor];
  *(inited + 368) = 0x62614C736B6F6F62;
  *(inited + 376) = 0xEA00000000006C65;
  *(inited + 384) = [v1 labelColor];
  *(inited + 392) = 0xD000000000000013;
  *(inited + 400) = 0x8000000000294D50;
  *(inited + 408) = [v1 secondaryLabelColor];
  *(inited + 416) = 0xD000000000000012;
  *(inited + 424) = 0x8000000000294D70;
  *(inited + 432) = [v1 tertiaryLabelColor];
  *(inited + 440) = 0xD000000000000014;
  *(inited + 448) = 0x8000000000294D90;
  *(inited + 456) = [v1 quaternaryLabelColor];
  *(inited + 464) = 0x696857736B6F6F62;
  *(inited + 472) = 0xEF6C6562614C6574;
  *(inited + 480) = [v1 systemWhiteColor];
  v2 = sub_F954(inited);
  swift_setDeallocating();
  sub_2EF0(&qword_3265E0, &qword_28A6B0);
  result = swift_arrayDestroy();
  off_3265D0[0] = v2;
  return result;
}

UIColor_optional __swiftcall ColorConstants.uiColor(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  if (qword_315AE0 != -1)
  {
    swift_once();
  }

  v3 = off_3265D0[0];
  if (*(off_3265D0[0] + &dword_10) && (v4 = sub_D410(countAndFlagsBits, object), (v5 & 1) != 0))
  {
    v6 = *(*&stru_20.segname[v3 + 16] + 8 * v4);
    v7 = v6;
    v9 = v6;
  }

  else
  {

    v9 = Color.init(hexString:)(countAndFlagsBits, object);
    if (v9)
    {
      sub_B0654();
      v9 = sub_2649F0();
    }
  }

  result.value.super.isa = v9;
  result.is_nil = v8;
  return result;
}

uint64_t sub_21BE28@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksRed.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BE54@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksOrange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BE80@<X0>(uint64_t *a2@<X8>)
{
  result = _s7BooksUI14ColorConstantsV9booksGray05SwiftB00C0Vvg_0();
  *a2 = result;
  return result;
}

uint64_t sub_21BEA8@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksGreen.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BED4@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksTeal.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BF00@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksBlue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BF2C@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksPurple.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BF58@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksMagenta.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BF84@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksIconBackground.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BFB0@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksAXSeparator.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21BFFC@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksTableSelection.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21C028@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksButtonBackground.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21C054@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.booksSecondaryButtonBackground.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21C080@<X0>(uint64_t *a2@<X8>)
{
  result = _s7BooksUI14ColorConstantsV10booksLabel05SwiftB00C0Vvg_0();
  *a2 = result;
  return result;
}

uint64_t sub_21C0A8@<X0>(uint64_t *a2@<X8>)
{
  result = _s7BooksUI14ColorConstantsV19booksSecondaryLabel05SwiftB00C0Vvg_0();
  *a2 = result;
  return result;
}

uint64_t sub_21C110@<X0>(uint64_t *a2@<X8>)
{
  result = _s7BooksUI14ColorConstantsV15booksWhiteLabel05SwiftB00C0Vvg_0();
  *a2 = result;
  return result;
}

uint64_t sub_21C1A4@<X0>(uint64_t *a1@<X8>)
{
  result = ColorConstants.vibrantButtonBackground.getter();
  *a1 = result;
  return result;
}

void sub_21C1F4(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  a1();
  v4 = sub_263000();

  *a2 = v4;
}

uint64_t UITraitCollection.isInCard.getter(uint64_t a1, uint64_t a2)
{
  sub_21C364();

  return sub_264980();
}

unint64_t sub_21C364()
{
  result = qword_3265F8;
  if (!qword_3265F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3265F8);
  }

  return result;
}

uint64_t UITraitCollection.isInactiveCard.getter(uint64_t a1, uint64_t a2)
{
  sub_21C444();

  return sub_264980();
}

unint64_t sub_21C444()
{
  result = qword_326600;
  if (!qword_326600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326600);
  }

  return result;
}

uint64_t UIMutableTraits.isInCard.getter(uint64_t a1, uint64_t a2)
{
  sub_21C364();

  return sub_260D60();
}

uint64_t UIMutableTraits.isInCard.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21C364();

  return sub_260D70();
}

uint64_t (*UIMutableTraits.isInCard.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  sub_21C364();
  *(a1 + 24) = sub_260D60() & 1;
  return sub_21C5CC;
}

uint64_t UIMutableTraits.isInactiveCard.getter(uint64_t a1, uint64_t a2)
{
  sub_21C444();

  return sub_260D60();
}

uint64_t UIMutableTraits.isInactiveCard.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21C444();

  return sub_260D70();
}

uint64_t (*UIMutableTraits.isInactiveCard.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t *a1, uint64_t a2)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  sub_21C444();
  *(a1 + 24) = sub_260D60() & 1;
  return sub_21C720;
}

uint64_t sub_21C7A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = UIMutableTraits.isInCard.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

__n128 sub_21C814(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21C820@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = UIMutableTraits.isInactiveCard.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

uint64_t sub_21C90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShrinkableText(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ListItemMetadataEyebrow.text(localizer:)(uint64_t a1)
{
  v3 = sub_260BD0();
  v4 = __chkstk_darwin(v3);
  (*(v6 + 16))(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v1, v4);
  sub_30CC(a1, v9);
  return sub_2627B0();
}

uint64_t ListItemMetadataEyebrow.shorterText(localizer:)(uint64_t a1)
{
  v3 = sub_260BD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v18[-v8 - 8];
  v10 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v10 - 8);
  v12 = &v18[-v11 - 8];
  v13 = type metadata accessor for ShrinkableText(0);
  sub_104B0(v1 + *(v13 + 20), v12);
  v14 = (*(v4 + 48))(v12, 1, v3);
  result = 0;
  if (v14 != 1)
  {
    (*(v4 + 32))(v9, v12, v3, 0);
    (*(v4 + 16))(v6, v9, v3);
    sub_30CC(a1, v18);
    v16 = sub_2627B0();
    (*(v4 + 8))(v9, v3);
    return v16;
  }

  return result;
}

uint64_t ListItemMetadataEyebrow.shortestText(localizer:)(uint64_t a1)
{
  v3 = sub_260BD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v18[-v8 - 8];
  v10 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v10 - 8);
  v12 = &v18[-v11 - 8];
  v13 = type metadata accessor for ShrinkableText(0);
  sub_104B0(v1 + *(v13 + 24), v12);
  v14 = (*(v4 + 48))(v12, 1, v3);
  result = 0;
  if (v14 != 1)
  {
    (*(v4 + 32))(v9, v12, v3, 0);
    (*(v4 + 16))(v6, v9, v3);
    sub_30CC(a1, v18);
    v16 = sub_2627B0();
    (*(v4 + 8))(v9, v3);
    return v16;
  }

  return result;
}

void sub_21CE80(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x62616B6E69726873 && a2 == 0xEE0074786554656CLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_264F10();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_21CF10(uint64_t a1)
{
  v2 = sub_21D248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_21CF4C(uint64_t a1)
{
  v2 = sub_21D248();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ListItemMetadataEyebrow.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for ShrinkableText(0);
  __chkstk_darwin(v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2EF0(&qword_326608, &qword_28ACD8);
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ListItemMetadataEyebrow(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2E18(a1, a1[3]);
  sub_21D248();
  sub_265120();
  if (!v2)
  {
    v12 = v15;
    sub_21D42C(&qword_326618, type metadata accessor for ShrinkableText, &protocol conformance descriptor for ShrinkableText);
    v13 = v17;
    sub_264DF0();
    (*(v16 + 8))(v8, v6);
    sub_21D29C(v13, v11, type metadata accessor for ShrinkableText);
    sub_21D29C(v11, v12, type metadata accessor for ListItemMetadataEyebrow);
  }

  return sub_3080(a1);
}

uint64_t type metadata accessor for ListItemMetadataEyebrow(uint64_t a1)
{
  result = qword_326690;
  if (!qword_326690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21D248()
{
  result = qword_326610;
  if (!qword_326610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326610);
  }

  return result;
}

uint64_t sub_21D29C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D304(uint64_t a1)
{
  result = sub_21D42C(&qword_326620, type metadata accessor for ListItemMetadataEyebrow, &protocol conformance descriptor for ListItemMetadataEyebrow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D364(uint64_t a1)
{
  result = sub_21D42C(&qword_326628, type metadata accessor for ListItemMetadataEyebrow, &protocol conformance descriptor for ListItemMetadataEyebrow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D3D4(uint64_t a1)
{
  result = sub_21D42C(&qword_326630, type metadata accessor for ListItemMetadataEyebrow, &protocol conformance descriptor for ListItemMetadataEyebrow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21D42C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShrinkableText(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_21D508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShrinkableText(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_21D578(uint64_t a1)
{
  result = type metadata accessor for ShrinkableText(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21D5F8()
{
  result = qword_3266C8;
  if (!qword_3266C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3266C8);
  }

  return result;
}

unint64_t sub_21D650()
{
  result = qword_3266D0;
  if (!qword_3266D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3266D0);
  }

  return result;
}

unint64_t sub_21D6A8()
{
  result = qword_3266D8[0];
  if (!qword_3266D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_3266D8);
  }

  return result;
}

uint64_t sub_21D6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_21D794()
{
  sub_262080();
  sub_21E928();
  return sub_265250();
}

uint64_t sub_21D7E4@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_21D800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = sub_2610F0();
  v101 = *(v5 - 8);
  __chkstk_darwin(v5);
  v100 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v106 = &v97 - v8;
  v9 = sub_261110();
  v118 = v5;
  v10 = sub_261F90();
  v107 = *(v10 - 8);
  __chkstk_darwin(v10);
  v110 = (&v97 - v11);
  v12 = sub_262080();
  __chkstk_darwin(v12 - 8);
  v116 = v9;
  v99 = *(v9 - 8);
  __chkstk_darwin(v13);
  v98 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v104 = &v97 - v16;
  v17 = sub_263260();
  v97 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v103 = &v97 - v21;
  v22 = sub_2632E0();
  v115 = v17;
  v23 = sub_261F90();
  v105 = *(v23 - 8);
  __chkstk_darwin(v23);
  v109 = (&v97 - v24);
  v120 = v22;
  v25 = *(v22 - 8);
  __chkstk_darwin(v26);
  v28 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v102 = &v97 - v30;
  v113 = v31;
  v117 = v10;
  v114 = sub_261F90();
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = &v97 - v32;
  v108 = &v97;
  v33 = *(v2 + 8);
  v121 = v3;
  v122 = v4;
  v123 = v2;
  if (v33 > 1)
  {
    if (v33 == 2)
    {
      sub_21D794();
      v49 = v98;
      sub_261100();
      v50 = v116;
      WitnessTable = swift_getWitnessTable();
      sub_1609C();
      v109 = *(v99 + 8);
      v109(v49, v50);
      sub_1609C();
      v52 = v118;
      v108 = swift_getWitnessTable();
      sub_1D738(v49, v50, v52, WitnessTable, v108);
      v53 = swift_getWitnessTable();
      v54 = swift_getWitnessTable();
      v134 = v53;
      v135 = v54;
      v55 = v113;
      v56 = swift_getWitnessTable();
      v132 = WitnessTable;
      v133 = v108;
      v57 = v117;
      v58 = swift_getWitnessTable();
      v59 = v110;
      v60 = v56;
      v46 = v111;
      sub_1D830(v110, v55, v57, v60, v58);
      (*(v107 + 8))(v59, v57);
      v61 = v109;
      v109(v49, v50);
      v61(v104, v50);
    }

    else
    {
      sub_19E724();
      v76 = v100;
      sub_2610E0();
      v77 = v118;
      v78 = swift_getWitnessTable();
      sub_1609C();
      v109 = *(v101 + 8);
      v109(v76, v77);
      sub_1609C();
      v79 = v116;
      v108 = swift_getWitnessTable();
      sub_1D830(v76, v79, v77, v108, v78);
      v80 = swift_getWitnessTable();
      v81 = swift_getWitnessTable();
      v144 = v80;
      v145 = v81;
      v82 = v113;
      v83 = swift_getWitnessTable();
      v142 = v108;
      v143 = v78;
      v84 = v117;
      v85 = swift_getWitnessTable();
      v86 = v110;
      v87 = v83;
      v46 = v111;
      sub_1D830(v110, v82, v84, v87, v85);
      (*(v107 + 8))(v86, v84);
      v88 = v109;
      v109(v76, v77);
      v88(v106, v77);
    }
  }

  else if (v33)
  {
    sub_263250();
    v62 = v115;
    v63 = swift_getWitnessTable();
    sub_1609C();
    v110 = *(v97 + 8);
    (v110)(v19, v62);
    sub_1609C();
    v64 = v120;
    v65 = swift_getWitnessTable();
    sub_1D830(v19, v64, v62, v65, v63);
    v130 = v65;
    v131 = v63;
    v66 = v113;
    v67 = swift_getWitnessTable();
    v68 = swift_getWitnessTable();
    v69 = swift_getWitnessTable();
    v128 = v68;
    v129 = v69;
    v70 = v117;
    v71 = swift_getWitnessTable();
    v72 = v111;
    v73 = v109;
    sub_1D738(v109, v66, v70, v67, v71);
    (*(v105 + 8))(v73, v66);
    v74 = v19;
    v46 = v72;
    v75 = v110;
    (v110)(v74, v62);
    v75(v103, v62);
  }

  else
  {
    sub_2632D0();
    v34 = v25;
    v35 = v120;
    v36 = swift_getWitnessTable();
    sub_1609C();
    v37 = *(v34 + 8);
    v108 = (v34 + 8);
    v110 = v37;
    (v37)(v28, v35);
    sub_1609C();
    v38 = v115;
    v39 = swift_getWitnessTable();
    sub_1D738(v28, v35, v38, v36, v39);
    v126 = v36;
    v127 = v39;
    v40 = v113;
    v41 = swift_getWitnessTable();
    v42 = swift_getWitnessTable();
    v43 = swift_getWitnessTable();
    v124 = v42;
    v125 = v43;
    v44 = v117;
    v45 = swift_getWitnessTable();
    v46 = v111;
    v47 = v109;
    sub_1D738(v109, v40, v44, v41, v45);
    (*(v105 + 8))(v47, v40);
    v48 = v110;
    (v110)(v28, v35);
    v48(v102, v35);
  }

  v89 = swift_getWitnessTable();
  v90 = swift_getWitnessTable();
  v140 = v89;
  v141 = v90;
  v91 = swift_getWitnessTable();
  v92 = swift_getWitnessTable();
  v93 = swift_getWitnessTable();
  v138 = v92;
  v139 = v93;
  v94 = swift_getWitnessTable();
  v136 = v91;
  v137 = v94;
  v95 = v114;
  swift_getWitnessTable();
  sub_1609C();
  return (*(v112 + 8))(v46, v95);
}

uint64_t sub_21E76C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  __chkstk_darwin(a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v14 - v8;
  (*(v10 + 32))(v11, v7);
  sub_1609C();
  v12 = *(v3 + 8);
  v12(v5, a2);
  sub_1609C();
  return (v12)(v9, a2);
}

unint64_t sub_21E928()
{
  result = qword_317430;
  if (!qword_317430)
  {
    sub_262080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_317430);
  }

  return result;
}

uint64_t sub_21E9A0(void *a1)
{
  sub_2632E0();
  sub_263260();
  sub_261F90();
  sub_261110();
  sub_2610F0();
  sub_261F90();
  sub_261F90();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

double SizeConstants.scaledValue(_:relativeTo:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v36 = type metadata accessor for SizeConstants.Environment(0) - 8;
  __chkstk_darwin(v36);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_262730();
  v9 = *(v34 - 8);
  __chkstk_darwin(v34);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2EF0(&qword_326760, &qword_28AF50);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = (&v33 - v14);
  v16 = sub_2EF0(&qword_326768, &qword_28AF58);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = (&v33 - v21);
  sub_21EEDC(v4, &v33 + *(v17 + 36) - v21);
  *v22 = a2;
  v22[1] = a3;
  sub_8198(v22, v19, &qword_326768, &qword_28AF58);
  v23 = a1;
  v24 = v34;
  (*(v9 + 16))(v11, v23, v34);
  sub_8198(v19, v15, &qword_326768, &qword_28AF58);
  v25 = v35;
  sub_21EEDC(&v19[*(v17 + 36)], v35);
  v26 = *(v36 + 32);
  v27 = sub_1CF30(v11, v25 + v26);
  (*(v9 + 8))(v11, v24);
  sub_8E80(v19, &qword_326768, &qword_28AF58);
  v28 = sub_261690();
  (*(*(v28 - 8) + 8))(v25 + v26, v28);
  v29 = 1.0;
  if ((*&v27 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v29 = v27;
  }

  if ((~*&v27 & 0x7FF0000000000000) != 0)
  {
    v29 = v27;
  }

  *(v15 + *(v13 + 44)) = v29;
  v30 = v15[1];
  v31 = sub_21FBC4(&qword_326760, &qword_28AF50, &qword_326768, &qword_28AF58, *v15);
  sub_21FBC4(&qword_326760, &qword_28AF50, &qword_326768, &qword_28AF58, v30);
  sub_8E80(v15, &qword_326760, &qword_28AF50);
  sub_8E80(v22, &qword_326768, &qword_28AF58);
  return v31;
}

uint64_t sub_21EEDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeConstants.Environment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EnvironmentValues.sizes.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v1, v4);
  return sub_21F65C(v6, a1);
}

uint64_t SizeConstants.Scaled.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(*a1 + class metadata base offset for KeyPath + 8);
  v8 = *(v7 - 8);
  __chkstk_darwin(a1);
  v10 = &v12 - v9;
  swift_getAtKeyPath();
  sub_21FD54(v10, a2, v7, a3, a4);
  return (*(v8 + 8))(v10, v7);
}

{
  v8 = *(*a1 + class metadata base offset for KeyPath + 8);
  v9 = *(v8 - 8);
  __chkstk_darwin(a1);
  v11 = &v15 - v10;
  swift_getAtKeyPath();
  v12 = *(v4 + *(a2 + 36));
  (*(v9 + 32))(a4, v11, v8);
  result = type metadata accessor for SizeConstants.Scaled(0, v8, a3, v13);
  *(a4 + *(result + 36)) = v12;
  return result;
}

uint64_t ScalableSizeConstants.scaled(relativeTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = sub_262730();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v5, a2, v15);
  (*(v11 + 16))(v13, a1, v10);
  return SizeConstants.Scaled.init(base:relativeTo:)(v17, v13, a2, a3, a4);
}

uint64_t ScalableSizeConstants.scaled.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_262730();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, enum case for Font.TextStyle.body(_:), v6, v8);
  ScalableSizeConstants.scaled(relativeTo:)(v10, a1, a2, a3);
  return (*(v7 + 8))(v10, v6);
}

uint64_t SizeConstants.Environment.viewSizeConditions.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SizeConstants.Environment(0);
  v4 = *(v1 + *(result + 32)) | (*(v1 + *(result + 32) + 2) << 16);
  if (*(v1 + *(result + 32)) == 2)
  {
    result = sub_264CD0();
    __break(1u);
  }

  else
  {
    *a1 = *(v1 + *(result + 32)) & 1;
    a1[1] = BYTE1(v4) & 1;
    a1[2] = BYTE2(v4) & 1;
  }

  return result;
}

uint64_t SizeConstants.Environment.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SizeConstants.Environment(0) + 24);
  v4 = sub_261690();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_21F65C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  *a2 = EnvironmentValues.isCompact.getter() & 1;
  sub_6E2E0();
  sub_261CA0();
  a2[1] = v17;
  v9 = type metadata accessor for SizeConstants.Environment(0);
  sub_261A60();
  sub_2619D0();
  *&a2[*(v9 + 28)] = v10;
  sub_B7C8();
  sub_261CB0();
  v11 = *(v5 + 8);
  v11(a1, v4);
  result = (v11)(v8, v4);
  v13 = v15[6];
  v14 = &a2[*(v9 + 32)];
  v14[2] = v16;
  *v14 = v13;
  return result;
}

uint64_t SizeConstants.Scaled.init(base:relativeTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v9 = type metadata accessor for SizeConstants.Environment(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SizeConstants.Scaled(0, a3, a4, v13);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v26 - v17;
  v19 = *(a3 - 8);
  (*(v19 + 16))(&v26 - v17, a1, a3, v16);
  (*(a4 + 8))(a3, a4);
  v20 = *(v10 + 32);
  v21 = sub_1CF30(a2, &v12[v20]);
  (*(v19 + 8))(a1, a3);
  v22 = sub_261690();
  (*(*(v22 - 8) + 8))(&v12[v20], v22);
  v23 = 1.0;
  if ((*&v21 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v23 = v21;
  }

  if ((~*&v21 & 0x7FF0000000000000) != 0)
  {
    v23 = v21;
  }

  *&v18[*(v14 + 36)] = v23;
  (*(v15 + 32))(v27, v18, v14);
  v24 = sub_262730();
  return (*(*(v24 - 8) + 8))(a2, v24);
}

double sub_21FA7C(uint64_t *a1, uint64_t *a2, double a3)
{
  v7 = sub_264ED0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + *(sub_2EF0(a1, a2) + 36));
  v12 = *(v3 + *(type metadata accessor for SizeConstants.Environment(0) + 28));
  (*(v8 + 104))(v10, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v7);
  v15 = v11 * a3;
  sub_24A294(v10, v12);
  (*(v8 + 8))(v10, v7);
  return v15;
}

double sub_21FBC4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, double a5)
{
  v11 = sub_264ED0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v5 + *(sub_2EF0(a1, a2) + 36));
  v16 = v5 + *(sub_2EF0(a3, a4) + 28);
  v17 = *(v16 + *(type metadata accessor for SizeConstants.Environment(0) + 28));
  (*(v12 + 104))(v14, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v11);
  v20 = v15 * a5;
  sub_24A294(v14, v17);
  (*(v12 + 8))(v14, v11);
  return v20;
}

uint64_t sub_21FD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a2;
  v32 = a1;
  v36 = a5;
  v9 = sub_264ED0();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SizeConstants.Environment(0);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  __chkstk_darwin(v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v29 - v20;
  v37 = *(v5 + *(a2 + 36));
  sub_78E78();
  v31 = a4;
  sub_264260();
  v22 = *(a4 + 16);
  sub_2647F0();
  v23 = *(v15 + 8);
  v23(v18, a3);
  (*(*(v30 + 24) + 8))(*(v30 + 16));
  v24 = *&v14[*(v12 + 36)];
  sub_221768(v14);
  v37 = v24;
  sub_264260();
  v26 = v33;
  v25 = v34;
  v27 = v35;
  (*(v34 + 104))(v33, enum case for FloatingPointRoundingRule.toNearestOrAwayFromZero(_:), v35);
  sub_1B7BC8(v26, v18, a3, v22, v36);
  (*(v25 + 8))(v26, v27);
  v23(v18, a3);
  return (v23)(v21, a3);
}

double SizeConstants.Scaled.subscript.getter(uint64_t a1, uint64_t a2)
{
  swift_getAtKeyPath();
  v6 = v7[1];
  v3 = sub_78E78();
  sub_21FD54(&v6, a2, &type metadata for CGFloat, v3, v7);
  v4 = *v7;
  v6 = v7[2];
  sub_21FD54(&v6, a2, &type metadata for CGFloat, v3, v7);
  return v4;
}

{
  swift_getAtKeyPath();
  v6 = v7[1];
  v3 = sub_78E78();
  sub_21FD54(&v6, a2, &type metadata for CGFloat, v3, v7);
  v4 = *v7;
  v6 = v7[3];
  sub_21FD54(&v6, a2, &type metadata for CGFloat, v3, v7);
  v6 = v7[2];
  sub_21FD54(&v6, a2, &type metadata for CGFloat, v3, v7);
  v6 = v7[4];
  sub_21FD54(&v6, a2, &type metadata for CGFloat, v3, v7);
  return v4;
}

uint64_t sub_220200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  v9 = a4 + *(type metadata accessor for SizeConstants.SingleScalableValueContainer(0, a3, v7, v8) + 28);

  return sub_221704(a2, v9);
}

uint64_t SizeConstants.scaledValue<A>(_:relativeTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36[0] = a1;
  v40 = a2;
  v41 = a4;
  v42 = a5;
  v39 = sub_262730();
  v6 = *(v39 - 8);
  __chkstk_darwin(v39);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SizeConstants.SingleScalableValueContainer(255, a3, v9, v10);
  v13 = type metadata accessor for SizeConstants.Scaled(0, v11, &off_311808, v12);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  __chkstk_darwin(v13);
  v16 = v36 - v15;
  v17 = type metadata accessor for SizeConstants.Environment(0);
  __chkstk_darwin(v17 - 8);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v11 - 8);
  __chkstk_darwin(v24);
  v26 = v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v27);
  v30 = v36 - v29;
  (*(v31 + 16))(v22, v36[0], a3, v28);
  sub_21EEDC(v36[1], v19);
  sub_220200(v22, v19, a3, v30);
  (*(v23 + 16))(v26, v30, v11);
  (*(v6 + 16))(v8, v40, v39);
  SizeConstants.Scaled.init(base:relativeTo:)(v26, v8, v11, &off_311808, v16);
  v32 = v41;
  v43 = a3;
  v44 = v41;
  KeyPath = swift_getKeyPath();
  v34 = v37;
  SizeConstants.Scaled.subscript.getter(KeyPath, v37, v32, v42);

  (*(v38 + 8))(v16, v34);
  return (*(v23 + 8))(v30, v11);
}

double SizeConstants.scaledValue(_:relativeTo:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v40 = a1;
  v39 = type metadata accessor for SizeConstants.Environment(0) - 8;
  __chkstk_darwin(v39);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_262730();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2EF0(&qword_326770, &qword_28AF80);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = (&v37 - v18);
  v20 = sub_2EF0(&qword_326778, &qword_28AF88);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = (&v37 - v25);
  sub_21EEDC(v6, &v37 + *(v21 + 36) - v25);
  *v26 = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  sub_8198(v26, v23, &qword_326778, &qword_28AF88);
  (*(v13 + 16))(v15, v40, v12);
  sub_8198(v23, v19, &qword_326778, &qword_28AF88);
  v27 = v38;
  sub_21EEDC(&v23[*(v21 + 36)], v38);
  v28 = *(v39 + 32);
  v29 = sub_1CF30(v15, v27 + v28);
  (*(v13 + 8))(v15, v12);
  sub_8E80(v23, &qword_326778, &qword_28AF88);
  v30 = sub_261690();
  (*(*(v30 - 8) + 8))(v27 + v28, v30);
  v31 = 1.0;
  if ((*&v29 & 0xFFFFFFFFFFFFFLL) == 0)
  {
    v31 = v29;
  }

  if ((~*&v29 & 0x7FF0000000000000) != 0)
  {
    v31 = v29;
  }

  *(v19 + *(v17 + 44)) = v31;
  v32 = v19[1];
  v33 = v19[2];
  v34 = v19[3];
  v35 = sub_21FBC4(&qword_326770, &qword_28AF80, &qword_326778, &qword_28AF88, *v19);
  sub_21FBC4(&qword_326770, &qword_28AF80, &qword_326778, &qword_28AF88, v33);
  sub_21FBC4(&qword_326770, &qword_28AF80, &qword_326778, &qword_28AF88, v32);
  sub_21FBC4(&qword_326770, &qword_28AF80, &qword_326778, &qword_28AF88, v34);
  sub_8E80(v19, &qword_326770, &qword_28AF80);
  sub_8E80(v26, &qword_326778, &qword_28AF88);
  return v35;
}

uint64_t sub_220A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeConstants.Environment(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_220AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeConstants.Environment(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_220B50(uint64_t a1)
{
  result = type metadata accessor for SizeConstants.Environment(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220BD0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_261690();
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 24)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_220C90(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_261690();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_220D30(uint64_t a1)
{
  sub_261690();
  if (v1 <= 0x3F)
  {
    sub_220DCC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_220DCC()
{
  if (!qword_326878)
  {
    v0 = sub_264A60();
    if (!v1)
    {
      atomic_store(v0, &qword_326878);
    }
  }
}

uint64_t sub_220E1C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220E94(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_220F98(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_221130(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SizeConstants.Environment(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2211B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_261690() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  v11 = *(v8 + 64);
  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v10 | 7;
  v15 = (v10 | 7) + *(v6 + 64);
  v16 = v10 + 2;
  if (v13 < a2)
  {
    v17 = (v15 & ~v14) + ((v11 + (v16 & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 11;
    v18 = ((v15 & ~v14) + ((v11 + (v16 & ~v10) + 7) & 0xFFFFFFF8) + 11) & 0xFFFFFFFB;
    v19 = v18 == 3 ? ((a2 - v13 + 0xFFFFFF) >> 24) + 1 : 2;
    v20 = v19 < 0x100 ? 1 : 2;
    v21 = v19 >= 2 ? v20 : 0;
    if (v21)
    {
      if (v21 == 2)
      {
        v22 = *(a1 + v17);
        if (v22)
        {
LABEL_21:
          v23 = (v22 << 24) - 0x1000000;
          if (v18 == 3)
          {
            v29 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v23 = 0;
            v29 = *a1;
          }

          v30 = v13 + (v29 | v23);
          return (v30 + 1);
        }
      }

      else
      {
        v22 = *(a1 + v17);
        if (v22)
        {
          goto LABEL_21;
        }
      }
    }
  }

  if (v7 >= v12)
  {
    v27 = *(v6 + 48);

    return v27(a1, v7, v5);
  }

  else
  {
    v24 = ((a1 + v15) & ~v14);
    if (v9 <= 0xFE)
    {
      v25 = *v24;
      if (v25 >= 2)
      {
        v30 = (v25 + 2147483646) & 0x7FFFFFFF;
        return (v30 + 1);
      }

      return 0;
    }

    v28 = *(v8 + 48);

    return v28(&v24[v16] & ~v10);
  }
}

void sub_22142C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  v10 = sub_261690();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(v11 + 80);
  if (v12 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = *(v11 + 84);
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  v16 = (v13 | 7) + *(v8 + 64);
  v17 = ((*(*(v10 - 8) + 64) + ((v13 + 2) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 11;
  v18 = v17 + (v16 & ~(v13 | 7));
  if (v18 == 3)
  {
    v19 = ((a3 - v15 + 0xFFFFFF) >> 24) + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  else
  {
    v20 = 2;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v15 < a3)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v15 >= a2)
  {
    if (v22)
    {
      if (v22 != 2)
      {
        a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      *&a1[v18] = 0;
    }

    if (!a2)
    {
      return;
    }

LABEL_35:
    if (v9 >= v14)
    {
      v27 = *(v29 + 56);

      v27(a1, a2, v9, v7);
    }

    else
    {
      v25 = (&a1[v16] & ~(v13 | 7));
      if (v14 >= a2)
      {
        if (v12 > 0xFE)
        {
          v28 = *(v11 + 56);

          v28(&v25[v13 + 2] & ~v13, a2);
        }

        else
        {
          *v25 = a2 + 1;
        }
      }

      else
      {
        v26 = ~v14 + a2;
        bzero(v25, v17);
        if (v17 == 3)
        {
          *v25 = v26;
          v25[2] = BYTE2(v26);
        }

        else
        {
          *v25 = v26;
        }
      }
    }

    return;
  }

  v23 = ~v15 + a2;
  bzero(a1, v18);
  if (v18 == 3)
  {
    v24 = HIBYTE(v23) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v18 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    if (!v22)
    {
      return;
    }
  }

  else
  {
    *a1 = v23;
    if (!v22)
    {
      return;
    }
  }

  if (v22 == 2)
  {
    *&a1[v18] = v24;
  }

  else
  {
    a1[v18] = v24;
  }
}

uint64_t sub_221704(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeConstants.Environment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_221768(uint64_t a1)
{
  v2 = type metadata accessor for SizeConstants.Environment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FlowAction.FeedDestination.preferredContentSize.getter()
{
  v1 = *v0;
  if (*(v1 + 16))
  {
    v2 = sub_D410(0x6572726566657270, 0xED0000657A695364);
    if (v3)
    {
      sub_A7C18(*(v1 + 56) + 32 * v2, v10);
      sub_2EF0(&unk_3165C0, &qword_28B080);
      sub_2EF0(&qword_3269C8, &unk_28B088);
      if (swift_dynamicCast())
      {
        if (*(v9 + 16))
        {
          v4 = sub_D410(0x6874646977, 0xE500000000000000);
          if (v5)
          {
            if (*(v9 + 16))
            {
              v6 = *(*(v9 + 56) + 8 * v4);
              sub_D410(0x746867696568, 0xE600000000000000);
              if (v7)
              {

                return v6;
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_2218FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736E6F6974706FLL;
  }

  else
  {
    v3 = 1684366694;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x736E6F6974706FLL;
  }

  else
  {
    v5 = 1684366694;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_264F10();
  }

  return v8 & 1;
}

Swift::Int sub_22199C()
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

double sub_221A18(uint64_t a1)
{
  sub_264500();

  return result;
}

Swift::Int sub_221A80(uint64_t a1)
{
  sub_265050();
  sub_264500();

  return sub_265080();
}

void sub_221AF8(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_301A20;
  v7._object = v3;
  v5 = sub_264D40(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_221B58(uint64_t *a1@<X8>)
{
  v2 = 1684366694;
  if (*v1)
  {
    v2 = 0x736E6F6974706FLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_221B90()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 1684366694;
  }
}

void sub_221BC4(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_301A20;
  v8._object = a2;
  v6 = sub_264D40(v5, v8);

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v6)
  {
    v7 = 0;
  }

  *a3 = v7;
}

uint64_t sub_221C28(uint64_t a1)
{
  v2 = sub_2225F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_221C64(uint64_t a1)
{
  v2 = sub_2225F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_221CA0()
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

Swift::Int sub_221CF4(uint64_t a1)
{
  sub_265050();
  sub_264500();
  return sub_265080();
}

void sub_221D38(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_301A70;
  v6._object = v3;
  v5 = sub_264D40(v4, v6);

  *a2 = v5 != 0;
}

void sub_221D9C(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = a1;
  v5._rawValue = &off_301AA8;
  v7._object = a2;
  v6 = sub_264D40(v5, v7);

  *a3 = v6 != 0;
}

uint64_t sub_221DF4(uint64_t a1)
{
  v2 = sub_2226A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_221E30(uint64_t a1)
{
  v2 = sub_2226A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t FlowAction.FeedDestination.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v3 = sub_263840();
  v53 = *(v3 - 8);
  v54 = v3;
  __chkstk_darwin(v3);
  v55 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v50 = &v47 - v6;
  v7 = sub_2EF0(&qword_3229A8, &qword_281B60);
  __chkstk_darwin(v7 - 8);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v12 = sub_2EF0(&qword_3269D0, &qword_28B098);
  v52 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = sub_2EF0(&qword_3269D8, &qword_28B0A0);
  v56 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  sub_2E18(a1, a1[3]);
  sub_2225F4();
  v18 = v58;
  sub_265120();
  if (v18)
  {
    goto LABEL_5;
  }

  v19 = v55;
  v48 = v11;
  v49 = v14;
  v20 = v12;
  v21 = v57;
  v58 = a1;
  v61 = 0;
  v22 = v15;
  if (sub_264E10())
  {
    v59 = 0;
    sub_2226A0();
    sub_264D50();
    sub_222648();
    v23 = v50;
    v24 = v54;
    v25 = v20;
    sub_264DF0();
    v40 = v48;
    sub_263800();
    (*(v53 + 8))(v23, v24);
    v41 = sub_263C10();
    v42 = *(v41 - 8);
    if ((*(v42 + 48))(v40, 1, v41) == 1)
    {
      sub_19A3E8(v40);
      v35 = v56;
LABEL_16:
      v43 = sub_264C10();
      swift_allocError();
      v45 = v44;
      v46 = v49;
      sub_264D60();
      sub_264BF0();
      (*(*(v43 - 8) + 104))(v45, enum case for DecodingError.dataCorrupted(_:), v43);
      swift_willThrow();
      (*(v52 + 8))(v46, v25);
      goto LABEL_17;
    }

    sub_2EF0(&unk_3165C0, &qword_28B080);
    v36 = sub_263C00();
    (*(v42 + 8))(v40, v41);
    v35 = v56;
    if (!v36)
    {
      goto LABEL_16;
    }

    (*(v52 + 8))(v49, v25);
    v29 = v57;
LABEL_15:
    (*(v35 + 8))(v17, v22);
    *v29 = v36;
    v27 = v58;
    return sub_3080(v27);
  }

  v60 = 1;
  sub_222648();
  v26 = v54;
  sub_264DF0();
  v29 = v21;
  v30 = v17;
  v31 = v51;
  sub_263800();
  (*(v53 + 8))(v19, v26);
  v32 = sub_263C10();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 48))(v31, 1, v32);
  v35 = v56;
  if (v34 == 1)
  {
    sub_19A3E8(v31);
    v17 = v30;
  }

  else
  {
    sub_2EF0(&unk_3165C0, &qword_28B080);
    v36 = sub_263C00();
    (*(v33 + 8))(v31, v32);
    v17 = v30;
    if (v36)
    {
      goto LABEL_15;
    }
  }

  v37 = sub_264C10();
  swift_allocError();
  v39 = v38;
  sub_264D60();
  sub_264BF0();
  (*(*(v37 - 8) + 104))(v39, enum case for DecodingError.dataCorrupted(_:), v37);
  swift_willThrow();
LABEL_17:
  (*(v35 + 8))(v17, v22);
  a1 = v58;
LABEL_5:
  v27 = a1;
  return sub_3080(v27);
}

unint64_t sub_2225F4()
{
  result = qword_3269E0;
  if (!qword_3269E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3269E0);
  }

  return result;
}

unint64_t sub_222648()
{
  result = qword_3229C8;
  if (!qword_3229C8)
  {
    sub_263840();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3229C8);
  }

  return result;
}

unint64_t sub_2226A0()
{
  result = qword_3269E8;
  if (!qword_3269E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3269E8);
  }

  return result;
}

unint64_t sub_2226F4(uint64_t a1)
{
  result = sub_22271C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22271C()
{
  result = qword_3269F0;
  if (!qword_3269F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3269F0);
  }

  return result;
}

unint64_t sub_2227A4()
{
  result = qword_3269F8;
  if (!qword_3269F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3269F8);
  }

  return result;
}

unint64_t sub_2227FC()
{
  result = qword_326A00;
  if (!qword_326A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326A00);
  }

  return result;
}

unint64_t sub_222854()
{
  result = qword_326A08;
  if (!qword_326A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326A08);
  }

  return result;
}

unint64_t sub_2228AC()
{
  result = qword_326A10;
  if (!qword_326A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326A10);
  }

  return result;
}

unint64_t sub_222904()
{
  result = qword_326A18;
  if (!qword_326A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326A18);
  }

  return result;
}

unint64_t sub_22295C()
{
  result = qword_326A20;
  if (!qword_326A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326A20);
  }

  return result;
}

uint64_t sub_2229B0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_8198(v2, &v13 - v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_223A5C(v10, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_222B94@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318170, &unk_26AF40);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for ListItemAccessoryDrillInChevron(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_318170, &unk_26AF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_223A5C(v9, a1, type metadata accessor for FontConstants.ListItem);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t ListItemAccessoryDrillInChevron.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v2 = *(type metadata accessor for ListItemAccessoryDrillInChevron(0) + 20);
  *(a1 + v2) = swift_getKeyPath();
  sub_2EF0(&qword_318170, &unk_26AF40);

  return swift_storeEnumTagMultiPayload();
}

uint64_t type metadata accessor for ListItemAccessoryDrillInChevron(uint64_t a1)
{
  result = qword_326AB8;
  if (!qword_326AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ListItemAccessoryDrillInChevron.content(contextActionMenuView:)@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v1 - 8);
  v41 = &v35 - v2;
  v3 = sub_262730();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FontConstants.ListItem(0);
  __chkstk_darwin(v5 - 8);
  v37 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v7 - 8);
  v35 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_261FA0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2EF0(&qword_326A28, &qword_28B458);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v35 - v15;
  v42 = sub_2630B0();
  sub_2618C0();
  v17 = sub_2233A4();
  sub_262AA0();
  (*(v10 + 8))(v12, v9);

  sub_262650();
  v42 = &type metadata for Image;
  v43 = v9;
  v44 = &protocol witness table for Image;
  v45 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v36;
  sub_262A20();
  (*(v14 + 8))(v16, v13);
  v19 = v35;
  sub_2229B0(v35);
  v20 = [objc_opt_self() tertiaryLabelColor];
  v21 = sub_263070();
  sub_2234B0(v19, type metadata accessor for ColorConstants);
  KeyPath = swift_getKeyPath();
  v23 = (v18 + *(sub_2EF0(&qword_326A30, &qword_28B490) + 36));
  *v23 = KeyPath;
  v23[1] = v21;
  v24 = v37;
  sub_222B94(v37);
  v26 = v38;
  v25 = v39;
  v27 = v40;
  (*(v39 + 104))(v38, enum case for Font.TextStyle.body(_:), v40);
  v28 = sub_2625C0();
  v29 = v41;
  (*(*(v28 - 8) + 56))(v41, 1, 1, v28);
  sub_262650();
  v30 = v29;
  v31 = sub_262680();
  sub_179B10(v30);
  (*(v25 + 8))(v26, v27);
  sub_2234B0(v24, type metadata accessor for FontConstants.ListItem);
  v32 = swift_getKeyPath();
  result = sub_2EF0(&qword_326A38, &qword_28B4C8);
  v34 = (v18 + *(result + 36));
  *v34 = v32;
  v34[1] = v31;
  return result;
}

unint64_t sub_2233A4()
{
  result = qword_318438;
  if (!qword_318438)
  {
    sub_261FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_318438);
  }

  return result;
}

uint64_t sub_223400@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261A70();
  *a1 = result;
  return result;
}

uint64_t sub_22342C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261A70();
  *a1 = result;
  return result;
}

uint64_t sub_2234B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_223548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2EF0(&qword_322098, &unk_28B530);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_223664(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2EF0(&qword_322098, &unk_28B530);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_223778(uint64_t a1)
{
  sub_223834(319, &qword_316FE8, type metadata accessor for ColorConstants);
  if (v1 <= 0x3F)
  {
    sub_223834(319, &qword_319360, type metadata accessor for FontConstants.ListItem);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_223834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2611E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22388C()
{
  result = qword_326AF0;
  if (!qword_326AF0)
  {
    sub_2F9C(&qword_326A38, &qword_28B4C8);
    sub_223930();
    sub_1AB600(&qword_317580, &qword_317588, &qword_26B7B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326AF0);
  }

  return result;
}

unint64_t sub_223930()
{
  result = qword_326AF8;
  if (!qword_326AF8)
  {
    sub_2F9C(&qword_326A30, &qword_28B490);
    sub_2F9C(&qword_326A28, &qword_28B458);
    sub_261FA0();
    sub_2233A4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1AB600(&qword_3183C8, &qword_3183D0, &qword_26B240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326AF8);
  }

  return result;
}

uint64_t sub_223A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double SizeConstants.Gutter.default.getter()
{
  result = 24.0;
  if (*v0)
  {
    return 16.0;
  }

  return result;
}

uint64_t sub_223BF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeConstants.Environment(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_223C70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SizeConstants.Environment(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_223D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_223E2C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_223D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_223E2C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_223DF4(uint64_t a1)
{
  sub_223E2C();
  sub_261F30();
  __break(1u);
}

unint64_t sub_223E2C()
{
  result = qword_326CB0;
  if (!qword_326CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326CB0);
  }

  return result;
}

__n128 ToolbarActionButtonMenuItem.init(title:isEnabled:isExplicit:action:subtitle:icon:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  type metadata accessor for ProfileRestrictions(0);
  sub_226530(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *a7 = sub_261900();
  *(a7 + 8) = v14;
  *(a7 + 16) = swift_getKeyPath();
  *(a7 + 56) = 0;
  v15 = type metadata accessor for ToolbarActionButtonMenuItem(0);
  v16 = v15[6];
  *(a7 + v16) = swift_getKeyPath();
  sub_2EF0(&qword_318150, &qword_279A70);
  swift_storeEnumTagMultiPayload();
  v17 = v15[7];
  *(a7 + v17) = swift_getKeyPath();
  sub_2EF0(&qword_316930, &qword_2689A0);
  swift_storeEnumTagMultiPayload();
  v18 = v15[8];
  v19 = sub_260BD0();
  (*(*(v19 - 8) + 32))(a7 + v18, a1, v19);
  *(a7 + v15[9]) = a2;
  *(a7 + v15[10]) = a3;
  sub_F7CC(a4, a7 + v15[11]);
  sub_A96C8(a5, a7 + v15[12]);
  v20 = a7 + v15[13];
  v21 = *(a6 + 16);
  *v20 = *a6;
  *(v20 + 16) = v21;
  result = *(a6 + 25);
  *(v20 + 25) = result;
  return result;
}

uint64_t type metadata accessor for ToolbarActionButtonMenuItem(uint64_t a1)
{
  result = qword_326D18;
  if (!qword_326D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224094@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_8198(v1 + 16, v10, &qword_31A240, &qword_26E588);
  if (v12 == 1)
  {
    v8 = v10[1];
    *a1 = v10[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v11;
  }

  else
  {
    sub_264900();
    v9 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_224204@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_318150, &qword_279A70);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ToolbarActionButtonMenuItem(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_318150, &qword_279A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_260CA0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_22440C@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316930, &qword_2689A0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ToolbarActionButtonMenuItem(0);
  sub_8198(v1 + *(v10 + 28), v9, &qword_316930, &qword_2689A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_260640();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_264900();
    v13 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ToolbarActionButtonMenuItem.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ToolbarActionButtonMenuItem(0) + 32);
  v4 = sub_260BD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ToolbarActionButtonMenuItem.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ToolbarActionButtonMenuItem(0) + 44);

  return sub_30CC(v3, a1);
}

uint64_t ToolbarActionButtonMenuItem.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ToolbarActionButtonMenuItem(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_2EF0(&qword_316960, &unk_2689F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-v7];
  v9 = sub_2610B0();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_225A10(v1, &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_225A78(&v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  v18 = v1;
  type metadata accessor for ToolbarActionMenuItemLabel(0);
  sub_226530(&qword_31AC08, type metadata accessor for ToolbarActionMenuItemLabel, &unk_27D0B8);
  sub_263220();
  v12 = sub_22568C();
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = v12 & 1;
  result = sub_2EF0(&qword_326CB8, &qword_28B7B8);
  v16 = (a1 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = sub_4C914;
  v16[2] = v14;
  return result;
}

uint64_t sub_224A10(uint64_t a1)
{
  v2 = sub_260CA0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ToolbarActionButtonMenuItem(0);
  sub_224B70(a1 + *(v6 + 44), v10);
  sub_224094(v8);
  if (v9)
  {
    sub_2E18(v8, v9);
    sub_224204(v5);
    sub_260B20();
    (*(v3 + 8))(v5, v2);
    sub_3080(v10);
    return sub_3080(v8);
  }

  else
  {
    sub_3080(v10);
    return sub_8E80(v8, &qword_31A208, &unk_27A5E0);
  }
}

uint64_t sub_224B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_263AF0();
  __chkstk_darwin(v4 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_260640();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = sub_260430();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_260450();
  v71 = *(v9 - 8);
  v72 = v9;
  __chkstk_darwin(v9);
  v70 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_2604F0();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_260520();
  v58 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_260510();
  v68 = *(v15 - 8);
  v69 = v15;
  __chkstk_darwin(v15);
  v73 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2EF0(&qword_316B98, &unk_275840);
  __chkstk_darwin(v17 - 8);
  v19 = &v53 - v18;
  v20 = sub_260620();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_30CC(a1, v76);
  sub_2EF0(&qword_316A30, &qword_2697B0);
  sub_2EF0(&qword_316BA8, &unk_275850);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v75 = 0;
    memset(v74, 0, sizeof(v74));
    sub_8E80(v74, &qword_316BA0, &unk_268B90);
    return sub_30CC(a1, a2);
  }

  v56 = v6;
  v57 = a2;
  sub_F7CC(v74, &v77);
  v24 = v78;
  v25 = v79;
  sub_2E18(&v77, v78);
  (*(v25 + 16))(v24, v25);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_8E80(v19, &qword_316B98, &unk_275840);
    sub_3080(&v77);
    a2 = v57;
    return sub_30CC(a1, a2);
  }

  v55 = v21;
  v27 = *(v21 + 32);
  v54 = v23;
  v28 = v20;
  v53 = v20;
  v27(v23, v19, v20);
  (*(v58 + 104))(v14, enum case for SectionType.unknown(_:), v12);
  (*(v59 + 104))(v60, enum case for SectionData.ComponentContained.unknown(_:), v61);
  v29 = v73;
  sub_260500();
  v30 = sub_2EF0(&qword_31A238, &unk_28B930);
  v31 = v30[12];
  v32 = v30[16];
  v33 = v30[20];
  v34 = enum case for LocationType.button(_:);
  v35 = sub_260530();
  v36 = v62;
  (*(*(v35 - 8) + 104))(v62, v34, v35);
  (*(v21 + 16))(&v36[v31], v23, v28);
  v37 = v68;
  v38 = v29;
  v39 = v69;
  (*(v68 + 16))(&v36[v32], v38, v69);
  v40 = sub_2604B0();
  (*(*(v40 - 8) + 56))(&v36[v33], 1, 1, v40);
  v41 = v64;
  sub_22440C(v64);
  sub_2605F0();
  sub_226530(&qword_326D88, &type metadata accessor for PageData, &protocol conformance descriptor for PageData);
  sub_226530(&unk_326D90, &type metadata accessor for PageData, &protocol conformance descriptor for PageData);
  sub_260630();
  (*(v66 + 8))(v41, v67);
  (*(v63 + 104))(v36, enum case for AppAnalyticsAction.Type.clickEvent(_:), v65);
  v42 = v70;
  sub_260440();
  sub_2E18(&v77, v78);
  sub_263870();
  sub_2EF0(&qword_317258, &unk_27A660);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_269100;
  v44 = v72;
  *(v43 + 56) = v72;
  *(v43 + 64) = sub_226530(&qword_31A230, &type metadata accessor for AppAnalyticsAction, &protocol conformance descriptor for AppAnalyticsAction);
  v45 = sub_10934((v43 + 32));
  v46 = v71;
  (*(v71 + 16))(v45, v42, v44);
  v47 = v78;
  v48 = v79;
  v49 = sub_2E18(&v77, v78);
  *(v43 + 96) = v47;
  *(v43 + 104) = *(v48 + 8);
  v50 = sub_10934((v43 + 72));
  (*(*(v47 - 8) + 16))(v50, v49, v47);
  v51 = sub_263BD0();
  v52 = v57;
  *(v57 + 24) = v51;
  v52[4] = &protocol witness table for CompoundAction;
  sub_10934(v52);
  sub_263BC0();
  (*(v46 + 8))(v42, v44);
  (*(v37 + 8))(v73, v39);
  (*(v55 + 8))(v54, v53);
  return sub_3080(&v77);
}

uint64_t sub_225580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ToolbarActionButtonMenuItem(0);
  v5 = v4[8];
  v6 = sub_260BD0();
  (*(*(v6 - 8) + 16))(a2, a1 + v5, v6);
  v7 = v4[12];
  v8 = type metadata accessor for ToolbarActionMenuItemLabel(0);
  sub_8198(a1 + v7, a2 + v8[5], &qword_316208, &qword_268BD0);
  sub_8198(a1 + v4[13], a2 + v8[6], &qword_31AC00, &qword_270F30);
  v9 = a2 + v8[7];
  *v9 = swift_getKeyPath();
  *(v9 + 40) = 0;
  v10 = a2 + v8[8];
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

uint64_t sub_22568C()
{
  v1 = type metadata accessor for ToolbarActionButtonMenuItem(0);
  if (*(v0 + *(v1 + 36)) != 1)
  {
    v4 = 1;
    return v4 & 1;
  }

  if (*(v0 + *(v1 + 40)) != 1)
  {
    v4 = 0;
    return v4 & 1;
  }

  v2 = *v0;
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v2;
    sub_260FF0();

    v4 = v6 ^ 1;
    return v4 & 1;
  }

  type metadata accessor for ProfileRestrictions(0);
  sub_226530(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  result = sub_2618F0();
  __break(1u);
  return result;
}

uint64_t sub_2257AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = sub_2EF0(&qword_316960, &unk_2689F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v17[-v7];
  v9 = sub_2610B0();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_225A10(v2, &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_225A78(&v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v11 + v10);
  v18 = v2;
  type metadata accessor for ToolbarActionMenuItemLabel(0);
  sub_226530(&qword_31AC08, type metadata accessor for ToolbarActionMenuItemLabel, &unk_27D0B8);
  sub_263220();
  v12 = sub_22568C();
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = v12 & 1;
  result = sub_2EF0(&qword_326CB8, &qword_28B7B8);
  v16 = (a2 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = sub_226588;
  v16[2] = v14;
  return result;
}

uint64_t sub_225A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarActionButtonMenuItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolbarActionButtonMenuItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_225B30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_31EFC8, &unk_279C60);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_2EF0(qword_316978, &unk_268A60);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
    goto LABEL_7;
  }

  v11 = sub_260BD0();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[11] + 24);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_2EF0(&qword_316208, &qword_268BD0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[12];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_225D24(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_31EFC8, &unk_279C60);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  v12 = sub_2EF0(qword_316978, &unk_268A60);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  result = sub_260BD0();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[11] + 24) = (a2 - 1);
  }

  else
  {
    v15 = sub_2EF0(&qword_316208, &qword_268BD0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[12];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_225F04(uint64_t a1)
{
  sub_95884(319);
  if (v1 <= 0x3F)
  {
    sub_147AC8(319);
    if (v2 <= 0x3F)
    {
      sub_2260B8(319, &qword_31A1F8, &type metadata accessor for OpaqueMetricsFieldsContext, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_2260B8(319, &qword_316A10, &type metadata accessor for DataStack, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_260BD0();
          if (v5 <= 0x3F)
          {
            sub_134888();
            if (v6 <= 0x3F)
            {
              sub_2260B8(319, &qword_31A8C8, &type metadata accessor for LocalizerRequest, &type metadata accessor for Optional);
              if (v7 <= 0x3F)
              {
                sub_AE020();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_2260B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_226120()
{
  result = qword_326D70;
  if (!qword_326D70)
  {
    sub_2F9C(&qword_326CB8, &qword_28B7B8);
    sub_8E38(&qword_326D78, &qword_326D80, &qword_28B878, &protocol conformance descriptor for Button<A>);
    sub_8E38(&qword_3184C8, &qword_3184D0, &qword_28B880, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326D70);
  }

  return result;
}

uint64_t sub_226204()
{
  v1 = type metadata accessor for ToolbarActionButtonMenuItem(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 56))
  {
    if (*(v2 + 40))
    {
      sub_3080((v2 + 16));
    }
  }

  else
  {
  }

  v3 = v1[6];
  sub_2EF0(&qword_318150, &qword_279A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_260CA0();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[7];
  sub_2EF0(&qword_316930, &qword_2689A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_260640();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v1[8];
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v2 + v7, v8);
  sub_3080((v2 + v1[11]));
  v11 = v1[12];
  if (!(*(v9 + 48))(v2 + v11, 1, v8))
  {
    v10(v2 + v11, v8);
  }

  v12 = v2 + v1[13];
  v13 = *(v12 + 40);
  if (v13 == 2)
  {
    sub_3080(v12);
  }

  else if (v13 <= 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2264B8()
{
  v1 = *(type metadata accessor for ToolbarActionButtonMenuItem(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_224A10(v2);
}

uint64_t sub_226530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_226618(_BYTE *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FF0();

  *a3 = v4;
}

uint64_t sub_2266A8(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_261000();
}

uint64_t sub_226728(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_260FF0();

  return v3;
}

uint64_t sub_22679C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  sub_2EF0(&qword_326DA8, &qword_28B988);
  sub_260FD0();
  return swift_endAccess();
}

uint64_t sub_226810(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_2EF0(&qword_326E78, &qword_28BA90);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v13 = &v16 - v12;
  v14 = *(v7 + 16);
  v14(&v16 - v12, a1, v6, v11);
  (v14)(v9, v13, v6);
  swift_beginAccess();
  sub_2EF0(&qword_326DA8, &qword_28B988);
  sub_260FE0();
  swift_endAccess();
  return (*(v7 + 8))(v13, v6);
}

uint64_t sub_2269A8(void *a1)
{
  swift_beginAccess();
  sub_2EF0(&qword_326DA8, &qword_28B988);
  sub_260FD0();
  return swift_endAccess();
}

id ProfileRestrictions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProfileRestrictions.init()()
{
  v1 = sub_2EF0(&qword_326DA8, &qword_28B988);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v20 - v3;
  v5 = OBJC_IVAR____TtC7BooksUI19ProfileRestrictions__isExplicitContentAllowed;
  v22 = 1;
  sub_260FC0();
  v6 = *(v2 + 32);
  v6(&v0[v5], v4, v1);
  v7 = OBJC_IVAR____TtC7BooksUI19ProfileRestrictions__isBookStoreAllowed;
  v22 = 1;
  sub_260FC0();
  v6(&v0[v7], v4, v1);
  v8 = OBJC_IVAR____TtC7BooksUI19ProfileRestrictions__isAccountModificationAllowed;
  v22 = 1;
  sub_260FC0();
  v6(&v0[v8], v4, v1);
  v9 = type metadata accessor for ProfileRestrictions(0);
  v21.receiver = v0;
  v21.super_class = v9;
  v10 = objc_msgSendSuper2(&v21, "init");
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [objc_msgSend(v11 "sharedInstance")];
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v13;
  v14 = v12;
  sub_261000();
  v15 = [objc_msgSend(v11 "sharedInstance")];
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v15;
  v16 = v14;
  sub_261000();
  v17 = [objc_msgSend(v11 "sharedInstance")];
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = v17;
  v18 = v16;
  sub_261000();
  [objc_msgSend(v11 "sharedInstance")];
  swift_unknownObjectRelease();

  return v18;
}

uint64_t type metadata accessor for ProfileRestrictions(uint64_t a1)
{
  result = qword_326E50;
  if (!qword_326E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id ProfileRestrictions.__deallocating_deinit()
{
  [objc_msgSend(objc_opt_self() "sharedInstance")];
  swift_unknownObjectRelease();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProfileRestrictions(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_227034(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_261000();
}

uint64_t sub_2270B0(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1;
  return sub_261000();
}

uint64_t sub_22711C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ProfileRestrictions(0);
  result = sub_260FB0();
  *a2 = result;
  return result;
}

void View.profileRestrictions(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ProfileRestrictions(0);
  sub_263C70();
  sub_264190();
  sub_2271F4();
  sub_262BC0();
}

unint64_t sub_2271F4()
{
  result = qword_326DC0;
  if (!qword_326DC0)
  {
    type metadata accessor for ProfileRestrictions(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326DC0);
  }

  return result;
}

void sub_227320(uint64_t a1)
{
  sub_2275B0();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2275B0()
{
  if (!qword_326E60)
  {
    v0 = sub_261010();
    if (!v1)
    {
      atomic_store(v0, &qword_326E60);
    }
  }
}

uint64_t sub_227600(uint64_t *a1)
{
  sub_2F9C(&qword_326E68, &qword_28BA88);
  sub_261730();
  sub_227678();
  return swift_getWitnessTable();
}

unint64_t sub_227678()
{
  result = qword_326E70;
  if (!qword_326E70)
  {
    sub_2F9C(&qword_326E68, &qword_28BA88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326E70);
  }

  return result;
}

uint64_t LocationFieldProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 456) = a1;
  *(v2 + 464) = a2;
  return (_swift_task_switch)(sub_227704, 0, 0);
}

uint64_t sub_227704()
{
  v86 = v0;
  v82 = *(v0 + 456);
  sub_2E18(v82, v82[3]);
  sub_2EF0(&qword_3160D0, &unk_270CF0);
  v1 = sub_263F00();
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  *(v0 + 448) = v3;
  if (v3[2])
  {
    if (qword_315A38 != -1)
    {
      swift_once();
    }

    v4 = sub_2EF0(&qword_31ED90, &unk_28BAB0);
    sub_B080(v4, qword_31ED70);
    sub_263F50();
    if ((*(v0 + 200) & 1) == 0)
    {
      v5 = *(v0 + 192);
      if (qword_315840 != -1)
      {
        swift_once();
      }

      v6 = sub_260D50();
      sub_B080(v6, qword_315F70);
      v7 = sub_260D30();
      v8 = sub_264910();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        result = swift_slowAlloc();
        v85[0] = result;
        *v9 = 134218242;
        *(v9 + 4) = v5;
        *(v9 + 12) = 2080;
        if (!v3[2])
        {
          goto LABEL_90;
        }

        v11 = result;

        v12 = sub_264290();
        v14 = v13;

        v15 = sub_191368(v12, v14, v85);

        *(v9 + 14) = v15;
        _os_log_impl(&dword_0, v7, v8, "Adding locationPosition override %ld for %s", v9, 0x16u);
        sub_3080(v11);

        v2 = _swiftEmptyArrayStorage;
      }

      else
      {
      }

      v85[3] = &type metadata for Int;
      v85[0] = v5;
      swift_beginAccess();
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (v3[2])
        {
LABEL_16:
          sub_D0B0(v85, 0xD000000000000010, 0x8000000000290770);
          *(v0 + 448) = v3;
          swift_endAccess();
          goto LABEL_17;
        }
      }

      else
      {
        result = sub_228E4C(v3);
        v3 = result;
        if (*(result + 16))
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
      return result;
    }
  }

LABEL_17:
  if (qword_315A30 != -1)
  {
    goto LABEL_87;
  }

  while (1)
  {
    v16 = sub_2EF0(&qword_31ED88, &qword_279840);
    sub_B080(v16, qword_31ED58);
    sub_2EF0(&qword_31EDA0, &unk_28BAC0);
    sub_263F50();
    v17 = *(v0 + 192);
    if (!v17)
    {
      break;
    }

    if (!*(v17 + 16))
    {

      break;
    }

    if (qword_315840 != -1)
    {
      swift_once();
    }

    v18 = sub_260D50();
    sub_B080(v18, qword_315F70);

    v19 = sub_260D30();
    v20 = sub_264910();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v85[0] = v22;
      *v21 = 136315138;
      v23 = sub_2646A0();
      v25 = sub_191368(v23, v24, v85);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_0, v19, v20, "Appending location stack %s", v21, 0xCu);
      sub_3080(v22);
    }

    v26 = *(v17 + 16);
    if (!v26)
    {

      v28 = _swiftEmptyArrayStorage;
LABEL_34:
      swift_beginAccess();
      sub_1D982C(v28);
      swift_endAccess();
      break;
    }

    v85[0] = v2;
    sub_2DBC4(0, v26, 0);
    v27 = *(v17 + 16);
    v28 = v85[0];
    v29 = v27 - 1;
    v2 = (176 * v27 - 144);
    while (v29 != -1)
    {
      if (v29 >= *(v17 + 16))
      {
        goto LABEL_83;
      }

      v30 = *(v2 + v17);
      v31 = *(v2 + v17 + 32);
      *(v0 + 32) = *(v2 + v17 + 16);
      *(v0 + 48) = v31;
      *(v0 + 16) = v30;
      v32 = *(v2 + v17 + 48);
      v33 = *(v2 + v17 + 64);
      v34 = *(v2 + v17 + 96);
      *(v0 + 96) = *(v2 + v17 + 80);
      *(v0 + 112) = v34;
      *(v0 + 64) = v32;
      *(v0 + 80) = v33;
      v35 = *(v2 + v17 + 112);
      v36 = *(v2 + v17 + 128);
      v37 = *(v2 + v17 + 160);
      *(v0 + 160) = *(v2 + v17 + 144);
      *(v0 + 176) = v37;
      *(v0 + 128) = v35;
      *(v0 + 144) = v36;
      sub_97590(v0 + 16, v0 + 192);
      v38 = sub_1694E0();
      sub_98D34(v0 + 16);
      v85[0] = v28;
      v40 = v28[2];
      v39 = v28[3];
      if (v40 >= v39 >> 1)
      {
        sub_2DBC4((v39 > 1), v40 + 1, 1);
        v28 = v85[0];
      }

      v28[2] = v40 + 1;
      v28[v40 + 4] = v38;
      --v29;
      v2 -= 22;
      if (!--v26)
      {

        goto LABEL_34;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    swift_once();
  }

  swift_beginAccess();
  v41 = *(v0 + 448);
  v42 = v41[2];
  if (v42)
  {
    v2 = 0x8000000000290770;
    v84 = -v42;
    v43 = 4;
    v83 = v0;
    while (1)
    {
      v44 = v43 - 4;
      if ((v43 - 4) >= v41[2])
      {
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v45 = v41[v43];
      if (!*(v45 + 16))
      {
        break;
      }

      v46 = sub_D410(0xD000000000000010, 0x8000000000290770);
      if (v47)
      {
        sub_A7C18(*(v45 + 56) + 32 * v46, v0 + 192);
      }

      else
      {
        *(v0 + 192) = 0u;
        *(v0 + 208) = 0u;
      }

      if (!*(v0 + 216))
      {
        goto LABEL_46;
      }

      sub_228B6C(v0 + 192);
LABEL_38:
      ++v43;
      if (v84 + v43 == 4)
      {
        goto LABEL_74;
      }
    }

    *(v0 + 192) = 0u;
    *(v0 + 208) = 0u;
LABEL_46:
    sub_228B6C(v0 + 192);
    if (qword_315840 != -1)
    {
      swift_once();
    }

    v48 = sub_260D50();
    sub_B080(v48, qword_315F70);
    v49 = sub_260D30();
    v50 = sub_264910();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v85[0] = v52;
      *v51 = 136315138;
      if (v44 >= v41[2])
      {
        goto LABEL_85;
      }

      v53 = v52;

      v54 = sub_264290();
      v55 = v41;
      v57 = v56;

      v58 = sub_191368(v54, v57, v85);
      v41 = v55;
      v0 = v83;

      *(v51 + 4) = v58;
      _os_log_impl(&dword_0, v49, v50, "Setting default locationPosition 0 for %s", v51, 0xCu);
      sub_3080(v53);

      v2 = 0x8000000000290770;
    }

    else
    {
    }

    *(v0 + 216) = &type metadata for Int;
    *(v0 + 192) = 0;
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_228E4C(v41);
    }

    if (v44 >= v41[2])
    {
      goto LABEL_81;
    }

    if (!*(v0 + 216))
    {
      sub_228B6C(v0 + 192);
      v69 = sub_D410(0xD000000000000010, 0x8000000000290770);
      if (v70)
      {
        v71 = v69;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85[0] = v41[v43];
        v41[v43] = 0x8000000000000000;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_14EC04();
        }

        v73 = v85[0];

        sub_FBD8((*(v73 + 56) + 32 * v71), (v0 + 368));
        sub_228654(v71, v73);
        v41[v43] = v73;
      }

      else
      {
        *(v0 + 368) = 0u;
        *(v0 + 384) = 0u;
      }

      sub_228B6C(v0 + 368);
      goto LABEL_73;
    }

    sub_FBD8((v0 + 192), (v0 + 368));
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v85[0] = v41[v43];
    v60 = v85[0];
    v41[v43] = 0x8000000000000000;
    v61 = sub_D410(0xD000000000000010, 0x8000000000290770);
    v63 = *(v60 + 16);
    v64 = (v62 & 1) == 0;
    v65 = __OFADD__(v63, v64);
    v66 = v63 + v64;
    if (v65)
    {
      goto LABEL_84;
    }

    v67 = v62;
    if (*(v60 + 24) >= v66)
    {
      if ((v59 & 1) == 0)
      {
        v76 = v61;
        sub_14EC04();
        v61 = v76;
        v74 = v85[0];
        if (v67)
        {
          goto LABEL_66;
        }

        goto LABEL_70;
      }
    }

    else
    {
      sub_14D5B4(v66, v59);
      v61 = sub_D410(0xD000000000000010, 0x8000000000290770);
      if ((v67 & 1) != (v68 & 1))
      {

        return sub_264FB0();
      }
    }

    v74 = v85[0];
    if (v67)
    {
LABEL_66:
      v75 = (v74[7] + 32 * v61);
      sub_3080(v75);
      sub_FBD8((v0 + 368), v75);
LABEL_72:
      v41[v43] = v74;

LABEL_73:
      *(v0 + 448) = v41;
      swift_endAccess();
      goto LABEL_38;
    }

LABEL_70:
    v74[(v61 >> 6) + 8] |= 1 << v61;
    v77 = (v74[6] + 16 * v61);
    *v77 = 0xD000000000000010;
    v77[1] = 0x8000000000290770;
    sub_FBD8((v0 + 368), (v74[7] + 32 * v61));
    v78 = v74[2];
    v65 = __OFADD__(v78, 1);
    v79 = v78 + 1;
    if (v65)
    {
      goto LABEL_86;
    }

    v74[2] = v79;
    goto LABEL_72;
  }

LABEL_74:
  v80 = *(v0 + 456);
  *(v0 + 216) = sub_2EF0(&qword_319B10, &qword_2777B0);
  *(v0 + 192) = v41;
  sub_17450(v80, v82[3]);

  sub_263EF0();
  sub_3080((v0 + 192));

  v81 = *(v0 + 8);

  return v81();
}

uint64_t sub_2282A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_156D0;

  return LocationFieldProvider.addExpensiveMetricsFields(into:using:)(a1, a2);
}

uint64_t sub_228344()
{
  v0 = sub_264140();
  sub_B600(v0, qword_326E80);
  sub_B080(v0, qword_326E80);
  return sub_264130();
}

uint64_t static MetricsFieldInclusionRequest.location.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_264140();
  v3 = sub_B080(v2, qword_326E80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

double sub_228450@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_D410(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_14EC04();
      v10 = v12;
    }

    sub_FBD8((*(v10 + 56) + 32 * v8), a3);
    sub_228654(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_2284F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_D488(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_14EDF4();
      v9 = v11;
    }

    sub_F778(*(v9 + 48) + 40 * v7);
    sub_F7CC((*(v9 + 56) + 40 * v7), a2);
    sub_228804(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_2285A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_D410(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_14F560();
      v10 = v12;
    }

    sub_F7CC((*(v10 + 56) + 40 * v8), a3);
    sub_2289B0(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_228654(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264B30() + 1) & ~v5;
    do
    {
      sub_265050();

      sub_264500();
      v10 = sub_265080();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

uint64_t sub_228804(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264B30() + 1) & ~v5;
    do
    {
      sub_F7E4(*(a2 + 48) + 40 * v6, v26);
      v11 = sub_264B40(*(a2 + 40));
      result = sub_F778(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2289B0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_264B30() + 1) & ~v5;
    do
    {
      sub_265050();

      sub_264500();
      v11 = sub_265080();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t sub_228B6C(uint64_t a1)
{
  v2 = sub_2EF0(&qword_316200, &qword_267FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_228BD4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_FBD8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_228C40(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_F7CC(a3, a4[7] + 40 * a1);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_228CC0(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = _s8RatioKeyVMa(0);
  result = sub_FB18(a2, v8 + *(*(v9 - 8) + 72) * a1);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_228D64(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_F7CC(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_228DD4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

__n128 CoverView.init(model:cacheGeometry:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = swift_getKeyPath();
  *(a3 + 40) = 0;
  *(a3 + 48) = swift_getKeyPath();
  *(a3 + 56) = 0;
  v6 = type metadata accessor for CoverView(0);
  v7 = v6[6];
  *(a3 + v7) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v8 = v6[7];
  *(a3 + v8) = swift_getKeyPath();
  sub_2EF0(&qword_317E08, &qword_26A550);
  swift_storeEnumTagMultiPayload();
  v9 = (a3 + v6[8]);
  type metadata accessor for ProfileRestrictions(0);
  sub_22E2F8(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  *v9 = sub_261900();
  v9[1] = v10;
  v11 = a3 + v6[9];
  sub_2631D0();
  *v11 = v18;
  *(v11 + 8) = v19;
  v12 = a3 + v6[10];
  v13 = *(a1 + 80);
  *(v12 + 64) = *(a1 + 64);
  *(v12 + 80) = v13;
  v14 = *(a1 + 112);
  *(v12 + 96) = *(a1 + 96);
  *(v12 + 112) = v14;
  v15 = *(a1 + 16);
  *v12 = *a1;
  *(v12 + 16) = v15;
  result = *(a1 + 32);
  v17 = *(a1 + 48);
  *(v12 + 32) = result;
  *(v12 + 48) = v17;
  *(a3 + v6[11]) = a2;
  return result;
}

uint64_t sub_22905C(uint64_t a1)
{
  v2 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v9 - v6;
  sub_8198(a1, &v9 - v6, &qword_31A0C8, &qword_26E2C0);
  sub_8198(v7, v4, &qword_31A0C8, &qword_26E2C0);
  sub_9652C();
  sub_261CC0();
  return sub_8E80(v7, &qword_31A0C8, &qword_26E2C0);
}

uint64_t type metadata accessor for CoverView(uint64_t a1)
{
  result = qword_326F90;
  if (!qword_326F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2291FC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_261C90();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8198(v2, v10, &qword_3173E0, &qword_26B890);
  if (v11 == 1)
  {
    return sub_F7CC(v10, a1);
  }

  sub_264900();
  v9 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

double sub_22936C()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {
    return *(v0 + 48);
  }

  sub_264900();
  v7 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

uint64_t sub_2294B8@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C00, &qword_26A520);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for CoverView(0);
  sub_8198(v1 + *(v10 + 24), v9, &qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_22E134(v9, a1, type metadata accessor for ColorConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2296A4@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_317E08, &qword_26A550);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for CoverView(0);
  sub_8198(v1 + *(v10 + 28), v9, &qword_317E08, &qword_26A550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_22148(v9, a1, &qword_31A0C8, &qword_26E2C0);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22988C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = sub_2EF0(&qword_326F18, &qword_28BC38);
  __chkstk_darwin(v25);
  v4 = (v24 - v3);
  v5 = sub_2EF0(&qword_327028, &qword_28BDC8);
  __chkstk_darwin(v5);
  v7 = v24 - v6;
  v8 = type metadata accessor for CoverView(0);
  v24[0] = *(v8 - 8);
  v9 = *(v24[0] + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_2607E0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v14, enum case for BooksFeatureFlag.coverEffectV2(_:), v10, v12);
  sub_22E2F8(&qword_327030, &type metadata accessor for BooksFeatureFlag, &protocol conformance descriptor for BooksFeatureFlag);
  sub_8E38(&qword_327038, &qword_327040, &qword_28BDD0, &protocol conformance descriptor for StaticFeatureFlagsKey<A>);
  v15 = sub_264610();
  (*(v11 + 8))(v14, v10);
  if (v15)
  {
    sub_22E0C4(v24[1], v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CoverView);
    v16 = (*(v24[0] + 80) + 24) & ~*(v24[0] + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    sub_22E134(v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for CoverView);
    [a1 size];
    *v7 = sub_22DAA0;
    *(v7 + 1) = v17;
    *(v7 + 2) = v18 / v19;
    *(v7 + 12) = 0;
    swift_storeEnumTagMultiPayload();
    sub_2EF0(&qword_326EF8, &qword_28BC28);
    sub_22C434();
    sub_22C4EC();
    return sub_261F80();
  }

  else
  {
    *v4 = a1;
    v21 = *(type metadata accessor for AlignmentImageView(0) + 20);
    *(v4 + v21) = swift_getKeyPath();
    sub_2EF0(&qword_316C18, &unk_26F830);
    swift_storeEnumTagMultiPayload();
    v22 = (v4 + *(v25 + 36));
    *v22 = 0;
    v22[1] = a1;
    sub_8198(v4, v7, &qword_326F18, &qword_28BC38);
    swift_storeEnumTagMultiPayload();
    v23 = a1;
    sub_2EF0(&qword_326EF8, &qword_28BC28);
    sub_22C434();
    sub_22C4EC();
    sub_261F80();
    return sub_8E80(v4, &qword_326F18, &qword_28BC38);
  }
}

uint64_t sub_229CF8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_2616C0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_327048, &qword_28BE10);
  __chkstk_darwin(v7 - 8);
  v9 = &v42 - v8;
  v42 = sub_2EF0(&qword_327050, &qword_28BE18);
  __chkstk_darwin(v42);
  v11 = &v42 - v10;
  v44 = sub_2EF0(&qword_327058, &qword_28BE20);
  __chkstk_darwin(v44);
  v13 = &v42 - v12;
  sub_261420();
  sub_82988(v14, v15);
  v43 = v16;
  v17 = sub_2630A0();
  v18 = (a1 + *(type metadata accessor for CoverView(0) + 40));
  v19 = v18[5];
  v47[4] = v18[4];
  v47[5] = v19;
  v20 = v18[7];
  v47[6] = v18[6];
  v47[7] = v20;
  v21 = v18[3];
  v47[2] = v18[2];
  v47[3] = v21;
  v22 = v18[1];
  v47[0] = *v18;
  v47[1] = v22;
  v23 = sub_2F8B8(v47);
  v24 = sub_2F950(v47);
  if (v23)
  {
    v25 = v23 != 1;
  }

  else
  {
    v25 = *(v24 + 25);
  }

  sub_22A0F8(v25, v17, v9);

  KeyPath = swift_getKeyPath();
  v27 = v18[5];
  v46[4] = v18[4];
  v46[5] = v27;
  v28 = v18[7];
  v46[6] = v18[6];
  v46[7] = v28;
  v29 = v18[1];
  v46[0] = *v18;
  v46[1] = v29;
  v30 = v18[3];
  v46[2] = v18[2];
  v46[3] = v30;
  v31 = sub_2F8B8(v46);
  v32 = sub_2F950(v46);
  if (v31)
  {
    if (v31 == 1 || (*(v32 + 8) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_9:
    v33 = &enum case for LayoutDirection.rightToLeft(_:);
    goto LABEL_10;
  }

  if (*(v32 + 24))
  {
    goto LABEL_9;
  }

LABEL_7:
  v33 = &enum case for LayoutDirection.leftToRight(_:);
LABEL_10:
  (*(v4 + 104))(v6, *v33, v3);
  v34 = &v11[*(v42 + 36)];
  v35 = sub_2EF0(&qword_327060, &qword_28BE28);
  (*(v4 + 32))(v34 + *(v35 + 28), v6, v3);
  *v34 = KeyPath;
  sub_22148(v9, v11, &qword_327048, &qword_28BE10);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_2613A0();
  sub_22148(v11, v13, &qword_327050, &qword_28BE18);
  v36 = v45;
  v37 = &v13[*(v44 + 36)];
  v38 = v46[9];
  *v37 = v46[8];
  *(v37 + 1) = v38;
  *(v37 + 2) = v46[10];
  sub_22148(v13, v36, &qword_327058, &qword_28BE20);
  result = sub_2EF0(&qword_327068, &qword_28BE30);
  v40 = (v36 + *(result + 36));
  v41 = v43;
  *v40 = 0;
  v40[1] = v41;
  return result;
}

uint64_t sub_22A0F8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v47 = a3;
  v48 = sub_2EF0(&qword_327070, &qword_28BE38);
  __chkstk_darwin(v48);
  v5 = (&v39 - v4);
  v42 = sub_2EF0(&qword_327078, &qword_28BE40);
  __chkstk_darwin(v42);
  v7 = (&v39 - v6);
  v45 = sub_2EF0(&qword_327080, &qword_28BE48);
  __chkstk_darwin(v45);
  v46 = &v39 - v8;
  v40 = sub_2EF0(&qword_327088, &qword_28BE50);
  __chkstk_darwin(v40);
  v10 = &v39 - v9;
  v44 = sub_2EF0(&qword_327090, &qword_28BE58);
  __chkstk_darwin(v44);
  v41 = &v39 - v11;
  v12 = sub_2630C0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2EF0(&qword_327098, &qword_28BE60);
  __chkstk_darwin(v16);
  v18 = (&v39 - v17);
  v19 = (v13 + 104);
  v20 = (v13 + 8);
  if (a1)
  {
    if (a1 == 1)
    {
      v21 = (v18 + *(v16 + 36));
      v22 = *(type metadata accessor for BookCoverEffect(0) + 24);
      *(v21 + v22) = swift_getKeyPath();
      sub_2EF0(&qword_316DC0, &qword_2691C0);
      swift_storeEnumTagMultiPayload();
      *v21 = xmmword_28BB30;
      (*v19)(v15, enum case for Image.ResizingMode.stretch(_:), v12);
      v23 = sub_263100();
      (*v20)(v15, v12);
      v24 = *(sub_2EF0(&qword_3270C0, &qword_28BEE0) + 36);
      *(v21 + v24) = swift_getKeyPath();
      sub_2EF0(&qword_31DD08, &qword_277680);
      swift_storeEnumTagMultiPayload();
      *v18 = v23;
      sub_8198(v18, v10, &qword_327098, &qword_28BE60);
      swift_storeEnumTagMultiPayload();
      sub_22DBC0();
      sub_22DC78();
      v25 = v41;
      sub_261F80();
      sub_8198(v25, v46, &qword_327090, &qword_28BE58);
      swift_storeEnumTagMultiPayload();
      sub_22DB34();
      sub_22DD30();
      sub_261F80();
      sub_8E80(v25, &qword_327090, &qword_28BE58);
      v26 = v18;
      v27 = &qword_327098;
      v28 = &qword_28BE60;
    }

    else
    {
      v34 = (v5 + *(v48 + 36));
      v35 = *(type metadata accessor for LegacyPDFCoverEffect(0) + 20);
      *(v34 + v35) = swift_getKeyPath();
      sub_2EF0(&qword_316DC0, &qword_2691C0);
      swift_storeEnumTagMultiPayload();
      *v34 = 0x4000000000000000;
      (*v19)(v15, enum case for Image.ResizingMode.stretch(_:), v12);
      v36 = sub_263100();
      (*v20)(v15, v12);
      v37 = *(sub_2EF0(&qword_3270A0, &qword_28BEA0) + 36);
      *(v34 + v37) = swift_getKeyPath();
      sub_2EF0(&qword_31DD08, &qword_277680);
      swift_storeEnumTagMultiPayload();
      *v5 = v36;
      sub_8198(v5, v46, &qword_327070, &qword_28BE38);
      swift_storeEnumTagMultiPayload();
      sub_22DB34();
      sub_22DD30();
      sub_261F80();
      v26 = v5;
      v27 = &qword_327070;
      v28 = &qword_28BE38;
    }
  }

  else
  {
    v29 = (v7 + *(v42 + 36));
    v30 = *(type metadata accessor for AudiobookCoverEffect(0) + 24);
    *(v29 + v30) = swift_getKeyPath();
    sub_2EF0(&qword_316DC0, &qword_2691C0);
    swift_storeEnumTagMultiPayload();
    *v29 = xmmword_28BB30;
    (*v19)(v15, enum case for Image.ResizingMode.stretch(_:), v12);
    v31 = sub_263100();
    (*v20)(v15, v12);
    v32 = *(sub_2EF0(&qword_3270D8, &unk_28BEE8) + 36);
    *(v29 + v32) = swift_getKeyPath();
    sub_2EF0(&qword_31DD08, &qword_277680);
    swift_storeEnumTagMultiPayload();
    *v7 = v31;
    sub_8198(v7, v10, &qword_327078, &qword_28BE40);
    swift_storeEnumTagMultiPayload();
    sub_22DBC0();
    sub_22DC78();
    v33 = v41;
    sub_261F80();
    sub_8198(v33, v46, &qword_327090, &qword_28BE58);
    swift_storeEnumTagMultiPayload();
    sub_22DB34();
    sub_22DD30();
    sub_261F80();
    sub_8E80(v33, &qword_327090, &qword_28BE58);
    v26 = v7;
    v27 = &qword_327078;
    v28 = &qword_28BE40;
  }

  return sub_8E80(v26, v27, v28);
}

void sub_22A900(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v70 = a2;
  v5 = sub_2EF0(&qword_3270F0, &qword_28BF48);
  __chkstk_darwin(v5);
  v7 = &v63 - v6;
  v69 = sub_2EF0(&qword_326E98, &qword_28BBF8);
  __chkstk_darwin(v69);
  v67 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v68 = &v63 - v10;
  v11 = sub_2EF0(&qword_3270F8, &qword_28BF50);
  __chkstk_darwin(v11);
  v66 = &v63 - v12;
  v13 = sub_2EF0(&qword_327100, &qword_28BF58);
  __chkstk_darwin(v13);
  v65 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  if (a1)
  {
    v18 = a1;
    goto LABEL_4;
  }

  v19 = (v2 + *(type metadata accessor for CoverView(0) + 40));
  v20 = v19[5];
  v80 = v19[4];
  v81 = v20;
  v21 = v19[7];
  v82 = v19[6];
  v83 = v21;
  v22 = v19[1];
  v76 = *v19;
  v77 = v22;
  v23 = v19[3];
  v78 = v19[2];
  v79 = v23;
  CoverViewModel.placeholderImageName.getter();
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v64 = v2;
  v26 = v7;
  v27 = v17;
  v28 = v13;
  v29 = v5;
  v30 = v25;
  v31 = sub_264420();

  v18 = [objc_opt_self() imageNamed:v31 inBundle:v30];

  v5 = v29;
  v13 = v28;
  v17 = v27;
  v7 = v26;
  v3 = v64;
  if (v18)
  {
LABEL_4:
    v32 = type metadata accessor for CoverView(0);
    if (*(v3 + *(v32 + 44)) == 1)
    {
      v33 = v32;
      v34 = qword_315930;
      v35 = a1;
      if (v34 != -1)
      {
        swift_once();
      }

      if (byte_31C408 != 1 || (v36 = [objc_opt_self() standardUserDefaults], v37 = sub_264420(), v64 = v11, v38 = v3, v39 = v7, v40 = v17, v41 = v13, v42 = v5, v43 = v37, v44 = objc_msgSend(v36, "integerForKey:", v37), v36, v43, v5 = v42, v13 = v41, v17 = v40, v7 = v39, v3 = v38, v11 = v64, (v44 & 0x40) == 0))
      {
        sub_22988C(v18, v68);
        v45 = sub_22B080();
        v63 = v5;
        if (v46)
        {
          *&v76 = v45;
          *(&v76 + 1) = v46;
          sub_264B70();
        }

        else
        {
          v75 = 0;
          memset(v74, 0, sizeof(v74));
        }

        v52 = (v3 + *(v33 + 36));
        LODWORD(v67) = *v52;
        v64 = *(v52 + 1);
        LOBYTE(v71) = v67;
        *(&v71 + 1) = v64;
        v53 = v18;
        sub_2EF0(&qword_3210B8, &qword_27EE90);
        sub_263200();
        v54 = v76;
        v55 = v77;
        v56 = v66;
        v57 = &v66[*(v11 + 36)];
        sub_8198(v74, (v57 + 128), &qword_316610, &qword_268BA0);
        *(v57 + 21) = v53;
        *(v57 + 11) = v54;
        v57[192] = v55;
        *v57 = swift_getKeyPath();
        v57[40] = 0;
        *(v57 + 6) = swift_getKeyPath();
        v57[56] = 0;
        *(v57 + 8) = swift_getKeyPath();
        v57[72] = 0;
        v72 = 0u;
        v71 = 0u;
        v73 = 1;
        sub_2EF0(&qword_3167E0, qword_268710);
        sub_2631D0();
        sub_8E80(v74, &qword_316610, &qword_268BA0);
        v58 = v78;
        v59 = *(&v78 + 1);
        v60 = v77;
        *(v57 + 5) = v76;
        *(v57 + 6) = v60;
        v57[112] = v58;
        *(v57 + 15) = v59;
        sub_22148(v68, v56, &qword_326E98, &qword_28BBF8);
        LOBYTE(v76) = v67;
        *(&v76 + 1) = v64;
        sub_2631E0();
        if (v74[0])
        {
          v61 = 1.0;
        }

        else
        {
          v61 = 0.0;
        }

        v62 = v65;
        sub_22148(v56, v65, &qword_3270F8, &qword_28BF50);
        *(v62 + *(v13 + 36)) = v61;
        sub_22148(v62, v17, &qword_327100, &qword_28BF58);
        sub_8198(v17, v7, &qword_327100, &qword_28BF58);
        swift_storeEnumTagMultiPayload();
        sub_22E19C();
        sub_22C3A8();
        sub_261F80();

        v49 = v17;
        v50 = &qword_327100;
        v51 = &qword_28BF58;
        goto LABEL_18;
      }
    }

    else
    {
      v47 = a1;
    }

    v48 = v67;
    sub_22988C(v18, v67);
    sub_8198(v48, v7, &qword_326E98, &qword_28BBF8);
    swift_storeEnumTagMultiPayload();
    sub_22E19C();
    sub_22C3A8();
    sub_261F80();

    v49 = v48;
    v50 = &qword_326E98;
    v51 = &qword_28BBF8;
LABEL_18:
    sub_8E80(v49, v50, v51);
    return;
  }

  __break(1u);
}

uint64_t sub_22B080()
{
  v1 = sub_2601E0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2EF0(&qword_31A0C8, &qword_26E2C0);
  __chkstk_darwin(v5 - 8);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (v20 - v9);
  v11 = (v0 + *(type metadata accessor for CoverView(0) + 40));
  v12 = v11[5];
  v21[4] = v11[4];
  v21[5] = v12;
  v13 = v11[7];
  v21[6] = v11[6];
  v21[7] = v13;
  v14 = v11[3];
  v21[2] = v11[2];
  v21[3] = v14;
  v15 = v11[1];
  v21[0] = *v11;
  v21[1] = v15;
  v16 = 0;
  if (!sub_2F8B8(v21))
  {
    v17 = sub_2F950(v21);
    sub_2296A4(v10);
    sub_8198(v10, v7, &qword_31A0C8, &qword_26E2C0);
    if ((*(v2 + 48))(v7, 1, v1) == 1)
    {
      sub_8E80(v10, &qword_31A0C8, &qword_26E2C0);
      v16 = *v17;
    }

    else
    {
      (*(v2 + 32))(v4, v7, v1);
      v18 = v17[1];
      v20[0] = *v17;
      v20[1] = v18;

      v22._countAndFlagsBits = 45;
      v22._object = 0xE100000000000000;
      sub_264530(v22);
      sub_22E2F8(&qword_327128, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v23._countAndFlagsBits = sub_264EB0();
      sub_264530(v23);

      v16 = v20[0];
      (*(v2 + 8))(v4, v1);
      sub_8E80(v10, &qword_31A0C8, &qword_26E2C0);
    }
  }

  return v16;
}

void CoverView.body.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v84 = a1;
  v73 = sub_2EF0(&qword_326E98, &qword_28BBF8);
  __chkstk_darwin(v73);
  v74 = &v71 - v3;
  v83 = sub_2EF0(&qword_326EA0, &qword_28BC00);
  __chkstk_darwin(v83);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v71 - v7;
  v81 = sub_2EF0(&qword_326EA8, &qword_28BC08);
  __chkstk_darwin(v81);
  v82 = &v71 - v9;
  v10 = sub_261E20();
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CoverView(0);
  v75 = *(v13 - 8);
  v14 = *(v75 + 64);
  __chkstk_darwin(v13);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_2EF0(&qword_326EB0, &qword_28BC10);
  __chkstk_darwin(v80);
  v76 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v77 = &v71 - v18;
  if (qword_315930 != -1)
  {
    swift_once();
  }

  if (byte_31C408 != 1 || (v19 = [objc_opt_self() standardUserDefaults], v72 = v14, v20 = v13, v21 = v15, v22 = v2, v23 = v5, v24 = v12, v25 = v8, v26 = v19, v27 = sub_264420(), v28 = objc_msgSend(v26, "integerForKey:", v27), v26, v29 = v25, v12 = v24, v30 = v23, v2 = v22, v15 = v21, v13 = v20, v14 = v72, v27, (v28 & 8) == 0))
  {
    v31 = (v2 + *(v13 + 40));
    v32 = v31[5];
    v95[4] = v31[4];
    v95[5] = v32;
    v33 = v31[7];
    v95[6] = v31[6];
    v95[7] = v33;
    v34 = v31[1];
    v95[0] = *v31;
    v95[1] = v34;
    v35 = v31[3];
    v95[2] = v31[2];
    v95[3] = v35;
    v36 = sub_2F8B8(v95) == 0;
    sub_22E0C4(v2, v15, type metadata accessor for CoverView);
    v37 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v38 = swift_allocObject();
    sub_22E134(v15, v38 + v37, type metadata accessor for CoverView);
    *(v38 + v37 + v14) = v36;
    v39 = v31[5];
    v100 = v31[4];
    v101 = v39;
    v40 = v31[7];
    v102 = v31[6];
    v103 = v40;
    v41 = v31[1];
    v96 = *v31;
    v97 = v41;
    v42 = v31[3];
    v98 = v31[2];
    v99 = v42;
    v43 = sub_2F8B8(&v96);
    v44 = sub_2F950(&v96);
    if (v43)
    {
      if (v43 == 1)
      {
        v45 = 0x3FF0000000000000;
      }

      else
      {
        v45 = 0x3FE4834834834834;
      }
    }

    else
    {
      v45 = *(v44 + 16);
    }

    *&v87 = sub_22C19C;
    *(&v87 + 1) = v38;
    *&v88 = v45;
    WORD4(v88) = 0;
    sub_261E10();
    sub_2EF0(&qword_326EB8, &qword_28BC18);
    sub_22C23C();
    v64 = v76;
    sub_262D40();
    (*(v78 + 8))(v12, v79);

    v65 = v31[5];
    v91 = v31[4];
    v92 = v65;
    v66 = v31[7];
    v93 = v31[6];
    v94 = v66;
    v67 = v31[1];
    v87 = *v31;
    v88 = v67;
    v68 = v31[3];
    v89 = v31[2];
    v90 = v68;
    v85 = CoverViewModel.axLabel.getter();
    v86 = v69;
    sub_10A84();
    v70 = v77;
    sub_261700();

    v61 = &qword_326EB0;
    v62 = &qword_28BC10;
    sub_8E80(v64, &qword_326EB0, &qword_28BC10);
    sub_8198(v70, v82, &qword_326EB0, &qword_28BC10);
    swift_storeEnumTagMultiPayload();
    sub_22C2F4(&qword_326ED8, &qword_326EB0, &qword_28BC10, sub_22C23C);
    sub_22C2F4(&qword_326EE0, &qword_326EA0, &qword_28BC00, sub_22C3A8);
    sub_261F80();
    v63 = v70;
    goto LABEL_13;
  }

  v46 = (v2 + *(v13 + 40));
  v47 = v46[5];
  v100 = v46[4];
  v101 = v47;
  v48 = v46[7];
  v102 = v46[6];
  v103 = v48;
  v49 = v46[1];
  v96 = *v46;
  v97 = v49;
  v50 = v46[3];
  v98 = v46[2];
  v99 = v50;
  CoverViewModel.placeholderImageName.getter();
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v52 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v53 = sub_264420();

  v54 = [objc_opt_self() imageNamed:v53 inBundle:v52];

  if (v54)
  {
    v55 = v74;
    sub_22988C(v54, v74);

    sub_261E10();
    sub_22C3A8();
    sub_262D40();
    (*(v78 + 8))(v12, v79);
    sub_8E80(v55, &qword_326E98, &qword_28BBF8);
    v56 = v46[5];
    v100 = v46[4];
    v101 = v56;
    v57 = v46[7];
    v102 = v46[6];
    v103 = v57;
    v58 = v46[1];
    v96 = *v46;
    v97 = v58;
    v59 = v46[3];
    v98 = v46[2];
    v99 = v59;
    *&v95[0] = CoverViewModel.axLabel.getter();
    *(&v95[0] + 1) = v60;
    sub_10A84();
    sub_261700();

    v61 = &qword_326EA0;
    v62 = &qword_28BC00;
    sub_8E80(v30, &qword_326EA0, &qword_28BC00);
    sub_8198(v29, v82, &qword_326EA0, &qword_28BC00);
    swift_storeEnumTagMultiPayload();
    sub_22C2F4(&qword_326ED8, &qword_326EB0, &qword_28BC10, sub_22C23C);
    sub_22C2F4(&qword_326EE0, &qword_326EA0, &qword_28BC00, sub_22C3A8);
    sub_261F80();
    v63 = v29;
LABEL_13:
    sub_8E80(v63, v61, v62);
    return;
  }

  __break(1u);
}

double sub_22BC08@<D0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CoverView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = (a1 + *(v9 + 48));
  v11 = v10[5];
  v43 = v10[4];
  v44 = v11;
  v12 = v10[7];
  v45 = v10[6];
  v46 = v12;
  v13 = v10[1];
  v39 = *v10;
  v40 = v13;
  v14 = v10[3];
  v41 = v10[2];
  v42 = v14;
  v47[2] = v41;
  v47[3] = v14;
  v47[0] = v39;
  v47[1] = v13;
  v47[6] = v45;
  v47[7] = v12;
  v47[4] = v43;
  v47[5] = v11;
  v15 = sub_2F8B8(v47);
  if (v15)
  {
    if (v15 == 1)
    {
      v16 = *sub_2F950(v47);
      v17 = v16;
      goto LABEL_7;
    }

    v17 = *sub_2F950(v47);
    v18 = 0.641025641;
  }

  else
  {
    v17 = *(sub_2F950(v47) + 120);
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v37 = v46;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v33 = v42;
    v18 = *(sub_2F950(&v30) + 16);
  }

  v16 = v17 * v18;
LABEL_7:
  sub_261420();
  if (v16 < v19)
  {
    sub_261420();
    v16 = v20;
    v17 = v21;
  }

  if (a2)
  {
    v22 = sub_22C5D4(v16, v17);
  }

  else
  {
    v22 = 0;
  }

  sub_22E0C4(a1, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CoverView);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  sub_22E134(&v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for CoverView);
  type metadata accessor for ImageResourceLoader(0);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  sub_2EF0(&qword_318728, &qword_26DBF0);
  v26 = swift_allocObject();
  *(v26 + 28) = 0;
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v25 + 24) = v26;

  sub_2603B0();
  v38 = v25;

  sub_2631D0();

  v27 = v30;
  sub_261420();
  sub_261420();
  sub_263560();
  sub_2613A0();
  *a3 = sub_22E050;
  *(a3 + 8) = v24;
  *(a3 + 16) = v22;
  *(a3 + 24) = v27;
  v28 = v31;
  *(a3 + 40) = v30;
  *(a3 + 56) = v28;
  result = *&v32;
  *(a3 + 72) = v32;
  return result;
}

uint64_t sub_22BF30()
{
  v1 = type metadata accessor for CoverView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    sub_3080((v0 + v2));
  }

  else
  {
  }

  sub_3074(*(v3 + 48), *(v3 + 56));
  v4 = v1[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_261180();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[7];
  sub_2EF0(&qword_317E08, &qword_26A550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2601E0();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v3 + v1[10];
  sub_57200(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72), *(v9 + 80), *(v9 + 88), *(v9 + 96), *(v9 + 104), *(v9 + 112));

  return swift_deallocObject();
}

double sub_22C19C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CoverView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  return sub_22BC08(v4, v5, a1);
}

unint64_t sub_22C23C()
{
  result = qword_326EC0;
  if (!qword_326EC0)
  {
    sub_2F9C(&qword_326EB8, &qword_28BC18);
    sub_8E38(&qword_326EC8, &qword_326ED0, &qword_28BC20, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326EC0);
  }

  return result;
}

uint64_t sub_22C2F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2F9C(a2, a3);
    a4();
    sub_22E2F8(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C3A8()
{
  result = qword_326EE8;
  if (!qword_326EE8)
  {
    sub_2F9C(&qword_326E98, &qword_28BBF8);
    sub_22C434();
    sub_22C4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326EE8);
  }

  return result;
}

unint64_t sub_22C434()
{
  result = qword_326EF0;
  if (!qword_326EF0)
  {
    sub_2F9C(&qword_326EF8, &qword_28BC28);
    sub_8E38(&qword_326F00, &qword_326F08, &qword_28BC30, &protocol conformance descriptor for GeometryReader<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326EF0);
  }

  return result;
}

unint64_t sub_22C4EC()
{
  result = qword_326F10;
  if (!qword_326F10)
  {
    sub_2F9C(&qword_326F18, &qword_28BC38);
    sub_22E2F8(&qword_326F20, type metadata accessor for AlignmentImageView, &unk_26CF54);
    sub_8E38(&qword_326F28, &qword_326F30, &unk_28BC40, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326F10);
  }

  return result;
}

uint64_t sub_22C5D4(double a1, double a2)
{
  v5 = (v2 + *(type metadata accessor for CoverView(0) + 40));
  v6 = v5[5];
  v27[4] = v5[4];
  v27[5] = v6;
  v7 = v5[7];
  v27[6] = v5[6];
  v27[7] = v7;
  v8 = v5[3];
  v27[2] = v5[2];
  v27[3] = v8;
  v9 = v5[1];
  v27[0] = *v5;
  v27[1] = v9;
  v10 = sub_2F8B8(v27);
  result = 0;
  if (!v10)
  {
    v12 = sub_2F950(v27);
    v13 = v12[5];
    if (v13)
    {
      v14 = v12[4];
      v15 = v12[5];
    }

    else
    {
      v14 = *v12;
      v15 = v12[1];
    }

    v16 = v13 != 0;

    sub_2291FC(v24);
    v17 = v25;
    v18 = v26;
    sub_2E18(v24, v25);
    v22[0] = v14;
    v22[1] = v15;
    v23 = v16;
    v19 = sub_22936C();
    sub_22C730(v21);
    v20 = (*(v18 + 16))(v22, v21, v17, v18, a1, a2, v19);
    sub_6204(v14, v15);
    sub_3080(v24);
    return v20;
  }

  return result;
}

void sub_22C730(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = sub_261180();
  v4 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ColorConstants.Environment(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ColorConstants(0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_2607E0();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for BooksFeatureFlag.coverEffectV2(_:), v12, v14);
  sub_22E2F8(&qword_327030, &type metadata accessor for BooksFeatureFlag, &protocol conformance descriptor for BooksFeatureFlag);
  sub_8E38(&qword_327038, &qword_327040, &qword_28BDD0, &protocol conformance descriptor for StaticFeatureFlagsKey<A>);
  v17 = sub_264610();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    v18 = -66308;
LABEL_6:
    *a1 = v18;
    *(a1 + 2) = BYTE2(v18);
    return;
  }

  v64 = a1;
  v19 = type metadata accessor for CoverView(0);
  v20 = (v2 + *(v19 + 40));
  v21 = v20[5];
  v77[4] = v20[4];
  v77[5] = v21;
  v22 = v20[7];
  v77[6] = v20[6];
  v77[7] = v22;
  v23 = v20[3];
  v77[2] = v20[2];
  v77[3] = v23;
  v24 = v20[1];
  v77[0] = *v20;
  v77[1] = v24;
  if (sub_2F8B8(v77))
  {
    v18 = -66308;
LABEL_5:
    a1 = v64;
    goto LABEL_6;
  }

  v62 = v19;
  v63 = sub_2F950(v77);
  v61 = v2;
  sub_2294B8(v11);
  sub_22E0C4(v11, v8, type metadata accessor for ColorConstants.Environment);
  v26 = v65;
  v25 = v66;
  (*(v4 + 104))(v65, enum case for ColorScheme.dark(_:), v66);
  sub_22E2F8(&qword_3183A0, &type metadata accessor for ColorScheme, &protocol conformance descriptor for ColorScheme);
  v27 = sub_264390();
  v28 = *(v4 + 8);
  v28(v26, v25);
  sub_60B08(v11);
  v29 = v25;
  v30 = v27;
  v28(v8, v29);
  v31 = v27 ^ 1;
  if (!*(v63 + 25))
  {
    v40 = v20[5];
    v73 = v20[4];
    v74 = v40;
    v41 = v20[7];
    v75 = v20[6];
    v76 = v41;
    v42 = v20[1];
    v69 = *v20;
    v70 = v42;
    v43 = v20[3];
    v71 = v20[2];
    v72 = v43;
    if (sub_2F8B8(&v69))
    {
      goto LABEL_15;
    }

    v44 = sub_2F950(&v69);
    v45 = *(v61 + *(v62 + 32));
    if (!v45)
    {
      goto LABEL_35;
    }

    v46 = v44;
    swift_getKeyPath();
    swift_getKeyPath();
    v47 = v45;
    sub_260FF0();

    if (v68[0])
    {
LABEL_15:
      v48 = 0;
    }

    else if (*(v46 + 48))
    {
      v48 = 256;
    }

    else
    {
      v48 = 0;
    }

    a1 = v64;
    v18 = v48 | v31 & 1 | 0x400000;
    goto LABEL_6;
  }

  if (*(v63 + 25) != 1)
  {
    v18 = v31 & 1 | 0xFF800000;
    goto LABEL_5;
  }

  v32 = v20[5];
  v73 = v20[4];
  v74 = v32;
  v33 = v20[7];
  v75 = v20[6];
  v76 = v33;
  v34 = v20[1];
  v69 = *v20;
  v70 = v34;
  v35 = v20[3];
  v71 = v20[2];
  v72 = v35;
  v36 = sub_2F8B8(&v69);
  v37 = sub_2F950(&v69);
  if (!v36)
  {
    v49 = 24;
    v38 = v62;
LABEL_20:
    v39 = *(v37 + v49);
    goto LABEL_21;
  }

  v38 = v62;
  if (v36 != 1)
  {
    v49 = 8;
    goto LABEL_20;
  }

  v39 = 0;
LABEL_21:
  v50 = v20[5];
  v68[4] = v20[4];
  v68[5] = v50;
  v51 = v20[7];
  v68[6] = v20[6];
  v68[7] = v51;
  v52 = v20[1];
  v68[0] = *v20;
  v68[1] = v52;
  v53 = v20[3];
  v68[2] = v20[2];
  v68[3] = v53;
  if (sub_2F8B8(v68))
  {
    goto LABEL_24;
  }

  v54 = sub_2F950(v68);
  v55 = *(v61 + *(v38 + 32));
  if (v55)
  {
    v56 = v54;
    swift_getKeyPath();
    swift_getKeyPath();
    v57 = v55;
    sub_260FF0();

    if ((v67 & 1) == 0)
    {
      if (*(v56 + 48))
      {
        v58 = 0x10000;
      }

      else
      {
        v58 = 0;
      }

LABEL_25:
      a1 = v64;
      if (v30)
      {
        v59 = 0;
      }

      else
      {
        v59 = 256;
      }

      v18 = v59 | v39 | v58;
      goto LABEL_6;
    }

LABEL_24:
    v58 = 0;
    goto LABEL_25;
  }

LABEL_35:
  type metadata accessor for ProfileRestrictions(0);
  sub_22E2F8(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);
  sub_2618F0();
  __break(1u);
}

__n128 sub_22CD9C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 33);
  v6 = *v2;
  sub_2EF0(&qword_31CF38, &qword_274080);
  sub_263350();
  result = *a1;
  v8 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v8;
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  return result;
}

uint64_t CoverGeometryReference.isVisible.getter()
{
  sub_2EF0(&qword_31CF38, &qword_274080);
  sub_263320();
  return v1;
}

void *sub_22CE98@<X0>(_BYTE *a2@<X8>)
{
  sub_2EF0(&qword_31CF38, &qword_274080);
  result = sub_263320();
  *a2 = v4;
  return result;
}

void (*CoverGeometryReference.isVisible.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 64);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = sub_2EF0(&qword_31CF38, &qword_274080);
  sub_263320();
  return sub_22D068;
}

void sub_22D068(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_263330();

  free(v1);
}

uint64_t CoverGeometryReference.$isVisible.getter()
{
  sub_2EF0(&qword_31CF38, &qword_274080);
  sub_263350();
  return v1;
}

uint64_t sub_22D174(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
  }

  else
  {
    v10 = sub_2EF0(&qword_31A040, &unk_279210);
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[10] + 24);
      v14 = (v13 >> 3) & 0xFFFFFF80 | (v13 >> 1);
      if (v14 > 0x80000000)
      {
        return -v14;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

double sub_22D2B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_2EF0(&qword_316F68, &unk_269C50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    v12 = sub_2EF0(&qword_31A040, &unk_279210);
    if (*(*(v12 - 8) + 84) != a3)
    {
      v15 = a1 + a4[10];
      *v15 = 0;
      *(v15 + 8) = 0;
      *(v15 + 16) = 0;
      *(v15 + 24) = (8 * -a2) & 0x7FFFFFC00 | (2 * (-a2 & 0x7FLL));
      result = 0.0;
      *(v15 + 32) = 0u;
      *(v15 + 48) = 0u;
      *(v15 + 64) = 0u;
      *(v15 + 80) = 0u;
      *(v15 + 96) = 0u;
      *(v15 + 112) = 0u;
      return result;
    }

    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  v13(a1 + v11, a2, a2, v9);
  return result;
}

void sub_22D3F0(uint64_t a1)
{
  sub_78DC8(319, &qword_316FF8, &qword_317000, &qword_2693E0);
  if (v1 <= 0x3F)
  {
    sub_39050(319, &qword_316308, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_C4F38(319);
      if (v3 <= 0x3F)
      {
        sub_78DC8(319, &qword_31A0C0, &qword_31A0C8, &qword_26E2C0);
        if (v4 <= 0x3F)
        {
          sub_95884(319);
          if (v5 <= 0x3F)
          {
            sub_39050(319, &qword_320FC8, &type metadata for Bool, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22D560(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22D5A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22D610()
{
  result = qword_326FE0;
  if (!qword_326FE0)
  {
    sub_2F9C(&qword_326FE8, &qword_28BD28);
    sub_22C2F4(&qword_326ED8, &qword_326EB0, &qword_28BC10, sub_22C23C);
    sub_22C2F4(&qword_326EE0, &qword_326EA0, &qword_28BC00, sub_22C3A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_326FE0);
  }

  return result;
}

uint64_t sub_22D6F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22D73C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_22D7AC(uint64_t a1)
{
  result = sub_22D7D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22D7D4()
{
  result = qword_327020;
  if (!qword_327020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327020);
  }

  return result;
}

uint64_t sub_22D830()
{
  v1 = type metadata accessor for CoverView(0);
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    sub_3080((v0 + v2));
  }

  else
  {
  }

  sub_3074(*(v3 + 48), *(v3 + 56));
  v4 = v1[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_261180();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[7];
  sub_2EF0(&qword_317E08, &qword_26A550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2601E0();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v3 + v1[10];
  sub_57200(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72), *(v9 + 80), *(v9 + 88), *(v9 + 96), *(v9 + 104), *(v9 + 112));

  return swift_deallocObject();
}

uint64_t sub_22DAA0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CoverView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_229CF8(v4, a1);
}

unint64_t sub_22DB34()
{
  result = qword_3270A8;
  if (!qword_3270A8)
  {
    sub_2F9C(&qword_327090, &qword_28BE58);
    sub_22DBC0();
    sub_22DC78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3270A8);
  }

  return result;
}

unint64_t sub_22DBC0()
{
  result = qword_3270B0;
  if (!qword_3270B0)
  {
    sub_2F9C(&qword_327098, &qword_28BE60);
    sub_8E38(&qword_3270B8, &qword_3270C0, &qword_28BEE0, &protocol conformance descriptor for _CoverEffectViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3270B0);
  }

  return result;
}

unint64_t sub_22DC78()
{
  result = qword_3270C8;
  if (!qword_3270C8)
  {
    sub_2F9C(&qword_327078, &qword_28BE40);
    sub_8E38(&qword_3270D0, &qword_3270D8, &unk_28BEE8, &protocol conformance descriptor for _CoverEffectViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3270C8);
  }

  return result;
}

unint64_t sub_22DD30()
{
  result = qword_3270E0;
  if (!qword_3270E0)
  {
    sub_2F9C(&qword_327070, &qword_28BE38);
    sub_8E38(&qword_3270E8, &qword_3270A0, &qword_28BEA0, &protocol conformance descriptor for _CoverEffectViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3270E0);
  }

  return result;
}

uint64_t sub_22DDE8()
{
  v1 = type metadata accessor for CoverView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  if (*(v0 + v2 + 40))
  {
    sub_3080((v0 + v2));
  }

  else
  {
  }

  sub_3074(*(v3 + 48), *(v3 + 56));
  v4 = v1[6];
  sub_2EF0(&qword_316C00, &qword_26A520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_261180();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  v6 = v1[7];
  sub_2EF0(&qword_317E08, &qword_26A550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_2601E0();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v3 + v6, 1, v7))
    {
      (*(v8 + 8))(v3 + v6, v7);
    }
  }

  else
  {
  }

  v9 = v3 + v1[10];
  sub_57200(*v9, *(v9 + 8), *(v9 + 16), *(v9 + 24), *(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72), *(v9 + 80), *(v9 + 88), *(v9 + 96), *(v9 + 104), *(v9 + 112));

  return swift_deallocObject();
}

uint64_t sub_22E0C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22E134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_22E19C()
{
  result = qword_327108;
  if (!qword_327108)
  {
    sub_2F9C(&qword_327100, &qword_28BF58);
    sub_22E228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327108);
  }

  return result;
}

unint64_t sub_22E228()
{
  result = qword_327110;
  if (!qword_327110)
  {
    sub_2F9C(&qword_3270F8, &qword_28BF50);
    sub_22C3A8();
    sub_8E38(&qword_327118, &qword_327120, &qword_28BF60, &unk_268728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327110);
  }

  return result;
}

uint64_t sub_22E2F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22E34C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v11 = sub_261C90();
  v27 = *(v11 - 8);
  v28 = v11;
  __chkstk_darwin(v11);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2EF0(&qword_327138, &qword_28C138);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v27 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5 & 1;
  *(v18 + 41) = HIBYTE(a5) & 1;
  v19 = sub_2EF0(&qword_327140, &unk_28C140);
  (*(*(v19 - 8) + 16))(v17, a1, v19);
  v20 = &v17[*(v15 + 44)];
  *v20 = sub_22EA30;
  v20[1] = v18;
  KeyPath = swift_getKeyPath();
  v31 = a2;
  v32 = a3;

  sub_39D6C(a4, a5 & 1);
  sub_2EF0(&qword_3210B8, &qword_27EE90);
  sub_2631E0();
  if (v30)
  {
    v22 = 1;
  }

  else
  {
    if ((a5 & 1) == 0)
    {

      sub_264900();
      v23 = sub_2624B0();
      sub_260D10();

      sub_261C80();
      swift_getAtKeyPath();
      sub_4054(a4, 0);
      (*(v27 + 8))(v13, v28);
      LOBYTE(a4) = v31;
    }

    v22 = a4 & ((a5 & 0x100) != 0);
  }

  v24 = v29;
  sub_22EA8C(v17, v29);
  result = sub_2EF0(&qword_327148, &unk_28C150);
  v26 = v24 + *(result + 36);
  *v26 = KeyPath;
  *(v26 + 8) = v22;
  return result;
}

uint64_t EnvironmentValues.isHovering.getter()
{
  sub_60BCC();
  sub_261CB0();
  return v1;
}

uint64_t sub_22E6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_22E34C(a1, *v2, *(v2 + 8), *(v2 + 16), v3 | *(v2 + 24), a2);
}

uint64_t (*EnvironmentValues.isHovering.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_60BCC();
  sub_261CB0();
  *(a1 + 16) = *(a1 + 17);
  return sub_22E738;
}

double View.observeHovering(passOnParentHoverState:)(char a1, uint64_t a2, uint64_t a3)
{
  sub_2631D0();
  swift_getKeyPath();
  sub_262E30();

  return result;
}

uint64_t sub_22E830(void *a1)
{
  sub_261730();
  sub_22E894();
  return swift_getWitnessTable();
}

unint64_t sub_22E894()
{
  result = qword_327130;
  if (!qword_327130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327130);
  }

  return result;
}

__n128 sub_22E8E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_22E8FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22E958(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22E9EC()
{

  sub_4054(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_22EA8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_327138, &qword_28C138);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22EB00()
{
  result = qword_327150;
  if (!qword_327150)
  {
    sub_2F9C(&qword_327148, &unk_28C150);
    sub_22EBB8();
    sub_8E38(&qword_3171E0, &qword_3171D8, &qword_26B730, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327150);
  }

  return result;
}

unint64_t sub_22EBB8()
{
  result = qword_327158;
  if (!qword_327158)
  {
    sub_2F9C(&qword_327138, &qword_28C138);
    sub_8E38(&qword_327160, &qword_327140, &unk_28C140, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_179DEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327158);
  }

  return result;
}

double View.shelfCollagePagingDecoration<A, B, C>(transaction:backward:forward:mask:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  swift_getKeyPath();
  sub_22EF30(a1, a2, a3, a4, a5, a6, a7, a9, &v23, a10, a11, a13, a14, a15);
  v24 = v23;

  sub_262A90();

  sub_22F05C(&v24);

  return result;
}

__n128 sub_22EDCC@<Q0>(uint64_t a1@<X8>)
{
  sub_22F930();
  sub_261CB0();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  return result;
}

__n128 sub_22EE2C@<Q0>(uint64_t a1@<X8>)
{
  sub_22F930();
  sub_261CB0();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_22EE94(uint64_t a1)
{
  sub_22F930();

  return sub_261CC0();
}

void *sub_22EF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = swift_allocObject();
  v18[2] = a8;
  v18[3] = a10;
  v18[4] = a11;
  v18[5] = a12;
  v18[6] = a13;
  v18[7] = a14;
  v18[8] = a2;
  v18[9] = a3;
  v19 = swift_allocObject();
  v19[2] = a8;
  v19[3] = a10;
  v19[4] = a11;
  v19[5] = a12;
  v19[6] = a13;
  v19[7] = a14;
  v19[8] = a4;
  v19[9] = a5;
  result = swift_allocObject();
  result[2] = a8;
  result[3] = a10;
  result[4] = a11;
  result[5] = a12;
  result[6] = a13;
  result[7] = a14;
  result[8] = a6;
  result[9] = a7;
  *a9 = a1;
  a9[1] = sub_22F338;
  a9[2] = v18;
  a9[3] = sub_22F5EC;
  a9[4] = v19;
  a9[5] = sub_22F760;
  a9[6] = result;
  return result;
}

uint64_t sub_22F0B0(uint64_t *a1)
{
  sub_2F9C(&qword_327168, &qword_28C190);
  sub_261730();
  sub_8E38(&qword_327170, &qword_327168, &qword_28C190, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_22F160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F1A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22F21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a5 - 8);
  v11 = __chkstk_darwin(a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  v15 = sub_22F868(v13, a5, a8);
  (*(v10 + 8))(v13, a5);
  return v15;
}

uint64_t sub_22F300()
{

  return swift_deallocObject();
}

uint64_t sub_22F368(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2EF0(&qword_327180, &qword_28C250);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v12 - v8;

  sub_263230();
  (*(v4 + 16))(v6, v9, v3);
  sub_8E38(&qword_327188, &qword_327180, &qword_28C250, &protocol conformance descriptor for Button<A>);
  v10 = sub_263310();
  (*(v4 + 8))(v9, v3);
  return v10;
}

uint64_t sub_22F508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = *(a6 - 8);
  v11 = __chkstk_darwin(a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  v15 = sub_22F868(v13, a6, a9);
  (*(v10 + 8))(v13, a6);
  return v15;
}

uint64_t sub_22F67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a5 - 8);
  v11 = __chkstk_darwin(a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14(v11);
  v15 = sub_22F868(v13, a5, a8);
  (*(v10 + 8))(v13, a5);
  return v15;
}

uint64_t sub_22F774@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2630B0();
  *a1 = result;
  return result;
}

uint64_t sub_22F7B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2630B0();
  *a1 = result;
  return result;
}

uint64_t sub_22F800@<X0>(uint64_t *a1@<X8>)
{
  sub_2635E0();
  result = sub_261270();
  *a1 = result;
  a1[1] = sub_22F204;
  a1[2] = 0;
  a1[3] = sub_22F350;
  a1[4] = 0;
  a1[5] = sub_22F640;
  a1[6] = 0;
  return result;
}

uint64_t sub_22F868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __chkstk_darwin(a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  return sub_263310();
}

unint64_t sub_22F930()
{
  result = qword_327178;
  if (!qword_327178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327178);
  }

  return result;
}

uint64_t ShrinkableText.init(text:shorterText:shortestText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ShrinkableText(0);
  v9 = *(v8 + 20);
  v10 = sub_260BD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(a4 + v9, 1, 1, v10);
  v13 = *(v8 + 24);
  v12(a4 + v13, 1, 1, v10);
  (*(v11 + 32))(a4, a1, v10);
  sub_D0CC8(a2, a4 + v9);

  return sub_D0CC8(a3, a4 + v13);
}

uint64_t type metadata accessor for ShrinkableText(uint64_t a1)
{
  result = qword_3271F8;
  if (!qword_3271F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ShrinkableText.text.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_260BD0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ShrinkableText.text.setter(uint64_t a1)
{
  v3 = sub_260BD0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ShrinkableText.shorterText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShrinkableText(0) + 20);

  return sub_104B0(v3, a1);
}

uint64_t ShrinkableText.shorterText.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ShrinkableText(0) + 20);

  return sub_D0CC8(a1, v3);
}

uint64_t ShrinkableText.shortestText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShrinkableText(0) + 24);

  return sub_104B0(v3, a1);
}

uint64_t ShrinkableText.shortestText.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ShrinkableText(0) + 24);

  return sub_D0CC8(a1, v3);
}

uint64_t sub_22FD70()
{
  v1 = 0x54726574726F6873;
  if (*v0 != 1)
  {
    v1 = 0x74736574726F6873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_22FDD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_230D14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22FDFC(uint64_t a1)
{
  v2 = sub_230844();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_22FE38(uint64_t a1)
{
  v2 = sub_230844();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ShrinkableText.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v3 - 8);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v26 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2EF0(&qword_327190, &qword_28C258);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v12 = &v23 - v11;
  v13 = type metadata accessor for ShrinkableText(0);
  v14 = v13 - 8;
  v15 = __chkstk_darwin(v13);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v9 + 56);
  v30 = *(v14 + 28);
  v18(&v17[v30], 1, 1, v8, v15);
  v29 = *(v14 + 32);
  (v18)(&v17[v29], 1, 1, v8);
  sub_2E18(a1, a1[3]);
  sub_230844();
  v19 = v28;
  sub_265120();
  if (v19)
  {
    sub_3080(a1);
    sub_8E80(&v17[v30], &qword_316208, &qword_268BD0);
    return sub_8E80(&v17[v29], &qword_316208, &qword_268BD0);
  }

  else
  {
    v28 = a1;
    v20 = v25;
    v33 = 0;
    sub_230E34(&qword_315D90, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
    sub_264DF0();
    (*(v9 + 32))(v17, v26, v8);
    v32 = 1;
    sub_264DB0();
    sub_D0CC8(v7, &v17[v30]);
    v31 = 2;
    v21 = v24;
    sub_264DB0();
    (*(v20 + 8))(v12, v27);
    sub_D0CC8(v21, &v17[v29]);
    sub_10998(v17, v23);
    sub_3080(v28);
    return sub_230898(v17);
  }
}

BOOL _s7BooksUI14ShrinkableTextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_260BD0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2EF0(&qword_316208, &qword_268BD0);
  __chkstk_darwin(v8 - 8);
  v10 = &v33[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v33[-v12];
  v14 = sub_2EF0(&qword_326438, &qword_289DF8);
  __chkstk_darwin(v14);
  v16 = &v33[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v19 = &v33[-v18];
  if ((sub_260B60() & 1) == 0)
  {
    return 0;
  }

  v36 = v10;
  v39 = v7;
  v37 = type metadata accessor for ShrinkableText(0);
  v20 = *(v37 + 20);
  v21 = *(v14 + 48);
  sub_104B0(a1 + v20, v19);
  v38 = a2;
  sub_104B0(a2 + v20, &v19[v21]);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_104B0(v19, v13);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v39, &v19[v21], v4);
      sub_230E34(&qword_321BA8, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
      v34 = sub_264390();
      v35 = v5;
      v24 = *(v5 + 8);
      v24(v39, v4);
      v24(v13, v4);
      sub_8E80(v19, &qword_316208, &qword_268BD0);
      if ((v34 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    (*(v5 + 8))(v13, v4);
LABEL_7:
    v23 = v19;
LABEL_15:
    sub_8E80(v23, &qword_326438, &qword_289DF8);
    return 0;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  v35 = v5;
  sub_8E80(v19, &qword_316208, &qword_268BD0);
LABEL_9:
  v25 = *(v37 + 24);
  v26 = *(v14 + 48);
  sub_104B0(a1 + v25, v16);
  sub_104B0(v38 + v25, &v16[v26]);
  if (v22(v16, 1, v4) == 1)
  {
    if (v22(&v16[v26], 1, v4) == 1)
    {
      sub_8E80(v16, &qword_316208, &qword_268BD0);
      return 1;
    }

    goto LABEL_14;
  }

  v27 = v36;
  sub_104B0(v16, v36);
  if (v22(&v16[v26], 1, v4) == 1)
  {
    (*(v35 + 8))(v27, v4);
LABEL_14:
    v23 = v16;
    goto LABEL_15;
  }

  v29 = v35;
  v30 = v39;
  (*(v35 + 32))(v39, &v16[v26], v4);
  sub_230E34(&qword_321BA8, &type metadata accessor for LocalizerRequest, &protocol conformance descriptor for LocalizerRequest);
  v31 = sub_264390();
  v32 = *(v29 + 8);
  v32(v30, v4);
  v32(v27, v4);
  sub_8E80(v16, &qword_316208, &qword_268BD0);
  return (v31 & 1) != 0;
}

unint64_t sub_230844()
{
  result = qword_327198;
  if (!qword_327198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327198);
  }

  return result;
}

uint64_t sub_230898(uint64_t a1)
{
  v2 = type metadata accessor for ShrinkableText(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2308F4(uint64_t a1)
{
  result = sub_230E34(&qword_326618, type metadata accessor for ShrinkableText, &protocol conformance descriptor for ShrinkableText);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_230960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_260BD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2EF0(&qword_316208, &qword_268BD0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_230A70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_260BD0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2EF0(&qword_316208, &qword_268BD0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_230B78(uint64_t a1)
{
  sub_260BD0();
  if (v1 <= 0x3F)
  {
    sub_95918(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_230C10()
{
  result = qword_327238;
  if (!qword_327238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327238);
  }

  return result;
}

unint64_t sub_230C68()
{
  result = qword_327240;
  if (!qword_327240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327240);
  }

  return result;
}

unint64_t sub_230CC0()
{
  result = qword_327248;
  if (!qword_327248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327248);
  }

  return result;
}

uint64_t sub_230D14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_264F10() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x54726574726F6873 && a2 == 0xEB00000000747865 || (sub_264F10() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736574726F6873 && a2 == 0xEC00000074786554)
  {

    return 2;
  }

  else
  {
    v6 = sub_264F10();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_230E34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_230EB0(uint64_t a1, uint64_t a2)
{
  v22[0] = a2;
  v3 = sub_260290();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v22 - v8;
  v10 = sub_264410();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v22 - v15;
  v17 = sub_2643F0();
  __chkstk_darwin(v17 - 8);
  sub_2643E0();
  v23._countAndFlagsBits = 0x2072756F59;
  v23._object = 0xE500000000000000;
  sub_2643D0(v23);
  v24._countAndFlagsBits = a1;
  v24._object = v22[0];
  sub_2643C0(v24);
  v25._countAndFlagsBits = 0x6E69207261655920;
  v25._object = 0xEF77656976655220;
  sub_2643D0(v25);
  sub_264400();
  sub_260260();
  (*(v11 + 16))(v13, v16, v10);
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  (*(v4 + 16))(v6, v9, v3);
  v20 = sub_264490();
  (*(v4 + 8))(v9, v3);
  (*(v11 + 8))(v16, v10);
  return v20;
}

__n128 sub_2311B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2EF0(&qword_327250, &qword_28C498);
  __chkstk_darwin(v6 - 8);
  v8 = v14 - v7;
  *v8 = sub_261E60();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = sub_2EF0(&qword_327258, &qword_28C4A0);
  sub_23130C(a1, a2, &v8[*(v9 + 44)]);
  sub_263580();
  sub_261830();
  sub_232804(v8, a3);
  v10 = a3 + *(sub_2EF0(&qword_327260, &qword_28C4A8) + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_23130C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v141 = a2;
  v139 = a1;
  v148 = a3;
  v147 = sub_262370();
  v146 = *(v147 - 8);
  __chkstk_darwin(v147);
  v143 = v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_2EF0(&qword_327268, &qword_28C4B0);
  __chkstk_darwin(v136);
  v135 = (v118 - v4);
  v137 = sub_2EF0(&qword_327270, &qword_28C4B8);
  __chkstk_darwin(v137);
  v138 = v118 - v5;
  v145 = sub_2EF0(&qword_327278, &qword_28C4C0);
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v142 = v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v140 = v118 - v8;
  v134 = sub_260290();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v129 = v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v130 = v118 - v11;
  v131 = sub_264410();
  v128 = *(v131 - 8);
  __chkstk_darwin(v131);
  v125 = v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v126 = v118 - v14;
  v122 = sub_2EF0(&qword_3174E0, &qword_26B310);
  __chkstk_darwin(v122);
  v121 = v118 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v120 = v118 - v17;
  v18 = sub_261690();
  v156 = *(v18 - 8);
  v157 = v18;
  __chkstk_darwin(v18);
  v154 = v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v155 = v118 - v21;
  v159 = sub_2EF0(&qword_3174E8, &qword_269970);
  __chkstk_darwin(v159);
  v119 = v118 - v22;
  v153 = sub_2626C0();
  v152 = *(v153 - 8);
  __chkstk_darwin(v153);
  v151 = v118 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_2EF0(&qword_327280, &qword_28C4C8);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v158 = v118 - v24;
  v25 = sub_2EF0(&qword_327288, &qword_28C4D0);
  __chkstk_darwin(v25 - 8);
  v132 = v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v127 = v118 - v28;
  sub_2630B0();
  v29 = sub_262900();
  v31 = v30;
  v33 = v32;
  v34 = sub_262820();
  v36 = v35;
  v150 = v37;
  v149 = v38;
  sub_39DBC(v29, v31, v33 & 1);

  v162 = 0x736B6F6F42;
  v163 = 0xE500000000000000;
  v118[1] = sub_10A84();
  v39 = sub_2628F0();
  v41 = v40;
  LOBYTE(v31) = v42;
  v43 = sub_262820();
  v45 = v44;
  v47 = v46;
  sub_39DBC(v39, v41, v31 & 1);

  sub_39DBC(v34, v36, v150 & 1);

  LODWORD(v162) = sub_262120();
  v48 = sub_2627F0();
  v50 = v49;
  LOBYTE(v36) = v51;
  sub_39DBC(v43, v45, v47 & 1);

  sub_262590();
  v52 = v152;
  v53 = v151;
  v54 = v153;
  (*(v152 + 104))(v151, enum case for Font.Leading.tight(_:), v153);
  sub_2626E0();

  (*(v52 + 8))(v53, v54);
  v55 = sub_262840();
  v57 = v56;
  LOBYTE(v52) = v58;

  sub_39DBC(v48, v50, v36 & 1);

  sub_262630();
  v59 = sub_2627D0();
  v61 = v60;
  LOBYTE(v39) = v62;
  sub_39DBC(v55, v57, v52 & 1);

  LODWORD(v162) = sub_262120();
  v63 = sub_2627F0();
  v65 = v64;
  LOBYTE(v45) = v66;
  v67 = v61;
  v68 = v154;
  sub_39DBC(v59, v67, v39 & 1);

  v69 = sub_262870();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v76 = v63;
  v77 = v155;
  sub_39DBC(v76, v65, v45 & 1);

  v153 = v69;
  v162 = v69;
  v163 = v71;
  v152 = v71;
  LOBYTE(v164) = v73 & 1;
  v165 = v75;
  v78 = v157;
  v79 = v156;
  v80 = *(v156 + 104);
  v80(v77, enum case for DynamicTypeSize.small(_:), v157);
  v80(v68, enum case for DynamicTypeSize.accessibility1(_:), v78);
  sub_2329CC(&qword_317538, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = sub_264380();
  if (result)
  {
    v82 = *(v79 + 32);
    v151 = v75;
    v83 = v120;
    v82(v120, v77, v78);
    v84 = v122;
    v82((v83 + *(v122 + 48)), v68, v78);
    v85 = v121;
    sub_232874(v83, v121);
    v86 = *(v84 + 48);
    v87 = v119;
    v82(v119, v85, v78);
    LODWORD(v155) = v73 & 1;
    v88 = *(v79 + 8);
    v88(v85 + v86, v78);
    sub_13CF00(v83, v85);
    v82((v87 + *(v159 + 36)), (v85 + *(v84 + 48)), v78);
    v88(v85, v78);
    v89 = sub_8E38(&qword_3175C8, &qword_3174E8, &qword_269970, &protocol conformance descriptor for ClosedRange<A>);
    sub_262B70();
    sub_8E80(v87, &qword_3174E8, &qword_269970);
    sub_39DBC(v153, v152, v155);

    v90 = v126;
    sub_2643A0();
    v91 = v130;
    sub_260260();
    v92 = v128;
    v93 = v131;
    (*(v128 + 16))(v125, v90, v131);
    type metadata accessor for BundleFinder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v95 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v96 = v133;
    v97 = v134;
    (*(v133 + 16))(v129, v91, v134);
    v98 = sub_264490();
    v100 = v99;
    (*(v96 + 8))(v91, v97);
    (*(v92 + 8))(v90, v93);
    v160 = v98;
    v161 = v100;
    v162 = &type metadata for Text;
    v163 = v159;
    v164 = &protocol witness table for Text;
    v165 = v89;
    swift_getOpaqueTypeConformance2();
    v101 = v127;
    v102 = v124;
    v103 = v158;
    sub_262C00();

    (*(v123 + 8))(v103, v102);
    v104 = sub_261E60();
    v105 = v135;
    *v135 = v104;
    *(v105 + 8) = 0;
    *(v105 + 16) = 1;
    v106 = sub_2EF0(&qword_327290, &qword_28C4D8);
    sub_232344(v139, v141, v105 + *(v106 + 44));
    sub_8E38(&qword_327298, &qword_327268, &qword_28C4B0, &protocol conformance descriptor for VStack<A>);
    v107 = v138;
    sub_262C60();
    sub_8E80(v105, &qword_327268, &qword_28C4B0);
    v108 = v143;
    sub_262350();
    sub_2328E4();
    v109 = v140;
    sub_262C70();
    (*(v146 + 8))(v108, v147);
    sub_8E80(v107, &qword_327270, &qword_28C4B8);
    v110 = v132;
    sub_232A14(v101, v132);
    v111 = v144;
    v112 = *(v144 + 16);
    v113 = v142;
    v114 = v145;
    v112(v142, v109, v145);
    v115 = v148;
    sub_232A14(v110, v148);
    v116 = sub_2EF0(&qword_3272A8, &unk_28C4E0);
    v112((v115 + *(v116 + 48)), v113, v114);
    v117 = *(v111 + 8);
    v117(v109, v114);
    sub_232A84(v101);
    v117(v113, v114);
    return sub_232A84(v110);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_232344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43[1] = a3;
  v5 = sub_2626C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_318458, &unk_26B270);
  __chkstk_darwin(v9 - 8);
  v11 = v43 - v10;
  *&v49[0] = sub_230EB0(a1, a2);
  *(&v49[0] + 1) = v12;
  sub_10A84();
  v13 = sub_2628F0();
  v15 = v14;
  v17 = v16;
  sub_2625E0();
  if (_s7BooksUI16FallBackFontSpecV03usecdE0SbyFZ_0())
  {
    v18 = sub_2625C0();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  }

  else
  {
    v19 = enum case for Font.Design.serif (_:);
    v20 = sub_2625C0();
    v21 = *(v20 - 8);
    v43[0] = v5;
    v22 = v21;
    (*(v21 + 104))(v11, v19, v20);
    (*(v22 + 56))(v11, 0, 1, v20);
    v5 = v43[0];
  }

  sub_262670();
  sub_8E80(v11, &qword_318458, &unk_26B270);
  (*(v6 + 104))(v8, enum case for Font.Leading.tight(_:), v5);
  sub_2626E0();

  (*(v6 + 8))(v8, v5);
  v23 = sub_262840();
  v25 = v24;
  v27 = v26;

  sub_39DBC(v13, v15, v17 & 1);

  LODWORD(v49[0]) = sub_262120();
  v28 = sub_2627F0();
  v30 = v29;
  v32 = v31;
  sub_39DBC(v23, v25, v27 & 1);

  v33 = sub_262870();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  sub_39DBC(v28, v30, v32 & 1);

  KeyPath = swift_getKeyPath();
  v41 = swift_getKeyPath();
  v52 = v37 & 1;
  v51 = 0;
  *&v44 = v33;
  *(&v44 + 1) = v35;
  LOBYTE(v45) = v37 & 1;
  *(&v45 + 1) = v39;
  *&v46 = KeyPath;
  *(&v46 + 1) = 2;
  LOBYTE(v47) = 0;
  *(&v47 + 1) = v41;
  v48 = 0x3FE6666666666666;
  sub_2EF0(&qword_3272B0, &unk_28C550);
  sub_232AFC();
  sub_262C60();
  v49[2] = v46;
  v49[3] = v47;
  v50 = v48;
  v49[0] = v44;
  v49[1] = v45;
  return sub_8E80(v49, &qword_3272B0, &unk_28C550);
}

uint64_t sub_232804(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_327250, &qword_28C498);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_232874(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_3174E0, &qword_26B310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2328E4()
{
  result = qword_3272A0;
  if (!qword_3272A0)
  {
    sub_2F9C(&qword_327270, &qword_28C4B8);
    sub_8E38(&qword_327298, &qword_327268, &qword_28C4B0, &protocol conformance descriptor for VStack<A>);
    sub_2329CC(&qword_3173C8, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3272A0);
  }

  return result;
}

uint64_t sub_2329CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_232A14(uint64_t a1, uint64_t a2)
{
  v4 = sub_2EF0(&qword_327288, &qword_28C4D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232A84(uint64_t a1)
{
  v2 = sub_2EF0(&qword_327288, &qword_28C4D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_232AFC()
{
  result = qword_3272B8;
  if (!qword_3272B8)
  {
    sub_2F9C(&qword_3272B0, &unk_28C550);
    sub_58070();
    sub_8E38(&qword_318ED0, &qword_318ED8, &unk_276230, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3272B8);
  }

  return result;
}

unint64_t sub_232BC8()
{
  result = qword_3272C0;
  if (!qword_3272C0)
  {
    sub_2F9C(&qword_327260, &qword_28C4A8);
    sub_8E38(&qword_3272C8, &qword_327250, &qword_28C498, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3272C0);
  }

  return result;
}

void *sub_232CB4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v95 = a3;
  v92 = a4;
  v6 = sub_263840();
  __chkstk_darwin(v6 - 8);
  v91 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_263B70();
  v101 = *(v110 - 8);
  __chkstk_darwin(v110);
  v96 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2EF0(&qword_327390, &qword_28C700);
  __chkstk_darwin(v9 - 8);
  v93 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v85 - v12;
  v97 = sub_2EF0(&qword_327398, &qword_28C708);
  v100 = *(v97 - 8);
  __chkstk_darwin(v97);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v94 = &v85 - v17;
  __chkstk_darwin(v18);
  v20 = &v85 - v19;
  v103 = sub_263980();
  v99 = *(v103 - 8);
  __chkstk_darwin(v103);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v85 - v24;
  __chkstk_darwin(v26);
  *&v104 = &v85 - v27;
  __chkstk_darwin(v28);
  v30 = &v85 - v29;
  v31 = a1;
  v32 = sub_A8C6C(a1, a1, &protocol descriptor for IntentModel, &protocol descriptor for Decodable);
  v102 = a2;
  if (v32)
  {
    v90 = v33;
    v91 = v34;
    v93 = v32;
    sub_2E18(a2, a2[3]);
    sub_265100();
    sub_263970();
    sub_263930();
    v35 = v110;
    sub_263990();
    v36 = *(v100 + 8);
    v37 = v97;
    v36(v20, v97);
    v38 = (*(v101 + 48))(v13, 1, v35);
    v39 = sub_8E80(v13, &qword_327390, &qword_28C700);
    v40 = v103;
    v41 = v99;
    if (v38 == 1)
    {
      v95(v39);
      v42 = v96;
      sub_263B80();
      v43 = v94;
      sub_263930();
      v44 = v110;
      sub_263910();
      v45 = v43;
      v40 = v103;
      v36(v45, v37);
      (*(v101 + 8))(v42, v44);
      (*(v41 + 8))(v30, v40);
      (*(v41 + 32))(v30, v104, v40);
    }

    sub_2E18(v102, v102[3]);
    (*(v41 + 16))(v104, v30, v40);
    sub_2642B0();
    sub_265110();

    *&v108 = v93;
    *(&v108 + 1) = v90;
    v109 = v91;
    sub_10934(&v106);
    v46 = v98;
    sub_2647C0();
    if (v46)
    {
      (*(v41 + 8))(v30, v40);
      return sub_A8CF4(&v106);
    }

    v104 = v108;
    v70 = v108;
    v71 = sub_2E18(&v106, v108);
    v72 = v92;
    *(v92 + 24) = v104;
    v73 = sub_10934(v72);
    (*(*(v70 - 8) + 16))(v73, v71, v70);
    (*(v41 + 8))(v30, v40);
    return sub_3080(&v106);
  }

  v48 = v93;
  v89 = v22;
  v90 = v25;
  v49 = v100;
  v50 = v110;
  v51 = v31;
  v52 = sub_A8C6C(v31, v31, &protocol descriptor for ExpressibleByJSON, &protocol descriptor for IntentModel);
  if (v52)
  {
    v86 = v54;
    v87 = v53;
    v88 = v52;
    sub_2E18(v102, v102[3]);
    sub_265100();
    sub_263970();
    sub_263930();
    sub_263990();
    v55 = v50;
    v56 = *(v49 + 8);
    v57 = v97;
    v56(v15, v97);
    v58 = v101;
    v59 = (*(v101 + 48))(v48, 1, v55);
    v60 = sub_8E80(v48, &qword_327390, &qword_28C700);
    v61 = v103;
    if (v59 == 1)
    {
      v95(v60);
      v62 = v96;
      sub_263B80();
      v63 = v94;
      sub_263930();
      v64 = v104;
      v65 = v55;
      v66 = v90;
      sub_263910();
      v56(v63, v57);
      v67 = v62;
      v61 = v103;
      (*(v58 + 8))(v67, v65);
      v68 = v99;
      (*(v99 + 8))(v66, v61);
      (*(v68 + 32))(v66, v64, v61);
    }

    sub_30CC(v102, v105);
    v69 = v98;
    sub_263810();
    if (v69)
    {
      return (*(v99 + 8))(v90, v61);
    }

    v77 = v99;
    v78 = v90;
    (*(v99 + 16))(v89, v90, v61);
    v79 = v61;
    *&v108 = v88;
    *(&v108 + 1) = v87;
    v109 = v86;
    sub_10934(&v106);
    sub_263DE0();
    v80 = v108;
    v81 = v109;
    v82 = sub_2E18(&v106, v108);
    v83 = v92;
    *(v92 + 24) = v80;
    v83[4] = v81;
    v84 = sub_10934(v83);
    (*(*(v80 - 8) + 16))(v84, v82, v80);
    (*(v77 + 8))(v78, v79);
    return sub_3080(&v106);
  }

  v74 = sub_264C10();
  swift_allocError();
  v76 = v75;
  sub_2EF0(&qword_315CD0, &qword_266E00);
  *v76 = v51;
  sub_2E18(v102, v102[3]);
  sub_2650E0();
  v106 = 0;
  v107 = 0xE000000000000000;
  sub_264BC0(21);

  v106 = 60;
  v107 = 0xE100000000000000;
  v111._countAndFlagsBits = sub_265260();
  sub_264530(v111);

  v112._object = 0x80000000002917A0;
  v112._countAndFlagsBits = 0xD000000000000012;
  sub_264530(v112);
  sub_264BF0();
  (*(*(v74 - 8) + 104))(v76, enum case for DecodingError.typeMismatch(_:), v74);
  return swift_willThrow();
}

uint64_t CodeAnyIntentModel.description.getter(uint64_t a1)
{
  swift_getExtendedExistentialTypeMetadata();
  sub_264EE0();
  return 0;
}

uint64_t CodeAnyIntentModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = a1[3];
  v8 = a1[4];
  sub_2E18(a1, v7);
  v9 = Decoder.intentKindTable.getter(v7, v8);
  Decoder.decodeIntentModel<A, B>(using:returning:)(v9, a2, v10, v13);
  if (!v3)
  {
    sub_F7CC(v13, v14);
    v11 = v14[1];
    *a3 = v14[0];
    *(a3 + 16) = v11;
    *(a3 + 32) = v15;
  }

  return sub_3080(a1);
}

ValueMetadata *Decoder.intentKindTable.getter(uint64_t a1, uint64_t a2)
{
  sub_265100();
  if (qword_315AF8 != -1)
  {
    swift_once();
  }

  v2 = sub_2EF0(&qword_3272F0, &qword_28C5A8);
  sub_B080(v2, qword_3272D8);
  sub_2EF0(&qword_3272F8, &unk_28C5B0);
  sub_2642C0();

  v3 = v5;
  if (!v5)
  {
    v3 = &type metadata for EmptyIntentKindTable;
    sub_233E44();
  }

  return v3;
}

uint64_t Decoder.decodeIntentModel<A, B>(using:returning:)@<X0>(uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v16 = a3;
  v17 = a5;
  v22 = sub_2EF0(&qword_31B698, &qword_270DB8);
  v9 = *(v22 - 8);
  __chkstk_darwin(v22);
  v11 = &v13 - v10;
  sub_2650F0();
  v18 = a2;
  if (v6)
  {
    sub_265100();
    sub_263950();
    sub_2EF0(&qword_31B6A0, &qword_270DC0);
    sub_2642C0();

    (*(v9 + 8))(v11, v22);
    sub_A8840(v21, &v19);
    if (v20)
    {
      sub_2E18(&v19, v20);
      swift_getMetatypeMetadata();
      sub_264000();
      sub_3080(&v19);
    }

    else
    {
      sub_8E80(&v19, &qword_31B6A8, &qword_270DC8);
    }

    swift_willThrow();
    return sub_8E80(v21, &qword_31B6A8, &qword_270DC8);
  }

  else
  {
    v14 = a6;
    v15 = v21[4];
    sub_2E18(v21, v21[3]);
    type metadata accessor for _IntentKindTable_BooksReturningUnknown(255, a2, v16, v17);
    swift_getWitnessTable();
    sub_2637D0();
    swift_getWitnessTable();
    sub_264F30();
    sub_F7CC(&v19, v14);
    return sub_3080(v21);
  }
}

unint64_t sub_233CAC()
{
  result = sub_EED4(_swiftEmptyArrayStorage);
  qword_3272D0 = result;
  return result;
}

uint64_t sub_233CD4()
{
  if (qword_315AF0 != -1)
  {
    swift_once();
  }
}

void sub_233D30()
{
  if (qword_315AF0 != -1)
  {
    swift_once();
  }

  v1 = qword_3272D0;

  sub_234008(v1);
}

uint64_t sub_233DB8()
{
  v0 = sub_2EF0(&qword_3272F0, &qword_28C5A8);
  sub_B600(v0, qword_3272D8);
  sub_B080(v0, qword_3272D8);
  sub_2EF0(&qword_3272F8, &unk_28C5B0);
  return sub_263960();
}

unint64_t sub_233E44()
{
  result = qword_327300[0];
  if (!qword_327300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_327300);
  }

  return result;
}

uint64_t static JSONContext.Property<A>.booksIntentKindTable.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_315AF8 != -1)
  {
    swift_once();
  }

  v2 = sub_2EF0(&qword_3272F0, &qword_28C5A8);
  v3 = sub_B080(v2, qword_3272D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_233F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_233FB4()
{
  result = qword_327388;
  if (!qword_327388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_327388);
  }

  return result;
}

void sub_234008(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2EF0(&qword_31B6B8, &qword_27C7C0);
    v2 = sub_264D10();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
        v14 = *v12;
        v13 = v12[1];

        sub_2EF0(&qword_3273A0, &qword_28C710);
        sub_2EF0(&qword_31B6C8, &qword_27C7D0);
        swift_dynamicCast();
        v15 = sub_D410(v14, v13);
        if (v16)
        {
          v8 = (v2[6] + 16 * v15);
          *v8 = v14;
          v8[1] = v13;
          v9 = v15;

          *(v2[7] + 8 * v9) = v21;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v15;
          v17 = (v2[6] + 16 * v15);
          *v17 = v14;
          v17[1] = v13;
          *(v2[7] + 8 * v15) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_234230()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_264900();
    v6 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_234378@<X0>(void *a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2EF0(&qword_316C10, &unk_26AF10);
  __chkstk_darwin(v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SeriesRoomHeaderView(0);
  sub_8198(v1 + *(v10 + 20), v9, &qword_316C10, &unk_26AF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_238CE0(v9, a1, type metadata accessor for SizeConstants);
  }

  sub_264900();
  v12 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_234564@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261C90();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SeriesRoomHeaderView(0);
  result = sub_8198(v1 + *(v7 + 24), v11, &qword_318168, &unk_26AF30);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_264900();
    v10 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_2346E0()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SeriesRoomHeaderView(0) + 28);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_264900();
    v7 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_3074(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

double sub_234838()
{
  v1 = sub_261C90();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SeriesRoomHeaderView(0) + 32));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_264900();
  v8 = sub_2624B0();
  sub_260D10();

  sub_261C80();
  swift_getAtKeyPath();
  sub_3074(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t SeriesRoomHeaderView.init(title:author:authorAction:authorImpressionMetrics:narrator:footer:coverViewModels:quickActionButtonViewModel:seriesID:systemColorScheme:contextActionMenuView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  v21 = type metadata accessor for SeriesRoomHeaderView(0);
  v22 = v21[5];
  *(a9 + v22) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v23 = a9 + v21[6];
  *v23 = swift_getKeyPath();
  *(v23 + 40) = 0;
  v24 = a9 + v21[7];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = a9 + v21[8];
  *v25 = swift_getKeyPath();
  *(v25 + 8) = 0;
  v26 = (a9 + v21[9]);
  sub_2631D0();
  *v26 = v36;
  v26[1] = v37;
  sub_22148(a1, a9 + v21[10], &qword_319B18, &qword_26DA40);
  sub_22148(a2, a9 + v21[11], &qword_319B18, &qword_26DA40);
  v27 = a9 + v21[12];
  v28 = *(a3 + 16);
  *v27 = *a3;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a3 + 32);
  sub_22148(a4, a9 + v21[13], &qword_315D48, &qword_266E40);
  sub_22148(a5, a9 + v21[14], &qword_31A718, &qword_26F840);
  sub_22148(a6, a9 + v21[15], &qword_31A720, &qword_26F848);
  *(a9 + v21[16]) = a7;
  sub_238CE0(a8, a9 + v21[17], type metadata accessor for SeriesQuickActionButtonViewModel);
  v29 = (a9 + v21[18]);
  *v29 = a10;
  v29[1] = a11;
  v30 = v21[19];
  v31 = sub_261180();
  result = (*(*(v31 - 8) + 32))(a9 + v30, a12, v31);
  v33 = (a9 + v21[20]);
  *v33 = a13;
  v33[1] = a14;
  return result;
}

uint64_t SeriesRoomHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  if (qword_315868 != -1)
  {
    swift_once();
  }

  v4 = sub_260D50();
  sub_B080(v4, qword_315FE8);
  v5 = sub_260D30();
  v6 = sub_2648E0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "SwiftUI::SeriesRoomHeaderView::body evaluated", v7, 2u);
  }

  *a1 = sub_261E50();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v8 = sub_2EF0(&qword_3273A8, &unk_28C820);
  sub_234DE0(v2, a1 + *(v8 + 44));
  type metadata accessor for SeriesRoomHeaderView(0);
  sub_2EF0(&qword_317A40, &qword_272180);
  sub_263200();
  result = sub_2EF0(&qword_3273B0, &qword_28C830);
  v10 = (a1 + *(result + 36));
  *v10 = v11;
  v10[1] = v12;
  v10[2] = v13;
  return result;
}

uint64_t sub_234DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v73 = sub_2EF0(&qword_3274B0, &qword_28CA10);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v71 = &v66 - v3;
  v4 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v4 - 8);
  v68 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v6 - 8);
  v67 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_2EF0(&qword_3274B8, &qword_28CA18);
  __chkstk_darwin(v8 - 8);
  v10 = &v66 - v9;
  v70 = sub_2EF0(&qword_3274C0, &qword_28CA20);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v66 = &v66 - v14;
  v15 = sub_2EF0(&qword_3274C8, &qword_28CA28);
  __chkstk_darwin(v15 - 8);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v66 - v19;
  v21 = sub_2EF0(&qword_3274D0, &qword_28CA30);
  __chkstk_darwin(v21 - 8);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v66 - v25;
  v27 = *(a1 + *(type metadata accessor for SeriesRoomHeaderView(0) + 64));
  v28 = sub_234838();
  v29 = sub_234230();
  v30 = *(v27 + 16);
  if (v30 <= 5)
  {

    if (v30)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_C8914(v27, v27 + 32, 0, 0xBuLL);
    v27 = v31;
    if (*(v31 + 16))
    {
LABEL_3:
      memmove(__dst, (v27 + 32), 0x80uLL);
      v32 = sub_2F8B8(__dst);
      v33 = sub_2F950(__dst);
      if (v32)
      {
        v34 = 1.0;
        if (v32 != 1)
        {
          v34 = 0.641025641;
        }
      }

      else
      {
        v34 = *(v33 + 16);
      }

      v39 = 0.27;
      if (v29)
      {
        v39 = 0.51;
      }

      sub_C8DDC(v27, v28, v28 * v39, v34);
      v41 = v40;
      v43 = v42;

      *v26 = sub_261D30();
      *(v26 + 1) = 0;
      v26[16] = 0;
      v44 = sub_2EF0(&qword_3274D8, &qword_28CA38);
      sub_235548(v43, a1, &v26[*(v44 + 44)], v41, v34);

      if (sub_234230())
      {
        v45 = sub_234230();
        v46 = v70;
        if (v45)
        {
          v47 = sub_261E50();
        }

        else
        {
          v47 = sub_261E60();
        }

        *v10 = v47;
        *(v10 + 1) = 0x403C000000000000;
        v10[16] = 0;
        v49 = sub_2EF0(&qword_3274E8, &qword_28CA48);
        sub_23725C(a1, &v10[*(v49 + 44)]);
        v50 = sub_262520();
        v51 = v67;
        sub_234378(v67);
        v52 = v68;
        sub_238CE0(v51, v68, type metadata accessor for SizeConstants.Environment);
        sub_E5250(v52);
        sub_2610C0();
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;
        sub_22148(v10, v12, &qword_3274B8, &qword_28CA18);
        v61 = &v12[*(v46 + 36)];
        *v61 = v50;
        *(v61 + 1) = v54;
        *(v61 + 2) = v56;
        *(v61 + 3) = v58;
        *(v61 + 4) = v60;
        v61[40] = 0;
        v62 = v66;
        sub_22148(v12, v66, &qword_3274C0, &qword_28CA20);
        sub_22148(v62, v20, &qword_3274C0, &qword_28CA20);
        v48 = 0;
      }

      else
      {
        v48 = 1;
        v46 = v70;
      }

      (*(v69 + 56))(v20, v48, 1, v46);
      sub_8198(v26, v23, &qword_3274D0, &qword_28CA30);
      sub_8198(v20, v17, &qword_3274C8, &qword_28CA28);
      v63 = v71;
      sub_8198(v23, v71, &qword_3274D0, &qword_28CA30);
      v64 = sub_2EF0(&qword_3274E0, &qword_28CA40);
      sub_8198(v17, v63 + *(v64 + 48), &qword_3274C8, &qword_28CA28);
      sub_8E80(v20, &qword_3274C8, &qword_28CA28);
      sub_8E80(v26, &qword_3274D0, &qword_28CA30);
      sub_8E80(v17, &qword_3274C8, &qword_28CA28);
      sub_8E80(v23, &qword_3274D0, &qword_28CA30);
      v65 = v74;
      sub_22148(v63, v74, &qword_3274B0, &qword_28CA10);
      return (*(v72 + 56))(v65, 0, 1, v73);
    }
  }

  v35 = *(v72 + 56);
  v36 = v74;
  v37 = v73;

  return v35(v36, 1, 1, v37);
}

uint64_t sub_235548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v51 = a3;
  v9 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v12 - 8);
  v14 = (&v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_2EF0(&qword_327508, &qword_28CBE0);
  __chkstk_darwin(v15 - 8);
  v17 = &v51 - v16;
  v18 = sub_2EF0(&qword_327510, &qword_28CBE8);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v51 - v20;
  v22 = sub_2EF0(&qword_327518, &qword_28CBF0);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v25 = &v51 - v24;
  *v17 = sub_261E60();
  *(v17 + 1) = 0x403C000000000000;
  v17[16] = 0;
  v26 = sub_2EF0(&qword_327520, &qword_28CBF8);
  sub_235944(a1, a2, &v17[*(v26 + 44)], a4, a5);
  _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  sub_261830();
  sub_22148(v17, v21, &qword_327508, &qword_28CBE0);
  v27 = &v21[*(v19 + 44)];
  v28 = v57;
  *(v27 + 4) = v56;
  *(v27 + 5) = v28;
  *(v27 + 6) = v58;
  v29 = v53;
  *v27 = v52;
  *(v27 + 1) = v29;
  v30 = v55;
  *(v27 + 2) = v54;
  *(v27 + 3) = v30;
  LOBYTE(a1) = sub_262510();
  sub_234230();
  sub_234378(v14);
  sub_238CE0(v14, v11, type metadata accessor for SizeConstants.Environment);
  sub_E5250(v11);
  sub_2610C0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_22148(v21, v25, &qword_327510, &qword_28CBE8);
  v39 = &v25[*(v23 + 44)];
  *v39 = a1;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  LOBYTE(v23) = sub_262520();
  sub_234230();
  sub_234378(v14);
  sub_238CE0(v14, v11, type metadata accessor for SizeConstants.Environment);
  sub_E5250(v11);
  sub_2610C0();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = v51;
  sub_22148(v25, v51, &qword_327518, &qword_28CBF0);
  result = sub_2EF0(&qword_327528, &qword_28CC00);
  v50 = v48 + *(result + 36);
  *v50 = v23;
  *(v50 + 8) = v41;
  *(v50 + 16) = v43;
  *(v50 + 24) = v45;
  *(v50 + 32) = v47;
  *(v50 + 40) = 0;
  return result;
}

uint64_t sub_235944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v74 = a3;
  v9 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v12 - 8);
  v72 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = type metadata accessor for SeriesQuickActionButtonView(0);
  __chkstk_darwin(v73);
  v15 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2EF0(&qword_3274F0, &qword_28CA50);
  __chkstk_darwin(v68);
  v71 = &v64 - v16;
  v17 = sub_2EF0(&qword_327530, &qword_28CC08);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v70 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v69 = &v64 - v21;
  v22 = sub_2EF0(&qword_327538, &qword_28CC10);
  __chkstk_darwin(v22 - 8);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v64 - v26;
  v28 = sub_2EF0(&qword_327540, &qword_28CC18);
  __chkstk_darwin(v28 - 8);
  v30 = &v64 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v64 - v32;
  *v33 = sub_261D10();
  *(v33 + 1) = 0;
  v33[16] = 0;
  v34 = sub_2EF0(&qword_327548, &qword_28CC20);
  sub_236044(a1, a2, &v33[*(v34 + 44)], a4, a5);
  if ((sub_234230() & 1) != 0 || (sub_2346E0() & 1) == 0)
  {
    v40 = 1;
  }

  else
  {
    v66 = v17;
    v67 = v11;
    v35 = type metadata accessor for SeriesRoomHeaderView(0);
    sub_238C6C(a2 + *(v35 + 68), &v15[*(v73 + 32)]);
    v36 = (a2 + *(v35 + 80));
    v37 = v36[1];
    v65 = *v36;
    *v15 = swift_getKeyPath();
    v15[40] = 0;
    *(v15 + 6) = swift_getKeyPath();
    *(v15 + 44) = 256;
    type metadata accessor for ProfileRestrictions(0);
    sub_2391B0(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);

    *(v15 + 12) = sub_261900();
    *(v15 + 13) = v38;
    v39 = &v15[*(v73 + 36)];
    *v39 = v65;
    *(v39 + 1) = v37;
    if (sub_234230())
    {
      _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
    }

    else
    {
      sub_263580();
    }

    v17 = v66;
    sub_261830();
    v41 = v71;
    sub_238CE0(v15, v71, type metadata accessor for SeriesQuickActionButtonView);
    v42 = (v41 + *(v68 + 36));
    v43 = v80;
    v42[4] = v79;
    v42[5] = v43;
    v42[6] = v81;
    v44 = v76;
    *v42 = v75;
    v42[1] = v44;
    v45 = v78;
    v42[2] = v77;
    v42[3] = v45;
    v46 = sub_262520();
    v47 = v72;
    sub_234378(v72);
    v48 = v67;
    sub_238CE0(v47, v67, type metadata accessor for SizeConstants.Environment);
    sub_E5250(v48);
    sub_2610C0();
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = v70;
    sub_22148(v41, v70, &qword_3274F0, &qword_28CA50);
    v58 = v57 + *(v17 + 36);
    *v58 = v46;
    *(v58 + 8) = v50;
    *(v58 + 16) = v52;
    *(v58 + 24) = v54;
    *(v58 + 32) = v56;
    *(v58 + 40) = 0;
    v59 = v57;
    v60 = v69;
    sub_22148(v59, v69, &qword_327530, &qword_28CC08);
    sub_22148(v60, v27, &qword_327530, &qword_28CC08);
    v40 = 0;
  }

  (*(v18 + 56))(v27, v40, 1, v17);
  sub_8198(v33, v30, &qword_327540, &qword_28CC18);
  sub_8198(v27, v24, &qword_327538, &qword_28CC10);
  v61 = v74;
  sub_8198(v30, v74, &qword_327540, &qword_28CC18);
  v62 = sub_2EF0(&qword_327550, &qword_28CC28);
  sub_8198(v24, v61 + *(v62 + 48), &qword_327538, &qword_28CC10);
  sub_8E80(v27, &qword_327538, &qword_28CC10);
  sub_8E80(v33, &qword_327540, &qword_28CC18);
  sub_8E80(v24, &qword_327538, &qword_28CC10);
  return sub_8E80(v30, &qword_327540, &qword_28CC18);
}

uint64_t sub_236044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v98 = a3;
  v9 = sub_2EF0(&qword_327558, &qword_28CC30);
  v96 = *(v9 - 8);
  v97 = v9;
  __chkstk_darwin(v9);
  v91 = &v79 - v10;
  v11 = sub_2EF0(&qword_3274B8, &qword_28CA18);
  __chkstk_darwin(v11 - 8);
  v83 = (&v79 - v12);
  v82 = sub_2EF0(&qword_327560, &qword_28CC38);
  __chkstk_darwin(v82);
  v81 = &v79 - v13;
  v90 = sub_2EF0(&qword_327568, &qword_28CC40);
  __chkstk_darwin(v90);
  v80 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v84 = &v79 - v16;
  v85 = sub_2EF0(&qword_327570, &qword_28CC48);
  __chkstk_darwin(v85);
  v87 = &v79 - v17;
  v86 = sub_2EF0(&qword_327578, &qword_28CC50);
  __chkstk_darwin(v86);
  v79 = &v79 - v18;
  v19 = sub_2EF0(&qword_327580, &qword_28CC58);
  __chkstk_darwin(v19 - 8);
  v89 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v88 = &v79 - v22;
  v23 = sub_2EF0(&qword_327588, &qword_28CC60);
  __chkstk_darwin(v23 - 8);
  v95 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v94 = &v79 - v26;
  v27 = type metadata accessor for SizeConstants.Spacing(0);
  __chkstk_darwin(v27 - 8);
  v29 = &v79 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SizeConstants(0);
  __chkstk_darwin(v30 - 8);
  v32 = (&v79 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_2EF0(&qword_327590, &qword_28CC68);
  __chkstk_darwin(v33);
  v35 = &v79 - v34;
  v36 = sub_2EF0(&qword_327598, &qword_28CC70);
  __chkstk_darwin(v36 - 8);
  v93 = &v79 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v92 = &v79 - v39;
  v40 = a1;

  v41 = sub_234230() & 1;
  v42 = sub_262550();
  if ((sub_234230() & 1) == 0)
  {
    sub_234378(v32);
    sub_238CE0(v32, v29, type metadata accessor for SizeConstants.Environment);
    sub_E5250(v29);
  }

  sub_2610C0();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v101 = 0;
  KeyPath = swift_getKeyPath();
  v52 = *(type metadata accessor for SeriesRoomHeaderView(0) + 76);
  v53 = &v35[*(v33 + 36)];
  v54 = *(sub_2EF0(&qword_3173A0, &qword_26D0C0) + 28);
  v55 = sub_261180();
  (*(*(v55 - 8) + 16))(v53 + v54, a2 + v52, v55);
  *v53 = KeyPath;
  *v35 = v40;
  *(v35 + 1) = a4;
  *(v35 + 2) = a5;
  v35[24] = v41;
  *(v35 + 25) = *v100;
  *(v35 + 7) = *&v100[3];
  v35[32] = v42;
  *(v35 + 33) = *v99;
  *(v35 + 9) = *&v99[3];
  *(v35 + 5) = v44;
  *(v35 + 6) = v46;
  *(v35 + 7) = v48;
  *(v35 + 8) = v50;
  v35[72] = 0;
  sub_238DBC();
  v56 = 1;
  v57 = v92;
  sub_262B00();
  sub_8E80(v35, &qword_327590, &qword_28CC68);
  v58 = sub_234230();
  v59 = v94;
  if ((v58 & 1) == 0)
  {
    if (sub_2346E0())
    {
      v60 = v79;
      sub_236B3C(v79);
      *(v60 + *(sub_2EF0(&qword_3275D8, &qword_28CCC8) + 36)) = 256;
      *(v60 + *(v86 + 36)) = 0x3FF0000000000000;
      v61 = &qword_327578;
      v62 = &qword_28CC50;
      sub_8198(v60, v87, &qword_327578, &qword_28CC50);
      swift_storeEnumTagMultiPayload();
      sub_238FB8(&qword_3275C8, &qword_327578, &qword_28CC50, sub_239068);
      sub_238FB8(&qword_327608, &qword_327568, &qword_28CC40, sub_23924C);
      v63 = v88;
    }

    else
    {
      v64 = sub_234230();
      v63 = v88;
      if (v64)
      {
        v65 = sub_261E50();
      }

      else
      {
        v65 = sub_261E60();
      }

      v66 = v83;
      *v83 = v65;
      v66[1] = 0x403C000000000000;
      *(v66 + 16) = 0;
      v67 = sub_2EF0(&qword_3274E8, &qword_28CA48);
      sub_23725C(a2, v66 + *(v67 + 44));
      v68 = v66;
      v69 = v81;
      sub_22148(v68, v81, &qword_3274B8, &qword_28CA18);
      *(v69 + *(v82 + 36)) = 256;
      v70 = v80;
      sub_22148(v69, v80, &qword_327560, &qword_28CC38);
      *(v70 + *(v90 + 36)) = 0x3FF0000000000000;
      v61 = &qword_327568;
      v62 = &qword_28CC40;
      v60 = v84;
      sub_22148(v70, v84, &qword_327568, &qword_28CC40);
      sub_8198(v60, v87, &qword_327568, &qword_28CC40);
      swift_storeEnumTagMultiPayload();
      sub_238FB8(&qword_3275C8, &qword_327578, &qword_28CC50, sub_239068);
      sub_238FB8(&qword_327608, &qword_327568, &qword_28CC40, sub_23924C);
    }

    sub_261F80();
    sub_8E80(v60, v61, v62);
    v71 = v89;
    sub_8198(v63, v89, &qword_327580, &qword_28CC58);
    v72 = v91;
    sub_8198(v71, v91, &qword_327580, &qword_28CC58);
    v73 = v72 + *(sub_2EF0(&qword_327620, &qword_28CCD8) + 48);
    *v73 = 0;
    *(v73 + 8) = 1;
    sub_8E80(v63, &qword_327580, &qword_28CC58);
    sub_8E80(v71, &qword_327580, &qword_28CC58);
    sub_22148(v72, v59, &qword_327558, &qword_28CC30);
    v56 = 0;
  }

  (*(v96 + 56))(v59, v56, 1, v97);
  v74 = v93;
  sub_8198(v57, v93, &qword_327598, &qword_28CC70);
  v75 = v95;
  sub_8198(v59, v95, &qword_327588, &qword_28CC60);
  v76 = v98;
  sub_8198(v74, v98, &qword_327598, &qword_28CC70);
  v77 = sub_2EF0(&qword_327628, &unk_28CCE0);
  sub_8198(v75, v76 + *(v77 + 48), &qword_327588, &qword_28CC60);
  sub_8E80(v59, &qword_327588, &qword_28CC60);
  sub_8E80(v57, &qword_327598, &qword_28CC70);
  sub_8E80(v75, &qword_327588, &qword_28CC60);
  return sub_8E80(v74, &qword_327598, &qword_28CC70);
}

uint64_t sub_236B3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2EF0(&qword_31A720, &qword_26F848);
  __chkstk_darwin(v3 - 8);
  v5 = v50 - v4;
  v53 = v50 - v4;
  v6 = sub_2EF0(&qword_31A718, &qword_26F840);
  __chkstk_darwin(v6 - 8);
  v8 = v50 - v7;
  v9 = sub_2EF0(&qword_315D48, &qword_266E40);
  __chkstk_darwin(v9 - 8);
  v11 = v50 - v10;
  v51 = v50 - v10;
  v12 = sub_2EF0(&qword_319B18, &qword_26DA40);
  __chkstk_darwin(v12);
  v57 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v56 = v50 - v15;
  __chkstk_darwin(v16);
  v18 = v50 - v17;
  v52 = v50 - v17;
  __chkstk_darwin(v19);
  v21 = v50 - v20;
  v58 = v50 - v20;
  v22 = type metadata accessor for SeriesRoomHeaderView(0);
  v55 = v22;
  sub_8198(v1 + v22[10], v21, &qword_319B18, &qword_26DA40);
  sub_8198(v1 + v22[11], v18, &qword_319B18, &qword_26DA40);
  sub_8198(v1 + v22[12], v62, &qword_316BA0, &unk_268B90);
  sub_8198(v1 + v22[13], v11, &qword_315D48, &qword_266E40);
  sub_8198(v1 + v22[14], v8, &qword_31A718, &qword_26F840);
  sub_8198(v1 + v22[15], v5, &qword_31A720, &qword_26F848);
  v23 = (v1 + v22[18]);
  v54 = v1;
  v24 = *v23;
  v25 = v23[1];

  sub_234564(&v60);
  v50[1] = type metadata accessor for HighlightAttributionViewLoader(0);
  swift_allocObject();
  v50[0] = HighlightAttributionViewLoader.init(id:provider:)(v24, v25, &v60);
  v26 = v56;
  swift_storeEnumTagMultiPayload();
  v27 = v57;
  swift_storeEnumTagMultiPayload();
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v28 = type metadata accessor for TopLockupMetadataView(0);
  v29 = v28[5];
  *(a1 + v29) = swift_getKeyPath();
  sub_2EF0(&qword_316C10, &unk_26AF10);
  swift_storeEnumTagMultiPayload();
  v30 = v28[6];
  *(a1 + v30) = swift_getKeyPath();
  sub_2EF0(&qword_316C00, &qword_26A520);
  swift_storeEnumTagMultiPayload();
  v31 = v28[7];
  *(a1 + v31) = swift_getKeyPath();
  sub_2EF0(&qword_316C08, &unk_26AEF0);
  swift_storeEnumTagMultiPayload();
  v32 = v28[8];
  *(a1 + v32) = swift_getKeyPath();
  sub_2EF0(&qword_3179C0, &qword_269D60);
  swift_storeEnumTagMultiPayload();
  v33 = a1 + v28[9];
  *v33 = swift_getKeyPath();
  *(v33 + 8) = 0;
  v34 = v28[10];
  *(a1 + v34) = swift_getKeyPath();
  sub_2EF0(&qword_316C18, &unk_26F830);
  swift_storeEnumTagMultiPayload();
  sub_8198(v26, a1 + v28[12], &qword_319B18, &qword_26DA40);
  sub_8198(v58, a1 + v28[13], &qword_319B18, &qword_26DA40);
  sub_8198(v27, a1 + v28[14], &qword_319B18, &qword_26DA40);
  v35 = v52;
  sub_8198(v52, a1 + v28[15], &qword_319B18, &qword_26DA40);
  sub_8198(v62, a1 + v28[16], &qword_316BA0, &unk_268B90);
  v36 = v51;
  sub_8198(v51, a1 + v28[17], &qword_315D48, &qword_266E40);
  sub_8198(v8, a1 + v28[18], &qword_31A718, &qword_26F840);
  v37 = v53;
  sub_8198(v53, a1 + v28[19], &qword_31A720, &qword_26F848);
  *(a1 + v28[20]) = 1;
  v59 = v50[0];
  sub_2631D0();
  sub_8E80(v57, &qword_319B18, &qword_26DA40);
  sub_8E80(v56, &qword_319B18, &qword_26DA40);
  sub_8E80(v37, &qword_31A720, &qword_26F848);
  sub_8E80(v8, &qword_31A718, &qword_26F840);
  sub_8E80(v36, &qword_315D48, &qword_266E40);
  sub_8E80(v62, &qword_316BA0, &unk_268B90);
  sub_8E80(v35, &qword_319B18, &qword_26DA40);
  sub_8E80(v58, &qword_319B18, &qword_26DA40);
  v38 = v61;
  v39 = (a1 + v28[11]);
  *v39 = v60;
  v39[1] = v38;
  v40 = (v54 + v55[9]);
  v41 = *v40;
  v42 = v40[1];
  v60 = v41;
  v61 = v42;
  sub_2EF0(&qword_317A40, &qword_272180);
  sub_263200();
  v43 = v62[0];
  v44 = v62[1];
  v45 = v62[2];
  KeyPath = swift_getKeyPath();
  v47 = swift_getKeyPath();
  result = sub_2EF0(&qword_3274F8, &qword_28CA58);
  v49 = a1 + *(result + 36);
  *v49 = v43;
  *(v49 + 8) = v44;
  *(v49 + 16) = v45;
  *(v49 + 24) = KeyPath;
  *(v49 + 32) = 0;
  *(v49 + 40) = v47;
  *(v49 + 48) = 0;
  return result;
}

uint64_t sub_23725C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for SeriesQuickActionButtonView(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2EF0(&qword_3274F0, &qword_28CA50);
  __chkstk_darwin(v34);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  __chkstk_darwin(v11);
  v35 = &v34 - v12;
  v13 = sub_2EF0(&qword_3274F8, &qword_28CA58);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v34 - v17;
  sub_236B3C(&v34 - v17);
  v19 = type metadata accessor for SeriesRoomHeaderView(0);
  sub_238C6C(a1 + *(v19 + 68), &v6[*(v4 + 40)]);
  v20 = (a1 + *(v19 + 80));
  v22 = *v20;
  v21 = v20[1];
  *v6 = swift_getKeyPath();
  v6[40] = 0;
  *(v6 + 6) = swift_getKeyPath();
  *(v6 + 44) = 256;
  type metadata accessor for ProfileRestrictions(0);
  sub_2391B0(&qword_326DC0, type metadata accessor for ProfileRestrictions, &protocol conformance descriptor for ProfileRestrictions);

  *(v6 + 12) = sub_261900();
  *(v6 + 13) = v23;
  v24 = &v6[*(v4 + 44)];
  *v24 = v22;
  *(v24 + 1) = v21;
  if (sub_234230())
  {
    _s7BooksUI10PagedFramePAAE9alignment05SwiftB09AlignmentVvg_0();
  }

  else
  {
    sub_263580();
  }

  sub_261830();
  sub_238CE0(v6, v10, type metadata accessor for SeriesQuickActionButtonView);
  v25 = &v10[*(v34 + 36)];
  v26 = v43;
  *(v25 + 4) = v42;
  *(v25 + 5) = v26;
  *(v25 + 6) = v44;
  v27 = v39;
  *v25 = v38;
  *(v25 + 1) = v27;
  v28 = v41;
  *(v25 + 2) = v40;
  *(v25 + 3) = v28;
  v29 = v35;
  sub_22148(v10, v35, &qword_3274F0, &qword_28CA50);
  sub_8198(v18, v15, &qword_3274F8, &qword_28CA58);
  v30 = v36;
  sub_8198(v29, v36, &qword_3274F0, &qword_28CA50);
  v31 = v37;
  sub_8198(v15, v37, &qword_3274F8, &qword_28CA58);
  v32 = sub_2EF0(&qword_327500, &unk_28CAB0);
  sub_8198(v30, v31 + *(v32 + 48), &qword_3274F0, &qword_28CA50);
  sub_8E80(v29, &qword_3274F0, &qword_28CA50);
  sub_8E80(v18, &qword_3274F8, &qword_28CA58);
  sub_8E80(v30, &qword_3274F0, &qword_28CA50);
  return sub_8E80(v15, &qword_3274F8, &qword_28CA58);
}

void sub_2376B0(uint64_t a1@<X1>, double *a2@<X8>)
{
  v54 = a2;
  v3 = sub_261C90();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261620();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261FC0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v58 = -2.31584178e77;
  *&v59 = COERCE_DOUBLE(0x80000000002950A0);
  sub_2621B0();
  sub_261450();
  v13 = *(v10 + 8);
  v13(v12, v9);
  v14 = 1.0;
  if ((v62 & 1) == 0)
  {
    v50 = *&v58;
    v49 = *&v59;
    v48 = v60;
    v47 = v61;
    v56 = 0xD00000000000001ALL;
    v57 = 0x80000000002950A0;
    sub_2621B0();
    sub_261440();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v13(v12, v9);
    v65.origin.x = v16;
    v65.origin.y = v18;
    v65.size.width = v20;
    v46 = v22;
    v65.size.height = v22;
    MinY = CGRectGetMinY(v65);
    sub_261610();
    sub_261430();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    (*(v6 + 8))(v8, v5);
    v66.origin.x = v25;
    v66.origin.y = v27;
    v66.size.width = v29;
    v66.size.height = v31;
    v32 = CGRectGetMinY(v66);
    v33 = v32;
    LOBYTE(v57) = *(a1 + 32);
    v34 = *(a1 + 24);
    v56 = v34;
    v35 = v57;
    if (v57 == 1)
    {
      v36 = MinY - v32;
      v38 = v52;
      v37 = v53;
      v39 = v51;
      if (v34)
      {
        goto LABEL_11;
      }
    }

    else
    {

      sub_264900();
      v40 = sub_2624B0();
      sub_260D10();

      v39 = v51;
      sub_261C80();
      swift_getAtKeyPath();
      sub_8E80(&v56, &qword_3222D0, &unk_28CA00);
      v38 = v52;
      v37 = v53;
      (*(v52 + 8))(v39, v53);
      v36 = MinY - v33;
      if (v63 == 1)
      {
        goto LABEL_13;
      }
    }

    v64 = *(a1 + 48);
    v41 = *(a1 + 40);
    v63 = v41;
    if (v64 != 1)
    {

      sub_264900();
      v42 = sub_2624B0();
      sub_260D10();

      sub_261C80();
      swift_getAtKeyPath();
      sub_8E80(&v63, &qword_3222D0, &unk_28CA00);
      (*(v38 + 8))(v39, v37);
      LOBYTE(v41) = v55;
    }

    if ((v41 & 1) == 0)
    {
      v36 = v36 + -58.0;
    }

    if (v35)
    {
LABEL_11:
      if ((v34 & 1) == 0)
      {
LABEL_12:
        v67.origin.x = v16;
        v67.origin.y = v18;
        v67.size.width = v20;
        v67.size.height = v46;
        MaxY = CGRectGetMaxY(v67);
LABEL_15:
        v45 = MaxY;
        v69.origin.x = v50;
        v69.origin.y = v49;
        v69.size.width = v48;
        v69.size.height = v47;
        v14 = fmax(fmin((v36 - v45) / (CGRectGetHeight(v69) - v45), 1.0), 0.0) * -0.8 + 1.0;
        goto LABEL_16;
      }

LABEL_14:
      v68.origin.x = v16;
      v68.origin.y = v18;
      v68.size.width = v20;
      v68.size.height = v46;
      MaxY = CGRectGetMinY(v68);
      goto LABEL_15;
    }

LABEL_13:

    sub_264900();
    v44 = sub_2624B0();
    sub_260D10();

    sub_261C80();
    swift_getAtKeyPath();
    sub_8E80(&v56, &qword_3222D0, &unk_28CA00);
    (*(v38 + 8))(v39, v37);
    if (v55 != 1)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_16:
  *v54 = v14;
}