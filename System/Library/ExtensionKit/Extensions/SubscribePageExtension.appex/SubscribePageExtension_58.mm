uint64_t sub_10068246C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_1009411B0, type metadata accessor for ParagraphCollectionViewCell, &unk_1007CE388);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006825A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941190, type metadata accessor for PosterLockupCollectionViewCell, &unk_1007D25E0);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006826B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941170, type metadata accessor for PreorderDisclaimerCollectionViewCell, &unk_1007D2538);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006827D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941160, type metadata accessor for PrivacyCategoryCollectionViewCell, &unk_1007D2490);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

double sub_1006828E8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_10014A070(0, 0);
  return sub_10014A07C(0, 0);
}

uint64_t sub_10068293C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941150, type metadata accessor for PrivacyDefinitionCollectionViewCell, &unk_1007D23E8);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100682A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941140, type metadata accessor for PrivacyFooterCollectionViewCell, &unk_1007D2340);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100682B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941130, type metadata accessor for PrivacyHeaderCollectionViewCell, &unk_1007D2298);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

void sub_100682C84()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  sub_1002A01F4(0, 0);
  sub_1002A0200(0, 0);
  v3.value.super.isa = 0;
  v3.is_nil = 0;
  sub_100743384(v3, v1);
  sub_1002A3850();
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension29PrivacyTypeCollectionViewCell_categories] = _swiftEmptyArrayStorage;

  sub_1002A1184();
}

uint64_t sub_100682D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941120, type metadata accessor for PrivacyTypeCollectionViewCell, &unk_1007D21F0);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100682E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941100, type metadata accessor for ProductCapabilityCell, &unk_1007D2148);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100682EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_1009410E0, type metadata accessor for ProductMediaCollectionViewCell, &unk_1007C5588);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100682F78()
{
  v0 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000C518(&qword_100930638, &qword_1007B7370);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  sub_1007468F4();
  sub_100752994();
  sub_1002B09B8();
  sub_100752964();
  if (v7[0] == 2 || (v7[0] & 1) == 0)
  {
    sub_100752954();
    sub_10000C518(&qword_10092A068, &qword_1007AE538);
    sub_10074DCB4();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007A5620;
    sub_10074DCA4();
    sub_10074DC94();
    sub_10074DC84();
  }

  else
  {
    sub_10000C518(&qword_10092A068, &qword_1007AE538);
    sub_10074DCB4();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007A5A00;
    sub_10074DC94();
  }

  *v7 = v5;
  sub_100685DD0(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
  sub_10000C518(&qword_10092A078, &qword_1007AF410);
  sub_100169778();
  sub_1007543A4();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100683364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_1006833E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100683464(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_1006834E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100683584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941038, type metadata accessor for LinkableTextCollectionViewCell, &unk_1007CDA10);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

id sub_100683698()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImage];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension33ProductPageLinkCollectionViewCell_iconImage] = 0;

  return sub_1004E30AC();
}

uint64_t sub_1006836F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_1009410C0, type metadata accessor for ProductPageLinkCollectionViewCell, &unk_1007D1F24);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100683804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100683880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100683904(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100683988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100683A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100683A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941080, type metadata accessor for ProductLockupCollectionViewCell, &unk_1007B4808);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100683BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100941070, type metadata accessor for QuoteCollectionViewCell, &unk_1007D1D4C);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100683CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100683D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100683DBC(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100683E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100683F40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100683FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100684040(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_1006840C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100684148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100684250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100940FC8, type metadata accessor for SmallBreakoutCollectionViewCell, &unk_1007D1B24);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100684364()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, "prepareForReuse");
  return sub_10074FE24();
}

uint64_t sub_1006843BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100940FB8, type metadata accessor for SmallContactCardCollectionViewCell, &unk_1007D1A7C);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006844D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_10068454C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1006845D0(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100684654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1006846D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100940F98, type metadata accessor for SmallLockupCollectionViewCell, &unk_1007ACFE0);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1006847F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100684870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_1006848F4(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100684978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1006849FC()
{
  v0 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000C518(&qword_1009349F8, &qword_1007BC308);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  sub_1007468F4();
  sub_100752994();
  sub_10038931C();
  sub_100752964();
  if (v8 == 1)
  {
    sub_100752954();
    sub_10000C518(&qword_10092A068, &qword_1007AE538);
    sub_10074DCB4();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007A5620;
    sub_10074DCA4();
    sub_10074DC94();
    sub_10074DC84();
  }

  else
  {
    sub_10000C518(&qword_10092A068, &qword_1007AE538);
    sub_10074DCB4();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1007A5A00;
    sub_10074DC94();
  }

  v8 = v5;
  sub_100685DD0(&qword_10092A070, &type metadata accessor for SelectableShelfComponentViewReaction, &protocol conformance descriptor for SelectableShelfComponentViewReaction);
  sub_10000C518(&qword_10092A078, &qword_1007AF410);
  sub_100169778();
  sub_1007543A4();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_100684DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100684E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_100684EE4(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100684F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100685004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100940F58, type metadata accessor for UberCollectionViewCell, &unk_1007BD5A8);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10068509C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_10068519C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10065EBE0(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_100685218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void sub_10068529C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013D580(a1, WitnessTable, a2);
}

uint64_t sub_100685320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return sub_10013D820(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100685428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100940F20, type metadata accessor for VideoCardCollectionViewCell, &unk_1007D1630);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_10068556C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_1006855F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100747524();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100744FD4();
  sub_100685DD0(&unk_100928560, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  if (sub_1007468D4())
  {
    (*(v4 + 104))(v6, enum case for ComponentSeparator.Position.bottom(_:), v3);
    sub_100747534();
    v7 = sub_100747564();
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = sub_100747564();
    v10 = *(*(v9 - 8) + 56);

    return v10(a1, 1, 1, v9);
  }
}

void (*sub_10068586C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1004352D8(v2);
  return sub_100018728;
}

uint64_t sub_1006858E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, WitnessTable);
}

uint64_t sub_1006859F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100685DD0(&qword_100940EF8, type metadata accessor for ArcadeDownloadPackCollectionViewCell, &unk_1007D13E8);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100685A94@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_100020514(v2 + v4, a2);
}

uint64_t sub_100685AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  sub_1000204A4(a1, v4 + v6);
  return swift_endAccess();
}

uint64_t sub_100685BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

uint64_t sub_100685C70(uint64_t a1)
{
  result = sub_100685DD0(&qword_100944440, type metadata accessor for TitledParagraphCollectionViewCell, &unk_1007D1780);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100685CC8(uint64_t a1)
{
  result = sub_100685DD0(&qword_100944448, type metadata accessor for ProductDescriptionCollectionViewCell, &unk_1007D1F9C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100685D20(uint64_t a1)
{
  result = sub_100685DD0(&qword_100944450, type metadata accessor for ParagraphCollectionViewCell, &unk_1007D2628);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100685D78(uint64_t a1)
{
  result = sub_100685DD0(&qword_100944458, type metadata accessor for AnnotationCollectionViewCell, &unk_1007D3774);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100685DD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100685E3C@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  sub_100393210(a1);
  v3 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
  v4 = sub_100746A94();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t type metadata accessor for AppTrailerLockupCollectionViewCell(uint64_t a1)
{
  result = qword_100944488;
  if (!qword_100944488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_100685F7C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_cardView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  v22.receiver = v4;
  v22.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v20 = [v18 contentView];
  [v20 addSubview:*&v18[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_cardView]];

  return v18;
}

void sub_100686210(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v2 - 8);
  v62 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v51 - v5;
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v63 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (!v12)
  {

    return;
  }

  v13 = v12;
  v14 = [v11 superview];
  if (!v14)
  {

LABEL_21:

    return;
  }

  v15 = v14;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_cardView;
  v17 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_cardView];

  v18 = v15;
  v19 = v17;
  sub_100677A8C(v19, v13, v18);

  v20 = [objc_opt_self() standardUserDefaults];
  LOBYTE(v17) = sub_1006FE690(v21);

  if ((v17 & 1) == 0)
  {

    goto LABEL_21;
  }

  v22 = [v11 viewWithTag:58236912];
  [v22 removeFromSuperview];

  v23 = *&v11[v16];
  v24 = qword_100943FF8;
  swift_beginAccess();
  v61 = v23;
  v25 = *&v23[v24];
  v55 = v11;
  v54 = v13;
  v53 = v18;
  if (v25 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {
    v27 = qword_100943FE0;
    v28 = v61;
    v52 = v61;

    v67 = v27;
    swift_beginAccess();
    if (!i)
    {
      break;
    }

    v29 = 0;
    v65 = v25 & 0xFFFFFFFFFFFFFF8;
    v66 = v25 & 0xC000000000000001;
    v64 = (v8 + 48);
    v60 = (v8 + 32);
    v59 = (v8 + 16);
    v58 = (v8 + 56);
    v57 = (v8 + 8);
    v30 = 32;
    v56 = v6;
    while (1)
    {
      if (v66)
      {
        v8 = sub_100754574();
      }

      else
      {
        if (v29 >= *(v65 + 16))
        {
          goto LABEL_25;
        }

        v8 = *(v25 + 8 * v29 + 32);
      }

      v31 = *&v28[v67];
      if (v29 >= *(v31 + 16))
      {
        break;
      }

      v32 = *(v31 + v30);
      sub_10074EE94();
      if ((*v64)(v6, 1, v7) == 1)
      {

        sub_10000C8CC(v6, &unk_100925380, qword_1007A8E40);
      }

      else
      {
        v33 = v63;
        (*v60)(v63, v6, v7);
        v34 = v32;
        [v34 bounds];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;
        v43 = [objc_opt_self() blueColor];
        v44 = objc_allocWithZone(type metadata accessor for ImpressionMetricsDebugOverlay());
        v45 = sub_10020836C(v43, v36, v38, v40, v42);
        v46 = i;
        v47 = v25;
        v48 = v62;
        (*v59)(v62, v33, v7);
        (*v58)(v48, 0, 1, v7);
        sub_100207F4C(v48);
        sub_10000C8CC(v48, &unk_100925380, qword_1007A8E40);
        v49 = [v34 viewWithTag:58236912];
        [v49 removeFromSuperview];

        v25 = v47;
        i = v46;
        v6 = v56;
        [v34 addSubview:v45];

        v50 = v33;
        v28 = v61;
        (*v57)(v50, v7);
      }

      ++v29;

      v30 += 16;
      if (i == v29)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_22:
}

uint64_t type metadata accessor for ArcadeDownloadPackCollectionViewCell(uint64_t a1)
{
  result = qword_1009444C0;
  if (!qword_1009444C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10068691C(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1006869CC()
{
  swift_beginAccess();

  return result;
}

double sub_100686A14(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_100686ACC()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1, v1[1]);
  return v2;
}

double sub_100686B28(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6, v7);
}

void (*sub_100686BE8())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_100686D38;
}

uint64_t sub_100686C88()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100686CC0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100686CF8()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100686D40()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_itemLayoutContext;
  v2 = sub_1007469A4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_cardView;
  type metadata accessor for ArcadeDownloadPackGamesCardView(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension36ArcadeDownloadPackCollectionViewCell_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_100686E70()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v3 - 8);
  v33 = &v30 - v4;
  v5 = sub_10074C3E4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v31 = *(v9 - 8);
  v32 = v9;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = sub_1007479B4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = &v30 - v18;
  v34.receiver = v1;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, "layoutSubviews", v17);
  v20 = [v1 traitCollection];
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v21 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v21 = qword_10093FF58;
  }

  v22 = sub_10000D0FC(v12, v21);
  (*(v13 + 16))(v15, v22, v12);

  (*(v13 + 32))(v19, v15, v12);
  (*(v6 + 104))(v8, enum case for OfferButtonSubtitlePosition.below(_:), v5);
  (*(v6 + 56))(v33, 1, 1, v5);
  sub_1001F750C();
  sub_10074A9C4();
  sub_100747984();
  v24 = v23;
  v26 = v25;
  (*(v31 + 8))(v11, v32);
  (*(v13 + 8))(v19, v12);
  v27 = [v1 layer];
  v28 = v27;
  if (v24 >= v26)
  {
    v29 = v26;
  }

  else
  {
    v29 = v24;
  }

  [v27 setCornerRadius:v29 * 0.5];
}

char *sub_1006873C0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder;
  sub_1007433C4();
  v12 = sub_1007431D4();
  sub_100746E74();

  *&v5[v11] = v12;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder;
  sub_100743794();
  v14 = sub_100743754();
  v16 = sub_10071B540(v14, v15, UIFontTextStyleFootnote);

  *&v5[v13] = v16;
  v17 = OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder;
  v18 = sub_100743784();
  v20 = sub_10071B540(v18, v19, UIFontTextStyleBody);

  *&v5[v17] = v20;
  v21 = OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder;
  type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v26 = v22;
  [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder]];

  return v26;
}

uint64_t sub_1006875F8@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100920850 != -1)
  {
    swift_once();
  }

  sub_100055CF8(&xmmword_10097F3D0, v101);
  v71 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder);
  [v71 sizeThatFits:{0.0, 0.0}];
  v101[34] = v3;
  v101[35] = v4;
  v102 = 0;
  sub_100055CF8(v101, v100);
  v5 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder);
  v99 = &protocol witness table for UIView;
  v98 = sub_1007433C4();
  v97[0] = v5;
  v96 = 0;
  memset(v95, 0, sizeof(v95));
  v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder);
  v94 = &protocol witness table for UILabel;
  v93 = sub_100016C60(0, &qword_1009236D0, UILabel_ptr);
  v92[0] = v6;
  v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder);
  v91[4] = &protocol witness table for UILabel;
  v91[3] = v93;
  v91[0] = v7;
  v8 = objc_allocWithZone(UILabel);
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v90 = &protocol witness table for UILabel;
  v89 = v93;
  v88[0] = [v8 init];
  v87 = 0;
  memset(v86, 0, sizeof(v86));
  v85 = 0;
  memset(v84, 0, sizeof(v84));
  v83 = 0;
  memset(v82, 0, sizeof(v82));
  v81 = 0;
  memset(v80, 0, sizeof(v80));
  v72 = sub_100016C60(0, &qword_100922300, UIView_ptr);
  a1[3] = &type metadata for TodayCardLockupLayout;
  a1[4] = sub_1002F45FC();
  v12 = swift_allocObject();
  *a1 = v12;
  sub_100055CF8(v100, v79);
  BYTE8(v79[47]) = 0;
  v13 = v98;
  v14 = v99;
  sub_10000C888(v97, v98);
  v15 = sub_100754284();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v70 - v17;
  v71 = v71;
  sub_100750374();
  v19 = *(v13 - 8);
  if ((*(v19 + 48))(v18, 1, v13) == 1)
  {
    (*(v16 + 8))(v18, v15);
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v13;
    v78 = v14;
    v20 = sub_10000D134(&v76);
    (*(v19 + 32))(v20, v18, v13);
  }

  *(&v79[22] + 8) = v76;
  *(&v79[23] + 8) = v77;
  *(&v79[24] + 1) = v78;
  sub_1003C5E4C(v95, v73);
  v21 = v74;
  if (v74)
  {
    v22 = v75;
    sub_10000C888(v73, v74);
    v23 = sub_100754284();
    v24 = *(v23 - 8);
    __chkstk_darwin(v23);
    v26 = &v70 - v25;
    sub_100750814();
    v27 = *(v21 - 8);
    if ((*(v27 + 48))(v26, 1, v21) == 1)
    {
      (*(v24 + 8))(v26, v23);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v21;
      v78 = v22;
      v28 = sub_10000D134(&v76);
      (*(v27 + 32))(v28, v26, v21);
    }

    sub_10000C620(v73);
  }

  else
  {
    sub_100688DCC(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[25] = v76;
  v79[26] = v77;
  *&v79[27] = v78;
  sub_1003C5E4C(v92, v73);
  v29 = v74;
  if (v74)
  {
    v30 = v75;
    sub_10000C888(v73, v74);
    v31 = sub_100754284();
    v32 = *(v31 - 8);
    __chkstk_darwin(v31);
    v34 = &v70 - v33;
    sub_100750814();
    v35 = *(v29 - 8);
    if ((*(v35 + 48))(v34, 1, v29) == 1)
    {
      (*(v32 + 8))(v34, v31);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v29;
      v78 = v30;
      v36 = sub_10000D134(&v76);
      (*(v35 + 32))(v36, v34, v29);
    }

    sub_10000C620(v73);
  }

  else
  {
    sub_100688DCC(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  *(&v79[27] + 8) = v76;
  *(&v79[28] + 8) = v77;
  *(&v79[29] + 1) = v78;
  sub_10000C824(v91, &v79[30]);
  v37 = v89;
  v38 = v90;
  sub_10000C888(v88, v89);
  v39 = sub_100754284();
  v40 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v70 - v41;
  sub_100750814();
  v43 = *(v37 - 8);
  if ((*(v43 + 48))(v42, 1, v37) == 1)
  {
    (*(v40 + 8))(v42, v39);
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
  }

  else
  {
    *(&v77 + 1) = v37;
    v78 = v38;
    v44 = sub_10000D134(&v76);
    (*(v43 + 32))(v44, v42, v37);
  }

  *(&v79[32] + 8) = v76;
  *(&v79[33] + 8) = v77;
  *(&v79[34] + 1) = v78;
  sub_1003C5E4C(v86, v73);
  v45 = v74;
  if (v74)
  {
    v46 = v75;
    sub_10000C888(v73, v74);
    v47 = sub_100754284();
    v48 = *(v47 - 8);
    __chkstk_darwin(v47);
    v50 = &v70 - v49;
    sub_100750814();
    v51 = *(v45 - 8);
    if ((*(v51 + 48))(v50, 1, v45) == 1)
    {
      (*(v48 + 8))(v50, v47);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v45;
      v78 = v46;
      v52 = sub_10000D134(&v76);
      (*(v51 + 32))(v52, v50, v45);
    }

    sub_10000C620(v73);
  }

  else
  {
    sub_100688DCC(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[35] = v76;
  v79[36] = v77;
  *&v79[37] = v78;
  sub_1003C5E4C(v84, &v79[37] + 8);
  sub_1003C5E4C(v82, v73);
  v53 = v74;
  if (v74)
  {
    v54 = v75;
    sub_10000C888(v73, v74);
    v55 = sub_100754284();
    v56 = *(v55 - 8);
    __chkstk_darwin(v55);
    v58 = &v70 - v57;
    sub_100750804();
    v59 = *(v53 - 8);
    if ((*(v59 + 48))(v58, 1, v53) == 1)
    {
      (*(v56 + 8))(v58, v55);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v53;
      v78 = v54;
      v60 = sub_10000D134(&v76);
      (*(v59 + 32))(v60, v58, v53);
    }

    sub_10000C620(v73);
  }

  else
  {
    sub_100688DCC(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  v79[40] = v76;
  v79[41] = v77;
  *&v79[42] = v78;
  sub_1003C5E4C(v80, v73);
  v61 = v74;
  if (v74)
  {
    v62 = v75;
    sub_10000C888(v73, v74);
    v63 = sub_100754284();
    v64 = *(v63 - 8);
    __chkstk_darwin(v63);
    v66 = &v70 - v65;
    sub_100750814();
    v67 = *(v61 - 8);
    if ((*(v67 + 48))(v66, 1, v61) == 1)
    {
      sub_100688DCC(v80);
      sub_100688DCC(v82);
      sub_100688DCC(v86);
      sub_100688DCC(v95);
      sub_100055D54(v100);
      sub_10000C620(v91);
      sub_100688DCC(v92);
      sub_100688DCC(v84);
      (*(v64 + 8))(v66, v63);
      v78 = 0;
      v76 = 0u;
      v77 = 0u;
    }

    else
    {
      *(&v77 + 1) = v61;
      v78 = v62;
      v68 = sub_10000D134(&v76);
      (*(v67 + 32))(v68, v66, v61);
      sub_100688DCC(v80);
      sub_100688DCC(v82);
      sub_100688DCC(v86);
      sub_100688DCC(v95);
      sub_100055D54(v100);
      sub_10000C620(v91);
      sub_100688DCC(v92);
      sub_100688DCC(v84);
    }

    sub_10000C620(v73);
  }

  else
  {
    sub_100688DCC(v80);
    sub_100688DCC(v82);
    sub_100688DCC(v86);
    sub_100688DCC(v95);
    sub_100055D54(v100);
    sub_10000C620(v91);
    sub_100688DCC(v92);
    sub_100688DCC(v84);
    sub_100688DCC(v73);
    v76 = 0u;
    v77 = 0u;
    v78 = 0;
  }

  *(&v79[42] + 8) = v76;
  *(&v79[43] + 8) = v77;
  *(&v79[44] + 1) = v78;
  *&v79[45] = v71;
  *(&v79[45] + 8) = v76;
  *(&v79[46] + 1) = v72;
  *&v79[47] = &protocol witness table for UIView;
  memcpy((v12 + 16), v79, 0x2F9uLL);
  sub_100055D54(v101);
  sub_10000C620(v88);
  return sub_10000C620(v97);
}

double sub_1006885FC(double a1)
{
  v3 = sub_1007479B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v7);
  v9 = &v20[-v8 - 8];
  if (qword_100920850 != -1)
  {
    swift_once();
  }

  if (qword_100920858 != -1)
  {
    swift_once();
  }

  v10 = [v1 traitCollection];
  [v1 layoutMargins];
  if (sub_100753804())
  {
    v11 = &xmmword_10097F540;
  }

  else
  {
    v11 = &xmmword_10097F3D0;
  }

  sub_100055CF8(v11, v20);
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v12 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v12 = qword_10093FF58;
  }

  v13 = sub_10000D0FC(v3, v12);
  (*(v4 + 16))(v6, v13, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v23 & 1) == 0 && v21 == 0.0 && v22 == 0.0)
  {
    sub_100747964();
    v15 = v14;
    sub_100747964();
    v21 = v15;
    v22 = v16;
    v23 = 0;
  }

  v17 = _s22SubscribePageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v20, v10, a1);

  (*(v4 + 8))(v9, v3);
  sub_100055D54(v20);
  return v17;
}

double sub_1006888F4()
{
  v1 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v1 - 8);
  v26 = &v24 - v2;
  v3 = sub_10074C3E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = &v24 - v8;
  v10 = sub_1007479B4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v17 = &v24 - v16;
  v27 = v0;
  v18 = [v0 traitCollection];
  if (sub_100753804())
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v19 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v19 = qword_10093FF58;
  }

  v20 = sub_10000D0FC(v10, v19);
  (*(v11 + 16))(v13, v20, v10);

  (*(v11 + 32))(v17, v13, v10);
  (*(v4 + 104))(v6, enum case for OfferButtonSubtitlePosition.below(_:), v3);
  (*(v4 + 56))(v26, 1, 1, v3);
  sub_1001F750C();
  sub_10074A9C4();
  sub_100747984();
  v22 = v21;
  (*(v7 + 8))(v9, v25);
  (*(v11 + 8))(v17, v10);
  return v22;
}

uint64_t sub_100688CC4()
{
  sub_10000C620(v0 + 4);

  sub_10000C620(v0 + 11);
  sub_10000C620(v0 + 16);
  sub_10000C620(v0 + 21);
  sub_10000C620(v0 + 26);
  sub_10000C620(v0 + 31);
  sub_10000C620(v0 + 39);
  if (v0[50])
  {
    sub_10000C620(v0 + 47);
  }

  if (v0[55])
  {
    sub_10000C620(v0 + 52);
  }

  if (v0[60])
  {
    sub_10000C620(v0 + 57);
  }

  sub_10000C620(v0 + 62);
  if (v0[70])
  {
    sub_10000C620(v0 + 67);
  }

  if (v0[75])
  {
    sub_10000C620(v0 + 72);
  }

  if (v0[80])
  {
    sub_10000C620(v0 + 77);
  }

  if (v0[85])
  {
    sub_10000C620(v0 + 82);
  }

  if (v0[90])
  {
    sub_10000C620(v0 + 87);
  }

  if (v0[95])
  {
    sub_10000C620(v0 + 92);
  }

  return _swift_deallocObject(v0, 777, 7);
}

uint64_t sub_100688DCC(uint64_t a1)
{
  v2 = sub_10000C518(&qword_10092BC30, &qword_1007AD5C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100688E34()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_iconPlaceholder;
  sub_1007433C4();
  v3 = sub_1007431D4();
  sub_100746E74();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder;
  sub_100743794();
  v5 = sub_100743754();
  v7 = sub_10071B540(v5, v6, UIFontTextStyleFootnote);

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder;
  v9 = sub_100743784();
  v11 = sub_10071B540(v9, v10, UIFontTextStyleBody);

  *(v1 + v8) = v11;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder;
  type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder.PlaceholderOfferButton();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100754644();
  __break(1u);
}

void sub_100688F68()
{
  v1 = sub_100744B24();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v9[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_isBootstrapping) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_isBootstrapping) = 1;
    (*(*v0 + 360))(v3);
    sub_100689708(v5);
    sub_100744B14();
    v6 = sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
    swift_retain_n();
    v7 = sub_100753774();
    v9[3] = v6;
    v9[4] = &protocol witness table for OS_dispatch_queue;
    v9[0] = v7;
    sub_100752D64();

    sub_10000C620(v9);
    sub_100742194();
    sub_100742184();
    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_10068912C()
{
  v1 = v0;
  v2 = sub_100752E24();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1007526B4();
  v6 = *(v18 - 8);
  __chkstk_darwin(v18);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_pendingMetricsLogger;
  v10 = sub_1007525E4();
  swift_allocObject();
  *(v0 + v9) = sub_1007525D4();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_diagnosticsRecorder;
  sub_10074B724();
  swift_allocObject();
  *(v0 + v11) = sub_10074B714();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_pendingEvents) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_inAppMessagesMetricsEventRecorder) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_isBootstrapping) = 0;
  sub_10000C518(&qword_1009447A0, &unk_1007D3BE0);
  v12 = swift_allocObject();
  v13 = *(v1 + v9);
  *(v12 + 16) = xmmword_1007A6580;
  *(v12 + 56) = v10;
  *(v12 + 64) = &protocol witness table for ReplayLogger;
  *(v12 + 32) = v13;
  v14 = qword_100921EC8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_10000D0FC(v2, qword_1009832D0);
  (*(v3 + 16))(v5, v15, v2);
  *(v12 + 96) = sub_100752E44();
  *(v12 + 104) = &protocol witness table for OSLogger;
  sub_10000D134((v12 + 72));
  sub_100752E34();
  sub_1007526A4();
  (*(v6 + 32))(v1 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_logger, v8, v18);
  return v1;
}

