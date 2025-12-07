void ShelfHeaderLayout.Metrics.eyebrowVerticalMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxWidth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 28);
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxWidth.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 28);
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxHeight.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 32);
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkMaxHeight.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 32);
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkTrailingMargin.setter(double a1)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.eyebrowArtworkAspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 40);

  return sub_100347F44(a1, v3);
}

uint64_t ShelfHeaderLayout.Metrics.titleLineHeight.setter(double a1)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.titleVerticalMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v10 = (v4 + *(result + 48));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxWidth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 52);
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxWidth.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 52);
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxHeight.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 56);
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkMaxHeight.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 56);
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkAspectRatio.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ShelfHeaderLayout.Metrics(0) + 60);

  return sub_100347F44(a1, v3);
}

uint64_t ShelfHeaderLayout.Metrics.titleArtworkTrailingMargin.setter(double a1)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t ShelfHeaderLayout.Metrics.accessoryMargins.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v10 = (v4 + *(result + 68));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t ShelfHeaderLayout.titleLabel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShelfHeaderLayout(0) + 32);

  return sub_10002C0AC(v3, a1);
}

uint64_t sub_100695D48(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = type metadata accessor for VerticalStack();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  VerticalStack.init(with:)();
  v10 = type metadata accessor for ShelfHeaderLayout(0);
  sub_100031660(v3 + *(v10 + 20), &v13, &qword_100975610, &qword_1007B5690);
  if (v14)
  {
    sub_100005A38(&v13, v15);
    sub_10002A400(v15, v16);
    Measurable.placeable.getter();
    VerticalStack.add(_:with:)();
    sub_100007000(&v13);
    sub_100007000(v15);
  }

  else
  {
    sub_10002B894(&v13, &qword_100975610, &qword_1007B5690);
  }

  v16 = type metadata accessor for Margins();
  v17 = &protocol witness table for Margins;
  sub_1000056E0(v15);
  a3(a1);
  VerticalStack.add(_:with:)();
  sub_100007000(v15);
  static UIEdgeInsets.horizontal(left:right:)();
  v16 = v6;
  v17 = &protocol witness table for VerticalStack;
  v11 = sub_1000056E0(v15);
  (*(v7 + 16))(v11, v9, v6);
  Margins.init(insets:child:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100695FE8(uint64_t a1)
{
  v2 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100696044@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20 = a2;
  v5 = type metadata accessor for ShelfHeaderLayout(0);
  v6 = v5 - 8;
  v19 = *(v5 - 8);
  v7 = *(v19 + 64);
  __chkstk_darwin(v5);
  v8 = type metadata accessor for VerticalStack();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  VerticalStack.init(with:)();
  sub_100031660(v3 + *(v6 + 32), v21, &unk_10097B860, &qword_1007B49E0);
  v12 = v22;
  sub_10002B894(v21, &unk_10097B860, &qword_1007B49E0);
  if (v12)
  {
    v22 = type metadata accessor for HorizontalStack();
    v23 = &protocol witness table for HorizontalStack;
    v13 = sub_1000056E0(v21);
    sub_100696350(a1, v13);
    sub_100698C2C(v3, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShelfHeaderLayout);
    v14 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v15 = swift_allocObject();
    sub_100698C94(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
    VerticalStack.add(_:with:)();

    sub_100007000(v21);
  }

  sub_100696C24(a1, v21);
  VerticalStack.add(_:with:)();
  sub_100007000(v21);
  static UIEdgeInsets.vertical(top:bottom:)();
  v22 = v8;
  v23 = &protocol witness table for VerticalStack;
  v16 = sub_1000056E0(v21);
  (*(v9 + 16))(v16, v11, v8);
  Margins.init(insets:child:)();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100696350@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  v67 = *(v4 - 8);
  __chkstk_darwin(v4);
  v68 = v5;
  v69 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Resize.Rule();
  v62 = *(v6 - 8);
  v63 = v6;
  __chkstk_darwin(v6);
  v61 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v8);
  v60 = (&v53 - v9);
  __chkstk_darwin(v10);
  v59 = (&v53 - v11);
  __chkstk_darwin(v12);
  v58 = (&v53 - v13);
  v14 = type metadata accessor for Resize();
  v65 = *(v14 - 8);
  v66 = v14;
  __chkstk_darwin(v14);
  v64 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FloatingPointRoundingRule();
  v57 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v19 - 8);
  v21 = &v53 - v20;
  v22 = type metadata accessor for AspectRatio();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a2;
  HorizontalStack.init(with:)();
  v72 = v4;
  sub_100031660(v2 + *(v4 + 28), &v77, &qword_100975610, &qword_1007B5690);
  if (v78)
  {
    sub_100005A38(&v77, v80);
    v26 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_100031660(v2 + *(v26 + 40), v21, &unk_1009732A0, &unk_1007B4FE0);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      sub_10002B894(v21, &unk_1009732A0, &unk_1007B4FE0);
      sub_100007000(v80);
    }

    else
    {
      v55 = v22;
      v56 = v23;
      v27 = *(v23 + 32);
      v54 = v25;
      v27(v25, v21, v22);
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v28 = *(v57 + 8);
      v28(v18, v16);
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v28(v18, v16);
      AspectRatio.maxSize(fitting:)();
      v30 = v29;
      v32 = v31;
      v33 = (*(v2 + 32) - v31) * 0.5;
      sub_10002A400(v80, v80[3]);
      Measurable.placeable.getter();
      v57 = v2;
      v34 = v58;
      *(v58 + 3) = &type metadata for CGFloat;
      *(v34 + 4) = &protocol witness table for CGFloat;
      *v34 = v30;
      v35 = enum case for Resize.Rule.replaced(_:);
      v36 = v63;
      v37 = *(v62 + 104);
      v37(v34, enum case for Resize.Rule.replaced(_:), v63);
      v38 = v59;
      *(v59 + 3) = &type metadata for CGFloat;
      *(v38 + 4) = &protocol witness table for CGFloat;
      *v38 = v32;
      v37(v38, v35, v36);
      v39 = enum case for Resize.Rule.unchanged(_:);
      v37(v60, enum case for Resize.Rule.unchanged(_:), v36);
      v37(v61, v39, v36);
      v40 = v64;
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      v41 = v66;
      v76[3] = v66;
      v76[4] = &protocol witness table for Resize;
      v42 = sub_1000056E0(v76);
      v43 = v65;
      (*(v65 + 16))(v42, v40, v41);
      v75[8] = &type metadata for CGFloat;
      v75[9] = &protocol witness table for CGFloat;
      *&v75[5] = v33;
      v44 = type metadata accessor for ZeroDimension();
      v75[3] = v44;
      v75[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v75);
      static ZeroDimension.zero.getter();
      v74[3] = v44;
      v74[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v74);
      static ZeroDimension.zero.getter();
      v73[3] = v44;
      v73[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v73);
      static ZeroDimension.zero.getter();
      v78 = type metadata accessor for Margins();
      v79 = &protocol witness table for Margins;
      sub_1000056E0(&v77);
      Margins.init(_:top:leading:bottom:trailing:)();
      v45 = v57;
      v46 = v69;
      sub_100698C2C(v57, v69, type metadata accessor for ShelfHeaderLayout);
      v47 = (*(v67 + 80) + 16) & ~*(v67 + 80);
      v48 = (v68 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      sub_100698C94(v46, v49 + v47);
      v50 = v70;
      *(v49 + v48) = v70;
      v51 = v50;
      HorizontalStack.add(_:with:)();

      (*(v43 + 8))(v40, v41);
      (*(v56 + 8))(v54, v55);
      sub_100007000(&v77);
      sub_100007000(v80);
      v2 = v45;
    }
  }

  else
  {
    sub_10002B894(&v77, &qword_100975610, &qword_1007B5690);
  }

  sub_100031660(v2 + *(v72 + 24), &v77, &unk_10097B860, &qword_1007B49E0);
  if (!v78)
  {
    return sub_10002B894(&v77, &unk_10097B860, &qword_1007B49E0);
  }

  sub_100005A38(&v77, v80);
  HorizontalStack.add(_:with:)();
  return sub_100007000(v80);
}

uint64_t sub_100696C24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v97 = a2;
  v3 = type metadata accessor for Pin.Edge();
  v90 = *(v3 - 8);
  v91 = v3;
  __chkstk_darwin(v3);
  v92 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for VerticalStack();
  v95 = *(v110 - 8);
  __chkstk_darwin(v110);
  v94 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v96 = &v83 - v7;
  v8 = type metadata accessor for ShelfHeaderLayout(0);
  v105 = *(v8 - 8);
  __chkstk_darwin(v8);
  v106 = v9;
  v107 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Resize.Rule();
  v99 = *(v10 - 8);
  v100 = v10;
  __chkstk_darwin(v10);
  v104 = (&v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v103 = (&v83 - v13);
  __chkstk_darwin(v14);
  v102 = (&v83 - v15);
  __chkstk_darwin(v16);
  v18 = (&v83 - v17);
  v101 = type metadata accessor for Resize();
  v19 = *(v101 - 8);
  __chkstk_darwin(v101);
  v89 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FloatingPointRoundingRule();
  v88 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v24 - 8);
  v26 = &v83 - v25;
  v27 = type metadata accessor for AspectRatio();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v93 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for HorizontalStack();
  v108 = *(v30 - 8);
  v109 = v30;
  __chkstk_darwin(v30);
  v111 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  HorizontalStack.init(with:)();
  v112 = v8;
  v32 = *(v8 + 36);
  v33 = v98;
  sub_100031660(v98 + v32, &v119, &qword_100975610, &qword_1007B5690);
  if (v120)
  {
    v87 = v19;
    v34 = a1;
    sub_100005A38(&v119, v122);
    v35 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_100031660(v33 + *(v35 + 60), v26, &unk_1009732A0, &unk_1007B4FE0);
    if ((*(v28 + 48))(v26, 1, v27) == 1)
    {
      sub_10002B894(v26, &unk_1009732A0, &unk_1007B4FE0);
      sub_100007000(v122);
      v36 = v33;
    }

    else
    {
      v85 = v27;
      v86 = v28;
      (*(v28 + 32))(v93, v26, v27);
      static Dimensions.defaultRoundingRule.getter();
      v84 = v34;
      StaticDimension.value(compatibleWith:rounded:)();
      v37 = v33;
      v38 = *(v88 + 8);
      v38(v23, v21);
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v38(v23, v21);
      AspectRatio.maxSize(fitting:)();
      v40 = v39;
      v42 = v41;
      v43 = (*(v37 + *(v35 + 44)) - v41) * 0.5;
      sub_10002A400(v122, v123);
      Measurable.placeable.getter();
      v45 = v99;
      v44 = v100;
      v18[3] = &type metadata for CGFloat;
      v18[4] = &protocol witness table for CGFloat;
      *v18 = v40;
      v46 = enum case for Resize.Rule.replaced(_:);
      v47 = *(v45 + 104);
      v47(v18, enum case for Resize.Rule.replaced(_:), v44);
      v48 = v102;
      *(v102 + 3) = &type metadata for CGFloat;
      *(v48 + 4) = &protocol witness table for CGFloat;
      *v48 = v42;
      v47(v48, v46, v44);
      v49 = enum case for Resize.Rule.unchanged(_:);
      v47(v103, enum case for Resize.Rule.unchanged(_:), v44);
      v47(v104, v49, v44);
      v50 = v89;
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      v51 = v101;
      v117 = v101;
      v118 = &protocol witness table for Resize;
      v52 = sub_1000056E0(v116);
      v53 = v87;
      (*(v87 + 16))(v52, v50, v51);
      v115[8] = &type metadata for CGFloat;
      v115[9] = &protocol witness table for CGFloat;
      *&v115[5] = v43;
      v54 = type metadata accessor for ZeroDimension();
      v115[3] = v54;
      v115[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v115);
      static ZeroDimension.zero.getter();
      v114[3] = v54;
      v114[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v114);
      static ZeroDimension.zero.getter();
      v113[3] = v54;
      v113[4] = &protocol witness table for ZeroDimension;
      sub_1000056E0(v113);
      static ZeroDimension.zero.getter();
      v120 = type metadata accessor for Margins();
      v121 = &protocol witness table for Margins;
      sub_1000056E0(&v119);
      Margins.init(_:top:leading:bottom:trailing:)();
      v55 = v98;
      v56 = v107;
      sub_100698C2C(v98, v107, type metadata accessor for ShelfHeaderLayout);
      v57 = (*(v105 + 80) + 16) & ~*(v105 + 80);
      v58 = (v106 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
      v59 = swift_allocObject();
      sub_100698C94(v56, v59 + v57);
      v60 = v84;
      *(v59 + v58) = v84;
      v61 = v60;
      HorizontalStack.add(_:with:)();

      (*(v53 + 8))(v50, v51);
      (*(v86 + 8))(v93, v85);
      sub_100007000(&v119);
      sub_100007000(v122);
      v36 = v55;
    }
  }

  else
  {
    sub_10002B894(&v119, &qword_100975610, &qword_1007B5690);
    v36 = v33;
  }

  sub_10002C0AC(v36 + v112[8], &v119);
  *v18 = sub_1002F1298;
  v18[1] = 0;
  v62 = v100;
  v63 = *(v99 + 104);
  v63(v18, enum case for Resize.Rule.recalculated(_:), v100);
  v64 = enum case for Resize.Rule.unchanged(_:);
  v63(v102, enum case for Resize.Rule.unchanged(_:), v62);
  v63(v103, v64, v62);
  v63(v104, v64, v62);
  v123 = v101;
  v124 = &protocol witness table for Resize;
  sub_1000056E0(v122);
  Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  v65 = v111;
  HorizontalStack.add(_:with:)();
  sub_100007000(v122);
  v66 = v94;
  VerticalStack.init(with:)();
  v67 = v109;
  v123 = v109;
  v124 = &protocol witness table for HorizontalStack;
  v68 = sub_1000056E0(v122);
  (*(v108 + 16))(v68, v65, v67);
  v69 = v107;
  sub_100698C2C(v36, v107, type metadata accessor for ShelfHeaderLayout);
  v70 = (*(v105 + 80) + 16) & ~*(v105 + 80);
  v71 = swift_allocObject();
  sub_100698C94(v69, v71 + v70);
  v72 = v96;
  VerticalStack.adding(_:with:)();

  v73 = v95;
  v74 = *(v95 + 8);
  v74(v66, v110);
  sub_100007000(v122);
  sub_100031660(v36 + v112[10], &v119, &unk_10097B860, &qword_1007B49E0);
  if (v120)
  {
    sub_100005A38(&v119, v122);
    VerticalStack.add(_:with:)();
    sub_100007000(v122);
  }

  else
  {
    sub_10002B894(&v119, &unk_10097B860, &qword_1007B49E0);
  }

  sub_100031660(v36 + v112[11], &v119, &qword_100975610, &qword_1007B5690);
  if (v120)
  {
    sub_100005A38(&v119, v122);
    type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_10002A400(v122, v123);
    Measurable.placeable.getter();
    v120 = type metadata accessor for Margins();
    v121 = &protocol witness table for Margins;
    sub_1000056E0(&v119);
    Margins.init(insets:child:)();
    (*(v90 + 104))(v92, enum case for Pin.Edge.trailingEdge(_:), v91);
    v75 = v110;
    v117 = v110;
    v118 = &protocol witness table for VerticalStack;
    v76 = sub_1000056E0(v116);
    (*(v73 + 16))(v76, v72, v75);
    v77 = type metadata accessor for Pin();
    v78 = v97;
    v97[3] = v77;
    v78[4] = &protocol witness table for Pin;
    sub_1000056E0(v78);
    Pin.init(_:to:of:)();
    v74(v72, v75);
    (*(v108 + 8))(v111, v109);
    return sub_100007000(v122);
  }

  else
  {
    sub_10002B894(&v119, &qword_100975610, &qword_1007B5690);
    v80 = v97;
    v81 = v110;
    v97[3] = v110;
    v80[4] = &protocol witness table for VerticalStack;
    v82 = sub_1000056E0(v80);
    (*(v73 + 32))(v82, v72, v81);
    return (*(v108 + 8))(v111, v109);
  }
}

uint64_t sub_100697A0C(uint64_t a1, uint64_t a2, void *a3)
{
  type metadata accessor for ShelfHeaderLayout.Metrics(0);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B0B70;
  *(v4 + 32) = a3;
  v5 = a3;
  v6 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  CGFloat.rawValue(in:)();

  return HorizontalStack.Properties.trailingSpacing.setter();
}

uint64_t sub_100697AE4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ShelfHeaderLayout.Metrics(0);
  VerticalStack.Properties.topSpacing.setter();
  return VerticalStack.Properties.bottomSpacing.setter();
}

uint64_t sub_100697B60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v97 = a1;
  v96 = a2;
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  v81 = *(v4 - 8);
  __chkstk_darwin(v4);
  v82 = v5;
  v83 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Resize.Rule();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v88 = &v75 - v9;
  __chkstk_darwin(v10);
  v90 = &v75 - v11;
  __chkstk_darwin(v12);
  v85 = &v75 - v13;
  v87 = type metadata accessor for FloatingPointRoundingRule();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v84 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v15 - 8);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v75 - v19;
  v21 = type metadata accessor for AspectRatio();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v89 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v75 - v25;
  v95 = type metadata accessor for VerticalStack();
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  VerticalStack.init(with:)();
  v98 = v4;
  sub_100031660(v3 + *(v4 + 28), &v99, &qword_100975610, &qword_1007B5690);
  v93 = v7;
  if (v100)
  {
    sub_100005A38(&v99, &v102);
    v29 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_100031660(v3 + *(v29 + 40), v20, &unk_1009732A0, &unk_1007B4FE0);
    if ((*(v22 + 48))(v20, 1, v21) == 1)
    {
      sub_10002B894(v20, &unk_1009732A0, &unk_1007B4FE0);
      sub_100007000(&v102);
      v30 = v22;
    }

    else
    {
      v78 = v22;
      v31 = *(v22 + 32);
      v76 = v26;
      v79 = v21;
      v31(v26, v20, v21);
      v32 = v84;
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v80 = v28;
      v33 = *(v86 + 8);
      v34 = v87;
      v33(v32, v87);
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v33(v32, v34);
      AspectRatio.maxSize(fitting:)();
      v36 = v35;
      v38 = v37;
      sub_10002A400(&v102, v103);
      Measurable.placeable.getter();
      v77 = v17;
      v39 = v85;
      *(v85 + 3) = &type metadata for CGFloat;
      *(v39 + 4) = &protocol witness table for CGFloat;
      *v39 = v36;
      v40 = enum case for Resize.Rule.replaced(_:);
      v41 = *(v91 + 104);
      v42 = v88;
      v43 = v92;
      v41(v39, enum case for Resize.Rule.replaced(_:), v92);
      v44 = v90;
      *(v90 + 3) = &type metadata for CGFloat;
      *(v44 + 4) = &protocol witness table for CGFloat;
      v28 = v80;
      v45 = v93;
      *v44 = v38;
      v41(v44, v40, v43);
      v46 = enum case for Resize.Rule.unchanged(_:);
      v41(v42, enum case for Resize.Rule.unchanged(_:), v43);
      v41(v45, v46, v43);
      v100 = type metadata accessor for Resize();
      v101 = &protocol witness table for Resize;
      sub_1000056E0(&v99);
      v17 = v77;
      v47 = v79;
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      VerticalStack.add(_:with:)();
      v30 = v78;
      v21 = v47;
      (*(v78 + 8))(v76, v47);
      sub_100007000(&v99);
      sub_100007000(&v102);
    }
  }

  else
  {
    sub_10002B894(&v99, &qword_100975610, &qword_1007B5690);
    v30 = v22;
  }

  sub_100031660(v3 + v98[6], &v99, &unk_10097B860, &qword_1007B49E0);
  if (v100)
  {
    sub_100005A38(&v99, &v102);
    VerticalStack.add(_:with:)();
    sub_100007000(&v102);
  }

  else
  {
    sub_10002B894(&v99, &unk_10097B860, &qword_1007B49E0);
  }

  sub_100031660(v3 + v98[9], &v99, &qword_100975610, &qword_1007B5690);
  if (v100)
  {
    sub_100005A38(&v99, &v102);
    v48 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
    sub_100031660(v3 + *(v48 + 60), v17, &unk_1009732A0, &unk_1007B4FE0);
    if ((*(v30 + 48))(v17, 1, v21) == 1)
    {
      sub_10002B894(v17, &unk_1009732A0, &unk_1007B4FE0);
    }

    else
    {
      v49 = *(v30 + 32);
      v79 = v21;
      v49(v89, v17, v21);
      v50 = v84;
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v51 = *(v86 + 8);
      v78 = v30;
      v52 = v87;
      v51(v50, v87);
      static Dimensions.defaultRoundingRule.getter();
      StaticDimension.value(compatibleWith:rounded:)();
      v51(v50, v52);
      AspectRatio.maxSize(fitting:)();
      v54 = v53;
      v56 = v55;
      sub_10002A400(&v102, v103);
      Measurable.placeable.getter();
      v57 = v85;
      *(v85 + 3) = &type metadata for CGFloat;
      *(v57 + 4) = &protocol witness table for CGFloat;
      *v57 = v54;
      v58 = enum case for Resize.Rule.replaced(_:);
      v59 = v88;
      v80 = v28;
      v60 = *(v91 + 104);
      v61 = v92;
      v60(v57, enum case for Resize.Rule.replaced(_:), v92);
      v62 = v90;
      *(v90 + 3) = &type metadata for CGFloat;
      *(v62 + 4) = &protocol witness table for CGFloat;
      *v62 = v56;
      v60(v62, v58, v61);
      v63 = enum case for Resize.Rule.unchanged(_:);
      v60(v59, enum case for Resize.Rule.unchanged(_:), v61);
      v60(v93, v63, v61);
      v28 = v80;
      v100 = type metadata accessor for Resize();
      v101 = &protocol witness table for Resize;
      sub_1000056E0(&v99);
      Resize.init(_:width:height:firstBaseline:lastBaseline:)();
      v64 = v83;
      sub_100698C2C(v3, v83, type metadata accessor for ShelfHeaderLayout);
      v65 = (*(v81 + 80) + 16) & ~*(v81 + 80);
      v66 = (v82 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
      v67 = swift_allocObject();
      sub_100698C94(v64, v67 + v65);
      v68 = v97;
      *(v67 + v66) = v97;
      v69 = v68;
      VerticalStack.add(_:with:)();

      (*(v78 + 8))(v89, v79);
      sub_100007000(&v99);
    }

    sub_100007000(&v102);
  }

  else
  {
    sub_10002B894(&v99, &qword_100975610, &qword_1007B5690);
  }

  v70 = v98;
  VerticalStack.add(_:with:)();
  sub_100031660(v3 + v70[10], &v99, &unk_10097B860, &qword_1007B49E0);
  if (v100)
  {
    sub_100005A38(&v99, &v102);
    VerticalStack.add(_:with:)();
    sub_100007000(&v102);
  }

  else
  {
    sub_10002B894(&v99, &unk_10097B860, &qword_1007B49E0);
  }

  sub_100031660(v3 + v98[11], &v99, &qword_100975610, &qword_1007B5690);
  if (v100)
  {
    sub_100005A38(&v99, &v102);
    sub_10002A400(&v102, v103);
    Measurable.placeable.getter();
    VerticalStack.add(_:with:)();
    sub_100007000(&v99);
    sub_100007000(&v102);
  }

  else
  {
    sub_10002B894(&v99, &qword_100975610, &qword_1007B5690);
  }

  static UIEdgeInsets.vertical(top:bottom:)();
  v71 = v95;
  v103 = v95;
  v104 = &protocol witness table for VerticalStack;
  v72 = sub_1000056E0(&v102);
  v73 = v94;
  (*(v94 + 16))(v72, v28, v71);
  Margins.init(insets:child:)();
  return (*(v73 + 8))(v28, v71);
}

uint64_t sub_1006988B0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  type metadata accessor for ShelfHeaderLayout.Metrics(0);
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007B0B70;
  *(v6 + 32) = a3;
  v7 = a3;
  v8 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  CGFloat.rawValue(in:)();
  v10 = v9;

  v12[3] = &type metadata for CGFloat;
  v12[4] = &protocol witness table for CGFloat;
  v12[0] = v10;
  return a4(v12);
}

