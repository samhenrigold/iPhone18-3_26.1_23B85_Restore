void *sub_100532AA4@<X0>(char a1@<W0>, char a2@<W2>, double *a3@<X8>)
{
  v6 = sub_1007479B4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_1009249B0, &qword_1007B5A70);
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v11 = &v68 - v10;
  v12 = sub_100750304();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a2 == 1)
    {
      *(a3 + 3) = &type metadata for Double;
      *(a3 + 4) = &protocol witness table for Double;
      *a3 = 166.0;
      *(a3 + 8) = &type metadata for Double;
      *(a3 + 9) = &protocol witness table for Double;
      a3[5] = 238.0;
      *(a3 + 13) = &type metadata for Double;
      *(a3 + 14) = &protocol witness table for Double;
      a3[10] = 24.0;
      *(a3 + 18) = &type metadata for Double;
      *(a3 + 19) = &protocol witness table for Double;
      a3[15] = 11.0;
      *(a3 + 23) = &type metadata for Double;
      *(a3 + 24) = &protocol witness table for Double;
      a3[20] = 24.0;
      *(a3 + 28) = &type metadata for Double;
      *(a3 + 29) = &protocol witness table for Double;
      a3[25] = 15.0;
      if (qword_1009219A8 != -1)
      {
        swift_once();
      }

      v16 = sub_10000D0FC(v6, qword_100982798);
      v17 = v82;
      (*(v7 + 16))(v82, v16, v6);
      sub_100747994();
      v19 = v18;
      result = (*(v7 + 8))(v17, v6);
      *(a3 + 33) = &type metadata for CGFloat;
      *(a3 + 34) = &protocol witness table for CGFloat;
      *(a3 + 30) = v19;
      *(a3 + 43) = &type metadata for CGFloat;
      *(a3 + 44) = &protocol witness table for CGFloat;
      a3[40] = 5.0;
      *(a3 + 48) = &type metadata for Double;
      *(a3 + 49) = &protocol witness table for Double;
      a3[45] = 12.0;
      a3[35] = 0.0;
      *(a3 + 18) = xmmword_1007C89D0;
      a3[38] = 24.0;
      *(a3 + 312) = 1;
    }

    else
    {
      v72 = v11;
      v78 = v7;
      v79 = v6;
      *(a3 + 3) = &type metadata for Double;
      *(a3 + 4) = &protocol witness table for Double;
      *a3 = 200.0;
      *(a3 + 8) = &type metadata for Double;
      *(a3 + 9) = &protocol witness table for Double;
      a3[5] = 330.0;
      *(a3 + 13) = &type metadata for Double;
      *(a3 + 14) = &protocol witness table for Double;
      a3[10] = 21.0;
      if (qword_100921530 != -1)
      {
        swift_once();
      }

      v37 = sub_100750534();
      v77 = sub_10000D0FC(v37, qword_100981CC8);
      v38 = *(v37 - 8);
      v75 = *(v38 + 16);
      v76 = v38 + 16;
      v75(v15, v77, v37);
      LODWORD(v74) = enum case for FontSource.useCase(_:);
      v39 = v13;
      v73 = v13[13];
      v73(v15);
      v70 = sub_100750B04();
      *(a3 + 18) = v70;
      *(a3 + 19) = &protocol witness table for StaticDimension;
      sub_10000D134(a3 + 15);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v40 = sub_10000D134(v87);
      v69 = v13[2];
      v69(v40, v15, v12);
      sub_100750B14();
      v41 = v13[1];
      v41(v15, v12);
      v87[0] = 0x4056800000000000;
      v84[0] = 0x4038000000000000;
      sub_10000C518(&unk_100923AE0, &qword_1007A8370);
      v42 = v72;
      sub_100743494();
      sub_1007434C4();
      (*(v80 + 1))(v42, v81);
      v81 = v37;
      v75(v15, v77, v37);
      v80 = (v13 + 13);
      (v73)(v15, v74, v12);
      v43 = v70;
      *(a3 + 28) = v70;
      *(a3 + 29) = &protocol witness table for StaticDimension;
      sub_10000D134(a3 + 25);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v44 = sub_10000D134(v87);
      v72 = (v39 + 2);
      v45 = v69;
      v69(v44, v15, v12);
      v46 = v45;
      sub_100750B14();
      v71 = v41;
      v41(v15, v12);
      if (qword_1009219A8 != -1)
      {
        swift_once();
      }

      v47 = v79;
      v48 = sub_10000D0FC(v79, qword_100982798);
      v49 = v78;
      v50 = v82;
      (*(v78 + 16))(v82, v48, v47);
      sub_100747994();
      v52 = v51;
      (*(v49 + 8))(v50, v47);
      *(a3 + 33) = &type metadata for CGFloat;
      *(a3 + 34) = &protocol witness table for CGFloat;
      *(a3 + 30) = v52;
      *(a3 + 43) = &type metadata for CGFloat;
      *(a3 + 44) = &protocol witness table for CGFloat;
      a3[40] = 5.0;
      v75(v15, v77, v81);
      (v73)(v15, v74, v12);
      *(a3 + 48) = v43;
      *(a3 + 49) = &protocol witness table for StaticDimension;
      sub_10000D134(a3 + 45);
      v87[3] = v12;
      v87[4] = &protocol witness table for FontSource;
      v53 = sub_10000D134(v87);
      v46(v53, v15, v12);
      sub_100750B14();
      result = v71(v15, v12);
      a3[35] = 0.0;
      *(a3 + 18) = xmmword_1007C89D0;
      a3[38] = 24.0;
      *(a3 + 312) = 0;
    }
  }

  else
  {
    v79 = v6;
    v87[3] = &type metadata for Double;
    v87[4] = &protocol witness table for Double;
    v87[0] = 0x4069000000000000;
    v87[8] = &type metadata for Double;
    v87[9] = &protocol witness table for Double;
    v78 = v7;
    if (a1)
    {
      v87[13] = &type metadata for Double;
      v87[14] = &protocol witness table for Double;
      v87[5] = 0x4074A00000000000;
      v87[10] = 0;
      if (qword_100921530 != -1)
      {
        swift_once();
      }

      v21 = sub_100750534();
      v77 = sub_10000D0FC(v21, qword_100981CC8);
      v22 = *(v21 - 8);
      v69 = *(v22 + 16);
      v75 = (v22 + 16);
      v69(v15, v77, v21);
      LODWORD(v76) = enum case for FontSource.useCase(_:);
      v23 = v13[13];
      v71 = (v13 + 13);
      v73 = v23;
      v23(v15);
      v74 = sub_100750B04();
      v87[18] = v74;
      v87[19] = &protocol witness table for StaticDimension;
      sub_10000D134(&v87[15]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v24 = sub_10000D134(v84);
      v72 = v13[2];
      (v72)(v24, v15, v12);
      sub_100750B14();
      v25 = v13[1];
      v25(v15, v12);
      v84[0] = 0x4056800000000000;
      v83 = 0x4038000000000000;
      sub_10000C518(&unk_100923AE0, &qword_1007A8370);
      sub_100743494();
      sub_1007434C4();
      (*(v80 + 1))(v11, v81);
      v81 = v21;
      v26 = v21;
      v27 = v69;
      v69(v15, v77, v26);
      (v73)(v15, v76, v12);
      v87[28] = v74;
      v87[29] = &protocol witness table for StaticDimension;
      sub_10000D134(&v87[25]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v28 = sub_10000D134(v84);
      v80 = (v13 + 2);
      (v72)(v28, v15, v12);
      sub_100750B14();
      v70 = v25;
      v25(v15, v12);
      if (qword_1009219A8 != -1)
      {
        swift_once();
      }

      v29 = v79;
      v30 = sub_10000D0FC(v79, qword_100982798);
      v31 = v78;
      v32 = v82;
      (*(v78 + 16))(v82, v30, v29);
      sub_100747994();
      v34 = v33;
      (*(v31 + 8))(v32, v29);
      v87[33] = &type metadata for CGFloat;
      v87[34] = &protocol witness table for CGFloat;
      v87[30] = v34;
      v87[44] = &protocol witness table for CGFloat;
      v87[43] = &type metadata for CGFloat;
      v87[40] = 0x4014000000000000;
      v27(v15, v77, v81);
      (v73)(v15, v76, v12);
      v87[48] = v74;
      v87[49] = &protocol witness table for StaticDimension;
      sub_10000D134(&v87[45]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v35 = sub_10000D134(v84);
      (v72)(v35, v15, v12);
      sub_100750B14();
      v70(v15, v12);
      v36 = 0;
    }

    else
    {
      v87[13] = &type metadata for Double;
      v87[14] = &protocol witness table for Double;
      v87[5] = 0x4071800000000000;
      v87[10] = 0x4035000000000000;
      if (qword_100921530 != -1)
      {
        swift_once();
      }

      v54 = sub_100750534();
      v81 = sub_10000D0FC(v54, qword_100981CC8);
      v55 = *(v54 - 8);
      v80 = *(v55 + 16);
      v74 = v55 + 16;
      v80(v15, v81, v54);
      LODWORD(v76) = enum case for FontSource.useCase(_:);
      v77 = v13[13];
      v77(v15);
      v75 = sub_100750B04();
      v87[18] = v75;
      v87[19] = &protocol witness table for StaticDimension;
      sub_10000D134(&v87[15]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v56 = sub_10000D134(v84);
      v57 = v13[2];
      v57(v56, v15, v12);
      sub_100750B14();
      v70 = v13[1];
      v70(v15, v12);
      v87[24] = &protocol witness table for Double;
      v87[23] = &type metadata for Double;
      v87[20] = 0x4038000000000000;
      v73 = v54;
      v80(v15, v81, v54);
      v72 = (v13 + 13);
      (v77)(v15, v76, v12);
      v87[28] = v75;
      v87[29] = &protocol witness table for StaticDimension;
      sub_10000D134(&v87[25]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v58 = sub_10000D134(v84);
      v71 = (v13 + 2);
      v57(v58, v15, v12);
      v59 = v57;
      v60 = v70;
      sub_100750B14();
      v60(v15, v12);
      if (qword_1009219A8 != -1)
      {
        swift_once();
      }

      v61 = v79;
      v62 = sub_10000D0FC(v79, qword_100982798);
      v63 = v78;
      v64 = v82;
      (*(v78 + 16))(v82, v62, v61);
      sub_100747994();
      v66 = v65;
      (*(v63 + 8))(v64, v61);
      v87[33] = &type metadata for CGFloat;
      v87[34] = &protocol witness table for CGFloat;
      v87[30] = v66;
      v87[44] = &protocol witness table for CGFloat;
      v87[43] = &type metadata for CGFloat;
      v87[40] = 0x4014000000000000;
      v80(v15, v81, v73);
      (v77)(v15, v76, v12);
      v87[48] = v75;
      v87[49] = &protocol witness table for StaticDimension;
      sub_10000D134(&v87[45]);
      v85 = v12;
      v86 = &protocol witness table for FontSource;
      v67 = sub_10000D134(v84);
      v59(v67, v15, v12);
      sub_100750B14();
      v60(v15, v12);
      v36 = 1;
    }

    *&v87[35] = xmmword_1007C89E0;
    *&v87[37] = xmmword_1007C89E0;
    LOBYTE(v87[39]) = v36;
    return memcpy(a3, v87, 0x190uLL);
  }

  return result;
}

uint64_t sub_1005339BC@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_1007479B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    if ((a1 & 1) == 0)
    {
      JUScreenClassGetPortraitWidth();
      _NF = v30 < a4;
      v31 = 0.0;
      if (_NF)
      {
        v31 = 21.0;
      }

      v37 = &type metadata for Double;
      v38 = &protocol witness table for Double;
      *&v36 = v31;
      *(a3 + 64) = &type metadata for Double;
      *(a3 + 72) = &protocol witness table for Double;
      *(a3 + 40) = 0x4069000000000000;
      if (qword_1009219A8 != -1)
      {
        swift_once();
      }

      v32 = sub_10000D0FC(v8, qword_100982798);
      (*(v9 + 16))(v11, v32, v8);
      sub_100747994();
      v34 = v33;
      (*(v9 + 8))(v11, v8);
      *(a3 + 136) = &type metadata for CGFloat;
      *(a3 + 144) = &protocol witness table for CGFloat;
      *(a3 + 112) = v34;
      *(a3 + 208) = &type metadata for Double;
      *(a3 + 216) = &protocol witness table for Double;
      *(a3 + 184) = 0x4028000000000000;
      *(a3 + 248) = &type metadata for Double;
      *(a3 + 256) = &protocol witness table for Double;
      *(a3 + 224) = 0x402C000000000000;
      result = sub_100012160(&v36, a3);
      *(a3 + 80) = xmmword_1007C8A30;
      *(a3 + 96) = xmmword_1007C8A40;
      v21 = xmmword_1007C89E0;
      goto LABEL_19;
    }

    v22 = (a4 + -360.0) * 0.5;
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4069000000000000;
    if (qword_1009219A8 != -1)
    {
      swift_once();
    }

    v23 = sub_10000D0FC(v8, qword_100982798);
    (*(v9 + 16))(v11, v23, v8);
    sub_100747994();
    v25 = v24;
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v25;
    *(a3 + 208) = &type metadata for Double;
    *(a3 + 216) = &protocol witness table for Double;
    *(a3 + 184) = 0x4028000000000000;
    *(a3 + 248) = &type metadata for Double;
    *(a3 + 256) = &protocol witness table for Double;
    *(a3 + 224) = 0x4020000000000000;
    v26 = xmmword_1007C8A50;
LABEL_13:
    *(a3 + 80) = v26;
    *(a3 + 96) = xmmword_1007C8A20;
    *(a3 + 152) = 0;
    *(a3 + 160) = v22;
    *(a3 + 168) = 0;
    *(a3 + 176) = v22;
    return result;
  }

  if (a2 != 1)
  {
    v22 = (a4 + -360.0) * 0.5;
    *(a3 + 24) = &type metadata for Double;
    *(a3 + 32) = &protocol witness table for Double;
    *a3 = 0x4046000000000000;
    *(a3 + 64) = &type metadata for Double;
    *(a3 + 72) = &protocol witness table for Double;
    *(a3 + 40) = 0x4064000000000000;
    if (qword_1009219A8 != -1)
    {
      swift_once();
    }

    v27 = sub_10000D0FC(v8, qword_100982798);
    (*(v9 + 16))(v11, v27, v8);
    sub_100747994();
    v29 = v28;
    result = (*(v9 + 8))(v11, v8);
    *(a3 + 136) = &type metadata for CGFloat;
    *(a3 + 144) = &protocol witness table for CGFloat;
    *(a3 + 112) = v29;
    *(a3 + 208) = &type metadata for Double;
    *(a3 + 216) = &protocol witness table for Double;
    *(a3 + 184) = 0x4028000000000000;
    *(a3 + 248) = &type metadata for Double;
    *(a3 + 256) = &protocol witness table for Double;
    *(a3 + 224) = 0x4020000000000000;
    v26 = xmmword_1007C8A10;
    goto LABEL_13;
  }

  *(a3 + 24) = &type metadata for Double;
  *(a3 + 32) = &protocol witness table for Double;
  *a3 = 0x4038000000000000;
  *(a3 + 64) = &type metadata for Double;
  *(a3 + 72) = &protocol witness table for Double;
  *(a3 + 40) = 0x4054000000000000;
  if (qword_1009219A8 != -1)
  {
    swift_once();
  }

  v12 = sub_10000D0FC(v8, qword_100982798);
  (*(v9 + 16))(v11, v12, v8);
  sub_100747994();
  v14 = v13;
  result = (*(v9 + 8))(v11, v8);
  *(a3 + 136) = &type metadata for CGFloat;
  *(a3 + 144) = &protocol witness table for CGFloat;
  *(a3 + 112) = v14;
  *(a3 + 208) = &type metadata for Double;
  *(a3 + 216) = &protocol witness table for Double;
  *(a3 + 184) = 0x4014000000000000;
  *(a3 + 248) = &type metadata for Double;
  *(a3 + 256) = &protocol witness table for Double;
  *(a3 + 224) = 0x4020000000000000;
  __asm { FMOV            V0.2D, #24.0 }

  *(a3 + 80) = _Q0;
  *(a3 + 96) = xmmword_1007C89F0;
  v21 = xmmword_1007C8A00;
LABEL_19:
  *(a3 + 152) = v21;
  *(a3 + 168) = v21;
  return result;
}

char *sub_100533EB4(unsigned __int8 a1)
{
  v2 = v1;
  v4 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_100750534();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v40 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  v17 = sub_10000C518(&qword_100929360, &unk_1007ACE70);
  __chkstk_darwin(v17 - 8);
  v19 = &v40 - v18;
  v20 = &v2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissActionBlock];
  *v20 = 0;
  v20[1] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_headerView] = 0;
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView] = 0;
  v2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_style] = a1;
  v21 = [objc_allocWithZone(UIScrollView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_scrollView] = v21;
  if (v4 == 1)
  {
    if (qword_100921BC8 != -1)
    {
      swift_once();
    }

    v22 = qword_100982C38;
  }

  else
  {
    if (qword_100921BC0 != -1)
    {
      swift_once();
    }

    v22 = qword_100982C20;
  }

  v23 = a1;
  v24 = sub_10000D0FC(v11, v22);
  sub_100121090(v24, v13, v25);
  sub_100534DB0(v13, v16, v26);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_1007434A4();
  v27 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_detailsView] = sub_10058E048(v19);
  v28 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_offerButton] = sub_100154454(0);
  sub_1007466C4();
  v29 = [swift_getObjCClassFromMetadata() buttonWithType:1];
  if (v23 == 1)
  {
    if (qword_1009212F8 != -1)
    {
      swift_once();
    }

    v30 = qword_100981620;
  }

  else
  {
    if (qword_1009212E8 != -1)
    {
      swift_once();
    }

    v30 = qword_1009815F0;
  }

  v31 = sub_10000D0FC(v5, v30);
  v32 = v40;
  (*(v6 + 16))(v40, v31, v5);
  (*(v6 + 32))(v10, v32, v5);
  (*(v6 + 56))(v10, 0, 1, v5);
  sub_1007466A4();
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissButton] = v29;
  v42.receiver = v2;
  v42.super_class = ObjectType;
  v33 = v29;
  v34 = objc_msgSendSuper2(&v42, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v35 = objc_opt_self();
  v36 = v34;
  v37 = [v35 clearColor];
  [v36 setBackgroundColor:v37];

  v38 = OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_scrollView;
  [*&v36[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_scrollView] setContentInsetAdjustmentBehavior:2];
  [v36 addSubview:*&v36[v38]];
  [*&v36[v38] addSubview:*&v36[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_detailsView]];
  [*&v36[v38] addSubview:*&v36[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_offerButton]];
  [*&v36[v38] addSubview:v33];

  return v36;
}

uint64_t sub_1005344AC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86.receiver = v1;
  v86.super_class = ObjectType;
  objc_msgSendSuper2(&v86, "layoutSubviews", v5);
  [v1 bounds];
  x = v87.origin.x;
  y = v87.origin.y;
  width = v87.size.width;
  height = v87.size.height;
  result = CGRectIsEmpty(v87);
  if ((result & 1) == 0)
  {
    v65 = v3;
    v62 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_scrollView];
    [v62 setFrame:{x, y, width, height}];
    v13 = [v1 traitCollection];
    v14 = sub_100753804();

    v63 = v7;
    v64 = v4;
    if (v14)
    {
      v15 = v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_style];
      v16 = [v1 traitCollection];
      v17 = sub_1007537D4();

      if (v17)
      {
        v18 = [v1 window];
        if (v18)
        {
          v19 = v18;
          [v18 frame];
          v20 = CGRectGetWidth(v88);
          [v1 bounds];
          v21 = CGRectGetWidth(v89);

          LOBYTE(v18) = v21 < v20;
        }
      }

      else
      {
        LOBYTE(v18) = 1;
      }

      sub_100532AA4(v18, v15, v66);
      v30 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_headerView];
      if (v30)
      {
        v61 = type metadata accessor for LinkableHeaderView();
        v60 = &protocol witness table for UIView;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v31 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView];
      if (v31)
      {
        v32 = sub_100016C60(0, &qword_100922300, UIView_ptr);
        v33 = &protocol witness table for UIView;
      }

      else
      {
        v32 = 0;
        v33 = 0;
      }

      v34 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_detailsView];
      v35 = type metadata accessor for BreakoutDetailsView(0);
      v79 = &protocol witness table for UIView;
      v78 = v35;
      v77 = v34;
      v36 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_offerButton];
      v81 = type metadata accessor for OfferButton();
      v82 = &protocol witness table for UIView;
      v80 = v36;
      v37 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissButton];
      v84 = sub_1007466C4();
      v85 = &protocol witness table for UIView;
      v83 = v37;
      memcpy(v67, v66, 0x190uLL);
      v67[50] = v30;
      v68 = 0;
      v69 = 0;
      v70 = v61;
      v71 = v60;
      v72 = v31;
      v74 = 0;
      v73 = 0;
      v75 = v32;
      v76 = v33;
      v38 = v31;
      v39 = v34;
      v40 = v36;
      v41 = v37;
      v42 = v30;
      v43 = v63;
      AXArcadeSubscribePageLayout.placeChildren(relativeTo:in:)(v1, v63, x, y, width, height);
      sub_100534E68(v67);
    }

    else
    {
      v22 = v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_style];
      v23 = [v1 traitCollection];
      v24 = sub_1007537D4();

      if (v24)
      {
        v25 = [v1 window];
        if (v25)
        {
          v26 = v25;
          [v25 frame];
          v27 = CGRectGetWidth(v90);
          [v1 bounds];
          v28 = CGRectGetWidth(v91);

          v29 = v28 < v27;
        }

        else
        {
          v29 = 0;
        }
      }

      else
      {
        v29 = 1;
      }

      [v1 bounds];
      sub_1005339BC(v29, v22, v66, v44);
      v45 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_headerView];
      if (v45)
      {
        v61 = type metadata accessor for LinkableHeaderView();
        v60 = &protocol witness table for UIView;
      }

      else
      {
        v60 = 0;
        v61 = 0;
      }

      v46 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView];
      if (v46)
      {
        v47 = sub_100016C60(0, &qword_100922300, UIView_ptr);
        v48 = &protocol witness table for UIView;
      }

      else
      {
        v47 = 0;
        v48 = 0;
      }

      v49 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_detailsView];
      v50 = type metadata accessor for BreakoutDetailsView(0);
      v67[47] = &protocol witness table for UIView;
      v67[46] = v50;
      v67[43] = v49;
      v51 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_offerButton];
      v52 = type metadata accessor for OfferButton();
      v69 = &protocol witness table for UIView;
      v68 = v52;
      v67[48] = v51;
      v53 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissButton];
      v54 = sub_1007466C4();
      v74 = &protocol witness table for UIView;
      v73 = v54;
      v70 = v53;
      memcpy(v67, v66, 0x108uLL);
      v67[33] = v45;
      v67[34] = 0;
      v67[35] = 0;
      v67[36] = v61;
      v67[37] = v60;
      v67[38] = v46;
      v67[40] = 0;
      v67[39] = 0;
      v67[41] = v47;
      v67[42] = v48;
      v55 = v46;
      v56 = v49;
      v57 = v51;
      v58 = v53;
      v59 = v45;
      v43 = v63;
      ArcadeSubscribePageLayout.placeChildren(relativeTo:in:)(v1, v63, x, y, width, height);
      sub_100534E14(v67);
    }

    sub_100750334();
    [v62 setContentSize:?];
    return (*(v64 + 8))(v43, v65);
  }

  return result;
}

void sub_100534AA4(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissButton);

    [v5 setAlpha:a2];
  }
}

unint64_t sub_100534D5C()
{
  result = qword_10093D868;
  if (!qword_10093D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D868);
  }

  return result;
}

