id sub_100532DD4(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v2 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v27 = &v27 - v3;
  v4 = sub_10076B6EC();
  v34 = *(v4 - 8);
  v35 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076664C();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v10 = *(v31 - 8);
  __chkstk_darwin(v31);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v27 - v18;
  sub_1007633BC();
  sub_10076F4AC();
  (*(v17 + 8))(v19, v16);
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  v20 = sub_100630CB4();
  sub_10000A570(v39, v38);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076BC0C();
  if (swift_dynamicCast())
  {
    v21 = v37;
    v22 = v31;
    (*(v10 + 16))(v12, v15, v31);
    sub_10076FCFC();
    v23 = v27;
    sub_10076F87C();
    v24 = v36;
    sub_10046ABE0(v21, v23, v28, v9, v6, v20);
    swift_unknownObjectRelease();

    (*(v29 + 8))(v23, v30);
    (*(v34 + 8))(v6, v35);
    (*(v32 + 8))(v9, v33);
    (*(v10 + 8))(v15, v22);
    sub_10000CD74(v39);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v34 + 8))(v6, v35);
    (*(v32 + 8))(v9, v33);
    (*(v10 + 8))(v15, v31);
    sub_10000CD74(v39);
    v24 = v36;
  }

  v25 = [v24 contentView];
  [v25 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  return [v24 setNeedsLayout];
}

uint64_t sub_1005332F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_10053334C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10053341C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10076B5BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  swift_getKeyPath();
  sub_10076338C();

  swift_getKeyPath();
  sub_10076F49C();

  (*(v9 + 8))(v11, v8);
  v12 = (*(v5 + 88))(v7, v4);
  if (v12 == enum case for Shelf.ContentType.singleColumnList(_:) || v12 == enum case for Shelf.ContentType.twoColumnList(_:))
  {
    v14 = &qword_10095CC20;
    v15 = &unk_1007AA520;
    v16 = sub_10000A5D4(&qword_10095CC20, &unk_1007AA520);
    sub_100071820(&qword_10095CC28, &qword_10095CC20, &unk_1007AA520, &unk_10078E068);
    sub_100071820(&qword_10095CC30, &qword_10095CC20, &unk_1007AA520, &unk_1007B43A0);
    v17 = &unk_10095CC38;
  }

  else
  {
    if (v12 != enum case for Shelf.ContentType.scrollablePill(_:))
    {
      v16 = sub_100689BF0(a1, a2);
      (*(v5 + 8))(v7, v4);
      return v16;
    }

    v14 = &qword_10095CC00;
    v15 = &qword_1007AA518;
    v16 = sub_10000A5D4(&qword_10095CC00, &qword_1007AA518);
    sub_100071820(&qword_10095CC08, &qword_10095CC00, &qword_1007AA518, &unk_10078E068);
    sub_100071820(&qword_10095CC10, &qword_10095CC00, &qword_1007AA518, &unk_1007B43A0);
    v17 = &unk_10095CC18;
  }

  sub_100071820(v17, v14, v15, &unk_10078E098);
  return v16;
}

uint64_t sub_1005337B0()
{
  v0 = sub_10076FD2C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076FD4C();
  sub_10000DB18(v4, qword_10095CC40);
  sub_10000A61C(v4, qword_10095CC40);
  if (qword_1009412D0 != -1)
  {
    swift_once();
  }

  v5 = sub_10000A61C(v0, qword_1009A25B8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_10076FD3C();
}

NSString sub_100533904()
{
  result = sub_10076FF6C();
  qword_10095CC58 = result;
  return result;
}

uint64_t sub_10053393C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100533998(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a6;
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = HIDWORD(a1);
  v12 = HIDWORD(a2);
  v13 = HIDWORD(a3);
  v14 = HIDWORD(a4);
  v15 = sub_10076F2EC();
  __chkstk_darwin(v15 - 8);
  token.val[0] = v10;
  token.val[1] = v11;
  token.val[2] = v9;
  token.val[3] = v12;
  token.val[4] = v8;
  token.val[5] = v13;
  token.val[6] = v7;
  token.val[7] = v14;
  v16 = SecTaskCreateWithAuditToken(0, &token);
  if (!v16)
  {
    if (qword_100940808 != -1)
    {
      swift_once();
    }

    v24 = sub_10076FD4C();
    sub_10000A61C(v24, qword_10095CC40);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    return 0;
  }

  v17 = v16;
  error = 0;
  if (qword_100940810 != -1)
  {
    swift_once();
  }

  v18 = SecTaskCopyValueForEntitlement(v17, qword_10095CC58, &error);
  if (!v18)
  {
    v25 = error;
    if (!error)
    {
      goto LABEL_22;
    }

    if (qword_100940808 != -1)
    {
      swift_once();
    }

    v26 = sub_10076FD4C();
    sub_10000A61C(v26, qword_10095CC40);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F2DC();
    v33._countAndFlagsBits = 0xD000000000000031;
    v33._object = 0x80000001007ECC60;
    sub_10076F2CC(v33);
    *&token.val[6] = sub_10000A5D4(&qword_10095CD08, qword_1007AA580);
    *token.val = v25;
    sub_10076F29C();
    sub_1000258C0(&token);
    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    sub_10076F2CC(v34);
    sub_10076F2FC();
    sub_10076FBEC();

LABEL_20:
    v22 = error;
    if (error)
    {
LABEL_21:
    }

LABEL_22:

    return 0;
  }

  *token.val = v18;
  swift_unknownObjectRetain();
  sub_10000A5D4(&unk_10094BB60, &unk_100785530);
  v19 = swift_dynamicCast();
  if (!v19)
  {
    if (qword_100940808 != -1)
    {
      swift_once();
    }

    v27 = sub_10076FD4C();
    sub_10000A61C(v27, qword_10095CC40);
    sub_10000A5D4(&unk_100942A60, &unk_100784760);
    sub_10076F33C();
    *(swift_allocObject() + 16) = xmmword_100783DD0;
    sub_10076F27C();
    sub_10076FBEC();

    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  v20 = v30;
  *token.val = a5;
  *&token.val[2] = v29;
  __chkstk_darwin(v19);
  *(&v28 - 2) = &token;
  v21 = sub_1001A3D8C(sub_100533F84, (&v28 - 4), v20);
  swift_unknownObjectRelease();

  v22 = error;
  if ((v21 & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (error)
  {
  }

  return 1;
}

void (*sub_100533FA4(uint64_t *a1))(id *a1, char a2)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_videoView;
  a1[1] = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100534008;
}

void sub_100534008(id *a1, char a2)
{
  v4 = a1[1];
  v26 = *a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_10053DC84(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
      v7 = v26;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v10 = v4;
        v11 = sub_100770EEC();

        if (v11)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            [v12 removeFromSuperview];
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v7 = v26;
    }

    swift_unknownObjectWeakAssign();
    v23 = swift_unknownObjectWeakLoadStrong();
    v24 = a1[1];
    if (v23)
    {
      v25 = v23;
      [a1[1] addSubview:v23];
    }

    sub_10057E5D8();
    [v24 setNeedsLayout];

    v22 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_10053DC84(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v16 = v4;
      v17 = sub_100770EEC();

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = swift_unknownObjectWeakLoadStrong();
      if (!v18)
      {
        goto LABEL_13;
      }

      v6 = v18;
      [v18 removeFromSuperview];
    }
  }

LABEL_13:
  swift_unknownObjectWeakAssign();
  v19 = swift_unknownObjectWeakLoadStrong();
  v20 = a1[1];
  if (v19)
  {
    v21 = v19;
    [a1[1] addSubview:v19];
  }

  sub_10057E5D8();
  [v20 setNeedsLayout];
  v22 = v26;
LABEL_21:
}

id (*sub_1005342CC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100534330;
}

id sub_100534330(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView);
    v7 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton);
    if (v7)
    {
      [v7 addTarget:? action:? forControlEvents:?];
      v5 = *(a1 + 24);
    }

    v8 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);

    return [v8 addTarget:v5 action:"disableAdvertRotationTap" forControlEvents:64];
  }

  return result;
}

char *sub_1005343E0(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_preferredImageSizes] = _swiftEmptyDictionarySingleton;
  v11 = &v4[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_disableAdvertRotation];
  *v11 = 0;
  *(v11 + 1) = 0;
  *&v4[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_impressionsCalculator] = 0;
  v12 = &v4[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_impressionsUpdateBlock];
  v13 = type metadata accessor for AdvertsSearchResultContentView();
  *v12 = 0;
  *(v12 + 1) = 0;
  v20.receiver = v4;
  v20.super_class = v13;
  v14 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView]];
  [v18 addSubview:*&v18[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView]];

  return v18;
}

