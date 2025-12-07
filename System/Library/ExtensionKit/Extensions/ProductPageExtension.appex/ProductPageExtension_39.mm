void *sub_10046D11C(void *a1, unsigned __int8 a2)
{
  v2 = a2;
  v3 = &unk_100882408;
  if (a2 != 1)
  {
    v3 = &_swiftEmptyArrayStorage[2];
  }

  v4 = *v3;
  if (*v3)
  {
    sub_1007714EC();
    if (v2 == 1)
    {
      v6 = &unk_100882418;
    }

    else
    {
      v6 = &_swiftEmptyArrayStorage[4];
    }

    do
    {
      v7 = *v6++;
      v8 = [a1 colorWithAlphaComponent:v7];
      sub_1007714CC();
      sub_1007714FC();
      sub_10077150C();
      sub_1007714DC();
      --v4;
    }

    while (v4);
  }

  return _swiftEmptyArrayStorage;
}

void sub_10046D22C()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColor);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView);
    v3 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_style);
    v5 = v1;
    *&v2[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = sub_10046D11C(v5, v3);

    sub_1001C05B8();
    [v2 setHidden:0];
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView);

    [v4 setHidden:1];
  }
}

void *sub_10046D334()
{
  v1 = [v0 traitCollection];
  v2 = [v1 userInterfaceStyle];

  v3 = v0[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_style];
  if (!v0[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_style])
  {
    v4 = objc_opt_self();
    if (v2 == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  if (v3 == 1)
  {
    v4 = objc_opt_self();
    if (v2 == 2)
    {
LABEL_4:
      v5 = [v4 blackColor];
LABEL_9:
      v6 = v5;
      goto LABEL_10;
    }

LABEL_8:
    v5 = [v4 whiteColor];
    goto LABEL_9;
  }

  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_todayCardStyleColor];
LABEL_10:
  v7 = v6;
  v8 = sub_10046D028(v7, v3);

  return v8;
}

id sub_10046D44C()
{
  v32.receiver = v0;
  v32.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v32, "layoutSubviews");
  sub_10076422C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_1007704BC();
  v11 = sub_100102A30(v2, v4, v6, v8, v9, v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView] setFrame:?];
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView] setFrame:{v11, v13, v15, v17}];
  sub_10076422C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  sub_1007704BC();
  v28 = sub_100102A30(v19, v21, v23, v25, v26, v27);
  v29 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurView];
  [v29 setFrame:v28];
  v30 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView];
  [v29 bounds];
  return [v30 setFrame:?];
}

unint64_t sub_10046D7A8()
{
  result = qword_100958420;
  if (!qword_100958420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958420);
  }

  return result;
}

char *sub_10046D7FC(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_todayCardStyleColor;
  *&v1[v4] = [objc_opt_self() clearColor];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY] = 0x3FF0000000000000;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurHorizontalInset] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorHorizontalInset] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurUserInterfaceStyle] = 0;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColor] = 0;
  v5 = objc_opt_self();
  if (!a1)
  {
LABEL_5:
    v5 = [v5 effectWithBlurRadius:30.0];
    if (!v5)
    {
      __break(1u);
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (a1 != 1)
  {
LABEL_7:
    v5 = [v5 effectWithStyle:6];
    goto LABEL_8;
  }

  v5 = [v5 effectWithBlurRadius:20.0];
  if (!v5)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_8:
  v6 = v5;
  v7 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v5];

  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurView] = v7;
  v8 = type metadata accessor for GradientView();
  v9 = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView] = v9;
  v10 = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView] = v10;
  v11 = [objc_allocWithZone(v8) init];
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView] = v11;
  v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_style] = a1;
  *&v1[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientEndY] = 0x3FF0000000000000;
  v53.receiver = v1;
  v53.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v53, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setClipsToBounds:0];
  v17 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurView;
  [v16 addSubview:*&v16[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurView]];
  v18 = [v16 layer];
  [v18 setAllowsGroupBlending:0];

  v19 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView;
  v20 = *&v16[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientMaskView];
  *&v20[OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors] = sub_10046CEF8(a1);

  sub_1001C05B8();

  v21 = *&v16[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY];
  v22 = *&v16[v19];
  v23 = [v22 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, v21}];

  v24 = *&v16[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY];
  v25 = *&v16[v19];
  v26 = [v25 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, v24}];

  v27 = a1;
  v28 = off_100895FE8[a1];
  v29 = *&v16[v19];
  sub_1001C0414(v28);

  v30 = [*&v16[v17] layer];
  v31 = [*&v16[v19] layer];
  objc_opt_self();
  [v30 setMask:swift_dynamicCastObjCClassUnconditional()];

  v32 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView;
  v33 = *&v16[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView];
  *(v33 + OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors) = sub_10046D334();

  sub_1001C05B8();
  v34 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY;
  v35 = *&v16[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY];
  v36 = *&v16[v32];
  v37 = [v36 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, v35}];

  v38 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientEndY;
  v39 = *&v16[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientEndY];
  v40 = *&v16[v32];
  v41 = [v40 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, v39}];

  v42 = off_100896000[v27];
  v43 = *&v16[v32];
  sub_1001C0414(v42);

  [v16 addSubview:*&v16[v32]];
  sub_10046D22C();
  v44 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView;
  v45 = *&v16[v34];
  v46 = *&v16[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColorGradientView];
  v47 = [v46 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, v45}];

  v48 = *&v16[v38];
  v49 = *&v16[v44];
  v50 = [v49 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, v48}];

  v51 = *&v16[v44];
  sub_1001C0414(v42);

  [v16 addSubview:*&v16[v44]];
  return v16;
}

void sub_10046DE9C()
{
  v1 = OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_todayCardStyleColor;
  *(v0 + v1) = [objc_opt_self() clearColor];
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientStartY) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientStartY) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurGradientEndY) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurHorizontalInset) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorHorizontalInset) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_blurUserInterfaceStyle) = 0;
  *(v0 + OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColor) = 0;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_10046DFE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007630EC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10046E064(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007630EC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10046E0F8(uint64_t a1)
{
  result = sub_1007630EC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10046E180@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_10076ECCC();
  v3 = *(v2 - 8);
  v52 = v2;
  v53 = v3;
  __chkstk_darwin(v2);
  v51 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10076EA2C();
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100958600, &qword_1007A5178);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v42 - v9;
  v43 = sub_10000A5D4(&qword_100958608, &qword_1007A5180);
  __chkstk_darwin(v43);
  v12 = v42 - v11;
  v13 = sub_10000A5D4(&qword_100958610, &qword_1007A5188);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  __chkstk_darwin(v13);
  v16 = v42 - v15;
  v17 = sub_10000A5D4(&qword_100958618, &qword_1007A5190);
  v18 = *(v17 - 8);
  v49 = v17;
  v50 = v18;
  __chkstk_darwin(v17);
  v46 = v42 - v19;
  v56 = v1;
  sub_10000A5D4(&qword_100958620, &qword_1007A5198);
  sub_100071820(&qword_100958628, &qword_100958620, &qword_1007A5198, &protocol conformance descriptor for TupleView<A>);
  sub_10076ED7C();
  sub_10076EA1C();
  sub_100071820(&qword_100958630, &qword_100958600, &qword_1007A5178, &protocol conformance descriptor for List<A, B>);
  v20 = v44;
  sub_10076EEEC();
  (*(v45 + 8))(v6, v20);
  (*(v8 + 8))(v10, v7);
  v21 = sub_10076ECFC();
  v22 = v43;
  v12[*(v43 + 36)] = v21;
  v55 = v42[1];
  v23 = sub_10000A5D4(&qword_100958638, &qword_1007A51A0);
  v24 = sub_100473858();
  v25 = sub_10000CE78(&qword_100958658, &qword_1007A51B0);
  v26 = sub_100071820(&qword_100958660, &qword_100958658, &qword_1007A51B0, &protocol conformance descriptor for ToolbarItem<A, B>);
  v57 = v25;
  v58 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10076EEDC();
  sub_1004739A0(v12);
  v28 = v51;
  sub_10076ECBC();
  v57 = v22;
  v58 = v23;
  v59 = v24;
  v60 = OpaqueTypeConformance2;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = v46;
  v31 = v47;
  v32 = v52;
  sub_10076EE6C();
  v33 = v32;
  (*(v53 + 8))(v28, v32);
  v34 = v31;
  (*(v48 + 8))(v16, v31);
  v57 = sub_1007630AC();
  v58 = v35;
  sub_10002564C();
  v36 = sub_10076EDCC();
  v38 = v37;
  LOBYTE(v31) = v39;
  v57 = v34;
  v58 = v33;
  v59 = v29;
  v60 = &protocol witness table for EnabledTextSelectability;
  swift_getOpaqueTypeConformance2();
  v40 = v49;
  sub_10076EE8C();
  sub_1000900A0(v36, v38, v31 & 1);

  return (*(v50 + 8))(v30, v40);
}

void sub_10046E810(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for DebugMetricsEventDetailView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10000A5D4(&qword_100958678, &qword_1007A51C0);
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v45 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v49 = v39 - v10;
  v11 = type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  __chkstk_darwin(v11);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_10000A5D4(&qword_100958680, &unk_1007A51C8);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v39 - v16;
  v18 = sub_1007630EC();
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  sub_10076E9FC();
  sub_100473A10(&qword_100958688, type metadata accessor for DebugMetricsEventDetailView.Summary, &unk_1007A5024);
  v48 = v17;
  sub_10076EEAC();
  sub_100473A58(v13);
  v19 = sub_1007630CC();
  v20 = *(v19 + 16);
  if (!v20)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v39[0] = v4;
  v39[1] = v5;
  v40 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10049EE7C(v20, 0);
  v22 = sub_10061F3AC(&v50, v21 + 4, v20, v19);
  v23 = v50;

  sub_100178640(v23);
  if (v22 == v20)
  {
    v6 = v40;
    v4 = v39[0];
LABEL_5:
    v50 = v21;
    sub_10002CADC(&v50);

    swift_getKeyPath();
    sub_100473AB4(a1, v6);
    v24 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v25 = swift_allocObject();
    sub_100473BE4(v6, v25 + v24);
    sub_10000A5D4(&unk_10094BB60, &unk_100785530);
    sub_100071820(&qword_100958690, &unk_10094BB60, &unk_100785530, &protocol conformance descriptor for [A]);
    sub_100473CC8();
    v26 = v49;
    sub_10076EF4C();
    v27 = v41;
    v28 = v42;
    v29 = *(v42 + 16);
    v30 = v44;
    v29(v41, v48, v44);
    v31 = v45;
    v32 = v46;
    v40 = *(v46 + 16);
    v33 = v26;
    v34 = v47;
    (v40)(v45, v33, v47);
    v35 = v43;
    v29(v43, v27, v30);
    v36 = sub_10000A5D4(&qword_1009586A0, &qword_1007A51F8);
    (v40)(&v35[*(v36 + 48)], v31, v34);
    v37 = *(v32 + 8);
    v37(v49, v34);
    v38 = *(v28 + 8);
    v38(v48, v30);
    v37(v31, v34);
    v38(v27, v30);
    return;
  }

  __break(1u);

  __break(1u);
}

double sub_10046EDBC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  v5 = sub_1007630CC();
  if (*(v5 + 16) && (v6 = sub_100561E0C(v4, v3), (v7 & 1) != 0))
  {
    sub_10000CD08(*(v5 + 56) + 32 * v6, &v10);
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

uint64_t sub_10046EE54(uint64_t a1)
{
  v2 = sub_10076EC4C();
  __chkstk_darwin(v2 - 8);
  v3 = sub_10000A5D4(&qword_100958658, &qword_1007A51B0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10076EC3C();
  v9 = a1;
  sub_10000A5D4(&qword_100958668, &qword_1007A51B8);
  sub_100071820(&qword_100958670, &qword_100958668, &qword_1007A51B8, &protocol conformance descriptor for ShareLink<A, B, C, D>);
  sub_10076E9DC();
  sub_100071820(&qword_100958660, &qword_100958658, &qword_1007A51B0, &protocol conformance descriptor for ToolbarItem<A, B>);
  sub_10076EC5C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10046F0C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076EEFC();
  *a1 = result;
  return result;
}

uint64_t sub_10046F100()
{
  v0 = sub_10075DC2C();
  v64 = *(v0 - 8);
  v65 = v0;
  __chkstk_darwin(v0);
  v63 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10075DCAC();
  v61 = *(v2 - 8);
  v62 = v2;
  __chkstk_darwin(v2);
  v60 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10075DC8C();
  v58 = *(v4 - 8);
  v59 = v4;
  __chkstk_darwin(v4);
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10075DC4C();
  v55 = *(v6 - 8);
  v56 = v6;
  __chkstk_darwin(v6);
  v52 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10075DC6C();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v51 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10075DAEC();
  __chkstk_darwin(v10 - 8);
  v50 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10075E00C();
  __chkstk_darwin(v12 - 8);
  v49 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10075DF6C();
  __chkstk_darwin(v14 - 8);
  v15 = sub_10075DE9C();
  __chkstk_darwin(v15 - 8);
  v16 = sub_10000A5D4(&qword_1009585F0, &qword_1007A5138);
  __chkstk_darwin(v16 - 8);
  v18 = &v45 - v17;
  v19 = sub_10000A5D4(&qword_1009585F8, &qword_1007A5140);
  __chkstk_darwin(v19 - 8);
  v21 = &v45 - v20;
  v22 = sub_10075DCDC();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v45 - v27;
  __chkstk_darwin(v29);
  v46 = &v45 - v30;
  __chkstk_darwin(v31);
  v47 = &v45 - v32;
  sub_10000DB18(v33, qword_100958428);
  v48 = sub_10000A61C(v22, qword_100958428);
  sub_10075DBCC();
  v34 = sub_10075DBDC();
  (*(*(v34 - 8) + 56))(v21, 0, 1, v34);
  sub_10075DBAC();
  v35 = sub_10075DBBC();
  (*(*(v35 - 8) + 56))(v18, 0, 1, v35);
  sub_10075DE4C();
  sub_10075DF1C();
  sub_10075DFEC();
  sub_10075DADC();
  sub_10075DBFC();
  v36 = v52;
  sub_10075DC3C();
  v37 = v51;
  sub_10075DC5C();
  (*(v55 + 8))(v36, v56);
  sub_10075DC0C();
  (*(v53 + 8))(v37, v54);
  v38 = *(v23 + 8);
  v38(v25, v22);
  v39 = v57;
  sub_10075DC7C();
  v40 = v46;
  sub_10075DCBC();
  (*(v58 + 8))(v39, v59);
  v38(v28, v22);
  v41 = v60;
  sub_10075DC9C();
  v42 = v47;
  sub_10075DCCC();
  (*(v61 + 8))(v41, v62);
  v38(v40, v22);
  v43 = v63;
  sub_10075DC1C();
  sub_10075DBEC();
  (*(v64 + 8))(v43, v65);
  return (v38)(v42, v22);
}

uint64_t sub_10046F87C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000A5D4(&qword_100958560, &qword_1007A5078);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_10000A5D4(&qword_100958568, &qword_1007A5080);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_10000A5D4(&qword_100958570, &qword_1007A5088);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  *v14 = sub_10076EBBC();
  *(v14 + 1) = 0x401C000000000000;
  v14[16] = 0;
  v15 = sub_10000A5D4(&qword_100958578, &qword_1007A5090);
  sub_10046FC24(v1, &v14[*(v15 + 44)]);
  sub_1007630DC();
  sub_10076F8BC();
  v16 = sub_1007701EC();

  v17 = 0;
  KeyPath = 0;
  v19 = 0;
  if (v16)
  {
    sub_10076EEFC();
    sub_10076EBCC();
    v20 = sub_10076EBEC();
    (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
    v17 = sub_10076EF0C();

    sub_10000CFBC(v8, &qword_100958568, &qword_1007A5080);
    v21 = sub_10076ED0C();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v19 = sub_10076ED1C();
    sub_10000CFBC(v5, &qword_100958560, &qword_1007A5078);
    KeyPath = swift_getKeyPath();
  }

  sub_100016E2C(v14, v11, &qword_100958570, &qword_1007A5088);
  sub_100016E2C(v11, a1, &qword_100958570, &qword_1007A5088);
  v22 = sub_10000A5D4(&qword_100958580, &qword_1007A5098);
  v23 = a1 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  v24 = (a1 + *(v22 + 64));
  sub_1004735B4(v17, KeyPath, v19);
  sub_100473604(v17, KeyPath, v19);
  *v24 = v17;
  v24[1] = KeyPath;
  v24[2] = v19;
  sub_10000CFBC(v14, &qword_100958570, &qword_1007A5088);
  sub_100473604(v17, KeyPath, v19);
  return sub_10000CFBC(v11, &qword_100958570, &qword_1007A5088);
}

uint64_t sub_10046FC24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = sub_10000A5D4(&qword_100958588, &qword_1007A50D0);
  v34 = *(v31 - 8);
  __chkstk_darwin(v31);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v37 = sub_10076EB3C();
  LOBYTE(v54[0]) = 1;
  sub_100470084(v40);
  *(v39 + 7) = v40[0];
  *(&v39[1] + 7) = v40[1];
  *(&v39[2] + 7) = v41[0];
  v39[3] = *(v41 + 9);
  v36 = LOBYTE(v54[0]);
  v32 = sub_10076ED6C();
  KeyPath = swift_getKeyPath();
  v54[0] = sub_10076308C();
  swift_getKeyPath();
  sub_10000A5D4(&qword_100958590, &qword_1007A50F8);
  sub_10000A5D4(&qword_100958598, &qword_1007A5100);
  sub_100071820(&qword_1009585A0, &qword_100958590, &qword_1007A50F8, &protocol conformance descriptor for [A]);
  sub_1004736A8();
  v30 = v7;
  sub_10076EF4C();
  v29 = sub_10076EB3C();
  LOBYTE(v54[0]) = 1;
  sub_100470418(a1, v42);
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
  v18 = sub_10000A5D4(&qword_1009585D0, &qword_1007A5118);
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
  sub_100016E2C(v43, v54, &qword_1009585D8, &qword_1007A5120);
  sub_100016E2C(v46, v54, &qword_1009585E0, &unk_1007A5128);
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
  sub_10000CFBC(v48, &qword_1009585E0, &unk_1007A5128);
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
  return sub_10000CFBC(v54, &qword_1009585D8, &qword_1007A5120);
}

double sub_100470084@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_10000A5D4(&qword_100958568, &qword_1007A5080);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  sub_10076306C();
  sub_10076EEFC();
  sub_10076EBDC();
  v5 = sub_10076EBEC();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = sub_10076EF0C();

  sub_10000CFBC(v4, &qword_100958568, &qword_1007A5080);
  v18 = sub_1007630AC();
  v19 = v7;
  sub_10002564C();
  v8 = sub_10076EDCC();
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

  sub_100090090(v8, v10, v12);

  sub_1000900A0(v8, v10, v12);

  return result;
}