uint64_t sub_100534DB0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for BreakoutDetailsView.Config(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_100534EBC(void *a1, _BYTE *a2, double a3, double a4)
{
  v8 = sub_100754724();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  v14 = sub_100753804();

  if (v14)
  {
    v64 = v9;
    v15 = a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_style];
    v16 = [a2 traitCollection];
    v17 = sub_1007537D4();

    if (v17)
    {
      v18 = [a2 window];
      if (v18)
      {
        v19 = v18;
        [v18 frame];
        Width = CGRectGetWidth(v88);
        [a2 bounds];
        v21 = CGRectGetWidth(v89);

        LOBYTE(v18) = v21 < Width;
      }
    }

    else
    {
      LOBYTE(v18) = 1;
    }

    sub_100532AA4(v18, v15, v68);
    v29 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_headerView];
    if (v29)
    {
      v67 = type metadata accessor for LinkableHeaderView();
      v63 = &protocol witness table for UIView;
    }

    else
    {
      v67 = 0;
      v63 = 0;
    }

    v33 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_contentView];
    v65 = v8;
    v66 = a1;
    if (v33)
    {
      v62 = sub_100016C60(0, &qword_100922300, UIView_ptr);
      v34 = &protocol witness table for UIView;
    }

    else
    {
      v62 = 0;
      v34 = 0;
    }

    v47 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_detailsView];
    v48 = type metadata accessor for BreakoutDetailsView(0);
    v81 = &protocol witness table for UIView;
    v80 = v48;
    v79 = v47;
    v49 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_offerButton];
    v83 = type metadata accessor for OfferButton();
    v84 = &protocol witness table for UIView;
    v82 = v49;
    v50 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissButton];
    v86 = sub_1007466C4();
    v87 = &protocol witness table for UIView;
    v85 = v50;
    memcpy(v69, v68, 0x190uLL);
    v69[50] = v29;
    v70 = 0;
    v71 = 0;
    v72 = v67;
    v73 = v63;
    v74 = v33;
    v76 = 0;
    v75 = 0;
    v77 = v62;
    v78 = v34;
    v51 = v69[3];
    sub_10000C888(v69, v69[3]);
    v52 = v33;
    v53 = v47;
    v54 = v49;
    v55 = v50;
    v56 = v29;
    sub_100536120(v51);
    v57 = v66;
    sub_100750564();
    v58 = v65;
    v59 = *(v64 + 8);
    v59(v12, v65);
    sub_1005354BC(v57, v69, a3, a4);
    v60 = v69[8];
    sub_10000C888(&v69[5], v69[8]);
    sub_100536120(v60);
    sub_100750564();
    v59(v12, v58);
    sub_100534E68(v69);
  }

  else
  {
    v22 = a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_style];
    v23 = [a2 traitCollection];
    v24 = sub_1007537D4();

    if (v24)
    {
      v25 = [a2 window];
      if (v25)
      {
        v26 = v25;
        [v25 frame];
        v27 = CGRectGetWidth(v90);
        [a2 bounds];
        v28 = CGRectGetWidth(v91);

        LOBYTE(v25) = v28 < v27;
      }
    }

    else
    {
      LOBYTE(v25) = 1;
    }

    sub_1005339BC(v25, v22, v68, a3);
    v30 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_headerView];
    if (v30)
    {
      v31 = type metadata accessor for LinkableHeaderView();
      v32 = &protocol witness table for UIView;
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    v35 = sub_100750F34();
    v36 = v30;
    v37 = sub_100750F24();
    v69[42] = &protocol witness table for LayoutViewPlaceholder;
    v69[41] = v35;
    v69[38] = v37;
    v38 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_detailsView];
    v39 = type metadata accessor for BreakoutDetailsView(0);
    v69[47] = &protocol witness table for UIView;
    v69[46] = v39;
    v69[43] = v38;
    v40 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_offerButton];
    v41 = type metadata accessor for OfferButton();
    v71 = &protocol witness table for UIView;
    v70 = v41;
    v69[48] = v40;
    v42 = *&a2[OBJC_IVAR____TtC22SubscribePageExtension23ArcadeSubscribePageView_dismissButton];
    v43 = sub_1007466C4();
    v76 = &protocol witness table for UIView;
    v75 = v43;
    v72 = v42;
    memcpy(v69, v68, 0x108uLL);
    v69[33] = v30;
    v69[34] = 0;
    v69[35] = 0;
    v69[36] = v31;
    v69[37] = v32;
    v44 = v38;
    v45 = v40;
    v46 = v42;
    a3 = sub_100535844(a1, v69, a3, a4);
    sub_100534E14(v69);
  }

  return a3;
}

uint64_t sub_10053544C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_1009259A0, &unk_1007B0610);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1005354BC(uint64_t a1, void *a2, double a3, double a4)
{
  *&v32 = a2 + 35;
  v8 = sub_100754724();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2[23];
  sub_10000C888(a2 + 20, v12);
  sub_100536120(v12);
  sub_100750564();
  v14 = v13;
  v15 = *(v9 + 8);
  v15(v11, v8);
  v16 = a2[18];
  sub_10000C888(a2 + 15, v16);
  sub_100536120(v16);
  sub_100750564();
  v18 = v17;
  v15(v11, v8);
  v19 = a2[28];
  sub_10000C888(a2 + 25, v19);
  sub_100536120(v19);
  sub_100750564();
  v21 = v20;
  v15(v11, v8);
  sub_10000C824((a2 + 30), v41);
  LOBYTE(v19) = *(v32 + 32);
  v22 = *(v32 + 16);
  v31 = *v32;
  v32 = v22;
  sub_10000C824((a2 + 40), &v44);
  sub_10000C824((a2 + 45), &v45);
  v40[0] = v18;
  v40[1] = v14;
  v40[2] = v21;
  v40[3] = v14;
  v42 = v32;
  *&v41[40] = v31;
  v43 = v19;
  sub_10047A958(v40, v36);
  sub_10000C824((a2 + 60), &v37);
  sub_10000C824((a2 + 65), &v38);
  sub_10000C824((a2 + 70), &v39);
  v23 = a2[13];
  sub_10000C888(a2 + 10, v23);
  sub_100536120(v23);
  sub_100750564();
  v25 = v24;
  v15(v11, v8);
  sub_100535E18(a1, v36, a3, a4);
  v27 = a4 - v25 - v26;
  sub_1000CD5F0((a2 + 50), &v33);
  if (v34)
  {
    sub_100012160(&v33, v35);
    sub_10000C888(v35, v35[3]);
    sub_100750414();
    v29 = v28;
    sub_10047AC98(v36);
    sub_10047ACC8(v40);
    v27 = v27 - v29;
    sub_10000C620(v35);
  }

  else
  {
    sub_10047AC98(v36);
    sub_10047ACC8(v40);
    sub_10000C8CC(&v33, &unk_100928A00, &qword_1007A5AB0);
  }

  return v27;
}

double sub_100535844(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_100754724();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 80);
  v20 = *(a2 + 96);
  v21 = v12;
  sub_10000C824(a2 + 112, v30);
  v13 = *(a2 + 152);
  v18 = *(a2 + 168);
  v19 = v13;
  sub_10000C824(a2 + 184, &v32);
  sub_10000C824(a2 + 224, &v33);
  v29[1] = v20;
  v29[0] = v21;
  v31 = v18;
  *&v30[40] = v19;
  sub_1003F5168(v29, v25);
  sub_10000C824(a2 + 344, &v26);
  sub_10000C824(a2 + 384, &v27);
  sub_10000C824(a2 + 424, &v28);
  v14 = *(a2 + 24);
  sub_10000C888(a2, v14);
  sub_100536120(v14);
  sub_100750564();
  v15 = *(v9 + 8);
  v15(v11, v8);
  sub_100535B10(a1, v25, a3, a4);
  sub_1000CD5F0(a2 + 264, &v22);
  if (v23)
  {
    sub_100012160(&v22, v24);
    sub_10000C888(v24, v24[3]);
    sub_100750414();
    sub_10000C620(v24);
  }

  else
  {
    sub_10000C8CC(&v22, &unk_100928A00, &qword_1007A5AB0);
  }

  v16 = *(a2 + 64);
  sub_10000C888((a2 + 40), v16);
  sub_100536120(v16);
  sub_100750564();
  v15(v11, v8);
  sub_1003F54A8(v25);
  sub_1003F54D8(v29);
  return a3;
}

double sub_100535B10(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(a2 + 23, a2[26]);
  sub_100750414();
  v10 = a2[21];
  sub_10000C888(a2 + 18, v10);
  sub_100536120(v10);
  sub_100750564();
  v11 = *(v7 + 8);
  v11(v9, v6);
  sub_10000C888(a2 + 28, a2[31]);
  if ((sub_1007503A4() & 1) == 0)
  {
    v12 = a2[7];
    sub_10000C888(a2 + 4, v12);
    sub_100536120(v12);
    sub_100750564();
    v11(v9, v6);
  }

  sub_10000C888(a2 + 33, a2[36]);
  if ((sub_1007503A4() & 1) == 0)
  {
    sub_10000C888(a2 + 33, a2[36]);
    sub_100750414();
  }

  sub_10000C888(a2 + 28, a2[31]);
  if ((sub_1007503A4() & 1) == 0)
  {
    sub_10000C888(a2 + 33, a2[36]);
    if ((sub_1007503A4() & 1) == 0)
    {
      v13 = a2[16];
      sub_10000C888(a2 + 13, v13);
      sub_100536120(v13);
      sub_100750564();
      v11(v9, v6);
    }
  }

  return a3;
}

double sub_100535E18(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888(a2 + 24, a2[27]);
  sub_100750414();
  v10 = a2[22];
  sub_10000C888(a2 + 19, v10);
  sub_100536120(v10);
  sub_100750564();
  v11 = *(v7 + 8);
  v11(v9, v6);
  sub_10000C888(a2 + 29, a2[32]);
  if ((sub_1007503A4() & 1) == 0)
  {
    v12 = a2[7];
    sub_10000C888(a2 + 4, v12);
    sub_100536120(v12);
    sub_100750564();
    v11(v9, v6);
  }

  sub_10000C888(a2 + 34, a2[37]);
  if ((sub_1007503A4() & 1) == 0)
  {
    sub_10000C888(a2 + 34, a2[37]);
    sub_100750414();
  }

  sub_10000C888(a2 + 29, a2[32]);
  if ((sub_1007503A4() & 1) == 0)
  {
    sub_10000C888(a2 + 34, a2[37]);
    if ((sub_1007503A4() & 1) == 0)
    {
      v13 = a2[17];
      sub_10000C888(a2 + 14, v13);
      sub_100536120(v13);
      sub_100750564();
      v11(v9, v6);
    }
  }

  return a3;
}

uint64_t AppPromotionFormattedDateLayout.Metrics.init(textTopSpace:textBottomSpace:liveIndicatorTrailingMargin:liveIndicatorSize:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>)
{
  sub_100012160(a1, a4);
  sub_100012160(a2, (a4 + 5));
  result = sub_100012160(a3, (a4 + 10));
  a4[15] = a5;
  a4[16] = a6;
  a4[17] = a7;
  a4[18] = a8;
  a4[19] = a9;
  a4[20] = a10;
  return result;
}

uint64_t AppPromotionFormattedDateLayout.init(metrics:textLabel:liveIndicatorView:backgroundView:vibrancyView:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v21 = a6;
  v11 = sub_100741574();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CD660(a1, v22);
  sub_100741544();
  v15 = sub_100741554();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_10000C888(a2, a2[3]);
    sub_100750884();
    sub_1000CD6BC(a1);
  }

  else
  {
    sub_1000CD6BC(a1);
    sub_10000C824(a2, &v22[10] + 8);
  }

  v16 = *(a3 + 16);
  v22[13] = *a3;
  v22[14] = v16;
  *&v22[15] = *(a3 + 32);
  v17 = *a4;
  *(&v22[16] + 8) = a4[1];
  *(&v22[15] + 8) = v17;
  *(&v22[17] + 1) = *(a4 + 4);
  *&v22[20] = *(a5 + 32);
  v18 = *(a5 + 16);
  v22[18] = *a5;
  v22[19] = v18;
  memcpy(v21, v22, 0x148uLL);
  return sub_10000C620(a2);
}

uint64_t AppPromotionFormattedDateLayout.placeChildren(relativeTo:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = sub_100754724();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CD5F0(v5 + 248, v55);
  if (v56)
  {
    sub_10000C888(v55, v56);
    sub_100750394();
    sub_10000C620(v55);
  }

  else
  {
    sub_1002C9F48(v55);
  }

  sub_1000CD5F0(v5 + 288, v55);
  if (v56)
  {
    sub_10000C888(v55, v56);
    sub_100750394();
    sub_10000C620(v55);
  }

  else
  {
    sub_1002C9F48(v55);
  }

  sub_100753B14();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1000CD5F0(v5 + 208, &v53);
  v51 = a2;
  v52 = a4;
  v49 = a3;
  v50 = a5;
  v46 = v15;
  v45 = v17;
  v44 = v19;
  v43 = v21;
  if (!v54)
  {
    sub_1002C9F48(&v53);
    goto LABEL_11;
  }

  sub_100012160(&v53, v55);
  sub_10000C888(v55, v56);
  if (sub_1007503A4())
  {
    sub_10000C620(v55);
LABEL_11:
    v48 = v15;
    v22 = v17;
    Height = v21;
    goto LABEL_13;
  }

  v24 = *(v5 + 120);
  sub_10000C888((v5 + 80), *(v5 + 104));
  sub_1007502D4();
  sub_100750564();
  v26 = v25;
  (*(v11 + 8))(v13, v10);
  v27 = v24 + v26;
  v57.origin.x = v15;
  v57.origin.y = v17;
  v57.size.width = v19;
  v57.size.height = v21;
  v48 = v27 + CGRectGetMinX(v57);
  v58.origin.x = v15;
  v58.origin.y = v17;
  v58.size.width = v19;
  v58.size.height = v21;
  MinY = CGRectGetMinY(v58);
  v59.origin.x = v15;
  v59.origin.y = v17;
  v59.size.width = v19;
  v59.size.height = v21;
  Width = CGRectGetWidth(v59);
  v60.size.width = v19;
  v19 = Width - v27;
  v60.origin.x = v15;
  v22 = MinY;
  v60.origin.y = v17;
  v60.size.height = v21;
  Height = CGRectGetHeight(v60);
  sub_10000C620(v55);
LABEL_13:
  sub_10000C888((v5 + 168), *(v5 + 192));
  sub_100750404();
  v31 = v30;
  v33 = v32;
  sub_10000C888(v5, *(v5 + 24));
  sub_100750584();
  v47 = v34;
  v35 = v48;
  v61.origin.x = v48;
  v61.origin.y = v22;
  v61.size.width = v19;
  v61.size.height = Height;
  MinX = CGRectGetMinX(v61);
  v62.origin.x = v35;
  v62.origin.y = v22;
  v62.size.width = v19;
  v62.size.height = Height;
  v37 = CGRectGetMinY(v62);
  v63.origin.x = v35;
  v63.origin.y = v22;
  v63.size.width = v19;
  v63.size.height = Height;
  v38 = CGRectGetWidth(v63);
  if (v38 >= v31)
  {
    v39 = v31;
  }

  else
  {
    v39 = v38;
  }

  v40 = v47 + v37;
  sub_10000C888((v5 + 168), *(v5 + 192));
  v48 = v33;
  sub_100753B24();
  sub_100750394();
  sub_1000CD5F0(v5 + 208, &v53);
  if (v54)
  {
    sub_100012160(&v53, v55);
    v47 = *(v5 + 120);
    v64.origin.x = MinX;
    v64.origin.y = v40;
    v64.size.width = v39;
    v41 = v48;
    v64.size.height = v48;
    CGRectGetMinY(v64);
    v65.origin.x = MinX;
    v65.origin.y = v40;
    v65.size.width = v39;
    v65.size.height = v41;
    CGRectGetHeight(v65);
    v66.origin.x = v46;
    v66.origin.y = v45;
    v66.size.width = v44;
    v66.size.height = v43;
    CGRectGetMinX(v66);
    sub_10000C888(v55, v56);
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v55);
  }

  else
  {
    sub_1002C9F48(&v53);
  }

  return sub_100750314();
}

double AppPromotionFormattedDateLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  sub_100536D74(a1, v3);
  return result;
}

double static AppPromotionFormattedDateLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  swift_getObjectType();

  return sub_100536A04(a1, a2, a3, a4);
}

void AppPromotionFormattedDateLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = a3;
  v4[20] = a4;
}

double sub_100536A04(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v25 = a2;
  v26 = sub_100751014();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100750A94();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100750AB4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for StackMeasurable.Axis.vertical(_:), v8, v14);
  sub_10000C518(&qword_100946760, &unk_1007A63A0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007A6580;
  sub_10000C824(a1, v33);
  v18 = sub_100750FD4();
  *(v17 + 56) = v18;
  *(v17 + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000D134((v17 + 32));
  sub_100750FE4();
  sub_10000C824(a1 + 40, v33);
  *(v17 + 96) = v18;
  *(v17 + 104) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000D134((v17 + 72));
  sub_100750FE4();
  sub_100750AA4();
  v33[3] = v12;
  v33[4] = &protocol witness table for StackMeasurable;
  v19 = sub_10000D134(v33);
  (*(v13 + 16))(v19, v16, v12);
  v20 = *(a1 + 136);
  v31 = &type metadata for CGFloat;
  v32 = &protocol witness table for CGFloat;
  v30 = v20;
  v21 = *(a1 + 152);
  v28 = &type metadata for CGFloat;
  v29 = &protocol witness table for CGFloat;
  v27 = v21;
  sub_100751004();
  sub_100750FF4();
  v23 = v22;
  (*(v5 + 8))(v7, v26);
  (*(v13 + 8))(v16, v12);
  return v23;
}

void sub_100536D74(uint64_t a1, void *a2)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[17];
  v8[0] = a2[18];
  v8[1] = v7;
  sub_100753BA4();
  sub_1000CD5F0((a2 + 26), &v9);
  if (v10)
  {
    sub_100012160(&v9, v11);
    sub_10000C888(v11, v11[3]);
    if ((sub_1007503A4() & 1) == 0)
    {
      sub_10000C888(a2 + 10, a2[13]);
      sub_1007502D4();
      sub_100750564();
      (*(v4 + 8))(v6, v3);
    }

    sub_10000C620(v11);
  }

  else
  {
    sub_1002C9F48(&v9);
  }

  sub_10000C888(a2 + 21, a2[24]);
  sub_100750404();
  sub_10000C888(a2, a2[3]);
  sub_100750584();
  sub_10000C888(a2 + 5, a2[8]);
  sub_1007502D4();
  sub_100750564();
  (*(v4 + 8))(v6, v3);
  sub_100753BC4();
}

