double sub_10035B0A8(double result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = [swift_unknownObjectRetain() traitCollection];
    sub_1007706EC();

    sub_100763DEC();
    if (qword_10093FFA8 != -1)
    {
      swift_once();
    }

    v4 = sub_10000A5D4(&unk_10094CD50, &unk_100786030);
    sub_10000A61C(v4, qword_10099EA40);
    swift_unknownObjectRetain();
    sub_10075FDCC();
    swift_unknownObjectRelease();
    sub_100763E1C();
    if (qword_10093FF98 != -1)
    {
      swift_once();
    }

    v5 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
    sub_10000A61C(v5, qword_100953B98);
    swift_unknownObjectRetain();
    sub_10075FDCC();
    swift_unknownObjectRelease();
    sub_100763DFC();
    swift_unknownObjectRelease();
  }

  return v6;
}

uint64_t sub_10035B288()
{
  v0 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10000DB18(v0, qword_100953B98);
  sub_10000A61C(v0, qword_100953B98);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FDFC();
}

uint64_t sub_10035B320()
{
  v0 = sub_10076D1AC();
  v1 = __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = UIFontTextStyleBody;
  (*(v4 + 104))(v3, enum case for FontSource.textStyle(_:), v1);
  qword_100953BC8 = sub_100767EAC();
  qword_100953BD0 = sub_10035E400(&qword_1009622C0, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  sub_10000DB7C(qword_100953BB0);
  v5 = UIFontTextStyleBody;
  v6 = UIContentSizeCategoryExtraExtraExtraLarge;
  return sub_100767E9C();
}

uint64_t sub_10035B470()
{
  v0 = sub_10000A5D4(&unk_10094CD50, &unk_100786030);
  sub_10000DB18(v0, qword_10099EA40);
  sub_10000A61C(v0, qword_10099EA40);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for CGSize(0);
  return sub_10075FDEC();
}

UIFontTextStyle sub_10035B51C()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_10099EA58);
  v1 = sub_10000A61C(v0, qword_10099EA58);
  *v1 = UIFontTextStyleBody;
  *(v1 + 8) = UIFontWeightSemibold;
  (*(*(v0 - 8) + 104))();

  return UIFontTextStyleBody;
}

uint64_t sub_10035B5D8()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100767EAC();
  sub_10000DB18(v4, qword_10099EA70);
  sub_10000A61C(v4, qword_10099EA70);
  if (qword_10093FFB0 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_10099EA58);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v7 = UIContentSizeCategoryExtraExtraExtraLarge;
  return sub_100767E9C();
}

char *sub_10035B774(double a1, double a2, double a3, double a4)
{
  v105 = sub_10076F9AC();
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v103 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100762CAC();
  v107 = *(v10 - 8);
  v108 = v10;
  __chkstk_darwin(v10);
  v102 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v106 = &v95 - v13;
  v101 = sub_100767EAC();
  v100 = *(v101 - 8);
  __chkstk_darwin(v101);
  v99 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_10076D3DC();
  v15 = *(v97 - 8);
  __chkstk_darwin(v97);
  v98 = &v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100760B4C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000A5D4(&qword_1009622B0, qword_100787B30);
  __chkstk_darwin(v21 - 8);
  v23 = &v95 - v22;
  v24 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_itemLayoutContext;
  v25 = sub_10076341C();
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView] = 0;
  v26 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  *&v4[v26] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v96 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_wordmarkView;
  v27 = sub_100760B6C();
  v28 = enum case for Wordmark.arcade(_:);
  v29 = sub_10076C43C();
  v30 = *(v29 - 8);
  (*(v30 + 104))(v23, v28, v29);
  (*(v30 + 56))(v23, 0, 1, v29);
  if (qword_10093FFA0 != -1)
  {
    swift_once();
  }

  sub_10000A570(qword_100953BB0, &v112);
  (*(v18 + 104))(v20, enum case for WordmarkView.Alignment.leading(_:), v17);
  v31 = *(&v113 + 1);
  v32 = v114;
  v33 = sub_10008B8A4(&v112, *(&v113 + 1));
  v34 = __chkstk_darwin(v33);
  v36 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36, v34);
  v38 = sub_1001AC4BC(v23, v36, v20, v27, v31, v32, 0.0, 0.0, 0.0, 0.0);
  sub_10000CD74(&v112);
  *&v4[v96] = v38;
  v39 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonView;
  if (qword_10093FFB0 != -1)
  {
    swift_once();
  }

  v40 = v97;
  v41 = sub_10000A61C(v97, qword_10099EA58);
  v42 = v98;
  (*(v15 + 16))(v98, v41, v40);
  if (qword_10093FFB8 != -1)
  {
    swift_once();
  }

  v43 = v101;
  v44 = sub_10000A61C(v101, qword_10099EA70);
  v45 = objc_allocWithZone(type metadata accessor for CappedSizeRoundedTitledButton(0));
  v46 = v99;
  (*(v100 + 16))(v99, v44, v43);
  v47 = UIContentSizeCategoryExtraExtraExtraLarge;
  v48 = sub_10035D854(v42, v46, UIContentSizeCategoryExtraExtraExtraLarge, v45);

  *&v4[v39] = v48;
  v49 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *&v4[v49] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v50 = &v4[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock];
  *v50 = 0;
  *(v50 + 1) = 0;
  v51 = &v4[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock];
  *v51 = 0;
  *(v51 + 1) = 0;
  v52 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_metrics;
  v53 = sub_100763E2C();
  (*(*(v53 - 8) + 56))(&v4[v52], 1, 1, v53);
  v54 = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  v111.receiver = v4;
  v111.super_class = v54;
  v55 = objc_msgSendSuper2(&v111, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v59 = v55;
  [v59 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v60 = v59;
  v61 = [v60 contentView];
  [v61 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  if (qword_10093FFA8 != -1)
  {
    swift_once();
  }

  v62 = sub_10000A5D4(&unk_10094CD50, &unk_100786030);
  sub_10000A61C(v62, qword_10099EA40);
  *&v109 = v60;
  sub_10075FDCC();

  v63 = v112;
  sub_100762C5C();
  sub_100762C6C();
  sub_100762C0C();
  sub_100762C4C();
  v64 = v106;
  sub_100762C8C();
  type metadata accessor for ArcadeFooterRiverViewDataSource();
  v65 = swift_allocObject();
  *(v65 + 16) = 2;
  *(v65 + 48) = 0;
  *(v65 + 56) = 0;
  *(v65 + 40) = _swiftEmptyArrayStorage;
  *(v65 + 24) = v63;
  (*(v107 + 16))(v102, v64, v108);
  v66 = objc_allocWithZone(sub_10000A5D4(&qword_100953D70, &qword_10079D3B0));
  v67 = sub_10076C62C();
  v68 = *&v60[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView];
  *&v60[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView] = v67;
  v69 = v67;

  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v70 = v103;
  sub_10076F95C();
  sub_10000CFBC(&v109, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v112, &unk_1009434C0, &qword_100783F60);
  v102 = v69;
  sub_100770B9C();
  v71 = *(v104 + 8);
  v72 = v105;
  v71(v70, v105);
  v73 = [v60 contentView];
  [v73 addSubview:v69];

  v74 = [v60 contentView];
  [v74 addSubview:*&v60[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_wordmarkView]];

  v75 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonView;
  v76 = *&v60[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonView];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v77 = v76;
  v78 = sub_100770D6C();
  [v77 setTintColor:v78];

  v79 = *&v60[v75];
  v80 = sub_100770D6C();
  [v79 setTitleColor:v80 forState:0];

  v81 = *&v60[v75];
  v82 = sub_100770DBC();
  [v81 _setBackgroundColor:v82];

  v83 = *&v60[v75];
  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v84 = v83;
  sub_10076F95C();
  sub_10000CFBC(&v109, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v112, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v71(v70, v72);
  v85 = v60;
  v86 = [v85 contentView];
  [v86 addSubview:*&v60[v75]];

  v87 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  v88 = *&v85[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer];
  [v88 addTarget:v85 action:"didTapFootnoteWithGestureRecognizer:"];

  v89 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView;
  [*&v85[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView] addGestureRecognizer:*&v85[v87]];
  v90 = *&v85[v89];
  v112 = 0u;
  v113 = 0u;
  v109 = 0u;
  v110 = 0u;
  v91 = v90;
  sub_10076F95C();
  sub_10000CFBC(&v109, &unk_1009434C0, &qword_100783F60);
  sub_10000CFBC(&v112, &unk_1009434C0, &qword_100783F60);
  sub_100770B9C();

  v71(v70, v72);
  v92 = [v85 contentView];

  v93 = *&v85[v89];
  [v92 addSubview:v93];

  (*(v107 + 8))(v106, v108);
  return v85;
}

uint64_t sub_10035C4EC()
{
  v1 = sub_10076D1FC();
  v34 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100953D78, &qword_10079D3B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_100763E2C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  v14 = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  v37.receiver = v0;
  v37.super_class = v14;
  v35 = v14;
  objc_msgSendSuper2(&v37, "layoutSubviews");
  v15 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_metrics;
  swift_beginAccess();
  sub_10035E448(&v0[v15], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_100953D78, &qword_10079D3B8);
  }

  (*(v8 + 32))(v13, v6, v7);
  v17 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView];
  if (v17)
  {
    v18 = v17;
    v33 = v18;
    sub_100763DCC();
    [v0 layoutMargins];
    sub_100763DCC();
    [v0 layoutMargins];
    sub_100763DDC();
    (*(v8 + 16))(v10, v13, v7);
    v36[18] = sub_10000A5D4(&qword_100953D70, &qword_10079D3B0);
    v36[19] = &protocol witness table for UIView;
    v36[15] = v18;
    v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_wordmarkView];
    v36[13] = sub_100760B6C();
    v36[14] = &protocol witness table for UIView;
    v36[10] = v19;
    v31 = v3;
    v20 = v34;
    v21 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonView];
    v36[8] = type metadata accessor for CappedSizeRoundedTitledButton(0);
    v36[9] = &protocol witness table for UIView;
    v36[5] = v21;
    v32 = v1;
    v22 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView];
    v23 = type metadata accessor for FootnoteView();
    v36[4] = &protocol witness table for UIView;
    v36[3] = v23;
    v36[0] = v22;
    sub_100763E4C();
    swift_allocObject();
    v33 = v33;
    v24 = v19;
    v25 = v21;
    v26 = v22;
    sub_100763E3C();
    v27 = [v0 contentView];
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    sub_10076422C();

    v28 = v31;
    sub_100763DAC();
    (*(v20 + 8))(v28, v32);
    [v25 frame];
    Width = CGRectGetWidth(v38);
    sub_10076422C();
    if (Width == CGRectGetWidth(v39))
    {
      [v25 setTitleEdgeInsets:{0.0, 32.0, 0.0, 32.0}];
    }

    else
    {
      [v25 setTitleEdgeInsets:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    }
  }

  return (*(v8 + 8))(v13, v7);
}

void sub_10035CAD4(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v4 = sub_100762CAC();
  __chkstk_darwin(v4 - 8);
  if (qword_10093FFA8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A5D4(&unk_10094CD50, &unk_100786030);
  sub_10000A61C(v5, qword_10099EA40);
  swift_unknownObjectRetain();
  sub_10075FDCC();
  swift_unknownObjectRelease();
  v6 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView;
  v7 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView];
  if (!v7 || ((v8 = v7, v9 = sub_10076C63C(), v8, swift_beginAccess(), v10 = *(v9 + 24), v11 = *(v9 + 32), , v28 == v10) ? (v12 = v29 == v11) : (v12 = 0), !v12))
  {
    type metadata accessor for ArcadeFooterRiverViewDataSource();
    v13 = swift_allocObject();
    *(v13 + 16) = 2;
    *(v13 + 48) = 0;
    *(v13 + 56) = 0;
    *(v13 + 40) = _swiftEmptyArrayStorage;
    *(v13 + 24) = v28;
    *(v13 + 32) = v29;
    sub_100762C5C();
    sub_100762C6C();
    sub_100762C0C();
    sub_100762C4C();
    sub_100762C8C();
    v14 = objc_allocWithZone(sub_10000A5D4(&qword_100953D70, &qword_10079D3B0));
    v15 = sub_10076C62C();
    v16 = *&v3[v6];
    if (v16)
    {
      v17 = v16;
      v18 = v15;
      v19 = sub_100770EEC();

      v20 = *&v3[v6];
      if ((v19 & 1) == 0 && v20)
      {
        [*&v3[v6] removeFromSuperview];
        v20 = *&v3[v6];
      }
    }

    else
    {
      v20 = 0;
    }

    *&v3[v6] = v15;
    v21 = v15;

    v22 = *&v3[v6];
    if (v22)
    {
      if (v16)
      {
        v23 = v16;
        v24 = v22;
        v25 = sub_100770EEC();

        if (v25)
        {

          v22 = v24;
LABEL_22:

          return;
        }
      }

      else
      {
        v26 = v22;
      }

      v27 = [v3 contentView];
      [v27 addSubview:v22];

      if (v16)
      {
        sub_10076C65C();
      }

      sub_10076C66C();

      goto LABEL_22;
    }

    v22 = v16;
    goto LABEL_22;
  }
}

uint64_t sub_10035CE70(uint64_t a1, uint64_t a2)
{
  sub_100016F40(0, &qword_10094F760, UITouch_ptr);
  sub_10027D9C8();
  isa = sub_10077038C().super.isa;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  objc_msgSendSuper2(&v14, "touchesBegan:withEvent:", isa, a2);

  result = sub_1005EBD8C(a1);
  if (result)
  {
    v7 = result;
    [result locationInView:v2];
    v9 = v8;
    v11 = v10;

    v12 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView];
    [v12 frame];
    v15.x = v9;
    v15.y = v11;
    result = CGRectContainsPoint(v16, v15);
    if (result)
    {
      v12[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_isHighlighted] = 1;
      if (v12[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLightensOnHighlight] == 1)
      {
        if (qword_10093F808 != -1)
        {
          swift_once();
        }

        v13 = &qword_100949F40;
      }

      else
      {
        if (qword_10093F800 != -1)
        {
          swift_once();
        }

        v13 = &qword_100949F38;
      }

      return [*&v12[OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel] setTextColor:*v13];
    }
  }

  return result;
}

id sub_10035D210()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeFooterCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeFooterCollectionViewCell(uint64_t a1)
{
  result = qword_100953C08;
  if (!qword_100953C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10035D374(uint64_t a1)
{
  sub_10035D49C(319, &qword_100944F90, &type metadata accessor for ItemLayoutContext);
  if (v1 <= 0x3F)
  {
    sub_10035D49C(319, &qword_100953C20, &type metadata accessor for ArcadeFooterLayout.Metrics);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10035D49C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_10035D4F0(unint64_t result)
{
  v2 = *(v1 + 40);
  if (v2 >> 62)
  {
    v5 = result;
    v6 = sub_10077158C();
    result = v5;
    if (v6 > v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result)
  {
    return 0;
  }

LABEL_3:
  v3 = *(v1 + 40);
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_10077149C();

    goto LABEL_7;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {

LABEL_7:
    v4 = sub_1007660BC();

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_10035D5CC()
{

  return swift_deallocClassInstance();
}

void sub_10035D66C(double a1, double a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

unint64_t sub_10035D700@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_10035D4F0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10035D728()
{
  sub_10075FD2C();
  v0 = sub_10075FB3C();
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  sub_100770DBC();
  sub_10075FB8C();
  return v0;
}

double sub_10035D790(uint64_t a1)
{
  sub_10075FCAC();
  if (*(v1 + 56))
  {
    sub_10075FD2C();
    sub_10035E400(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);

    sub_100760BFC();
  }

  return result;
}

id sub_10035D854(uint64_t a1, uint64_t a2, void *a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v24 - v10;
  v12 = sub_100767EAC();
  v26[3] = v12;
  v26[4] = sub_10035E400(&qword_1009622C0, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  v13 = sub_10000DB7C(v26);
  (*(*(v12 - 8) + 32))(v13, a2, v12);
  v14 = &a4[qword_10095D9B0];
  *v14 = 0;
  *(v14 + 1) = 0;
  sub_10000A570(v26, &a4[qword_10095D9A8]);
  v25.receiver = a4;
  v25.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v16 = a3;
  v17 = v15;
  sub_10024E618(a3);
  v18 = sub_10076D3DC();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v11, a1, v18);
  (*(v19 + 56))(v11, 0, 1, v18);
  v20 = v17;
  sub_10076311C();

  [v20 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v21 = sub_100770DAC();
  [v20 _setBackgroundColor:v21];

  [v20 addTarget:v20 action:"didTapButton:" forControlEvents:64];
  v22 = sub_100770D6C();
  [v20 setTintColor:v22];

  [v20 _setWantsAccessibilityUnderline:0];
  (*(v19 + 8))(a1, v18);
  sub_10000CD74(v26);
  return v20;
}

void sub_10035DB50()
{
  v1 = sub_100767EAC();
  v47 = *(v1 - 8);
  v48 = v1;
  __chkstk_darwin(v1);
  v46 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10076D3DC();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v45 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100760B4C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_1009622B0, qword_100787B30);
  __chkstk_darwin(v9 - 8);
  v11 = &v42 - v10;
  v12 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_itemLayoutContext;
  v13 = sub_10076341C();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_riverView) = 0;
  v14 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteTapGestureRecognizer;
  *(v0 + v14) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v43 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_wordmarkView;
  v15 = sub_100760B6C();
  v16 = enum case for Wordmark.arcade(_:);
  v17 = sub_10076C43C();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v11, v16, v17);
  (*(v18 + 56))(v11, 0, 1, v17);
  if (qword_10093FFA0 != -1)
  {
    swift_once();
  }

  sub_10000A570(qword_100953BB0, v49);
  (*(v6 + 104))(v8, enum case for WordmarkView.Alignment.leading(_:), v5);
  v19 = v50;
  v20 = v51;
  v21 = sub_10008B8A4(v49, v50);
  v22 = __chkstk_darwin(v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v22);
  v26 = sub_1001AC4BC(v11, v24, v8, v15, v19, v20, 0.0, 0.0, 0.0, 0.0);
  sub_10000CD74(v49);
  *(v0 + v43) = v26;
  v27 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonView;
  if (qword_10093FFB0 != -1)
  {
    swift_once();
  }

  v28 = v44;
  v29 = sub_10000A61C(v44, qword_10099EA58);
  v30 = v45;
  (*(v3 + 16))(v45, v29, v28);
  if (qword_10093FFB8 != -1)
  {
    swift_once();
  }

  v31 = v48;
  v32 = sub_10000A61C(v48, qword_10099EA70);
  v33 = objc_allocWithZone(type metadata accessor for CappedSizeRoundedTitledButton(0));
  v34 = v46;
  (*(v47 + 16))(v46, v32, v31);
  v35 = UIContentSizeCategoryExtraExtraExtraLarge;
  v36 = sub_10035D854(v30, v34, UIContentSizeCategoryExtraExtraExtraLarge, v33);

  *(v0 + v27) = v36;
  v37 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView;
  type metadata accessor for FootnoteView();
  *(v0 + v37) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v38 = (v0 + OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v0 + OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_buttonActionBlock);
  *v39 = 0;
  v39[1] = 0;
  v40 = OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_metrics;
  v41 = sub_100763E2C();
  (*(*(v41 - 8) + 56))(v0 + v40, 1, 1, v41);
  sub_10077156C();
  __break(1u);
}

double sub_10035E170()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteView);
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_isHighlighted) = 0;
  if (qword_10093F800 != -1)
  {
    swift_once();
  }

  [*(v1 + OBJC_IVAR____TtC20ProductPageExtension12FootnoteView_textLabel) setTextColor:qword_100949F38];
  v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock);
  if (v3)
  {
    v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30ArcadeFooterCollectionViewCell_footnoteActionBlock + 8);

    v3(v5);

    return sub_1000167E0(v3, v4);
  }

  return result;
}

void sub_10035E248(uint64_t a1, void *a2)
{
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  swift_beginAccess();
  [a2 contentMode];
  sub_10076BFCC();
  sub_10076BF7C();
  sub_10075FCCC();
  [a2 setContentMode:sub_10076BDBC()];
  sub_100764ADC();
  sub_10075FD0C();
  if (!sub_10076BE1C())
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    sub_100770D5C();
  }

  sub_10075FB8C();
  if (*(v2 + 56))
  {
    sub_10075FD2C();
    sub_10035E400(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);

    sub_100760B8C();
  }
}

uint64_t sub_10035E400(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10035E448(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100953D78, &qword_10079D3B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 ProductLockupInlineUberLayout.init(metrics:keylineView:blurView:darkeningOverlayEffectView:wordmarkView:iconView:titleLabel:subtitleLabel:shareButton:offerButton:expandedOfferSubtitleLabel:downloadProgressLabel:arrowView:bannerView:secondaryBannerView:shadowView:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>, uint64_t a11, __int128 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_1001B6654(a1, a9, a10);
  v22 = type metadata accessor for ProductLockupInlineUberLayout(0);
  v23 = a9 + v22[5];
  v24 = *(a2 + 16);
  *v23 = *a2;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a2 + 32);
  sub_100012498(a3, a9 + v22[6]);
  v25 = a9 + v22[7];
  v26 = *(a4 + 16);
  *v25 = *a4;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a4 + 32);
  sub_100012498(a5, a9 + v22[10]);
  sub_100012498(a6, a9 + v22[8]);
  sub_100012498(a7, a9 + v22[9]);
  sub_100012498(a8, a9 + v22[11]);
  v27 = a9 + v22[12];
  v28 = *(a11 + 16);
  *v27 = *a11;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a11 + 32);
  sub_100012498(a12, a9 + v22[13]);
  v29 = a9 + v22[14];
  v30 = *(a13 + 16);
  *v29 = *a13;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a13 + 32);
  v31 = a9 + v22[15];
  v32 = *(a14 + 16);
  *v31 = *a14;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a14 + 32);
  v33 = a9 + v22[16];
  v34 = *(a15 + 16);
  *v33 = *a15;
  *(v33 + 16) = v34;
  *(v33 + 32) = *(a15 + 32);
  v35 = a9 + v22[17];
  v36 = *(a16 + 16);
  *v35 = *a16;
  *(v35 + 16) = v36;
  *(v35 + 32) = *(a16 + 32);
  v37 = a9 + v22[18];
  v38 = *(a17 + 16);
  *v37 = *a17;
  *(v37 + 16) = v38;
  *(v37 + 32) = *(a17 + 32);
  v39 = a9 + v22[19];
  result = *a18;
  v41 = *(a18 + 16);
  *v39 = *a18;
  *(v39 + 16) = v41;
  *(v39 + 32) = *(a18 + 32);
  return result;
}

double ProductLockupInlineUberLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_100362124(a1, v3, a2, a3);
}

void static ProductLockupInlineUberLayout.estimatedPaddingForLabels(metrics:in:)(uint64_t a1, void *a2)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a2 traitCollection];
  v9 = sub_1007706FC();

  if (v9)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10076D17C();
    sub_10075FE7C();
    (*(v4 + 8))(v7, v3);
  }
}

double sub_10035EAE8@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_100016E2C(v1 + *(v3 + 56), &v9, &qword_10094BB30, qword_100796E40);
  if (v10)
  {
    sub_100012498(&v9, v11);
    v4 = v12;
    v5 = v13;
    v6 = sub_10000CF78(v11, v12);
    *(a1 + 24) = v4;
    *(a1 + 32) = *(v5 + 8);
    v7 = sub_10000DB7C(a1);
    (*(*(v4 - 8) + 16))(v7, v6, v4);
LABEL_3:
    sub_10000CD74(v11);
    return result;
  }

  sub_10000CFBC(&v9, &qword_10094BB30, qword_100796E40);
  sub_100016E2C(v1 + *(v3 + 60), &v9, &unk_10094DA00, &qword_100783FA0);
  if (v10)
  {
    sub_100012498(&v9, v11);
    sub_10000CF78(v11, v12);
    if ((sub_10076D24C() & 1) == 0)
    {
      sub_10000A570(v11, a1);
      goto LABEL_3;
    }

    sub_10000CD74(v11);
  }

  else
  {
    sub_10000CFBC(&v9, &unk_10094DA00, &qword_100783FA0);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ProductLockupInlineUberLayout.Metrics.init(iconSize:wordmarkSpace:titleSpace:subtitleSpace:offerButtonTopSpace:offerButtonBottomSpace:shareButtonSpace:bannerViewHeight:secondaryBannerViewHeight:expandedOfferSubtitleSpace:expandedOfferSubtitleBottomSpace:chevronSpace:backgroundMaxWidth:backgroundHorizontalPadding:backgroundHorizontalContentPadding:blurHeight:darkeningOverlayHeight:contentInsets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, __int128 *a16, __int128 *a17, uint64_t a18, __int128 *a19, uint64_t a20, uint64_t a21, __int128 *a22, __int128 *a23)
{
  a9[4] = a10;
  a9[5] = a11;
  v32 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v33 = v32[7];
  v34 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v35 = *(*(v34 - 8) + 32);
  v35(a9 + v33, a1, v34);
  v35(a9 + v32[6], a2, v34);
  v35(a9 + v32[8], a3, v34);
  sub_100012498(a4, a9 + v32[9]);
  v35(a9 + v32[10], a5, v34);
  sub_100012498(a6, a9 + v32[14]);
  sub_100012498(a7, a9 + v32[15]);
  sub_100012498(a8, a9 + v32[16]);
  sub_100012498(a16, a9 + v32[11]);
  sub_100012498(a17, a9 + v32[12]);
  v36 = v32[13];
  v37 = sub_10000A5D4(&unk_100952280, &qword_10079D3C0);
  (*(*(v37 - 8) + 32))(a9 + v36, a18, v37);
  sub_100012498(a19, a9 + v32[17]);
  v35(a9 + v32[18], a20, v34);
  v35(a9 + v32[19], a21, v34);
  sub_100012498(a22, a9 + v32[20]);
  result = sub_100012498(a23, a9 + v32[21]);
  *a9 = a12;
  a9[1] = a13;
  a9[2] = a14;
  a9[3] = a15;
  return result;
}

uint64_t ProductLockupInlineUberLayout.Metrics.titleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 24);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.titleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 24);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.wordmarkSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 28);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.wordmarkSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 28);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.subtitleSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 32);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.subtitleSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 32);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 36);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonBottomSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 40);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.offerButtonBottomSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 40);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.expandedOfferSubtitleSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 44);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.expandedOfferSubtitleBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 48);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.chevronSpace.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 52);
  v4 = sub_10000A5D4(&unk_100952280, &qword_10079D3C0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.chevronSpace.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 52);
  v4 = sub_10000A5D4(&unk_100952280, &qword_10079D3C0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.shareButtonSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 56);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.bannerViewHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 60);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.secondaryBannerViewHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 64);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundMaxWidth.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 68);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalPadding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 72);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalPadding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 72);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalContentPadding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 76);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.backgroundHorizontalContentPadding.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 76);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ProductLockupInlineUberLayout.Metrics.blurHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 80);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.Metrics.darkeningOverlayHeight.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0) + 84);
  sub_10000CD74((v1 + v3));

  return sub_100012498(a1, v1 + v3);
}