uint64_t sub_100470250@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_10076EB7C();
  __chkstk_darwin(v10 - 8);
  if (a4)
  {
    sub_10076EB6C();
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_10076EB5C(v25);
    v26._countAndFlagsBits = a1;
    v26._object = a2;
    sub_10076EB4C(v26);
    v27._countAndFlagsBits = 8250;
    v27._object = 0xE200000000000000;
    sub_10076EB5C(v27);
    v28._countAndFlagsBits = a3;
    v28._object = a4;
    sub_10076EB4C(v28);
    v29._countAndFlagsBits = 0;
    v29._object = 0xE000000000000000;
    sub_10076EB5C(v29);
    sub_10076EB8C();
    v11 = sub_10076EDBC();
    v13 = v12;
    v15 = v14;
    sub_10076ED3C();
    v16 = sub_10076EDAC();
    a4 = v17;
    v19 = v18;
    v21 = v20;

    sub_1000900A0(v11, v13, v15 & 1);

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

double sub_100470418@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v55 = a2;
  v3 = sub_10000A5D4(&unk_10094FA00, &unk_100786640);
  __chkstk_darwin(v3 - 8);
  v5 = &v52 - v4;
  v6 = sub_10075DD7C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10076309C();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v54 = a1;
    (*(v7 + 32))(v9, v5, v6);
    v53 = v6;
    if (qword_100940590 != -1)
    {
      swift_once();
    }

    v36 = sub_10075DCDC();
    sub_10000A61C(v36, qword_100958428);
    sub_100473A10(&qword_1009585E8, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
    sub_10075DD5C();
    v56 = v58;
    v57 = v59;
    sub_10002564C();
    v37 = sub_10076EDCC();
    v39 = v38;
    v52 = v9;
    v41 = v40;
    sub_10076ED5C();
    v42 = sub_10076EDAC();
    v44 = v43;
    v46 = v45;

    sub_1000900A0(v37, v39, v41 & 1);

    LODWORD(v58) = sub_10076EC6C();
    v10 = sub_10076ED8C();
    v11 = v47;
    LOBYTE(v37) = v48;
    v13 = v49;
    sub_1000900A0(v42, v44, v46 & 1);

    (*(v7 + 8))(v52, v53);
    v12 = v37 & 1;
    sub_100090090(v10, v11, v37 & 1);

    v14 = sub_1007630BC();
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

  sub_10000CFBC(v5, &unk_10094FA00, &unk_100786640);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = sub_1007630BC();
  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_3:
  v58 = v14;
  v59 = v15;
  sub_10002564C();
  v16 = sub_10076EDCC();
  v18 = v17;
  v20 = v19;
  sub_10076ED5C();
  v21 = sub_10076EDAC();
  v53 = v11;
  v54 = v10;
  v23 = v22;
  v25 = v24;
  v52 = v13;

  sub_1000900A0(v16, v18, v20 & 1);

  LODWORD(v58) = sub_10076EC6C();
  v26 = sub_10076ED8C();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v25 & 1;
  v34 = v23;
  v11 = v53;
  v10 = v54;
  sub_1000900A0(v21, v34, v33);
  v13 = v52;

  v35 = v30 & 1;
  sub_100090090(v26, v28, v35);

LABEL_8:
  sub_100090500(v10, v11, v12, v13);
  sub_100090500(v26, v28, v35, v32);
  sub_100090544(v10, v11, v12, v13);
  sub_100090544(v26, v28, v35, v32);
  v50 = v55;
  *v55 = v10;
  v50[1] = v11;
  v50[2] = v12;
  v50[3] = v13;
  v50[4] = v26;
  v50[5] = v28;
  v50[6] = v35;
  v50[7] = v32;
  sub_100090544(v26, v28, v35, v32);
  return sub_100090544(v10, v11, v12, v13);
}

uint64_t sub_1004708FC@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v35 = sub_10000A5D4(&qword_1009586B8, &qword_1007A52B0);
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v4 = v30 - v3;
  v36 = sub_10000A5D4(&qword_1009586C0, &qword_1007A52B8);
  __chkstk_darwin(v36);
  v38 = v30 - v5;
  v32 = sub_10000A5D4(&qword_1009586C8, &qword_1007A52C0);
  __chkstk_darwin(v32);
  v33 = v30 - v6;
  v37 = sub_10000A5D4(&qword_1009586D0, &qword_1007A52C8);
  __chkstk_darwin(v37);
  v34 = v30 - v7;
  v8 = sub_10000A5D4(&qword_1009586D8, &qword_1007A52D0);
  __chkstk_darwin(v8);
  v10 = v30 - v9;
  v11 = sub_10000A5D4(&qword_1009586E0, &qword_1007A52D8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v30 - v13;
  v31 = sub_10000A5D4(&qword_1009586E8, &unk_1007A52E0);
  __chkstk_darwin(v31);
  v16 = v30 - v15;
  sub_100016E2C((v1 + 2), &v41, &unk_1009434C0, &qword_100783F60);
  if (*(&v42[0] + 1))
  {
    sub_10000A5D4(&qword_100958728, &qword_1007A52F8);
    if (swift_dynamicCast())
    {
      v17 = v40;
      if (*(v40 + 16))
      {
        sub_100474234(v1, &v41);
        v18 = swift_allocObject();
        v30[1] = v30;
        v19 = v42[0];
        *(v18 + 16) = v41;
        *(v18 + 32) = v19;
        *(v18 + 48) = v42[1];
        *(v18 + 64) = v17;
        __chkstk_darwin(v18);
        v30[-2] = v1;
        sub_10000A5D4(&qword_100958730, &qword_1007A5300);
        sub_1004740EC();
        sub_100474330();
        sub_10076EA3C();
        (*(v12 + 16))(v10, v14, v11);
        swift_storeEnumTagMultiPayload();
        sub_100071820(&qword_100958700, &qword_1009586E0, &qword_1007A52D8, &protocol conformance descriptor for DisclosureGroup<A, B>);
        sub_10076EC0C();
        (*(v12 + 8))(v14, v11);
      }

      else
      {

        v27 = *v1;
        v28 = v1[1];
        sub_100016E2C((v1 + 2), v42, &unk_1009434C0, &qword_100783F60);
        *&v41 = v27;
        *(&v41 + 1) = v28;
        sub_100473F44(&v41, v10);
        swift_storeEnumTagMultiPayload();
        sub_100071820(&qword_100958700, &qword_1009586E0, &qword_1007A52D8, &protocol conformance descriptor for DisclosureGroup<A, B>);
        sub_1004740EC();

        sub_10076EC0C();
        sub_100474140(&v41);
      }

      sub_100016E2C(v16, v33, &qword_1009586E8, &unk_1007A52E0);
      swift_storeEnumTagMultiPayload();
      sub_100474034();
      sub_100071820(&qword_100958710, &qword_1009586B8, &qword_1007A52B0, &protocol conformance descriptor for DisclosureGroup<A, B>);
      v29 = v34;
      sub_10076EC0C();
      sub_100016E2C(v29, v38, &qword_1009586D0, &qword_1007A52C8);
      swift_storeEnumTagMultiPayload();
      sub_100473F7C();
      sub_1004740EC();
      sub_10076EC0C();
      sub_10000CFBC(v29, &qword_1009586D0, &qword_1007A52C8);
      return sub_10000CFBC(v16, &qword_1009586E8, &unk_1007A52E0);
    }
  }

  else
  {
    sub_10000CFBC(&v41, &unk_1009434C0, &qword_100783F60);
  }

  sub_100016E2C((v1 + 2), &v41, &unk_1009434C0, &qword_100783F60);
  if (*(&v42[0] + 1))
  {
    sub_10000A5D4(&qword_100958718, &qword_1007A52F0);
    if (swift_dynamicCast())
    {
      v20 = v40;
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      __chkstk_darwin(v21);
      v30[-2] = v1;
      sub_10000A5D4(&qword_100958678, &qword_1007A51C0);
      sub_1004740EC();
      sub_1004741B0();
      sub_10076EA3C();
      v22 = v35;
      (*(v2 + 16))(v33, v4, v35);
      swift_storeEnumTagMultiPayload();
      sub_100474034();
      sub_100071820(&qword_100958710, &qword_1009586B8, &qword_1007A52B0, &protocol conformance descriptor for DisclosureGroup<A, B>);
      v23 = v34;
      sub_10076EC0C();
      sub_100016E2C(v23, v38, &qword_1009586D0, &qword_1007A52C8);
      swift_storeEnumTagMultiPayload();
      sub_100473F7C();
      sub_10076EC0C();
      sub_10000CFBC(v23, &qword_1009586D0, &qword_1007A52C8);
      return (*(v2 + 8))(v4, v22);
    }
  }

  else
  {
    sub_10000CFBC(&v41, &unk_1009434C0, &qword_100783F60);
  }

  v25 = *v1;
  v26 = v1[1];
  sub_100016E2C((v1 + 2), v42, &unk_1009434C0, &qword_100783F60);
  *&v41 = v25;
  *(&v41 + 1) = v26;
  sub_100473F44(&v41, v38);
  swift_storeEnumTagMultiPayload();
  sub_100473F7C();
  sub_1004740EC();

  sub_10076EC0C();
  return sub_100474140(&v41);
}

uint64_t sub_100471280@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10000A5D4(&qword_100958760, &qword_1007A5310);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v29 - v8;
  v32 = sub_10000A5D4(&qword_100958768, &qword_1007A5318);
  __chkstk_darwin(v32);
  v33 = v29 - v10;
  v34 = sub_10000A5D4(&qword_100958748, &qword_1007A5308);
  v31 = *(v34 - 8);
  __chkstk_darwin(v34);
  v30 = v29 - v11;
  if (*a1 == __PAIR128__(0xEB00000000736E6FLL, 0x6973736572706D69) || (sub_10077167C() & 1) != 0)
  {
    v29[2] = v6;
    sub_1003B1C78(a2);
    v13 = *(v12 + 16);
    v29[0] = v12;
    v29[1] = a3;
    if (v13)
    {
      v14 = v12 + 32;
      v15 = _swiftEmptyArrayStorage;
      do
      {
        sub_100016E2C(v14, v39, &qword_100958780, &qword_1007A5348);
        v35 = v39[0];
        v36 = v39[1];
        v37 = v40;
        sub_10000A5D4(&qword_100958718, &qword_1007A52F0);
        if (swift_dynamicCast())
        {
          v16 = v38;
          if (v38)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_10049E720(0, v15[2] + 1, 1, v15);
            }

            v18 = v15[2];
            v17 = v15[3];
            if (v18 >= v17 >> 1)
            {
              v15 = sub_10049E720((v17 > 1), v18 + 1, 1, v15);
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

    v19 = sub_10008531C(v15);
    v21 = v20;
    *&v39[0] = v29[0];
    swift_getKeyPath();
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_100474558;
    *(v23 + 24) = v22;
    sub_10000A5D4(&qword_100958770, &qword_1007A5340);
    sub_100071820(&qword_100958778, &qword_100958770, &qword_1007A5340, &protocol conformance descriptor for [A]);
    sub_100474440();
    v24 = v30;
    sub_10076EF4C();
    v25 = v31;
    v26 = v34;
    (*(v31 + 16))(v33, v24, v34);
    swift_storeEnumTagMultiPayload();
    sub_1004743BC();
    sub_100474494();
    sub_10076EC0C();
    return (*(v25 + 8))(v24, v26);
  }

  else
  {
    sub_1003B1C78(a2);
    *&v39[0] = v28;
    swift_getKeyPath();
    sub_10000A5D4(&qword_100958770, &qword_1007A5340);
    sub_100071820(&qword_100958778, &qword_100958770, &qword_1007A5340, &protocol conformance descriptor for [A]);
    sub_100473CC8();
    sub_10076EF4C();
    (*(v7 + 16))(v33, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_1004743BC();
    sub_100474494();
    sub_10076EC0C();
    return (*(v7 + 8))(v9, v6);
  }
}

unint64_t sub_10047184C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10000CD08(a2, v10);
  sub_10000A5D4(&qword_100958718, &qword_1007A52F0);
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
    v5 = sub_1000FD3F0(_swiftEmptyArrayStorage);
    if (!*(v5 + 16))
    {
LABEL_7:
      memset(v10, 0, sizeof(v10));
      goto LABEL_8;
    }
  }

  v6 = sub_100561E0C(0xD000000000000012, 0x80000001007E8D30);
  if ((v7 & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_10000CD08(*(v5 + 56) + 32 * v6, v10);
LABEL_8:
  sub_100085614(v10, a4);
  sub_10000CFBC(v10, &unk_1009434C0, &qword_100783F60);
  return v5;
}

uint64_t sub_10047195C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + 8;
  v5._countAndFlagsBits = sub_10077163C();
  sub_1007700CC(v5);

  v6._countAndFlagsBits = 93;
  v6._object = 0xE100000000000000;
  sub_1007700CC(v6);
  result = sub_10000CD08(v3, (a2 + 2));
  *a2 = 91;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_1004719F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10049EE7C(*(a1 + 16), 0);
  v4 = sub_10061F3AC(&v7, v3 + 4, v2, a1);
  v5 = v7;

  sub_100178640(v5);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:
    v3 = _swiftEmptyArrayStorage;
  }

  v7 = v3;
  sub_10002CADC(&v7);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  sub_10000A5D4(&unk_10094BB60, &unk_100785530);
  sub_100071820(&qword_100958690, &unk_10094BB60, &unk_100785530, &protocol conformance descriptor for [A]);
  sub_100473CC8();
  return sub_10076EF4C();
}

double sub_100471BA8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*(a2 + 16))
  {

    v7 = sub_100561E0C(v4, v5);
    if (v8)
    {
      sub_10000CD08(*(a2 + 56) + 32 * v7, &v11);
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

uint64_t sub_100471C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10076EBBC();
  LOBYTE(v20[0]) = 1;
  sub_100471DD0(v17);
  *&v16[7] = v17[0];
  *&v16[23] = v17[1];
  *&v16[39] = v17[2];
  *&v16[55] = v17[3];
  v6 = v20[0];
  sub_100016E2C(a1 + 16, v13, &unk_1009434C0, &qword_100783F60);
  v14 = 0;
  v15 = 1;
  sub_10047477C(v13, v12);
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
  sub_10047477C(v12, a2 + 104);
  sub_100016E2C(v18, v20, &qword_100958798, &qword_1007A5450);
  sub_1004747B4(v13);
  sub_1004747B4(v12);
  v20[0] = v5;
  v20[1] = 0;
  v21 = v6;
  v23 = *&v16[16];
  v24 = *&v16[32];
  *v25 = *&v16[48];
  *&v25[15] = *&v16[63];
  v22 = *v16;
  return sub_10000CFBC(v20, &qword_100958798, &qword_1007A5450);
}

double sub_100471DD0@<D0>(uint64_t a2@<X8>)
{
  sub_10002564C();

  v3 = sub_10076EDCC();
  v5 = v4;
  v7 = v6;
  v26 = sub_10076ED9C();
  v27 = v8;
  v10 = v9;
  v25 = v11;
  sub_1000900A0(v3, v5, v7 & 1);

  sub_100471F9C();
  v12 = sub_10076EDCC();
  v14 = v13;
  v16 = v15;
  sub_10076EC6C();
  v17 = sub_10076ED8C();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1000900A0(v12, v14, v16 & 1);

  *a2 = v26;
  *(a2 + 8) = v10;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v27;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21 & 1;
  *(a2 + 56) = v23;
  sub_100090090(v26, v10, v25 & 1);

  sub_100090090(v17, v19, v21 & 1);

  sub_1000900A0(v17, v19, v21 & 1);

  sub_1000900A0(v26, v10, v25 & 1);

  return result;
}

uint64_t sub_100471F9C()
{
  sub_100016E2C(v0, v5, &unk_1009434C0, &qword_100783F60);
  if (v6)
  {
    if (swift_dynamicCast())
    {

      return 0x676E69727453;
    }
  }

  else
  {
    sub_10000CFBC(v5, &unk_1009434C0, &qword_100783F60);
  }

  sub_100016E2C(v0, v5, &unk_1009434C0, &qword_100783F60);
  if (v6)
  {
    sub_100016F40(0, &qword_1009492D0, NSNumber_ptr);
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
    sub_10000CFBC(v5, &unk_1009434C0, &qword_100783F60);
  }

  sub_100016E2C(v0, v5, &unk_1009434C0, &qword_100783F60);
  if (v6)
  {
    sub_10000A5D4(&qword_100958728, &qword_1007A52F8);
    if (swift_dynamicCast())
    {

      return 0x7961727241;
    }
  }

  else
  {
    sub_10000CFBC(v5, &unk_1009434C0, &qword_100783F60);
  }

  sub_100016E2C(v0, v5, &unk_1009434C0, &qword_100783F60);
  if (v6)
  {
    sub_10000A5D4(&qword_100958718, &qword_1007A52F0);
    if (swift_dynamicCast())
    {

      return 0x7463656A624FLL;
    }
  }

  else
  {
    sub_10000CFBC(v5, &unk_1009434C0, &qword_100783F60);
  }

  result = 0x6E776F6E6B6E753CLL;
  if (*(v0 + 24))
  {
    sub_100016E2C(v0, v5, &unk_1009434C0, &qword_100783F60);
    if (v6)
    {
      sub_100016F40(0, &qword_1009587A8, NSNull_ptr);
      if (swift_dynamicCast())
      {

        return 0x6E776F6E6B6E753CLL;
      }
    }

    else
    {
      sub_10000CFBC(v5, &unk_1009434C0, &qword_100783F60);
    }

    v5[0] = sub_10000A5D4(&unk_1009434C0, &qword_100783F60);
    sub_10000A5D4(&qword_1009587A0, &qword_1007A5458);
    return sub_10076FFFC();
  }

  return result;
}

uint64_t sub_10047234C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10076EB3C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return sub_100471C3C(v2, a1 + 24);
}

void sub_100472388(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_10000A5D4(&qword_1009587B0, &qword_1007A5460);
  v11 = __chkstk_darwin(v8);
  v13 = &v43 - v12;
  if (a1)
  {
    v46 = v10;
    v47 = v9;
    v48 = a4;
    *v13 = sub_10076EBAC();
    *(v13 + 1) = 0;
    v13[16] = 1;
    v14 = *(a1 + 16);
    if (!v14)
    {
      v15 = _swiftEmptyArrayStorage;
      goto LABEL_9;
    }

    v44 = a2;
    v45 = a3;
    v15 = sub_10049EE7C(v14, 0);
    v16 = sub_10061F3AC(&v49, v15 + 4, v14, a1);
    v17 = v49;

    sub_100178640(v17);
    if (v16 == v14)
    {
      a2 = v44;
      a3 = v45;
LABEL_9:
      v49 = v15;
      sub_10002CADC(&v49);
      sub_10000A5D4(&qword_1009587B8, &qword_1007A5468);
      swift_getKeyPath();
      v19 = swift_allocObject();
      v19[2] = a1;
      v19[3] = a2;
      v19[4] = a3;

      sub_10000A5D4(&unk_10094BB60, &unk_100785530);
      sub_10000A5D4(&qword_1009587C0, &qword_1007A5470);
      sub_100071820(&qword_100958690, &unk_10094BB60, &unk_100785530, &protocol conformance descriptor for [A]);
      sub_100071820(&qword_1009587C8, &qword_1009587C0, &qword_1007A5470, &protocol conformance descriptor for HStack<A>);
      sub_10076EF4C();
      v20 = sub_10076ECFC();
      sub_10076E9AC();
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = &v13[*(sub_10000A5D4(&qword_1009587D0, &qword_1007A5478) + 36)];
      *v29 = v20;
      *(v29 + 1) = v22;
      *(v29 + 2) = v24;
      *(v29 + 3) = v26;
      *(v29 + 4) = v28;
      v29[40] = 0;
      v30 = sub_10076ECFC();
      v31 = &v13[*(sub_10000A5D4(&qword_1009587D8, &qword_1007A5480) + 36)];
      *v31 = 1;
      v31[8] = v30;
      v32 = v47;
      v33 = &v13[*(v47 + 36)];
      v34 = *(sub_10076EA8C() + 20);
      v35 = enum case for RoundedCornerStyle.continuous(_:);
      v36 = sub_10076EB9C();
      (*(*(v36 - 8) + 104))(&v33[v34], v35, v36);
      __asm { FMOV            V0.2D, #8.0 }

      *v33 = _Q0;
      *&v33[*(sub_10000A5D4(&qword_1009587E0, &qword_1007A5488) + 36)] = 256;
      v42 = v48;
      sub_10047488C(v13, v48);
      (*(v46 + 56))(v42, 0, 1, v32);
      return;
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v18 = *(v10 + 56);

    v18(a4, 1, 1, v11);
  }
}

double sub_1004727EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v26[0] = a1;
  v26[1] = a2;
  sub_10002564C();

  v9 = sub_10076EDCC();
  v11 = v10;
  v13 = v12;
  v14 = sub_10076ED9C();
  v16 = v15;
  v21 = v17;
  v19 = v18;
  sub_1000900A0(v9, v11, v13 & 1);

  sub_100472944(a1, a2, a3, a4, a5, v26);
  v26[4] = 3;
  v27 = 0;
  sub_10047477C(v26, v25);
  *a6 = v14;
  *(a6 + 8) = v16;
  *(a6 + 16) = v21 & 1;
  *(a6 + 24) = v19;
  *(a6 + 32) = 0x4030000000000000;
  *(a6 + 40) = 0;
  sub_10047477C(v25, a6 + 48);
  sub_100090090(v14, v16, v21 & 1);

  sub_1004747B4(v26);
  sub_1004747B4(v25);
  sub_1000900A0(v14, v16, v21 & 1);

  return result;
}

double sub_100472944@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001007E8D30 == a2 || (sub_10077167C()) && a3 && *(a3 + 16) && (v12 = sub_100561E0C(a1, a2), (v13))
  {
    sub_10000CD08(*(a3 + 56) + 32 * v12, v18);
    sub_10000CD64(v18, v19);
    if (a5)
    {
      *&v18[0] = 0;
      *(&v18[0] + 1) = 0xE000000000000000;
      sub_10077151C();
      v20._countAndFlagsBits = 10272;
      v20._object = 0xE200000000000000;
      sub_1007700CC(v20);
      v21._countAndFlagsBits = a4;
      v21._object = a5;
      sub_1007700CC(v21);
      v22._countAndFlagsBits = 41;
      v22._object = 0xE100000000000000;
      sub_1007700CC(v22);
      v14 = v18[0];
      *(a6 + 24) = &type metadata for String;
      *a6 = v14;
      sub_10000CD74(v19);
      return result;
    }

    sub_10000CD74(v19);
    if (!*(a3 + 16))
    {
      goto LABEL_14;
    }
  }

  else if (!a3 || !*(a3 + 16))
  {
    goto LABEL_14;
  }

  v16 = sub_100561E0C(a1, a2);
  if (v17)
  {
    sub_10000CD08(*(a3 + 56) + 32 * v16, a6);
    return result;
  }

LABEL_14:
  result = 0.0;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  return result;
}

__n128 sub_100472AE4@<Q0>(uint64_t a1@<X8>)
{
  sub_100016E2C(v1, &v39, &unk_1009434C0, &qword_100783F60);
  if (v40.n128_u64[1])
  {
    sub_10000A5D4(&qword_100958728, &qword_1007A52F8);
    if (swift_dynamicCast())
    {
      v3 = *(*&v57[0] + 16);

      *&cf = v3;
      *&v58 = sub_10077163C();
      *(&v58 + 1) = v4;
      v62._countAndFlagsBits = 0x736D65746920;
      v62._object = 0xE600000000000000;
      sub_1007700CC(v62);
      cf = v58;
      v51.n128_u64[0] = 0;
      v51.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v52) = 0;

      sub_10076EC0C();
      v49 = v60;
      v48 = 0;
      v61[18] = 0;
      sub_10000A5D4(&qword_100958860, &qword_1007A5558);
      sub_10000A5D4(&qword_100958870, &qword_1007A5560);
      sub_100474D64();
      sub_100474DE0();
      sub_10076EC0C();
      v59 = v44;
      v60 = v45;
      *v61 = *v46;
      *&v61[15] = *&v46[15];
      v58 = v43;
LABEL_8:
      LOBYTE(v55) = 0;
      v61[19] = 0;
      sub_10000A5D4(&qword_100958848, &qword_1007A5550);
      sub_100474CD8();
      sub_10076EC0C();

      goto LABEL_23;
    }
  }

  else
  {
    sub_10000CFBC(&v39, &unk_1009434C0, &qword_100783F60);
  }

  sub_100016E2C(v1, &v39, &unk_1009434C0, &qword_100783F60);
  if (v40.n128_u64[1])
  {
    sub_10000A5D4(&qword_100958718, &qword_1007A52F0);
    if (swift_dynamicCast())
    {
      v5 = *(*&v57[0] + 16);

      *&cf = v5;
      *&v58 = sub_10077163C();
      *(&v58 + 1) = v6;
      v63._countAndFlagsBits = 0x7379656B20;
      v63._object = 0xE500000000000000;
      sub_1007700CC(v63);
      cf = v58;
      v51.n128_u64[0] = 0;
      v51.n128_u64[1] = _swiftEmptyArrayStorage;
      LOBYTE(v52) = 1;

      sub_10076EC0C();
      v49 = v60;
      v48 = 0;
      v61[18] = 0;
      sub_10000A5D4(&qword_100958860, &qword_1007A5558);
      sub_10000A5D4(&qword_100958870, &qword_1007A5560);
      sub_100474D64();
      sub_100474DE0();
      sub_10076EC0C();
      v60 = v45;
      *v61 = *v46;
      *&v61[15] = *&v46[15];
      v58 = v43;
      v59 = v44;
      goto LABEL_8;
    }
  }

  else
  {
    sub_10000CFBC(&v39, &unk_1009434C0, &qword_100783F60);
  }

  sub_100016E2C(v1, &v58, &unk_1009434C0, &qword_100783F60);
  if (v59.n128_u64[1])
  {
    sub_100016F40(0, &qword_1009492D0, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v7 = cf;
      v8 = CFGetTypeID(cf);
      v38 = v7;
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
        v51.n128_u64[0] = 0;
        v51.n128_u64[1] = _swiftEmptyArrayStorage;
        *&v52 = KeyPath;
        v13 = 2;
      }

      else
      {
        v25 = [v7 stringValue];
        v26 = sub_10076FF9C();
        v28 = v27;

        v29 = swift_getKeyPath();
        *&cf = v26;
        *(&cf + 1) = v28;
        v51.n128_u64[0] = 0;
        v51.n128_u64[1] = _swiftEmptyArrayStorage;
        *&v52 = v29;
        v13 = 258;
      }

      WORD4(v52) = v13;
      sub_10000A5D4(&qword_100958890, &qword_1007A5570);
      sub_100474EF0();
      sub_10076EC0C();
      v30 = v60;
      v49 = BYTE9(v60);
      v48 = 0;
      v61[17] = 0;
      v31 = v58;
      v32 = v59.n128_u8[0];
      v33 = v59.n128_i64[1];
      v36 = v59.n128_u8[0];
      v37 = v58;
      v35 = v59.n128_i64[1];
      v34 = v60;
      sub_1004750B4(v58, *(&v58 + 1), v59.n128_i8[0], v59.n128_i64[1], v60);
      sub_1004750B4(v31, *(&v31 + 1), v32, v33, v30);
      sub_10000A5D4(&qword_100958880, &qword_1007A5568);
      sub_10000A5D4(&qword_1009588B0, &qword_1007A5580);
      sub_100474E6C();
      sub_100474FA8();
      sub_10076EC0C();
      v60 = v52;
      *v61 = v53;
      *&v61[16] = v54;
      v58 = cf;
      v59 = v51;
      LOBYTE(v55) = 1;
      v61[18] = 1;
      sub_10000A5D4(&qword_100958860, &qword_1007A5558);
      sub_10000A5D4(&qword_100958870, &qword_1007A5560);
      sub_100474D64();
      sub_100474DE0();
      sub_10076EC0C();
      v45 = v41;
      *v46 = *v42;
      *&v46[15] = *&v42[15];
      v43 = v39;
      v44 = v40;
      v60 = v41;
      *v61 = *v42;
      *&v61[15] = *&v42[15];
      v58 = v39;
      v59 = v40;
      LOBYTE(v57[0]) = 0;
      v61[19] = 0;
      sub_100016E2C(&v43, &cf, &qword_100958848, &qword_1007A5550);
      sub_10000A5D4(&qword_100958848, &qword_1007A5550);
      sub_100474CD8();
      sub_10076EC0C();
      sub_1004750FC(v37, *(&v31 + 1), v36, v35, v34);
      sub_10000CFBC(&v43, &qword_100958848, &qword_1007A5550);

      sub_1004750FC(v37, *(&v31 + 1), v36, v35, v34);
      v60 = v52;
      *v61 = v53;
      *&v61[16] = v54;
      v22 = cf;
      v21 = v51;
      goto LABEL_24;
    }
  }

  else
  {
    sub_10000CFBC(&v58, &unk_1009434C0, &qword_100783F60);
  }

  sub_100016E2C(v1, &v55, &unk_1009434C0, &qword_100783F60);
  if (!v56)
  {
    sub_10000CFBC(&v55, &unk_1009434C0, &qword_100783F60);
    LOBYTE(v43) = 0;
    LOBYTE(v39) = 1;
    cf = xmmword_1007A4F80;
    v51.n128_u8[0] = 0;
    v51.n128_u64[1] = _swiftEmptyArrayStorage;
    HIBYTE(v54) = 1;
    sub_10000A5D4(&qword_100958848, &qword_1007A5550);
    sub_100474CD8();
    sub_10076EC0C();
    goto LABEL_25;
  }

  sub_10000CD64(&v55, v57);
  sub_10000CD08(v57, &v58);
  v14 = sub_10076FFFC();
  v16 = v15;
  v17 = swift_getKeyPath();
  v18 = *(v1 + 32);
  v19 = *(v1 + 40);
  v20 = swift_getKeyPath();
  LOBYTE(cf) = v19;
  *&v39 = v14;
  *(&v39 + 1) = v16;
  v40.n128_u8[0] = 0;
  v40.n128_u64[1] = _swiftEmptyArrayStorage;
  *&v41 = v17;
  BYTE8(v41) = 2;
  *v42 = v20;
  *&v42[8] = v18;
  v42[16] = v19;
  v60 = v41;
  *v61 = *v42;
  v61[16] = v19;
  v58 = v39;
  v59 = v40;
  v47 = 1;
  v61[17] = 1;
  sub_100016E2C(&v39, &cf, &qword_1009588B0, &qword_1007A5580);
  sub_10000A5D4(&qword_100958880, &qword_1007A5568);
  sub_10000A5D4(&qword_1009588B0, &qword_1007A5580);
  sub_100474E6C();
  sub_100474FA8();
  sub_10076EC0C();
  v60 = v52;
  *v61 = v53;
  *&v61[16] = v54;
  v58 = cf;
  v59 = v51;
  v48 = 1;
  v61[18] = 1;
  sub_10000A5D4(&qword_100958860, &qword_1007A5558);
  sub_10000A5D4(&qword_100958870, &qword_1007A5560);
  sub_100474D64();
  sub_100474DE0();
  sub_10076EC0C();
  v60 = v45;
  *v61 = *v46;
  *&v61[15] = *&v46[15];
  v58 = v43;
  v59 = v44;
  v49 = 0;
  v61[19] = 0;
  sub_10000A5D4(&qword_100958848, &qword_1007A5550);
  sub_100474CD8();
  sub_10076EC0C();
  sub_10000CFBC(&v39, &qword_1009588B0, &qword_1007A5580);
  sub_10000CD74(v57);
LABEL_23:
  v60 = v52;
  *v61 = v53;
  *&v61[16] = v54;
  v22 = cf;
  v21 = v51;
LABEL_24:
  v58 = v22;
  v59 = v21;
LABEL_25:
  v23 = *v61;
  *(a1 + 32) = v60;
  *(a1 + 48) = v23;
  *(a1 + 64) = *&v61[16];
  result = v59;
  *a1 = v58;
  *(a1 + 16) = result;
  return result;
}

double sub_1004735B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

double sub_100473604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_100473650@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10076EADC();
  *a1 = result;
  return result;
}

unint64_t sub_1004736A8()
{
  result = qword_1009585A8;
  if (!qword_1009585A8)
  {
    sub_10000CE78(&qword_100958598, &qword_1007A5100);
    sub_10047372C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009585A8);
  }

  return result;
}

unint64_t sub_10047372C()
{
  result = qword_1009585B0;
  if (!qword_1009585B0)
  {
    sub_10000CE78(&qword_1009585B8, &qword_1007A5108);
    sub_100071820(&qword_1009585C0, &qword_1009585C8, &qword_1007A5110, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009585B0);
  }

  return result;
}

uint64_t sub_1004737E4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10076EAFC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_100473858()
{
  result = qword_100958640;
  if (!qword_100958640)
  {
    sub_10000CE78(&qword_100958608, &qword_1007A5180);
    sub_10000CE78(&qword_100958600, &qword_1007A5178);
    sub_10076EA2C();
    sub_100071820(&qword_100958630, &qword_100958600, &qword_1007A5178, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_100071820(&qword_100958648, &qword_100958650, &qword_1007A51A8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958640);
  }

  return result;
}

uint64_t sub_1004739A0(uint64_t a1)
{
  v2 = sub_10000A5D4(&qword_100958608, &qword_1007A5180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100473A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100473A58(uint64_t a1)
{
  v2 = type metadata accessor for DebugMetricsEventDetailView.Summary(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100473AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100473B18()
{
  v1 = *(type metadata accessor for DebugMetricsEventDetailView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1007630EC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100473BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEventDetailView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_100473C48@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for DebugMetricsEventDetailView(0);

  return sub_10046EDBC(a1, a2);
}

unint64_t sub_100473CC8()
{
  result = qword_100958698;
  if (!qword_100958698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958698);
  }

  return result;
}

uint64_t sub_100473D1C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100473D88()
{
  sub_10000CE78(&qword_100958618, &qword_1007A5190);
  sub_10000CE78(&qword_100958610, &qword_1007A5188);
  sub_10076ECCC();
  sub_10000CE78(&qword_100958608, &qword_1007A5180);
  sub_10000CE78(&qword_100958638, &qword_1007A51A0);
  sub_100473858();
  sub_10000CE78(&qword_100958658, &qword_1007A51B0);
  sub_100071820(&qword_100958660, &qword_100958658, &qword_1007A51B0, &protocol conformance descriptor for ToolbarItem<A, B>);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100473F7C()
{
  result = qword_1009586F0;
  if (!qword_1009586F0)
  {
    sub_10000CE78(&qword_1009586D0, &qword_1007A52C8);
    sub_100474034();
    sub_100071820(&qword_100958710, &qword_1009586B8, &qword_1007A52B0, &protocol conformance descriptor for DisclosureGroup<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009586F0);
  }

  return result;
}

unint64_t sub_100474034()
{
  result = qword_1009586F8;
  if (!qword_1009586F8)
  {
    sub_10000CE78(&qword_1009586E8, &unk_1007A52E0);
    sub_100071820(&qword_100958700, &qword_1009586E0, &qword_1007A52D8, &protocol conformance descriptor for DisclosureGroup<A, B>);
    sub_1004740EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009586F8);
  }

  return result;
}

unint64_t sub_1004740EC()
{
  result = qword_100958708;
  if (!qword_100958708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958708);
  }

  return result;
}

uint64_t sub_100474170()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1004741B0()
{
  result = qword_100958720;
  if (!qword_100958720)
  {
    sub_10000CE78(&qword_100958678, &qword_1007A51C0);
    sub_100473CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958720);
  }

  return result;
}

uint64_t sub_10047426C()
{

  if (*(v0 + 56))
  {
    sub_10000CD74((v0 + 32));
  }

  return _swift_deallocObject(v0, 72, 7);
}

double sub_1004742CC@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = v3[1];
  sub_100016E2C((v3 + 2), (a1 + 2), &unk_1009434C0, &qword_100783F60);
  *a1 = v5;
  a1[1] = v4;

  return result;
}

unint64_t sub_100474330()
{
  result = qword_100958738;
  if (!qword_100958738)
  {
    sub_10000CE78(&qword_100958730, &qword_1007A5300);
    sub_1004743BC();
    sub_100474494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958738);
  }

  return result;
}

unint64_t sub_1004743BC()
{
  result = qword_100958740;
  if (!qword_100958740)
  {
    sub_10000CE78(&qword_100958748, &qword_1007A5308);
    sub_100474440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958740);
  }

  return result;
}

unint64_t sub_100474440()
{
  result = qword_100958750;
  if (!qword_100958750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958750);
  }

  return result;
}

unint64_t sub_100474494()
{
  result = qword_100958758;
  if (!qword_100958758)
  {
    sub_10000CE78(&qword_100958760, &qword_1007A5310);
    sub_100473CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958758);
  }

  return result;
}

uint64_t sub_100474518()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100474560()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100474598@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1 + 1);
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

uint64_t sub_1004745DC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_100474638(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1004746B8()
{
  result = qword_100958788;
  if (!qword_100958788)
  {
    sub_10000CE78(&qword_100958790, &qword_1007A53A8);
    sub_100473F7C();
    sub_1004740EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958788);
  }

  return result;
}

uint64_t sub_1004747E4()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_100474824@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  v7 = *a1;
  v8 = a1[1];
  *a2 = sub_10076EB1C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return sub_1004727EC(v7, v8, v4, v5, v6, a2 + 24);
}

uint64_t sub_10047488C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&qword_1009587B0, &qword_1007A5460);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004748FC(uint64_t a1, unsigned int a2)
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

uint64_t sub_100474958(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100474A10()
{
  result = qword_1009587F8;
  if (!qword_1009587F8)
  {
    sub_10000CE78(&qword_100958800, &qword_1007A54E8);
    sub_100474A94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009587F8);
  }

  return result;
}

