id sub_1006A7CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v7 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  __chkstk_darwin(v7 - 8);
  v9 = &ObjectType - v8;
  v10 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  *&v11 = __chkstk_darwin(v10 - 8).n128_u64[0];
  v13 = &ObjectType - v12;
  if (a1)
  {
    v14 = *&v3[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_writeReviewButton];
    v15 = qword_1009415A8;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = qword_1009A3420;
    v17 = sub_10076B8EC();
    sub_100740550(v16, v17, v18);

    v19 = sub_10077111C();
    (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
    sub_10077114C();
    [v14 setHidden:{0, ObjectType}];
    v32 = a1;
    sub_10076B90C();
    sub_10076F64C();
    sub_1006A8164();
    sub_10076F56C();

    v20 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
    (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
    v21 = OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_writeReviewAction;
    swift_beginAccess();
    sub_1002F0390(v9, &v4[v21]);
    swift_endAccess();
  }

  else
  {
    [*&v3[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_writeReviewButton] setHidden:{1, v11, ObjectType}];
  }

  if (a2)
  {
    v22 = *&v4[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_supportButton];
    v23 = qword_1009415B0;

    if (v23 != -1)
    {
      swift_once();
    }

    v24 = qword_1009A3428;
    v25 = sub_10076B8EC();
    sub_100740550(v24, v25, v26);

    v27 = sub_10077111C();
    (*(*(v27 - 8) + 56))(v13, 0, 1, v27);
    sub_10077114C();
    [v22 setHidden:0];
    v32 = a2;
    sub_10076B90C();
    sub_10076F64C();
    sub_1006A8164();
    sub_10076F56C();

    v28 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
    (*(*(v28 - 8) + 56))(v9, 0, 1, v28);
    v29 = OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_supportAction;
    swift_beginAccess();
    sub_1002F0390(v9, &v4[v29]);
    swift_endAccess();
  }

  else
  {
    [*&v4[OBJC_IVAR____TtC20ProductPageExtension24ProductReviewActionsView_supportButton] setHidden:1];
  }

  return [v4 setNeedsLayout];
}

unint64_t sub_1006A8164()
{
  result = qword_100956710;
  if (!qword_100956710)
  {
    sub_10076B90C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100956710);
  }

  return result;
}

void *sub_1006A81BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_10000A5D4(&qword_1009459C0, &unk_1007A1DA0);
  __chkstk_darwin(v4 - 8);
  v6 = v10 - v5;
  sub_10076083C();
  sub_1006A8468();
  result = sub_10076332C();
  if (v10[1])
  {
    sub_10076F64C();
    sub_10076F56C();
    v8 = sub_10000A5D4(&qword_1009459B8, qword_100787F00);
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    v9 = OBJC_IVAR____TtC20ProductPageExtension30LinkableTextCollectionViewCell_bodyText;
    swift_beginAccess();
    sub_10018718C(v6, v3 + v9);
    swift_endAccess();
    sub_100083C50();

    return sub_1001871FC(v6);
  }

  return result;
}

uint64_t sub_1006A8340@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30LinkableTextCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10004B630(v1 + v3, a1);
}

uint64_t sub_1006A839C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20ProductPageExtension30LinkableTextCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000516DC(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_1006A8468()
{
  result = qword_1009467D0;
  if (!qword_1009467D0)
  {
    sub_10076083C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009467D0);
  }

  return result;
}

double sub_1006A84C0@<D0>(void (*a1)(__n128)@<X0>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v33 = a4;
  v34 = a3;
  v5 = sub_10076CB8C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_100956760, &qword_1007A1D98);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = sub_10000A5D4(&qword_100956758, &qword_1007A1D90);
  v14 = *(v13 - 8);
  v31 = v13;
  v32 = v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v30 - v16;
  a1(v15);
  v18 = sub_1006A91A8(&qword_100956768, &type metadata accessor for ActivityFeedPlatterView, &protocol conformance descriptor for ActivityFeedPlatterView);
  sub_10076EE0C();
  (*(v6 + 8))(v8, v5);
  v19 = sub_10076F64C();
  v35 = v5;
  v36 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10076EDDC();
  (*(v10 + 8))(v12, v9);
  v35 = v9;
  v36 = v19;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v21 = v33;
  v22 = v31;
  sub_10076EDEC();
  (*(v32 + 8))(v17, v22);
  sub_100760C4C();
  sub_10076FC1C();
  v23 = v35;
  sub_1006A91A8(&qword_10094CE20, &type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
  v24 = sub_10076E92C();
  v25 = (v21 + *(sub_10000A5D4(&qword_100956750, &qword_1007A1D88) + 36));
  *v25 = v24;
  v25[1] = v23;
  KeyPath = swift_getKeyPath();
  v27 = *(v34 + OBJC_IVAR____TtC20ProductPageExtension22SwiftUIViewHostingCell_flowPreview);
  v28 = (v21 + *(sub_10000A5D4(&qword_100956738, &qword_1007A1D80) + 36));
  *v28 = KeyPath;
  v28[1] = v27;

  return result;
}

double sub_1006A889C@<D0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a4;
  v32 = a3;
  v27[1] = a2;
  v5 = sub_10000A5D4(&qword_100954FC0, &qword_10079F200);
  __chkstk_darwin(v5);
  v7 = v27 - v6;
  v8 = sub_10000A5D4(&qword_100954FB8, &qword_10079F1F8);
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v27 - v9;
  v11 = sub_10000A5D4(&qword_100954FB0, &qword_10079F1F0);
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = v27 - v13;
  a1(v12);
  v15 = sub_100071820(&qword_100954FC8, &qword_100954FC0, &qword_10079F200, &protocol conformance descriptor for IDView<A, B>);
  sub_10076EE0C();
  sub_10000CFBC(v7, &qword_100954FC0, &qword_10079F200);
  v16 = sub_10076F64C();
  v33 = v5;
  v34 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10076EDDC();
  (*(v28 + 8))(v10, v8);
  v33 = v8;
  v34 = v16;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v18 = v30;
  v19 = v31;
  sub_10076EDEC();
  (*(v29 + 8))(v14, v18);
  sub_100760C4C();
  sub_10076FC1C();
  v20 = v33;
  sub_1006A91A8(&qword_10094CE20, &type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
  v21 = sub_10076E92C();
  v22 = (v19 + *(sub_10000A5D4(&qword_100954FA8, &qword_10079F1E8) + 36));
  *v22 = v21;
  v22[1] = v20;
  KeyPath = swift_getKeyPath();
  v24 = *(v32 + OBJC_IVAR____TtC20ProductPageExtension22SwiftUIViewHostingCell_flowPreview);
  v25 = (v19 + *(sub_10000A5D4(&qword_100954F90, &qword_10079F1E0) + 36));
  *v25 = KeyPath;
  v25[1] = v24;

  return result;
}

uint64_t sub_1006A8C4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076EA9C();
  *a1 = result;
  return result;
}

double sub_1006A8CA4(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6, double a7)
{
  v8 = [a6 snapshotPageTraitEnvironment];
  swift_getObjectType();
  v9 = swift_unknownObjectRetain();
  v10 = sub_100582810(v9, a7);
  swift_unknownObjectRelease_n();
  return v10;
}

uint64_t sub_1006A8DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&qword_100956728, &unk_1007A1D70);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_10000A5D4(&qword_100956730, &unk_1007ABEA0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v25 - v11;
  __chkstk_darwin(v13);
  v15 = &v25 - v14;
  __chkstk_darwin(v16);
  v18 = &v25 - v17;
  __chkstk_darwin(v19);
  v21 = &v25 - v20;
  v26 = sub_10076CBBC();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076886C();
  sub_10076882C();
  sub_10076885C();
  sub_10076884C();
  sub_10076883C();
  sub_10076881C();
  v34 = v23;
  v35 = v28;
  v36 = a3;
  v37 = v21;
  v38 = v18;
  v39 = v15;
  v40 = v12;
  v41 = v9;
  v29 = sub_100409178;
  v30 = &v33;
  v31 = a3;
  v32 = v28;
  sub_10000A5D4(&qword_100956738, &qword_1007A1D80);
  sub_100409198();
  sub_10076EC9C();
  sub_10076ECFC();
  v42[3] = v4;
  v42[4] = sub_100071820(&unk_100956790, &qword_100956728, &unk_1007A1D70, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_10000DB7C(v42);
  sub_10076EC8C();
  (*(v27 + 8))(v6, v4);
  sub_1007707FC();
  sub_10000CFBC(v9, &qword_100956730, &unk_1007ABEA0);
  sub_10000CFBC(v12, &qword_100956730, &unk_1007ABEA0);
  sub_10000CFBC(v15, &qword_100956730, &unk_1007ABEA0);
  sub_10000CFBC(v18, &qword_100956730, &unk_1007ABEA0);
  sub_10000CFBC(v21, &qword_100956730, &unk_1007ABEA0);
  return (*(v25 + 8))(v23, v26);
}

uint64_t sub_1006A91A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006A91F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076EA9C();
  *a1 = result;
  return result;
}

double sub_1006A9248(uint64_t a1, NSString a2)
{
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21AppShowcaseLockupView_offerLabel];
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

uint64_t sub_1006A93FC(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  sub_10076D63C();
  if (*(v6 + 1) == 1)
  {
    v12 = sub_10076DFFC();
    v13 = &protocol witness table for Resize;
    v8 = sub_10000DB7C(v11);
    sub_1006A95F0(a1, v8);
  }

  else
  {
    sub_10000A570(v6 + 104, v10);
    v12 = sub_10076E04C();
    v13 = &protocol witness table for Margins;
    sub_10000DB7C(v11);
    sub_10076E03C();
  }

  sub_10076D5FC();
  sub_10000CD74(v11);
  sub_1007704BC();
  sub_10000CF78((v6 + 144), *(v6 + 168));
  sub_10076D2DC();
  v10[3] = sub_10076E04C();
  v10[4] = &protocol witness table for Margins;
  sub_10000DB7C(v10);
  sub_10076E03C();
  sub_10076DF9C();
  v12 = sub_10076DFAC();
  v13 = &protocol witness table for Center;
  sub_10000DB7C(v11);
  sub_10076DFBC();
  sub_10076D5FC();
  return sub_10000CD74(v11);
}

uint64_t sub_1006A95F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v6;
  v48 = a2;
  v45 = sub_10076DFEC();
  v9 = *(v45 - 8);
  __chkstk_darwin(v45);
  v49 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v47 = (&v37 - v12);
  __chkstk_darwin(v13);
  v46 = (&v37 - v14);
  __chkstk_darwin(v15);
  v17 = (&v37 - v16);
  v18 = sub_10076E04C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10076D58C();
  v44 = *(v39 - 8);
  __chkstk_darwin(v39);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076D55C();
  sub_10076D56C();
  sub_100770A3C();
  CGRectGetWidth(v54);
  v24 = [a1 preferredContentSizeCategory];
  sub_10077087C();

  v40 = v7;
  sub_10000A570(v7 + 104, v51);
  v42 = v21;
  sub_10076E03C();
  v50[3] = v18;
  v50[4] = &protocol witness table for Margins;
  v41 = v18;
  v25 = sub_10000DB7C(v50);
  v43 = v19;
  (*(v19 + 16))(v25, v21, v18);
  *v17 = sub_10007C300;
  v17[1] = 0;
  v26 = *(v9 + 104);
  v27 = v45;
  v26(v17, enum case for Resize.Rule.recalculated(_:), v45);
  v28 = enum case for Resize.Rule.unchanged(_:);
  v29 = v46;
  v26(v46, enum case for Resize.Rule.unchanged(_:), v27);
  v30 = v47;
  v26(v47, v28, v27);
  v26(v49, v28, v27);
  v52 = sub_10076DFFC();
  v53 = &protocol witness table for Resize;
  sub_10000DB7C(v51);
  sub_10076E00C();
  v31 = v23;
  v38 = v23;
  sub_10076D56C();
  sub_10000CD74(v51);
  v32 = v39;
  v52 = v39;
  v53 = &protocol witness table for DisjointStack;
  v33 = sub_10000DB7C(v51);
  v34 = v44;
  (*(v44 + 16))(v33, v31, v32);
  v26(v17, v28, v27);
  v35 = *(v40 + 48);
  v29[3] = &type metadata for CGFloat;
  v29[4] = &protocol witness table for CGFloat;
  *v29 = v35;
  v26(v29, enum case for Resize.Rule.replaced(_:), v27);
  v26(v30, v28, v27);
  v26(v49, v28, v27);
  sub_10076E00C();
  (*(v43 + 8))(v42, v41);
  return (*(v34 + 8))(v38, v32);
}

uint64_t sub_1006A9BC8()
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

uint64_t sub_1006A9D70()
{
  v0 = sub_10076D54C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v5 = enum case for DisjointStack.EdgePosition.anchored(_:);
  v6 = *(v1 + 104);
  (v6)(v4, enum case for DisjointStack.EdgePosition.anchored(_:), v0, v2);
  sub_10076D4FC();
  v4[3] = &type metadata for Double;
  v4[4] = &protocol witness table for Double;
  *v4 = 0;
  v6(v4, v5, v0);
  return sub_10076D50C();
}

uint64_t sub_1006A9E94(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1006A9EDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_1006A9F58(void *a1, __n128 a2, double a3)
{
  v5 = a2.n128_f64[0];
  v6 = sub_10076D65C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006A93FC(a1, 0.0, 0.0, v5, a3);
  sub_10076E0FC();
  v11 = v10;
  (*(v7 + 8))(v9, v6);
  return v11;
}

uint64_t sub_1006AA090(void *a1, __n128 a2, double a3, double a4, double a5)
{
  v9 = a2.n128_f64[0];
  v10 = sub_10076D65C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1006A93FC(a1, v9, a3, a4, a5);
  sub_10076E0EC();
  return (*(v11 + 8))(v13, v10);
}

__n128 sub_1006AA1B8@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v2;
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1006AA1CC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[64])
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

uint64_t sub_1006AA220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1006AA284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100770F9C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v8 - 8);
  v10 = &v20 - v9;
  if (!a1)
  {
    v13 = sub_10077111C();
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    goto LABEL_5;
  }

  sub_10077113C();
  v11 = sub_10077111C();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_5:
    sub_10014D314(v10);
    sub_10077108C();
    goto LABEL_6;
  }

  (*(v12 + 32))(a2, v10, v11);
LABEL_6:
  (*(v5 + 104))(v7, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v4);
  sub_100770FAC();
  v14 = objc_opt_self();
  v15 = [v14 systemBlueColor];
  sub_10077104C();
  sub_1000325F0();
  v16 = [v14 whiteColor];
  v17.super.isa = [v14 tertiarySystemGroupedBackgroundColor];
  v18.super.isa = v16;
  sub_100770DEC(v18, v17);
  sub_10077103C();
  return sub_100770FEC();
}

uint64_t sub_1006AA520()
{
  v1._object = 0x80000001007F52A0;
  v1._countAndFlagsBits = 0xD000000000000016;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  return sub_1007622EC(v1, v2);
}

uint64_t sub_1006AA544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51[1] = a1;
  v7 = sub_10000A5D4(&qword_100942698, &qword_10079DCB0);
  __chkstk_darwin(v7 - 8);
  v51[0] = v51 - v8;
  v57 = sub_10076D1AC();
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076D3DC();
  v61 = *(v11 - 8);
  __chkstk_darwin(v11);
  v52 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v60 = v51 - v14;
  v15 = sub_10075D9EC();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10075D99C();
  v58 = *(v16 - 8);
  v59 = v16;
  __chkstk_darwin(v16);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&unk_10095B400, &unk_100783F80);
  __chkstk_darwin(v19 - 8);
  v54 = v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = v51 - v23;
  v25 = *(a4 + 16);
  v62 = a3;
  v63 = a4;
  v26 = a4;
  v27 = v4;
  v53 = v25;
  v28 = (v25)(a3, v26, v22);
  sub_10077113C();

  sub_10075D9DC();
  sub_10075D9AC();
  v64 = v27;
  v29 = [v27 traitCollection];
  v30 = sub_1007700AC();
  v56 = v18;
  if (v29 && (sub_10077071C() & 1) != 0)
  {
    if (v30 < 9)
    {
LABEL_4:
      v31 = v61;
      if (qword_100940E30 != -1)
      {
        swift_once();
      }

      v32 = qword_1009A1888;
      goto LABEL_11;
    }
  }

  else if (v30 <= 6)
  {
    goto LABEL_4;
  }

  v31 = v61;
  if (qword_100940E38 != -1)
  {
    swift_once();
  }

  v32 = qword_1009A18A0;
LABEL_11:
  v33 = sub_10000A61C(v11, v32);
  v34 = *(v31 + 16);
  v35 = v52;
  v34(v52, v33, v11);

  v36 = v60;
  (*(v31 + 32))(v60, v35, v11);
  v34(v10, v36, v11);
  v37 = v55;
  v38 = v57;
  (*(v55 + 104))(v10, enum case for FontSource.useCase(_:), v57);
  v39.super.isa = [v64 traitCollection];
  isa = v39.super.isa;
  v41 = sub_10076D19C(v39).super.isa;

  (*(v37 + 8))(v10, v38);
  v65 = v41;
  sub_100016BD0();
  v42 = v41;
  v43 = v56;
  sub_10075D9BC();
  v44 = sub_10077111C();
  v45 = (*(*(v44 - 8) + 48))(v24, 1, v44);
  v47 = v58;
  v46 = v59;
  if (!v45)
  {
    v48 = v51[0];
    (*(v58 + 16))(v51[0], v43, v59);
    (*(v47 + 56))(v48, 0, 1, v46);
    sub_10077101C();
  }

  v49 = v53(v62, v63);
  sub_10014D2A4(v24, v54);
  sub_10077114C();

  (*(v31 + 8))(v36, v11);
  (*(v47 + 8))(v43, v46);
  return sub_10014D314(v24);
}

void sub_1006AAC1C(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  v12 = sub_10076B5BC();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a5 bounds];
  [a5 safeAreaInsets];
  sub_100770ACC();
  if ((a2 & 1) == 0)
  {
    v17 = sub_10041329C();
    if (v17)
    {
      v19 = v17;
      v20 = v18;
      swift_getObjectType();
      [a4 pageMarginInsets];
      (*(v20 + 32))(0, a4, v19, v20, v21);
      v22 = [a4 traitCollection];
      LOBYTE(v19) = (*(*v6 + 696))(a1, v22);

      if (v19)
      {
        v23 = sub_1006B6510(a1, a3, a4);
        (*(v13 + 16))(v16, a1, v12);
        v24 = (*(v13 + 88))(v16, v12);
        if (v24 != enum case for Shelf.ContentType.annotation(_:) && v24 != enum case for Shelf.ContentType.productCapability(_:) && v24 != enum case for Shelf.ContentType.productPageLink(_:) && v24 != enum case for Shelf.ContentType.privacyType(_:))
        {
          (*(v13 + 8))(v16, v12);
          PageTraitEnvironment.pageColumnMargin.getter();
          if (!__OFSUB__(v23, 1))
          {
            return;
          }

LABEL_13:
          __break(1u);
          return;
        }

        if (__OFSUB__(v23, 1))
        {
          __break(1u);
          goto LABEL_13;
        }
      }
    }
  }
}

double sub_1006AAF18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v35 = a4;
  LODWORD(v33) = a3;
  v31 = *v4;
  v5 = v31;
  v32 = a2;
  v6 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_10076B5BC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v30 - v14;
  v16 = *(v5 + 80);
  v17 = sub_100761B4C();
  sub_10076B5CC();
  v34 = v16;
  if (v33)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    v18 = 0;
    v19 = v35;
  }

  else
  {
    v33 = v17;
    sub_100761A7C();
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_100761B5C();
    if (v20)
    {

      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = v35;
  }

  (*(v10 + 16))(v12, v15, v9);
  v21 = (*(v10 + 88))(v12, v9);
  if (v21 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v22 = &off_1008A1710;
  }

  else
  {
    if (v21 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v10 + 8))(v12, v9);
      goto LABEL_14;
    }

    type metadata accessor for InformationRibbonCollectionViewCell(0);
    v22 = &off_100891580;
  }

  v23 = (v22[1])();
  if ((v24 & 1) == 0)
  {
LABEL_17:
    v28 = *&v23;

    v27 = v28;
    goto LABEL_18;
  }