uint64_t ProductLockupInlineUberLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v172 = a2;
  v174 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v169 = *(v174 - 8);
  __chkstk_darwin(v174);
  v168 = &v167 - v13;
  v14 = sub_10077164C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100102A30(a3, a4, a5, a6, *v6, v6[1]);
  v190 = v19;
  v187 = v20;
  v192 = v21;
  *&v22 = COERCE_DOUBLE(type metadata accessor for ProductLockupInlineUberLayout.Metrics(0));
  v23 = (v6 + v22[15]);
  v24 = v23[3];
  sub_10000CF78(v23, v24);
  sub_1000FF02C(v24);
  sub_10076D40C();
  v173 = v25;
  v28 = *(v15 + 8);
  v26 = v15 + 8;
  v27 = v28;
  v28(v17, v14);
  v29 = (v6 + v22[16]);
  v30 = v29[3];
  sub_10000CF78(v29, v30);
  sub_1000FF02C(v30);
  sub_10076D40C();
  v176 = v31;
  v193 = v14;
  v28(v17, v14);
  v32 = [a1 traitCollection];
  LOBYTE(v30) = sub_1007706EC();

  if ((v30 & 1) == 0 || (sub_10035EAE8(&v196), v33 = v197, sub_10000CFBC(&v196, &unk_10094DA00, &qword_100783FA0), !v33))
  {
    sub_10000A5D4(&unk_100952280, &qword_10079D3C0);
    v34 = v168;
    sub_10075FE9C();
    sub_10076D17C();
    sub_10075FE7C();
    v27(v17, v193);
    (*(v169 + 8))(v34, v174);
  }

  v35 = [a1 traitCollection];
  v36 = sub_1007706EC();

  v179 = a3;
  v185 = v26;
  v188 = v18;
  v191 = v27;
  v189 = *&v22;
  v180 = a6;
  v177 = a5;
  v178 = a4;
  if (v36)
  {
    v37 = type metadata accessor for ProductLockupInlineUberLayout(0);
    v38 = (v7 + *(v37 + 24));
    v39 = v38[3];
    v186 = v38[4];
    v184 = COERCE_DOUBLE(sub_10000CF78(v38, v39));
    v199.origin.x = a3;
    v199.origin.y = a4;
    v199.size.width = a5;
    v199.size.height = a6;
    CGRectGetMinX(v199);
    v200.origin.x = a3;
    v200.origin.y = a4;
    v200.size.width = a5;
    v200.size.height = a6;
    CGRectGetMaxY(v200);
    v40 = (v7 + v22[20]);
    v41 = v40[3];
    sub_10000CF78(v40, v41);
    sub_1000FF02C(v41);
    v42 = v193;
    sub_10076D40C();
    v191(v17, v42);
    v201.origin.x = a3;
    v201.origin.y = a4;
    v201.size.width = a5;
    v201.size.height = a6;
    CGRectGetWidth(v201);
    v43 = v40[3];
    sub_10000CF78(v40, v43);
    sub_1000FF02C(v43);
    sub_10076D40C();
    v44 = v42;
    v27 = v191;
    v191(v17, v44);
    sub_10076D23C();
    v186 = v37;
    sub_100016E2C(v7 + *(v37 + 28), &v196, &unk_10094DA00, &qword_100783FA0);
    if (v197)
    {
      v184 = v198;
      sub_10000CF78(&v196, v197);
      v202.origin.x = a3;
      v202.origin.y = a4;
      v202.size.width = a5;
      v202.size.height = a6;
      CGRectGetMinX(v202);
      v203.origin.x = a3;
      v203.origin.y = a4;
      v203.size.width = a5;
      v203.size.height = a6;
      CGRectGetMaxY(v203);
      v45 = (v7 + *(*&v189 + 84));
      v46 = v45[3];
      sub_10000CF78(v45, v46);
      sub_1000FF02C(v46);
      v47 = v193;
      sub_10076D40C();
      v191(v17, v47);
      v204.origin.x = a3;
      v204.origin.y = a4;
      v204.size.width = a5;
      v204.size.height = a6;
      CGRectGetWidth(v204);
      v48 = v45[3];
      sub_10000CF78(v45, v48);
      sub_1000FF02C(v48);
      sub_10076D40C();
      v49 = v47;
      v27 = v191;
      v191(v17, v49);
      sub_10076D23C();
      sub_10000CD74(&v196);
    }

    else
    {
      sub_10000CFBC(&v196, &unk_10094DA00, &qword_100783FA0);
    }

    v62 = v187;
    sub_100016E2C(v7 + v186[5], &v196, &unk_10094DA00, &qword_100783FA0);
    v18 = v188;
    if (v197)
    {
      sub_10000CF78(&v196, v197);
      v63 = v179;
      v206.origin.x = v179;
      v206.origin.y = a4;
      v206.size.width = a5;
      v206.size.height = a6;
      CGRectGetMinX(v206);
      v207.origin.x = v63;
      v207.origin.y = a4;
      v207.size.width = a5;
      v207.size.height = a6;
      CGRectGetMinY(v207);
      v208.origin.x = v63;
      v208.origin.y = a4;
      v208.size.width = a5;
      v208.size.height = a6;
      CGRectGetWidth(v208);
      if (qword_1009401A8 != -1)
      {
        swift_once();
      }

      sub_10000A61C(v174, qword_10099F070);
      sub_10076D17C();
      sub_10075FE7C();
      v27(v17, v193);
      v64 = [a1 traitCollection];
      [v64 displayScale];

      sub_10076D23C();
      sub_10000CD74(&v196);
      v18 = v188;
      v62 = v187;
    }

    else
    {
      sub_10000CFBC(&v196, &unk_10094DA00, &qword_100783FA0);
    }
  }

  else
  {
    v205.origin.x = a3;
    v205.origin.y = a4;
    v205.size.width = a5;
    v205.size.height = a6;
    Width = CGRectGetWidth(v205);
    v51 = (v7 + v22[17]);
    v52 = v51[3];
    sub_10000CF78(v51, v52);
    sub_1000FF02C(v52);
    sub_10076D40C();
    v54 = v53;
    v55 = v193;
    v27(v17, v193);
    v56 = (Width - v54) * 0.5;
    sub_10076D17C();
    sub_10075FE7C();
    v58 = v57;
    v27(v17, v55);
    if (v56 > v58)
    {
      v59 = v56;
    }

    else
    {
      v59 = v58;
    }

    v60 = floor(v59);
    v61 = type metadata accessor for ProductLockupInlineUberLayout(0);
    sub_10000CF78((v7 + *(v61 + 24)), *(v7 + *(v61 + 24) + 24));
    sub_100102A30(a3, a4, a5, a6, 0.0, v60);
    sub_10076D23C();
    v186 = v61;
    sub_100016E2C(v7 + *(v61 + 20), &v196, &unk_10094DA00, &qword_100783FA0);
    if (v197)
    {
      sub_10000CF78(&v196, v197);
      sub_10076D23C();
      sub_10000CD74(&v196);
    }

    else
    {
      sub_10000CFBC(&v196, &unk_10094DA00, &qword_100783FA0);
    }

    v62 = v187;
  }

  v209.origin.x = v18;
  v65 = v190;
  v209.origin.y = v190;
  v209.size.width = v62;
  v66 = v192;
  v209.size.height = v192;
  MidX = CGRectGetMidX(v209);
  v68 = v7[4];
  v69 = floor(MidX - v68 * 0.5);
  v210.origin.x = v18;
  v210.origin.y = v65;
  v210.size.width = v62;
  v210.size.height = v66;
  MinY = CGRectGetMinY(v210);
  v71 = v7[5];
  v72 = floor(MinY - v71 * 0.5);
  type metadata accessor for ProductLockupInlineUberLayout(0);
  v73 = v186;
  v74 = (v7 + v186[8]);
  sub_10000CF78(v74, v74[3]);
  v183 = v69;
  v181 = v72;
  v184 = v68;
  v182 = v71;
  sub_100770A4C();
  sub_10076D23C();
  sub_100016E2C(v7 + v73[19], &v196, &unk_10094DA00, &qword_100783FA0);
  if (v197)
  {
    sub_10000CF78(&v196, v197);
    sub_10000CF78(v74, v74[3]);
    v27 = v191;
    sub_10076D22C();
    sub_10076D23C();
    sub_10000CD74(&v196);
  }

  else
  {
    sub_10000CFBC(&v196, &unk_10094DA00, &qword_100783FA0);
  }

  v75 = [a1 traitCollection];
  v76 = sub_1007706FC();

  v77 = 0.0;
  if (v76)
  {
    sub_10076D17C();
    sub_10075FE7C();
    v77 = v78;
    v27(v17, v193);
  }

  v79 = (v7 + v186[10]);
  sub_10000CF78(v79, v79[3]);
  v211.origin.x = v18;
  v80 = v190;
  v211.origin.y = v190;
  v211.size.width = v62;
  v81 = v192;
  v211.size.height = v192;
  CGRectGetWidth(v211);
  v171 = v77;
  v170 = v77 + v77;
  v212.origin.x = v18;
  v212.origin.y = v80;
  v212.size.width = v62;
  v212.size.height = v81;
  CGRectGetMaxY(v212);
  v213.origin.x = v183;
  v213.origin.y = v181;
  v213.size.width = v184;
  v213.size.height = v182;
  CGRectGetMaxY(v213);
  sub_10076D2AC();
  sub_10076D17C();
  sub_10075FE7C();
  v83 = v82;
  v27(v17, v193);
  v196 = v83;
  v84 = v187;
  sub_10076D42C();
  sub_10000CF78(v79, v79[3]);
  v214.origin.x = v18;
  v214.origin.y = v80;
  v214.size.width = v84;
  v214.size.height = v81;
  CGRectGetMinX(v214);
  v215.origin.x = v18;
  v215.origin.y = v80;
  v215.size.width = v84;
  v215.size.height = v81;
  CGRectGetWidth(v215);
  v216.origin.x = v183;
  v216.origin.y = v181;
  v216.size.width = v184;
  v216.size.height = v182;
  CGRectGetMaxY(v216);
  sub_10076D23C();
  v85 = [a1 traitCollection];
  v86 = sub_1007706EC();

  if (v86)
  {
    v87 = v188;
    v217.origin.x = v188;
    v217.origin.y = v80;
    v217.size.width = v84;
    v217.size.height = v81;
    MinX = CGRectGetMinX(v217);
    sub_10000CF78(v79, v79[3]);
    sub_10076D22C();
    MaxY = CGRectGetMaxY(v218);
    v219.origin.x = v87;
    v219.origin.y = v80;
    v219.size.width = v84;
    v219.size.height = v81;
    v89 = CGRectGetWidth(v219);
    v90 = v80;
    v91 = v89;
    v92 = v87;
    v93 = v84;
    v94 = v81;
    v95 = v186;
  }

  else
  {
    v96 = v186;
    v97 = (v7 + v186[6]);
    sub_10000CF78(v97, v97[3]);
    sub_10076D22C();
    MinX = CGRectGetMinX(v220);
    sub_10000CF78(v79, v79[3]);
    sub_10076D22C();
    MaxY = CGRectGetMaxY(v221);
    sub_10000CF78(v97, v97[3]);
    sub_10076D22C();
    v91 = CGRectGetWidth(v222);
    sub_10000CF78(v97, v97[3]);
    sub_10076D22C();
    v95 = v96;
  }

  v98 = CGRectGetMaxY(*&v92);
  v223.origin.x = v183;
  v223.origin.y = v181;
  v223.size.width = v184;
  v223.size.height = v182;
  v99 = v98 - CGRectGetMaxY(v223);
  v100 = v91 - v170;
  v101 = v171 + MinX;
  v102 = (v7 + v95[9]);
  sub_10000CF78(v102, *(v102 + 3));
  sub_10076D2AC();
  v184 = v103;
  v183 = v104;
  v182 = v105;
  v106 = (v7 + v95[11]);
  sub_10000CF78(v106, *(v106 + 3));
  sub_10076D2AC();
  v170 = v107;
  v171 = v108;
  v167 = v109;
  v181 = v110;
  sub_10000CF78(v102, *(v102 + 3));
  v224.origin.x = v101;
  v111 = MaxY;
  v224.origin.y = MaxY;
  v224.size.width = v100;
  v224.size.height = v99;
  CGRectGetMinX(v224);
  v225.origin.x = v101;
  v225.origin.y = v111;
  v225.size.width = v100;
  v225.size.height = v99;
  CGRectGetMinY(v225);
  sub_10076D17C();
  sub_10075FE7C();
  v113 = v112;
  v191(v17, v193);
  v196 = v113;
  v114 = v182;
  sub_10076D42C();
  v226.origin.x = v101;
  v226.origin.y = v111;
  v226.size.width = v100;
  v226.size.height = v99;
  CGRectGetWidth(v226);
  sub_10076D23C();
  sub_10000CF78(v106, *(v106 + 3));
  if (sub_10076D20C())
  {
    v115 = *(v106 + 3);
    v184 = v106[4];
    sub_10000CF78(v106, v115);
    v227.origin.x = v101;
    v116 = MaxY;
    v227.origin.y = MaxY;
    v227.size.width = v100;
    v227.size.height = v99;
    v183 = CGRectGetMinX(v227);
    sub_10000CF78(v102, *(v102 + 3));
    sub_10076D22C();
    CGRectGetMaxY(v228);
    sub_10076D17C();
    sub_10075FE7C();
    v118 = v117;
    v191(v17, v193);
    v196 = v118;
    v119 = v181;
    sub_10076D42C();
    v229.origin.x = v101;
    v229.origin.y = v116;
    v229.size.width = v100;
    v229.size.height = v99;
    CGRectGetWidth(v229);
    sub_10076D23C();
  }

  else
  {
    sub_10000CF78(v106, *(v106 + 3));
    sub_10076D23C();
    v106 = v102;
    v119 = v114;
  }

  v120 = v192;
  sub_10000CF78(v106, *(v106 + 3));
  sub_10076D22C();
  v184 = CGRectGetMaxY(v230) - v119;
  v121 = v186;
  v122 = (v7 + v186[13]);
  sub_10000CF78(v122, v122[3]);
  v123 = v187;
  sub_10076D2AC();
  v125 = v124;
  v127 = v126;
  v128 = v188;
  v231.origin.x = v188;
  v129 = v190;
  v231.origin.y = v190;
  v231.size.width = v123;
  v231.size.height = v120;
  v130 = floor(CGRectGetMidX(v231) + v125 * -0.5);
  v131 = (v7 + *(*&v189 + 36));
  v132 = v131[3];
  sub_10000CF78(v131, v132);
  sub_1000FF02C(v132);
  sub_10076D40C();
  v134 = v133;
  v191(v17, v193);
  v135 = floor(v184 + v134);
  sub_10000CF78(v122, v122[3]);
  v182 = v130;
  v181 = v135;
  v184 = v125;
  v183 = v127;
  sub_100770A4C();
  sub_10076D23C();
  sub_100016E2C(v7 + v121[17], &v194, &unk_10094DA00, &qword_100783FA0);
  if (v195)
  {
    sub_100012498(&v194, &v196);
    v136 = v179;
    v232.origin.x = v179;
    v137 = v178;
    v232.origin.y = v178;
    v138 = v177;
    v232.size.width = v177;
    v139 = v180;
    v232.size.height = v180;
    MaxY = CGRectGetMinX(v232);
    v233.origin.x = v128;
    v233.origin.y = v129;
    v233.size.width = v123;
    v233.size.height = v120;
    CGRectGetMaxY(v233);
    v234.origin.x = v136;
    v234.origin.y = v137;
    v234.size.width = v138;
    v234.size.height = v139;
    CGRectGetWidth(v234);
    sub_10000CF78(&v196, v197);
    sub_10076D23C();
    sub_10000CD74(&v196);
  }

  else
  {
    sub_10000CFBC(&v194, &unk_10094DA00, &qword_100783FA0);
  }

  sub_100016E2C(v7 + v121[18], &v194, &unk_10094DA00, &qword_100783FA0);
  if (v195)
  {
    sub_100012498(&v194, &v196);
    v140 = v179;
    v235.origin.x = v179;
    v141 = v178;
    v235.origin.y = v178;
    v142 = v177;
    v235.size.width = v177;
    v143 = v180;
    v235.size.height = v180;
    CGRectGetMinX(v235);
    v236.origin.x = v188;
    v236.origin.y = v190;
    v236.size.width = v123;
    v236.size.height = v192;
    CGRectGetMaxY(v236);
    v237.origin.x = v140;
    v237.origin.y = v141;
    v237.size.width = v142;
    v237.size.height = v143;
    CGRectGetWidth(v237);
    sub_10000CF78(&v196, v197);
    sub_10076D23C();
    sub_10000CD74(&v196);
  }

  else
  {
    sub_10000CFBC(&v194, &unk_10094DA00, &qword_100783FA0);
  }

  v144 = v189;
  sub_10035EAE8(&v194);
  if (v195)
  {
    sub_100012498(&v194, &v196);
    sub_10000CF78(&v196, v197);
    sub_10076D2AC();
    v238.origin.x = v188;
    v238.origin.y = v190;
    v238.size.width = v123;
    v238.size.height = v192;
    CGRectGetMidX(v238);
    v239.origin.x = v182;
    v239.origin.y = v181;
    v239.size.width = v184;
    v239.size.height = v183;
    CGRectGetMaxY(v239);
    sub_10000CF78((v7 + *(*&v144 + 44)), *(v7 + *(*&v144 + 44) + 24));
    v145 = v192;
    sub_10076D42C();
    sub_10000CF78(&v196, v197);
    v123 = v187;
    sub_10076D23C();
    sub_10000CD74(&v196);
  }

  else
  {
    sub_10000CFBC(&v194, &unk_10094DA00, &qword_100783FA0);
    v145 = v192;
  }

  sub_100016E2C(v7 + v121[16], &v194, &unk_10094DA00, &qword_100783FA0);
  v146 = v188;
  if (v195)
  {
    sub_100012498(&v194, &v196);
    v147 = [a1 traitCollection];
    v148 = sub_10077071C();

    if (v148 & 1) != 0 || (sub_10035EAE8(&v194), v149 = v195, sub_10000CFBC(&v194, &unk_10094DA00, &qword_100783FA0), v149) && (v150 = [a1 traitCollection], v151 = sub_1007706EC(), v150, (v151))
    {
      sub_10000CF78(&v196, v197);
    }

    else
    {
      sub_10000CF78(&v196, v197);
      sub_10076D2BC();
      v240.origin.x = v146;
      v152 = v190;
      v240.origin.y = v190;
      v240.size.width = v187;
      v240.size.height = v145;
      CGRectGetMidX(v240);
      v241.origin.x = v146;
      v241.origin.y = v152;
      v241.size.width = v187;
      v241.size.height = v145;
      CGRectGetMaxY(v241);
      sub_10000A5D4(&unk_100952280, &qword_10079D3C0);
      v153 = v168;
      sub_10075FE9C();
      sub_10076D17C();
      sub_10075FE7C();
      v191(v17, v193);
      (*(v169 + 8))(v153, v174);
      v146 = v188;
      sub_10000CF78(&v196, v197);
      v123 = v187;
      sub_10076D23C();
      sub_10000CF78(&v196, v197);
    }

    sub_10076D25C();
    sub_10000CD74(&v196);
  }

  else
  {
    sub_10000CFBC(&v194, &unk_10094DA00, &qword_100783FA0);
  }

  sub_100016E2C(v7 + v121[12], &v194, &unk_10094DA00, &qword_100783FA0);
  if (v195)
  {
    sub_100012498(&v194, &v196);
    sub_10000CF78(&v196, v197);
    sub_10076D2BC();
    v154 = v123;
    v156 = v155;
    v184 = v155;
    v187 = v157;
    sub_10000CF78((v7 + v121[6]), *(v7 + v121[6] + 24));
    sub_10076D22C();
    v158 = CGRectGetMaxX(v242) - v156;
    v159 = (v7 + *(*&v144 + 56));
    v160 = v159[3];
    sub_10000CF78(v159, v160);
    sub_1000FF02C(v160);
    sub_10076D40C();
    v162 = v161;
    v163 = v193;
    v164 = v191;
    v191(v17, v193);
    v189 = v158 - v162;
    v243.origin.x = v146;
    v243.origin.y = v190;
    v243.size.width = v154;
    v243.size.height = v145;
    CGRectGetMinY(v243);
    v165 = v159[3];
    sub_10000CF78(v159, v165);
    sub_1000FF02C(v165);
    sub_10076D40C();
    v164(v17, v163);
    sub_10000CF78(&v196, v197);
    sub_100770A4C();
    sub_10076D23C();
    sub_10000CD74(&v196);
  }

  else
  {
    sub_10000CFBC(&v194, &unk_10094DA00, &qword_100783FA0);
  }

  return sub_10076D1BC();
}

double ProductLockupInlineUberLayout.offerButtonMinYDistanceFromBottom(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = sub_10077164C();
  v6 = *(v5 - 8);
  v30 = v5;
  v31 = v6;
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_10000CF78((v3 + *(v13 + 52)), *(v3 + *(v13 + 52) + 24));
  sub_10076D2BC();
  v15 = v14;
  v16 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10000A5D4(&unk_100952280, &qword_10079D3C0);
  sub_10075FE9C();
  sub_10076D17C();
  sub_10075FE7C();
  v18 = v17;
  v19 = v30;
  v20 = *(v31 + 8);
  v31 += 8;
  v20(v8, v30);
  (*(v10 + 8))(v12, v9);
  v21 = (v3 + *(v16 + 60));
  v22 = v21[3];
  sub_10000CF78(v21, v22);
  sub_1000FF02C(v22);
  sub_10076D40C();
  v24 = v23;
  v20(v8, v19);
  v25 = (v4 + *(v16 + 64));
  v26 = v25[3];
  sub_10000CF78(v25, v26);
  sub_1000FF02C(v26);
  sub_10076D40C();
  v28 = v27;
  v20(v8, v19);
  return v15 + v18 + v24 + v28;
}

double sub_100362124(void *a1, double *a2, double a3, double a4)
{
  v7 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v65 = *(v7 - 8);
  v66 = v7;
  __chkstk_darwin(v7);
  v64 = v60 - v8;
  v9 = sub_10077164C();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v15 = sub_1007706EC();

  v63 = v10;
  if ((v15 & 1) == 0)
  {
    v16 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    v17 = (a2 + v16[15]);
    v18 = v17[3];
    sub_10000CF78(v17, v18);
    sub_1000FF02C(v18);
    sub_10076D40C();
    v19 = *(v10 + 8);
    v19(v13, v9);
    v20 = (a2 + v16[16]);
    v21 = v20[3];
    sub_10000CF78(v20, v21);
    sub_1000FF02C(v21);
    sub_10076D40C();
    v19(v13, v9);
    v22 = (a2 + v16[17]);
    v23 = v22[3];
    sub_10000CF78(v22, v23);
    sub_1000FF02C(v23);
    v24 = v64;
    sub_10076D40C();
    v19(v13, v9);
    sub_10076D17C();
    sub_10075FE7C();
    v19(v13, v9);
    sub_10000A5D4(&unk_100952280, &qword_10079D3C0);
    sub_10075FE9C();
    sub_10076D17C();
    sub_10075FE7C();
    v19(v13, v9);
    v10 = v63;
    (*(v65 + 8))(v24, v66);
  }

  sub_100770ACC();
  v26 = v25;
  v27 = [a1 traitCollection];
  v28 = sub_1007706FC();

  if (v28)
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10076D17C();
    sub_10075FE7C();
    (*(v10 + 8))(v13, v9);
  }

  v62 = v26;
  v29 = type metadata accessor for ProductLockupInlineUberLayout(0);
  sub_10000CF78((a2 + *(v29 + 36)), *(a2 + *(v29 + 36) + 24));
  sub_10076D2AC();
  v60[2] = v30;
  v60[4] = v31;
  v60[1] = v32;
  v60[3] = v33;
  v61 = v29;
  v34 = (a2 + *(v29 + 44));
  sub_10000CF78(v34, v34[3]);
  sub_10076D2AC();
  sub_10000CF78(v34, v34[3]);
  if (sub_10076D20C())
  {
    type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10076D17C();
    sub_10075FE7C();
    v36 = v35;
    (*(v10 + 8))(v13, v9);
    v69[0] = v36;
    sub_10076D42C();
  }

  sub_10035EAE8(&v67);
  if (v68)
  {
    sub_100012498(&v67, v69);
    sub_10000CF78(v69, v70);
    sub_10076D2AC();
    v37 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
    sub_10000CF78((a2 + *(v37 + 44)), *(a2 + *(v37 + 44) + 24));
    sub_10076D42C();
    v38 = (a2 + *(v37 + 48));
    v39 = v38[3];
    sub_10000CF78(v38, v39);
    sub_1000FF02C(v39);
    sub_10076D40C();
    (*(v10 + 8))(v13, v9);
    sub_10000CD74(v69);
  }

  else
  {
    sub_10000CFBC(&v67, &unk_10094DA00, &qword_100783FA0);
  }

  v40 = v65;
  sub_10035EAE8(v69);
  v41 = v70;
  sub_10000CFBC(v69, &unk_10094DA00, &qword_100783FA0);
  if (!v41)
  {
    v42 = [a1 traitCollection];
    v43 = sub_1007706FC();

    if (v43 & 1) != 0 || (v44 = [a1 traitCollection], v45 = sub_10077071C(), v44, (v45))
    {
      type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
      sub_10076D17C();
      sub_10075FE7C();
      (*(v10 + 8))(v13, v9);
    }
  }

  v46 = [a1 traitCollection];
  v47 = sub_1007706EC();

  if (v47)
  {
    sub_10035EAE8(v69);
    sub_10000CFBC(v69, &unk_10094DA00, &qword_100783FA0);
  }

  v48 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10000A5D4(&unk_100952280, &qword_10079D3C0);
  v49 = v64;
  sub_10075FE9C();
  sub_10076D17C();
  sub_10075FE7C();
  v50 = *(v63 + 8);
  v50(v13, v9);
  (*(v40 + 8))(v49, v66);
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10076D17C();
  sub_10075FE7C();
  v50(v13, v9);
  sub_10076D17C();
  sub_10075FE7C();
  v52 = v51;
  v50(v13, v9);
  v69[0] = v52;
  sub_10076D42C();
  v53 = (a2 + v48[9]);
  v54 = v53[3];
  sub_10000CF78(v53, v54);
  sub_1000FF02C(v54);
  sub_10076D40C();
  v50(v13, v9);
  sub_10000CF78((a2 + *(v61 + 52)), *(a2 + *(v61 + 52) + 24));
  sub_10076D2BC();
  v55 = (a2 + v48[15]);
  v56 = v55[3];
  sub_10000CF78(v55, v56);
  sub_1000FF02C(v56);
  sub_10076D40C();
  v50(v13, v9);
  v57 = (a2 + v48[16]);
  v58 = v57[3];
  sub_10000CF78(v57, v58);
  sub_1000FF02C(v58);
  sub_10076D40C();
  v50(v13, v9);
  return a3;
}

