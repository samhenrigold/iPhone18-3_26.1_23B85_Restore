uint64_t type metadata accessor for SegmentedControlCollectionViewCell(uint64_t a1)
{
  result = qword_10094EBC8;
  if (!qword_10094EBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100259C58(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100259D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100259F00(&qword_10094EBE0, type metadata accessor for SegmentedControlCollectionViewCell, &unk_10079760C);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100259DE0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension34SegmentedControlCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100259E38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension34SegmentedControlCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100259F00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100259F48()
{
  result = qword_1009641D0;
  if (!qword_1009641D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1009641D0);
  }

  return result;
}

uint64_t sub_100259F94()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100259FCC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10025A004()
{
  v1 = sub_10076341C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_10025A0E4(uint64_t a1)
{
  v3 = *(sub_10076341C() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10025981C(a1, v5, v6, v7, v1 + v4, v8);
}

unint64_t sub_10025A188()
{
  result = qword_10094EC00;
  if (!qword_10094EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EC00);
  }

  return result;
}

uint64_t sub_10025A1DC(uint64_t result)
{
  v2 = *(v1 + 24);
  *result = *(v1 + 16);
  *(result + 8) = v2;
  return result;
}

void sub_10025A1F0(uint64_t a1)
{
  v2 = sub_10076C38C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076C3BC();
  sub_100259F00(&qword_10094EBE8, &type metadata accessor for PageTabs, &protocol conformance descriptor for PageTabs);
  sub_10076332C();
  v6 = v29;
  if (!v29)
  {
    return;
  }

  v7 = sub_10076C3AC();
  v8 = v7;
  if (v7 >> 62)
  {
    v9 = sub_10077158C();
    v28 = v5;
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_15:

    v11 = _swiftEmptyArrayStorage;
LABEL_16:
    swift_getKeyPath();
    v18 = v28;
    sub_10076338C();

    sub_10076C2FC();
    v20 = v19;
    v22 = v21;
    (*(v3 + 8))(v18, v2);
    swift_getKeyPath();
    sub_10076338C();

    v23 = v29;
    sub_1000E3E30(v11, v20, v22);

    return;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v28 = v5;
  if (!v9)
  {
    goto LABEL_15;
  }

LABEL_4:
  v29 = _swiftEmptyArrayStorage;
  sub_1004BBB24(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v24 = v6;
    v25 = v3;
    v26 = v2;
    v27 = a1;
    v10 = 0;
    v11 = v29;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
      }

      else
      {
      }

      v12 = sub_10076C06C();
      v14 = v13;

      v29 = v11;
      v16 = v11[2];
      v15 = v11[3];
      if (v16 >= v15 >> 1)
      {
        sub_1004BBB24((v15 > 1), v16 + 1, 1);
        v11 = v29;
      }

      ++v10;
      v11[2] = v16 + 1;
      v17 = &v11[2 * v16];
      v17[4] = v12;
      v17[5] = v14;
    }

    while (v9 != v10);

    v2 = v26;
    v3 = v25;
    goto LABEL_16;
  }

  __break(1u);
}

unint64_t sub_10025A51C()
{
  result = qword_10094EC08;
  if (!qword_10094EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EC08);
  }

  return result;
}

unint64_t sub_10025A574()
{
  result = qword_10094EC10;
  if (!qword_10094EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EC10);
  }

  return result;
}

double sub_10025A62C(__n128 a1)
{
  v1 = sub_10076A1BC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076710C();
  v5 = *(v16 - 8);
  __chkstk_darwin(v16);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076C38C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  sub_10076C2FC();
  (*(v9 + 8))(v11, v8);
  (*(v2 + 104))(v4, enum case for BreakoutDetailsDisplayProperties.DetailPosition.center(_:), v1);
  sub_1002299DC(v4, v7);
  (*(v2 + 8))(v4, v1);
  sub_10076462C();
  sub_10076712C();
  sub_10025A8FC(&unk_10094DF40, &type metadata accessor for LargeHeroBreakoutLayout, &protocol conformance descriptor for LargeHeroBreakoutLayout);
  sub_10076DBDC();
  v13 = v12;
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v16);
  return v13;
}

uint64_t sub_10025A8FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10025A990(void *a1)
{
  v3 = sub_10076642C();
  v107 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076640C();
  v106 = *(v6 - 8);
  __chkstk_darwin(v6);
  v105 = v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v95 = v88 - v9;
  __chkstk_darwin(v10);
  v110 = v88 - v11;
  v103 = sub_10076997C();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10076C38C();
  v99 = *(v100 - 1);
  __chkstk_darwin(v100);
  v98 = v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100765AAC();
  v97 = *(v14 - 8);
  __chkstk_darwin(v14);
  v96 = (v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v109 = (v88 - v17);
  v18 = sub_10000A5D4(&qword_10094EC28, &qword_100797848);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = v88 - v20;
  sub_1007622BC();
  sub_10025B9F0(&unk_10094EC30, &type metadata accessor for TitledParagraph, &protocol conformance descriptor for TitledParagraph);
  sub_10076332C();
  v22 = aBlock;
  if (!aBlock)
  {
    return 0.0;
  }

  v92 = v5;
  v93 = v6;
  v94 = v3;
  sub_100166CB4();
  sub_10076335C();
  sub_10076FD8C();
  (*(v19 + 8))(v21, v18);
  LODWORD(v90) = aBlock;
  v23 = sub_10076229C();
  swift_getKeyPath();
  v91 = a1;
  sub_10076338C();

  v24 = v115[0];
  v25 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v23];
  v26 = [v23 length];
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = v24;
  *(v27 + 32) = v25;
  *(v27 + 40) = 1;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1000275EC;
  *(v28 + 24) = v27;
  v122 = sub_1000ACB04;
  v123 = v28;
  aBlock = _NSConcreteStackBlock;
  v119 = 1107296256;
  v120 = sub_100026610;
  v121 = &unk_10088E7A0;
  v29 = _Block_copy(&aBlock);
  v30 = v24;
  v108 = v25;

  [v23 enumerateAttributesInRange:0 options:v26 usingBlock:{0x100000, v29}];

  _Block_release(v29);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_1007622AC();
    v32 = v97;
    v33 = v96;
    (v97[13])(v96, enum case for TitledParagraphStyle.detail(_:), v14);
    sub_10025B9F0(&qword_10094EC40, &type metadata accessor for TitledParagraphStyle, &protocol conformance descriptor for TitledParagraphStyle);
    sub_10077018C();
    sub_10077018C();
    v34 = v22;
    if (aBlock == v115[0] && v119 == v115[1])
    {
      v89 = 1;
    }

    else
    {
      v89 = sub_10077167C();
    }

    v36 = v100;
    v37 = v90;
    v38 = v32[1];
    v38(v33, v14);
    v38(v109, v14);

    if (v37)
    {
      if (qword_1009401F8 != -1)
      {
        swift_once();
      }

      v39 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
      sub_10000A61C(v39, qword_10099F1E8);
      v115[0] = sub_100630CB4();
      sub_10075FDCC();
      swift_unknownObjectRelease();
      v96 = aBlock;
    }

    else
    {
      v96 = 0;
    }

    sub_10076227C();
    v97 = v34;
    v90 = sub_10076228C();
    v88[1] = v40;
    v91 = v108;
    v41 = sub_100630CB4();
    swift_getKeyPath();
    v42 = v98;
    sub_10076338C();

    sub_10076C2FC();
    v1 = v43;
    (*(v99 + 8))(v42, v36);
    v109 = v41;
    isEscapingClosureAtFileLocation = [v41 traitCollection];
    sub_10005312C();
    if (qword_100940B60 == -1)
    {
      goto LABEL_14;
    }
  }

  swift_once();
LABEL_14:
  v44 = sub_10076D3DC();
  sub_10000A61C(v44, qword_1009A1018);
  v100 = isEscapingClosureAtFileLocation;
  v45 = sub_100770B3C();
  v46 = sub_10076C04C();
  v121 = v46;
  v47 = sub_10025B9F0(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v122 = v47;
  v48 = sub_10000DB7C(&aBlock);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(*(v46 - 1) + 104);
  v50(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v46);
  v51 = v45;
  sub_10076C90C();
  sub_10000CD74(&aBlock);
  v52 = v101;
  sub_10076996C();
  sub_10076994C();
  v53 = v102[1];
  v54 = v103;
  v53(v52, v103);
  v116 = v46;
  v117 = v47;
  v55 = sub_10000DB7C(v115);
  v50(v55, v49, v46);
  v56 = v51;
  sub_10076C90C();
  sub_10000CD74(v115);
  v102 = v56;
  sub_10076996C();
  sub_10076994C();
  v53(v52, v54);
  v57 = 0;
  v58 = v89;
  if ((v89 & 1) == 0)
  {
    v57 = sub_1007663BC();
  }

  v59 = swift_allocObject();
  *(v59 + 16) = v57 & 1;
  v60 = v109;
  *(v59 + 24) = v104;
  *(v59 + 32) = v60;
  v61 = v96;
  *(v59 + 40) = v108;
  *(v59 + 48) = v61;
  v62 = sub_10076DDDC();
  swift_allocObject();
  v63 = v91;
  swift_unknownObjectRetain();
  v64 = sub_10076DD9C();
  v114[3] = v62;
  v114[4] = &protocol witness table for LayoutViewPlaceholder;
  v114[0] = v64;
  v65 = v107;
  v66 = v93;
  v67 = v92;
  v68 = v110;
  v108 = v63;
  if (v57)
  {
    v69 = v106;
    if (qword_100940208 != -1)
    {
      swift_once();
    }

    v70 = sub_10000A61C(v66, qword_10099F218);
    v71 = *(v69 + 16);
    v71(v68, v70, v66);
    sub_100397DE4(v60, v1);
    sub_1007663DC();
    [v60 pageMarginInsets];
    sub_1007663EC();
  }

  else
  {
    v69 = v106;
    if (v58)
    {
      if (qword_100940210 != -1)
      {
        swift_once();
      }

      v72 = qword_10099F230;
    }

    else
    {
      if (qword_100940200 != -1)
      {
        swift_once();
      }

      v72 = qword_10099F200;
    }

    v73 = sub_10000A61C(v66, v72);
    v71 = *(v69 + 16);
    v74 = v95;
    v71(v95, v73, v66);
    (*(v69 + 32))(v68, v74, v66);
  }

  v71(v105, v68, v66);
  v75 = v69;
  v76 = v121;
  v77 = v122;
  v78 = sub_10000CF78(&aBlock, v121);
  v113[3] = v76;
  v113[4] = *(v77 + 1);
  v79 = sub_10000DB7C(v113);
  (*(*(v76 - 1) + 16))(v79, v78, v76);
  v80 = v116;
  v81 = v117;
  v82 = sub_10000CF78(v115, v116);
  v112[3] = v80;
  v112[4] = *(v81 + 8);
  v83 = sub_10000DB7C(v112);
  (*(*(v80 - 8) + 16))(v83, v82, v80);
  sub_10000A570(v114, v111);
  sub_10076641C();
  sub_10025B9F0(&unk_100959F60, &type metadata accessor for TitledParagraphLayout, &protocol conformance descriptor for TitledParagraphLayout);
  v84 = v94;
  sub_10076D2AC();
  v35 = v85;

  v86 = v108;
  swift_unknownObjectRelease();

  (*(v65 + 8))(v67, v84);
  (*(v75 + 8))(v110, v66);
  sub_10000CD74(v114);
  sub_10000CD74(v115);
  sub_10000CD74(&aBlock);
  return v35;
}

uint64_t sub_10025B92C()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_10025B984(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10025B9A0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10025B9F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10025BA38(void *a1)
{
  if (*v1 == *a1 && (sub_1007713EC() & 1) != 0 && (type metadata accessor for StringUserDefaultsDebugSetting(), (v2 = swift_dynamicCastClass()) != 0) && ((v3 = v2, *(v2 + 56) == *(v1 + 56)) ? (v4 = *(v2 + 64) == *(v1 + 64)) : (v4 = 0), (v4 || (sub_10077167C() & 1) != 0) && (*(v3 + 72) == *(v1 + 72) && *(v3 + 80) == *(v1 + 80) || (sub_10077167C() & 1) != 0)))
  {
    v5 = *(v3 + 88) ^ *(v1 + 88) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_10025BB38(uint64_t a1, __n128 a2)
{
  sub_1007713FC();
  sub_10077008C();
  sub_10077008C();
  sub_10077177C(*(v2 + 88));
}

uint64_t sub_10025BB90()
{
  sub_100016C74(v0 + 16);

  return swift_deallocClassInstance();
}

id sub_10025BC1C(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  v9 = OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_placement];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100783DD0;
  *(v18 + 32) = sub_10076E3EC();
  *(v18 + 40) = &protocol witness table for UITraitLayoutDirection;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v16;
}

void sub_10025BFB8()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  objc_msgSendSuper2(&v4, "prepareForReuse");
  v1 = OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] removeFromSuperview];
  v2 = *&v0[v1];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;
}

double sub_10025C084()
{
  v1 = [v0 contentView];
  [v1 bounds];
  v3 = v2;

  return v3;
}

void sub_10025C0FC(void *a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView];
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v7 = a1;

  if (a1)
  {
    v6 = [v1 contentView];
    [v6 addSubview:v7];

    [v7 updateTraitsIfNeeded];
    [v7 setNeedsLayout];
    [v1 setNeedsLayout];
    [v1 layoutIfNeeded];
  }
}

void (*sub_10025C1FC(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_10025C254;
}

void sub_10025C254(uint64_t a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v8 = v2;
    sub_10025C0FC(v2);
LABEL_8:

    return;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *&v3[v4];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v3[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v3[v4] = v2;
  v8 = v2;

  if (v2)
  {
    v7 = [v3 contentView];
    [v7 addSubview:v8];

    [v8 updateTraitsIfNeeded];
    [v8 setNeedsLayout];
    [v3 setNeedsLayout];
    [v3 layoutIfNeeded];
    goto LABEL_8;
  }
}

id sub_10025C36C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UnifiedMessageCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10025C43C(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_10025C4E0()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_placement);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_10025C538(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_placement);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void *sub_10025C5F8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10025C644(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageViewController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_10025C6FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView);
  v2 = v1;
  return v1;
}

void (*sub_10025C730(void *a1))(void *a1)
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
  v2[4] = sub_10025C1FC(v2);
  return sub_100019FCC;
}

double sub_10025C7A0()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 2 && (v3 = objc_opt_self(), v4 = [v3 mainScreen], objc_msgSend(v4, "bounds"), v6 = v5, v8 = v7, v10 = v9, v12 = v11, v4, v31.origin.x = v6, v31.origin.y = v8, v31.size.width = v10, v31.size.height = v12, Width = CGRectGetWidth(v31), v14 = objc_msgSend(v3, "mainScreen"), objc_msgSend(v14, "bounds"), v16 = v15, v18 = v17, v20 = v19, v22 = v21, v14, v32.origin.x = v16, v32.origin.y = v18, v32.size.width = v20, v32.size.height = v22, CGRectGetHeight(v32) < Width))
  {
    v23 = [v0 contentView];
    [v23 bounds];

    v24 = [v3 mainScreen];
    [v24 bounds];

    v25 = [v0 contentView];
    [v25 bounds];

    sub_1007709FC();
    return v26;
  }

  else
  {
    v28 = [v0 contentView];
    [v28 bounds];
    v27 = v29;
  }

  return v27;
}

void sub_10025C9E4()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
}

id sub_10025CB38(char *a1)
{
  [*&a1[OBJC_IVAR____TtC20ProductPageExtension32UnifiedMessageCollectionViewCell_inlineUnifiedMessageView] updateTraitsIfNeeded];

  return [a1 setNeedsLayout];
}

char *sub_10025CB8C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  swift_weakInit();
  v10 = &v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_impressionsUpdateBlock];
  *v10 = 0;
  v10[1] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_tapGestureRecognizer] = 0;
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_clickActionHandler];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_isExpanded] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_wantsCardConsistentMargins] = 0;
  type metadata accessor for TodayCardLockupView();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 layer];
  [v13 setAllowsGroupBlending:0];

  v14 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView;
  v15 = *&v12[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView];
  v16 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_allowsGroupBlending;
  v15[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_allowsGroupBlending] = 0;
  v17 = v15;
  v18 = [v17 layer];
  [v18 setAllowsGroupBlending:v15[v16]];

  v19 = [*&v17[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton] layer];
  [v19 setAllowsGroupBlending:v15[v16]];

  [*(*&v12[v14] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v12[v14] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v12[v14] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  [v12 addSubview:*&v12[v14]];
  v20 = [objc_allocWithZone(UITapGestureRecognizer) init];
  [v20 setDelegate:v12];
  [v20 addTarget:v12 action:"handleTap"];

  [v12 addGestureRecognizer:v20];
  v21 = *&v12[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_tapGestureRecognizer];
  *&v12[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_tapGestureRecognizer] = v20;
  v22 = v20;

  [v12 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraLarge];
  return v12;
}

void sub_10025CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v118 = a6;
  v132 = a2;
  v136 = a1;
  v10 = a5;
  v11 = sub_10076BF6C();
  __chkstk_darwin(v11 - 8);
  v117 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10076BEDC();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v14 - 8);
  v131 = &v113 - v15;
  v16 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v16 - 8);
  v130 = &v113 - v17;
  v18 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v18 - 8);
  v129 = &v113 - v19;
  v20 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v20 - 8);
  v128 = &v113 - v21;
  v22 = sub_10000A5D4(&unk_100945550, &unk_10078A040);
  __chkstk_darwin(v22 - 8);
  v121 = &v113 - v23;
  v120 = sub_10076A3AC();
  v24 = *(v120 - 8);
  __chkstk_darwin(v120);
  v26 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v27 - 8);
  v122 = &v113 - v28;
  v137 = sub_10076C7EC();
  v29 = *(v137 - 8);
  __chkstk_darwin(v137);
  v133 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v34 = &v113 - v33;
  v35 = v6[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_sizeCategory];
  v6[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_sizeCategory] = a5;
  v36 = v10;
  if (v10 == 7)
  {
    if (v35 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v6 setNeedsLayout];
    goto LABEL_6;
  }

  if (v35 == 7)
  {
    goto LABEL_5;
  }

  switch(v10)
  {
    case 6:
      if (v35 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v35 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v35 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v35 - 7) > 0xFFFFFFFC || v35 != v10)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v37 = [v6 traitCollection];
  v38 = v36;
  if (v36 != 4)
  {
    sub_10076C31C();
    sub_10076C31C();
  }

  [v37 layoutDirection];
  sub_1007708DC();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  [v6 setLayoutMargins:{v40, v42, v44, v46}];
  v47 = sub_100312114(a4);
  [v7 setBackgroundColor:v47];

  v48 = *(v29 + 104);
  v126 = enum case for TodayCard.Style.white(_:);
  v127 = v29 + 104;
  v125 = v48;
  v48(v34);
  v49 = sub_10025F04C(&qword_100944B98, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
  sub_10077018C();
  v124 = v49;
  sub_10077018C();
  v135 = a4;
  if (v142 == v138 && v143 == v139)
  {
    v50 = 1;
  }

  else if (sub_10077167C())
  {
    v50 = 1;
  }

  else
  {
    v50 = 2;
  }

  v51 = *(v29 + 8);
  v134 = v29 + 8;
  v123 = v51;
  v51(v34, v137);

  [v7 setOverrideUserInterfaceStyle:v50];
  v52 = [v7 layer];
  [v52 setCornerRadius:20.0];

  v53 = [v7 layer];
  v54 = v53;
  v55 = 12;
  if (v38 == 6)
  {
    v55 = 15;
  }

  if (v7[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_isExpanded])
  {
    v56 = 0;
  }

  else
  {
    v56 = v55;
  }

  [v53 setMaskedCorners:v56];

  v57 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView;
  v58 = *&v7[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView];
  v119 = sub_100766D6C();
  v59 = *(v24 + 104);
  v60 = v120;
  v59(v26, enum case for OfferButtonPresenterViewAlignment.right(_:), v120);
  v61 = v121;
  v59(v121, enum case for OfferButtonPresenterViewAlignment.left(_:), v60);
  (*(v24 + 56))(v61, 0, 1, v60);
  sub_10025F04C(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v62 = v122;
  sub_10076759C();
  v63 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
  v64 = sub_100766D5C();
  v65 = sub_10075F78C();
  v66 = v128;
  (*(*(v65 - 8) + 56))(v128, 1, 1, v65);
  v67 = sub_1007628DC();
  v68 = v129;
  (*(*(v67 - 8) + 56))(v129, 1, 1, v67);
  v69 = sub_10076C54C();
  v70 = v130;
  (*(*(v69 - 8) + 56))(v130, 1, 1, v69);
  v71 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v72 = v131;
  (*(*(v71 - 8) + 56))(v131, 1, 1, v71);
  sub_1004D0A60(v119, v58, v62, v132, (v64 & 1) == 0, 0, v66, v68, v70, v72);
  v58[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1006582B8();
  [v58 setNeedsLayout];
  sub_1006582B8();

  sub_10000CFBC(v72, &qword_10094F730, qword_10078A050);
  sub_10000CFBC(v70, &unk_100949290, &unk_10078BBF0);
  sub_10000CFBC(v68, &unk_1009492A0, &unk_10078BC00);
  sub_10000CFBC(v66, &unk_10094D210, &qword_10078DE20);
  sub_10000CFBC(v62, &unk_100946760, &unk_100787A20);
  v73 = *&v7[v57];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v74 = v73;
  v75 = sub_100770CFC();
  v76 = v75;
  v77 = *&v74[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor];
  *&v74[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleTextColor] = v75;
  if (!v77)
  {
    v82 = v75;
    v79 = 0;
    v81 = v133;
    goto LABEL_23;
  }

  v78 = v75;
  v79 = v77;
  v80 = sub_100770EEC();

  v81 = v133;
  if ((v80 & 1) == 0)
  {
LABEL_23:
    sub_1003EB8BC();
    v78 = v76;
  }

  v83 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel);
  v84 = sub_100770D1C();
  [v83 setTextColor:v84];

  v85 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
  v86 = sub_100770D1C();
  [v85 setTextColor:v86];

  v87 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel);
  v88 = sub_100770D1C();
  [v87 setTextColor:v88];

  v89 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkSubtitleLabel);
  v90 = sub_100770D1C();
  [v89 setTextColor:v90];

  v91 = *&v7[v57];
  v92 = v91[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_preferStackedLargeAXLayouts];
  v91[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_preferStackedLargeAXLayouts] = 1;
  if ((v92 & 1) == 0)
  {
    v93 = &v91[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_axMetrics];
    swift_beginAccess();
    v93[337] = 1;
    [v91 setNeedsLayout];
  }

  v125(v81, v126, v137);
  sub_10077018C();
  sub_10077018C();
  if (v138 == v140 && v139 == v141)
  {
    v123(v81, v137);

LABEL_30:
    v95 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
    v96 = sub_100770E1C();
    goto LABEL_32;
  }

  v94 = sub_10077167C();
  v123(v81, v137);

  if (v94)
  {
    goto LABEL_30;
  }

  v97 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  v98 = objc_opt_self();
  v95 = v97;
  v96 = [v98 whiteColor];