LABEL_14:
  if (sub_10041329C())
  {
    v23 = (*(v25 + 40))(v8, v18, v19);
    if ((v26 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v27 = sub_1006BACCC(v19);

LABEL_18:
  sub_10000CFBC(v8, &unk_1009568A0, &qword_100784890);
  (*(v10 + 8))(v15, v9);
  return v27;
}

void sub_1006AB314(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v212 = a2;
  v213 = a3;
  v205 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v205);
  v189 = &v174 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v196 = &v174 - v6;
  v211 = sub_100763BBC();
  v204 = *(v211 - 8);
  __chkstk_darwin(v211);
  v201 = &v174 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v210 = &v174 - v9;
  v10 = sub_10000A5D4(&qword_100949710, "fc\a");
  __chkstk_darwin(v10 - 8);
  v200 = &v174 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v199 = &v174 - v13;
  __chkstk_darwin(v14);
  v209 = &v174 - v15;
  __chkstk_darwin(v16);
  v208 = &v174 - v17;
  v18 = sub_10000A5D4(&qword_100949718, &unk_10078CE10);
  __chkstk_darwin(v18 - 8);
  v188 = &v174 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v187 = &v174 - v21;
  __chkstk_darwin(v22);
  v195 = &v174 - v23;
  __chkstk_darwin(v24);
  v194 = &v174 - v25;
  v26 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v202 = *(v26 - 8);
  v203 = v26;
  __chkstk_darwin(v26);
  v186 = &v174 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v185 = &v174 - v29;
  __chkstk_darwin(v30);
  v184 = &v174 - v31;
  __chkstk_darwin(v32);
  v198 = &v174 - v33;
  __chkstk_darwin(v34);
  v193 = &v174 - v35;
  __chkstk_darwin(v36);
  v192 = &v174 - v37;
  __chkstk_darwin(v38);
  v191 = &v174 - v39;
  __chkstk_darwin(v40);
  v207 = &v174 - v41;
  v42 = sub_10000A5D4(&unk_10094BB80, &qword_100791CF0);
  __chkstk_darwin(v42 - 8);
  v176 = &v174 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v179 = &v174 - v45;
  __chkstk_darwin(v46);
  v178 = &v174 - v47;
  __chkstk_darwin(v48);
  v181 = &v174 - v49;
  __chkstk_darwin(v50);
  v197 = &v174 - v51;
  __chkstk_darwin(v52);
  v175 = &v174 - v53;
  __chkstk_darwin(v54);
  v177 = &v174 - v55;
  __chkstk_darwin(v56);
  v180 = &v174 - v57;
  __chkstk_darwin(v58);
  v183 = &v174 - v59;
  __chkstk_darwin(v60);
  v182 = &v174 - v61;
  __chkstk_darwin(v62);
  v206 = &v174 - v63;
  v64 = sub_1007621EC();
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v67 = &v174 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v68);
  v70 = &v174 - v69;
  v71 = sub_100761A5C();
  v72 = 0;
  if (v71)
  {
    v72 = sub_100761B4C();
  }

  v214 = v72;
  sub_100761B6C();
  v74 = v73;
  if (v73)
  {
  }

  v190 = v74;
  sub_100761B7C();
  v76 = v75;
  if (v75)
  {
  }

  sub_100761A6C();
  (*(v65 + 104))(v67, enum case for ShelfBackground.interactive(_:), v64);
  v77 = sub_1007621DC();
  v78 = *(v65 + 8);
  v78(v67, v64);
  v78(v70, v64);
  v79 = v212;
  v80 = sub_1006B2104(a1, v212);
  v81 = sub_1006B1EE0(a1, v79);
  if (v77)
  {
    sub_1005706B8(v76 != 0, v213);

    return;
  }

  v82 = v76;
  v174 = v76;
  if (v80)
  {
    if (v214)
    {

      v83 = sub_10076B77C();

      v84 = v191;
      v85 = v206;
      if (v83)
      {
        sub_10076035C();

        v86 = 0;
      }

      else
      {
        v86 = 1;
      }
    }

    else
    {
      v86 = 1;
      v84 = v191;
      v85 = v206;
    }

    v90 = sub_10076034C();
    v91 = *(v90 - 8);
    (*(v91 + 56))(v85, v86, 1, v90);
    v92 = sub_100763BAC();
    v201 = *(v92 - 1);
    (*(v201 + 7))(v208, 1, 1, v92);
    v212 = v92;
    if (v82)
    {
      v93 = (v91 + 48);
      v94 = v85;
      if (v80 == 1)
      {
        v95 = v182;
        sub_100016E2C(v94, v182, &unk_10094BB80, &qword_100791CF0);
        if ((*v93)(v95, 1, v90) == 1)
        {
          sub_10000CFBC(v95, &unk_10094BB80, &qword_100791CF0);
          v96 = 0;
        }

        else
        {
          v96 = sub_1007602EC();
          (*(v91 + 8))(v95, v90);
        }

        v106 = v203;
        v107 = v194;
        sub_100286F40(v96, v207);

        if (qword_10093FC98 != -1)
        {
          swift_once();
        }

        v108 = qword_10099E078;
      }

      else
      {
        v100 = v183;
        sub_100016E2C(v94, v183, &unk_10094BB80, &qword_100791CF0);
        if ((*v93)(v100, 1, v90) == 1)
        {
          sub_10000CFBC(v100, &unk_10094BB80, &qword_100791CF0);
          v101 = 0;
        }

        else
        {
          v101 = sub_1007602EC();
          (*(v91 + 8))(v100, v90);
        }

        v106 = v203;
        v107 = v194;
        sub_100286F40(v101, v207);

        if (qword_10093FC88 != -1)
        {
          swift_once();
        }

        v108 = qword_10099E048;
      }

      v109 = sub_10000A61C(v106, v108);
      sub_10011BA50(v109, v84, v110);
      if (qword_10093FC48 != -1)
      {
        swift_once();
      }

      v111 = 0;
      v112 = qword_10099DF88;
      v113 = v107;
    }

    else
    {
      if (v80 == 1)
      {
        v97 = v85;
        v98 = v180;
        sub_100016E2C(v97, v180, &unk_10094BB80, &qword_100791CF0);
        if ((*(v91 + 48))(v98, 1, v90) == 1)
        {
          sub_10000CFBC(v98, &unk_10094BB80, &qword_100791CF0);
          v99 = 0;
        }

        else
        {
          v99 = sub_1007602EC();
          (*(v91 + 8))(v98, v90);
        }

        v106 = v203;
        v107 = v194;
        sub_100286F40(v99, v207);

        if (qword_10093FC90 != -1)
        {
          swift_once();
        }

        v111 = 1;
        v112 = qword_10099E060;
      }

      else
      {
        v102 = (v91 + 48);
        if (v190)
        {
          v103 = v85;
          v104 = v177;
          sub_100016E2C(v103, v177, &unk_10094BB80, &qword_100791CF0);
          if ((*v102)(v104, 1, v90) == 1)
          {
            sub_10000CFBC(v104, &unk_10094BB80, &qword_100791CF0);
            v105 = 0;
          }

          else
          {
            v105 = sub_1007602EC();
            (*(v91 + 8))(v104, v90);
          }

          v106 = v203;
          v107 = v194;
          sub_100286F48(v105, v207);

          if (qword_10093FC80 != -1)
          {
            swift_once();
          }

          v111 = 1;
          v112 = qword_10099E030;
        }

        else
        {
          v130 = v85;
          v131 = v175;
          sub_100016E2C(v130, v175, &unk_10094BB80, &qword_100791CF0);
          if ((*v102)(v131, 1, v90) == 1)
          {
            sub_10000CFBC(v131, &unk_10094BB80, &qword_100791CF0);
            v132 = 0;
          }

          else
          {
            v132 = sub_1007602EC();
            (*(v91 + 8))(v131, v90);
          }

          v106 = v203;
          v107 = v194;
          sub_100286F40(v132, v207);

          if (qword_10093FC78 != -1)
          {
            swift_once();
          }

          v111 = 1;
          v112 = qword_10099E018;
        }
      }

      v113 = v84;
    }

    LODWORD(v203) = v82 != 0;
    v156 = sub_10000A61C(v106, v112);
    sub_10011BA50(v156, v113, v157);
    v158.n128_f64[0] = (*(v202 + 56))(v107, v111, 1, v106);
    v159 = v207;
    v160 = v192;
    sub_10011BA50(v207, v192, v158);
    v161 = v193;
    sub_10011BA50(v84, v193, v162);
    v163 = v195;
    sub_100016E2C(v107, v195, &qword_100949718, &unk_10078CE10);
    v164 = v208;
    sub_100016E2C(v208, v209, &qword_100949710, "fc\a");
    v165 = v204;
    v166 = v211;
    (*(v204 + 104))(v210, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v211);
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v202 = sub_100770CDC();

    sub_10000CFBC(v164, &qword_100949710, "fc\a");
    sub_10000CFBC(v107, &qword_100949718, &unk_10078CE10);
    sub_10013B184(v84, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10013B184(v159, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10000CFBC(v206, &unk_10094BB80, &qword_100791CF0);
    v167 = v205;
    v168 = *(v205 + 32);
    v169 = v196;
    sub_10011BB10(v160, v196, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_10011BB10(v161, v169 + v167[5], type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100023AD0(v163, v169 + v167[6], &qword_100949718, &unk_10078CE10);
    *(v169 + v167[7]) = 0;
    *(v169 + v168) = 0;
    *(v169 + v167[9]) = v203;
    *(v169 + v167[14]) = 0x4030000000000000;
    *(v169 + v167[12]) = 0;
    *(v169 + v167[13]) = v202;
    v170 = v209;
    (*(v165 + 32))(v169 + v167[11], v210, v166);
    v171 = v201;
    v172 = v212;
    if ((*(v201 + 6))(v170, 1, v212) == 1)
    {
      sub_10000CFBC(v170, &qword_100949710, "fc\a");
      if (v174)
      {
        v173 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
      }

      else
      {
        v173 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
      }

      (*(v171 + 13))(v169 + v167[10], *v173, v172);
    }

    else
    {
      (*(v171 + 4))(v169 + v167[10], v170, v172);
    }

    v155 = v169;
    goto LABEL_103;
  }

  LODWORD(v212) = v81;
  if (v214)
  {

    v87 = sub_10076B77C();

    v88 = v197;
    if (v87)
    {
      sub_10076035C();

      v89 = 0;
    }

    else
    {
      v89 = 1;
    }
  }

  else
  {
    v89 = 1;
    v88 = v197;
  }

  v114 = sub_10076034C();
  v115 = *(v114 - 8);
  (*(v115 + 56))(v88, v89, 1, v114);
  v116 = sub_100763BAC();
  v209 = *(v116 - 8);
  (*(v209 + 56))(v199, 1, 1, v116);
  v117 = (v115 + 48);
  v210 = v116;
  if (v190)
  {
    if (v82)
    {
      v118 = v181;
      sub_100016E2C(v88, v181, &unk_10094BB80, &qword_100791CF0);
      if ((*v117)(v118, 1, v114) == 1)
      {
        sub_10000CFBC(v118, &unk_10094BB80, &qword_100791CF0);
        v119 = 0;
      }

      else
      {
        v119 = sub_1007602EC();
        (*(v115 + 8))(v118, v114);
      }

      v124 = v203;
      v125 = v187;
      v126 = v184;
      sub_100286F40(v119, v198);

      if (qword_10093FC70 != -1)
      {
        swift_once();
      }

      v127 = qword_10099E000;
LABEL_68:
      v133 = sub_10000A61C(v124, v127);
      sub_10011BA50(v133, v126, v134);
      if (qword_10093FC48 != -1)
      {
        swift_once();
      }

      v135 = 0;
      v136 = qword_10099DF88;
      v137 = v125;
      goto LABEL_84;
    }

    v122 = v178;
    sub_100016E2C(v88, v178, &unk_10094BB80, &qword_100791CF0);
    if ((*v117)(v122, 1, v114) == 1)
    {
      sub_10000CFBC(v122, &unk_10094BB80, &qword_100791CF0);
      v123 = 0;
    }

    else
    {
      v123 = sub_1007602EC();
      (*(v115 + 8))(v122, v114);
    }

    v124 = v203;
    v125 = v187;
    v126 = v184;
    sub_100286F40(v123, v198);

    if (qword_10093FC58 != -1)
    {
      swift_once();
    }

    v135 = 1;
    v136 = qword_10099DFB8;
  }

  else
  {
    if (v82)
    {
      v120 = v179;
      sub_100016E2C(v88, v179, &unk_10094BB80, &qword_100791CF0);
      if ((*v117)(v120, 1, v114) == 1)
      {
        sub_10000CFBC(v120, &unk_10094BB80, &qword_100791CF0);
        v121 = 0;
      }

      else
      {
        v121 = sub_1007602EC();
        (*(v115 + 8))(v120, v114);
      }

      v124 = v203;
      v125 = v187;
      v126 = v184;
      sub_100286F40(v121, v198);

      if (qword_10093FC68 != -1)
      {
        swift_once();
      }

      v127 = qword_10099DFE8;
      goto LABEL_68;
    }

    v128 = v176;
    sub_100016E2C(v88, v176, &unk_10094BB80, &qword_100791CF0);
    if ((*v117)(v128, 1, v114) == 1)
    {
      sub_10000CFBC(v128, &unk_10094BB80, &qword_100791CF0);
      v129 = 0;
    }

    else
    {
      v129 = sub_1007602EC();
      (*(v115 + 8))(v128, v114);
    }

    v124 = v203;
    v125 = v187;
    v126 = v184;
    sub_100286F40(v129, v198);

    if (qword_10093FC50 != -1)
    {
      swift_once();
    }

    v135 = 1;
    v136 = qword_10099DFA0;
  }

  v137 = v126;
LABEL_84:
  LODWORD(v208) = v82 != 0;
  v138 = sub_10000A61C(v124, v136);
  sub_10011BA50(v138, v137, v139);
  v140.n128_f64[0] = (*(v202 + 56))(v125, v135, 1, v124);
  v141 = v198;
  v142 = v185;
  sub_10011BA50(v198, v185, v140);
  v143 = v186;
  sub_10011BA50(v126, v186, v144);
  v145 = v188;
  sub_100016E2C(v125, v188, &qword_100949718, &unk_10078CE10);
  v146 = v199;
  sub_100016E2C(v199, v200, &qword_100949710, "fc\a");
  v147 = v204;
  (*(v204 + 104))(v201, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v211);
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v207 = sub_100770CDC();

  sub_10000CFBC(v146, &qword_100949710, "fc\a");
  sub_10000CFBC(v125, &qword_100949718, &unk_10078CE10);
  sub_10013B184(v126, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10013B184(v141, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000CFBC(v197, &unk_10094BB80, &qword_100791CF0);
  v148 = v205;
  v149 = *(v205 + 32);
  v150 = v189;
  sub_10011BB10(v142, v189, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10011BB10(v143, v150 + v148[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100023AD0(v145, v150 + v148[6], &qword_100949718, &unk_10078CE10);
  *(v150 + v148[7]) = v212 & 1;
  *(v150 + v149) = 0;
  *(v150 + v148[9]) = v208;
  *(v150 + v148[14]) = 0x4030000000000000;
  *(v150 + v148[12]) = 0;
  *(v150 + v148[13]) = v207;
  (*(v147 + 32))(v150 + v148[11], v201, v211);
  v151 = v200;
  v153 = v209;
  v152 = v210;
  if ((*(v209 + 48))(v200, 1, v210) == 1)
  {
    sub_10000CFBC(v151, &qword_100949710, "fc\a");
    if (v174)
    {
      v154 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v154 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (*(v153 + 104))(v150 + v148[10], *v154, v152);
  }

  else
  {
    (*(v153 + 32))(v150 + v148[10], v151, v152);
  }

  v155 = v150;
LABEL_103:
  sub_10011BB10(v155, v213, type metadata accessor for TitleHeaderView.Style);
}

void *sub_1006ACC6C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();

  return v0;
}

void sub_1006ACCC4(void *a1)
{
  v3 = sub_10075DFDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v26 - v8;
  __chkstk_darwin(v10);
  v12 = &v26 - v11;
  *(v1 + 80) = 0;
  if (a1)
  {
    v28 = a1;
    v13 = [v28 numberOfSections];
    v14 = sub_100761A9C();
    if (v13 < v14)
    {
      v15 = v14;
      if (__OFSUB__(v14, v13))
      {
        __break(1u);
        goto LABEL_13;
      }

      if (v14 - v13 >= 1)
      {
        v27 = v4;
        sub_1006BCDF0(&qword_10094E190, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
        sub_1007712BC();
        do
        {
          aBlock[6] = v13;
          sub_10077126C();
          ++v13;
        }

        while (v15 != v13);
        v16 = v27;
        v17 = *(v27 + 32);
        v17(v12, v9, v3);
        v18 = objc_opt_self();
        (*(v16 + 16))(v6, v12, v3);
        v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v28;
        v17((v20 + v19), v6, v3);
        v21 = swift_allocObject();
        *(v21 + 16) = sub_1006BB82C;
        *(v21 + 24) = v20;
        aBlock[4] = sub_1000349FC;
        aBlock[5] = v21;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001C5148;
        aBlock[3] = &unk_10089FBE8;
        v22 = _Block_copy(aBlock);
        v23 = v28;

        [v18 performWithoutAnimation:v22];
        _Block_release(v22);

        (*(v16 + 8))(v12, v3);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if ((isEscapingClosureAtFileLocation & 1) == 0)
        {
          return;
        }

LABEL_13:
        __break(1u);
        return;
      }
    }

    v25 = v28;
  }
}

id sub_1006AD0A8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v49 = a4;
  v50 = a2;
  v51 = a3;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = 0;
  if (sub_100761A4C())
  {
    return v14;
  }

  sub_100761A7C();
  v45 = a1;
  v15 = sub_100761A3C();
  v16 = *(v6 + 16);
  v16(v10, v13, v5);
  v46 = v5;
  v47 = v6;
  v17 = *(v6 + 88);
  v18 = v17(v10, v5);
  v19 = v18 == enum case for Shelf.ContentType.smallLockup(_:) || v18 == enum case for Shelf.ContentType.mediumLockup(_:);
  v20 = v50;
  if (v19)
  {
    goto LABEL_7;
  }

  if (v18 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    goto LABEL_10;
  }

  v28 = v18 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v18 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v28 || v18 == enum case for Shelf.ContentType.action(_:))
  {
LABEL_7:
    if ((v15 & 1) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_10;
  }

  if (v18 != enum case for Shelf.ContentType.ribbonBar(_:))
  {
    if (v18 == enum case for Shelf.ContentType.editorialCard(_:) || v18 == enum case for Shelf.ContentType.videoCard(_:))
    {
      goto LABEL_7;
    }

    if (v18 != enum case for Shelf.ContentType.brick(_:) && v18 != enum case for Shelf.ContentType.categoryBrick(_:))
    {
      if (v18 == enum case for Shelf.ContentType.reviews(_:) || v18 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v18 == enum case for Shelf.ContentType.framedVideo(_:) || v18 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v18 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v18 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_7;
      }

      if (v18 != enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        if (v18 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v18 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v18 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v18 == enum case for Shelf.ContentType.posterLockup(_:) || v18 == enum case for Shelf.ContentType.smallContactCard(_:))
        {
          goto LABEL_7;
        }

        if (v18 != enum case for Shelf.ContentType.informationRibbon(_:))
        {
          if (v18 != enum case for Shelf.ContentType.appPromotion(_:))
          {
            (*(v47 + 8))(v10, v46);
            goto LABEL_41;
          }

          goto LABEL_7;
        }
      }
    }
  }

LABEL_10:
  v21 = sub_10041329C();
  if (v21)
  {
    v23 = v45;
    v24 = v51;
    v25 = sub_1006B6E3C(v45, v20, v21, v22, v51, v49);
    v27 = v46;
    v26 = v47;
    goto LABEL_46;
  }

LABEL_41:
  v31 = v48;
  v27 = v46;
  v16(v48, v13, v46);
  v32 = v17(v31, v27);
  if (v32 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v33 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v34 = &off_1008A1710;
    v26 = v47;
LABEL_45:
    v23 = v45;
    [v20 bounds];
    v35 = v34;
    v24 = v51;
    v25 = sub_1006B7158(v23, v36, v37, v13, v33, v35, v51, v49);
    goto LABEL_46;
  }

  v26 = v47;
  if (v32 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v33 = type metadata accessor for InformationRibbonCollectionViewCell(0);
    v34 = &off_100891580;
    goto LABEL_45;
  }

  v42 = *(v47 + 8);
  v42(v31, v27);
  v43 = sub_10041329C();
  v23 = v45;
  if (v43)
  {
    sub_1006B74B0(v45, v13, v43, v44, v51, v20, v49);
    if (!v25)
    {
      v42(v13, v27);
      return 0;
    }

    v24 = v51;
LABEL_46:
    v14 = v25;
    [v14 setContentInsets:{sub_1006AF090(v23, v24)}];
    sub_1006AD9BC(v23, v24, v20);
    sub_100016F40(0, &qword_100948C70, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    isa = sub_1007701AC().super.isa;

    [v14 setBoundarySupplementaryItems:isa];

    sub_1006B8314(v23, v39);
    sub_100016F40(0, &qword_100949DE8, NSCollectionLayoutDecorationItem_ptr);
    v40 = sub_1007701AC().super.isa;

    [v14 setDecorationItems:v40];

    (*(v26 + 8))(v13, v27);
    return v14;
  }

  v53 = 0;
  v54 = 0xE000000000000000;
  sub_10077145C(62);
  v55._object = 0x80000001007F5400;
  v55._countAndFlagsBits = 0xD00000000000002ELL;
  sub_1007700CC(v55);
  sub_10077151C();
  v56._countAndFlagsBits = 0x7463657320746120;
  v56._object = 0xEC000000206E6F69;
  sub_1007700CC(v56);
  v52 = v23;
  v57._countAndFlagsBits = sub_10077163C();
  sub_1007700CC(v57);

  result = sub_10077156C();
  __break(1u);
  return result;
}

id sub_1006AD7D8(void *a1)
{
  if (*(v1 + 80) != 1)
  {
    return 0;
  }

  v2 = [a1 traitCollection];
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v3 = sub_10076D9AC();
  sub_10000A61C(v3, qword_1009A2380);
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007841E0;
  *(v4 + 32) = v2;
  v5 = v2;
  v6 = sub_10076DEEC();
  sub_10076D3EC();
  v8 = v7;

  v9 = objc_opt_self();
  v10 = [v9 fractionalWidthDimension:1.0];
  v11 = [v9 absoluteDimension:v8];
  v12 = [objc_opt_self() sizeWithWidthDimension:v10 heightDimension:v11];

  v13 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v12 elementKind:UICollectionElementKindSectionFooter alignment:5];
  return v13;
}

void *sub_1006AD9BC(uint64_t a1, void *a2, void *a3)
{
  sub_100761B5C();
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  [a3 bounds];
  v8 = v7;
  sub_1006AFDAC(a1, a2, a3);
  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 absoluteDimension:v8];
  v13 = [v11 absoluteDimension:v10];
  v14 = [objc_opt_self() sizeWithWidthDimension:v12 heightDimension:v13];

  v15 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v14 elementKind:UICollectionElementKindSectionHeader alignment:1];
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1007841E0;
  *(v16 + 32) = v15;

  return v16;
}

uint64_t (*sub_1006ADB6C(uint64_t a1, void *a2, void *a3, uint64_t a4))(uint64_t a1, uint64_t a2, double a3)
{
  v5 = v4;
  v43 = a2;
  v9 = *v4;
  v10 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_10000A5D4(&qword_1009632C0, &unk_10079B000);
  __chkstk_darwin(v13 - 8);
  v15 = &v42 - v14;
  v16 = sub_1006AF090(a1, a3);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v44 = v47;
  sub_100764FAC();
  sub_10076F63C();
  v45 = v47;
  v23 = type metadata accessor for InteractiveSectionBackgroundScrollCoordinator(0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnMargin.getter();
  v25 = v24;
  v26 = v4[2];
  v27 = *(v9 + 80);
  v28 = *(v9 + 96);
  swift_unknownObjectRetain();
  v29 = v43;

  v30 = sub_1005A16EC(a1, v29, v26, a4, v16, v18, v20, v22, v25, v23, v27, v28);

  swift_unknownObjectRelease();
  swift_beginAccess();
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v5[8];
  v5[8] = 0x8000000000000000;
  sub_10024AA2C(v30, a1, isUniquelyReferenced_nonNull_native);
  v5[8] = v46;
  swift_endAccess();
  sub_100761B4C();
  sub_10076B6FC();

  v32 = sub_10076F7FC();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(v12, 1, v32) == 1)
  {
    sub_10000CFBC(v12, &qword_1009492E0, &qword_1007893A0);
    v34 = 1;
  }

  else
  {
    sub_10076F7DC();
    (*(v33 + 8))(v12, v32);
    v34 = 0;
  }

  v35 = sub_10076F7CC();
  (*(*(v35 - 8) + 56))(v15, v34, 1, v35);
  v36 = v44;
  v37 = v44;
  v38 = v45;
  v39 = sub_1006AE750(v15, v36, v45, v30);

  sub_10000CFBC(v15, &qword_1009632C0, &unk_10079B000);
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = &protocol witness table for CompoundScrollObserver;
  return sub_1006BB6E4;
}

uint64_t sub_1006ADF90()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_10076F7FC();
  v41 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v34 - v10;
  v12 = v1[2];
  v13 = *(v2 + 80);
  v45 = *(v2 + 96);
  result = sub_100761A9C();
  if (result < 0)
  {
    goto LABEL_21;
  }

  if (result)
  {
    v15 = 0;
    v43 = result;
    v44 = (v41 + 48);
    v42 = (v41 + 32);
    v39 = v5;
    v40 = (v41 + 16);
    v34 = v41 + 40;
    v35 = (v41 + 8);
    v37 = v12;
    v38 = v11;
    v36 = v13;
    do
    {
      sub_100761B4C();
      sub_10076B6FC();
      if ((*v44)(v5, 1, v6) == 1)
      {

        sub_10000CFBC(v5, &qword_1009492E0, &qword_1007893A0);
      }

      else
      {
        v16 = *v42;
        (*v42)(v11, v5, v6);
        swift_beginAccess();
        v17 = v8;
        v18 = v6;
        (*v40)(v8, v11, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v1[7];
        v20 = v46;
        v21 = v1;
        v1[7] = 0x8000000000000000;
        v23 = sub_10060FF40(v15);
        v24 = v20[2];
        v25 = (v22 & 1) == 0;
        v26 = v24 + v25;
        if (__OFADD__(v24, v25))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          result = sub_1007716DC();
          __break(1u);
          return result;
        }

        v27 = v22;
        if (v20[3] >= v26)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10024CB84();
          }
        }

        else
        {
          sub_100248370(v26, isUniquelyReferenced_nonNull_native);
          v28 = sub_10060FF40(v15);
          if ((v27 & 1) != (v29 & 1))
          {
            goto LABEL_22;
          }

          v23 = v28;
        }

        v8 = v17;
        v30 = v46;
        if (v27)
        {
          v6 = v18;
          (*(v41 + 40))(v46[7] + *(v41 + 72) * v23, v17, v18);
        }

        else
        {
          v46[(v23 >> 6) + 8] |= 1 << v23;
          *(v30[6] + 8 * v23) = v15;
          v6 = v18;
          v16((v30[7] + *(v41 + 72) * v23), v17, v18);
          v31 = v30[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_20;
          }

          v30[2] = v33;
        }

        v1 = v21;
        v21[7] = v30;

        swift_endAccess();

        v11 = v38;
        (*v35)(v38, v6);
        v5 = v39;
      }

      ++v15;
      result = v43;
    }

    while (v43 != v15);
  }

  return result;
}

void sub_1006AE3AC(uint64_t a1)
{
  if (a1)
  {
    __chkstk_darwin(a1);
    v2 = v1;

    sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
    sub_1001C9F18();
    sub_10076F35C();
  }
}

uint64_t sub_1006AE488(double a1, double a2, double a3, double a4)
{
  v5 = sub_10076F7CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_10076F7FC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076B6FC();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10000CFBC(v11, &qword_1009492E0, &qword_1007893A0);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    if (*(v4 + 112))
    {

      sub_1007660EC();

      if (*(v4 + 112))
      {

        sub_10076F7DC();
        v16 = sub_1007660DC();

        (*(v6 + 8))(v8, v5);
        (*(v13 + 8))(v15, v12);
        return v16;
      }
    }

    (*(v13 + 8))(v15, v12);
  }

  return 0;
}

uint64_t sub_1006AE750(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v7 = sub_10000A5D4(&qword_1009632C0, &unk_10079B000);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = sub_10076F7CC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v24 - v15;
  v17 = objc_allocWithZone(sub_1007666AC());
  v18 = sub_10076669C();
  if (!*(v4 + 112))
  {
LABEL_4:
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100016E2C(a1, v9, &qword_1009632C0, &unk_10079B000);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10000CFBC(v9, &qword_1009632C0, &unk_10079B000);
    goto LABEL_4;
  }

  (*(v11 + 32))(v16, v9, v10);
  (*(v11 + 16))(v13, v16, v10);
  sub_10076888C();
  swift_allocObject();
  swift_retain_n();
  sub_10076889C();
  sub_10076668C();

  (*(v11 + 8))(v16, v10);
  if (a2)
  {
LABEL_5:
    sub_10076911C();
    swift_allocObject();
    v19 = a2;
    sub_10076912C();
    sub_10076668C();
  }

LABEL_6:
  v21 = v24;
  v20 = v25;
  if (v24)
  {
    sub_100766B3C();
    swift_allocObject();
    v22 = v21;
    sub_100766B4C();
    sub_10076668C();
  }

  if (v20)
  {
    sub_1006BCDF0(&qword_1009638C0, type metadata accessor for InteractiveSectionBackgroundScrollCoordinator, &unk_1007ACD68);

    sub_10076668C();
  }

  return v18;
}

double sub_1006AEB1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, __n128 a5)
{
  v47 = a4;
  v44 = a3;
  v43[1] = a2;
  v50 = a1;
  v49 = sub_1007621EC();
  v46 = *(v49 - 8);
  __chkstk_darwin(v49);
  v43[0] = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v43 - v7;
  v9 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v9 - 8);
  v11 = v43 - v10;
  v12 = sub_10076B5BC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v43 - v17;
  v50 = sub_100761B4C();
  v51 = v18;
  sub_10076B5CC();
  v48 = v8;
  v45 = v11;
  if (v44)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
    v19 = v46;
    v20 = v49;
    (*(v46 + 104))(v8, enum case for ShelfBackground.none(_:), v49);
  }

  else
  {
    sub_100761A7C();
    (*(v13 + 56))(v11, 0, 1, v12);
    sub_100761A6C();
    v20 = v49;
    v19 = v46;
  }

  v21 = v51;
  (*(v13 + 16))(v15, v51, v12);
  v22 = (*(v13 + 88))(v15, v12);
  v23 = v45;
  v24 = v47;
  if (v22 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    v25 = &off_1008A1710;
  }

  else
  {
    if (v22 != enum case for Shelf.ContentType.informationRibbon(_:))
    {
      (*(v13 + 8))(v15, v12);
      v27 = v48;
      goto LABEL_11;
    }

    type metadata accessor for InformationRibbonCollectionViewCell(0);
    v25 = &off_100891580;
  }

  v26 = (v25[2])();
  v27 = v48;
  v21 = v51;
  if ((v28 & 1) == 0)
  {
    v29 = *&v26;

    v30 = v29;
    (*(v19 + 8))(v27, v20);
    sub_10000CFBC(v23, &unk_1009568A0, &qword_100784890);
    (*(v13 + 8))(v21, v12);
    return v30;
  }

LABEL_11:
  v46 = v12;
  v31 = sub_10041329C();
  if (v31)
  {
    v33 = v31;
    v34 = v32;
    v35 = v43[0];
    sub_10076B57C();
    *&v36 = COERCE_DOUBLE((*(v34 + 48))(v23, v27, v35, v24, v33, v34));
    v38 = v37;

    v39 = *(v19 + 8);
    v40 = v35;
    v41 = v49;
    v39(v40, v49);
    v39(v27, v41);
    sub_10000CFBC(v23, &unk_1009568A0, &qword_100784890);
    (*(v13 + 8))(v51, v46);
    v30 = 0.0;
    if ((v38 & 1) == 0)
    {
      return *&v36;
    }
  }

  else
  {

    (*(v19 + 8))(v27, v20);
    sub_10000CFBC(v23, &unk_1009568A0, &qword_100784890);
    (*(v13 + 8))(v21, v46);
    return 0.0;
  }

  return v30;
}

