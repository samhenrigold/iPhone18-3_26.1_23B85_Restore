uint64_t sub_1E4086CD8()
{
  *(v0 + 98) = 0;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E4086D20();

  return v1;
}

double sub_1E4086D20()
{
  sub_1E39537A8();
  v87[0] = v1;
  v87[1] = v2;
  v87[2] = v3;
  v87[3] = v4;
  v88 = 0;
  v5 = (*(*v0 + 560))(v87);
  v6 = *(*v0 + 1728);
  v7 = v6(v5);
  v8 = sub_1E3BE9944(v7, 2);
  (*(*v0 + 1752))();
  OUTLINED_FUNCTION_2_1();
  if (v8)
  {
    v10 = 15;
  }

  else
  {
    v10 = 3;
  }

  (*(v9 + 1696))(v10);

  OUTLINED_FUNCTION_9_2();
  v12 = *(v11 + 1752);
  v13 = v12();
  sub_1E3755B54();
  v14 = sub_1E4206F24();
  (*(*v13 + 680))(v14);

  (v12)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 2128))(0x3FE6666666666666, 0);

  (v12)(v17);
  OUTLINED_FUNCTION_2_1();
  v19 = 1;
  (*(v18 + 1984))(1);

  v21 = v6(v20);
  if (sub_1E3BE9944(v21, 2))
  {
    v19 = 2;
  }

  v12();
  OUTLINED_FUNCTION_2_1();
  (*(v22 + 2056))(v19, 0);

  (v12)(v23);
  OUTLINED_FUNCTION_2_1();
  (*(v24 + 2080))(v19, 0);

  (v12)(v25);
  OUTLINED_FUNCTION_2_1();
  (*(v26 + 2104))(0, 0);

  v27 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  v28 = [objc_opt_self() blackColor];
  v29 = [v28 colorWithAlphaComponent_];

  [v27 setShadowColor_];
  [v27 setShadowOffset_];
  (v12)([v27 setShadowBlurRadius_]);
  OUTLINED_FUNCTION_2_1();
  v31 = *(v30 + 608);
  v32 = v27;
  v31(v27);

  OUTLINED_FUNCTION_9_2();
  v34 = *(v33 + 1776);
  v34();
  OUTLINED_FUNCTION_2_1();
  (*(v35 + 1696))(22);

  v37 = (v34)(v36);
  v38 = *sub_1E3E60364();
  v39 = *(*v37 + 680);
  v40 = v38;
  v39(v38);

  v42 = (v34)(v41);
  v43 = sub_1E4205F14();
  v45 = v44;
  v46 = sub_1E4205F14();
  v48 = sub_1E376C12C(v43, v45, v46, v47);
  (*(*v42 + 1888))(v48);

  (v34)(v49);
  OUTLINED_FUNCTION_2_1();
  (*(v50 + 2128))(0x3FE6666666666666, 0);

  (v34)(v51);
  OUTLINED_FUNCTION_2_1();
  (*(v52 + 1984))(1);

  (v34)(v53);
  OUTLINED_FUNCTION_2_1();
  (*(v54 + 2056))(1, 0);

  (v34)(v55);
  OUTLINED_FUNCTION_2_1();
  (*(v56 + 2080))(1, 0);

  (v34)(v57);
  OUTLINED_FUNCTION_2_1();
  (*(v58 + 2104))(0, 0);

  OUTLINED_FUNCTION_9_2();
  v60 = (*(v59 + 1800))();
  v89[0] = sub_1E3952C40();
  v89[1] = v61;
  v89[2] = v62;
  v89[3] = v63;
  v90 = 0;
  (*(*v60 + 184))(v89);

  v64 = objc_opt_self();
  v65 = [v64 blackColor];
  v66 = [v64 whiteColor];
  v67 = sub_1E3E5F2F8(v65, v66);

  OUTLINED_FUNCTION_9_2();
  v69 = *(v68 + 1824);
  v69();
  OUTLINED_FUNCTION_2_1();
  v71 = (*(v70 + 2048))();

  v72 = *(*v71 + 680);
  v73 = v67;
  v72(v67);

  (v69)(v74);
  OUTLINED_FUNCTION_2_1();
  v76 = (*(v75 + 2048))();

  (*(*v76 + 872))(v67);

  OUTLINED_FUNCTION_9_2();
  v78 = (*(v77 + 1752))();
  sub_1E3C37CBC(v78, 23);

  OUTLINED_FUNCTION_9_2();
  v80 = (*(v79 + 1776))();
  sub_1E3C37CBC(v80, 17);

  OUTLINED_FUNCTION_9_2();
  v82 = *(v81 + 1800);
  v83 = v82();
  sub_1E3C37CBC(v83, 59);

  v85 = (v82)(v84);
  sub_1E3C37CBC(v85, 65);

  return result;
}

double sub_1E4087838(char a1)
{
  LOBYTE(v16[0]) = a1;
  v3 = (*(*v1 + 1728))();
  sub_1E3BEAB58(v3, v4, v5);
  if ((sub_1E4205E84() & 1) == 0)
  {
    swift_beginAccess();
    v1[98] = a1;
    memset(v16, 0, sizeof(v16));
    v17 = 1;
    (*(*v1 + 560))(v16);
    OUTLINED_FUNCTION_9_2();
    v8 = (*(v7 + 1752))();
    type metadata accessor for TextLayout();
    v9 = sub_1E383BCC0();
    (*(*v8 + 1648))(v9);

    OUTLINED_FUNCTION_9_2();
    v11 = (*(v10 + 1776))();
    v12 = sub_1E383BCC0();
    (*(*v11 + 1648))(v12);

    OUTLINED_FUNCTION_9_2();
    v14 = (*(v13 + 1800))();
    type metadata accessor for ButtonLayout();
    v15 = sub_1E3BBB724();
    (*(*v14 + 1648))(v15);

    return sub_1E4086D20();
  }

  return result;
}

uint64_t sub_1E4087B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_viewImpressioner;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return sub_1E3D96570(v1 + v3, a1, &qword_1ECF2C970, &qword_1E429D870);
}

uint64_t sub_1E4087B90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_viewImpressioner;
  swift_beginAccess();
  sub_1E37C5630(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E4087C50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F4E8, &qword_1E42E91D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = sub_1E3859230(194);
  *(inited + 40) = v1;
  *(inited + 48) = type metadata accessor for MonogramLockupCell();
  *(inited + 56) = sub_1E3859230(198);
  *(inited + 64) = v2;
  *(inited + 72) = type metadata accessor for BrandLockupCell();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4F0, &qword_1E42E91E0);
  result = sub_1E4205CB4();
  qword_1EE28B028 = result;
  return result;
}

void sub_1E4087D08()
{
  v1 = sub_1E4087E1C();
  [v1 setShouldSnapContent_];
}

uint64_t sub_1E4087D60()
{
  v1 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___cachedHeaderViews;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___cachedHeaderViews))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___cachedHeaderViews);
  }

  else
  {
    sub_1E41FE874();
    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    sub_1E408F7C0(&unk_1EE28A418, MEMORY[0x1E6969C38]);
    v2 = sub_1E4205CB4();
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1E4087E1C()
{
  v1 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___shelfViewLayout;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___shelfViewLayout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___shelfViewLayout);
  }

  else
  {
    v4 = [objc_allocWithZone(VUIShelfViewLayout) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

objc_super *sub_1E4087E90()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___groupCollectionContainerView);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___groupCollectionContainerView);
  }

  else
  {
    v3 = v0;
    v55 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___groupCollectionContainerView;
    v4 = sub_1E4087E1C();
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v5);
    v6 = objc_allocWithZone(type metadata accessor for MultiGroupHorizontalCollectionController.MultiGroupContainerView());
    *&v6[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView] = 0;
    v7 = &v6[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_viewContentInsets];
    v8 = *(MEMORY[0x1E69DDCE0] + 16);
    *v7 = *MEMORY[0x1E69DDCE0];
    *(v7 + 1) = v8;
    *&v6[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView] = 0;
    *&v6[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_decorationView] = 0;
    *&v6[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_shelfLayout] = v4;
    v9 = &v6[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_invalidationHandler];
    *v9 = sub_1E4090014;
    v9[1] = v5;
    v10 = v4;

    v11 = OUTLINED_FUNCTION_1_36();
    v13 = [(objc_super *)v12 initWithFrame:v11];
    [(objc_super *)v13 setVuiClipsToBounds:0];

    type metadata accessor for BaseCollectionView();
    v14 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___shelfViewLayout;
    v15 = *(v3 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___shelfViewLayout);
    swift_getObjCClassFromMetadata();
    v16 = OUTLINED_FUNCTION_1_36();
    v54 = v13;
    v19 = [v17 v18];
    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 setVuiClipsToBounds_];

    v20 = v19;
    [v20 setShowsVerticalScrollIndicator_];
    [v20 setScrollEnabled_];
    [v20 setShowsHorizontalScrollIndicator_];
    [v20 setPrefetchingEnabled_];
    [v20 setBouncesVertically_];
    OUTLINED_FUNCTION_29_100();
    v22 = *(v21 + 112);
    v23 = swift_unknownObjectRetain();
    v22(v23);
    OUTLINED_FUNCTION_29_100();
    v25 = *(v24 + 136);
    v26 = swift_unknownObjectRetain();
    v25(v26);
    [*(v3 + v14) setDelegate_];
    v27 = [objc_opt_self() clearColor];
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_29_100();
    (*(v28 + 176))(v27, v29 & 1);

    [v20 setAlwaysBounceHorizontal_];
    if ([objc_opt_self() isPad])
    {
      [v20 _setVisibleRectEdgeInsets_];
    }

    if (_MergedGlobals_167 != -1)
    {
LABEL_19:
      OUTLINED_FUNCTION_14_177(&_MergedGlobals_167);
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v30 = qword_1EE28B028;
    v31 = 1 << *(qword_1EE28B028 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(qword_1EE28B028 + 64);
    v34 = (v31 + 63) >> 6;

    v35 = 0;
    if (v33)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v36 >= v34)
      {
        break;
      }

      v33 = *(v30 + 64 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        do
        {
LABEL_14:
          v33 &= v33 - 1;
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

          v38 = sub_1E4205ED4();

          [v20 vui:ObjCClassFromMetadata registerClass:v38 forCellWithReuseIdentifier:?];
        }

        while (v33);
        continue;
      }
    }

    v39 = sub_1E4205F14();
    v41 = v40;
    v42 = sub_1E3811878();
    v43 = *v42;
    v44 = v42[1];
    v45 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_supplementaryKindToReuseIdentifierMap;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v3 + v45);
    sub_1E38C5C90(v43, v44, v39, v41, isUniquelyReferenced_nonNull_native);
    *(v3 + v45) = v56;

    swift_endAccess();
    type metadata accessor for CollectionRichHeaderView();
    v47 = swift_getObjCClassFromMetadata();
    v48 = @"VUIShelfLayoutElementKindHeader";

    v49 = sub_1E4205ED4();

    [v20 vui:v47 registerClass:v48 forSupplementaryViewOfKind:v49 withReuseIdentifier:?];

    v50 = *(&v54->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView);
    *(&v54->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView) = v20;

    v51 = *(v3 + v55);
    *(v3 + v55) = v54;
    v2 = v54;

    v1 = 0;
  }

  v52 = v1;
  return v2;
}

void sub_1E4088424()
{
  v1 = sub_1E4087E90();
  [v0 setView_];
}

void sub_1E40884B4()
{
  v1 = v0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for MultiGroupHorizontalCollectionController(0);
  objc_msgSendSuper2(&v25, sel_vui_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() clearColor];
    [v3 setVuiBackgroundColor_];

    v5 = sub_1E4087E1C();
    [v5 setHeaderBottomMargin_];

    v6 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___shelfViewLayout;
    [*&v1[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___shelfViewLayout] setMinimumLineSpacing_];
    [*&v1[v6] setShouldSnapContent_];
    v7 = sub_1E4087E90();
    v8 = *(&v7->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView);
    v9 = v8;

    if (v8)
    {
      OUTLINED_FUNCTION_4_0();
      v10 = swift_allocObject();
      OUTLINED_FUNCTION_45_2(v10);
      OUTLINED_FUNCTION_2_4();
      v11 = swift_allocObject();
      *(v11 + 16) = sub_1E408F8E8;
      *(v11 + 24) = v10;
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F510, qword_1E42E91F8));
      v12 = v9;
      v13 = sub_1E4200084();
      v14 = *&v1[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource];
      *&v1[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource] = v13;
      v15 = v13;

      OUTLINED_FUNCTION_4_0();
      v16 = swift_allocObject();
      OUTLINED_FUNCTION_45_2(v16);

      sub_1E4200094();
    }

    sub_1E4089C6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0, &unk_1E429D880);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1E4297BE0;
    v18 = sub_1E41FFEA4();
    v19 = MEMORY[0x1E69DC0F8];
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    OUTLINED_FUNCTION_4_0();
    v20 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0, &unk_1E429D890);
    sub_1E4206944();
    swift_unknownObjectRelease();

    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1E4297BE0;
    v22 = sub_1E42001D4();
    v23 = MEMORY[0x1E69DC2B0];
    *(v21 + 32) = v22;
    *(v21 + 40) = v23;
    OUTLINED_FUNCTION_4_0();
    v24 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v24);
    sub_1E4206944();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for MultiGroupHorizontalCollectionController(uint64_t a1)
{
  result = qword_1EE290570;
  if (!qword_1EE290570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4088860(char a1, char a2, double a3, double a4)
{
  v5 = v4;
  if (a3 != 0.0 || a4 != 0.0)
  {
    v8 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastViewWidth;
    if (*&v4[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastViewWidth] != a3 || (a1 & 1) != 0)
    {
      type metadata accessor for LayoutGrid();
      sub_1E3A2579C(a3);
      OUTLINED_FUNCTION_8_21([v4 vuiTraitCollection]);
      v12 = v11;
      v13 = *&v4[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel];
      if (v13)
      {
        v14 = v9;
        v15 = v10;
        v16 = *(*v13 + 392);

        v16(v17);
        OUTLINED_FUNCTION_60_1();

        OUTLINED_FUNCTION_8();
        (*(v18 + 1640))(v14, v12, v15);
      }
    }

    if (*&v4[v8] != a3 || (a2 & 1) != 0)
    {
      *&v4[v8] = a3;
      v19 = &v4[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_cachedCellMetrics];
      *v19 = 0u;
      *(v19 + 1) = 0u;
      *(v19 + 2) = 0u;
      *(v19 + 3) = 0u;
      *(v19 + 4) = 0u;
      v19[80] = 1;
      v31 = sub_1E4087D60();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F500, &qword_1E42E91E8);
      sub_1E4205D14();
      *&v4[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___cachedHeaderViews] = v31;

      v20 = [objc_allocWithZone(VUIShelfViewLayoutInvalidationContext) init];
      [v20 setInvalidateLayout_];
      v21 = sub_1E4087E90();
      v22 = *(&v21->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView);
      v23 = v22;

      if (v22)
      {
        v24 = [v23 collectionViewLayout];

        [v24 invalidateLayoutWithContext_];
      }

      v25 = sub_1E4087E1C();
      type metadata accessor for LayoutGrid();
      sub_1E3A25950(*&v5[v8]);
      [v25 setMinimumInteritemSpacing_];

      sub_1E3A258E4(*&v5[v8]);
      if (*(*&v5[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___groupCollectionContainerView] + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView))
      {
        OUTLINED_FUNCTION_3();
        v27 = v26;
        v28 = OUTLINED_FUNCTION_6();
        [v29 v30];
      }
    }
  }
}

void sub_1E4088B8C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v25 - v13;
  v15 = sub_1E4087E1C();
  v16 = [v15 indexPathForSnappedContent];

  if (v16)
  {
    sub_1E41FE804();

    v17 = sub_1E41FE874();
    v18 = 0;
  }

  else
  {
    v17 = sub_1E41FE874();
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v11, v18, 1, v17);
  sub_1E3898A70(v11, v14);
  OUTLINED_FUNCTION_4_0();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = OUTLINED_FUNCTION_34();
  sub_1E3D96570(v20, v21, &qword_1ECF309A0, &qword_1E42A7870);
  v22 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  sub_1E3898A70(v8, v23 + v22);
  v25[4] = sub_1E4089D88;
  v25[5] = v23;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_1E37C7850;
  v25[3] = &block_descriptor_162;
  v24 = _Block_copy(v25);

  [v1 animateAlongsideTransition:v24 completion:0];
  _Block_release(v24);
  sub_1E325F7FC(v14, &qword_1ECF309A0, &qword_1E42A7870);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4088DFC()
{
  OUTLINED_FUNCTION_31_1();
  v46 = v0;
  v1 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v44 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F508, &qword_1E42E91F0);
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  v12 = OUTLINED_FUNCTION_8_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v42 - v21;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_15;
  }

  v24 = Strong;
  v43 = v14;
  v25 = sub_1E4087E1C();
  v26 = [v25 indexPathForSnappedContent];

  if (v26)
  {
    sub_1E41FE804();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  __swift_storeEnumTagSinglePayload(v22, v27, 1, v1);
  v28 = *(v7 + 48);
  sub_1E3D96570(v46, v10, &qword_1ECF309A0, &qword_1E42A7870);
  sub_1E3D96570(v22, &v10[v28], &qword_1ECF309A0, &qword_1E42A7870);
  OUTLINED_FUNCTION_11_150(v10);
  if (v29)
  {
    sub_1E325F7FC(v22, &qword_1ECF309A0, &qword_1E42A7870);
    OUTLINED_FUNCTION_11_150(&v10[v28]);
    if (v29)
    {

      sub_1E325F7FC(v10, &qword_1ECF309A0, &qword_1E42A7870);
LABEL_15:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    goto LABEL_13;
  }

  sub_1E3D96570(v10, v19, &qword_1ECF309A0, &qword_1E42A7870);
  OUTLINED_FUNCTION_11_150(&v10[v28]);
  if (v29)
  {
    sub_1E325F7FC(v22, &qword_1ECF309A0, &qword_1E42A7870);
    (*(v44 + 8))(v19, v1);
LABEL_13:
    sub_1E325F7FC(v10, &qword_1ECF3F508, &qword_1E42E91F0);
    goto LABEL_14;
  }

  v37 = v44;
  (*(v44 + 32))(v6, &v10[v28], v1);
  OUTLINED_FUNCTION_8_199();
  sub_1E408F7C0(v38, v39);
  v40 = sub_1E4205E84();
  v41 = *(v37 + 8);
  v41(v6, v1);
  sub_1E325F7FC(v22, &qword_1ECF309A0, &qword_1E42A7870);
  v41(v19, v1);
  sub_1E325F7FC(v10, &qword_1ECF309A0, &qword_1E42A7870);
  if (v40)
  {

    goto LABEL_15;
  }

LABEL_14:
  v30 = objc_opt_self();
  v31 = v45;
  sub_1E3D96570(v46, v45, &qword_1ECF309A0, &qword_1E42A7870);
  v32 = (*(v43 + 80) + 24) & ~*(v43 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v24;
  sub_1E3898A70(v31, v33 + v32);
  OUTLINED_FUNCTION_2_4();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E408F888;
  *(v34 + 24) = v33;
  v47[4] = sub_1E379E500;
  v47[5] = v34;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 1107296256;
  v47[2] = sub_1E3839B50;
  v47[3] = &block_descriptor_84_4;
  v35 = _Block_copy(v47);
  v36 = v24;

  [v30 performWithoutAnimation_];

  _Block_release(v35);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if ((v30 & 1) == 0)
  {
    goto LABEL_15;
  }

  __break(1u);
}

void sub_1E408933C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v7 = sub_1E4087E1C();
  sub_1E3D96570(a2, v6, &qword_1ECF309A0, &qword_1E42A7870);
  v8 = sub_1E41FE874();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1E41FE7E4();
    OUTLINED_FUNCTION_37_1();
    v10 = OUTLINED_FUNCTION_34();
    v11(v10);
  }

  [v7 snapContentToIndexPath_];
}

id sub_1E40894BC()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_viewImpressioner;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  type metadata accessor for ContextMenuInteractor(0);
  v2 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  OUTLINED_FUNCTION_1_291(v2);
  v3 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastFocusedIndexPath;
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_61_29(v4);
  *(v0 + v3) = sub_1E4205CB4();
  *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_datasourceLoaded) = 0;
  type metadata accessor for MultiGroupHorizontalCollectionController(0);
  OUTLINED_FUNCTION_25();
  return objc_msgSendSuper2(v5, v6);
}

void sub_1E40895AC()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_viewImpressioner;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  type metadata accessor for ContextMenuInteractor(0);
  v2 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  OUTLINED_FUNCTION_1_291(v2);
  v3 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastFocusedIndexPath;
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_61_29(v4);
  *(v0 + v3) = sub_1E4205CB4();
  *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_datasourceLoaded) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E40896CC()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_viewImpressioner;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  type metadata accessor for ContextMenuInteractor(0);
  v2 = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  OUTLINED_FUNCTION_1_291(v2);
  v3 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastFocusedIndexPath;
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_61_29(v4);
  *(v0 + v3) = sub_1E4205CB4();
  *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_datasourceLoaded) = 0;
  OUTLINED_FUNCTION_23_103();
  __break(1u);
}

void sub_1E40897C0(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F3E8, &unk_1E42E9078);
  v6 = sub_1E4148C68(sub_1E4089BA8, v5, v33);
  v7 = v33[0];
  v8 = (*(*a1 + 1040))(v6);
  if (!v8)
  {
    return;
  }

  sub_1E32AE9B0(v8);
  OUTLINED_FUNCTION_11_5();

  if (!v2)
  {
    return;
  }

  *&v7[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel] = a1;

  v9 = [v7 view];
  v10 = OUTLINED_FUNCTION_6_12();
  sub_1E4088860(1, 0, v10, v11);
  LOBYTE(v32) = 13;
  (*(*a1 + 776))(v33, &v32, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v33[3])
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_11;
    }

    v12 = sub_1E3F36DEC();
    if (v12 == 6)
    {
      type metadata accessor for InsettedSeparatorDecorationView();
    }

    else
    {
      if (v12 != 1)
      {
        goto LABEL_11;
      }

      type metadata accessor for GradientBackgroundDecorationView();
    }

    v13 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v14 = [v13 init];
    OUTLINED_FUNCTION_6_12();
    sub_1E4089BE4(v15);
  }

  else
  {
    sub_1E325F7FC(v33, &unk_1ECF296E0, &unk_1E4298030);
  }

LABEL_11:
  v16 = sub_1E4087E90();
  OUTLINED_FUNCTION_12_6();
  if ((*(v17 + 968))())
  {
LABEL_12:

    v20 = 0.0;
LABEL_13:
    v21 = *(MEMORY[0x1E69DDCE0] + 8);
    v22 = *(MEMORY[0x1E69DDCE0] + 24);
    v23 = 0;
    v24 = 0.0;
    if ((TVAppFeature.isEnabled.getter(10, v18, v19) & 1) == 0)
    {
      v23 = *sub_1E3C11B28();
      v24 = v20;
    }

    v25 = (v16 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_viewContentInsets);
    *v25 = v24;
    *(v25 + 1) = v21;
    *(v25 + 2) = v23;
    *(v25 + 3) = v22;

    return;
  }

  OUTLINED_FUNCTION_12_6();
  v27 = (*(v26 + 1040))();
  v20 = 24.0;
  if (!v27)
  {
    goto LABEL_13;
  }

  v28 = v27;
  v29 = sub_1E32AE9B0(v27);
  v30 = 0;
  while (1)
  {
    if (v29 == v30)
    {

      goto LABEL_13;
    }

    if ((v28 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v30, v28);
    }

    else
    {
      if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_60_38();
    }

    if (__OFADD__(v30, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_8();
    (*(v31 + 904))();
    OUTLINED_FUNCTION_65_31();

    ++v30;
    if (v3)
    {

      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

id sub_1E4089BA8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for MultiGroupHorizontalCollectionController(0)) init];
  *a1 = result;
  return result;
}

void sub_1E4089BE4(void *a1)
{
  [a1 frame];
  [a1 setFrame_];
  v3 = sub_1E4087E90();
  v2 = a1;
  sub_1E408E364(a1);
}

void sub_1E4089C6C()
{
  v1 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_datasourceLoaded;
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_datasourceLoaded) & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel))
    {

      sub_1E4089DE8();
    }

    *(v0 + v1) = 1;
  }
}

void sub_1E4089CE4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong view];
    if (v2)
    {
      v3 = v2;
      [v2 bounds];

      v4 = OUTLINED_FUNCTION_17_4();
      sub_1E4088860(1, v5, v4, v6);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E4089D88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_48_54();

  sub_1E4088DFC();
}