LABEL_32:
  v99 = v96;
  [v95 setTintColor:v96];

  v100 = *&v7[v57];
  v101 = *(v100 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  if (v101)
  {
    v102 = v101;
    v103 = sub_100770D1C();
    [v102 setTextColor:v103];

    v100 = *&v7[v57];
  }

  v104 = *(v100 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
  if (v104)
  {
    v105 = v104;
    v106 = sub_100770D1C();
    [v105 setTextColor:v106];

    v107 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
    if (v107)
    {
      [v107 setAccessibilityIgnoresInvertColors:1];
    }
  }

  sub_10025DF98();
  sub_100766D6C();
  v108 = sub_10076BB5C();

  if (v108)
  {
    v109 = v114;
    sub_10076BEEC();
    sub_10076BE9C();
    (*(v115 + 8))(v109, v116);
    swift_beginAccess();
    sub_10076BFCC();
    v110 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    sub_10076BF7C();
    sub_10075FCCC();
    [v110 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100770D5C();
    }

    sub_10075FB8C();

    v111 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    sub_10075FD2C();
    sub_10025F04C(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v112 = v111;
    sub_100760B8C();
  }

  else
  {
    v112 = *(*&v7[v57] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    sub_10075FCAC();
  }
}

void sub_10025DF98()
{
  [v0 overrideUserInterfaceStyle];
  sub_10076FF9C();
  v1 = sub_10076FF6C();

  v2 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView;
  v3 = [*(*&v0[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView] + OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_crossLinkTitleLabel) layer];
  [v3 setCompositingFilter:v1];

  v4 = [*(*&v0[v2] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel) layer];
  [v4 setCompositingFilter:v1];

  v5 = *&v0[v2];
  v6 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
  if (v6)
  {
    v7 = [v6 layer];
    [v7 setCompositingFilter:v1];

    v5 = *&v0[v2];
  }

  v8 = [*(*(v5 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton) + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_subtitleLabel) layer];
  [v8 setCompositingFilter:v1];

  v9 = [*(*&v0[v2] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel) layer];
  [v9 setCompositingFilter:v1];
}

void sub_10025E160()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  [v0 bounds];
  [v0 layoutMargins];
  sub_100770A3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView] sizeThatFits:{v5, v7}];
  v11 = v10;
  v12 = *&v0[v9];
  v20.origin.x = v2;
  v20.origin.y = v4;
  v20.size.width = v6;
  v20.size.height = v8;
  MinX = CGRectGetMinX(v20);
  v21.origin.x = v2;
  v21.origin.y = v4;
  v21.size.width = v6;
  v21.size.height = v8;
  v14 = CGRectGetMidY(v21) + v11 * -0.5;
  v22.origin.x = v2;
  v22.origin.y = v4;
  v22.size.width = v6;
  v22.size.height = v8;
  [v12 setFrame:{MinX, v14, CGRectGetWidth(v22), v11}];

  v15 = &v0[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_impressionsUpdateBlock];
  swift_beginAccess();
  v16 = *v15;
  if (*v15)
  {
    v17 = *(v15 + 1);

    v16(v18);
    sub_1000167E0(v16, v17);
  }
}

double sub_10025E34C(double a1)
{
  v3 = [v1 traitCollection];
  if (qword_100941428 != -1)
  {
    swift_once();
  }

  sub_100587DD0(v3, &xmmword_1009A2D20, 1);
  sub_10077071C();
  sub_1007704EC();
  sub_10077071C();
  sub_1007704EC();

  return a1;
}

void sub_10025E6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = sub_10076F7FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000A570(a3, v24);
      sub_10000A5D4(&qword_1009575A0, &unk_100784980);
      sub_10076C84C();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = sub_10076C83C(), , v13))
      {
        sub_100766D7C();
        if (swift_dynamicCastClass())
        {
          sub_100766D6C();
          sub_10076BACC();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_10000CFBC(v6, &qword_1009492E0, &qword_1007893A0);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            sub_1007660EC();

            (*(v8 + 8))(v10, v7);
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

double sub_10025EB24(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_clickActionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_clickActionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_clickActionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1000167E0(v4, v5);
}

void sub_10025EB44()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FD2C();
  sub_10025F04C(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v2 = v1;
  sub_100760BFC();
}

void sub_10025EC04()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView) + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  sub_10075FCAC();
}

uint64_t sub_10025EC70()
{
  sub_10000A5D4(&unk_1009434B0, &unk_100785550);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100783DD0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_lockupView);
  *(v1 + 56) = type metadata accessor for TodayCardLockupView();
  *(v1 + 32) = v2;
  v3 = v2;
  return v1;
}

double sub_10025ED28(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_10025ED88(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

uint64_t sub_10025EE20()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_10025EE7C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

void (*sub_10025EF3C(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000A570(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012498(v6, v4 + 32);
  return sub_10025F14C;
}

uint64_t sub_10025F04C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10025F094()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10025F0CC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10025F104()
{

  sub_10000CD74((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

void sub_10025F158()
{
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_tapGestureRecognizer) = 0;
  v2 = (v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_clickActionHandler);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_isExpanded) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_wantsCardConsistentMargins) = 0;
  sub_10077156C();
  __break(1u);
}

BOOL sub_10025F21C(void *a1)
{
  v2 = v1;
  [a1 locationInView:v1];
  v4 = v3;
  v6 = v5;
  v7 = [v1 hitTest:0 withEvent:?];
  if (v2[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_isExpanded] != 1 || ([v2 bounds], v13.x = v4, v13.y = v6, !CGRectContainsPoint(v14, v13)))
  {

    return 0;
  }

  if (v7)
  {
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v8 = v7;
    v9 = v2;
    v10 = sub_100770EEC();

    if (v10)
    {

      return 0;
    }

    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();

    if (v12)
    {
      return 0;
    }
  }

  return *&v2[OBJC_IVAR____TtC20ProductPageExtension29TodayCardChinSingleLockupView_clickActionHandler] != 0;
}

uint64_t sub_10025F35C()
{
  sub_10000CC8C(v0 + 16);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

double sub_10025F3C4@<D0>(uint64_t a3@<X8>)
{
  type metadata accessor for CondensedSearchEditorialBackgroundView();
  if (sub_10077090C())
  {

    sub_1007708FC();
    *(a3 + 24) = sub_10000A5D4(&qword_10094EF98, qword_100797B98);
    *(a3 + 32) = sub_10025F498();
    sub_10000DB7C(a3);
    sub_10076A3BC();
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

unint64_t sub_10025F498()
{
  result = qword_10094EFA0;
  if (!qword_10094EFA0)
  {
    sub_10000CE78(&qword_10094EF98, qword_100797B98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EFA0);
  }

  return result;
}

id sub_10025F4FC(uint64_t a1)
{
  v36[1] = *v1;
  v2 = sub_10076C38C();
  v37 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v5 - 8);
  v7 = v36 - v6;
  v8 = sub_10075E11C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v36 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = 0.0;
  if (!Strong)
  {
    goto LABEL_10;
  }

  v17 = Strong;
  v36[0] = v2;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_8;
  }

  sub_1000D3158(v7);
  if ((*(v9 + 48))(v7, 1, v8) != 1)
  {
    (*(v9 + 32))(v14, v7, v8);
    sub_10076340C();
    v18 = sub_10075E03C();
    v19 = *(v9 + 8);
    v19(v11, v8);
    if (v18)
    {
      v16 = sub_1000D35A8(v17);
      swift_unknownObjectRelease();

      v19(v14, v8);
      goto LABEL_9;
    }

    v19(v14, v8);
    swift_unknownObjectRelease();
LABEL_8:

    goto LABEL_9;
  }

  swift_unknownObjectRelease();
  sub_10000CFBC(v7, &unk_10094DE60, "ܱ\b");
LABEL_9:
  v2 = v36[0];
LABEL_10:
  v20 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{0.0, v16}];
  v21 = objc_opt_self();
  v22 = [v21 fractionalWidthDimension:1.0];
  v23 = [v21 fractionalHeightDimension:1.0];
  v24 = [objc_opt_self() sizeWithWidthDimension:v22 heightDimension:v23];

  type metadata accessor for CondensedSearchEditorialBackgroundView();
  v25 = v24;
  sub_10077091C();
  v26 = v20;
  v27 = sub_10076FF6C();

  v28 = [objc_opt_self() supplementaryItemWithLayoutSize:v25 elementKind:v27 containerAnchor:v26];

  sub_10075EEBC();
  sub_10025FD44();
  sub_10076332C();
  if (v38)
  {
    v29 = sub_10047B894();

    v30 = v29 + -10.0;
  }

  else
  {
    v30 = -10.0;
  }

  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  sub_10076C2EC();
  v32 = v31;
  v34 = v33;
  (*(v37 + 8))(v4, v2);
  [v28 setContentInsets:{v30, v32 + -10.0, -10.0, v34 + -10.0}];
  [v28 setZIndex:-1];

  return v28;
}

void *sub_10025FA28(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100952090, &unk_100784CD0);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-1] - v3;
  v5 = sub_10076182C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18[-1] - v10;
  sub_10000A5D4(&qword_100942F18, &unk_100788330);
  sub_10076333C();
  if (!v19)
  {
    sub_10000CFBC(v18, &qword_100942F20, &qword_100784D10);
    (*(v6 + 56))(v4, 1, 1, v5);
    goto LABEL_6;
  }

  sub_10000CF78(v18, v19);
  sub_1007670CC();
  sub_10000CD74(v18);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
LABEL_6:
    sub_10000CFBC(v4, &unk_100952090, &unk_100784CD0);
    return _swiftEmptyArrayStorage;
  }

  (*(v6 + 32))(v11, v4, v5);
  (*(v6 + 16))(v8, v11, v5);
  v12 = (*(v6 + 88))(v8, v5);
  v13 = *(v6 + 8);
  if (v12 == enum case for ItemBackground.condensedSearch(_:))
  {
    v13(v8, v5);
    v14 = sub_10025F4FC(a1);
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1007841E0;
    *(v15 + 32) = v14;
    v13(v11, v5);
    return v15;
  }

  v13(v11, v5);
  v13(v8, v5);
  return _swiftEmptyArrayStorage;
}

unint64_t sub_10025FD44()
{
  result = qword_100942860;
  if (!qword_100942860)
  {
    sub_10075EEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100942860);
  }

  return result;
}

uint64_t sub_10025FD9C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100763ADC();
  sub_10000DB18(v4, qword_10099DDA0);
  v44 = sub_10000A61C(v4, qword_10099DDA0);
  if (qword_100940A40 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A0CD0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  v7 = v1[13];
  (v7)(v3, enum case for FontSource.useCase(_:), v0);
  v8 = v7;
  v50 = v7;
  v86 = sub_10076D9AC();
  v87 = &protocol witness table for StaticDimension;
  v9 = v86;
  v51 = v86;
  sub_10000DB7C(v85);
  v83 = v0;
  v84 = &protocol witness table for FontSource;
  v10 = sub_10000DB7C(v82);
  v49 = v1[2];
  v49(v10, v3, v0);
  sub_10076D9BC();
  v46 = v1[1];
  v46(v3, v0);
  *v3 = UIFontTextStyleBody;
  v47 = enum case for FontSource.textStyle(_:);
  v8(v3);
  v48 = v1 + 13;
  v83 = v9;
  v84 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v82);
  v80 = v0;
  v81 = &protocol witness table for FontSource;
  v11 = sub_10000DB7C(v79);
  v12 = v49;
  v49(v11, v3, v0);
  v13 = UIFontTextStyleBody;
  sub_10076D9BC();
  v14 = v46;
  v46(v3, v0);
  *v3 = v13;
  v15 = v47;
  v50(v3, v47, v0);
  v80 = v51;
  v81 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v79);
  v77 = v0;
  v78 = &protocol witness table for FontSource;
  v16 = sub_10000DB7C(v76);
  v12(v16, v3, v0);
  v17 = v13;
  sub_10076D9BC();
  v14(v3, v0);
  *v3 = v17;
  v18 = v50;
  v50(v3, v15, v0);
  v19 = v51;
  v77 = v51;
  v78 = &protocol witness table for StaticDimension;
  v42 = sub_10000DB7C(v76);
  v74 = v0;
  v75 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(v73);
  v49(v20, v3, v0);
  v21 = v17;
  sub_10076D9BC();
  v14(v3, v0);
  *v3 = v21;
  v22 = v47;
  v18(v3, v47, v0);
  v74 = v19;
  v75 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v73);
  v71 = v0;
  v72 = &protocol witness table for FontSource;
  v23 = sub_10000DB7C(v70);
  v24 = v49;
  v49(v23, v3, v0);
  v45 = v1 + 2;
  v25 = v21;
  sub_10076D9BC();
  v46(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v18(v3, v22, v0);
  v71 = v51;
  v72 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v70);
  v68 = v0;
  v69 = &protocol witness table for FontSource;
  v26 = sub_10000DB7C(v67);
  v24(v26, v3, v0);
  v27 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  v28 = v46;
  v46(v3, v0);
  v43 = v1 + 1;
  *v3 = v27;
  v29 = v47;
  v18(v3, v47, v0);
  v30 = v51;
  v68 = v51;
  v69 = &protocol witness table for StaticDimension;
  v42 = sub_10000DB7C(v67);
  v65 = v0;
  v66 = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(v64);
  v24(v31, v3, v0);
  v32 = v27;
  sub_10076D9BC();
  v28(v3, v0);
  *v3 = v32;
  v50(v3, v29, v0);
  v65 = v30;
  v66 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v64);
  v62 = v0;
  v63 = &protocol witness table for FontSource;
  v33 = sub_10000DB7C(v61);
  v24(v33, v3, v0);
  v34 = v32;
  sub_10076D9BC();
  v28(v3, v0);
  *v3 = v34;
  v35 = v50;
  v50(v3, v29, v0);
  v62 = v51;
  v63 = &protocol witness table for StaticDimension;
  v42 = sub_10000DB7C(v61);
  v59 = v0;
  v60 = &protocol witness table for FontSource;
  v36 = sub_10000DB7C(v58);
  v24(v36, v3, v0);
  v37 = v34;
  sub_10076D9BC();
  v28(v3, v0);
  *v3 = v37;
  v35(v3, v47, v0);
  v59 = v51;
  v60 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v58);
  v56 = v0;
  v57 = &protocol witness table for FontSource;
  v38 = sub_10000DB7C(v55);
  v49(v38, v3, v0);
  v39 = v37;
  sub_10076D9BC();
  v28(v3, v0);
  v56 = sub_10076D67C();
  v57 = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v55);
  sub_10076D66C();
  v53 = &type metadata for Double;
  v54 = &protocol witness table for Double;
  v52 = 0x4024000000000000;
  return sub_10076399C();
}

uint64_t sub_100260658()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100763ADC();
  sub_10000DB18(v4, qword_10099DDB8);
  v41[0] = sub_10000A61C(v4, qword_10099DDB8);
  if (qword_100941140 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A21B8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v45 = v9;
  v10 = v8;
  v51 = enum case for FontSource.useCase(_:);
  v11 = v1[13];
  v44 = v1 + 13;
  v50 = v11;
  v11(v3);
  v47 = sub_10076D9AC();
  v84[3] = v47;
  v84[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v84);
  v82 = v0;
  v83 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v81);
  v48 = v1[2];
  v49 = v1 + 2;
  v48(v12, v3, v0);
  sub_10076D9BC();
  v43 = v1[1];
  v41[1] = v1 + 1;
  v43(v3, v0);
  v46 = v6;
  v42 = v5;
  v52 = v8;
  v8(v3, v6, v5);
  v13 = v51;
  v50(v3, v51, v0);
  v14 = v47;
  v82 = v47;
  v83 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v81);
  v79 = v0;
  v80 = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v78);
  v48(v15, v3, v0);
  sub_10076D9BC();
  v16 = v43;
  v43(v3, v0);
  v10(v3, v6, v5);
  v17 = v50;
  v50(v3, v13, v0);
  v79 = v14;
  v80 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v78);
  v76 = v0;
  v77 = &protocol witness table for FontSource;
  v18 = sub_10000DB7C(v75);
  v19 = v48;
  v48(v18, v3, v0);
  sub_10076D9BC();
  v16(v3, v0);
  v20 = v42;
  v52(v3, v46, v42);
  v17(v3, v51, v0);
  v76 = v47;
  v77 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v75);
  v73 = v0;
  v74 = &protocol witness table for FontSource;
  v21 = sub_10000DB7C(v72);
  v19(v21, v3, v0);
  sub_10076D9BC();
  v22 = v43;
  v43(v3, v0);
  v52(v3, v46, v20);
  v50(v3, v51, v0);
  v23 = v47;
  v73 = v47;
  v74 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v72);
  v70 = v0;
  v71 = &protocol witness table for FontSource;
  v24 = sub_10000DB7C(v69);
  v48(v24, v3, v0);
  sub_10076D9BC();
  v22(v3, v0);
  if (qword_100941148 != -1)
  {
    swift_once();
  }

  v25 = v42;
  v26 = sub_10000A61C(v42, qword_1009A21D0);
  v52(v3, v26, v25);
  v27 = v50;
  v50(v3, v51, v0);
  v70 = v23;
  v71 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v69);
  *(&v67 + 1) = v0;
  v68 = &protocol witness table for FontSource;
  v28 = sub_10000DB7C(&v66);
  v48(v28, v3, v0);
  sub_10076D9BC();
  v43(v3, v0);
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v52(v3, v46, v42);
  v29 = v27;
  v27(v3, v51, v0);
  v30 = v47;
  v65[3] = v47;
  v65[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v65);
  v63 = v0;
  v64 = &protocol witness table for FontSource;
  v31 = sub_10000DB7C(v62);
  v48(v31, v3, v0);
  sub_10076D9BC();
  v43(v3, v0);
  *v3 = UIFontTextStyleFootnote;
  v29(v3, enum case for FontSource.textStyle(_:), v0);
  v63 = v30;
  v64 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v62);
  v60 = v0;
  v61 = &protocol witness table for FontSource;
  v32 = sub_10000DB7C(v59);
  v33 = v48;
  v48(v32, v3, v0);
  v34 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  v35 = v43;
  v43(v3, v0);
  v36 = v42;
  v52(v3, v46, v42);
  v37 = v51;
  v50(v3, v51, v0);
  v60 = v47;
  v61 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v59);
  v57 = v0;
  v58 = &protocol witness table for FontSource;
  v38 = sub_10000DB7C(v56);
  v33(v38, v3, v0);
  sub_10076D9BC();
  v35(v3, v0);
  v52(v3, v46, v36);
  v50(v3, v37, v0);
  v57 = v47;
  v58 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v56);
  v54 = v0;
  v55 = &protocol witness table for FontSource;
  v39 = sub_10000DB7C(v53);
  v33(v39, v3, v0);
  sub_10076D9BC();
  v35(v3, v0);
  v54 = &type metadata for Double;
  v55 = &protocol witness table for Double;
  v53[0] = 0x4024000000000000;
  return sub_10076399C();
}

uint64_t sub_100260FFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 == 3)
  {
    if (qword_10093F838 != -1)
    {
      swift_once();
    }

    v3 = sub_10076D9AC();
    v4 = v3;
    v5 = qword_10099D268;
  }

  else
  {
    if (a1 != 2 && a1 != 1)
    {
      a2[3] = sub_10076D67C();
      a2[4] = &protocol witness table for ZeroDimension;
      sub_10000DB7C(a2);
      return sub_10076D66C();
    }

    if (qword_10093F830 != -1)
    {
      swift_once();
    }

    v3 = sub_10076D9AC();
    v4 = v3;
    v5 = qword_10099D250;
  }

  v6 = sub_10000A61C(v3, v5);
  a2[3] = v4;
  a2[4] = &protocol witness table for StaticDimension;
  v7 = sub_10000DB7C(a2);
  v8 = *(*(v4 - 8) + 16);

  return v8(v7, v6, v4);
}

void sub_100261178(char a1)
{
  v2 = v1;
  v4 = sub_10075E77C();
  *&v5 = __chkstk_darwin(v4 - 8).n128_u64[0];
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_iconType];
  v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_iconType] = a1 & 1;
  if (v8 != (a1 & 1))
  {
    if (a1)
    {
      v9 = [v2 traitCollection];
      sub_10077071C();

      sub_10075E6FC();
      v10 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
      v11 = sub_1005B7DD4(v7, 1);
      v12 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon;
      v13 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon];
      if (v13)
      {
        [v13 removeFromSuperview];
        v14 = *&v2[v12];
      }

      else
      {
        v14 = 0;
      }

      *&v2[v12] = v11;
      v18 = v11;

      [v2 addSubview:v18];
      [*&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView] setHidden:1];
    }

    else
    {
      v15 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon;
      v16 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon];
      if (v16)
      {
        [v16 removeFromSuperview];
        v17 = *&v2[v15];
      }

      else
      {
        v17 = 0;
      }

      *&v2[v15] = 0;

      [*&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView] setHidden:0];
    }

    [v2 setNeedsLayout];
  }
}