uint64_t sub_100537058(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
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

uint64_t sub_1005370A0(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100537198(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a5;
  v49 = a4;
  v51 = a3;
  v7 = sub_100752624();
  v42 = *(v7 - 8);
  v43 = v7;
  __chkstk_darwin(v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10000C518(&qword_100939100, &qword_1007C2810);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v37 - v9;
  v10 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v46 = *(v10 - 8);
  v47 = v10;
  __chkstk_darwin(v10);
  v44 = &v37 - v11;
  v52 = *a1;
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v12 = sub_100752E44();
  v54 = sub_10000D0FC(v12, qword_100983318);
  v13 = sub_10000C518(&qword_100923930, &qword_1007A6B60);
  v14 = *(*(sub_100752454() - 8) + 72);
  v40 = v13;
  *(swift_allocObject() + 16) = xmmword_1007A7250;
  sub_1007523A4();
  v38 = sub_100742DB4();
  v56 = v38;
  v55[0] = a2;

  sub_100752444();
  sub_1000277BC(v55);
  sub_1007523A4();
  v15 = sub_100752CD4();
  v56 = v15;
  v16 = sub_10000D134(v55);
  (*(*(v15 - 8) + 16))(v16, v51, v15);
  v39 = 3 * v14;
  sub_100752444();
  sub_1000277BC(v55);
  v51 = a2;
  sub_1007523A4();
  v56 = sub_100016C60(0, &qword_10093D898, AMSURLResult_ptr);
  v55[0] = v52;
  v17 = v52;
  sub_100752444();
  sub_1000277BC(v55);
  sub_100752CF4();

  if ([v17 responseStatusCode] - 200 > 0x63)
  {
    *(swift_allocObject() + 16) = xmmword_1007A97A0;
    sub_1007523A4();
    v56 = v38;
    v55[0] = v51;

    sub_100752444();
    sub_1000277BC(v55);
    sub_1007523A4();
    v29 = [v17 responseStatusCode];
    v56 = &type metadata for Int;
    v55[0] = v29;
    sub_100752444();
    sub_1000277BC(v55);
    sub_100752D04();

    v30 = sub_100742D74();
    if (v30)
    {
      v31 = v30;
      sub_100752764();
      v32 = v44;
      v33 = v47;
      sub_100752D34();
      v56 = sub_10074ECD4();
      v57 = sub_10053836C(&qword_10093D890, &type metadata accessor for Action);
      v55[0] = v31;
      v34 = v48;
      v35 = v45;
      v36 = v50;
      (*(v48 + 104))(v45, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);

      sub_1007527E4();

      (*(v34 + 8))(v35, v36);
      (*(v46 + 8))(v32, v33);
      sub_10000C620(v55);
    }

    sub_1005383C0();
    swift_allocError();
    sub_100752DA4();
  }

  else
  {
    v18 = sub_100742D84();
    if (v18)
    {
      v19 = v18;
      sub_100752764();
      v20 = v44;
      v21 = v47;
      sub_100752D34();
      v56 = sub_10074ECD4();
      v57 = sub_10053836C(&qword_10093D890, &type metadata accessor for Action);
      v55[0] = v19;
      v22 = v48;
      v23 = v45;
      v24 = v50;
      (*(v48 + 104))(v45, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v50);

      sub_1007527E4();

      (*(v22 + 8))(v23, v24);
      (*(v46 + 8))(v20, v21);
      sub_10000C620(v55);
    }

    v26 = v41;
    v25 = v42;
    v27 = v43;
    (*(v42 + 104))(v41, enum case for ActionOutcome.performed(_:), v43);
    sub_100752DB4();
    return (*(v25 + 8))(v26, v27);
  }
}

uint64_t sub_100537968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a4;
  v24 = a3;
  v6 = sub_10000C518(&qword_100939100, &qword_1007C2810);
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v23 = &v21 - v7;
  v8 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  v22 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  if (qword_100921EE0 != -1)
  {
    swift_once();
  }

  v11 = sub_100752E44();
  v27 = sub_10000D0FC(v11, qword_100983318);
  sub_10000C518(&qword_100923930, &qword_1007A6B60);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A97A0;
  sub_1007523A4();
  v31 = sub_100742DB4();
  v30[0] = a2;

  sub_100752444();
  sub_1000277BC(v30);
  sub_1007523A4();
  v28 = a1;
  swift_getErrorValue();
  v12 = v33;
  v13 = v34;
  v31 = v34;
  v14 = sub_10000D134(v30);
  (*(*(v13 - 8) + 16))(v14, v12, v13);
  sub_100752444();
  sub_1000277BC(v30);
  sub_100752D04();

  v15 = sub_100742D74();
  if (v15)
  {
    v16 = v15;
    sub_100752764();
    sub_100752D34();
    v31 = sub_10074ECD4();
    v32 = sub_10053836C(&qword_10093D890, &type metadata accessor for Action);
    v30[0] = v16;
    v18 = v25;
    v17 = v26;
    v19 = v23;
    (*(v25 + 104))(v23, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v26);

    sub_1007527E4();

    (*(v18 + 8))(v19, v17);
    (*(v22 + 8))(v10, v8);
    sub_10000C620(v30);
  }

  return sub_100752DA4();
}

uint64_t sub_100537DA8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_100752CD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v32 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v27 - v9;
  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  v33 = sub_100752DE4();
  sub_100016C60(0, &unk_10093D880, AMSURLSession_ptr);
  sub_100752764();
  sub_100752D34();
  v11 = v34[0];
  v30 = v5;
  v31 = v10;
  sub_100752D34();
  sub_100016C60(0, &qword_100930CB0, AMSProcessInfo_ptr);
  sub_100752D34();
  v12 = v34[0];
  sub_100744AC4();
  sub_100752D34();
  v13 = v34[0];
  sub_10000C518(&qword_10092BBA0, &qword_1007C8D40);
  sub_100752D34();
  v14 = v34[0];
  if (sub_100742D94())
  {
    swift_unknownObjectRetain();
  }

  v27[2] = v14;
  v28 = v12;
  v15 = v31;
  v29 = v13;
  v27[1] = sub_100742DA4();
  swift_unknownObjectRelease();
  v16 = v32;
  v17 = v30;
  (*(v6 + 16))(v32, v15, v30);
  v18 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v19 = (v7 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27[0] = v11;
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  (*(v6 + 32))(v21 + v18, v16, v17);
  *(v21 + v19) = a2;
  v22 = v33;
  *(v21 + v20) = v33;
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = v22;
  v24 = sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  v25 = sub_100753774();
  v34[3] = v24;
  v34[4] = &protocol witness table for OS_dispatch_queue;
  v34[0] = v25;
  sub_100752D64();
  swift_unknownObjectRelease();

  (*(v6 + 8))(v15, v17);
  sub_10000C620(v34);
  return v22;
}

uint64_t sub_10053817C(__n128 a1)
{
  v2 = sub_100752CD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_10053826C(id *a1, __n128 a2)
{
  v4 = *(sub_100752CD4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6);
  v8 = *(v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v2 + 16);

  return sub_100537198(a1, v9, v2 + v5, v7, v8);
}

uint64_t sub_100538318()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10053836C(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

unint64_t sub_1005383C0()
{
  result = qword_10093D8A0;
  if (!qword_10093D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D8A0);
  }

  return result;
}

unint64_t sub_100538428()
{
  result = qword_10093D8A8;
  if (!qword_10093D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093D8A8);
  }

  return result;
}

uint64_t sub_10053847C()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100750B04();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v38 = &v27[-v7];
  __chkstk_darwin(v8);
  v36 = &v27[-v9];
  v10 = type metadata accessor for BadgeParagraphView.Metrics(0);
  sub_100039C50(v10, qword_1009822D8);
  v31 = v10;
  v30 = sub_10000D0FC(v10, qword_1009822D8);
  if (qword_100921020 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  v29 = sub_10000D0FC(v11, qword_100980D98);
  v12 = *(v11 - 8);
  v35 = *(v12 + 16);
  v37 = v12 + 16;
  v35(v3, v29, v11);
  v13 = enum case for FontSource.useCase(_:);
  v14 = v1[13];
  v14(v3, enum case for FontSource.useCase(_:), v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v15 = sub_10000D134(v39);
  v16 = v1[2];
  v16(v15, v3, v0);
  sub_100750B14();
  v17 = v1[1];
  v17(v3, v0);
  v35(v3, v29, v11);
  v28 = v13;
  v14(v3, v13, v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v39);
  v29 = v16;
  v16(v18, v3, v0);
  sub_100750B14();
  v17(v3, v0);
  if (qword_100921038 != -1)
  {
    swift_once();
  }

  v19 = sub_10000D0FC(v11, qword_100980DE0);
  v35(v3, v19, v11);
  v14(v3, v28, v0);
  v40 = v0;
  v41 = &protocol witness table for FontSource;
  v20 = sub_10000D134(v39);
  v29(v20, v3, v0);
  v21 = v32;
  sub_100750B14();
  v17(v3, v0);
  v22 = v34;
  v23 = *(v33 + 32);
  v24 = v30;
  v23(v30, v36, v34);
  v25 = v31;
  v23(v24 + *(v31 + 20), v38, v22);
  return (v23)(v24 + *(v25 + 24), v21, v22);
}

char *sub_1005388F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10074AB44();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v14 - 8);
  v16 = v43 - v15;
  if (qword_100921808 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for BadgeParagraphView.Metrics(0);
  v18 = sub_10000D0FC(v17, qword_1009822D8);
  sub_100539948(v18, &v5[OBJC_IVAR____TtC22SubscribePageExtension18BadgeParagraphView_metrics]);
  if (qword_100921020 != -1)
  {
    swift_once();
  }

  v19 = sub_100750534();
  v20 = sub_10000D0FC(v19, qword_100980D98);
  v21 = *(v19 - 8);
  (*(v21 + 16))(v16, v20, v19);
  (*(v21 + 56))(v16, 0, 1, v19);
  (*(v11 + 104))(v13, enum case for DirectionalTextAlignment.none(_:), v10);
  v22 = objc_allocWithZone(sub_100745C84());
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension18BadgeParagraphView_paragraphLabel] = sub_100745C74();
  v23 = type metadata accessor for BadgeParagraphView(0);
  v44.receiver = v5;
  v44.super_class = v23;
  v24 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v28 = v24;
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v29 = OBJC_IVAR____TtC22SubscribePageExtension18BadgeParagraphView_paragraphLabel;
  v30 = *&v28[OBJC_IVAR____TtC22SubscribePageExtension18BadgeParagraphView_paragraphLabel];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 systemGrayColor];
  [v32 setTextColor:v33];

  v34 = [v28 traitCollection];
  v35.super.isa = v34;
  isa = sub_100750514(v35).super.isa;
  v37 = [(objc_class *)isa fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (!v37)
  {
    goto LABEL_8;
  }

  v38 = [objc_opt_self() fontWithDescriptor:v37 size:0.0];

  if (v38)
  {
    [*&v28[v29] setFont:v38];
    v34 = v38;
LABEL_8:
  }

  [v28 addSubview:*&v28[v29]];
  v39 = [v28 traitCollection];
  sub_1007537F4();

  sub_100753F54();
  sub_10000C518(&unk_1009249D0, qword_1007A7B10);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1007A5A00;
  *(v40 + 32) = sub_1007519E4();
  *(v40 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43[3] = v23;
  v43[0] = v28;
  v41 = v28;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v43);
  return v41;
}

id sub_100538EF0()
{
  v1 = v0;
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BadgeParagraphView(0);
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v7 = [v0 traitCollection];
  v8 = sub_1007537B4();

  if (v8)
  {
    type metadata accessor for BadgeParagraphView.Metrics(0);
  }

  sub_1007502D4();
  sub_100750B04();
  sub_100750564();
  v9 = *(v3 + 8);
  v9(v5, v2);
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension18BadgeParagraphView_paragraphLabel];
  sub_1007477B4();
  [v10 measurementsWithFitting:v1 in:{v11, v12}];
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.down(_:), v2);
  sub_100753D84();
  v9(v5, v2);
  v13 = [v1 traitCollection];
  [v13 layoutDirection];

  sub_1007477B4();
  sub_100753B34();
  return [v10 setFrame:?];
}

uint64_t sub_1005391A8(uint64_t a1)
{
  v2 = v1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BadgeParagraphView(0);
  objc_msgSendSuper2(&v8, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_1007537F4();

  if (!a1 || (result = sub_1007537F4(), (result & 1) != (v5 & 1)))
  {
    v7 = [v2 traitCollection];
    sub_1007537F4();

    return sub_100753F54();
  }

  return result;
}

void sub_1005392F8()
{
  v1 = v0;
  if (qword_100921020 != -1)
  {
    swift_once();
  }

  v2 = sub_100750534();
  sub_10000D0FC(v2, qword_100980D98);
  v3.super.isa = [v0 traitCollection];
  isa = v3.super.isa;
  v4 = sub_100750514(v3).super.isa;
  v5 = [(objc_class *)v4 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

  if (v5)
  {
    v6 = [objc_opt_self() fontWithDescriptor:v5 size:0.0];

    if (!v6)
    {
      return;
    }

    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension18BadgeParagraphView_paragraphLabel] setFont:v6];
    v7 = v6;
  }

  else
  {
    v7 = isa;
  }
}

id sub_1005394A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BadgeParagraphView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10053954C(uint64_t a1, __n128 a2)
{
  result = type metadata accessor for BadgeParagraphView.Metrics(319);
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

uint64_t sub_100539620(uint64_t a1, uint64_t a2)
{
  v4 = sub_100750B04();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1005396A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100750B04();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100539710(uint64_t a1)
{
  result = sub_100750B04();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_100539784(uint64_t a1, double a2, double a3)
{
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BadgeParagraphView.Metrics(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921808 != -1)
  {
    swift_once();
  }

  v12 = sub_10000D0FC(v9, qword_1009822D8);
  sub_100539948(v12, v11);
  sub_1007537B4();
  sub_1007502D4();
  sub_100750AD4();
  (*(v6 + 8))(v8, v5);
  if (a3 >= a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a3;
  }

  v14 = ceil(v13);
  sub_1005399AC(v11);
  return v14;
}

uint64_t sub_100539948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BadgeParagraphView.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005399AC(uint64_t a1)
{
  v2 = type metadata accessor for BadgeParagraphView.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_100539A08(double a1, double a2, double a3, double a4)
{
  v9 = sub_100752AC4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView] = 0;
  v13 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell(0);
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 setClipsToBounds:1];

  v16 = sub_100539C58();
  [v16 setClipsToBounds:1];

  v17 = [v14 contentView];
  [v17 addSubview:*&v14[OBJC_IVAR____TtC22SubscribePageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView]];

  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  sub_100752A74();
  sub_10000C8CC(v19, &unk_100923520, &qword_1007A5A70);
  sub_10000C8CC(v20, &unk_100923520, &qword_1007A5A70);
  sub_100753C74();

  (*(v10 + 8))(v12, v9);
  return v14;
}

id sub_100539C58()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension68MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell____lazy_storage___mediumAdLockupWithAlignedRegionBackgroundView);
  }

  else
  {
    type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

double sub_100539D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = a2;
  v9 = sub_10000C518(&unk_100926C40, qword_1007B9FE0);
  __chkstk_darwin(v9 - 8);
  v11 = &v22 - v10;
  sub_10074FB64();
  sub_10074E324();
  if (swift_dynamicCastClass())
  {
    v12 = sub_100539C58();
    v13 = sub_10074E314();
    sub_10029DBC8(v13, a3, a4);

    v14 = sub_10074F704();
    v15 = *(v14 - 8);
    (*(v15 + 16))(v11, a3, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    v16 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
    swift_beginAccess();
    sub_100037710(v11, v5 + v16);
    swift_endAccess();
    sub_1005F3E54(v8);
    v17 = [v5 backgroundView];
    if (v17)
    {
      v18 = v17;
      v19 = sub_10074FA74();
      if (!v19)
      {
        sub_10000D198();
        v19 = sub_100753E64();
      }

      v20 = v19;
      [v18 setBackgroundColor:v19];
    }

    [v5 setNeedsLayout];
  }

  else
  {
  }

  return result;
}

void sub_100539FD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  sub_10000C824(a1, v20);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_10074FBB4();
  if (swift_dynamicCast())
  {
    sub_10074FB64();

    sub_10074E324();
    if (swift_dynamicCastClass())
    {
      v5 = sub_100539C58();
      v6 = sub_10074E314();
      [v2 bounds];
      v21[3] = sub_10074E164();
      v21[4] = &protocol witness table for MediumAdLockupWithAlignedRegionBackground;
      v21[0] = v6;
      sub_10000C824(v21, v20);

      if (swift_dynamicCast())
      {
        v7 = v20[45];
        sub_10074E154();
        v8 = sub_10074EF24();

        if (v8)
        {
          if (sub_10074E144())
          {
            v19 = v7;
            if (qword_100920850 != -1)
            {
              swift_once();
            }

            sub_10029F304();
            sub_10074F4B4();
            sub_100055D54(v20);
            sub_10074F374();
            v17 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
            v9 = *(*&v5[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
            sub_10074F324();
            sub_100743364();
            [v9 setContentMode:sub_10074F184()];
            sub_100747FB4();
            sub_1007433A4();
            v16 = v8;
            if (!sub_10074F1E4())
            {
              sub_10000D198();
              sub_100753E34();
            }

            sub_100743224();

            v10 = *(*&v5[v17] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
            v11 = sub_1007433C4();
            v12 = sub_10004D658();
            v13 = v10;
            v18 = v11;
            sub_100744204();

            sub_10074F374();
            v14 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
            v15 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView];
            sub_10074F324();
            sub_100743364();
            [v15 setContentMode:{sub_10074F184(), v16, v12, v18, v19}];
            sub_100747FB4();
            sub_1007433A4();
            if (!sub_10074F1E4())
            {
              sub_10000D198();
              sub_100753E34();
            }

            sub_100743224();
            [*&v5[v14] setContentMode:2];
            sub_100744204();
          }
        }
      }

      sub_10000C620(v21);
    }

    else
    {
    }
  }
}

void sub_10053A440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100539C58();
  v3 = OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  v4 = *(*&v7[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_100743344();

  sub_100743344();
  v5 = *(*&v7[v3] + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  sub_1007433C4();
  sub_10004D658();
  v6 = v5;
  sub_100744274();

  sub_100744274();
}

void (*sub_10053A6B0(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10000C824(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100012160(v6, v4 + 32);
  return sub_10053AC68;
}

void sub_10053A778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000C518(&unk_100925380, qword_1007A8E40);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = sub_100752914();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10000C824(a3, v14);
      sub_10000C518(&qword_1009242A0, &qword_1007A6400);
      sub_10074FBB4();
      if (swift_dynamicCast())
      {
        sub_10074FB64();

        sub_1007451E4();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10000C8CC(v6, &unk_100925380, qword_1007A8E40);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
          sub_100749544();

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
}

id sub_10053AA1C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell(uint64_t a1)
{
  result = qword_10093D9B8;
  if (!qword_10093D9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10053AAFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100539C58();
  sub_1002EF4D8(a1, a2);
}

uint64_t sub_10053AB68()
{
  v0 = sub_100539C58();
  v1 = *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension19TodayCardLockupView_isDisplayingSearchAd);

  return v1;
}

uint64_t sub_10053ABB0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10053ABE8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10053AC20()
{

  sub_10000C620((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_10053AC74(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v13 = a1;
    v14 = sub_100754664();
    if (v14)
    {
      v15 = v14;
      v1 = sub_100632C90();
      sub_1004A1558(v1 + 32, v15, v13);
      v17 = v16;

      if (v17 != v15)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_100754664();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v9 = sub_100754574();
          v10 = sub_100754574();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v6);
          v10 = *(v1 + 8 * v7 + 32);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_10025F2C0();
          v11 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v11) = 0;
        }

        v12 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v10;

        if ((v1 & 0x8000000000000000) != 0 || v11)
        {
          a1 = sub_10025F2C0();
          v1 = a1;
          v12 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v12 + 16))
        {
          goto LABEL_34;
        }

        *(v12 + 8 * v7 + 32) = v9;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void sub_10053AE88(void *a1, __n128 a2)
{
  v3 = sub_100746674();
  __chkstk_darwin(v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v30 = v24 - v9;
  v10 = a1[2];
  if (v10 < 2)
  {
    return;
  }

  v11 = 0;
  v12 = v10 >> 1;
  v13 = v10 - 1;
  v25 = v10 >> 1;
  v26 = v7;
  v24[1] = v7 + 16;
  v27 = (v7 + 40);
  while (1)
  {
    if (v11 == v13)
    {
      goto LABEL_5;
    }

    v14 = a1[2];
    if (v11 >= v14)
    {
      break;
    }

    v15 = v5;
    v29 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v16 = a1 + v29;
    v17 = *(v7 + 72);
    v18 = a1;
    v19 = *(v7 + 16);
    v28 = v17 * v11;
    v19(v30, &v16[v17 * v11], v3, v8);
    if (v13 >= v14)
    {
      goto LABEL_14;
    }

    v20 = v17 * v13;
    v21 = &v16[v17 * v13];
    v5 = v15;
    (v19)(v15, v21, v3);
    a1 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_10025DAA8(v18);
    }

    v22 = a1 + v29;
    v23 = *v27;
    (*v27)(a1 + v29 + v28, v5, v3);
    if (v13 >= a1[2])
    {
      goto LABEL_15;
    }

    v23(&v22[v20], v30, v3);
    v12 = v25;
    v7 = v26;
LABEL_5:
    ++v11;
    --v13;
    if (v12 == v11)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

unint64_t sub_10053B0B4(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = a1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_3;
  }

  while (1)
  {
    v18 = a1;
    v19 = sub_100754664();
    if (v19)
    {
      v20 = v19;
      v1 = sub_100632C90();
      sub_1004A2564(v1 + 32, v20, v18);
      v22 = v21;

      if (v22 != v20)
      {
        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_3;
    }

    while (1)
    {

      v1 = _swiftEmptyArrayStorage;
LABEL_3:
      if ((v1 & 0x8000000000000000) == 0 && (v1 & 0x4000000000000000) == 0)
      {
        v2 = *(v1 + 16);
        v3 = v2 >> 1;
        goto LABEL_6;
      }

LABEL_38:
      a1 = sub_100754664();
      if (a1 >= -1)
      {
        break;
      }

      __break(1u);
    }

    v2 = a1;
    v3 = a1 / 2;
LABEL_6:
    if (v2 + 1 < 3)
    {
      return v1;
    }

    v5 = -v3;
    v6 = 4;
    while (1)
    {
      v7 = v2 - (v6 - 3);
      if (__OFSUB__(v2, v6 - 3))
      {
        break;
      }

      a1 = v6 - 4;
      if (v6 - 4 != v7)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v10 = sub_100754574();
          v11 = sub_100754574();
        }

        else
        {
          if (a1 < 0)
          {
            goto LABEL_31;
          }

          v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1 >= v8)
          {
            goto LABEL_32;
          }

          if (v7 >= v8)
          {
            goto LABEL_33;
          }

          v9 = *(v1 + 8 * v7 + 32);
          v10 = *(v1 + 8 * v6);
          v11 = v9;
        }

        v12 = v11;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_10025F2C0();
          v13 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v13) = 0;
        }

        v14 = v1 & 0xFFFFFFFFFFFFFF8;
        v15 = *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6);
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v6) = v12;

        if ((v1 & 0x8000000000000000) != 0 || v13)
        {
          a1 = sub_10025F2C0();
          v1 = a1;
          v14 = a1 & 0xFFFFFFFFFFFFFF8;
          if ((v7 & 0x8000000000000000) != 0)
          {
LABEL_29:
            __break(1u);
            break;
          }
        }

        else if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        if (v7 >= *(v14 + 16))
        {
          goto LABEL_34;
        }

        v16 = v14 + 8 * v7;
        v17 = *(v16 + 32);
        *(v16 + 32) = v10;
      }

      ++v6;
      if (v5 + v6 == 4)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

uint64_t sub_10053B2C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10053B318(int a1, __n128 a2)
{
  sub_100754534(29);
  if (a1)
  {
    if (a1 == 1)
    {
      v3._countAndFlagsBits = 0x64726177726F66;
    }

    else
    {
      v3._countAndFlagsBits = 1701736302;
    }

    if (a1 == 1)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else
  {
    v4 = 0xE800000000000000;
    v3._countAndFlagsBits = 0x647261776B636162;
  }

  v3._object = v4;
  sub_1007531B4(v3);

  v12._countAndFlagsBits = 8250;
  v12._object = 0xE200000000000000;
  sub_1007531B4(v12);
  v5 = 0xEC000000676E6972;
  v6 = 0x6165707061736964;
  if (BYTE1(a1) != 1)
  {
    v6 = 1701736302;
    v5 = 0xE400000000000000;
  }

  if (BYTE1(a1))
  {
    v7._countAndFlagsBits = v6;
  }

  else
  {
    v7._countAndFlagsBits = 0x6E69726165707061;
  }

  if (BYTE1(a1))
  {
    v8 = v5;
  }

  else
  {
    v8 = 0xE900000000000067;
  }

  v7._object = v8;
  sub_1007531B4(v7);

  v13._countAndFlagsBits = 8250;
  v13._object = 0xE200000000000000;
  sub_1007531B4(v13);
  v14._countAndFlagsBits = sub_100753434();
  sub_1007531B4(v14);

  v15._object = 0x80000001007833C0;
  v15._countAndFlagsBits = 0xD000000000000011;
  sub_1007531B4(v15);
  if ((a1 & 0x10000) != 0)
  {
    v9._countAndFlagsBits = 1702195828;
  }

  else
  {
    v9._countAndFlagsBits = 0x65736C6166;
  }

  if ((a1 & 0x10000) != 0)
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  v9._object = v10;
  sub_1007531B4(v9);

  return 0;
}

uint64_t sub_10053B4D8(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  if (*(a1 + 10))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(a2 + 10))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  return sub_10053EF08(*(a1 + 8) | v4, *(a2 + 8) | v5, *a1, *a2);
}

uint64_t sub_10053B510(__n128 a1)
{
  if (*(v1 + 10))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  a1.n128_u64[0] = *v1;
  return sub_10053B318(*(v1 + 8) | v2, a1);
}

Swift::Int sub_10053B530()
{
  sub_100754834();
  sub_100753174();

  return sub_100754884();
}

double sub_10053B5CC(uint64_t a1)
{
  sub_100753174();

  return result;
}

Swift::Int sub_10053B654(uint64_t a1)
{
  sub_100754834();
  sub_100753174();

  return sub_100754884();
}

unint64_t sub_10053B6EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10053F128(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10053B71C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64726177726F66;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x647261776B636162;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10053B774(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64726177726F66;
  if (v2 != 1)
  {
    v4 = 1701736302;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x647261776B636162;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64726177726F66;
  if (*a2 != 1)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x647261776B636162;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100754754();
  }

  return v11 & 1;
}

Swift::Int sub_10053B868()
{
  sub_100754834();
  sub_100753174();

  return sub_100754884();
}

double sub_10053B910(uint64_t a1)
{
  sub_100753174();

  return result;
}

Swift::Int sub_10053B9A4(uint64_t a1)
{
  sub_100754834();
  sub_100753174();

  return sub_100754884();
}

unint64_t sub_10053BA48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10053F1DC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10053BA78(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0xEC000000676E6972;
  v5 = 0x6165707061736964;
  if (v2 != 1)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E69726165707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10053BADC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6165707061736964;
  v4 = 0xEC000000676E6972;
  if (v2 != 1)
  {
    v3 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E69726165707061;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  v7 = 0x6165707061736964;
  v8 = 0xEC000000676E6972;
  if (*a2 != 1)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E69726165707061;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100754754();
  }

  return v11 & 1;
}

id sub_10053BBE0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pagingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackerLookup;
  *&v4[v9] = sub_10041553C(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isAnimating] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isFixingContentOffset] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_meetsMinimumPageRequirement] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_needsPageViewLayout] = 1;
  v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection] = 2;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPageIndex] = -1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker] = 0;
  v4[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset] = 0;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for HeroCarouselScrollView();
  v10 = objc_msgSendSuper2(&v12, "initWithFrame:", a1, a2, a3, a4);
  [v10 setPagingEnabled:1];
  [v10 setShowsHorizontalScrollIndicator:0];
  [v10 setShowsVerticalScrollIndicator:0];
  [v10 setDelegate:v10];

  return v10;
}

void sub_10053BEF8(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers;

  LOBYTE(a1) = sub_10011CB8C(v4, a1);

  if ((a1 & 1) == 0)
  {
    v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_needsPageViewLayout] = 1;
    sub_10053D324();
    v5 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker;
    if (!*&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker])
    {
      v6 = *&v1[v3];
      if (v6 >> 62)
      {
        if (!sub_100754664())
        {
          return;
        }
      }

      else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      if ((v6 & 0xC000000000000001) != 0)
      {

        v7 = sub_100754574();
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v7 = *(v6 + 32);
      }

      v8 = *&v1[v5];
      *&v1[v5] = v7;
      swift_retain_n();
      sub_10053C4A0(v8);

      [*(v7 + 32) frame];
      v10 = v9;
      v11 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset;
      v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset] = 1;
      [v1 contentOffset];
      [v1 setContentOffset:v10];

      v1[v11] = 0;
    }
  }
}