void sub_1E4089DE8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v31 = v3;
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0, &unk_1E429BA90);
  OUTLINED_FUNCTION_0_10();
  v32 = v9;
  v33 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_41();
  v11 = (*(*v7 + 968))();
  v12 = sub_1E4087E90();
  v13 = v12;
  if (v11)
  {
    v14 = *(&v12->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView);
    v15 = v14;

    v16 = type metadata accessor for UIFactory();
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    v17 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);

    sub_1E393D92C(v18, v14, v34, 0, v17);
    OUTLINED_FUNCTION_76();

    sub_1E325F7FC(v34, &qword_1ECF296C0, &unk_1E429BBE0);
    v19 = *&v2[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___groupCollectionContainerView];
    sub_1E408E2E0(v16);
  }

  else
  {
    sub_1E408E2E0(0);
  }

  v20 = sub_1E4087E90();
  [(objc_super *)v20 vui_setNeedsLayout];

  v21 = v7;
  v22 = (*(*v7 + 1040))();
  if (!v22)
  {
    goto LABEL_14;
  }

  v23 = sub_1E32AE9B0(v22);
  if (!v23)
  {

LABEL_14:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  sub_1E4059D8C(v23, v24, v25);
  sub_1E4200074();
  if (v5 && (, sub_1E408D5DC(), v21 = v26, , ((v21 ^ 1) & 1) != 0) || (v31 & 1) != 0)
  {
    v21 = v2;
    sub_1E408DB88();
  }

  v27 = v2;
  v28 = OUTLINED_FUNCTION_76();
  sub_1E408D3C4(v28, v1, v21);
  v29 = *&v21[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource];
  if (v29)
  {
    v30 = v29;
    OUTLINED_FUNCTION_76();

    OUTLINED_FUNCTION_25();
    sub_1E42000D4();

    (*(v32 + 8))(v1, v33);
    goto LABEL_14;
  }

  __break(1u);
}

void (*sub_1E408A280(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & **v1) + 0xC8))();
  return sub_1E37BCF0C;
}

id sub_1E408A310(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for CollectionViewModel();
  v3 = swift_dynamicCastClass();
  v4 = v3;
  if (!v3)
  {
    return (v4 != 0);
  }

  *&v1[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel] = v3;
  OUTLINED_FUNCTION_12_6();
  v6 = *(v5 + 968);
  v7 = swift_retain_n();
  v8 = v6(v7);
  v9 = sub_1E4087E90();
  v10 = v9;
  if (v8)
  {
    v11 = *(&v9->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView);
    v12 = v11;

    type metadata accessor for UIFactory();
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    v13 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);

    sub_1E393D92C(v14, v11, &v21, 0, v13);

    sub_1E325F7FC(&v21, &qword_1ECF296C0, &unk_1E429BBE0);
    v15 = *&v2[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___groupCollectionContainerView];
    v16 = OUTLINED_FUNCTION_65_31();
    sub_1E408E2E0(v16);
  }

  else
  {
    sub_1E408E2E0(0);
  }

  result = [v2 view];
  if (result)
  {
    v18 = result;
    [result bounds];

    v19 = OUTLINED_FUNCTION_17_4();
    sub_1E4088860(0, 1, v19, v20);
    sub_1E4089DE8();

    return (v4 != 0);
  }

  __break(1u);
  return result;
}

void sub_1E408A51C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0, &unk_1E429BA90);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - v16;
  v18 = (*(*v6 + 1040))(v15);
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = v18;
  v44 = v13;
  if (!sub_1E408A950(v4))
  {
    if (!sub_1E37D027C(v19))
    {
      goto LABEL_4;
    }

    v40 = v9;

    v43 = sub_1E40502A4(v42);
    v41 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource;
    v23 = *&v2[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource];
    if (v23)
    {
      v24 = v21;
      v25 = v22;
      v26 = v23;
      sub_1E4200104();

      v45 = v43;
      v46 = v24;
      v47 = v25;
      v27 = sub_1E41FFFD4();
      if (v28)
      {
        (*(v44 + 8))(v17, v11);

LABEL_17:
        OUTLINED_FUNCTION_25_2();
        return;
      }

      v39 = v27;
      v2[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_isApplyingSnapshot] = 1;
      sub_1E4087D08();
      v29 = v43;
      v43 = v25;
      sub_1E408B0D0(v29, v24, v25, v4);
      v30 = *&v2[v41];
      if (v30)
      {
        v31 = v30;
        OUTLINED_FUNCTION_60_1();

        OUTLINED_FUNCTION_4_0();
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1E42000D4();

        v32 = sub_1E324FBDC();
        v33 = v40;
        (*(v40 + 16))(v1, v32, v7);

        v34 = sub_1E41FFC94();
        v35 = sub_1E42067E4();
        if (OUTLINED_FUNCTION_104(v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 134218240;
          *(v36 + 4) = sub_1E32AE9B0(v4);

          *(v36 + 12) = 2048;
          *(v36 + 14) = v39;
          _os_log_impl(&dword_1E323F000, v34, v35, "MultiGroupHorizontalCollectionController::Did Append %ld items to section %ld", v36, 0x16u);
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        v37 = v44;

        (*(v33 + 8))(v1, v7);
        (*(v37 + 8))(v17, v11);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  sub_1E408AA80();
LABEL_4:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E408A950(unint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(a1);
  sub_1E4207574();
  result = sub_1E32AE9B0(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for CollectionGroupViewModel();
    if (!swift_dynamicCastClass())
    {

      return 0;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1E408AA80()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_11_14();
  v60 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v49 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0, &unk_1E429BA90);
  OUTLINED_FUNCTION_0_10();
  v50 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_41();
  *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_isApplyingSnapshot) = 1;
  sub_1E4087D08();
  v51 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource;
  v52 = v0;
  v11 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource);
  if (!v11)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v12 = v11;
  sub_1E4200104();

  v63 = sub_1E32AE9B0(v2);
  if (v63)
  {
    if (v63 >= 1)
    {
      v13 = 0;
      v61 = v2 & 0xC000000000000001;
      v56 = (v4 + 8);
      v57 = (v4 + 16);
      *(&v14 + 1) = 2;
      v55 = xmmword_1E4297BE0;
      *&v14 = 134217984;
      v54 = v14;
      *&v14 = 134218240;
      v53 = v14;
      v62 = v2;
      v65 = v1;
      while (1)
      {
        if (v61)
        {
          v15 = MEMORY[0x1E6911E60](v13, v2);
        }

        else
        {
          v15 = *(v2 + 8 * v13 + 32);
        }

        v17 = sub_1E40502A4(v16);
        v19 = v18;
        v21 = v20;
        v66 = v17;
        v67 = v18;
        v68 = v20;
        v22 = sub_1E41FFFD4();
        v24 = v23;
        v25 = (*(*v15 + 872))();
        v26 = v25;
        v27 = v25 >> 62;
        if (v24)
        {
          if (v25)
          {
            if (v27)
            {
              if (OUTLINED_FUNCTION_59_37())
              {
LABEL_12:
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848, &qword_1E42E76E0);
                v28 = swift_allocObject();
                *(v28 + 16) = v55;
                *(v28 + 32) = v17;
                *(v28 + 40) = v19;
                *(v28 + 48) = v21;

                sub_1E41FFFB4();

                v29 = OUTLINED_FUNCTION_47_58();
                sub_1E408B0D0(v29, v30, v31, v32);
                v33 = sub_1E324FBDC();
                (*v57)(v59, v33, v60);

                v34 = sub_1E41FFC94();
                v35 = sub_1E42067E4();
                if (OUTLINED_FUNCTION_104(v35))
                {
                  v36 = swift_slowAlloc();
                  *v36 = v54;
                  if (v27)
                  {
                    v37 = OUTLINED_FUNCTION_59_37();
                  }

                  else
                  {
                    v37 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  *(v36 + 4) = v37;

                  _os_log_impl(&dword_1E323F000, v34, v35, "MultiGroupHorizontalCollectionController::Did Append a new section with %ld items", v36, 0xCu);
                  OUTLINED_FUNCTION_6_0();
                }

                else
                {

                  swift_bridgeObjectRelease_n();
                }

                (*v56)(v59, v60);
                goto LABEL_36;
              }
            }

            else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          if (v25)
          {
            if (v27)
            {
              if (OUTLINED_FUNCTION_59_37())
              {
LABEL_18:
                v38 = OUTLINED_FUNCTION_47_58();
                sub_1E408B0D0(v38, v39, v40, v41);
                v42 = sub_1E324FBDC();
                (*v57)(v58, v42, v60);

                v43 = sub_1E41FFC94();
                v44 = sub_1E42067E4();
                if (OUTLINED_FUNCTION_104(v44))
                {
                  v45 = swift_slowAlloc();
                  *v45 = v53;
                  if (v27)
                  {
                    v46 = OUTLINED_FUNCTION_59_37();
                  }

                  else
                  {
                    v46 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  *(v45 + 4) = v46;

                  *(v45 + 12) = 2048;
                  *(v45 + 14) = v22;
                  _os_log_impl(&dword_1E323F000, v43, v44, "MultiGroupHorizontalCollectionController::Did Append %ld items to section %ld", v45, 0x16u);
                  OUTLINED_FUNCTION_6_0();
                }

                else
                {

                  swift_bridgeObjectRelease_n();
                }

                (*v56)(v58, v60);
                goto LABEL_36;
              }
            }

            else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_18;
            }
          }
        }

LABEL_36:
        v1 = v65;
        v2 = v62;
        if (v63 == ++v13)
        {
          goto LABEL_37;
        }
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_37:
  v47 = *(v52 + v51);
  if (v47)
  {
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = v47;
    OUTLINED_FUNCTION_50();

    sub_1E42000D4();

    (*(v50 + 8))(v1, v64);

    OUTLINED_FUNCTION_25_2();
    return;
  }

LABEL_41:
  __break(1u);
}

void sub_1E408B0D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v18 = sub_1E32AE9B0(a4);

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v18 == v6)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0, &unk_1E429BA90);
      sub_1E41FFF74();

      return;
    }

    if ((a4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v6, a4);
    }

    else
    {
      if (v6 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    v9 = sub_1E4050F14(v8, a1, a2);
    v11 = v10;
    v13 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1E40599A8(0, *(v7 + 2) + 1, 1, v7);
    }

    v15 = *(v7 + 2);
    v14 = *(v7 + 3);
    if (v15 >= v14 >> 1)
    {
      v7 = sub_1E40599A8((v14 > 1), v15 + 1, 1, v7);
    }

    *(v7 + 2) = v15 + 1;
    v16 = &v7[24 * v15];
    *(v16 + 4) = v9;
    *(v16 + 5) = v11;
    *(v16 + 6) = v13;

    ++v6;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_1E408B2D0()
{
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_isApplyingSnapshot) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel);
    if (v1)
    {
      v2 = type metadata accessor for CollectionViewModel();

      if (sub_1E39BD1F0(v2, &off_1F5D96700))
      {
        OUTLINED_FUNCTION_111();
        if (((*(v3 + 1488))() & 1) == 0)
        {
          v4 = sub_1E4087E90();
          v5 = *(&v4->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView);
          v6 = v5;

          if (v5)
          {
            v7 = v6;
            [v7 vuiContentSize];
            v9 = v8;
            [v7 vuiContentOffset];
            v11 = v10;
            v13 = v12;
            [v7 vuiBounds];
            v15 = v14;
            v17 = v16;

            v18 = COERCE_DOUBLE((*(*v1 + 1552))());
            if (v19)
            {
              v20 = 1.0;
            }

            else
            {
              v20 = v18;
            }

            v21.origin.x = v11;
            v21.origin.y = v13;
            v21.size.width = v15;
            v21.size.height = v17;
            if (v9 - CGRectGetMaxX(v21) <= v15 * v20)
            {
              sub_1E408E050();
            }
          }
        }
      }
    }
  }
}

void sub_1E408B498()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel))
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 1040);

    v2(v3);
    OUTLINED_FUNCTION_11_5();

    if (v2)
    {
      LOBYTE(v45) = sub_1E41FE854();
      v46 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4C0, &unk_1E42A0990);
      v4 = sub_1E3827828(&qword_1EE23B578, &unk_1ECF3F4C0, &unk_1E42A0990);
      v12 = OUTLINED_FUNCTION_46_63(v4, v5, v6, v7, v8, v9, v10, v11, v38, v2, v41, v42, v43, v44, v45);
      sub_1E38D2054(v12, v13);

      if (v48)
      {
        v15 = (*(*v48 + 872))(v14);
        if (v15)
        {
          v16 = v15;
          LOBYTE(v45) = sub_1E41FE844();
          v46 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
          v17 = sub_1E3827828(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0);
          v25 = OUTLINED_FUNCTION_46_63(v17, v18, v19, v20, v21, v22, v23, v24, v39, v16, v41, v42, v43, v44, v45);
          sub_1E38D2054(v25, v26);

          (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(&v45, v27);
          if (v47)
          {
            sub_1E327F454(&v45, &v40);
            sub_1E325F7FC(&v45, &qword_1ECF2C970, &qword_1E429D870);
            v29 = v43;
            v28 = v44;
            __swift_project_boxed_opaque_existential_1(&v40, v43);
            v30 = (*(*(v28 + 8) + 32))(v29);
            __swift_destroy_boxed_opaque_existential_1(&v40);
          }

          else
          {
            sub_1E325F7FC(&v45, &qword_1ECF2C970, &qword_1E429D870);
            v30 = 0;
          }

          v31 = sub_1E4087E90();
          v32 = *(&v31->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView);
          v33 = v32;

          if (v32)
          {
            v34 = sub_1E41FE7E4();
            v35 = [v33 vui:v34 cellForItemAtIndexPath:?];

            if (v35)
            {
              v36 = v35;
            }
          }

          else
          {
            v35 = 0;
          }

          OUTLINED_FUNCTION_26();
          (*(v37 + 800))(2, v30, v35, 0);
        }

        else
        {
        }
      }
    }
  }
}

void sub_1E408B880(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource);
  if (v4)
  {
    v6 = v4;
    sub_1E42000B4();

    v7 = v27[2];
    if (v27[1])
    {
      OUTLINED_FUNCTION_26();
      v9 = *(v8 + 576);

      v11 = v9(v10);
      if (v11)
      {
        v12 = v11;
        v13 = [a2 vuiCellView];
        if (v13)
        {
          v14 = v13;
          (*((*MEMORY[0x1E69E7D40] & *v3) + 0xB8))(v27);
          if (v27[3])
          {
            sub_1E327F454(v27, v24);
            sub_1E325F7FC(v27, &qword_1ECF2C970, &qword_1E429D870);
            v15 = v14;
            v16 = v25;
            v17 = v26;
            __swift_project_boxed_opaque_existential_1(v24, v25);
            v18 = *(v17 + 16);
            v19 = v17;
            v14 = v15;
            v18(v15, v12, v16, v19);
            v20 = __swift_destroy_boxed_opaque_existential_1(v24);
          }

          else
          {
            v20 = sub_1E325F7FC(v27, &qword_1ECF2C970, &qword_1E429D870);
          }

          v21 = v9(v20);
          sub_1E3E8B2A4(v21);

          goto LABEL_12;
        }
      }
    }

LABEL_12:
    sub_1E408B2D0();
    v22 = OUTLINED_FUNCTION_34();
    sub_1E3790548(v22, v23, v7);
    return;
  }

  __break(1u);
}

double sub_1E408BB84()
{
  if (sub_1E3E8B1CC())
  {
    (*((*MEMORY[0x1E69E7D40] & *v0) + 0xB8))(v5);
    if (v5[3])
    {
      sub_1E327F454(v5, v4);
      sub_1E325F7FC(v5, &qword_1ECF2C970, &qword_1E429D870);
      __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      v2 = OUTLINED_FUNCTION_34();
      v3(v2);
      __swift_destroy_boxed_opaque_existential_1(v4);
    }

    else
    {
      sub_1E325F7FC(v5, &qword_1ECF2C970, &qword_1E429D870);
    }

    sub_1E3E8B2A4(0);
  }

  return result;
}

uint64_t sub_1E408BEC4(void *a1)
{
  [a1 vuiBounds];
  OUTLINED_FUNCTION_3();
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB8))(v6);
  if (!v6[3])
  {
    return sub_1E325F7FC(v6, &qword_1ECF2C970, &qword_1E429D870);
  }

  sub_1E327F454(v6, v5);
  sub_1E325F7FC(v6, &qword_1ECF2C970, &qword_1E429D870);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  OUTLINED_FUNCTION_6();
  v2 = OUTLINED_FUNCTION_50();
  v3(v2);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_1E408C028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v7 = OUTLINED_FUNCTION_34();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_50_1();
  sub_1E3D96570(a3, v3, &qword_1ECF309A0, &qword_1E42A7870);
  v11 = sub_1E41FE874();
  result = __swift_getEnumTagSinglePayload(v3, 1, v11);
  if (result != 1)
  {
    v13 = v5 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_cachedCellMetrics;
    if ((*(v5 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_cachedCellMetrics + 80) & 1) == 0)
    {
      goto LABEL_20;
    }

    v14 = *(v5 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel);
    if (!v14)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_12_6();
    v16 = *(v15 + 392);

    if (!v16(v17))
    {

      goto LABEL_20;
    }

    v18 = OUTLINED_FUNCTION_11_14();
    v19 = type metadata accessor for MultiGroupHorizontalCollectionController(v18);
    v20 = *(v5 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastViewWidth);
    v74 = 1;
    v21 = (*(*v14 + 960))(v19);
    if (v21)
    {
      v22 = v21;
      OUTLINED_FUNCTION_26();
      *&v68 = (*(v23 + 984))();
      BYTE8(v68) = v24 & 1;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4D0, &qword_1E429ED88);
      OUTLINED_FUNCTION_53_53(v25, v26, v25);
      type metadata accessor for LayoutGrid();
      v27 = OUTLINED_FUNCTION_51_1();
      v28 = sub_1E3A25B9C(v16, v66, v27 & 1);
      *&v68 = (*(*v16 + 1128))();
      BYTE8(v68) = v29 & 1;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
      OUTLINED_FUNCTION_53_53(v30, v31, v30);
      sub_1E3A25D00(v28, 0, v20, *&v66);
      if (_MergedGlobals_167 != -1)
      {
        OUTLINED_FUNCTION_14_177(&_MergedGlobals_167);
      }

      v32 = sub_1E3859230(*(v22 + 98));
      v34 = v33;
      swift_beginAccess();
      sub_1E3D50F6C(v32, v34, qword_1EE28B028);
      OUTLINED_FUNCTION_60_1();

      if (v32)
      {
        swift_endAccess();
        swift_getObjCClassFromMetadata();
        v35 = OUTLINED_FUNCTION_1_36();
        v38 = [v36 v37];
        v39 = j__OUTLINED_FUNCTION_18();
        v40 = j__OUTLINED_FUNCTION_18();
        v41 = j__OUTLINED_FUNCTION_1_36();
        v43 = v42;
        v44 = OUTLINED_FUNCTION_5_11();
        v45 = j__OUTLINED_FUNCTION_18();
        sub_1E38BAEA8(1, v39 & 1, v40 & 1, 0, 1, 2, v45 & 1, &v66, v41, v43, v44);
        type metadata accessor for UIFactory();
        *&v62 = v38;
        *(&v69 + 1) = &type metadata for CollectionViewCellContext;
        *&v70 = &off_1F5D621F8;
        v46 = swift_allocObject();
        *&v68 = v46;
        v47 = v67[0];
        v46[1] = v66;
        v46[2] = v47;
        *(v46 + 43) = *(v67 + 11);
        v48 = sub_1E3280A90(0, &qword_1EE23AFD0, off_1E8728278);

        sub_1E38E5240(v49, &v62, &v68, 0, 0, v48, v65);

        sub_1E325F7FC(&v68, &qword_1ECF296C0, &unk_1E429BBE0);
        *&v68 = v38;
        v50 = v38;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CA30, qword_1E42A78A0);
        if (swift_dynamicCast())
        {
          if (*(&v63 + 1))
          {
            sub_1E3251BE8(&v62, v65);
            v51 = v65[4];
            __swift_project_boxed_opaque_existential_1(v65, v65[3]);
            v52 = OUTLINED_FUNCTION_76();
            v53(v52, v51);
            v60 = v69;
            v61 = v68;
            v58 = v71;
            v59 = v70;
            v54 = v72;
            v55 = v73;

            __swift_destroy_boxed_opaque_existential_1(v65);
            v56 = 0;
LABEL_19:

            *v13 = v61;
            *(v13 + 16) = v60;
            *(v13 + 32) = v59;
            *(v13 + 48) = v58;
            *(v13 + 64) = v54;
            *(v13 + 72) = v55;
            *(v13 + 80) = v56;
LABEL_20:
            OUTLINED_FUNCTION_37_1();
            return (*(v57 + 8))(v3, v11);
          }
        }

        else
        {
          v64 = 0;
          v63 = 0u;
          v62 = 0u;
        }

        sub_1E325F7FC(&v62, &qword_1ECF3F4E0, &qword_1E42E91D0);
      }

      else
      {
        swift_endAccess();
      }
    }

    v54 = 0;
    v55 = 0;
    v61 = 0u;
    v56 = v74;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

void sub_1E408C7E8(uint64_t a1)
{
  v3 = v1;
  v5 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v9 = *(v1 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel);
  if (v9)
  {

    MEMORY[0x1E6909190](0, a1);
    v10 = sub_1E4087D60();
    v11 = sub_1E408D37C(v2, v10);

    v12 = type metadata accessor for MultiGroupHorizontalCollectionController(0);
    v13 = *(v1 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastViewWidth);
    v14 = (*(*v9 + 1040))(v12);
    if (v14)
    {
      v30[1] = v14;
      *&v28[0] = a1;
      BYTE8(v28[0]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4C0, &unk_1E42A0990);
      sub_1E3827828(&qword_1EE23B578, &unk_1ECF3F4C0, &unk_1E42A0990);
      sub_1E38D2054(v28, v30);

      if (v30[0])
      {
        OUTLINED_FUNCTION_8();
        (*(v15 + 904))(v16, v17);
        OUTLINED_FUNCTION_26_5();

        if (&unk_1E42A0990)
        {
          v18 = type metadata accessor for UIFactory();
          v29 = 0;
          memset(v28, 0, sizeof(v28));
          v19 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);

          sub_1E393D92C(v20, v11, v28, 0, v19);
          OUTLINED_FUNCTION_60_1();

          sub_1E325F7FC(v28, &qword_1ECF296C0, &unk_1E429BBE0);
          if (v18)
          {
            type metadata accessor for LayoutGrid();
            v21 = v18;
            sub_1E3A258E4(v13);
            [v21 vui:v13 - v22 - v23 sizeThatFits:0.0];
            OUTLINED_FUNCTION_18_3();

            v24 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___cachedHeaderViews;
            v25 = *(v3 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController____lazy_storage___cachedHeaderViews);
            v26 = v21;
            OUTLINED_FUNCTION_26_5();

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v28[0] = v25;
            sub_1E408F548(&unk_1E42A0990, v2, isUniquelyReferenced_nonNull_native);

            (*(v7 + 8))(v2, v5);
            *(v3 + v24) = *&v28[0];

            goto LABEL_9;
          }
        }
      }
    }

    (*(v7 + 8))(v2, v5);
  }

LABEL_9:
  OUTLINED_FUNCTION_17_4();
}

double sub_1E408CBB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *MEMORY[0x1E69DDCE0];
  if (a3)
  {
    type metadata accessor for LayoutGrid();
    sub_1E3A25950(*(v3 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastViewWidth));
  }

  return v4;
}

void sub_1E408CC98(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - v7;
  if (!a1)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1E3D96570(a3, v16 - v7, &qword_1ECF309A0, &qword_1E42A7870);
  sub_1E41FE874();
  v9 = OUTLINED_FUNCTION_11_5();
  if (__swift_getEnumTagSinglePayload(v9, 1, a3) == 1)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v10 = sub_1E41FE7E4();
  OUTLINED_FUNCTION_37_1();
  (*(v11 + 8))(v8, a3);
  v12 = [a1 vui:v10 cellForItemAtIndexPath:?];

  if (v12)
  {
    v16[1] = &unk_1F5F79530;
    if (swift_dynamicCastObjCProtocolConditional())
    {
      v13 = OUTLINED_FUNCTION_1_36();
      [v14 v15];
      OUTLINED_FUNCTION_3();
    }
  }

  OUTLINED_FUNCTION_6();
}