uint64_t sub_100261350@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  swift_beginAccess();
  v4 = sub_100763ADC();
  (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
  type metadata accessor for BaseLockupView();
  sub_10076422C();
  v6 = v5 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize;
  if (*(v5 + OBJC_IVAR____TtC20ProductPageExtension11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v7 = OBJC_IVAR____TtC20ProductPageExtension11OfferButton__configuration;
    swift_beginAccess();
    sub_10000A570(v5 + v7, v13);
    sub_10000CF78(v13, v13[3]);
    sub_100767A2C();
    v9 = v8;
    v11 = v10;
    sub_10000CD74(v13);
    *v6 = v9;
    *(v6 + 8) = v11;
    *(v6 + 16) = 0;
  }

  return sub_100763A5C();
}

uint64_t sub_1002617F8@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v61 = sub_100763AFC();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100763ADC();
  v62 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  __chkstk_darwin(v10);
  v12 = &v53 - v11;
  sub_100261350(&v53 - v11);
  v13 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall;
  if (v1[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_isDisplayingSearchAd] == 1 && (v1[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] & 1) == 0)
  {
    sub_10076C13C();
    v14 = v62;
    (*(v62 + 8))(v12, v4);
    (*(v14 + 32))(v12, v9, v4);
    v13 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall;
  }

  v55 = v9;
  if (v2[v13] == 1)
  {
    v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_searchAdTertiaryLabel];
    v16 = sub_1007626BC();
    *(&v80 + 1) = v16;
    v81 = &protocol witness table for UILabel;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
    }

    *&v79 = v17;
    sub_10003F19C(&v79, v82);
    v20 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v20)
    {
      v21 = v16;
    }

    else
    {
      v21 = 0;
    }

    if (v20)
    {
      v22 = &protocol witness table for UILabel;
    }

    else
    {
      v22 = 0;
    }

    v79 = v20;
    *&v80 = 0;
    *(&v80 + 1) = v21;
    v81 = v22;
    v23 = v20;
  }

  else
  {
    v18 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
    v19 = sub_1007626BC();
    v82[3] = v19;
    v82[4] = &protocol witness table for UILabel;
    v82[0] = v18;
    v15 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_searchAdTertiaryLabel];
    if (v15)
    {
      *(&v80 + 1) = type metadata accessor for SearchAdTransparencyLabel(0);
      v81 = &protocol witness table for UILabel;
      *&v79 = v15;
      sub_10003F19C(&v79, &v76);
    }

    else
    {
      v24 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
      if (v24)
      {
        v25 = &protocol witness table for UILabel;
      }

      else
      {
        v19 = 0;
        v25 = 0;
        *(&v76 + 1) = 0;
        *&v77 = 0;
      }

      *&v76 = v24;
      *(&v77 + 1) = v19;
      v78 = v25;
      v26 = v18;
      v15 = 0;
      v18 = v24;
    }

    v27 = v18;
    v79 = v76;
    v80 = v77;
    v81 = v78;
  }

  v28 = v15;
  v29 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon;
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon])
  {
    [*&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView] setHidden:1];
  }

  v30 = *(v62 + 16);
  v56 = v12;
  v54 = v30;
  v30(v6, v12, v4);
  v31 = *&v2[v29];
  *(&v77 + 1) = sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v78 = &protocol witness table for UIView;
  v57 = v6;
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v32 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
  }

  *&v76 = v32;
  v33 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_ordinalLabel];
  v34 = sub_1007626BC();
  v75[3] = v34;
  v75[4] = &protocol witness table for UILabel;
  v75[0] = v33;
  v35 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
  v36 = v4;
  if (v35)
  {
    v37 = &protocol witness table for UILabel;
    v38 = v34;
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v74[2] = 0;
    v74[1] = 0;
  }

  v74[0] = v35;
  v74[3] = v38;
  v74[4] = v37;
  v39 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel];
  v73[4] = &protocol witness table for UILabel;
  v73[3] = v34;
  v72[4] = &protocol witness table for UILabel;
  v73[0] = v39;
  v40 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel];
  v72[3] = v34;
  v72[0] = v40;
  v41 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton];
  v71[3] = type metadata accessor for OfferButton();
  v71[4] = &protocol witness table for UIView;
  v71[0] = v41;
  v42 = v31;
  v43 = v33;
  v44 = v35;
  v45 = v39;
  v46 = v40;
  v47 = v41;

  v48 = v57;
  v54(v55, v57, v36);
  sub_10000A570(&v76, &v70);
  sub_10000A570(v75, &v69);
  sub_100016E2C(v74, &v68, &qword_10094BB30, qword_100796E40);
  sub_10000A570(v73, &v67);
  sub_10000A570(v82, &v66);
  sub_100016E2C(&v79, &v65, &qword_10094BB30, qword_100796E40);
  sub_100016E2C(v72, &v64, &qword_10094BB30, qword_100796E40);
  sub_100016E2C(v71, &v63, &unk_10094DA00, &qword_100783FA0);
  v49 = v58;
  sub_100763AEC();
  sub_100262DEC();
  v50 = v61;
  sub_10076D2DC();
  (*(v59 + 8))(v49, v50);
  v51 = *(v62 + 8);
  v51(v48, v36);
  sub_10000CFBC(&v79, &qword_10094BB30, qword_100796E40);
  v51(v56, v36);
  sub_10000CD74(v82);
  sub_10000CFBC(v71, &unk_10094DA00, &qword_100783FA0);
  sub_10000CFBC(v72, &qword_10094BB30, qword_100796E40);
  sub_10000CD74(v73);
  sub_10000CFBC(v74, &qword_10094BB30, qword_100796E40);
  sub_10000CD74(v75);
  return sub_10000CD74(&v76);
}

uint64_t sub_100261EC0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = UIFontTextStyleFootnote;
  (*(v1 + 104))(v4, enum case for FontSource.textStyle(_:), v0, v2);
  v9[3] = sub_10076D9AC();
  v9[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v9);
  v8[3] = v0;
  v8[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v8);
  (*(v1 + 16))(v5, v4, v0);
  v6 = UIFontTextStyleFootnote;
  sub_10076D9BC();
  (*(v1 + 8))(v4, v0);
  return sub_100763ABC();
}

void sub_10026202C()
{
  v1 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_searchAdTertiaryLabel);
  if (v4)
  {
    if (*(v0 + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall) == 1)
    {
      v5 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
      v6 = v4;
      [v5 setHidden:1];
      v7 = v6;
      sub_1007625CC();
      sub_1007625DC();

      v8 = v7;
      v9 = [v5 textColor];
    }

    else
    {
      v10 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel);
      v11 = v4;
      if (v10)
      {
        [v10 setHidden:1];
      }

      v12 = qword_100940A98;
      v13 = v4;
      if (v12 != -1)
      {
        swift_once();
      }

      v14 = sub_10076D3DC();
      v15 = sub_10000A61C(v14, qword_1009A0DD8);
      v16 = *(v14 - 8);
      (*(v16 + 16))(v3, v15, v14);
      (*(v16 + 56))(v3, 0, 1, v14);
      sub_1007625DC();

      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v17 = v13;
      v9 = sub_100770D1C();
    }

    v18 = v9;
    [v4 setTextColor:v9];
  }
}

uint64_t sub_100262280(void *a1, void *a2)
{
  v3 = v2;
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapGestureRecognizer];
  if (v4 && (sub_100016F40(0, &unk_10094F000, UIGestureRecognizer_ptr), v7 = a1, v8 = v4, LOBYTE(a1) = sub_100770EEC(), v8, v7, (a1 & 1) != 0))
  {
    [a2 locationInView:v3];
    v9 = [v3 hitTest:0 withEvent:?];
    if (v9)
    {
      v10 = v9;
      v11 = *&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton];
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v12 = v11;
      v13 = v10;
      v14 = sub_100770EEC();

      v15 = v14 ^ 1;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_1002624F8()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapGestureRecognizer;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapGestureRecognizer];
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapBlock])
  {
    if (v2)
    {
      return;
    }

    v3 = [objc_allocWithZone(UITapGestureRecognizer) init];
    [v3 addTarget:v0 action:"lockupTapGestureRecognized"];
    [v3 setDelegate:v0];

    [v0 addGestureRecognizer:v3];
    v2 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = v3;
}

double sub_100262658()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  v2 = sub_100763ADC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapBlock);
  v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapBlock + 8);

  return sub_1000167E0(v3, v4);
}

id sub_100262704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallLockupView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SmallLockupView(uint64_t a1)
{
  result = qword_10094EFE8;
  if (!qword_10094EFE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100262840(uint64_t a1)
{
  result = sub_100763ADC();
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

double sub_1002628F8(double a1, double a2)
{
  v5 = sub_100763ADC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100261350(v8);
  [v9 layoutMargins];
  v10 = sub_100262AD0(v8, v9, a1, a2);
  (*(v6 + 8))(v8, v5);
  return v10;
}

unint64_t sub_100262A68()
{
  result = qword_10094EFF8;
  if (!qword_10094EFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094EFF8);
  }

  return result;
}

double sub_100262AD0(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_10076443C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = sub_100763ADC();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a2 traitCollection];
  (*(v14 + 16))(v17, a1, v13);
  v19 = sub_100763A4C();
  if ((v21 & 1) == 0 && ((v19 | v20) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_10077071C())
    {
      if (qword_10093F520 != -1)
      {
        swift_once();
      }

      v22 = qword_100944C88;
    }

    else
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v22 = qword_100944CA0;
    }

    v23 = sub_10000A61C(v6, v22);
    (*(v7 + 16))(v9, v23, v6);
    (*(v7 + 32))(v12, v9, v6);
    sub_1007643EC();
    sub_10076441C();
    sub_100763A5C();
    (*(v7 + 8))(v12, v6);
  }

  sub_10076398C();
  v25 = v24;

  (*(v14 + 8))(v17, v13);
  return v25;
}

unint64_t sub_100262DEC()
{
  result = qword_10094F010;
  if (!qword_10094F010)
  {
    sub_100763AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F010);
  }

  return result;
}

id sub_100262E44(__n128 a1)
{
  v2 = sub_10076E3AC();
  __chkstk_darwin(v2);
  v3 = sub_10076E8BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_iconType] = 0;
  v7 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v8 = sub_100763ADC();
  v9 = sub_10000A61C(v8, qword_10099DDA0);
  (*(*(v8 - 8) + 16))(&v1[v7], v9, v8);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_searchAdTertiaryLabel] = 0;
  v1[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  v1[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_isDisplayingSearchAd] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_inAppPurchaseIcon] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapGestureRecognizer] = 0;
  v10 = &v1[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_lockupTapBlock];
  v11 = type metadata accessor for SmallLockupView(0);
  *v10 = 0;
  v10[1] = 0;
  v15.receiver = v1;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  (*(v4 + 104))(v6, enum case for UITypesettingLanguageAwareLineHeightRatio.legacy(_:), v3);
  v13 = v12;
  sub_100770C0C();
  sub_10076E38C();
  sub_100770C1C();

  return v13;
}

uint64_t static NSUserActivity.handle(userActivity:asPartOf:)(void *a1, uint64_t a2)
{
  v75 = a2;
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v5 = &v54 - v4;
  v70 = sub_100766EDC();
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10075F65C();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v69 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100765F6C();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076F4FC();
  __chkstk_darwin(v10 - 8);
  v68 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v12 - 8);
  v63 = &v54 - v13;
  v14 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v14 - 8);
  v60 = &v54 - v15;
  v58 = sub_10076C15C();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100760EFC();
  v55 = *(v17 - 8);
  __chkstk_darwin(v17);
  v72 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076096C();
  v56 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10000A5D4(&qword_10094F020, &qword_100797CC0);
  __chkstk_darwin(v22 - 8);
  v24 = &v54 - v23;
  v25 = sub_10075F49C();
  v73 = *(v25 - 8);
  v74 = v25;
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a1 activityType];
  v30 = sub_10076FF9C();
  v32 = v31;

  if (sub_10076FF9C() == v30 && v33 == v32)
  {

LABEL_5:

    v35 = v75;

    return sub_100264370(a1, v35);
  }

  v54 = v5;
  v34 = sub_10077167C();

  if (v34)
  {
    goto LABEL_5;
  }

  if (sub_10076FF9C() == v30 && v37 == v32)
  {
  }

  else
  {
    v38 = sub_10077167C();

    result = 0;
    if ((v38 & 1) == 0)
    {
      return result;
    }
  }

  v39 = a1;
  sub_10075F46C();
  v41 = v73;
  v40 = v74;
  if ((*(v73 + 48))(v24, 1, v74) == 1)
  {
    sub_10000CFBC(v24, &qword_10094F020, &qword_100797CC0);
    return 0;
  }

  else
  {
    v42 = v28;
    (*(v41 + 32))(v28, v24, v40);
    sub_100761FAC();
    sub_100761F8C();
    sub_10075F48C();
    sub_100761F1C();

    v43 = v56;
    (*(v56 + 8))(v21, v19);
    sub_10076148C();
    sub_10076F63C();
    if (v78)
    {
      sub_1007690DC();
    }

    (*(v55 + 104))(v72, enum case for NavigationTab.loading(_:), v17);
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1007841E0;
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    (*(v57 + 104))(v59, enum case for FlowPage.unknown(_:), v58);
    v45 = v60;
    sub_10075F47C();
    v46 = sub_10075DB7C();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    v47 = v63;
    sub_10075F48C();
    (*(v43 + 56))(v47, 0, 1, v19);
    v76 = 0u;
    v77 = 0u;
    sub_10076F4DC();
    (*(v61 + 104))(v66, enum case for FlowAnimationBehavior.never(_:), v62);
    (*(v64 + 104))(v69, enum case for FlowOrigin.external(_:), v65);
    v48 = *(v67 + 13);
    v67 = v42;
    v48(v71, enum case for FlowPresentationContext.infer(_:), v70);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    *(v44 + 32) = sub_10075F5EC();
    sub_10076F4DC();
    sub_10076225C();
    swift_allocObject();
    v49 = sub_10076221C();
    v50 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    v51 = v54;
    v52 = v75;
    sub_10076F5AC();
    v53 = *(v50 - 8);
    if ((*(v53 + 48))(v51, 1, v50) == 1)
    {
      (*(v73 + 8))(v67, v74);

      sub_10000CFBC(v51, &unk_100943200, &unk_100785840);
    }

    else
    {
      sub_100263C58(v49, 1, v52, v51, &type metadata accessor for TabChangeAction, &qword_10094F078, &type metadata accessor for TabChangeAction);

      (*(v73 + 8))(v67, v74);
      (*(v53 + 8))(v51, v50);
    }

    return 1;
  }
}

uint64_t sub_100263C58(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, __n128), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v28 = a6;
  v29 = a7;
  v27 = a5;
  v31 = a4;
  v30 = a2;
  v8 = sub_10076F1BC();
  v25 = *(v8 - 8);
  v26 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076FA1C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  v18 = sub_10000A5D4(&unk_100958FE0, qword_1007A5B10);
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v25 - v21;
  v32[3] = v27(0, v20);
  v32[4] = sub_100264954(v28, v29);
  v32[0] = a1;
  if (v30)
  {

    sub_1005A26CC();
    (*(v12 + 16))(v14, v17, v11);
    sub_10076F19C();
    sub_10076F60C();
    (*(v25 + 8))(v10, v26);
    (*(v12 + 32))(v22, v17, v11);
    (*(v19 + 104))(v22, enum case for ActionDispatcher.MetricsBehavior.fromAction<A>(_:), v18);
  }

  else
  {
    (*(v19 + 104))(v22, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v18);
  }

  sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v23 = sub_10076F6CC();

  (*(v19 + 8))(v22, v18);
  sub_10000CD74(v32);
  return v23;
}

uint64_t sub_100264370(void *a1, uint64_t a2)
{
  v40 = a2;
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v5 = v35 - v4;
  v6 = sub_10076F4FC();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100760EFC();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076095C();
  v37 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076096C();
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
  v19 = sub_10076FE4C();

  v41 = sub_10076FF9C();
  v42 = v20;
  sub_10077140C();
  if (!*(v19 + 16) || (v21 = sub_10060FEFC(v43), (v22 & 1) == 0))
  {

    sub_100016C74(v43);
LABEL_10:
    v44 = 0u;
    v45 = 0u;
    goto LABEL_11;
  }

  sub_10000CD08(*(v19 + 56) + 32 * v21, &v44);
  sub_100016C74(v43);

  if (!*(&v45 + 1))
  {
LABEL_11:
    sub_10000CFBC(&v44, &unk_1009434C0, &qword_100783F60);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v24 = v43[0];
  v23 = v43[1];
  v25 = sub_10076FF9C();
  v35[1] = v24;
  if (v25 != v24 || v26 != v23)
  {
    v29 = sub_10077167C();

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
  sub_10076094C();
  sub_100761FAC();
  sub_100761F8C();
  sub_100761F1C();

  (*(v38 + 104))(v9, enum case for NavigationTab.arcade(_:), v7);
  sub_10076F4DC();
  sub_10076225C();
  swift_allocObject();
  v30 = sub_10076221C();
  v31 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v32 = v40;
  sub_10076F5AC();
  v33 = v27;
  v34 = *(v31 - 8);
  if ((*(v34 + 48))(v33, 1, v31) == 1)
  {
    (*(v39 + 8))(v16, v13);

    sub_10000CFBC(v33, &unk_100943200, &unk_100785840);
  }

  else
  {
    sub_100263C58(v30, 1, v32, v33, &type metadata accessor for TabChangeAction, &qword_10094F078, &type metadata accessor for TabChangeAction);

    (*(v39 + 8))(v16, v13);
    (*(v34 + 8))(v33, v31);
  }

  return 1;
}

uint64_t sub_100264954(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_100264A54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100264A9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_isDisplayingSearchAd] = 1;

    [v2 setNeedsLayout];
    v6 = [objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton(0)) init];
    sub_10076C3FC();
    sub_10076B8EC();
    v8 = v7;

    if (v8)
    {
      v9 = sub_10076FF6C();
    }

    else
    {
      v9 = 0;
    }

    [v6 setTitle:v9 forState:0];

    v13 = swift_allocObject();
    *(v13 + 16) = a2;
    *(v13 + 24) = a1;
    v14 = &v6[qword_10094CD78];
    v15 = *&v6[qword_10094CD78];
    v16 = *&v6[qword_10094CD78 + 8];
    *v14 = sub_100265034;
    v14[1] = v13;

    sub_1000167E0(v15, v16);
    v17 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyLabel(0));
    v18 = v6;
    v19 = sub_1004CD778(v18);
    if (v3[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] == 1)
    {
      v20 = [*&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] text];
      if (v20)
      {
        v21 = v20;
        v22 = sub_10076FF9C();
        v24 = v23;
      }

      else
      {
        v22 = 0;
        v24 = 0;
      }
    }

    else
    {
      v22 = sub_10076C3EC();
      v24 = v25;
    }

    v27 = &v19[qword_10095A010];
    *v27 = v22;
    v27[1] = v24;

    sub_1004CDE04();
    v28 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_searchAdTertiaryLabel;
    v29 = *&v3[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_searchAdTertiaryLabel];
    v30 = v19;
    if (v29)
    {
      [v29 removeFromSuperview];
      v29 = *&v3[v28];
    }

    *&v3[v28] = v19;
    v31 = v19;

    sub_10026202C();
    [v3 addSubview:v31];

    v32 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
    v33 = *&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
    if (v33 && ([v33 isHidden] & 1) == 0 && (v34 = *&v3[v32]) != 0)
    {
      v35 = [v34 hasContent];
    }

    else
    {
      v35 = 0;
    }

    v36 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabelPresenter;
    swift_beginAccess();
    sub_10003F0D4(&v3[v36], v38);
    v37 = v39;
    sub_10000CFBC(v38, &unk_1009434C0, &qword_100783F60);
    if (v37 || v35)
    {
      [*&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
    }

    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_isDisplayingSearchAd] = 0;
    [v2 setNeedsLayout];
    v10 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_searchAdTertiaryLabel;
    v11 = *&v3[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_searchAdTertiaryLabel];
    if (v11)
    {
      [v11 removeFromSuperview];
      v12 = *&v3[v10];
    }

    else
    {
      v12 = 0;
    }

    *&v3[v10] = 0;

    v26 = *&v3[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v26)
    {

      [v26 setHidden:0];
    }
  }
}

uint64_t sub_100264E7C(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_10000CFBC(v4, &unk_100943200, &unk_100785840);
  }

  v8 = sub_10076C3FC();
  sub_100263BF0(v8, 1, a1, v4);

  return (*(v6 + 8))(v4, v5);
}

uint64_t sub_100264FF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10026503C()
{
  v0 = objc_allocWithZone(CAMediaTimingFunction);
  LODWORD(v1) = 1051260355;
  LODWORD(v2) = 1059816735;
  LODWORD(v3) = 1.0;
  result = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];
  qword_10094F0E0 = result;
  return result;
}

char *sub_100265090(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10075DDBC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_itemLayoutContext;
  v15 = sub_10076341C();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  v16 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView;
  type metadata accessor for HeroCarouselView(0);
  *&v5[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_state;
  v18 = sub_10000A5D4(&qword_1009489D8, &qword_100797D70);
  (*(*(v18 - 8) + 56))(&v5[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  *&v5[v19] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v20 = &v5[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
  *v20 = 0;
  v20[1] = 0;
  swift_weakInit();
  v21 = &v5[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock];
  *v21 = 0;
  v21[1] = 0;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_currentTitleEffect;
  v23 = sub_1007604EC();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  v24 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_onUpdatePageTitleEffect;
  sub_10000A5D4(&qword_10094F160, &qword_100797F28);
  swift_allocObject();
  *&v5[v24] = sub_10076FE0C();
  sub_10075DDAC();
  v25 = sub_10075DD8C();
  v27 = v26;
  (*(v11 + 8))(v13, v10);
  v41[0] = v25;
  v41[1] = v27;
  sub_10077140C();
  v5[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_allowsAutoPlay] = 1;
  v5[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_isPlaying] = 0;
  swift_unknownObjectWeakInit();
  v28 = type metadata accessor for HeroCarouselCollectionViewCell(0);
  v42.receiver = v5;
  v42.super_class = v28;
  v29 = objc_msgSendSuper2(&v42, "initWithFrame:", a1, a2, a3, a4);
  v30 = [v29 contentView];
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v31 = [v29 contentView];
  v32 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView;
  [v31 addSubview:*&v29[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView]];

  v33 = *&v29[v32];
  v41[3] = v28;
  v41[4] = &off_10088EA70;
  v41[0] = v29;
  v34 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselDelegate;
  swift_beginAccess();
  v35 = v29;
  v36 = v33;
  sub_10003837C(v41, v33 + v34, &qword_10094F168, qword_100797F30);
  swift_endAccess();

  v37 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  [*&v35[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_tapGestureRecognizer] addTarget:v35 action:"handleTap:"];
  v38 = *&v35[v37];
  [v38 setDelegate:v35];

  [v35 addGestureRecognizer:*&v35[v37]];
  return v35;
}

uint64_t sub_100265560(uint64_t a1)
{
  v3 = sub_100763B6C();
  v20 = *(v3 - 8);
  v21 = v3;
  __chkstk_darwin(v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100962960, &qword_100797F18);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1007604EC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v19 - v14;
  v16 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_currentTitleEffect;
  swift_beginAccess();
  sub_100267A24(a1, v1 + v16);
  swift_endAccess();
  sub_100016E2C(v1 + v16, v8, &unk_100962960, &qword_100797F18);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000CFBC(a1, &unk_100962960, &qword_100797F18);
    return sub_10000CFBC(v8, &unk_100962960, &qword_100797F18);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    (*(v10 + 16))(v12, v15, v9);
    if (qword_10093FBF0 != -1)
    {
      swift_once();
    }

    v18 = qword_10094F0E0;
    sub_100763B5C();
    sub_10076FDFC();
    sub_10000CFBC(a1, &unk_100962960, &qword_100797F18);
    (*(v20 + 8))(v5, v21);
    return (*(v10 + 8))(v15, v9);
  }
}

void sub_10026589C()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for HeroCarouselCollectionViewCell(0);
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView];
  v3 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [v2 setFrame:{v5, v7, v9, v11}];
  v12 = &v1[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock];
  swift_beginAccess();
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 1);

    v13(v15);
    sub_1000167E0(v13, v14);
  }
}

void sub_100265A00()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_10094F150, &qword_100797F20);
  __chkstk_darwin(v2 - 8);
  v4 = &v16[-1] - v3;
  v5 = type metadata accessor for HeroCarouselCollectionViewCell(0);
  v17.receiver = v0;
  v17.super_class = v5;
  objc_msgSendSuper2(&v17, "prepareForReuse");
  v6 = sub_10000A5D4(&qword_1009489D8, &qword_100797D70);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_10003837C(v4, &v0[v7], &unk_10094F150, &qword_100797F20);
  swift_endAccess();
  v8 = &v0[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
  v10 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler + 8];
  *v8 = 0;
  *(v8 + 1) = 0;
  sub_1000167E0(v9, v10);
  v11 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView] + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_scrollView);
  sub_100349CBC(_swiftEmptyArrayStorage, 0);
  v12 = *(v11 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker);
  *(v11 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_focusedPageTracker) = 0;
  sub_1003498A4(v12);

  *(v11 + OBJC_IVAR____TtC20ProductPageExtension22HeroCarouselScrollView_currentPagingDirection) = 1;
  sub_100349558();
  v13 = sub_10076C03C();
  v16[3] = v13;
  v16[4] = sub_1001D7794();
  v14 = sub_10000DB7C(v16);
  (*(*(v13 - 8) + 104))(v14, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v13);
  LOBYTE(v13) = sub_10076C90C();
  sub_10000CD74(v16);
  if ((v13 & 1) == 0)
  {
    sub_10065D93C(0);
  }

  v1[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_isPlaying] = 0;
}

