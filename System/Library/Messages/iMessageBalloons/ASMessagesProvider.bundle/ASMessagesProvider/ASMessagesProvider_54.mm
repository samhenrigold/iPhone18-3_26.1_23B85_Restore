void sub_60F8A0(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_758720();
  v77 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v71[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v71[-v10];
  v76 = sub_766690();
  __chkstk_darwin(v76);
  v13 = &v71[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v71[-v16];
  v18 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_artworks];
  v19 = v18 >> 62;
  if (v18 >> 62)
  {
    v78 = v15;
    v70 = sub_76A860();
    v15 = v78;
    if (!v70)
    {
      return;
    }
  }

  else if (!*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
  {
    return;
  }

  v75 = a2;
  v78 = v15;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v79 = sub_76A770();
    v20 = v18 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_67;
    }

    v79 = *(v18 + 32);

    v20 = v18 & 0xFFFFFFFFFFFFFF8;
    if (!v19)
    {
LABEL_6:
      v21 = *(v20 + 16);
      if (v21)
      {
        goto LABEL_7;
      }

LABEL_64:

      return;
    }
  }

  v21 = sub_76A860();
  if (!v21)
  {
    goto LABEL_64;
  }

LABEL_7:
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
    v74 = sub_76A770();
    goto LABEL_13;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    goto LABEL_68;
  }

  if (v23 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_69:
    __break(1u);
    return;
  }

  v74 = *(v18 + 8 * v23 + 32);

LABEL_13:
  [a1 bounds];
  v25 = v24;
  v27 = v26;
  v28 = [v3 traitCollection];
  v29 = sub_7699E0();

  if (sub_75A310())
  {
    sub_765150();
  }

  sub_765260();
  sub_765260();
  sub_7666A0();
  if (v29)
  {
    v30 = 123.0;
  }

  else
  {
    v30 = 101.0;
  }

  sub_75A300();

  v73 = *(v77 + 88);
  v31 = v73(v11, v6);
  v72 = enum case for AppPlatform.watch(_:);
  if (v31 != enum case for AppPlatform.watch(_:))
  {
    (*(v77 + 8))(v11, v6, 0.0);
  }

  v32 = v27 - v30;
  sub_766650();
  v34 = v33;
  v35 = (v25 - v33) * 0.5;
  if (v29)
  {
    v36 = &selRef_setTextAlignment_;
    if (v35 >= 60.0)
    {
      goto LABEL_26;
    }

    v37 = 120.0;
  }

  else
  {
    v36 = &selRef_setTextAlignment_;
    if (v35 >= 30.0)
    {
      goto LABEL_26;
    }

    v37 = 60.0;
  }

  v34 = v25 - v37;
LABEL_26:
  sub_765260();
  if (v38 < v34)
  {
    v34 = v38;
  }

  sub_766660();
  v40 = v39;
  v41 = *(v78 + 8);
  v42 = v17;
  v43 = v76;
  v78 += 8;
  v41(v42, v76);
  v44 = v27 - (v40 + 71.0);
  if (v44 <= 71.0)
  {
    v45 = v27 - (v40 + 71.0);
  }

  else
  {
    v45 = (v32 - v40) * 0.5;
  }

  if (v44 <= 71.0)
  {
    v46 = 71.0;
  }

  else
  {
    v46 = (v32 - v40) * 0.5;
  }

  v47 = [v3 v36[23]];
  v48 = sub_7699E0();

  if (sub_75A310())
  {
    sub_765150();
  }

  sub_765260();
  sub_765260();
  sub_7666A0();
  if (v48)
  {
    v49 = 123.0;
  }

  else
  {
    v49 = 101.0;
  }

  sub_75A300();

  v50 = v73(v8, v6);
  if (v50 != v72)
  {
    (*(v77 + 8))(v8, v6, 0.0);
  }

  v51 = v25 - v34;
  v52 = v27 - v49;
  sub_766650();
  v54 = v53;
  v55 = (v25 - v53) * 0.5;
  if (v48)
  {
    v56 = v75;
    if (v55 < 60.0)
    {
      v57 = 120.0;
LABEL_46:
      v54 = v25 - v57;
    }
  }

  else
  {
    v56 = v75;
    if (v55 < 30.0)
    {
      v57 = 60.0;
      goto LABEL_46;
    }
  }

  v58 = v51 * 0.5;
  sub_765260();
  if (v59 < v54)
  {
    v54 = v59;
  }

  sub_766660();
  v61 = v60;
  v41(v13, v43);
  v62 = 71.0;
  v63 = v27 - (v61 + 71.0);
  if (v63 > 71.0)
  {
    v63 = (v52 - v61) * 0.5;
    v62 = v63;
  }

  v64 = (v25 - v54) * 0.5;
  if (v62 >= v46)
  {
    v65 = v46;
  }

  else
  {
    v65 = v62;
  }

  if (v63 >= v45)
  {
    v66 = v45;
  }

  else
  {
    v66 = v63;
  }

  objc_opt_self();
  v67 = swift_dynamicCastObjCClass();
  if (v67)
  {
    v68 = v67;
    v69 = v56;
    [v68 setSectionInset:{v65, v58, v66, v64}];
  }
}

void sub_60FF8C(void *a1)
{
  v2 = v1;
  v4 = sub_758720();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_766690();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 bounds];
  v13 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider32ScreenshotsGalleryViewController_artworks];
  v14 = sub_7575C0();
  v19 = v8;
  if ((v13 & 0xC000000000000001) != 0)
  {
    sub_76A770();
    goto LABEL_5;
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v14 >= *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_12:
    __break(1u);
    return;
  }

LABEL_5:
  v15 = [v1 traitCollection];
  sub_7699E0();

  if (sub_75A310())
  {
    sub_765150();
  }

  sub_765260();
  sub_765260();
  sub_7666A0();

  sub_75A300();

  if ((*(v5 + 88))(v7, v4) != enum case for AppPlatform.watch(_:))
  {
    (*(v5 + 8))(v7, v4, 0.0);
  }

  sub_766650();
  v16 = v19;
  sub_765260();
  sub_766660();

  (*(v9 + 8))(v12, v16);
  v17 = [v2 traitCollection];
  sub_7699E0();
}

uint64_t sub_610344()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_610384(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_61039C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_6103D4()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_610414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v21 = a4;
  v22 = a2;
  v25 = sub_764A60();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_75FA00();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_944D90, &qword_783300);
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - v10;
  v12 = sub_BD88(&unk_959540, &qword_784830);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  sub_75C7E0();
  sub_768760();
  (*(v13 + 8))(v15, v12);
  sub_75C790();
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  v16 = sub_527DE4();
  (*(*(v21 + 8) + 80))(v26, v11, v22, v8, v5, v16, v24);
  swift_unknownObjectRelease();
  (*(v23 + 8))(v5, v25);
  (*(v6 + 8))(v8, v20);
  (*(v9 + 8))(v11, v19);
  return sub_BEB8(v26);
}

void sub_61080C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = sub_757640();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v7 collectionView];
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = v17;
  v19 = &selRef_setSpeed_;
  [v18 bounds];
  v20 = [v7 layoutAttributesForElementsInRect:?];
  if (!v20 || ((v21 = v20, sub_E59C4(), v22 = sub_769460(), v21, v22 >> 62) ? (v23 = sub_76A860()) : (v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8))), , !v23))
  {

LABEL_17:
    v54 = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
    v59.receiver = v7;
    v59.super_class = v54;
    objc_msgSendSuper2(&v59, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
    return;
  }

  v24 = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
  v58.receiver = v7;
  v58.super_class = v24;
  objc_msgSendSuper2(&v58, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
  [v18 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v60.origin.x = v26;
  v60.origin.y = v28;
  v60.size.width = v30;
  v60.size.height = v32;
  Width = CGRectGetWidth(v60);
  [v7 collectionViewContentSize];
  if (a1 <= 0.0 || floor(v34) <= Width + a1)
  {
LABEL_15:

    return;
  }

  v35 = [v18 numberOfItemsInSection:0];
  if ((v35 & 0x8000000000000000) == 0)
  {
    if (v35)
    {
      v55 = a3;
      v36 = 0;
      v56 = (v13 + 8);
      v37 = 0.0;
      v57 = xmmword_77E280;
      do
      {
        v39 = v35;
        v40 = v19;
        sub_BD88(&qword_95B250, "hq\b");
        v41 = swift_allocObject();
        *(v41 + 16) = v57;
        *(v41 + 32) = 0;
        *(v41 + 40) = v36;
        sub_757540();
        isa = sub_757550().super.isa;
        (*v56)(v16, v12);
        v43 = [v7 layoutAttributesForItemAtIndexPath:isa];

        if (!v43)
        {
          break;
        }

        v19 = v40;
        [v43 v40[366]];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;

        v61.origin.x = v45;
        v61.origin.y = v47;
        v61.size.width = v49;
        v61.size.height = v51;
        v52 = CGRectGetWidth(v61);
        [v7 minimumLineSpacing];
        if (v37 < a1 && v37 + v52 + v53 > a1)
        {
          break;
        }

        ++v36;
        [v7 minimumLineSpacing];
        v37 = v37 + v52 + v38;
        v35 = v39;
      }

      while (v39 != v36);
    }

    goto LABEL_15;
  }

  __break(1u);
}

id sub_610C88(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_610CE0(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = *a1;
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();

  return sub_271EC(v10, a8, ObjectType, v12, a3);
}

id sub_610D48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_75B370();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;

    sub_27484(v6, a3);
  }

  else
  {
    sub_765860();
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = v7;

    sub_27698(v8, a3);
  }

LABEL_6:

  return [v3 setNeedsLayout];
}

uint64_t sub_610F60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_610FA8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v10 = v9;
  v11 = [a5 traitCollection];
  v12 = [v11 preferredContentSizeCategory];
  v13 = sub_769B50();

  if ((v13 & 1) == 0)
  {
    if (qword_93C808 != -1)
    {
      swift_once();
    }

    sub_53DA04(&unk_99BE98, a5, v10, a2);
    if (qword_93C6C8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    v18 = sub_BE38(v17, qword_99B9A0);
    v19.n128_f64[0] = v10;
    sub_6FE2C(v19, a2, v18, a5);
    goto LABEL_28;
  }

  v14 = _swiftEmptyArrayStorage;
  v30 = _swiftEmptyArrayStorage;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + 32;
    do
    {
      sub_134D8(v16, v29);
      sub_10914(v29, v28);
      sub_BD88(&unk_944DA0, &unk_77EB70);
      sub_7587A0();
      if ((swift_dynamicCast() & 1) != 0 && v28[5])
      {
        sub_769440();
        if (*(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v30 & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          sub_7694C0();
        }

        sub_769500();
        v14 = v30;
      }

      v16 += 40;
      --v15;
    }

    while (v15);
  }

  if (!(v14 >> 62))
  {
    v20 = *(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8));
    if (v20)
    {
      goto LABEL_17;
    }

LABEL_27:

LABEL_28:
    v26 = objc_opt_self();
    PageTraitEnvironment.pageColumnWidth.getter();
    v27 = [v26 absoluteDimension:?];
    sub_75F970();

    return;
  }

  v20 = sub_76A860();
  if (!v20)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v20 >= 1)
  {
    v21 = 0;
    v22 = 0.0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v23 = sub_76A770();
      }

      else
      {
        v23 = *(v14 + 8 * v21 + 32);
      }

      ++v21;
      sub_271EC(v23, a5, ObjectType, v10, a2);
      v25 = v24;

      if (v22 <= v25)
      {
        v22 = v25;
      }
    }

    while (v20 != v21);
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t sub_61131C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider27ParagraphCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_93F620, &unk_77E220);
}

uint64_t sub_611388(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider27ParagraphCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_611450()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  v1 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider27ParagraphCollectionViewCell_expandableTextView];
  sub_1A5114(0, 0);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_hasMoreButton) = 0;
  sub_1A5974();
  v2 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler);
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler);
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler + 8);
  *v2 = 0;
  v2[1] = 0;
  sub_F704(v3, v4);
  return [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton) setUserInteractionEnabled:0];
}

void sub_6114FC(void **a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_765920();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v111 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v110 = &v106 - v8;
  __chkstk_darwin(v9);
  v11 = &v106 - v10;
  __chkstk_darwin(v12);
  v14 = &v106 - v13;
  v15 = sub_BD88(&qword_952410, &qword_79A0E0);
  __chkstk_darwin(v15 - 8);
  v115 = &v106 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v122 = &v106 - v18;
  __chkstk_darwin(v19);
  v114 = &v106 - v20;
  __chkstk_darwin(v21);
  v23 = &v106 - v22;
  v24 = sub_BD88(&qword_946810, &qword_783360);
  __chkstk_darwin(v24 - 8);
  v120 = &v106 - v25;
  v124 = sub_BD88(&qword_93F730, &qword_799640);
  v26 = *(v124 - 8);
  __chkstk_darwin(v124);
  v123 = &v106 - v27;
  v118 = sub_765900();
  v126 = *(v118 - 8);
  __chkstk_darwin(v118);
  v121 = &v106 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v125 = &v106 - v30;
  sub_765940();
  sub_3B0DA4();
  v127 = a1;
  sub_75C750();
  v31 = aBlock;
  if (aBlock)
  {
    v107 = v11;
    v108 = v23;
    v109 = v14;
    v112 = v26;
    v117 = v5;
    v113 = v4;
    v32 = [v1 contentView];
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

    v36 = sub_7658D0();
    swift_getKeyPath();
    sub_75C7B0();

    v37 = v134;
    v38 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v36];
    v39 = [v36 length];
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = v37;
    *(v40 + 32) = v38;
    *(v40 + 40) = 1;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_119AC;
    *(v41 + 24) = v40;
    v132 = sub_2636C;
    v133 = v41;
    aBlock = _NSConcreteStackBlock;
    v129 = 1107296256;
    v130 = sub_10C1C;
    v131 = &unk_89A3C8;
    v42 = _Block_copy(&aBlock);
    v43 = v37;
    v44 = v38;

    [v36 enumerateAttributesInRange:0 options:v39 usingBlock:{0x100000, v42}];

    _Block_release(v42);
    LOBYTE(v42) = swift_isEscapingClosureAtFileLocation();

    if (v42)
    {
      __break(1u);
      goto LABEL_53;
    }

    v45 = [v2 contentView];
    sub_BE70(0, &qword_93E550, UIView_ptr);
    sub_75D650();
    v47 = v46;
    v49 = v48;

    v50 = sub_527DE4();
    swift_getObjectType();
    v116 = v44;
    v51 = sub_3B0EB0(v44, v50, UIEdgeInsetsZero.top, left, bottom, right, v47, v49);
    swift_unknownObjectRelease();
    v52 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider27ParagraphCollectionViewCell_expandableTextView];
    v53 = v125;
    sub_765910();
    v54 = v126;
    v55 = v121;
    v56 = v53;
    v57 = v118;
    (*(v126 + 16))(v121, v56, v118);
    v58 = (*(v54 + 88))(v55, v57);
    v59 = v2;
    v60 = v117;
    v61 = v31;
    if (v58 != enum case for Paragraph.Style.standard(_:))
    {
      if (v58 == enum case for Paragraph.Style.article(_:))
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        v62 = sub_769FF0();
        goto LABEL_7;
      }

      if (v58 != enum case for Paragraph.Style.caption(_:) && v58 != enum case for Paragraph.Style.todayCardOverlay(_:) && v58 != enum case for Paragraph.Style.privacyDefinitions(_:))
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        v63 = sub_769FD0();
        v97 = v57;
        v98 = *(v126 + 8);
        v98(v125, v97);
        v98(v121, v97);
        goto LABEL_8;
      }
    }

    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v62 = sub_769FD0();
LABEL_7:
    v63 = v62;
    (*(v126 + 8))(v125, v57);