double sub_1006AF090(uint64_t a1, void *a2)
{
  v5 = sub_10076B5BC();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v34 = &v33 - v8;
  v9 = sub_10077164C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100761A9C() > a1)
  {
    if (qword_100941228 != -1)
    {
      swift_once();
    }

    v13 = sub_100764C6C();
    sub_10000A61C(v13, qword_1009A23F8);
    sub_10076D17C();
    sub_100764C5C();
    (*(v10 + 8))(v12, v9);
    sub_100761B5C();
    if (v15)
    {

      top = 0.0;
    }

    else
    {
      if (a1 >= 1)
      {
        v17 = a1 - 1;
      }

      else
      {
        v17 = 0;
      }

      top = sub_1006AEB1C(a1, v17, a1 < 1, a2, v14);
    }

    v19 = v35;
    v18 = v36;
    v20 = v34;
    v21 = sub_100761A9C();
    if (a1 + 1 < v21)
    {
      v22 = a1 + 1;
    }

    else
    {
      v22 = 0;
    }

    (*(*v2 + 536))(a1, v22, a1 + 1 >= v21, a2);
    sub_100761A7C();
    if (sub_1006B9998(a1))
    {
      goto LABEL_46;
    }

    v23 = sub_10041329C();
    if (!v23)
    {
      top = UIEdgeInsetsZero.top;
LABEL_46:
      (*(v19 + 8))(v20, v18);
      return top;
    }

    v25 = v23;
    v36 = v24;
    [a2 pageMarginInsets];
    v27 = v26;
    v28 = sub_100761A3C();
    v29 = v33;
    (*(v19 + 16))(v33, v20, v18);
    v30 = (*(v19 + 88))(v29, v18);
    if (v30 != enum case for Shelf.ContentType.smallLockup(_:) && v30 != enum case for Shelf.ContentType.mediumLockup(_:))
    {
      if (v30 == enum case for Shelf.ContentType.largeLockup(_:))
      {
LABEL_19:
        v31 = 1;
LABEL_45:
        (*(v36 + 32))(v31 & 1, a2, v25, v27, v27);
        goto LABEL_46;
      }

      if (v30 != enum case for Shelf.ContentType.inAppPurchaseLockup(_:) && v30 != enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) && v30 != enum case for Shelf.ContentType.action(_:))
      {
        if (v30 == enum case for Shelf.ContentType.ribbonBar(_:))
        {
          goto LABEL_19;
        }

        if (v30 != enum case for Shelf.ContentType.editorialCard(_:) && v30 != enum case for Shelf.ContentType.videoCard(_:))
        {
          v31 = 1;
          if (v30 == enum case for Shelf.ContentType.brick(_:) || v30 == enum case for Shelf.ContentType.categoryBrick(_:))
          {
            goto LABEL_45;
          }

          if (v30 != enum case for Shelf.ContentType.reviews(_:) && v30 != enum case for Shelf.ContentType.appTrailerLockup(_:) && v30 != enum case for Shelf.ContentType.framedVideo(_:) && v30 != enum case for Shelf.ContentType.screenshotsLockup(_:) && v30 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v30 != enum case for Shelf.ContentType.smallBreakout(_:))
          {
            if (v30 == enum case for Shelf.ContentType.editorialStoryCard(_:))
            {
              goto LABEL_19;
            }

            if (v30 != enum case for Shelf.ContentType.mixedMediaLockup(_:) && v30 != enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) && v30 != enum case for Shelf.ContentType.largeGameCenterPlayer(_:) && v30 != enum case for Shelf.ContentType.posterLockup(_:) && v30 != enum case for Shelf.ContentType.smallContactCard(_:))
            {
              if (v30 != enum case for Shelf.ContentType.informationRibbon(_:))
              {
                v31 = v28;
                if (v30 != enum case for Shelf.ContentType.appPromotion(_:))
                {
                  (*(v19 + 8))(v29, v18);
                  v31 = 0;
                }

                goto LABEL_45;
              }

              goto LABEL_19;
            }
          }
        }
      }
    }

    v31 = v28;
    goto LABEL_45;
  }

  return UIEdgeInsetsZero.top;
}

double sub_1006AF6D0(uint64_t a1, void *a2)
{
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v21 - v10;
  v12 = 0.0;
  if (sub_100761A9C() > a1)
  {
    sub_100761A7C();
    if (!sub_1006B9998(a1))
    {
      v21[1] = swift_getObjectType();
      v13 = [a2 traitCollection];
      v14 = (*(*v2 + 696))(v11, v13);

      if (v14)
      {
        v15 = [a2 traitCollection];
        v16 = sub_1006B9B4C(a1, v15);

        if (v16)
        {
          (*(v6 + 16))(v8, v11, v5);
          v17 = (*(v6 + 88))(v8, v5);
          v18 = *(v6 + 8);
          if (v17 == enum case for Shelf.ContentType.annotation(_:) || v17 == enum case for Shelf.ContentType.productCapability(_:) || v17 == enum case for Shelf.ContentType.productPageLink(_:) || v17 == enum case for Shelf.ContentType.privacyType(_:))
          {
            v18(v11, v5);
            return 30.0;
          }

          v18(v8, v5);
        }

        PageTraitEnvironment.pageColumnMargin.getter();
        v12 = v19;
      }
    }

    (*(v6 + 8))(v11, v5);
  }

  return v12;
}

uint64_t sub_1006AF9C8(uint64_t a1, __n128 a2)
{
  v3 = sub_1007621EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  if (sub_100761A9C() <= a1)
  {
    v12 = 0;
  }

  else
  {
    sub_100761A6C();
    (*(v4 + 104))(v6, enum case for ShelfBackground.none(_:), v3);
    sub_1006BCDF0(&qword_100949730, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
    v10 = sub_10076FF1C();
    v11 = *(v4 + 8);
    v11(v6, v3);
    v11(v9, v3);
    v12 = v10 ^ 1;
  }

  return v12 & 1;
}

double sub_1006AFBB4(uint64_t a1, void *a2, __n128 a3)
{
  v5 = sub_1007621EC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_100761A9C() > a1)
  {
    sub_100761A6C();
    if ((*(v6 + 88))(v8, v5) == enum case for ShelfBackground.color(_:))
    {
      (*(v6 + 96))(v8, v5);

      v9 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
      v10 = sub_1007659CC();
      (*(*(v10 - 8) + 8))(v8 + v9, v10);
      return sub_1006AF090(a1, a2);
    }

    (*(v6 + 8))(v8, v5);
  }

  return UIEdgeInsetsZero.top;
}

double sub_1006AFDAC(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0.0;
  if (sub_100761A9C() <= a1)
  {
    return 0.0;
  }

  [a3 bounds];
  v13 = v12;
  v15 = v14;
  v16 = sub_100761B5C();
  if (v17)
  {
    v55 = v16;
    v56 = v17;
    v18 = sub_100761AAC();
    v57 = v10;
    if (v18)
    {
      v51 = sub_10076B8EC();
      v20 = v19;
      ObjectType = [a2 traitCollection];
      if (qword_10093F988 != -1)
      {
        swift_once();
      }

      v21 = qword_10094C0F0;
      v52 = a2;
      v53 = v20;
      if (v20)
      {
        v20 = sub_10076FF6C();
      }

      [v21 setTitle:v20 forState:0];

      [v21 setImage:0 forState:0];
      v22 = [v21 titleLabel];
      v23 = v22;
      if (v22)
      {
        v51 = v22;
        v24 = v22;
        v25 = [v24 font];
        if (v25)
        {
          v26 = v25;
          v27 = [v25 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:ObjectType];
        }

        else
        {
          v27 = 0;
        }

        [v24 setFont:v27];

        v23 = v51;
      }

      [v21 sizeThatFits:{v13, v15}];
      v30 = v29;
      v11 = v31;

      v28 = v30 + 0.0;
      [v21 setTitle:0 forState:0];
      [v21 setImage:0 forState:0];

      a2 = v52;
    }

    else
    {
      v28 = 0.0;
    }

    ObjectType = swift_getObjectType();
    [a2 pageMarginInsets];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    if (a1 >= 1)
    {
      v39 = a1 - 1;
    }

    else
    {
      v39 = 0;
    }

    v40 = v32.n128_f64[0] + sub_1006AEB1C(a1, v39, a1 < 1, a2, v32);
    v41 = sub_100761ABC();
    v53 = type metadata accessor for TitleHeaderView(0);
    v42 = sub_100761B6C();
    v44 = v43;
    v45 = sub_100761AFC();
    v46 = sub_1006B9D7C(v41 != 0, a2);
    v47 = v57;
    (*(*v4 + 632))(a1, a2);
    sub_1001963E0(v42, v44, v45, v55, v56, v41, 0, 0, v13, v15, v28, v11, v40, v34, v36, v38, 0, 0, v46, v47, 1, a2);
    v13 = v48;

    sub_10013B184(v47, type metadata accessor for TitleHeaderView.Style);
  }

  return v13;
}

id sub_1006B0284(uint64_t a1, void *a2, __n128 a3, uint64_t a4, void *a5)
{
  v34 = a5;
  v7 = sub_1007621EC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0x676B636142706F74 && a2 == 0xED0000646E756F72 || (sub_10077167C() & 1) != 0 || a1 == 0xD000000000000010 && 0x80000001007D7F70 == a2 || (sub_10077167C() & 1) != 0)
  {
    v11 = sub_10076FF6C();
    v12 = sub_10076FF6C();
    v13.super.isa = sub_10075E02C().super.isa;
    v14 = [v34 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:v12 forIndexPath:v13.super.isa];
LABEL_5:
    v15 = v14;

LABEL_6:
    return v15;
  }

  if (sub_10076FF9C() == a1 && v17 == a2)
  {

    goto LABEL_20;
  }

  v19 = sub_10077167C();

  if (v19)
  {
LABEL_20:
    sub_10075E0AC();
    sub_100761A6C();
    v21 = (*(v8 + 88))(v10, v7);
    v22 = enum case for ShelfBackground.interactive(_:);
    v11 = sub_10076FF6C();
    if (v21 == v22)
    {
      type metadata accessor for InteractiveTitleHeaderView(0);
      sub_1007708FC();
      v12 = sub_10076FF6C();

      v13.super.isa = sub_10075E02C().super.isa;
      v14 = [v34 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:v12 forIndexPath:v13.super.isa];
      goto LABEL_5;
    }

    type metadata accessor for TitleHeaderView(0);
    sub_1007708FC();
    v23 = sub_10076FF6C();

    isa = sub_10075E02C().super.isa;
    v25 = [v34 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:v23 forIndexPath:isa];

    (*(v8 + 8))(v10, v7);
    return v25;
  }

  if (sub_10076FF9C() == a1 && v20 == a2)
  {

LABEL_24:
    v27 = sub_10076FF6C();
    type metadata accessor for InfiniteScrollFooterView();
    sub_1007708FC();
    v28 = sub_10076FF6C();

    v13.super.isa = sub_10075E02C().super.isa;
    v15 = [v34 dequeueReusableSupplementaryViewOfKind:v27 withReuseIdentifier:v28 forIndexPath:v13.super.isa];

    goto LABEL_6;
  }

  v26 = sub_10077167C();

  if (v26)
  {
    goto LABEL_24;
  }

  v37._countAndFlagsBits = 0xD00000000000001CLL;
  v37._object = 0x80000001007F5390;
  if (sub_10077011C(v37))
  {
    type metadata accessor for AdBackgroundView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = sub_10076FF6C();
    sub_1007708FC();
    v31 = sub_10076FF6C();

    v32 = v34;
    [v34 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v30 withReuseIdentifier:v31];

    v11 = sub_10076FF6C();
    sub_1007708FC();
    v12 = sub_10076FF6C();

    v13.super.isa = sub_10075E02C().super.isa;
    v14 = [v32 dequeueReusableSupplementaryViewOfKind:v11 withReuseIdentifier:v12 forIndexPath:v13.super.isa];
    goto LABEL_5;
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  sub_10077145C(29);

  v35 = 0xD00000000000001BLL;
  v36 = 0x80000001007F53E0;
  v38._countAndFlagsBits = a1;
  v38._object = a2;
  sub_1007700CC(v38);
  result = sub_10077156C();
  __break(1u);
  return result;
}

void sub_1006B0878(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, __n128 a7)
{
  v8 = v7;
  v174 = a5;
  v182 = a4;
  v178 = a1;
  v11 = *v7;
  v180 = a6;
  v181 = v11;
  v12 = sub_1007621EC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v18 = (&v158 - v17);
  __chkstk_darwin(v19);
  v21 = &v158 - v20;
  v22 = sub_10000A5D4(&qword_10094BB50, &qword_1007851D0);
  __chkstk_darwin(v22 - 8);
  v173 = (&v158 - v23);
  v166 = sub_10076B6EC();
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v164 = &v158 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v163 = &v158 - v26;
  v172 = sub_10076BEDC();
  v171 = *(v172 - 8);
  __chkstk_darwin(v172);
  v170 = &v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  __chkstk_darwin(v28 - 8);
  v169 = &v158 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v162);
  v179 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10076FF9C() == a2 && v31 == a3)
  {

LABEL_5:
    v33 = type metadata accessor for InteractiveTitleHeaderView(0);
    v34 = v178;
    v158 = v33;
    v35 = swift_dynamicCastClass();
    v160 = v12;
    v159 = v13;
    v161 = v21;
    if (v35)
    {
      v168 = v35;
      v36 = *(v35 + OBJC_IVAR____TtC20ProductPageExtension26InteractiveTitleHeaderView_titleView);
      v37 = v34;
    }

    else
    {
      type metadata accessor for TitleHeaderView(0);
      v36 = swift_dynamicCastClassUnconditional();
      v168 = 0;
    }

    sub_100760C4C();
    sub_10076F64C();
    v38 = v36;
    sub_10076FC1C();
    v176 = v8;
    v177 = v183[0];
    v39 = v8[2];
    v40 = v181[10];
    v41 = v181[12];
    v42 = sub_100761AFC();
    v43 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork;
    v44 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtwork);

    sub_1001903B4(v42, v45);
    *(v38 + v43) = v42;

    sub_1001903C8(v44);

    v178 = v39;
    v46 = sub_100761B6C();
    v48 = v47;
    v49 = (v38 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText);
    v50 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText);
    v51 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowText + 8);

    sub_10018FD94(v46, v48);
    *v49 = v46;
    v49[1] = v48;

    sub_10018FE28(v50, v51);

    v52 = *(v38 + v43);

    if (v52)
    {
      v53 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_eyebrowArtworkView);
      if (v53)
      {
        v54 = *(v38 + v43);
        v55 = v179;
        v56.n128_f64[0] = (*((swift_isaMask & *v38) + 0x1C0))();
        v57 = v169;
        sub_10011BA50(v55, v169, v56);

        v58 = v53;
        sub_10013B184(v55, type metadata accessor for TitleHeaderView.Style);
        sub_1006BA044(v54, v57, v38);

        sub_10013B184(v57, type metadata accessor for TitleHeaderView.TextConfiguration);
        v59 = v170;
        sub_10076BEEC();
        sub_10076BE9C();
        (*(v171 + 8))(v59, v172);
        sub_10076BFCC();
        sub_10075FD2C();
        sub_1006BCDF0(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        sub_100760B8C();
      }
    }

    v61 = sub_100761ABC();
    v62 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork;
    v63 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtwork);

    sub_100190554(v61, v64);
    *(v38 + v62) = v61;

    sub_100190668(v63);

    v167 = *(v38 + v62);
    v65 = OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel;
    v66 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabel);
    sub_100761B5C();
    if (v67)
    {
      v68 = sub_10076FF6C();
    }

    else
    {
      v68 = 0;
    }

    [v66 setText:v68];

    v69 = *(v38 + v62);
    if (v69)
    {
      v70 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleArtworkView);
      if (v70)
      {
        v71 = v179;
        v72.n128_f64[0] = (*((swift_isaMask & *v38) + 0x1C0))();
        v73 = v169;
        sub_10011BA50(v71 + *(v162 + 20), v169, v72);

        v74 = v70;
        sub_10013B184(v71, type metadata accessor for TitleHeaderView.Style);
        sub_1006BA044(v69, v73, v38);
        sub_10013B184(v73, type metadata accessor for TitleHeaderView.TextConfiguration);
        v75 = v170;
        sub_10076BEEC();
        sub_10076BE9C();
        (*(v171 + 8))(v75, v172);
        sub_10076BFCC();
        sub_10075FD2C();
        sub_1006BCDF0(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
        sub_100760B8C();
      }
    }

    v76 = v167 != 0;
    v77 = swift_allocObject();
    *(v77 + 16) = v40;
    v78 = v181;
    v79 = v181[11];
    *(v77 + 24) = v79;
    *(v77 + 32) = v41;
    *(v77 + 40) = v76;
    *(v77 + 48) = v78;
    v80 = (v38 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_titleLabelNumberOfLines);
    *v80 = sub_1006BB628;
    v80[1] = v77;

    [*(v38 + v65) setNumberOfLines:{sub_1006B9D7C(v76, v38)}];

    v81 = v182;
    v82 = sub_100761AAC();
    v175 = v40;
    if (v82)
    {
      v181 = v79;
      sub_100761B4C();
      v83 = v163;
      sub_10076B70C();

      v84 = v164;
      sub_10076B6CC();
      sub_1006BCDF0(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
      v85 = v166;
      v86 = sub_10077124C();
      v87 = *(v165 + 8);
      v87(v84, v85);
      v87(v83, v85);
      if (v86)
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        v88 = sub_100770CFC();
        v89 = v88;
      }

      else
      {
        v88 = 0;
      }

      v99 = v38;
      v100 = sub_10076B8EC();
      v101 = v173;
      *v173 = v100;
      v101[1] = v102;
      v101[2] = v88;
      v103 = type metadata accessor for Accessory(0);
      v101[3] = 0;
      v101[4] = 0;
      swift_storeEnumTagMultiPayload();
      (*(*(v103 - 8) + 56))(v101, 0, 1, v103);
      (*((swift_isaMask & *v99) + 0x268))(v101, v180);

      sub_10000CFBC(v101, &qword_10094BB50, &qword_1007851D0);
      v104 = swift_allocObject();
      v98 = v176;
      swift_weakInit();
      v105 = swift_allocObject();
      v106 = v181;
      v105[2] = v175;
      v105[3] = v106;
      v105[4] = v41;
      v105[5] = v104;
      v107 = v182;
      v105[6] = v182;
      v108 = (v99 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction);
      v81 = v107;
      v109 = *v108;
      v110 = v108[1];
      *v108 = sub_1006BB680;
      v108[1] = v105;

      sub_1000167E0(v109, v110);
    }

    else
    {
      v90 = type metadata accessor for Accessory(0);
      v91 = v173;
      (*(*(v90 - 8) + 56))(v173, 1, 1, v90);
      v92 = *((swift_isaMask & *v38) + 0x268);
      v93 = v38;
      v92(v91, v180);
      sub_10000CFBC(v91, &qword_10094BB50, &qword_1007851D0);
      v94 = (v93 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction);
      v95 = *(v93 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction);
      v96 = *(v93 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_accessoryAction + 8);
      *v94 = 0;
      v94[1] = 0;
      v97.n128_f64[0] = sub_1000167E0(v95, v96);
      v98 = v176;
    }

    v111 = v179;
    v112 = v174;
    (*(*v98 + 632))(v81, v174, v97);
    (*((swift_isaMask & *v38) + 0x1C8))(v111);
    v113 = *(v38 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_detailLabel);
    v114 = v113;

    v115 = v168;
    if (v113)
    {
      sub_100761B7C();
      if (v116)
      {
        v117 = sub_10076FF6C();
      }

      else
      {
        v117 = 0;
      }

      [v114 setText:v117];

      v98 = v176;
    }

    if (v115)
    {
      swift_beginAccess();
      if (*(v98[8] + 16))
      {
        sub_10060FF40(v81);
        if (v118)
        {
          v184 = v158;
          v185 = &off_1008A3180;
          v183[0] = v115;
          v115 = v115;

          sub_10059FE50(v183);

          sub_10000CFBC(v183, &unk_1009575D0, &qword_10079E290);
        }
      }
    }

    else
    {
      v119 = v161;
      sub_100761A6C();
      [v38 setOverrideUserInterfaceStyle:sub_1004751F8(v120)];
      (*(v159 + 8))(v119, v160);
    }

    [v112 pageMarginInsets];
    v123 = v122;
    v125 = v124;
    v127 = v126;
    if (v81 >= 1)
    {
      v128 = v81 - 1;
    }

    else
    {
      v128 = 0;
    }

    v129 = v121.n128_f64[0] + sub_1006AEB1C(v81, v128, v81 < 1, v112, v121);
    [v38 setLayoutMargins:{v129, v123, v125, v127}];
    v130 = (v38 + OBJC_IVAR____TtC20ProductPageExtension15TitleHeaderView_separatorInset);
    *v130 = v129;
    v130[1] = v123;
    v130[2] = v125;
    v130[3] = v127;
    [v38 setNeedsLayout];
    [v38 setNeedsLayout];

    return;
  }

  v32 = sub_10077167C();

  if (v32)
  {
    goto LABEL_5;
  }

  if (sub_10076FF9C() == a2 && v60 == a3)
  {

LABEL_43:
    type metadata accessor for InfiniteScrollFooterView();
    v132 = *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC20ProductPageExtension24InfiniteScrollFooterView_activityIndicator);

    [v132 startAnimating];
    return;
  }

  v161 = v21;
  v131 = sub_10077167C();

  if (v131)
  {
    goto LABEL_43;
  }

  type metadata accessor for MaterialGradientSectionBackgroundView();
  if (sub_1007708EC() == a2 && v133 == a3)
  {
    goto LABEL_48;
  }

  v134 = sub_10077167C();

  if (v134)
  {
    goto LABEL_50;
  }

  type metadata accessor for GradientSectionBackgroundView();
  if (sub_1007708EC() == a2 && v141 == a3)
  {
    goto LABEL_48;
  }

  v142 = sub_10077167C();

  if (v142)
  {
    goto LABEL_50;
  }

  type metadata accessor for ArtworkSectionBackgroundView();
  if (sub_1007708EC() == a2 && v143 == a3)
  {
LABEL_48:

LABEL_50:
    v135 = v178;
    swift_getObjectType();
    v136 = swift_conformsToProtocol2();
    if (v136 && v135)
    {
      v137 = v136;
      ObjectType = swift_getObjectType();
      v139 = v135;
      v140 = v161;
      sub_100761A6C();
      (*(v137 + 8))(v140, v180, ObjectType, v137, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);

      (*(v13 + 8))(v140, v12);
    }

    return;
  }

  v144 = sub_10077167C();

  if (v144)
  {
    goto LABEL_50;
  }

  v145 = type metadata accessor for InteractiveSectionBackgroundView(0);
  if (sub_1007708EC() == a2 && v146 == a3)
  {
  }

  else
  {
    v147 = sub_10077167C();

    if ((v147 & 1) == 0)
    {
      if (a2 == 0x676B636142706F74 && a3 == 0xED0000646E756F72 || (sub_10077167C() & 1) != 0)
      {
        sub_100761A6C();
        if ((*(v13 + 88))(v18, v12) != enum case for ShelfBackground.color(_:))
        {
          (*(v13 + 8))(v18, v12);
          return;
        }

        (*(v13 + 96))(v18, v12);
        v153 = *v18;
        v154 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
        v155 = sub_1007659CC();
        (*(*(v155 - 8) + 8))(v18 + v154, v155);
      }

      else
      {
        if ((a2 != 0xD000000000000010 || 0x80000001007D7F70 != a3) && (sub_10077167C() & 1) == 0 || sub_100761A9C() < 1)
        {
          return;
        }

        if (__OFSUB__(sub_100761A9C(), 1))
        {
          __break(1u);
          return;
        }

        sub_100761A6C();
        if ((*(v13 + 88))(v15, v12) != enum case for ShelfBackground.color(_:))
        {
          (*(v13 + 8))(v15, v12);
          return;
        }

        (*(v13 + 96))(v15, v12);
        v153 = *v15;
        v156 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
        v157 = sub_1007659CC();
        (*(*(v157 - 8) + 8))(v15 + v156, v157);
      }

      [v178 setBackgroundColor:v153];

      return;
    }
  }

  v148 = v178;
  v149 = swift_dynamicCastClass();
  if (v149)
  {
    v150 = v149;
    swift_beginAccess();
    if (*(v8[8] + 16))
    {
      sub_10060FF40(v182);
      if (v151)
      {
        v184 = v145;
        v185 = &off_10088D588;
        v183[0] = v150;
        v152 = v148;

        sub_10059FE50(v183);

        sub_10000CFBC(v183, &unk_1009575D0, &qword_10079E290);
      }
    }
  }
}