uint64_t sub_100362C64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100362CC8(uint64_t a1)
{
  *(a1 + 8) = sub_100362D30(&qword_100952270, &protocol conformance descriptor for ProductLockupInlineUberLayout);
  result = sub_100362D30(&qword_100953D88, &protocol conformance descriptor for ProductLockupInlineUberLayout);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100362D30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProductLockupInlineUberLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100362D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100362E5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

void sub_100362F18(uint64_t a1)
{
  type metadata accessor for ProductLockupInlineUberLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_1001A3380(319, &qword_100950F80, &qword_10094CF50, &unk_100791F20);
    if (v2 <= 0x3F)
    {
      sub_100102F90(319, &unk_100950F60, &protocol descriptor for LayoutView);
      if (v3 <= 0x3F)
      {
        sub_100102F90(319, &qword_100953E00, &protocol descriptor for LayoutTextView);
        if (v4 <= 0x3F)
        {
          sub_1001A3380(319, &unk_100950F70, &unk_100953E10, &unk_100784160);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_100363078(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[6];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[9] + 24);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10000A5D4(&unk_100952280, &qword_10079D3C0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[13];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1003631D0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[6];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[9] + 24) = (a2 - 1);
  }

  else
  {
    v13 = sub_10000A5D4(&unk_100952280, &qword_10079D3C0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[13];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_100363314(uint64_t a1)
{
  type metadata accessor for UIEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      sub_100363428(319);
      if (v3 <= 0x3F)
      {
        sub_100102F90(319, &qword_10094BAA0, &protocol descriptor for AnyDimension);
        if (v4 <= 0x3F)
        {
          sub_100363494(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100363428(uint64_t a1)
{
  if (!qword_100953EE0)
  {
    sub_10000CE78(&unk_100943120, &unk_100784C10);
    v1 = sub_10075FEBC();
    if (!v2)
    {
      atomic_store(v1, &qword_100953EE0);
    }
  }
}

void sub_100363494(uint64_t a1)
{
  if (!qword_100953EE8)
  {
    sub_10000CE78(&unk_100945BD0, qword_100796680);
    v1 = sub_10075FEBC();
    if (!v2)
    {
      atomic_store(v1, &qword_100953EE8);
    }
  }
}

unint64_t sub_100363508()
{
  result = qword_1009509F8;
  if (!qword_1009509F8)
  {
    type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009509F8);
  }

  return result;
}

double sub_100363560()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076460C();
  v4 = sub_10076461C();
  sub_1005CC3A0(v3, v4);
  v6 = v5;

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_10036364C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a1;
  v104 = a2;
  v100 = sub_10076443C();
  v102 = *(v100 - 8);
  __chkstk_darwin(v100);
  v99 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v101 = &v98 - v4;
  v103 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  __chkstk_darwin(v103);
  v6 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v121 = &v98 - v12;
  __chkstk_darwin(v13);
  v119 = &v98 - v14;
  v15 = sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v120 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v118 = &v98 - v19;
  __chkstk_darwin(v20);
  v116 = &v98 - v21;
  v22 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v117 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v115 = &v98 - v26;
  __chkstk_darwin(v27);
  v114 = &v98 - v28;
  __chkstk_darwin(v29);
  v31 = &v98 - v30;
  v131 = &type metadata for Double;
  v132 = &protocol witness table for Double;
  v129 = &protocol witness table for Double;
  *&v130 = 0;
  v128 = &type metadata for Double;
  *&v127 = 0;
  if (qword_100940118 != -1)
  {
    swift_once();
  }

  v32 = sub_10000A61C(v22, qword_10099EEC0);
  v33 = *(v23 + 16);
  v105 = v31;
  v33(v31, v32, v22);
  if (qword_1009400B8 != -1)
  {
    swift_once();
  }

  v34 = sub_10000A61C(v22, qword_10099EDA0);
  *&v123 = v23 + 16;
  *&v122 = v33;
  v33(v114, v34, v22);
  if (qword_10093FFE8 != -1)
  {
    swift_once();
  }

  v106 = v23;
  v35 = sub_10000A61C(v15, qword_10099EB10);
  v107 = v16;
  v36 = *(v16 + 16);
  v36(v116, v35, v15);
  if (qword_100940160 != -1)
  {
    swift_once();
  }

  v37 = sub_10000A61C(v7, qword_10099EF98);
  v109 = v8;
  v38 = *(v8 + 16);
  v38(v119, v37, v7);
  if (qword_1009400E8 != -1)
  {
    swift_once();
  }

  v39 = sub_10000A61C(v22, qword_10099EE30);
  (v122)(v115, v39, v22);
  if (qword_100940000 != -1)
  {
    swift_once();
  }

  v40 = sub_10000A61C(v15, qword_10099EB58);
  v36(v118, v40, v15);
  if (qword_100940170 != -1)
  {
    swift_once();
  }

  v41 = sub_10000A61C(v7, qword_10099EFC8);
  v38(v121, v41, v7);
  if (qword_100940100 != -1)
  {
    swift_once();
  }

  v42 = sub_10000A61C(v22, qword_10099EE78);
  (v122)(v117, v42, v22);
  if (qword_100940010 != -1)
  {
    swift_once();
  }

  v43 = sub_10000A61C(v15, qword_10099EB88);
  v36(v120, v43, v15);
  if (qword_100940178 != -1)
  {
    swift_once();
  }

  v44 = sub_10000A61C(v7, qword_10099EFE0);
  v108 = v10;
  v110 = v7;
  v38(v10, v44, v7);
  if (qword_100940088 != -1)
  {
    swift_once();
  }

  v45 = sub_10076D9AC();
  v46 = sub_10000A61C(v45, qword_10099ED10);
  v125 = v45;
  v126 = &protocol witness table for StaticDimension;
  v47 = sub_10000DB7C(&v124);
  v48 = (*(v45 - 8) + 16);
  v49 = *v48;
  (*v48)(v47, v46, v45);
  v50 = sub_10077071C();
  v112 = v15;
  v111 = v48;
  if (v50)
  {
    v51 = v6;
    v52 = v36;
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v53 = qword_100944C88;
  }

  else
  {
    v51 = v6;
    v52 = v36;
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v53 = qword_100944CA0;
  }

  v54 = v100;
  v55 = sub_10000A61C(v100, v53);
  v56 = v102;
  v57 = v99;
  (*(v102 + 16))(v99, v55, v54);
  v58 = v101;
  (*(v56 + 32))(v101, v57, v54);
  sub_1007643BC();
  (*(v56 + 8))(v58, v54);
  if (qword_100940018 != -1)
  {
    swift_once();
  }

  v59 = v112;
  v60 = sub_10000A61C(v112, qword_10099EBA0);
  v61 = v103;
  v52(&v51[*(v103 + 20)], v60, v59);
  sub_100763B0C();
  v62 = &v51[*(v61 + 24)];
  *(v62 + 3) = &type metadata for CGFloat;
  *(v62 + 4) = &protocol witness table for CGFloat;
  *v62 = v63;
  sub_100763B1C();
  v64 = *(v61 + 28);
  v113 = v51;
  v65 = &v51[v64];
  *(v65 + 3) = &type metadata for CGFloat;
  *(v65 + 4) = &protocol witness table for CGFloat;
  *v65 = v66;
  v67 = type metadata accessor for ProductLockupLayout.Metrics(0);
  v68 = v104;
  v69 = (v104 + v67[20]);
  v69[3] = &type metadata for CGFloat;
  v69[4] = &protocol witness table for CGFloat;
  *v69 = 0x4030000000000000;
  v70 = v122;
  if (qword_100940130 != -1)
  {
    swift_once();
  }

  v71 = sub_10000A61C(v45, qword_10099EF08);
  v72 = (v68 + v67[21]);
  v72[3] = v45;
  v72[4] = &protocol witness table for StaticDimension;
  v73 = sub_10000DB7C(v72);
  v74 = v49;
  v49(v73, v71, v45);
  if (qword_100940148 != -1)
  {
    swift_once();
  }

  v75 = sub_10000A61C(v22, qword_10099EF50);
  v76 = v68;
  v77 = v22;
  v70(v68 + v67[22], v75, v22);
  v78 = v112;
  if (qword_100940150 != -1)
  {
    swift_once();
  }

  v79 = *&UIEdgeInsetsZero.top;
  v122 = *&UIEdgeInsetsZero.bottom;
  v123 = v79;
  v80 = sub_10000A61C(v45, qword_10099EF68);
  v81 = (v68 + v67[23]);
  v81[3] = v45;
  v81[4] = &protocol witness table for StaticDimension;
  v82 = sub_10000DB7C(v81);
  v74(v82, v80, v45);
  v83 = v105;
  if (qword_100940110 != -1)
  {
    swift_once();
  }

  v84 = sub_10000A61C(v45, qword_10099EEA8);
  v85 = (v76 + v67[24]);
  v85[3] = v45;
  v85[4] = &protocol witness table for StaticDimension;
  v86 = sub_10000DB7C(v85);
  v74(v86, v84, v45);
  v87 = v122;
  *v76 = v123;
  *(v76 + 16) = v87;
  sub_10003F19C(&v130, v76 + 32);
  sub_10003F19C(&v127, v76 + 72);
  *(v76 + 112) = 0;
  *(v76 + 120) = 0;
  v88 = v67[8];
  v89 = *(v106 + 32);
  *&v123 = v89;
  v89(v76 + v88, v83, v77);
  v90 = v76 + v67[9];
  v98 = v77;
  v89(v90, v114, v77);
  v91 = *(v107 + 32);
  v92 = v78;
  v91(v76 + v67[10], v116, v78);
  v93 = *(v109 + 32);
  v94 = v110;
  v93(v76 + v67[11], v119, v110);
  v95 = v77;
  v96 = v123;
  (v123)(v76 + v67[12], v115, v95);
  v91(v76 + v67[13], v118, v92);
  v93(v76 + v67[14], v121, v94);
  v96(v76 + v67[15], v117, v98);
  v91(v76 + v67[16], v120, v92);
  v93(v76 + v67[17], v108, v94);
  sub_10003F19C(&v124, v76 + v67[18]);
  return sub_10036869C(v113, v76 + v67[19]);
}

__n128 sub_10036448C()
{
  v0 = sub_10000A5D4(&unk_100952280, &qword_10079D3C0);
  v44 = *(v0 - 8);
  v45 = v0;
  __chkstk_darwin(v0);
  v43 = &v40 - v1;
  v2 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v48 = &v40 - v7;
  __chkstk_darwin(v8);
  v47 = &v40 - v9;
  __chkstk_darwin(v10);
  v46 = &v40 - v11;
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for ProductLockupInlineUberLayout.Metrics(0);
  sub_10000DB18(v15, qword_10099EAC8);
  v16 = sub_10000A61C(v15, qword_10099EAC8);
  if (qword_1009400D8 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v2, qword_10099EE00);
  v42 = v3;
  v18 = *(v3 + 16);
  v18(v14, v17, v2);
  if (qword_1009400C8 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v2, qword_10099EDD0);
  v18(v46, v19, v2);
  if (qword_1009400F0 != -1)
  {
    swift_once();
  }

  v20 = sub_10000A61C(v2, qword_10099EE48);
  v18(v47, v20, v2);
  v69 = &type metadata for CGFloat;
  v70 = &protocol witness table for CGFloat;
  *&v68 = 0x4031000000000000;
  if (qword_100940090 != -1)
  {
    swift_once();
  }

  v41 = v14;
  v49 = v5;
  v21 = sub_10000A61C(v2, qword_10099ED28);
  v18(v48, v21, v2);
  v67 = &protocol witness table for CGFloat;
  v66 = &type metadata for CGFloat;
  *&v65 = 0x4034000000000000;
  v63 = &type metadata for Double;
  v64 = &protocol witness table for Double;
  *&v62 = 0;
  v60 = &type metadata for Double;
  v61 = &protocol witness table for Double;
  *&v59 = 0;
  if (qword_100940138 != -1)
  {
    swift_once();
  }

  v22 = sub_10076D9AC();
  v23 = sub_10000A61C(v22, qword_10099EF20);
  v57 = v22;
  v58 = &protocol witness table for StaticDimension;
  v24 = sub_10000DB7C(&v56);
  v25 = *(*(v22 - 8) + 16);
  v25(v24, v23, v22);
  if (qword_100940140 != -1)
  {
    swift_once();
  }

  v26 = sub_10000A61C(v22, qword_10099EF38);
  v54 = v22;
  v55 = &protocol witness table for StaticDimension;
  v27 = sub_10000DB7C(&v53);
  v25(v27, v26, v22);
  if (qword_100940098 != -1)
  {
    swift_once();
  }

  v28 = v45;
  v29 = sub_10000A61C(v45, qword_10099ED40);
  v31 = v43;
  v30 = v44;
  (*(v44 + 16))(v43, v29, v28);
  v52 = &protocol witness table for CGFloat;
  v51 = &type metadata for CGFloat;
  *&v50 = 0x4080E00000000000;
  v32 = v49;
  if (qword_1009400A8 != -1)
  {
    swift_once();
  }

  v33 = sub_10000A61C(v2, qword_10099ED70);
  v18(v32, v33, v2);
  if (qword_1009400B0 != -1)
  {
    swift_once();
  }

  v34 = sub_10000A61C(v2, qword_10099ED88);
  v18((v16 + v15[19]), v34, v2);
  v35 = (v16 + v15[20]);
  v35[3] = &type metadata for CGFloat;
  v35[4] = &protocol witness table for CGFloat;
  *v35 = 0x4080580000000000;
  v36 = (v16 + v15[21]);
  v36[3] = &type metadata for CGFloat;
  v36[4] = &protocol witness table for CGFloat;
  *v36 = 0x4077000000000000;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  v37 = *(v42 + 32);
  v37(v16 + v15[7], v41, v2);
  v37(v16 + v15[6], v46, v2);
  v37(v16 + v15[8], v47, v2);
  sub_10003F19C(&v68, v16 + v15[9]);
  v37(v16 + v15[10], v48, v2);
  sub_10003F19C(&v65, v16 + v15[14]);
  sub_10003F19C(&v62, v16 + v15[15]);
  sub_10003F19C(&v59, v16 + v15[16]);
  sub_10003F19C(&v56, v16 + v15[11]);
  sub_10003F19C(&v53, v16 + v15[12]);
  (*(v30 + 32))(v16 + v15[13], v31, v28);
  sub_10003F19C(&v50, v16 + v15[17]);
  v37(v16 + v15[18], v49, v2);
  result = *&UIEdgeInsetsZero.top;
  v39 = *&UIEdgeInsetsZero.bottom;
  *v16 = *&UIEdgeInsetsZero.top;
  *(v16 + 16) = v39;
  return result;
}

uint64_t sub_100364C04()
{
  v0 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v36 - v5;
  __chkstk_darwin(v7);
  v9 = &v36 - v8;
  __chkstk_darwin(v10);
  v42 = &v36 - v11;
  __chkstk_darwin(v12);
  v14 = &v36 - v13;
  v15 = type metadata accessor for ProductLockupAccessibilityLayout.Metrics(0);
  sub_10000DB18(v15, qword_10099EAE0);
  v16 = sub_10000A61C(v15, qword_10099EAE0);
  v57 = &type metadata for Double;
  v58 = &protocol witness table for Double;
  v55 = &protocol witness table for Double;
  *&v56 = 0;
  v54 = &type metadata for Double;
  *&v53 = 0;
  if (qword_1009400C0 != -1)
  {
    swift_once();
  }

  v17 = sub_10000A61C(v0, qword_10099EDB8);
  v18 = *(v1 + 16);
  v38 = v14;
  v18(v14, v17, v0);
  if (qword_1009400E8 != -1)
  {
    swift_once();
  }

  v19 = sub_10000A61C(v0, qword_10099EE30);
  v18(v42, v19, v0);
  v18(v9, v19, v0);
  if (qword_100940100 != -1)
  {
    swift_once();
  }

  v39 = v9;
  v43 = v3;
  v20 = sub_10000A61C(v0, qword_10099EE78);
  v40 = v6;
  v18(v6, v20, v0);
  v51 = &type metadata for CGFloat;
  v52 = &protocol witness table for CGFloat;
  *&v50 = 0x4030000000000000;
  if (qword_100940088 != -1)
  {
    swift_once();
  }

  v41 = v1;
  v21 = sub_10076D9AC();
  v22 = sub_10000A61C(v21, qword_10099ED10);
  v48 = v21;
  v49 = &protocol witness table for StaticDimension;
  v23 = sub_10000DB7C(&v47);
  v24 = *(*(v21 - 8) + 16);
  v24(v23, v22, v21);
  if (qword_100940108 != -1)
  {
    swift_once();
  }

  v25 = sub_10000A61C(v21, qword_10099EE90);
  v45 = v21;
  v46 = &protocol witness table for StaticDimension;
  v26 = sub_10000DB7C(&v44);
  v24(v26, v25, v21);
  if (qword_100940128 != -1)
  {
    swift_once();
  }

  v27 = *&UIEdgeInsetsZero.top;
  v36 = *&UIEdgeInsetsZero.bottom;
  v37 = v27;
  v28 = sub_10000A61C(v0, qword_10099EEF0);
  v18(v43, v28, v0);
  if (qword_100940130 != -1)
  {
    swift_once();
  }

  v29 = sub_10000A61C(v21, qword_10099EF08);
  v30 = (v16 + v15[16]);
  v30[3] = v21;
  v30[4] = &protocol witness table for StaticDimension;
  v31 = sub_10000DB7C(v30);
  v24(v31, v29, v21);
  v32 = (v16 + v15[17]);
  v32[3] = &type metadata for CGFloat;
  v32[4] = &protocol witness table for CGFloat;
  *v32 = 0x4044000000000000;
  v33 = v36;
  *v16 = v37;
  *(v16 + 16) = v33;
  sub_10003F19C(&v56, v16 + 32);
  sub_10003F19C(&v53, v16 + 72);
  *(v16 + 112) = 0;
  *(v16 + 120) = 0;
  v34 = *(v41 + 32);
  v34(v16 + v15[8], v38, v0);
  v34(v16 + v15[9], v42, v0);
  v34(v16 + v15[10], v39, v0);
  v34(v16 + v15[11], v40, v0);
  sub_10003F19C(&v50, v16 + v15[12]);
  sub_10003F19C(&v47, v16 + v15[13]);
  sub_10003F19C(&v44, v16 + v15[14]);
  return (v34)(v16 + v15[15], v43, v0);
}

id sub_100365230()
{
  result = [objc_opt_self() systemBlueColor];
  qword_10099EAF8 = result;
  return result;
}

Class sub_1003652C8()
{
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v0 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.8];
  v1 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.8];
  v2 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.8];
  v3.super.isa = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.8];
  v4.super.isa = v0;
  v5.super.isa = v1;
  v6.super.isa = v2;
  result = sub_100770E3C(v4, v5, v6, v3).super.isa;
  qword_10099EB08 = result;
  return result;
}

uint64_t sub_100365414(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100950EE0, &qword_10079B340);
  sub_10000DB18(v4, a2);
  sub_10000A61C(v4, a2);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  return sub_10075FECC();
}

void sub_100365520(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (*a2 != -1)
  {
    swift_once();
  }

  v9 = sub_10076D3DC();
  sub_10000A61C(v9, a3);
  v10 = [v8 traitCollection];
  v11 = sub_100770B3C();

  *a5 = v11;
}

uint64_t sub_100365624@<X0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a5@<X8>)
{
  v9 = sub_10076D3DC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (*a2 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000A61C(v14, a3);
  v18[1] = v13;
  sub_10075FDCC();
  v15 = [v13 traitCollection];
  v16 = sub_100770B3C();

  result = (*(v10 + 8))(v12, v9);
  *a5 = v16;
  return result;
}

void sub_100365884()
{
  v0 = objc_opt_self();
  v1 = [v0 _preferredFontForTextStyle:UIFontTextStyleCaption1 addingSymbolicTraits:0x8000 weight:UIFontWeightMedium];
  if (!v1)
  {
    v1 = [v0 preferredFontForTextStyle:UIFontTextStyleCaption1];
  }

  v2 = v1;
  v3 = sub_1003A2094();

  qword_10099EBB8 = v3;
}

void sub_100365928()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption1];
  v1 = sub_1003A2094();

  qword_10099EBC0 = v1;
}

uint64_t sub_100365988()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000DB18(v7, qword_10099EBC8);
  sub_10000A61C(v7, qword_10099EBC8);
  if (qword_100940BC8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A1150);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100940BC0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_1009A1138);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FDEC();
}

uint64_t sub_100365B68()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_10099EBE0);
  v1 = sub_10000A61C(v0, qword_10099EBE0);
  if (qword_100940BD0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A1168);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100365C30()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000DB18(v7, qword_10099EBF8);
  sub_10000A61C(v7, qword_10099EBF8);
  if (qword_100940BE8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A11B0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100940BE0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_1009A1198);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FDEC();
}

uint64_t sub_100365E10()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  v7 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000DB18(v7, qword_10099EC10);
  sub_10000A61C(v7, qword_10099EC10);
  if (qword_100940C00 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A11F8);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  v9(v3, v8, v0);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FDEC();
}

uint64_t sub_100365FBC()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000DB18(v7, qword_10099EC28);
  sub_10000A61C(v7, qword_10099EC28);
  if (qword_100940BF8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A11E0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100940BF0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_1009A11C8);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FDEC();
}

uint64_t sub_10036619C()
{
  v0 = sub_10076D3DC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v12 - v5;
  v7 = sub_10000A5D4(&qword_10094C390, &qword_100792908);
  sub_10000DB18(v7, qword_10099EC40);
  sub_10000A61C(v7, qword_10099EC40);
  if (qword_100940E50 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v0, qword_1009A18E8);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_100940E48 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v0, qword_1009A18D0);
  v9(v3, v10, v0);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FDFC();
}

uint64_t sub_10036637C()
{
  v0 = sub_10000A5D4(&unk_100942EF0, &unk_100785560);
  sub_10000DB18(v0, qword_10099EC58);
  sub_10000A61C(v0, qword_10099EC58);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for NSTextAlignment(0);
  return sub_10075FDDC();
}

uint64_t sub_100366418()
{
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v0 = sub_10076D9AC();
  v1 = sub_10000A61C(v0, qword_1009A2368);
  qword_10099EC88 = v0;
  unk_10099EC90 = &protocol witness table for StaticDimension;
  v2 = sub_10000DB7C(qword_10099EC70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

uint64_t sub_1003664D4()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v9[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v4 = UIFontTextStyleBody;
  (*(v1 + 104))(v4, enum case for FontSource.textStyle(_:), v0, v2);
  qword_10099ECB0 = sub_10076D9AC();
  unk_10099ECB8 = &protocol witness table for StaticDimension;
  sub_10000DB7C(qword_10099EC98);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v4, v0);
  v6 = UIFontTextStyleBody;
  sub_10076D9BC();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100366650(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D9AC();
  v8 = sub_10000A61C(v7, qword_1009A2350);
  *a2 = v7;
  *a3 = &protocol witness table for StaticDimension;
  v9 = sub_10000DB7C(a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v9, v8, v7);
}

uint64_t sub_1003667A8(double a1, double a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v9 = sub_10000A5D4(&unk_100952280, &qword_10079D3C0);
  sub_10000DB18(v9, a4);
  sub_10000A61C(v9, a4);
  sub_10017A500(a5);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FDEC();
  sub_10075FDEC();
  return sub_10075FEAC();
}

uint64_t sub_100366988(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_10076D1AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v20 - v10;
  v12 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10000DB18(v12, a4);
  sub_10000A61C(v12, a4);
  if (qword_100940BC8 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D3DC();
  v14 = sub_10000A61C(v13, qword_1009A1150);
  v15 = *(*(v13 - 8) + 16);
  v15(v11, v14, v13);
  v16 = enum case for FontSource.useCase(_:);
  v17 = *(v6 + 104);
  v17(v11, enum case for FontSource.useCase(_:), v5);
  if (qword_100940BC0 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v13, qword_1009A1138);
  v15(v8, v18, v13);
  v17(v8, v16, v5);
  return sub_10075FE3C();
}

uint64_t sub_100366BD0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10000DB18(v7, qword_10099EDD0);
  v14[1] = sub_10000A61C(v7, qword_10099EDD0);
  if (qword_100940BD0 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1168);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return sub_10075FE3C();
}

uint64_t sub_100366DE0()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10000DB18(v7, qword_10099EDE8);
  v14[1] = sub_10000A61C(v7, qword_10099EDE8);
  if (qword_100940BD8 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A1180);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return sub_10075FE3C();
}

uint64_t sub_100367018(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_10076D1AC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10000DB18(v9, a4);
  sub_10000A61C(v9, a4);
  *v8 = UIFontTextStyleFootnote;
  (*(v6 + 104))(v8, enum case for FontSource.textStyle(_:), v5);
  v10 = UIFontTextStyleFootnote;
  return sub_10075FE4C();
}

uint64_t sub_100367150()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10000DB18(v7, qword_10099EE30);
  sub_10000A61C(v7, qword_10099EE30);
  if (qword_100940BE8 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A11B0);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  if (qword_100940BE0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v8, qword_1009A1198);
  v10(v3, v13, v8);
  v12(v3, v11, v0);
  return sub_10075FE3C();
}