LABEL_8:
    v126 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel;
    [*&v52[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel] setTextColor:v63];

    sub_75C800();
    sub_769060();
    sub_280A0();
    sub_769030();
    v64 = aBlock;
    if (aBlock == 2)
    {
      v64 = sub_765890();
    }

    if ((v64 & v51 & 1) == 0)
    {
      v89 = v116;
      v90 = v122;
      sub_765930();
      v91 = v113;
      (*(v60 + 56))(v90, 0, 1, v113);
      v92 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
      v93 = v52[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
      v52[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 0;
      v94 = *&v52[v126];
      v95 = v89;
      [v94 setNumberOfLines:0];
      if (v93 != v52[v92])
      {
        sub_1A5974();
      }

      v84 = v95;
      sub_1A532C(v95);
      v52[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      v96 = v115;
      sub_1ED18(v122, v115, &qword_952410, &qword_79A0E0);
      if ((*(v60 + 48))(v96, 1, v91) == 1)
      {
        sub_41E198(v96);
        v88 = v116;
      }

      else
      {
        v99 = v110;
        (*(v60 + 32))(v110, v96, v91);
        v100 = v111;
        (*(v60 + 16))(v111, v99, v91);
        v101 = (*(v60 + 88))(v100, v91);
        if (v101 == enum case for Paragraph.Alignment.left(_:))
        {
          v102 = 0;
          v88 = v116;
        }

        else
        {
          v88 = v116;
          if (v101 == enum case for Paragraph.Alignment.center(_:))
          {
            v102 = 1;
          }

          else if (v101 == enum case for Paragraph.Alignment.right(_:))
          {
            v102 = 2;
          }

          else if (v101 == enum case for Paragraph.Alignment.justified(_:))
          {
            v102 = 3;
          }

          else if (v101 == enum case for Paragraph.Alignment.localized(_:))
          {
            v102 = 4;
          }

          else
          {
            (*(v60 + 8))(v111, v91);
            v102 = 0;
          }
        }

        [*&v52[v126] setTextAlignment:v102];
        (*(v60 + 8))(v99, v91);
      }

      [v52 setNeedsLayout];
      v76 = v122;
      goto LABEL_50;
    }

    v125 = v2;
    v65 = sub_7658A0();
    swift_getKeyPath();
    sub_75C7B0();

    v66 = v134;
    v67 = v61;
    v68 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v65];
    v69 = [v65 length];
    v70 = swift_allocObject();
    *(v70 + 16) = 0;
    *(v70 + 24) = v66;
    *(v70 + 32) = v68;
    *(v70 + 40) = 1;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_266A8;
    *(v71 + 24) = v70;
    v132 = sub_26694;
    v133 = v71;
    aBlock = _NSConcreteStackBlock;
    v129 = 1107296256;
    v130 = sub_10C1C;
    v131 = &unk_89A440;
    v72 = _Block_copy(&aBlock);
    v73 = v66;
    v74 = v68;

    [v65 enumerateAttributesInRange:0 options:v69 usingBlock:{0x100000, v72}];

    _Block_release(v72);
    LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

    if ((v65 & 1) == 0)
    {
      v75 = v74;
      v127 = v67;
      v76 = v108;
      sub_765930();
      v77 = v117;
      v78 = v113;
      (*(v117 + 56))(v76, 0, 1, v113);
      v79 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed;
      v80 = v52[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed];
      v52[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 1;
      v81 = *&v52[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
      v82 = *&v52[v126];
      v83 = v75;
      [v82 setNumberOfLines:v81];
      if (v80 != v52[v79])
      {
        sub_1A5974();
      }

      v84 = v83;
      sub_1A532C(v83);
      v52[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
      v85 = v114;
      sub_1ED18(v76, v114, &qword_952410, &qword_79A0E0);
      v86 = (*(v77 + 48))(v85, 1, v78);
      v59 = v125;
      v87 = v109;
      v88 = v116;
      if (v86 == 1)
      {
        sub_41E198(v85);
      }

      else
      {
        (*(v77 + 32))(v109, v85, v78);
        v103 = v107;
        (*(v77 + 16))(v107, v87, v78);
        v104 = (*(v77 + 88))(v103, v78);
        if (v104 == enum case for Paragraph.Alignment.left(_:))
        {
          v105 = 0;
        }

        else if (v104 == enum case for Paragraph.Alignment.center(_:))
        {
          v105 = 1;
        }

        else if (v104 == enum case for Paragraph.Alignment.right(_:))
        {
          v105 = 2;
        }

        else if (v104 == enum case for Paragraph.Alignment.justified(_:))
        {
          v105 = 3;
        }

        else if (v104 == enum case for Paragraph.Alignment.localized(_:))
        {
          v105 = 4;
        }

        else
        {
          (*(v77 + 8))(v107, v78);
          v105 = 0;
        }

        [v82 setTextAlignment:v105];
        (*(v77 + 8))(v87, v78);
      }

      [v52 setNeedsLayout];

LABEL_50:
      sub_41E198(v76);
      [v59 setNeedsLayout];

      (*(v112 + 8))(v123, v124);
      return;
    }

LABEL_53:
    __break(1u);
  }
}

double sub_612500(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_612678()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 panGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout(0);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout(uint64_t a1)
{
  result = qword_95EF80;
  if (!qword_95EF80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_612820()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout(0);
  objc_msgSendSuper2(&v7, "prepareLayout");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 panGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 panGestureRecognizer];

    [v6 addTarget:v0 action:"panGestureRecognizedBy:"];
  }
}

void sub_612A2C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_BD88(&unk_94EE60, qword_7841A0);
  __chkstk_darwin(v10 - 8);
  v12 = v74 - v11;
  v13 = sub_757640();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v4 collectionView];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  [v19 bounds];
  v20 = [v4 layoutAttributesForElementsInRect:?];
  if (!v20 || ((v21 = v20, sub_E59C4(), v22 = sub_769460(), v21, v22 >> 62) ? (v23 = sub_76A860()) : (v23 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8))), , !v23))
  {

LABEL_14:
    v36 = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout(0);
    v78.receiver = v5;
    v78.super_class = v36;
    objc_msgSendSuper2(&v78, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
    return;
  }

  v24 = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout(0);
  v77.receiver = v5;
  v77.super_class = v24;
  objc_msgSendSuper2(&v77, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
  v26 = v25;
  v27 = [v19 numberOfItemsInSection:0];
  v28 = v27 - 1;
  if (v27 < 1)
  {
    goto LABEL_23;
  }

  v74[1] = v26;
  [v19 frame];
  v30 = v29 + a1;
  [v5 collectionViewContentSize];
  if (v30 >= v31)
  {
    goto LABEL_23;
  }

  v32 = [v19 traitCollection];
  v33 = sub_7699F0();

  v76 = v33;
  if (v33)
  {
    v34 = v28;
  }

  else
  {
    v34 = 0;
  }

  if (a1 > 0.0)
  {
    v35 = 0.0;
    v75 = xmmword_77E280;
    do
    {
      sub_BD88(&qword_95B250, "hq\b");
      v38 = swift_allocObject();
      *(v38 + 16) = v75;
      *(v38 + 32) = 0;
      *(v38 + 40) = v34;
      sub_757540();
      isa = sub_757550().super.isa;
      (*(v14 + 8))(v17, v13);
      v40 = [v5 layoutAttributesForItemAtIndexPath:isa];

      if (!v40)
      {
        goto LABEL_23;
      }

      [v40 bounds];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v79.origin.x = v42;
      v79.origin.y = v44;
      v79.size.width = v46;
      v79.size.height = v48;
      Width = CGRectGetWidth(v79);
      if (v35 + Width * 0.5 >= a1)
      {
        break;
      }

      [v5 minimumLineSpacing];
      if (v76)
      {
        v37 = __OFSUB__(v34--, 1);
        if (v37)
        {
          __break(1u);
          goto LABEL_45;
        }
      }

      else
      {
        v37 = __OFADD__(v34++, 1);
        if (v37)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      v35 = v35 + Width + v50;
    }

    while (v35 < a1);
  }

  v51 = OBJC_IVAR____TtC18ASMessagesProvider41ScreenshotGalleryCollectionViewFlowLayout_indexPathAtInitialScroll;
  swift_beginAccess();
  sub_E5A10(v5 + v51, v12);
  if ((*(v14 + 48))(v12, 1, v13))
  {
    sub_127CD8(v12);
    v52 = &selRef_setSpeed_;
    goto LABEL_40;
  }

  v53 = sub_7575C0();
  sub_127CD8(v12);
  v52 = &selRef_setSpeed_;
  if (v34 != v53)
  {
    goto LABEL_40;
  }

  if (!((a3 >= 0.0) | v76 & 1))
  {
LABEL_31:
    if (!__OFSUB__(v34, 1))
    {
      v34 = (v34 - 1) & ~((v34 - 1) >> 63);
      goto LABEL_40;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (a3 <= 0.0)
  {
    if (a3 < 0.0 && ((v76 ^ 1) & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_40:
    sub_BD88(&qword_95B250, "hq\b");
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_77E280;
    *(v55 + 32) = 0;
    *(v55 + 40) = v34;
    sub_757540();
    v56 = sub_757550().super.isa;
    (*(v14 + 8))(v17, v13);
    v57 = [v5 layoutAttributesForItemAtIndexPath:v56];

    if (v57)
    {
      [v57 frame];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;

      [v19 v52[366]];
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;

      v80.origin.x = v67;
      v80.origin.y = v69;
      v80.size.width = v71;
      v80.size.height = v73;
      CGRectGetWidth(v80);
      v81.origin.x = v59;
      v81.origin.y = v61;
      v81.size.width = v63;
      v81.size.height = v65;
      CGRectGetWidth(v81);

      return;
    }

LABEL_23:

    return;
  }

  if (v76)
  {
    goto LABEL_31;
  }

LABEL_35:
  v54 = [v19 numberOfItemsInSection:0];
  if (__OFSUB__(v54, 1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!__OFADD__(v34, 1))
  {
    if (v34 + 1 >= v54 - 1)
    {
      v34 = v54 - 1;
    }

    else
    {
      ++v34;
    }

    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
}

char *sub_6130D0(void *a1)
{
  v3 = sub_BD88(&unk_94EE60, qword_7841A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v30 - v8;
  result = [a1 state];
  if (result == &dword_0 + 1)
  {
    v11 = [v1 collectionView];
    if (v11)
    {
      v12 = v11;
      v13 = [v1 collectionView];
      if (v13)
      {
        v14 = v13;
        [v14 bounds];
        MidX = CGRectGetMidX(v31);
        [v14 bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v32.origin.x = v17;
        v32.origin.y = v19;
        v32.size.width = v21;
        v32.size.height = v23;
        MidY = CGRectGetMidY(v32);
      }

      else
      {
        MidX = 0.0;
        MidY = 0.0;
      }

      v26 = [v12 indexPathForItemAtPoint:{MidX, MidY}];

      if (v26)
      {
        sub_757590();

        v27 = sub_757640();
        (*(*(v27 - 8) + 56))(v5, 0, 1, v27);
      }

      else
      {
        v28 = sub_757640();
        (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
      }

      sub_2F8C4C(v5, v9);
    }

    else
    {
      v25 = sub_757640();
      (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    }

    v29 = OBJC_IVAR____TtC18ASMessagesProvider41ScreenshotGalleryCollectionViewFlowLayout_indexPathAtInitialScroll;
    swift_beginAccess();
    sub_127C68(v9, v1 + v29);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_6133D8()
{
  v1 = sub_767370();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (*(v0 + 424))
  {
    sub_61366C(v0 + 56, v7);
    sub_134D8(v0 + 224, v11);
    sub_134D8(v0 + 304, v13);
    sub_134D8(v0 + 344, &v14);
    sub_134D8(v0 + 384, &v15);
    sub_5386EC();
  }

  else
  {
    sub_295E34(v0, v7);
    sub_134D8(v0 + 224, &v8);
    sub_134D8(v0 + 264, &v10);
    sub_134D8(v0 + 344, &v12);
    sub_295E6C();
  }

  sub_767380();
  swift_getKeyPath();
  sub_15134C(v0 + 160, v7);
  sub_134D8(v0 + 224, &v9);
  sub_134D8(v0 + 344, v11);
  sub_134D8(v0 + 384, v13);
  sub_151384();

  sub_767360();

  sub_613764(v7);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_6136C8@<X0>(_BYTE *a2@<X8>)
{
  result = sub_7699E0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_6136F8(void *a1, uint64_t a2)
{
  v2 = a1;
  swift_getAtKeyPath();

  return v4;
}

uint64_t sub_6137C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 425))
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

uint64_t sub_61380C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 424) = 0;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 425) = 1;
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

    *(result + 425) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_6138CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_613908(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_613950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_6139E4(uint64_t a1, double a2, double a3)
{
  v3 = sub_767370();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6133D8();
  sub_7673F0();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  return v8;
}

uint64_t sub_613B08(double a1, double a2, double a3, double a4)
{
  v4 = sub_767370();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6133D8();
  sub_7673E0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_613C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_613CE8();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_613C78()
{
  result = qword_95EF90;
  if (!qword_95EF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95EF90);
  }

  return result;
}

unint64_t sub_613CE8()
{
  result = qword_95EF98;
  if (!qword_95EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95EF98);
  }

  return result;
}

double sub_613D98(double *a1, __n128 a2)
{
  v240 = a1;
  v2 = sub_75CFF0();
  v210 = *(v2 - 8);
  v211 = v2;
  __chkstk_darwin(v2);
  v209 = &v188 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_75CFE0();
  v206 = *(v4 - 8);
  v207 = v4;
  __chkstk_darwin(v4);
  v208 = &v188 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75CFD0();
  v203 = *(v6 - 8);
  v204 = v6;
  __chkstk_darwin(v6);
  v205 = &v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_75D020();
  v212 = *(v198 - 8);
  __chkstk_darwin(v198);
  v197 = &v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_762D10();
  v200 = *(v9 - 8);
  v201 = v9;
  __chkstk_darwin(v9);
  v199 = &v188 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_75D010();
  v12 = *(v11 - 8);
  v238 = v11;
  v239 = v12;
  __chkstk_darwin(v11);
  v192 = &v188 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v237 = &v188 - v15;
  __chkstk_darwin(v16);
  v236 = &v188 - v17;
  __chkstk_darwin(v18);
  v226 = &v188 - v19;
  v20 = sub_756CB0();
  v217 = *(v20 - 8);
  __chkstk_darwin(v20);
  v216 = (&v188 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v225 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v225);
  v23 = &v188 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_BD88(&qword_947FC0, &unk_789570);
  v202 = *(v196 - 8);
  __chkstk_darwin(v196);
  v191 = &v188 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v235 = &v188 - v26;
  __chkstk_darwin(v27);
  v232 = &v188 - v28;
  __chkstk_darwin(v29);
  v195 = &v188 - v30;
  __chkstk_darwin(v31);
  v234 = &v188 - v32;
  __chkstk_darwin(v33);
  v233 = &v188 - v34;
  __chkstk_darwin(v35);
  v224 = &v188 - v36;
  __chkstk_darwin(v37);
  v227 = &v188 - v38;
  v39 = sub_7656A0();
  v214 = *(v39 - 8);
  v215 = v39;
  __chkstk_darwin(v39);
  v213 = &v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v221 = &v188 - v42;
  v43 = sub_764590();
  v219 = *(v43 - 8);
  v220 = v43;
  __chkstk_darwin(v43);
  v218 = &v188 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_BD88(&qword_946810, &qword_783360);
  __chkstk_darwin(v45 - 8);
  v223 = sub_BD88(&qword_9424B8, &qword_782050);
  v46 = *(v223 - 8);
  __chkstk_darwin(v223);
  v231 = &v188 - v47;
  v230 = sub_7656C0();
  v48 = *(v230 - 8);
  __chkstk_darwin(v230);
  v228 = &v188 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v188 - v51;
  __chkstk_darwin(v53);
  v55 = &v188 - v54;
  sub_764610();
  sub_615DD4(&qword_95EFB0, &type metadata accessor for Uber, &protocol conformance descriptor for Uber);
  sub_75C750();
  v56 = v270[0];
  if (!v270[0])
  {
    return 0.0;
  }

  v190 = v20;
  v193 = v46;
  v222 = v23;
  swift_getKeyPath();
  v229 = v56;
  sub_75C7B0();

  sub_7655A0();
  v58 = v57;
  v61 = *(v48 + 8);
  v59 = v48 + 8;
  v60 = v61;
  v62 = v230;
  v61(v55, v230);
  swift_getKeyPath();
  sub_75C7B0();

  sub_765590();
  v64 = v63;
  v61(v52, v62);
  *&v65 = v58 - v64;
  sub_75C800();
  sub_769060();
  swift_getKeyPath();
  sub_75C7B0();

  v194 = v270[0];
  v66 = v218;
  sub_7645B0();
  swift_getKeyPath();
  sub_9954C();
  v67 = v223;
  sub_769040();

  LOBYTE(v62) = v268[0];
  swift_getKeyPath();
  sub_75C7B0();

  sub_765580();
  v69 = v68;
  v70 = v230;
  v61(v55, v230);
  v71 = v194;
  sub_6260C4(v194, v66, (v62 & 1) == 0, v69, v65, 0);
  v73 = v72;

  (*(v219 + 8))(v66, v220);
  v75 = sub_7645C0();
  if (v74)
  {
    v76 = v70;
    v219 = v74;
    v194 = v75;
    v78 = v214;
    v77 = v215;
    (*(v214 + 13))(v221, enum case for PageGrid.Direction.vertical(_:), v215);
    swift_getKeyPath();
    sub_75C7B0();

    sub_765630();
    v60(v55, v76);
    swift_getKeyPath();
    sub_75C7B0();

    sub_765590();
    v60(v55, v76);
    v79 = v221;
    (*(v78 + 2))(v213, v221, v77);
    sub_40DC7C(0.0);
    sub_765670();
    (*(v78 + 1))(v79, v77);
    swift_getKeyPath();
    sub_75C7B0();

    sub_765630();
    v214 = v60;
    v215 = v59;
    v60(v55, v76);
    if (qword_93CDB0 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for TitleHeaderView.Style(0);
    v81 = sub_BE38(v80, qword_99D450);
    sub_765620();
    swift_getKeyPath();
    sub_75C7B0();

    v218 = v271[0];
    v82 = [v271[0] traitCollection];
    v83 = v238;
    v84 = (v239 + 56);
    v85 = *(v239 + 56);
    v85(v227, 1, 1, v238);
    v240 = v84;
    v189 = v85;
    v85(v224, 1, 1, v83);
    memset(v270, 0, sizeof(v270));
    v269 = 0;
    memset(v268, 0, sizeof(v268));
    v220 = v80;
    v221 = v81;
    v188 = *(v80 + 20);
    v86 = v222;
    sub_C1D58(v81 + v188, v222, 0);
    sub_26F08();
    v87 = v225;
    v213 = v82;
    v88 = sub_769E10();
    *&v265 = v194;
    v89 = v219;
    *(&v265 + 1) = v219;

    v90 = v216;
    sub_756C90();
    sub_12EC40();
    sub_76A4C0();
    v92 = v91;
    v217[1](v90, v190);

    v93 = 0uLL;
    v94 = 0;
    if (v92)
    {
      goto LABEL_10;
    }

    [v88 lineHeight];
    v96 = ceil(v95 * 1.3);
    if ((*&v96 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v96 > -9.22337204e18)
    {
      if (v96 >= 9.22337204e18)
      {
        __break(1u);
        goto LABEL_69;
      }

      v86 = v222;
      v93 = 0uLL;
LABEL_10:
      v267 = 0;
      v265 = v93;
      v266 = v93;
      v97 = sub_7653B0();
      v263 = v97;
      v264 = sub_615DD4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v98 = sub_B1B4(&v261);
      (*(*(v97 - 8) + 104))(v98, enum case for Feature.measurement_with_labelplaceholder(_:), v97);
      v99 = v88;
      sub_765C30();
      sub_BEB8(&v261);
      v100 = v199;
      v217 = v99;
      sub_762D00();
      sub_762CE0();
      (*(v200 + 8))(v100, v201);
      sub_1ED18(&v265, v260, &unk_943B10, &qword_77E080);
      v101 = v263;
      v102 = v264;
      v103 = sub_B170(&v261, v263);
      v259[3] = v101;
      v259[4] = *(v102 + 8);
      v104 = sub_B1B4(v259);
      (*(*(v101 - 8) + 16))(v104, v103, v101);
      v105 = *(v86 + *(v87 + 32));
      v257 = &type metadata for Float;
      v258 = &protocol witness table for Float;
      v256[0] = v105;
      v106 = *(v87 + 36);
      v107 = sub_766CA0();
      v255[3] = v107;
      v255[4] = &protocol witness table for StaticDimension;
      v108 = sub_B1B4(v255);
      v109 = v87;
      v110 = *(*(v107 - 8) + 16);
      v110(v108, v86 + v106, v107);
      v111 = *(v109 + 40);
      v254[3] = v107;
      v254[4] = &protocol witness table for StaticDimension;
      v112 = sub_B1B4(v254);
      v110(v112, v86 + v111, v107);
      sub_1ED18(v270, &v248, &qword_9417D0, &unk_780EA0);
      v113 = *(&v249 + 1);
      if (*(&v249 + 1))
      {
        v114 = v250;
        v115 = sub_B170(&v248, *(&v249 + 1));
        *(&v252 + 1) = v113;
        v253 = *(v114 + 8);
        v116 = sub_B1B4(&v251);
        (*(*(v113 - 8) + 16))(v116, v115, v113);
        sub_BEB8(&v248);
      }

      else
      {
        sub_10A2C(&v248, &qword_9417D0, &unk_780EA0);
        v251 = 0u;
        v252 = 0u;
        v253 = 0;
      }

      sub_1ED18(v268, v245, &qword_9417D0, &unk_780EA0);
      v117 = v246;
      v118 = v225;
      if (v246)
      {
        v119 = v247;
        v120 = sub_B170(v245, v246);
        *(&v249 + 1) = v117;
        v250 = *(v119 + 8);
        v121 = sub_B1B4(&v248);
        (*(*(v117 - 8) + 16))(v121, v120, v117);
        sub_BEB8(v245);
      }

      else
      {
        sub_10A2C(v245, &qword_9417D0, &unk_780EA0);
        v248 = 0u;
        v249 = 0u;
        v250 = 0;
      }

      v122 = v232;
      v123 = v222;
      sub_134D8(&v222[*(v118 + 48)], v245);
      sub_134D8(v123 + *(v118 + 52), &v244);
      v242 = &type metadata for Double;
      v243 = &protocol witness table for Double;
      v241 = 0x4020000000000000;
      sub_75D000();
      sub_BEB8(&v261);
      sub_10A2C(&v265, &unk_943B10, &qword_77E080);
      v124 = v221[v220[9]];
      sub_BD88(&qword_947FC8, qword_7A9250);
      v125 = *(v202 + 72);
      v126 = (*(v202 + 80) + 32) & ~*(v202 + 80);
      if (v124)
      {
        if (v124 == 1)
        {
          v219 = swift_allocObject();
          v127 = v219 + v126;
          sub_1ED18(v227, v219 + v126, &qword_947FC0, &unk_789570);
          v128 = v239 + 16;
          (*(v239 + 16))(v127 + v125, v226, v83);
          v129 = v83;
          v189(v127 + v125, 0, 1, v83);
          sub_1ED18(v224, v127 + 2 * v125, &qword_947FC0, &unk_789570);
          v130 = (v128 + 32);
          v236 = (v128 + 16);
          v240 = _swiftEmptyArrayStorage;
          v131 = 3;
          v233 = v127;
          do
          {
            v132 = v125;
            v133 = v234;
            sub_1ED18(v127, v234, &qword_947FC0, &unk_789570);
            v134 = v133;
            v135 = v235;
            sub_5FB980(v134, v235);
            if ((*v130)(v135, 1, v129) == 1)
            {
              sub_10A2C(v135, &qword_947FC0, &unk_789570);
            }

            else
            {
              v136 = v135;
              v137 = *v236;
              (*v236)(v237, v136, v129);
              v138 = v240;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v138 = sub_7B968(0, *(v138 + 2) + 1, 1, v138);
              }

              v140 = *(v138 + 2);
              v139 = *(v138 + 3);
              if (v140 >= v139 >> 1)
              {
                v138 = sub_7B968((v139 > 1), v140 + 1, 1, v138);
              }

              *(v138 + 2) = v140 + 1;
              v141 = (*(v239 + 80) + 32) & ~*(v239 + 80);
              v240 = v138;
              v129 = v238;
              v137(v138 + v141 + *(v239 + 72) * v140, v237);
            }

            v125 = v132;
            v127 += v132;
            --v131;
          }

          while (v131);
          swift_setDeallocating();
          swift_arrayDestroy();
          v89 = v197;
          v88 = v198;
          v83 = v129;
        }

        else
        {
          v219 = swift_allocObject();
          v154 = v219 + v126;
          sub_1ED18(v227, v154, &qword_947FC0, &unk_789570);
          v155 = v239;
          (*(v239 + 16))(v154 + v125, v226, v83);
          v189(v154 + v125, 0, 1, v83);
          v156 = v195;
          sub_1ED18(v154, v195, &qword_947FC0, &unk_789570);
          v157 = v191;
          sub_5FB980(v156, v191);
          v158 = *(v155 + 48);
          v159 = (v155 + 32);
          if (v158(v157, 1, v83) == 1)
          {
            sub_10A2C(v157, &qword_947FC0, &unk_789570);
            v160 = _swiftEmptyArrayStorage;
          }

          else
          {
            v161 = *v159;
            (*v159)(v192, v157, v83);
            v162 = _swiftEmptyArrayStorage;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v162 = sub_7B968(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
            }

            v164 = *(v162 + 2);
            v163 = *(v162 + 3);
            v160 = v162;
            if (v164 >= v163 >> 1)
            {
              v160 = sub_7B968((v163 > 1), v164 + 1, 1, v162);
            }

            *(v160 + 2) = v164 + 1;
            v165 = v160 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v164;
            v83 = v238;
            v161(v165, v192, v238);
            v157 = v191;
          }

          v166 = v154 + v125;
          v167 = v195;
          sub_1ED18(v166, v195, &qword_947FC0, &unk_789570);
          sub_5FB980(v167, v157);
          if (v158(v157, 1, v83) == 1)
          {
            sub_10A2C(v157, &qword_947FC0, &unk_789570);
          }

          else
          {
            v168 = *v159;
            v169 = v192;
            (*v159)(v192, v157, v83);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v160 = sub_7B968(0, *(v160 + 2) + 1, 1, v160);
            }

            v171 = *(v160 + 2);
            v170 = *(v160 + 3);
            v172 = v160;
            if (v171 >= v170 >> 1)
            {
              v172 = sub_7B968((v170 > 1), v171 + 1, 1, v160);
            }

            *(v172 + 2) = v171 + 1;
            v168(v172 + ((*(v239 + 80) + 32) & ~*(v239 + 80)) + *(v239 + 72) * v171, v169, v83);
          }

          v89 = v197;
          v88 = v198;
          swift_setDeallocating();
          swift_arrayDestroy();
        }
      }

      else
      {
        v219 = swift_allocObject();
        v142 = v219 + v126;
        sub_1ED18(v227, v219 + v126, &qword_947FC0, &unk_789570);
        sub_1ED18(v224, v142 + v125, &qword_947FC0, &unk_789570);
        v143 = v239 + 16;
        (*(v239 + 16))(v142 + 2 * v125, v226, v83);
        v144 = v83;
        v189(v142 + 2 * v125, 0, 1, v83);
        v145 = (v143 + 32);
        v237 = (v143 + 16);
        v240 = _swiftEmptyArrayStorage;
        v146 = 3;
        v235 = v142;
        do
        {
          v147 = v233;
          sub_1ED18(v142, v233, &qword_947FC0, &unk_789570);
          sub_5FB980(v147, v122);
          if ((*v145)(v122, 1, v144) == 1)
          {
            sub_10A2C(v122, &qword_947FC0, &unk_789570);
          }

          else
          {
            v148 = *v237;
            (*v237)(v236, v122, v144);
            v149 = v240;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v149 = sub_7B968(0, *(v149 + 2) + 1, 1, v149);
            }

            v151 = *(v149 + 2);
            v150 = *(v149 + 3);
            if (v151 >= v150 >> 1)
            {
              v149 = sub_7B968((v150 > 1), v151 + 1, 1, v149);
            }

            *(v149 + 2) = v151 + 1;
            v152 = (*(v239 + 80) + 32) & ~*(v239 + 80);
            v240 = v149;
            v153 = v149 + v152 + *(v239 + 72) * v151;
            v144 = v238;
            v148(v153, v236);
            v122 = v232;
          }

          v142 += v125;
          --v146;
        }

        while (v146);
        swift_setDeallocating();
        swift_arrayDestroy();
        v89 = v197;
        v88 = v198;
        v83 = v144;
      }

      swift_deallocClassInstance();
      v267 = 0;
      v265 = 0u;
      v266 = 0u;
      sub_1ED18(&v265, &v261, &unk_943B10, &qword_77E080);
      v174 = v220;
      v173 = v221;
      v175 = *&v221[v220[14]];
      v260[3] = &type metadata for CGFloat;
      v260[4] = &protocol witness table for CGFloat;
      v260[0] = v175;
      (*(v203 + 16))(v205, &v221[v220[10]], v204);
      (*(v206 + 16))(v208, &v173[v174[11]], v207);
      (*(v210 + 104))(v209, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v211);
      sub_75CFA0();
      sub_769DA0();
      sub_615DD4(&unk_947FD0, &type metadata accessor for TitleHeaderLayout, &protocol conformance descriptor for TitleHeaderLayout);
      sub_7665A0();
      v261 = v176;
      v262 = v177;
      sub_769DB0();
      Main = JUScreenClassGetMain();
      v90 = v212;
      if (Main != 1)
      {

        swift_unknownObjectRelease();

        v90[1](v89, v88);
        v182.n128_f64[0] = (*(v239 + 8))(v226, v83);
        sub_C1DBC(v222, v182);
        sub_10A2C(v268, &qword_9417D0, &unk_780EA0);
        sub_10A2C(v270, &qword_9417D0, &unk_780EA0);
        sub_10A2C(v224, &qword_947FC0, &unk_789570);
        sub_10A2C(v227, &qword_947FC0, &unk_789570);
        v214(v228, v230);
        (*(v193 + 8))(v231, v223);
        v181 = 0.0;
        goto LABEL_63;
      }

      v92 = v222;
      v86 = v193;
      v87 = v230;
      if (qword_93DE20 == -1)
      {
LABEL_57:
        v179 = sub_BE38(v225, qword_9A0178);
        v94 = v188;
        if (sub_19C62C(&v221[v188], v179))
        {

          swift_unknownObjectRelease();

          v90[1](v89, v88);
          v180.n128_f64[0] = (*(v239 + 8))(v226, v83);
          sub_C1DBC(v92, v180);
          sub_10A2C(v268, &qword_9417D0, &unk_780EA0);
          sub_10A2C(v270, &qword_9417D0, &unk_780EA0);
          sub_10A2C(v224, &qword_947FC0, &unk_789570);
          sub_10A2C(v227, &qword_947FC0, &unk_789570);
          v214(v228, v87);
          (*(v86 + 8))(v231, v223);
          v181 = 5.0;
LABEL_63:
          v186 = v262 - v181;
          sub_10A2C(&v265, &unk_943B10, &qword_77E080);
          return v73 + v186;
        }

        if (qword_93DE28 == -1)
        {
LABEL_61:
          v183 = sub_BE38(v225, qword_9A0190);
          v184 = sub_19C62C(&v221[v94], v183);

          swift_unknownObjectRelease();

          v90[1](v89, v88);
          v185.n128_f64[0] = (*(v239 + 8))(v226, v83);
          sub_C1DBC(v92, v185);
          sub_10A2C(v268, &qword_9417D0, &unk_780EA0);
          sub_10A2C(v270, &qword_9417D0, &unk_780EA0);
          sub_10A2C(v224, &qword_947FC0, &unk_789570);
          sub_10A2C(v227, &qword_947FC0, &unk_789570);
          v214(v228, v87);
          (*(v86 + 8))(v231, v223);
          v181 = 0.0;
          if (v184)
          {
            v181 = 5.0;
          }

          goto LABEL_63;
        }

LABEL_69:
        swift_once();
        goto LABEL_61;
      }

LABEL_67:
      swift_once();
      goto LABEL_57;
    }

    __break(1u);
    goto LABEL_67;
  }

  (*(v193 + 8))(v231, v67);

  return v73;
}

uint64_t sub_615DD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_615E1C(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
  {
    v6 = 0;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v7 = sub_76A770();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v10 = v7;
      a1(&v10);

      if (!v3)
      {
        ++v6;
        if (v8 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v6 >= *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_13;
    }

    v7 = *(a3 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_615F30(uint64_t a1)
{
  v105 = a1;
  v2 = sub_7572E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = _swiftEmptyArrayStorage;
  sub_618150();
  sub_769440();
  if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  v6 = swift_allocObject();
  v104 = v1;
  swift_unknownObjectWeakInit();
  v103[2] = type metadata accessor for ActionDebugSetting();
  v7 = swift_allocObject();
  *(v7 + 56) = 0xD000000000000014;
  *(v7 + 64) = 0x80000000007EDF00;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = sub_618C24;
  *(v7 + 112) = v6;
  swift_retain_n();
  sub_7572D0();
  v8 = sub_7572B0();
  v10 = v9;
  v11 = *(v3 + 8);
  v103[1] = v3 + 8;
  v11(v5, v2);
  v108 = v8;
  v109 = v10;
  sub_76A6E0();

  sub_769440();
  if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  v106 = v2;
  v107 = v11;
  sub_769500();
  type metadata accessor for PromptActionDebugSetting();
  swift_allocObject();
  v12 = sub_5BEF20(0x302E32206F726548, 0xEF74686769654820, sub_617398, 0, sub_6174C4, 0);

  sub_769440();
  v13 = v105;
  if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  v103[3] = v12;
  sub_769500();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v16 = type metadata accessor for NavigationActionDebugSetting();
  v17 = swift_allocObject();
  v17[7] = 0xD000000000000026;
  v17[8] = 0x80000000007EDF20;
  v17[10] = 0;
  v17[11] = 0;
  v17[9] = 0;
  v17[12] = sub_61902C;
  v17[13] = v15;

  sub_7572D0();
  v18 = sub_7572B0();
  v20 = v19;
  v107(v5, v106);
  v108 = v18;
  v109 = v20;
  sub_76A6E0();

  sub_769440();
  if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = v13;
  v23 = swift_allocObject();
  v23[7] = 0xD000000000000029;
  v23[8] = 0x80000000007EDF50;
  v23[10] = 0;
  v23[11] = 0;
  v23[9] = 0;
  v23[12] = sub_619058;
  v23[13] = v22;

  sub_7572D0();
  v24 = sub_7572B0();
  v26 = v25;
  v107(v5, v106);
  v108 = v24;
  v109 = v26;
  sub_76A6E0();

  sub_769440();
  if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v13;
  v103[4] = v16;
  v29 = swift_allocObject();
  v29[7] = 0xD000000000000023;
  v29[8] = 0x80000000007EDF80;
  v29[10] = 0;
  v29[11] = 0;
  v29[9] = 0;
  v29[12] = sub_619084;
  v29[13] = v28;

  sub_7572D0();
  v30 = sub_7572B0();
  v32 = v31;
  v107(v5, v106);
  v108 = v30;
  v109 = v32;
  sub_76A6E0();

  sub_769440();
  if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  Strong = swift_unknownObjectWeakLoadStrong();
  v34 = v105;
  if (Strong)
  {
    v35 = Strong;
    v36 = [Strong snapshotPageTraitEnvironment];

    v37 = [v36 traitCollection];
    swift_unknownObjectRelease();
    v38 = [v37 userInterfaceIdiom];

    if (!v38)
    {
      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = swift_allocObject();
      *(v40 + 16) = v39;
      *(v40 + 24) = v34;
      v41 = swift_allocObject();
      v41[7] = 0xD00000000000002CLL;
      v41[8] = 0x80000000007EE0B0;
      v41[10] = 0;
      v41[11] = 0;
      v41[9] = 0;
      v41[12] = sub_619190;
      v41[13] = v40;

      sub_7572D0();
      v42 = sub_7572B0();
      v44 = v43;
      v45 = v107;
      v107(v5, v106);
      v108 = v42;
      v109 = v44;
      sub_76A6E0();

      sub_769440();
      if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
      v46 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v47 = swift_allocObject();
      *(v47 + 16) = v46;
      *(v47 + 24) = v34;
      v48 = swift_allocObject();
      v48[7] = 0xD00000000000002FLL;
      v48[8] = 0x80000000007EE0E0;
      v48[10] = 0;
      v48[11] = 0;
      v48[9] = 0;
      v48[12] = sub_6191BC;
      v48[13] = v47;

      sub_7572D0();
      v49 = sub_7572B0();
      v51 = v50;
      v45(v5, v106);
      v108 = v49;
      v109 = v51;
      sub_76A6E0();

      sub_769440();
      if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
      v52 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v53 = swift_allocObject();
      *(v53 + 16) = v52;
      *(v53 + 24) = v34;
      v54 = swift_allocObject();
      v54[7] = 0xD000000000000029;
      v54[8] = 0x80000000007EE110;
      v54[10] = 0;
      v54[11] = 0;
      v54[9] = 0;
      v54[12] = sub_6191E8;
      v54[13] = v53;

      sub_7572D0();
      v55 = sub_7572B0();
      v57 = v56;
      v45(v5, v106);
      v108 = v55;
      v109 = v57;
      sub_76A6E0();

      sub_769440();
      if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
    }
  }

  v58 = swift_allocObject();
  v58[7] = 0xD00000000000001FLL;
  v58[8] = 0x80000000007EDFB0;
  v58[10] = 0;
  v58[11] = 0;
  v58[9] = 0;
  v58[12] = sub_6177C0;
  v58[13] = 0;
  sub_7572D0();
  v59 = sub_7572B0();
  v61 = v60;
  v62 = v106;
  v63 = v107;
  v107(v5, v106);
  v108 = v59;
  v109 = v61;
  sub_76A6E0();
  sub_769440();
  if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  v64 = swift_allocObject();
  v64[7] = 0xD000000000000024;
  v64[8] = 0x80000000007EDFD0;
  v64[10] = 0;
  v64[11] = 0;
  v64[9] = 0;
  v64[12] = sub_617980;
  v64[13] = 0;
  sub_7572D0();
  v65 = sub_7572B0();
  v67 = v66;
  v63(v5, v62);
  v108 = v65;
  v109 = v67;
  sub_76A6E0();
  sub_769440();
  if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  v68 = swift_allocObject();
  v68[7] = 0xD00000000000001FLL;
  v68[8] = 0x80000000007EE000;
  v68[10] = 0;
  v68[11] = 0;
  v68[9] = 0;
  v68[12] = sub_617B40;
  v68[13] = 0;
  sub_7572D0();
  v69 = sub_7572B0();
  v71 = v70;
  v63(v5, v62);
  v108 = v69;
  v109 = v71;
  sub_76A6E0();
  sub_769440();
  if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  v72 = swift_allocObject();
  v72[7] = 0xD000000000000043;
  v72[8] = 0x80000000007EE020;
  v72[10] = 0;
  v72[11] = 0;
  v72[9] = 0;
  v72[12] = sub_617D00;
  v72[13] = 0;
  sub_7572D0();
  v73 = sub_7572B0();
  v75 = v74;
  v63(v5, v62);
  v108 = v73;
  v109 = v75;
  sub_76A6E0();
  sub_769440();
  if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  sub_758900();
  sub_768900();
  sub_768ED0();
  v76 = v108;
  v77 = swift_allocObject();
  v77[7] = 0x4820656461637241;
  v77[8] = 0xE90000000000004FLL;
  v77[9] = 0;
  v77[10] = 0;
  v77[11] = sub_6190B0;
  v77[12] = v76;
  v77[13] = sub_619120;
  v77[14] = v76;
  swift_retain_n();
  sub_7572D0();
  v78 = sub_7572B0();
  v80 = v79;
  v63(v5, v62);
  v108 = v78;
  v109 = v80;
  sub_76A6E0();

  sub_769440();
  v81 = v62;
  if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  v82 = swift_allocObject();
  v83 = v104;
  *(v82 + 16) = v76;
  *(v82 + 24) = v83;
  v84 = swift_allocObject();
  *(v84 + 56) = 0xD000000000000011;
  *(v84 + 64) = 0x80000000007EE070;
  *(v84 + 72) = 0u;
  *(v84 + 88) = 0u;
  *(v84 + 104) = sub_619180;
  *(v84 + 112) = v82;

  v85 = v83;

  sub_7572D0();
  v86 = sub_7572B0();
  v88 = v87;
  v107(v5, v62);
  v108 = v86;
  v109 = v88;
  sub_76A6E0();

  sub_769440();
  if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  v89 = swift_allocObject();
  *(v89 + 16) = v76;
  *(v89 + 24) = v85;
  v90 = swift_allocObject();
  *(v90 + 56) = 0xD00000000000001ALL;
  *(v90 + 64) = 0x80000000007EE090;
  *(v90 + 72) = 0u;
  *(v90 + 88) = 0u;
  *(v90 + 104) = sub_619188;
  *(v90 + 112) = v89;

  v91 = v85;

  sub_7572D0();
  v92 = sub_7572B0();
  v94 = v93;
  v95 = v107;
  v107(v5, v81);
  v108 = v92;
  v109 = v94;
  sub_76A6E0();

  sub_769440();
  if (*(&dword_10 + (v110 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v110 & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_7694C0();
  }

  sub_769500();
  v96 = v110;
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_77D9F0;
  type metadata accessor for DebugSection();
  v98 = swift_allocObject();
  sub_7572D0();
  v99 = sub_7572B0();
  v101 = v100;
  v95(v5, v81);
  v98[2] = v99;
  v98[3] = v101;
  v98[4] = 0;
  v98[5] = 0xE000000000000000;
  v98[6] = v96;
  *(v97 + 32) = v98;

  return v97;
}

void sub_617258(__n128 a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_761BC0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_unknownObjectWeakLoadStrong();

    if (v9)
    {
      (*(v4 + 104))(v6, enum case for EntitlementRefeshCondition.always(_:), v3);
      sub_761220();

      (*(v4 + 8))(v6, v3);
    }
  }
}

uint64_t sub_617398()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_769210();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return sub_7695F0();
    }
  }

  else
  {
    sub_10A2C(v6, &unk_93FBD0, &qword_77DFA0);
  }

  return 0x746C7561666544;
}

void sub_6174C4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    goto LABEL_4;
  }

  v5 = [objc_allocWithZone(NSNumberFormatter) init];
  v6 = sub_769210();
  v7 = [v5 numberFromString:v6];

  if (v7)
  {
    v8 = [objc_opt_self() standardUserDefaults];
    v9 = v7;
    v11 = sub_769210();
    [v8 setValue:v9 forKey:?];

LABEL_5:

    return;
  }

  v10 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v10 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_4:
    v9 = [objc_opt_self() standardUserDefaults];
    v11 = sub_769210();
    [v9 setValue:0 forKey:?];
    goto LABEL_5;
  }
}

void *sub_61768C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, unsigned int *a5)
{
  v8 = sub_75C3F0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14.n128_f64[0] = (*(v9 + 104))(v11, *a4, v8);
    sub_6192E4(v11, a3, a5, v14);

    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_6177C0()
{
  v0 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_7570A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757090();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10A2C(v2, &unk_93FD30, qword_77F240);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_opt_self();
  sub_757040(v9);
  v11 = v10;
  [v8 openStandardURL:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_617980()
{
  v0 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_7570A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757090();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10A2C(v2, &unk_93FD30, qword_77F240);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_opt_self();
  sub_757040(v9);
  v11 = v10;
  [v8 openStandardURL:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_617B40()
{
  v0 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_7570A0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757090();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_10A2C(v2, &unk_93FD30, qword_77F240);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = objc_opt_self();
  sub_757040(v9);
  v11 = v10;
  [v8 openStandardURL:v10];

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_617D00()
{
  v0 = sub_761160();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_761150();
  sub_761140();
  return (*(v1 + 8))(v3, v0);
}

void sub_617DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_7588B0();
  v4 = v3;
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = sub_7CBF4(*(v3 + 16), 0);
    v7 = sub_618ED0(&v15, v6 + 4, v5, v4);
    sub_1A01E0(v15);
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = _swiftEmptyArrayStorage;
LABEL_5:
  v15 = v6;
  sub_BD88(&unk_947FF0, &unk_7801F0);
  sub_5FBA8();
  sub_7691A0();

  v8 = sub_769210();
  v9 = sub_769210();

  v10 = [objc_opt_self() alertControllerWithTitle:v8 message:v9 preferredStyle:1];

  v11 = sub_769210();
  v12 = [objc_opt_self() actionWithTitle:v11 style:1 handler:0];

  [v10 addAction:v12];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong presentViewController:v10 animated:1 completion:0];
  }
}

void sub_617FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_7588F0();
  sub_BD88(&unk_947FF0, &unk_7801F0);
  sub_5FBA8();
  sub_7691A0();

  v3 = sub_769210();
  v4 = sub_769210();

  v5 = [objc_opt_self() alertControllerWithTitle:v3 message:v4 preferredStyle:1];

  v6 = sub_769210();
  v7 = [objc_opt_self() actionWithTitle:v6 style:1 handler:0];

  [v5 addAction:v7];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong presentViewController:v5 animated:1 completion:0];
  }
}

uint64_t sub_618150()
{
  v1 = v0;
  v2 = sub_758FD0();
  v69 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v51 - v6;
  v8 = sub_7624F0();
  v65 = *(v8 - 8);
  v9 = *(v65 + 64);
  __chkstk_darwin(v8);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v51 - v11;
  v12 = sub_7572E0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_7624E0();
  v17 = *(v16 + 16);
  if (v17)
  {
    v52 = v15;
    v53 = v13;
    v54 = v12;
    v75 = _swiftEmptyArrayStorage;
    v61 = v9;
    v62 = v4;
    v18 = v16;
    sub_76A7C0();
    v60 = *(v65 + 16);
    v19 = *(v65 + 80);
    v51 = v18;
    v20 = v18 + ((v19 + 32) & ~v19);
    v58 = *(v65 + 72);
    v57 = (v69 + 8);
    v65 += 16;
    v56 = (v65 + 16);
    v59 = v19;
    v55 = (v19 + 24) & ~v19;
    v68 = v7;
    v70 = v8;
    do
    {
      v69 = v20;
      v21 = v63;
      v60(v63, v20, v8);
      sub_7624D0();
      v22 = sub_758FB0();
      v24 = v23;
      v25 = *v57;
      (*v57)(v68, v2);
      v71 = v22;
      v72 = v24;
      sub_76A6E0();
      v26 = v62;
      sub_7624D0();
      v27 = sub_758FB0();
      v66 = v28;
      v67 = v27;
      v25(v26, v2);
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = v2;
      v31 = v1;
      v32 = *v56;
      v33 = v17;
      v34 = v64;
      (*v56)(v64, v21, v70);
      v35 = v55;
      v36 = swift_allocObject();
      *(v36 + 16) = v29;
      v37 = v34;
      v38 = v33;
      v32((v36 + v35), v37, v70);
      v1 = v31;
      v2 = v30;
      type metadata accessor for MenuItemDebugSetting();
      v39 = swift_allocObject();
      *(v39 + 72) = 0;
      v40 = v66;
      *(v39 + 56) = v67;
      *(v39 + 64) = v40;
      *(v39 + 80) = sub_619BE4;
      *(v39 + 88) = v36;
      v41 = v73[1];
      *(v39 + 16) = v73[0];
      *(v39 + 32) = v41;
      *(v39 + 48) = v74;
      sub_76A7A0();
      sub_76A7D0();
      v8 = v70;
      sub_76A7E0();
      sub_76A7B0();
      v20 = v69 + v58;
      v17 = v38 - 1;
    }

    while (v17);

    v42 = v75;
    v12 = v54;
    v13 = v53;
    v15 = v52;
  }

  else
  {

    v42 = _swiftEmptyArrayStorage;
  }

  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MenuDebugSetting();
  v44 = swift_allocObject();
  strcpy((v44 + 56), "Toggle State");
  *(v44 + 69) = 0;
  *(v44 + 70) = -5120;
  *(v44 + 72) = v42;
  *(v44 + 80) = sub_619C48;
  *(v44 + 88) = v43;

  sub_7572D0();
  v45 = sub_7572B0();
  v47 = v46;
  v48 = *(v13 + 8);

  v48(v15, v12);
  *&v73[0] = v45;
  *(&v73[0] + 1) = v47;
  sub_76A6E0();
  sub_618A1C(v73);
  __chkstk_darwin(v49);
  *(&v51 - 2) = v73;

  sub_615E1C(sub_23D8AC, (&v51 - 4), v42);

  sub_10A2C(v73, &unk_9443A0, &unk_77E240);
  return v44;
}

uint64_t sub_61878C(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&qword_95EFE8, &qword_7AA020);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_758FD0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&qword_95EFF0, &qword_7AA028);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v14 = Strong, v15 = swift_unknownObjectWeakLoadStrong(), v14, v15))
  {
    sub_7624D0();
    sub_7611B0();

    (*(v7 + 8))(v9, v6);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  (*(v7 + 56))(v12, v16, 1, v6);
  sub_10A2C(v12, &qword_95EFF0, &qword_7AA028);
  v17 = sub_7624F0();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v5, a2, v17);
  (*(v18 + 56))(v5, 0, 1, v17);
  return sub_763B30();
}

double sub_618A1C@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_758FD0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = Strong, v9 = swift_unknownObjectWeakLoadStrong(), v8, v9))
  {
    sub_761210();

    v10 = sub_758FB0();
    v12 = v11;
    (*(v4 + 8))(v6, v3);
    v14[1] = v10;
    v14[2] = v12;
    sub_76A6E0();
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

id sub_618B84(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ArcadeSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_618BEC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_618C2C(void *a1, char *a2, unint64_t a3, uint64_t a4)
{
  v40 = sub_757640();
  v42 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v31;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = (&dword_0 + 1);
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1, 1);
      a1 = (a1 + 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_618ED0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_6190B0()
{
  v1._object = 0x80000000007EE170;
  v1._countAndFlagsBits = 0xD000000000000020;
  if (sub_7588E0(v1))
  {
    return 0x6C62616C69617641;
  }

  else
  {
    return 0x616C696176616E55;
  }
}

void sub_619120()
{
  v4._object = 0x80000000007EE170;
  v4._countAndFlagsBits = 0xD000000000000020;
  v0 = sub_7588E0(v4);
  v2._object = 0x80000000007EE170;
  v1 = !v0;
  v2._countAndFlagsBits = 0xD000000000000020;

  sub_7588D0(v2, v1);
}

id sub_619214(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  sub_761230();
  sub_768900();
  sub_768ED0();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DebugSettingsProvider();
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t sub_6192E4(uint64_t a1, uint64_t a2, unsigned int *a3, __n128 a4)
{
  v52 = a3;
  v60 = a2;
  v56 = a1;
  v4 = sub_758B40();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75F340();
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v51 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_760280();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v59 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7687B0();
  __chkstk_darwin(v10 - 8);
  v58 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v12 - 8);
  v57 = v44 - v13;
  v14 = sub_765490();
  v46 = *(v14 - 8);
  __chkstk_darwin(v14);
  v55 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v16 - 8);
  v18 = v44 - v17;
  v19 = sub_BD88(&qword_955D00, &unk_7834A0);
  __chkstk_darwin(v19);
  v21 = v44 - v20;
  v22 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v22 - 8);
  v24 = v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v44 - v26;
  v28 = sub_7570A0();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = v44 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757090();
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    v32 = &unk_93FD30;
    v33 = qword_77F240;
    v34 = v27;
    return sub_10A2C(v34, v32, v33);
  }

  v45 = v6;
  (*(v29 + 32))(v31, v27, v28);
  v35 = *(v19 + 48);
  v36 = *(v19 + 64);
  *v21 = 0;
  v37 = sub_75C3F0();
  (*(*(v37 - 8) + 16))(&v21[v35], v56, v37);
  (*(v29 + 16))(&v21[v36], v31, v28);
  v38 = sub_BD88(&unk_93F630, &unk_77E230);
  sub_768860();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v18, 1, v38) == 1)
  {
    sub_10A2C(v21, &qword_955D00, &unk_7834A0);
    (*(v29 + 8))(v31, v28);
    v32 = &unk_93F980;
    v33 = &qword_77EDA0;
    v34 = v18;
    return sub_10A2C(v34, v32, v33);
  }

  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  (*(v46 + 104))(v55, enum case for FlowPage.arcadeWelcome(_:), v14);
  v41 = *(v29 + 56);
  v44[1] = v24;
  v41(v24, 1, 1, v28);
  v42 = sub_759E30();
  (*(*(v42 - 8) + 56))(v57, 1, 1, v42);
  v61 = 0u;
  v62 = 0u;
  sub_768790();
  (*(v47 + 104))(v59, *v52, v48);
  (*(v49 + 104))(v51, enum case for FlowAnimationBehavior.infer(_:), v50);
  (*(v53 + 104))(v45, enum case for FlowOrigin.inapp(_:), v54);
  sub_768CE0();
  v56 = v39;
  sub_758B20();
  swift_allocObject();
  v43 = sub_758AD0();
  sub_32AC14(v43, 1, v60, v18);

  sub_10A2C(v21, &qword_955D00, &unk_7834A0);
  (*(v29 + 8))(v31, v28);
  return (*(v56 + 8))(v18, v38);
}

uint64_t sub_619B20(__n128 a1)
{
  v2 = sub_7624F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_619BE4(__n128 a1)
{
  v2 = *(sub_7624F0() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_61878C(v3, v4);
}

uint64_t static NSUserActivity.handle(userActivity:asPartOf:)(void *a1, uint64_t a2)
{
  v75 = a2;
  v3 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v54 - v4;
  v70 = sub_760280();
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v71 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_758B40();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v69 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_75F340();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v66 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7687B0();
  __chkstk_darwin(v10 - 8);
  v68 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v12 - 8);
  v63 = &v54 - v13;
  v14 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v14 - 8);
  v60 = &v54 - v15;
  v58 = sub_765490();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v59 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_75A3A0();
  v55 = *(v17 - 8);
  __chkstk_darwin(v17);
  v72 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_759E30();
  v56 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_BD88(&qword_95EFF8, &unk_7AA030);
  __chkstk_darwin(v22 - 8);
  v24 = &v54 - v23;
  v25 = sub_7589A0();
  v73 = *(v25 - 8);
  v74 = v25;
  *&v26 = __chkstk_darwin(v25).n128_u64[0];
  v28 = &v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [a1 activityType];
  v30 = sub_769240();
  v32 = v31;

  if (sub_769240() == v30 && v33 == v32)
  {

LABEL_5:

    v35 = v75;

    return sub_61A76C(a1, v35);
  }

  v54 = v5;
  v34 = sub_76A950();

  if (v34)
  {
    goto LABEL_5;
  }

  if (sub_769240() == v30 && v37 == v32)
  {
  }

  else
  {
    v38 = sub_76A950();

    result = 0;
    if ((v38 & 1) == 0)
    {
      return result;
    }
  }

  v39 = a1;
  sub_758970();
  v41 = v73;
  v40 = v74;
  if ((*(v73 + 48))(v24, 1, v74) == 1)
  {
    sub_10A2C(v24, &qword_95EFF8, &unk_7AA030);
    return 0;
  }

  else
  {
    v42 = v28;
    (*(v41 + 32))(v28, v24, v40);
    sub_75B430();
    sub_75B410();
    sub_758990();
    sub_75B3A0();

    v43 = v56;
    (*(v56 + 8))(v21, v19);
    sub_75A920();
    sub_7688F0();
    if (v78)
    {
      sub_762490();
    }

    (*(v55 + 104))(v72, enum case for NavigationTab.loading(_:), v17);
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_77D9F0;
    v80 = 0;
    v78 = 0u;
    v79 = 0u;
    (*(v57 + 104))(v59, enum case for FlowPage.unknown(_:), v58);
    v45 = v60;
    sub_758980();
    v46 = sub_7570A0();
    (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
    v47 = v63;
    sub_758990();
    (*(v43 + 56))(v47, 0, 1, v19);
    v76 = 0u;
    v77 = 0u;
    sub_768790();
    (*(v61 + 104))(v66, enum case for FlowAnimationBehavior.never(_:), v62);
    v48 = *(v64 + 13);
    v64 = v42;
    v48(v69, enum case for FlowOrigin.external(_:), v65);
    (*(v67 + 104))(v71, enum case for FlowPresentationContext.infer(_:), v70);
    sub_768CE0();
    sub_758B20();
    swift_allocObject();
    *(v44 + 32) = sub_758AD0();
    sub_768790();
    sub_75B6B0();
    swift_allocObject();
    v49 = sub_75B690();
    v50 = sub_BD88(&unk_93F630, &unk_77E230);
    v51 = v54;
    v52 = v75;
    sub_768860();
    v53 = *(v50 - 8);
    if ((*(v53 + 48))(v51, 1, v50) == 1)
    {
      (*(v73 + 8))(v64, v74);

      sub_10A2C(v51, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      sub_32ACB0(v49, 1, v52, v51);

      (*(v73 + 8))(v64, v74);
      (*(v53 + 8))(v51, v50);
    }

    return 1;
  }
}

uint64_t sub_61A76C(void *a1, uint64_t a2)
{
  v41 = a2;
  v3 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v3 - 8);
  v5 = v36 - v4;
  v6 = sub_7687B0();
  __chkstk_darwin(v6 - 8);
  v7 = sub_75A3A0();
  v39 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_759E20();
  v38 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_759E30();
  v40 = *(v13 - 8);
  *&v14 = __chkstk_darwin(v13).n128_u64[0];
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 userInfo];
  if (!v17)
  {
    goto LABEL_10;
  }

  v18 = v17;
  v37 = v5;
  v19 = sub_7690F0();

  v42 = sub_769240();
  v43 = v20;
  sub_76A6E0();
  if (!*(v19 + 16) || (v22 = sub_663E34(v44, v21), (v23 & 1) == 0))
  {

    sub_1EB60(v44);
LABEL_10:
    v45 = 0u;
    v46 = 0u;
    goto LABEL_11;
  }

  sub_132B4(*(v19 + 56) + 32 * v22, &v45);
  sub_1EB60(v44);

  if (!*(&v46 + 1))
  {
LABEL_11:
    sub_10A2C(&v45, &unk_93FBD0, &qword_77DFA0);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v25 = v44[0];
  v24 = v44[1];
  v26 = sub_769240();
  v36[1] = v25;
  if (v26 != v25 || v27 != v24)
  {
    v30 = sub_76A950();

    v28 = v37;
    if (v30)
    {
      goto LABEL_14;
    }

    return 0;
  }

  v28 = v37;
LABEL_14:
  (*(v38 + 104))(v12, enum case for ReferrerData.Kind.spotlight(_:), v10);
  sub_759E10();
  sub_75B430();
  sub_75B410();
  sub_75B3A0();

  (*(v39 + 104))(v9, enum case for NavigationTab.arcade(_:), v7);
  sub_768790();
  sub_75B6B0();
  swift_allocObject();
  v31 = sub_75B690();
  v32 = sub_BD88(&unk_93F630, &unk_77E230);
  v33 = v41;
  sub_768860();
  v34 = v28;
  v35 = *(v32 - 8);
  if ((*(v35 + 48))(v34, 1, v32) == 1)
  {
    (*(v40 + 8))(v16, v13);

    sub_10A2C(v34, &unk_93F980, &qword_77EDA0);
  }

  else
  {
    sub_32ACB0(v31, 1, v33, v34);

    (*(v40 + 8))(v16, v13);
    (*(v35 + 8))(v34, v32);
  }

  return 1;
}

double *sub_61AD24(uint64_t a1, uint64_t a2)
{
  v2 = sub_61AFE0(a1, a2);
  if (v2)
  {
    v3 = v2;
    sub_769440();
    if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_7694C0();
    }

    sub_769500();
  }

  return _swiftEmptyArrayStorage;
}

double sub_61ADC8@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a3;
  v8 = sub_75C840();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  type metadata accessor for SeparatorSupplementaryView(0);
  if (sub_769BE0())
  {

    v11 = sub_769BD0();
    v19[1] = v12;
    v19[2] = v11;
    v13 = swift_allocObject();
    v19[0] = a4;
    v14 = v13;
    swift_weakInit();
    (*(v9 + 16))(v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v8);
    v15 = *(v9 + 80);
    v20 = a1;
    v16 = (v15 + 24) & ~v15;
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    (*(v9 + 32))(v17 + v16, v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    *(v17 + ((v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v19[0];
    *(a5 + 24) = sub_BD88(&qword_94C620, &qword_7A9A10);
    *(a5 + 32) = sub_27FE44();
    sub_B1B4(a5);

    sub_763760();
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

id sub_61AFE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_7656C0();
  v83 = *(v4 - 8);
  v84 = v4;
  __chkstk_darwin(v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_75D3C0();
  v8 = *(v7 - 8);
  v86 = v7;
  v87 = v8;
  __chkstk_darwin(v7);
  v85 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v77 - v11;
  __chkstk_darwin(v13);
  v15 = &v77 - v14;
  v16 = sub_BD88(&qword_94C610, &qword_78FAA8);
  __chkstk_darwin(v16 - 8);
  v18 = &v77 - v17;
  v19 = sub_75D400();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_61B9D4(v18);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_61C33C(v18);
    return 0;
  }

  (*(v20 + 32))(v22, v18, v19);
  if (((*(*v2 + 128))(a1) & 1) == 0)
  {
    (*(v20 + 8))(v22, v19);
    return 0;
  }

  v82 = v22;
  sub_75D3E0();
  v80 = *(v87 + 88);
  v23 = v80(v15, v86);
  v78 = enum case for ComponentSeparator.Position.bottom(_:);
  v79 = enum case for ComponentSeparator.Position.top(_:);
  if (v23 == enum case for ComponentSeparator.Position.top(_:) || (v24 = v23, v23 == enum case for ComponentSeparator.Position.bottom(_:)))
  {
    v39 = objc_opt_self();
    v40 = [v39 fractionalWidthDimension:1.0];
    swift_getKeyPath();
    sub_75C7B0();

    v41 = v88;
    sub_75D3F0();
    v43 = v42;

    v44 = [v39 absoluteDimension:v43];
    v45 = [objc_opt_self() sizeWithWidthDimension:v40 heightDimension:v44];

    v46 = v45;
  }

  else
  {
    v25 = enum case for ComponentSeparator.Position.leading(_:);
    v26 = objc_opt_self();
    v27 = v26;
    if (v24 != v25 && v24 != enum case for ComponentSeparator.Position.trailing(_:))
    {
      v81 = [v26 fractionalWidthDimension:1.0];
      swift_getKeyPath();
      sub_75C7B0();

      v28 = v88;
      sub_75D3F0();
      v30 = v29;

      v31 = [v27 absoluteDimension:v30];
      v32 = objc_opt_self();
      v33 = v81;
      v34 = [v32 sizeWithWidthDimension:v81 heightDimension:v31];

      v35 = *(v87 + 8);
      v81 = v34;
      v36 = v15;
      v37 = v86;
      v35(v36, v86);
      goto LABEL_14;
    }

    swift_getKeyPath();
    sub_75C7B0();

    v47 = v88;
    sub_75D3F0();
    v49 = v48;

    v50 = [v27 absoluteDimension:v49];
    v51 = [v27 fractionalHeightDimension:1.0];
    v52 = [objc_opt_self() sizeWithWidthDimension:v50 heightDimension:v51];

    v46 = v52;
  }

  v81 = v46;
  v37 = v86;
LABEL_14:
  v53 = v82;
  sub_75D3E0();
  v54 = v80(v12, v37);
  if (v54 == v79)
  {
    swift_getKeyPath();
    sub_75C7B0();

    sub_765570();
    v56 = v55;
    (*(v83 + 8))(v6, v84);
    v57 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v56 * -0.5}];
  }

  else if (v54 == v78)
  {
    swift_getKeyPath();
    sub_75C7B0();

    sub_765570();
    v59 = v58;
    (*(v83 + 8))(v6, v84);
    v57 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, v59 * 0.5}];
  }

  else
  {
    if (v54 != enum case for ComponentSeparator.Position.leading(_:))
    {
      v68 = enum case for ComponentSeparator.Position.trailing(_:);
      v69 = v54;
      swift_getKeyPath();
      sub_75C7B0();

      v70 = (v83 + 8);
      if (v69 == v68)
      {
        sub_7655F0();
        v72 = v71;
        (*v70)(v6, v84);
        v62 = [objc_opt_self() layoutAnchorWithEdges:8 absoluteOffset:{v72 * 0.5, 0.0}];
        v37 = v86;
      }

      else
      {
        sub_765570();
        v74 = v73;
        (*v70)(v6, v84);
        v75 = [objc_opt_self() layoutAnchorWithEdges:1 absoluteOffset:{0.0, v74 * -0.5}];
        v76 = *(v87 + 8);
        v62 = v75;
        v37 = v86;
        v76(v12, v86);
      }

      v53 = v82;
      goto LABEL_21;
    }

    swift_getKeyPath();
    sub_75C7B0();

    sub_7655F0();
    v61 = v60;
    (*(v83 + 8))(v6, v84);
    v57 = [objc_opt_self() layoutAnchorWithEdges:2 absoluteOffset:{v61 * -0.5, 0.0}];
  }

  v62 = v57;
LABEL_21:
  type metadata accessor for SeparatorSupplementaryView(0);
  v63 = v85;
  sub_75D3E0();
  v88 = 0;
  v89 = 0xE000000000000000;
  sub_76A7F0();
  v90._countAndFlagsBits = 95;
  v90._object = 0xE100000000000000;
  sub_769370(v90);
  v91._countAndFlagsBits = sub_769BF0();
  sub_769370(v91);

  (*(v87 + 8))(v63, v37);
  v64 = sub_769210();

  v65 = objc_opt_self();
  v66 = v81;
  v67 = [v65 supplementaryItemWithLayoutSize:v81 elementKind:v64 containerAnchor:v62];

  (*(v20 + 8))(v53, v19);
  return v67;
}

uint64_t sub_61B9D4@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_BD88(&qword_94C610, &qword_78FAA8);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_B170((v3 + 16), *(v3 + 40));
  if (sub_763770() && swift_conformsToProtocol2())
  {
    sub_763CE0();
    v8 = sub_75D400();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(a3, v7, v8);
      return (*(v9 + 56))(a3, 0, 1, v8);
    }

    sub_61C33C(v7);
  }

  v10 = sub_75D400();
  return (*(*(v10 - 8) + 56))(a3, 1, 1, v10);
}