uint64_t sub_1006B1EE0(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_10000A5D4(&unk_1009568A0, &qword_100784890);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_10076B5BC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1;
  sub_100761A7C();
  v10 = sub_10041329C();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (v16 < 1)
    {
      v13 = 1;
    }

    else
    {
      sub_100761A7C();
      v13 = 0;
    }

    (*(v7 + 56))(v5, v13, 1, v6);
    v14 = (*(v12 + 96))(v5, v17, v10, v12);
    sub_10000CFBC(v5, &unk_1009568A0, &qword_100784890);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1006B2104(uint64_t a1, void *a2)
{
  v4 = sub_10000A5D4(&qword_100949728, &unk_10078C3C0);
  __chkstk_darwin(v4);
  v6 = &v55 - v5;
  v7 = sub_1007621EC();
  v65 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  __chkstk_darwin(v12);
  v66 = &v55 - v13;
  __chkstk_darwin(v14);
  v18 = &v55 - v17;
  if (a1 < 1)
  {
    return 0;
  }

  v60 = a2;
  v61 = v16;
  v63 = v15;
  if (sub_100761A9C() < 1)
  {
    return 0;
  }

  sub_100761A6C();
  v19 = v66;
  sub_100761A6C();
  v20 = *(v4 + 48);
  v21 = v65;
  v22 = *(v65 + 16);
  v22(v6, v18, v7);
  v62 = v20;
  v22(&v6[v20], v19, v7);
  v23 = v21[11];
  v24 = v23(v6, v7);
  v64 = v18;
  if (v24 != enum case for ShelfBackground.color(_:))
  {
LABEL_9:
    v40 = enum case for ShelfBackground.none(_:);
    v41 = v21[13];
    v41(v9, enum case for ShelfBackground.none(_:), v7);
    v65 = sub_1006BCDF0(&qword_100949730, &type metadata accessor for ShelfBackground, &protocol conformance descriptor for ShelfBackground);
    v42 = sub_10076FF1C();
    v43 = v21[1];
    v43(v9, v7);
    if ((v42 & 1) == 0)
    {
      v41(v9, v40, v7);
      v44 = sub_1007621DC();
      v43(v9, v7);
      if (v44)
      {
        v43(v66, v7);
        v43(v64, v7);
LABEL_14:
        v43(&v6[v62], v7);
        v43(v6, v7);
        return 2;
      }
    }

    v41(v9, v40, v7);
    v45 = v64;
    v46 = sub_1007621DC();
    v43(v9, v7);
    if (v46)
    {
      v41(v9, v40, v7);
      v47 = v66;
      v48 = sub_10076FF1C();
      v43(v9, v7);
      v43(v47, v7);
      v43(v45, v7);
      if ((v48 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v43(v66, v7);
      v43(v45, v7);
    }

    sub_10000CFBC(v6, &qword_100949728, &unk_10078C3C0);
    return 0;
  }

  v25 = v24;
  v26 = v63;
  v22(v63, v6, v7);
  v56 = v21[12];
  v56(v26, v7);
  v57 = *v26;
  v55 = sub_10000A5D4(&unk_100950670, qword_100791450);
  v58 = *(v55 + 48);
  v59 = v6;
  if (v23(&v6[v62], v7) != v25)
  {
    v39 = sub_1007659CC();
    (*(*(v39 - 8) + 8))(v26 + v58, v39);

    goto LABEL_8;
  }

  v28 = v61;
  v27 = v62;
  v22(v61, &v59[v62], v7);
  v56(v28, v7);
  v29 = *v28;
  v56 = *(v55 + 48);
  v30 = v60;
  v31 = [v60 traitCollection];
  v32 = v57;
  v33 = [v57 resolvedColorWithTraitCollection:v31];

  v34 = [v30 traitCollection];
  v35 = v27;
  v36 = [v29 resolvedColorWithTraitCollection:v34];

  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  LOBYTE(v34) = sub_100770EEC();

  if (v34)
  {
    v37 = sub_1007659CC();
    v38 = *(*(v37 - 8) + 8);
    v38(v56 + v28, v37);
    v38(v63 + v58, v37);
LABEL_8:
    v6 = v59;
    v21 = v65;
    goto LABEL_9;
  }

  v50 = *(v65 + 8);
  v50(v66, v7);
  v50(v64, v7);
  v51 = sub_1007659CC();
  v52 = v35;
  v53 = *(*(v51 - 8) + 8);
  v53(v56 + v28, v51);
  v53(v63 + v58, v51);
  v54 = v59;
  v50(&v59[v52], v7);
  v50(v54, v7);
  return 2;
}

double sub_1006B28E4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v83 = a4;
  v95 = a3;
  v89 = a2;
  v79 = sub_10076B6EC();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v76 = &v70 - v8;
  v9 = sub_10000A5D4(&unk_100952090, &unk_100784CD0);
  __chkstk_darwin(v9 - 8);
  v84 = &v70 - v10;
  v11 = sub_10076664C();
  v87 = *(v11 - 8);
  v88 = v11;
  __chkstk_darwin(v11);
  v94 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v93 = &v70 - v14;
  __chkstk_darwin(v15);
  v96 = &v70 - v16;
  v82 = sub_10075E11C();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000A5D4(&qword_1009572A0, &qword_1007909F0);
  __chkstk_darwin(v19 - 8);
  v81 = &v70 - v20;
  v21 = sub_10000A5D4(&unk_1009520A0, &unk_10079AFE0);
  v85 = *(v21 - 8);
  v86 = v21;
  __chkstk_darwin(v21);
  v92 = &v70 - v22;
  v23 = sub_10076B5BC();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E0AC();
  sub_100761A7C();
  v27 = sub_10041329C();
  if (v27)
  {
    v72 = v28;
    v73 = v27;
    v91 = v26;
    v74 = v24;
    v75 = v23;
    sub_10075E0AC();
    if (sub_100761A5C())
    {
      v29 = sub_10075E0AC();
      v30 = sub_1006BA354(v29);
    }

    else
    {
      v30 = 0;
    }

    sub_10075E0AC();
    if (sub_100761A5C())
    {
      sub_10075E0AC();
      v90 = sub_100761B4C();
    }

    else
    {
      v90 = 0;
    }

    v71 = v30;
    v32 = v95;
    sub_1006AAC1C(v91, 0, v30, v95, v83);
    v34 = v33;
    v36 = v35;
    sub_100761B3C();
    (*(v80 + 16))(v18, a1, v82);
    sub_10076FDDC();
    v97 = *(v4 + 24);

    sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
    sub_1001C9F18();
    sub_10076FD7C();
    sub_10076663C();
    v37 = sub_1006B6C10(a1, v32);
    v39 = v87;
    v38 = v88;
    if (v37)
    {
      v40 = v94;
      sub_1007665FC();
      v41 = v93;
      sub_10038C52C(v93, v40);
      v42 = *(v39 + 8);
      v42(v40, v38);
      v42(v41, v38);
    }

    v43 = v84;
    sub_100761B0C();
    v44 = sub_10076182C();
    v45 = (*(*(v44 - 8) + 48))(v43, 1, v44);
    sub_10000CFBC(v43, &unk_100952090, &unk_100784CD0);
    if (v45 != 1)
    {
      v46 = v94;
      sub_1007665DC();
      v47 = v93;
      sub_10038C52C(v93, v46);
      v48 = *(v39 + 8);
      v48(v46, v38);
      v48(v47, v38);
    }

    v49 = [v95 traitCollection];
    v50 = sub_1007706EC();

    v51 = v75;
    v52 = v74;
    if (v50)
    {
      v53 = v94;
      sub_10076662C();
      v54 = v93;
      sub_10038C52C(v93, v53);
      v55 = *(v39 + 8);
      v55(v53, v38);
      v55(v54, v38);
    }

    if (!sub_10075E0AC())
    {
      v56 = v94;
      sub_1007665EC();
      v57 = v93;
      sub_10038C52C(v93, v56);
      v58 = *(v39 + 8);
      v58(v56, v38);
      v58(v57, v38);
    }

    if (v90)
    {

      v59 = v76;
      sub_10076B70C();

      v60 = v77;
      sub_10076B6AC();
      sub_1006BCDF0(&unk_100946780, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
      v61 = v79;
      v62 = sub_10077124C();
      v63 = *(v78 + 8);
      v63(v60, v61);
      v63(v59, v61);
      if (v62)
      {
        v64 = v94;
        sub_10076661C();
        v65 = v93;
        sub_10038C52C(v93, v64);
        v66 = *(v39 + 8);
        v66(v64, v38);
        v66(v65, v38);
      }
    }

    v67 = v92;
    v68 = v96;
    v31 = (*(v72 + 72))(v98, v71, v92, v89, v96, v95, v34, v36);

    (*(v39 + 8))(v68, v38);
    (*(v85 + 8))(v67, v86);
    sub_10000CD74(v98);
    (*(v52 + 8))(v91, v51);
  }

  else
  {
    (*(v24 + 8))(v26, v23);
    return 0.0;
  }

  return v31;
}

id sub_1006B32B4(uint64_t a1, void *a2)
{
  v4 = sub_10076B5BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10075E0AC();
  sub_100761A7C();
  v8 = sub_10076B59C();
  v10 = v9;
  swift_beginAccess();
  v11 = *(v2 + 72);
  if (*(v11 + 16) && (, v12 = sub_100561E0C(v8, v10), v14 = v13, , (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v12);

    v16 = sub_10076B59C();
    v18 = v17;
    swift_beginAccess();
    isa = sub_1001E17A0(v16, v18);
    swift_endAccess();
  }

  else
  {

    sub_10076B59C();
    v20 = sub_10076FF6C();

    isa = sub_10075E02C().super.isa;
    v15 = [a2 dequeueReusableCellWithReuseIdentifier:v20 forIndexPath:isa];
  }

  (*(v5 + 8))(v7, v4);
  return v15;
}

void sub_1006B34FC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v265 = a6;
  v296 = a5;
  v295 = a4;
  v286 = a3;
  v300 = a2;
  v297 = *v6;
  v284 = sub_10076F7CC();
  v283 = *(v284 - 8);
  __chkstk_darwin(v284);
  v252 = &v245 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_10076F7FC();
  v287 = *(v291 - 1);
  __chkstk_darwin(v291);
  v257 = &v245 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v278 = &v245 - v11;
  __chkstk_darwin(v12);
  v275 = &v245 - v13;
  __chkstk_darwin(v14);
  v254 = &v245 - v15;
  __chkstk_darwin(v16);
  v255 = &v245 - v17;
  v260 = sub_10075DFDC();
  v259 = *(v260 - 8);
  __chkstk_darwin(v260);
  v258 = &v245 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = sub_1007621EC();
  v273 = *(v274 - 8);
  __chkstk_darwin(v274);
  v272 = &v245 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_10076B6EC();
  v270 = *(v271 - 8);
  __chkstk_darwin(v271);
  v269 = &v245 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000A5D4(&unk_100952090, &unk_100784CD0);
  __chkstk_darwin(v21 - 8);
  v23 = &v245 - v22;
  v289 = sub_10076664C();
  v288 = *(v289 - 8);
  __chkstk_darwin(v289);
  v25 = &v245 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v268 = &v245 - v27;
  __chkstk_darwin(v28);
  v290 = &v245 - v29;
  v30 = sub_10075E11C();
  v280 = *(v30 - 8);
  __chkstk_darwin(v30);
  v264 = v31;
  v279 = &v245 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10000A5D4(&qword_1009572A0, &qword_1007909F0);
  __chkstk_darwin(v32 - 8);
  v277 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v276 = *(v277 - 8);
  __chkstk_darwin(v277);
  v285 = &v245 - v33;
  v294 = sub_10076B5BC();
  v293 = *(v294 - 8);
  __chkstk_darwin(v294);
  v35 = &v245 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v281 = &v245 - v37;
  __chkstk_darwin(v38);
  v40 = &v245 - v39;
  v41 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v41 - 8);
  v261 = &v245 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v267 = &v245 - v44;
  __chkstk_darwin(v45);
  v266 = &v245 - v46;
  __chkstk_darwin(v47);
  v253 = &v245 - v48;
  __chkstk_darwin(v49);
  v256 = &v245 - v50;
  __chkstk_darwin(v51);
  v53 = &v245 - v52;
  v54 = sub_10000A5D4(&qword_1009632C0, &unk_10079B000);
  __chkstk_darwin(v54 - 8);
  v262 = &v245 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v263 = &v245 - v57;
  *&v59 = __chkstk_darwin(v58).n128_u64[0];
  v61 = &v245 - v60;
  [a1 setBackgroundColor:{0, v59}];
  swift_getObjectType();
  v62 = swift_conformsToProtocol2();
  v298 = v6;
  v299 = *(v6 + 16);
  if (!v62 || !a1)
  {
    v250 = v30;
    v282 = a1;
    v75 = v297[10];
    v76 = v300;
    v292 = v297[12];
    if ((sub_100761AEC() & 1) == 0)
    {
      return;
    }

    swift_getObjectType();
    v249 = swift_conformsToProtocol2();
    if (!v249)
    {
      __break(1u);
      return;
    }

    sub_100761B3C();
    v77 = *(v280 + 16);
    v247 = v280 + 16;
    v246 = v77;
    v77(v279, v76, v250);
    sub_10076FDDC();
    v306 = *(v298 + 24);

    sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
    sub_1001C9F18();
    v78 = v300;
    sub_10076F82C();
    sub_10076663C();
    v79 = sub_1006B66DC(v78, v295);
    v80 = v268;
    if (v79)
    {
      sub_1007665FC();
      sub_10038C52C(v80, v25);
      v81 = *(v288 + 8);
      v82 = v289;
      v81(v25, v289);
      v81(v80, v82);
    }

    sub_100761B0C();
    v83 = sub_10076182C();
    v84 = (*(*(v83 - 8) + 48))(v23, 1, v83);
    sub_10000CFBC(v23, &unk_100952090, &unk_100784CD0);
    if (v84 != 1)
    {
      sub_1007665DC();
      sub_10038C52C(v80, v25);
      v85 = *(v288 + 8);
      v86 = v289;
      v85(v25, v289);
      v85(v80, v86);
    }

    if (!sub_10075E0AC())
    {
      sub_1007665EC();
      sub_10038C52C(v80, v25);
      v87 = *(v288 + 8);
      v88 = v289;
      v87(v25, v289);
      v87(v80, v88);
    }

    sub_10075E0AC();
    v89 = v281;
    sub_100761A7C();
    sub_10075E0AC();
    v251 = v75;
    v90 = sub_100761A3C();
    v91 = v293;
    v92 = v89;
    v93 = v294;
    (*(v293 + 16))(v35, v92, v294);
    v94 = (*(v91 + 88))(v35, v93);
    v95 = v296;
    if (v94 == enum case for Shelf.ContentType.smallLockup(_:) || v94 == enum case for Shelf.ContentType.mediumLockup(_:))
    {
      goto LABEL_38;
    }

    if (v94 != enum case for Shelf.ContentType.largeLockup(_:))
    {
      if (v94 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v94 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v94 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_38;
      }

      if (v94 != enum case for Shelf.ContentType.ribbonBar(_:))
      {
        if (v94 == enum case for Shelf.ContentType.editorialCard(_:) || v94 == enum case for Shelf.ContentType.videoCard(_:))
        {
          goto LABEL_38;
        }

        if (v94 == enum case for Shelf.ContentType.brick(_:) || v94 == enum case for Shelf.ContentType.categoryBrick(_:))
        {
          goto LABEL_39;
        }

        if (v94 == enum case for Shelf.ContentType.reviews(_:) || v94 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v94 == enum case for Shelf.ContentType.framedVideo(_:) || v94 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v94 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v94 == enum case for Shelf.ContentType.smallBreakout(_:))
        {
          goto LABEL_38;
        }

        if (v94 != enum case for Shelf.ContentType.editorialStoryCard(_:))
        {
          if (v94 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v94 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v94 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v94 == enum case for Shelf.ContentType.posterLockup(_:) || v94 == enum case for Shelf.ContentType.smallContactCard(_:))
          {
            goto LABEL_38;
          }

          if (v94 != enum case for Shelf.ContentType.informationRibbon(_:))
          {
            if (v94 != enum case for Shelf.ContentType.appPromotion(_:))
            {
              (*(v293 + 8))(v35, v294);
              goto LABEL_43;
            }

LABEL_38:
            if (v90)
            {
              goto LABEL_39;
            }

LABEL_43:
            v111 = [v295 traitCollection];
            v112 = sub_1007706EC();

            if ((v112 & 1) == 0)
            {
              v248 = 0;
              v115 = v290;
LABEL_46:
              v119 = v282;
              ObjectType = swift_getObjectType();
              sub_10075E0AC();
              sub_100761B4C();
              v121 = v269;
              sub_10076B70C();

              (*(v249 + 80))(&v308, v285, v95, v115, v121, v295, ObjectType);
              (*(v270 + 8))(v121, v271);
              sub_10075E0AC();
              v122 = v272;
              sub_100761A6C();
              v124 = sub_1004751F8(v123);
              (*(v273 + 8))(v122, v274);
              if ([v119 overrideUserInterfaceStyle] != v124)
              {
                [v119 setOverrideUserInterfaceStyle:v124];
              }

              sub_10000A570(&v308, &v306);
              *(&v304 + 1) = sub_100016F40(0, &qword_10094D1D0, UICollectionViewCell_ptr);
              *&v303 = v119;
              v125 = v119;
              sub_10075FA0C();
              sub_10000CFBC(&v306, &unk_10094F720, &unk_100785540);
              sub_10000CD74(&v303);
              swift_getObjectType();
              v126 = swift_conformsToProtocol2();
              if (v126 && v119)
              {
                v127 = v126;
                v128 = swift_getObjectType();
                v129 = *(v127 + 8);
                v130 = v125;
                v131 = v129(v128, v127);
                v119 = v282;
                v132 = v131;
                v133 = (v131 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
                v134 = *(v131 + OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreTapHandler);
                v135 = v133[1];
                *v133 = 0;
                v133[1] = 0;
                [*&v132[OBJC_IVAR____TtC20ProductPageExtension18ExpandableTextView_moreButton] setUserInteractionEnabled:{0, sub_1000167E0(v134, v135)}];
              }

              swift_getObjectType();
              v136 = swift_conformsToProtocol2();
              v137 = v275;
              if (v136 && v119)
              {
                v138 = swift_allocObject();
                swift_weakInit();
                v139 = v279;
                v140 = v250;
                v246(v279, v300, v250);
                v141 = v280;
                v142 = (*(v280 + 80) + 40) & ~*(v280 + 80);
                v143 = (v264 + v142 + 7) & 0xFFFFFFFFFFFFFFF8;
                v144 = swift_allocObject();
                *(v144 + 2) = v251;
                v145 = v292;
                *(v144 + 3) = v297[11];
                *(v144 + 4) = v145;
                (*(v141 + 32))(&v144[v142], v139, v140);
                v119 = v282;
                *&v144[v143] = v138;
                v146 = &v125[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
                v147 = *&v125[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler];
                v148 = *&v125[OBJC_IVAR____TtC20ProductPageExtension30HeroCarouselCollectionViewCell_didSelectHandler + 8];
                *v146 = sub_1006BB558;
                v146[1] = v144;
                v149 = v125;

                sub_1000167E0(v147, v148);
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v119)
              {
                sub_100767D5C();
                sub_10076F64C();
                v150 = v125;
                sub_10076FC1C();
                v151 = v306;
                swift_getObjectType();
                v152 = sub_100765B4C();
                v153 = v150;
                sub_100767D3C();

                v119 = v282;
              }

              *&v301[0] = v125;
              *(&v301[0] + 1) = v249;
              v154 = v125;
              sub_10000A5D4(&qword_1009520D0, &unk_10079B010);
              sub_10000A5D4(&qword_1009520D8, &unk_1007B36B0);
              if (swift_dynamicCast())
              {
                sub_100012498(&v303, &v306);
                sub_100767D5C();
                sub_10076F64C();
                sub_10076FC1C();
                v155 = v303;
                sub_10000CF78(&v306, v307);
                sub_10076817C();

                sub_10000CD74(&v306);
              }

              else
              {
                v305 = 0;
                v304 = 0u;
                v303 = 0u;
                sub_10000CFBC(&v303, &unk_1009520E0, &unk_10079B020);
              }

              v156 = v248;
              swift_getObjectType();
              if (swift_conformsToProtocol2() && v119)
              {
                sub_100764FAC();
                v157 = v154;
                sub_10076F63C();
                v158 = v306;
                if (v306)
                {
                  v159 = v157;
                  v160 = v158;
                  sub_100764F9C();

                  v157 = v160;
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v119)
              {
                sub_10000A570(&v308, &v303);
                v161 = v154;
                sub_10000A5D4(&qword_1009575A0, &unk_100784980);
                sub_10000A5D4(&unk_1009520F0, &qword_100799AA0);
                if (swift_dynamicCast())
                {
                  sub_100012498(v301, &v306);
                  sub_10000CF78(&v306, v307);
                  if (sub_10076967C())
                  {
                    sub_10076518C();
                  }

                  v119 = v282;
                  swift_getObjectType();
                  sub_10076457C();

                  sub_10000CD74(&v306);
                }

                else
                {

                  v302 = 0;
                  memset(v301, 0, sizeof(v301));
                  sub_10000CFBC(v301, &qword_10094D3E8, &qword_100796560);
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v119)
              {
                swift_getObjectType();
                v162 = v154;
                sub_100768BEC();
              }

              sub_10075E0AC();
              sub_100761B4C();
              if (v156)
              {
                v163 = [v265 collectionViewLayout];
                type metadata accessor for BaseCollectionCompositionalLayout();
                v164 = swift_dynamicCastClass();
                if (v164)
                {
                  v165 = v164;
                  v166 = [v164 _orthogonalScrollingSections];
                  v167 = v258;
                  sub_10075DFAC();

                  v119 = v282;
                  v168 = sub_10075E0AC();
                  v169 = sub_10075DFCC(v168);
                  (*(v259 + 8))(v167, v260);
                  if (v169)
                  {
                    [v154 frame];
                    v171 = v170;
                    v173 = v172;
                    v175 = v174;
                    v177 = v176;
                    v178 = v256;
                    sub_10076B6FC();
                    v179 = v287;
                    v180 = *(v287 + 48);
                    v181 = v291;
                    if (v180(v178, 1, v291) == 1)
                    {

                      (*(v293 + 8))(v281, v294);
                      (*(v288 + 8))(v290, v289);
                      (*(v276 + 8))(v285, v277);
                      sub_10000CD74(&v308);
                      sub_10000CFBC(v178, &qword_1009492E0, &qword_1007893A0);
                      return;
                    }

                    v213 = v255;
                    v299 = *(v179 + 32);
                    v299(v255, v178, v181);
                    sub_10000A570(&v308, &v306);
                    sub_10000CF78(&v306, v307);
                    v214 = v253;
                    sub_10076FE2C();
                    if (v180(v214, 1, v181) == 1)
                    {

                      (*(v287 + 8))(v213, v181);
                      (*(v293 + 8))(v281, v294);
                      (*(v288 + 8))(v290, v289);
                      (*(v276 + 8))(v285, v277);
                      sub_10000CD74(&v308);
                      v194 = v214;
                      goto LABEL_92;
                    }

                    v295 = v173;
                    v296 = v171;
                    v299(v254, v214, v181);
                    [v165 _layoutFrameForSection:sub_10075E0AC()];
                    v216 = v215;
                    v218 = v217;
                    v220 = v219;
                    v222 = v221;
                    [v165 _offsetForOrthogonalScrollingSection:sub_10075E0AC()];
                    v224 = v298;
                    v225 = *(v298 + 112);
                    v226 = v290;
                    if (v225)
                    {
                      v227 = v223;

                      v228 = v255;
                      v229 = v216;
                      sub_1007660EC();

                      v230 = v287;
                      v231 = v218;
                      if (*(v224 + 112))
                      {

                        v232 = v252;
                        sub_10076F7DC();
                        v303 = v227;
                        *&v304 = v220;
                        *(&v304 + 1) = v222;
                        LOBYTE(v305) = 0;
                        v225 = sub_1007660CC();

                        (*(v283 + 8))(v232, v284);
                      }

                      else
                      {
                        v225 = 0;
                      }

                      v233 = v277;
                      v234 = v276;
                      v235 = *&v296;
                    }

                    else
                    {
                      v229 = v216;
                      v230 = v287;
                      v233 = v277;
                      v234 = v276;
                      v228 = v255;
                      v235 = *&v296;
                      v231 = v218;
                    }

                    v236 = *&v295;
                    v309.origin.x = v229;
                    v309.origin.y = v231;
                    v309.size.width = v220;
                    v309.size.height = v222;
                    v237 = -CGRectGetMinY(v309);
                    v310.origin.x = v235;
                    v310.origin.y = v236;
                    v310.size.width = v175;
                    v310.size.height = v177;
                    v311 = CGRectOffset(v310, 0.0, v237);
                    x = v311.origin.x;
                    y = v311.origin.y;
                    width = v311.size.width;
                    height = v311.size.height;
                    v242 = v254;
                    if (v225)
                    {

                      sub_1007660EC();
                    }

                    sub_1006BAE2C(&v306, v225, x, y, width, height);

                    v243 = *(v230 + 8);
                    v244 = v291;
                    v243(v242, v291);
                    v243(v228, v244);
                    (*(v293 + 8))(v281, v294);
                    (*(v288 + 8))(v226, v289);
                    (*(v234 + 8))(v285, v233);
                    goto LABEL_102;
                  }
                }
              }

              swift_getObjectType();
              if (swift_conformsToProtocol2() && v119)
              {
                v182 = v154;
                [v182 frame];
                sub_1006AE488(v183, v184, v185, v186);
                swift_getObjectType();
                sub_10076A01C();
              }

              v187 = v266;
              sub_10076B6FC();
              v188 = v287;
              v189 = *(v287 + 48);
              v190 = v291;
              if (v189(v187, 1, v291) == 1)
              {
                v191 = v187;
                v192 = v290;
                sub_10000CFBC(v191, &qword_1009492E0, &qword_1007893A0);
              }

              else
              {
                (*(v188 + 32))(v137, v187, v190);
                if (*(v298 + 112))
                {

                  [v154 frame];
                  sub_10076613C();
                }

                v192 = v290;
                (*(v188 + 8))(v137, v190);
              }

              sub_10000A570(&v308, &v306);
              sub_10000CF78(&v306, v307);
              v193 = v267;
              sub_10076FE2C();
              if (v189(v193, 1, v190) == 1)
              {

                (*(v293 + 8))(v281, v294);
                (*(v288 + 8))(v192, v289);
                (*(v276 + 8))(v285, v277);
                sub_10000CD74(&v308);
                v194 = v193;
LABEL_92:
                sub_10000CFBC(v194, &qword_1009492E0, &qword_1007893A0);
LABEL_103:
                sub_10000CD74(&v306);
                return;
              }

              v195 = v190;
              (*(v188 + 32))(v278, v193, v190);
              v196 = v261;
              sub_10076B6FC();
              if (v189(v196, 1, v190) == 1)
              {
                sub_10000CFBC(v196, &qword_1009492E0, &qword_1007893A0);
                v197 = 1;
                v198 = v284;
                v199 = v283;
                v200 = v263;
              }

              else
              {
                v200 = v263;
                sub_10076F7DC();
                (*(v188 + 8))(v196, v195);
                v197 = 0;
                v198 = v284;
                v199 = v283;
              }

              v201 = v262;
              (*(v199 + 56))(v200, v197, 1, v198);
              if (*(v298 + 112))
              {
                sub_100016E2C(v200, v201, &qword_1009632C0, &unk_10079B000);
                v202 = (*(v199 + 48))(v201, 1, v198);

                if (v202 == 1)
                {
                  sub_10000CFBC(v201, &qword_1009632C0, &unk_10079B000);
                }

                else
                {
                  sub_10076F7BC();
                  (*(v199 + 8))(v201, v198);
                }

                v203 = v257;
                sub_10076F78C();

                [v154 frame];
                sub_1007660EC();

                (*(v188 + 8))(v203, v291);
              }

              [v154 frame];
              v205 = v204;
              v207 = v206;
              v209 = v208;
              v211 = v210;
              v212 = *(v298 + 112);

              sub_1006BAE2C(&v306, v212, v205, v207, v209, v211);

              sub_10000CFBC(v200, &qword_1009632C0, &unk_10079B000);
              (*(v188 + 8))(v278, v291);
              (*(v293 + 8))(v281, v294);
              (*(v288 + 8))(v192, v289);
              (*(v276 + 8))(v285, v277);
LABEL_102:
              sub_10000CD74(&v308);
              goto LABEL_103;
            }

            sub_10076662C();
            v248 = 0;
LABEL_45:
            v113 = v80;
            v114 = v80;
            v115 = v290;
            sub_10038C52C(v113, v25);
            v116 = *(v288 + 8);
            v117 = v25;
            v118 = v289;
            v116(v117, v289);
            v116(v114, v118);
            goto LABEL_46;
          }
        }
      }
    }

LABEL_39:
    sub_10076660C();
    v248 = 1;
    goto LABEL_45;
  }

  v292 = v62;
  v63 = a1;
  sub_10075E0AC();
  v64 = v297[10];
  v288 = v297[12];
  v65 = sub_100761B4C();
  v290 = v63;
  [v63 frame];
  v289 = sub_1006AE488(v66, v67, v68, v69);
  sub_100767D5C();
  sub_10076F64C();
  sub_10076FC1C();
  v70 = v308;
  sub_100764FAC();
  sub_10076F63C();
  v71 = v308;
  sub_10076B6FC();
  v72 = v287;
  v73 = v291;
  if ((*(v287 + 48))(v53, 1, v291) == 1)
  {
    sub_10000CFBC(v53, &qword_1009492E0, &qword_1007893A0);
    v74 = 1;
  }

  else
  {
    sub_10076F7DC();
    (*(v72 + 8))(v53, v73);
    v74 = 0;
  }

  (*(v283 + 56))(v61, v74, 1, v284);
  v96 = v70;
  v291 = v96;
  v97 = v298;
  v98 = sub_1006AE750(v61, v70, v71, 0);

  sub_10000CFBC(v61, &qword_1009632C0, &unk_10079B000);
  type metadata accessor for ShelfComponentContainerDelegate(0, v64, v297[11], v288);
  v297 = v71;
  v99 = v299;
  swift_unknownObjectRetain();
  v100 = sub_10075E0AC();
  sub_10076B5CC();
  v101 = sub_10076B58C();
  (*(v293 + 8))(v40, v294);
  v102 = *(v97 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  v287 = v98;
  v104 = sub_10016FCAC(v99, v100, v101 & 1, v102, v98, &protocol witness table for CompoundScrollObserver, v289, Strong);

  swift_unknownObjectRetain();

  v105 = v290;
  v106 = swift_getObjectType();
  v107 = sub_10075E0AC();
  WitnessTable = swift_getWitnessTable();
  v109 = v292;
  v110 = *(v292 + 32);

  v110(v65, v107, v286, v296, v104, WitnessTable, v295, v106, v109);

  swift_unknownObjectRelease();
}

void sub_1006B5CAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v35 = a3;
  v8 = *v4;
  v9 = sub_10075E11C();
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  __chkstk_darwin(v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000A5D4(&qword_1009572A0, &qword_1007909F0);
  __chkstk_darwin(v13 - 8);
  v14 = sub_10000A5D4(&unk_1009520C0, &unk_100788FC0);
  v36 = *(v14 - 8);
  v37 = v14;
  __chkstk_darwin(v14);
  v16 = v32 - v15;
  isa = sub_10075E02C().super.isa;
  v18 = [a4 cellForItemAtIndexPath:isa];

  if (v18)
  {
    v34 = a4;
    swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = v19;
      v21 = v5[2];
      v22 = *(v8 + 96);
      v32[1] = *(v8 + 80);
      v32[2] = v21;
      v32[0] = v22;
      sub_100761B3C();
      v33 = *(v39 + 2);
      v33(v12, a1, v38);
      sub_10076FDDC();
      v40 = v5[3];

      sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
      sub_1001C9F18();
      sub_10076F82C();
      ObjectType = swift_getObjectType();
      v24 = (*(v20 + 88))(v41, v16, v35, ObjectType, v20);
      v25 = v24;
      if (v24)
      {
        sub_100761ACC();
        v26 = v34;
        if ((v25 & 2) == 0)
        {
LABEL_5:
          if ((v25 & 4) == 0)
          {
LABEL_7:

            (*(v36 + 8))(v16, v37);
            sub_10000CD74(v41);
            return;
          }

LABEL_6:
          sub_10000A5D4(&qword_100944C48, &unk_10079AFF0);
          v27 = (*(v39 + 80) + 32) & ~*(v39 + 80);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_100783DD0;
          v33((v28 + v27), a1, v38);
          v29 = sub_1007701AC().super.isa;

          [v26 reloadItemsAtIndexPaths:v29];

          v18 = v29;
          goto LABEL_7;
        }
      }

      else
      {
        v26 = v34;
        if ((v24 & 2) == 0)
        {
          goto LABEL_5;
        }
      }

      v31 = sub_10075E02C().super.isa;
      [v26 deselectItemAtIndexPath:v31 animated:1];

      if ((v25 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    a4 = v34;
  }

  sub_100761ACC();
  v39 = sub_10075E02C().super.isa;
  [a4 deselectItemAtIndexPath:v39 animated:1];
  v30 = v39;
}

uint64_t sub_1006B611C(uint64_t a1)
{
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = 0;
  if (v7 != enum case for Shelf.ContentType.artwork(_:) && v7 != enum case for Shelf.ContentType.ribbonBar(_:) && v7 != enum case for Shelf.ContentType.ribbonFlow(_:) && v7 != enum case for Shelf.ContentType.paragraph(_:) && v7 != enum case for Shelf.ContentType.footnote(_:) && v7 != enum case for Shelf.ContentType.titledParagraph(_:) && v7 != enum case for Shelf.ContentType.reviewsContainer(_:) && v7 != enum case for Shelf.ContentType.reviewSummary(_:) && v7 != enum case for Shelf.ContentType.editorialLink(_:) && v7 != enum case for Shelf.ContentType.quote(_:) && v7 != enum case for Shelf.ContentType.framedArtwork(_:) && v7 != enum case for Shelf.ContentType.screenshots(_:) && v7 != enum case for Shelf.ContentType.appShowcase(_:) && v7 != enum case for Shelf.ContentType.inAppPurchaseShowcase(_:) && v7 != enum case for Shelf.ContentType.linkableText(_:) && v7 != enum case for Shelf.ContentType.framedVideo(_:) && v7 != enum case for Shelf.ContentType.productDescription(_:) && v7 != enum case for Shelf.ContentType.banner(_:) && v7 != enum case for Shelf.ContentType.roundedButton(_:) && v7 != enum case for Shelf.ContentType.titledButtonStack(_:) && v7 != enum case for Shelf.ContentType.smallStoryCard(_:) && v7 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v7 != enum case for Shelf.ContentType.largeHeroBreakout(_:) && v7 != enum case for Shelf.ContentType.upsellBreakout(_:) && v7 != enum case for Shelf.ContentType.smallBreakout(_:) && v7 != enum case for Shelf.ContentType.arcadeFooter(_:) && v7 != enum case for Shelf.ContentType.editorialQuote(_:) && v7 != enum case for Shelf.ContentType.gameCenterReengagement(_:) && v7 != enum case for Shelf.ContentType.gameCenterPlayerGameAchievementSummary(_:) && v7 != enum case for Shelf.ContentType.preorderDisclaimer(_:) && v7 != enum case for Shelf.ContentType.privacyHeader(_:) && v7 != enum case for Shelf.ContentType.privacyFooter(_:) && v7 != enum case for Shelf.ContentType.privacyCategory(_:) && v7 != enum case for Shelf.ContentType.privacyDefinition(_:) && v7 != enum case for Shelf.ContentType.heroCarousel(_:) && v7 != enum case for Shelf.ContentType.unifiedMessage(_:))
  {
    (*(v3 + 8))(v6, v2);
    if (sub_1007706FC())
    {
      v8 = sub_10077071C() ^ 1;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

uint64_t sub_1006B6510(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_10076B5BC();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  result = 0;
  if (v12 != enum case for Shelf.ContentType.personalizationFeedbackContainer(_:) && v12 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    (*(v8 + 8))(v11, v7);
    swift_getObjectType();
    v15 = [a3 traitCollection];
    v16 = (*(*v3 + 696))(a1, v15);

    if (v16)
    {
      return sub_100413DB0(a2, a3, a1);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1006B66DC(uint64_t a1, void *a2)
{
  v38 = a2;
  v4 = *v2;
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v37 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v36 - v9;
  __chkstk_darwin(v11);
  v13 = v36 - v12;
  v14 = v2[2];
  sub_10075E0AC();
  v15 = *(v4 + 80);
  sub_100761A7C();
  sub_10075E0AC();
  v39 = v15;
  v40 = v14;
  v16 = sub_100761A3C();
  (*(v6 + 16))(v10, v13, v5);
  v17 = (*(v6 + 88))(v10, v5);
  if (v17 == enum case for Shelf.ContentType.smallLockup(_:) || v17 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v33 = v17 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v17 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:);
  if (v33 || v17 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.ribbonBar(_:))
  {
    goto LABEL_8;
  }

  if (v17 == enum case for Shelf.ContentType.editorialCard(_:) || v17 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_6;
  }

  v19 = 1;
  if (v17 == enum case for Shelf.ContentType.brick(_:) || v17 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
    goto LABEL_9;
  }

  if (v17 == enum case for Shelf.ContentType.reviews(_:) || v17 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v17 == enum case for Shelf.ContentType.framedVideo(_:) || v17 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v17 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v17 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_6;
  }

  if (v17 == enum case for Shelf.ContentType.editorialStoryCard(_:))
  {
    goto LABEL_9;
  }

  if (v17 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v17 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v17 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v17 == enum case for Shelf.ContentType.posterLockup(_:) || v17 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
LABEL_6:
    v19 = v16;
    goto LABEL_9;
  }

  if (v17 != enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v19 = v16;
    if (v17 != enum case for Shelf.ContentType.appPromotion(_:))
    {
      (*(v6 + 8))(v10, v5);
      v19 = 0;
    }
  }

LABEL_9:
  v22 = *(v6 + 8);
  v20 = v6 + 8;
  v21 = v22;
  v22(v13, v5);
  v23 = sub_10075E0AC();
  if (v19)
  {
    v24 = sub_100761ADC();
    result = sub_10075E09C();
    if (!__OFADD__(result, 1))
    {
      if (v24)
      {
        if (result != 0x7FFFFFFFFFFFFFFFLL || v24 != -1)
        {
          return (result + 1) % v24 == 0;
        }

        goto LABEL_58;
      }

      goto LABEL_54;
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v26 = sub_1006BA354(v23);
  v36[1] = v20;
  v27 = v26;
  sub_10075E0AC();
  v28 = v37;
  sub_100761A7C();
  v36[0] = a1;
  sub_10075E0AC();
  v29 = sub_100761A8C();
  v30 = sub_1006B6510(v28, v29, v38);
  result = v21(v28, v5);
  if (__OFSUB__(v27, 1))
  {
    goto LABEL_53;
  }

  if (!v30)
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v27 == 0x8000000000000001 && v30 == -1)
  {
    goto LABEL_59;
  }

  v31 = (v27 - 1) % v30;
  v32 = v31 + 1;
  if (__OFADD__(v31, 1))
  {
    goto LABEL_56;
  }

  result = sub_10075E09C();
  if (__OFSUB__(v27, v32))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    return result;
  }

  return result >= v27 - v32;
}

uint64_t sub_1006B6C10(uint64_t a1, void *a2)
{
  v14 = a2;
  v2 = sub_10076B5BC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10075E0AC();
  v6 = sub_100761A8C();
  sub_10075E0AC();
  sub_100761A7C();
  sub_10075E0AC();
  v7 = sub_100761A8C();
  v8 = sub_1006B6510(v5, v7, v14);
  result = (*(v3 + 8))(v5, v2);
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (!v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 == 0x8000000000000001 && v8 == -1)
  {
    goto LABEL_14;
  }

  v11 = (v6 - 1) % v8;
  v12 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    result = sub_10075E09C();
    if (!__OFSUB__(v6, v12))
    {
      return result >= v6 - v12;
    }

    goto LABEL_13;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1006B6DE0(void *a1@<X0>, NSIndexSet *a2@<X8>)
{
  sub_10075DF9C(a2);
  v4 = v3;
  [a1 insertSections:v3];
}

id sub_1006B6E3C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v28 = a4;
  v29 = a3;
  v34 = a2;
  v32 = sub_10076B6EC();
  v8 = *(v32 - 8);
  *&v9 = __chkstk_darwin(v32).n128_u64[0];
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 bounds];
  v13 = v12;
  v15 = v14;
  v33 = a1;
  sub_100761B4C();
  v16 = sub_10076B75C();

  v17 = sub_100761ADC();
  sub_100761B4C();
  sub_10076B70C();

  v19 = v30;
  v18 = v31;
  v20 = (*(v28 + 64))(v16, v17, v11, v31, v30, v13, v15);

  (*(v8 + 8))(v11, v32);
  v21 = [objc_opt_self() sectionWithGroup:v20];
  v22 = [objc_opt_self() standardUserDefaults];
  v23 = sub_10077053C();

  [v21 setOrthogonalScrollingBehavior:v23];
  swift_getObjectType();
  PageTraitEnvironment.pageColumnMargin.getter();
  [v21 setInterGroupSpacing:?];
  sub_1006ADB6C(v33, v34, v19, v18);
  aBlock[4] = sub_1006BB6E4;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100751F08;
  aBlock[3] = &unk_10089FB70;
  v25 = _Block_copy(aBlock);

  [v21 setVisibleItemsInvalidationHandler:v25];
  _Block_release(v25);

  return v21;
}

id sub_1006B7158(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  type metadata accessor for ShelfComponentContainerDelegate(0, *(*v9 + 80), *(*v9 + 88), *(*v9 + 96));
  v13 = v8[2];
  swift_unknownObjectRetain();
  v14 = sub_10076B58C();
  v16 = v9[3];
  v15 = v9[4];
  v17 = v9[5];
  Strong = swift_unknownObjectWeakLoadStrong();
  v19 = sub_10016FCAC(v13, a1, v14 & 1, v16, v15, v17, 0, Strong);

  swift_unknownObjectRetain();

  v20 = sub_100761B4C();
  WitnessTable = swift_getWitnessTable();
  v22 = *(a6 + 24);

  v23 = v22(a1, v20, a8, v19, WitnessTable, a7, a2, a3);
  v25 = v24;

  v26 = objc_opt_self();
  v27 = [v26 absoluteDimension:v23];
  v28 = [v26 absoluteDimension:v25];
  v29 = [objc_opt_self() sizeWithWidthDimension:v27 heightDimension:v28];

  v30 = [objc_opt_self() itemWithLayoutSize:v29];
  v31 = objc_opt_self();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1007841E0;
  *(v32 + 32) = v30;
  sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);
  v33 = v30;
  isa = sub_1007701AC().super.isa;

  v35 = [v31 verticalGroupWithLayoutSize:v29 subitems:isa];

  v36 = [objc_opt_self() sectionWithGroup:v35];
  [v36 setOrthogonalScrollingBehavior:0];

  return v36;
}

void sub_1006B74B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v105 = a7;
  v104 = a6;
  v125 = a5;
  v117 = sub_10076B5BC();
  v13 = *(v117 - 8);
  __chkstk_darwin(v117);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&qword_1009638C8, &unk_1007B36C0);
  __chkstk_darwin(v16 - 8);
  v119 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v98 - v19;
  v124 = sub_10000A5D4(&qword_100959280, &qword_1007A5F20);
  v112 = *(v124 - 8);
  __chkstk_darwin(v124);
  v110 = &v98 - v21;
  v126 = sub_10075E11C();
  v22 = *(v126 - 8);
  __chkstk_darwin(v126);
  v127 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v109 = &v98 - v25;
  v111 = a1;
  v26 = sub_1006BA354(a1);
  if (v26 < 1)
  {
    return;
  }

  v120 = v13;
  v27 = v26;
  v28 = v125;
  [v125 pageMarginInsets];
  (*(a4 + 32))(0, v28, a3, a4, v29);
  v30 = sub_1006B6510(a2, v27, v28);
  v106 = v27;
  v31 = ceil(v27 / v30);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_62;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  v99 = v31;
  if (v31 >= 1)
  {
    v32 = v30;
    v129 = _swiftEmptyArrayStorage;
    if ((v30 & 0x8000000000000000) == 0)
    {
      v100 = 0;
      v103 = (v22 + 16);
      v123 = (v22 + 8);
      v121 = (v112 + 48);
      v122 = (v112 + 56);
      v115 = (v120 + 16);
      v116 = (v22 + 32);
      v114 = (v120 + 88);
      v113 = enum case for Shelf.ContentType.privacyType(_:);
      v107 = (v120 + 8);
      v102 = xmmword_100784500;
      v33 = 0.0;
      v118 = v15;
      v34 = v119;
      v35 = v124;
      v108 = v30;
      v101 = a2;
      while (1)
      {
        if (v32)
        {
          v46 = v100 * v32;
          if ((v100 * v32) >> 64 != (v100 * v32) >> 63)
          {
            goto LABEL_60;
          }

          v47 = 0;
          v48 = 0.0;
          v49 = _swiftEmptyArrayStorage;
          v50 = v106;
          while (1)
          {
            v51 = v46 + v47;
            if (__OFADD__(v46, v47))
            {
              break;
            }

            if (v51 < v50)
            {
              sub_10000A5D4(&qword_100952110, qword_100790770);
              v52 = swift_allocObject();
              *(v52 + 16) = v102;
              *(v52 + 32) = v111;
              *(v52 + 40) = v51;
              v53 = v109;
              sub_10075E01C();
              v54 = sub_1006B28E4(v53, v105, v125, v104);
              v56 = v55;
              v57 = (v110 + *(v35 + 48));
              (*v103)();
              *v57 = v54;
              v57[1] = v56;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v49 = sub_10049E4C8(0, v49[2] + 1, 1, v49);
              }

              v59 = v49[2];
              v58 = v49[3];
              v32 = v108;
              if (v59 >= v58 >> 1)
              {
                v49 = sub_10049E4C8((v58 > 1), v59 + 1, 1, v49);
              }

              (*v123)(v109, v126);
              v49[2] = v59 + 1;
              sub_100023AD0(v110, v49 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v59, &qword_100959280, &qword_1007A5F20);
              if (v48 <= v56)
              {
                v48 = v56;
              }

              v35 = v124;
              v50 = v106;
            }

            if (v32 == ++v47)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v48 = 0.0;
        v49 = _swiftEmptyArrayStorage;
LABEL_26:
        v60 = 0;
        ++v100;
        v61 = _swiftEmptyArrayStorage;
        v128 = _swiftEmptyArrayStorage;
        v62 = v49[2];
        v63 = v48;
        v64 = v101;
        v120 = v62;
        if (v62)
        {
LABEL_27:
          if (v60 < v49[2])
          {
            sub_100016E2C(v49 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v60, v34, &qword_100959280, &qword_1007A5F20);
            v65 = 0;
            ++v60;
            goto LABEL_30;
          }

          goto LABEL_59;
        }

        while (1)
        {
          v65 = 1;
          v60 = v62;
LABEL_30:
          (*v122)(v34, v65, 1, v35);
          sub_100023AD0(v34, v20, &qword_1009638C8, &unk_1007B36C0);
          if ((*v121)(v20, 1, v35) == 1)
          {
            break;
          }

          v66 = &v20[*(v35 + 48)];
          v67 = *v66;
          v68 = v66[1];
          (*v116)(v127, v20, v126);
          v69 = v117;
          (*v115)(v15, v64, v117);
          v70 = (*v114)(v15, v69);
          if (v70 == v113)
          {
            v71 = [v125 traitCollection];
            v72 = sub_1007706FC();

            if (v72)
            {
              v63 = v48;
              v68 = v48;
            }
          }

          else
          {
            (*v107)(v15, v69);
          }

          v73 = objc_opt_self();
          v74 = [v73 absoluteDimension:v67];
          v75 = [v73 absoluteDimension:v68];
          v76 = [objc_opt_self() sizeWithWidthDimension:v74 heightDimension:v75];

          v77 = v76;
          sub_1006B891C(v127, v67, v68);
          sub_100016F40(0, &unk_10095DD70, NSCollectionLayoutSupplementaryItem_ptr);
          isa = sub_1007701AC().super.isa;

          v79 = [objc_opt_self() itemWithLayoutSize:v77 supplementaryItems:isa];

          if (v32 == 1)
          {
            sub_1006AF090(v111, v125);
            if (v81 == 0.0 && v80 == 0.0)
            {
              v82 = objc_opt_self();
              v83 = [v82 flexibleSpacing:0.0];
              v84 = [v82 flexibleSpacing:0.0];
              v85 = v8;
              v86 = [objc_opt_self() spacingForLeading:v83 top:0 trailing:v84 bottom:0];

              [v79 setEdgeSpacing:v86];
              v8 = v85;
              v32 = v108;
              v64 = v101;
            }
          }

          v87 = v79;
          sub_10077019C();
          if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_10077021C();
          }

          sub_10077025C();

          (*v123)(v127, v126);
          v61 = v128;
          v15 = v118;
          v34 = v119;
          v35 = v124;
          v62 = v120;
          if (v60 != v120)
          {
            goto LABEL_27;
          }
        }

        if (v61 >> 62)
        {
          if (sub_10077158C() != 1 || !sub_10077158C())
          {
LABEL_8:
            v36 = objc_opt_self();
            v37 = objc_opt_self();
            v38 = [v37 fractionalWidthDimension:1.0];
            v39 = [v37 estimatedDimension:v63];
            v40 = [objc_opt_self() sizeWithWidthDimension:v38 heightDimension:v39];

            sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);
            v41 = sub_1007701AC().super.isa;

            v42 = [v36 horizontalGroupWithLayoutSize:v40 subitems:v41];

            v43 = sub_1006AF6D0(v111, v125);
            v44 = [objc_opt_self() fixedSpacing:v43];
            [v42 setInterItemSpacing:v44];

            v45 = v42;
            sub_10077019C();
            if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_10077021C();
            }

            sub_10077025C();
            v15 = v118;
            v34 = v119;
            v35 = v124;
            goto LABEL_11;
          }
        }

        else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) != 1)
        {
          goto LABEL_8;
        }

        if ((v61 & 0xC000000000000001) != 0)
        {
          v88 = sub_10077149C();
        }

        else
        {
          if (!*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v88 = *(v61 + 32);
        }

        v89 = v88;

        v45 = v89;
        sub_10077019C();
        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10077021C();
        }

        sub_10077025C();
LABEL_11:

        v33 = v33 + v63 + 0.0;
        if (v100 == v99)
        {
          v90 = objc_opt_self();
          v91 = [v90 fractionalWidthDimension:1.0];
          v92 = [v90 estimatedDimension:v33];
          v93 = [objc_opt_self() sizeWithWidthDimension:v91 heightDimension:v92];

          v94 = objc_opt_self();
          sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);
          v95 = sub_1007701AC().super.isa;

          v96 = [v94 verticalGroupWithLayoutSize:v93 subitems:v95];

          v97 = [objc_opt_self() fixedSpacing:0.0];
          [v96 setInterItemSpacing:v97];

          [objc_opt_self() sectionWithGroup:v96];
          return;
        }
      }
    }

    goto LABEL_65;
  }
}

void *sub_1006B8314(uint64_t a1, __n128 a2)
{
  v2 = sub_1007621EC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100761A6C();
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v3 + 96))(v5, v2);

    v7 = *(sub_10000A5D4(&qword_10094E098, qword_100795D80) + 48);
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007841E0;
    v9 = objc_opt_self();
    type metadata accessor for ArtworkSectionBackgroundView();
    sub_1007708EC();
    v10 = sub_10076FF6C();

    v11 = [v9 backgroundDecorationItemWithElementKind:v10];

    *(v8 + 32) = v11;
    v12 = sub_1007659CC();
    (*(*(v12 - 8) + 8))(&v5[v7], v12);
  }

  else if (v6 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v3 + 96))(v5, v2);

    v13 = sub_10000A5D4(&qword_10094B500, &qword_10079E1D0);
    v14 = v13[12];
    v15 = v13[16];
    v16 = v13[20];
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007841E0;
    v17 = objc_opt_self();
    type metadata accessor for GradientSectionBackgroundView();
    sub_1007708EC();
    v18 = sub_10076FF6C();

    v19 = [v17 backgroundDecorationItemWithElementKind:v18];

    *(v8 + 32) = v19;
    v20 = sub_1007659CC();
    (*(*(v20 - 8) + 8))(&v5[v16], v20);
    v21 = sub_10076A05C();
    v22 = *(*(v21 - 8) + 8);
    v22(&v5[v15], v21);
    v22(&v5[v14], v21);
  }

  else if (v6 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v3 + 96))(v5, v2);
    v23 = *(sub_10000A5D4(qword_10094ADC0, &unk_1007A2D00) + 48);
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007841E0;
    v24 = objc_opt_self();
    type metadata accessor for MaterialGradientSectionBackgroundView();
    sub_1007708EC();
    v25 = sub_10076FF6C();

    v26 = [v24 backgroundDecorationItemWithElementKind:v25];

    *(v8 + 32) = v26;
    v27 = sub_1007659CC();
    (*(*(v27 - 8) + 8))(&v5[v23], v27);
    v28 = sub_10076AA6C();
    (*(*(v28 - 8) + 8))(v5, v28);
  }

  else if (v6 == enum case for ShelfBackground.none(_:))
  {
    return _swiftEmptyArrayStorage;
  }

  else
  {
    v29 = enum case for ShelfBackground.interactive(_:);
    v30 = v6;
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1007841E0;
    v31 = objc_opt_self();
    if (v30 == v29)
    {
      type metadata accessor for InteractiveSectionBackgroundView(0);
      sub_1007708EC();
      v32 = sub_10076FF6C();

      v33 = [v31 backgroundDecorationItemWithElementKind:v32];

      *(v8 + 32) = v33;
    }

    else
    {
      type metadata accessor for GradientSectionBackgroundView();
      sub_1007708EC();
      v34 = sub_10076FF6C();

      v35 = [v31 backgroundDecorationItemWithElementKind:v34];

      *(v8 + 32) = v35;
      (*(v3 + 8))(v5, v2);
    }
  }

  return v8;
}