uint64_t sub_100367390()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10000DB18(v7, qword_10099EE48);
  v14[1] = sub_10000A61C(v7, qword_10099EE48);
  if (qword_100940C00 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A11F8);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return sub_10075FE3C();
}

uint64_t sub_100367594()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v7 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10000DB18(v7, qword_10099EE60);
  v14[1] = sub_10000A61C(v7, qword_10099EE60);
  if (qword_100940C00 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A11F8);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  v10(v3, v9, v8);
  v12(v3, v11, v0);
  return sub_10075FE3C();
}

uint64_t sub_100367798()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10000DB18(v7, qword_10099EE78);
  sub_10000A61C(v7, qword_10099EE78);
  if (qword_100940BF8 != -1)
  {
    swift_once();
  }

  v8 = sub_10076D3DC();
  v9 = sub_10000A61C(v8, qword_1009A11E0);
  v10 = *(*(v8 - 8) + 16);
  v10(v6, v9, v8);
  v11 = enum case for FontSource.useCase(_:);
  v12 = *(v1 + 104);
  v12(v6, enum case for FontSource.useCase(_:), v0);
  if (qword_100940BF0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000A61C(v8, qword_1009A11C8);
  v10(v3, v13, v8);
  v12(v3, v11, v0);
  return sub_10075FE3C();
}

uint64_t sub_100367A48(double a1, uint64_t a2, uint64_t *a3, void **a4)
{
  v6 = sub_10076D1AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10076D9AC();
  sub_10000DB18(v10, a3);
  sub_10000A61C(v10, a3);
  v11 = *a4;
  *v9 = v11;
  (*(v7 + 104))(v9, enum case for FontSource.textStyle(_:), v6);
  v16[3] = v6;
  v16[4] = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v16);
  (*(v7 + 16))(v12, v9, v6);
  v13 = v11;
  sub_10076D9BC();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100367BB8()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10000DB18(v4, qword_10099EEF0);
  sub_10000A61C(v4, qword_10099EEF0);
  if (qword_100940C08 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1210);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  return sub_10075FE4C();
}

uint64_t sub_100367DB0(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10076D1AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D9AC();
  sub_10000DB18(v12, a2);
  sub_10000A61C(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D3DC();
  v14 = sub_10000A61C(v13, a4);
  (*(*(v13 - 8) + 16))(v11, v14, v13);
  (*(v9 + 104))(v11, enum case for FontSource.useCase(_:), v8);
  v18[3] = v8;
  v18[4] = &protocol witness table for FontSource;
  v15 = sub_10000DB7C(v18);
  (*(v9 + 16))(v15, v11, v8);
  sub_10076D9BC();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100367F7C()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099EF38);
  sub_10000A61C(v4, qword_10099EF38);
  if (qword_100940C18 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1240);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100368164()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099EF68);
  sub_10000A61C(v4, qword_10099EF68);
  if (qword_100940C10 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1228);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

void sub_10036838C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = sub_10077071C();

  v5 = 2;
  if (v4)
  {
    v5 = 0;
  }

  *a2 = v5;
}

uint64_t sub_10036842C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  sub_10000DB18(v4, a2);
  sub_10000A61C(v4, a2);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FECC();
}

void sub_1003684B8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  if (sub_10077071C())
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1007706FC();

    v4 = 1;
    if ((v5 & 1) == 0)
    {
      v4 = 2;
    }
  }

  *a2 = v4;
}

uint64_t sub_10036855C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_10094C370, &qword_100792900);
  sub_10000DB18(v4, a2);
  sub_10000A61C(v4, a2);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  return sub_10075FDFC();
}

void sub_100368634()
{
  v0 = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.1];
  v1 = [v0 CGColor];

  qword_10099F088 = v1;
}

uint64_t sub_10036869C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductLockupLayout.Metrics.OfferSubtitleMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100368704@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v22 = a3;
  v23 = &type metadata for EmptyView;
  v24 = a4;
  v25 = &protocol witness table for EmptyView;
  v9 = sub_10076ECAC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v20[-v14];
  sub_10076EC9C();
  sub_10076ECFC();
  sub_10076EC8C();
  v16 = *(v10 + 8);
  v16(v12, v9);
  v21 = v5;
  v17 = sub_10000CE78(&qword_100953F98, &qword_10079D508);
  v18 = sub_100368C64();
  v22 = a3;
  v23 = v17;
  v24 = a4;
  v25 = v18;
  a5[3] = sub_10076ECAC();
  a5[4] = swift_getWitnessTable();
  sub_10000DB7C(a5);
  sub_10076EC7C();
  return (v16)(v15, v9);
}

double sub_100368904@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100769A5C();
  KeyPath = swift_getKeyPath();
  v5 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension22SwiftUIViewHostingCell_flowPreview);
  v6 = (a2 + *(sub_10000A5D4(&qword_100953F98, &qword_10079D508) + 36));
  *v6 = KeyPath;
  v6[1] = v5;

  return result;
}

void sub_100368988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1001CEC78(a1, a2, a3, a4, a5);
  v6 = [v5 contentView];
  v7 = [v6 layer];

  sub_10076BD0C();
  [v7 setCornerRadius:?];

  v8 = [v5 contentView];
  sub_1000325F0();
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  v11.super.isa = [v9 secondarySystemBackgroundColor];
  v12.super.isa = v10;
  isa = sub_100770DEC(v12, v11).super.isa;
  [v8 setBackgroundColor:isa];
}

id sub_100368B98()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIProductPageCardViewHostingCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SwiftUIProductPageCardViewHostingCell(uint64_t a1)
{
  result = qword_100953F88;
  if (!qword_100953F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100368C64()
{
  result = qword_100953FA0;
  if (!qword_100953FA0)
  {
    sub_10000CE78(&qword_100953F98, &qword_10079D508);
    sub_100368CF0();
    sub_100368D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100953FA0);
  }

  return result;
}

unint64_t sub_100368CF0()
{
  result = qword_100953FA8;
  if (!qword_100953FA8)
  {
    sub_100769A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100953FA8);
  }

  return result;
}

unint64_t sub_100368D48()
{
  result = qword_100956780;
  if (!qword_100956780)
  {
    sub_10000CE78(&qword_10094CE18, &qword_10079D510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956780);
  }

  return result;
}

uint64_t sub_100368DB4()
{
  if (qword_1009411F0 != -1)
  {
    swift_once();
  }

  v0 = sub_10076D9AC();
  v1 = sub_10000A61C(v0, qword_1009A2350);
  qword_10099F0A8 = v0;
  unk_10099F0B0 = &protocol witness table for StaticDimension;
  v2 = sub_10000DB7C(qword_10099F090);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_100368E70(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_bundleView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for BundleView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v12 = [v11 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v11 contentView];
  [v13 addSubview:*&v11[OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_lockupView]];

  v14 = [v11 contentView];
  [v14 addSubview:*&v11[OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_bundleView]];

  return v11;
}

id sub_10036918C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40.receiver = v2;
  v40.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v40, "layoutSubviews");
  v4 = [v2 contentView];
  sub_1000ACA5C();
  sub_10076422C();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = *&v3[OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_lockupView];
  v14 = sub_10052225C();
  v16 = v15;
  v41.origin.x = v6;
  v41.origin.y = v8;
  v41.size.width = v10;
  v41.size.height = v12;
  MinX = CGRectGetMinX(v41);
  v37 = v8;
  v42.origin.x = v6;
  v42.origin.y = v8;
  v42.size.width = v10;
  v42.size.height = v12;
  MinY = CGRectGetMinY(v42);
  v39 = MinX;
  v18 = MinX;
  v19 = v14;
  v20 = v16;
  [v13 setFrame:v18];
  if (qword_1009401B8 != -1)
  {
    swift_once();
  }

  sub_10000CF78(qword_10099F090, qword_10099F0A8);
  v21 = [v3 traitCollection];
  sub_10076D41C();
  v23 = v22;

  v43.origin.x = v6;
  v43.origin.y = v37;
  v43.size.width = v10;
  v43.size.height = v12;
  Height = CGRectGetHeight(v43);
  v44.origin.y = MinY;
  v44.origin.x = v39;
  v44.size.width = v19;
  v44.size.height = v20;
  v25 = Height - (v23 + CGRectGetHeight(v44));
  v26 = *&v3[OBJC_IVAR____TtC20ProductPageExtension36BundleSearchResultCollectionViewCell_bundleView];
  v45.origin.x = v6;
  v45.origin.y = v37;
  v45.size.width = v10;
  v45.size.height = v12;
  [v26 sizeThatFits:{CGRectGetWidth(v45), v25}];
  v28 = v27;
  v30 = v29;
  v46.origin.x = v6;
  v46.origin.y = v37;
  v46.size.width = v10;
  v46.size.height = v12;
  v31 = CGRectGetMinX(v46);
  v47.origin.y = MinY;
  v47.origin.x = v39;
  v47.size.width = v19;
  v47.size.height = v20;
  MaxY = CGRectGetMaxY(v47);
  sub_10000CF78(qword_10099F090, qword_10099F0A8);
  v33 = [v3 traitCollection];
  sub_10076D41C();
  v35 = v34;

  return [v26 setFrame:{v31, MaxY + v35, v28, v30}];
}

id sub_100369488(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BundleSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100369550()
{
  v0 = type metadata accessor for BaseTodayBrickCollectionViewCell(0);
  sub_100369AE8(&qword_100950AA8, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007A785C);
  sub_100369AE8(&qword_100950AB0, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007A7738);
  sub_100369AE8(&qword_100950AB8, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007A7814);
  return v0;
}

uint64_t sub_10036961C()
{
  sub_10076C84C();
  sub_100369AE8(&qword_100947150, &type metadata accessor for TodayCard, &protocol conformance descriptor for TodayCard);
  sub_10076332C();
  if (!v2)
  {
    return 0;
  }

  sub_10076C7FC();
  v0 = sub_100761BEC();

  result = 0;
  if (v0 > 6)
  {
    if (v0 == 7)
    {
      return type metadata accessor for GridTodayBrickCollectionViewCell(0);
    }

    else if (v0 == 8)
    {
      return type metadata accessor for VideoTodayBrickCollectionViewCell(0);
    }
  }

  else if (v0)
  {
    if (v0 == 1)
    {
      return type metadata accessor for BrandedAppTodayBrickCollectionViewCell(0);
    }
  }

  else
  {
    return type metadata accessor for TodayBrickCollectionViewCellWithBackground(0);
  }

  return result;
}

uint64_t sub_100369728()
{
  v0 = sub_10076B5BC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v16 - v5;
  v7 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v16 - v9;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v8 + 8))(v10, v7);
  (*(v1 + 104))(v3, enum case for Shelf.ContentType.smallStoryCard(_:), v0);
  sub_100369AE8(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v16[2] == v16[0] && v16[3] == v16[1])
  {
    v11 = *(v1 + 8);
    v11(v3, v0);
    v11(v6, v0);
  }

  else
  {
    v12 = sub_10077167C();
    v13 = *(v1 + 8);
    v13(v3, v0);
    v13(v6, v0);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_10036961C();
  if (result)
  {
    v15 = result;
    sub_100369AE8(&qword_100950AA8, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007A785C);
    sub_100369AE8(&qword_100950AB0, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007A7738);
    sub_100369AE8(&qword_100950AB8, type metadata accessor for BaseTodayBrickCollectionViewCell, &unk_1007A7814);
    return v15;
  }

  return result;
}

uint64_t sub_100369AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100369B34()
{
  result = qword_100950CE8;
  if (!qword_100950CE8)
  {
    type metadata accessor for MediumLockupCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950CE8);
  }

  return result;
}

double sub_100369B8C()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076462C();
  sub_10076460C();
  sub_10076C2FC();
  v5 = v4;
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  swift_getObjectType();
  v8 = swift_unknownObjectRetain();
  v9.n128_u64[0] = v5;
  sub_1002ADC24(v8, v9, v7);
  v11 = v10;
  swift_unknownObjectRelease_n();
  return v11;
}

char *sub_100369CDC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_artworkDisplaySize];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView] = [objc_allocWithZone(type metadata accessor for BorderedScreenshotView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v21.receiver = v4;
  v21.super_class = type metadata accessor for ScreenshotCollectionViewCell(0);
  v12 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView;
  v14 = *&v12[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView];
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v12;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 addSubview:*&v12[v13]];

  return v18;
}

id sub_100369F58()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ScreenshotCollectionViewCell(0);
  objc_msgSendSuper2(&v8, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView];
  v3 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  sub_10075FCEC(v9, v4);

  *(v2 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform) = 0;

  v5 = sub_100124EE0();
  v6 = &v1[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_artworkDisplaySize];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  return [v1 setNeedsLayout];
}

id sub_10036A068()
{
  v1 = v0;
  v2 = sub_10076D39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScreenshotCollectionViewCell(0);
  v37.receiver = v1;
  v37.super_class = v6;
  objc_msgSendSuper2(&v37, "layoutSubviews");
  if (v1[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_artworkDisplaySize + 16])
  {
    v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView];
    v8 = [v1 contentView];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    return [v7 setFrame:{v10, v12, v14, v16}];
  }

  else
  {
    sub_10076D3AC();
    v18 = [v1 contentView];
    [v18 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;

    sub_10076D36C();
    v25 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView];
    [v25 setFrame:{v20, v22, v24, v26}];
    v27 = [v1 contentView];
    [v27 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v38.origin.x = v29;
    v38.origin.y = v31;
    v38.size.width = v33;
    v38.size.height = v35;
    MidX = CGRectGetMidX(v38);
    v39.origin.x = v29;
    v39.origin.y = v31;
    v39.size.width = v33;
    v39.size.height = v35;
    [v25 setCenter:{MidX, CGRectGetMidY(v39)}];
    return (*(v3 + 8))(v5, v2);
  }
}

id sub_10036A324()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotCollectionViewCell(uint64_t a1)
{
  result = qword_1009540A8;
  if (!qword_1009540A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10036A3FC(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

CGFloat sub_10036A4C4()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration;
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = *(v1 + 80);
  type metadata accessor for BorderedScreenshotView(0);
  sub_10076422C();
  v4 = CGRectGetWidth(v6) - (v2 + v3);
  sub_10076422C();
  CGRectGetHeight(v7);
  return v4;
}

void sub_10036A564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2908(a1, a2, a3, WitnessTable);
}

void sub_10036A5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2BC0(a1, a2, a3, WitnessTable);
}

unint64_t sub_10036A63C(uint64_t a1)
{
  result = sub_10036A664();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10036A664()
{
  result = qword_1009540B8;
  if (!qword_1009540B8)
  {
    type metadata accessor for ScreenshotCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009540B8);
  }

  return result;
}

double sub_10036A6D0(uint64_t a1)
{
  v1 = sub_1007636CC();
  sub_100371210(v1, v2);
  v3 = sub_1007636BC();

  return sub_10037121C(v3, v4);
}

double sub_10036A7B4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v40 = sub_10076718C();
  v39 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1007671AC();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10076997C();
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10005312C();
  if (qword_100940E00 != -1)
  {
    swift_once();
  }

  v37 = sub_10076D3DC();
  sub_10000A61C(v37, qword_1009A17F8);
  v13 = [a6 traitCollection];
  v46 = a6;
  v14 = v13;
  v15 = sub_100770B3C();

  sub_1007636CC();
  v16 = sub_10076C04C();
  v51[3] = v16;
  v17 = sub_10036ADFC(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v36[1] = a1;
  v18 = v17;
  v51[4] = v17;
  v19 = sub_10000DB7C(v51);
  v20 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v21 = *(*(v16 - 8) + 104);
  v21(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v16);
  v22 = v15;
  v36[0] = v12;
  v23 = v22;
  sub_10076C90C();
  sub_10000CD74(v51);
  v38 = v23;
  sub_10076996C();
  sub_10076994C();
  v24 = *(v47 + 8);
  v47 += 8;
  v24(v11, v45);
  if (qword_100940E08 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v37, qword_1009A1810);
  v25 = [v46 traitCollection];
  v26 = sub_100770B3C();

  sub_1007636BC();
  v50[3] = v16;
  v50[4] = v18;
  v27 = sub_10000DB7C(v50);
  v21(v27, v20, v16);
  v28 = v26;
  sub_10076C90C();
  sub_10000CD74(v50);
  sub_10076996C();
  sub_10076994C();
  v24(v11, v45);
  if (qword_1009401C0 != -1)
  {
    swift_once();
  }

  v29 = v40;
  v30 = sub_10000A61C(v40, qword_10099F0D0);
  (*(v39 + 16))(v41, v30, v29);
  sub_10000A570(v51, v49);
  sub_10000A570(v50, v48);
  v31 = v42;
  sub_10076719C();
  sub_10036ADFC(&qword_100954110, &type metadata accessor for PrivacyDefinitionLayout, &protocol conformance descriptor for PrivacyDefinitionLayout);
  v32 = v44;
  sub_10076D2AC();
  v34 = v33;

  (*(v43 + 8))(v31, v32);
  sub_10000CD74(v50);
  sub_10000CD74(v51);
  return v34;
}

uint64_t sub_10036ADFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_10036AE44()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_label;
  *&v0[v2] = [objc_allocWithZone(UILabel) init];
  v3 = OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView;
  *&v0[v3] = [objc_allocWithZone(UIView) init];
  v22.receiver = v0;
  v22.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v22, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView;
  v6 = *&v4[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 systemBlueColor];
  [v8 setBackgroundColor:v9];

  v10 = [*&v4[v5] layer];
  [v10 setCornerRadius:20.0];

  v11 = [*&v4[v5] layer];
  [v11 setCornerCurve:kCACornerCurveCircular];

  [v4 addSubview:*&v4[v5]];
  v12 = OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_label;
  v13 = *&v4[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_label];
  v14 = [v7 whiteColor];
  [v13 setTextColor:v14];

  v15 = *&v4[v12];
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 systemFontOfSize:32.0];
  [v17 setFont:v18];

  v19 = *&v4[v12];
  v23._object = 0x80000001007D8160;
  v23._countAndFlagsBits = 0xD00000000000001FLL;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_1007622EC(v23, v24);
  v20 = sub_10076FF6C();

  [v19 setText:v20];

  [v4 addSubview:*&v4[v12]];
  return v4;
}

id sub_10036B1C4()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_backgroundView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33OnboardingAdPrivacyHeaderIconView_label];
  [v2 sizeToFit];
  [v2 frame];
  Width = CGRectGetWidth(v6);
  [v2 frame];
  return [v2 setFrame:{20.0, 5.0, Width, CGRectGetHeight(v7)}];
}

uint64_t sub_10036B4F0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_100610988(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10024D484();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = sub_100761D3C();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_1001E2550(v5, v7);
  *v2 = v7;
  return v10;
}

double sub_10036B5CC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