void sub_1006989C8(uint64_t a1)
{
  type metadata accessor for ShelfHeaderLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_100154308(319, &qword_10098A3E0, &unk_10097E960, &unk_1007B1330);
    if (v2 <= 0x3F)
    {
      sub_100154308(319, &unk_100991418, &qword_10096FE00, &unk_1007C5090);
      if (v3 <= 0x3F)
      {
        sub_100698AC0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_100698AC0()
{
  result = qword_10098C620;
  if (!qword_10098C620)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10098C620);
  }

  return result;
}

void sub_100698B4C(uint64_t a1)
{
  type metadata accessor for UIEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for StaticDimension();
    if (v2 <= 0x3F)
    {
      sub_10007225C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100698C2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100698C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShelfHeaderLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100698D28(uint64_t a1)
{
  v3 = *(type metadata accessor for ShelfHeaderLayout(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100697A0C(a1, v1 + v4, v5);
}

uint64_t sub_100698DC4()
{
  v18 = type metadata accessor for ShelfHeaderLayout(0);
  v21 = *(*(v18 - 1) + 80);
  v19 = *(*(v18 - 1) + 64);
  v20 = (v21 + 16) & ~v21;
  v22 = v0;
  v1 = v0 + v20;
  v2 = type metadata accessor for ShelfHeaderLayout.Metrics(0);
  v3 = v2[7];
  v4 = type metadata accessor for StaticDimension();
  v5 = *(*(v4 - 8) + 8);
  v5(v1 + v3, v4);
  v5(v1 + v2[8], v4);
  v6 = v2[10];
  v7 = type metadata accessor for AspectRatio();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v1 + v6, 1, v7))
  {
    (*(v8 + 8))(v1 + v6, v7);
  }

  v5(v1 + v2[13], v4);
  v5(v1 + v2[14], v4);
  v10 = v2[15];
  if (!v9(v1 + v10, 1, v7))
  {
    (*(v8 + 8))(v1 + v10, v7);
  }

  v11 = (v1 + v18[5]);
  if (v11[3])
  {
    sub_100007000(v11);
  }

  v12 = (v1 + v18[6]);
  if (v12[3])
  {
    sub_100007000(v12);
  }

  v13 = (v1 + v18[7]);
  if (v13[3])
  {
    sub_100007000(v13);
  }

  sub_100007000((v1 + v18[8]));
  v14 = (v1 + v18[9]);
  if (v14[3])
  {
    sub_100007000(v14);
  }

  v15 = (v1 + v18[10]);
  if (v15[3])
  {
    sub_100007000(v15);
  }

  v16 = (v1 + v18[11]);
  if (v16[3])
  {
    sub_100007000(v16);
  }

  return _swift_deallocObject(v22, v20 + v19, v21 | 7);
}

uint64_t sub_100699080(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ShelfHeaderLayout(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_10069911C(uint64_t a1, uint64_t (*a2)(void *))
{
  v5 = *(type metadata accessor for ShelfHeaderLayout(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_1006988B0(a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

unint64_t sub_1006991D4()
{
  result = qword_100982AC8;
  if (!qword_100982AC8)
  {
    type metadata accessor for SearchAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100982AC8);
  }

  return result;
}

uint64_t sub_100699234(uint64_t a1)
{
  v2 = type metadata accessor for ActionOutcome();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = sub_100624370(Strong);

  v16 = v7;
  sub_100065AF0();
  v8 = v7;
  sub_10002849C(&qword_100991520, &unk_1007DCEE0);
  if (swift_dynamicCast())
  {
    sub_100005A38(&v13, v17);
    v9 = v18;
    v10 = v19;
    sub_10002A400(v17, v18);
    v13 = 0u;
    v14 = 0u;
    (*(v10 + 16))(a1, &v13, v9, v10);
    sub_10002B894(&v13, &unk_1009711D0, &unk_1007B1A10);
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
    v11 = Promise.__allocating_init(value:)();

    sub_100007000(v17);
  }

  else
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    sub_10002B894(&v13, &qword_100991528, &unk_1007E1370);
    sub_10002849C(&qword_1009764A0, &unk_1007B6230);
    sub_100699478();
    swift_allocError();
    v11 = Promise.__allocating_init(error:)();
  }

  return v11;
}

unint64_t sub_100699478()
{
  result = qword_100991530;
  if (!qword_100991530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991530);
  }

  return result;
}

unint64_t sub_1006994E0()
{
  result = qword_100991538;
  if (!qword_100991538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991538);
  }

  return result;
}

double sub_100699534(uint64_t a1, double a2)
{
  static CGFloat.allColumns.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  switch(a1)
  {
    case 6u:
      return floor(v3);
    case 5u:

      PageGrid.columnWidth.getter();
      break;
    case 4u:
      v4 = v3;
      v5 = PageGrid.name.getter();
      if (v6)
      {
        if (v5 == 0x6972477961646F74 && v6 == 0xE900000000000064)
        {

LABEL_15:
          PageGrid.interColumnSpace.getter();
          v3 = (v4 - v9) * 0.5;
          return floor(v3);
        }

        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v8)
        {
          goto LABEL_15;
        }
      }

      PageGrid.componentMeasuringSize(spanning:)();
      break;
    default:

      return sub_100699834(a1, v3);
  }

  return result;
}

double sub_100699674(uint64_t a1, id a2)
{
  if (a1 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [a2 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  sub_100699534(a1, v4);
  PageGrid.horizontalDirectionalMargins.getter();
  PageGrid.horizontalDirectionalMargins.getter();
  [a2 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v6 = v5;
  PageGrid.containerWidth.getter();
  UITraitCollection.isSizeClassRegular.getter();
  MeasurementRange.init(minimum:maximum:)();
  MeasurementRange.contains(_:)();
  return v6;
}

double sub_100699834(uint64_t a1, double a2)
{
  v2 = a1;
  static CGFloat.allColumns.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  if (v2 > 1u)
  {
    if (v2 == 2)
    {
      PageGrid.columnCount.getter();
      v7 = v6 + -1.0;
      PageGrid.columnWidth.getter();
      v9 = v8;
      PageGrid.interColumnSpace.getter();
      v11 = v7 + -1.0;
      if (v7 + -1.0 < 0.0)
      {
        v11 = 0.0;
      }

      v12 = v9 * v7 + v10 * v11;
      PageGrid.containerWidth.getter();
      v14 = v13;
      PageGrid.horizontalMargins.getter();
      v17 = v14 - (v15 + v16);
      PageGrid.interColumnSpace.getter();
      v3 = v17 - v18 - v12;
    }

    else
    {
      PageGrid.containerWidth.getter();
      v20 = v19;
      PageGrid.horizontalMargins.getter();
      v23 = v20 - (v21 + v22);
      PageGrid.columnWidth.getter();
      v25 = v23 - v24;
      PageGrid.interColumnSpace.getter();
      v3 = v25 - v26;
    }
  }

  else if (v2)
  {
    v4 = v3;
    PageGrid.interColumnSpace.getter();
    v3 = (v4 - v5) * 0.5;
  }

  return floor(v3);
}

uint64_t sub_10069992C@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = type metadata accessor for FontSource();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1490);
  v7 = *(v5 - 8);
  v22 = *(v7 + 16);
  v21 = v7 + 16;
  v22(v4, v6, v5);
  v8 = v2[13];
  v20 = enum case for FontSource.useCase(_:);
  v19 = v8;
  v8(v4);
  v9 = type metadata accessor for StaticDimension();
  v30[3] = v9;
  v30[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v30);
  v28 = v1;
  v29 = &protocol witness table for FontSource;
  v10 = sub_1000056E0(v27);
  v11 = v2[2];
  v11(v10, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v12 = v2[1];
  v12(v4, v1);
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v5, qword_1009D14A8);
  v22(v4, v13, v5);
  v19(v4, v20, v1);
  v28 = v9;
  v29 = &protocol witness table for StaticDimension;
  sub_1000056E0(v27);
  v25 = v1;
  v26 = &protocol witness table for FontSource;
  v14 = sub_1000056E0(v24);
  v11(v14, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v12(v4, v1);
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v5, qword_1009D1520);
  v22(v4, v15, v5);
  v19(v4, v20, v1);
  v25 = v9;
  v26 = &protocol witness table for StaticDimension;
  sub_1000056E0(v24);
  v23[3] = v1;
  v23[4] = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v23);
  v11(v16, v4, v1);
  StaticDimension.init(_:scaledLike:)();
  v12(v4, v1);
  return EditorialStoryCardLayout.Metrics.init(headerSpace:titleSpace:descriptionSpace:layoutMargins:)();
}

UIColor sub_100699D70()
{
  sub_100028BB8();
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(0.0, 0.0, 0.0, 1.0).super.isa;
  qword_1009D33D0 = result.super.isa;
  return result;
}

void sub_100699DE0(uint64_t a1, void *a2, id *a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v8 = a3;
    swift_once();
    a3 = v8;
  }

  v6 = *a3;
  v7 = [v6 colorWithAlphaComponent:0.8];

  *a4 = v7;
}

UIColor sub_100699E60()
{
  sub_100028BB8();
  result.super.isa = UIColor.init(_colorLiteralRed:green:blue:alpha:)(1.0, 1.0, 1.0, 1.0).super.isa;
  qword_1009D33E0 = result.super.isa;
  return result;
}

char *sub_100699EA4(double a1, double a2, double a3, double a4)
{
  v9 = type metadata accessor for CornerStyle();
  v101 = *(v9 - 8);
  v102 = v9;
  __chkstk_darwin(v9);
  v100 = v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v11 - 8);
  v99 = v93 - v12;
  v13 = type metadata accessor for FontUseCase();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v106 = v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DirectionalTextAlignment();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v95 = v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v109 = v93 - v20;
  v21 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v21 - 8);
  v23 = v93 - v22;
  v24 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_itemLayoutContext;
  v25 = type metadata accessor for ItemLayoutContext();
  (*(*(v25 - 8) + 56))(&v4[v24], 1, 1, v25);
  v26 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_artworkView;
  v98 = type metadata accessor for ArtworkView();
  v27 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v108 = v4;
  *&v4[v26] = v27;
  v28 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_headingLabel;
  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v29 = sub_1000056A8(v13, qword_1009D1490);
  v30 = v14 + 16;
  v105 = *(v14 + 16);
  v105(v23, v29, v13);
  v97 = v14;
  v31 = v14 + 56;
  v104 = *(v14 + 56);
  v104(v23, 0, 1, v13);
  v32 = enum case for DirectionalTextAlignment.leading(_:);
  v96 = v17;
  v103 = *(v17 + 104);
  v103(v109, enum case for DirectionalTextAlignment.leading(_:), v16);
  v33 = type metadata accessor for DynamicTypeLabel();
  v107 = v16;
  v34 = v33;
  v35 = objc_allocWithZone(v33);
  *&v108[v28] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v36 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_titleLabel;
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v37 = sub_1000056A8(v13, qword_1009D14A8);
  v105(v23, v37, v13);
  v104(v23, 0, 1, v13);
  v103(v109, v32, v107);
  v38 = objc_allocWithZone(v34);
  *&v108[v36] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v94 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_descriptionLabel;
  v93[2] = v31;
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v13, qword_1009D1520);
  v40 = v105;
  v41 = v106;
  v105(v106, v39, v13);
  v42 = v107;
  v43 = v13;
  v93[0] = v13;
  v44 = v103;
  v103(v109, v32, v107);
  v45 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel(0));
  *&v45[qword_1009902D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v40(v23, v41, v43);
  v93[1] = v30;
  v46 = v104;
  v104(v23, 0, 1, v43);
  v47 = v95;
  v44(v95, enum case for DirectionalTextAlignment.none(_:), v42);
  v48 = UIContentSizeCategoryExtraExtraExtraLarge;
  v49 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v50 = v106;
  v51 = v93[0];
  v40(v23, v106, v93[0]);
  v46(v23, 0, 1, v51);
  v52 = v49;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  v53 = v50;
  dispatch thunk of DynamicTypeLabel.updateFont(to:)();
  [v52 setNumberOfLines:0];
  v54 = v96;
  v55 = v109;
  v56 = v107;
  (*(v96 + 16))(v47, v109, v107);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  (*(v54 + 8))(v55, v56);
  (*(v97 + 8))(v53, v51);
  v57 = v108;
  *&v108[v94] = v52;
  *&v57[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_pageTraits] = 0;
  v58 = type metadata accessor for EditorialStoryCardCollectionViewCell(0);
  v110.receiver = v57;
  v110.super_class = v58;
  v59 = objc_msgSendSuper2(&v110, "initWithFrame:", a1, a2, a3, a4);
  [v59 setClipsToBounds:0];
  v60 = [v59 contentView];
  [v60 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v61 = [v59 contentView];
  [v61 setClipsToBounds:0];

  v62 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_artworkView;
  [*&v59[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_artworkView] setContentMode:2];
  v63 = qword_10096DA48;
  v64 = *&v59[v62];
  if (v63 != -1)
  {
    swift_once();
  }

  v65 = type metadata accessor for Shadow();
  v66 = sub_1000056A8(v65, qword_1009CFD38);
  v67 = *(v65 - 8);
  v68 = v99;
  (*(v67 + 16))(v99, v66, v65);
  (*(v67 + 56))(v68, 0, 1, v65);
  ArtworkView.shadow.setter();

  v69 = *&v59[v62];
  v71 = v100;
  v70 = v101;
  v72 = v102;
  (*(v101 + 104))(v100, enum case for CornerStyle.arc(_:), v102);
  v73 = v69;
  ArtworkView.setCorner(radius:style:)();

  (*(v70 + 8))(v71, v72);
  v74 = *&v59[v62];
  static ArtworkView.iconBorderColor.getter();
  dispatch thunk of RoundedCornerView.borderColor.setter();

  v75 = *&v59[v62];
  static ArtworkView.iconBorderWidth.getter();
  dispatch thunk of RoundedCornerView.borderWidth.setter();

  v76 = [v59 contentView];
  [v76 addSubview:*&v59[v62]];

  v77 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_headingLabel;
  v78 = qword_10096ED48;
  v79 = *&v59[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_headingLabel];
  if (v78 != -1)
  {
    swift_once();
  }

  [v79 setTextColor:qword_1009D33D8];

  v80 = [v59 contentView];
  [v80 addSubview:*&v59[v77]];

  v81 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_titleLabel;
  v82 = qword_10096ED50;
  v83 = *&v59[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_titleLabel];
  if (v82 != -1)
  {
    swift_once();
  }

  v84 = qword_1009D33E0;
  [v83 setTextColor:qword_1009D33E0];

  v85 = [v59 contentView];
  [v85 addSubview:*&v59[v81]];

  v86 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_descriptionLabel;
  [*&v59[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_descriptionLabel] setTextColor:v84];
  v87 = [v59 contentView];
  [v87 addSubview:*&v59[v86]];

  v88 = objc_opt_self();
  v89 = [v88 clearColor];
  [v59 setBackgroundColor:v89];

  v90 = [v59 contentView];
  v91 = [v88 clearColor];
  [v90 setBackgroundColor:v91];

  return v59;
}

id sub_10069AAB0()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EditorialStoryCardLayout.Metrics();
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for EditorialStoryCardLayout();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FloatingPointRoundingRule();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EditorialStoryCardCollectionViewCell(0);
  v37.receiver = v1;
  v37.super_class = v15;
  result = objc_msgSendSuper2(&v37, "layoutSubviews");
  if (*&v1[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_pageTraits])
  {
    v27 = v3;
    v28 = v2;
    swift_unknownObjectRetain();
    [v1 bounds];
    CGRectGetWidth(v38);
    [v1 bounds];
    CGRectGetHeight(v39);
    if (qword_10096E6C0 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for StaticDimension();
    sub_1000056A8(v17, qword_1009D2460);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    (*(v12 + 8))(v14, v11);
    sub_10069992C(v8);
    v18 = *&v1[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_artworkView];
    v35 = type metadata accessor for ArtworkView();
    v36 = &protocol witness table for UIView;
    v34 = v18;
    v19 = *&v1[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_headingLabel];
    v32 = type metadata accessor for DynamicTypeLabel();
    v33 = &protocol witness table for UILabel;
    v31[9] = &protocol witness table for UILabel;
    v31[10] = v19;
    v20 = *&v1[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_titleLabel];
    v31[8] = v32;
    v31[5] = v20;
    v21 = *&v1[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_descriptionLabel];
    v31[4] = &protocol witness table for UILabel;
    v31[3] = v32;
    v31[0] = v21;
    v22 = v18;
    v23 = v19;
    v24 = v20;
    v25 = v21;
    EditorialStoryCardLayout.init(metrics:artworkView:headerLabel:titleLabel:descriptionLabel:)();
    EditorialStoryCardLayout.placeChildren(relativeTo:in:)();
    swift_unknownObjectRelease();
    (*(v27 + 8))(v5, v28);
    return (*(v29 + 8))(v10, v30);
  }

  return result;
}

id sub_10069AF28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialStoryCardCollectionViewCell(0);
  objc_msgSendSuper2(&v2, "prepareForReuse");
  ArtworkView.image.setter();
  [*&v0[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_headingLabel] setText:0];
  [*&v0[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_titleLabel] setText:0];
  return [*&v0[OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_descriptionLabel] setText:0];
}

id sub_10069B014()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialStoryCardCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EditorialStoryCardCollectionViewCell(uint64_t a1)
{
  result = qword_100991568;
  if (!qword_100991568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10069B12C(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10069B1D8()
{
  v1 = type metadata accessor for FontUseCase();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v61 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for DirectionalTextAlignment();
  v4 = *(v63 - 8);
  __chkstk_darwin(v63);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v48 - v7;
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v48 - v10;
  v12 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_itemLayoutContext;
  v13 = type metadata accessor for ItemLayoutContext();
  (*(*(v13 - 8) + 56))(v0 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_artworkView;
  type metadata accessor for ArtworkView();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v62 = v0;
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_headingLabel;
  if (qword_10096E1B0 != -1)
  {
    swift_once();
  }

  v17 = sub_1000056A8(v1, qword_1009D1490);
  v18 = v2 + 16;
  v59 = *(v2 + 16);
  v59(v11, v17, v1);
  v57 = v2;
  v20 = *(v2 + 56);
  v19 = v2 + 56;
  v60 = v20;
  v20(v11, 0, 1, v1);
  v21 = enum case for DirectionalTextAlignment.leading(_:);
  v56 = v4;
  v23 = *(v4 + 104);
  v22 = v4 + 104;
  v58 = v23;
  v23(v8, enum case for DirectionalTextAlignment.leading(_:), v63);
  v24 = type metadata accessor for DynamicTypeLabel();
  v25 = objc_allocWithZone(v24);
  *(v62 + v16) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v26 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_titleLabel;
  if (qword_10096E1B8 != -1)
  {
    swift_once();
  }

  v27 = sub_1000056A8(v1, qword_1009D14A8);
  v59(v11, v27, v1);
  v54 = v19;
  v60(v11, 0, 1, v1);
  v51 = v22;
  v58(v8, v21, v63);
  v28 = objc_allocWithZone(v24);
  *(v62 + v26) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v53 = OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_descriptionLabel;
  if (qword_10096E1E0 != -1)
  {
    swift_once();
  }

  v29 = sub_1000056A8(v1, qword_1009D1520);
  v30 = v61;
  v31 = v59;
  v59(v61, v29, v1);
  v32 = v8;
  v52 = v8;
  v33 = v63;
  v34 = v58;
  v58(v32, v21, v63);
  v35 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel(0));
  *&v35[qword_1009902D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v31(v11, v30, v1);
  v36 = v1;
  v49 = v1;
  v50 = v18;
  v37 = v60;
  v60(v11, 0, 1, v36);
  v38 = v55;
  v34(v55, enum case for DirectionalTextAlignment.none(_:), v33);
  v39 = UIContentSizeCategoryExtraExtraExtraLarge;
  v40 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v41 = v61;
  v42 = v49;
  v31(v11, v61, v49);
  v37(v11, 0, 1, v42);
  v43 = v40;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();
  dispatch thunk of DynamicTypeLabel.updateFont(to:)();
  [v43 setNumberOfLines:0];
  v44 = v56;
  v45 = v52;
  v46 = v63;
  (*(v56 + 16))(v38, v52, v63);
  dispatch thunk of DynamicTypeLabel.directionalTextAlignment.setter();

  (*(v44 + 8))(v45, v46);
  (*(v57 + 8))(v41, v42);
  v47 = v62;
  *(v62 + v53) = v43;
  *(v47 + OBJC_IVAR____TtC8AppStore36EditorialStoryCardCollectionViewCell_pageTraits) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10069B848(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for OSLogger();
  sub_1000056A8(v4, qword_1009CE278);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v5._countAndFlagsBits = 0x64656873696E6946;
  v5._object = 0xEF203A7473655420;
  LogMessage.StringInterpolation.appendLiteral(_:)(v5);
  v6 = PerformanceTestCase.name.getter();
  v10[3] = &type metadata for String;
  v10[0] = v6;
  v10[1] = v7;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(v10, &unk_1009711D0, &unk_1007B1A10);
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v8);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  PerformanceTestCase.name.getter();
  v9 = String._bridgeToObjectiveC()();

  [a2 finishedTest:v9];
}

void sub_10069BA88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v5 - 8);
  if (qword_10096D140 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for OSLogger();
  sub_1000056A8(v6, qword_1009CE278);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x542064656C696146;
  v7._object = 0xED0000203A747365;
  LogMessage.StringInterpolation.appendLiteral(_:)(v7);
  v8 = PerformanceTestCase.name.getter();
  v18 = &type metadata for String;
  v16 = v8;
  v17 = v9;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v16, &unk_1009711D0, &unk_1007B1A10);
  v10._countAndFlagsBits = 0x6572206874697720;
  v10._object = 0xEE00203A6E6F7361;
  LogMessage.StringInterpolation.appendLiteral(_:)(v10);
  v18 = &type metadata for String;
  v16 = a2;
  v17 = a3;

  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v16, &unk_1009711D0, &unk_1007B1A10);
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v11);
  LogMessage.init(stringInterpolation:)();
  Logger.error(_:)();

  PerformanceTestCase.name.getter();
  v12 = String._bridgeToObjectiveC()();

  v13 = String._bridgeToObjectiveC()();
  [a4 failedTest:v12 withFailure:v13];
}

double sub_10069BD54(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    v14 = a1;
    sub_100065AF0();
    v5 = a1;
    sub_10002849C(&qword_1009915F8, &qword_1007DD008);
    if (swift_dynamicCast())
    {
      sub_100005A38(v12, &v15);
      [v5 loadViewIfNeeded];
      sub_10002A400(&v15, v17);
      dispatch thunk of PerformanceTestable.perform(_:using:)();

      sub_100007000(&v15);
    }

    else
    {
      v13 = 0;
      memset(v12, 0, sizeof(v12));
      sub_10002B894(v12, &unk_100991600, &qword_1007DD010);
      sub_10002A400(a2, a2[3]);
      v15 = 0;
      v16 = 0xE000000000000000;
      _StringGuts.grow(_:)(37);
      v7 = [v5 description];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      v15 = v8;
      v16 = v10;
      v11._countAndFlagsBits = 0xD000000000000023;
      v11._object = 0x800000010081F9F0;
      String.append(_:)(v11);
      dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
    }
  }

  else
  {
    sub_10002A400(a2, a2[3]);
    dispatch thunk of PerformanceTestRunner.failed(_:reason:)();
  }

  return result;
}

void sub_10069BF60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  v31 = a1;
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for BootstrapPhase();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for JSONObject();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for PerformanceTestCase();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  if (a3)
  {
    if (a4)
    {
      v18 = sub_10002849C(&qword_1009915E0, &unk_1007B7540);
      v19 = a4;
    }

    else
    {
      v19 = 0;
      v18 = 0;
      v37 = 0;
      v38 = 0;
    }

    v36 = v19;
    v39 = v18;

    JSONObject.init(wrapping:)();
    PerformanceTestCase.init(name:options:)();
    (*(v12 + 16))(v14, v17, v11);
    v20 = (*(v12 + 80) + 24) & ~*(v12 + 80);
    v21 = swift_allocObject();
    v22 = v11;
    v30 = v11;
    v23 = v31;
    *(v21 + 16) = v31;
    (*(v12 + 32))(v21 + v20, v14, v22);
    v25 = v33;
    v24 = v34;
    *(v21 + ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
    v35 = 0;
    v26 = v32;
    (*(v32 + 104))(v9, enum case for BootstrapPhase.initialBootstrap(_:), v25);
    v27 = v23;
    v28 = v24;
    BootstrapPendingClosuresHandler.performClosure(after:priority:canPerformImmediately:name:isStartup:closure:)();

    (*(v26 + 8))(v9, v25);
    (*(v12 + 8))(v17, v30);
  }

  else
  {
    __break(1u);
  }
}

void sub_10069C524(void *a1, uint64_t a2, char *a3)
{
  v6 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  if (a1)
  {
    v15 = a3;
    v7 = qword_10096D140;
    v8 = a1;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for OSLogger();
    sub_1000056A8(v9, qword_1009CE278);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v10._countAndFlagsBits = 0x206D726F66726550;
    v10._object = 0xEE00203A74736574;
    LogMessage.StringInterpolation.appendLiteral(_:)(v10);
    v11 = PerformanceTestCase.name.getter();
    v17 = &type metadata for String;
    v16[0] = v11;
    v16[1] = v12;
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002B894(v16, &unk_1009711D0, &unk_1007B1A10);
    v13._countAndFlagsBits = 0x632074736574202CLL;
    v13._object = 0xED0000203A657361;
    LogMessage.StringInterpolation.appendLiteral(_:)(v13);
    v17 = type metadata accessor for PerformanceTestCase();
    sub_1000056E0(v16);
    dump<A>(_:name:indent:maxDepth:maxItems:)();
    LogMessage.StringInterpolation.appendInterpolation(safe:)();
    sub_10002B894(v16, &unk_1009711D0, &unk_1007B1A10);
    v14._countAndFlagsBits = 0;
    v14._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    LogMessage.init(stringInterpolation:)();
    Logger.info(_:)();

    sub_10069C948(a2, v8, v15);
  }

  else
  {
    __break(1u);
  }
}

void sub_10069C8B8()
{
  v1 = *(type metadata accessor for PerformanceTestCase() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10069C524(v3, v0 + v2, v4);
}

void sub_10069C948(uint64_t a1, void *a2, char *a3)
{
  v35 = a3;
  v5 = type metadata accessor for PerformanceTestCase();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v7;
  __chkstk_darwin(v8);
  v33 = &v28 - v9;
  v10 = type metadata accessor for LogMessage.StringInterpolation();
  __chkstk_darwin(v10 - 8);
  v39[3] = &type metadata for UIAppPerformanceTestRunner;
  v39[4] = sub_10069CDC4();
  v39[0] = a2;
  v11 = qword_10096D140;
  v12 = a2;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSLogger();
  sub_1000056A8(v13, qword_1009CE278);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 0x2074736554;
  v14._object = 0xE500000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v14);
  v15 = PerformanceTestCase.name.getter();
  v38 = &type metadata for String;
  *&v37 = v15;
  *(&v37 + 1) = v16;
  LogMessage.StringInterpolation.appendInterpolation(safe:)();
  sub_10002B894(&v37, &unk_1009711D0, &unk_1007B1A10);
  v17._object = 0x800000010081F9A0;
  v17._countAndFlagsBits = 0xD000000000000028;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);
  LogMessage.init(stringInterpolation:)();
  Logger.info(_:)();

  v18 = &v35[OBJC_IVAR____TtC8AppStore11AppDelegate_pptViewHierarchyProxy];
  v35 = *&v35[OBJC_IVAR____TtC8AppStore11AppDelegate_pptViewHierarchyProxy];
  if (v35)
  {
    v31 = *(v18 + 1);
    sub_10002C0AC(v39, &v37);
    v29 = *(v6 + 16);
    v19 = v33;
    v29(v33, a1, v5);
    v20 = v6;
    v21 = (*(v6 + 80) + 56) & ~*(v6 + 80);
    v22 = swift_allocObject();
    sub_100005A38(&v37, v22 + 16);
    v30 = a1;
    v23 = *(v20 + 32);
    v23(v22 + v21, v19, v5);
    sub_10002C0AC(v39, v36);
    v24 = v34;
    v29(v34, a1, v5);
    v25 = swift_allocObject();
    sub_100005A38(v36, v25 + 16);
    v23((v25 + v21), v24, v5);
    v26 = v35;
    v27 = v31;

    sub_1006DF2A0(v30, sub_10069CE18, v22, sub_1001FE008, v25, v26, v27);

    sub_100007000(v39);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_10069CDC4()
{
  result = qword_1009915E8;
  if (!qword_1009915E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009915E8);
  }

  return result;
}

double sub_10069CE18(void *a1)
{
  v3 = *(type metadata accessor for PerformanceTestCase() - 8);
  v4 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_10069BD54(a1, (v1 + 16), v4);
}

char *sub_10069CE9C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for ArcadeLockupLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FontUseCase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v15, qword_1009D0740);
  (*(v16 + 16))(v18, v20, v15);
  if (qword_10096ED58 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v11, qword_100991670);
  (*(v12 + 16))(v14, v21, v11);
  v22 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  *&v5[v19] = sub_1001C6E04(v18, v14, 0, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_10096ED60 != -1)
  {
    swift_once();
  }

  *&v5[v23] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_100991688];
  swift_weakInit();
  v24 = &v5[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  *v24 = 0;
  v24[1] = 0;
  v5[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = 7;
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView]];
  v30 = OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  [*&v29[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView] setClipsToBounds:1];
  [v29 addSubview:*&v29[v30]];

  return v29;
}

uint64_t sub_10069D288()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ArcadeLockupLayout.Metrics();
  sub_100005644(v4, qword_100991670);
  v18 = sub_1000056A8(v4, qword_100991670);
  v25[23] = &type metadata for Double;
  v25[24] = &protocol witness table for Double;
  v25[19] = &protocol witness table for Double;
  v25[20] = 0x4053800000000000;
  v25[18] = &type metadata for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4034000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v16 = sub_1000056A8(v5, qword_1009D0740);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = type metadata accessor for StaticDimension();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_1000056E0(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v19);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return ArcadeLockupLayout.Metrics.init(minimumHeight:offerButtonMargin:wordmarkMargin:wordmarkTopSpace:wordmarkSpace:subtitleLeadingSpace:bottomSpace:numberOfLinesForSubtitle:shouldHorizontallyCenterSubtitleLayout:expandToFillWidth:subtitleIsHorizontallyAligned:)();
}

id sub_10069D5EC()
{
  result = [objc_opt_self() effectWithStyle:9];
  qword_100991688 = result;
  return result;
}

void sub_10069D764()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  v3 = *&v0[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v3 sizeThatFits:{v4, v5}];
  v7 = v6;
  v9 = v8;

  v10 = *&v0[v2];
  LayoutMarginsAware<>.layoutFrame.getter();
  MinX = CGRectGetMinX(v17);
  LayoutMarginsAware<>.layoutFrame.getter();
  [v10 setFrame:{MinX, CGRectGetMidY(v18) + v9 * -0.5, v7, v9}];

  v12 = &v0[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  swift_beginAccess();
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 1);

    v13(v15);
    sub_10001F63C(v13, v14);
  }
}