uint64_t sub_61BBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_BD88(&qword_94C610, &qword_78FAA8);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  v11 = sub_75D400();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v22 - v16;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_134D8(result + 16, v22);

    sub_B170(v22, v22[3]);
    v19 = sub_763770();
    result = sub_BEB8(v22);
    if (v19)
    {
      result = swift_conformsToProtocol2();
      if (result)
      {
        sub_763CE0();
        if ((*(v12 + 48))(v10, 1, v11) == 1)
        {
          return sub_61C33C(v10);
        }

        else
        {
          (*(v12 + 32))(v17, v10, v11);
          (*(v12 + 16))(v14, v17, v11);
          v20 = OBJC_IVAR____TtC18ASMessagesProvider26SeparatorSupplementaryView_separator;
          swift_beginAccess();
          (*(v12 + 24))(a1 + v20, v14, v11);
          swift_endAccess();
          sub_31D6C4();
          v21 = *(v12 + 8);
          v21(v14, v11);
          return (v21)(v17, v11);
        }
      }
    }
  }

  return result;
}

uint64_t sub_61BEA4()
{
  v0 = sub_7656C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_94F1F0, &qword_782290);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  v10 = *(v5 + 8);
  v34 = v5 + 8;
  v35 = v10;
  v10(v9, v4);
  v11 = *(v36 + 16);

  v33 = sub_75C7F0();
  swift_getKeyPath();
  sub_75C7B0();

  sub_765550();
  v13 = v12;
  v14 = v12;
  v15 = *(v1 + 8);
  v31 = v0;
  result = v15(v3, v0);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v13 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v13 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!v13)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v17 = v11 % v13;
  if (!v17)
  {
    swift_getKeyPath();
    sub_75C7B0();

    sub_765550();
    v19 = v18;
    v20 = v18;
    result = v15(v3, v31);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (v19 <= -9.22337204e18)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (v19 >= 9.22337204e18)
    {
LABEL_34:
      __break(1u);
      return result;
    }

    v17 = v19;
  }

  v21 = __OFSUB__(v11, v17);
  v22 = v11 - v17;
  if (v21)
  {
    goto LABEL_29;
  }

  v23 = v22 - 1;
  if (__OFSUB__(v22, 1))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  v24 = v35;
  v35(v9, v4);
  v25 = v36;
  result = sub_75C7F0();
  if (v25 != 1)
  {
    v29 = v23 < result;
LABEL_19:
    v28 = v33;
    goto LABEL_20;
  }

  v26 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_31;
  }

  swift_getKeyPath();
  v27 = v32;
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  v24(v27, v4);
  if (v36 == -1)
  {
    v29 = 1;
    goto LABEL_19;
  }

  v28 = v33;
  if (v36)
  {
    v29 = v26 % v36 == 0;
  }

  else
  {
    v29 = v26 == 0;
  }

