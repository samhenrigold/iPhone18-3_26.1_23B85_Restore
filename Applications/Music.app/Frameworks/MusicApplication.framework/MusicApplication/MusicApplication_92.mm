void sub_85F2F0(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = v3[v4];
  v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[3] setNeedsLayout];
  }

  free(v1);
}

id LoadingView.font.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) font];

  return v1;
}

void LoadingView.font.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setFont:a1];
}

void (*LoadingView.font.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = [*(v1 + v2) font];
  return sub_85F444;
}

void sub_85F444(uint64_t a1)
{
  v1 = *a1;
  [*(*(a1 + 8) + *(a1 + 16)) setFont:?];
}

uint64_t LoadingView.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double LoadingView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title];
  swift_beginAccess();
  v7 = *v5;
  v8 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  if (a2)
  {
    if (v8)
    {
      v9 = v7 == a1 && v8 == a2;
      if (v9 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_12;
      }
    }

    v10 = *&v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];

    v11 = sub_AB9260();
  }

  else
  {
    if (!v8)
    {
      return result;
    }

    v10 = *&v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];
    v11 = 0;
  }

  [v10 setText:v11];

  [v2 setNeedsLayout];
LABEL_12:

  return result;
}

void (*LoadingView.title.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  v5 = (v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;

  return sub_85F6A0;
}

void sub_85F6A0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    LoadingView.title.setter(v3, v4);
  }

  else
  {
    LoadingView.title.setter(*(*a1 + 24), v4);
  }

  free(v2);
}

Swift::Void __swiftcall LoadingView.layoutSubviews()()
{
  v58.receiver = v0;
  v58.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v58, "layoutSubviews");
  [v0 effectiveUserInterfaceLayoutDirection];
  v1 = [v0 traitCollection];
  [v1 displayScale];

  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 layoutMargins];
  UIEdgeInsetsInsetRect(v3, v5, v7, v9, v10, v11);
  LoadingView.sizeThatFits(_:)(v12, v13);
  v15 = v14;
  [v0 bounds];
  v52 = v15;
  sub_ABA470();
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  v20 = CGRectGetWidth(v59);
  v21 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  v56 = width;
  v57 = height;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label] sizeThatFits:{width, height, v52}];
  v23 = v22;
  rect = v24;
  v60.origin.x = 0.0;
  v60.origin.y = 0.0;
  v60.size.height = 0.0;
  v25 = v20;
  v60.size.width = v20;
  v26 = CGRectGetWidth(v60);
  v27 = sub_85EE6C();
  [v27 intrinsicContentSize];
  v29 = v28;

  v30 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator] intrinsicContentSize];
  v32 = v31;
  v34 = v33;
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v26;
  v61.size.height = v29;
  v35 = CGRectGetHeight(v61);
  v62.origin.x = 0.0;
  v62.origin.y = 0.0;
  v62.size.width = v32;
  v62.size.height = v34;
  v36 = CGRectGetHeight(v62);
  if (v35 > v36)
  {
    v37 = v35;
  }

  else
  {
    v37 = v36;
  }

  v38 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  if (v0[v38])
  {
    if (v0[v38] == 1)
    {
      v63.origin.x = x;
      v63.origin.y = y;
      v63.size.width = v56;
      v63.size.height = v57;
      CGRectGetMinX(v63);
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = v25;
      v64.size.height = v37;
      CGRectGetMaxY(v64);
      [*&v0[v21] _firstBaselineOffsetFromTop];
    }

    else
    {
      [*&v0[v30] intrinsicContentSize];
      v40 = v39;
      [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar] intrinsicContentSize];
      if (v40 > v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = v41;
      }

      v43 = x;
      v44 = y;
      v45 = v37;
      CGRectGetMaxX(*(&v42 - 2));
      v67.origin.x = x;
      v67.origin.y = y;
      v67.size.width = v56;
      v67.size.height = v57;
      CGRectGetMinY(v67);
    }
  }

  else
  {
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = v56;
    v65.size.height = v57;
    CGRectGetMinX(v65);
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = v23;
    v66.size.height = rect;
    CGRectGetMaxY(v66);
    [*&v0[v21] _baselineOffsetFromBottom];
  }

  v46 = v0[v38];
  v47 = *&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar];
  sub_ABA470();
  if (v46 == 2)
  {
    [v0 bounds];
    sub_ABA490();
    [v47 setFrame:?];

    v49 = *&v0[v30];
    v53 = v37;
  }

  else
  {
    v54 = v48;
    sub_ABA470();
    [v0 bounds];
    sub_ABA490();
    [v47 setFrame:?];

    v49 = *&v0[v30];
    sub_ABA470();
    v53 = v50;
  }

  sub_ABA470();
  [v0 bounds];
  sub_ABA490();
  [v49 setFrame:?];

  v51 = *&v0[v21];
  sub_ABA470();
  [v0 bounds];
  sub_ABA490();
  [v51 setFrame:?];
}

double LoadingView.sizeThatFits(_:)(double a1, double a2)
{
  v3 = v2;
  v6 = sub_85EE6C();
  [v6 sizeThatFits:{0.0, 0.0}];
  v8 = v7;
  v10 = v9;

  [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) sizeThatFits:{0.0, 0.0}];
  v13 = v12;
  if (v8 > v11)
  {
    v14 = v8;
  }

  else
  {
    v14 = v11;
  }

  v15 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  if (v10 > v13)
  {
    v16 = v10;
  }

  else
  {
    v16 = v13;
  }

  if (*(v3 + v15) == 2)
  {
    v17 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
    [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) intrinsicContentSize];
    [*(v3 + v17) intrinsicContentSize];
    return v14 + v18;
  }

  else
  {
    v19 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
    [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) sizeThatFits:{0.0, 0.0}];
    v21 = v20;
    _s3__C6CGSizeVMa_0(0);
    if (sub_AB38D0())
    {
      [*(v3 + v19) sizeThatFits:{a1, a2 - (v16 + 0.0 + 8.0)}];
    }

    else if (v21 > v14)
    {
      return v21;
    }

    else
    {
      return v14;
    }
  }

  return a1;
}

BOOL static LoadingView.Style.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) == 0)
  {
    if ((a2 & 0x100000000) == 0)
    {
      return *&a1 == *&a2;
    }

    return 0;
  }

  return (a2 & 0x100000000) != 0;
}

uint64_t sub_85FFF8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

void sub_860028()
{
  sub_860398();
  v0 = UIFontTextStyleSubheadline;
  v1 = sub_ABA550();

  qword_E1C8F8 = v1;
}

unint64_t sub_860164()
{
  result = qword_E1C930;
  if (!qword_E1C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C930);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LoadingView.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LoadingView.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5) = v3;
  return result;
}

uint64_t sub_86024C(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_860268(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

void sub_860298()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style;
  *(v1 + 4) = 256;
  *v1 = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition) = 1;
  v2 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  *(v0 + v3) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  *(v0 + v4) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar) = 0;
  sub_ABAFD0();
  __break(1u);
}

unint64_t sub_860398()
{
  result = qword_E1C960;
  if (!qword_E1C960)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E1C960);
  }

  return result;
}

uint64_t MarkupView.body.getter@<X0>(uint64_t a3@<X8>)
{
  sub_AB2F20();
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C968, &qword_B31C50);
  swift_allocObject();

  sub_AB3890();
  sub_AB3880();

  result = sub_AB6F10();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_8604E4@<X0>(uint64_t a1@<X8>)
{
  sub_AB2F20();
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C968, &qword_B31C50);
  swift_allocObject();

  sub_AB3890();
  sub_AB3880();

  result = sub_AB6F10();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_8605E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a2;
  sub_AB5820();
  sub_866840(a1, v15, v11, a3, a4, a5, a6, a7);
  return sub_7DD1C4(v15);
}

uint64_t sub_860684(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin();
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    v6 = swift_getTupleTypeMetadata();
  }

  __chkstk_darwin();
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *TupleTypeMetadata++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_AB7B50();
}

uint64_t sub_860854(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  __chkstk_darwin();
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin();
  (*(v13 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v14, v11);
  (*(v8 + 16))(v10, a1, a4);
  return sub_AB5760();
}

uint64_t sub_8609E8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_ABA9C0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t MaterialyView.init(shape:style:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for MaterialyView(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t MaterialyView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v58 = a1;
  v3 = *(*(a1 + 24) + 8);
  v4 = *(a1 + 24);
  v79 = *(a1 + 16);
  v2 = v79;
  v80 = &type metadata for Color;
  v81 = v3;
  v82 = &protocol witness table for Color;
  v5 = v3;
  v66 = sub_AB5770();
  v62 = *(v66 - 8);
  __chkstk_darwin();
  v61 = &v43 - v6;
  sub_AB5E80();
  v65 = sub_AB5D50();
  v63 = *(v65 - 8);
  __chkstk_darwin();
  v60 = &v43 - v7;
  v79 = v2;
  v80 = &type metadata for LinearGradient;
  v81 = v5;
  v82 = &protocol witness table for LinearGradient;
  sub_AB5770();
  WitnessTable = sub_ABA9C0();
  v79 = v2;
  v80 = &type metadata for Color;
  v81 = &type metadata for EmptyView;
  v82 = v5;
  v83 = &protocol witness table for Color;
  v84 = &protocol witness table for EmptyView;
  sub_AB5DA0();
  sub_AB5D50();
  v57 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_AB5850();
  sub_AB5D50();
  sub_AB5D50();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C970, &qword_B31CF0);
  v11 = sub_36A00(&qword_E1C978, &qword_E1C970, &qword_B31CF0, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  v79 = v2;
  v80 = v10;
  v81 = v5;
  v82 = v11;
  v12 = v5;
  sub_AB5770();
  v79 = AssociatedTypeWitness;
  v80 = &type metadata for Color;
  v81 = v9;
  v82 = &protocol witness table for Color;
  sub_AB5770();
  sub_AB5D50();
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  swift_getWitnessTable();
  sub_AB77D0();
  sub_AB5D50();
  sub_AB5D50();
  swift_getTupleTypeMetadata3();
  sub_AB7B40();
  swift_getWitnessTable();
  v55 = sub_AB77D0();
  WitnessTable = swift_getWitnessTable();
  sub_AB5EA0();
  v13 = sub_AB5D50();
  __chkstk_darwin();
  v54 = &v43 - v14;
  v15 = *(v2 - 8);
  __chkstk_darwin();
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v17;
  v47 = swift_getWitnessTable();
  v77 = v47;
  v78 = &protocol witness table for _BlendModeEffect;
  v18 = swift_getWitnessTable();
  v50 = v18;
  v19 = swift_getWitnessTable();
  v75 = v18;
  v76 = v19;
  v52 = v13;
  v49 = swift_getWitnessTable();
  v79 = v2;
  v80 = &type metadata for LinearGradient;
  v81 = v13;
  v20 = v12;
  v44 = v12;
  v82 = v12;
  v83 = &protocol witness table for LinearGradient;
  v84 = v49;
  v21 = sub_AB5DA0();
  v53 = *(v21 - 8);
  __chkstk_darwin();
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v43 - v24;
  v25 = v57;
  v27 = type metadata accessor for MaterialyView.Style.Specs(0, v2, v57, v26);
  v46 = v27;
  v51 = *(v27 - 8);
  __chkstk_darwin();
  v29 = (&v43 - v28);
  v30 = v59;
  sub_8614FC(*(v59 + *(v58 + 36)), v2, v25, &v43 - v28, v31);
  (*(v15 + 16))(v17, v30, v2);
  v32 = v29 + *(v27 + 36);
  v72 = *(v32 + 1);
  v33 = *(v32 + 2);
  v73 = *(v32 + 1);
  v74 = v33;

  sub_AB5820();
  v71 = *v29;
  v34 = v61;
  sub_860854(&v71, 256, v2, &type metadata for Color, v20, &protocol witness table for Color);
  type metadata accessor for MaterialyView.Style.Specs.FillColor(0, v2, v25, v35);
  v36 = v60;
  v37 = v66;
  sub_AB7350();
  (*(v62 + 8))(v34, v37);
  v67 = v2;
  v68 = v25;
  v69 = v29;
  v70 = v30;
  sub_AB7A30();
  v38 = v54;
  v39 = v65;
  sub_AB72E0();
  (*(v63 + 8))(v36, v39);
  sub_863AF0(v45, &v72, &v79, 1, v38, v2, &type metadata for LinearGradient, v52, v23, v44, &protocol witness table for LinearGradient, v49);
  swift_getWitnessTable();
  v40 = v48;
  sub_7FF188();
  v41 = *(v53 + 8);
  v41(v23, v21);
  sub_7FF188();
  v41(v40, v21);
  return (*(v51 + 8))(v29, v46);
}

uint64_t sub_8614FC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v80 = a4;
  v8 = a1;
  type metadata accessor for MaterialyView.Style.Specs.Shadow(0, a2, a3, a5);
  __chkstk_darwin();
  v79 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v78 = &v69 - v10;
  __chkstk_darwin();
  v77 = &v69 - v11;
  __chkstk_darwin();
  v76 = &v69 - v12;
  v13 = sub_AB7AC0();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a2;
  v18 = a2;
  v19 = a3;
  type metadata accessor for MaterialyView.Style.Specs.FillColor(0, v18, a3, v20);
  __chkstk_darwin();
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v69 - v23;
  if (v8 == 2)
  {
    sub_AB74B0();
    v25 = sub_AB74C0();

    v26 = *(v14 + 104);
    v27 = v16;
    v26(v16, enum case for BlendMode.plusLighter(_:), v13);
    v28 = v26;
    v29 = v24;
    v79 = v24;
    v30 = v17;
    v74 = v19;
    sub_863F10(v25, v27, v17, v19, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182E8, &qword_B2BAA8);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_AF85D0;
    sub_AB74B0();
    sub_AB74C0();

    *(v31 + 32) = sub_AB7970();
    *(v31 + 40) = v32;
    sub_AB74B0();
    sub_AB74C0();

    *(v31 + 48) = sub_AB7970();
    *(v31 + 56) = v33;
    sub_AB74B0();
    sub_AB74C0();

    *(v31 + 64) = sub_AB7970();
    *(v31 + 72) = v34;
    sub_AB74B0();
    sub_AB74C0();

    *(v31 + 80) = sub_AB7970();
    *(v31 + 88) = v35;
    sub_AB7980();
    sub_AB7B60();
    sub_AB7B70();
    sub_AB5B40();
    *&v84 = 0x3FE0000000000000;
    *(&v84 + 1) = v87;
    v85 = v88;
    v86 = v89;
    memset(v90, 0, 40);
    sub_AB7480();
    v36 = sub_AB74C0();

    v37 = enum case for BlendMode.normal(_:);
    v38 = v28;
    v28(v27, enum case for BlendMode.normal(_:), v13);
    v39 = v76;
    v40 = v30;
    v41 = v30;
    v42 = v74;
    sub_863F9C(v36, v27, v76, 4.0, 0.0, 3.0, v41, v74);
    sub_AB74B0();
    v43 = sub_AB74C0();

    v38(v27, v37, v13);
    v44 = v77;
    sub_863F9C(v43, v27, v77, 3.0, 0.0, 1.0, v40, v42);
    v45 = v80;
    v46 = v79;
    v47 = v39;
    v48 = v44;
    v49 = v40;
  }

  else
  {
    sub_AB74B0();
    v50 = 0.23;
    if (a1)
    {
      v50 = 0.8;
    }

    v76 = *&v50;
    v51 = 3.0;
    if (a1)
    {
      v51 = 6.0;
    }

    v77 = *&v51;
    v52 = sub_AB74C0();

    v53 = *(v14 + 104);
    v53(v16, enum case for BlendMode.plusLighter(_:), v13);
    v75 = v17;
    sub_863F10(v52, v16, v17, v19, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182E8, &qword_B2BAA8);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_AF85D0;
    sub_AB74B0();
    sub_AB74C0();

    *(v54 + 32) = sub_AB7970();
    *(v54 + 40) = v55;
    sub_AB74B0();
    sub_AB74C0();

    *(v54 + 48) = sub_AB7970();
    *(v54 + 56) = v56;
    sub_AB74B0();
    sub_AB74C0();

    *(v54 + 64) = sub_AB7970();
    *(v54 + 72) = v57;
    sub_AB74B0();
    sub_AB74C0();

    *(v54 + 80) = sub_AB7970();
    *(v54 + 88) = v58;
    sub_AB7980();
    sub_AB7B60();
    sub_AB7B70();
    sub_AB5B40();
    *&v84 = 0x3FF0000000000000;
    *(&v84 + 1) = v81;
    v85 = v82;
    v86 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182F0, &unk_B2BAB0);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_AF85F0;
    sub_AB74B0();
    v60 = sub_AB74C0();

    *(v59 + 32) = v60;
    sub_AB7480();
    v61 = sub_AB74C0();

    *(v59 + 40) = v61;
    sub_AB7990();
    sub_AB7B90();
    sub_AB7BA0();
    sub_AB5B40();
    v73 = v87;
    sub_AB7480();
    v62 = sub_AB74C0();
    v63 = enum case for BlendMode.normal(_:);

    v72 = v88;
    v71 = v89;
    v53(v16, v63, v13);
    v42 = v19;
    v64 = v75;
    v70 = v22;
    v65 = v78;
    sub_863F9C(v62, v16, v78, 4.0, 0.0, 3.0, v75, v42);
    sub_AB74B0();
    v66 = sub_AB74C0();

    v53(v16, v63, v13);
    v67 = v79;
    sub_863F9C(v66, v16, v79, *&v77, 0.0, 1.0, v64, v42);
    *&v90[0] = v73;
    *(&v90[1] + 8) = v71;
    *(v90 + 8) = v72;
    v45 = v80;
    v46 = v70;
    v47 = v65;
    v48 = v67;
    v49 = v64;
  }

  return sub_864030(v46, &v84, v90, v47, v48, v49, v42, v45);
}

uint64_t sub_861EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a1;
  v20 = a2;
  v21 = a5;
  v7 = *(a4 + 8);
  sub_AB5770();
  v18 = sub_ABA9C0();
  v26 = a3;
  v27 = &type metadata for Color;
  v28 = &type metadata for EmptyView;
  v29 = v7;
  v30 = &protocol witness table for Color;
  v31 = &protocol witness table for EmptyView;
  sub_AB5DA0();
  sub_AB5D50();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_AB5850();
  sub_AB5D50();
  sub_AB5E80();
  sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C970, &qword_B31CF0);
  sub_36A00(&qword_E1C978, &qword_E1C970, &qword_B31CF0, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  sub_AB5770();
  v26 = AssociatedTypeWitness;
  v27 = &type metadata for Color;
  v28 = v9;
  v29 = &protocol witness table for Color;
  sub_AB5770();
  sub_AB5D50();
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  swift_getWitnessTable();
  sub_AB77D0();
  sub_AB5D50();
  sub_AB5D50();
  swift_getTupleTypeMetadata3();
  sub_AB7B40();
  swift_getWitnessTable();
  v10 = sub_AB77D0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v18 - v14;
  v22 = a3;
  v23 = a4;
  v24 = v19;
  v25 = v20;
  sub_AB7A30();
  sub_AB77C0();
  swift_getWitnessTable();
  sub_7FF188();
  v16 = *(v11 + 8);
  v16(v13, v10);
  sub_7FF188();
  return (v16)(v15, v10);
}

uint64_t sub_8622C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v123 = a2;
  v127 = a1;
  v116 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C970, &qword_B31CF0);
  v8 = *(a4 + 8);
  v133 = a3;
  *&v134 = v7;
  *(&v134 + 1) = v8;
  *&v135 = sub_36A00(&qword_E1C978, &qword_E1C970, &qword_B31CF0, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  sub_AB5770();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v133 = AssociatedTypeWitness;
  *&v134 = &type metadata for Color;
  *(&v134 + 1) = v10;
  *&v135 = &protocol witness table for Color;
  sub_AB5770();
  sub_AB5E80();
  sub_AB5D50();
  swift_getTupleTypeMetadata2();
  v107 = sub_AB7B40();
  v11 = v8;
  WitnessTable = swift_getWitnessTable();
  v108 = *(sub_AB77D0() - 8);
  __chkstk_darwin();
  v104 = &v84 - v12;
  v110 = v13;
  v109 = *(sub_AB5D50() - 8);
  __chkstk_darwin();
  v106 = &v84 - v14;
  v111 = v15;
  v115 = sub_AB5D50();
  v112 = *(v115 - 8);
  __chkstk_darwin();
  v114 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v113 = &v84 - v17;
  v100 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v99 = &v84 - v18;
  v133 = a3;
  *&v134 = &type metadata for Color;
  *(&v134 + 1) = &type metadata for EmptyView;
  *&v135 = v8;
  *(&v135 + 1) = &protocol witness table for Color;
  v136 = &protocol witness table for EmptyView;
  v89 = *(sub_AB5DA0() - 8);
  __chkstk_darwin();
  v88 = &v84 - v19;
  v90 = v20;
  v21 = sub_AB5D50();
  v95 = *(v21 - 8);
  __chkstk_darwin();
  v92 = &v84 - v22;
  v103 = AssociatedTypeWitness;
  v101 = v10;
  v23 = sub_AB5850();
  v96 = v21;
  v93 = v23;
  v97 = *(sub_AB5D50() - 8);
  __chkstk_darwin();
  v94 = &v84 - v24;
  v98 = v25;
  v26 = a3;
  v102 = sub_AB5D50();
  v119 = *(v102 - 8);
  __chkstk_darwin();
  v126 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v122 = &v84 - v28;
  v133 = a3;
  *&v134 = &type metadata for LinearGradient;
  *(&v134 + 1) = v8;
  *&v135 = &protocol witness table for LinearGradient;
  v29 = *(sub_AB5770() - 8);
  __chkstk_darwin();
  v31 = &v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v33 = &v84 - v32;
  v118 = v34;
  v120 = sub_ABA9C0();
  v125 = *(v120 - 8);
  __chkstk_darwin();
  v36 = &v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v124 = &v84 - v37;
  v121 = a4;
  v117 = type metadata accessor for MaterialyView.Style.Specs(0, v26, a4, v38);
  v39 = v127 + *(v117 + 40);
  if (*v39)
  {
    v133 = *v39;
    v134 = *(v39 + 8);
    v135 = *(v39 + 24);
    sub_860854(&v133, 256, v26, &type metadata for LinearGradient, v8, &protocol witness table for LinearGradient);
    v40 = v118;
    swift_getWitnessTable();
    sub_7FF188();
    v41 = *(v29 + 8);
    v41(v31, v40);
    v11 = v8;
    sub_7FF188();
    v41(v33, v40);
    (*(v29 + 32))(v36, v31, v40);
    (*(v29 + 56))(v36, 0, 1, v40);
  }

  else
  {
    (*(v29 + 56))(v36, 1, 1, v118);
    swift_getWitnessTable();
  }

  v42 = v125;
  v43 = *(v125 + 16);
  v86 = v125 + 16;
  v87 = v43;
  v44 = v120;
  v43(v124, v36, v120);
  v45 = *(v42 + 8);
  v125 = v42 + 8;
  v91 = v45;
  v45(v36, v44);
  v133 = sub_AB74B0();
  v46 = v88;
  v84 = v26;
  sub_8605E0(&v133, 1, v26, &type metadata for Color, v11, &protocol witness table for Color, v88);

  v47 = v90;
  v48 = swift_getWitnessTable();
  v49 = v92;
  sub_AB72C0();
  (*(v89 + 8))(v46, v47);
  v50 = v99;
  sub_AB5D00();
  v132[11] = v48;
  v132[12] = &protocol witness table for _ShadowEffect;
  v51 = v96;
  v52 = swift_getWitnessTable();
  v53 = v94;
  v54 = v103;
  sub_AB7360();
  (*(v100 + 8))(v50, v54);
  (*(v95 + 8))(v49, v51);
  v55 = v84;
  v56 = v121;
  type metadata accessor for MaterialyView.Style.Specs.Shadow(0, v84, v121, v57);
  v58 = swift_getWitnessTable();
  v132[9] = v52;
  v132[10] = v58;
  v59 = v98;
  v60 = swift_getWitnessTable();
  v61 = v36;
  v62 = v126;
  sub_AB7350();
  (*(v97 + 8))(v53, v59);
  v132[7] = v60;
  v132[8] = &protocol witness table for _BlendModeEffect;
  v63 = v102;
  v100 = swift_getWitnessTable();
  sub_7FF188();
  v64 = *(v119 + 8);
  v101 = v119 + 8;
  v103 = v64;
  v64(v62, v63);
  __chkstk_darwin();
  *(&v84 - 4) = v55;
  *(&v84 - 3) = v56;
  v65 = v127;
  *(&v84 - 2) = v123;
  *(&v84 - 1) = v65;
  sub_AB7A30();
  v66 = v104;
  sub_AB77C0();
  v67 = v110;
  v68 = swift_getWitnessTable();
  v69 = v106;
  sub_AB70E0();
  (*(v108 + 8))(v66, v67);
  v132[5] = v68;
  v132[6] = &protocol witness table for _CompositingGroupEffect;
  v70 = v111;
  v71 = swift_getWitnessTable();
  v72 = v114;
  sub_AB7350();
  (*(v109 + 8))(v69, v70);
  v132[3] = v71;
  v132[4] = &protocol witness table for _BlendModeEffect;
  v73 = v115;
  v127 = swift_getWitnessTable();
  v74 = v113;
  sub_7FF188();
  v75 = v112;
  v76 = *(v112 + 8);
  v76(v72, v73);
  v85 = v61;
  v77 = v120;
  v87(v61, v124, v120);
  v133 = v61;
  v78 = v126;
  v79 = v122;
  (*(v119 + 16))(v126, v122, v63);
  *&v134 = v78;
  (*(v75 + 16))(v72, v74, v73);
  *(&v134 + 1) = v72;
  v132[0] = v77;
  v132[1] = v63;
  v132[2] = v73;
  v128 = swift_getWitnessTable();
  v80 = v77;
  v129 = swift_getWitnessTable();
  v130 = v100;
  v131 = v127;
  sub_860684(&v133, 3uLL, v132);
  v76(v74, v73);
  v81 = v103;
  v103(v79, v63);
  v82 = v91;
  v91(v124, v80);
  v76(v72, v73);
  v81(v126, v63);
  return v82(v85, v80);
}