void sub_1E408CF28()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v53 = v10;
    v54 = v1;
    if (*(Strong + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel) && (OUTLINED_FUNCTION_8(), v16 += 130, v17 = *v16, v18 = v16, v19 = , v17(v19), OUTLINED_FUNCTION_26_5(), , v18))
    {
      v20 = sub_1E41FE854();
      sub_1E34AF4E4(v20, (v18 & 0xC000000000000001) == 0, v18);
      if ((v18 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v20, v18);
      }

      else
      {
        OUTLINED_FUNCTION_60_38();
      }

      OUTLINED_FUNCTION_8();
      (*(v21 + 904))();
      OUTLINED_FUNCTION_26_5();

      v22 = OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_supplementaryKindToReuseIdentifierMap;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v23 = *&v15[v22];

      v52 = v18;

      v24 = sub_1E37D26AC(v5, v3, v23);
      v26 = v25;

      if (v26)
      {
        v27 = sub_1E4205ED4();
        sub_1E4205ED4();
        OUTLINED_FUNCTION_26_5();

        v28 = sub_1E41FE7E4();
        v29 = [v7 vui:v27 dequeueReusableSupplementaryViewOfKind:v24 withReuseIdentifier:v28 forIndexPath:?];

        v30 = type metadata accessor for UIFactory();
        v56 = 0;
        memset(v55, 0, sizeof(v55));
        v31 = sub_1E3280A90(0, &qword_1EE23B018, 0x1E69DC7E8);
        v32 = v52;

        v33 = v29;
        sub_1E393D92C(v32, v29, v55, 0, v31);
        OUTLINED_FUNCTION_60_1();

        sub_1E325F7FC(v55, &qword_1ECF296C0, &unk_1E429BBE0);
        if (v33)
        {
          v35 = *(v32 + 16);
          v34 = *(v32 + 24);
          ObjectType = swift_getObjectType();
          v37 = dynamic_cast_existential_1_conditional(v33, ObjectType, &protocol descriptor for SupplementaryViewWithAction);
          if (v37)
          {
            v51 = v37;
            v49 = v38;
            v50 = swift_getObjectType();
            OUTLINED_FUNCTION_4_0();
            v39 = swift_allocObject();
            OUTLINED_FUNCTION_45_2(v39);
            v48 = v34;
            v40 = v53;
            (*(v53 + 16))(&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v54, v8);
            v41 = (*(v40 + 80) + 40) & ~*(v40 + 80);
            v42 = swift_allocObject();
            v43 = v35;
            v44 = v42;
            v42[2] = v39;
            v42[3] = v43;
            v42[4] = v48;
            (*(v40 + 32))(v42 + v41, &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
            v45 = v49;
            v54 = *(v49 + 16);

            v46 = v33;
            v54(sub_1E408FCFC, v44, v50, v45);
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

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void *sub_1E408D37C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E408F31C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

void sub_1E408D3C4(unint64_t a1, uint64_t a2, void *a3)
{
  v17 = sub_1E32AE9B0(a1);
  for (i = 0; ; ++i)
  {
    if (v17 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = sub_1E40502A4(v6);
    v9 = v8;
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31848, &qword_1E42E76E0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1E4297BE0;
    *(v12 + 32) = v7;
    *(v12 + 40) = v9;
    *(v12 + 48) = v11;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0, &unk_1E429BA90);
    sub_1E41FFFB4();

    v14 = (*(*v5 + 872))(v13);
    if (v14)
    {
      v15 = v14;
      if (v14 >> 62)
      {
        if (sub_1E4207384())
        {
LABEL_10:
          sub_1E408B0D0(v7, v9, v11, v15);
        }
      }

      else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

LABEL_13:
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_1E408D5DC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v52 = v7 - v6;
  v8 = *(*v1 + 968);
  v9 = v8();
  if (v9)
  {

    OUTLINED_FUNCTION_26();
    if (!(*(v10 + 968))())
    {
      goto LABEL_52;
    }
  }

  if ((v8)(v9))
  {
  }

  else
  {
    OUTLINED_FUNCTION_26();
    if ((*(v16 + 968))())
    {

      goto LABEL_52;
    }
  }

  OUTLINED_FUNCTION_12_6();
  v11 += 130;
  v12 = *v11;
  v13 = (*v11)();
  v14 = v13;
  v50 = v12;
  if (v13)
  {
    v15 = sub_1E32AE9B0(v13);
  }

  else
  {
    v15 = 0;
  }

  OUTLINED_FUNCTION_26();
  v17 += 130;
  v18 = *v17;
  v19 = (*v17)();
  if (!v19)
  {
    if (!v14)
    {
      goto LABEL_17;
    }

LABEL_52:
    LODWORD(v21) = 1;
    goto LABEL_53;
  }

  sub_1E32AE9B0(v19);
  OUTLINED_FUNCTION_65_31();

  if (v14)
  {
    v20 = v15 == v2;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    goto LABEL_52;
  }

LABEL_17:
  v21 = (v50)(v19);
  if (!v21)
  {
    goto LABEL_53;
  }

  v22 = v18();
  v23 = v52;
  if (!v22)
  {
    goto LABEL_58;
  }

  v24 = v22;
  v25 = sub_1E32AE9B0(v21);
  if (!v25)
  {

LABEL_58:

    LODWORD(v21) = 0;
    goto LABEL_54;
  }

  v26 = v25;
  v45 = v4;
  v46 = v2;
  v27 = sub_1E32AE9B0(v24);
  v28 = 0;
  v49 = v21;
  v51 = v21 & 0xC000000000000001;
  v47 = v21 + 32;
  v48 = v26;
  while (2)
  {
    sub_1E34AF4E4(v28, v51 == 0, v21);
    if (v51)
    {
      v29 = MEMORY[0x1E6911E60](v28, v21);
    }

    else
    {
      v29 = *(v47 + 8 * v28);
    }

    if (__OFADD__(v28++, 1))
    {
      __break(1u);
      return;
    }

    for (i = 0; ; ++i)
    {
      if (v27 == i)
      {

        goto LABEL_49;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1E6911E60](i, v24);
      }

      else
      {
        if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v32 = *(v24 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:

LABEL_63:
        LODWORD(v21) = 1;
        goto LABEL_64;
      }

      v33 = v32[3];
      v34 = v29[3];
      if (v33)
      {
        break;
      }

      if (!v34)
      {
        goto LABEL_42;
      }

LABEL_40:
    }

    if (!v34)
    {
      goto LABEL_40;
    }

    v35 = v32[2] == v29[2] && v33 == v34;
    if (!v35 && (sub_1E42079A4() & 1) == 0)
    {
      goto LABEL_40;
    }

LABEL_42:
    v36 = (*v29 + 904);
    v37 = *v36;
    v38 = (*v36)();
    if (v38)
    {

      if (!(*(*v32 + 904))(v39))
      {

        goto LABEL_63;
      }
    }

    if ((v37)(v38))
    {

      v26 = v48;
      v21 = v49;
    }

    else
    {
      v40 = (*(*v32 + 904))();

      v26 = v48;
      v21 = v49;
      if (v40)
      {
        goto LABEL_62;
      }
    }

LABEL_49:
    if (v28 != v26)
    {
      continue;
    }

    break;
  }

  LODWORD(v21) = 0;
LABEL_64:
  v4 = v45;
  v2 = v46;
LABEL_53:
  v23 = v52;
LABEL_54:
  v41 = sub_1E324FBDC();
  (*(v4 + 16))(v23, v41, v2);
  v42 = sub_1E41FFC94();
  v43 = sub_1E42067D4();
  if (OUTLINED_FUNCTION_104(v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 67109120;
    *(v44 + 4) = v21;
    _os_log_impl(&dword_1E323F000, v42, v43, "MultiGroupHorizontalCollectionController::needs to reload?: [%{BOOL}d]", v44, 8u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v23, v2);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E408DB88()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v60 = v7 - v6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0, &unk_1E429BA90);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v47 - v11;
  v12 = sub_1E4087E90();
  v13 = *(&v12->receiver + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView);
  v59 = v13;

  if (!v13)
  {
    goto LABEL_27;
  }

  v49 = @"VUIShelfLayoutElementKindHeader";
  v14 = [v59 indexPathsForVisibleSupplementaryElementsOfKind_];
  v15 = sub_1E42062B4();

  if (*(v15 + 16))
  {
    v16 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource);
    if (!v16)
    {
LABEL_29:
      __break(1u);
      return;
    }

    v17 = v16;
    sub_1E4200104();

    v18 = sub_1E32AE9B0(v2);
    if (v18)
    {
      v48 = v9;
      if (v18 >= 1)
      {
        v19 = 0;
        v57 = v2 & 0xC000000000000001;
        v58 = v18;
        v52 = v2;
        v53 = v2 + 32;
        v51 = v4 + 8;
        while (1)
        {
          if (v57)
          {
            MEMORY[0x1E6911E60](v19, v2);
          }

          else
          {
          }

          OUTLINED_FUNCTION_12_6();
          if ((*(v20 + 904))())
          {

            v22 = sub_1E40502A4(v21);
            v24 = v23;
            v26 = v25;
            *&v61 = v22;
            *(&v61 + 1) = v23;
            *&v62 = v25;
            v27 = sub_1E41FFFD4();
            if ((v28 & 1) == 0)
            {
              v54 = v26;
              MEMORY[0x1E6909190](0, v27);
              v29 = 0;
              v30 = *(v15 + 16);
              while (v30 != v29)
              {
                v31 = v24;
                v32 = v29 + 1;
                OUTLINED_FUNCTION_8_199();
                sub_1E408F7C0(&qword_1EE28A410, v33);
                v34 = sub_1E4205E84();
                v29 = v32;
                v24 = v31;
                if (v34)
                {
                  v35 = v59;
                  v36 = v49;
                  v37 = sub_1E41FE7E4();
                  v50 = [v35 supplementaryViewForElementKind:v36 atIndexPath:v37];

                  type metadata accessor for UIFactory();
                  v63 = 0;
                  v61 = 0u;
                  v62 = 0u;
                  sub_1E3280A90(0, &qword_1EE23B018, 0x1E69DC7E8);
                  OUTLINED_FUNCTION_60_1();

                  v39 = v50;
                  v40 = sub_1E393D92C(v38, v50, &v61, 0, v37);

                  sub_1E325F7FC(&v61, &qword_1ECF296C0, &unk_1E429BBE0);
                  v41 = OUTLINED_FUNCTION_44_64();
                  v42(v41);
                  goto LABEL_19;
                }
              }

              v43 = OUTLINED_FUNCTION_44_64();
              v44(v43);

LABEL_19:
              v2 = v52;
              goto LABEL_20;
            }
          }

LABEL_20:
          if (++v19 == v58)
          {

            v9 = v48;
            goto LABEL_26;
          }
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_26:
    (*(v9 + 8))(v56, v55);
LABEL_27:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E408E050()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v20 = v2;
  v7 = type metadata accessor for CollectionViewModel();
  if (sub_1E39BD1F0(v7, &off_1F5D96700))
  {
    OUTLINED_FUNCTION_111();
    if (((*(v8 + 1488))() & 1) == 0)
    {
      OUTLINED_FUNCTION_111();
      v20 = (*(v9 + 1160))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10, &qword_1E42B9000);
      v10 = sub_1E4205F84();
      v12 = v11;
      v13 = sub_1E324FBDC();
      (*(v5 + 16))(v0, v13, v3);

      v14 = sub_1E41FFC94();
      v15 = sub_1E4206814();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v20 = v17;
        *v16 = 136315138;
        v18 = sub_1E3270FC8(v10, v12, &v20);

        *(v16 + 4) = v18;
        _os_log_impl(&dword_1E323F000, v14, v15, "MultiGroupHorizontalCollectionController::needs more content with context: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v17);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v5 + 8))(v0, v3);
      OUTLINED_FUNCTION_111();
      (*(v19 + 1504))(2, 0, 1, 0, 0);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E408E2E0(void *a1)
{
  v4 = *&v1[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView];
  *&v1[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView] = a1;
  v2 = *&v1[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView];
  v3 = a1;
  [v1 vui:v2 addSubview:v4 oldView:?];
}

void sub_1E408E364(void *a1)
{
  v7 = *&v1[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_decorationView];
  *&v1[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_decorationView] = a1;
  v2 = a1;
  v3 = [v1 subviews];
  sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  v4 = sub_1E42062B4();

  if (sub_1E32AE9B0(v4))
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E6911E60](0, v4);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v5 = *(v4 + 32);
    }

    v6 = v5;

    [v1 vui:*&v1[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_decorationView] insertSubview:v6 belowSubview:v7 oldView:?];
  }

  else
  {

    [v1 vui:*&v1[OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_decorationView] addSubview:v7 oldView:?];
  }
}

void sub_1E408E4A8()
{
  *(v0 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView) = 0;
  v1 = (v0 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_viewContentInsets);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = *MEMORY[0x1E69DDCE0];
  v1[1] = v2;
  *(v0 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView) = 0;
  *(v0 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_decorationView) = 0;
  OUTLINED_FUNCTION_23_103();
  __break(1u);
}

double sub_1E408E538(uint64_t a1, double a2)
{
  v3 = v2;
  v4 = a1;
  v43 = type metadata accessor for MultiGroupHorizontalCollectionController.MultiGroupContainerView();
  v6 = OUTLINED_FUNCTION_170();
  objc_msgSendSuper2(v7, v8, v6, v3, v43);
  if (v4)
  {
    v10 = *(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_invalidationHandler);

    v11 = OUTLINED_FUNCTION_170();
    v10(v11);

    [*(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_shelfLayout) computedContentHeight];
    if (*(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView))
    {
      v12 = OUTLINED_FUNCTION_170();
      [v13 v14];
    }

    sub_1E3952BD8(*(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_viewContentInsets), *(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_viewContentInsets + 8), *(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_viewContentInsets + 16));
  }

  else
  {
    v15 = v9;
    v16 = *(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_decorationView);
    if (v16)
    {
      v17 = v16;
      OUTLINED_FUNCTION_15_167();
      [v17 setFrame_];
    }

    type metadata accessor for LayoutGrid();
    OUTLINED_FUNCTION_15_167();
    Width = CGRectGetWidth(v44);
    sub_1E3A258E4(Width);
    v20 = v19;
    v22 = v21;
    OUTLINED_FUNCTION_15_167();
    v23 = OUTLINED_FUNCTION_170();
    v26 = sub_1E3CEE8A0(v23, v24, v20, v22, v25);
    v29 = *(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_headerView);
    if (v29)
    {
      v30 = v26;
      v31 = v27;
      v32 = v28;
      v33 = v29;
      [v33 vui:v31 sizeThatFits:v32];
      v35 = v34;
      [v33 setFrame_];

      v37 = v35 + 0.0;
    }

    else
    {
      v37 = 0.0;
    }

    OUTLINED_FUNCTION_15_167();
    v39 = v38;
    [*(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_shelfLayout) computedContentHeight];
    v41 = *(v3 + OBJC_IVAR____TtCC8VideosUI40MultiGroupHorizontalCollectionControllerP33_7CC52912EA9693611D051B05CABBAE5523MultiGroupContainerView_collectionView);
    if (v41)
    {
      [v41 setFrame_];
    }

    return v15;
  }

  return a2;
}

id sub_1E408E83C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1E408E994(id result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource);
  if (v3)
  {
    v4 = v2;
    v5 = result;
    v6 = v3;
    sub_1E42000B4();

    if (!v13)
    {
      return 0;
    }

    v7 = [v5 contextMenuInteraction];
    v8 = OUTLINED_FUNCTION_53();
    v12 = sub_1E3C9C60C(v8, v9, v7, v5, v10, v4, v11);

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E408EBF8(uint64_t a1, void *a2, void *a3)
{
  sub_1E3C9EA54();
  if (a3)
  {
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;
    v9[4] = sub_1E408F0BC;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1E378AEA4;
    v9[3] = &block_descriptor_13_5;
    v7 = _Block_copy(v9);
    v8 = a2;

    [a3 addCompletion_];
    _Block_release(v7);
  }
}

void sub_1E408ED94()
{
  OUTLINED_FUNCTION_31_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_41();
  v5 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v7 = OUTLINED_FUNCTION_53();
  sub_1E3D96570(v7, v8, &qword_1ECF309A0, &qword_1E42A7870);
  if (__swift_getEnumTagSinglePayload(v1, 1, v5) == 1)
  {
    sub_1E325F7FC(v1, &qword_1ECF309A0, &qword_1E42A7870);
LABEL_11:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v9 = OUTLINED_FUNCTION_34();
  v10(v9);
  v11 = *(v0 + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_dataSource);
  if (v11)
  {
    v12 = v11;
    sub_1E42000B4();

    if (v23)
    {
      OUTLINED_FUNCTION_26();
      if (!(*(v13 + 392))())
      {
        v19 = OUTLINED_FUNCTION_3_241();
        v20(v19);

        goto LABEL_11;
      }

      type metadata accessor for MonogramLockupCellLayout();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = (*(*v14 + 1800))();
        (*(*v15 + 1744))(v15);
        OUTLINED_FUNCTION_65_31();

        (*(*v2 + 432))(v16);

        v17 = OUTLINED_FUNCTION_3_241();
        v18(v17);
        goto LABEL_11;
      }
    }

    v21 = OUTLINED_FUNCTION_3_241();
    v22(v21);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_1E408F0BC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_contextMenuInteractor);
    OUTLINED_FUNCTION_50();
    sub_1E3C9F738();
  }
}

uint64_t sub_1E408F12C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 130))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 120);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E408F180(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 130) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 130) = 0;
    }

    if (a2)
    {
      *(result + 120) = a2;
    }
  }

  return result;
}

void sub_1E408F210(uint64_t a1)
{
  sub_1E3CA2E5C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1E408F31C(uint64_t a1)
{
  sub_1E41FE874();
  sub_1E408F7C0(&unk_1EE28A418, MEMORY[0x1E6969C38]);
  v2 = sub_1E4205DA4();

  return sub_1E408F3A0(a1, v2);
}

unint64_t sub_1E408F3A0(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_1E41FE874();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4, v6);
    sub_1E408F7C0(&qword_1EE28A410, MEMORY[0x1E6969C50]);
    v10 = sub_1E4205E84();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

void sub_1E408F548(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_1E41FE874();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v12 = sub_1E408F31C(a2);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4B0, &qword_1E42E91C8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_1E408F31C(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v14);
    *(v19 + 8 * v14) = a1;
  }

  else
  {
    (*(v8 + 16))(v10, a2, v7);
    sub_1E408F708(v14, v10, a1, v18);
  }
}

uint64_t sub_1E408F708(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1E41FE874();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1E408F7C0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E41FE874();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E408F804()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_isApplyingSnapshot) = 0;
    sub_1E4087D08();
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = v2;
    sub_1E408B2D0();
  }
}

void sub_1E408F888()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  OUTLINED_FUNCTION_17_2(v0);
  v1 = OUTLINED_FUNCTION_48_54();

  sub_1E408933C(v1, v2);
}

void *sub_1E408F8E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5)
{
  (*(*a5 + 368))(a1, a2, a3, a4);
  v7 = sub_1E4205ED4();

  v8 = sub_1E41FE7E4();
  v9 = [a1 vui:v7 dequeueReusableCellWithIdentifier:v8 indexPath:?];

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      OUTLINED_FUNCTION_111();
      if ((*(v13 + 392))())
      {
        OUTLINED_FUNCTION_11_14();
        type metadata accessor for LayoutGrid();
        sub_1E3A2579C(*&v12[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_lastViewWidth]);
        OUTLINED_FUNCTION_8_21([v12 vuiTraitCollection]);
        v15 = v14;
        (*(*v7 + 1640))();

        [a1 bounds];
        sub_1E3DF9E68(v42);
        if (v12[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_cachedCellMetrics + 80])
        {
          v16 = 0;
        }

        else
        {
          v16 = *&v12[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_cachedCellMetrics];
        }

        if (v12[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_cachedCellMetrics + 80])
        {
          v17 = 0;
        }

        else
        {
          v17 = *&v12[OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_cachedCellMetrics + 8];
        }

        v41[136] = 0;
        j__OUTLINED_FUNCTION_18();
        j__OUTLINED_FUNCTION_18();
        j__OUTLINED_FUNCTION_18();
        v18 = OUTLINED_FUNCTION_5_11();
        j__OUTLINED_FUNCTION_18();
        v19 = OUTLINED_FUNCTION_17_4();
        sub_1E38BAEA8(v20, v21, v22, 0, 1, 2, v23, v24, v19, v25, v18);
        __src[0] = v16;
        __src[1] = v17;
        LOBYTE(__src[2]) = 0;
        OUTLINED_FUNCTION_38_76(&__src[2] + 1);
        memcpy(&v41[48], __src, 0x52uLL);
        v38 = v10;
        sub_1E37CCDA0(__src, v34);
        v26 = v10;
        if (TVAppFeature.isEnabled.getter(10, v27, v28))
        {
          v34[0] = v16;
          v34[1] = v17;
          v35 = 0;
          OUTLINED_FUNCTION_38_76(v36);
          sub_1E37CCDFC(v34);
          v29 = swift_allocObject();
          memcpy((v29 + 16), v41, 0x82uLL);
          v30 = &off_1F5D94980;
          v31 = &type metadata for MultiGroupCellContext;
        }

        else
        {
          sub_1E37CCDFC(__src);
          v29 = swift_allocObject();
          *(v29 + 16) = v16;
          *(v29 + 24) = v17;
          *(v29 + 32) = 0;
          OUTLINED_FUNCTION_38_76((v29 + 33));
          v30 = &off_1F5D868A0;
          v31 = &unk_1F5D869A0;
        }

        *&v36[7] = v31;
        v37 = v30;
        v34[0] = v29;
        type metadata accessor for UIFactory();
        v32 = sub_1E3280A90(0, &qword_1EE23AFD0, off_1E8728278);
        sub_1E38E5240(a5, &v38, v34, 0, 0, v32, &v39);

        sub_1E325F7FC(v34, &qword_1ECF296C0, &unk_1E429BBE0);
      }
    }
  }

  else
  {
  }

  return v10;
}

uint64_t (**sub_1E408FCFC())(void)
{
  v3 = v0;
  v4 = sub_1E41FE874();
  OUTLINED_FUNCTION_17_2(v4);
  v6 = *(v5 + 80);
  v28 = *(v0 + 24);
  v29 = *(v0 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v8 = Strong;
  v9 = *(Strong + OBJC_IVAR____TtC8VideosUI40MultiGroupHorizontalCollectionController_internalCollectionViewModel);
  if (!v9 || (OUTLINED_FUNCTION_8(), v1 = *(v10 + 1040), v11 = , (v1)(v11), OUTLINED_FUNCTION_65_31(), , !v2))
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  if (v29)
  {
    v27 = v8;
    v12 = sub_1E32AE9B0(v2);
    v13 = 0;
    v30 = v2 & 0xC000000000000001;
    v14 = v2 & 0xFFFFFFFFFFFFFF8;
    while (v12 != v13)
    {
      if (v30)
      {
        v9 = MEMORY[0x1E6911E60](v13, v2);
      }

      else
      {
        if (v13 >= *(v14 + 16))
        {
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_60_38();
      }

      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        MEMORY[0x1E6911E60](v9, v2);
        goto LABEL_28;
      }

      v15 = v2;
      OUTLINED_FUNCTION_8();
      v16 += 113;
      v8 = *v16;
      v1 = v16;
      v17 = (*v16)();
      if (v17 && (v19 = *(v17 + 16), v18 = *(v17 + 24), , , v18))
      {
        if (v19 == v28 && v18 == v29)
        {

LABEL_32:

          (v8)(v25);
          OUTLINED_FUNCTION_11_5();

LABEL_33:
          v8 = v27;
          goto LABEL_34;
        }

        v21 = sub_1E42079A4();

        v2 = v15;
        if (v21)
        {
          goto LABEL_32;
        }
      }

      else
      {

        v2 = v15;
      }

      ++v13;
    }

    v1 = 0;
    goto LABEL_33;
  }

  v22 = (v6 + 40) & ~v6;
  if (sub_1E41FE854() < 0 || (sub_1E41FE854(), v23 = OUTLINED_FUNCTION_76(), v3 + v22 >= sub_1E32AE9B0(v23)))
  {

    v1 = 0;
  }

  else
  {
    v9 = sub_1E41FE854();
    sub_1E34AF4E4(v9, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_60_38();
LABEL_28:

    OUTLINED_FUNCTION_8();
    (*(v24 + 904))();
    OUTLINED_FUNCTION_11_5();
  }

LABEL_34:

  return v1;
}

void sub_1E4090014()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OUTLINED_FUNCTION_6_12();
    sub_1E4088860(0, 0, v2, v3);
  }
}

double OUTLINED_FUNCTION_53_53(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1E4148C68(v3, a3, v4 - 256);
  return result;
}

void *sub_1E4090198(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_bannerImage;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void (*sub_1E40901E0())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_bannerImage;
  OUTLINED_FUNCTION_4_13();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E4090250;
}

void *sub_1E4090268(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_descriptionView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void (*sub_1E40902B0())(uint64_t a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_descriptionView;
  OUTLINED_FUNCTION_4_13();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E4090320;
}

void sub_1E4090338(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E40903B8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_separatorView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void (*sub_1E4090400())(uint64_t a1, char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  OUTLINED_FUNCTION_3_9(v2);
  v3 = OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_separatorView;
  OUTLINED_FUNCTION_4_13();
  v4 = *(v0 + v3);
  *(v1 + 24) = v4;
  v5 = v4;
  return sub_1E4090470;
}

id sub_1E4090488()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_imageViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_roomBannerLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_bannerImage) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_descriptionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_previousWidth) = 0;
  v5 = type metadata accessor for RoomBannerCollectionViewCell();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