LABEL_20:
  if (v11 <= 1)
  {
    v30 = 1;
  }

  else
  {
    v30 = v11;
  }

  return v28 != v30 - 1 && !v29;
}

uint64_t sub_61C33C(uint64_t a1)
{
  v2 = sub_BD88(&qword_94C610, &qword_78FAA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_61C3A8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_61C3E0()
{
  v1 = sub_75C840();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_61C4B8(__n128 a1)
{
  v2 = sub_7573C0();
  v67 = *(v2 - 8);
  v68 = v2;
  __chkstk_darwin(v2);
  v73 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7572E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_BD88(&unk_93F5C0, &unk_77C600);
  v70 = swift_allocObject();
  v66 = xmmword_77B6C0;
  *(v70 + 16) = xmmword_77B6C0;
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  type metadata accessor for NavigationActionDebugSetting();
  v9 = swift_allocObject();
  v9[7] = 0xD000000000000011;
  v9[8] = 0x80000000007EE2C0;
  v9[10] = 0;
  v9[11] = 0;
  v9[9] = sub_61CC90;
  v9[12] = sub_61D380;
  v9[13] = v8;
  v10 = v1;

  sub_7572D0();
  v11 = sub_7572B0();
  v13 = v12;
  v14 = *(v5 + 8);
  v14(v7, v4);
  v69 = v14;
  v74 = v11;
  v75 = v13;
  sub_76A6E0();

  v15 = v70;
  *(v70 + 32) = v9;
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  v17 = swift_allocObject();
  v17[7] = 0xD00000000000001ALL;
  v17[8] = 0x80000000007EE2E0;
  v17[10] = 0;
  v17[11] = 0;
  v17[9] = 0;
  v17[12] = sub_61D388;
  v17[13] = v16;
  v18 = v10;

  sub_7572D0();
  v19 = sub_7572B0();
  v21 = v20;
  v14(v7, v4);
  v74 = v19;
  v75 = v21;
  sub_76A6E0();

  *(v15 + 40) = v17;
  sub_757390();
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_794070;
  v22 = sub_7572F0();
  v24 = v23;
  v72 = type metadata accessor for InfoDebugSetting();
  v25 = swift_allocObject();
  v25[7] = 0x696669746E656449;
  v25[8] = 0xEA00000000007265;
  v25[9] = v22;
  v25[10] = v24;

  sub_7572D0();
  v26 = sub_7572B0();
  v28 = v27;
  v29 = v69;
  v69(v7, v4);
  v74 = v26;
  v75 = v28;
  sub_76A6E0();

  v30 = v65;
  *(v65 + 32) = v25;
  v31 = swift_allocObject();
  *(v31 + 56) = 0xD000000000000013;
  *(v31 + 64) = 0x80000000007EE300;
  *(v31 + 72) = xmmword_7AA200;
  sub_7572D0();
  v32 = sub_7572B0();
  v34 = v33;
  v29(v7, v4);
  v74 = v32;
  v75 = v34;
  sub_76A6E0();
  v30[5] = v31;
  sub_757340();
  v35 = sub_7695F0();
  v37 = v36;
  v38 = swift_allocObject();
  v38[7] = 0xD000000000000014;
  v38[8] = 0x80000000007EE320;
  v38[9] = v35;
  v38[10] = v37;

  sub_7572D0();
  v39 = sub_7572B0();
  v41 = v40;
  v29(v7, v4);
  v74 = v39;
  v75 = v41;
  sub_76A6E0();

  v30[6] = v38;
  v42 = sub_757320();
  if (v42)
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (v42)
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  v45 = swift_allocObject();
  v45[7] = 0xD000000000000014;
  v45[8] = 0x80000000007EE340;
  v45[9] = v43;
  v45[10] = v44;

  sub_7572D0();
  v46 = sub_7572B0();
  v48 = v47;
  v49 = v69;
  v69(v7, v4);
  v74 = v46;
  v75 = v48;
  sub_76A6E0();

  v30[7] = v45;
  type metadata accessor for BoolUserDefaultsDebugSetting();
  v50 = swift_allocObject();
  *(v50 + 56) = 0xD000000000000012;
  *(v50 + 64) = 0x80000000007EE360;
  *(v50 + 72) = 0;
  *(v50 + 80) = 0xD00000000000001DLL;
  *(v50 + 88) = 0x80000000007EE380;
  *(v50 + 96) = 0;
  sub_7572D0();
  v51 = sub_7572B0();
  v53 = v52;
  v49(v7, v4);
  v74 = v51;
  v75 = v53;
  sub_76A6E0();
  v30[8] = v50;
  v54 = swift_allocObject();
  *(v54 + 16) = v66;
  type metadata accessor for DebugSection();
  v55 = swift_allocObject();
  sub_7572D0();
  v56 = sub_7572B0();
  v58 = v57;
  v49(v7, v4);
  v55[2] = v56;
  v55[3] = v58;
  v55[4] = 0x6F726665726F7453;
  v55[5] = 0xEA0000000000746ELL;
  v55[6] = v70;
  *(v54 + 32) = v55;
  v59 = swift_allocObject();
  sub_7572D0();
  v60 = sub_7572B0();
  v62 = v61;
  v49(v7, v4);
  v59[2] = v60;
  v59[3] = v62;
  v59[4] = 0x656C61636F4CLL;
  v59[5] = 0xE600000000000000;
  v59[6] = v30;
  *(v54 + 40) = v59;
  (*(v67 + 8))(v73, v68);
  return v54;
}

uint64_t sub_61CCBC(uint64_t a1, __n128 a2)
{
  v3 = sub_758B40();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v39 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_75F340();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_760280();
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7687B0();
  __chkstk_darwin(v8 - 8);
  v9 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v9 - 8);
  v11 = v30 - v10;
  v12 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v12 - 8);
  v14 = v30 - v13;
  v15 = sub_765490();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v19 - 8);
  v21 = v30 - v20;
  v22 = sub_BD88(&unk_93F630, &unk_77E230);
  v40 = a1;
  sub_768860();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    return sub_268C8(v21);
  }

  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v25 = *(v16 + 104);
  v30[1] = v18;
  v25(v18, enum case for FlowPage.debugStorefrontPicker(_:), v15);
  v26 = sub_7570A0();
  v27 = *(*(v26 - 8) + 56);
  v30[0] = v14;
  v27(v14, 1, 1, v26);
  v28 = sub_759E30();
  (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
  v41 = 0u;
  v42 = 0u;
  sub_768790();
  (*(v31 + 104))(v32, enum case for FlowPresentationContext.infer(_:), v33);
  (*(v35 + 104))(v34, enum case for FlowAnimationBehavior.infer(_:), v36);
  (*(v37 + 104))(v39, enum case for FlowOrigin.inapp(_:), v38);
  sub_768CE0();
  sub_758B20();
  swift_allocObject();
  v29 = sub_758AD0();
  sub_32AC14(v29, 1, v40, v21);

  return (*(v23 + 8))(v21, v22);
}

void sub_61D290()
{
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 simulateStorefrontChange];
}

id sub_61D2F0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StorefrontSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_61D348()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_61D394(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineCompositingFilter;
  swift_beginAccess();
  sub_61E0AC(a1, v1 + v3);
  swift_endAccess();
  v4 = [*(v1 + OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineView) layer];
  sub_38EE0(v1 + v3, v13);
  v5 = v14;
  if (v14)
  {
    v6 = sub_B170(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_76A930();
    (*(v7 + 8))(v10, v5);
    sub_BEB8(v13);
  }

  else
  {
    v11 = 0;
  }

  [v4 setCompositingFilter:v11];

  swift_unknownObjectRelease();
  return sub_BDD0(a1);
}

uint64_t sub_61D53C()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_7674E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_767510();
  sub_161DC(v8, qword_9A0518);
  sub_BE38(v8, qword_9A0518);
  (*(v5 + 104))(v7, enum case for Separator.Position.bottom(_:), v4);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v13[3] = sub_766CA0();
  v13[4] = &protocol witness table for StaticDimension;
  sub_B1B4(v13);
  v12[3] = v0;
  v12[4] = &protocol witness table for FontSource;
  v9 = sub_B1B4(v12);
  (*(v1 + 16))(v9, v3, v0);
  v10 = UIFontTextStyleBody;
  sub_766CB0();
  (*(v1 + 8))(v3, v0);
  return sub_7674F0();
}

char *sub_61D784(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_7674E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor;
  sub_396E8();
  *&v4[v14] = sub_769FB0();
  v15 = &v4[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineCompositingFilter];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  (*(v11 + 104))(v13, enum case for Separator.Position.bottom(_:), v10);
  v22[3] = sub_766970();
  v22[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v22);
  sub_766960();
  sub_7674F0();
  v16 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineView] = v16;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  [v17 setUserInteractionEnabled:0];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v17 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v18 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineView;
  [*&v17[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineView] setBackgroundColor:*&v17[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor]];
  [v17 addSubview:*&v17[v18]];

  return v17;
}

id sub_61DC8C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v1;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "layoutSubviews", v5);
  sub_75D650();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = [v1 traitCollection];
  sub_767500();
  v18 = v17;

  swift_beginAccess();
  sub_7674A0();
  swift_endAccess();
  v19 = v27;
  sub_B170(v26, v27);
  sub_33964(v19);
  sub_766700();
  v21 = v20;
  (*(v4 + 8))(v7, v3);
  sub_BEB8(v26);
  v22 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineView];
  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  MinX = CGRectGetMinX(v29);
  v30.origin.x = v9;
  v30.origin.y = v11;
  v30.size.width = v13;
  v30.size.height = v15;
  v24 = v21 + CGRectGetMinY(v30);
  v31.origin.x = v9;
  v31.origin.y = v11;
  v31.size.width = v13;
  v31.size.height = v15;
  return [v22 setFrame:{MinX, v24, CGRectGetWidth(v31), v18}];
}

uint64_t type metadata accessor for SeparatorView(uint64_t a1)
{
  result = qword_95F130;
  if (!qword_95F130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_61E000(uint64_t a1)
{
  result = sub_767510();
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

uint64_t sub_61E0AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FBD0, &qword_77DFA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_61E11C()
{
  v1 = sub_7674E0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineColor;
  sub_396E8();
  *(v0 + v5) = sub_769FB0();
  v6 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider13SeparatorView_lineCompositingFilter);
  *v6 = 0u;
  v6[1] = 0u;
  (*(v2 + 104))(v4, enum case for Separator.Position.bottom(_:), v1);
  v8[3] = sub_766970();
  v8[4] = &protocol witness table for ZeroDimension;
  sub_B1B4(v8);
  sub_766960();
  sub_7674F0();
  sub_76A840();
  __break(1u);
}

uint64_t sub_61E2D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  (*(a2 + 8))(v8, a1);
  v4 = v9;
  v5 = v10;
  sub_B170(v8, v9);
  v6 = a3(v4, v5);
  sub_BEB8(v8);
  return v6;
}

void sub_61E34C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v3 = sub_7687C0();
  v19 = *(v3 - 8);
  v20 = v3;
  __chkstk_darwin(v3);
  v18 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 24);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      sub_134D8(v8, &v23);
      v9 = v24;
      v10 = v25;
      sub_B170(&v23, v24);
      Strong = swift_unknownObjectUnownedLoadStrong();
      v12 = [Strong traitCollection];

      v13 = (*(v10 + 8))(v21, v12, v22, v9, v10);
      if (v13)
      {
        sub_10914(&v23, v26);
        sub_10914(v26, v27);
        v14 = v28;
        v15 = v29;
        sub_B170(v27, v28);
        v16 = swift_unknownObjectUnownedLoadStrong();
        (*(v15 + 16))(v21, v16, v22, v14, v15);

        sub_BEB8(v27);
        return;
      }

      ++v7;
      sub_BEB8(&v23);
      v8 += 40;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    sub_BD88(&qword_94DDC0, qword_77DE00);
    (*(v19 + 104))(v18, enum case for ActionOutcome.unsupported(_:), v20);
    sub_768F30();
  }
}

uint64_t sub_61E580()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

unint64_t sub_61E5E8()
{
  result = qword_93FD40;
  if (!qword_93FD40)
  {
    sub_758B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93FD40);
  }

  return result;
}

unint64_t sub_61E67C()
{
  result = qword_95F1F0;
  if (!qword_95F1F0)
  {
    sub_761340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95F1F0);
  }

  return result;
}

uint64_t sub_61E6D4(uint64_t a1, uint64_t a2)
{
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v4 = sub_768F90();
  type metadata accessor for EventStoreManager();
  sub_768900();
  sub_768ED0();
  v5 = v10[0];
  sub_4FD118();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v4;
  v6[5] = v5;
  v7 = sub_12EA98();
  swift_retain_n();

  v8 = v5;
  v10[3] = v7;
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = sub_769970();
  sub_768F10();

  sub_BEB8(v10);
  return v4;
}

double sub_61E83C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_7687C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    if (qword_93D2B0 != -1)
    {
      swift_once();
    }

    sub_B170(qword_958608, qword_958620);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768EA0();

    (*(v7 + 104))(v9, enum case for ActionOutcome.unsupported(_:), v6);
    sub_768F60();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v11 = sub_761330();
    if (v11)
    {
      sub_72D574(v11, 1, a3);
      sub_768F00();
    }
  }

  return result;
}

