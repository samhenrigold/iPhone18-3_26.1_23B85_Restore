uint64_t sub_10044FE7C()
{
  v0 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v0 - 8);
  v2 = v16 - v1;
  v3 = sub_10076C2DC();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v4 - 8);
  v16[3] = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = v16 - v9;
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v11 = *(sub_10076C20C() - 8);
  v18 = *(v11 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v17 = v13;
  *(v13 + 16) = xmmword_1007844F0;
  v19 = v13 + v12;
  v20 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  v20 = 0x4048000000000000;
  sub_10076C29C();
  sub_10076C2CC();
  left = UIEdgeInsetsZero.left;
  LOBYTE(v20) = 0;
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v20 = 0x3FF0000000000000;
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  v20 = 0x4048000000000000;
  sub_10076C29C();
  sub_10076C2CC();
  LOBYTE(v20) = 0;
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  *&v16[4] = left;
  v16[5] = *&UIEdgeInsetsZero.top;
  sub_10076C1CC();
  v20 = 0x3FF0000000000000;
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  v20 = 0x4048000000000000;
  sub_10076C29C();
  sub_10076C2CC();
  LOBYTE(v20) = 0;
  v16[2] = v2;
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v20 = 0x4000000000000000;
  sub_10076C29C();
  v20 = 0x4044000000000000;
  sub_10076C29C();
  v20 = 0x4044000000000000;
  sub_10076C29C();
  sub_10076C2CC();
  sub_1007704BC();
  LOBYTE(v20) = 0;
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  v16[1] = v10;
  sub_10076C1CC();
  v20 = 0x4000000000000000;
  sub_10076C29C();
  v20 = 0x4044000000000000;
  sub_10076C29C();
  v20 = 0x4044000000000000;
  sub_10076C29C();
  sub_10076C2CC();
  LOBYTE(v20) = 0;
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v20 = 0x4000000000000000;
  sub_10076C29C();
  v20 = 0x4044000000000000;
  sub_10076C29C();
  v20 = 0x4044000000000000;
  sub_10076C29C();
  sub_10076C2CC();
  LOBYTE(v20) = 0;
  sub_10076C29C();
  v20 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_10099FA98 = v17;
  return result;
}

uint64_t sub_1004506B8@<X0>(uint64_t (*a1)(void)@<X1>, double *a2@<X8>)
{
  v4 = sub_10076C38C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1007645FC();
  if (result)
  {
    if (a1())
    {
      if (qword_100941210 != -1)
      {
        swift_once();
      }

      v9 = sub_10076D9AC();
      v10 = sub_10000A61C(v9, qword_1009A23B0);
      *(a2 + 3) = v9;
      *(a2 + 4) = &protocol witness table for StaticDimension;
      v11 = sub_10000DB7C(a2);
      v12 = *(*(v9 - 8) + 16);

      return v12(v11, v10, v9);
    }

    else
    {
      sub_10076460C();
      sub_10076C23C();
      v14 = v13;
      result = (*(v5 + 8))(v7, v4);
      *(a2 + 3) = &type metadata for CGFloat;
      *(a2 + 4) = &protocol witness table for CGFloat;
      *a2 = v14;
    }
  }

  else
  {
    *(a2 + 3) = &type metadata for Double;
    *(a2 + 4) = &protocol witness table for Double;
    *a2 = 0.0;
  }

  return result;
}

uint64_t sub_1004508C4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v2 = sub_10076D9AC();
  v3 = sub_10000A61C(v2, qword_1009A2380);
  a1[3] = v2;
  a1[4] = &protocol witness table for StaticDimension;
  v4 = sub_10000DB7C(a1);
  v5 = *(*(v2 - 8) + 16);

  return v5(v4, v3, v2);
}

uint64_t sub_100450988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v86 = a6;
  v72 = a4;
  v83 = a1;
  v84 = a3;
  v6 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v6 - 8);
  v82 = &v70 - v7;
  v8 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v8 - 8);
  v81 = &v70 - v9;
  v10 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v10 - 8);
  v80 = &v70 - v11;
  v12 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v12 - 8);
  v79 = &v70 - v13;
  v14 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v14 - 8);
  v78 = &v70 - v15;
  v16 = sub_10000A5D4(&unk_1009467C0, &unk_100787A10);
  __chkstk_darwin(v16 - 8);
  v71 = &v70 - v17;
  v18 = sub_10076664C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10076D1AC();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = (&v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_10076E1EC();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_10076E21C();
  v73 = *(v75 - 8);
  *&v30 = __chkstk_darwin(v75).n128_u64[0];
  v32 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = [v86 traitCollection];
  (*(v27 + 104))(v29, enum case for Separator.Position.bottom(_:), v26);
  *v25 = UIFontTextStyleBody;
  (*(v23 + 104))(v25, enum case for FontSource.textStyle(_:), v22);
  v89 = sub_10076D9AC();
  v90 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v88);
  v87[3] = v22;
  v87[4] = &protocol witness table for FontSource;
  v33 = sub_10000DB7C(v87);
  (*(v23 + 16))(v33, v25, v22);
  v34 = UIFontTextStyleBody;
  sub_10076D9BC();
  (*(v23 + 8))(v25, v22);
  v86 = v32;
  sub_10076E1FC();
  sub_1007665FC();
  sub_100451600(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  LOBYTE(v27) = sub_10077124C();
  v35 = *(v19 + 8);
  v74 = v18;
  v76 = v19 + 8;
  v35(v21, v18);
  if (v27)
  {
    v36 = v73;
    v37 = v71;
    v38 = v75;
    (*(v73 + 56))(v71, 1, 1, v75);
    v39 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separator;
    v40 = v77;
    swift_beginAccess();
    sub_10007A910(v37, &v40[v39]);
    swift_endAccess();
    sub_1002A66D8();
    sub_10000CFBC(v37, &unk_1009467C0, &unk_100787A10);
    sub_10076660C();
    v41 = v74;
    v42 = sub_10077124C();
    v35(v21, v41);
    v43 = [v40 contentView];
    v44 = v43;
    v45 = v40;
    v46 = v38;
    if (v42)
    {
      [v43 layoutMargins];
      [v44 setLayoutMargins:?];
    }

    else
    {
      sub_10076E1AC();
      sub_10000CF78(v88, v89);
      sub_10076D41C();
      [v44 layoutMargins];
      [v44 setLayoutMargins:?];

      sub_10000CD74(v88);
    }
  }

  else
  {
    v47 = v73;
    v48 = v71;
    v49 = v75;
    (*(v73 + 16))(v71, v86, v75);
    (*(v47 + 56))(v48, 0, 1, v49);
    v50 = OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separator;
    v51 = v77;
    swift_beginAccess();
    sub_10007A910(v48, &v51[v50]);
    swift_endAccess();
    sub_1002A66D8();
    sub_10000CFBC(v48, &unk_1009467C0, &unk_100787A10);
    v52 = [v51 contentView];
    [v52 layoutMargins];
    [v52 setLayoutMargins:?];

    sub_1007665DC();
    v53 = v74;
    v54 = sub_10077124C();
    v35(v21, v53);
    v55 = v51[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout];
    v51[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_hideSeparatorIndependentlyOfLayout] = v54 & 1;
    v45 = v51;
    v46 = v49;
    v36 = v47;
    if ((v54 & 1) != v55)
    {
      v56 = *&v45[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_separatorView];
      if (v56)
      {
        v57 = 1.0;
        if (v54)
        {
          v57 = 0.0;
        }

        [v56 setAlpha:v57];
      }
    }
  }

  v58 = *&v45[OBJC_IVAR____TtC20ProductPageExtension29SmallLockupCollectionViewCell_lockupView];
  v59 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  v60 = v78;
  (*(*(v59 - 8) + 56))(v78, 1, 1, v59);
  v61 = sub_10075F78C();
  v62 = v79;
  (*(*(v61 - 8) + 56))(v79, 1, 1, v61);
  v63 = sub_1007628DC();
  v64 = v80;
  (*(*(v63 - 8) + 56))(v80, 1, 1, v63);
  v65 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v66 = v81;
  (*(*(v65 - 8) + 56))(v81, 1, 1, v65);
  v67 = sub_10076C54C();
  v68 = v82;
  (*(*(v67 - 8) + 56))(v82, 1, 1, v67);
  sub_1004D0A60(v83, v58, v60, v84, 0, 0, v62, v64, v68, v66);
  sub_10000CFBC(v68, &unk_100949290, &unk_10078BBF0);
  v58[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
  sub_10026202C();
  [v58 setNeedsLayout];
  sub_10000CFBC(v66, &qword_10094F730, qword_10078A050);
  sub_10000CFBC(v64, &unk_1009492A0, &unk_10078BC00);
  sub_10000CFBC(v62, &unk_10094D210, &qword_10078DE20);
  sub_10000CFBC(v60, &unk_100946760, &unk_100787A20);
  [v45 setNeedsLayout];

  return (*(v36 + 8))(v86, v46);
}

uint64_t sub_100451600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100451648(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37 = a4;
  v5 = sub_10077164C();
  v32 = *(v5 - 8);
  v33 = v5;
  __chkstk_darwin(v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D1AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10076E1EC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076E21C();
  v35 = *(v15 - 8);
  v36 = v15;
  __chkstk_darwin(v15);
  v34 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10076664C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007665FC();
  sub_100451600(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v21 = sub_10077124C();
  (*(v18 + 8))(v20, v17);
  (*(v12 + 104))(v14, enum case for Separator.Position.bottom(_:), v11);
  *v10 = UIFontTextStyleBody;
  (*(v8 + 104))(v10, enum case for FontSource.textStyle(_:), v7);
  v40 = sub_10076D9AC();
  v41 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v39);
  v38[3] = v7;
  v38[4] = &protocol witness table for FontSource;
  v22 = sub_10000DB7C(v38);
  (*(v8 + 16))(v22, v10, v7);
  v23 = UIFontTextStyleBody;
  sub_10076D9BC();
  (*(v8 + 8))(v10, v7);
  if (v21)
  {
    v24 = v34;
    sub_10076E1FC();
    sub_10076E1AC();
    (*(v35 + 8))(v24, v36);
    v25 = v40;
    sub_10000CF78(v39, v40);
    v26 = v31;
    sub_1000FF02C(v25);
    v27 = v37;
    sub_10076D40C();
    (*(v32 + 8))(v26, v33);
    sub_10000CD74(v39);
  }

  else
  {
    v28 = v34;
    sub_10076E1FC();
    v27 = v37;
    sub_10076E1DC();
    (*(v35 + 8))(v28, v36);
  }

  swift_getObjectType();
  sub_1002A7528(v27);
  return a1;
}

uint64_t sub_100451BF4(uint64_t a1, uint64_t a2, void *a3)
{
  v23[1] = a1;
  v4 = sub_10076D1AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10076E1EC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076E21C();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for Separator.Position.bottom(_:), v8, v14);
  *v7 = UIFontTextStyleBody;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v25[3] = sub_10076D9AC();
  v25[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v25);
  v24[3] = v4;
  v24[4] = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v24);
  (*(v5 + 16))(v17, v7, v4);
  v18 = UIFontTextStyleBody;
  sub_10076D9BC();
  (*(v5 + 8))(v7, v4);
  sub_10076E1FC();
  swift_getObjectType();
  sub_10076E1DC();
  (*(v13 + 8))(v16, v12);
  sub_1002A7528(a3);
  v19 = objc_opt_self();
  PageTraitEnvironment.pageColumnWidth.getter();
  v20 = [v19 absoluteDimension:?];
  v21 = sub_1007665BC();

  return v21;
}

double sub_100451F40(void **a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v10 = *a1;
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  sub_1001052B0(v10, a8, v11);
  sub_10076DDDC();
  sub_10076D2AC();

  return a2;
}

id sub_100451FF0(uint64_t *a1)
{
  v2 = *a1;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategory] = *a1;

  *(*&v1[OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView] + OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category) = v2;

  sub_100103A50();

  return [v1 setNeedsLayout];
}

uint64_t sub_100452098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10075FD2C();
  sub_10045248C(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return sub_100760BFC();
}

uint64_t sub_100452138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_10077164C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v7 = sub_10076D9AC();
  sub_10000A61C(v7, qword_1009A2368);
  sub_10076D17C();
  sub_10076D40C();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return v9;
}

double sub_100452310()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension33PrivacyCategoryCollectionViewCell_privacyCategoryView);
  if (*(v1 + OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_category))
  {

    sub_10076217C();

    sub_10076BFBC();
    v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension19PrivacyCategoryView_iconView);
    sub_10075FD2C();
    sub_10045248C(&qword_100951F78, &type metadata accessor for ArtworkView, &protocol conformance descriptor for NSObject);
    v3 = v2;
    sub_10077140C();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_100760B7C();

    sub_10002CBB4(v5);
  }

  return result;
}

uint64_t sub_10045248C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004524D4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void DebugMenuPage.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_1004525AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1004525F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100452644(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, "setBackgroundColor:", a1);
  [*(*&v1[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents) setBackgroundColor:a1];
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView];
  if (v3)
  {
    v4 = v3;
    [v4 setBackgroundColor:a1];
  }
}

void sub_1004526E4()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView;
  v2 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView];
  if (*&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] > 0.0)
  {
    if (v2)
    {
      return;
    }

    v3 = *(*&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
    if (v3)
    {
      type metadata accessor for VideoView(0);
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale];
        v7 = v0;
        v8 = -*&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset];
        v9 = qword_10093F788;
        v10 = v3;
        if (v9 != -1)
        {
          swift_once();
        }

        v70 = *&byte_10099D030[64];
        v71 = *&byte_10099D030[80];
        v72 = *&byte_10099D030[96];
        v73 = *&byte_10099D030[112];
        v66 = *byte_10099D030;
        v67 = *&byte_10099D030[16];
        v68 = *&byte_10099D030[32];
        v69 = *&byte_10099D030[48];
        v11 = objc_allocWithZone(type metadata accessor for VideoMirrorView());
        v12 = sub_1002831F8(v5, &v66, v6, v8);
        v13 = *&v7[v1];
        if (v13)
        {
          type metadata accessor for MirrorView();
          v14 = v13;
          v15 = v12;
          v0 = v7;
          v16 = sub_100770EEC();

          v17 = *&v7[v1];
          if ((v16 & 1) == 0)
          {
            if (v17)
            {
              [*&v7[v1] removeFromSuperview];
              v17 = *&v7[v1];
            }
          }
        }

        else
        {
          v0 = v7;
          v17 = 0;
        }

        *&v0[v1] = v12;
        v53 = v12;

        v54 = *&v0[v1];
        if (v54)
        {
          if (!v13)
          {
            goto LABEL_42;
          }

          type metadata accessor for MirrorView();
          v55 = v13;
          v56 = v54;
          v57 = sub_100770EEC();

          if (v57)
          {

            v0 = v7;
LABEL_56:
            [v0 setNeedsLayout];
            return;
          }

          v0 = v7;
          v54 = *&v7[v1];
          if (v54)
          {
LABEL_42:
            [v0 addSubview:v54];

            goto LABEL_56;
          }
        }

        else
        {
          if (!v13)
          {

            goto LABEL_56;
          }

          v55 = v13;
        }

LABEL_44:
        goto LABEL_56;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v25 = *&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale];
        v26 = -*&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset];
        v27 = qword_10093F788;
        v28 = v3;
        if (v27 != -1)
        {
          swift_once();
        }

        v29 = v0;
        v70 = *&byte_10099D030[64];
        v71 = *&byte_10099D030[80];
        v72 = *&byte_10099D030[96];
        v73 = *&byte_10099D030[112];
        v66 = *byte_10099D030;
        v67 = *&byte_10099D030[16];
        v68 = *&byte_10099D030[32];
        v69 = *&byte_10099D030[48];
        v30 = type metadata accessor for MirrorView();
        v31 = objc_allocWithZone(v30);
        swift_unknownObjectWeakInit();
        v32 = OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer;
        *&v31[v32] = [objc_allocWithZone(CALayer) init];
        *&v31[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageKVOContext] = 0;
        v31[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_imageObserversAdded] = 0;
        swift_unknownObjectWeakAssign();
        *&v31[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_contentsScaleFactor] = v25;
        *&v31[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_contentsVerticalOffset] = v26;
        v65.receiver = v31;
        v65.super_class = v30;
        v33 = objc_msgSendSuper2(&v65, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        [v33 setClipsToBounds:1];
        [v33 setUserInteractionEnabled:0];
        v34 = OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer;
        [*&v33[OBJC_IVAR____TtC20ProductPageExtension10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
        LODWORD(v35) = 1.0;
        [*&v33[v34] setOpacity:v35];
        [*&v33[v34] setAnchorPoint:{0.5, 0.5}];
        v36 = qword_10093F780;
        v37 = *&v33[v34];
        if (v36 != -1)
        {
          swift_once();
        }

        sub_10000A5D4(&qword_100948AE0, qword_1007988E0);
        isa = sub_10076FE3C().super.isa;
        [v37 setActions:isa];

        v39 = *&v33[v34];
        v40 = objc_opt_self();
        v41 = v39;
        v42 = [v40 mainScreen];
        [v42 scale];
        v44 = v43;

        [v41 setContentsScale:v44];
        [*&v33[v34] setMasksToBounds:1];
        v45 = *&v33[v34];
        v64[4] = v70;
        v64[5] = v71;
        v64[6] = v72;
        v64[7] = v73;
        v64[0] = v66;
        v64[1] = v67;
        v64[2] = v68;
        v64[3] = v69;
        [v45 setTransform:v64];
        sub_1000F8300();
        v46 = [v33 layer];

        [v46 addSublayer:*&v33[v34]];
        v47 = *&v29[v1];
        if (v47)
        {
          v48 = v47;
          v49 = v33;
          v50 = v48;
          v0 = v29;
          v51 = sub_100770EEC();

          v52 = *&v29[v1];
          if ((v51 & 1) == 0 && v52)
          {
            [*&v29[v1] removeFromSuperview];
            v52 = *&v29[v1];
          }
        }

        else
        {
          v0 = v29;
          v52 = 0;
        }

        *&v0[v1] = v33;
        v55 = v33;

        v58 = *&v0[v1];
        if (v58)
        {
          if (!v47)
          {
            goto LABEL_54;
          }

          v59 = v47;
          v60 = v58;
          v61 = sub_100770EEC();

          if (v61)
          {

            v0 = v29;
            goto LABEL_56;
          }

          v0 = v29;
          v58 = *&v29[v1];
          if (v58)
          {
LABEL_54:
            [v0 addSubview:v58];

            goto LABEL_56;
          }
        }

        else
        {
          if (!v47)
          {

            goto LABEL_44;
          }

          v59 = v47;
        }

        goto LABEL_56;
      }

      v24 = *&v0[v1];
    }

    else
    {
      v24 = 0;
    }

    *&v0[v1] = 0;

    if (*&v0[v1])
    {
      [v0 addSubview:?];
    }

    goto LABEL_56;
  }

  if (!v2)
  {
    return;
  }

  v62 = v2;
  [v62 removeFromSuperview];
  v18 = *&v0[v1];
  *&v0[v1] = 0;

  v19 = *&v0[v1];
  if (!v19)
  {
    goto LABEL_17;
  }

  v20 = v0;
  type metadata accessor for MirrorView();
  v63 = v62;
  v21 = v19;
  v22 = sub_100770EEC();

  if ((v22 & 1) == 0)
  {
    if (*&v20[v1])
    {
      [v20 addSubview:?];
      goto LABEL_16;
    }

LABEL_17:
    v23 = v62;
    goto LABEL_18;
  }

LABEL_16:
  v23 = v63;
LABEL_18:
}

uint64_t (*sub_100452ED8(uint64_t *a1))()
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  v4 = OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(v3 + v4);
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
  return sub_1004546A4;
}

id sub_100453098()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  [v0 bounds];
  v1 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount;
  v6 = sub_100102A30(v2, v3, v4, v5, 0.0, 0.0);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] setFrame:?];
  [v0 bounds];
  MinX = CGRectGetMinX(v18);
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  MaxY = CGRectGetMaxY(v19);
  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  Width = CGRectGetWidth(v20);
  result = *&v0[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView];
  if (result)
  {
    return [result setFrame:{MinX, MaxY, Width, *&v0[v1]}];
  }

  return result;
}

uint64_t sub_10045329C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
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

void sub_100453300(void *a1)
{
  sub_100454524(a1);
}

uint64_t (*sub_10045334C(uint64_t **a1))()
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
  v2[4] = sub_100452ED8(v2);
  return sub_10001D41C;
}

uint64_t sub_1004533BC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10045465C(&qword_100957AD0, v1, type metadata accessor for MediaView, &unk_1007A42B8);

  return VideoViewProviding.someVideoView.getter(ObjectType, v2);
}

uint64_t sub_100453430(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10045465C(&qword_100957AD0, v5, type metadata accessor for MediaView, &unk_1007A42B8);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v6);
}

uint64_t (*sub_1004534BC(uint64_t *a1))()
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
  sub_10045465C(&qword_100957AD0, v3, type metadata accessor for MediaView, &unk_1007A42B8);
  *(v4 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_100453578(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  sub_1000ACA5C();
  v5 = v4;
  v6 = sub_100770EEC();

  return v6 & 1;
}

char *sub_100453600(uint64_t a1)
{
  v2 = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v3 = &v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  v3[8] = 1;
  *v3 = 0;
  v4 = &v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  v6 = *(a1 + 32);
  v4[32] = v6;
  if ((v6 & 1) == 0)
  {
    v2 = [objc_allocWithZone(UIBackgroundExtensionView) init];
    [v2 setAutomaticallyPlacesContentView:0];
  }

  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = v2;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for UberContentContainer();
  result = objc_msgSendSuper2(&v9, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  if (*&result[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    v8 = result;
    [result addSubview:?];
    return v8;
  }

  return result;
}

uint64_t (*sub_100453790(uint64_t *a1))()
{
  v3 = OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents;
  a1[1] = v1;
  a1[2] = v3;
  v4 = *(v1 + v3);
  if (v4)
  {
    type metadata accessor for VideoView(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v4;
    }
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_100453814;
}

void sub_100453818(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      sub_10045465C(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
      v4 = v3;
      v5 = [v4 superview];
      if (v5)
      {
        v6 = v5;
        v7 = *(a1 + 8);
        sub_1000ACA5C();
        v8 = v7;
        v9 = sub_100770EEC();

        if (v9)
        {
          [v4 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v17 = *(a1 + 8);
    v16 = *(a1 + 16);
    v18 = *(v17 + v16);
    *(v17 + v16) = v3;
    v19 = v3;
    sub_100453A30(v18);

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_10045465C(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        v13 = *(a1 + 8);
        sub_1000ACA5C();
        v14 = v13;
        v15 = sub_100770EEC();

        if (v15)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v22 = *(a1 + 8);
    v21 = *(a1 + 16);
    v24 = *(v22 + v21);
    *(v22 + v21) = v3;
    v23 = v3;
    sub_100453A30(v24);

    v20 = v24;
  }
}

void sub_100453A30(void *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    type metadata accessor for VideoView(0);
    v7 = swift_dynamicCastClass();
    if (!v7)
    {
      return;
    }

    v8 = v7;
    sub_10045465C(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
    v18 = a1;
    v9 = [v8 superview];
    if (v9)
    {
      v10 = v9;
      sub_1000ACA5C();
      v11 = v2;
      v12 = sub_100770EEC();

      if (v12)
      {
        [v8 removeFromSuperview];
      }
    }

    goto LABEL_10;
  }

  if (!a1)
  {
    v14 = v4;
    goto LABEL_12;
  }

  sub_1000ACA5C();
  v18 = v4;
  v5 = a1;
  v6 = sub_100770EEC();

  if ((v6 & 1) == 0)
  {
LABEL_12:
    sub_10075FD2C();
    if (swift_dynamicCastClass())
    {
      v15 = v4;
      sub_10075FBEC();
    }

    [v4 setContentMode:2];
    [v4 setAccessibilityIgnoresInvertColors:1];
    v16 = *&v2[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView];
    if (v16)
    {
      v17 = v16;
      [v17 setContentView:v4];
    }

    else
    {

      [v2 addSubview:v4];
    }

    v13 = v4;
    goto LABEL_19;
  }

LABEL_10:
  v13 = v18;
LABEL_19:
}

void sub_100453C74()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = type metadata accessor for UberContentContainer();
  objc_msgSendSuper2(&v38, "layoutSubviews");
  [v0 bounds];
  MinX = CGRectGetMinX(v39);
  [v0 bounds];
  MinY = CGRectGetMinY(v40);
  v4 = OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY;
  v5 = MinY + *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY];
  [v0 bounds];
  Width = CGRectGetWidth(v41);
  [v0 bounds];
  Height = CGRectGetHeight(v42);
  v8 = *&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView];
  if (v8)
  {
    v9 = v8;
    [v9 setFrame:{MinX, v5, Width, Height}];
    v43.origin.x = MinX;
    v43.origin.y = v5;
    v43.size.width = Width;
    v43.size.height = Height;
    v10 = CGRectGetWidth(v43);
    v44.origin.x = MinX;
    v44.origin.y = v5;
    v44.size.width = Width;
    v44.size.height = Height;
    v11 = CGRectGetHeight(v44);
    v12 = 0.0;
    if (v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets + 32])
    {
      v13 = 0.0;
    }

    else
    {
      v14 = [v1 traitCollection];
      [v14 layoutDirection];

      sub_1007708DC();
      v12 = sub_100102A30(0.0, 0.0, v10, v11, v15, v16);
      v13 = v17;
      v10 = v18;
      v11 = v19;
    }

    v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    [v20 setFrame:{v12, v13, v10, v11}];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] setFrame:{MinX, v5, Width, Height}];
  }

  v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
  if (v21)
  {
    type metadata accessor for VideoView(0);
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = v22;
      if (v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride + 8])
      {
        v24 = v21;
        [v1 bounds];
        MidY = CGRectGetMidY(v45);
      }

      else
      {
        MidY = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
        v26 = v21;
      }

      [v1 bounds];
      MidX = CGRectGetMidX(v46);
      v28 = MidY - *&v1[v4];
      v29 = v23 + qword_1009A2510;
      v30 = *(v23 + qword_1009A2510);
      v31 = *(v23 + qword_1009A2510 + 8);
      v32 = *(v23 + qword_1009A2510 + 16);
      *v29 = MidX;
      *(v29 + 8) = v28;
      *(v29 + 16) = 0;
      if ((v32 & 1) != 0 || (MidX == v30 ? (v33 = v28 == v31) : (v33 = 0), !v33))
      {
        sub_1005ED780();
      }

      v34 = *&v1[v4];
      v35 = (v23 + qword_1009A2508);
      v36 = *(v23 + qword_1009A2508);
      v37 = *(v23 + qword_1009A2508 + 16);
      *v35 = 0;
      v35[1] = 0;
      v35[2] = v34;
      v35[3] = 0;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqzq_f64(v36), vceqq_f64(v37, v34)))) & 1) == 0)
      {
        sub_1005EEA78();
      }
    }
  }
}