void *sub_1006B891C(uint64_t a1, double a2, double a3)
{
  v5 = sub_10000A5D4(&unk_100952090, &unk_100784CD0);
  __chkstk_darwin(v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_10076182C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  sub_100761B0C();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_10000CFBC(v7, &unk_100952090, &unk_100784CD0);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v11, v14, v8);
    v15 = (*(v9 + 88))(v11, v8);
    if (v15 == enum case for ItemBackground.ad(_:) || v15 == enum case for ItemBackground.insetAd(_:) || v15 == enum case for ItemBackground.clearAdWithSeparator(_:))
    {
      v18 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{-8.0, -8.0}];
      v19 = objc_opt_self();
      v20 = [v19 absoluteDimension:a2 + 16.0];
      v21 = [v19 absoluteDimension:a3];
      v22 = [objc_opt_self() sizeWithWidthDimension:v20 heightDimension:v21];

      v23 = v22;
      sub_100376324();
      v24 = v18;
      v25 = sub_10076FF6C();

      v26 = [objc_opt_self() supplementaryItemWithLayoutSize:v23 elementKind:v25 containerAnchor:v24];

      [v26 setZIndex:-1];
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1007841E0;
      *(v27 + 32) = v26;

      (*(v9 + 8))(v14, v8);
      return v27;
    }

    v29 = *(v9 + 8);
    v29(v14, v8);
    v29(v11, v8);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1006B8D28(uint64_t a1, uint64_t a2)
{
  v45 = sub_10000A5D4(&qword_1009572A0, &qword_1007909F0);
  v41 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v33[-v3];
  v4 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v4 - 8);
  v43 = &v33[-v5];
  v48 = sub_10076F7FC();
  v6 = *(v48 - 8);
  __chkstk_darwin(v48);
  v39 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v38 = &v33[-v9];
  v10 = sub_10075DF7C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v33[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10000A5D4(&qword_10094CCD8, &unk_100793408);
  __chkstk_darwin(v13);
  v15 = &v33[-v14];
  sub_10075DF8C();
  swift_beginAccess();
  sub_10075DFDC();
  sub_1006BCDF0(&qword_10094CCE0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v46 = (v11 + 8);
  v36 = v6 + 16;
  v35 = v6 + 32;
  v34 = (v6 + 8);
  v42 = (v6 + 56);
  v40 = v6;
  ++v41;
  v37 = v10;
  while (1)
  {
    v18 = v47;
    sub_10077040C();
    sub_1006BCDF0(&qword_10094CCE8, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v19 = sub_10076FF1C();
    (*v46)(v18, v10);
    if (v19)
    {
      break;
    }

    v20 = sub_10077042C();
    v22 = *v21;
    v20(v49, 0);
    sub_10077041C();
    v23 = *(a2 + 56);
    if (*(v23 + 16))
    {
      v24 = sub_10060FF40(v22);
      if (v25)
      {
        v26 = v39;
        v27 = v40;
        v28 = *(v23 + 56) + *(v40 + 72) * v24;
        v29 = v48;
        (*(v40 + 16))(v39, v28, v48);
        v30 = *(v27 + 32);
        v31 = v38;
        v30(v38, v26, v29);
        if (*(a2 + 112))
        {

          sub_10076610C();
        }

        (*v34)(v31, v48);
        v10 = v37;
      }
    }

    v16 = v43;
    (*v42)(v43, 1, 1, v48);
    swift_beginAccess();
    sub_100098444(v16, v22);
    swift_endAccess();
    v50 = v22;
    sub_10077140C();
    v17 = v44;
    sub_10076FDEC();
    sub_10076F9BC();
    (*v41)(v17, v45);
  }

  return sub_10000CFBC(v15, &qword_10094CCD8, &unk_100793408);
}

uint64_t sub_1006B92C0(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v21 = sub_10000A5D4(&qword_1009572A0, &qword_1007909F0);
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v20 = &v19 - v3;
  v23 = sub_10075DF7C();
  v4 = *(v23 - 8);
  __chkstk_darwin(v23);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_10094CCD8, &unk_100793408);
  __chkstk_darwin(v7);
  v9 = &v19 - v8;
  sub_10075DF8C();
  sub_10075DFDC();
  sub_1006BCDF0(&qword_10094CCE0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v10 = (v4 + 8);
  for (i = (v2 + 8); ; (*i)(v17, v21))
  {
    sub_10077040C();
    sub_1006BCDF0(&qword_10094CCE8, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v12 = v23;
    v13 = sub_10076FF1C();
    (*v10)(v6, v12);
    if (v13)
    {
      break;
    }

    v14 = sub_10077042C();
    v16 = *v15;
    v14(v24, 0);
    sub_10077041C();
    v24[6] = v16;
    sub_10077140C();
    v17 = v20;
    sub_10076FDEC();
    sub_10076F9BC();
  }

  return sub_10000CFBC(v9, &qword_10094CCD8, &unk_100793408);
}

void sub_1006B9604(void *a1, uint64_t a2)
{
  v36 = a2;
  v35 = sub_10000A5D4(&qword_1009572A0, &qword_1007909F0);
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v26 - v4;
  v33 = sub_10075E11C();
  v5 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v31 = &v26 - v9;
  v37 = a1;
  v10 = [a1 visibleCells];
  sub_100016F40(0, &qword_10094D1D0, UICollectionViewCell_ptr);
  v11 = sub_1007701BC();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_16:

    return;
  }

  v12 = sub_10077158C();
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = v11 & 0xC000000000000001;
    v28 = (v3 + 8);
    v29 = (v5 + 32);
    v27 = (v5 + 8);
    v30 = v11 & 0xC000000000000001;
    v15 = v33;
    do
    {
      if (v14)
      {
        v16 = sub_10077149C();
      }

      else
      {
        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      swift_getObjectType();
      if (swift_conformsToProtocol2() && v17 && (v18 = [v37 indexPathForCell:v17]) != 0)
      {
        v19 = v32;
        v20 = v18;
        sub_10075E06C();

        v21 = v11;
        v22 = v31;
        (*v29)(v31, v19, v15);
        v38 = sub_10075E0AC();
        sub_10077140C();
        v23 = v34;
        sub_10076FDEC();
        sub_10076F9BC();

        v24 = v23;
        v14 = v30;
        (*v28)(v24, v35);
        v25 = v22;
        v11 = v21;
        (*v27)(v25, v15);
      }

      else
      {
      }

      ++v13;
    }

    while (v12 != v13);
  }
}

BOOL sub_1006B9998(uint64_t a1)
{
  v1 = sub_10076B5BC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  sub_100761A7C();
  (*(v2 + 32))(v4, v7, v1);
  v8 = (*(v2 + 88))(v4, v1);
  if (v8 == enum case for Shelf.ContentType.personalizationFeedbackContainer(_:))
  {
    v9 = type metadata accessor for PersonalizationFeedbackCollectionViewCell();
  }

  else if (v8 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    v9 = type metadata accessor for InformationRibbonCollectionViewCell(0);
  }

  else
  {
    (*(v2 + 8))(v4, v1);
    v9 = 0;
  }

  return v9 != 0;
}

uint64_t sub_1006B9B4C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10076B5BC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  if (sub_100761A9C() > a1)
  {
    sub_100761A7C();
    if (!sub_1006B9998(a1) && ((*(*v2 + 696))(v11, a2) & 1) != 0)
    {
      (*(v6 + 32))(v8, v11, v5);
      v12 = (*(v6 + 88))(v8, v5);
      v13 = v12 == enum case for Shelf.ContentType.annotation(_:) || v12 == enum case for Shelf.ContentType.productCapability(_:);
      v14 = v13 || v12 == enum case for Shelf.ContentType.productPageLink(_:);
      v15 = v14 || v12 == enum case for Shelf.ContentType.privacyType(_:);
      v11 = v8;
      if (v15)
      {
        return 1;
      }
    }

    (*(v6 + 8))(v11, v5);
  }

  return 0;
}

uint64_t sub_1006B9D7C(char a1, id a2)
{
  v3 = [a2 traitCollection];
  v4 = sub_10077071C();

  v5 = 1;
  if ((a1 & 1) == 0)
  {
    v5 = 2;
  }

  if (v4)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

double sub_1006B9DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    sub_100761B1C();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1006B9E7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_10075E11C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000A5D4(&qword_100952110, qword_100790770);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100784500;
  *(v11 + 32) = sub_10075E0AC();
  *(v11 + 40) = a1;
  sub_10075E01C();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    sub_100761B2C();
    swift_unknownObjectRelease();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1006B9FF8()
{
  sub_1006ACC6C();

  return swift_deallocClassInstance();
}

double sub_1006BA044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = a3;
  v22 = a1;
  v21[0] = sub_10076D39C();
  v4 = *(v21[0] - 8);
  __chkstk_darwin(v21[0]);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10076D1AC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076D9AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for TitleHeaderView.TextConfiguration(0) + 24);
  v16 = sub_10076D3DC();
  (*(*(v16 - 8) + 16))(v10, a2 + v15, v16);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  v23[3] = v7;
  v23[4] = &protocol witness table for FontSource;
  v17 = sub_10000DB7C(v23);
  (*(v8 + 16))(v17, v10, v7);
  sub_10076D9BC();
  (*(v8 + 8))(v10, v7);
  sub_10076D99C();
  if (v22)
  {
    sub_10076BEFC();
    sub_10076D3AC();
    sub_10076D31C();
    v19 = v18;
    (*(v4 + 8))(v6, v21[0]);
  }

  else
  {
    v19 = 0.0;
  }

  (*(v12 + 8))(v14, v11);
  return v19;
}