void sub_10069D914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = type metadata accessor for ImpressionMetrics();
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
      sub_10002C0AC(a3, v24);
      sub_10002849C(&qword_100973D50, &unk_1007B3840);
      type metadata accessor for TodayCard();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = TodayCard.overlay.getter(), , v13))
      {
        type metadata accessor for TodayCardArcadeLockupOverlay();
        if (swift_dynamicCastClass())
        {
          TodayCardArcadeLockupOverlay.arcadeLockup.getter();
          ArcadeLockup.impressionMetrics.getter();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_100453E30(v6);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            ImpressionsCalculator.addElement(_:at:)();

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

double sub_10069DD68(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_10069DDC8(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

uint64_t sub_10069DE60()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_10069DEBC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

void (*sub_10069DF7C(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10002C0AC(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100005A38(v6, v4 + 32);
  return sub_10069E25C;
}

unint64_t sub_10069E048()
{
  result = qword_1009916E8;
  if (!qword_1009916E8)
  {
    type metadata accessor for TodayCardArcadeLockupOverlay();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009916E8);
  }

  return result;
}

double sub_10069E0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v7 = a5;
  v8 = v5[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (a5 == 7)
  {
    if (v8 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v5 setNeedsLayout];
    goto LABEL_6;
  }

  if (v8 == 7)
  {
    goto LABEL_5;
  }

  switch(a5)
  {
    case 6u:
      if (v8 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5u:
      if (v8 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4u:
      if (v8 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if (v8 != a5 || (v8 - 7) >= 0xFFFFFFFD)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v9 = [v5 traitCollection];
  if (v7 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v9 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v5 setLayoutMargins:{v11, v13, v15, v17}];
  v18 = *&v5[OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView];
  v19 = TodayCardArcadeLockupOverlay.arcadeLockup.getter();
  sub_100283630(v19, a2);

  return result;
}

void sub_10069E268()
{
  v1 = v0;
  v2 = type metadata accessor for ArcadeLockupLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FontUseCase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v6, qword_1009D0740);
  (*(v7 + 16))(v9, v11, v6);
  if (qword_10096ED58 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v2, qword_100991670);
  (*(v3 + 16))(v5, v12, v2);
  v13 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  *(v1 + v10) = sub_1001C6E04(v9, v5, 0, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_10096ED60 != -1)
  {
    swift_once();
  }

  *(v1 + v14) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_100991688];
  swift_weakInit();
  v15 = (v1 + OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore38LegacyTodayCardArcadeLockupOverlayView_sizeCategory) = 7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10069E558(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v54 = a3;
  LODWORD(v5) = a2;
  v56 = a1;
  swift_getObjectType();
  v6 = sub_10002849C(&qword_10098E2C8, qword_1007D8498);
  __chkstk_darwin(v6 - 8);
  v57 = &v45 - v7;
  v8 = type metadata accessor for DynamicTextAppearance();
  v51 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  __chkstk_darwin(v14);
  v16 = &v45 - v15;
  __chkstk_darwin(v17);
  v18 = type metadata accessor for LabelPlaceholder();
  v52 = *(v18 - 8);
  v53 = v18;
  __chkstk_darwin(v18);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = *&v3[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_titleLabel];
  LayoutMarginsAware<>.layoutFrame.getter();
  v22 = v21;
  v58[5] = *&v3[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_ratingControl];
  type metadata accessor for StarRatingControl();
  Measurable.placeable.getter();
  v23 = [v3 traitCollection];
  if (qword_10096EA78 != -1)
  {
    swift_once();
  }

  if (UITraitCollection.prefersAccessibilityLayouts.getter() & 1) != 0 || (UITraitCollection.isSizeClassCompact.getter())
  {

    sub_100007000(v58);
LABEL_6:
    v24 = 0x525F4F545F504154;
    v25 = 0xEB00000000455441;
    goto LABEL_7;
  }

  v49 = v20;
  v50 = v5;
  v46 = "L AdFetch returns Mock Ad";
  v34._object = 0x800000010080E210;
  v34._countAndFlagsBits = 0xD000000000000016;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  v36 = localizedString(_:comment:)(v34, v35);
  object = v36._object;
  countAndFlagsBits = v36._countAndFlagsBits;
  DynamicTextAppearance.init()();
  if (qword_10096DF68 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for FontUseCase();
  sub_1000056A8(v37, qword_1009D0DB8);
  DynamicTextAppearance.withFontUseCase(_:)();
  v38 = *(v51 + 8);
  v38(v10, v8);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v38(v13, v8);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v38(v16, v8);
  LabelPlaceholder.Options.init(rawValue:)();
  v5 = v49;
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.measure(toFit:with:)();
  v40 = v39;
  sub_10002A400(v58, v58[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v42 = v41;
  sub_10002A400(&qword_1009D2C88, qword_1009D2CA0);
  AnyDimension.value(with:)();
  v44 = v43;

  (*(v52 + 8))(v5, v53);
  sub_100007000(v58);
  LOBYTE(v5) = v50;
  if (v22 < v42 + v40 + v44)
  {
    goto LABEL_6;
  }

  v25 = v46 | 0x8000000000000000;
  v24 = 0xD000000000000016;
LABEL_7:
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  localizedString(_:comment:)(*&v24, v26);
  v27 = v57;
  v28 = String._bridgeToObjectiveC()();

  [v55 setText:v28];

  v29 = TapToRate.rateAction.getter();
  if (v29)
  {
    v58[0] = v29;
    type metadata accessor for RateAction();
    type metadata accessor for BaseObjectGraph();
    sub_10069EBE0();
    ComponentModel.pairedWith<A>(objectGraph:)();

    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = sub_10002849C(&qword_10098E2C0, &qword_1007D8478);
  (*(*(v31 - 8) + 56))(v27, v30, 1, v31);
  v32 = OBJC_IVAR____TtC8AppStore20ProductTapToRateView_rateAction;
  swift_beginAccess();
  sub_10069EB70(v27, &v4[v32]);
  swift_endAccess();
  v4[OBJC_IVAR____TtC8AppStore20ProductTapToRateView_isSingleColumn] = v5 & 1;
  [v4 setNeedsLayout];
  return [v4 setNeedsLayout];
}

uint64_t sub_10069EB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_10098E2C8, qword_1007D8498);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10069EBE0()
{
  result = qword_100991798;
  if (!qword_100991798)
  {
    type metadata accessor for RateAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991798);
  }

  return result;
}

double sub_10069EC38(void *a1)
{
  v2 = type metadata accessor for SystemImage();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 traitCollection];
  if (qword_10096EA10 != -1)
  {
    swift_once();
  }

  v18.is_nil = qword_10098D728;
  v18.value._rawValue = 0;
  isa = UITraitCollection.clampingContentSizeCategory(min:max:)(v18, v7).super.isa;
  sub_10067DF14();
  v10 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
  (*(v3 + 104))(v6, enum case for SystemImage.starFill(_:), v2);
  v11 = [v10 configurationWithTraitCollection:isa];
  v12 = static SystemImage.load(_:with:)();

  (*(v3 + 8))(v6, v2);
  v13 = [v12 imageWithRenderingMode:2];

  [v13 size];
  v15 = v14;

  return (v15 + 12.0) * 5.0 + -12.0;
}

double sub_10069EE6C(void *a1, double a2, double a3)
{
  v5 = type metadata accessor for DynamicTextAppearance();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v78 = &v70 - v10;
  __chkstk_darwin(v11);
  v13 = &v70 - v12;
  __chkstk_darwin(v14);
  v79 = &v70 - v15;
  v16 = type metadata accessor for LabelPlaceholder();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v82 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v73 = &v70 - v20;
  v21 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v81 = LayoutViewPlaceholder.init(measureWith:)();
  v83[0] = v81;
  v75 = v21;
  Measurable.placeable.getter();
  v76 = a1;
  v22 = [a1 traitCollection];
  if (qword_10096EA78 != -1)
  {
    swift_once();
  }

  v23 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v24 = &qword_10096D000;
  v74 = v8;
  v77 = v16;
  v80 = v17;
  if (v23 & 1) != 0 || (v24 = &qword_10096D000, (UITraitCollection.isSizeClassCompact.getter()))
  {

    sub_100007000(v84);
LABEL_6:
    v25 = v6;
    v26 = 0x525F4F545F504154;
    v27 = 0xEB00000000455441;
    goto LABEL_7;
  }

  v72 = "L AdFetch returns Mock Ad";
  v42._object = 0x800000010080E210;
  v42._countAndFlagsBits = 0xD000000000000016;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  localizedString(_:comment:)(v42, v43);
  DynamicTextAppearance.init()();
  if (qword_10096DF68 != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for FontUseCase();
  sub_1000056A8(v44, qword_1009D0DB8);
  v45 = v78;
  DynamicTextAppearance.withFontUseCase(_:)();
  v46 = *(v6 + 8);
  v46(v74, v5);
  DynamicTextAppearance.withNumberOfLines(_:)();
  v46(v45, v5);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v46(v13, v5);
  v8 = v74;
  LabelPlaceholder.Options.init(rawValue:)();
  v47 = v73;
  LabelPlaceholder.init(_:with:where:)();
  LabelPlaceholder.measure(toFit:with:)();
  v49 = v48;
  sub_10002A400(v84, v85);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v51 = v50;
  sub_10002A400(&qword_1009D2C88, qword_1009D2CA0);
  AnyDimension.value(with:)();
  v53 = v52;

  (*(v80 + 8))(v47, v77);
  sub_100007000(v84);
  v24 = &qword_10096D000;
  if (v51 + v49 + v53 > a2)
  {
    goto LABEL_6;
  }

  v25 = v6;
  v27 = v72 | 0x8000000000000000;
  v26 = 0xD000000000000016;
LABEL_7:
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  v29 = localizedString(_:comment:)(*&v26, v28);
  v30 = v13;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  localizedString(_:comment:)(v29, v31);

  DynamicTextAppearance.init()();
  if (v24[493] != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for FontUseCase();
  sub_1000056A8(v32, qword_1009D0DB8);
  v33 = v78;
  DynamicTextAppearance.withFontUseCase(_:)();
  v34 = v8;
  v35 = *(v25 + 8);
  v35(v34, v5);
  v36 = 1;
  DynamicTextAppearance.withNumberOfLines(_:)();
  v35(v33, v5);
  DynamicTextAppearance.withLineBreakMode(_:)();
  v71 = v30;
  v72 = v5;
  v35(v30, v5);
  LabelPlaceholder.Options.init(rawValue:)();
  v37 = v82;
  LabelPlaceholder.init(_:with:where:)();
  sub_1005DF9A8(&qword_1009D2C88, v84);
  v38 = v77;
  v86[3] = v77;
  v86[4] = &protocol witness table for LabelPlaceholder;
  v39 = sub_1000056E0(v86);
  v40 = v80;
  (*(v80 + 16))(v39, v37, v38);
  v83[0] = v81;
  Measurable.placeable.getter();
  v41 = [v76 traitCollection];
  if ((UITraitCollection.prefersAccessibilityLayouts.getter() & 1) == 0)
  {
    if (UITraitCollection.isSizeClassCompact.getter())
    {
      v36 = 1;
      v40 = v80;
    }

    else
    {
      v54._object = 0x800000010080E210;
      v54._countAndFlagsBits = 0xD000000000000016;
      v55._countAndFlagsBits = 0;
      v55._object = 0xE000000000000000;
      localizedString(_:comment:)(v54, v55);
      v56 = v74;
      DynamicTextAppearance.init()();
      v57 = v78;
      DynamicTextAppearance.withFontUseCase(_:)();
      v58 = v72;
      v35(v56, v72);
      v59 = v71;
      DynamicTextAppearance.withNumberOfLines(_:)();
      v35(v57, v58);
      DynamicTextAppearance.withLineBreakMode(_:)();
      v35(v59, v58);
      LabelPlaceholder.Options.init(rawValue:)();
      v60 = v73;
      LabelPlaceholder.init(_:with:where:)();
      LabelPlaceholder.measure(toFit:with:)();
      v62 = v61;
      sub_10002A400(v87, v87[3]);
      dispatch thunk of Placeable.measure(toFit:with:)();
      v64 = v63;
      sub_10002A400(v84, v85);
      AnyDimension.value(with:)();
      v66 = v65;
      v40 = v80;
      (*(v80 + 8))(v60, v38);
      v36 = v64 + v62 + v66 > a2;
    }
  }

  sub_10034AB28(v36, v83);
  sub_10002A400(v83, v83[3]);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v68 = v67;

  (*(v40 + 8))(v82, v38);
  sub_100007000(v83);
  sub_1005DFA58(v84);
  return v68;
}

uint64_t sub_10069F7F4()
{
  v0 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10002849C(&qword_100971EC0, &qword_1007B2A38);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  ItemLayoutContext.mutableState.getter();
  WritableStateLens.init(_:)();
  sub_10006C318();
  WritableStateLens<A>.updateValue(_:)();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_10069F96C(double a1)
{
  v2 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v2 - 8);
  v42 = v33 - v3;
  v40 = type metadata accessor for PageGrid.HorizontalMargins();
  v4 = *(v40 - 8);
  __chkstk_darwin(v40);
  v6 = (v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v7 - 8);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v33 - v11;
  __chkstk_darwin(v13);
  v46 = v33 - v14;
  __chkstk_darwin(v15);
  v17 = v33 - v16;
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v18 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v45 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v35 = v20;
  *(v20 + 16) = xmmword_1007B23A0;
  v38 = v20 + v19;
  v48 = 0x3FF0000000000000;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v47 = 0x4030000000000000;
  v48 = 0x4020000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v48 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v6 = 16.0;
  v6[1] = a1 + 16.0;
  v39 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v21 = *(v4 + 104);
  v36 = v4 + 104;
  v22 = v40;
  v21(v6);
  v41 = v21;
  left = UIEdgeInsetsZero.left;
  LOBYTE(v48) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0;
  v44 = v9;
  PageGrid.DirectionalValue.init(_:)();
  v43 = v17;
  v37 = v12;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v48 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v47 = 0x4034000000000000;
  v48 = 0x4024000000000000;
  PageGrid.DirectionalValue.init(horizontal:vertical:)();
  v48 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v34 = a1;
  *v6 = 20.0;
  v6[1] = a1 + 20.0;
  (v21)(v6, v39, v22);
  LOBYTE(v48) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0;
  PageGrid.DirectionalValue.init(_:)();
  v24 = v45;
  v33[2] = *&UIEdgeInsetsZero.top;
  *&v33[3] = left;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v33[1] = 2 * v24;
  v48 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v6 = 34.0;
  v6[1] = a1 + 34.0;
  v25 = v39;
  v26 = v40;
  (v41)(v6, v39, v40);
  LOBYTE(v48) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v48 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v6 = 34.0;
  v6[1] = a1 + 34.0;
  v27 = v25;
  v28 = v41;
  (v41)(v6, v27, v26);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v48) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v29 = 4 * v45;
  v48 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v30 = v34 + 52.0;
  *v6 = 52.0;
  v6[1] = v30;
  v31 = v39;
  (v28)(v6, v39, v26);
  LOBYTE(v48) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v45 += v29;
  v48 = 0x3FF0000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4038000000000000;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0x4034000000000000;
  PageGrid.DirectionalValue.init(_:)();
  *v6 = 52.0;
  v6[1] = v30;
  (v41)(v6, v31, v40);
  LOBYTE(v48) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v48 = 0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v35;
}

double sub_1006A0350(uint64_t a1, __n128 a2, double a3)
{
  v4 = v3;
  v5 = type metadata accessor for ReviewSummaryLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReviewSummaryLayout();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096ED68 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v5, qword_1009D3418);
  (*(v6 + 16))(v8, v13, v5);
  v19[11] = *(v4 + OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel);
  type metadata accessor for ExpandableTextView();
  Measurable.placeable.getter();
  v14 = *(v4 + OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleLabel);
  v19[4] = type metadata accessor for DynamicTypeLabel();
  v19[5] = &protocol witness table for UILabel;
  v19[1] = v14;
  v15 = v14;
  ReviewSummaryLayout.init(metrics:bodyLabel:subtitleLabel:)();
  sub_1006A29A0(&unk_100991910, &type metadata accessor for ReviewSummaryLayout, &protocol conformance descriptor for ReviewSummaryLayout);
  dispatch thunk of Placeable.measure(toFit:with:)();
  v17 = v16;
  (*(v10 + 8))(v12, v9);
  return v17;
}

uint64_t sub_1006A05E8(__n128 a1)
{
  v1 = type metadata accessor for ReviewSummaryLayout.Metrics();
  sub_100005644(v1, qword_1009D3418);
  sub_1000056A8(v1, qword_1009D3418);
  v3[3] = sub_10002849C(&unk_10096FC10, &unk_1007B10C0);
  v3[4] = sub_100097060(&qword_10096FC20, &unk_10096FC10, &unk_1007B10C0, &protocol conformance descriptor for <> Conditional<A, B>);
  sub_1000056E0(v3);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  Conditional<>.init(regularValue:compactValue:)();
  return ReviewSummaryLayout.Metrics.init(subtitleTopSpace:contentPadding:)();
}

uint64_t sub_1006A06F0()
{
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  result = static UIColor.secondaryText.getter();
  qword_100991840 = result;
  return result;
}

char *sub_1006A0734(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  v15 = type metadata accessor for FontUseCase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_backgroundView;
  *&v4[v19] = [objc_allocWithZone(UIView) init];
  v64 = v4;
  v65 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel;
  if (qword_10096DE18 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v15, qword_1009D09C8);
  v21 = *(v16 + 16);
  v21(v18, v20, v15);
  v66 = objc_opt_self();
  v22 = [v66 systemBackgroundColor];
  v23 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v24 = v22;
  v25 = sub_10059F344(v24, 0.0, 0.0, 0.0, 0.0);
  v21(v14, v18, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  sub_100031660(v14, v11, &qword_100972ED0, &unk_1007B17B0);
  v26 = v25;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  sub_10002B894(v14, &qword_100972ED0, &unk_1007B17B0);
  v27 = *(v16 + 8);
  v67 = v15;
  v27(v18, v15);

  v28 = v64;
  *&v64[v65] = v26;
  v29 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleLabel;
  type metadata accessor for DynamicTypeLabel();
  *&v28[v29] = DynamicTypeLabel.__allocating_init(frame:)();
  v30 = &v28[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitle];
  *v30 = 0;
  *(v30 + 1) = 0;
  *&v28[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleArtwork] = 0;
  v31 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleArtworkAlignment;
  v32 = type metadata accessor for ReviewSummary.SubtitleArtworkAlignment();
  (*(*(v32 - 8) + 56))(&v28[v31], 1, 1, v32);
  v33 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_previewContainer;
  *&v28[v33] = [objc_allocWithZone(UIView) init];
  v69.receiver = v28;
  v69.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v69, "initWithFrame:", a1, a2, a3, a4);
  [v34 setClipsToBounds:1];
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v35 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_previewContainer;
  v36 = [*&v34[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_previewContainer] layer];
  [v36 setCornerRadius:16.0];

  [v34 addSubview:*&v34[v35]];
  v37 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_backgroundView;
  v38 = *&v34[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_backgroundView];
  v39 = [v66 systemBackgroundColor];
  [v38 setBackgroundColor:v39];

  [*&v34[v37] setAlpha:0.0];
  v40 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel;
  [*(*&v34[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel] + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setAdjustsFontForContentSizeCategory:1];
  v41 = *&v34[v40];
  v42 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines;
  v43 = *&v41[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  *&v41[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines] = 10;
  v44 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  if (v41[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] == 1)
  {
    v45 = *&v41[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
    v46 = v41;
    [v45 setNumberOfLines:10];
    if (*&v41[v42] == v43)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v47 = v41;
    if (v43 == 10)
    {
      goto LABEL_9;
    }
  }

  if (v41[v44])
  {
    sub_1005A0320();
  }

LABEL_9:

  v48 = *&v34[v40];
  v49 = &v48[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  v50 = *&v48[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  v51 = *&v48[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler + 8];
  *v49 = 0;
  *(v49 + 1) = 0;
  v52 = v48;
  sub_10001F63C(v50, v51);
  [*&v52[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setUserInteractionEnabled:0];

  v53 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleLabel;
  v54 = qword_10096ED70;
  v55 = *&v34[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleLabel];
  if (v54 != -1)
  {
    swift_once();
  }

  [v55 setTextColor:qword_100991840];

  v56 = *&v34[v53];
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v57 = qword_10096DFC0;
  v58 = v56;
  if (v57 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v67, qword_1009D0EC0);
  v59 = [v34 traitCollection];

  v60 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
  [v58 setFont:v60];

  [*&v34[v53] setNumberOfLines:0];
  [*&v34[v35] addSubview:*&v34[v37]];
  [*&v34[v35] addSubview:*&v34[v40]];
  [*&v34[v35] addSubview:*&v34[v53]];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_1007B10D0;
  *(v61 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v61 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v34;
}

void sub_1006A0EE4()
{
  v1 = sub_10002849C(&qword_1009918B0, &unk_1007DA8B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for ReviewSummary.SubtitleArtworkAlignment();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v0[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleLabel];
  v9 = *&v0[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitle + 8];
  v18 = *&v0[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitle];
  v19 = v8;
  v10 = *&v0[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleArtwork];
  v11 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleArtworkAlignment;
  swift_beginAccess();
  sub_100031660(&v0[v11], v3, &qword_1009918B0, &unk_1007DA8B0);
  v12 = *(v5 + 48);
  if (v12(v3, 1, v4) == 1)
  {
    (*(v5 + 104))(v7, enum case for ReviewSummary.SubtitleArtworkAlignment.trailing(_:), v4);
    v13 = v12(v3, 1, v4);

    if (v13 != 1)
    {
      sub_10002B894(v3, &qword_1009918B0, &unk_1007DA8B0);
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
  }

  v14 = [v0 traitCollection];
  v16 = sub_1006A25DC(v15, v18, v9, v10, v7);

  (*(v5 + 8))(v7, v4);
  [v19 setAttributedText:v16];
}

uint64_t sub_1006A11E4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for ReviewSummaryLayout.Metrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for ReviewSummaryLayout();
  v31 = *(v10 - 8);
  v32 = v10;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37.receiver = v0;
  v37.super_class = ObjectType;
  objc_msgSendSuper2(&v37, "layoutSubviews", v11);
  v14 = [v0 traitCollection];
  v15 = UITraitCollection.isSizeClassCompact.getter();

  if (v15)
  {
    v16 = 8.0;
  }

  else
  {
    v16 = 16.0;
  }

  v17 = *&v1[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_previewContainer];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v17 setFrame:{sub_1000CC354(v18, v19, v20, v21, -v16, -v16)}];
  if (qword_10096ED68 != -1)
  {
    swift_once();
  }

  v22 = sub_1000056A8(v3, qword_1009D3418);
  v23 = *(v4 + 16);
  v23(v9, v22, v3);
  ReviewSummaryLayout.Metrics.contentPadding.setter();
  v23(v6, v9, v3);
  v36 = *&v1[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel];
  type metadata accessor for ExpandableTextView();
  Measurable.placeable.getter();
  v24 = *&v1[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleLabel];
  v34 = type metadata accessor for DynamicTypeLabel();
  v35 = &protocol witness table for UILabel;
  v33 = v24;
  v25 = v24;
  ReviewSummaryLayout.init(metrics:bodyLabel:subtitleLabel:)();
  (*(v4 + 8))(v9, v3);
  [v17 bounds];
  v26 = [v1 traitCollection];
  sub_1006A29A0(&unk_100991910, &type metadata accessor for ReviewSummaryLayout, &protocol conformance descriptor for ReviewSummaryLayout);
  v27 = v32;
  dispatch thunk of Placeable.place(at:with:)();

  [v17 bounds];
  v28 = [v1 traitCollection];
  dispatch thunk of Placeable.measure(toFit:with:)();

  [v17 frame];
  [v17 setFrame:?];
  v29 = *&v1[OBJC_IVAR____TtC8AppStore17ReviewSummaryView_backgroundView];
  [v17 bounds];
  [v29 setFrame:?];
  return (*(v31 + 8))(v13, v27);
}

uint64_t type metadata accessor for ReviewSummaryView(uint64_t a1)
{
  result = qword_100991898;
  if (!qword_100991898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1006A17BC(uint64_t a1, __n128 a2)
{
  sub_1006A1874(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1006A1874(uint64_t a1, __n128 a2)
{
  if (!qword_1009918A8)
  {
    type metadata accessor for ReviewSummary.SubtitleArtworkAlignment();
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &qword_1009918A8);
    }
  }
}

uint64_t sub_1006A1914(uint64_t a1, int a2, uint64_t a3)
{
  v73 = a3;
  LODWORD(v74) = a2;
  v54 = sub_10002849C(&qword_1009918B8, &unk_1007DD2E0);
  __chkstk_darwin(v54);
  v78 = &v54 - v3;
  v72 = sub_10002849C(&qword_1009918C0, "̲\a");
  __chkstk_darwin(v72);
  v79 = &v54 - v4;
  v76 = type metadata accessor for AttributedString.Runs.Index();
  v5 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for AttributedString.Runs.Run();
  v7 = *(v71 - 8);
  __chkstk_darwin(v71);
  v67 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributedString.Runs();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_1009918C8, &qword_1007DD2F0);
  __chkstk_darwin(v13);
  v15 = &v54 - v14;
  v16 = type metadata accessor for FontUseCase();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v66 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v63 = &v54 - v20;
  v21 = type metadata accessor for AttributedString();
  __chkstk_darwin(v21);
  v57 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v23);
  v58 = v25;
  v26 = *(v25 + 16);
  v77 = &v54 - v27;
  v59 = v28;
  v56 = v25 + 16;
  v55 = v26;
  v26(v24);
  v61 = v16;
  v60 = v17;
  if (v74)
  {
    if (qword_10096DFB0 != -1)
    {
      swift_once();
    }

    v29 = sub_1000056A8(v16, qword_1009D0E90);
    v30 = *(v17 + 16);
    v30(v63, v29, v16);
    if (qword_10096DFB8 != -1)
    {
      swift_once();
    }

    v31 = qword_1009D0EA8;
  }

  else
  {
    if (qword_10096DFA0 != -1)
    {
      swift_once();
    }

    v32 = sub_1000056A8(v16, qword_1009D0E60);
    v30 = *(v17 + 16);
    v30(v63, v32, v16);
    if (qword_10096DFA8 != -1)
    {
      swift_once();
    }

    v31 = qword_1009D0E78;
  }

  v33 = sub_1000056A8(v16, v31);
  v30(v66, v33, v16);
  AttributedString.runs.getter();
  (*(v10 + 16))(v15, v12, v9);
  sub_1006A29A0(&qword_1009918D0, &type metadata accessor for AttributedString.Runs, &protocol conformance descriptor for AttributedString.Runs);
  dispatch thunk of Collection.startIndex.getter();
  (*(v10 + 8))(v12, v9);
  v74 = (v5 + 8);
  v68 = (v7 + 8);
  v69 = (v7 + 16);
  v64 = enum case for JetFontAttribute.Value.reviewSummaryTitle(_:);
  v62 = enum case for JetFontAttribute.Value.reviewSummaryText(_:);
  v70 = v9;
  v65 = v15;
  while (1)
  {
    while (1)
    {
      v36 = v75;
      dispatch thunk of Collection.endIndex.getter();
      sub_1006A29A0(&qword_1009918D8, &type metadata accessor for AttributedString.Runs.Index, &protocol conformance descriptor for AttributedString.Runs.Index);
      v37 = v76;
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v74)(v36, v37);
      if (v38)
      {
        sub_10002B894(v15, &qword_1009918C8, &qword_1007DD2F0);
        sub_100005744(0, &unk_100984040, NSAttributedString_ptr);
        v48 = v77;
        v49 = v59;
        (v55)(v57, v77, v59);
        v50 = NSAttributedString.init(_:)();
        v51 = *(v60 + 8);
        v52 = v61;
        v51(v66, v61);
        v51(v63, v52);
        (*(v58 + 8))(v48, v49);
        return v50;
      }

      v39 = dispatch thunk of Collection.subscript.read();
      v40 = v67;
      v41 = v71;
      (*v69)(v67);
      v39(v82, 0);
      dispatch thunk of Collection.formIndex(after:)();
      AttributedString.Runs.Run.range.getter();
      type metadata accessor for JetFontAttribute();
      sub_1006A29A0(&unk_1009918E0, &type metadata accessor for JetFontAttribute, &protocol conformance descriptor for JetFontAttribute);
      v42 = v78;
      AttributedString.Runs.Run.subscript.getter();
      (*v68)(v40, v41);
      v43 = type metadata accessor for JetFontAttribute.Value();
      v44 = *(v43 - 8);
      if ((*(v44 + 48))(v42, 1, v43) != 1)
      {
        break;
      }

LABEL_14:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_100005744(0, &qword_1009730E0, UIFont_ptr);
      v81 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
      sub_100097060(&qword_1009918F0, &qword_1009918C0, "̲\a", &protocol conformance descriptor for Range<A>);
      v34 = AttributedString.subscript.modify();
      type metadata accessor for AttributeScopes.UIKitAttributes();
      sub_1006A29A0(&qword_1009918F8, &type metadata accessor for AttributeScopes.UIKitAttributes, &protocol conformance descriptor for AttributeScopes.UIKitAttributes);
      v35 = AttributedSubstring.subscript.modify();
      sub_10002849C(&unk_100991900, &qword_1007DD358);
      sub_1001469E0();
      ScopedAttributeContainer.subscript.setter();
      v35(v80, 0);

      v34(v82, 0);
      v15 = v65;
      sub_10002B894(v79, &qword_1009918C0, "̲\a");
    }

    v45 = (*(v44 + 88))(v78, v43);
    if (v45 != v64)
    {
      break;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_100005744(0, &qword_1009730E0, UIFont_ptr);
    v81 = static UIFont.preferredFont(forUseWith:compatibleWith:)();
    sub_100097060(&qword_1009918F0, &qword_1009918C0, "̲\a", &protocol conformance descriptor for Range<A>);
    v46 = AttributedString.subscript.modify();
    type metadata accessor for AttributeScopes.UIKitAttributes();
    sub_1006A29A0(&qword_1009918F8, &type metadata accessor for AttributeScopes.UIKitAttributes, &protocol conformance descriptor for AttributeScopes.UIKitAttributes);
    v47 = AttributedSubstring.subscript.modify();
    sub_10002849C(&unk_100991900, &qword_1007DD358);
    sub_1001469E0();
    ScopedAttributeContainer.subscript.setter();
    v47(v80, 0);

    v46(v82, 0);
    sub_10002B894(v79, &qword_1009918C0, "̲\a");
  }

  if (v45 == v62)
  {
    goto LABEL_14;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_1006A25DC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for ReviewSummary.SubtitleArtworkAlignment();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    return 0;
  }

  v12 = objc_allocWithZone(NSMutableAttributedString);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithString:v13];

  if (!a4)
  {
    return v14;
  }

  sub_100005744(0, &qword_1009870A0, UIImageSymbolConfiguration_ptr);

  v15 = static UIImageSymbolConfiguration.configuration(textStyle:weight:scale:)();
  if (dispatch thunk of Artwork.isSystemImage.getter())
  {
    v16 = static SystemImage.load(artwork:with:includePrivateImages:)();
  }

  else
  {
    if ((dispatch thunk of Artwork.isBundleImage.getter() & 1) == 0)
    {
LABEL_14:

      goto LABEL_15;
    }

    v16 = sub_100330100(a4, v15);
  }

  v17 = v16;

  if (!v17)
  {
LABEL_15:

    return v14;
  }

  v15 = [objc_allocWithZone(NSTextAttachment) init];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v18 = static UIColor.secondaryText.getter();
  v19 = [v17 imageWithTintColor:v18];

  [v15 setImage:v19];
  (*(v9 + 16))(v11, a5, v8);
  v20 = (*(v9 + 88))(v11, v8);
  if (v20 == enum case for ReviewSummary.SubtitleArtworkAlignment.leading(_:))
  {
    v21 = objc_allocWithZone(NSAttributedString);
    v22 = String._bridgeToObjectiveC()();
    v23 = [v21 initWithString:v22];

    [v14 insertAttributedString:v23 atIndex:0];
    v24 = [objc_opt_self() attributedStringWithAttachment:v15];
    [v14 insertAttributedString:v24 atIndex:0];
LABEL_13:

    goto LABEL_14;
  }

  if (v20 == enum case for ReviewSummary.SubtitleArtworkAlignment.trailing(_:))
  {
    v25 = objc_allocWithZone(NSAttributedString);
    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 initWithString:v26];

    [v14 appendAttributedString:v27];
    v24 = [objc_opt_self() attributedStringWithAttachment:v15];
    [v14 appendAttributedString:v24];
    goto LABEL_13;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A29A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006A29E8()
{
  v1 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v1 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = type metadata accessor for FontUseCase();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_backgroundView;
  *(v0 + v11) = [objc_allocWithZone(UIView) init];
  v25 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_bodyLabel;
  v26 = v0;
  if (qword_10096DE18 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v7, qword_1009D09C8);
  v13 = *(v8 + 16);
  v13(v10, v12, v7);
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = objc_allocWithZone(type metadata accessor for ExpandableTextView());
  v16 = v14;
  v17 = sub_10059F344(v16, 0.0, 0.0, 0.0, 0.0);
  v13(v6, v10, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_100031660(v6, v3, &qword_100972ED0, &unk_1007B17B0);
  v18 = v17;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  sub_10002B894(v6, &qword_100972ED0, &unk_1007B17B0);
  (*(v8 + 8))(v10, v7);

  v19 = v26;
  *(v26 + v25) = v18;
  v20 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleLabel;
  type metadata accessor for DynamicTypeLabel();
  *(v19 + v20) = DynamicTypeLabel.__allocating_init(frame:)();
  v21 = (v19 + OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitle);
  *v21 = 0;
  v21[1] = 0;
  *(v19 + OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleArtwork) = 0;
  v22 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_subtitleArtworkAlignment;
  v23 = type metadata accessor for ReviewSummary.SubtitleArtworkAlignment();
  (*(*(v23 - 8) + 56))(v19 + v22, 1, 1, v23);
  v24 = OBJC_IVAR____TtC8AppStore17ReviewSummaryView_previewContainer;
  *(v19 + v24) = [objc_allocWithZone(UIView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1006A2DD0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = type metadata accessor for Artwork.Style();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InstallPageInstallingViewLayout.Metrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = InAppPurchaseInstallPage.parentLockup.getter();
  if (v12)
  {
    v26 = v5;
    v27 = v12;
    if (Lockup.icon.getter())
    {
      v25[1] = a2;
      v13 = [v2 traitCollection];
      sub_1004975A4(v11);

      InstallPageInstallingViewLayout.Metrics.iconSize.getter();
      (*(v9 + 8))(v11, v8);
      Artwork.style.getter();
      Artwork.Style.iconWidth(fromHeight:)();
      (*(v26 + 8))(v7, v4);
      v14 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_iconView];
      [v14 contentMode];
      Artwork.config(_:mode:prefersLayeredImage:)();
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v14 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100028BB8();
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      type metadata accessor for ArtworkLoader();
      type metadata accessor for BaseObjectGraph();
      inject<A, B>(_:from:)();
      v29 = 0;
      memset(v28, 0, sizeof(v28));
      swift_allocObject();
      swift_unknownObjectWeakInit();

      ArtworkLoader.fetchArtwork(using:closestMatch:handlerKey:completionHandler:)();

      sub_1000C36CC(v28);
    }

    v15 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_titleLabel];
    Lockup.title.getter();
    if (v16)
    {
      v17 = String._bridgeToObjectiveC()();
    }

    else
    {
      v17 = 0;
    }

    [v15 setText:v17];

    v18 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_subtitleLabel];
    Lockup.developerTagline.getter();
    if (v19)
    {
      v20 = String._bridgeToObjectiveC()();
    }

    else
    {
      v20 = 0;
    }

    [v18 setText:v20];

    Lockup.ageRating.getter();
    if (v21)
    {
      v22 = *&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_ageRatingView];
      v23 = *&v22[OBJC_IVAR____TtC8AppStore18AgeRatingBadgeView_ageLabel];
      v24 = String._bridgeToObjectiveC()();
      [v23 setText:v24];

      [v22 setNeedsLayout];
      [v22 setNeedsDisplay];

      [v22 setHidden:0];
    }

    else
    {
      [*&v2[OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_ageRatingView] setHidden:1];
    }

    [v2 setNeedsLayout];
  }
}

void sub_1006A326C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + OBJC_IVAR____TtC8AppStore30InstallPageInstallingOfferView_iconView);

    v9 = a1;
    ArtworkView.image.setter();
  }
}

uint64_t sub_1006A32FC(__n128 a1)
{
  v1 = type metadata accessor for ProductReviewCustomLayout.Metrics();
  sub_100005644(v1, qword_1009D3440);
  sub_1000056A8(v1, qword_1009D3440);
  return ProductReviewCustomLayout.Metrics.init(horizontalContentPadding:verticalContentPadding:ratingsTopSpace:dateAuthorLeadingPadding:dateAuthorTopPadding:ratingsAccessibilityTopPadding:dateAccessibilityTopPadding:bodyTopPadding:responseTitleTopPadding:responseTitleAccessibilityTopPadding:responseDateAccessibilityTopPadding:responseBodyTopPadding:)();
}

UIColor sub_1006A3414()
{
  sub_100028BB8();
  v0 = objc_opt_self();
  result.super.isa = UIColor.init(light:dark:)([v0 systemBackgroundColor], objc_msgSend(v0, "secondarySystemBackgroundColor")).super.isa;
  qword_1009D3458 = result.super.isa;
  return result;
}

uint64_t sub_1006A34B0()
{
  v0 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_100005644(v0, qword_1009D3468);
  sub_1000056A8(v0, qword_1009D3468);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(accessibleLayoutValue:regularLayoutValue:)();
}

char *sub_1006A3548(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v312 = type metadata accessor for AutomationSemantics();
  v310 = *(v312 - 8);
  __chkstk_darwin(v312);
  v306 = &v283 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CornerStyle();
  v294 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v283 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v14 - 8);
  v292 = &v283 - v15;
  v16 = type metadata accessor for FontUseCase();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v303 = &v283 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DirectionalTextAlignment();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v283 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v23 - 8);
  v302 = &v283 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v283 - v26;
  v28 = OBJC_IVAR____TtC8AppStore17ProductReviewView_titleLabel;
  if (qword_10096DF38 != -1)
  {
    swift_once();
  }

  v293 = v13;
  v295 = v11;
  v29 = sub_1000056A8(v16, qword_1009D0D28);
  v30 = *(v17 + 16);
  v311 = (v17 + 16);
  v291 = v30;
  (v30)(v27, v29, v16);
  v305 = v17;
  v31 = *(v17 + 56);
  v290 = v16;
  v309 = (v17 + 56);
  v307 = v31;
  (v31)(v27, 0, 1, v16);
  v32 = *(v20 + 104);
  v299 = enum case for DirectionalTextAlignment.none(_:);
  v308 = v19;
  v301 = v20 + 104;
  v297 = v32;
  (v32)(v22);
  v33 = v22;
  v34 = type metadata accessor for DynamicTypeLabel();
  v35 = objc_allocWithZone(v34);
  v298 = v33;
  *(v5 + v28) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v36 = type metadata accessor for RatingView();
  v37 = objc_allocWithZone(v36);
  *&v37[OBJC_IVAR____TtC8AppStore10RatingView_rating] = 0;
  *&v37[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = 0;
  v38 = &v37[OBJC_IVAR____TtC8AppStore10RatingView_starPadding];
  *v38 = 0;
  v38[8] = 1;
  *&v37[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars] = 5;
  if (qword_10096DAE8 != -1)
  {
    swift_once();
  }

  v39 = qword_100982C88;
  *&v37[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = qword_100982C88;
  v37[OBJC_IVAR____TtC8AppStore10RatingView_starSize] = 1;
  *v38 = 0x4008000000000000;
  v38[8] = 0;
  v37[OBJC_IVAR____TtC8AppStore10RatingView_useCase] = 1;
  v40 = type metadata accessor for StarRow();
  v41 = objc_allocWithZone(v40);
  v42 = v39;
  *&v37[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView] = sub_1003A533C(5, 1, 1, 0x4008000000000000, 0, 0, 1);
  v37[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = 0;
  v43 = objc_allocWithZone(v40);
  *&v37[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView] = sub_1003A533C(5, 0, 1, 0x4008000000000000, 0, 0, 1);
  v318.receiver = v37;
  v318.super_class = v36;
  v44 = objc_msgSendSuper2(&v318, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003A2F78();
  v45 = OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView;
  v46 = *&v44[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView];
  v47 = *&v46[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
  *&v46[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating] = *&v44[OBJC_IVAR____TtC8AppStore10RatingView_rating];
  v48 = v46;
  sub_1003A3A64(v47);

  if (*&v44[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView])
  {
    [v44 addSubview:?];
  }

  v304 = v34;
  v49 = OBJC_IVAR____TtC8AppStore17ProductReviewView_ratingView;
  [v44 addSubview:*&v44[v45]];

  *(v5 + v49) = v44;
  v300 = OBJC_IVAR____TtC8AppStore17ProductReviewView_dateLabel;
  v50 = v308;
  v51 = v291;
  if (qword_10096DF50 != -1)
  {
    swift_once();
  }

  v52 = v290;
  v289 = sub_1000056A8(v290, qword_1009D0D70);
  v51(v27);
  (v307)(v27, 0, 1, v52);
  v53 = v298;
  v54 = v299;
  v55 = v50;
  v56 = v297;
  v297(v298, v299, v55);
  v57 = v304;
  v58 = objc_allocWithZone(v304);
  *&v300[v5] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v300 = OBJC_IVAR____TtC8AppStore17ProductReviewView_authorLabel;
  if (qword_10096DF58 != -1)
  {
    swift_once();
  }

  v59 = sub_1000056A8(v52, qword_1009D0D88);
  (v51)(v27, v59, v52);
  (v307)(v27, 0, 1, v52);
  v56(v53, v54, v308);
  v60 = objc_allocWithZone(v57);
  *&v300[v5] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v61 = v51;
  v62 = OBJC_IVAR____TtC8AppStore17ProductReviewView_dateAuthorLabel;
  if (qword_10096DF60 != -1)
  {
    swift_once();
  }

  v63 = sub_1000056A8(v52, qword_1009D0DA0);
  v61(v27, v63, v52);
  (v307)(v27, 0, 1, v52);
  v56(v53, v54, v308);
  v64 = objc_allocWithZone(v57);
  v65 = v61;
  *(v5 + v62) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v284 = OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel;
  v285 = v5;
  if (qword_10096DF48 != -1)
  {
    swift_once();
  }

  v66 = sub_1000056A8(v52, qword_1009D0D58);
  v67 = v303;
  v288 = v66;
  (v61)(v303);
  v300 = objc_opt_self();
  v68 = [v300 clearColor];
  v287 = type metadata accessor for ExpandableTextView();
  v69 = objc_allocWithZone(v287);
  v70 = v68;
  v71 = sub_10059F344(v70, 0.0, 0.0, 0.0, 0.0);
  v65(v27, v67, v52);
  v72 = v307;
  v73 = v65;
  (v307)(v27, 0, 1, v52);
  sub_1003DB684(v27, v302);
  v74 = v71;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  sub_10002B894(v27, &qword_100972ED0, &unk_1007B17B0);
  v75 = *(v305 + 8);
  v305 += 8;
  v286 = v75;
  v75(v67, v52);

  v76 = v285;
  *&v285[v284] = v74;
  v284 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseTitleLabel;
  v77 = v65;
  v78 = v52;
  v79 = v76;
  if (qword_10096DF40 != -1)
  {
    swift_once();
  }

  v80 = sub_1000056A8(v78, qword_1009D0D40);
  v73(v27, v80, v78);
  v72(v27, 0, 1, v78);
  v81 = v298;
  v82 = v299;
  v83 = v297;
  v297(v298, v299, v308);
  v84 = objc_allocWithZone(v304);
  *&v79[v284] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v284 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseDateLabel;
  v77(v27, v289, v78);
  v72(v27, 0, 1, v78);
  v83(v81, v82, v308);
  v85 = objc_allocWithZone(v304);
  *&v79[v284] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v86 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel;
  v87 = v303;
  v88 = v77;
  v77(v303, v288, v78);
  v89 = [v300 clearColor];
  v90 = objc_allocWithZone(v287);
  v91 = v89;
  v92 = sub_10059F344(v91, 0.0, 0.0, 0.0, 0.0);
  v88(v27, v87, v78);
  (v307)(v27, 0, 1, v78);
  sub_1003DB684(v27, v302);
  v93 = v92;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  sub_10002B894(v27, &qword_100972ED0, &unk_1007B17B0);
  v286(v87, v78);

  *&v79[v86] = v93;
  v94 = OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView;
  type metadata accessor for ShadowView();
  *&v79[v94] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v95 = OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView;
  type metadata accessor for RoundedCornerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v79[v95] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v97 = OBJC_IVAR____TtC8AppStore17ProductReviewView_focusBackgroundView;
  *&v79[v97] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v98 = OBJC_IVAR____TtC8AppStore17ProductReviewView_cardContentView;
  *&v79[v98] = [objc_allocWithZone(UIView) init];
  v99 = &v79[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapHandler];
  *v99 = 0;
  v99[1] = 0;
  v100 = &v79[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapHandler];
  *v100 = 0;
  v100[1] = 0;
  v101 = OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapGestureRecognizer;
  *&v79[v101] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v102 = OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapGestureRecognizer;
  *&v79[v102] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v79[OBJC_IVAR____TtC8AppStore17ProductReviewView_isFlowPreviewingDestination] = 0;
  v79[OBJC_IVAR____TtC8AppStore17ProductReviewView_hasResponse] = 0;
  v79[OBJC_IVAR____TtC8AppStore17ProductReviewView_isReviewExpanded] = 1;
  v79[OBJC_IVAR____TtC8AppStore17ProductReviewView_isResponseExpanded] = 1;
  v79[OBJC_IVAR____TtC8AppStore17ProductReviewView_shouldHandleTextSelection] = 1;
  v103 = &v79[OBJC_IVAR____TtC8AppStore17ProductReviewView_actionHandler];
  v104 = type metadata accessor for ProductReviewView();
  *v103 = 0;
  v103[1] = 0;
  v317.receiver = v79;
  v317.super_class = v104;
  v105 = objc_msgSendSuper2(&v317, "initWithFrame:", a1, a2, a3, a4);
  v106 = [v105 layer];
  [v106 setCornerRadius:20.0];

  v107 = OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView;
  v108 = qword_10096DA70;
  v109 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView);
  if (v108 != -1)
  {
    swift_once();
  }

  v110 = type metadata accessor for Shadow();
  v111 = sub_1000056A8(v110, qword_1009CFDB0);
  v112 = *(v110 - 8);
  v113 = v292;
  (*(v112 + 16))(v292, v111, v110);
  (*(v112 + 56))(v113, 0, 1, v110);
  dispatch thunk of ShadowView.shadow.setter();

  v114 = *(v105 + v107);
  v115 = v294;
  v116 = v293;
  v117 = enum case for CornerStyle.continuous(_:);
  v118 = v295;
  v311 = *(v294 + 104);
  v311(v293);
  v119 = v114;
  dispatch thunk of ShadowView.setCorner(radius:style:)();

  v309 = *(v115 + 8);
  v309(v116, v118);
  [v105 addSubview:*(v105 + v107)];
  v120 = OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView;
  v121 = qword_10096ED80;
  v122 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView);
  if (v121 != -1)
  {
    swift_once();
  }

  v123 = qword_1009D3458;
  [v122 setBackgroundColor:qword_1009D3458];

  v124 = *(v105 + v120);
  (v311)(v116, v117, v118);
  v125 = v124;
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();

  v309(v116, v118);
  [v105 addSubview:*(v105 + v120)];
  v126 = OBJC_IVAR____TtC8AppStore17ProductReviewView_cardContentView;
  [*(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_cardContentView) setBackgroundColor:v123];
  [*(v105 + v126) _setContinuousCornerRadius:20.0];
  [v105 addSubview:*(v105 + v126)];
  v127 = OBJC_IVAR____TtC8AppStore17ProductReviewView_focusBackgroundView;
  v128 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_focusBackgroundView);
  v129 = [v300 systemBackgroundColor];
  [v128 setBackgroundColor:v129];

  [*(v105 + v127) setAlpha:0.0];
  v130 = *(v105 + v127);
  (v311)(v116, v117, v118);
  v131 = v130;
  dispatch thunk of RoundedCornerView.setCorner(radius:style:)();

  v309(v116, v118);
  [*(v105 + v126) addSubview:*(v105 + v127)];
  v132 = OBJC_IVAR____TtC8AppStore17ProductReviewView_titleLabel;
  v133 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_titleLabel);
  v315 = 0u;
  v316 = 0u;
  v313 = 0u;
  v314 = 0u;
  v134 = v133;
  v135 = v306;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v313, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v315, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v136 = v310 + 8;
  v137 = *(v310 + 8);
  v137(v135, v312);
  [*(v105 + v126) addSubview:*(v105 + v132)];
  v138 = OBJC_IVAR____TtC8AppStore17ProductReviewView_dateLabel;
  v139 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_dateLabel);
  v140 = sub_100028BB8();
  v141 = v139;
  v142 = static UIColor.secondaryText.getter();
  [v141 setTextColor:v142];

  v143 = *(v105 + v138);
  v315 = 0u;
  v316 = 0u;
  v313 = 0u;
  v314 = 0u;
  v144 = v143;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v313, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v315, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v309 = v137;
  v310 = v136;
  v137(v135, v312);
  v311 = v126;
  [*(v105 + v126) addSubview:*(v105 + v138)];
  v145 = OBJC_IVAR____TtC8AppStore17ProductReviewView_ratingView;
  v146 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_ratingView);
  v147 = static UIColor.primaryText.getter();
  v148 = *&v146[OBJC_IVAR____TtC8AppStore10RatingView_starColor];
  *&v146[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = v147;
  v149 = v147;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_1003A2F78();
  }

  v150 = *(v105 + v145);
  v151 = static UIColor.tertiaryText.getter();
  v152 = static UIColor.primaryText.getter();
  v153 = static UIColor.tertiaryText.getter();
  v154 = static UIColor.primaryText.getter();
  v155.super.isa = UIColor.init(light:lightHighContrast:dark:darkHighContrast:)(v151, v152, v153, v154).super.isa;
  isa = v155.super.isa;
  v157 = *&v150[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor];
  *&v150[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = v155;
  if (v157)
  {
    v158 = v155.super.isa;
    v159 = v157;
    v160 = static NSObject.== infix(_:_:)();

    if (v160)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v161 = v155.super.isa;
    v159 = 0;
  }

  sub_1003A2F78();
  v158 = isa;
LABEL_28:

  v162 = *(v105 + v145);
  v163 = [v105 traitCollection];

  v164 = [v163 accessibilityContrast];
  v165 = v164 == 0;
  v166 = v162[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars];
  v162[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = v165;
  if ((v165 ^ v166))
  {
    v167 = *&v162[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView];
    if (v167)
    {
      v168 = *(v167 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled);
      *(v167 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled) = v165;
      if (((v164 == 0) ^ v168))
      {
        sub_1003A450C();
      }
    }
  }

  v308 = v140;

  v169 = qword_10096ED88;
  v170 = *(v105 + v145);
  if (v169 != -1)
  {
    swift_once();
  }

  [v170 setMaximumContentSizeCategory:qword_1009D3460];

  v171 = *(v105 + v145);
  v315 = 0u;
  v316 = 0u;
  v313 = 0u;
  v314 = 0u;
  v172 = v171;
  v173 = v306;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v313, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v315, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v174 = v312;
  v309(v173, v312);
  v175 = v311;
  [*(v311 + v105) addSubview:*(v105 + v145)];
  v176 = OBJC_IVAR____TtC8AppStore17ProductReviewView_dateAuthorLabel;
  v177 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_dateAuthorLabel);
  v178 = static UIColor.secondaryText.getter();
  [v177 setTextColor:v178];

  v179 = *(v105 + v176);
  v315 = 0u;
  v316 = 0u;
  v313 = 0u;
  v314 = 0u;
  v180 = v179;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v313, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v315, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v181 = v309;
  v309(v173, v174);
  [*(v175 + v105) addSubview:*(v105 + v176)];
  v182 = OBJC_IVAR____TtC8AppStore17ProductReviewView_authorLabel;
  v183 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_authorLabel);
  v184 = static UIColor.secondaryText.getter();
  [v183 setTextColor:v184];

  v185 = *(v105 + v182);
  v315 = 0u;
  v316 = 0u;
  v313 = 0u;
  v314 = 0u;
  v186 = v185;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v313, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v315, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v181(v173, v312);
  [*(v175 + v105) addSubview:*(v105 + v182)];
  v187 = OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel;
  v188 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel);
  v189 = static UIColor.secondaryText.getter();
  [*&v188[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel] setTextColor:v189];

  v190 = *(v105 + v187);
  if (*(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_hasResponse))
  {
    v191 = 2;
  }

  else
  {
    v191 = 6;
  }

  v192 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines;
  v193 = *&v190[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  *&v190[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines] = v191;
  v194 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  if (v190[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed])
  {
    v195 = *&v190[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
    v196 = v190;
    [v195 setNumberOfLines:v191];
    if (*&v190[v192] == v193)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v197 = v190;
    if (v191 == v193)
    {
      goto LABEL_43;
    }
  }

  if (v190[v194])
  {
    sub_1005A0320();
  }

LABEL_43:

  v198 = *(v105 + v187);
  v199 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_isReviewExpanded);
  v200 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  v201 = v198[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
  v198[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = v199 ^ 1;
  if (v199)
  {
    v202 = 0;
  }

  else
  {
    v202 = *&v198[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  }

  v203 = *&v198[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
  v204 = v198;
  [v203 setNumberOfLines:v202];
  if (v201 != v198[v200])
  {
    sub_1005A0320();
  }

  [*(*(v105 + v187) + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setLineBreakMode:4];
  [*(*(v105 + v187) + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setTextAlignment:4];
  v205 = *(v105 + v187);
  v205[OBJC_IVAR____TtC8AppStore18ExpandableTextView_hasMoreButton] = 0;
  v206 = v205;
  sub_1005A0320();

  [*(v105 + v187) setUserInteractionEnabled:1];
  v207 = *(v105 + v187);
  v315 = 0u;
  v316 = 0u;
  v313 = 0u;
  v314 = 0u;
  v208 = v207;
  v209 = v306;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v313, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v315, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v309(v209, v312);
  v210 = OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapGestureRecognizer;
  v211 = *(v105 + OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapGestureRecognizer);
  v212 = v105;
  [v211 addTarget:v212 action:"moreReviewFrom:"];
  [*(v105 + v210) setDelegate:v212];
  v213 = *(v105 + v187);
  v305 = v210;
  [v213 addGestureRecognizer:*(v105 + v210)];
  v214 = *(v105 + v187);
  v215 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v216 = &v214[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  v217 = v187;
  v218 = *&v214[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  v219 = *&v214[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler + 8];
  *v216 = sub_1006A7C5C;
  v216[1] = v215;
  swift_retain_n();
  v220 = v214;
  sub_10001F63C(v218, v219);
  v221 = *&v220[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton];

  [v221 setUserInteractionEnabled:1];

  v222 = *(v311 + v105);
  v307 = v217;
  [v222 addSubview:*&v217[v105]];
  v223 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseTitleLabel;
  v224 = *&v212[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseTitleLabel];
  v225._object = 0x800000010081C190;
  v225._countAndFlagsBits = 0xD000000000000012;
  v226._countAndFlagsBits = 0;
  v226._object = 0xE000000000000000;
  localizedString(_:comment:)(v225, v226);
  v227 = String._bridgeToObjectiveC()();

  [v224 setText:v227];

  [*&v212[v223] setHidden:1];
  v228 = *&v212[v223];
  v315 = 0u;
  v316 = 0u;
  v313 = 0u;
  v314 = 0u;
  v229 = v228;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v313, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v315, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v230 = v312;
  v231 = v309;
  v309(v209, v312);
  [*(v311 + v105) addSubview:*&v212[v223]];
  v232 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseDateLabel;
  v233 = *&v212[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseDateLabel];
  v234 = static UIColor.secondaryText.getter();
  [v233 setTextColor:v234];

  [*&v212[v232] setHidden:1];
  v235 = *&v212[v232];
  v315 = 0u;
  v316 = 0u;
  v313 = 0u;
  v314 = 0u;
  v236 = v235;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v313, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v315, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v231(v209, v230);
  [*(v311 + v105) addSubview:*&v212[v232]];
  v237 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel;
  v238 = *&v212[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel];
  v239 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines;
  v240 = *&v238[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  *&v238[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines] = 2;
  v241 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  if (v238[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] == 1)
  {
    v242 = *&v238[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
    v243 = v238;
    [v242 setNumberOfLines:2];
    if (*&v238[v239] == v240)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v244 = v238;
    if (v240 == 2)
    {
      goto LABEL_54;
    }
  }

  if (v238[v241])
  {
    sub_1005A0320();
  }

LABEL_54:

  v245 = *&v212[v237];
  v246 = v212[OBJC_IVAR____TtC8AppStore17ProductReviewView_isResponseExpanded];
  v247 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  v248 = v245[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed];
  v245[OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed] = v246 ^ 1;
  if (v246)
  {
    v249 = 0;
  }

  else
  {
    v249 = *&v245[OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines];
  }

  v250 = *&v245[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel];
  v251 = v245;
  [v250 setNumberOfLines:v249];
  if (v248 != v245[v247])
  {
    sub_1005A0320();
  }

  [*(*&v212[v237] + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setLineBreakMode:4];
  v252 = *&v212[v237];
  v252[OBJC_IVAR____TtC8AppStore18ExpandableTextView_hasMoreButton] = 0;
  v253 = v252;
  sub_1005A0320();

  v254 = *&v212[v237];
  v255 = static UIColor.secondaryText.getter();
  [*&v254[OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel] setTextColor:v255];

  [*&v212[v237] setUserInteractionEnabled:1];
  [*&v212[v237] setHidden:1];
  v256 = OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapGestureRecognizer;
  v257 = *&v212[OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapGestureRecognizer];
  v258 = v212;
  [v257 addTarget:v258 action:"moreResponseFrom:"];
  v259 = *&v212[v256];
  [v259 setDelegate:v258];

  [*&v212[v237] addGestureRecognizer:*&v212[v256]];
  v260 = *&v212[v237];
  v315 = 0u;
  v316 = 0u;
  v313 = 0u;
  v314 = 0u;
  v261 = v260;
  v262 = v306;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v313, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v315, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v309(v262, v312);
  v263 = *&v212[v237];
  v264 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v265 = &v263[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  v266 = *&v263[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  v267 = *&v263[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler + 8];
  *v265 = sub_1006A7C80;
  v265[1] = v264;
  swift_retain_n();
  v268 = v263;
  sub_10001F63C(v266, v267);
  v269 = *&v268[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton];

  [v269 setUserInteractionEnabled:1];

  [*(v311 + v105) addSubview:*&v212[v237]];
  v270 = [objc_allocWithZone(UILongPressGestureRecognizer) initWithTarget:v258 action:"stateChangedFor:"];

  [v258 addGestureRecognizer:v270];
  [*&v212[v256] setCancelsTouchesInView:0];
  [*(v105 + v305) setCancelsTouchesInView:0];
  v271 = *&v212[v237];
  v272 = &v271[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  v273 = *&v271[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  v274 = *&v271[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler + 8];
  *v272 = 0;
  *(v272 + 1) = 0;
  v275 = v271;
  sub_10001F63C(v273, v274);
  [*&v275[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setUserInteractionEnabled:0];

  v276 = *&v307[v105];
  v277 = &v276[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  v278 = *&v276[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler];
  v279 = *&v276[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreTapHandler + 8];
  *v277 = 0;
  *(v277 + 1) = 0;
  v280 = v276;
  sub_10001F63C(v278, v279);
  [*&v280[OBJC_IVAR____TtC8AppStore18ExpandableTextView_moreButton] setUserInteractionEnabled:0];

  sub_1006A5BE8();
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v281 = swift_allocObject();
  *(v281 + 16) = xmmword_1007B1890;
  *(v281 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v281 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(v281 + 48) = type metadata accessor for UITraitAccessibilityContrast();
  *(v281 + 56) = &protocol witness table for UITraitAccessibilityContrast;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v258;
}

void sub_1006A59E4(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = Strong + *a2;
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 8);

      v6(v8);
      sub_10001F63C(v6, v7);
    }
  }
}

void sub_1006A5ABC()
{
  v1 = OBJC_IVAR____TtC8AppStore17ProductReviewView_isFlowPreviewingDestination;
  if (*(v0 + OBJC_IVAR____TtC8AppStore17ProductReviewView_isFlowPreviewingDestination))
  {
    v2 = 0.0;
  }

  else
  {
    v2 = 1.0;
  }

  [*(v0 + OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView) setAlpha:v2];
  if (*(v0 + v1))
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [*(v0 + OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView) setAlpha:v3];
  v4 = *(v0 + OBJC_IVAR____TtC8AppStore17ProductReviewView_cardContentView);
  if (*(v0 + v1) == 1)
  {
    v5 = [objc_opt_self() clearColor];
  }

  else
  {
    if (qword_10096ED80 != -1)
    {
      swift_once();
    }

    v5 = qword_1009D3458;
  }

  v6 = v5;
  [v4 setBackgroundColor:?];
}

void sub_1006A5BE8()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = UITraitCollection.prefersAccessibilityLayouts.getter();

  [*&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_dateLabel] setHidden:(v3 & 1) == 0];
  [*&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_authorLabel] setHidden:(v3 & 1) == 0];
  [*&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_dateAuthorLabel] setHidden:v3 & 1];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_ratingView];
  if (qword_10096ED90 != -1)
  {
    swift_once();
  }

  v5 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_1000056A8(v5, qword_1009D3468);
  v15 = v1;
  v6 = v1;
  Conditional.evaluate(with:)();

  v7 = v4 + OBJC_IVAR____TtC8AppStore10RatingView_starPadding;
  *v7 = v16;
  *(v7 + 8) = 0;
  sub_1003A3118(v16, 0);
  v8 = OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView;
  if (*(v4 + OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView))
  {
    sub_1003A3118(*v7, *(v7 + 8));
  }

  v9 = [v6 traitCollection];
  v10 = [v9 accessibilityContrast];

  v11 = v10 == 0;
  v12 = *(v4 + OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars);
  *(v4 + OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars) = v11;
  if (v11 != v12)
  {
    v13 = *(v4 + v8);
    if (v13)
    {
      v14 = *(v13 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled);
      *(v13 + OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_filled) = v11;
      if (((v10 == 0) ^ v14))
      {
        sub_1003A450C();
      }
    }
  }
}

id sub_1006A5DE8(uint64_t a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ProductReviewView();
  objc_msgSendSuper2(&v7, "layoutSubviews");
  sub_1006A5F10();
  v2 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView];
  [v1 bounds];
  [v2 setFrame:?];
  v3 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView];
  [v1 bounds];
  [v3 setFrame:?];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_focusBackgroundView];
  [v1 bounds];
  [v4 setFrame:?];
  v5 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_cardContentView];
  [v1 bounds];
  return [v5 setFrame:?];
}

uint64_t sub_1006A5F10()
{
  v1 = v0;
  v2 = sub_10002849C(&qword_1009964B0, qword_1007DD430);
  v39 = *(v2 - 8);
  v40 = v2;
  __chkstk_darwin(v2);
  v38 = v35 - v3;
  v4 = type metadata accessor for ProductReviewCustomLayout.Metrics();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = v35 - v9;
  v11 = type metadata accessor for ProductReviewCustomLayout();
  v36 = *(v11 - 8);
  v37 = v11;
  __chkstk_darwin(v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_isFlowPreviewingDestination];
  if (qword_10096ED78 != -1)
  {
    swift_once();
  }

  v15 = sub_1000056A8(v4, qword_1009D3440);
  (*(v5 + 16))(v7, v15, v4);
  if (v14)
  {
    v60 = &type metadata for Double;
    v61 = &protocol witness table for Double;
    v59 = 0;
    ProductReviewCustomLayout.Metrics.horizontalContentPadding.setter();
    v60 = &type metadata for Double;
    v61 = &protocol witness table for Double;
    v59 = 0x4018000000000000;
    ProductReviewCustomLayout.Metrics.verticalContentPadding.setter();
  }

  (*(v5 + 32))(v10, v7, v4);
  v16 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_titleLabel];
  v17 = type metadata accessor for DynamicTypeLabel();
  v60 = v17;
  v61 = &protocol witness table for UILabel;
  v58 = &protocol witness table for UILabel;
  v59 = v16;
  v18 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_dateLabel];
  v57 = v17;
  v55 = &protocol witness table for UILabel;
  v56 = v18;
  v35[1] = v10;
  v19 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_authorLabel];
  v54 = v17;
  v53 = v19;
  v20 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_dateAuthorLabel];
  v51 = v17;
  v52 = &protocol witness table for UILabel;
  v49 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel];
  v50 = v20;
  type metadata accessor for ExpandableTextView();
  v21 = v16;
  v22 = v18;
  v23 = v19;
  v24 = v20;
  Measurable.placeable.getter();
  v25 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseTitleLabel];
  v47 = v17;
  v48 = &protocol witness table for UILabel;
  v45 = &protocol witness table for UILabel;
  v46 = v25;
  v26 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseDateLabel];
  v44 = v17;
  v42 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel];
  v43 = v26;
  v27 = v25;
  v28 = v26;
  Measurable.placeable.getter();
  v41 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_ratingView];
  type metadata accessor for RatingView();
  Measurable.placeable.getter();
  ProductReviewCustomLayout.init(metrics:titleLabel:dateLabel:authorLabel:dateAuthorLabel:bodyLabel:responseTitleLabel:responseDateLabel:responseBodyLabel:hasResponse:ratingsView:)();
  [v1 bounds];
  v29 = [v1 traitCollection];
  sub_1006A6EE0(v30);
  v32 = v37;
  v31 = v38;
  dispatch thunk of CustomLayout.layout.getter();
  swift_getOpaqueTypeConformance2();
  v33 = v40;
  dispatch thunk of Placeable.place(at:with:)();

  (*(v39 + 8))(v31, v33);
  return (*(v36 + 8))(v13, v32);
}

id sub_1006A6404(id result)
{
  v2 = OBJC_IVAR____TtC8AppStore17ProductReviewView_hasResponse;
  v3 = v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_hasResponse];
  if (v3 != (result & 1))
  {
    [*&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseDateLabel] setHidden:v3 ^ 1u];
    [*&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseTitleLabel] setHidden:(v1[v2] & 1) == 0];
    [*&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel] setHidden:(v1[v2] & 1) == 0];
    v4 = *&v1[OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel];
    if (v1[v2])
    {
      v5 = 2;
    }

    else
    {
      v5 = 6;
    }

    v6 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines;
    v7 = *(v4 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines);
    *(v4 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines) = v5;
    v8 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
    if (*(v4 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed) == 1)
    {
      [*(v4 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setNumberOfLines:?];
      v5 = *(v4 + v6);
    }

    if (v5 != v7 && (*(v4 + v8) & 1) != 0)
    {
      sub_1005A0320();
    }

    return [v1 setNeedsLayout];
  }

  return result;
}

id sub_1006A6558()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore17ProductReviewView_titleLabel);
  v3 = OBJC_IVAR____TtC8AppStore17ProductReviewView_isReviewExpanded;
  [v2 setNumberOfLines:(*(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_isReviewExpanded) & 1) == 0];
  if (*(v1 + v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  [v2 setLineBreakMode:v4];
  v5 = 0;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel);
  v7 = *(v1 + v3);
  v8 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  v9 = *(v6 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed);
  *(v6 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed) = v7 ^ 1;
  if ((v7 & 1) == 0)
  {
    v5 = *(v6 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines);
  }

  result = [*(v6 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setNumberOfLines:v5];
  if (v9 != *(v6 + v8))
  {
    return sub_1005A0320();
  }

  return result;
}

id sub_1006A6634()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore17ProductReviewView_responseTitleLabel);
  v3 = OBJC_IVAR____TtC8AppStore17ProductReviewView_isReviewExpanded;
  [v2 setNumberOfLines:(*(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_isReviewExpanded) & 1) == 0];
  if (*(v1 + v3))
  {
    v4 = 0;
  }

  else
  {
    v4 = 4;
  }

  [v2 setLineBreakMode:v4];
  v5 = 0;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel);
  v7 = *(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_isResponseExpanded);
  v8 = OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed;
  v9 = *(v6 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed);
  *(v6 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_isCollapsed) = v7 ^ 1;
  if ((v7 & 1) == 0)
  {
    v5 = *(v6 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_collapsedNumberOfLines);
  }

  result = [*(v6 + OBJC_IVAR____TtC8AppStore18ExpandableTextView_textLabel) setNumberOfLines:v5];
  if (v9 != *(v6 + v8))
  {
    return sub_1005A0320();
  }

  return result;
}