id sub_100454028()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UberContentContainer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004540D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
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

void sub_100454128(void *a1)
{
  sub_100454524(a1);
}

uint64_t (*sub_100454160(uint64_t **a1))()
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
  v2[4] = sub_100453790(v2);
  return sub_100019A4C;
}

uint64_t sub_1004541D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_100454224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_100454290(uint64_t *a1, uint64_t a2))()
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

uint64_t sub_10045432C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = [a1 superview];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  sub_1000ACA5C();
  v4 = v1;
  v5 = sub_100770EEC();

  return v5 & 1;
}

void sub_100454524(void *a1)
{
  if (a1)
  {
    sub_10045465C(&qword_100942810, 255, type metadata accessor for VideoView, &unk_1007AF120);
    v3 = a1;
    v4 = [v3 superview];
    if (v4)
    {
      v5 = v4;
      sub_1000ACA5C();
      v6 = v1;
      v7 = sub_100770EEC();

      if (v7)
      {
        [v3 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v9 = *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
  *&v1[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = a1;
  v8 = a1;
  sub_100453A30(v9);
}

uint64_t sub_10045465C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_1004546B0(uint64_t a1)
{
  v2 = sub_10075DDBC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100767FCC();
  sub_10076F63C();
  if (!v36)
  {
    return _swiftEmptyArrayStorage;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  v6 = v36;

  sub_10076EF1C();
  v30 = v36;
  v7 = v37;
  v33 = sub_10000A5D4(&unk_100942870, &qword_100784460);
  v8 = swift_allocObject();
  v32 = xmmword_1007841E0;
  *(v8 + 16) = xmmword_1007841E0;
  sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
  sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
  swift_allocObject();
  v31 = v6;
  swift_weakInit();
  v41.value.super.super.isa = sub_100770F1C();
  v41.is_nil = 0;
  *(v8 + 32) = sub_10077054C(UIBarButtonSystemItemTrash, v41, v42);
  *&v36 = v6;
  *(&v36 + 1) = sub_10072C91C;
  v37 = 0;
  v38 = 0;
  v39 = v30;
  v40 = v7;
  v9 = objc_allocWithZone(sub_10000A5D4(&qword_100957B00, &qword_1007A4340));
  v10 = sub_10045522C(&v36, 0x7363697274654DLL, 0xE700000000000000, v8);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  type metadata accessor for NavigationActionDebugSetting();
  v12 = swift_allocObject();
  v12[7] = 0xD000000000000013;
  v12[8] = 0x80000001007E8430;
  v12[10] = 0;
  v12[11] = 0;
  v12[9] = 0;
  v12[12] = sub_100455534;
  v12[13] = v11;

  *&v30 = v10;

  sub_10075DDAC();
  v13 = sub_10075DD8C();
  v15 = v14;
  v16 = *(v3 + 8);
  v29 = v2;
  v16(v5, v2);
  v34 = v13;
  v35 = v15;
  sub_10077140C();

  type metadata accessor for BoolUserDefaultsDebugSetting();
  v17 = swift_allocObject();
  *(v17 + 56) = 0xD00000000000001ALL;
  *(v17 + 64) = 0x80000001007E8450;
  *(v17 + 72) = 0;
  *(v17 + 80) = 0xD000000000000018;
  *(v17 + 88) = 0x80000001007E8470;
  *(v17 + 96) = 0;
  sub_10075DDAC();
  v18 = sub_10075DD8C();
  v20 = v19;
  v16(v5, v2);
  v34 = v18;
  v35 = v20;
  sub_10077140C();
  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100785D70;
  *(v22 + 32) = v12;
  *(v22 + 40) = v17;
  type metadata accessor for DebugSection();
  v23 = swift_allocObject();
  sub_10075DDAC();
  v24 = sub_10075DD8C();
  v26 = v25;

  v16(v5, v29);
  v23[2] = v24;
  v23[3] = v26;
  v23[4] = 0;
  v23[5] = 0xE000000000000000;
  v23[6] = v22;
  *(v21 + 32) = v23;

  return v21;
}

double sub_100454B7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100767FAC();
  }

  return result;
}

uint64_t sub_100454BD4(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = a3;
  v4 = sub_10075F65C();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v42 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100765F6C();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v36 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_100766EDC();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10076F4FC();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v10 - 8);
  v12 = v32 - v11;
  v13 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v13 - 8);
  v15 = v32 - v14;
  v16 = sub_10076C15C();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v20 - 8);
  v22 = v32 - v21;
  v23 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v43 = a2;
  sub_10076F5AC();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_1000527AC(v22);
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v26 = *(v17 + 104);
  v32[2] = v19;
  v26(v19, enum case for FlowPage.viewController(_:), v16);
  v27 = sub_10075DB7C();
  v28 = *(*(v27 - 8) + 56);
  v32[1] = v15;
  v28(v15, 1, 1, v27);
  v29 = sub_10076096C();
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  v45 = sub_10000A5D4(&qword_100957B00, &qword_1007A4340);
  v44 = v39;
  v30 = v39;
  sub_10076F4DC();
  (*(v33 + 104))(v34, enum case for FlowPresentationContext.push(_:), v35);
  (*(v37 + 104))(v36, enum case for FlowAnimationBehavior.infer(_:), v38);
  (*(v40 + 104))(v42, enum case for FlowOrigin.inapp(_:), v41);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v31 = sub_10075F5EC();
  sub_100263C24(v31, 1, v43, v22);

  return (*(v24 + 8))(v22, v23);
}

id sub_1004551D4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MetricsSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t *sub_10045522C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4 + *((swift_isaMask & *v4) + 0x60);
  v26 = *(a1 + 1);
  v27 = *(a1 + 24);
  v8 = *(a1 + 1);
  v25 = *(a1 + 2);
  v7 = v25;
  v9 = a1[6];
  v10 = *(a1 + 1);
  *v6 = *a1;
  *(v6 + 1) = v8;
  *(v6 + 2) = v7;
  *(v6 + 6) = v9;
  v20 = *a1;
  v21 = v10;
  v22 = *(a1 + 2);
  v23 = a1[6];
  v24 = v9;
  objc_allocWithZone(sub_10000A5D4(&qword_100957B08, &qword_1007A4348));

  sub_1000B8A4C(&v25, v19);
  sub_100016E2C(&v26, v19, &qword_100957B10, &qword_1007A4350);
  sub_100016E2C(&v24, v19, &qword_100957B18, &qword_1007B6810);
  *(v4 + *((swift_isaMask & *v4) + 0x68)) = sub_10076EBFC();
  v18.receiver = v4;
  v18.super_class = sub_10000A5D4(&qword_100957B00, &qword_1007A4340);
  v11 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
  v12 = [v11 navigationItem];
  if (a3)
  {
    v13 = sub_10076FF6C();
  }

  else
  {
    v13 = 0;
  }

  [v12 setTitle:v13];

  v14 = [v11 navigationItem];
  sub_100016F40(0, &qword_100958FF0, UIBarButtonItem_ptr);
  isa = sub_1007701AC().super.isa;

  [v14 setRightBarButtonItems:isa];

  v16 = [v11 navigationItem];
  [v16 setLargeTitleDisplayMode:2];

  return v11;
}

uint64_t sub_1004554B4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004554F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10045553C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  __chkstk_darwin(v6 - 8);
  v47 = &v43 - v7;
  v8 = sub_10000A5D4(&qword_10094AA50, &qword_100790528);
  v48 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v43 - v9;
  v11 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  __chkstk_darwin(v11 - 8);
  v49 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = sub_10000A5D4(&unk_100956700, &unk_10079F180);
  __chkstk_darwin(v16 - 8);
  v18 = &v43 - v17;
  v19 = sub_10075F51C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100455D48(&unk_100957B20, &type metadata accessor for Annotation, &protocol conformance descriptor for Annotation);
  sub_10076332C();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    return sub_10000CFBC(v18, &unk_100956700, &unk_10079F180);
  }

  v44 = v8;
  v45 = a1;
  v46 = a2;
  (*(v20 + 32))(v22, v18, v19);
  *&v3[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_detailItems] = sub_10075F4EC();

  v24 = sub_10075F4FC();
  v25 = &v3[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleText];
  *v25 = v24;
  v25[1] = v26;

  v27 = *&v3[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_titleLabel];

  v28 = sub_10076FF6C();

  [v27 setText:v28];

  [v3 setNeedsLayout];
  v29 = sub_10075F50C();
  v30 = &v3[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_explicitSummary];
  *v30 = v29;
  v30[1] = v31;

  sub_10031C0A4(v32);
  v33 = sub_10075F4CC();
  if (v33)
  {
    v50 = v33;
    sub_10076B90C();
    sub_10076F64C();
    sub_100455D48(&qword_100956710, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    sub_10076F56C();

    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  v36 = 1;
  (*(*(v35 - 8) + 56))(v15, v34, 1, v35);
  v37 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_linkAction;
  swift_beginAccess();
  sub_10031DCE8(v15, &v3[v37]);
  swift_endAccess();
  sub_10031C22C();
  sub_10000CFBC(v15, &qword_100952650, &unk_10079B720);
  sub_10076336C();
  sub_10076F87C();
  sub_100166C0C();
  v38 = v44;
  sub_10076F84C();
  (*(v48 + 8))(v10, v38);
  if ((v50 & 1) == 0)
  {
    v36 = sub_10075F4DC();
  }

  sub_10031DB84();
  v3[OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_isExpanded] = v36 & 1;
  sub_10031BDF8();
  v39 = sub_10075F4CC();
  v40 = v49;
  if (v39)
  {
    v50 = v39;
    sub_10076B90C();
    sub_10076F64C();
    sub_100455D48(&qword_100956710, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    sub_10076F56C();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
  (*(*(v42 - 8) + 56))(v40, v41, 1, v42);
  swift_beginAccess();
  sub_10031DCE8(v40, &v3[v37]);
  swift_endAccess();
  sub_10031C22C();
  sub_10000CFBC(v40, &qword_100952650, &unk_10079B720);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_100455C1C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100455C78(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28AnnotationCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_100455D48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100455D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v55 = a2;
  v51 = sub_10076D1AC();
  v48 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v56 = &v42 - v4;
  v5 = sub_10076C38C();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_100957B30, &qword_100798C18);
  __chkstk_darwin(v8 - 8);
  v10 = &v42 - v9;
  v11 = sub_10000A5D4(&unk_10094CD50, &unk_100786030);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  v65 = vdupq_n_s64(0x4040000000000000uLL);
  __asm { FMOV            V0.2D, #28.0 }

  v62 = _Q0;
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  type metadata accessor for CGSize(0);
  sub_10075FDFC();
  v65 = xmmword_100798B00;
  v62 = xmmword_100798B10;
  sub_10075FDFC();
  v26 = *(v12 + 16);
  v49 = v14;
  v46 = v20;
  v26(v14, v20, v11);
  v47 = v17;
  v26(v10, v17, v11);
  v50 = v12;
  v27 = *(v12 + 56);
  v52 = v10;
  v53 = v11;
  v27(v10, 0, 1, v11);
  sub_10076460C();
  sub_10076C2EC();
  v29 = v28;
  (*(v43 + 8))(v7, v44);
  v66 = &type metadata for CGFloat;
  v67 = &protocol witness table for CGFloat;
  v65.i64[0] = v29;
  v63 = &type metadata for Double;
  v64 = &protocol witness table for Double;
  v61[14] = &protocol witness table for Double;
  *&v62 = 0x4048000000000000;
  v61[13] = &type metadata for Double;
  v61[10] = 0x4028000000000000;
  if (qword_100940A08 != -1)
  {
    swift_once();
  }

  v30 = sub_10076D3DC();
  v45 = sub_10000A61C(v30, qword_1009A0C28);
  v31 = *(*(v30 - 8) + 16);
  v32 = v56;
  v31(v56, v45, v30);
  v33 = enum case for FontSource.useCase(_:);
  v34 = v48;
  v35 = *(v48 + 104);
  v36 = v51;
  v35(v32, enum case for FontSource.useCase(_:), v51);
  v61[9] = &protocol witness table for Double;
  v61[8] = &type metadata for Double;
  v61[5] = 0;
  v37 = v54;
  v31(v54, v45, v30);
  v35(v37, v33, v36);
  v61[3] = sub_10076D9AC();
  v61[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v61);
  v59 = v36;
  v60 = &protocol witness table for FontSource;
  v38 = sub_10000DB7C(v58);
  (*(v34 + 16))(v38, v37, v36);
  sub_10076D9BC();
  (*(v34 + 8))(v37, v36);
  v60 = &protocol witness table for Double;
  v59 = &type metadata for Double;
  v58[0] = 0x4020000000000000;
  v57[3] = sub_10076D67C();
  v57[4] = &protocol witness table for ZeroDimension;
  sub_10000DB7C(v57);
  sub_10076D66C();
  sub_1007605EC();
  v39 = *(v50 + 8);
  v40 = v53;
  v39(v47, v53);
  return (v39)(v46, v40);
}

uint64_t sub_1004563A4(uint64_t a1, uint64_t a2)
{
  v113 = a2;
  v127 = sub_10076D1AC();
  v126 = *(v127 - 8);
  __chkstk_darwin(v127);
  v125 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000A5D4(&qword_100945AE8, &unk_100788320);
  __chkstk_darwin(v4 - 8);
  v132 = &v108 - v5;
  v137 = sub_10076E4AC();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_10076C38C();
  v133 = *(v134 - 8);
  __chkstk_darwin(v134);
  v145 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  __chkstk_darwin(v8 - 8);
  v112 = &v108 - v9;
  v115 = sub_10000A5D4(&unk_100946700, &unk_1007A1D40);
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v138 = &v108 - v10;
  v128 = sub_10076B6EC();
  v130 = *(v128 - 8);
  __chkstk_darwin(v128);
  v142 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_10076664C();
  v146 = *(v143 - 8);
  __chkstk_darwin(v143);
  v111 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v144 = &v108 - v14;
  v141 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v140 = *(v141 - 8);
  __chkstk_darwin(v141);
  v131 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v139 = &v108 - v17;
  v18 = sub_10000A5D4(&unk_100946710, &unk_10079A020);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v108 - v20;
  v22 = sub_10076469C();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v108 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10076063C();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007632FC();
  sub_100455D90(v25, v29);
  v30 = *(v23 + 8);
  v121 = v25;
  v31 = v25;
  v32 = v144;
  v124 = v22;
  v123 = v23 + 8;
  v118 = v30;
  v30(v31, v22);
  v33 = v26;
  v34 = a1;
  v35 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_layoutMetrics;
  v36 = v129;
  swift_beginAccess();
  v37 = *(v27 + 40);
  v120 = v35;
  v119 = v29;
  v116 = v33;
  v38 = v33;
  v39 = v142;
  v122 = v27 + 40;
  v117 = v37;
  v37(&v36[v35], v29, v38);
  swift_endAccess();
  sub_1007633BC();
  sub_10076F4AC();
  (*(v19 + 8))(v21, v18);
  v40 = v139;
  sub_10076336C();
  sub_10076331C();
  swift_getKeyPath();
  sub_10076338C();

  v147 = v34;
  v41 = sub_100630CB4();
  sub_10000A570(v151, &v149);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10076B90C();
  v42 = &selRef_initWithTabBarSystemItem_tag_;
  v43 = &selRef_initWithTabBarSystemItem_tag_;
  if (!swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    (*(v130 + 8))(v39, v128);
    (*(v146 + 8))(v32, v143);
    (*(v140 + 8))(v40, v141);
    sub_10000CD74(v151);
    v54 = v135;
    v45 = v36;
    v55 = &off_100911000;
    goto LABEL_24;
  }

  v44 = v148;
  (*(v140 + 16))(v131, v40, v141);
  sub_10076FCFC();
  sub_10076F87C();
  v45 = v36;
  v46 = *&v36[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_textLabel];
  sub_10076B8EC();
  sub_10076260C();

  v47 = *&v45[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_separatorView];
  v48 = v111;
  sub_1007665FC();
  sub_100457780(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v49 = v143;
  v50 = sub_10077124C();
  v51 = *(v146 + 8);
  v146 += 8;
  v110 = v51;
  v51(v48, v49);
  [v47 setHidden:v50 & 1];
  v131 = v44;
  v52 = sub_10076B8BC();
  v109 = v46;
  if ((v52 & 2) != 0)
  {
    [v46 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v46 _setTextColorFollowsTintColor:0];
    sub_1000325F0();
    v53 = sub_100770CFC();
    [v46 setTextColor:v53];
  }

  v56 = v130;
  v55 = &off_100911000;
  swift_getObjectType();
  v57 = sub_10045B094(v41);
  v58 = type metadata accessor for Accessory(0);
  if (v57)
  {
    v59 = v112;
    swift_storeEnumTagMultiPayload();
    v60 = 0;
  }

  else
  {
    v60 = 1;
    v59 = v112;
  }

  (*(*(v58 - 8) + 56))(v59, v60, 1, v58);
  sub_100292808(v59, v113);
  sub_10000CFBC(v59, &qword_10094BB50, &qword_1007851D0);
  v61 = [v41 traitCollection];
  v62 = [v61 horizontalSizeClass];

  if (v62 == 1 || (sub_10076660C(), v63 = v143, v64 = sub_10077124C(), v110(v48, v63), (v64 & 1) != 0))
  {
    v65 = [v45 contentView];
    [v41 pageMarginInsets];
  }

  else
  {
    v65 = [v45 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  v70 = v138;
  [v65 setLayoutMargins:{top, left, bottom, right}];

  v71 = sub_10076B8FC();
  if (v71)
  {

    v72 = *&v45[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v72 && ([v72 isHidden] & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    v74 = v71 == 0;
    v75 = sub_1002907D4();
    v76 = v74;
    v70 = v138;
    [v75 setHidden:v76];

    goto LABEL_20;
  }

  v73 = *&v45[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
  if (v73 && ![v73 isHidden])
  {
    goto LABEL_19;
  }

LABEL_20:
  sub_10076660C();
  v77 = v143;
  v78 = v144;
  v79 = sub_10077124C();
  v80 = v48;
  v81 = v110;
  v110(v80, v77);
  v45[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isVertical] = (v79 & 1) == 0;
  if (v79)
  {
    v82 = 1;
  }

  else
  {
    v82 = 3;
  }

  [v109 setNumberOfLines:v82];
  [v45 setNeedsLayout];
  [v45 setNeedsLayout];
  swift_unknownObjectRelease();

  (*(v114 + 8))(v70, v115);
  (*(v56 + 8))(v142, v128);
  v81(v78, v77);
  (*(v140 + 8))(v139, v141);
  sub_10000CD74(v151);
  v42 = &selRef_initWithTabBarSystemItem_tag_;
  v43 = &selRef_initWithTabBarSystemItem_tag_;
  v54 = v135;
LABEL_24:
  v83 = [v45 v43[115]];
  [v83 v55[207]];

  swift_getKeyPath();
  sub_10076338C();

  sub_10076E45C();
  sub_10076C21C();
  v85 = v84;
  sub_10076C23C();
  v86 = v137;
  v87 = v136;
  if (v85 == 1.0)
  {
    sub_10076C2EC();
    sub_10076C23C();
    sub_10076C2EC();
  }

  else
  {
    sub_10076C2BC();
    sub_10076C23C();
    sub_10076C2BC();
  }

  sub_10076E47C();
  v88 = v132;
  (*(v87 + 16))(v132, v54, v86);
  (*(v87 + 56))(v88, 0, 1, v86);
  sub_10077080C();
  v89 = ASKDeviceTypeGetCurrent();
  v90 = sub_10076FF9C();
  v92 = v91;
  if (v90 == sub_10076FF9C() && v92 == v93)
  {
  }

  else
  {
    v94 = sub_10077167C();

    if ((v94 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  sub_1007619CC();
  sub_100457780(&unk_10094CD60, &type metadata accessor for SearchAdAction, &protocol conformance descriptor for Action);
  v45[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isDisplayingSearchTrendingAction] = sub_10076334C() & 1;
  v95 = v121;
  sub_1007632FC();
  v96 = v45;
  v97 = v119;
  sub_100455D90(v95, v119);
  v118(v95, v124);
  v98 = v120;
  swift_beginAccess();
  v99 = v97;
  v45 = v96;
  v117(&v96[v98], v99, v116);
  swift_endAccess();
  sub_100291188();
  v100 = *&v96[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_textLabel];
  swift_beginAccess();
  v101 = v125;
  sub_10076062C();
  swift_endAccess();
  v102.super.isa = [v96 v42[274]];
  isa = v102.super.isa;
  v104 = sub_10076D19C(v102).super.isa;

  (*(v126 + 8))(v101, v127);
  [v100 setFont:v104];

  [v45 setNeedsLayout];
LABEL_32:
  sub_10000A5D4(&qword_100946730, &qword_100789070);
  sub_10076333C();
  if (v150)
  {
    sub_100012498(&v149, v151);
    sub_10000CF78(v151, v151[3]);
    v105 = sub_10076557C();
    if (v105)
    {
    }

    v45[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_hasArtworkToDisplay] = v105 != 0;
    sub_10000CD74(v151);
  }

  else
  {
    sub_10000CFBC(&v149, &qword_100957B40, &qword_1007878E8);
  }

  v106 = v145;
  [v45 setNeedsLayout];
  (*(v87 + 8))(v54, v86);
  return (*(v133 + 8))(v106, v134);
}

uint64_t sub_100457608@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_100457664(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

id sub_10045772C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v2, "prepareForReuse");
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_hasArtworkToDisplay) = 0;
  return result;
}

uint64_t sub_100457780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1004577DC()
{
  result = qword_100957B48;
  if (!qword_100957B48)
  {
    sub_100762D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957B48);
  }

  return result;
}

uint64_t sub_10045783C(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v28 = a1;
  v30 = sub_10075F65C();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100765F6C();
  v4 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100766EDC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F4FC();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v15 - 8);
  v17 = &v26 - v16;
  v18 = sub_10076C15C();
  __chkstk_darwin(v18);
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  (*(v20 + 104))(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.shareSheet(_:));
  v21 = sub_10075DB7C();
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  v22 = sub_10076096C();
  (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
  v33 = sub_100762D9C();
  v32 = v28;

  sub_10076F4DC();
  (*(v8 + 104))(v10, enum case for FlowPresentationContext.infer(_:), v7);
  (*(v4 + 104))(v6, enum case for FlowAnimationBehavior.infer(_:), v27);
  (*(v2 + 104))(v29, enum case for FlowOrigin.inapp(_:), v30);
  sub_10076FA2C();
  sub_10075F63C();
  swift_allocObject();
  v23 = sub_10075F5EC();
  v24 = sub_100563FF8(v23, 1, v31);

  return v24;
}

uint64_t sub_100457D0C()
{
  sub_10000A5D4(&unk_100948AD0, "ޢ\a");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100783DE0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  v1 = sub_1000FC71C(inited);
  swift_setDeallocating();
  sub_10000A5D4(&qword_100948AA0, &qword_10078B350);
  result = swift_arrayDestroy();
  qword_100957B50 = v1;
  return result;
}

void sub_100457F20(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100785D70;
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v9 colorWithAlphaComponent:a1];

  v11 = [v10 CGColor];
  *(v7 + 32) = v11;
  v12 = [v8 blackColor];
  v13 = [v12 colorWithAlphaComponent:a2];

  v14 = [v13 CGColor];
  *(v7 + 40) = v14;
  *a4 = v7;
}

char *sub_10045805C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient;
  *&v4[v9] = [objc_allocWithZone(CAGradientLayer) init];
  v4[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsTopGradient] = 1;
  v4[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient] = 1;
  v21.receiver = v4;
  v21.super_class = type metadata accessor for HeroGradientView();
  v10 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 setUserInteractionEnabled:0];
  v15 = OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient;
  [*&v14[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient] setAnchorPoint:{0.0, 0.0}];
  v16 = qword_100940550;
  v17 = *&v14[v15];
  if (v16 != -1)
  {
    swift_once();
  }

  sub_10000A5D4(&qword_100948AE0, qword_1007988E0);
  isa = sub_10076FE3C().super.isa;
  [v17 setActions:isa];

  v19 = [v14 layer];
  [v19 addSublayer:*&v14[v15]];

  sub_1004583A0();
  return v14;
}

id sub_1004583A0()
{
  if ((v0[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsTopGradient] & 1) != 0 || v0[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient] == 1)
  {
    v1 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient];
    [v1 setHidden:0];
    [v0 bounds];
    sub_100458510(v2, v3);
    v5 = v4;
    sub_1001E2870();

    isa = sub_1007701AC().super.isa;

    [v1 setLocations:isa];

    sub_10016D8F8(v5);

    v7 = sub_1007701AC().super.isa;

    [v1 setColors:v7];

    v8 = "setNeedsDisplay";
    v9 = v1;
  }

  else
  {
    v9 = *&v0[OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_gradient];
    v8 = "setHidden:";
  }

  return [v9 v8];
}

uint64_t sub_100458510(double a1, double a2)
{
  v3 = v2;
  v4 = 174.0 / a2;
  v5 = [objc_allocWithZone(NSNumber) initWithDouble:174.0 / a2];
  v6 = [objc_allocWithZone(NSNumber) initWithDouble:1.0 - v4];
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1007841E0;
  sub_1001E2870();
  *(v7 + 32) = sub_100770EBC(0.0);
  v20 = v7;
  v8 = OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsTopGradient;
  if (*(v2 + OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsTopGradient) == 1)
  {
    v9 = v5;
    sub_10077019C();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    if (qword_100940558 != -1)
    {
      swift_once();
    }

    sub_1000F9994(v10);
    if ((*(v2 + OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient) & 1) == 0)
    {
      v11 = [objc_opt_self() blackColor];
      v12 = [v11 colorWithAlphaComponent:0.0];

      v13 = [v12 CGColor];
      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
    }
  }

  if (*(v3 + OBJC_IVAR____TtC20ProductPageExtension16HeroGradientView_wantsBottomGradient) == 1)
  {
    v14 = v6;
    sub_10077019C();
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_10077021C();
    }

    sub_10077025C();
    if ((*(v3 + v8) & 1) == 0)
    {
      v15 = [objc_opt_self() blackColor];
      v16 = [v15 colorWithAlphaComponent:0.0];

      v17 = [v16 CGColor];
      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
    }

    if (qword_100940560 != -1)
    {
      swift_once();
    }

    sub_1000F9994(v18);
  }

  sub_100770EBC(1.0);
  sub_10077019C();
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_10077021C();
  }

  sub_10077025C();

  return v20;
}

id sub_100458954(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HeroGradientView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1004589BC(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = sub_10076D58C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10076D55C();
  sub_10076D56C();
  sub_10000A570(v4 + 88, v12);
  v13[3] = sub_10076E04C();
  v13[4] = &protocol witness table for Margins;
  sub_10000DB7C(v13);
  sub_10076E02C();
  sub_10076D56C();
  sub_10000CD74(v13);
  sub_10076E0FC();
  v10 = v9;
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_100458B98()
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
  return sub_10076D51C();
}

uint64_t sub_100458D40()
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
  sub_10076D4FC();
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
  return sub_10076D51C();
}

uint64_t sub_100458EB4()
{
  sub_10076D55C();
  sub_10076D56C();
  sub_10000A570(v0 + 88, &v2);
  v3[3] = sub_10076E04C();
  v3[4] = &protocol witness table for Margins;
  sub_10000DB7C(v3);
  sub_10076E02C();
  sub_10076D56C();
  return sub_10000CD74(v3);
}

__n128 sub_100458FA0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_100458FC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10045900C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10045907C@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  *(a1 + 24) = *(v1 + 24);
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_1004590A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004591C8();

  return CustomLayout._eraseToAnyForTesting(with:)(a1, a2, v4);
}

unint64_t sub_100459100()
{
  result = qword_100957BA8;
  if (!qword_100957BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957BA8);
  }

  return result;
}

unint64_t sub_100459158()
{
  result = qword_100957BB0;
  if (!qword_100957BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957BB0);
  }

  return result;
}

unint64_t sub_1004591C8()
{
  result = qword_100957BB8;
  if (!qword_100957BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957BB8);
  }

  return result;
}