uint64_t sub_863374@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a2;
  v51 = a1;
  v67 = a5;
  v7 = sub_AB7AC0();
  v65 = *(v7 - 8);
  v66 = v7;
  __chkstk_darwin();
  v64 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v55 = v46 - v10;
  v58 = AssociatedTypeWitness;
  v57 = *(swift_getAssociatedConformanceWitness() + 8);
  v71 = AssociatedTypeWitness;
  v72 = &type metadata for Color;
  v73 = v57;
  v74 = &protocol witness table for Color;
  v54 = sub_AB5770();
  v63 = *(v54 - 8);
  __chkstk_darwin();
  v52 = v46 - v11;
  sub_AB5E80();
  v12 = sub_AB5D50();
  v13 = *(v12 - 8);
  v60 = v12;
  v61 = v13;
  __chkstk_darwin();
  v53 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v59 = v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C970, &qword_B31CF0);
  __chkstk_darwin();
  v18 = v46 - v17;
  v46[1] = a4;
  v19 = *(a4 + 8);
  v20 = sub_36A00(&qword_E1C978, &qword_E1C970, &qword_B31CF0, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  v71 = a3;
  v72 = v16;
  v73 = v19;
  v74 = v20;
  v21 = sub_AB5770();
  v47 = *(v21 - 8);
  v22 = v47;
  __chkstk_darwin();
  v24 = v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = v46 - v25;
  type metadata accessor for MaterialyView.Style.Specs(0, a3, a4, v26);
  sub_AB57F0();
  sub_860854(v18, 256, a3, v16, v19, v20);
  sub_12E1C(v18, &qword_E1C970, &qword_B31CF0);
  WitnessTable = swift_getWitnessTable();
  sub_7FF188();
  v27 = *(v22 + 8);
  v50 = v22 + 8;
  v56 = v27;
  (v27)(v24, v21);
  v28 = v55;
  sub_AB5D00();
  v71 = sub_AB74B0();
  v29 = v52;
  v30 = v58;
  sub_860854(&v71, 256, v58, &type metadata for Color, v57, &protocol witness table for Color);

  (*(v62 + 8))(v28, v30);
  v32 = v64;
  v31 = v65;
  v33 = v66;
  (*(v65 + 104))(v64, enum case for BlendMode.destinationOut(_:), v66);
  v34 = v54;
  v35 = swift_getWitnessTable();
  v36 = v53;
  sub_AB7350();
  (*(v31 + 8))(v32, v33);
  (*(v63 + 8))(v29, v34);
  v70[2] = v35;
  v70[3] = &protocol witness table for _BlendModeEffect;
  v37 = v60;
  v38 = swift_getWitnessTable();
  v39 = v59;
  sub_7FF188();
  v40 = v61;
  v41 = *(v61 + 8);
  v42 = v36;
  v41(v36, v37);
  v43 = v48;
  (*(v47 + 16))(v24, v48, v21);
  v71 = v24;
  (*(v40 + 16))(v42, v39, v37);
  v72 = v42;
  v70[0] = v21;
  v70[1] = v37;
  v68 = WitnessTable;
  v69 = v38;
  sub_860684(&v71, 2uLL, v70);
  v41(v39, v37);
  v44 = v56;
  (v56)(v43, v21);
  v41(v42, v37);
  return (v44)(v24, v21);
}

uint64_t sub_863AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v42 = a5;
  v40 = a4;
  v35 = a3;
  v36 = a8;
  v38 = a2;
  v45 = a9;
  v46 = a1;
  v31[1] = a10;
  v39 = *(a8 - 8);
  v43 = a12;
  __chkstk_darwin();
  v37 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_AB65F0();
  __chkstk_darwin();
  v41 = v31 - v15;
  v34 = *(a7 - 8);
  __chkstk_darwin();
  v17 = v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a6 - 8);
  v18 = v32;
  __chkstk_darwin();
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_AB5AD0();
  __chkstk_darwin();
  WitnessTable = swift_getWitnessTable();
  v47 = v21;
  v48 = a7;
  v49 = WitnessTable;
  v50 = a11;
  v33 = sub_AB5770();
  v23 = __chkstk_darwin();
  v24 = *(v18 + 16);
  v31[0] = a6;
  v24(v20, v46, a6, v23);
  sub_AB5AC0();
  v25 = v34;
  v26 = v38;
  (*(v34 + 16))(v17, v38, a7);
  sub_AB5760();
  v27 = v39;
  v28 = v36;
  v29 = v42;
  (*(v39 + 16))(v37, v42, v36);
  sub_AB7A30();
  (*(v27 + 8))(v29, v28);
  (*(v25 + 8))(v26, a7);
  (*(v32 + 8))(v46, v31[0]);
  sub_AB65E0();
  return sub_AB5D30();
}

uint64_t sub_863F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v7 = *(type metadata accessor for MaterialyView.Style.Specs.FillColor(0, a3, a4, a4) + 36);
  v8 = sub_AB7AC0();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a2, v8);
}

uint64_t sub_863F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, uint64_t a7@<X2>, uint64_t a8@<X3>)
{
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  v10 = *(type metadata accessor for MaterialyView.Style.Specs.Shadow(0, a7, a8, a8) + 44);
  v11 = sub_AB7AC0();
  v12 = *(*(v11 - 8) + 32);

  return v12(a3 + v10, a2, v11);
}

uint64_t sub_864030@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for MaterialyView.Style.Specs.FillColor(0, a6, a7, a4);
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v18 = type metadata accessor for MaterialyView.Style.Specs(0, a6, a7, v17);
  v19 = (a8 + v18[9]);
  v20 = a2[1];
  *v19 = *a2;
  v19[1] = v20;
  v19[2] = a2[2];
  v21 = a8 + v18[10];
  v22 = *(a3 + 16);
  *v21 = *a3;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(a3 + 32);
  v23 = v18[11];
  v25 = type metadata accessor for MaterialyView.Style.Specs.Shadow(0, a6, a7, v24);
  v28 = *(*(v25 - 8) + 32);
  (v28)((v25 - 8), a8 + v23, a4, v25);
  v26 = a8 + v18[12];

  return v28(v26, a5, v25);
}

uint64_t MaterialyButtonStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  type metadata accessor for MaterialyButtonStyle(0);
  sub_7ECAC8();
  sub_AB58F0();
  return sub_AB58F0();
}

uint64_t sub_86424C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB61D0();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for MaterialyButtonStyle(uint64_t a1)
{
  result = qword_E1CAF0;
  if (!qword_E1CAF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MaterialyButtonStyle.makeBody(configuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C980, &qword_B31D28);
  __chkstk_darwin();
  v6 = &v11 - v5;
  *v6 = sub_AB6440();
  *(v6 + 1) = 0x4020000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C988, &qword_B31D30);
  sub_864440(a1, v2, &v6[*(v7 + 44)]);
  if (sub_865190())
  {
    v8 = sub_AB6730();
  }

  else
  {
    v8 = sub_AB6750();
  }

  v9 = v8;
  sub_36B0C(v6, a2, &qword_E1C980, &qword_B31D28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_E1C990, &qword_B31D38);
  *(a2 + *(result + 36)) = v9;
  return result;
}

uint64_t sub_864440@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v107 = a3;
  v105 = sub_AB64A0();
  v103 = *(v105 - 8);
  __chkstk_darwin();
  v102 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CD58, &qword_B31EF8);
  __chkstk_darwin();
  v98 = &v81 - v5;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CD60, &qword_B31F00);
  __chkstk_darwin();
  v101 = &v81 - v6;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CD68, &unk_B31F08);
  __chkstk_darwin();
  v106 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = &v81 - v8;
  __chkstk_darwin();
  v104 = &v81 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1ADB0, &qword_B2E350);
  __chkstk_darwin();
  v89 = &v81 - v10;
  v11 = sub_AB6300();
  v12 = *(v11 - 8);
  v83 = v11;
  v84 = v12;
  __chkstk_darwin();
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_AB67F0();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CD70, &qword_B31F18);
  __chkstk_darwin();
  v21 = &v81 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CD78, &qword_B31F20);
  v85 = *(v22 - 8);
  v86 = v22;
  __chkstk_darwin();
  v81 = &v81 - v23;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CD80, &qword_B31F28) - 8;
  __chkstk_darwin();
  v25 = &v81 - v24;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CD88, &qword_B31F30);
  __chkstk_darwin();
  v108 = &v81 - v26;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CD90, &qword_B31F38);
  __chkstk_darwin();
  v93 = &v81 - v27;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CD98, &qword_B31F40);
  __chkstk_darwin();
  v95 = &v81 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v81 - v29;
  __chkstk_darwin();
  v94 = &v81 - v30;
  sub_AB6800();
  if (sub_AB6810())
  {
    v31 = 0.92;
  }

  else
  {
    v31 = 1.0;
  }

  sub_AB7BB0();
  v33 = v32;
  v35 = v34;
  (*(v16 + 32))(v21, v18, v15);
  v36 = &v21[*(v19 + 36)];
  *v36 = v31;
  *(v36 + 1) = v31;
  *(v36 + 2) = v33;
  *(v36 + 3) = v35;
  sub_AB62F0();
  sub_866784();
  sub_866AF8(&qword_E1CDB0, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v37 = v81;
  v38 = v83;
  sub_AB6F90();
  v39 = a1;
  (*(v84 + 8))(v14, v38);
  sub_12E1C(v21, &qword_E1CD70, &qword_B31F18);
  type metadata accessor for MaterialyButtonStyle(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19020, &qword_B2D158);
  sub_AB5900();
  sub_AB6BD0();
  v40 = sub_AB6BC0();
  v41 = v89;
  (*(*(v40 - 8) + 56))(v89, 1, 1, v40);
  v42 = sub_AB6C20();
  sub_12E1C(v41, &qword_E1ADB0, &qword_B2E350);
  KeyPath = swift_getKeyPath();
  (*(v85 + 32))(v25, v37, v86);
  v44 = v25;
  v45 = &v25[*(v82 + 44)];
  *v45 = KeyPath;
  v45[1] = v42;
  v89 = v39;
  LOBYTE(v86) = sub_AB6810() & 1;
  LODWORD(v86) = v86;
  sub_AB5900();
  sub_AB5900();
  sub_AB7A30();
  sub_AB5E90();
  *(&v109[3] + 7) = *(&v109[10] + 8);
  *(&v109[4] + 7) = *(&v109[11] + 8);
  *(&v109[5] + 7) = *(&v109[12] + 8);
  *(&v109[6] + 7) = *(&v109[13] + 8);
  *(v109 + 7) = *(&v109[7] + 8);
  *(&v109[1] + 7) = *(&v109[8] + 8);
  *(&v109[2] + 7) = *(&v109[9] + 8);
  v46 = sub_AB7A30();
  v48 = v47;
  v49 = v108;
  sub_36B0C(v44, v108, &qword_E1CD80, &qword_B31F28);
  v50 = v49 + *(v88 + 36);
  v51 = v109[5];
  *(v50 + 65) = v109[4];
  *(v50 + 81) = v51;
  *(v50 + 97) = v109[6];
  v52 = v109[1];
  *(v50 + 1) = v109[0];
  *(v50 + 17) = v52;
  v53 = v109[3];
  *(v50 + 33) = v109[2];
  *v50 = v86;
  v54 = *(&v109[6] + 15);
  *(v50 + 49) = v53;
  *(v50 + 112) = v54;
  *(v50 + 120) = v46;
  *(v50 + 128) = v48;
  sub_AB5900();
  sub_AB5900();
  sub_AB7A30();
  sub_AB5E90();
  v55 = v93;
  sub_36B0C(v108, v93, &qword_E1CD88, &qword_B31F30);
  v56 = (v55 + *(v90 + 36));
  v57 = *(&v109[19] + 8);
  v56[4] = *(&v109[18] + 8);
  v56[5] = v57;
  v56[6] = *(&v109[20] + 8);
  v58 = *(&v109[15] + 8);
  *v56 = *(&v109[14] + 8);
  v56[1] = v58;
  v59 = *(&v109[17] + 8);
  v56[2] = *(&v109[16] + 8);
  v56[3] = v59;
  v60 = sub_AB7A80();
  LOBYTE(v46) = sub_AB6810();
  v61 = v91;
  sub_36B0C(v55, v91, &qword_E1CD90, &qword_B31F38);
  v62 = v61 + *(v92 + 36);
  *v62 = v60;
  *(v62 + 8) = v46 & 1;
  v63 = v94;
  sub_36B0C(v61, v94, &qword_E1CD98, &qword_B31F40);
  v64 = v98;
  sub_AB6800();
  v65 = swift_getKeyPath();
  v66 = v64 + *(v97 + 36);
  *v66 = v65;
  *(v66 + 8) = 1;
  v67 = v102;
  sub_AB6490();
  sub_866A10();
  sub_866AF8(&qword_E1CDD0, &type metadata accessor for TitleOnlyLabelStyle, &protocol conformance descriptor for TitleOnlyLabelStyle);
  v68 = v101;
  v69 = v105;
  sub_AB6F90();
  (*(v103 + 8))(v67, v69);
  sub_12E1C(v64, &qword_E1CD58, &qword_B31EF8);
  v70 = sub_AB6C90();
  v71 = swift_getKeyPath();
  v72 = (v68 + *(v99 + 36));
  *v72 = v71;
  v72[1] = v70;
  if (sub_AB6810())
  {
    v73 = 0.8;
  }

  else
  {
    v73 = 1.0;
  }

  v74 = v96;
  sub_36B0C(v68, v96, &qword_E1CD60, &qword_B31F00);
  *(v74 + *(v100 + 36)) = v73;
  v75 = v104;
  sub_36B0C(v74, v104, &qword_E1CD68, &unk_B31F08);
  v76 = v95;
  sub_15F84(v63, v95, &qword_E1CD98, &qword_B31F40);
  v77 = v106;
  sub_15F84(v75, v106, &qword_E1CD68, &unk_B31F08);
  v78 = v107;
  sub_15F84(v76, v107, &qword_E1CD98, &qword_B31F40);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CDD8, &unk_B31FB0);
  sub_15F84(v77, v78 + *(v79 + 48), &qword_E1CD68, &unk_B31F08);
  sub_12E1C(v75, &qword_E1CD68, &unk_B31F08);
  sub_12E1C(v63, &qword_E1CD98, &qword_B31F40);
  sub_12E1C(v77, &qword_E1CD68, &unk_B31F08);
  return sub_12E1C(v76, &qword_E1CD98, &qword_B31F40);
}