void sub_100265C70(void *a1)
{
  v30.receiver = v1;
  v30.super_class = type metadata accessor for HeroCarouselCollectionViewCell(0);
  objc_msgSendSuper2(&v30, "applyLayoutAttributes:", a1);
  type metadata accessor for BaseCollectionViewLayoutAttributes();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView];
    v26 = v3;
    v5 = OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_parallaxY;
    *(v4 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_parallaxY) = *(v3 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_parallaxY);
    v6 = *(v4 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_carouselItemViews);
    if (v6 >> 62)
    {
      goto LABEL_20;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v27 = a1;

    if (v7)
    {
      v8 = 0;
      v9 = v6 & 0xC000000000000001;
      v10 = &OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView;
      v11 = v6 & 0xFFFFFFFFFFFFFF8;
      v12 = &OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer;
      v28 = v6 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v9)
        {
          v13 = sub_10077149C();
          a1 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
LABEL_14:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v8 >= *(v11 + 16))
          {
            __break(1u);
LABEL_20:
            v7 = sub_10077158C();
            goto LABEL_4;
          }

          v13 = *(v6 + 8 * v8 + 32);
          a1 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            goto LABEL_14;
          }
        }

        v14 = *(v4 + v5);
        v15 = *(*(*&v13[*v10] + *v12) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
        v16 = *&v15[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY];
        *&v15[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = v14;
        if (v14 != v16)
        {
          v17 = v9;
          v18 = v6;
          v19 = v7;
          v20 = v5;
          v21 = v12;
          v22 = v10;
          v23 = v13;
          [v15 setNeedsLayout];
          v13 = v23;
          v10 = v22;
          v12 = v21;
          v5 = v20;
          v7 = v19;
          v6 = v18;
          v9 = v17;
          v11 = v28;
        }

        ++v8;
      }

      while (a1 != v7);
    }

    v24 = sub_10076C03C();
    v29[3] = v24;
    v29[4] = sub_1001D7794();
    v25 = sub_10000DB7C(v29);
    (*(*(v24 - 8) + 104))(v25, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v24);
    LOBYTE(v24) = sub_10076C90C();
    sub_10000CD74(v29);
    if ((v24 & 1) == 0)
    {
      *(v4 + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_isRubberbanding) = *(v26 + OBJC_IVAR____TtC20ProductPageExtension34BaseCollectionViewLayoutAttributes_isRubberbanding);
      sub_10065DA90();
    }
  }
}

void sub_100265F78()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_100767CDC();
  }

  v4 = sub_10076C03C();
  v6[3] = v4;
  v6[4] = sub_1001D7794();
  v5 = sub_10000DB7C(v6);
  (*(*(v4 - 8) + 104))(v5, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v4);
  LOBYTE(v4) = sub_10076C90C();
  sub_10000CD74(v6);
  if ((v4 & 1) == 0)
  {
    sub_10065D93C(1);
  }

  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_isPlaying) = 1;
}

void sub_100266200(uint64_t a1, uint64_t a2)
{
  v93 = sub_10076F7CC();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v3 - 8);
  v94 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v82 - v6;
  __chkstk_darwin(v8);
  v10 = v82 - v9;
  __chkstk_darwin(v11);
  v13 = v82 - v12;
  v14 = sub_10076F7FC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v90 = v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v82 - v18;
  __chkstk_darwin(v20);
  v22 = v82 - v21;
  __chkstk_darwin(v23);
  v25 = v82 - v24;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v27 = Strong;
  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  if (!v28)
  {

    return;
  }

  v89 = v28;
  v87 = v19;
  v29 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView;
  v30 = *&v27[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView];
  if ((v30[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_previousIndex + 8] & 1) == 0)
  {
    v88 = v15;
    v31 = *&v30[OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_previousIndex];
    v32 = v30;
    v86 = v14;
    v33 = v32;
    v34 = v31;
    v15 = v88;
    v35 = sub_10034A5F4(v34, 0);

    v14 = v86;
    if (v35)
    {
      if (!*&v35[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem])
      {

        v15 = v88;
        (*(v88 + 56))(v13, 1, 1, v14);
        goto LABEL_10;
      }

      v84 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem;
      v85 = v35;

      sub_10076276C();

      v15 = v88;
      v83 = *(v88 + 48);
      if (v83(v13, 1, v14) == 1)
      {

LABEL_10:
        sub_10000CFBC(v13, &qword_1009492E0, &qword_1007893A0);
        goto LABEL_19;
      }

      v82[0] = *(v15 + 32);
      (v82[0])(v25, v13, v14);
      v36 = v91;
      sub_10076F7DC();
      v98 = 0u;
      v99 = 0u;
      v100 = 1;
      v37 = sub_1007660CC();
      (*(v92 + 8))(v36, v93);
      if (!v37)
      {
        goto LABEL_18;
      }

      v82[1] = v37;
      if (*&v85[v84] && (, v38 = sub_10076279C(), , v38))
      {
        sub_10076708C();

        v39 = v86;
        v40 = v83(v10, 1, v86);
        v41 = v88;
        if (v40 != 1)
        {
          (v82[0])(v22, v10, v39);
          sub_10076610C();

          (*(v41 + 8))(v22, v39);
          goto LABEL_18;
        }
      }

      else
      {

        (*(v88 + 56))(v10, 1, 1, v86);
      }

      sub_10000CFBC(v10, &qword_1009492E0, &qword_1007893A0);
LABEL_18:
      sub_10076610C();

      v15 = v88;
      v14 = v86;
      (*(v88 + 8))(v25, v86);
    }
  }

LABEL_19:
  v42 = *&v27[v29];
  v43 = sub_10065DD9C();

  if (!v43)
  {

    return;
  }

  v44 = OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem;
  if (!*&v43[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_heroCarouselItem])
  {

    (*(v15 + 56))(v7, 1, 1, v14);
    goto LABEL_25;
  }

  sub_10076276C();

  v45 = v15;
  v46 = *(v15 + 48);
  if (v46(v7, 1, v14) == 1)
  {

LABEL_25:
    v47 = v7;
LABEL_26:
    sub_10000CFBC(v47, &qword_1009492E0, &qword_1007893A0);
    return;
  }

  v48 = *(v15 + 32);
  v49 = v87;
  v88 = v15 + 32;
  v86 = v48;
  v48(v87, v7, v14);
  [v43 bounds];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v27;
  v59 = v14;
  v60 = [v58 superview];
  [v43 convertRect:v60 toView:{v51, v53, v55, v57}];

  sub_1007660EC();
  v61 = *&v43[OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView];
  if (!v61)
  {

    (*(v15 + 8))(v49, v59);
    return;
  }

  if (!*&v43[v44])
  {

    v64 = v94;
LABEL_36:
    (*(v15 + 8))(v87, v59);
    (*(v15 + 56))(v64, 1, 1, v59);
    goto LABEL_37;
  }

  v62 = v61;

  v63 = sub_10076279C();

  v64 = v94;
  if (!v63)
  {

    goto LABEL_36;
  }

  sub_10076708C();

  v65 = v59;
  if (v46(v64, 1, v59) == 1)
  {

    (*(v15 + 8))(v87, v59);
LABEL_37:
    v47 = v64;
    goto LABEL_26;
  }

  v66 = v90;
  v86(v90, v64, v65);
  v67 = v91;
  v68 = v87;
  sub_10076F7DC();
  v95 = 0u;
  v96 = 0u;
  v97 = 1;
  v69 = sub_1007660CC();
  (*(v92 + 8))(v67, v93);
  v70 = v45;
  if (v69)
  {
    v71 = v62;
    [v71 bounds];
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = [v58 superview];

    [v71 convertRect:v80 toView:{v73, v75, v77, v79}];
    sub_1007660EC();
  }

  else
  {
  }

  v81 = *(v70 + 8);
  v81(v66, v65);
  v81(v68, v65);
}

id sub_100266D18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeroCarouselCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for HeroCarouselCollectionViewCell(uint64_t a1)
{
  result = qword_10094F118;
  if (!qword_10094F118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100266EC8(uint64_t a1)
{
  sub_1002670B0(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_10026704C(319);
    if (v2 <= 0x3F)
    {
      sub_1002670B0(319, &unk_10094F140, &type metadata accessor for TitleEffect);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10026704C(uint64_t a1)
{
  if (!qword_10094F130)
  {
    sub_10000CE78(&qword_1009489D8, &qword_100797D70);
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_10094F130);
    }
  }
}

void sub_1002670B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1007711AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100267104@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_playbackId;
  swift_beginAccess();
  return sub_10008C3EC(v1 + v3, a1);
}

void sub_100267170()
{
  v1 = v0;
  v2 = sub_10076C03C();
  v4[3] = v2;
  v4[4] = sub_1001D7794();
  v3 = sub_10000DB7C(v4);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v2);
  LOBYTE(v2) = sub_10076C90C();
  sub_10000CD74(v4);
  if ((v2 & 1) == 0)
  {
    sub_10065D93C(0);
  }

  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_isPlaying) = 0;
}

double sub_1002672BC(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_10026731C(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_10010D5A4;
}

uint64_t sub_1002673B4()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_100267410(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

void (*sub_1002674D0())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_1002676A0;
}

uint64_t sub_100267570@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_currentTitleEffect;
  swift_beginAccess();
  return sub_100016E2C(v3 + v4, a1, &unk_100962960, &qword_100797F18);
}

uint64_t sub_1002675F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100267628()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100267660()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1002676A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&qword_1009489D8, &qword_100797D70);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-v8];
  v10 = sub_10000A5D4(&unk_10094F150, &qword_100797F20);
  __chkstk_darwin(v10 - 8);
  v12 = &v26[-v11];
  v13 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_state;
  swift_beginAccess();
  sub_100016E2C(v3 + v13, v12, &unk_10094F150, &qword_100797F20);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_10000CFBC(v12, &unk_10094F150, &qword_100797F20);
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    v14 = sub_10000CFBC(v12, &unk_10094F150, &qword_100797F20);
    __chkstk_darwin(v14);
    *&v26[-16] = a1;
    sub_1000F4CCC();
    sub_10076F83C();
    (*(v7 + 8))(v9, v6);
  }

  v15 = v3 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock;
  swift_beginAccess();
  v16 = *v15;
  if (*v15)
  {
    v17 = *(v15 + 8);

    v16(v18);
    sub_1000167E0(v16, v17);
  }

  if (a2)
  {
    v19 = *(*(*(*(a2 + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_backgroundView) + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselItemBackgroundView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v19)
    {
      type metadata accessor for VideoView(0);
      v20 = swift_dynamicCastClass();
      if (v20)
      {
        v21 = *(v20 + qword_1009602F0);
        if (v21)
        {
          v22 = v19;
          v23 = v21;
          sub_10076056C();
        }
      }
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_100767CDC();
  }
}

id sub_1002679D8(uint64_t a1)
{
  result = [*(*(v1 + 16) + OBJC_IVAR____TtC20ProductPageExtension16HeroCarouselView_pageControl) currentPage];
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_100267A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100962960, &qword_100797F18);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100267A94()
{
  v1 = v0;
  v2 = sub_10075DDBC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_itemLayoutContext;
  v7 = sub_10076341C();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_carouselView;
  type metadata accessor for HeroCarouselView(0);
  *(v1 + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_state;
  v10 = sub_10000A5D4(&qword_1009489D8, &qword_100797D70);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_tapGestureRecognizer;
  *(v1 + v11) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = (v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler);
  *v12 = 0;
  v12[1] = 0;
  swift_weakInit();
  v13 = (v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_impressionsUpdateBlock);
  *v13 = 0;
  v13[1] = 0;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_currentTitleEffect;
  v15 = sub_1007604EC();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_onUpdatePageTitleEffect;
  sub_10000A5D4(&qword_10094F160, &qword_100797F28);
  swift_allocObject();
  *(v1 + v16) = sub_10076FE0C();
  sub_10075DDAC();
  v17 = sub_10075DD8C();
  v19 = v18;
  (*(v3 + 8))(v5, v2);
  v20[0] = v17;
  v20[1] = v19;
  sub_10077140C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_allowsAutoPlay) = 1;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_isPlaying) = 0;
  swift_unknownObjectWeakInit();
  sub_10077156C();
  __break(1u);
}

id sub_100267DCC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_tagFacetViews] = _swiftEmptyArrayStorage;
  sub_100765A7C();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_ribbonBarItemModels] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_impressionsCalculator] = 0;
  v10 = &v4[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_impressionsUpdateBlock];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_maxRowsStandard] = 2;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_maxRowsAX] = 5;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_10093FBF8 != -1)
  {
    swift_once();
  }

  [v15 setMaximumContentSizeCategory:qword_10094F170];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100783DD0;
  *(v16 + 32) = sub_10076E3FC();
  *(v16 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v15;
}

void sub_10026808C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_tagFacetViews;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_tagFacetViews];
  if (v4 >> 62)
  {
    v5 = sub_10077158C();
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v5; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_10077149C();
    }

    else
    {
      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    [v7 removeFromSuperview];
  }

LABEL_10:
  *&v1[v3] = a1;

  v9 = *&v1[v3];
  if (v9 >> 62)
  {
    v10 = sub_10077158C();
    if (v10)
    {
LABEL_12:
      if (v10 >= 1)
      {

        for (j = 0; j != v10; ++j)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = sub_10077149C();
          }

          else
          {
            v12 = *(v9 + 8 * j + 32);
          }

          v13 = v12;
          [v1 addSubview:v12];
        }

        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  [v1 setNeedsLayout];
}

uint64_t sub_10026823C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v22 = sub_10076D1FC();
  v20 = *(v22 - 8);
  __chkstk_darwin(v22);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100765A8C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100765A9C();
  v21 = *(v23 - 8);
  *&v9 = __chkstk_darwin(v23).n128_u64[0];
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24.receiver = v1;
  v24.super_class = ObjectType;
  objc_msgSendSuper2(&v24, "layoutSubviews", v9);

  sub_10016E318(v12);

  (*(v6 + 16))(v8, &v1[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_metrics], v5);
  sub_100765A4C();
  sub_10076422C();
  sub_100765A6C();
  (*(v20 + 8))(v4, v22);
  v13 = &v1[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_impressionsUpdateBlock];
  swift_beginAccess();
  v14 = *v13;
  if (*v13)
  {
    v15 = *(v13 + 1);
    swift_endAccess();

    v14(v16);
    v17 = sub_1000167E0(v14, v15);
    return (*(v21 + 8))(v11, v23, v17);
  }

  else
  {
    (*(v21 + 8))(v11, v23);
    return swift_endAccess();
  }
}

double sub_100268598(uint64_t a1, __n128 a2, double a3)
{
  v16[1] = a1;
  v4 = sub_100765A8C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100765A9C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_10016E318(v12);

  (*(v5 + 16))(v7, v3 + OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_metrics, v4);
  sub_100765A4C();
  sub_100765A5C();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  return v14;
}