void *sub_10036B5D8(uint64_t a1)
{
  v47 = sub_10075EBAC();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076B96C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000FD634(_swiftEmptyArrayStorage);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v12 = *(v1 + 48);
  v45 = *(v1 + 56);
  v46 = v12;
  ObjectType = swift_getObjectType();
  v15 = *(v7 + 16);
  v14 = v7 + 16;
  v43 = v15;
  v44 = ObjectType;
  v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v37 = *(v14 + 56);
  v38 = v14;
  v39 = (v14 - 8);
  v40 = (v3 + 8);
  v41 = v9;
  v42 = v6;
  while (1)
  {
    v48 = v11;
    v43(v9, v16, v6);
    sub_10075EE2C();
    swift_getObjectType();
    sub_10075ED1C();
    swift_unknownObjectRelease();
    v17 = sub_10076B92C();
    v19 = v18;
    v20 = v5;
    v21 = sub_10075EB5C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v10;
    v24 = sub_100561E0C(v17, v19);
    v25 = v10[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v10[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v5 = v20;
        if (v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_10024C568();
        v5 = v20;
        if (v28)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1002478B0(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_100561E0C(v17, v19);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_19;
      }

      v24 = v29;
      v5 = v20;
      if (v28)
      {
LABEL_3:

        v10 = v49;
        *(v49[7] + v24) = v21 & 1;
        (*v40)(v5, v47);
        v9 = v41;
        v6 = v42;
        (*v39)(v41, v42);
        goto LABEL_4;
      }
    }

    v10 = v49;
    v49[(v24 >> 6) + 8] |= 1 << v24;
    v31 = (v10[6] + 16 * v24);
    *v31 = v17;
    v31[1] = v19;
    *(v10[7] + v24) = v21 & 1;
    (*v40)(v5, v47);
    v9 = v41;
    v6 = v42;
    (*v39)(v41, v42);
    v32 = v10[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_18;
    }

    v10[2] = v34;
LABEL_4:
    v16 += v37;
    v11 = v48 - 1;
    if (v48 == 1)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1007716DC();
  __break(1u);
  return result;
}

uint64_t sub_10036B988(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v128 = a6;
  v127 = a5;
  v126 = a4;
  v139 = a3;
  v131 = a2;
  v156 = a1;
  v151 = *v6;
  v122 = sub_10076F08C();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v119 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10076F0CC();
  v118 = *(v120 - 8);
  __chkstk_darwin(v120);
  v117 = &v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_10076F0EC();
  v132 = *(v130 - 8);
  __chkstk_darwin(v130);
  v116 = &v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v129 = &v115 - v11;
  v12 = sub_10000A5D4(&qword_100954228, &qword_10079D8F8);
  __chkstk_darwin(v12 - 8);
  v136 = &v115 - v13;
  v149 = sub_10076CE0C();
  v143 = *(v149 - 8);
  __chkstk_darwin(v149);
  v140 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_100761D3C();
  v153 = *(v142 - 8);
  __chkstk_darwin(v142);
  v134 = v15;
  v141 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&qword_100954218, &qword_10079D8E8);
  __chkstk_darwin(v16 - 8);
  v124 = &v115 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v137 = &v115 - v19;
  v20 = sub_10000A5D4(&qword_100954220, &qword_10079D8F0);
  __chkstk_darwin(v20 - 8);
  v123 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v133 = &v115 - v23;
  v24 = sub_10076FD4C();
  v155 = *(v24 - 8);
  __chkstk_darwin(v24);
  v125 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v152 = &v115 - v27;
  v28 = sub_10000A5D4(&qword_100954230, &qword_10079D900);
  __chkstk_darwin(v28 - 8);
  v150 = (&v115 - v29);
  v30 = sub_10076902C();
  v157 = *(v30 - 8);
  v158 = v30;
  __chkstk_darwin(v30);
  v138 = &v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v147 = &v115 - v33;
  __chkstk_darwin(v34);
  v135 = &v115 - v35;
  if (qword_1009412F8 != -1)
  {
    swift_once();
  }

  v154 = sub_10000A61C(v24, qword_1009A2630);
  v36 = sub_10000A5D4(&unk_100942A60, &unk_100784760);
  v37 = *(sub_10076F33C() - 8);
  v38 = *(v37 + 72);
  v39 = *(v37 + 80);
  v146 = 4 * v38;
  v144 = v36;
  *(swift_allocObject() + 16) = xmmword_100788B20;
  sub_10076F31C();
  sub_10076F27C();
  v159 = v6;
  sub_10076F27C();
  v145 = 3 * v38;
  v40 = v156;
  v41 = sub_100761D2C();
  *(&v162 + 1) = &type metadata for String;
  *&aBlock = v41;
  *(&aBlock + 1) = v42;
  v43 = v154;
  sub_10076F30C();
  sub_10000CFBC(&aBlock, &unk_1009434C0, &qword_100783F60);
  sub_10076FBCC();

  v44 = v150;
  sub_100420CD0(v40, v150);
  v46 = v157;
  v45 = v158;
  v47 = v157[6](v44, 1, v158);
  v148 = v24;
  if (v47 == 1)
  {
    v133 = v39;
    v135 = ((v39 + 32) & ~v39);
    v137 = (2 * v38);
    v115 = v38;
    v48 = v40;
    sub_10000CFBC(v44, &qword_100954230, &qword_10079D900);
    v150 = sub_10000A5D4(&qword_100954238, &qword_10079D908);
    v49 = sub_10076FCEC();
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = v153;
    v52 = v153 + 16;
    v53 = v141;
    v54 = v142;
    v151 = *(v153 + 16);
    v151(v141, v48, v142);
    v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v134 += v55;
    v56 = swift_allocObject();
    *(v56 + 16) = v50;
    *(v56 + 24) = v49;
    v57 = *(v51 + 32);
    v153 = v51 + 32;
    (v57)(v56 + v55, v53, v54);
    v152 = v49;

    v58 = v136;
    sub_10027F0CC(v136);
    v59 = v143;
    v60 = v149;
    if ((*(v143 + 48))(v58, 1, v149) == 1)
    {
      sub_10000CFBC(v58, &qword_100954228, &qword_10079D8F8);
      v61 = sub_10076189C();
      (*(*(v61 - 8) + 56))(v123, 1, 1, v61);
      v62 = enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
      v63 = sub_1007681AC();
      v64 = *(v63 - 8);
      v65 = v124;
      (*(v64 + 104))(v124, v62, v63);
      (*(v64 + 56))(v65, 0, 1, v63);
      sub_10076900C();
      v66 = v125;
      v67 = v148;
      (*(v155 + 16))(v125, v154, v148);
      *(swift_allocObject() + 16) = xmmword_1007844F0;
      sub_10076F31C();
      sub_10076F27C();
      sub_10076F27C();
      *(&v162 + 1) = v54;
      v68 = sub_10000DB7C(&aBlock);
      v151(v68, v156, v54);
      sub_10076F30C();
      sub_10000CFBC(&aBlock, &unk_1009434C0, &qword_100783F60);
      sub_10076F27C();
      if (v139)
      {
        v69 = 0;
        v70 = 0;
        *(&aBlock + 1) = 0;
        *&v162 = 0;
      }

      else
      {
        v70 = &type metadata for Double;
        v69 = v131;
      }

      *&aBlock = v69;
      *(&v162 + 1) = v70;
      sub_10076F30C();
      sub_10000CFBC(&aBlock, &unk_1009434C0, &qword_100783F60);
      sub_10076FBEC();

      (*(v155 + 8))(v66, v67);
      v111 = v157;
      v110 = v158;
      v112 = v138;
      v157[2](v147, v138, v158);
      v113 = sub_10076FC8C();

      (v111[1])(v112, v110);
      return v113;
    }

    else
    {
      v157 = v57;
      v158 = v52;
      (*(v59 + 32))(v140, v58, v60);
      v78 = v159;
      v79 = sub_10076CE2C();
      v80 = v59;
      if ((v139 & 1) == 0)
      {
        v155 = v56;
        v81 = v131;
        v150 = v78[2];
        v82 = v116;
        sub_10076F0DC();
        sub_10076F15C();
        v83 = *(v132 + 8);
        v132 += 8;
        v154 = v83;
        v83(v82, v130);
        v84 = swift_allocObject();
        swift_weakInit();
        v85 = v141;
        v86 = v142;
        v151(v141, v156, v142);
        v87 = (v134 + 7) & 0xFFFFFFFFFFFFFFF8;
        v88 = swift_allocObject();
        *(v88 + 16) = v152;
        *(v88 + 24) = v84;
        (v157)(v88 + v55, v85, v86);
        *(v88 + v87) = v79;
        *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v81;
        v163 = sub_100371200;
        v164 = v88;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v162 = sub_10009AEDC;
        *(&v162 + 1) = &unk_1008925A8;
        v89 = _Block_copy(&aBlock);

        v90 = v117;
        sub_10076F0AC();
        v160 = _swiftEmptyArrayStorage;
        sub_10037113C(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
        sub_100048C98(&qword_100945170, &unk_10094E1C0, &qword_100785D50);
        v91 = v119;
        v92 = v122;
        sub_1007712CC();
        v93 = v129;
        sub_10077064C();
        _Block_release(v89);
        (*(v121 + 8))(v91, v92);
        v94 = v90;
        v80 = v143;
        (*(v118 + 8))(v94, v120);
        v154(v93, v130);
      }

      v95 = v152;

      sub_10000A5D4(&qword_100954210, &unk_10079D8D8);
      sub_10076ACAC();

      v96 = aBlock;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v96;
      sub_10024B04C(v79, v95, v156, isUniquelyReferenced_nonNull_native);
      v98 = aBlock;
      __chkstk_darwin(v99);
      *(&v115 - 2) = v98;

      sub_10076ACCC();

      (*(v80 + 8))(v140, v149);
    }
  }

  else
  {
    v71 = v45;
    v72 = v135;
    v46[4](v135, v44, v71);
    v73 = v24;
    v74 = v72;
    (*(v155 + 16))(v152, v43, v73);
    *(swift_allocObject() + 16) = xmmword_100783DE0;
    sub_10076F31C();
    sub_10076F27C();
    sub_10076F27C();
    sub_10076F27C();
    v75 = v133;
    sub_10076901C();
    v76 = sub_10076189C();
    v77 = *(v76 - 8);
    if ((*(v77 + 48))(v75, 1, v76) == 1)
    {
      sub_10000CFBC(v75, &qword_100954220, &qword_10079D8F0);
      aBlock = 0u;
      v162 = 0u;
    }

    else
    {
      v100 = sub_10076188C();
      *(&v162 + 1) = &type metadata for String;
      *&aBlock = v100;
      *(&aBlock + 1) = v101;
      (*(v77 + 8))(v75, v76);
    }

    sub_10076F30C();
    sub_10000CFBC(&aBlock, &unk_1009434C0, &qword_100783F60);
    sub_10076F27C();
    v102 = v137;
    sub_100768FFC();
    v103 = sub_1007681AC();
    v104 = *(v103 - 8);
    if ((*(v104 + 48))(v102, 1, v103) == 1)
    {
      sub_10000CFBC(v102, &qword_100954218, &qword_10079D8E8);
      aBlock = 0u;
      v162 = 0u;
    }

    else
    {
      *(&v162 + 1) = v103;
      v105 = sub_10000DB7C(&aBlock);
      (*(v104 + 32))(v105, v102, v103);
    }

    sub_10076F30C();
    sub_10000CFBC(&aBlock, &unk_1009434C0, &qword_100783F60);
    v106 = v148;
    v107 = v152;
    sub_10076FBCC();

    (*(v155 + 8))(v107, v106);
    sub_10000A5D4(&qword_100954238, &qword_10079D908);
    v109 = v157;
    v108 = v158;
    v157[2](v147, v74, v158);
    v95 = sub_10076FC8C();
    (v109[1])(v74, v108);
  }

  return v95;
}

double sub_10036CEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a1;
  v7 = sub_10076F08C();
  v33 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076F0CC();
  v31 = *(v10 - 8);
  v32 = v10;
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100761D3C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = *(Strong + 16);

    (*(v14 + 16))(&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v13);
    v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    v27 = v12;
    v22 = v7;
    *(v21 + 16) = v29;
    *(v21 + 24) = a3;
    (*(v14 + 32))(v21 + v19, v16, v13);
    *(v21 + v20) = v30;
    aBlock[4] = sub_100370FF0;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_1008925F8;
    v23 = _Block_copy(aBlock);

    v24 = v27;
    sub_10076F0AC();
    v34 = _swiftEmptyArrayStorage;
    sub_10037113C(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
    sub_100048C98(&qword_100945170, &unk_10094E1C0, &qword_100785D50);
    sub_1007712CC();
    v25 = v28;
    sub_10077069C();
    _Block_release(v23);

    (*(v33 + 8))(v9, v22);
    (*(v31 + 8))(v24, v32);
  }

  return result;
}

void sub_10036D2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v125 = a4;
  v132 = a3;
  v5 = sub_10076CFDC();
  v135 = *(v5 - 8);
  __chkstk_darwin(v5);
  v113 = v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_10000A5D4(&qword_100954240, &qword_10079D910);
  __chkstk_darwin(v120);
  v124 = v103 - v7;
  v8 = sub_1007681AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v121 = v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_100954218, &qword_10079D8E8);
  __chkstk_darwin(v11 - 8);
  v13 = v103 - v12;
  v14 = sub_10000A5D4(&qword_100954220, &qword_10079D8F0);
  __chkstk_darwin(v14 - 8);
  v128 = v103 - v15;
  v16 = sub_10076902C();
  v130 = *(v16 - 8);
  __chkstk_darwin(v16);
  v129 = v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_100761D3C();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v117 = v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10076B96C();
  __chkstk_darwin(v19 - 8);
  v116 = v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10076189C();
  v126 = *(v21 - 8);
  v127 = v21;
  __chkstk_darwin(v21);
  v119 = v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10000A5D4(&qword_100954248, &qword_10079D918);
  __chkstk_darwin(v23 - 8);
  v118 = v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v131 = v103 - v26;
  __chkstk_darwin(v27);
  v123 = v103 - v28;
  __chkstk_darwin(v29);
  v122 = v103 - v30;
  __chkstk_darwin(v31);
  v33 = v103 - v32;
  v34 = sub_10076FD4C();
  v134 = *(v34 - 8);
  __chkstk_darwin(v34);
  v133 = v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_10076FC3C() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v37 = Strong;
      v104 = v5;
      v107 = v13;
      v108 = v9;
      v109 = v8;
      v110 = a1;

      sub_10000A5D4(&qword_100954210, &unk_10079D8D8);
      sub_10076ACAC();

      v38 = sub_10036B4F0(v132);
      sub_100370BEC(v38, v39);
      __chkstk_darwin(v40);

      sub_10076ACCC();

      v111 = sub_10076CD4C();
      if (qword_1009412F8 != -1)
      {
        swift_once();
      }

      v41 = sub_10000A61C(v34, qword_1009A2630);
      (*(v134 + 16))(v133, v41, v34);
      sub_10000A5D4(&unk_100942A60, &unk_100784760);
      sub_10076F33C();
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_10079D810;
      v103[1] = v42;

      sub_10076F31C();
      v105 = v37;

      sub_10076F27C();
      sub_10076F27C();
      v43 = sub_10076CCDC();
      *(&v137 + 1) = &type metadata for String;
      *&v136 = v43;
      *(&v136 + 1) = v44;
      sub_10076F30C();
      sub_10000CFBC(&v136, &unk_1009434C0, &qword_100783F60);
      sub_10076F27C();
      v45 = sub_10076CD0C();
      if (v46)
      {
        v47 = &type metadata for String;
      }

      else
      {
        v45 = 0;
        v47 = 0;
        *&v137 = 0;
      }

      *&v136 = v45;
      *(&v136 + 1) = v46;
      *(&v137 + 1) = v47;
      sub_10076F30C();
      sub_10000CFBC(&v136, &unk_1009434C0, &qword_100783F60);
      sub_10076F27C();
      v48 = sub_10076CD7C();
      v106 = v16;
      if (v49)
      {
        v50 = &type metadata for String;
      }

      else
      {
        v48 = 0;
        v50 = 0;
        *&v137 = 0;
      }

      *&v136 = v48;
      *(&v136 + 1) = v49;
      *(&v137 + 1) = v50;
      sub_10076F30C();
      sub_10000CFBC(&v136, &unk_1009434C0, &qword_100783F60);
      sub_10076F27C();
      v51 = sub_10076CD5C();
      *(&v137 + 1) = &type metadata for String;
      *&v136 = v51;
      *(&v136 + 1) = v52;
      sub_10076F30C();
      sub_10000CFBC(&v136, &unk_1009434C0, &qword_100783F60);
      sub_10076F27C();
      v53 = sub_10076CD2C();
      *(&v137 + 1) = &type metadata for String;
      *&v136 = v53;
      *(&v136 + 1) = v54;
      sub_10076F30C();
      sub_10000CFBC(&v136, &unk_1009434C0, &qword_100783F60);
      sub_10076F27C();
      sub_10076CD1C();
      v55 = v135;
      v56 = *(v135 + 48);
      v57 = v104;
      if (v56(v33, 1, v104) == 1)
      {
        sub_10000CFBC(v33, &qword_100954248, &qword_10079D918);
        v136 = 0u;
        v137 = 0u;
      }

      else
      {
        *(&v137 + 1) = v57;
        v58 = sub_10000DB7C(&v136);
        (*(v55 + 32))(v58, v33, v57);
      }

      sub_10076F30C();
      sub_10000CFBC(&v136, &unk_1009434C0, &qword_100783F60);
      sub_10076F27C();
      v59 = v111;
      if (v111)
      {
        v60 = sub_10000A5D4(&qword_100954258, &unk_10079D920);
      }

      else
      {
        v60 = 0;
        *(&v136 + 1) = 0;
        *&v137 = 0;
      }

      *&v136 = v59;
      *(&v137 + 1) = v60;

      sub_10076F30C();
      sub_10000CFBC(&v136, &unk_1009434C0, &qword_100783F60);
      sub_10076F27C();
      v61 = sub_10076CCFC();
      v112 = v56;
      if (v62)
      {
        v63 = &type metadata for String;
      }

      else
      {
        v61 = 0;
        v63 = 0;
        *&v137 = 0;
      }

      *&v136 = v61;
      *(&v136 + 1) = v62;
      *(&v137 + 1) = v63;
      sub_10076F30C();
      sub_10000CFBC(&v136, &unk_1009434C0, &qword_100783F60);
      sub_10076F27C();
      v64 = sub_10076CD8C();
      *(&v137 + 1) = &type metadata for String;
      *&v136 = v64;
      *(&v136 + 1) = v65;
      sub_10076F30C();
      sub_10000CFBC(&v136, &unk_1009434C0, &qword_100783F60);
      v66 = v133;
      sub_10076FBCC();

      (*(v134 + 8))(v66, v34);
      v67 = v122;
      sub_10076CD1C();
      if (v112(v67, 1, v57) != 1)
      {

        sub_10000CFBC(v67, &qword_100954248, &qword_10079D918);
        v69 = v123;
        v70 = v124;
        v71 = v135;
LABEL_24:
        sub_10076CD1C();
        v72 = v131;
        (*(v71 + 104))(v131, enum case for AppStoreAdUnfilledReason.policyAdDrop(_:), v57);
        (*(v71 + 56))(v72, 0, 1, v57);
        v73 = *(v120 + 48);
        sub_1003710CC(v69, v70);
        sub_1003710CC(v72, v70 + v73);
        v74 = v112;
        if (v112(v70, 1, v57) == 1)
        {
          sub_10000CFBC(v72, &qword_100954248, &qword_10079D918);
          sub_10000CFBC(v69, &qword_100954248, &qword_10079D918);
          v75 = v74(v70 + v73, 1, v57);
          v77 = v126;
          v76 = v127;
          if (v75 == 1)
          {
            sub_10000CFBC(v70, &qword_100954248, &qword_10079D918);
LABEL_40:
            v79 = &enum case for OnDeviceAdFetchFailReason.policyAdDrop(_:);
            goto LABEL_41;
          }
        }

        else
        {
          v78 = v118;
          sub_1003710CC(v70, v118);
          if (v74(v70 + v73, 1, v57) != 1)
          {
            v94 = v70 + v73;
            v95 = v113;
            (*(v71 + 32))(v113, v94, v57);
            sub_10037113C(&qword_100954250, &type metadata accessor for AppStoreAdUnfilledReason, &protocol conformance descriptor for AppStoreAdUnfilledReason);
            v96 = sub_10076FF1C();
            v97 = *(v71 + 8);
            v97(v95, v57);
            sub_10000CFBC(v131, &qword_100954248, &qword_10079D918);
            sub_10000CFBC(v69, &qword_100954248, &qword_10079D918);
            v97(v78, v57);
            sub_10000CFBC(v70, &qword_100954248, &qword_10079D918);
            v77 = v126;
            v76 = v127;
            if (v96)
            {
              goto LABEL_40;
            }

LABEL_30:
            v79 = &enum case for OnDeviceAdFetchFailReason.noAdAvailable(_:);
LABEL_41:
            v98 = v108;
            v99 = v121;
            v100 = v109;
            (*(v108 + 104))(v121, *v79, v109);
            sub_10076CD2C();
            sub_10076CD7C();
            (*(v77 + 56))(v128, 1, 1, v76);
            v101 = v107;
            (*(v98 + 16))(v107, v99, v100);
            (*(v98 + 56))(v101, 0, 1, v100);
            v102 = v129;
            sub_10076900C();
            sub_10076FCBC();

            (*(v130 + 8))(v102, v106);
            (*(v98 + 8))(v99, v100);
            return;
          }

          sub_10000CFBC(v131, &qword_100954248, &qword_10079D918);
          sub_10000CFBC(v69, &qword_100954248, &qword_10079D918);
          (*(v71 + 8))(v78, v57);
          v77 = v126;
          v76 = v127;
        }

        sub_10000CFBC(v70, &qword_100954240, &qword_10079D910);
        goto LABEL_30;
      }

      sub_10000CFBC(v67, &qword_100954248, &qword_10079D918);
      sub_10076CD5C();
      v68 = sub_10077002C();

      v69 = v123;
      v70 = v124;
      v71 = v135;
      if (v68)
      {

        goto LABEL_24;
      }

      v80 = sub_10076CCDC();
      v134 = v81;
      v135 = v80;
      v82 = sub_10076CD0C();
      if (v83)
      {
        v84 = v82;
      }

      else
      {
        v84 = 0;
      }

      v133 = v84;
      if (v83)
      {
        v85 = v83;
      }

      else
      {
        v85 = 0xE000000000000000;
      }

      v131 = v85;
      sub_10076CD5C();
      sub_10076B94C();
      (*(v114 + 16))(v117, v132, v115);
      sub_10076CD8C();
      sub_10076CCFC();
      sub_10076CCEC();
      sub_10076CD6C();
      sub_10076CD3C();
      v86 = v119;
      sub_10076187C();
      sub_10076CD2C();
      sub_10076CD7C();
      v87 = v126;
      v88 = v128;
      v89 = v86;
      v90 = v127;
      (*(v126 + 16))(v128, v89, v127);
      (*(v87 + 56))(v88, 0, 1, v90);
      (*(v108 + 56))(v107, 1, 1, v109);
      v91 = v129;
      sub_10076900C();
      sub_10076FCBC();
      (*(v130 + 8))(v91, v106);
      v92 = sub_10076CD7C();
      if (v93)
      {
        __chkstk_darwin(v92);
        sub_10076ACCC();

        (*(v87 + 8))(v119, v90);
      }

      else
      {

        (*(v87 + 8))(v119, v90);
      }
    }
  }
}

void sub_10036E6C8(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_10076F08C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10076F0CC();
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100761D3C();
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = *(v51 + 64);
  __chkstk_darwin(v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10076F0EC();
  v13 = *(v50 - 8);
  __chkstk_darwin(v50);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v39 - v17;

  sub_10000A5D4(&qword_100954210, &unk_10079D8D8);
  sub_10076ACAC();

  v19 = aBlock;
  if (aBlock[2] && (v20 = sub_100610988(a1), (v21 & 1) != 0))
  {
    v44 = v7;
    v22 = (v19[7] + 16 * v20);
    v23 = v22[1];
    v45 = *v22;

    swift_retain_n();

    v24 = sub_10076FC3C();

    if ((v24 & 1) == 0)
    {
      v41 = *(v3 + 16);
      sub_10076F0DC();
      sub_10076F15C();
      v42 = *(v13 + 8);
      v43 = v13 + 8;
      v42(v15, v50);
      v28 = swift_allocObject();
      swift_weakInit();
      v40 = v6;
      v29 = v51;
      v30 = a1;
      v31 = v52;
      (*(v51 + 16))(&v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v52);
      v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v33 = (v11 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = swift_allocObject();
      *(v34 + 16) = v23;
      *(v34 + 24) = v28;
      (*(v29 + 32))(v34 + v32, v12, v31);
      *(v34 + v33) = v45;
      *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
      v58 = sub_100370BD0;
      v59 = v34;
      aBlock = _NSConcreteStackBlock;
      v55 = 1107296256;
      v56 = sub_10009AEDC;
      v57 = &unk_100892530;
      v35 = _Block_copy(&aBlock);

      v36 = v46;
      sub_10076F0AC();
      v53 = _swiftEmptyArrayStorage;
      sub_10037113C(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
      sub_100048C98(&qword_100945170, &unk_10094E1C0, &qword_100785D50);
      v37 = v48;
      v38 = v40;
      sub_1007712CC();
      sub_10077064C();
      _Block_release(v35);

      (*(v44 + 8))(v37, v38);
      (*(v47 + 8))(v36, v49);
      v42(v18, v50);

      return;
    }
  }

  else
  {
  }

  if (qword_1009412F8 != -1)
  {
    swift_once();
  }

  v25 = sub_10076FD4C();
  sub_10000A61C(v25, qword_1009A2630);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_100788B20;
  sub_10076F31C();
  v57 = &type metadata for String;
  aBlock = 0xD000000000000031;
  v55 = 0x80000001007E11A0;
  sub_10076F32C();
  sub_10000CFBC(&aBlock, &unk_1009434C0, &qword_100783F60);
  sub_10076F27C();
  v26 = v52;
  v57 = v52;
  v27 = sub_10000DB7C(&aBlock);
  (*(v51 + 16))(v27, a1, v26);
  sub_10076F32C();
  sub_10000CFBC(&aBlock, &unk_1009434C0, &qword_100783F60);
  sub_10076FBCC();
}

uint64_t sub_10036EE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v9 = sub_10076CFEC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076FD4C();
  v55 = *(v13 - 8);
  __chkstk_darwin(v13);
  v54 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&qword_100954218, &qword_10079D8E8);
  __chkstk_darwin(v15 - 8);
  v17 = v45 - v16;
  v18 = sub_10000A5D4(&qword_100954220, &qword_10079D8F0);
  __chkstk_darwin(v18 - 8);
  v20 = v45 - v19;
  v21 = sub_10076902C();
  v51 = *(v21 - 8);
  v52 = v21;
  __chkstk_darwin(v21);
  v53 = v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_10076FC3C();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v46 = v13;
      v47 = v12;
      v48 = v10;
      v49 = v9;
      v50 = a1;

      sub_10000A5D4(&qword_100954210, &unk_10079D8D8);
      sub_10076ACAC();

      v24 = sub_10036B4F0(a3);
      sub_100370BEC(v24, v25);
      v26 = v56;
      __chkstk_darwin(v27);
      *&v45[-2] = v26;

      sub_10076ACCC();

      sub_10076CFAC();
      sub_10076CFCC();
      v28 = sub_10076189C();
      (*(*(v28 - 8) + 56))(v20, 1, 1, v28);
      v29 = enum case for OnDeviceAdFetchFailReason.timeout(_:);
      v30 = sub_1007681AC();
      v31 = *(v30 - 8);
      v45[1] = a4;
      v32 = v31;
      (*(v31 + 104))(v17, v29, v30);
      (*(v32 + 56))(v17, 0, 1, v30);
      sub_10076900C();
      if (qword_1009412F8 != -1)
      {
        swift_once();
      }

      v33 = v46;
      v34 = sub_10000A61C(v46, qword_1009A2630);
      (*(v55 + 16))(v54, v34, v33);
      sub_10000A5D4(&unk_100942A60, &unk_100784760);
      sub_10076F33C();
      *(swift_allocObject() + 16) = xmmword_10078B310;

      sub_10076F31C();

      sub_10076F27C();
      sub_10076F27C();
      v59 = &type metadata for Double;
      v56 = a5;
      sub_10076F30C();
      sub_10000CFBC(&v56, &unk_1009434C0, &qword_100783F60);
      sub_10076F27C();
      *&v35 = COERCE_DOUBLE(sub_10076CFCC());
      if (v36)
      {
        v37 = &type metadata for String;
      }

      else
      {
        *&v35 = 0.0;
        v37 = 0;
        v58 = 0;
      }

      v56 = *&v35;
      v57 = v36;
      v59 = v37;
      sub_10076F30C();
      sub_10000CFBC(&v56, &unk_1009434C0, &qword_100783F60);
      sub_10076F27C();
      *&v38 = COERCE_DOUBLE(sub_10076CFAC());
      v59 = &type metadata for String;
      v56 = *&v38;
      v57 = v39;
      sub_10076F30C();
      sub_10000CFBC(&v56, &unk_1009434C0, &qword_100783F60);
      v40 = v54;
      sub_10076FBCC();

      (*(v55 + 8))(v40, v33);
      v42 = v47;
      v41 = v48;
      v43 = v49;
      (*(v48 + 104))(v47, enum case for AppStoreTaskCancelReason.slaMiss(_:), v49);
      sub_10076CFBC();
      (*(v41 + 8))(v42, v43);
      v44 = v53;
      sub_10076FCBC();

      return (*(v51 + 8))(v44, v52);
    }
  }

  return result;
}