double sub_10053C07C(char a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isAnimating;
  v3 = v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isAnimating];
  v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isAnimating] = a1;
  if (v3 != (a1 & 1))
  {
    v4 = [v1 panGestureRecognizer];
    [v4 setEnabled:(v1[v2] & 1) == 0];

    v5 = v1[v2];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [*(Strong + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_pageControl) setUserInteractionEnabled:v5 ^ 1u];

      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_10053C154()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker);
  if (!v1)
  {
    return;
  }

  v2 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection;
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection))
  {
    v3 = sub_100754754();

    if ((v3 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
  }

  v4 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers);
  if (v4 >> 62)
  {
    if (!sub_100754664())
    {
      goto LABEL_19;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    v5 = sub_100754574();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v5 = *(v4 + 32);
  }

  v6 = *(v1 + 16);

  v7 = *(v5 + 16);

  if (v6 == v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount);
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (!v9)
    {
      v11 = *(v1 + 16);
      if (v11 == v10)
      {
        sub_10053D898(0);
        goto LABEL_37;
      }

      if (!__OFADD__(v11, 1))
      {
        sub_10053D898(v11 + 1);
        goto LABEL_37;
      }

LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

LABEL_19:
  if (*(v0 + v2) && *(v0 + v2) == 1)
  {
  }

  else
  {
    v12 = sub_100754754();

    if ((v12 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  v13 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers);
  if (v13 >> 62)
  {
    v14 = sub_100754664();
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_37;
    }
  }

  v15 = v14 - 1;
  if (__OFSUB__(v14, 1))
  {
    goto LABEL_44;
  }

  if ((v13 & 0xC000000000000001) == 0)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v15 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v13 + 8 * v15 + 32);

      goto LABEL_30;
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_45:

  v16 = sub_100754574();

LABEL_30:
  v17 = *(v1 + 16);

  v18 = *(v16 + 16);

  if (v17 == v18)
  {
    v19 = *(v1 + 16);
    if (v19)
    {
      v20 = v19 - 1;
      if (!__OFSUB__(v19, 1))
      {
        goto LABEL_36;
      }

      __break(1u);
    }

    v21 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount);
    v20 = v21 - 1;
    if (!__OFSUB__(v21, 1))
    {
LABEL_36:
      sub_10053D668(v20);
      goto LABEL_37;
    }

LABEL_50:
    __break(1u);
    return;
  }

LABEL_37:
}

void sub_10053C4A0(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker];
  if (!v2 || a1 && v2[2] == *(a1 + 16))
  {
    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = v2[3];
    v4 = v2[4];

    v5 = v4;
    sub_100233B94(v5, v3);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  if ([v1 _isAnimatingScroll])
  {
    goto LABEL_45;
  }

  v6 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers;
  v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers];
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_27:

    goto LABEL_28;
  }

  v8 = sub_100754664();
  if (!v8)
  {
    goto LABEL_27;
  }

LABEL_11:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
LABEL_49:

    v27 = sub_100754574();

    v28 = v2[2];
    v29 = *(v27 + 16);
    swift_unknownObjectRelease();
    if (v28 != v29)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
    goto LABEL_49;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v10 = *(v7 + 8 * v9 + 32);
  v11 = v2[2];
  v12 = *(v10 + 16);

  if (v11 != v12)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection] && v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection] == 1)
  {

LABEL_20:

    v14 = v2[2];
    if (v14)
    {
      v15 = v14 - 1;
      if (!__OFSUB__(v14, 1))
      {
        goto LABEL_25;
      }

      __break(1u);
    }

    v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount];
    v15 = v16 - 1;
    if (!__OFSUB__(v16, 1))
    {
LABEL_25:
      sub_10053D668(v15);
      goto LABEL_45;
    }

LABEL_57:
    __break(1u);
    return;
  }

  v13 = sub_100754754();

  if (v13)
  {
    goto LABEL_20;
  }

LABEL_28:
  v17 = *&v1[v6];
  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

LABEL_44:

    goto LABEL_45;
  }

  if (!sub_100754664())
  {
    goto LABEL_44;
  }

LABEL_30:
  if ((v17 & 0xC000000000000001) == 0)
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_55;
    }

    v18 = *(v17 + 32);

    goto LABEL_33;
  }

LABEL_53:

  v18 = sub_100754574();

LABEL_33:
  v19 = v2[2];

  v20 = *(v18 + 16);

  if (v19 != v20)
  {
    goto LABEL_45;
  }

  if (!v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection])
  {

    goto LABEL_38;
  }

  v21 = sub_100754754();

  if (v21)
  {
LABEL_38:
    v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount];
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (!v23)
    {
      v25 = v2[2];
      if (v25 == v24)
      {
        v26 = 0;
LABEL_42:
        sub_10053D898(v26);
        goto LABEL_45;
      }

      v26 = v25 + 1;
      if (!__OFADD__(v25, 1))
      {
        goto LABEL_42;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_45:
}

void sub_10053C8B8(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v31 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers;
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers];
  if (v5 >> 62)
  {
    goto LABEL_57;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_100754574();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          v6 = sub_100754664();
          goto LABEL_3;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }
      }

      [*(v8 + 32) removeFromSuperview];

      ++v7;
    }

    while (v9 != v6);
  }

  v5 = a1;
  if (a1 >> 62)
  {
    v10 = sub_100754664();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount;
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount] = v10;
  v3[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_meetsMinimumPageRequirement] = v10 > 1;
  [v3 setScrollEnabled:?];
  v39 = _swiftEmptyArrayStorage;
  v34 = v11;
  v12 = *&v3[v11];
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v12)
    {
      v13 = 0;
      v14 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackerLookup;
      v32 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPageIndex;
      v35 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
      while (1)
      {
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_49;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v17 = sub_100754574();
        }

        else
        {
          if ((a2 & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v17 = *(a1 + 32 + 8 * a2);
        }

        v18 = v17;
        type metadata accessor for HeroCarouselScrollView.PageViewTracker();
        v19 = swift_allocObject();
        *(v19 + 16) = v13;
        *(v19 + 24) = a2;
        *(v19 + 32) = v18;

        sub_100753284();
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v36 = v39;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v38 = *&v3[v14];
        *&v3[v14] = 0x8000000000000000;
        sub_100673634(v19, v13, isUniquelyReferenced_nonNull_native);
        *&v3[v14] = v38;
        swift_endAccess();
        [v3 addSubview:*(v19 + 32)];
        v21 = *(v19 + 32);
        [v3 bounds];
        MinY = CGRectGetMinY(v40);
        [v3 bounds];
        Width = CGRectGetWidth(v41);
        [v3 bounds];
        [v21 setFrame:{0.0, MinY, Width, CGRectGetHeight(v42)}];

        [*(v19 + 32) layoutIfNeeded];
        v24 = sub_10074F3E4();
        v37[3] = v24;
        v37[4] = sub_1002968B4();
        v25 = sub_10000D134(v37);
        (*(*(v24 - 8) + 104))(v25, v35, v24);
        LOBYTE(v24) = sub_10074FC74();
        sub_10000C620(v37);
        if ((v24 & 1) != 0 && *&v3[v32] == -1)
        {
          *&v3[v32] = a2;
          if (a2 != -1)
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              sub_100233E10(v3, -1, a2);
              swift_unknownObjectRelease();
            }
          }
        }

        v5 = [v3 traitCollection];
        v26 = [v5 layoutDirection];

        if (v26 == 1)
        {
          break;
        }

        v27 = *&v3[v34];
        v15 = __OFSUB__(v27, 1);
        v28 = (v27 - 1);
        if (v15)
        {
          goto LABEL_51;
        }

        if (a2 != v28)
        {
          v15 = __OFADD__(a2++, 1);
          if (v15)
          {
            goto LABEL_55;
          }

LABEL_19:
          if (v16 == v12)
          {
            goto LABEL_47;
          }

          goto LABEL_20;
        }

        if (v16 == v12)
        {
          goto LABEL_47;
        }

        a2 = 0;
LABEL_20:
        ++v13;
        if (v16 >= v12)
        {
          goto LABEL_50;
        }
      }

      if (a2)
      {
        v15 = __OFSUB__(a2--, 1);
        if (v15)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v29 = *&v3[v34];
        a2 = v29 - 1;
        if (__OFSUB__(v29, 1))
        {
          goto LABEL_56;
        }
      }

      goto LABEL_19;
    }

    v36 = _swiftEmptyArrayStorage;
LABEL_47:
    v30 = *&v3[v31];
    *&v3[v31] = v36;
    sub_10053BEF8(v30);
  }
}

void sub_10053CDE0(unsigned __int8 a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (v5 == 1)
  {
    if (a1 == 1)
    {

LABEL_5:
      v7 = 0;
      v8 = 1;
      goto LABEL_11;
    }

    v6 = sub_100754754();

    if (v6)
    {
      goto LABEL_5;
    }
  }

  if (a1)
  {
    if (a1 != 1)
    {
      goto LABEL_20;
    }

    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v7 = a1;
LABEL_11:
  v9 = sub_100754754();

  if (v9)
  {
    return;
  }

  if (v2[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_meetsMinimumPageRequirement] != 1)
  {
    return;
  }

  v10 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker];
  if (!v10)
  {
    return;
  }

  if ((v8 & 1) == 0)
  {

    goto LABEL_24;
  }

  v11 = sub_100754754();

  if (v11)
  {
LABEL_24:
    v14 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount];
    v15 = __OFSUB__(v14, 1);
    v16 = v14 - 1;
    if (v15)
    {
      __break(1u);
      goto LABEL_37;
    }

    v17 = *(v10 + 16);
    if (v17 == v16)
    {
      v13 = 0;
LABEL_31:
      v19 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackerLookup;
      swift_beginAccess();
      v20 = *&v2[v19];
      if (*(v20 + 16) && (v21 = sub_100412104(v13), (v22 & 1) != 0))
      {
        v23 = *(*(v20 + 56) + 8 * v21);
        v2[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection] = v7;

        sub_10053C154();
        [*(v23 + 32) frame];
        v25 = v24;
        v26 = [objc_allocWithZone(CASpringAnimation) init];
        [v26 setMass:1.0];
        [v26 setStiffness:80.0];
        [v26 setDamping:35.0];
        v27 = v26;
        [v27 durationForEpsilon:COERCE_DOUBLE(1)];
        [v27 setDuration:?];

        v28 = *(v10 + 32);
        sub_1005EAD48(a1 | 0x100, 1.0);

        sub_10053C07C(1);
        [v2 _setContentOffset:1 animated:3 animationCurve:0 animationAdjustsForContentOffsetDelta:v27 animation:{v25, 0.0}];
        v29 = *(v23 + 32);
        sub_1005EAD48(a1, 1.0);
      }

      else
      {
      }

      return;
    }

    v13 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_31;
    }

    __break(1u);
LABEL_30:
    v18 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount];
    v13 = v18 - 1;
    if (!__OFSUB__(v18, 1))
    {
      goto LABEL_31;
    }

LABEL_37:
    __break(1u);
    return;
  }

  v12 = *(v10 + 16);
  if (!v12)
  {
    goto LABEL_30;
  }

  v13 = v12 - 1;
  if (!__OFSUB__(v12, 1))
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_20:
}

id sub_10053D1F0(uint64_t a1, char a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers);
  if (v5 >> 62)
  {
LABEL_17:
    v6 = sub_100754664();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_100754574();
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      if ((a2 & 1) == 0 && *(v8 + 24) == a1)
      {

        v10 = *(v8 + 32);

        return v10;
      }

      ++v7;
    }

    while (v9 != v6);
  }

  return 0;
}

void sub_10053D324()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_needsPageViewLayout;
  if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_needsPageViewLayout) == 1 && *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount) >= 1)
  {
    *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_needsPageViewLayout) = 0;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10053F1AC;
    *(v4 + 24) = v3;
    v7[4] = sub_100045E0C;
    v7[5] = v4;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_10011B528;
    v7[3] = &unk_10087A618;
    v5 = _Block_copy(v7);
    v6 = isEscapingClosureAtFileLocation;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  *(isEscapingClosureAtFileLocation + v1) = 0;
}

double sub_10053D4B4(char *a1)
{
  [a1 bounds];
  v2 = CGRectGetWidth(v13) * *&a1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount];
  [a1 bounds];
  [a1 setContentSize:{v2, CGRectGetHeight(v14)}];
  v3 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers];
  if (v3 >> 62)
  {
LABEL_17:
    v4 = sub_100754664();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_100754574();
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      v8 = *(v6 + 32);
      [a1 bounds];
      v9 = CGRectGetWidth(v15) * v5;
      [a1 bounds];
      Width = CGRectGetWidth(v16);
      [a1 bounds];
      [v8 setFrame:{v9, 0.0, Width, CGRectGetHeight(v17)}];

      ++v5;
    }

    while (v7 != v4);
  }

  return result;
}

void sub_10053D668(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount;
  v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount];
  if (v3 < 0)
  {
    goto LABEL_23;
  }

  if (!v3)
  {
LABEL_15:
    v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers];
    *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers] = _swiftEmptyArrayStorage;
    sub_10053BEF8(v10);

    [v1 contentOffset];
    if (v11 < 0.0)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = v11;
    }

    [v1 contentSize];
    if (v13 < v12)
    {
      v12 = v13;
    }

    [v1 bounds];
    *v14.i64 = v12 / CGRectGetWidth(v20);
    *v15.i64 = *v14.i64 - trunc(*v14.i64);
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v19 = *vbslq_s8(vnegq_f64(v16), v15, v14).i64;
    [v1 bounds];
    v17 = v19 * CGRectGetWidth(v21);
    v18 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset;
    v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset] = 1;
    [v1 contentOffset];
    [v1 setContentOffset:v17];
    v1[v18] = 0;
    return;
  }

  v5 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackerLookup;
  swift_beginAccess();
  while (1)
  {
    if (!*(*&v1[v5] + 16))
    {
      goto LABEL_5;
    }

    sub_100412104(a1);
    if ((v6 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_retain_n();
    sub_100753284();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v7 = *&v1[v2];
    v8 = __OFSUB__(v7, 1);
    v9 = v7 - 1;
    if (v8)
    {
      break;
    }

    if (a1 == v9)
    {
      a1 = 0;
    }

    else
    {
      v8 = __OFADD__(a1++, 1);
      if (v8)
      {
        goto LABEL_22;
      }
    }

LABEL_5:
    if (!--v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_10053D898(uint64_t a1)
{
  v3 = sub_100754754();
  v4 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount;
  v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount];
  if (v5 < 0)
  {
    goto LABEL_37;
  }

  v6 = v3;
  if (!v5)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_24:
    if ((v6 & 1) == 0)
    {
      v8 = sub_10053AC74(_swiftEmptyArrayStorage);
    }

    v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers];
    *&v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers] = v8;
    sub_10053BEF8(v14);

    [v1 contentOffset];
    if (v15 < 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v15;
    }

    [v1 contentSize];
    v18 = v17;
    [v1 bounds];
    v19 = v18 - CGRectGetWidth(v31);
    if (v19 >= v16)
    {
      v20 = v16;
    }

    else
    {
      v20 = v19;
    }

    [v1 bounds];
    *v21.i64 = v20 / CGRectGetWidth(v32);
    v30 = v21;
    [v1 contentSize];
    v23 = v22;
    [v1 bounds];
    v24 = v23 - CGRectGetWidth(v33);
    *v25.i64 = *v30.i64 - trunc(*v30.i64);
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v27 = 1.0 - *vbslq_s8(vnegq_f64(v26), v25, v30).i64;
    [v1 bounds];
    v28 = v24 - v27 * CGRectGetWidth(v34);
    v29 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset;
    v1[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset] = 1;
    [v1 contentOffset];
    [v1 setContentOffset:v28];
    v1[v29] = 0;
    return;
  }

  v7 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackerLookup;
  swift_beginAccess();
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (!*(*&v1[v7] + 16))
    {
      goto LABEL_5;
    }

    sub_100412104(a1);
    if ((v9 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_retain_n();
    sub_100753284();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v8 = _swiftEmptyArrayStorage;
    if (v6)
    {
      break;
    }

    if (a1)
    {
      v11 = __OFSUB__(a1--, 1);
      if (v11)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v13 = *&v1[v4];
      a1 = v13 - 1;
      if (__OFSUB__(v13, 1))
      {
        goto LABEL_36;
      }
    }

LABEL_5:
    if (!--v5)
    {
      goto LABEL_24;
    }
  }

  v10 = *&v1[v4];
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (!v11)
  {
    if (a1 == v12)
    {
      a1 = 0;
    }

    else
    {
      v11 = __OFADD__(a1++, 1);
      if (v11)
      {
        goto LABEL_35;
      }
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_10053DB8C()
{
  [v0 contentOffset];
  v2 = v1;
  [v0 bounds];
  *v3.i64 = v2 / CGRectGetWidth(v15);
  *v4.i64 = *v3.i64 - trunc(*v3.i64);
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  v6 = *vbslq_s8(vnegq_f64(v5), v4, v3).i64;
  if (v6 == 0.0)
  {
    if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (*v3.i64 <= -9.22337204e18)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = 9.22337204e18;
    if (*v3.i64 < 9.22337204e18)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v6 >= 0.5)
  {
LABEL_11:
    *v3.i64 = ceil(*v3.i64);
    if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (*v3.i64 <= -9.22337204e18)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (*v3.i64 >= 9.22337204e18)
    {
LABEL_35:
      __break(1u);
      return;
    }

    goto LABEL_14;
  }

  *v3.i64 = floor(*v3.i64);
  if ((v3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (*v3.i64 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (*v3.i64 >= 9.22337204e18)
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_14:
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount];
  v8 = __OFSUB__(v7, 1);
  v9 = v7 - 1;
  if (v8)
  {
    __break(1u);
LABEL_26:

    v12 = sub_100754574();

    goto LABEL_22;
  }

  if (v9 >= (*v3.i64 & ~(*v3.i64 >> 63)))
  {
    v10 = *v3.i64 & ~(*v3.i64 >> 63);
  }

  else
  {
    v10 = v9;
  }

  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers];
  if ((v11 & 0xC000000000000001) != 0)
  {
    goto LABEL_26;
  }

  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v12 = *(v11 + 8 * v10 + 32);

LABEL_22:
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker];
  *&v0[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker] = v12;

  sub_10053C4A0(v13);
}

void sub_10053DDA8()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers);
  if (v2 >> 62)
  {
    goto LABEL_74;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    goto LABEL_15;
  }

  v56 = _swiftEmptyArrayStorage;
  v5 = v2;

  v2 = sub_10001E77C(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v43 = v1;
    v6 = 0;
    v1 = 0;
    v4 = v56;
    v7 = v5;
    v47 = v5;
    v48 = v5 & 0xC000000000000001;
    v45 = v5 & 0xFFFFFFFFFFFFFF8;
    v46 = v3;
    do
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        v40 = v2;
        v3 = sub_100754664();
        v2 = v40;
        goto LABEL_3;
      }

      if (v48)
      {
        v9 = sub_100754574();
      }

      else
      {
        if (v6 >= *(v45 + 16))
        {
          goto LABEL_73;
        }

        v9 = *(v7 + 8 * v6 + 32);
      }

      v51 = v9;
      sub_10053E2E8(&v51, v50, &v52);

      v10 = v52;
      v11 = v53;
      v12 = v54;
      v13 = v55;
      v56 = v4;
      v15 = v4[2];
      v14 = v4[3];
      if (v15 >= v14 >> 1)
      {
        v2 = sub_10001E77C((v14 > 1), v15 + 1, 1);
        v4 = v56;
      }

      v4[2] = v15 + 1;
      v16 = &v4[2 * v15];
      v16[4] = v10;
      *(v16 + 40) = v11;
      *(v16 + 41) = v12;
      *(v16 + 42) = v13;
      ++v6;
      v7 = v47;
    }

    while (v8 != v46);

    v1 = v43;
LABEL_15:
    v17 = *&v50[v1];
    if (v17 >> 62)
    {
      v41 = *&v50[v1];
      v1 = sub_100754664();
      v17 = v41;
    }

    else
    {
      v1 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v42 = v17;

    if (v1)
    {
      v18 = 0;
      v19 = 0;
      v44 = v1;
      while (2)
      {
        if ((v42 & 0xC000000000000001) != 0)
        {
          v2 = sub_100754574();
          v20 = v2;
        }

        else
        {
          if (v19 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_71;
          }

          v20 = *(v42 + 32 + 8 * v19);
        }

        v21 = v4[2];
        if (v19 == v21)
        {

          goto LABEL_67;
        }

        if (v19 >= v21)
        {
          goto LABEL_72;
        }

        v22 = *&v4[v18 + 4];
        v23 = LOBYTE(v4[v18 + 5]);
        v24 = BYTE1(v4[v18 + 5]);
        v25 = BYTE2(v4[v18 + 5]);
        v26 = *(v20 + 32) + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_pagingProgress;
        v27 = *v26;
        v28 = *(v26 + 8);
        v29 = *(v26 + 9);
        v49 = *(v26 + 10);
        *v26 = v22;
        *(v26 + 8) = v23;
        *(v26 + 9) = v24;
        LODWORD(v50) = v25;
        *(v26 + 10) = v25;
        if (v22 != v27)
        {
          goto LABEL_19;
        }

        v30 = 0x64726177726F66;
        if (v23 != 1)
        {
          v30 = 1701736302;
        }

        v31 = 0xE700000000000000;
        if (v23 != 1)
        {
          v31 = 0xE400000000000000;
        }

        if (v23)
        {
          v32 = v30;
        }

        else
        {
          v32 = 0x647261776B636162;
        }

        if (v23)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0xE800000000000000;
        }

        if (v28)
        {
          if (v28 == 1)
          {
            v34 = 0xE700000000000000;
            if (v32 != 0x64726177726F66)
            {
              goto LABEL_46;
            }

LABEL_44:
            if (v33 == v34)
            {

LABEL_47:
              if (v24)
              {
                if (v24 == 1)
                {
                  v36 = 0x6165707061736964;
                  v37 = 0xEC000000676E6972;
                  if (!v29)
                  {
LABEL_56:
                    v38 = 0xE900000000000067;
                    if (v36 != 0x6E69726165707061)
                    {
                      goto LABEL_62;
                    }

LABEL_59:
                    if (v37 == v38)
                    {

                      if (v50 == v49)
                      {
                        goto LABEL_20;
                      }

                      goto LABEL_19;
                    }

                    goto LABEL_62;
                  }
                }

                else
                {
                  v37 = 0xE400000000000000;
                  v36 = 1701736302;
                  if (!v29)
                  {
                    goto LABEL_56;
                  }
                }
              }

              else
              {
                v36 = 0x6E69726165707061;
                v37 = 0xE900000000000067;
                if (!v29)
                {
                  goto LABEL_56;
                }
              }

              if (v29 == 1)
              {
                v38 = 0xEC000000676E6972;
                if (v36 == 0x6165707061736964)
                {
                  goto LABEL_59;
                }
              }

              else
              {
                v38 = 0xE400000000000000;
                if (v36 == 1701736302)
                {
                  goto LABEL_59;
                }
              }

LABEL_62:
              v39 = sub_100754754();

              if ((v39 & 1) != 0 && v50 == v49)
              {
                goto LABEL_20;
              }

              goto LABEL_19;
            }
          }

          else
          {
            v34 = 0xE400000000000000;
            if (v32 == 1701736302)
            {
              goto LABEL_44;
            }
          }

LABEL_46:
          v35 = sub_100754754();

          if (v35)
          {
            goto LABEL_47;
          }

LABEL_19:
          sub_1005EA524();
          sub_1005EA828();
LABEL_20:
          ++v19;

          v18 += 2;
          v1 = v44;
          if (v44 == v19)
          {
            goto LABEL_67;
          }

          continue;
        }

        break;
      }

      v34 = 0xE800000000000000;
      if (v32 != 0x647261776B636162)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

LABEL_67:
  }
}

id sub_10053E2E8@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  [*(*a1 + 32) frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [a2 superview];
  [a2 convertRect:v13 toView:{v6, v8, v10, v12}];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [a2 frame];
  v46.origin.x = v22;
  v46.origin.y = v23;
  v46.size.width = v24;
  v46.size.height = v25;
  v40.origin.x = v15;
  v40.origin.y = v17;
  v40.size.width = v19;
  v40.size.height = v21;
  v41 = CGRectIntersection(v40, v46);
  x = v41.origin.x;
  y = v41.origin.y;
  width = v41.size.width;
  height = v41.size.height;
  v47.origin.x = CGRectNull.origin.x;
  v47.origin.y = CGRectNull.origin.y;
  v47.size.width = CGRectNull.size.width;
  v47.size.height = CGRectNull.size.height;
  if (CGRectEqualToRect(v41, v47))
  {
    v42.origin.x = v15;
    v42.origin.y = v17;
    v42.size.width = v19;
    v42.size.height = v21;
    if (CGRectGetMaxX(v42) > 0.0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 1.0;
    }
  }

  else
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    v31 = CGRectGetWidth(v43);
    [a2 bounds];
    v30 = v31 / CGRectGetWidth(v44);
  }

  v45.origin.x = v15;
  v45.origin.y = v17;
  v45.size.width = v19;
  v45.size.height = v21;
  MinX = CGRectGetMinX(v45);
  v33 = a2[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection];
  if (MinX <= 0.0)
  {
    if (v33 == 1)
    {

      goto LABEL_14;
    }

    v36 = sub_100754754();

    if (v36)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v33 == 1)
    {

      goto LABEL_16;
    }

    v34 = sub_100754754();

    if ((v34 & 1) == 0)
    {
LABEL_14:

      v35 = 1;
LABEL_17:
      v30 = 1.0 - v30;
      goto LABEL_18;
    }
  }