void sub_1E4090564()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_imageViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_roomBannerLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_bannerImage) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_descriptionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_separatorView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_previousWidth) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E4090620(char a1, double a2)
{
  v3 = v2;
  if ((a1 & 1) == 0 && [objc_opt_self() isPad])
  {
    v6 = *&v2[OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_previousWidth];
    OUTLINED_FUNCTION_11_187();
    if (v6 == CGRectGetWidth(v83))
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_87();
    v8 = (*(v7 + 128))();
    if (!v8)
    {
      goto LABEL_27;
    }

    v9 = v8;
    type metadata accessor for LayoutGrid();
    OUTLINED_FUNCTION_11_187();
    Width = CGRectGetWidth(v84);
    sub_1E3A2579C(Width);
    OUTLINED_FUNCTION_87();
    v12 = (*(v11 + 152))();
    if (v12)
    {
      v13 = v12;
      v14 = [v3 vuiTraitCollection];
      sub_1E3C2AE10();
      v16 = v15;
      (*(*v13 + 1640))();
    }

    OUTLINED_FUNCTION_11_187();
    v17 = CGRectGetWidth(v85);
    v18 = *(*v9 + 392);

    v20 = v18(v19);

    if (v20)
    {
      type metadata accessor for ImageLayout();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_30();
        v22 = *(v21 + 304);

        v24 = COERCE_DOUBLE(v22(v23));
        if (v25)
        {
          v26 = 0.0;
        }

        else
        {
          v26 = v24;
        }

        (*(*v9 + 208))(COERCE_CGFLOAT(*&v17), 0);
      }

      else
      {
        v26 = 0.0;
      }
    }

    else
    {
      v26 = 0.0;
    }

    OUTLINED_FUNCTION_11_187();
    v27 = CGRectGetWidth(v86);
    v28 = sub_1E3C3E520(v9, v27, v26);
    OUTLINED_FUNCTION_87();
    v30 = *(v29 + 176);
    v31 = v28;
    v32 = v30();
    if (v32)
    {
      v33 = v32;
      v34 = [v32 imageProxy];

      if (!v28)
      {
        if (!v34)
        {
          goto LABEL_26;
        }

        v35 = swift_unknownObjectRelease();
        goto LABEL_25;
      }

      if (v34)
      {

        v35 = swift_unknownObjectRelease();
        if (v28 == v34)
        {

LABEL_26:

          goto LABEL_27;
        }

LABEL_25:
        v36 = (v30)(v35);
        [v36 setImageProxy_];

LABEL_27:
        *&v3[OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_previousWidth] = a2;
        goto LABEL_28;
      }
    }

    else if (!v28)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_28:
  OUTLINED_FUNCTION_87();
  v38 = (*(v37 + 152))();
  if (v38)
  {
    v39 = v38;
    v78 = a1;
    type metadata accessor for LayoutGrid();
    sub_1E3A2579C(a2);
    sub_1E3A25914();
    v41 = v40;
    v43 = v42;
    OUTLINED_FUNCTION_87();
    v45 = *(v44 + 176);
    v46 = v45();
    v47 = 0.0;
    v48 = 0.0;
    v49 = 0.0;
    if (v46)
    {

      v50 = *(*(*v39 + 1736))();
      (*(v50 + 2288))();
      v48 = v51;

      VUIRoundValue();
      v49 = a2;
    }

    v76 = v49;
    OUTLINED_FUNCTION_87();
    v53 = *(v52 + 200);
    v54 = v53();
    if (v54)
    {
      v55 = v54;
      v77 = a2 - v41 - v43;
      v56 = [v54 sizeThatFits_];
      v57 = *(*v39 + 1760);
      (v57)(v56);
      OUTLINED_FUNCTION_30();
      (*(v58 + 152))(v79);

      v59 = v79[0];
      if (v80)
      {
        v59 = 0.0;
      }

      [v55 topMarginWithBaselineMargin_];
      v87.origin.x = OUTLINED_FUNCTION_7_230();
      MaxY = CGRectGetMaxY(v87);
      v57();
      v61 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_30();
      (*(v62 + 152))(v81);

      v63 = *&v81[2];
      if (v82)
      {
        v63 = 0.0;
      }

      [v55 bottomMarginWithBaselineMargin_];
      v47 = MaxY + v64;
      OUTLINED_FUNCTION_87();
      v66 = (*(v65 + 224))();
      if (v66)
      {
        v67 = v66;
        v68 = (*((*v61 & *v66) + 0x70))();
      }

      else
      {
        v68 = 1.0;
      }

      if (v78)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v41 = 0.0;
      v77 = 0.0;
      v68 = 0.0;
      if (a1)
      {
LABEL_49:

        return;
      }
    }

    v69 = v45();
    if (v69)
    {
      v70 = v69;
      [v69 setFrame_];
    }

    [v3 effectiveUserInterfaceLayoutDirection];
    v71 = v53();
    if (v71)
    {
      v72 = v71;
      [v3 bounds];
      OUTLINED_FUNCTION_7_230();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      [v72 setFrame_];
    }

    OUTLINED_FUNCTION_87();
    v74 = (*(v73 + 224))();
    if (v74)
    {
      v75 = v74;
      [v74 setFrame_];
    }

    goto LABEL_49;
  }
}

void *sub_1E4090E28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a2)
  {
    return v3;
  }

  OUTLINED_FUNCTION_30();
  v5 = *(v4 + 488);
  v6 = v3;
  v7 = v5();
  if (!v7)
  {

    return 0;
  }

  v8 = v7;
  if (!*(v7 + 16))
  {

    return 0;
  }

  if ((*(*v2 + 392))())
  {
    type metadata accessor for RoomBannerLayout();
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
      OUTLINED_FUNCTION_12_5();
      v12 = *(v11 + 160);

      v12(v10);
      if (sub_1E373E010(39, v8, v13))
      {
        type metadata accessor for ImageViewModel();
        v14 = swift_dynamicCastClass();
        if (!v14)
        {
        }
      }

      else
      {
        v14 = 0;
      }

      OUTLINED_FUNCTION_12_5();
      v16 = *(v15 + 136);

      v16(v17);
      sub_1E3DF9E68(v53);
      v18 = memcpy(__dst, v54, sizeof(__dst));
      v19 = (*(*v10 + 1736))(v18);
      [v6 vuiBounds];
      Width = CGRectGetWidth(v55);
      v21 = *(*v19 + 208);

      v21(*&Width, 0);

      v23 = (*(*v19 + 304))(v22);
      if (v24)
      {
        v25 = 0;
      }

      else
      {
        v25 = v23;
      }

      v52 = 0;
      type metadata accessor for UIFactory();
      OUTLINED_FUNCTION_12_5();
      v27 = *(v26 + 176);

      v29 = v27(v28);
      *__src = Width;
      v47 = v25;
      __src[1] = v25;
      v30 = v52;
      LOBYTE(__src[2]) = v52;
      memcpy(&__src[2] + 1, v54, 0x41uLL);
      v49[3] = &unk_1F5D869A0;
      v49[4] = &off_1F5D868A0;
      v49[0] = swift_allocObject();
      memcpy((v49[0] + 16), __src, 0x52uLL);
      sub_1E37CCDA0(__src, v48);
      v31 = sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
      v32 = sub_1E393D92C(v14, v29, v49, 0, v31);

      sub_1E373C624(v49);
      OUTLINED_FUNCTION_12_5();
      (*(v33 + 184))(v32);
      v35 = 0.0;
      if ((v30 & 1) == 0)
      {
        v35 = Width;
      }

      *&v6[OBJC_IVAR____TtC8VideosUI28RoomBannerCollectionViewCell_previousWidth] = v35;
      v36 = sub_1E373E010(9, v8, v34);

      OUTLINED_FUNCTION_12_5();
      v38 = *(v37 + 200);
      v39 = v38();
      v40 = sub_1E3280A90(0, &qword_1EE23B1F8, off_1E8728188);
      memset(v48, 0, 40);
      v41 = sub_1E393D92C(v36, v39, v48, 0, v40);

      sub_1E373C624(v48);
      OUTLINED_FUNCTION_12_5();
      v43 = (*(v42 + 208))(v41);
      v44 = (v38)(v43);
      if (v44)
      {

        type metadata accessor for SeparatorView();
        [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      }

      OUTLINED_FUNCTION_12_5();
      (*(v45 + 232))();

      *v48 = Width;
      *(&v48[0] + 1) = v47;
      LOBYTE(v48[1]) = v52;
      memcpy(&v48[1] + 1, __dst, 0x41uLL);
      sub_1E37CCDFC(v48);
    }

    else
    {
    }
  }

  else
  {
  }

  return v3;
}

id sub_1E40913DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RoomBannerCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E409148C(__n128 a1)
{
  if (sub_1E41C8EFC())
  {
    OUTLINED_FUNCTION_30();
    v2 = (*(v1 + 464))();

    if (v2)
    {
      v3 = sub_1E32AE9B0(v2);
      for (i = 0; ; ++i)
      {
        if (v3 == i)
        {

          return;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1E6911E60](i, v2);
          v5 = v6;
        }

        else
        {
          if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_39;
          }

          v5 = *(v2 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          return;
        }

        sub_1E3742F1C(v6, v7, v8);
        sub_1E4206254();
        sub_1E4206254();
        if (v20 == v18 && v21 == v19)
        {
          break;
        }

        v10 = sub_1E42079A4();

        if (v10)
        {
          goto LABEL_18;
        }
      }

LABEL_18:

      v12 = (*(*v5 + 464))(v11);
      if (!v12)
      {
        goto LABEL_36;
      }

      v13 = v12;
      v14 = sub_1E32AE9B0(v12);
      for (j = 0; ; ++j)
      {
        if (v14 == j)
        {

          goto LABEL_36;
        }

        if ((v13 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](j, v13);
        }

        else
        {
          if (j >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }
        }

        if (__OFADD__(j, 1))
        {
          goto LABEL_40;
        }

        sub_1E4206254();
        sub_1E4206254();
        if (v20 == v18 && v21 == v19)
        {
          break;
        }

        v17 = sub_1E42079A4();

        if (v17)
        {
          goto LABEL_35;
        }
      }

LABEL_35:

      type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
      if (!swift_dynamicCastClass())
      {
LABEL_36:
      }
    }
  }
}

id sub_1E40917EC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_notifications) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasBackgrounded) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasPlaybackFullscreen) = 0;

  v3 = OUTLINED_FUNCTION_51_1();
  sub_1E3FEF09C(a1, v3 & 1);
  v5 = v4;
  sub_1E4091868();

  return v5;
}

void sub_1E4091868()
{
  OUTLINED_FUNCTION_31_1();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D160, &qword_1E42DF9B0);
  MEMORY[0x1EEE9AC00](v23);
  v22 = v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v20[1] = v20 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F548, &qword_1E42E92A8);
  OUTLINED_FUNCTION_0_10();
  v24 = v4;
  v25 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v21 = v20 - v6;
  v7 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v14 = [v13 defaultCenter];
  sub_1E4206C14();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E38DF10C();
  sub_1E4200844();

  v15 = *(v9 + 8);
  v15(v12, v7);
  v20[0] = v0;
  OUTLINED_FUNCTION_8_200();
  sub_1E42004C4();
  swift_endAccess();

  v16 = [v13 defaultCenter];
  sub_1E4206C14();

  sub_1E4200744();
  v15(v12, v7);
  v17 = [v13 defaultCenter];
  sub_1E4206C14();

  sub_1E4200744();
  v15(v12, v7);
  sub_1E32752B0(&qword_1ECF3D168, &qword_1ECF3D160, &qword_1E42DF9B0, MEMORY[0x1E695BD60]);
  v18 = v21;
  sub_1E4200444();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E32752B0(&qword_1ECF3F550, &qword_1ECF3F548, &qword_1E42E92A8, MEMORY[0x1E695BDC0]);
  v19 = v24;
  sub_1E4200844();

  (*(v25 + 8))(v18, v19);
  OUTLINED_FUNCTION_8_200();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

id sub_1E4091D1C()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_8();
  sub_1E3E37F30();
  v6 = OUTLINED_FUNCTION_21_16();
  v7(v6);
  v8 = sub_1E41FFC94();
  v9 = sub_1E42067E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v8, v9, "SportsCanonicalTemplateController is deallocated", v10, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v4 + 8))(v0, v2);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

void sub_1E4091EA4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [objc_opt_self() sharedInstance];
    if ([v7 isFullscreenPlaybackUIBeingShown])
    {
      v8 = 1;
    }

    else
    {
      v8 = [v7 isMultiviewPlaybackUIBeingShown];
    }

    v9 = sub_1E3E37F30();
    (*(v3 + 16))(v0, v9, v1);
    v10 = v6;
    v11 = sub_1E41FFC94();
    v12 = sub_1E42067E4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67109376;
      *(v13 + 4) = *(&v10->isa + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasPlaybackFullscreen);

      *(v13 + 8) = 1024;
      *(v13 + 10) = v8;
      _os_log_impl(&dword_1E323F000, v11, v12, "wasPlaybackFullscreen: %{BOOL}d -> isPlaybackFullscreen: %{BOOL}d", v13, 0xEu);
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      v11 = v10;
    }

    (*(v3 + 8))(v0, v1);
    if (v8 != *(&v10->isa + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasPlaybackFullscreen))
    {
      sub_1E40920B0();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40920B0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = v3;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v45[-v14];
  if (v5 == 2)
  {
    v4 = v0[OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasBackgrounded];
  }

  if (v2 == 2)
  {
    v2 = v0[OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasPlaybackFullscreen];
  }

  v48 = v0;
  sub_1E409148C(v13);
  if (!v16 || (OUTLINED_FUNCTION_30(), v47 = (*(v17 + 1096))(), v19 = v18, , !v19))
  {
    v47 = 0xD000000000000013;
  }

  if ((v4 | v2))
  {
    if (*(v48 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasBackgrounded) || *(v48 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasPlaybackFullscreen) == 1)
    {

      v20 = v48;
    }

    else
    {
      v39 = sub_1E3E37F30();
      (*(v8 + 16))(v11, v39, v6);

      v40 = sub_1E41FFC94();
      v41 = sub_1E42067E4();

      if (os_log_type_enabled(v40, v41))
      {
        swift_slowAlloc();
        v42 = OUTLINED_FUNCTION_9_186();
        v46 = v2;
        v49 = v42;
        OUTLINED_FUNCTION_7_231(4.8151e-34);
        v47 = v6;

        v43 = OUTLINED_FUNCTION_3_262();

        *(v4 + 14) = v43;
        _os_log_impl(&dword_1E323F000, v40, v41, "SportsCanonicalTemplateController: unsubscribing from '%s' for %s", v4, 0x16u);
        swift_arrayDestroy();
        LOBYTE(v2) = v46;
        OUTLINED_FUNCTION_6_0();
        LOBYTE(v4) = v45[0];
        OUTLINED_FUNCTION_6_0();

        v44.n128_f64[0] = (*(v8 + 8))(v11, v47);
      }

      else
      {

        v44.n128_f64[0] = (*(v8 + 8))(v11, v6);
      }

      v20 = v48;
      sub_1E40928F0(0, v44);
    }
  }

  else
  {
    v21 = sub_1E3E37F30();
    (*(v8 + 16))(v15, v21, v6);

    v22 = sub_1E41FFC94();
    v23 = sub_1E42067E4();

    if (os_log_type_enabled(v22, v23))
    {
      swift_slowAlloc();
      v24 = OUTLINED_FUNCTION_9_186();
      v46 = v2;
      v49 = v24;
      OUTLINED_FUNCTION_7_231(4.8151e-34);
      v47 = v6;

      v25 = OUTLINED_FUNCTION_3_262();

      *(v4 + 14) = v25;
      _os_log_impl(&dword_1E323F000, v22, v23, "SportsCanonicalTemplateController: subscribing to '%s' for %s", v4, 0x16u);
      swift_arrayDestroy();
      LOBYTE(v2) = v46;
      OUTLINED_FUNCTION_6_0();
      LOBYTE(v4) = v45[0];
      OUTLINED_FUNCTION_6_0();

      v26.n128_f64[0] = (*(v8 + 8))(v15, v47);
    }

    else
    {

      v26.n128_f64[0] = (*(v8 + 8))(v15, v6);
    }

    v20 = v48;
    sub_1E409148C(v26);
    if (v28)
    {
      OUTLINED_FUNCTION_30();
      (*(v29 + 2352))(2);
    }

    sub_1E409148C(v27);
    if (v30)
    {
      OUTLINED_FUNCTION_30();
      v32 = (*(v31 + 2048))();

      v33 = [v20 presentedViewController];
      if (v33)
      {
        v34 = v33;
        objc_opt_self();
        v35 = swift_dynamicCastObjCClass();
        if (v35 && (v36 = [v35 vui_rootViewController]) != 0)
        {
          v37 = v36;
          type metadata accessor for SportsPlayByPlaySeeAllViewController(0);
          v38 = swift_dynamicCastClass();
          if (!((v38 == 0) | v32 & 1))
          {
            [v38 dismissViewControllerAnimated:0 completion:0];
          }
        }

        else
        {
          v37 = v34;
        }
      }
    }
  }

  *(v20 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasBackgrounded) = v4 & 1;
  *(v20 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasPlaybackFullscreen) = v2 & 1;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4092698()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_8();
  v7 = *v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_1E3E37F30();
    v10 = OUTLINED_FUNCTION_21_16();
    v11(v10);
    v12 = v9;
    v13 = sub_1E41FFC94();
    v14 = sub_1E42067E4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109376;
      *(v15 + 4) = *(&v12->isa + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasBackgrounded);

      *(v15 + 8) = 1024;
      *(v15 + 10) = v7;
      _os_log_impl(&dword_1E323F000, v13, v14, "wasBackgrounded: %{BOOL}d -> isBackgrounded: %{BOOL}d", v15, 0xEu);
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      v13 = v12;
    }

    (*(v5 + 8))(v0, v3);
    if (v7 != *(&v12->isa + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasBackgrounded))
    {
      sub_1E40920B0();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E409284C()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_notifications) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasBackgrounded) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasPlaybackFullscreen) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E40928F0(char a1, __n128 a2)
{
  sub_1E409148C(a2);
  if (v4)
  {
    OUTLINED_FUNCTION_30();
    (*(v5 + 2376))(a1 & 1);
  }

  return result;
}

void sub_1E4092964(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_vui_viewDidDisappear_, a1 & 1);
  v3 = [v1 parentViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for DocumentRequestViewController(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = [v5 vuiNavigationController];
      if (v6)
      {
      }

      else
      {
        sub_1E40928F0(*(v1 + OBJC_IVAR____TtC8VideosUI33SportsCanonicalTemplateController_wasBackgrounded), v7);
      }
    }
  }
}

uint64_t type metadata accessor for SportsCanonicalTemplateController(uint64_t a1)
{
  result = qword_1ECF6B5B0;
  if (!qword_1ECF6B5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1E4092B54@<X0>(void *a1@<X8>)
{
  sub_1E4202414();
  sub_1E4200BF4();
  sub_1E4202414();
  sub_1E4202714();
  sub_1E4202714();
  sub_1E4203DA4();
  sub_1E4200D94();
  OUTLINED_FUNCTION_1_292();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F558, &qword_1E42E92B0);
  sub_1E4092CCC();
  sub_1E4201F44();
  return memcpy(a1, __src, 0x61uLL);
}

unint64_t sub_1E4092CCC()
{
  result = qword_1ECF3F560;
  if (!qword_1ECF3F560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F558, &qword_1E42E92B0);
    sub_1E32752B0(&qword_1ECF3F568, &qword_1ECF3F570, qword_1E42E92B8, MEMORY[0x1E697E2A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F560);
  }

  return result;
}

unint64_t sub_1E4092DB8()
{
  result = qword_1ECF3F578;
  if (!qword_1ECF3F578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F580, &qword_1E42E9338);
    sub_1E4092CCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F578);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SeparatorLine(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E4092F5C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6981F28];
  v3 = sub_1E4203ED4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double sub_1E4092FD0@<D0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1)
  {
    CGRectGetMidX(*&a3);
    v12.origin.x = OUTLINED_FUNCTION_1_9();
    CGRectGetMinY(v12);
    v13.origin.x = OUTLINED_FUNCTION_1_9();
    CGRectGetMidX(v13);
    v14.origin.x = OUTLINED_FUNCTION_1_9();
    CGRectGetMaxY(v14);
  }

  else
  {
    CGRectGetMinX(*&a3);
    v15.origin.x = OUTLINED_FUNCTION_1_9();
    CGRectGetMidY(v15);
    v16.origin.x = OUTLINED_FUNCTION_1_9();
    CGRectGetMaxX(v16);
    v17.origin.x = OUTLINED_FUNCTION_1_9();
    CGRectGetMidY(v17);
  }

  MEMORY[0x1EEE9AC00](v7);
  sub_1E4202B54();
  result = *&v9;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  return result;
}

double sub_1E40930E0@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  sub_1E4092FD0(*v2, v6, a2);
  result = *v6;
  v5 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  return result;
}

void (*sub_1E4093130())(void *a1)
{
  OUTLINED_FUNCTION_5_3();
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *v0 = v1;
  v1[4] = sub_1E42009D4();
  return sub_1E37BCF0C;
}

uint64_t sub_1E409319C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E4093378(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEDE4440](v3);
}

uint64_t sub_1E40931E8()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E4093378(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x1EEDE43F0](v3);
}

uint64_t sub_1E4093234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E4093378(a1, a2, a3);

  return MEMORY[0x1EEDE4410](a1, v4);
}

unint64_t sub_1E4093284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF6B740;
  if (!qword_1ECF6B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF6B740);
  }

  return result;
}

unint64_t sub_1E40932DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF6B748[0];
  if (!qword_1ECF6B748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF6B748);
  }

  return result;
}

unint64_t sub_1E4093378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2A6720[0];
  if (!qword_1EE2A6720[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A6720);
  }

  return result;
}