uint64_t sub_865190()
{
  v1 = sub_AB6240();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    v6 = sub_AB9F40();
    v7 = sub_AB6A40();
    sub_AB4A90(v6, &dword_0, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_AB6230();
    swift_getAtKeyPath();
    v8 = sub_83315C(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    LOBYTE(v5) = v10[15];
  }

  return v5 & 1;
}

uint64_t sub_865338(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for MaterialyView.Style(319, result, *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_8653C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        v16 = (v15 + 2147483646) & 0x7FFFFFFF;
      }

      else
      {
        v16 = -1;
      }

      if (v16 + 1 >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_86554C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFD)
      {
        *(result + v8) = a2 + 2;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_8657A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19020, &qword_B2D158);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_86586C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19020, &qword_B2D158);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_865918(uint64_t a1)
{
  sub_8664E4(319, &qword_E1AA40, &type metadata for Bool, &type metadata accessor for Environment);
  if (v1 <= 0x3F)
  {
    sub_8659C0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_8659C0(uint64_t a1)
{
  if (!qword_E190A8)
  {
    sub_7ECAC8();
    v1 = sub_AB5910();
    if (!v2)
    {
      atomic_store(v1, &qword_E190A8);
    }
  }
}

uint64_t sub_865A1C(uint64_t *a1)
{
  sub_AB5770();
  sub_AB5E80();
  sub_AB5D50();
  sub_AB5770();
  sub_ABA9C0();
  sub_AB5DA0();
  sub_AB5D50();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_AB5850();
  sub_AB5D50();
  sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C970, &qword_B31CF0);
  sub_36A00(&qword_E1C978, &qword_E1C970, &qword_B31CF0, &protocol conformance descriptor for _ShadowShapeStyle<A>);
  sub_AB5770();
  sub_AB5770();
  sub_AB5D50();
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  swift_getWitnessTable();
  sub_AB77D0();
  sub_AB5D50();
  sub_AB5D50();
  swift_getTupleTypeMetadata3();
  sub_AB7B40();
  swift_getWitnessTable();
  sub_AB77D0();
  swift_getWitnessTable();
  sub_AB5EA0();
  sub_AB5D50();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_AB5DA0();
  return swift_getWitnessTable();
}

unint64_t sub_865E20()
{
  result = qword_E1CB30;
  if (!qword_E1CB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_E1C990, &qword_B31D38);
    sub_36A00(&qword_E1CB38, &qword_E1C980, &qword_B31D28, &protocol conformance descriptor for VStack<A>);
    sub_36A00(&qword_E1CB40, qword_E1CB48, &qword_B31E58, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1CB30);
  }

  return result;
}

uint64_t sub_865F04(uint64_t a1)
{
  result = sub_AB7AC0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_865F94(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_AB7AC0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_866054(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_AB7AC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_8660F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  type metadata accessor for MaterialyView.Style.Specs.FillColor(319, v4, v5, a4);
  if (v7 <= 0x3F)
  {
    type metadata accessor for MaterialyView.Style.Specs.Stroke(319, v4, v5, v6);
    if (v8 <= 0x3F)
    {
      sub_8664E4(319, qword_E1CC50, &type metadata for LinearGradient, &type metadata accessor for Optional);
      if (v10 <= 0x3F)
      {
        type metadata accessor for MaterialyView.Style.Specs.Shadow(319, v4, v5, v9);
        if (v11 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_866208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = type metadata accessor for MaterialyView.Style.Specs.FillColor(0, v7, v8, a4);
  v11 = *(v9 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = *(v11 + 48);

    return v12(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + *(a3 + 36) + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = type metadata accessor for MaterialyView.Style.Specs.Shadow(0, v7, v8, v10);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + *(a3 + 44);

    return v16(v17, a2, v15);
  }
}

uint64_t sub_866380(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 24);
  result = type metadata accessor for MaterialyView.Style.Specs.FillColor(0, v8, v9, a4);
  v12 = *(result - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  else
  {
    v14 = type metadata accessor for MaterialyView.Style.Specs.Shadow(0, v8, v9, v11);
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 44);

    return v15(v16, a2, a2, v14);
  }

  return result;
}

void sub_8664E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_866534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_866570(uint64_t a1)
{
  _s3__C8UIOffsetVMa_0(319);
  if (v1 <= 0x3F)
  {
    sub_AB7AC0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_866620(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_AB7AC0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_8666E0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_AB7AC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_866784()
{
  result = qword_E1CDA0;
  if (!qword_E1CDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1CD70, &qword_B31F18);
    sub_866AF8(&qword_E1CDA8, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1CDA0);
  }

  return result;
}

uint64_t sub_866840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a3;
  v15 = *(a5 - 8);
  __chkstk_darwin();
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin();
  v20 = &v26[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v21 + 16))(v20, v23, v22, v18);
  (*(v15 + 16))(v17, a1, a5);

  return sub_863AF0(v20, v17, a2, v27, v24, a4, a5, &type metadata for EmptyView, a8, a6, a7, &protocol witness table for EmptyView);
}

unint64_t sub_866A10()
{
  result = qword_E1CDB8;
  if (!qword_E1CDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1CD58, &qword_B31EF8);
    sub_866AF8(&qword_E1CDA8, &type metadata accessor for ButtonStyleConfiguration.Label, &protocol conformance descriptor for ButtonStyleConfiguration.Label);
    sub_36A00(&qword_E1CDC0, &qword_E1CDC8, &qword_B31FA8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1CDB8);
  }

  return result;
}

uint64_t sub_866AF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id NowPlaying.TrackTitleStackView.init()()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_86AC00(v2, &v0[v1], type metadata accessor for NowPlaying.TrackMetadata);
  v3 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v27 = v6;
  *(&v27 + 1) = v8;
  LOBYTE(v28) = 0;
  BYTE8(v28) = 0;
  *&v29 = 0x4040000000000000;
  *(&v29 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v30 = leading;
  *(&v30 + 1) = bottom;
  *&v31 = trailing;
  v32 = 0uLL;
  *(&v31 + 1) = 1;
  v33[0] = v6;
  v33[1] = v8;
  v34 = 0;
  v35 = 0;
  v36 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v38 = leading;
  v39 = bottom;
  v40 = trailing;
  v42 = 0;
  v43 = 0;
  v41 = 1;
  sub_7933C8(&v27, v50);
  sub_793424(v33);
  v12 = v30;
  *(v4 + 2) = v29;
  *(v4 + 3) = v12;
  v13 = v32;
  *(v4 + 4) = v31;
  *(v4 + 5) = v13;
  v14 = v28;
  *v4 = v27;
  *(v4 + 1) = v14;
  v15 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  v16 = [v5 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v17 = [v7 secondaryLabelColor];
  *&v44 = v16;
  *(&v44 + 1) = v17;
  LOBYTE(v45) = 0;
  BYTE8(v45) = 0;
  *&v46 = 0x4040000000000000;
  *(&v46 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v47 = leading;
  *(&v47 + 1) = bottom;
  *&v48 = trailing;
  v49 = 0uLL;
  *(&v48 + 1) = 1;
  v50[0] = v16;
  v50[1] = v17;
  v51 = 0;
  v52 = 0;
  v53 = 0x4040000000000000;
  v54 = NSDirectionalEdgeInsetsZero.top;
  v55 = leading;
  v56 = bottom;
  v57 = trailing;
  v59 = 0;
  v60 = 0;
  v58 = 1;
  sub_7933C8(&v44, v26);
  sub_793424(v50);
  v18 = v47;
  *(v15 + 2) = v46;
  *(v15 + 3) = v18;
  v19 = v49;
  *(v15 + 4) = v48;
  *(v15 + 5) = v19;
  v20 = v45;
  *v15 = v44;
  *(v15 + 1) = v20;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = 0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v21 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = *&sub_86A67C()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  v23 = *&sub_86AA04()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v22 addCoordinatedMarqueeView:v23];

  return v21;
}

char *NowPlaying.TrackTitleStackView.init(titleAttributes:subtitleAttributes:)(_OWORD *a1, _OWORD *a2)
{
  v5 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v6 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_86AC00(v6, &v2[v5], type metadata accessor for NowPlaying.TrackMetadata);
  v7 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v50 = v10;
  *(&v50 + 1) = v12;
  LOBYTE(v51) = 0;
  BYTE8(v51) = 0;
  *&v52 = 0x4040000000000000;
  *(&v52 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v53 = leading;
  *(&v53 + 1) = bottom;
  *&v54 = trailing;
  v55 = 0uLL;
  *(&v54 + 1) = 1;
  v56[0] = v10;
  v56[1] = v12;
  v57 = 0;
  v58 = 0;
  v59 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v61 = leading;
  v62 = bottom;
  v63 = trailing;
  v65 = 0;
  v66 = 0;
  v64 = 1;
  sub_7933C8(&v50, v85);
  sub_793424(v56);
  v16 = v53;
  *(v8 + 2) = v52;
  *(v8 + 3) = v16;
  v17 = v55;
  *(v8 + 4) = v54;
  *(v8 + 5) = v17;
  v18 = v51;
  *v8 = v50;
  *(v8 + 1) = v18;
  v19 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  v20 = [v9 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v21 = [v11 secondaryLabelColor];
  *&v67 = v20;
  *(&v67 + 1) = v21;
  LOBYTE(v68) = 0;
  BYTE8(v68) = 0;
  *&v69 = 0x4040000000000000;
  *(&v69 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v70 = leading;
  *(&v70 + 1) = bottom;
  *&v71 = trailing;
  v72 = 0uLL;
  *(&v71 + 1) = 1;
  v73[0] = v20;
  v73[1] = v21;
  v74 = 0;
  v75 = 0;
  v76 = 0x4040000000000000;
  v77 = NSDirectionalEdgeInsetsZero.top;
  v78 = leading;
  v79 = bottom;
  v80 = trailing;
  v83 = 0;
  v81 = 1;
  v82 = 0;
  sub_7933C8(&v67, v85);
  sub_793424(v73);
  v22 = v70;
  *(v19 + 2) = v69;
  *(v19 + 3) = v22;
  v23 = v72;
  *(v19 + 4) = v71;
  *(v19 + 5) = v23;
  v24 = v68;
  *v19 = v67;
  *(v19 + 1) = v24;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = 0;
  v49.receiver = v2;
  v49.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v25 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v26 = (v25 + OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes);
  swift_beginAccess();
  v27 = v26[1];
  v84[0] = *v26;
  v84[1] = v27;
  v28 = v26[2];
  v29 = v26[3];
  v30 = v26[5];
  v84[4] = v26[4];
  v84[5] = v30;
  v84[2] = v28;
  v84[3] = v29;
  v31 = a1[5];
  v33 = a1[2];
  v32 = a1[3];
  v26[4] = a1[4];
  v26[5] = v31;
  v26[2] = v33;
  v26[3] = v32;
  v34 = a1[1];
  *v26 = *a1;
  v26[1] = v34;
  v35 = v25;
  sub_7933C8(a1, v85);
  sub_793424(v84);
  v36 = (v35 + OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes);
  swift_beginAccess();
  v37 = v36[1];
  v85[0] = *v36;
  v85[1] = v37;
  v38 = v36[2];
  v39 = v36[3];
  v40 = v36[5];
  v85[4] = v36[4];
  v85[5] = v40;
  v85[2] = v38;
  v85[3] = v39;
  v41 = a2[5];
  v43 = a2[2];
  v42 = a2[3];
  v36[4] = a2[4];
  v36[5] = v41;
  v36[2] = v43;
  v36[3] = v42;
  v44 = a2[1];
  *v36 = *a2;
  v36[1] = v44;
  sub_7933C8(a2, &v48);
  sub_793424(v85);
  v45 = *&sub_86A67C()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  v46 = *&sub_86AA04()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v45 addCoordinatedMarqueeView:v46];

  sub_793424(a2);
  sub_793424(a1);

  return v35;
}

uint64_t NowPlaying.TrackTitleStackView.setMetadata(_:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE10, &qword_B31FC0);
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for NowPlaying.TrackMetadata(0) - 8;
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86AC00(a1, v10, type metadata accessor for NowPlaying.TrackMetadata);
  v11 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_86AB9C(v10, v2 + v11);
  swift_endAccess();
  v12 = sub_86A67C();
  sub_86AC00(a1 + *(v8 + 32), v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v13 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_15F84(&v12[v14], v5, &qword_E1CE10, &qword_B31FC0);
  swift_beginAccess();
  sub_86AC68(v7, &v12[v14]);
  swift_endAccess();
  sub_86F41C(v5);

  sub_12E1C(v5, &qword_E1CE10, &qword_B31FC0);
  sub_12E1C(v7, &qword_E1CE10, &qword_B31FC0);
  v15 = sub_86AA04();
  sub_15F84(a1 + *(v8 + 36), v7, &qword_E1CE10, &qword_B31FC0);
  v16 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_15F84(&v15[v16], v5, &qword_E1CE10, &qword_B31FC0);
  swift_beginAccess();
  sub_86AC68(v7, &v15[v16]);
  swift_endAccess();
  sub_86F41C(v5);

  sub_12E1C(v5, &qword_E1CE10, &qword_B31FC0);
  return sub_12E1C(v7, &qword_E1CE10, &qword_B31FC0);
}

double sub_8675D0(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin();
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86AC00(a1, v5, type metadata accessor for NowPlaying.TrackMetadata);
  v6 = *a2;
  v7 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_86AB9C(v5, v6 + v7);
  swift_endAccess();
  return result;
}

uint64_t NowPlaying.TrackTitleStackView.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  return sub_86AC00(v1 + v3, a1, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t NowPlaying.TrackTitleStackView.debugIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double NowPlaying.TrackTitleStackView.debugIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.init(isEnabled:contentGap:fadeInsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  return result;
}

double NowPlaying.TrackTitleStackView.Label.Attributes.init(font:color:isHidden:marquee:action:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a4[1];
  *&v15[7] = *a4;
  *&v15[23] = v9;
  *&v15[39] = a4[2];
  *&v17[1] = *v15;
  *&v17[17] = *&v15[16];
  *&v17[33] = *&v15[32];
  *&v16 = a1;
  *(&v16 + 1) = a2;
  v17[0] = a3;
  *&v17[48] = *&v15[47];
  *&v17[56] = a5;
  *&v18 = a6;
  *(&v18 + 1) = a7;
  v19[0] = a1;
  v19[1] = a2;
  v20 = a3;
  *&v23[15] = *&v15[47];
  v24 = a5;
  *v23 = *&v15[32];
  v22 = *&v15[16];
  v21 = *v15;
  v25 = a6;
  v26 = a7;
  sub_7933C8(&v16, v14);
  sub_793424(v19);
  v10 = *&v17[32];
  a8[2] = *&v17[16];
  a8[3] = v10;
  v11 = v18;
  a8[4] = *&v17[48];
  a8[5] = v11;
  result = *&v16;
  v13 = *v17;
  *a8 = v16;
  a8[1] = v13;
  return result;
}

id sub_86792C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE20, &qword_B31FC8);
  __chkstk_darwin();
  v60 = &v58 - v1;
  v2 = v0;
  v65 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v3 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v3)
  {
    v4 = *(*v3 + 424);
    v5 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
    v6 = sub_872BD8(&qword_E1CE18, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);

    v4(&v75, v2, v5, v6);

    if (v75)
    {
      v7 = v76;
      v8 = v77;
      v9 = sub_871C64(v75, v76);

      sub_870FE0(v7, v8);
      if (v9 >> 62)
      {
        goto LABEL_25;
      }

      v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
LABEL_5:
      v11 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
      swift_beginAccess();
      if (v10)
      {
        v12 = 0;
        v63 = v9 & 0xFFFFFFFFFFFFFF8;
        v64 = v9 & 0xC000000000000001;
        v61 = v10;
        v62 = v9;
        do
        {
          if (v64)
          {
            v14 = sub_ABAE20();
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_21:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v12 >= *(v63 + 16))
            {
              __break(1u);
LABEL_25:
              v10 = sub_ABB060();
              goto LABEL_5;
            }

            v14 = *(v9 + 8 * v12 + 32);

            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_21;
            }
          }

          v16 = *(v11 + 5);
          v73 = *(v11 + 4);
          v74 = v16;
          v17 = *(v11 + 3);
          v71 = *(v11 + 2);
          v72 = v17;
          v18 = *(v11 + 1);
          v69 = *v11;
          v70 = v18;
          v19 = v14[1];
          v20 = v14[2];
          v21 = v14[3];
          v22 = v14[4];
          v23 = v14[6];
          v84[4] = v14[5];
          v84[5] = v23;
          v84[2] = v21;
          v84[3] = v22;
          v84[0] = v19;
          v84[1] = v20;
          v24 = v14[2];
          v78 = v14[1];
          v79 = v24;
          v25 = v14[3];
          v26 = v14[4];
          v27 = v14[6];
          v82 = v14[5];
          v83 = v27;
          v80 = v25;
          v81 = v26;
          memmove(v14 + 1, v11, 0x60uLL);
          sub_7933C8(&v69, v68);
          sub_7933C8(&v69, v68);
          sub_7933C8(v84, v68);
          sub_793424(&v78);
          sub_86E658(v84);
          sub_793424(v84);
          sub_793424(&v69);
          v66 = v11[24];
          v28 = *&v2[v65];
          if (v28)
          {
            v29 = v2;
            v30 = *(*v28 + 256);

            v32 = v30(v31);

            if (v32 == 2)
            {
              v33 = *&v29[v65];
              if (v33)
              {
                v59 = *(*v33 + 208);

                v35 = v60;
                v59(v34);
                v2 = v29;

                v36 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v37 = (*(*(v36 - 8) + 48))(v35, 1, v36) == 1;
                sub_12E1C(v35, &qword_E1CE20, &qword_B31FC8);
                v66 &= v37;
              }

              else
              {
                v2 = v29;
                v38 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v39 = v60;
                (*(*(v38 - 8) + 56))(v60, 1, 1, v38);
                sub_12E1C(v39, &qword_E1CE20, &qword_B31FC8);
              }
            }

            else
            {
              v2 = v29;
            }

            v10 = v61;
            v9 = v62;
          }

          else
          {
          }

          v13 = *(v14 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
          [v13 setMarqueeEnabled:v66 withOptions:1];

          ++v12;
        }

        while (v15 != v10);
      }
    }
  }

  v40 = v2;
  v41 = sub_86A67C();
  v42 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v43 = *(v42 + 5);
  v68[4] = *(v42 + 4);
  v68[5] = v43;
  v44 = *(v42 + 3);
  v68[2] = *(v42 + 2);
  v68[3] = v44;
  v45 = *(v42 + 1);
  v68[0] = *v42;
  v68[1] = v45;
  v46 = *(v41 + 1);
  v47 = *(v41 + 2);
  v48 = *(v41 + 3);
  v49 = *(v41 + 4);
  v50 = *(v41 + 6);
  v82 = *(v41 + 5);
  v83 = v50;
  v80 = v48;
  v81 = v49;
  v78 = v46;
  v79 = v47;
  v51 = *(v41 + 2);
  v69 = *(v41 + 1);
  v70 = v51;
  v52 = *(v41 + 3);
  v53 = *(v41 + 4);
  v54 = *(v41 + 6);
  v73 = *(v41 + 5);
  v74 = v54;
  v71 = v52;
  v72 = v53;
  memmove(v41 + 16, v42, 0x60uLL);
  sub_7933C8(v68, v67);
  sub_7933C8(v68, v67);
  sub_7933C8(&v78, v67);
  sub_793424(&v69);
  sub_86E658(&v78);
  sub_793424(&v78);
  sub_793424(v68);

  v55 = *(v42 + 40);
  v67[0] = *(v42 + 24);
  v67[1] = v55;
  v67[2] = *(v42 + 56);

  sub_86D508(v56, v67);

  return [v40 setNeedsLayout];
}

void (*NowPlaying.TrackTitleStackView.titleAttributes.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_867F9C;
}

id sub_867FB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE20, &qword_B31FC8);
  __chkstk_darwin();
  v60 = &v58 - v1;
  v2 = v0;
  v65 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v3 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v3)
  {
    v4 = *(*v3 + 424);
    v5 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
    v6 = sub_872BD8(&qword_E1CE18, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);

    v4(v75, v2, v5, v6);

    if (v75[0])
    {
      v7 = v76;
      v8 = v77;
      v9 = sub_871D70(v75[1], v76, v77);

      sub_870FE0(v7, v8);
      if (v9 >> 62)
      {
        goto LABEL_25;
      }

      v10 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
LABEL_5:
      v11 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
      swift_beginAccess();
      if (v10)
      {
        v12 = 0;
        v63 = v9 & 0xFFFFFFFFFFFFFF8;
        v64 = v9 & 0xC000000000000001;
        v61 = v10;
        v62 = v9;
        do
        {
          if (v64)
          {
            v14 = sub_ABAE20();
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_21:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v12 >= *(v63 + 16))
            {
              __break(1u);
LABEL_25:
              v10 = sub_ABB060();
              goto LABEL_5;
            }

            v14 = *(v9 + 8 * v12 + 32);

            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_21;
            }
          }

          v16 = *(v11 + 5);
          v73 = *(v11 + 4);
          v74 = v16;
          v17 = *(v11 + 3);
          v71 = *(v11 + 2);
          v72 = v17;
          v18 = *(v11 + 1);
          v69 = *v11;
          v70 = v18;
          v19 = v14[1];
          v20 = v14[2];
          v21 = v14[3];
          v22 = v14[4];
          v23 = v14[6];
          v84[4] = v14[5];
          v84[5] = v23;
          v84[2] = v21;
          v84[3] = v22;
          v84[0] = v19;
          v84[1] = v20;
          v24 = v14[2];
          v78 = v14[1];
          v79 = v24;
          v25 = v14[3];
          v26 = v14[4];
          v27 = v14[6];
          v82 = v14[5];
          v83 = v27;
          v80 = v25;
          v81 = v26;
          memmove(v14 + 1, v11, 0x60uLL);
          sub_7933C8(&v69, v68);
          sub_7933C8(&v69, v68);
          sub_7933C8(v84, v68);
          sub_793424(&v78);
          sub_86E658(v84);
          sub_793424(v84);
          sub_793424(&v69);
          v66 = v11[24];
          v28 = *&v2[v65];
          if (v28)
          {
            v29 = v2;
            v30 = *(*v28 + 256);

            v32 = v30(v31);

            if (v32 == 2)
            {
              v33 = *&v29[v65];
              if (v33)
              {
                v59 = *(*v33 + 208);

                v35 = v60;
                v59(v34);
                v2 = v29;

                v36 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v37 = (*(*(v36 - 8) + 48))(v35, 1, v36) == 1;
                sub_12E1C(v35, &qword_E1CE20, &qword_B31FC8);
                v66 &= v37;
              }

              else
              {
                v2 = v29;
                v38 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v39 = v60;
                (*(*(v38 - 8) + 56))(v60, 1, 1, v38);
                sub_12E1C(v39, &qword_E1CE20, &qword_B31FC8);
              }
            }

            else
            {
              v2 = v29;
            }

            v10 = v61;
            v9 = v62;
          }

          else
          {
          }

          v13 = *(v14 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
          [v13 setMarqueeEnabled:v66 withOptions:1];

          ++v12;
        }

        while (v15 != v10);
      }
    }
  }

  v40 = v2;
  v41 = sub_86AA04();
  v42 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v43 = *(v42 + 5);
  v68[4] = *(v42 + 4);
  v68[5] = v43;
  v44 = *(v42 + 3);
  v68[2] = *(v42 + 2);
  v68[3] = v44;
  v45 = *(v42 + 1);
  v68[0] = *v42;
  v68[1] = v45;
  v46 = *(v41 + 1);
  v47 = *(v41 + 2);
  v48 = *(v41 + 3);
  v49 = *(v41 + 4);
  v50 = *(v41 + 6);
  v82 = *(v41 + 5);
  v83 = v50;
  v80 = v48;
  v81 = v49;
  v78 = v46;
  v79 = v47;
  v51 = *(v41 + 2);
  v69 = *(v41 + 1);
  v70 = v51;
  v52 = *(v41 + 3);
  v53 = *(v41 + 4);
  v54 = *(v41 + 6);
  v73 = *(v41 + 5);
  v74 = v54;
  v71 = v52;
  v72 = v53;
  memmove(v41 + 16, v42, 0x60uLL);
  sub_7933C8(v68, v67);
  sub_7933C8(v68, v67);
  sub_7933C8(&v78, v67);
  sub_793424(&v69);
  sub_86E658(&v78);
  sub_793424(&v78);
  sub_793424(v68);

  v55 = *(v42 + 40);
  v67[0] = *(v42 + 24);
  v67[1] = v55;
  v67[2] = *(v42 + 56);

  sub_86D508(v56, v67);

  return [v40 setNeedsLayout];
}

double sub_8685A0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = v4[2];
  v6 = v4[4];
  v7 = v4[5];
  v18 = v4[3];
  v19 = v6;
  v20 = v7;
  v8 = v4[1];
  v15 = *v4;
  v16 = v8;
  v17 = v5;
  sub_7933C8(&v15, v14);
  v9 = v18;
  v10 = v19;
  v11 = v16;
  a2[2] = v17;
  a2[3] = v9;
  v12 = v20;
  a2[4] = v10;
  a2[5] = v12;
  result = *&v15;
  *a2 = v15;
  a2[1] = v11;
  return result;
}

uint64_t sub_868654(_OWORD *a1, void *a2, void (*a3)(void))
{
  v6 = v3 + *a2;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 72);
  v10 = *(v6 + 80);
  v11 = *(v6 + 88);
  v12 = a1[3];
  *(v6 + 32) = a1[2];
  *(v6 + 48) = v12;
  v13 = a1[5];
  *(v6 + 64) = a1[4];
  *(v6 + 80) = v13;
  v14 = a1[1];
  *v6 = *a1;
  *(v6 + 16) = v14;
  sub_7933C8(a1, v16);

  sub_86F71C(v9, v10, v11);
  a3();
  return sub_793424(a1);
}

void (*NowPlaying.TrackTitleStackView.subtitleAttributes.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_868778;
}

void sub_868790(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v5 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    a3(v5);
  }
}

id sub_8687D4()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView;
  v2 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor:v9];

    [v0 addSubview:v8];
    v10 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