id sub_1006A67F4(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView) setAlpha:0.0];
  v2 = *(a1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView);

  return [v2 setAlpha:0.0];
}

id sub_1006A6870(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView) setAlpha:1.0];
  [*(a1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView) setAlpha:1.0];
  v2 = *(a1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_focusBackgroundView);

  return [v2 setAlpha:0.0];
}

uint64_t sub_1006A6900(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v7 = a1;
  }

  v8 = &a1[*a4];
  v9 = *v8;
  if (*v8)
  {
    v10 = *(v8 + 1);

    v9(v11);
    sub_10001F63C(v9, v10);
  }

  return sub_10002B894(v13, &unk_1009711D0, &unk_1007B1A10);
}

id sub_1006A6A34(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProductReviewView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1006A6BE4()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_1006A6E80;
  v5[5] = v2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100007A08;
  v5[3] = &unk_1008CE798;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.5];
  _Block_release(v3);
}

void sub_1006A6D1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    v13[4] = a5;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100007A08;
    v13[3] = a6;
    v11 = _Block_copy(v13);
    v12 = v6;

    [a1 addAnimations:v11];
    _Block_release(v11);
  }
}

id sub_1006A6DE8()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView) setAlpha:1.0];
  [*(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView) setAlpha:1.0];
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_focusBackgroundView);

  return [v2 setAlpha:0.0];
}