uint64_t sub_1006BA354(uint64_t a1)
{
  if (sub_100761A9C() <= a1 || (sub_100761A4C() & 1) != 0)
  {
    return 0;
  }

  v3 = sub_100761A8C();
  if (sub_1006B9998(a1))
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

void sub_1006BA410(uint64_t a1, void *a2)
{
  v43 = a2;
  v3 = sub_10076B5BC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v42 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v32[-v7];
  __chkstk_darwin(v9);
  v39 = &v32[-v10];
  v11 = sub_10076F09C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v14, enum case for DispatchQoS.QoSClass.utility(_:), v11);
  v15 = sub_1007706BC();
  v16 = v14;
  v17 = v8;
  (*(v12 + 8))(v16, v11);
  sub_1004AF54C(v15, a1);

  v18 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  v22 = (v19 + 63) >> 6;
  v37 = v4 + 32;
  v38 = v4 + 16;
  v36 = v4 + 88;
  v35 = enum case for Shelf.ContentType.personalizationFeedbackContainer(_:);
  v33 = enum case for Shelf.ContentType.informationRibbon(_:);
  v40 = a1;
  v41 = (v4 + 8);

  v23 = 0;
  v34 = v4;
  while (v21)
  {
LABEL_10:
    v25 = v39;
    v26 = *(v4 + 16);
    v26(v39, *(v40 + 48) + *(v4 + 72) * (__clz(__rbit64(v21)) | (v23 << 6)), v3);
    (*(v4 + 32))(v17, v25, v3);
    v27 = v42;
    v26(v42, v17, v3);
    v28 = (*(v4 + 88))(v27, v3);
    if (v28 == v35)
    {
      type metadata accessor for PersonalizationFeedbackCollectionViewCell();
    }

    else if (v28 == v33)
    {
      type metadata accessor for InformationRibbonCollectionViewCell(0);
    }

    else
    {
      (*v41)(v42, v3);
      if (!sub_10041329C())
      {
        goto LABEL_4;
      }
    }

    if (v43)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_10076B59C();
      v30 = v17;
      v31 = sub_10076FF6C();

      [v43 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v31];

      v17 = v30;
      v4 = v34;
    }

LABEL_4:
    v21 &= v21 - 1;
    (*v41)(v17, v3);
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      return;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      v23 = v24;
      goto LABEL_10;
    }
  }

  __break(1u);
}

double sub_1006BA820(uint64_t a1)
{
  sub_10076F9CC();
  if (*(v1 + 112))
  {

    sub_10076611C();
  }

  return result;
}

uint64_t sub_1006BA87C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000A5D4(&unk_10094E1D0, qword_100796000);
  __chkstk_darwin(v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_10075DFDC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v23 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v21 - v14;
  v24 = a1;
  sub_100016E2C(a1, v9, &unk_10094E1D0, qword_100796000);
  v16 = *(v11 + 48);
  if (v16(v9, 1, v10) == 1)
  {
    sub_10000CFBC(v9, &unk_10094E1D0, qword_100796000);
    if (v2[14])
    {

      sub_10076611C();
    }

    swift_beginAccess();
    v2[7] = _swiftEmptyDictionarySingleton;
  }

  else
  {
    v17 = (*(v11 + 32))(v15, v9, v10);
    v21[1] = v21;
    v26[0] = v2[3];
    __chkstk_darwin(v17);
    v22 = v16;
    v21[-2] = v15;
    v21[-1] = v2;

    sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
    v21[0] = 0;
    sub_1001C9F18();
    v16 = v22;
    sub_10076F35C();

    (*(v11 + 8))(v15, v10);
  }

  sub_1006ADF90();
  sub_100016E2C(v24, v6, &unk_10094E1D0, qword_100796000);
  if (v16(v6, 1, v10) == 1)
  {
    return sub_10000CFBC(v6, &unk_10094E1D0, qword_100796000);
  }

  v19 = v23;
  v20 = (*(v11 + 32))(v23, v6, v10);
  v25 = v2[3];
  __chkstk_darwin(v20);
  v21[-2] = v19;
  v21[-1] = v2;

  sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
  sub_1001C9F18();
  sub_10076F35C();

  return (*(v11 + 8))(v19, v10);
}

double sub_1006BACCC(void *a1)
{
  if (qword_100941200 != -1)
  {
    swift_once();
  }

  v2 = sub_10076D9AC();
  sub_10000A61C(v2, qword_1009A2380);
  v3 = [a1 traitCollection];
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007841E0;
  *(v4 + 32) = v3;
  v5 = v3;
  v6 = sub_10076DEEC();
  sub_10076D3EC();
  v8 = v7;

  return v8;
}

void sub_1006BADE8(void *a1)
{
  [a1 reloadData];

  sub_1006AE3AC(a1);
}

uint64_t sub_1006BAE2C(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v51 = a2;
  v7 = sub_10000A5D4(&qword_1009632C0, &unk_10079B000);
  __chkstk_darwin(v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v43 - v11;
  v12 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = sub_10076F7FC();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v45 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v53 = &v43 - v22;
  v48 = a1;
  sub_10000A570(a1, v57);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10000A5D4(&qword_100952118, &qword_10079B040);
  if (swift_dynamicCast())
  {
    v52 = v17;
    v44 = v9;
    sub_100012498(v55, v58);
    sub_10000CF78(v58, v58[3]);
    v23 = sub_100766E0C();
    if (v23)
    {
      v54 = v18;
      v43 = v23;
      v24 = *(v23 + 16);
      if (v24)
      {
        v25 = v43 + 32;
        v26 = (v19 + 48);
        v46 = (v19 + 32);
        v49 = (v19 + 8);
        v47 = v14;
        do
        {
          sub_10000A570(v25, v57);
          sub_10000CF78(v57, v57[3]);
          v27 = v52;
          sub_10076FE2C();
          sub_10000CD74(v57);
          v28 = *v26;
          v29 = v54;
          if ((*v26)(v27, 1, v54) == 1)
          {
            sub_10000CFBC(v27, &qword_1009492E0, &qword_1007893A0);
          }

          else
          {
            (*v46)(v53, v27, v29);
            sub_10000CF78(v48, v48[3]);
            sub_10076FE2C();
            if (v28(v14, 1, v29) == 1)
            {
              sub_10000CFBC(v14, &qword_1009492E0, &qword_1007893A0);
              v30 = 1;
              v31 = v50;
            }

            else
            {
              v32 = v14;
              v31 = v50;
              sub_10076F7DC();
              (*v49)(v32, v29);
              v30 = 0;
            }

            v33 = sub_10076F7CC();
            v34 = *(v33 - 8);
            (*(v34 + 56))(v31, v30, 1, v33);
            if (v51)
            {
              v35 = v44;
              sub_100016E2C(v31, v44, &qword_1009632C0, &unk_10079B000);
              if ((*(v34 + 48))(v35, 1, v33) == 1)
              {
                v36 = v31;
                sub_10000CFBC(v35, &qword_1009632C0, &unk_10079B000);
              }

              else
              {
                sub_10076F7BC();
                (*(v34 + 8))(v35, v33);
                v36 = v50;
              }

              v37 = v45;
              v38 = v53;
              sub_10076F78C();

              sub_1007660EC();
              v39 = *v49;
              v40 = v37;
              v41 = v54;
              (*v49)(v40, v54);
              sub_10000CFBC(v36, &qword_1009632C0, &unk_10079B000);
              v39(v38, v41);
            }

            else
            {
              sub_10000CFBC(v31, &qword_1009632C0, &unk_10079B000);
              (*v49)(v53, v54);
            }

            v14 = v47;
          }

          v25 += 40;
          --v24;
        }

        while (v24);
      }
    }

    return sub_10000CD74(v58);
  }

  else
  {
    v56 = 0;
    memset(v55, 0, sizeof(v55));
    return sub_10000CFBC(v55, &unk_100952120, &qword_10079B048);
  }
}

uint64_t sub_1006BB484()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006BB4BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10075E11C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v7 + 8, v5 | 7);
}

uint64_t sub_1006BB558(uint64_t a1, uint64_t a2)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *(sub_10075E11C() - 8);
  v8 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v9 = *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1006B9E7C(a1, v2 + v8, v9, v4, v5, v6);
}

uint64_t sub_1006BB648()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1006BB6AC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1006BB750(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1006BB768()
{
  v1 = sub_10075DFDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1006BB82C()
{
  v1 = *(sub_10075DFDC() - 8);
  v2 = *(v0 + 16);
  sub_10075DF9C(((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v4 = v3;
  [v2 insertSections:v3];
}

uint64_t sub_1006BB8D0(void *a1, uint64_t a2)
{
  v47 = a2;
  v3 = sub_10000A5D4(&qword_1009632C0, &unk_10079B000);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = &v39 - v7;
  v8 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_10076F7FC();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v41 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v49 = &v39 - v18;
  v44 = a1;
  sub_10000A570(a1, v53);
  sub_10000A5D4(&qword_1009575A0, &unk_100784980);
  sub_10000A5D4(&qword_100952118, &qword_10079B040);
  if (swift_dynamicCast())
  {
    v48 = v13;
    v40 = v5;
    sub_100012498(v51, v54);
    sub_10000CF78(v54, v54[3]);
    v19 = sub_100766E0C();
    if (v19)
    {
      v50 = v14;
      v39 = v19;
      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = v39 + 32;
        v22 = (v15 + 48);
        v42 = (v15 + 32);
        v45 = (v15 + 8);
        v43 = v10;
        do
        {
          sub_10000A570(v21, v53);
          sub_10000CF78(v53, v53[3]);
          v23 = v48;
          sub_10076FE2C();
          sub_10000CD74(v53);
          v24 = *v22;
          v25 = v50;
          if ((*v22)(v23, 1, v50) == 1)
          {
            sub_10000CFBC(v23, &qword_1009492E0, &qword_1007893A0);
          }

          else
          {
            (*v42)(v49, v23, v25);
            sub_10000CF78(v44, v44[3]);
            sub_10076FE2C();
            if (v24(v10, 1, v25) == 1)
            {
              sub_10000CFBC(v10, &qword_1009492E0, &qword_1007893A0);
              v26 = 1;
              v27 = v46;
            }

            else
            {
              v28 = v10;
              v27 = v46;
              sub_10076F7DC();
              (*v45)(v28, v25);
              v26 = 0;
            }

            v29 = sub_10076F7CC();
            v30 = *(v29 - 8);
            (*(v30 + 56))(v27, v26, 1, v29);
            if (v47)
            {
              v31 = v40;
              sub_100016E2C(v27, v40, &qword_1009632C0, &unk_10079B000);
              if ((*(v30 + 48))(v31, 1, v29) == 1)
              {
                v32 = v27;
                sub_10000CFBC(v31, &qword_1009632C0, &unk_10079B000);
              }

              else
              {
                sub_10076F7BC();
                (*(v30 + 8))(v31, v29);
                v32 = v46;
              }

              v33 = v41;
              v34 = v49;
              sub_10076F78C();

              sub_10076610C();
              v35 = *v45;
              v36 = v33;
              v37 = v50;
              (*v45)(v36, v50);
              sub_10000CFBC(v32, &qword_1009632C0, &unk_10079B000);
              v35(v34, v37);
            }

            else
            {
              sub_10000CFBC(v27, &qword_1009632C0, &unk_10079B000);
              (*v45)(v49, v50);
            }

            v10 = v43;
          }

          v21 += 40;
          --v20;
        }

        while (v20);
      }
    }

    return sub_10000CD74(v54);
  }

  else
  {
    v52 = 0;
    memset(v51, 0, sizeof(v51));
    return sub_10000CFBC(v51, &unk_100952120, &qword_10079B048);
  }
}

void sub_1006BBEC4(void *a1, unsigned int (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v105 = *v4;
  v8 = sub_10000A5D4(&qword_1009632C0, &unk_10079B000);
  __chkstk_darwin(v8 - 8);
  v93 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v96 = v89 - v11;
  v12 = sub_10076B5BC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v99 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v101 = v89 - v16;
  v17 = sub_10000A5D4(&qword_1009492E0, &qword_1007893A0);
  __chkstk_darwin(v17 - 8);
  v94 = v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v100 = v89 - v20;
  __chkstk_darwin(v21);
  v98 = v89 - v22;
  v23 = sub_10076F7FC();
  v102 = *(v23 - 8);
  v103 = v23;
  __chkstk_darwin(v23);
  v92 = v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v95 = v89 - v26;
  __chkstk_darwin(v27);
  v97 = v89 - v28;
  if (sub_10075E0BC() >= 2)
  {
    v91 = v13;
    v89[3] = v4[2];
    v29 = *(v105 + 96);
    v89[2] = *(v105 + 80);
    v89[1] = v29;
    v30 = sub_100761AEC();
    v31 = sub_100016F40(0, &qword_10094D1D0, UICollectionViewCell_ptr);
    v110 = v31;
    v109[0] = a1;
    v32 = a1;
    v90 = v30;
    sub_10076756C();
    sub_10000CD74(v109);
    swift_getObjectType();
    v33 = swift_conformsToProtocol2();
    v104 = a2;
    if (v33 && v32)
    {
      sub_100767D5C();
      sub_10076F64C();
      v34 = v32;
      v89[0] = v31;
      v35 = v34;
      sub_10076FC1C();
      v36 = v109[0];
      swift_getObjectType();
      v37 = sub_100765B4C();
      v38 = v35;
      sub_100767CFC();
    }

    v108 = v32;
    v39 = v32;
    sub_10000A5D4(&qword_1009520D8, &unk_1007B36B0);
    if (swift_dynamicCast())
    {
      sub_100012498(v106, v109);
      sub_100767D5C();
      sub_10076F64C();
      sub_10076FC1C();
      v40 = *&v106[0];
      sub_10000CF78(v109, v110);
      sub_10076818C();

      sub_10000CD74(v109);
    }

    else
    {
      v107 = 0;
      memset(v106, 0, sizeof(v106));
      sub_10000CFBC(v106, &unk_1009520E0, &unk_10079B020);
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v32)
    {
      sub_100764FAC();
      v41 = v39;
      sub_10076F63C();
      v42 = v109[0];
      if (v109[0])
      {
        v43 = v41;
        v44 = v42;
        sub_100764F5C();

        v41 = v44;
      }
    }

    swift_getObjectType();
    if (swift_conformsToProtocol2() && v32)
    {
      swift_getObjectType();
      v45 = v39;
      sub_100768BFC();
    }

    swift_getObjectType();
    v46 = swift_conformsToProtocol2();
    v47 = v91;
    if (v46 && v32)
    {
      v48 = v46;
      ObjectType = swift_getObjectType();
      v50 = *(v48 + 8);
      v51 = v39;
      v50(ObjectType, v48);
    }

    if (v90)
    {
      swift_getObjectType();
      v52 = swift_conformsToProtocol2();
      if (v52 && v32)
      {
        v53 = v52;
        v54 = swift_getObjectType();
        v55 = *(v53 + 40);
        v56 = v39;
        v55(v54, v53);
      }

      v57 = sub_10075E0AC();
      v58 = sub_1006B9998(v57);
      sub_10075E0AC();
      if (v58)
      {
        sub_100761B4C();
        v59 = v98;
        sub_10076B6FC();
        v61 = v102;
        v60 = v103;
        if ((*(v102 + 48))(v59, 1, v103) == 1)
        {

          sub_10000CFBC(v59, &qword_1009492E0, &qword_1007893A0);
        }

        else
        {
          v73 = v97;
          (*(v61 + 32))(v97, v59, v60);
          if (v5[14])
          {

            sub_10076610C();
          }

          (*(v61 + 8))(v73, v60);
        }

        return;
      }

      v62 = v101;
      sub_100761A7C();
      sub_10075E0AC();
      v63 = sub_100761A3C();
      v64 = v99;
      (*(v47 + 16))(v99, v62, v12);
      v65 = (*(v47 + 88))(v64, v12);
      v66 = v100;
      if (v65 == enum case for Shelf.ContentType.smallLockup(_:) || v65 == enum case for Shelf.ContentType.mediumLockup(_:))
      {
        goto LABEL_51;
      }

      if (v65 == enum case for Shelf.ContentType.largeLockup(_:))
      {
        goto LABEL_56;
      }

      if (v65 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v65 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v65 == enum case for Shelf.ContentType.action(_:))
      {
        goto LABEL_51;
      }

      if (v65 == enum case for Shelf.ContentType.ribbonBar(_:))
      {
        goto LABEL_56;
      }

      if (v65 == enum case for Shelf.ContentType.editorialCard(_:) || v65 == enum case for Shelf.ContentType.videoCard(_:))
      {
        goto LABEL_51;
      }

      if (v65 == enum case for Shelf.ContentType.brick(_:) || v65 == enum case for Shelf.ContentType.categoryBrick(_:))
      {
        goto LABEL_56;
      }

      if (v65 == enum case for Shelf.ContentType.reviews(_:) || v65 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v65 == enum case for Shelf.ContentType.framedVideo(_:) || v65 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v65 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v65 == enum case for Shelf.ContentType.smallBreakout(_:))
      {
        goto LABEL_51;
      }

      if (v65 == enum case for Shelf.ContentType.editorialStoryCard(_:))
      {
        goto LABEL_56;
      }

      if (v65 == enum case for Shelf.ContentType.mixedMediaLockup(_:) || v65 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:) || v65 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:) || v65 == enum case for Shelf.ContentType.posterLockup(_:) || v65 == enum case for Shelf.ContentType.smallContactCard(_:))
      {
        goto LABEL_51;
      }

      if (v65 == enum case for Shelf.ContentType.informationRibbon(_:))
      {
        goto LABEL_56;
      }

      if (v65 == enum case for Shelf.ContentType.appPromotion(_:))
      {
LABEL_51:
        if (v63)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v88 = v100;
        (*(v47 + 8))(v64, v12);
        v66 = v88;
      }

      v67 = v66;
      v68 = sub_100761A9C();
      if (sub_10075E0AC() < v68)
      {
        v69 = sub_10075E09C();
        sub_10075E0AC();
        if (v69 < sub_100761A8C())
        {
          sub_100761B3C();
          sub_10000CF78(v109, v110);
          sub_10076FE2C();
          v70 = v67;
          v71 = v102;
          v72 = v103;
          v104 = *(v102 + 48);
          if (v104(v70, 1, v103) == 1)
          {
            (*(v47 + 8))(v62, v12);
            sub_10000CFBC(v70, &qword_1009492E0, &qword_1007893A0);
          }

          else
          {
            (*(v71 + 32))(v95, v70, v72);
            sub_10075E0AC();
            sub_100761B4C();
            v74 = v94;
            sub_10076B6FC();
            v75 = v5;
            if (v104(v74, 1, v72) == 1)
            {
              sub_10000CFBC(v74, &qword_1009492E0, &qword_1007893A0);
              v76 = 1;
              v77 = v96;
            }

            else
            {
              v78 = v96;
              sub_10076F7DC();
              v77 = v78;
              (*(v71 + 8))(v74, v72);
              v76 = 0;
            }

            v79 = sub_10076F7CC();
            v80 = *(v79 - 8);
            (*(v80 + 56))(v77, v76, 1, v79);
            if (v75[14])
            {
              v81 = v93;
              sub_100016E2C(v77, v93, &qword_1009632C0, &unk_10079B000);
              v82 = (*(v80 + 48))(v81, 1, v79);

              if (v82 == 1)
              {
                sub_10000CFBC(v81, &qword_1009632C0, &unk_10079B000);
              }

              else
              {
                sub_10076F7BC();
                (*(v80 + 8))(v81, v79);
              }

              v87 = v92;
              v86 = v95;
              sub_10076F78C();

              sub_10076610C();

              v85 = v102;
              v84 = v103;
              (*(v102 + 8))(v87, v103);
              v83 = v75[14];
            }

            else
            {
              v83 = 0;
              v85 = v102;
              v84 = v103;
              v86 = v95;
            }

            sub_1006BB8D0(v109, v83);

            sub_10000CFBC(v96, &qword_1009632C0, &unk_10079B000);
            (*(v85 + 8))(v86, v84);
            (*(v47 + 8))(v101, v12);
          }

          sub_10000CD74(v109);
          return;
        }
      }

LABEL_56:
      (*(v47 + 8))(v62, v12);
    }
  }
}

uint64_t sub_1006BCDF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006BCE40(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = _swiftEmptyArrayStorage;
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 addObserver:v1 selector:"clearStackFor:" name:UIApplicationDidEnterBackgroundNotification object:0];

  v4 = [v2 defaultCenter];
  [v4 addObserver:v1 selector:"clearStackFor:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];

  return v1;
}

void sub_1006BD024(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = 0;
    v6 = v3 + 48;
    while (v5 < *(v3 + 16))
    {
      swift_unknownObjectRetain();
      v7 = sub_100762DDC();
      v8 = sub_100762DDC();
      swift_unknownObjectRelease();
      if (v7 == v8)
      {

        swift_beginAccess();
        sub_1006BD1B8(v5);
        v11 = v10;
        swift_endAccess();
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 136);
        swift_unknownObjectRetain();
        v13(ObjectType, v11);
        swift_unknownObjectRelease();
        return;
      }

      ++v5;
      v6 += 24;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_1002EB540(a1);
    (*(v9 + 8))();
  }
}

char *sub_1006BD1B8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1004BDAE8(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = &v3[24 * a1];
    v7 = *(v6 + 4);
    v8 = v5 - 1;
    memmove(v6 + 32, v6 + 56, 24 * (v5 - 1 - a1));
    *(v3 + 2) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_1006BD25C(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

void sub_1006BD2F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1)
  {
    if ((a4 & 1) == 0)
    {
      swift_beginAccess();
      v8 = *(v4 + 24);
      v9 = *(v8 + 2) + 1;
      if (v9 < *(v4 + 16))
      {
        swift_beginAccess();
        swift_unknownObjectRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 24) = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_10049D834(0, v9, 1, v8);
          *(v4 + 24) = v8;
        }

        v11 = *(v8 + 2);
        v12 = *(v8 + 3);
        v13 = v11 + 1;
        if (v11 >= v12 >> 1)
        {
          v15 = v8;
          v16 = *(v8 + 2);
          v17 = sub_10049D834((v12 > 1), v11 + 1, 1, v15);
          v11 = v16;
          v8 = v17;
        }

        *(v8 + 2) = v13;
        v14 = &v8[24 * v11];
        *(v14 + 4) = a1;
        *(v14 + 5) = a2;
        *(v14 + 6) = a3;
        *(v4 + 24) = v8;
        swift_endAccess();
      }
    }
  }
}