uint64_t sub_10045921C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100459270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double sub_100459324(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  v5 = sub_10076C38C();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1004593F8(a1, v4);
  v7 = v6;
  sub_10005AEAC(v4);
  return v7;
}

void *sub_1004593F8(uint64_t a1, id a2)
{
  v126 = a2;
  v3 = sub_10000A5D4(&qword_100957BC0, &qword_1007A46B8);
  v118 = *(v3 - 8);
  __chkstk_darwin(v3);
  v117 = &v90 - v4;
  v112 = sub_10076514C();
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v113 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_10076516C();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v114 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_10076DD3C();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v104 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v105 = &v90 - v9;
  v103 = sub_100760FDC();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_10076D7FC();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v96 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v97 = &v90 - v13;
  __chkstk_darwin(v14);
  v98 = &v90 - v15;
  v110 = sub_10076DA7C();
  v109 = *(v110 - 8);
  __chkstk_darwin(v110);
  v108 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v122 = &v90 - v18;
  v121 = sub_10075D99C();
  v120 = *(v121 - 1);
  __chkstk_darwin(v121);
  v119 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_10076664C();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v93 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v92 = &v90 - v22;
  v125 = sub_100760F8C();
  v23 = *(v125 - 8);
  __chkstk_darwin(v125);
  v25 = (&v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  __chkstk_darwin(v26 - 8);
  v129 = sub_10000A5D4(&qword_100957BC8, &qword_1007A46C0);
  v124 = *(v129 - 8);
  __chkstk_darwin(v129);
  v128 = &v90 - v27;
  v28 = sub_10000A5D4(&unk_1009434A0, &unk_100787B90);
  __chkstk_darwin(v28 - 8);
  v30 = &v90 - v29;
  v31 = sub_10076C38C();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v130 = &v90 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100760FAC();
  sub_10045A6B4(&qword_10094FAE8, &type metadata accessor for ProductReview, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  v34 = a1;
  result = sub_10076332C();
  v127 = aBlock[0];
  if (!aBlock[0])
  {
    return result;
  }

  v91 = v3;
  sub_10003BDD4(v126, v30);
  v36 = *(v32 + 48);
  v37 = v36(v30, 1, v31);
  v123 = v32;
  if (v37 == 1)
  {
    swift_getKeyPath();
    sub_10076338C();

    v38 = v31;
    if (v36(v30, 1, v31) != 1)
    {
      sub_10005AEAC(v30);
    }
  }

  else
  {
    (*(v32 + 32))(v130, v30, v31);
    v38 = v31;
  }

  v39 = v34;
  sub_1007633DC();
  v40 = v128;
  sub_10076FDBC();
  sub_100760F9C();
  v41 = v125;
  v42 = (*(v23 + 88))(v25, v125);
  if (v42 == enum case for ProductReview.ReviewSource.editorsChoice(_:))
  {
    goto LABEL_7;
  }

  if (v42 == enum case for ProductReview.ReviewSource.user(_:))
  {
    (*(v23 + 96))(v25, v41);
    v43 = *v25;
    sub_10013E624();
    v44 = v129;
    sub_10076FD8C();
    v45 = sub_1006CD6D4(v39, LOBYTE(aBlock[0]));
    type metadata accessor for ProductReviewView();
    v46 = v130;
    sub_10076C2FC();
    v48 = v47;
    v49 = sub_100630CB4();
    swift_getObjectType();
    sub_100372F00(v43, v45 & 1, v45 & 1, v49, v48);

    swift_unknownObjectRelease();

    (*(v124 + 8))(v40, v44);
    return (*(v123 + 8))(v46, v38);
  }

  if (v42 != enum case for ProductReview.ReviewSource.reviewSummary(_:))
  {
LABEL_7:

    (*(v124 + 8))(v40, v129);
    (*(v123 + 8))(v130, v38);
    return (*(v23 + 8))(v25, v41);
  }

  (*(v23 + 96))(v25, v41);
  v50 = *v25;
  sub_10013E624();
  sub_10076FD8C();
  v90 = v38;
  if (LOBYTE(aBlock[0]) == 2)
  {
    v51 = v92;
    sub_10076331C();
    v52 = v93;
    sub_1007665CC();
    sub_10045A6B4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
    v53 = v95;
    sub_10077124C();
    v54 = *(v94 + 8);
    v54(v52, v53);
    v54(v51, v53);
  }

  sub_10076C2FC();
  swift_getKeyPath();
  sub_10076338C();

  v55 = v136;
  v56 = v119;
  sub_100760FCC();
  v57 = sub_1003D9E44(v56, 0, v55);
  v120[1](v56, v121);
  v58 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v57];
  v59 = [v57 length];
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  *(v60 + 24) = v55;
  *(v60 + 32) = v58;
  *(v60 + 40) = 1;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1000275EC;
  *(v61 + 24) = v60;
  v134 = sub_1000ACB04;
  v135 = v61;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026610;
  v133 = &unk_100895C30;
  v62 = _Block_copy(aBlock);
  v126 = v55;
  v63 = v58;

  [v57 enumerateAttributesInRange:0 options:v59 usingBlock:{0x100000, v62}];

  _Block_release(v62);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_20;
  }

  v65 = v96;
  sub_10076D7EC();
  v66 = v97;
  sub_10076D79C();
  v67 = *(v99 + 8);
  v68 = v100;
  v67(v65, v100);
  sub_10076D7AC();
  v67(v66, v68);
  sub_10076DA5C();
  v121 = v63;
  sub_10076DAAC();
  v69 = sub_10076100C();
  v71 = v70;
  v72 = sub_100760FBC();
  v73 = v101;
  sub_100760FEC();
  v74 = sub_1003DAB0C(v69, v71, v72, v73);

  (*(v102 + 8))(v73, v103);
  v120 = v74;
  isEscapingClosureAtFileLocation = v104;
  sub_10076DD2C();
  v55 = v117;
  if (qword_100940D00 != -1)
  {
LABEL_20:
    swift_once();
  }

  v125 = v50;
  v75 = sub_10076D3DC();
  sub_10000A61C(v75, qword_1009A14F8);
  sub_10076DCFC();
  (*(v106 + 8))(isEscapingClosureAtFileLocation, v107);
  sub_10076DA5C();
  v76 = v108;
  sub_10076DABC();
  if (qword_100940390 != -1)
  {
    swift_once();
  }

  v77 = v112;
  v78 = sub_10000A61C(v112, qword_10099F7E0);
  (*(v111 + 16))(v113, v78, v77);
  v79 = v110;
  v133 = v110;
  v134 = &protocol witness table for LabelPlaceholder;
  v80 = sub_10000DB7C(aBlock);
  v81 = v109;
  v82 = *(v109 + 16);
  v83 = v122;
  v82(v80, v122, v79);
  v131[3] = v79;
  v131[4] = &protocol witness table for LabelPlaceholder;
  v84 = sub_10000DB7C(v131);
  v82(v84, v76, v79);
  v85 = v114;
  sub_10076515C();
  sub_10045A6B4(&qword_100957BD0, &type metadata accessor for ReviewSummaryLayout, &protocol conformance descriptor for ReviewSummaryLayout);
  v86 = v116;
  sub_10076D43C();
  swift_getOpaqueTypeConformance2();
  v87 = v126;
  v88 = v91;
  sub_10076E0FC();

  (*(v118 + 8))(v55, v88);
  (*(v115 + 8))(v85, v86);
  v89 = *(v81 + 8);
  v89(v76, v79);
  v89(v83, v79);
  (*(v124 + 8))(v128, v129);
  return (*(v123 + 8))(v130, v90);
}

uint64_t sub_10045A644()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_10045A69C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10045A6B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10045A6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v45 = a6;
  v41 = a3;
  v8 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_10076664C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v6[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_textLabel];
  sub_10076B8EC();
  sub_10076260C();

  v42 = v6;
  v16 = *&v6[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_separatorView];
  sub_1007665FC();
  sub_10045B110(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v43 = a4;
  v17 = sub_10077124C();
  v44 = *(v12 + 8);
  v44(v14, v11);
  [v16 setHidden:v17 & 1];
  if ((sub_10076B8BC() & 2) != 0)
  {
    [v15 _setTextColorFollowsTintColor:1];
  }

  else
  {
    [v15 _setTextColorFollowsTintColor:0];
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v18 = sub_100770CFC();
    [v15 setTextColor:v18];
  }

  v19 = v45;
  swift_getObjectType();
  v20 = sub_10045B094(v19);
  v21 = type metadata accessor for Accessory(0);
  v22 = v42;
  if (v20)
  {
    swift_storeEnumTagMultiPayload();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(*(v21 - 8) + 56))(v10, v23, 1, v21);
  sub_100292808(v10, v41);
  sub_10000CFBC(v10, &qword_10094BB50, &qword_1007851D0);
  v24 = [v45 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 1 || (sub_10076660C(), v26 = sub_10077124C(), v44(v14, v11), (v26 & 1) != 0))
  {
    v27 = [v22 contentView];
    [v45 pageMarginInsets];
  }

  else
  {
    v27 = [v22 contentView];
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  [v27 setLayoutMargins:{top, left, bottom, right}];

  v32 = sub_10076B8FC();
  if (v32)
  {

    v33 = *&v22[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (v33 && ([v33 isHidden] & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v34 = *&v22[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_lazilyCreatedArtworkView];
    if (!v34 || [v34 isHidden])
    {
      goto LABEL_18;
    }
  }

  v35 = v32 == 0;
  v36 = sub_1002907D4();
  [v36 setHidden:v35];

LABEL_18:
  sub_10076660C();
  v37 = sub_10077124C();
  v44(v14, v11);
  v22[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isVertical] = (v37 & 1) == 0;
  if (v37)
  {
    v38 = 1;
  }

  else
  {
    v38 = 3;
  }

  [v15 setNumberOfLines:v38];
  [v22 setNeedsLayout];
  return [v22 setNeedsLayout];
}

double sub_10045ABF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = objc_allocWithZone(type metadata accessor for SearchAdTransparencyButton(0));

    sub_100290A0C([v6 init]);
    v7 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_searchAdTransparencyButton;
    v8 = *&v3[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_searchAdTransparencyButton];
    if (v8)
    {
      v9 = v8;
      sub_10076C3FC();
      sub_10076B8EC();
      v11 = v10;

      if (v11)
      {
        v12 = sub_10076FF6C();
      }

      else
      {
        v12 = 0;
      }

      [v9 setTitle:v12 forState:0];

      v16 = *&v3[v7];
      if (v16)
      {
        v17 = swift_allocObject();
        *(v17 + 16) = a2;
        *(v17 + 24) = a1;
        v18 = &v16[qword_10094CD78];
        v19 = *&v16[qword_10094CD78];
        v20 = *&v16[qword_10094CD78 + 8];
        *v18 = sub_10045B3FC;
        v18[1] = v17;

        v21 = v16;

        sub_1000167E0(v19, v20);
      }
    }

    v3[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isDisplayingSearchAd] = 1;
    [v3 setNeedsLayout];
  }

  else
  {
    v2[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_isDisplayingSearchAd] = 0;
    v13 = OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_searchAdTransparencyButton;
    v14 = *&v3[OBJC_IVAR____TtC20ProductPageExtension24ActionCollectionViewCell_searchAdTransparencyButton];
    if (v14)
    {
      [v14 removeFromSuperview];
      v14 = *&v3[v13];
    }

    *&v3[v13] = 0;
  }

  return result;
}

uint64_t sub_10045ADF4(uint64_t a1)
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

void sub_10045AF88(int a1, id a2)
{
  v2 = [a2 traitCollection];
  [v2 horizontalSizeClass];
}

BOOL sub_10045B094(void *a1)
{
  if ((sub_10076B8BC() & 4) != 0)
  {
    return 1;
  }

  if ((sub_10076B8BC() & 8) == 0)
  {
    return 0;
  }

  v3 = [a1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  return v4 == 1;
}

uint64_t sub_10045B110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10045B158(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_getObjectType();
  v9 = [a6 traitCollection];
  v10 = [v9 horizontalSizeClass];

  if (v10 == 1)
  {
    [a6 pageMarginInsets];
    top = v11;
    left = v13;
    bottom = v15;
    right = v17;
  }

  else
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
  }

  sub_10076B90C();

  sub_10000A5D4(&unk_1009520F0, &qword_100799AA0);
  if (swift_dynamicCast())
  {
    sub_10000CF78(&v29, *(&v30 + 1));
    v19 = sub_10076968C();
    sub_10000CD74(&v29);
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    sub_10000CFBC(&v29, &qword_10094D3E8, &qword_100796560);
    v19 = 0;
  }

  v20 = sub_10076B8EC();
  v22 = v21;
  v23 = sub_10076B8FC();
  if (v23)
  {
  }

  v24 = sub_10045B094(a6);
  if (qword_10093FCF0 != -1)
  {
    swift_once();
  }

  v25 = sub_10076063C();
  v26 = sub_10000A61C(v25, qword_10099E180);
  v27 = sub_100293124(v26, a6, v20, v22, v23 != 0, v24, v19 & 1, a2, a3, top, left, bottom, right);

  return v27;
}

uint64_t sub_10045B3BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10045B404(uint64_t a1, uint64_t a2, void *a3)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_10093FCF0 != -1)
  {
    swift_once();
  }

  v5 = sub_10076063C();
  v6 = sub_10000A61C(v5, qword_10099E180);
  v7 = sub_100293A18(v6, a3);
  v9 = v8;
  v10 = objc_opt_self();
  v11 = [v10 absoluteDimension:v7];
  v12 = [v10 absoluteDimension:v9];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  v15 = [objc_opt_self() itemWithLayoutSize:v14];
  v16 = v9 * a1;
  v17 = [v10 absoluteDimension:v7];
  v18 = [v10 absoluteDimension:v16];
  v19 = [v13 sizeWithWidthDimension:v17 heightDimension:v18];

  v20 = objc_opt_self();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007841E0;
  *(v21 + 32) = v15;
  sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);
  v22 = v15;
  isa = sub_1007701AC().super.isa;

  v24 = [v20 verticalGroupWithLayoutSize:v19 subitems:isa];

  [v24 setContentInsets:{0.0, 0.0, 0.0, 0.0}];
  v25 = [objc_opt_self() fixedSpacing:0.0];
  [v24 setInterItemSpacing:v25];

  return v24;
}

uint64_t sub_10045B6F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_10045B74C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10045B818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  WitnessTable = swift_getWitnessTable();

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, a4, a5, WitnessTable);
}