id sub_100268844(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = a1;
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_maxRowsStandard) = a2;
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_maxRowsAX) = a3;
  *(v4 + OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_ribbonBarItemModels) = a1;

  v26 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v6)
  {
    v21 = v4;
    v22 = v5;
    v7 = 0;
    v23 = v5 & 0xFFFFFFFFFFFFFF8;
    v24 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v24)
      {
        v8 = sub_10077149C();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v7 >= *(v23 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v6 = sub_10077158C();
          goto LABEL_3;
        }
      }

      v10 = [objc_allocWithZone(type metadata accessor for RibbonBarItemCollectionViewCell(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      sub_100760C4C();
      sub_10076F64C();
      sub_10076FC1C();
      v11 = sub_10076102C();
      if (v11)
      {
        v12 = v11;
        v13 = v6;
        v14 = swift_allocObject();
        swift_weakInit();
        v15 = swift_allocObject();
        *(v15 + 16) = v14;
        *(v15 + 24) = v12;
        v16 = &v10[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_tapAction];
        v17 = *&v10[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_tapAction];
        v18 = *&v10[OBJC_IVAR____TtC20ProductPageExtension31RibbonBarItemCollectionViewCell_tapAction + 8];
        *v16 = sub_100269570;
        v16[1] = v15;

        sub_1000167E0(v17, v18);
        v6 = v13;
        v5 = v22;
      }

      sub_1001B878C(v8, v25);

      sub_10077019C();
      if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      v4 = &v26;
      sub_10077025C();
      ++v7;
      if (v9 == v6)
      {
        v19 = v26;
        v4 = v21;
        goto LABEL_18;
      }
    }
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_18:
  sub_10026808C(v19);
  return [v4 setNeedsLayout];
}

void sub_100268B6C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v37 - v3;
  v5 = sub_10076F7FC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v49 = *&v10[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_ribbonBarItemModels];
      if (v49)
      {
        v13 = *&v10[OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_tagFacetViews];
        v39 = v10;
        if (v13 >> 62)
        {
          goto LABEL_39;
        }

        for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
        {

          if (!i)
          {
            break;
          }

          v47 = v13 & 0xFFFFFFFFFFFFFF8;
          v48 = v13 & 0xC000000000000001;
          v15 = v49 & 0xFFFFFFFFFFFFFF8;
          if (v49 >= 0)
          {
            v16 = v49 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v16 = v49;
          }

          v37 = v16;
          v41 = (v6 + 32);
          v42 = (v6 + 48);
          v40 = (v6 + 8);
          v17 = 4;
          v45 = v49 & 0xC000000000000001;
          v46 = v49 >> 62;
          v43 = v49 & 0xFFFFFFFFFFFFFF8;
          v44 = i;
          v38 = v4;
          while (1)
          {
            v6 = v17 - 4;
            if (v48)
            {
              v18 = sub_10077149C();
            }

            else
            {
              if (v6 >= *(v47 + 16))
              {
                goto LABEL_37;
              }

              v18 = *(v13 + 8 * v17);
            }

            v19 = v18;
            v20 = v17 - 3;
            if (__OFADD__(v6, 1))
            {
              break;
            }

            if (v46)
            {
              if (v6 == sub_10077158C())
              {
LABEL_33:

                goto LABEL_34;
              }
            }

            else if (v6 == *(v15 + 16))
            {
              goto LABEL_33;
            }

            if (v45)
            {
              sub_10077149C();
            }

            else
            {
              if (v6 >= *(v15 + 16))
              {
                goto LABEL_38;
              }
            }

            sub_10076104C();
            if ((*v42)(v4, 1, v5) == 1)
            {

              sub_100269504(v4);
            }

            else
            {
              (*v41)(v8, v4, v5);
              v21 = v19;
              if ([v21 isHidden])
              {
              }

              else
              {
                [v21 frame];
                v23 = v22;
                v25 = v24;
                v27 = v26;
                v29 = v28;

                v30 = v13;
                v31 = v12;
                v32 = v5;
                v33 = v8;
                v34 = v39;
                v35 = [v39 superview];
                v36 = v34;
                v8 = v33;
                v5 = v32;
                v12 = v31;
                v13 = v30;
                v4 = v38;
                [v36 convertRect:v35 toView:{v23, v25, v27, v29}];

                sub_1007660EC();
              }

              (*v40)(v8, v5);
            }

            ++v17;
            v15 = v43;
            if (v20 == v44)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          ;
        }

LABEL_34:
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for TagFacetRibbonView(uint64_t a1)
{
  result = qword_10094F1B8;
  if (!qword_10094F1B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10026910C(uint64_t a1, __n128 a2)
{
  result = sub_100765A8C();
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

double sub_1002691D0()
{
  swift_beginAccess();

  return result;
}

double sub_100269218(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1002692D0()
{
  v1 = (v0 + OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001CE50(*v1, v1[1]);
  return v2;
}

double sub_10026932C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension18TagFacetRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

void (*sub_1002693EC())()
{
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v1;
  return sub_1002694FC;
}

uint64_t sub_10026948C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1002694C4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100269504(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100269578(void *a1)
{
  sub_10000CF78(a1, a1[3]);
  v2 = sub_10076E36C();
  if (qword_10093FBF8 != -1)
  {
    swift_once();
  }

  v3 = qword_10094F170;
  if (sub_10077086C())
  {
    v3;
  }

  sub_10008B8A4(a1, a1[3]);
  return sub_10076E37C();
}

char *sub_10026964C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v40 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  if (qword_100940CD8 != -1)
  {
    swift_once();
  }

  v19 = sub_10076D3DC();
  v20 = sub_10000A61C(v19, qword_1009A1480);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v17, v20, v19);
  (*(v21 + 56))(v17, 0, 1, v19);
  v22 = *(v12 + 104);
  v22(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(sub_1007626BC());
  *&v5[v18] = sub_1007626AC();
  v24 = OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_itemLayoutContext;
  v25 = sub_10076341C();
  (*(*(v25 - 8) + 56))(&v5[v24], 1, 1, v25);
  v40.receiver = v5;
  v40.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v30 = v26;
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v31 = [v30 contentView];
  [v31 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  v32 = OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  v33 = *&v30[OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel];
  v22(v14, enum case for DirectionalTextAlignment.leading(_:), v11);
  v34 = v33;
  sub_10076262C();

  v35 = *&v30[v32];
  sub_1000325F0();
  v36 = v35;
  v37 = sub_100770D1C();
  [v36 setTextColor:v37];

  v38 = [v30 contentView];
  [v38 addSubview:*&v30[v32]];

  return v30;
}

uint64_t sub_100269A7C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10076D1FC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100767ABC();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v0;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "layoutSubviews", v8);
  v11 = *&v0[OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel];
  v14[4] = sub_1007626BC();
  v14[5] = &protocol witness table for UILabel;
  v14[1] = v11;
  v12 = v11;
  sub_100767A9C();
  [v0 bounds];
  sub_100767AAC();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v10, v6);
}

uint64_t type metadata accessor for PreorderDisclaimerCollectionViewCell(uint64_t a1)
{
  result = qword_10094F1F8;
  if (!qword_10094F1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100269D34(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100269DD4()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_disclaimerLabel;
  if (qword_100940CD8 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, qword_1009A1480);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v9) = sub_1007626AC();
  v14 = OBJC_IVAR____TtC20ProductPageExtension36PreorderDisclaimerCollectionViewCell_itemLayoutContext;
  v15 = sub_10076341C();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  sub_10077156C();
  __break(1u);
}

_BYTE *sub_10026A064(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  isEscapingClosureAtFileLocation = sub_10076771C();
  v7 = *(isEscapingClosureAtFileLocation - 8);
  __chkstk_darwin(isEscapingClosureAtFileLocation);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076D3DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v4[OBJC_IVAR____TtC20ProductPageExtension14CountBadgeView_size] = a1 & 1;
  if ((a1 & 1) == 0)
  {
    if (qword_1009410B0 != -1)
    {
      swift_once();
    }

    v17 = qword_1009A2008;
    goto LABEL_7;
  }

  if (qword_1009410B8 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v17 = qword_1009A2020;
LABEL_7:
    v18 = sub_10000A61C(v10, v17);
    (*(v11 + 16))(v13, v18, v10);
    (*(v11 + 32))(v16, v13, v10);
    v19 = *(v11 + 56);
    v11 += 56;
    v19(v16, 0, 1, v10);
    v20 = *(v7 + 104);
    v7 += 104;
    v20(v9, enum case for DirectionalTextAlignment.none(_:), isEscapingClosureAtFileLocation);
    v21 = objc_allocWithZone(sub_1007626BC());
    *&v4[OBJC_IVAR____TtC20ProductPageExtension14CountBadgeView_countLabel] = sub_1007626AC();
    v22 = type metadata accessor for CountBadgeView();
    v39.receiver = v4;
    v39.super_class = v22;
    v23 = objc_msgSendSuper2(&v39, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v35);
    v24 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 2) = v23;
    v9[24] = a1 & 1;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10026AC1C;
    *(v10 + 24) = v9;
    aBlock[4] = sub_1000349FC;
    v38 = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1001C5148;
    aBlock[3] = &unk_10088ECB0;
    v16 = _Block_copy(aBlock);
    v13 = v38;
    v4 = v23;

    [v24 performWithoutAnimation:v16];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v25 = objc_opt_self();
  v26 = [v25 redColor];
  [v4 setBackgroundColor:v26];

  v27 = OBJC_IVAR____TtC20ProductPageExtension14CountBadgeView_countLabel;
  v28 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14CountBadgeView_countLabel];
  if (v36)
  {
    v29 = v28;
    v30 = sub_10076FF6C();
  }

  else
  {
    v31 = v28;
    v30 = 0;
  }

  [v28 setText:v30];

  v32 = *&v4[v27];
  v33 = [v25 whiteColor];
  [v32 setTextColor:v33];

  [v4 addSubview:*&v4[v27]];
  [v4 setUserInteractionEnabled:0];

  return v4;
}

id sub_10026A628(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14CountBadgeView_countLabel];
  v5 = [v4 text];
  if (a2)
  {
    if (v5)
    {

      v6 = sub_10076FF6C();

LABEL_9:
      [v4 setText:v6];

      return [v2 setNeedsLayout];
    }

    v14 = sub_10076FF6C();

    [v4 setText:v14];

    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    v23 = sub_10004AE34;
    v24 = v16;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10009AEDC;
    v22 = &unk_10088EDA0;
    v9 = _Block_copy(&v19);
    v17 = v2;

    [v15 animateWithDuration:4 delay:v9 options:0 animations:0.2 completion:0.0];
  }

  else
  {
    if (!v5)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    v23 = sub_10026ACA0;
    v24 = v8;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_10009AEDC;
    v22 = &unk_10088ED00;
    v9 = _Block_copy(&v19);
    v10 = v2;

    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v23 = sub_10026ACA8;
    v24 = v11;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_1000513F0;
    v22 = &unk_10088ED50;
    v12 = _Block_copy(&v19);
    v13 = v10;

    [v7 animateWithDuration:4 delay:v9 options:v12 animations:0.2 completion:0.0];
    _Block_release(v12);
  }

  _Block_release(v9);
  return [v2 setNeedsLayout];
}

id sub_10026AB14(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CountBadgeView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10026AB90()
{
  result = qword_10094F240;
  if (!qword_10094F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094F240);
  }

  return result;
}

uint64_t sub_10026ABE4()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_10026AC1C()
{
  v1 = 9.0;
  if (*(v0 + 24))
  {
    v1 = 12.0;
  }

  return [*(v0 + 16) _setContinuousCornerRadius:v1];
}

double sub_10026AC50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10026AC68()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10026ACC8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension14CountBadgeView_countLabel);
  v2 = [v1 text];
  if (v2)
  {
    v3 = v2;
    sub_10076FF9C();

    v4 = sub_1007700AC();

    if (v4 >= 2)
    {
      [v1 sizeThatFits:{0.0, 0.0}];
    }
  }
}

char *sub_10026ADD4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = sub_10076C43C();
  v60 = *(v10 - 8);
  v61 = v10;
  __chkstk_darwin(v10);
  v59 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10076771C();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v54 - v14;
  v16 = sub_10000A5D4(&qword_10094B7E8, &qword_100791A70);
  __chkstk_darwin(v16);
  v17 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_itemLayoutContext;
  v18 = sub_10076341C();
  (*(*(v18 - 8) + 56))(&v4[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView;
  v20 = type metadata accessor for IconGridView(0);
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkViews] = _swiftEmptyArrayStorage;
  sub_10075FD2C();
  sub_10076D4CC();
  sub_100071820(&qword_10094B7F0, &qword_10094B7E8, &qword_100791A70, &protocol conformance descriptor for ViewRecycler<A>);
  sub_10076E18C();
  *&v21[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_impressionableArtworks] = 0;
  *&v21[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkLoader] = 0;
  v22 = &v21[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_configuration];
  *v22 = vdupq_n_s64(0x4056000000000000uLL);
  *(v22 + 2) = 0x4024000000000000;
  *(v22 + 3) = 2;
  *(v22 + 2) = xmmword_100798110;
  v63.receiver = v21;
  v63.super_class = v20;
  *&v5[v19] = objc_msgSendSuper2(&v63, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  *&v5[v23] = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v24 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  if (qword_100940A38 != -1)
  {
    swift_once();
  }

  v25 = sub_10076D3DC();
  v26 = sub_10000A61C(v25, qword_1009A0CB8);
  v27 = *(v25 - 8);
  (*(v27 + 16))(v15, v26, v25);
  (*(v27 + 56))(v15, 0, 1, v25);
  (*(v55 + 104))(v56, enum case for DirectionalTextAlignment.none(_:), v57);
  v28 = objc_allocWithZone(sub_1007626BC());
  *&v5[v24] = sub_1007626AC();
  v29 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerButton;
  v30 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v5[v29] = sub_1001E89B8(0);
  v31 = &v5[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerLabelPresenter];
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v62.receiver = v5;
  v62.super_class = ObjectType;
  v32 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  v33 = [v32 contentView];
  [v33 addSubview:*&v32[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView]];

  v34 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  v35 = *&v32[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_wordmarkImageView];
  v36 = v59;
  v37 = v60;
  v38 = v61;
  (*(v60 + 104))(v59, enum case for Wordmark.arcade(_:), v61);
  v39 = v35;
  v40.super.isa = [v32 traitCollection];
  isa = v40.super.isa;
  v42 = sub_10076C42C(v40);

  (*(v37 + 8))(v36, v38);
  [v39 setImage:v42];

  v43 = *&v32[v34];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v44 = v43;
  v45 = sub_100770CFC();
  [v44 setTintColor:v45];

  v46 = [v32 contentView];
  [v46 addSubview:*&v32[v34]];

  v47 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  v48 = *&v32[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel];
  sub_100770E7C();

  v49 = *&v32[v47];
  v50 = sub_100770D1C();
  [v49 setTextColor:v50];

  v51 = [v32 contentView];
  [v51 addSubview:*&v32[v47]];

  v52 = [v32 contentView];
  [v52 addSubview:*&v32[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerButton]];

  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  return v32;
}

uint64_t sub_10026B55C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10094F248);
  sub_10000A61C(v4, qword_10094F248);
  if (qword_100940A38 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A0CB8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10026B730()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v71 = sub_10076D1FC();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1007653CC();
  v94 = *(v67 - 8);
  __chkstk_darwin(v67);
  v79 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1007653EC();
  v95 = *(v80 - 8);
  __chkstk_darwin(v80);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_10076540C();
  v96 = *(v93 - 8);
  __chkstk_darwin(v93);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_10076D39C();
  v9 = *(v92 - 8);
  __chkstk_darwin(v92);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076299C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_10076543C();
  v65 = *(v66 - 8);
  *&v16 = __chkstk_darwin(v66).n128_u64[0];
  v64 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107.receiver = v1;
  v107.super_class = ObjectType;
  v68 = ObjectType;
  objc_msgSendSuper2(&v107, "layoutSubviews", v16);
  v90 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView];
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_wordmarkImageView];
  v61 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel];
  v63 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerButton];
  sub_10076298C();
  sub_1007629BC();
  sub_10026D2B4(&qword_10094F298, &type metadata accessor for OffsetGridLayout, &protocol conformance descriptor for OffsetGridLayout);
  v72 = v1;
  sub_10076DBDC();
  v20 = v19;
  (*(v13 + 8))(v15, v12);
  v76 = v18;
  v21 = [v18 image];
  if (v21)
  {
    v22 = v21;
    [v21 size];
    sub_10076D3AC();
    sub_10076D35C();

    (*(v9 + 8))(v11, v92);
  }

  sub_10000A5D4(&qword_10094F2A8, " \a");
  v23 = *(sub_10076541C() - 8);
  v91 = *(v23 + 72);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100788B20;
  v62 = v25;
  v92 = v25 + v24;
  *&v98 = v90;
  v105 = &type metadata for CGFloat;
  v106 = &protocol witness table for CGFloat;
  v104 = v20;
  v102 = sub_10076DE7C();
  v103 = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000DB7C(&v101);
  sub_10076DE8C();
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076D27C();
  sub_10000CD74(&v101);
  v78 = enum case for _VerticalFlowLayout.Child.Placement.top(_:);
  v26 = *(v96 + 104);
  v90 = v96 + 104;
  v89 = v26;
  v26(v8);
  v27 = v95;
  v28 = *(v95 + 104);
  v88 = v95 + 104;
  v87 = v28;
  v28(v6, enum case for _VerticalFlowLayout.Child.HorizontalAlignment.leading(_:), v80);
  v102 = &type metadata for CGFloat;
  v103 = &protocol witness table for CGFloat;
  v100 = 0;
  v101 = 0x4044000000000000;
  v98 = 0u;
  v99 = 0u;
  v86 = sub_10000A5D4(&unk_100959500, qword_100798190);
  v29 = v8;
  v30 = v94;
  v31 = *(v94 + 80);
  v60 = *(v94 + 72);
  v75 = ((v31 + 32) & ~v31) + v60;
  v77 = (v31 + 32) & ~v31;
  v32 = swift_allocObject();
  v74 = xmmword_100783DD0;
  *(v32 + 16) = xmmword_100783DD0;
  sub_10076539C();
  v97 = v32;
  v82 = sub_10026D2B4(&qword_10094F2B0, &type metadata accessor for _VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for _VerticalFlowLayout.ExclusionCondition);
  v85 = sub_10000A5D4(&qword_100959510, &unk_1007A6560);
  v84 = sub_100071820(&qword_10094F2B8, &qword_100959510, &unk_1007A6560, &protocol conformance descriptor for [A]);
  v33 = v79;
  v34 = v67;
  sub_1007712CC();
  v35 = v29;
  sub_1007653FC();
  v83 = *(v30 + 8);
  v83(v33, v34);
  sub_10000CFBC(&v98, &unk_100943240, &qword_10078AFB0);
  v36 = *(v27 + 8);
  v95 = v27 + 8;
  v81 = v36;
  v37 = v80;
  v36(v6, v80);
  v38 = *(v96 + 8);
  v96 += 8;
  v39 = v35;
  v40 = v35;
  v41 = v93;
  v38(v39, v93);
  sub_10000CD74(&v104);
  sub_10000CD74(&v101);
  v101 = v76;
  sub_100016F40(0, &qword_10094A280, UIImageView_ptr);
  sub_10076D29C();
  v89(v40, v78, v41);
  v42 = enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:);
  v87(v6, enum case for _VerticalFlowLayout.Child.HorizontalAlignment.center(_:), v37);
  v103 = &protocol witness table for CGFloat;
  v102 = &type metadata for CGFloat;
  v100 = 0;
  v101 = 0x4034000000000000;
  v98 = 0u;
  v99 = 0u;
  v76 = v31;
  v43 = swift_allocObject();
  *(v43 + 16) = v74;
  sub_10076539C();
  v97 = v43;
  sub_1007712CC();
  sub_1007653FC();
  v94 = v30 + 8;
  v83(v33, v34);
  sub_10000CFBC(&v98, &unk_100943240, &qword_10078AFB0);
  v81(v6, v37);
  v44 = v93;
  v73 = v38;
  v38(v40, v93);
  sub_10000CD74(&v104);
  sub_10000CD74(&v101);
  v101 = v61;
  sub_1007626BC();
  sub_10076D26C();
  v89(v40, enum case for _VerticalFlowLayout.Child.Placement.firstBaseline(_:), v44);
  LODWORD(v61) = v42;
  v87(v6, v42, v37);
  if (qword_10093FC00 != -1)
  {
    swift_once();
  }

  v45 = sub_10076D9AC();
  v46 = sub_10000A61C(v45, qword_10094F248);
  v102 = v45;
  v103 = &protocol witness table for StaticDimension;
  v47 = sub_10000DB7C(&v101);
  (*(*(v45 - 8) + 16))(v47, v46, v45);
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_100784500;
  sub_10076539C();
  sub_1007653AC();
  v97 = v48;
  v49 = v79;
  sub_1007712CC();
  sub_1007653FC();
  v83(v49, v34);
  sub_10000CFBC(&v98, &unk_100943240, &qword_10078AFB0);
  v81(v6, v37);
  v50 = v40;
  v51 = v40;
  v52 = v93;
  v73(v50);
  sub_10000CD74(&v104);
  sub_10000CD74(&v101);
  v105 = type metadata accessor for OfferButton();
  v106 = &protocol witness table for UIView;
  v53 = v63;
  v104 = v63;
  v89(v51, v78, v52);
  v87(v6, v61, v37);
  v103 = &protocol witness table for CGFloat;
  v102 = &type metadata for CGFloat;
  v100 = 0;
  v101 = 0x4032000000000000;
  v98 = 0u;
  v99 = 0u;
  v54 = swift_allocObject();
  *(v54 + 16) = v74;
  v55 = v53;
  sub_10076539C();
  v97 = v54;
  sub_1007712CC();
  sub_1007653FC();
  v83(v49, v34);
  sub_10000CFBC(&v98, &unk_100943240, &qword_10078AFB0);
  v81(v6, v37);
  (v73)(v51, v52);
  sub_10000CD74(&v101);
  sub_10000CD74(&v104);
  v56 = v64;
  sub_1007653DC();
  sub_10076422C();
  sub_10026D2B4(&unk_10094F2C0, &type metadata accessor for _VerticalFlowLayout, &protocol conformance descriptor for _VerticalFlowLayout);
  v57 = v69;
  v58 = v66;
  sub_10076DFCC();
  (*(v70 + 8))(v57, v71);
  return (*(v65 + 8))(v56, v58);
}

uint64_t type metadata accessor for ArcadeShowcaseCollectionViewCell(uint64_t a1)
{
  result = qword_10094F288;
  if (!qword_10094F288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10026C950(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_10026C9FC(uint64_t a1, uint64_t a2, void *a3, __n128 a4, double a5)
{
  v48 = a2;
  v54 = a1;
  v51 = sub_10076D93C();
  v49 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D95C();
  v52 = *(v7 - 8);
  v53 = v7;
  __chkstk_darwin(v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_10076DE7C();
  v55 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076443C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v18 = sub_10076299C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076298C();
  sub_1007629BC();
  sub_10026D2B4(&qword_10094F298, &type metadata accessor for OffsetGridLayout, &protocol conformance descriptor for OffsetGridLayout);
  sub_10076DBDC();
  v23 = v22;
  (*(v19 + 8))(v21, v18);
  v24 = [a3 traitCollection];
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v25 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v25 = qword_100944CA0;
  }

  v26 = sub_10000A61C(v11, v25);
  (*(v12 + 16))(v14, v26, v11);

  (*(v12 + 32))(v17, v14, v11);
  sub_10076441C();
  v28 = v27;
  (*(v12 + 8))(v17, v11);
  sub_10000A5D4(&qword_10094F2A0, &unk_100798180);
  v29 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v30 = 7 * *(v55 + 72);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100783DE0;
  v57 = &type metadata for CGFloat;
  v58 = &protocol witness table for CGFloat;
  v56[0] = 0x4044000000000000;
  sub_10076DE8C();
  v57 = &type metadata for CGFloat;
  v58 = &protocol witness table for CGFloat;
  v56[0] = v23;
  sub_10076DE8C();
  v57 = &type metadata for CGFloat;
  v58 = &protocol witness table for CGFloat;
  v56[0] = 0x4034000000000000;
  sub_10076DE8C();
  v57 = &type metadata for CGFloat;
  v58 = &protocol witness table for CGFloat;
  v56[0] = 0;
  sub_10076DE8C();
  v57 = &type metadata for CGFloat;
  v58 = &protocol witness table for CGFloat;
  v56[0] = 0x4033000000000000;
  sub_10076DE8C();
  v57 = &type metadata for CGFloat;
  v58 = &protocol witness table for CGFloat;
  v56[0] = 0x4032000000000000;
  sub_10076DE8C();
  v57 = &type metadata for CGFloat;
  v58 = &protocol witness table for CGFloat;
  v56[0] = v28;
  sub_10076DE8C();
  if ((sub_10077002C() & 1) == 0)
  {
    if (qword_100940A38 != -1)
    {
      swift_once();
    }

    v32 = sub_10076D3DC();
    sub_10000A61C(v32, qword_1009A0CB8);
    v33 = sub_10076C04C();
    v57 = v33;
    v58 = sub_10026D2B4(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v34 = sub_10000DB7C(v56);
    (*(*(v33 - 8) + 104))(v34, enum case for Feature.measurement_with_labelplaceholder(_:), v33);
    sub_10076C90C();
    sub_10000CD74(v56);
    sub_10076991C();
    v36 = v35;
    if (qword_10093FC00 != -1)
    {
      swift_once();
    }

    v37 = sub_10076D9AC();
    sub_10000A61C(v37, qword_10094F248);
    sub_10076D42C();
    v57 = &type metadata for CGFloat;
    v58 = &protocol witness table for CGFloat;
    *v56 = v36 + v38;
    v39 = v46;
    sub_10076DE8C();
    v31 = sub_10049D44C(1, 8, 1, v31);
    *(v31 + 16) = 8;
    (*(v55 + 32))(v31 + v29 + v30, v39, v47);
  }

  v40.n128_f64[0] = (*(v49 + 104))(v50, enum case for StackMeasurable.Axis.vertical(_:), v51);
  sub_10016D72C(v31, v40);

  sub_10076D94C();
  v41 = v53;
  sub_10076D2AC();
  v43 = v42;
  (*(v52 + 8))(v9, v41);
  return v43;
}

uint64_t sub_10026D2B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10026D2FC()
{
  v1 = v0;
  v25 = sub_10076771C();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_10000A5D4(&qword_10094B7E8, &qword_100791A70);
  __chkstk_darwin(v6);
  v7 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_itemLayoutContext;
  v8 = sub_10076341C();
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_iconGridView;
  v10 = type metadata accessor for IconGridView(0);
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkViews] = _swiftEmptyArrayStorage;
  sub_10075FD2C();
  sub_10076D4CC();
  sub_100071820(&qword_10094B7F0, &qword_10094B7E8, &qword_100791A70, &protocol conformance descriptor for ViewRecycler<A>);
  sub_10076E18C();
  *&v11[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_impressionableArtworks] = 0;
  *&v11[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_artworkLoader] = 0;
  v12 = &v11[OBJC_IVAR____TtC20ProductPageExtension12IconGridView_configuration];
  *v12 = vdupq_n_s64(0x4056000000000000uLL);
  *(v12 + 2) = 0x4024000000000000;
  *(v12 + 3) = 2;
  *(v12 + 2) = xmmword_100798110;
  v26.receiver = v11;
  v26.super_class = v10;
  *(v0 + v9) = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v13 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_wordmarkImageView;
  *(v0 + v13) = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_descriptionLabel;
  if (qword_100940A38 != -1)
  {
    swift_once();
  }

  v15 = sub_10076D3DC();
  v16 = sub_10000A61C(v15, qword_1009A0CB8);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v5, v16, v15);
  (*(v17 + 56))(v5, 0, 1, v15);
  (*(v23 + 104))(v24, enum case for DirectionalTextAlignment.none(_:), v25);
  v18 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v14) = sub_1007626AC();
  v19 = OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerButton;
  v20 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v1 + v19) = sub_1001E89B8(0);
  v21 = (v1 + OBJC_IVAR____TtC20ProductPageExtension32ArcadeShowcaseCollectionViewCell_offerLabelPresenter);
  *v21 = 0u;
  v21[1] = 0u;
  sub_10077156C();
  __break(1u);
}

void sub_10026D764(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  sub_10076AFBC();
  swift_allocObject();
  v6 = sub_10076AFAC();
  v7 = sub_100273BC0(v5, v6, a3);

  v8 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchFocusViewController);
  *(a2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchFocusViewController) = v7;
}

void (*sub_10026D7F4(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_100275590;
}

id sub_10026D88C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___resultsMessageView;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___resultsMessageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___resultsMessageView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SearchResultsMessageView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    [v4 setPreservesSuperviewLayoutMargins:1];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_10026D924()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___tokenPalette;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___tokenPalette);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___tokenPalette);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for GuidedSearchTokenPaletteView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = &v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_onSelect];
    v7 = *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_onSelect];
    v8 = *&v4[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_onSelect + 8];
    *v6 = sub_100275A88;
    v6[1] = v5;

    sub_1000167E0(v7, v8);

    v9 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

double sub_10026DA1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    swift_allocObject();
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    sub_100765FAC();
  }

  return result;
}

double sub_10026DB08(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (*(*(Strong + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController) && (type metadata accessor for StoreCollectionViewController(), (v6 = swift_dynamicCastClass()) != 0))
    {
      v7 = &OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph;
    }

    else
    {
      v7 = &OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_objectGraph;
      v6 = v5;
    }

    v8 = *(v6 + *v7);
    sub_1007698AC();
    v9 = swift_dynamicCastClass() == 0;

    sub_100563DC4(a1, v9, v8);
  }

  return result;
}

void sub_10026DC04(void *a1)
{
  v2 = v1;
  if (a1)
  {

    v3 = sub_10026D88C();

    sub_1003768E4(v4);

    v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_palettePresenter);
    v6 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___resultsMessageView);
    v64[3] = type metadata accessor for SearchResultsMessageView();
    v64[4] = &protocol witness table for UIView;
    v64[0] = v6;
    sub_10000A570(v64, v63);
    sub_10000A570(v63, v62);
    v7 = swift_allocObject();
    sub_100012498(v63, v7 + 16);
    v8 = swift_allocObject();
    v8[2] = sub_100275A3C;
    v8[3] = v7;
    v8[4] = 0x3FD999999999999ALL;
    v9 = v6;

    sub_10000CD74(v64);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      sub_10000CD74(v62);

LABEL_28:
      v55 = *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v55)
      {
        v56 = [v55 collectionView];
        if (v56)
        {
          v57 = v56;
          sub_1000E01E8(v56);
          v58 = UIAccessibilityScreenChangedNotification;
          v59 = v57;
          UIAccessibilityPostNotification(v58, v59);
        }
      }

      return;
    }

    v11 = Strong;
    v60 = v6;
    v12 = *(v5 + 24);
    if (v12)
    {
      [v12 setHidden:1];
    }

    v13 = v9;
    [v13 setHidden:0];
    v14 = [v13 superview];
    v15 = [v11 contentView];
    v16 = v15;
    if (v14)
    {
      if (v15)
      {
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v17 = sub_100770EEC();

        v18 = &selRef_initWithTabBarSystemItem_tag_;
        if (v17)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }

      v16 = v14;
      v18 = &selRef_initWithTabBarSystemItem_tag_;
    }

    else
    {
      v18 = &selRef_initWithTabBarSystemItem_tag_;
      if (!v15)
      {
        goto LABEL_25;
      }
    }

LABEL_24:
    v27 = [v11 v18[115]];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    [v13 setFrame:{v29, v31, v33, v35}];
    [v13 setAutoresizingMask:18];
    v36 = [v11 v18[115]];
    [v36 addSubview:v13];