uint64_t sub_1E40933F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = type metadata accessor for LibLockupMetadataView(0, a3, a4, a4);
  v10 = *(v9 + 44);
  *(a5 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *a5 = a1;
  v11 = *(*a1 + 392);

  v13 = v11(v12);

  if (v13)
  {
    type metadata accessor for LibraryLockupLayout();
    v14 = swift_dynamicCastClass();
    if (v14)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for LibraryLockupLayout();
  v14 = sub_1E3F6D980();
LABEL_5:
  a5[1] = v14;
  v15 = *(*(a3 - 8) + 32);
  v16 = a5 + *(v9 + 40);

  return v15(v16, a2, a3);
}

void sub_1E409356C()
{
  OUTLINED_FUNCTION_31_1();
  v49 = v0;
  v2 = v1;
  v46 = v1;
  v50 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F598, qword_1E42E9498);
  v5 = MEMORY[0x1E6981840];
  v45 = *(v2 + 16);
  v6 = OUTLINED_FUNCTION_50_0(255, v4, v45, MEMORY[0x1E6981840]);
  OUTLINED_FUNCTION_51_18(v6);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E4203A44();
  sub_1E42013A4();
  v7 = OUTLINED_FUNCTION_50_0(255, v4, v5, v45);
  OUTLINED_FUNCTION_51_18(v7);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E42039C4();
  v42[1] = sub_1E4201F54();
  v8 = sub_1E42037A4();
  OUTLINED_FUNCTION_0_10();
  v48 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v42 - v11;
  v13 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v47 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v42 - v16;
  OUTLINED_FUNCTION_0_81();
  WitnessTable = swift_getWitnessTable();
  v60 = MEMORY[0x1E697EBF8];
  v18 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_2();
  v19 = swift_getWitnessTable();
  v57 = v18;
  v58 = v19;
  OUTLINED_FUNCTION_2_25();
  v56 = swift_getWitnessTable();
  OUTLINED_FUNCTION_25_10();
  v43 = swift_getWitnessTable();
  v54 = v43;
  v55 = MEMORY[0x1E697E5D8];
  v20 = swift_getWitnessTable();
  v61 = v13;
  v62 = v20;
  v44 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_6();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = v42 - v29;
  v31 = *(v46 + 24);
  v51 = v45;
  v52 = v31;
  v32 = v49;
  v53 = v49;
  v33 = sub_1E4203794();
  (*(**(v32 + 8) + 176))(&v61, v33);
  if (v65)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v36.n128_u64[0] = v63;
    v37.n128_u64[0] = v64;
    v34.n128_u64[0] = v61;
    v35.n128_u64[0] = v62;
    j_nullsub_1(v34, v35, v36, v37);
  }

  sub_1E42034D4();
  (*(v48 + 8))(v12, v8);
  v38 = *sub_1E3E5FACC();
  v39 = v38;
  sub_1E39B87A4(v38, v13, v44);

  (*(v47 + 8))(v17, v13);
  v40 = *(v23 + 16);
  v40(v30, v27, OpaqueTypeMetadata2);
  v41 = *(v23 + 8);
  v41(v27, OpaqueTypeMetadata2);
  v40(v50, v30, OpaqueTypeMetadata2);
  v41(v30, OpaqueTypeMetadata2);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4093A30()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v65 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F598, qword_1E42E9498);
  v6 = MEMORY[0x1E6981840];
  v7 = OUTLINED_FUNCTION_50_0(255, v5, MEMORY[0x1E6981840], v3);
  OUTLINED_FUNCTION_51_18(v7);
  OUTLINED_FUNCTION_9_187();
  swift_getWitnessTable();
  v8 = sub_1E42039C4();
  OUTLINED_FUNCTION_0_10();
  v60 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v59 = v15;
  v16 = OUTLINED_FUNCTION_50_0(255, v5, v3, v6);
  OUTLINED_FUNCTION_51_18(v16);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  v64 = sub_1E4203A44();
  v17 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v58 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  v57 = v24;
  v25 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = (&v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_91();
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v62 = v32;
  v63 = v31;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  v61 = &v56 - v34;
  type metadata accessor for LibLockupMetadataView(0, v3, v1, v35);
  sub_1E3746E10(v30);
  v36 = sub_1E3B0352C();
  (*(v27 + 8))(v30, v25);
  if (v36)
  {
    sub_1E4093FA8();
    OUTLINED_FUNCTION_0_81();
    WitnessTable = swift_getWitnessTable();
    v37 = MEMORY[0x1E697EBF8];
    v67 = MEMORY[0x1E697EBF8];
    OUTLINED_FUNCTION_4_1();
    v60 = swift_getWitnessTable();
    v38 = v57;
    v39 = v58;
    v40 = *(v58 + 16);
    v40(v57, v22, v17);
    v41 = *(v39 + 8);
    v41(v22, v17);
    v40(v22, v38, v17);
    OUTLINED_FUNCTION_3_2();
    swift_getWitnessTable();
    v42 = v61;
    OUTLINED_FUNCTION_91();
    sub_1E37B8D98(v43, v44);
    v41(v22, v17);
    v41(v38, v17);
  }

  else
  {
    sub_1E409427C();
    OUTLINED_FUNCTION_3_2();
    swift_getWitnessTable();
    v45 = v59;
    v46 = v60;
    v47 = *(v60 + 16);
    v47(v59, v13, v8);
    v48 = *(v46 + 8);
    v48(v13, v8);
    v47(v13, v45, v8);
    OUTLINED_FUNCTION_0_81();
    v72 = swift_getWitnessTable();
    v37 = MEMORY[0x1E697EBF8];
    v73 = MEMORY[0x1E697EBF8];
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v42 = v61;
    OUTLINED_FUNCTION_91();
    sub_1E37B8E90(v49, v50, v51);
    v48(v13, v8);
    v48(v45, v8);
  }

  v70 = swift_getWitnessTable();
  v71 = v37;
  OUTLINED_FUNCTION_4_1();
  v52 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_2();
  v53 = swift_getWitnessTable();
  v68 = v52;
  v69 = v53;
  OUTLINED_FUNCTION_2_25();
  v54 = v63;
  swift_getWitnessTable();
  v55 = v62;
  (*(v62 + 16))(v65, v42, v54);
  (*(v55 + 8))(v42, v54);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4093FA8()
{
  OUTLINED_FUNCTION_31_1();
  v27 = v0;
  v2 = v1;
  v29 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F598, qword_1E42E9498);
  v5 = *(v2 + 16);
  v6 = OUTLINED_FUNCTION_50_0(255, v4, v5, MEMORY[0x1E6981840]);
  OUTLINED_FUNCTION_51_18(v6);
  OUTLINED_FUNCTION_15_13();
  swift_getWitnessTable();
  v7 = sub_1E4203A44();
  OUTLINED_FUNCTION_0_10();
  v28 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v26 - v20;
  sub_1E4201D54();
  v22 = *(v2 + 24);
  v30 = v5;
  v31 = v22;
  v32 = v27;
  sub_1E4203A34();
  sub_1E4203DB4();
  OUTLINED_FUNCTION_0_81();
  WitnessTable = swift_getWitnessTable();
  sub_1E4203474();
  (*(v28 + 8))(v11, v7);
  v33 = WitnessTable;
  v34 = MEMORY[0x1E697EBF8];
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v23 = *(v14 + 16);
  v23(v21, v18, v12);
  v24 = *(v14 + 8);
  v24(v18, v12);
  v23(v29, v21, v12);
  v24(v21, v12);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E409427C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F598, qword_1E42E9498);
  v6 = *(v2 + 16);
  v7 = OUTLINED_FUNCTION_50_0(255, v5, MEMORY[0x1E6981840], v6);
  OUTLINED_FUNCTION_51_18(v7);
  OUTLINED_FUNCTION_15_13();
  swift_getWitnessTable();
  v8 = sub_1E42039C4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v21 - v16;
  v18 = *(v2 + 24);
  v21[2] = v6;
  v21[3] = v18;
  v22 = v0;
  sub_1E4201B84();
  sub_1E42039B4();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  v19 = *(v10 + 16);
  v19(v17, v14, v8);
  v20 = *(v10 + 8);
  v20(v14, v8);
  v19(v4, v17, v8);
  v20(v17, v8);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4094480()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_13_185(v2, v3);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_24_112();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_3();
  v35 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v33 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F5A0, &qword_1E42E9520);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29600, &unk_1E429B740);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v33 - v15);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F598, qword_1E42E9498);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  if (sub_1E40933CC())
  {

    sub_1E4094800(v16);
    sub_1E3294EE4(v16, v1, &qword_1ECF29600, &unk_1E429B740);
    OUTLINED_FUNCTION_21_9();
    swift_storeEnumTagMultiPayload();
    v11 = sub_1E3BFC99C();
    sub_1E37AC5F4();
    OUTLINED_FUNCTION_7_232();
    sub_1E4201F44();
    sub_1E4095494(v16);
  }

  else
  {
    sub_1E40948D4(v11);
    v16 = &qword_1ECF29210;
    OUTLINED_FUNCTION_91();
    sub_1E3294EE4(v25, v26, v27, v28);
    OUTLINED_FUNCTION_21_9();
    swift_storeEnumTagMultiPayload();
    sub_1E3BFC99C();
    sub_1E37AC5F4();
    OUTLINED_FUNCTION_7_232();
    sub_1E4201F44();
    sub_1E325F6F0(v11, &qword_1ECF29210, &qword_1E4299980);
  }

  v29 = v37;
  type metadata accessor for LibLockupMetadataView(0, v0, v37, v24);
  v30 = OUTLINED_FUNCTION_12_169();
  v11(v30);
  sub_1E3294EE4(v23, v20, &qword_1ECF3F598, qword_1E42E9498);
  v44 = 0;
  v45 = 0;
  v46 = v20;
  v47 = &v44;
  v31 = OUTLINED_FUNCTION_25_107();
  v11(v31);
  v48 = v13;
  v41 = v34;
  v42 = MEMORY[0x1E6981840];
  v43 = v0;
  v38 = sub_1E4095408();
  v39 = MEMORY[0x1E6981838];
  v40 = v29;
  OUTLINED_FUNCTION_21_118();
  v32 = v16[1];
  v32(v8, v0);
  sub_1E325F6F0(v23, &qword_1ECF3F598, qword_1E42E9498);
  v32(v13, v0);
  sub_1E325F6F0(v20, &qword_1ECF3F598, qword_1E42E9498);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E4094800@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PlaybackStatus(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1E40933CC();
  if (v6)
  {
    sub_1E413D6F4(v6, v5);
    sub_1E3C75118(v5, a1);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v2);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  }
}

uint64_t sub_1E40948D4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = sub_1E39C408C();
  if (v5)
  {
    if (*v5 == _TtC8VideosUI13TextViewModel)
    {
      (*(**(v1 + 8) + 1760))();
      OUTLINED_FUNCTION_18();
      sub_1E3F23370();

      OUTLINED_FUNCTION_91();
      v6();
      return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
    }
  }

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v3);
}

void sub_1E4094A90()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_13_185(v2, v3);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_24_112();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_3();
  v35 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v33 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F5A0, &qword_1E42E9520);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29600, &unk_1E429B740);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v33 - v15);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F598, qword_1E42E9498);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  if (sub_1E40933CC())
  {

    sub_1E4094800(v16);
    sub_1E3294EE4(v16, v1, &qword_1ECF29600, &unk_1E429B740);
    OUTLINED_FUNCTION_21_9();
    swift_storeEnumTagMultiPayload();
    v11 = sub_1E3BFC99C();
    sub_1E37AC5F4();
    OUTLINED_FUNCTION_7_232();
    sub_1E4201F44();
    sub_1E4095494(v16);
  }

  else
  {
    sub_1E40948D4(v11);
    v16 = &qword_1ECF29210;
    OUTLINED_FUNCTION_91();
    sub_1E3294EE4(v25, v26, v27, v28);
    OUTLINED_FUNCTION_21_9();
    swift_storeEnumTagMultiPayload();
    sub_1E3BFC99C();
    sub_1E37AC5F4();
    OUTLINED_FUNCTION_7_232();
    sub_1E4201F44();
    sub_1E325F6F0(v11, &qword_1ECF29210, &qword_1E4299980);
  }

  v29 = v37;
  type metadata accessor for LibLockupMetadataView(0, v0, v37, v24);
  v30 = OUTLINED_FUNCTION_12_169();
  v11(v30);
  sub_1E3294EE4(v23, v20, &qword_1ECF3F598, qword_1E42E9498);
  v46 = v20;
  v31 = OUTLINED_FUNCTION_25_107();
  v11(v31);
  v44 = 0;
  v45 = 0;
  v47 = v13;
  v48 = &v44;
  v41 = v34;
  v42 = v0;
  v43 = MEMORY[0x1E6981840];
  v38 = sub_1E4095408();
  v39 = v29;
  v40 = MEMORY[0x1E6981838];
  OUTLINED_FUNCTION_21_118();
  v32 = v16[1];
  v32(v8, v0);
  sub_1E325F6F0(v23, &qword_1ECF3F598, qword_1E42E9498);
  v32(v13, v0);
  sub_1E325F6F0(v20, &qword_1ECF3F598, qword_1E42E9498);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4094E14(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    type metadata accessor for LibraryLockupLayout();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_1E38D5D68(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E4094ECC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1E42012F4() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_25;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((((v11 + 16) & ~v11) + *(v6 + 64) + v12) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_25:
      if ((v7 & 0x80000000) != 0)
      {

        return __swift_getEnumTagSinglePayload((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & ~v11, v7, v5);
      }

      else
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_25;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    switch(v13)
    {
      case 2:
        LODWORD(v13) = *a1;
        break;
      case 3:
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v13) = *a1;
        break;
      default:
        LODWORD(v13) = *a1;
        break;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_1E4095128()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = *(*(v6 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(sub_1E42012F4() - 8);
  v11 = 8;
  if (*(v10 + 64) > 8uLL)
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v10 + 80) & 0xF8 | 7;
  v13 = v11 + ((((*(v7 + 80) + 16) & ~*(v7 + 80)) + *(v7 + 64) + v12) & ~v12) + 1;
  v14 = 8 * v13;
  if (v1 <= v9)
  {
    v15 = 0;
  }

  else if (v13 <= 3)
  {
    v18 = ((v1 - v9 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v18))
    {
      v15 = 4;
    }

    else
    {
      if (v18 < 0x100)
      {
        v19 = 1;
      }

      else
      {
        v19 = 2;
      }

      if (v18 >= 2)
      {
        v15 = v19;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 1;
  }

  if (v9 < v3)
  {
    v16 = ~v9 + v3;
    if (v13 < 4)
    {
      v17 = (v16 >> v14) + 1;
      if (v13)
      {
        v20 = v16 & ~(-1 << v14);
        bzero(v5, v13);
        if (v13 == 3)
        {
          *v5 = v20;
          v5[2] = BYTE2(v20);
        }

        else if (v13 == 2)
        {
          *v5 = v20;
        }

        else
        {
          *v5 = v16;
        }
      }
    }

    else
    {
      bzero(v5, v13);
      *v5 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        v5[v13] = v17;
        goto LABEL_46;
      case 2:
        *&v5[v13] = v17;
        goto LABEL_46;
      case 3:
        goto LABEL_47;
      case 4:
        *&v5[v13] = v17;
        goto LABEL_46;
      default:
        goto LABEL_46;
    }
  }

  switch(v15)
  {
    case 1:
      v5[v13] = 0;
      if (v3)
      {
        goto LABEL_29;
      }

      goto LABEL_46;
    case 2:
      *&v5[v13] = 0;
      if (!v3)
      {
        goto LABEL_46;
      }

      goto LABEL_29;
    case 3:
LABEL_47:
      __break(1u);
      return;
    case 4:
      *&v5[v13] = 0;
      goto LABEL_28;
    default:
LABEL_28:
      if (!v3)
      {
        goto LABEL_46;
      }

LABEL_29:
      if ((v8 & 0x80000000) != 0)
      {
        OUTLINED_FUNCTION_25_2();

        __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
      }

      else
      {
        if ((v3 & 0x80000000) != 0)
        {
          v21 = v3 & 0x7FFFFFFF;
        }

        else
        {
          v21 = v3 - 1;
        }

        *v5 = v21;
LABEL_46:
        OUTLINED_FUNCTION_25_2();
      }

      return;
  }
}

unint64_t sub_1E4095408()
{
  result = qword_1EE289138;
  if (!qword_1EE289138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F598, qword_1E42E9498);
    sub_1E3BFC99C();
    sub_1E37AC5F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289138);
  }

  return result;
}

uint64_t sub_1E4095494(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29600, &unk_1E429B740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for LibLockupAccessoryView(uint64_t a1)
{
  result = qword_1EE29A770;
  if (!qword_1EE29A770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1E4095554@<X0>(void *a1@<X8>)
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_1_23();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_254();
  type metadata accessor for LibLockupAccessoryView(0);
  sub_1E3746E10(v1);
  v4 = sub_1E3B0352C();
  v5 = OUTLINED_FUNCTION_171_0();
  v6(v5);
  if (v4)
  {
    sub_1E4201D54();
    v13 = 1;
    sub_1E4095920(v11);
    sub_1E4095B94(v20);
    OUTLINED_FUNCTION_6_225(v16);
    OUTLINED_FUNCTION_6_225(v18);
    OUTLINED_FUNCTION_5_240(v14);
    OUTLINED_FUNCTION_5_240(&v18[136]);
    OUTLINED_FUNCTION_5_240(v15);
    OUTLINED_FUNCTION_0_333(v16);
    OUTLINED_FUNCTION_9_188();
    sub_1E325F748(v15, &qword_1ECF32A38, &unk_1E42BC620);
    OUTLINED_FUNCTION_6_225(v17);
    OUTLINED_FUNCTION_10_172(v17);
    memcpy(v14, v18, 0xD9uLL);
    memcpy(v15, v18, 0xD9uLL);
    OUTLINED_FUNCTION_0_333(v14);
    OUTLINED_FUNCTION_10_172(v15);
    memcpy(&v10[7], v14, 0xD9uLL);
    v7 = OUTLINED_FUNCTION_4_259();
    memcpy(v7, v10, 0xE0uLL);
    sub_1E4095E88(v16);
  }

  else
  {
    sub_1E4201B84();
    v13 = 0;
    sub_1E4095920(v11);
    sub_1E4095B94(v20);
    OUTLINED_FUNCTION_6_225(v16);
    OUTLINED_FUNCTION_6_225(v19);
    OUTLINED_FUNCTION_5_240(v14);
    OUTLINED_FUNCTION_5_240(&v19[136]);
    OUTLINED_FUNCTION_5_240(v15);
    OUTLINED_FUNCTION_0_333(v16);
    OUTLINED_FUNCTION_9_188();
    sub_1E325F748(v15, &qword_1ECF32A38, &unk_1E42BC620);
    OUTLINED_FUNCTION_6_225(v17);
    OUTLINED_FUNCTION_10_172(v17);
    memcpy(v14, v19, 0xD9uLL);
    memcpy(v15, v19, 0xD9uLL);
    OUTLINED_FUNCTION_0_333(v14);
    OUTLINED_FUNCTION_10_172(v15);
    memcpy(&v12[7], v14, 0xD9uLL);
    v8 = OUTLINED_FUNCTION_4_259();
    memcpy(v8, v12, 0xE0uLL);
    sub_1E4095E7C(v16);
  }

  memcpy(v11, v16, 0xF2uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F5B0, &qword_1E42E9530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F5B8, qword_1E42E9538);
  sub_1E32752B0(&qword_1ECF3F5C0, &qword_1ECF3F5B0, &qword_1E42E9530, MEMORY[0x1E6981870]);
  sub_1E32752B0(&qword_1ECF3F5C8, &qword_1ECF3F5B8, qword_1E42E9538, MEMORY[0x1E69817F8]);
  sub_1E4201F44();
  return memcpy(a1, v17, 0xF2uLL);
}

void *sub_1E4095920@<X0>(void *a1@<X8>)
{
  v3 = sub_1E39C408C();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = v3;
  if (*v3 != _TtC8VideosUI31DownloadStateIndicatorViewModel)
  {

LABEL_9:
    sub_1E3CE3B40(v28);
    return memcpy(a1, v28, 0x81uLL);
  }

  v5 = v1 + *(type metadata accessor for LibLockupAccessoryView(0) + 28);
  v6 = *(v5 + 8);
  LOBYTE(__dst[0]) = *v5;
  __dst[1] = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E4203914();
  sub_1E3F66914(v4, 0, v28[0], v28[1], v28[2], __src);
  OUTLINED_FUNCTION_52_36();
  sub_1E42038F4();
  OUTLINED_FUNCTION_52_36();
  sub_1E42038F4();
  sub_1E4203DA4();
  sub_1E4200D94();
  OUTLINED_FUNCTION_52_36();
  v7 = sub_1E42038F4();
  if (LOBYTE(__dst[0]) == 1 && (v8 = *(v1 + 8)) != 0 && (v9 = (*(*v8 + 1808))(v7), (*(*v9 + 152))(&v26), , (v27 & 1) == 0))
  {
    v14 = OUTLINED_FUNCTION_13_3(v10, v11, v12, v13);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_5_8();
  }

  v18 = v14;
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = sub_1E4202734();

  __src[88] = 0;
  memcpy(__dst, __src, 0x58uLL);
  LOBYTE(__dst[11]) = v22;
  *&__dst[12] = v18;
  __dst[13] = v19;
  __dst[14] = v20;
  __dst[15] = v21;
  LOBYTE(__dst[16]) = 0;
  nullsub_1();
  memcpy(v28, __dst, 0x81uLL);
  return memcpy(a1, v28, 0x81uLL);
}

uint64_t sub_1E4095B94@<X0>(uint64_t a1@<X8>)
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_1_23();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_254();
  v7 = *v1;
  result = sub_1E39C408C();
  if (result)
  {

    v10 = v1[1];
    if (v10 && (v11 = (*(*v10 + 1832))(v9), (*(*v11 + 152))(&v42), , (v43 & 1) == 0))
    {
      v16 = OUTLINED_FUNCTION_13_3(v12, v13, v14, v15);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_5_8();
    }

    v26 = v16;
    v27 = v17;
    v28 = v18;
    type metadata accessor for LibLockupAccessoryView(0);
    sub_1E3746E10(v2);
    v41 = sub_1E3B02A04();
    v29 = *(v5 + 8);
    v30 = OUTLINED_FUNCTION_171_0();
    v29(v30);
    sub_1E3746E10(v2);
    v40 = sub_1E3B02A04();
    v31 = OUTLINED_FUNCTION_171_0();
    v29(v31);
    sub_1E3746E10(v2);
    v32 = sub_1E3B02A04();
    v33 = OUTLINED_FUNCTION_171_0();
    v29(v33);
    v21 = v28;
    if (v10)
    {
      v34 = *(*v10 + 1832);

      v36 = v34(v35);
    }

    else
    {

      v36 = 0;
    }

    sub_1E397F070(v7, v36, v44);
    v39 = v44[0];
    v38 = v44[1];
    v37 = v45;
    if (v41)
    {
      v19 = v26;
    }

    else
    {
      v19 = 0.0;
    }

    if (v40)
    {
      v20 = 0;
    }

    else
    {
      v20 = v27;
    }

    if ((v32 & 1) == 0)
    {
      v21 = 0;
    }

    result = sub_1E4202734();
    v25 = v38;
    v24 = v39;
    v23 = v37;
    v22 = result;
  }

  else
  {
    v19 = 0.0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0uLL;
    v25 = 0uLL;
  }

  *a1 = v24;
  *(a1 + 16) = v25;
  *(a1 + 32) = v23;
  *(a1 + 40) = v22;
  *(a1 + 48) = v19;
  *(a1 + 56) = v20;
  *(a1 + 64) = 0;
  *(a1 + 72) = v21;
  *(a1 + 80) = 0;
  return result;
}

void sub_1E4095ED8(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E4095FEC(319, &qword_1ECF3F5D0, type metadata accessor for LibraryLockupLayout, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E4095FEC(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1E3AB40E8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E4095FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1E4096050()
{
  result = qword_1ECF3F5D8;
  if (!qword_1ECF3F5D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F5E0, &qword_1E42E95B8);
    sub_1E32752B0(&qword_1ECF3F5C0, &qword_1ECF3F5B0, &qword_1E42E9530, MEMORY[0x1E6981870]);
    sub_1E32752B0(&qword_1ECF3F5C8, &qword_1ECF3F5B8, qword_1E42E9538, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F5D8);
  }

  return result;
}

id sub_1E4096134(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityGradientLayer;
  OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityGradientLayer], v14);
  v5 = *&v1[v4];
  if (v5)
  {
    if (a1)
    {
      sub_1E3280A90(0, &qword_1EE23AE70, 0x1E6979398);
      v6 = v5;
      v7 = a1;
      v8 = sub_1E4206F64();

      if (v8)
      {
        return [v2 vui_setNeedsLayout];
      }
    }
  }

  else if (!a1)
  {
    return [v2 vui_setNeedsLayout];
  }

  v9 = [a1 removeFromSuperlayer];
  if (a1)
  {
    v9 = [a1 setDelegate_];
  }

  v13 = *&v2[v4];
  MEMORY[0x1EEE9AC00](v9);
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F600, &unk_1E42F5C60);
  sub_1E4148DE0(sub_1E4097AC8);

  return [v2 vui_setNeedsLayout];
}

void *sub_1E4096290(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityGradientLayer;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E40962CC(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityGradientLayer;
  OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityGradientLayer, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = a1;
  sub_1E4096134(v5);
}

void (*sub_1E409632C(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityGradientLayer;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityGradientLayer, v3);
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E40963AC;
}

void sub_1E40963AC(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1E40962CC(v3, v6);
  }

  else
  {
    sub_1E40962CC(*(*a1 + 24), a2);
  }

  free(v2);
}

id sub_1E4096418(uint64_t a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    sub_1E4096618(0);
    sub_1E4096630(0);
  }

  else
  {
    v4 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityBlurView;
    v5 = *&v2[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityBlurView];
    v6 = v5;
    if (!v5)
    {
      v6 = [objc_opt_self() blurViewWithEffect_];
    }

    v7 = v5;
    sub_1E4096618(v6);
    type metadata accessor for OverlayViewGradientFactory();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E429DCC0;
    v9 = objc_opt_self();
    *(v8 + 32) = [v9 clearColor];
    *(v8 + 40) = [v9 blackColor];
    v10 = sub_1E38E264C(0, v8);

    v11 = *&v3[v4];
    if (v11)
    {
      v12 = [v11 vuiLayer];
      if (v12)
      {
        v13 = v12;
        [v12 setMask_];
      }
    }

    v14 = v10;
    sub_1E4096630(v10);
  }

  return [v3 vui_setNeedsLayout];
}

id (*sub_1E40965B8(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = 0;
  *(a1 + 8) = 1;
  return sub_1E40965E8;
}

id sub_1E4096668(char a1)
{
  v2 = v1;
  if (a1)
  {
    if (!*&v1[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerBlurView])
    {
      sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
      sub_1E3EFD574();

      v3 = sub_1E3C7758C();

      if (v3)
      {
        v4 = [objc_opt_self() blurViewWithEffect_];
        v5 = [v4 vuiLayer];
        if (v5)
        {
          v6 = v5;
          [v5 setMasksToBounds_];
        }

        v7 = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
        [v7 setShouldRasterize_];
        v8 = [objc_opt_self() mainScreen];
        [v8 scale];
        v10 = v9;

        [v7 setRasterizationScale_];
        v11 = [v3 CGImage];
        [v7 setContents_];

        [v3 size];
        [v7 setFrame_];
        v14 = [v4 vuiLayer];

        if (v14)
        {
          [v14 setMask_];
        }

        v15 = v4;
        sub_1E4096934(v4);
        v16 = v7;
        sub_1E4096B14(v7);
      }
    }
  }

  else
  {
    sub_1E4096934(0);
    sub_1E4096B14(0);
  }

  return [v2 vui_setNeedsLayout];
}

id (*sub_1E40968D0(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerBlurView) == 0;
  return sub_1E409690C;
}

void sub_1E409694C(void *a1, void *a2, void *a3, const char **a4)
{
  v9 = *&v4[*a2];
  *&v4[*a2] = a1;
  v5 = *&v4[*a2];
  v6 = *&v4[*a3];
  v7 = *a4;
  v8 = a1;
  [v4 v7];
}

void sub_1E40969DC(id a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v6 = *(v3 + *a2);
  if (v6)
  {
    if (a1)
    {
      sub_1E3280A90(0, &qword_1EE23AE70, 0x1E6979398);
      v7 = v6;
      v8 = a1;
      v9 = sub_1E4206F64();

      if (v9)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  v10 = [a1 removeFromSuperlayer];
  if (a1)
  {
    v10 = [a1 setDelegate_];
  }

  MEMORY[0x1EEE9AC00](v10);
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F600, &unk_1E42F5C60);
  sub_1E4148DE0(a3);
}

void sub_1E4096B34(void *a1, uint64_t *a2, void (*a3)(uint64_t))
{
  v7 = *(v3 + *a2);
  *(v3 + *a2) = a1;
  v6 = a1;
  sub_1E40969DC(v7, a2, a3);
}

id sub_1E4096BCC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = *(v1 + *a1);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E69DF698]) init_];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

double sub_1E4096C40(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_protectionHeight;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

id sub_1E4096C74(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_protectionHeight;
  OUTLINED_FUNCTION_14_0(&v3[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_protectionHeight], a3);
  *&v3[v5] = a1;
  return [v3 vui_setNeedsLayout];
}

id (*sub_1E4096CC8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E3CF68F8;
}

void sub_1E4096D1C()
{
  v1 = [v0 vuiLayer];
  if (v1)
  {
    v2 = v1;
    v3 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius;
    OUTLINED_FUNCTION_5_0(&v0[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius], v12);
    [v2 setCornerRadius_];
  }

  v4 = *&v0[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityBlurView];
  if (v4)
  {
    v5 = [v4 vuiLayer];
    if (v5)
    {
      v6 = v5;
      v7 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius;
      OUTLINED_FUNCTION_5_0(&v0[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius], v13);
      [v6 setCornerRadius_];
    }
  }

  v8 = *&v0[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerBlurView];
  if (v8)
  {
    v9 = [v8 vuiLayer];
    if (v9)
    {
      v10 = v9;
      v11 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius;
      OUTLINED_FUNCTION_5_0(&v0[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius], v14);
      [v10 setCornerRadius_];
    }
  }
}

double sub_1E4096E34(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

void sub_1E4096E68(double a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius;
  OUTLINED_FUNCTION_14_0(v3 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius, a3);
  *(v3 + v5) = a1;
  sub_1E4096D1C();
}

void (*sub_1E4096EB0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E4096F04;
}

void sub_1E4096F04(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E4096D1C();
  }
}

id sub_1E4096F38()
{
  *&v0[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityGradientLayer] = 0;
  OUTLINED_FUNCTION_1_293(&OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityBlurView);
  *&v0[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_protectionHeight] = 0x404B800000000000;
  *&v0[OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for OverlayProtectionView();
  v1 = objc_msgSendSuper2(&v5, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v1 setUserInteractionEnabled_];
  v2 = [objc_opt_self() clearColor];
  [v1 setVuiBackgroundColor_];

  v3 = [v1 vuiLayer];
  if (v3)
  {
    [v3 setMasksToBounds_];
  }

  return v1;
}

void sub_1E40970A4()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityGradientLayer) = 0;
  OUTLINED_FUNCTION_1_293(&OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityBlurView);
  *(v0 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_protectionHeight) = 0x404B800000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerRadius) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E4097158(char a1, double a2, double a3)
{
  if (a1)
  {
    v21.receiver = v3;
    v21.super_class = type metadata accessor for OverlayProtectionView();
    objc_msgSendSuper2(&v21, sel_vui_layoutSubviews_computationOnly_, 1, a2, a3);
    return v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7D40];
    (*((*MEMORY[0x1E69E7D40] & *v3) + 0x190))();
    v8 = (*((*v7 & *v3) + 0xA0))();
    OUTLINED_FUNCTION_9_189(v8, sel_setFrame_);

    v9 = *(v3 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityBlurView);
    if (v9)
    {
      OUTLINED_FUNCTION_6_226(v9);
    }

    OUTLINED_FUNCTION_9_189(*(v3 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityBlurMaskLayer), sel_setFrame_);
    v10 = OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerBlurMaskLayer;
    v11 = *(v3 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerBlurMaskLayer);
    v12 = a2;
    v13 = a3;
    if (v11)
    {
      [v11 frame];
      v12 = v14;
      v13 = v15;
    }

    v22.origin.x = OUTLINED_FUNCTION_7_233();
    Width = CGRectGetWidth(v22);
    v23.origin.x = OUTLINED_FUNCTION_7_233();
    Height = CGRectGetHeight(v23);
    v18 = *(v3 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerBlurView);
    if (v18)
    {
      OUTLINED_FUNCTION_6_226(v18);
    }

    v19 = *(v3 + v10);
    if (v19)
    {
      [v19 setFrame_];
    }
  }

  return a2;
}

id sub_1E409737C(id a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v3 vuiLayer];
  v9 = v8;
  if (v8)
  {

    if (v9 == a1)
    {
      v10 = sub_1E4205ED4();
      v54.receiver = v4;
      v54.super_class = type metadata accessor for OverlayProtectionView();
      v9 = objc_msgSendSuper2(&v54, sel_actionForLayer_forKey_, a1, v10);
    }

    else
    {
      v9 = 0;
    }
  }

  v11 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0xA0))();
  if (v11 && (v12 = v11, v11, v12 == a1) || ((v13 = *(v4 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_legibilityBlurMaskLayer)) != 0 ? (v14 = v13 == a1) : (v14 = 0), v14 || ((v15 = *(v4 + OBJC_IVAR____TtC8VideosUI21OverlayProtectionView_cornerBlurMaskLayer)) != 0 ? (v16 = v15 == a1) : (v16 = 0), v16)))
  {
    v17 = *MEMORY[0x1E69DF658];
    if (sub_1E4205F14() == a2 && v18 == a3)
    {
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_3_263();
    v20 = sub_1E42079A4();

    if (v20)
    {
      goto LABEL_28;
    }

    if (sub_1E4205F14() == a2 && v21 == a3)
    {
LABEL_27:
    }

    else
    {
      OUTLINED_FUNCTION_3_263();
      v23 = sub_1E42079A4();

      if ((v23 & 1) == 0)
      {
        return v9;
      }
    }

LABEL_28:
    v24 = [v4 vuiLayer];
    if (v24 && (v25 = v24, v26 = [v24 animationForKey_], v25, v26) || (v27 = objc_msgSend(v4, sel_vuiLayer)) != 0 && (v28 = v27, v26 = objc_msgSend(v27, sel_animationForKey_, *MEMORY[0x1E69DF668]), v28, v26) || (v29 = objc_msgSend(v4, sel_vuiLayer)) != 0 && (v30 = v29, v26 = objc_msgSend(v29, sel_animationForKey_, *MEMORY[0x1E69DF660]), v30, v26))
    {
      [v26 copy];
      sub_1E4207264();
      swift_unknownObjectRelease();
      sub_1E3280A90(0, &qword_1EE23B2C0, 0x1E6979318);
      if (swift_dynamicCast())
      {
        v31 = v55;
        [v31 setAdditive_];
        [v31 setRemovedOnCompletion_];
        if (sub_1E4205F14() == a2 && v32 == a3)
        {
        }

        else
        {
          OUTLINED_FUNCTION_3_263();
          v34 = sub_1E42079A4();

          if ((v34 & 1) == 0)
          {
            v17 = *MEMORY[0x1E69DF670];
            v35 = sub_1E4205F14();
            sub_1E40979D4(v35, v36, v31);

            [a1 position];
            v38 = v37;
            v40 = v39;
            v41 = [objc_allocWithZone(MEMORY[0x1E69DF760]) init];
            [v41 setAnimationToRun_];
            [v41 setFromPoint_];
LABEL_45:
            v52 = v17;
            [v41 setKey_];

            swift_unknownObjectRelease();
            return v41;
          }
        }

        v42 = sub_1E4205F14();
        sub_1E40979D4(v42, v43, v31);

        [a1 bounds];
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v41 = [objc_allocWithZone(MEMORY[0x1E69DF768]) init];
        [v41 setAnimationToRun_];
        [v41 setFromRect_];
        goto LABEL_45;
      }
    }

    swift_unknownObjectRelease();
    return 0;
  }

  return v9;
}