void *sub_10045B89C()
{
  v1 = sub_10076B66C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  v9 = sub_1007658FC();
  v18 = *(v9 - 8);
  v19 = v9;
  __chkstk_darwin(v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100762A6C();
  sub_10045BBE4(v12);
  result = sub_10076332C();
  if (v20)
  {
    v17 = v0;
    swift_getKeyPath();
    sub_10076338C();

    swift_getKeyPath();
    sub_10076F49C();

    (*(v6 + 8))(v8, v5);
    if ((*(v2 + 88))(v4, v1) == enum case for Shelf.ContentsMetadata.productMedia(_:))
    {
      (*(v2 + 96))(v4, v1);
      v14 = v18;
      v15 = v4;
      v16 = v19;
      (*(v18 + 32))(v11, v15, v19);
      *(*(v17 + OBJC_IVAR____TtC20ProductPageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_platform) = sub_1007658EC();

      sub_100124EE0();

      return (*(v14 + 8))(v11, v16);
    }

    else
    {

      return (*(v2 + 8))(v4, v1);
    }
  }

  return result;
}

unint64_t sub_10045BBE4(__n128 a1)
{
  result = qword_100945AD0;
  if (!qword_100945AD0)
  {
    sub_100762A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100945AD0);
  }

  return result;
}

double sub_10045BC80(uint64_t a1, void *a2, double a3)
{
  sub_10000CF78(a2, a2[3]);
  sub_10076D2AC();
  return v3;
}

uint64_t sub_10045BCEC(uint64_t a1, __n128 a2)
{
  switch(a1)
  {
    case 0:
    case 1:
    case 8:
      v2 = type metadata accessor for StoryCardCollectionViewCell(0);
      v3 = &unk_100952D50;
      v4 = type metadata accessor for StoryCardCollectionViewCell;
      break;
    case 2:
      v2 = type metadata accessor for ListTodayCardCollectionViewCell(0);
      v3 = &unk_100956340;
      v4 = type metadata accessor for ListTodayCardCollectionViewCell;
      break;
    case 3:
    case 6:
      v2 = type metadata accessor for MultiAppFallbackCardCollectionViewCell(0);
      v3 = &unk_100956320;
      v4 = type metadata accessor for MultiAppFallbackCardCollectionViewCell;
      break;
    case 4:
      v2 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell(0);
      v3 = &unk_100956338;
      v4 = type metadata accessor for InAppPurchaseTodayCardCollectionViewCell;
      break;
    case 5:
      v2 = type metadata accessor for RiverTodayCardCollectionViewCell(0);
      v3 = &unk_100957C20;
      v4 = type metadata accessor for RiverTodayCardCollectionViewCell;
      break;
    case 7:
      v2 = type metadata accessor for GridTodayCardCollectionViewCell(0);
      v3 = &unk_100956328;
      v4 = type metadata accessor for GridTodayCardCollectionViewCell;
      break;
    case 10:
      v2 = type metadata accessor for AppEventTodayCardCollectionViewCell(0);
      v3 = &unk_100956318;
      v4 = type metadata accessor for AppEventTodayCardCollectionViewCell;
      break;
    case 11:
      v2 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell(0);
      v3 = &unk_100956310;
      v4 = type metadata accessor for CondensedAdLockupWithIconBackgroundViewTodayCardCollectionViewCell;
      break;
    case 12:
      v2 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell(0);
      v3 = &unk_100956308;
      v4 = type metadata accessor for MediumAdLockupWithScreenshotsBackgroundTodayCardCollectionViewCell;
      break;
    case 13:
      v2 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell(0);
      v3 = &unk_100956300;
      v4 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundTodayCardCollectionViewCell;
      break;
    default:
      sub_10077156C();
      __break(1u);
      JUMPOUT(0x10045BF20);
  }

  sub_10045BF58(v3, v4);
  return v2;
}

uint64_t sub_10045BF58(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

double sub_10045BFAC(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v9 = sub_10076B5BC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v19[-v14];
  if (a3)
  {
    return sub_10045C224(a1, a2, a3 & 1, a4);
  }

  v22 = v4;
  sub_100763F0C();
  (*(v10 + 104))(v12, enum case for Shelf.ContentType.privacyDefinition(_:), v9);
  sub_10045CA18(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v25 == v23 && v26 == v24)
  {
    v17 = *(v10 + 8);
    v17(v12, v9);
    v17(v15, v9);

    return 0.0;
  }

  else
  {
    v20 = sub_10077167C();
    v21 = a2;
    v18 = *(v10 + 8);
    v18(v12, v9);
    v18(v15, v9);
    a2 = v21;

    result = 0.0;
    if ((v20 & 1) == 0)
    {
      return sub_10045C224(a1, a2, a3 & 1, a4);
    }
  }

  return result;
}

double sub_10045C224(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v37 = a4;
  v36 = a3;
  v35 = a2;
  v4 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_10076B5BC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  sub_10076573C();
  sub_10045CA18(&qword_10094CCF0, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  sub_100761B4C();
  v38 = v13;
  sub_10076B5CC();
  if (v36)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    v14 = 0;
    v15 = v6;
    v16 = v38;
    v17 = v7;
  }

  else
  {
    sub_100761A7C();
    (*(v8 + 56))(v6, 0, 1, v7);
    sub_100761B5C();
    v15 = v6;
    v17 = v7;
    if (v18)
    {

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    v16 = v38;
  }

  v19 = v37;
  (*(v8 + 16))(v10, v16, v17);
  v20 = (*(v8 + 88))(v10, v17);
  if (v20 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v21 = &off_1008A1710;
  }

  else
  {
    if (v20 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v8 + 8))(v10, v17);
      goto LABEL_14;
    }

    type metadata accessor for InformationRibbonCollectionViewCell(0);
    v21 = &off_100891580;
  }

  v22 = (v21[1])();
  if ((v23 & 1) == 0)
  {
LABEL_19:
    v33 = *&v22;

    v32 = v33;
    goto LABEL_20;
  }

LABEL_14:
  if (sub_10041329C())
  {
    v22 = (*(v24 + 40))(v15, v14, v19);
    if ((v25 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v26 = sub_10076D9AC();
  sub_10000A61C(v26, qword_1009A2380);
  v27 = [v19 traitCollection];
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007841E0;
  *(v28 + 32) = v27;
  v29 = v27;
  v30 = sub_10076DEEC();
  sub_10076D3EC();
  v32 = v31;

  v16 = v38;
LABEL_20:
  sub_10041B638(v15);
  (*(v8 + 8))(v16, v17);
  return v32;
}

void sub_10045C6D0(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a3;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  sub_100763F0C();
  (*(v6 + 104))(v8, enum case for Shelf.ContentType.privacyDefinition(_:), v5);
  sub_10045CA18(&qword_10094C660, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  sub_10077018C();
  sub_10077018C();
  if (v21 == v20)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    v12(v11, v5);
  }

  else
  {
    v18 = a2;
    v13 = sub_10077167C();
    v14 = *(v6 + 8);
    v14(v8, v5);
    v14(v11, v5);

    if ((v13 & 1) == 0)
    {
      sub_100628B50(a1, v18, v19);
      return;
    }
  }

  if (qword_1009408B0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for TitleHeaderView.Style(0);
  v16 = sub_10000A61C(v15, qword_1009A0890);
  sub_1001162A4(v16, v19, v17);
}

uint64_t sub_10045C964()
{
  sub_10062A5C8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PrivacyDefinitionsDataSource(uint64_t a1)
{
  result = qword_100957C50;
  if (!qword_100957C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10045CA18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10045CA60()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099FAA0);
  sub_10000A61C(v4, qword_10099FAA0);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000DB7C(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

char *sub_10045CBCC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension34SmallLockupCollectionViewTableCell_lockupView;
  type metadata accessor for SmallLockupView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SmallLockupCollectionViewTableCell();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 contentView];
  [v11 setPreservesSuperviewLayoutMargins:0];

  v12 = [v10 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v10 contentView];
  [v13 addSubview:*&v10[OBJC_IVAR____TtC20ProductPageExtension34SmallLockupCollectionViewTableCell_lockupView]];

  return v10;
}

id sub_10045CDCC()
{
  v1 = v0;
  v2 = sub_10077164C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmallLockupCollectionViewTableCell();
  v22.receiver = v0;
  v22.super_class = v6;
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v7 = [v0 contentView];
  sub_1000ACA5C();
  sub_10076422C();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = *&v1[OBJC_IVAR____TtC20ProductPageExtension34SmallLockupCollectionViewTableCell_lockupView];
  [v14 intrinsicContentSize];
  v16 = v15;
  if (qword_100940568 != -1)
  {
    swift_once();
  }

  v17 = sub_10076D9AC();
  sub_10000A61C(v17, qword_10099FAA0);
  v18 = [v1 traitCollection];
  sub_10076D17C();
  sub_10076D97C();
  v20 = v19;

  (*(v3 + 8))(v5, v2);
  return [v14 setFrame:{v9, v11 + v20, v13, v16}];
}

id sub_10045D014(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SmallLockupCollectionViewTableCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10045D09C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2908(a1, a2, a3, WitnessTable);
}

void sub_10045D108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_1001E2BC0(a1, a2, a3, WitnessTable);
}

unint64_t sub_10045D174(uint64_t a1)
{
  result = sub_10045D19C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10045D19C()
{
  result = qword_100957F80;
  if (!qword_100957F80)
  {
    type metadata accessor for SmallLockupCollectionViewTableCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957F80);
  }

  return result;
}

void sub_10045D1F0(uint64_t a1, uint64_t (*a2)(char *, void, uint64_t, __n128), uint64_t a3, char *a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = v9;
  v253 = a3;
  v252 = a2;
  v18 = sub_10000A5D4(&qword_10094A428, &qword_10078D678);
  __chkstk_darwin(v18 - 8);
  v224 = &v217 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v217 - v21;
  v23 = sub_10000A5D4(&unk_10094C030, &unk_10078D680);
  __chkstk_darwin(v23 - 8);
  v240 = &v217 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v241 = &v217 - v26;
  v27 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v27 - 8);
  v239 = &v217 - v28;
  v29 = sub_1007611EC();
  __chkstk_darwin(v29 - 8);
  v223 = &v217 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v228 = &v217 - v32;
  __chkstk_darwin(v33);
  v234 = &v217 - v34;
  __chkstk_darwin(v35);
  v233 = &v217 - v36;
  v238 = sub_10076121C();
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v227 = &v217 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v232 = &v217 - v39;
  v243 = sub_10076481C();
  v242 = *(v243 - 8);
  __chkstk_darwin(v243);
  v229 = &v217 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v254 = &v217 - v42;
  v222 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  v221 = *(v222 - 8);
  __chkstk_darwin(v222);
  v44 = &v217 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_10000A5D4(&qword_10094E260, qword_100796150);
  __chkstk_darwin(v45 - 8);
  v225 = &v217 - v46;
  v236 = sub_10076D39C();
  v235 = *(v236 - 8);
  __chkstk_darwin(v236);
  v251 = &v217 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_10076357C();
  v248 = *(v249 - 8);
  __chkstk_darwin(v249);
  v247 = &v217 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_1007673CC();
  v263 = *(v267 - 8);
  __chkstk_darwin(v267);
  v250 = &v217 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v266 = &v217 - v51;
  __chkstk_darwin(v52);
  v258 = &v217 - v53;
  v268 = sub_10076350C();
  v54 = *(v268 - 8);
  __chkstk_darwin(v268);
  v219 = &v217 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v226 = &v217 - v57;
  __chkstk_darwin(v58);
  v255 = &v217 - v59;
  __chkstk_darwin(v60);
  v231 = &v217 - v61;
  __chkstk_darwin(v62);
  v261 = &v217 - v63;
  v64 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v64 - 8);
  v220 = &v217 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v257 = &v217 - v67;
  __chkstk_darwin(v68);
  v265 = &v217 - v69;
  v70 = &unk_100783DC0;
  v71 = sub_10000A5D4(&unk_1009428D0, &unk_100783DC0);
  __chkstk_darwin(v71 - 8);
  v73 = &v217 - v72;
  [v9 setLayoutMargins:{a6, a7, a8, a9}];
  v74 = *&v9[OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView];
  *&v74[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_regularWidthColumnSpacing] = a5;
  [v74 setNeedsLayout];
  v75 = sub_10076341C();
  (*(*(v75 - 8) + 56))(v73, 1, 1, v75);
  v246 = v74;
  sub_100386168(a1, v73, a4);
  sub_10000CFBC(v73, &unk_1009428D0, &unk_100783DC0);
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v76 = sub_100770D2C();
  [v10 setBackgroundColor:v76];

  v269 = a1;
  v77 = sub_10076280C();
  if (v77 >> 62)
  {
    v76 = v77;
    v78 = sub_10077158C();
    v77 = v76;
  }

  else
  {
    v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = v258;
  if (v78)
  {
    if ((v77 & 0xC000000000000001) != 0)
    {
      v76 = v77;
      v260 = sub_10077149C();
    }

    else
    {
      if (!*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_78;
      }

      v76 = v77;
      v260 = *(v77 + 32);
    }
  }

  else
  {

    v260 = 0;
  }

  v245 = v10;
  v73 = *(v10 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView);
  v259 = sub_10076283C();
  v10 = sub_10076281C();
  v80 = sub_10076288C();
  if (v80 >> 62)
  {
    v76 = v80;
    v81 = sub_10077158C();
    v80 = v76;
  }

  else
  {
    v81 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v256 = a4;
  v264 = v54;
  if (v81)
  {
    if ((v80 & 0xC000000000000001) != 0)
    {
      v262 = sub_10077149C();
    }

    else
    {
      if (!*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_80;
      }

      v262 = *(v80 + 32);
    }
  }

  else
  {

    v262 = 0;
  }

  sub_100460BD4(v265);
  v70 = sub_10076283C();
  v54 = sub_10076281C();
  v82 = sub_10076280C();
  if (v82 >> 62)
  {
    v83 = v82;
    v84 = sub_10077158C();
    v82 = v83;
    if (v84)
    {
LABEL_19:
      if ((v82 & 0xC000000000000001) == 0)
      {
        if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_82;
        }

        v76 = *(v82 + 32);

        goto LABEL_22;
      }

LABEL_78:
      v76 = sub_10077149C();
LABEL_22:

      goto LABEL_27;
    }
  }

  else if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_19;
  }

  v76 = 0;
LABEL_27:
  v82 = sub_10076288C();
  if (!(v82 >> 62))
  {
    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_34:

    v85 = 0;
    goto LABEL_35;
  }

  v86 = v82;
  v87 = sub_10077158C();
  v82 = v86;
  if (!v87)
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v82 & 0xC000000000000001) != 0)
  {
LABEL_80:
    v85 = sub_10077149C();
    goto LABEL_32;
  }

  if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v85 = *(v82 + 32);

LABEL_32:

LABEL_35:
  v230 = v22;
  sub_10076285C();
  v88 = sub_1007673BC();
  v244 = v44;
  if ((v88 & 1) == 0)
  {

    v258 = *(v263 + 8);
    (v258)(v79, v267);
    v94 = v264;
    v76 = v261;
    (*(v264 + 104))(v261, enum case for LockupMediaLayout.DisplayType.none(_:), v268);
    v70 = 0x100911000;
    v44 = v260;
    goto LABEL_66;
  }

  v90 = v255;
  if (v54 | v70)
  {
    v95 = v231;
    sub_10076D3AC();

    v258 = *(v263 + 8);
    (v258)(v79, v267);
    v94 = v264;
    v96 = v268;
    (*(v264 + 104))(v95, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v268);
    v76 = v261;
    (*(v94 + 32))(v261, v95, v96);
    v70 = 0x100911000;
    v44 = v260;
    v54 = v251;
    goto LABEL_67;
  }

  v91 = sub_10057F8EC(v76, v85, 0, 1, v89);
  v54 = v91;
  v70 = v91 >> 62;
  if (v91 >> 62)
  {
    goto LABEL_130;
  }

  for (i = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10077158C())
  {
    v253 = i;
    if (v76)
    {
      v93 = sub_1007601CC();
    }

    else
    {
      v93 = 0;
    }

    v97 = sub_10057FC34(v93);

    v218 = v10;
    LODWORD(v217) = v97;
    if (v76)
    {
      v98 = sub_1007601CC();
    }

    else
    {
      v98 = 0;
    }

    v99 = v263;
    v100 = v225;
    v101 = v267;
    (*(v263 + 16))(v225, v258, v267);
    v102.n128_f64[0] = (*(v99 + 56))(v100, 0, 1, v101);
    HIDWORD(v217) = sub_10058015C(v98, v100, v102);

    sub_10000CFBC(v100, &qword_10094E260, qword_100796150);
    if (v70)
    {
      v103 = sub_10077158C();
    }

    else
    {
      v103 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v218;
    v104 = v226;
    if (!v103)
    {

LABEL_57:
      v108 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
      v109 = v264;
      v110 = v268;
      v252 = *(v264 + 104);
      (v252)(v104, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v268);
      v111 = sub_1007634FC();
      v112 = *(v109 + 8);
      v112(v104, v110);
      if (((v253 >= v111) & BYTE4(v217)) != 0 || (v108 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v113 = v268, (v252)(v104, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v268), v114 = sub_1007634FC(), v112(v104, v113), ((v253 >= v114) & v217) != 0) || (v108 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v115 = v268, (v252)(v104, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v268), v116 = sub_1007634FC(), v112(v104, v115), v253 >= v116))
      {

        v122 = v258;
        v258 = *(v263 + 8);
        (v258)(v122, v267);
      }

      else
      {
        v108 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
        v117 = v268;
        (v252)(v104, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v268);
        v118 = sub_1007634FC();

        v112(v104, v117);
        v119 = v258;
        v258 = *(v263 + 8);
        (v258)(v119, v267);
        if (v253 != v118)
        {
          v120 = enum case for LockupMediaLayout.DisplayType.none(_:);
          v107 = v231;
          v121 = v231;
LABEL_64:
          (v252)(v121, v120, v268);
          v94 = v264;
          v70 = &off_100911000;
          v76 = v261;
          v44 = v260;
          v10 = v218;
          goto LABEL_65;
        }
      }

      v107 = v231;
      v121 = v231;
      v120 = v108;
      goto LABEL_64;
    }

    if ((v54 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
    }

    else
    {
      if (!*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_152;
      }
    }

    v105 = sub_10076BDCC();

    if ((v105 & 1) == 0)
    {
      goto LABEL_57;
    }

    v106 = v258;
    v258 = *(v263 + 8);
    (v258)(v106, v267);
    v94 = v264;
    v107 = v231;
    (*(v264 + 104))(v231, enum case for LockupMediaLayout.DisplayType.landscape(_:), v268);
    v70 = 0x100911000;
    v76 = v261;
    v44 = v260;
LABEL_65:
    (*(v94 + 32))(v76, v107, v268);
LABEL_66:
    v54 = v251;
    v90 = v255;
LABEL_67:
    sub_10076285C();
    v271[3] = &type metadata for CGFloat;
    v271[4] = &protocol witness table for CGFloat;
    v271[0] = 0x4021000000000000;
    sub_10000A570(v271, v270);
    v123 = *(v94 + 16);
    v123(v90, v76, v268);
    v255 = v123;
    if (v10 | v259)
    {
      goto LABEL_85;
    }

    v82 = sub_10057F8EC(v44, v262, 0, 1, v124);
    if (v82 >> 62)
    {
      break;
    }

    if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_84;
    }

LABEL_70:
    if ((v82 & 0xC000000000000001) != 0)
    {
      sub_10077149C();
      goto LABEL_73;
    }

    if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

LABEL_73:

      sub_10076BEFC();
      sub_10076D3AC();

      goto LABEL_86;
    }

    __break(1u);
LABEL_130:
    ;
  }

LABEL_83:
  v76 = v82;
  v125 = sub_10077158C();
  v82 = v76;
  if (v125)
  {
    goto LABEL_70;
  }

LABEL_84:

LABEL_85:
  sub_10076D3AC();
LABEL_86:
  sub_100016E2C(v265, v257, &unk_1009467E0, qword_10078CB50);
  v126 = v247;
  sub_10076354C();
  sub_10000CD74(v271);
  v127 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_metrics;
  swift_beginAccess();
  v128 = v248;
  v129 = &v73[v127];
  v130 = v249;
  (*(v248 + 24))(v129, v126, v249);
  swift_endAccess();
  [v73 *(v70 + 1552)];
  (*(v128 + 8))(v126, v130);
  if (v44)
  {
    v131 = sub_1007601CC();
  }

  else
  {
    v131 = 0;
  }

  sub_1007601EC();
  v132 = v244;
  sub_10007AFB4(v131, v244);

  v133 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayConfiguration;
  swift_beginAccess();
  sub_100125E2C(v132, &v73[v133]);
  swift_endAccess();
  sub_10057D9D0();
  sub_100125E90(v132);
  if (v44)
  {
    v44 = sub_1007601CC();
  }

  *&v73[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_platform] = v44;

  sub_10057DBD4();

  v134 = v263;
  v135 = v250;
  v136 = v267;
  (*(v263 + 16))(v250, v266, v267);
  v137 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_screenshotsDisplayStyle;
  swift_beginAccess();
  (*(v134 + 24))(&v73[v137], v135, v136);
  swift_endAccess();
  [v73 setNeedsLayout];
  (v258)(v135, v136);
  if (v10)
  {
    v263 = v134 + 8;
    (*(v237 + 104))(v232, enum case for VideoFillMode.scaleAspectFill(_:), v238);

    sub_10076B84C();
    sub_10076BEFC();
    v138 = v257;
    sub_10076D3AC();

    (*(v235 + 56))(v138, 0, 1, v236);
    sub_10076B7EC();
    sub_10076B82C();
    sub_10076B7FC();
    sub_10076B7DC();
    sub_10076B83C();
    sub_1007647FC();
    sub_100762F0C();
    v139 = v256;
    sub_10076F5CC();
    sub_10076B7CC();
    v140 = v239;
    sub_10076B85C();
    v141 = sub_10075DB7C();
    (*(*(v141 - 8) + 56))(v140, 0, 1, v141);
    v142 = v241;
    sub_10076B81C();
    v143 = v240;
    sub_10076B80C();
    type metadata accessor for VideoView(0);
    sub_1004633B0(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v144 = v139;
    v145 = sub_100762EEC();
    sub_10000CFBC(v143, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v142, &unk_10094C030, &unk_10078D680);
    sub_10000CFBC(v140, &unk_1009435D0, &qword_100785850);
    sub_10000CFBC(v271, &qword_100943310, &unk_100784150);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v147 = Strong;
      v148 = [Strong superview];
      if (!v148)
      {
        goto LABEL_97;
      }

      v149 = v148;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v150 = v73;
      v151 = sub_100770EEC();

      v144 = v256;
      if (v151)
      {
        v152 = swift_unknownObjectWeakLoadStrong();
        if (v152)
        {
          v147 = v152;
          [v152 removeFromSuperview];
LABEL_97:
        }
      }
    }

    swift_unknownObjectWeakAssign();
    v153 = swift_unknownObjectWeakLoadStrong();
    if (v153)
    {
      v154 = v153;
      [v73 addSubview:v153];
    }

    sub_10057E5D8();
    [v73 setNeedsLayout];

    v155 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
    v156 = *&v73[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
    v157 = v266;
    v158 = v144;
    if (v156)
    {
      [v156 removeFromSuperview];
      v159 = *&v73[v155];
    }

    else
    {
      v159 = 0;
    }

    v169 = v243;
    *&v73[v155] = 0;

    [v73 setNeedsLayout];

    (*(v242 + 8))(v254, v169);
    goto LABEL_145;
  }

  if (!v262)
  {
    goto LABEL_133;
  }

  v160 = sub_10076C41C();
  if (v160 >> 62)
  {
    v199 = v160;
    v200 = sub_10077158C();
    v160 = v199;
    if (!v200)
    {
      goto LABEL_132;
    }

LABEL_105:
    v218 = 0;
    v263 = v134 + 8;
    if ((v160 & 0xC000000000000001) == 0)
    {
      v161 = v261;
      if (!*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

LABEL_108:

      v162 = v219;
      v163 = v268;
      (v255)(v219, v161, v268);
      v164 = v264;
      v165 = (*(v264 + 88))(v162, v163);
      v166 = enum case for LockupMediaLayout.DisplayType.singleItemFill(_:);
      (*(v164 + 8))(v162, v163);
      if (v165 == v166)
      {
        v167 = 1;
        v168 = v230;
      }

      else
      {
        v170 = sub_10076C40C();
        v168 = v230;
        sub_10007AFB4(v170, v230);

        v167 = 0;
      }

      v171 = v224;
      v172 = v222;
      v173 = v238;
      v174 = v237;
      v175 = v220;
      v176 = v221;
      (*(v221 + 56))(v168, v167, 1, v222);
      (*(v174 + 104))(v227, enum case for VideoFillMode.scaleAspectFill(_:), v173);
      sub_10076B84C();
      sub_10076BEFC();
      sub_10076D3AC();

      (*(v235 + 56))(v175, 0, 1, v236);
      sub_10076B7EC();
      sub_10076B82C();
      LODWORD(v257) = sub_10076B7FC();
      sub_10076B7DC();
      sub_10076B83C();
      sub_100016E2C(v168, v171, &qword_10094A428, &qword_10078D678);
      if ((*(v176 + 48))(v171, 1, v172) == 1)
      {
        sub_10000CFBC(v171, &qword_10094A428, &qword_10078D678);
      }

      else
      {
        sub_100125E90(v171);
      }

      sub_1007647FC();
      sub_100762F0C();
      sub_10076F5CC();
      v177 = v271[0];
      sub_10076B7CC();
      v178 = v239;
      sub_10076B85C();
      v179 = sub_10075DB7C();
      (*(*(v179 - 8) + 56))(v178, 0, 1, v179);
      v180 = v241;
      sub_10076B81C();
      v181 = v240;
      sub_10076B80C();
      type metadata accessor for VideoView(0);
      sub_1004633B0(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      v257 = v177;
      v182 = sub_100762EEC();
      sub_10000CFBC(v181, &unk_10094C030, &unk_10078D680);
      sub_10000CFBC(v180, &unk_10094C030, &unk_10078D680);
      sub_10000CFBC(v178, &unk_1009435D0, &qword_100785850);
      sub_10000CFBC(v271, &qword_100943310, &unk_100784150);
      v183 = swift_unknownObjectWeakLoadStrong();
      v184 = v266;
      v185 = v230;
      if (!v183)
      {
        goto LABEL_122;
      }

      v186 = v183;
      v187 = v266;
      v188 = [v183 superview];
      if (v188)
      {
        v189 = v188;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v190 = v73;
        v191 = sub_100770EEC();

        v185 = v230;
        v184 = v187;
        if ((v191 & 1) == 0)
        {
          goto LABEL_122;
        }

        v192 = swift_unknownObjectWeakLoadStrong();
        if (!v192)
        {
          goto LABEL_122;
        }

        v186 = v192;
        [v192 removeFromSuperview];
      }

LABEL_122:
      swift_unknownObjectWeakAssign();
      v193 = swift_unknownObjectWeakLoadStrong();
      if (v193)
      {
        v194 = v193;
        [v73 addSubview:v193];
      }

      sub_10057E5D8();
      [v73 setNeedsLayout];

      v195 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
      v196 = *&v73[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
      v197 = v243;
      v157 = v184;
      if (v196)
      {
        [v196 removeFromSuperview];
        v198 = *&v73[v195];
      }

      else
      {
        v198 = 0;
      }

      *&v73[v195] = 0;

      [v73 setNeedsLayout];

      (*(v242 + 8))(v229, v197);
      sub_10000CFBC(v185, &qword_10094A428, &qword_10078D678);
      v158 = v256;
      goto LABEL_145;
    }

LABEL_152:
    sub_10077149C();
    v161 = v261;
    goto LABEL_108;
  }

  if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_105;
  }

LABEL_132:

LABEL_133:
  v201 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView;
  v202 = *&v73[OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_creativeArtworkView];
  if (v202)
  {
    [v202 removeFromSuperview];
    v203 = *&v73[v201];
  }

  else
  {
    v203 = 0;
  }

  v158 = v256;
  v204 = v266;
  *&v73[v201] = 0;

  [v73 setNeedsLayout];
  v205 = swift_unknownObjectWeakLoadStrong();
  if (v205)
  {
    v206 = v205;
    sub_1004633B0(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v207 = [v206 superview];
    if (!v207)
    {
      goto LABEL_141;
    }

    v208 = v207;
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v209 = v73;
    v210 = sub_100770EEC();

    if (v210)
    {
      v211 = swift_unknownObjectWeakLoadStrong();
      if (v211)
      {
        v206 = v211;
        [v211 removeFromSuperview];
LABEL_141:
      }
    }
  }

  swift_unknownObjectWeakAssign();
  v212 = swift_unknownObjectWeakLoadStrong();
  if (v212)
  {
    v213 = v212;
    [v73 addSubview:v212];
  }

  sub_10057E5D8();
  [v73 setNeedsLayout];
  v157 = v204;
LABEL_145:
  [v73 setNeedsLayout];

  (v258)(v157, v267);
  (*(v264 + 8))(v261, v268);
  sub_10000CFBC(v265, &unk_1009467E0, qword_10078CB50);
  if (sub_10076BB0C())
  {
    v214 = sub_10076518C();

    v215 = v245;
    if (v214)
    {
      v216 = [objc_opt_self() clearColor];
      [v215 setBackgroundColor:v216];
    }
  }

  else
  {
    v214 = 0;
    v215 = v245;
  }

  [v215 setNeedsLayout];

  [v215 setNeedsLayout];
}

void sub_10045F5E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, __n128 a5)
{
  v6 = v5;
  v184 = a4;
  v10 = sub_1007673CC();
  v166 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v141[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000A5D4(&unk_100942850, &unk_100784420);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v141[-v15];
  v17 = sub_10076749C();
  v173 = *(v17 - 8);
  v174 = v17;
  __chkstk_darwin(v17);
  v172 = &v141[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_1007679DC();
  v177 = *(v19 - 8);
  *&v178 = v19;
  __chkstk_darwin(v19);
  v160 = &v141[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_10076997C();
  v169 = *(v21 - 8);
  v170 = v21;
  __chkstk_darwin(v21);
  v168 = &v141[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_10076443C();
  v181 = *(v23 - 8);
  v182 = v23;
  __chkstk_darwin(v23);
  v167 = &v141[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v180 = &v141[-v26];
  v186 = sub_10076747C();
  v179 = *(v186 - 8);
  __chkstk_darwin(v186);
  v171 = &v141[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v185 = &v141[-v29];
  v30 = sub_10000A5D4(&unk_100957F90, qword_1007A9D70);
  __chkstk_darwin(v30 - 8);
  v161 = &v141[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v32);
  v183 = &v141[-v33];
  v34 = sub_10076BF6C();
  __chkstk_darwin(v34 - 8);
  if (*(a2 + 32))
  {
    return;
  }

  v165 = &v141[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v157 = v16;
  v158 = v14;
  v159 = v13;
  v143 = v12;
  v144 = v10;
  v36 = *(a2 + 16);
  v37 = *(a2 + 24);
  v176 = v6;
  v38 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupMediaView);
  v39 = OBJC_IVAR____TtC20ProductPageExtension15LockupMediaView_imageViews;
  swift_beginAccess();
  v163 = v38;
  v40 = *(v38 + v39);
  if (v40 >> 62)
  {
    v41 = sub_10077158C();
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v175 = a1;
  v42 = v176;
  if (v41)
  {
    if (v41 < 1)
    {
      __break(1u);
      goto LABEL_62;
    }

    v43 = a3;

    v44 = 0;
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v45 = sub_10077149C();
      }

      else
      {
        v45 = *(v40 + v44 + 4);
      }

      v46 = v45;
      ++v44;
      v222[0] = v45;
      type metadata accessor for BorderedScreenshotView(0);
      sub_1004633B0(&qword_10094A410, type metadata accessor for BorderedScreenshotView, &protocol conformance descriptor for NSObject);
      v47 = v46;
      sub_10077140C();
      sub_100760BEC();
      sub_100016C74(v223);
      v48 = *&v47[OBJC_IVAR____TtC20ProductPageExtension22BorderedScreenshotView_artworkView];
      v224.value.super.isa = 0;
      v224.is_nil = 0;
      sub_10075FCEC(v224, v49);
    }

    while (v41 != v44);

    a3 = v43;
    v42 = v176;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v51 = Strong;
    [*(Strong + qword_1009602D0) setImage:0];
    v222[0] = v51;
    type metadata accessor for VideoView(0);
    sub_1004633B0(&qword_100957FA0, type metadata accessor for VideoView, &protocol conformance descriptor for NSObject);
    v52 = v51;
    sub_10077140C();
    sub_100760BEC();
    v42 = v176;

    sub_100016C74(v223);
  }

  v6 = *(v42 + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView);
  v14 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v53 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v225.value.super.isa = 0;
  v225.is_nil = 0;
  sub_10075FCEC(v225, v54);

  v55 = *(v6 + v14);
  sub_10075FD2C();
  sub_1004633B0(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v56 = v55;
  v162 = a3;
  sub_100760BFC();

  if (sub_10076BB5C())
  {
    v57 = qword_10093FBE0;
    v40 = *(v6 + v14);
    if (v57 == -1)
    {
LABEL_16:
      v58 = sub_100763ADC();
      sub_10000A61C(v58, qword_10099DDA0);
      sub_1007639AC();
      [v40 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v40 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        sub_100770D5C();
      }

      sub_10075FB8C();
      v59 = *(v6 + v14);
      sub_100760B8C();

      goto LABEL_19;
    }

LABEL_62:
    swift_once();
    goto LABEL_16;
  }

LABEL_19:
  v60 = sub_10076BB6C();
  v148 = v61;
  v149 = v60;
  v62 = sub_10076BBEC();
  v64 = v63;
  v65 = sub_10076BB0C();
  v151 = v62;
  if (v65)
  {
    v66 = sub_10076518C();

    v67 = v184;
    v68 = v185;
    v70 = v177;
    v69 = v178;
    v71 = v167;
    if (v66)
    {
      v72 = sub_10076C3EC();
      v152 = v73;
      v153 = v72;
    }

    else
    {
      v152 = 0;
      v153 = 0;
    }
  }

  else
  {
    v152 = 0;
    v153 = 0;
    v67 = v184;
    v68 = v185;
    v70 = v177;
    v69 = v178;
    v71 = v167;
  }

  v176 = sub_10076282C();
  v167 = sub_10076284C();
  v74 = sub_10076286C();
  (*(v70 + 56))(v183, 1, 1, v69);
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v75 = v186;
  v76 = sub_10000A61C(v186, qword_1009A0690);
  v77 = v179 + 16;
  v78 = *(v179 + 16);
  v78(v68, v76, v75);
  v79 = sub_10077071C();
  v155 = v78;
  v156 = v77;
  v142 = v74;
  v150 = v64;
  if ((v79 & 1) == 0)
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v80 = qword_100944CA0;
    goto LABEL_32;
  }

  if (qword_10093F520 != -1)
  {
    goto LABEL_67;
  }

  while (1)
  {
    v80 = qword_100944C88;
LABEL_32:
    v81 = v182;
    v82 = sub_10000A61C(v182, v80);
    v83 = v181;
    (*(v181 + 16))(v71, v82, v81);
    (*(v83 + 32))(v180, v71, v81);
    v84 = [v67 preferredContentSizeCategory];
    sub_10077084C();

    sub_1007643EC();
    sub_10076441C();
    sub_10076746C();
    sub_10076745C();
    v154 = sub_10076DDDC();
    swift_allocObject();
    v165 = sub_10076DDBC();
    v85 = objc_opt_self();
    v146 = v85;
    v86 = [v85 preferredFontForTextStyle:UIFontTextStyleBody];
    v87 = sub_10076C04C();
    v223[3] = v87;
    v164 = sub_1004633B0(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v223[4] = v164;
    v88 = sub_10000DB7C(v223);
    v89 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v147 = *(*(v87 - 8) + 104);
    v145 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v147(v88, enum case for Feature.measurement_with_labelplaceholder(_:), v87);
    sub_10076C90C();
    sub_10000CD74(v223);
    v90 = v168;
    sub_10076996C();
    sub_10076994C();
    v91 = v170;
    v169 = *(v169 + 8);
    (v169)(v90, v170);
    v92 = [v85 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v222[3] = v87;
    v222[4] = v164;
    v93 = sub_10000DB7C(v222);
    v94 = v89;
    v95 = v147;
    v147(v93, v94, v87);
    sub_10076C90C();
    sub_10000CD74(v222);
    sub_10076996C();
    sub_10076994C();
    v96 = v169;
    (v169)(v90, v91);
    v97 = [v146 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v221[3] = v87;
    v221[4] = v164;
    v98 = sub_10000DB7C(v221);
    v95(v98, v145, v87);
    sub_10076C90C();
    sub_10000CD74(v221);
    sub_10076996C();
    sub_10076994C();
    v96(v90, v91);
    v99 = v176;
    LODWORD(v170) = sub_10001D420() & (v99 != 0);
    if (v170 == 1)
    {
      v100 = objc_allocWithZone(sub_10076DEDC());
      v101 = v184;
      v102 = sub_10076DECC();
      v103 = v161;
      sub_100016E2C(v183, v161, &unk_100957F90, qword_1007A9D70);
      v105 = v177;
      v104 = v178;
      v106 = *(v177 + 48);
      if (v106(v103, 1, v178) == 1)
      {
        v107 = v160;
        _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
        v108 = v106(v103, 1, v104);
        v109 = v167;
        if (v108 != 1)
        {
          sub_10000CFBC(v103, &unk_100957F90, qword_1007A9D70);
        }
      }

      else
      {
        v107 = v160;
        (*(v105 + 32))(v160, v103, v104);
        v109 = v167;
      }

      v112 = v102;
      sub_10001A588(v176, v107, v112, v36, v37);

      (*(v105 + 8))(v107, v104);
      v110 = v154;
      swift_allocObject();
      v111 = sub_10076DDAC();
    }

    else
    {
      v110 = v154;
      swift_allocObject();
      v111 = sub_10076DDBC();
      v109 = v167;
    }

    if ((sub_10001D420() & (v109 != 0)) == 1)
    {
      v113.n128_f64[0] = v36;
      v114 = v184;
      sub_1004EF9EC(v109, v142 & 1, v113, v37);
      swift_allocObject();
      v115 = sub_10076DDAC();
    }

    else
    {
      swift_allocObject();
      v115 = sub_10076DDBC();
      v114 = v184;
    }

    v155(v171, v185, v186);
    v220 = &protocol witness table for LayoutViewPlaceholder;
    v219 = v110;
    v218 = v165;
    v217 = 0;
    *&v215[40] = 0u;
    v216 = 0u;
    sub_10000A570(v223, v215);
    sub_10000A570(v222, &v214);
    v213 = 0;
    v211 = 0u;
    v212 = 0u;
    v210 = 0;
    v208 = 0u;
    v209 = 0u;

    v116 = sub_10076DDCC();
    v207 = &protocol witness table for LayoutViewPlaceholder;
    v206 = v110;
    v205 = v116;
    v204 = 0;
    v202 = 0u;
    v203 = 0u;
    v201 = 0;
    v199 = 0u;
    v200 = 0u;
    v198 = 0;
    v196 = 0u;
    v197 = 0u;
    v195 = 0;
    v194 = 0u;
    *&v193[40] = 0u;
    sub_10000A570(v221, v193);
    v191 = v110;
    v192 = &protocol witness table for LayoutViewPlaceholder;
    v189 = &protocol witness table for LayoutViewPlaceholder;
    v190 = v111;
    v188 = v110;
    v187 = v115;
    v117 = v172;
    sub_10076748C();
    sub_10076DEDC();
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v118 = swift_allocObject();
    v178 = xmmword_1007841E0;
    *(v118 + 16) = xmmword_1007841E0;
    *(v118 + 32) = v114;
    v119 = v114;
    v120 = sub_10076DEEC();
    sub_1004633B0(&unk_100958A50, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v121 = v174;
    sub_10076D2AC();
    v123 = v122;

    (*(v173 + 8))(v117, v121);
    sub_10000CD74(v221);
    sub_10000CD74(v222);
    sub_10000CD74(v223);
    (*(v181 + 8))(v180, v182);
    (*(v179 + 8))(v185, v186);
    sub_10000CFBC(v183, &unk_100957F90, qword_1007A9D70);
    v124 = v157;
    sub_10076ABBC();
    v125 = swift_allocObject();
    *(v125 + 16) = v178;
    *(v125 + 32) = v119;
    v126 = v119;
    v127 = sub_10076DEEC();
    sub_100071820(&qword_100942880, &unk_100942850, &unk_100784420, &protocol conformance descriptor for <> Conditional<A, B>);
    v128 = v159;
    sub_10076D3EC();
    v130 = v129;

    (*(v158 + 8))(v124, v128);
    v131 = sub_10076283C();
    v71 = sub_10076281C();
    v132 = sub_10076280C();
    if (v132 >> 62)
    {
      v134 = v132;
      v135 = sub_10077158C();
      v132 = v134;
      v67 = v162;
      if (!v135)
      {
LABEL_50:

        v133 = 0;
        goto LABEL_51;
      }
    }

    else
    {
      v67 = v162;
      if (!*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }
    }

    if ((v132 & 0xC000000000000001) != 0)
    {
      v133 = sub_10077149C();
    }

    else
    {
      if (!*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_66;
      }

      v133 = *(v132 + 32);
    }

LABEL_51:
    v136 = sub_10076288C();
    if (!(v136 >> 62))
    {
      if (!*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_53;
    }

    v138 = v136;
    v139 = sub_10077158C();
    v136 = v138;
    if (!v139)
    {
      break;
    }

LABEL_53:
    if ((v136 & 0xC000000000000001) != 0)
    {
      v137 = sub_10077149C();
      goto LABEL_56;
    }

    if (*((v136 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v137 = *(v136 + 32);

LABEL_56:

      goto LABEL_59;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    swift_once();
  }

  v137 = 0;
LABEL_59:
  v140 = v143;
  sub_10076285C();
  sub_100140784(v131, v71, v133, v137, v126, v67, v140, v36, v37 - v123 - v130);

  (*(v166 + 8))(v140, v144);
}

uint64_t sub_100460BD4@<X0>(uint64_t a2@<X8>)
{
  if (sub_1007706EC())
  {
    v3 = sub_10076D39C();
    v4 = *(*(v3 - 8) + 56);
    v5 = v3;
    v6 = a2;
    v7 = 1;
    goto LABEL_19;
  }

  v8 = sub_10076FF9C();
  v10 = v9;
  if (v8 == sub_10076FF9C() && v10 == v11)
  {

    goto LABEL_15;
  }

  v13 = sub_10077167C();

  if (v13)
  {
LABEL_15:
    if (qword_100940570 != -1)
    {
      swift_once();
    }

    v21 = sub_10076D39C();
    v22 = v21;
    v23 = qword_10099FAB8;
    goto LABEL_18;
  }

  v14 = sub_10076FF9C();
  v16 = v15;
  if (v14 == sub_10076FF9C() && v16 == v17)
  {
  }

  else
  {
    v19 = sub_10077167C();

    if ((v19 & 1) == 0)
    {
      sub_10076D37C();
      v20 = sub_10076D39C();
      v4 = *(*(v20 - 8) + 56);
      v5 = v20;
      v6 = a2;
      v7 = 0;
      goto LABEL_19;
    }
  }

  if (qword_100940578 != -1)
  {
    swift_once();
  }

  v21 = sub_10076D39C();
  v22 = v21;
  v23 = qword_10099FAD0;
LABEL_18:
  v24 = sub_10000A61C(v21, v23);
  v26 = *(v22 - 8);
  (*(v26 + 16))(a2, v24, v22);
  v4 = *(v26 + 56);
  v6 = a2;
  v7 = 0;
  v5 = v22;
LABEL_19:

  return v4(v6, v7, 1, v5);
}

id sub_100460E78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v4 = a1;
    v5 = a2;
    v6 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor:v6];

    a1 = v4;
    a2 = v5;
  }

  v7 = sub_100387B00(a1, a2);

  return [v3 setNeedsLayout];
}

id sub_100460F48(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView];
  if (a1)
  {
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 clearColor];
    [v7 setBackgroundColor:v8];
  }

  else
  {
    v9 = v5;
  }

  [v5 setNeedsLayout];

  return [v2 setNeedsLayout];
}

uint64_t sub_100461038(uint64_t a1, uint64_t (*a2)(char *, void, uint64_t, __n128), uint64_t a3, void *a4, char *a5, int a6)
{
  v7 = v6;
  v79 = a5;
  v72 = a4;
  v70 = a3;
  v71 = a2;
  v10 = sub_10076F08C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v77 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_10076F0CC();
  v76 = *(v78 - 8);
  __chkstk_darwin(v78);
  v75 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = COERCE_DOUBLE(sub_10076F07C());
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = (&v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_10076F0EC();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v63 - v21;
  sub_10000A570(a1, aBlock);
  sub_10000A5D4(&unk_1009520F0, &qword_100799AA0);
  sub_10076289C();
  result = swift_dynamicCast();
  if (result)
  {
    v69 = v10;
    v24 = OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView;
    v25 = *(*&v7[OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView] + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_lockupView);
    v66 = a6;
    v26 = v81[0];
    v64 = *(v25 + OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_regularWidthColumnSpacing);
    [v7 layoutMargins];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [v7 setUserInteractionEnabled:0];
    v35 = *&v7[v24];
    v68 = v11;
    [v35 frame];
    v40 = [objc_allocWithZone(type metadata accessor for AdvertsSearchResultContentView()) initWithFrame:{v36, v37, v38, v39}];
    v67 = v26;
    v41 = v64;
    v64 = *&v14;
    v42 = v71;
    v65 = v22;
    sub_10045D1F0(v26, v71, v70, v79, v41, v28, v30, v32, v34);
    [v40 layoutIfNeeded];
    [*&v7[v24] frame];
    v81[0] = v43.n128_u64[0];
    v81[1] = v44;
    v81[2] = v45;
    v81[3] = v46;
    v82 = 0;
    sub_10045F5E0(v26, v81, v72, v42, v43);
    v47 = (*&v7[v24] + OBJC_IVAR____TtC20ProductPageExtension30AdvertsSearchResultContentView_disableAdvertRotation);
    swift_beginAccess();
    v49 = *v47;
    v48 = v47[1];
    sub_10001CE50(*v47, v48);
    sub_10053D600(v49, v48);
    sub_1000167E0(v49, v48);
    sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
    v72 = sub_10077068C();
    sub_10076F0DC();
    v50 = 333;
    if ((v66 & 1) == 0)
    {
      v50 = 0;
    }

    *v17 = v50;
    v51 = v64;
    (*(v15 + 104))(v17, enum case for DispatchTimeInterval.milliseconds(_:), COERCE_DOUBLE(*&v64));
    sub_10076F14C();
    (*(v15 + 8))(v17, COERCE_DOUBLE(*&v51));
    v52 = *(v73 + 8);
    v53 = v74;
    v52(v19, v74);
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    v55[2] = v54;
    v55[3] = v40;
    v55[4] = v79;
    aBlock[4] = sub_100463338;
    aBlock[5] = v55;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009AEDC;
    aBlock[3] = &unk_100895D60;
    v56 = _Block_copy(aBlock);
    v57 = v40;

    v58 = v75;
    sub_10076F0AC();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1004633B0(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
    sub_100071820(&qword_100945170, &unk_10094E1C0, &qword_100785D50, &protocol conformance descriptor for [A]);
    v59 = v77;
    v60 = v69;
    sub_1007712CC();
    v61 = v65;
    v62 = v72;
    sub_10077064C();
    _Block_release(v56);

    (*(v68 + 8))(v59, v60);
    (*(v76 + 8))(v58, v78);
    return (v52)(v61, v53);
  }

  return result;
}

void sub_1004617EC(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = objc_opt_self();
    v8 = *&v6[OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView];
    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = v6;
    v9[4] = a2;
    aBlock[4] = sub_1004633A4;
    aBlock[5] = v9;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000513F0;
    aBlock[3] = &unk_100895DB0;
    v10 = _Block_copy(aBlock);
    v11 = v8;

    v12 = v6;
    v13 = a2;

    [v7 transitionFromView:v11 toView:v13 duration:5242880 options:v10 completion:0.666];
    _Block_release(v10);
  }
}

void sub_10046195C(uint64_t a1, uint64_t a2, char *a3, char *a4)
{
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v6 = OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView;
  v7 = *&a3[OBJC_IVAR____TtC20ProductPageExtension36AdvertSearchResultCollectionViewCell_advertsContentView];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1004633B0(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
  }

  sub_1004633B0(&unk_10095A480, type metadata accessor for AdvertsSearchResultContentView, &unk_1007AA5D0);
  v9 = v7;
  sub_100767CFC();

  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    sub_1004633B0(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
  }

  sub_100767D3C();

  v11 = *&a3[v6];
  *&a3[v6] = a4;
  v12 = a4;

  [a3 setUserInteractionEnabled:1];
}

uint64_t sub_100461BC4(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11)
{
  v21 = type metadata accessor for AdvertsSearchResultContentView();

  return sub_100461C6C(a1, a2, a3, a4, a5, a6, a7, a8, a9, v21, a11);
}

uint64_t sub_100461C6C(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9, uint64_t a10, uint64_t a11)
{
  v150 = a11;
  v151 = a3;
  v183 = a2;
  v12 = sub_10000A5D4(&qword_10094E260, qword_100796150);
  __chkstk_darwin(v12 - 8);
  v146 = &v145 - v13;
  v148 = sub_10076350C();
  v155 = *(v148 - 8);
  __chkstk_darwin(v148);
  v15 = &v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v145 - v17;
  __chkstk_darwin(v19);
  v149 = &v145 - v20;
  v21 = sub_10000A5D4(&unk_1009467E0, qword_10078CB50);
  __chkstk_darwin(v21 - 8);
  v156 = &v145 - v22;
  v23 = sub_10077164C();
  v153 = *(v23 - 8);
  v154 = v23;
  __chkstk_darwin(v23);
  v152 = &v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1007673CC();
  v179 = *(v25 - 8);
  v180 = v25;
  __chkstk_darwin(v25);
  v27 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10076749C();
  v177 = *(v28 - 8);
  v178 = v28;
  __chkstk_darwin(v28);
  v176 = &v145 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10076997C();
  v173 = *(v30 - 8);
  v174 = v30;
  __chkstk_darwin(v30);
  v172 = &v145 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10076443C();
  v188 = *(v32 - 8);
  __chkstk_darwin(v32);
  v34 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v186 = &v145 - v36;
  v189 = sub_10076747C();
  v187 = *(v189 - 1);
  __chkstk_darwin(v189);
  v175 = &v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v40 = &v145 - v39;
  sub_100770ACC();
  v42 = v41;
  v44 = v43;
  v45 = sub_10076BB6C();
  v162 = v46;
  v163 = v45;
  v47 = sub_10076BBEC();
  v164 = v48;
  v165 = v47;
  if (sub_10076BB0C() && (v49 = sub_10076518C(), , v49))
  {
    v50 = sub_10076C3EC();
    v169 = v51;
    v170 = v50;
  }

  else
  {
    v169 = 0;
    v170 = 0;
  }

  sub_10076286C();
  v52 = [v183 traitCollection];
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v53 = v189;
  v54 = sub_10000A61C(v189, qword_1009A0690);
  v166 = *(v187 + 16);
  v167 = v187 + 16;
  v166(v40, v54, v53);
  v55 = sub_10077071C();
  v181 = v27;
  v182 = a1;
  v147 = v18;
  v145 = v15;
  if (v55)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v56 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v56 = qword_100944CA0;
  }

  v57 = sub_10000A61C(v32, v56);
  v58 = v188;
  (*(v188 + 16))(v34, v57, v32);
  (*(v58 + 32))();
  v59 = [v52 preferredContentSizeCategory];
  sub_10077084C();
  v171 = v52;

  sub_1007643EC();
  sub_10076441C();
  v185 = v40;
  sub_10076746C();
  sub_10076745C();
  v60 = sub_10076DDDC();
  swift_allocObject();
  v161 = sub_10076DDBC();
  v61 = objc_opt_self();
  v159 = v61;
  v62 = [v61 preferredFontForTextStyle:UIFontTextStyleBody];
  v63 = sub_10076C04C();
  v226[3] = v63;
  v184 = sub_1004633B0(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v226[4] = v184;
  v64 = sub_10000DB7C(v226);
  v65 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v66 = *(v63 - 8);
  v168 = v32;
  v160 = *(v66 + 104);
  v67 = v66 + 104;
  v157 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v160(v64, enum case for Feature.measurement_with_labelplaceholder(_:), v63);
  v158 = v67;
  sub_10076C90C();
  sub_10000CD74(v226);
  v68 = v172;
  sub_10076996C();
  sub_10076994C();
  v69 = v174;
  v173 = *(v173 + 8);
  (v173)(v68, v174);
  v70 = [v61 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v225[3] = v63;
  v225[4] = v184;
  v71 = sub_10000DB7C(v225);
  v72 = v65;
  v73 = v160;
  v160(v71, v72, v63);
  sub_10076C90C();
  sub_10000CD74(v225);
  sub_10076996C();
  sub_10076994C();
  v74 = v173;
  (v173)(v68, v69);
  v75 = [v159 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v224[3] = v63;
  v224[4] = v184;
  v76 = sub_10000DB7C(v224);
  v73(v76, v157, v63);
  sub_10076C90C();
  sub_10000CD74(v224);
  sub_10076996C();
  sub_10076994C();
  v74(v68, v69);
  sub_10001D420();
  swift_allocObject();
  v77 = sub_10076DDBC();

  sub_10001D420();
  swift_allocObject();
  v78 = sub_10076DDBC();
  v166(v175, v185, v189);
  v223 = &protocol witness table for LayoutViewPlaceholder;
  v222 = v60;
  v79 = v161;
  v221 = v161;
  v220 = 0;
  *&v218[40] = 0u;
  v219 = 0u;
  sub_10000A570(v226, v218);
  sub_10000A570(v225, &v217);
  v216 = 0;
  v214 = 0u;
  v215 = 0u;
  v213 = 0;
  v211 = 0u;
  v212 = 0u;

  v80 = sub_10076DDCC();
  v210 = &protocol witness table for LayoutViewPlaceholder;
  v209 = v60;
  v208 = v80;
  v207 = 0;
  v205 = 0u;
  v206 = 0u;
  v204 = 0;
  v202 = 0u;
  v203 = 0u;
  v201 = 0;
  v199 = 0u;
  v200 = 0u;
  v198 = 0;
  v197 = 0u;
  *&v196[40] = 0u;
  sub_10000A570(v224, v196);
  v194 = v60;
  v195 = &protocol witness table for LayoutViewPlaceholder;
  v192 = &protocol witness table for LayoutViewPlaceholder;
  v193 = v77;
  v191 = v60;
  v190 = v78;
  v81 = v176;
  sub_10076748C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1007841E0;
  v83 = v171;
  *(v82 + 32) = v171;
  v84 = v83;
  v85 = sub_10076DEEC();
  sub_1004633B0(&unk_100958A50, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v86 = v178;
  sub_10076D2AC();

  (*(v177 + 8))(v81, v86);
  sub_10000CD74(v224);
  sub_10000CD74(v225);
  sub_10000CD74(v226);
  (*(v188 + 8))(v186, v168);
  (*(v187 + 8))(v185, v189);
  v88 = v181;
  v87 = v182;
  sub_10076285C();
  v89 = sub_1007673BC();
  if ((v89 & 1) == 0 || (sub_10067B804(v89) & 1) == 0)
  {
    return (*(v179 + 8))(v88, v180);
  }

  if (qword_1009411F8 != -1)
  {
    swift_once();
  }

  v90 = sub_10076D9AC();
  sub_10000A61C(v90, qword_1009A2368);
  v91 = v152;
  sub_10076D17C();
  v92 = v183;
  sub_10076D40C();
  (*(v153 + 8))(v91, v154);
  v93 = sub_10076283C();
  v94 = sub_10076281C();
  v95 = sub_10076280C();
  if (v95 >> 62)
  {
    v97 = v95;
    v98 = sub_10077158C();
    v95 = v97;
    if (v98)
    {
      goto LABEL_20;
    }

LABEL_26:

    v79 = 0;
    goto LABEL_27;
  }

  if (!*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_26;
  }

LABEL_20:
  if ((v95 & 0xC000000000000001) != 0)
  {
    v79 = sub_10077149C();
  }

  else
  {
    if (!*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_61;
    }

    v79 = *(v95 + 32);
  }

LABEL_27:
  v99 = sub_10076288C();
  if (v99 >> 62)
  {
    v101 = v99;
    v102 = sub_10077158C();
    v99 = v101;
    if (v102)
    {
      goto LABEL_29;
    }

LABEL_34:

    v189 = 0;
    goto LABEL_35;
  }

  if (!*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_29:
  if ((v99 & 0xC000000000000001) != 0)
  {
    v100 = sub_10077149C();
  }

  else
  {
    if (!*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_63;
    }
  }

  v189 = v100;

LABEL_35:
  v103 = [v92 traitCollection];
  sub_100460BD4(v156);

  v77 = sub_10076283C();
  v78 = sub_10076281C();
  v104 = sub_10076280C();
  if (v104 >> 62)
  {
    v105 = v104;
    v106 = sub_10077158C();
    v104 = v105;
    if (v106)
    {
LABEL_37:
      if ((v104 & 0xC000000000000001) == 0)
      {
        if (!*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_65;
        }

        v87 = *(v104 + 32);

        goto LABEL_40;
      }

LABEL_61:
      v87 = sub_10077149C();
LABEL_40:

      goto LABEL_43;
    }
  }

  else if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

  v87 = 0;
LABEL_43:
  v107 = sub_10076288C();
  if (v107 >> 62)
  {
    v110 = v107;
    v111 = sub_10077158C();
    v107 = v110;
    v188 = v79;
    if (v111)
    {
LABEL_45:
      if ((v107 & 0xC000000000000001) == 0)
      {
        if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v109 = *(v107 + 32);

LABEL_48:

          goto LABEL_51;
        }

LABEL_65:
        __break(1u);
LABEL_66:
        v185 = sub_10077158C();
        if (v87)
        {
          goto LABEL_55;
        }

        goto LABEL_67;
      }

LABEL_63:
      v109 = sub_10077149C();
      goto LABEL_48;
    }
  }

  else
  {
    v108 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v188 = v79;
    if (v108)
    {
      goto LABEL_45;
    }
  }

  v109 = 0;
LABEL_51:
  v112 = sub_1007673BC();
  v187 = v94;
  if ((v112 & 1) == 0)
  {

    v116 = v155;
    v118 = v148;
    v117 = v149;
    (*(v155 + 104))(v149, enum case for LockupMediaLayout.DisplayType.none(_:), v148);
LABEL_88:
    v141 = v189;
    type metadata accessor for LockupMediaView(0);
    v142 = v156;
    v143 = v92;
    v144 = v181;
    sub_100141F14(v93, v187, v188, v141, v156, v117, v143, v181, v42, v44);

    (*(v116 + 8))(v117, v118);
    sub_10000CFBC(v142, &unk_1009467E0, qword_10078CB50);
    return (*(v179 + 8))(v144, v180);
  }

  if (v78 | v77)
  {
    v119 = v147;
    sub_10076D3AC();

    v116 = v155;
    v118 = v148;
    (*(v155 + 104))(v119, enum case for LockupMediaLayout.DisplayType.singleItemFill(_:), v148);
    v117 = v149;
    (*(v116 + 32))(v149, v119, v118);
    goto LABEL_88;
  }

  v114 = sub_10057F8EC(v87, v109, 0, 1, v113);
  v78 = v114;
  v94 = v114 >> 62;
  if (v114 >> 62)
  {
    goto LABEL_66;
  }

  v185 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v87)
  {
LABEL_55:
    v115 = sub_1007601CC();
    goto LABEL_68;
  }

LABEL_67:
  v115 = 0;
LABEL_68:
  LODWORD(v182) = sub_10057FC34(v115);

  v186 = v93;
  if (v87)
  {
    v120 = sub_1007601CC();
  }

  else
  {
    v120 = 0;
  }

  v121 = v179;
  v122 = v146;
  v123 = v88;
  v124 = v180;
  (*(v179 + 16))(v146, v123, v180);
  v125.n128_f64[0] = (*(v121 + 56))(v122, 0, 1, v124);
  v126 = sub_10058015C(v120, v122, v125);

  sub_10000CFBC(v122, &qword_10094E260, qword_100796150);
  if (!v94)
  {
    result = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v93 = v186;
    if (result)
    {
      goto LABEL_73;
    }

LABEL_79:

    goto LABEL_80;
  }

  result = sub_10077158C();
  v93 = v186;
  if (!result)
  {
    goto LABEL_79;
  }

LABEL_73:
  if ((v78 & 0xC000000000000001) != 0)
  {
    sub_10077149C();
LABEL_76:

    v127 = sub_10076BDCC();

    if (v127)
    {

      v116 = v155;
      v128 = v147;
      v118 = v148;
      (*(v155 + 104))(v147, enum case for LockupMediaLayout.DisplayType.landscape(_:), v148);
      v117 = v149;
LABEL_87:
      (*(v116 + 32))(v117, v128, v118);
      goto LABEL_88;
    }

LABEL_80:
    v129 = enum case for LockupMediaLayout.DisplayType.fourUp(_:);
    v130 = v155;
    v131 = v145;
    v132 = v148;
    v184 = *(v155 + 104);
    v184(v145, enum case for LockupMediaLayout.DisplayType.fourUp(_:), v148);
    v133 = sub_1007634FC();
    v178 = *(v130 + 8);
    v178(v131, v132);
    if (((v185 >= v133) & v126) != 0 || (v129 = enum case for LockupMediaLayout.DisplayType.threeUp(_:), v184(v131, enum case for LockupMediaLayout.DisplayType.threeUp(_:), v132), v134 = sub_1007634FC(), v135 = v178, v178(v131, v132), ((v185 >= v134) & v182) != 0) || (v129 = enum case for LockupMediaLayout.DisplayType.twoUp(_:), v184(v131, enum case for LockupMediaLayout.DisplayType.twoUp(_:), v132), v136 = sub_1007634FC(), v135(v131, v132), v185 >= v136))
    {

      v128 = v147;
      v184(v147, v129, v132);
      v92 = v183;
      v118 = v132;
    }

    else
    {
      v137 = enum case for LockupMediaLayout.DisplayType.oneUp(_:);
      v184(v131, enum case for LockupMediaLayout.DisplayType.oneUp(_:), v132);
      v138 = sub_1007634FC();

      v135(v131, v132);
      v118 = v132;
      if (v185 == v138)
      {
        v128 = v147;
        v139 = v147;
        v140 = v137;
      }

      else
      {
        v140 = enum case for LockupMediaLayout.DisplayType.none(_:);
        v128 = v147;
        v139 = v147;
      }

      v184(v139, v140, v132);
      v92 = v183;
    }

    v116 = v155;
    v117 = v149;
    v93 = v186;
    goto LABEL_87;
  }

  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_76;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004632B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004632F0()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_100463344(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10046335C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004633B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_100463400(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  sub_10075DB6C();
  v14 = sub_10075DB7C();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = objc_allocWithZone(LPLinkView);
    sub_10075DB1C(v18);
    v20 = v19;
    v21 = [v17 initWithURL:v19];

    (*(v15 + 8))(v13, v14);
    *&v5[OBJC_IVAR____TtC20ProductPageExtension20PresentationLinkView_linkView] = v21;
    v28.receiver = v5;
    v28.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v26 = v22;
    [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    v27 = OBJC_IVAR____TtC20ProductPageExtension20PresentationLinkView_linkView;
    [*&v26[OBJC_IVAR____TtC20ProductPageExtension20PresentationLinkView_linkView] _setApplyCornerRadius:1];
    [*&v26[v27] _setDisableAnimations:1];
    [*&v26[v27] _setDisableTapGesture:1];
    [*&v26[v27] _setForceFlexibleWidth:1];
    [v26 addSubview:*&v26[v27]];

    return v26;
  }

  return result;
}

unint64_t sub_100463810()
{
  result = qword_100957FD8;
  if (!qword_100957FD8)
  {
    sub_10076027C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100957FD8);
  }

  return result;
}

void sub_100463868(uint64_t a1, uint64_t a2)
{
  v90 = sub_10075F65C();
  v88 = *(v90 - 8);
  __chkstk_darwin(v90);
  v91 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100765F6C();
  v85 = *(v86 - 8);
  __chkstk_darwin(v86);
  v89 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_100766EDC();
  v81 = *(v82 - 8);
  __chkstk_darwin(v82);
  v87 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076F4FC();
  __chkstk_darwin(v7 - 8);
  v84 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v9 - 8);
  v83 = &v77 - v10;
  v11 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v11 - 8);
  v80 = &v77 - v12;
  v78 = sub_10076C15C();
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100762DBC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076023C();
  v18 = sub_100762DAC();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    sub_10076B8EC();
    v20 = v19;
    sub_10076025C();
    v22 = v21;
    if (v20)
    {
      v23 = sub_10076FF6C();

      if (!v22)
      {
        goto LABEL_8;
      }

LABEL_6:
      v25 = sub_10076FF6C();

      goto LABEL_9;
    }

    v23 = 0;
    if (v21)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_10076025C();
    v23 = 0;
    if (v24)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v25 = 0;
LABEL_9:
  v26 = [objc_opt_self() alertControllerWithTitle:v23 message:v25 preferredStyle:0];

  v95 = v26;
  [v26 setModalPresentationStyle:7];
  v27 = sub_10076024C();
  v28 = v27;
  if (v27 >> 62)
  {
LABEL_46:
    v29 = sub_10077158C();
    if (v29)
    {
      goto LABEL_11;
    }

LABEL_47:

    if (sub_10076022C())
    {
      sub_10076020C();
      if (!v70)
      {
        v109._countAndFlagsBits = 0x432E6E6F69746341;
        v109._object = 0xED00006C65636E61;
        v110._countAndFlagsBits = 0;
        v110._object = 0xE000000000000000;
        sub_1007622EC(v109, v110);
      }

      v71 = sub_10076FF6C();

      v72 = [objc_opt_self() actionWithTitle:v71 style:1 handler:0];

      v73 = v95;
      [v95 addAction:v72];
      [v73 setPreferredAction:v72];
    }

    v107 = 0;
    aBlock = 0u;
    v106 = 0u;
    (*(v77 + 104))(v79, enum case for FlowPage.viewController(_:), v78);
    v74 = sub_10075DB7C();
    (*(*(v74 - 8) + 56))(v80, 1, 1, v74);
    v75 = sub_10076096C();
    (*(*(v75 - 8) + 56))(v83, 1, 1, v75);
    v104 = sub_100464654();
    v103 = v95;
    v102 = v95;
    sub_10076F4DC();
    (*(v81 + 104))(v87, enum case for FlowPresentationContext.infer(_:), v82);
    (*(v85 + 104))(v89, enum case for FlowAnimationBehavior.infer(_:), v86);
    (*(v88 + 104))(v91, enum case for FlowOrigin.inapp(_:), v90);
    sub_10076FA2C();
    sub_10075F63C();
    swift_allocObject();
    v76 = sub_10075F5EC();
    sub_100563FF8(v76, 1, a2);

    return;
  }

  v29 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v29)
  {
    goto LABEL_47;
  }

LABEL_11:
  v30 = 0;
  v97 = v28 & 0xFFFFFFFFFFFFFF8;
  v98 = v28 & 0xC000000000000001;
  v96 = &v106;
  v92 = "v16@?0@UIAlertAction8";
  v94 = v28;
  v93 = v29;
  while (1)
  {
    if (v98)
    {
      v31 = sub_10077149C();
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v30 >= *(v97 + 16))
      {
        goto LABEL_45;
      }

      v31 = *(v28 + 8 * v30 + 32);

      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }

    v33 = v30 != sub_1007601FC();
    v35 = ((v34 | v33) & 1) == 0;
    v36 = 2;
    if (!v35)
    {
      v36 = 0;
    }

    v100 = v36;
    v37 = swift_allocObject();
    *(v37 + 16) = v31;
    *(v37 + 24) = a2;

    v38 = sub_10076026C();
    v101 = v32;
    v102 = v31;
    if ((v38 & 1) == 0)
    {
      sub_10076B8EC();
      if (v47)
      {

        v48 = sub_10076FF6C();
      }

      else
      {

        v48 = 0;
      }

      v107 = sub_10046460C;
      v108 = v37;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v106 = sub_1006C1A98;
      *(&v106 + 1) = &unk_100895E20;
      v54 = _Block_copy(&aBlock);

      v55 = [objc_opt_self() actionWithTitle:v48 style:v100 handler:v54];
      goto LABEL_40;
    }

    v39 = sub_10076021C();
    if ((v40 & 1) == 0 && v30 == v39)
    {
      v41 = objc_opt_self();
      v42 = sub_10076FF6C();
      v43 = [v41 kitImageNamed:v42];

      if (!v43)
      {
        goto LABEL_53;
      }

      v44 = [v43 imageWithRenderingMode:2];

      v45 = [v44 _imageThatSuppressesAccessibilityHairlineThickening];
      goto LABEL_23;
    }

    v49 = sub_10076B8FC();
    if (!v49)
    {
      goto LABEL_35;
    }

    v50 = v49;
    if ((sub_10076BDFC() & 1) == 0)
    {
      if (sub_10076BE0C())
      {
        v45 = sub_10076044C();

LABEL_23:
        v99 = v45;
        v46 = v45;
        goto LABEL_38;
      }

LABEL_35:
      v99 = 0;
      goto LABEL_38;
    }

    v51 = sub_1005A6008(v50, 0);
    if (v51)
    {
      v52 = v51;
      v53 = [v51 imageWithRenderingMode:2];

      v99 = [v53 _imageThatSuppressesAccessibilityHairlineThickening];
    }

    else
    {

      v99 = 0;
    }

    v56 = v99;
LABEL_38:
    v57 = a1;
    v58 = a2;
    v59 = [objc_allocWithZone(UIViewController) init];
    v60 = sub_10076B8EC();
    v62 = v61;
    v63 = objc_allocWithZone(type metadata accessor for AlertActionTrailingImageView());
    v64 = sub_1005E36B4(v60, v62, v99);
    [v59 setView:v64];

    v65 = [v59 view];
    if (!v65)
    {
      break;
    }

    v66 = v65;
    [v65 intrinsicContentSize];
    v68 = v67;

    [v59 setPreferredContentSize:{0.0, v68}];
    v69 = objc_opt_self();
    v107 = sub_10046460C;
    v108 = v37;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v106 = sub_1000706E8;
    *(&v106 + 1) = &unk_100895E48;
    v54 = _Block_copy(&aBlock);
    v48 = v59;

    v55 = [v69 _actionWithContentViewController:v48 style:v100 handler:v54];

    a2 = v58;
    a1 = v57;
    v28 = v94;
    v29 = v93;
LABEL_40:
    _Block_release(v54);

    if (v55)
    {
      [v95 addAction:v55];
    }

    ++v30;
    if (v101 == v29)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_1004645CC()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10046460C()
{
  sub_100563DC4(*(v0 + 16), 1, *(v0 + 24));

  return result;
}

double sub_10046463C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_100464654()
{
  result = qword_100957FE0;
  if (!qword_100957FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100957FE0);
  }

  return result;
}

unint64_t sub_1004646AC()
{
  result = qword_10094AAE0;
  if (!qword_10094AAE0)
  {
    type metadata accessor for InformationRibbonCollectionViewCell(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10094AAE0);
  }

  return result;
}

double sub_100464714(uint64_t a1, void (*a2)(char *, uint64_t))
{
  v3 = sub_10000A5D4(&unk_100946720, &qword_100784820);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - v5;
  swift_getKeyPath();
  sub_10076338C();

  sub_10076F4AC();
  (*(v4 + 8))(v6, v3);
  v7 = v12[1];
  sub_10076337C();
  sub_100760C4C();
  sub_10076F64C();
  sub_10076FC1C();
  v8 = v12[0];
  v9 = sub_100630CB4();
  v10 = sub_100330914(v7);
  if (v10)
  {
    sub_10032F1F4(v10, v8, a2, v9);
  }

  swift_unknownObjectRelease();
  return result;
}

id sub_1004648B8(uint64_t a1, char a2)
{
  v3 = v2;
  sub_10076C0BC();
  if (v6)
  {
    v7 = OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productNoRatingsView;
    v8 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productNoRatingsView];
    if (v8)
    {
      v9 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productNoRatingsView];
    }

    else
    {
      v12 = [objc_allocWithZone(type metadata accessor for ProductNoRatingsView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v13 = [v2 contentView];
      [v13 addSubview:v12];

      v14 = *&v2[v7];
      *&v2[v7] = v12;
      v9 = v12;

      v8 = 0;
    }

    v15 = *&v9[OBJC_IVAR____TtC20ProductPageExtension20ProductNoRatingsView_statusLabel];
    v16 = v8;
    v17 = sub_10076FF6C();

    [v15 setText:v17];

    [v9 setNeedsLayout];
  }

  else
  {
    v10 = OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productRatingView;
    v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productRatingView];
    if (v11)
    {
      v9 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productRatingView];
    }

    else
    {
      v18 = [objc_allocWithZone(type metadata accessor for ProductRatingsView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v19 = [v3 contentView];
      [v19 addSubview:v18];

      v20 = *&v3[v10];
      *&v3[v10] = v18;
      v9 = v18;

      v11 = 0;
    }

    v21 = v11;
    sub_100240254(a1, a2 & 1);
  }

  return [v3 setNeedsLayout];
}

id sub_100464C98()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v2 = [v0 contentView];
  sub_1000ACA5C();
  sub_10076422C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productRatingView];
  if (v11)
  {
    [v11 setFrame:{v4, v6, v8, v10}];
  }

  result = *&v1[OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productNoRatingsView];
  if (result)
  {
    return [result setFrame:{v4, v6, v8, v10}];
  }

  return result;
}

void sub_100464DC4(double a1, double a2)
{
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productNoRatingsView];
  if (v3)
  {
    [*(v3 + OBJC_IVAR____TtC20ProductPageExtension20ProductNoRatingsView_statusLabel) measurementsWithFitting:v2 in:{a1, a2}];
  }

  else
  {
    v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension32ProductRatingsCollectionViewCell_productRatingView];
    if (v4)
    {
      v5 = v4;
      v6 = [v2 traitCollection];
      sub_10076D9EC();
    }
  }
}

uint64_t type metadata accessor for ProductRatingsCollectionViewCell(uint64_t a1)
{
  result = qword_100958020;
  if (!qword_100958020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100464F98(uint64_t a1)
{
  sub_10000D6A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100465034()
{
  v0 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v0 - 8);
  v2 = &v32 - v1;
  v40 = sub_10076C2DC();
  v47 = *(v40 - 8);
  __chkstk_darwin(v40);
  v4 = (&v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  __chkstk_darwin(v9);
  v11 = &v32 - v10;
  __chkstk_darwin(v12);
  v14 = &v32 - v13;
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v15 = *(sub_10076C20C() - 8);
  v45 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  v37 = v17;
  *(v17 + 16) = xmmword_1007844F0;
  v43 = v17 + v16;
  v49 = 0x3FF8000000000000;
  sub_10001E290();
  sub_10076C29C();
  v48 = 0x4030000000000000;
  v49 = 0x4020000000000000;
  sub_10076C27C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  v46 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v23 = *(v47 + 104);
  v47 += 104;
  v44 = v23;
  v24 = v40;
  v23(v4);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v49) = 0;
  v39 = v2;
  sub_10076C29C();
  v49 = 0;
  v42 = v7;
  sub_10076C29C();
  v38 = v14;
  v41 = v11;
  sub_10076C1CC();
  v49 = 0x3FF8000000000000;
  sub_10076C29C();
  v48 = 0x4034000000000000;
  v49 = 0x4024000000000000;
  sub_10076C27C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  __asm { FMOV            V0.2D, #20.0 }

  *v4 = _Q0;
  v44(v4, v46, v24);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  v27 = v45;
  top = UIEdgeInsetsZero.top;
  v36 = left;
  sub_10076C1CC();
  v49 = 0x4000000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v34 = vdupq_n_s64(0x4041000000000000uLL);
  *v4 = v34;
  v28 = v40;
  v29 = v44;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v33 = 2 * v27 + v45;
  v49 = 0x4004000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  *v4 = v34;
  v29(v4, v46, v28);
  sub_1007704BC();
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v33 = 4 * v45;
  v49 = 0x4010000000000000;
  sub_10076C29C();
  v49 = 0x4038000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  v34 = vdupq_n_s64(0x404A000000000000uLL);
  *v4 = v34;
  v30 = v40;
  v44(v4, v46, v40);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v49 = 0x4014000000000000;
  sub_10076C29C();
  v49 = 0x4038000000000000;
  sub_10076C29C();
  v49 = 0x4034000000000000;
  sub_10076C29C();
  *v4 = v34;
  v44(v4, v46, v30);
  LOBYTE(v49) = 0;
  sub_10076C29C();
  v49 = 0;
  sub_10076C29C();
  result = sub_10076C1CC();
  qword_100958030 = v37;
  return result;
}

uint64_t sub_100465A04@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100763F9C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10076338C();

  v6 = v11[1];
  v7 = sub_1007706EC();

  if (v7)
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_100763FAC();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_100763FDC();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_100465B90(uint64_t a1)
{
  v49 = a1;
  v1 = sub_10000A5D4(&qword_100942900, &unk_10078A660);
  __chkstk_darwin(v1 - 8);
  v3 = &v39 - v2;
  v4 = sub_10076C2DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000A5D4(&qword_100942908, &unk_1007A3F70);
  __chkstk_darwin(v8 - 8);
  v53 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  __chkstk_darwin(v13);
  v15 = &v39 - v14;
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  sub_10000A5D4(&qword_100942910, &unk_10078A670);
  v19 = *(sub_10076C20C() - 8);
  v54 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  v46 = v21;
  *(v21 + 16) = xmmword_1007844F0;
  v57 = v21 + v20;
  v59 = 0x3FF0000000000000;
  sub_10001E290();
  sub_10076C29C();
  v58 = 0x4030000000000000;
  v59 = 0x4020000000000000;
  sub_10076C27C();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #16.0 }

  *v7 = _Q0;
  v50 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v27 = *(v5 + 104);
  v55 = v5 + 104;
  v51 = v27;
  v52 = v4;
  (v27)(v7);
  left = UIEdgeInsetsZero.left;
  LOBYTE(v59) = 0;
  sub_10076C29C();
  v59 = 0;
  sub_10076C29C();
  v56 = v18;
  v29 = v3;
  v41 = v15;
  sub_10076C1CC();
  v59 = 0x3FF0000000000000;
  sub_10076C29C();
  v58 = 0x4034000000000000;
  v59 = 0x4024000000000000;
  sub_10076C27C();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10076C27C();
  __asm { FMOV            V0.2D, #20.0 }

  *v7 = _Q0;
  v51(v7, v50, v4);
  LOBYTE(v59) = 0;
  sub_10076C29C();
  v59 = 0;
  sub_10076C29C();
  v31 = v54;
  top = UIEdgeInsetsZero.top;
  v45 = left;
  v39 = v12;
  sub_10076C1CC();
  v58 = 0x4000000000000000;
  v59 = 0x3FF8000000000000;
  sub_10076C27C();
  v48.i32[0] = v49 < 2;
  LOBYTE(v59) = v49 < 2;
  sub_10076C29C();
  v59 = 0x4034000000000000;
  sub_10076C29C();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10076C27C();
  v43 = vdupq_n_s64(0x4041000000000000uLL);
  *v7 = v43;
  v40 = v7;
  v32 = v50;
  v33 = v51;
  v51(v7, v50, v52);
  v59 = 0;
  sub_10076C29C();
  v47 = v29;
  sub_10076C1CC();
  v42 = 2 * v31 + v54;
  v59 = 0x4000000000000000;
  sub_10076C29C();
  LOBYTE(v59) = v48.i8[0];
  sub_10076C29C();
  v59 = 0x4034000000000000;
  sub_10076C29C();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10076C27C();
  v34 = v40;
  *v40 = v43;
  v33(v34, v32, v52);
  sub_1007704BC();
  v59 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v35 = 4 * v54;
  v58 = 0x4000000000000000;
  v59 = 0x4004000000000000;
  sub_10076C27C();
  LODWORD(v49) = v49 < 3;
  LOBYTE(v59) = v49;
  LOBYTE(v58) = v48.i8[0];
  sub_10076C27C();
  v59 = 0x4038000000000000;
  sub_10076C29C();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10076C27C();
  v48 = vdupq_n_s64(0x404A000000000000uLL);
  *v34 = v48;
  v36 = v50;
  v37 = v51;
  v51(v34, v50, v52);
  v59 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  v54 += v35;
  v59 = 0x4008000000000000;
  sub_10076C29C();
  LOBYTE(v59) = v49;
  sub_10076C29C();
  v59 = 0x4038000000000000;
  sub_10076C29C();
  v58 = 0x4034000000000000;
  v59 = 0x4030000000000000;
  sub_10076C27C();
  *v34 = v48;
  v37(v34, v36, v52);
  v59 = 0;
  sub_10076C29C();
  sub_10076C1CC();
  return v46;
}

uint64_t sub_1004665E0()
{
  v1 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v1 - 8);
  v59 = v48 - v2;
  v3 = sub_10000A5D4(&unk_100954460, &unk_100790FF0);
  __chkstk_darwin(v3 - 8);
  v5 = v48 - v4;
  v6 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v6 - 8);
  v8 = v48 - v7;
  v9 = sub_10076F75C();
  __chkstk_darwin(v9 - 8);
  v56 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076F4FC();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v58 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = v48 - v14;
  v15 = sub_100760A6C();
  v63 = *(v15 - 8);
  __chkstk_darwin(v15);
  v57 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v64 = v48 - v18;
  v19 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_textField);
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  v21 = 0xE600000000000000;
  v22 = 0x74696D627573;
  v23 = &enum case for SearchOrigin.userText(_:);
  if (v20 && v19)
  {
    v24 = v20;
    ObjectType = swift_getObjectType();
    v26 = v19;
    if (sub_1005C7D20(ObjectType, v24))
    {
      (*(v24 + 32))(ObjectType, v24);
      v21 = 0xE900000000000074;
      v22 = 0x6E694874736F6867;
      v23 = &enum case for SearchOrigin.ghostHint(_:);
    }

    else
    {
      v23 = &enum case for SearchOrigin.userText(_:);
    }
  }

  v27 = v64;
  (*(v63 + 104))(v64, *v23, v15);
  v28 = [v19 text];
  if (v28)
  {
    v29 = v28;
    v30 = sub_10076FF9C();
    v32 = v31;

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v33)
    {
      v51 = sub_10000A5D4(&qword_100952410, qword_10079B5B0);
      inited = swift_initStackObject();
      v53 = v5;
      v35 = inited;
      v50 = xmmword_100788B20;
      *(inited + 16) = xmmword_100788B20;
      v54 = v8;
      v55 = v15;
      *(inited + 32) = 0x79546E6F69746361;
      *(inited + 40) = 0xEA00000000006570;
      *(inited + 48) = v22;
      v49 = v22;
      *(inited + 56) = v21;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 0x6570795465676170;
      *(inited + 88) = 0xE800000000000000;
      *(inited + 96) = 0x686372616553;
      *(inited + 104) = 0xE600000000000000;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 0x6554686372616573;
      *(inited + 136) = 0xEA00000000006D72;
      *(inited + 144) = v30;
      *(inited + 152) = v32;
      *(inited + 168) = &type metadata for String;
      *(inited + 176) = 0x72556E6F69746361;
      *(inited + 216) = &type metadata for String;
      *(inited + 184) = 0xE90000000000006CLL;
      *(inited + 192) = 0;
      *(inited + 200) = 0xE000000000000000;

      sub_1000FD3F0(v35);
      swift_setDeallocating();
      v48[2] = sub_10000A5D4(&qword_100948BD0, &unk_10078B5B0);
      swift_arrayDestroy();
      sub_10000A5D4(&qword_1009451C8, &qword_1007875C0);
      sub_10076FB6C();
      v52 = v30;
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_100783C60;
      sub_10076FB2C();
      sub_10076FB5C();
      sub_10076FB3C();
      sub_10017A1E0(v36);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_10076305C();
      swift_allocObject();
      v48[1] = sub_10076304C();
      v37 = swift_initStackObject();
      *(v37 + 16) = v50;
      *(v37 + 32) = 0x79546E6F69746361;
      v38 = v49;
      *(v37 + 40) = 0xEA00000000006570;
      *(v37 + 48) = v38;
      *(v37 + 56) = v21;
      *(v37 + 72) = &type metadata for String;
      *(v37 + 80) = 0x6570795465676170;
      *(v37 + 88) = 0xE800000000000000;
      *(v37 + 96) = 0x686372616553;
      *(v37 + 104) = 0xE600000000000000;
      *(v37 + 120) = &type metadata for String;
      *(v37 + 128) = 1836213620;
      *(v37 + 136) = 0xE400000000000000;
      *(v37 + 144) = v30;
      *(v37 + 152) = v32;
      *(v37 + 168) = &type metadata for String;
      *(v37 + 176) = 0x7954746567726174;
      *(v37 + 216) = &type metadata for String;
      *(v37 + 184) = 0xEA00000000006570;
      *(v37 + 192) = 0x6E6F74747562;
      *(v37 + 200) = 0xE600000000000000;

      sub_1000FD3F0(v37);
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_10076459C();
      swift_allocObject();
      v51 = sub_10076458C();
      sub_10000A5D4(&qword_1009451D0, &qword_1007875C8);
      sub_10076F3BC();
      *(swift_allocObject() + 16) = xmmword_100784500;
      sub_10076084C();
      sub_10076084C();
      sub_10076F74C();
      v39 = v62;
      sub_10076F4EC();
      v40 = sub_10075DB7C();
      (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
      v41 = v63;
      (*(v63 + 16))(v57, v64, v55);
      v42 = sub_100760A5C();
      (*(*(v42 - 8) + 56))(v53, 1, 1, v42);
      v44 = v60;
      v43 = v61;
      (*(v60 + 16))(v58, v39, v61);
      v45 = sub_10076096C();
      (*(*(v45 - 8) + 56))(v59, 1, 1, v45);
      sub_100760A4C();
      swift_allocObject();

      v46 = sub_100760A0C();

      (*(v44 + 8))(v62, v43);
      (*(v41 + 8))(v64, v55);
      return v46;
    }

    (*(v63 + 8))(v64, v15);
  }

  else
  {
    (*(v63 + 8))(v27, v15);
  }

  return 0;
}

char *sub_10046702C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10076F9AC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_scribbleInteraction] = 0;
  v8 = OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_onSnapshotDidUpdate;
  sub_10000A5D4(&unk_100958160, qword_1007A4C30);
  swift_allocObject();
  *&v1[v8] = sub_10076FE0C();
  *&v1[OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_textField] = a1;
  v1[OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isTextExpansionDisabled] = 0;
  v1[OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isPerformingUpdate] = 0;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v15, "init");
  [v9 setDelegate:v10];
  [v9 addTarget:v10 action:"textFieldDidEdit:" forControlEvents:983040];
  v11 = [objc_allocWithZone(UIScribbleInteraction) initWithDelegate:v10];
  v12 = *&v10[OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_scribbleInteraction];
  *&v10[OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_scribbleInteraction] = v11;
  v13 = v11;

  [v9 addInteraction:v13];
  sub_10076F92C();
  sub_100770B9C();

  (*(v5 + 8))(v7, v4);
  return v10;
}

void sub_100467240(uint64_t a1)
{
  v2 = sub_1007645BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isPerformingUpdate;
  if ((*(a1 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isPerformingUpdate) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isPerformingUpdate) = 1;
    v7 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_textField);
    swift_getObjectType();
    v8 = swift_conformsToProtocol2();
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v10 = v8;
      v36 = v5;
      ObjectType = swift_getObjectType();
      v13 = v10 + 8;
      v12 = *(v10 + 8);
      v14 = v7;
      v15 = v10;
      v16 = v14;
      v34 = ObjectType;
      v35 = v13;
      v32 = v15;
      v33 = v12;
      (v12)(ObjectType);
      if (v17)
      {
        v30 = v3;
        v31 = v2;
        v29 = v16;
        v18 = [v16 text];
        if (v18)
        {
          v19 = v18;
          v20 = sub_10076FF9C();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }

        v5 = v36;
        v37.value._countAndFlagsBits = v20;
        v37.value._object = v22;
        v23 = sub_10077004C(v37);

        v3 = v30;
        if (v23)
        {
          v24 = v29;
          v33(v34, v32);
        }

        else
        {
        }

        v2 = v31;
      }

      else
      {

        v5 = v36;
      }
    }

    *(a1 + v6) = 0;
    v25 = [v7 text];
    if (v25)
    {
      v26 = v3;
      v27 = v25;
      sub_10076FF9C();

      v3 = v26;
    }

    v28 = [v7 markedTextRange];
    if (v28)
    {
    }

    sub_1007645AC();
    sub_10076FDFC();
    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_100467568(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = [a1 selectedTextRange];
  if (!v9)
  {
    v15 = 1;
    return v15 & 1;
  }

  v10 = v9;
  sub_100467A8C();
  v11 = [v10 end];
  v12 = [a1 endOfDocument];
  v13 = sub_100770EEC();

  v14 = a3 < 1 || sub_1007700AC() != 0;
  v16 = [a1 markedTextRange];
  if (v16)
  {
  }

  else if (!v14 && (v13 & 1) != 0)
  {
    v17 = 1;
    goto LABEL_10;
  }

  v17 = 0;
LABEL_10:
  v18 = *(v6 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_scribbleInteraction);
  v19 = v17;
  if (v18)
  {
    v19 = v17 | [v18 isHandlingWriting];
  }

  *(v6 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isTextExpansionDisabled) = v19 & 1;
  swift_getObjectType();
  v20 = swift_conformsToProtocol2();
  if (v20)
  {
    v21 = a1 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v17;
  }

  if (v22 == 1)
  {
    v23 = v20;
    ObjectType = swift_getObjectType();
    v25 = a1;
    v26 = sub_1005C7D20(ObjectType, v23);
    if (v26)
    {
      (*(v23 + 16))(0, 0, ObjectType, v23);
    }

    v15 = !v26;
  }

  else
  {
    v15 = 1;
  }

  return v15 & 1;
}

uint64_t sub_10046797C(uint64_t a1, uint64_t a2)
{
  if (*(*v2 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isTextExpansionDisabled))
  {
    return 0;
  }

  v5 = *(*v2 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_textField);
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (!v6 || v5 == 0)
  {
    return 0;
  }

  v8 = v6;
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);
  v11 = v5;
  v12 = v10(a1, a2, ObjectType, v8);

  return v12 & 1;
}

unint64_t sub_100467A8C()
{
  result = qword_10094D040;
  if (!qword_10094D040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10094D040);
  }

  return result;
}

void sub_100467AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1007645BC();
  __chkstk_darwin(v9);
  v13 = OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isPerformingUpdate;
  if ((*(a1 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isPerformingUpdate) & 1) == 0)
  {
    v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = v12;
    v40 = v10;
    *(a1 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_isPerformingUpdate) = 1;
    ObjectType = swift_getObjectType();
    v15 = *(a3 + 16);

    v15(a4, a5, ObjectType, a3);
    v16 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension30SearchTextInputSourceTextField_textField);
    swift_getObjectType();
    v17 = swift_conformsToProtocol2();
    if (v17)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (!v18)
    {
      v19 = v17;
      v20 = swift_getObjectType();
      v21 = *(v19 + 8);
      v22 = v16;
      v37 = v21;
      v21(v20, v19);
      if (v23)
      {
        v35 = v20;
        v36 = v22;
        v24 = [v22 text];
        if (v24)
        {
          v25 = v24;
          v26 = sub_10076FF9C();
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        v41.value._countAndFlagsBits = v26;
        v41.value._object = v28;
        v29 = sub_10077004C(v41);

        v30 = v36;
        if (v29)
        {
          v37(v35, v19);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    *(a1 + v13) = 0;
    v31 = [v16 text];
    if (v31)
    {
      v32 = v31;
      sub_10076FF9C();
    }

    v33 = [v16 markedTextRange];
    if (v33)
    {
    }

    v34 = v38;
    sub_1007645AC();
    sub_10076FDFC();
    (*(v39 + 8))(v34, v40);
  }
}

uint64_t sub_100467DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v21 = a2;
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[23] = &type metadata for Double;
  v28[24] = &protocol witness table for Double;
  v28[19] = &protocol witness table for Double;
  v28[20] = 0x4049000000000000;
  v28[18] = &type metadata for Double;
  v28[14] = &protocol witness table for Double;
  v28[15] = 0x4024000000000000;
  v28[13] = &type metadata for Double;
  v28[10] = 0x4030000000000000;
  v28[8] = &type metadata for Double;
  v28[9] = &protocol witness table for Double;
  v28[5] = 0x402C000000000000;
  if (qword_100940A80 != -1)
  {
    swift_once();
  }

  v6 = sub_10076D3DC();
  v18 = sub_10000A61C(v6, qword_1009A0D90);
  v7 = *(v6 - 8);
  v17 = *(v7 + 16);
  v19 = v7 + 16;
  v17(v5, v18, v6);
  v16 = enum case for FontSource.useCase(_:);
  v15 = v3[13];
  v15(v5);
  v8 = sub_10076D9AC();
  v28[3] = v8;
  v28[4] = &protocol witness table for StaticDimension;
  sub_10000DB7C(v28);
  v26 = v2;
  v27 = &protocol witness table for FontSource;
  v9 = sub_10000DB7C(v25);
  v10 = v3[2];
  v10(v9, v5, v2);
  sub_10076D9BC();
  v11 = v3[1];
  v11(v5, v2);
  v17(v5, v18, v6);
  (v15)(v5, v16, v2);
  v26 = v8;
  v27 = &protocol witness table for StaticDimension;
  sub_10000DB7C(v25);
  v23 = v2;
  v24 = &protocol witness table for FontSource;
  v12 = sub_10000DB7C(v22);
  v10(v12, v5, v2);
  sub_10076D9BC();
  v11(v5, v2);
  if (v20)
  {
    sub_1007706CC();
  }

  v24 = &protocol witness table for Double;
  v23 = &type metadata for Double;
  v22[0] = 0x4020000000000000;
  return sub_100763E7C();
}

char *sub_100468138(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100763E9C();
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076D3DC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v18 = &v5[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView__contentOffset];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v5[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_cachedIntrinsicContentSize];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = &v5[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  if (qword_100940A78 != -1)
  {
    swift_once();
  }

  v21 = sub_10000A61C(v14, qword_1009A0D78);
  (*(v15 + 16))(v17, v21, v14);
  v22 = [objc_opt_self() currentTraitCollection];
  sub_100467DE8(v22, v13);

  v23 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  *&v5[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_lockupView] = sub_1001AB12C(v17, v13, 1, 0.0, 0.0, 0.0, 0.0);
  v27.receiver = v5;
  v27.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v27, "initWithFrame:", a1, a2, a3, a4);
  sub_1007708CC();
  [v24 setLayoutMargins:?];
  [v24 setHideStandardTitle:1];
  [v24 addSubview:*&v24[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_lockupView]];
  sub_10000A5D4(&unk_100945BF0, &qword_100786810);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100784500;
  *(v25 + 32) = sub_10076E59C();
  *(v25 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  *(v25 + 48) = sub_10076E40C();
  *(v25 + 56) = &protocol witness table for UITraitVerticalSizeClass;
  sub_100770C6C();

  swift_unknownObjectRelease();

  return v24;
}

void sub_10046856C()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_10094FD50, &unk_100788D10);
  __chkstk_darwin(v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_100770BFC();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v0 floatingTabBarHeight];
  if (v10 == 0.0)
  {
    v11 = [v0 traitCollection];
    v12 = sub_1007706FC();

    if (v12)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        v15 = &v1[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView__contentOffset];
        if (v1[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView__contentOffset + 8])
        {
          v16 = [Strong view];
          if (v16)
          {
            v17 = v16;
            [v16 safeAreaInsets];
            v19 = v18;

            v20 = [v14 navigationController];
            if (v20)
            {
              v21 = v20;
              sub_1001FE5D4();
              v23 = v22;
            }

            else
            {

              v23 = 0.0;
            }

            *v15 = v19 - v23;
            *(v15 + 8) = 0;
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
        }
      }
    }

    else
    {
      v24 = &v1[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView__contentOffset];
      if (v1[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView__contentOffset + 8])
      {
        v25 = enum case for UIView.LayoutRegion.AdaptivityAxis.vertical(_:);
        v26 = sub_100770BDC();
        v27 = *(v26 - 8);
        (*(v27 + 104))(v4, v25, v26);
        (*(v27 + 56))(v4, 0, 1, v26);
        sub_100770BEC();
        sub_100317990(v4);
        sub_100770BBC();
        v29 = v28;
        (*(v6 + 8))(v9, v5);
        *v24 = v29;
        v24[8] = 0;
      }
    }
  }

  else
  {

    [v0 floatingTabBarHeight];
  }
}

void sub_1004688C0()
{
  sub_10046856C();
  v1 = &OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_cachedIntrinsicContentSize;
  if (v2 != 0.0)
  {
    v1 = &OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar;
  }

  v3 = &v0[*v1];
  if ((v3[2] & 1) != 0 || (v4 = *v3, [v0 bounds], v4 != CGRectGetWidth(v12)))
  {
    [v0 bounds];
    CGRectGetWidth(v13);
    v5 = *&v0[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_lockupView];
    [v0 layoutMargins];
    sub_100770ACC();
    [v5 sizeThatFits:?];
    v7 = v6;
    sub_10046856C();
    v9 = v7 + v8;
    [v0 bounds];
    Width = CGRectGetWidth(v14);
    v11 = &v0[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_cachedIntrinsicContentSize];
    *v11 = Width;
    v11[1] = v9;
    *(v11 + 16) = 0;
  }
}

id sub_100468BEC(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100763E9C();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v2;
  v23.super_class = ObjectType;
  v21 = ObjectType;
  objc_msgSendSuper2(&v23, "traitCollectionDidChange:", a1, v7);
  if (a1)
  {
    v10 = [a1 layoutDirection];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 traitCollection];
  v12 = [v11 layoutDirection];

  if (!a1 || v10 != v12)
  {
    v13 = [v2 traitCollection];
    [v13 layoutDirection];

    sub_1007708DC();
    [v2 setLayoutMargins:?];
  }

  v14 = *&v2[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_lockupView];
  v15 = [v2 traitCollection];
  v16 = v21;
  sub_100467DE8(v15, v9);

  v17 = OBJC_IVAR____TtC20ProductPageExtension16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v6 + 24))(&v14[v17], v9, v5);
  swift_endAccess();
  [v14 setNeedsLayout];
  (*(v6 + 8))(v9, v5);
  v18 = &v2[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_cachedIntrinsicContentSize];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = &v2[OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView_cachedIntrinsicContentSizeWithTabBar];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v22.receiver = v2;
  v22.super_class = v16;
  return objc_msgSendSuper2(&v22, "invalidateIntrinsicContentSize");
}

uint64_t sub_100468F40(uint64_t result)
{
  v1 = result + OBJC_IVAR____TtC20ProductPageExtension19ArcadePageTitleView__contentOffset;
  *v1 = 0;
  *(v1 + 8) = 1;
  return result;
}

uint64_t sub_100468F5C()
{
  sub_10043AEE0(v0 + OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(uint64_t a1)
{
  result = qword_1009581F0;
  if (!qword_1009581F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100469014(uint64_t a1, uint64_t a2)
{
  sub_1002153E0(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1004690AC(void *a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_10094DE60, "ܱ\b");
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  v12[5] = a1;
  sub_1000FEDC4();
  v7 = a1;
  sub_10000A5D4(&qword_1009582A0, &qword_1007A4D78);
  if (swift_dynamicCast())
  {
    sub_10000CD74(v12);
    sub_10076340C();
    v8 = sub_10075E11C();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = sub_10075E11C();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  swift_beginAccess();
  sub_10021560C(v6, v2 + v10);
  return swift_endAccess();
}

double sub_100469230(double a1)
{
  v2 = v1;
  v4 = sub_10076DD3C();
  v38 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v36 - v8;
  __chkstk_darwin(v10);
  v12 = v36 - v11;
  __chkstk_darwin(v13);
  v15 = v36 - v14;
  v16 = sub_10076DA7C();
  v39 = *(v16 - 8);
  v40 = v16;
  __chkstk_darwin(v16);
  v37 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100940588 != -1)
  {
    swift_once();
  }

  sub_1000BFCF0(qword_10099FAF0, v42);
  v43 = v1[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_isSingleColumn];
  sub_1000BFCF0(v42, v44);
  v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_titleLabel];
  v44[14] = sub_1007626BC();
  v44[15] = &protocol witness table for UILabel;
  v44[11] = v18;
  v41 = *&v2[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_ratingControl];
  type metadata accessor for StarRatingControl();
  v19 = v18;
  sub_10076D2DC();
  sub_10046A8CC(v42);
  v20 = [v2 traitCollection];
  if (sub_10077071C() & 1) != 0 || (sub_1007706EC())
  {
    v21 = 1;
  }

  else
  {
    v36[3] = v15;
    v46._object = 0x80000001007D1A70;
    v46._countAndFlagsBits = 0xD000000000000016;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v22 = sub_1007622EC(v46, v47);
    v36[1] = v23;
    v36[2] = v22;
    sub_10076DD2C();
    if (qword_100940CA8 != -1)
    {
      swift_once();
    }

    v24 = sub_10076D3DC();
    sub_10000A61C(v24, qword_1009A13F0);
    sub_10076DCFC();
    v25 = *(v38 + 8);
    v25(v6, v4);
    sub_10076DD1C();
    v25(v9, v4);
    sub_10076DD0C();
    v25(v12, v4);
    sub_10076DA5C();
    v26 = v37;
    sub_10076DA9C();
    sub_10076DA6C();
    v28 = v27;
    sub_10000CF78(v45, v45[3]);
    sub_10076E0FC();
    v30 = v29;
    sub_10000CF78(v44, v44[3]);
    sub_10076D41C();
    v32 = v31;
    (*(v39 + 8))(v26, v40);
    v21 = v30 + v28 + v32 > a1;
  }

  sub_100090EC4(v21, v42);
  sub_10000CF78(v42, v42[3]);
  sub_10076E0FC();
  v34 = v33;

  sub_10000CD74(v42);
  sub_1000BFD4C(v44);
  return v34;
}

void sub_1004696F4()
{
  qword_10099FB08 = &type metadata for Double;
  unk_10099FB10 = &protocol witness table for Double;
  qword_10099FAF0[0] = 0x4030000000000000;
  qword_10099FB38 = &type metadata for Double;
  unk_10099FB40 = &protocol witness table for Double;
  qword_10099FB20 = 0x4020000000000000;
  byte_10099FB18 = 1;
}

char *sub_100469730(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10076771C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v15 - 8);
  v17 = &v45 - v16;
  v18 = OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_rateAction;
  v19 = sub_10000A5D4(&qword_100947408, qword_1007895B8);
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v5[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_isSingleColumn] = 0;
  if (qword_100940CA8 != -1)
  {
    swift_once();
  }

  v20 = sub_10076D3DC();
  v21 = sub_10000A61C(v20, qword_1009A13F0);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v17, v21, v20);
  (*(v22 + 56))(v17, 0, 1, v20);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v23 = objc_allocWithZone(sub_1007626BC());
  *&v5[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_titleLabel] = sub_1007626AC();
  v24 = type metadata accessor for StarRatingControl();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating] = 0;
  *&v25[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_lastSentRating] = 0;
  v26 = &v25[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_touchOutsideMargin];
  *v26 = xmmword_1007A4D80;
  *(v26 + 1) = xmmword_1007A4D80;
  v46.receiver = v25;
  v46.super_class = v24;
  v27 = objc_msgSendSuper2(&v46, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 clearColor];
  [v29 setBackgroundColor:v30];

  [v29 setContentMode:3];
  *&v29[OBJC_IVAR____TtC20ProductPageExtension17StarRatingControl_rating] = 0;

  *&v5[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_ratingControl] = v29;
  v45.receiver = v5;
  v45.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v45, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v36 = OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_titleLabel;
  v37 = *&v35[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_titleLabel];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v38 = v37;
  v39 = sub_100770CFC();
  [v38 setTextColor:v39];

  [v35 addSubview:*&v35[v36]];
  v40 = OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_ratingControl;
  [v35 addSubview:*&v35[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_ratingControl]];
  v41 = *&v35[v40];
  sub_100016F40(0, &qword_1009641D0, UIAction_ptr);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v41;

  v43 = sub_100770F1C();
  [v42 addAction:v43 forControlEvents:4096];

  return v35;
}

void *sub_100469C5C(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - v3;
  v5 = sub_10000A5D4(&qword_100947400, &qword_1007895B0);
  __chkstk_darwin(v5 - 8);
  v7 = v18 - v6;
  v8 = sub_10000A5D4(&qword_100947408, qword_1007895B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - v10;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v13 = result;
    v14 = OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_rateAction;
    swift_beginAccess();
    sub_10046A960(v13 + v14, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      return sub_10000CFBC(v7, &qword_100947400, &qword_1007895B0);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      sub_100761FEC();
      sub_10075F91C();

      sub_100761FDC();
      v15 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      sub_10076F5AC();

      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v4, 1, v15) == 1)
      {
        (*(v9 + 8))(v11, v8);

        return sub_10000CFBC(v4, &unk_100943200, &unk_100785840);
      }

      else
      {
        sub_100761FEC();
        v17 = sub_100761FDC();
        sub_100264204(v18[1], 1, v17, v4);

        (*(v9 + 8))(v11, v8);

        return (*(v16 + 8))(v4, v15);
      }
    }
  }

  return result;
}

uint64_t sub_10046A0E0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076DD3C();
  v54 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  __chkstk_darwin(v12);
  v53 = &v48 - v13;
  v14 = sub_10076DA7C();
  v56 = *(v14 - 8);
  v57 = v14;
  *&v15 = __chkstk_darwin(v14).n128_u64[0];
  v55 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64.receiver = v1;
  v64.super_class = ObjectType;
  objc_msgSendSuper2(&v64, "layoutSubviews", v15);
  v17 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_titleLabel];
  sub_10076422C();
  v19 = v18;
  v58 = *&v1[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_ratingControl];
  v61[0] = v58;
  v59 = type metadata accessor for StarRatingControl();
  sub_10076D2DC();
  v20 = &selRef_initWithTabBarSystemItem_tag_;
  v21 = [v1 traitCollection];
  if (qword_100940588 != -1)
  {
    swift_once();
  }

  if (sub_10077071C() & 1) != 0 || (sub_1007706EC())
  {

    sub_10000CD74(v63);
  }

  else
  {
    v52 = v3;
    v49 = "featureFlagEnabled";
    v65._object = 0x80000001007D1A70;
    v65._countAndFlagsBits = 0xD000000000000016;
    v67._countAndFlagsBits = 0;
    v67._object = 0xE000000000000000;
    v35 = sub_1007622EC(v65, v67);
    v50 = v36;
    v51 = v35;
    sub_10076DD2C();
    if (qword_100940CA8 != -1)
    {
      swift_once();
    }

    v37 = sub_10076D3DC();
    sub_10000A61C(v37, qword_1009A13F0);
    sub_10076DCFC();
    v38 = *(v54 + 8);
    v39 = v5;
    v40 = v52;
    v38(v39, v52);
    sub_10076DD1C();
    v38(v8, v40);
    sub_10076DD0C();
    v38(v11, v40);
    sub_10076DA5C();
    v41 = v55;
    sub_10076DA9C();
    sub_10076DA6C();
    v43 = v42;
    sub_10000CF78(v63, v63[3]);
    sub_10076E0FC();
    v45 = v44;
    sub_10000CF78(qword_10099FAF0, qword_10099FB08);
    sub_10076D41C();
    v47 = v46;

    (*(v56 + 8))(v41, v57);
    sub_10000CD74(v63);
    v20 = &selRef_initWithTabBarSystemItem_tag_;
    if (v19 >= v45 + v43 + v47)
    {
      v22._object = (v49 | 0x8000000000000000);
      v22._countAndFlagsBits = 0xD000000000000016;
      goto LABEL_7;
    }
  }

  v22._countAndFlagsBits = 0x525F4F545F504154;
  v22._object = 0xEB00000000455441;