id sub_1006A6E80()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView) setAlpha:0.0];
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView);

  return [v2 setAlpha:0.0];
}

unint64_t sub_1006A6EE0(__n128 a1)
{
  result = qword_100991A00;
  if (!qword_100991A00)
  {
    type metadata accessor for ProductReviewCustomLayout();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991A00);
  }

  return result;
}

void sub_1006A6F5C()
{
  v0 = type metadata accessor for FontUseCase();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v91 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DirectionalTextAlignment();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v7 - 8);
  v90 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v79 - v10;
  v12 = OBJC_IVAR____TtC8AppStore17ProductReviewView_titleLabel;
  if (qword_10096DF38 != -1)
  {
    swift_once();
  }

  v13 = sub_1000056A8(v0, qword_1009D0D28);
  v96 = *(v1 + 16);
  v97 = v1 + 16;
  v96(v11, v13, v0);
  v92 = v1;
  v14 = *(v1 + 56);
  v99 = v1 + 56;
  v14(v11, 0, 1, v0);
  v15 = *(v4 + 104);
  v95 = enum case for DirectionalTextAlignment.none(_:);
  v88 = v4 + 104;
  v89 = v3;
  v94 = v15;
  (v15)(v6);
  v93 = type metadata accessor for DynamicTypeLabel();
  v16 = objc_allocWithZone(v93);
  *(v98 + v12) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v17 = type metadata accessor for RatingView();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC8AppStore10RatingView_rating] = 0;
  *&v18[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarColor] = 0;
  v19 = &v18[OBJC_IVAR____TtC8AppStore10RatingView_starPadding];
  *v19 = 0;
  v19[8] = 1;
  *&v18[OBJC_IVAR____TtC8AppStore10RatingView_maxNumberOfStars] = 5;
  if (qword_10096DAE8 != -1)
  {
    swift_once();
  }

  v20 = qword_100982C88;
  *&v18[OBJC_IVAR____TtC8AppStore10RatingView_starColor] = qword_100982C88;
  v18[OBJC_IVAR____TtC8AppStore10RatingView_starSize] = 1;
  *v19 = 0x4008000000000000;
  v19[8] = 0;
  v18[OBJC_IVAR____TtC8AppStore10RatingView_useCase] = 1;
  v21 = type metadata accessor for StarRow();
  v22 = objc_allocWithZone(v21);
  v23 = v20;
  *&v18[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView] = sub_1003A533C(5, 1, 1, 0x4008000000000000, 0, 0, 1);
  v18[OBJC_IVAR____TtC8AppStore10RatingView_fillEmptyStars] = 0;
  v24 = objc_allocWithZone(v21);
  *&v18[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView] = sub_1003A533C(5, 0, 1, 0x4008000000000000, 0, 0, 1);
  v100.receiver = v18;
  v100.super_class = v17;
  v25 = objc_msgSendSuper2(&v100, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1003A2F78();
  v26 = OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView;
  v27 = *&v25[OBJC_IVAR____TtC8AppStore10RatingView_filledStarRowView];
  v28 = *&v27[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating];
  *&v27[OBJC_IVAR____TtC8AppStoreP33_4D569A3E6303747AA734C2D941AA4EED7StarRow_currentRating] = *&v25[OBJC_IVAR____TtC8AppStore10RatingView_rating];
  v29 = v27;
  sub_1003A3A64(v28);

  if (*&v25[OBJC_IVAR____TtC8AppStore10RatingView_emptyStarRowView])
  {
    [v25 addSubview:?];
  }

  v30 = OBJC_IVAR____TtC8AppStore17ProductReviewView_ratingView;
  [v25 addSubview:*&v25[v26]];

  *(v98 + v30) = v25;
  v31 = OBJC_IVAR____TtC8AppStore17ProductReviewView_dateLabel;
  v32 = v96;
  if (qword_10096DF50 != -1)
  {
    swift_once();
  }

  v84 = sub_1000056A8(v0, qword_1009D0D70);
  v32(v11);
  v14(v11, 0, 1, v0);
  v33 = v89;
  v94(v6, v95, v89);
  v34 = objc_allocWithZone(v93);
  *(v98 + v31) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v35 = OBJC_IVAR____TtC8AppStore17ProductReviewView_authorLabel;
  if (qword_10096DF58 != -1)
  {
    swift_once();
  }

  v36 = sub_1000056A8(v0, qword_1009D0D88);
  (v32)(v11, v36, v0);
  v14(v11, 0, 1, v0);
  v94(v6, v95, v33);
  v37 = objc_allocWithZone(v93);
  *(v98 + v35) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v38 = OBJC_IVAR____TtC8AppStore17ProductReviewView_dateAuthorLabel;
  if (qword_10096DF60 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v0, qword_1009D0DA0);
  (v32)(v11, v39, v0);
  v14(v11, 0, 1, v0);
  v94(v6, v95, v33);
  v40 = objc_allocWithZone(v93);
  *(v98 + v38) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v79 = OBJC_IVAR____TtC8AppStore17ProductReviewView_bodyLabel;
  if (qword_10096DF48 != -1)
  {
    swift_once();
  }

  v85 = v6;
  v41 = sub_1000056A8(v0, qword_1009D0D58);
  v42 = v91;
  v83 = v41;
  v32(v91);
  v82 = objc_opt_self();
  v43 = [v82 clearColor];
  v81 = type metadata accessor for ExpandableTextView();
  v44 = objc_allocWithZone(v81);
  v45 = v43;
  v46 = sub_10059F344(v45, 0.0, 0.0, 0.0, 0.0);
  (v32)(v11, v42, v0);
  v87 = v14;
  v14(v11, 0, 1, v0);
  sub_1003DB684(v11, v90);
  v47 = v46;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  sub_10002B894(v11, &qword_100972ED0, &unk_1007B17B0);
  v48 = *(v92 + 8);
  v92 += 8;
  v80 = v48;
  v48(v42, v0);

  v49 = v98;
  *(v98 + v79) = v47;
  v79 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseTitleLabel;
  if (qword_10096DF40 != -1)
  {
    swift_once();
  }

  v50 = sub_1000056A8(v0, qword_1009D0D40);
  v96(v11, v50, v0);
  v51 = v87;
  v87(v11, 0, 1, v0);
  v52 = v85;
  v86 = v0;
  v53 = v95;
  v54 = v89;
  v55 = v94;
  v94(v85, v95, v89);
  v56 = v93;
  v57 = objc_allocWithZone(v93);
  *(v49 + v79) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v79 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseDateLabel;
  v58 = v86;
  v96(v11, v84, v86);
  v51(v11, 0, 1, v58);
  v55(v52, v53, v54);
  v59 = objc_allocWithZone(v56);
  *(v49 + v79) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v60 = OBJC_IVAR____TtC8AppStore17ProductReviewView_responseBodyLabel;
  v61 = v91;
  v62 = v86;
  v63 = v96;
  v96(v91, v83, v86);
  v64 = [v82 clearColor];
  v65 = objc_allocWithZone(v81);
  v66 = v64;
  v67 = sub_10059F344(v66, 0.0, 0.0, 0.0, 0.0);
  v63(v11, v61, v62);
  v87(v11, 0, 1, v62);
  sub_1003DB684(v11, v90);
  v68 = v67;
  dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

  sub_10002B894(v11, &qword_100972ED0, &unk_1007B17B0);
  v80(v61, v62);

  *(v49 + v60) = v68;
  v69 = OBJC_IVAR____TtC8AppStore17ProductReviewView_shadowView;
  type metadata accessor for ShadowView();
  *(v49 + v69) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v70 = OBJC_IVAR____TtC8AppStore17ProductReviewView_roundedCornerView;
  type metadata accessor for RoundedCornerView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v49 + v70) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v72 = OBJC_IVAR____TtC8AppStore17ProductReviewView_focusBackgroundView;
  *(v49 + v72) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v73 = OBJC_IVAR____TtC8AppStore17ProductReviewView_cardContentView;
  *(v49 + v73) = [objc_allocWithZone(UIView) init];
  v74 = (v49 + OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapHandler);
  *v74 = 0;
  v74[1] = 0;
  v75 = (v49 + OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapHandler);
  *v75 = 0;
  v75[1] = 0;
  v76 = OBJC_IVAR____TtC8AppStore17ProductReviewView_moreReviewTapGestureRecognizer;
  *(v49 + v76) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v77 = OBJC_IVAR____TtC8AppStore17ProductReviewView_moreResponseTapGestureRecognizer;
  *(v49 + v77) = [objc_allocWithZone(UITapGestureRecognizer) init];
  *(v49 + OBJC_IVAR____TtC8AppStore17ProductReviewView_isFlowPreviewingDestination) = 0;
  *(v49 + OBJC_IVAR____TtC8AppStore17ProductReviewView_hasResponse) = 0;
  *(v49 + OBJC_IVAR____TtC8AppStore17ProductReviewView_isReviewExpanded) = 1;
  *(v49 + OBJC_IVAR____TtC8AppStore17ProductReviewView_isResponseExpanded) = 1;
  *(v49 + OBJC_IVAR____TtC8AppStore17ProductReviewView_shouldHandleTextSelection) = 1;
  v78 = (v49 + OBJC_IVAR____TtC8AppStore17ProductReviewView_actionHandler);
  *v78 = 0;
  v78[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_1006A7CB4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for ArcadeLockupLayout.Metrics();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FontUseCase();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v15, qword_1009D0740);
  (*(v16 + 16))(v18, v20, v15);
  if (qword_10096ED98 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v11, qword_100991A08);
  (*(v12 + 16))(v14, v21, v11);
  v22 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  *&v5[v19] = sub_1001C6E04(v18, v14, 0, 0.0, 0.0, 0.0, 0.0);
  v23 = OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_10096EDA0 != -1)
  {
    swift_once();
  }

  *&v5[v23] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_100991A20];
  swift_weakInit();
  v24 = &v5[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  *v24 = 0;
  v24[1] = 0;
  v5[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_isExpanded] = 0;
  v5[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_sizeCategory] = 7;
  v32.receiver = v5;
  v32.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v32, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v29 = v25;
  [v29 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v29 addSubview:*&v29[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_backgroundEffectView]];
  v30 = OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  [*&v29[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView] setClipsToBounds:1];
  [v29 addSubview:*&v29[v30]];

  return v29;
}

uint64_t sub_1006A80A0()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ArcadeLockupLayout.Metrics();
  sub_100005644(v4, qword_100991A08);
  v18 = sub_1000056A8(v4, qword_100991A08);
  v25[23] = &type metadata for Double;
  v25[24] = &protocol witness table for Double;
  v25[19] = &protocol witness table for Double;
  v25[20] = 0x4053800000000000;
  v25[18] = &type metadata for Double;
  v25[15] = 0x4024000000000000;
  v25[13] = &type metadata for Double;
  v25[14] = &protocol witness table for Double;
  v25[9] = &protocol witness table for Double;
  v25[10] = 0x4034000000000000;
  v25[8] = &type metadata for Double;
  v25[5] = 0x402C000000000000;
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v16 = sub_1000056A8(v5, qword_1009D0740);
  v6 = *(v5 - 8);
  v15 = *(v6 + 16);
  v17 = v6 + 16;
  v15(v3, v16, v5);
  v14 = enum case for FontSource.useCase(_:);
  v13 = v1[13];
  v13(v3);
  v7 = type metadata accessor for StaticDimension();
  v25[3] = v7;
  v25[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v25);
  v23 = v0;
  v24 = &protocol witness table for FontSource;
  v8 = sub_1000056E0(v22);
  v9 = v1[2];
  v9(v8, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10 = v1[1];
  v10(v3, v0);
  v15(v3, v16, v5);
  (v13)(v3, v14, v0);
  v23 = v7;
  v24 = &protocol witness table for StaticDimension;
  sub_1000056E0(v22);
  v20 = v0;
  v21 = &protocol witness table for FontSource;
  v11 = sub_1000056E0(v19);
  v9(v11, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  v10(v3, v0);
  v21 = &protocol witness table for Double;
  v20 = &type metadata for Double;
  v19[0] = 0x4020000000000000;
  return ArcadeLockupLayout.Metrics.init(minimumHeight:offerButtonMargin:wordmarkMargin:wordmarkTopSpace:wordmarkSpace:subtitleLeadingSpace:bottomSpace:numberOfLinesForSubtitle:shouldHorizontallyCenterSubtitleLayout:expandToFillWidth:subtitleIsHorizontallyAligned:)();
}

id sub_1006A8404()
{
  result = [objc_opt_self() effectWithStyle:9];
  qword_100991A20 = result;
  return result;
}

void sub_1006A857C()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_backgroundEffectView];
  [v0 bounds];
  [v1 setFrame:?];
  v2 = [objc_opt_self() _effectWithBlurRadius:50.0 scale:0.125];
  [v1 _setEffect:v2];

  v3 = OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  v4 = *&v0[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v4 sizeThatFits:{v5, v6}];
  v8 = v7;
  v10 = v9;

  v11 = *&v0[v3];
  LayoutMarginsAware<>.layoutFrame.getter();
  MinX = CGRectGetMinX(v18);
  LayoutMarginsAware<>.layoutFrame.getter();
  [v11 setFrame:{MinX, CGRectGetMidY(v19) + v10 * -0.5, v8, v10}];

  v13 = &v0[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock];
  swift_beginAccess();
  v14 = *v13;
  if (*v13)
  {
    v15 = *(v13 + 1);

    v14(v16);
    sub_10001F63C(v14, v15);
  }
}

void sub_1006A8774()
{
  [v0 overrideUserInterfaceStyle];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = String._bridgeToObjectiveC()();

  v2 = OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  v3 = [*(*&v0[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView] + OBJC_IVAR____TtC8AppStore16ArcadeLockupView_wordmarkView) layer];
  [v3 setCompositingFilter:v1];

  v4 = [*(*&v0[v2] + OBJC_IVAR____TtC8AppStore16ArcadeLockupView_subtitleLabel) layer];
  [v4 setCompositingFilter:v1];

  v5 = [*(*(*&v0[v2] + OBJC_IVAR____TtC8AppStore16ArcadeLockupView_offerButton) + OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel) layer];
  [v5 setCompositingFilter:v1];
}