uint64_t sub_10036F5F4()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_10036F6E4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(void, void, void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v107 = a8;
  v93 = a7;
  v106 = a6;
  v89 = a5;
  v88 = a4;
  v87 = a3;
  v86 = a2;
  v92 = a1;
  v105 = a9;
  v110 = sub_10000A5D4(&qword_100954260, &qword_10079E9C0);
  __chkstk_darwin(v110);
  v109 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v83 = &v82 - v11;
  v12 = sub_10000A5D4(&qword_100954228, &qword_10079D8F8);
  __chkstk_darwin(v12 - 8);
  v97 = &v82 - v13;
  v116 = sub_10076127C();
  v114 = *(v116 - 1);
  __chkstk_darwin(v116);
  v113 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v96 = &v82 - v16;
  v17 = sub_10076CE0C();
  v98 = *(v17 - 8);
  __chkstk_darwin(v17);
  v115 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v108 = &v82 - v20;
  __chkstk_darwin(v21);
  v85 = &v82 - v22;
  __chkstk_darwin(v23);
  v101 = &v82 - v24;
  __chkstk_darwin(v25);
  v111 = &v82 - v26;
  __chkstk_darwin(v27);
  v112 = &v82 - v28;
  v104 = sub_10077067C();
  v29 = *(v104 - 1);
  __chkstk_darwin(v104);
  v31 = &v82 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10077063C();
  __chkstk_darwin(v32);
  v33 = sub_10076F0CC();
  __chkstk_darwin(v33 - 8);
  v103 = sub_100085204();
  sub_10076F0AC();
  v117 = _swiftEmptyArrayStorage;
  v102 = sub_10037113C(&qword_10094D780, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_10000A5D4(&qword_10094D788, &qword_10079D930);
  sub_100048C98(&qword_10094D790, &qword_10094D788, &qword_10079D930);
  sub_1007712CC();
  (*(v29 + 104))(v31, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v104);
  v34 = sub_1007706AC();
  v35 = v90;
  v90[2] = v34;
  v117 = sub_1000FE524(_swiftEmptyArrayStorage);
  sub_10000A5D4(&qword_100954268, &qword_10079D938);
  swift_allocObject();
  v35[3] = sub_10076ACBC();
  sub_10076CE4C();
  v36 = sub_10076CE3C();
  v37 = v105;
  v38 = v106;
  v35[4] = v36;
  v35[5] = v38;
  v35[6] = v107;
  v35[7] = v37;
  v39 = objc_opt_self();

  swift_unknownObjectRetain();
  v40 = v111;
  [v39 setContextPrefetchLimit:v89];
  v117 = _swiftEmptyArrayStorage;
  v41 = sub_10037113C(&qword_100954270, &type metadata accessor for AppStoreConfig, &protocol conformance descriptor for AppStoreConfig);
  sub_10000A5D4(&qword_100954278, qword_10079D940);
  sub_100048C98(&qword_100954280, &qword_100954278, qword_10079D940);
  sub_1007712CC();
  if (sub_10076132C())
  {
    v42 = v101;
    sub_10076CDFC();
    sub_10038C830(v40, v42);
    v43 = *(v98 + 8);
    v43(v42, v17);
    v43(v40, v17);
  }

  v44 = sub_10076129C();
  v45 = *(v44 + 16);
  v46 = v92;
  v107 = v41;
  if (v45)
  {
    v106 = *(v114 + 16);
    v47 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v82 = v44;
    v48 = v44 + v47;
    v105 = *(v114 + 72);
    v104 = (v114 + 88);
    LODWORD(v103) = enum case for ASKBagContract.AdPlacementBagValue.searchLanding(_:);
    v95 = enum case for ASKBagContract.AdPlacementBagValue.searchResults(_:);
    v94 = enum case for ASKBagContract.AdPlacementBagValue.today(_:);
    v91 = enum case for ASKBagContract.AdPlacementBagValue.productPageYMAL(_:);
    v84 = enum case for ASKBagContract.AdPlacementBagValue.productPageYMALDuringDownload(_:);
    v114 += 16;
    v102 = (v114 - 8);
    v101 = (v98 + 56);
    v100 = (v98 + 48);
    v99 = (v98 + 32);
    v49 = _swiftEmptyArrayStorage;
    v50 = v97;
    v51 = v116;
    v52 = v96;
    v53 = v113;
    while (1)
    {
      v54 = v106;
      v106(v52, v48, v51);
      v54(v53, v52, v51);
      v55 = (*v104)(v53, v51);
      if (v55 == v103)
      {
        sub_10076CDFC();
        (*v102)(v52, v51);
        (*v101)(v50, 0, 1, v17);
      }

      else if (v55 == v95)
      {
        v52 = v96;
        (*v102)(v96, v116);
        (*v101)(v50, 1, 1, v17);
      }

      else
      {
        v52 = v96;
        if (v55 == v94)
        {
          sub_10076CDCC();
        }

        else if (v55 == v91)
        {
          sub_10076CDDC();
        }

        else
        {
          if (v55 != v84)
          {
            v59 = *v102;
            v60 = v116;
            (*v102)(v96, v116);
            (*v101)(v97, 1, 1, v17);
            v59(v113, v60);
            v50 = v97;
            goto LABEL_18;
          }

          sub_10076CDEC();
        }

        (*v102)(v52, v116);
        (*v101)(v50, 0, 1, v17);
      }

LABEL_18:
      if ((*v100)(v50, 1, v17) == 1)
      {
        sub_10000CFBC(v50, &qword_100954228, &qword_10079D8F8);
      }

      else
      {
        v56 = *v99;
        (*v99)(v108, v50, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_10049E6D4(0, *(v49 + 2) + 1, 1, v49);
        }

        v58 = *(v49 + 2);
        v57 = *(v49 + 3);
        if (v58 >= v57 >> 1)
        {
          v49 = sub_10049E6D4((v57 > 1), v58 + 1, 1, v49);
        }

        *(v49 + 2) = v58 + 1;
        v56(&v49[((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v58], v108, v17);
        v50 = v97;
      }

      v48 += v105;
      --v45;
      v51 = v116;
      if (!v45)
      {

        v46 = v92;
        goto LABEL_27;
      }
    }
  }

  v49 = _swiftEmptyArrayStorage;
LABEL_27:
  v61 = *(v49 + 2);
  v62 = v85;
  if (v61)
  {
    v63 = *(v98 + 16);
    v64 = &v49[(*(v98 + 80) + 32) & ~*(v98 + 80)];
    v105 = *(v98 + 72);
    v116 = (v98 + 8);
    v103 = v49;
    v104 = (v98 + 32);
    v65 = v110;
    v66 = v111;
    v67 = v83;
    v108 = (v98 + 16);
    v106 = v63;
    do
    {
      v113 = v64;
      v114 = v61;
      v63(v62);
      (v63)(v66, v112, v17);
      sub_10077125C();
      sub_10037113C(&qword_100954288, &type metadata accessor for AppStoreConfig, &protocol conformance descriptor for AppStoreConfig);
      v69 = sub_10076FF1C();
      v70 = *(v65 + 48);
      *v67 = (v69 & 1) == 0;
      v71 = v66;
      v72 = *v116;
      if (v69)
      {
        v72(v62, v17);
        (*v104)(&v67[v70], v115, v17);
      }

      else
      {
        v72(v115, v17);
        (v63)(&v67[v70], v62, v17);
        (v63)(v71, v62, v17);
        sub_10077129C();
        v72(v62, v17);
      }

      v68 = v109;
      sub_100371184(v67, v109);
      v65 = v110;
      v72((v68 + *(v110 + 48)), v17);
      v63 = v106;
      v64 = &v113[v105];
      v61 = v114 - 1;
      v66 = v111;
    }

    while (v114 != 1);

    v46 = v92;
  }

  else
  {
  }

  v73 = sub_1000FD520(_swiftEmptyArrayStorage);
  v120 = v73;
  v74 = sub_10076128C();
  v76 = v90;
  v77 = v86;
  if (v75)
  {
    v78 = v74;
    v79 = v75;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117 = v73;
    sub_10024A448(0xD000000000000011, 0x80000001007E1340, 1752459639, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
    v120 = v117;
    sub_10009833C(v78, v79, 108, 0xE100000000000000);
  }

  sub_10076147C();
  sub_10076CE1C();

  swift_unknownObjectRelease();

  if (qword_1009412F8 != -1)
  {
    swift_once();
  }

  v116 = sub_10076FD4C();
  v115 = sub_10000A61C(v116, qword_1009A2630);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  *(swift_allocObject() + 16) = xmmword_10078B310;

  sub_10076F31C();

  sub_10076F27C();
  sub_10076F27C();
  v119 = &type metadata for String;
  v117 = v46;
  v118 = v77;
  sub_10076F30C();
  sub_10000CFBC(&v117, &unk_1009434C0, &qword_100783F60);
  sub_10076F27C();
  v119 = &type metadata for String;
  v117 = v87;
  v118 = v88;
  sub_10076F30C();
  sub_10000CFBC(&v117, &unk_1009434C0, &qword_100783F60);
  sub_10076F27C();
  v119 = &type metadata for Int;
  v117 = v89;
  sub_10076F30C();
  sub_10000CFBC(&v117, &unk_1009434C0, &qword_100783F60);
  sub_10076FBCC();

  (*(v98 + 8))(v112, v17);
  return v76;
}

uint64_t sub_100370814(uint64_t a1)
{
  v2 = sub_10075DDBC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100761D3C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076CC1C();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6, v12);
  v15 = (*(v7 + 88))(v9, v6);
  if (v15 == enum case for AdPlacementType.searchLanding(_:))
  {
    v16 = &enum case for AppPlacementLocation.searchLanding(_:);
  }

  else if (v15 == enum case for AdPlacementType.searchResults(_:))
  {
    v16 = &enum case for AppPlacementLocation.searchResults(_:);
  }

  else if (v15 == enum case for AdPlacementType.today(_:))
  {
    v16 = &enum case for AppPlacementLocation.todayPage(_:);
  }

  else if (v15 == enum case for AdPlacementType.productPageYMAL(_:))
  {
    v16 = &enum case for AppPlacementLocation.productPage(_:);
  }

  else
  {
    if (v15 != enum case for AdPlacementType.productPageYMALDuringDownload(_:))
    {
      sub_10075DDAC();
      v19 = sub_10075DD8C();
      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
      return v19;
    }

    v16 = &enum case for AppPlacementLocation.downloadPage(_:);
  }

  v17 = *v16;
  v18 = sub_10076CC0C();
  (*(*(v18 - 8) + 104))(v14, v17, v18);
  (*(v11 + 104))(v14, enum case for AdType.app(_:), v10);
  sub_10076CCCC();
  sub_10076CCBC();
  v19 = sub_10076CCAC();

  (*(v11 + 8))(v14, v10);
  return v19;
}

uint64_t sub_100370B98()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

double sub_100370BD4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_100370BEC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_100370C30()
{
  v1 = sub_100761D3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_100370CFC(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100761D3C() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_10036CEFC(a1, a2, v6, v7, v8);
}

uint64_t sub_100370D84()
{
  v1 = sub_100761D3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100370E74()
{
  v1 = *(sub_100761D3C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_10036EE6C(v6, v7, v0 + v2, v4, v5);
}

uint64_t sub_100370F10()
{
  v1 = sub_100761D3C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100370FF0()
{
  v1 = *(sub_100761D3C() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10036D2EC(v3, v4, v0 + v2, v5);
}

double sub_100371080(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;

  return result;
}

uint64_t sub_1003710CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100954248, &qword_10079D918);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10037113C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100371184(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100954260, &qword_10079E9C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100371228()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076718C();
  sub_10000DB18(v4, qword_10099F0D0);
  v30 = sub_10000A61C(v4, qword_10099F0D0);
  if (qword_100940E00 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A17F8);
  v7 = *(v5 - 8);
  v8 = *(v7 + 16);
  v9 = v7 + 16;
  v8(v3, v6, v5);
  v10 = enum case for FontSource.useCase(_:);
  v11 = v1 + 13;
  v29 = v1[13];
  v29(v3, enum case for FontSource.useCase(_:), v0);
  v28 = sub_10076D9AC();
  v40[3] = v28;
  v40[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v40);
  v38 = v0;
  v39 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v37);
  v27 = v1[2];
  v27(v12, v3, v0);
  sub_10076D9BC();
  v13 = v1[1];
  v25 = v1 + 1;
  v26 = v13;
  v13(v3, v0);
  if (qword_100940E08 != -1)
  {
    swift_once();
  }

  v14 = sub_10000A61C(v5, qword_1009A1810);
  v22[0] = v8;
  v22[1] = v9;
  v8(v3, v14, v5);
  v15 = v29;
  v29(v3, v10, v0);
  v24 = v11;
  v16 = v28;
  v38 = v28;
  v39 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v37);
  v23 = v10;
  v35 = v0;
  v36 = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v34);
  v18 = v27;
  v27(v17, v3, v0);
  sub_10076D9BC();
  v19 = v26;
  v26(v3, v0);
  (v22[0])(v3, v14, v5);
  v15(v3, v23, v0);
  v35 = v16;
  v36 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v34);
  *(&v32 + 1) = v0;
  v33 = &protocol witness table for FontSource;
  v20 = sub_10000DB7C(&v31);
  v18(v20, v3, v0);
  sub_10076D9BC();
  v19(v3, v0);
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  return sub_10076717C();
}

uint64_t sub_10037173C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v23 = sub_10076D1FC();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10076718C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007671AC();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.receiver = v1;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "layoutSubviews", v12);
  v15 = [v1 contentView];
  sub_1000ACA5C();
  sub_10076422C();

  if (qword_1009401C0 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v6, qword_10099F0D0);
  (*(v7 + 16))(v9, v16, v6);
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35PrivacyDefinitionCollectionViewCell_titleLabel];
  v28 = sub_1007626BC();
  v29 = &protocol witness table for UILabel;
  v26 = &protocol witness table for UILabel;
  v27 = v17;
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension35PrivacyDefinitionCollectionViewCell_definitionLabel];
  v25 = v28;
  v24 = v18;
  v19 = v17;
  v20 = v18;
  sub_10076719C();
  sub_10076716C();
  (*(v3 + 8))(v5, v23);
  return (*(v11 + 8))(v14, v10);
}

uint64_t type metadata accessor for PrivacyDefinitionCollectionViewCell(uint64_t a1)
{
  result = qword_1009542C8;
  if (!qword_1009542C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100371BF0(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

char *sub_100371C90()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10076771C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - v5;
  v7 = OBJC_IVAR____TtC20ProductPageExtension35PrivacyDefinitionCollectionViewCell_itemLayoutContext;
  v8 = sub_10076341C();
  v9 = *(*(v8 - 8) + 56);
  v32 = v0;
  v9(&v0[v7], 1, 1, v8);
  if (qword_100940E00 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, qword_1009A17F8);
  v12 = *(v10 - 8);
  v29 = *(v12 + 16);
  v29(v6, v11, v10);
  v28 = *(v12 + 56);
  v28(v6, 0, 1, v10);
  v13 = enum case for DirectionalTextAlignment.none(_:);
  v14 = *(v2 + 104);
  v14(v31, enum case for DirectionalTextAlignment.none(_:), v1);
  v15 = sub_1007626BC();
  v27 = v1;
  v16 = v15;
  v17 = objc_allocWithZone(v15);
  *&v32[OBJC_IVAR____TtC20ProductPageExtension35PrivacyDefinitionCollectionViewCell_titleLabel] = sub_1007626AC();
  if (qword_100940E08 != -1)
  {
    swift_once();
  }

  v18 = sub_10000A61C(v10, qword_1009A1810);
  v29(v6, v18, v10);
  v28(v6, 0, 1, v10);
  v14(v31, v13, v27);
  v19 = objc_allocWithZone(v16);
  v20 = sub_1007626AC();
  v21 = v32;
  *&v32[OBJC_IVAR____TtC20ProductPageExtension35PrivacyDefinitionCollectionViewCell_definitionLabel] = v20;
  v33.receiver = v21;
  v33.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v33, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v23 = [v22 contentView];
  [v23 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v24 = [v22 contentView];
  [v24 addSubview:*&v22[OBJC_IVAR____TtC20ProductPageExtension35PrivacyDefinitionCollectionViewCell_titleLabel]];

  v25 = [v22 contentView];
  [v25 addSubview:*&v22[OBJC_IVAR____TtC20ProductPageExtension35PrivacyDefinitionCollectionViewCell_definitionLabel]];

  return v22;
}

id sub_1003720DC(uint64_t a1, __int16 a2, char a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v7 = HIBYTE(a2);
  v8 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded;
  v5[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isReviewExpanded] = a2 & 1;
  sub_1005F9288();
  v147 = OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isResponseExpanded;
  v5[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isResponseExpanded] = v7 & 1;
  sub_1005F9364();
  v9 = *&v5[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_titleLabel];
  v10 = [v9 text];
  if (v10)
  {
    v11 = v10;
    v12 = sub_10076FF9C();
    v14 = v13;

    v15 = sub_10076BC5C();
    if (!v15)
    {
      if (!v14)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v15 = sub_10076BC5C();
    if (!v15)
    {
      goto LABEL_22;
    }

    v14 = 0;
    v12 = 0;
  }

  v16 = v15;
  v17 = sub_100764D0C();
  v19 = v18;

  if (!v14)
  {
    if (!v19)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (!v19)
  {
LABEL_17:

LABEL_18:
    v22 = sub_10076BC5C();
    if (v22)
    {
      v23 = v22;
      v24 = sub_100764CBC();
    }

    else
    {
      v24 = 0;
    }

    [v9 setAttributedText:v24];

    goto LABEL_22;
  }

  if (v12 == v17 && v14 == v19)
  {

    goto LABEL_22;
  }

  v21 = sub_10077167C();

  if ((v21 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_22:
  v25 = *&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateLabel];
  v26 = [v25 text];
  if (!v26)
  {
    sub_10076BC8C();
LABEL_32:
    if (!v32)
    {
      goto LABEL_38;
    }

    goto LABEL_33;
  }

  v27 = v26;
  v28 = sub_10076FF9C();
  v30 = v29;

  v31 = sub_10076BC8C();
  if (!v30)
  {
    goto LABEL_32;
  }

  if (!v32)
  {
LABEL_33:

LABEL_34:
    sub_10076BC8C();
    if (v35)
    {
      v36 = sub_10076FF6C();
    }

    else
    {
      v36 = 0;
    }

    [v25 setText:v36];

    goto LABEL_38;
  }

  if (v28 == v31 && v32 == v30)
  {

    goto LABEL_38;
  }

  v34 = sub_10077167C();

  if ((v34 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_38:
  v37 = sub_10076BC6C();
  sub_100062020(v37);
  v38 = *&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_authorLabel];
  v39 = [v38 text];
  if (v39)
  {
    v40 = v39;
    v41 = sub_10076FF9C();
    v43 = v42;

    v44 = sub_10076BC2C();
    if (!v44)
    {
      if (!v43)
      {
        goto LABEL_56;
      }

      goto LABEL_51;
    }
  }

  else
  {
    v44 = sub_10076BC2C();
    if (!v44)
    {
      goto LABEL_56;
    }

    v43 = 0;
    v41 = 0;
  }

  v45 = v44;
  v46 = sub_100764D0C();
  v48 = v47;

  if (!v43)
  {
    if (!v48)
    {
      goto LABEL_56;
    }

    goto LABEL_51;
  }

  if (!v48)
  {
LABEL_51:

LABEL_52:
    v49 = sub_10076BC2C();
    if (v49)
    {
      v50 = v49;
      v51 = sub_100764CBC();
    }

    else
    {
      v51 = 0;
    }

    [v38 setAttributedText:v51];

    goto LABEL_56;
  }

  if (v41 == v46 && v43 == v48)
  {

    goto LABEL_56;
  }

  v85 = sub_10077167C();

  if ((v85 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_56:
  v52 = *&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_dateAuthorLabel];
  v53 = [v52 text];
  if (v53)
  {
    v54 = v53;
    v55 = sub_10076FF9C();
    v57 = v56;

    v58 = sub_10076BC3C();
    if (!v58)
    {
      if (!v57)
      {
        goto LABEL_74;
      }

      goto LABEL_69;
    }
  }

  else
  {
    v58 = sub_10076BC3C();
    if (!v58)
    {
      goto LABEL_74;
    }

    v57 = 0;
    v55 = 0;
  }

  v59 = v58;
  v60 = sub_100764D0C();
  v62 = v61;

  if (!v57)
  {
    if (!v62)
    {
      goto LABEL_74;
    }

    goto LABEL_69;
  }

  if (!v62)
  {
LABEL_69:

LABEL_70:
    v63 = sub_10076BC3C();
    if (v63)
    {
      v64 = v63;
      v65 = sub_100764CBC();
    }

    else
    {
      v65 = 0;
    }

    [v52 setAttributedText:v65];

    goto LABEL_74;
  }

  if (v55 == v60 && v57 == v62)
  {

    goto LABEL_74;
  }

  v86 = sub_10077167C();

  if ((v86 & 1) == 0)
  {
    goto LABEL_70;
  }

LABEL_74:
  v66 = sub_10076BC7C();
  if (!v66)
  {
    goto LABEL_109;
  }

  v67 = v66;
  v68 = sub_100764CBC();

  sub_10077077C();
  v69 = sub_100764D2C();
  sub_100764CCC();
  v70 = objc_allocWithZone(v69);
  v71 = sub_100764D3C();
  v72 = *(*&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_bodyLabel] + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_languageAwareString);
  if (v6[v8] != 1)
  {
    if (v72)
    {
      v78 = v72;
      v79 = sub_100764D0C();
      v81 = v80;

      v82 = sub_100764D0C();
      if (v81)
      {
        if (v79 == v82 && v81 == v83)
        {
          goto LABEL_97;
        }

        v84 = sub_10077167C();

        if (v84)
        {
          goto LABEL_108;
        }

LABEL_100:
        v91 = v71;
        sub_10073EC90(v71);

LABEL_106:
        goto LABEL_109;
      }
    }

    else
    {
      sub_100764D0C();
    }

    goto LABEL_100;
  }

  if (v72)
  {
    v73 = v72;
    v74 = sub_100764D0C();
    v76 = v75;

    v77 = sub_10076BC7C();
    if (!v77)
    {
      if (v76)
      {
        goto LABEL_104;
      }

      goto LABEL_108;
    }

    v145 = v74;
  }

  else
  {
    v77 = sub_10076BC7C();
    if (!v77)
    {
      goto LABEL_108;
    }

    v76 = 0;
    v145 = 0;
  }

  v87 = v77;
  v88 = sub_100764D0C();
  v90 = v89;

  if (v76)
  {
    if (v90)
    {
      if (v145 == v88 && v76 == v90)
      {
LABEL_97:

        goto LABEL_109;
      }

      v92 = sub_10077167C();

      if (v92)
      {
        goto LABEL_108;
      }

      goto LABEL_105;
    }

LABEL_104:

LABEL_105:
    v91 = sub_10076BC7C();
    sub_10073EC90(v91);

    goto LABEL_106;
  }

  if (v90)
  {
    goto LABEL_104;
  }

LABEL_108:

LABEL_109:
  if (!sub_10076BC9C())
  {
LABEL_118:
    v105 = v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse];
    v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse] = 0;
    sub_1005F9134(v105);
    [*&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseDateLabel] setText:0];
    sub_10073CEFC(0, 0);
    goto LABEL_119;
  }

  v93 = sub_10076C3CC();
  if (!v93)
  {

    goto LABEL_118;
  }

  v94 = v93;
  v95 = sub_100764CBC();

  v96 = v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse];
  v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_hasResponse] = 1;
  sub_1005F9134(v96);
  v97 = *&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseDateLabel];
  v98 = [v97 text];
  if (!v98)
  {
    sub_10076C3DC();
LABEL_127:
    if (!v104)
    {
      goto LABEL_133;
    }

    goto LABEL_128;
  }

  v99 = v98;
  v100 = sub_10076FF9C();
  v102 = v101;

  v103 = sub_10076C3DC();
  if (!v102)
  {
    goto LABEL_127;
  }

  if (!v104)
  {
LABEL_128:

LABEL_129:
    sub_10076C3DC();
    if (v118)
    {
      v119 = sub_10076FF6C();
    }

    else
    {
      v119 = 0;
    }

    [v97 setText:v119];

    goto LABEL_133;
  }

  if (v100 == v103 && v104 == v102)
  {

    goto LABEL_133;
  }

  v141 = sub_10077167C();

  if ((v141 & 1) == 0)
  {
    goto LABEL_129;
  }

LABEL_133:
  sub_10077077C();
  v120 = sub_100764D2C();
  sub_100764CCC();
  v121 = objc_allocWithZone(v120);
  v122 = sub_100764D3C();
  v123 = *(*&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_responseBodyLabel] + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_languageAwareString);
  if (v6[v147] != 1)
  {
    if (v123)
    {
      v130 = v123;
      v131 = sub_100764D0C();
      v133 = v132;

      v134 = sub_100764D0C();
      if (v133)
      {
        if (v131 == v134 && v133 == v135)
        {

          goto LABEL_119;
        }

        v142 = sub_10077167C();

        if (v142)
        {
          goto LABEL_164;
        }

LABEL_151:
        v140 = v122;
        sub_10073EC90(v122);

        goto LABEL_119;
      }
    }

    else
    {
      sub_100764D0C();
    }

    goto LABEL_151;
  }

  if (v123)
  {
    v124 = v123;
    v125 = sub_100764D0C();
    v127 = v126;

    v128 = sub_10076C3CC();
    if (!v128)
    {
      if (v127)
      {
        goto LABEL_161;
      }

      goto LABEL_164;
    }

    v129 = v128;
    v148 = v95;
  }

  else
  {
    v136 = sub_10076C3CC();
    if (!v136)
    {
      goto LABEL_164;
    }

    v129 = v136;
    v148 = v95;
    v127 = 0;
    v125 = 0;
  }

  v137 = sub_100764D0C();
  v139 = v138;

  if (v127)
  {
    if (v139)
    {
      if (v125 == v137 && v127 == v139)
      {

        goto LABEL_119;
      }

      v144 = sub_10077167C();

      v95 = v148;
      if (v144)
      {
        goto LABEL_164;
      }

LABEL_162:
      v143 = sub_10076C3CC();
      sub_10073EC90(v143);

      goto LABEL_119;
    }

    v95 = v148;
LABEL_161:

    goto LABEL_162;
  }

  v95 = v148;
  if (v139)
  {
    goto LABEL_161;
  }

LABEL_164:

LABEL_119:
  v106 = sub_10076BC1C();
  if (v106)
  {
    v107 = v106;
    v108 = [a4 traitCollection];
    v109 = [v108 horizontalSizeClass];

    if (v109 == 1)
    {
      v110 = swift_allocObject();
      *(v110 + 16) = a5;
      *(v110 + 24) = v107;
      v111 = &v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapHandler];
      v112 = *&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapHandler];
      v113 = *&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreReviewTapHandler + 8];
      *v111 = sub_100372EF4;
      v111[1] = v110;

      sub_1000167E0(v112, v113);
      v114 = &v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapHandler];
      v115 = *&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapHandler];
      v116 = *&v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_moreResponseTapHandler + 8];
      *v114 = sub_100372EF4;
      v114[1] = v110;
      sub_1000167E0(v115, v116);
    }

    else
    {
    }
  }

  v6[OBJC_IVAR____TtC20ProductPageExtension17ProductReviewView_isFlowPreviewingDestination] = a3 & 1;
  sub_1005F87EC();

  return [v6 setNeedsLayout];
}

uint64_t sub_100372D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1000527AC(v6);
  }

  sub_100263BF0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