LABEL_16:
  v37 = sub_100754754();

  v35 = 0;
  if (v37)
  {
    goto LABEL_17;
  }

LABEL_18:
  v38 = a2[OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection];
  result = [a2 _isAnimatingScroll];
  *a3 = v30;
  *(a3 + 8) = v38;
  *(a3 + 9) = v35;
  *(a3 + 10) = result ^ 1;
  return result;
}

void sub_10053E76C(void *a1)
{
  v3 = sub_10053C07C(0);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isFixingContentOffset;
  if ((*(v1 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isFixingContentOffset) & 1) != 0 || ([a1 contentOffset], (v6 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker)) != 0) && (v7 = v5, objc_msgSend(*(v6 + 32), "frame"), v7 == v8))
  {
    *(v1 + v4) = 0;

    sub_10053E8A0(0);
  }

  else
  {
    *(v1 + v4) = 1;

    sub_10053CDE0(1u);
  }
}

void sub_10053E8A0(char a1)
{
  v2 = v1;
  v4 = sub_10074A204();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v8 = &v34[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker);
  if (!v9)
  {
    return;
  }

  v33 = v6;
  if (a1)
  {
    v10 = *(v9 + 16);

    v11 = v10;
LABEL_9:
    sub_10053D668(v11);
    goto LABEL_10;
  }

  v12 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection;
  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection) && *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection) == 1)
  {

LABEL_8:
    v11 = *(v9 + 16);
    goto LABEL_9;
  }

  v13 = sub_100754754();

  if (v13)
  {
    goto LABEL_8;
  }

  if (*(v2 + v12))
  {
    v27 = sub_100754754();

    if ((v27 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v28 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
    goto LABEL_37;
  }

  v31 = *(v9 + 16);
  if (v31 != v30)
  {
    v32 = v31 + 1;
    if (!__OFADD__(v31, 1))
    {
      goto LABEL_35;
    }

LABEL_37:
    __break(1u);
    return;
  }

  v32 = 0;
LABEL_35:
  sub_10053D898(v32);
LABEL_10:
  v14 = *(v9 + 24);
  v15 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPageIndex);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPageIndex) = v14;
  if (v14 != v15 && swift_unknownObjectWeakLoadStrong())
  {
    sub_100233E10(v2, v15, v14);
    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v17 = Strong;
  if (a1)
  {
    if (Strong)
    {
      v18 = sub_10074F3E4();
      v35 = v18;
      v36 = sub_1002968B4();
      v19 = sub_10000D134(v34);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v18);
      LOBYTE(v18) = sub_10074FC74();
      sub_10000C620(v34);
      if ((v18 & 1) == 0)
      {
        v20 = OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_autoScrollConfiguration;
        swift_beginAccess();
        v21 = v33;
        (*(v5 + 16))(v8, v17 + v20, v33);
        sub_10074A1E4();
        v23 = v22;
        (*(v5 + 8))(v8, v21);
        v24 = v23;
LABEL_27:
        sub_100232B60(v24);

        goto LABEL_28;
      }

      goto LABEL_19;
    }
  }

  else if (Strong)
  {
    v25 = sub_10074F3E4();
    v35 = v25;
    v36 = sub_1002968B4();
    v26 = sub_10000D134(v34);
    (*(*(v25 - 8) + 104))(v26, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v25);
    LOBYTE(v25) = sub_10074FC74();
    sub_10000C620(v34);
    if ((v25 & 1) == 0)
    {
      v24 = 0.0;
      goto LABEL_27;
    }

LABEL_19:

    *(v17 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isUserPagingInteractively) = 0;
LABEL_28:
    swift_unknownObjectRelease();
    return;
  }
}

id sub_10053ECF8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HeroCarouselScrollView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t initializeBufferWithCopyOfBuffer for HeroCarouselScrollView.ItemPagingProgress(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HeroCarouselScrollView.ItemPagingProgress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 10);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HeroCarouselScrollView.ItemPagingProgress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10053EEB4()
{
  result = qword_10093DB08;
  if (!qword_10093DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DB08);
  }

  return result;
}

uint64_t sub_10053EF08(int a1, int a2, double a3, double a4)
{
  if (a3 != a4)
  {
    return 0;
  }

  v6 = a1;
  if (!a1)
  {
    v8 = 0xE800000000000000;
    v7 = 0x647261776B636162;
    v9 = a2;
    if (a2)
    {
      goto LABEL_10;
    }

LABEL_20:
    v11 = 0xE800000000000000;
    if (v7 != 0x647261776B636162)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (a1 == 1)
  {
    v7 = 0x64726177726F66;
  }

  else
  {
    v7 = 1701736302;
  }

  if (v6 == 1)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  v9 = a2;
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (v9 == 1)
  {
    v10 = 0x64726177726F66;
  }

  else
  {
    v10 = 1701736302;
  }

  if (v9 == 1)
  {
    v11 = 0xE700000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  if (v7 != v10)
  {
LABEL_23:
    v13 = sub_100754754();

    if ((v13 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_24;
  }

LABEL_21:
  if (v8 != v11)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (BYTE1(a1))
  {
    if (BYTE1(a1) == 1)
    {
      v14 = 0x6165707061736964;
    }

    else
    {
      v14 = 1701736302;
    }

    if (BYTE1(a1) == 1)
    {
      v15 = 0xEC000000676E6972;
    }

    else
    {
      v15 = 0xE400000000000000;
    }
  }

  else
  {
    v14 = 0x6E69726165707061;
    v15 = 0xE900000000000067;
  }

  v16 = 0x6165707061736964;
  v17 = 0xEC000000676E6972;
  if (BYTE1(a2) != 1)
  {
    v16 = 1701736302;
    v17 = 0xE400000000000000;
  }

  if (BYTE1(a2))
  {
    v18 = v16;
  }

  else
  {
    v18 = 0x6E69726165707061;
  }

  if (BYTE1(a2))
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE900000000000067;
  }

  if (v14 == v18 && v15 == v19)
  {

    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  v20 = sub_100754754();

  if (v20)
  {
    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  return 0;
}

unint64_t sub_10053F128(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100862CF0;
  v6._object = a2;
  v4 = sub_1007546E4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10053F174()
{

  return _swift_deallocObject(v0, 24, 7);
}

double sub_10053F1C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_10053F1DC(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100862D58;
  v6._object = a2;
  v4 = sub_1007546E4(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

void sub_10053F228()
{
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pagingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackerLookup;
  *(v0 + v1) = sub_10041553C(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageTrackers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_pageCount) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isAnimating) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isFixingContentOffset) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_meetsMinimumPageRequirement) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_needsPageViewLayout) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection) = 2;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPageIndex) = -1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_focusedPageTracker) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset) = 0;
  sub_100754644();
  __break(1u);
}

void sub_10053F344()
{
  [v0 _horizontalVelocity];
  v2 = v1;
  v3 = [v0 panGestureRecognizer];
  [v3 velocityInView:v0];
  v5 = v4;

  v6 = v5 != 0.0 && v2 == 0.0;
  v7 = -v5;
  if (!v6)
  {
    v7 = v2;
  }

  if (v7 != 0.0)
  {
    *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection) = v7 > 0.0;
    sub_10053C154();
  }

  sub_10053DB8C();
  sub_10053DDA8();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_10074F3E4();
    v19 = v10;
    v11 = sub_1002968B4();
    v20 = v11;
    v12 = sub_10000D134(v18);
    v13 = enum case for Feature.iOS.arcade_hero_video_page_timer(_:);
    v14 = *(*(v10 - 8) + 104);
    v14(v12, enum case for Feature.iOS.arcade_hero_video_page_timer(_:), v10);
    v15 = sub_10074FC74();
    sub_10000C620(v18);
    if (v15)
    {
      *(v9 + OBJC_IVAR____TtC22SubscribePageExtension16HeroCarouselView_isUserPagingInteractively) = 1;
    }

    else
    {
      v19 = v10;
      v20 = v11;
      v16 = sub_10000D134(v18);
      v14(v16, v13, v10);
      v17 = sub_10074FC74();
      sub_10000C620(v18);
      if ((v17 & 1) == 0)
      {
        sub_100234A3C(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

void sub_10053F4F4()
{
  if ((*(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_isSettingPagingOffset) & 1) == 0)
  {
    [v0 _horizontalVelocity];
    v2 = v1;
    v3 = [v0 panGestureRecognizer];
    [v3 velocityInView:v0];
    v5 = v4;

    v6 = v5 != 0.0 && v2 == 0.0;
    v7 = -v5;
    if (!v6)
    {
      v7 = v2;
    }

    if (v7 != 0.0)
    {
      *(v0 + OBJC_IVAR____TtC22SubscribePageExtension22HeroCarouselScrollView_currentPagingDirection) = v7 > 0.0;
      sub_10053C154();
    }

    sub_10053DB8C();

    sub_10053DDA8();
  }
}

unint64_t sub_10053F5D8()
{
  result = qword_10093DB18;
  if (!qword_10093DB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093DB18);
  }

  return result;
}

char *sub_10053F62C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for LockupMediaView(0)) init];
  v4[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_preferredImageSizes] = _swiftEmptyDictionarySingleton;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsCalculator] = 0;
  v11 = &v4[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsUpdateBlock];
  v12 = type metadata accessor for AppSearchResultContentView();
  *v11 = 0;
  v11[1] = 0;
  v19.receiver = v4;
  v19.super_class = v12;
  v13 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_lockupView]];
  [v17 addSubview:*&v17[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots]];

  return v17;
}

void (*sub_10053F7F4(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia) == 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  *a1 = Strong;
  return sub_10053F874;
}

void sub_10053F874(uint64_t a1, char a2)
{
  v24 = *a1;
  v4 = *(*(a1 + 8) + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots);
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = Strong;
  if (a2)
  {
    if (Strong)
    {
      sub_100549890(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
      v7 = v24;
      v8 = [v6 superview];
      if (v8)
      {
        v9 = v8;
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v10 = v4;
        v11 = sub_100753FC4();

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
      v7 = v24;
    }

    swift_unknownObjectWeakAssign();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      [v4 addSubview:v22];
    }

    sub_10062FDFC();
    [v4 setNeedsLayout];

    v21 = *a1;
    goto LABEL_21;
  }

  if (Strong)
  {
    sub_100549890(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
    v14 = [v6 superview];
    if (v14)
    {
      v15 = v14;
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v16 = v4;
      v17 = sub_100753FC4();

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
  if (v19)
  {
    v20 = v19;
    [v4 addSubview:v19];
  }

  sub_10062FDFC();
  [v4 setNeedsLayout];
  v21 = v24;
LABEL_21:
}

id sub_10053FB44()
{
  v1 = v0;
  v2 = sub_10074A8C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074AE04();
  v142 = *(v6 - 8);
  v143 = v6;
  __chkstk_darwin(v6);
  v132 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074CD14();
  v136 = *(v8 - 8);
  v137 = v8;
  __chkstk_darwin(v8);
  v135 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007479B4();
  v146 = *(v10 - 8);
  v147 = v10;
  __chkstk_darwin(v10);
  v134 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v145 = &v106 - v13;
  v150 = sub_10074A8A4();
  v144 = *(v150 - 8);
  __chkstk_darwin(v150);
  v140 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v151 = &v106 - v16;
  v17 = sub_10000C518(&unk_1009393C0, &qword_1007AEFB0);
  __chkstk_darwin(v17 - 8);
  v131 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v148 = &v106 - v20;
  v21 = sub_10000C518(&unk_100923180, &unk_1007A5F40);
  v149 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v106 - v22;
  v24 = type metadata accessor for AppSearchResultContentView();
  v189.receiver = v0;
  v189.super_class = v24;
  objc_msgSendSuper2(&v189, "layoutSubviews");
  v25 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_lockupView];
  sub_1007477B4();
  sub_10017CB48();
  sub_1007477B4();
  sub_1007477B4();
  sub_100753B24();
  result = [v25 setFrame:?];
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia] == 1)
  {
    v126 = v5;
    v127 = v3;
    v128 = v2;
    sub_10074DF44();
    v27 = [v0 traitCollection];
    v28 = sub_100751034();
    v123 = sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v29 = swift_allocObject();
    v139 = xmmword_1007A5CF0;
    *(v29 + 16) = xmmword_1007A5CF0;
    *(v29 + 32) = v27;
    v30 = v27;
    v133 = v28;
    v31 = sub_100751044();
    v121 = sub_10001B5C0();
    sub_100750544();

    v33 = v149 + 8;
    v32 = *(v149 + 8);
    v125 = v21;
    v122 = v32;
    v32(v23, v21);
    sub_1007477B4();
    CGRectGetMinX(v190);
    [v25 frame];
    MaxY = CGRectGetMaxY(v191);
    v35 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_title + 8];
    v114 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_title];
    v36 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_subtitleLabel];
    v113 = v35;

    v37 = [v36 text];
    if (v37)
    {
      v38 = v37;
      v39 = sub_100753094();
      v115 = v40;
      v116 = v39;
    }

    else
    {
      v115 = 0;
      v116 = 0;
    }

    v41 = [*&v25[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_descriptionLabel] text];
    if (v41)
    {
      v42 = v41;
      v43 = sub_100753094();
      v117 = v44;
      v118 = v43;
    }

    else
    {
      v117 = 0;
      v118 = 0;
    }

    v45 = *&v25[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView];
    v46 = OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemModels;
    swift_beginAccess();
    v141 = *(v45 + v46);

    v47 = v148;
    _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
    (*(v142 + 56))(v47, 0, 1, v143);
    v48 = *(*&v25[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_searchTagsRibbonView] + OBJC_IVAR____TtC22SubscribePageExtension20SearchTagsRibbonView_metadataRibbonItemModels);
    v107 = v25[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_shouldEvenlyDistribute];
    v138 = v48;

    sub_1007477B4();
    v50 = v49;
    v52 = v51;
    v53 = [v1 traitCollection];
    if (qword_100920410 != -1)
    {
      swift_once();
    }

    v54 = v150;
    v55 = sub_10000D0FC(v150, qword_10097E010);
    v119 = *(v144 + 16);
    v120 = v144 + 16;
    v119(v151, v55, v54);
    v56 = sub_100753804();
    v129 = v1;
    v149 = v33;
    v124 = v23;
    if (v56)
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v57 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v57 = qword_10093FF58;
    }

    v58 = v147;
    v59 = sub_10000D0FC(v147, v57);
    v60 = v146;
    v61 = v134;
    (*(v146 + 16))(v134, v59, v58);
    (*(v60 + 32))(v145, v61, v58);
    v62 = [v53 preferredContentSizeCategory];
    sub_100753924();

    sub_100747964();
    sub_100747994();
    sub_10074A894();
    sub_10074A884();
    v112 = sub_100750F34();
    swift_allocObject();
    v134 = sub_100750F14();
    v63 = objc_opt_self();
    v110 = v63;
    v64 = [v63 preferredFontForTextStyle:UIFontTextStyleBody];
    v65 = sub_10074F3F4();
    v188[3] = v65;
    v66 = sub_100549890(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v188[4] = v66;
    v109 = v66;
    v67 = sub_10000D134(v188);
    v68 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v69 = *(v65 - 8);
    v70 = *(v69 + 104);
    v111 = v69 + 104;
    v108 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v70(v67, enum case for Feature.measurement_with_labelplaceholder(_:), v65);
    sub_10074FC74();
    v130 = v53;
    sub_10000C620(v188);
    v71 = v135;
    sub_10074CD04();
    sub_10074CCE4();
    v72 = v137;
    v136 = *(*&v136 + 8);
    (*&v136)(v71, v137);
    v73 = [v63 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v187[3] = v65;
    v187[4] = v66;
    v74 = sub_10000D134(v187);
    v70(v74, v68, v65);
    sub_10074FC74();
    sub_10000C620(v187);
    sub_10074CD04();
    sub_10074CCE4();
    v75 = v136;
    (*&v136)(v71, v72);
    v76 = [v110 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v186[3] = v65;
    v186[4] = v109;
    v77 = sub_10000D134(v186);
    v70(v77, v108, v65);
    sub_10074FC74();
    sub_10000C620(v186);
    sub_10074CD04();
    sub_10074CCE4();
    (*&v75)(v71, v72);
    v78 = v141;
    LODWORD(v137) = sub_10001BB7C() & (v78 != 0);
    if (v137 == 1)
    {
      v79 = v112;
      v136 = MaxY;
      v80 = objc_allocWithZone(v133);
      v81 = v130;
      v82 = sub_100751024();
      v83 = v131;
      sub_100016B4C(v148, v131, &unk_1009393C0, &qword_1007AEFB0);
      v85 = v142;
      v84 = v143;
      v86 = *(v142 + 48);
      if (v86(v83, 1, v143) == 1)
      {
        v87 = v132;
        _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v86(v83, 1, v84) != 1)
        {
          sub_10000C8CC(v83, &unk_1009393C0, &qword_1007AEFB0);
        }
      }

      else
      {
        v87 = v132;
        (*(v85 + 32))(v132, v83, v84);
      }

      v90 = v82;
      sub_100018CE4(v141, v87, v90, v50, v52);

      (*(v85 + 8))(v87, v84);
      v88 = v79;
      swift_allocObject();
      v89 = sub_100750F04();
    }

    else
    {
      v88 = v112;
      swift_allocObject();
      v89 = sub_100750F14();
    }

    v143 = v89;

    v91 = v138;
    if ((sub_10001BB7C() & (v91 != 0)) == 1)
    {
      v92 = v130;
      sub_100077794(v91, v107, v50, v52);
      swift_allocObject();
      v93 = sub_100750F04();
    }

    else
    {
      swift_allocObject();
      v93 = sub_100750F14();
      v92 = v130;
    }

    v119(v140, v151, v150);
    v185 = &protocol witness table for LayoutViewPlaceholder;
    v184 = v88;
    v183 = v134;
    v182 = 0;
    *&v180[40] = 0u;
    v181 = 0u;
    sub_10000C824(v188, v180);
    sub_10000C824(v187, &v179);
    v178 = 0;
    v176 = 0u;
    v177 = 0u;
    v175 = 0;
    v173 = 0u;
    v174 = 0u;

    v94 = sub_100750F24();
    v172 = &protocol witness table for LayoutViewPlaceholder;
    v171 = v88;
    v170 = v94;
    v169 = 0;
    v167 = 0u;
    v168 = 0u;
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
    v163 = 0;
    v161 = 0u;
    v162 = 0u;
    v160 = 0;
    v159 = 0u;
    *&v158[40] = 0u;
    sub_10000C824(v186, v158);
    v156 = v88;
    v157 = &protocol witness table for LayoutViewPlaceholder;
    v154 = &protocol witness table for LayoutViewPlaceholder;
    v155 = v143;
    v153 = v88;
    v152 = v93;
    v95 = v126;
    sub_10074A8B4();
    v96 = swift_allocObject();
    *(v96 + 16) = v139;
    *(v96 + 32) = v92;
    v97 = v92;
    v98 = sub_100751044();
    sub_100549890(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v99 = v128;
    sub_100750404();

    (*(v127 + 8))(v95, v99);
    sub_10000C620(v186);
    sub_10000C620(v187);
    sub_10000C620(v188);
    (*(v146 + 8))(v145, v147);
    (*(v144 + 8))(v151, v150);
    v100 = v124;
    sub_10074DF44();
    v101 = swift_allocObject();
    *(v101 + 16) = v139;
    *(v101 + 32) = v97;
    v102 = v97;
    v103 = sub_100751044();
    v104 = v125;
    sub_100750544();

    v122(v100, v104);
    sub_10000C8CC(v148, &unk_1009393C0, &qword_1007AEFB0);
    v105 = *&v129[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots];
    [v129 bounds];
    sub_100753B24();
    return [v105 setFrame:?];
  }

  return result;
}

id sub_100540CF8()
{
  v1 = v0;
  sub_10017D15C();
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots];
  result = sub_100630618();
  v4 = v1[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia];
  v1[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia] = 1;
  if ((v4 & 1) == 0)
  {
    [v2 setHidden:0];

    return [v1 setNeedsLayout];
  }

  return result;
}

unint64_t sub_100540D9C(uint64_t a1, char *a2)
{
  v3 = v2;
  v252 = a2;
  swift_getObjectType();
  v5 = sub_10000C518(&qword_100923450, &qword_1007A6568);
  __chkstk_darwin(v5 - 8);
  v213 = &v201 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v219 = &v201 - v8;
  v9 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v9 - 8);
  v230 = &v201 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v231 = &v201 - v12;
  v13 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v13 - 8);
  v229 = &v201 - v14;
  v15 = sub_100744864();
  __chkstk_darwin(v15 - 8);
  v217 = &v201 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v216 = &v201 - v18;
  __chkstk_darwin(v19);
  v223 = &v201 - v20;
  __chkstk_darwin(v21);
  v222 = &v201 - v22;
  v228 = sub_100744894();
  v227 = *(v228 - 8);
  __chkstk_darwin(v228);
  v215 = &v201 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v221 = &v201 - v25;
  v224 = sub_100747D94();
  v232 = *(v224 - 8);
  __chkstk_darwin(v224);
  v218 = &v201 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v239 = &v201 - v28;
  v212 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v211 = *(v212 - 8);
  __chkstk_darwin(v212);
  v237 = &v201 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000C518(&unk_100934D80, &qword_1007BC850);
  __chkstk_darwin(v30 - 8);
  v32 = &v201 - v31;
  v226 = sub_1007504F4();
  v225 = *(v226 - 8);
  __chkstk_darwin(v226);
  v238 = &v201 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v236 = sub_100746B04();
  v235 = *(v236 - 8);
  __chkstk_darwin(v236);
  v234 = &v201 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_100746A94();
  v246 = *(v244 - 8);
  __chkstk_darwin(v244);
  v210 = &v201 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v201 - v37;
  __chkstk_darwin(v39);
  v240 = &v201 - v40;
  __chkstk_darwin(v41);
  v220 = &v201 - v42;
  __chkstk_darwin(v43);
  v243 = &v201 - v44;
  v45 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v45 - 8);
  v214 = &v201 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v242 = &v201 - v48;
  __chkstk_darwin(v49);
  v250 = &v201 - v50;
  v51 = sub_10000C518(&unk_100923200, &unk_1007A5C50);
  __chkstk_darwin(v51 - 8);
  v53 = &v201 - v52;
  v54 = sub_10074F704();
  v251 = *(v54 - 8);
  __chkstk_darwin(v54);
  v255 = &v201 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = sub_10074A7F4();
  v56 = *(v254 - 8);
  __chkstk_darwin(v254);
  v233 = &v201 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v201 - v59;
  sub_100742374();
  sub_100549890(&qword_10093DBB0, 255, &type metadata accessor for AppSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_1007468B4();
  if (!v257[0])
  {
    return result;
  }

  v245 = v56;
  v249 = v54;
  v62 = v257[0];
  v63 = sub_100742364();
  v253 = v60;
  v248 = v63;
  sub_100745E24();
  v241 = v62;
  v64 = sub_100742354();
  v65 = OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia;
  v66 = v2[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia];
  v2[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia] = v64 & 1;
  v67 = &stru_1008F2000;
  if ((v64 & 1) != v66)
  {
    [*&v2[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots] setHidden:(v64 & 1) == 0];
    [v2 setNeedsLayout];
  }

  static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
  sub_10074F634();
  v68 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_lockupView];
  *&v68[OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = v69;
  [v68 setNeedsLayout];
  v70 = sub_1007469A4();
  (*(*(v70 - 8) + 56))(v53, 1, 1, v70);
  v71 = v3;
  v72 = v248;
  sub_100028DB0(v248, v53, v252);
  sub_10000C8CC(v53, &unk_100923200, &unk_1007A5C50);
  v247 = v71;
  v73 = v71[v65];
  v74 = v249;
  v75 = v245;
  v76 = v253;
  if (v73 != 1 || (sub_10074A7E4() & 1) == 0)
  {
LABEL_150:
    [v247 setNeedsLayout];

    (*(v251 + 8))(v255, v74);
    return (*(v75 + 8))(v76, v254);
  }

  v77 = sub_100745DD4();
  if (v77 >> 62)
  {
    v78 = v77;
    v79 = sub_100754664();
    v77 = v78;
    if (v79)
    {
      goto LABEL_8;
    }

LABEL_13:

    v206 = 0;
    goto LABEL_14;
  }

  if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_8:
  if ((v77 & 0xC000000000000001) != 0)
  {
    v206 = sub_100754574();
  }

  else
  {
    if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_79;
    }

    v206 = *(v77 + 32);
  }