void sub_1006A88C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24[-v5 - 8];
  v7 = type metadata accessor for ImpressionMetrics();
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
      sub_10002C0AC(a3, v24);
      sub_10002849C(&qword_100973D50, &unk_1007B3840);
      type metadata accessor for TodayCard();
      if ((swift_dynamicCast() & 1) != 0 && (v13 = TodayCard.overlay.getter(), , v13))
      {
        type metadata accessor for TodayCardArcadeLockupOverlay();
        if (swift_dynamicCastClass())
        {
          TodayCardArcadeLockupOverlay.arcadeLockup.getter();
          ArcadeLockup.impressionMetrics.getter();

          if ((*(v8 + 48))(v6, 1, v7) == 1)
          {

            sub_100453E30(v6);
          }

          else
          {
            (*(v8 + 32))(v10, v6, v7);
            [*&v12[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView] frame];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;
            v22 = [v12 superview];
            [v12 convertRect:v22 toView:{v15, v17, v19, v21}];

            ImpressionsCalculator.addElement(_:at:)();

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

double sub_1006A8D1C(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_1006A8D7C(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

uint64_t sub_1006A8E14()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_1006A8E70(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

void (*sub_1006A8F30(uint64_t a1))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  sub_10002C0AC(a1, v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_100005A38(v6, v4 + 32);
  return sub_1006A93FC;
}

void sub_1006A9040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v10 = a5;
  v11 = type metadata accessor for TodayCard.Style();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v5[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_sizeCategory];
  v5[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_sizeCategory] = a5;
  if (v10 == 7)
  {
    if (v16 == 7)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v5 setNeedsLayout];
    goto LABEL_6;
  }

  if (v16 == 7)
  {
    goto LABEL_5;
  }

  switch(v10)
  {
    case 6:
      if (v16 != 6)
      {
        goto LABEL_5;
      }

      break;
    case 5:
      if (v16 != 5)
      {
        goto LABEL_5;
      }

      break;
    case 4:
      if (v16 != 4)
      {
        goto LABEL_5;
      }

      break;
    default:
      if ((v16 - 7) > 0xFFFFFFFC || v16 != v10)
      {
        goto LABEL_5;
      }

      break;
  }

LABEL_6:
  v17 = [v5 traitCollection];
  if (v10 != 4)
  {
    PageGrid.horizontalDirectionalMargins.getter();
    PageGrid.horizontalDirectionalMargins.getter();
  }

  [v17 layoutDirection];
  NSDirectionalEdgeInsets.insetsWithLayoutDirection(_:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v5 setLayoutMargins:{v19, v21, v23, v25}];
  v26 = sub_1000A7C28(a4);
  [v6 setBackgroundColor:v26];

  (*(v12 + 104))(v15, enum case for TodayCard.Style.white(_:), v11);
  sub_1006A93B4(&qword_100972DC0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v31[2] == v31[0] && v31[3] == v31[1])
  {
    v27 = 1;
  }

  else if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v27 = 1;
  }

  else
  {
    v27 = 2;
  }

  (*(v12 + 8))(v15, v11);

  [v6 setOverrideUserInterfaceStyle:v27];
  v28 = *&v6[OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView];
  v29 = TodayCardArcadeLockupOverlay.arcadeLockup.getter();
  sub_100283630(v29, a2);

  sub_1006A8774();
}

uint64_t sub_1006A93B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006A9408()
{
  v1 = v0;
  v2 = type metadata accessor for ArcadeLockupLayout.Metrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FontUseCase();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_arcadeLockupView;
  if (qword_10096DD38 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v6, qword_1009D0740);
  (*(v7 + 16))(v9, v11, v6);
  if (qword_10096ED98 != -1)
  {
    swift_once();
  }

  v12 = sub_1000056A8(v2, qword_100991A08);
  (*(v3 + 16))(v5, v12, v2);
  v13 = objc_allocWithZone(type metadata accessor for ArcadeLockupView(0));
  *(v1 + v10) = sub_1001C6E04(v9, v5, 0, 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_backgroundEffectView;
  if (qword_10096EDA0 != -1)
  {
    swift_once();
  }

  *(v1 + v14) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:qword_100991A20];
  swift_weakInit();
  v15 = (v1 + OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_impressionsUpdateBlock);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_isExpanded) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore32TodayCardArcadeLockupOverlayView_sizeCategory) = 7;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_1006A9744()
{
  *&v72 = sub_10002849C(&qword_10098D5E8, qword_1007D6DA8);
  v67 = *(v72 - 8);
  __chkstk_darwin(v72);
  v66 = &v63 - v0;
  v1 = type metadata accessor for StaticDimension();
  v71 = *(v1 - 8);
  __chkstk_darwin(v1);
  v83 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v81 = &v63 - v4;
  v82 = type metadata accessor for LabelPlaceholder();
  v70 = *(v82 - 8);
  __chkstk_darwin(v82);
  v80 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TextAppearance();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v65 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v69 = &v63 - v9;
  v77 = type metadata accessor for DynamicTextAppearance();
  v84 = *(v77 - 8);
  __chkstk_darwin(v77);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v63 - v13;
  __chkstk_darwin(v15);
  v17 = &v63 - v16;
  __chkstk_darwin(v18);
  v68 = &v63 - v19;
  v20 = type metadata accessor for FontUseCase();
  v75 = *(v20 - 8);
  v76 = v20;
  __chkstk_darwin(v20);
  v74 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PageGrid();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductPageLink();
  sub_1006AA31C(&qword_100991B40, &type metadata accessor for ProductPageLink, &protocol conformance descriptor for ProductPageLink);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v27 = v85[0];
  if (v85[0])
  {
    v64 = v1;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v28 = v85[0];
    v73 = v27;
    ProductPageLink.systemImageName.getter();
    if (v29)
    {
      v30 = static SystemImage.load(_:with:includePrivateImages:)();

      v31 = v30;
      [v31 size];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();
      CGSize.scaled(_:)();
    }

    if (qword_10096E9F0 != -1)
    {
      swift_once();
    }

    v32 = sub_10002849C(&qword_100979010, qword_1007BE140);
    sub_1000056A8(v32, qword_1009D2B20);
    Conditional.evaluate<>(in:)();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    (*(v23 + 8))(v25, v22);
    if (UITraitCollection.isSizeClassRegular.getter())
    {
      v33 = v76;
      v34 = v77;
      v35 = v84;
      v36 = v75;
      v37 = v74;
      if (qword_10096DF78 != -1)
      {
        swift_once();
      }

      v38 = qword_1009D0DE8;
    }

    else
    {
      v33 = v76;
      v34 = v77;
      v35 = v84;
      v36 = v75;
      v37 = v74;
      if (qword_10096DF70 != -1)
      {
        swift_once();
      }

      v38 = qword_1009D0DD0;
    }

    v39 = sub_1000056A8(v33, v38);
    (*(v36 + 16))(v37, v39, v33);
    DynamicTextAppearance.init()();
    DynamicTextAppearance.withFontUseCase(_:)();
    v42 = *(v35 + 8);
    v40 = v35 + 8;
    v41 = v42;
    v42(v11, v34);
    if (qword_10096E9F8 != -1)
    {
      swift_once();
    }

    v43 = sub_10002849C(&unk_100973B30, &qword_1007B5248);
    sub_1000056A8(v43, qword_1009D2B38);
    Conditional.evaluate<>(in:)();
    DynamicTextAppearance.withNumberOfLines(_:)();
    v41(v14, v34);
    v44 = v41;
    v63 = v41;
    v45 = v68;
    DynamicTextAppearance.withLineBreakMode(_:)();
    v44(v17, v34);
    v46 = v69;
    TextAppearance.init()();
    DynamicTextAppearance.customTextStyle.getter();
    v84 = v40;
    sub_10002A400(v85, v85[3]);
    dispatch thunk of CustomTextStyle.font(compatibleWith:)();
    TextAppearance.font.setter();
    sub_100007000(v85);
    DynamicTextAppearance.textAlignment.getter();
    TextAppearance.textAlignment.setter();
    DynamicTextAppearance.lineBreakMode.getter();
    TextAppearance.lineBreakMode.setter();
    DynamicTextAppearance.numberOfLines.getter();
    TextAppearance.numberOfLines.setter();
    DynamicTextAppearance.lineSpacing.getter();
    TextAppearance.lineSpacing.setter();
    ProductPageLink.text.getter();
    (*(v78 + 16))(v65, v46, v79);
    LabelPlaceholder.Options.init(rawValue:)();
    LabelPlaceholder.init(_:with:where:)();
    v47 = v66;
    sub_1005AFC28(v66);
    v48 = v72;
    Conditional.evaluate<>(in:)();
    v49 = *(v67 + 8);
    v49(v47, v48);
    sub_1005AFC1C(v47);
    Conditional.evaluate<>(in:)();
    v49(v47, v48);
    type metadata accessor for TraitEnvironmentPlaceholder();
    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    v50 = swift_allocObject();
    v72 = xmmword_1007B0B70;
    *(v50 + 16) = xmmword_1007B0B70;
    *(v50 + 32) = v28;
    v51 = v28;
    v52 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    dispatch thunk of Measurable.measurements(fitting:in:)();

    v53 = swift_allocObject();
    *(v53 + 16) = v72;
    *(v53 + 32) = v51;
    v54 = v51;
    v55 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    v56 = v81;
    v57 = v64;
    dispatch thunk of AnyDimension.rawValue(in:)();

    v58 = swift_allocObject();
    *(v58 + 16) = v72;
    *(v58 + 32) = v54;
    v59 = v54;
    v60 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
    v61 = v83;
    dispatch thunk of AnyDimension.rawValue(in:)();

    v62 = *(v71 + 8);
    v62(v61, v57);
    v62(v56, v57);
    (*(v70 + 8))(v80, v82);
    (*(v78 + 8))(v46, v79);
    v63(v45, v77);
    return (*(v75 + 8))(v74, v76);
  }

  return result;
}

uint64_t sub_1006AA31C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006AA364(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = type metadata accessor for ComponentLayoutOptions();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  static ComponentLayoutOptions.overflowed.getter();
  sub_1006AABB4(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v11 + 8))(v13, v10);
  type metadata accessor for ProductReviewView();
  swift_getObjectType();
  sub_10077ADC4(v14, v15 & 1, v15 & 1, a7, a2);
}

id sub_1006AA4C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = type metadata accessor for ComponentLayoutOptions();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  static ComponentLayoutOptions.overflowed.getter();
  sub_1006AABB4(&qword_10097DB10, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v15 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v11 + 8))(v13, v10);
  if (v15)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  sub_100779FE0(v14, v16 | v15 & 1, 0, a6, a3);
  return [v6 setNeedsLayout];
}

uint64_t sub_1006AA6F0(uint64_t a1, uint64_t a2)
{
  v29[1] = a2;
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Shelf.ContentType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&qword_100975F10, &unk_1007CE130);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = v29 - v12;
  v14 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v14 - 8);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v29 - v19;
  (*(v7 + 104))(v29 - v19, enum case for Shelf.ContentType.reviews(_:), v6, v18);
  (*(v7 + 56))(v20, 0, 1, v6);
  v21 = *(v11 + 56);
  sub_100094EE4(a1, v13);
  sub_100094EE4(v20, &v13[v21]);
  v22 = *(v7 + 48);
  if (v22(v13, 1, v6) != 1)
  {
    sub_100094EE4(v13, v16);
    if (v22(&v13[v21], 1, v6) != 1)
    {
      (*(v7 + 32))(v9, &v13[v21], v6);
      sub_1006AABB4(&qword_100972720, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v7 + 8);
      v25(v9, v6);
      sub_10002B894(v20, &unk_100992460, &qword_1007B6BF0);
      v25(v16, v6);
      sub_10002B894(v13, &unk_100992460, &qword_1007B6BF0);
      if (v24)
      {
        goto LABEL_9;
      }

      return 0;
    }

    sub_10002B894(v20, &unk_100992460, &qword_1007B6BF0);
    (*(v7 + 8))(v16, v6);
LABEL_6:
    sub_10002B894(v13, &qword_100975F10, &unk_1007CE130);
    return 0;
  }

  sub_10002B894(v20, &unk_100992460, &qword_1007B6BF0);
  if (v22(&v13[v21], 1, v6) != 1)
  {
    goto LABEL_6;
  }

  sub_10002B894(v13, &unk_100992460, &qword_1007B6BF0);
LABEL_9:
  if (qword_10096E6B0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for StaticDimension();
  sub_1000056A8(v26, qword_1009D2430);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v28 = v27;
  (*(v30 + 8))(v5, v31);
  return v28;
}

uint64_t sub_1006AABB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1006AABFC(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v53 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LabelPlaceholderCompatibility();
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a2 traitCollection];
  v61 = v4;
  sub_1006AB3DC(v18, v17);

  InAppPurchaseShowcaseLockupViewLayout.Metrics.iconSize.getter();
  v47 = *(v14 + 8);
  v48 = v14 + 8;
  v51 = v17;
  v49 = v13;
  v47(v17, v13);
  v50 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v52 = LayoutViewPlaceholder.init(representing:)();
  v60 = a1;
  InAppPurchaseShowcase.lockup.getter();
  Lockup.title.getter();

  v19 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E238 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for FontUseCase();
  sub_1000056A8(v20, qword_1009D1628);
  v21 = [a2 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v22 = type metadata accessor for Feature();
  v72[3] = v22;
  v59 = sub_1006ACA84(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v72[4] = v59;
  v23 = sub_1000056E0(v72);
  v24 = *(v22 - 8);
  v25 = *(v24 + 104);
  v56 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v57 = v24 + 104;
  v58 = v25;
  v25(v23);
  isFeatureEnabled(_:)();
  sub_100007000(v72);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v26 = *(v63 + 8);
  v63 += 8;
  v27 = v26;
  v26(v12, v62);
  InAppPurchaseShowcase.subtitle.getter();
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v46 = sub_1000056A8(v20, qword_1009D1640);
  v28 = a2;
  v29 = [a2 traitCollection];
  v45 = v19;
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v71[3] = v22;
  v71[4] = v59;
  v30 = sub_1000056E0(v71);
  v58(v30, v56, v22);
  isFeatureEnabled(_:)();
  sub_100007000(v71);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v44 = v27;
  v27(v12, v62);
  v31 = [v28 traitCollection];
  v32 = v51;
  sub_1006AB3DC(v31, v51);

  InAppPurchaseShowcaseLockupViewLayout.Metrics.offerButtonSize.getter();
  v47(v32, v49);
  v33 = v50;
  swift_allocObject();
  v49 = LayoutViewPlaceholder.init(representing:)();
  InAppPurchaseShowcase.descriptionText.getter();
  v34 = v28;
  v35 = [v28 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v70[3] = v22;
  v70[4] = v59;
  v36 = sub_1000056E0(v70);
  v58(v36, v56, v22);
  isFeatureEnabled(_:)();
  sub_100007000(v70);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v44(v12, v62);
  v37 = [v34 traitCollection];
  sub_1006AB3DC(v37, v32);

  v69[8] = v33;
  v69[9] = &protocol witness table for LayoutViewPlaceholder;
  v69[5] = v52;
  sub_10002C0AC(v72, v69);
  sub_10002C0AC(v71, &v68);
  sub_10002C0AC(v70, &v67);
  v65 = v33;
  v66 = &protocol witness table for LayoutViewPlaceholder;
  v64 = v49;

  v38 = v53;
  InAppPurchaseShowcaseLockupViewLayout.init(metrics:iconView:titleText:subtitleText:descriptionText:offerButton:)();
  sub_1006ACA84(&qword_100991BE0, &type metadata accessor for InAppPurchaseShowcaseLockupViewLayout, &protocol conformance descriptor for InAppPurchaseShowcaseLockupViewLayout);
  v39 = v55;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v41 = v40;

  (*(v54 + 8))(v38, v39);
  sub_100007000(v70);
  sub_100007000(v71);
  sub_100007000(v72);
  return v41;
}

uint64_t sub_1006AB3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v65 = a2;
  v72 = type metadata accessor for OfferButtonMetrics();
  v76 = *(v72 - 8);
  __chkstk_darwin(v72);
  v61 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v63 = &v54 - v4;
  __chkstk_darwin(v5);
  v58 = &v54 - v6;
  __chkstk_darwin(v7);
  v59 = &v54 - v8;
  v9 = type metadata accessor for FontSource();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for StaticDimension();
  __chkstk_darwin(v55);
  v62 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v71 = &v54 - v15;
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  v19 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  InAppPurchaseIconLayout.Metrics.overallSize.getter();
  (*(v20 + 8))(v22, v19);
  if (qword_10096E238 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D1628);
  v25 = *(v23 - 8);
  v69 = *(v25 + 16);
  v68 = v25 + 16;
  v69(v12, v24, v23);
  v26 = enum case for FontSource.useCase(_:);
  v74 = v10[13];
  v75 = v10 + 13;
  v74(v12);
  v81 = v9;
  v82 = &protocol witness table for FontSource;
  v27 = sub_1000056E0(v80);
  v67 = v10[2];
  v73 = v10 + 2;
  v67(v27, v12, v9);
  v60 = v18;
  StaticDimension.init(_:scaledLike:)();
  v29 = v10[1];
  v28 = v10 + 1;
  v66 = v29;
  v29(v12, v9);
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v23, qword_1009D1640);
  v31 = v69;
  v69(v12, v30, v23);
  (v74)(v12, v26, v9);
  v81 = v9;
  v82 = &protocol witness table for FontSource;
  v32 = sub_1000056E0(v80);
  v33 = v67;
  v67(v32, v12, v9);
  StaticDimension.init(_:scaledLike:)();
  v34 = v66;
  v66(v12, v9);
  v54 = v30;
  v57 = v23;
  v31(v12, v30, v23);
  v56 = v26;
  (v74)(v12, v26, v9);
  v81 = v55;
  v82 = &protocol witness table for StaticDimension;
  sub_1000056E0(v80);
  v78 = v9;
  v79 = &protocol witness table for FontSource;
  v35 = sub_1000056E0(v77);
  v33(v35, v12, v9);
  StaticDimension.init(_:scaledLike:)();
  v55 = v9;
  v34(v12, v9);
  v36 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v64 = v28;
  if (v36)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v37 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v37 = qword_100991028;
  }

  v38 = v72;
  v39 = sub_1000056A8(v72, v37);
  v40 = v76;
  v41 = *(v76 + 16);
  v42 = v58;
  v41(v58, v39, v38);
  v43 = *(v40 + 32);
  v44 = v59;
  v43(v59, v42, v38);
  OfferButtonMetrics.minimumSize.getter();
  v45 = *(v40 + 8);
  v76 = v40 + 8;
  v45(v44, v38);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v46 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v46 = qword_100991028;
  }

  v47 = v72;
  v48 = sub_1000056A8(v72, v46);
  v49 = v61;
  v41(v61, v48, v47);
  v50 = v63;
  v43(v63, v49, v47);
  OfferButtonMetrics.estimatedHeight.getter();
  v45(v50, v47);
  v69(v12, v54, v57);
  v51 = v55;
  (v74)(v12, v56, v55);
  v78 = v51;
  v79 = &protocol witness table for FontSource;
  v52 = sub_1000056E0(v77);
  v67(v52, v12, v51);
  StaticDimension.init(_:scaledLike:)();
  v66(v12, v51);
  return InAppPurchaseShowcaseLockupViewLayout.Metrics.init(iconSize:titleSpace:subtitleSpace:offerTopSpace:offerButtonSize:descriptionSpace:)();
}