LABEL_7:
  v66._countAndFlagsBits = 0;
  v66._object = 0xE000000000000000;
  sub_1007622EC(v22, v66);
  v23 = sub_10076FF6C();

  [v17 setText:v23];

  sub_1000BFCF0(qword_10099FAF0, v61);
  v62 = v1[OBJC_IVAR____TtC20ProductPageExtension20ProductTapToRateView_isSingleColumn];
  sub_1000BFCF0(v61, v63);
  v63[14] = sub_1007626BC();
  v63[15] = &protocol witness table for UILabel;
  v63[11] = v17;
  v60 = v58;
  v24 = v17;
  sub_10076D2DC();
  sub_10046A8CC(v61);
  [v1 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = [v1 v20[274]];
  sub_10009124C(v33, v26, v28, v30, v32);

  return sub_1000BFD4C(v63);
}

uint64_t type metadata accessor for ProductTapToRateView(uint64_t a1)
{
  result = qword_1009582E0;
  if (!qword_1009582E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10046A7C0(uint64_t a1)
{
  sub_10046A868(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10046A868(uint64_t a1)
{
  if (!qword_1009582F0)
  {
    sub_10000CE78(&qword_100947408, qword_1007895B8);
    v1 = sub_1007711AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1009582F0);
    }
  }
}

uint64_t sub_10046A920()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10046A960(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100947400, &qword_1007895B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10046A9D0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_10000A5D4(&unk_10094CD50, &unk_100786030);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - v6;
  v8 = sub_10076428C();
  v9 = *(v8 - 8);
  *&v10 = __chkstk_darwin(v8).n128_u64[0];
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 traitCollection];
  sub_1002AAFCC(v12);

  sub_10076425C();
  (*(v9 + 8))(v12, v8);
  v16[1] = a1;
  sub_10075FDCC();
  (*(v5 + 8))(v7, v4);
  sub_100766E2C();
  v14 = sub_100766E4C();
  return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

uint64_t sub_10046ABE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v167 = a6;
  v162 = a3;
  ObjectType = swift_getObjectType();
  v10 = sub_10000A5D4(&unk_100958350, &qword_10078C2B8);
  __chkstk_darwin(v10 - 8);
  v164 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v141 - v13;
  v15 = sub_10076B96C();
  __chkstk_darwin(v15 - 8);
  v145 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_10076201C();
  v148 = *(v149 - 8);
  __chkstk_darwin(v149);
  v147 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v146 = &v141 - v19;
  v20 = sub_10000A5D4(&unk_100945560, qword_1007951B0);
  __chkstk_darwin(v20 - 8);
  v161 = &v141 - v21;
  v159 = sub_100768FEC();
  v155 = *(v159 - 8);
  __chkstk_darwin(v159);
  v156 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_10000A5D4(&unk_100946750, qword_100787A30);
  v158 = *(v160 - 8);
  __chkstk_darwin(v160);
  v157 = &v141 - v23;
  v24 = sub_10000A5D4(&unk_100945550, &unk_10078A040);
  __chkstk_darwin(v24 - 8);
  v153 = &v141 - v25;
  v152 = sub_10076A3AC();
  v150 = *(v152 - 8);
  __chkstk_darwin(v152);
  v151 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v27 - 8);
  v154 = &v141 - v28;
  v144 = sub_10077164C();
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000A5D4(&unk_1009467C0, &unk_100787A10);
  __chkstk_darwin(v30 - 8);
  v32 = &v141 - v31;
  v33 = sub_10076664C();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v141 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10076E21C();
  v165 = *(v37 - 8);
  v166 = v37;
  __chkstk_darwin(v37);
  v168 = &v141 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = a1;
  v39 = sub_10076BBAC();
  v163 = v14;
  if (v40)
  {
    v41 = HIBYTE(v40) & 0xF;
    if ((v40 & 0x2000000000000000) == 0)
    {
      v41 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {
      v141 = a4;
      sub_1000325F0();
      v42 = sub_100770CFC();
      sub_1002AD2F8(1, v42);

      v43 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel];
      if (v43)
      {
        v44 = v43;
        v45 = sub_10076FF6C();

        [v44 setText:v45];
      }

      else
      {
      }

      v47 = v168;
      goto LABEL_12;
    }
  }

  v46 = *&v7[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel];
  v47 = v168;
  if (v46)
  {
    [v46 setHidden:1];
  }

LABEL_12:
  sub_1002AC394(v167, v47);
  sub_1007665FC();
  sub_10046C5D4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v48 = sub_10077124C();
  v49 = *(v34 + 8);
  v49(v36, v33);
  ObjectType = v7;
  if (v48)
  {
    (*(v165 + 56))(v32, 1, 1, v166);
    v50 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separator;
    swift_beginAccess();
    sub_10007A910(v32, &v7[v50]);
    swift_endAccess();
    sub_1002AC7E0();
    sub_10000CFBC(v32, &unk_1009467C0, &unk_100787A10);
    sub_10076660C();
    LOBYTE(v50) = sub_10077124C();
    v49(v36, v33);
    v51 = [v7 contentView];
    v52 = v51;
    if (v50)
    {
      [v51 layoutMargins];
      [v52 setLayoutMargins:?];
    }

    else
    {
      sub_10076E1AC();
      v59 = *(&v172 + 1);
      sub_10000CF78(&v171, *(&v172 + 1));
      v60 = v142;
      sub_1000FF02C(v59);
      sub_10076D40C();
      (*(v143 + 8))(v60, v144);
      [v52 layoutMargins];
      [v52 setLayoutMargins:?];

      sub_10000CD74(&v171);
    }

    v58 = v162;
    v57 = ObjectType;
  }

  else
  {
    v54 = v165;
    v53 = v166;
    (*(v165 + 16))(v32, v47, v166);
    (*(v54 + 56))(v32, 0, 1, v53);
    v55 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_separator;
    swift_beginAccess();
    sub_10007A910(v32, &v7[v55]);
    swift_endAccess();
    sub_1002AC7E0();
    sub_10000CFBC(v32, &unk_1009467C0, &unk_100787A10);
    v56 = [v7 contentView];
    [v56 layoutMargins];
    [v56 setLayoutMargins:?];

    v57 = v7;
    v58 = v162;
  }

  v61 = *&v57[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_titleLabel];
  sub_10076BB6C();
  if (v62)
  {
    v63 = sub_10076FF6C();
  }

  else
  {
    v63 = 0;
  }

  [v61 setText:v63];

  v64 = sub_10076BB3C();
  v65 = sub_10076BA2C();
  v66 = v150;
  v67 = v152;
  (*(v150 + 104))(v151, enum case for OfferButtonPresenterViewAlignment.left(_:), v152);
  (*(v66 + 56))(v153, 1, 1, v67);
  sub_10046C5D4(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  v68 = v154;
  sub_10076759C();
  v69 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
  (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
  v70 = v155;
  v71 = v159;
  (*(v155 + 104))(v156, enum case for OfferButtonSubtitlePosition.right(_:), v159);
  (*(v70 + 56))(v161, 1, 1, v71);
  sub_10046C5D4(&qword_100945580, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  v72 = v157;
  sub_10076759C();
  sub_1001F12C8(v64, v65, 0, v68, v72, v58, 0, 0);

  (*(v158 + 8))(v72, v160);
  sub_10000CFBC(v68, &unk_100946760, &unk_100787A20);
  if (sub_10076BB3C())
  {
    v73 = v146;
    sub_100766A8C();
    v74 = v148;
    v75 = v147;
    v76 = v149;
    (*(v148 + 104))(v147, enum case for OfferLabelStyle.none(_:), v149);
    sub_10046C5D4(&unk_100958360, &type metadata accessor for OfferLabelStyle, &protocol conformance descriptor for OfferLabelStyle);
    v77 = sub_10076FF1C();
    v78 = *(v74 + 8);
    v78(v75, v76);
    v78(v73, v76);
    if ((v77 & 1) == 0)
    {

      sub_100766ACC();
      sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
      sub_10076F64C();
      sub_10076FC1C();
      sub_10076148C();
      sub_10076FC1C();
      sub_10076130C();

      v82 = sub_100764E4C();
      swift_allocObject();
      v83 = sub_100764E2C();
      *(&v172 + 1) = v82;
      *&v171 = v83;
      v84 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabelPresenter;
      v80 = ObjectType;
      swift_beginAccess();

      sub_100127EF0(&v171, &v80[v84]);
      swift_endAccess();
      [*&v80[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabel] frame];
      v174.origin.x = 0.0;
      v174.origin.y = 0.0;
      v174.size.width = 0.0;
      v174.size.height = 0.0;
      if (CGRectEqualToRect(v173, v174))
      {
        v85 = objc_opt_self();
        v86 = [v85 areAnimationsEnabled];
        [v85 setAnimationsEnabled:0];
        sub_10046C5D4(&unk_100958370, type metadata accessor for MediumLockupCollectionViewCell, &unk_1007A4DE8);
        swift_unknownObjectRetain();
        sub_100764E3C();
        [v80 layoutIfNeeded];
        [v85 setAnimationsEnabled:v86];
      }

      else
      {
        sub_10046C5D4(&unk_100958370, type metadata accessor for MediumLockupCollectionViewCell, &unk_1007A4DE8);
        swift_unknownObjectRetain();
        sub_100764E3C();
      }

      goto LABEL_29;
    }
  }

  v171 = 0u;
  v172 = 0u;
  v79 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabelPresenter;
  v80 = ObjectType;
  swift_beginAccess();
  sub_100127EF0(&v171, &v80[v79]);
  swift_endAccess();
  v81 = sub_10046C1E8(0, 0);
LABEL_29:
  v87 = v167;
  v88 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel;
  v89 = *&v80[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_headingLabel];
  if (v89 && ([v89 isHidden] & 1) == 0 && (v90 = *&v80[v88]) != 0)
  {
    v91 = [v90 hasContent];
  }

  else
  {
    v91 = 0;
  }

  v92 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabelPresenter;
  swift_beginAccess();
  sub_10003F0D4(&v80[v92], &v171);
  v93 = *(&v172 + 1);
  sub_10000CFBC(&v171, &unk_1009434C0, &qword_100783F60);
  v94 = [v87 traitCollection];
  v95 = sub_1007706EC();

  if (v95)
  {
    v96 = [v87 traitCollection];
    v97 = sub_10077071C();

    sub_10076BA4C();
    if (!v98)
    {
      v100 = v97 ^ 1;
      goto LABEL_51;
    }

    if ((v97 & 1) == 0)
    {
      if (v93)
      {
        v99 = 1;
      }

      else
      {
        v99 = v91;
      }

      v100 = 1;
      if ((v99 & 1) == 0)
      {
LABEL_41:
        sub_1002AD5A8();
        v101 = *&v80[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel];
        if (v101)
        {
          v102 = v101;
          v103 = sub_10076FF6C();

          [v102 setText:v103];
        }

        else
        {
        }

        goto LABEL_55;
      }

      goto LABEL_48;
    }
  }

  else
  {
    sub_10076BA4C();
    if (!v104)
    {
      v100 = 0;
      goto LABEL_51;
    }
  }

  v100 = 0;
  if (v93)
  {
    v105 = v91;
  }

  else
  {
    v105 = 0;
  }

  if ((v105 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_48:

LABEL_51:
  v106 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v107 = *&v80[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (v107)
  {
    [v107 setHidden:1];
    v108 = *&v80[v106];
    if (v108)
    {
      [v108 setText:0];
    }
  }

LABEL_55:
  v109 = *&v80[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_subtitleLabel];
  sub_10076BBEC();
  if (v110)
  {
    v111 = sub_10076FF6C();
  }

  else
  {
    v111 = 0;
  }

  [v109 setText:v111];

  v112 = OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel;
  v113 = *&v80[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_tertiaryTitleLabel];
  if (!v113 || ([v113 isHidden] & 1) != 0 || (v114 = *&v80[v112]) == 0)
  {
    if (v91)
    {
      if (v93)
      {
        goto LABEL_67;
      }
    }

    else if (!v93)
    {
      v116 = 0;
      goto LABEL_71;
    }

    goto LABEL_69;
  }

  v115 = [v114 hasContent];
  if ((v91 & 1) == 0)
  {
    if (!v93)
    {
      v116 = 0;
      if (v115)
      {
        goto LABEL_92;
      }

LABEL_71:
      v117 = 0;
      goto LABEL_72;
    }

    if (v115)
    {
      v117 = 1;
      v116 = 1;
      goto LABEL_72;
    }

LABEL_69:
    v116 = 1;
    goto LABEL_71;
  }

  if (!v93)
  {
    v116 = 1;
    v117 = 1;
    if (v115)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((v115 & 1) == 0)
  {
LABEL_67:
    v116 = 2;
    goto LABEL_71;
  }

  v116 = 2;
LABEL_92:
  v117 = 1;
LABEL_72:
  v118 = [v109 hasContent];
  v119 = v163;
  if (!v118)
  {
LABEL_75:
    v121 = 1;
    goto LABEL_81;
  }

  v120 = v116 + v117;
  if (v100)
  {
    if (v120)
    {
      goto LABEL_75;
    }

    v121 = 0;
  }

  else
  {
    v121 = v120 > 1;
  }

LABEL_81:
  [v109 setHidden:v121];
  v122 = sub_10076BADC();
  if (!v122)
  {
    sub_1000325F0();
    v122 = sub_100770D1C();
  }

  v123 = v122;
  [v109 setTextColor:v122];

  v124 = &off_100911000;
  v125 = [v109 layer];
  sub_10076BAEC();
  v126 = sub_1007663AC();
  v127 = *(v126 - 8);
  v128 = *(v127 + 48);
  if (v128(v119, 1, v126) == 1)
  {
    sub_10000CFBC(v119, &unk_100958350, &qword_10078C2B8);
LABEL_87:
    v135 = 0;
    goto LABEL_88;
  }

  sub_10076639C();
  (*(v127 + 8))(v119, v126);
  v129 = *(&v172 + 1);
  if (!*(&v172 + 1))
  {
    goto LABEL_87;
  }

  v130 = sub_10000CF78(&v171, *(&v172 + 1));
  v131 = *(v129 - 8);
  v132 = __chkstk_darwin(v130);
  v134 = &v141 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v131 + 16))(v134, v132);
  v135 = sub_10077165C();
  (*(v131 + 8))(v134, v129);
  v124 = &off_100911000;
  sub_10000CD74(&v171);
LABEL_88:
  [v125 setCompositingFilter:v135];

  swift_unknownObjectRelease();
  v136 = [v80 contentView];
  v137 = [v136 v124[274]];

  v138 = v164;
  sub_10076BAEC();
  v139 = v128(v138, 1, v126) == 1;
  sub_10000CFBC(v138, &unk_100958350, &qword_10078C2B8);
  [v137 setAllowsGroupBlending:v139];

  [v80 setNeedsLayout];
  return (*(v165 + 8))(v168, v166);
}

double sub_10046C1E8(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension30MediumLockupCollectionViewCell_offerLabel];
  v6 = [v5 text];
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = v6;
  v9 = sub_10076FF9C();
  v11 = v10;

  if (!a2)
  {

    goto LABEL_12;
  }

  if (v9 != a1 || v11 != a2)
  {
    v13 = sub_10077167C();

    if (v13)
    {
      return result;
    }

LABEL_10:
    a2 = sub_10076FF6C();
LABEL_12:
    [v5 setText:a2];

    v14 = [v5 text];
    if (v14)
    {
      v15 = v14;
      sub_10076FF9C();
    }

    v16 = sub_10077002C();

    [v5 setHidden:v16 & 1];

    [v2 setNeedsLayout];
    return result;
  }

  return result;
}

uint64_t sub_10046C3B4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_10076E21C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_1002AC394(a7, v12);
  sub_10076E1DC();
  (*(v10 + 8))(v12, v9);
  PageTraitEnvironment.pageColumnWidth.getter();
  sub_1002ADC24(a7, v13, a2);
  v14 = objc_opt_self();
  PageTraitEnvironment.pageColumnWidth.getter();
  v15 = [v14 absoluteDimension:?];
  v16 = sub_1007665BC();

  return v16;
}

uint64_t sub_10046C5D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_10046C61C(double a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28 = a4;
  v8 = sub_10077164C();
  v26 = *(v8 - 8);
  v27 = v8;
  __chkstk_darwin(v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076664C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10076E21C();
  v15 = *(v29 - 8);
  __chkstk_darwin(v29);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_1002AC394(a5, v17);
  sub_1007665FC();
  sub_10046C5D4(&unk_100945570, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v18 = sub_10077124C();
  v19 = (*(v12 + 8))(v14, v11);
  v19.n128_f64[0] = a1;
  v20 = sub_1002ADC24(a5, v19, a2);
  if (v18)
  {
    v21 = v20;
    sub_10076E1AC();
    v22 = v31;
    sub_10000CF78(v30, v31);
    sub_1000FF02C(v22);
    sub_10076D40C();
    (*(v26 + 8))(v10, v27);
    (*(v15 + 8))(v17, v29);
    sub_10000CD74(v30);
  }

  else
  {
    sub_100770AFC();
    v21 = v23;
    (*(v15 + 8))(v17, v29);
  }

  return v21;
}

double sub_10046C9A8()
{
  sub_1007610FC();
  sub_10046CA68(&qword_100958380, &type metadata accessor for RoundedButton, &protocol conformance descriptor for RoundedButton);
  sub_10076332C();
  if (!v3)
  {
    return 0.0;
  }

  v0 = sub_100630CB4();
  v1 = sub_1005C9618(v3, v0);

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10046CA68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10046CAB0(double a1)
{
  v2 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientEndY;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientEndY] = a1;
  v3 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView];
  v4 = [v3 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() endPoint];
  v6 = v5;

  v7 = *&v1[v2];
  v8 = [v3 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v6, v7}];

  v9 = [*&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView] layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v6, v7}];

  return [v1 setNeedsDisplay];
}

id sub_10046CC14(uint64_t a1, uint64_t a2, double a3)
{
  v28 = a2;
  v6 = sub_10075FEEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v10);
  v13 = &v25[-v12];
  v14 = *(v7 + 16);
  v27 = a1;
  v14(&v25[-v12], a1, v6, v11);
  v15 = (*(v7 + 88))(v13, v6);
  v26 = enum case for CornerStyle.continuous(_:);
  if (v15 == enum case for CornerStyle.continuous(_:))
  {
    v16 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView);
    [v16 _setContinuousCornerRadius:a3];
    v17 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView);
    [v17 _setContinuousCornerRadius:a3];
  }

  else
  {
    v18 = v15;
    v19 = enum case for CornerStyle.arc(_:);
    v16 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView);
    [v16 _setCornerRadius:a3];
    v17 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView);
    [v17 _setCornerRadius:a3];
    if (v18 != v19)
    {
      (*(v7 + 8))(v13, v6);
    }
  }

  v20 = [v16 layer];
  [v20 setMaskedCorners:sub_1007704FC()];

  v21 = [v17 layer];
  [v21 setMaskedCorners:sub_1007704FC()];

  v22 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurView);
  (*(v7 + 104))(v9, v26, v6);
  v23 = sub_10075FEDC();
  (*(v7 + 8))(v9, v6);
  return [v22 _setCornerRadius:v23 & 1 continuous:sub_1007704FC() maskedCorners:a3];
}

void *sub_10046CEF8(char a1)
{
  v1 = off_100895FB8[a1];
  v2 = v1[2];
  if (v2)
  {
    sub_1007714EC();
    v3 = objc_opt_self();
    v4 = 4;
    do
    {
      v5 = *&v1[v4];
      v6 = [v3 blackColor];
      v7 = [v6 colorWithAlphaComponent:v5];

      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      ++v4;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_10046D028(void *a1, char a2)
{
  v2 = off_100895FD0[a2];
  v3 = v2[2];
  if (v3)
  {
    sub_1007714EC();
    v5 = 4;
    do
    {
      v6 = [a1 colorWithAlphaComponent:*&v2[v5]];
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      ++v5;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}