uint64_t sub_61EAD0(uint64_t a1)
{
  if (qword_93DF00 != -1)
  {
    swift_once();
  }

  v1 = sub_768FF0();
  sub_BE38(v1, qword_9A0430);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_B1B4(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_7685E0();
  sub_BDD0(v5);
  sub_768EA0();

  return sub_768F50();
}

uint64_t sub_61ECB0()
{

  return _swift_deallocObject(v0, 48, 7);
}

void sub_61ED7C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_76A920();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PlusView();
  v30.receiver = v4;
  v30.super_class = v14;
  objc_msgSendSuper2(&v30, "drawRect:", a1, a2, a3, a4);
  v15 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider8PlusView_plusColor];
  if (v15)
  {
    v16 = v15;
    v17 = UIGraphicsGetCurrentContext();
    v18 = v17;
    if (v17)
    {
      CGContextBeginPath(v17);
      v19 = v18;
      v20 = [v16 CGColor];
      CGContextSetStrokeColorWithColor(v19, v20);
    }

    v29 = v16;
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    CGRectGetMinX(v31);
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    CGRectGetMidY(v32);
    v21 = enum case for FloatingPointRoundingRule.down(_:);
    v22 = *(v11 + 104);
    v22(v13, enum case for FloatingPointRoundingRule.down(_:), v10);
    sub_769F80();
    v23 = *(v11 + 8);
    v23(v13, v10);
    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    CGRectGetMaxX(v33);
    v22(v13, v21, v10);
    sub_769F80();
    v23(v13, v10);
    if (v18)
    {
      CGContextSetLineWidth(v18, *&v5[OBJC_IVAR____TtC18ASMessagesProvider8PlusView_lineThickness]);
      v24 = v18;
      sub_769750();

      v25 = v24;
      sub_769770();
    }

    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    CGRectGetMidX(v34);
    v35.origin.x = a1;
    v35.origin.y = a2;
    v35.size.width = a3;
    v35.size.height = a4;
    CGRectGetMinY(v35);
    v22(v13, v21, v10);
    sub_769F80();
    v23(v13, v10);
    v36.origin.x = a1;
    v36.origin.y = a2;
    v36.size.width = a3;
    v36.size.height = a4;
    CGRectGetMidX(v36);
    v37.origin.x = a1;
    v37.origin.y = a2;
    v37.size.width = a3;
    v37.size.height = a4;
    CGRectGetMaxY(v37);
    v22(v13, v21, v10);
    sub_769F80();
    v23(v13, v10);
    if (v18)
    {
      CGContextSetLineWidth(v18, *&v5[OBJC_IVAR____TtC18ASMessagesProvider8PlusView_lineThickness]);
      v26 = v18;
      sub_769750();

      v27 = v26;
      sub_769770();

      CGContextStrokePath(v27);
    }
  }
}

id sub_61F220(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlusView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_61F288()
{
  v0 = sub_7664A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766CA0();
  sub_161DC(v4, qword_9A0538);
  sub_BE38(v4, qword_9A0538);
  if (qword_93D9D0 != -1)
  {
    swift_once();
  }

  v5 = sub_7666D0();
  v6 = sub_BE38(v5, qword_99F568);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_B1B4(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_766CB0();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_61F460()
{
  v1 = v0;
  v2 = sub_7664A0();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v0 traitCollection];
  v8 = sub_7699B0();

  if ((v8 & 1) != 0 && v1[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardParagraphOverlayView_isExpanded] == 1)
  {
    if (qword_93D9D0 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  if (qword_93D9D0 != -1)
  {
LABEL_7:
    swift_once();
  }

LABEL_6:
  v9 = sub_7666D0();
  v10 = sub_BE38(v9, qword_99F568);
  (*(*(v9 - 8) + 16))(v6, v10, v9);
  (*(v3 + 104))(v6, enum case for FontSource.useCase(_:), v2);
  v14[3] = v2;
  v14[4] = &protocol witness table for FontSource;
  v11 = sub_B1B4(v14);
  (*(v3 + 16))(v11, v6, v2);
  sub_766CB0();
  return (*(v3 + 8))(v6, v2);
}

char *sub_61F734(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v33 = sub_768C60();
  v10 = *(v33 - 8);
  __chkstk_darwin(v33);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_760AD0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v17 - 8);
  v19 = &v33 - v18;
  v5[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardParagraphOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardParagraphOverlayView_sizeCategory] = 7;
  if (qword_93D9D0 != -1)
  {
    swift_once();
  }

  v20 = sub_7666D0();
  v21 = sub_BE38(v20, qword_99F568);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v19, v21, v20);
  v23 = *(v22 + 56);
  v23(v19, 0, 1, v20);
  (*(v14 + 104))(v16, enum case for DirectionalTextAlignment.none(_:), v13);
  v24 = objc_allocWithZone(sub_75BB20());
  v25 = sub_75BB10();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardParagraphOverlayView_label] = v25;
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v26 = v25;
  sub_768C10();
  sub_10A2C(v36, &unk_93FBD0, &qword_77DFA0);
  sub_10A2C(v37, &unk_93FBD0, &qword_77DFA0);
  sub_769E70();

  (*(v10 + 8))(v12, v33);
  v35.receiver = v5;
  v35.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v35, "initWithFrame:", a1, a2, a3, a4);
  v28 = OBJC_IVAR____TtC18ASMessagesProvider29TodayCardParagraphOverlayView_label;
  v29 = *&v27[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardParagraphOverlayView_label];
  v23(v19, 1, 1, v20);
  v30 = v27;
  v31 = v29;
  sub_75BA40();

  [*&v27[v28] setAccessibilityIgnoresInvertColors:1];
  [v30 addSubview:*&v27[v28]];

  return v30;
}

double sub_61FBDC(double a1)
{
  v3 = sub_766CA0();
  v17 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 layoutMargins];
  v11 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardParagraphOverlayView_label];
  [v11 sizeThatFits:{a1 - v12 - v13, 1.79769313e308}];
  if (qword_93DF78 != -1)
  {
    swift_once();
  }

  sub_BE38(v3, qword_9A0538);
  sub_766470();
  sub_766700();
  v14 = *(v7 + 8);
  v14(v10, v6);
  [v11 firstBaselineFromTop];
  sub_61F460();
  sub_766470();
  sub_766700();
  v14(v10, v6);
  (*(v17 + 8))(v5, v3);
  [v11 lastBaselineFromBottom];
  return a1;
}

id sub_61FECC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_76A920();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews", v5);
  sub_75D650();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (qword_93DF78 != -1)
  {
    swift_once();
  }

  v16 = sub_766CA0();
  sub_BE38(v16, qword_9A0538);
  sub_766470();
  sub_766700();
  v18 = v17;
  (*(v4 + 8))(v7, v3);
  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardParagraphOverlayView_label];
  [v19 sizeThatFits:{v13, v15}];
  v21 = v20;
  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  MinX = CGRectGetMinX(v28);
  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  MinY = CGRectGetMinY(v29);
  [v19 firstBaselineFromTop];
  v25 = MinY + v18 - v24;
  v30.origin.x = v9;
  v30.origin.y = v11;
  v30.size.width = v13;
  v30.size.height = v15;
  return [v19 setFrame:{MinX, v25, CGRectGetWidth(v30), v21}];
}

unint64_t sub_6202F0()
{
  result = qword_95F270;
  if (!qword_95F270)
  {
    sub_7618E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95F270);
  }

  return result;
}

void sub_620348(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v6 = v5;
  v48[1] = a3;
  v8 = a5;
  v52 = sub_765920();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_BD88(&qword_9497A8, &unk_78A700);
  __chkstk_darwin(v10 - 8);
  v12 = v48 - v11;
  v13 = sub_765B10();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7618C0();
  v17 = *(v14 + 48);
  if (v17(v12, 1, v13) == 1)
  {
    (*(v14 + 16))(v16, a4, v13);
    if (v17(v12, 1, v13) != 1)
    {
      sub_10A2C(v12, &qword_9497A8, &unk_78A700);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  v18 = v5[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardParagraphOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardParagraphOverlayView_sizeCategory] = v8;
  if (v8 == 7)
  {
    if (v18 == 7)
    {
      goto LABEL_10;
    }

LABEL_9:
    [v5 setNeedsLayout];
    goto LABEL_10;
  }

  if (v18 == 7)
  {
    goto LABEL_9;
  }

  switch(v8)
  {
    case 6:
      if (v18 != 6)
      {
        goto LABEL_9;
      }

      break;
    case 5:
      if (v18 != 5)
      {
        goto LABEL_9;
      }

      break;
    case 4:
      if (v18 != 4)
      {
        goto LABEL_9;
      }

      break;
    default:
      if ((v18 - 7) > 0xFFFFFFFC || v18 != v8)
      {
        goto LABEL_9;
      }

      break;
  }

LABEL_10:
  v53 = v14;
  v54 = v13;
  v51 = v16;
  v19 = sub_765AE0();
  [v6 setBackgroundColor:v19];

  v20 = [v6 traitCollection];
  if (v8 != 4)
  {
    sub_765650();
    sub_765650();
  }

  [v20 layoutDirection];
  sub_769BB0();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v6 setLayoutMargins:{v22, v24, v26, v28}];
  sub_7618D0();
  v29 = *&v6[OBJC_IVAR____TtC18ASMessagesProvider29TodayCardParagraphOverlayView_label];
  v30 = sub_7658D0();
  v31 = [v6 traitCollection];
  v32 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v30];
  v33 = [v30 length];
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = v31;
  *(v34 + 32) = v32;
  *(v34 + 40) = 1;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_119AC;
  *(v35 + 24) = v34;
  aBlock[4] = sub_2636C;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  aBlock[3] = &unk_89A8E8;
  v36 = _Block_copy(aBlock);
  v37 = v31;
  v38 = v32;

  [v30 enumerateAttributesInRange:0 options:v33 usingBlock:{0x100000, v36}];

  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    [v29 setAttributedText:v38];

    v39 = v49;
    sub_765930();
    v40 = v50;
    v41 = v52;
    v42 = (*(v50 + 88))(v39, v52);
    if (v42 == enum case for Paragraph.Alignment.left(_:))
    {
      v43 = 0;
      v45 = v53;
      v44 = v54;
    }

    else
    {
      v45 = v53;
      v44 = v54;
      if (v42 == enum case for Paragraph.Alignment.center(_:))
      {
        v43 = 1;
      }

      else if (v42 == enum case for Paragraph.Alignment.right(_:))
      {
        v43 = 2;
      }

      else if (v42 == enum case for Paragraph.Alignment.justified(_:))
      {
        v43 = 3;
      }

      else if (v42 == enum case for Paragraph.Alignment.localized(_:))
      {
        v43 = 4;
      }

      else
      {
        (*(v40 + 8))(v39, v41);
        v43 = 0;
      }
    }

    [v29 setTextAlignment:v43];
    v46 = v51;
    v47 = sub_765AF0();
    [v29 setTextColor:v47];

    (*(v45 + 8))(v46, v44);
  }
}

uint64_t sub_620A00()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_620A58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_620A70(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v78 = a1;
  v3 = sub_BD88(&qword_940A60, &unk_7A18E0);
  __chkstk_darwin(v3 - 8);
  v82 = &v67 - v4;
  v5 = sub_765610();
  v75 = v5;
  v86 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = sub_BD88(&qword_940A68, &qword_79AB60);
  v8 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v67 - v11;
  v73 = &v67 - v11;
  __chkstk_darwin(v13);
  v15 = &v67 - v14;
  v87 = &v67 - v14;
  __chkstk_darwin(v16);
  v83 = &v67 - v17;
  sub_BD88(&qword_940A70, &unk_7A18F0);
  v18 = *(sub_765540() - 8);
  v80 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v72 = v20;
  *(v20 + 16) = xmmword_780120;
  v74 = v20 + v19;
  v89 = 0x3FF0000000000000;
  sub_62634();
  sub_7655D0();
  v21 = *(v8 + 16);
  v22 = a1;
  v23 = v88;
  v21(v15, v22, v88);
  v84 = v8 + 16;
  v24 = v81;
  v21(v12, v81, v23);
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v30 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v31 = *(v86 + 104);
  v86 += 104;
  v79 = v31;
  v77 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v31(v7, enum case for PageGrid.HorizontalMargins.absolute(_:), v5);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v89) = 0;
  sub_7655D0();
  v89 = 0;
  sub_7655D0();
  v33 = v87;
  v34 = v73;
  sub_765500();
  v89 = 0x3FF0000000000000;
  sub_7655D0();
  v35 = v78;
  v36 = v88;
  v76 = v21;
  v21(v33, v78, v88);
  v21(v34, v24, v36);
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v79(v7, v30, v75);
  LOBYTE(v89) = 0;
  sub_7655D0();
  v89 = 0;
  sub_7655D0();
  v38 = v80;
  top = UIEdgeInsetsZero.top;
  v71 = left;
  v39 = v87;
  sub_765500();
  v68 = 2 * v38;
  v89 = 0x3FF0000000000000;
  sub_7655D0();
  v40 = v35;
  v41 = v88;
  v42 = v76;
  v76(v39, v40, v88);
  v43 = v34;
  v44 = v81;
  v42(v34, v81, v41);
  v69 = vdupq_n_s64(0x4041000000000000uLL);
  v67 = v7;
  *v7 = v69;
  v45 = v75;
  v46 = v79;
  v79(v7, v77, v75);
  LOBYTE(v89) = 0;
  sub_7655D0();
  v89 = 0;
  sub_7655D0();
  v47 = v68;
  v48 = v87;
  v49 = v67;
  sub_765500();
  v68 = v47 + v80;
  v89 = 0x3FF0000000000000;
  sub_7655D0();
  v50 = v48;
  v51 = v88;
  v52 = v76;
  v76(v50, v78, v88);
  v52(v43, v44, v51);
  *v49 = v69;
  v53 = v49;
  v46(v49, v77, v45);
  sub_7697A0();
  LOBYTE(v89) = 0;
  sub_7655D0();
  v89 = 0;
  sub_7655D0();
  v54 = v87;
  v55 = v73;
  sub_765500();
  v68 = 4 * v80;
  v89 = 0x3FF0000000000000;
  sub_7655D0();
  v56 = v54;
  v57 = v88;
  v58 = v76;
  v76(v56, v78, v88);
  v58(v55, v81, v57);
  v69 = vdupq_n_s64(0x404A000000000000uLL);
  *v53 = v69;
  v59 = v75;
  v79(v53, v77, v75);
  LOBYTE(v89) = 0;
  sub_7655D0();
  v89 = 0;
  sub_7655D0();
  v60 = v68;
  v61 = v87;
  v62 = v73;
  sub_765500();
  v80 += v60;
  v89 = 0x3FF0000000000000;
  sub_7655D0();
  v63 = v61;
  v64 = v88;
  v65 = v76;
  v76(v63, v78, v88);
  v65(v62, v81, v64);
  *v53 = v69;
  v79(v53, v77, v59);
  LOBYTE(v89) = 0;
  sub_7655D0();
  v89 = 0;
  sub_7655D0();
  sub_765500();
  return v72;
}

double sub_621514()
{
  [v0 bounds];
  Width = CGRectGetWidth(v21);
  [v0 bounds];
  Height = CGRectGetHeight(v22);
  if (Height < Width)
  {
    Width = Height;
  }

  [v0 bounds];
  v3 = CGRectGetMidX(v23) - Width * 0.5;
  [v0 bounds];
  v4 = CGRectGetMidY(v24) - Width * 0.5;
  [v0 bounds];
  v5 = ceil(CGRectGetHeight(v25) * 0.6 * 0.5);
  [v0 bounds];
  v6 = ceil(CGRectGetHeight(v26) * 0.5) - v5;
  [v0 bounds];
  v7 = ceil(CGRectGetHeight(v27) * 0.6 * 0.5);
  [v0 bounds];
  v8 = ceil(CGRectGetHeight(v28) * 0.5) - v7;
  v29.origin.x = v3;
  v29.origin.y = v4;
  v29.size.width = Width;
  v29.size.height = Width;
  v30 = CGRectInset(v29, v6, v8);
  x = v30.origin.x;
  y = v30.origin.y;
  v11 = v30.size.width;
  v12 = v30.size.height;
  [v0 bounds];
  v13 = ceil(ceil(CGRectGetHeight(v31) * 0.08) * -0.5);
  [v0 bounds];
  v14 = ceil(ceil(CGRectGetHeight(v32) * 0.08) * -0.5);
  v15 = x;
  v16 = y;
  v17 = v11;
  v18 = v12;

  *&result = CGRectInset(*&v15, v13, v14);
  return result;
}

void sub_6216C4()
{
  v1 = sub_769210();
  v2 = [v0 animationForKey:v1];

  if (v2)
  {

    v3 = sub_769210();
    [v0 removeAnimationForKey:v3];
  }

  [v0 removeAllAnimations];
  v4 = sub_622924(0x676F725074697865, 0xEC00000073736572);
  v5 = sub_769210();
  [v0 addAnimation:v4 forKey:v5];
}

id sub_6217F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000 || (sub_76A950() & 1) != 0 || a1 == 0x6F72507265746E65 && a2 == 0xED00007373657267 || (sub_76A950() & 1) != 0 || a1 == 0x676F725074697865 && a2 == 0xEC00000073736572 || (sub_76A950() & 1) != 0)
  {
    return &dword_0 + 1;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = sub_769210();
  v8.receiver = ObjCClassFromMetadata;
  v8.super_class = &OBJC_METACLASS____TtC18ASMessagesProvider20InstallProgressLayer;
  v7 = objc_msgSendSuper2(&v8, "needsDisplayForKey:", v6);

  return v7;
}

id sub_621998(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x73736572676F7270 && a2 == 0xE800000000000000;
  if (v3 || (sub_76A950() & 1) != 0)
  {
    v4 = sub_769210();
    v5 = [objc_opt_self() animationWithKeyPath:v4];

    v6 = [v2 presentationLayer];
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = v6;
    v8 = sub_769210();
    v9 = [v7 valueForKey:v8];

    if (v9)
    {
      sub_76A510();
      swift_unknownObjectRelease();
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v21 = v19;
    v22 = v20;
    v11 = *(&v20 + 1);
    if (*(&v20 + 1))
    {
      v12 = sub_B170(&v21, *(&v22 + 1));
      v13 = *(*(&v20 + 1) - 8);
      v14 = __chkstk_darwin(v12);
      v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v16, v14);
      v17 = sub_76A930();
      (*(v13 + 8))(v16, v11);
      sub_BEB8(&v21);
    }

    else
    {
LABEL_13:
      v17 = 0;
    }

    [v5 setFromValue:{v17, v19, v20, v21, v22}];
    swift_unknownObjectRelease();
    [v5 setDuration:0.4];
  }

  else
  {
    v10 = sub_769210();
    v23.receiver = v2;
    v23.super_class = type metadata accessor for InstallProgressLayer();
    v5 = objc_msgSendSuper2(&v23, "actionForKey:", v10);
  }

  return v5;
}

void sub_621C9C(CGContext *a1)
{
  CGContextSetFillColorWithColor(a1, *&v1[OBJC_IVAR____TtC18ASMessagesProvider20InstallProgressLayer_stageColor]);
  [v1 bounds];
  CGContextFillRect(a1, v7);
  [v1 enterProgress];
  if (v3 > COERCE_DOUBLE(1))
  {
    sub_621ED8(a1);
  }

  [v1 progress];
  if (v4 > COERCE_DOUBLE(1))
  {
    sub_6220CC(a1);
  }

  [v1 exitProgress];
  if (v5 > COERCE_DOUBLE(1))
  {

    sub_621DDC(a1);
  }
}

void sub_621DDC(CGContext *a1)
{
  CGContextSetBlendMode(a1, kCGBlendModeClear);
  v12.origin.x = sub_621514();
  Width = CGRectGetWidth(v12);
  v13.origin.x = sub_621514();
  Height = CGRectGetHeight(v13);
  if (Height >= Width)
  {
    Height = Width;
  }

  v5 = Height * 0.5;
  [v1 exitProgress];
  v7 = v6;
  [v1 bounds];
  v8 = CGRectGetWidth(v14);
  [v1 bounds];
  v9 = CGRectGetHeight(v15);
  if (v8 > v9)
  {
    v9 = v8;
  }

  v10 = v5 - (v5 + v7 * (ceil(sqrt(v9 * 0.5 * (v9 * 0.5) + v9 * 0.5 * (v9 * 0.5))) - v5));
  v16.origin.x = sub_621514();
  v17 = CGRectInset(v16, v10, v10);
  CGContextFillEllipseInRect(a1, v17);

  CGContextSetBlendMode(a1, kCGBlendModeNormal);
}

void sub_621ED8(CGContext *a1)
{
  CGContextSetBlendMode(a1, kCGBlendModeClear);
  v22.origin.x = sub_621514();
  Width = CGRectGetWidth(v22);
  v23.origin.x = sub_621514();
  Height = CGRectGetHeight(v23);
  if (Height >= Width)
  {
    Height = Width;
  }

  v5 = Height * 0.5;
  [v1 enterProgress];
  v7 = v5 * (1.0 - v6);
  [v1 bounds];
  v8 = CGRectGetWidth(v24);
  [v1 bounds];
  v9 = CGRectGetHeight(v25);
  if (v9 < v8)
  {
    v8 = v9;
  }

  [v1 bounds];
  v10 = CGRectGetMidX(v26) - v8 * 0.5;
  [v1 bounds];
  v11 = CGRectGetMidY(v27) - v8 * 0.5;
  [v1 bounds];
  v12 = ceil(CGRectGetHeight(v28) * 0.6 * 0.5);
  [v1 bounds];
  v13 = ceil(CGRectGetHeight(v29) * 0.5) - v12;
  [v1 bounds];
  v14 = ceil(CGRectGetHeight(v30) * 0.6 * 0.5);
  [v1 bounds];
  v15 = ceil(CGRectGetHeight(v31) * 0.5) - v14;
  v32.origin.x = v10;
  v32.origin.y = v11;
  v32.size.width = v8;
  v32.size.height = v8;
  v33 = CGRectInset(v32, v13, v15);
  v34 = CGRectInset(v33, v7, v7);
  x = v34.origin.x;
  y = v34.origin.y;
  v18 = v34.size.width;
  v19 = v34.size.height;
  [v1 bounds];
  v20 = CGRectGetHeight(v35);
  CGContextSetLineWidth(a1, ceil(v20 * 0.08));
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = v18;
  v36.size.height = v19;
  CGContextStrokeEllipseInRect(a1, v36);

  CGContextSetBlendMode(a1, kCGBlendModeNormal);
}

void sub_6220CC(CGContext *a1)
{
  v2 = v1;
  v4 = sub_765BC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  CGContextSetBlendMode(a1, kCGBlendModeClear);
  [v2 bounds];
  Width = CGRectGetWidth(v34);
  [v2 bounds];
  Height = CGRectGetHeight(v35);
  if (Height < Width)
  {
    Width = Height;
  }

  [v2 bounds];
  v10 = CGRectGetMidX(v36) - Width * 0.5;
  [v2 bounds];
  v11 = CGRectGetMidY(v37) - Width * 0.5;
  [v2 bounds];
  v12 = ceil(CGRectGetHeight(v38) * 0.6 * 0.5);
  [v2 bounds];
  v13 = ceil(CGRectGetHeight(v39) * 0.5) - v12;
  [v2 bounds];
  v14 = ceil(CGRectGetHeight(v40) * 0.6 * 0.5);
  [v2 bounds];
  v15 = ceil(CGRectGetHeight(v41) * 0.5) - v14;
  v42.origin.x = v10;
  v42.origin.y = v11;
  v42.size.width = Width;
  v42.size.height = Width;
  v43 = CGRectInset(v42, v13, v15);
  CGRectGetMidX(v43);
  [v2 bounds];
  ceil(CGRectGetHeight(v44) * 0.6 * 0.5);
  [v2 bounds];
  ceil(CGRectGetHeight(v45) * 0.5);
  [v2 bounds];
  v16 = CGRectGetWidth(v46);
  [v2 bounds];
  v17 = CGRectGetHeight(v47);
  if (v17 < v16)
  {
    v16 = v17;
  }

  [v2 bounds];
  v18 = CGRectGetMidX(v48) - v16 * 0.5;
  [v2 bounds];
  v19 = CGRectGetMidY(v49) - v16 * 0.5;
  [v2 bounds];
  v20 = ceil(CGRectGetHeight(v50) * 0.6 * 0.5);
  [v2 bounds];
  v21 = ceil(CGRectGetHeight(v51) * 0.5) - v20;
  [v2 bounds];
  v22 = ceil(CGRectGetHeight(v52) * 0.6 * 0.5);
  [v2 bounds];
  v23 = ceil(CGRectGetHeight(v53) * 0.5) - v22;
  v54.origin.x = v18;
  v54.origin.y = v19;
  v54.size.width = v16;
  v54.size.height = v16;
  v55 = CGRectInset(v54, v21, v23);
  CGRectGetMidY(v55);
  [v2 bounds];
  ceil(CGRectGetHeight(v56) * 0.6 * 0.5);
  [v2 bounds];
  CGRectGetHeight(v57);
  [v2 bounds];
  ceil(CGRectGetHeight(v58) * 0.6 * 0.5);
  [v2 bounds];
  ceil(CGRectGetHeight(v59) * 0.5);
  [v2 bounds];
  v24 = CGRectGetWidth(v60);
  [v2 bounds];
  v25 = CGRectGetHeight(v61);
  if (v25 >= v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  [v2 bounds];
  v27 = CGRectGetMidX(v62) - v26 * 0.5;
  [v2 bounds];
  v28 = CGRectGetMidY(v63) - v26 * 0.5;
  [v2 bounds];
  v29 = ceil(CGRectGetHeight(v64) * 0.6 * 0.5);
  [v2 bounds];
  v30 = ceil(CGRectGetHeight(v65) * 0.5) - v29;
  [v2 bounds];
  v31 = ceil(CGRectGetHeight(v66) * 0.6 * 0.5);
  [v2 bounds];
  v32 = ceil(CGRectGetHeight(v67) * 0.5) - v31;
  v68.origin.x = v27;
  v68.origin.y = v28;
  v68.size.width = v26;
  v68.size.height = v26;
  v69 = CGRectInset(v68, v30, v32);
  CGRectGetMidY(v69);
  [v2 progress];
  sub_769750();
  sub_769760();
  CGContextClosePath(a1);
  (*(v5 + 104))(v7, enum case for CGPathFillRule.winding(_:), v4);
  sub_769780();
  (*(v5 + 8))(v7, v4);
  CGContextSetBlendMode(a1, kCGBlendModeNormal);
}

id sub_622794(void *a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider20InstallProgressLayer_stageColor;
  v4 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.65];
  v5 = [v4 CGColor];

  *&v1[v3] = v5;
  *&v1[OBJC_IVAR____TtC18ASMessagesProvider20InstallProgressLayer_originAngle] = 0x4012D97C7F3321D2;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for InstallProgressLayer();
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);

  if (v6)
  {
  }

  return v6;
}