id sub_100534634()
{
  v1 = v0;
  v2 = sub_10076749C();
  v143 = *(v2 - 8);
  v144 = v2;
  __chkstk_darwin(v2);
  v142 = &v111[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1007679DC();
  v146 = *(v4 - 8);
  v147 = v4;
  __chkstk_darwin(v4);
  v114 = &v111[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10076997C();
  v131 = *(v6 - 8);
  v132 = v6;
  __chkstk_darwin(v6);
  v130 = &v111[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_10076443C();
  v154 = *(v8 - 8);
  v155 = v8;
  __chkstk_darwin(v8);
  v128 = &v111[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v153 = &v111[-v11];
  v158 = sub_10076747C();
  v152 = *(v158 - 8);
  __chkstk_darwin(v158);
  v138 = &v111[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v159 = &v111[-v14];
  v15 = sub_10000A5D4(&unk_100957F90, qword_1007A9D70);
  __chkstk_darwin(v15 - 8);
  v113 = &v111[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v157 = &v111[-v18];
  v19 = sub_10000A5D4(&unk_100942850, &unk_100784420);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v111[-v21];
  v23 = type metadata accessor for AdvertsSearchResultContentView();
  v197.receiver = v0;
  v197.super_class = v23;
  objc_msgSendSuper2(&v197, "layoutSubviews");
  sub_10076422C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = *&v0[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView];
  sub_10052225C();
  sub_100770A4C();
  [v32 setFrame:?];
  sub_10076ABBC();
  v33 = [v0 traitCollection];
  v34 = sub_10076DEDC();
  v137 = sub_10000A5D4(&unk_100942870, &qword_100784460);
  v35 = swift_allocObject();
  v151 = xmmword_1007841E0;
  *(v35 + 16) = xmmword_1007841E0;
  *(v35 + 32) = v33;
  v36 = v33;
  v148 = v34;
  v37 = sub_10076DEEC();
  v134 = sub_10001CE64();
  sub_10076D3EC();
  v133 = v38;

  v39 = *(v20 + 8);
  v139 = v22;
  v140 = v20 + 8;
  v141 = v19;
  v136 = v39;
  v39(v22, v19);
  v198.origin.x = v25;
  v198.origin.y = v27;
  v198.size.width = v29;
  v198.size.height = v31;
  MinX = CGRectGetMinX(v198);
  [v32 frame];
  MaxY = CGRectGetMaxY(v199);
  v40 = *&v32[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title + 8];
  v120 = *&v32[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_title];
  v41 = *&v32[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel];
  v119 = v40;

  v42 = [v41 text];
  if (v42)
  {
    v43 = v42;
    v44 = sub_10076FF9C();
    v122 = v45;
    v123 = v44;
  }

  else
  {
    v122 = 0;
    v123 = 0;
  }

  v46 = [*&v32[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel] text];
  v47 = v146;
  if (v46)
  {
    v48 = v46;
    v49 = sub_10076FF9C();
    v124 = v50;
    v125 = v49;
  }

  else
  {
    v124 = 0;
    v125 = 0;
  }

  v51 = *&v32[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView];
  v52 = OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemModels;
  swift_beginAccess();
  v53 = *(v51 + v52);
  v54 = *(*&v32[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC20ProductPageExtension20SearchTagsRibbonView_metadataRibbonItemModels);
  v112 = v32[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_shouldEvenlyDistribute];
  v150 = v54;

  v156 = v53;

  v55 = [v1 traitCollection];
  (*(v47 + 56))(v157, 1, 1, v147);
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v56 = v158;
  v57 = sub_10000A61C(v158, qword_1009A0690);
  v126 = *(v152 + 16);
  v127 = v152 + 16;
  v126(v159, v57, v56);
  v58 = sub_10077071C();
  v145 = v1;
  if (v58)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v59 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v59 = qword_100944CA0;
  }

  v60 = v155;
  v61 = sub_10000A61C(v155, v59);
  v62 = v154;
  v63 = v128;
  (*(v154 + 16))(v128, v61, v60);
  (*(v62 + 32))(v153, v63, v60);
  v64 = [v55 preferredContentSizeCategory];
  sub_10077084C();

  sub_1007643EC();
  sub_10076441C();
  sub_10076746C();
  sub_10076745C();
  v121 = sub_10076DDDC();
  swift_allocObject();
  v128 = sub_10076DDBC();
  v65 = objc_opt_self();
  v117 = v65;
  v66 = [v65 preferredFontForTextStyle:UIFontTextStyleBody];
  v149 = v55;
  v67 = sub_10076C04C();
  v196[3] = v67;
  v68 = sub_10053DC84(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v196[4] = v68;
  v116 = v68;
  v69 = sub_10000DB7C(v196);
  v70 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v71 = *(v67 - 8);
  v72 = *(v71 + 104);
  v118 = v71 + 104;
  v115 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v72(v69, enum case for Feature.measurement_with_labelplaceholder(_:), v67);
  sub_10076C90C();
  sub_10000CD74(v196);
  v73 = v130;
  sub_10076996C();
  sub_10076994C();
  v74 = v132;
  v131 = *(v131 + 8);
  (v131)(v73, v132);
  v75 = [v65 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v195[3] = v67;
  v195[4] = v68;
  v76 = sub_10000DB7C(v195);
  v72(v76, v70, v67);
  sub_10076C90C();
  sub_10000CD74(v195);
  sub_10076996C();
  sub_10076994C();
  v77 = v131;
  (v131)(v73, v74);
  v78 = [v117 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v194[3] = v67;
  v194[4] = v116;
  v79 = sub_10000DB7C(v194);
  v72(v79, v115, v67);
  sub_10076C90C();
  sub_10000CD74(v194);
  sub_10076996C();
  sub_10076994C();
  v77(v73, v74);
  v80 = v156;
  LODWORD(v132) = sub_10001D420() & (v80 != 0);
  if (v132 == 1)
  {
    v81 = v121;
    v82 = objc_allocWithZone(v148);
    v83 = v149;
    v84 = sub_10076DECC();
    v85 = v113;
    sub_100016E2C(v157, v113, &unk_100957F90, qword_1007A9D70);
    v87 = v146;
    v86 = v147;
    v88 = *(v146 + 48);
    if (v88(v85, 1, v147) == 1)
    {
      v89 = v114;
      _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v88(v85, 1, v86) != 1)
      {
        sub_10000CFBC(v85, &unk_100957F90, qword_1007A9D70);
      }
    }

    else
    {
      v89 = v114;
      (*(v87 + 32))(v114, v85, v86);
    }

    v91 = v84;
    sub_10001A588(v156, v89, v91, v29, v31);

    (*(v87 + 8))(v89, v86);
    swift_allocObject();
    v90 = sub_10076DDAC();
  }

  else
  {
    v81 = v121;
    swift_allocObject();
    v90 = sub_10076DDBC();
  }

  v92 = v90;

  v93 = v150;
  if ((sub_10001D420() & (v93 != 0)) == 1)
  {
    v94.n128_f64[0] = v29;
    sub_1004EF9EC(v93, v112, v94, v31);
    swift_allocObject();
    v95 = sub_10076DDAC();
  }

  else
  {
    swift_allocObject();
    v95 = sub_10076DDBC();
  }

  v96 = v95;
  v126(v138, v159, v158);
  v193 = &protocol witness table for LayoutViewPlaceholder;
  v192 = v81;
  v191 = v128;
  v190 = 0;
  *&v188[40] = 0u;
  v189 = 0u;
  sub_10000A570(v196, v188);
  sub_10000A570(v195, &v187);
  v186 = 0;
  v184 = 0u;
  v185 = 0u;
  v183 = 0;
  v181 = 0u;
  v182 = 0u;

  v147 = v96;
  v97 = sub_10076DDCC();
  v180 = &protocol witness table for LayoutViewPlaceholder;
  v179 = v81;
  v178 = v97;
  v177 = 0;
  v175 = 0u;
  v176 = 0u;
  v174 = 0;
  v172 = 0u;
  v173 = 0u;
  v171 = 0;
  v169 = 0u;
  v170 = 0u;
  v168 = 0;
  v167 = 0u;
  *&v166[40] = 0u;
  sub_10000A570(v194, v166);
  v164 = v81;
  v165 = &protocol witness table for LayoutViewPlaceholder;
  v162 = &protocol witness table for LayoutViewPlaceholder;
  v163 = v92;
  v161 = v81;
  v160 = v96;
  v98 = v142;
  sub_10076748C();
  v99 = swift_allocObject();
  *(v99 + 16) = v151;
  v100 = v149;
  *(v99 + 32) = v149;
  v101 = v100;
  v102 = sub_10076DEEC();
  sub_10053DC84(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v103 = v144;
  sub_10076D2AC();

  (*(v143 + 8))(v98, v103);
  sub_10000CD74(v194);
  sub_10000CD74(v195);
  sub_10000CD74(v196);
  (*(v154 + 8))(v153, v155);
  (*(v152 + 8))(v159, v158);
  sub_10000CFBC(v157, &unk_100957F90, qword_1007A9D70);
  v104 = v139;
  sub_10076ABBC();
  v105 = swift_allocObject();
  *(v105 + 16) = v151;
  *(v105 + 32) = v101;
  v106 = v101;
  v107 = sub_10076DEEC();
  v108 = v141;
  sub_10076D3EC();

  v136(v104, v108);
  v109 = *&v145[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView];
  sub_100770A4C();
  return [v109 setFrame:?];
}

void sub_1005357B4(uint64_t a1, char *a2)
{
  KeyPath = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_10000A5D4(&qword_10094E260, qword_100796150);
  __chkstk_darwin(v6 - 8);
  v115 = &v99 - v7;
  v8 = sub_1007673CC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v118 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v121 = &v99 - v12;
  v13 = sub_10076350C();
  v122 = *(v13 - 8);
  __chkstk_darwin(v13);
  v120 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v116 = &v99 - v16;
  __chkstk_darwin(v17);
  v19 = &v99 - v18;
  v20 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v20 - 8);
  v123 = &v99 - v21;
  v22 = sub_10000A5D4(&unk_1009428D0, &unk_100783DC0);
  __chkstk_darwin(v22 - 8);
  v24 = &v99 - v23;
  v25 = sub_10076C38C();
  v119 = *(v25 - 8);
  __chkstk_darwin(v25);
  v124 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076A14C();
  sub_10076F63C();
  v27 = v126;
  if (!v126)
  {
    return;
  }

  v117 = a1;
  v28 = sub_10076A11C();
  if (!v28)
  {
LABEL_13:

    return;
  }

  v112 = v19;
  v114 = v27;
  v29 = v28;
  sub_10076763C();
  sub_10000A5D4(&unk_10095CDA0, &qword_1007AA820);
  sub_10076289C();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v107 = v29;
  v113 = v9;
  v108 = v25;
  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  sub_10076C22C();
  v30 = *&KeyPath[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView];
  *(v30 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_regularWidthColumnSpacing) = v31;
  [v30 setNeedsLayout];
  sub_10076C2FC();
  v33 = v32;
  v35 = v34;
  v36 = sub_10076341C();
  (*(*(v36 - 8) + 56))(v24, 1, 1, v36);

  v111 = a2;
  sub_100386168(v37, v24, a2);
  sub_10000CFBC(v24, &unk_1009428D0, &unk_100783DC0);
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v38 = sub_100770D2C();
  [KeyPath setBackgroundColor:v38];

  v39 = sub_10076280C();
  if (v39 >> 62)
  {
    v59 = v39;
    v40 = sub_10077158C();
    v39 = v59;
  }

  else
  {
    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v121;
  v121 = v8;
  if (v40)
  {
    v42 = v120;
    if ((v39 & 0xC000000000000001) != 0)
    {
      v110 = sub_10077149C();
    }

    else
    {
      if (!*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_53;
      }

      v110 = *(v39 + 32);
    }
  }

  else
  {

    v110 = 0;
    v42 = v120;
  }

  v104 = *&KeyPath[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView];
  a1 = sub_10076283C();
  v103 = sub_10076281C();
  v43 = sub_10076288C();
  if (v43 >> 62)
  {
    v60 = v43;
    v44 = sub_10077158C();
    v43 = v60;
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v106 = KeyPath;
  v105 = v30;
  v120 = a1;
  if (v44)
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      v102 = sub_10077149C();
    }

    else
    {
      if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_55;
      }

      v102 = *(v43 + 32);
    }
  }

  else
  {

    v102 = 0;
  }

  v45 = ASKDeviceTypeGetCurrent();
  KeyPath = swift_getKeyPath();
  sub_10076338C();

  v46 = v126;
  sub_100460BD4(v123);

  v30 = sub_10076283C();
  a1 = sub_10076281C();
  v47 = sub_10076280C();
  if (v47 >> 62)
  {
    v61 = v47;
    v48 = sub_10077158C();
    v47 = v61;
  }

  else
  {
    v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v113;
  if (v48)
  {
    if ((v47 & 0xC000000000000001) == 0)
    {
      if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_57;
      }

      KeyPath = *(v47 + 32);

      goto LABEL_29;
    }

LABEL_53:
    KeyPath = sub_10077149C();
LABEL_29:

    goto LABEL_31;
  }

  KeyPath = 0;
LABEL_31:
  v49 = sub_10076288C();
  if (v49 >> 62)
  {
    v62 = v49;
    v50 = sub_10077158C();
    v49 = v62;
  }

  else
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v109 = v13;
  if (v50)
  {
    if ((v49 & 0xC000000000000001) == 0)
    {
      if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v51 = *(v49 + 32);

LABEL_37:

        goto LABEL_39;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_55:
    v51 = sub_10077149C();
    goto LABEL_37;
  }

  v51 = 0;
LABEL_39:
  sub_10076285C();
  if (sub_1007673BC())
  {
    if (!(a1 | v30))
    {
      v53 = sub_10057F8EC(KeyPath, v51, 0, 1, v52);
      v30 = v53;
      a1 = v53 >> 62;
      if (!(v53 >> 62))
      {
        ObjectType = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (KeyPath)
        {
LABEL_43:
          v54 = sub_1007601CC();
          goto LABEL_60;
        }

LABEL_59:
        v54 = 0;
LABEL_60:
        v100 = sub_10057FC34(v54);

        v117 = KeyPath;
        v63 = v42;
        if (KeyPath)
        {
          v64 = sub_1007601CC();
        }

        else
        {
          v64 = 0;
        }

        v65 = v115;
        v66 = v121;
        (*(v24 + 2))(v115, v41, v121);
        v67.n128_f64[0] = (*(v24 + 7))(v65, 0, 1, v66);
        v101 = sub_10058015C(v64, v65, v67);

        sub_10000CFBC(v65, &qword_10094E260, qword_100796150);
        if (a1)
        {
          v68 = sub_10077158C();
        }

        else
        {
          v68 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v69 = v63;
        if (v68)
        {
          if ((v30 & 0xC000000000000001) != 0)
          {
            sub_10077149C();
          }

          else
          {
            if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }
          }

          v70 = sub_10076BDCC();

          if (v70)
          {

            v71 = *(v24 + 1);
            v71(v41, v121);
            v55 = v122;
            v72 = v116;
            v73 = v109;
            (*(v122 + 104))(v116, enum case for LockupMediaLayout.DisplayType.landscape(_:), v109);
LABEL_81:
            ObjectType = v71;
            v56 = v112;
            (*(v55 + 32))(v112, v72, v73);
            goto LABEL_82;
          }
        }

        else
        {
        }

        v74 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
        v75 = v122;
        v73 = v109;
        v115 = *(v122 + 104);
        (v115)(v63, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v109);
        v76 = sub_1007634FC();
        v77 = *(v75 + 8);
        v77(v69, v73);
        if (((ObjectType >= v76) & v101) != 0 || (v74 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v115)(v69, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v73), v78 = sub_1007634FC(), v77(v69, v73), ((ObjectType >= v78) & v100) != 0) || (v74 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v115)(v69, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v73), v79 = sub_1007634FC(), v77(v69, v73), ObjectType >= v79))
        {

          v71 = *(v113 + 1);
          v71(v41, v121);
        }

        else
        {
          v74 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
          (v115)(v69, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v73);
          v80 = sub_1007634FC();

          v77(v69, v73);
          v71 = *(v113 + 1);
          v71(v41, v121);
          if (ObjectType != v80)
          {
            v81 = enum case for LockupMediaLayout.DisplayType.none(_:);
            v72 = v116;
            v82 = v116;
LABEL_80:
            (v115)(v82, v81, v73);
            v55 = v122;
            goto LABEL_81;
          }
        }

        v72 = v116;
        v82 = v116;
        v81 = v74;
        goto LABEL_80;
      }

LABEL_58:
      ObjectType = sub_10077158C();
      if (KeyPath)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

    v57 = v116;
    sub_10076D3AC();

    ObjectType = *(v24 + 1);
    ObjectType(v41, v121);
    v55 = v122;
    v58 = v109;
    (*(v122 + 104))(v57, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v109);
    v56 = v112;
    (*(v55 + 32))(v112, v57, v58);
  }

  else
  {

    ObjectType = *(v24 + 1);
    ObjectType(v41, v121);
    v55 = v122;
    v56 = v112;
    (*(v122 + 104))(v112, enum case for LockupMediaLayout.DisplayType.none(_:), v109);
  }

LABEL_82:
  v83 = v118;
  sub_10076285C();
  v84 = ASKDeviceTypeGetCurrent();
  v85 = v123;
  sub_100142514(v120, v103, v110, v102, v123, v56, v83, v111, v86, v87, v88, v89, v90, v91, v92, v93, v33, v35, 0);

  ObjectType(v83, v121);
  (*(v55 + 8))(v56, v109);
  sub_10000CFBC(v85, &unk_1009467E0, qword_10078CB50);
  v94 = sub_10076BB0C();

  if (v94)
  {
    v95 = sub_10076518C();

    v96 = v106;
    if (v95)
    {
      v97 = [objc_opt_self() clearColor];
      [v96 setBackgroundColor:v97];
    }
  }

  else
  {
    v95 = 0;
    v96 = v106;
  }

  v98 = v119;
  [v96 setNeedsLayout];

  [v96 setNeedsLayout];

  (*(v98 + 8))(v124, v108);
}

void sub_100536790(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v11 = sub_10000A5D4(&unk_100942850, &unk_100784420);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v192 = &v157 - v13;
  v14 = sub_10076749C();
  v191 = *(v14 - 8);
  __chkstk_darwin(v14);
  v190 = &v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1007679DC();
  v194 = *(v16 - 8);
  *&v195 = v16;
  __chkstk_darwin(v16);
  v184 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10076997C();
  v187 = *(v18 - 8);
  v188 = v18;
  __chkstk_darwin(v18);
  v186 = &v157 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10076443C();
  v198 = *(v20 - 8);
  v199 = v20;
  __chkstk_darwin(v20);
  v185 = &v157 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v197 = &v157 - v23;
  v202 = sub_10076747C();
  v196 = *(v202 - 8);
  __chkstk_darwin(v202);
  v189 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v201 = &v157 - v26;
  v27 = sub_10000A5D4(&unk_100957F90, qword_1007A9D70);
  __chkstk_darwin(v27 - 8);
  v183 = &v157 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v200 = &v157 - v30;
  v203 = sub_1007673CC();
  v31 = *(v203 - 8);
  __chkstk_darwin(v203);
  v33 = (&v157 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v36 = &v157 - v35;
  v37 = sub_10076BF6C();
  __chkstk_darwin(v37 - 8);
  v193 = &v157 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076A14C();
  sub_10076F63C();
  if (!v243[0])
  {
    return;
  }

  v180 = v12;
  v181 = v11;
  v205 = v243[0];
  v182 = a1;
  sub_10000A570(a1, v243);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  v39 = sub_10076499C();
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v179 = v14;
  v40 = v242[0];
  v244 = v39;
  v245 = sub_10053DC84(&qword_100948A38, 255, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
  v243[0] = v40;

  v41 = sub_10076A10C();
  sub_10000CD74(v243);
  if (!v41)
  {

    return;
  }

  sub_10076763C();
  sub_10000A5D4(&unk_10095CDA0, &qword_1007AA820);
  sub_10076289C();
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v173 = v41;
  v174 = v31;
  v170 = v33;
  v177 = v36;
  v42 = v242[0];
  v43 = v204;
  v44 = *&v204[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView];
  v45 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v176 = v44;
  v46 = *(v44 + v45);
  if (v46 >> 62)
  {
    v47 = sub_10077158C();
  }

  else
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v206 = a2;
  v178 = v40;
  v175 = v42;
  if (v47)
  {
    if (v47 < 1)
    {
      __break(1u);
LABEL_59:
      swift_once();
      goto LABEL_22;
    }

    v48 = 0;
    do
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v49 = sub_10077149C();
      }

      else
      {
        v49 = *(v46 + v48 + 4);
      }

      v50 = v49;
      ++v48;
      v242[0] = v49;
      type metadata accessor for BorderedScreenshotView(0);
      sub_10053DC84(&qword_10094A410, 255, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
      v51 = v50;
      sub_10077140C();
      a2 = v206;
      sub_100760BEC();
      sub_100016C74(v243);
      v52 = *&v51[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
      v246.value.super.isa = 0;
      v246.is_nil = 0;
      sub_10075FCEC(v246, v53);
    }

    while (v47 != v48);

    v43 = v204;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v55 = Strong;
    [*(Strong + qword_1009602D0) setImage:0];
    v242[0] = v55;
    type metadata accessor for VideoView(0);
    sub_10053DC84(&qword_100957FA0, 255, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v56 = v55;
    sub_10077140C();
    sub_100760BEC();

    sub_100016C74(v243);
  }

  v43 = *&v43[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView];
  v31 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v57 = *&v43[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
  v247.value.super.isa = 0;
  v247.is_nil = 0;
  sub_10075FCEC(v247, v58);

  v59 = *&v43[v31];
  v60 = sub_10075FD2C();
  v61 = sub_10053DC84(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v62 = v59;
  v171 = v61;
  v172 = v60;
  sub_100760BFC();

  v63 = sub_10076BB5C();
  v64 = v203;
  if (!v63)
  {
    goto LABEL_25;
  }

  v65 = qword_10093FBE0;
  v46 = *&v43[v31];
  if (v65 != -1)
  {
    goto LABEL_59;
  }

LABEL_22:
  v66 = sub_100763ADC();
  sub_10000A61C(v66, qword_10099DDA0);
  sub_1007639AC();
  [v46 contentMode];
  sub_10076BFCC();
  sub_10076BF7C();
  sub_10075FCCC();
  [v46 setContentMode:sub_10076BDBC()];
  sub_100764ADC();
  sub_10075FD0C();
  if (!sub_10076BE1C())
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    sub_100770D5C();
  }

  sub_10075FB8C();
  v67 = *&v43[v31];
  sub_100760B8C();

  v64 = v203;
LABEL_25:
  v68 = *&v43[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView];
  sub_1005215E8(v182, a2);

  v69 = v177;
  sub_10076285C();
  if ((sub_1007673BC() & 1) == 0)
  {

    (*(v174 + 8))(v69, v64);
    return;
  }

  v70 = sub_10076BB6C();
  v160 = v71;
  v161 = v70;
  v72 = sub_10076BBEC();
  v74 = v73;
  v75 = sub_10076BB0C();

  v162 = v74;
  v163 = v72;
  if (v75)
  {
    v76 = sub_10076518C();

    v77 = v201;
    v78 = v194;
    v79 = v185;
    if (v76)
    {
      v80 = sub_10076C3EC();
      v164 = v81;
      v165 = v80;
    }

    else
    {
      v164 = 0;
      v165 = 0;
    }

    v82 = v195;
  }

  else
  {
    v164 = 0;
    v165 = 0;
    v77 = v201;
    v78 = v194;
    v82 = v195;
    v79 = v185;
  }

  v193 = sub_10076282C();
  v185 = sub_10076284C();
  v83 = sub_10076286C();
  v84 = [v204 traitCollection];
  (*(v78 + 56))(v200, 1, 1, v82);
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v85 = v202;
  v86 = sub_10000A61C(v202, qword_1009A0690);
  v87 = v196 + 16;
  v88 = *(v196 + 16);
  v88(v77, v86, v85);
  v89 = sub_10077071C();
  LODWORD(v157) = v83;
  v167 = v88;
  v168 = v87;
  if ((v89 & 1) == 0)
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v90 = qword_100944CA0;
    goto LABEL_41;
  }

  if (qword_10093F520 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v90 = qword_100944C88;
LABEL_41:
    v91 = v199;
    v92 = sub_10000A61C(v199, v90);
    v93 = v198;
    (*(v198 + 16))(v79, v92, v91);
    (*(v93 + 32))(v197, v79, v91);
    v94 = [v84 preferredContentSizeCategory];
    sub_10077084C();

    sub_1007643EC();
    sub_10076441C();
    sub_10076746C();
    sub_10076745C();
    v166 = sub_10076DDDC();
    swift_allocObject();
    v182 = sub_10076DDBC();
    v95 = objc_opt_self();
    v158 = v95;
    v96 = [v95 preferredFontForTextStyle:UIFontTextStyleBody];
    v97 = sub_10076C04C();
    v244 = v97;
    v171 = sub_10053DC84(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v245 = v171;
    v98 = sub_10000DB7C(v243);
    v99 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v100 = *(v97 - 8);
    v159 = *(v100 + 104);
    v169 = v100 + 104;
    HIDWORD(v157) = enum case for Feature.measurement_with_labelplaceholder(_:);
    v159(v98, enum case for Feature.measurement_with_labelplaceholder(_:), v97);
    sub_10076C90C();
    sub_10000CD74(v243);
    v101 = v186;
    sub_10076996C();
    sub_10076994C();
    v102 = v188;
    v172 = v84;
    v103 = *(v187 + 8);
    v103(v101, v188);
    v104 = [v95 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v242[3] = v97;
    v242[4] = v171;
    v105 = sub_10000DB7C(v242);
    v106 = v99;
    v107 = v159;
    v159(v105, v106, v97);
    sub_10076C90C();
    sub_10000CD74(v242);
    sub_10076996C();
    sub_10076994C();
    v103(v101, v102);
    v108 = [v158 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v241[3] = v97;
    v241[4] = v171;
    v109 = sub_10000DB7C(v241);
    v107(v109, HIDWORD(v157), v97);
    sub_10076C90C();
    sub_10000CD74(v241);
    sub_10076996C();
    sub_10076994C();
    v103(v101, v102);
    v110 = v193;
    LODWORD(v188) = sub_10001D420() & (v110 != 0);
    if (v188 == 1)
    {
      v111 = objc_allocWithZone(sub_10076DEDC());
      v112 = v172;
      v113 = sub_10076DECC();
      v114 = v183;
      sub_100016E2C(v200, v183, &unk_100957F90, qword_1007A9D70);
      v116 = v194;
      v115 = v195;
      v117 = *(v194 + 48);
      if (v117(v114, 1, v195) == 1)
      {
        v118 = v184;
        _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v117(v114, 1, v115) != 1)
        {
          sub_10000CFBC(v114, &unk_100957F90, qword_1007A9D70);
        }
      }

      else
      {
        v118 = v184;
        (*(v116 + 32))(v184, v114, v115);
      }

      v121 = v113;
      sub_10001A588(v193, v118, v121, a6, a7);

      (*(v116 + 8))(v118, v115);
      v119 = v166;
      swift_allocObject();
      v120 = sub_10076DDAC();
    }

    else
    {
      v119 = v166;
      swift_allocObject();
      v120 = sub_10076DDBC();
    }

    v122 = v120;

    v123 = v185;
    v124 = sub_10001D420() & (v123 != 0);
    v126 = v167;
    if (v124 == 1)
    {
      v125.n128_f64[0] = a6;
      sub_1004EF9EC(v123, v157 & 1, v125, a7);
      swift_allocObject();
      v127 = sub_10076DDAC();
    }

    else
    {
      swift_allocObject();
      v127 = sub_10076DDBC();
    }

    v128 = v127;
    v126(v189, v201, v202);
    v240 = &protocol witness table for LayoutViewPlaceholder;
    v239 = v119;
    v238 = v182;
    v237 = 0;
    *&v235[40] = 0u;
    v236 = 0u;
    sub_10000A570(v243, v235);
    sub_10000A570(v242, &v234);
    v233 = 0;
    v231 = 0u;
    v232 = 0u;
    v230 = 0;
    v228 = 0u;
    v229 = 0u;

    v129 = sub_10076DDCC();
    v227 = &protocol witness table for LayoutViewPlaceholder;
    v226 = v119;
    v225 = v129;
    v224 = 0;
    v222 = 0u;
    v223 = 0u;
    v221 = 0;
    v219 = 0u;
    v220 = 0u;
    v218 = 0;
    v216 = 0u;
    v217 = 0u;
    v215 = 0;
    v214 = 0u;
    *&v213[40] = 0u;
    sub_10000A570(v241, v213);
    v211 = v119;
    v212 = &protocol witness table for LayoutViewPlaceholder;
    v209 = &protocol witness table for LayoutViewPlaceholder;
    v210 = v122;
    v208 = v119;
    v207 = v128;
    v130 = v190;
    sub_10076748C();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v131 = swift_allocObject();
    v195 = xmmword_1007841E0;
    *(v131 + 16) = xmmword_1007841E0;
    v132 = v172;
    *(v131 + 32) = v172;
    v79 = v132;
    v133 = sub_10076DEEC();
    sub_10053DC84(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v134 = v179;
    sub_10076D2AC();
    v136 = v135;

    (*(v191 + 8))(v130, v134);
    sub_10000CD74(v241);
    sub_10000CD74(v242);
    sub_10000CD74(v243);
    (*(v198 + 8))(v197, v199);
    (*(v196 + 8))(v201, v202);
    sub_10000CFBC(v200, &unk_100957F90, qword_1007A9D70);
    v84 = v192;
    sub_10076ABBC();
    v137 = swift_allocObject();
    *(v137 + 16) = v195;
    *(v137 + 32) = v79;
    v138 = v79;
    v139 = sub_10076DEEC();
    sub_10001CE64();
    v140 = v181;
    sub_10076D3EC();
    v142 = v141;

    (*(v180 + 8))(v84, v140);
    v143 = sub_10076283C();
    v144 = sub_10076281C();
    v145 = sub_10076280C();
    if (v145 >> 62)
    {
      v147 = v145;
      v148 = sub_10077158C();
      v145 = v147;
      v146 = v174;
      if (!v148)
      {
LABEL_61:

        v79 = 0;
        goto LABEL_62;
      }
    }

    else
    {
      v146 = v174;
      if (!*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }
    }

    if ((v145 & 0xC000000000000001) != 0)
    {
      v79 = sub_10077149C();
    }

    else
    {
      if (!*((v145 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_75;
      }

      v79 = *(v145 + 32);
    }

LABEL_62:
    v149 = sub_10076288C();
    if (!(v149 >> 62))
    {
      if (!*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_64;
    }

    v151 = v149;
    v152 = sub_10077158C();
    v149 = v151;
    if (!v152)
    {
      break;
    }

LABEL_64:
    if ((v149 & 0xC000000000000001) != 0)
    {
      v150 = sub_10077149C();
      goto LABEL_67;
    }

    if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v150 = *(v149 + 32);

LABEL_67:

      goto LABEL_70;
    }

LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  v150 = 0;
LABEL_70:
  v153 = [v204 traitCollection];
  v154 = v170;
  sub_10076285C();
  sub_100140784(v143, v144, v79, v150, v153, v206, v154, a6, a7 - v136 - v142);

  v155 = *(v146 + 8);
  v156 = v203;
  v155(v154, v203);
  v155(v177, v156);
}

uint64_t sub_100537FE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    sub_10076611C();
  }

  *(v1 + v3) = 0;

  v4 = (v1 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_1000167E0(v5, v6);
  return sub_100522B20(a1);
}

id sub_1005380A8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AdvertsSearchResultContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100538200(void *a1)
{
  sub_10053DB0C(a1);
}

uint64_t (*sub_100538238(uint64_t **a1))()
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
  v2[4] = sub_100533FA4(v2);
  return sub_100019A4C;
}

double sub_1005382B8(uint64_t a1, uint64_t a2)
{
  sub_10053D600(a1, a2);

  return sub_1000167E0(a1, a2);
}

uint64_t (*sub_100538300(uint64_t *a1))()
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
  *(v2 + 32) = sub_1005342CC(v2);
  return sub_10001D41C;
}

double sub_100538370()
{
  swift_beginAccess();

  return result;
}

double sub_1005383B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_10053847C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  swift_beginAccess();
  v5 = *v4;
  sub_10001CE50(*v4, v4[1]);
  return v5;
}

double sub_1005384D4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000167E0(v6, v7);
}

uint64_t sub_100538594(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchTagsRibbonView(0);
  sub_10053DC84(&qword_10095C6D0, 255, type metadata accessor for SearchTagsRibbonView, &unk_1007A85D8);
  return sub_10076A03C();
}

uint64_t sub_10053863C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100538690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1005386FC(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_100538798(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v5 = v2;
  v6 = sub_100770EEC();

  return v6 & 1;
}

uint64_t sub_100538954(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_10053DC84(&qword_10095CD88, a2, type metadata accessor for AdvertsSearchResultContentView, &unk_1007AA74C);
  result = sub_10053DC84(&unk_10095CD90, v3, type metadata accessor for AdvertsSearchResultContentView, &unk_1007AA67C);
  *(a1 + 16) = result;
  return result;
}

void sub_1005389D8(unint64_t a1)
{
  v4 = sub_10000A5D4(&qword_10094E260, qword_100796150);
  __chkstk_darwin(v4 - 8);
  v6 = &v172 - v5;
  v7 = sub_10076350C();
  v200 = *(v7 - 8);
  __chkstk_darwin(v7);
  v195 = &v172 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v172 - v10;
  __chkstk_darwin(v12);
  v14 = &v172 - v13;
  v15 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v15 - 8);
  v17 = &v172 - v16;
  v18 = sub_10000A5D4(&unk_100942850, &unk_100784420);
  v197 = *(v18 - 8);
  v198 = v18;
  __chkstk_darwin(v18);
  v196 = &v172 - v19;
  v20 = sub_10076749C();
  v213 = *(v20 - 8);
  v214 = v20;
  __chkstk_darwin(v20);
  v212 = &v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = sub_1007679DC();
  *&v217 = *(v218 - 1);
  __chkstk_darwin(v218);
  v202 = &v172 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10076997C();
  v209 = *(v23 - 8);
  v210 = v23;
  __chkstk_darwin(v23);
  v208 = &v172 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10076443C();
  v222 = *(v25 - 1);
  v223 = v25;
  __chkstk_darwin(v25);
  v27 = &v172 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v221 = &v172 - v29;
  v225 = sub_10076747C();
  v220 = *(v225 - 8);
  __chkstk_darwin(v225);
  v211 = &v172 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v227 = &v172 - v32;
  v33 = sub_10000A5D4(&unk_100957F90, qword_1007A9D70);
  __chkstk_darwin(v33 - 8);
  v201 = &v172 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v224 = &v172 - v36;
  v37 = sub_10076469C();
  __chkstk_darwin(v37 - 8);
  v39 = &v172 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_10076C38C();
  v206 = *(v40 - 8);
  v207 = v40;
  __chkstk_darwin(v40);
  v219 = &v172 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1007673CC();
  v215 = *(v42 - 8);
  v216 = v42;
  __chkstk_darwin(v42);
  v226 = &v172 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076499C();
  sub_10053DC84(&qword_100948A38, 255, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  if (!v264[0])
  {
    return;
  }

  v203 = v264[0];
  v44 = sub_10076498C();
  if (!(v44 >> 62))
  {
    if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_51:

    return;
  }

  v113 = v44;
  v114 = sub_10077158C();
  v44 = v113;
  if (!v114)
  {
    goto LABEL_51;
  }

LABEL_4:
  v173 = v6;
  if ((v44 & 0xC000000000000001) != 0)
  {
    v45 = sub_10077149C();
LABEL_7:
    v178 = v17;

    sub_10076285C();
    sub_1007632FC();
    if (qword_100940540 != -1)
    {
      swift_once();
    }

    sub_10076C32C();
    sub_10076C2FC();
    v1 = v46;
    v2 = v47;

    v48 = sub_10076BB6C();
    v184 = v49;
    v185 = v48;
    v50 = sub_10076BBEC();
    v186 = v51;
    v187 = v50;
    v52 = sub_10076BB0C();
    v204 = v45;

    if (v52)
    {
      v53 = sub_10076518C();

      v54 = v217;
      if (v53)
      {
        v55 = sub_10076C3EC();
        v188 = v56;
        v189 = v55;
      }

      else
      {
        v188 = 0;
        v189 = 0;
      }

      v57 = v218;
    }

    else
    {
      v188 = 0;
      v189 = 0;
      v57 = v218;
      v54 = v217;
    }

    v205 = sub_10076282C();
    (*(v54 + 56))(v224, 1, 1, v57);
    v58 = sub_10076284C();
    v176 = sub_10076286C();
    swift_getKeyPath();
    sub_10076338C();

    v6 = v264[5];
    if (qword_1009407E8 != -1)
    {
      swift_once();
    }

    v59 = v225;
    v60 = sub_10000A61C(v225, qword_1009A0690);
    v61 = v220 + 16;
    v190 = *(v220 + 16);
    v190(v227, v60, v59);
    v62 = sub_10077071C();
    v177 = v7;
    v193 = a1;
    v174 = v11;
    v175 = v14;
    v199 = v58;
    v191 = v61;
    if ((v62 & 1) == 0)
    {
      if (qword_10093F528 != -1)
      {
        swift_once();
      }

      v63 = qword_100944CA0;
      goto LABEL_24;
    }

    if (qword_10093F520 != -1)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v63 = qword_100944C88;
LABEL_24:
      v64 = v223;
      v65 = sub_10000A61C(v223, v63);
      v66 = v222;
      (*(v222 + 16))(v27, v65, v64);
      (*(v66 + 32))(v221, v27, v64);
      v67 = [v6 preferredContentSizeCategory];
      sub_10077084C();

      sub_1007643EC();
      sub_10076441C();
      sub_10076746C();
      sub_10076745C();
      v183 = sub_10076DDDC();
      swift_allocObject();
      v192 = sub_10076DDBC();
      v68 = objc_opt_self();
      v181 = v68;
      v69 = [v68 preferredFontForTextStyle:UIFontTextStyleBody];
      v194 = v6;
      v70 = sub_10076C04C();
      v264[3] = v70;
      v71 = sub_10053DC84(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v264[4] = v71;
      v180 = v71;
      v72 = sub_10000DB7C(v264);
      v73 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v74 = *(v70 - 8);
      v75 = *(v74 + 104);
      v182 = v74 + 104;
      v179 = enum case for Feature.measurement_with_labelplaceholder(_:);
      v75(v72, enum case for Feature.measurement_with_labelplaceholder(_:), v70);
      sub_10076C90C();
      sub_10000CD74(v264);
      v76 = v208;
      sub_10076996C();
      sub_10076994C();
      v77 = v210;
      v209 = *(v209 + 8);
      (v209)(v76, v210);
      v78 = [v68 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v263[3] = v70;
      v263[4] = v71;
      v79 = sub_10000DB7C(v263);
      v75(v79, v73, v70);
      sub_10076C90C();
      sub_10000CD74(v263);
      sub_10076996C();
      sub_10076994C();
      v80 = v209;
      (v209)(v76, v77);
      v81 = [v181 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v262[3] = v70;
      v262[4] = v180;
      v82 = sub_10000DB7C(v262);
      v75(v82, v179, v70);
      sub_10076C90C();
      sub_10000CD74(v262);
      sub_10076996C();
      sub_10076994C();
      v80(v76, v77);
      v83 = v205;
      LODWORD(v210) = sub_10001D420() & (v83 != 0);
      if (v210 == 1)
      {
        v84 = v183;
        v85 = objc_allocWithZone(sub_10076DEDC());
        v86 = v194;
        v87 = sub_10076DECC();
        v88 = v201;
        sub_100016E2C(v224, v201, &unk_100957F90, qword_1007A9D70);
        v89 = v217;
        v90 = *(v217 + 48);
        v91 = v218;
        v92 = v90(v88, 1, v218);
        v93 = v190;
        if (v92 == 1)
        {
          v94 = v202;
          _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
          if (v90(v88, 1, v91) != 1)
          {
            sub_10000CFBC(v88, &unk_100957F90, qword_1007A9D70);
          }
        }

        else
        {
          v94 = v202;
          (*(v89 + 32))(v202, v88, v91);
        }

        v98 = v87;
        sub_10001A588(v205, v94, v98, v1, v2);

        (*(v89 + 8))(v94, v91);
        v95 = v84;
        swift_allocObject();
        v96 = sub_10076DDAC();
        v97 = v194;
      }

      else
      {
        v95 = v183;
        swift_allocObject();
        v96 = sub_10076DDBC();
        v97 = v194;
        v93 = v190;
      }

      v99 = v199;
      if ((sub_10001D420() & (v99 != 0)) == 1)
      {
        v100.n128_f64[0] = v1;
        sub_1004EF9EC(v99, v176 & 1, v100, v2);
        swift_allocObject();
        v101 = sub_10076DDAC();
      }

      else
      {
        swift_allocObject();
        v101 = sub_10076DDBC();
      }

      v102 = v101;
      v93(v211, v227, v225);
      v261 = &protocol witness table for LayoutViewPlaceholder;
      v260 = v95;
      v11 = v192;
      v259 = v192;
      v258 = 0;
      *&v256[40] = 0u;
      v257 = 0u;
      sub_10000A570(v264, v256);
      sub_10000A570(v263, &v255);
      v254 = 0;
      v252 = 0u;
      v253 = 0u;
      v251 = 0;
      v249 = 0u;
      v250 = 0u;

      v103 = sub_10076DDCC();
      v248 = &protocol witness table for LayoutViewPlaceholder;
      v247 = v95;
      v246 = v103;
      v245 = 0;
      v243 = 0u;
      v244 = 0u;
      v242 = 0;
      v240 = 0u;
      v241 = 0u;
      v239 = 0;
      v237 = 0u;
      v238 = 0u;
      v236 = 0;
      v235 = 0u;
      *&v234[40] = 0u;
      sub_10000A570(v262, v234);
      v233 = &protocol witness table for LayoutViewPlaceholder;
      v232 = v95;
      v230 = &protocol witness table for LayoutViewPlaceholder;
      v231 = v96;
      v229 = v95;
      v228 = v102;
      v104 = v212;
      sub_10076748C();
      v105 = sub_10076DEDC();
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v106 = swift_allocObject();
      v217 = xmmword_1007841E0;
      *(v106 + 16) = xmmword_1007841E0;
      *(v106 + 32) = v97;
      v107 = v97;
      v218 = v105;
      v108 = sub_10076DEEC();
      sub_10053DC84(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
      v27 = v214;
      sub_10076D2AC();

      (*(v213 + 8))(v104, v27);
      sub_10000CD74(v262);
      sub_10000CD74(v263);
      sub_10000CD74(v264);
      (*(v222 + 8))(v221, v223);
      (*(v220 + 8))(v227, v225);
      sub_10000CFBC(v224, &unk_100957F90, qword_1007A9D70);
      v109 = sub_10076280C();
      if (v109 >> 62)
      {
        v39 = sub_10077158C();
      }

      else
      {
        v39 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a1 = sub_10076283C();
      if (a1)
      {
      }

      v6 = sub_10076281C();
      if (v6)
      {
      }

      v110 = sub_10076288C();
      if (v110 >> 62)
      {
        v115 = v110;
        v116 = sub_10077158C();
        v110 = v115;
        if (!v116)
        {
LABEL_55:

          v112 = a1 | v39;
          goto LABEL_56;
        }
      }

      else if (!*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_55;
      }

      if ((v110 & 0xC000000000000001) != 0)
      {
        goto LABEL_66;
      }

      if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_45;
      }

      __break(1u);
LABEL_69:
      swift_once();
    }
  }

  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v45 = *(v44 + 32);

    goto LABEL_7;
  }

  __break(1u);
LABEL_66:
  sub_10077149C();
LABEL_45:

  v111 = sub_10076C41C();

  if (v111 >> 62)
  {
    v112 = sub_10077158C();
  }

  else
  {
    v112 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 | v39)
  {
    if ((sub_1007673BC() & 1) == 0)
    {
LABEL_64:

      (*(v206 + 8))(v219, v207);
      (*(v215 + 8))(v226, v216);
      return;
    }
  }

  else
  {
LABEL_56:
    if ((sub_1007673BC() & 1) == 0 || !(v112 | v6))
    {
      goto LABEL_64;
    }
  }

  v117 = v196;
  sub_10076ABBC();
  swift_getKeyPath();
  sub_10076338C();

  v118 = v264[0];
  v119 = swift_allocObject();
  *(v119 + 16) = v217;
  *(v119 + 32) = v118;
  v120 = v118;
  v121 = sub_10076DEEC();
  sub_10001CE64();
  v122 = v198;
  sub_10076D3EC();

  (*(v197 + 8))(v117, v122);
  v123 = sub_10076283C();
  v124 = sub_10076281C();
  v125 = sub_10076280C();
  if (v125 >> 62)
  {
    v128 = v125;
    v129 = sub_10077158C();
    v125 = v128;
    v126 = v178;
    if (v129)
    {
      goto LABEL_60;
    }

LABEL_71:

    v127 = 0;
    goto LABEL_72;
  }

  v126 = v178;
  if (!*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_71;
  }

LABEL_60:
  if ((v125 & 0xC000000000000001) != 0)
  {
    v127 = sub_10077149C();
  }

  else
  {
    if (!*((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_107;
    }

    v127 = *(v125 + 32);
  }

LABEL_72:
  v130 = sub_10076288C();
  if (v130 >> 62)
  {
    v134 = v130;
    v131 = sub_10077158C();
    v130 = v134;
  }

  else
  {
    v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v227 = v123;
  v224 = v124;
  v225 = v127;
  if (v131)
  {
    if ((v130 & 0xC000000000000001) != 0)
    {
      v223 = sub_10077149C();
    }

    else
    {
      if (!*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_109;
      }

      v223 = *(v130 + 32);
    }
  }

  else
  {

    v223 = 0;
  }

  v132 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_10076338C();

  v124 = v264[0];
  sub_100460BD4(v126);

  v11 = sub_10076283C();
  v123 = sub_10076281C();
  v133 = sub_10076280C();
  if (v133 >> 62)
  {
    v135 = v133;
    v136 = sub_10077158C();
    v133 = v135;
    if (v136)
    {
LABEL_82:
      if ((v133 & 0xC000000000000001) == 0)
      {
        if (!*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_111;
        }

        a1 = *(v133 + 32);

        goto LABEL_85;
      }

LABEL_107:
      a1 = sub_10077149C();
LABEL_85:

      goto LABEL_89;
    }
  }

  else if (*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_82;
  }

  a1 = 0;
LABEL_89:
  v137 = sub_10076288C();
  if (v137 >> 62)
  {
    v139 = v137;
    v140 = sub_10077158C();
    v137 = v139;
    if (v140)
    {
LABEL_91:
      if ((v137 & 0xC000000000000001) == 0)
      {
        if (*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v138 = *(v137 + 32);

LABEL_94:

          goto LABEL_97;
        }

LABEL_111:
        __break(1u);
LABEL_112:
        v222 = sub_10077158C();
        if (a1)
        {
          goto LABEL_101;
        }

LABEL_113:
        v143 = 0;
        goto LABEL_114;
      }

LABEL_109:
      v138 = sub_10077149C();
      goto LABEL_94;
    }
  }

  else if (*((v137 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_91;
  }

  v138 = 0;
LABEL_97:
  if ((sub_1007673BC() & 1) == 0)
  {

    v144 = v200;
    v145 = v175;
    (*(v200 + 104))(v175, enum case for LockupMediaLayout.DisplayType.none(_:), v177);
LABEL_136:
    type metadata accessor for LockupMediaView(0);
    v169 = sub_100630CB4();
    swift_getObjectType();
    v170 = v226;
    v171 = v178;
    sub_100141F14(v227, v224, v225, v223, v178, v145, v169, v226, v1, v2);

    swift_unknownObjectRelease();

    (*(v144 + 8))(v145, v177);
    sub_10000CFBC(v171, &unk_1009467E0, qword_10078CB50);
    (*(v206 + 8))(v219, v207);
    (*(v215 + 8))(v170, v216);
    return;
  }

  if (v123 | v11)
  {
    v146 = v174;
    sub_10076D3AC();

    v144 = v200;
    v147 = v177;
    (*(v200 + 104))(v146, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v177);
    v145 = v175;
    (*(v144 + 32))(v175, v146, v147);
    goto LABEL_136;
  }

  v142 = sub_10057F8EC(a1, v138, 0, 1, v141);
  v123 = v142;
  v124 = (v142 >> 62);
  if (v142 >> 62)
  {
    goto LABEL_112;
  }

  v222 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a1)
  {
    goto LABEL_113;
  }

LABEL_101:
  v143 = sub_1007601CC();
LABEL_114:
  v148 = sub_10057FC34(v143);

  LODWORD(v220) = v148;
  if (a1)
  {
    v149 = sub_1007601CC();
  }

  else
  {
    v149 = 0;
  }

  v151 = v215;
  v150 = v216;
  v152 = v173;
  (*(v215 + 16))(v173, v226, v216);
  v153.n128_f64[0] = (*(v151 + 56))(v152, 0, 1, v150);
  v154 = sub_10058015C(v149, v152, v153);

  sub_10000CFBC(v152, &qword_10094E260, qword_100796150);
  if (v124)
  {
    v155 = sub_10077158C();
  }

  else
  {
    v155 = *((v123 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v156 = v195;
  if (!v155)
  {

    goto LABEL_127;
  }

  if ((v123 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
LABEL_124:

    v157 = sub_10076BDCC();

    if (v157)
    {

      v144 = v200;
      v158 = v174;
      v159 = v177;
      (*(v200 + 104))(v174, enum case for LockupMediaLayout.DisplayType.landscape(_:), v177);
LABEL_135:
      v145 = v175;
      (*(v144 + 32))(v175, v158, v159);
      goto LABEL_136;
    }

LABEL_127:
    v160 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v161 = v200;
    v159 = v177;
    v221 = *(v200 + 104);
    (v221)(v156, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v177);
    v162 = sub_1007634FC();
    v218 = *(v161 + 8);
    (v218)(v156, v159);
    if (((v222 >= v162) & v154) != 0 || (v160 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v221)(v156, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v159), v163 = sub_1007634FC(), v164 = v218, (v218)(v156, v159), ((v222 >= v163) & v220) != 0) || (v160 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v221)(v156, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v159), v165 = sub_1007634FC(), v164(v156, v159), v222 >= v165))
    {
    }

    else
    {
      v160 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      (v221)(v156, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v159);
      v166 = sub_1007634FC();

      v164(v156, v159);
      if (v222 != v166)
      {
        v167 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v158 = v174;
        v168 = v174;
LABEL_134:
        (v221)(v168, v167, v159);
        v144 = v200;
        goto LABEL_135;
      }
    }

    v158 = v174;
    v168 = v174;
    v167 = v160;
    goto LABEL_134;
  }

  if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_124;
  }

  __break(1u);
}

uint64_t sub_10053A79C(void (**a1)(uint64_t, uint64_t, __n128), uint64_t a2)
{
  v255 = a2;
  v348 = sub_10075F21C();
  v3 = *(v348 - 8);
  __chkstk_darwin(v348);
  v302 = &v245 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v320 = &v245 - v6;
  __chkstk_darwin(v7);
  v319 = &v245 - v8;
  __chkstk_darwin(v9);
  v318 = &v245 - v10;
  v323 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v323);
  v322 = &v245 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_10094E260, qword_100796150);
  __chkstk_darwin(v12 - 8);
  v257 = &v245 - v13;
  v324 = sub_10076D39C();
  v357 = *(v324 - 8);
  __chkstk_darwin(v324);
  v283 = &v245 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v284 = &v245 - v16;
  v281 = sub_10076357C();
  v356 = *(v281 - 8);
  __chkstk_darwin(v281);
  v321 = &v245 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v18 - 8);
  v282 = &v245 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v338 = &v245 - v21;
  v342 = sub_10076350C();
  v22 = *(v342 - 8);
  __chkstk_darwin(v342);
  v345 = (&v245 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v263 = &v245 - v25;
  __chkstk_darwin(v26);
  v312 = &v245 - v27;
  __chkstk_darwin(v28);
  v264 = &v245 - v29;
  __chkstk_darwin(v30);
  v350 = &v245 - v31;
  v291 = sub_10000A5D4(&unk_100942850, &unk_100784420);
  v355 = *(v291 - 8);
  __chkstk_darwin(v291);
  v290 = &v245 - v32;
  v289 = sub_10076749C();
  v354 = *(v289 - 8);
  __chkstk_darwin(v289);
  v288 = &v245 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v304 = sub_1007679DC();
  v34 = *(v304 - 8);
  __chkstk_darwin(v304);
  v266 = &v245 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = sub_10076997C();
  v353 = *(v315 - 8);
  __chkstk_darwin(v315);
  v287 = &v245 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v314 = sub_10076443C();
  v37 = *(v314 - 8);
  __chkstk_darwin(v314);
  v286 = &v245 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v313 = &v245 - v40;
  v339 = sub_10076747C();
  v41 = *(v339 - 8);
  __chkstk_darwin(v339);
  v285 = &v245 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v347 = &v245 - v44;
  v45 = sub_10000A5D4(&unk_100957F90, qword_1007A9D70);
  __chkstk_darwin(v45 - 8);
  v265 = &v245 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v325 = &v245 - v48;
  v297 = sub_1007673CC();
  v49 = *(v297 - 8);
  __chkstk_darwin(v297);
  v303 = &v245 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10076469C();
  __chkstk_darwin(v51 - 8);
  v52 = sub_10076C38C();
  v253 = *(v52 - 8);
  v254 = v52;
  __chkstk_darwin(v52);
  v258 = &v245 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076499C();
  sub_10053DC84(&qword_100948A38, 255, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_10076332C();
  if (!v395[0])
  {
    return result;
  }

  v352 = v3;
  v256 = v395[0];
  v399 = _swiftEmptyArrayStorage;
  sub_1007632FC();
  if (qword_100940540 != -1)
  {
    goto LABEL_210;
  }

LABEL_3:

  sub_10076C32C();
  sub_10076C22C();
  v56 = v55;
  v351 = a1;
  sub_1005389D8(a1);
  v58 = v57;
  v59 = sub_10076498C();
  v60 = v59;
  if (!(v59 >> 62))
  {
    v292 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v292)
    {
      goto LABEL_212;
    }

    goto LABEL_5;
  }

  v292 = sub_10077158C();
  if (v292)
  {
LABEL_5:
    v309 = v41 + 2;
    v279 = (v37 + 16);
    v280 = (v34 + 56);
    v278 = (v37 + 32);
    v277 = UIFontTextStyleBody;
    v276 = (v353 + 8);
    v308 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v252 = (v34 + 32);
    v260 = (v34 + 8);
    v261 = (v34 + 48);
    v274 = (v354 + 1);
    v275 = UIFontTextStyleFootnote;
    v272 = (v41 + 1);
    v273 = (v37 + 8);
    v271 = v355 + 1;
    v262 = enum case for LockupMediaLayout.DisplayType.none(_:);
    v295 = (v22 + 104);
    v259 = (v22 + 32);
    v250 = (v49 + 56);
    v251 = (v49 + 16);
    v346 = (v22 + 8);
    v344 = (v22 + 16);
    v268 = (v357 + 8);
    v269 = (v357 + 56);
    v267 = (v356 + 1);
    v333 = (v22 + 88);
    left = UIEdgeInsetsZero.left;
    top = UIEdgeInsetsZero.top;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v299 = bottom;
    v307 = xmmword_1007841E0;
    v354 = (v352 + 88);
    v334 = (v352 + 8);
    v337 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    a1 = (v49 + 8);
    v49 = 0;
    v296 = enum case for LockupMediaLayout.DisplayType.landscape(_:);
    v249 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v247 = enum case for LockupMediaLayout.DisplayType.twoUp(_:);
    v246 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
    LODWORD(v353) = enum case for AppPlatform.watch(_:);
    v340 = v60 & 0xC000000000000001;
    v293 = v60 + 32;
    v294 = v60 & 0xFFFFFFFFFFFFFF8;
    v22 = v303;
    v34 = v304;
    v62 = v297;
    v317 = v56;
    v316 = v58;
    v311 = v60;
    v37 = v292;
    v270 = a1;
    v248 = enum case for LockupMediaLayout.DisplayType.threeUp(_:);
    while (1)
    {
      if (v340)
      {
        v41 = sub_10077149C();
        v63 = __OFADD__(v49++, 1);
        if (v63)
        {
          goto LABEL_202;
        }
      }

      else
      {
        if (v49 >= *(v294 + 16))
        {
          goto LABEL_203;
        }

        v41 = *(v293 + 8 * v49);

        v63 = __OFADD__(v49++, 1);
        if (v63)
        {
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          swift_once();
          goto LABEL_3;
        }
      }

      v64 = sub_10076BB5C();
      v358 = v41;
      if (v64)
      {
        if (qword_10093FBE0 != -1)
        {
          swift_once();
        }

        v65 = sub_100763ADC();
        sub_10000A61C(v65, qword_10099DDA0);
        sub_1007639AC();
        sub_10076BFCC();
        sub_10077019C();
        if (*((v399 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v399 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
          a1 = v270;
        }

        sub_10077025C();
      }

      v66 = sub_10076282C();
      swift_getKeyPath();
      sub_10076338C();

      v67 = v395[0];
      v68 = sub_100521984(v66, v395[0]);

      v69 = v68;
      v41 = v358;
      sub_1000F92B4(v69);
      sub_10076285C();
      v70 = sub_10076280C();
      if (v70 >> 62)
      {
        v137 = sub_10077158C();

        if (!v137)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v71)
        {
          goto LABEL_6;
        }
      }

      if (sub_1007673BC())
      {
        v72 = v34;
        v73 = sub_10076BB6C();
        v75 = v74;
        v76 = sub_10076BBEC();
        v78 = v77;
        v79 = sub_10076BB0C();

        v336 = v76;
        v335 = v78;
        v332 = v75;
        v329 = v73;
        if (v79 && (v80 = sub_10076518C(), , v80))
        {
          v343 = sub_10076C3EC();
          v341 = v81;
        }

        else
        {
          v343 = 0;
          v341 = 0;
        }

        v357 = sub_10076282C();
        v356 = sub_10076284C();
        v327 = sub_10076286C();
        swift_getKeyPath();
        sub_10076338C();

        v82 = v398;
        (*v280)(v325, 1, 1, v72);
        if (qword_1009407E8 != -1)
        {
          swift_once();
        }

        v83 = v339;
        v84 = sub_10000A61C(v339, qword_1009A0690);
        v349 = *v309;
        (v349)(v347, v84, v83);
        v85 = sub_10077071C();
        v306 = v49;
        if (v85)
        {
          v86 = qword_100944C88;
          if (qword_10093F520 != -1)
          {
            swift_once();
            v86 = qword_100944C88;
          }
        }

        else
        {
          v86 = qword_100944CA0;
          if (qword_10093F528 != -1)
          {
            swift_once();
            v86 = qword_100944CA0;
          }
        }

        v87 = v314;
        v88 = sub_10000A61C(v314, v86);
        v89 = v286;
        (*v279)(v286, v88, v87);
        (*v278)(v313, v89, v87);
        v90 = [v82 preferredContentSizeCategory];
        sub_10077084C();

        sub_1007643EC();
        sub_10076441C();
        sub_10076746C();
        sub_10076745C();
        v331 = sub_10076DDDC();
        swift_allocObject();
        v352 = sub_10076DDBC();
        v91 = objc_opt_self();
        v330 = v82;
        v92 = v91;
        v328 = v91;
        v93 = [v91 preferredFontForTextStyle:v277];
        v94 = sub_10076C04C();
        v396 = v94;
        v355 = sub_10053DC84(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v397 = v355;
        v95 = sub_10000DB7C(v395);
        v96 = *(*(v94 - 8) + 104);
        v97 = v308;
        v96(v95, v308, v94);
        sub_10076C90C();
        sub_10000CD74(v395);
        v98 = v287;
        sub_10076996C();
        sub_10076994C();
        v332 = *v276;
        v332(v98, v315);
        v99 = v275;
        v100 = [v92 preferredFontForTextStyle:v275];
        v394[3] = v94;
        v394[4] = v355;
        v101 = sub_10000DB7C(v394);
        v96(v101, v97, v94);
        sub_10076C90C();
        sub_10000CD74(v394);
        sub_10076996C();
        sub_10076994C();
        v102 = v315;
        v103 = v332;
        v332(v98, v315);
        v104 = [v328 preferredFontForTextStyle:v99];
        v393[3] = v94;
        v393[4] = v355;
        v105 = sub_10000DB7C(v393);
        v96(v105, v308, v94);
        sub_10076C90C();
        sub_10000CD74(v393);
        sub_10076996C();
        sub_10076994C();
        v103(v98, v102);
        v106 = v357;
        LODWORD(v355) = sub_10001D420() & (v106 != 0);
        if (v355 == 1)
        {
          v107 = v331;
          v108 = objc_allocWithZone(sub_10076DEDC());
          v109 = v330;
          v110 = v330;
          v111 = sub_10076DECC();
          v112 = v265;
          sub_100016E2C(v325, v265, &unk_100957F90, qword_1007A9D70);
          v113 = *v261;
          v114 = v304;
          if ((*v261)(v112, 1, v304) == 1)
          {
            v115 = v266;
            _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
            if (v113(v112, 1, v114) != 1)
            {
              sub_10000CFBC(v112, &unk_100957F90, qword_1007A9D70);
            }
          }

          else
          {
            v115 = v266;
            (*v252)(v266, v112, v114);
          }

          v118 = v111;
          sub_10001A588(v357, v115, v118, v56, v58);

          (*v260)(v115, v114);
          v116 = v107;
          swift_allocObject();
          v117 = sub_10076DDAC();
        }

        else
        {
          v116 = v331;
          swift_allocObject();
          v117 = sub_10076DDBC();
          v109 = v330;
        }

        v34 = v117;

        v119 = v356;
        if ((sub_10001D420() & (v119 != 0)) == 1)
        {
          v120.n128_f64[0] = v56;
          sub_1004EF9EC(v119, v327 & 1, v120, v58);
          swift_allocObject();
          v121 = sub_10076DDAC();
        }

        else
        {
          swift_allocObject();
          v121 = sub_10076DDBC();
        }

        v122 = v121;
        (v349)(v285, v347, v339);
        v392 = &protocol witness table for LayoutViewPlaceholder;
        v391 = v116;
        v390 = v352;
        v389 = 0;
        *&v387[40] = 0u;
        v388 = 0u;
        sub_10000A570(v395, v387);
        sub_10000A570(v394, &v386);
        v385 = 0;
        v383 = 0u;
        v384 = 0u;
        v382 = 0;
        v380 = 0u;
        v381 = 0u;

        v123 = sub_10076DDCC();
        v379 = &protocol witness table for LayoutViewPlaceholder;
        v378 = v116;
        v377 = v123;
        v376 = 0;
        v374 = 0u;
        v375 = 0u;
        v373 = 0;
        v371 = 0u;
        v372 = 0u;
        v370 = 0;
        v368 = 0u;
        v369 = 0u;
        v367 = 0;
        v366 = 0u;
        *&v365[40] = 0u;
        sub_10000A570(v393, v365);
        v364 = &protocol witness table for LayoutViewPlaceholder;
        v363 = v116;
        v362 = v34;
        v361 = &protocol witness table for LayoutViewPlaceholder;
        v360 = v116;
        v359 = v122;
        v124 = v288;
        sub_10076748C();
        v355 = sub_10076DEDC();
        sub_10000A5D4(&unk_100942870, &qword_100784460);
        v125 = swift_allocObject();
        *(v125 + 16) = v307;
        *(v125 + 32) = v109;
        v126 = v109;
        v127 = sub_10076DEEC();
        sub_10053DC84(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
        v128 = v289;
        sub_10076D2AC();

        (*v274)(v124, v128);
        sub_10000CD74(v393);
        sub_10000CD74(v394);
        sub_10000CD74(v395);
        (*v273)(v313, v314);
        (*v272)(v347, v339);
        sub_10000CFBC(v325, &unk_100957F90, qword_1007A9D70);
        v129 = v290;
        sub_10076ABBC();
        v130 = swift_allocObject();
        *(v130 + 16) = v307;
        *(v130 + 32) = v126;
        v131 = v126;
        v132 = sub_10076DEEC();
        sub_10001CE64();
        v49 = v291;
        sub_10076D3EC();

        (*v271)(v129, v49);
        v41 = sub_10076283C();
        v349 = sub_10076281C();
        v133 = sub_10076280C();
        if (v133 >> 62)
        {
          v138 = v133;
          v134 = sub_10077158C();
          v133 = v138;
        }

        else
        {
          v134 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v37 = v342;
        a1 = v345;
        v135 = v350;
        v22 = v303;
        if (v134)
        {
          if ((v133 & 0xC000000000000001) != 0)
          {
            v355 = sub_10077149C();
          }

          else
          {
            if (!*((v133 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_205;
            }

            v355 = *(v133 + 32);
          }
        }

        else
        {

          v355 = 0;
        }

        v136 = sub_10076288C();
        if (v136 >> 62)
        {
          v139 = v136;
          v140 = sub_10077158C();
          v136 = v139;
          if (!v140)
          {
            goto LABEL_62;
          }

LABEL_54:
          if ((v136 & 0xC000000000000001) != 0)
          {
            v356 = sub_10077149C();
          }

          else
          {
            if (!*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_206;
            }

            v356 = *(v136 + 32);
          }
        }

        else
        {
          if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_54;
          }

LABEL_62:

          v356 = 0;
        }

        v141 = sub_10076283C();
        v34 = sub_10076281C();
        v142 = sub_10076280C();
        if (v142 >> 62)
        {
          v144 = v142;
          v145 = sub_10077158C();
          v142 = v144;
          v341 = v41;
          if (!v145)
          {
            goto LABEL_70;
          }

LABEL_65:
          if ((v142 & 0xC000000000000001) != 0)
          {
            v41 = sub_10077149C();
          }

          else
          {
            if (!*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_207;
            }

            v41 = *(v142 + 32);
          }
        }

        else
        {
          v143 = *((v142 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v341 = v41;
          if (v143)
          {
            goto LABEL_65;
          }

LABEL_70:

          v41 = 0;
        }

        v146 = sub_10076288C();
        if (v146 >> 62)
        {
          v148 = v146;
          v149 = sub_10077158C();
          v146 = v148;
          if (!v149)
          {
            goto LABEL_78;
          }

LABEL_73:
          if ((v146 & 0xC000000000000001) != 0)
          {
            v147 = sub_10077149C();
          }

          else
          {
            if (!*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_208;
            }

            v147 = *(v146 + 32);
          }
        }

        else
        {
          if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_73;
          }

LABEL_78:

          v147 = 0;
        }

        if (sub_1007673BC())
        {
          if (!(v34 | v141))
          {
            v151 = sub_10057F8EC(v41, v147, 0, 1, v150);
            v152 = v151;
            v153 = v151 >> 62;
            if (v151 >> 62)
            {
              v357 = sub_10077158C();
              if (!v41)
              {
                goto LABEL_92;
              }

LABEL_83:
              v154 = sub_1007601CC();
            }

            else
            {
              v357 = *((v151 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v41)
              {
                goto LABEL_83;
              }

LABEL_92:
              v154 = 0;
            }

            v156 = sub_10057FC34(v154);

            if (v41)
            {
              v157 = sub_1007601CC();
            }

            else
            {
              v157 = 0;
            }

            v158 = v257;
            v159 = v297;
            (*v251)(v257, v22, v297);
            v160.n128_f64[0] = (*v250)(v158, 0, 1, v159);
            v161 = sub_10058015C(v157, v158, v160);

            sub_10000CFBC(v158, &qword_10094E260, qword_100796150);
            if (v153)
            {
              result = sub_10077158C();
            }

            else
            {
              result = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v37 = v342;
            v34 = v263;
            a1 = v345;
            if (result)
            {
              if ((v152 & 0xC000000000000001) == 0)
              {
                if (*((v152 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {

                  goto LABEL_103;
                }

                __break(1u);
LABEL_216:
                __break(1u);
                return result;
              }

              sub_10077149C();
LABEL_103:

              v162 = sub_10076BDCC();

              v34 = v263;
              if (v162)
              {

                v163 = v264;
                (*v295)(v264, v296, v37);
                v41 = v284;
                v22 = v303;
                goto LABEL_116;
              }
            }

            else
            {
            }

            LODWORD(v343) = v156;
            v164 = v249;
            v352 = *v295;
            (v352)(v34, v249, v37);
            v165 = sub_1007634FC();
            v166 = *v346;
            (*v346)(v34, v37);
            if (((v357 >= v165) & v161) != 0)
            {

              v163 = v264;
              (v352)(v264, v164, v37);
              v41 = v284;
              a1 = v345;
              v22 = v303;
              goto LABEL_116;
            }

            (v352)(v34, v248, v37);
            v167 = sub_1007634FC();
            v168 = v166;
            v166(v34, v37);
            v22 = v303;
            if (((v357 >= v167) & v343) == 0)
            {
              v171 = v247;
              (v352)(v34, v247, v37);
              v172 = sub_1007634FC();
              v168(v34, v37);
              if (v357 >= v172)
              {
              }

              else
              {
                v171 = v246;
                (v352)(v34, v246, v37);
                v173 = sub_1007634FC();

                v168(v34, v37);
                if (v357 != v173)
                {
                  v163 = v264;
                  v169 = v264;
                  v170 = v262;
                  goto LABEL_115;
                }
              }

              v163 = v264;
              v169 = v264;
              v170 = v171;
              goto LABEL_115;
            }

            v163 = v264;
            v169 = v264;
            v170 = v248;
LABEL_115:
            (v352)(v169, v170, v37);
            v41 = v284;
            a1 = v345;
LABEL_116:
            v49 = v306;
            v135 = v350;
            (*v259)(v350, v163, v37);
LABEL_117:
            v174 = sub_100630CB4();
            (*v269)(v338, 1, 1, v324);
            v305 = v174;
            v310 = [v174 traitCollection];
            v397 = &protocol witness table for CGFloat;
            v396 = &type metadata for CGFloat;
            v395[0] = 0x4021000000000000;
            sub_10000A570(v395, v394);
            v343 = *v344;
            v343(v312, v135, v37);
            if (v349 | v341)
            {
              goto LABEL_127;
            }

            v176 = sub_10057F8EC(v355, v356, 0, 1, v175);
            if (v176 >> 62)
            {
              v177 = v176;
              v178 = sub_10077158C();
              v176 = v177;
              if (!v178)
              {
                goto LABEL_126;
              }

LABEL_120:
              if ((v176 & 0xC000000000000001) != 0)
              {
                sub_10077149C();
              }

              else
              {
                if (!*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_209;
                }
              }

              sub_10076BEFC();
              sub_10076D3AC();
            }

            else
            {
              if (*((v176 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_120;
              }

LABEL_126:

LABEL_127:
              sub_10076D3AC();
            }

            sub_100016E2C(v338, v282, &unk_1009467E0, qword_10078CB50);
            sub_10076354C();
            sub_10000CD74(v395);
            v179 = v283;
            sub_10076355C();
            sub_10076D36C();
            (*v268)(v179, v324);
            if (v349)
            {

              sub_10076B84C();
              v180 = sub_10076BFCC();
              v41 = sub_10049D5BC(0, 1, 1, _swiftEmptyArrayStorage);
              v182 = v41[2];
              v181 = v41[3];
              if (v182 >= v181 >> 1)
              {
                v41 = sub_10049D5BC((v181 > 1), v182 + 1, 1, v41);
              }

              (*v267)(v321, v281);
              sub_10000CFBC(v338, &unk_1009467E0, qword_10078CB50);
              v41[2] = v182 + 1;
              v183 = &v41[2 * v182];
              v183[4] = v180;
              *(v183 + 40) = 0;
LABEL_132:
              v184 = v346;
              v185 = v41[2];
              if (v185)
              {
LABEL_133:
                v395[0] = _swiftEmptyArrayStorage;
                sub_1007714EC();
                v186 = 32;
                do
                {

                  sub_1007714CC();
                  sub_1007714FC();
                  sub_10077150C();
                  sub_1007714DC();
                  v186 += 16;
                  --v185;
                }

                while (v185);
                swift_unknownObjectRelease();

                (*v346)(v350, v37);
                v187 = v395[0];
                goto LABEL_141;
              }

LABEL_140:
              swift_unknownObjectRelease();

              (*v184)(v135, v37);
              v187 = _swiftEmptyArrayStorage;
LABEL_141:
              sub_1000F92B4(v187);
              v34 = v304;
              v62 = v297;
              v37 = v292;
              a1 = v270;
              v41 = v358;
              goto LABEL_7;
            }

            if (v341)
            {
              v188 = v49;

              v189 = sub_10076BFCC();
              v190 = sub_10049D5BC(0, 1, 1, _swiftEmptyArrayStorage);
              v192 = *(v190 + 2);
              v191 = *(v190 + 3);
              if (v192 >= v191 >> 1)
              {
                v190 = sub_10049D5BC((v191 > 1), v192 + 1, 1, v190);
              }

              v184 = v346;

              (*v267)(v321, v281);
              sub_10000CFBC(v338, &unk_1009467E0, qword_10078CB50);
              *(v190 + 2) = v192 + 1;
              v193 = &v190[16 * v192];
              *(v193 + 4) = v189;
              v193[40] = 0;
              v49 = v188;
              v185 = *(v190 + 2);
              if (v185)
              {
                goto LABEL_133;
              }

              goto LABEL_140;
            }

            v194 = sub_1007634FC();
            v196 = sub_10057F8EC(v355, v356, v194, 0, v195);
            sub_10076359C();
            v336 = v197;
            v335 = v198;
            if (!(v196 >> 62))
            {
              result = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (result)
              {
                goto LABEL_144;
              }

              goto LABEL_200;
            }

            result = sub_10077158C();
            if (!result)
            {
LABEL_200:

              (*v267)(v321, v281);
              sub_10000CFBC(v338, &unk_1009467E0, qword_10078CB50);
              v41 = _swiftEmptyArrayStorage;
              goto LABEL_132;
            }

LABEL_144:
            if (result < 1)
            {
              goto LABEL_216;
            }

            v49 = 0;
            v332 = (v196 & 0xC000000000000001);
            v41 = _swiftEmptyArrayStorage;
            v331 = v196;
            v330 = result;
            while (2)
            {
              if (v332)
              {
                v22 = sub_10077149C();
              }

              else
              {
                v22 = *(v196 + 8 * v49 + 32);
              }

              v343(a1, v135, v37);
              v199 = (*v333)(a1, v37);
              if (v199 == v337)
              {
                (*v346)(a1, v37);
                LODWORD(v352) = 0;
                v200 = v355;
              }

              else
              {
                v200 = v355;
                if (v199 == v296)
                {
                  LODWORD(v352) = 0;
                }

                else
                {
                  v201 = sub_10076BDCC();
                  (*v346)(a1, v37);
                  LODWORD(v352) = v201;
                }
              }

              v357 = v22;
              if (v356)
              {
                v202 = sub_10076C41C();
                if (!(v202 >> 62))
                {
                  if (*((v202 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_157;
                  }

LABEL_185:

                  if (!v200)
                  {
LABEL_186:
                    if (qword_10093F5C0 != -1)
                    {
                      swift_once();
                    }

                    v226 = qword_1009455A0;
                    v234 = 0;
                    v233 = 0;
                    v210 = 5.0;
                    v236 = 1;
                    v209 = 1.0;
                    v229 = left;
                    v230 = top;
                    v232 = right;
                    v231 = v299;
                    v237 = 1;
LABEL_189:
                    v240 = v322;
                    sub_10076D3AC();

                    *v240 = v210;
                    *(v240 + 8) = v233;
                    *(v240 + 16) = v237 & 1;
                    *(v240 + 24) = v234;
                    *(v240 + 32) = v236 & 1;
                    *(v240 + 40) = v209;
                    *(v240 + 48) = v226;
                    *(v240 + 56) = v230;
                    *(v240 + 64) = v229;
                    *(v240 + 72) = v231;
                    *(v240 + 80) = v232;
                    sub_100770ACC();
                    v204 = sub_10076BFCC();
                    sub_100125E90(v240);
                    v56 = v317;
                    v58 = v316;
                    v37 = v342;
                    a1 = v345;
LABEL_190:

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v41 = sub_10049D5BC(0, v41[2] + 1, 1, v41);
                    }

                    v135 = v350;
                    v34 = v41[2];
                    v241 = v41[3];
                    if (v34 >= v241 >> 1)
                    {
                      v41 = sub_10049D5BC((v241 > 1), v34 + 1, 1, v41);
                    }

                    ++v49;

                    v41[2] = v34 + 1;
                    v242 = &v41[2 * v34];
                    v242[4] = v204;
                    *(v242 + 40) = v352 & 1;
                    v196 = v331;
                    if (v330 == v49)
                    {

                      (*v267)(v321, v281);
                      sub_10000CFBC(v338, &unk_1009467E0, qword_10078CB50);
                      v22 = v303;
                      v49 = v306;
                      goto LABEL_132;
                    }

                    continue;
                  }

LABEL_164:
                  sub_1007601CC();

                  v205 = v318;
                  sub_100760E3C();

                  v206 = *v354;
                  v207 = v348;
                  v208 = (*v354)(v205, v348);
                  v209 = 0.0;
                  v210 = 0.0;
                  if (v208 != v353)
                  {
                    (*v334)(v318, v207);
                    v210 = 5.0;
                  }

                  v329 = sub_100760E8C();
                  v326 = v211;
                  v212 = sub_100760E7C();
                  v214 = v213;

                  v215 = v319;
                  sub_100760E3C();
                  v216 = v348;

                  v217 = v206(v215, v216);
                  if (v217 != v353)
                  {
                    (*v334)(v319, v216);
                    v209 = 1.0;
                  }

                  v218 = v320;
                  sub_100760E3C();
                  v219 = v348;
                  v220 = v206(v218, v348);
                  v328 = v212;
                  v327 = v214;
                  if (v220 == v353)
                  {
                    if (qword_10093F5B8 != -1)
                    {
                      swift_once();
                    }

                    v221 = qword_100945598;
                  }

                  else
                  {
                    if (qword_10093F5C0 != -1)
                    {
                      swift_once();
                    }

                    v221 = qword_1009455A0;

                    (*v334)(v320, v219);
                  }

                  v222 = v302;
                  sub_100760E3C();
                  v223 = v206(v222, v219);
                  if (v223 == v353)
                  {
                    *&v224 = COERCE_DOUBLE(sub_100760E7C());
                    if (v225)
                    {
                      v226 = v221;
                      if (qword_10093F5A8 != -1)
                      {
                        swift_once();
                      }

                      sub_10000A61C(v324, qword_10099CB60);
                      sub_10076D33C();
                      v228 = v227;

                      v229 = 15.0;
                      v230 = v228 * 15.0;
                      v231 = v228 * 15.0;
                      v232 = 15.0;
                      v233 = v329;
                      v234 = v328;
                      goto LABEL_183;
                    }

                    v235 = *&v224;

                    v230 = v235;
                    v229 = v235;
                    v231 = v235;
                    v232 = v235;
                  }

                  else
                  {

                    (*v334)(v222, v219);
                    v229 = left;
                    v230 = top;
                    v232 = right;
                    v231 = v299;
                  }

                  v233 = v329;
                  v234 = v328;
                  v226 = v221;
LABEL_183:
                  v236 = v327;
                  v237 = v326;
                  goto LABEL_189;
                }

                v238 = v202;
                v239 = sub_10077158C();
                v202 = v238;
                if (!v239)
                {
                  goto LABEL_185;
                }

LABEL_157:
                if ((v202 & 0xC000000000000001) != 0)
                {
                  sub_10077149C();
                }

                else
                {
                  if (!*((v202 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_204;
                  }
                }

                sub_10076C02C();
                sub_10076B84C();
                v203 = sub_10076BE5C();

                if (v203)
                {
                  v204 = sub_10076BFCC();

                  goto LABEL_190;
                }

                v200 = v355;
              }

              break;
            }

            if (!v200)
            {
              goto LABEL_186;
            }

            goto LABEL_164;
          }

          v155 = v264;
          sub_10076D3AC();

          (*v295)(v155, v337, v37);
          (*v259)(v135, v155, v37);
        }

        else
        {

          (*v295)(v135, v262, v37);
        }

        v41 = v284;
        v49 = v306;
        goto LABEL_117;
      }

LABEL_6:

LABEL_7:

      (*a1)(v22, v62);
      if (v49 == v37)
      {

        v243 = v399;
        goto LABEL_213;
      }
    }
  }

LABEL_212:

  v243 = _swiftEmptyArrayStorage;
LABEL_213:
  v244._rawValue = v243;
  sub_100760BAC(v244);

  return (*(v253 + 8))(v258, v254);
}

id sub_10053D600(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_disableAdvertRotation);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_10001CE50(a1, a2);
  v8 = sub_1000167E0(v6, v7);
  v9 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView);
  v10 = *(v9 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton);
  if (v10)
  {
    [v10 addTarget:v2 action:"disableAdvertRotationTap" forControlEvents:{64, v8}];
  }

  return [*(v9 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton) addTarget:v2 action:"disableAdvertRotationTap" forControlEvents:{64, v8}];
}

void sub_10053D6DC()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView);
  v3 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *(v2 + v3);
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
    return;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_10077149C();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    type metadata accessor for BorderedScreenshotView(0);
    sub_10053DC84(&qword_10094A410, 255, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
    v9 = v8;
    sub_10077140C();
    sub_100760BEC();
    sub_100016C74(v29);
    v10 = *&v9[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    sub_10075FCEC(v30, v11);
  }

  while (v5 != v6);

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*(Strong + qword_1009602D0) setImage:0];
    type metadata accessor for VideoView(0);
    sub_10053DC84(&qword_100957FA0, 255, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v14 = v13;
    sub_10077140C();
    sub_100760BEC();

    sub_100016C74(v29);
  }

  v15 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView);
  v16 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_metadataRibbonView);
  v17 = *&v16[OBJC_IVAR____TtC20ProductPageExtension18MetadataRibbonView_metadataRibbonItemViews];
  v18 = *(v17 + 16);
  if (v18)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v28 = v16;

    v19 = 32;
    do
    {
      v20 = *(v17 + v19);
      if (swift_dynamicCastClass())
      {
        v21 = v20;
        v31.value.super.isa = 0;
        v31.is_nil = 0;
        sub_10075FCEC(v31, v22);
        sub_10075FD2C();
        sub_10053DC84(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        sub_100760BFC();
      }

      v19 += 16;
      --v18;
    }

    while (v18);
  }

  v23 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v24 = *(v15 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v32.value.super.isa = 0;
  v32.is_nil = 0;
  sub_10075FCEC(v32, v25);

  v26 = *(v15 + v23);
  sub_10075FD2C();
  sub_10053DC84(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v27 = v26;
  sub_100760BFC();
}

id sub_10053DB0C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_10053DC84(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v7 = v2;
    v8 = sub_100770EEC();

    if (v8)
    {
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v4 = v9;
        [v9 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    [v2 addSubview:v10];
  }

  sub_10057E5D8();

  return [v2 setNeedsLayout];
}

uint64_t sub_10053DC84(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_10053DCCC()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_preferredImageSizes) = _swiftEmptyDictionarySingleton;
  v3 = (v0 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_disableAdvertRotation);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_impressionsCalculator) = 0;
  v4 = (v0 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_impressionsUpdateBlock);
  *v4 = 0;
  v4[1] = 0;
  sub_10077156C();
  __break(1u);
}

double sub_10053DE10()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076997C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007662AC();
  sub_10053E430(&qword_10095AE30, &type metadata accessor for SmallGameCenterPlayer, &protocol conformance descriptor for GameCenterPlayer);
  sub_10076332C();
  v8 = v43[0];
  if (!v43[0])
  {
    return 0.0;
  }

  v34 = v5;
  if (qword_10093F860 != -1)
  {
    swift_once();
  }

  v37 = v4;
  v38 = v3;
  v39 = v1;
  v40 = v0;
  v36 = sub_10076DDDC();
  swift_allocObject();
  v35 = sub_10076DDBC();

  sub_1007626FC();
  v9 = sub_10005312C();
  v41 = v8;
  if (qword_100940DA0 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  sub_10000A61C(v10, qword_1009A16D8);
  swift_getKeyPath();
  sub_10076338C();

  v11 = v43[0];
  sub_100770B3C();

  v12 = sub_10076C04C();
  v44 = v12;
  v33 = sub_10053E430(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v45 = v33;
  v13 = sub_10000DB7C(v43);
  v30[1] = v9;
  v14 = *(v12 - 8);
  v15 = *(v14 + 104);
  v32 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v30[2] = v14 + 104;
  v31 = v15;
  v15(v13);
  sub_10076C90C();
  sub_10000CD74(v43);
  sub_10076996C();
  sub_10076994C();
  v16 = *(v34 + 8);
  v17 = v37;
  v16(v7, v37);
  v34 = sub_1007626EC();
  v30[0] = v18;

  if (qword_100940DA8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v10, qword_1009A16F0);
  swift_getKeyPath();
  sub_10076338C();

  v19 = v43[0];
  sub_100770B3C();

  v44 = v12;
  v45 = v33;
  v20 = sub_10000DB7C(v43);
  v31(v20, v32, v12);
  sub_10076C90C();
  sub_10000CD74(v43);
  sub_10076996C();
  sub_10076994C();
  v16(v7, v17);
  sub_1001691A0(&xmmword_10099D2E0, v43);
  v47 = v36;
  v48 = &protocol witness table for LayoutViewPlaceholder;
  v46 = v35;
  sub_10000A570(v52, &v50);
  sub_10000A570(v51, &v49);
  swift_getKeyPath();
  v21 = v38;
  sub_10076338C();

  sub_10076C2FC();
  v23 = v22;
  v25 = v24;
  (*(v39 + 8))(v21, v40);
  swift_getKeyPath();
  sub_10076338C();

  v26 = v42;
  swift_getObjectType();
  sub_1005D14C8(v26, v43, v23, v25);
  v28 = v27;

  swift_unknownObjectRelease();
  sub_1001691FC(v43);
  sub_10000CD74(v51);
  sub_10000CD74(v52);
  return v28;
}

uint64_t sub_10053E430(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10053E480()
{
  result = qword_100950CA8;
  if (!qword_100950CA8)
  {
    type metadata accessor for PosterLockupCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100950CA8);
  }

  return result;
}

double sub_10053E4D8()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D39C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076469C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  sub_10076445C();
  sub_10076460C();
  sub_10076C30C();
  (*(v1 + 8))(v3, v0);
  sub_10076D36C();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  return v13;
}

double sub_10053E710()
{
  v0 = sub_10076C38C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D39C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076445C();
  sub_10076460C();
  sub_10076C30C();
  (*(v1 + 8))(v3, v0);
  sub_10076D36C();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t sub_10053E8AC()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10095CDB8);
  sub_10000A61C(v4, qword_10095CDB8);
  if (qword_100940FC0 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1D38);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10053EA80()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10095CDD0);
  sub_10000A61C(v4, qword_10095CDD0);
  *v3 = UIFontTextStyleCaption2;
  *(v3 + 2) = 0;
  v5 = enum case for FontUseCase.preferredFont(_:);
  v6 = sub_10076D3DC();
  (*(*(v6 - 8) + 104))(v3, v5, v6);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11[3] = v0;
  v11[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v11);
  (*(v1 + 16))(v7, v3, v0);
  v8 = UIFontTextStyleCaption2;
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10053EC3C()
{
  v2._object = 0x80000001007ECE80;
  v2._countAndFlagsBits = 0xD000000000000014;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  result = sub_1007622EC(v2, v3);
  qword_10095CDE8 = result;
  unk_10095CDF0 = v1;
  return result;
}

void sub_10053EC80(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = a2;
  v5 = sub_10076BF6C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v56 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v48 - v9;
  __chkstk_darwin(v11);
  v70 = v48 - v12;
  v13 = sub_1005421BC(a1);
  if (v13 >> 62)
  {
    goto LABEL_71;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v66 = v13;
  v64 = v14;
  v57 = a1;
  if (v14)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }
    }

    v15 = sub_10076C04C();
    v72 = v15;
    v73 = sub_100542DD8(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v16 = sub_10000DB7C(v71);
    (*(*(v15 - 8) + 104))(v16, enum case for Feature.voyager_bundles_2025A(_:), v15);
    LOBYTE(v15) = sub_10076C90C();
    sub_10000CD74(v71);
    if (v15)
    {
      v17 = v10;
      v18 = v5;
      sub_10076BFCC();
      v19 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_backgroundArtworkView;
      v20 = *&v3[OBJC_IVAR____TtC20ProductPageExtension10BundleView_backgroundArtworkView];
      sub_10076BF7C();
      sub_10075FCCC();
      [v20 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        sub_100770D5C();
      }

      sub_10075FB8C();

      [*&v3[v19] setContentMode:2];
      v21 = *&v3[v19];
      sub_10075FD2C();
      sub_100542DD8(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v22 = v21;
      sub_100760B8C();

      a1 = v57;
      v5 = v18;
      v10 = v17;
    }

    else
    {
    }
  }

  v23 = sub_100714640();
  if (a1 >> 62)
  {
    v13 = sub_10077158C();
    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_14:
      v62 = a1 & 0xFFFFFFFFFFFFFF8;
      v63 = a1 & 0xC000000000000001;
      v24 = v23 & 0xFFFFFFFFFFFFFF8;
      if (v23 < 0)
      {
        v25 = v23;
      }

      else
      {
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
      }

      v48[1] = v25;
      v60 = v23 & 0xC000000000000001;
      v51 = enum case for Artwork.Style.roundedRect(_:);
      v50 = (v6 + 104);
      v67 = (v6 + 8);
      v49 = enum case for Feature.voyager_bundles_2025A(_:);
      v26 = 4;
      v61 = v23 >> 62;
      v55 = v3;
      v58 = v23 & 0xFFFFFFFFFFFFFF8;
      v59 = v13;
      v54 = v5;
      v53 = v10;
      v52 = v23;
      do
      {
        v27 = v26 - 4;
        if (v63)
        {
          v13 = sub_10077149C();
          v6 = v13;
          v28 = v26 - 3;
          if (__OFADD__(v27, 1))
          {
            goto LABEL_65;
          }
        }

        else
        {
          if (v27 >= *(v62 + 16))
          {
            goto LABEL_66;
          }

          v6 = *(a1 + 8 * v26);

          v28 = v26 - 3;
          if (__OFADD__(v27, 1))
          {
LABEL_65:
            __break(1u);
LABEL_66:
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
            v47 = v13;
            v14 = sub_10077158C();
            v13 = v47;
            goto LABEL_3;
          }
        }

        if (v61)
        {
          v13 = sub_10077158C();
          if (v27 == v13)
          {
LABEL_40:

            break;
          }
        }

        else
        {
          v13 = *(v24 + 16);
          if (v27 == v13)
          {
            goto LABEL_40;
          }
        }

        v69 = v28;
        if (v60)
        {
          v29 = sub_10077149C();
        }

        else
        {
          if (v27 >= *(v24 + 16))
          {
            goto LABEL_69;
          }

          v29 = *(v23 + 8 * v26);
        }

        v30 = v29;
        if (sub_10076BB5C())
        {
          v31 = v70;
          sub_10076BF7C();
          v32 = v56;
          (*v50)(v56, v51, v5);
          sub_10076BF2C();
          v33 = *v67;
          (*v67)(v32, v5);
          v33(v31, v5);
          v34 = [v3 traitCollection];
          v35 = sub_10076C04C();
          v72 = v35;
          v73 = sub_100542DD8(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
          v36 = sub_10000DB7C(v71);
          (*(*(v35 - 8) + 104))(v36, v49, v35);
          LOBYTE(v35) = sub_10076C90C();
          sub_10000CD74(v71);
          v65 = v33;
          if (v35)
          {
            sub_1007706EC();
          }

          v10 = v53;
          sub_10076BF1C();
          v37 = OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_icon;
          [*&v30[OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_icon] contentMode];
          sub_10076BFCC();
          v38 = *&v30[v37];
          sub_10076BF7C();
          sub_10075FCCC();
          [v38 setContentMode:sub_10076BDBC()];
          sub_100764ADC();
          sub_10075FD0C();
          if (!sub_10076BE1C())
          {
            sub_100016F40(0, &qword_100942F10, UIColor_ptr);
            sub_100770D5C();
          }

          sub_10075FB8C();

          sub_10075FD2C();
          sub_100542DD8(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
          sub_100760B8C();

          v5 = v54;
          (v65)(v10, v54);
          v3 = v55;
          a1 = v57;
          v23 = v52;
        }

        else
        {
        }

        ++v26;
        v24 = v58;
      }

      while (v69 != v59);
    }
  }

  v13 = sub_100714658();
  v69 = v13;
  if (!v64)
  {
    goto LABEL_64;
  }

  v67 = (v66 & 0xC000000000000001);
  v65 = v66 & 0xFFFFFFFFFFFFFF8;
  v5 = v69 & 0xFFFFFFFFFFFFFF8;
  if (v69 < 0)
  {
    v39 = v69;
  }

  else
  {
    v39 = v69 & 0xFFFFFFFFFFFFFF8;
  }

  v61 = v39;
  v62 = v69 & 0xC000000000000001;
  v40 = 4;
  v63 = v69 >> 62;
  while (1)
  {
    v43 = v40 - 4;
    if (v67)
    {
      v13 = sub_10077149C();
      a1 = v40 - 3;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_67;
      }
    }

    else
    {
      if (v43 >= *(v65 + 16))
      {
        goto LABEL_68;
      }

      a1 = v40 - 3;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_67;
      }
    }

    if (v63)
    {
      break;
    }

    v13 = *(v5 + 16);
    if (v43 == v13)
    {
      goto LABEL_63;
    }

LABEL_52:
    if (v62)
    {
      v44 = sub_10077149C();
    }

    else
    {
      if (v43 >= *(v5 + 16))
      {
        goto LABEL_70;
      }

      v44 = *(v69 + 8 * v40);
    }

    v3 = v44;
    v45 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
    [*&v44[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView] contentMode];
    v10 = sub_10076BFCC();
    v46 = *&v3[v45];
    v6 = v70;
    sub_10076BF7C();
    sub_10075FCCC();
    [v46 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      sub_100770D5C();
    }

    sub_10075FB8C();

    v41 = *&v3[v45];
    sub_10075FD2C();
    sub_100542DD8(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v42 = v41;
    sub_100760B8C();

    ++v40;
    if (a1 == v64)
    {
      goto LABEL_64;
    }
  }

  v13 = sub_10077158C();
  if (v43 != v13)
  {
    goto LABEL_52;
  }

LABEL_63:

LABEL_64:
}

void sub_10053F768()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20ProductPageExtension10BundleView_itemStack) subviews];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v2 = sub_1007701BC();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:

    goto LABEL_17;
  }

  v3 = sub_10077158C();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = sub_10077149C();
      }

      else
      {
        v7 = *(v2 + 8 * i + 32);
      }

      v8 = v7;
      type metadata accessor for BundleChildView();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v5 = *(v9 + OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_icon);
        v13.value.super.isa = 0;
        v13.is_nil = 0;
        sub_10075FCEC(v13, v6);

        swift_beginAccess();
        sub_10000A5D4(&qword_10095CE60, &qword_1007AA9C8);
        sub_10076E17C();
        swift_endAccess();
      }

      else
      {
        type metadata accessor for IconSilhouetteView(0);
        v10 = swift_dynamicCastClass();
        if (v10)
        {
          v11 = v10;
          [*(v10 + OBJC_IVAR____TtC20ProductPageExtension18IconSilhouetteView_titleLabel) setText:0];
          [v11 removeFromSuperview];
        }
      }
    }

LABEL_17:

    return;
  }

  __break(1u);
}

void sub_10053F998()
{
  v1 = [*(v0 + OBJC_IVAR____TtC20ProductPageExtension10BundleView_screenshotStack) subviews];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v2 = sub_1007701BC();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    goto LABEL_15;
  }

  v3 = sub_10077158C();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_10077149C();
      }

      else
      {
        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      type metadata accessor for BorderedScreenshotView(0);
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = *(v7 + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView);
        v11.value.super.isa = 0;
        v11.is_nil = 0;
        sub_10075FCEC(v11, v9);

        swift_beginAccess();
        sub_10000A5D4(&qword_10095CE68, &unk_1007AA9D0);
        sub_10076E17C();
        swift_endAccess();
      }
    }

LABEL_15:

    return;
  }

  __break(1u);
}

void sub_10053FB7C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10076D39C();
  v84 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10053F768();
  sub_10053F998();
  v7 = sub_10076C04C();
  v92 = v7;
  v8 = sub_100542DD8(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v93 = v8;
  v9 = sub_10000DB7C(v91);
  v10 = enum case for Feature.voyager_bundles_2025A(_:);
  v11 = *(v7 - 8);
  v12 = *(v11 + 104);
  v13 = v11 + 104;
  v12(v9, enum case for Feature.voyager_bundles_2025A(_:), v7);
  v14 = sub_10076C90C();
  sub_10000CD74(v91);
  v15 = a1;
  v16 = 6;
  if ((v14 & 1) == 0)
  {
    v16 = 4;
  }

  v80 = v13;
  if ((a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
  {
    goto LABEL_62;
  }

  v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v81 = v17;
    v82 = v16;
    v79 = v16 - 1;
    v18 = v16 >= v17 ? v17 : v16 - 1;
    v19 = [v2 traitCollection];
    LODWORD(v86) = sub_100542CB8(a1);

    if ((v18 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_62:
    a1 = v15;
    v74 = v16;
    v17 = sub_10077158C();
    v16 = v74;
  }

  v75 = v12;
  v76 = v10;
  v77 = v8;
  v78 = v7;
  v83 = v6;
  v85 = v4;
  v87 = a1;
  v88 = v2;
  v20 = a1;
  if (v18)
  {
    v21 = a1 & 0xC000000000000001;
    if ((a1 & 0xC000000000000001) == 0 && v18 > *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_68;
    }

    v22 = 0;
    v23 = *&v2[OBJC_IVAR____TtC20ProductPageExtension10BundleView_itemStack];
    do
    {
      if (v21)
      {
        sub_10077149C();
      }

      else
      {
      }

      swift_beginAccess();
      sub_10000A5D4(&qword_10095CE60, &qword_1007AA9C8);
      sub_10076E15C();
      swift_endAccess();
      v25 = v89;
      v26 = *&v89[OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_titleLabel];
      sub_10076BB6C();
      if (v27)
      {
        v24 = sub_10076FF6C();
      }

      else
      {
        v24 = 0;
      }

      ++v22;
      [v26 setText:{v24, v75}];

      v25[OBJC_IVAR____TtC20ProductPageExtension15BundleChildView_titleStyle] = v86;
      [v25 setNeedsLayout];
      [v23 addSubview:v25];

      v20 = v87;
      v2 = v88;
    }

    while (v18 != v22);
  }

  v28 = v85;
  v29 = v83;
  if (v82 < v81)
  {
    v30 = v81 - v79;
    v31 = [objc_allocWithZone(type metadata accessor for IconSilhouetteView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v32 = [v2 traitCollection];
    v33 = v78;
    v92 = v78;
    v93 = v77;
    v34 = sub_10000DB7C(v91);
    v75(v34, v76, v33);
    v35 = sub_10076C90C();
    sub_10000CD74(v91);
    if (v35)
    {
      v36 = sub_1007706EC();

      v37 = 62.0;
      if (v36)
      {
        v37 = 32.0;
      }
    }

    else
    {

      v37 = 62.0;
    }

    *&v31[OBJC_IVAR____TtC20ProductPageExtension18IconSilhouetteView_preferredIconWidth] = v37;
    v38 = *&v31[OBJC_IVAR____TtC20ProductPageExtension18IconSilhouetteView_titleLabel];
    v94._object = 0x80000001007ECEA0;
    v94._countAndFlagsBits = 0xD000000000000027;
    v95._countAndFlagsBits = 0;
    v95._object = 0xE000000000000000;
    sub_100767D6C(v94, v30, v95);
    v39 = sub_10076FF6C();

    [v38 setText:v39];

    [*&v2[OBJC_IVAR____TtC20ProductPageExtension10BundleView_itemStack] addSubview:v31];
    v20 = v87;
  }

  v40 = sub_1005421BC(v20);
  v41 = v40;
  v42 = v40 >> 62;
  if (v40 >> 62)
  {
    v43 = sub_10077158C();
    v44 = &unk_1009A0000;
    if (!v43)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v43 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v44 = &unk_1009A0000;
    if (!v43)
    {
      goto LABEL_34;
    }
  }

  if ((v41 & 0xC000000000000001) != 0)
  {
    goto LABEL_66;
  }

  if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  while (1)
  {
    sub_10076BEFC();
    sub_10076D3AC();

    v45 = *(v44 + 246);
    swift_beginAccess();
    (*(v84 + 40))(&v2[v45], v29, v28);
    swift_endAccess();
LABEL_34:
    v44 = *(v44 + 246);
    swift_beginAccess();
    v46 = v84;
    (*(v84 + 16))(v29, &v44[v2], v28);
    v47 = sub_10076D2EC();
    (*(v46 + 8))(v29, v28);
    v48 = 3;
    if (v47)
    {
      v48 = 5;
    }

    v49 = v43 >= v48 ? v48 : v43;
    v50 = v43 >= 0 ? v49 : v48;
    if (v42)
    {
      if (sub_10077158C() < 0)
      {
        goto LABEL_69;
      }

      v51 = sub_10077158C();
    }

    else
    {
      v51 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v51 >= v50)
    {
      break;
    }

    __break(1u);
LABEL_66:
    sub_10077149C();
  }

  if ((v41 & 0xC000000000000001) != 0 && v50)
  {
    sub_10076C02C();

    v52 = 0;
    do
    {
      v53 = v52 + 1;
      sub_10077147C(v52);
      v52 = v53;
    }

    while (v50 != v53);
  }

  else
  {
  }

  if (v42)
  {
    v82 = sub_10077159C();
    v55 = v56;
    v54 = v57;
    v59 = v58;

    v50 = v59 >> 1;
  }

  else
  {
    v54 = 0;
    v82 = v41 & 0xFFFFFFFFFFFFFF8;
    v55 = (v41 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v60 = v50 - v54;
  v61 = v88;
  if (v50 == v54)
  {
    goto LABEL_60;
  }

  if (v50 > v54)
  {
    v61 = v88;
    v86 = *&v88[OBJC_IVAR____TtC20ProductPageExtension10BundleView_screenshotStack];
    v87 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_screenshotReusePool;
    v62 = v83;
    v63 = (v84 + 40);
    v64 = v55 + 8 * v54;
    do
    {
      v64 += 8;
      swift_beginAccess();

      sub_10000A5D4(&qword_10095CE68, &unk_1007AA9D0);
      sub_10076E15C();
      swift_endAccess();
      v65 = v90;
      sub_10076BEFC();
      sub_10076D3AC();
      v66 = &v65[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_displayConfiguration];
      swift_beginAccess();
      v67 = type metadata accessor for ScreenshotDisplayConfiguration(0);
      (*v63)(&v66[*(v67 + 40)], v62, v28);
      swift_endAccess();
      v68 = OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView;
      v69 = *&v65[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
      sub_1007638EC();

      v70 = *&v65[v68];
      v28 = v85;
      v71 = *(v66 + 6);
      v72 = v70;
      v73 = v71;
      sub_1007638DC();

      [v65 setNeedsLayout];
      [v86 addSubview:v65];

      --v60;
    }

    while (v60);
LABEL_60:
    swift_unknownObjectRelease();
    [v61 setNeedsLayout];
    return;
  }

LABEL_70:
  __break(1u);
}

id sub_1005404BC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(a1(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *a2 = result;
  return result;
}

char *sub_100540510(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v52 = sub_10000A5D4(&qword_10095CE50, &unk_1007AA9B8);
  __chkstk_darwin(v52);
  v51[1] = v51 - v10;
  v51[0] = sub_10000A5D4(&qword_10095CE38, &qword_1007AA9B0);
  __chkstk_darwin(v51[0]);
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v15 - 8);
  v17 = v51 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_iconStyle;
  v19 = enum case for Artwork.Style.roundedRect(_:);
  v20 = sub_10076BF6C();
  (*(*(v20 - 8) + 104))(&v5[v18], v19, v20);
  v21 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_titleLabel;
  if (qword_100940FC0 != -1)
  {
    swift_once();
  }

  v22 = sub_10076D3DC();
  v23 = sub_10000A61C(v22, qword_1009A1D38);
  v24 = *(v22 - 8);
  (*(v24 + 16))(v17, v23, v22);
  (*(v24 + 56))(v17, 0, 1, v22);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v25 = objc_allocWithZone(sub_1007626BC());
  *&v5[v21] = sub_1007626AC();
  v26 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_itemStack;
  v27 = [objc_allocWithZone(sub_10000A5D4(&qword_10095CE70 &qword_1007AA9E0))];
  *&v27[qword_10095D510] = 0;
  *&v27[qword_10095D518] = 1;
  *&v27[qword_10095D520] = 0x4028000000000000;
  v27[qword_10095D528] = 1;
  *&v5[v26] = v27;
  v28 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_screenshotStack;
  v29 = [objc_allocWithZone(sub_10000A5D4(&qword_10095CE78 &qword_1007AA9E8))];
  *&v29[qword_10095D510] = 0;
  *&v29[qword_10095D518] = 1;
  *&v29[qword_10095D520] = 0x4028000000000000;
  v29[qword_10095D528] = 1;
  *&v5[v28] = v29;
  type metadata accessor for BundleChildView();
  sub_10076D4CC();
  sub_100071820(&qword_10095CE40, &qword_10095CE38, &qword_1007AA9B0, &protocol conformance descriptor for ViewRecycler<A>);
  sub_10076E18C();
  type metadata accessor for BorderedScreenshotView(0);
  sub_10076D4CC();
  sub_100071820(&qword_10095CE58, &qword_10095CE50, &unk_1007AA9B8, &protocol conformance descriptor for ViewRecycler<A>);
  sub_10076E18C();
  v30 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_gradientBlurView;
  *&v5[v30] = [objc_allocWithZone(type metadata accessor for AppBundleGradientBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_backgroundArtworkView;
  sub_10075FD2C();
  *&v5[v31] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10076D3AC();
  v32 = type metadata accessor for BundleView(0);
  v56.receiver = v5;
  v56.super_class = v32;
  v33 = objc_msgSendSuper2(&v56, "initWithFrame:", a1, a2, a3, a4);
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v34 = v33;
  v35 = sub_100770D9C();
  [v34 setBackgroundColor:v35];

  [v34 _setCornerRadius:4.0];
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v36 = sub_10076C04C();
  v54 = v36;
  v37 = sub_100542DD8(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v55 = v37;
  v38 = sub_10000DB7C(v53);
  v39 = enum case for Feature.voyager_bundles_2025A(_:);
  v40 = *(*(v36 - 8) + 104);
  v40(v38, enum case for Feature.voyager_bundles_2025A(_:), v36);
  v41 = sub_10076C90C();
  sub_10000CD74(v53);
  if (v41)
  {
    v42 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_backgroundArtworkView;
    [*&v34[OBJC_IVAR____TtC20ProductPageExtension10BundleView_backgroundArtworkView] setAccessibilityIgnoresInvertColors:1];
    [*&v34[v42] setContentMode:2];
    [v34 addSubview:*&v34[v42]];
    [v34 addSubview:*&v34[OBJC_IVAR____TtC20ProductPageExtension10BundleView_gradientBlurView]];
  }

  v43 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_titleLabel;
  v44 = qword_100940828;
  v45 = *&v34[OBJC_IVAR____TtC20ProductPageExtension10BundleView_titleLabel];
  if (v44 != -1)
  {
    swift_once();
  }

  v46 = sub_10076FF6C();
  [v45 setText:v46];

  [*&v34[v43] setTextAlignment:1];
  [v34 addSubview:*&v34[v43]];
  v47 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_screenshotStack;
  [*&v34[OBJC_IVAR____TtC20ProductPageExtension10BundleView_screenshotStack] setClipsToBounds:1];
  v54 = v36;
  v55 = v37;
  v48 = sub_10000DB7C(v53);
  v40(v48, v39, v36);
  v49 = sub_10076C90C();
  sub_10000CD74(v53);
  if (v49)
  {
    [v34 addSubview:*&v34[v47]];
  }

  [v34 addSubview:*&v34[OBJC_IVAR____TtC20ProductPageExtension10BundleView_itemStack]];
  [v34 setClipsToBounds:1];

  return v34;
}

id sub_100540D7C()
{
  v1 = v0;
  v46 = sub_10076D39C();
  v2 = *(v46 - 8);
  __chkstk_darwin(v46);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10077164C();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BundleView(0);
  v49.receiver = v0;
  v49.super_class = v8;
  objc_msgSendSuper2(&v49, "layoutSubviews");
  v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension10BundleView_gradientBlurView];
  [v1 frame];
  [v9 setFrame:{0.0, 0.0}];

  v10 = *&v1[OBJC_IVAR____TtC20ProductPageExtension10BundleView_backgroundArtworkView];
  [v1 frame];
  sub_10075FC8C();

  sub_10076422C();
  v11 = CGRectGetWidth(v50) + -16.0;
  v12 = *&v1[OBJC_IVAR____TtC20ProductPageExtension10BundleView_titleLabel];
  sub_10076422C();
  [v12 sizeThatFits:{v11, CGRectGetHeight(v51)}];
  v14 = v13;
  v15 = *&v1[OBJC_IVAR____TtC20ProductPageExtension10BundleView_itemStack];
  sub_10076422C();
  v47 = v15;
  [v15 sizeThatFits:{v16, v17}];
  v19 = v18;
  v21 = v20;
  v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension10BundleView_screenshotStack];
  v23 = [v22 superview];
  if (v23)
  {

    sub_10076422C();
    v24 = CGRectGetHeight(v52) - v14 - v21 + -40.0;
    if (qword_100940820 != -1)
    {
      swift_once();
    }

    v25 = sub_10076D9AC();
    sub_10000A61C(v25, qword_10095CDD0);
    v26 = [v1 traitCollection];
    sub_10076D17C();
    sub_10076D97C();
    v28 = v27;

    (*(v5 + 8))(v7, v48);
    v29 = v24 - v28;
    v30 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_screenshotAspectRatio;
    swift_beginAccess();
    v31 = &v1[v30];
    v32 = v46;
    (*(v2 + 16))(v4, v31, v46);
    sub_10076D35C();
    v34 = v33;
    (*(v2 + 8))(v4, v32);
    v35 = v34 * -0.5;
    sub_10076422C();
    v36 = v34 + CGRectGetWidth(v53);
    [v22 setFrame:{v35, 20.0, v36, v29}];
    v54.origin.y = 20.0;
    v54.origin.x = v35;
    v54.size.width = v36;
    v54.size.height = v29;
    v37 = CGRectGetMaxY(v54) + 20.0;
  }

  else
  {
    v37 = 20.0;
  }

  sub_10076422C();
  [v12 setFrame:{CGRectGetMidX(v55) + v11 * -0.5, v37, v11, v14}];
  sub_10076422C();
  MidX = CGRectGetMidX(v56);
  [v12 lastBaselineMaxY];
  v40 = v39;
  if (qword_100940818 != -1)
  {
    swift_once();
  }

  v41 = sub_10076D9AC();
  sub_10000A61C(v41, qword_10095CDB8);
  v42 = [v1 traitCollection];
  sub_10076D17C();
  sub_10076D97C();
  v44 = v43;

  (*(v5 + 8))(v7, v48);
  return [v47 setFrame:{MidX + v19 * -0.5, v40 + v44, v19, v21}];
}

void *sub_1005414F8(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_15:
    sub_10077158C();
    sub_1007714EC();
    v2 = sub_10077158C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1007714EC();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_10077149C();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        sub_10076289C();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_1007714CC();
        sub_1007714FC();
        sub_10077150C();
        sub_1007714DC();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100541668(uint64_t a1)
{
  v6 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  sub_1007714EC();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_10000A570(i, v5);
    sub_10000A5D4(&qword_1009575A0, &unk_100784980);
    sub_10076272C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1007714CC();
    sub_1007714FC();
    sub_10077150C();
    sub_1007714DC();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id sub_100541774()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BundleView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BundleView(uint64_t a1)
{
  result = qword_10095CE20;
  if (!qword_10095CE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100541994(uint64_t a1)
{
  sub_10076BF6C();
  if (v1 <= 0x3F)
  {
    sub_100541B2C(319, &qword_10095CE30, &qword_10095CE38, &qword_1007AA9B0, &qword_10095CE40);
    if (v2 <= 0x3F)
    {
      sub_100541B2C(319, &qword_10095CE48, &qword_10095CE50, &unk_1007AA9B8, &qword_10095CE58);
      if (v3 <= 0x3F)
      {
        sub_10076D39C();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_100541B2C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_10000CE78(a3, a4);
    sub_100071820(a5, a3, a4, &protocol conformance descriptor for ViewRecycler<A>);
    v9 = sub_10076E19C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

double sub_100541BC8(uint64_t a1, unint64_t a2, void *a3, double a4, double a5)
{
  v50 = a1;
  v9 = sub_10077164C();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076D3DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940828 != -1)
  {
    swift_once();
  }

  if (qword_100940FC0 != -1)
  {
    swift_once();
  }

  v16 = sub_10000A61C(v12, qword_1009A1D38);
  (*(v13 + 16))(v15, v16, v12);
  v17 = [a3 traitCollection];
  sub_10077071C();

  v18 = sub_10076C04C();
  v53[3] = v18;
  v53[4] = sub_100542DD8(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v19 = sub_10000DB7C(v53);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
  sub_10076C90C();
  sub_10000CD74(v53);
  sub_10076991C();
  v21 = v20;
  v23 = v22;
  (*(v13 + 8))(v15, v12);
  sub_10076BC0C();
  v24 = 0.0;
  if (sub_1007701EC())
  {
    v25 = sub_1005421BC(a2);
    sub_10076C02C();
    v26 = sub_1007701EC();
    v28 = v51;
    v27 = v52;
    if (v26)
    {
      sub_100542B14(v25, a4, a5);
      v30 = v29;

      v24 = v30 + 40.0;
    }

    else
    {
    }
  }

  else
  {
    v28 = v51;
    v27 = v52;
  }

  v31 = [a3 traitCollection];
  v32 = sub_100542CB8(a2);

  if (qword_100940818 != -1)
  {
    swift_once();
  }

  v33 = sub_10076D9AC();
  sub_10000A61C(v33, qword_10095CDB8);
  v34 = [a3 traitCollection];
  sub_10076D17C();
  sub_10076D97C();
  v36 = v35;

  v37 = *(v28 + 8);
  v37(v11, v27);
  v38 = [a3 traitCollection];
  sub_10004C630(v50, v32, v38);
  v40 = v39;

  if (qword_100940820 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v33, qword_10095CDD0);
  v41 = [a3 traitCollection];
  sub_10076D17C();
  sub_10076D97C();
  v43 = v42;

  v37(v11, v27);
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100940FC8 != -1)
  {
    swift_once();
  }

  v44 = v24 + v21 - v23 + v36 + v36 + v40 + v43;
  sub_10000A61C(v12, qword_1009A1D50);
  v45 = [a3 traitCollection];
  v46 = sub_100770B3C();

  [v46 descender];
  v48 = v47;

  return v44 + v48;
}

uint64_t sub_1005421BC(unint64_t a1)
{
  v1 = _swiftEmptyArrayStorage;
  v42 = sub_1005414F8(a1);
  if (!v42)
  {
    return v1;
  }

  v2 = sub_10076C04C();
  v44[3] = v2;
  v44[4] = sub_100542DD8(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v3 = sub_10000DB7C(v44);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.voyager_bundles_2025A(_:), v2);
  LOBYTE(v2) = sub_10076C90C();
  sub_10000CD74(v44);
  if ((v2 & 1) == 0)
  {

    return v1;
  }

  if (v42 >> 62)
  {
    v4 = sub_10077158C();
  }

  else
  {
    v4 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v41 = v42 & 0xC000000000000001;
  if (v4)
  {
    if (v41)
    {
      v5 = sub_10077149C();
    }

    else
    {
      if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_27;
      }

      v5 = *(v42 + 32);
    }

    v6 = sub_10076280C();

    if (v6 >> 62)
    {
      if (sub_10077158C())
      {
LABEL_11:
        if ((v6 & 0xC000000000000001) == 0)
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          goto LABEL_14;
        }

LABEL_27:
        sub_10077149C();
LABEL_14:

        v7 = sub_1007601DC();

        if (v7 >> 62)
        {
          result = sub_10077158C();
          if (result)
          {
            goto LABEL_16;
          }
        }

        else
        {
          result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (result)
          {
LABEL_16:
            if ((v7 & 0xC000000000000001) != 0)
            {
              goto LABEL_144;
            }

            if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {

              goto LABEL_19;
            }

            __break(1u);
LABEL_146:
            __break(1u);
            return result;
          }
        }
      }
    }

    else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }
  }

LABEL_30:
  v10 = 3;
LABEL_31:
  v39 = v10;
  v44[0] = _swiftEmptyArrayStorage;
  if (!v4)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_63;
  }

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  v13 = v42 & 0xFFFFFFFFFFFFFF8;
  do
  {
    v14 = v11;
    while (1)
    {
      if (v41)
      {
        sub_10077149C();
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (v14 >= *(v13 + 16))
        {
          goto LABEL_125;
        }

        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }
      }

      v15 = sub_10076280C();
      v16 = v15;
      if (v15 >> 62)
      {
        break;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

LABEL_34:

LABEL_35:
      ++v14;
      if (v11 == v4)
      {
        goto LABEL_63;
      }
    }

    if (!sub_10077158C())
    {
      goto LABEL_34;
    }

LABEL_41:
    if ((v16 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
    }

    else
    {
      if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_126;
      }
    }

    v17 = sub_1007601DC();

    v18 = v17;
    if (!(v17 >> 62))
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v42 & 0xFFFFFFFFFFFFFF8;
      if (v19)
      {
        goto LABEL_54;
      }

      goto LABEL_46;
    }

    v20 = sub_10077158C();
    v18 = v17;
    v13 = v42 & 0xFFFFFFFFFFFFFF8;
    if (!v20)
    {
LABEL_46:

      goto LABEL_35;
    }

LABEL_54:
    if ((v18 & 0xC000000000000001) == 0)
    {
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        goto LABEL_57;
      }

      __break(1u);
LABEL_144:
      sub_10077149C();
LABEL_19:

      v9 = sub_10076BD4C();

      if (v9)
      {
        v10 = 5;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    sub_10077149C();
LABEL_57:

    sub_10077019C();
    if (*((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    v12 = v44[0];
    v13 = v42 & 0xFFFFFFFFFFFFFF8;
  }

  while (v11 != v4);
LABEL_63:
  v44[0] = v12;
  if (v12 >> 62)
  {
LABEL_127:
    v21 = sub_10077158C();
  }

  else
  {
    v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21 >= v39)
  {
    goto LABEL_98;
  }

  v22 = 0;
  while (2)
  {
    if (!v4)
    {
      goto LABEL_93;
    }

    v23 = 0;
    v40 = v22;
    while (2)
    {
      v24 = v23;
      v25 = v42 & 0xFFFFFFFFFFFFFF8;
      while (2)
      {
        if (v41)
        {
          sub_10077149C();
          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_121;
          }
        }

        else
        {
          if (v24 >= *(v25 + 16))
          {
            goto LABEL_122;
          }

          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }
        }

        v26 = sub_10076280C();
        v27 = v26;
        if (!(v26 >> 62))
        {
          if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_77;
          }

LABEL_70:

          goto LABEL_71;
        }

        if (!sub_10077158C())
        {
          goto LABEL_70;
        }

LABEL_77:
        if ((v27 & 0xC000000000000001) != 0)
        {
          sub_10077149C();
        }

        else
        {
          if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_123;
          }
        }

        v12 = sub_1007601DC();

        sub_10000A5D4(&qword_100948B88, &qword_10078B570);
        sub_100071820(&qword_100948B90, &qword_100948B88, &qword_10078B570, &protocol conformance descriptor for [A]);
        sub_1007703EC();

        v25 = v42 & 0xFFFFFFFFFFFFFF8;
        if (!v43)
        {
LABEL_71:
          ++v24;
          if (v23 == v4)
          {
            v22 = v40;
            goto LABEL_93;
          }

          continue;
        }

        break;
      }

      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
      v22 = v40;
      if (v23 != v4)
      {
        continue;
      }

      break;
    }

LABEL_93:
    sub_1000F93D0(_swiftEmptyArrayStorage);
    v12 = v44[0];
    if (v44[0] >> 62)
    {
      v28 = sub_10077158C();
    }

    else
    {
      v28 = *((v44[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = (v28 >= v39) | v22;
    v22 = 1;
    if ((v29 & 1) == 0)
    {
      continue;
    }

    break;
  }

LABEL_98:

  v1 = (v12 >> 62);
  if (v12 >> 62)
  {
    if ((v12 & 0x8000000000000000) != 0)
    {
      v5 = v12;
    }

    else
    {
      v5 = v12 & 0xFFFFFFFFFFFFFF8;
    }

    v6 = sub_10077158C();
    result = sub_10077158C();
    if (result < 0)
    {
      goto LABEL_146;
    }

    if (v6 >= v39)
    {
      v38 = v39;
    }

    else
    {
      v38 = v6;
    }

    if (v6 >= 0)
    {
      v4 = v38;
    }

    else
    {
      v4 = v39;
    }

    if (sub_10077158C() >= v4)
    {
      goto LABEL_102;
    }

    __break(1u);
    goto LABEL_140;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v39)
  {
    v4 = v39;
  }

  else
  {
    v4 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

LABEL_102:
  if ((v12 & 0xC000000000000001) != 0 && v4)
  {
    sub_10076C02C();

    v30 = 0;
    do
    {
      v31 = v30 + 1;
      sub_10077147C(v30);
      v30 = v31;
    }

    while (v4 != v31);
  }

  else
  {
  }

  if (v1)
  {
    v6 = sub_10077159C();
    v1 = v32;
    v5 = v33;
    v4 = v34;

    if (v4)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

  v5 = 0;
  v6 = v12 & 0xFFFFFFFFFFFFFF8;
  v1 = ((v12 & 0xFFFFFFFFFFFFFF8) + 32);
  v4 = (2 * v4) | 1;
  if ((v4 & 1) == 0)
  {
LABEL_112:
    sub_1002347C8(v6, v1, v5, v4);
    v1 = v35;
    goto LABEL_119;
  }

LABEL_113:
  sub_10077169C();
  swift_unknownObjectRetain_n();
  v36 = swift_dynamicCastClass();
  if (!v36)
  {
    swift_unknownObjectRelease();
    v36 = _swiftEmptyArrayStorage;
  }

  v37 = v36[2];

  if (__OFSUB__(v4 >> 1, v5))
  {
    goto LABEL_141;
  }

  if (v37 != (v4 >> 1) - v5)
  {
LABEL_142:
    swift_unknownObjectRelease_n();
    goto LABEL_112;
  }

  v1 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v1)
  {
    v1 = _swiftEmptyArrayStorage;
LABEL_119:
    swift_unknownObjectRelease();
  }

  return v1;
}

uint64_t sub_100542B14(unint64_t a1, double a2, double a3)
{
  v4 = sub_10076D39C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    result = sub_10077158C();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:
    sub_10076BD4C();
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D31C();

    return (*(v5 + 8))(v7, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_100542CB8(unint64_t a1)
{
  v2 = sub_10076C04C();
  v8[3] = v2;
  v8[4] = sub_100542DD8(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v3 = sub_10000DB7C(v8);
  (*(*(v2 - 8) + 104))(v3, enum case for Feature.voyager_bundles_2025A(_:), v2);
  LOBYTE(v2) = sub_10076C90C();
  sub_10000CD74(v8);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  if (a1 >> 62)
  {
    v4 = sub_10077158C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = sub_1007706EC();
  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  if (v4 <= 3)
  {
    return v5 & 1;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_100542DD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100542E20()
{
  v1 = v0;
  v27 = sub_10000A5D4(&qword_10095CE50, &unk_1007AA9B8);
  __chkstk_darwin(v27);
  v26 = &v24 - v2;
  v25 = sub_10000A5D4(&qword_10095CE38, &qword_1007AA9B0);
  __chkstk_darwin(v25);
  v3 = sub_10076771C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_iconStyle;
  v11 = enum case for Artwork.Style.roundedRect(_:);
  v12 = sub_10076BF6C();
  (*(*(v12 - 8) + 104))(v1 + v10, v11, v12);
  v13 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_titleLabel;
  if (qword_100940FC0 != -1)
  {
    swift_once();
  }

  v14 = sub_10076D3DC();
  v15 = sub_10000A61C(v14, qword_1009A1D38);
  v16 = *(v14 - 8);
  (*(v16 + 16))(v9, v15, v14);
  (*(v16 + 56))(v9, 0, 1, v14);
  (*(v4 + 104))(v6, enum case for DirectionalTextAlignment.none(_:), v3);
  v17 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v13) = sub_1007626AC();
  v18 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_itemStack;
  v19 = [objc_allocWithZone(sub_10000A5D4(&qword_10095CE70 &qword_1007AA9E0))];
  *&v19[qword_10095D510] = 0;
  *&v19[qword_10095D518] = 1;
  *&v19[qword_10095D520] = 0x4028000000000000;
  v19[qword_10095D528] = 1;
  *(v1 + v18) = v19;
  v20 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_screenshotStack;
  v21 = [objc_allocWithZone(sub_10000A5D4(&qword_10095CE78 &qword_1007AA9E8))];
  *&v21[qword_10095D510] = 0;
  *&v21[qword_10095D518] = 1;
  *&v21[qword_10095D520] = 0x4028000000000000;
  v21[qword_10095D528] = 1;
  *(v1 + v20) = v21;
  type metadata accessor for BundleChildView();
  sub_10076D4CC();
  sub_100071820(&qword_10095CE40, &qword_10095CE38, &qword_1007AA9B0, &protocol conformance descriptor for ViewRecycler<A>);
  sub_10076E18C();
  type metadata accessor for BorderedScreenshotView(0);
  sub_10076D4CC();
  sub_100071820(&qword_10095CE58, &qword_10095CE50, &unk_1007AA9B8, &protocol conformance descriptor for ViewRecycler<A>);
  sub_10076E18C();
  v22 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_gradientBlurView;
  *(v1 + v22) = [objc_allocWithZone(type metadata accessor for AppBundleGradientBackgroundView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v23 = OBJC_IVAR____TtC20ProductPageExtension10BundleView_backgroundArtworkView;
  sub_10075FD2C();
  *(v1 + v23) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_10076D3AC();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10054337C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_10075E11C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076674C();
  __chkstk_darwin(v9 - 8);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_10076C15C();
  v42 = *(v43 - 8);
  __chkstk_darwin(v43);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000A5D4(&qword_100950548, &unk_1007AAAE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v39 - v16;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = a3;
    v44 = a1;
    sub_10076999C();

    v21 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v17, 1, v21) == 1)
    {
      v23 = &qword_100950548;
      v24 = &unk_1007AAAE0;
      v25 = v17;
LABEL_11:
      sub_10000CFBC(v25, v23, v24);
      a3 = v20;
      goto LABEL_16;
    }

    sub_10076F4AC();
    (*(v22 + 8))(v17, v21);
    sub_100012498(&v50, v52);
    sub_10000A570(v52, v48);
    sub_10000A5D4(&qword_1009575A0, &unk_100784980);
    sub_10000A5D4(&qword_10095CFB0, &qword_1007AAB58);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      sub_10000CD74(v52);
      v23 = &qword_10095CFB8;
      v24 = &qword_1007AAB60;
      v25 = &v45;
      goto LABEL_11;
    }

    sub_100012498(&v45, &v50);
    sub_10000CF78(&v50, v51);
    a3 = v20;
    if (sub_10076163C())
    {
      sub_10075F63C();
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v27 = v41;
        v39 = v26;
        sub_10075F5FC();
        v28 = sub_10076C14C();
        (*(v42 + 8))(v27, v43);
        if ((v28 & 1) == 0)
        {
          sub_10000CD74(v52);

          goto LABEL_15;
        }

        sub_10000A570(v52, v48);
        sub_10076C84C();
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_10000CF78(&v50, v51);

          sub_10076164C();
          sub_100543CE4(v52, v40);
          sub_10076672C();

          sub_10000CD74(v52);
          v38 = sub_10076677C();
          (*(*(v38 - 8) + 56))(a3, 0, 1, v38);
          return sub_10000CD74(&v50);
        }
      }
    }

    sub_10000CD74(v52);
LABEL_15:
    sub_10000CD74(&v50);
  }

LABEL_16:
  v29 = swift_unknownObjectWeakLoadStrong();
  if (!v29)
  {
LABEL_29:
    v36 = sub_10076677C();
    return (*(*(v36 - 8) + 56))(a3, 1, 1, v36);
  }

  v30 = v29;
  sub_10075E0AC();
  sub_10075E08C();
  sub_10076999C();

  (*(v6 + 8))(v8, v5);
  v31 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v14, 1, v31) == 1)
  {
    sub_10000CFBC(v14, &qword_100950548, &unk_1007AAAE0);
    goto LABEL_29;
  }

  sub_10076F4AC();
  (*(v32 + 8))(v14, v31);
  sub_100012498(&v50, v52);
  sub_10000A570(v52, v48);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10000A5D4(&qword_10095CF98, &qword_1007AAB40);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    sub_10000CD74(v52);
    sub_10000CFBC(&v45, &qword_10095CFA0, &qword_1007AAB48);
    goto LABEL_29;
  }

  sub_100012498(&v45, &v50);
  sub_10000CF78(&v50, v51);
  sub_10075E09C();
  sub_10076819C();
  if (!v45)
  {
    sub_10000CD74(v52);
    sub_10000CFBC(&v45, &qword_10095CFA8, &qword_1007AAB50);
    sub_10000CD74(&v50);
    goto LABEL_29;
  }

  v48[0] = v45;
  v48[1] = v46;
  v49 = v47;
  sub_100016E2C(v48, &v45, &unk_1009505A0, &qword_1007B4690);
  sub_10075F63C();
  if (!swift_dynamicCastClass())
  {

    sub_10000CFBC(v48, &unk_1009505A0, &qword_1007B4690);
    sub_10000CD74(v52);
    sub_10000CFBC(&v45 + 8, &unk_1009434C0, &qword_100783F60);
LABEL_28:
    sub_10000CD74(&v50);
    goto LABEL_29;
  }

  sub_10000CFBC(&v45 + 8, &unk_1009434C0, &qword_100783F60);
  v33 = v41;
  sub_10075F5FC();
  v34 = sub_10076C14C();
  (*(v42 + 8))(v33, v43);
  if ((v34 & 1) == 0)
  {

    sub_10000CFBC(v48, &unk_1009505A0, &qword_1007B4690);
    sub_10000CD74(v52);
    goto LABEL_28;
  }

  sub_100016E2C(v48, &v45, &unk_1009505A0, &qword_1007B4690);

  sub_100543CE4(v52, v40);
  sub_10076672C();

  sub_10000CFBC(v48, &unk_1009505A0, &qword_1007B4690);
  sub_10000CD74(v52);
  v35 = sub_10076677C();
  (*(*(v35 - 8) + 56))(a3, 0, 1, v35);
  return sub_10000CD74(&v50);
}

uint64_t sub_100543CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000A570(a1, v8);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076BCAC();
  if (swift_dynamicCast() || (sub_100762BFC(), swift_dynamicCast()))
  {

    sub_10000CD74(v8);
    v3 = enum case for FlowPreviewDestination.ContentType.source(_:);
    v4 = sub_10076674C();
    return (*(*(v4 - 8) + 104))(a2, v3, v4);
  }

  else
  {
    v6 = enum case for FlowPreviewDestination.ContentType.flowDestination(_:);
    v7 = sub_10076674C();
    (*(*(v7 - 8) + 104))(a2, v6, v7);
    return sub_10000CD74(v8);
  }
}

uint64_t sub_100543E20(uint64_t a1, uint64_t a2)
{
  v38 = sub_10075E11C();
  v37 = *(v38 - 8);
  __chkstk_darwin(v38);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_100950548, &unk_1007AAAE0);
  __chkstk_darwin(v4 - 8);
  v36 = (&v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_7;
  }

  v17 = Strong;
  sub_10076999C();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
LABEL_7:
    v18 = &qword_100950548;
    v19 = &unk_1007AAAE0;
    v20 = v11;
LABEL_8:
    sub_10000CFBC(v20, v18, v19);
    goto LABEL_9;
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_10076F4AC();
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10000A5D4(&qword_10095CF88, &qword_1007AAB28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v13 + 8))(v15, v12);
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v18 = &qword_10095CF90;
    v19 = &unk_1007AAB30;
    v20 = &v41;
    goto LABEL_8;
  }

  sub_100012498(&v41, v44);
  sub_10076F4AC();
  sub_10076C84C();
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_10000CF78(v44, v45);
    v23 = sub_100765F7C();
    (*(v13 + 8))(v15, v12);
    goto LABEL_33;
  }

  (*(v13 + 8))(v15, v12);

  sub_10000CD74(v44);
LABEL_9:
  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
    (*(v13 + 56))(v8, 1, 1, v12);
    goto LABEL_16;
  }

  v22 = v21;
  sub_10075E0AC();
  sub_10075E08C();
  sub_10076999C();

  (*(v37 + 8))(v3, v38);
  if ((*(v13 + 48))(v8, 1, v12) == 1)
  {
LABEL_16:
    sub_10000CFBC(v8, &qword_100950548, &unk_1007AAAE0);
    goto LABEL_17;
  }

  sub_10000A5D4(&qword_10094AE68, &qword_100790A18);
  if (!swift_dynamicCast())
  {
LABEL_17:
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    goto LABEL_18;
  }

  if (!*(&v48 + 1))
  {
LABEL_18:
    sub_10000CFBC(&v47, &qword_10094AE60, &unk_100790A08);
    goto LABEL_19;
  }

  sub_100012498(&v47, v44);
  sub_10000CF78(v44, v45);
  sub_10075E09C();
  sub_100767EEC();
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10000A5D4(&qword_10095CF88, &qword_1007AAB28);
  if (swift_dynamicCast())
  {
    sub_100012498(v39, &v47);
    sub_10000CF78(&v47, *(&v48 + 1));
    v23 = sub_100765F7C();
    sub_10000CD74(&v47);
LABEL_33:
    sub_10000CD74(v44);
    return v23;
  }

  v40 = 0;
  memset(v39, 0, sizeof(v39));
  sub_10000CFBC(v39, &qword_10095CF90, &unk_1007AAB30);
  sub_10000CD74(v44);
LABEL_19:
  sub_10076A14C();
  sub_10076F63C();
  if (v44[0])
  {
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v25 = v24;
      v26 = v36;
      sub_10076999C();

      if ((*(v13 + 48))(v26, 1, v12) == 1)
      {

        v27 = &qword_100950548;
        v28 = &unk_1007AAAE0;
        v29 = v26;
LABEL_23:
        sub_10000CFBC(v29, v27, v28);
        return 0;
      }

      sub_10076F4AC();
      (*(v13 + 8))(v26, v12);
      sub_10000A5D4(&qword_1009575A0, &unk_100784980);
      v30 = sub_10076499C();
      if (swift_dynamicCast())
      {
        v31 = v47;
        v45 = v30;
        v46 = sub_100544E54(&qword_100948A38, 255, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
        v44[0] = v31;

        v32 = sub_10076A10C();
        sub_10000CD74(v44);
        if (v32)
        {
          sub_10076763C();
          sub_10000A5D4(&unk_10095CDA0, &qword_1007AA820);
          sub_10000A5D4(&qword_10095CF88, &qword_1007AAB28);
          if (swift_dynamicCast())
          {
            sub_100012498(&v41, &v47);
            sub_10000CF78(&v47, *(&v48 + 1));
            v33 = sub_100765F7C();

            sub_10000CD74(&v47);
            return v33;
          }

          v43 = 0;
          v41 = 0u;
          v42 = 0u;
          v27 = &qword_10095CF90;
          v28 = &unk_1007AAB30;
          v29 = &v41;
          goto LABEL_23;
        }
      }
    }
  }

  return 0;
}

id sub_100544698(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_1009499A0, &qword_1007848B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_1007621EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100952090, &unk_100784CD0);
  __chkstk_darwin(v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_10000A5D4(&qword_100950548, &unk_1007AAAE0);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v16 = Strong;
  v17 = v5;
  v18 = v6;
  v33 = a1;
  sub_10076999C();

  v19 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v14, 1, v19) == 1)
  {
    sub_10000CFBC(v14, &qword_100950548, &unk_1007AAAE0);
    v6 = v18;
    v5 = v17;
LABEL_4:
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    goto LABEL_5;
  }

  sub_10076F4AC();
  (*(v20 + 8))(v14, v19);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10000A5D4(&qword_100942F18, &unk_100788330);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    v6 = v18;
    v5 = v17;
    goto LABEL_5;
  }

  v6 = v18;
  v5 = v17;
  if (!*(&v35 + 1))
  {
LABEL_5:
    sub_10000CFBC(&v34, &qword_100942F20, &qword_100784D10);
    goto LABEL_6;
  }

  sub_100012498(&v34, v37);
  sub_10000CF78(v37, v37[3]);
  sub_1007670CC();
  v25 = sub_10076182C();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v11, 1, v25) == 1)
  {
    sub_10000CFBC(v11, &unk_100952090, &unk_100784CD0);
  }

  else
  {
    v31 = sub_10076180C();
    (*(v26 + 8))(v11, v25);
    if (v31)
    {
      if (qword_10093FBC0 != -1)
      {
        swift_once();
      }

      v32 = qword_10099DD30;
      sub_10000CD74(v37);
      return v32;
    }
  }

  sub_10000CD74(v37);
LABEL_6:
  v21 = swift_unknownObjectWeakLoadStrong();
  if (v21)
  {
    v22 = v21;
    sub_10075E0AC();
    sub_1007699BC();

    v23 = sub_10000A5D4(&unk_100946720, &qword_100784820);
    v24 = *(v23 - 8);
    if ((*(v24 + 48))(v4, 1, v23) == 1)
    {
      sub_10000CFBC(v4, &qword_1009499A0, &qword_1007848B0);
    }

    else
    {
      swift_getKeyPath();
      sub_10076F49C();

      (*(v24 + 8))(v4, v23);
      if ((*(v6 + 88))(v8, v5) == enum case for ShelfBackground.color(_:))
      {
        (*(v6 + 96))(v8, v5);
        v27 = *v8;
        v28 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
        v29 = sub_1007659CC();
        (*(*(v29 - 8) + 8))(&v8[v28], v29);
        return v27;
      }

      (*(v6 + 8))(v8, v5);
    }
  }

  return [objc_opt_self() clearColor];
}

uint64_t sub_100544CB4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

double sub_100544D24(uint64_t a1, uint64_t a2)
{
  sub_100544E54(&qword_10095CF80, a2, type metadata accessor for DiffableFlowPreviewPresenter, &unk_1007AAA6C);
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_100544D8C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  sub_100016E2C(a2, &v4, &unk_1009434C0, &qword_100783F60);

  sub_10076FDFC();
  return sub_10000CFBC(&v3, &unk_1009505A0, &qword_1007B4690);
}

uint64_t sub_100544E54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_100544E9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v5 - 8);
  v97 = &v81 - v6;
  v96 = sub_100768FEC();
  v93 = *(v96 - 8);
  __chkstk_darwin(v96);
  v91 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v94 = *(v8 - 8);
  v95 = v8;
  __chkstk_darwin(v8);
  v92 = &v81 - v9;
  v10 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v10 - 8);
  v90 = &v81 - v11;
  v12 = sub_10000A5D4(&unk_100962490, qword_10079E5A0);
  __chkstk_darwin(v12 - 8);
  v86 = &v81 - v13;
  v14 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v14 - 8);
  v85 = &v81 - v15;
  v16 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v16 - 8);
  v84 = &v81 - v17;
  v18 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v18 - 8);
  v83 = &v81 - v19;
  v20 = objc_opt_self();
  v88 = [v20 areAnimationsEnabled];
  v89 = v20;
  [v20 setAnimationsEnabled:0];
  v21 = sub_10075E7CC();
  v22 = sub_10075E7BC();
  v98 = a2;
  if (v21)
  {
    v23 = *&v2[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_inAppPurchaseView];
    sub_100760C4C();
    sub_10076F64C();

    sub_10076FC1C();
    sub_1006EC184(116.0, 116.0, v21, v23, *&v99[0]);

    v24 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_titleLabel];

    sub_10076BB6C();
    v26 = v25;

    if (v26)
    {
      v27 = sub_10076FF6C();
    }

    else
    {
      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
    v24 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_titleLabel];
  }

  [v24 setText:v27];

  v87 = v21;
  if (v22 && (, v28 = sub_10076BB6C(), v30 = v29, , v30))
  {
    v31 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel];
    v100._object = 0x80000001007ECF80;
    v100._countAndFlagsBits = 0xD00000000000001FLL;
    v102._countAndFlagsBits = 0;
    v102._object = 0xE000000000000000;
    sub_1007622EC(v100, v102);
    sub_10000A5D4(&qword_100966CF0, qword_100795350);
    v32 = v3;
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_100783DD0;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = sub_1000A9040();
    *(v33 + 32) = v28;
    *(v33 + 40) = v30;
    v3 = v32;
    sub_10076FFCC();

    v34 = sub_10076FF6C();

    [v31 setText:v34];

    v35 = *&v32[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel];
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_parentTitleLabel] setText:0];
    v35 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_subtitleLabel];
    if (!v22)
    {
      goto LABEL_12;
    }
  }

  sub_10076BA9C();
  v37 = v36;

  if (v37)
  {
    v38 = sub_10076FF6C();

    goto LABEL_13;
  }

LABEL_12:
  v38 = 0;
LABEL_13:
  [v35 setText:v38];

  v39 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_descriptionLabel];
  sub_10075E7AC();
  if (v40)
  {
    v41 = sub_10076FF6C();
  }

  else
  {
    v41 = 0;
  }

  [v39 setText:v41];

  if (v22 && (, sub_10076BBFC(), v43 = v42, , v43))
  {
    v44 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge];
    v45 = *&v44[OBJC_IVAR____TtC20ProductPageExtension18AgeRatingBadgeView_ageLabel];
    v46 = sub_10076FF6C();
    [v45 setText:v46];

    [v44 setNeedsLayout];
    [v44 setNeedsDisplay];

    [v44 setHidden:0];
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_ageRatingBadge] setHidden:1];
  }

  sub_10000A5D4(&qword_10095CFC0, &qword_1007AAB78);
  v47 = (sub_10000A5D4(&qword_100948C00, &qword_10078B5D0) - 8);
  v48 = (*(*v47 + 80) + 32) & ~*(*v47 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_100783DD0;
  v50 = v49 + v48;
  v51 = (v49 + v48 + v47[14]);
  v52 = enum case for OfferTitleType.standard(_:);
  v53 = sub_10076186C();
  (*(*(v53 - 8) + 104))(v50, v52, v53);
  v101._countAndFlagsBits = 0xD000000000000020;
  v101._object = 0x80000001007ECF50;
  v103._countAndFlagsBits = 0;
  v103._object = 0xE000000000000000;
  *v51 = sub_1007622EC(v101, v103);
  v51[1] = v54;
  sub_1000FD730(v49);
  swift_setDeallocating();
  sub_10000CFBC(v50, &qword_100948C00, &qword_10078B5D0);
  swift_deallocClassInstance();
  if (v22)
  {

    v55 = sub_10076BB3C();

    if (v55)
    {
      v56 = enum case for OfferStyle.colored(_:);
      v57 = sub_10075F78C();
      v58 = *(v57 - 8);
      v59 = *(v58 + 104);
      v82 = v3;
      v60 = v83;
      v59(v83, v56, v57);
      (*(v58 + 56))(v60, 0, 1, v57);
      v61 = sub_1007628DC();
      v62 = v84;
      (*(*(v61 - 8) + 56))(v84, 1, 1, v61);
      v63 = enum case for OfferTint.blue(_:);
      v64 = sub_10076C54C();
      v65 = *(v64 - 8);
      v66 = v85;
      (*(v65 + 104))(v85, v63, v64);
      (*(v65 + 56))(v66, 0, 1, v64);
      v67 = sub_10076201C();
      v68 = v86;
      (*(*(v67 - 8) + 56))(v86, 1, 1, v67);
      memset(v99, 0, 32);
      v69 = sub_100766A5C();

      sub_10000CFBC(v99, &unk_1009434C0, &qword_100783F60);
      sub_10000CFBC(v68, &unk_100962490, qword_10079E5A0);
      sub_10000CFBC(v66, &unk_100949290, &unk_10078BBF0);
      sub_10000CFBC(v62, &unk_1009492A0, &unk_10078BC00);
      v70 = v60;
      v3 = v82;
      sub_10000CFBC(v70, &unk_10094D210, &qword_10078DE20);
    }

    else
    {

      v69 = 0;
    }

    v73 = v98;
    v86 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_offerButton];

    v71 = sub_10076BA2C();

    v74 = v3;
    v72 = v69;
  }

  else
  {

    v71 = 0;
    v72 = 0;
    v86 = *&v3[OBJC_IVAR____TtC20ProductPageExtension34InstallPagePreInstallFreeOfferView_offerButton];
    v73 = v98;
    v74 = v3;
  }

  v75 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  v76 = v90;
  (*(*(v75 - 8) + 56))(v90, 1, 1, v75);
  v77 = v93;
  v78 = v96;
  (*(v93 + 104))(v91, enum case for OfferButtonSubtitlePosition.below(_:), v96);
  (*(v77 + 56))(v97, 1, 1, v78);
  sub_10033350C();
  v79 = v92;
  sub_10076759C();
  sub_1001F12C8(v72, v71, 0, v76, v79, v73, 0, 0);

  (*(v94 + 8))(v79, v95);
  sub_10000CFBC(v76, &unk_100946760, &unk_100787A20);
  [v74 setNeedsLayout];

  return [v89 setAnimationsEnabled:v88];
}

uint64_t sub_100545C00(uint64_t a1)
{
  result = sub_10076B2DC();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_100545CF8(uint64_t a1)
{
  v2 = v1;
  v4 = qword_10095D018;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = *(v5 + 16);

  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 32);
    while (v7 < *(v5 + 16))
    {
      ++v7;
      v9 = *v8;
      v8 += 2;
      [v9 removeFromSuperview];
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_5:

  *&v2[v4] = _swiftEmptyArrayStorage;

  v10 = qword_10095D030;
  swift_beginAccess();
  *&v2[v10] = _swiftEmptyArrayStorage;

  sub_100549088(_swiftEmptyArrayStorage);
  if (a1 < 0)
  {
LABEL_17:
    __break(1u);
    return;
  }

  if (a1)
  {
    type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    do
    {
      v12 = [objc_allocWithZone(ObjCClassFromMetadata) init];
      if (qword_100940848 != -1)
      {
        swift_once();
      }

      v13 = qword_10095CFE0;
      sub_10075FB8C();
      [*&v12[OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_headingPlaceholder] setTextColor:v13];
      [*&v12[OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_titlePlaceholder] setTextColor:v13];
      [*&v12[OBJC_IVAR____TtC20ProductPageExtension39ArcadeDownloadPackGameLockupPlaceholder_offerButtonPlaceholder] setBackgroundColor:v13];
      [v2 addSubview:v12];
      swift_beginAccess();
      v14 = *&v2[v4];
      v15 = v12;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v2[v4] = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_10049D6C8(0, v14[2] + 1, 1, v14);
        *&v2[v4] = v14;
      }

      v18 = v14[2];
      v17 = v14[3];
      if (v18 >= v17 >> 1)
      {
        v14 = sub_10049D6C8((v17 > 1), v18 + 1, 1, v14);
      }

      v19 = sub_10054CD84(&qword_10095D0B8, type metadata accessor for ArcadeDownloadPackGameLockupPlaceholder, &unk_10079BEC8);
      v14[2] = v18 + 1;
      v20 = &v14[2 * v18];
      v20[4] = v15;
      v20[5] = v19;
      *&v2[v4] = v14;
      swift_endAccess();

      --a1;
    }

    while (a1);
  }

  [*&v2[qword_10095D020] setHidden:1];
  [v2 setNeedsLayout];
}

void sub_100545FF4(unint64_t a1, uint64_t a2, int a3, void *a4)
{
  v130 = a4;
  LODWORD(ObjCClassFromMetadata) = a3;
  v118 = a2;
  v6 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v6 - 8);
  v110 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v114 = &v104 - v9;
  v117 = type metadata accessor for ArcadeDownloadPackGamesCardView.DownloadAllButtonConfiguration(0);
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v109 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v10;
  __chkstk_darwin(v11);
  v107 = &v104 - v12;
  v13 = sub_10076B96C();
  v132 = *(v13 - 8);
  v133 = v13;
  __chkstk_darwin(v13);
  v105 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v104 - v16;
  __chkstk_darwin(v17);
  v131 = &v104 - v18;
  v127 = sub_10076F9AC();
  v124 = *(v127 - 8);
  __chkstk_darwin(v127);
  v126 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&unk_100946800, &unk_1007AAD50);
  __chkstk_darwin(v20 - 8);
  v106 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v113 = &v104 - v23;
  __chkstk_darwin(v24);
  v26 = &v104 - v25;
  v128 = sub_10076B2DC();
  v27 = *(v128 - 1);
  __chkstk_darwin(v128);
  v123 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v104 - v30;
  v32 = qword_10095D018;
  swift_beginAccess();
  v129 = v4;
  v33 = *&v4[v32];
  v34 = *(v33 + 16);

  if (v34)
  {
    v35 = 0;
    v36 = (v33 + 32);
    while (v35 < *(v33 + 16))
    {
      ++v35;
      v37 = *v36;
      v36 += 2;
      [v37 removeFromSuperview];
      if (v34 == v35)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_24:
    v44 = sub_10077158C();
    if (!v44)
    {
      goto LABEL_25;
    }

    goto LABEL_10;
  }

LABEL_5:

  v34 = v129;
  *&v129[v32] = _swiftEmptyArrayStorage;

  v38 = qword_10095D030;
  swift_beginAccess();
  *&v34[v38] = a1;

  swift_weakAssign();
  v34[qword_10095D048] = ObjCClassFromMetadata & 1;
  sub_100016E2C(v118, v26, &unk_100946800, &unk_1007AAD50);
  v39 = *(v116 + 48);
  v40 = v117;
  v120 = v116 + 48;
  v119 = v39;
  if (v39(v26, 1, v117) == 1)
  {
    sub_10000CFBC(v26, &unk_100946800, &unk_1007AAD50);
    (v27)[13](v31, enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:), v128);
  }

  else
  {
    v41 = &v26[*(v40 + 20)];
    v42 = v123;
    v43 = v128;
    (v27)[2](v123, v41, v128);
    sub_10054CDCC(v26);
    (v27)[4](v31, v42, v43);
  }

  sub_1005473B8(v31);
  sub_100760C4C();
  v112 = sub_10076F64C();
  sub_10076FC1C();
  v128 = v135;
  v111 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v44 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v44)
  {
    goto LABEL_25;
  }

LABEL_10:
  type metadata accessor for TodayCardLockupView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v44 < 1)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v45 = 0;
  v122 = *&v34[qword_10095D010];
  v121 = a1 & 0xC000000000000001;
  v46 = (v132 + 8);
  v47 = (v124 + 8);
  v124 = a1;
  v123 = v44;
  do
  {
    if (v121)
    {
      v48 = sub_10077149C();
    }

    else
    {
      v48 = *(a1 + 8 * v45 + 32);
    }

    v49 = [objc_allocWithZone(ObjCClassFromMetadata) init];
    [v122 addSubview:v49];
    v50 = v131;
    sub_10076BB7C();
    v51 = sub_10076B92C();
    v53 = v52;
    (*v46)(v50, v133);
    v137 = &type metadata for String;
    v135 = v51;
    v136 = v53;
    memset(v134, 0, sizeof(v134));
    v54 = v126;
    sub_10076F99C();
    sub_10000CFBC(v134, &unk_1009434C0, &qword_100783F60);
    sub_10000CFBC(&v135, &unk_1009434C0, &qword_100783F60);
    sub_100770B9C();
    (*v47)(v54, v127);
    sub_10054AF10(v48, v128, v130);
    v55 = qword_100940848;
    v56 = *&v49[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
    if (v55 != -1)
    {
      swift_once();
    }

    v57 = qword_10095CFE0;
    sub_10075FBCC();

    swift_beginAccess();
    v58 = *&v34[v32];
    v59 = v49;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34[v32] = v58;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v58 = sub_10049D6C8(0, v58[2] + 1, 1, v58);
      *&v34[v32] = v58;
    }

    a1 = v124;
    v62 = v58[2];
    v61 = v58[3];
    if (v62 >= v61 >> 1)
    {
      v58 = sub_10049D6C8((v61 > 1), v62 + 1, 1, v58);
    }

    ++v45;
    v63 = sub_10054CD84(&qword_10095D0C8, type metadata accessor for TodayCardLockupView, &unk_1007B1974);
    v58[2] = v62 + 1;
    v64 = &v58[2 * v62];
    v64[4] = v59;
    v64[5] = v63;
    v34 = v129;
    *&v129[v32] = v58;
    swift_endAccess();
  }

  while (v123 != v45);
LABEL_25:
  v65 = v118;
  v66 = v113;
  sub_100016E2C(v118, v113, &unk_100946800, &unk_1007AAD50);
  v67 = v117;
  if (v119(v66, 1, v117) == 1)
  {
    sub_10000CFBC(v66, &unk_100946800, &unk_1007AAD50);
    v68 = &v34[qword_10095D028];
    *v68 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
    v68[1] = 0;
  }

  else
  {
    v69 = v66;
    v70 = v107;
    sub_10054CE28(v69, v107);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakDestroy();
    v71 = v109;
    sub_10054CE28(v70, v109);
    v72 = (*(v116 + 80) + 24) & ~*(v116 + 80);
    v73 = swift_allocObject();
    *(v73 + 16) = v130;
    sub_10054CE28(v71, v73 + v72);
    v74 = &v34[qword_10095D028];
    *v74 = sub_10054CF7C;
    v74[1] = v73;
  }

  v75 = v115;
  v76 = v114;
  v77 = *&v34[qword_10095D020];
  sub_10077113C();
  v78 = sub_10077111C();
  if ((*(*(v78 - 8) + 48))(v76, 1, v78))
  {
    sub_100016E2C(v76, v110, &unk_10095B400, &unk_100783F80);
    sub_10077114C();
    sub_10000CFBC(v76, &unk_10095B400, &unk_100783F80);
  }

  else
  {
    v79 = v106;
    sub_100016E2C(v65, v106, &unk_100946800, &unk_1007AAD50);
    if (v119(v79, 1, v67) == 1)
    {
      sub_10000CFBC(v79, &unk_100946800, &unk_1007AAD50);
    }

    else
    {

      sub_10054CDCC(v79);
      sub_10076B8EC();
    }

    sub_1007710EC();
    sub_10077114C();
  }

  v80 = sub_10076FF6C();
  [v77 setAccessibilityIdentifier:v80];

  [v77 setHidden:{v119(v65, 1, v67) == 1}];
  sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
  sub_10076FC1C();
  v130 = v135;
  v127 = v136;
  if (v111)
  {
    v81 = sub_10077158C();
  }

  else
  {
    v81 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v81)
  {
    v135 = _swiftEmptyArrayStorage;
    sub_1004BB9C0(0, v81 & ~(v81 >> 63), 0);
    if (v81 < 0)
    {
LABEL_62:
      __break(1u);
      return;
    }

    v82 = v135;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v81; ++i)
      {
        sub_10077149C();
        sub_10076BB7C();
        swift_unknownObjectRelease();
        v135 = v82;
        v85 = v82[2];
        v84 = v82[3];
        if (v85 >= v84 >> 1)
        {
          sub_1004BB9C0((v84 > 1), v85 + 1, 1);
          v82 = v135;
        }

        v82[2] = v85 + 1;
        (*(v132 + 32))(v82 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v85, v75, v133);
      }
    }

    else
    {
      v86 = a1 + 32;
      v87 = v105;
      do
      {

        sub_10076BB7C();

        v135 = v82;
        v89 = v82[2];
        v88 = v82[3];
        if (v89 >= v88 >> 1)
        {
          sub_1004BB9C0((v88 > 1), v89 + 1, 1);
          v82 = v135;
        }

        v82[2] = v89 + 1;
        (*(v132 + 32))(v82 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v89, v87, v133);
        v86 += 8;
        --v81;
      }

      while (v81);
    }

    v34 = v129;
  }

  else
  {
    v82 = _swiftEmptyArrayStorage;
  }

  v90 = v82[2];
  if (v90)
  {
    v135 = _swiftEmptyArrayStorage;
    swift_unknownObjectRetain();
    sub_1004BB9A0(0, v90, 0);
    v91 = v132;
    v126 = v82 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v92 = v135;
    ObjCClassFromMetadata = swift_getObjectType();
    v93 = 0;
    v124 = v91 + 16;
    v123 = (v91 + 8);
    while (v93 < v82[2])
    {
      v94 = v90;
      v95 = v131;
      v96 = v132;
      v97 = v133;
      (*(v132 + 16))(v131, &v126[*(v132 + 72) * v93], v133);
      v98 = sub_10075EE2C();
      v100 = v99;
      (*(v96 + 8))(v95, v97);
      v135 = v92;
      v102 = v92[2];
      v101 = v92[3];
      if (v102 >= v101 >> 1)
      {
        sub_1004BB9A0((v101 > 1), v102 + 1, 1);
        v92 = v135;
      }

      ++v93;
      v92[2] = v102 + 1;
      v103 = &v92[2 * v102];
      v103[4] = v98;
      v103[5] = v100;
      v90 = v94;
      if (v94 == v93)
      {
        swift_unknownObjectRelease();

        v34 = v129;
        goto LABEL_59;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  v92 = _swiftEmptyArrayStorage;
LABEL_59:
  sub_100549088(v92);
  [v34 setNeedsLayout];

  swift_unknownObjectRelease();
}

id sub_100547074()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  qword_10095CFC8 = result;
  return result;
}

id sub_1005470C4()
{
  result = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.450980392 blue:0.333333333 alpha:1.0];
  qword_10095CFD0 = result;
  return result;
}