uint64_t sub_100372EB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100372F00(uint64_t a1, int a2, int a3, void *a4, double a5)
{
  v159 = a4;
  v152 = a3;
  v165 = a2;
  v6 = sub_10000A5D4(&unk_1009542E0, qword_1007AF290);
  v161 = *(v6 - 8);
  v162 = v6;
  __chkstk_darwin(v6);
  v160 = v144 - v7;
  v8 = sub_1007681FC();
  v153 = *(v8 - 8);
  v154 = v8;
  __chkstk_darwin(v8);
  v155 = v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076821C();
  v11 = *(v10 - 8);
  v157 = v10;
  v158 = v11;
  __chkstk_darwin(v10);
  v156 = v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10076DA7C();
  v163 = *(v13 - 8);
  v164 = v13;
  __chkstk_darwin(v13);
  v171 = v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v181 = v144 - v16;
  __chkstk_darwin(v17);
  v182 = v144 - v18;
  __chkstk_darwin(v19);
  v183 = v144 - v20;
  __chkstk_darwin(v21);
  v184 = v144 - v22;
  __chkstk_darwin(v23);
  v180 = v144 - v24;
  __chkstk_darwin(v25);
  v185 = v144 - v26;
  __chkstk_darwin(v27);
  v174 = v144 - v28;
  v29 = sub_10076DD3C();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v150 = v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v151 = v144 - v33;
  __chkstk_darwin(v34);
  v36 = v144 - v35;
  __chkstk_darwin(v37);
  v179 = v144 - v38;
  __chkstk_darwin(v39);
  v147 = v144 - v40;
  __chkstk_darwin(v41);
  v148 = v144 - v42;
  __chkstk_darwin(v43);
  v170 = v144 - v44;
  __chkstk_darwin(v45);
  v145 = v144 - v46;
  __chkstk_darwin(v47);
  v146 = v144 - v48;
  __chkstk_darwin(v49);
  v176 = v144 - v50;
  __chkstk_darwin(v51);
  v177 = v144 - v52;
  __chkstk_darwin(v53);
  v178 = v144 - v54;
  __chkstk_darwin(v55);
  v186 = v144 - v56;
  __chkstk_darwin(v57);
  v59 = v144 - v58;
  __chkstk_darwin(v60);
  v169 = v144 - v61;
  __chkstk_darwin(v62);
  v64 = v144 - v63;
  __chkstk_darwin(v65);
  v67 = v144 - v66;
  __chkstk_darwin(v68);
  v70 = v144 - v69;
  __chkstk_darwin(v71);
  v175 = v144 - v72;
  v73 = sub_10076BC9C();
  if (v73)
  {
  }

  v166 = v73;
  v172 = v59;
  v188 = a1;
  v168 = v36;
  sub_10076DD2C();
  if (qword_100940C78 != -1)
  {
    swift_once();
  }

  v189 = sub_10076D3DC();
  sub_10000A61C(v189, qword_1009A1360);
  sub_10076DCFC();
  v74 = v30;
  v76 = v30 + 8;
  v75 = *(v30 + 8);
  v75(v64, v29);
  v77 = v29;
  v78 = v165;
  v144[3] = ~v165;
  sub_10076DD1C();
  v75(v67, v77);
  v79 = (v78 & 1) == 0;
  v80 = v77;
  if (v79)
  {
    v81 = 4;
  }

  else
  {
    v81 = 0;
  }

  v144[2] = v81;
  sub_10076DD0C();
  v191 = v76;
  v75(v70, v77);
  v82 = sub_10076BC5C();
  if (v82)
  {
    v83 = v82;
    sub_100764D0C();
  }

  v173 = v75;
  v84 = *(v74 + 16);
  v187 = v74 + 16;
  v190 = v84;
  v84(v64, v175, v77);
  sub_10076DA5C();
  sub_10076DA9C();
  v149 = sub_10076DDDC();
  swift_allocObject();
  v167 = sub_10076DD9C();
  v85 = v186;
  sub_10076DD2C();
  if (qword_100940C90 != -1)
  {
    swift_once();
  }

  v86 = sub_10000A61C(v189, qword_1009A13A8);
  v87 = v172;
  v144[1] = v86;
  sub_10076DCFC();
  v88 = v173;
  v173(v85, v80);
  sub_10076DD1C();
  v88(v87, v80);
  v89 = v169;
  sub_10076DD0C();
  v88(v64, v80);
  sub_10076BC8C();
  v90 = v89;
  v91 = v190;
  v190(v64, v90, v80);
  sub_10076DA5C();
  v92 = v186;
  sub_10076DA9C();
  sub_10076DD2C();
  if (qword_100940C98 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v189, qword_1009A13C0);
  sub_10076DCFC();
  v88(v92, v80);
  sub_10076DD1C();
  v88(v87, v80);
  sub_10076DD0C();
  v88(v64, v80);
  v93 = sub_10076BC2C();
  if (v93)
  {
    v94 = v93;
    sub_100764D0C();

    v91 = v190;
  }

  v91(v64, v178, v80);
  sub_10076DA5C();
  sub_10076DA9C();
  v95 = v186;
  sub_10076DD2C();
  if (qword_100940CA0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v189, qword_1009A13D8);
  v96 = v172;
  sub_10076DCFC();
  v88(v95, v80);
  sub_10076DD1C();
  v88(v96, v80);
  sub_10076DD0C();
  v88(v64, v80);
  v97 = sub_10076BC3C();
  if (v97)
  {
    v98 = v97;
    sub_100764D0C();

    v190(v64, v177, v80);
  }

  else
  {
    v91(v64, v177, v80);
  }

  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DD2C();
  if (qword_100940C88 != -1)
  {
    swift_once();
  }

  v99 = sub_10000A61C(v189, qword_1009A1390);
  v100 = v145;
  v144[0] = v99;
  sub_10076DCFC();
  v88(v64, v80);
  v101 = v146;
  sub_10076DD1C();
  v88(v100, v80);
  sub_10076DD0C();
  v88(v101, v80);
  v102 = sub_10076BC7C();
  if (v102)
  {
    v103 = v102;
    sub_100764D0C();
  }

  v104 = v190;
  v190(v64, v176, v80);
  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DD2C();
  v105 = v189;
  if (qword_100940C80 != -1)
  {
    v143 = v189;
    swift_once();
    v105 = v143;
  }

  sub_10000A61C(v105, qword_1009A1378);
  v106 = v147;
  sub_10076DCFC();
  v107 = v173;
  v173(v64, v80);
  v108 = v148;
  sub_10076DD1C();
  v107(v106, v80);
  v109 = v170;
  sub_10076DD0C();
  v107(v108, v80);
  v201._object = 0x80000001007E1420;
  v201._countAndFlagsBits = 0xD000000000000012;
  v202._countAndFlagsBits = 0;
  v202._object = 0xE000000000000000;
  sub_1007622EC(v201, v202);
  v104(v64, v109, v80);
  sub_10076DA5C();
  sub_10076DA9C();
  v110 = v186;
  sub_10076DD2C();
  v111 = v172;
  sub_10076DCFC();
  v107(v110, v80);
  sub_10076DD1C();
  v107(v111, v80);
  sub_10076DD0C();
  v107(v64, v80);
  v112 = sub_10076BC9C();
  v113 = v171;
  if (v112)
  {
    sub_10076C3DC();
  }

  v190(v64, v179, v80);
  sub_10076DA5C();
  sub_10076DA9C();
  sub_10076DD2C();
  v114 = v150;
  sub_10076DCFC();
  v107(v64, v80);
  v115 = v151;
  sub_10076DD1C();
  v107(v114, v80);
  v116 = v168;
  sub_10076DD0C();
  v107(v115, v80);
  if (sub_10076BC9C())
  {
    v117 = sub_10076C3CC();

    if (v117)
    {
      sub_100764D0C();
    }
  }

  v190(v64, v116, v80);
  sub_10076DA5C();
  sub_10076DA9C();
  v118 = v113;
  if (qword_1009412A8 != -1)
  {
    swift_once();
  }

  v119 = v154;
  v120 = sub_10000A61C(v154, qword_1009A2578);
  (*(v153 + 16))(v155, v120, v119);
  v121 = v164;
  v200[3] = v164;
  v200[4] = &protocol witness table for LabelPlaceholder;
  v122 = sub_10000DB7C(v200);
  v123 = v163;
  v124 = *(v163 + 16);
  v124(v122, v174, v121);
  v199[3] = v121;
  v199[4] = &protocol witness table for LabelPlaceholder;
  v125 = sub_10000DB7C(v199);
  v124(v125, v185, v121);
  v198[3] = v121;
  v198[4] = &protocol witness table for LabelPlaceholder;
  v126 = sub_10000DB7C(v198);
  v124(v126, v180, v121);
  v197[3] = v121;
  v197[4] = &protocol witness table for LabelPlaceholder;
  v127 = sub_10000DB7C(v197);
  v124(v127, v184, v121);
  v196[3] = v121;
  v196[4] = &protocol witness table for LabelPlaceholder;
  v128 = sub_10000DB7C(v196);
  v124(v128, v183, v121);
  v195[3] = v121;
  v195[4] = &protocol witness table for LabelPlaceholder;
  v129 = sub_10000DB7C(v195);
  v124(v129, v182, v121);
  v194[3] = v121;
  v194[4] = &protocol witness table for LabelPlaceholder;
  v130 = sub_10000DB7C(v194);
  v124(v130, v181, v121);
  v193[3] = v121;
  v193[4] = &protocol witness table for LabelPlaceholder;
  v131 = sub_10000DB7C(v193);
  v124(v131, v118, v121);
  v192 = v167;
  sub_10076D2DC();
  v132 = v156;
  sub_10076820C();
  v133 = [v159 traitCollection];
  sub_100374304(v134);
  v135 = v160;
  v136 = v157;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v137 = v162;
  sub_10076E0FC();
  v139 = v138;

  (*(v161 + 8))(v135, v137);
  (*(v158 + 8))(v132, v136);
  v140 = *(v123 + 8);
  v140(v171, v121);
  v141 = v173;
  v173(v168, v80);
  v140(v181, v121);
  v141(v179, v80);
  v140(v182, v121);
  v141(v170, v80);
  v140(v183, v121);
  v141(v176, v80);
  v140(v184, v121);
  v141(v177, v80);
  v140(v180, v121);
  v141(v178, v80);
  v140(v185, v121);
  v141(v169, v80);
  v140(v174, v121);
  v141(v175, v80);
  return v139;
}

unint64_t sub_100374304(__n128 a1)
{
  result = qword_1009605D0;
  if (!qword_1009605D0)
  {
    sub_10076821C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009605D0);
  }

  return result;
}

double sub_10037435C(void *a1)
{
  v2 = sub_10076048C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009412C0 != -1)
  {
    swift_once();
  }

  v6 = sub_10000A5D4(&unk_100945BD0, qword_100796680);
  sub_10000A61C(v6, qword_1009A25A0);
  v31 = a1;
  sub_10075FDCC();
  v7 = v32;
  v9 = [a1 traitCollection];
  if (qword_1009412B8 != -1)
  {
    swift_once();
  }

  v33.is_nil = qword_1009A2598;
  v33.value._rawValue = 0;
  isa = sub_1007706DC(v33, v8).super.isa;
  v29 = isa;

  v30 = UIFontTextStyleCaption2;
  v11 = objc_opt_self();
  v12 = [v11 configurationWithTextStyle:UIFontTextStyleCaption2 scale:1];
  v13 = v3;
  v14 = *(v3 + 104);
  v14(v5, enum case for SystemImage.star(_:), v2);
  v15 = [v12 configurationWithTraitCollection:isa];
  v16 = sub_10076046C();

  v17 = *(v13 + 8);
  v17(v5, v2);
  [v16 contentInsets];
  v19 = v18;
  [v16 contentInsets];
  v21 = v19 + v20;
  [v16 size];
  v23 = v22 - v21;
  [v16 contentInsets];
  [v16 contentInsets];
  [v16 size];

  v24 = [v11 configurationWithTextStyle:v30 scale:1];
  v14(v5, enum case for SystemImage.starFill(_:), v2);
  v25 = v29;
  v26 = [v24 configurationWithTraitCollection:v29];
  v27 = sub_10076046C();

  v17(v5, v2);
  sub_100770E5C();
  [v27 contentInsets];

  return v7 * 4.0 + v23 * 5.0;
}

double sub_100374768(uint64_t a1)
{
  v2 = sub_10077164C();
  v132 = *(v2 - 8);
  v133 = v2;
  __chkstk_darwin(v2);
  v128 = v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_10076D39C();
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v131 = v119 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v5 - 8);
  v7 = v119 - v6;
  v137 = sub_10076C36C();
  v8 = *(v137 - 8);
  __chkstk_darwin(v137);
  *&v135 = v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v136 = v119 - v11;
  v12 = sub_10076C38C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v119 - v17;
  __chkstk_darwin(v19);
  v138 = v119 - v20;
  sub_10076B56C();
  sub_100375C78(&qword_100954300, &type metadata accessor for Quote, &protocol conformance descriptor for Quote);
  sub_10076332C();
  v140 = v147;
  if (!v147)
  {
    return 0.0;
  }

  v125 = v7;
  (*(v8 + 104))(v136, enum case for PageGrid.Direction.vertical(_:), v137);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C24C();
  v21 = *(v13 + 8);
  v21(v18, v12);
  swift_getKeyPath();
  v139 = a1;
  sub_10076338C();

  sub_10076C26C();
  v21(v15, v12);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C25C();
  v21(v18, v12);
  v23 = v136;
  v22 = v137;
  (*(v8 + 16))(v135, v136, v137);
  sub_1005AC334(0.0);
  sub_10076C33C();
  (*(v8 + 8))(v23, v22);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v136 = v21;
  v137 = v12;
  v21(v18, v12);
  sub_10076C2EC();
  sub_100770ACC();
  v151._object = 0x80000001007E1440;
  v151._countAndFlagsBits = 0xD000000000000010;
  v152._countAndFlagsBits = 0;
  v152._object = 0xE000000000000000;
  v24 = sub_1007622EC(v151, v152);
  v26 = sub_1003B5290(v24, v25);
  v27 = v13 + 8;
  if (v26 <= 2)
  {
    v28 = v18;
    if (v26)
    {
      if (v26 == 1)
      {
        if (qword_100940290 != -1)
        {
          swift_once();
        }

        v29 = &xmmword_10099F3D8;
      }

      else
      {
        if (qword_100940298 != -1)
        {
          swift_once();
        }

        v29 = &xmmword_10099F430;
      }

      goto LABEL_23;
    }

    goto LABEL_17;
  }

  if (v26 - 3 >= 2)
  {
    v28 = v18;
    if (v26 == 5)
    {
      if (qword_1009402A8 != -1)
      {
        swift_once();
      }

      v29 = &xmmword_10099F4E0;
      goto LABEL_23;
    }

LABEL_17:
    if (qword_100940288 != -1)
    {
      swift_once();
    }

    v29 = &xmmword_10099F380;
    goto LABEL_23;
  }

  v28 = v18;
  if (qword_1009402A0 != -1)
  {
    swift_once();
  }

  v29 = &xmmword_10099F488;
LABEL_23:
  v31 = v29[3];
  *&v149[32] = v29[4];
  v150 = *(v29 + 10);
  v32 = v29[2];
  *&v149[16] = v31;
  *v149 = v32;
  v33 = *v29;
  v148 = v29[1];
  v147 = v33;
  v35 = *&v149[40];
  v34 = v150;
  v134 = *&v149[8];
  v135 = *&v149[24];
  v37 = *(&v148 + 1);
  v36 = *v149;
  v39 = *(&v33 + 1);
  v38 = v148;
  v40 = v33;
  sub_100375BC0(&v147, v144);
  v144[0] = __PAIR128__(v39, v40);
  v144[1] = __PAIR128__(v37, v38);
  *&v145[0] = v36;
  *(v145 + 8) = v134;
  *(&v145[1] + 8) = v135;
  *(&v145[2] + 1) = v35;
  v146 = v34;
  *v149 = v145[0];
  v147 = __PAIR128__(v39, v40);
  v148 = __PAIR128__(v37, v38);
  v150 = v34;
  *&v149[16] = v145[1];
  *&v149[32] = v145[2];
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2EC();
  (v136)(v28, v137);
  v41 = [objc_allocWithZone(type metadata accessor for QuotesLabel()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v135 = sub_1003B52DC(&v147);

  sub_10076B53C();
  v43 = v42;
  v44 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_1009402C8 != -1)
  {
    swift_once();
  }

  v126 = v27;
  *&v134 = sub_10076D3DC();
  v45 = sub_10000A61C(v134, qword_10099F538);
  swift_getKeyPath();
  sub_10076338C();

  v46 = v141[0];
  v124 = v45;
  v47 = sub_100770B3C();

  sub_10000A5D4(&unk_10094E7E0, qword_100785360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100784500;
  *(inited + 32) = NSParagraphStyleAttributeName;
  v49 = qword_10093F680;
  v50 = NSParagraphStyleAttributeName;
  if (v49 != -1)
  {
    swift_once();
  }

  v51 = [qword_10099CDD8 paragraphStyleWithBaseWritingDirection:-1];
  v52 = sub_100016F40(0, &qword_10094D748, NSParagraphStyle_ptr);
  *(inited + 40) = v51;
  *(inited + 64) = v52;
  *(inited + 72) = NSFontAttributeName;
  *(inited + 104) = v44;
  *(inited + 80) = v47;
  v53 = NSFontAttributeName;
  *&v130 = v47;
  sub_1000FC5F4(inited);
  swift_setDeallocating();
  sub_10000A5D4(&unk_100948B10, &unk_10078B4F0);
  swift_arrayDestroy();
  v54 = objc_allocWithZone(NSMutableAttributedString);
  v55 = sub_10076FF6C();
  type metadata accessor for Key(0);
  sub_100375C78(&qword_100943320, type metadata accessor for Key, &unk_100783A7C);
  isa = sub_10076FE3C().super.isa;

  v57 = [v54 initWithString:v55 attributes:isa];

  if (v135)
  {
    v123 = v43;
    v58 = v135;
    sub_1000FC5F4(_swiftEmptyArrayStorage);
    v59 = v57;
    v60 = objc_allocWithZone(NSAttributedString);
    v61 = sub_10076FF6C();
    v62 = sub_10076FE3C().super.isa;

    v63 = [v60 initWithString:v61 attributes:v62];

    [v59 appendAttributedString:v63];
    v64 = [objc_allocWithZone(NSTextAttachment) init];
    [v64 setImage:v58];
    [v58 size];
    [v64 setBounds:{0.0, -v35, v65, v66}];
    v67 = [objc_opt_self() attributedStringWithAttachment:v64];
    [v59 appendAttributedString:v67];

    sub_100375C20(v144);
  }

  else
  {

    sub_100375C20(v144);
    v59 = v57;
  }

  v68 = v134;
  v69 = *(v134 - 8);
  v70 = v125;
  (*(v69 + 16))(v125, v124, v134);
  (*(v69 + 56))(v70, 0, 1, v68);
  swift_getKeyPath();
  sub_10076338C();

  v71 = sub_10076C04C();
  v142 = v71;
  v122 = sub_100375C78(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v143 = v122;
  v72 = sub_10000DB7C(v141);
  v73 = *(v71 - 8);
  v74 = *(v73 + 104);
  v121 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v119[1] = v73 + 104;
  v120 = v74;
  v74(v72);
  sub_10076C90C();
  sub_10000CD74(v141);
  sub_10076990C();
  v76 = v75;
  v78 = v77;
  v80 = v79;
  swift_unknownObjectRelease();
  sub_1000276DC(v70);
  if (qword_1009402D8 != -1)
  {
    swift_once();
  }

  v125 = v59;
  v81 = sub_10076D9AC();
  sub_10000A61C(v81, qword_10099F568);
  swift_getKeyPath();
  sub_10076338C();

  sub_10076D42C();
  v83 = v82;
  swift_unknownObjectRelease();
  v84 = v76 + v83;
  if (qword_1009402E0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v81, qword_10099F580);
  swift_getKeyPath();
  sub_10076338C();

  v85 = v141[0];
  v86 = sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v87 = swift_allocObject();
  v130 = xmmword_1007841E0;
  *(v87 + 16) = xmmword_1007841E0;
  *(v87 + 32) = v85;
  v88 = v85;
  v123 = v86;
  v89 = sub_10076DEEC();
  sub_10076D3EC();
  v91 = v90;

  v30 = v84 + v91 - v80;
  v124 = [objc_allocWithZone(NSStringDrawingContext) init];
  [v124 setMaximumNumberOfLines:0];
  sub_10076B54C();
  if (v92)
  {
    if (qword_1009402D0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v134, qword_10099F550);
    swift_getKeyPath();
    sub_10076338C();

    v142 = v71;
    v143 = v122;
    v93 = sub_10000DB7C(v141);
    v120(v93, v121, v71);
    sub_10076C90C();
    sub_10000CD74(v141);
    sub_10076991C();
    v95 = v94;
    swift_unknownObjectRelease();

    if (qword_1009402E8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v81, qword_10099F598);
    swift_getKeyPath();
    sub_10076338C();

    v96 = v141[0];
    v97 = swift_allocObject();
    *(v97 + 16) = v130;
    *(v97 + 32) = v96;
    v98 = v96;
    v99 = sub_10076DEEC();
    sub_10076D3EC();
    v101 = v100;

    v102 = v95 + v101 - v78;
    v103 = v132;
    if (qword_1009402F0 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v81, qword_10099F5B0);
    swift_getKeyPath();
    sub_10076338C();

    v104 = v141[0];
    v105 = swift_allocObject();
    *(v105 + 16) = v130;
    *(v105 + 32) = v104;
    v106 = v104;
    v107 = sub_10076DEEC();
    sub_10076D3EC();
    v109 = v108;

    v30 = v30 + v102 + v109 - v80;
    v110 = v133;
  }

  else
  {
    v103 = v132;
    v110 = v133;
  }

  v111 = v131;
  if (sub_10076B55C())
  {
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D36C();
    v113 = v112;
    if (qword_1009402F8 != -1)
    {
      swift_once();
    }

    sub_10000A61C(v81, qword_10099F5C8);
    swift_getKeyPath();
    sub_10076338C();

    v114 = v141[0];
    v115 = v128;
    sub_10076D17C();
    sub_10076D97C();
    v117 = v116;

    (*(v103 + 8))(v115, v110);
    (*(v127 + 8))(v111, v129);
    (v136)(v138, v137);
    return v30 + v113 + v117;
  }

  else
  {
    (v136)(v138, v137);
  }

  return v30;
}

uint64_t sub_100375C78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100375D34(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ScreenshotGalleryCollectionViewCell(0);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ScreenshotGalleryCollectionViewCell(uint64_t a1)
{
  result = qword_100954330;
  if (!qword_100954330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100375DF8()
{
  sub_1000325F0();
  v0 = [objc_allocWithZone(UIColor) initWithRed:0.929411765 green:0.964705882 blue:1.0 alpha:1.0];
  v1.super.isa = [objc_allocWithZone(UIColor) initWithRed:0.11372549 green:0.137254902 blue:0.176470588 alpha:1.0];
  v2.super.isa = v0;
  qword_10099F0F0 = sub_100770DEC(v2, v1).super.isa;
}

void sub_100375E9C()
{
  sub_1000325F0();
  v0 = objc_opt_self();
  v1 = [v0 systemBlueColor];
  v2 = [v1 colorWithAlphaComponent:0.07];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent:0.05];

  v5.super.isa = v2;
  v6.super.isa = v4;
  qword_10099F0F8 = sub_100770DEC(v5, v6).super.isa;
}

id sub_100375F70(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC20ProductPageExtension16AdBackgroundView_isBorderHidden] = 0;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v11 = qword_1009401C8;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  [v12 setBackgroundColor:qword_10099F0F0];
  v13 = [v12 layer];
  if (qword_1009401D0 != -1)
  {
    swift_once();
  }

  v14 = [qword_10099F0F8 CGColor];
  [v13 setBorderColor:v14];

  v15 = [v12 layer];
  [v15 setBorderWidth:1.0];

  [v12 setUserInteractionEnabled:0];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100783DD0;
  *(v16 + 32) = sub_10076E4CC();
  *(v16 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v12;
}

void sub_100376258(void *a1)
{
  if ((*(a1 + OBJC_IVAR____TtC20ProductPageExtension16AdBackgroundView_isBorderHidden) & 1) == 0)
  {
    v2 = [a1 layer];
    if (qword_1009401D0 != -1)
    {
      swift_once();
    }

    v3 = [qword_10099F0F8 CGColor];
    [v2 setBorderColor:v3];
  }
}

unint64_t sub_100376324()
{
  sub_10077145C(34);

  sub_10075E0AC();
  v1._countAndFlagsBits = sub_10077163C();
  sub_1007700CC(v1);

  v2._countAndFlagsBits = 45;
  v2._object = 0xE100000000000000;
  sub_1007700CC(v2);
  sub_10075E09C();
  v3._countAndFlagsBits = sub_10077163C();
  sub_1007700CC(v3);

  return 0xD00000000000001DLL;
}

uint64_t sub_100376418(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
  }

  else
  {
    v3 = [a1 tabBarController];
    if (!v3)
    {
LABEL_10:
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v8 = v11;
        v12 = a1;
      }

      else
      {
        v8 = [a1 navigationController];
        if (!v8)
        {
          v13 = 0;
          goto LABEL_19;
        }
      }

      goto LABEL_13;
    }
  }

  v5 = [v3 selectedViewController];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      goto LABEL_13;
    }
  }

  v9 = [v3 selectedViewController];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v8 = [v9 navigationController];

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_13:
  v13 = [v8 presentedViewController];
  if (v13)
  {
    type metadata accessor for PresentationContextViewController();
    v14 = swift_dynamicCastClass();
    if (!v14 || (v15 = [v14 presentedViewController], v13, (v13 = v15) != 0))
    {
      v16 = v13;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (!v13)
      {
      }

      goto LABEL_20;
    }
  }

LABEL_19:
  v16 = 0;
LABEL_20:
  v35[0] = v16;
  v35[1] = v13;
  v35[2] = v8;
  v35[3] = a1;
  v17 = v8;
  v18 = a1;
  v34 = v16;
  result = v13;
  v20 = result;
  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  do
  {
    if (v21 <= 4)
    {
      v23 = 4;
    }

    else
    {
      v23 = v21;
    }

    v24 = v21;
    while (1)
    {
      if (v23 == v24)
      {
        __break(1u);
        return result;
      }

      v25 = v35[v24];
      if (v25)
      {
        swift_getObjectType();
        result = swift_conformsToProtocol2();
        if (result)
        {
          break;
        }
      }

      if (++v24 == 4)
      {
        goto LABEL_34;
      }
    }

    v33 = v20;
    v26 = result;
    v32 = v25;
    result = swift_isUniquelyReferenced_nonNull_native();
    v27 = v3;
    if ((result & 1) == 0)
    {
      result = sub_10049DE44(0, v22[2] + 1, 1, v22);
      v22 = result;
    }

    v29 = v22[2];
    v28 = v22[3];
    if (v29 >= v28 >> 1)
    {
      result = sub_10049DE44((v28 > 1), v29 + 1, 1, v22);
      v22 = result;
    }

    v21 = v24 + 1;
    v22[2] = v29 + 1;
    v30 = &v22[2 * v29];
    v30[4] = v32;
    v30[5] = v26;
    v3 = v27;
    v20 = v33;
  }

  while (v24 != 3);
LABEL_34:
  sub_10000A5D4(&unk_100954370, qword_10079DB08);
  swift_arrayDestroy();
  if (v22[2])
  {
    v31 = v22[4];

    v8 = *&v31[OBJC_IVAR____TtC20ProductPageExtension30ArticleContainerViewController_wrapperViewController];
  }

  else
  {

    if (v13)
    {

      return v13;
    }
  }

  return v8;
}

unint64_t sub_1003767CC(void *a1)
{
  v1 = sub_100376418(a1);
  if (!v1)
  {
LABEL_12:

    return a1;
  }

  v2 = v1;
  v3 = [v1 viewControllers];

  sub_10003F040();
  v4 = sub_1007701BC();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v5 = sub_10077158C();
  if (!v5)
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_4:
  v6 = __OFSUB__(v5, 1);
  result = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v8 = sub_10077149C();
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(v4 + 8 * result + 32);
LABEL_9:
    v9 = v8;

    return v9;
  }

  __break(1u);
  return result;
}