LABEL_14:
  v67 = *&v247[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots];
  v207 = sub_100745E04();
  v209 = sub_100745DE4();
  v80 = sub_100745E54();
  if (v80 >> 62)
  {
    v81 = v80;
    v82 = sub_100754664();
    v80 = v81;
    if (v82)
    {
      goto LABEL_16;
    }

LABEL_21:

    v208 = 0;
    goto LABEL_22;
  }

  if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

LABEL_16:
  if ((v80 & 0xC000000000000001) != 0)
  {
    v208 = sub_100754574();
  }

  else
  {
    if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_81;
    }

    v208 = *(v80 + 32);
  }

LABEL_22:
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v83 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_100746914();

  v84 = v257[0];
  sub_100222B00(v250);

  a1 = sub_100745E04();
  v53 = sub_100745DE4();
  v85 = sub_100745DD4();
  if (v85 >> 62)
  {
    v86 = v85;
    v87 = sub_100754664();
    v85 = v86;
    if (v87)
    {
LABEL_24:
      if ((v85 & 0xC000000000000001) == 0)
      {
        if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_83;
        }

        v84 = *(v85 + 32);

        goto LABEL_27;
      }

LABEL_79:
      v84 = sub_100754574();
LABEL_27:

      goto LABEL_30;
    }
  }

  else if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

  v84 = 0;
LABEL_30:
  v85 = sub_100745E54();
  if (v85 >> 62)
  {
    v89 = v85;
    v90 = sub_100754664();
    v85 = v89;
    v72 = v84;
    if (v90)
    {
LABEL_32:
      if ((v85 & 0xC000000000000001) == 0)
      {
        if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v88 = *(v85 + 32);

LABEL_35:

          goto LABEL_38;
        }

LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

LABEL_81:
      v88 = sub_100754574();
      goto LABEL_35;
    }
  }

  else
  {
    v72 = v84;
    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_32;
    }
  }

  v88 = 0;
LABEL_38:
  if ((sub_10074A7E4() & 1) == 0)
  {

    v53 = v246;
    v97 = v243;
    v84 = v244;
    (*(v246 + 104))(v243, enum case for LockupMediaLayout.DisplayType.none(_:), v244);
    v92 = v209;
LABEL_46:
    v38 = v206;
    goto LABEL_68;
  }

  v92 = v209;
  if (v53 | a1)
  {
    v98 = v220;
    sub_100750504();

    v53 = v246;
    v84 = v244;
    (*(v246 + 104))(v98, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v244);
    v97 = v243;
    (*(v53 + 32))(v243, v98, v84);
    goto LABEL_46;
  }

  v93 = sub_100631A30(v72, v88, 0, 1, v91);
  v53 = v93;
  v84 = (v93 >> 62);
  if (v93 >> 62)
  {
    goto LABEL_132;
  }

  for (i = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {
    v205 = i;
    v96 = v72 ? sub_100743844() : 0;
    v99 = sub_100631D8C(v96, v94);

    v202 = v99;
    v100 = v72 ? sub_100743844() : 0;
    v101 = v254;
    (*(v75 + 16))(v32, v253, v254);
    (*(v75 + 56))(v32, 0, 1, v101);
    a1 = sub_1006322B4(v100, v32);

    sub_10000C8CC(v32, &unk_100934D80, &qword_1007BC850);
    if (v84 ? sub_100754664() : *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      if ((v53 & 0xC000000000000001) != 0)
      {
        sub_100754574();
      }

      else
      {
        if (!*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_154;
        }
      }

      v103 = sub_10074F194();

      if (v103)
      {

        v53 = v246;
        v104 = v220;
        v84 = v244;
        (*(v246 + 104))(v220, enum case for LockupMediaLayout.DisplayType.landscape(_:), v244);
LABEL_66:
        v97 = v243;
        v92 = v209;
        v38 = v206;
        goto LABEL_67;
      }
    }

    else
    {
    }

    v105 = a1;
    v106 = v246;
    v107 = v244;
    v204 = *(v246 + 104);
    v203 = v246 + 104;
    (v204)(v38, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v244);
    v108 = sub_100746A84();
    v201 = *(v106 + 8);
    v201(v38, v107);
    if (((v205 >= v108) & v105) != 0 || ((v204)(v38, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v107), v109 = sub_100746A84(), v201(v38, v107), ((v205 >= v109) & v202) != 0) || ((v204)(v38, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v107), v110 = sub_100746A84(), v201(v38, v107), v205 >= v110))
    {

      v104 = v220;
      v204();
      v84 = v107;
      v53 = v246;
      goto LABEL_66;
    }

    (v204)(v38, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v107);
    sub_100746A84();

    v201(v38, v107);
    v111 = v107;
    v104 = v220;
    v204();
    v53 = v246;
    v97 = v243;
    v92 = v209;
    v38 = v206;
    v84 = v111;
LABEL_67:
    (*(v53 + 32))(v97, v104, v84);
LABEL_68:
    v32 = v240;

    v257[3] = &type metadata for CGFloat;
    v257[4] = &protocol witness table for CGFloat;
    v257[0] = 0x4021000000000000;
    sub_10000C824(v257, v256);
    v72 = v53 + 16;
    v112 = v97;
    a1 = *(v53 + 16);
    (a1)(v32, v112, v84);
    if (v92 | v207)
    {
      goto LABEL_86;
    }

    v85 = sub_100631A30(v38, v208, 0, 1, v113);
    if (v85 >> 62)
    {
      break;
    }

    if (!*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_85;
    }

LABEL_71:
    if ((v85 & 0xC000000000000001) != 0)
    {
      sub_100754574();
      goto LABEL_74;
    }

    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_74:

      sub_10074F2A4();
      sub_100750504();

      goto LABEL_87;
    }

    __break(1u);
LABEL_132:
    ;
  }

LABEL_84:
  v114 = v85;
  v115 = sub_100754664();
  v85 = v114;
  if (v115)
  {
    goto LABEL_71;
  }

LABEL_85:

LABEL_86:
  sub_100750504();
LABEL_87:
  sub_100016B4C(v250, v242, &unk_1009281D0, qword_1007A82B0);
  v116 = v234;
  sub_100746AD4();
  sub_10000C620(v257);
  v117 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v118 = v235;
  v119 = v67 + v117;
  v120 = v236;
  (*(v235 + 24))(v119, v116, v236);
  swift_endAccess();
  [(__objc2_prop *)v67 setNeedsLayout];
  (*(v118 + 8))(v116, v120);
  if (v38)
  {
    v121 = sub_100743844();
  }

  else
  {
    v121 = 0;
  }

  sub_100743864();
  v122 = v237;
  sub_1002898DC(v121, v237, v123);

  v124 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_1000243DC(v122, v67 + v124);
  swift_endAccess();
  sub_10062F1F4();
  sub_100024440(v122);
  if (v38)
  {
    v125 = sub_100743844();
  }

  else
  {
    v125 = 0;
  }

  v126 = v233;
  *(&v67->name + OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_platform) = v125;

  sub_10062F3F8();

  v127 = v254;
  (*(v75 + 16))(v126, v253, v254);
  v128 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v75 + 24))(v67 + v128, v126, v127);
  swift_endAccess();
  [(__objc2_prop *)v67 setNeedsLayout];
  (*(v75 + 8))(v126, v127);
  if (v209)
  {
    (*(v227 + 104))(v221, enum case for VideoFillMode.scaleAspectFill(_:), v228);

    sub_10074EC14();
    sub_10074F2A4();
    v129 = v242;
    sub_100750504();

    (*(v225 + 56))(v129, 0, 1, v226);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    v130 = v67;
    v131 = v229;
    sub_10074EC24();
    v132 = sub_100741264();
    (*(*(v132 - 8) + 56))(v131, 0, 1, v132);
    v133 = v231;
    sub_10074EBE4();
    v134 = v230;
    sub_10074EBD4();
    type metadata accessor for VideoView(0);
    sub_100549890(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
    v135 = sub_1007464A4();
    sub_10000C8CC(v134, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v133, &unk_1009281C0, qword_1007ABBB0);
    v136 = v131;
    v67 = v130;
    sub_10000C8CC(v136, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(v257, &unk_1009276E0, &unk_1007A5C70);
    Strong = swift_unknownObjectWeakLoadStrong();
    v53 = v246;
    if (Strong)
    {
      v138 = Strong;
      v139 = [Strong superview];
      if (!v139)
      {
        goto LABEL_99;
      }

      v140 = v139;
      sub_100016C60(0, &qword_100922300, UIView_ptr);
      v141 = v130;
      v142 = sub_100753FC4();

      if (v142)
      {
        v143 = swift_unknownObjectWeakLoadStrong();
        if (v143)
        {
          v138 = v143;
          [v143 removeFromSuperview];
LABEL_99:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v144 = swift_unknownObjectWeakLoadStrong();
    if (v144)
    {
      v145 = v144;
      [(__objc2_prop *)v67 addSubview:v144];
    }

    sub_10062FDFC();
    [(__objc2_prop *)v67 setNeedsLayout];

    v146 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v147 = *(&v67->name + OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView);
    v75 = v245;
    v148 = v224;
    if (v147)
    {
      [v147 removeFromSuperview];
      v149 = *(&v67->name + v146);
    }

    else
    {
      v149 = 0;
    }

    v74 = v249;
    *(&v67->name + v146) = 0;

    [(__objc2_prop *)v67 setNeedsLayout];

    (*(v232 + 8))(v239, v148);
LABEL_148:
    v186 = v243;
LABEL_149:
    [(__objc2_prop *)v67 setNeedsLayout];

    (*(v53 + 8))(v186, v244);
    sub_10000C8CC(v250, &unk_1009281D0, qword_1007A82B0);
    v76 = v253;
    goto LABEL_150;
  }

  v53 = v246;
  if (!v208)
  {
    goto LABEL_135;
  }

  result = sub_10074F794();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_107;
    }

LABEL_134:

LABEL_135:
    v189 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v190 = *(&v67->name + OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView);
    if (v190)
    {
      [v190 removeFromSuperview];
      v191 = *(&v67->name + v189);
    }

    else
    {
      v191 = 0;
    }

    v74 = v249;
    *(&v67->name + v189) = 0;

    [(__objc2_prop *)v67 setNeedsLayout];
    v192 = swift_unknownObjectWeakLoadStrong();
    if (v192)
    {
      v193 = v192;
      sub_100549890(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
      v194 = [v193 superview];
      if (v194)
      {
        v195 = v194;
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v196 = v67;
        v197 = sub_100753FC4();

        v74 = v249;
        if (v197)
        {
          v198 = swift_unknownObjectWeakLoadStrong();
          if (v198)
          {
            v193 = v198;
            [v198 removeFromSuperview];
            goto LABEL_144;
          }
        }
      }

      else
      {
        v74 = v249;
LABEL_144:
      }
    }

    swift_unknownObjectWeakAssign();
    v199 = swift_unknownObjectWeakLoadStrong();
    if (v199)
    {
      v200 = v199;
      [(__objc2_prop *)v67 addSubview:v199];
    }

    sub_10062FDFC();
    [(__objc2_prop *)v67 setNeedsLayout];
    goto LABEL_148;
  }

  v187 = result;
  v188 = sub_100754664();
  result = v187;
  if (!v188)
  {
    goto LABEL_134;
  }

LABEL_107:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_154:
    sub_100754574();
LABEL_110:
    v150 = v67;
    v206 = v38;

    v151 = v210;
    v152 = v244;
    (a1)(v210, v243, v244);
    v153 = (*(v53 + 88))(v151, v152);
    v154 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
    (*(v53 + 8))(v151, v152);
    if (v153 == v154)
    {
      v155 = 1;
      v156 = v219;
    }

    else
    {
      v157 = sub_10074F784();
      v156 = v219;
      sub_1002898DC(v157, v219, v158);

      v155 = 0;
    }

    v159 = v231;
    v160 = v212;
    v161 = v228;
    v162 = v227;
    v163 = v211;
    v164 = v226;
    (*(v211 + 56))(v156, v155, 1, v212);
    (*(v162 + 104))(v215, enum case for VideoFillMode.scaleAspectFill(_:), v161);
    sub_10074EC14();
    sub_10074F2A4();
    v165 = v214;
    sub_100750504();

    (*(v225 + 56))(v165, 0, 1, v164);
    sub_10074EBB4();
    sub_10074EBF4();
    sub_10074EBC4();
    sub_10074EBA4();
    sub_10074EC04();
    v166 = v156;
    v167 = v213;
    sub_100016B4C(v166, v213, &qword_100923450, &qword_1007A6568);
    if ((*(v163 + 48))(v167, 1, v160) == 1)
    {
      sub_10000C8CC(v167, &qword_100923450, &qword_1007A6568);
    }

    else
    {
      sub_100024440(v167);
    }

    v67 = v150;
    sub_100747D74();
    sub_1007464C4();
    sub_1007526E4();
    sub_10074EB94();
    v168 = v229;
    sub_10074EC24();
    v169 = sub_100741264();
    (*(*(v169 - 8) + 56))(v168, 0, 1, v169);
    sub_10074EBE4();
    v170 = v230;
    sub_10074EBD4();
    type metadata accessor for VideoView(0);
    sub_100549890(&qword_1009230E0, 255, type metadata accessor for VideoView, &unk_1007C8140);
    v171 = sub_1007464A4();
    sub_10000C8CC(v170, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v159, &unk_1009281C0, qword_1007ABBB0);
    sub_10000C8CC(v168, &unk_100923970, &qword_1007A6B90);
    sub_10000C8CC(v257, &unk_1009276E0, &unk_1007A5C70);
    v172 = swift_unknownObjectWeakLoadStrong();
    if (v172)
    {
      v173 = v172;
      v174 = [v172 superview];
      if (v174)
      {
        v175 = v174;
        sub_100016C60(0, &qword_100922300, UIView_ptr);
        v176 = v67;
        v177 = sub_100753FC4();

        v75 = v245;
        if ((v177 & 1) == 0)
        {
          goto LABEL_124;
        }

        v178 = swift_unknownObjectWeakLoadStrong();
        if (!v178)
        {
          goto LABEL_124;
        }

        v173 = v178;
        [v178 removeFromSuperview];
      }
    }

LABEL_124:
    swift_unknownObjectWeakAssign();
    v179 = swift_unknownObjectWeakLoadStrong();
    if (v179)
    {
      v180 = v179;
      [(__objc2_prop *)v67 addSubview:v179];
    }

    sub_10062FDFC();
    [(__objc2_prop *)v67 setNeedsLayout];

    v181 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView;
    v182 = *(&v67->name + OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_creativeArtworkView);
    v53 = v246;
    v183 = v243;
    if (v182)
    {
      [v182 removeFromSuperview];
      v184 = *(&v67->name + v181);
    }

    else
    {
      v184 = 0;
    }

    v185 = v224;
    *(&v67->name + v181) = 0;

    [(__objc2_prop *)v67 setNeedsLayout];

    (*(v232 + 8))(v218, v185);
    sub_10000C8CC(v219, &qword_100923450, &qword_1007A6568);
    v74 = v249;
    v186 = v183;
    goto LABEL_149;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_110;
  }

  __break(1u);
  return result;
}

uint64_t sub_1005431A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    sub_100749574();
  }

  *(v1 + v3) = 0;

  v4 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_1000164A8(v5, v6);
  return sub_10017D40C(a1);
}

id sub_100543264(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AppSearchResultContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10054334C()
{
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_shouldDisplayMedia) == 1)
  {
    return swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    return 0;
  }
}

void sub_1005433A0(void *a1)
{
  sub_10054971C(a1);
}

uint64_t (*sub_1005433D8(uint64_t **a1))()
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
  v2[4] = sub_10053F7F4(v2);
  return sub_1000181A8;
}

double sub_100543448()
{
  swift_beginAccess();

  return result;
}

double sub_100543490(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_100543548()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10001B5AC(*v1, v1[1]);
  return v2;
}

double sub_1005435A4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1000164A8(v6, v7);
}

uint64_t sub_100543664(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchTagsRibbonView(0);
  sub_100549890(&qword_1009393D0, 255, type metadata accessor for SearchTagsRibbonView, &unk_1007A8608);
  return sub_10074D3C4();
}

uint64_t sub_100543710(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100543764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1005437D0(uint64_t *a1, uint64_t a2))()
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
  *(v4 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_10054386C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  v5 = v2;
  v6 = sub_100753FC4();

  return v6 & 1;
}