unint64_t sub_100474A94()
{
  result = qword_100958808;
  if (!qword_100958808)
  {
    sub_10000CE78(&qword_1009587B0, &qword_1007A5460);
    sub_100474B4C();
    sub_100071820(&qword_100958840, &qword_1009587E0, &qword_1007A5488, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958808);
  }

  return result;
}

unint64_t sub_100474B4C()
{
  result = qword_100958810;
  if (!qword_100958810)
  {
    sub_10000CE78(&qword_1009587D8, &qword_1007A5480);
    sub_100474C04();
    sub_100071820(&qword_100958830, &qword_100958838, qword_1007A54F8, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958810);
  }

  return result;
}

unint64_t sub_100474C04()
{
  result = qword_100958818;
  if (!qword_100958818)
  {
    sub_10000CE78(&qword_1009587D0, &qword_1007A5478);
    sub_100071820(&qword_100958820, &qword_100958828, &qword_1007A54F0, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958818);
  }

  return result;
}

unint64_t sub_100474CD8()
{
  result = qword_100958850;
  if (!qword_100958850)
  {
    sub_10000CE78(&qword_100958848, &qword_1007A5550);
    sub_100474D64();
    sub_100474DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958850);
  }

  return result;
}

unint64_t sub_100474D64()
{
  result = qword_100958858;
  if (!qword_100958858)
  {
    sub_10000CE78(&qword_100958860, &qword_1007A5558);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958858);
  }

  return result;
}

unint64_t sub_100474DE0()
{
  result = qword_100958868;
  if (!qword_100958868)
  {
    sub_10000CE78(&qword_100958870, &qword_1007A5560);
    sub_100474E6C();
    sub_100474FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958868);
  }

  return result;
}

unint64_t sub_100474E6C()
{
  result = qword_100958878;
  if (!qword_100958878)
  {
    sub_10000CE78(&qword_100958880, &qword_1007A5568);
    sub_100474EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958878);
  }

  return result;
}

unint64_t sub_100474EF0()
{
  result = qword_100958888;
  if (!qword_100958888)
  {
    sub_10000CE78(&qword_100958890, &qword_1007A5570);
    sub_100071820(&qword_100958898, &qword_1009588A0, &qword_1007A5578, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958888);
  }

  return result;
}

unint64_t sub_100474FA8()
{
  result = qword_1009588A8;
  if (!qword_1009588A8)
  {
    sub_10000CE78(&qword_1009588B0, &qword_1007A5580);
    sub_100474EF0();
    sub_100071820(&qword_1009585C0, &qword_1009585C8, &qword_1007A5110, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009588A8);
  }

  return result;
}

uint64_t sub_100475060@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10076EABC();
  *a1 = result;
  return result;
}

double sub_1004750B4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_100090090(a1, a2, a3 & 1);

  return result;
}

double sub_1004750FC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_1000900A0(a1, a2, a3 & 1);

  return result;
}

unint64_t sub_100475148()
{
  result = qword_1009588B8;
  if (!qword_1009588B8)
  {
    sub_10000CE78(&qword_1009588C0, qword_1007A55B8);
    sub_100474CD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009588B8);
  }

  return result;
}

uint64_t sub_1004751F8(__n128 a1)
{
  v2 = v1;
  v3 = sub_1007621EC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1007659CC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v11);
  v14 = &v30 - v13;
  (*(v4 + 16))(v6, v2, v3, v12);
  v15 = (*(v4 + 88))(v6, v3);
  if (v15 == enum case for ShelfBackground.artwork(_:))
  {
    (*(v4 + 96))(v6, v3);

    v16 = &qword_10094E098;
    v17 = qword_100795D80;
    goto LABEL_5;
  }

  if (v15 == enum case for ShelfBackground.color(_:))
  {
    (*(v4 + 96))(v6, v3);

    v16 = &unk_100950670;
    v17 = qword_100791450;
LABEL_5:
    v18 = sub_10000A5D4(v16, v17);
    v19 = *(v8 + 32);
    v19(v14, v6 + *(v18 + 48), v7);
    v19(v10, v14, v7);
    goto LABEL_7;
  }

  if (v15 == enum case for ShelfBackground.gradient(_:))
  {
    (*(v4 + 96))(v6, v3);

    v22 = sub_10000A5D4(&qword_10094B500, &qword_10079E1D0);
    v23 = v22[12];
    v30 = v22[16];
    v31 = v23;
    v24 = *(v8 + 32);
    v24(v14, v6 + v22[20], v7);
    v25 = sub_10076A05C();
    v26 = *(*(v25 - 8) + 8);
    v26(v6 + v30, v25);
    v26(v6 + v31, v25);
    v24(v10, v14, v7);
  }

  else if (v15 == enum case for ShelfBackground.materialGradient(_:))
  {
    (*(v4 + 96))(v6, v3);
    v27 = sub_10000A5D4(qword_10094ADC0, &unk_1007A2D00);
    v28 = *(v8 + 32);
    v28(v14, v6 + *(v27 + 48), v7);
    v29 = sub_10076AA6C();
    (*(*(v29 - 8) + 8))(v6, v29);
    v28(v10, v14, v7);
  }

  else
  {
    (*(v8 + 104))(v14, enum case for ShelfBackgroundStyle.automatic(_:), v7);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 32))(v10, v14, v7);
  }

LABEL_7:
  v20 = (*(v8 + 88))(v10, v7);
  if (v20 == enum case for ShelfBackgroundStyle.dark(_:))
  {
    return 2;
  }

  if (v20 == enum case for ShelfBackgroundStyle.light(_:))
  {
    return 1;
  }

  if (v20 != enum case for ShelfBackgroundStyle.automatic(_:))
  {
    (*(v8 + 8))(v10, v7);
  }

  return 0;
}

uint64_t type metadata accessor for AppPromotionSubtitleView(uint64_t a1)
{
  result = qword_1009588F8;
  if (!qword_1009588F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100475758(uint64_t a1)
{
  v3 = [*(v1 + qword_1009588E8) layer];
  sub_100016E2C(a1, v12, &unk_1009434C0, &qword_100783F60);
  v4 = v13;
  if (v13)
  {
    v5 = sub_10000CF78(v12, v13);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_10077165C();
    (*(v6 + 8))(v9, v4);
    sub_10000CD74(v12);
  }

  else
  {
    v10 = 0;
  }

  [v3 setCompositingFilter:v10];

  swift_unknownObjectRelease();
  return sub_10000CFBC(a1, &unk_1009434C0, &qword_100783F60);
}

uint64_t sub_1004758F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v40 = a5;
  v36 = a4;
  v37 = a3;
  v35 = a1;
  v8 = sub_10076DFFC();
  v38 = *(v8 - 8);
  v39 = v8;
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10076DA7C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10076DD3C();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v32 - v20;
  if (a2)
  {
    v34 = a6;
    sub_10076DD2C();
    if (qword_100940598 != -1)
    {
      swift_once();
    }

    v22 = sub_10076D3DC();
    sub_10000A61C(v22, qword_1009588C8);
    sub_10076DCFC();
    v33 = *(v16 + 8);
    v33(v18, v15);
    (*(v16 + 16))(v18, v21, v15);
    sub_10076DA5C();

    sub_10076DA9C();
    sub_10077071C();
    v36 &= 1u;
    v23 = sub_1007616FC();
    swift_allocObject();
    v24 = sub_1007616EC();
    v45 = v23;
    v46 = sub_100476E48(&qword_1009680E0, &type metadata accessor for EmptyPlaceable, &protocol conformance descriptor for EmptyPlaceable);
    v44[0] = v24;
    sub_10076DFDC();
    v45 = v11;
    v46 = &protocol witness table for LabelPlaceholder;
    v25 = sub_10000DB7C(v44);
    (*(v12 + 16))(v25, v14, v11);
    if (v37)
    {
      v26 = v39;
      *(&v42 + 1) = v39;
      v43 = &protocol witness table for Resize;
      v27 = sub_10000DB7C(&v41);
      v28 = v38;
      (*(v38 + 16))(v27, v10, v26);
    }

    else
    {
      v43 = 0;
      v41 = 0u;
      v42 = 0u;
      v28 = v38;
      v26 = v39;
    }

    sub_1004765CC(v44, &v41, v36, v40, v34);
    (*(v28 + 8))(v10, v26);
    (*(v12 + 8))(v14, v11);
    v33(v21, v15);
    sub_10000CFBC(&v41, &unk_10094B230, &qword_100791150);
    return sub_10000CFBC(v44, &unk_10094B230, &qword_100791150);
  }

  else
  {
    v29 = sub_1007616FC();
    swift_allocObject();
    v30 = sub_1007616EC();
    a6[3] = v29;
    result = sub_100476E48(&qword_1009680E0, &type metadata accessor for EmptyPlaceable, &protocol conformance descriptor for EmptyPlaceable);
    a6[4] = result;
    *a6 = v30;
  }

  return result;
}

double sub_100475DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10076BEDC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + qword_1009588E8);
  if (v10)
  {
    v11 = sub_10076FF6C();
  }

  else
  {
    v11 = 0;
  }

  [v9 setText:v11];

  v12 = *(v3 + qword_1009588F0);
  [v12 setHidden:a3 == 0];
  sub_100760C4C();
  sub_10076F63C();
  if (a3)
  {
    if (!v16[1])
    {
      return result;
    }

    sub_10076BEEC();
    sub_10076BE9C();
    v14 = *(v6 + 8);
    v14(v8, v5);
    sub_10076BFCC();
    sub_10076BEEC();
    v15 = sub_10076BE9C();
    v14(v8, v5);
    [v12 setContentMode:v15];
    sub_10075FD2C();
    sub_100476E48(&qword_100941820, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100760B8C();
  }

  return result;
}

uint64_t sub_100476030()
{
  v0 = sub_10076D3DC();
  sub_10000DB18(v0, qword_1009588C8);
  v1 = sub_10000A61C(v0, qword_1009588C8);
  if (qword_100941108 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A61C(v0, qword_1009A2110);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1004760F8(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_10076771C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v11 = &v27 - v10;
  v12 = qword_1009588E8;
  if (qword_100940598 != -1)
  {
    swift_once();
  }

  v13 = sub_10076D3DC();
  v14 = sub_10000A61C(v13, qword_1009588C8);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v11, v14, v13);
  (*(v15 + 56))(v11, 0, 1, v13);
  (*(v6 + 104))(v8, enum case for DirectionalTextAlignment.none(_:), v5);
  v16 = objc_allocWithZone(sub_1007626BC());
  *&v2[v12] = sub_1007626AC();
  v17 = qword_1009588F0;
  sub_10075FD2C();
  *&v2[v17] = sub_10075FB3C();
  v2[qword_1009588E0] = a1 & 1;
  v27.receiver = v2;
  v27.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = qword_1009588E8;
  v20 = *&v18[qword_1009588E8];
  v21 = objc_opt_self();
  v22 = v18;
  v23 = v20;
  v24 = [v21 labelColor];
  [v23 setTextColor:v24];

  v25 = qword_1009588F0;
  [*&v22[qword_1009588F0] setHidden:1];
  [v22 addSubview:*&v18[v19]];
  [v22 addSubview:*&v22[v25]];

  return v22;
}

uint64_t sub_100476464@<X0>(uint64_t *a1@<X8>)
{
  swift_getObjectType();
  v3 = *&v1[qword_1009588E8];
  v17[3] = sub_1007626BC();
  v17[4] = &protocol witness table for UILabel;
  v17[0] = v3;
  v4 = *&v1[qword_1009588F0];
  v5 = v3;
  if ([v4 isHidden])
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v7 = sub_10075FD2C();
    v8 = sub_100476E48(&qword_10094B250, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v6 = v4;
  }

  v12 = v6;
  v15 = v7;
  v16 = v8;
  v9 = v1[qword_1009588E0];
  v10 = [v1 traitCollection];
  sub_1004765CC(v17, &v12, v9, v10, a1);

  sub_10000CFBC(&v12, &unk_10094B230, &qword_100791150);
  return sub_10000CFBC(v17, &unk_10094B230, &qword_100791150);
}

uint64_t sub_1004765CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v12 = sub_10076D8DC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016E2C(a1, &v39, &unk_10094B230, &qword_100791150);
  if (v40)
  {
    sub_100012498(&v39, v41);
    v16 = sub_10077071C();
    v17 = 16.0;
    if ((a3 & 1) == 0)
    {
      v17 = 14.0;
    }

    if (v16)
    {
      v18 = 25.0;
    }

    else
    {
      v18 = v17;
    }

    sub_10005312C();
    if (qword_100940598 != -1)
    {
      swift_once();
    }

    v19 = sub_10076D3DC();
    sub_10000A61C(v19, qword_1009588C8);
    v20 = sub_100770B3C();
    [v20 lineHeight];
    v22 = v21;
    sub_10076D8AC();
    sub_100016E2C(a2, &v36, &unk_10094B230, &qword_100791150);
    if (v37)
    {
      if ((v22 - v18) * 0.5 < 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = (v22 - v18) * 0.5;
      }

      sub_100012498(&v36, &v39);
      sub_10000A570(&v39, &v36);
      v35[3] = sub_10076DFFC();
      v35[4] = &protocol witness table for Resize;
      sub_10000DB7C(v35);
      sub_10076DFDC();
      v34[8] = &type metadata for CGFloat;
      v34[9] = &protocol witness table for CGFloat;
      *&v34[5] = v23;
      v24 = sub_10076D67C();
      v34[3] = v24;
      v34[4] = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v34);
      sub_10076D66C();
      v33[3] = v24;
      v33[4] = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v33);
      sub_10076D66C();
      v32[3] = v24;
      v32[4] = &protocol witness table for ZeroDimension;
      sub_10000DB7C(v32);
      sub_10076D66C();
      v37 = sub_10076E04C();
      v38 = &protocol witness table for Margins;
      sub_10000DB7C(&v36);
      sub_10076E05C();
      v25 = swift_allocObject();
      *(v25 + 16) = a4;
      *(v25 + 24) = v6;
      v26 = a4;
      sub_10076D89C();

      sub_10000CD74(&v39);
      sub_10000CD74(&v36);
    }

    else
    {
      sub_10000CFBC(&v36, &unk_10094B230, &qword_100791150);
    }

    sub_10076D89C();
    a5[3] = v12;
    a5[4] = &protocol witness table for HorizontalStack;
    v30 = sub_10000DB7C(a5);
    (*(v13 + 32))(v30, v15, v12);

    return sub_10000CD74(v41);
  }

  else
  {
    sub_10000CFBC(&v39, &unk_10094B230, &qword_100791150);
    v27 = sub_1007616FC();
    swift_allocObject();
    v28 = sub_1007616EC();
    a5[3] = v27;
    result = sub_100476E48(&qword_1009680E0, &type metadata accessor for EmptyPlaceable, &protocol conformance descriptor for EmptyPlaceable);
    a5[4] = result;
    *a5 = v28;
  }

  return result;
}

void sub_100476A4C()
{
  v1 = *(v0 + qword_1009588F0);
}

void sub_100476A8C(uint64_t a1)
{
  v2 = *(a1 + qword_1009588F0);
}

unint64_t sub_100476AF4()
{
  result = qword_100958948;
  if (!qword_100958948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100958948);
  }

  return result;
}

uint64_t sub_100476B48()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100476BE4()
{
  v1 = v0;
  v2 = sub_10076771C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = qword_1009588E8;
  if (qword_100940598 != -1)
  {
    swift_once();
  }

  v10 = sub_10076D3DC();
  v11 = sub_10000A61C(v10, qword_1009588C8);
  v12 = *(v10 - 8);
  (*(v12 + 16))(v8, v11, v10);
  (*(v12 + 56))(v8, 0, 1, v10);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  v13 = objc_allocWithZone(sub_1007626BC());
  *(v1 + v9) = sub_1007626AC();
  v14 = qword_1009588F0;
  sub_10075FD2C();
  *(v1 + v14) = sub_10075FB3C();
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100476E48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100476EF0@<X0>(uint64_t a1@<X8>)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  PageTraitEnvironment.pageColumnMargin.getter();
  sub_100766E2C();
  v2 = sub_100766E4C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 0, 1, v2);
}

id sub_100476FB8()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100958350, &qword_10078C2B8);
  __chkstk_darwin(v2 - 8);
  v62 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v61 - v5;
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v8 = v7;
  PageTraitEnvironment.pageColumnMargin.getter();
  v10 = (v8 - v9) * 0.5;
  v11 = &v0[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_preferredArtworkSize];
  *v11 = v10;
  v11[1] = v10;
  [v0 setNeedsLayout];
  v12 = sub_10076BBAC();
  if (v13)
  {
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v15 = sub_100770CFC();
      sub_1002D76D0(1, v15);

      v16 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel];
      if (v16)
      {
        v17 = v16;
        v18 = sub_10076FF6C();

        [v17 setText:v18];
      }

      else
      {
      }

      goto LABEL_11;
    }
  }

  v19 = *&v0[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel];
  if (v19)
  {
    [v19 setHidden:1];
  }

LABEL_11:
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_titleLabel];
  sub_10076BB6C();
  if (v21)
  {
    v22 = sub_10076FF6C();
  }

  else
  {
    v22 = 0;
  }

  [v20 setText:v22];

  sub_10076BA4C();
  if (v23)
  {
    sub_1002D7980();
    v24 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel];
    if (v24)
    {
      v25 = v24;
      v26 = sub_10076FF6C();

      [v25 setText:v26];
    }

    else
    {
    }
  }

  else
  {
    v27 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel;
    v28 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel];
    if (v28)
    {
      [v28 setHidden:1];
      v29 = *&v1[v27];
      if (v29)
      {
        [v29 setText:0];
      }
    }
  }

  v30 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_subtitleLabel];
  sub_10076BBEC();
  if (v31)
  {
    v32 = sub_10076FF6C();
  }

  else
  {
    v32 = 0;
  }

  [v30 setText:v32];

  v33 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel;
  v34 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_headingLabel];
  if (v34 && ([v34 isHidden] & 1) == 0 && (v35 = *&v1[v33]) != 0)
  {
    v36 = [v35 hasContent];
  }

  else
  {
    v36 = 0;
  }

  v37 = OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel;
  v38 = *&v1[OBJC_IVAR____TtC20ProductPageExtension29LargeLockupCollectionViewCell_tertiaryTitleLabel];
  if (v38 && ([v38 isHidden] & 1) == 0 && (v39 = *&v1[v37]) != 0)
  {
    v40 = [v39 hasContent];
  }

  else
  {
    v40 = 0;
  }

  if ([v30 hasContent])
  {
    v41 = v40 & v36;
  }

  else
  {
    v41 = 1;
  }

  [v30 setHidden:v41];
  v42 = sub_10076BADC();
  if (!v42)
  {
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v42 = sub_100770D1C();
  }

  v43 = v42;
  [v30 setTextColor:v42];

  v44 = &off_100911000;
  v45 = [v30 layer];
  sub_10076BAEC();
  v46 = sub_1007663AC();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  if (v48(v6, 1, v46) == 1)
  {
    sub_100477620(v6);
LABEL_43:
    v55 = 0;
    goto LABEL_44;
  }

  sub_10076639C();
  (*(v47 + 8))(v6, v46);
  v49 = v64;
  if (!v64)
  {
    goto LABEL_43;
  }

  v50 = sub_10000CF78(v63, v64);
  v61 = &v61;
  v51 = *(v49 - 8);
  v52 = __chkstk_darwin(v50);
  v54 = &v61 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v54, v52);
  v55 = sub_10077165C();
  (*(v51 + 8))(v54, v49);
  v44 = &off_100911000;
  sub_10000CD74(v63);
LABEL_44:
  [v45 setCompositingFilter:{v55, v61}];

  swift_unknownObjectRelease();
  v56 = [v1 contentView];
  v57 = [v56 v44[274]];

  v58 = v62;
  sub_10076BAEC();
  v59 = v48(v58, 1, v46) == 1;
  sub_100477620(v58);
  [v57 setAllowsGroupBlending:v59];

  return [v1 setNeedsLayout];
}

uint64_t sub_100477620(uint64_t a1)
{
  v2 = sub_10000A5D4(&unk_100958350, &qword_10078C2B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100477688(double a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v6 = v5;
  PageTraitEnvironment.pageColumnMargin.getter();
  sub_1002D803C(a3, (v6 - v7) * 0.5, a1);
  v9 = v8;
  v11 = v10;
  v12 = objc_opt_self();
  v13 = [v12 absoluteDimension:v9];
  v14 = [v12 absoluteDimension:v11];
  v15 = objc_opt_self();
  v16 = [v15 sizeWithWidthDimension:v13 heightDimension:v14];

  v17 = [objc_opt_self() itemWithLayoutSize:v16];
  v18 = [v16 widthDimension];
  v19 = [v16 heightDimension];
  v20 = [v15 sizeWithWidthDimension:v18 heightDimension:v19];

  v21 = objc_opt_self();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1007841E0;
  *(v22 + 32) = v17;
  sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);
  v23 = v17;
  isa = sub_1007701AC().super.isa;

  v25 = [v21 verticalGroupWithLayoutSize:v20 subitems:isa];

  return v25;
}

uint64_t sub_1004778CC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = sub_10076D39C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_getObjectType();
    PageTraitEnvironment.pageColumnWidth.getter();
  }

  if (qword_100940330 != -1)
  {
    swift_once();
  }

  v9 = sub_1007640EC();
  sub_10000A61C(v9, qword_10099F660);
  sub_1007640DC();
  sub_10076D36C();
  (*(v6 + 8))(v8, v5);
  sub_100766E2C();
  v10 = sub_100766E4C();
  return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
}

void sub_100477A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_10076B9FC();
    if (v9)
    {
      v10 = v9;
      v11 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      sub_10076F5AC();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v6, 1, v11) == 1)
      {

        sub_10000CFBC(v6, &unk_100943200, &unk_100785840);
      }

      else
      {
        sub_100263BF0(v10, 1, a3, v6);

        (*(v12 + 8))(v6, v11);
      }
    }

    else
    {
    }
  }
}

double sub_100477C1C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_100940330 != -1)
  {
    swift_once();
  }

  v8 = sub_1007640EC();
  sub_10000A61C(v8, qword_10099F660);
  sub_10076410C();
  sub_1004791F0(&unk_1009566D0, &type metadata accessor for FlowcaseItemLayout, &protocol conformance descriptor for FlowcaseItemLayout);
  sub_10076DBDC();
  if (qword_100940338 != -1)
  {
    swift_once();
  }

  v9 = sub_10076E21C();
  sub_10000A61C(v9, qword_10099F678);

  sub_100770AFC();
  return result;
}