id sub_622898(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for InstallProgressLayer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_622924(uint64_t a1, uint64_t a2)
{
  v2 = sub_769210();
  v3 = [objc_opt_self() animationWithKeyPath:v2];

  isa = sub_769670().super.super.isa;
  [v3 setFromValue:isa];

  v5 = sub_7695E0().super.super.isa;
  [v3 setToValue:v5];

  v6 = v3;
  [v6 setDuration:0.3];
  [v6 setFillMode:kCAFillModeForwards];
  [v6 setRemovedOnCompletion:0];

  return v6;
}

double sub_622A60()
{
  v0 = sub_75E670();
  __chkstk_darwin(v0 - 8);
  v2 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_75E690();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7656C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  (*(v8 + 8))(v10, v7);
  v11 = sub_527DE4();
  sub_6443F4(v11, v2);
  swift_getObjectType();
  v12 = swift_unknownObjectRetain();
  sub_6456A8(v12);
  swift_unknownObjectRelease();
  v13 = sub_7670D0();
  swift_allocObject();
  v14 = sub_7670B0();
  v19[10] = v13;
  v19[11] = &protocol witness table for LayoutViewPlaceholder;
  v19[7] = v14;
  swift_allocObject();
  v15 = sub_7670B0();
  v19[5] = v13;
  v19[6] = &protocol witness table for LayoutViewPlaceholder;
  v19[2] = v15;
  sub_75E680();
  swift_getKeyPath();
  sub_75C7B0();

  sub_622DB0(&qword_95CFA0, &type metadata accessor for SmallBreakoutLayout, &protocol conformance descriptor for SmallBreakoutLayout);
  sub_7665A0();
  v17 = v16;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v6, v3);
  return v17;
}

uint64_t sub_622DB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_622DF8(void *a1)
{
  v2 = v1;
  v4 = sub_764590();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = [a1 tabBarController];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 tabBar];

      [v11 frame];
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v19 = v18;

      v31.origin.x = v13;
      v31.origin.y = v15;
      v31.size.width = v17;
      v31.size.height = v19;
      Height = CGRectGetHeight(v31);
    }

    else
    {
      Height = 0.0;
    }

    result = [a1 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v24 = result;
    [result bounds];
    v26 = v25;
    v22 = v27;

    v21 = v26;
  }

  else
  {
    v21 = 0;
    v22 = 0.0;
    Height = 0.0;
  }

  if (v22 - *&v2[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_reflectionOutset] - Height < 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = v22 - *&v2[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_reflectionOutset] - Height;
  }

  v29 = [v2 traitCollection];
  sub_7645B0();
  sub_6260C4(v29, v8, v2[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_wantsBackgroundExtension], v21, *&v28, 0);

  return (*(v5 + 8))(v8, v4);
}

double sub_623034(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView];
  v6 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel;
  v7 = [*(v5 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel) text];
  if (v7)
  {
    v9 = v7;
    v10 = sub_769240();
    v12 = v11;

    if (!a2)
    {
      if (!v12)
      {
        return result;
      }

      v15 = *(v5 + v6);
      v16 = 0;
      goto LABEL_14;
    }

    if (v12)
    {
      if (v10 == a1 && v12 == a2)
      {

LABEL_20:

        return result;
      }

      v14 = sub_76A950();

      if (v14)
      {
        goto LABEL_20;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  v15 = *(v5 + v6);
  v16 = sub_769210();

LABEL_14:
  [v15 setText:v16];

  [v2 invalidateIntrinsicContentSize];
  v17 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver];
  if (v17)
  {
    v18 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver + 8];

    v17(v19);

    sub_F704(v17, v18);
  }

  return result;
}

void sub_6231FC(void *a1)
{
  v2 = v1;
  v4 = sub_764590();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7645B0();
  v8 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_reflectionOutset];
  v9 = v1[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_wantsBackgroundExtension];
  v10 = [v2 traitCollection];
  if (a1)
  {
    v11 = [a1 tabBarController];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 tabBar];

      [v13 frame];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v47.origin.x = v15;
      v47.origin.y = v17;
      v47.size.width = v19;
      v47.size.height = v21;
      Height = CGRectGetHeight(v47);
    }

    else
    {
      Height = 0.0;
    }

    v24 = [a1 view];
    if (v24)
    {
      v25 = v24;
      [v24 bounds];
      v27 = v26;
      v29 = v28;

      v30 = [a1 view];
      if (v30)
      {
        v31 = v30;
        if (v29 - v8 - Height < 0.0)
        {
          v23 = 0.0;
        }

        else
        {
          v23 = v29 - v8 - Height;
        }

        a1 = v27;
        [v30 bounds];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v48.origin.x = v33;
        v48.origin.y = v35;
        v48.size.width = v37;
        v48.size.height = v39;
        CGRectGetWidth(v48);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (0.0 - v8 < 0.0)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = 0.0 - v8;
  }

LABEL_14:
  sub_6260C4(v10, v7, v9, a1, *&v23, 0);

  (*(v5 + 8))(v7, v4);
  v40 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView];
  v41 = [*&v40[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel] text];
  if (v41)
  {
    v42 = v41;
    sub_769240();
  }

  v43 = sub_7692D0();

  if ((v43 & 1) == 0 || *&v40[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView])
  {
    [v2 frame];
    [v40 sizeThatFits:{v44, v45}];
  }
}

uint64_t sub_623554()
{
  v0 = sub_BD88(&qword_95F430, qword_7AA6C8);
  sub_161DC(v0, qword_95F378);
  sub_BE38(v0, qword_95F378);
  return sub_759370();
}

char *sub_6235D8(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v60 = a3;
  v57 = a2;
  ObjectType = swift_getObjectType();
  v58 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v58);
  v59 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_764590();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &ObjectType - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &ObjectType - v12;
  v4[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_isRubberbanding] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_reflectionOutset] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentBottomInset] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_navigationItem] = 0;
  v14 = &v4[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver];
  *v14 = 0;
  v14[1] = 0;
  sub_7645B0();
  (*(v8 + 104))(v10, enum case for Uber.Style.above(_:), v7);
  sub_626448(&qword_9424D8, 255, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
  sub_769430();
  sub_769430();
  if (v64 != v63)
  {
    v17 = sub_76A950();
    v18 = *(v8 + 8);
    v18(v10, v7);
    v18(v13, v7);

    v16 = v57;
    if ((v17 & 1) == 0 || (v57 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    v19 = 0;
    v20 = 0x404E000000000000;
    goto LABEL_8;
  }

  v15 = *(v8 + 8);
  v15(v10, v7);
  v15(v13, v7);

  v16 = v57;
  if (v57)
  {
    goto LABEL_6;
  }

LABEL_7:
  v20 = 0;
  v19 = 1;
LABEL_8:
  v21 = v60;
  v64 = v20;
  v65 = 0;
  v66 = 0;
  v67 = v19;
  v22 = type metadata accessor for MediaView();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionView] = 0;
  *&v23[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionAmount] = 0;
  v23[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_isRubberbanding] = 0;
  *&v23[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionScale] = 0x4008000000000000;
  *&v23[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_reflectionOffset] = 0x4049000000000000;
  v24 = objc_allocWithZone(type metadata accessor for UberContentContainer());
  *&v23[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer] = sub_1F8E78(&v64);
  v62.receiver = v23;
  v62.super_class = v22;
  v25 = objc_msgSendSuper2(&v62, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v25 setClipsToBounds:1];
  [v25 addSubview:*&v25[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer]];

  *&v4[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView] = v25;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_legibilityGradientView] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView] = [objc_allocWithZone(type metadata accessor for TitleHeaderView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_uber] = a1;
  v4[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_wantsBackgroundExtension] = v16 & 1;
  v61.receiver = v4;
  v61.super_class = ObjectType;

  v26 = objc_msgSendSuper2(&v61, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v26 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v27 = OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView;
  [v26 addSubview:*&v26[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView]];
  v28 = *&v26[v27];
  v29 = sub_2BB25C(v21);
  v30 = *&v28[OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer];
  v31 = *(v30 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  *(v30 + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents) = v29;
  v32 = v29;
  sub_1F92A8(v31);

  sub_1F7F5C();
  v33 = objc_opt_self();
  v34 = [v33 clearColor];
  [v26 setBackgroundColor:v34];

  v35 = OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_legibilityGradientView;
  v36 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_legibilityGradientView];
  sub_BD88(&unk_93F5C0, &unk_77C600);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_77B6C0;
  sub_BE70(0, &qword_93E540, UIColor_ptr);
  v38 = v36;
  *(v37 + 32) = sub_76A120(0.0, 0.0, 0.0, 0.4);
  *(v37 + 40) = sub_76A120(0.0, 0.0, 0.0, 0.0);
  *&v38[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v37;

  sub_4AC204();

  v39 = *&v26[v35];
  v40 = [v39 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 0.0}];

  v41 = *&v26[v35];
  v42 = [v41 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 1.0}];

  [v26 addSubview:*&v26[v35]];
  v43 = OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView;
  v44 = qword_93CDB0;
  v45 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_BE38(v58, qword_99D450);
  v47 = v59;
  sub_1226FC(v46, v59);
  (*&stru_1A8.segname[(swift_isaMask & *v45) + 16])(v47);

  v48 = *&v26[v43];
  v49 = &v48[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabelNumberOfLines];
  *v49 = sub_39ED38;
  v49[1] = 0;
  v50 = v48;

  [*&v50[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel] setNumberOfLines:2];

  [*(*&v26[v43] + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel) setAllowsDefaultTighteningForTruncation:1];
  v51 = *&v26[v43];
  v52 = [v33 clearColor];
  [v51 setBackgroundColor:v52];

  v53 = *&v26[v43];
  [v26 addSubview:v53];

  if (*(*(*&v26[v27] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents))
  {
    type metadata accessor for VideoView(0);
    v54 = swift_dynamicCastClass();
    if (v54)
    {
      *(v54 + qword_940588 + 8) = &off_89A910;
      swift_unknownObjectWeakAssign();
    }
  }

  return v26;
}

id sub_623F14()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_navigationItem];
  if (v2)
  {
    v3 = v2;
    v4 = sub_769210();
    [v3 removeObserver:v0 forKeyPath:v4 context:&unk_95F368];
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "dealloc");
}

void (*sub_624080(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView);
  a1[1] = v1;
  a1[2] = v3;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
  a1[3] = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (v5)
  {
    type metadata accessor for VideoView(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return sub_624120;
}

void sub_624120(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 16) + *(a1 + 24));
  if (a2)
  {
    if (v3)
    {
      sub_626448(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_BE70(0, &qword_93E550, UIView_ptr);
        v8 = v4;
        v9 = sub_76A1C0();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v15 = *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v3;
    v16 = v3;
    sub_1F92A8(v15);

    if (v3)
    {
      *&v16[qword_940588 + 8] = &off_89A910;
      swift_unknownObjectWeakAssign();
    }

    v17 = *a1;
    goto LABEL_17;
  }

  if (v3)
  {
    sub_626448(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v10 = v3;
    v11 = [v10 superview];
    if (v11)
    {
      v12 = v11;
      sub_BE70(0, &qword_93E550, UIView_ptr);
      v13 = v4;
      v14 = sub_76A1C0();

      if (v14)
      {
        [v10 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v18 = *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents];
  *&v4[OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents] = v3;
  v19 = v3;
  sub_1F92A8(v18);

  if (v3)
  {
    *&v19[qword_940588 + 8] = &off_89A910;
    swift_unknownObjectWeakAssign();
    v17 = v19;
LABEL_17:
  }
}

void sub_6243F4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setTarget:v0];
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 setAction:"mute"];
  }

  sub_62447C();
}

void sub_62447C()
{
  v1 = sub_759950();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v46[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_75DC30();
  v53 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_75A6B0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v46[-v13];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v49 = v8;
  v50 = v4;
  v51 = v2;
  v16 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView);
  v17 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer;
  v18 = *(*(v16 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (v18)
  {
    v52 = Strong;
    v48 = v1;
    type metadata accessor for VideoView(0);
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = *(v19 + qword_9405B0);
      if (v20)
      {
        v47 = [v20 isMuted];
        v18 = *(*(v16 + v17) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
        v21 = v9;
        if (!v18)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v47 = 1;
        v21 = v9;
      }

      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = v22;
        v24 = v18;
        v25 = sub_7625C0();
        v26 = qword_99A200;
        v27 = (v53 + 16);
        v28 = (v53 + 8);
        if (v25)
        {
          swift_beginAccess();
          (*v27)(v7, v23 + v26, v5);
          sub_75DBE0();
        }

        else
        {
          swift_beginAccess();
          (*v27)(v7, v23 + v26, v5);
          sub_75DBB0();
        }

        (*v28)(v7, v5);
        sub_75A680();
        sub_626448(&qword_9406B8, 255, &type metadata accessor for VideoControls, &protocol conformance descriptor for VideoControls);
        v30 = v49;
        v31 = sub_76A520();
        v32 = *(v21 + 8);
        v32(v11, v30);
        v32(v14, v30);
        v29 = 1;
        [v52 setHidden:(v31 & 1) == 0];
        goto LABEL_18;
      }

LABEL_15:
      v29 = 1;
      [v52 setHidden:1];
LABEL_18:
      v33 = v48;
      if (v47)
      {
        v34 = &enum case for SystemImage.speakerSlashFill(_:);
      }

      else
      {
        v29 = 0;
        v34 = &enum case for SystemImage.speakerWave3Fill(_:);
      }

      if (v29)
      {
        v35 = 0xD00000000000002CLL;
      }

      else
      {
        v35 = 0xD00000000000002ALL;
      }

      if (v29)
      {
        v36 = 0xD00000000000002BLL;
      }

      else
      {
        v36 = 0xD000000000000029;
      }

      if (v29)
      {
        v37 = "on.Unmute.LargeContentTitle";
      }

      else
      {
        v37 = "on.Mute.LargeContentTitle";
      }

      v39 = v50;
      v38 = v51;
      if (v29)
      {
        v40 = "upCollectionElementsObserver";
      }

      else
      {
        v40 = "sizeChangeObserver";
      }

      (*(v51 + 104))(v50, *v34, v48);
      v41 = v52;
      v42 = sub_759930();
      (*(v38 + 8))(v39, v33);
      [v41 setImage:v42];

      v55._object = (v40 | 0x8000000000000000);
      v55._countAndFlagsBits = v36;
      v57._countAndFlagsBits = 0;
      v57._object = 0xE000000000000000;
      sub_75B750(v55, v57);
      v43 = sub_769210();

      [v41 setTitle:v43];

      v44 = v41;
      v56._object = (v37 | 0x8000000000000000);
      v56._countAndFlagsBits = v35;
      v58._countAndFlagsBits = 0;
      v58._object = 0xE000000000000000;
      sub_75B750(v56, v58);
      v45 = sub_769210();

      [v44 setAccessibilityLabel:v45];

      return;
    }

    Strong = v52;
  }
}

void sub_624A4C(__n128 a1)
{
  v2 = sub_75FC40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75FC80();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (v10)
  {
    type metadata accessor for VideoView(0);
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v13 = *(v11 + qword_9405B0);
      if (v13)
      {
        v14 = v10;
        v15 = v13;
        [v15 setMuted:{objc_msgSend(v15, "isMuted") ^ 1}];
        v16 = [v15 isMuted];
        [v12 updateAudioSessionCategoryWithIsAudioOn:v16 ^ 1];
        (*(v7 + 104))(v9, enum case for MediaClickMetricsEvent.TargetId.mute(_:), v6);
        v17 = &enum case for MediaClickMetricsEvent.ActionType.mute(_:);
        if (!v16)
        {
          v17 = &enum case for MediaClickMetricsEvent.ActionType.unmute(_:);
        }

        (*(v3 + 104))(v5, *v17, v2);
        sub_56D2C(v9, v5);

        (*(v3 + 8))(v5, v2);
        (*(v7 + 8))(v9, v6);
      }
    }
  }
}

double sub_624D14(uint64_t a1, NSString a2, uint64_t a3, Class a4, void *a5)
{
  ObjectType = swift_getObjectType();
  if (!a2)
  {
LABEL_10:
    sub_38EE0(a3, v27);
    v18 = v28;
    if (v28)
    {
      v19 = sub_B170(v27, v28);
      v20 = *(v18 - 8);
      v21 = __chkstk_darwin(v19);
      v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23, v21);
      v24 = sub_76A930();
      (*(v20 + 8))(v23, v18);
      sub_BEB8(v27);
      if (!a4)
      {
LABEL_13:
        v26.receiver = v5;
        v26.super_class = ObjectType;
        objc_msgSendSuper2(&v26, "observeValueForKeyPath:ofObject:change:context:", a2, v24, a4, a5);

        swift_unknownObjectRelease();
        return result;
      }
    }

    else
    {
      v24 = 0;
      if (!a4)
      {
        goto LABEL_13;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_626448(&qword_93E918, 255, type metadata accessor for NSKeyValueChangeKey, &unk_77D77C);
    a4 = sub_7690E0().super.isa;
    goto LABEL_13;
  }

  if ((a1 != 0x656C746974 || a2 != 0xE500000000000000) && (sub_76A950() & 1) == 0 || a5 != &unk_95F368)
  {
    a2 = sub_769210();
    goto LABEL_10;
  }

  v12 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_navigationItem];
  if (v12 && (v12 = [v12 title]) != 0)
  {
    v13 = v12;
    v14 = sub_769240();
    v16 = v15;

    v17 = v16;
    v12 = v14;
  }

  else
  {
    v17 = 0;
  }

  return sub_623034(v12, v17);
}

uint64_t sub_625134(void *a1, id a2)
{
  if ([a2 userInterfaceIdiom] == &dword_0 + 1 && (v5 = objc_msgSend(a2, "horizontalSizeClass"), v5 != objc_msgSend(a1, "horizontalSizeClass")))
  {
    v9 = 1;
  }

  else
  {
    v6 = [*(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView) + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel) text];
    if (v6)
    {
      v7 = v6;
      sub_769240();
    }

    v8 = sub_7692D0();

    if (v8)
    {
      v9 = 0;
    }

    else
    {
      v10 = [a2 preferredContentSizeCategory];
      v11 = [a1 preferredContentSizeCategory];
      v12 = sub_769240();
      v14 = v13;
      if (v12 == sub_769240() && v14 == v15)
      {

        v9 = 0;
      }

      else
      {
        v16 = sub_76A950();

        v9 = v16 ^ 1;
      }
    }
  }

  return v9 & 1;
}

void sub_6252DC(void *a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v3 = a1;
    v4 = [v1 traitCollection];
    if ((sub_625134(v3, v4) & 1) != 0 && ([v1 invalidateIntrinsicContentSize], (v5 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver]) != 0))
    {
      v6 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver + 8];

      v5(v7);

      sub_F704(v5, v6);
    }

    else
    {
    }
  }
}

id sub_625428()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_764590();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = v51 - v9;
  v54.receiver = v1;
  v54.super_class = ObjectType;
  objc_msgSendSuper2(&v54, "layoutSubviews", v8);
  [v1 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView];
  v20 = [*&v19[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel] text];
  if (v20)
  {
    v21 = v20;
    sub_769240();
  }

  v22 = sub_7692D0();

  if ((v22 & 1) != 0 && !*&v19[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView])
  {
    v26 = 0.0;
    goto LABEL_8;
  }

  [v1 frame];
  [v19 sizeThatFits:{v23, v24}];
  v26 = v25;
  if (v25 <= 0.0)
  {
LABEL_8:
    [v19 setHidden:1];
    goto LABEL_9;
  }

  v55.origin.x = v12;
  v55.origin.y = v14;
  v55.size.width = v16;
  v55.size.height = v18;
  MinX = CGRectGetMinX(v55);
  v56.origin.x = v12;
  v56.origin.y = v14;
  v56.size.width = v16;
  v56.size.height = v18;
  v28 = CGRectGetMaxY(v56) - v26;
  v57.origin.x = v12;
  v57.origin.y = v14;
  v57.size.width = v16;
  v57.size.height = v18;
  [v19 setFrame:{MinX, v28, CGRectGetWidth(v57), v26}];
  [v19 setHidden:0];
LABEL_9:
  v58.origin.x = v12;
  v58.origin.y = v14;
  v58.size.width = v16;
  v58.size.height = v18;
  v29 = CGRectGetMinX(v58);
  v59.origin.x = v12;
  v59.origin.y = v14;
  v59.size.width = v16;
  v59.size.height = v18;
  MinY = CGRectGetMinY(v59);
  v60.origin.x = v12;
  v60.origin.y = v14;
  v60.size.width = v16;
  v60.size.height = v18;
  Width = CGRectGetWidth(v60);
  v61.origin.x = v12;
  v61.origin.y = v14;
  v61.size.width = v16;
  v61.size.height = v18;
  Height = CGRectGetHeight(v61);
  v33 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView];
  [v33 setFrame:{v29, MinY, Width, Height - v26}];
  [v33 bounds];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_7645B0();
  (*(v4 + 104))(v6, enum case for Uber.Style.above(_:), v3);
  sub_626448(&qword_9424D8, 255, &type metadata accessor for Uber.Style, &protocol conformance descriptor for Uber.Style);
  sub_769430();
  sub_769430();
  if (*&v52 == v51[0] && v53 == v51[1])
  {
    v42 = *(v4 + 8);
    v42(v6, v3);
    v42(v10, v3);
  }

  else
  {
    v43 = sub_76A950();
    v44 = *(v4 + 8);
    v44(v6, v3);
    v44(v10, v3);

    if ((v43 & 1) == 0)
    {
      return [*&v1[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_legibilityGradientView] setHidden:1];
    }
  }

  v45 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_legibilityGradientView];
  [v45 setHidden:0];
  if (qword_93DF80 != -1)
  {
    swift_once();
  }

  v46 = sub_BD88(&qword_95F430, qword_7AA6C8);
  sub_BE38(v46, qword_95F378);
  sub_759380();
  v47 = v52;
  v62.origin.x = v35;
  v62.origin.y = v37;
  v62.size.width = v39;
  v62.size.height = v41;
  v48 = CGRectGetMinX(v62);
  v63.origin.x = v35;
  v63.origin.y = v37;
  v63.size.width = v39;
  v63.size.height = v41;
  v49 = CGRectGetMinY(v63);
  v64.origin.x = v35;
  v64.origin.y = v37;
  v64.size.width = v39;
  v64.size.height = v41;
  return [v45 setFrame:{v48, v49, CGRectGetWidth(v64), v47}];
}

id sub_6259E8(uint64_t a1, CGFloat a2, CGFloat a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v11, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    v8 = *(*(*&v3[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView] + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
    if (v8)
    {
      type metadata accessor for VideoView(0);
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        LOBYTE(v8) = [v7 isDescendantOfView:v9];
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }

    [v3 bounds];
    v12.x = a2;
    v12.y = a3;
    if (!CGRectContainsPoint(v13, v12) || (swift_getObjectType(), !((swift_conformsToProtocol2() != 0) | v8 & 1)))
    {

      return 0;
    }
  }

  return v7;
}

uint64_t sub_625BEC()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView) + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents);
  if (!v1)
  {
    return 0;
  }

  type metadata accessor for VideoView(0);
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = v1;
    return v3;
  }

  return result;
}

void sub_625C5C(void *a1)
{
  v2 = a1;
  sub_1F9D9C(a1);

  if (a1)
  {
    *&v2[qword_940588 + 8] = &off_89A910;
    swift_unknownObjectWeakAssign();
  }
}

uint64_t (*sub_625D14(uint64_t **a1))()
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
  v2[4] = sub_624080(v2);
  return sub_21028;
}

uint64_t sub_625D88()
{
  ObjectType = swift_getObjectType();
  v2 = sub_626448(&qword_95F428, v1, type metadata accessor for UberHeaderView, &unk_7AA664);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_625DFC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_626448(&qword_95F428, v5, type metadata accessor for UberHeaderView, &unk_7AA664);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_625E88(uint64_t *a1))()
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

  v4 = v2;
  *a1 = v2;
  sub_626448(&qword_95F428, v3, type metadata accessor for UberHeaderView, &unk_7AA664);
  *(v4 + 32) = sub_75DC50();
  return sub_246E0;
}