char *sub_1006ABCE0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v67 = type metadata accessor for DirectionalTextAlignment();
  v10 = *(v67 - 8);
  __chkstk_darwin(v67);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v13 - 8);
  v15 = v58 - v14;
  v16 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v16 - 8);
  v18 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_iconView;
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v20 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  v21 = sub_1002EB7C0(v18, 1);
  v68 = v5;
  *&v5[v19] = v21;
  v22 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_titleLabel;
  if (qword_10096E238 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FontUseCase();
  v24 = sub_1000056A8(v23, qword_1009D1628);
  v25 = *(v23 - 8);
  v66 = *(v25 + 16);
  v66(v15, v24, v23);
  v26 = *(v25 + 56);
  v65 = v25 + 56;
  v26(v15, 0, 1, v23);
  v27 = *(v10 + 104);
  v63 = v10 + 104;
  v64 = v27;
  v28 = enum case for DirectionalTextAlignment.none(_:);
  (v27)(v12);
  v29 = type metadata accessor for DynamicTypeLabel();
  v30 = objc_allocWithZone(v29);
  *&v68[v22] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v62 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_subtitleLabel;
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v61 = sub_1000056A8(v23, qword_1009D1640);
  v66(v15, v61, v23);
  v58[1] = v25 + 16;
  v60 = v26;
  v26(v15, 0, 1, v23);
  v31 = v67;
  v32 = v64;
  v64(v12, v28, v67);
  v59 = v29;
  v33 = objc_allocWithZone(v29);
  v34 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v35 = v68;
  v36 = v61;
  *&v68[v62] = v34;
  v37 = v31;
  v38 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v66(v15, v36, v23);
  v60(v15, 0, 1, v23);
  v32(v12, v28, v37);
  v39 = objc_allocWithZone(v59);
  *&v35[v38] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v40 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_offerButton;
  v41 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v35[v40] = sub_1000F5284(0, v42);
  v43 = type metadata accessor for InAppPurchaseShowcaseLockupView();
  v69.receiver = v35;
  v69.super_class = v43;
  v44 = objc_msgSendSuper2(&v69, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v48 = v44;
  [v48 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v49 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_subtitleLabel;
  v50 = *&v48[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_subtitleLabel];
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v51 = v50;
  v52 = static UIColor.secondaryText.getter();
  [v51 setTextColor:v52];

  v53 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v54 = *&v48[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v55 = static UIColor.secondaryText.getter();
  [v54 setTextColor:v55];

  v56 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_titleLabel;
  [*&v48[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_titleLabel] setTextAlignment:1];
  [*&v48[v49] setTextAlignment:1];
  [*&v48[v53] setTextAlignment:1];
  [v48 addSubview:*&v48[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_iconView]];
  [v48 addSubview:*&v48[v56]];
  [v48 addSubview:*&v48[v49]];
  [v48 addSubview:*&v48[v53]];
  [v48 addSubview:*&v48[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_offerButton]];

  return v48;
}

uint64_t sub_1006AC354()
{
  v1 = v0;
  swift_getObjectType();
  v28 = type metadata accessor for LayoutRect();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v26 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics();
  __chkstk_darwin(v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout();
  v6 = *(v25 - 8);
  __chkstk_darwin(v25);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for InAppPurchaseShowcaseLockupView();
  v35.receiver = v0;
  v35.super_class = v24;
  objc_msgSendSuper2(&v35, "layoutSubviews");
  v9 = [v0 traitCollection];
  sub_1006AB3DC(v9, v5);

  v10 = *&v0[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_iconView];
  v33 = type metadata accessor for InAppPurchaseView(0);
  v34 = &protocol witness table for UIView;
  v32 = v10;
  v11 = *&v1[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_titleLabel];
  v30 = type metadata accessor for DynamicTypeLabel();
  v31 = &protocol witness table for UILabel;
  v29[14] = &protocol witness table for UILabel;
  v29[15] = v11;
  v12 = *&v1[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_subtitleLabel];
  v29[13] = v30;
  v29[9] = &protocol witness table for UILabel;
  v29[10] = v12;
  v13 = *&v1[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v29[8] = v30;
  v29[5] = v13;
  v14 = *&v1[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_offerButton];
  v15 = type metadata accessor for OfferButton();
  v29[4] = &protocol witness table for UIView;
  v29[3] = v15;
  v29[0] = v14;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  InAppPurchaseShowcaseLockupViewLayout.init(metrics:iconView:titleText:subtitleText:descriptionText:offerButton:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  v21 = v26;
  InAppPurchaseShowcaseLockupViewLayout.placeChildren(relativeTo:in:)();
  (*(v27 + 8))(v21, v28);
  return (*(v6 + 8))(v8, v25);
}

double sub_1006AC6BC(double a1, double a2)
{
  v3 = v2;
  swift_getObjectType();
  v4 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout.Metrics();
  __chkstk_darwin(v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for InAppPurchaseShowcaseLockupViewLayout();
  v7 = *(v28 - 8);
  *&v8 = __chkstk_darwin(v28).n128_u64[0];
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 traitCollection];
  sub_1006AB3DC(v11, v6);

  v12 = *&v2[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_iconView];
  v33 = type metadata accessor for InAppPurchaseView(0);
  v34 = &protocol witness table for UIView;
  v32 = v12;
  v13 = *&v3[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_titleLabel];
  v30 = type metadata accessor for DynamicTypeLabel();
  v31 = &protocol witness table for UILabel;
  v29[14] = &protocol witness table for UILabel;
  v29[15] = v13;
  v14 = *&v3[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_subtitleLabel];
  v29[13] = v30;
  v29[9] = &protocol witness table for UILabel;
  v29[10] = v14;
  v15 = *&v3[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_descriptionLabel];
  v29[8] = v30;
  v29[5] = v15;
  v16 = *&v3[OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_offerButton];
  v17 = type metadata accessor for OfferButton();
  v29[4] = &protocol witness table for UIView;
  v29[3] = v17;
  v29[0] = v16;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  InAppPurchaseShowcaseLockupViewLayout.init(metrics:iconView:titleText:subtitleText:descriptionText:offerButton:)();
  sub_1006ACA84(&qword_100991BE0, &type metadata accessor for InAppPurchaseShowcaseLockupViewLayout, &protocol conformance descriptor for InAppPurchaseShowcaseLockupViewLayout);
  v23 = v28;
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v25 = v24;
  (*(v7 + 8))(v10, v23);
  return v25;
}

id sub_1006AC9B0(uint64_t a1, __n128 a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for InAppPurchaseShowcaseLockupView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1006ACA84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006ACACC()
{
  v1 = v0;
  v46 = type metadata accessor for DirectionalTextAlignment();
  v2 = *(v46 - 8);
  __chkstk_darwin(v46);
  v48 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for InAppPurchaseIconLayout.Metrics();
  __chkstk_darwin(v7 - 8);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_iconView;
  InAppPurchaseIconLayout.Metrics.init(mainIconDimension:shouldPlaceTileAtOrigin:scaleToFit:)();
  v11 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  v12 = sub_1002EB7C0(v9, 1);
  v47 = v1;
  *(v1 + v10) = v12;
  v41 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_titleLabel;
  if (qword_10096E238 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for FontUseCase();
  v14 = sub_1000056A8(v13, qword_1009D1628);
  v15 = *(v13 - 8);
  v16 = *(v15 + 16);
  v45 = v15 + 16;
  v16(v6, v14, v13);
  v44 = *(v15 + 56);
  v44(v6, 0, 1, v13);
  v17 = *(v2 + 104);
  v18 = enum case for DirectionalTextAlignment.none(_:);
  v42 = v2 + 104;
  v43 = v17;
  v17(v48);
  v19 = type metadata accessor for DynamicTypeLabel();
  v20 = objc_allocWithZone(v19);
  *(v47 + v41) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v41 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_subtitleLabel;
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v21 = sub_1000056A8(v13, qword_1009D1640);
  v39 = v16;
  v40 = v21;
  v16(v6, v21, v13);
  v22 = v44;
  v44(v6, 0, 1, v13);
  v23 = v48;
  v38 = v18;
  v24 = v18;
  v25 = v46;
  v26 = v43;
  v43(v48, v24, v46);
  v37 = v19;
  v27 = objc_allocWithZone(v19);
  v28 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v29 = v47;
  v30 = v40;
  *(v47 + v41) = v28;
  v31 = v25;
  v32 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_descriptionLabel;
  v39(v6, v30, v13);
  v22(v6, 0, 1, v13);
  v26(v23, v38, v31);
  v33 = objc_allocWithZone(v37);
  *(v29 + v32) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v34 = OBJC_IVAR____TtC8AppStore31InAppPurchaseShowcaseLockupView_offerButton;
  v35 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v29 + v34) = sub_1000F5284(0, v36);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1006AD11C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s18PaletteContentViewCMa();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_1006AD188()
{
  v1 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_9:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = *(*(v2 + 56) + ((v8 << 9) | (8 * v9)));
    type metadata accessor for ArtworkView();
    sub_10009A098();
    v11 = v10;
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(v2 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

Swift::Int sub_1006AD2C4(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1006AD3E8()
{
  v0 = sub_10002849C(&qword_100979928, &qword_1007D8CE0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100005644(v10, qword_1009D3480);
  sub_1000056A8(v10, qword_1009D3480);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1006AD6C8()
{
  v0 = sub_10002849C(&qword_100991CD0, &qword_1007DDB58);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_10002849C(&qword_100991CD8, &unk_1007DDB60);
  __chkstk_darwin(v4);
  v5 = sub_10002849C(&qword_100991CC8, &qword_1007DDB50);
  sub_100005644(v5, qword_1009D3498);
  sub_1000056A8(v5, qword_1009D3498);
  sub_1002835DC();
  EnumURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x8000000100820040;
  v6._countAndFlagsBits = 0xD000000000000014;
  EnumURLRepresentation.StringInterpolation.appendLiteral(_:)(v6);
  (*(v1 + 104))(v3, enum case for EnumURLRepresentation.StringInterpolation.Token.rawValue<A>(_:), v0);
  EnumURLRepresentation.StringInterpolation.appendInterpolation(_:)();
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = 0x6F526F54706F7026;
  v7._object = 0xEF657572743D746FLL;
  EnumURLRepresentation.StringInterpolation.appendLiteral(_:)(v7);
  return EnumURLRepresentation.init(stringInterpolation:)();
}

unint64_t sub_1006AD8EC()
{
  result = qword_100991C18;
  if (!qword_100991C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C18);
  }

  return result;
}

double sub_1006AD948(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

unint64_t sub_1006ADA28@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1006AFA84(*a1);
  *a2 = result;
  return result;
}

void sub_1006ADA58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7961646F74;
  v5 = 0xE600000000000000;
  v6 = 0x656461637261;
  v7 = 0xE600000000000000;
  v8 = 0x686372616573;
  if (v2 != 4)
  {
    v8 = 0x73657461647075;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x73656D6167;
  if (v2 != 1)
  {
    v10 = 1936748641;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1006ADB00()
{
  result = qword_100991C20;
  if (!qword_100991C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C20);
  }

  return result;
}

unint64_t sub_1006ADB58()
{
  result = qword_100991C28;
  if (!qword_100991C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C28);
  }

  return result;
}

unint64_t sub_1006ADBB0()
{
  result = qword_100991C30;
  if (!qword_100991C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C30);
  }

  return result;
}

unint64_t sub_1006ADC18()
{
  result = qword_100991C38;
  if (!qword_100991C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C38);
  }

  return result;
}

uint64_t sub_1006ADC6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10096EDB0 != -1)
  {
    swift_once();
  }

  v2 = sub_10002849C(&qword_100991CC8, &qword_1007DDB50);
  v3 = sub_1000056A8(v2, qword_1009D3498);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1006ADD24()
{
  result = qword_100991C40;
  if (!qword_100991C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C40);
  }

  return result;
}

unint64_t sub_1006ADD78()
{
  result = qword_100991C48;
  if (!qword_100991C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C48);
  }

  return result;
}

unint64_t sub_1006ADDD0()
{
  result = qword_100991C50;
  if (!qword_100991C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C50);
  }

  return result;
}

uint64_t sub_1006ADE24(uint64_t a1)
{
  sub_1006AF050();
  v2 = URLRepresentableEnum.urlRepresentationParameter.getter();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1006ADEF4(uint64_t a1)
{
  v2 = sub_1002835DC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1006ADF44()
{
  result = qword_100991C58;
  if (!qword_100991C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C58);
  }

  return result;
}

unint64_t sub_1006ADF9C()
{
  result = qword_100991C60;
  if (!qword_100991C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C60);
  }

  return result;
}

unint64_t sub_1006ADFF4()
{
  result = qword_100991C68;
  if (!qword_100991C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C68);
  }

  return result;
}

uint64_t sub_1006AE04C(uint64_t a1)
{
  v2 = sub_1006ADDD0();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1006AE09C()
{
  result = qword_100991C70;
  if (!qword_100991C70)
  {
    sub_10002D1A8(&qword_100991C78, &qword_1007DD910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C70);
  }

  return result;
}

unint64_t sub_1006AE114()
{
  result = qword_100991C80;
  if (!qword_100991C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C80);
  }

  return result;
}

uint64_t sub_1006AE168(__n128 a1)
{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for LocalizedStringResource();
  sub_100005644(v7, qword_1009D34B0);
  sub_1000056A8(v7, qword_1009D34B0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v1);
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

void *sub_1006AE358@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

void (*sub_1006AE3CC(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100195724;
}

uint64_t sub_1006AE440(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006AEFA8();
  v5 = sub_1006AF050();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1006AE4AC()
{
  result = qword_100991C88;
  if (!qword_100991C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C88);
  }

  return result;
}

unint64_t sub_1006AE504()
{
  result = qword_100991C90;
  if (!qword_100991C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C90);
  }

  return result;
}

unint64_t sub_1006AE55C()
{
  result = qword_100991C98;
  if (!qword_100991C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991C98);
  }

  return result;
}

uint64_t sub_1006AE65C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = sub_1000056A8(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1006AE714(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1006AEFA8();
  v6 = sub_1006AEFFC();
  v7 = sub_1006AF050();
  *v4 = v2;
  v4[1] = sub_1006AE7E0;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1006AE7E0()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1006AE8E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1006AEAAC();
  *a1 = result;
  return result;
}

uint64_t sub_1006AE910(uint64_t a1)
{
  v2 = sub_100283534();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for PageEnum(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PageEnum(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1006AEAAC()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_100979920, &unk_1007C06D0);
  __chkstk_darwin(v2 - 8);
  v26 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v25 = &v21 - v5;
  v6 = sub_10002849C(&qword_100979928, &qword_1007D8CE0);
  __chkstk_darwin(v6 - 8);
  v24 = &v21 - v7;
  v8 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Locale();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v22 = type metadata accessor for LocalizedStringResource();
  v14 = *(v22 - 8);
  __chkstk_darwin(v22);
  v23 = sub_10002849C(&qword_100991CA0, &unk_1007DDB30);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v15 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v16 = *(v9 + 104);
  v16(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v16(v11, v15, v8);
  v17 = v24;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v14 + 56))(v17, 0, 1, v22);
  v30[0] = 6;
  v18 = type metadata accessor for IntentDialog();
  v19 = *(*(v18 - 8) + 56);
  v19(v25, 1, 1, v18);
  v19(v26, 1, 1, v18);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  sub_1002835DC();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
}

unint64_t sub_1006AEFA8()
{
  result = qword_100991CA8;
  if (!qword_100991CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991CA8);
  }

  return result;
}

unint64_t sub_1006AEFFC()
{
  result = qword_100991CB0;
  if (!qword_100991CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991CB0);
  }

  return result;
}

unint64_t sub_1006AF050()
{
  result = qword_100991CB8;
  if (!qword_100991CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991CB8);
  }

  return result;
}

unint64_t sub_1006AF0A4()
{
  v0 = sub_10002849C(&qword_10098C598, &qword_1007D5CD8);
  __chkstk_darwin(v0 - 8);
  v66 = v49 - v1;
  v2 = sub_10002849C(&qword_100979928, &qword_1007D8CE0);
  __chkstk_darwin(v2 - 8);
  v4 = v49 - v3;
  v65 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v5 = *(v65 - 8);
  __chkstk_darwin(v65);
  v7 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v10 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for LocalizedStringResource();
  v67 = *(v62 - 8);
  __chkstk_darwin(v62);
  sub_10002849C(&qword_100991CC0, &unk_1007DDB40);
  v14 = sub_10002849C(&qword_1009829B0, &qword_1007CA2E0);
  v64 = v14;
  v15 = *(v14 - 8);
  v58 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1007B23A0;
  v18 = v17 + v16;
  v52 = *(v14 + 48);
  v53 = v17;
  *(v17 + v16) = 0;
  v19 = v13;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v57 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v5 + 104);
  v63 = v5 + 104;
  v60 = v20;
  v21 = v65;
  (v20)(v7);
  v22 = v10;
  v23 = v7;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v24 = *(v67 + 56);
  v67 += 56;
  v59 = v24;
  v25 = v4;
  v26 = v4;
  v27 = v62;
  v24(v26, 1, 1, v62);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  v61 = v18;
  DisplayRepresentation.init(title:subtitle:image:)();
  v28 = v58;
  v29 = *(v64 + 48);
  v51 = (v18 + v58);
  v52 = v29;
  *v51 = 1;
  v54 = v19;
  String.LocalizationValue.init(stringLiteral:)();
  v49[1] = v22;
  static Locale.current.getter();
  v55 = v23;
  v30 = v57;
  v31 = v60;
  v60(v23, v57, v21);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v59(v25, 1, 1, v27);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  v56 = v25;
  DisplayRepresentation.init(title:subtitle:image:)();
  v52 = 2 * v28;
  v32 = *(v64 + 48);
  v50 = (v61 + 2 * v28);
  v51 = v32;
  *v50 = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33 = v55;
  v34 = v30;
  v35 = v65;
  v31(v55, v34, v65);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v36 = v59;
  v59(v25, 1, 1, v62);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v37 = v58;
  v38 = (v61 + v52 + v58);
  v52 = *(v64 + 48);
  *v38 = 3;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v39 = v57;
  v60(v33, v57, v35);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v40 = v62;
  v36(v56, 1, 1, v62);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v41 = 4 * v37;
  v52 = 4 * v37;
  v42 = v61;
  v51 = *(v64 + 48);
  *(v61 + v41) = 4;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v43 = v55;
  v60(v55, v39, v65);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v44 = v56;
  v45 = v40;
  v46 = v59;
  v59(v56, 1, 1, v45);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  *(v42 + v52 + v58) = 5;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v60(v43, v57, v65);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v46(v44, 1, 1, v62);
  DisplayRepresentation.Image.init(systemName:tintColor:symbolConfiguration:)();
  DisplayRepresentation.init(title:subtitle:image:)();
  v47 = sub_100399624(v53);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v47;
}

unint64_t sub_1006AFA84(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008B0370, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

double sub_1006AFC78()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ProductCapability();
  sub_1006AFE7C(&qword_100987728, &type metadata accessor for ProductCapability, &protocol conformance descriptor for ProductCapability);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v18[1])
  {
    return 0.0;
  }

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  v5 = v4;
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  v8 = ProductCapability.title.getter();
  v10 = v9;
  v11 = ProductCapability.caption.getter();
  v12 = ProductCapability.artwork.getter();
  v13 = sub_100079F24();
  swift_getObjectType();
  v14.n128_u64[0] = v5;
  sub_1004F2388(v8, v10, v11, v12, v13, v14, v7);
  v16 = v15;

  swift_unknownObjectRelease();

  return v16;
}

uint64_t sub_1006AFE7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1006AFEC4@<D0>(void (*a1)(__n128)@<X0>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v33 = a4;
  v34 = a3;
  v5 = type metadata accessor for ActivityFeedPlatterView();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&unk_100993070, &qword_1007DDC68);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = sub_10002849C(&qword_100991E38, &unk_1007E24B0);
  v14 = *(v13 - 8);
  v31 = v13;
  v32 = v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v30 - v16;
  a1(v15);
  v18 = sub_1006B0E34(&qword_100991E40, &type metadata accessor for ActivityFeedPlatterView, &protocol conformance descriptor for ActivityFeedPlatterView);
  View.metricsActivityAware(from:)();
  (*(v6 + 8))(v8, v5);
  v19 = type metadata accessor for BaseObjectGraph();
  v35 = v5;
  v36 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.actionDispatcher<A>(from:)();
  (*(v10 + 8))(v12, v9);
  v35 = v9;
  v36 = v19;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v21 = v33;
  v22 = v31;
  View.intentDispatcher(from:)();
  (*(v32 + 8))(v17, v22);
  type metadata accessor for ArtworkLoader();
  inject<A, B>(_:from:)();
  v23 = v35;
  sub_1006B0E34(&qword_100982F90, &type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
  v24 = static ObservableObject.environmentStore.getter();
  v25 = (v21 + *(sub_10002849C(&unk_100993060, &qword_1007DDC60) + 36));
  *v25 = v24;
  v25[1] = v23;
  KeyPath = swift_getKeyPath();
  v27 = *(v34 + OBJC_IVAR____TtC8AppStore22SwiftUIViewHostingCell_flowPreview);
  v28 = (v21 + *(sub_10002849C(&qword_100991E28, &unk_1007E24A0) + 36));
  *v28 = KeyPath;
  v28[1] = v27;

  return result;
}

double sub_1006B02A0@<D0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v31 = a4;
  v32 = a3;
  v27[1] = a2;
  v5 = sub_10002849C(&qword_10098F438, &qword_1007DA310);
  __chkstk_darwin(v5);
  v7 = v27 - v6;
  v8 = sub_10002849C(&qword_10098F430, &qword_1007DA308);
  v28 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v27 - v9;
  v11 = sub_10002849C(&qword_10098F428, &qword_1007DA300);
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = __chkstk_darwin(v11);
  v14 = v27 - v13;
  a1(v12);
  v15 = sub_100097060(&qword_10098F440, &qword_10098F438, &qword_1007DA310, &protocol conformance descriptor for IDView<A, B>);
  View.metricsActivityAware(from:)();
  sub_10002B894(v7, &qword_10098F438, &qword_1007DA310);
  v16 = type metadata accessor for BaseObjectGraph();
  v33 = v5;
  v34 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.actionDispatcher<A>(from:)();
  (*(v28 + 8))(v10, v8);
  v33 = v8;
  v34 = v16;
  v35 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v18 = v30;
  v19 = v31;
  View.intentDispatcher(from:)();
  (*(v29 + 8))(v14, v18);
  type metadata accessor for ArtworkLoader();
  inject<A, B>(_:from:)();
  v20 = v33;
  sub_1006B0E34(&qword_100982F90, &type metadata accessor for ArtworkLoader, &protocol conformance descriptor for ArtworkLoader);
  v21 = static ObservableObject.environmentStore.getter();
  v22 = (v19 + *(sub_10002849C(&qword_10098F420, &qword_1007DA2F8) + 36));
  *v22 = v21;
  v22[1] = v20;
  KeyPath = swift_getKeyPath();
  v24 = *(v32 + OBJC_IVAR____TtC8AppStore22SwiftUIViewHostingCell_flowPreview);
  v25 = (v19 + *(sub_10002849C(&qword_10098F408, &qword_1007DA2F0) + 36));
  *v25 = KeyPath;
  v25[1] = v24;

  return result;
}

uint64_t sub_1006B0650@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.flowPreview.getter();
  *a1 = result;
  return result;
}

double sub_1006B06A8(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6, double a7)
{
  v8 = [a6 snapshotPageTraitEnvironment];
  swift_getObjectType();
  v9 = swift_unknownObjectRetain();
  v10 = sub_10077DC28(v9, a7);
  swift_unknownObjectRelease_n();
  return v10;
}

uint64_t sub_1006B07C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100991E20, &qword_1007DDC58);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_10002849C(&unk_100993040, &qword_1007BC2F0);
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
  v26 = type metadata accessor for ActivityFeedLockupViewModel();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v23 = &v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  GameCenterActivityFeedCard.data.getter();
  GameCenterActivityFeedCard.profileActionMetrics.getter();
  GameCenterActivityFeedCard.profileAvatarActionMetrics.getter();
  GameCenterActivityFeedCard.leaderboardActionMetrics.getter();
  GameCenterActivityFeedCard.achievementActionMetrics.getter();
  GameCenterActivityFeedCard.appActionMetrics.getter();
  v34 = v23;
  v35 = v28;
  v36 = a3;
  v37 = v21;
  v38 = v18;
  v39 = v15;
  v40 = v12;
  v41 = v9;
  v29 = sub_1006B0BAC;
  v30 = &v33;
  v31 = a3;
  v32 = v28;
  sub_10002849C(&qword_100991E28, &unk_1007E24A0);
  sub_1006B0BCC();
  UIHostingConfiguration<>.init(content:)();
  static Edge.Set.all.getter();
  v42[3] = v4;
  v42[4] = sub_100097060(&qword_1009930A0, &qword_100991E20, &qword_1007DDC58, &protocol conformance descriptor for UIHostingConfiguration<A, B>);
  sub_1000056E0(v42);
  UIHostingConfiguration.margins(_:_:)();
  (*(v27 + 8))(v6, v4);
  UICollectionViewCell.contentConfiguration.setter();
  sub_10002B894(v9, &unk_100993040, &qword_1007BC2F0);
  sub_10002B894(v12, &unk_100993040, &qword_1007BC2F0);
  sub_10002B894(v15, &unk_100993040, &qword_1007BC2F0);
  sub_10002B894(v18, &unk_100993040, &qword_1007BC2F0);
  sub_10002B894(v21, &unk_100993040, &qword_1007BC2F0);
  return (*(v25 + 8))(v23, v26);
}

unint64_t sub_1006B0BCC()
{
  result = qword_100993050;
  if (!qword_100993050)
  {
    sub_10002D1A8(&qword_100991E28, &unk_1007E24A0);
    sub_1006B0C84();
    sub_100097060(&qword_100993090, &qword_100982F88, &qword_1007CAD20, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100993050);
  }

  return result;
}