id sub_100477E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v179 = a3;
  v176 = sub_10076361C();
  v178 = *(v176 - 8);
  __chkstk_darwin(v176);
  v170 = &v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v169 = &v160 - v8;
  v9 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v9 - 8);
  v161 = &v160 - v10;
  v171 = sub_10076B96C();
  v168 = *(v171 - 8);
  __chkstk_darwin(v171);
  v162 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v160 - v13;
  v15 = sub_10000A5D4(&unk_100949290, &unk_10078BBF0);
  __chkstk_darwin(v15 - 8);
  v166 = &v160 - v16;
  v17 = sub_10000A5D4(&qword_10094F730, qword_10078A050);
  __chkstk_darwin(v17 - 8);
  v175 = &v160 - v18;
  v19 = sub_10000A5D4(&unk_1009492A0, &unk_10078BC00);
  __chkstk_darwin(v19 - 8);
  v174 = &v160 - v20;
  v21 = sub_10000A5D4(&unk_10094D210, &qword_10078DE20);
  __chkstk_darwin(v21 - 8);
  v173 = &v160 - v22;
  v23 = sub_10000A5D4(&unk_100945550, &unk_10078A040);
  __chkstk_darwin(v23 - 8);
  v165 = &v160 - v24;
  v25 = sub_10076A3AC();
  v163 = *(v25 - 8);
  __chkstk_darwin(v25);
  v164 = &v160 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000A5D4(&unk_100946760, &unk_100787A20);
  __chkstk_darwin(v27 - 8);
  v177 = (&v160 - v28);
  v29 = sub_10000A5D4(&qword_100952650, &unk_10079B720);
  __chkstk_darwin(v29 - 8);
  v31 = &v160 - v30;
  v32 = *&v3[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_captionLabel];
  sub_100760D3C();
  if (v33)
  {
    v34 = sub_10076FF6C();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  v35 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_titleLabel];
  sub_100760D0C();
  if (v36)
  {
    v37 = sub_10076FF6C();
  }

  else
  {
    v37 = 0;
  }

  [v35 setText:v37];

  v38 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_subtitleLabel];
  sub_100760D4C();
  if (v39)
  {
    v40 = sub_10076FF6C();
  }

  else
  {
    v40 = 0;
  }

  [v38 setText:v40];

  v41 = sub_100760CFC();
  sub_1003C8578(v41, v42);
  v43 = sub_100760CDC();
  v167 = v14;
  if (v43)
  {
    v180 = v43;
    sub_10076B90C();
    sub_10076F64C();
    sub_1004791F0(&qword_100956710, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    sub_10076F56C();

    v44 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
    (*(*(v44 - 8) + 56))(v31, 0, 1, v44);
  }

  else
  {
    v45 = sub_10000A5D4(&qword_100955BD0, &unk_10079B700);
    (*(*(v45 - 8) + 56))(v31, 1, 1, v45);
  }

  v46 = OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_clickAction;
  swift_beginAccess();
  sub_1002F0390(v31, &v4[v46]);
  swift_endAccess();
  v47 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_gradientBlurView];
  if (sub_100760D2C())
  {
    v48 = sub_10076BE1C();
  }

  else
  {
    v48 = 0;
  }

  v49 = *&v47[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColor];
  *&v47[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_secondaryColor] = v48;
  v50 = v48;

  sub_10046D22C();
  v51 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_appEventFormattedDateView];
  if (v51)
  {
    type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
    v52 = v51;
    sub_10076F63C();
    v53 = v180;
    v54 = v4;
    v55 = v47;
    v56 = a1;
    v57 = OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
    v58 = *&v52[OBJC_IVAR____TtC20ProductPageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
    v59 = v58;
    sub_1004B57F0(v53);
    v60 = *&v52[v57];
    *&v52[v57] = v53;
    a1 = v56;
    v47 = v55;
    v4 = v54;
    v61 = v53;

    sub_1004B5954(v58);
  }

  v62 = sub_100760D1C();
  v63 = &off_100911000;
  if (v62)
  {
    v64 = v62;
    v160 = v4;
    v65 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView];
    v66 = v163;
    v67 = *(v163 + 104);
    v67(v164, enum case for OfferButtonPresenterViewAlignment.right(_:), v25);
    v68 = v165;
    v67(v165, enum case for OfferButtonPresenterViewAlignment.left(_:), v25);
    (*(v66 + 56))(v68, 0, 1, v25);
    sub_1004791F0(&unk_1009492B0, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
    v69 = v177;
    sub_10076759C();
    v70 = sub_10000A5D4(&qword_100945590, qword_10078BC10);
    (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
    v71 = *(v65 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_artworkView);
    v72 = sub_10076BB5C();
    if (v72)
    {
    }

    v165 = v47;
    [v71 setHidden:v72 == 0];
    v164 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView;
    v73 = *(v65 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_lockupView);
    v74 = sub_10075F78C();
    v75 = v173;
    (*(*(v74 - 8) + 56))(v173, 1, 1, v74);
    v76 = sub_1007628DC();
    v77 = v174;
    (*(*(v76 - 8) + 56))(v174, 1, 1, v76);
    v78 = sub_10000A5D4(&unk_100946750, qword_100787A30);
    v79 = v175;
    (*(*(v78 - 8) + 56))(v175, 1, 1, v78);
    v80 = sub_10076C54C();
    v81 = v166;
    (*(*(v80 - 8) + 56))(v166, 1, 1, v80);
    sub_1004D0A60(v64, v73, v177, v179, 1, 0, v75, v77, v81, v79);
    sub_10000CFBC(v81, &unk_100949290, &unk_10078BBF0);
    v73[OBJC_IVAR____TtC20ProductPageExtension15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 1;
    sub_10026202C();
    [v73 setNeedsLayout];
    v82 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel;
    v83 = *&v73[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_tertiaryTitleLabel];
    if (v83)
    {
      [v83 setHidden:1];
      v84 = *&v73[v82];
      if (v84)
      {
        [v84 setText:0];
      }
    }

    v85 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel;
    v86 = *&v73[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel];
    if (v86)
    {
      if (([v86 isHidden] & 1) == 0)
      {
        v87 = *&v73[v85];
        if (v87)
        {
          if ([v87 hasContent])
          {
            v88 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
            [*&v73[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
            [*&v73[v88] setText:0];
          }
        }
      }
    }

    v172 = a1;
    v89 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel;
    v90 = [*&v73[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel] isHidden];
    v91 = v167;
    if (v90 & 1) == 0 && ([*&v73[v89] hasContent])
    {
      v92 = *&v73[v85];
      if (v92)
      {
        [v92 setHidden:1];
        v93 = *&v73[v85];
        if (v93)
        {
          [v93 setText:0];
        }
      }

      v94 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel;
      [*&v73[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel] setHidden:1];
      [*&v73[v94] setText:0];
    }

    sub_10000CFBC(v175, &qword_10094F730, qword_10078A050);
    sub_10000CFBC(v174, &unk_1009492A0, &unk_10078BC00);
    sub_10000CFBC(v173, &unk_10094D210, &qword_10078DE20);
    sub_10076BB7C();
    v95 = sub_10076BA5C();
    v97 = v96;
    v98 = sub_10076BABC();
    v100 = v99;
    v101 = sub_10076BA7C();
    v175 = v64;
    if (v97 && v100)
    {
      v102 = v101;
      v174 = v95;
      v103 = v168;
      (*(v168 + 16))(v162, v91, v171);
      sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
      sub_10076F64C();
      sub_10076FC1C();
      v173 = v98;
      v105 = v180;
      v104 = v181;
      type metadata accessor for CrossLinkPresenter(0);
      swift_allocObject();
      v106 = v65;
      v107 = CrossLinkPresenter.init(adamId:title:subtitle:includeBetaApps:view:appStateController:)(v162, v174, v97, v173, v100, v102 & 1, v65, &off_1008922A8, v105, v104);
      (*(v103 + 8))(v91, v171);
      sub_10000CFBC(v177, &unk_100946760, &unk_100787A20);
      v108 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *&v106[v108] = v107;
    }

    else
    {

      v112 = OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkPresenter;
      swift_beginAccess();
      *(v65 + v112) = 0;

      v113 = sub_100354258(0, 0);
      (*(v168 + 8))(v91, v171, v113);
      sub_10000CFBC(v177, &unk_100946760, &unk_100787A20);
    }

    v114 = v178;
    v115 = v164;
    v116 = *(*&v164[v65] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_headingLabel);
    if (v116)
    {
      v117 = qword_100940AF8;
      v118 = v116;
      if (v117 != -1)
      {
        swift_once();
      }

      v119 = sub_10076D3DC();
      v120 = sub_10000A61C(v119, qword_1009A0EF8);
      v121 = *(v119 - 8);
      v122 = v161;
      (*(v121 + 16))(v161, v120, v119);
      (*(v121 + 56))(v122, 0, 1, v119);
      sub_1007625DC();
    }

    v123 = v169;
    sub_100760CEC();
    v124 = sub_1007635FC();
    v127 = *(v114 + 8);
    v126 = v114 + 8;
    v125 = v127;
    (v127)(v123, v176);
    v128 = *(*&v115[v65] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerButton);
    if (v124 == 2)
    {
      v129 = objc_opt_self();
      v130 = v128;
      v131 = [v129 whiteColor];
    }

    else
    {
      sub_100016F40(0, &qword_100942F10, UIColor_ptr);
      v132 = v128;
      v131 = sub_100770E1C();
    }

    v133 = v131;
    [v128 setTintColor:v131];

    [v65 setHidden:0];
    v134 = v170;
    sub_100760CEC();
    v135 = sub_1007635FC();
    v136 = v176;
    (v125)(v134, v176);
    [v65 setOverrideUserInterfaceStyle:v135];
    [*(*&v115[v65] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel) _setTextColorFollowsTintColor:0];
    v137 = *(*&v115[v65] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_offerLabel);
    sub_100016F40(0, &qword_100942F10, UIColor_ptr);
    v138 = v137;
    v139 = sub_100770CFC();
    v177 = v125;
    v140 = v139;
    v141 = [v139 colorWithAlphaComponent:0.7];
    v178 = v126;
    v142 = v141;

    [v138 setTextColor:v142];
    v143 = *(*&v115[v65] + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_subtitleLabel);
    v144 = sub_100770CFC();
    v145 = [v144 colorWithAlphaComponent:0.7];

    [v143 setTextColor:v145];
    v146 = *(v65 + OBJC_IVAR____TtC20ProductPageExtension19CrossLinkLockupView_crossLinkTitleLabel);
    v147 = sub_100770CFC();
    v148 = [v147 colorWithAlphaComponent:0.7];

    [v146 setTextColor:v148];
    v63 = &off_100911000;
    [v65 setNeedsLayout];
    v149 = swift_allocObject();
    v150 = v160;
    swift_unknownObjectWeakInit();
    v151 = swift_allocObject();
    v152 = v175;
    *(v151 + 2) = v149;
    *(v151 + 3) = v152;
    *(v151 + 4) = v179;
    v153 = &v150[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v154 = *&v150[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v155 = *&v150[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction + 8];
    *v153 = sub_1004791E4;
    v153[1] = v151;

    sub_1000167E0(v154, v155);

    v156 = v165;
    [v165 setHidden:0];
    sub_100760CEC();
    v157 = sub_1007635FC();
    (v177)(v134, v136);
    v158 = v156;
    v4 = v150;
    [v158 setOverrideUserInterfaceStyle:v157];
  }

  else
  {
    v109 = &v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v110 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction];
    v111 = *&v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupViewTappedAction + 8];
    *v109 = 0;
    *(v109 + 1) = 0;
    [*&v4[OBJC_IVAR____TtC20ProductPageExtension31EditorialCardCollectionViewCell_lockupView] setHidden:{1, sub_1000167E0(v110, v111)}];
    [v47 setHidden:1];
  }

  sub_1003C9E04();
  return [v4 v63[194]];
}

uint64_t sub_100479164()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10047919C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004791F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100479238(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  if (qword_100940330 != -1)
  {
    swift_once();
  }

  v2 = sub_1007640EC();
  sub_10000A61C(v2, qword_10099F660);
  sub_10076410C();
  sub_1004791F0(&unk_1009566D0, &type metadata accessor for FlowcaseItemLayout, &protocol conformance descriptor for FlowcaseItemLayout);
  sub_10076DBDC();
  if (qword_100940338 != -1)
  {
    swift_once();
  }

  v3 = sub_10076E21C();
  sub_10000A61C(v3, qword_10099F678);
  sub_100770AFC();
  v5 = v4;
  v7 = v6;
  v8 = objc_opt_self();
  v9 = [v8 absoluteDimension:v5];
  v10 = [v8 absoluteDimension:v7];
  v11 = [objc_opt_self() sizeWithWidthDimension:v9 heightDimension:v10];

  v12 = [objc_opt_self() itemWithLayoutSize:v11];
  v13 = objc_opt_self();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007841E0;
  *(v14 + 32) = v12;
  sub_100016F40(0, &qword_100952C70, NSCollectionLayoutItem_ptr);
  v15 = v12;
  isa = sub_1007701AC().super.isa;

  v17 = [v13 verticalGroupWithLayoutSize:v11 subitems:isa];

  return v17;
}

char *sub_1004794EC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_eventCardView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for CondensedAppEventCardView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_interRowSpacing] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for CondensedAppEventContentView();
  v11 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v15 = v11;
  [v15 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView]];
  [v15 addSubview:*&v15[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_eventCardView]];

  return v15;
}

void sub_10047973C()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for CondensedAppEventContentView();
  objc_msgSendSuper2(&v25, "layoutSubviews");
  sub_10076422C();
  v3 = v2;
  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView];
  v7 = [v0 traitCollection];
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007841E0;
  *(v8 + 32) = v7;
  v9 = v7;
  v10 = sub_10076DEEC();
  [v6 measurementsWithFitting:v10 in:{v3, v5}];

  v11 = [v1 traitCollection];
  sub_1007709CC();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v6 setFrame:{v13, v15, v17, v19}];
  v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_eventCardView];
  v21 = [v20 superview];
  if (v21)
  {
    v22 = v21;
    sub_100016F40(0, &qword_1009441F0, UIView_ptr);
    v23 = v1;
    v24 = sub_100770EEC();

    if (v24)
    {
      sub_10047A110();
      [v20 setBounds:{0.0, 0.0}];
      [v20 setCenter:sub_10047A2DC()];
    }
  }
}

double sub_1004799D0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView);
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView];
  v20.value.super.isa = 0;
  v20.is_nil = 0;
  sub_10075FCEC(v20, v4);

  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_descriptionLabel];
  v6 = [v5 superview];
  if (!v6 || (v7 = v6, sub_100016F40(0, &qword_1009441F0, UIView_ptr), v8 = v2, v9 = sub_100770EEC(), v7, v8, (v9 & 1) == 0))
  {
    [v2 addSubview:v5];
  }

  [v5 setHidden:1];
  [v5 setText:0];
  [v2 setNeedsLayout];
  v10 = OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton;
  v11 = *&v2[OBJC_IVAR____TtC20ProductPageExtension21SmallSearchLockupView_searchAdTransparencyButton];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v2[v10];
  }

  else
  {
    v12 = 0;
  }

  *&v2[v10] = 0;

  v13 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_eventCardView);
  v21.value.super.isa = 0;
  v21.is_nil = 0;
  sub_10075FCEC(v21, v14);
  [*(v13 + OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel) setText:0];
  sub_1004B1900(_swiftEmptyArrayStorage);
  v15 = (v13 + OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventViewTappedAction);
  v16 = *(v13 + OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventViewTappedAction);
  v17 = *(v13 + OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventViewTappedAction + 8);
  *v15 = 0;
  v15[1] = 0;

  return sub_1000167E0(v16, v17);
}

void sub_100479BAC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_10076C38C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000A5D4(&unk_1009428D0, &unk_100783DC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v28 - v11;
  sub_10075EEBC();
  sub_10047CACC(&qword_100942860, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  v13 = v31;
  if (v31)
  {
    v30 = a1;
    v14 = sub_10075EEAC();
    v15 = sub_10076341C();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    sub_100386168(v14, v12, a2);

    sub_10000CFBC(v12, &unk_1009428D0, &unk_100783DC0);
    v16 = *&v2[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_eventCardView];
    sub_10075EE9C();
    v17 = *&v16[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_titleLabel];
    sub_10075F1BC();
    v18 = sub_10076FF6C();
    v29 = v6;
    v19 = v18;

    [v17 setText:v19];

    v20 = sub_10075F15C();
    [v16 setNeedsLayout];

    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 2) = v21;
    *(v22 + 3) = v13;
    *(v22 + 4) = a2;
    v23 = &v16[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventViewTappedAction];
    v24 = *&v16[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventViewTappedAction];
    v25 = *&v16[OBJC_IVAR____TtC20ProductPageExtension25CondensedAppEventCardView_appEventViewTappedAction + 8];
    *v23 = sub_10047CB98;
    v23[1] = v22;

    sub_1000167E0(v24, v25);

    swift_getKeyPath();
    sub_10076338C();

    sub_10076C23C();
    v27 = v26;
    (*(v7 + 8))(v9, v29);
    *&v3[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_interRowSpacing] = v27;
    [v3 setNeedsLayout];
  }
}

void sub_100479F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_10075EE9C();
    v9 = sub_10075F27C();

    if (v9)
    {
      v10 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
      sub_10076F5AC();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_10000CFBC(v6, &unk_100943200, &unk_100785840);
      }

      else
      {
        sub_100263BF0(v9, 1, a3, v6);

        (*(v11 + 8))(v6, v10);
      }
    }

    else
    {
    }
  }
}

double sub_10047A110()
{
  v1 = v0;
  v2 = sub_10075E39C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView] frame];
  CGRectGetMaxY(v13);
  v7 = [v0 traitCollection];
  v8 = sub_10077071C();

  if ((v8 & 1) == 0)
  {
    sub_10075E38C();
    sub_10075E37C();
    (*(v3 + 8))(v6, v2);
    sub_10000CF78(v12, v12[3]);
    v9 = [v1 traitCollection];
    sub_10076D41C();

    sub_10000CD74(v12);
  }

  type metadata accessor for CondensedAppEventContentView();
  sub_10076422C();
  CGRectGetHeight(v14);
  sub_10076422C();
  CGRectGetWidth(v15);
  return 0.0;
}

CGFloat sub_10047A2DC()
{
  v1 = v0;
  v2 = sub_10075E39C();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [*&v0[OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView] frame];
  CGRectGetMaxY(v13);
  v7 = [v0 traitCollection];
  v8 = sub_10077071C();

  if ((v8 & 1) == 0)
  {
    sub_10075E38C();
    sub_10075E37C();
    (*(v3 + 8))(v6, v2);
    sub_10000CF78(v12, v12[3]);
    v9 = [v1 traitCollection];
    sub_10076D41C();

    sub_10000CD74(v12);
  }

  type metadata accessor for CondensedAppEventContentView();
  sub_10076422C();
  CGRectGetHeight(v14);
  [v1 bounds];
  return CGRectGetWidth(v15) * 0.5;
}

id sub_10047A4CC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CondensedAppEventContentView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10047A5D0(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_10047CACC(&qword_100958A38, a2, type metadata accessor for CondensedAppEventContentView, &unk_1007A576C);
  result = sub_10047CACC(&unk_100958A40, v3, type metadata accessor for CondensedAppEventContentView, &unk_1007A579C);
  *(a1 + 16) = result;
  return result;
}