uint64_t sub_625F44(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer);
  sub_BE70(0, &qword_93E550, UIView_ptr);
  v6 = v5;
  v7 = sub_76A1C0();

  return v7 & 1;
}

void sub_6260C4(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v27[1] = a4;
  v32 = a3;
  v10 = sub_766690();
  v28 = *(v10 - 8);
  v29 = v10;
  __chkstk_darwin(v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&qword_95F420, &unk_7AA6B8);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v27 - v15;
  v31 = a6;
  if (a6)
  {
    v17 = 0;
  }

  else
  {
    v17 = a5;
  }

  v30 = v17;
  v18 = sub_769A00();
  v19 = [a1 userInterfaceIdiom];
  v20 = [a1 horizontalSizeClass];
  v21 = *(v14 + 88);
  *v16 = v18 & 1;
  *(v16 + 1) = v19;
  *(v16 + 2) = v20;
  v22 = sub_764590();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&v16[v21], a2, v22);
  v24 = (*(v23 + 88))(&v16[v21], v22);
  if (v24 != enum case for Uber.Style.above(_:))
  {
    if (v24 == enum case for Uber.Style.inline(_:))
    {
      if (v20 == &dword_0 + 2 && v19 == &dword_0 + 1 && (v18 & 1) == 0 && (v31 & 1) == 0)
      {
        sub_7666A0();
        v25 = sub_7665F0();
        (*(v28 + 8))(v12, v29);
        if (v25)
        {
          v26 = [objc_opt_self() mainScreen];
          [v26 scale];
        }
      }
    }

    else
    {
      sub_10A2C(v16, &qword_95F420, &unk_7AA6B8);
    }
  }
}

uint64_t sub_626448(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_626490(void *a1, char a2)
{
  v4 = sub_BD88(&qword_95F420, &unk_7AA6B8);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v22 - v6;
  v8 = sub_764590();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = enum case for Uber.Style.above(_:);
  (*(v9 + 104))(v12, enum case for Uber.Style.above(_:), v8, v10);
  v14 = sub_769A00();
  v15 = [a1 userInterfaceIdiom];
  v16 = [a1 horizontalSizeClass];
  v17 = *(v5 + 88);
  *v7 = v14 & 1;
  *(v7 + 1) = v15;
  *(v7 + 2) = v16;
  (*(v9 + 16))(&v7[v17], v12, v8);
  v18 = (*(v9 + 88))(&v7[v17], v8);
  if (v18 == v13)
  {
    (*(v9 + 8))(v12, v8);
    if (v15 == &dword_0 + 1 && v16 == &dword_0 + 2)
    {
      v19 = (a2 & 1) == 0;
      result = 350.0;
      v21 = 410.0;
    }

    else
    {
      v19 = (a2 & 1) == 0;
      result = 200.0;
      v21 = 260.0;
    }

    if (!v19)
    {
      return v21;
    }

    return result;
  }

  if (v18 != enum case for Uber.Style.inline(_:))
  {
    (*(v9 + 8))(v12, v8);
    sub_10A2C(v7, &qword_95F420, &unk_7AA6B8);
    return 0.0;
  }

  if (v16 == &dword_0 + 1)
  {
    if (v14)
    {
      (*(v9 + 8))(v12, v8);
      return 480.0;
    }

    goto LABEL_19;
  }

  if (v16 != &dword_0 + 2 || v15 != &dword_0 + 1)
  {
LABEL_19:
    (*(v9 + 8))(v12, v8);
    return 0.0;
  }

  (*(v9 + 8))(v12, v8);
  result = 769.0;
  if ((v14 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

void sub_62678C()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_isRubberbanding) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_reflectionOutset) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentBottomInset) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_navigationItem) = 0;
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver);
  *v1 = 0;
  v1[1] = 0;
  sub_76A840();
  __break(1u);
}

void sub_626894(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = sub_BD88(&unk_955F90, qword_79E810);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17[-1] - v8;
  v10 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v10 - 8);
  v12 = &v17[-1] - v11;
  if (v4)
  {

    v4(v13);

    sub_F704(v4, v5);
  }

  else if (v3)
  {
    v14 = sub_BD88(&unk_93F630, &unk_77E230);

    sub_768860();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v12, 1, v14) == 1)
    {

      sub_268C8(v12);
    }

    else
    {
      v17[3] = sub_764C80();
      v17[4] = sub_627DFC(&qword_95AB70, &type metadata accessor for Action, &protocol conformance descriptor for Action);
      v17[0] = v3;
      (*(v7 + 104))(v9, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v6);

      sub_768980();

      (*(v7 + 8))(v9, v6);
      sub_BEB8(v17);
      (*(v15 + 8))(v12, v14);
    }
  }
}

void sub_626B70(void *a1, char *a2)
{
  v116 = a2;
  v111 = sub_759950();
  v94 = *(v111 - 1);
  __chkstk_darwin(v111);
  v93 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_758B40();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v109 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_75F340();
  v99 = *(v101 - 8);
  __chkstk_darwin(v101);
  v108 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_760280();
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v107 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7687B0();
  __chkstk_darwin(v7 - 8);
  v105 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_944FF0, &unk_783C00);
  __chkstk_darwin(v9 - 8);
  v103 = &v93 - v10;
  v11 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v11 - 8);
  v102 = &v93 - v12;
  v96 = sub_765490();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v100 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_75B9A0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v113 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v114 = &v93 - v18;
  __chkstk_darwin(v19);
  v21 = &v93 - v20;
  __chkstk_darwin(v22);
  v24 = &v93 - v23;
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v110 = sub_768F90();
  v115 = a1;
  sub_758F50();
  v112 = *(v15 + 104);
  v112(v21, enum case for AlertActionStyle.normal(_:), v14);
  sub_627DFC(&qword_95F438, &type metadata accessor for AlertActionStyle, &protocol conformance descriptor for AlertActionStyle);
  sub_769430();
  sub_769430();
  if (aBlock == v122)
  {
    v25 = 1;
  }

  else
  {
    v25 = sub_76A950();
  }

  v26 = *(v15 + 8);
  v26(v21, v14);
  v26(v24, v14);

  if ((v25 & 1) == 0)
  {
    v34 = v114;
    sub_758F50();
    v35 = v113;
    v112(v113, enum case for AlertActionStyle.toast(_:), v14);
    sub_769430();
    sub_769430();
    if (aBlock == v122)
    {
      v26(v35, v14);
      v26(v34, v14);
    }

    else
    {
      v36 = sub_76A950();
      v26(v35, v14);
      v26(v34, v14);

      if ((v36 & 1) == 0)
      {
        return;
      }
    }

    v37 = sub_764C70();
    if (v37)
    {
      v38 = v37;
      if (sub_765160())
      {
        if (sub_765190())
        {
          v39 = sub_759910();
          goto LABEL_42;
        }

        if (sub_765180())
        {
          v39 = sub_56EBA8(v38, 0);
LABEL_42:
          v74 = v39;

          if (v74)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }
      }
    }

LABEL_45:
    v75 = v94;
    v76 = v93;
    v77 = v111;
    (*(v94 + 104))(v93, enum case for SystemImage.exclamationmarkCircle(_:), v111);
    v74 = sub_759930();
    (*(v75 + 8))(v76, v77);
LABEL_46:
    v114 = v74;
    v78 = [v74 imageWithRenderingMode:2];
    sub_764C60();
    v80 = v79;
    sub_758F70();
    v82 = v81;
    sub_758F40();
    v84 = v83;
    if (v80)
    {
      v85 = v78;
      v86 = sub_769210();

      if (v82)
      {
LABEL_48:
        v87 = sub_769210();

LABEL_51:
        v89 = [objc_allocWithZone(ASToastViewController) initWithTitle:v86 message:v87 duration:v78 image:v84];

        v120 = 0;
        aBlock = 0u;
        v119 = 0u;
        (*(v95 + 104))(v100, enum case for FlowPage.viewController(_:), v96);
        v90 = sub_7570A0();
        (*(*(v90 - 8) + 56))(v102, 1, 1, v90);
        v91 = sub_759E30();
        (*(*(v91 - 8) + 56))(v103, 1, 1, v91);
        v123 = sub_BE70(0, &unk_95F440, &off_872878);
        *&v122 = v89;
        v115 = v89;
        sub_768790();
        (*(v99 + 104))(v108, enum case for FlowAnimationBehavior.never(_:), v101);
        (*(v97 + 104))(v107, enum case for FlowPresentationContext.infer(_:), v98);
        (*(v104 + 104))(v109, enum case for FlowOrigin.inapp(_:), v106);
        sub_768CE0();
        sub_758B20();
        swift_allocObject();
        v92 = sub_758AD0();
        sub_72D7A8(v92, 1, v116);
        sub_768F00();

        return;
      }
    }

    else
    {
      v88 = v78;
      v86 = 0;
      if (v82)
      {
        goto LABEL_48;
      }
    }

    v87 = 0;
    goto LABEL_51;
  }

  sub_764C60();
  v28 = v27;
  sub_758F70();
  v30 = v29;
  if (v28)
  {
    v31 = sub_769210();

    v32 = v116;
    if (v30)
    {
LABEL_7:
      v33 = sub_769210();

      goto LABEL_17;
    }
  }

  else
  {
    v31 = 0;
    v32 = v116;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  v33 = 0;
LABEL_17:
  v40 = [objc_opt_self() alertControllerWithTitle:v31 message:v33 preferredStyle:1];

  v41 = sub_758F30();
  if ((sub_758F20() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (!*(v41 + 16))
  {
    v43._countAndFlagsBits = 0x4F2E6E6F69746341;
    v43._object = 0xE90000000000004BLL;
    goto LABEL_22;
  }

  sub_758F10();
  if (!v42)
  {
    v43._countAndFlagsBits = 0x432E6E6F69746341;
    v43._object = 0xED00006C65636E61;
LABEL_22:
    v124._countAndFlagsBits = 0;
    v124._object = 0xE000000000000000;
    sub_75B750(v43, v124);
  }

  v44 = sub_769210();

  v45 = [objc_opt_self() actionWithTitle:v44 style:1 handler:0];

  [v40 addAction:v45];
  [v40 setPreferredAction:v45];

LABEL_24:
  v114 = *(v41 + 16);
  if (v114)
  {
    v46 = 0;
    v111 = &v119;
    v47 = (v41 + 64);
    v112 = v41;
    v113 = v40;
    while (v46 < *(v41 + 16))
    {
      v51 = *(v47 - 4);
      v52 = *(v47 - 3);
      v54 = *(v47 - 2);
      v53 = *(v47 - 1);
      v55 = *v47;
      if (v53)
      {
        v56 = swift_allocObject();
        *(v56 + 16) = v53;
        *(v56 + 24) = v55;
        v57 = sub_46344;
      }

      else
      {
        v57 = 0;
        v56 = 0;
      }

      sub_F714(v53, v55);
      v58 = v46 != sub_758F00();
      if ((v59 | v58))
      {
        v60 = 0;
      }

      else
      {
        v60 = 2;
      }

      v61 = swift_allocObject();
      v61[2] = v51;
      v61[3] = v52;
      v61[4] = v54;
      v61[5] = v57;
      v62 = v116;
      v61[6] = v56;
      v61[7] = v62;
      if (v52)
      {

        sub_F714(v57, v56);

        v48 = sub_769210();
      }

      else
      {

        sub_F714(v57, v56);

        v48 = 0;
      }

      ++v46;
      v120 = sub_627D78;
      v121 = v61;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v119 = sub_6B0344;
      *(&v119 + 1) = &unk_89A970;
      v49 = _Block_copy(&aBlock);

      v50 = [objc_opt_self() actionWithTitle:v48 style:v60 handler:v49];
      _Block_release(v49);

      v40 = v113;
      [v113 addAction:v50];

      sub_F704(v57, v56);
      v47 += 5;
      v32 = v116;
      v41 = v112;
      if (v114 == v46)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_37:

    v63 = sub_758F80();
    if (v64)
    {
      v65 = v63;
      v66 = v64;
      v67 = type metadata accessor for AlertActionHeaderViewController();
      v68 = objc_allocWithZone(v67);
      *&v68[OBJC_IVAR____TtC18ASMessagesProvider31AlertActionHeaderViewController_imageView] = 0;
      v69 = &v68[OBJC_IVAR____TtC18ASMessagesProvider31AlertActionHeaderViewController_imageName];
      *v69 = v65;
      *(v69 + 1) = v66;
      v117.receiver = v68;
      v117.super_class = v67;
      v70 = objc_msgSendSuper2(&v117, "initWithNibName:bundle:", 0, 0);
      [v40 _setHeaderContentViewController:v70];
    }

    v120 = 0;
    aBlock = 0u;
    v119 = 0u;
    (*(v95 + 104))(v100, enum case for FlowPage.viewController(_:), v96);
    v71 = sub_7570A0();
    (*(*(v71 - 8) + 56))(v102, 1, 1, v71);
    v72 = sub_759E30();
    (*(*(v72 - 8) + 56))(v103, 1, 1, v72);
    v123 = sub_BE70(0, &qword_955130, UIAlertController_ptr);
    *&v122 = v40;
    v116 = v40;
    sub_768790();
    (*(v97 + 104))(v107, enum case for FlowPresentationContext.infer(_:), v98);
    (*(v99 + 104))(v108, enum case for FlowAnimationBehavior.infer(_:), v101);
    (*(v104 + 104))(v109, enum case for FlowOrigin.inapp(_:), v106);
    sub_768CE0();
    sub_758B20();
    swift_allocObject();
    v73 = sub_758AD0();
    sub_72D7A8(v73, 1, v32);
    sub_768F00();
  }
}

uint64_t sub_627D20()
{

  if (*(v0 + 40))
  {
  }

  return _swift_deallocObject(v0, 64, 7);
}

void sub_627D78(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4[0] = *(v1 + 16);
  v4[1] = v2;
  v3 = *(v1 + 56);
  v5 = *(v1 + 48);
  sub_626894(a1, v4, v3);
}

double sub_627DAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_627DC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_627DFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_627E48()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_768FF0();
  sub_161DC(v4, qword_95F450);
  sub_BE38(v4, qword_95F450);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_768FE0();
}

void sub_627F9C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v45 = a6;
  Strong = a5;
  v9 = sub_768FF0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v13 - 8);
  v44 = &v40 - v14;
  v15 = sub_75B9A0();
  v43 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_7687B0();
  __chkstk_darwin(v18 - 8);
  if (a1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    [Strong presentViewController:a4 animated:1 completion:0];
    v19 = Strong;

    return;
  }

  if (!a2)
  {
    goto LABEL_18;
  }

  *&v50 = a2;
  swift_errorRetain();
  sub_BD88(&unk_95F4D0, &unk_77DF30);
  v20 = sub_BE70(0, &unk_957140, NSError_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v41 = v20;
  v42 = v47;
  v21 = [v47 domain];
  v22 = sub_769240();
  v24 = v23;

  if (v22 == sub_769240() && v24 == v25)
  {
  }

  else
  {
    v26 = sub_76A950();

    if ((v26 & 1) == 0)
    {

      goto LABEL_18;
    }
  }

  v27 = v42;
  if ([v42 code] == -7005)
  {
    if (qword_93DF88 != -1)
    {
      swift_once();
    }

    sub_BE38(v9, qword_95F450);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    *(&v51 + 1) = v41;
    *&v50 = v42;
    v28 = v42;
    sub_7685C0();
    sub_10A2C(&v50, &unk_93FBD0, &qword_77DFA0);
    sub_768EA0();

    v29 = v28;
    sub_768F50();

    v53._object = 0x80000000007CA810;
    v53._countAndFlagsBits = 0xD000000000000017;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    sub_75B750(v53, v55);
    v54._countAndFlagsBits = 0xD00000000000002ALL;
    v54._object = 0x80000000007CA830;
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    sub_75B750(v54, v56);
    sub_768790();
    (*(v43 + 104))(v17, enum case for AlertActionStyle.normal(_:), v15);
    sub_758F90();
    swift_allocObject();
    v30 = sub_758F60();
    v31 = sub_BD88(&unk_93F630, &unk_77E230);
    v33 = v44;
    v32 = v45;
    sub_768860();
    v34 = *(v31 - 8);
    if ((*(v34 + 48))(v33, 1, v31) == 1)
    {

      sub_10A2C(v33, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      sub_32AE84(v30, 1, v32, v33);

      (*(v34 + 8))(v33, v31);
    }

    return;
  }

LABEL_18:
  if (qword_93DF88 != -1)
  {
    swift_once();
  }

  v35 = sub_BE38(v9, qword_95F450);
  (*(v10 + 16))(v12, v35, v9);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  if (a2)
  {
    swift_getErrorValue();
    v36 = v48;
    v37 = v49;
    *(&v51 + 1) = v49;
    v38 = sub_B1B4(&v50);
    (*(*(v37 - 8) + 16))(v38, v36, v37);
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  sub_7685C0();
  sub_10A2C(&v50, &unk_93FBD0, &qword_77DFA0);
  sub_768EA0();

  (*(v10 + 8))(v12, v9);
  sub_62932C();
  swift_allocError();
  *v39 = 1;
  sub_768F50();
}

void sub_62884C(void *a1, uint64_t a2)
{
  v4 = sub_769240();
  if (*(a2 + 16))
  {
    v6 = sub_3DF2F8(v4, v5);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(a2 + 56) + 8 * v6);
      v10 = [v9 success];
      v11 = [v9 error];
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
      *(v13 + 32) = v10;
      v25 = sub_6298F4;
      v26 = v13;
      v21 = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_23F0CC;
      v24 = &unk_89AAB0;
      v14 = _Block_copy(&v21);
      v15 = v11;

      [a1 dismissViewControllerAnimated:1 completion:v14];
      _Block_release(v14);

      return;
    }
  }

  else
  {
  }

  sub_62932C();
  v16 = swift_allocError();
  *v17 = 0;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;
  *(v19 + 32) = 0;
  v25 = sub_6298F4;
  v26 = v19;
  v21 = _NSConcreteStackBlock;
  v22 = 1107296256;
  v23 = sub_23F0CC;
  v24 = &unk_89AA60;
  v20 = _Block_copy(&v21);
  swift_errorRetain();

  [a1 dismissViewControllerAnimated:1 completion:v20];
  _Block_release(v20);
}

uint64_t sub_628B8C(void *a1)
{
  sub_62932C();
  v2 = swift_allocError();
  *v3 = 1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  *(v5 + 32) = 0;
  v8[4] = sub_6293B8;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_23F0CC;
  v8[3] = &unk_89AA10;
  v6 = _Block_copy(v8);
  swift_errorRetain();

  [a1 dismissViewControllerAnimated:1 completion:v6];
  _Block_release(v6);
}

double sub_628D30(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_7687C0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    if (qword_93DF88 != -1)
    {
      swift_once();
    }

    v10 = sub_768FF0();
    sub_BE38(v10, qword_95F450);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    swift_getErrorValue();
    v11 = v24[1];
    v12 = v25;
    v27 = v25;
    v13 = sub_B1B4(v26);
    (*(*(v12 - 1) + 16))(v13, v11, v12);
    sub_7685C0();
    sub_10A2C(v26, &unk_93FBD0, &qword_77DFA0);
    sub_768EA0();

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      goto LABEL_20;
    }

    v15 = Strong;
    if (*(Strong + OBJC_IVAR____TtCV18ASMessagesProvider26SignInActionImplementationP33_EADAA94AD0B8877475A49710E48E193214SignInDelegate_outcome))
    {

      sub_768F50();

LABEL_17:

      goto LABEL_20;
    }
  }

  else
  {
    v24[0] = v7;
    if (qword_93DF88 != -1)
    {
      swift_once();
    }

    v16 = sub_768FF0();
    sub_BE38(v16, qword_95F450);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    v27 = &type metadata for Bool;
    LOBYTE(v26[0]) = a3 & 1;
    sub_7685C0();
    sub_10A2C(v26, &unk_93FBD0, &qword_77DFA0);
    sub_768E80();

    if (a3)
    {
      swift_beginAccess();
      v17 = swift_unknownObjectWeakLoadStrong();
      if (!v17)
      {
        goto LABEL_20;
      }

      v18 = v17;
      if (*(v17 + OBJC_IVAR____TtCV18ASMessagesProvider26SignInActionImplementationP33_EADAA94AD0B8877475A49710E48E193214SignInDelegate_outcome))
      {

        v19 = v24[0];
        (*(v6 + 104))(v9, enum case for ActionOutcome.performed(_:), v24[0]);
        sub_768F60();

        (*(v6 + 8))(v9, v19);
        goto LABEL_20;
      }
    }

    else
    {
      swift_beginAccess();
      v20 = swift_unknownObjectWeakLoadStrong();
      if (!v20)
      {
        goto LABEL_20;
      }

      v18 = v20;
      if (*(v20 + OBJC_IVAR____TtCV18ASMessagesProvider26SignInActionImplementationP33_EADAA94AD0B8877475A49710E48E193214SignInDelegate_outcome))
      {

        sub_62932C();
        swift_allocError();
        *v21 = 2;
        sub_768F50();

        goto LABEL_17;
      }
    }
  }

LABEL_20:
  swift_beginAccess();
  v22 = swift_unknownObjectWeakLoadStrong();
  if (v22)
  {
    *&v22[OBJC_IVAR____TtCV18ASMessagesProvider26SignInActionImplementationP33_EADAA94AD0B8877475A49710E48E193214SignInDelegate_outcome] = 0;
  }

  return result;
}

unint64_t sub_62932C()
{
  result = qword_95F498;
  if (!qword_95F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95F498);
  }

  return result;
}

uint64_t sub_629380()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_6293C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_6293E8()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_629438(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_629480(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_6294D0()
{
  result = qword_95F4A8;
  if (!qword_95F4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95F4A8);
  }

  return result;
}

unint64_t sub_629528()
{
  result = qword_95F4B0;
  if (!qword_95F4B0)
  {
    sub_759F60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_95F4B0);
  }

  return result;
}

uint64_t sub_629580(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 8);
  v5 = OBJC_IVAR____TtCV18ASMessagesProvider26SignInActionImplementationP33_EADAA94AD0B8877475A49710E48E193214SignInDelegate_outcome;
  if (*(v4 + OBJC_IVAR____TtCV18ASMessagesProvider26SignInActionImplementationP33_EADAA94AD0B8877475A49710E48E193214SignInDelegate_outcome))
  {
    sub_62932C();
    swift_allocError();
    *v6 = 3;

    sub_768EE0();
  }

  sub_BD88(&qword_94DDC0, qword_77DE00);
  v7 = sub_768F90();
  *(v4 + v5) = v7;

  v8 = [objc_allocWithZone(AAUISignInController) init];
  sub_BD88(&unk_95F4C0, &qword_7AA8D8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_77B6D0;
  v10 = AIDAServiceTypeStore;
  *(v9 + 32) = AIDAServiceTypeStore;
  type metadata accessor for AIDAServiceType(0);
  v11 = v10;
  isa = sub_769450().super.isa;

  [v8 setServiceTypes:isa];

  [v8 setDelegate:v4];
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_6297FC(v2, v19);
  v14 = swift_allocObject();
  sub_62988C(v19, (v14 + 2));
  v14[4] = v8;
  v14[5] = v7;
  v14[6] = a1;
  v18[4] = sub_6298C4;
  v18[5] = v14;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_509F0;
  v18[3] = &unk_89AC10;
  v15 = _Block_copy(v18);

  v16 = v8;

  [v16 prepareInViewController:Strong completion:v15];
  _Block_release(v15);

  return v7;
}

uint64_t sub_629834()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 56, 7);
}

double sub_629944()
{
  v1 = sub_7656C0();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&qword_951438, qword_799648);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v24 - v5;
  v7 = sub_BD88(&unk_951420, &qword_783310);
  __chkstk_darwin(v7 - 8);
  v9 = v24 - v8;
  v10 = sub_758A00();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_629D10(&qword_946378, &type metadata accessor for Annotation, &protocol conformance descriptor for Annotation);
  sub_75C750();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_C3434(v9);
    return 0.0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_13EAE4();
    sub_75C780();
    sub_769030();
    v24[1] = v0;
    if (v28)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_7589C0();
    }

    swift_getKeyPath();
    sub_75C7B0();

    sub_765630();
    v17 = v16;
    v19 = v18;
    (*(v25 + 8))(v3, v26);
    v20 = sub_527DE4();
    swift_getObjectType();
    v21.n128_u64[0] = v17;
    sub_2F1D04(v13, v15 & 1, v20, v21, v19);
    v14 = v22;
    swift_unknownObjectRelease();
    (*(v27 + 8))(v6, v4);
    (*(v11 + 8))(v13, v10);
  }

  return v14;
}

uint64_t sub_629D10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_629D5C(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
}