unint64_t sub_1006B0C84()
{
  result = qword_100991E30;
  if (!qword_100991E30)
  {
    sub_10002D1A8(&unk_100993060, &qword_1007DDC60);
    sub_10002D1A8(&qword_100991E38, &unk_1007E24B0);
    sub_10002D1A8(&unk_100993070, &qword_1007DDC68);
    type metadata accessor for BaseObjectGraph();
    type metadata accessor for ActivityFeedPlatterView();
    sub_1006B0E34(&qword_100991E40, &type metadata accessor for ActivityFeedPlatterView, &protocol conformance descriptor for ActivityFeedPlatterView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100097060(&unk_100993080, &qword_100982F80, &unk_1007E24C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100991E30);
  }

  return result;
}

uint64_t sub_1006B0E34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006B0E7C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
    PageTraitEnvironment.pageColumnMargin.getter();
  }

  if (qword_10096D050 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for AspectRatio();
  sub_1000056A8(v4, qword_1009CDF98);
  AspectRatio.height(fromWidth:)();
  ComponentPrefetchSizing.init(size:contentMode:)();
  v5 = type metadata accessor for ComponentPrefetchSizing();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

double sub_1006B0F9C(double a1)
{
  if (qword_10096D050 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AspectRatio();
  sub_1000056A8(v2, qword_1009CDF98);
  AspectRatio.height(fromWidth:)();
  return a1;
}

id sub_1006B10E4()
{
  v1 = v0;
  v2 = type metadata accessor for Shelf.PresentationHints();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Brick.accessibilityLabel.getter();
  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  [v1 setAccessibilityLabel:v7];

  static Shelf.PresentationHints.showSupplementaryText.getter();
  sub_1006B161C(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v8 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  result = (*(v3 + 8))(v5, v2);
  if (v8)
  {
    v10 = Brick.shortEditorialDescription.getter();
    v11 = &v1[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabelText];
    *v11 = v10;
    v11[1] = v12;

    return sub_1000F88B0();
  }

  return result;
}

id sub_1006B1280(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Shelf.PresentationHints();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v7 = v6;
  PageTraitEnvironment.pageColumnMargin.getter();
  v9 = v8;
  static Shelf.PresentationHints.showSupplementaryText.getter();
  sub_1006B161C(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v10 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (*(v3 + 8))(v5, v2);
  if (v10)
  {
    if (qword_10096D058 != -1)
    {
      swift_once();
    }

    v11 = qword_1009CDFB0;
  }

  else
  {
    if (qword_10096D060 != -1)
    {
      swift_once();
    }

    v11 = qword_1009CDFC8;
  }

  v12 = ceil((v7 - v9) / 1.5);
  v13 = type metadata accessor for BrickLayout.Metrics();
  sub_1000056A8(v13, v11);
  type metadata accessor for BrickLayout();
  sub_1006B161C(&qword_1009739B0, &type metadata accessor for BrickLayout, &protocol conformance descriptor for BrickLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v15 = v14;
  v16 = objc_opt_self();
  v17 = [v16 absoluteDimension:v12];
  v18 = [v16 absoluteDimension:v15];
  v19 = [objc_opt_self() sizeWithWidthDimension:v17 heightDimension:v18];

  v20 = [objc_opt_self() itemWithLayoutSize:v19];
  v21 = objc_opt_self();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007B0B70;
  *(v22 + 32) = v20;
  sub_1002FF658();
  v23 = v20;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = [v21 verticalGroupWithLayoutSize:v19 subitems:isa];

  return v25;
}

uint64_t sub_1006B161C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1006B1664()
{
  sub_10001F64C(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_1006B16C4(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.indexPath.getter();
  v11 = IndexPath.section.getter();
  (*(v8 + 8))(v10, v7);
  if (!v11)
  {
    swift_getObjectType();
    v12 = swift_conformsToProtocol2();
    if (v12)
    {
      if (a1)
      {
        v13 = v12;
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 8);
        v16 = a1;
        v17 = v15(ObjectType, v13);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          v20 = [Strong view];

          if (!v20)
          {
            __break(1u);
            goto LABEL_19;
          }

          v21 = [v20 safeAreaLayoutGuide];

          [v21 layoutFrame];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;

          v50.origin.x = v23;
          v50.origin.y = v25;
          v50.size.width = v27;
          v50.size.height = v29;
          MinY = CGRectGetMinY(v50);
        }

        else
        {
          MinY = 0.0;
        }

        v31 = v17 - MinY;
        v32 = swift_unknownObjectWeakLoadStrong();
        if (v32)
        {
          v33 = v32;
          v34 = *(v4 + 24);
          v35 = swift_getObjectType();
          v36 = (*(v34 + 8))(v35, v34);

          if (v36)
          {
            sub_100072908(a3, v31);
          }
        }

        v37 = swift_unknownObjectWeakLoadStrong();
        if (!v37)
        {
          v38 = v16;
          goto LABEL_16;
        }

        v38 = v37;
        v39 = [v37 collectionView];
        if (v39)
        {
          v40 = v39;
          [v39 _pocketInsets];
          v42 = v41;
          v44 = v43;
          v46 = v45;

          v47 = [v38 collectionView];
          if (v47)
          {
            v48 = v47;
            [v47 _setPocketInsets:{v31, v42, v44, v46}];

LABEL_16:
            return;
          }

LABEL_20:
          __break(1u);
          return;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }
  }
}

double sub_1006B19B8(double a1, double a2)
{
  v5 = type metadata accessor for DisjointStack();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v19[-1] - v10;
  *(swift_allocObject() + 16) = v2;
  v12 = v2;
  DisjointStack.init(with:)();
  v13 = *&v12[OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_materialbackground];
  v19[3] = type metadata accessor for VisualEffectContainerView();
  v19[4] = sub_1006B311C(&qword_100991FA8, type metadata accessor for VisualEffectContainerView, &unk_1007CA94C);
  v19[0] = v13;
  v14 = v13;
  DisjointStack.inserting(_:at:with:)();
  v15 = *(v6 + 8);
  v15(v8, v5);
  sub_100007000(v19);
  v16 = sub_1006B29D4(v11, v12, a1, a2);
  v15(v11, v5);
  return v16;
}

char *sub_1006B1BB0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v9 - 8);
  v45 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v10 = *(v45 - 8);
  __chkstk_darwin(v45);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_lockupCollectionView;
  v17 = type metadata accessor for CarouselItemLockupCollectionView(0);
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_artworkViews] = _swiftEmptyArrayStorage;
  v19 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  v20 = sub_10002849C(&qword_100977078, qword_1007BC1F8);
  (*(*(v20 - 8) + 56))(&v18[v19], 1, 1, v20);
  *&v18[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
  *&v18[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_minNumberOfArtworks] = 2;
  *&v18[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_maxNumberOfArtworks] = 5;
  v49.receiver = v18;
  v49.super_class = v17;
  v21 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v25 = v44;
  *&v4[v44] = v21;
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v13);
  (*(v10 + 104))(v12, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v45);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v26 = &v4[OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_selectionHandler];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = *&v4[v25];
  v28 = objc_allocWithZone(UIVisualEffect);
  v29 = v27;
  v30 = [v28 init];
  v31 = type metadata accessor for VisualEffectContainerView();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR____TtC8AppStore25VisualEffectContainerView_embeddedView] = v29;
  v48.receiver = v32;
  v48.super_class = v31;
  v33 = v29;
  v34 = objc_msgSendSuper2(&v48, "initWithEffect:", v30);
  [v34 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v35 = [v34 contentView];
  [v35 addSubview:v33];

  *&v4[OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_materialbackground] = v34;
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v36 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  [v36 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v36 setOverrideUserInterfaceStyle:2];
  [v36 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v37 = [*&v36[OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_lockupCollectionView] layer];
  [v37 setAllowsGroupBlending:0];

  v38 = OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_materialbackground;
  v39 = *&v36[OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_materialbackground];
  sub_10075B130();

  v40 = [*&v36[v38] contentView];
  v41 = [v40 layer];

  [v41 setAllowsGroupBlending:0];
  [v36 addSubview:*&v36[v38]];

  return v36;
}

uint64_t sub_1006B214C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DisjointStack();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = __chkstk_darwin(v7).n128_u64[0];
  v10 = &v18[-1] - v9;
  v19.receiver = v1;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, "layoutSubviews", v8);
  *(swift_allocObject() + 16) = v1;
  v11 = v1;
  DisjointStack.init(with:)();
  v12 = *&v11[OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_materialbackground];
  v18[3] = type metadata accessor for VisualEffectContainerView();
  v18[4] = sub_1006B311C(&qword_100991FA8, type metadata accessor for VisualEffectContainerView, &unk_1007CA94C);
  v18[0] = v12;
  v13 = v12;
  DisjointStack.inserting(_:at:with:)();
  v14 = *(v4 + 8);
  v14(v6, v3);
  sub_100007000(v18);
  LayoutMarginsAware<>.layoutFrame.getter();
  v15 = [v11 traitCollection];
  dispatch thunk of Placeable.place(at:with:)();

  return (v14)(v10, v3);
}

uint64_t sub_1006B23E8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v19 = type metadata accessor for DisjointStack.EdgePosition();
  v3 = *(v19 - 8);
  __chkstk_darwin(v19);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_displayOptions;
  swift_beginAccess();
  (*(v11 + 16))(v13, a2 + v14, v10);
  HeroCarouselItemOverlay.DisplayOptions.horizontalPlacement.getter();
  (*(v11 + 8))(v13, v10);
  result = (*(v7 + 88))(v9, v6);
  if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:))
  {
    v5[3] = type metadata accessor for ZeroDimension();
    v5[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v5);
    static ZeroDimension.zero.getter();
    (*(v3 + 104))(v5, enum case for DisjointStack.EdgePosition.anchored(_:), v19);
    return DisjointStack.Properties.leadingEdge.setter();
  }

  else
  {
    v16 = v3;
    v17 = v19;
    if (result != enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.center(_:))
    {
      if (result == enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.trailing(_:))
      {
        v5[3] = type metadata accessor for ZeroDimension();
        v5[4] = &protocol witness table for ZeroDimension;
        sub_1000056E0(v5);
        static ZeroDimension.zero.getter();
        (*(v16 + 104))(v5, enum case for DisjointStack.EdgePosition.anchored(_:), v17);
        return DisjointStack.Properties.trailingEdge.setter();
      }

      else
      {
        return (*(v7 + 8))(v9, v6);
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for CarouselItemModulePlatterView(uint64_t a1)
{
  result = qword_100991F98;
  if (!qword_100991F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1006B2868(uint64_t a1)
{
  result = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
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

uint64_t sub_1006B2910(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_selectionHandler);
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_selectionHandler);
  v5 = *(v2 + OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_selectionHandler + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_10001F63C(v4, v5);
}

double sub_1006B2934(uint64_t a1, uint64_t a2)
{
  v3 = HeroCarouselItemOverlay.collectionIcons.getter();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  sub_10059D2E8(v4, a2);

  return result;
}

double sub_1006B29D4(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = type metadata accessor for Resize.Rule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v41[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v41[-v12];
  __chkstk_darwin(v14);
  v16 = &v41[-v15];
  __chkstk_darwin(v17);
  v19 = &v41[-v18];
  v20 = type metadata accessor for DisjointStack();
  v47[3] = v20;
  v47[4] = &protocol witness table for DisjointStack;
  v21 = sub_1000056E0(v47);
  (*(*(v20 - 8) + 16))(v21, a1, v20);
  sub_100270A74();
  v23 = v22;
  v24 = [a2 traitCollection];
  v25 = [v24 horizontalSizeClass];

  if (v25 == 2)
  {
    v26 = 635.0;
  }

  else
  {
    v26 = a3;
  }

  if (v26 <= v23)
  {
    sub_10002C0AC(v47, v43);
    *(v19 + 3) = &type metadata for CGFloat;
    *(v19 + 4) = &protocol witness table for CGFloat;
    *v19 = v26;
    v35 = *(v8 + 104);
    v35(v19, enum case for Resize.Rule.replaced(_:), v7);
    v36 = enum case for Resize.Rule.unchanged(_:);
    v35(v16, enum case for Resize.Rule.unchanged(_:), v7);
    v35(v13, v36, v7);
    v35(v10, v36, v7);
    v45 = type metadata accessor for Resize();
    v46 = &protocol witness table for Resize;
    sub_1000056E0(v44);
    Resize.init(_:width:height:firstBaseline:lastBaseline:)();
  }

  else
  {
    MeasurementRange.init(minimum:maximum:)();
    v28 = v27;
    v30 = v29;
    sub_10002C0AC(v47, v43);
    MeasurementRange.init(minimum:maximum:)();
    v32 = v31;
    v34 = v33;
    v45 = type metadata accessor for Constrain();
    v46 = &protocol witness table for Constrain;
    sub_1000056E0(v44);
    v42 = v32 & 1;
    v41[0] = v34 & 1;
    Constrain.init(_:width:height:)();
    v43[0] = v28 & 1;
    v42 = v30 & 1;
    MeasurementRange.constrain(_:)();
  }

  sub_10002A400(v44, v45);
  v37 = [a2 traitCollection];
  dispatch thunk of Placeable.measure(toFit:with:)();
  v39 = v38;

  sub_100007000(v44);
  sub_100007000(v47);
  return v39;
}

id sub_1006B2DE0()
{
  v1 = v0;
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_lockupCollectionView];
  v7 = HeroCarouselItemOverlay.collectionIcons.getter();
  if (v7)
  {
    if (v7 >> 62)
    {
      v8 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks;
    v10 = *&v6[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks];
    *&v6[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks] = v8;
    if (v8 != v10)
    {
      if (v8 > 5)
      {
        *&v6[v9] = 5;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v11 = *&v6[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks];
    *&v6[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
    if (v11)
    {
LABEL_8:
      sub_10059C8B0();
      [v6 setNeedsLayout];
    }
  }

  HeroCarouselItemOverlay.displayOptions.getter();
  v12 = OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_displayOptions;
  swift_beginAccess();
  (*(v3 + 40))(&v1[v12], v5, v2);
  swift_endAccess();
  return [v1 setNeedsLayout];
}

double sub_1006B2FA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_lockupCollectionView);
  v2 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_artworkViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      type metadata accessor for ArtworkView();
      sub_1006B311C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

      ++v5;
      if (v8 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  return result;
}

uint64_t sub_1006B311C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1006B3164(__n128 a1)
{
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v2 - 8);
  v17 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v3 = *(v17 - 8);
  __chkstk_darwin(v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_lockupCollectionView;
  v10 = type metadata accessor for CarouselItemLockupCollectionView(0);
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_artworkViews] = _swiftEmptyArrayStorage;
  v12 = OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView____lazy_storage___artworkViewPool;
  v13 = sub_10002849C(&qword_100977078, qword_1007BC1F8);
  (*(*(v13 - 8) + 56))(&v11[v12], 1, 1, v13);
  *&v11[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_numberOfArtworks] = 0;
  *&v11[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_minNumberOfArtworks] = 2;
  *&v11[OBJC_IVAR____TtC8AppStore32CarouselItemLockupCollectionView_maxNumberOfArtworks] = 5;
  v18.receiver = v11;
  v18.super_class = v10;
  v14 = objc_msgSendSuper2(&v18, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  *(v1 + v16) = v14;
  (*(v7 + 104))(v9, enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.center(_:), v6);
  (*(v3 + 104))(v5, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v17);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v15 = (v1 + OBJC_IVAR____TtC8AppStore29CarouselItemModulePlatterView_selectionHandler);
  *v15 = 0;
  v15[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1006B349C()
{
  result = qword_100992450;
  if (!qword_100992450)
  {
    type metadata accessor for VideoView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992450);
  }

  return result;
}

void sub_1006B34F4(uint64_t a1, char a2)
{
  v5 = *&v2[qword_100988CC0];
  v6 = [v5 layer];
  [v6 removeAllAnimations];

  if ((a2 & 1) != 0 && ([v5 alpha], v7 == 1.0))
  {
    [v5 setAlpha:0.0];
    [v5 setImage:a1];
    sub_100060340();
    v8 = v2;
    v9 = static UIViewPropertyAnimator.fadeInPropertyAnimator.getter();
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    v13[4] = sub_1006B37D0;
    v13[5] = v10;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 1107296256;
    v13[2] = sub_100007A08;
    v13[3] = &unk_1008CEBA8;
    v11 = _Block_copy(v13);
    v12 = v8;

    [v9 addAnimations:v11];
    _Block_release(v11);
    [v9 startAnimation];
  }

  else
  {

    [v5 setImage:a1];
  }
}

id sub_1006B36C0()
{
  v1 = [*(v0 + qword_100988CC0) image];

  return v1;
}

void sub_1006B3704(void *a1)
{
  [*(v1 + qword_100988CC0) setImage:a1];
}

void (*sub_1006B3758(void *a1))(id *a1)
{
  v3 = *(v1 + qword_100988CC0);
  a1[1] = v3;
  *a1 = [v3 image];
  return sub_10055F7A8;
}

uint64_t sub_1006B37F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_1006B3850(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore32ProductRatingsCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1006B391C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1006B3BA4(&qword_1009749D0, type metadata accessor for ProductRatingsCollectionViewCell, &unk_1007DDEF0);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

double sub_1006B39B4()
{
  v0 = type metadata accessor for Shelf.PresentationHints();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  type metadata accessor for Ratings();
  sub_1006B3BA4(&qword_100970EB8, &type metadata accessor for Ratings, &protocol conformance descriptor for ProductRatingsAndReviewsComponent);
  ItemLayoutContext.typedModel<A>(as:)();
  v8 = v12;
  if (v12)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    static Shelf.PresentationHints.isSeeAllContext.getter();
    sub_1006B3BA4(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v9 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v10 = *(v1 + 8);
    v10(v3, v0);
    v10(v6, v0);
    sub_100522BA0(v8, v9 & 1);
  }

  return result;
}

uint64_t sub_1006B3BA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_1006B3BEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  objc_allocWithZone(sub_10002849C(&qword_100991FE0, &qword_1007DDFC8));

  sub_10019D860(&v25, v19);
  sub_100031660(&v26, v19, &qword_100991FE8, &unk_1007DDFD0);
  sub_100031660(&v24, v19, &qword_100986868, &qword_1007CE750);
  *(v4 + *((swift_isaMask & *v4) + 0x68)) = UIHostingController.init(rootView:)();
  v18.receiver = v4;
  v18.super_class = sub_10002849C(&qword_100991FD8, &qword_1007DDFC0);
  v11 = objc_msgSendSuper2(&v18, "initWithNibName:bundle:", 0, 0);
  v12 = [v11 navigationItem];
  if (a3)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  [v12 setTitle:v13];

  v14 = [v11 navigationItem];
  sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v14 setRightBarButtonItems:isa];

  v16 = [v11 navigationItem];
  [v16 setLargeTitleDisplayMode:2];

  return v11;
}

void *sub_1006B3E74(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DebugMetricsEventRecorder();
  BaseObjectGraph.optional<A>(_:)();
  if (!v36)
  {
    return _swiftEmptyArrayStorage;
  }

  v34 = 0;
  v35 = 0xE000000000000000;
  v6 = v36;

  State.init(wrappedValue:)();
  v30 = v36;
  v7 = v37;
  v33 = sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v8 = swift_allocObject();
  v32 = xmmword_1007B0B70;
  *(v8 + 16) = xmmword_1007B0B70;
  sub_100005744(0, &qword_100983870, UIBarButtonItem_ptr);
  sub_100005744(0, &qword_10097CD40, UIAction_ptr);
  swift_allocObject();
  v31 = v6;
  swift_weakInit();
  v41.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v41.is_nil = 0;
  *(v8 + 32) = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemTrash, v41, v42);
  *&v36 = v6;
  *(&v36 + 1) = sub_10046DFE4;
  v37 = 0;
  v38 = 0;
  v39 = v30;
  v40 = v7;
  v9 = objc_allocWithZone(sub_10002849C(&qword_100991FD8, &qword_1007DDFC0));
  v10 = sub_1006B3BEC(&v36, 0x7363697274654DLL, 0xE700000000000000, v8);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  type metadata accessor for NavigationActionDebugSetting();
  v12 = swift_allocObject();
  v12[7] = 0xD000000000000013;
  v12[8] = 0x80000001008201C0;
  v12[10] = 0;
  v12[11] = 0;
  v12[9] = 0;
  v12[12] = sub_1006B49F8;
  v12[13] = v11;

  *&v30 = v10;

  UUID.init()();
  v13 = UUID.uuidString.getter();
  v15 = v14;
  v16 = *(v3 + 8);
  v29 = v2;
  v16(v5, v2);
  v34 = v13;
  v35 = v15;
  AnyHashable.init<A>(_:)();

  type metadata accessor for BoolUserDefaultsDebugSetting();
  v17 = swift_allocObject();
  *(v17 + 56) = 0xD00000000000001ALL;
  *(v17 + 64) = 0x80000001008201E0;
  *(v17 + 72) = 0;
  *(v17 + 80) = 0xD000000000000018;
  *(v17 + 88) = 0x8000000100820200;
  *(v17 + 96) = 0;
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  v16(v5, v2);
  v34 = v18;
  v35 = v20;
  AnyHashable.init<A>(_:)();
  v21 = swift_allocObject();
  *(v21 + 16) = v32;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007B15F0;
  *(v22 + 32) = v12;
  *(v22 + 40) = v17;
  type metadata accessor for DebugSection();
  v23 = swift_allocObject();
  UUID.init()();
  v24 = UUID.uuidString.getter();
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

double sub_1006B4340(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    DebugMetricsEventRecorder.clear()();
  }

  return result;
}

uint64_t sub_1006B4398(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = a3;
  v4 = type metadata accessor for FlowOrigin();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v42 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FlowAnimationBehavior();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin(v6);
  v36 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for FlowPresentationContext();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v10 - 8);
  v12 = v32 - v11;
  v13 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v13 - 8);
  v15 = v32 - v14;
  v16 = type metadata accessor for FlowPage();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v20 - 8);
  v22 = v32 - v21;
  v23 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v43 = a2;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_1000F40E0(v22);
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v26 = *(v17 + 104);
  v32[2] = v19;
  v26(v19, enum case for FlowPage.viewController(_:), v16);
  v27 = type metadata accessor for URL();
  v28 = *(*(v27 - 8) + 56);
  v32[1] = v15;
  v28(v15, 1, 1, v27);
  v29 = type metadata accessor for ReferrerData();
  (*(*(v29 - 8) + 56))(v12, 1, 1, v29);
  v45 = sub_10002849C(&qword_100991FD8, &qword_1007DDFC0);
  v44 = v39;
  v30 = v39;
  static ActionMetrics.notInstrumented.getter();
  (*(v33 + 104))(v34, enum case for FlowPresentationContext.push(_:), v35);
  (*(v37 + 104))(v36, enum case for FlowAnimationBehavior.infer(_:), v38);
  (*(v40 + 104))(v42, enum case for FlowOrigin.inapp(_:), v41);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v31 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_1005F9C8C(v31, 1, v43, v22);

  return (*(v24 + 8))(v22, v23);
}

id sub_1006B4998(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MetricsSettings();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1006B4A00(void *a1, unint64_t a2)
{
  v7 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v2 = v3;
  v5 = a2;
  v4 = a1;
  v6 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkImages;
  swift_beginAccess();
  v3 = *(v3 + v6);
  v8 = *(v3 + 16);
  v9 = v7 - v8 < 0;
  v10 = v7 <= v8;
  v11 = v7 - v8;
  if (v10)
  {
LABEL_9:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v2[v6] = v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_15;
    }

LABEL_14:
    v3 = sub_100548D28(v3);
    *&v2[v6] = v3;
    if ((v5 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (*(v3 + 16) > v5)
      {
        v13 = v3 + 8 * v5;
        v14 = *(v13 + 32);
        *(v13 + 32) = v4;
        *&v2[v6] = v3;
        v15 = v4;
        swift_endAccess();

        [v2 setNeedsLayout];
        return;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v9)
  {
    swift_beginAccess();
    do
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(*&v2[v6] + 16) >= *(*&v2[v6] + 24) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      --v11;
    }

    while (v11);
    v3 = *&v2[v6];
    swift_endAccess();
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
}

void sub_1006B4B80()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
    v9 = v8;
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(v3 + 56) + ((v9 << 9) | (8 * v10)));
    ArtworkView.image.setter();
    [v11 setHidden:1];
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      v12 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkImages;
      swift_beginAccess();
      *(v1 + v12) = _swiftEmptyArrayStorage;

      return;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1006B4CD4(uint64_t result, float64x2_t a2, float64_t a3)
{
  v3 = (&unk_1007DE100 + 8 * result);
  a2.f64[1] = a3;
  v4 = vld1q_dup_f64(v3);
  v5 = vdivq_f64(a2, v4);
  __asm { FMOV            V2.2D, #15.0 }

  v11 = vsubq_f64(v5, vrndmq_f64(vdivq_f64(vmulq_f64(v5, _Q2), v4)));
  __asm { FMOV            V1.2D, #1.0 }

  v13 = vrndpq_f64(vaddq_f64(v11, _Q1));
  *&v14 = *&vmulq_laneq_f64(v13, v13, 1);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v14 < 9.22337204e18)
  {
    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1006B4D5C(uint64_t result, double a2, double a3)
{
  v3 = 8 * result;
  v4.f64[0] = *(&unk_1007DE060 + v3);
  v4.f64[1] = *(&unk_1007DE120 + v3);
  v5 = vdupq_lane_s64(*&a3, 0);
  v6 = vaddq_f64(v4, v5);
  v7.f64[0] = *(&unk_1007DE080 + v3);
  v7.f64[1] = *(&unk_1007DE140 + v3);
  v8 = vaddq_f64(v7, v5);
  v9.f64[0] = *(&unk_1007DE0A0 + v3);
  v9.f64[1] = *(&unk_1007DE160 + v3);
  v10.f64[0] = *(&unk_1007DE0C0 + v3);
  v10.f64[1] = *(&unk_1007DE180 + v3);
  v11 = vdupq_lane_s64(*&a2, 0);
  v12 = vsubq_f64(v6, vmulq_f64(vsubq_f64(v9, v11), vdivq_f64(vsubq_f64(v6, v8), vsubq_f64(v9, v10))));
  v13 = vsubq_f64(v11, v10);
  v14 = vsubq_f64(v12, v8);
  v15 = vsqrtq_f64(vaddq_f64(vmulq_f64(v13, v13), vmulq_f64(v14, v14)));
  v16 = *(&unk_1007DE100 + v3);
  if (v15.f64[0] <= v15.f64[1])
  {
    v15.f64[0] = v15.f64[1];
  }

  v17 = ceil(v15.f64[0] / (v16 + 15.0));
  v18 = floor(dbl_1007DE0E0[result] / v16) + v17 + v17;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v18 < 9.22337204e18)
  {
    return v18;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1006B4EA4()
{
  v0 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_100005644(v0, qword_100991FF0);
  sub_1000056A8(v0, qword_100991FF0);
  sub_10002849C(&qword_100973F50, &qword_1007B4260);
  return Conditional<>.init(regularValue:rightToLeftValue:)();
}

void sub_1006B4F58()
{
  v1 = v0;
  v23.receiver = v0;
  v23.super_class = swift_getObjectType();
  v2 = v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType];
  objc_msgSendSuper2(&v23, "frame");
  v4.f64[0] = v3;
  v6 = sub_1006B4CD4(v2, v4, v5);
  v7 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkViews;
  swift_beginAccess();
  v8 = *&v1[v7];
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(*(v8 + 48) + ((v13 << 9) | (8 * v15)));
    if (v16 >= v6)
    {
      swift_beginAccess();
      v17 = sub_1003D7340(v16);
      if (v18)
      {
        v19 = v17;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *&v1[v7];
        *&v1[v7] = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_100053614();
        }

        v22 = *(*(v21 + 56) + 8 * v19);
        sub_100056290();
        *&v1[v7] = v21;
        swift_endAccess();
        [v22 removeFromSuperview];
      }

      else
      {
        swift_endAccess();
      }
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(v8 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1006B5128()
{
  v1 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkImages;
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  v3 = *(v0 + OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages);
  v4 = v3 - v2;
  if (v3 > v2)
  {
    if (v3 - v2 < 0)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      do
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(*(v0 + v1) + 16) >= *(*(v0 + v1) + 24) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        --v4;
      }

      while (v4);
      swift_endAccess();
    }
  }
}

char *sub_1006B52EC(char a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v12 = type metadata accessor for CornerStyle();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkViews;
  *&v5[v16] = sub_1003987F0(_swiftEmptyArrayStorage);
  *&v5[OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages] = 0;
  v5[OBJC_IVAR____TtC8AppStore11ArtworkGrid_showBorder] = 0;
  v5[OBJC_IVAR____TtC8AppStore11ArtworkGrid_isLazyLayoutEnabled] = 1;
  v17 = &v5[OBJC_IVAR____TtC8AppStore11ArtworkGrid_lastVisibleBounds];
  *v17 = 0u;
  v17[1] = 0u;
  swift_unknownObjectWeakInit();
  v5[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType] = a1;
  v18 = sub_1003987F0(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *&v5[v16] = v18;

  *&v5[OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkImages] = _swiftEmptyArrayStorage;
  v19 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC8AppStore11ArtworkGrid_contentView] = v19;
  *&v5[OBJC_IVAR____TtC8AppStore11ArtworkGrid_imageBorderView] = [objc_allocWithZone(type metadata accessor for BorderView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v31.receiver = v5;
  v31.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v31, "initWithFrame:", a2, a3, a4, a5);
  v21 = *&v20[OBJC_IVAR____TtC8AppStore11ArtworkGrid_contentView];
  v22 = v20;
  [v22 addSubview:v21];
  v23 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_imageBorderView;
  v24 = *&v22[OBJC_IVAR____TtC8AppStore11ArtworkGrid_imageBorderView];
  type metadata accessor for ArtworkView();
  v25 = v24;
  static ArtworkView.iconBorderWidth.getter();
  BorderView.borderWidth.setter();

  v26 = *&v22[v23];
  static ArtworkView.iconBorderColor.getter();
  BorderView.borderColor.setter();

  v27 = *&v22[v23];
  (*(v13 + 104))(v15, enum case for CornerStyle.arc(_:), v12);
  v28 = v27;
  CornerStylable<>.applyCorner(radius:style:)();

  (*(v13 + 8))(v15, v12);
  [v22 addSubview:*&v22[v23]];
  [v22 setClipsToBounds:1];

  return v22;
}

id sub_1006B56C8()
{
  ObjectType = swift_getObjectType();
  v27.receiver = v0;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "layoutSubviews");
  v2 = objc_opt_self();
  v3 = [v2 areAnimationsEnabled];
  [v2 setAnimationsEnabled:0];
  v4 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType;
  v26.receiver = v0;
  v26.super_class = ObjectType;
  v5 = v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_gridType];
  objc_msgSendSuper2(&v26, "frame");
  v8 = sub_1006B4D5C(v5, v6, v7);
  if (v0[v4] == 3)
  {
    v10 = sub_1006B60B0(v8, v9);
  }

  else
  {
    v10 = sub_1006B648C(v8, v9);
  }

  v11 = v10;
  [v0 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *&v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_contentView];
  [v20 setBounds:?];
  [v0 center];
  [v20 setCenter:?];
  if (qword_10096EDC0 != -1)
  {
    swift_once();
  }

  v21 = sub_10002849C(&qword_100979010, qword_1007BE140);
  sub_1000056A8(v21, qword_100991FF0);
  *&v24.a = v0;
  v22 = v0;
  Conditional.evaluate(with:)();

  CGAffineTransformMakeRotation(&v24, angle);
  [v20 setTransform:&v24];
  [*&v22[OBJC_IVAR____TtC8AppStore11ArtworkGrid_imageBorderView] setFrame:{v13, v15, v17, v19}];
  sub_1006B660C(v11);
  sub_1006B696C(v11);

  return [v2 setAnimationsEnabled:v3];
}

void sub_1006B5960()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore11ArtworkGrid_isLazyLayoutEnabled) == 1 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (Strong, (v2 = [v0 window]) != 0))
  {
    v3 = v2;
    [v0 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = v3;
    [v12 convertRect:v0 fromCoordinateSpace:{v5, v7, v9, v11}];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [v12 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;

    v33.origin.x = v22;
    v33.origin.y = v24;
    v33.size.width = v26;
    v33.size.height = v28;
    v35.origin.x = v14;
    v35.origin.y = v16;
    v35.size.width = v18;
    v35.size.height = v20;
    v34 = CGRectIntersection(v33, v35);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    if (!CGRectIsEmpty(v34))
    {
      [v12 convertRect:v0 toCoordinateSpace:{x, y, width, height}];
    }
  }

  else
  {
    [v0 bounds];
  }
}

void sub_1006B5B24()
{
  if (v0[OBJC_IVAR____TtC8AppStore11ArtworkGrid_isLazyLayoutEnabled] != 1)
  {
LABEL_8:
    v6 = 0;
LABEL_9:

    sub_1006B5CA8(v6);
    return;
  }

  v1 = [v0 superview];
  if (!v1)
  {
LABEL_6:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    goto LABEL_8;
  }

  v2 = v1;
  while (1)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      break;
    }

    v4 = [v2 superview];

    v2 = v4;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v7 = v3;
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8 || (v9 = v8, sub_100005744(0, &qword_100978E50, UICollectionView_ptr), v11 = v2, v10 = static NSObject.== infix(_:_:)(), v11, v9, (v10 & 1) == 0))
  {
    v6 = v7;
    goto LABEL_9;
  }
}

void sub_1006B5CA8(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong _removeScrollViewScrollObserver:v1];
  }

  swift_unknownObjectWeakAssign();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    [v4 _addScrollViewScrollObserver:v1];
  }
}

void sub_1006B5D60(void *a1, uint64_t a2, const char **a3)
{
  v6.receiver = a1;
  v6.super_class = swift_getObjectType();
  v4 = *a3;
  v5 = v6.receiver;
  objc_msgSendSuper2(&v6, v4);
  sub_1006B5B24();
}

unint64_t sub_1006B5F94()
{
  result = qword_100992080;
  if (!qword_100992080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100992080);
  }

  return result;
}

void sub_1006B5FE8()
{
  v1 = OBJC_IVAR____TtC8AppStore11ArtworkGrid_artworkViews;
  *(v0 + v1) = sub_1003987F0(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC8AppStore11ArtworkGrid_expectedNumberOfArtworkImages) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore11ArtworkGrid_showBorder) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore11ArtworkGrid_isLazyLayoutEnabled) = 1;
  v2 = (v0 + OBJC_IVAR____TtC8AppStore11ArtworkGrid_lastVisibleBounds);
  *v2 = 0u;
  v2[1] = 0u;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_1006B60B0(uint64_t a1, unint64_t a2)
{
  v7 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    goto LABEL_61;
  }

  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v9 = v8 * v7;
  if ((v8 * v7) >> 64 != (v8 * v7) >> 63)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (__OFSUB__(v9, 3))
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v9 - 3 > 0)
  {
    v10 = v7 / 2;
    v40 = v8 / 2;
    v11 = 1;
    v38 = a1;
    v39 = a2;
    v12 = sub_100035300(0, 1, 1, _swiftEmptyArrayStorage);
    v13 = v10;
    v2 = v12;
    a1 = v38;
    a2 = v39;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = v9 - 2;
    while (1)
    {
      v4 = (v16 + v13);
      if (__OFADD__(v16, v13))
      {
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
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v5 = v15 + v40;
      if (__OFADD__(v15, v40))
      {
        goto LABEL_56;
      }

      v6 = *(v2 + 2);
      v18 = *(v2 + 3);
      v3 = v6 + 1;
      if (v6 >= v18 >> 1)
      {
        v22 = v2;
        v23 = v13;
        v24 = sub_100035300((v18 > 1), v6 + 1, 1, v22);
        v13 = v23;
        v2 = v24;
        a1 = v38;
        a2 = v39;
      }

      *(v2 + 2) = v3;
      v19 = &v2[16 * v6];
      *(v19 + 4) = v4;
      *(v19 + 5) = v5;
      if (v16 < 1)
      {
        if (v16 < 0)
        {
          if (v15 != v16 && (v16 ^ v15) != 0xFFFFFFFFFFFFFFFFLL)
          {
            goto LABEL_23;
          }
        }

        else if (v15 != v16)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (__OFSUB__(0, v15))
        {
          goto LABEL_59;
        }

        if (v15 != v16 && -v15 != v16)
        {
          goto LABEL_23;
        }
      }

      v20 = -v11;
      if (__OFSUB__(0, v11))
      {
        goto LABEL_60;
      }

      v11 = v14;
      v14 = v20;
LABEL_23:
      v21 = __OFADD__(v16, v14);
      v16 += v14;
      if (v21)
      {
        goto LABEL_57;
      }

      v21 = __OFADD__(v15, v11);
      v15 += v11;
      if (v21)
      {
        goto LABEL_58;
      }

      if (--v17 <= 1)
      {
        goto LABEL_28;
      }
    }
  }

  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
LABEL_28:
  if (v3 >= 4)
  {
    v3 = a1 * a2;
    if ((a1 * a2) >> 64 == (a1 * a2) >> 63)
    {
      v25 = sub_1000477CC();
      v4 = v26;
      v5 = v27;
      v6 = v28;
      if (v28)
      {
        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();

        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          swift_unknownObjectRelease();
          v30 = _swiftEmptyArrayStorage;
        }

        v31 = v30[2];

        if (__OFSUB__(v6 >> 1, v5))
        {
          goto LABEL_75;
        }

        if (v31 != (v6 >> 1) - v5)
        {
          goto LABEL_76;
        }

        v4 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v4)
        {
          goto LABEL_40;
        }

        v4 = _swiftEmptyArrayStorage;
        goto LABEL_39;
      }

      while (1)
      {
        sub_1005E7F60(v25, v4, v5, v6);
        v4 = v29;
LABEL_39:
        swift_unknownObjectRelease();
LABEL_40:
        v32 = *(v4 + 2);
        v5 = v32 - 2;
        if (v32 < 2)
        {
LABEL_66:
          __break(1u);
        }

        else
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v41 = v4;
          if (!isUniquelyReferenced_nonNull_native || v5 > *(v4 + 3) >> 1)
          {
            v4 = sub_100035300(isUniquelyReferenced_nonNull_native, v32, 1, v4);
            v41 = v4;
          }

          sub_1004A72D0(0, 2, 0);
          a2 = *(v4 + 2);
          if (a2 >= 2)
          {
            v41 = v4;
            if (a2 - 1 <= *(v4 + 3) >> 1)
            {
              goto LABEL_46;
            }

            goto LABEL_68;
          }
        }

        __break(1u);
LABEL_68:
        v4 = sub_100035300(1, a2, 1, v4);
        v41 = v4;
LABEL_46:
        v25 = &v41;
        sub_1004A72D0(1uLL, 2, 0);
        v41 = v4;
        v34 = v3 + 2;
        if (__OFADD__(v3, 2))
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        if (v34 < v3)
        {
          goto LABEL_70;
        }

        v21 = __OFADD__(v34, 1);
        v35 = v3 + 3;
        if (v21)
        {
          goto LABEL_71;
        }

        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_72;
        }

        v36 = *(v2 + 2);
        if (v36 < v3 || v36 < v35)
        {
          goto LABEL_73;
        }

        if ((v35 & 0x8000000000000000) == 0)
        {
          sub_100394CF8(v2, (v2 + 32), v3, (2 * v35) | 1);
          return v41;
        }

LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        swift_unknownObjectRelease();
      }
    }

LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  return v2;
}