Swift::Void __swiftcall NowPlaying.TrackTitleStackView.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v85.receiver = v0;
  v85.super_class = v2;
  objc_msgSendSuper2(&v85, "layoutSubviews");
  v3 = sub_86A67C();
  v4 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 3);
  v86[2] = *(v4 + 2);
  v86[3] = v5;
  v6 = *(v4 + 5);
  v86[4] = *(v4 + 4);
  v86[5] = v6;
  v7 = *(v4 + 1);
  v86[0] = *v4;
  v86[1] = v7;
  if (v7 == 1)
  {

    v8 = 0.0;
  }

  else
  {
    sub_7933C8(v86, v79);
    v87.origin.x = 0.0;
    v87.origin.y = 0.0;
    v87.size.width = 0.0;
    v87.size.height = 0.0;
    if (CGRectGetHeight(v87) <= 0.0 || (v88.origin.x = 0.0, v88.origin.y = 0.0, v88.size.width = 0.0, v88.size.height = 0.0, CGRectGetHeight(v88) == 1.79769313e308))
    {
      [*&v3[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v3[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    v10 = v9;
    sub_AB9EC0();
    v8 = v10 + v11;
    if (v10 + v11 > 0.0)
    {
      [*&v86[0] ascender];
      v8 = v8 + v12;
    }

    if (v8 <= 0.0)
    {
      sub_793424(v86);
    }

    else
    {
      [*&v86[0] descender];
      v14 = v13;
      sub_793424(v86);

      v8 = v8 - v14;
    }
  }

  v15 = sub_86AA04();
  v16 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v17 = *(v16 + 3);
  v81 = *(v16 + 2);
  v82 = v17;
  v18 = *(v16 + 5);
  v83 = *(v16 + 4);
  v84 = v18;
  v19 = *(v16 + 1);
  *v79 = *v16;
  v80 = v19;
  if (v19)
  {

    v20 = 0.0;
  }

  else
  {
    sub_7933C8(v79, v73);
    v89.origin.x = 0.0;
    v89.origin.y = 0.0;
    v89.size.width = 0.0;
    v89.size.height = 0.0;
    if (CGRectGetHeight(v89) <= 0.0 || (v90.origin.x = 0.0, v90.origin.y = 0.0, v90.size.width = 0.0, v90.size.height = 0.0, CGRectGetHeight(v90) == 1.79769313e308))
    {
      [*&v15[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v15[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    v22 = v21;
    sub_AB9EC0();
    v20 = v22 + v23;
    if (v22 + v23 > 0.0)
    {
      [v79[0] ascender];
      v20 = v20 + v24;
    }

    if (v20 <= 0.0)
    {
      sub_793424(v79);
    }

    else
    {
      [v79[0] descender];
      v26 = v25;
      sub_793424(v79);

      v20 = v20 - v26;
    }
  }

  [v1 bounds];
  Width = CGRectGetWidth(v91);
  Height = v8 + v20;
  v29 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v30 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v30)
  {
    v31 = *(*v30 + 424);
    v32 = sub_872BD8(&qword_E1CE18, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);

    v31(v73, v1, v2, v32);

    if (v73[0])
    {
      v33 = v74;
      if (!v74)
      {

        goto LABEL_51;
      }

      v34 = *(&v74 + 1);
      v35 = *(v4 + 3);
      v75 = *(v4 + 2);
      v76 = v35;
      v36 = *(v4 + 5);
      v77 = *(v4 + 4);
      v78 = v36;
      v37 = *(v4 + 1);
      *v73 = *v4;
      v74 = v37;
      if (v37)
      {

        v38 = 0.0;
        if (!v34)
        {
          goto LABEL_49;
        }
      }

      else
      {
        sub_870F9C(v33);
        sub_7933C8(v73, v67);
        v92.origin.x = 0.0;
        v92.origin.y = 0.0;
        v92.size.width = 0.0;
        v92.size.height = 0.0;
        if (CGRectGetHeight(v92) <= 0.0 || (v93.origin.x = 0.0, v93.origin.y = 0.0, v93.size.width = 0.0, v93.size.height = 0.0, CGRectGetHeight(v93) == 1.79769313e308))
        {
          [*(v33 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
        }

        else
        {
          [*(v33 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{0.0, 0.0}];
        }

        v40 = v39;
        sub_AB9EC0();
        v38 = v40 + v41;
        if (v40 + v41 > 0.0)
        {
          [v73[0] ascender];
          v38 = v38 + v42;
        }

        if (v38 <= 0.0)
        {
          sub_793424(v73);
          if (!v34)
          {
            goto LABEL_49;
          }
        }

        else
        {
          [v73[0] descender];
          v44 = v43;
          sub_793424(v73);
          v38 = v38 - v44;
          if (!v34)
          {
LABEL_49:
            v96.origin.x = 0.0;
            v96.origin.y = 0.0;
            v96.size.width = Width;
            v96.size.height = Height;
            Height = CGRectGetHeight(v96);

            sub_870FE0(v33, v34);
            if (Height <= v38 + v20)
            {
              Height = v38 + v20;
            }

            goto LABEL_51;
          }
        }
      }

      v45 = *(v16 + 3);
      v69 = *(v16 + 2);
      v70 = v45;
      v46 = *(v16 + 5);
      v71 = *(v16 + 4);
      v72 = v46;
      v47 = *(v16 + 1);
      *v67 = *v16;
      v68 = v47;
      if (v47)
      {
        v20 = 0.0;
      }

      else
      {

        sub_7933C8(v67, &v66);
        v94.origin.x = 0.0;
        v94.origin.y = 0.0;
        v94.size.width = 0.0;
        v94.size.height = 0.0;
        if (CGRectGetHeight(v94) <= 0.0 || (v95.origin.x = 0.0, v95.origin.y = 0.0, v95.size.width = 0.0, v95.size.height = 0.0, CGRectGetHeight(v95) == 1.79769313e308))
        {
          [*(v34 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
        }

        else
        {
          [*(v34 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{0.0, 0.0}];
        }

        v49 = v48;
        sub_AB9EC0();
        v20 = v49 + v50;
        if (v49 + v50 > 0.0)
        {
          [v67[0] ascender];
          v20 = v20 + v51;
        }

        if (v20 <= 0.0)
        {
          sub_793424(v67);
        }

        else
        {
          [v67[0] descender];
          v53 = v52;
          sub_793424(v67);

          v20 = v20 - v53;
        }
      }

      goto LABEL_49;
    }
  }

LABEL_51:
  sub_ABA460(0.0, 0.0, Width, Height);
  v54 = sub_8687D4();
  *v73 = 0u;
  v74 = 0u;
  LOBYTE(v75) = 1;
  sub_ABA480();
  [v54 setFrame:?];

  v55 = *&v1[v29];
  if (v55)
  {

    [v1 bounds];
    sub_86911C(v55, v56, v57, v58, v59);
  }

  else
  {
    v60 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
    v61 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];

    [v1 bounds];
    sub_869B68(v60, v61, v62, v63, v64, v65, UIOffsetZero.horizontal, UIOffsetZero.vertical);
  }

  sub_86D738();
}

void sub_86911C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  Gliss.Transition<>.outputs(in:)(&v79, a2, a3, a4, a5);
  v8 = v79;
  v9 = v80;
  v11 = v81;
  v10 = *&v82;
  v13 = v83;
  v12 = v84;
  v15 = v85;
  v14 = v86;
  v77 = v88;
  v78 = *&v87;
  v76 = v89;
  v65 = v91;
  v66 = v90;
  v63 = v93;
  v64 = v92;
  v61 = v95;
  v62 = v94;
  v59 = v97;
  v60 = v96;
  v49 = v99;
  v50 = v98;
  v51 = v100;
  v74 = v102;
  v75 = v101;
  v72 = v104;
  v73 = v103;
  v70 = v106;
  v71 = v105;
  v68 = v108;
  v69 = v107;
  v57 = v110;
  v58 = v109;
  v55 = v112;
  v56 = v111;
  v53 = v114;
  v54 = v113;
  v52 = v115;
  v67 = v116;
  v16 = *(*a1 + 424);
  v17 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v18 = sub_872BD8(&qword_E1CE18, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);
  v16(&v79, v6, v17, v18);
  v19 = *&v79;
  if (v79 != 0.0)
  {
    v21 = *&v80;
    v20 = *&v81;
    v22 = v82;

    sub_870F9C(v20);
    [v6 bounds];
    sub_869B68(v19, v21, v23, v24, v25, v26, v8, v9);
    v27 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
    [*(v19 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v11];
    if (v21)
    {
      [*(v21 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v11];
    }

    v28 = *(v19 + v27);
    v79 = v10;
    v80 = v13;
    v81 = v12;
    v82 = v15;
    v83 = *&v14;
    v84 = v78;
    v85 = v77;
    v86 = v76;
    v87 = v66;
    v88 = v65;
    v89 = v64;
    v90 = v63;
    v91 = v62;
    v92 = v61;
    v93 = v60;
    v94 = v59;
    [v28 setTransform3D:{&v79, *&v10, *&v13, *&v12, v15, v14}];
    if (v21)
    {
      v29 = *(v21 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v79 = v44;
      v80 = v45;
      v81 = v46;
      v82 = v47;
      v83 = v48;
      v84 = v78;
      v85 = v77;
      v86 = v76;
      v87 = v66;
      v88 = v65;
      v89 = v64;
      v90 = v63;
      v91 = v62;
      v92 = v61;
      v93 = v60;
      v94 = v59;
      [v29 setTransform3D:&v79];

      sub_870F9C(v20);
      sub_873344(v19, v21, v20);

      v30 = sub_870FE0(v20, v22);
      if (!v20)
      {
        v31 = v19;
        v32 = v21;
LABEL_14:
        v42 = 0;
        v43 = v22;
LABEL_15:
        sub_8733A4(v31, v32, v42, v43);
        return;
      }
    }

    else
    {

      sub_870F9C(v20);
      sub_873344(v19, 0, v20);

      v30 = sub_870FE0(v20, v22);
      if (!v20)
      {
        v31 = v19;
        v32 = 0;
        goto LABEL_14;
      }
    }

    [v6 bounds];
    sub_869B68(v20, v22, v33, v34, v35, v36, v50, v49);
    v37 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
    [*(v20 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v51];
    v38 = v75;
    if (v22)
    {
      [*(v22 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v51];
      v38 = v75;
    }

    v39 = *(v20 + v37);
    v79 = v38;
    v80 = v74;
    v81 = v73;
    v82 = v72;
    v83 = v71;
    v84 = v70;
    v85 = v69;
    v86 = v68;
    v87 = v58;
    v88 = v57;
    v89 = v56;
    v90 = v55;
    v91 = v54;
    v92 = v53;
    v93 = v52;
    v94 = v67;
    v40 = v38;
    [v39 setTransform3D:&v79];
    if (v22)
    {
      v41 = *(v22 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v79 = v40;
      v80 = v74;
      v81 = v73;
      v82 = v72;
      v83 = v71;
      v84 = v70;
      v85 = v69;
      v86 = v68;
      v87 = v58;
      v88 = v57;
      v89 = v56;
      v90 = v55;
      v91 = v54;
      v92 = v53;
      v93 = v52;
      v94 = v67;
      [v41 setTransform3D:&v79];
      sub_8733A4(v19, v21, v20, v22);

      return;
    }

    v31 = v19;
    v32 = v21;
    v42 = v20;
    v43 = 0;
    goto LABEL_15;
  }
}

__n128 Gliss.Transition<>.outputs(in:)@<Q0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE20, &qword_B31FC8);
  v11 = __chkstk_darwin();
  v13 = &v56 - v12;
  v14 = *(*v5 + 232);
  v15 = v14(v11);
  v16 = (v14)();
  if (v16 == 2)
  {
    v17 = 1.0 - v15;
    horizontal = UIOffsetZero.horizontal;
    vertical = UIOffsetZero.vertical;
  }

  else
  {
    v20 = v16;
    v76.origin.x = a2;
    v76.origin.y = a3;
    v76.size.width = a4;
    v76.size.height = a5;
    v21 = v15 * CGRectGetWidth(v76);
    v17 = 1.0;
    vertical = 0.0;
    if (v20)
    {
      horizontal = v21;
    }

    else
    {
      horizontal = -v21;
    }
  }

  v22 = *&CATransform3DIdentity.m41;
  v71 = *&CATransform3DIdentity.m43;
  v70 = v22;
  v23 = *&CATransform3DIdentity.m31;
  v69 = *&CATransform3DIdentity.m33;
  v68 = v23;
  v24 = *&CATransform3DIdentity.m21;
  v67 = *&CATransform3DIdentity.m23;
  v66 = v24;
  v25 = *&CATransform3DIdentity.m11;
  v65 = *&CATransform3DIdentity.m13;
  v64 = v25;
  v26 = (*v5 + 432);
  v27 = *v26;
  v28 = (*v26)();
  v29 = v64;
  v30 = v65;
  v31 = v66;
  v32 = v67;
  v33 = v68;
  v34 = v69;
  v35 = v70;
  v36 = v71;
  if (v73 != 2)
  {
    (*(*v5 + 208))(v28, v64, v65, v66, v67, v68, v69, v70, v71);
    v37 = type metadata accessor for NowPlaying.TrackMetadata(0);
    v38 = (*(*(v37 - 8) + 48))(v13, 1, v37);
    v28 = sub_12E1C(v13, &qword_E1CE20, &qword_B31FC8);
    v29 = v64;
    v30 = v65;
    v31 = v66;
    v32 = v67;
    v33 = v68;
    v34 = v69;
    v35 = v70;
    v36 = v71;
    if (v38 == 1)
    {
      v28 = CATransform3DMakeScale(&v72, v15 * 0.1 + 1.0, v15 * 0.1 + 1.0, 1.0);
      v30 = *&v72.m13;
      v29 = *&v72.m11;
      v32 = *&v72.m23;
      v31 = *&v72.m21;
      v34 = *&v72.m33;
      v33 = *&v72.m31;
      v35 = *&v72.m41;
      v36 = *&v72.m43;
    }
  }

  v56 = v36;
  v57 = v35;
  v58 = v34;
  v59 = v33;
  v60 = v32;
  v61 = v31;
  v62 = v30;
  v63 = v29;
  v39 = (v14)(v28);
  if (v39 == 2)
  {
    v41 = UIOffsetZero.horizontal;
    v40 = UIOffsetZero.vertical;
    v42 = v15;
  }

  else
  {
    v43 = v39;
    v77.origin.x = a2;
    v77.origin.y = a3;
    v77.size.width = a4;
    v77.size.height = a5;
    Width = CGRectGetWidth(v77);
    v78.size.height = a5;
    v45 = horizontal;
    v46 = vertical;
    v47 = v17;
    v48 = Width;
    v78.origin.x = a2;
    v78.origin.y = a3;
    v78.size.width = a4;
    v49 = v15 * CGRectGetWidth(v78);
    v50 = v49 - v48;
    v42 = 1.0;
    v40 = 0.0;
    v51 = v48 - v49;
    v17 = v47;
    vertical = v46;
    horizontal = v45;
    if (v43)
    {
      v41 = v50;
    }

    else
    {
      v41 = v51;
    }
  }

  (v27)(&v74);
  if (v75 != 2 && (v75 & 0x100) != 0)
  {
    CATransform3DMakeScale(&v72, (v15 + -1.0) * 0.1 + 1.0, (v15 + -1.0) * 0.1 + 1.0, 1.0);
    v64 = *&v72.m11;
    v65 = *&v72.m13;
    v66 = *&v72.m21;
    v67 = *&v72.m23;
    v68 = *&v72.m31;
    v69 = *&v72.m33;
    v70 = *&v72.m41;
    v71 = *&v72.m43;
  }

  *a1 = horizontal;
  *(a1 + 8) = vertical;
  *(a1 + 16) = v17;
  *(a1 + 40) = v62;
  *(a1 + 24) = v63;
  *(a1 + 72) = v60;
  *(a1 + 56) = v61;
  *(a1 + 104) = v58;
  *(a1 + 88) = v59;
  *(a1 + 136) = v56;
  *(a1 + 120) = v57;
  *(a1 + 152) = v41;
  *(a1 + 160) = v40;
  *(a1 + 168) = v42;
  v52 = v65;
  *(a1 + 176) = v64;
  *(a1 + 192) = v52;
  v53 = v67;
  *(a1 + 208) = v66;
  *(a1 + 224) = v53;
  v54 = v69;
  *(a1 + 240) = v68;
  *(a1 + 256) = v54;
  result = v71;
  *(a1 + 272) = v70;
  *(a1 + 288) = result;
  return result;
}

void sub_869B68(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  v9 = v8;
  v16 = *(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets + 16);
  v17 = &v8[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v18 = *(v17 + 3);
  v88[2] = *(v17 + 2);
  v88[3] = v18;
  v19 = *(v17 + 5);
  v88[4] = *(v17 + 4);
  v88[5] = v19;
  v20 = *(v17 + 1);
  v88[0] = *v17;
  v88[1] = v20;
  if (v20 == 1)
  {
    v76 = 0.0;
  }

  else
  {
    v21 = v16;
    sub_7933C8(v88, &v82);
    v89.origin.x = a3;
    v89.origin.y = a4;
    v89.size.width = a5;
    v89.size.height = a6;
    if (CGRectGetHeight(v89) <= 0.0 || (v90.origin.x = a3, v90.origin.y = a4, v90.size.width = a5, v90.size.height = a6, CGRectGetHeight(v90) == 1.79769313e308))
    {
      [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{a5, a6}];
    }

    v23 = v22;
    sub_AB9EC0();
    v25 = v24;
    sub_793424(v88);
    v76 = v23 + v25;
    v16 = v21;
  }

  v91.origin.x = a3;
  v91.origin.y = a4;
  v91.size.width = a5;
  v91.size.height = a6;
  Width = CGRectGetWidth(v91);
  if (a2)
  {
    top = *(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets);
    v27 = &v9[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v28 = *(v27 + 2);
    v29 = *(v27 + 3);
    v30 = *v27;
    v83 = *(v27 + 1);
    v84 = v28;
    v31 = *(v27 + 4);
    v32 = *(v27 + 5);
    v85 = v29;
    v86 = v31;
    v87 = v32;
    v82 = v30;
    LOBYTE(v27) = v83;

    v33 = 0.0;
    if ((v27 & 1) == 0)
    {
      rect = v16;
      sub_7933C8(&v82, v81);
      v92.origin.x = a3;
      v92.origin.y = a4;
      v92.size.width = a5;
      v92.size.height = a6;
      if (CGRectGetHeight(v92) <= 0.0 || (v93.origin.x = a3, v93.origin.y = a4, v93.size.width = a5, v93.size.height = a6, CGRectGetHeight(v93) == 1.79769313e308))
      {
        v34 = top;
        [*(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
      }

      else
      {
        v34 = top;
        [*(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{a5, a6}];
      }

      v36 = v35;
      sub_AB9EC0();
      v38 = v37;
      sub_793424(&v82);
      v33 = v36 + v38;
      v16 = rect;
      top = v34;
    }

    recta = v33;
    v94.origin.x = a3;
    v94.origin.y = a4;
    v94.size.width = a5;
    v94.size.height = a6;
    v78 = CGRectGetWidth(v94);

    v39 = 0.0;
    v77 = 0.0;
  }

  else
  {
    v40 = &v9[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    if (v40[16])
    {
      top = UIEdgeInsetsZero.top;
      v78 = 0.0;
      recta = 0.0;
      v77 = 0.0;
      v39 = 0.0;
    }

    else
    {
      top = *&sub_86AA04()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets];

      v41 = *(*&v9[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v77 = UIView.untransformedFrame.getter();
      v78 = v42;
      v39 = v43;
      recta = v44;
    }
  }

  v45 = v16 + top;
  v95.origin.x = a3;
  v95.origin.y = a4;
  v95.size.width = a5;
  v95.size.height = a6;
  v46 = CGRectGetWidth(v95);
  v96.origin.x = 0.0;
  v96.origin.y = 0.0;
  v96.size.width = Width;
  v96.size.height = v76;
  Height = CGRectGetHeight(v96);
  v97.origin.x = v77;
  v97.size.width = v78;
  v97.origin.y = v39;
  v97.size.height = recta;
  v48 = CGRectGetHeight(v97);
  sub_ABA460(0.0, 0.0, v46, Height + v48 - v45);
  v82 = 0u;
  v83 = 0u;
  LOBYTE(v84) = 1;
  sub_ABA480();
  sub_ABA4E0();
  MinY = CGRectGetMinY(v98);
  v99.origin.x = 0.0;
  v99.origin.y = MinY;
  v99.size.width = Width;
  v99.size.height = v76;
  MaxY = CGRectGetMaxY(v99);
  v51 = *(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v52 = sub_8687D4();
  [v9 convertRect:v52 toCoordinateSpace:{0.0, MinY, Width, v76}];

  v53 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView;
  v54 = *&v9[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  sub_ABA480();

  sub_ABA4E0();
  UIView.untransformedFrame.setter(v55, v56, v57, v58);
  if (a2)
  {
    [v9 convertRect:*&v9[v53] toCoordinateSpace:{v77, MaxY - v45, v78, recta}];
    v59 = *&v9[v53];
    sub_ABA480();

    sub_ABA4E0();
    UIView.untransformedFrame.setter(v60, v61, v62, v63);
  }

  v64 = [v51 superview];
  if (!v64 || (v65 = v64, v66 = *&v9[v53], sub_13C80(0, &qword_E1E050, UIView_ptr), v67 = v66, v68 = sub_ABA790(), v65, v67, (v68 & 1) == 0))
  {
    [*&v9[v53] addSubview:v51];
  }

  if (a2)
  {
    v69 = *(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);

    v70 = [v69 superview];
    if (!v70 || (v71 = v70, v72 = *&v9[v53], sub_13C80(0, &qword_E1E050, UIView_ptr), v73 = v72, v74 = sub_ABA790(), v71, v73, (v74 & 1) == 0))
    {
      [*&v9[v53] addSubview:v69];
    }
  }
}

void NowPlaying.TrackTitleStackView.intrinsicContentSize.getter(uint64_t a1)
{
  v2 = sub_86A67C();
  v3 = (v1 + OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes);
  swift_beginAccess();
  v4 = v3[3];
  v21[2] = v3[2];
  v21[3] = v4;
  v5 = v3[5];
  v21[4] = v3[4];
  v21[5] = v5;
  v6 = v3[1];
  v21[0] = *v3;
  v21[1] = v6;
  if ((v6 & 1) == 0)
  {
    sub_7933C8(v21, &v15);
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = 0.0;
    v22.size.height = 0.0;
    if (CGRectGetHeight(v22) <= 0.0 || (v23.origin.x = 0.0, v23.origin.y = 0.0, v23.size.width = 0.0, v23.size.height = 0.0, CGRectGetHeight(v23) == 1.79769313e308))
    {
      [*&v2[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v2[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    sub_793424(v21);
  }

  v7 = sub_86AA04();
  v8 = (v1 + OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes);
  swift_beginAccess();
  v9 = v8[2];
  v10 = v8[3];
  v11 = *v8;
  v16 = v8[1];
  v17 = v9;
  v12 = v8[4];
  v13 = v8[5];
  v18 = v10;
  v19 = v12;
  v20 = v13;
  v15 = v11;
  if ((v16 & 1) == 0)
  {
    sub_7933C8(&v15, v14);
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.width = 0.0;
    v24.size.height = 0.0;
    if (CGRectGetHeight(v24) <= 0.0 || (v25.origin.x = 0.0, v25.origin.y = 0.0, v25.size.width = 0.0, v25.size.height = 0.0, CGRectGetHeight(v25) == 1.79769313e308))
    {
      [*&v7[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v7[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    sub_793424(&v15);
  }
}

id sub_86A4B8(uint64_t a1)
{
  v2 = v1;
  [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) removeFromSuperview];
  v3 = sub_86A67C();
  v4 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 5);
  v24[4] = *(v4 + 4);
  v24[5] = v5;
  v6 = *(v4 + 3);
  v24[2] = *(v4 + 2);
  v24[3] = v6;
  v7 = *(v4 + 1);
  v24[0] = *v4;
  v24[1] = v7;
  v8 = *(v3 + 1);
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v11 = *(v3 + 4);
  v12 = *(v3 + 6);
  v23[4] = *(v3 + 5);
  v23[5] = v12;
  v23[2] = v10;
  v23[3] = v11;
  v23[0] = v8;
  v23[1] = v9;
  v13 = *(v3 + 2);
  v25[0] = *(v3 + 1);
  v25[1] = v13;
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);
  v16 = *(v3 + 6);
  v25[4] = *(v3 + 5);
  v25[5] = v16;
  v25[2] = v14;
  v25[3] = v15;
  memmove(v3 + 16, v4, 0x60uLL);
  sub_7933C8(v24, v22);
  sub_7933C8(v24, v22);
  sub_7933C8(v23, v22);
  sub_793424(v25);
  sub_86E658(v23);
  sub_793424(v23);
  sub_793424(v24);

  v17 = *(*&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v18 = *&sub_86AA04()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v17 addCoordinatedMarqueeView:v18];

  v19 = *(v4 + 40);
  v22[0] = *(v4 + 24);
  v22[1] = v19;
  v22[2] = *(v4 + 56);

  sub_86D508(v20, v22);

  return [v2 setNeedsLayout];
}

char *sub_86A67C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE10, &qword_B31FC0);
  __chkstk_darwin();
  v2 = &v14[-v1];
  v3 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel])
  {
    v4 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
  }

  else
  {
    v5 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v6 = type metadata accessor for NowPlaying.TrackMetadata(0);
    sub_86AC00(&v5[*(v6 + 24)], v2, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
    v8 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
    swift_beginAccess();
    v9 = *(v8 + 3);
    v15[2] = *(v8 + 2);
    v15[3] = v9;
    v10 = *(v8 + 5);
    v15[4] = *(v8 + 4);
    v15[5] = v10;
    v11 = *(v8 + 1);
    v15[0] = *v8;
    v15[1] = v11;
    type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
    swift_allocObject();
    sub_7933C8(v15, v14);
    v12 = v0;
    v4 = sub_87169C(v2, v15, v12);

    sub_793424(v15);
    *&v0[v3] = v4;
  }

  return v4;
}

id sub_86A858(uint64_t a1)
{
  v2 = v1;
  [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) removeFromSuperview];
  v3 = sub_86AA04();
  v4 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 5);
  v23[4] = *(v4 + 4);
  v23[5] = v5;
  v6 = *(v4 + 3);
  v23[2] = *(v4 + 2);
  v23[3] = v6;
  v7 = *(v4 + 1);
  v23[0] = *v4;
  v23[1] = v7;
  v8 = *(v3 + 1);
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v11 = *(v3 + 4);
  v12 = *(v3 + 6);
  v22[4] = *(v3 + 5);
  v22[5] = v12;
  v22[2] = v10;
  v22[3] = v11;
  v22[0] = v8;
  v22[1] = v9;
  v13 = *(v3 + 2);
  v24[0] = *(v3 + 1);
  v24[1] = v13;
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);
  v16 = *(v3 + 6);
  v24[4] = *(v3 + 5);
  v24[5] = v16;
  v24[2] = v14;
  v24[3] = v15;
  memmove(v3 + 16, v4, 0x60uLL);
  sub_7933C8(v23, v21);
  sub_7933C8(v23, v21);
  sub_7933C8(v22, v21);
  sub_793424(v24);
  sub_86E658(v22);
  sub_793424(v22);
  sub_793424(v23);

  v17 = *&sub_86A67C()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v17 addCoordinatedMarqueeView:*(*&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view)];

  v18 = *(v4 + 40);
  v21[0] = *(v4 + 24);
  v21[1] = v18;
  v21[2] = *(v4 + 56);

  sub_86D508(v19, v21);

  return [v2 setNeedsLayout];
}

char *sub_86AA04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE10, &qword_B31FC0);
  __chkstk_darwin();
  v2 = &v13[-v1];
  v3 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel])
  {
    v4 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];
  }

  else
  {
    v5 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v6 = type metadata accessor for NowPlaying.TrackMetadata(0);
    sub_15F84(&v5[*(v6 + 28)], v2, &qword_E1CE10, &qword_B31FC0);
    v7 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v8 = *(v7 + 3);
    v14[2] = *(v7 + 2);
    v14[3] = v8;
    v9 = *(v7 + 5);
    v14[4] = *(v7 + 4);
    v14[5] = v9;
    v10 = *(v7 + 1);
    v14[0] = *v7;
    v14[1] = v10;
    type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
    swift_allocObject();
    sub_7933C8(v14, v13);
    v11 = v0;
    v4 = sub_87169C(v2, v14, v11);

    sub_793424(v14);
    *&v0[v3] = v4;
  }

  return v4;
}

uint64_t sub_86AB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_86AC00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_86AC68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE10, &qword_B31FC0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double NowPlaying.TrackTitleStackView.transitionWillBegin(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = a1;

  v5 = sub_8687D4();
  [v5 setClipsToBounds:*&v2[v4] != 0];

  [v2 setNeedsLayout];
  v6 = *(*a1 + 424);
  v7 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v8 = sub_872BD8(&qword_E1CE18, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);
  v6(&v24, v2, v7, v8);
  if (v24)
  {
    v10 = v25;
    v11 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
    swift_beginAccess();
    v12 = *(v11 + 40);
    v24 = *(v11 + 24);
    v25 = v12;
    v26 = *(v11 + 56);

    sub_86D508(v13, &v24);

    v14 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v15 = *(v14 + 40);
    v23[0] = *(v14 + 24);
    v23[1] = v15;
    v23[2] = *(v14 + 56);

    sub_86D508(v16, v23);

    v17 = *(v11 + 40);
    v22[0] = *(v11 + 24);
    v22[1] = v17;
    v22[2] = *(v11 + 56);
    if (v10)
    {

      sub_86D508(v18, v22);

      v19 = *(&v10 + 1);
    }

    else
    {
      sub_86D508(0, v22);
      v19 = 0;
    }

    v20 = *(v14 + 40);
    v21[0] = *(v14 + 24);
    v21[1] = v20;
    v21[2] = *(v14 + 56);
    sub_86D508(v19, v21);

    return sub_870FE0(v10, *(&v10 + 1));
  }

  return result;
}

double NowPlaying.TrackTitleStackView.transitionDidEnd(_:)(char *a1)
{
  v2 = v1;
  v198 = a1;
  v195 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v189 = *(v195 - 8);
  __chkstk_darwin();
  v171 = &v158 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE28, &qword_B31FD0);
  __chkstk_darwin();
  v175 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v190 = &v158 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE10, &qword_B31FC0);
  __chkstk_darwin();
  v166 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v165 = &v158 - v7;
  __chkstk_darwin();
  v167 = &v158 - v8;
  __chkstk_darwin();
  v177 = &v158 - v9;
  __chkstk_darwin();
  v182 = &v158 - v10;
  __chkstk_darwin();
  v172 = &v158 - v11;
  __chkstk_darwin();
  v187 = &v158 - v12;
  __chkstk_darwin();
  v191 = &v158 - v13;
  v196 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v192 = *(v196 - 8);
  __chkstk_darwin();
  v184 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE30, &qword_B31FD8);
  __chkstk_darwin();
  v174 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v173 = &v158 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE20, &qword_B31FC8);
  __chkstk_darwin();
  v168 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v183 = &v158 - v18;
  __chkstk_darwin();
  v170 = &v158 - v19;
  __chkstk_darwin();
  v180 = &v158 - v20;
  __chkstk_darwin();
  v181 = &v158 - v21;
  __chkstk_darwin();
  v169 = &v158 - v22;
  __chkstk_darwin();
  v178 = &v158 - v23;
  __chkstk_darwin();
  v179 = &v158 - v24;
  v25 = sub_AB3470();
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v176 = &v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE38, &qword_B31FE0);
  __chkstk_darwin();
  v194 = &v158 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE40, &qword_B31FE8);
  __chkstk_darwin();
  v188 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = &v158 - v31;
  v34 = __chkstk_darwin();
  v35 = &v158 - v33;
  v197 = v2;
  v193 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v36 = *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v36)
  {
    v37 = *(v26 + 16);
    v37(&v158 - v33, v36 + direct field offset for Gliss.Transition.id, v25, v34);
    v38 = *(v26 + 56);
    v38(v35, 0, 1, v25);
  }

  else
  {
    v38 = *(v26 + 56);
    (v38)(&v158 - v33, 1, 1, v25, v34);
    v37 = *(v26 + 16);
  }

  (v37)(v32, &v198[direct field offset for Gliss.Transition.id], v25);
  v38(v32, 0, 1, v25);
  v39 = *(v28 + 48);
  v40 = v194;
  sub_15F84(v35, v194, &qword_E1CE40, &qword_B31FE8);
  v41 = v40;
  sub_15F84(v32, v40 + v39, &qword_E1CE40, &qword_B31FE8);
  v42 = *(v26 + 48);
  if (v42(v40, 1, v25) == 1)
  {
    sub_12E1C(v32, &qword_E1CE40, &qword_B31FE8);
    sub_12E1C(v35, &qword_E1CE40, &qword_B31FE8);
    v43 = v42(v40 + v39, 1, v25);
    v44 = v196;
    if (v43 == 1)
    {
      sub_12E1C(v40, &qword_E1CE40, &qword_B31FE8);
      v45 = v197;
LABEL_11:
      v51 = v193;
      *&v45[v193] = 0;

      v52 = sub_8687D4();
      [v52 setClipsToBounds:*&v45[v51] != 0];

      v47 = 1;
      goto LABEL_13;
    }

LABEL_9:
    sub_12E1C(v40, &qword_E1CE38, &qword_B31FE0);
    v47 = 0;
    v45 = v197;
    goto LABEL_13;
  }

  v46 = v188;
  sub_15F84(v40, v188, &qword_E1CE40, &qword_B31FE8);
  if (v42(v40 + v39, 1, v25) == 1)
  {
    sub_12E1C(v32, &qword_E1CE40, &qword_B31FE8);
    sub_12E1C(v35, &qword_E1CE40, &qword_B31FE8);
    (*(v26 + 8))(v46, v25);
    v44 = v196;
    goto LABEL_9;
  }

  v48 = v176;
  (*(v26 + 32))(v176, v40 + v39, v25);
  sub_872BD8(&qword_E1CE48, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v49 = sub_AB91C0();
  v50 = *(v26 + 8);
  v50(v48, v25);
  sub_12E1C(v32, &qword_E1CE40, &qword_B31FE8);
  sub_12E1C(v35, &qword_E1CE40, &qword_B31FE8);
  v50(v46, v25);
  sub_12E1C(v41, &qword_E1CE40, &qword_B31FE8);
  v45 = v197;
  v44 = v196;
  if (v49)
  {
    goto LABEL_11;
  }

  v47 = 0;
LABEL_13:
  v53 = sub_86A67C();
  v54 = &v45[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v55 = *(v54 + 40);
  v204[0] = *(v54 + 24);
  v204[1] = v55;
  v204[2] = *(v54 + 56);
  sub_86D508(v53, v204);

  v56 = sub_86AA04();
  v57 = &v45[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v58 = *(v57 + 40);
  v203[0] = *(v57 + 24);
  v203[1] = v58;
  v203[2] = *(v57 + 56);
  sub_86D508(v56, v203);

  v59 = *(*v198 + 424);
  v60 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v61 = sub_872BD8(&qword_E1CE18, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);
  v59(&v199, v45, v60, v61);
  v63 = v195;
  if (!v199)
  {
    return result;
  }

  v64 = v200;
  v66 = v201;
  v65 = v202;
  if (!v201)
  {

    goto LABEL_67;
  }

  v194 = v200;
  v176 = v202;
  v188 = v199;
  if ((v47 & 1) == 0)
  {
    sub_870F9C(v201);

    v80.n128_f64[0] = sub_870F9C(v66);
    v81 = v189;
    v82 = v191;
    goto LABEL_32;
  }

  v67 = *(*v198 + 208);
  v68 = *v198 + 208;
  sub_870F9C(v201);

  v69 = sub_870F9C(v66);
  v70 = v179;
  v162 = v67;
  v161 = v68;
  v67(v69);
  v71 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  v160 = v71;
  v72 = v44;
  v73 = v178;
  sub_86AC00(&v45[v71], v178, type metadata accessor for NowPlaying.TrackMetadata);
  v74 = v192;
  v159 = *(v192 + 56);
  v159(v73, 0, 1, v72);
  v75 = *(v185 + 48);
  v76 = v173;
  sub_15F84(v70, v173, &qword_E1CE20, &qword_B31FC8);
  sub_15F84(v73, v76 + v75, &qword_E1CE20, &qword_B31FC8);
  v77 = *(v74 + 48);
  v78 = v77(v76, 1, v72);
  v164 = v66;
  v163 = v77;
  if (v78 != 1)
  {
    v83 = v169;
    sub_15F84(v76, v169, &qword_E1CE20, &qword_B31FC8);
    if (v77(v76 + v75, 1, v72) != 1)
    {
      v79 = v72;
      v86 = v184;
      sub_6A6DF8(v76 + v75, v184, type metadata accessor for NowPlaying.TrackMetadata);
      v87 = static NowPlaying.TrackMetadata.== infix(_:_:)();
      sub_6A6E60(v86, type metadata accessor for NowPlaying.TrackMetadata);
      sub_12E1C(v178, &qword_E1CE20, &qword_B31FC8);
      sub_12E1C(v179, &qword_E1CE20, &qword_B31FC8);
      sub_6A6E60(v83, type metadata accessor for NowPlaying.TrackMetadata);
      v84 = sub_12E1C(v76, &qword_E1CE20, &qword_B31FC8);
      v85 = v197;
      if ((v87 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    sub_12E1C(v178, &qword_E1CE20, &qword_B31FC8);
    sub_12E1C(v179, &qword_E1CE20, &qword_B31FC8);
    sub_6A6E60(v83, type metadata accessor for NowPlaying.TrackMetadata);
LABEL_23:
    v79 = v72;
    v84 = sub_12E1C(v76, &qword_E1CE30, &qword_B31FD8);
    v85 = v197;
    goto LABEL_26;
  }

  sub_12E1C(v73, &qword_E1CE20, &qword_B31FC8);
  sub_12E1C(v70, &qword_E1CE20, &qword_B31FC8);
  if (v77(v76 + v75, 1, v72) != 1)
  {
    goto LABEL_23;
  }

  v79 = v72;
  sub_12E1C(v76, &qword_E1CE20, &qword_B31FC8);
LABEL_25:
  v88 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel;
  v89 = *&v197[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
  *&v197[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = v164;
  swift_retain_n();
  sub_86A4B8(v89);

  v85 = v197;

  v84 = [*(*&v85[v88] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:1.0];
LABEL_26:
  v90 = v181;
  (v162)(v84);
  v91 = v180;
  sub_86AC00(&v85[v160], v180, type metadata accessor for NowPlaying.TrackMetadata);
  v159(v91, 0, 1, v79);
  v92 = *(v185 + 48);
  v93 = v174;
  sub_15F84(v90, v174, &qword_E1CE20, &qword_B31FC8);
  sub_15F84(v91, v93 + v92, &qword_E1CE20, &qword_B31FC8);
  v94 = v163;
  v95 = v163(v93, 1, v79);
  v64 = v194;
  if (v95 == 1)
  {
    sub_12E1C(v91, &qword_E1CE20, &qword_B31FC8);
    sub_12E1C(v90, &qword_E1CE20, &qword_B31FC8);
    v96 = v94(v93 + v92, 1, v79);
    v97 = v93;
    v44 = v79;
    v66 = v164;
    v98 = v189;
    if (v96 == 1)
    {
      sub_12E1C(v93, &qword_E1CE20, &qword_B31FC8);
      v45 = v197;
      goto LABEL_64;
    }

    goto LABEL_31;
  }

  v99 = v170;
  sub_15F84(v93, v170, &qword_E1CE20, &qword_B31FC8);
  v100 = v94(v93 + v92, 1, v79);
  v97 = v93;
  v44 = v79;
  v98 = v189;
  if (v100 == 1)
  {
    sub_12E1C(v180, &qword_E1CE20, &qword_B31FC8);
    sub_12E1C(v181, &qword_E1CE20, &qword_B31FC8);
    sub_6A6E60(v99, type metadata accessor for NowPlaying.TrackMetadata);
    v66 = v164;
LABEL_31:
    sub_12E1C(v97, &qword_E1CE30, &qword_B31FD8);
    v45 = v197;
    v63 = v195;
    v82 = v191;
    v81 = v98;
    goto LABEL_32;
  }

  v125 = v184;
  sub_6A6DF8(v93 + v92, v184, type metadata accessor for NowPlaying.TrackMetadata);
  LODWORD(v185) = static NowPlaying.TrackMetadata.== infix(_:_:)();
  sub_6A6E60(v125, type metadata accessor for NowPlaying.TrackMetadata);
  sub_12E1C(v180, &qword_E1CE20, &qword_B31FC8);
  sub_12E1C(v181, &qword_E1CE20, &qword_B31FC8);
  sub_6A6E60(v99, type metadata accessor for NowPlaying.TrackMetadata);
  v64 = v194;
  sub_12E1C(v93, &qword_E1CE20, &qword_B31FC8);
  v45 = v197;
  v63 = v195;
  v66 = v164;
  v82 = v191;
  v81 = v98;
  if (v185)
  {
    goto LABEL_64;
  }

LABEL_32:
  v101 = v183;
  (*(*v198 + 208))(v80);
  v102 = *(v192 + 48);
  v192 += 48;
  v185 = v102;
  if (v102(v101, 1, v44) == 1)
  {
    sub_12E1C(v101, &qword_E1CE20, &qword_B31FC8);
    (*(v81 + 56))(v82, 1, 1, v63);
  }

  else
  {
    sub_15F84(v101 + *(v44 + 28), v82, &qword_E1CE10, &qword_B31FC0);
    sub_6A6E60(v101, type metadata accessor for NowPlaying.TrackMetadata);
  }

  v103 = *&v45[v193];
  if (v103)
  {
    v104 = *(*v103 + 184);
    v105 = v81;

    v107 = v184;
    v104(v106);

    v108 = v187;
    sub_15F84(v107 + *(v196 + 28), v187, &qword_E1CE10, &qword_B31FC0);
    sub_6A6E60(v107, type metadata accessor for NowPlaying.TrackMetadata);
  }

  else
  {
    v108 = v187;
    (*(v81 + 56))(v187, 1, 1, v63);
    v105 = v81;
  }

  v109 = *(v186 + 48);
  v110 = v191;
  v111 = v190;
  sub_15F84(v191, v190, &qword_E1CE10, &qword_B31FC0);
  v112 = v111;
  sub_15F84(v108, v111 + v109, &qword_E1CE10, &qword_B31FC0);
  v113 = *(v105 + 48);
  if ((v113)(v111, 1, v63) == 1)
  {
    v198 = v113;
    sub_12E1C(v108, &qword_E1CE10, &qword_B31FC0);
    v114 = v190;
    sub_12E1C(v110, &qword_E1CE10, &qword_B31FC0);
    if ((v198)(v114 + v109, 1, v63) == 1)
    {
      sub_12E1C(v114, &qword_E1CE10, &qword_B31FC0);
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v115 = v172;
  sub_15F84(v112, v172, &qword_E1CE10, &qword_B31FC0);
  if ((v113)(v112 + v109, 1, v63) == 1)
  {
    sub_12E1C(v187, &qword_E1CE10, &qword_B31FC0);
    v114 = v190;
    sub_12E1C(v191, &qword_E1CE10, &qword_B31FC0);
    sub_6A6E60(v115, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_43:
    sub_12E1C(v114, &qword_E1CE28, &qword_B31FD0);
    v65 = v176;
    v64 = v194;
LABEL_44:

    goto LABEL_67;
  }

  v198 = v113;
  v116 = v112 + v109;
  v117 = v171;
  sub_6A6DF8(v116, v171, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v118 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  sub_6A6E60(v117, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_12E1C(v187, &qword_E1CE10, &qword_B31FC0);
  sub_12E1C(v191, &qword_E1CE10, &qword_B31FC0);
  sub_6A6E60(v115, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v45 = v197;
  v63 = v195;
  sub_12E1C(v112, &qword_E1CE10, &qword_B31FC0);
  v65 = v176;
  v64 = v194;
  if ((v118 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_46:
  v119 = *&v45[v193];
  if (v119)
  {
    v120 = *(*v119 + 184);

    v122 = v184;
    v120(v121);

    v123 = v196;
    sub_15F84(v122 + *(v196 + 28), v182, &qword_E1CE10, &qword_B31FC0);
    sub_6A6E60(v122, type metadata accessor for NowPlaying.TrackMetadata);
    v124 = v177;
  }

  else
  {
    (*(v189 + 56))(v182, 1, 1, v63);
    v124 = v177;
    v123 = v196;
  }

  v126 = *&v45[v193];
  if (v126)
  {
    v127 = *(*v126 + 208);

    v129 = v168;
    v127(v128);

    if ((v185)(v129, 1, v123) != 1)
    {
      v130 = v129 + *(v123 + 28);
      v131 = v129;
      v124 = v177;
      sub_15F84(v130, v177, &qword_E1CE10, &qword_B31FC0);
      sub_6A6E60(v131, type metadata accessor for NowPlaying.TrackMetadata);
      goto LABEL_56;
    }

    sub_12E1C(v129, &qword_E1CE20, &qword_B31FC8);
    v124 = v177;
  }

  (*(v189 + 56))(v124, 1, 1, v63);
LABEL_56:
  v132 = v63;
  v133 = *(v186 + 48);
  v134 = v182;
  v135 = v175;
  sub_15F84(v182, v175, &qword_E1CE10, &qword_B31FC0);
  sub_15F84(v124, v135 + v133, &qword_E1CE10, &qword_B31FC0);
  v136 = v198;
  if ((v198)(v135, 1, v132) == 1)
  {
    sub_12E1C(v124, &qword_E1CE10, &qword_B31FC0);
    v137 = v175;
    sub_12E1C(v134, &qword_E1CE10, &qword_B31FC0);
    v138 = (v136)(v137 + v133, 1, v132);
    v44 = v196;
    if (v138 == 1)
    {
      sub_12E1C(v137, &qword_E1CE10, &qword_B31FC0);
      v64 = v194;
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v139 = v167;
  sub_15F84(v135, v167, &qword_E1CE10, &qword_B31FC0);
  v140 = (v136)(v135 + v133, 1, v132);
  v44 = v196;
  if (v140 == 1)
  {
    sub_12E1C(v177, &qword_E1CE10, &qword_B31FC0);
    v137 = v175;
    sub_12E1C(v182, &qword_E1CE10, &qword_B31FC0);
    sub_6A6E60(v139, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_61:
    sub_12E1C(v137, &qword_E1CE28, &qword_B31FD0);
    v64 = v194;
LABEL_62:

    v65 = v176;

    goto LABEL_67;
  }

  v141 = v171;
  sub_6A6DF8(v135 + v133, v171, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v142 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  sub_6A6E60(v141, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_12E1C(v177, &qword_E1CE10, &qword_B31FC0);
  sub_12E1C(v182, &qword_E1CE10, &qword_B31FC0);
  sub_6A6E60(v139, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v45 = v197;
  sub_12E1C(v135, &qword_E1CE10, &qword_B31FC0);
  v64 = v194;
  if ((v142 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_64:
  v143 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel;
  v144 = *&v45[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];
  v65 = v176;
  if (v176)
  {
    *&v45[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = v176;
    swift_retain_n();
    sub_86A858(v144);

    v145 = *(*&v45[v143] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
    [v145 setAlpha:1.0];
  }

  else
  {
    v146 = &v45[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v147 = v165;
    sub_15F84(&v146[*(v44 + 28)], v165, &qword_E1CE10, &qword_B31FC0);
    v148 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    v149 = v166;
    sub_15F84(v144 + v148, v166, &qword_E1CE10, &qword_B31FC0);
    swift_beginAccess();

    sub_86AC68(v147, v144 + v148);
    swift_endAccess();
    sub_86F41C(v149);

    v150 = v149;
    v64 = v194;
    sub_12E1C(v150, &qword_E1CE10, &qword_B31FC0);
    v45 = v197;
    sub_12E1C(v147, &qword_E1CE10, &qword_B31FC0);
  }

LABEL_67:

  sub_86CE98(v151, v45, v152);

  v154 = sub_86CE98(v64, v45, v153);
  if (v66)
  {

    sub_86CE98(v155, v45, v156);

    v157 = v65;
  }

  else
  {
    v157 = 0;
  }

  sub_86CE98(v157, v45, v154);

  [v45 setNeedsLayout];
  sub_870FE0(v66, v65);

  return sub_870FE0(v66, v65);
}

double sub_86CE98(uint64_t a1, uint64_t a2, double result)
{
  if (!a1)
  {
    return result;
  }

  v4 = *(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);

  v5 = v4;
  v6 = *&sub_86A67C()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  sub_13C80(0, &qword_E1D138, off_CE5558);
  LOBYTE(v4) = sub_ABA790();

  if ((v4 & 1) == 0)
  {
    v7 = v5;
    v8 = *&sub_86AA04()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

    v9 = sub_ABA790();

    if ((v9 & 1) == 0)
    {
      v11 = *(a2 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition);
      if (v11)
      {
        v12 = *(*v11 + 424);
        v13 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
        v14 = sub_872BD8(&qword_E1CE18, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);

        v12(v27, a2, v13, v14);

        if (v27[0])
        {
          v16 = v27[1];
          v15 = v27[2];
          v17 = v27[3];
          sub_13C80(0, &unk_E1E040, NSObject_ptr);
          if (sub_ABA790())
          {
            goto LABEL_14;
          }

          if (v16)
          {
            v18 = *(v16 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
            v26 = v17;
            v19 = v7;
            v25 = v15;
            v20 = v18;
            LOBYTE(v18) = sub_ABA790();

            v17 = v26;
            v15 = v25;
            if (v18)
            {
              goto LABEL_14;
            }
          }

          if (v15)
          {
            if (sub_ABA790())
            {
LABEL_14:

              sub_870FE0(v15, v17);
LABEL_21:

              return result;
            }

            if (v17)
            {
              v21 = *(v17 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
              v22 = v15;
              v23 = v7;
              v24 = v21;
              LOBYTE(v21) = sub_ABA790();

              v10 = sub_870FE0(v22, v17);
              if (v21)
              {
                goto LABEL_21;
              }
            }

            else
            {

              v10 = sub_870FE0(v15, 0);
            }
          }

          else
          {
          }
        }
      }

      [v7 removeFromSuperview];
      goto LABEL_21;
    }
  }

  return result;
}

void NowPlaying.TrackTitleStackView.adopt(_:from:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE10, &qword_B31FC0);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v19 - v7;
  v9 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86AC00(a1, v11, type metadata accessor for NowPlaying.TrackMetadata);
  v12 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_86AB9C(v11, v2 + v12);
  swift_endAccess();
  if (!a2)
  {
    v13 = v2;
    v14 = sub_86A67C();
    sub_86AC00(a1 + *(v9 + 24), v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    (*(*(v15 - 8) + 56))(v8, 0, 1, v15);
    v16 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    sub_15F84(&v14[v16], v6, &qword_E1CE10, &qword_B31FC0);
    swift_beginAccess();
    sub_86AC68(v8, &v14[v16]);
    swift_endAccess();
    sub_86F41C(v6);

    sub_12E1C(v6, &qword_E1CE10, &qword_B31FC0);
    sub_12E1C(v8, &qword_E1CE10, &qword_B31FC0);
    v17 = sub_86AA04();
    sub_15F84(a1 + *(v9 + 28), v8, &qword_E1CE10, &qword_B31FC0);
    v18 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    sub_15F84(&v17[v18], v6, &qword_E1CE10, &qword_B31FC0);
    swift_beginAccess();
    sub_86AC68(v8, &v17[v18]);
    swift_endAccess();
    sub_86F41C(v6);

    sub_12E1C(v6, &qword_E1CE10, &qword_B31FC0);
    sub_12E1C(v8, &qword_E1CE10, &qword_B31FC0);
    [v13 setNeedsLayout];
  }
}

double sub_86D508(uint64_t a1, unsigned __int8 *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE20, &qword_B31FC8);
  *&result = __chkstk_darwin().n128_u64[0];
  v7 = &v20 - v6;
  if (a1)
  {
    v8 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
    v9 = *(v2 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition);
    if (v9)
    {
      v10 = v2;
      v11 = *(*v9 + 256);

      v13 = v11(v12);

      if (v13 == 2)
      {
        v14 = *(v10 + v8);
        if (v14)
        {
          v15 = *(*v14 + 208);

          v15(v16);

          v17 = type metadata accessor for NowPlaying.TrackMetadata(0);
          if ((*(*(v17 - 8) + 48))(v7, 1, v17) != 1)
          {
            sub_12E1C(v7, &qword_E1CE20, &qword_B31FC8);
            v18 = 0;
LABEL_11:
            [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setMarqueeEnabled:v18 withOptions:1];

            return result;
          }
        }

        else
        {
          v19 = type metadata accessor for NowPlaying.TrackMetadata(0);
          (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
        }

        sub_12E1C(v7, &qword_E1CE20, &qword_B31FC8);
      }
    }

    else
    {
    }

    v18 = *a2;
    goto LABEL_11;
  }

  return result;
}

void sub_86D738()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition])
  {
    v2 = objc_opt_self();
    v3 = [v2 disableActions];
    v4 = &selRef__authenticateReturningError_;
    [v2 setDisableActions:1];
    v5 = OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer;
    v6 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
    if (v6)
    {
      v7 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
LABEL_28:
      v44 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
      swift_beginAccess();
      v45 = v44[6];
      v46 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
      swift_beginAccess();
      if (v46[6] >= v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = v46[6];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_AF93E0;
      sub_13C80(0, &qword_E19E40, NSNumber_ptr);
      v49 = v6;
      *(v48 + 32) = sub_ABA760(0.0);
      [v1 bounds];
      *(v48 + 40) = [objc_allocWithZone(NSNumber) initWithDouble:v47 / CGRectGetWidth(v58)];
      [v1 bounds];
      *(v48 + 48) = [objc_allocWithZone(NSNumber) initWithDouble:1.0 - v47 / CGRectGetWidth(v59)];
      *(v48 + 56) = sub_ABA760(1.0);
      isa = sub_AB9740().super.isa;

      [v7 setLocations:isa];

      [v7 setStartPoint:{0.0, 0.5}];
      v51 = v7;
      [v51 setEndPoint:{1.0, 0.5}];
      [v1 bounds];
      [v51 setBounds:?];

      [v1 bounds];
      MidX = CGRectGetMidX(v60);
      [v1 bounds];
      [v51 setPosition:{MidX, CGRectGetMidY(v61)}];

      [v2 v4[255]];
      return;
    }

    v53 = v3;
    v56 = v2;
    v15 = [objc_allocWithZone(CAGradientLayer) init];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185F0, &unk_B33020);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_AF85D0;
    v17 = objc_opt_self();
    v18 = v15;
    v19 = [v17 blackColor];
    v20 = [v19 CGColor];

    _s3__C7CGColorCMa_1(0);
    v22 = v21;
    *(v16 + 56) = v21;
    *(v16 + 32) = v20;
    v23 = [v17 clearColor];
    v24 = [v23 CGColor];

    *(v16 + 88) = v22;
    *(v16 + 64) = v24;
    v25 = [v17 clearColor];
    v26 = [v25 CGColor];

    *(v16 + 120) = v22;
    *(v16 + 96) = v26;
    v27 = [v17 blackColor];
    v28 = [v27 CGColor];

    *(v16 + 152) = v22;
    *(v16 + 128) = v28;
    v29 = sub_AB9740().super.isa;

    [v18 setColors:v29];

    [v18 setCompositingFilter:kCAFilterDestOut];
    v30 = *&v1[v5];
    if (v30)
    {
      sub_13C80(0, &qword_E1C008, CAGradientLayer_ptr);
      v31 = v18;
      v32 = v30;
      v33 = v31;
      v34 = v32;
      v35 = sub_ABA790();

      v36 = *&v1[v5];
      if ((v35 & 1) == 0)
      {
        v4 = &selRef__authenticateReturningError_;
        v6 = 0;
        if (v36)
        {
          [*&v1[v5] removeFromSuperlayer];
          v36 = *&v1[v5];
        }

LABEL_16:
        *&v1[v5] = v18;
        v7 = v18;

        v38 = *&v1[v5];
        if (v38)
        {
          if (v30)
          {
            sub_13C80(0, &qword_E1C008, CAGradientLayer_ptr);
            v39 = v30;
            v40 = v38;
            v41 = sub_ABA790();

            if (v41)
            {

LABEL_21:
              v2 = v56;
              v3 = v53;
              goto LABEL_28;
            }
          }

          else
          {
            v42 = v38;
            v39 = 0;
          }

          v2 = v56;
          v3 = v53;
          v43 = [v1 layer];
          [v43 addSublayer:v38];

          goto LABEL_28;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v37 = v18;
      v36 = 0;
    }

    v4 = &selRef__authenticateReturningError_;
    v6 = 0;
    goto LABEL_16;
  }

  v8 = OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer;
  v9 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
  if (v9)
  {
    v55 = v9;
    [v55 removeFromSuperlayer];
    v10 = *&v1[v8];
    *&v1[v8] = 0;

    v11 = *&v1[v8];
    if (v11)
    {
      sub_13C80(0, &qword_E1C008, CAGradientLayer_ptr);
      v12 = v55;
      v55 = v11;
      v13 = sub_ABA790();

      if ((v13 & 1) == 0)
      {
        v54 = [v1 layer];
        [v54 addSublayer:v55];

        v14 = v54;
        goto LABEL_23;
      }
    }

    v14 = v55;
  }

  else
  {
    v14 = 0;
  }

LABEL_23:
}

id sub_86DE58(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_AB9260();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_86DEF0(uint64_t (*a1)(__n128))
{
  sub_AB2E20();
  __chkstk_darwin();
  v2 = sub_AB2F20();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE10, &qword_B31FC0);
  v6 = __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = a1(v6);
  v10 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_15F84(v9 + v10, v8, &qword_E1CE10, &qword_B31FC0);
  v11 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  if ((*(*(v11 - 8) + 48))(v8, 1, v11) == 1)
  {

    return 0;
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_AB2E10();
    sub_872BD8(&qword_E1D128, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
    v13 = sub_AB9570();

    (*(v3 + 8))(v5, v2);
    return v13;
  }

  else
  {

    return *v8;
  }
}

id NowPlaying.TrackTitleStackView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_86E368@<X0>(char **a1@<X8>, uint64_t a2@<X0>)
{
  result = _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC17transitionContext2to9directionAF010TransitionK0VSgAC0F8MetadataV_AA5GlissO9DirectionOSgtF_0(a2);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double NowPlaying.TrackTitleStackView.Label.Attributes.marquee.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  *a1 = *(v1 + 24);
  v3 = *(v1 + 48);
  *(a1 + 8) = *(v1 + 32);
  *(a1 + 24) = v3;
  *(a1 + 40) = result;
  return result;
}

char *NowPlaying.TrackTitleStackView.Label.Attributes.action.getter()
{
  v1 = *(v0 + 72);
  sub_872C20(v1, *(v0 + 80), *(v0 + 88));
  return v1;
}

void NowPlaying.TrackTitleStackView.Label.Attributes.action.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_86F71C(*(v3 + 72), *(v3 + 80), *(v3 + 88));
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  *(v3 + 88) = a3;
}

void NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.fadeInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

BOOL static NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.__derived_struct_equals(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v2 = a1[3] == a2[3] && a1[4] == a2[4];
    if (v2 && a1[5] == a2[5])
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_86E4C4(float64x2_t *a1, float64x2_t *a2)
{
  if (LOBYTE(a1->f64[0]) == LOBYTE(a2->f64[0]) && a1->f64[1] == a2->f64[1])
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[1], a2[1]), vceqq_f64(a1[2], a2[2])))) & 1;
  }

  else
  {
    return 0;
  }
}

double NowPlaying.TrackTitleStackView.Label.Attributes.update(_:)(void (*a1)(__int128 *))
{
  v2 = v1[3];
  v11 = v1[2];
  v12 = v2;
  v3 = v1[5];
  v13 = v1[4];
  v14 = v3;
  v4 = v1[1];
  v9 = *v1;
  v10 = v4;
  a1(&v9);
  v5 = v12;
  v1[2] = v11;
  v1[3] = v5;
  v6 = v14;
  v1[4] = v13;
  v1[5] = v6;
  result = *&v9;
  v8 = v10;
  *v1 = v9;
  v1[1] = v8;
  return result;
}

uint64_t sub_86E5FC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV23__derived_struct_equalsySbAJ_AJtFZ_0(v9, v10) & 1;
}

void sub_86E658(uint64_t *a1)
{
  v2 = v1;
  v4 = *(a1 + 3);
  v54[2] = *(a1 + 2);
  v54[3] = v4;
  v5 = *(a1 + 5);
  v54[4] = *(a1 + 4);
  v54[5] = v5;
  v6 = *(a1 + 1);
  v54[0] = *a1;
  v54[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE10, &qword_B31FC0);
  __chkstk_darwin();
  v8 = &v50 - v7;
  v9 = *(v1 + 64);
  v57 = *(v1 + 48);
  v58 = v9;
  v10 = *(v1 + 96);
  v59 = *(v1 + 80);
  v60 = v10;
  v11 = *(v1 + 32);
  v55 = *(v1 + 16);
  v56 = v11;
  sub_13C80(0, &unk_E1E040, NSObject_ptr);
  sub_7933C8(&v55, v53);
  if ((sub_ABA790() & 1) == 0 || (sub_ABA790() & 1) == 0 || v56 != (a1[2] & 1) || BYTE8(v56) != (a1[3] & 1) || *&v57 != *(a1 + 4) || *(&v57 + 1) != *(a1 + 5) || *&v58 != *(a1 + 6) || *(&v58 + 1) != *(a1 + 7) || *&v59 != *(a1 + 8))
  {
    goto LABEL_14;
  }

  v12 = *(&v59 + 1);
  v14 = a1[9];
  v13 = a1[10];
  v15 = a1[11];
  if (*(&v59 + 1) == 1)
  {
    sub_872C20(a1[9], a1[10], a1[11]);
    sub_793424(&v55);
    if (v14 == &dword_0 + 1)
    {
      return;
    }

    sub_86F71C(v14, v13, v15);
    goto LABEL_15;
  }

  if (v14 == &dword_0 + 1)
  {
LABEL_14:
    sub_793424(&v55);
    goto LABEL_15;
  }

  v48 = *(&v60 + 1);
  v51 = v60;
  sub_872C20(v14, v13, v15);
  v49 = _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionV23__derived_struct_equalsySbAL_ALtFZ_0(v12, v51, v48, v14, v13, v15);
  sub_793424(&v55);

  if (v49)
  {
    return;
  }

LABEL_15:
  if ((a1[9] == 1) == (*(v1 + 88) == 1))
  {
    goto LABEL_35;
  }

  v16 = *(v1 + 64);
  v53[2] = *(v1 + 48);
  v53[3] = v16;
  v17 = *(v1 + 96);
  v53[4] = *(v1 + 80);
  v53[5] = v17;
  v18 = *(v1 + 32);
  v53[0] = *(v1 + 16);
  v53[1] = v18;
  sub_7933C8(v53, &v52);
  v19 = sub_8712CC(v53);
  v20 = v19;
  v22 = v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind;
  v23 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  v24 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind + 8);
  *v22 = v19;
  *(v22 + 8) = v21 & 1;
  if (v21)
  {
    if ((v24 & 1) == 0)
    {
LABEL_18:
      v25 = v19;
      goto LABEL_22;
    }
  }

  else if (v24)
  {
    goto LABEL_18;
  }

  v26 = v19;
  if ((sub_ABA790() & 1) == 0)
  {
LABEL_22:
    [v23 removeFromSuperview];
    v27 = *v22;
    v28 = [v27 superview];
    v29 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
    v30 = [v29 contentView];
    v31 = v30;
    if (v28)
    {
      if (v30)
      {
        sub_13C80(0, &qword_E1E050, UIView_ptr);
        v32 = sub_ABA790();

        if (v32)
        {
          goto LABEL_33;
        }

LABEL_30:
        v33 = [v29 contentView];
        if (v33)
        {
          v34 = v33;
          [v33 addSubview:v27];

          v35 = [v29 contentView];
          if (v35)
          {
            v36 = v35;
            [v35 bounds];
            v38 = v37;
            v40 = v39;
            v42 = v41;
            v44 = v43;

            [v27 setFrame:{v38, v40, v42, v44}];
            [v27 setAutoresizingMask:18];
            [v29 setViewForContentSize:v27];
LABEL_33:

            sub_86F770();
            goto LABEL_34;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      v31 = v28;
    }

    else if (!v30)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v20 = v23;
  v23 = v26;
LABEL_34:

LABEL_35:
  sub_86EBB4(v54);
  v45 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_15F84(v2 + v45, v8, &qword_E1CE10, &qword_B31FC0);
  v46 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  if ((*(*(v46 - 8) + 48))(v8, 1, v46) == 1)
  {
    sub_12E1C(v8, &qword_E1CE10, &qword_B31FC0);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_6A6E60(v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    if (EnumCaseMultiPayload == 1)
    {
      sub_86F770();
    }
  }
}

uint64_t sub_86EBB4(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D100, &qword_B323B8);
  __chkstk_darwin();
  v5 = &v59 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A10, &qword_B2AB40);
  __chkstk_darwin();
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v59 - v8;
  v10 = sub_ABA8C0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[4];
  v68 = v1[3];
  v69 = v14;
  v15 = v1[6];
  v70 = v1[5];
  v71 = v15;
  v16 = v1[2];
  v66 = v1[1];
  v67 = v16;
  v17 = v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind;
  v18 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  if ((v17[8] & 1) == 0)
  {
    v20 = v66;
    sub_7933C8(&v66, v65);
    v21 = v18;
    [v21 setFont:v20];
    [v21 setTextColor:*(&v66 + 1)];

    v22 = *a1;
    if (!*a1)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v62 = *a1;
  v64 = v18;
  v63 = v7;
  if (!v62)
  {
    sub_7933C8(&v66, v65);
    goto LABEL_8;
  }

  v19 = *(a1 + 72);
  if (v19 <= 1)
  {
    sub_7933C8(&v66, v65);
    v18 = v64;
LABEL_8:
    v23 = v18;
    goto LABEL_9;
  }

  v72 = *(v2 + 88);
  v73 = *(v2 + 13);
  v28 = v72;
  if (v72 == 1)
  {
    sub_7933C8(&v66, v65);
    v29 = v64;
    v30 = v64;
    v31 = v19;
  }

  else
  {
    v53 = v73;
    v74 = *(&v72 + 1);
    sub_7933C8(&v66, v65);
    v29 = v64;
    v54 = v64;
    v61 = v19;
    sub_15F84(&v72, v65, &qword_E1D108, &qword_B323C0);
    sub_12E1C(&v74, &qword_E1D110, &unk_B323C8);
    v75 = v53;
    sub_12E1C(&v75, &qword_E175B8, &qword_B2A1E0);
    if (v28)
    {
      sub_13C80(0, &qword_E17A80, UIAction_ptr);
      v55 = v61;
      v60 = v28;
      v56 = v55;
      v57 = sub_ABA790();
      v61 = v56;

      if (v57)
      {

        goto LABEL_9;
      }
    }
  }

  [v29 removeAction:v19 forControlEvents:0x2000];

LABEL_9:
  sub_ABA8E0();
  v24 = *(v11 + 48);
  if (v24(v9, 1, v10) == 1)
  {
    sub_ABA8A0();
    if (v24(v9, 1, v10) != 1)
    {
      sub_12E1C(v9, &qword_E17A10, &qword_B2AB40);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  v25 = *(&v66 + 1);
  sub_ABA870();
  v26 = *(&v70 + 1);
  v27 = v71;
  if (*(&v70 + 1) != 1 && *(&v71 + 1))
  {
    if (*(&v70 + 1))
    {
      sub_872C20(*(&v70 + 1), v71, *(&v71 + 1));

LABEL_21:
      goto LABEL_22;
    }

    if (v71)
    {
      sub_872C20(0, v71, *(&v71 + 1));

      goto LABEL_21;
    }

    v58 = *(&v71 + 1);
    sub_ABA870();
  }

LABEL_22:
  v32 = swift_allocObject();
  v33 = v69;
  v32[3] = v68;
  v32[4] = v33;
  v34 = v71;
  v32[5] = v70;
  v32[6] = v34;
  v35 = v67;
  v32[1] = v66;
  v32[2] = v35;
  sub_7933C8(&v66, v65);
  sub_AB5350();
  v36 = sub_AB5340();
  (*(*(v36 - 8) + 56))(v5, 0, 1, v36);
  sub_ABA880();
  if (v26 == &dword_0 + 1)
  {
    goto LABEL_27;
  }

  if (!v26)
  {
    v51 = *(&v27 + 1);
    v52 = v27;
    if (!v27)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v37 = *(&v27 + 1);
  v38 = v26;
  v39 = v27;
  [v64 addAction:v38 forControlEvents:0x2000];
  if (v27)
  {
LABEL_25:
    v40 = v27;
    v41 = v64;
    [v41 setShowsMenuAsPrimaryAction:v26 == 0];
    [v41 setMenu:v40];
    [v41 setShowsMenuFromSource:0];
  }

LABEL_26:

LABEL_27:
  v42 = v63;
  (*(v11 + 16))(v63, v13, v10);
  (*(v11 + 56))(v42, 0, 1, v10);
  v43 = v64;
  sub_ABA8F0();

  (*(v11 + 8))(v13, v10);
  v22 = v62;
  if (!v62)
  {
LABEL_29:
    sub_870210();
    goto LABEL_30;
  }

LABEL_28:
  v44 = *(v2 + 2);
  sub_13C80(0, &qword_E1C960, UIFont_ptr);
  v45 = v44;
  v46 = v22;
  v47 = sub_ABA790();

  if ((v47 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  v48 = *(v2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v49 = BYTE8(v67);
  [v48 setContentGap:*&v68];
  [v48 setMarqueeEnabled:v49 & 1];
  [v48 effectiveUserInterfaceLayoutDirection];
  sub_AB9E50();
  [v48 setFadeEdgeInsets:?];
  [v48 setHidden:v67];
  [v48 invalidateIntrinsicContentSize];
  return sub_793424(&v66);
}

uint64_t sub_86F350@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_AB2F50();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = *a2;
  sub_87329C();
  v8 = v7;
  sub_AB2F70();
  UIAccessibilityButtonShapesEnabled();
  sub_8732F0();
  return sub_AB2F70();
}

uint64_t sub_86F41C(uint64_t a1)
{
  v16 = a1;
  v2 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE10, &qword_B31FC0);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE28, &qword_B31FD0) - 8;
  __chkstk_darwin();
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  v12 = *(v8 + 56);
  sub_15F84(v1 + v11, v10, &qword_E1CE10, &qword_B31FC0);
  sub_15F84(v16, &v10[v12], &qword_E1CE10, &qword_B31FC0);
  v13 = *(v3 + 48);
  if (v13(v10, 1, v2) == 1)
  {
    if (v13(&v10[v12], 1, v2) == 1)
    {
      return sub_12E1C(v10, &qword_E1CE10, &qword_B31FC0);
    }

    goto LABEL_6;
  }

  sub_15F84(v10, v7, &qword_E1CE10, &qword_B31FC0);
  if (v13(&v10[v12], 1, v2) == 1)
  {
    sub_6A6E60(v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_6:
    sub_12E1C(v10, &qword_E1CE28, &qword_B31FD0);
LABEL_7:
    sub_86F770();
    return sub_870210();
  }

  sub_6A6DF8(&v10[v12], v5, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v15 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  sub_6A6E60(v5, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_6A6E60(v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_12E1C(v10, &qword_E1CE10, &qword_B31FC0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_86F71C(char *a1, void *a2, void *a3)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

id sub_86F770()
{
  v1 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v69 = *(v1 - 8);
  __chkstk_darwin();
  v66 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E178A0, &qword_B2A8C0);
  __chkstk_darwin();
  v62 = &v58 - v3;
  v4 = sub_AB2F20();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin();
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v58 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A10, &qword_B2AB40);
  __chkstk_darwin();
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = &v58 - v9;
  __chkstk_darwin();
  v60 = &v58 - v10;
  v11 = sub_ABA8C0();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin();
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v58 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D0F0, &qword_B323B0);
  __chkstk_darwin();
  v16 = (&v58 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE10, &qword_B31FC0);
  __chkstk_darwin();
  v71 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v58 - v18;
  v20 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  v70 = v20;
  sub_15F84(v0 + v20, v19, &qword_E1CE10, &qword_B31FC0);
  v72 = v0;
  v21 = *(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  v22 = *(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind + 8);
  v23 = v19;
  v24 = v1;
  v25 = v69;
  sub_36B0C(v23, v16, &qword_E1CE10, &qword_B31FC0);
  v26 = *(v25 + 48);
  if (v26(v16, 1, v1) == 1)
  {
    v27 = v21;
    v28 = v27;
    if (v22)
    {
      sub_ABA8E0();
      v30 = v64;
      v29 = v65;
      v31 = *(v64 + 48);
      if (v31(v8, 1, v65) == 1)
      {
        sub_ABA8A0();
        if (v31(v8, 1, v29) != 1)
        {
          sub_12E1C(v8, &qword_E17A10, &qword_B2AB40);
        }
      }

      else
      {
        (*(v30 + 32))(v13, v8, v29);
      }

      sub_ABA8B0();
      (*(v67 + 56))(v62, 1, 1, v68);
      sub_ABA860();
      v45 = v63;
      (*(v30 + 16))(v63, v13, v29);
      (*(v30 + 56))(v45, 0, 1, v29);
      sub_ABA8F0();

      (*(v30 + 8))(v13, v29);
    }

    else
    {
      [v27 setText:0];
      [v28 setAttributedText:0];
    }
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v67;
    v33 = v68;
    v34 = v61;
    (*(v67 + 32))(v61, v16, v68);
    if (v22)
    {
      __chkstk_darwin();
      *(&v58 - 2) = v34;
      v35 = v21;
      UIButton.reconfigure(with:)(sub_87322C);

      (*(v32 + 8))(v34, v33);
    }

    else
    {
      sub_13C80(0, &qword_E1D0F8, NSAttributedString_ptr);
      (*(v32 + 16))(v59, v34, v33);
      v46 = v34;
      v47 = v21;
      v48 = sub_ABA1C0();
      [v47 setAttributedText:v48];

      (*(v32 + 8))(v46, v33);
    }
  }

  else
  {
    v69 = v1;
    v36 = *v16;
    v37 = v21;
    if (v22)
    {
      v38 = v60;
      sub_ABA8E0();
      v40 = v64;
      v39 = v65;
      v41 = *(v64 + 48);
      if (v41(v38, 1, v65) == 1)
      {
        v68 = v36;
        v42 = v58;
        sub_ABA8A0();
        v43 = v41(v38, 1, v39);
        v44 = v42;
        if (v43 != 1)
        {
          sub_12E1C(v60, &qword_E17A10, &qword_B2AB40);
        }
      }

      else
      {
        v44 = v58;
        (*(v40 + 32))(v58, v38, v39);
      }

      sub_ABA8B0();
      v50 = v63;
      (*(v40 + 16))(v63, v44, v39);
      (*(v40 + 56))(v50, 0, 1, v39);
      sub_ABA8F0();

      (*(v40 + 8))(v44, v39);
    }

    else
    {
      v49 = sub_AB9260();

      [v37 setText:v49];
    }

    v24 = v69;
  }

  v51 = v71;
  v52 = *(v72 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  sub_15F84(v72 + v70, v71, &qword_E1CE10, &qword_B31FC0);
  if (v26(v51, 1, v24))
  {
    sub_12E1C(v51, &qword_E1CE10, &qword_B31FC0);
LABEL_25:
    v56 = 0;
    goto LABEL_26;
  }

  v53 = v66;
  sub_86AC00(v51, v66, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_12E1C(v51, &qword_E1CE10, &qword_B31FC0);
  sub_8708F4();
  v54 = sub_AB9260();

  v55 = [v54 _isNaturallyRTL];

  sub_6A6E60(v53, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if ((v55 & 1) == 0)
  {
    goto LABEL_25;
  }

  v56 = 1;
LABEL_26:
  [v52 setAnimationDirection:v56];
  return [v52 invalidateIntrinsicContentSize];
}

uint64_t sub_870110(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E178A0, &qword_B2A8C0);
  __chkstk_darwin();
  v4 = &v8 - v3;
  v5 = sub_AB2F20();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a2, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  return sub_ABA860();
}

uint64_t sub_870210()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE10, &qword_B31FC0);
  __chkstk_darwin();
  v3 = &v15 - v2;
  v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = left;
  v18 = UIEdgeInsetsZero.top;
  v15 = right;
  v16 = bottom;
  v12 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_15F84(v1 + v12, v3, &qword_E1CE10, &qword_B31FC0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    result = sub_12E1C(v3, &qword_E1CE10, &qword_B31FC0);
  }

  else
  {
    sub_6A6DF8(v3, v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    if (sub_870478())
    {
      CTFontGetLanguageAwareOutsets();
      result = sub_6A6E60(v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      left = v17;
      top = v18;
      right = v15;
      bottom = v16;
    }

    else
    {
      result = sub_6A6E60(v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    }
  }

  v14 = (v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets);
  *v14 = top;
  v14[1] = left;
  v14[2] = bottom;
  v14[3] = right;
  return result;
}

uint64_t sub_870478()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D0C8, &qword_B32390);
  __chkstk_darwin();
  v2 = &v19 - v1;
  v3 = sub_AB2E20();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB2F20();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_86AC00(v0, v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v12, v7);
    sub_AB2E10();
    sub_870B90(v2);
    (*(v4 + 8))(v6, v3);
    v13 = sub_AB9340();
    v15 = v14;
    (*(v8 + 8))(v10, v7);
    v16 = v13;
  }

  else
  {
    v16 = *v12;
    v15 = v12[1];
  }

  v17 = String.containsExcessiveHeightCharacters.getter(v16, v15);

  return v17 & 1;
}

uint64_t NowPlaying.TrackTitleStackView.Label.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  sub_86F71C(v2, v3, v4);
  sub_12E1C(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text, &qword_E1CE10, &qword_B31FC0);

  return v0;
}

uint64_t NowPlaying.TrackTitleStackView.Label.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  sub_86F71C(v2, v3, v4);
  sub_12E1C(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text, &qword_E1CE10, &qword_B31FC0);

  return swift_deallocClassInstance();
}

__n128 Gliss.Transition<>.Output.transform3D.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 80) = v2;
  v3 = *(v1 + 136);
  *(a1 + 96) = *(v1 + 120);
  *(a1 + 112) = v3;
  v4 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v4;
  result = *(v1 + 56);
  v6 = *(v1 + 72);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 Gliss.Transition<>.Output.transform3D.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 88) = *(a1 + 64);
  *(v1 + 104) = v2;
  v3 = *(a1 + 112);
  *(v1 + 120) = *(a1 + 96);
  *(v1 + 136) = v3;
  v4 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 56) = result;
  *(v1 + 72) = v6;
  return result;
}

uint64_t sub_8708F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D0C8, &qword_B32390);
  __chkstk_darwin();
  v2 = &v15 - v1;
  v3 = sub_AB2E20();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_AB2F20();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_86AC00(v0, v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v12;
  }

  (*(v8 + 32))(v10, v12, v7);
  sub_AB2E10();
  sub_870B90(v2);
  (*(v4 + 8))(v6, v3);
  v13 = sub_AB9340();
  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t sub_870B90@<X0>(uint64_t a1@<X8>)
{
  v22[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D0D0, &qword_B32398);
  __chkstk_darwin();
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = sub_AB2ED0();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D0D8, &qword_B323A0);
  __chkstk_darwin();
  v24 = v22 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D0E0, &qword_B323A8);
  __chkstk_darwin();
  v13 = v22 - v12;
  v14 = sub_AB2E20();
  v15 = sub_872BD8(&qword_E17890, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  v25 = v14;
  v16 = v15;
  sub_AB9C60();
  sub_872BD8(&qword_E17898, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  result = sub_AB91C0();
  if (result)
  {
    sub_AB9CA0();
    sub_872BD8(&qword_E1D0E8, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
    result = sub_AB9170();
    if (result)
    {
      v22[0] = v1;
      v22[1] = v16;
      v18 = *(v8 + 32);
      v18(v6, v13, v7);
      v18(&v6[*(v2 + 48)], v10, v7);
      sub_15F84(v6, v4, &qword_E1D0D0, &qword_B32398);
      v19 = *(v2 + 48);
      v20 = v24;
      v18(v24, v4, v7);
      v21 = *(v8 + 8);
      v21(&v4[v19], v7);
      sub_36B0C(v6, v4, &qword_E1D0D0, &qword_B32398);
      v18((v20 + *(v23 + 36)), &v4[*(v2 + 48)], v7);
      v21(v4, v7);
      sub_AB9D70();
      return sub_12E1C(v20, &qword_E1D0D8, &qword_B323A0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_870F9C(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

double sub_870FE0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionV23__derived_struct_equalsySbAL_ALtFZ_0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v11 = a1;
    sub_13C80(0, &qword_E17A80, UIAction_ptr);
    v12 = a4;
    v13 = v11;
    LOBYTE(v11) = sub_ABA790();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    sub_13C80(0, &qword_E179E8, UIMenu_ptr);
    v14 = a5;
    v15 = a2;
    v16 = sub_ABA790();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3)
  {
    if (a6)
    {
      sub_13C80(0, &qword_E1AD80, UIColor_ptr);
      v17 = a6;
      v18 = a3;
      v19 = sub_ABA790();

      if (v19)
      {
        return 1;
      }
    }
  }

  else if (!a6)
  {
    return 1;
  }

  return 0;
}

uint64_t _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV23__derived_struct_equalsySbAJ_AJtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_13C80(0, &unk_E1E040, NSObject_ptr);
  if (sub_ABA790() & 1) == 0 || (sub_ABA790() & 1) == 0 || ((*(a1 + 16) ^ *(a2 + 16)))
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))))) & 1) != 0 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0 && *(a1 + 64) == *(a2 + 64))
  {
    v5 = *(a1 + 72);
    v6 = *(a2 + 72);
    if (v5 == &dword_0 + 1)
    {
      if (v6 == &dword_0 + 1)
      {
        return 1;
      }
    }

    else if (v6 != &dword_0 + 1)
    {
      v8 = *(a1 + 80);
      v7 = *(a1 + 88);
      v10 = *(a2 + 80);
      v9 = *(a2 + 88);
      v11 = v9;
      v12 = v6;
      v13 = v10;
      LOBYTE(v9) = _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionV23__derived_struct_equalsySbAL_ALtFZ_0(v5, v8, v7, v6, v10, v9);

      if (v9)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

id sub_8712CC(uint64_t a1)
{
  sub_AB4F50();
  __chkstk_darwin();
  v2 = sub_ABA830();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_ABA8C0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v21 - v10;
  v22 = *(a1 + 72);
  if (v22 == 1)
  {
    v17 = [objc_allocWithZone(UILabel) init];
    v18 = objc_opt_self();
    v14 = v17;
    v19 = [v18 clearColor];
    [v14 setBackgroundColor:v19];

    [v14 setNumberOfLines:1];
    [v14 setAdjustsFontForContentSizeCategory:1];
    [v14 _setWantsContentAwareTypesettingLanguage:1];
    sub_793424(a1);
  }

  else
  {
    sub_ABA8A0();
    sub_ABA820();
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v2);
    sub_ABA850();
    sub_AB4F30();
    sub_ABA800();
    v12 = [objc_opt_self() clearColor];
    v13 = sub_ABA7F0();
    sub_AB4EF0();
    v13(v23, 0);
    sub_13C80(0, &qword_E1D130, UIButton_ptr);
    (*(v7 + 16))(v9, v11, v6);
    v14 = sub_ABA8D0();
    [v14 setContentHorizontalAlignment:4];
    v15 = [v14 titleLabel];
    if (v15)
    {
      v16 = v15;
      [v15 _setWantsContentAwareTypesettingLanguage:1];
    }

    sub_793424(a1);
    (*(v7 + 8))(v11, v6);
  }

  return v14;
}

char *sub_87169C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  v9 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v9 - 8) + 56))(&v4[v8], 1, 1, v9);
  v10 = &v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets];
  v11 = *&UIEdgeInsetsZero.bottom;
  *v10 = *&UIEdgeInsetsZero.top;
  *(v10 + 1) = v11;
  v12 = a2[1];
  *(v4 + 1) = *a2;
  *(v4 + 2) = v12;
  v13 = a2[5];
  *(v4 + 5) = a2[4];
  *(v4 + 6) = v13;
  v14 = a2[3];
  *(v4 + 3) = a2[2];
  *(v4 + 4) = v14;
  v15 = objc_allocWithZone(MarqueeView);
  sub_7933C8(a2, v39);
  v16 = [v15 init];
  *&v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] = v16;
  sub_7933C8(a2, v39);
  v17 = sub_8712CC(a2);
  v18 = &v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind];
  *v18 = v17;
  v18[8] = v19 & 1;
  v20 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_86AC68(a1, &v4[v20]);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
  [*&v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] setAnimationReferenceView:a3];
  memset(v39, 0, sizeof(v39));
  sub_86EBB4(v39);
  sub_86F770();
  v22 = *v18;
  v23 = [v22 superview];
  v24 = *&v4[v21];
  v25 = [v24 contentView];
  v26 = v25;
  if (!v23)
  {
    if (!v25)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (!v25)
  {
    v26 = v23;
LABEL_8:

    goto LABEL_9;
  }

  sub_13C80(0, &qword_E1E050, UIView_ptr);
  v27 = sub_ABA790();

  if (v27)
  {
    goto LABEL_12;
  }

LABEL_9:
  result = [v24 contentView];
  if (result)
  {
    v29 = result;
    [result addSubview:v22];

    result = [v24 contentView];
    if (result)
    {
      v30 = result;
      [result bounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      [v22 setFrame:{v32, v34, v36, v38}];
      [v22 setAutoresizingMask:18];
      [v24 setViewForContentSize:v22];
LABEL_12:

      sub_12E1C(a1, &qword_E1CE10, &qword_B31FC0);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_8719B0()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_86AC00(v2, v0 + v1, type metadata accessor for NowPlaying.TrackMetadata);
  v3 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes);
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v22 = v6;
  *(&v22 + 1) = v8;
  LOBYTE(v23) = 0;
  BYTE8(v23) = 0;
  *&v24 = 0x4040000000000000;
  *(&v24 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v25 = leading;
  *(&v25 + 1) = bottom;
  *&v26 = trailing;
  v27 = 0uLL;
  *(&v26 + 1) = 1;
  v28[0] = v6;
  v28[1] = v8;
  v29 = 0;
  v30 = 0;
  v31 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v33 = leading;
  v34 = bottom;
  v35 = trailing;
  v37 = 0;
  v38 = 0;
  v36 = 1;
  sub_7933C8(&v22, v45);
  sub_793424(v28);
  v12 = v25;
  v4[2] = v24;
  v4[3] = v12;
  v13 = v27;
  v4[4] = v26;
  v4[5] = v13;
  v14 = v23;
  *v4 = v22;
  v4[1] = v14;
  v15 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes);
  v16 = [v5 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v17 = [v7 secondaryLabelColor];
  *&v39 = v16;
  *(&v39 + 1) = v17;
  LOBYTE(v40) = 0;
  BYTE8(v40) = 0;
  *&v41 = 0x4040000000000000;
  *(&v41 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v42 = leading;
  *(&v42 + 1) = bottom;
  *&v43 = trailing;
  v44 = 0uLL;
  *(&v43 + 1) = 1;
  v45[0] = v16;
  v45[1] = v17;
  v46 = 0;
  v47 = 0;
  v48 = 0x4040000000000000;
  v49 = NSDirectionalEdgeInsetsZero.top;
  v50 = leading;
  v51 = bottom;
  v52 = trailing;
  v54 = 0;
  v55 = 0;
  v53 = 1;
  sub_7933C8(&v39, v21);
  sub_793424(v45);
  v18 = v42;
  v15[2] = v41;
  v15[3] = v18;
  v19 = v44;
  v15[4] = v43;
  v15[5] = v19;
  v20 = v40;
  *v15 = v39;
  v15[1] = v20;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition) = 0;
  sub_ABAFD0();
  __break(1u);
}

void *sub_871C64(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  if (a2)
  {
  }

  v6[5] = a2;

  for (i = 0; i != 2; ++i)
  {
    if (v6[i + 4])
    {

      sub_AB9730();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D140, &unk_B323D8);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

void *sub_871D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  if (a2)
  {
  }

  else
  {
    a3 = 0;
  }

  v7[5] = a3;

  for (i = 0; i != 2; ++i)
  {
    if (v7[i + 4])
    {

      sub_AB9730();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D140, &unk_B323D8);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

char *_s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC17transitionContext2to9directionAF010TransitionK0VSgAC0F8MetadataV_AA5GlissO9DirectionOSgtF_0(uint64_t a1)
{
  v2 = v1;
  v102 = a1;
  v101 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v98 = *(v101 - 8);
  __chkstk_darwin();
  v89 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE28, &qword_B31FD0);
  __chkstk_darwin();
  v94 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v85 - v5;
  __chkstk_darwin();
  v86 = &v85 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE10, &qword_B31FC0);
  __chkstk_darwin();
  v88 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v85 - v8;
  __chkstk_darwin();
  v85 = &v85 - v9;
  __chkstk_darwin();
  v11 = &v85 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1CE20, &qword_B31FC8);
  __chkstk_darwin();
  v13 = &v85 - v12;
  v14 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v95 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin();
  v19 = &v85 - v18;
  v20 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v21 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  v103 = &v85 - v18;
  if (v21)
  {
    v22 = *(*v21 + 208);

    v22(v23);
    v19 = v103;

    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      sub_6A6DF8(v13, v19, type metadata accessor for NowPlaying.TrackMetadata);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14, v17);
  }

  v24 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_86AC00(&v2[v24], v19, type metadata accessor for NowPlaying.TrackMetadata);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_12E1C(v13, &qword_E1CE20, &qword_B31FC8);
  }

LABEL_7:
  v25 = *&v2[v20];
  v26 = v102;
  v100 = v14;
  if (!v25 || (v27 = *(*v25 + 424), v28 = type metadata accessor for NowPlaying.TrackTitleStackView(0), v29 = sub_872BD8(&qword_E1CE18, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView), , v27(&v106, v2, v28, v29), v19 = v103, , !v106))
  {
    v30 = 0;
    v31 = 0;
    goto LABEL_13;
  }

  v31 = *(&v107 + 1);
  v30 = v107;
  sub_870F9C(v107);

  sub_870FE0(v30, v31);
  if (!v30)
  {
LABEL_13:
    v33 = v30;
    v30 = sub_86A67C();
    goto LABEL_14;
  }

  v32 = static NowPlaying.TrackMetadata.== infix(_:_:)();

  if (v32)
  {

    goto LABEL_13;
  }

  v33 = v30;
LABEL_14:
  sub_86AC00(v26 + *(v100 + 24), v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  (*(v98 + 7))(v11, 0, 1, v101);
  v34 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v35 = *(v34 + 3);
  v108 = *(v34 + 2);
  v109 = v35;
  v36 = *(v34 + 5);
  v110 = *(v34 + 4);
  v111 = v36;
  v37 = *(v34 + 1);
  v106 = *v34;
  v107 = v37;
  type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
  swift_allocObject();
  v38 = v2;
  sub_7933C8(&v106, v105);
  v92 = sub_87169C(v11, &v106, v38);

  sub_793424(&v106);
  v96 = v33;
  v97 = v31;
  v90 = v11;
  v93 = v30;
  if (!v33)
  {
    goto LABEL_28;
  }

  if (static NowPlaying.TrackMetadata.== infix(_:_:)())
  {

    goto LABEL_28;
  }

  v39 = *(v100 + 28);
  v40 = *(v99 + 48);
  v41 = v86;
  sub_15F84(v26 + v39, v86, &qword_E1CE10, &qword_B31FC0);
  sub_15F84(&v19[v39], v41 + v40, &qword_E1CE10, &qword_B31FC0);
  v42 = *(v98 + 6);
  v43 = v101;
  if (v42(v41, 1, v101) != 1)
  {
    v46 = v85;
    sub_15F84(v41, v85, &qword_E1CE10, &qword_B31FC0);
    if (v42(v41 + v40, 1, v43) != 1)
    {
      v48 = v89;
      sub_6A6DF8(v41 + v40, v89, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      v49 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
      sub_6A6E60(v48, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      sub_6A6E60(v46, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      sub_12E1C(v41, &qword_E1CE10, &qword_B31FC0);
      v45 = v97;
      if (v49)
      {

        goto LABEL_27;
      }

LABEL_23:

      v98 = v45;
      v47 = v100;
      goto LABEL_37;
    }

    sub_6A6E60(v46, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v45 = v97;
LABEL_22:
    sub_12E1C(v41, &qword_E1CE28, &qword_B31FD0);
    goto LABEL_23;
  }

  v44 = v42(v41 + v40, 1, v43);
  v45 = v97;
  if (v44 != 1)
  {
    goto LABEL_22;
  }

  sub_12E1C(v41, &qword_E1CE10, &qword_B31FC0);
LABEL_27:
  v26 = v102;
  v19 = v103;
LABEL_28:
  v47 = v100;
  v50 = *(v100 + 28);
  v51 = v19;
  v52 = *(v99 + 48);
  v53 = v26 + v50;
  v54 = v91;
  sub_15F84(v53, v91, &qword_E1CE10, &qword_B31FC0);
  v55 = &v51[v50];
  v56 = v54;
  sub_15F84(v55, v54 + v52, &qword_E1CE10, &qword_B31FC0);
  v42 = *(v98 + 6);
  v57 = v101;
  if (v42(v56, 1, v101) == 1)
  {
    if (v42(v56 + v52, 1, v57) == 1)
    {
      sub_12E1C(v56, &qword_E1CE10, &qword_B31FC0);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v58 = v87;
  sub_15F84(v56, v87, &qword_E1CE10, &qword_B31FC0);
  if (v42(v56 + v52, 1, v57) == 1)
  {
    sub_6A6E60(v58, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v47 = v100;
LABEL_33:
    sub_12E1C(v56, &qword_E1CE28, &qword_B31FD0);
LABEL_36:
    v98 = sub_86AA04();
    goto LABEL_37;
  }

  v59 = v56 + v52;
  v60 = v89;
  sub_6A6DF8(v59, v89, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v61 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  sub_6A6E60(v60, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_6A6E60(v58, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_12E1C(v56, &qword_E1CE10, &qword_B31FC0);
  v47 = v100;
  if ((v61 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_35:
  if (static NowPlaying.TrackMetadata.== infix(_:_:)())
  {
    goto LABEL_36;
  }

  v98 = 0;
LABEL_37:
  v62 = *(v47 + 28);
  v63 = *(v99 + 48);
  v64 = v94;
  sub_15F84(v102 + v62, v94, &qword_E1CE10, &qword_B31FC0);
  sub_15F84(&v103[v62], v64 + v63, &qword_E1CE10, &qword_B31FC0);
  v65 = v101;
  if (v42(v64, 1, v101) == 1)
  {
    v66 = v42(v64 + v63, 1, v65);
    v67 = v102;
    if (v66 == 1)
    {
      sub_12E1C(v64, &qword_E1CE10, &qword_B31FC0);
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v68 = v88;
  sub_15F84(v64, v88, &qword_E1CE10, &qword_B31FC0);
  if (v42(v64 + v63, 1, v65) == 1)
  {
    sub_6A6E60(v68, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v67 = v102;
LABEL_42:
    sub_12E1C(v64, &qword_E1CE28, &qword_B31FD0);
LABEL_43:
    v69 = v90;
    sub_15F84(v67 + v62, v90, &qword_E1CE10, &qword_B31FC0);
    v70 = &v38[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v71 = *(v70 + 2);
    v72 = *(v70 + 3);
    v73 = *(v70 + 5);
    v105[4] = *(v70 + 4);
    v105[5] = v73;
    v105[3] = v72;
    v74 = *(v70 + 1);
    v105[0] = *v70;
    v105[1] = v74;
    v105[2] = v71;
    swift_allocObject();
    v75 = v38;
    sub_7933C8(v105, &v104);
    sub_87169C(v69, v105, v75);

    sub_793424(v105);
    goto LABEL_45;
  }

  v76 = v64 + v63;
  v77 = v89;
  sub_6A6DF8(v76, v89, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v78 = v64;
  v79 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  sub_6A6E60(v77, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_6A6E60(v68, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_12E1C(v78, &qword_E1CE10, &qword_B31FC0);
  v67 = v102;
  if ((v79 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_45:
  v80 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  v81 = &v38[v80];
  v82 = v95;
  sub_86AC00(v81, v95, type metadata accessor for NowPlaying.TrackMetadata);
  v83 = static NowPlaying.TrackMetadata.== infix(_:_:)();
  sub_870FE0(v96, v97);
  sub_6A6E60(v82, type metadata accessor for NowPlaying.TrackMetadata);
  sub_6A6E60(v103, type metadata accessor for NowPlaying.TrackMetadata);
  if (v83)
  {
  }

  return v93;
}

uint64_t sub_872BD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_872C20(char *result, void *a2, void *a3)
{
  if (result != &dword_0 + 1)
  {
    v4 = result;
    v5 = a3;
    v6 = v4;

    return a2;
  }

  return result;
}

uint64_t sub_872CBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  return sub_86AC00(v3 + v4, a2, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t sub_872D38(uint64_t a1)
{
  result = type metadata accessor for NowPlaying.TrackMetadata(319);
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

uint64_t get_enum_tag_for_layout_string_9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC17TransitionContextV7Content33_8F7564099BF3006270956A38774C94CALLVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_872E40(uint64_t a1)
{
  sub_872EFC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_872EFC(uint64_t a1)
{
  if (!qword_E1CF10)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(255);
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_E1CF10);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy96_8_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_872F94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_872FDC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_873044(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_873098(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_873108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy152_8_1(uint64_t a1, uint64_t a2)
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
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_873178(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 152))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_873198(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 152) = v3;
  return result;
}

uint64_t sub_873234()
{
  v1 = *(v0 + 88);
  if (v1 != &dword_0 + 1)
  {
  }

  return swift_deallocObject();
}

unint64_t sub_87329C()
{
  result = qword_E1D118;
  if (!qword_E1D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D118);
  }

  return result;
}

unint64_t sub_8732F0()
{
  result = qword_E1D120;
  if (!qword_E1D120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1D120);
  }

  return result;
}

double sub_873344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    return sub_870F9C(a3);
  }

  return result;
}

double sub_8733A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    return sub_870FE0(a3, a4);
  }

  return result;
}

id PassthroughView.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  if (UIViewIgnoresTouchEvents())
  {
    return 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for PassthroughView();
  v7 = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    sub_856380();
    v8 = v7;
    v9 = v3;
    v10 = sub_ABA790();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

id PassthroughView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id PassthroughView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PassthroughView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id PassthroughView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *SymbolButton.__allocating_init(intent:)(uint64_t a1)
{
  v1 = a1;
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v3 = (&v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_8738BC(v1, 2, v3);
  v4 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v5 = sub_8A0278(v3, 0, 0);
  v6 = &v5[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = sub_873BB8;
  v6[1] = 0;
  v9 = v5;
  sub_17654(v7, v8);
  if (v1)
  {
    if (v1 == 1)
    {
      v10 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v10 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v10 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v11, v12, v15, v13, v14);

  return v9;
}

uint64_t sub_8738BC@<X0>(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v26 = a1;
  v27 = a2;
  v4 = sub_AB4EB0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (type metadata accessor for SymbolButton.Configuration(0) - 8);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_8A0228(v28);
  v11 = v28[5];
  *(a3 + 64) = v28[4];
  *(a3 + 80) = v11;
  *(a3 + 96) = v28[6];
  v12 = v29;
  v13 = v28[1];
  *a3 = v28[0];
  *(a3 + 16) = v13;
  v14 = v28[3];
  *(a3 + 32) = v28[2];
  *(a3 + 48) = v14;
  *(a3 + 112) = v12;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = UIFontTextStyleSubheadline;
  *(a3 + 144) = UIFontWeightSemibold;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0x3FF0000000000000;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = 1;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = 1;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  v15 = v8[11];
  v16 = sub_ABA680();
  (*(*(v16 - 8) + 56))(a3 + v15, 1, 1, v16);
  v17 = a3 + v8[12];
  *(v17 + 48) = 0;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *v17 = 0u;
  v18 = (a3 + v8[13]);
  *v18 = 0;
  v18[1] = 0;
  v18[2] = 1;
  *(a3 + v8[14]) = 0x4010000000000000;
  *(a3 + v8[15]) = vdupq_n_s64(0x4040000000000000uLL);
  v19 = a3 + v8[16];
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v20 = (a3 + v8[17]);
  v21 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v20 = *&NSDirectionalEdgeInsetsZero.top;
  v20[1] = v21;
  v22 = a3 + v8[18];
  *v22 = 1;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(a3 + v8[19]) = 0x3FF0000000000000;
  *(a3 + v8[20]) = 0;
  *(a3 + v8[21]) = 2;
  v23 = UIFontTextStyleSubheadline;
  SymbolButton.Configuration.init()(v10);
  sub_874AAC(v10, v26, v27);
  sub_878C28(a3, type metadata accessor for SymbolButton.Configuration);
  sub_BD554(v10, a3);
  v24 = [objc_opt_self() currentTraitCollection];
  sub_AB4E90();
  sub_873BDC();
  return (*(v5 + 8))(v7, v4);
}

void sub_873BDC()
{
  v1 = v0;
  v2 = sub_AB4EA0();
  v3 = [v2 userInterfaceIdiom];

  if (v3 != &dword_4 + 2)
  {
    if (*(v0 + 232) == 1 || (v4 = *(v0 + 256), v4 == 2))
    {
      if (sub_AB4E70() & 1) != 0 || (sub_AB4E50())
      {
        if (qword_E16920 != -1)
        {
          swift_once();
        }

        v5 = static UIColor.MusicTint.pressed;
        v6 = *(v1 + 112);
        v7 = static UIColor.MusicTint.pressed;

        *(v1 + 112) = v5;
        *(v1 + 176) = v5;
      }

      else
      {

        *(v0 + 112) = 0;
        *(v0 + 176) = 0;
      }
    }

    else
    {
      v8 = objc_opt_self();
      if (v4)
      {
        v9 = v8;
        v10 = [v8 blackColor];

        *(v0 + 112) = v10;
        v11 = [v9 blackColor];

        *(v0 + 176) = v11;
        [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.05];
        UIView.Border.init(thickness:color:)();
        v13 = v12;
        v15 = v14;
        v17 = v16 & 1;

        *(v0 + 280) = v13;
        *(v0 + 288) = v17;
        *(v0 + 296) = v15;
        LOBYTE(v13) = sub_AB4E70();
        sub_7B0A80();
        v18 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(19, 19, 20, 1.0);
        if (v13)
        {
          v19 = 0x3FD5C28F5C28F5C3;
        }

        else
        {
          v19 = 0x3FD3333333333333;
        }

        sub_3F9D0(*(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224));
        *(v1 + 200) = v19;
        *(v1 + 208) = v18;
      }

      else
      {
        v20 = v8;
        v21 = [v8 whiteColor];

        *(v0 + 112) = v21;
        v22 = [v20 whiteColor];

        *(v0 + 176) = v22;
        [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.05];
        UIView.Border.init(thickness:color:)();
        v24 = v23;
        v26 = v25;
        v28 = v27 & 1;

        *(v0 + 280) = v24;
        *(v0 + 288) = v28;
        *(v0 + 296) = v26;
        v29 = sub_AB4E70();
        v30 = [v20 whiteColor];
        if (v29)
        {
          v31 = 0x3FD0A3D70A3D70A4;
        }

        else
        {
          v31 = 0x3FCC28F5C28F5C29;
        }

        sub_3F9D0(*(v1 + 200), *(v1 + 208), *(v1 + 216), *(v1 + 224));
        *(v1 + 200) = v31;
        *(v1 + 208) = v30;
      }

      *(v1 + 216) = 0;
      *(v1 + 224) = 0;
    }
  }
}

uint64_t SymbolButton.Intent.accessibilityIdentifier.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v1 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v1 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v2 = *v1;

  return v2;
}

void SymbolButton.update(to:)(unsigned int a1)
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = (&v16 - v5);
  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_BD494(v1 + v7, v4);
  if (*(v4 + 29) == 1)
  {
    sub_878C28(v4, type metadata accessor for SymbolButton.Configuration);
    v8 = 2;
  }

  else
  {
    v9 = v4[256];
    sub_878C28(v4, type metadata accessor for SymbolButton.Configuration);
    if (v9 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = (v9 & 1) == 0;
    }
  }

  sub_8738BC(a1, v8, v6);
  SymbolButton.setConfiguration(_:animation:updates:)(v6, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_878C28(v6, type metadata accessor for SymbolButton.Configuration);
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v10 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v10 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];

  type metadata accessor for SymbolButton(0);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v11, v12, v15, v13, v14);
}

uint64_t SymbolButton.materialColor.getter()
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_BD494(v0 + v3, v2);
  if (*(v2 + 29) == 1)
  {
    sub_878C28(v2, type metadata accessor for SymbolButton.Configuration);
    return 2;
  }

  else
  {
    v5 = v2[256];
    sub_878C28(v2, type metadata accessor for SymbolButton.Configuration);
    if (v5 == 2)
    {
      return 2;
    }

    else
    {
      return (v5 & 1) == 0;
    }
  }
}

void SymbolButton.materialColor.setter(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D170, &unk_B32400);
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = type metadata accessor for SymbolButton.Configuration(0);
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (v11 != &dword_4 + 2)
  {
    if (a1 == 2)
    {
      v19 = 0;
      v20 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 1;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 2;
      v25 = 0;
      v26 = 0;
      sub_874988(&v21, a1 & 1);
      v15 = v21;
      v19 = v23;
      v20 = v22;
      v12 = v24;
      v13 = v25;
      v14 = v26;
    }

    v16 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_BD494(v1 + v16, v9);
    sub_3FA8C(*(v9 + 29), *(v9 + 30), *(v9 + 31), *(v9 + 32), *(v9 + 33), *(v9 + 34));
    v17 = v19;
    v18 = v20;
    *(v9 + 29) = v15;
    *(v9 + 30) = v18;
    *(v9 + 31) = v17;
    *(v9 + 32) = v12;
    *(v9 + 33) = v13;
    *(v9 + 34) = v14;
    SymbolButton.setConfiguration(_:animation:updates:)(v9, 0, 0, 0, 1, _swiftEmptyArrayStorage);
    sub_878C28(v9, type metadata accessor for SymbolButton.Configuration);
    (*(v6 + 56))(v4, 1, 1, v5);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v4, 0, 0, 0, 1);
    sub_12E1C(v4, &qword_E1D170, &unk_B32400);
  }
}

void (*SymbolButton.materialColor.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v5 = *(*(type metadata accessor for SymbolButton.Configuration(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 32) = v6;
  v8 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_BD494(v1 + v8, v7);
  if (*(v7 + 232) == 1)
  {
    sub_878C28(v7, type metadata accessor for SymbolButton.Configuration);
    v9 = 2;
  }

  else
  {
    v10 = *(v7 + 256);
    sub_878C28(v7, type metadata accessor for SymbolButton.Configuration);
    if (v10 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = (v10 & 1) == 0;
    }
  }

  *(v4 + 40) = v9;
  return sub_8745CC;
}

void sub_8745CC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  SymbolButton.materialColor.setter(*(*a1 + 40));
  free(v2);

  free(v1);
}

uint64_t SymbolButton.Intent.title.getter(char a1)
{
  sub_AB35C0();
  __chkstk_darwin();
  v1 = sub_AB9250();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  sub_AB91E0();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v7 = qword_E73660;
  sub_AB3550();
  v8 = sub_AB9320();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t SymbolButton.Intent.symbolName.getter(char a1)
{
  if (!a1)
  {
    return 0x6C69662E79616C70;
  }

  if (a1 == 1)
  {
    return 0x656C6666756873;
  }

  return 0x69732E656C707061;
}

unint64_t SymbolButton.Intent.id.getter(char a1)
{
  result = 0xD000000000000015;
  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return result;
}

uint64_t SymbolButton.Intent.actionDetailsPlayType.getter(char a1)
{
  if (a1 == 1)
  {
    return 0x41656C6666756873;
  }

  else
  {
    return 7105633;
  }
}

uint64_t SymbolButton.Intent.actionType.getter(char a1)
{
  if ((a1 & 0xFE) != 0)
  {
    return 64;
  }

  else
  {
    return 31;
  }
}

unint64_t sub_874954@<X0>(unint64_t *a1@<X8>)
{
  result = SymbolButton.Intent.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_874988(uint64_t a1, char a2)
{
  *(a1 + 24) = (a2 & 1) == 0;
  v3 = [objc_opt_self() effectWithBlurRadius:50.0];

  *a1 = v3;
  v4 = [objc_opt_self() colorEffectSaturate:1.6];

  *(a1 + 8) = v4;
  sub_ABAD90(19);

  v5._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v5);

  *(a1 + 32) = 0xD000000000000011;
  *(a1 + 40) = 0x8000000000B76BB0;
}

double sub_874AAC(uint64_t a1, char a2, int a3)
{
  v37 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1DB50, &qword_B29E40);
  __chkstk_darwin();
  v6 = &v36 - v5;
  sub_8A0228(&v47);
  v55 = v47;
  v7 = v48;
  v8 = v51;
  sub_12E1C(&v55, &qword_E1DBB0, &qword_B32B20);
  v9 = a2;
  v10 = *&aPlayFilshuffle[8 * a2];
  v11 = *&aAppleSil[8 * a2 + 8];
  v54 = v49;
  v12 = UIFontTextStyleSubheadline;
  sub_878C28(&v54, _s3__C9TextStyleVMa_0);
  v13 = *(a1 + 80);
  v44[4] = *(a1 + 64);
  v44[5] = v13;
  v44[6] = *(a1 + 96);
  v45 = *(a1 + 112);
  v14 = *(a1 + 16);
  v44[0] = *a1;
  v44[1] = v14;
  v15 = *(a1 + 48);
  v44[2] = *(a1 + 32);
  v44[3] = v15;
  sub_878C88(v44);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v7;
  *(a1 + 24) = v12;
  *(a1 + 32) = v50;
  *(a1 + 48) = 6;
  *(a1 + 56) = v8;
  *(a1 + 64) = xmmword_B283C0;
  *(a1 + 80) = 1;
  *(a1 + 81) = v52;
  *(a1 + 97) = *v53;
  *(a1 + 112) = *&v53[15];
  v16 = SymbolButton.Intent.title.getter(a2);
  v18 = v17;

  v19 = UIFontTextStyleBody;

  v20 = *(a1 + 136);
  v21 = *(a1 + 168);
  v46[2] = *(a1 + 152);
  v46[3] = v21;
  v46[4] = *(a1 + 184);
  v46[0] = *(a1 + 120);
  v46[1] = v20;
  sub_878CDC(v46);
  *(a1 + 120) = v16;
  *(a1 + 128) = v18;
  *(a1 + 136) = v19;
  *(a1 + 144) = UIFontWeightSemibold;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3FF0000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v22 = [objc_opt_self() currentTraitCollection];
  v23 = [v22 userInterfaceIdiom];

  if (v23 != &dword_4 + 2)
  {
    if (v37 == 2)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 1;
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 2;
      v42 = 0;
      v43 = 0;
      sub_874988(&v38, v37 & 1);
      v29 = v38;
      v24 = v39;
      v25 = v40;
      v26 = v41;
      v27 = v42;
      v28 = v43;
    }

    sub_3FA8C(*(a1 + 232), *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 272));
    *(a1 + 232) = v29;
    *(a1 + 240) = v24;
    *(a1 + 248) = v25;
    *(a1 + 256) = v26;
    *(a1 + 264) = v27;
    *(a1 + 272) = v28;
  }

  if (qword_E16C40 != -1)
  {
    swift_once();
  }

  v30 = sub_ABA680();
  v31 = __swift_project_value_buffer(v30, static UIView.Corner.capsule);
  v32 = *(v30 - 8);
  (*(v32 + 16))(v6, v31, v30);
  (*(v32 + 56))(v6, 0, 1, v30);
  v33 = type metadata accessor for SymbolButton.Configuration(0);
  sub_7A57A8(v6, a1 + v33[9]);
  *(a1 + v33[12]) = qword_B32B78[v9];
  *(a1 + v33[13]) = vdupq_n_s64(0x4048000000000000uLL);
  v34 = (a1 + v33[15]);
  result = 0.0;
  *v34 = xmmword_B0B770;
  v34[1] = xmmword_B0B770;
  return result;
}

Swift::Int static PlayIntentButtonStack.playShuffle(_:)()
{
  v0 = sub_7AE104(&off_D34E48);

  return v0;
}

Swift::Int static PlayIntentButtonStack.sing(_:)()
{
  v0 = sub_7AE104(&off_D34E70);

  return v0;
}

Swift::Int PlayIntentButtonStack.init(_:handler:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C228, &qword_B31490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = a1;
  v3 = sub_7AE104(inited);
  swift_setDeallocating();
  return v3;
}

uint64_t PlayIntentButtonStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = sub_AB6A50();
  v9 = sub_AB6A60();
  sub_AB6A60();
  if (sub_AB6A60() != v8)
  {
    v9 = sub_AB6A60();
  }

  *a4 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D178, &qword_B32410);
  return sub_875074(a1, a2, a3, &a4[*(v10 + 44)]);
}

uint64_t sub_875074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D210, &qword_B32AD8);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v22 - v12;
  __chkstk_darwin();
  v15 = &v22 - v14;
  __chkstk_darwin();
  v17 = &v22 - v16;
  sub_8752AC(0, a1, a2, a3, &v22 - v16);
  sub_8752AC(1, a1, a2, a3, v15);
  v18 = *(v9 + 16);
  v18(v13, v17, v8);
  v18(v11, v15, v8);
  v18(a4, v13, v8);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D218, &qword_B32AE0);
  v18(&a4[*(v19 + 48)], v11, v8);
  v20 = *(v9 + 8);
  v20(v15, v8);
  v20(v17, v8);
  v20(v11, v8);
  return (v20)(v13, v8);
}

void sub_8752AC(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E20, &qword_B2CF58);
  __chkstk_darwin();
  v50 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v48 = &v43[-v10];
  v11 = sub_AB5C70();
  v57 = *(v11 - 8);
  __chkstk_darwin();
  v56 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v55 = &v43[-v13];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E18E28, &qword_B2CF60);
  __chkstk_darwin();
  v47 = &v43[-v14];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D220, &qword_B32AE8);
  __chkstk_darwin();
  v16 = &v43[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D228, &qword_B32AF0);
  __chkstk_darwin();
  v19 = &v43[-v18];
  v54 = v16;
  *v16 = 0x4030000000000000;
  v20 = *(a2 + 16);
  v58 = v21;
  v59 = &v43[-v18];
  if (v20)
  {
    v44 = a1;
    v45 = a3;
    v46 = a4;
    v22 = sub_876A60(v20, 0);
    v23 = sub_131344(&v60, v22 + 32, v20, a2);
    v24 = a2;
    v25 = v60;
    v26 = v24;

    sub_2BB88(v25);
    if (v23 != v20)
    {
      goto LABEL_8;
    }

    v17 = v58;
    v19 = v59;
    a2 = v26;
    a3 = v45;
    a4 = v46;
    LOBYTE(a1) = v44;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v60 = v22;
  sub_876AD4(&v60);
  v27 = swift_allocObject();
  *(v27 + 16) = a1 & 1;
  *(v27 + 24) = a2;
  *(v27 + 32) = a3;
  *(v27 + 40) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D230, &qword_B32AF8);
  sub_36A00(&qword_E1D238, &qword_E1D230, &qword_B32AF8, &protocol conformance descriptor for [A]);
  sub_878434();
  sub_8789C4();
  v28 = v54;
  sub_AB78C0();
  v29 = *(a2 + 16) < 2uLL;
  sub_36B0C(v28, v19, &qword_E1D220, &qword_B32AE8);
  v30 = &v19[*(v17 + 36)];
  *v30 = v29;
  v30[1] = 1;
  v31 = v57;
  v32 = *(v57 + 104);
  v33 = v55;
  v32(v55, enum case for DynamicTypeSize.xSmall(_:), v11);
  v34 = v56;
  v32(v56, enum case for DynamicTypeSize.accessibility2(_:), v11);
  sub_878A18(&qword_E17A98, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if (sub_AB9170())
  {
    v35 = *(v31 + 32);
    v36 = v48;
    v35(v48, v33, v11);
    v37 = v51;
    v35((v36 + *(v51 + 48)), v34, v11);
    v38 = v50;
    sub_15F84(v36, v50, &qword_E18E20, &qword_B2CF58);
    v39 = *(v37 + 48);
    v40 = v47;
    v35(v47, v38, v11);
    v41 = *(v31 + 8);
    v41(&v38[v39], v11);
    sub_36B0C(v36, v38, &qword_E18E20, &qword_B2CF58);
    v35((v40 + *(v49 + 36)), &v38[*(v37 + 48)], v11);
    v41(v38, v11);
    sub_878A60();
    sub_36A00(&qword_E18F48, &qword_E18E28, &qword_B2CF60, &protocol conformance descriptor for ClosedRange<A>);
    v42 = v59;
    sub_AB70A0();
    sub_12E1C(v40, &qword_E18E28, &qword_B2CF60);
    sub_12E1C(v42, &qword_E1D228, &qword_B32AF0);
    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);

  __break(1u);
}

uint64_t PlayIntentButtonWrapper.init(intent:iconOnly:handler:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = swift_getKeyPath();
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 24) = result;
  *(a5 + 32) = 0;
  return result;
}

uint64_t sub_875994(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, double *a6, double a7)
{
  v41 = a6;
  v40 = a4;
  v39 = a3;
  v38 = a2;
  v37[1] = a1;
  v9 = sub_AB5A60();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB5B30();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D1F0, &qword_B32AD0) - 8;
  v18 = __chkstk_darwin();
  v20 = v37 - v19;
  v21 = *(v14 + 16);
  v42 = a5;
  v21(v16, a5, v13, v18);
  sub_878A18(&qword_E1D200, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_AB95A0();
  v22 = *(v17 + 44);
  sub_878A18(&qword_E1D1F8, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  sub_AB9CA0();
  v23 = 0.0;
  v24 = 0.0;
  if (*&v20[v22] != v44[0])
  {
    v25 = (v10 + 16);
    v26 = (v10 + 8);
    do
    {
      v27 = sub_AB9D80();
      (*v25)(v12);
      v27(v44, 0);
      sub_AB9CB0();
      sub_AB5E30();
      LOBYTE(v44[0]) = v28 & 1;
      v43[0] = v29 & 1;
      sub_AB5A40();
      v31 = v30;
      v33 = v32;
      (*v26)(v12, v9);
      if (v24 <= v31)
      {
        v24 = v31;
      }

      if (v23 <= v33)
      {
        v23 = v33;
      }

      sub_AB9CA0();
    }

    while (*&v20[v22] != v44[0]);
  }

  sub_12E1C(v20, &qword_E1D1F0, &qword_B32AD0);
  sub_AB9C60();
  sub_AB9CA0();
  v34 = sub_AB9C90();
  sub_AB9C60();
  sub_AB9CA0();
  result = sub_AB9C90();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v36 = v41;
    *v41 = v24;
    v36[1] = v24 * v34 + (result - 1) * a7;
  }

  return result;
}

void (*sub_875EC4(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_AB5620();
  return sub_A8F90;
}

uint64_t sub_875F4C@<X0>(_BYTE *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = sub_AB6A50();
  v8 = sub_AB6A60();
  sub_AB6A60();
  if (sub_AB6A60() != v7)
  {
    v8 = sub_AB6A60();
  }

  *a2 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1D178, &qword_B32410);
  return sub_875074(v4, v5, v6, &a2[*(v9 + 44)]);
}

uint64_t EnvironmentValues.playIntentButtonMaterial.getter()
{
  sub_877574();
  sub_AB6250();
  return v1;
}

uint64_t sub_876030@<X0>(_BYTE *a1@<X8>)
{
  sub_877574();
  result = sub_AB6250();
  *a1 = v3;
  return result;
}

char *PlayIntentButtonWrapper.makeUIView(context:)()
{
  type metadata accessor for SymbolButton(0);
  v1 = SymbolButton.__allocating_init(intent:)(*v0);
  PlayIntentButtonWrapper.updateUIView(_:context:)(v1);
  return v1;
}

uint64_t PlayIntentButtonWrapper.updateUIView(_:context:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_AB6240();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SymbolButton.update(to:)(*v2);
  v25 = v2[32];
  v10 = *(v2 + 3);
  v24 = v10;
  if (v25 != 1)
  {

    v11 = sub_AB9F40();
    v12 = sub_AB6A40();
    sub_AB4A90(v11, &dword_0, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_AB6230();
    swift_getAtKeyPath();
    sub_12E1C(&v24, &qword_E1D188, &unk_B32440);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v10) = v23[40];
  }

  SymbolButton.materialColor.setter(v10);
  v13 = v2[1];
  v14 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_BD494(a1 + v14, v5);
  v5[184] = v13;
  SymbolButton.setConfiguration(_:animation:updates:)(v5, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_878C28(v5, type metadata accessor for SymbolButton.Configuration);
  sub_BD494(a1 + v14, v5);
  *(v5 + 24) = 1;
  SymbolButton.setConfiguration(_:animation:updates:)(v5, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_878C28(v5, type metadata accessor for SymbolButton.Configuration);
  v15 = *(v2 + 1);
  v16 = *(v2 + 2);
  v17 = swift_allocObject();
  v18 = *(v2 + 1);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v18;
  *(v17 + 48) = v2[32];
  v19 = (a1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler);
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *v19 = sub_877614;
  v19[1] = v17;
  sub_15F84(&v24, v23, &qword_E1D188, &unk_B32440);
  sub_307CC(v15, v16);
  return sub_17654(v20, v21);
}

double PlayIntentButtonWrapper.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, int a3, int a4, id a5)
{
  [a5 intrinsicContentSize];
  if ((a2 & 1) == 0)
  {
    if (result > *&a1)
    {
      v8 = result;
    }

    else
    {
      v8 = *&a1;
    }

    if (*&a1 != INFINITY)
    {
      return v8;
    }
  }

  return result;
}

char *sub_8764F8()
{
  v3 = *v0;
  type metadata accessor for SymbolButton(0);
  v1 = SymbolButton.__allocating_init(intent:)(v3);
  PlayIntentButtonWrapper.updateUIView(_:context:)(v1);
  return v1;
}

uint64_t sub_876554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8788C0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_8765B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_8788C0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_87661C(uint64_t a1)
{
  sub_8788C0();
  sub_AB65B0();
  __break(1u);
}

double View.playIntentButtonMaterial(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_AB6FE0();

  return result;
}

uint64_t sub_8766B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_87883C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.playIntentButtonMaterial.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_877574();
  sub_AB6250();
  return sub_87677C;
}

uint64_t static PlayIntentLayoutHelper.Configuration.with(_:)(void (*a1)(unsigned __int16 *))
{
  v2 = 513;
  v3 = 0x4030000000000000;
  a1(&v2);
  return v2;
}

uint64_t PlayIntentLayoutHelper.configuration.setter(uint64_t result, double a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

char *PlayIntentLayoutHelper.init()()
{
  type metadata accessor for SymbolButton(0);
  v0 = SymbolButton.__allocating_init(intent:)(0);
  SymbolButton.__allocating_init(intent:)(1);
  return v0;
}

uint64_t PlayIntentLayoutHelper.layout(in:rect:)(void *a1, double *a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v7 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA70, &qword_B2AB30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF7C50;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  v13 = a3;
  v14 = a4;
  _s11MusicCoreUI22PlayIntentLayoutHelperV6layout_2in4rect13configurationySayAA12SymbolButtonCG_So6UIViewCSo6CGRectVSgAC13ConfigurationVtFZ_0(inited, a1, a2, v7, a6);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t PlaybackIntentDescriptor.configure(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v7 = a1;
  v8 = PlaybackIntentDescriptor.intent.getter(a6, a1, a2, a3, a4, a5);
  [v8 setShuffleMode:v7 == 1];
  [v8 setRepeatMode:0];

  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v6 + *(result + 36)) = v7 == 2;
  return result;
}

id MPCPlaybackIntent.configure(for:)(char a1)
{
  [v1 setShuffleMode:a1 == 1];

  return [v1 setRepeatMode:0];
}

void *sub_876A60(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C228, &qword_B31490);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_876AD4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_853FD0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_ABB2B0(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_AB97D0();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_876C0C(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_876C0C(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_8773C0(v9);
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_877148((*a3 + *v79), (*a3 + *v81), (*a3 + v82), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_8773D4(0, *(v9 + 2) + 1, 1, v9);
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v9 = sub_8773D4((v30 > 1), v31 + 1, 1, v9);
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_877148((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), (*a3 + v75), v34);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_8773C0(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        sub_877334(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}