uint64_t sub_629D6C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = a1[24];
  v6 = *(a2 + 2);
  v7 = a2[24];
  if (v4)
  {
    if (v6)
    {
      v8 = *(a1 + 1) == *(a2 + 1) && v4 == v6;
      if (v8 || (sub_76A950() & 1) != 0)
      {
        return v5 ^ v7 ^ 1u;
      }
    }
  }

  else if (!v6)
  {
    return v5 ^ v7 ^ 1u;
  }

  return 0;
}

double sub_629DF4()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "prepareForReuse");
  v1 = &v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_appStateMachine];
  if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_758210();
    swift_unknownObjectRelease();
  }

  *v1 = 0;
  *(v1 + 1) = 0;
  swift_unknownObjectRelease();
  return result;
}

void *sub_629EEC(uint64_t a1, uint64_t a2)
{
  v202 = a2;
  v192 = sub_75BED0();
  v191 = *(v192 - 8);
  __chkstk_darwin(v192);
  v190 = &v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_BD88(&unk_944DF0, &unk_783130);
  __chkstk_darwin(v4 - 8);
  v189 = &v155 - v5;
  v188 = sub_7623A0();
  v183 = *(v188 - 8);
  __chkstk_darwin(v188);
  v185 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_BD88(&unk_9457F0, qword_783FD0);
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v184 = &v155 - v7;
  v8 = sub_BD88(&unk_944E00, &unk_784910);
  __chkstk_darwin(v8 - 8);
  v10 = &v155 - v9;
  v11 = sub_BD88(&unk_948730, &qword_788DD0);
  __chkstk_darwin(v11 - 8);
  v182 = &v155 - v12;
  v13 = sub_763750();
  v199 = *(v13 - 8);
  v200 = v13;
  __chkstk_darwin(v13);
  v181 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v162 = &v155 - v16;
  __chkstk_darwin(v17);
  v198 = &v155 - v18;
  v19 = sub_BD88(&unk_95F4E0, &unk_790C40);
  __chkstk_darwin(v19 - 8);
  v166 = &v155 - v20;
  v21 = sub_BD88(&unk_9457D0, &unk_785630);
  __chkstk_darwin(v21 - 8);
  v165 = &v155 - v22;
  v23 = sub_BD88(&unk_9457E0, &qword_785640);
  __chkstk_darwin(v23 - 8);
  v164 = &v155 - v24;
  v25 = sub_BD88(&unk_94A780, &unk_788DC0);
  __chkstk_darwin(v25 - 8);
  v163 = &v155 - v26;
  v180 = sub_7580D0();
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = &v155 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_75AD00();
  v174 = *(v175 - 8);
  __chkstk_darwin(v175);
  v173 = &v155 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_764CF0();
  v177 = *(v195 - 1);
  __chkstk_darwin(v195);
  v176 = &v155 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_75B490();
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v161 = &v155 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v160 = &v155 - v32;
  v197 = sub_7656A0();
  v33 = *(v197 - 8);
  __chkstk_darwin(v197);
  v196 = &v155 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v155 - v36;
  v38 = sub_7656C0();
  v39 = *(v38 - 8);
  __chkstk_darwin(v38);
  v201 = &v155 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v43 = &v155 - v42;
  __chkstk_darwin(v44);
  v46 = &v155 - v45;
  sub_75C040();
  sub_62F4E4(&qword_95F4F0, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  result = sub_75C750();
  v48 = v204;
  if (!v204)
  {
    return result;
  }

  v157 = v10;
  v171 = v37;
  swift_getKeyPath();
  v203 = v48;
  sub_75C7B0();

  sub_765580();
  v49 = *(v39 + 8);
  v49(v46, v38);
  swift_getKeyPath();
  sub_75C7B0();

  sub_7655A0();
  v49(v43, v38);
  v50 = v171;
  v51 = v197;
  (*(v33 + 104))(v171, enum case for PageGrid.Direction.vertical(_:), v197);
  swift_getKeyPath();
  sub_75C7B0();

  sub_765590();
  v158 = v49;
  v49(v46, v38);
  (*(v33 + 16))(v196, v50, v51);
  sub_40DC7C(0.0);
  sub_765670();
  (*(v33 + 8))(v50, v51);
  v196 = sub_527DE4();
  v159 = a1;
  v52 = sub_40B0E0();
  v53 = v172;
  v54 = &v172[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_iconSize];
  *v54 = v52;
  *(v54 + 1) = v55;
  sub_BD88(&unk_944300, &qword_77DEE0);
  v56 = sub_768900();
  sub_768ED0();
  v167 = *(&v204 + 1);
  v197 = v204;
  v57 = v53;
  v58 = *&v53[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_titleLabel];
  sub_75C000();
  v169 = v38;
  v168 = v39 + 8;
  if (v59)
  {
    v60 = sub_769210();
  }

  else
  {
    v60 = 0;
  }

  [v58 setText:v60];

  v61 = v57;
  v62 = *&v57[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel];
  sub_75C020();
  if (v63)
  {
    v64 = sub_769210();
  }

  else
  {
    v64 = 0;
  }

  [v62 setText:v64];

  v65 = *&v57[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel];
  sub_75BF30();
  if (v66)
  {
    v67 = sub_769210();
  }

  else
  {
    v67 = 0;
  }

  [v65 setText:v67];

  v68 = sub_75BFA0();
  v69 = sub_75BF90();
  v156 = v46;
  if (v70 == 1)
  {
    sub_2D33BC(0, 0);
    v73 = 0;
    v74 = 0;
  }

  else
  {
    v73 = v71;
    v74 = v72;
    v75 = v69;
    v76 = v70;

    sub_2D33BC(v75, v76);
  }

  sub_2D33D0(v73, v74);
  v77 = sub_75BF80();
  v78 = v61[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasExpandedOffer];
  v170 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasExpandedOffer;
  v61[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasExpandedOffer] = v77 & 1;
  sub_2D2C40(v78);
  v79 = sub_75BFC0();
  v171 = v68;
  v80 = v176;
  if ((v79 & 1) != 0 && v68)
  {
    v155 = v56;

    v81 = v160;
    sub_75FE40();
    v82 = v193;
    v83 = v161;
    v84 = v194;
    (*(v193 + 104))(v161, enum case for OfferLabelStyle.none(_:), v194);
    sub_62F4E4(&unk_9535D0, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
    v85 = sub_7691C0();
    v86 = *(v82 + 8);
    v86(v83, v84);
    v86(v81, v84);
    if ((v85 & 1) == 0)
    {

      sub_75FE80();
      sub_75A920();
      swift_unknownObjectRetain();
      sub_768ED0();
      sub_75A7D0();

      v87 = sub_75E260();
      swift_allocObject();
      v68 = v171;
      v88 = sub_75E240();
      *(&v205 + 1) = v87;
      *&v204 = v88;
      v89 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerLabelPresenter;
      swift_beginAccess();

      sub_B33C8(&v204, &v61[v89], &unk_93FBD0, &qword_77DFA0);
      swift_endAccess();
      sub_62F4E4(&qword_95F4F8, type metadata accessor for ProductLockupCollectionViewCell, &unk_7AA960);
      swift_unknownObjectRetain();
      sub_75E250();
    }
  }

  v90 = sub_75BFB0();
  if (v90)
  {
    v91 = v90;
    v92 = v175;
    v93 = v174;
    v94 = v173;
  }

  else
  {
    v92 = v175;
    v93 = v174;
    v94 = v173;
    if (!v68)
    {
      v95 = v80;
      goto LABEL_28;
    }

    v91 = sub_75FEA0();
  }

  (*(v93 + 104))(v94, enum case for OfferTitleType.standard(_:), v92);
  if (!*(v91 + 16))
  {
    v95 = v80;
    goto LABEL_27;
  }

  v95 = v80;
  v96 = sub_6643C4(v94);
  if ((v97 & 1) == 0)
  {
LABEL_27:

    (*(v93 + 8))(v94, v92);
LABEL_28:
    v103 = 0;
    v100 = 0;
    goto LABEL_29;
  }

  v98 = (*(v91 + 56) + 16 * v96);
  v99 = *v98;
  v100 = v98[1];
  v101 = *(v93 + 8);

  v102 = v94;
  v103 = v99;
  v101(v102, v92);

LABEL_29:
  swift_getObjectType();
  v104 = v61[v170];
  v105 = swift_unknownObjectRetain();
  v106 = sub_2D8E78(v105, v104, v61);
  swift_unknownObjectRelease();
  swift_getObjectType();
  sub_75C010();
  v107 = sub_758330();
  v109 = v108;
  (*(v177 + 8))(v95, v195);
  ObjectType = swift_getObjectType();
  v111 = v178;
  v174 = ObjectType;
  v195 = v109;
  sub_758220();
  v177 = v103;
  v176 = v100;
  v175 = v106;
  sub_62B970(v111, v103, v100, v106);
  (*(v179 + 8))(v111, v180);
  if (v68)
  {

    sub_10EE30(_swiftEmptyArrayStorage);
    v112 = sub_758C70();
    v113 = v163;
    (*(*(v112 - 8) + 56))(v163, 1, 1, v112);
    v114 = sub_75BD30();
    v115 = v164;
    (*(*(v114 - 8) + 56))(v164, 1, 1, v114);
    v116 = sub_765870();
    v117 = v165;
    (*(*(v116 - 8) + 56))(v165, 1, 1, v116);
    v118 = v166;
    (*(v193 + 56))(v166, 1, 1, v194);
    v204 = 0u;
    v205 = 0u;
    v194 = sub_75FE10();

    sub_10A2C(&v204, &unk_93FBD0, &qword_77DFA0);
    sub_10A2C(v118, &unk_95F4E0, &unk_790C40);
    sub_10A2C(v117, &unk_9457D0, &unk_785630);
    sub_10A2C(v115, &unk_9457E0, &qword_785640);
    sub_10A2C(v113, &unk_94A780, &unk_788DC0);
  }

  else
  {
    v194 = 0;
  }

  v119 = v198;
  v120 = sub_75BFD0();
  v121 = v199;
  v122 = *(v199 + 104);
  if (v120)
  {
    v123 = v200;
    v122(v119, enum case for OfferButtonPresenterViewAlignment.center(_:), v200);
  }

  else
  {
    if (v61[v170])
    {
      v124 = &enum case for OfferButtonPresenterViewAlignment.right(_:);
    }

    else
    {
      v124 = &enum case for OfferButtonPresenterViewAlignment.left(_:);
    }

    v125 = v162;
    v123 = v200;
    v122(v162, *v124, v200);
    (*(v121 + 32))(v119, v125, v123);
  }

  v126 = sub_75BF00();
  (*(v121 + 16))(v181, v119, v123);
  (*(v121 + 56))(v157, 1, 1, v123);
  sub_62F4E4(&unk_944E10, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v127 = v182;
  sub_760940();
  v128 = sub_BD88(&unk_948740, &unk_784920);
  (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
  v129 = v183;
  v130 = v188;
  (*(v183 + 104))(v185, enum case for OfferButtonSubtitlePosition.below(_:), v188);
  (*(v129 + 56))(v189, 1, 1, v130);
  sub_62F4E4(&qword_944E20, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v131 = v184;
  sub_760940();
  sub_1DFEBC(v194, v126, 0, v127, v131, v202, 0, 0);

  (*(v186 + 8))(v131, v187);
  sub_10A2C(v127, &unk_948730, &qword_788DD0);
  v132 = &v61[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_appStateMachine];
  if (*&v61[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_appStateMachine])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_758210();
    swift_unknownObjectRelease();
  }

  v133 = v158;
  v134 = v195;
  *v132 = v107;
  v132[1] = v134;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v135 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v136 = swift_allocObject();
  v137 = v177;
  v136[2] = v135;
  v136[3] = v137;
  v138 = v175;
  v136[4] = v176;
  v136[5] = v138;

  sub_7581F0();

  v139 = [v61 contentView];
  sub_765620();
  [v139 setLayoutMargins:?];

  v140 = [v61 traitCollection];
  LOBYTE(v139) = sub_7699D0();

  v141 = 0;
  if (v139)
  {
    v142 = sub_75BFD0();
    v143 = v202;
    v144 = v159;
    if (v142)
    {
      swift_getKeyPath();
      v145 = v156;
      sub_75C7B0();

      sub_765590();
      v141 = v146;
      v133(v145, v169);
    }
  }

  else
  {
    v143 = v202;
    v144 = v159;
  }

  *&v61[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_bottomSafeAreaDistance] = v141;
  v147 = v190;
  v148 = v203;
  sub_75BFF0();
  v149 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_theme;
  swift_beginAccess();
  v150 = v191;
  v151 = v192;
  (*(v191 + 24))(&v61[v149], v147, v192);
  swift_endAccess();
  sub_2D14F4();
  (*(v150 + 8))(v147, v151);
  sub_62BB84(v144, v143);
  sub_62CE80(v148, v107, v195, v144, v143);
  *&v61[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_secondaryBannerViewHeight] = sub_40B554();
  v152 = sub_75BF60();
  v153 = sub_75BFD0();
  v154 = sub_62D650(v152, v153 & 1, v144, v143);

  sub_2D25C4(v154);
  [v61 setNeedsLayout];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  (*(v199 + 8))(v198, v200);
  return (v133)(v201, v169);
}

id sub_62B970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_offerSubtitleLabel];
  if (a3)
  {
    v8 = sub_769210();
  }

  else
  {
    v8 = 0;
  }

  [v7 setText:v8];

  [v7 setTextAlignment:a4];
  [v7 setHidden:(a3 == 0) | ((sub_7580C0() & 1) == 0)];

  return [v4 setNeedsLayout];
}

void *sub_62BA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_7580D0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    swift_getObjectType();
    sub_758220();
    sub_62B970(v12, a4, a5, a6);

    return (*(v10 + 8))(v12, v9);
  }

  return result;
}

void sub_62BB84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v151 = a2;
  ObjectType = swift_getObjectType();
  v5 = sub_760AD0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v9 - 8);
  v139 = &v133 - v10;
  v11 = sub_7666D0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_765770();
  v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v140 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_7656C0();
  v144 = *(v145 - 8);
  __chkstk_darwin(v145);
  v143 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_BD88(&qword_946810, &qword_783360);
  __chkstk_darwin(v17 - 8);
  v150 = sub_BD88(&unk_953FA0, &qword_79C638);
  v147 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = &v133 - v18;
  sub_75C040();
  sub_62F4E4(&qword_95F4F0, &type metadata accessor for ProductTopLockup, &protocol conformance descriptor for ProductTopLockup);
  v148 = a1;
  sub_75C750();
  if (v156)
  {
    v134 = v14;
    v19 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView;
    v20 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_uberView];
    v152 = v156;
    v136 = v11;
    v135 = v12;
    v138 = v5;
    v137 = v6;
    if (v20)
    {
      v21 = *(v20 + OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_uber);

      v22 = sub_75BFE0();
      if (v21)
      {
        v156 = v21;
        if (v22)
        {
          v153 = v22;
          sub_764610();
          sub_62F4E4(&qword_9424D0, &type metadata accessor for Uber, &protocol conformance descriptor for Uber);
          v23 = sub_7691C0();

          v24 = v23 ^ 1;
LABEL_13:
          v133 = v8;
          v26 = *&v3[v19];
          if (v26 && (v27 = *&v26[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_contentView], v28 = OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer, (v29 = *(*(v27 + OBJC_IVAR____TtC18ASMessagesProvider9MediaView_contentContainer) + OBJC_IVAR____TtC18ASMessagesProviderP33_BA520009733D56FF860AA8122DA44FE220UberContentContainer_contents)) != 0))
          {
            type metadata accessor for VideoView(0);
            v30 = swift_dynamicCastClass();
            if (v30)
            {
              sub_62F4E4(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
              v31 = v29;
              v32 = v26;
              v33 = [v30 superview];
              if (v33)
              {
                v30 = v33;
                v34 = *(v27 + v28);
                sub_BE70(0, &qword_93E550, UIView_ptr);
                v35 = v34;
                v36 = sub_76A1C0();

                LODWORD(v30) = v36 ^ 1;
              }

              else
              {

                LODWORD(v30) = 1;
              }
            }
          }

          else
          {
            LODWORD(v30) = 0;
          }

          v37 = sub_75BFE0();
          if (v37)
          {
            v38 = v37;
            if ((v24 | v30))
            {
              v39 = sub_75BFD0();
              v40 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber;
              v41 = v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber];
              v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber] = v39 & 1;
              if ((v39 & 1) != v41)
              {
                sub_2D19B8();
              }

              sub_62F1C8(v3, v3);
              sub_2D2674();
              sub_2D28C8();
              v42 = v148;
              sub_75C800();
              sub_769060();
              swift_getKeyPath();
              sub_29A844();

              sub_769040();

              v43 = v156;
              v44 = objc_allocWithZone(type metadata accessor for UberHeaderView());
              v45 = v151;

              v46 = sub_6235D8(v38, (v43 & 1) == 0, v45);
              sub_2D1ED8(v46);
              v47 = *&v3[v19];
              if (v47)
              {
                swift_getKeyPath();
                v48 = v47;
                v49 = v143;
                sub_75C7B0();

                sub_765620();
                v51 = v50;
                v53 = v52;
                v55 = v54;
                v57 = v56;
                (*(v144 + 8))(v49, v145);
                v58 = OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView;
                [*&v48[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_titleView] layoutMargins];
                if (v51 == v62 && v53 == v59 && v55 == v60 && v57 == v61 || ([*&v48[v58] setLayoutMargins:{v51, v53, v55, v57, v133}], objc_msgSend(v48, "invalidateIntrinsicContentSize"), (v63 = *&v48[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver]) == 0))
                {
                }

                else
                {
                  v64 = *&v48[OBJC_IVAR____TtC18ASMessagesProvider14UberHeaderView_sizeChangeObserver + 8];

                  v63(v65);

                  sub_F704(v63, v64);
                }
              }

              v66 = sub_405504(v42, v151);
              if (v3[v40] == 1)
              {
                v67 = [v3 contentView];
                [v67 setOverrideUserInterfaceStyle:2];

                sub_2D4840();
                v68 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_disclosureArrow;
                if (!*&v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_disclosureArrow])
                {
                  v69 = [objc_allocWithZone(type metadata accessor for ChevronView()) init];
                  [v69 setOverrideUserInterfaceStyle:2];
                  v70 = *&v3[v68];
                  if (v70)
                  {
                    [v70 removeFromSuperview];
                    v71 = *&v3[v68];
                  }

                  else
                  {
                    v71 = 0;
                  }

                  *&v3[v68] = v69;
                  v72 = v69;

                  v73 = [v3 contentView];
                  [v73 addSubview:v72];
                }

                v74 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_wordmarkView];
                v75 = v141;
                v76 = v140;
                v77 = v142;
                (*(v141 + 104))(v140, enum case for Wordmark.arcade(_:), v142);
                swift_getKeyPath();
                sub_75C7B0();

                v78 = v156;
                sub_759FF0();

                (*(v75 + 8))(v76, v77);
                [v74 setHidden:0];
                [*&v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_developerLabel] setHidden:1];
                v79 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel];
                v80 = [v79 text];
                v81 = v80;
                if (v80)
                {
                }

                [v79 setHidden:v81 == 0];
                v82 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
                swift_beginAccess();
                v83 = *&v3[v82];
                if (v83)
                {
                  [v83 removeFromSuperview];
                  v84 = *&v3[v82];
                }

                else
                {
                  v84 = 0;
                }

                *&v3[v82] = 0;

                [v3 setNeedsLayout];
                v85 = [v3 contentView];
                [v85 overrideUserInterfaceStyle];

                sub_769240();
                v86 = sub_769210();

                v87 = [v79 layer];
                [v87 setCompositingFilter:v86];

                v88 = [v74 layer];
                [v88 setCompositingFilter:v86];

                v89 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
                if (v89)
                {
                  [v89 setHidden:1];
                }

                v90 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
                if (v90)
                {
                  v91 = [v90 layer];
                  [v91 setCompositingFilter:v86];
                }

                v92 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_downloadProgressLabel];
                if (v92)
                {
                  v93 = [v92 layer];
                  [v93 setCompositingFilter:v86];
                }
              }

              sub_75A110();
              sub_768900();
              sub_768ED0();
              v94.n128_f64[0] = v66;
              sub_62E4F0(v94, v42, v156);

              (*(v147 + 8))(v149, v150);
            }

            else
            {
            }
          }

          if (v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber])
          {
            goto LABEL_83;
          }

          v95 = [v3 contentView];
          [v95 setOverrideUserInterfaceStyle:0];

          v96 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_disclosureArrow;
          v97 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_disclosureArrow];
          if (v97)
          {
            [v97 removeFromSuperview];
            v98 = *&v3[v96];
          }

          else
          {
            v98 = 0;
          }

          v99 = v138;
          v100 = v137;
          *&v3[v96] = 0;

          sub_75BF50();
          v101 = sub_7692D0();

          v102 = OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_tertiaryTitleLabel;
          if (v101)
          {
            swift_beginAccess();
            v103 = *&v3[v102];
            if (v103)
            {
              [v103 removeFromSuperview];
              v104 = *&v3[v102];
            }

            else
            {
              v104 = 0;
            }

            *&v3[v102] = 0;

            [v3 setNeedsLayout];
            goto LABEL_72;
          }

          swift_beginAccess();
          v105 = *&v3[v102];
          if (v105)
          {
LABEL_60:
            v106 = v105;
            sub_75BF50();
            if (v107)
            {
              v108 = sub_769210();
            }

            else
            {
              v108 = 0;
            }

            [v106 setText:{v108, v133}];

            goto LABEL_72;
          }

          if (qword_93CBB8 != -1)
          {
            swift_once();
          }

          v109 = sub_BD88(&qword_94E610, &qword_792B38);
          sub_BE38(v109, qword_99CDD8);
          swift_getKeyPath();
          sub_75C7B0();

          v155 = v153;
          v110 = v134;
          sub_7592B0();
          swift_unknownObjectRelease();
          if (qword_93CCE0 != -1)
          {
            swift_once();
          }

          v111 = sub_BD88(&unk_94B6E0, &qword_78E688);
          sub_BE38(v111, qword_99D190);
          swift_getKeyPath();
          sub_75C7B0();

          v154 = v155;
          sub_7592B0();
          swift_unknownObjectRelease();
          v112 = v135;
          v113 = v139;
          v114 = v136;
          (*(v135 + 16))(v139, v110, v136);
          (*(v112 + 56))(v113, 0, 1, v114);
          (*(v100 + 104))(v133, enum case for DirectionalTextAlignment.leading(_:), v99);
          v115 = objc_allocWithZone(sub_75BB20());
          v116 = sub_75BB10();
          v117 = *&v3[v102];
          if (v117)
          {
            [v117 removeFromSuperview];
            v118 = *&v3[v102];
          }

          else
          {
            v118 = 0;
          }

          *&v3[v102] = v116;
          v128 = v116;

          v129 = [v3 contentView];
          [v129 addSubview:v128];

          [v3 setNeedsLayout];
          swift_beginAccess();
          v130 = *&v3[v102];
          if (v130)
          {
            swift_endAccess();
            sub_BE70(0, &qword_93E540, UIColor_ptr);
            v131 = v130;
            v132 = sub_769FE0();
            [v131 setTextColor:v132];

            (*(v135 + 8))(v134, v136);
            v105 = *&v3[v102];
            if (v105)
            {
              goto LABEL_60;
            }
          }

          else
          {
            (*(v135 + 8))(v134, v136);
            swift_endAccess();
            v105 = *&v3[v102];
            if (v105)
            {
              goto LABEL_60;
            }
          }

LABEL_72:
          v119 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_wordmarkView];
          [v119 setHidden:{1, v133}];
          v120 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_blurView];
          if (v120)
          {
            [v120 removeFromSuperview];
          }

          v121 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_darkeningOverlayEffectView];
          if (v121)
          {
            [v121 removeFromSuperview];
          }

          v122 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_shadowView];
          if (v122)
          {
            [v122 removeFromSuperview];
          }

          v123 = [*&v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_taglineLabel] layer];
          [v123 setCompositingFilter:0];

          v124 = [v119 layer];
          [v124 setCompositingFilter:0];

          v125 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferTitleLabel];
          if (v125)
          {
            [v125 setHidden:0];
          }

          v126 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_expandedOfferSubtitleLabel];
          if (v126)
          {
            v127 = [v126 layer];
            [v127 setCompositingFilter:0];
          }

          sub_2D7E34();
LABEL_83:
          [v3 setNeedsLayout];

          return;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v22 = sub_75BFE0();
    }

    if (!v22)
    {
      v24 = 0;
      goto LABEL_13;
    }

LABEL_12:

    v24 = 1;
    goto LABEL_13;
  }

  sub_2D1ED8(0);
  v25 = v2[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber];
  v2[OBJC_IVAR____TtC18ASMessagesProvider31ProductLockupCollectionViewCell_hasInlineUber] = 0;
  if (v25 == 1)
  {
    sub_2D19B8();
  }

  sub_62F1C8(v2, v2);
  sub_2D2674();
  sub_2D28C8();
}