LABEL_25:
    v37 = *(v5 + 24);
    *(v5 + 24) = v60;
    v38 = v13;

    if (*(v5 + 65))
    {
      v39 = [v11 v18[115]];
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      sub_10076422C();
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v66.origin.x = v41;
      v66.origin.y = v43;
      v66.size.width = v45;
      v66.size.height = v47;
      CGRectGetWidth(v66);
      v48 = [v11 v18[115]];
      sub_10000CF78(v62, v62[3]);
      sub_10076D2AC();
      v50 = v49;

      [v11 setPreferredHeight:v50];
      [v11 setMinimumHeight:0.0];
    }

    v51 = *(v5 + 32);
    v52 = *(v5 + 40);
    v53 = *(v5 + 48);
    v54 = *(v5 + 56);
    *(v5 + 32) = sub_100275A3C;
    *(v5 + 40) = v7;
    *(v5 + 48) = sub_100275A7C;
    *(v5 + 56) = v8;
    *(v5 + 64) = 1;
    sub_1000E0788(v51, v52, v53, v54);
    sub_10000CD74(v62);

    goto LABEL_28;
  }

  v19 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_palettePresenter);
  v20 = sub_10026D88C();
  if (*(v19 + 65) == 1 && (v21 = *(v19 + 24)) != 0)
  {
    v61 = v20;
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v22 = v21;
    v23 = sub_100770EEC();

    if (v23)
    {
      v24 = *(v19 + 24);
      if (v24)
      {
        if (*(v19 + 65) == 1)
        {
          v25 = swift_unknownObjectWeakLoadStrong();
          if (v25)
          {
            v26 = v25;
            [v24 setHidden:1];
            [v26 setMinimumHeight:0.0];
            [v26 setPreferredHeight:0.0];

            *(v19 + 65) = 0;
          }
        }
      }
    }
  }

  else
  {
  }
}

void sub_10026E1E0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_palettePresenter);
  v3 = sub_10026D924();
  if (*(v2 + 65) != 1 || (v4 = *(v2 + 24)) == 0)
  {

LABEL_6:
    v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___tokenPalette);
    v49[3] = type metadata accessor for GuidedSearchTokenPaletteView(0);
    v49[4] = &protocol witness table for UIView;
    v49[0] = v8;
    sub_10000A570(v49, v48);
    sub_10000A570(v48, v47);
    v9 = swift_allocObject();
    sub_100012498(v48, v9 + 16);
    v10 = v8;
    sub_10000CD74(v49);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      sub_10000CD74(v47);
LABEL_22:

      sub_1000DFBB4();
      return;
    }

    v12 = Strong;
    v13 = *(v2 + 24);
    if (v13)
    {
      [v13 setHidden:1];
    }

    v14 = v10;
    [v14 setHidden:0];
    v15 = [v14 superview];
    v16 = [v12 contentView];
    v17 = v16;
    if (v15)
    {
      if (v16)
      {
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v18 = sub_100770EEC();

        if (v18)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      v17 = v15;
    }

    else if (!v16)
    {
      goto LABEL_19;
    }

LABEL_18:
    v19 = [v12 contentView];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    [v14 setFrame:{v21, v23, v25, v27}];
    [v14 setAutoresizingMask:18];
    v28 = [v12 contentView];
    [v28 addSubview:v14];

LABEL_19:
    v29 = *(v2 + 24);
    *(v2 + 24) = v8;
    v30 = v14;

    if (*(v2 + 65))
    {
      v31 = [v12 contentView];
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      sub_10076422C();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v50.origin.x = v33;
      v50.origin.y = v35;
      v50.size.width = v37;
      v50.size.height = v39;
      CGRectGetWidth(v50);
      v40 = [v12 contentView];
      sub_10000CF78(v47, v47[3]);
      sub_10076D2AC();
      v42 = v41;

      [v12 setPreferredHeight:v42];
      [v12 preferredHeight];
      [v12 setMinimumHeight:?];
    }

    v43 = *(v2 + 32);
    v44 = *(v2 + 40);
    v45 = *(v2 + 48);
    v46 = *(v2 + 56);
    *(v2 + 32) = sub_100275A3C;
    *(v2 + 40) = v9;
    *(v2 + 48) = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
    sub_1000E0788(v43, v44, v45, v46);
    sub_10000CD74(v47);

    goto LABEL_22;
  }

  v5 = v3;
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v6 = v4;
  v7 = sub_100770EEC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_10026E5D0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_palettePresenter);
  v3 = sub_10026D924();
  if (*(v2 + 65) == 1 && (v4 = *(v2 + 24)) != 0)
  {
    v15 = v3;
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v5 = v4;
    v6 = sub_100770EEC();

    if (v6)
    {
      v7 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___tokenPalette;
      v8 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___tokenPalette);
      sub_1002517E4(_swiftEmptyArrayStorage, v9);

      v10 = *(v1 + v7);
      *&v10[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsCoordinator] = 0;
      v11 = v10;

      *&v11[OBJC_IVAR____TtC20ProductPageExtension28GuidedSearchTokenPaletteView_impressionsScrollObserver] = 0;

      v12 = objc_opt_self();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1002759FC;
      aBlock[5] = v13;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_10088F0A0;
      v14 = _Block_copy(aBlock);

      [v12 animateWithDuration:v14 animations:0.3];
      _Block_release(v14);
    }
  }

  else
  {
  }
}

double sub_10026E7B8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_palettePresenter);
    v4 = Strong;

    v5 = *(v3 + 24);
    if (v5 && *(v3 + 65) == 1)
    {
      v6 = swift_unknownObjectWeakLoadStrong();
      if (v6)
      {
        v7 = v6;
        [v5 setHidden:1];
        [v7 setMinimumHeight:0.0];
        [v7 setPreferredHeight:0.0];

        *(v3 + 65) = 0;
      }
    }
  }

  return result;
}

double sub_10026E894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchTextInput);
  if (v3 && v3[OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isTextExpansionDisabled] != 1)
  {
    v6 = OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_textField;
    v7 = *&v3[OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_textField];
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8 && v7 != 0)
    {
      v11 = v8;
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 40);
      v21 = v3;
      v14 = v7;
      v15 = v13(a1, a2, ObjectType, v11);

      if ((v15 & 1) == 0 || ((v16 = *&v3[v6], swift_getObjectType(), (v17 = swift_conformsToProtocol2()) != 0) ? (v18 = v16 == 0) : (v18 = 1), v18))
      {
      }

      else
      {
        v19 = v17;
        v20 = v16;

        sub_100467AD8(v21, v20, v19, a1, a2);
      }
    }
  }

  return result;
}

uint64_t (*sub_10026EA54(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100275B3C;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_100275B7C;
}

id sub_10026EAE4(id result)
{
  v2 = v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding];
  v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding] = result;
  if (v2 != (result & 1))
  {
    v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController];
    if (result)
    {
      [v1 addChildViewController:*&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController]];
      result = [v1 view];
      if (result)
      {
        v4 = result;
        result = [v3 view];
        if (result)
        {
          v5 = result;
          [v4 addSubview:result];

          v6 = "didMoveToParentViewController:";
          v7 = v3;
          v8 = v1;

          return [v7 v6];
        }

        goto LABEL_15;
      }

      __break(1u);
    }

    else
    {
      [*&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController] willMoveToParentViewController:0];
      result = [v3 view];
      if (result)
      {
        v9 = result;
        [result removeFromSuperview];

        v6 = "removeFromParentViewController";
        v7 = v3;

        return [v7 v6];
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

id sub_10026EC4C()
{
  v1 = v0;
  v2 = sub_10076F9AC();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_10094F4D8, &qword_100798318);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = type metadata accessor for SearchViewController(0);
  v42.receiver = v0;
  v42.super_class = v8;
  objc_msgSendSuper2(&v42, "viewDidLoad");
  v9 = [v0 navigationItem];
  sub_1000DF9B0(v9, 2, 1);

  sub_1007651DC();
  v10 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v11 = sub_10077068C();
  *(&v40 + 1) = v10;
  v41 = &protocol witness table for OS_dispatch_queue;
  *&v39 = v11;
  sub_10000A5D4(&qword_10094F4E0, qword_100798320);
  sub_100071820(&qword_10094F4E8, &qword_10094F4E0, qword_100798320, &protocol conformance descriptor for AsyncEvent<A>);
  sub_10076F46C();

  (*(v5 + 8))(v7, v4);
  sub_10000CD74(&v39);
  sub_10026FC20();
  v12 = [v1 navigationItem];
  result = [v1 tabBarItem];
  if (!result)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = result;
  v15 = [result title];

  if (v15 || (v15 = [v1 title]) != 0)
  {
    sub_10076FF9C();

    v15 = sub_10076FF6C();
  }

  [v12 setTitle:v15];

  v16 = [v1 navigationItem];
  sub_1002B3AB4();

  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController];
  [v17 setSearchResultsUpdater:v1];
  [v17 setDelegate:v1];
  [v17 setObscuresBackgroundDuringPresentation:0];
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  v19 = &v17[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonHandler];
  v20 = *&v17[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonHandler];
  v21 = *&v17[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButtonHandler + 8];
  *v19 = sub_100275B18;
  v19[1] = v18;
  v22 = v1;
  v23 = [v22 navigationItem];
  [v23 setLargeTitleDisplayMode:3];

  v24 = [v22 navigationItem];
  [v24 setSearchController:v17];

  v25 = [v22 navigationItem];
  [v25 setPreferredSearchBarPlacement:2];

  v26 = [v22 navigationItem];
  [v26 setHidesSearchBarWhenScrolling:0];

  [v22 setDefinesPresentationContext:1];
  sub_1001ACE74();
  result = [v22 view];
  if (!result)
  {
    goto LABEL_13;
  }

  v27 = result;
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v28 = sub_100770D2C();
  [v27 setBackgroundColor:v28];

  result = [v22 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v29 = result;
  v39 = 0u;
  v40 = 0u;
  v30 = v36;
  sub_10076F96C();
  sub_10000CFBC(&v39, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  result = (*(v37 + 8))(v30, v38);
  v31 = v22[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding];
  v22[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding] = 1;
  if (v31 == 1)
  {
    return result;
  }

  v32 = *&v22[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController];
  [v22 addChildViewController:v32];
  result = [v22 view];
  if (!result)
  {
    goto LABEL_15;
  }

  v33 = result;
  result = [v32 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v34 = result;
  [v33 addSubview:result];

  return [v32 didMoveToParentViewController:v22];
}

double sub_10026F2F8(char a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for SearchViewController(0);
  objc_msgSendSuper2(&v15, "viewDidAppear:", a1 & 1);
  v4 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController] + OBJC_IVAR____TtC20ProductPageExtension16SearchController_searchTextInput);
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchTextInput];
  *&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchTextInput] = v4;
  v6 = v4;

  if (v4)
  {
    v4 = type metadata accessor for SearchTextInputSourceTextField();
    v7 = sub_100275A98(&qword_10094F4D0, type metadata accessor for SearchTextInputSourceTextField, &unk_1007A4BF0);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    *(&v12 + 1) = 0;
    *&v13 = 0;
  }

  *&v12 = v6;
  *(&v13 + 1) = v4;
  v14 = v7;
  sub_1007651CC();
  v9 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_pendingSearchAction;
  if (*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_pendingSearchAction])
  {
    v12 = 0u;
    v13 = 0u;

    sub_1002714A0(v10, v11);

    sub_10000CFBC(&v12, &unk_1009434C0, &qword_100783F60);
    *&v2[v9] = 0;
  }

  return result;
}

id sub_10026F50C(void *a1, uint64_t a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SearchViewController(0);
  objc_msgSendSuper2(&v7, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
  if ([a1 horizontalSizeClass] == 1)
  {
    v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController];
    if (v5)
    {
      [v5 dismissViewControllerAnimated:0 completion:0];
    }
  }

  return [*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] willTransitionToTraitCollection:a1 withTransitionCoordinator:a2];
}

void sub_10026F63C(void *a1)
{
  v2 = v1;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for SearchViewController(0);
  objc_msgSendSuper2(&v21, "traitCollectionDidChange:", a1);
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] traitCollectionDidChange:a1];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController];
  v5 = [v4 traitCollection];
  v6 = [v5 horizontalSizeClass];
  if (a1 && v6 == [a1 horizontalSizeClass])
  {

LABEL_7:
    v12 = [a1 preferredContentSizeCategory];
    goto LABEL_11;
  }

  v7 = sub_1007706CC();
  v8 = sub_1001ACDAC();
  [v8 _additionalPaddingForSearchFieldAtLeadingEdge];
  v10 = v9;

  v11 = 0.0;
  if ((v7 & 1) == 0)
  {
    if (v10 == 0.0)
    {
      goto LABEL_6;
    }

LABEL_9:
    [*&v4[OBJC_IVAR____TtC20ProductPageExtension16SearchController____lazy_storage____searchBar] _setAdditionalPaddingForSearchFieldAtLeadingEdge:v11];

    if (a1)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  [*&v4[OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton] sizeThatFits:{1.79769313e308, 1.79769313e308}];
  v11 = v13 + 15.0;
  if (v11 != v10)
  {
    goto LABEL_9;
  }

LABEL_6:

  if (a1)
  {
    goto LABEL_7;
  }

LABEL_10:
  v12 = 0;
LABEL_11:
  v14 = [v2 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  if (!v12)
  {

LABEL_17:
    sub_1000DFD68();
    return;
  }

  v16 = sub_10076FF9C();
  v18 = v17;
  if (v16 == sub_10076FF9C() && v18 == v19)
  {

    return;
  }

  v20 = sub_10077167C();

  if ((v20 & 1) == 0)
  {
    goto LABEL_17;
  }
}

void sub_10026FA54()
{
  v25.receiver = v0;
  v25.super_class = type metadata accessor for SearchViewController(0);
  objc_msgSendSuper2(&v25, "viewDidLayoutSubviews");
  v1 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController] view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v0 view];
  if (!v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame:{v6, v8, v10, v12}];
  v13 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] view];
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v13;
  v15 = [v0 view];
  if (v15)
  {
    v16 = v15;
    [v15 bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    [v14 setFrame:{v18, v20, v22, v24}];
    sub_1000DFD68();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_10026FC20()
{
  v1 = sub_10000A5D4(&unk_10094F490, &unk_100798300);
  v14 = *(v1 - 8);
  v15 = v1;
  __chkstk_darwin(v1);
  v13 = &v11 - v2;
  v12 = sub_10000A5D4(&qword_100964180, &unk_1007B2520);
  v3 = *(v12 - 8);
  __chkstk_darwin(v12);
  v5 = &v11 - v4;
  v11 = v0;
  sub_100764EDC();
  v6 = sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v7 = sub_10077068C();
  v17 = v6;
  v18 = &protocol witness table for OS_dispatch_queue;
  v16[0] = v7;
  sub_10000A5D4(&unk_10094F4A0, &qword_1007972C0);
  type metadata accessor for SearchViewController(0);
  sub_100071820(&unk_1009641B0, &unk_10094F4A0, &qword_1007972C0, &protocol conformance descriptor for AsyncEvent<A>);
  sub_10076F46C();

  (*(v3 + 8))(v5, v12);
  sub_10000CD74(v16);
  sub_100764E8C();
  v8 = sub_10077068C();
  v17 = v6;
  v18 = &protocol witness table for OS_dispatch_queue;
  v16[0] = v8;
  sub_10000A5D4(&unk_10094F4B0, &qword_1007B2530);
  sub_100071820(&qword_1009641C0, &unk_10094F4B0, &qword_1007B2530, &protocol conformance descriptor for SyncEvent<A>);
  v9 = v13;
  sub_10076F46C();

  (*(v14 + 8))(v9, v15);
  return sub_10000CD74(v16);
}

id sub_10026FF3C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_10094F4C0, &qword_100798310);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController);
  sub_100764EAC();
  v7 = sub_10075F8EC();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_10000CFBC(v5, &unk_10094F4C0, &qword_100798310);
  return [*(v6 + OBJC_IVAR____TtC20ProductPageExtension16SearchController_filterButton) setEnabled:v8];
}

id (*sub_10027004C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_1002759F4;
}

uint64_t sub_1002700B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_objectGraph);
  v8 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200, &unk_100785840);
  }

  sub_100263BF0(a1, 1, v7, v6);

  return (*(v9 + 8))(v6, v8);
}

uint64_t (*sub_100270200(void *a1))()
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1002759E4;
  *(v3 + 24) = v2;
  v4 = a1;
  return sub_1002759EC;
}

void sub_100270290(void *a1)
{
  v2 = v1;
  v4 = sub_10075F65C();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v69 = v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100765F6C();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_100766EDC();
  v61 = *(v63 - 8);
  __chkstk_darwin(v63);
  v62 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076F4FC();
  __chkstk_darwin(v8 - 8);
  v60[2] = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v10 - 8);
  v71 = v60 - v11;
  v12 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v12 - 8);
  v70 = v60 - v13;
  v14 = sub_10076C15C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v18 - 8);
  v20 = v60 - v19;
  v21 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetsPresenter);
  v22 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_objectGraph);
  v23 = objc_allocWithZone(type metadata accessor for PageFacetsViewController(0));

  v24 = sub_10067A804(v21, 1, v22);

  v25 = v22;

  *&v24[OBJC_IVAR____TtC20ProductPageExtension24PageFacetsViewController_delegate + 8] = &off_10088EDD8;
  swift_unknownObjectWeakAssign();
  v26 = objc_allocWithZone(UINavigationController);
  v72 = v24;
  v27 = [v26 initWithRootViewController:v24];
  v28 = [v27 navigationBar];
  [v28 setPrefersLargeTitles:0];

  v29 = v27;
  [v29 setModalPresentationStyle:7];
  v30 = [v29 presentationController];
  if (v30)
  {
    v31 = v30;
    [v30 setDelegate:v2];
  }

  v32 = [v29 popoverPresentationController];
  if (v32)
  {
    v33 = v32;
    [v32 setSourceView:a1];
  }

  v73 = v2;
  v34 = [v29 popoverPresentationController];
  if (v34)
  {
    v35 = v34;
    [v34 setPermittedArrowDirections:1];
  }

  v36 = [v29 popoverPresentationController];

  if (v36)
  {
    v37 = [a1 titleLabel];
    if (v37)
    {
      v38 = v37;
      [v37 frame];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v47 = v46;
      v48 = v44;
      v49 = v42;
      v50 = v40;
    }

    else
    {
      [a1 bounds];
    }

    MidX = CGRectGetMidX(*&v50);
    [a1 bounds];
    [v36 setSourceRect:{MidX, CGRectGetMaxY(v79), 10.0, 10.0}];
  }

  v52 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v20, 1, v52) == 1)
  {
    sub_10000CFBC(v20, &unk_100943200, &unk_100785840);
  }

  else
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v54 = *(v15 + 104);
    v60[1] = v17;
    v54(v17, enum case for FlowPage.viewController(_:), v14);
    v55 = sub_10075DB7C();
    (*(*(v55 - 8) + 56))(v70, 1, 1, v55);
    v56 = sub_10076096C();
    (*(*(v56 - 8) + 56))(v71, 1, 1, v56);
    v75 = sub_100016F40(0, &qword_100944C68, UINavigationController_ptr);
    v74 = v29;
    v57 = v29;
    v60[0] = v25;
    sub_10076F4DC();
    (*(v61 + 104))(v62, enum case for FlowPresentationContext.infer(_:), v63);
    (*(v65 + 104))(v64, enum case for FlowAnimationBehavior.infer(_:), v66);
    (*(v67 + 104))(v69, enum case for FlowOrigin.inapp(_:), v68);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v58 = sub_10075F5EC();
    sub_100263C24(v58, 1, v60[0], v20);

    (*(v53 + 8))(v20, v52);
  }

  v59 = *(v73 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController);
  *(v73 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController) = v29;
}

void sub_100270BCC(void *a1)
{
  v2 = [a1 searchResultsController];
  if (!v2)
  {
    return;
  }

  v7 = v2;
  [v1 addChildViewController:?];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  v5 = [v7 view];
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v4 addSubview:v5];

  [v7 didMoveToParentViewController:v1];
}

void sub_100270D2C(void *a1)
{
  sub_1000E0404();
  v2 = [a1 searchResultsController];
  if (v2)
  {
    v5 = v2;
    [v2 willMoveToParentViewController:0];
    v3 = [v5 view];
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];

      [v5 removeFromParentViewController];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100270F38(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_activeSearchBarObservingViewController))
  {
    v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_activeSearchBarObservingViewController + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    v8 = a1(ObjectType, v6);
    swift_unknownObjectRelease();
    if (v8)
    {
      v9 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_objectGraph);
      v10 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      sub_10076F5AC();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v5, 1, v10) == 1)
      {

        sub_10000CFBC(v5, &unk_100943200, &unk_100785840);
      }

      else
      {
        sub_100263BF0(v8, 1, v9, v5);

        (*(v11 + 8))(v5, v10);
      }
    }
  }
}

void sub_1002710EC(void *a1)
{
  v2 = v1;
  v4 = [a1 searchBar];
  v5 = [v4 text];

  if (!v5)
  {
LABEL_8:
    if ([a1 isActive] && *(*(v2 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchFocusViewController))
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }

    sub_100602B64(v13, v12);
    sub_100764EFC();
    v14 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController);
    *(v2 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController) = 0;
    if (v14)
    {
      v15 = [v14 presentingViewController];
      if (v15)
      {
        v16 = v15;
        [v15 dismissViewControllerAnimated:1 completion:0];
      }
    }

    goto LABEL_17;
  }

  v6 = sub_10076FF9C();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_8;
  }

  v10 = sub_100602340(v6, v8);

  if (v10)
  {
    return;
  }

  sub_100602B64(1, v11);
  sub_100764EFC();
LABEL_17:

  sub_10026DC04(0);
}

void sub_100271300()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController);
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection) == 2)
  {
    if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsViewController))
    {
    }
  }
}

uint64_t sub_100271364()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController);
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection))
  {
    v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
    if (v2 && (sub_100016F40(0, &qword_100960AD0, UICollectionViewController_ptr), v3 = v2, sub_10000A5D4(&unk_10094F480, &qword_1007982F8), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v9 + 1))
      {
        sub_100012498(&v8, v11);
        v4 = v12;
        v5 = v13;
        sub_10000CF78(v11, v12);
        v6 = (*(v5 + 8))(v4, v5);
        sub_10000CD74(v11);
        return v6;
      }
    }

    else
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }

    sub_10000CFBC(&v8, &unk_10094F470, &qword_1007982F0);
  }

  return 0;
}

void sub_1002714A0(uint64_t a1, __n128 a2)
{
  v4 = sub_100760A6C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = __chkstk_darwin(v8).n128_u64[0];
  v11 = v20 - v10;
  if ([v2 isViewLoaded])
  {
    sub_100760A2C();
    (*(v5 + 104))(v7, enum case for SearchOrigin.tabBar(_:), v4);
    sub_100275A98(&qword_10094F468, &type metadata accessor for SearchOrigin, &protocol conformance descriptor for SearchOrigin);
    sub_10077018C();
    sub_10077018C();
    if (v20[2] == v20[0] && v20[3] == v20[1])
    {
      v12 = *(v5 + 8);
      v12(v7, v4);
      v12(v11, v4);

LABEL_9:
      sub_10027529C();
      return;
    }

    v13 = sub_10077167C();
    v14 = *(v5 + 8);
    v14(v7, v4);
    v14(v11, v4);

    if (v13)
    {
      goto LABEL_9;
    }

    v15 = sub_1007609FC();
    if (!v16)
    {
      goto LABEL_16;
    }

    v17 = v15;
    v18 = v16;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      sub_100271BB8(a1);
    }

    else
    {
LABEL_16:
      sub_10027177C(0);
    }
  }

  else
  {
    *&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_pendingSearchAction] = a1;
  }
}