id sub_1E4097908()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverlayProtectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E40979D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setKeyPath_];
}

void sub_1E4097A68(void **a1, uint64_t (*a2)(void))
{
  v2 = *a1;
  v3 = a2();
  [v2 setDelegate_];
}

void sub_1E4097AC8(void **a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  [v2 bounds];
  [v3 setFrame_];
  v4 = [v2 vuiLayer];
  [v4 addSublayer_];

  v5 = sub_1E4096BA8();
  [v3 setDelegate_];
}

uint64_t sub_1E4097BE4()
{
  *(v0 + 98) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 2;
  return sub_1E3C2F9A0();
}

uint64_t sub_1E4097BF8(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E4097C34(v1);
}

uint64_t sub_1E4097C34(char a1)
{
  *(v1 + 98) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 120) = 2;
  swift_beginAccess();
  *(v1 + 98) = a1;
  v4 = sub_1E3C2F9A0();
  v5 = *(*v4 + 1720);

  switch((v5)())
  {
    case 1u:
      v85 = sub_1E3952CA4();
      v86 = v17;
      v87 = v18;
      v88 = v19;
      LOBYTE(v89) = 0;
      OUTLINED_FUNCTION_111();
      (*(v20 + 160))(&v85);
      OUTLINED_FUNCTION_111();
      (*(v21 + 208))(0x406F400000000000, 0);
      OUTLINED_FUNCTION_9_2();
      (*(v22 + 312))(0x406F400000000000, 0);
      sub_1E3755B54();
      sub_1E4206F24();
      OUTLINED_FUNCTION_9_2();
      (*(v23 + 680))();
      sub_1E4206F24();
      OUTLINED_FUNCTION_9_2();
      (*(v24 + 872))();
      OUTLINED_FUNCTION_9_2();
      (*(v25 + 1744))();
      OUTLINED_FUNCTION_2_1();
      (*(v26 + 2000))(1);

      v28 = *(*v4 + 1768);
      v28(v27);
      __dst[0] = 0;
      LOBYTE(__dst[1]) = 1;
      v105 = 0x4049800000000000;
      v106 = 0;
      v103 = 0x4049800000000000;
      v104 = 0;
      v101 = 0x405A800000000000;
      v102 = 0;
      v99 = 0x4049800000000000;
      v100 = 0;
      v97 = 0x4049800000000000;
      v98 = 0;
      sub_1E3C2FCB8(__dst, &v105, &v103, &v101, &v99, &v97, MEMORY[0x1E69E7DE0], __src);
      memcpy(__dst, __src, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_36();
      v37 = OUTLINED_FUNCTION_9_190(v29, v30, v31, v32, v33, v34, v35, v36, v82, v83, v84, v85, v86, v87, v88, v89, __dst[0]);
      v38(v37);

      v28(v39);
      OUTLINED_FUNCTION_2_1();
      (*(v40 + 1792))(3);
      goto LABEL_8;
    case 2u:
      sub_1E3755B54();
      OUTLINED_FUNCTION_3_264();
      sub_1E4206F24();
      OUTLINED_FUNCTION_2_255();
      v6 = sub_1E4206F24();
      OUTLINED_FUNCTION_86_1(v6);

      OUTLINED_FUNCTION_9_2();
      v7 = OUTLINED_FUNCTION_8_10();
      v8(v7);
      OUTLINED_FUNCTION_3_264();
      sub_1E4206F24();
      OUTLINED_FUNCTION_2_255();
      v9 = sub_1E4206F24();
      OUTLINED_FUNCTION_86_1(v9);

      OUTLINED_FUNCTION_9_2();
      v10 = OUTLINED_FUNCTION_8_10();
      v11(v10);
      OUTLINED_FUNCTION_9_2();
      v13 = *(v12 + 1768);
      v13();
      OUTLINED_FUNCTION_2_1();
      (*(v14 + 1816))(0x4035000000000000, 0);

      (v13)(v15);
      OUTLINED_FUNCTION_2_1();
      (*(v16 + 1792))(3);
      goto LABEL_6;
    case 3u:
      sub_1E4098AD0();
      OUTLINED_FUNCTION_111();
      (*(v63 + 208))(0x4059000000000000, 0);
      OUTLINED_FUNCTION_9_2();
      (*(v64 + 312))(0x4059000000000000, 0);
      OUTLINED_FUNCTION_9_2();
      (*(v65 + 1768))();
      __dst[0] = 0x4049800000000000;
      LOBYTE(__dst[1]) = 0;
      v85 = 0x4055800000000000;
      LOBYTE(v86) = 0;
      v66 = MEMORY[0x1E69E7DE0];
      sub_1E3C2FC98();
      v103 = v105;
      v104 = v106;
      sub_1E3C3DE00();
      v99 = v101;
      v100 = v102;
      sub_1E3C3DE00();
      v95 = v97;
      v96 = v98;
      sub_1E3C3DE00();
      v91 = v93;
      v92 = v94;
      sub_1E3C2FCB8(__dst, &v103, &v99, &v85, &v95, &v91, v66, __src);
      memcpy(__dst, __src, 0x59uLL);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_36();
      v75 = OUTLINED_FUNCTION_9_190(v67, v68, v69, v70, v71, v72, v73, v74, v82, v83, v84, v85, v86, v87, v88, v89, __dst[0]);
      v76(v75);
      goto LABEL_8;
    case 5u:
      OUTLINED_FUNCTION_111();
      v41 += 218;
      v42 = *v41;
      (*v41)();
      OUTLINED_FUNCTION_2_1();
      (*(v43 + 440))(0x3FF0000000000000, 0);

      v45 = (v42)(v44);
      v46.n128_u64[0] = 1.0;
      __src[0] = j__OUTLINED_FUNCTION_7_78(v46);
      __src[1] = v47;
      __src[2] = v48;
      __src[3] = v49;
      LOBYTE(__src[4]) = 0;
      (*(*v45 + 1856))(__src);

      v51 = (v42)(v50);
      v52 = *sub_1E3E6097C();
      v53 = *(*v51 + 1832);
      v54 = v52;
      v53(v52);

      v55 = *sub_1E3E5FDEC();
      v56 = *(*v4 + 680);
      v57 = v55;
      v58 = OUTLINED_FUNCTION_8_10();
      v56(v58);
      OUTLINED_FUNCTION_9_2();
      v13 = *(v59 + 1768);
      v13();
      OUTLINED_FUNCTION_2_1();
      (*(v60 + 1792))(5);
LABEL_6:

      (v13)(v61);
      sub_1E4205F14();
      OUTLINED_FUNCTION_36();
      (*(v62 + 1768))();
LABEL_8:

      break;
    default:
      sub_1E4098AD0();
      break;
  }

  OUTLINED_FUNCTION_111();
  v78 = (*(v77 + 1744))();
  sub_1E3C37CBC(v78, 39);

  OUTLINED_FUNCTION_9_2();
  v80 = (*(v79 + 1768))();
  sub_1E3C37CBC(v80, 17);

  return v4;
}

unint64_t sub_1E4098698()
{
  v0 = sub_1E4207784();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40986E4(char a1)
{
  result = 0x70756B636F6CLL;
  switch(a1)
  {
    case 1:
      v3 = 1953718627;
      goto LABEL_6;
    case 2:
      result = 0x7972617262696CLL;
      break;
    case 3:
      v3 = 1835099508;
LABEL_6:
      result = v3 | 0x6E6E614200000000;
      break;
    case 4:
      result = 0x6B636F4C6D616574;
      break;
    case 5:
      result = 0x74537374726F7073;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E40987B4(char a1)
{
  sub_1E4207B44();
  sub_1E40986E4(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E4098820(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E4098914(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E40986E4(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E4098974@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4098698();
  *a1 = result;
  return result;
}

uint64_t sub_1E40989A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E40986E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MonogramLayout.LayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

double sub_1E4098AD0()
{
  v2 = (*v0 + 1744);
  v3 = *v2;
  v4 = v2;
  v5 = (*v2)();
  (*(*v5 + 440))(0x3FF0000000000000, 0);

  (v3)(v6);
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 2000))(1);

  if (TVAppFeature.isEnabled.getter(10, v8, v9))
  {
    v10 = v3();
    if ([objc_opt_self() userInterfaceIdiom])
    {
      v11 = 0x4059000000000000;
    }

    else
    {
      v11 = 0x4050800000000000;
    }

    (*(*v10 + 208))(v11, 0);
  }

  sub_1E3755B54();
  OUTLINED_FUNCTION_3_264();
  sub_1E4206F24();
  OUTLINED_FUNCTION_2_255();
  v12 = sub_1E4206F24();
  OUTLINED_FUNCTION_86_1(v12);

  OUTLINED_FUNCTION_9_2();
  v13 = OUTLINED_FUNCTION_8_10();
  v14(v13);
  OUTLINED_FUNCTION_3_264();
  sub_1E4206F24();
  OUTLINED_FUNCTION_2_255();
  v15 = sub_1E4206F24();
  OUTLINED_FUNCTION_86_1(v15);

  OUTLINED_FUNCTION_9_2();
  v16 = OUTLINED_FUNCTION_8_10();
  v17(v16);
  OUTLINED_FUNCTION_9_2();
  v19 = *(v18 + 1768);
  v19();
  OUTLINED_FUNCTION_2_1();
  (*(v20 + 1816))(0x405D000000000000, 0);

  (v19)(v21);
  OUTLINED_FUNCTION_2_1();
  (*(v22 + 1792))(5);

  (v19)(v23);
  sub_1E4205F14();
  OUTLINED_FUNCTION_36();
  (*(v24 + 1768))();

  return result;
}

double sub_1E4098E6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  v5 = *(a1 + 16);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  v8 = OBJC_IVAR____TtC8VideosUI20DownloadQueueManager_allSeasonDetailsFetchers;
  OUTLINED_FUNCTION_11_3(&v1[OBJC_IVAR____TtC8VideosUI20DownloadQueueManager_allSeasonDetailsFetchers], v19);

  swift_isUniquelyReferenced_nonNull_native();
  v18 = *&v1[v8];
  sub_1E40A0134();
  *&v1[v8] = v18;
  swift_endAccess();
  v9 = sub_1E4206474();
  OUTLINED_FUNCTION_85_0(v9);
  sub_1E4206434();
  OUTLINED_FUNCTION_50();

  v10 = v1;
  v11 = sub_1E4206424();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v12[5] = a1;
  v12[6] = v6;
  v12[7] = v7;
  OUTLINED_FUNCTION_103_15(v12, v14, v15, v16, v12);

  return result;
}

uint64_t sub_1E4098FDC()
{
  OUTLINED_FUNCTION_24();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v5);
  v0[9] = swift_task_alloc();
  v0[10] = sub_1E4206434();
  v0[11] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[12] = v6;
  v0[13] = v7;
  v8 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E40990A0()
{
  OUTLINED_FUNCTION_24();
  v1 = *(*(v0[6] + 16) + 80);
  v0[14] = v1;
  v2 = v1;
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_56_1(v3);

  return sub_1E4099408();
}

uint64_t sub_1E4099140()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = v1[14];
  v5 = *v0;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  *(v8 + 136) = v7;
  *(v8 + 128) = v9;
  *(v8 + 138) = v10;

  v11 = v1[13];
  v12 = v1[12];

  return MEMORY[0x1EEE6DFA0](sub_1E4099284, v12, v11);
}

uint64_t sub_1E4099284()
{
  v1 = *(v0 + 136);

  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 64);
    v4 = *(v0 + 40);
    v5 = OBJC_IVAR____TtC8VideosUI20DownloadQueueManager_allSeasonDetailsFetchers;
    swift_beginAccess();
    v6 = *(v4 + v5);

    v7 = sub_1E396E6C0(v2, v3, v6);

    if (v7)
    {
      v8 = *(v0 + 138);
      v9 = *(v0 + 128);
      v10 = *(v0 + 137);
      v12 = *(v0 + 56);
      v11 = *(v0 + 64);
      v13 = *(v0 + 40);
      v14 = sub_1E4206474();
      OUTLINED_FUNCTION_85_0(v14);

      v15 = v13;

      v16 = sub_1E4206424();
      v17 = swift_allocObject();
      v18 = MEMORY[0x1E69E85E0];
      *(v17 + 16) = v16;
      *(v17 + 24) = v18;
      *(v17 + 32) = v7;
      *(v17 + 40) = v15;
      *(v17 + 48) = v10 & 1;
      *(v17 + 56) = v9;
      *(v17 + 64) = v8 & 1;
      *(v17 + 72) = v12;
      *(v17 + 80) = v11;
      OUTLINED_FUNCTION_103_15(v17, v19, v20, v21, v17);
      OUTLINED_FUNCTION_50();
    }
  }

  OUTLINED_FUNCTION_54();

  return v22();
}

uint64_t sub_1E4099408()
{
  OUTLINED_FUNCTION_24();
  v0[5] = v1;
  v0[6] = sub_1E4206434();
  v0[7] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v0[8] = v2;
  v0[9] = v3;
  v4 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E4099494()
{
  v1 = [objc_opt_self() topPresentedViewController];
  v0[10] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[5];
    v4 = sub_1E4206424();
    v0[11] = v4;
    v5 = swift_task_alloc();
    v0[12] = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    v6 = swift_task_alloc();
    v0[13] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F6A0, &qword_1E42E9818);
    *v6 = v0;
    v6[1] = sub_1E409962C;
    v8 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DDE0](v0 + 2, v4, v8, 0xD000000000000019, 0x80000001E4290150, sub_1E40A069C, v5, v7);
  }

  else
  {

    v9 = v0[1];

    return v9(0, 0, 1);
  }
}

uint64_t sub_1E409962C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E4099780, v5, v4);
}

uint64_t sub_1E4099780()
{
  OUTLINED_FUNCTION_24();
  swift_unknownObjectRelease();

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (*(v0 + 17))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 8);

  return v5(v4 | v1, v2, v3);
}

uint64_t sub_1E4099808()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 88) = v9;
  *(v0 + 96) = v10;
  *(v0 + 137) = v1;
  *(v0 + 72) = v2;
  *(v0 + 80) = v3;
  *(v0 + 136) = v4;
  *(v0 + 64) = v5;
  *(v0 + 104) = sub_1E4206434();
  *(v0 + 112) = sub_1E4206424();
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_56_1(v6);

  return sub_1E3F5009C();
}

uint64_t sub_1E40998CC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *(v6 + 128) = v5;

  sub_1E42063B4();
  v7 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E40999F4()
{
  v19 = v0;
  v1 = *(v0 + 64);

  v3 = *(**(v1 + 16) + 224);
  v4 = *(v1 + 16);
  if (v3(v2))
  {
    v5 = *(v0 + 72);
    v6 = OBJC_IVAR____TtC8VideosUI20DownloadQueueManager_seasonDetailsMap;
    OUTLINED_FUNCTION_11_3(v5 + OBJC_IVAR____TtC8VideosUI20DownloadQueueManager_seasonDetailsMap, v0 + 40);

    swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v5 + v6);
    v4 = &v18;
    OUTLINED_FUNCTION_27_0();
    sub_1E40A0134();
    *(v5 + v6) = v18;

    swift_endAccess();
  }

  sub_1E4099BE4(*(v0 + 128));
  OUTLINED_FUNCTION_50();

  if (v4)
  {
    sub_1E3280A90(0, &qword_1ECF3F6B0, off_1E8728660);
    v7 = OUTLINED_FUNCTION_12_1();
    result = sub_1E32AE9B0(v7);
    if (result < 0)
    {
      __break(1u);
      return result;
    }

    v9 = *(v0 + 137);
    v10 = *(v0 + 80);
    v11 = *(v0 + 136);
    v12 = sub_1E4099D20(v4, result, 1);
    v13 = v12;
    if (v9)
    {
      v14 = 1;
    }

    else
    {
      v14 = v10;
    }

    [v12 startDownloadAllowingCellular:v11 quality:v14 shouldMarkAsDeletedOnCancellationOrFailure:1 prefer3DOrImmersiveDownload:1 isAutomatic:0 completion:0];
  }

  v16 = *(v0 + 88);
  v15 = *(v0 + 96);
  OUTLINED_FUNCTION_11_3(*(v0 + 72) + OBJC_IVAR____TtC8VideosUI20DownloadQueueManager_allSeasonDetailsFetchers, v0 + 16);
  sub_1E409FFB8(v16, v15);
  swift_endAccess();

  OUTLINED_FUNCTION_54();

  return v17();
}