id sub_100547114()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.764705882 green:0.133333333 blue:0.180392157 alpha:1.0];
  qword_10095CFD8 = result;
  return result;
}

id sub_10054718C()
{
  result = [objc_opt_self() whiteColor];
  qword_10095CFE8 = result;
  return result;
}

void sub_100547200(double a1, uint64_t a2, SEL *a3, void *a4)
{
  v6 = [objc_opt_self() *a3];
  v7 = [v6 colorWithAlphaComponent:a1];

  *a4 = v7;
}

uint64_t (*sub_10054727C(uint64_t a1))(void *a1)
{
  v3 = sub_10076B2DC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  return sub_10054D08C;
}

uint64_t sub_1005473B8(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = qword_10095D000;
  swift_beginAccess();
  v5 = sub_10076B2DC();
  v6 = *(v5 - 8);
  (*(v6 + 24))(&v1[v4], a1, v5);
  swift_endAccess();
  v7 = *&v1[qword_10095D020];
  v11[4] = sub_10054727C(&v1[v4]);
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100177EA0;
  v11[3] = &unk_100899520;
  v9 = _Block_copy(v11);

  [v7 setConfigurationUpdateHandler:v9];
  _Block_release(v9);
  [v2 setNeedsLayout];
  return (*(v6 + 8))(a1, v5);
}