void sub_100689468(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v18 = sub_100752B34();
  v3 = *(v18 - 8);
  __chkstk_darwin(v18);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1007524D4();
  v6 = *(v17 - 8);
  __chkstk_darwin(v17);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_pendingEvents;
  swift_beginAccess();
  v10 = *(v2 + v9);
  if (!(v10 >> 62))
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    v11 = *(v2 + v9);
    if (v11 >> 62)
    {
      v12 = sub_100754664();
      if (v12)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
LABEL_5:
        if (v12 < 1)
        {
          __break(1u);
          return;
        }

        v15 = v9;
        v16 = v2;
        v13 = (v6 + 8);

        v14 = 0;
        do
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            sub_100754574();
          }

          else
          {
          }

          ++v14;
          sub_100743EC4();
          sub_100752B14();
          sub_100752794();

          (*(v3 + 8))(v5, v18);
          (*v13)(v8, v17);
        }

        while (v12 != v14);

        v9 = v15;
        v2 = v16;
      }
    }

    *(v2 + v9) = _swiftEmptyArrayStorage;

    return;
  }

  if (sub_100754664())
  {
    goto LABEL_3;
  }
}

double sub_100689708@<D0>(uint64_t a1@<X8>)
{
  v19[2] = a1;
  v1 = sub_100744AE4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100944748, &qword_1007D3BA8);
  __chkstk_darwin(v5 - 8);
  v7 = v19 - v6;
  v8 = sub_100752CC4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100744B24();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920CC0 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v8, qword_100980480);
  (*(v9 + 16))(v11, v16, v8);
  v17 = sub_100745B44();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v19[6] = &type metadata for ModernAppStateControllerFactory;
  v19[7] = sub_10068C67C();
  (*(v2 + 104))(v4, enum case for ASKBootstrapV2.TargetType.app(_:), v1);
  sub_100744AF4();
  swift_allocObject();
  swift_weakInit();

  sub_100744B04();

  (*(v13 + 8))(v15, v12);

  return result;
}

uint64_t sub_100689A68@<X0>(uint64_t *a2@<X8>)
{
  v4 = sub_100752CD4();
  __chkstk_darwin(v4);
  v5 = sub_100748CA4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007526E4();
  sub_100748C94();
  v9 = type metadata accessor for InAppMessagesMetricsEventRecorder();
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  *(v10 + 32) = sub_100748C74();
  *(v10 + 40) = v11;
  sub_100046F70(0, 0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_inAppMessagesMetricsEventRecorder) = v10;
  }

  a2[3] = v9;
  a2[4] = sub_10068C710(&qword_100944798, type metadata accessor for InAppMessagesMetricsEventRecorder, &protocol conformance descriptor for InAppMessagesMetricsEventRecorder);
  *a2 = v10;
  return (*(v6 + 8))(v8, v5);
}