uint64_t sub_1E4099BE4(unint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(a1);
  sub_1E4207574();
  result = sub_1E32AE9B0(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = swift_unknownObjectRetain();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      swift_unknownObjectRelease();

      return 0;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

id sub_1E4099D20(uint64_t a1, uint64_t a2, char a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1E3280A90(0, &qword_1ECF3F6C0, off_1E8728658);
  v6 = sub_1E42062A4();

  v7 = [v5 initWithAssetControllers:v6 completionCount:a2 showDownloadingOnlyWhenWholeCollectionDownloads:a3 & 1];

  return v7;
}

id sub_1E4099DC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadQueueManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E4099E40()
{
  OUTLINED_FUNCTION_24();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_1E41FFCB4();
  v1[10] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[11] = v4;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  sub_1E4206434();
  v1[16] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v1[17] = v5;
  v1[18] = v6;
  v7 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E4099F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_121_3();
  v23 = sub_1E32AE9B0(*(v21 + 64));
  if (v23)
  {
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35BC0, &qword_1E42C5FB0);
    v25 = MEMORY[0x1E69E7CC0];
    v26 = sub_1E4205CB4();
    *(v21 + 56) = v25;
    if (v24 < 1)
    {
LABEL_73:
      __break(1u);
LABEL_74:

      v69 = MEMORY[0x1E6911E60](0, v20);
LABEL_44:
      v70 = v69;
      v71 = [v69 metadata];

      if (v71 && (sub_1E32868C0(v71, &selRef_showTitle), v72))
      {
        OUTLINED_FUNCTION_52_52();
      }

      else
      {
LABEL_51:
        OUTLINED_FUNCTION_10_173();
      }

      v74 = OUTLINED_FUNCTION_80_22();
      v75 = OUTLINED_FUNCTION_8_201(v74);
      v76(v75);

      v77 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_79_28();
      v78 = OUTLINED_FUNCTION_61_30();
      v79 = *(v21 + 120);
      v81 = *(v21 + 80);
      v80 = *(v21 + 88);
      if (v78)
      {
        OUTLINED_FUNCTION_6_21();
        OUTLINED_FUNCTION_52_2();
        *isUniquelyReferenced_nonNull_native = 136315138;
        v82 = OUTLINED_FUNCTION_35_5();
        *(isUniquelyReferenced_nonNull_native + 4) = sub_1E3270FC8(v82, v83, v84);
        OUTLINED_FUNCTION_99_2(&dword_1E323F000, v85, v86, "DownloadQueueManager:: enqueueing playables for show %s");
        OUTLINED_FUNCTION_7_234();
        v21 = a12;
        OUTLINED_FUNCTION_6_0();
      }

      v87 = *(v80 + 8);
      v87(v79, v81);
      *(v21 + 240) = v87;
      v88 = swift_task_alloc();
      *(v21 + 248) = v88;
      *v88 = v21;
      OUTLINED_FUNCTION_3_265(v88);
    }

    else
    {
      v20 = v26;
      v27 = 0;
      v28 = *(v21 + 64);
      a13 = v28 & 0xC000000000000001;
      a10 = v28 + 32;
      isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC0];
      a11 = v24;
      a12 = v21;
      do
      {
        if (a13)
        {
          v29 = MEMORY[0x1E6911E60](v27, *(v21 + 64));
        }

        else
        {
          v29 = *(a10 + 8 * v27);
        }

        v30 = v29;
        a15 = sub_1E32859C4(v29, &selRef_showCanonicalID);
        if (v31)
        {
          v32 = v31;
          if (*(v20 + 16))
          {
            v21 = a15;
            OUTLINED_FUNCTION_71_33();
            if (v33)
            {
            }

            else
            {
              v34 = MEMORY[0x1E69E7CC0];
            }
          }

          else
          {
            v34 = MEMORY[0x1E69E7CC0];
            v21 = a15;
          }

          a14 = isUniquelyReferenced_nonNull_native;
          a16 = v34;
          v37 = v30;
          MEMORY[0x1E6910BF0]();
          v38 = *((a16 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((a16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v38 >> 1)
          {
            OUTLINED_FUNCTION_35(v38);
            sub_1E42062F4();
          }

          v39 = v37;
          sub_1E4206324();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a17 = v20;
          v40 = OUTLINED_FUNCTION_71_33();
          v42 = *(v20 + 16);
          v43 = (v41 & 1) == 0;
          v20 = v42 + v43;
          if (__OFADD__(v42, v43))
          {
            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          v44 = v40;
          v45 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F610, &unk_1E42E9700);
          v20 = a17;
          if (sub_1E4207644())
          {
            v46 = OUTLINED_FUNCTION_71_33();
            v48 = a12;
            isUniquelyReferenced_nonNull_native = a14;
            if ((v45 & 1) != (v47 & 1))
            {
              OUTLINED_FUNCTION_68_4();

              return sub_1E4207A74();
            }

            v44 = v46;
          }

          else
          {
            v48 = a12;
            isUniquelyReferenced_nonNull_native = a14;
          }

          v21 = v48;
          if (v45)
          {
            *(a17[7] + 8 * v44) = a16;
          }

          else
          {
            a17[(v44 >> 6) + 8] |= 1 << v44;
            v49 = (a17[6] + 16 * v44);
            *v49 = a15;
            v49[1] = v32;
            *(a17[7] + 8 * v44) = a16;
            v50 = a17[2];
            v51 = __OFADD__(v50, 1);
            v52 = v50 + 1;
            if (v51)
            {
              goto LABEL_72;
            }

            a17[2] = v52;
          }

          v24 = a11;
        }

        else
        {
          v35 = v30;
          MEMORY[0x1E6910BF0]();
          v36 = *((*(v21 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((*(v21 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= v36 >> 1)
          {
            OUTLINED_FUNCTION_35(v36);
            sub_1E42062F4();
          }

          sub_1E4206324();

          isUniquelyReferenced_nonNull_native = *(v21 + 56);
        }

        ++v27;
        *(v21 + 152) = isUniquelyReferenced_nonNull_native;
        *(v21 + 160) = v20;
      }

      while (v24 != v27);
      v53 = *(v20 + 32);
      *(v21 + 352) = v53;
      v54 = -1;
      v55 = -1 << v53;
      if (-(-1 << v53) < 64)
      {
        v54 = ~(-1 << -v55);
      }

      v56 = v54 & *(v20 + 64);

      if (v56)
      {
        v57 = 0;
LABEL_40:
        *(v21 + 168) = v56;
        *(v21 + 176) = v57;
        result = OUTLINED_FUNCTION_33_90(v57);
        if (!result)
        {

          goto LABEL_51;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          goto LABEL_74;
        }

        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v68 = *(v20 + 32);

          v69 = v68;
          goto LABEL_44;
        }

        __break(1u);
LABEL_76:
        __break(1u);
        return result;
      }

      v67 = 0;
      while (((63 - v55) >> 6) - 1 != v67)
      {
        v57 = v67 + 1;
        v56 = *(v20 + 8 * v67++ + 72);
        if (v56)
        {
          goto LABEL_40;
        }
      }

      result = sub_1E32AE9B0(isUniquelyReferenced_nonNull_native);
      *(v21 + 192) = result;
      if (!result)
      {
        OUTLINED_FUNCTION_83_23();

        goto LABEL_34;
      }

      if (result < 1)
      {
        goto LABEL_76;
      }

      OUTLINED_FUNCTION_57_37();
      if (v91)
      {
        v92 = *(v90 + 32);
      }

      else
      {
        v92 = MEMORY[0x1E6911E60](0);
      }

      v93 = [OUTLINED_FUNCTION_67_30(v92) metadata];
      if (v93 && (sub_1E32868C0(v93, &selRef_title), v94))
      {
        OUTLINED_FUNCTION_52_52();
      }

      else
      {
        OUTLINED_FUNCTION_10_173();
      }

      v95 = OUTLINED_FUNCTION_78_23();
      v96 = OUTLINED_FUNCTION_1_294(v95);
      v97(v96);

      v98 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_79_28();
      v99 = OUTLINED_FUNCTION_61_30();
      v100 = *(v21 + 112);
      v102 = *(v21 + 80);
      v101 = *(v21 + 88);
      if (v99)
      {
        OUTLINED_FUNCTION_6_21();
        OUTLINED_FUNCTION_52_2();
        *isUniquelyReferenced_nonNull_native = 136315138;
        v103 = OUTLINED_FUNCTION_35_5();
        *(isUniquelyReferenced_nonNull_native + 4) = sub_1E3270FC8(v103, v104, v105);
        OUTLINED_FUNCTION_99_2(&dword_1E323F000, v106, v107, "DownloadQueueManager:: enqueueing ungrouped playable %s");
        OUTLINED_FUNCTION_7_234();
        v21 = a12;
        OUTLINED_FUNCTION_6_0();
      }

      v108 = *(v101 + 8);
      v108(v100, v102);
      *(v21 + 320) = v108;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      inited = swift_initStackObject();
      v110 = OUTLINED_FUNCTION_65_37(inited);
      OUTLINED_FUNCTION_14_65(v110, xmmword_1E4298880);
      v111 = v20;
      v112 = swift_task_alloc();
      v113 = OUTLINED_FUNCTION_63_36(v112);
      *v113 = v114;
      OUTLINED_FUNCTION_0_334(v113);
    }

    OUTLINED_FUNCTION_68_4();

    return sub_1E409B894();
  }

  else
  {

LABEL_34:
    OUTLINED_FUNCTION_84_24();

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_68_4();

    return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }
}

uint64_t sub_1E409A68C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[32] = v0;

  if (v0)
  {
    v7 = v3[17];
    v8 = v3[18];
    v9 = sub_1E409AF44;
  }

  else
  {

    v7 = v3[17];
    v8 = v3[18];
    v9 = sub_1E409A7A8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E409A7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v25 = *(v21 + 176);
  v26 = (*(v21 + 168) - 1) & *(v21 + 168);
  if (!v26)
  {
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v27 >= (((1 << *(v21 + 352)) + 63) >> 6))
      {
        break;
      }

      v26 = *(*(v21 + 160) + 8 * v27 + 64);
      ++v25;
      if (v26)
      {
        v25 = v27;
        goto LABEL_6;
      }
    }

    v50 = *(v21 + 152);

    result = sub_1E32AE9B0(v50);
    *(v21 + 192) = result;
    if (!result)
    {
      OUTLINED_FUNCTION_83_23();

      OUTLINED_FUNCTION_84_24();

      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_30_38();

      __asm { BRAA            X1, X16 }
    }

    if (result >= 1)
    {
      OUTLINED_FUNCTION_57_37();
      if (v52)
      {
        v53 = *(v51 + 32);
      }

      else
      {
        v53 = MEMORY[0x1E6911E60](0);
      }

      v56 = [OUTLINED_FUNCTION_67_30(v53) metadata];
      if (v56 && (sub_1E32868C0(v56, &selRef_title), v57))
      {
        OUTLINED_FUNCTION_52_52();
      }

      else
      {
        OUTLINED_FUNCTION_10_173();
      }

      v58 = OUTLINED_FUNCTION_78_23();
      v59 = OUTLINED_FUNCTION_1_294(v58);
      v60(v59);

      v61 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_79_28();
      OUTLINED_FUNCTION_61_30();
      OUTLINED_FUNCTION_90_22();
      if (v62)
      {
        OUTLINED_FUNCTION_6_21();
        OUTLINED_FUNCTION_52_2();
        *v24 = 136315138;
        v63 = OUTLINED_FUNCTION_35_5();
        *(v24 + 4) = sub_1E3270FC8(v63, v64, v65);
        OUTLINED_FUNCTION_99_2(&dword_1E323F000, v66, v67, "DownloadQueueManager:: enqueueing ungrouped playable %s");
        OUTLINED_FUNCTION_7_234();
        OUTLINED_FUNCTION_79();

        v61 = *(v22 + 8);
        (v61)(v24, v23);
      }

      else
      {

        v68 = OUTLINED_FUNCTION_51_52();
        (v61)(v68, v23);
      }

      *(v21 + 320) = v61;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      inited = swift_initStackObject();
      v70 = OUTLINED_FUNCTION_65_37(inited);
      OUTLINED_FUNCTION_14_65(v70, xmmword_1E4298880);
      v71 = v20;
      v72 = swift_task_alloc();
      v73 = OUTLINED_FUNCTION_63_36(v72);
      *v73 = v74;
      OUTLINED_FUNCTION_0_334(v73);
      goto LABEL_19;
    }

LABEL_41:
    __break(1u);
    return result;
  }

LABEL_6:
  *(v21 + 168) = v26;
  *(v21 + 176) = v25;
  result = OUTLINED_FUNCTION_33_90(v25);
  if (!result)
  {

LABEL_14:
    OUTLINED_FUNCTION_10_173();

    goto LABEL_15;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
LABEL_39:

    v30 = MEMORY[0x1E6911E60](0, v20);
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_41;
    }

    v29 = *(v20 + 32);

    v30 = v29;
  }

  v31 = v30;
  v32 = [v30 metadata];

  if (!v32)
  {
    goto LABEL_14;
  }

  sub_1E32868C0(v32, &selRef_showTitle);
  if (!v33)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_52_52();
LABEL_15:
  v34 = OUTLINED_FUNCTION_80_22();
  v35 = OUTLINED_FUNCTION_8_201(v34);
  v36(v35);

  v37 = sub_1E41FFC94();
  sub_1E42067E4();
  OUTLINED_FUNCTION_79_28();
  v38 = OUTLINED_FUNCTION_61_30();
  v39 = *(v21 + 120);
  v41 = *(v21 + 80);
  v40 = *(v21 + 88);
  if (v38)
  {
    OUTLINED_FUNCTION_6_21();
    OUTLINED_FUNCTION_52_2();
    *v39 = 136315138;
    v42 = OUTLINED_FUNCTION_35_5();
    *(v39 + 4) = sub_1E3270FC8(v42, v43, v44);
    OUTLINED_FUNCTION_99_2(&dword_1E323F000, v45, v46, "DownloadQueueManager:: enqueueing playables for show %s");
    OUTLINED_FUNCTION_7_234();
    OUTLINED_FUNCTION_79();

    v37 = *(v40 + 8);
    (v37)(v39, v41);
  }

  else
  {

    v47 = OUTLINED_FUNCTION_51_52();
    (v37)(v47, v41);
  }

  *(v21 + 240) = v37;
  v48 = swift_task_alloc();
  *(v21 + 248) = v48;
  *v48 = v21;
  OUTLINED_FUNCTION_3_265(v48);
LABEL_19:
  OUTLINED_FUNCTION_30_38();

  return sub_1E409B894();
}

uint64_t sub_1E409ABD4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[43] = v0;

  if (v0)
  {
    v7 = v3[17];
    v8 = v3[18];
    v9 = sub_1E409B4C4;
  }

  else
  {

    swift_setDeallocating();
    sub_1E377D458();
    v7 = v3[17];
    v8 = v3[18];
    v9 = sub_1E409ACF8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E409ACF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v53 = v22;

  v25 = OUTLINED_FUNCTION_89_20();
  if (v26)
  {
    OUTLINED_FUNCTION_83_23();

    OUTLINED_FUNCTION_84_24();

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_30_38();

    __asm { BRAA            X1, X16 }
  }

  *(v22 + 264) = v25;
  v29 = *(v22 + 152);
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x1E6911E60]();
  }

  else
  {
    v30 = OUTLINED_FUNCTION_82_24(v25, v29);
  }

  v31 = [OUTLINED_FUNCTION_67_30(v30) metadata];
  if (v31 && (v32 = sub_1E32868C0(v31, &selRef_title), v33))
  {
    v23 = v32;
    v21 = v33;
  }

  else
  {

    OUTLINED_FUNCTION_88_20();
  }

  *(v22 + 280) = v23;
  *(v22 + 288) = v21;
  v34 = *(v22 + 80);
  v35 = *(v22 + 88);
  v36 = sub_1E324FBDC();
  v37 = OUTLINED_FUNCTION_1_294(v36);
  v38(v37);

  v39 = sub_1E41FFC94();
  sub_1E42067E4();

  OUTLINED_FUNCTION_61_30();
  OUTLINED_FUNCTION_90_22();
  if (v40)
  {
    OUTLINED_FUNCTION_6_21();
    v52 = OUTLINED_FUNCTION_52_2();
    *v24 = 136315138;
    *(v24 + 4) = sub_1E3270FC8(v23, v21, &v52);
    OUTLINED_FUNCTION_99_2(&dword_1E323F000, v41, v42, "DownloadQueueManager:: enqueueing ungrouped playable %s");
    OUTLINED_FUNCTION_7_234();
    OUTLINED_FUNCTION_79();

    v39 = *(v34 + 8);
    (v39)(v24, v35);
  }

  else
  {

    v43 = OUTLINED_FUNCTION_51_52();
    (v39)(v43, v35);
  }

  *(v22 + 320) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  inited = swift_initStackObject();
  v45 = OUTLINED_FUNCTION_65_37(inited);
  OUTLINED_FUNCTION_14_65(v45, xmmword_1E4298880);
  v46 = v20;
  v47 = swift_task_alloc();
  v48 = OUTLINED_FUNCTION_63_36(v47);
  *v48 = v49;
  OUTLINED_FUNCTION_0_334(v48);
  OUTLINED_FUNCTION_30_38();

  return sub_1E409B894();
}

uint64_t sub_1E409AF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = *(v20 + 256);
  (*(v20 + 224))(*(v20 + 104), *(v20 + 216), *(v20 + 80), a4, a5, a6, a7, a8);

  v24 = v23;
  v25 = sub_1E41FFC94();
  sub_1E42067F4();
  OUTLINED_FUNCTION_106_20();

  v26 = OUTLINED_FUNCTION_110_5();
  v27 = *(v20 + 256);
  v28 = *(v20 + 240);
  if (v26)
  {
    v95 = *(v20 + 80);
    v96 = *(v20 + 104);
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_36_8();
    v97 = OUTLINED_FUNCTION_52_2();
    v36 = OUTLINED_FUNCTION_102_18(4.8151e-34, v97, v29, v30, v31, v32, v33, v34, v35);

    *(v28 + 4) = v36;
    OUTLINED_FUNCTION_70_31();
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 14) = v37;
    *v22 = v37;
    OUTLINED_FUNCTION_36_4();
    _os_log_impl(v38, v39, v40, v41, v42, 0x16u);
    sub_1E325F7A8(v22, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_79();
    __swift_destroy_boxed_opaque_existential_1(v97);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_55();

    (v28)(v96, v95);
  }

  else
  {
    v43 = *(v20 + 88);

    v21 = v43 + 8;

    v44 = OUTLINED_FUNCTION_35_5();
    (v28)(v44);
  }

  v45 = *(v20 + 176);
  v46 = (*(v20 + 168) - 1) & *(v20 + 168);
  if (!v46)
  {
    while (1)
    {
      v47 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v47 >= (((1 << *(v20 + 352)) + 63) >> 6))
      {
        break;
      }

      v46 = *(*(v20 + 160) + 8 * v47 + 64);
      ++v45;
      if (v46)
      {
        v45 = v47;
        goto LABEL_9;
      }
    }

    v70 = *(v20 + 152);

    result = sub_1E32AE9B0(v70);
    *(v20 + 192) = result;
    if (!result)
    {
      OUTLINED_FUNCTION_83_23();

      OUTLINED_FUNCTION_84_24();

      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_29_30();

      __asm { BRAA            X1, X16 }
    }

    if (result >= 1)
    {
      OUTLINED_FUNCTION_57_37();
      if (v72)
      {
        v73 = *(v71 + 32);
      }

      else
      {
        v73 = MEMORY[0x1E6911E60](0);
      }

      v76 = [OUTLINED_FUNCTION_67_30(v73) metadata];
      if (v76 && (sub_1E32868C0(v76, &selRef_title), v77))
      {
        OUTLINED_FUNCTION_52_52();
      }

      else
      {
        OUTLINED_FUNCTION_10_173();
      }

      v78 = OUTLINED_FUNCTION_78_23();
      v79 = OUTLINED_FUNCTION_1_294(v78);
      v80(v79);

      v81 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_79_28();
      OUTLINED_FUNCTION_61_30();
      OUTLINED_FUNCTION_90_22();
      if (v82)
      {
        OUTLINED_FUNCTION_6_21();
        OUTLINED_FUNCTION_52_2();
        *v22 = 136315138;
        v83 = OUTLINED_FUNCTION_35_5();
        *(v22 + 4) = sub_1E3270FC8(v83, v84, v85);
        OUTLINED_FUNCTION_99_2(&dword_1E323F000, v86, v87, "DownloadQueueManager:: enqueueing ungrouped playable %s");
        OUTLINED_FUNCTION_7_234();
        OUTLINED_FUNCTION_79();

        v81 = *(v21 + 8);
        (v81)(v22, v28);
      }

      else
      {

        v88 = OUTLINED_FUNCTION_51_52();
        (v81)(v88, v28);
      }

      *(v20 + 320) = v81;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      inited = swift_initStackObject();
      v90 = OUTLINED_FUNCTION_65_37(inited);
      OUTLINED_FUNCTION_14_65(v90, xmmword_1E4298880);
      v91 = v27;
      v92 = swift_task_alloc();
      v93 = OUTLINED_FUNCTION_63_36(v92);
      *v93 = v94;
      OUTLINED_FUNCTION_0_334(v93);
      goto LABEL_22;
    }

LABEL_44:
    __break(1u);
    return result;
  }

LABEL_9:
  *(v20 + 168) = v46;
  *(v20 + 176) = v45;
  result = OUTLINED_FUNCTION_33_90(v45);
  if (!result)
  {

LABEL_17:
    OUTLINED_FUNCTION_10_173();

    goto LABEL_18;
  }

  if ((v27 & 0xC000000000000001) != 0)
  {
LABEL_42:

    v50 = MEMORY[0x1E6911E60](0, v27);
  }

  else
  {
    if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_44;
    }

    v49 = *(v27 + 32);

    v50 = v49;
  }

  v51 = v50;
  v52 = [v50 metadata];

  if (!v52)
  {
    goto LABEL_17;
  }

  sub_1E32868C0(v52, &selRef_showTitle);
  if (!v53)
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_52_52();
LABEL_18:
  v54 = OUTLINED_FUNCTION_80_22();
  v55 = OUTLINED_FUNCTION_8_201(v54);
  v56(v55);

  v57 = sub_1E41FFC94();
  sub_1E42067E4();
  OUTLINED_FUNCTION_79_28();
  v58 = OUTLINED_FUNCTION_61_30();
  v59 = *(v20 + 120);
  v61 = *(v20 + 80);
  v60 = *(v20 + 88);
  if (v58)
  {
    OUTLINED_FUNCTION_6_21();
    OUTLINED_FUNCTION_52_2();
    *v59 = 136315138;
    v62 = OUTLINED_FUNCTION_35_5();
    *(v59 + 4) = sub_1E3270FC8(v62, v63, v64);
    OUTLINED_FUNCTION_99_2(&dword_1E323F000, v65, v66, "DownloadQueueManager:: enqueueing playables for show %s");
    OUTLINED_FUNCTION_7_234();
    OUTLINED_FUNCTION_79();

    v57 = *(v60 + 8);
    (v57)(v59, v61);
  }

  else
  {

    v67 = OUTLINED_FUNCTION_51_52();
    (v57)(v67, v61);
  }

  *(v20 + 240) = v57;
  v68 = swift_task_alloc();
  *(v20 + 248) = v68;
  *v68 = v20;
  OUTLINED_FUNCTION_3_265(v68);
LABEL_22:
  OUTLINED_FUNCTION_29_30();

  return sub_1E409B894();
}

uint64_t sub_1E409B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v80 = v20;
  v21 = v20[43];
  v22 = v20[38];
  v23 = v20[37];
  v24 = v20[12];
  v25 = v20[10];
  swift_setDeallocating();
  sub_1E377D458();
  (v22)(v24, v23, v25);

  v26 = v21;
  v27 = sub_1E41FFC94();
  sub_1E42067F4();

  v28 = OUTLINED_FUNCTION_110_5();
  v29 = v20[43];
  v30 = v20[40];
  if (v28)
  {
    v78 = v20[12];
    v77 = v20[10];
    v76 = v20[34];
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_36_8();
    v31 = v30;
    v32 = OUTLINED_FUNCTION_52_2();
    v79 = v32;
    v40 = OUTLINED_FUNCTION_102_18(4.8151e-34, v32, v33, v34, v35, v36, v37, v38, v39);

    *(v25 + 4) = v40;
    OUTLINED_FUNCTION_70_31();
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v25 + 14) = v41;
    *v22 = v41;
    OUTLINED_FUNCTION_36_4();
    _os_log_impl(v42, v43, v44, v45, v46, 0x16u);
    sub_1E325F7A8(v22, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_79();
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_55();

    v31(v78, v77);
  }

  else
  {
    v47 = v20[34];
    v40 = v20[12];
    v31 = v20[10];

    v48 = OUTLINED_FUNCTION_35_5();
    (v30)(v48);
  }

  v49 = OUTLINED_FUNCTION_89_20();
  if (v50)
  {
    OUTLINED_FUNCTION_83_23();

    OUTLINED_FUNCTION_84_24();

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_29_30();

    __asm { BRAA            X1, X16 }
  }

  v20[33] = v49;
  v53 = v20[19];
  if ((v53 & 0xC000000000000001) != 0)
  {
    v54 = MEMORY[0x1E6911E60]();
  }

  else
  {
    v54 = OUTLINED_FUNCTION_82_24(v49, v53);
  }

  v55 = [OUTLINED_FUNCTION_67_30(v54) metadata];
  if (v55 && (v56 = sub_1E32868C0(v55, &selRef_title), v57))
  {
    v31 = v56;
    v40 = v57;
  }

  else
  {

    OUTLINED_FUNCTION_88_20();
  }

  v20[35] = v31;
  v20[36] = v40;
  v58 = v20[10];
  v59 = v20[11];
  v60 = sub_1E324FBDC();
  v61 = OUTLINED_FUNCTION_1_294(v60);
  v62(v61);

  v63 = sub_1E41FFC94();
  sub_1E42067E4();

  OUTLINED_FUNCTION_61_30();
  OUTLINED_FUNCTION_90_22();
  if (v64)
  {
    OUTLINED_FUNCTION_6_21();
    v79 = OUTLINED_FUNCTION_52_2();
    *v22 = 136315138;
    *(v22 + 4) = sub_1E3270FC8(v31, v40, &v79);
    OUTLINED_FUNCTION_99_2(&dword_1E323F000, v65, v66, "DownloadQueueManager:: enqueueing ungrouped playable %s");
    OUTLINED_FUNCTION_7_234();
    OUTLINED_FUNCTION_79();

    v63 = *(v58 + 8);
    (v63)(v22, v59);
  }

  else
  {

    v67 = OUTLINED_FUNCTION_51_52();
    (v63)(v67, v59);
  }

  v20[40] = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  inited = swift_initStackObject();
  v69 = OUTLINED_FUNCTION_65_37(inited);
  OUTLINED_FUNCTION_14_65(v69, xmmword_1E4298880);
  v70 = v29;
  v71 = swift_task_alloc();
  v72 = OUTLINED_FUNCTION_63_36(v71);
  *v72 = v73;
  OUTLINED_FUNCTION_0_334(v72);
  OUTLINED_FUNCTION_29_30();

  return sub_1E409B894();
}