uint64_t sub_1006BD408()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1006BD478()
{
  v0 = sub_10000A5D4(&unk_100955860, &qword_100788520);
  sub_10000DB18(v0, qword_1009A3248);
  sub_10000A61C(v0, qword_1009A3248);
  return sub_10076F54C();
}

char *sub_1006BD4F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_cellRegistrations;
  type metadata accessor for DebugSettingCellRegistrations(0);
  swift_allocObject();
  *&v4[v11] = sub_10007E6C0();
  *&v4[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource] = 0;
  v12 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_userDefaults;
  *&v5[v12] = [objc_opt_self() standardUserDefaults];
  v13 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_notificationCenter;
  *&v5[v13] = [objc_opt_self() defaultCenter];
  *&v5[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_debugSections] = _swiftEmptyArrayStorage;
  *&v5[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_objectGraph] = a1;
  v14 = objc_allocWithZone(UICollectionViewFlowLayout);

  v15 = [v14 init];
  v28.receiver = v5;
  v28.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v28, "initWithCollectionViewLayout:", v15);

  if (a3)
  {
    v17 = v16;
    sub_1006C0FCC(a2, a3, a4);

    v18 = a4;
  }

  else
  {
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1007841E0;
    v19 = objc_allocWithZone(type metadata accessor for DebugMenuSettings());
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v27.receiver = v19;
    v27.super_class = type metadata accessor for DebugSettingsProvider();
    v20 = v16;
    *(v18 + 32) = objc_msgSendSuper2(&v27, "init");
  }

  v21 = sub_1006C0C24(v18, a1);

  *&v16[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_debugSections] = v21;

  v22 = v16;
  if (a3)
  {
  }

  v23 = sub_10076FF6C();

  [v16 setTitle:v23];

  v24 = [v16 navigationItem];
  v25 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v16 action:"dismissFrom:"];

  [v24 setRightBarButtonItem:v25];

  return v16;
}

id sub_1006BD820()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076E3AC();
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v17.receiver = v1;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidLoad", v4);
  v5 = sub_1006BDABC();
  v6 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource;
  v7 = *&v1[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource] = v5;

  result = [v1 collectionView];
  if (result)
  {
    v9 = result;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = objc_allocWithZone(UICollectionViewCompositionalLayout);
    aBlock[4] = sub_1006C1920;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002BAFEC;
    aBlock[3] = &unk_10089FDF8;
    v12 = _Block_copy(aBlock);

    v13 = [v11 initWithSectionProvider:v12];
    _Block_release(v12);

    [v9 setCollectionViewLayout:v13];

    result = [v1 collectionView];
    if (result)
    {
      v14 = result;
      [result setDataSource:*&v1[v6]];

      [*&v1[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_notificationCenter] addObserver:v1 selector:"userDefaultsDidChange:" name:NSUserDefaultsDidChangeNotification object:*&v1[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_userDefaults]];
      sub_1006BDD74();
      v15 = UIContentSizeCategoryLarge;
      sub_1007705EC();
      sub_10076E37C();
      return sub_1007705FC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1006BDABC()
{
  v1 = sub_10000A5D4(&qword_100963060, &qword_1007B2558);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  sub_10076FF9C();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100016F40(0, &qword_10094D1D0, UICollectionViewCell_ptr);
  sub_10077059C();
  result = [v0 collectionView];
  if (result)
  {
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = sub_1006C1930;
    *(v10 + 24) = v9;
    v11 = objc_allocWithZone(sub_10000A5D4(&qword_100963A08, &qword_1007B37F0));
    v12 = sub_10076E72C();
    (*(v2 + 16))(v4, v7, v1);
    v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v14 = swift_allocObject();
    (*(v2 + 32))(v14 + v13, v4, v1);
    sub_10076E73C();
    (*(v2 + 8))(v7, v1);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1006BDD74()
{
  v1 = v0;
  v2 = sub_10000A5D4(&qword_1009639E0, &qword_1007B37E0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - v4;
  v41 = sub_10000A5D4(&qword_1009639E8, &qword_1007B37E8);
  v30 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v29 - v6;
  type metadata accessor for DebugSection();
  v8 = type metadata accessor for DebugSetting();
  sub_1006C1A30(&qword_1009639F8, type metadata accessor for DebugSection, &unk_10078C22C);
  v9 = sub_1006C1A30(&qword_100963A00, type metadata accessor for DebugSetting, &unk_1007919AC);
  v42 = v7;
  v39 = v9;
  v40 = v8;
  sub_10076E62C();
  v10 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_debugSections;
  v11 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_debugSections);
  if (v11 >> 62)
  {
    goto LABEL_45;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v35 = v1;
  if (v12)
  {
    if (v12 < 1)
    {
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v43 = v10;
    v44 = v3;

    v13 = 0;
    v45 = xmmword_1007841E0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = sub_10077149C();
      }

      else
      {
        v14 = *(v11 + 8 * v13 + 32);
      }

      ++v13;
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v15 = swift_allocObject();
      *(v15 + 16) = v45;
      *(v15 + 32) = v14;

      v16._rawValue = v15;
      sub_10076E5CC(v16);
    }

    while (v12 != v13);

    v1 = v35;
    v10 = v43;
    v3 = v44;
  }

  v38 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource;
  v17 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource);
  if (!v17)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v18 = v17;
  sub_10076E76C();

  v11 = *(v1 + v10);
  if (v11 >> 62)
  {
    v10 = sub_10077158C();
    if (v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v10 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_14:
      v31 = v11 + 32;
      v32 = v11 & 0xFFFFFFFFFFFFFF8;
      v36 = (v3 + 8);
      v37 = v11 & 0xC000000000000001;

      v3 = 0;
      v45 = xmmword_1007841E0;
      v33 = v10;
      v34 = v11;
      while (1)
      {
        if (v37)
        {
          v19 = sub_10077149C();
          v20 = __OFADD__(v3++, 1);
          if (v20)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (v3 >= *(v32 + 16))
          {
            goto LABEL_44;
          }

          v19 = *(v31 + 8 * v3);

          v20 = __OFADD__(v3++, 1);
          if (v20)
          {
LABEL_42:
            __break(1u);
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            v12 = sub_10077158C();
            goto LABEL_3;
          }
        }

        sub_10076E7EC();
        v21 = *(v19 + 48);
        if (v21 >> 62)
        {
          v22 = sub_10077158C();
          if (!v22)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v22)
          {
            goto LABEL_36;
          }
        }

        if (v22 < 1)
        {
          goto LABEL_43;
        }

        v43 = v19;
        v44 = v3;

        for (i = 0; i != v22; ++i)
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v24 = sub_10077149C();
          }

          else
          {
            v24 = *(v21 + 8 * i + 32);
          }

          sub_10000A5D4(&unk_100942870, &qword_100784460);
          v25 = swift_allocObject();
          *(v25 + 16) = v45;
          *(v25 + 32) = v24;
          v46 = 0;

          sub_10076E7BC();

          type metadata accessor for MenuDebugSetting();
          v26 = swift_dynamicCastClass();
          if (v26)
          {
            if (*(v26 + 72) >> 62)
            {

              sub_10077157C();
            }

            else
            {
              swift_bridgeObjectRetain_n();

              sub_10077168C();
            }

            v46 = v24;
            sub_10076E7BC();
          }

          else
          {
          }
        }

        v11 = v34;
        v1 = v35;
        v10 = v33;
        v19 = v43;
        v3 = v44;
LABEL_36:
        v27 = *(v1 + v38);
        if (!v27)
        {
          goto LABEL_49;
        }

        v46 = v19;
        v28 = v27;
        sub_10076E77C();

        (*v36)(v5, v2);

        if (v3 == v10)
        {

          break;
        }
      }
    }
  }

  (*(v30 + 8))(v42, v41);
}

id sub_1006BE3E4()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_notificationCenter] removeObserver:v0];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1006BE5B0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v3 = sub_10000A5D4(&qword_1009639E8, &qword_1007B37E8);
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = &v39 - v4;
  v6 = sub_10076E83C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076E81C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10076E87C();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v10, v16);
  sub_10076E84C();
  (*(v7 + 104))(v9, enum case for UICollectionLayoutListConfiguration.HeaderMode.supplementary(_:), v6);
  sub_10076E86C();
  sub_100016F40(0, &unk_1009632E0, NSCollectionLayoutSection_ptr);
  v19 = sub_10077097C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v15 + 8))(v18, v14);
    return;
  }

  v21 = v15;
  v22 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource);
  v23 = Strong;
  v24 = v22;

  if (!v22)
  {
    goto LABEL_16;
  }

  sub_10076E79C();

  v25 = v40;
  v26 = sub_10076E61C();
  (*(v39 + 8))(v5, v25);
  v27 = v14;
  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = sub_10077149C();
    goto LABEL_7;
  }

  if ((v41 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v41)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v28 = *(v26 + 8 * v41 + 32);

LABEL_7:

  v29 = *(v28 + 40);
  v30 = *(v28 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v29 & 0x2000000000000000) != 0)
  {
    v30 = HIBYTE(v29) & 0xF;
  }

  if (v30)
  {
    v31 = objc_opt_self();
    v32 = [v31 fractionalWidthDimension:1.0];
    v33 = [v31 estimatedDimension:44.0];
    v34 = [objc_opt_self() sizeWithWidthDimension:v32 heightDimension:v33];

    v35 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v34 elementKind:UICollectionElementKindSectionHeader alignment:1];
    sub_10000A5D4(&unk_100942870, &qword_100784460);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1007841E0;
    *(v36 + 32) = v35;
    sub_100016F40(0, &qword_100948C70, NSCollectionLayoutBoundarySupplementaryItem_ptr);
    v37 = v35;
    isa = sub_1007701AC().super.isa;

    [v19 setBoundarySupplementaryItems:isa];

    (*(v21 + 8))(v18, v27);
  }

  else
  {
    (*(v21 + 8))(v18, v14);
  }
}

unint64_t sub_1006BEB18(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_10076E58C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&qword_1009639E8, &qword_1007B37E8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v21 - v13;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v21[1] = a1;
    v17 = *(result + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource);
    if (v17)
    {
      v18 = v17;
      sub_10076E79C();

      v19 = sub_10076E61C();
      (*(v12 + 8))(v14, v11);
      result = sub_10075E12C();
      if ((v19 & 0xC000000000000001) != 0)
      {
        sub_10077149C();
        goto LABEL_7;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_7:

        sub_10076E4EC();

        sub_10076E56C();
        v22[3] = v7;
        v22[4] = &protocol witness table for UIListContentConfiguration;
        v20 = sub_10000DB7C(v22);
        (*(v8 + 16))(v20, v10, v7);
        sub_1007707FC();

        return (*(v8 + 8))(v10, v7);
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1006BEDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;

    v9 = sub_10007E8B4(a1, a3, a2);

    if (v9)
    {
      return v9;
    }
  }

  sub_10077145C(55);
  v11._object = 0x80000001007F5590;
  v11._countAndFlagsBits = 0xD000000000000035;
  sub_1007700CC(v11);
  sub_10075E11C();
  sub_1006C1A30(&unk_100963A10, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v12._countAndFlagsBits = sub_10077163C();
  sub_1007700CC(v12);

  result = sub_10077156C();
  __break(1u);
  return result;
}

void sub_1006BEF34(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong collectionView];

    if (v3)
    {
      [v3 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1006BF018(void *a1, uint64_t a2)
{
  v145 = sub_10000A5D4(&qword_1009639E0, &qword_1007B37E0);
  v142 = *(v145 - 8);
  __chkstk_darwin(v145);
  v144 = &v135 - v5;
  v148 = sub_10000A5D4(&qword_1009639E8, &qword_1007B37E8);
  v146 = *(v148 - 8);
  __chkstk_darwin(v148);
  v143 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v156 = &v135 - v8;
  __chkstk_darwin(v9);
  v160 = &v135 - v10;
  v154 = sub_10075F65C();
  v152 = *(v154 - 8);
  __chkstk_darwin(v154);
  v155 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_100765F6C();
  v150 = *(v151 - 8);
  __chkstk_darwin(v151);
  v153 = &v135 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100766EDC();
  v149 = *(v13 - 8);
  __chkstk_darwin(v13);
  v158 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076F4FC();
  __chkstk_darwin(v15 - 8);
  v157 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v17 - 8);
  v19 = &v135 - v18;
  v20 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v20 - 8);
  v22 = &v135 - v21;
  v23 = sub_10076C15C();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v27 - 8);
  v29 = &v135 - v28;
  v162 = v2;
  v147 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource;
  v30 = *&v2[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource];
  if (!v30)
  {
    __break(1u);
    goto LABEL_63;
  }

  v31 = v30;
  v161 = a2;
  sub_10076E74C();

  v32 = v167;
  if (!v167)
  {
    return;
  }

  v159 = a1;
  type metadata accessor for NavigationActionDebugSetting();
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;
    v35 = *(v33 + 72);
    if (v35)
    {
      v36 = v35();
      v156 = v37;
    }

    else
    {
      v36 = 0;
      v156 = 0;
    }

    v142 = v36;
    v45 = *(v34 + 88);
    if (v45)
    {
      v137 = v19;
      v138 = v24;
      v140 = v13;
      v145 = v32;
      v46 = *(v34 + 64);
      v136 = *(v34 + 56);
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1007841E0;
      *(v47 + 32) = v45;
      v48 = *&v162[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_objectGraph];
      v49 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      v144 = v45;
      v143 = v46;

      v139 = v48;
      sub_10076F5AC();
      v50 = *(v49 - 8);
      v51 = *(v50 + 48);
      v141 = v49;
      if (v51(v29, 1, v49) == 1)
      {

        v52 = sub_10000CFBC(v29, &unk_100943200, &unk_100785840);
      }

      else
      {
        v169 = 0;
        v167 = 0u;
        v168 = 0u;
        (*(v138 + 104))(v26, enum case for FlowPage.debugSettings(_:), v23);
        v54 = sub_10075DB7C();
        (*(*(v54 - 8) + 56))(v22, 1, 1, v54);
        v55 = sub_10076096C();
        (*(*(v55 - 8) + 56))(v137, 1, 1, v55);
        v163 = v136;
        v164 = v143;
        v165 = v47;
        v166 = &type metadata for DebugMenuPage;
        sub_10076F4DC();
        (*(v149 + 104))(v158, enum case for FlowPresentationContext.push(_:), v140);
        (*(v150 + 104))(v153, enum case for FlowAnimationBehavior.infer(_:), v151);
        (*(v152 + 104))(v155, enum case for FlowOrigin.inapp(_:), v154);
        v56 = v50;
        v57 = sub_10076FA2C();
        v59 = v58;
        sub_10075F63C();
        swift_allocObject();
        v132[1] = v57;
        v133 = v59;
        v132[0] = 0;
        v60 = sub_10075F5EC();
        sub_100263C24(v60, 1, v139, v29);

        v52 = (*(v56 + 8))(v29, v141);
      }

      v32 = v145;
      v53 = v162;
    }

    else
    {
      v53 = v162;
      v52 = (*(v34 + 96))(*&v162[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_objectGraph]);
    }

    v61 = v160;
    v62 = v156;
    if (!v156)
    {
      goto LABEL_35;
    }

    v63 = *(v34 + 72);
    if (!v63)
    {
      goto LABEL_34;
    }

    v64 = v63(v52);
    if (!v65)
    {
      goto LABEL_34;
    }

    if (v64 == v142 && v65 == v62 || (sub_10077167C() & 1) != 0)
    {
      goto LABEL_33;
    }

    v86 = v147;
    v87 = *&v53[v147];
    if (v87)
    {
      v88 = v87;
      sub_10076E79C();

      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_1007841E0;
      *(v89 + 32) = v32;

      v90._rawValue = v89;
      v91 = v148;
      sub_10076E5FC(v90);

      v92 = *&v53[v86];
      if (v92)
      {
        v93 = v92;

        sub_10076E76C();

        (*(v146 + 8))(v61, v91);
        goto LABEL_35;
      }

      goto LABEL_64;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  type metadata accessor for ActionDebugSetting();
  v38 = swift_dynamicCastClass();
  if (v38)
  {
    v39 = v38;
    v40 = *(v38 + 88);
    v41 = v162;
    if (v40)
    {
      v42 = v40();
      v44 = v43;
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v72 = v156;
    v73 = (*(v39 + 104))(*&v41[OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_objectGraph]);
    if (!v44)
    {
      goto LABEL_35;
    }

    v74 = *(v39 + 88);
    if (!v74)
    {
      goto LABEL_34;
    }

    v75 = v74(v73);
    if (!v76)
    {
      goto LABEL_34;
    }

    if (v75 == v42 && v76 == v44 || (sub_10077167C() & 1) != 0)
    {
LABEL_33:

LABEL_34:

      goto LABEL_35;
    }

    v100 = v147;
    v101 = *&v41[v147];
    if (v101)
    {
      v102 = v101;
      sub_10076E79C();

      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v103 = swift_allocObject();
      *(v103 + 16) = xmmword_1007841E0;
      *(v103 + 32) = v32;

      v104._rawValue = v103;
      v105 = v148;
      sub_10076E5FC(v104);

      v106 = *&v41[v100];
      if (v106)
      {
        v107 = v106;

        sub_10076E76C();

        (*(v146 + 8))(v72, v105);
        goto LABEL_35;
      }

      goto LABEL_66;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  type metadata accessor for StringPreferencesDebugSetting(0);
  v66 = swift_dynamicCastClass();
  v67 = v162;
  if (!v66)
  {
    type metadata accessor for StringUserDefaultsDebugSetting();
    v78 = swift_dynamicCastClass();
    if (v78)
    {
      v80 = *(v78 + 56);
      v79 = *(v78 + 64);
      __chkstk_darwin(v78);
      v133 = v67;
      v134 = v81;
      v82 = v81;
      v83 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v84 = swift_allocObject();
      *(v84 + 16) = v83;
      *(v84 + 24) = v82;
      LOBYTE(v82) = v82[88];
      swift_retain_n();

      v85 = sub_1006C1410(v80, v79, sub_1006C1844, v132, sub_1006C184C, v84, v82);

      [v67 presentViewController:v85 animated:1 completion:0];

      goto LABEL_35;
    }

    type metadata accessor for PromptActionDebugSetting();
    v94 = swift_dynamicCastClass();
    if (v94)
    {
      v95 = v94;
      v96 = v94[8];
      v160 = v94[7];
      v97 = v94[9];
      v98 = v94[10];
      if (v97)
      {
        v94 = swift_allocObject();
        v99 = v94;
        v94[2] = v97;
        v94[3] = v98;
      }

      else
      {
        v99 = 0;
      }

      v158 = &v135;
      __chkstk_darwin(v94);
      v133 = v122;
      v134 = v99;
      v123 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v124 = v67;
      v125 = swift_allocObject();
      *(v125 + 16) = v123;
      *(v125 + 24) = v95;
      swift_retain_n();
      sub_10001CE50(v97, v98);

      v126 = sub_1006C1410(v160, v96, sub_1006C1798, v132, sub_1006C180C, v125, 0);

      [v124 presentViewController:v126 animated:1 completion:0];

      goto LABEL_35;
    }

    type metadata accessor for MenuDebugSetting();
    v108 = swift_dynamicCastClass();
    if (v108)
    {
      v109 = v147;
      v110 = *&v67[v147];
      if (!v110)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        return;
      }

      v111 = v108;
      v112 = v110;
      v113 = v143;
      sub_10076E79C();

      v163 = v111;
      v114 = v148;
      sub_10076E60C();
      (*(v146 + 8))(v113, v114);
      v115 = v167;
      v116 = v145;
      v117 = v144;
      if (!v167)
      {
        goto LABEL_35;
      }

      v118 = *&v67[v109];
      if (!v118)
      {
        goto LABEL_68;
      }

      v119 = v118;
      sub_10076E78C();

      *&v167 = v32;
      LOBYTE(v119) = sub_10076E7AC();
      sub_10000A5D4(&unk_100942870, &qword_100784460);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_1007841E0;
      *(v120 + 32) = v32;

      v121._rawValue = v120;
      if (v119)
      {
        sub_10076E7DC(v121);
      }

      else
      {
        sub_10076E7CC(v121);
      }

      v130 = *&v67[v109];
      if (!v130)
      {
        goto LABEL_69;
      }

      *&v167 = v115;
      v131 = v130;
      sub_10076E77C();

      (*(v142 + 8))(v117, v116);
    }

    else
    {
      type metadata accessor for MenuItemDebugSetting();
      v127 = swift_dynamicCastClass();
      if (!v127)
      {
        goto LABEL_35;
      }

      v128 = *(v127 + 80);

      v128(v129);

      [v159 reloadData];
    }

    goto LABEL_35;
  }

  v68 = *(v66 + 56);
  v69 = *(v66 + 64);
  v70 = v66;
  swift_retain_n();

  v71 = sub_1006C1410(v68, v69, sub_1006C1854, v70, sub_1006C185C, v70, 1);

  [v67 presentViewController:v71 animated:1 completion:0];

LABEL_35:
  isa = sub_10075E02C().super.isa;
  [v159 deselectItemAtIndexPath:isa animated:1];
}

uint64_t sub_1006C01E0(uint64_t a1)
{
  swift_getObjectType();
  sub_10076F41C();
  return v2;
}

uint64_t sub_1006C0258(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_10000A5D4(&qword_100943038, &qword_100784E40);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-1] - v8;
  if (!a2)
  {
    goto LABEL_6;
  }

  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    swift_getObjectType();
    (*(v7 + 16))(v9, a3 + OBJC_IVAR____TtC20ProductPageExtension29StringPreferencesDebugSetting_key, v6);
    v15[0] = a1;
    v15[1] = a2;

    return sub_10076F42C();
  }

  else
  {
LABEL_6:
    swift_getObjectType();
    v12 = OBJC_IVAR____TtC20ProductPageExtension29StringPreferencesDebugSetting_key;
    v15[3] = v6;
    v15[4] = sub_100071820(&qword_100943050, &qword_100943038, &qword_100784E40, &protocol conformance descriptor for PreferenceKey<A>);
    v13 = sub_10000DB7C(v15);
    (*(v7 + 16))(v13, a3 + v12, v6);
    sub_10076F3EC();
    return sub_10000CD74(v15);
  }
}

uint64_t sub_1006C0458(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_userDefaults);
  v3 = sub_10076FF6C();
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    sub_10077123C();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10000CFBC(v9, &unk_1009434C0, &qword_100783F60);
    return 0;
  }
}

void sub_1006C0544(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_userDefaults);

    if (a2)
    {
      a2 = sub_10076FF6C();
    }

    v8 = sub_10076FF6C();
    [v7 setObject:a2 forKey:v8];

    swift_unknownObjectRelease();
  }
}

double sub_1006C0614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = *(a4 + 88);
    v10 = Strong;

    v9(v11, a1, a2);
  }

  return result;
}

void sub_1006C08AC(void *a1, uint64_t a2, NSString a3)
{
  if (!a3)
  {
LABEL_7:
    v4 = a3;
    [a1 setText:?];

    return;
  }

  v3 = a1;
  if ((a2 != 0x746C7561666544 || a3 != 0xE700000000000000) && (sub_10077167C() & 1) == 0)
  {
    a3 = sub_10076FF6C();
    a1 = v3;
    goto LABEL_7;
  }
}

void sub_1006C0974(int a1, id a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, char a7)
{
  v11 = [a2 textFields];
  if (!v11)
  {
    return;
  }

  v12 = v11;
  sub_100016F40(0, &qword_1009639F0, UITextField_ptr);
  v13 = sub_1007701BC();

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!sub_10077158C())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v14 = sub_10077149C();
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v14 = *(v13 + 32);
  }

  v15 = v14;

  v16 = [v15 text];

  if (v16)
  {
    v17 = sub_10076FF9C();
    v19 = v18;

    if (a4 && (v17 == a3 && v19 == a4 || (sub_10077167C() & 1) != 0))
    {
      goto LABEL_12;
    }

    a5(v17, v19);

    if (a7)
    {
      v20 = [objc_opt_self() sharedCoordinator];
      [v20 notify];
    }
  }
}