void sub_100689C70(uint64_t a1)
{
  sub_1007465E4();
  sub_1007465A4();
  v2 = OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_pendingEvents;
  swift_beginAccess();
  sub_100753284();
  if (*((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  swift_endAccess();
  sub_100688F68();
}

double sub_100689D38(uint64_t *a1, uint64_t a2)
{
  sub_100689E28(*a1);
  v3 = (*(*a2 + 328))();
  sub_100752704();
  sub_1007455A4();
  sub_100752764();
  sub_100752D34();
  sub_10068B1D4(v3, v5);

  return result;
}

uint64_t sub_100689E28(uint64_t a1)
{
  v54 = sub_100752314();
  v48 = *(v54 - 8);
  v49 = (v54 - 8);
  v50 = v48;
  __chkstk_darwin(v54 - 8);
  v53 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_10074CF54();
  v61 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_10074D534();
  v60 = *(v55 - 8);
  __chkstk_darwin(v55);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100752634();
  __chkstk_darwin(v6);
  v46 = sub_1007442C4();
  (*(*v1 + 176))();
  sub_10074A1B4();
  sub_1007526E4();
  v57 = sub_100744234();
  sub_100016C60(0, &qword_100944758, ASKLoadAvatarResourceOperation_ptr);
  sub_1007442B4();
  sub_10068C710(&qword_100944760, &type metadata accessor for MetricsLogger.Configuration, &protocol conformance descriptor for MetricsLogger.Configuration);
  sub_100752D24();
  v45 = sub_100748054();
  swift_allocObject();
  v56 = sub_100748064();
  sub_100748044();
  sub_100748034();
  sub_100744AC4();
  sub_100752764();
  sub_100752D34();
  v52 = v65;
  sub_100744934();
  v7 = sub_100016C60(0, &qword_100939F50, ACAccountStore_ptr);
  sub_100752D34();
  v8 = v65;
  v9 = [objc_opt_self() sharedInstance];
  v66 = sub_100016C60(0, &qword_100944768, ASDSubscriptionEntitlements_ptr);
  v67 = &protocol witness table for ASDSubscriptionEntitlements;
  v65 = v9;
  v63 = v7;
  v64 = &protocol witness table for ACAccountStore;
  v62 = v8;
  v43 = sub_10074B294();
  v10 = objc_allocWithZone(v43);
  v51 = v8;
  v11 = sub_10074B224();
  v12 = v5;
  v44 = v5;
  sub_10074D524();
  sub_10000C518(&unk_100925780, qword_1007AC630);
  sub_100752D34();
  v47 = v65;
  v41 = v11;
  swift_unknownObjectRetain();
  v13 = v58;
  sub_10074CF44();
  sub_10000C518(&qword_100944770, &unk_1007D3BC0);
  v14 = (sub_10000C518(&qword_100936DD8, &qword_1007C02A0) - 8);
  v15 = (*(*v14 + 80) + 32) & ~*(*v14 + 80);
  v16 = swift_allocObject();
  v42 = xmmword_1007A5A00;
  *(v16 + 16) = xmmword_1007A5A00;
  v17 = v16 + v15;
  v18 = (v17 + v14[14]);
  sub_100752C64();
  v19 = v59;
  v18[3] = v59;
  v18[4] = sub_10068C710(&qword_100944778, &type metadata accessor for ArcadeButtonNameFieldsProvider, &protocol conformance descriptor for ArcadeButtonNameFieldsProvider);
  v20 = sub_10000D134(v18);
  (*(v61 + 16))(v20, v13, v19);
  sub_100415650(v16);
  swift_setDeallocating();
  sub_10000C8CC(v17, &qword_100936DD8, &qword_1007C02A0);
  swift_deallocClassInstance();
  sub_10000C518(&qword_100944780, &unk_1007D3BD0);
  v21 = (sub_10000C518(&qword_100936DB8, &qword_1007C0290) - 8);
  v22 = (*(*v21 + 80) + 32) & ~*(*v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v42;
  v24 = v23 + v22;
  v25 = (v24 + v21[14]);
  sub_100752C24();
  v26 = v55;
  v25[3] = v55;
  v25[4] = sub_10068C710(&qword_100944788, &type metadata accessor for ArcadeSubscriptionFieldsProvider, &protocol conformance descriptor for ArcadeSubscriptionFieldsProvider);
  v27 = sub_10000D134(v25);
  (*(v60 + 16))(v27, v12, v26);
  sub_100415840(v23);
  swift_setDeallocating();
  sub_10000C8CC(v24, &qword_100936DB8, &qword_1007C0290);
  swift_deallocClassInstance();
  v28 = sub_100752784();

  v29 = [objc_allocWithZone(type metadata accessor for EventStoreManager()) init];
  *&v42 = v28;

  sub_100752774();
  sub_10000C518(&qword_100938E30, &qword_1007C2720);
  v30 = v50;
  v31 = swift_allocObject();
  v31[1] = xmmword_1007AB1A0;
  v65 = v57;

  sub_1007522F4();
  sub_1007422F4();
  v65 = sub_1007422E4();
  sub_1007522F4();
  v65 = v56;

  sub_1007522F4();
  v65 = v41;
  v46 = v41;
  sub_1007522F4();
  v65 = v29;
  v49 = v29;
  sub_1007522F4();
  v65 = v31;
  sub_10000C518(&qword_100944738, &qword_1007D3BA0);
  sub_1000D83A4(&qword_100944740, &qword_100944738, &qword_1007D3BA0);
  sub_100752734();

  sub_100752704();
  v65 = [objc_allocWithZone(sub_10074B024()) init];
  v48 = v65;
  v32 = v53;
  sub_1007522F4();
  sub_100752724();

  v33 = v30[1];
  v34 = v54;
  v33(v32, v54);
  sub_100742AB4();
  swift_allocObject();
  v35 = v46;

  v65 = sub_100742A74();

  sub_1007522F4();
  sub_100752724();

  v33(v32, v34);
  v36 = objc_allocWithZone(sub_1007425B4());

  v65 = sub_1007425A4();
  v37 = v65;
  sub_1007522F4();
  v38 = sub_100752724();

  swift_unknownObjectRelease();

  v33(v32, v34);
  (*(v61 + 8))(v58, v59);
  (*(v60 + 8))(v44, v55);
  return v38;
}

uint64_t sub_10068A9E8(uint64_t a1)
{
  v2 = sub_1007521E4();
  v13 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100752224();
  v5 = *(v12 - 8);
  __chkstk_darwin(v12);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v8 = sub_100753774();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  aBlock[4] = sub_10068C674;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10087FAD8;
  v10 = _Block_copy(aBlock);
  swift_errorRetain();

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10068C710(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_1000D83A4(&qword_1009236C0, &unk_10092F750, &qword_1007A6920);
  sub_1007543A4();
  sub_100753784();
  _Block_release(v10);

  (*(v13 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v12);
}

double sub_10068ACCC(uint64_t a1)
{
  type metadata accessor for DebugNotificationCenter();
  inited = swift_initStaticObject();
  swift_getErrorValue();
  v2 = sub_1007547C4();
  v4 = v3;
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = sub_1006FEC68();

  if (v6)
  {
    sub_1006F06E4();
    v7 = *(inited + 24);
    if (v7)
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v8 = v7;
      isa = sub_100753F24(1.0, 0.23137, 0.18824, 0.5).super.isa;
      sub_1006F0190(v2, v4, isa, 0, 0, 3.0);
    }
  }

  return result;
}

uint64_t sub_10068AE00(uint64_t a1)
{
  v2 = sub_1007521E4();
  v19 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752224();
  v17 = *(v5 - 8);
  v18 = v5;
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752354();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v11 = sub_100753774();
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = swift_allocObject();
  (*(v9 + 32))(v13 + v12, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  aBlock[4] = sub_10068C5C4;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_10087FA88;
  v14 = _Block_copy(aBlock);

  sub_100752204();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10068C710(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_1000D83A4(&qword_1009236C0, &unk_10092F750, &qword_1007A6920);
  sub_1007543A4();
  sub_100753784();
  _Block_release(v14);

  (*(v19 + 8))(v4, v2);
  return (*(v17 + 8))(v7, v18);
}

double sub_10068B194(uint64_t a1)
{
  type metadata accessor for DebugNotificationCenter();
  swift_initStaticObject();
  return sub_1006EE17C(a1, v2);
}

void sub_10068B1D4(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v35 = a1;
  v3 = sub_100752B84();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&qword_100944748, &qword_1007D3BA8);
  __chkstk_darwin(v5 - 8);
  v40 = &v31 - v6;
  v37 = sub_100752CD4();
  __chkstk_darwin(v37);
  v38 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_100741454();
  v8 = *(v36 - 8);
  __chkstk_darwin(v36);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007527A4();
  v41 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  sub_100744AC4();
  sub_100752764();
  sub_100752D34();
  v17 = v42;
  v18 = v2;
  swift_unknownObjectWeakLoadStrong();
  sub_100745594();
  sub_10074C5F4();
  v19 = sub_10074C5E4();
  sub_1007449A4();
  sub_10074C5D4();

  v20 = [objc_opt_self() standardUserDefaults];
  v39 = v17;
  v21 = sub_100744964();
  v22 = sub_100753064();
  [v20 setBool:v21 & 1 forKey:v22];

  v23 = v18;
  v24 = v35;

  sub_100752D34();
  sub_100689468(v16, v25);
  sub_100749F54();
  sub_100741444();
  sub_100741424();
  (*(v8 + 8))(v10, v36);
  sub_100749F44();
  (*(v41 + 16))(v13, v16, v11);
  sub_10074C024();
  swift_allocObject();
  sub_10074C004();
  sub_10074B294();
  sub_100752D34();
  v26 = v42;
  swift_retain_n();
  sub_10074B204();

  sub_1007491E4();
  sub_100752754();
  v27 = v42;
  if (v42)
  {
    sub_1007491D4();
  }

  sub_100748164();
  sub_100752D34();
  v28 = sub_100745B44();
  (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
  sub_10000C518(&qword_100944750, &unk_1007D3BB0);
  sub_100752D34();
  v29 = sub_100748154();
  (*(*v23 + 368))(v24, v29);
  sub_100744974();
  sub_100742314();

  sub_100752BA4();
  sub_100752754();
  if (v42)
  {

    v30 = v32;
    sub_100752B74();
    sub_100752B94();

    (*(v33 + 8))(v30, v34);
    (*(v41 + 8))(v16, v11);
  }

  else
  {
    (*(v41 + 8))(v16, v11);
  }

  *(v23 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_isBootstrapping) = 0;
}

uint64_t sub_10068B874(uint64_t a1)
{
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  swift_getErrorValue();
  v7[3] = v6;
  v3 = sub_10000D134(v7);
  (*(*(v6 - 8) + 16))(v3);
  sub_100752424();
  sub_10000C8CC(v7, &unk_100923520, &qword_1007A5A70);
  sub_1007526B4();
  sub_100752D04();

  sub_100745FC4();
  swift_allocObject();
  swift_errorRetain();
  sub_100745FB4();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_pendingEvents;
  swift_beginAccess();
  sub_100753284();
  if (*((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_100753304();
  }

  sub_100753344();
  swift_endAccess();
  sub_100742304();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_isBootstrapping) = 0;
  return (*(*v1 + 376))(a1);
}

uint64_t sub_10068BB04(uint64_t a1, __n128 a2)
{
  v4 = sub_100752CD4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100752314();
  v8 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v44 - v11;
  __chkstk_darwin(v12);
  v48 = &v44 - v13;
  v15 = __chkstk_darwin(v14);
  v17 = &v44 - v16;
  v18 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_inAppMessagesMetricsEventRecorder);
  v51 = a1;
  if (v18)
  {
    v19 = *(*v2 + 144);
    v46 = v2;
    v20 = v19(v15);
    type metadata accessor for InAppMessagesManager();
    swift_allocObject();

    v22 = sub_1006EC254(v21, v20, v18);

    v52 = v22;

    sub_1007522F4();
    v23 = sub_10025527C(0, 1, 1, _swiftEmptyArrayStorage);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_10025527C((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    (*(v8 + 32))(&v23[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v25], v17, v50);
    v2 = v46;
  }

  else
  {
    v23 = _swiftEmptyArrayStorage;
  }

  sub_100752764();
  sub_100752D34();
  v26 = (*(*v2 + 272))(v7);
  (*(v5 + 8))(v7, v4);
  if (v26)
  {
    sub_1007491E4();
    v52 = v26;
    v27 = v26;
    v28 = v48;
    sub_1007522F4();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_10025527C(0, *(v23 + 2) + 1, 1, v23);
    }

    v30 = *(v23 + 2);
    v29 = *(v23 + 3);
    if (v30 >= v29 >> 1)
    {
      v23 = sub_10025527C((v29 > 1), v30 + 1, 1, v23);
    }

    *(v23 + 2) = v30 + 1;
    v31 = *(v8 + 32);
    v46 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v32 = *(v8 + 72);
    v31(&v23[v46 + v32 * v30], v28, v50);
    v33 = sub_1007491C4();
    if (v33)
    {
      v34 = v33;
      v45 = v31;
      v48 = v27;
      sub_10074B0C4();
      swift_allocObject();

      v35 = v34;
      v52 = sub_10074B044();

      v36 = v47;
      sub_1007522F4();
      v38 = *(v23 + 2);
      v37 = *(v23 + 3);
      if (v38 >= v37 >> 1)
      {
        v23 = sub_10025527C((v37 > 1), v38 + 1, 1, v23);
      }

      *(v23 + 2) = v38 + 1;
      v45(&v23[v46 + v38 * v32], v36, v50);
    }

    else
    {
    }
  }

  sub_100016C60(0, &qword_100939F50, ACAccountStore_ptr);
  sub_100752D34();
  sub_100744AC4();
  sub_100752D34();
  sub_1007464E4();
  swift_allocObject();
  v52 = sub_1007464D4();

  v39 = v49;
  sub_1007522F4();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_10025527C(0, *(v23 + 2) + 1, 1, v23);
  }

  v41 = *(v23 + 2);
  v40 = *(v23 + 3);
  if (v41 >= v40 >> 1)
  {
    v23 = sub_10025527C((v40 > 1), v41 + 1, 1, v23);
  }

  *(v23 + 2) = v41 + 1;
  (*(v8 + 32))(&v23[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v41], v39, v50);
  v52 = v23;
  sub_10000C518(&qword_100944738, &qword_1007D3BA0);
  sub_1000D83A4(&qword_100944740, &qword_100944738, &qword_1007D3BA0);
  v42 = sub_100752734();

  return v42;
}

void sub_10068C1C8(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  sub_100754534(43);

  v4._countAndFlagsBits = sub_100754544();
  sub_1007531B4(v4);

  v5._countAndFlagsBits = 0xD000000000000017;
  v5._object = 0x800000010078A280;
  sub_1007531B4(v5);
  v6._countAndFlagsBits = sub_1007548A4();
  sub_1007531B4(v6);

  sub_100754644();
  __break(1u);
}

uint64_t sub_10068C328()
{
  sub_10000C4F0(v0 + 16);
  v1 = OBJC_IVAR____TtC22SubscribePageExtension13BaseBootstrap_logger;
  v2 = sub_1007526B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BaseBootstrap(uint64_t a1)
{
  result = qword_100944588;
  if (!qword_100944588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10068C460(uint64_t a1, __n128 a2)
{
  result = sub_1007526B4();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10068C53C(__n128 a1)
{
  v2 = sub_100752354();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

double sub_10068C5C4(__n128 a1)
{
  v2 = *(sub_100752354() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_10068B194(v3);
}

double sub_10068C624(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10068C63C(__n128 a1)
{

  return _swift_deallocObject(v1, 24, 7);
}

unint64_t sub_10068C67C()
{
  result = qword_100944790;
  if (!qword_100944790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944790);
  }

  return result;
}

uint64_t sub_10068C6D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10068C710(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10068C770@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, uint64_t a7@<D1>, double a8@<D6>, double a9@<D7>, char *a10, char *a11)
{
  v128 = a4;
  v139 = a2;
  v140 = a3;
  v141 = a1;
  v133 = a5;
  v124 = sub_10000C518(&qword_100923230, &qword_1007BF500);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v121 = &v111 - v17;
  v120 = sub_1007504F4();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_10074EAB4();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v114 = &v111 - v21;
  v126 = sub_100751BC4();
  v127 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000C518(&unk_100933370, &unk_1007A8CE0);
  __chkstk_darwin(v23 - 8);
  v131 = &v111 - v24;
  v135 = sub_10074E984();
  v25 = *(v135 - 8);
  __chkstk_darwin(v135);
  v136 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v111 - v28;
  __chkstk_darwin(v30);
  v32 = &v111 - v31;
  v33 = sub_10074F6E4();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v113 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v111 = &v111 - v37;
  __chkstk_darwin(v38);
  v112 = &v111 - v39;
  __chkstk_darwin(v40);
  v132 = &v111 - v41;
  __chkstk_darwin(v42);
  v44 = &v111 - v43;
  v45 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  v46 = v45 - 8;
  __chkstk_darwin(v45);
  v48 = &v111 - v47;
  sub_100016B4C(v139, &v111 - v47, &unk_10093D6E0, &unk_1007A6080);
  v49 = *(v46 + 56);
  v134 = v48;
  v50 = &v48[v49];
  v51 = v34;
  sub_100016B4C(v140, v50, &unk_10093D6E0, &unk_1007A6080);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  sub_1007525B4();

  v52 = *(v34 + 104);
  v53 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v144)
  {
    v53 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v54 = *v53;
  v137 = v33;
  v138 = v44;
  v55 = v44;
  v56 = v135;
  v52(v55, v54, v33);
  swift_getKeyPath();
  sub_1007525B4();

  (*(v25 + 104))(v29, enum case for Shelf.ContentType.placeholder(_:), v56);
  sub_10068F380(&qword_100926DD0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v139 = v32;
  sub_100753274();
  sub_100753274();
  if (v144 == v142 && v145 == v143)
  {
    v57 = 1;
  }

  else
  {
    v57 = sub_100754754();
  }

  v140 = *(v25 + 8);
  v140(v29, v56);

  v58 = v139;
  if (v57)
  {
    swift_getKeyPath();
    v59 = v131;
    sub_1007525B4();

    if ((*(v25 + 48))(v59, 1, v56) == 1)
    {
      sub_10000C8CC(v59, &unk_100933370, &unk_1007A8CE0);
    }

    else
    {
      v140(v58, v56);
      (*(v25 + 32))(v58, v59, v56);
    }
  }

  v60 = a11;
  v61 = v136;
  (*(v25 + 16))(v136, v58, v56);
  v62 = (*(v25 + 88))(v61, v56);
  if (v62 == enum case for Shelf.ContentType.smallLockup(_:) || v62 == enum case for Shelf.ContentType.purchasesLockup(_:) || v62 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_15:
    v63 = v125;
    sub_1007455F4();
    v64 = sub_100751BA4();
    (*(v127 + 8))(v63, v126);
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_10070879C(v64 & 1);
LABEL_41:
    sub_10074F6B4();
    v140(v58, v56);
    v69 = *(v51 + 8);
    v70 = v65;
    v77 = v66;
    goto LABEL_42;
  }

  if (v62 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
LABEL_17:
    v129 = a8;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_1009207D8 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v62 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v62 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v62 == enum case for Shelf.ContentType.mediumAdLockupWithAlignedRegionBackground(_:) || v62 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v62 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:) || v62 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.ribbonBar(_:) || v62 == enum case for Shelf.ContentType.ribbonFlow(_:))
  {
    v71 = v121;
    sub_10074F604();
    v72 = v122;
    sub_10074F604();
    v68 = v137;
    v73 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_100632ED4(v71, v72);
    sub_10074F6B4();
    v74 = *(*&v123 + 8);
    v75 = v72;
    v76 = v124;
    v74(v75, v124);
    v74(v71, v76);
    v140(v58, v56);
    v69 = *(v51 + 8);
    v70 = v73;
    goto LABEL_32;
  }

  if (v62 == enum case for Shelf.ContentType.paragraph(_:) || v62 == enum case for Shelf.ContentType.annotation(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.footnote(_:))
  {
LABEL_30:
    v68 = v137;
    v67 = v138;
    (*(v34 + 16))(v132, v138, v137);
    sub_1004E97E0(0.0);
    sub_10074F6B4();
    v140(v58, v56);
    v69 = *(v34 + 8);
    v70 = v67;
LABEL_32:
    v77 = v68;
LABEL_42:
    v69(v70, v77);
    return sub_10000C8CC(v134, &qword_100923228, &unk_1007AB120);
  }

  if (v62 == enum case for Shelf.ContentType.editorialCard(_:))
  {
    if (sub_100745624())
    {
      v78 = v118;
      sub_100750504();
      v79 = sub_100750444();
      (*(v119 + 8))(v78, v120);
      if (v79)
      {
        v81 = v137;
        v80 = v138;
        v82 = v132;
        if (qword_100920038 == -1)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v81 = v137;
        v80 = v138;
        v82 = v132;
        if (qword_100920040 == -1)
        {
LABEL_50:

          (*(v51 + 16))(v82, v80, v81);
          sub_10074F6B4();
          v140(v58, v56);
          (*(v51 + 8))(v80, v81);
          return sub_10000C8CC(v134, &qword_100923228, &unk_1007AB120);
        }
      }
    }

    else
    {
      v81 = v137;
      v80 = v138;
      v82 = v132;
      if (qword_100920200 == -1)
      {
        goto LABEL_50;
      }
    }

    swift_once();
    goto LABEL_50;
  }

  if (v62 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.brick(_:))
  {
LABEL_47:
    v131 = v60;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_100920558 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v62 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
LABEL_52:
    swift_getKeyPath();
    v84 = v114;
    sub_1007525B4();

    v85 = v115;
    sub_10074EA54();
    sub_10068F380(&unk_100925360, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v86 = v117;
    v87 = sub_100754324();
    v88 = *(v116 + 8);
    v88(v85, v86);
    v88(v84, v86);
    v89 = v125;
    sub_1007455F4();
    LOBYTE(v88) = sub_100751BA4();
    (*(v127 + 8))(v89, v126);
    v91 = v137;
    v90 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_10013B344(v88 & 1, v87 & 1);
    sub_10074F6B4();
    v140(v58, v56);
    (*(v51 + 8))(v90, v91);
    return sub_10000C8CC(v134, &qword_100923228, &unk_1007AB120);
  }

  if (v62 == enum case for Shelf.ContentType.productCapability(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.reviews(_:))
  {
    goto LABEL_30;
  }

  if (v62 == enum case for Shelf.ContentType.reviewsContainer(_:))
  {
    goto LABEL_17;
  }

  v131 = a11;
  v121 = a10;
  v122 = (v25 + 8);
  v123 = a6;
  v124 = a7;
  v129 = a8;
  v130 = a9;
  v92 = v56;
  v93 = v137;
  v94 = v34;
  if (v62 == enum case for Shelf.ContentType.reviewSummary(_:) || v62 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    v95 = 0.0;
    if (sub_100745624())
    {
      v96 = v125;
      sub_1007455F4();
      v97 = sub_100751BA4();
      (*(v127 + 8))(v96, v126);
      if (v97)
      {
        v95 = 0.0;
      }

      else
      {
        v95 = 190.0;
      }
    }

    v98 = v138;
    (*(v34 + 16))(v113, v138, v93);
    sub_1004E97E0(v95);
    goto LABEL_68;
  }

  if (v62 == enum case for Shelf.ContentType.todayCard(_:))
  {
    (*(v34 + 16))(v132, v138, v137);
    if (qword_100920060 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  if (v62 == enum case for Shelf.ContentType.miniTodayCard(_:))
  {
    (*(v34 + 16))(v112, v138, v137);
    if (sub_100745634())
    {
      if (qword_100920680 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (qword_100920678 == -1)
    {
LABEL_83:

      sub_10074F6B4();
      v140(v139, v56);
      (*(v34 + 8))(v138, v93);
      return sub_10000C8CC(v134, &qword_100923228, &unk_1007AB120);
    }

LABEL_109:
    swift_once();
    goto LABEL_83;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.editorialLink(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.framedArtwork(_:) || v62 == enum case for Shelf.ContentType.screenshots(_:) || v62 == enum case for Shelf.ContentType.productMedia(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v62 == enum case for Shelf.ContentType.productPageLink(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.productRatings(_:))
  {
    v99 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_1004E97E0(0.0);
    sub_10074F6B4();
    v140(v139, v56);
    (*(v51 + 8))(v99, v93);
    return sub_10000C8CC(v134, &qword_100923228, &unk_1007AB120);
  }

  if (v62 == enum case for Shelf.ContentType.productReview(_:))
  {
    v100 = v125;
    sub_1007455F4();
    v98 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_10044F7B0(v100, 0);
LABEL_91:
    sub_10074F6B4();
    (*(v127 + 8))(v100, v126);
    goto LABEL_69;
  }

  if (v62 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    v100 = v125;
    sub_1007455F4();
    v98 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_10073EFC8(v100);
    goto LABEL_91;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  v60 = v131;
  if (v62 == enum case for Shelf.ContentType.framedVideo(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v62 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.titledButtonStack(_:))
  {
    goto LABEL_30;
  }

  if (v62 == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    goto LABEL_47;
  }

  if (v62 == enum case for Shelf.ContentType.largeStoryCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v62 == enum case for Shelf.ContentType.upsellBreakout(_:) || v62 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.editorialStoryCard(_:) || v62 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
  {
    goto LABEL_15;
  }

  if (v62 == enum case for Shelf.ContentType.posterLockup(_:))
  {
    swift_getKeyPath();
    sub_1007525B4();

    v101 = *(v144 + 16);

    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_10004825C(v101);
LABEL_108:
    sub_10074F6B4();
    v140(v139, v92);
    (*(v102 + 8))(v103, v93);
    return sub_10000C8CC(v134, &qword_100923228, &unk_1007AB120);
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    goto LABEL_15;
  }

  if (v62 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.privacyType(_:))
  {
LABEL_113:
    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v137);
    v104 = v125;
    sub_1007455F4();
    sub_1006E2EDC(v104);
    (*(v127 + 8))(v104, v126);
    goto LABEL_108;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.appPromotion(_:))
  {
LABEL_39:
    v129 = a8;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_100920200 == -1)
    {
LABEL_40:

      goto LABEL_41;
    }

LABEL_85:
    swift_once();
    goto LABEL_40;
  }

  if (v62 == enum case for Shelf.ContentType.searchResult(_:))
  {
    v105 = sub_100745614();
    (*(v34 + 16))(v111, v138, v93);
    if (v105)
    {
      if (qword_100920C28 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (qword_100920C20 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  if (v62 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
  {
    v98 = v138;
    (*(v34 + 16))(v132, v138, v137);
    sub_10063F3B8();
LABEL_68:
    sub_10074F6B4();
LABEL_69:
    v140(v139, v92);
    (*(v34 + 8))(v98, v93);
    return sub_10000C8CC(v134, &qword_100923228, &unk_1007AB120);
  }

  if (v62 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    v106 = v125;
    sub_1007455F4();
    v107 = sub_100751BA4();
    (*(v127 + 8))(v106, v126);
    if (v107)
    {
      if (sub_100745614())
      {
        v108 = 1;
      }

      else
      {
        v108 = 2;
      }
    }

    else
    {
      v108 = 2;
    }

    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_10005672C(v108);
    goto LABEL_108;
  }

  v51 = v34;
  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.heroCarousel(_:) || v62 == enum case for Shelf.ContentType.uber(_:) || v62 == enum case for Shelf.ContentType.mediaPageHeader(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.tagBrick(_:))
  {
    goto LABEL_52;
  }

  if (v62 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
  {
    goto LABEL_113;
  }

  v109 = v138;
  (*(v94 + 16))(v132, v138, v137);
  sub_1004E97E0(0.0);
  sub_10074F6B4();
  v110 = v140;
  v140(v139, v56);
  (*(v94 + 8))(v109, v93);
  sub_10000C8CC(v134, &qword_100923228, &unk_1007AB120);
  return (v110)(v136, v56);
}

uint64_t sub_10068EBE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a11@<D4>, double a12@<D5>, double a15, double a16)
{
  v39 = a5;
  v42 = a4;
  v43 = a2;
  v45 = a3;
  v46 = a6;
  v40 = a11;
  v41 = a12;
  v44 = sub_10074E984();
  v47 = *(v44 - 8);
  __chkstk_darwin(v44);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10074F6E4();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v38 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v37 - v23;
  v25 = sub_10000C518(&qword_100923228, &unk_1007AB120);
  __chkstk_darwin(v25);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v37 - v29;
  sub_100016B4C(v43, &v37 - v29, &unk_10093D6E0, &unk_1007A6080);
  v37 = v25;
  sub_100016B4C(v45, &v30[*(v25 + 48)], &unk_10093D6E0, &unk_1007A6080);
  swift_getKeyPath();
  sub_10000C518(&unk_10092E450, &qword_1007A60C0);
  sub_1007525B4();

  v45 = v20;
  v31 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v49)
  {
    v31 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v20 + 104))(v24, *v31, v19);
  swift_getKeyPath();
  v32 = v44;
  v43 = a1;
  sub_1007525B4();

  v33 = (*(v47 + 88))(v18, v32);
  if (v33 == enum case for Shelf.ContentType.reviews(_:) || v33 == enum case for Shelf.ContentType.reviewsContainer(_:) || v33 == enum case for Shelf.ContentType.todayCard(_:) || v33 == enum case for Shelf.ContentType.framedArtwork(_:) || v33 == enum case for Shelf.ContentType.productMedia(_:) || v33 == enum case for Shelf.ContentType.framedVideo(_:) || v33 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v33 == enum case for Shelf.ContentType.upsellBreakout(_:) || v33 == enum case for Shelf.ContentType.smallBreakout(_:) || v33 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    v36 = v45;
    (*(v45 + 16))(v38, v24, v19);
    sub_1004E97E0(0.0);
    sub_10074F6B4();
    (*(v36 + 8))(v24, v19);
    return sub_10000C8CC(v30, &qword_100923228, &unk_1007AB120);
  }

  else
  {
    v48 = v39;
    sub_100016B4C(v30, v27, &qword_100923228, &unk_1007AB120);
    v34 = *(v37 + 48);
    sub_1000E1F2C();
    sub_100745684();
    (*(v45 + 8))(v24, v19);
    sub_10000C8CC(v30, &qword_100923228, &unk_1007AB120);
    sub_10000C8CC(&v27[v34], &unk_10093D6E0, &unk_1007A6080);
    sub_10000C8CC(v27, &unk_10093D6E0, &unk_1007A6080);
    return (*(v47 + 8))(v18, v32);
  }
}

uint64_t sub_10068F18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1000E1F2C();

  return sub_100745684();
}

uint64_t sub_10068F270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  sub_1000E1F2C();

  return sub_100745674();
}

uint64_t sub_10068F380(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10068F3E4()
{
  result = qword_1009447A8;
  if (!qword_1009447A8)
  {
    sub_100746774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009447A8);
  }

  return result;
}

uint64_t sub_10068F43C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v5 = sub_100752624();
  v41 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074A304();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v12 = sub_100752DE4();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = [Strong presentedViewController];

  if (v14)
  {

    v15 = swift_unknownObjectUnownedLoadStrong();
    sub_10068FE34(v3, v44);
    v16 = swift_allocObject();
    sub_10068FEBC(v44, (v16 + 2));
    v17 = v42;
    v16[3] = a1;
    v16[4] = v17;
    v16[5] = v12;
    aBlock[4] = sub_10068FEF4;
    aBlock[5] = v16;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    aBlock[3] = &unk_10087FC20;
    v18 = _Block_copy(aBlock);

    [v15 dismissViewControllerAnimated:1 completion:v18];
    _Block_release(v18);
  }

  else
  {
    v19 = v42;
    v38 = v3;
    v39 = v9;
    v40 = v7;
    v37 = v12;
    v20 = sub_100746754();
    sub_100746744();
    if (sub_100746764())
    {
      type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
      v21 = type metadata accessor for StoreNavigationController();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR____TtC22SubscribePageExtension25StoreNavigationController_objectGraph] = v19;
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v45.receiver = v22;
      v45.super_class = v21;

      v24 = v11;
      v25 = objc_msgSendSuper2(&v45, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
      [v25 setDelegate:v25];
      sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
      swift_allocObject();
      v26 = swift_unknownObjectUnownedLoadStrong();
      swift_unknownObjectWeakInit();

      v27 = sub_100753FF4();
      sub_1003CC71C(v20, v27);

      sub_10000C518(&unk_1009231A0, qword_1007A5810);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1007A5CF0;
      *(v28 + 32) = v20;
      sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
      v29 = v20;
      isa = sub_100753294().super.isa;

      [v25 setViewControllers:isa];

      v31 = swift_unknownObjectUnownedLoadStrong();
      [v31 presentViewController:v25 animated:0 completion:0];

      v20 = v25;
      v11 = v24;
    }

    else
    {
      v31 = swift_unknownObjectUnownedLoadStrong();
      [v31 presentViewController:v20 animated:0 completion:0];
    }

    v32 = v39;
    v33 = v40;

    (*(v32 + 8))(v11, v8);
    v34 = v41;
    (*(v41 + 104))(v33, enum case for ActionOutcome.performed(_:), v5);
    v12 = v37;
    sub_100752DB4();
    (*(v34 + 8))(v33, v5);
  }

  return v12;
}

uint64_t sub_10068F97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v6 = sub_100752624();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074A304();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100746754();
  sub_100746744();
  if (sub_100746764())
  {
    type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
    v15 = type metadata accessor for StoreNavigationController();
    v29 = v10;
    v16 = v15;
    v17 = objc_allocWithZone(v15);
    v30 = a4;
    v18 = v17;
    *&v17[OBJC_IVAR____TtC22SubscribePageExtension25StoreNavigationController_objectGraph] = a3;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v32.receiver = v18;
    v32.super_class = v16;

    v20 = objc_msgSendSuper2(&v32, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
    [v20 setDelegate:v20];
    sub_100016C60(0, &qword_100929CC0, UIAction_ptr);
    swift_allocObject();
    v28 = v6;
    Strong = swift_unknownObjectUnownedLoadStrong();
    swift_unknownObjectWeakInit();

    v10 = v29;
    v22 = sub_100753FF4();
    sub_1003CC71C(v14, v22);

    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1007A5CF0;
    *(v23 + 32) = v14;
    sub_100016C60(0, &qword_10092B0C0, UIViewController_ptr);
    v24 = v14;
    isa = sub_100753294().super.isa;

    [v20 setViewControllers:isa];

    v6 = v28;
    v26 = swift_unknownObjectUnownedLoadStrong();
    [v26 presentViewController:v20 animated:0 completion:0];

    v14 = v20;
  }

  else
  {
    v26 = swift_unknownObjectUnownedLoadStrong();
    [v26 presentViewController:v14 animated:0 completion:0];
  }

  (*(v11 + 8))(v13, v10);
  (*(v7 + 104))(v9, enum case for ActionOutcome.performed(_:), v6);
  sub_100752DB4();
  return (*(v7 + 8))(v9, v6);
}

void sub_10068FD64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong presentedViewController];

    if (v4)
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_10068FDF4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10068FE6C()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 48, 7);
}

double sub_10068FF04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10068FF20(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v5 = 0xD000000000000023;
      v6 = 0xD000000000000033;
      if (a1 == 10)
      {
        v6 = 0xD00000000000002BLL;
      }

      v7 = a1 == 9;
    }

    else
    {
      v5 = 0xD000000000000014;
      v6 = 0xD00000000000001BLL;
      if (a1 == 7)
      {
        v6 = 0xD00000000000001ELL;
      }

      v7 = a1 == 6;
    }

    if (v7)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696D61466E497369;
    v2 = 0xD000000000000011;
    v3 = 0x74616572436E6163;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000016;
    }

    if (!a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

void sub_100690144(uint64_t a1, int a2, char a3, char a4)
{
  v5 = v4;
  v47 = a2;
  v9 = sub_10000C518(&qword_1009305B8, &qword_1007B72C0);
  __chkstk_darwin(v9 - 8);
  v49 = &v46 - v10;
  v11 = sub_100741084();
  v12 = *(v11 - 1);
  __chkstk_darwin(v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_bodyLabel];
  v48 = a1;
  if (a3)
  {
    sub_100744644();
    if (a4)
    {
      v19 = [v5 traitCollection];
      v20 = sub_1007537E4();

      goto LABEL_7;
    }
  }

  else
  {
    sub_100744674();
    v21 = [v5 traitCollection];
    v22 = sub_1002AE534(v14, 0, v21);

    (*(v12 + 8))(v14, v11);
    v23 = [v5 traitCollection];
    v24 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v22];
    v46 = [v22 length];
    v17 = swift_allocObject();
    *(v17 + 2) = 0;
    *(v17 + 3) = v23;
    *(v17 + 4) = v24;
    v17[40] = 1;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_100047814;
    *(v25 + 24) = v17;
    v54 = sub_1000B18A8;
    v55 = v25;
    aBlock = _NSConcreteStackBlock;
    v51 = 1107296256;
    v52 = sub_100047044;
    v53 = &unk_10087FC98;
    v26 = _Block_copy(&aBlock);
    v12 = v55;
    v27 = v23;
    v11 = v24;

    [v22 enumerateAttributesInRange:0 options:v46 usingBlock:{0x100000, v26}];

    _Block_release(v26);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if ((v22 & 1) == 0)
    {
      goto LABEL_8;
    }

    __break(1u);
  }

  v20 = 0;
LABEL_7:
  v28 = [v5 traitCollection];
  v29 = sub_1002AE534(v17, v20 & 1, v28);

  (*(v12 + 8))(v17, v11);
  v30 = [v5 traitCollection];
  v31 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v29];
  v46 = [v29 length];
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = v30;
  *(v32 + 32) = v31;
  *(v32 + 40) = 1;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1002B1424;
  *(v33 + 24) = v32;
  v54 = sub_1002B1408;
  v55 = v33;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_100047044;
  v53 = &unk_10087FD10;
  v34 = _Block_copy(&aBlock);
  v35 = v30;
  v11 = v31;

  [v29 enumerateAttributesInRange:0 options:v46 usingBlock:{0x100000, v34}];

  _Block_release(v34);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
    return;
  }

LABEL_8:
  sub_10025FF08(v11);
  v36 = OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed;
  v37 = *(v18 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed);
  v38 = v47;
  *(v18 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_isCollapsed) = v47 & 1;
  if (v38)
  {
    v39 = *(v18 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_collapsedNumberOfLines);
  }

  else
  {
    v39 = 0;
  }

  [*(v18 + OBJC_IVAR____TtC22SubscribePageExtension18ExpandableTextView_textLabel) setNumberOfLines:v39];
  if (v37 != *(v18 + v36))
  {
    sub_100260550();
  }

  v40 = sub_100744684();
  v41 = &v5[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitle];
  *v41 = v40;
  v41[1] = v42;

  sub_1002AD86C();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleArtwork] = sub_100744634();

  sub_1002AD86C();

  v43 = v49;
  sub_100744664();
  v44 = sub_100744654();
  (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  v45 = OBJC_IVAR____TtC22SubscribePageExtension17ReviewSummaryView_subtitleArtworkAlignment;
  swift_beginAccess();
  sub_10069085C(v43, &v5[v45]);
  swift_endAccess();
  sub_1002AD86C();
  sub_1006908CC(v43);
  [v5 setNeedsLayout];
}

double sub_100690844(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10069085C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_1009305B8, &qword_1007B72C0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006908CC(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009305B8, &qword_1007B72C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100690954(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10069099C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100690A04(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v12 = sub_100754724();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(v5, *(v5 + 24));
  sub_100750574();
  v16 = enum case for FloatingPointRoundingRule.up(_:);
  v58 = *(v13 + 104);
  v58(v15, enum case for FloatingPointRoundingRule.up(_:), v12);
  [a1 displayScale];
  sub_10074FC44();
  v59 = v17;
  v18 = *(v13 + 8);
  v18(v15, v12);
  sub_10000C888(v6 + 5, v6[8]);
  sub_100750574();
  v58(v15, v16, v12);
  [a1 displayScale];
  sub_10074FC44();
  v54 = v19;
  v18(v15, v12);
  sub_10000C888(v6 + 13, v6[16]);
  sub_100751254();
  v57 = v20;
  v55 = v21;
  v23 = v22 + 4.0;
  sub_10000C888(v6 + 18, v6[21]);
  v24 = a4;
  sub_100751254();
  v27 = v25;
  v58 = v28;
  v29 = v23;
  if (v23 <= v25)
  {
    v23 = v25;
  }

  v30 = v29;
  v51 = v29;
  v52 = v26;
  v56 = v25;
  v60.origin.x = a2;
  v60.origin.y = a3;
  v60.size.width = v24;
  v60.size.height = a5;
  v31 = CGRectGetMinX(v60) + (v23 - v30) * 0.5;
  v32 = v59;
  v49 = v59 - v55;
  v50 = v31;
  v61.origin.x = a2;
  v61.origin.y = a3;
  v61.size.width = v24;
  v61.size.height = a5;
  MinX = CGRectGetMinX(v61);
  v53 = v32 + v54;
  v54 = v32 + v54 - v52;
  v55 = MinX + (v23 - v27) * 0.5;
  v62.origin.x = a2;
  v62.origin.y = a3;
  v46 = a3;
  v62.size.width = v24;
  v62.size.height = a5;
  v34 = CGRectGetWidth(v62) - v23 - *(v5 + 88);
  sub_10000C888((v5 + 184), *(v5 + 208));
  sub_100751254();
  v59 = v36;
  v38 = v37;
  if (v34 >= v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v34;
  }

  v63.origin.x = a2;
  v63.origin.y = a3;
  v63.size.width = v24;
  v63.size.height = a5;
  v40 = CGRectGetMaxX(v63) - v39;
  v41 = v53 - v38;
  v47 = v41;
  v48 = v39;
  sub_10000C888((v5 + 224), *(v5 + 248));
  sub_100751254();
  v45 = v43;
  if (v34 < v42)
  {
    v42 = v34;
  }

  if (*(v5 + 96) >= v42)
  {
    v44 = v42;
  }

  else
  {
    v44 = *(v5 + 96);
  }

  v53 = v44;
  v64.origin.x = a2;
  v64.origin.y = v46;
  v64.size.width = v24;
  v64.size.height = a5;
  v52 = CGRectGetMaxX(v64) - v44;
  v65.origin.x = v40;
  v65.origin.y = v41;
  v65.size.width = v39;
  v65.size.height = v59;
  CGRectGetMinY(v65);
  sub_10000C888((v5 + 104), *(v5 + 128));
  sub_100753AA4();
  sub_100751244();
  sub_10000C888((v5 + 144), *(v5 + 168));
  sub_100753AA4();
  sub_100751244();
  sub_10000C888((v5 + 184), *(v5 + 208));
  sub_100753AA4();
  sub_100751244();
  sub_10000C888((v5 + 224), *(v5 + 248));
  sub_100753AA4();
  sub_100751244();
}

double sub_100690F5C(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  sub_10000C888(v3, v3[3]);
  sub_100750574();
  sub_10000C888(v4 + 5, v4[8]);
  sub_100750574();
  sub_10000C888(v4 + 18, v4[21]);
  sub_100751254();
  return a2;
}

uint64_t sub_100691040(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B0E0();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_100691098()
{
  result = qword_1009447D8;
  if (!qword_1009447D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009447D8);
  }

  return result;
}

unint64_t sub_1006910F0()
{
  result = qword_1009447E0;
  if (!qword_1009447E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009447E0);
  }

  return result;
}

void sub_10069119C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, id a6, void *a7, char a8)
{
  v14 = a5;
  if (!a5)
  {
    if (!*(a1 + 16))
    {
      return;
    }

    v17 = a8;
    v18 = sub_100415ADC();
    if ((v19 & 1) == 0)
    {
      return;
    }

    sub_10000C5B4(*(a1 + 56) + 32 * v18, v33);
    sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v14 = v31;
    a5 = 0;
    a8 = v17;
    if (!v31)
    {
      return;
    }
  }

  v29 = a8;
  v15 = a5;
  v16 = [v14 fontDescriptor];
  if ([v16 objectForKey:UIFontDescriptorTextStyleAttribute])
  {
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  v33[0] = v31;
  v33[1] = v32;
  if (*(&v32 + 1))
  {
    type metadata accessor for TextStyle(0);
    if (swift_dynamicCast())
    {
      v8 = v30;
      a6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:v30 compatibleWithTraitCollection:a6];
      v20 = [a6 fontDescriptorWithSymbolicTraits:{objc_msgSend(v16, "symbolicTraits")}];
      v21 = objc_opt_self();
      v22 = "fontWithDescriptor:size:";
      v23 = 0.0;
      if (v20)
      {
        v24 = [v21 fontWithDescriptor:v20 size:0.0];

        v8 = a6;
        a6 = v20;
LABEL_18:

        v21 = v24;
        goto LABEL_19;
      }

LABEL_17:
      v24 = [v21 v22];
      goto LABEL_18;
    }
  }

  else
  {
    sub_1000277BC(v33);
  }

  v21 = [v14 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:a6];
  if (!v21)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_19:
  v25 = v21;
  [a7 removeAttribute:NSFontAttributeName range:{a2, a3}];
  [a7 addAttribute:NSFontAttributeName value:v25 range:{a2, a3}];

  if (v29 & 1) != 0 && *(a1 + 16) && (v26 = sub_100415ADC(), (v27) && (sub_10000C5B4(*(a1 + 56) + 32 * v26, v33), sub_100016C60(0, &qword_10092A248, NSParagraphStyle_ptr), (swift_dynamicCast()))
  {
    if (sub_100753654())
    {
      v28 = sub_100753664();
      [a7 removeAttribute:NSParagraphStyleAttributeName range:{a2, a3}];
      [a7 addAttribute:NSParagraphStyleAttributeName value:v28 range:{a2, a3}];
    }

    else
    {
    }
  }

  else
  {
  }
}

void *sub_1006915A0(void *result, uint64_t a2, uint64_t a3, int a4, id a5, uint64_t a6)
{
  if (result[3])
  {
    return [a5 addAttribute:NSForegroundColorAttributeName value:a6 range:{a2, a3}];
  }

  return result;
}

void sub_1006915D8(uint64_t a1)
{
  v2 = ASKDeviceTypeGetCurrent();
  v3 = sub_100753094();
  v5 = v4;
  if (v3 == sub_100753094() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_100754754();

    if ((v8 & 1) == 0 && (sub_100753804() & 1) == 0)
    {
      if (*(*(v1 + 88) + 16))
      {
        sub_100412104(*(*(v1 + 96) + 16));
      }
    }
  }
}

void sub_100691734(char a1@<W0>, double *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v102 = sub_100754724();
  v13 = *(v102 - 8);
  __chkstk_darwin(v102);
  v101 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100413748(_swiftEmptyArrayStorage);
  v108.origin.x = a3;
  v108.origin.y = a4;
  v108.size.width = a5;
  v108.size.height = a6;
  Width = CGRectGetWidth(v108);
  v17 = 0;
  v18 = *v6;
  v19 = *(v6 + 8);
  v105 = *(v6 + 16);
  v103 = *(v6 + 40);
  v20 = *(v6 + 48);
  if (Width <= 0.0)
  {
    goto LABEL_12;
  }

  v17 = 0;
  v21 = 0.0;
  while (1)
  {
    if (v18 + v21 <= Width)
    {
      v22 = __OFADD__(v17++, 1);
      if (v22)
      {
        break;
      }
    }

    v21 = v18 + *(v6 + 24) + v21;
    if (v21 >= Width)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  if (v103 < 2 || v17 <= 0)
  {
LABEL_12:
    sub_10000C518(&qword_1009447E8, &unk_1007D4020);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1007A5A00;
    *(v23 + 32) = *(v6 + 96);

    v24 = 1;
  }

  else
  {
    sub_10000C518(&qword_100926520, &qword_1007A9F00);
    v23 = sub_1007532E4();
    v24 = *(v23 + 16);
    if (!v24)
    {

      v25 = 0.0;
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
LABEL_65:
      *a2 = v15;
      a2[1] = v25;
      a2[2] = v26;
      a2[3] = v27;
      a2[4] = v28;
      return;
    }
  }

  v29 = *(v23 + 32);
  v89 = v23 + 32;
  v30 = *(v29 + 16);
  if (v17 < v30)
  {
    v30 = v17;
  }

  v31 = v18 * v30;
  v95 = v30;
  v32 = v30 + -1.0;
  v104 = a6;
  v99 = a3;
  if (v32 >= 0.0)
  {
    v33 = v31 + v105 * v32;
    if ((v20 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_19:
    v110.origin.x = a3;
    v110.origin.y = a4;
    v110.size.width = a5;
    v110.size.height = a6;
    v37 = CGRectGetWidth(v110);
    v100 = v33;
    v38 = (v37 - v33) * 0.5;
    v111.origin.x = a3;
    v34 = a4;
    v111.origin.y = a4;
    v35 = a5;
    v111.size.width = a5;
    v111.size.height = a6;
    MinX = CGRectGetMinX(v111) + v38;
    goto LABEL_20;
  }

  v33 = v105 * 0.0 + v31;
  if (v20)
  {
    goto LABEL_19;
  }

LABEL_17:
  v100 = v33;
  v109.origin.x = a3;
  v34 = a4;
  v109.origin.y = a4;
  v35 = a5;
  v109.size.width = a5;
  v109.size.height = a6;
  MinX = CGRectGetMinX(v109);
LABEL_20:
  v96 = 0.0;
  if (a1)
  {
    v39 = MinX;
  }

  else
  {
    v39 = 0.0;
  }

  v40 = v103;
  if (v103 >= v24)
  {
    v40 = v24;
  }

  v41 = v19 * v40 + v105 * (v24 - 1);
  v42 = 0.0;
  if (a1)
  {
    v43 = v99;
    v112.origin.x = v99;
    v112.origin.y = v34;
    v112.size.width = v35;
    v44 = v104;
    v112.size.height = v104;
    v98 = (CGRectGetHeight(v112) - v41) * 0.5;
    v113.origin.x = v43;
    v113.origin.y = v34;
    v113.size.width = v35;
    v113.size.height = v44;
    v42 = CGRectGetMinY(v113) + v98;
  }

  v86 = a2;
  v88 = *(v23 + 16);
  if (!v88)
  {
    v93 = 0.0;
    v92 = 0.0;
    v94 = 0.0;
LABEL_64:

    a2 = v86;
    v28 = v96;
    v25 = v94;
    v27 = v93;
    v26 = v92;
    goto LABEL_65;
  }

  v45 = 0;
  LODWORD(v99) = enum case for FloatingPointRoundingRule.down(_:);
  v46 = (v13 + 104);
  v47 = (v13 + 8);
  v48 = 0.0;
  v91 = v95;
  v94 = 0.0;
  v92 = 0.0;
  v93 = 0.0;
  v96 = 0.0;
  v87 = v23;
LABEL_30:
  if (*&v48 < *(v23 + 16))
  {
    v49 = *(v89 + 8 * *&v48);
    *&v90 = *&v48 + 1;
    v50 = *(*&v49 + 16);
    v97 = *&v49 + 32;
    v98 = v49;

    v51 = 0;
    v104 = v48;
    while (1)
    {
      v52 = 0uLL;
      v53 = v50;
      v54 = 0uLL;
      v55 = 0uLL;
      if (v51 != v50)
      {
        if (v51 >= *(*&v98 + 16))
        {
          goto LABEL_68;
        }

        v53 = v51 + 1;
        *&v106[0] = v51;
        sub_10000C824(v97 + 40 * v51, v106 + 8);
        v52 = v106[0];
        v54 = v106[1];
        v55 = v106[2];
      }

      v107[0] = v52;
      v107[1] = v54;
      v107[2] = v55;
      if (!v55)
      {

        v48 = v90;
        v23 = v87;
        if (*&v90 == v88)
        {
          goto LABEL_64;
        }

        goto LABEL_30;
      }

      v56 = v52;
      v57 = v101;
      v58 = v102;
      (*v46)(v101, LODWORD(v99), v102);
      sub_100753D84();
      v60 = v59;
      v62 = v61;
      (*v47)(v57, v58);
      v114.origin.x = v60;
      v114.origin.y = v62;
      v114.size.width = v18;
      v114.size.height = v19;
      v119.origin.x = v39;
      v119.origin.y = v42;
      v119.size.width = v100;
      v119.size.height = v41;
      v63 = CGRectIntersectsRect(v114, v119);
      v64 = 0;
      if (*&v48 < v103 && v63)
      {
        if (v95 <= -9.22337204e18)
        {
          goto LABEL_69;
        }

        if (v95 >= 9.22337204e18)
        {
          goto LABEL_70;
        }

        if (v56 >= v91)
        {
          v64 = 0;
        }

        else
        {
          v115.origin.x = v60;
          v115.origin.y = v62;
          v115.size.width = v18;
          v115.size.height = v19;
          v65 = CGRectGetMinX(v115);
          v66 = v94;
          if (v65 < v94)
          {
            v66 = v65;
          }

          v94 = v66;
          v116.origin.x = v60;
          v116.origin.y = v62;
          v116.size.width = v18;
          v116.size.height = v19;
          MinY = CGRectGetMinY(v116);
          v68 = v92;
          if (MinY < v92)
          {
            v68 = MinY;
          }

          v92 = v68;
          v117.origin.x = v60;
          v117.origin.y = v62;
          v117.size.width = v18;
          v117.size.height = v19;
          MaxX = CGRectGetMaxX(v117);
          v70 = v93;
          if (v93 <= MaxX)
          {
            v70 = MaxX;
          }

          v93 = v70;
          v118.origin.x = v60;
          v118.origin.y = v62;
          v118.size.width = v18;
          v118.size.height = v19;
          MaxY = CGRectGetMaxY(v118);
          v72 = v96;
          if (v96 <= MaxY)
          {
            v72 = MaxY;
          }

          v96 = v72;
          v64 = 1;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v106[0] = v15;
      v74 = sub_100412104(v45);
      v76 = v15[2];
      v77 = (v75 & 1) == 0;
      v22 = __OFADD__(v76, v77);
      v78 = v76 + v77;
      if (v22)
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v79 = v75;
      if (v15[3] < v78)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_56;
      }

      v82 = v74;
      sub_100674BE0();
      v74 = v82;
      v15 = *&v106[0];
      if (v79)
      {
LABEL_57:
        v81 = v15[7] + 40 * v74;
        *v81 = v60;
        *(v81 + 8) = v62;
        *(v81 + 16) = v18;
        *(v81 + 24) = v19;
        *(v81 + 32) = v64;
        goto LABEL_61;
      }

LABEL_59:
      v15[(v74 >> 6) + 8] |= 1 << v74;
      *(v15[6] + 8 * v74) = v45;
      v83 = v15[7] + 40 * v74;
      *v83 = v60;
      *(v83 + 8) = v62;
      *(v83 + 16) = v18;
      *(v83 + 24) = v19;
      *(v83 + 32) = v64;
      v84 = v15[2];
      v22 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v22)
      {
        goto LABEL_71;
      }

      v15[2] = v85;
LABEL_61:
      v48 = v104;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_67;
      }

      sub_10000C620(v107 + 1);
      ++v45;
      v51 = v53;
    }

    sub_10066FDF8(v78, isUniquelyReferenced_nonNull_native);
    v74 = sub_100412104(v45);
    if ((v79 & 1) != (v80 & 1))
    {
      goto LABEL_73;
    }

LABEL_56:
    v15 = *&v106[0];
    if (v79)
    {
      goto LABEL_57;
    }

    goto LABEL_59;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  sub_1007547B4();
  __break(1u);
}

void sub_100691FC4(char a1@<W0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v13 = sub_100413748(_swiftEmptyArrayStorage);
  v14 = ASKDeviceTypeGetCurrent();
  v15 = sub_100753094();
  v17 = v16;
  if (v15 == sub_100753094() && v17 == v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_100754754();
  }

  v71.origin.x = a3;
  v71.origin.y = a4;
  v71.size.width = a5;
  v71.size.height = a6;
  Width = CGRectGetWidth(v71);
  v22 = *(v6 + 16);
  v23 = v22;
  if ((v20 & 1) == 0)
  {
    v23 = *(v6 + 24);
  }

  v24 = *v6;
  v25 = *(v6 + 8);
  v26 = 0;
  if (Width > 0.0)
  {
    v27 = v24 + v23;
    v28 = 0.0;
    while (1)
    {
      if (v24 + v28 <= Width)
      {
        v29 = __OFADD__(v26++, 1);
        if (v29)
        {
          break;
        }
      }

      v28 = v27 + v28;
      if (v28 >= Width)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

LABEL_16:
  v30 = *(v6 + 96);
  v31 = *(v30 + 16);
  if (v31 >= v26)
  {
    v32 = v26;
  }

  else
  {
    v32 = *(v30 + 16);
  }

  v33 = v32 - 1;
  if (__OFSUB__(v32, 1))
  {
    goto LABEL_59;
  }

  if (v33 <= 0)
  {
    v68 = 0.0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_24:
    v68 = v22;
    goto LABEL_25;
  }

  v72.origin.x = a3;
  v72.origin.y = a4;
  v72.size.width = a5;
  v72.size.height = a6;
  v34 = CGRectGetWidth(v72);
  if (v20)
  {
    goto LABEL_24;
  }

  v68 = (v34 - v24 * v32) / v33;
LABEL_25:
  v73.origin.x = a3;
  v73.origin.y = a4;
  v73.size.width = a5;
  v73.size.height = a6;
  MinX = CGRectGetMinX(v73);
  v36 = 0.0;
  v37 = a5;
  v38 = 0.0;
  if (a1)
  {
    v39 = a3;
    v40 = a4;
    v41 = a6;
    v38 = floor(CGRectGetMidY(*(&v37 - 2)) + v25 * -0.5);
  }

  v42 = 0;
  v43 = 0.0;
  v44 = 0.0;
  v45 = 0.0;
  while (1)
  {
    v47 = 0uLL;
    v48 = v31;
    v49 = 0uLL;
    v50 = 0uLL;
    if (v42 != v31)
    {
      if (v42 >= v31)
      {
        goto LABEL_56;
      }

      v48 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        goto LABEL_57;
      }

      *&v69[0] = v42;
      sub_10000C824(v30 + 32 + 40 * v42, v69 + 8);
      v47 = v69[0];
      v49 = v69[1];
      v50 = v69[2];
    }

    v70[0] = v47;
    v70[1] = v49;
    v70[2] = v50;
    if (!v50)
    {
      *a2 = v13;
      *(a2 + 8) = v45;
      *(a2 + 16) = v44;
      *(a2 + 24) = v43;
      *(a2 + 32) = v36;
      return;
    }

    v51 = v47;
    if (v47 < v26)
    {
      v75.origin.x = MinX;
      v75.origin.y = v38;
      v75.size.width = v24;
      v75.size.height = v25;
      v52 = CGRectGetMinX(v75);
      if (v52 < v45)
      {
        v45 = v52;
      }

      v76.origin.x = MinX;
      v76.origin.y = v38;
      v76.size.width = v24;
      v76.size.height = v25;
      MinY = CGRectGetMinY(v76);
      if (MinY < v44)
      {
        v44 = MinY;
      }

      v77.origin.x = MinX;
      v77.origin.y = v38;
      v77.size.width = v24;
      v77.size.height = v25;
      MaxX = CGRectGetMaxX(v77);
      if (v43 <= MaxX)
      {
        v43 = MaxX;
      }

      v78.origin.x = MinX;
      v78.origin.y = v38;
      v78.size.width = v24;
      v78.size.height = v25;
      MaxY = CGRectGetMaxY(v78);
      if (v36 <= MaxY)
      {
        v36 = MaxY;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v69[0] = v13;
    v57 = sub_100412104(v51);
    v59 = v13[2];
    v60 = (v58 & 1) == 0;
    v29 = __OFADD__(v59, v60);
    v61 = v59 + v60;
    if (v29)
    {
      break;
    }

    v62 = v58;
    if (v13[3] < v61)
    {
      sub_10066FDF8(v61, isUniquelyReferenced_nonNull_native);
      v57 = sub_100412104(v51);
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_60;
      }

LABEL_49:
      if (v62)
      {
        goto LABEL_28;
      }

      goto LABEL_50;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_49;
    }

    v67 = v57;
    sub_100674BE0();
    v57 = v67;
    v13 = *&v69[0];
    if (v62)
    {
LABEL_28:
      v46 = v13[7] + 40 * v57;
      *v46 = MinX;
      *(v46 + 8) = v38;
      *(v46 + 16) = v24;
      *(v46 + 24) = v25;
      *(v46 + 32) = v51 < v26;
      goto LABEL_29;
    }

LABEL_50:
    v13[(v57 >> 6) + 8] |= 1 << v57;
    *(v13[6] + 8 * v57) = v51;
    v64 = v13[7] + 40 * v57;
    *v64 = MinX;
    *(v64 + 8) = v38;
    *(v64 + 16) = v24;
    *(v64 + 24) = v25;
    *(v64 + 32) = v51 < v26;
    v65 = v13[2];
    v29 = __OFADD__(v65, 1);
    v66 = v65 + 1;
    if (v29)
    {
      goto LABEL_58;
    }

    v13[2] = v66;
LABEL_29:
    v74.origin.x = MinX;
    v74.origin.y = v38;
    v74.size.width = v24;
    v74.size.height = v25;
    MinX = v68 + CGRectGetMaxX(v74);
    sub_10000C620(v70 + 1);
    v42 = v48;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  sub_1007547B4();
  __break(1u);
}

void sub_10069242C(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v8 = [a1 traitCollection];
  sub_1006915D8(v8);

  sub_100753B14();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [a1 traitCollection];
  LOBYTE(v8) = sub_100753804();

  if (v8)
  {
    sub_100691734(1, v35, v10, v12, v14, v16);
  }

  else
  {
    sub_100691FC4(1, v35, v10, v12, v14, v16);
  }

  v18 = 0;
  v27 = v35[4];
  v28 = v35[3];
  v19 = v35[0];
  v20 = *(v6 + 96);
  v21 = *(v20 + 16);
  v29 = v20 + 32;
  while (1)
  {
    v22 = 0uLL;
    v23 = v21;
    v24 = 0uLL;
    v25 = 0uLL;
    if (v18 == v21)
    {
      goto LABEL_10;
    }

    if (v18 >= v21)
    {
      break;
    }

    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_17;
    }

    *&v31 = v18;
    sub_10000C824(v29 + 40 * v18, &v31 + 8);
    v22 = v31;
    v24 = v32;
    v25 = v33;
LABEL_10:
    v34[0] = v22;
    v34[1] = v24;
    v34[2] = v25;
    if (!v25)
    {

      sub_100753B54();
      sub_100750314();
      return;
    }

    v30 = v22;
    sub_100012160((v34 + 8), &v31);
    sub_10000C888(&v31, *(&v32 + 1));
    v26 = [a1 traitCollection];
    if (*(*&v19 + 16))
    {
      sub_100412104(v30);
    }

    sub_100753AA4();

    sub_100750394();
    sub_10000C888(&v31, *(&v32 + 1));
    if (*(*&v19 + 16))
    {
      sub_100412104(v30);
    }

    sub_1007503B4();
    sub_10000C620(&v31);
    v18 = v23;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1006927BC(void *a1, double a2, double a3)
{
  v5 = v3[5];
  v8[4] = v3[4];
  v9[0] = v5;
  *(v9 + 10) = *(v3 + 90);
  v6 = v3[1];
  v8[0] = *v3;
  v8[1] = v6;
  v7 = v3[3];
  v8[2] = v3[2];
  v8[3] = v7;
  swift_getObjectType();
  sub_10069287C(a1, v8);
}

uint64_t sub_100692830@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v10 = v1[2];
  v11 = v2;
  v4 = v1[5];
  v12 = v1[4];
  v3 = v12;
  v13 = v4;
  v6 = v1[1];
  v9[0] = *v1;
  v5 = v9[0];
  v9[1] = v6;
  a1[2] = v10;
  a1[3] = v2;
  a1[4] = v3;
  a1[5] = v4;
  *a1 = v5;
  a1[1] = v6;
  return sub_100692B7C(v9, &v8);
}

void sub_10069287C(void *a1, uint64_t a2)
{
  v4 = [a1 traitCollection];
  sub_1006915D8(v4);

  sub_100753BA4();
  v6 = v5;
  v8 = v7;
  v9 = [a1 traitCollection];
  LOBYTE(v4) = sub_100753804();

  if (v4)
  {
    sub_100691734(0, v12, 0.0, 0.0, v6, v8);
  }

  else
  {
    sub_100691FC4(0, v12, 0.0, 0.0, v6, v8);
  }

  sub_100692A5C(v12);
  sub_100753BC4();
  v10 = [a1 traitCollection];
  v11 = v10;
  if ((*(a2 + 105) & 1) == 0 && *(a2 + 104) == 6)
  {
    sub_100753804();
  }

  else
  {
  }
}

__n128 sub_100692A9C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100692AC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100692B10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 106) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100692BB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100692BFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100692C64()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100743B04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  sub_100039C50(v11, qword_100982D18);
  v12 = sub_10000D0FC(v11, qword_100982D18);
  v30 = &type metadata for Double;
  v31 = &protocol witness table for Double;
  *&v29 = 0x4030000000000000;
  *&v28 = 0x4038000000000000;
  *&v25 = 0x4034000000000000;
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_100743494();
  sub_1007434C4();
  (*(v8 + 8))(v10, v7);
  (*(v4 + 104))(v6, enum case for SystemImage.chevronForward(_:), v3);
  v13 = sub_100743AE4();
  (*(v4 + 8))(v6, v3);
  v14 = [objc_opt_self() secondaryLabelColor];
  v27 = &protocol witness table for Double;
  v26 = &type metadata for Double;
  *&v25 = 0x4010000000000000;
  v15 = objc_opt_self();
  v16 = UIFontTextStyleFootnote;
  v17 = [v15 configurationWithTextStyle:v16 scale:1];

  if (qword_1009213E8 != -1)
  {
    swift_once();
  }

  v18 = sub_10000D0FC(v0, qword_1009818F0);
  v19 = v24;
  (*(v1 + 16))(v24, v18, v0);
  sub_100016C60(0, &qword_100923500, UIColor_ptr);
  v20 = sub_100753DD4();
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_100753C54();
  v22 = v21;
  sub_100012160(&v29, v12);
  sub_100012160(&v28, (v12 + 40));
  *(v12 + 10) = v13;
  *(v12 + 11) = v14;
  sub_100012160(&v25, (v12 + 96));
  *(v12 + 17) = v17;
  result = (*(v1 + 32))(&v12[v11[10]], v19, v0);
  *&v12[v11[11]] = 2;
  *&v12[v11[12]] = v20;
  *&v12[v11[13]] = v22;
  return result;
}

uint64_t sub_1006930C0()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100743B04();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  sub_100039C50(v8, qword_100982D30);
  v9 = sub_10000D0FC(v8, qword_100982D30);
  v10 = sub_1007507D4();
  v29 = v10;
  v30 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v28);
  sub_1007507C4();
  v26 = v10;
  v27 = &protocol witness table for ZeroDimension;
  sub_10000D134(&v25);
  sub_1007507C4();
  (*(v5 + 104))(v7, enum case for SystemImage.arrowUpForward(_:), v4);
  v21 = sub_100743AE4();
  (*(v5 + 8))(v7, v4);
  v11 = objc_opt_self();
  v12 = [v11 secondaryLabelColor];
  v23 = &type metadata for Double;
  v24 = &protocol witness table for Double;
  *&v22 = 0x4018000000000000;
  v13 = objc_opt_self();
  v14 = UIFontTextStyleFootnote;
  v15 = [v13 configurationWithTextStyle:v14 scale:1];

  if (qword_1009213E8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v0, qword_1009818F0);
  (*(v1 + 16))(v3, v16, v0);
  v17 = [v11 secondaryLabelColor];
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_100753C54();
  v19 = v18;
  sub_100012160(&v28, v9);
  sub_100012160(&v25, (v9 + 40));
  *(v9 + 10) = v21;
  *(v9 + 11) = v12;
  sub_100012160(&v22, (v9 + 96));
  *(v9 + 17) = v15;
  result = (*(v1 + 32))(&v9[v8[10]], v3, v0);
  *&v9[v8[11]] = 2;
  *&v9[v8[12]] = v17;
  *&v9[v8[13]] = v19;
  return result;
}

uint64_t sub_10069344C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v65 = a2;
  v5 = sub_1007507B4();
  v63 = *(v5 - 8);
  v64 = v5;
  __chkstk_darwin(v5);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100751144();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v70 = (&v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v69 = (&v54 - v10);
  __chkstk_darwin(v11);
  v68 = (&v54 - v12);
  __chkstk_darwin(v13);
  v67 = (&v54 - v14);
  v15 = sub_100750A34();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v17);
  v19 = &v54 - v18;
  __chkstk_darwin(v20);
  v23 = &v54 - v22;
  v24 = *(v3 + 120);
  v66 = v3;
  if (v24 == 1)
  {
    v58 = v21;
    sub_100750A04();
    sub_10000C888(v3, *(v3 + 24));
    sub_100750434();
    sub_10069607C(v3, v73);
    v25 = swift_allocObject();
    memcpy((v25 + 16), v73, 0x108uLL);
    v26 = v58;
    sub_100750A14();

    sub_10000C620(v74);
    v27 = *(v16 + 8);
    v56 = v16 + 8;
    v57 = v27;
    v27(v26, v15);
    sub_10000C824(v3 + 40, v74);
    v28 = *(v3 + 248);
    v29 = v67;
    v67[3] = &type metadata for CGFloat;
    v29[4] = &protocol witness table for CGFloat;
    *v29 = v28;
    v59 = v23;
    v30 = v15;
    v31 = *(v7 + 104);
    v61 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v32 = v71;
    v31(v29, enum case for Resize.Rule.replaced(_:), v71);
    v33 = enum case for Resize.Rule.unchanged(_:);
    v31(v68, enum case for Resize.Rule.unchanged(_:), v32);
    v55 = v19;
    v31(v69, v33, v32);
    v60 = v16;
    v31(v70, v33, v32);
    v73[3] = sub_100751154();
    v73[4] = &protocol witness table for Resize;
    sub_10000D134(v73);
    v34 = v66;
    sub_100751164();
    v35 = v55;
    sub_100750A14();
    v36 = v57;
    v57(v35, v30);
    sub_10000C620(v73);
    v37 = v58;
    sub_100750A04();
    sub_10069607C(v34, v73);
    v38 = swift_allocObject();
    memcpy((v38 + 16), v73, 0x108uLL);
    sub_100750A14();

    v36(v37, v30);
    v73[3] = v30;
    v73[4] = &protocol witness table for HorizontalStack;
    v39 = sub_10000D134(v73);
    v40 = v59;
    (*(v60 + 16))(v39, v59, v30);
    v75 = v30;
    v76 = &protocol witness table for HorizontalStack;
    sub_10000D134(v74);
    sub_100750A14();
    v41 = v35;
    v42 = v66;
    v36(v41, v30);
    v36(v40, v30);
  }

  else
  {
    *(swift_allocObject() + 16) = a1;
    sub_100750A04();
    sub_10000C888(v3, *(v3 + 24));
    sub_100750434();
    sub_10069607C(v3, v73);
    v43 = swift_allocObject();
    memcpy((v43 + 16), v73, 0x108uLL);
    sub_100750A14();

    sub_10000C620(v74);
    v59 = *(v16 + 8);
    v60 = v16 + 8;
    v59(v19, v15);
    sub_10000C824(v3 + 40, v74);
    v44 = *(v3 + 248);
    v45 = v67;
    v67[3] = &type metadata for CGFloat;
    v45[4] = &protocol witness table for CGFloat;
    *v45 = v44;
    v58 = v15;
    v31 = *(v7 + 104);
    v61 = (v7 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v46 = v71;
    v31(v45, enum case for Resize.Rule.replaced(_:), v71);
    v33 = enum case for Resize.Rule.unchanged(_:);
    v31(v68, enum case for Resize.Rule.unchanged(_:), v46);
    v31(v69, v33, v46);
    v31(v70, v33, v46);
    v73[3] = sub_100751154();
    v73[4] = &protocol witness table for Resize;
    sub_10000D134(v73);
    v42 = v66;
    sub_100751164();
    v47 = v58;
    v75 = v58;
    v76 = &protocol witness table for HorizontalStack;
    sub_10000D134(v74);
    sub_100750A14();
    v59(v23, v47);
  }

  sub_10000C620(v73);
  v48 = v62;
  sub_100750794();
  sub_10069607C(v42, v73);
  v49 = swift_allocObject();
  memcpy((v49 + 16), v73, 0x108uLL);
  v50 = v64;
  v72[3] = v64;
  v72[4] = &protocol witness table for VerticalStack;
  sub_10000D134(v72);
  sub_1007507A4();

  (*(v63 + 8))(v48, v50);
  v51 = v67;
  *v67 = sub_1000B2740;
  v51[1] = 0;
  v52 = v71;
  v31(v51, enum case for Resize.Rule.recalculated(_:), v71);
  v31(v68, v33, v52);
  v31(v69, v33, v52);
  v31(v70, v33, v52);
  sub_100751164();
  return sub_10000C620(v74);
}

uint64_t sub_100693D88(uint64_t a1, uint64_t a2)
{
  sub_10000C824(a2 + 128, v4);
  sub_100750714();
  sub_10000C824(a2 + 168, v4);
  return sub_100750724();
}

double sub_100693DDC(uint64_t a1, double a2, double a3)
{
  v4 = sub_100751154();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(v3, v3[3]);
  sub_100750434();
  sub_10000C888(v21, v21[3]);
  sub_100751254();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_10000C620(v21);
  sub_10000C888(v3, v3[3]);
  v22.var0 = v9;
  v22.var1 = v11;
  v22.var2 = v13;
  v22.var3 = v15;
  if (sub_100750874(v22) > 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 3;
  }

  sub_10069344C(v16, v7);
  sub_100751254();
  v18 = v17;
  (*(v5 + 8))(v7, v4);
  return v18;
}

uint64_t sub_100693FD0(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_100751154();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(v5, v5[3]);
  sub_100750434();
  sub_10000C888(v25, v25[3]);
  sub_100751254();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_10000C620(v25);
  sub_10000C888(v5, v5[3]);
  v26.var0 = v15;
  v26.var1 = v17;
  v26.var2 = v19;
  v26.var3 = v21;
  if (sub_100750874(v26) > 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = 3;
  }

  if (sub_100750A24())
  {
    v27.origin.x = a2;
    v27.origin.y = a3;
    v27.size.width = a4;
    v27.size.height = a5;
    CGRectGetWidth(v27);
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    CGRectGetHeight(v28);
  }

  sub_10069344C(v22, v13);
  sub_100751244();
  return (*(v11 + 8))(v13, v10);
}

id sub_100694214()
{
  type metadata accessor for ShelfFooterTitleButton(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  qword_1009447F0 = result;
  return result;
}

char *sub_1006943B4(uint64_t a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = sub_100754074();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconView;
  *&v5[v22] = [objc_allocWithZone(UIImageView) init];
  v5[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_hasLeadingIcon] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconHeight] = 0;
  sub_10059C530(a1, &v5[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style]);
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v32, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_1007541A4();
  v28 = sub_1007541F4();
  v29 = *(v28 - 8);
  (*(v29 + 56))(v21, 0, 1, v28);
  sub_100754224();
  sub_100754214();
  if ((*(v29 + 48))(v18, 1, v28))
  {
    sub_10003BB1C(v18, v21);
    sub_100754224();
    sub_10003BB8C(v18);
  }

  else
  {
    (*(v13 + 104))(v15, enum case for UIButton.Configuration.CornerStyle.fixed(_:), v12);
    sub_100754084();
    sub_100754224();
  }

  v30 = [v27 layer];
  [v30 setAllowsGroupBlending:0];

  [v27 addSubview:*&v27[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconView]];
  sub_10059C5F8(a1);
  return v27;
}

id sub_1006947AC()
{
  v1 = v0;
  v2 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v16 - v6;
  sub_100754214();
  v8 = sub_1007541F4();
  if ((*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    sub_10003BB1C(v7, v4);
    sub_100754224();
    sub_10003BB8C(v7);
  }

  else
  {
    v9 = &v0[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style];
    swift_beginAccess();
    v10 = v9[10];
    sub_100754194();
    sub_100754224();
  }

  v11 = [v1 titleLabel];
  if (v11)
  {
    v12 = v11;
    v13 = &v1[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style];
    swift_beginAccess();
    [v12 setNumberOfLines:*&v13[*(type metadata accessor for ShelfFooterTitleButton.Style(0) + 44)]];
  }

  v14 = &v1[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style];
  swift_beginAccess();
  [v1 setTintColor:*&v14[*(type metadata accessor for ShelfFooterTitleButton.Style(0) + 48)]];
  return [v1 setNeedsUpdateConfiguration];
}

double sub_1006949AC@<D0>(uint64_t *a1@<X8>)
{
  v3 = [v1 titleLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 imageView];
    if (v5)
    {
      v6 = v5;
      a1[3] = &type metadata for ShelfFooterTitleButton.Layout;
      a1[4] = sub_100695C8C();
      v7 = swift_allocObject();
      *a1 = v7;
      *(v7 + 40) = sub_100016C60(0, &qword_1009236D0, UILabel_ptr);
      *(v7 + 48) = &protocol witness table for UILabel;
      *(v7 + 16) = v4;
      v8 = sub_100016C60(0, &qword_10092BFC0, UIImageView_ptr);
      *(v7 + 80) = v8;
      *(v7 + 88) = &protocol witness table for UIImageView;
      *(v7 + 56) = v6;
      v9 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconView];
      *(v7 + 120) = v8;
      *(v7 + 128) = &protocol witness table for UIImageView;
      *(v7 + 96) = v9;
      v10 = v1[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_hasLeadingIcon];
      v11 = &v1[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style];
      swift_beginAccess();
      sub_10000C824(v11, v7 + 144);
      sub_10000C824(v11 + 40, v7 + 184);
      sub_10000C824(v11 + 96, v7 + 224);
      v12 = v9;
      [v6 lastBaselineFromBottom];
      v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_leadingIconHeight];
      *(v7 + 136) = v10;
      *(v7 + 264) = result;
      *(v7 + 272) = v14;
      return result;
    }
  }

  a1[3] = sub_100750A34();
  a1[4] = &protocol witness table for HorizontalStack;
  sub_10000D134(a1);
  sub_100750A04();
  return result;
}

uint64_t sub_100694B64()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10000C518(&qword_1009440A0, &unk_1007D1000);
  __chkstk_darwin(v3 - 8);
  v64 = v63 - v4;
  v5 = sub_10000C518(&unk_100944920, &qword_1007B1FC0);
  __chkstk_darwin(v5 - 8);
  v7 = v63 - v6;
  v8 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v8 - 8);
  v73 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v70 = v63 - v11;
  __chkstk_darwin(v12);
  v69 = v63 - v13;
  __chkstk_darwin(v14);
  v16 = v63 - v15;
  __chkstk_darwin(v17);
  v19 = v63 - v18;
  v20 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v21 = v20 - 8;
  v66 = *(v20 - 8);
  __chkstk_darwin(v20);
  v67 = v22;
  v68 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v72 = v63 - v24;
  v25 = sub_100750534();
  v26 = *(v25 - 8);
  *&v27 = __chkstk_darwin(v25).n128_u64[0];
  v29 = v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75.receiver = v1;
  v75.super_class = ObjectType;
  objc_msgSendSuper2(&v75, "updateConfiguration", v27);
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  v30 = v1 + OBJC_IVAR____TtC22SubscribePageExtension22ShelfFooterTitleButton_style;
  swift_beginAccess();
  (*(v26 + 16))(v29, v30 + *(v21 + 48), v25);
  v31 = [v1 traitCollection];
  v71 = sub_100753C14();

  (*(v26 + 8))(v29, v25);
  if ([v1 isHighlighted])
  {
    v65 = 1;
  }

  else
  {
    v65 = [v1 isSelected];
  }

  v32 = v72;
  sub_10059C530(v30, v72);
  sub_100754214();
  v33 = sub_1007541F4();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v36 = v34 + 48;
  v37 = v35(v19, 1, v33);
  v38 = v70;
  if (v37)
  {
    sub_10003BB1C(v19, v73);
    sub_100754224();
    sub_10003BB8C(v19);
  }

  else
  {
    v63[0] = v19;
    v39 = v68;
    sub_10059C530(v32, v68);
    v40 = (*(v66 + 80) + 25) & ~*(v66 + 80);
    v41 = swift_allocObject();
    v63[1] = v36;
    v42 = v35;
    v43 = v38;
    v44 = v71;
    *(v41 + 16) = v71;
    *(v41 + 24) = v65;
    v45 = v41 + v40;
    v32 = v72;
    sub_10059C6FC(v39, v45);
    v46 = v44;
    v38 = v43;
    v35 = v42;
    sub_100751A04();
    v47 = sub_1007519F4();
    (*(*(v47 - 8) + 56))(v7, 0, 1, v47);
    sub_100754144();
    sub_100754224();
  }

  sub_100754214();
  if (v35(v16, 1, v33))
  {
    sub_10003BB1C(v16, v73);
    sub_100754224();
    sub_10003BB8C(v16);
  }

  else
  {
    v48 = v68;
    sub_10059C530(v32, v68);
    v49 = (*(v66 + 80) + 17) & ~*(v66 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = v65;
    sub_10059C6FC(v48, v50 + v49);
    v51 = v64;
    sub_100751804();
    v52 = sub_1007517F4();
    (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
    sub_100754134();
    sub_100754224();
  }

  v53 = v69;
  sub_100754214();
  if (v35(v53, 1, v33))
  {
    sub_10003BB1C(v53, v73);
    sub_100754224();
    sub_10003BB8C(v53);
  }

  else
  {
    v54 = *(v32 + 136);
    sub_100754024();
    sub_100754224();
  }

  v55 = [v1 imageView];
  if (v55)
  {
    v56 = v55;
    v57 = [v55 layer];

    v58 = [v1 traitCollection];
    [v58 userInterfaceStyle];

    sub_100753094();
    v59 = sub_100753064();

    [v57 setCompositingFilter:v59];
  }

  sub_100754214();
  if (v35(v38, 1, v33))
  {
    sub_10003BB1C(v38, v73);
    sub_100754224();

    sub_10059C5F8(v32);
    return sub_10003BB8C(v38);
  }

  else
  {
    v61 = [objc_opt_self() clearColor];
    v62 = sub_100754034();
    sub_1007515C4();
    v62(v74, 0);
    sub_100754224();

    return sub_10059C5F8(v32);
  }
}

uint64_t sub_1006953D4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1007410D4();
  (*(*(v10 - 8) + 16))(a5, a1, v10);
  sub_1000168F0();
  v11 = a2;
  sub_1007410E4();
  v12 = type metadata accessor for ShelfFooterTitleButton.Style(0);
  v13 = *(a4 + *(v12 + 48));
  if (a3)
  {
    v14 = [v13 colorWithAlphaComponent:*(a4 + *(v12 + 52))];
  }

  else
  {
    v15 = v13;
  }

  sub_1002205EC();
  return sub_1007410E4();
}

id sub_1006954DC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = *(a3 + 88);
  if (a2)
  {
    v5 = [*(a3 + 88) colorWithAlphaComponent:*(a3 + *(type metadata accessor for ShelfFooterTitleButton.Style(0) + 52))];

    return v5;
  }

  else
  {

    return v4;
  }
}

double sub_100695690(double a1, double a2)
{
  v14.receiver = v2;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "sizeThatFits:", a1, a2);
  v6 = v5;
  v7 = [v2 titleLabel];
  if (v7)
  {

    v8 = [v2 imageView];
    if (v8)
    {

      sub_1006949AC(v12);
      sub_10000C888(v12, v13);
      [v2 layoutMargins];
      sub_100753BA4();
      v9 = [v2 traitCollection];
      sub_100751254();

      [v2 layoutMargins];
      sub_100753BC4();
      v6 = v10;
      sub_10000C620(v12);
    }
  }

  return v6;
}

uint64_t sub_1006958C4(uint64_t a1)
{
  result = type metadata accessor for ShelfFooterTitleButton.Style(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1006959B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100750534();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100695A70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100750534();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100695B14(uint64_t a1)
{
  sub_1001071F4();
  if (v1 <= 0x3F)
  {
    sub_100016C60(319, &qword_10092B280, UIImage_ptr);
    if (v2 <= 0x3F)
    {
      sub_100016C60(319, &qword_100923500, UIColor_ptr);
      if (v3 <= 0x3F)
      {
        sub_100695C24(319);
        if (v4 <= 0x3F)
        {
          sub_100750534();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100695C24(uint64_t a1)
{
  if (!qword_1009448B8)
  {
    sub_100016C60(255, &qword_1009448C0, UIImageSymbolConfiguration_ptr);
    v1 = sub_100754284();
    if (!v2)
    {
      atomic_store(v1, &qword_1009448B8);
    }
  }
}

unint64_t sub_100695C8C()
{
  result = qword_100944910;
  if (!qword_100944910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944910);
  }

  return result;
}

uint64_t sub_100695CE4()
{
  v1 = (type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  sub_10000C620((v0 + v3));
  sub_10000C620((v0 + v3 + 40));

  sub_10000C620((v0 + v3 + 96));
  v5 = v1[12];
  v6 = sub_100750534();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

id sub_100695E08(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 17) & ~*(v3 + 80));

  return sub_1006954DC(a1, v4, v5);
}

uint64_t sub_100695E7C()
{
  v1 = (type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*v1 + 64);

  sub_10000C620((v0 + v3));
  sub_10000C620((v0 + v3 + 40));

  sub_10000C620((v0 + v3 + 96));
  v5 = v1[12];
  v6 = sub_100750534();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100695FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ShelfFooterTitleButton.Style(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_1006953D4(a1, v6, v7, v8, a2);
}

uint64_t sub_100696100()
{
  sub_10000C620(v0 + 2);
  sub_10000C620(v0 + 7);
  sub_10000C620(v0 + 12);
  sub_10000C620(v0 + 18);
  sub_10000C620(v0 + 23);
  sub_10000C620(v0 + 28);

  return _swift_deallocObject(v0, 280, 7);
}

double sub_100696238(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_100754724();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v75 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007504F4();
  v74 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  *&v15 = __chkstk_darwin(v14 - 8).n128_u64[0];
  v82 = &v74 - v16;
  v88 = a5;
  [a5 pageMarginInsets];
  v99._object = 0x800000010076DF60;
  v99._countAndFlagsBits = 0xD000000000000010;
  v100._countAndFlagsBits = 0;
  v100._object = 0xE000000000000000;
  v17 = sub_1007458B4(v99, v100);
  v19 = sub_10017093C(v17, v18);
  v77 = v9;
  v78 = v8;
  v76 = v11;
  v83 = v13;
  if (v19 > 2)
  {
    if (v19 - 3 < 2)
    {
      if (qword_100920390 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_10097DE88;
      goto LABEL_21;
    }

    if (v19 == 5)
    {
      if (qword_100920398 != -1)
      {
        swift_once();
      }

      v20 = &xmmword_10097DEE0;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (!v19)
  {
LABEL_15:
    if (qword_100920378 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_10097DD80;
    goto LABEL_21;
  }

  if (v19 == 1)
  {
    if (qword_100920380 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_10097DDD8;
  }

  else
  {
    if (qword_100920388 != -1)
    {
      swift_once();
    }

    v20 = &xmmword_10097DE30;
  }

LABEL_21:
  v21 = v20[4];
  *&v97[16] = v20[3];
  *&v97[32] = v21;
  v98 = *(v20 + 10);
  v22 = v20[2];
  v96 = v20[1];
  *v97 = v22;
  v95 = *v20;
  v23 = *&v97[40];
  v24 = v98;
  v86 = *&v97[24];
  v87 = *&v97[8];
  v26 = *(&v96 + 1);
  v25 = v22;
  v28 = *(&v95 + 1);
  v27 = v96;
  v29 = v95;
  sub_100170CF0(&v95, v92);
  v92[0] = __PAIR128__(v28, v29);
  v92[1] = __PAIR128__(v26, v27);
  *&v93[0] = v25;
  *(v93 + 8) = v87;
  *(&v93[1] + 8) = v86;
  *(&v93[2] + 1) = v23;
  v94 = v24;
  v98 = v24;
  v95 = __PAIR128__(v28, v29);
  v96 = __PAIR128__(v26, v27);
  *v97 = v93[0];
  *&v97[16] = v93[1];
  *&v97[32] = v93[2];
  v30 = v88;
  [v88 pageMarginInsets];
  v31 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v85 = sub_100170988(&v95);

  *&v86 = a1;
  sub_10074E904();
  v33 = v32;
  v34 = sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_1009203B8 != -1)
  {
    swift_once();
  }

  v84 = sub_100750534();
  v35 = sub_10000D0FC(v84, qword_10097DF38);
  v36 = [v30 traitCollection];
  v81 = v35;
  v37 = sub_100753C14();

  sub_10000C518(&unk_100929CA0, &qword_1007A6610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A6580;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v39 = qword_100920138;
  v40 = NSParagraphStyleAttributeName;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = [qword_10097D250 paragraphStyleWithBaseWritingDirection:-1];
  v42 = sub_100016C60(0, &qword_10092A248, NSParagraphStyle_ptr);
  *(inited + 40) = v41;
  *(inited + 64) = v42;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v34;
  *(inited + 80) = v37;
  v43 = NSFontAttributeName;
  v80 = v37;
  sub_100413A18(inited);
  swift_setDeallocating();
  sub_10000C518(&unk_100923510, &unk_1007A6620);
  swift_arrayDestroy();
  v44 = objc_allocWithZone(NSMutableAttributedString);
  v45 = sub_100753064();
  type metadata accessor for Key(0);
  sub_10069740C(&qword_1009276F0, type metadata accessor for Key, &unk_1007A543C);
  v79 = v33;
  isa = sub_100752F34().super.isa;

  v47 = [v44 initWithString:v45 attributes:isa];

  *&v87 = v47;
  if (v85)
  {
    v48 = v85;
    sub_100413A18(_swiftEmptyArrayStorage);
    v49 = objc_allocWithZone(NSAttributedString);
    v50 = sub_100753064();
    v51 = sub_100752F34().super.isa;

    v52 = [v49 initWithString:v50 attributes:v51];

    [v87 appendAttributedString:v52];
    v53 = [objc_allocWithZone(NSTextAttachment) init];
    [v53 setImage:v48];
    [(UIImage *)v48 size];
    [v53 setBounds:{0.0, -v23, v54, v55}];
    v56 = [objc_opt_self() attributedStringWithAttachment:v53];
    [v87 appendAttributedString:v56];

    sub_100170D28(v92);
  }

  else
  {

    sub_100170D28(v92);
  }

  v57 = v84;
  v58 = *(v84 - 8);
  v59 = v82;
  (*(v58 + 16))(v82, v81, v84);
  (*(v58 + 56))(v59, 0, 1, v57);
  v60 = sub_10074F3F4();
  v90 = v60;
  v61 = sub_10069740C(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v91 = v61;
  v62 = sub_10000D134(v89);
  v63 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v64 = *(*(v60 - 8) + 104);
  v64(v62, enum case for Feature.measurement_with_labelplaceholder(_:), v60);
  sub_10074FC74();
  sub_10000C620(v89);
  v65 = v88;
  sub_10074CCA4();
  sub_10006A144(v59);
  if (qword_1009203C8 != -1)
  {
    swift_once();
  }

  v66 = sub_100750B04();
  sub_10000D0FC(v66, qword_10097DF68);
  sub_100750584();
  if (qword_1009203D0 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v66, qword_10097DF80);
  sub_100750554();
  v82 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v82 setMaximumNumberOfLines:0];
  sub_10074E914();
  if (v67)
  {
    if (qword_1009203C0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v84, qword_10097DF50);
    v90 = v60;
    v91 = v61;
    v68 = sub_10000D134(v89);
    v64(v68, v63, v60);
    sub_10074FC74();
    sub_10000C620(v89);
    v69 = v88;
    sub_10074CCB4();

    if (qword_1009203D8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v66, qword_10097DF98);
    sub_100750584();
    v65 = v69;
    v70 = v83;
    v71 = &stru_1008F2000;
    if (qword_1009203E0 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v66, qword_10097DFB0);
    sub_100750554();
  }

  else
  {
    v70 = v83;
    v71 = &stru_1008F2000;
  }

  if (sub_10074E924())
  {
    sub_10074F2A4();
    sub_10074F2A4();
    sub_100750504();
    if ((sub_10074E8F4() & 1) == 0)
    {
      [v65 v71[109].name];
      [v65 v71[109].name];
    }

    sub_1007504C4();
    if (qword_1009203E8 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v66, qword_10097DFC8);
    v72 = v75;
    sub_1007502D4();
    sub_100750564();

    (*(v77 + 8))(v72, v78);
    (*(v74 + 8))(v70, v76);
  }

  else
  {
  }

  return a2;
}

id sub_100697040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - v9;
  v11 = sub_1007504F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_quoteView];
  v16 = sub_10074E904();
  sub_10016E5F4(v16, v17);
  v18 = sub_10074E914();
  sub_10016ED68(v18, v19);
  v15[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_isFullWidthArtwork] = sub_10074E8F4() & 1;
  sub_10016F158();
  if (sub_10074E924())
  {
    sub_10074F2A4();
    sub_10074F2A4();
    sub_100750504();
    (*(v12 + 16))(v10, v14, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v20 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_1005C4B2C(v10, &v15[v20]);
    swift_endAccess();
    [*&v15[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView] setHidden:0];
    [v15 setNeedsLayout];
    v21 = [v6 contentView];
    sub_100016C60(0, &qword_100922300, UIView_ptr);
    sub_1007477B4();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;

    v40.origin.x = v23;
    v40.origin.y = v25;
    v40.size.width = v27;
    v40.size.height = v29;
    Width = CGRectGetWidth(v40);
    sub_1007504C4();
    v32 = v31;

    (*(v12 + 8))(v14, v11);
    v33 = &v6[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_preferredArtworkSize];
    *v33 = Width;
    *(v33 + 1) = v32;
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v34 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkAspectRatio;
    swift_beginAccess();
    sub_1005C4B2C(v10, &v15[v34]);
    swift_endAccess();
    [*&v15[OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView] setHidden:1];
    [v15 setNeedsLayout];
    v35 = &v6[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_preferredArtworkSize];
    *v35 = 0;
    *(v35 + 1) = 0;
  }

  [a5 pageMarginInsets];
  v37 = v36;
  [a5 pageMarginInsets];
  return [v15 setLayoutMargins:{0.0, v37, 0.0}];
}

uint64_t sub_10069740C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100697454(double a1, uint64_t a2, void *a3, uint64_t a4)
{
  v14 = a4;
  v11 = a3;
  v13 = sub_1007504F4();
  v4 = *(v13 - 8);
  __chkstk_darwin(v13);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10074EB24();
  v8 = *(v7 + 16);
  v15 = v7 + 32;
  v12 = (v4 + 8);
  v16 = v7;

  v9 = 0;
  while (1)
  {
    if (v9 == v8)
    {
      v24 = 0;
      v9 = v8;
      v22 = 0u;
      v23 = 0u;
      goto LABEL_8;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *(v16 + 16))
    {
      goto LABEL_18;
    }

    sub_10000C824(v15 + 40 * v9++, &v22);
LABEL_8:
    v20[0] = v22;
    v20[1] = v23;
    v21 = v24;
    if (!*(&v23 + 1))
    {
      swift_bridgeObjectRelease_n();
      return;
    }

    sub_100012160(v20, v19);
    sub_10000C824(v19, v17);
    sub_10000C518(&qword_1009242A0, &qword_1007A6400);
    sub_10074E934();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v18 = 0;
    }

    sub_10000C620(v19);
    if (v18)
    {
      if (sub_10074E924())
      {
        sub_10074F2A4();
        sub_10074F2A4();
        sub_100750504();
        if ((sub_10074E8F4() & 1) == 0)
        {
          [v11 pageMarginInsets];
        }

        sub_1007504C4();
        sub_10074F374();
        sub_100744214();

        (*v12)(v6, v13);
      }

      else
      {
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1006977A0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_100746674();
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a2, v5);
}

uint64_t sub_100697820(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_100746674();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, a2, a2, v5);
}

uint64_t sub_1006978B4(uint64_t a1, __n128 a2)
{
  result = sub_100746674();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10069793C@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_100751E24();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  __chkstk_darwin(v2);
  v51 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100751B84();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_100944B58, &qword_1007D4488);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v42 - v9;
  v43 = sub_10000C518(&qword_100944B60, &qword_1007D4490);
  __chkstk_darwin(v43);
  v12 = v42 - v11;
  v13 = sub_10000C518(&qword_100944B68, &qword_1007D4498);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  __chkstk_darwin(v13);
  v16 = v42 - v15;
  v17 = sub_10000C518(&qword_100944B70, &qword_1007D44A0);
  v18 = *(v17 - 8);
  v49 = v17;
  v50 = v18;
  __chkstk_darwin(v17);
  v46 = v42 - v19;
  v56 = v1;
  sub_10000C518(&qword_100944B78, &qword_1007D44A8);
  sub_10002DDC8(&qword_100944B80, &qword_100944B78, &qword_1007D44A8, &protocol conformance descriptor for TupleView<A>);
  sub_100751ED4();
  sub_100751B74();
  sub_10002DDC8(&qword_100944B88, &qword_100944B58, &qword_1007D4488, &protocol conformance descriptor for List<A, B>);
  v20 = v44;
  sub_100752044();
  (*(v45 + 8))(v6, v20);
  (*(v8 + 8))(v10, v7);
  v21 = sub_100751E54();
  v22 = v43;
  v12[*(v43 + 36)] = v21;
  v55 = v42[1];
  v23 = sub_10000C518(&qword_100944B90, &qword_1007D44B0);
  v24 = sub_10069D014();
  v25 = sub_10000C724(&qword_100944BB0, &qword_1007D44C0);
  v26 = sub_10002DDC8(&qword_100944BB8, &qword_100944BB0, &qword_1007D44C0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v57 = v25;
  v58 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100752034();
  sub_10069D15C(v12);
  v28 = v51;
  sub_100751E14();
  v57 = v22;
  v58 = v23;
  v59 = v24;
  v60 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v46;
  v31 = v47;
  v32 = v52;
  sub_100751FC4();
  v33 = v32;
  (*(v53 + 8))(v28, v32);
  v34 = v31;
  (*(v48 + 8))(v16, v31);
  v57 = sub_100746634();
  v58 = v35;
  sub_1000D5C0C();
  v36 = sub_100751F24();
  v38 = v37;
  LOBYTE(v31) = v39;
  v57 = v34;
  v58 = v33;
  v59 = v29;
  v60 = &protocol witness table for EnabledTextSelectability;
  swift_getOpaqueTypeConformance2();
  v40 = v49;
  sub_100751FE4();
  sub_1004A660C(v36, v38, v31 & 1);

  return (*(v50 + 8))(v30, v40);
}

void sub_100697FCC(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for DebugMetricsEventDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000C518(&qword_100944BD0, &qword_1007D44D0);
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin(v7);
  v44 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v48 = v38 - v10;
  v11 = type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  __chkstk_darwin(v11);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10000C518(&qword_100944BD8, &unk_1007D44D8);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v38 - v16;
  v18 = sub_100746674();
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  sub_100751B54();
  sub_10069D1CC(&qword_1009273E8, type metadata accessor for DebugMetricsEventDetailView.Summary, &unk_1007D4334);
  v47 = v17;
  sub_100752004();
  sub_10069D214(v13);
  v19 = sub_100746654();
  v20 = *(v19 + 16);
  if (!v20)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v38[0] = v4;
  v38[1] = v5;
  v39 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100631124(v20, 0);
  v22 = sub_1007271D0(&v49, v21 + 4, v20, v19);

  sub_1001A8F34();
  if (v22 == v20)
  {
    v6 = v39;
    v4 = v38[0];
LABEL_5:
    v49 = v21;
    sub_1004537F4(&v49);

    swift_getKeyPath();
    sub_10069D270(a1, v6);
    v23 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v24 = swift_allocObject();
    sub_10069D3A0(v6, v24 + v23);
    sub_10000C518(&unk_100928A70, &unk_1007AC470);
    sub_10002DDC8(&qword_100944BE0, &unk_100928A70, &unk_1007AC470, &protocol conformance descriptor for [A]);
    sub_10069D484();
    v25 = v48;
    sub_1007520A4();
    v26 = v40;
    v27 = v41;
    v28 = *(v41 + 16);
    v29 = v43;
    v28(v40, v47, v43);
    v30 = v44;
    v31 = v45;
    v39 = *(v45 + 16);
    v32 = v25;
    v33 = v46;
    (v39)(v44, v32, v46);
    v34 = v42;
    v28(v42, v26, v29);
    v35 = sub_10000C518(&qword_100944BF0, &qword_1007D4508);
    (v39)(&v34[*(v35 + 48)], v30, v33);
    v36 = *(v31 + 8);
    v36(v48, v33);
    v37 = *(v27 + 8);
    v37(v47, v29);
    v36(v30, v33);
    v37(v26, v29);
    return;
  }

  __break(1u);

  __break(1u);
}

double sub_100698578@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = sub_100746654();
  if (*(v5 + 16) && (v6 = sub_1003861D0(v4, v3), (v7 & 1) != 0))
  {
    sub_10000C5B4(*(v5 + 56) + 32 * v6, &v10);
  }

  else
  {

    v10 = 0u;
    v11 = 0u;
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  result = *&v10;
  v9 = v11;
  *(a2 + 16) = v10;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_100698610(uint64_t a1)
{
  v2 = sub_100751DA4();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10000C518(&qword_100944BB0, &qword_1007D44C0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100751D94();
  v9 = a1;
  sub_10000C518(&qword_100944BC0, &qword_1007D44C8);
  sub_10002DDC8(&qword_100944BC8, &qword_100944BC0, &qword_1007D44C8, &protocol conformance descriptor for ShareLink<A, B, C, D>);
  sub_100751B34();
  sub_10002DDC8(&qword_100944BB8, &qword_100944BB0, &qword_1007D44C0, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_100751DB4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10069887C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100752054();
  *a1 = result;
  return result;
}

uint64_t sub_1006988BC()
{
  v0 = sub_100741304();
  v64 = *(v0 - 8);
  v65 = v0;
  __chkstk_darwin(v0);
  v63 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100741384();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v60 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100741364();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100741324();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100741344();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007411D4();
  __chkstk_darwin(v10 - 8);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007416E4();
  __chkstk_darwin(v12 - 8);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100741644();
  __chkstk_darwin(v14 - 8);
  v15 = sub_100741574();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10000C518(&qword_100944B48, &qword_1007D4448);
  __chkstk_darwin(v16 - 8);
  v18 = &v45 - v17;
  v19 = sub_10000C518(&qword_100944B50, &qword_1007D4450);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - v20;
  v22 = sub_1007413B4();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v45 - v27;
  __chkstk_darwin(v29);
  v46 = &v45 - v30;
  __chkstk_darwin(v31);
  v47 = &v45 - v32;
  sub_100039C50(v33, qword_100944980);
  v48 = sub_10000D0FC(v22, qword_100944980);
  sub_1007412A4();
  v34 = sub_1007412B4();
  (*(*(v34 - 8) + 56))(v21, 0, 1, v34);
  sub_100741284();
  v35 = sub_100741294();
  (*(*(v35 - 8) + 56))(v18, 0, 1, v35);
  sub_100741524();
  sub_1007415F4();
  sub_1007416C4();
  sub_1007411C4();
  sub_1007412D4();
  v36 = v52;
  sub_100741314();
  v37 = v51;
  sub_100741334();
  (*(v55 + 8))(v36, v56);
  sub_1007412E4();
  (*(v53 + 8))(v37, v54);
  v38 = *(v23 + 8);
  v38(v25, v22);
  v39 = v57;
  sub_100741354();
  v40 = v46;
  sub_100741394();
  (*(v58 + 8))(v39, v59);
  v38(v28, v22);
  v41 = v60;
  sub_100741374();
  v42 = v47;
  sub_1007413A4();
  (*(v61 + 8))(v41, v62);
  v38(v40, v22);
  v43 = v63;
  sub_1007412F4();
  sub_1007412C4();
  (*(v64 + 8))(v43, v65);
  return (v38)(v42, v22);
}

uint64_t sub_100699038@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C518(&qword_100944AB8, &qword_1007D4388);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_10000C518(&qword_100944AC0, &qword_1007D4390);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_10000C518(&qword_100944AC8, &qword_1007D4398);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  *v14 = sub_100751D14();
  *(v14 + 1) = 0x401C000000000000;
  v14[16] = 0;
  v15 = sub_10000C518(&qword_100944AD0, &qword_1007D43A0);
  sub_1006993E0(v1, &v14[*(v15 + 44)]);
  sub_100746664();
  sub_1007529D4();
  v16 = sub_1007532D4();

  v17 = 0;
  KeyPath = 0;
  v19 = 0;
  if (v16)
  {
    sub_100752054();
    sub_100751D24();
    v20 = sub_100751D44();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v17 = sub_100752064();

    sub_10000C8CC(v8, &qword_100944AC0, &qword_1007D4390);
    v21 = sub_100751E64();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v19 = sub_100751E74();
    sub_10000C8CC(v5, &qword_100944AB8, &qword_1007D4388);
    KeyPath = swift_getKeyPath();
  }

  sub_100016B4C(v14, v11, &qword_100944AC8, &qword_1007D4398);
  sub_100016B4C(v11, a1, &qword_100944AC8, &qword_1007D4398);
  v22 = sub_10000C518(&qword_100944AD8, &qword_1007D43A8);
  v23 = a1 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = (a1 + *(v22 + 64));
  sub_10069CD70(v17, KeyPath, v19);
  sub_10069CDC0(v17);
  *v24 = v17;
  v24[1] = KeyPath;
  v24[2] = v19;
  sub_10000C8CC(v14, &qword_100944AC8, &qword_1007D4398);
  sub_10069CDC0(v17);
  return sub_10000C8CC(v11, &qword_100944AC8, &qword_1007D4398);
}

uint64_t sub_1006993E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_10000C518(&qword_100944AE0, &qword_1007D43E0);
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v37 = sub_100751C94();
  LOBYTE(v54[0]) = 1;
  sub_100699840(v40);
  *(v39 + 7) = v40[0];
  *(&v39[1] + 7) = v40[1];
  *(&v39[2] + 7) = v41[0];
  v39[3] = *(v41 + 9);
  v36 = LOBYTE(v54[0]);
  v32 = sub_100751EC4();
  KeyPath = swift_getKeyPath();
  v54[0] = sub_100746614();
  swift_getKeyPath();
  sub_10000C518(&qword_100944AE8, &qword_1007D4408);
  sub_10000C518(&qword_100944AF0, &qword_1007D4410);
  sub_10002DDC8(&qword_100944AF8, &qword_100944AE8, &qword_1007D4408, &protocol conformance descriptor for [A]);
  sub_10069CE64();
  v30 = v7;
  sub_1007520A4();
  v29 = sub_100751C94();
  LOBYTE(v54[0]) = 1;
  sub_100699BD4(a1, v42);
  *&v38[7] = v42[0];
  *&v38[23] = v42[1];
  *&v38[39] = v42[2];
  *&v38[55] = v42[3];
  v8 = v54[0];
  v9 = v33;
  v10 = *(v34 + 16);
  v11 = v31;
  v10(v33, v7, v31);
  v43[0] = v37;
  v43[1] = 0;
  LOBYTE(v44[0]) = v36;
  *(v44 + 1) = v39[0];
  *(&v44[1] + 1) = v39[1];
  *(&v44[3] + 1) = v39[3];
  *(&v44[2] + 1) = v39[2];
  v12 = v32;
  *(&v44[4] + 1) = KeyPath;
  v45 = v32;
  v13 = v44[0];
  *a2 = v37;
  *(a2 + 16) = v13;
  v14 = v44[1];
  v15 = v44[2];
  v16 = v44[3];
  v17 = v44[4];
  *(a2 + 96) = v12;
  *(a2 + 64) = v16;
  *(a2 + 80) = v17;
  *(a2 + 32) = v14;
  *(a2 + 48) = v15;
  v18 = sub_10000C518(&qword_100944B28, &qword_1007D4428);
  v10((a2 + *(v18 + 48)), v9, v11);
  v19 = a2 + *(v18 + 64);
  v20 = v29;
  v46[0] = v29;
  v46[1] = 0;
  v47[0] = v8;
  *&v47[1] = *v38;
  *&v47[17] = *&v38[16];
  *&v47[33] = *&v38[32];
  *&v47[49] = *&v38[48];
  v21 = *&v38[63];
  *&v47[64] = *&v38[63];
  v22 = *v47;
  *v19 = v29;
  *(v19 + 16) = v22;
  v23 = *&v47[16];
  v24 = *&v47[32];
  v25 = *&v47[48];
  *(v19 + 80) = v21;
  *(v19 + 48) = v24;
  *(v19 + 64) = v25;
  *(v19 + 32) = v23;
  sub_100016B4C(v43, v54, &qword_100944B30, &qword_1007D4430);
  sub_100016B4C(v46, v54, &qword_100944B38, &unk_1007D4438);
  v26 = *(v34 + 8);
  v26(v30, v11);
  v48[0] = v20;
  v48[1] = 0;
  v49 = v8;
  v51 = *&v38[16];
  v52 = *&v38[32];
  *v53 = *&v38[48];
  *&v53[15] = *&v38[63];
  v50 = *v38;
  sub_10000C8CC(v48, &qword_100944B38, &unk_1007D4438);
  v26(v33, v11);
  v54[0] = v37;
  v54[1] = 0;
  v55 = v36;
  v56 = v39[0];
  v57 = v39[1];
  v58 = v39[2];
  v59 = v39[3];
  v60 = KeyPath;
  v61 = v32;
  return sub_10000C8CC(v54, &qword_100944B30, &qword_1007D4430);
}

double sub_100699840@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10000C518(&qword_100944AC0, &qword_1007D4390);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  sub_1007465F4();
  sub_100752054();
  sub_100751D34();
  v5 = sub_100751D44();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = sub_100752064();

  sub_10000C8CC(v4, &qword_100944AC0, &qword_1007D4390);
  v18 = sub_100746634();
  v19 = v7;
  sub_1000D5C0C();
  v8 = sub_100751F24();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v12 &= 1u;
  LOBYTE(v18) = v12;
  v20 = 0;
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v14;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 3;
  *(a1 + 56) = 0;

  sub_1004A65FC(v8, v10, v12);

  sub_1004A660C(v8, v10, v12);

  return result;
}

uint64_t sub_100699A0C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_100751CD4();
  __chkstk_darwin(v10 - 8);
  if (a4)
  {
    sub_100751CC4();
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_100751CB4(v25);
    v26._countAndFlagsBits = a1;
    v26._object = a2;
    sub_100751CA4(v26);
    v27._countAndFlagsBits = 8250;
    v27._object = 0xE200000000000000;
    sub_100751CB4(v27);
    v28._countAndFlagsBits = a3;
    v28._object = a4;
    sub_100751CA4(v28);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    sub_100751CB4(v29);
    sub_100751CE4();
    v11 = sub_100751F14();
    v13 = v12;
    v15 = v14;
    sub_100751E94();
    v16 = sub_100751F04();
    a4 = v17;
    v19 = v18;
    v21 = v20;

    sub_1004A660C(v11, v13, v15 & 1);

    result = swift_getKeyPath();
    v23 = v19 & 1;
    v24 = 1;
  }

  else
  {
    v16 = 0;
    v23 = 0;
    v21 = 0;
    result = 0;
    v24 = 0;
  }

  *a5 = v16;
  *(a5 + 8) = a4;
  *(a5 + 16) = v23;
  *(a5 + 24) = v21;
  *(a5 + 32) = result;
  *(a5 + 40) = v24;
  *(a5 + 48) = 0;
  return result;
}

double sub_100699BD4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v3 = sub_10000C518(&unk_100928740, &qword_1007AC280);
  __chkstk_darwin(v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_100741454();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746624();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v54 = a1;
    (*(v7 + 32))(v9, v5, v6);
    v53 = v6;
    if (qword_100921CB8 != -1)
    {
      swift_once();
    }

    v36 = sub_1007413B4();
    sub_10000D0FC(v36, qword_100944980);
    sub_10069D1CC(&qword_100944B40, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    sub_100741434();
    v56 = v58;
    v57 = v59;
    sub_1000D5C0C();
    v37 = sub_100751F24();
    v39 = v38;
    v52 = v9;
    v41 = v40;
    sub_100751EB4();
    v42 = sub_100751F04();
    v44 = v43;
    v46 = v45;

    sub_1004A660C(v37, v39, v41 & 1);

    LODWORD(v58) = sub_100751DC4();
    v10 = sub_100751EE4();
    v11 = v47;
    LOBYTE(v37) = v48;
    v13 = v49;
    sub_1004A660C(v42, v44, v46 & 1);

    (*(v7 + 8))(v52, v53);
    v12 = v37 & 1;
    sub_1004A65FC(v10, v11, v37 & 1);

    v14 = sub_100746644();
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_7:
    v26 = 0;
    v28 = 0;
    v35 = 0;
    v32 = 0;
    goto LABEL_8;
  }

  sub_10000C8CC(v5, &unk_100928740, &qword_1007AC280);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = sub_100746644();
  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_3:
  v58 = v14;
  v59 = v15;
  sub_1000D5C0C();
  v16 = sub_100751F24();
  v18 = v17;
  v20 = v19;
  sub_100751EB4();
  v21 = sub_100751F04();
  v53 = v11;
  v54 = v10;
  v23 = v22;
  v25 = v24;
  v52 = v13;

  sub_1004A660C(v16, v18, v20 & 1);

  LODWORD(v58) = sub_100751DC4();
  v26 = sub_100751EE4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v25 & 1;
  v34 = v23;
  v11 = v53;
  v10 = v54;
  sub_1004A660C(v21, v34, v33);
  v13 = v52;

  v35 = v30 & 1;
  sub_1004A65FC(v26, v28, v35);

LABEL_8:
  sub_1004A6A80(v10, v11, v12, v13);
  sub_1004A6A80(v26, v28, v35, v32);
  sub_1004A6AC4(v10, v11, v12, v13);
  sub_1004A6AC4(v26, v28, v35, v32);
  v50 = v55;
  *v55 = v10;
  v50[1] = v11;
  v50[2] = v12;
  v50[3] = v13;
  v50[4] = v26;
  v50[5] = v28;
  v50[6] = v35;
  v50[7] = v32;
  sub_1004A6AC4(v26, v28, v35, v32);
  return sub_1004A6AC4(v10, v11, v12, v13);
}

uint64_t sub_10069A0B8@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v35 = sub_10000C518(&qword_100944C08, &qword_1007D45C0);
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = v30 - v3;
  v36 = sub_10000C518(&qword_100944C10, &qword_1007D45C8);
  __chkstk_darwin(v36);
  v38 = v30 - v5;
  v32 = sub_10000C518(&qword_100944C18, &qword_1007D45D0);
  __chkstk_darwin(v32);
  v33 = v30 - v6;
  v37 = sub_10000C518(&qword_100944C20, &qword_1007D45D8);
  __chkstk_darwin(v37);
  v34 = v30 - v7;
  v8 = sub_10000C518(&qword_100944C28, &qword_1007D45E0);
  __chkstk_darwin(v8);
  v10 = v30 - v9;
  v11 = sub_10000C518(&qword_100944C30, &qword_1007D45E8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v30 - v13;
  v31 = sub_10000C518(&qword_100944C38, &unk_1007D45F0);
  __chkstk_darwin(v31);
  v16 = v30 - v15;
  sub_100016B4C((v1 + 2), &v41, &unk_100923520, &qword_1007A5A70);
  if (*(&v42[0] + 1))
  {
    sub_10000C518(&qword_100944C70, &qword_1007D4608);
    if (swift_dynamicCast())
    {
      v17 = v40;
      if (*(v40 + 16))
      {
        sub_10069D9F0(v1, &v41);
        v18 = swift_allocObject();
        v30[1] = v30;
        v19 = v42[0];
        *(v18 + 16) = v41;
        *(v18 + 32) = v19;
        *(v18 + 48) = v42[1];
        *(v18 + 64) = v17;
        __chkstk_darwin(v18);
        v30[-2] = v1;
        sub_10000C518(&qword_100944C78, &qword_1007D4610);
        sub_10069D8A8();
        sub_10069DAEC();
        sub_100751B94();
        (*(v12 + 16))(v10, v14, v11);
        swift_storeEnumTagMultiPayload();
        sub_10002DDC8(&qword_100944C50, &qword_100944C30, &qword_1007D45E8, &protocol conformance descriptor for DisclosureGroup<A, B>);
        sub_100751D64();
        (*(v12 + 8))(v14, v11);
      }

      else
      {

        v27 = *v1;
        v28 = v1[1];
        sub_100016B4C((v1 + 2), v42, &unk_100923520, &qword_1007A5A70);
        *&v41 = v27;
        *(&v41 + 1) = v28;
        sub_10069D700(&v41, v10);
        swift_storeEnumTagMultiPayload();
        sub_10002DDC8(&qword_100944C50, &qword_100944C30, &qword_1007D45E8, &protocol conformance descriptor for DisclosureGroup<A, B>);
        sub_10069D8A8();

        sub_100751D64();
        sub_10069D8FC(&v41);
      }

      sub_100016B4C(v16, v33, &qword_100944C38, &unk_1007D45F0);
      swift_storeEnumTagMultiPayload();
      sub_10069D7F0();
      sub_10002DDC8(&qword_100944C60, &qword_100944C08, &qword_1007D45C0, &protocol conformance descriptor for DisclosureGroup<A, B>);
      v29 = v34;
      sub_100751D64();
      sub_100016B4C(v29, v38, &qword_100944C20, &qword_1007D45D8);
      swift_storeEnumTagMultiPayload();
      sub_10069D738();
      sub_10069D8A8();
      sub_100751D64();
      sub_10000C8CC(v29, &qword_100944C20, &qword_1007D45D8);
      return sub_10000C8CC(v16, &qword_100944C38, &unk_1007D45F0);
    }
  }

  else
  {
    sub_10000C8CC(&v41, &unk_100923520, &qword_1007A5A70);
  }

  sub_100016B4C((v1 + 2), &v41, &unk_100923520, &qword_1007A5A70);
  if (*(&v42[0] + 1))
  {
    sub_10000C518(&qword_10092F1E8, &qword_1007D4600);
    if (swift_dynamicCast())
    {
      v20 = v40;
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      __chkstk_darwin(v21);
      v30[-2] = v1;
      sub_10000C518(&qword_100944BD0, &qword_1007D44D0);
      sub_10069D8A8();
      sub_10069D96C();
      sub_100751B94();
      v22 = v35;
      (*(v2 + 16))(v33, v4, v35);
      swift_storeEnumTagMultiPayload();
      sub_10069D7F0();
      sub_10002DDC8(&qword_100944C60, &qword_100944C08, &qword_1007D45C0, &protocol conformance descriptor for DisclosureGroup<A, B>);
      v23 = v34;
      sub_100751D64();
      sub_100016B4C(v23, v38, &qword_100944C20, &qword_1007D45D8);
      swift_storeEnumTagMultiPayload();
      sub_10069D738();
      sub_100751D64();
      sub_10000C8CC(v23, &qword_100944C20, &qword_1007D45D8);
      return (*(v2 + 8))(v4, v22);
    }
  }

  else
  {
    sub_10000C8CC(&v41, &unk_100923520, &qword_1007A5A70);
  }

  v25 = *v1;
  v26 = v1[1];
  sub_100016B4C((v1 + 2), v42, &unk_100923520, &qword_1007A5A70);
  *&v41 = v25;
  *(&v41 + 1) = v26;
  sub_10069D700(&v41, v38);
  swift_storeEnumTagMultiPayload();
  sub_10069D738();
  sub_10069D8A8();

  sub_100751D64();
  return sub_10069D8FC(&v41);
}

uint64_t sub_10069AA3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000C518(&qword_100944CA8, &qword_1007D4620);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - v8;
  v32 = sub_10000C518(&qword_100944CB0, &qword_1007D4628);
  __chkstk_darwin(v32);
  v33 = v29 - v10;
  v34 = sub_10000C518(&qword_100944C90, &qword_1007D4618);
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v30 = v29 - v11;
  if (*a1 == __PAIR128__(0xEB00000000736E6FLL, 0x6973736572706D69) || (sub_100754754() & 1) != 0)
  {
    v29[2] = v6;
    sub_100121BE8(a2);
    v13 = *(v12 + 16);
    v29[0] = v12;
    v29[1] = a3;
    if (v13)
    {
      v14 = v12 + 32;
      v15 = _swiftEmptyArrayStorage;
      do
      {
        sub_100016B4C(v14, v39, &qword_100944CC8, &qword_1007D4658);
        v35 = v39[0];
        v36 = v39[1];
        v37 = v40;
        sub_10000C518(&qword_10092F1E8, &qword_1007D4600);
        if (swift_dynamicCast())
        {
          v16 = v38;
          if (v38)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_100256884(0, v15[2] + 1, 1, v15);
            }

            v18 = v15[2];
            v17 = v15[3];
            if (v18 >= v17 >> 1)
            {
              v15 = sub_100256884((v17 > 1), v18 + 1, 1, v15);
            }

            v15[2] = v18 + 1;
            v15[v18 + 4] = v16;
          }
        }

        v14 += 40;
        --v13;
      }

      while (v13);
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
    }

    v19 = sub_100588930(v15);
    v21 = v20;
    *&v39[0] = v29[0];
    swift_getKeyPath();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_10069DD14;
    *(v23 + 24) = v22;
    sub_10000C518(&qword_100944CB8, &qword_1007D4650);
    sub_10002DDC8(&qword_100944CC0, &qword_100944CB8, &qword_1007D4650, &protocol conformance descriptor for [A]);
    sub_10069DBFC();
    v24 = v30;
    sub_1007520A4();
    v25 = v31;
    v26 = v34;
    (*(v31 + 16))(v33, v24, v34);
    swift_storeEnumTagMultiPayload();
    sub_10069DB78();
    sub_10069DC50();
    sub_100751D64();
    return (*(v25 + 8))(v24, v26);
  }

  else
  {
    sub_100121BE8(a2);
    *&v39[0] = v28;
    swift_getKeyPath();
    sub_10000C518(&qword_100944CB8, &qword_1007D4650);
    sub_10002DDC8(&qword_100944CC0, &qword_100944CB8, &qword_1007D4650, &protocol conformance descriptor for [A]);
    sub_10069D484();
    sub_1007520A4();
    (*(v7 + 16))(v33, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_10069DB78();
    sub_10069DC50();
    sub_100751D64();
    return (*(v7 + 8))(v9, v6);
  }
}

unint64_t sub_10069B008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000C5B4(a2, v10);
  sub_10000C518(&qword_10092F1E8, &qword_1007D4600);
  if (swift_dynamicCast())
  {
    v5 = v9;
    if (!*(v9 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v5 = sub_100414AE8(_swiftEmptyArrayStorage);
    if (!*(v5 + 16))
    {
LABEL_7:
      memset(v10, 0, sizeof(v10));
      goto LABEL_8;
    }
  }

  v6 = sub_1003861D0(0xD000000000000012, 0x800000010078A560);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_10000C5B4(*(v5 + 56) + 32 * v6, v10);
LABEL_8:
  sub_100588C28(v10, a4);
  sub_10000C8CC(v10, &unk_100923520, &qword_1007A5A70);
  return v5;
}

uint64_t sub_10069B118@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + 8;
  v5._countAndFlagsBits = sub_100754714();
  sub_1007531B4(v5);

  v6._countAndFlagsBits = 93;
  v6._object = 0xE100000000000000;
  sub_1007531B4(v6);
  result = sub_10000C5B4(v3, (a2 + 2));
  *a2 = 91;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_10069B1B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_100631124(*(a1 + 16), 0);
  v4 = sub_1007271D0(&v6, v3 + 4, v2, a1);

  sub_1001A8F34();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v6 = v3;
  sub_1004537F4(&v6);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  sub_10000C518(&unk_100928A70, &unk_1007AC470);
  sub_10002DDC8(&qword_100944BE0, &unk_100928A70, &unk_1007AC470, &protocol conformance descriptor for [A]);
  sub_10069D484();
  return sub_1007520A4();
}

double sub_10069B364@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*(a2 + 16))
  {

    v7 = sub_1003861D0(v4, v5);
    if (v8)
    {
      sub_10000C5B4(*(a2 + 56) + 32 * v7, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  *a3 = v4;
  *(a3 + 8) = v5;
  result = *&v11;
  v10 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v10;
  return result;
}

uint64_t sub_10069B3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100751D14();
  LOBYTE(v20[0]) = 1;
  sub_10069B58C(v17);
  *&v16[7] = v17[0];
  *&v16[23] = v17[1];
  *&v16[39] = v17[2];
  *&v16[55] = v17[3];
  v6 = v20[0];
  sub_100016B4C(a1 + 16, v13, &unk_100923520, &qword_1007A5A70);
  v14 = 0;
  v15 = 1;
  sub_10069DF38(v13, v12);
  v18[0] = v5;
  v18[1] = 0;
  v19[0] = v6;
  *&v19[1] = *v16;
  *&v19[17] = *&v16[16];
  *&v19[33] = *&v16[32];
  *&v19[49] = *&v16[48];
  *&v19[64] = *&v16[63];
  v7 = *&v16[63];
  v8 = *v19;
  *a2 = v5;
  *(a2 + 16) = v8;
  v9 = *&v19[16];
  v10 = *&v19[48];
  *(a2 + 48) = *&v19[32];
  *(a2 + 64) = v10;
  *(a2 + 32) = v9;
  *(a2 + 80) = v7;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  sub_10069DF38(v12, a2 + 104);
  sub_100016B4C(v18, v20, &qword_100944CE0, &qword_1007D4760);
  sub_10069DF70(v13);
  sub_10069DF70(v12);
  v20[0] = v5;
  v20[1] = 0;
  v21 = v6;
  v23 = *&v16[16];
  v24 = *&v16[32];
  *v25 = *&v16[48];
  *&v25[15] = *&v16[63];
  v22 = *v16;
  return sub_10000C8CC(v20, &qword_100944CE0, &qword_1007D4760);
}

double sub_10069B58C@<D0>(uint64_t a2@<X8>)
{
  sub_1000D5C0C();

  v3 = sub_100751F24();
  v5 = v4;
  v7 = v6;
  v26 = sub_100751EF4();
  v27 = v8;
  v10 = v9;
  v25 = v11;
  sub_1004A660C(v3, v5, v7 & 1);

  sub_10069B758();
  v12 = sub_100751F24();
  v14 = v13;
  v16 = v15;
  sub_100751DC4();
  v17 = sub_100751EE4();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1004A660C(v12, v14, v16 & 1);

  *a2 = v26;
  *(a2 + 8) = v10;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21 & 1;
  *(a2 + 56) = v23;
  sub_1004A65FC(v26, v10, v25 & 1);

  sub_1004A65FC(v17, v19, v21 & 1);

  sub_1004A660C(v17, v19, v21 & 1);

  sub_1004A660C(v26, v10, v25 & 1);

  return result;
}

uint64_t sub_10069B758()
{
  sub_100016B4C(v0, v5, &unk_100923520, &qword_1007A5A70);
  if (v6)
  {
    if (swift_dynamicCast())
    {

      return 0x676E69727453;
    }
  }

  else
  {
    sub_10000C8CC(v5, &unk_100923520, &qword_1007A5A70);
  }

  sub_100016B4C(v0, v5, &unk_100923520, &qword_1007A5A70);
  if (v6)
  {
    sub_100016C60(0, &qword_10092BE20, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v2 = CFGetTypeID(cf);
      if (CFBooleanGetTypeID() == v2)
      {

        return 0x6E61656C6F6F42;
      }

      else if (CFNumberGetTypeID() == v2)
      {
        IsFloatType = CFNumberIsFloatType(cf);

        if (IsFloatType)
        {
          return 0x656C62756F44;
        }

        else
        {
          return 7630409;
        }
      }

      else
      {

        return 0x7265626D754ELL;
      }
    }
  }

  else
  {
    sub_10000C8CC(v5, &unk_100923520, &qword_1007A5A70);
  }

  sub_100016B4C(v0, v5, &unk_100923520, &qword_1007A5A70);
  if (v6)
  {
    sub_10000C518(&qword_100944C70, &qword_1007D4608);
    if (swift_dynamicCast())
    {

      return 0x7961727241;
    }
  }

  else
  {
    sub_10000C8CC(v5, &unk_100923520, &qword_1007A5A70);
  }

  sub_100016B4C(v0, v5, &unk_100923520, &qword_1007A5A70);
  if (v6)
  {
    sub_10000C518(&qword_10092F1E8, &qword_1007D4600);
    if (swift_dynamicCast())
    {

      return 0x7463656A624FLL;
    }
  }

  else
  {
    sub_10000C8CC(v5, &unk_100923520, &qword_1007A5A70);
  }

  result = 0x6E776F6E6B6E753CLL;
  if (*(v0 + 24))
  {
    sub_100016B4C(v0, v5, &unk_100923520, &qword_1007A5A70);
    if (v6)
    {
      sub_100016C60(0, &qword_100944CF0, NSNull_ptr);
      if (swift_dynamicCast())
      {

        return 0x6E776F6E6B6E753CLL;
      }
    }

    else
    {
      sub_10000C8CC(v5, &unk_100923520, &qword_1007A5A70);
    }

    v5[0] = sub_10000C518(&unk_100923520, &qword_1007A5A70);
    sub_10000C518(&qword_100944CE8, &qword_1007D4768);
    return sub_1007530E4();
  }

  return result;
}

uint64_t sub_10069BB08@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100751C94();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_10069B3F8(v2, a1 + 24);
}

void sub_10069BB44(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10000C518(&qword_100944CF8, &qword_1007D4770);
  v11 = __chkstk_darwin(v8);
  v13 = &v42 - v12;
  if (a1)
  {
    v45 = v10;
    v46 = v9;
    v47 = a4;
    *v13 = sub_100751D04();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v14 = *(a1 + 16);
    if (!v14)
    {
      v15 = _swiftEmptyArrayStorage;
      goto LABEL_9;
    }

    v43 = a2;
    v44 = a3;
    v15 = sub_100631124(v14, 0);
    v16 = sub_1007271D0(&v48, v15 + 4, v14, a1);

    sub_1001A8F34();
    if (v16 == v14)
    {
      a2 = v43;
      a3 = v44;
LABEL_9:
      v48 = v15;
      sub_1004537F4(&v48);
      sub_10000C518(&qword_100944D00, &qword_1007D4778);
      swift_getKeyPath();
      v18 = swift_allocObject();
      v18[2] = a1;
      v18[3] = a2;
      v18[4] = a3;

      sub_10000C518(&unk_100928A70, &unk_1007AC470);
      sub_10000C518(&qword_100944D08, &qword_1007D4780);
      sub_10002DDC8(&qword_100944BE0, &unk_100928A70, &unk_1007AC470, &protocol conformance descriptor for [A]);
      sub_10002DDC8(&qword_100944D10, &qword_100944D08, &qword_1007D4780, &protocol conformance descriptor for HStack<A>);
      sub_1007520A4();
      v19 = sub_100751E54();
      sub_100751B04();
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;
      v28 = &v13[*(sub_10000C518(&qword_100944D18, &qword_1007D4788) + 36)];
      *v28 = v19;
      *(v28 + 1) = v21;
      *(v28 + 2) = v23;
      *(v28 + 3) = v25;
      *(v28 + 4) = v27;
      v28[40] = 0;
      v29 = sub_100751E54();
      v30 = &v13[*(sub_10000C518(&qword_100944D20, &qword_1007D4790) + 36)];
      *v30 = 1;
      v30[8] = v29;
      v31 = v46;
      v32 = &v13[*(v46 + 36)];
      v33 = *(sub_100751BE4() + 20);
      v34 = enum case for RoundedCornerStyle.continuous(_:);
      v35 = sub_100751CF4();
      (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
      __asm { FMOV            V0.2D, #8.0 }

      *v32 = _Q0;
      *&v32[*(sub_10000C518(&qword_100944D28, &qword_1007D4798) + 36)] = 256;
      v41 = v47;
      sub_10069E048(v13, v47);
      (*(v45 + 56))(v41, 0, 1, v31);
      return;
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v17 = *(v10 + 56);

    v17(a4, 1, 1, v11);
  }
}

double sub_10069BFA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v26[0] = a1;
  v26[1] = a2;
  sub_1000D5C0C();

  v9 = sub_100751F24();
  v11 = v10;
  v13 = v12;
  v14 = sub_100751EF4();
  v16 = v15;
  v21 = v17;
  v19 = v18;
  sub_1004A660C(v9, v11, v13 & 1);

  sub_10069C100(a1, a2, a3, a4, a5, v26);
  v26[4] = 3;
  v27 = 0;
  sub_10069DF38(v26, v25);
  *a6 = v14;
  *(a6 + 8) = v16;
  *(a6 + 16) = v21 & 1;
  *(a6 + 24) = v19;
  *(a6 + 32) = 0x4030000000000000;
  *(a6 + 40) = 0;
  sub_10069DF38(v25, a6 + 48);
  sub_1004A65FC(v14, v16, v21 & 1);

  sub_10069DF70(v26);
  sub_10069DF70(v25);
  sub_1004A660C(v14, v16, v21 & 1);

  return result;
}

double sub_10069C100@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000010078A560 == a2 || (sub_100754754()) && a3 && *(a3 + 16) && (v12 = sub_1003861D0(a1, a2), (v13))
  {
    sub_10000C5B4(*(a3 + 56) + 32 * v12, v18);
    sub_10000C610(v18, v19);
    if (a5)
    {
      *&v18[0] = 0;
      *(&v18[0] + 1) = 0xE000000000000000;
      sub_1007545F4();
      v20._countAndFlagsBits = 10272;
      v20._object = 0xE200000000000000;
      sub_1007531B4(v20);
      v21._countAndFlagsBits = a4;
      v21._object = a5;
      sub_1007531B4(v21);
      v22._countAndFlagsBits = 41;
      v22._object = 0xE100000000000000;
      sub_1007531B4(v22);
      v14 = v18[0];
      *(a6 + 24) = &type metadata for String;
      *a6 = v14;
      sub_10000C620(v19);
      return result;
    }

    sub_10000C620(v19);
    if (!*(a3 + 16))
    {
      goto LABEL_14;
    }
  }

  else if (!a3 || !*(a3 + 16))
  {
    goto LABEL_14;
  }

  v16 = sub_1003861D0(a1, a2);
  if (v17)
  {
    sub_10000C5B4(*(a3 + 56) + 32 * v16, a6);
    return result;
  }

LABEL_14:
  result = 0.0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  return result;
}

__n128 sub_10069C2A0@<Q0>(uint64_t a1@<X8>)
{
  sub_100016B4C(v1, &v38, &unk_100923520, &qword_1007A5A70);
  if (v39.n128_u64[1])
  {
    sub_10000C518(&qword_100944C70, &qword_1007D4608);
    if (swift_dynamicCast())
    {
      v3 = *(*&v56[0] + 16);

      *&cf = v3;
      *&v57 = sub_100754714();
      *(&v57 + 1) = v4;
      v61._countAndFlagsBits = 0x736D65746920;
      v61._object = 0xE600000000000000;
      sub_1007531B4(v61);
      cf = v57;
      v50.n128_u64[0] = 0;
      v50.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v51) = 0;

      sub_100751D64();
      v48 = v59;
      v47 = 0;
      v60[18] = 0;
      sub_10000C518(&qword_100944DA8, &qword_1007D4868);
      sub_10000C518(&qword_100944DB8, &qword_1007D4870);
      sub_10069E520();
      sub_10069E59C();
      sub_100751D64();
      v58 = v43;
      v59 = v44;
      *v60 = *v45;
      *&v60[15] = *&v45[15];
      v57 = v42;
LABEL_8:
      LOBYTE(v54) = 0;
      v60[19] = 0;
      sub_10000C518(&qword_100944D90, &qword_1007D4860);
      sub_10069E494();
      sub_100751D64();

      goto LABEL_23;
    }
  }

  else
  {
    sub_10000C8CC(&v38, &unk_100923520, &qword_1007A5A70);
  }

  sub_100016B4C(v1, &v38, &unk_100923520, &qword_1007A5A70);
  if (v39.n128_u64[1])
  {
    sub_10000C518(&qword_10092F1E8, &qword_1007D4600);
    if (swift_dynamicCast())
    {
      v5 = *(*&v56[0] + 16);

      *&cf = v5;
      *&v57 = sub_100754714();
      *(&v57 + 1) = v6;
      v62._countAndFlagsBits = 0x7379656B20;
      v62._object = 0xE500000000000000;
      sub_1007531B4(v62);
      cf = v57;
      v50.n128_u64[0] = 0;
      v50.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v51) = 1;

      sub_100751D64();
      v48 = v59;
      v47 = 0;
      v60[18] = 0;
      sub_10000C518(&qword_100944DA8, &qword_1007D4868);
      sub_10000C518(&qword_100944DB8, &qword_1007D4870);
      sub_10069E520();
      sub_10069E59C();
      sub_100751D64();
      v59 = v44;
      *v60 = *v45;
      *&v60[15] = *&v45[15];
      v57 = v42;
      v58 = v43;
      goto LABEL_8;
    }
  }

  else
  {
    sub_10000C8CC(&v38, &unk_100923520, &qword_1007A5A70);
  }

  sub_100016B4C(v1, &v57, &unk_100923520, &qword_1007A5A70);
  if (v58.n128_u64[1])
  {
    sub_100016C60(0, &qword_10092BE20, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v7 = cf;
      v8 = CFGetTypeID(cf);
      v37 = v7;
      if (CFBooleanGetTypeID() == v8)
      {
        v9 = [v7 BOOLValue];
        if (v9)
        {
          v10 = 1702195828;
        }

        else
        {
          v10 = 0x65736C6166;
        }

        if (v9)
        {
          v11 = 0xE400000000000000;
        }

        else
        {
          v11 = 0xE500000000000000;
        }

        KeyPath = swift_getKeyPath();
        *&cf = v10;
        *(&cf + 1) = v11;
        v50.n128_u64[0] = 0;
        v50.n128_u64[1] = _swiftEmptyArrayStorage;
        *&v51 = KeyPath;
        v13 = 2;
      }

      else
      {
        v25 = [v7 stringValue];
        v26 = sub_100753094();
        v28 = v27;

        v29 = swift_getKeyPath();
        *&cf = v26;
        *(&cf + 1) = v28;
        v50.n128_u64[0] = 0;
        v50.n128_u64[1] = _swiftEmptyArrayStorage;
        *&v51 = v29;
        v13 = 258;
      }

      WORD4(v51) = v13;
      sub_10000C518(&qword_100944DD8, &qword_1007D4880);
      sub_10069E6AC();
      sub_100751D64();
      v30 = v59;
      v48 = BYTE9(v59);
      v47 = 0;
      v60[17] = 0;
      v31 = v57;
      v32 = v58.n128_u8[0];
      v33 = v58.n128_i64[1];
      v35 = v58.n128_u8[0];
      v36 = v57;
      v34 = v58.n128_i64[1];
      sub_10069E870(v57, *(&v57 + 1), v58.n128_i8[0], v58.n128_i64[1], v59);
      sub_10069E870(v31, *(&v31 + 1), v32, v33, v30);
      sub_10000C518(&qword_100944DC8, &qword_1007D4878);
      sub_10000C518(&qword_100944DF8, &qword_1007D4890);
      sub_10069E628();
      sub_10069E764();
      sub_100751D64();
      v59 = v51;
      *v60 = v52;
      *&v60[16] = v53;
      v57 = cf;
      v58 = v50;
      LOBYTE(v54) = 1;
      v60[18] = 1;
      sub_10000C518(&qword_100944DA8, &qword_1007D4868);
      sub_10000C518(&qword_100944DB8, &qword_1007D4870);
      sub_10069E520();
      sub_10069E59C();
      sub_100751D64();
      v44 = v40;
      *v45 = *v41;
      *&v45[15] = *&v41[15];
      v42 = v38;
      v43 = v39;
      v59 = v40;
      *v60 = *v41;
      *&v60[15] = *&v41[15];
      v57 = v38;
      v58 = v39;
      LOBYTE(v56[0]) = 0;
      v60[19] = 0;
      sub_100016B4C(&v42, &cf, &qword_100944D90, &qword_1007D4860);
      sub_10000C518(&qword_100944D90, &qword_1007D4860);
      sub_10069E494();
      sub_100751D64();
      sub_10069E8B8(v36, *(&v31 + 1), v35, v34);
      sub_10000C8CC(&v42, &qword_100944D90, &qword_1007D4860);

      sub_10069E8B8(v36, *(&v31 + 1), v35, v34);
      v59 = v51;
      *v60 = v52;
      *&v60[16] = v53;
      v22 = cf;
      v21 = v50;
      goto LABEL_24;
    }
  }

  else
  {
    sub_10000C8CC(&v57, &unk_100923520, &qword_1007A5A70);
  }

  sub_100016B4C(v1, &v54, &unk_100923520, &qword_1007A5A70);
  if (!v55)
  {
    sub_10000C8CC(&v54, &unk_100923520, &qword_1007A5A70);
    LOBYTE(v42) = 0;
    LOBYTE(v38) = 1;
    cf = xmmword_1007D4290;
    v50.n128_u8[0] = 0;
    v50.n128_u64[1] = _swiftEmptyArrayStorage;
    HIBYTE(v53) = 1;
    sub_10000C518(&qword_100944D90, &qword_1007D4860);
    sub_10069E494();
    sub_100751D64();
    goto LABEL_25;
  }

  sub_10000C610(&v54, v56);
  sub_10000C5B4(v56, &v57);
  v14 = sub_1007530E4();
  v16 = v15;
  v17 = swift_getKeyPath();
  v18 = *(v1 + 32);
  v19 = *(v1 + 40);
  v20 = swift_getKeyPath();
  LOBYTE(cf) = v19;
  *&v38 = v14;
  *(&v38 + 1) = v16;
  v39.n128_u8[0] = 0;
  v39.n128_u64[1] = _swiftEmptyArrayStorage;
  *&v40 = v17;
  BYTE8(v40) = 2;
  *v41 = v20;
  *&v41[8] = v18;
  v41[16] = v19;
  v59 = v40;
  *v60 = *v41;
  v60[16] = v19;
  v57 = v38;
  v58 = v39;
  v46 = 1;
  v60[17] = 1;
  sub_100016B4C(&v38, &cf, &qword_100944DF8, &qword_1007D4890);
  sub_10000C518(&qword_100944DC8, &qword_1007D4878);
  sub_10000C518(&qword_100944DF8, &qword_1007D4890);
  sub_10069E628();
  sub_10069E764();
  sub_100751D64();
  v59 = v51;
  *v60 = v52;
  *&v60[16] = v53;
  v57 = cf;
  v58 = v50;
  v47 = 1;
  v60[18] = 1;
  sub_10000C518(&qword_100944DA8, &qword_1007D4868);
  sub_10000C518(&qword_100944DB8, &qword_1007D4870);
  sub_10069E520();
  sub_10069E59C();
  sub_100751D64();
  v59 = v44;
  *v60 = *v45;
  *&v60[15] = *&v45[15];
  v57 = v42;
  v58 = v43;
  v48 = 0;
  v60[19] = 0;
  sub_10000C518(&qword_100944D90, &qword_1007D4860);
  sub_10069E494();
  sub_100751D64();
  sub_10000C8CC(&v38, &qword_100944DF8, &qword_1007D4890);
  sub_10000C620(v56);
LABEL_23:
  v59 = v51;
  *v60 = v52;
  *&v60[16] = v53;
  v22 = cf;
  v21 = v50;
LABEL_24:
  v57 = v22;
  v58 = v21;
LABEL_25:
  v23 = *v60;
  *(a1 + 32) = v59;
  *(a1 + 48) = v23;
  *(a1 + 64) = *&v60[16];
  result = v58;
  *a1 = v57;
  *(a1 + 16) = result;
  return result;
}

double sub_10069CD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

double sub_10069CDC0(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_10069CE0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100751C34();
  *a1 = result;
  return result;
}

unint64_t sub_10069CE64()
{
  result = qword_100944B00;
  if (!qword_100944B00)
  {
    sub_10000C724(&qword_100944AF0, &qword_1007D4410);
    sub_10069CEE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944B00);
  }

  return result;
}

unint64_t sub_10069CEE8()
{
  result = qword_100944B08;
  if (!qword_100944B08)
  {
    sub_10000C724(&qword_100944B10, &qword_1007D4418);
    sub_10002DDC8(&qword_100944B18, &qword_100944B20, &qword_1007D4420, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944B08);
  }

  return result;
}

uint64_t sub_10069CFA0@<X0>(uint64_t a1@<X8>)
{
  result = sub_100751C54();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_10069D014()
{
  result = qword_100944B98;
  if (!qword_100944B98)
  {
    sub_10000C724(&qword_100944B60, &qword_1007D4490);
    sub_10000C724(&qword_100944B58, &qword_1007D4488);
    sub_100751B84();
    sub_10002DDC8(&qword_100944B88, &qword_100944B58, &qword_1007D4488, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_10002DDC8(&qword_100944BA0, &qword_100944BA8, &qword_1007D44B8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944B98);
  }

  return result;
}

uint64_t sub_10069D15C(uint64_t a1)
{
  v2 = sub_10000C518(&qword_100944B60, &qword_1007D4490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10069D1CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10069D214(uint64_t a1)
{
  v2 = type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10069D270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10069D2D4()
{
  v1 = *(type metadata accessor for DebugMetricsEventDetailView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100746674();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10069D3A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_10069D404@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for DebugMetricsEventDetailView(0);

  return sub_100698578(a1, a2);
}

unint64_t sub_10069D484()
{
  result = qword_100944BE8;
  if (!qword_100944BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944BE8);
  }

  return result;
}

uint64_t sub_10069D4D8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10069D544()
{
  sub_10000C724(&qword_100944B70, &qword_1007D44A0);
  sub_10000C724(&qword_100944B68, &qword_1007D4498);
  sub_100751E24();
  sub_10000C724(&qword_100944B60, &qword_1007D4490);
  sub_10000C724(&qword_100944B90, &qword_1007D44B0);
  sub_10069D014();
  sub_10000C724(&qword_100944BB0, &qword_1007D44C0);
  sub_10002DDC8(&qword_100944BB8, &qword_100944BB0, &qword_1007D44C0, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_10069D738()
{
  result = qword_100944C40;
  if (!qword_100944C40)
  {
    sub_10000C724(&qword_100944C20, &qword_1007D45D8);
    sub_10069D7F0();
    sub_10002DDC8(&qword_100944C60, &qword_100944C08, &qword_1007D45C0, &protocol conformance descriptor for DisclosureGroup<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C40);
  }

  return result;
}

unint64_t sub_10069D7F0()
{
  result = qword_100944C48;
  if (!qword_100944C48)
  {
    sub_10000C724(&qword_100944C38, &unk_1007D45F0);
    sub_10002DDC8(&qword_100944C50, &qword_100944C30, &qword_1007D45E8, &protocol conformance descriptor for DisclosureGroup<A, B>);
    sub_10069D8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C48);
  }

  return result;
}

unint64_t sub_10069D8A8()
{
  result = qword_100944C58;
  if (!qword_100944C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C58);
  }

  return result;
}

uint64_t sub_10069D92C()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10069D96C()
{
  result = qword_100944C68;
  if (!qword_100944C68)
  {
    sub_10000C724(&qword_100944BD0, &qword_1007D44D0);
    sub_10069D484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C68);
  }

  return result;
}

uint64_t sub_10069DA28()
{

  if (*(v0 + 56))
  {
    sub_10000C620((v0 + 32));
  }

  return _swift_deallocObject(v0, 72, 7);
}

double sub_10069DA88@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = v3[1];
  sub_100016B4C((v3 + 2), (a1 + 2), &unk_100923520, &qword_1007A5A70);
  *a1 = v5;
  a1[1] = v4;

  return result;
}

unint64_t sub_10069DAEC()
{
  result = qword_100944C80;
  if (!qword_100944C80)
  {
    sub_10000C724(&qword_100944C78, &qword_1007D4610);
    sub_10069DB78();
    sub_10069DC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C80);
  }

  return result;
}

unint64_t sub_10069DB78()
{
  result = qword_100944C88;
  if (!qword_100944C88)
  {
    sub_10000C724(&qword_100944C90, &qword_1007D4618);
    sub_10069DBFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C88);
  }

  return result;
}

unint64_t sub_10069DBFC()
{
  result = qword_100944C98;
  if (!qword_100944C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944C98);
  }

  return result;
}

unint64_t sub_10069DC50()
{
  result = qword_100944CA0;
  if (!qword_100944CA0)
  {
    sub_10000C724(&qword_100944CA8, &qword_1007D4620);
    sub_10069D484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944CA0);
  }

  return result;
}

uint64_t sub_10069DCD4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10069DD1C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10069DD54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1 + 1);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_10069DD98(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10069DDF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10069DE74()
{
  result = qword_100944CD0;
  if (!qword_100944CD0)
  {
    sub_10000C724(&qword_100944CD8, &qword_1007D46B8);
    sub_10069D738();
    sub_10069D8A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944CD0);
  }

  return result;
}

uint64_t sub_10069DFA0()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_10069DFE0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *a1;
  v8 = a1[1];
  *a2 = sub_100751C74();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_10069BFA8(v7, v8, v4, v5, v6, a2 + 24);
}

uint64_t sub_10069E048(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100944CF8, &qword_1007D4770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10069E0B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10069E114(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_10069E1CC()
{
  result = qword_100944D40;
  if (!qword_100944D40)
  {
    sub_10000C724(&qword_100944D48, &qword_1007D47F8);
    sub_10069E250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944D40);
  }

  return result;
}

unint64_t sub_10069E250()
{
  result = qword_100944D50;
  if (!qword_100944D50)
  {
    sub_10000C724(&qword_100944CF8, &qword_1007D4770);
    sub_10069E308();
    sub_10002DDC8(&qword_100944D88, &qword_100944D28, &qword_1007D4798, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944D50);
  }

  return result;
}

unint64_t sub_10069E308()
{
  result = qword_100944D58;
  if (!qword_100944D58)
  {
    sub_10000C724(&qword_100944D20, &qword_1007D4790);
    sub_10069E3C0();
    sub_10002DDC8(&qword_100944D78, &qword_100944D80, qword_1007D4808, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944D58);
  }

  return result;
}

unint64_t sub_10069E3C0()
{
  result = qword_100944D60;
  if (!qword_100944D60)
  {
    sub_10000C724(&qword_100944D18, &qword_1007D4788);
    sub_10002DDC8(&qword_100944D68, &qword_100944D70, &qword_1007D4800, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944D60);
  }

  return result;
}

unint64_t sub_10069E494()
{
  result = qword_100944D98;
  if (!qword_100944D98)
  {
    sub_10000C724(&qword_100944D90, &qword_1007D4860);
    sub_10069E520();
    sub_10069E59C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944D98);
  }

  return result;
}

unint64_t sub_10069E520()
{
  result = qword_100944DA0;
  if (!qword_100944DA0)
  {
    sub_10000C724(&qword_100944DA8, &qword_1007D4868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944DA0);
  }

  return result;
}

unint64_t sub_10069E59C()
{
  result = qword_100944DB0;
  if (!qword_100944DB0)
  {
    sub_10000C724(&qword_100944DB8, &qword_1007D4870);
    sub_10069E628();
    sub_10069E764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944DB0);
  }

  return result;
}

unint64_t sub_10069E628()
{
  result = qword_100944DC0;
  if (!qword_100944DC0)
  {
    sub_10000C724(&qword_100944DC8, &qword_1007D4878);
    sub_10069E6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944DC0);
  }

  return result;
}

unint64_t sub_10069E6AC()
{
  result = qword_100944DD0;
  if (!qword_100944DD0)
  {
    sub_10000C724(&qword_100944DD8, &qword_1007D4880);
    sub_10002DDC8(&qword_100944DE0, &qword_100944DE8, &qword_1007D4888, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944DD0);
  }

  return result;
}

unint64_t sub_10069E764()
{
  result = qword_100944DF0;
  if (!qword_100944DF0)
  {
    sub_10000C724(&qword_100944DF8, &qword_1007D4890);
    sub_10069E6AC();
    sub_10002DDC8(&qword_100944B18, &qword_100944B20, &qword_1007D4420, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944DF0);
  }

  return result;
}

uint64_t sub_10069E81C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100751C14();
  *a1 = result;
  return result;
}

double sub_10069E870(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_1004A65FC(a1, a2, a3 & 1);

  return result;
}

double sub_10069E8B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1004A660C(a1, a2, a3 & 1);

  return result;
}

unint64_t sub_10069E904()
{
  result = qword_100944E00;
  if (!qword_100944E00)
  {
    sub_10000C724(&qword_100944E08, &qword_1007D48C8);
    sub_10069E494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100944E00);
  }

  return result;
}

void sub_10069EA80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a3;
  v4 = sub_100743B04();
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100746E24();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v36 - v11;
  v13 = sub_10000C518(&qword_100933090, &unk_1007B1B00);
  __chkstk_darwin(v13 - 8);
  v15 = &v36 - v14;
  v41 = sub_100744754();
  sub_10074ECD4();
  sub_100752764();
  sub_10069F0AC(&qword_100928558, &type metadata accessor for Action, &protocol conformance descriptor for Action);
  sub_100752684();

  v16 = sub_10000C518(&unk_100933080, &unk_1007B1AB0);
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_action;
  swift_beginAccess();
  v18 = v15;
  v19 = v3;
  sub_100195594(v18, &v3[v17]);
  swift_endAccess();
  v3[OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_hasDivider] = sub_100744714() & 1;
  sub_100711CAC();
  sub_100744734();
  (*(v7 + 16))(v9, v12, v6);
  if ((*(v7 + 88))(v9, v6) != enum case for RoundedButtonType.share(_:))
  {
    v30 = *(v7 + 8);
    v30(v9, v6);
    v30(v12, v6);
    goto LABEL_7;
  }

  v21 = v36;
  v20 = v37;
  v22 = v38;
  (*(v37 + 104))(v36, enum case for SystemImage.squareAndArrowUp(_:), v38);
  v23 = sub_100743AE4();
  (*(v20 + 8))(v21, v22);
  v24 = [v23 imageWithRenderingMode:2];

  (*(v7 + 8))(v12, v6);
  if (!v24)
  {
LABEL_7:
    v29 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_button];
    [v29 setImage:0 forState:0];
    goto LABEL_8;
  }

  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  if (qword_100921400 != -1)
  {
    swift_once();
  }

  v25 = sub_100750534();
  sub_10000D0FC(v25, qword_100981938);
  v26 = [v19 traitCollection];
  v27 = sub_100753C14();

  v28 = [objc_opt_self() configurationWithFont:v27];
  v29 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension31RoundedButtonCollectionViewCell_button];
  [v29 setPreferredSymbolConfiguration:v28 forImageInState:0];
  [v29 setContentVerticalAlignment:0];
  [v29 setImage:v24 forState:0];

LABEL_8:
  sub_100744744();
  v31 = sub_100753064();

  [v29 setTitle:v31 forState:0];

  v32 = sub_100744764();
  if (!v32)
  {
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v32 = sub_100753E44();
  }

  v33 = v32;
  [v29 setTitleColor:v33 forState:0];
  [v29 setTintColor:v33];

  v34 = sub_100744724();
  if (!v34)
  {
    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v34 = sub_100753E84();
  }

  v35 = v34;
  [v29 setBackgroundColor:v34];

  [v19 setNeedsLayout];
}

uint64_t sub_10069F0AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static NSUserActivity.handle(userActivity:asPartOf:)(void *a1, uint64_t a2)
{
  v75 = a2;
  v3 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v3 - 8);
  v5 = &v54 - v4;
  v70 = sub_10074A304();
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100742CF4();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v69 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1007493D4();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100752614();
  __chkstk_darwin(v10 - 8);
  v68 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_10092C1F0, &unk_1007A8F60);
  __chkstk_darwin(v12 - 8);
  v63 = &v54 - v13;
  v14 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v14 - 8);
  v60 = &v54 - v15;
  v58 = sub_10074F4D4();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100744574();
  v55 = *(v17 - 8);
  __chkstk_darwin(v17);
  v72 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100743FE4();
  v56 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000C518(&qword_100944E58, qword_1007D4900);
  __chkstk_darwin(v22 - 8);
  v24 = &v54 - v23;
  v25 = sub_100742B54();
  v73 = *(v25 - 8);
  v74 = v25;
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a1 activityType];
  v30 = sub_100753094();
  v32 = v31;

  if (sub_100753094() == v30 && v33 == v32)
  {

LABEL_5:

    v35 = v75;

    return sub_10069FBF8(a1, v35);
  }

  v54 = v5;
  v34 = sub_100754754();

  if (v34)
  {
    goto LABEL_5;
  }

  if (sub_100753094() == v30 && v37 == v32)
  {
  }

  else
  {
    v38 = sub_100754754();

    result = 0;
    if ((v38 & 1) == 0)
    {
      return result;
    }
  }

  v39 = a1;
  sub_100742B24();
  v41 = v73;
  v40 = v74;
  if ((*(v73 + 48))(v24, 1, v74) == 1)
  {
    sub_10000C8CC(v24, &qword_100944E58, qword_1007D4900);
    return 0;
  }

  else
  {
    v42 = v28;
    (*(v41 + 32))(v28, v24, v40);
    sub_100745584();
    sub_100745564();
    sub_100742B44();
    sub_1007454F4();

    v43 = v56;
    (*(v56 + 8))(v21, v19);
    sub_100744AC4();
    sub_100752754();
    if (v78)
    {
      sub_10074C494();
    }

    (*(v55 + 104))(v72, enum case for NavigationTab.loading(_:), v17);
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1007A5CF0;
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    (*(v57 + 104))(v59, enum case for FlowPage.unknown(_:), v58);
    v45 = v60;
    sub_100742B34();
    v46 = sub_100741264();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    v47 = v63;
    sub_100742B44();
    (*(v43 + 56))(v47, 0, 1, v19);
    v76 = 0u;
    v77 = 0u;
    sub_1007525F4();
    (*(v61 + 104))(v66, enum case for FlowAnimationBehavior.never(_:), v62);
    v48 = *(v64 + 13);
    v64 = v42;
    v48(v69, enum case for FlowOrigin.external(_:), v65);
    (*(v67 + 104))(v71, enum case for FlowPresentationContext.infer(_:), v70);
    sub_100752B44();
    sub_100742CD4();
    swift_allocObject();
    *(v44 + 32) = sub_100742C84();
    sub_1007525F4();
    sub_100745824();
    swift_allocObject();
    v49 = sub_1007457E4();
    v50 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
    v51 = v54;
    v52 = v75;
    sub_1007526C4();
    v53 = *(v50 - 8);
    if ((*(v53 + 48))(v51, 1, v50) == 1)
    {
      (*(v73 + 8))(v64, v74);

      sub_10000C8CC(v51, &unk_100923960, &qword_1007A6240);
    }

    else
    {
      sub_1003C13BC(v49, 1, v52, v51);

      (*(v73 + 8))(v64, v74);
      (*(v53 + 8))(v51, v50);
    }

    return 1;
  }
}

uint64_t sub_10069FBF8(void *a1, uint64_t a2)
{
  v40 = a2;
  v3 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v3 - 8);
  v5 = v35 - v4;
  v6 = sub_100752614();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100744574();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100743FD4();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100743FE4();
  v39 = *(v13 - 8);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 userInfo];
  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = v17;
  v36 = v5;
  v19 = sub_100752F44();

  v41 = sub_100753094();
  v42 = v20;
  sub_1007544E4();
  if (!*(v19 + 16) || (v21 = sub_100412148(v43), (v22 & 1) == 0))
  {

    sub_100016994(v43);
LABEL_10:
    v44 = 0u;
    v45 = 0u;
    goto LABEL_11;
  }

  sub_10000C5B4(*(v19 + 56) + 32 * v21, &v44);
  sub_100016994(v43);

  if (!*(&v45 + 1))
  {
LABEL_11:
    sub_10000C8CC(&v44, &unk_100923520, &qword_1007A5A70);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v24 = v43[0];
  v23 = v43[1];
  v25 = sub_100753094();
  v35[1] = v24;
  if (v25 != v24 || v26 != v23)
  {
    v29 = sub_100754754();

    v27 = v36;
    if (v29)
    {
      goto LABEL_14;
    }

    return 0;
  }

  v27 = v36;
LABEL_14:
  (*(v37 + 104))(v12, enum case for ReferrerData.Kind.spotlight(_:), v10);
  sub_100743FC4();
  sub_100745584();
  sub_100745564();
  sub_1007454F4();

  (*(v38 + 104))(v9, enum case for NavigationTab.arcade(_:), v7);
  sub_1007525F4();
  sub_100745824();
  swift_allocObject();
  v30 = sub_1007457E4();
  v31 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v32 = v40;
  sub_1007526C4();
  v33 = v27;
  v34 = *(v31 - 8);
  if ((*(v34 + 48))(v33, 1, v31) == 1)
  {
    (*(v39 + 8))(v16, v13);

    sub_10000C8CC(v33, &unk_100923960, &qword_1007A6240);
  }

  else
  {
    sub_1003C13BC(v30, 1, v32, v33);

    (*(v39 + 8))(v16, v13);
    (*(v34 + 8))(v33, v31);
  }

  return 1;
}

uint64_t type metadata accessor for FadeInDynamicTypeButton(uint64_t a1)
{
  result = qword_100944E78;
  if (!qword_100944E78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1006A0260(double a1, double a2, double a3, double a4)
{
  *&v4[qword_100944E60] = 0x4059000000000000;
  v4[qword_100944E70] = 0;
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  v11 = sub_10014D0DC(v10);

  *&v4[qword_100944E68] = v11;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for FadeInDynamicTypeButton(0);
  v12 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v9 systemBackgroundColor];
  [v12 setBackgroundColor:v13];

  v14 = [v12 layer];
  [v14 addSublayer:*&v12[qword_100944E68]];

  v15 = [v12 layer];
  [v15 setMasksToBounds:0];

  return v12;
}

id sub_1006A0404(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for FadeInDynamicTypeButton(0);
  v1 = objc_msgSendSuper2(&v3, "backgroundColor");

  return v1;
}

void sub_1006A0460(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FadeInDynamicTypeButton(0);
  v10.receiver = a1;
  v10.super_class = v5;
  v6 = a3;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v10, "backgroundColor");
  v9.receiver = v7;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "setBackgroundColor:", v6);
  sub_1006A0500(v8);
}

void sub_1006A0500(void *a1)
{
  v2 = v1;
  v4 = [v2 backgroundColor];
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      v6 = a1;
      v7 = sub_100753FC4();

      if (v7)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = [v2 backgroundColor];
  if (!v8)
  {
    v8 = [objc_opt_self() clearColor];
  }

  v9 = v8;
  v10 = sub_10014D0DC(v8);

  sub_1006A0C40(v10);
}

id sub_1006A0630()
{
  v1 = qword_100944E68;
  if (v0[qword_100944E70])
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  if (v0[qword_100944E70])
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*&v0[qword_100944E68] setStartPoint:{v2, 0.5}];
  [*&v0[v1] setEndPoint:{v3, 0.5}];

  return [v0 setNeedsLayout];
}

uint64_t sub_1006A06C4()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_100750534();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FadeInDynamicTypeButton(0);
  v14.receiver = v0;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, "layoutSubviews");
  sub_100746694();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10006A144(v4);
  }

  (*(v6 + 32))(v8, v4, v5);
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  v11 = [v0 traitCollection];
  v12 = sub_100753C14();

  [v12 lineHeight];
  [v1 bounds];
  CGRectGetMinX(v15);
  [v1 bounds];
  CGRectGetMinY(v16);
  [v1 bounds];
  CGRectGetHeight(v17);
  v13 = *&v1[qword_100944E68];
  sub_1007477B4();
  sub_100753B34();
  [v13 setFrame:?];

  return (*(v6 + 8))(v8, v5);
}

void sub_1006A0978(void *a1)
{
  v1 = a1;
  sub_1006A06C4();
}

void sub_1006A09C0(void *a1)
{
  v5 = a1;
  v1 = [v5 backgroundColor];
  if (v1)
  {
    v2 = v1;
    v3 = sub_10014D0DC(v1);
    sub_1006A0C40(v3);

    v4 = v3;
  }

  else
  {
    v4 = v5;
  }
}

id sub_1006A0A58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FadeInDynamicTypeButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1006A0AA8(uint64_t a1, void *a2)
{
  v4 = sub_100750534();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  (*(v5 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4, v6);
  v8 = sub_1007466B4();
  v9 = sub_10014D0DC(a2);
  v10 = qword_100944E68;
  v11 = *&v8[qword_100944E68];
  *&v8[qword_100944E68] = v9;

  [v8 setBackgroundColor:a2];
  v12 = [v8 layer];
  [v12 addSublayer:*&v8[v10]];

  v13 = [v8 layer];
  [v13 setMasksToBounds:0];

  (*(v5 + 8))(a1, v4);
  return v8;
}

void sub_1006A0C40(void *a1)
{
  v2 = qword_100944E68;
  v5 = *&v1[qword_100944E68];
  *&v1[qword_100944E68] = a1;
  v3 = a1;
  [v5 frame];
  [v3 setFrame:?];
  v4 = [v1 layer];
  [v4 insertSublayer:*&v1[v2] below:v5];

  [v5 removeFromSuperlayer];
  [v1 setNeedsLayout];
}

uint64_t sub_1006A0D10()
{
  v0 = sub_10074D294();
  sub_100039C50(v0, qword_100982D60);
  sub_10000D0FC(v0, qword_100982D60);
  return sub_10074D284();
}

uint64_t sub_1006A0D5C()
{
  v0 = sub_10074D1D4();
  sub_100039C50(v0, qword_100982D78);
  v1 = sub_10000D0FC(v0, qword_100982D78);
  v2 = enum case for CondensedSearchResultCardLayout.Configuration.appEvent(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

char *sub_1006A0DE4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_100743584();
  v76 = *(v10 - 8);
  v77 = v10;
  __chkstk_darwin(v10);
  v75 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&qword_100932470, &unk_1007A5A90);
  __chkstk_darwin(v12 - 8);
  v74 = &v68 - v13;
  v14 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v14 - 8);
  v73 = &v68 - v15;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventFormattedDateView;
  *&v4[v16] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_titleLabel;
  sub_100745C84();
  *&v4[v17] = sub_100745C64();
  v18 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_viewButton;
  *&v5[v18] = [objc_opt_self() buttonWithType:0];
  v19 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_artworkView;
  if (qword_100921CC0 != -1)
  {
    swift_once();
  }

  v20 = sub_10074D294();
  sub_10000D0FC(v20, qword_100982D60);
  sub_10074D1F4();
  *&v5[v19] = [objc_allocWithZone(sub_1007433C4()) initWithFrame:{0.0, 0.0, v21, v22}];
  v23 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer;
  *&v5[v23] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v24 = &v5[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventViewTappedAction];
  v25 = type metadata accessor for CondensedAppEventCardView();
  *v24 = 0;
  *(v24 + 1) = 0;
  v79.receiver = v5;
  v79.super_class = v25;
  v26 = objc_msgSendSuper2(&v79, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v70 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventFormattedDateView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventFormattedDateView]];
  v31 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_titleLabel;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_titleLabel]];
  v72 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_artworkView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_artworkView]];
  v71 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_viewButton;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_viewButton]];
  v32 = qword_100921CC8;
  v33 = *&v30[v31];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = sub_10074D1D4();
  sub_10000D0FC(v34, qword_100982D78);
  v35 = v73;
  sub_10074D1C4();
  v36 = sub_100750534();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v68 = v36;
  v69 = v38;
  v38(v35, 0, 1, v36);
  sub_100745BA4();

  v39 = v30;
  v40.super.isa = [v39 traitCollection];
  isa = v40.super.isa;
  [*&v30[v31] setNumberOfLines:sub_10074D194(v40)];

  v42 = v70;
  v43 = *&v30[v70];
  v44 = v43[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style];
  v43[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style] = 7;
  v45 = v43;
  sub_1000C95D0(v44);

  *(*&v30[v42] + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_1008805E8;
  swift_unknownObjectWeakAssign();

  v46 = *&v30[v31];
  *v35 = UIFontTextStyleSubheadline;
  *(v35 + 2) = 0;
  v47 = v68;
  (*(v37 + 104))(v35, enum case for FontUseCase.preferredFont(_:), v68);
  v69(v35, 0, 1, v47);
  v48 = v46;
  v49 = UIFontTextStyleSubheadline;
  sub_100745BA4();

  v50 = v71;
  v51 = *&v30[v71];
  v52 = v51;
  v53 = [v39 traitCollection];
  v54 = v74;
  v55 = ObjectType;
  sub_1006AB840(v51, v74);

  v56 = sub_1007541F4();
  (*(*(v56 - 8) + 56))(v54, 0, 1, v56);
  sub_100754224();

  v57 = sub_1006ABADC();
  sub_10000FF60(v57, v58);

  [*&v30[v50] addTarget:v39 action:"handleTapWithGestureRecognizer:" forControlEvents:64];
  v59 = *&v30[v72];
  v61 = v75;
  v60 = v76;
  v62 = v77;
  (*(v76 + 104))(v75, enum case for CornerStyle.continuous(_:), v77);
  v63 = v59;
  sub_1007433B4();

  (*(v60 + 8))(v61, v62);
  v64 = OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer;
  v65 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension25CondensedAppEventCardView_appEventTapGestureRecognizer];
  [v65 addTarget:v39 action:"handleTapWithGestureRecognizer:"];

  [v39 addGestureRecognizer:*&v39[v64]];
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1007A5A00;
  *(v66 + 32) = sub_1007519E4();
  *(v66 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = v55;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v39;
}