char *sub_100547534(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = qword_10095D000;
  v14 = enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:);
  v15 = sub_10076B2DC();
  (*(*(v15 - 8) + 104))(&v4[v13], v14, v15);
  v16 = &v4[qword_1009A07B8];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  v17 = qword_10095D008;
  *&v4[v17] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v18 = qword_10095D010;
  *&v4[v18] = [objc_allocWithZone(UIView) init];
  *&v4[qword_10095D018] = _swiftEmptyArrayStorage;
  v19 = qword_10095D020;
  *&v4[v19] = [objc_opt_self() buttonWithType:0];
  v20 = &v4[qword_10095D028];
  *v20 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  v20[1] = 0;
  *&v4[qword_10095D030] = _swiftEmptyArrayStorage;
  swift_weakInit();
  *&v4[qword_10095D040] = _swiftEmptyArrayStorage;
  v4[qword_10095D048] = 0;
  *&v4[qword_10095D050] = 0;
  v4[qword_1009A07C0] = 0;
  v21 = &v4[qword_10095D058];
  *v21 = 0;
  v21[8] = 1;
  v41.receiver = v4;
  v41.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v41, "initWithFrame:", a1, a2, a3, a4);
  [v22 _setCornerRadius:20.0];
  v23 = v22;
  [v23 setClipsToBounds:1];
  v24 = qword_10095D008;
  [v23 addSubview:*&v23[qword_10095D008]];
  [v23 addSubview:*&v23[qword_10095D010]];
  v25 = qword_10095D020;
  [v23 addSubview:*&v23[qword_10095D020]];
  v26 = *&v23[v24];
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100785D70;
  v28 = qword_100940838;
  v29 = v26;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = qword_10095CFD0;
  *(v27 + 32) = qword_10095CFD0;
  v31 = qword_100940840;
  v32 = v30;
  if (v31 != -1)
  {
    swift_once();
  }

  v33 = qword_10095CFD8;
  *(v27 + 40) = qword_10095CFD8;
  *&v29[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = v27;
  v34 = v33;

  sub_1001C05B8();

  v35 = *&v23[v25];
  [v35 addTarget:v23 action:"didTapDownloadAllButton" forControlEvents:64];

  v36 = *&v23[v25];
  sub_10077110C();
  v37 = sub_10077111C();
  (*(*(v37 - 8) + 56))(v12, 0, 1, v37);
  sub_10077114C();

  v38 = [*&v23[v25] layer];
  [v38 setCompositingFilter:kCAFilterPlusL];

  [*&v23[v25] setOverrideUserInterfaceStyle:2];
  v39 = [v23 layer];

  [v39 setAllowsGroupBlending:0];
  [*&v23[v25] setHidden:1];

  return v23;
}