uint64_t sub_1E409B894()
{
  OUTLINED_FUNCTION_24();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_1E41FFCB4();
  v1[22] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[23] = v4;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  sub_1E4206434();
  v1[29] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_51_17();
  v1[30] = v5;
  v1[31] = v6;
  v7 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1E409B998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13, uint64_t a14, unint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_121_3();
  a27 = v32;
  a28 = v33;
  a26 = v29;
  v34 = v29[20];
  v35 = sub_1E32AE9B0(v34);
  v98 = v29;
  v29[32] = v35;
  v36 = v34 & 0xC000000000000001;
  v37 = &selRef_itemProviderForActivityWithAdamId_previewMetadata_existingItemProvider_;
  if (v35)
  {
    if (v36)
    {
      goto LABEL_64;
    }

    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v38 = *(v29[20] + 32);
      goto LABEL_5;
    }

    __break(1u);
LABEL_66:
    v34 = MEMORY[0x1E6911E60](0, v30);
    v35 = v30 & 0xFFFFFFFFFFFFFF8;
LABEL_38:
    v67 = 1;
    v37 = &selRef_processPendingChanges;
LABEL_39:
    v98[35] = v34;
    while (v36 != v67)
    {
      if (v31)
      {
        v68 = OUTLINED_FUNCTION_35_5();
        v69 = MEMORY[0x1E6911E60](v68);
      }

      else
      {
        if ((v67 & 0x8000000000000000) != 0)
        {
          goto LABEL_62;
        }

        if (v67 >= *(v35 + 16))
        {
          goto LABEL_63;
        }

        v69 = *(v30 + 8 * v67 + 32);
      }

      v70 = v69;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_61;
      }

      v71 = [v34 rank];
      if (v71 < [v70 rank])
      {

        ++v67;
        v34 = v70;
        v30 = a15;
        goto LABEL_39;
      }

      ++v67;
      v30 = a15;
    }

    v72 = v34;
    v73 = swift_task_alloc();
    v98[36] = v73;
    *v73 = v98;
    OUTLINED_FUNCTION_56_1(v73);
    OUTLINED_FUNCTION_68_4();

    sub_1E4099408();
    return;
  }

LABEL_14:
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_10_173();
  while (2)
  {
    while (2)
    {
      v48 = 0;
      v49 = MEMORY[0x1E69E7CC0];
      v96 = v28;
      v97 = v42;
      v98[33] = v28;
      v98[34] = v42;
      v50 = (v34 & 0xFFFFFFFFFFFFFF8);
      v51 = v98[20];
      a17 = v49;
      a15 = v49;
      v100 = v51 + 32;
      v99 = v34 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v35 == v48)
        {
          v30 = a15;
          v66 = sub_1E32AE9B0(a15);
          if (!v66)
          {
            v75 = v98[25];
            v76 = v98[22];
            v77 = v98[23];

            v78 = sub_1E324FBDC();
            (*(v77 + 16))(v75, v78, v76);

            v79 = sub_1E41FFC94();
            v80 = sub_1E42067F4();

            v81 = os_log_type_enabled(v79, v80);
            v82 = v98[25];
            v83 = v98[22];
            v84 = v98[23];
            if (v81)
            {
              v85 = OUTLINED_FUNCTION_6_21();
              v86 = OUTLINED_FUNCTION_100();
              a17 = v86;
              *v85 = 136315138;
              v87 = sub_1E3270FC8(v96, v97, &a17);

              *(v85 + 4) = v87;
              _os_log_impl(&dword_1E323F000, v79, v80, "DownloadQueueManager:: not downloading show %s because there is no content rating", v85, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v86);
              OUTLINED_FUNCTION_51_2();
              OUTLINED_FUNCTION_6_0();
            }

            else
            {
            }

            (*(v84 + 8))(v82, v83);

            OUTLINED_FUNCTION_54();
            OUTLINED_FUNCTION_68_4();

            v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, v96, v97, v98, a13, v99, a15, v100, a17, a18, a19, a20);
            return;
          }

          v36 = v66;
          v31 = a15 & 0xC000000000000001;
          if ((a15 & 0xC000000000000001) != 0)
          {
            goto LABEL_66;
          }

          v35 = a15 & 0xFFFFFFFFFFFFFF8;
          if (*((a15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v34 = *(a15 + 32);
            goto LABEL_38;
          }

          __break(1u);
          goto LABEL_68;
        }

        if (v36)
        {
          v52 = MEMORY[0x1E6911E60](v48, v98[20]);
        }

        else
        {
          if (v48 >= v50[2])
          {
            goto LABEL_60;
          }

          v52 = *(v100 + 8 * v48);
        }

        v53 = v52;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        v54 = [v52 v37[407]];
        if (v54)
        {
          v55 = v54;
          v56 = sub_1E32859C4(v54, &selRef_ratingSystem);
          if (!v57)
          {
            goto LABEL_30;
          }

          v58 = v56;
          v34 = v57;
          v37 = v36;
          v36 = v35;
          v59 = [v55 ratingValue];
          if (!v59 || (v50 = v59, a13 = [v59 unsignedIntegerValue], v50, v60 = sub_1E32859C4(v55, &selRef_ratingName), !v61))
          {

            OUTLINED_FUNCTION_95_20();
LABEL_30:

            goto LABEL_31;
          }

          v35 = v60;
          v50 = v61;
          v62 = objc_allocWithZone(MEMORY[0x1E69DF6B8]);
          v63 = v34;
          v34 = v62;
          v64 = sub_1E3A294D4(v58, v63, v35, v50, a13, 0, 0);

          OUTLINED_FUNCTION_95_20();
          if (!v64)
          {
            goto LABEL_32;
          }

          MEMORY[0x1E6910BF0]();
          v65 = *((a17 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((a17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v65 >> 1)
          {
            OUTLINED_FUNCTION_35(v65);
            sub_1E42062F4();
          }

          v34 = &a17;
          sub_1E4206324();
          a15 = a17;
          ++v48;
        }

        else
        {
LABEL_31:

LABEL_32:
          ++v48;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      v38 = MEMORY[0x1E6911E60](0, v98[20]);
LABEL_5:
      v39 = v38;
      v40 = [v38 v37[407]];

      if (v40)
      {
        v41 = sub_1E32868C0(v40, &selRef_showTitle);
        if (v42)
        {
          v28 = v41;
          continue;
        }
      }

      break;
    }

    if (v36)
    {
LABEL_68:
      v43 = MEMORY[0x1E6911E60](0, v98[20]);
      goto LABEL_11;
    }

    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v43 = *(v98[20] + 32);
LABEL_11:
      v28 = v43;
      v44 = [v43 v37[407]];

      if (v44)
      {
        v45 = sub_1E32868C0(v44, &selRef_title);
        if (v46)
        {
          v47 = v46;
          v28 = v45;

          v42 = v47;
          continue;
        }
      }

      goto LABEL_14;
    }

    break;
  }

  __break(1u);
}

uint64_t sub_1E409BFAC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = v1[35];
  v5 = *v0;
  OUTLINED_FUNCTION_31();
  *v6 = v5;
  *(v8 + 368) = v7;
  *(v8 + 296) = v9;
  *(v8 + 371) = v10;

  v11 = v1[31];
  v12 = v1[30];

  return MEMORY[0x1EEE6DFA0](sub_1E409C0F0, v12, v11);
}

uint64_t sub_1E409C0F0(uint64_t a1, __n128 a2)
{
  v76 = v2;
  v3 = *(v2 + 256);
  if (v3)
  {
    if (v3 < 1)
    {
      __break(1u);
    }

    else
    {
      v4 = 0;
      v5 = &unk_1EE231000;
      v6 = &selRef_setWaitingForTransactionToStart_;
      v7 = &selRef_setWaitingForTransactionToStart_;
      a2.n128_u64[0] = 136315650;
      v64 = a2;
      while (1)
      {
        v8 = OUTLINED_FUNCTION_55_51(v4);
        v11 = v10 ? OUTLINED_FUNCTION_82_24(v8, v9) : MEMORY[0x1E6911E60](v8);
        v12 = v11;
        *(v2 + 312) = v11;
        v13 = *(v2 + 368);
        v14 = [objc_allocWithZone((v5 + 1224)) initWithVideosPlayable_];
        v15 = v14;
        *(v2 + 320) = v14;
        if (v13 & 1) != 0 && (sub_1E409D41C(v14))
        {
          break;
        }

        v71 = v12;
        v73 = v15;
        v16 = *(v2 + 208);
        v17 = *(v2 + 176);
        v18 = *(v2 + 184);
        v19 = [v15 v6[305]];
        v20 = [v19 v7[310]];

        *(v2 + 144) = v20;
        OUTLINED_FUNCTION_41_69();
        v21 = sub_1E4205F84();
        v23 = v22;
        v24 = sub_1E324FBDC();
        (*(v18 + 16))(v16, v24, v17);

        v25 = sub_1E41FFC94();
        v26 = sub_1E42067E4();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = v5;
          v28 = v6;
          v30 = *(v2 + 264);
          v29 = *(v2 + 272);
          v67 = *(v2 + 184);
          v68 = *(v2 + 176);
          v69 = *(v2 + 208);
          v66 = *(v2 + 368) & 1;
          v65 = v21;
          v31 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          *v31 = v64.n128_u32[0];
          v32 = v30;
          v6 = v28;
          v5 = v27;
          *(v31 + 4) = sub_1E3270FC8(v32, v29, &v75);
          *(v31 + 12) = 1024;
          *(v31 + 14) = v66;
          *(v31 + 18) = 2080;
          v33 = sub_1E3270FC8(v65, v23, &v75);

          *(v31 + 20) = v33;
          _os_log_impl(&dword_1E323F000, v25, v26, "    DownloadQueueManager:: not downloading %s because canDownload=%{BOOL}d and downloadStatus=%s", v31, 0x1Cu);
          swift_arrayDestroy();
          v7 = &selRef_setWaitingForTransactionToStart_;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_51_2();

          (*(v67 + 8))(v69, v68);
        }

        else
        {

          v34 = OUTLINED_FUNCTION_27_0();
          v35(v34);
        }

        v4 = OUTLINED_FUNCTION_29_101();
        if (v10)
        {
          goto LABEL_14;
        }
      }

      v39 = sub_1E324FBDC();
      v40 = OUTLINED_FUNCTION_9_191(v39);
      v41(v40);

      v42 = v15;
      v43 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_106_20();

      if (OUTLINED_FUNCTION_110_5())
      {
        v44 = v7;
        v70 = *(v2 + 184);
        v72 = *(v2 + 176);
        v74 = *(v2 + 224);
        OUTLINED_FUNCTION_49_0();
        v75 = OUTLINED_FUNCTION_72_30();
        *v15 = 136315394;
        v45 = OUTLINED_FUNCTION_123_0();
        v48 = sub_1E3270FC8(v45, v46, v47);
        OUTLINED_FUNCTION_58_39(v48);
        v49 = [v42 v6[305]];
        v50 = [v49 v44 + 1144];

        *(v2 + 152) = v50;
        OUTLINED_FUNCTION_41_69();
        v51 = sub_1E4205F84();
        v53 = sub_1E3270FC8(v51, v52, &v75);

        *(v15 + 14) = v53;
        OUTLINED_FUNCTION_36_4();
        _os_log_impl(v54, v55, v56, v57, v58, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_7_7();
        OUTLINED_FUNCTION_55();

        v59 = *(v70 + 8);
        v59(v74, v72);
      }

      else
      {
        v60 = *(v2 + 184);

        v59 = *(v60 + 8);
        v61 = OUTLINED_FUNCTION_35_5();
        (v59)(v61);
      }

      *(v2 + 352) = v59;
      *(v2 + 16) = v2;
      *(v2 + 56) = v2 + 370;
      *(v2 + 24) = sub_1E409C67C;
      swift_continuation_init();
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A038, &qword_1E42D6A40);
      OUTLINED_FUNCTION_5_241(v62);
      *(v2 + 88) = 1107296256;
      OUTLINED_FUNCTION_4_260(&block_descriptor_32_4);
      OUTLINED_FUNCTION_15_168(v63, sel_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion_);
      a1 = v2 + 16;
    }

    return MEMORY[0x1EEE6DEC8](a1);
  }

  else
  {
LABEL_14:
    v36 = *(v2 + 280);

    OUTLINED_FUNCTION_77_23();

    OUTLINED_FUNCTION_54();

    return v37();
  }
}

uint64_t sub_1E409C67C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  *v2 = *v0;
  v4 = v3[6];
  *(v1 + 360) = v4;
  v5 = v3[31];
  v6 = v3[30];
  if (v4)
  {
    v7 = sub_1E409CDCC;
  }

  else
  {
    v7 = sub_1E409C7A0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E409C7A0()
{
  v75 = v0;
  v3 = *(v0 + 370);
  (*(v0 + 336))(*(v0 + 216), *(v0 + 328), *(v0 + 176));

  v4 = sub_1E41FFC94();
  v5 = sub_1E42067E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 352);
  v8 = &xmmword_1E4297000;
  v10 = *(v0 + 312);
  v9 = *(v0 + 320);
  if (v6)
  {
    v71 = *(v0 + 352);
    v62 = *(v0 + 320);
    v9 = *(v0 + 264);
    v11 = *(v0 + 272);
    v65 = *(v0 + 176);
    v68 = *(v0 + 216);
    v1 = swift_slowAlloc();
    v2 = OUTLINED_FUNCTION_100();
    v74 = v2;
    *v1 = 136315394;
    *(v1 + 4) = sub_1E3270FC8(v9, v11, &v74);
    *(v1 + 12) = 1024;
    *(v1 + 14) = v3;
    _os_log_impl(&dword_1E323F000, v4, v5, "DownloadQueueManager:: started downloading %s, success=%{BOOL}d", v1, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_7_7();

    v71(v68, v65);
  }

  else
  {
    v8 = *(v0 + 216);

    v12 = OUTLINED_FUNCTION_27_0();
    v7(v12);
  }

  while (1)
  {
    v35 = OUTLINED_FUNCTION_29_101();
    if (v15)
    {
      break;
    }

    v13 = OUTLINED_FUNCTION_55_51(v35);
    if (v15)
    {
      v16 = OUTLINED_FUNCTION_82_24(v13, v14);
    }

    else
    {
      v16 = MEMORY[0x1E6911E60](v13);
    }

    v17 = v16;
    *(v0 + 312) = v16;
    v18 = *(v0 + 368);
    OUTLINED_FUNCTION_97_18([objc_allocWithZone(VUIUniversalAssetController) initWithVideosPlayable_]);
    if (v18 & 1) != 0 && (sub_1E409D41C(v8))
    {
      v39 = sub_1E324FBDC();
      v40 = OUTLINED_FUNCTION_9_191(v39);
      v41(v40);

      v42 = v8;
      v43 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_106_20();

      if (OUTLINED_FUNCTION_110_5())
      {
        v45 = *(v0 + 264);
        v44 = *(v0 + 272);
        v67 = *(v0 + 184);
        v70 = *(v0 + 176);
        v73 = *(v0 + 224);
        OUTLINED_FUNCTION_49_0();
        v74 = OUTLINED_FUNCTION_72_30();
        *v9 = 136315394;
        v46 = sub_1E3270FC8(v45, v44, &v74);
        OUTLINED_FUNCTION_58_39(v46);
        v47 = [v42 *(v2 + 2440)];
        v48 = [v47 (v1 + 1144)];

        *(v0 + 152) = v48;
        OUTLINED_FUNCTION_41_69();
        v49 = sub_1E4205F84();
        v51 = sub_1E3270FC8(v49, v50, &v74);

        *(v9 + 14) = v51;
        OUTLINED_FUNCTION_36_4();
        _os_log_impl(v52, v53, v54, v55, v56, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_55();

        v57 = *(v67 + 8);
        v57(v73, v70);
      }

      else
      {
        v58 = *(v0 + 184);

        v57 = *(v58 + 8);
        v59 = OUTLINED_FUNCTION_35_5();
        (v57)(v59);
      }

      *(v0 + 352) = v57;
      *(v0 + 16) = v0;
      OUTLINED_FUNCTION_25_108(v0 + 370);
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A038, &qword_1E42D6A40);
      OUTLINED_FUNCTION_5_241(v60);
      *(v0 + 88) = 1107296256;
      OUTLINED_FUNCTION_4_260(&block_descriptor_32_4);
      OUTLINED_FUNCTION_15_168(v61, sel_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion_);

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    v72 = v17;
    v19 = OUTLINED_FUNCTION_81_27();
    v20 = [v19 (v1 + 1144)];

    *(v0 + 144) = v20;
    OUTLINED_FUNCTION_41_69();
    v1 = sub_1E4205F84();
    v22 = v21;
    sub_1E324FBDC();
    v23 = OUTLINED_FUNCTION_20_127();
    v24(v23);

    v25 = sub_1E41FFC94();
    v2 = sub_1E42067E4();

    if (os_log_type_enabled(v25, v2))
    {
      v63 = v1;
      v1 = *(v0 + 264);
      v64 = *(v0 + 184);
      v66 = *(v0 + 176);
      v69 = *(v0 + 208);
      v26 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v26 = 136315650;
      v27 = OUTLINED_FUNCTION_17_11();
      v30 = sub_1E3270FC8(v27, v28, v29);
      OUTLINED_FUNCTION_50_55(v30);
      v9 = sub_1E3270FC8(v63, v22, &v74);

      *(v26 + 20) = v9;
      OUTLINED_FUNCTION_104_18(&dword_1E323F000, v31, v32, "    DownloadQueueManager:: not downloading %s because canDownload=%{BOOL}d and downloadStatus=%s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v64 + 8))(v69, v66);
    }

    else
    {
      v33 = *(v0 + 208);
      v9 = *(v0 + 176);
      v34 = *(v0 + 184);

      (*(v34 + 8))(v33, v9);
    }
  }

  v36 = *(v0 + 280);

  OUTLINED_FUNCTION_77_23();

  OUTLINED_FUNCTION_54();

  return v37();
}

uint64_t sub_1E409CDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, SEL *a9, uint64_t a10, void (*a11)(void *, uint64_t), void (**a12)(void, void), uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_121_3();
  a27 = v29;
  a28 = v30;
  a26 = v28;
  v109 = v28 + 370;
  v31 = *(v28 + 360);
  v32 = *(v28 + 336);
  v33 = *(v28 + 328);
  v34 = *(v28 + 192);
  v35 = *(v28 + 176);
  swift_willThrow();
  v32(v34, v33, v35);

  v36 = v31;
  v37 = sub_1E41FFC94();
  sub_1E42067F4();

  v38 = OUTLINED_FUNCTION_110_5();
  v40 = *(v28 + 352);
  v39 = *(v28 + 360);
  v41 = *(v28 + 320);
  if (v38)
  {
    v42 = *(v28 + 264);
    v43 = *(v28 + 272);
    a12 = *(v28 + 312);
    a14 = *(v28 + 176);
    a15 = *(v28 + 192);
    a13 = *(v28 + 184) + 8;
    OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_36_8();
    a9 = v41;
    a11 = v40;
    v40 = OUTLINED_FUNCTION_52_2();
    a16 = v40;
    *v35 = 136315394;
    *(v35 + 4) = sub_1E3270FC8(v42, v43, &a16);
    OUTLINED_FUNCTION_70_31();
    v44 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 14) = v44;
    *v41 = v44;
    OUTLINED_FUNCTION_36_4();
    _os_log_impl(v45, v46, v47, v48, v49, 0x16u);
    sub_1E325F7A8(v41, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_79();
    __swift_destroy_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_55();

    a11(a15, a14);
  }

  else
  {

    v50 = OUTLINED_FUNCTION_35_5();
    (v40)(v50);
  }

  while (1)
  {
    v73 = OUTLINED_FUNCTION_29_101();
    if (v53)
    {
      break;
    }

    v51 = OUTLINED_FUNCTION_55_51(v73);
    if (v53)
    {
      v54 = OUTLINED_FUNCTION_82_24(v51, v52);
    }

    else
    {
      v54 = MEMORY[0x1E6911E60](v51);
    }

    v55 = v54;
    *(v28 + 312) = v54;
    v56 = *(v28 + 368);
    OUTLINED_FUNCTION_97_18([objc_allocWithZone(VUIUniversalAssetController) initWithVideosPlayable_]);
    if (v56 & 1) != 0 && (sub_1E409D41C(v39))
    {
      v84 = sub_1E324FBDC();
      v85 = OUTLINED_FUNCTION_9_191(v84);
      v86(v85);

      v87 = v39;
      v88 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_106_20();

      if (OUTLINED_FUNCTION_110_5())
      {
        v90 = *(v28 + 264);
        v89 = *(v28 + 272);
        v110 = *(v28 + 184);
        v111 = *(v28 + 176);
        v112 = *(v28 + 224);
        OUTLINED_FUNCTION_49_0();
        a16 = OUTLINED_FUNCTION_72_30();
        *v35 = 136315394;
        v91 = sub_1E3270FC8(v90, v89, &a16);
        OUTLINED_FUNCTION_58_39(v91);
        v92 = [v87 v41[305]];
        v93 = [v92 (v40 + 1144)];

        *(v28 + 152) = v93;
        OUTLINED_FUNCTION_41_69();
        v94 = sub_1E4205F84();
        v96 = sub_1E3270FC8(v94, v95, &a16);

        *(v35 + 14) = v96;
        OUTLINED_FUNCTION_36_4();
        _os_log_impl(v97, v98, v99, v100, v101, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_51_2();
        OUTLINED_FUNCTION_55();

        v102 = *(v110 + 8);
        v102(v112, v111);
      }

      else
      {
        v103 = *(v28 + 184);

        v102 = *(v103 + 8);
        v104 = OUTLINED_FUNCTION_35_5();
        (v102)(v104);
      }

      *(v28 + 352) = v102;
      *(v28 + 16) = v28;
      OUTLINED_FUNCTION_25_108(v109);
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A038, &qword_1E42D6A40);
      OUTLINED_FUNCTION_5_241(v105);
      *(v28 + 88) = 1107296256;
      OUTLINED_FUNCTION_4_260(&block_descriptor_32_4);
      OUTLINED_FUNCTION_15_168(v106, sel_startDownloadAllowingCellular_quality_shouldMarkAsDeletedOnCancellationOrFailure_prefer3DOrImmersiveDownload_isAutomatic_completion_);
      OUTLINED_FUNCTION_68_4();

      return MEMORY[0x1EEE6DEC8](v107);
    }

    a15 = v55;
    v57 = OUTLINED_FUNCTION_81_27();
    v58 = [v57 (v40 + 1144)];

    *(v28 + 144) = v58;
    OUTLINED_FUNCTION_41_69();
    v40 = sub_1E4205F84();
    v60 = v59;
    sub_1E324FBDC();
    v61 = OUTLINED_FUNCTION_20_127();
    v62(v61);

    v63 = sub_1E41FFC94();
    v41 = sub_1E42067E4();

    if (os_log_type_enabled(v63, v41))
    {
      a11 = v40;
      v40 = *(v28 + 264);
      a12 = *(v28 + 184);
      a13 = *(v28 + 176);
      a14 = *(v28 + 208);
      v64 = swift_slowAlloc();
      a16 = swift_slowAlloc();
      *v64 = 136315650;
      v65 = OUTLINED_FUNCTION_17_11();
      v68 = sub_1E3270FC8(v65, v66, v67);
      OUTLINED_FUNCTION_50_55(v68);
      v35 = sub_1E3270FC8(a11, v60, &a16);

      *(v64 + 20) = v35;
      OUTLINED_FUNCTION_104_18(&dword_1E323F000, v69, v70, "    DownloadQueueManager:: not downloading %s because canDownload=%{BOOL}d and downloadStatus=%s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      a12[1](a14, a13);
    }

    else
    {
      v71 = *(v28 + 208);
      v35 = *(v28 + 176);
      v72 = *(v28 + 184);

      (*(v72 + 8))(v71, v35);
    }
  }

  v74 = *(v28 + 280);

  OUTLINED_FUNCTION_77_23();

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_68_4();

  return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, v109, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}