void sub_1003768E4(uint64_t a1)
{
  if (!a1)
  {
    sub_10050C548();
    goto LABEL_7;
  }

  sub_1007659AC();
  v1 = sub_10076082C();
  sub_100107BF4(v1, sub_1000368B8);
  v3 = v2;

  v4 = sub_10076081C();
  sub_10050C274(v4, 0, v3);

  if (!sub_1007659BC())
  {
LABEL_7:
    sub_10050C548();
    return;
  }

  v5 = sub_10076082C();
  sub_100107BF4(v5, sub_100376A9C);
  v7 = v6;

  v8 = sub_10076081C();
  sub_10050C274(v8, 0, v7);
}

uint64_t sub_100376AC8(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D9AC();
  v8 = sub_10000A61C(v7, qword_1009A2368);
  *a2 = v7;
  *a3 = &protocol witness table for StaticDimension;
  v9 = sub_10000DB7C(a4);
  v10 = *(*(v7 - 8) + 16);

  return v10(v9, v8, v7);
}

char *sub_100376BC8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_itemLayoutContext;
  v10 = sub_10076341C();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_platform] = 0;
  v11 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_flowLayout;
  v12 = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_pageTraits] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView] = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_sizedArtwork] = _swiftEmptyArrayStorage;
  v13 = &v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_didSelectHandler];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = [objc_allocWithZone(UICollectionView) initWithFrame:v12 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_collectionView] = v14;
  v29.receiver = v4;
  v29.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell(0);
  v15 = objc_msgSendSuper2(&v29, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v17 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_collectionView;
  [*&v15[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_collectionView] setDecelerationRate:UIScrollViewDecelerationRateFast];
  v18 = *&v15[v17];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 clearColor];
  [v20 setBackgroundColor:v21];

  [*&v15[v17] setAllowsSelection:1];
  [*&v15[v17] setAlwaysBounceHorizontal:1];
  [*&v15[v17] setShowsHorizontalScrollIndicator:0];
  [*&v15[v17] setDataSource:v15];
  v22 = *&v15[v17];
  [v22 setDelegate:v15];

  v23 = *&v15[v17];
  type metadata accessor for ScreenshotCollectionViewCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v25 = v23;
  sub_1007708FC();
  v26 = sub_10076FF6C();

  [v25 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v26];

  v27 = [v15 contentView];
  [v27 addSubview:*&v15[v17]];

  return v15;
}

id sub_100376F78()
{
  v1 = v0;
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScreenshotShelfCollectionViewCell(0);
  v68.receiver = v0;
  v68.super_class = v6;
  objc_msgSendSuper2(&v68, "layoutSubviews");
  v7 = [v0 contentView];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076422C();
  v64 = v9;
  v65 = v8;
  v62 = v11;
  v63 = v10;

  v67 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView;
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  if (v12)
  {
    v17 = v12;
    [v17 frame];
    v14 = v18;
    v15 = v19;
    if (qword_1009401F0 != -1)
    {
      swift_once();
    }

    v20 = qword_10099F118;
    sub_10000CF78(qword_10099F100, qword_10099F118);
    sub_1000FF02C(v20);
    sub_10076D40C();
    v16 = v21;

    (*(v3 + 8))(v5, v2);
  }

  v22 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView;
  v23 = *&v1[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView];
  v24 = 0.0;
  v25 = 0.0;
  if (v23)
  {
    v26 = v23;
    [v26 frame];
    v13 = v27;
    v24 = v28;
    if (qword_1009401E8 != -1)
    {
      swift_once();
    }

    v29 = qword_1009543E8;
    sub_10000CF78(qword_1009543D0, qword_1009543E8);
    sub_1000FF02C(v29);
    sub_10076D40C();
    v25 = v30;

    (*(v3 + 8))(v5, v2);
  }

  if (qword_1009401D8 != -1)
  {
    swift_once();
  }

  v61 = v13;
  v66 = v14;
  v31 = qword_100954398;
  sub_10000CF78(qword_100954380, qword_100954398);
  sub_1000FF02C(v31);
  sub_10076D40C();
  v33 = v32;
  v34 = *(v3 + 8);
  v34(v5, v2);
  if (qword_1009401E0 != -1)
  {
    swift_once();
  }

  v35 = qword_1009543C0;
  sub_10000CF78(qword_1009543A8, qword_1009543C0);
  sub_1000FF02C(v35);
  sub_10076D40C();
  v37 = v36;
  v34(v5, v2);
  v59 = v15;
  v60 = v16;
  v58 = v15 + v16 + v24 + v25 + v33 + v37;
  v38 = v65;
  v69.origin.x = v65;
  v53 = v25;
  v39 = v24;
  v56 = v24;
  v41 = v63;
  v40 = v64;
  v69.origin.y = v64;
  v69.size.width = v63;
  v42 = v62;
  v69.size.height = v62;
  MinX = CGRectGetMinX(v69);
  v55 = MinX;
  v70.origin.x = v38;
  v70.origin.y = v40;
  v70.size.width = v41;
  v70.size.height = v42;
  v44 = v33 + CGRectGetMinY(v70);
  v57 = v44;
  v71.origin.x = v38;
  v71.origin.y = v40;
  v71.size.width = v41;
  v71.size.height = v42;
  v54 = CGRectGetMinX(v71);
  v72.origin.x = MinX;
  v72.origin.y = v44;
  v45 = v61;
  v72.size.width = v61;
  v72.size.height = v39;
  v46 = v53 + CGRectGetMaxY(v72);
  v73.origin.x = v38;
  v73.origin.y = v40;
  v73.size.width = v41;
  v73.size.height = v42;
  Width = CGRectGetWidth(v73);
  v74.origin.x = v38;
  v74.origin.y = v40;
  v74.size.width = v41;
  v74.size.height = v42;
  v48 = CGRectGetHeight(v74) - v58;
  v75.origin.x = v38;
  v75.origin.y = v40;
  v75.size.width = v41;
  v75.size.height = v42;
  v49 = CGRectGetMinX(v75);
  v50 = v54;
  v76.origin.x = v54;
  v76.origin.y = v46;
  v76.size.width = Width;
  v76.size.height = v48;
  v51 = v60 + CGRectGetMaxY(v76);
  [*&v1[v22] setFrame:{v55, v57, v45, v56}];
  [*&v1[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_collectionView] setFrame:{v50, v46, Width, v48}];
  return [*&v1[v67] setFrame:{v49, v51, v66, v59}];
}

double sub_100377548()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell(0);
  objc_msgSendSuper2(&v10, "prepareForReuse");
  v1 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView];
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

  [v0 setNeedsLayout];
  v4 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView;
  v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView];
  if (v5)
  {
    [v5 removeFromSuperview];
    v6 = *&v0[v4];
  }

  else
  {
    v6 = 0;
  }

  *&v0[v4] = 0;

  [v0 setNeedsLayout];
  v7 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher;
  *&v0[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher] = 0;

  v9 = *&v0[v7];
  if (v9)
  {
    *(v9 + 32) = &off_100892648;
    swift_unknownObjectWeakAssign();
  }

  return result;
}

BOOL sub_100377684()
{
  if (!*(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_platform))
  {
    return 0;
  }

  v1 = sub_100760E4C();

  if ((v1 & 1) == 0)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork);
  if (v2 >> 62)
  {
LABEL_19:
    v3 = sub_10077158C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v3 != v4;
    if (v3 == v4)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
      if (__OFADD__(v4, 1))
      {
LABEL_14:
        __break(1u);
        return 0;
      }
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v4, 1))
      {
        goto LABEL_14;
      }
    }

    v6 = sub_10076BD4C();

    ++v4;
  }

  while ((v6 & 1) == 0);

  return v5;
}

uint64_t sub_1003777D0(void *a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotCollectionViewCell(0);
  sub_1007708FC();
  v4 = sub_10076FF6C();

  isa = sub_10075E02C().super.isa;
  v6 = [a1 dequeueReusableCellWithReuseIdentifier:v4 forIndexPath:isa];

  v7 = swift_dynamicCastClassUnconditional();
  *(*(v7 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_platform);
  swift_retain_n();

  sub_100124EE0();

  return v7;
}

void sub_100377D64(void *a1, __n128 a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_didSelectHandler);
  if (v4)
  {
    v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_didSelectHandler + 8);

    v6 = sub_10075E09C();
    v7 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork);
    if ((v7 & 0xC000000000000001) == 0)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v6 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v8 = *(v7 + 8 * v6 + 32);

LABEL_6:
        v9 = sub_10075E09C();
        v4(v8, v9);
        sub_1000B9010(v4, v5);

        goto LABEL_7;
      }

      __break(1u);
      return;
    }

    v8 = sub_10077149C();

    goto LABEL_6;
  }

LABEL_7:
  isa = sub_10075E02C().super.isa;
  [a1 deselectItemAtIndexPath:isa animated:1];
}

id sub_100378078()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScreenshotShelfCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ScreenshotShelfCollectionViewCell(uint64_t a1)
{
  result = qword_100954428;
  if (!qword_100954428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1003781F4(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1003782D0(unint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6)
{
  v98 = a6;
  v100 = a3;
  v99 = a2;
  v93 = sub_10077164C();
  v9 = *(v93 - 8);
  __chkstk_darwin(v93);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = sub_10075F21C();
  v96 = *(ObjectType - 8);
  __chkstk_darwin(ObjectType);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10076D39C();
  v94 = *(v101 - 8);
  __chkstk_darwin(v101);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v88 - v17;
  __chkstk_darwin(v19);
  v21 = &v88 - v20;
  __chkstk_darwin(v22);
  v24 = &v88 - v23;
  v25 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v25 - 8);
  v95 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1 >> 62;
  v92 = v9;
  v91 = v11;
  v28 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_76:
    v104 = sub_10077158C();
  }

  else
  {
    v104 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = 0;
  v103 = a1;
  v102 = a1 & 0xC000000000000001;
  do
  {
    a1 = v29;
    if (v104 == v29)
    {
      break;
    }

    if (v102)
    {
      sub_10077149C();
      if (__OFADD__(a1, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v29 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_76;
      }

      if (__OFADD__(a1, 1))
      {
        goto LABEL_12;
      }
    }

    v30 = sub_10076BD4C();

    v29 = a1 + 1;
  }

  while ((v30 & 1) == 0);
  sub_1007601EC();
  sub_10007AFB4(v99, v95);
  if (v27)
  {
    v31 = sub_10077158C();
  }

  else
  {
    v31 = *(v28 + 16);
  }

  v90 = a5;
  v89 = a4;
  if (v31 < 1)
  {
    sub_100760E3C();
    v45 = v96;
    v46 = ObjectType;
    v47 = (*(v96 + 88))(v13, ObjectType);
    v27 = v15;
    a1 = v18;
    v33 = v94;
    if (v47 != enum case for AppPlatform.phone(_:) && v47 != enum case for AppPlatform.pad(_:) && v47 != enum case for AppPlatform.messages(_:))
    {
      if (v47 == enum case for AppPlatform.watch(_:))
      {
        if (qword_10093F5A8 == -1)
        {
LABEL_46:
          v49 = v101;
          v50 = sub_10000A61C(v101, qword_10099CB60);
          (*(v33 + 16))(a1, v50, v49);
          goto LABEL_38;
        }

LABEL_78:
        swift_once();
        goto LABEL_46;
      }

      if (v47 != enum case for AppPlatform.tv(_:) && v47 != enum case for AppPlatform.mac(_:))
      {
        sub_10076D3AC();
        (*(v45 + 8))(v13, v46);
LABEL_38:
        v48 = v100;
        if (sub_100760E4C() & 1) != 0 && (sub_10076D2EC())
        {
          if (sub_10076D2EC())
          {
            (*(v33 + 16))(v27, a1, v101);
          }

          else
          {
            sub_10076D32C();
          }
        }

        else
        {
          (*(v33 + 16))(v27, a1, v101);
          sub_10076D2EC();
        }

        swift_getObjectType();
        v51 = [v48 traitCollection];
        sub_1007706CC();

        [v48 pageMarginInsets];
        [v48 pageMarginInsets];
        PageTraitEnvironment.pageColumnMargin.getter();
        v52 = [v48 traitCollection];
        sub_1007706CC();

        sub_10076D36C();
        sub_10076D36C();
        v36 = v53;
        v54 = *(v33 + 8);
        v55 = v101;
        v54(v27, v101);
        v54(a1, v55);
        goto LABEL_49;
      }
    }

    sub_10076D3AC();
    goto LABEL_38;
  }

  v32 = v94;
  v33 = v104;
  if (!v104)
  {
    v36 = 0.0;
    goto LABEL_49;
  }

  if (v104 < 1)
  {
    __break(1u);
    goto LABEL_78;
  }

  ObjectType = swift_getObjectType();
  v34 = 0;
  v96 = v32 + 16;
  v35 = (v32 + 8);
  v36 = 0.0;
  do
  {
    if (v102)
    {
      sub_10077149C();
    }

    else
    {
    }

    v42 = v100;
    v43 = sub_100760E4C();
    sub_10076BEFC();
    sub_10076D3AC();
    if (v33 == a1 || (v43 & 1) == 0)
    {
      (*v96)(v21, v24, v101);
      sub_10076D2EC();
    }

    else if (sub_10076D2EC())
    {
      (*v96)(v21, v24, v101);
    }

    else
    {
      sub_10076D32C();
    }

    v44 = [v42 traitCollection];
    sub_1007706CC();

    [v42 pageMarginInsets];
    [v42 pageMarginInsets];
    PageTraitEnvironment.pageColumnMargin.getter();
    ++v34;
    v37 = [v42 traitCollection];
    sub_1007706CC();

    sub_10076D36C();
    sub_10076D36C();
    v39 = v38;

    v40 = *v35;
    v41 = v101;
    (*v35)(v21, v101);
    v40(v24, v41);
    if (v39 > v36)
    {
      v36 = v39;
    }

    v33 = v104;
  }

  while (v104 != v34);
LABEL_49:
  sub_10000A5D4(&unk_100952260, &unk_1007A6250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DD0;
  *(inited + 32) = v36;
  v105 = inited;
  v57 = v89;
  v58 = v93;
  v59 = v92;
  v60 = v91;
  v61 = v90;
  if (v89 >= COERCE_DOUBLE(1))
  {
    v62 = swift_initStackObject();
    *(v62 + 16) = xmmword_100784500;
    *(v62 + 32) = v57;
    if (qword_1009401E8 != -1)
    {
      swift_once();
    }

    v63 = qword_1009543E8;
    sub_10000CF78(qword_1009543D0, qword_1009543E8);
    sub_1000FF02C(v63);
    sub_10076D40C();
    v65 = v64;
    (*(v59 + 8))(v60, v58);
    *(v62 + 40) = v65;
    sub_1000F92E4(v62);
  }

  if (v61 >= COERCE_DOUBLE(1))
  {
    v66 = swift_initStackObject();
    *(v66 + 16) = xmmword_100784500;
    *(v66 + 32) = v61;
    if (qword_1009401F0 != -1)
    {
      swift_once();
    }

    v67 = qword_10099F118;
    sub_10000CF78(qword_10099F100, qword_10099F118);
    sub_1000FF02C(v67);
    sub_10076D40C();
    v69 = v68;
    (*(v59 + 8))(v60, v58);
    *(v66 + 40) = v69;
    sub_1000F92E4(v66);
  }

  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_100784500;
  if (qword_1009401D8 != -1)
  {
    swift_once();
  }

  v71 = qword_100954398;
  sub_10000CF78(qword_100954380, qword_100954398);
  sub_1000FF02C(v71);
  v72 = v100;
  sub_10076D40C();
  v74 = v73;
  v75 = *(v59 + 8);
  v75(v60, v58);
  *(v70 + 32) = v74;
  if (qword_1009401E0 != -1)
  {
    swift_once();
  }

  v76 = qword_1009543C0;
  sub_10000CF78(qword_1009543A8, qword_1009543C0);
  sub_1000FF02C(v76);
  sub_10076D40C();
  v78 = v77;
  v75(v60, v58);
  *(v70 + 40) = v78;
  sub_1000F92E4(v70);
  [v72 pageMarginInsets];
  v79 = *(v105 + 16);
  if (v79)
  {
    if (v79 <= 3)
    {
      v80 = 0;
      v81 = 0.0;
LABEL_68:
      v84 = v79 - v80;
      v85 = (v105 + 8 * v80 + 32);
      do
      {
        v86 = *v85++;
        v81 = v81 + v86;
        --v84;
      }

      while (v84);
      goto LABEL_70;
    }

    v80 = v79 & 0x7FFFFFFFFFFFFFFCLL;
    v82 = (v105 + 48);
    v81 = 0.0;
    v83 = v79 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v81 = v81 + *(v82 - 2) + *(v82 - 1) + *v82 + v82[1];
      v82 += 4;
      v83 -= 4;
    }

    while (v83);
    if (v79 != v80)
    {
      goto LABEL_68;
    }
  }

LABEL_70:
  sub_100125E90(v95);

  return v98;
}

void sub_100379184(uint64_t a1)
{
  v2 = v1;
  sub_10000A570(a1, v27);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_1007601EC();
  if (swift_dynamicCast())
  {
    v3 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher;
    if (!*&v1[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher])
    {
      type metadata accessor for ScreenshotFetcher();
      v4 = swift_allocObject();
      *(v4 + 16) = sub_1000FCDDC(_swiftEmptyArrayStorage);
      *(v4 + 32) = 0;
      swift_unknownObjectWeakInit();
      *(v4 + 32) = &off_100892648;
      swift_unknownObjectWeakAssign();
      *&v2[v3] = v4;

      v5 = *&v2[v3];
      if (v5)
      {
        *(v5 + 32) = &off_100892648;
        swift_unknownObjectWeakAssign();
      }

      v6 = sub_1007601DC();
      if (!*&v2[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_platform] || (, v7 = sub_100760E4C(), , (v7 & 1) == 0))
      {
LABEL_20:
        v11 = 0;
        goto LABEL_21;
      }

      v8 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v6 >> 62)
      {
        goto LABEL_41;
      }

      for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
      {
        v10 = 0;
        do
        {
          v11 = i != v10;
          if (i == v10)
          {
            break;
          }

          if ((v6 & 0xC000000000000001) != 0)
          {
            sub_10077149C();
            if (__OFADD__(v10, 1))
            {
              goto LABEL_19;
            }
          }

          else
          {
            if (v10 >= *(v8 + 16))
            {
              goto LABEL_40;
            }

            if (__OFADD__(v10, 1))
            {
LABEL_19:
              __break(1u);
              goto LABEL_20;
            }
          }

          v12 = sub_10076BD4C();

          ++v10;
        }

        while ((v12 & 1) == 0);
LABEL_21:

        v13 = [v2 traitCollection];
        sub_1007706CC();

        if (!*&v2[v3])
        {
          break;
        }

        v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_sizedArtwork];

        v16 = sub_10060889C(v15, v11);
        v17 = v16;
        v26 = v14;
        v25 = *(v14 + 16);
        if (!v25)
        {
LABEL_35:

          return;
        }

        v18 = 0;
        v8 = v16 & 0xFFFFFFFFFFFFFF8;
        v19 = (v26 + 48);
        v23 = v16 & 0xC000000000000001;
        v24 = v16 >> 62;
        while (v18 < *(v26 + 16))
        {
          v3 = *(v19 - 2);
          v20 = *(v19 - 1);
          v21 = *v19;
          if (v24)
          {
            if (v18 == sub_10077158C())
            {
              goto LABEL_35;
            }
          }

          else if (v18 == *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          if (v23)
          {

            sub_10077149C();
          }

          else
          {
            if (v18 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_39;
            }
          }

          v2 = v18 + 1;
          v28 = 0;
          memset(v27, 0, sizeof(v27));
          v22 = swift_allocObject();
          swift_weakInit();
          v6 = swift_allocObject();
          *(v6 + 16) = v11;
          *(v6 + 24) = v22;
          *(v6 + 32) = v3;
          *(v6 + 40) = v20;
          *(v6 + 48) = v21;
          *(v6 + 56) = v18;

          sub_100760B7C();

          sub_10000CFBC(v27, &qword_100943310, &unk_100784150);

          v19 += 3;
          v18 = v2;
          if (v25 == v2)
          {
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        ;
      }
    }
  }
}

void sub_1003795C0()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_itemLayoutContext;
  v2 = sub_10076341C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_platform) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_flowLayout;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_pageTraits) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_topAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_bottomAccessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_sizedArtwork) = _swiftEmptyArrayStorage;
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_didSelectHandler);
  *v4 = 0;
  v4[1] = 0;
  sub_10077156C();
  __break(1u);
}

void sub_1003796F8(objc_class *a1, uint64_t a2)
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_collectionView);
  sub_10000A5D4(&qword_100952110, qword_100790770);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100784500;
  *(v10 + 32) = 0;
  *(v10 + 40) = a2;
  sub_10075E01C();
  isa = sub_10075E02C().super.isa;
  (*(v6 + 8))(v8, v5);
  v12 = [v9 cellForItemAtIndexPath:isa];

  if (v12)
  {
    type metadata accessor for ScreenshotCollectionViewCell(0);
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = *(*(v13 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
      v15 = sub_10075FC9C();
      v17 = v15;
      if (v15)
      {
      }

      v19.is_nil = v17 == 0;
      v19.value.super.isa = a1;
      sub_10075FCEC(v19, v16);
    }

    else
    {
      v14 = v12;
    }
  }
}

uint64_t sub_1003798B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003798E8()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10037993C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork);
  if (v2 >> 62)
  {
    if (!sub_10077158C())
    {
      goto LABEL_4;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

  if (!*(v0 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_pageTraits))
  {
    return 0;
  }

LABEL_4:
  v3 = *(v0 + v1);
  if (!(v3 >> 62))
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_10077158C();
}

void sub_1003799E4(void *a1)
{
  v2 = v1;
  v4 = sub_10076D39C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_platform))
  {
    return;
  }

  [a1 frame];
  if (v15 <= 0.0 || v14 <= 0.0)
  {

    return;
  }

  sub_1007601EC();

  sub_10007AFB4(v16, v13);

  v17 = sub_10075E09C();
  v18 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork);
  v29 = v5;
  if ((v18 & 0xC000000000000001) == 0)
  {
    if ((v17 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v17 < *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_8;
    }

    __break(1u);
    goto LABEL_21;
  }

  sub_10077149C();
LABEL_8:
  sub_10076BEFC();
  sub_10076D3AC();

  v19 = sub_100377684();
  v20 = OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_pageTraits;
  v21 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_pageTraits);
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v22 = v19;
  swift_unknownObjectRetain();

  v23 = *(v2 + v20);
  if (!v23)
  {
LABEL_22:
    __break(1u);
    return;
  }

  [v23 pageContainerSize];
  v24 = v29;
  if (v22)
  {
    if (sub_10076D2EC())
    {
      (*(v24 + 16))(v7, v10, v4);
    }

    else
    {
      sub_10076D32C();
    }
  }

  else
  {
    (*(v29 + 16))(v7, v10, v4);
    sub_10076D2EC();
  }

  swift_getObjectType();
  v25 = [v21 traitCollection];
  sub_1007706CC();

  [v21 pageMarginInsets];
  [v21 pageMarginInsets];
  PageTraitEnvironment.pageColumnMargin.getter();
  v26 = [v21 traitCollection];
  sub_1007706CC();

  sub_10076D36C();
  sub_10076D36C();

  swift_unknownObjectRelease();
  v27 = *(v29 + 8);
  v27(v7, v4);
  v27(v10, v4);
  sub_100125E90(v13);
}

void sub_100379E80(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ScreenshotCollectionViewCell(0);
  v3 = swift_dynamicCastClassUnconditional();
  v4 = sub_10075E09C();
  v5 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_artwork);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = sub_10077149C();

    goto LABEL_5;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v6 = *(v5 + 8 * v4 + 32);

LABEL_5:
  v7 = OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView;
  *(*(v3 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform) = *(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_platform);
  swift_retain_n();

  sub_100124EE0();

  v8 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_screenshotFetcher);
  if (v8)
  {
    swift_beginAccess();
    v9 = *(v8 + 16);

    v11 = sub_100625CFC(v6, v9, v10);

    if (v11)
    {
      v12 = *(*(v3 + v7) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
      v13 = v11;
      v14 = v12;
      v15 = sub_10075FC9C();

      if (v15 && (sub_100016F40(0, &qword_10094F610, UIImage_ptr), v16 = v13, v17 = sub_100770EEC(), v16, v15, (v17 & 1) != 0))
      {
      }

      else
      {
        v18 = *(*(v3 + v7) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
        v19 = sub_10075FC9C();
        v21 = v19;
        if (v19)
        {
        }

        v23.is_nil = v21 == 0;
        v23.value.super.isa = v11;
        sub_10075FCEC(v23, v20);
      }
    }
  }
}

void sub_10037A0F4(void *a1, SEL *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      v7 = a1;
      swift_unknownObjectRetain();
      PageTraitEnvironment.pageColumnMargin.getter();
      v9 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = a1;
      v9 = 8.0;
    }

    [v6 *a2];
  }

  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension33ScreenshotShelfCollectionViewCell_pageTraits))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    PageTraitEnvironment.pageColumnMargin.getter();
    swift_unknownObjectRelease();
  }
}

double sub_10037A244()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B9EC();
  sub_10037A4B0(&qword_100943140, &type metadata accessor for Banner, &protocol conformance descriptor for Banner);
  sub_10076332C();
  v4 = v17;
  if (!v17)
  {
    return 0.0;
  }

  if (sub_10076B99C())
  {

    v5 = 15.0;
  }

  else
  {
    v5 = 22.0;
  }

  sub_10076B98C();
  sub_10000A5D4(&unk_10094C3B0, qword_10078C480);
  v7 = sub_1007701EC();

  v8 = 15.0;
  if ((v7 & 1) == 0)
  {
    v8 = v5;
  }

  v9 = 9.0;
  if (v7)
  {
    v9 = 12.0;
  }

  *&v17 = v9;
  *(&v17 + 1) = 0x402E000000000000;
  v18 = v9;
  v19 = xmmword_100785060;
  v20 = v5;
  v21 = 0x4022000000000000;
  v22 = v8;
  v23 = xmmword_100785070;
  v24 = xmmword_100785080;
  v10 = sub_100630CB4();
  swift_getKeyPath();
  sub_10076338C();

  sub_10076C2FC();
  v12 = v11;
  v14 = v13;
  (*(v1 + 8))(v3, v0);
  sub_10011D440(v4, &v17, v10, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, v12, v14);
  v6 = v15;
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_10037A4B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10037A4FC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v9 initWithFrame:{a2, a3, a4, a5}];
}