void sub_100547A58()
{
  v1 = qword_10095D000;
  v2 = sub_10076B2DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000CFBC(v0 + qword_1009A07B8, &qword_10095D0E0, &qword_1007AAD70);

  swift_weakDestroy();

  v3 = *(v0 + qword_10095D050);
}

void sub_100547B74()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[qword_10095D040];
  v3 = *(v2 + 16);

  if (v3)
  {
    v4 = 0;
    v5 = v2 + 40;
    while (v4 < *(v2 + 16))
    {
      ++v4;
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_10075ED0C();
      swift_unknownObjectRelease();
      v5 += 16;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    v6.receiver = v0;
    v6.super_class = ObjectType;
    objc_msgSendSuper2(&v6, "dealloc");
  }
}

void sub_100547C80(uint64_t a1)
{
  v2 = qword_10095D000;
  v3 = sub_10076B2DC();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  sub_10000CFBC(a1 + qword_1009A07B8, &qword_10095D0E0, &qword_1007AAD70);

  swift_weakDestroy();

  v4 = *(a1 + qword_10095D050);
}

void sub_100547DA0()
{
  v1 = sub_10075EBAC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v57 = &v37 - v6;
  v7 = sub_10000A5D4(&qword_100959B68, &qword_1007AAD30);
  v55 = *(v7 - 8);
  v56 = v7;
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  v10 = qword_10095D040;
  v58 = v0;
  v11 = *(v0 + qword_10095D040);
  v12 = *(v11 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (!v12)
  {
    goto LABEL_29;
  }

  v44 = qword_10095D040;
  v59 = _swiftEmptyArrayStorage;

  sub_1004BB960(0, v12, 0);
  v13 = v59;
  v54 = (v2 + 32);
  v53 = (v2 + 88);
  v52 = enum case for LegacyAppState.waiting(_:);
  v49 = enum case for LegacyAppState.updatable(_:);
  v50 = enum case for LegacyAppState.purchased(_:);
  v45 = enum case for LegacyAppState.paused(_:);
  v46 = enum case for LegacyAppState.downloadable(_:);
  v41 = enum case for LegacyAppState.installing(_:);
  v42 = enum case for LegacyAppState.downloading(_:);
  v39 = enum case for LegacyAppState.buyable(_:);
  v40 = enum case for LegacyAppState.openable(_:);
  v47 = (v2 + 8);
  v38 = enum case for LegacyAppState.installed(_:);
  v51 = (v2 + 96);
  v43 = v11;
  v14 = v11 + 40;
  v37 = enum case for LegacyAppState.unknown(_:);
  v48 = enum case for PurchaseType.preorder(_:);
  v15 = v57;
  do
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10075ED4C();
    sub_10075ED1C();
    swift_unknownObjectRelease();
    (*v54)(v4, v15, v1);
    v16 = (*v53)(v4, v1);
    if (v16 == v52)
    {
      (*v51)(v4, v1);
      v17 = sub_1007627AC();
LABEL_5:
      (*(*(v17 - 8) + 8))(v4, v17);
LABEL_6:
      v18 = 0;
      goto LABEL_14;
    }

    if (v16 == v50)
    {
      (*v51)(v4, v1);
      v19 = sub_10076093C();
      v20 = *(v19 - 8);
      v21 = (*(v20 + 88))(v4, v19);
      if (v21 != v48)
      {
        (*(v20 + 8))(v4, v19);
        goto LABEL_6;
      }
    }

    else if (v16 == v49 || v16 == v46)
    {
      (*v47)(v4, v1);
    }

    else if (v16 == v45)
    {
      (*v51)(v4, v1);
      v24 = sub_10075EB1C();
      (*(*(v24 - 8) + 8))(v4, v24);
    }

    else
    {
      if (v16 == v42 || v16 == v41)
      {
        (*v51)(v4, v1);
        v17 = sub_10075EB1C();
        goto LABEL_5;
      }

      if (v16 == v40)
      {
        (*v51)(v4, v1);

        v17 = sub_100764E5C();
        goto LABEL_5;
      }

      if (v16 != v39)
      {
        if (v16 == v38)
        {
          goto LABEL_6;
        }

        if (v16 != v37)
        {
          (*v47)(v4, v1);
          goto LABEL_6;
        }
      }
    }

    v18 = 1;
LABEL_14:
    v9[*(v56 + 48)] = v18;
    v59 = v13;
    v23 = v13[2];
    v22 = v13[3];
    if (v23 >= v22 >> 1)
    {
      sub_1004BB960((v22 > 1), v23 + 1, 1);
      v13 = v59;
    }

    v13[2] = v23 + 1;
    sub_10054C6A4(v9, v13 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v23);
    v14 += 16;
    --v12;
  }

  while (v12);

  v10 = v44;
LABEL_29:
  if (v13[2])
  {
    sub_10000A5D4(&qword_10094E818, &qword_100796EF0);
    v25 = sub_1007715DC();
  }

  else
  {
    v25 = _swiftEmptyDictionarySingleton;
  }

  v59 = v25;

  sub_10054C714(v26, 1, &v59);
  v27 = swift_allocObject();

  *(v27 + 16) = v59;
  v28 = swift_allocObject();
  v29 = v58;
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  *(v30 + 16) = v27;
  *(v30 + 24) = v28;

  sub_100548908(v31, v28);

  v32 = *(v29 + v10);
  v33 = *(v32 + 16);

  if (v33)
  {
    v34 = 0;
    v35 = v32 + 40;
    while (v34 < *(v32 + 16))
    {
      ++v34;
      swift_getObjectType();
      v36 = swift_allocObject();
      v36[2] = v27;
      v36[3] = sub_10054CD10;
      v36[4] = v30;

      swift_unknownObjectRetain();

      sub_10075ECEC();
      swift_unknownObjectRelease();

      v35 += 16;
      if (v33 == v34)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_36:
  }
}

uint64_t sub_100548568()
{
  v1 = v0;
  v2 = sub_10075EBAC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for LegacyAppState.waiting(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = sub_1007627AC();
LABEL_3:
    (*(*(v8 - 8) + 8))(v6, v8);
    return 0;
  }

  if (v7 == enum case for LegacyAppState.purchased(_:))
  {
    (*(v3 + 96))(v6, v2);
    v10 = sub_10076093C();
    v11 = *(v10 - 8);
    if ((*(v11 + 88))(v6, v10) != enum case for PurchaseType.preorder(_:))
    {
      (*(v11 + 8))(v6, v10);
      return 0;
    }
  }

  else if (v7 == enum case for LegacyAppState.updatable(_:) || v7 == enum case for LegacyAppState.downloadable(_:))
  {
    (*(v3 + 8))(v6, v2);
  }

  else if (v7 == enum case for LegacyAppState.paused(_:))
  {
    (*(v3 + 96))(v6, v2);
    v12 = sub_10075EB1C();
    (*(*(v12 - 8) + 8))(v6, v12);
  }

  else
  {
    if (v7 == enum case for LegacyAppState.downloading(_:) || v7 == enum case for LegacyAppState.installing(_:))
    {
      (*(v3 + 96))(v6, v2);
      v8 = sub_10075EB1C();
      goto LABEL_3;
    }

    if (v7 == enum case for LegacyAppState.openable(_:))
    {
      (*(v3 + 96))(v6, v2);

      v8 = sub_100764E5C();
      goto LABEL_3;
    }

    if (v7 != enum case for LegacyAppState.buyable(_:))
    {
      if (v7 == enum case for LegacyAppState.installed(_:))
      {
        return 0;
      }

      if (v7 != enum case for LegacyAppState.unknown(_:))
      {
        (*(v3 + 8))(v6, v2);
        return 0;
      }
    }
  }

  return 1;
}

void sub_100548908(uint64_t a1, uint64_t a2)
{
  v53[1] = a2;
  v62 = sub_10000A5D4(&qword_10095D0C0, &qword_1007AAD38);
  __chkstk_darwin(v62);
  v57 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v60 = v53 - v5;
  __chkstk_darwin(v6);
  v59 = v53 - v7;
  __chkstk_darwin(v8);
  v58 = v53 - v9;
  swift_beginAccess();
  v54 = a1;
  v10 = *(a1 + 16);
  v11 = *(v10 + 64);
  v56 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v55 = (v12 + 63) >> 6;
  v61 = v10;
  swift_bridgeObjectRetain_n();
  v15 = 0;
  v16 = v59;
  while (v14)
  {
    v17 = v15;
LABEL_10:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = v18 | (v17 << 6);
    v20 = v61;
    v21 = *(v61 + 48);
    v22 = sub_10076B96C();
    v23 = *(v22 - 8);
    v24 = v58;
    (*(v23 + 16))(v58, v21 + *(v23 + 72) * v19, v22);
    v25 = *(*(v20 + 56) + v19);
    v26 = v62;
    *(v24 + *(v62 + 48)) = v25;
    sub_100016E2C(v24, v16, &qword_10095D0C0, &qword_1007AAD38);
    v27 = *(v26 + 48);
    LOBYTE(v21) = *(v16 + v27);
    v28 = v60;
    (*(v23 + 32))(v60, v16, v22);
    *(v28 + v27) = v21;
    sub_10000CFBC(v28, &qword_10095D0C0, &qword_1007AAD38);
    sub_10000CFBC(v24, &qword_10095D0C0, &qword_1007AAD38);
    if ((v21 & 1) == 0)
    {
      v29 = 1;
LABEL_13:

      v30 = v54;
      swift_beginAccess();
      v31 = *(v30 + 16);
      v32 = 1 << *(v31 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v34 = v33 & *(v31 + 64);
      v35 = (v32 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v36 = 0;
      while (v34)
      {
        v37 = v36;
LABEL_22:
        v38 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
        v39 = v38 | (v37 << 6);
        v40 = *(v31 + 48);
        v41 = sub_10076B96C();
        v42 = *(v41 - 8);
        v43 = v40 + *(v42 + 72) * v39;
        v44 = v57;
        (*(v42 + 16))(v57, v43, v41);
        LODWORD(v39) = *(*(v31 + 56) + v39);
        *(v44 + *(v62 + 48)) = v39;
        sub_10000CFBC(v44, &qword_10095D0C0, &qword_1007AAD38);
        if (v39 == 1)
        {
          v45 = 1;
LABEL_25:

          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v47 = Strong;
            v48 = *(Strong + qword_10095D020);

            [v48 setEnabled:v45];
          }

          swift_beginAccess();
          v49 = swift_unknownObjectWeakLoadStrong();
          if (v49)
          {
            v50 = v49;
            v51 = v49 + qword_1009A07B8;
            swift_beginAccess();
            if (*(v51 + 24))
            {
              sub_10000A570(v51, v63);

              sub_10000CF78(v63, v63[3]);
              if (v45)
              {
                v52 = 1;
              }

              else
              {
                v52 = 2;
              }

              if (!v29)
              {
                v52 = 0;
              }

              sub_100615278(v52);
              sub_10000CD74(v63);
            }

            else
            {
            }
          }

          return;
        }
      }

      while (1)
      {
        v37 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_38;
        }

        if (v37 >= v35)
        {
          v45 = 0;
          goto LABEL_25;
        }

        v34 = *(v31 + 64 + 8 * v37);
        ++v36;
        if (v34)
        {
          v36 = v37;
          goto LABEL_22;
        }
      }
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v55)
    {
      v29 = 0;
      goto LABEL_13;
    }

    v14 = *(v56 + 8 * v17);
    ++v15;
    if (v14)
    {
      v15 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_100548E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v18 = a5;
  v19 = a4;
  v6 = sub_10075EBAC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076B96C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10075ED4C();
  sub_10075ED1C();
  v14 = sub_100548568();
  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(a3 + 16);
  *(a3 + 16) = 0x8000000000000000;
  sub_10024B230(v14 & 1, v13, isUniquelyReferenced_nonNull_native);
  (*(v11 + 8))(v13, v10);
  *(a3 + 16) = v20;
  v16 = swift_endAccess();
  return v19(v16);
}

void sub_100549088(uint64_t a1)
{
  v3 = qword_10095D040;
  v4 = *(v1 + qword_10095D040);
  v5 = *(v4 + 16);

  if (v5)
  {
    v6 = 0;
    v7 = v4 + 40;
    while (v6 < *(v4 + 16))
    {
      ++v6;
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_10075ED0C();
      swift_unknownObjectRelease();
      v7 += 16;
      if (v5 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    *(v1 + v3) = a1;

    sub_100547DA0();
  }
}

uint64_t sub_100549164(void *a1, uint64_t a2)
{
  v70 = a2;
  v3 = sub_10000A5D4(&qword_10095D0D0, &unk_1007AAD60);
  __chkstk_darwin(v3 - 8);
  v5 = &v53[-v4];
  v6 = sub_10076E4AC();
  v67 = *(v6 - 8);
  __chkstk_darwin(v6);
  v66 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v69 = &v53[-v9];
  v10 = sub_10000A5D4(&unk_10095E850, &qword_10078B130);
  __chkstk_darwin(v10 - 8);
  v12 = &v53[-v11];
  v63 = sub_10077107C();
  v61 = *(v63 - 1);
  __chkstk_darwin(v63);
  v62 = &v53[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_10076B2DC();
  v68 = *(v14 - 8);
  __chkstk_darwin(v14);
  v64 = &v53[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v53[-v17];
  v19 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v19 - 8);
  v65 = &v53[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v23 = &v53[-v22];
  v24 = sub_10077111C();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v53[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10077113C();
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    return sub_10000CFBC(v23, &unk_10095B400, &unk_100783F80);
  }

  v58 = v12;
  (*(v25 + 32))(v27, v23, v24);
  v29 = [a1 state];
  v59 = v5;
  v60 = v6;
  if (v29 == 2)
  {
    if (qword_100940860 != -1)
    {
      swift_once();
    }

    v32 = sub_100770E2C();
    v33 = qword_100940858;
    v57 = v32;
    if (v33 != -1)
    {
      swift_once();
    }

    v34 = &qword_10095CFF0;
  }

  else
  {
    if (v29 == 1)
    {
      if (qword_100940860 != -1)
      {
        swift_once();
      }

      v30 = sub_100770E2C();
      v31 = qword_100940850;
    }

    else
    {
      if (qword_100940860 != -1)
      {
        swift_once();
      }

      v31 = qword_100940850;
      v30 = qword_10095CFF8;
    }

    v57 = v30;
    if (v31 != -1)
    {
      swift_once();
    }

    v34 = &qword_10095CFE8;
  }

  v35 = *v34;
  v36 = v68;
  v56 = *(v68 + 16);
  v56(v18, v70, v14);
  v55 = *(v36 + 88);
  v37 = v55(v18, v14);
  v54 = enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:);
  if (v37 == enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:))
  {
    v38 = v35;
    sub_100770FEC();
  }

  else if (v37 == enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.withinLockups(_:))
  {
    (*(v61 + 104))(v62, enum case for UIButton.Configuration.Size.large(_:), v63);
    v39 = v35;
    sub_100770F8C();
  }

  else
  {
    v63 = *(v68 + 8);
    v40 = v35;
    (v63)(v18, v14);
  }

  v41 = swift_allocObject();
  v63 = v35;
  *(v41 + 16) = v35;
  *(v41 + 24) = a1;
  a1;
  v42 = v58;
  sub_10076E8AC();
  v43 = sub_10076E89C();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  sub_10077106C();
  v44 = v69;
  sub_100770F6C();
  v45 = v64;
  v56(v64, v70, v14);
  v46 = v55(v45, v14);
  if (v46 == v54)
  {
    sub_10076E44C();
    v47 = v60;
    v48 = v67;
    v49 = v57;
  }

  else
  {
    v47 = v60;
    v48 = v67;
    v49 = v57;
    if (v46 == enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.withinLockups(_:))
    {
      v44 = v69;
      sub_10076E44C();
    }

    else
    {
      (*(v68 + 8))(v45, v14);
      v44 = v69;
    }
  }

  *(swift_allocObject() + 16) = v49;
  v50 = v59;
  sub_10076E6AC();
  v51 = sub_10076E69C();
  (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
  sub_10076E48C();
  (*(v48 + 16))(v66, v44, v47);
  sub_100770F7C();
  v52 = v65;
  (*(v25 + 16))(v65, v27, v24);
  (*(v25 + 56))(v52, 0, 1, v24);
  sub_10077114C();

  (*(v48 + 8))(v44, v47);
  return (*(v25 + 8))(v27, v24);
}

uint64_t sub_100549A5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10075D9EC();
  (*(*(v8 - 8) + 16))(a4, a1, v8);
  sub_10037C8FC();
  v9 = a2;
  sub_10075D9FC();
  sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_100941088 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  sub_10000A61C(v10, qword_1009A1F90);
  v11 = [a3 traitCollection];
  sub_100770B3C();

  sub_100016BD0();
  sub_10075D9FC();
  if (qword_10093F688 != -1)
  {
    swift_once();
  }

  v12 = qword_10099CDE0;
  sub_10054D1B0();
  v13 = v12;
  return sub_10075D9FC();
}

uint64_t sub_100549C1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_10076D58C();
  v72 = *(v4 - 8);
  v73 = v4;
  __chkstk_darwin(v4);
  v69 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = &v56 - v7;
  v62 = sub_10076DFEC();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v59 = (&v56 - v10);
  __chkstk_darwin(v11);
  v66 = (&v56 - v12);
  __chkstk_darwin(v13);
  v58 = (&v56 - v14);
  v65 = sub_10076DFFC();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v63 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_10076B2DC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v56 - v21;
  v68 = sub_10076D65C();
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D63C();
  swift_beginAccess();

  v26 = sub_10016E87C(v25);

  v27 = qword_10095D000;
  swift_beginAccess();
  v28 = *(v17 + 16);
  v74 = v2;
  v28(v22, v2 + v27, v16);
  (*(v17 + 104))(v19, enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.withinLockups(_:), v16);
  sub_10054CD84(&qword_10095D0E8, &type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle, &protocol conformance descriptor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle);
  sub_10077018C();
  sub_10077018C();
  if (v75 == v78)
  {
    v29 = *(v17 + 8);
    v29(v19, v16);
    v29(v22, v16);
  }

  else
  {
    LODWORD(v57) = sub_10077167C();
    v30 = *(v17 + 8);
    v30(v19, v16);
    v30(v22, v16);

    if ((v57 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v31 = *(v74 + qword_10095D020);
  if ([v31 isHidden])
  {
    goto LABEL_9;
  }

  v76 = sub_100016F40(0, &qword_100947240, UIButton_ptr);
  v77 = &protocol witness table for UIButton;
  v57 = v31;
  *&v75 = v31;
  v32 = v58;
  *v58 = sub_10007C300;
  v32[1] = 0;
  v33 = *(v60 + 104);
  v34 = v62;
  v33(v32, enum case for Resize.Rule.recalculated(_:), v62);
  v35 = enum case for Resize.Rule.unchanged(_:);
  v33(v66, enum case for Resize.Rule.unchanged(_:), v34);
  v33(v59, v35, v34);
  v33(v61, v35, v34);
  v36 = v57;
  v37 = v63;
  sub_10076E00C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v38 = v65;
    v39 = v64;
    v41 = v26[2];
    v40 = v26[3];
    if (v41 >= v40 >> 1)
    {
      v26 = sub_10049E9D0((v40 > 1), v41 + 1, 1, v26);
    }

    v76 = v38;
    v77 = &protocol witness table for Resize;
    v42 = sub_10000DB7C(&v75);
    (*(v39 + 16))(v42, v37, v38);
    v26[2] = v41 + 1;
    sub_100012498(&v75, &v26[5 * v41 + 4]);
    (*(v39 + 8))(v37, v38);
LABEL_9:
    v43 = v26[2];
    if (!v43)
    {
      break;
    }

    v44 = 0;
    v45 = (v26 + 4);
    v37 = &v75;
    while (v44 < v26[2])
    {
      *&v75 = v44;
      sub_10000A570(v45, &v75 + 8);
      sub_10054A57C(v44, &v75 + 8, v24, v43, ObjectType);
      sub_10000CFBC(&v75, &qword_10095D0F0, &qword_1007AAD78);
      v45 += 40;
      if (v43 == ++v44)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    v26 = sub_10049E9D0(0, v26[2] + 1, 1, v26);
  }

LABEL_13:

  v46 = v69;
  sub_10076D55C();
  *&v78 = *(v74 + qword_10095D010);
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  sub_10076D2DC();
  v47 = v70;
  sub_10076D57C();
  sub_10000CD74(&v75);
  v48 = *(v72 + 8);
  v49 = v46;
  v50 = v73;
  v48(v49, v73);
  v51 = v68;
  v76 = v68;
  v77 = &protocol witness table for VerticalStack;
  v52 = sub_10000DB7C(&v75);
  v53 = v67;
  (*(v67 + 16))(v52, v24, v51);
  v54 = v71;
  v71[3] = v50;
  v54[4] = &protocol witness table for DisjointStack;
  sub_10000DB7C(v54);
  sub_10076D57C();
  v48(v47, v50);
  sub_10000CD74(&v75);
  return (*(v53 + 8))(v24, v51);
}

uint64_t sub_10054A57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10000A570(a2, &v10);
  v11[3] = sub_10076E04C();
  v11[4] = &protocol witness table for Margins;
  sub_10000DB7C(v11);
  sub_10076E03C();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a4;
  v8[4] = a5;
  sub_10076D5FC();

  return sub_10000CD74(v11);
}

uint64_t sub_10054A658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10076D5BC();
  if (!__OFSUB__(a3, 1))
  {
    return sub_10076D5CC();
  }

  __break(1u);
  return result;
}

uint64_t sub_10054A6F4()
{
  v0 = sub_10076D54C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D67C();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  v6(v3, enum case for DisjointStack.EdgePosition.anchored(_:), v0);
  sub_10076D53C();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  v6(v3, v5, v0);
  sub_10076D50C();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  v6(v3, v5, v0);
  sub_10076D4FC();
  v3[3] = v4;
  v3[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v3);
  sub_10076D66C();
  v6(v3, v5, v0);
  sub_10076D51C();
  return sub_10076D52C();
}

uint64_t sub_10054A8CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v44 = sub_10076DFEC();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v46 = (&v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v45 = (&v39 - v5);
  __chkstk_darwin(v6);
  v43 = (&v39 - v7);
  __chkstk_darwin(v8);
  v41 = (&v39 - v9);
  v10 = sub_10076B2DC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v17 = sub_10076D65C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v39 - v22;
  sub_10076D63C();
  sub_100549C1C(v53);
  sub_10076D64C();
  sub_10000CD74(v53);
  v24 = *(v18 + 8);
  v47 = v17;
  v24(v20, v17);
  v25 = *(v1 + qword_10095D020);
  if (([v25 isHidden] & 1) == 0)
  {
    v26 = qword_10095D000;
    swift_beginAccess();
    (*(v11 + 16))(v16, v2 + v26, v10);
    (*(v11 + 104))(v13, enum case for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle.chin(_:), v10);
    sub_10054CD84(&qword_10095D0E8, &type metadata accessor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle, &protocol conformance descriptor for ArcadeDownloadPackSuggestionsPageGetAllButtonStyle);
    sub_10077018C();
    sub_10077018C();
    if (v53[0] == v49 && v53[1] == v50)
    {
      v27 = *(v11 + 8);
      v27(v13, v10);
      v27(v16, v10);

LABEL_6:
      v51 = sub_100016F40(0, &qword_100947240, UIButton_ptr);
      v52 = &protocol witness table for UIButton;
      v49 = v25;
      v40 = v25;
      v29 = v41;
      v30 = v42;
      *v41 = sub_10007C300;
      v29[1] = 0;
      v31 = *(v30 + 104);
      v32 = v44;
      v31(v29, enum case for Resize.Rule.recalculated(_:), v44);
      v33 = enum case for Resize.Rule.unchanged(_:);
      v31(v43, enum case for Resize.Rule.unchanged(_:), v32);
      v31(v45, v33, v32);
      v31(v46, v33, v32);
      v53[3] = sub_10076DFFC();
      v53[4] = &protocol witness table for Resize;
      sub_10000DB7C(v53);
      v34 = v40;
      sub_10076E00C();
      sub_10076D5FC();
      sub_10000CD74(v53);
      goto LABEL_7;
    }

    LODWORD(v40) = sub_10077167C();
    v28 = *(v11 + 8);
    v28(v13, v10);
    v28(v16, v10);

    if (v40)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  v36 = v47;
  v35 = v48;
  v48[3] = v47;
  v35[4] = &protocol witness table for VerticalStack;
  v37 = sub_10000DB7C(v35);
  return (*(v18 + 32))(v37, v23, v36);
}

id sub_10054AE94()
{
  sub_10076D9FC();
  v1 = sub_10076DA0C();
  v1();
  v2 = *&v0[qword_10095D008];
  [v0 bounds];

  return [v2 setFrame:?];
}

void sub_10054AF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a2;
  v45 = a3;
  v46 = a1;
  v5 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v5 - 8);
  v7 = &v44 - v6;
  v8 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v44 - v9);
  v11 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v11 - 8);
  v13 = &v44 - v12;
  v14 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v17 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v17 - 8);
  v19 = &v44 - v18;
  v20 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = sub_10075F78C();
  (*(*(v21 - 8) + 56))(v16, 1, 1, v21);
  v22 = sub_1007628DC();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  if (qword_100940860 != -1)
  {
    swift_once();
  }

  v23 = qword_100940850;
  v24 = qword_10095CFF8;
  if (v23 != -1)
  {
    v43 = v24;
    swift_once();
    v24 = v43;
  }

  v25 = qword_10095CFE8;
  *v10 = v24;
  v10[1] = v25;
  v26 = enum case for OfferTint.custom(_:);
  v27 = sub_10076C54C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v10, v26, v27);
  (*(v28 + 56))(v10, 0, 1, v27);
  v29 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  v30 = v25;
  sub_1004D0A60(v46, v4, v19, v45, 0, 0, v16, v13, v10, v7);
  v4[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_1006582B8();
  [v4 setNeedsLayout];
  sub_1006582B8();
  sub_10000CFBC(v7, &qword_10094F730, qword_10078A050);
  sub_10000CFBC(v10, &unk_100949290, &unk_10078BBF0);
  sub_10000CFBC(v13, &unk_1009492A0, &unk_10078BC00);
  sub_10000CFBC(v16, &unk_10094D210, &qword_10078DE20);
  sub_10000CFBC(v19, &unk_100946760, &unk_100787A20);
  if (sub_10076BB5C())
  {
    swift_beginAccess();
    sub_10076BFBC();
    sub_10075FD2C();
    sub_10054CD84(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100760B8C();
  }

  [*&v4[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_titleLabel] setOverrideUserInterfaceStyle:2];
  v31 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
  v32 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
  if (v32)
  {
    [v32 setOverrideUserInterfaceStyle:2];
    v33 = *&v4[v31];
    if (v33)
    {
      v34 = [v33 layer];
      [v34 setCompositingFilter:kCAFilterPlusL];

      v35 = *&v4[v31];
      if (v35)
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        v36 = v35;
        v37 = sub_100770D1C();
        [v36 setTextColor:v37];
      }
    }
  }

  v38 = *&v4[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton];
  v39 = [v38 layer];
  [v39 setCompositingFilter:kCAFilterPlusL];

  v40 = OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_allowsGroupBlending;
  v4[OBJC_IVAR____TtC20ProductPageExtension19TodayCardLockupView_allowsGroupBlending] = 0;
  v41 = [v4 layer];
  [v41 setAllowsGroupBlending:v4[v40]];

  v42 = [v38 layer];
  [v42 setAllowsGroupBlending:v4[v40]];
}

uint64_t sub_10054B5F4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  sub_10076F5AC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10000CFBC(v6, &unk_100943200, &unk_100785840);
  }

  sub_100263BF0(*a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

void sub_10054B738()
{
  v1 = *&v0[qword_10095D010];
  CGAffineTransformMakeScale(&aBlock, 0.9, 0.9);
  [v1 setTransform:&aBlock];
  v2 = qword_10095D018;
  swift_beginAccess();
  v18 = v0;
  v3 = *&v0[v2];
  v4 = *(v3 + 16);
  v20 = v3;

  v19 = v4;
  if (v4)
  {
    v5 = 0;
    while (v5 < *(v20 + 16))
    {
      v6 = *(v20 + 32 + 16 * v5);
      v7 = [v6 subviews];
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v8 = sub_1007701BC();

      if (v8 >> 62)
      {
        v9 = sub_10077158C();
        if (v9)
        {
LABEL_7:
          v10 = 0;
          while (1)
          {
            if ((v8 & 0xC000000000000001) != 0)
            {
              v11 = sub_10077149C();
            }

            else
            {
              if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v11 = *(v8 + 8 * v10 + 32);
            }

            v12 = v11;
            v13 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              break;
            }

            [v11 setAlpha:0.0];

            ++v10;
            if (v13 == v9)
            {
              goto LABEL_3;
            }
          }

          __break(1u);
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_7;
        }
      }

LABEL_3:
      ++v5;

      if (v5 == v19)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_17:

  v5 = v18;
  [*&v18[qword_10095D020] setAlpha:0.0];
  if (qword_100940830 != -1)
  {
LABEL_22:
    swift_once();
  }

  v14 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_10095CFC8 timingParameters:0.0];
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *&aBlock.tx = sub_10054D4F4;
  *&aBlock.ty = v15;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_10009AEDC;
  *&aBlock.d = &unk_1008995E8;
  v16 = _Block_copy(&aBlock);
  v17 = v5;

  [v14 addAnimations:v16];
  _Block_release(v16);
  [v14 startAnimationAfterDelay:0.16];
}