uint64_t sub_100543A28(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_100549890(&qword_10093DB98, a2, type metadata accessor for AppSearchResultContentView, &unk_1007C9268);
  result = sub_100549890(&unk_10093DBA0, v3, type metadata accessor for AppSearchResultContentView, &unk_1007C9298);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100543AAC(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v7 = v6;
  v12 = sub_10000C518(&unk_100923180, &unk_1007A5F40);
  v155 = *(v12 - 8);
  v156 = v12;
  __chkstk_darwin(v12);
  v154 = &v122 - v13;
  v14 = sub_10074A8C4();
  v152 = *(v14 - 8);
  v153 = v14;
  __chkstk_darwin(v14);
  v151 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_10074AE04();
  *&v157 = *(v158 - 8);
  __chkstk_darwin(v158);
  v144 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074CD14();
  v148 = *(v17 - 8);
  v149 = v17;
  __chkstk_darwin(v17);
  v147 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1007479B4();
  v162 = *(v19 - 8);
  v163 = v19;
  __chkstk_darwin(v19);
  v21 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v161 = &v122 - v23;
  v165 = sub_10074A8A4();
  v160 = *(v165 - 8);
  __chkstk_darwin(v165);
  v150 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v166 = &v122 - v26;
  v27 = sub_10000C518(&unk_1009393C0, &qword_1007AEFB0);
  __chkstk_darwin(v27 - 8);
  v143 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v164 = &v122 - v30;
  v31 = sub_10074A7F4();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = (&v122 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_10074F314();
  __chkstk_darwin(v35 - 8);
  sub_10000C824(a1, v203);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_100742374();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v145 = v202[0];
  v146 = v34;
  sub_100742364();

  if (sub_10074EF24())
  {
    v140 = a2;
    v141 = v32;
    v139 = v31;
    v142 = v6;
    v37 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_lockupView];
    v38 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v39 = qword_100920548;
    v40 = *(v37 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    if (v39 != -1)
    {
      swift_once();
    }

    v41 = sub_100747064();
    sub_10000D0FC(v41, qword_10097E3A8);
    sub_100746F34();
    [v40 contentMode];
    sub_10074F374();
    sub_10074F324();
    sub_100743364();
    [v40 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();
    v42 = *(v37 + v38);
    sub_1007433C4();
    sub_100549890(&qword_100925570, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v43 = v42;
    a2 = v140;
    sub_100744204();

    v32 = v141;
    v7 = v142;
    v31 = v139;
  }

  v44 = *(*&v7[OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView);
  sub_100265EBC(a1, a2);

  v45 = v146;
  sub_100745E24();
  if ((sub_100742354() & 1) == 0 || (sub_10074A7E4() & 1) == 0)
  {

    goto LABEL_50;
  }

  v139 = v31;
  sub_10074EF34();
  v127 = v46;
  v47 = sub_10074EFB4();
  v128 = v48;
  v129 = v47;
  v49 = sub_10074EED4();

  if (v49 && (v50 = sub_100748644(), , v50))
  {
    v51 = sub_10074F764();
    v130 = v52;
    v131 = v51;
  }

  else
  {
    v130 = 0;
    v131 = 0;
  }

  v138 = sub_100745DF4();
  v53 = v164;
  _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  (*(v157 + 56))(v53, 0, 1, v158);
  v137 = sub_100745E14();
  v122 = sub_100745E34();
  v54 = [v7 traitCollection];
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v55 = v165;
  v56 = sub_10000D0FC(v165, qword_10097E010);
  v133 = *(v160 + 16);
  v134 = v160 + 16;
  v133(v166, v56, v55);
  v57 = sub_100753804();
  v140 = a2;
  v141 = v32;
  v142 = v7;
  if ((v57 & 1) == 0)
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v58 = qword_10093FF58;
    goto LABEL_23;
  }

  if (qword_100921988 != -1)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = qword_10093FF40;
LABEL_23:
    v59 = v163;
    v60 = sub_10000D0FC(v163, v58);
    v61 = v162;
    (*(v162 + 16))(v21, v60, v59);
    (*(v61 + 32))(v161, v21, v59);
    v62 = [v54 preferredContentSizeCategory];
    sub_100753924();

    sub_100747964();
    sub_100747994();
    sub_10074A894();
    sub_10074A884();
    v132 = sub_100750F34();
    swift_allocObject();
    v135 = sub_100750F14();
    v63 = objc_opt_self();
    v136 = v54;
    v64 = v63;
    v125 = v63;
    v65 = [v63 preferredFontForTextStyle:UIFontTextStyleBody];
    v66 = sub_10074F3F4();
    v203[3] = v66;
    v67 = sub_100549890(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v203[4] = v67;
    v124 = v67;
    v68 = sub_10000D134(v203);
    v69 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v70 = *(v66 - 8);
    v71 = *(v70 + 104);
    v126 = v70 + 104;
    v123 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v71(v68, enum case for Feature.measurement_with_labelplaceholder(_:), v66);
    sub_10074FC74();
    sub_10000C620(v203);
    v72 = v147;
    sub_10074CD04();
    sub_10074CCE4();
    v73 = v149;
    v148 = *(v148 + 8);
    (v148)(v72, v149);
    v74 = [v64 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v202[3] = v66;
    v202[4] = v67;
    v75 = sub_10000D134(v202);
    v71(v75, v69, v66);
    sub_10074FC74();
    sub_10000C620(v202);
    sub_10074CD04();
    sub_10074CCE4();
    v76 = v148;
    (v148)(v72, v73);
    v77 = [v125 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v201[3] = v66;
    v201[4] = v124;
    v78 = sub_10000D134(v201);
    v71(v78, v123, v66);
    sub_10074FC74();
    sub_10000C620(v201);
    sub_10074CD04();
    sub_10074CCE4();
    v76(v72, v73);
    v79 = v138;
    LODWORD(v149) = sub_10001BB7C() & (v79 != 0);
    if (v149 == 1)
    {
      v80 = objc_allocWithZone(sub_100751034());
      v81 = v136;
      v82 = sub_100751024();
      v83 = v143;
      sub_100016B4C(v164, v143, &unk_1009393C0, &qword_1007AEFB0);
      v84 = v157;
      v85 = *(v157 + 48);
      v86 = v158;
      if (v85(v83, 1, v158) == 1)
      {
        v87 = v144;
        _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v85(v83, 1, v86) != 1)
        {
          sub_10000C8CC(v83, &unk_1009393C0, &qword_1007AEFB0);
        }
      }

      else
      {
        v87 = v144;
        (*(v84 + 32))(v144, v83, v86);
      }

      v90 = v82;
      sub_100018CE4(v138, v87, v90, a5, a6);

      (*(v84 + 8))(v87, v86);
      v88 = v132;
      swift_allocObject();
      v89 = sub_100750F04();
    }

    else
    {
      v88 = v132;
      swift_allocObject();
      v89 = sub_100750F14();
    }

    v91 = v89;

    v92 = v137;
    if ((sub_10001BB7C() & (v92 != 0)) == 1)
    {
      sub_100077794(v92, v122 & 1, a5, a6);
      swift_allocObject();
      v93 = sub_100750F04();
    }

    else
    {
      swift_allocObject();
      v93 = sub_100750F14();
    }

    v94 = v93;
    v133(v150, v166, v165);
    v200 = &protocol witness table for LayoutViewPlaceholder;
    v199 = v88;
    v198 = v135;
    v197 = 0;
    *&v195[40] = 0u;
    v196 = 0u;
    sub_10000C824(v203, v195);
    sub_10000C824(v202, &v194);
    v193 = 0;
    v191 = 0u;
    v192 = 0u;
    v190 = 0;
    v188 = 0u;
    v189 = 0u;

    v158 = v94;
    v95 = sub_100750F24();
    v187 = &protocol witness table for LayoutViewPlaceholder;
    v186 = v88;
    v185 = v95;
    v184 = 0;
    v182 = 0u;
    v183 = 0u;
    v181 = 0;
    v179 = 0u;
    v180 = 0u;
    v178 = 0;
    v176 = 0u;
    v177 = 0u;
    v175 = 0;
    v174 = 0u;
    *&v173[40] = 0u;
    sub_10000C824(v201, v173);
    v171 = v88;
    v172 = &protocol witness table for LayoutViewPlaceholder;
    v169 = &protocol witness table for LayoutViewPlaceholder;
    v170 = v91;
    v168 = v88;
    v167 = v94;
    v96 = v151;
    sub_10074A8B4();
    sub_100751034();
    sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v97 = swift_allocObject();
    v157 = xmmword_1007A5CF0;
    *(v97 + 16) = xmmword_1007A5CF0;
    v98 = v136;
    *(v97 + 32) = v136;
    v54 = v98;
    v99 = sub_100751044();
    sub_100549890(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v100 = v153;
    sub_100750404();
    v102 = v101;

    (*(v152 + 8))(v96, v100);
    sub_10000C620(v201);
    sub_10000C620(v202);
    sub_10000C620(v203);
    (*(v162 + 8))(v161, v163);
    (*(v160 + 8))(v166, v165);
    v103 = v154;
    sub_10074DF44();
    v104 = swift_allocObject();
    *(v104 + 16) = v157;
    *(v104 + 32) = v54;
    v105 = v54;
    v106 = sub_100751044();
    sub_10001B5C0();
    v107 = v156;
    sub_100750544();
    v109 = v108;

    (*(v155 + 8))(v103, v107);
    sub_10000C8CC(v164, &unk_1009393C0, &qword_1007AEFB0);
    v110 = v142;
    v21 = sub_100745E04();
    v111 = sub_100745DE4();
    v112 = sub_100745DD4();
    if (v112 >> 62)
    {
      v114 = v112;
      v115 = sub_100754664();
      v112 = v114;
      v32 = v141;
      if (!v115)
      {
LABEL_40:

        v113 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v32 = v141;
      if (!*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }
    }

    if ((v112 & 0xC000000000000001) != 0)
    {
      v54 = v112;
      v113 = sub_100754574();
    }

    else
    {
      if (!*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_55;
      }

      v54 = v112;
      v113 = *(v112 + 32);
    }

LABEL_41:
    v116 = sub_100745E54();
    if (!(v116 >> 62))
    {
      if (!*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_43;
    }

    v118 = v116;
    v119 = sub_100754664();
    v116 = v118;
    if (!v119)
    {
      break;
    }

LABEL_43:
    if ((v116 & 0xC000000000000001) != 0)
    {
      v117 = sub_100754574();
      goto LABEL_46;
    }

    if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v117 = *(v116 + 32);

LABEL_46:

      goto LABEL_49;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    swift_once();
  }

  v117 = 0;
LABEL_49:
  v120 = [v110 traitCollection];
  v121 = v146;
  sub_1006A541C(v21, v111, v113, v117, v120, v140, v146, a5, a6 - v102 - v109);

  v45 = v121;

  v31 = v139;
LABEL_50:

  return (*(v32 + 8))(v45, v31);
}

void *sub_100544EDC(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100934D80, &qword_1007BC850);
  __chkstk_darwin(v2 - 8);
  v170 = &v167 - v3;
  v4 = sub_100746A94();
  v197 = *(v4 - 8);
  v198 = v4;
  __chkstk_darwin(v4);
  v6 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v171 = &v167 - v8;
  __chkstk_darwin(v9);
  v191 = &v167 - v10;
  v11 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v167 - v12;
  v14 = sub_10000C518(&unk_100923180, &unk_1007A5F40);
  v195 = *(v14 - 8);
  v196 = v14;
  __chkstk_darwin(v14);
  v194 = &v167 - v15;
  v16 = sub_10074A8C4();
  v205 = *(v16 - 8);
  v206 = v16;
  __chkstk_darwin(v16);
  v204 = &v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_10074AE04();
  *&v211 = *(v212 - 8);
  __chkstk_darwin(v212);
  v193 = &v167 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10074CD14();
  v201 = *(v19 - 8);
  v202 = v19;
  __chkstk_darwin(v19);
  v200 = &v167 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1007479B4();
  v219 = *(v21 - 8);
  v220 = v21;
  __chkstk_darwin(v21);
  v23 = &v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v218 = &v167 - v25;
  v222 = sub_10074A8A4();
  v217 = *(v222 - 1);
  __chkstk_darwin(v222);
  v203 = &v167 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v223 = &v167 - v28;
  v29 = sub_10000C518(&unk_1009393C0, &qword_1007AEFB0);
  __chkstk_darwin(v29 - 8);
  v192 = &v167 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v221 = &v167 - v32;
  v33 = sub_100747C14();
  __chkstk_darwin(v33 - 8);
  v34 = sub_10074F704();
  v199 = *(v34 - 8);
  __chkstk_darwin(v34);
  v216 = &v167 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10074A7F4();
  v207 = *(v36 - 8);
  v208 = v36;
  __chkstk_darwin(v36);
  v38 = &v167 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100742374();
  sub_100549890(&qword_10093DBB0, 255, &type metadata accessor for AppSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_1007468B4();
  v40 = v260[0];
  if (!v260[0])
  {
    return result;
  }

  v168 = v6;
  v41 = sub_100742364();
  v213 = v38;
  v214 = v41;
  sub_100745E24();
  sub_100746884();
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  sub_10074F6A4();
  sub_10074F674();
  v43 = v42;
  v45 = v44;
  v174 = v40;
  v46 = sub_100742354();
  v175 = v34;
  if (v46)
  {
    v190 = sub_10074A7E4();
  }

  else
  {
    v190 = 0;
  }

  v47 = v211;

  v180 = sub_10074EF34();
  v181 = v48;
  v49 = sub_10074EFB4();
  v182 = v50;
  v183 = v49;
  v51 = sub_10074EED4();

  if (v51 && (v52 = sub_100748644(), , v52))
  {
    v53 = sub_10074F764();
    v184 = v54;
    v185 = v53;
  }

  else
  {
    v184 = 0;
    v185 = 0;
  }

  v55 = v212;
  v215 = sub_100745DF4();
  v56 = v221;
  _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  (*(v47 + 56))(v56, 0, 1, v55);
  v210 = sub_100745E14();
  v169 = sub_100745E34();
  swift_getKeyPath();
  sub_100746914();

  v57 = v260[5];
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v58 = v222;
  v59 = sub_10000D0FC(v222, qword_10097E010);
  v187 = *(v217 + 16);
  v188 = v217 + 16;
  v187(v223, v59, v58);
  v60 = sub_100753804();
  v172 = v13;
  v173 = a1;
  if (v60)
  {
    if (qword_100921988 != -1)
    {
      swift_once();
    }

    v61 = qword_10093FF40;
  }

  else
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v61 = qword_10093FF58;
  }

  v62 = v220;
  v63 = sub_10000D0FC(v220, v61);
  v64 = v219;
  (*(v219 + 16))(v23, v63, v62);
  (*(v64 + 32))(v218, v23, v62);
  v65 = [v57 preferredContentSizeCategory];
  sub_100753924();

  sub_100747964();
  sub_100747994();
  sub_10074A894();
  sub_10074A884();
  v186 = sub_100750F34();
  swift_allocObject();
  v189 = sub_100750F14();
  v66 = objc_opt_self();
  v178 = v66;
  v67 = [v66 preferredFontForTextStyle:UIFontTextStyleBody];
  v68 = sub_10074F3F4();
  v260[3] = v68;
  v69 = sub_100549890(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v260[4] = v69;
  v177 = v69;
  v70 = sub_10000D134(v260);
  v71 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v72 = *(v68 - 8);
  v73 = *(v72 + 104);
  v179 = v72 + 104;
  v176 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v73(v70, enum case for Feature.measurement_with_labelplaceholder(_:), v68);
  sub_10074FC74();
  sub_10000C620(v260);
  v74 = v200;
  sub_10074CD04();
  sub_10074CCE4();
  v209 = v57;
  v75 = v202;
  v201 = *(v201 + 8);
  (v201)(v74, v202);
  v76 = [v66 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v259[3] = v68;
  v259[4] = v69;
  v77 = sub_10000D134(v259);
  v73(v77, v71, v68);
  sub_10074FC74();
  sub_10000C620(v259);
  sub_10074CD04();
  sub_10074CCE4();
  v78 = v201;
  (v201)(v74, v75);
  v79 = [v178 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v258[3] = v68;
  v258[4] = v177;
  v80 = sub_10000D134(v258);
  v73(v80, v176, v68);
  sub_10074FC74();
  sub_10000C620(v258);
  sub_10074CD04();
  sub_10074CCE4();
  v78(v74, v75);
  v81 = v215;
  if ((sub_10001BB7C() & (v81 != 0)) == 1)
  {
    v82 = objc_allocWithZone(sub_100751034());
    v83 = v209;
    v84 = sub_100751024();
    v85 = v192;
    sub_100016B4C(v221, v192, &unk_1009393C0, &qword_1007AEFB0);
    v86 = v211;
    v87 = *(v211 + 48);
    v88 = v212;
    if (v87(v85, 1, v212) == 1)
    {
      v89 = v193;
      _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v87(v85, 1, v88) != 1)
      {
        sub_10000C8CC(v85, &unk_1009393C0, &qword_1007AEFB0);
      }
    }

    else
    {
      v89 = v193;
      (*(v86 + 32))(v193, v85, v88);
    }

    v92 = v84;
    sub_100018CE4(v215, v89, v92, v43, v45);

    (*(v86 + 8))(v89, v88);
    v90 = v186;
    swift_allocObject();
    v91 = sub_100750F04();
  }

  else
  {
    v90 = v186;
    swift_allocObject();
    v91 = sub_100750F14();
  }

  v93 = v91;

  v94 = v210;
  if ((sub_10001BB7C() & (v94 != 0)) == 1)
  {
    sub_100077794(v94, v169 & 1, v43, v45);
    swift_allocObject();
    v95 = sub_100750F04();
  }

  else
  {
    swift_allocObject();
    v95 = sub_100750F14();
  }

  v96 = v95;
  v187(v203, v223, v222);
  v257 = &protocol witness table for LayoutViewPlaceholder;
  v256 = v90;
  v97 = v90;
  v98 = v189;
  v255 = v189;
  v254 = 0;
  *&v252[40] = 0u;
  v253 = 0u;
  sub_10000C824(v260, v252);
  sub_10000C824(v259, &v251);
  v250 = 0;
  v248 = 0u;
  v249 = 0u;
  v247 = 0;
  v245 = 0u;
  v246 = 0u;

  v99 = sub_100750F24();
  v244 = &protocol witness table for LayoutViewPlaceholder;
  v243 = v97;
  v242 = v99;
  v241 = 0;
  v239 = 0u;
  v240 = 0u;
  v238 = 0;
  v236 = 0u;
  v237 = 0u;
  v235 = 0;
  v233 = 0u;
  v234 = 0u;
  v232 = 0;
  v231 = 0u;
  *&v230[40] = 0u;
  sub_10000C824(v258, v230);
  v229 = &protocol witness table for LayoutViewPlaceholder;
  v228 = v97;
  v226 = &protocol witness table for LayoutViewPlaceholder;
  v227 = v93;
  v225 = v97;
  v224 = v96;
  v100 = v204;
  sub_10074A8B4();
  v101 = sub_100751034();
  v102 = sub_10000C518(&unk_1009231A0, qword_1007A5810);
  v103 = swift_allocObject();
  v211 = xmmword_1007A5CF0;
  *(v103 + 16) = xmmword_1007A5CF0;
  v104 = v209;
  *(v103 + 32) = v209;
  v105 = v104;
  v212 = v101;
  v106 = sub_100751044();
  sub_100549890(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v107 = v206;
  sub_100750404();

  (*(v205 + 8))(v100, v107);
  sub_10000C620(v258);
  sub_10000C620(v259);
  sub_10000C620(v260);
  (*(v219 + 8))(v218, v220);
  (*(v217 + 8))(v223, v222);
  sub_10000C8CC(v221, &unk_1009393C0, &qword_1007AEFB0);
  if ((v190 & 1) == 0)
  {

    (*(v199 + 8))(v216, v175);
    return (*(v207 + 8))(v213, v208);
  }

  v108 = v194;
  sub_10074DF44();
  swift_getKeyPath();
  v109 = v173;
  sub_100746914();

  v110 = v260[0];
  v111 = swift_allocObject();
  *(v111 + 16) = v211;
  *(v111 + 32) = v110;
  v112 = v110;
  v113 = sub_100751044();
  sub_10001B5C0();
  v114 = v196;
  sub_100750544();

  (*(v195 + 8))(v108, v114);
  v223 = sub_100745E04();
  v115 = sub_100745DE4();
  v116 = sub_100745DD4();
  if (v116 >> 62)
  {
    v117 = v116;
    v118 = sub_100754664();
    v116 = v117;
    if (v118)
    {
      goto LABEL_34;
    }

LABEL_40:

    v102 = 0;
    goto LABEL_41;
  }

  if (!*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_40;
  }

LABEL_34:
  if ((v116 & 0xC000000000000001) != 0)
  {
    v102 = sub_100754574();
  }

  else
  {
    if (!*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_76;
    }

    v102 = *(v116 + 32);
  }

LABEL_41:
  v119 = sub_100745E54();
  if (v119 >> 62)
  {
    v120 = v119;
    v121 = sub_100754664();
    v119 = v120;
    if (v121)
    {
      goto LABEL_43;
    }

LABEL_48:

    v222 = 0;
    goto LABEL_49;
  }

  if (!*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

LABEL_43:
  if ((v119 & 0xC000000000000001) != 0)
  {
    v222 = sub_100754574();
  }

  else
  {
    if (!*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_78;
    }

    v222 = *(v119 + 32);
  }

LABEL_49:
  type metadata accessor for ContentSearchResultCollectionViewCell();
  v122 = ASKDeviceTypeGetCurrent();
  swift_getKeyPath();
  sub_100746914();

  v98 = v260[0];
  sub_100222B00(v172);

  v109 = sub_100745E04();
  v112 = sub_100745DE4();
  v123 = sub_100745DD4();
  if (v123 >> 62)
  {
    v124 = v123;
    v125 = sub_100754664();
    v123 = v124;
    v113 = v213;
    if (v125)
    {
LABEL_51:
      if ((v123 & 0xC000000000000001) == 0)
      {
        if (!*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_80;
        }

        v98 = *(v123 + 32);

        goto LABEL_54;
      }

LABEL_76:
      v98 = sub_100754574();
LABEL_54:

      goto LABEL_57;
    }
  }

  else
  {
    v113 = v213;
    if (*((v123 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_51;
    }
  }

  v98 = 0;
LABEL_57:
  v126 = sub_100745E54();
  if (v126 >> 62)
  {
    v129 = v126;
    v130 = sub_100754664();
    v126 = v129;
    v221 = v102;
    if (v130)
    {
LABEL_59:
      if ((v126 & 0xC000000000000001) == 0)
      {
        if (*((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v128 = *(v126 + 32);

LABEL_62:

          goto LABEL_65;
        }

LABEL_80:
        __break(1u);
LABEL_81:
        v219 = sub_100754664();
        if (v98)
        {
          goto LABEL_69;
        }

        goto LABEL_82;
      }

LABEL_78:
      v128 = sub_100754574();
      goto LABEL_62;
    }
  }

  else
  {
    v127 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v221 = v102;
    if (v127)
    {
      goto LABEL_59;
    }
  }

  v128 = 0;
LABEL_65:
  v131 = sub_10074A7E4();
  v220 = v115;
  if ((v131 & 1) == 0)
  {

    v136 = v197;
    v137 = v191;
    (*(v197 + 104))(v191, enum case for LockupMediaLayout.DisplayType.none(_:), v198);
LABEL_72:
    v140 = v172;
    v141 = v199;
LABEL_104:
    type metadata accessor for LockupMediaView(0);
    v165 = sub_10007DC04();
    swift_getObjectType();
    v166 = v213;
    sub_1006A6BAC(v223, v220, v221, v222, v140, v137, v165, v213, v43, v45);

    swift_unknownObjectRelease();

    (*(v136 + 8))(v137, v198);
    sub_10000C8CC(v140, &unk_1009281D0, qword_1007A82B0);
    (*(v141 + 8))(v216, v175);
    return (*(v207 + 8))(v166, v208);
  }

  if (v112 | v109)
  {
    v138 = v171;
    sub_100750504();

    v136 = v197;
    v139 = v198;
    (*(v197 + 104))(v138, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v198);
    v137 = v191;
    (*(v136 + 32))(v191, v138, v139);
    goto LABEL_72;
  }

  v133 = sub_100631A30(v98, v128, 0, 1, v132);
  v112 = v133;
  v113 = (v133 >> 62);
  if (v133 >> 62)
  {
    goto LABEL_81;
  }

  v219 = *((v133 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v98)
  {
LABEL_69:
    v135 = sub_100743844();
    goto LABEL_83;
  }

LABEL_82:
  v135 = 0;
LABEL_83:
  v142 = sub_100631D8C(v135, v134);

  LODWORD(v217) = v142;
  if (v98)
  {
    v143 = sub_100743844();
  }

  else
  {
    v143 = 0;
  }

  v145 = v207;
  v144 = v208;
  v146 = v170;
  (*(v207 + 16))(v170, v213, v208);
  (*(v145 + 56))(v146, 0, 1, v144);
  v147 = sub_1006322B4(v143, v146);

  sub_10000C8CC(v146, &unk_100934D80, &qword_1007BC850);
  if (v113)
  {
    result = sub_100754664();
    v148 = v168;
    if (result)
    {
      goto LABEL_88;
    }

LABEL_94:

    goto LABEL_95;
  }

  result = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v148 = v168;
  if (!result)
  {
    goto LABEL_94;
  }

LABEL_88:
  if ((v112 & 0xC000000000000001) != 0)
  {
    sub_100754574();
LABEL_91:

    v149 = sub_10074F194();

    if (v149)
    {

      v136 = v197;
      v150 = v198;
      v151 = v171;
      (*(v197 + 104))(v171, enum case for LockupMediaLayout.DisplayType.landscape(_:), v198);
LABEL_103:
      v137 = v191;
      v164 = v172;
      v141 = v199;
      (*(v136 + 32))(v191, v151, v150);
      v140 = v164;
      goto LABEL_104;
    }

LABEL_95:
    v152 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v153 = v147;
    v154 = v197;
    v155 = v148;
    v156 = v148;
    v150 = v198;
    v218 = *(v197 + 104);
    (v218)(v155, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v198);
    v157 = sub_100746A84();
    v215 = *(v154 + 8);
    v215(v156, v150);
    if (((v219 >= v157) & v153) != 0 || (v152 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), (v218)(v156, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v150), v158 = sub_100746A84(), v159 = v215, v215(v156, v150), ((v219 >= v158) & v217) != 0) || (v152 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), (v218)(v156, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v150), v160 = sub_100746A84(), v159(v156, v150), v219 >= v160))
    {
    }

    else
    {
      v152 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      (v218)(v156, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v150);
      v161 = sub_100746A84();

      v159(v156, v150);
      if (v219 != v161)
      {
        v162 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v151 = v171;
        v163 = v171;
LABEL_102:
        (v218)(v163, v162, v150);
        v136 = v197;
        goto LABEL_103;
      }
    }

    v151 = v171;
    v163 = v171;
    v162 = v152;
    goto LABEL_102;
  }

  if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_91;
  }

  __break(1u);
  return result;
}

void sub_100546AA4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_screenshots);
  v3 = OBJC_IVAR____TtC22SubscribePageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4 >> 62)
  {
    v5 = sub_100754664();
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
      v7 = sub_100754574();
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    ++v6;
    type metadata accessor for BorderedScreenshotView(0);
    sub_100549890(&qword_100923470, 255, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
    v9 = v8;
    sub_1007544E4();
    sub_100744264();
    sub_100016994(v29);
    v10 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView];
    v30.value.super.isa = 0;
    v30.is_nil = 0;
    sub_100743384(v30, v11);
  }

  while (v5 != v6);

LABEL_10:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [*(Strong + qword_10093CB50) setImage:0];
    type metadata accessor for VideoView(0);
    sub_100549890(&qword_10093DD00, 255, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v14 = v13;
    sub_1007544E4();
    sub_100744264();

    sub_100016994(v29);
  }

  v15 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension26AppSearchResultContentView_lockupView);
  v16 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
  v17 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  sub_100743384(v31, v18);

  v19 = *(v15 + OBJC_IVAR____TtC22SubscribePageExtension21SmallSearchLockupView_metadataRibbonView);
  v20 = *&v19[OBJC_IVAR____TtC22SubscribePageExtension18MetadataRibbonView_metadataRibbonItemViews];
  v21 = *(v20 + 16);
  if (v21)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v28 = v19;

    v22 = 32;
    do
    {
      v23 = *(v20 + v22);
      if (swift_dynamicCastClass())
      {
        v24 = v23;
        v32.value.super.isa = 0;
        v32.is_nil = 0;
        sub_100743384(v32, v25);
        sub_1007433C4();
        sub_100549890(&qword_100925570, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        sub_100744274();
      }

      v22 += 16;
      --v21;
    }

    while (v21);
  }

  v26 = *(v15 + v16);
  sub_1007433C4();
  sub_100549890(&qword_100925570, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v27 = v26;
  sub_100744274();
}

uint64_t sub_100546ED4(uint64_t a1, uint64_t a2)
{
  v279 = a2;
  v3 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v3 - 8);
  v272 = &v219[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10000C518(&unk_100934D80, &qword_1007BC850);
  __chkstk_darwin(v5 - 8);
  v243 = &v219[-v6];
  v7 = sub_1007504F4();
  v261 = *(v7 - 8);
  __chkstk_darwin(v7);
  v251 = &v219[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v260 = &v219[-v10];
  v11 = sub_100746B04();
  v247 = *(v11 - 8);
  __chkstk_darwin(v11);
  v271 = &v219[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v13 - 8);
  v250 = &v219[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v275 = &v219[-v16];
  v17 = sub_100746A94();
  v262 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v219[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v241 = &v219[-v21];
  __chkstk_darwin(v22);
  v265 = &v219[-v23];
  __chkstk_darwin(v24);
  v244 = &v219[-v25];
  __chkstk_darwin(v26);
  v274 = &v219[-v27];
  v28 = sub_10000C518(&unk_100923180, &unk_1007A5F40);
  v258 = *(v28 - 8);
  v259 = v28;
  __chkstk_darwin(v28);
  v257 = &v219[-v29];
  v30 = sub_10074A8C4();
  v255 = *(v30 - 8);
  v256 = v30;
  __chkstk_darwin(v30);
  v254 = &v219[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_10074AE04();
  v263 = *(v32 - 1);
  v264 = v32;
  __chkstk_darwin(v32);
  v246 = &v219[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v276 = sub_10074CD14();
  v252 = *(v276 - 8);
  __chkstk_darwin(v276);
  v35 = &v219[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = sub_1007479B4();
  v269 = *(v36 - 1);
  v270 = v36;
  __chkstk_darwin(v36);
  v38 = &v219[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v39);
  v268 = &v219[-v40];
  v277 = sub_10074A8A4();
  v267 = *(v277 - 8);
  __chkstk_darwin(v277);
  v253 = &v219[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v278 = &v219[-v43];
  v44 = sub_10000C518(&unk_1009393C0, &qword_1007AEFB0);
  __chkstk_darwin(v44 - 8);
  v245 = &v219[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v46);
  v273 = &v219[-v47];
  v48 = sub_100747C14();
  __chkstk_darwin(v48 - 8);
  v49 = sub_10074F704();
  v248 = *(v49 - 8);
  v249 = v49;
  __chkstk_darwin(v49);
  v266 = &v219[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = sub_10074A7F4();
  v281 = *(v51 - 8);
  v282 = v51;
  __chkstk_darwin(v51);
  v284 = &v219[-((v52 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100742374();
  sub_100549890(&qword_10093DBB0, 255, &type metadata accessor for AppSearchResult, &protocol conformance descriptor for SearchResult);
  v283 = a1;
  result = sub_1007468B4();
  if (!v322[0])
  {
    return result;
  }

  v242 = v19;
  v239 = v11;
  v280 = v322[0];
  sub_100742364();
  v326 = _swiftEmptyArrayStorage;

  if (sub_10074EF24())
  {
    if (qword_100920548 != -1)
    {
      swift_once();
    }

    v54 = sub_100747064();
    sub_10000D0FC(v54, qword_10097E3A8);
    sub_100746F34();
    sub_10074F374();
    sub_100753284();
    if (*((v326 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v326 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();
  }

  v240 = v7;
  v55 = sub_100745DF4();
  swift_getKeyPath();
  sub_100746914();

  v56 = v322[0];
  v57 = sub_100266258(v55, v322[0]);

  sub_10049FCD8(v57, v58);
  v59 = v284;
  sub_100745E24();
  v60 = sub_100745DD4();
  if (v60 >> 62)
  {
    v136 = sub_100754664();
    v59 = v284;

    if (v136)
    {
      goto LABEL_10;
    }

LABEL_52:

    goto LABEL_53;
  }

  v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v61)
  {
    goto LABEL_52;
  }

LABEL_10:
  if ((sub_100742354() & 1) == 0 || (sub_10074A7E4() & 1) == 0)
  {
    goto LABEL_52;
  }

  v62 = v283;
  sub_100746884();
  if (qword_100920C20 != -1)
  {
    swift_once();
  }

  sub_10074F6A4();
  sub_10074F5A4();
  v64 = v63;
  sub_100544EDC(v62);
  v66 = v65;
  v67 = sub_10074EF34();
  v224 = v68;
  v225 = v67;
  v69 = sub_10074EFB4();
  v226 = v70;
  v227 = v69;
  v71 = sub_10074EED4();

  if (v71)
  {
    v72 = sub_100748644();

    v74 = v263;
    v73 = v264;
    if (v72)
    {
      v75 = sub_10074F764();
      v228 = v76;
      v229 = v75;
    }

    else
    {
      v228 = 0;
      v229 = 0;
    }
  }

  else
  {
    v228 = 0;
    v229 = 0;
    v74 = v263;
    v73 = v264;
  }

  v237 = sub_100745DF4();
  v77 = v273;
  _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
  (v74[7])(v77, 0, 1, v73);
  v236 = sub_100745E14();
  v78 = sub_100745E34();
  swift_getKeyPath();
  sub_100746914();

  v79 = v325;
  if (qword_100920410 != -1)
  {
    swift_once();
  }

  v80 = v277;
  v81 = sub_10000D0FC(v277, qword_10097E010);
  v82 = v267 + 16;
  v83 = *(v267 + 16);
  v83(v278, v81, v80);
  v84 = sub_100753804();
  v238 = v17;
  v231 = v83;
  v232 = v82;
  v220 = v78;
  if ((v84 & 1) == 0)
  {
    if (qword_100921990 != -1)
    {
      swift_once();
    }

    v85 = qword_10093FF58;
    goto LABEL_27;
  }

  if (qword_100921988 != -1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    v85 = qword_10093FF40;
LABEL_27:
    v86 = v270;
    v87 = sub_10000D0FC(v270, v85);
    v88 = v269;
    (*(v269 + 16))(v38, v87, v86);
    (*(v88 + 32))(v268, v38, v86);
    v89 = [v79 preferredContentSizeCategory];
    sub_100753924();

    sub_100747964();
    sub_100747994();
    sub_10074A894();
    sub_10074A884();
    v230 = sub_100750F34();
    swift_allocObject();
    v233 = sub_100750F14();
    v234 = objc_opt_self();
    v90 = [v234 preferredFontForTextStyle:UIFontTextStyleBody];
    v91 = sub_10074F3F4();
    v323 = v91;
    v92 = sub_100549890(&qword_10092AC70, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v324 = v92;
    v222 = v92;
    v93 = sub_10000D134(v322);
    v94 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v95 = *(v91 - 8);
    v96 = *(v95 + 104);
    v223 = v95 + 104;
    v96(v93, enum case for Feature.measurement_with_labelplaceholder(_:), v91);
    v221 = v96;
    sub_10074FC74();
    v235 = v79;
    sub_10000C620(v322);
    sub_10074CD04();
    sub_10074CCE4();
    v97 = *(v252 + 8);
    v97(v35, v276);
    v98 = [v234 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v321[3] = v91;
    v321[4] = v92;
    v99 = sub_10000D134(v321);
    v96(v99, v94, v91);
    sub_10074FC74();
    sub_10000C620(v321);
    sub_10074CD04();
    sub_10074CCE4();
    v97(v35, v276);
    v100 = [v234 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v320[3] = v91;
    v320[4] = v222;
    v101 = sub_10000D134(v320);
    v221(v101, v94, v91);
    sub_10074FC74();
    sub_10000C620(v320);
    sub_10074CD04();
    sub_10074CCE4();
    v97(v35, v276);
    v102 = v237;
    LODWORD(v276) = sub_10001BB7C() & (v102 != 0);
    if (v276 == 1)
    {
      v103 = objc_allocWithZone(sub_100751034());
      v104 = v235;
      v105 = sub_100751024();
      v106 = v245;
      sub_100016B4C(v273, v245, &unk_1009393C0, &qword_1007AEFB0);
      v108 = v263;
      v107 = v264;
      v109 = v263[6];
      if (v109(v106, 1, v264) == 1)
      {
        v110 = v246;
        _s22SubscribePageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        if (v109(v106, 1, v107) != 1)
        {
          sub_10000C8CC(v106, &unk_1009393C0, &qword_1007AEFB0);
        }
      }

      else
      {
        v110 = v246;
        (v108[4])(v246, v106, v107);
      }

      v113 = v105;
      sub_100018CE4(v237, v110, v113, v64, v66);

      (v108[1])(v110, v107);
      v111 = v230;
      swift_allocObject();
      v112 = sub_100750F04();
    }

    else
    {
      v111 = v230;
      swift_allocObject();
      v112 = sub_100750F14();
    }

    v114 = v112;

    v115 = v236;
    if ((sub_10001BB7C() & (v115 != 0)) == 1)
    {
      sub_100077794(v115, v220 & 1, v64, v66);
      swift_allocObject();
      v116 = sub_100750F04();
    }

    else
    {
      swift_allocObject();
      v116 = sub_100750F14();
    }

    v117 = v116;
    v231(v253, v278, v277);
    v319 = &protocol witness table for LayoutViewPlaceholder;
    v318 = v111;
    v317 = v233;
    v316 = 0;
    *&v314[40] = 0u;
    v315 = 0u;
    sub_10000C824(v322, v314);
    sub_10000C824(v321, &v313);
    v312 = 0;
    v310 = 0u;
    v311 = 0u;
    v309 = 0;
    v307 = 0u;
    v308 = 0u;

    v264 = v117;
    v118 = sub_100750F24();
    v306 = &protocol witness table for LayoutViewPlaceholder;
    v305 = v111;
    v304 = v118;
    v303 = 0;
    v301 = 0u;
    v302 = 0u;
    v300 = 0;
    v298 = 0u;
    v299 = 0u;
    v297 = 0;
    v295 = 0u;
    v296 = 0u;
    v294 = 0;
    v293 = 0u;
    *&v292[40] = 0u;
    sub_10000C824(v320, v292);
    v291 = &protocol witness table for LayoutViewPlaceholder;
    v290 = v111;
    v289 = v114;
    v288 = &protocol witness table for LayoutViewPlaceholder;
    v287 = v111;
    v286 = v117;
    v119 = v254;
    sub_10074A8B4();
    sub_100751034();
    v120 = sub_10000C518(&unk_1009231A0, qword_1007A5810);
    v121 = swift_allocObject();
    v276 = xmmword_1007A5CF0;
    *(v121 + 16) = xmmword_1007A5CF0;
    v122 = v235;
    *(v121 + 32) = v235;
    v123 = v122;
    v124 = sub_100751044();
    sub_100549890(&unk_10092AC80, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v125 = v256;
    sub_100750404();

    (*(v255 + 8))(v119, v125);
    sub_10000C620(v320);
    sub_10000C620(v321);
    sub_10000C620(v322);
    (*(v269 + 8))(v268, v270);
    (*(v267 + 8))(v278, v277);
    v79 = v257;
    sub_10074DF44();
    v126 = swift_allocObject();
    *(v126 + 16) = v276;
    *(v126 + 32) = v123;
    v127 = v123;
    v38 = sub_100751044();
    sub_10001B5C0();
    v128 = v259;
    sub_100750544();

    (*(v258 + 8))(v79, v128);
    sub_10000C8CC(v273, &unk_1009393C0, &qword_1007AEFB0);
    v129 = sub_100745E04();
    v35 = sub_100745DE4();
    v130 = sub_100745DD4();
    if (v130 >> 62)
    {
      v38 = v130;
      v131 = sub_100754664();
      v130 = v38;
    }

    else
    {
      v131 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v132 = v274;
    v133 = v242;
    if (v131)
    {
      if ((v130 & 0xC000000000000001) != 0)
      {
        v38 = v130;
        v128 = sub_100754574();
      }

      else
      {
        if (!*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_121;
        }

        v38 = v130;
        v128 = *(v130 + 32);
      }
    }

    else
    {

      v128 = 0;
    }

    v134 = sub_100745E54();
    if (v134 >> 62)
    {
      v38 = v134;
      v138 = sub_100754664();
      v134 = v38;
      v273 = v35;
      if (!v138)
      {
LABEL_57:

        v278 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      v135 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v273 = v35;
      if (!v135)
      {
        goto LABEL_57;
      }
    }

    if ((v134 & 0xC000000000000001) != 0)
    {
      v38 = v134;
      v278 = sub_100754574();
    }

    else
    {
      if (!*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_123:
        v142 = sub_100754574();
LABEL_71:

        goto LABEL_74;
      }

      v38 = v134;
      v278 = *(v134 + 32);
    }

LABEL_58:
    v120 = sub_100745E04();
    v79 = sub_100745DE4();
    v130 = sub_100745DD4();
    if (v130 >> 62)
    {
      v38 = v130;
      v139 = sub_100754664();
      v130 = v38;
      if (!v139)
      {
        goto LABEL_65;
      }

LABEL_60:
      if ((v130 & 0xC000000000000001) == 0)
      {
        if (!*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_125;
        }

        v35 = v130;
        v38 = *(v130 + 32);

        goto LABEL_63;
      }

LABEL_121:
      v35 = v130;
      v38 = sub_100754574();
LABEL_63:

      goto LABEL_66;
    }

    if (*((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_60;
    }

LABEL_65:

    v38 = 0;
LABEL_66:
    v140 = sub_100745E54();
    if (v140 >> 62)
    {
      break;
    }

    v141 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v277 = v128;
    if (!v141)
    {
      goto LABEL_73;
    }

LABEL_68:
    if ((v140 & 0xC000000000000001) != 0)
    {
      goto LABEL_123;
    }

    if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v142 = *(v140 + 32);

      goto LABEL_71;
    }

LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
  }

  v143 = v140;
  v144 = sub_100754664();
  v140 = v143;
  v277 = v128;
  if (v144)
  {
    goto LABEL_68;
  }

LABEL_73:

  v142 = 0;
LABEL_74:
  if ((sub_10074A7E4() & 1) == 0)
  {

    v142 = v262;
    v38 = v238;
    (*(v262 + 104))(v132, enum case for LockupMediaLayout.DisplayType.none(_:), v238);
LABEL_82:
    v150 = v240;
    v148 = v261;
    goto LABEL_110;
  }

  if (v79 | v120)
  {
    v152 = v244;
    sub_100750504();

    v142 = v262;
    v38 = v238;
    (*(v262 + 104))(v152, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v238);
    (*(v142 + 32))(v132, v152, v38);
    goto LABEL_82;
  }

  v146 = sub_100631A30(v38, v142, 0, 1, v145);
  v132 = v146;
  v148 = v146 >> 62;
  if (v146 >> 62)
  {
    goto LABEL_175;
  }

  v149 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v150 = v240;
    *&v276 = v149;
    if (v38)
    {
      v151 = sub_100743844();
    }

    else
    {
      v151 = 0;
    }

    LODWORD(v269) = sub_100631D8C(v151, v147);

    v259 = v129;
    if (v38)
    {
      v153 = sub_100743844();
    }

    else
    {
      v153 = 0;
    }

    v154 = v281;
    v155 = v282;
    v156 = v243;
    (*(v281 + 16))(v243, v284, v282);
    (*(v154 + 56))(v156, 0, 1, v155);
    v133 = sub_1006322B4(v153, v156);

    sub_10000C8CC(v156, &unk_100934D80, &qword_1007BC850);
    if (v148)
    {
      v158 = sub_100754664();
    }

    else
    {
      v158 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v148 = v261;
    v129 = v259;
    if (!v158)
    {

      goto LABEL_97;
    }

    if ((v132 & 0xC000000000000001) != 0)
    {
      sub_100754574();
    }

    else
    {
      if (!*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_178;
      }
    }

    v159 = sub_10074F194();

    if ((v159 & 1) == 0)
    {
LABEL_97:
      v161 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
      v162 = v262;
      v163 = v238;
      v164 = v241;
      v270 = *(v262 + 104);
      v270(v241, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v238);
      v165 = v133;
      v166 = sub_100746A84();
      v268 = *(v162 + 8);
      (v268)(v164, v163);
      if (((v276 >= v166) & v165) != 0)
      {

        v160 = v244;
        v167 = v244;
        v168 = v161;
      }

      else
      {
        v169 = enum case for LockupMediaLayout.DisplayType.threeUp(_:);
        v270(v164, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v163);
        v170 = sub_100746A84();
        v171 = v268;
        (v268)(v164, v163);
        if (((v276 >= v170) & v269) == 0)
        {
          v172 = v164;
          v173 = enum case for LockupMediaLayout.DisplayType.twoUp(_:);
          v270(v164, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v163);
          v174 = sub_100746A84();
          v171(v172, v163);
          v175 = v276 < v174;
          v176 = v172;
          v132 = v274;
          if (v175)
          {
            LODWORD(v269) = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
            (v270)(v176);
            v177 = sub_100746A84();

            v171(v176, v163);
            if (v276 == v177)
            {
              v160 = v244;
              v178 = v244;
              v179 = v269;
            }

            else
            {
              v179 = enum case for LockupMediaLayout.DisplayType.none(_:);
              v160 = v244;
              v178 = v244;
            }
          }

          else
          {

            v160 = v244;
            v178 = v244;
            v179 = v173;
          }

          v270(v178, v179, v163);
          v38 = v163;
          v142 = v262;
          goto LABEL_108;
        }

        v160 = v244;
        v167 = v244;
        v168 = v169;
      }

      v270(v167, v168, v163);
      v38 = v163;
      v142 = v262;
      v132 = v274;
LABEL_108:
      v150 = v240;
      v148 = v261;
      v129 = v259;
      goto LABEL_109;
    }

    v142 = v262;
    v160 = v244;
    v38 = v238;
    (*(v262 + 104))(v244, enum case for LockupMediaLayout.DisplayType.landscape(_:), v238);
    v132 = v274;
LABEL_109:
    (*(v142 + 32))(v132, v160, v38);
    v133 = v242;
LABEL_110:
    v180 = sub_10007DC04();
    (*(v148 + 56))(v275, 1, 1, v150);
    v263 = v180;
    v264 = [v180 traitCollection];
    v323 = &type metadata for CGFloat;
    v324 = &protocol witness table for CGFloat;
    v322[0] = 0x4021000000000000;
    sub_10000C824(v322, v321);
    v181 = *(v142 + 16);
    v283 = v142 + 16;
    *&v276 = v181;
    v181(v265, v132, v38);
    if (v273 | v129)
    {
      goto LABEL_129;
    }

    v183 = sub_100631A30(v277, v278, 0, 1, v182);
    if (!(v183 >> 62))
    {
      if (!*((v183 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_128;
      }

LABEL_113:
      if ((v183 & 0xC000000000000001) != 0)
      {
        sub_100754574();
      }

      else
      {
        if (!*((v183 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_175:
          v149 = sub_100754664();
          continue;
        }
      }

      sub_10074F2A4();
      sub_100750504();

      goto LABEL_130;
    }

    break;
  }

  v184 = v183;
  v185 = sub_100754664();
  v183 = v184;
  if (v185)
  {
    goto LABEL_113;
  }

LABEL_128:

LABEL_129:
  sub_100750504();
LABEL_130:
  sub_100016B4C(v275, v250, &unk_1009281D0, qword_1007A82B0);
  sub_100746AD4();
  sub_10000C620(v322);
  v186 = v251;
  sub_100746AE4();
  sub_1007504C4();
  v187 = *(v148 + 8);
  v148 += 8;
  v187(v186, v150);
  if (v273)
  {
    v133 = v142;

    sub_10074EC14();
    v188 = sub_10074F374();
    v189 = sub_100254D74(0, 1, 1, _swiftEmptyArrayStorage);
    v148 = *(v189 + 2);
    v190 = *(v189 + 3);
    v191 = v148 + 1;
    if (v148 >= v190 >> 1)
    {
      goto LABEL_172;
    }

    goto LABEL_132;
  }

  if (v129)
  {

    v193 = sub_10074F374();
    v189 = sub_100254D74(0, 1, 1, _swiftEmptyArrayStorage);
    v195 = *(v189 + 2);
    v194 = *(v189 + 3);
    if (v195 >= v194 >> 1)
    {
      v189 = sub_100254D74((v194 > 1), v195 + 1, 1, v189);
    }

    (*(v247 + 8))(v271, v239);
    sub_10000C8CC(v275, &unk_1009281D0, qword_1007A82B0);
    *(v189 + 2) = v195 + 1;
    v196 = &v189[16 * v195];
    *(v196 + 4) = v193;
    v196[40] = 0;
    goto LABEL_180;
  }

  v197 = sub_100746A84();
  v199 = sub_100631A30(v277, v278, v197, 0, v198);
  sub_100746B24();
  v157 = v199;
  if (!(v199 >> 62))
  {
    result = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_139;
    }

LABEL_179:

    (*(v247 + 8))(v271, v239);
    sub_10000C8CC(v275, &unk_1009281D0, qword_1007A82B0);
    v189 = _swiftEmptyArrayStorage;
    goto LABEL_180;
  }

LABEL_178:
  v214 = v157;
  result = sub_100754664();
  v157 = v214;
  if (!result)
  {
    goto LABEL_179;
  }

LABEL_139:
  v259 = v129;
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v200 = 0;
  v270 = (v157 & 0xC000000000000001);
  v201 = (v142 + 88);
  LODWORD(v269) = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
  LODWORD(v261) = enum case for LockupMediaLayout.DisplayType.landscape(_:);
  v265 = (v142 + 8);
  v189 = _swiftEmptyArrayStorage;
  v267 = result;
  v268 = v157;
  while (2)
  {
    if (v270)
    {
      v191 = sub_100754574();
    }

    else
    {
      v191 = *(v157 + 8 * v200 + 32);
    }

    v202 = v238;
    (v276)(v133, v132, v238);
    v203 = (*v201)(v133, v202);
    if (v203 == v269)
    {
      (*v265)(v133, v202);
      goto LABEL_147;
    }

    if (v203 != v261)
    {
      v204 = sub_10074F194();
      (*v265)(v133, v238);
      if (v278)
      {
        goto LABEL_151;
      }

LABEL_148:
      if (!v277)
      {
        goto LABEL_162;
      }

      goto LABEL_149;
    }

LABEL_147:
    v204 = 0;
    if (!v278)
    {
      goto LABEL_148;
    }

LABEL_151:
    v188 = v278;
    v206 = sub_10074F794();
    if (!(v206 >> 62))
    {
      if (*((v206 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_153;
      }

LABEL_161:

      if (!v277)
      {
LABEL_162:
        v205 = 0;
LABEL_163:
        sub_100743864();
        v210 = v272;
        sub_1002898DC(v205, v272, v211);

        sub_100753BA4();
        v208 = sub_10074F374();
        sub_100024440(v210);
LABEL_164:

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v189 = sub_100254D74(0, *(v189 + 2) + 1, 1, v189);
        }

        v148 = *(v189 + 2);
        v212 = *(v189 + 3);
        if (v148 >= v212 >> 1)
        {
          v189 = sub_100254D74((v212 > 1), v148 + 1, 1, v189);
        }

        ++v200;

        *(v189 + 2) = v148 + 1;
        v213 = &v189[16 * v148];
        *(v213 + 4) = v208;
        v213[40] = v204 & 1;
        v157 = v268;
        v133 = v242;
        if (v267 == v200)
        {

          (*(v247 + 8))(v271, v239);
          sub_10000C8CC(v275, &unk_1009281D0, qword_1007A82B0);
          v142 = v262;
          goto LABEL_180;
        }

        continue;
      }

      goto LABEL_149;
    }

    break;
  }

  v188 = v206;
  v209 = sub_100754664();
  v206 = v188;
  if (!v209)
  {
    goto LABEL_161;
  }

LABEL_153:
  if ((v206 & 0xC000000000000001) != 0)
  {
    sub_100754574();
    goto LABEL_156;
  }

  v190 = *((v206 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v190)
  {

LABEL_156:

    sub_10074F3D4();
    sub_10074EC14();
    v207 = sub_10074F224();

    if (v207)
    {
      v208 = sub_10074F374();

      v132 = v274;
      goto LABEL_164;
    }

    v132 = v274;
    if (!v277)
    {
      goto LABEL_162;
    }

LABEL_149:
    v205 = sub_100743844();
    goto LABEL_163;
  }

  __break(1u);
LABEL_172:
  v189 = sub_100254D74((v190 > 1), v191, 1, v189);
LABEL_132:

  (*(v247 + 8))(v271, v239);
  sub_10000C8CC(v275, &unk_1009281D0, qword_1007A82B0);
  *(v189 + 2) = v191;
  v192 = &v189[16 * v148];
  *(v192 + 4) = v188;
  v192[40] = 0;
  v142 = v133;
LABEL_180:
  v215 = *(v189 + 2);
  if (v215)
  {
    v322[0] = _swiftEmptyArrayStorage;
    sub_1007545C4();
    v216 = 32;
    do
    {

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      v216 += 16;
      --v215;
    }

    while (v215);
    swift_unknownObjectRelease();

    (*(v142 + 8))(v274, v238);
    v218 = v322[0];
  }

  else
  {
    swift_unknownObjectRelease();

    (*(v142 + 8))(v132, v238);
    v218 = _swiftEmptyArrayStorage;
  }

  sub_10049FCD8(v218, v217);
  (*(v248 + 8))(v266, v249);
  v59 = v284;
LABEL_53:
  v137._rawValue = v326;
  sub_100744224(v137);

  return (*(v281 + 8))(v59, v282);
}