uint64_t sub_10027177C(char a1)
{
  v3 = sub_10076F08C();
  v18 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076F0CC();
  v6 = *(v17 - 8);
  *&v7 = __chkstk_darwin(v17).n128_u64[0];
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController);
  v11 = [v10 searchBar];
  [v11 becomeFirstResponder];

  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v12 = sub_10077068C();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = a1;
  aBlock[4] = sub_1002759D8;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10088F000;
  v14 = _Block_copy(aBlock);
  v15 = v10;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100275A98(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_100071820(&qword_100945170, &unk_10094E1C0, &qword_100785D50, &protocol conformance descriptor for [A]);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v14);

  (*(v18 + 8))(v5, v3);
  return (*(v6 + 8))(v9, v17);
}

void sub_100271AAC(void *a1, char a2)
{
  [a1 setActive:1];
  v4 = [a1 searchBar];
  v5 = v4;
  if (a2)
  {
    v7 = [v4 searchField];

    if (!v7)
    {
      __break(1u);
      return;
    }

    [v7 selectAll];
  }

  else
  {
    v6 = [v4 isFirstResponder];

    if (v6)
    {
      return;
    }

    v7 = [a1 searchBar];
    [v7 becomeFirstResponder];
  }
}

uint64_t sub_100271BB8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076F08C();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10076F0CC();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10026DC04(0);
  v10 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController] searchBar];
  [v10 resignFirstResponder];

  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v11 = sub_10077068C();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_100275998;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10088EFB0;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100275A98(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_100071820(&qword_100945170, &unk_10094E1C0, &qword_100785D50, &protocol conformance descriptor for [A]);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v13);

  (*(v17 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v16);
}

double sub_100271EF4(char *a1, uint64_t a2)
{
  sub_100601ACC(a2, a2);
  sub_100602B64(2, v3);
  v4 = [a1 navigationController];
  v5 = [v4 topViewController];

  if (!v5 || (sub_100016F40(0, &qword_1009453B0, UIViewController_ptr), v6 = a1, v7 = sub_100770EEC(), v5, v6, (v7 & 1) == 0))
  {
    v8 = [a1 navigationController];
    if (v8)
    {
      v9 = v8;
    }
  }

  v10 = *&a1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController];
  v11 = [v10 searchBar];
  sub_1007609FC();
  if (v12)
  {
    v13 = sub_10076FF6C();
  }

  else
  {
    v13 = 0;
  }

  [v11 setText:v13];

  [v10 setActive:1];
  *&a1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_pendingSearchAction] = 0;

  return result;
}

void sub_10027209C(uint64_t a1)
{
  v3 = sub_10076F08C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F0CC();
  v21 = *(v7 - 8);
  v22 = v7;
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100768EFC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  if ([*(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController) isActive] && *(*(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController) + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSection) == 2)
  {
    v19 = v4;
    v20 = v1;
    sub_100275A98(&qword_10094F450, &type metadata accessor for GuidedSearchTokenCollection, &protocol conformance descriptor for GuidedSearchTokenCollection);
    sub_1007703DC();
    sub_10077040C();
    if (aBlock[0] == aBlock[6])
    {
      sub_10026E5D0();
    }

    else
    {
      sub_10026E1E0();
      sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
      v18 = sub_10077068C();
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
      v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      (*(v11 + 32))(v15 + v14, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
      aBlock[4] = sub_1002756E8;
      aBlock[5] = v15;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10009AEDC;
      aBlock[3] = &unk_10088EF60;
      v16 = _Block_copy(aBlock);

      sub_10076F0AC();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_100275A98(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
      sub_100071820(&qword_100945170, &unk_10094E1C0, &qword_100785D50, &protocol conformance descriptor for [A]);
      sub_1007712CC();
      v17 = v18;
      sub_10077069C();
      _Block_release(v16);

      (*(v19 + 8))(v6, v3);
      (*(v21 + 8))(v9, v22);
    }
  }
}

void sub_100272530(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_100768EFC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v11 = Strong;
  v12 = sub_100271364();

  if (!v12)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_8;
  }

  sub_10076615C();
  swift_allocObject();
  swift_unknownObjectRetain();
  v14 = sub_10076612C();
  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {

LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v16 = v15;
  v17 = sub_10026D924();

  (*(v7 + 16))(v9, a2, v6);
  sub_100275A98(&unk_10094F458, &type metadata accessor for GuidedSearchTokenCollection, &protocol conformance descriptor for GuidedSearchTokenCollection);
  v18 = sub_10077017C();
  v20 = sub_10016E518(v18, v19);

  swift_beginAccess();
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_guidedSearchContainerImpressionMetrics;
    v23 = v21;
    swift_beginAccess();
    sub_100016E2C(v23 + v22, v5, &qword_1009492E0, &qword_1007893A0);
  }

  else
  {
    v24 = sub_10076F7FC();
    (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  }

  sub_10024F848(v14, v20, v5);
  swift_unknownObjectRelease();

  sub_10000CFBC(v5, &qword_1009492E0, &qword_1007893A0);
LABEL_11:
  swift_beginAccess();
  v25 = swift_unknownObjectWeakLoadStrong();
  if (v25)
  {
    v26 = v25;
    v27 = sub_10026D924();

    sub_10071DC1C(v28);
  }
}

char *sub_1002728C8(unint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100945140, &unk_100787540);
  __chkstk_darwin(v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_10075F37C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v8 = a1 >> 62;
  if (!v8)
  {
    v36 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v36 = sub_10077158C();
  if (!v36)
  {
    return 0;
  }

LABEL_3:
  if (v36 < 1)
  {
    __break(1u);
LABEL_33:
    result = sub_10077158C();
    v22 = result;
    if (result)
    {
      goto LABEL_18;
    }

LABEL_34:

    return v6;
  }

  v27 = v8;
  v9 = 0;
  v32 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_objectGraph;
  v10 = v37 & 0xC000000000000001;
  v11 = (v6 + 48);
  v29 = (v6 + 8);
  v30 = (v6 + 32);
  v33 = v37 & 0xC000000000000001;
  v31 = (v6 + 48);
  v28 = v4;
  do
  {
    if (v10)
    {
      v12 = sub_10077149C();
    }

    else
    {
      v12 = *(v37 + 8 * v9 + 32);
    }

    v13 = v12;
    type metadata accessor for AccountButton(0);
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      v35 = v14;
      sub_100016E2C(v14 + qword_10099CB18, v4, &qword_100945140, &unk_100787540);
      if ((*v11)(v4, 1, v5) == 1)
      {

        sub_10000CFBC(v4, &qword_100945140, &unk_100787540);
      }

      else
      {
        v15 = v34;
        (*v30)(v34, v4, v5);
        sub_10076A38C();
        sub_10076F64C();
        sub_10076FC1C();
        v16 = v38;
        v4 = v28;
        v11 = v31;
        sub_10076A37C();

        v17 = v15;
        v10 = v33;
        (*v29)(v17, v5);
      }
    }

    else
    {
    }

    ++v9;
  }

  while (v36 != v9);
  if (!v27)
  {
    result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  result = sub_10077158C();
  if (result == 1)
  {
LABEL_25:
    if (v10)
    {
      return sub_10077149C();
    }

    if (!*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_37;
    }

    return *(v37 + 32);
  }

LABEL_16:
  v19 = [objc_allocWithZone(sub_10000A5D4(&qword_1009453C0 &unk_100787860))];
  *&v19[qword_10095D510] = 0;
  v6 = v19;
  [v6 setNeedsLayout];
  *&v6[qword_10095D518] = 5;
  [v6 setNeedsLayout];
  *&v6[qword_10095D520] = 0x4028000000000000;
  [v6 setNeedsLayout];
  v6[qword_10095D528] = 0;
  [v6 setNeedsLayout];
  sub_10000A5D4(&qword_1009453C8, &qword_1007B3350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = v37;

  sub_1006CDE94(inited);
  v8 = v21;
  swift_setDeallocating();
  result = sub_10000CFBC(inited + 32, &unk_1009453D0, &unk_100787870);
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v22 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_34;
  }

LABEL_18:
  if (v22 >= 1)
  {
    for (i = 0; i != v22; ++i)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v24 = sub_10077149C();
      }

      else
      {
        v24 = *(v8 + 8 * i + 32);
      }

      v25 = v24;
      [v6 addSubview:{v24, v27}];
    }

    goto LABEL_34;
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_100272E1C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_navigationAccessories;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_navigationAccessories];

  v3 = [v0 traitCollection];
  v4 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_objectGraph];
  v5 = v3;

  v6 = sub_100273E2C(v2, v5, 0, v4);

  v27 = sub_1002728C8(v6);

  v7 = [v0 navigationItem];
  v8 = *&v0[v1];

  v9 = [v0 traitCollection];

  v10 = v9;
  v11 = sub_100273E2C(v8, v10, 1u, v4);

  v12 = sub_1002728C8(v11);

  if (v12)
  {
    v13 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v12];
  }

  else
  {
    v13 = 0;
  }

  [v7 setLeftBarButtonItem:{v13, v27}];

  v14 = [v0 navigationItem];
  v15 = *&v0[v1];

  v16 = [v0 traitCollection];

  v17 = v16;
  v18 = sub_100273E2C(v15, v17, 2u, v4);

  v19 = sub_1002728C8(v18);

  if (v19)
  {
    v20 = [objc_allocWithZone(UIBarButtonItem) initWithCustomView:v19];
  }

  else
  {
    v20 = 0;
  }

  [v14 setRightBarButtonItem:v20];

  v21 = [v0 navigationItem];
  v22 = [v21 rightBarButtonItem];

  if (v22)
  {
    [v22 setHidesSharedBackground:1];
  }

  v23 = *&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController];
  v24 = [v0 traitCollection];
  v25 = sub_1007706EC();

  v26 = *(v23 + qword_10099E3A8);
  *(v23 + qword_10099E3A8) = v25 & 1;
  sub_100273A80(v26);
}

uint64_t sub_10027315C()
{
  v1 = v0;
  v2 = sub_10076F08C();
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076F0CC();
  v5 = *(v15 - 8);
  *&v6 = __chkstk_darwin(v15).n128_u64[0];
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*&v0[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController] searchBar];
  [v9 resignFirstResponder];

  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v10 = sub_10077068C();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_1002755B4;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10088EEE8;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100275A98(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_100071820(&qword_100945170, &unk_10094E1C0, &qword_100785D50, &protocol conformance descriptor for [A]);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v12);

  (*(v16 + 8))(v4, v2);
  return (*(v5 + 8))(v8, v15);
}

id sub_1002734B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchViewController(uint64_t a1)
{
  result = qword_10094F3E8;
  if (!qword_10094F3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10027368C(uint64_t a1)
{
  sub_10024FD5C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1002737D0(uint64_t a1)
{
  v2 = type metadata accessor for FlowDestination(0);
  v3 = __chkstk_darwin(v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10005C684(a1, v5, v3);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    result = *v5;
    if (*v5)
    {

      return 1;
    }
  }

  else
  {
    sub_10005C6E8(v5, v6);
    return 0;
  }

  return result;
}

uint64_t sub_1002738CC(uint64_t a1)
{
  v3 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  sub_100016E2C(a1, &v8 - v4, &qword_1009492E0, &qword_1007893A0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_guidedSearchContainerImpressionMetrics;
  swift_beginAccess();
  sub_100273A10(v5, v1 + v6);
  return swift_endAccess();
}

id sub_1002739A0(id result)
{
  if (!result)
  {
    sub_10026EAE4(1);
    v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController);

    return [v2 setShowsSearchResultsController:0];
  }

  return result;
}

uint64_t sub_100273A10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100273A80(char a1)
{
  v2 = qword_10099E3A8;
  v3 = *(v1 + qword_10099E3A8);
  if (v3 != (a1 & 1))
  {
    v4 = qword_1009503E8;
    if ((v3 & 1) != 0 && !*(v1 + qword_1009503E8))
    {
      type metadata accessor for BarButtonItemHidingScrollObserver();
      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      *(v1 + v4) = v6;
      *(v6 + 24) = 0;
      sub_100275A98(&qword_10094F448, type metadata accessor for BarButtonItemHidingScrollObserver, &unk_100794044);

      sub_10076668C();

      v5 = *(v1 + qword_1009503E8);
      if (!v5)
      {
        return;
      }
    }

    else
    {
      v5 = *(v1 + qword_1009503E8);
      if (!v5)
      {
        return;
      }
    }

    *(v5 + 24) = *(v1 + v2);

    sub_1001E5134();
  }
}

char *sub_100273BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13[3] = sub_10076AFBC();
  v13[4] = &protocol witness table for UnimplementedAdvertLifecycleMetricsReporter;
  v13[0] = a2;
  sub_10000A570(v13, v12);
  sub_10076A24C();
  swift_allocObject();

  v5 = sub_10076A23C();
  v6 = sub_100275A98(&qword_10094F440, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  sub_10000A5D4(&qword_10094F420, &qword_1007982E0);
  sub_10076F1BC();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100783DD0;
  sub_10076A14C();
  sub_10000A570(v13, v12);
  swift_allocObject();

  v12[0] = sub_10076A12C();
  sub_10076F19C();
  v8 = sub_1006C7080(a3, v5, v6, v7, 0x6F46686372616573, 0xEF65676150737563);

  v9 = objc_allocWithZone(type metadata accessor for SearchFocusDiffablePageViewController(0));
  v10 = sub_1000574A0(v5, v8);
  sub_10000CD74(v13);
  return v10;
}

void *sub_100273E2C(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v6 = _swiftEmptyArrayStorage;
    v7 = &unk_1009453D0;
    v31 = v4;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10077149C();
        v8 = isUniquelyReferenced_nonNull_bridgeObject;
        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v5 >= *(v34 + 16))
        {
          goto LABEL_44;
        }

        v8 = *(v33 + 8 * v5);

        v9 = __OFADD__(v5++, 1);
        if (v9)
        {
          goto LABEL_43;
        }
      }

      v10 = _swiftEmptyArrayStorage;
      if ((*(v8 + 16))(a2) == a3)
      {
        v10 = sub_100529FCC(a4);
      }

      v11 = v10 >> 62;
      v12 = v10 >> 62 ? sub_10077158C() : *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v6 >> 62;
      if (v6 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
      {
        goto LABEL_42;
      }

LABEL_15:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v13)
        {
          goto LABEL_22;
        }

LABEL_21:
        sub_10077158C();
        goto LABEL_22;
      }

      if (v13)
      {
        goto LABEL_21;
      }

      v15 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v40 = v6;
        goto LABEL_23;
      }

LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1007714AC();
      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v11)
      {
        v19 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = sub_10077158C();
        v15 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v17 >> 1) - v16) < v12)
          {
            goto LABEL_46;
          }

          v20 = v15 + 8 * v16 + 32;
          v38 = v5;
          v32 = v15;
          if (v11)
          {
            if (v18 < 1)
            {
              goto LABEL_48;
            }

            sub_100071820(&qword_100948B80, v7, &unk_100787870, &protocol conformance descriptor for [A]);
            v21 = v7;
            for (i = 0; i != v18; ++i)
            {
              sub_10000A5D4(v7, &unk_100787870);
              v23 = sub_1000FBD70(v39, i, v10);
              v25 = *v24;
              (v23)(v39, 0);
              *(v20 + 8 * i) = v25;
            }
          }

          else
          {
            sub_100016F40(0, &qword_1009441F0, UIView_ptr);
            swift_arrayInitWithCopy();
            v21 = v7;
          }

          v4 = v31;
          v7 = v21;
          v5 = v38;
          v6 = v40;
          if (v12 >= 1)
          {
            v26 = *(v32 + 16);
            v9 = __OFADD__(v26, v12);
            v27 = v26 + v12;
            if (v9)
            {
              goto LABEL_47;
            }

            *(v32 + 16) = v27;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_27;
        }
      }

      v6 = v40;
      if (v12 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      if (v5 == v4)
      {
        return v6;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_10077158C();
    v14 = isUniquelyReferenced_nonNull_bridgeObject + v12;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v12))
    {
      goto LABEL_15;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = sub_10077158C();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_1002741EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v41[1] = ObjectType;
  v7 = sub_10000A5D4(&qword_10094F3F8, &qword_1007982C8);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v41 - v8;
  v9 = sub_10000A5D4(&qword_10094F400, &qword_1007982D0);
  v43 = *(v9 - 8);
  *&v44 = v9;
  __chkstk_darwin(v9);
  v42 = v41 - v10;
  v11 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_palettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v12 + 50) = 0u;
  *(v12 + 40) = 0u;
  *&v3[v11] = v12;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___resultsMessageView] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___tokenPalette] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchTextInput] = 0;
  v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController] = 0;
  *(v12 + 24) = 0u;
  v13 = &v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_activeSearchBarObservingViewController];
  *v13 = 0;
  v13[1] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_pendingSearchAction] = 0;
  v14 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_guidedSearchContainerImpressionMetrics;
  v15 = sub_10076F7FC();
  (*(*(v15 - 8) + 56))(&v3[v14], 1, 1, v15);
  v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_prefersLargeTitle] = 0;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_navigationAccessories] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_objectGraph] = a2;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetsPresenter] = a1;
  sub_10076148C();

  sub_10076F5CC();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_bag] = v50[0];

  sub_10076131C();
  v17 = v16;

  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_paletteImpressionableThreshold] = v17;
  sub_100765FDC();
  sub_10076F5CC();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_guidedSearchPresenter] = v50[0];
  sub_100769A9C();
  sub_10076F63C();
  sub_1007651FC();
  swift_allocObject();
  v18 = sub_1007651EC();
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchTextPresenter] = v18;
  v19 = objc_allocWithZone(type metadata accessor for SearchResultsContainerViewController());

  v20 = sub_1006028D4(a1, v18, a2);

  v21 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController;
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] = v20;
  v22 = [objc_allocWithZone(type metadata accessor for SearchController()) initWithSearchResultsController:v20];
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController] = v22;
  [v22 setShowsSearchResultsController:0];
  v23 = sub_10076AFBC();
  swift_allocObject();
  v24 = sub_10076AFAC();
  v50[3] = v23;
  v50[4] = &protocol witness table for UnimplementedAdvertLifecycleMetricsReporter;
  v50[0] = v24;
  sub_10000A570(v50, v49);
  sub_10076A57C();
  swift_allocObject();

  v25 = sub_10076A56C();
  sub_10076A55C();
  v26 = *&v3[v21];
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = a2;
  v27[4] = ObjectType;
  sub_10000A5D4(&qword_10094F408, &qword_1007982D8);
  sub_100071820(&qword_10094F410, &qword_10094F408, &qword_1007982D8, &protocol conformance descriptor for SyncEvent<A>);

  v28 = v26;
  sub_10076F45C();
  v29 = v42;
  sub_10076F47C();

  sub_10000CD74(v49);
  (*(v43 + 8))(v29, v44);
  v30 = sub_100275A98(&qword_10094F418, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  sub_10000A5D4(&qword_10094F420, &qword_1007982E0);
  sub_10076F1BC();
  v31 = swift_allocObject();
  v44 = xmmword_100783DD0;
  *(v31 + 16) = xmmword_100783DD0;
  sub_10076A14C();
  sub_10000A570(v50, v49);
  swift_allocObject();
  swift_retain_n();
  v49[0] = sub_10076A12C();
  sub_10076F19C();
  v32 = sub_1006C7080(a2, v25, v30, v31, 0xD000000000000011, 0x80000001007DC1D0);

  v33 = objc_allocWithZone(type metadata accessor for SearchLandingDiffablePageViewController(0));
  *&v3[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController] = sub_10000B53C(v25, v32);
  v34 = type metadata accessor for SearchViewController(0);
  v48.receiver = v3;
  v48.super_class = v34;
  v35 = objc_msgSendSuper2(&v48, "initWithNibName:bundle:", 0, 0);
  v36 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController;
  *(*&v35[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchResultsDelegate + 8) = &off_10088EE10;
  swift_unknownObjectWeakAssign();
  *(*&v35[v36] + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_delegate + 8) = &off_10088EDE8;
  swift_unknownObjectWeakAssign();
  *(*&v35[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController] + qword_10099C880 + 8) = &off_10088EE00;
  swift_unknownObjectWeakAssign();
  v37 = v35;

  sub_100765FBC();

  sub_10000A5D4(&qword_10094F428, &qword_1007982E8);
  sub_100071820(&unk_10094F430, &qword_10094F428, &qword_1007982E8, &protocol conformance descriptor for SyncEvent<A>);
  sub_10076F45C();
  v38 = v45;
  sub_10076F46C();

  sub_10000CD74(v49);
  (*(v46 + 8))(v38, v47);
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v39 = swift_allocObject();
  *(v39 + 16) = v44;
  *(v39 + 32) = sub_10076E59C();
  *(v39 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  sub_10077061C();

  swift_unknownObjectRelease();

  sub_10000CD74(v50);
  return v37;
}

uint64_t sub_100274B00(uint64_t a1, uint64_t a2)
{
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007841E0;
  sub_10000A5D4(&qword_1009453E0, &qword_100787880);
  v5 = *(type metadata accessor for Accessory(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100783DD0;
  v8 = (v7 + v6);
  v9 = *(sub_10000A5D4(&qword_1009453E8, &unk_100788D00) + 48);
  *v8 = 1;
  sub_100016E2C(a2, &v8[v9], &qword_100945140, &unk_100787540);
  swift_storeEnumTagMultiPayload();
  v10 = swift_allocObject();
  *(v10 + 16) = 514;
  type metadata accessor for NavigationAccessory();
  v11 = swift_allocObject();
  v12 = sub_1000FC424(_swiftEmptyArrayStorage);
  v11[4] = v7;
  v11[5] = v12;
  v11[2] = sub_100076AA0;
  v11[3] = v10;
  sub_100529FCC(a1);

  *(v4 + 32) = v11;
  return v4;
}

id sub_100274CBC(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchController];
  v5 = [v4 searchBar];
  v6 = v5;
  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      [v5 _setDisableDictationButton:1];

      v24 = v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding];
      v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding] = 0;
      if (v24)
      {
        v25 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController];
        [v25 willMoveToParentViewController:0];
        result = [v25 view];
        if (!result)
        {
LABEL_41:
          __break(1u);
          return result;
        }

        v26 = result;
        [result removeFromSuperview];

        [v25 removeFromParentViewController];
      }

      [v4 setShowsSearchResultsController:1];
      v27 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v27)
      {
        v27 = [v27 collectionView];
      }

      v7 = v27;
      v8 = [v2 navigationItem];
      v9 = [v2 navigationController];
      if (v9)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    [v5 _setDisableDictationButton:1];

    v10 = v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding];
    v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding] = 0;
    if (v10)
    {
      v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController];
      [v11 willMoveToParentViewController:0];
      result = [v11 view];
      if (!result)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v13 = result;
      [result removeFromSuperview];

      [v11 removeFromParentViewController];
    }

    [v4 setShowsSearchResultsController:1];
    v14 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
    if (v14)
    {
      v14 = [v14 collectionView];
    }

    v7 = v14;
    v15 = [v2 navigationItem];
    v16 = [v2 navigationController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 navigationBar];

      v19 = [v18 standardAppearance];
    }

    else
    {
      v19 = 0;
    }

    [v15 setScrollEdgeAppearance:v19];

    goto LABEL_31;
  }

  if (a1)
  {
    [v5 _setDisableDictationButton:0];

    v20 = v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding];
    v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding] = 0;
    if ((v20 & 1) == 0)
    {
      goto LABEL_16;
    }

    v21 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController];
    [v21 willMoveToParentViewController:0];
    result = [v21 view];
    if (result)
    {
      v22 = result;
      [result removeFromSuperview];

      [v21 removeFromParentViewController];
LABEL_16:
      [v4 setShowsSearchResultsController:1];
      v23 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
      if (v23)
      {
        v23 = [v23 collectionView];
      }

      v7 = v23;
      v8 = [v2 navigationItem];
      v9 = [v2 navigationController];
      if (v9)
      {
        goto LABEL_26;
      }

LABEL_27:
      v30 = 0;
      goto LABEL_28;
    }

    goto LABEL_40;
  }

  [v5 _setDisableDictationButton:0];

  v7 = [*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchLandingViewController] collectionView];
  v8 = [v2 navigationItem];
  v9 = [v2 navigationController];
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_26:
  v28 = v9;
  v29 = [v9 navigationBar];

  v30 = [v29 scrollEdgeAppearance];