void sub_10047A654(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10076BF6C();
  __chkstk_darwin(v4 - 8);
  sub_10000A570(a1, v17);
  sub_10000A5D4(&unk_100942830, &qword_100782680);
  sub_10075EEBC();
  if (swift_dynamicCast())
  {
    sub_10075EE9C();
    v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView);
    v6 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
    v7 = *(v5 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
    v18.value.super.isa = 0;
    v18.is_nil = 0;
    sub_10075FCEC(v18, v8);

    v9 = *(v5 + v6);
    sub_10075FD2C();
    sub_10047CACC(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v10 = v9;
    sub_100760BFC();

    v19.value.super.isa = 0;
    v19.is_nil = 0;
    sub_10075FCEC(v19, v11);
    sub_100760BFC();
    sub_10075EEAC();
    v12 = sub_10076BB5C();

    if (v12)
    {
      v13 = qword_10093FBE0;
      v14 = *(v5 + v6);
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = sub_100763ADC();
      sub_10000A61C(v15, qword_10099DDA0);
      sub_1007639AC();
      [v14 contentMode];
      sub_10076BFCC();
      sub_10076BF7C();
      sub_10075FCCC();
      [v14 setContentMode:sub_10076BDBC()];
      sub_100764ADC();
      sub_10075FD0C();
      if (!sub_10076BE1C())
      {
        sub_100016F40(0, &qword_100942F10, UIColor_ptr);
        sub_100770D5C();
      }

      sub_10075FB8C();
      v16 = *(v5 + v6);
      sub_100760B8C();
    }

    sub_100125F50();
  }
}

double sub_10047A9B0(uint64_t a1)
{
  v2 = sub_10075E39C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v94[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10076749C();
  v122 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v94[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1007679DC();
  v126 = *(v9 - 8);
  v127 = v9;
  __chkstk_darwin(v9);
  v117 = &v94[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_10076997C();
  v119 = *(v11 - 8);
  v120 = v11;
  __chkstk_darwin(v11);
  v118 = &v94[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10076443C();
  v130 = *(v13 - 8);
  v131 = v13;
  __chkstk_darwin(v13);
  v15 = &v94[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v129 = &v94[-v17];
  v135 = sub_10076747C();
  v128 = *(v135 - 8);
  __chkstk_darwin(v135);
  v121 = &v94[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v94[-v20];
  v22 = sub_10000A5D4(&unk_100957F90, qword_1007A9D70);
  __chkstk_darwin(v22 - 8);
  v116 = &v94[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v133 = &v94[-v25];
  sub_10075EEBC();
  sub_10047CACC(&qword_100942860, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  if (!v172[0])
  {
    return 0.0;
  }

  v132 = v21;
  v114 = v3;
  v109 = v172[0];
  v26 = sub_10075EEAC();
  swift_getKeyPath();
  sub_10076338C();

  v134 = v172[0];

  v27 = sub_10076BB6C();
  v100 = v28;
  v101 = v27;
  v29 = sub_10076BBEC();
  v102 = v30;
  v103 = v29;
  v31 = sub_10076BB0C();
  v125 = v26;

  if (v31 && (v32 = sub_10076518C(), , v32))
  {
    v33 = sub_10076C3EC();
    v104 = v34;
    v105 = v33;
  }

  else
  {
    v104 = 0;
    v105 = 0;
  }

  v35 = v132;
  v124 = sub_10076282C();
  (*(v126 + 56))(v133, 1, 1, v127);
  sub_10076286C();
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v36 = v135;
  v37 = sub_10000A61C(v135, qword_1009A0690);
  v106 = *(v128 + 16);
  v107 = v128 + 16;
  v106(v35, v37, v36);
  v38 = sub_10077071C();
  v115 = v2;
  v112 = a1;
  v113 = v5;
  v110 = v8;
  v111 = v6;
  if (v38)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v39 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v39 = qword_100944CA0;
  }

  v41 = v131;
  v42 = sub_10000A61C(v131, v39);
  v43 = v130;
  (*(v130 + 16))(v15, v42, v41);
  (*(v43 + 32))(v129, v15, v41);
  v44 = [v134 preferredContentSizeCategory];
  sub_10077084C();

  sub_1007643EC();
  sub_10076441C();
  sub_10076746C();
  sub_10076745C();
  v99 = sub_10076DDDC();
  swift_allocObject();
  v108 = sub_10076DDBC();
  v45 = objc_opt_self();
  v97 = v45;
  v46 = [v45 preferredFontForTextStyle:UIFontTextStyleBody];
  v47 = sub_10076C04C();
  v173 = v47;
  v123 = sub_10047CACC(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v174 = v123;
  v48 = sub_10000DB7C(v172);
  v49 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v50 = *(v47 - 8);
  v98 = *(v50 + 104);
  v51 = v50 + 104;
  v95 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v98(v48, enum case for Feature.measurement_with_labelplaceholder(_:), v47);
  v96 = v51;
  sub_10076C90C();
  sub_10000CD74(v172);
  v52 = v118;
  sub_10076996C();
  sub_10076994C();
  v53 = v120;
  v54 = *(v119 + 8);
  v54(v52, v120);
  v55 = [v45 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v171[3] = v47;
  v171[4] = v123;
  v56 = sub_10000DB7C(v171);
  v57 = v49;
  v58 = v98;
  v98(v56, v57, v47);
  sub_10076C90C();
  sub_10000CD74(v171);
  sub_10076996C();
  sub_10076994C();
  v54(v52, v53);
  v59 = [v97 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v170[3] = v47;
  v170[4] = v123;
  v60 = sub_10000DB7C(v170);
  v58(v60, v95, v47);
  sub_10076C90C();
  sub_10000CD74(v170);
  sub_10076996C();
  sub_10076994C();
  v54(v52, v53);
  v61 = v124;
  LODWORD(v123) = sub_10001D420() & (v61 != 0);
  if (v123 == 1)
  {
    v62 = v99;
    v63 = objc_allocWithZone(sub_10076DEDC());
    v64 = v134;
    v65 = sub_10076DECC();
    v66 = v116;
    sub_10047C764(v133, v116);
    v68 = v126;
    v67 = v127;
    v69 = *(v126 + 48);
    if (v69(v66, 1, v127) == 1)
    {
      v70 = v117;
      _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v69(v66, 1, v67) != 1)
      {
        sub_10000CFBC(v66, &unk_100957F90, qword_1007A9D70);
      }
    }

    else
    {
      v70 = v117;
      (*(v68 + 32))(v117, v66, v67);
    }

    v72 = v65;
    sub_10001A588(v61, v70, v72, 0.0, 0.0);

    (*(v68 + 8))(v70, v67);
    swift_allocObject();
    v71 = sub_10076DDAC();
  }

  else
  {
    v62 = v99;
    swift_allocObject();
    v71 = sub_10076DDBC();
  }

  v73 = v71;
  v74 = v110;

  sub_10001D420();
  swift_allocObject();
  v75 = sub_10076DDBC();
  v106(v121, v132, v135);
  v169 = &protocol witness table for LayoutViewPlaceholder;
  v168 = v62;
  v167 = v108;
  v166 = 0;
  *&v164[40] = 0u;
  v165 = 0u;
  sub_10000A570(v172, v164);
  sub_10000A570(v171, &v163);
  v162 = 0;
  v160 = 0u;
  v161 = 0u;
  v159 = 0;
  v157 = 0u;
  v158 = 0u;

  v76 = sub_10076DDCC();
  v156 = &protocol witness table for LayoutViewPlaceholder;
  v155 = v62;
  v154 = v76;
  v153 = 0;
  v151 = 0u;
  v152 = 0u;
  v150 = 0;
  v148 = 0u;
  v149 = 0u;
  v147 = 0;
  v145 = 0u;
  v146 = 0u;
  v144 = 0;
  v143 = 0u;
  *&v142[40] = 0u;
  sub_10000A570(v170, v142);
  v140 = v62;
  v141 = &protocol witness table for LayoutViewPlaceholder;
  v138 = &protocol witness table for LayoutViewPlaceholder;
  v139 = v73;
  v137 = v62;
  v136 = v75;
  sub_10076748C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_1007841E0;
  v78 = v134;
  *(v77 + 32) = v134;
  v79 = v78;
  v80 = sub_10076DEEC();
  sub_10047CACC(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v81 = v111;
  sub_10076D2AC();
  v83 = v82;

  (*(v122 + 8))(v74, v81);
  sub_10000CD74(v170);
  sub_10000CD74(v171);
  sub_10000CD74(v172);
  (*(v130 + 8))(v129, v131);
  (*(v128 + 8))(v132, v135);
  sub_10000CFBC(v133, &unk_100957F90, qword_1007A9D70);
  swift_getKeyPath();
  sub_10076338C();

  v84 = v172[0];
  if (sub_10077071C())
  {
    v85 = sub_1006A3EF0();
  }

  else
  {
    v85 = sub_1006A4F4C();
  }

  v86 = v85;
  v88 = v114;
  v87 = v115;
  v89 = v113;

  v90 = v83 + v86;
  sub_10075E38C();
  sub_10075E37C();
  (*(v88 + 8))(v89, v87);
  sub_10000CF78(v172, v173);
  sub_10076D41C();
  v92 = v91;

  v40 = v90 + v92;
  sub_10000CD74(v172);
  return v40;
}

double sub_10047B894()
{
  v0 = sub_10077164C();
  v116 = *(v0 - 8);
  v117 = v0;
  __chkstk_darwin(v0);
  v115 = &v83 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10075E39C();
  v113 = *(v2 - 8);
  v114 = v2;
  __chkstk_darwin(v2);
  v112 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076749C();
  v110 = *(v4 - 8);
  v111 = v4;
  __chkstk_darwin(v4);
  v109 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1007679DC();
  v119 = *(v6 - 8);
  v120 = v6;
  __chkstk_darwin(v6);
  v85 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10076997C();
  v101 = *(v8 - 8);
  v102 = v8;
  __chkstk_darwin(v8);
  v100 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10076443C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v83 - v15;
  v17 = sub_10076747C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v103 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v125 = &v83 - v21;
  v22 = sub_10000A5D4(&unk_100957F90, qword_1007A9D70);
  __chkstk_darwin(v22 - 8);
  v84 = &v83 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v124 = &v83 - v25;
  swift_getKeyPath();
  sub_10076338C();

  v122 = v162[0];
  v26 = sub_10075EEAC();
  v27 = sub_10076BB6C();
  v91 = v28;
  v92 = v27;
  v29 = sub_10076BBEC();
  v93 = v30;
  v94 = v29;
  if (sub_10076BB0C() && (v31 = sub_10076518C(), , v31))
  {
    v32 = sub_10076C3EC();
    v95 = v33;
    v96 = v32;
  }

  else
  {
    v95 = 0;
    v96 = 0;
  }

  v121 = sub_10076282C();
  (*(v119 + 56))(v124, 1, 1, v120);
  sub_10076286C();
  v34 = [v122 traitCollection];
  if (qword_1009407E8 != -1)
  {
    swift_once();
  }

  v35 = sub_10000A61C(v17, qword_1009A0690);
  v97 = *(v18 + 16);
  v98 = v18 + 16;
  v97(v125, v35, v17);
  v36 = sub_10077071C();
  v123 = v17;
  v104 = v26;
  v105 = v18;
  if (v36)
  {
    if (qword_10093F520 != -1)
    {
      swift_once();
    }

    v37 = qword_100944C88;
  }

  else
  {
    if (qword_10093F528 != -1)
    {
      swift_once();
    }

    v37 = qword_100944CA0;
  }

  v38 = sub_10000A61C(v10, v37);
  (*(v11 + 16))(v13, v38, v10);
  v107 = v11;
  v108 = v10;
  (*(v11 + 32))(v16, v13, v10);
  v39 = [v34 preferredContentSizeCategory];
  sub_10077084C();
  v118 = v34;

  sub_1007643EC();
  v106 = v16;
  sub_10076441C();
  sub_10076746C();
  sub_10076745C();
  v90 = sub_10076DDDC();
  swift_allocObject();
  v99 = sub_10076DDBC();
  v40 = objc_opt_self();
  v88 = v40;
  v41 = [v40 preferredFontForTextStyle:UIFontTextStyleBody];
  v42 = sub_10076C04C();
  v163 = v42;
  v43 = sub_10047CACC(&qword_100943230, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v164 = v43;
  v87 = v43;
  v44 = sub_10000DB7C(v162);
  v45 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v89 = *(*(v42 - 8) + 104);
  v86 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v89(v44, enum case for Feature.measurement_with_labelplaceholder(_:), v42);
  sub_10076C90C();
  sub_10000CD74(v162);
  v46 = v100;
  sub_10076996C();
  sub_10076994C();
  v47 = v102;
  v101 = *(v101 + 8);
  (v101)(v46, v102);
  v48 = [v40 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v161[3] = v42;
  v161[4] = v43;
  v49 = sub_10000DB7C(v161);
  v50 = v45;
  v51 = v89;
  v89(v49, v50, v42);
  sub_10076C90C();
  sub_10000CD74(v161);
  sub_10076996C();
  sub_10076994C();
  v52 = v101;
  (v101)(v46, v47);
  v53 = [v88 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v160[3] = v42;
  v160[4] = v87;
  v54 = sub_10000DB7C(v160);
  v51(v54, v86, v42);
  sub_10076C90C();
  sub_10000CD74(v160);
  sub_10076996C();
  sub_10076994C();
  v52(v46, v47);
  v55 = v121;
  if ((sub_10001D420() & (v55 != 0)) == 1)
  {
    v56 = v90;
    LODWORD(v102) = 1;
    v57 = objc_allocWithZone(sub_10076DEDC());
    v58 = v118;
    v59 = sub_10076DECC();
    v60 = v84;
    sub_10047C764(v124, v84);
    v62 = v119;
    v61 = v120;
    v63 = *(v119 + 48);
    if (v63(v60, 1, v120) == 1)
    {
      v64 = v85;
      _s20ProductPageExtension18MetadataRibbonViewC7metrics11AppStoreKit0deF6LayoutV7MetricsVvpfi_0();
      if (v63(v60, 1, v61) != 1)
      {
        sub_10000CFBC(v60, &unk_100957F90, qword_1007A9D70);
      }
    }

    else
    {
      v64 = v85;
      (*(v62 + 32))(v85, v60, v61);
    }

    v66 = v59;
    sub_10001A588(v55, v64, v66, 0.0, 0.0);

    (*(v62 + 8))(v64, v61);
    swift_allocObject();
    v65 = sub_10076DDAC();
  }

  else
  {
    v56 = v90;
    swift_allocObject();
    v65 = sub_10076DDBC();
  }

  sub_10001D420();
  swift_allocObject();
  v67 = sub_10076DDBC();
  v97(v103, v125, v123);
  v159 = &protocol witness table for LayoutViewPlaceholder;
  v158 = v56;
  v157 = v99;
  v156 = 0;
  *&v154[40] = 0u;
  v155 = 0u;
  sub_10000A570(v162, v154);
  sub_10000A570(v161, &v153);
  v152 = 0;
  v150 = 0u;
  v151 = 0u;
  v149 = 0;
  v147 = 0u;
  v148 = 0u;

  v68 = sub_10076DDCC();
  v146 = &protocol witness table for LayoutViewPlaceholder;
  v145 = v56;
  v144 = v68;
  v143 = 0;
  v141 = 0u;
  v142 = 0u;
  v140 = 0;
  v138 = 0u;
  v139 = 0u;
  v137 = 0;
  v135 = 0u;
  v136 = 0u;
  v134 = 0;
  v133 = 0u;
  *&v132[40] = 0u;
  sub_10000A570(v160, v132);
  v130 = v56;
  v131 = &protocol witness table for LayoutViewPlaceholder;
  v128 = &protocol witness table for LayoutViewPlaceholder;
  v129 = v65;
  v127 = v56;
  v126 = v67;
  v69 = v109;
  sub_10076748C();
  sub_10076DEDC();
  sub_10000A5D4(&unk_100942870, &qword_100784460);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1007841E0;
  v71 = v118;
  *(v70 + 32) = v118;
  v72 = v71;
  v73 = sub_10076DEEC();
  sub_10047CACC(&unk_100958A50, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v74 = v111;
  sub_10076D2AC();
  v76 = v75;

  (*(v110 + 8))(v69, v74);
  sub_10000CD74(v160);
  sub_10000CD74(v161);
  sub_10000CD74(v162);
  (*(v107 + 8))(v106, v108);
  (*(v105 + 8))(v125, v123);
  sub_10000CFBC(v124, &unk_100957F90, qword_1007A9D70);
  v77 = v112;
  sub_10075E38C();
  sub_10075E37C();
  (*(v113 + 8))(v77, v114);
  v78 = v163;
  sub_10000CF78(v162, v163);
  v79 = v115;
  sub_1000FF02C(v78);
  sub_10076D40C();
  v81 = v80;

  swift_unknownObjectRelease();
  (*(v116 + 8))(v79, v117);
  sub_10000CD74(v162);
  return v76 + v81;
}

uint64_t sub_10047C764(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000A5D4(&unk_100957F90, qword_1007A9D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_10047C7D4()
{
  sub_10075EEBC();
  sub_10047CACC(&qword_100942860, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  sub_10076332C();
  if (v5)
  {
    sub_10075EEAC();
    v1 = sub_10076BB5C();

    if (v1)
    {
      if (qword_10093FBE0 != -1)
      {
        swift_once();
      }

      v2 = sub_100763ADC();
      sub_10000A61C(v2, qword_10099DDA0);
      sub_1007639AC();
      sub_10076BFCC();
      sub_10077019C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_10077021C();
      }

      sub_10077025C();
    }

    sub_10075EE9C();
    sub_100630CB4();
    v3 = sub_10012613C();

    swift_unknownObjectRelease();
    sub_1000F92B4(v3);
    v4._rawValue = _swiftEmptyArrayStorage;
    sub_100760BAC(v4);
  }

  return result;
}

uint64_t sub_10047C9B8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20ProductPageExtension28CondensedAppEventContentView_lockupView);
  v2 = OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView;
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension14BaseLockupView_artworkView);
  v9.value.super.isa = 0;
  v9.is_nil = 0;
  sub_10075FCEC(v9, v4);

  v5 = *(v1 + v2);
  sub_10075FD2C();
  sub_10047CACC(&qword_100941820, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v6 = v5;
  sub_100760BFC();

  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_10075FCEC(v10, v7);
  return sub_100760BFC();
}

uint64_t sub_10047CACC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_10047CB18()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10047CB50()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10047CBA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v34[0] = a2;
  v5 = sub_10076D39C();
  __chkstk_darwin(v5 - 8);
  v34[1] = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100765CEC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin(v11).n128_u64[0];
  v14 = (v34 - v13);
  [a1 pageMarginInsets];
  v16 = v15;
  v18 = v17;
  v19 = [a1 traitCollection];
  v20 = sub_1007706EC();

  if (v20)
  {
    *v14 = 1.0;
    (*(v8 + 104))(v14, enum case for BreakoutDetailsLayout.DetailDimension.fraction(_:), v7);
    if (JUScreenClassGetMain() == 1)
    {
      v41 = &type metadata for Double;
      v42 = &protocol witness table for Double;
      v40[0] = 0x407E000000000000;
      v21 = 0x4070400000000000;
    }

    else
    {
      HasRoundedCorners = JUScreenClassHasRoundedCorners();
      v23 = 560.0;
      if (HasRoundedCorners)
      {
        v23 = 610.0;
      }

      v38 = &type metadata for Double;
      v39 = &protocol witness table for Double;
      *&v37 = v23;
      sub_10003F19C(&v37, v40);
      v21 = 0x4075400000000000;
    }
  }

  else
  {
    *(v14 + 3) = &type metadata for CGFloat;
    *(v14 + 4) = &protocol witness table for CGFloat;
    *v14 = a3 - (v16 + v18 + 80.0);
    (*(v8 + 104))(v14, enum case for BreakoutDetailsLayout.DetailDimension.static(_:), v7);
    v21 = 0;
    v41 = &type metadata for Double;
    v42 = &protocol witness table for Double;
    v40[0] = 0x4083100000000000;
  }

  if (qword_1009405A0 != -1)
  {
    swift_once();
  }

  v24 = sub_10000A5D4(&qword_100951F70, &qword_10079AF60);
  sub_10000A61C(v24, qword_100958A60);
  *&v37 = a1;
  swift_unknownObjectRetain();
  sub_10075FDCC();
  swift_unknownObjectRelease();
  (*(v8 + 16))(v10, v14, v7);
  if (qword_1009405B0 != -1)
  {
    swift_once();
  }

  v25 = sub_10076D9AC();
  v26 = sub_10000A61C(v25, qword_10099FB80);
  v38 = v25;
  v39 = &protocol witness table for StaticDimension;
  v27 = sub_10000DB7C(&v37);
  (*(*(v25 - 8) + 16))(v27, v26, v25);
  v36[14] = &protocol witness table for Double;
  v36[13] = &type metadata for Double;
  v36[10] = 0x4071C00000000000;
  v36[9] = &protocol witness table for CGFloat;
  v36[8] = &type metadata for CGFloat;
  v36[5] = 0x4034000000000000;
  if (qword_1009405A8 != -1)
  {
    swift_once();
  }

  v28 = sub_100767EAC();
  v29 = sub_10000A61C(v28, qword_10099FB68);
  v36[3] = v28;
  v36[4] = sub_10047FF5C(&qword_1009622C0, &type metadata accessor for CappedSizeStaticDimension, &protocol conformance descriptor for CappedSizeStaticDimension);
  v30 = sub_10000DB7C(v36);
  (*(*(v28 - 8) + 16))(v30, v29, v28);
  sub_10000A570(v40, &v35);
  if (v20)
  {
    v31 = &protocol witness table for CGFloat;
    v32 = &type metadata for CGFloat;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    v21 = 0;
    v34[3] = 0;
    v34[4] = 0;
  }

  v34[5] = v32;
  v34[6] = v31;
  v34[2] = v21;
  sub_100765ADC();
  sub_10000CD74(v40);
  return (*(v8 + 8))(v14, v7);
}

double sub_10047D108(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer);
  v4 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v5 = *(v3 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  if (a1)
  {
    sub_10047FF5C(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
    v6 = a1;
    v7 = [v6 superview];
    if (v7)
    {
      v8 = v7;
      sub_100016F40(0, &qword_1009441F0, UIView_ptr);
      v9 = v5;
      v10 = sub_100770EEC();

      if (v10)
      {
        [v6 removeFromSuperview];
      }
    }

    else
    {
    }
  }

  v11 = *&v5[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
  *&v5[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = a1;
  v12 = a1;
  sub_100453A30(v11);

  if (*(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
  {
    type metadata accessor for VideoView(0);
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      *(v14 + qword_1009602B8 + 8) = &off_1008965B8;

      swift_unknownObjectWeakAssign();
    }
  }

  return result;
}

double sub_10047D2C4()
{
  v0 = sub_10076D39C();
  __chkstk_darwin(v0);
  __chkstk_darwin(v1);
  v2 = sub_10000A5D4(&qword_100951F70, &qword_10079AF60);
  sub_10000DB18(v2, qword_100958A60);
  sub_10000A61C(v2, qword_100958A60);
  sub_10076D3AC();
  sub_10076D3AC();
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FDEC();
  return result;
}

uint64_t sub_10047D3E4()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100767EAC();
  sub_10000DB18(v4, qword_10099FB68);
  sub_10000A61C(v4, qword_10099FB68);
  if (qword_100941058 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1F00);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v7 = UIContentSizeCategoryExtraExtraExtraLarge;
  return sub_100767E9C();
}

uint64_t sub_10047D580()
{
  v0 = sub_10076D1AC();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10076D9AC();
  sub_10000DB18(v4, qword_10099FB80);
  sub_10000A61C(v4, qword_10099FB80);
  if (qword_100940E58 != -1)
  {
    swift_once();
  }

  v5 = sub_10076D3DC();
  v6 = sub_10000A61C(v5, qword_1009A1900);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000DB7C(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_10076D9BC();
  return (*(v1 + 8))(v3, v0);
}

double sub_10047D758(__n128 a1)
{
  v1 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  v7 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  sub_10000DB18(v7, qword_10099FB98);
  sub_10000A61C(v7, qword_10099FB98);
  if (qword_1009413C8 != -1)
  {
    swift_once();
  }

  v8 = sub_10000A61C(v1, qword_1009A27E0);
  sub_1000A9194(v8, v6, v9);
  if (qword_1009413C0 != -1)
  {
    swift_once();
  }

  v10 = sub_10000A61C(v1, qword_1009A27C8);
  sub_1000A9194(v10, v3, v11);
  sub_10000A5D4(&unk_100943120, &unk_100784C10);
  sub_10075FDEC();
  return result;
}

char *sub_10047D8E8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v103 = sub_10076F9AC();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v11 - 8);
  v97 = &v90 - v12;
  v105 = sub_10076771C();
  v13 = *(v105 - 8);
  __chkstk_darwin(v105);
  v98 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v107 = &v90 - v16;
  v99 = sub_10076D3DC();
  v106 = *(v99 - 8);
  __chkstk_darwin(v99);
  v104 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  v18 = *(v96 - 1);
  __chkstk_darwin(v96);
  v20 = &v90 - v19;
  v21 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_tapGestureRecognizer;
  *(v4 + v21) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v22 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v4 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = type metadata accessor for MediaView();
  v24 = objc_allocWithZone(v23);
  *&v24[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v24[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v24[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v24[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v24[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0;
  v25 = type metadata accessor for UberContentContainer();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v26[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v27 = &v26[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  *v27 = 0;
  v27[8] = 1;
  v28 = &v26[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v28[32] = 1;
  *&v26[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = 0;
  v114.receiver = v26;
  v114.super_class = v25;
  v29 = objc_msgSendSuper2(&v114, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v30 = v29;
  if (*&v29[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    [v29 addSubview:?];
  }

  v31 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer;
  *&v24[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = v30;
  v113.receiver = v24;
  v113.super_class = v23;
  v32 = objc_msgSendSuper2(&v113, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v32 setClipsToBounds:1];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  *(v5 + v31) = v32;
  v33 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_artworkView;
  sub_10075FD2C();
  *(v5 + v33) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v34 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_detailsView;
  if (qword_1009405B8 != -1)
  {
    swift_once();
  }

  v35 = v96;
  v36 = sub_10000A61C(v96, qword_10099FB98);
  (*(v18 + 16))(v20, v36, v35);
  v37 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v5 + v34) = sub_1006389FC(v20);
  v95 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView;
  v96 = v5;
  if (qword_100941058 != -1)
  {
    swift_once();
  }

  v38 = v99;
  v39 = sub_10000A61C(v99, qword_1009A1F00);
  v40 = v106;
  v41 = *(v106 + 16);
  v42 = v104;
  v41(v104, v39, v38);
  v93 = v41;
  v91 = UIContentSizeCategoryExtraExtraExtraLarge;
  v43 = enum case for DirectionalTextAlignment.none(_:);
  v94 = v13;
  v44 = *(v13 + 104);
  v45 = v105;
  v44(v107, enum case for DirectionalTextAlignment.none(_:), v105);
  v92 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel(0));
  *&v92[qword_10095A0D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v46 = v97;
  v41(v97, v42, v38);
  v47 = v45;
  v48 = *(v40 + 56);
  v48(v46, 0, 1, v38);
  v49 = v98;
  v44(v98, v43, v47);
  v50 = v91;
  v51 = sub_1007626AC();
  v52 = v104;
  v93(v46, v104, v38);
  v48(v46, 0, 1, v38);
  v53 = v51;
  sub_1007625DC();
  sub_1007625BC();
  [v53 setNumberOfLines:0];
  v54 = v94;
  v55 = v107;
  v56 = v105;
  (*(v94 + 16))(v49, v107, v105);
  sub_10076262C();

  (*(v54 + 8))(v55, v56);
  (*(v106 + 8))(v52, v38);
  v57 = v96;
  *(v96 + v95) = v53;
  v58 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsTextAlignment;
  v59 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v60 = sub_100761D8C();
  (*(*(v60 - 8) + 104))(&v57[v58], v59, v60);
  v61 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_offerButton;
  v62 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v57[v61] = sub_1001E89B8(0);
  *&v57[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_pageTraits] = 0;
  v57[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_isBackgroundEffectViewHidden] = 1;
  v112.receiver = v57;
  v112.super_class = ObjectType;
  v63 = objc_msgSendSuper2(&v112, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v67 = v63;
  [v67 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  sub_100016F40(0, &qword_100942F10, UIColor_ptr);
  v68 = sub_100770D5C();
  [v67 setBackgroundColor:v68];

  v69 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView;
  v70 = *&v67[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView];
  sub_10076266C();

  v71 = [*&v67[v69] layer];
  [v71 setCompositingFilter:kCAFilterPlusL];

  v72 = *&v67[v69];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v73 = v72;
  v74 = v101;
  sub_10076F95C();
  sub_1000258C0(&v108);
  sub_1000258C0(&v110);
  sub_100770B9C();

  v75 = *(v102 + 8);
  v76 = v103;
  v75(v74, v103);
  v77 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_detailsView;
  v78 = *&v67[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_detailsView];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v79 = v78;
  sub_10076F95C();
  sub_1000258C0(&v108);
  sub_1000258C0(&v110);
  sub_100770B9C();

  v75(v74, v76);
  v80 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_artworkView;
  v81 = *&v67[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_artworkView];
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v82 = v81;
  sub_10076F95C();
  sub_1000258C0(&v108);
  sub_1000258C0(&v110);
  sub_100770B9C();

  v75(v74, v76);
  [v67 addSubview:*&v67[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer]];
  [v67 addSubview:*&v67[v77]];
  [v67 addSubview:*&v67[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_offerButton]];
  [v67 addSubview:*&v67[v69]];
  v83 = *&v67[v80];
  sub_10075FBEC();

  v84 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_tapGestureRecognizer;
  v85 = *&v67[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_tapGestureRecognizer];
  v86 = v67;
  [v85 addTarget:v86 action:"didTapVideo"];
  v87 = *&v67[v84];
  [v87 setDelegate:v86];

  [v86 addGestureRecognizer:*&v67[v84]];
  v88 = [v86 layer];

  [v88 setAllowsGroupBlending:0];
  return v86;
}

double (*sub_10047E57C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer);
  a1[1] = v1;
  a1[2] = v3;
  v4 = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  a1[3] = OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer;
  v5 = *(*(v3 + v4) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
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
  return sub_10047E61C;
}

double sub_10047E61C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(a1 + 16) + *(a1 + 24));
  if (a2)
  {
    if (v3)
    {
      sub_10047FF5C(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      v5 = v3;
      v6 = [v5 superview];
      if (v6)
      {
        v7 = v6;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v8 = v4;
        v9 = sub_100770EEC();

        if (v9)
        {
          [v5 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
    v18 = v3;
    sub_100453A30(v17);

    if (*(*(v16 + v15) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
    {
      type metadata accessor for VideoView(0);
      v19 = swift_dynamicCastClass();
      if (v19)
      {
        *(v19 + qword_1009602B8 + 8) = &off_1008965B8;
        swift_unknownObjectWeakAssign();
      }
    }

    v20 = *a1;
  }

  else
  {
    if (v3)
    {
      sub_10047FF5C(&qword_100942810, type metadata accessor for VideoView, &unk_1007AF120);
      v10 = v3;
      v11 = [v10 superview];
      if (v11)
      {
        v12 = v11;
        sub_100016F40(0, &qword_1009441F0, UIView_ptr);
        v13 = v4;
        v14 = sub_100770EEC();

        if (v14)
        {
          [v10 removeFromSuperview];
        }
      }

      else
      {
      }
    }

    v23 = *(a1 + 16);
    v22 = *(a1 + 24);
    v24 = *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents];
    *&v4[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = v3;
    v25 = v3;
    sub_100453A30(v24);

    if (*(*(v23 + v22) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
    {
      type metadata accessor for VideoView(0);
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        *(v26 + qword_1009602B8 + 8) = &off_1008965B8;

        swift_unknownObjectWeakAssign();
      }
    }
  }

  return result;
}

double sub_10047E948(double a1, double a2)
{
  v4 = sub_100765AEC();
  __chkstk_darwin(v4 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100765B0C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v2 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_pageTraits))
  {
    return 0.0;
  }

  v11 = swift_unknownObjectRetain();
  sub_10047CBA8(v11, v6, a1);
  v12 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer);
  v23[19] = type metadata accessor for MediaView();
  v23[20] = &protocol witness table for UIView;
  v23[16] = v12;
  v13 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_detailsView);
  v23[14] = type metadata accessor for BreakoutDetailsView(0);
  v23[15] = &protocol witness table for UIView;
  v23[11] = v13;
  v14 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_offerButton);
  v23[9] = type metadata accessor for OfferButton();
  v23[10] = &protocol witness table for UIView;
  v23[6] = v14;
  v15 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView);
  v23[4] = type metadata accessor for CappedSizeDynamicTypeLabel(0);
  v23[5] = &protocol witness table for UILabel;
  v23[1] = v15;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  sub_100765AFC();
  sub_100765ABC();
  v21 = v20;
  swift_unknownObjectRelease();
  (*(v8 + 8))(v10, v7);
  return v21;
}

id sub_10047EBD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10076D1FC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100765AEC();
  __chkstk_darwin(v7 - 8);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100765B0C();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60.receiver = v1;
  v60.super_class = ObjectType;
  result = objc_msgSendSuper2(&v60, "layoutSubviews", v12);
  v16 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_pageTraits];
  if (v16)
  {
    v46 = v11;
    v47 = v10;
    swift_unknownObjectRetain();
    [v1 bounds];
    sub_10047CBA8(v16, v9, v17);
    v44[0] = v3;
    v18 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer];
    v19 = type metadata accessor for MediaView();
    v44[1] = ObjectType;
    v58 = v19;
    v59 = &protocol witness table for UIView;
    v57 = v18;
    v20 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_detailsView];
    v55 = type metadata accessor for BreakoutDetailsView(0);
    v56 = &protocol witness table for UIView;
    v54 = v20;
    v21 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_offerButton];
    v52 = type metadata accessor for OfferButton();
    v53 = &protocol witness table for UIView;
    v51 = v21;
    v22 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView];
    v49 = type metadata accessor for CappedSizeDynamicTypeLabel(0);
    v50 = &protocol witness table for UILabel;
    v48 = v22;
    v45 = v18;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    sub_100765AFC();
    [v1 bounds];
    sub_100765ACC();
    (*(v4 + 8))(v6, v44[0]);
    v26 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_backgroundEffectView];
    [v1 bounds];
    MaxY = CGRectGetMaxY(v61);
    [v23 frame];
    MinY = CGRectGetMinY(v62);
    v29 = &v26[OBJC_IVAR____TtC20ProductPageExtension28BreakoutBackgroundEffectView_bottomGradientHeight];
    *v29 = MaxY - MinY;
    *(v29 + 8) = 0;
    [v1 bounds];
    [v26 setFrame:?];
    sub_10076422C();
    if (v31 >= v30)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }

    if (v32 <= 31.0)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v32 * 0.5;
    }

    [v23 frame];
    v34 = CGRectGetMinY(v63) + -34.0;
    v35 = 30.0;
    if (v32 <= 60.0)
    {
      v35 = v33;
    }

    v36 = v34 - v35;
    sub_10076422C();
    MidY = CGRectGetMidY(v64);
    v38 = *&v45[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer];
    v39 = &v38[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
    if (v36 >= MidY)
    {
      v43 = v39[8];
      *v39 = 0;
      v39[8] = 1;
      v41 = v47;
      v42 = v46;
      if (v43)
      {
LABEL_16:
        swift_unknownObjectRelease();
        return (*(v42 + 8))(v14, v41);
      }
    }

    else
    {
      MidY = *v39;
      v40 = v39[8];
      *v39 = v36;
      v39[8] = 0;
      v41 = v47;
      v42 = v46;
      if ((v40 & 1) == 0 && v36 == MidY)
      {
        goto LABEL_16;
      }
    }

    [v38 setNeedsLayout];
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_10047F094()
{
  v1 = *(*(*&v0[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer] + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (v1)
  {
    type metadata accessor for VideoView(0);
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = v1;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = 0;
  v16 = sub_100480A60;
  v17 = v6;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_10009AEDC;
  v15 = &unk_1008966C0;
  v7 = _Block_copy(&v12);

  v8 = v0;

  v9 = swift_allocObject();
  *(v9 + 16) = sub_100480A38;
  *(v9 + 24) = v4;
  v16 = sub_1001F12BC;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000513F0;
  v15 = &unk_100896710;
  v10 = _Block_copy(&v12);

  [v5 animateWithDuration:4 delay:v7 options:v10 animations:0.3 completion:0.0];
  _Block_release(v10);
  _Block_release(v7);
}

void sub_10047F2CC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + qword_1009602F8);
    if (v3)
    {
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_10032E034;
      aBlock[5] = v4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005F04D8;
      aBlock[3] = &unk_100896760;
      v5 = _Block_copy(aBlock);
      v6 = v3;

      [v6 enterFullScreenAnimated:1 completionHandler:v5];

      _Block_release(v5);
      v2 = v6;
    }
  }
}

id sub_10047F444(uint64_t a1, double a2)
{
  [*(a1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_backgroundEffectView) setAlpha:?];
  [*(a1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_detailsView) setAlpha:a2];
  [*(a1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_offerButton) setAlpha:a2];
  v4 = *(a1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView);

  return [v4 setAlpha:a2];
}

void sub_10047F4DC()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = 0x3FF0000000000000;
  v11 = sub_10047FF38;
  v12 = v2;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_10009AEDC;
  v10 = &unk_1008965F8;
  v3 = _Block_copy(&v7);
  v4 = v0;

  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v11 = sub_1001F1278;
  v12 = v5;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_1000513F0;
  v10 = &unk_100896648;
  v6 = _Block_copy(&v7);

  [v1 animateWithDuration:4 delay:v3 options:v6 animations:0.3 completion:0.0];
  _Block_release(v6);
  _Block_release(v3);
}

uint64_t type metadata accessor for UpsellBreakoutView(uint64_t a1)
{
  result = qword_100958AD0;
  if (!qword_100958AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10047F98C(uint64_t a1)
{
  result = sub_100761D8C();
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

uint64_t sub_10047FA48()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
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

uint64_t (*sub_10047FABC(uint64_t **a1))()
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
  v2[4] = sub_10047E57C(v2);
  return sub_100019A4C;
}

void sub_10047FB2C()
{
  if (*(*(*(v0 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer) + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
  {
    type metadata accessor for VideoView(0);
    v1 = swift_dynamicCastClass();
    if (v1)
    {
      v2 = *(v1 + qword_1009602F8);
      if (v2)
      {

        [v2 setShowsPlaybackControls:1];
      }
    }
  }
}

uint64_t sub_10047FBC8()
{
  ObjectType = swift_getObjectType();
  v1 = sub_10047FF5C(&unk_100958AF0, type metadata accessor for UpsellBreakoutView, &unk_1007A5970);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_10047FC3C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10047FF5C(&unk_100958AF0, type metadata accessor for UpsellBreakoutView, &unk_1007A5970);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_10047FCC8(uint64_t *a1))()
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
  sub_10047FF5C(&unk_100958AF0, type metadata accessor for UpsellBreakoutView, &unk_1007A5970);
  *(v3 + 32) = sub_10076483C();
  return sub_10001D41C;
}

uint64_t sub_10047FD84(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(v1 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer);
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v6 = v5;
  v7 = sub_100770EEC();

  return v7 & 1;
}

uint64_t sub_10047FF00()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10047FF44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10047FF5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_10047FFA4()
{
  v1 = v0;
  v2 = sub_10000A5D4(&unk_100943250, &unk_1007841D0);
  __chkstk_darwin(v2 - 8);
  v59 = &v52 - v3;
  v58 = sub_10076771C();
  v4 = *(v58 - 8);
  __chkstk_darwin(v58);
  v60 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v52 - v7;
  v61 = sub_10076D3DC();
  v64 = *(v61 - 8);
  __chkstk_darwin(v61);
  v63 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10000A5D4(&unk_1009467F0, &qword_100796460);
  v57 = *(v62 - 8);
  __chkstk_darwin(v62);
  v10 = &v52 - v9;
  v11 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_tapGestureRecognizer;
  *(v1 + v11) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_backgroundEffectView;
  type metadata accessor for BreakoutBackgroundEffectView();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = type metadata accessor for MediaView();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionView] = 0;
  *&v14[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionAmount] = 0;
  v14[OBJC_IVAR____TtC20ProductPageExtension9MediaView_isRubberbanding] = 0;
  *&v14[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionScale] = 0x3FF0000000000000;
  *&v14[OBJC_IVAR____TtC20ProductPageExtension9MediaView_reflectionOffset] = 0;
  v15 = type metadata accessor for UberContentContainer();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents] = 0;
  *&v16[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_parallaxY] = 0;
  v17 = &v16[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_prominentPlayButtonCenterYOverride];
  *v17 = 0;
  v17[8] = 1;
  v18 = &v16[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_systemBackgroundExtensionOutsets];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v18[32] = 1;
  *&v16[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView] = 0;
  v67.receiver = v16;
  v67.super_class = v15;
  v19 = objc_msgSendSuper2(&v67, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v20 = v19;
  if (*&v19[OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_backgroundExtensionView])
  {
    [v19 addSubview:?];
  }

  v21 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer;
  *&v14[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] = v20;
  v66.receiver = v14;
  v66.super_class = v13;
  v22 = objc_msgSendSuper2(&v66, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v22 setClipsToBounds:1];
  [v22 addSubview:*&v22[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer]];

  *(v1 + v21) = v22;
  v23 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_artworkView;
  sub_10075FD2C();
  *(v1 + v23) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v24 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_detailsView;
  if (qword_1009405B8 != -1)
  {
    swift_once();
  }

  v25 = v62;
  v26 = sub_10000A61C(v62, qword_10099FB98);
  (*(v57 + 16))(v10, v26, v25);
  v27 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  v28 = sub_1006389FC(v10);
  v62 = v1;
  *(v1 + v24) = v28;
  v57 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsView;
  if (qword_100941058 != -1)
  {
    swift_once();
  }

  v29 = v61;
  v30 = sub_10000A61C(v61, qword_1009A1F00);
  v31 = v63;
  v32 = v64;
  v33 = *(v64 + 16);
  v33(v63, v30, v29);
  v55 = v33;
  v52 = UIContentSizeCategoryExtraExtraExtraLarge;
  v34 = enum case for DirectionalTextAlignment.none(_:);
  v56 = v4;
  v35 = *(v4 + 104);
  v36 = v58;
  v35(v65, enum case for DirectionalTextAlignment.none(_:), v58);
  v54 = objc_allocWithZone(type metadata accessor for CappedSizeDynamicTypeLabel(0));
  *&v54[qword_10095A0D0] = UIContentSizeCategoryExtraExtraExtraLarge;
  v37 = v59;
  v33(v59, v31, v29);
  v38 = v36;
  v53 = *(v32 + 56);
  v53(v37, 0, 1, v29);
  v39 = v60;
  v35(v60, v34, v38);
  v40 = v52;
  v41 = sub_1007626AC();
  v42 = v63;
  v55(v37, v63, v29);
  v53(v37, 0, 1, v29);
  v43 = v41;
  sub_1007625DC();
  sub_1007625BC();
  [v43 setNumberOfLines:0];
  v44 = v56;
  v45 = v65;
  (*(v56 + 16))(v39, v65, v38);
  sub_10076262C();

  (*(v44 + 8))(v45, v38);
  (*(v64 + 8))(v42, v29);
  v46 = v62;
  *(v62 + v57) = v43;
  v47 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_buttonDetailsTextAlignment;
  v48 = enum case for BreakoutDetails.TextAlignment.leading(_:);
  v49 = sub_100761D8C();
  (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
  v50 = OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_offerButton;
  v51 = objc_allocWithZone(type metadata accessor for OfferButton());
  *(v46 + v50) = sub_1001E89B8(0);
  *(v46 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_pageTraits) = 0;
  *(v46 + OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_isBackgroundEffectViewHidden) = 1;
  sub_10077156C();
  __break(1u);
}

uint64_t sub_100480764(void *a1)
{
  [a1 locationInView:v1];
  v4 = *&v1[OBJC_IVAR____TtC20ProductPageExtension18UpsellBreakoutView_mediaViewContainer];
  if (!*(*&v4[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents))
  {
    return 0;
  }

  v5 = v2;
  v6 = v3;
  type metadata accessor for VideoView(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    return 0;
  }

  v8 = &selRef_initWithTabBarSystemItem_tag_;
  [v7 frame];
  v26.x = v5;
  v26.y = v6;
  if (!CGRectContainsPoint(v28, v26))
  {
    return 0;
  }

  v9 = [v1 subviews];
  sub_100016F40(0, &qword_1009441F0, UIView_ptr);
  v10 = sub_1007701BC();

  if (v10 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_10077158C())
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = sub_10077149C();
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (([v13 isHidden] & 1) == 0 && (objc_msgSend(v14, "isUserInteractionEnabled") & 1) != 0 && (objc_msgSend(v14, v8[134]), v27.x = v5, v27.y = v6, CGRectContainsPoint(v29, v27)))
      {
        v16 = v4;
        v17 = v4;
        v18 = sub_100770EEC();

        v4 = v16;
        v8 = &selRef_initWithTabBarSystemItem_tag_;
        if ((v18 & 1) == 0)
        {

          return 0;
        }
      }

      else
      {
      }

      ++v12;
      if (v15 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  v19 = *(*&v4[OBJC_IVAR____TtC20ProductPageExtension9MediaView_contentContainer] + OBJC_IVAR____TtC20ProductPageExtensionP33_FB55F4AFA9572A544272989A93E5CCC820UberContentContainer_contents);
  if (!v19)
  {
    return 0;
  }

  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    return 0;
  }

  v21 = *(v20 + qword_1009602F0);
  if (!v21)
  {
    return 0;
  }

  v22 = v19;
  v23 = v21;
  v24 = sub_1007605AC();

  return v24 & 1;
}

uint64_t sub_100480A00()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

char *sub_100480A74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958E08, &qword_1007A5A90);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076A57C();
  v48[4] = sub_100492FA4(&qword_100958E10, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958E18, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958E20, &qword_100958E08, &qword_1007A5A90);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786200);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100481468(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958DD8, &unk_1007A5A80);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_1007695CC();
  v48[4] = sub_100492FA4(&unk_100958DE0, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958DF0, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958DF8, &qword_100958DD8, &unk_1007A5A80);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786200);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100481E5C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958E48, &qword_1007A5AA0);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076B11C();
  v48[4] = sub_100492FA4(&qword_100958E50, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958E58, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958E60, &qword_100958E48, &qword_1007A5AA0);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786200);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100482850(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958E68, &qword_1007A5AA8);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_100768CAC();
  v48[4] = sub_100492FA4(&qword_100958E70, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958E78, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958E80, &qword_100958E68, &qword_1007A5AA8);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786200);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100483244(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958E88, &unk_1007A5AB0);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076AB5C();
  v48[4] = sub_100492FA4(&qword_100958E90, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958E98, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&unk_100958EA0, &qword_100958E88, &unk_1007A5AB0);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786200);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100483C38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958F78, &qword_1007A5AF8);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076940C();
  v48[4] = sub_100492FA4(&qword_100958F80, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958F88, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958F90, &qword_100958F78, &qword_1007A5AF8);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786200);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_10048462C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v49 = a2;
  v46 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958EB0, &qword_1007A5AC0);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v50[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v46;
  *(v3 + qword_10099E360) = v46;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v50[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v50[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v48 = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];
  (*(ObjectType + 792))();

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v50[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v50[0];
  sub_100764F6C();

  v50[3] = sub_100768B9C();
  v50[4] = sub_100492FA4(&qword_100958EB8, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v50[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v50, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958EC0, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958EC8, &qword_100958EB0, &qword_1007A5AC0);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786200);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100485040(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958ED8, &qword_1007A5AC8);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076921C();
  v48[4] = sub_100492FA4(&unk_100958EE0, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&unk_100947220, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958EF0, &qword_100958ED8, &qword_1007A5AC8);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786200);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100485A34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958EF8, &qword_1007A5AD0);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076966C();
  v48[4] = sub_100492FA4(&qword_100958F00, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958F08, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958F10, &qword_100958EF8, &qword_1007A5AD0);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786200);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100486428(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958F18, &qword_1007A5AD8);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_1007678BC();
  v48[4] = sub_100492FA4(&qword_100958F20, &type metadata accessor for MSODiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958F28, &type metadata accessor for MSODiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&unk_100958F30, &qword_100958F18, &qword_1007A5AD8);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786200);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100486E1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958E28, &qword_1007A5A98);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076A24C();
  v48[4] = sub_100492FA4(&qword_100958E30, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958E38, &type metadata accessor for SearchFocusDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958E40, &qword_100958E28, &qword_1007A5A98);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786200);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100487810(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958FB8, &qword_1007A5B08);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076A60C();
  v48[4] = sub_100492FA4(&qword_100958FC0, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958FC8, &type metadata accessor for SearchResultsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&unk_100958FD0, &qword_100958FB8, &qword_1007A5B08);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786200);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

char *sub_100488204(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46[2] = a2;
  v47 = a1;
  v4 = sub_10076F1BC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_1009503A0) = 0x409F400000000000;
  v8 = qword_1009503A8;
  sub_10076B33C();
  swift_allocObject();
  *(v2 + v8) = sub_10076B32C();
  v9 = qword_1009503B0;
  type metadata accessor for ExpandableCellScrollOffsetCollectionElementsObserver(0);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC20ProductPageExtension52ExpandableCellScrollOffsetCollectionElementsObserver_expandingIndexPath;
  v12 = sub_10075E11C();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  *(v3 + v9) = v10;
  v13 = qword_1009503B8;
  type metadata accessor for TodayCardCollectionElementsObserver(0);
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_selectedItemLayoutContext;
  v16 = sub_10076341C();
  (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
  swift_unknownObjectWeakInit();
  *(v14 + OBJC_IVAR____TtC20ProductPageExtension35TodayCardCollectionElementsObserver_isMotionEnabled) = 1;
  *(v14 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v3 + v13) = v14;
  *(v3 + qword_1009503C0) = 0;
  *(v3 + qword_1009503C8) = 0;
  sub_10076B14C();
  *(v3 + qword_10099E368) = 0;
  *(v3 + qword_10099E380) = 0;
  *(v3 + qword_1009503D0) = 0;
  *(v3 + qword_1009503D8) = 0;
  *(v3 + qword_10099E388) = 0;
  v17 = qword_10099E390;
  v18 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v17) = sub_10076669C();
  v19 = qword_10099E398;
  sub_10000A5D4(&qword_100958F98, &qword_1007A5B00);
  swift_allocObject();
  *(v3 + v19) = sub_10076687C();
  *(v3 + qword_10099E3A0) = 1;
  *(v3 + qword_1009503E8) = 0;
  *(v3 + qword_10099E3A8) = 0;
  v20 = qword_10099E3B0;
  sub_10076562C();
  swift_allocObject();
  *(v3 + v20) = sub_10076561C();
  type metadata accessor for InteractiveSectionBackgroundScrollObserverStore();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000FC008(_swiftEmptyArrayStorage);
  v48[0] = v21;
  sub_10076F19C();
  v22 = sub_10076F60C();
  (*(v5 + 8))(v7, v4);
  v23 = v47;
  *(v3 + qword_10099E360) = v47;

  sub_10076848C();
  sub_10076614C();

  sub_100760C4C();
  sub_10076F5CC();
  *(v3 + qword_10099E370) = v48[0];
  sub_1007698FC();
  sub_10076F5CC();
  *(v3 + qword_10099E378) = v48[0];
  sub_10076615C();
  sub_10076F63C();
  sub_10076813C();
  swift_allocObject();
  *(v3 + qword_1009503E0) = sub_10076814C();
  v24 = [objc_allocWithZone(UICollectionViewLayout) init];
  v46[1] = v22;

  v25 = sub_10007689C(v24, v22);

  v26 = v25;

  v27 = v26;
  v28 = [v27 traitCollection];

  swift_allocObject();
  *&v27[qword_10099E398] = sub_10076687C();

  sub_100767D5C();
  sub_10076F64C();

  sub_10076FC1C();

  v29 = v48[0];
  sub_100767D2C();

  sub_100764FAC();

  sub_10076FC1C();

  v30 = v48[0];
  sub_100764F6C();

  v48[3] = sub_10076A26C();
  v48[4] = sub_100492FA4(&qword_100958FA0, &type metadata accessor for TopChartDiffableSegmentPresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
  v48[0] = v23;
  v31 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();

  sub_1004924A0(v48, &v27[v31]);
  swift_endAccess();
  sub_100492FA4(&qword_100958FA8, &type metadata accessor for TopChartDiffableSegmentPresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

  sub_1007657EC();

  v32 = qword_10099E390;
  v33 = *&v27[qword_10099E390];

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v34 = *&v27[v32];

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v35 = *&v27[v32];
  sub_1004925B0(&qword_100958FB0, &qword_100958F98, &qword_1007A5B00);
  v36 = v35;

  sub_10076668C();

  v37 = *&v27[v32];

  sub_10076668C();

  v38 = *&v27[v32];
  v39 = qword_1009503B8;
  sub_100492FA4(&qword_100958E00, type metadata accessor for TodayCardCollectionElementsObserver, &unk_100786200);
  v40 = v38;

  sub_10076668C();

  v41 = *&v27[qword_10099E378];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v42 = v27;
  v43 = v41;

  sub_1007698DC();

  v44 = *&v27[v39];

  *(v44 + 24) = &off_10088FE50;
  swift_unknownObjectWeakAssign();

  return v42;
}

uint64_t sub_100488BF8@<X0>(uint64_t a2@<X1>, char *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v10 = sub_10075E11C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v40 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v18 = Strong;
  v19 = [Strong collectionView];

  if (!v19)
  {
    goto LABEL_10;
  }

  v20 = [v19 indexPathForItemAtPoint:{a5, a6}];
  if (!v20)
  {

    goto LABEL_10;
  }

  v21 = v20;
  sub_10075E06C();

  isa = sub_10075E02C().super.isa;
  v23 = [v19 cellForItemAtIndexPath:isa];

  v25 = sub_100489010(v16, a2, v24);
  if (!v23 || (swift_getObjectType(), !swift_conformsToProtocol2()))
  {

    v30 = *(v11 + 32);
    v30(v13, v16, v10);
    v30(a4, v13, v10);
    v31 = type metadata accessor for PreviewItem(0);
    v32 = v31;
    *&a4[*(v31 + 20)] = v23;
LABEL_20:
    *&a4[*(v31 + 24)] = v25;
    return (*(*(v31 - 8) + 56))(a4, 0, 1, v32);
  }

  v26 = v19;
  v27 = sub_10048A854(v26, v23, a5, a6);
  v29 = v28;

  if (v29)
  {
    (*(v11 + 8))(v16, v10);

LABEL_10:
    v33 = type metadata accessor for PreviewItem(0);
    return (*(*(v33 - 8) + 56))(a4, 1, 1, v33);
  }

  sub_10000A5D4(&qword_100952110, qword_100790770);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100784500;
  *(v35 + 32) = sub_10075E0AC();
  *(v35 + 40) = v27;
  sub_10075E01C();
  v36 = OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons;
  v37 = *&v23[OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons];
  if (!(v37 >> 62))
  {
    result = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v27 < result)
    {
      goto LABEL_13;
    }

LABEL_18:

    v39 = 0;
    goto LABEL_19;
  }

  result = sub_10077158C();
  if (v27 >= result)
  {
    goto LABEL_18;
  }

LABEL_13:
  v38 = *&v23[v36];
  if ((v38 & 0xC000000000000001) != 0)
  {

    v39 = sub_10077149C();

    goto LABEL_19;
  }

  if (v27 < 0)
  {
    __break(1u);
  }

  else if (v27 < *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = *(v38 + 8 * v27 + 32);

LABEL_19:
    (*(v11 + 8))(v16, v10);
    v31 = type metadata accessor for PreviewItem(0);
    v32 = v31;
    *&a4[*(v31 + 20)] = v39;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

id sub_100489010(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = sub_1007621EC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v32 - v9;
  v11 = sub_10000A5D4(&unk_100952090, &unk_100784CD0);
  __chkstk_darwin(v11 - 8);
  v13 = &v32 - v12;
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  result = 0;
  if (!v14 || !a2)
  {
    return result;
  }

  v35 = v7;
  v16 = v4;
  v37 = v5;
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v36 = ObjectType;
  sub_100761B0C();
  v18 = sub_10076182C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_10000CFBC(v13, &unk_100952090, &unk_100784CD0);
  }

  else
  {
    v20 = sub_10076180C();
    (*(v19 + 8))(v13, v18);
    if (v20)
    {
      if (qword_10093FBC0 != -1)
      {
        swift_once();
      }

      v21 = qword_10099DD30;
      swift_unknownObjectRelease();
      return v21;
    }
  }

  sub_100761A2C();
  v22 = v37;
  v23 = *(v37 + 88);
  v24 = v23(v10, v16);
  v25 = enum case for ShelfBackground.color(_:);
  if (v24 == enum case for ShelfBackground.color(_:))
  {
    swift_unknownObjectRelease();
    (*(v22 + 96))(v10, v16);
    v26 = *v10;
    v27 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
    v28 = sub_1007659CC();
    (*(*(v28 - 8) + 8))(&v10[v27], v28);
    return v26;
  }

  v33 = *(v22 + 8);
  v34 = v22 + 8;
  v33(v10, v16);
  sub_10075E0AC();
  v29 = v35;
  sub_100761A6C();
  swift_unknownObjectRelease();
  if (v23(v29, v16) == v25)
  {
    (*(v22 + 96))(v29, v16);
    v26 = *v29;
    v30 = *(sub_10000A5D4(&unk_100950670, qword_100791450) + 48);
    v31 = sub_1007659CC();
    (*(*(v31 - 8) + 8))(&v29[v30], v31);
    return v26;
  }

  v33(v29, v16);
  return 0;
}

BOOL sub_1004894E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_100492FA4(a4, a5, a6);
  }

  while ((sub_10076FF1C() & 1) == 0);
  return v10 != v11;
}

char *sub_1004895EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + qword_10094E0C0) = 0x409F400000000000;
  v7 = qword_10094E0D8;
  v8 = objc_allocWithZone(sub_1007666AC());
  *(v3 + v7) = sub_10076669C();
  *(v3 + qword_10094E0E8) = 1;
  *(v3 + qword_10094E0F8) = 0;
  *(v3 + qword_10094E100) = 0;
  *(v3 + qword_10094E0C8) = a1;
  *(v3 + qword_10094E0D0) = a2;
  sub_10000A5D4(&qword_100958F48, &qword_1007A5AE0);
  swift_allocObject();
  swift_retain_n();

  *(v3 + qword_10094E0E0) = sub_10076687C();
  sub_10076615C();
  sub_10076F63C();
  if (v26[0])
  {

    sub_10076614C();
  }

  *(a2 + 112) = v26[0];

  sub_10076813C();
  swift_allocObject();

  *(v3 + qword_10094E0F0) = sub_10076814C();
  v9 = [objc_allocWithZone(UICollectionViewLayout) init];

  v10 = sub_100617358(v9, a3);
  swift_unknownObjectWeakAssign();
  v26[3] = sub_10076573C();
  v26[4] = &protocol witness table for BasePresenter;
  v26[0] = a1;
  v11 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  v12 = v10;

  v13 = v12;
  sub_1004924A0(v26, v10 + v11);
  swift_endAccess();
  sub_100492FA4(&qword_100958F50, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);

  sub_1007657EC();

  v14 = sub_10000A5D4(&qword_100958F58, &unk_1007A5AE8);

  v15 = sub_10048AD64(v13, a1, a3, v14);
  v16 = *&v13[qword_10094E0F8];
  *&v13[qword_10094E0F8] = v15;

  v17 = qword_10094E0D8;
  v18 = *&v13[qword_10094E0D8];
  sub_100767D5C();
  sub_10076F64C();
  v19 = v18;

  sub_10076FC1C();

  sub_10076911C();
  swift_allocObject();
  sub_10076912C();
  sub_10076668C();

  v20 = *&v13[v17];
  sub_100764FAC();
  v21 = v20;

  sub_10076FC1C();

  sub_100766B3C();
  swift_allocObject();
  sub_100766B4C();
  sub_10076668C();

  v22 = *&v13[v17];
  sub_1004925B0(&qword_100958F60, &qword_100958F48, &qword_1007A5AE0);
  v23 = v22;

  sub_10076668C();

  v24 = *&v13[v17];

  sub_10076668C();

  return v13;
}

char *sub_100489B30(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_100943200, &unk_100785840);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_objectGraph;
    v9 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
    v10 = v7;

    sub_10076F5AC();

    v11 = *(v9 - 8);
    if ((*(v11 + 48))(v5, 1, v9) == 1)
    {

      return sub_10000CFBC(v5, &unk_100943200, &unk_100785840);
    }

    else
    {
      v12 = *&v7[v8];

      sub_100263BF0(a1, 1, v12, v5);

      return (*(v11 + 8))(v5, v9);
    }
  }

  return result;
}

uint64_t sub_100489D00(uint64_t a1)
{
  v3 = objc_allocWithZone(sub_1007666AC());
  *(v1 + 32) = sub_10076669C();
  *(v1 + 40) = &protocol witness table for CompoundScrollObserver;
  swift_unknownObjectWeakInit();
  *(v1 + 56) = sub_1000FCAE8(_swiftEmptyArrayStorage);
  *(v1 + 64) = sub_1000FCCC4(_swiftEmptyArrayStorage);
  *(v1 + 72) = sub_1000FCCD8(_swiftEmptyArrayStorage);
  *(v1 + 80) = 0;
  *(v1 + 88) = xmmword_1007A59C0;
  *(v1 + 104) = 0xC020000000000000;
  *(v1 + 112) = 0;
  *(v1 + 16) = a1;
  sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
  swift_allocObject();
  *(v1 + 24) = sub_10076F9DC();
  return v1;
}

void sub_100489DEC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong presentingViewController];

    if (v3)
    {
      [v3 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

void sub_10048A0AC(void *a1, char a2)
{
  if (a1)
  {
    v3 = [a1 presentingViewController];
    if (v3)
    {
      v4 = v3;
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = a2 & 1;
      *(v6 + 24) = v5;
      v8[4] = sub_10049263C;
      v8[5] = v6;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_10009AEDC;
      v8[3] = &unk_100896A30;
      v7 = _Block_copy(v8);

      [v4 dismissViewControllerAnimated:1 completion:v7];
      _Block_release(v7);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10048A1D4(char a1, uint64_t a2)
{
  v3 = sub_10000A5D4(&unk_100958FE0, qword_1007A5B10);
  v29 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = v26 - v4;
  v6 = sub_10000A5D4(&unk_1009428E0, &unk_100784140);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v26 - v7;
  v9 = sub_10076F4FC();
  __chkstk_darwin(v9 - 8);
  v10 = sub_10076253C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      sub_10076C02C();
      v16 = sub_1004C0060(0x6E65537473616F54, 0xE900000000000074, 90.0, 90.0);
      v27 = v3;
      v17 = v16;
      v31._object = 0x80000001007E93E0;
      v31._countAndFlagsBits = 0xD000000000000012;
      v33._countAndFlagsBits = 0;
      v33._object = 0xE000000000000000;
      v18 = sub_1007622EC(v31, v33);
      v26[2] = v19;
      v26[3] = v18;
      v32._countAndFlagsBits = 0xD000000000000018;
      v32._object = 0x80000001007E9400;
      v34._countAndFlagsBits = 0;
      v34._object = 0xE000000000000000;
      sub_1007622EC(v32, v34);
      v26[1] = v20;
      (*(v11 + 104))(v13, enum case for AlertActionStyle.toast(_:), v10);
      v26[4] = v17;

      sub_10076F4DC();
      v21 = sub_10075FAAC();
      swift_allocObject();
      v22 = sub_10075FA7C();
      sub_10076F64C();

      sub_10076FC1C();

      v30[3] = v21;
      v30[4] = sub_100492FA4(&qword_10094F070, &type metadata accessor for AlertAction, &protocol conformance descriptor for Action);
      v30[0] = v22;
      v23 = v29;
      v24 = v27;
      (*(v29 + 104))(v5, enum case for ActionDispatcher.MetricsBehavior.notProcessed<A>(_:), v27);

      sub_10076F6CC();

      (*(v23 + 8))(v5, v24);
      (*(v28 + 8))(v8, v6);
      sub_10000CD74(v30);
      v25 = *&v15[OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF121ComposeReviewDelegate_selfReference];
      *&v15[OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF121ComposeReviewDelegate_selfReference] = 0;
    }
  }
}

id sub_10048A748(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10048A854(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *(a2 + OBJC_IVAR____TtC20ProductPageExtension41PersonalizationFeedbackCollectionViewCell_feedbackButtons);
  if (v7 >> 62)
  {
LABEL_16:
    v8 = sub_10077158C();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = sub_10077149C();
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    [v11 convertPoint:a1 fromCoordinateSpace:{a3, a4}];
    v13 = [v12 pointInside:0 withEvent:?];

    v9 = v10 + 1;
    if (v13)
    {
      v14 = v10;
      goto LABEL_13;
    }
  }

  v14 = 0;
LABEL_13:

  return v14;
}

char *sub_10048A998(uint64_t a1, uint64_t a2)
{
  v3 = sub_10076F68C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v16 - v8;
  sub_100764F2C();
  swift_allocObject();
  v10 = sub_100764F1C();
  sub_100767A8C();
  sub_10000A5D4(&qword_10094F420, &qword_1007982E0);
  sub_10076F1BC();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100784500;
  (*(v4 + 16))(v6, v9, v3);
  sub_10076F19C();
  sub_100765FDC();
  swift_allocObject();
  v16[1] = sub_100765FCC();
  sub_10076F19C();
  v12 = sub_1006C7080(a2, 0, 0, v11, 0x686372616573, 0xE600000000000000);

  v13 = objc_allocWithZone(type metadata accessor for SearchViewController(0));
  v14 = sub_1002741EC(v10, v12);

  (*(v4 + 8))(v9, v3);
  return v14;
}

id sub_10048AC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100492FA4(&unk_100958F68, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  v9 = sub_10000A5D4(&qword_100958F58, &unk_1007A5AE8);
  v10 = objc_allocWithZone(v9);
  v11 = &v10[qword_10094A6C8];
  *&v10[qword_10094A6C8 + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v12 = &v10[qword_10094A6C0];
  *v12 = a3;
  *(v12 + 1) = a4;
  *(v11 + 1) = v8;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectWeakAssign();
  *&v10[qword_10094A6D8] = a5;
  v14.receiver = v10;
  v14.super_class = v9;
  return objc_msgSendSuper2(&v14, "init");
}

id sub_10048AD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100492FA4(&unk_100958F68, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BaseShelfPresenter);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a2;
  v10[4] = v8;
  v10[5] = a4;

  v12 = sub_10048AC28(v11, a1, sub_1004925A4, v10, a3);

  return v12;
}

id sub_10048AE60(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  ObjectType = swift_getObjectType();
  v27[3] = a5(0);
  v27[4] = sub_100492FA4(a6, a7, a8);
  v27[0] = a1;
  *&a4[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_overflowTransitioning] = 0;
  if (sub_10041329C())
  {
    v18 = v17;
    *&a4[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_objectGraph] = a3;
    sub_10000A5D4(&unk_1009520B0, &qword_100790A00);
    swift_allocObject();

    *&a4[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_stateStore] = sub_10076F9DC();
    sub_10000A570(v27, &a4[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_model]);
    v19 = [objc_allocWithZone(UIScrollView) init];
    *&a4[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_scrollView] = v19;
    v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v21 = &a4[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_componentView];
    *v21 = v20;
    *(v21 + 1) = v18;
    sub_100760C4C();
    sub_10076F64C();
    sub_10076FC1C();
    *&a4[OBJC_IVAR____TtC20ProductPageExtension35ComponentViewOverflowViewController_artworkLoader] = v26;
    v25.receiver = a4;
    v25.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
    v23 = sub_10076B5BC();
    (*(*(v23 - 8) + 8))(a2, v23);
    sub_10000CD74(v27);
    return v22;
  }

  else
  {
    result = sub_10077156C();
    __break(1u);
  }

  return result;
}

char *sub_10048B0C0(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v617 = a8;
  v643 = a6;
  v644 = a5;
  v658 = a4;
  v657 = a3;
  v618 = a2;
  v662 = a1;
  v9 = sub_10000A5D4(&qword_10094A288, &unk_10078D460);
  __chkstk_darwin(v9 - 8);
  v616 = &v567 - v10;
  v11 = sub_10000A5D4(&unk_100958C30, &unk_1007A5A40);
  __chkstk_darwin(v11 - 8);
  v614 = &v567 - v12;
  v609 = sub_10076CB5C();
  v608 = *(v609 - 8);
  __chkstk_darwin(v609);
  v610 = &v567 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v613 = sub_10075E11C();
  v612 = *(v613 - 8);
  __chkstk_darwin(v613);
  v611 = &v567 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v640 = sub_10076B5BC();
  v639 = *(v640 - 8);
  __chkstk_darwin(v640);
  v642 = &v567 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000A5D4(&qword_1009499B0, &qword_10078C590);
  __chkstk_darwin(v16 - 8);
  v607 = &v567 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v615 = &v567 - v19;
  v646 = sub_100762D3C();
  v645 = *(v646 - 8);
  __chkstk_darwin(v646);
  v621 = &v567 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v641 = &v567 - v22;
  v579 = sub_10075D86C();
  v578 = *(v579 - 8);
  __chkstk_darwin(v579);
  v570 = &v567 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v576 = sub_10075F93C();
  v575 = *(v576 - 8);
  __chkstk_darwin(v576);
  v574 = &v567 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v577 = sub_10075D7DC();
  v580 = *(v577 - 8);
  __chkstk_darwin(v577);
  v571 = &v567 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v619 = &v567 - v27;
  v28 = sub_10000A5D4(&qword_100958C40, &unk_1007A5A50);
  __chkstk_darwin(v28 - 8);
  v620 = &v567 - v29;
  v603 = sub_10075EBAC();
  v602 = *(v603 - 8);
  __chkstk_darwin(v603);
  v605 = &v567 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v632 = sub_10076B96C();
  v631 = *(v632 - 8);
  __chkstk_darwin(v632);
  v630 = &v567 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v628 = sub_10076593C();
  v627 = *(v628 - 8);
  __chkstk_darwin(v628);
  v604 = &v567 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v568 = sub_10076FBBC();
  __chkstk_darwin(v568);
  v569 = &v567 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v626 = sub_10076F1BC();
  v650 = *(v626 - 8);
  __chkstk_darwin(v626);
  v625 = &v567 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v601 = sub_100762FAC();
  v600 = *(v601 - 8);
  __chkstk_darwin(v601);
  v589 = &v567 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v637 = &v567 - v37;
  v598 = sub_1007615AC();
  v597 = *(v598 - 8);
  __chkstk_darwin(v598);
  v587 = &v567 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v596 = &v567 - v40;
  v41 = sub_10000A5D4(&unk_1009435D0, &qword_100785850);
  __chkstk_darwin(v41 - 8);
  v586 = &v567 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v592 = &v567 - v44;
  __chkstk_darwin(v45);
  v573 = &v567 - v46;
  __chkstk_darwin(v47);
  v585 = &v567 - v48;
  __chkstk_darwin(v49);
  v606 = &v567 - v50;
  __chkstk_darwin(v51);
  v653 = &v567 - v52;
  __chkstk_darwin(v53);
  v654 = &v567 - v54;
  v591 = sub_10075F65C();
  v590 = *(v591 - 8);
  __chkstk_darwin(v591);
  v584 = &v567 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v588 = &v567 - v57;
  v58 = sub_10000A5D4(&unk_100958150, &unk_100786630);
  __chkstk_darwin(v58 - 8);
  v638 = &v567 - v59;
  v595 = sub_10076950C();
  v594 = *(v595 - 8);
  __chkstk_darwin(v595);
  v599 = &v567 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v636 = sub_10076127C();
  v635 = *(v636 - 8);
  __chkstk_darwin(v636);
  v634 = &v567 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v659 = sub_10075DB7C();
  v656 = *(v659 - 8);
  __chkstk_darwin(v659);
  v622 = &v567 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v63);
  v629 = &v567 - v64;
  __chkstk_darwin(v65);
  v572 = &v567 - v66;
  __chkstk_darwin(v67);
  v652 = &v567 - v68;
  __chkstk_darwin(v69);
  v655 = &v567 - v70;
  __chkstk_darwin(v71);
  v593 = &v567 - v72;
  __chkstk_darwin(v73);
  v648 = &v567 - v74;
  v661 = type metadata accessor for FlowDestination(0);
  __chkstk_darwin(v661);
  v76 = (&v567 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = sub_10076F2EC();
  __chkstk_darwin(v77 - 8);
  v78 = sub_10076F68C();
  v669 = *(v78 - 8);
  __chkstk_darwin(v78);
  v581 = &v567 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v80);
  v583 = &v567 - v81;
  __chkstk_darwin(v82);
  v84 = &v567 - v83;
  v85 = sub_100016F40(0, &qword_100944EF0, ACAccountStore_ptr);
  sub_10076F64C();
  v624 = v85;
  sub_10076FC1C();
  v663 = v682[0];
  v649 = sub_10000A5D4(&unk_10094A8C0, &qword_100784A40);
  sub_10076FC1C();
  v664 = v682[0];
  v647 = v682[1];
  sub_100767E8C();
  sub_10076FC1C();
  v665 = v682[0];
  v633 = sub_10076148C();
  sub_10076FC1C();
  v670 = v682[0];
  sub_10076A46C();
  sub_10076FC1C();
  v666 = v682[0];
  v672 = v84;
  v668 = v78;
  sub_10076FC1C();
  sub_10076904C();
  sub_10076F63C();
  v667 = v682[0];
  v623 = sub_10000A5D4(&qword_100958C48, &qword_1007A5A60);
  sub_10076FC1C();
  v86 = sub_10076097C();
  v660 = a7;
  v582 = v86;
  sub_10076FC1C();
  v671 = v679;
  if (qword_1009412E8 != -1)
  {
    swift_once();
  }

  v87 = sub_10076FD4C();
  sub_10000A61C(v87, qword_1009A2600);
  sub_10000A5D4(&unk_100942A60, &unk_100784760);
  sub_10076F33C();
  v88 = swift_allocObject();
  v651 = xmmword_100783DD0;
  *(v88 + 16) = xmmword_100783DD0;
  sub_10076F2DC();
  v683._countAndFlagsBits = 0xD000000000000049;
  v683._object = 0x80000001007E9070;
  sub_10076F2CC(v683);
  v89 = v662;
  v90 = sub_10012A5D8();
  *(&v680 + 1) = &type metadata for String;
  *&v679 = v90;
  *(&v679 + 1) = v91;
  sub_10076F29C();
  sub_10000CFBC(&v679, &unk_1009434C0, &qword_100783F60);
  v684._countAndFlagsBits = 0;
  v684._object = 0xE000000000000000;
  sub_10076F2CC(v684);
  sub_10076F2FC();
  sub_10076FBCC();

  sub_10005C684(v89, v76, v92);
  v94 = v76;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v297 = *(sub_10000A5D4(&qword_1009499F8, &unk_10078C7F0) + 48);
      v298 = v656;
      v299 = v655;
      v285 = v659;
      (*(v656 + 32))(v655, v76, v659);
      v300 = v590;
      v301 = v588;
      v302 = v591;
      (*(v590 + 32))(v588, v76 + v297, v591);
      (*(v298 + 16))(v652, v299, v285);
      v303 = v584;
      (*(v300 + 104))(v584, enum case for FlowOrigin.external(_:), v302);
      sub_10075F64C();
      v662 = *(v300 + 8);
      v662(v303, v302);
      sub_100016E2C(v644, v638, &unk_100958150, &unk_100786630);
      sub_10076577C();
      swift_allocObject();
      v304 = v660;

      v305 = sub_10076575C();

      sub_100760CBC();
      v306 = sub_100492FA4(&unk_100958DC0, &type metadata accessor for LoadingPagePresenter, &protocol conformance descriptor for BasePresenter);

      v307 = sub_1006C7080(v304, v305, v306, _swiftEmptyArrayStorage, 0x50676E6964616F6CLL, 0xEB00000000656761);

      v308 = objc_allocWithZone(type metadata accessor for LoadingPageViewController());
      v105 = sub_10069F048(v305, v307);

      swift_unknownObjectRelease();

      v662(v301, v302);
      v290 = *(v298 + 8);
      v291 = v655;
      goto LABEL_44;
    case 2u:
      v271 = v656;
      v272 = v655;
      v273 = v76;
      v274 = v659;
      (*(v656 + 32))(v655, v273, v659);
      v275 = v652;
      (*(v271 + 16))(v652, v272, v274);
      v276 = sub_1006C7080(v660, 0, 0, _swiftEmptyArrayStorage, 0x77656956626577, 0xE700000000000000);
      v277 = objc_allocWithZone(type metadata accessor for WebViewController());
      v105 = sub_1006ED2DC(v275, v276);

      swift_unknownObjectRelease();

      (*(v271 + 8))(v272, v274);
      goto LABEL_87;
    case 3u:
      v282 = *(v76 + *(sub_10000A5D4(&unk_100958DB0, &qword_10078C5A0) + 48));
      v283 = v656;
      v284 = v655;
      v285 = v659;
      (*(v656 + 32))(v655, v76, v659);
      v286 = v652;
      (*(v283 + 16))(v652, v284, v285);
      v287 = v658;

      v288 = sub_1006C7080(v660, 0, 0, _swiftEmptyArrayStorage, 0x5063696D616E7964, 0xEB00000000656761);
      v289 = objc_allocWithZone(type metadata accessor for DynamicViewController());
      v105 = sub_1000673C8(v286, v282, v657, v287, v288);

      swift_unknownObjectRelease();

      v290 = *(v283 + 8);
      v291 = v284;
LABEL_44:
      v309 = v285;
      goto LABEL_50;
    case 4u:
      sub_10005C6E8(v76, v93);
      v211 = v672;
      v105 = sub_10048A998(v672, v660);

      swift_unknownObjectRelease();

      sub_10000CD74(v682);
      (*(v669 + 8))(v211, v668);
      return v105;
    case 5u:

      v346 = sub_10000A5D4(&qword_100958DA0, &unk_10078C7E0);
      v347 = v654;
      sub_100023AD0(v76 + *(v346 + 48), v654, &unk_1009435D0, &qword_100785850);
      sub_100016E2C(v347, v653, &unk_1009435D0, &qword_100785850);
      sub_10076B11C();
      swift_allocObject();
      v348 = v660;

      v349 = sub_10076B10C();
      v350 = sub_100492FA4(&qword_100958DA8, &type metadata accessor for SearchChartsAndCategoriesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
      v351 = sub_1006C7080(v348, v349, v350, _swiftEmptyArrayStorage, 0xD00000000000001DLL, 0x80000001007E9370);
      v352 = objc_allocWithZone(type metadata accessor for SearchChartsAndCategoriesDiffablePageViewController(0));

      v353 = sub_100481E5C(v349, v351);
      v353[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = 1;
      v105 = v353;
      v354 = [v105 navigationItem];
      [v354 setLargeTitleDisplayMode:3];

      swift_unknownObjectRelease();

      goto LABEL_53;
    case 6u:
      v370 = *v76;
      v371 = sub_1006C7080(v660, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000013, 0x80000001007E9350);
      v372 = objc_allocWithZone(type metadata accessor for GalleryViewController());
      v126 = sub_100659738(v370, v371);
      goto LABEL_84;
    case 7u:
      sub_10000A5D4(&qword_1009499F0, &qword_10078C5A8);

      v292 = v656;
      v293 = v655;
      v294 = v659;
      (*(v656 + 32))(v655, v94, v659);
      v105 = sub_10068D3AC(v293, v295, v296);

      swift_unknownObjectRelease();

      (*(v292 + 8))(v293, v294);
      goto LABEL_87;
    case 8u:
      v390 = v76 + *(sub_10000A5D4(&unk_100964150, &qword_1007869C0) + 48);
      v391 = v654;
      sub_100023AD0(v390, v654, &unk_1009435D0, &qword_100785850);
      sub_100016E2C(v391, v653, &unk_1009435D0, &qword_100785850);
      sub_10076940C();
      swift_allocObject();

      v392 = v660;

      v393 = sub_1007693FC();

      sub_1007684BC();
      v394 = sub_100492FA4(&qword_100958C70, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v395 = sub_1006C7080(v392, v393, v394, _swiftEmptyArrayStorage, 0x50636972656E6567, 0xEB00000000656761);

      v396 = objc_allocWithZone(type metadata accessor for GenericDiffablePageViewController(0));
      v105 = sub_1006CBE2C(v393, v395);

      swift_unknownObjectRelease();

      v123 = v391;
      goto LABEL_60;
    case 9u:
      v225 = sub_10000A5D4(&qword_1009499E8, &unk_10078C7D0);
      v226 = v654;
      sub_100023AD0(v76 + *(v225 + 48), v654, &unk_1009435D0, &qword_100785850);
      sub_100016E2C(v226, v653, &unk_1009435D0, &qword_100785850);
      sub_100769D9C();
      swift_allocObject();

      v227 = v660;

      v228 = sub_100769CFC();
      v229 = sub_100492FA4(&qword_100958D40, &type metadata accessor for TopChartsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v230 = sub_1006C7080(v227, v228, v229, _swiftEmptyArrayStorage, 0x7472616843706F74, 0xED00006567615073);

      v231 = objc_allocWithZone(type metadata accessor for TopChartsDiffablePageViewController());
      v105 = sub_1006F5D5C(v228, v230);

      swift_unknownObjectRelease();

      v123 = v226;
      goto LABEL_60;
    case 0xAu:
      v378 = *v76;
      v379 = v76[1];
      v380 = sub_10000A5D4(&qword_100958CB0, &qword_100786A88);
      v381 = v645;
      v382 = v641;
      v383 = v646;
      (*(v645 + 32))(v641, v94 + *(v380 + 64), v646);
      v384 = v621;
      (*(v381 + 16))(v621, v382, v383);
      v385 = (*(v381 + 88))(v384, v383);
      if (v385 == enum case for ShareSheetAction.ShareSheetStyle.expanded(_:))
      {
        v386 = 0;
        v387 = v669;
        v388 = v668;
        v389 = v666;
      }

      else
      {
        v387 = v669;
        v388 = v668;
        v389 = v666;
        if (v385 != enum case for ShareSheetAction.ShareSheetStyle.collapsed(_:))
        {
          (*(v645 + 8))(v621, v646);
        }

        v386 = 1;
      }

      v509 = sub_1006C7080(v660, 0, 0, _swiftEmptyArrayStorage, 0x6568536572616873, 0xEA00000000007465);
      v510 = objc_allocWithZone(type metadata accessor for ActivityViewController());
      v105 = sub_1000521F0(v378, v379, v386, v509);

      swift_unknownObjectRelease();

      (*(v645 + 8))(v641, v646);
      sub_10000CD74(v682);
      (*(v387 + 8))(v672, v388);
      return v105;
    case 0xBu:
      v198 = *v76;
      v199 = v76[1];
      v200 = v76[2];
      v201 = v76[3];
      sub_100016F40(0, &qword_100958CA8, off_1008769A8);
      v202 = sub_1006C7080(v660, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000001007E9200);
      v203 = v198;
      v204 = v199;
      v205 = v200;
      v206 = v201;
      v207 = 0;
      goto LABEL_28;
    case 0xCu:
      v221 = *v76;
      v222 = v76[1];
      v223 = v76[2];
      v224 = v76[3];
      sub_100016F40(0, &qword_100958CA8, off_1008769A8);
      v202 = sub_1006C7080(v660, 0, 0, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x80000001007E91E0);
      v203 = v221;
      v204 = v222;
      v205 = v223;
      v206 = v224;
      v207 = 1;
LABEL_28:
      v126 = sub_100560310(v203, v204, v205, v206, v207, v202);
      goto LABEL_84;
    case 0xDu:
      v360 = sub_10000A5D4(&qword_1009499D0, &unk_10078C7C0);
      v361 = v597;
      v362 = v596;
      v363 = v598;
      (*(v597 + 32))(v596, v76 + *(v360 + 48), v598);
      v364 = v665;
      sub_10076125C();
      (*(v361 + 16))(v587, v362, v363);
      sub_100768CAC();
      swift_allocObject();

      v365 = v660;

      v366 = sub_100768C4C();

      sub_1007684BC();
      v367 = sub_100492FA4(&unk_100958D90, &type metadata accessor for ArcadeDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v368 = sub_1006C7080(v365, v366, v367, _swiftEmptyArrayStorage, 0x6150656461637261, 0xEA00000000006567);

      v369 = objc_allocWithZone(type metadata accessor for ArcadeDiffablePageViewController(0));
      v105 = sub_100097300(v366, v368);

      swift_unknownObjectRelease();

      (*(v361 + 8))(v362, v363);
      goto LABEL_87;
    case 0xEu:
      v179 = *(v76 + *(sub_10000A5D4(&qword_1009499C8, qword_10078C800) + 64));
      v180 = v654;
      sub_100023AD0(v76, v654, &unk_1009435D0, &qword_100785850);
      sub_100016E2C(v180, v653, &unk_1009435D0, &qword_100785850);
      sub_1007676AC();
      swift_allocObject();

      v181 = v660;

      v182 = v665;
      v183 = sub_10076766C();

      sub_100760CBC();
      v184 = sub_100492FA4(&unk_100958D70, &type metadata accessor for ArcadeSubscribePresenter, &protocol conformance descriptor for BasePresenter);

      v185 = sub_1006C7080(v181, v183, v184, _swiftEmptyArrayStorage, 0xD000000000000013, 0x80000001007E9310);

      v186 = objc_allocWithZone(type metadata accessor for ArcadeSubscribeViewController());
      sub_10034DB40(v183, v179, v185);
      v105 = v187;

      swift_unknownObjectRelease();

      goto LABEL_77;
    case 0xFu:
      v278 = *v76;
      v279 = v658;

      v280 = sub_1006C7080(v660, 0, 0, _swiftEmptyArrayStorage, 0x6E6974656B72616DLL, 0xED00006D65744967);
      v281 = objc_allocWithZone(type metadata accessor for MarketingItemViewController());
      v126 = sub_10001E428(v278, v657, v279, v280);
      goto LABEL_84;
    case 0x10u:

      v153 = sub_10000A5D4(&qword_1009499C0, &qword_10078C598);
      v154 = v656;
      v155 = v76 + *(v153 + 48);
      v156 = v655;
      v157 = v659;
      (*(v656 + 32))(v655, v155, v659);
      sub_100764F2C();
      swift_allocObject();
      sub_100764F1C();
      v158 = v583;
      sub_100767A8C();
      (*(v154 + 16))(v652, v156, v157);
      v159 = v669;
      v160 = v668;
      (*(v669 + 16))(v581, v158, v668);
      sub_10076AB5C();
      swift_allocObject();
      v161 = v660;

      v162 = sub_10076AABC();
      v163 = sub_100492FA4(&unk_100958D80, &type metadata accessor for ArcadeSeeAllGamesDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);
      sub_10000A5D4(&qword_10094F420, &qword_1007982E0);
      v164 = swift_allocObject();
      *(v164 + 16) = v651;

      sub_10076F1AC();
      v165 = sub_1006C7080(v161, v162, v163, v164, 0xD000000000000015, 0x80000001007E9330);

      v166 = objc_allocWithZone(type metadata accessor for ArcadeSeeAllGamesDiffablePageViewController(0));
      v105 = sub_1006C8164(v162, v165, v167);

      swift_unknownObjectRelease();

      v168 = *(v159 + 8);
      v168(v158, v160);
      (*(v154 + 8))(v655, v659);
      sub_10000CD74(v682);
      v168(v672, v160);
      return v105;
    case 0x11u:
      v315 = sub_10000A5D4(&qword_1009499B8, &unk_10078C7B0);
      v316 = *(v315 + 64);
      v317 = v600;
      v318 = v637;
      v319 = v601;
      (*(v600 + 32))(v637, v76 + *(v315 + 48), v601);
      v320 = v656;
      v321 = v655;
      v322 = v659;
      (*(v656 + 32))(v655, v76 + v316, v659);
      (*(v317 + 16))(v589, v318, v319);
      (*(v320 + 16))(v652, v321, v322);
      sub_1007686AC();
      swift_allocObject();

      v323 = v660;

      v324 = sub_10076868C();
      v325 = sub_100492FA4(&unk_100958D60, &type metadata accessor for ArcadeWelcomePagePresenter, &protocol conformance descriptor for BasePresenter);

      v326 = sub_1006C7080(v323, v324, v325, _swiftEmptyArrayStorage, 0xD000000000000011, 0x80000001007E92F0);

      v327 = objc_allocWithZone(type metadata accessor for ArcadeWelcomeViewController());
      v105 = sub_1000ACBB0(v324, v326);

      swift_unknownObjectRelease();

      (*(v320 + 8))(v321, v322);
      (*(v317 + 8))(v637, v319);
      goto LABEL_87;
    case 0x12u:
      sub_10076ADAC();
      swift_allocObject();
      v373 = v660;

      v374 = sub_10076AD5C();
      v375 = sub_100492FA4(&unk_100958D50, &type metadata accessor for ArcadeDownloadPackCategoriesPagePresenter, &protocol conformance descriptor for BasePresenter);

      v376 = sub_1006C7080(v373, v374, v375, _swiftEmptyArrayStorage, 0xD000000000000020, 0x80000001007E92C0);

      v377 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackCategoriesViewController());
      v126 = sub_1005B5620(v374, v376);
      goto LABEL_84;
    case 0x13u:

      swift_unknownObjectRelease();

      sub_10000CD74(v682);
      (*(v669 + 8))(v672, v668);
      return *v76;
    case 0x14u:
      v328 = v656;
      (*(v656 + 32))(v655, v76, v659);
      v329 = v660;
      sub_10076FC1C();
      v330 = sub_10076129C();

      v331 = v635;
      v332 = v634;
      v333 = v636;
      (*(v635 + 104))(v634, enum case for ASKBagContract.AdPlacementBagValue.today(_:), v636);
      LODWORD(v661) = sub_1004894E4(v332, v330, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_100958ED0, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &protocol conformance descriptor for ASKBagContract.AdPlacementBagValue);

      (*(v331 + 8))(v332, v333);
      v334 = type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
      v335 = swift_allocObject();
      sub_10076CCCC();
      *(v335 + 16) = sub_10076CCBC();
      *(&v680 + 1) = v334;
      v336 = sub_100492FA4(&unk_100958CF0, type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter, &unk_10078D9A0);
      v681 = v336;
      *&v679 = v335;
      sub_10076A14C();
      swift_allocObject();

      v337 = sub_10076A12C();
      v662 = v337;
      sub_10000A5D4(&qword_10094F420, &qword_1007982E0);
      v338 = swift_allocObject();
      *(v338 + 16) = v651;
      *&v679 = v337;
      sub_10076F1AC();
      sub_100768AFC();
      sub_10076FC1C();
      v339 = v654;
      v340 = v659;
      (*(v328 + 16))(v654, v655, v659);
      (*(v328 + 56))(v339, 0, 1, v340);
      *(&v680 + 1) = v334;
      v681 = v336;
      *&v679 = v335;
      sub_100768B9C();
      swift_allocObject();

      v341 = v663;

      v342 = sub_100768B2C();

      sub_1007684BC();
      v343 = sub_100492FA4(&qword_100958D00, &type metadata accessor for TodayDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v344 = sub_1006C7080(v329, v342, v343, v338, 0x6761507961646F74, 0xE900000000000065);

      v345 = objc_allocWithZone(type metadata accessor for TodayDiffablePageViewController(0));
      v105 = sub_1002DAF10(v342, v344);

      swift_unknownObjectRelease();

      v290 = *(v328 + 8);
      v291 = v655;
      v309 = v659;
LABEL_50:
      v290(v291, v309);
      goto LABEL_87;
    case 0x15u:
      v355 = sub_10000A5D4(&qword_100958CE0, &unk_100786A90);
      v347 = v654;
      sub_100023AD0(v76 + *(v355 + 48), v654, &unk_1009435D0, &qword_100785850);
      sub_100016E2C(v347, v653, &unk_1009435D0, &qword_100785850);
      sub_10076921C();
      swift_allocObject();

      v356 = v660;

      v357 = sub_10076918C();

      sub_1007684BC();

      v358 = sub_100492FA4(&qword_100958CE8, &type metadata accessor for ArticleDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v359 = sub_1006C7080(v356, v357, v358, _swiftEmptyArrayStorage, 0x50656C6369747261, 0xEB00000000656761);

      v105 = sub_1000B7F44(v357, v359, v617 & 1);

      swift_unknownObjectRelease();

LABEL_53:

      v123 = v347;
      goto LABEL_60;
    case 0x16u:
      v423 = *v76;
      sub_10076FC1C();
      v424 = v679;
      v425 = sub_1007612DC();
      if (v423)
      {
        v662 = v424;
        sub_10000A5D4(&unk_100942870, &qword_100784460);
        v426 = swift_allocObject();
        *(v426 + 1) = xmmword_1007841E0;
        v426[4] = v423;
        v427 = v423;
LABEL_106:
        v659 = v423;
        v658 = v427;
        v524 = v660;
        sub_10076FC1C();
        sub_10000A5D4(&qword_100958D18, &unk_1007A5A70);
        v677[0] = v426;
        v525 = v625;
        sub_10076F19C();
        sub_10076F60C();
        v526 = *(v650 + 8);
        v527 = v626;
        v526(v525, v626);
        type metadata accessor for ASDPurchaseHistoryContext(0);
        v677[0] = 1;
        sub_10076F19C();
        sub_10076F60C();

        v526(v525, v527);
        LOBYTE(v677[0]) = 1;
        sub_10076F19C();
        v528 = sub_10076F60C();
        v661 = v528;

        v526(v525, v527);
        v529 = sub_10000DD38(v528);
        v657 = v530;
        sub_10076FC1C();
        v531 = v677[0];
        sub_10000A570(&v679, v677);
        sub_10000A5D4(&qword_100958D08, &qword_1007A5A68);
        v532 = v627;
        v533 = *(v627 + 72);
        v534 = (*(v627 + 80) + 32) & ~*(v627 + 80);
        v535 = swift_allocObject();
        *(v535 + 16) = xmmword_100784500;
        v536 = v535 + v534;
        v537 = *(v532 + 104);
        v538 = v628;
        v537(v536, enum case for PurchasesContentMode.all(_:), v628);
        v537(v536 + v533, enum case for PurchasesContentMode.notOnDevice(_:), v538);
        sub_10076830C();
        swift_allocObject();

        v539 = v658;
        v540 = v531;
        swift_unknownObjectRetain();
        v541 = v657;
        v542 = sub_10076825C();
        v543 = sub_100492FA4(&qword_100958D10, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for BasePresenter);
        sub_10000A5D4(&qword_10094F420, &qword_1007982E0);
        v544 = swift_allocObject();
        *(v544 + 16) = v651;
        v677[0] = v529;
        v677[1] = v541;

        sub_10076F1AC();
        v545 = sub_1006C7080(v524, v542, v543, v544, 0x6573616863727570, 0xED00006567615073);

        v546 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
        sub_1004346FC(v542, v545);
        v105 = v547;

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_10000CD74(&v679);
        goto LABEL_87;
      }

      if ((v425 & 1) == 0)
      {
        v662 = v424;
        v427 = 0;
        v426 = _swiftEmptyArrayStorage;
        goto LABEL_106;
      }

      v519 = v660;
      sub_10076FC1C();
      sub_10076456C();
      swift_allocObject();

      v520 = sub_10076454C();
      v521 = sub_100492FA4(&unk_100958D20, &type metadata accessor for PurchasesPresenter, &protocol conformance descriptor for BasePresenter);
      v522 = sub_1006C7080(v519, v520, v521, _swiftEmptyArrayStorage, 0xD000000000000014, 0x80000001007E9280);
      v523 = objc_allocWithZone(type metadata accessor for PurchasesLoadingViewController());
      v105 = sub_100566648(v520, v522);

      swift_unknownObjectRelease();

LABEL_65:

LABEL_86:

      goto LABEL_87;
    case 0x17u:
      v442 = *v76;
      v443 = v76[1];
      v444 = v76[2];
      v445 = sub_1006C7080(v660, 0, 0, _swiftEmptyArrayStorage, 0x6761506775626564, 0xE900000000000065);
      v446 = objc_allocWithZone(type metadata accessor for DebugMenuViewController());
      v126 = sub_1006BD4F0(v445, v442, v443, v444);
      goto LABEL_84;
    case 0x18u:
      sub_10000A5D4(&qword_100958CD0, &unk_10078C7A0);
      v262 = v656;
      v263 = v655;
      v264 = v659;
      (*(v656 + 32))(v655, v76, v659);
      v265 = v660;
      sub_10076FC1C();
      (*(v262 + 16))(v652, v263, v264);
      sub_10075E9AC();
      swift_allocObject();

      swift_unknownObjectRetain();

      v266 = sub_10075E96C();
      v267 = sub_100492FA4(&qword_100958CD8, &type metadata accessor for InAppPurchaseInstallPagePresenter, &protocol conformance descriptor for BasePresenter);

      v268 = sub_1006C7080(v265, v266, v267, _swiftEmptyArrayStorage, 0xD000000000000018, 0x80000001007E9240);

      v269 = objc_allocWithZone(type metadata accessor for InAppPurchaseInstallPageViewController(0));
      sub_1000D40E4(v266, v268);
      v105 = v270;

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      (*(v262 + 8))(v263, v264);
      goto LABEL_87;
    case 0x19u:
      v232 = *(sub_10000A5D4(&unk_100958CC0, &unk_10078DBB0) + 48);
      v233 = v656;
      v234 = *(v656 + 32);
      v235 = v629;
      v236 = v76;
      v237 = v659;
      (v234)(v629, v236, v659);
      (*(v631 + 32))(v630, v94 + v232, v632);
      sub_10076FC1C();
      v238 = v622;
      (*(v233 + 16))(v622, v235, v237);
      swift_getObjectType();
      sub_10075EE2C();
      swift_getObjectType();
      v239 = v605;
      sub_10075ED1C();
      v240 = v602;
      v241 = v603;
      if ((*(v602 + 88))(v239, v603) != enum case for LegacyAppState.openable(_:))
      {
        (*(v240 + 8))(v239, v241);
        goto LABEL_114;
      }

      v662 = v234;
      (*(v240 + 96))(v239, v241);
      v242 = *&v239[*(sub_10000A5D4(&unk_100942CF0, &qword_100784A60) + 48)];
      v243 = sub_100764E5C();
      (*(*(v243 - 8) + 8))(v239, v243);
      v244 = v620;
      sub_10075D80C();
      v245 = v575;
      v246 = v574;
      v247 = v576;
      (*(v575 + 104))(v574, enum case for RateAction.Parameter.version(_:), v576);
      sub_10075F92C();
      (*(v245 + 8))(v246, v247);
      v248 = [v242 stringValue];
      sub_10076FF9C();

      v249 = v244;
      sub_10075D7CC();

      v250 = *(v578 + 48);
      v251 = v579;
      v252 = v250(v244, 1, v579);
      v253 = v577;
      if (!v252)
      {
        v254 = sub_10075D7EC();
        if (*v255)
        {
          v256 = v255;
          v661 = v254;
          (*(v580 + 16))(v571, v619, v253);
          v257 = *v256;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v256 = v257;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v257 = sub_10049DE1C(0, v257[2] + 1, 1, v257);
            *v256 = v257;
          }

          v260 = v257[2];
          v259 = v257[3];
          v261 = (v260 + 1);
          if (v260 >= v259 >> 1)
          {
            v658 = (v260 + 1);
            v566 = sub_10049DE1C((v259 > 1), v260 + 1, 1, v257);
            v261 = v658;
            v257 = v566;
            *v256 = v566;
          }

          v251 = v579;
          v257[2] = v261;
          (*(v580 + 32))(v257 + ((*(v580 + 80) + 32) & ~*(v580 + 80)) + *(v580 + 72) * v260, v571, v253);
          v661(&v679, 0);
        }

        else
        {
          v254(&v679, 0);
          v251 = v579;
        }

        v249 = v620;
      }

      if (v250(v249, 1, v251))
      {
        (*(v580 + 8))(v619, v253);

        v548 = v573;
        (*(v656 + 56))(v573, 1, 1, v659);
LABEL_112:
        sub_10000CFBC(v548, &unk_1009435D0, &qword_100785850);
        v238 = v622;
        goto LABEL_113;
      }

      v549 = v578;
      v550 = v570;
      (*(v578 + 16))(v570, v249, v251);
      v548 = v573;
      sub_10075D81C();

      (*(v549 + 8))(v550, v251);
      (*(v580 + 8))(v619, v253);
      v551 = v656;
      v552 = v659;
      if ((*(v656 + 48))(v548, 1, v659) == 1)
      {
        goto LABEL_112;
      }

      v238 = v622;
      (*(v551 + 8))(v622, v552);
      (v662)(v238, v548, v552);
LABEL_113:
      sub_10000CFBC(v620, &qword_100958C40, &unk_1007A5A50);
LABEL_114:
      v553 = objc_allocWithZone(type metadata accessor for ComposeReviewViewController());
      sub_10075DB1C(v554);
      v556 = v555;
      v105 = [v553 initWithCompositionURL:v555];

      if (!v105)
      {
        __break(1u);
        JUMPOUT(0x1004923CCLL);
      }

      v557 = v105;
      v558 = sub_1006C7080(v660, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000010, 0x80000001007E9220);
      v559 = type metadata accessor for ComposeReviewDelegate();
      v560 = objc_allocWithZone(v559);
      *&v560[OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF121ComposeReviewDelegate_selfReference] = 0;
      *&v560[OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF121ComposeReviewDelegate_objectGraph] = v558;
      v678.receiver = v560;
      v678.super_class = v559;
      v561 = objc_msgSendSuper2(&v678, "init");
      v562 = *(v561 + OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF121ComposeReviewDelegate_selfReference);
      *(v561 + OBJC_IVAR____TtC20ProductPageExtensionP33_F5913BF55198538BC94C4AFB9B61CBF121ComposeReviewDelegate_selfReference) = v561;
      v563 = v561;

      [v557 setDelegate:v563];
      [v557 prepareWithCompletionBlock:0];

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v564 = *(v656 + 8);
      v565 = v659;
      v564(v238, v659);
      (*(v631 + 8))(v630, v632);
      v564(v629, v565);
LABEL_87:
      sub_10000CD74(v682);
      (*(v669 + 8))(v672, v668);
      return v105;
    case 0x1Au:
      sub_10076966C();
      swift_allocObject();
      v476 = v660;

      v477 = sub_1007695DC();

      sub_1007684BC();
      v478 = sub_100492FA4(&qword_100958CB8, &type metadata accessor for ReviewsDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v479 = sub_1006C7080(v476, v477, v478, _swiftEmptyArrayStorage, 0x5073776569766572, 0xEB00000000656761);

      v480 = objc_allocWithZone(type metadata accessor for ReviewsDiffablePageViewController(0));
      v105 = sub_1004E5304(v477, v479);
      goto LABEL_80;
    case 0x1Bu:
      v136 = v606;
      sub_100023AD0(v76, v606, &unk_1009435D0, &qword_100785850);
      v137 = v585;
      sub_100016E2C(v136, v585, &unk_1009435D0, &qword_100785850);
      v138 = v656;
      v139 = v659;
      if ((*(v656 + 48))(v137, 1, v659) == 1)
      {
        sub_10000CFBC(v137, &unk_1009435D0, &qword_100785850);
        v140 = sub_10075EADC();
        swift_allocObject();
        swift_unknownObjectRetain();
        v141 = v663;
        v142 = sub_10075EACC();
        *(&v680 + 1) = v140;
        v681 = &protocol witness table for ASDInAppPurchaseStateProvider;
        *&v679 = v142;
        sub_10076252C();
        swift_allocObject();

        v143 = v660;

        v144 = v665;
        v145 = v136;
        v146 = v666;
        v147 = sub_1007623DC();
        v148 = sub_100492FA4(&unk_100958D30, &type metadata accessor for AccountPresenter, &protocol conformance descriptor for BasePresenter);

        v149 = sub_1006C7080(v143, v147, v148, _swiftEmptyArrayStorage, 0x50746E756F636361, 0xEB00000000656761);

        v150 = objc_allocWithZone(type metadata accessor for AccountViewController());
        v105 = sub_10067F6E4(v147, v149);

        swift_unknownObjectRelease();

        v123 = v145;
LABEL_60:
        sub_10000CFBC(v123, &unk_1009435D0, &qword_100785850);
      }

      else
      {
        v487 = v572;
        (*(v138 + 32))(v572, v137, v139);
        v488 = v654;
        (*(v138 + 16))(v654, v487, v139);
        (*(v138 + 56))(v488, 0, 1, v139);
        sub_100768EEC();
        swift_allocObject();
        v489 = v660;

        v490 = sub_100768E4C();
        v491 = sub_100492FA4(&qword_100958D48, &type metadata accessor for GenericAccountPagePresenter, &protocol conformance descriptor for BasePresenter);

        v492 = sub_1006C7080(v489, v490, v491, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000001007E92A0);

        v493 = type metadata accessor for GenericAccountPageViewController();
        v494 = objc_allocWithZone(v493);
        *&v494[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_overlayViewController] = 0;
        *&v494[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_presenter] = v490;
        *&v494[OBJC_IVAR____TtC20ProductPageExtension32GenericAccountPageViewController_objectGraph] = v492;
        v676.receiver = v494;
        v676.super_class = v493;
        v105 = objc_msgSendSuper2(&v676, "initWithStyle:", 2);

        swift_unknownObjectRelease();

        (*(v138 + 8))(v487, v139);
        sub_10000CFBC(v136, &unk_1009435D0, &qword_100785850);
      }

      goto LABEL_87;
    case 0x1Cu:
      v447 = v592;
      sub_100023AD0(v76, v592, &unk_1009435D0, &qword_100785850);
      v448 = v586;
      sub_100016E2C(v447, v586, &unk_1009435D0, &qword_100785850);
      v449 = v656;
      v450 = v659;
      if ((*(v656 + 48))(v448, 1, v659) == 1)
      {
        v452 = 0;
      }

      else
      {
        sub_10075DB1C(v451);
        v452 = v511;
        (*(v449 + 8))(v448, v450);
      }

      v512 = v669;
      v513 = v668;
      v514 = v666;
      v515 = v665;
      v516 = [objc_allocWithZone(type metadata accessor for AccountPageViewController()) initWithAccountURL:v452];

      v517 = objc_allocWithZone(type metadata accessor for AccountPageViewControllerDelegate());
      v105 = v516;
      v518 = [v517 init];
      [v105 setDelegate:v518];

      [v105 prepareWithCompletionBlock:0];

      swift_unknownObjectRelease();

      sub_10000CFBC(v447, &unk_1009435D0, &qword_100785850);
      sub_10000CD74(v682);
      (*(v512 + 8))(v672, v513);
      return v105;
    case 0x1Du:
      v453 = *(sub_10000A5D4(&qword_1009499D8, &unk_10078C790) + 48);
      v454 = v656;
      v455 = v655;
      v456 = v659;
      (*(v656 + 32))(v655, v76, v659);
      v457 = v76 + v453;
      v458 = v615;
      sub_100023AD0(v457, v615, &qword_1009499B0, &qword_10078C590);
      v459 = v660;
      sub_10076F63C();
      (*(v454 + 16))(v652, v455, v456);
      v460 = v458;
      sub_100016E2C(v458, v607, &qword_1009499B0, &qword_10078C590);
      sub_1007678BC();
      swift_allocObject();

      v461 = sub_1007678AC();

      sub_1007684BC();
      v462 = sub_100492FA4(&qword_100958CA0, &type metadata accessor for MSODiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v463 = sub_1006C7080(v459, v461, v462, _swiftEmptyArrayStorage, 0x656761506F736DLL, 0xE700000000000000);

      v464 = objc_allocWithZone(type metadata accessor for MSODiffablePageViewController(0));
      *&v464[qword_10099CA58] = 0x3FF0000000000000;
      *&v464[qword_100944BA0] = 0;
      *&v464[qword_100944BA8] = 0x4034000000000000;
      v464[qword_10099CA60] = 0;
      *&v464[qword_100944BB0] = 0;
      v105 = sub_100486428(v461, v463);

      swift_unknownObjectRelease();

      sub_10000CFBC(v460, &qword_1009499B0, &qword_10078C590);
      (*(v454 + 8))(v655, v456);
      goto LABEL_87;
    case 0x1Eu:
      (*(v656 + 56))(v654, 1, 1, v659);
      sub_10076573C();
      v679 = 0u;
      v680 = 0u;
      v681 = 0;
      swift_allocObject();

      v397 = v660;

      v398 = sub_10076572C();

      sub_100760CBC();
      v399 = sub_100492FA4(&qword_100958C78, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);

      v400 = sub_1006C7080(v397, v398, v399, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000001007E91C0);

      v401 = objc_allocWithZone(type metadata accessor for VersionHistoryViewController(0));
      sub_10034D858(v398, v400);
      v105 = v402;

      swift_unknownObjectRelease();

      goto LABEL_86;
    case 0x1Fu:
      v310 = *v76;
      type metadata accessor for OnboardingPresenter();
      v311 = swift_allocObject();
      *(v311 + 16) = v310;
      *(v311 + 24) = v670;

      *(v311 + 32) = sub_1005CC9D4(v312, v310);
      v313 = objc_allocWithZone(type metadata accessor for OnboardingViewController());

      v105 = sub_1006FDB6C(v314, sub_100489DD8, 0);
      if (qword_100941550 != -1)
      {
        swift_once();
      }

      swift_unknownObjectWeakAssign();
LABEL_80:

      goto LABEL_85;
    case 0x20u:
      v188 = *v76;
      v189 = v642;
      (*(v639 + 104))(v642, enum case for Shelf.ContentType.reviews(_:), v640);

      v190 = sub_1006C7080(v660, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000010, 0x80000001007E91A0);
      v191 = objc_allocWithZone(type metadata accessor for ComponentViewOverflowViewController());
      v192 = &unk_100952E68;
      v193 = &type metadata accessor for Review;
      v194 = &type metadata accessor for Review;
      v195 = &protocol conformance descriptor for Review;
      goto LABEL_63;
    case 0x21u:
      v188 = *v76;
      v189 = v642;
      (*(v639 + 104))(v642, enum case for Shelf.ContentType.editorsChoice(_:), v640);

      v190 = sub_1006C7080(v660, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000017, 0x80000001007E9180);
      v191 = objc_allocWithZone(type metadata accessor for ComponentViewOverflowViewController());
      v192 = &unk_100958F40;
      v193 = &type metadata accessor for EditorsChoice;
      v194 = &type metadata accessor for EditorsChoice;
      v195 = &protocol conformance descriptor for EditorsChoice;
LABEL_63:
      v105 = sub_10048AE60(v188, v189, v190, v191, v193, v192, v194, v195);

      [v105 setModalPresentationStyle:4];

      goto LABEL_85;
    case 0x22u:
      v151 = *v76;
      v152 = v76[1];
      v105 = [objc_allocWithZone(GKLeaderboardScoreViewController) initWithGameRecord:v152 leaderboard:*v76];

      swift_unknownObjectRelease();

      goto LABEL_86;
    case 0x23u:
      sub_10076CBDC();
      sub_100016E2C(v643, &v679, &unk_10094A8A0, &unk_10078DB90);
      v126 = sub_10076CBCC();
      goto LABEL_84;
    case 0x24u:
      v128 = *v76;
      v127 = v76[1];
      v129 = enum case for GameLayerAchievementsEntryPoint.achievementsByGame(_:);
      v130 = sub_10076C93C();
      v131 = *(v130 - 8);
      v132 = v614;
      (*(v131 + 104))(v614, v129, v130);
      (*(v131 + 56))(v132, 0, 1, v130);
      if (*(v127 + 16) == 1)
      {
      }

      sub_10076C92C();
      swift_allocObject();
      v133 = v128;
      sub_10076C91C();
      v134 = sub_10076C9DC();
      (*(*(v134 - 8) + 56))(v616, 1, 1, v134);
      v135 = objc_allocWithZone(sub_10076C95C());
      v105 = sub_10076C94C();

      goto LABEL_85;
    case 0x25u:
      v115 = sub_10000A5D4(&unk_100964150, &qword_1007869C0);
      v116 = v654;
      sub_100023AD0(v76 + *(v115 + 48), v654, &unk_1009435D0, &qword_100785850);
      sub_100016E2C(v116, v653, &unk_1009435D0, &qword_100785850);
      sub_10076573C();
      v679 = 0u;
      v680 = 0u;
      v681 = 0;
      swift_allocObject();

      v117 = v660;

      v118 = sub_10076572C();

      sub_100760CBC();
      v119 = sub_100492FA4(&qword_100958C78, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);

      v120 = sub_1006C7080(v117, v118, v119, _swiftEmptyArrayStorage, 0xD000000000000011, 0x80000001007E9160);

      v121 = objc_allocWithZone(type metadata accessor for PrivacyDetailViewController(0));
      sub_100625914(v118, v120);
      v105 = v122;

      swift_unknownObjectRelease();

      v123 = v116;
      goto LABEL_60;
    case 0x26u:
      v465 = sub_10000A5D4(&unk_100964150, &qword_1007869C0);
      v180 = v654;
      sub_100023AD0(v76 + *(v465 + 48), v654, &unk_1009435D0, &qword_100785850);
      sub_100016E2C(v180, v653, &unk_1009435D0, &qword_100785850);
      sub_10076573C();
      v679 = 0u;
      v680 = 0u;
      v681 = 0;
      swift_allocObject();

      v466 = v660;

      v467 = sub_10076572C();

      sub_100760CBC();
      v468 = sub_100492FA4(&qword_100958C78, &type metadata accessor for GenericPagePresenter, &protocol conformance descriptor for BasePresenter);

      v469 = sub_1006C7080(v466, v467, v468, _swiftEmptyArrayStorage, 0xD000000000000016, 0x80000001007E9140);

      v470 = objc_allocWithZone(type metadata accessor for PrivacyDefinitionsViewController(0));
      type metadata accessor for PrivacyDefinitionsDataSource(0);
      swift_allocObject();
      v471 = swift_retain_n();
      v472 = sub_100489D00(v471);

      v105 = sub_1004895EC(v467, v472, v469);
      sub_100492FA4(&unk_100958C80, type metadata accessor for PrivacyDefinitionsViewController, &unk_1007933BC);
      v473 = v105;

      v474 = v473;
      sub_1007676FC();

      v474[OBJC_IVAR____TtC20ProductPageExtension29StoreCollectionViewController_prefersLargeTitle] = 0;
      v475 = [v474 navigationItem];
      [v475 setLargeTitleDisplayMode:2];

      swift_unknownObjectRelease();

LABEL_77:
      v123 = v180;
      goto LABEL_60;
    case 0x27u:
      v428 = sub_10000A5D4(&unk_100964150, &qword_1007869C0);
      v429 = v654;
      sub_100023AD0(v76 + *(v428 + 48), v654, &unk_1009435D0, &qword_100785850);
      sub_100016E2C(v429, v653, &unk_1009435D0, &qword_100785850);
      sub_10076940C();
      swift_allocObject();

      v430 = v660;

      v431 = sub_1007693FC();

      sub_1007684BC();
      v432 = sub_100492FA4(&qword_100958C70, &type metadata accessor for GenericDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v433 = sub_1006C7080(v430, v431, v432, _swiftEmptyArrayStorage, 0xD000000000000018, 0x80000001007E9120);

      v434 = objc_allocWithZone(type metadata accessor for AccessibilityDetailsViewController(0));
      *&v434[qword_10099CA58] = 0x3FF0000000000000;
      *&v434[qword_100944BA0] = 0;
      *&v434[qword_100944BA8] = 0x4034000000000000;
      v434[qword_10099CA60] = 0;
      *&v434[qword_100944BB0] = 0;
      v105 = sub_100483C38(v431, v433);

      swift_unknownObjectRelease();

      v123 = v429;
      goto LABEL_60;
    case 0x28u:
      v212 = v76[1];
      sub_10075F07C();
      swift_allocObject();
      v213 = v660;

      v214 = sub_10075F03C();

      sub_100760CBC();

      v215 = sub_100492FA4(&unk_100958C60, &type metadata accessor for AppEventDetailPagePresenter, &protocol conformance descriptor for BasePresenter);

      v216 = sub_1006C7080(v213, v214, v215, _swiftEmptyArrayStorage, 0xD000000000000012, 0x80000001007E9100);

      v217 = objc_allocWithZone(type metadata accessor for AppEventDetailPageViewController());
      v218 = v212;

      sub_100667AC0(v214, v216, v212);
      v105 = v219;
      [v105 setModalPresentationStyle:4];
      v220 = OBJC_IVAR____TtC20ProductPageExtension32AppEventDetailPageViewController_containerTransitioningDelegate;
      goto LABEL_71;
    case 0x29u:
    case 0x2Au:
      v435 = v76[1];
      sub_10075F11C();
      swift_allocObject();
      v436 = v660;

      v437 = sub_10075F0DC();

      sub_100760CBC();

      v438 = sub_100492FA4(&qword_100958C58, &type metadata accessor for AppPromotionDetailPagePresenter, &protocol conformance descriptor for BasePresenter);

      v439 = sub_1006C7080(v436, v437, v438, _swiftEmptyArrayStorage, 0xD000000000000016, 0x80000001007E90E0);

      v440 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageViewController(0));
      v218 = v435;

      sub_1003A7D38(v437, v439, v435);
      v105 = v441;
      [v105 setModalPresentationStyle:4];
      v220 = OBJC_IVAR____TtC20ProductPageExtension36AppPromotionDetailPageViewController_containerTransitioningDelegate;
LABEL_71:
      [v105 setTransitioningDelegate:*&v105[v220]];

      swift_unknownObjectRelease();

      sub_10000CD74(v682);
      (*(v669 + 8))(v672, v668);

      return v105;
    case 0x2Bu:
      v105 = *v76;
      v106 = sub_10000A5D4(&unk_100958C90, &unk_10078C780);
      v107 = v612;
      v108 = v611;
      v109 = v613;
      (*(v612 + 32))(v611, v76 + *(v106 + 48), v613);
      type metadata accessor for ComponentViewOverflowViewController();
      if (swift_dynamicCastClass())
      {
        v110 = v105;
        sub_1003E5B60(v108);

        v111 = v666;
        v112 = v110;
        v113 = v669;
        v114 = v668;
      }

      else
      {
        v113 = v669;
        v114 = v668;
        v112 = v666;
        v111 = v665;
      }

      swift_unknownObjectRelease();

      (*(v107 + 8))(v108, v109);
      sub_10000CD74(v682);
      (*(v113 + 8))(v672, v114);
      return v105;
    case 0x2Cu:
      v169 = sub_10075EADC();
      swift_allocObject();
      swift_unknownObjectRetain();
      v170 = v663;
      v171 = sub_10075EACC();
      *(&v680 + 1) = v169;
      v681 = &protocol witness table for ASDInAppPurchaseStateProvider;
      *&v679 = v171;
      sub_10076252C();
      swift_allocObject();

      v172 = v660;

      v173 = v665;
      v174 = v666;
      v175 = sub_1007623DC();
      v176 = sub_100492FA4(&unk_100958D30, &type metadata accessor for AccountPresenter, &protocol conformance descriptor for BasePresenter);

      v177 = sub_1006C7080(v172, v175, v176, _swiftEmptyArrayStorage, 0x50746E756F636361, 0xEB00000000656761);

      v178 = objc_allocWithZone(type metadata accessor for AccountViewController());
      v105 = sub_10067F6E4(v175, v177);

      swift_unknownObjectRelease();

      goto LABEL_86;
    case 0x2Du:
      type metadata accessor for ASDPurchaseHistoryContext(0);
      *&v679 = 1;
      v403 = v625;
      sub_10076F19C();
      v404 = v660;
      sub_10076F60C();
      v405 = *(v650 + 8);
      v406 = v626;
      v405(v403, v626);
      LOBYTE(v679) = 1;
      sub_10076F19C();
      v407 = sub_10076F60C();
      v662 = v407;

      v405(v403, v406);
      v408 = sub_10000DD38(v407);
      v661 = v409;
      sub_10076F5CC();
      v659 = v408;
      swift_unknownObjectRetain();
      sub_10076F5CC();
      sub_10000A5D4(&qword_100958D08, &qword_1007A5A68);
      v410 = v627;
      v411 = (*(v627 + 80) + 32) & ~*(v627 + 80);
      v412 = swift_allocObject();
      *(v412 + 16) = v651;
      v413 = enum case for PurchasesContentMode.hidden(_:);
      v414 = *(v410 + 104);
      v415 = v628;
      v414(v412 + v411, enum case for PurchasesContentMode.hidden(_:), v628);
      sub_10076830C();
      swift_allocObject();

      v416 = v661;
      v417 = sub_10076825C();
      v414(v604, v413, v415);
      sub_1007682AC();
      v418 = sub_100492FA4(&qword_100958D10, &type metadata accessor for PurchasesContentPresenter, &protocol conformance descriptor for BasePresenter);
      sub_10000A5D4(&qword_10094F420, &qword_1007982E0);
      v419 = swift_allocObject();
      *(v419 + 16) = v651;
      *&v679 = v659;
      *(&v679 + 1) = v416;

      sub_10076F1AC();
      v420 = sub_1006C7080(v404, v417, v418, v419, 0xD000000000000013, 0x80000001007E9260);

      v421 = objc_allocWithZone(type metadata accessor for PurchasesViewController());
      sub_1004346FC(v417, v420);
      v105 = v422;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      goto LABEL_65;
    case 0x2Eu:
      type metadata accessor for ComingSoonViewController();
      v126 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      goto LABEL_84;
    case 0x2Fu:
      sub_100768AFC();
      sub_10076F63C();
      v124 = v679;
      v125 = objc_allocWithZone(type metadata accessor for DebugTodayCardTriggerViewController());
      v126 = sub_10060AADC(v124);
      goto LABEL_84;
    case 0x30u:
      sub_100769B8C();
      swift_allocObject();

      v196 = sub_100769AEC();
      v197 = objc_allocWithZone(type metadata accessor for DebugStorefrontPickerViewController());
      v126 = sub_1004FB358(v196);
      goto LABEL_84;
    case 0x31u:
      v208 = sub_10076147C();
      v209 = objc_allocWithZone(AMSUINotificationSettingsViewController);
      v210 = sub_10076FF6C();
      v105 = [v209 initWithIdentifier:v210 bag:v208];

      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      goto LABEL_86;
    case 0x32u:
      v103 = [objc_allocWithZone(GKDashboardRequest) init];
      [v103 setState:4];
      sub_10076CBAC();
      (*(v608 + 104))(v610, enum case for DashboardLaunchContext.appStore(_:), v609);
      sub_100016E2C(v643, &v679, &unk_10094A8A0, &unk_10078DB90);
      v104 = v103;
      v105 = sub_10076CB9C();

      goto LABEL_85;
    case 0x33u:
      sub_10076AD1C();
      swift_allocObject();
      v481 = v660;

      v482 = sub_10076ACFC();
      v483 = sub_100492FA4(&qword_100958C50, &type metadata accessor for PersonalizationTransparencyPagePresenter, &protocol conformance descriptor for BasePresenter);

      v484 = sub_1006C7080(v481, v482, v483, _swiftEmptyArrayStorage, 0xD00000000000001FLL, 0x80000001007E90C0);

      v485 = objc_allocWithZone(type metadata accessor for PersonalizationTransparencyPageViewController());
      v126 = sub_1004D7434(v482, v484);
LABEL_84:
      v105 = v126;
LABEL_85:

      swift_unknownObjectRelease();

      goto LABEL_86;
    case 0x34u:

      swift_unknownObjectRelease();

      sub_10000CD74(v682);
      (*(v669 + 8))(v672, v668);
      return 0;
    default:
      v95 = sub_10000A5D4(&qword_100949A00, qword_10078C5B0);
      v662 = *(v76 + v95[12]);
      v655 = *(v76 + v95[20]);
      v661 = *(v76 + v95[24]);
      (*(v656 + 32))(v648, v76, v659);
      LODWORD(v654) = sub_10076141C();
      sub_1007613FC();
      v96 = sub_10076129C();
      v97 = v635;
      v98 = *(v635 + 104);
      v99 = v634;
      v100 = v636;
      v98(v634, enum case for ASKBagContract.AdPlacementBagValue.productPageYMAL(_:), v636);
      v101 = sub_1004894E4(v99, v96, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_100958ED0, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &protocol conformance descriptor for ASKBagContract.AdPlacementBagValue);

      v102 = *(v97 + 8);
      v102(v99, v100);
      if (v101)
      {
        LODWORD(v652) = 1;
      }

      else
      {
        v495 = sub_10076129C();
        v98(v99, enum case for ASKBagContract.AdPlacementBagValue.productPageYMALDuringDownload(_:), v100);
        LODWORD(v652) = sub_1004894E4(v99, v495, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &qword_100958ED0, &type metadata accessor for ASKBagContract.AdPlacementBagValue, &protocol conformance descriptor for ASKBagContract.AdPlacementBagValue);

        v102(v99, v100);
      }

      v496 = type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter();
      v497 = swift_allocObject();
      sub_10076CCCC();
      *(v497 + 16) = sub_10076CCBC();
      *(&v680 + 1) = v496;
      v498 = sub_100492FA4(&unk_100958CF0, type metadata accessor for PromotedContentAdvertLifecycleMetricsReporter, &unk_10078D9A0);
      v681 = v498;
      *&v679 = v497;
      sub_10076A14C();
      swift_allocObject();
      v499 = v497;

      v500 = sub_10076A12C();
      v653 = v500;
      sub_10000A5D4(&qword_10094F420, &qword_1007982E0);
      v501 = swift_allocObject();
      *(v501 + 16) = v651;
      *&v679 = v500;
      sub_10076F1AC();
      (*(v656 + 16))(v593, v648, v659);
      sub_10000A570(v682, &v679);
      v677[3] = v582;
      v677[4] = &protocol witness table for Restrictions;
      v677[0] = v671;

      v502 = sub_1007706EC();
      v503 = &enum case for ProductDiffablePagePresenter.PageWidth.compact(_:);
      if ((v502 & 1) == 0)
      {
        v503 = &enum case for ProductDiffablePagePresenter.PageWidth.regular(_:);
      }

      (*(v594 + 104))(v599, *v503, v595);
      v675 = v498;
      v674 = v496;
      v649 = v499;
      v673 = v499;
      sub_100016E2C(v644, v638, &unk_100958150, &unk_100786630);
      sub_1007695CC();
      swift_allocObject();

      v504 = v660;

      swift_unknownObjectRetain();

      v505 = sub_10076951C();
      sub_100761FAC();

      sub_100761F8C();
      sub_100761F7C();

      sub_10076845C();

      sub_1007684BC();

      v506 = sub_100492FA4(&qword_100958DD0, &type metadata accessor for ProductDiffablePagePresenter, &protocol conformance descriptor for TimedMetricsPagePresenter<A>);

      v507 = sub_1006C7080(v504, v505, v506, v501, 0x50746375646F7270, 0xEB00000000656761);

      v508 = objc_allocWithZone(type metadata accessor for ProductDiffablePageViewController(0));
      v105 = sub_1006E4468(v505, v507);

      swift_unknownObjectRelease();

      (*(v656 + 8))(v648, v659);
      goto LABEL_87;
  }
}