void *sub_1006C0C24(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = _swiftEmptyArrayStorage;
    v29 = v3;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v30 = a2;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10077149C();
      }

      else
      {
        if (v4 >= *(v32 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v31 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v8 = (*((swift_isaMask & *isUniquelyReferenced_nonNull_bridgeObject) + 0x78))(a2);
      v9 = v8;
      v10 = v8 >> 62;
      if (v8 >> 62)
      {
        v11 = sub_10077158C();
      }

      else
      {
        v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v5 >> 62;
      if (v5 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_10077158C();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v35 = v6;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_10077158C();
        goto LABEL_21;
      }

      if (v12)
      {
        goto LABEL_20;
      }

      v14 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v15 = v11;
        goto LABEL_22;
      }

LABEL_21:
      v15 = v11;
      isUniquelyReferenced_nonNull_bridgeObject = sub_1007714AC();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v10)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_10077158C();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v17 >> 1) - v16) < v15)
          {
            goto LABEL_44;
          }

          v20 = v14 + 8 * v16 + 32;
          v34 = v14;
          if (v10)
          {
            if (v18 < 1)
            {
              goto LABEL_46;
            }

            sub_100071820(&qword_1009639D8, &qword_1009639D0, &unk_1007B37D0, &protocol conformance descriptor for [A]);
            for (i = 0; i != v18; ++i)
            {
              sub_10000A5D4(&qword_1009639D0, &unk_1007B37D0);
              v22 = sub_1000FBE78(v36, i, v9);
              v24 = *v23;

              (v22)(v36, 0);
              *(v20 + 8 * i) = v24;
            }

            v3 = v29;
            a2 = v30;
          }

          else
          {
            type metadata accessor for DebugSection();
            swift_arrayInitWithCopy();
          }

          if (v15 > 0)
          {
            v25 = *(v34 + 16);
            v7 = __OFADD__(v25, v15);
            v26 = v25 + v15;
            if (v7)
            {
              goto LABEL_45;
            }

            *(v34 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          goto LABEL_26;
        }
      }

      if (v15 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v4 == v3)
      {
        return v5;
      }
    }

    __break(1u);
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
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_10077158C();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return _swiftEmptyArrayStorage;
}

double sub_1006C0FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

void sub_1006C1010()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_cellRegistrations;
  type metadata accessor for DebugSettingCellRegistrations(0);
  swift_allocObject();
  *(v0 + v2) = sub_10007E6C0();
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource) = 0;
  v3 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_userDefaults;
  *(v1 + v3) = [objc_opt_self() standardUserDefaults];
  v4 = OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_notificationCenter;
  *(v1 + v4) = [objc_opt_self() defaultCenter];
  *(v1 + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_debugSections) = _swiftEmptyArrayStorage;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_1006C1118()
{
  v0 = sub_10076F08C();
  v11 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076F0CC();
  v3 = *(v10 - 8);
  __chkstk_darwin(v10);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016F40(0, &qword_1009471F0, OS_dispatch_queue_ptr);
  v6 = sub_10077068C();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1006C1918;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009AEDC;
  aBlock[3] = &unk_10089FDD0;
  v8 = _Block_copy(aBlock);

  sub_10076F0AC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1006C1A30(&qword_100945160, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000A5D4(&unk_10094E1C0, &qword_100785D50);
  sub_100071820(&qword_100945170, &unk_10094E1C0, &qword_100785D50, &protocol conformance descriptor for [A]);
  sub_1007712CC();
  sub_10077069C();
  _Block_release(v8);

  (*(v11 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v10);
}

id sub_1006C1410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = a3();
  v10 = v9;
  v11 = sub_10076FF6C();
  v12 = [objc_opt_self() alertControllerWithTitle:v11 message:0 preferredStyle:1];

  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  v30 = sub_1006C189C;
  v31 = v13;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1006C1A98;
  v29 = &unk_10089FD58;
  v14 = _Block_copy(&aBlock);

  [v12 addTextFieldWithConfigurationHandler:v14];
  _Block_release(v14);
  v15 = sub_10076FF6C();
  v16 = objc_opt_self();
  v17 = [v16 actionWithTitle:v15 style:1 handler:0];

  [v12 addAction:v17];
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  *(v18 + 24) = v8;
  *(v18 + 32) = v10;
  *(v18 + 40) = a5;
  *(v18 + 48) = a6;
  *(v18 + 56) = a7;
  v19 = v12;

  v20 = sub_10076FF6C();
  v30 = sub_1006C1904;
  v31 = v18;
  aBlock = _NSConcreteStackBlock;
  v27 = 1107296256;
  v28 = sub_1006C1A98;
  v29 = &unk_10089FDA8;
  v21 = _Block_copy(&aBlock);

  v22 = [v16 actionWithTitle:v20 style:2 handler:v21];
  _Block_release(v21);

  [v19 addAction:v22];
  return v19;
}

void sub_1006C16DC(_BOOL8 result)
{
  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension23DebugMenuViewController_diffableDataSource);
  if (v2)
  {
    v3 = v2;
    sub_10076E74C();

    if (v4)
    {
      type metadata accessor for InfoDebugSetting();
      if (swift_dynamicCastClass() || (type metadata accessor for BoolUserDefaultsDebugSetting(), swift_dynamicCastClass()))
      {
      }

      else
      {
        type metadata accessor for BoolPreferencesDebugSetting(0);
        swift_dynamicCastClass();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1006C17D0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1006C1814@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1006C1864()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1006C18A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1006C18BC()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_1006C1938()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1006C199C()
{
  v1 = sub_10000A5D4(&qword_100963060, &qword_1007B2558);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1006C1A30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006C1A9C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10076D1AC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10093FBE0 != -1)
  {
    swift_once();
  }

  v6 = sub_100763ADC();
  v7 = sub_10000A61C(v6, qword_10099DDA0);
  (*(*(v6 - 8) + 16))(a1, v7, v6);
  sub_10076BBEC();
  if (v8)
  {
  }

  else
  {
    if (qword_100940A40 != -1)
    {
      swift_once();
    }

    v9 = sub_10076D3DC();
    v10 = sub_10000A61C(v9, qword_1009A0CD0);
    (*(*(v9 - 8) + 16))(v5, v10, v9);
    (*(v3 + 104))(v5, enum case for FontSource.useCase(_:), v2);
    v15 = sub_10076D9AC();
    v16 = &protocol witness table for StaticDimension;
    sub_10000DB7C(v14);
    v13[3] = v2;
    v13[4] = &protocol witness table for FontSource;
    v11 = sub_10000DB7C(v13);
    (*(v3 + 16))(v11, v5, v2);
    sub_10076D9BC();
    (*(v3 + 8))(v5, v2);
    sub_1007639DC();
  }

  v15 = &type metadata for Double;
  v16 = &protocol witness table for Double;
  v14[0] = 0;
  sub_1007639CC();
  sub_1007639BC();
  return sub_1007639FC();
}

double sub_1006C1D44(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = sub_100763ADC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10076684C())
  {
    v13 = [a5 traitCollection];
    v14 = [v13 userInterfaceIdiom];

    if (v14 == 2)
    {
    }

    else
    {
      type metadata accessor for SmallLockupView(0);
      sub_1006C1A9C(v12);
      swift_getObjectType();
      a2 = sub_100262AD0(v12, a1, a2, a3);

      (*(v10 + 8))(v12, v9);
    }
  }

  return a2;
}

void sub_1006C1EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v97 = a2;
  v8 = sub_10076BEDC();
  v87 = *(v8 - 8);
  v88 = v8;
  __chkstk_darwin(v8);
  v86 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v10 - 8);
  v93 = &v82 - v11;
  v12 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v12 - 8);
  v92 = &v82 - v13;
  v14 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v14 - 8);
  v91 = &v82 - v15;
  v16 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v16 - 8);
  v90 = &v82 - v17;
  v18 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v18 - 8);
  v89 = &v82 - v19;
  v20 = sub_100763ADC();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v94 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10076BF6C();
  __chkstk_darwin(v23 - 8);
  v96 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10000A5D4(&qword_100963A80, &qword_1007B3828);
  *&v26 = __chkstk_darwin(v25 - 8).n128_u64[0];
  v28 = &v82 - v27;
  v29 = [a5 snapshotPageTraitEnvironment];
  *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_pageTraits] = v29;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  [v6 setNeedsLayout];
  swift_unknownObjectRelease();
  v30 = sub_10076680C();
  [v6 setBackgroundColor:v30];

  sub_1007667CC();
  if (v31)
  {
    v32 = sub_10076FF6C();
  }

  else
  {
    v32 = 0;
  }

  v33 = [objc_opt_self() _systemImageNamed:v32];

  v34 = *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badgeGlyph];
  if (v33)
  {
    [v34 setImage:v33];
  }

  else
  {
    [v34 setImage:0];
  }

  v95 = v20;
  v35 = *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_badge];
  sub_10076682C();
  if (v36)
  {
    v37 = sub_10076FF6C();
  }

  else
  {
    v37 = 0;
  }

  [v35 setText:v37];

  v38 = *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_title];
  sub_10076683C();
  v39 = sub_10076FF6C();

  [v38 setText:v39];

  v40 = *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_subtitle];
  sub_10076685C();
  if (v41)
  {
    v42 = sub_10076FF6C();
  }

  else
  {
    v42 = 0;
  }

  [v40 setText:v42];

  v43 = *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_heroContent];
  sub_1007667EC();
  v44 = sub_10076C96C();
  (*(*(v44 - 8) + 56))(v28, 0, 1, v44);
  sub_10076C9BC();
  v45 = sub_1007667FC();
  if (v45)
  {
    v46 = v45;
    v47 = *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_button];
    v48 = swift_allocObject();
    *(v48 + 16) = v97;
    *(v48 + 24) = v46;

    sub_1007641EC();
    sub_10076B8EC();
    if (v49)
    {
      v50 = sub_10076FF6C();
    }

    else
    {
      v50 = 0;
    }

    [v47 setTitle:v50 forState:0];
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_button] setHidden:1];
  }

  [v43 removeAllGestureRecognizers];
  v51 = sub_1007667DC();
  if (v51)
  {
    v52 = v51;
    v53 = type metadata accessor for TapActionGestureRecognizer();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC20ProductPageExtension26TapActionGestureRecognizer_action] = v52;
    *&v54[OBJC_IVAR____TtC20ProductPageExtension26TapActionGestureRecognizer_objectGraph] = v97;
    v98.receiver = v54;
    v98.super_class = v53;

    v55 = objc_msgSendSuper2(&v98, "initWithTarget:action:", 0, 0);
    [v55 addTarget:v55 action:"execute"];
    [v43 addGestureRecognizer:v55];
  }

  if (sub_10076681C())
  {
    v56 = *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_backgroundImage];
    [v56 setHidden:0];
    [v6 frame];
    [v6 frame];
    sub_10076BFBC();
    sub_10076BF7C();
    sub_10075FCCC();
    [v56 setContentMode:sub_10076BDBC()];
    sub_100764ADC();
    sub_10075FD0C();
    if (!sub_10076BE1C())
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      sub_100770D5C();
    }

    sub_10075FB8C();
    sub_100760C4C();
    sub_10076F64C();
    sub_10076FC1C();
    sub_10075FD2C();
    sub_1006C375C(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100760B8C();
  }

  else
  {
    [*&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_backgroundImage] setHidden:1];
  }

  v57 = sub_10076684C();
  v58 = v94;
  if (v57)
  {
    v85 = v6;
    v59 = *&v6[OBJC_IVAR____TtC20ProductPageExtension40GameCenterReengagementCollectionViewCell_lockup];
    v60 = v57;
    sub_1006C1A9C(v94);
    v61 = OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    v62 = v21;
    v63 = *(v21 + 24);
    v84 = v61;
    v64 = &v59[v61];
    v65 = v95;
    v63(v64, v58, v95);
    swift_endAccess();
    [v59 setNeedsLayout];
    v83 = *(v21 + 8);
    v83(v58, v65);
    v66 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
    v67 = v89;
    (*(*(v66 - 8) + 56))(v89, 1, 1, v66);
    v68 = sub_10075F78C();
    v69 = v90;
    (*(*(v68 - 8) + 56))(v90, 1, 1, v68);
    v70 = sub_1007628DC();
    v71 = v91;
    (*(*(v70 - 8) + 56))(v91, 1, 1, v70);
    v72 = sub_10000A5D4(&unk_100946750, qword_100787A30);
    v73 = v92;
    (*(*(v72 - 8) + 56))(v92, 1, 1, v72);
    v74 = sub_10076C54C();
    v75 = v93;
    (*(*(v74 - 8) + 56))(v93, 1, 1, v74);
    sub_1004D0A60(v60, v59, v67, v97, 0, 0, v69, v71, v75, v73);
    sub_10000CFBC(v75, &unk_100949290, &unk_10078BBF0);
    v59[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10026202C();
    [v59 setNeedsLayout];
    sub_10000CFBC(v73, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v71, &unk_1009492A0, &unk_10078BC00);
    sub_10000CFBC(v69, &unk_10094D210, &qword_10078DE20);
    sub_10000CFBC(v67, &unk_100946760, &unk_100787A20);
    v93 = v60;
    if (sub_10076BB5C())
    {
      v76 = v95;
      (*(v62 + 16))(v58, &v59[v84], v95);
      sub_1007639AC();
      v83(v58, v76);
      v77 = v86;
      sub_10076BEEC();
      sub_10076BE9C();
      (*(v87 + 8))(v77, v88);
      sub_10076BFCC();
      v78 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
      v79 = *&v59[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
      sub_10076BF7C();
      sub_10075FCCC();
      [v79 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        sub_100770D5C();
      }

      sub_10075FB8C();

      [v59 setContentMode:{objc_msgSend(v85, "contentMode")}];
      sub_100760C4C();
      sub_10076F64C();
      sub_10076FC1C();
      v80 = *&v59[v78];
      sub_10075FD2C();
      sub_1006C375C(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v81 = v80;
      sub_100760B8C();
    }
  }
}

uint64_t sub_1006C2D08(uint64_t a1, uint64_t a2)
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

  sub_100263BF0(a2, 1, a1, v6);

  return (*(v8 + 8))(v6, v7);
}

double sub_1006C2F2C(uint64_t a1, __n128 a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = sub_1007693CC();
  __chkstk_darwin(v8 - 8);
  v38 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007693EC();
  v40 = *(v10 - 8);
  v41 = v10;
  __chkstk_darwin(v10);
  v39 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10076997C();
  v48 = *(v12 - 8);
  v49 = v12;
  __chkstk_darwin(v12);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076682C();
  v15 = sub_100016F40(0, &qword_100942F00, UIFont_ptr);
  if (qword_1009410C0 != -1)
  {
    swift_once();
  }

  v47 = sub_10076D3DC();
  sub_10000A61C(v47, qword_1009A2038);
  v16 = [a6 traitCollection];
  sub_100770B3C();

  v17 = sub_10076C04C();
  v66[3] = v17;
  v46 = sub_1006C375C(&qword_100943230, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v66[4] = v46;
  v18 = sub_10000DB7C(v66);
  v19 = *(v17 - 8);
  v20 = *(v19 + 104);
  v45 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v43 = v19 + 104;
  v44 = v20;
  v20(v18);
  sub_10076C90C();
  sub_10000CD74(v66);
  sub_10076996C();
  sub_10076994C();
  v42 = v15;
  v21 = *(v48 + 8);
  v21(v14, v49);
  sub_10076683C();
  v48 = a1;
  if (qword_1009410C8 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v47, qword_1009A2050);
  v22 = [a6 traitCollection];
  sub_100770B3C();

  v65[3] = v17;
  v65[4] = v46;
  v23 = sub_10000DB7C(v65);
  v44(v23, v45, v17);
  sub_10076C90C();
  sub_10000CD74(v65);
  sub_10076996C();
  sub_10076994C();
  v21(v14, v49);
  sub_10076685C();
  if (qword_1009410D0 != -1)
  {
    swift_once();
  }

  sub_10000A61C(v47, qword_1009A2068);
  v24 = [a6 traitCollection];
  sub_100770B3C();

  v64[3] = v17;
  v64[4] = v46;
  v25 = sub_10000DB7C(v64);
  v44(v25, v45, v17);
  sub_10076C90C();
  sub_10000CD74(v64);
  sub_10076996C();
  sub_10076994C();
  v21(v14, v49);
  v26 = sub_10076DDDC();
  swift_allocObject();
  v27 = sub_10076DDAC();
  v28 = swift_allocObject();
  v28[2] = v48;
  v28[3] = a6;
  v28[4] = v37[1];
  swift_allocObject();

  swift_unknownObjectRetain();
  v29 = sub_10076DD9C();
  sub_10013D454(a6, v38);
  v63 = 0;
  *&v61[40] = 0u;
  v62 = 0u;
  sub_10000A570(v66, v61);
  sub_10000A570(v65, &v60);
  sub_10000A570(v64, &v59);
  v57 = v26;
  v58 = &protocol witness table for LayoutViewPlaceholder;
  v56 = v27;

  v30 = [a6 traitCollection];
  sub_10076E20C();

  swift_allocObject();
  v31 = sub_10076DDBC();
  v54 = v26;
  v55 = &protocol witness table for LayoutViewPlaceholder;
  v52 = &protocol witness table for LayoutViewPlaceholder;
  v53 = v31;
  v51 = v26;
  v50 = v29;

  v32 = v39;
  sub_1007693DC();
  sub_1006C375C(&unk_1009544C0, &type metadata accessor for GameCenterReengagementLayout, &protocol conformance descriptor for GameCenterReengagementLayout);
  v33 = v41;
  sub_10076D2AC();
  v35 = v34;

  (*(v40 + 8))(v32, v33);
  sub_10000CD74(v64);
  sub_10000CD74(v65);
  sub_10000CD74(v66);
  return v35;
}

uint64_t sub_1006C3700(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_1006C375C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1006C37A4(uint64_t a1, CGFloat a2, CGFloat a3, double a4, double a5, double a6, double a7, uint64_t a8, int a9)
{
  v17 = sub_10000A5D4(&qword_100963A88, qword_1007B3830);
  __chkstk_darwin(v17 - 8);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v60 - v21;
  v23 = sub_100766D4C();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v60 - v28;
  v62 = a1;
  sub_10076A74C();
  v63 = a9;
  if (a9)
  {
    v61 = sub_100766D2C();
    sub_10076A70C();
  }

  else
  {
    v61 = sub_100766D3C();
    sub_10076A71C();
  }

  sub_1006C3B3C(v22, v19);
  v30 = sub_10076A6FC();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v19, 1, v30) == 1)
  {
    sub_1006C3BAC(v19);
  }

  else
  {
    sub_1006C3EC8(a6, a7, a4, a5);
    a6 = v32;
    a7 = v33;
    (*(v31 + 8))(v19, v30);
  }

  sub_1006C41F4(a6, a7, a4, a5);
  v35 = v34;
  v37 = v36;
  sub_1006C3BAC(v22);
  v38.n128_u64[0] = 0;
  v39.n128_u64[0] = 0;
  v40.n128_u64[0] = v35;
  v41.n128_u64[0] = v37;
  v64 = a2;
  v65 = a4;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = sub_1006C4380(v61, v38, v39, v40, v41, v42, a3, v44, a5);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  sub_10076A74C();
  if (v63)
  {
    sub_100766D0C();
  }

  else
  {
    sub_100766D1C();
  }

  v55 = v53;
  v56 = v54;
  v57 = *(v24 + 8);
  v57(v26, v23);
  v58 = sub_1006C3C14(v56, v55, v64, v43, v65, v45, v46, v48, v50, v52);
  v57(v29, v23);
  return v58;
}

uint64_t sub_1006C3B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_100963A88, qword_1007B3830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006C3BAC(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100963A88, qword_1007B3830);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1006C3C14(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v44.size.width = a9;
  v44.size.height = a10;
  v44.origin.x = a7;
  v44.origin.y = a8;
  v42 = a2;
  v45 = CGRectOffset(v44, a1, a2);
  x = v45.origin.x;
  width = v45.size.width;
  height = v45.size.height;
  if (a1 > 0.0)
  {
    rect = v45.origin.y;
    v40 = v45.size.width;
    MinX = CGRectGetMinX(v45);
    v46.origin.x = a3;
    v46.origin.y = a4;
    v46.size.width = a5;
    v46.size.height = a6;
    if (CGRectGetMinX(v46) < MinX)
    {
      v47.origin.x = x;
      v47.origin.y = rect;
      v47.size.width = v40;
      v47.size.height = height;
      v39 = CGRectGetMinX(v47);
      v48.origin.x = a3;
      v48.origin.y = a4;
      v48.size.width = a5;
      v48.size.height = a6;
      x = x - (v39 - CGRectGetMinX(v48));
    }

    width = v40;
    v45.origin.y = rect;
  }

  if (a1 < 0.0)
  {
    v19 = x;
    y = v45.origin.y;
    v21 = width;
    v22 = height;
    MaxX = CGRectGetMaxX(v45);
    v49.origin.x = a3;
    v49.origin.y = a4;
    v49.size.width = a5;
    v49.size.height = a6;
    if (MaxX < CGRectGetMaxX(v49))
    {
      v50.origin.x = a3;
      v50.origin.y = a4;
      v50.size.width = a5;
      v50.size.height = a6;
      v24 = CGRectGetMaxX(v50);
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      x = x + v24 - CGRectGetMaxX(v51);
    }

    v45.origin.y = y;
  }

  if (v42 > 0.0)
  {
    v25 = x;
    v26 = v45.origin.y;
    v27 = width;
    v28 = height;
    MinY = CGRectGetMinY(v45);
    v52.origin.x = a3;
    v52.origin.y = a4;
    v52.size.width = a5;
    v52.size.height = a6;
    if (CGRectGetMinY(v52) >= MinY)
    {
      v45.origin.y = v26;
    }

    else
    {
      v53.origin.x = x;
      v53.origin.y = v26;
      v53.size.width = width;
      v53.size.height = height;
      v30 = CGRectGetMinY(v53);
      v54.origin.x = a3;
      v54.origin.y = a4;
      v54.size.width = a5;
      v54.size.height = a6;
      v45.origin.y = v26 - (v30 - CGRectGetMinY(v54));
    }
  }

  if (v42 < 0.0)
  {
    v31 = x;
    v32 = v45.origin.y;
    v33 = width;
    v34 = height;
    v35 = width;
    v36 = a4;
    MaxY = CGRectGetMaxY(v45);
    v55.origin.x = a3;
    v55.origin.y = v36;
    v55.size.width = a5;
    v55.size.height = a6;
    if (MaxY < CGRectGetMaxY(v55))
    {
      v56.origin.x = a3;
      v56.origin.y = v36;
      v56.size.width = a5;
      v56.size.height = a6;
      CGRectGetMaxY(v56);
      v57.origin.x = x;
      v57.origin.y = v32;
      v57.size.width = v35;
      v57.size.height = height;
      CGRectGetMaxY(v57);
    }
  }

  return x;
}

uint64_t sub_1006C3EC8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v6 = sub_10076D39C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076A6FC();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v5, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.absolute(_:))
  {
    return (*(v11 + 96))(v14, v10);
  }

  if (v15 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalHeight(_:))
  {
    (*(v11 + 96))(v14, v10);
    sub_10076D3AC();
    sub_10076D35C();
    return (*(v7 + 8))(v9, v6);
  }

  if (v15 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalWidth(_:))
  {
    (*(v11 + 96))(v14, v10);
    sub_10076D3AC();
    sub_10076D36C();
    return (*(v7 + 8))(v9, v6);
  }

  if (v15 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalSize(_:))
  {
    return (*(v11 + 96))(v14, v10);
  }

  result = sub_10077156C();
  __break(1u);
  return result;
}

void sub_1006C41F4(double a1, double a2, double a3, double a4)
{
  v8 = sub_10076D39C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  if (a3 > a1 || a4 > a2)
  {
    sub_10076D3AC();
    sub_10076D3AC();
    sub_10076D34C();
    v17 = v16;
    sub_10076D34C();
    v18 = (v9 + 8);
    if (v17 >= v19)
    {
      sub_10076D36C();
    }

    else
    {
      sub_10076D35C();
    }

    v20 = *v18;
    (*v18)(v11, v8);
    v20(v14, v8);
  }
}

double sub_1006C4380(unint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v14 = a5.n128_f64[0];
  v15 = a4.n128_f64[0];
  rect = a3.n128_f64[0];
  v16 = a2.n128_f64[0];
  if (a1 - 1 <= 1)
  {
    sub_100770A9C();
    v15 = v17;
    v14 = v18;
  }

  if (a1 > 0xC)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0xA80) != 0)
  {
    v26.origin.x = a6;
    v26.origin.y = a7;
    v26.size.width = a8;
    v26.size.height = a9;
    MinX = CGRectGetMinX(v26);
    goto LABEL_10;
  }

  if (((1 << a1) & 0x1500) != 0)
  {
    v24.origin.x = a6;
    v24.origin.y = a7;
    v24.size.width = a8;
    v24.size.height = a9;
    MaxX = CGRectGetMaxX(v24);
    v25.origin.x = v16;
    v25.origin.y = rect;
    v25.size.width = v15;
    v25.size.height = v14;
    Width = CGRectGetWidth(v25);
  }

  else
  {
LABEL_8:
    v27.origin.x = a6;
    v27.origin.y = a7;
    v27.size.width = a8;
    v27.size.height = a9;
    MaxX = CGRectGetMidX(v27);
    v28.origin.x = v16;
    v28.origin.y = rect;
    v28.size.width = v15;
    v28.size.height = v14;
    Width = CGRectGetMidX(v28);
  }

  MinX = MaxX - Width;
  if (a1 > 0xC)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (((1 << a1) & 0x620) != 0)
  {
    v31.origin.x = a6;
    v31.origin.y = a7;
    v31.size.width = a8;
    v31.size.height = a9;
    CGRectGetMinY(v31);
    return MinX;
  }

  if (((1 << a1) & 0x1840) == 0)
  {
LABEL_14:
    v32.origin.x = a6;
    v32.origin.y = a7;
    v32.size.width = a8;
    v32.size.height = a9;
    CGRectGetMidY(v32);
    v33.origin.x = MinX;
    v33.origin.y = rect;
    v33.size.width = v15;
    v33.size.height = v14;
    CGRectGetMidY(v33);
    return MinX;
  }

  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  CGRectGetMaxY(v29);
  v30.origin.x = MinX;
  v30.origin.y = rect;
  v30.size.width = v15;
  v30.size.height = v14;
  CGRectGetHeight(v30);
  return MinX;
}