LABEL_28:
  [v8 setScrollEdgeAppearance:v30];

  sub_10026E5D0();
LABEL_31:
  v31 = [v2 navigationItem];
  sub_1002B3AB4();

  [v2 setContentScrollView:v7 forEdge:15];
  v32 = *(*&v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController] + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v32)
  {
    swift_getObjectType();
    v33 = swift_conformsToProtocol2();
    if (v33)
    {
      v34 = v32;
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v35 = &v2[OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_activeSearchBarObservingViewController];
  *v35 = v32;
  v35[1] = v33;

  return swift_unknownObjectRelease();
}

void sub_10027529C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchResultsContainerViewController);
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_activeSearchSectionViewController);
  if (v3)
  {
    type metadata accessor for SearchResultsDiffablePageViewController(0);
    if (swift_dynamicCastClass())
    {
      v20 = v3;
      sub_100602B64(1, v4);
      sub_100764EFC();
      v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController);
      *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController) = 0;
      if (v5)
      {
        v6 = [v5 presentingViewController];
        if (v6)
        {
          v7 = v6;
          [v6 dismissViewControllerAnimated:1 completion:0];
        }
      }

      sub_10026DC04(0);
      sub_10027177C(1);
LABEL_8:

      return;
    }

    type metadata accessor for SearchHintsViewController();
    if (swift_dynamicCastClass())
    {
      v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension36SearchResultsContainerViewController_searchFocusViewController);
      v20 = v3;
      if (v9)
      {
        sub_100602B64(3, v10);
        sub_100764EFC();
        v11 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController);
        *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController) = 0;
        if (v11)
        {
          v12 = [v11 presentingViewController];
          if (v12)
          {
            v13 = v12;
            [v12 dismissViewControllerAnimated:1 completion:0];
          }
        }

        sub_10026DC04(0);
      }

      else
      {
        sub_100602B64(0, v10);
        sub_100764EFC();
        v17 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController);
        *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController) = 0;
        if (v17)
        {
          v18 = [v17 presentingViewController];
          if (v18)
          {
            v19 = v18;
            [v18 dismissViewControllerAnimated:1 completion:0];
          }
        }

        sub_10026DC04(0);
        sub_10027315C();
      }

      goto LABEL_8;
    }

    sub_100602B64(0, v8);
    sub_100764EFC();
    v14 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController);
    *(v1 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController) = 0;
    if (v14)
    {
      v15 = [v14 presentingViewController];
      if (v15)
      {
        v16 = v15;
        [v15 dismissViewControllerAnimated:1 completion:0];
      }
    }

    sub_10026DC04(0);

    sub_10027315C();
  }

  else
  {

    sub_10027177C(0);
  }
}

double sub_1002755D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1002755EC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100275624(__n128 a1)
{
  v2 = sub_100768EFC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

void sub_1002756E8(__n128 a1)
{
  v2 = *(sub_100768EFC() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_100272530(v3, v4);
}

void sub_10027574C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_palettePresenter;
  type metadata accessor for NavigationBarPalettePresenter();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v2 + 50) = 0u;
  *(v2 + 40) = 0u;
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___resultsMessageView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController____lazy_storage___tokenPalette) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_searchTextInput) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_showSearchLanding) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController) = 0;
  *(v2 + 24) = 0u;
  v3 = (v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_activeSearchBarObservingViewController);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_pendingSearchAction) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_guidedSearchContainerImpressionMetrics;
  v5 = sub_10076F7FC();
  (*(*(v5 - 8) + 56))(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_prefersLargeTitle) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_navigationAccessories) = _swiftEmptyArrayStorage;
  sub_10077156C();
  __break(1u);
}

void sub_1002758B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension20SearchViewController_facetNavigationController) = 0;
  if (v1)
  {
    v4 = v1;
    v2 = [v1 presentingViewController];
    if (v2)
    {
      v3 = v2;
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

uint64_t sub_10027594C(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_1002759A0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100275A04()
{
  sub_10000CD74((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100275A44()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100275A98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100275AE0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100275B44()
{

  return _swift_deallocObject(v0, 32, 7);
}

char *sub_100275BF8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded] = 0;
  v10 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_pageGrid;
  v11 = sub_10076C38C();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v4[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_sizeCategory] = 7;
  v4[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory] = 7;
  v4[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isTransitioning] = 0;
  v4[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia] = 0;
  v12 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView;
  type metadata accessor for RevealingImageView(0);
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView;
  type metadata accessor for RevealingVideoView(0);
  *&v4[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView];
  v16 = v14;
  [v16 addSubview:v15];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView]];

  return v16;
}

void sub_100275DD8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_sizeCategory;
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_sizeCategory);
  *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView) + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_sizeCategory) = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    (*((swift_isaMask & *Strong) + 0x128))(v3);
  }

  v6 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView);
  v7 = *(v1 + v2);
  *(v6 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_sizeCategory) = v7;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    (*((swift_isaMask & *v8) + 0x118))(v7);
  }
}

void sub_100275F40()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_100277464(&qword_10094F540, type metadata accessor for TodayCardVideoView, &unk_1007AF120);
    v4 = [v9 superview];
    if (v4)
    {
      v5 = v4;
      sub_1000ACA5C();
      v6 = v2;
      v7 = sub_100770EEC();

      if ((v7 & 1) == 0)
      {
        return;
      }

      v8 = swift_unknownObjectWeakLoadStrong();
      if (!v8)
      {
        return;
      }

      *(v8 + qword_10099F298) = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory);
      v9 = v8;
      sub_10039DEFC();
    }
  }
}

void sub_10027608C(uint64_t a1, uint64_t a2, double a3)
{
  v7 = sub_10075FEEC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == enum case for CornerStyle.continuous(_:))
  {
    [v3 _setContinuousCornerRadius:a3];
    [*&v3[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView] _setContinuousCornerRadius:a3];
    [*&v3[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView] _setContinuousCornerRadius:a3];
  }

  else
  {
    v13 = v12;
    v14 = enum case for CornerStyle.arc(_:);
    [v3 _setCornerRadius:a3];
    [*&v3[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView] _setCornerRadius:a3];
    [*&v3[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView] _setCornerRadius:a3];
    if (v13 != v14)
    {
      (*(v8 + 8))(v11, v7);
    }
  }

  sub_100276264(a2);
}

void sub_100276264(uint64_t a1)
{
  v2 = [v1 layer];
  [v2 setMaskedCorners:sub_1007704FC()];

  v3 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView] layer];
  [v3 setMaskedCorners:sub_1007704FC()];

  v4 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView] layer];
  [v4 setMaskedCorners:sub_1007704FC()];
}

id sub_100276360(char *a1, char a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = sub_10000A5D4(&qword_100943190, qword_100798490);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &v35 - v12;
  if ((a2 & 1) == 0)
  {
    v36 = a4;
    [a1 frame];
    [v5 setFrame:?];
    v14 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView];
    v21 = *&a1[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView];
    [v21 frame];
    [v14 setFrame:?];
    [v14 setHidden:{objc_msgSend(v21, "isHidden")}];
    v22 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_100016E2C(&v21[v22], v13, &qword_100943190, qword_100798490);
    v23 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
    swift_beginAccess();
    sub_10003837C(v13, v14 + v23, &qword_100943190, qword_100798490);
    swift_endAccess();
    v24 = [*&v21[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView] image];
    if (v24)
    {
      v25 = &v21[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize];
      if ((v21[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkSize + 16] & 1) != 0 || (v26 = *&v21[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_artworkLayoutWithMetrics]) == 0)
      {
      }

      else
      {
        v28 = *v25;
        v27 = v25[1];
        v29 = v24;

        v30 = v29;
        sub_1003955EC(v29, v28, v27, 0, v26, a3, v36);
      }
    }

    v15 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView];
    v20 = *&a1[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView];
    [v20 frame];
    [v15 setFrame:?];
    [v15 setHidden:{objc_msgSend(v20, "isHidden")}];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      swift_unknownObjectWeakAssign();
    }

    goto LABEL_11;
  }

  v14 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView];
  v15 = *&v5[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView];
  v16 = *&a1[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView];
  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    v19 = v16;

    v20 = v19;
    sub_10056A60C(v19, a3);

LABEL_11:
  }

  v32 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded;
  v33 = a1[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded];
  v5[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded] = v33;
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded) = v33;
  [v14 setNeedsLayout];
  *(v15 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded) = v5[v32];
  sub_10056970C();
  result = [v5 setHidden:{objc_msgSend(a1, "isHidden")}];
  v5[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia] = a1[OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia];
  return result;
}

id sub_1002767A0()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_10094B040, qword_100790DE0);
  __chkstk_darwin(v2 - 8);
  v4 = &v20 - v3;
  v5 = sub_10000A5D4(&qword_100943190, qword_100798490);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView);
  v9 = sub_10076BD9C();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkTemplate;
  swift_beginAccess();
  sub_10003837C(v7, &v8[v10], &qword_100943190, qword_100798490);
  swift_endAccess();
  v11 = sub_10075DDBC();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkHandlerKey;
  swift_beginAccess();
  sub_10003837C(v4, &v8[v12], &qword_10094B040, qword_100790DE0);
  swift_endAccess();
  [*&v8[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_imageView] setImage:0];
  v13 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    *(Strong + qword_10099F298) = 7;
    sub_10039DEFC();
  }

  v16 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10056A2D0(v16, v17);

  v18 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded;
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded) = 0;
  v8[OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_isExpanded] = 0;
  [v8 setNeedsLayout];
  *(v13 + OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_isExpanded) = *(v1 + v18);
  result = sub_10056970C();
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) = 0;
  return result;
}

void sub_100276A68(uint64_t a1, int a2)
{
  v17[1] = a2;
  v3 = sub_10000A5D4(&qword_10094B040, qword_100790DE0);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - v4;
  v6 = sub_10075DDBC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  v18 = v2;
  v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView);
  v14 = OBJC_IVAR____TtC20ProductPageExtension18RevealingImageView_currentArtworkHandlerKey;
  swift_beginAccess();
  sub_100016E2C(v13 + v14, v5, &qword_10094B040, qword_100790DE0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10000CFBC(v5, &qword_10094B040, qword_100790DE0);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    sub_100277464(&qword_10094F558, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_10077140C();
    sub_100760BEC();
    sub_100016C74(v19);
    (*(v7 + 8))(v12, v6);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    type metadata accessor for TodayCardVideoView(0);
    sub_100277464(&qword_10094F550, type metadata accessor for TodayCardVideoView, &unk_1007B40F8);
    sub_100760BFC();
  }
}

void (*sub_100276D68(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension18RevealingVideoView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100276DCC;
}

void sub_100276DCC(id *a1, char a2)
{
  v7 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v7;
    sub_10056A2D0(Strong, v6);

    Strong = v5;
  }

  else
  {
    sub_10056A2D0(Strong, v4);
  }
}

uint64_t type metadata accessor for StoryCardMediaView(uint64_t a1)
{
  result = qword_10094F520;
  if (!qword_10094F520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100276F24(uint64_t a1)
{
  sub_100276FE0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100276FE0(uint64_t a1)
{
  if (!qword_100946AC0[0])
  {
    sub_10076C38C();
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, qword_100946AC0);
    }
  }
}

void sub_100277058(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_10056A2D0(Strong, v2);
}

uint64_t (*sub_1002770D8(uint64_t **a1))()
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
  v2[4] = sub_100276D68(v2);
  return sub_100019A4C;
}

uint64_t sub_100277148()
{
  ObjectType = swift_getObjectType();
  v1 = sub_100277464(&qword_10094F548, type metadata accessor for StoryCardMediaView, &unk_100798438);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1002771BC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_100277464(&qword_10094F548, type metadata accessor for StoryCardMediaView, &unk_100798438);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100277248(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_100277464(&qword_10094F548, type metadata accessor for StoryCardMediaView, &unk_100798438);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_100277304(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000ACA5C();
  v5 = v2;
  v6 = sub_100770EEC();

  return v6 & 1;
}

uint64_t sub_100277464(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1002774AC()
{
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isExpanded) = 0;
  v1 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_pageGrid;
  v2 = sub_10076C38C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_sizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_originalSizeCategory) = 7;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_isTransitioning) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_hasMedia) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingImageView;
  type metadata accessor for RevealingImageView(0);
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC20ProductPageExtension18StoryCardMediaView_revealingVideoView;
  type metadata accessor for RevealingVideoView(0);
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1002775E4()
{
  v0 = sub_10000A5D4(&unk_10094F600, &unk_100798508);
  sub_10000DB18(v0, qword_10094F560);
  sub_10000A61C(v0, qword_10094F560);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for ContentMode(0);
  return sub_10075FDDC();
}

uint64_t sub_100277688()
{
  v0 = sub_10000A5D4(&qword_10094F5F8, &qword_100798500);
  sub_10000DB18(v0, qword_10094F578);
  sub_10000A61C(v0, qword_10094F578);
  swift_getKeyPath();
  sub_1005A5DB8(0xD00000000000001ELL, 0x80000001007DC3B0, 0);
  sub_1005A5DB8(0xD000000000000017, 0x80000001007DC3D0, 0);
  sub_100016F40(0, &qword_10094F610, UIImage_ptr);
  return sub_10075FE1C();
}

uint64_t sub_10027779C()
{
  v0 = sub_10000A5D4(&qword_10094F5F0, &qword_1007984F8);
  sub_10000DB18(v0, qword_10094F590);
  sub_10000A61C(v0, qword_10094F590);
  swift_getKeyPath();
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v1 = sub_100770DDC();
  v2.super.isa = sub_100770DDC();
  v3.super.isa = v1;
  sub_100770DEC(v3, v2);
  v4 = sub_100770DDC();
  v5.super.isa = sub_100770DDC();
  v6.super.isa = v4;
  sub_100770DEC(v6, v5);
  return sub_10075FE1C();
}

char *sub_1002778CC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView;
  *&v4[v10] = [objc_allocWithZone(UIImageView) init];
  v11 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_topOpaqueLayer;
  *&v4[v11] = [objc_allocWithZone(CALayer) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_gradientLayer;
  *&v4[v12] = [objc_allocWithZone(CAGradientLayer) init];
  v13 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_compositeMaskLayer;
  *&v4[v13] = [objc_allocWithZone(CALayer) init];
  v55.receiver = v4;
  v55.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v55, "initWithFrame:", a1, a2, a3, a4);
  [v14 setClipsToBounds:1];
  v15 = qword_10093FC18;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A5D4(&qword_10094F5F0, &qword_1007984F8);
  sub_10000A61C(v17, qword_10094F590);
  v18 = v16;
  sub_10075FDCC();

  [v18 setBackgroundColor:v54];
  v19 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView;
  v20 = qword_10093FC10;
  v21 = *&v18[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView];
  if (v20 != -1)
  {
    swift_once();
  }

  v53 = ObjectType;
  v22 = sub_10000A5D4(&qword_10094F5F8, &qword_100798500);
  sub_10000A61C(v22, qword_10094F578);
  v23 = v18;
  sub_10075FDCC();

  [v21 setImage:v54];
  v24 = qword_10093FC08;
  v25 = *&v18[v19];
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A5D4(&unk_10094F600, &unk_100798508);
  sub_10000A61C(v26, qword_10094F560);
  sub_10075FDCC();

  [v25 setContentMode:v54];
  [v23 addSubview:*&v18[v19]];
  v27 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_topOpaqueLayer;
  v28 = *&v23[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_topOpaqueLayer];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 blackColor];
  v32 = [v31 CGColor];

  [v30 setBackgroundColor:v32];
  v33 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_gradientLayer;
  v34 = *&v23[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_gradientLayer];
  sub_10000A5D4(&unk_1009434B0, &unk_100785550);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100784500;
  v36 = v34;
  v37 = [v29 blackColor];
  v38 = [v37 CGColor];

  type metadata accessor for CGColor(0);
  v40 = v39;
  *(v35 + 56) = v39;
  *(v35 + 32) = v38;
  v41 = [v29 clearColor];
  v42 = [v41 CGColor];

  *(v35 + 88) = v40;
  *(v35 + 64) = v42;
  isa = sub_1007701AC().super.isa;

  [v36 setColors:isa];

  v44 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_compositeMaskLayer;
  [*&v23[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_compositeMaskLayer] addSublayer:*&v23[v27]];
  [*&v23[v44] addSublayer:*&v23[v33]];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100783DD0;
  *(v45 + 32) = sub_10076E4BC();
  *(v45 + 40) = &protocol witness table for UITraitUserInterfaceLevel;
  *(swift_allocObject() + 16) = v53;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v46 = [v23 traitCollection];

  LOBYTE(v45) = sub_1007706EC();
  if (v45 & 1) != 0 || (v47 = [v23 traitCollection], v48 = sub_10077071C(), v47, (v48))
  {
    v49 = [*&v18[v19] layer];
    [v49 setMask:*&v23[v44]];
  }

  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_100784500;
  *(v50 + 32) = sub_10076E59C();
  *(v50 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v50 + 48) = sub_10076E88C();
  *(v50 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_100770C6C();
  swift_unknownObjectRelease();

  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_100783DD0;
  *(v51 + 32) = sub_10076E3EC();
  *(v51 + 40) = &protocol witness table for UITraitLayoutDirection;
  *(swift_allocObject() + 16) = v53;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v23;
}

void sub_100277FE0(char *a1)
{
  if (qword_10093FC18 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A5D4(&qword_10094F5F0, &qword_1007984F8);
  sub_10000A61C(v2, qword_10094F590);
  v7 = a1;
  v3 = a1;
  sub_10075FDCC();

  [v3 setBackgroundColor:{v9, v7}];
  v4 = *&v3[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView];
  if (qword_10093FC10 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A5D4(&qword_10094F5F8, &qword_100798500);
  sub_10000A61C(v5, qword_10094F578);
  v8 = v3;
  v6 = v3;
  sub_10075FDCC();

  [v4 setImage:{v9, v8}];
}

id sub_10027814C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView];
  if (qword_10093FC08 != -1)
  {
    swift_once();
  }

  v3 = sub_10000A5D4(&unk_10094F600, &unk_100798508);
  sub_10000A61C(v3, qword_10094F560);
  v4 = a1;
  sub_10075FDCC();

  return [v2 setContentMode:{v6, a1}];
}

void sub_10027826C()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView];
  [v0 bounds];
  [v2 setFrame:?];
  v3 = [v0 traitCollection];
  v4 = sub_10077070C();

  v5 = [v1 traitCollection];
  v6 = sub_1007706FC();

  v7 = 100.0;
  if ((v6 & 1) == 0)
  {
    v7 = 20.0;
  }

  if (v4)
  {
    v8 = -v7;
  }

  else
  {
    v8 = v7;
  }

  [v2 frame];
  [v2 setFrame:v8 + v9];
  v10 = [v1 traitCollection];
  v11 = sub_1007706EC();

  if (v11 & 1) != 0 || (v12 = [v1 traitCollection], v13 = sub_10077071C(), v12, (v13))
  {
    [v2 setClipsToBounds:1];
    if (v4)
    {
      v14 = -100.0;
    }

    else
    {
      v14 = 100.0;
    }

    [v2 frame];
    [v2 setFrame:v14 + v15];
    v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_topOpaqueLayer];
    [v1 bounds];
    [v16 setFrame:{0.0, 0.0, CGRectGetWidth(v20), 68.0}];
    v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_gradientLayer];
    [v16 frame];
    MaxY = CGRectGetMaxY(v21);
    [v1 bounds];
    [v17 setFrame:{0.0, MaxY, CGRectGetWidth(v22), 110.0}];
  }
}

void sub_100278594(char *a1)
{
  v2 = [a1 traitCollection];
  v3 = sub_1007706EC();

  if (v3 & 1) != 0 || (v4 = [a1 traitCollection], v5 = sub_10077071C(), v4, (v5))
  {
    v6 = [*&a1[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView] layer];
    [v6 setMask:*&a1[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_compositeMaskLayer]];
  }

  else
  {
    v6 = [*&a1[OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView] layer];
    [v6 setMask:0];
  }
}

void sub_100278698()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_imageView;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  v2 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_topOpaqueLayer;
  *(v0 + v2) = [objc_allocWithZone(CALayer) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_gradientLayer;
  *(v0 + v3) = [objc_allocWithZone(CAGradientLayer) init];
  v4 = OBJC_IVAR____TtC20ProductPageExtension27EditorsChoiceBackgroundView_compositeMaskLayer;
  *(v0 + v4) = [objc_allocWithZone(CALayer) init];
  sub_10077156C();
  __break(1u);
}

id sub_1002787A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traitCollection];
  *a2 = result;
  return result;
}

id sub_1002787E4@<X0>(id *a1@<X0>, BOOL *a2@<X8>)
{
  result = [*a1 userInterfaceLevel];
  *a2 = result == 1;
  return result;
}

uint64_t sub_100278824(void *a1)
{
  v2 = sub_10076443C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v6);
  v8 = &v19[-v7 - 8];
  if (qword_100941428 != -1)
  {
    swift_once();
  }

  if (qword_100941430 != -1)
  {
    swift_once();
  }

  if (sub_10077071C())
  {
    v9 = &xmmword_1009A2E90;
  }

  else
  {
    v9 = &xmmword_1009A2D20;
  }

  sub_10015E5E0(v9, v19);
  if (sub_10077071C())
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v10 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v10 = qword_100944CA0;
  }

  v11 = sub_10000A61C(v2, v10);
  (*(v3 + 16))(v5, v11, v2);
  (*(v3 + 32))(v8, v5, v2);
  if ((v22 & 1) == 0 && v20 == 0.0 && v21 == 0.0)
  {
    sub_1007643EC();
    v13 = v12;
    sub_1007643EC();
    v20 = v13;
    v21 = v14;
    v22 = 0;
  }

  v15 = _s20ProductPageExtension21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v19, a1, 0.0);
  (*(v3 + 8))(v8, v2, v15);
  sub_10015E58C(v19);
  sub_10027D020(a1);
  v16 = [a1 preferredContentSizeCategory];
  sub_10077085C();

  sub_1007704EC();
  return sub_10076752C();
}