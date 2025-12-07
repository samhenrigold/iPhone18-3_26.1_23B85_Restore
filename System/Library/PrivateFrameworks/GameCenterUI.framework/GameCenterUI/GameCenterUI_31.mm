BOOL sub_24E26C3C0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 56);
  v9 = *(a1 + 80);
  v44[0] = *(a1 + 64);
  v44[1] = v9;
  v45 = *(a1 + 96);
  v10 = *(a1 + 104);
  v11 = *(a1 + 120);
  v12 = *(a1 + 48);
  v41 = *(a1 + 136);
  v40[0] = v10;
  v40[1] = v11;
  v13 = *a2;
  v14 = *(a2 + 8);
  v15 = *(a2 + 16);
  v16 = *(a2 + 24);
  v17 = *(a2 + 32);
  v18 = *(a2 + 40);
  v19 = *(a2 + 56);
  v20 = *(a2 + 80);
  v46[0] = *(a2 + 64);
  v46[1] = v20;
  v47 = *(a2 + 96);
  v21 = *(a2 + 104);
  v22 = *(a2 + 120);
  v23 = *(a2 + 48);
  v43 = *(a2 + 136);
  v42[0] = v21;
  v42[1] = v22;
  v33 = v2;
  v34 = v3;
  v35 = v4;
  v36 = v5;
  v37 = v6;
  v38 = v7;
  v39 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v23;
  sub_24DFD7E3C(v2, v3, v4, v5, v6, v7, v12);
  sub_24DFD7E3C(v13, v14, v15, v16, v17, v18, v23);
  LOBYTE(v13) = static ViewBackgroundStyle.== infix(_:_:)(&v33, &v26);
  sub_24DFEC8B4(v26, v27, v28, v29, v30, v31, v32);
  sub_24DFEC8B4(v33, v34, v35, v36, v37, v38, v39);
  v24 = 0;
  if ((v13 & 1) != 0 && v8 == v19)
  {
    return sub_24DFB5340(v44, v46) && sub_24DFB5340(v40, v42);
  }

  return v24;
}

double sub_24E26C530()
{
  result = 0.0;
  xmmword_27F20B268 = 0u;
  unk_27F20B278 = 0u;
  xmmword_27F20B258 = 0u;
  byte_27F20B288 = 3;
  unk_27F20B290 = 0u;
  unk_27F20B2A0 = 0u;
  qword_27F20B2B0 = 0;
  byte_27F20B2B8 = 1;
  unk_27F20B2C0 = 0u;
  unk_27F20B2D0 = 0u;
  byte_27F20B2E0 = 1;
  return result;
}

void sub_24E26C5A0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_90(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_24E05E8D0(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_97();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_24E26C6A0(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_4_90(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_24E05E8E8(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_5_97();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_24E26C7A0(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t (*a3)(void))
{
  v5 = *(a1 + 16);
  v6 = *(*v3 + 16);
  result = v6 + v5;
  if (__OFADD__(v6, v5))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  a2(result, 1);
  v9 = *v3;
  if (!*(a1 + 16))
  {

    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = a3(0);
  if (v10 < v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_8:
    *v3 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v12 = __OFADD__(v11, v5);
  v13 = v11 + v5;
  if (!v12)
  {
    *(v9 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_24E26C8F8(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, void, uint64_t))
{
  v9 = a2();
  v10 = (a2)(*v4);
  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  a3(result, 1);
  v13 = *v4;
  v14 = *v4 & 0xFFFFFFFFFFFFFF8;
  a4(v14 + 8 * *(v14 + 0x10) + 32, (*(v14 + 0x18) >> 1) - *(v14 + 0x10), a1);
  v16 = v15;

  if (v16 < v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 < 1)
  {
LABEL_6:
    *v4 = v13;
    return result;
  }

  v17 = *(v14 + 16);
  v11 = __OFADD__(v17, v16);
  v18 = v17 + v16;
  if (!v11)
  {
    *(v14 + 16) = v18;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_24E26C9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E26CF90();
  if (v4)
  {
    v5 = v4;
    v6 = *(*(v2 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController) + OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController);
    if (v6)
    {
      v7 = [v6 viewControllers];
      sub_24DF88A8C(0, &qword_27F1E05B0, 0x277D75D28);
      v8 = sub_24E347F08();
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v9 = [v5 viewControllers];
    sub_24DF88A8C(0, &qword_27F1E05B0, 0x277D75D28);
    sub_24E347F08();

    OUTLINED_FUNCTION_1_127();
    sub_24E26C8F8(v8, v10, sub_24E05F670, sub_24E083C94);
    v11 = sub_24E347EE8();

    [v5 setViewControllers:v11 animated:0];

    return 0;
  }

  return a2;
}

uint64_t sub_24E26CB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_24E26CF90();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 popToRootViewControllerAnimated_];
    if (v6)
    {
      v7 = v6;
      sub_24DF88A8C(0, &qword_27F1E05B0, 0x277D75D28);
      sub_24E347F08();
    }

    if (sub_24DFD8654())
    {
      v8 = *(*(v2 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController) + OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController);
      if (v8)
      {
        sub_24DF88A8C(0, &qword_27F1E05B0, 0x277D75D28);
        v9 = v8;
        v10 = sub_24E347EE8();

        [v9 setViewControllers_];
      }

      else
      {
      }

      goto LABEL_10;
    }

    v11 = v2 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_cachedSecondarySource;
    v12 = *(v2 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_cachedSecondarySource + 16);
    if (v12 == 255)
    {
LABEL_10:

      return a2;
    }

    v14 = *v11;
    v13 = *(v11 + 8);
    v15 = OUTLINED_FUNCTION_2_108();
    sub_24E26E7C0(v15, v16, v17);
    sub_24E26E7D8(v14, v13, v12 & 1);
    v18 = OUTLINED_FUNCTION_2_108();
    sub_24E26D058(v18, v19, v20, 0);

    v21 = OUTLINED_FUNCTION_2_108();
    sub_24E26E824(v21, v22, v23);
    v24 = OUTLINED_FUNCTION_2_108();
    sub_24E26E824(v24, v25, v26);
  }

  return a2;
}

uint64_t sub_24E26CCC4()
{
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryOverrideTraitCollection);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_24E26CD1C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryOverrideTraitCollection);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  sub_24E26D460();
}

void (*sub_24E26CD9C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24E26CE00;
}

void sub_24E26CE00(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24E26D460();
  }
}

id sub_24E26CE34()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController____lazy_storage___backgroundView;
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController____lazy_storage___backgroundView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController____lazy_storage___backgroundView);
  }

  else
  {
    v4 = v0;
    type metadata accessor for BackgroundView();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v5 setAutoresizingMask_];
    [v5 setLayoutMargins_];

    sub_24DFEB9A0(0x6579614C656D6167, 0xEE0070756F724772);
    if (qword_27F1DE118 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for PlayerCardTheme(0);
    v7 = __swift_project_value_buffer(v6, qword_27F20BF00);
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    v11 = *(v7 + 40);
    v12 = *(v7 + 48);
    v13 = *(v7 + 56);
    v17[0] = *(v7 + 8);
    v17[1] = v8;
    v17[2] = v9;
    v17[3] = v10;
    v17[4] = v11;
    v17[5] = v12;
    v18 = v13;
    sub_24DFD7E3C(v17[0], v8, v9, v10, v11, v12, v13);
    sub_24DFEB8F4(v17);
    v14 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

id sub_24E26CF90()
{
  v1 = [v0 viewControllerForColumn_];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    return v3;
  }

  v4 = [v2 navigationController];

  return v4;
}

id sub_24E26D020()
{
  v0 = objc_allocWithZone(MEMORY[0x277D757A0]);

  return [v0 init];
}

void sub_24E26D058(void *a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = ~a3;
  v11 = v4 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_cachedSecondarySource;
  v12 = *(v4 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_cachedSecondarySource);
  v13 = *(v11 + 8);
  *v11 = a1;
  *(v11 + 8) = a2;
  v14 = *(v11 + 16);
  *(v11 + 16) = a3;
  sub_24E26E7C0(a1, a2, a3);
  sub_24E26E824(v12, v13, v14);
  if (!v10)
  {
    sub_24E26DDD4([objc_allocWithZone(MEMORY[0x277D757A0]) init]);
    OUTLINED_FUNCTION_39_2();
    return;
  }

  if ((a3 & 1) == 0)
  {
    v29 = *(v5 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController);
    v30 = a1;
    v31 = OUTLINED_FUNCTION_2_70();
    sub_24E26E7C0(v31, v32, v33);
    v34 = v30;

    sub_24E26DDD4(a1);
    if ((a4 & 1) != 0 && (v35 = sub_24E26CF90()) != 0)
    {
      v36 = v35;

      v37 = [v36 viewControllers];
      sub_24DF88A8C(0, &qword_27F1E05B0, 0x277D75D28);
      sub_24E347F08();

      OUTLINED_FUNCTION_1_127();
      sub_24E26C8F8(a2, v38, sub_24E05F670, sub_24E083C94);
      v60 = sub_24E347EE8();

      [v36 setViewControllers:v60 animated:1];
    }

    else
    {
      v39 = *(v29 + OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController);
      if (!v39)
      {

        goto LABEL_23;
      }

      sub_24DF88A8C(0, &qword_27F1E05B0, 0x277D75D28);
      v36 = v39;
      v61 = sub_24E347EE8();

      [v36 setViewControllers_];
    }

LABEL_17:
    v48 = OUTLINED_FUNCTION_2_70();
    sub_24E26E824(v48, v49, v50);

    goto LABEL_18;
  }

  v15 = *(v5 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController);
  v16 = objc_allocWithZone(MEMORY[0x277D757A0]);
  v17 = OUTLINED_FUNCTION_2_70();
  sub_24E26E7C0(v17, v18, v19);
  sub_24E26E7D8(a1, a2, 1);
  sub_24E26DDD4([v16 init]);
  if (a4)
  {
    v20 = sub_24E26CF90();
    if (v20)
    {
      v21 = v20;
    }

    v22 = sub_24E26CF90();
    if (v22)
    {
      [v22 pushViewController:a1 animated:1];
      v23 = OUTLINED_FUNCTION_2_70();
      sub_24E26E824(v23, v24, v25);
      v26 = OUTLINED_FUNCTION_2_70();
      sub_24E26E824(v26, v27, v28);
LABEL_18:
      OUTLINED_FUNCTION_39_2();

      return;
    }

    goto LABEL_21;
  }

  v40 = *(v15 + OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController);
  if (v40)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_24E369990;
    *(v41 + 32) = a1;
    v42 = OUTLINED_FUNCTION_2_70();
    sub_24E26E7C0(v42, v43, v44);
    sub_24DF88A8C(0, &qword_27F1E05B0, 0x277D75D28);
    v36 = v40;
    v62 = sub_24E347EE8();

    [v36 setViewControllers_];
    v45 = OUTLINED_FUNCTION_2_70();
    sub_24E26E824(v45, v46, v47);
    goto LABEL_17;
  }

LABEL_21:
  v53 = OUTLINED_FUNCTION_2_70();
  sub_24E26E824(v53, v54, v55);
LABEL_23:
  OUTLINED_FUNCTION_2_70();
  OUTLINED_FUNCTION_39_2();

  sub_24E26E824(v56, v57, v58);
}

void sub_24E26D460()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryOverrideTraitCollection];
  swift_beginAccess();
  v3 = *v2;

  v4 = [v1 traitCollection];
  v5 = v3();

  [v1 setOverrideTraitCollection:v5 forChildViewController:*&v1[OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController]];
}

id sub_24E26D514()
{
  OUTLINED_FUNCTION_3_108(OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryOverrideTraitCollection);
  *&v0[OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController____lazy_storage___backgroundView] = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController;
  *&v0[v1] = [objc_allocWithZone(type metadata accessor for ContainerNavigationController()) init];
  v2 = &v0[OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_cachedSecondarySource];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = -1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for BaseDoubleColumnSplitViewController();
  return objc_msgSendSuper2(&v4, sel_initWithStyle_, 1);
}

void sub_24E26D5CC()
{
  OUTLINED_FUNCTION_3_108(OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryOverrideTraitCollection);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController____lazy_storage___backgroundView) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for ContainerNavigationController()) init];
  v2 = v0 + OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_cachedSecondarySource;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = -1;
  sub_24E348AE8();
  __break(1u);
}

uint64_t sub_24E26D6A4@<X0>(void *a1@<X8>)
{
  v2 = sub_24E26CCC4();
  v4 = v3;
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = v4;
  *a1 = sub_24E26EA7C;
  a1[1] = result;
  return result;
}

uint64_t sub_24E26D708(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_24E26CD1C(sub_24E26EA3C, v3);
}

void sub_24E26D778()
{
  v1 = type metadata accessor for BaseDoubleColumnSplitViewController();
  v23.receiver = v0;
  v23.super_class = v1;
  objc_msgSendSuper2(&v23, sel_viewDidLoad);
  v2 = OUTLINED_FUNCTION_7_60();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setBackgroundColor_];

  v4 = OUTLINED_FUNCTION_7_60();
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  v6 = sub_24E26CE34();
  [v5 addSubview_];

  v7 = OUTLINED_FUNCTION_7_60();
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController____lazy_storage___backgroundView;
  [v7 sendSubviewToBack_];

  v10 = *&v0[v9];
  v11 = OUTLINED_FUNCTION_7_60();
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v10 setFrame_];
    v21 = *&v0[OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController];
    v22.receiver = v0;
    v22.super_class = v1;
    objc_msgSendSuper2(&v22, sel_setViewController_forColumn_, v21, 2);
    [v0 setDelegate_];
    sub_24E26D460();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_24E26D964(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BaseDoubleColumnSplitViewController();
  objc_msgSendSuper2(&v3, sel_traitCollectionDidChange_, a1);
  sub_24E26D460();
}

void sub_24E26DA18(void *a1, uint64_t a2)
{
  v3 = a1;
  if (a2 == 2)
  {
    if (a1)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      v5 = v3;
      if (v4)
      {
        v6 = [v4 viewControllers];
        sub_24DF88A8C(0, &qword_27F1E05B0, 0x277D75D28);
        v7 = sub_24E347F08();

        v8 = 0;
        v3 = v4;
      }

      else
      {
        v7 = 0;
        v8 = 1;
      }
    }

    else
    {
      v7 = 0;
      v8 = -1;
    }

    sub_24E26D058(v3, v7, v8, [v2 isCollapsed]);

    sub_24E26E824(v3, v7, v8);
  }

  else
  {
    v10.receiver = v2;
    v10.super_class = type metadata accessor for BaseDoubleColumnSplitViewController();
    objc_msgSendSuper2(&v10, sel_setViewController_forColumn_, v3, a2);
  }
}

void sub_24E26DBDC(uint64_t a1)
{
  if ([v1 isCollapsed])
  {
    v3 = sub_24E26CF90();
    if (v3)
    {
      v5 = v3;
      [v3 pushViewController:a1 animated:1];
    }
  }

  else
  {
    v4 = *(*&v1[OBJC_IVAR____TtC12GameCenterUI35BaseDoubleColumnSplitViewController_secondaryContainerViewController] + OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController);
    if (v4)
    {

      [v4 pushViewController:a1 animated:1];
    }
  }
}

void sub_24E26DDD4(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController);
  *(v1 + OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController) = a1;
  v2 = a1;
  sub_24E26E144(v3);
}

id BaseDoubleColumnSplitViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24E347CB8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id BaseDoubleColumnSplitViewController.__allocating_init(style:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithStyle_];
}

id BaseDoubleColumnSplitViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseDoubleColumnSplitViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24E26E034()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

void sub_24E26E0A4()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController) = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E26E144(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    v6 = a1;
    goto LABEL_7;
  }

  if (a1)
  {
    sub_24DF88A8C(0, &qword_27F1E8F38, 0x277D757A0);
    v5 = v4;
    v6 = a1;
    v7 = sub_24E348628();

    if (v7)
    {
      return;
    }

LABEL_7:
    v8 = [v6 parentViewController];
    if (v8)
    {
      v9 = v8;
      sub_24DF88A8C(0, &qword_27F1E05B0, 0x277D75D28);
      v10 = v2;
      v11 = sub_24E348628();

      if (v11)
      {
        [a1 willMoveToParentViewController_];
        if ([v10 isViewLoaded])
        {
          v12 = [a1 view];
          if (!v12)
          {
            __break(1u);
            return;
          }

          v13 = v12;
          [v12 removeFromSuperview];
        }

        [a1 removeFromParentViewController];
      }
    }
  }

  if ([v2 isViewLoaded])
  {

    sub_24E26E2E0();
  }
}

void sub_24E26E2E0()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController];
  if (!v1)
  {
    return;
  }

  v2 = v0;
  v22 = v1;
  v3 = [v22 parentViewController];
  if (!v3 || (v4 = v3, sub_24DF88A8C(0, &qword_27F1E05B0, 0x277D75D28), v5 = v0, v6 = sub_24E348628(), v4, v5, (v6 & 1) == 0))
  {
    [v22 willMoveToParentViewController_];
    [v2 addChildViewController_];
    v7 = v22;
    if (![v2 isViewLoaded])
    {
LABEL_11:

      [v22 didMoveToParentViewController_];
      goto LABEL_12;
    }

    v8 = [v2 view];
    if (v8)
    {
      v9 = v8;
      v10 = [v22 view];
      if (v10)
      {
        v11 = v10;
        [v9 insertSubview:v10 atIndex:0];

        v7 = [v22 view];
        if (v7)
        {
          v12 = [v2 view];
          if (v12)
          {
            v13 = v12;
            [v12 bounds];
            v15 = v14;
            v17 = v16;
            v19 = v18;
            v21 = v20;

            [v7 setFrame_];
            goto LABEL_11;
          }

LABEL_19:
          __break(1u);
          return;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_12:
}

void sub_24E26E518()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v1 = OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController;
  if (*&v0[OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController])
  {
    sub_24E26E2E0();
  }

  else
  {
    sub_24E26DDD4([objc_allocWithZone(MEMORY[0x277D757A0]) init]);
    v2 = *&v0[v1];
    if (v2)
    {
      [v2 setNavigationBarHidden_];
    }
  }
}

void sub_24E26E5EC()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUIP33_735E1C79A365F2F2932EE10C50FF0D3129ContainerNavigationController_contentNavigationController];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_24E26E7C0(id result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_24E26E7D8(result, a2, a3 & 1);
  }

  return result;
}

id sub_24E26E7D8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return a1;
  }

  else
  {
    v5 = a1;
  }
}

void sub_24E26E824(void *result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_24E26E83C(result, a2, a3 & 1);
  }
}

void sub_24E26E83C(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }
}

uint64_t sub_24E26EA3C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_24E26EA7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

void OUTLINED_FUNCTION_3_108(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = j__objc_retain;
  v2[1] = 0;
}

id OUTLINED_FUNCTION_7_60()
{

  return [v0 (v1 + 2808)];
}

uint64_t sub_24E26EB38(uint64_t a1)
{
  v2 = sub_24E347458();
  v3 = OUTLINED_FUNCTION_4_5(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  v98 = v5 - v4;
  v6 = sub_24E347478();
  v7 = OUTLINED_FUNCTION_4_5(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v96 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  v11 = OUTLINED_FUNCTION_4_5(v10);
  MEMORY[0x28223BE20](v11);
  v97 = &v86 - v12;
  v13 = sub_24E3433A8();
  v94 = *(v13 - 8);
  v95 = v13;
  MEMORY[0x28223BE20](v13);
  v93 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v86 - v16;
  v100 = type metadata accessor for DetailData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7_1();
  v21 = v20 - v19;
  v22 = type metadata accessor for FriendsListAction(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_7_1();
  v99 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF018, &qword_24E372030);
  v27 = OUTLINED_FUNCTION_4_5(v26);
  MEMORY[0x28223BE20](v27);
  v29 = &v86 - v28;
  v30 = type metadata accessor for DashboardRequiredDataPresenter.Data(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7_1();
  v34 = v33 - v32;
  sub_24DF8BD90(a1, v29, &qword_27F1DF018, &qword_24E372030);
  if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
  {
    sub_24DF8BFF4(v29, &qword_27F1DF018, &qword_24E372030);
    return 0;
  }

  sub_24E0EF370(v29, v34);
  memcpy(v109, (v34 + 16), 0x199uLL);
  memcpy(v110, (v34 + 16), 0x199uLL);
  if (sub_24DF8BF80(v110) == 1)
  {
    OUTLINED_FUNCTION_2_109();
    return 0;
  }

  v36 = sub_24DFD8654();
  sub_24DFC2C38();
  v37 = *MEMORY[0x277D76A08];
  v38 = objc_opt_self();
  memcpy(v108, v109, 0x199uLL);
  sub_24E1D410C(v108, &v103);
  v39 = [v38 configurationWithTextStyle:v37 scale:-1];
  v91 = sub_24E1A5748(0x322E6E6F73726570, 0xED00006C6C69662ELL, v39);

  OUTLINED_FUNCTION_4_91();
  v40 = sub_24E347CB8();
  v41 = GKGameCenterUIFrameworkBundle();
  v42 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E8090, &qword_24E36A780);
  v43 = swift_allocObject();
  v92 = xmmword_24E367D20;
  v44 = MEMORY[0x277D83B88];
  *(v43 + 16) = xmmword_24E367D20;
  v45 = MEMORY[0x277D83C10];
  *(v43 + 56) = v44;
  *(v43 + 64) = v45;
  *(v43 + 32) = v36;
  v88 = v17;
  v46 = v36;
  v47 = sub_24E347D18();
  v89 = v48;
  v90 = v47;

  OUTLINED_FUNCTION_4_91();
  v49 = sub_24E347CB8();
  v50 = GKGameCenterUIFrameworkBundle();
  v51 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  v52 = swift_allocObject();
  *(v52 + 16) = v92;
  *(v52 + 56) = MEMORY[0x277D83B88];
  *(v52 + 64) = MEMORY[0x277D83C10];
  *(v52 + 32) = v46;
  v53 = sub_24E347CC8();
  v86 = v54;
  v87 = v53;

  v55 = [v110[1] playerID];
  v56 = sub_24E347CF8();
  v58 = v57;

  v59 = sub_24E347CF8();
  v61 = v60;
  v62 = sub_24E347CF8();
  v63 = v99;
  ActionMetrics.init(domain:eventType:)(v59, v61, v62, v64);
  *v63 = v56;
  *(v63 + 8) = v58;
  *(v63 + 16) = 1;
  *(v63 + *(v22 + 32)) = 0;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v107 = -1;
  v102[3] = v22;
  v102[4] = sub_24DF8C8A4(&qword_27F1DEEA8, type metadata accessor for FriendsListAction, &unk_24E369D84);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v102);
  sub_24E26F6F8(v63, boxed_opaque_existential_1, type metadata accessor for FriendsListAction);
  v66 = v91;
  *&v92 = v91;
  v67 = v88;
  sub_24E343398();
  v68 = v94;
  v69 = v95;
  (*(v94 + 16))(v93, v67, v95);
  sub_24DF8C8A4(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24E348918();
  (*(v68 + 8))(v67, v69);
  *(v21 + 216) = 0;
  *(v21 + 200) = 0u;
  *(v21 + 184) = 0u;
  v70 = v100;
  v71 = *(v100 + 56);
  v95 = v71;
  v72 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(v21 + v71, 1, 1, v72);
  v73 = v21 + *(v70 + 60);
  sub_24DF8BD34(v101, v21);
  *(v21 + 40) = 1;
  v75 = v89;
  v74 = v90;
  *(v21 + 48) = v90;
  *(v21 + 56) = v75;
  v76 = v86;
  *(v21 + 64) = v87;
  *(v21 + 72) = v76;
  *(v21 + 80) = v66;
  sub_24DF8BD90(&v103, v21 + 88, &qword_27F1DEE88, &unk_24E36BF90);
  *(v21 + 160) = 0;
  *(v21 + 168) = 0;
  *(v21 + 176) = 256;
  *v73 = 0;
  *(v73 + 8) = 0;

  sub_24DF8BDF0(v102, v21 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_24E369E30;
  strcpy((v77 + 32), "impressionType");
  *(v77 + 47) = -18;
  v78 = MEMORY[0x277D837D0];
  *(v77 + 48) = 0x74656C63696863;
  *(v77 + 56) = 0xE700000000000000;
  *(v77 + 72) = v78;
  *(v77 + 80) = 0x6973736572706D69;
  *(v77 + 88) = 0xEF7865646E496E6FLL;
  *(v77 + 96) = 0;
  *(v77 + 120) = MEMORY[0x277D83B88];
  *(v77 + 128) = 0x657079546469;
  *(v77 + 136) = 0xE600000000000000;
  *(v77 + 144) = 0x636974617473;
  *(v77 + 152) = 0xE600000000000000;
  *(v77 + 168) = v78;
  *(v77 + 176) = 1701667182;
  *(v77 + 216) = v78;
  *(v77 + 184) = 0xE400000000000000;
  *(v77 + 192) = v74;
  *(v77 + 200) = v75;

  sub_24E347C28();
  sub_24E347468();
  sub_24E347448();
  v79 = MEMORY[0x277D84F90];
  sub_24E0241AC(MEMORY[0x277D84F90]);
  sub_24E0241AC(v79);
  v80 = v97;
  sub_24E347488();
  sub_24DF8BE60(v101);
  sub_24DF8BFF4(&v103, &qword_27F1DEE88, &unk_24E36BF90);
  sub_24DF8BFF4(v102, &qword_27F1DEE90, &unk_24E369E90);
  __swift_storeEnumTagSinglePayload(v80, 0, 1, v72);
  sub_24DF8BEB4(v80, v21 + v95);
  sub_24E076EE4();
  v35 = v81;
  v82 = *(v81 + 16);
  if (v82 >= *(v81 + 24) >> 1)
  {
    sub_24E076EE4();
    v35 = v85;
  }

  sub_24DF8BFF4(v109, &qword_27F1DF030, &qword_24E36A2D0);

  sub_24E26F758(v99, type metadata accessor for FriendsListAction);
  *(&v104 + 1) = v100;
  *&v105 = sub_24DF8C8A4(&qword_27F1DEE80, type metadata accessor for DetailData, &unk_24E3885B0);
  v83 = __swift_allocate_boxed_opaque_existential_1(&v103);
  sub_24E26F6F8(v21, v83, type metadata accessor for DetailData);
  *(v35 + 16) = v82 + 1;
  sub_24DE56CE8(&v103, v35 + 40 * v82 + 32);
  sub_24E26F758(v21, type metadata accessor for DetailData);
  OUTLINED_FUNCTION_2_109();
  return v35;
}

double sub_24E26F5F4@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HeaderData(0);
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
  v3 = type metadata accessor for Shelf.Presentation(0);
  v4 = v3[5];
  v5 = type metadata accessor for FooterData(0);
  __swift_storeEnumTagSinglePayload(a1 + v4, 1, 1, v5);
  v6 = a1 + v3[11];
  result = 0.0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 32) = 1;
  v8 = a1 + v3[12];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = (a1 + v3[13]);
  v10 = (a1 + v3[14]);
  v11 = (a1 + v3[15]);
  *(a1 + v3[6]) = 1;
  *v9 = 0;
  v9[1] = 0;
  *v10 = 0;
  v10[1] = 0;
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v3[7]) = 1;
  *(a1 + v3[8]) = 1;
  *(a1 + v3[9]) = 1;
  *(a1 + v3[10]) = 0;
  return result;
}

uint64_t sub_24E26F6F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_24E26F758(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_109()
{

  return sub_24E26F758(v0, type metadata accessor for DashboardRequiredDataPresenter.Data);
}

uint64_t sub_24E26F7EC(uint64_t result, double a2, double a3)
{
  if (a2 != 0.0 || a3 != 0.0)
  {
    switch(result)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
        return result;
      default:
        type metadata accessor for ContentMode(0);
        result = sub_24E348C58();
        __break(1u);
        break;
    }
  }

  return result;
}

uint64_t sub_24E26F8C0(uint64_t a1, void (*a2)(uint64_t *, char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v10 = a1;
  v6 = *(a4 + 16);
  v7 = (a4 + 32);
  if (!v6)
  {
    return v10;
  }

  while (1)
  {
    v9 = *v7;
    a2(&v10, &v9, a3);
    if (v4)
    {
      break;
    }

    ++v7;
    if (!--v6)
    {
      return v10;
    }
  }
}

__n128 ActivityFeedLockupView.init(entry:theme:actionHandlers:)@<Q0>(uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  type metadata accessor for ArtworkLoader();
  *a4 = sub_24E2002B8(100);
  v6 = type metadata accessor for ActivityFeedLockupView(0);
  v7 = a4 + v6[8];
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v8 = v6[9];
  *(a4 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0, &qword_24E382C10);
  swift_storeEnumTagMultiPayload();
  sub_24E2716E4();
  sub_24E2716E4();
  v9 = a4 + v6[7];
  v10 = *(a3 + 16);
  *v9 = *a3;
  *(v9 + 1) = v10;
  result = *(a3 + 32);
  v12 = *(a3 + 48);
  *(v9 + 2) = result;
  *(v9 + 3) = v12;
  return result;
}

uint64_t type metadata accessor for ActivityFeedLockupView(uint64_t a1)
{
  result = qword_27F1E8FD8;
  if (!qword_27F1E8FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityFeedLockupView.actionHandlers.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ActivityFeedLockupView(0) + 28));
  v4 = v3[2];
  v7 = v3[3];
  v6 = v3[1];
  *a1 = *v3;
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v7;
  return sub_24DFA9240();
}

double sub_24E26FC04()
{
  v1 = sub_24E345B68();
  OUTLINED_FUNCTION_0_14();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = (v0 + *(type metadata accessor for ActivityFeedLockupView(0) + 32));
  v9 = *v8;
  if (v8[8] == 1)
  {
    return *v8;
  }

  sub_24E348268();
  v11 = sub_24E346198();
  sub_24E343EA8();

  sub_24E345B58();
  swift_getAtKeyPath();
  sub_24DE73F34(v9, 0);
  (*(v3 + 8))(v7, v1);
  return v12;
}

uint64_t sub_24E26FD4C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E345B68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0, &qword_24E382C10);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for ActivityFeedLockupView(0);
  sub_24DFA9240();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24E347B98();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_24E348268();
    v11 = sub_24E346198();
    sub_24E343EA8();

    sub_24E345B58();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

void ActivityFeedLockupView.body.getter()
{
  OUTLINED_FUNCTION_32();
  v77 = v2;
  v3 = type metadata accessor for ActivityFeedLockupView(0);
  OUTLINED_FUNCTION_0_14();
  v81 = v4;
  MEMORY[0x28223BE20](v5);
  v82 = v6;
  v84 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_18_1();
  v80 = sub_24E345C88();
  OUTLINED_FUNCTION_0_14();
  v79 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v78 = v10 - v9;
  OUTLINED_FUNCTION_18_1();
  v75 = sub_24E345FF8();
  OUTLINED_FUNCTION_0_14();
  v74 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_23(v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19E0, &qword_24E37DD00);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  v18 = v69 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8F48, &qword_24E388F78);
  OUTLINED_FUNCTION_4_5(v19);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8F50, &qword_24E388F80) - 8;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17_9();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8F58, &qword_24E388F88);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v24);
  v26 = v69 - v25;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8F60, &qword_24E388F90);
  OUTLINED_FUNCTION_0_14();
  v69[0] = v27;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v28);
  v30 = v69 - v29;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8F68, &qword_24E388F98);
  OUTLINED_FUNCTION_0_14();
  v71 = v31;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v33);
  v69[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8F70, &qword_24E388FA0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_21_20();
  OUTLINED_FUNCTION_23(v36);
  sub_24E2707EC();
  v76 = v3;
  v37 = *(v3 + 24);
  v83 = v0;
  v38 = v0 + v37;
  LOBYTE(v68) = 0;
  OUTLINED_FUNCTION_17_36(v39, v40, v41, v42, v43, v44, v45, v46, v66, v67, 0x7FF0000000000000, v68, *(v38 + 80), *(v38 + 88));
  sub_24DFA9344();
  memcpy((v1 + *(v21 + 44)), v91, 0x70uLL);
  v86 = *(v38 + 40);
  v85 = *(v38 + 56);
  v47 = sub_24E3461E8();
  sub_24DFA9344();
  v48 = &v26[*(v23 + 36)];
  *v48 = v47;
  *(v48 + 24) = v85;
  *(v48 + 8) = v86;
  v48[40] = 0;
  type metadata accessor for ActivityFeedLockupTheme(0);
  sub_24E345658();
  sub_24E2754C0(&qword_27F1E1A18, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  OUTLINED_FUNCTION_25_19();
  if (sub_24E347CA8())
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_25_19();
    v49();
    v50 = sub_24E270CEC();
    v51 = sub_24DFB4C28(&qword_27F1E19E8, &qword_27F1E19E0, &qword_24E37DD00, MEMORY[0x277D84470]);
    sub_24E346678();
    sub_24DF8BFF4(v18, &qword_27F1E19E0, &qword_24E37DD00);
    sub_24DF8BFF4(v26, &qword_27F1E8F58, &qword_24E388F88);
    v52 = v73;
    sub_24E345FE8();
    v87 = v23;
    v88 = v15;
    v89 = v50;
    v90 = v51;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v54 = v69[1];
    v55 = v70;
    sub_24E346778();
    OUTLINED_FUNCTION_34_0();
    v56(v52, v75);
    OUTLINED_FUNCTION_34_0();
    v57(v30, v55);
    type metadata accessor for ActivityFeedLockupViewModel(0);

    OUTLINED_FUNCTION_60();
    sub_24E345C48();
    v87 = v55;
    v88 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v58 = v69[3];
    OUTLINED_FUNCTION_60();
    v59 = v72;
    sub_24E346708();

    OUTLINED_FUNCTION_34_0();
    v60(v54, v59);
    v61 = v78;
    sub_24E345C78();
    sub_24E3456B8();
    OUTLINED_FUNCTION_34_0();
    v62(v61, v80);
    sub_24DE6E5DC(v58);
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_8_73();
    sub_24E2753C0();
    swift_allocObject();
    OUTLINED_FUNCTION_7_61();
    sub_24E2716E4();
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8FD0, &qword_24E388FF8);
    v65 = (v77 + *(v64 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FB8, &qword_24E389000);
    sub_24E3454F8();
    *v65 = KeyPath;
    sub_24DE6E6C0();
    OUTLINED_FUNCTION_18();
  }

  else
  {
    __break(1u);
  }
}

void sub_24E2707EC()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v44[4] = v2;
  v44[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8FC8, &qword_24E388FC0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  v5 = v44 - v4;
  v44[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8FB8, &qword_24E388FB8);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  v8 = v44 - v7;
  v44[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9000, &qword_24E3890B0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_17_9();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9008, &qword_24E3890B8);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v44[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8F98, &qword_24E388FA8);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v14 = v44 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E8FA8, &qword_24E388FB0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  v17 = v44 - v16;
  v18 = v1 + *(type metadata accessor for ActivityFeedLockupView(0) + 24);
  if (*(v18 + 72))
  {
    if (*(v18 + 72) == 1)
    {
      v19 = *(v18 + 16);
      *v8 = sub_24E345BF8();
      *(v8 + 1) = v19;
      v8[16] = 0;
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9018, &qword_24E3890C8);
      sub_24E273940(v1, &v8[*(v20 + 44)]);
      sub_24DFA9240();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_10_57();
      sub_24DFB4C28(v21, v22, v23, v24);
      OUTLINED_FUNCTION_6_78();
      v27 = sub_24DFB4C28(v25, &qword_27F1E8FB8, &qword_24E388FB8, v26);
      OUTLINED_FUNCTION_26_21(v27);
      OUTLINED_FUNCTION_40_9();
      swift_storeEnumTagMultiPayload();
      sub_24E270EBC();
      sub_24DFB4C28(&qword_27F1E8FC0, &qword_27F1E8FC8, &qword_24E388FC0, v10);
      OUTLINED_FUNCTION_15_35();
      sub_24E345E38();
      sub_24DF8BFF4(v14, &qword_27F1E8F98, &qword_24E388FA8);
      v28 = v8;
      v29 = &qword_27F1E8FB8;
      v30 = &qword_24E388FB8;
    }

    else
    {
      v41 = sub_24E345D08();
      v42 = *(v18 + 16);
      *v5 = v41;
      *(v5 + 1) = v42;
      v5[16] = 0;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9010, &qword_24E3890C0);
      sub_24E273D48(&v5[*(v43 + 44)]);
      OUTLINED_FUNCTION_60();
      sub_24DFA9240();
      swift_storeEnumTagMultiPayload();
      sub_24E270EBC();
      sub_24DFB4C28(&qword_27F1E8FC0, &qword_27F1E8FC8, &qword_24E388FC0, MEMORY[0x277CE1198]);
      OUTLINED_FUNCTION_15_35();
      sub_24E345E38();
      v28 = v5;
      v29 = &qword_27F1E8FC8;
      v30 = &qword_24E388FC0;
    }
  }

  else
  {
    v31 = sub_24E345D08();
    v32 = *(v18 + 16);
    *v17 = v31;
    *(v17 + 1) = v32;
    v17[16] = 0;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9020, &qword_24E3890D0);
    sub_24E2743C4(v1, &v17[*(v33 + 44)]);
    sub_24DFA9240();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_10_57();
    sub_24DFB4C28(v34, &qword_27F1E8FA8, &qword_24E388FB0, v35);
    OUTLINED_FUNCTION_6_78();
    v40 = sub_24DFB4C28(v36, v37, v38, v39);
    OUTLINED_FUNCTION_26_21(v40);
    OUTLINED_FUNCTION_40_9();
    swift_storeEnumTagMultiPayload();
    sub_24E270EBC();
    sub_24DFB4C28(&qword_27F1E8FC0, &qword_27F1E8FC8, &qword_24E388FC0, v10);
    OUTLINED_FUNCTION_15_35();
    sub_24E345E38();
    sub_24DF8BFF4(v14, &qword_27F1E8F98, &qword_24E388FA8);
    v28 = v17;
    v29 = &qword_27F1E8FA8;
    v30 = &qword_24E388FB0;
  }

  sub_24DF8BFF4(v28, v29, v30);
  OUTLINED_FUNCTION_18();
}

unint64_t sub_24E270CEC()
{
  result = qword_27F1E8F78;
  if (!qword_27F1E8F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8F58, &qword_24E388F88);
    sub_24E270D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8F78);
  }

  return result;
}

unint64_t sub_24E270D78()
{
  result = qword_27F1E8F80;
  if (!qword_27F1E8F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8F50, &qword_24E388F80);
    sub_24E270E04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8F80);
  }

  return result;
}

unint64_t sub_24E270E04()
{
  result = qword_27F1E8F88;
  if (!qword_27F1E8F88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8F48, &qword_24E388F78);
    sub_24E270EBC();
    sub_24DFB4C28(&qword_27F1E8FC0, &qword_27F1E8FC8, &qword_24E388FC0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8F88);
  }

  return result;
}

unint64_t sub_24E270EBC()
{
  result = qword_27F1E8F90;
  if (!qword_27F1E8F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8F98, &qword_24E388FA8);
    sub_24DFB4C28(&qword_27F1E8FA0, &qword_27F1E8FA8, &qword_24E388FB0, MEMORY[0x277CE1198]);
    sub_24DFB4C28(&qword_27F1E8FB0, &qword_27F1E8FB8, &qword_24E388FB8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8F90);
  }

  return result;
}

uint64_t sub_24E270FA0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E51A8, &qword_24E37AEF8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v80 - v4;
  v6 = sub_24E343028();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E342F98();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_24DF8BFF4(v5, &qword_27F1E51A8, &qword_24E37AEF8);
    return sub_24E3454E8();
  }

  (*(v7 + 32))(v9, v5, v6);
  if ((static GKFeatureFlags.shouldDeepLinkToGameCenterUI.getter() & 1) == 0)
  {
    goto LABEL_10;
  }

  v11 = sub_24E342FF8();
  if (!v12)
  {
    goto LABEL_10;
  }

  if (v11 == 0x65766F2D656D6167 && v12 == 0xEF69752D79616C72)
  {

    goto LABEL_20;
  }

  v14 = sub_24E348C08();

  if (v14)
  {
LABEL_20:
    sub_24E3454C8();
    return (*(v7 + 8))(v9, v6);
  }

LABEL_10:
  v15 = (a2 + *(type metadata accessor for ActivityFeedLockupView(0) + 28));
  v16 = v15[1];
  v91 = *v15;
  v92 = v16;
  v17 = v15[3];
  v93 = v15[2];
  v94 = v17;
  v18 = v91;
  if (v91)
  {
    v86 = v93;
    v87 = v92;
    v19 = *(&v93 + 1);
    v88 = v94;

    v85 = v19;

    v20 = sub_24E342FF8();
    if (v21)
    {
      if (v20 == 0xD000000000000014 && v21 == 0x800000024E3AA9E0)
      {
      }

      else
      {
        v23 = sub_24E348C08();

        if ((v23 & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      v24 = sub_24E342FB8();
      if (!v25 || sub_24E18F3F4(v24, v25) == 7)
      {
LABEL_42:
        sub_24E3454E8();
      }

      else
      {
        sub_24E2038C8();
        v26 = sub_24E347C28();
        v84 = &v80;
        MEMORY[0x28223BE20](v26);
        *(&v80 - 2) = v9;
        v28 = sub_24E26F8C0(v27, sub_24E274D78, (&v80 - 4), &unk_286111660);
        switch(v84)
        {
          case 1:
            v68 = sub_24E12CC34(0, v28);
            v70 = v69;

            if (!v70)
            {
              goto LABEL_42;
            }

            v32 = v68;
            v33 = v70;
            v34 = 1;
            goto LABEL_47;
          case 2:
            v58 = sub_24E12CC34(0, v28);
            if (!v59)
            {
              goto LABEL_41;
            }

            v60 = v58;
            v61 = v59;
            v62 = sub_24E12CC34(3, v28);
            if (!v63)
            {
              goto LABEL_53;
            }

            v64 = v62;
            v65 = v63;
            v88 = sub_24E12CC34(2, v28);
            v67 = v66;

            if (!v67)
            {
              goto LABEL_53;
            }

            v87(v60, v61, v88, v67, v64, v65);

            goto LABEL_56;
          case 3:
            v35 = sub_24E12CC34(0, v28);
            if (!v36)
            {
              goto LABEL_41;
            }

            v37 = v35;
            v38 = v36;
            v39 = sub_24E12CC34(3, v28);
            if (!v40 || (v41 = v40, v83 = v39, v42 = sub_24E12CC34(2, v28), v44 = v43, , !v44))
            {
LABEL_53:

LABEL_41:

              goto LABEL_42;
            }

            v82 = v42;
            v89 = v37;
            v90 = v38;
            sub_24DF90C4C();
            v45 = sub_24E348798();

            v46 = *(v45 + 16);
            if (v46)
            {
              v80 = v44;
              v81 = v41;
              v89 = MEMORY[0x277D84F90];
              result = sub_24E12F080(0, v46, 0);
              v47 = 0;
              v48 = v89;
              v49 = (v45 + 56);
              v87 = v45;
              v84 = v46;
              do
              {
                if (v47 >= *(v45 + 16))
                {
                  __break(1u);
                  return result;
                }

                v50 = *(v49 - 2);
                v88 = *(v49 - 3);
                v51 = *(v49 - 1);
                v52 = *v49;

                v88 = MEMORY[0x25303E8C0](v88, v50, v51, v52);
                v54 = v53;

                v89 = v48;
                v56 = *(v48 + 16);
                v55 = *(v48 + 24);
                if (v56 >= v55 >> 1)
                {
                  result = sub_24E12F080((v55 > 1), v56 + 1, 1);
                  v48 = v89;
                }

                v47 = (v47 + 1);
                *(v48 + 16) = v56 + 1;
                v57 = v48 + 16 * v56;
                *(v57 + 32) = v88;
                *(v57 + 40) = v54;
                v49 += 4;
                v45 = v87;
              }

              while (v84 != v47);

              v44 = v80;
              v41 = v81;
            }

            else
            {

              v48 = MEMORY[0x277D84F90];
            }

            v86(v48, v82, v44, v83, v41);

LABEL_56:

LABEL_57:

            sub_24E3454D8();
            break;
          case 4:
            v71 = sub_24E12CC34(2, v28);
            v73 = v72;

            if (!v73)
            {
              goto LABEL_42;
            }

            v74 = v71;
            v75 = v73;
            v76 = 0;
            goto LABEL_52;
          case 5:
            v77 = sub_24E12CC34(2, v28);
            v79 = v78;

            if (!v79)
            {
              goto LABEL_42;
            }

            v74 = v77;
            v75 = v79;
            v76 = 1;
LABEL_52:
            v88(v74, v75, v76);
            goto LABEL_57;
          case 6:
            goto LABEL_41;
          default:
            v29 = sub_24E12CC34(0, v28);
            v31 = v30;

            if (!v31)
            {
              goto LABEL_42;
            }

            v32 = v29;
            v33 = v31;
            v34 = 0;
LABEL_47:
            v18(v32, v33, v34);
            goto LABEL_57;
        }
      }

      goto LABEL_43;
    }

LABEL_17:
    sub_24E3454C8();
LABEL_43:
    sub_24DF8BFF4(&v91, &qword_27F1E8F40, &unk_24E388F68);
    return (*(v7 + 8))(v9, v6);
  }

  sub_24E3454E8();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24E2716E4()
{
  OUTLINED_FUNCTION_0_8();
  v1(0);
  OUTLINED_FUNCTION_5_2();
  v2 = OUTLINED_FUNCTION_19_1();
  v3(v2);
  return v0;
}

uint64_t sub_24E271770(uint64_t *a1, unsigned __int8 *a2)
{
  v31 = a1;
  v4 = sub_24E342F68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v30 - v9;
  v36 = *a2;
  result = sub_24E342F78();
  if (!result)
  {
    goto LABEL_16;
  }

  v12 = result;
  v32 = *(result + 16);
  if (!v32)
  {
LABEL_11:

LABEL_16:
    sub_24E203574();
  }

  v30[0] = v10;
  v30[1] = v2;
  v13 = 0;
  v35 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v34 = v5 + 16;
  v14 = *MEMORY[0x277D0BC18];
  v30[8] = *MEMORY[0x277D0B9B0];
  v30[9] = v14;
  v15 = *MEMORY[0x277D0B980];
  v30[6] = *MEMORY[0x277D0B978];
  v30[7] = v15;
  v16 = *MEMORY[0x277D0B9A8];
  v30[4] = *MEMORY[0x277D0B990];
  v30[5] = v16;
  v17 = *MEMORY[0x277D0B988];
  v30[2] = *MEMORY[0x277D0B9A0];
  v30[3] = v17;
  v33 = *MEMORY[0x277D0B998];
  while (1)
  {
    if (v13 >= *(v12 + 16))
    {
      __break(1u);
      return result;
    }

    v18 = v13 + 1;
    (*(v5 + 16))(v7, v35 + *(v5 + 72) * v13, v4);
    v19 = sub_24E342F48();
    v21 = v20;
    if (v19 == sub_24E347CF8() && v21 == v22)
    {
      break;
    }

    v24 = sub_24E348C08();

    if (v24)
    {
      goto LABEL_14;
    }

    result = (*(v5 + 8))(v7, v4);
    v13 = v18;
    if (v32 == v18)
    {
      goto LABEL_11;
    }
  }

LABEL_14:

  v25 = v30[0];
  (*(v5 + 32))(v30[0], v7, v4);
  v26 = sub_24E342F58();
  v28 = v27;
  (*(v5 + 8))(v25, v4);
  if (!v28)
  {
    goto LABEL_16;
  }

  v29 = v31;
  swift_isUniquelyReferenced_nonNull_native();
  v37 = *v29;
  result = sub_24E058F0C(v26);
  *v29 = v37;
  return result;
}

void sub_24E271B18()
{
  OUTLINED_FUNCTION_32();
  v57 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9108, &qword_24E389288);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8, &unk_24E36FFA0);
  OUTLINED_FUNCTION_4_5(v5);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15_3();
  v55 = v7;
  OUTLINED_FUNCTION_18_1();
  v56 = sub_24E343288();
  OUTLINED_FUNCTION_0_14();
  v50 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_20();
  OUTLINED_FUNCTION_23(v11);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9110, &qword_24E389290);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_23(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9118, &qword_24E389298);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9120, &qword_24E3892A0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17_9();
  v16 = type metadata accessor for PlayerGroupView(0);
  v17 = (v16 - 8);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_1();
  v20 = (v19 - v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9128, &qword_24E3892A8);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_21_20();
  v54 = v24;
  v25 = OUTLINED_FUNCTION_18_1();
  v26 = type metadata accessor for ActivityFeedLockupView(v25);
  v51 = v0 + *(v26 + 20);
  v27 = *(v51 + *(type metadata accessor for ActivityFeedLockupViewModel(0) + 20));
  v28 = v0 + *(v26 + 24);
  v29 = *(v28 + 112);
  v30 = *(type metadata accessor for ActivityFeedLockupTheme(0) + 60);
  v31 = v17[8];
  sub_24E346E88();
  OUTLINED_FUNCTION_5_2();
  (*(v32 + 16))(&v20[v31], v28 + v30);
  v33 = v17[9];
  *&v20[v33] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0, &qword_24E382C10);
  swift_storeEnumTagMultiPayload();
  v34 = v17[10];
  *&v20[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390, &qword_24E36B1C0);
  swift_storeEnumTagMultiPayload();
  v35 = &v20[v17[11]];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v36 = v17[12];
  type metadata accessor for ArtworkLoader();

  *&v20[v36] = sub_24E2002B8(100);
  *&v20[v17[13]] = 7;
  *v20 = v27;
  *(v20 + 1) = v29;
  if (*v28 == 1.79769313e308)
  {
    sub_24E346E28();
    sub_24E3457F8();
    OUTLINED_FUNCTION_6_83();
    sub_24E2753C0();
    memcpy((v1 + *(v52 + 36)), v58, 0x70uLL);
    sub_24DFA9240();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_25_19();
    sub_24E275418(v37, v38, v39);
    sub_24E275418(&qword_27F1E9140, &qword_27F1E9110, &qword_24E389290);
    sub_24E345E38();
    OUTLINED_FUNCTION_25_19();
  }

  else
  {
    sub_24E346E28();
    sub_24E3453D8();
    OUTLINED_FUNCTION_6_83();
    sub_24E2753C0();
    v43 = (v47 + *(v53 + 36));
    v44 = v58[1];
    *v43 = v58[0];
    v43[1] = v44;
    v43[2] = v58[2];
    sub_24DFA9240();
    swift_storeEnumTagMultiPayload();
    sub_24E275418(&qword_27F1E9130, &qword_27F1E9120, &qword_24E3892A0);
    sub_24E275418(&qword_27F1E9140, &qword_27F1E9110, &qword_24E389290);
    sub_24E345E38();
    v40 = v47;
    v41 = &qword_27F1E9110;
    v42 = &qword_24E389290;
  }

  sub_24DF8BFF4(v40, v41, v42);
  sub_24E275508(v20);
  sub_24DFA9344();
  sub_24DFA9240();
  if (__swift_getEnumTagSinglePayload(v55, 1, v56) == 1)
  {
    sub_24DF8BFF4(v55, &qword_27F1DEFB8, &unk_24E36FFA0);
    sub_24DFA9240();
    sub_24E275564();
    v45 = sub_24E346C48();
  }

  else
  {
    (*(v50 + 32))(v49, v55, v56);
    v46 = (*(v50 + 16))(v48, v49, v56);
    MEMORY[0x28223BE20](v46);
    sub_24E275564();
    sub_24E3463A8();
    OUTLINED_FUNCTION_13_49(&qword_27F1E9150, &qword_27F1E9108, &qword_24E389288);
    v45 = sub_24E346C48();
    (*(v50 + 8))(v49, v56);
  }

  *v57 = v45;
  sub_24DF8BFF4(v54, &qword_27F1E9128, &qword_24E3892A8);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E272368@<X0>(double a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v131 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9048, &qword_24E3890F8);
  OUTLINED_FUNCTION_0_14();
  v124 = v8;
  v125 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_38();
  v123 = v9;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_20();
  v122 = v11;
  OUTLINED_FUNCTION_18_1();
  v119 = sub_24E347B98();
  OUTLINED_FUNCTION_0_14();
  v118 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_0_24();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21_20();
  OUTLINED_FUNCTION_23(v15);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9050, &unk_24E389100);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_15_3();
  v128 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8, &unk_24E36FFA0);
  OUTLINED_FUNCTION_4_5(v18);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_15_3();
  v126 = v20;
  OUTLINED_FUNCTION_18_1();
  v130 = sub_24E343288();
  OUTLINED_FUNCTION_0_14();
  v127 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_38();
  v120 = v23;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_21_20();
  v129 = v25;
  v26 = OUTLINED_FUNCTION_18_1();
  v27 = type metadata accessor for ActivityFeedLockupView(v26);
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v28);
  v29 = sub_24E344128();
  OUTLINED_FUNCTION_0_14();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_1();
  v36 = v35 - v34;
  v37 = *(v27 + 24);
  v132 = v4;
  v38 = v4 + v37;
  if (*(v38 + 96) == 1)
  {
    v115 = a3;
    if (a2)
    {
      v39 = *(v38 + 8);
    }

    else
    {
      v39 = v131;
    }

    GKHomeScreenIconsGetSize(v33);
    sub_24E344138();
    sub_24E344118();
    v42 = v41;
    v43 = (*(v31 + 8))(v36, v29);
    GKHomeScreenIconsGetScaledCornerRadiusForSize(v43, v39, v42);
    v44 = v132 + *(v27 + 20);
    v45 = type metadata accessor for ActivityFeedLockupViewModel(0);
    v46 = v44 + *(v45 + 40);
    v47 = *(v46 + 32);
    if (v47 == 255 || (LODWORD(v131) = *(v44 + *(v45 + 48)), LODWORD(v131) == 5))
    {
      result = sub_24E346C48();
      *v115 = result;
    }

    else
    {
      v48 = *v46;
      v114 = *(v46 + 8);
      v50 = *(v46 + 16);
      v49 = *(v46 + 24);
      v113 = v47;
      v112 = v49;
      v111 = v50;
      if (v47)
      {
        OUTLINED_FUNCTION_8_73();
        sub_24E2753C0();
        v51 = swift_allocObject();
        v52 = v48;
        *(v51 + 16) = v48;
        v53 = v114;
        *(v51 + 24) = v114;
        *(v51 + 32) = v50;
        *(v51 + 40) = v49;
        *(v51 + 48) = v47;
        *(v51 + 49) = LOBYTE(v131);
        *(v51 + 56) = v39;
        *(v51 + 64) = v42;
        OUTLINED_FUNCTION_7_61();
        sub_24E2716E4();
        v54 = objc_opt_self();
        v55 = OUTLINED_FUNCTION_31_10();
        sub_24E274F0C(v55, v56, v57, v58, v59);
        v60 = OUTLINED_FUNCTION_31_10();
        sub_24E117238(v60, v61, v62, v63, v64);
        v65 = [v54 tertiarySystemGroupedBackgroundColor];
        v66 = sub_24E346948();
        v67 = type metadata accessor for AsyncArtworkImageView(0);
        v134 = v67;
        v135 = sub_24E2754C0(&qword_27F1E8218, type metadata accessor for AsyncArtworkImageView, &unk_24E382AE8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v133);
        v69 = *(v67 + 24);
        sub_24E347BA8();
        v70 = sub_24E347BC8();
        OUTLINED_FUNCTION_41_10(v70);
        *boxed_opaque_existential_1 = sub_24E274EA4;
        boxed_opaque_existential_1[1] = v51;
        *(boxed_opaque_existential_1 + 16) = 0;
        boxed_opaque_existential_1[3] = v66;
      }

      else
      {
        v71 = type metadata accessor for ArtworkImageView(0);
        v134 = v71;
        v135 = sub_24E2754C0(&qword_27F1E7338, type metadata accessor for ArtworkImageView, &unk_24E381514);
        v72 = __swift_allocate_boxed_opaque_existential_1(v133);
        v52 = v48;
        v53 = v114;
        OUTLINED_FUNCTION_39_7();
        sub_24E274F0C(v73, v74, v75, v76, v77);
        OUTLINED_FUNCTION_39_7();
        sub_24E117238(v78, v79, v80, v81, v82);
        sub_24E347BA8();
        v83 = sub_24E347BC8();
        OUTLINED_FUNCTION_41_10(v83);
        *v72 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF390, &qword_24E36B1C0);
        swift_storeEnumTagMultiPayload();
        v84 = v71[5];
        *(v72 + v84) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FE8, qword_24E36FFB0);
        swift_storeEnumTagMultiPayload();
        v69 = v71[6];
        *(v72 + v69) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0, &qword_24E382C10);
        swift_storeEnumTagMultiPayload();
        *(v72 + v71[7]) = v52;
        *(v72 + v71[8]) = LOBYTE(v131);
        v85 = (v72 + v71[9]);
        *v85 = v39;
        v85[1] = v42;
      }

      sub_24DFA9240();
      v86 = v130;
      if (__swift_getEnumTagSinglePayload(v126, 1, v130) == 1)
      {
        sub_24DF8BFF4(v126, &qword_27F1DEFB8, &unk_24E36FFA0);
        __swift_project_boxed_opaque_existential_1(v133, v134);
        OUTLINED_FUNCTION_24_16();
        MEMORY[0x28223BE20](v87);
        OUTLINED_FUNCTION_7_1();
        OUTLINED_FUNCTION_17_9();
        (*(v88 + 16))(v69);
        OUTLINED_FUNCTION_25_19();
        v89 = sub_24E346C48();
        OUTLINED_FUNCTION_25_21(v52, v53);
        *v115 = v89;
      }

      else
      {
        (*(v127 + 32))(v129, v126, v130);
        v90 = sub_24E346E28();
        v91 = v128;
        *v128 = v90;
        v91[1] = v92;
        sub_24E26FD4C(v116);
        sub_24E347B88();
        v93 = sub_24E347B78();
        v94 = *(v118 + 8);
        v94(v117, v119);
        v94(v116, v119);
        v110 = v52;
        if (v93)
        {
          __swift_project_boxed_opaque_existential_1(v133, v134);
          OUTLINED_FUNCTION_24_16();
          MEMORY[0x28223BE20](v95);
          OUTLINED_FUNCTION_7_1();
          OUTLINED_FUNCTION_17_9();
          (*(v96 + 16))(v94);
          v97 = sub_24E346C48();
        }

        else
        {
          v97 = 0;
        }

        v98 = v127;
        v99 = (v128 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9058, &qword_24E389110) + 44));
        v100 = (*(v127 + 16))(v120, v129, v86);
        MEMORY[0x28223BE20](v100);
        *(&v109 - 6) = v132;
        *(&v109 - 5) = v133;
        *(&v109 - 4) = v39;
        *(&v109 - 3) = v42;
        *(&v109 - 16) = LOBYTE(v131);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9060, &qword_24E389118);
        sub_24E274F44();
        v101 = v122;
        sub_24E3463A8();
        v103 = v123;
        v102 = v124;
        v104 = *(v124 + 16);
        v105 = v125;
        v104(v123, v101, v125);
        *v99 = v97;
        v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9090, &qword_24E389130);
        v104(v99 + *(v106 + 48), v103, v105);
        v107 = *(v102 + 8);
        v107(v101, v105);
        v107(v103, v105);

        sub_24DFB4C28(&qword_27F1E9098, &qword_27F1E9050, &unk_24E389100, MEMORY[0x277CE11A8]);
        v108 = sub_24E346C48();
        OUTLINED_FUNCTION_25_21(v110, v114);
        *v115 = v108;
        (*(v98 + 8))(v129, v130);
      }

      return __swift_destroy_boxed_opaque_existential_1(v133);
    }
  }

  else
  {
    result = sub_24E346C48();
    *a3 = result;
  }

  return result;
}

id sub_24E272E70(uint64_t a1, char a2, uint64_t *a3, double a4, double a5)
{
  type metadata accessor for AsyncArtworkViewConfig(0);
  v10 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v10;
  v17 = *(a1 + 32);
  v15 = a2;
  sub_24E228C04(a1, v14);
  v11 = sub_24E26FC04();
  v12 = *a3;

  return sub_24E0BD748(v16, &v15, v12, a4, a5, v11);
}

double sub_24E272F20@<D0>(uint64_t a2@<X8>, void *x1_0@<X1>)
{
  sub_24E272FFC(x1_0, &v12);
  v5 = v12;
  v6 = v13;
  sub_24E346E28();
  sub_24E3453D8();
  v7 = v12;
  v8 = v13;
  v9 = v14;
  v10 = v15;
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  result = *&v16;
  *(a2 + 48) = v16;
  return result;
}

uint64_t sub_24E272FFC@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_24E347B98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  sub_24E26FD4C(&v19 - v9);
  sub_24E347B88();
  v11 = sub_24E347B78();
  v12 = *(v5 + 8);
  v12(v7, v4);
  v12(v10, v4);
  if (v11)
  {
    v19 = sub_24E3469A8();
    v20 = 0;
  }

  else
  {
    v13 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v14 = MEMORY[0x28223BE20](v13);
    (*(v16 + 16))(&v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
    v19 = sub_24E346C48();
    v20 = 1;
  }

  result = sub_24E345E38();
  v18 = v22;
  *a2 = v21;
  *(a2 + 8) = v18;
  return result;
}

void sub_24E273234()
{
  OUTLINED_FUNCTION_32();
  v70 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E90A0, &qword_24E3891A8);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEFB8, &unk_24E36FFA0);
  OUTLINED_FUNCTION_4_5(v4);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_3();
  v66 = v6;
  OUTLINED_FUNCTION_18_1();
  v67 = sub_24E343288();
  OUTLINED_FUNCTION_0_14();
  v59 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_38();
  v57 = v9;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_21_20();
  v58 = v11;
  OUTLINED_FUNCTION_18_1();
  sub_24E346188();
  OUTLINED_FUNCTION_0_14();
  v64 = v13;
  v65 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_9();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E90A8, &qword_24E3891B0);
  OUTLINED_FUNCTION_0_14();
  v68 = v15;
  v69 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_38();
  v56 = v16;
  OUTLINED_FUNCTION_18_3();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_21_20();
  v63 = v18;
  v19 = OUTLINED_FUNCTION_18_1();
  v20 = type metadata accessor for ActivityFeedLockupView(v19);
  type metadata accessor for ActivityFeedLockupViewModel(0);

  sub_24E345C48();
  v21 = sub_24E3464C8();
  v23 = v22;
  v25 = v24;
  v26 = v0 + *(v20 + 24);
  v27 = sub_24E3464B8();
  v61 = v28;
  v62 = v27;
  v30 = v29;
  v60 = v31;
  sub_24DFA92EC(v21, v23, v25 & 1);

  v32 = *(v26 + 24);
  KeyPath = swift_getKeyPath();
  v34 = sub_24E3469D8();
  v35 = swift_getKeyPath();
  v36 = v30 & 1;
  v72[0] = v30 & 1;
  LOBYTE(v71[0]) = 0;
  v37 = *(v26 + 104);
  v38 = swift_getKeyPath();

  v39 = sub_24E346E38();
  LOBYTE(v55) = 1;
  OUTLINED_FUNCTION_17_36(v39, v40, v41, v42, v43, v44, v45, v46, v53, v54, 0, v55, v39, v40);
  v71[0] = v62;
  v71[1] = v61;
  LOBYTE(v71[2]) = v36;
  v71[3] = v60;
  v71[4] = KeyPath;
  v71[5] = v32;
  LOBYTE(v71[6]) = 0;
  v71[7] = v35;
  v71[8] = v34;
  v71[9] = v38;
  v71[10] = v37;
  v71[25] = 0x3FF0000000000000;
  sub_24E346178();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E90B0, &qword_24E389248);
  v48 = sub_24E275104();
  sub_24E346808();
  (*(v64 + 8))(v1, v65);
  memcpy(v72, v71, 0xD0uLL);
  sub_24DF8BFF4(v72, &qword_27F1E90B0, &qword_24E389248);
  sub_24DFA9240();
  if (__swift_getEnumTagSinglePayload(v66, 1, v67) == 1)
  {
    sub_24DF8BFF4(v66, &qword_27F1DEFB8, &unk_24E36FFA0);
    (*(v68 + 16))(v56, v63, v69);
    v71[0] = v47;
    v71[1] = v48;
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_60();
    v49 = sub_24E346C48();
    v50 = v69;
    v51 = v68;
  }

  else
  {
    (*(v59 + 32))(v58, v66, v67);
    v52 = (*(v59 + 16))(v57, v58, v67);
    MEMORY[0x28223BE20](v52);
    sub_24E3463A8();
    OUTLINED_FUNCTION_13_49(&qword_27F1E9100, &qword_27F1E90A0, &qword_24E3891A8);
    v49 = sub_24E346C48();
    (*(v59 + 8))(v58, v67);
    v51 = v68;
    v50 = v69;
  }

  *v70 = v49;
  (*(v51 + 8))(v63, v50);
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E27381C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E90A8, &qword_24E3891B0);
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(v11 - v6, a1, v4, v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E90B0, &qword_24E389248);
  v9 = sub_24E275104();
  v11[0] = v8;
  v11[1] = v9;
  swift_getOpaqueTypeConformance2();
  result = sub_24E346C48();
  *a2 = result;
  return result;
}

uint64_t sub_24E273940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9158, &qword_24E3892B0);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9038, &qword_24E3890E8);
  MEMORY[0x28223BE20](v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  sub_24E271B18();
  v27 = v28;
  v24 = v18;
  sub_24E346648();

  sub_24E273234();
  v27 = v28;
  sub_24E346648();

  if (*(a1 + *(type metadata accessor for ActivityFeedLockupView(0) + 24) + 96) == 1)
  {
    sub_24E272368(0.0, 1, &v28);
    v27 = v28;
    sub_24E346648();

    sub_24DFA9344();
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v19, 1, v23);
  v20 = v24;
  sub_24DFA9240();
  sub_24DFA9240();
  v21 = v25;
  sub_24DFA9240();
  v23 = v12;
  sub_24DFA9240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9160, &qword_24E3892B8);
  sub_24DFA9240();
  sub_24DFA9240();
  sub_24DF8BFF4(v7, &qword_27F1E9158, &qword_24E3892B0);
  sub_24DF8BFF4(v15, &qword_27F1E9038, &qword_24E3890E8);
  sub_24DF8BFF4(v20, &qword_27F1E9038, &qword_24E3890E8);
  sub_24DF8BFF4(v21, &qword_27F1E9158, &qword_24E3892B0);
  sub_24DF8BFF4(v9, &qword_27F1E9038, &qword_24E3890E8);
  return sub_24DF8BFF4(v23, &qword_27F1E9038, &qword_24E3890E8);
}

uint64_t sub_24E273D48@<X0>(uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9038, &qword_24E3890E8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v12 - v7;
  v9 = type metadata accessor for ActivityFeedLockupView(0) - 8;
  MEMORY[0x28223BE20](v9);
  sub_24E2753C0();
  v10 = swift_allocObject();
  sub_24E2716E4();
  sub_24E273234();
  v12[0] = v12[1];
  sub_24E346648();

  sub_24DFA9240();
  *a2 = sub_24E275964;
  a2[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9168, &qword_24E3892C0);
  sub_24DFA9240();

  sub_24DF8BFF4(v8, &qword_27F1E9038, &qword_24E3890E8);
  sub_24DF8BFF4(v5, &qword_27F1E9038, &qword_24E3890E8);
}

uint64_t sub_24E273FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_24E346E18();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9170, &qword_24E3892C8);
  sub_24E274038(a2, a1, a3 + *(v7 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9178, &qword_24E3892D0);
  v9 = a3 + *(result + 36);
  *v9 = 0x3FF0000000000000;
  *(v9 + 4) = 0;
  return result;
}

uint64_t sub_24E274038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9180, &qword_24E3892D8);
  MEMORY[0x28223BE20](v5);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9188, &qword_24E3892E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9038, &qword_24E3890E8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v25 - v18;
  sub_24E271B18();
  v26 = v27;
  sub_24E346648();

  if (*(a1 + *(type metadata accessor for ActivityFeedLockupView(0) + 24) + 96) == 1)
  {
    v25[0] = a3;
    sub_24E345488();
    sub_24E272368(v20 * 0.5, 0, &v27);
    v26 = v27;
    sub_24E346648();

    sub_24E345488();
    v22 = &v7[*(v5 + 36)];
    *v22 = v21 * 0.5;
    *(v22 + 1) = 0;
    sub_24DFA9344();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v23, 1, v5);
  sub_24DFA9240();
  sub_24DFA9240();
  sub_24DFA9240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9190, &qword_24E3892E8);
  sub_24DFA9240();
  sub_24DF8BFF4(v13, &qword_27F1E9188, &qword_24E3892E0);
  sub_24DF8BFF4(v19, &qword_27F1E9038, &qword_24E3890E8);
  sub_24DF8BFF4(v10, &qword_27F1E9188, &qword_24E3892E0);
  return sub_24DF8BFF4(v16, &qword_27F1E9038, &qword_24E3890E8);
}

uint64_t sub_24E2743C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9028, &qword_24E3890D8);
  MEMORY[0x28223BE20](v3);
  v33 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v32[1] = v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9030, &qword_24E3890E0);
  MEMORY[0x28223BE20](v7 - 8);
  v36 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9038, &qword_24E3890E8);
  MEMORY[0x28223BE20](v11 - 8);
  v35 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v34 = v32 - v14;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = v32 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v32 - v20;
  sub_24E271B18();
  v39 = __src[0];
  sub_24E346648();

  sub_24E273234();
  v39 = __src[0];
  v22 = v3;
  sub_24E346648();

  v23 = 1;
  if (*(a1 + *(type metadata accessor for ActivityFeedLockupView(0) + 24) + 96) == 1)
  {
    sub_24E272368(0.0, 1, __src);
    v39 = __src[0];
    sub_24E346648();

    sub_24E346E18();
    sub_24E3457F8();
    v24 = v33;
    sub_24DFA9344();
    memcpy(&v24[*(v3 + 36)], __src, 0x70uLL);
    sub_24DFA9344();
    sub_24DFA9344();
    v23 = 0;
  }

  v25 = v38;
  __swift_storeEnumTagSinglePayload(v38, v23, 1, v22);
  v26 = v21;
  v27 = v34;
  sub_24DFA9240();
  v28 = v18;
  v29 = v35;
  sub_24DFA9240();
  v30 = v36;
  sub_24DFA9240();
  sub_24DFA9240();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9040, &qword_24E3890F0);
  sub_24DFA9240();
  sub_24DFA9240();
  sub_24DF8BFF4(v25, &qword_27F1E9030, &qword_24E3890E0);
  sub_24DF8BFF4(v28, &qword_27F1E9038, &qword_24E3890E8);
  sub_24DF8BFF4(v26, &qword_27F1E9038, &qword_24E3890E8);
  sub_24DF8BFF4(v30, &qword_27F1E9030, &qword_24E3890E0);
  sub_24DF8BFF4(v29, &qword_27F1E9038, &qword_24E3890E8);
  return sub_24DF8BFF4(v27, &qword_27F1E9038, &qword_24E3890E8);
}

void sub_24E274950(uint64_t a1)
{
  type metadata accessor for ArtworkLoader();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ActivityFeedLockupViewModel(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ActivityFeedLockupTheme(319);
      if (v3 <= 0x3F)
      {
        sub_24E274A7C(319, &qword_27F1E8FE8, &type metadata for ActivityFeedLockupActionHandlers, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24E274A7C(319, &qword_27F1E15F0, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_24E274ACC(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24E274A7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24E274ACC(uint64_t a1)
{
  if (!qword_27F1E6A90)
  {
    sub_24E347B98();
    v1 = sub_24E345278();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1E6A90);
    }
  }
}

unint64_t sub_24E274B24()
{
  result = qword_27F1E8FF0;
  if (!qword_27F1E8FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8FD0, &qword_24E388FF8);
    sub_24E274BDC();
    sub_24DFB4C28(&qword_27F1E0FE0, &qword_27F1E0FB8, &qword_24E389000, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8FF0);
  }

  return result;
}

unint64_t sub_24E274BDC()
{
  result = qword_27F1E8FF8;
  if (!qword_27F1E8FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8F70, &qword_24E388FA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8F60, &qword_24E388F90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E8F58, &qword_24E388F88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E19E0, &qword_24E37DD00);
    sub_24E270CEC();
    sub_24DFB4C28(&qword_27F1E19E8, &qword_27F1E19E0, &qword_24E37DD00, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_24E2754C0(&qword_27F1DF850, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E8FF8);
  }

  return result;
}

uint64_t sub_24E274DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_24_0();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

id sub_24E274EA4()
{
  v1 = type metadata accessor for ActivityFeedLockupView(0);
  OUTLINED_FUNCTION_4_5(v1);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 49);
  v6 = (v0 + ((*(v2 + 80) + 72) & ~*(v2 + 80)));

  return sub_24E272E70(v0 + 16, v5, v6, v3, v4);
}

id sub_24E274F0C(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_24E117238(result, a2, a3, a4, a5);
  }

  return result;
}

void sub_24E274F20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_24E0BE79C(a1, a2, a3, a4, a5);
  }
}

unint64_t sub_24E274F44()
{
  result = qword_27F1E9068;
  if (!qword_27F1E9068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9060, &qword_24E389118);
    sub_24E274FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9068);
  }

  return result;
}

unint64_t sub_24E274FD0()
{
  result = qword_27F1E9070;
  if (!qword_27F1E9070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9078, &qword_24E389120);
    sub_24E275054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9070);
  }

  return result;
}

unint64_t sub_24E275054()
{
  result = qword_27F1E9080;
  if (!qword_27F1E9080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9088, &qword_24E389128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9080);
  }

  return result;
}

unint64_t sub_24E275104()
{
  result = qword_27F1E90B8;
  if (!qword_27F1E90B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E90B0, &qword_24E389248);
    sub_24E2751BC();
    sub_24DFB4C28(&qword_27F1E90F0, &qword_27F1E90F8, &qword_24E389280, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E90B8);
  }

  return result;
}

unint64_t sub_24E2751BC()
{
  result = qword_27F1E90C0;
  if (!qword_27F1E90C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E90C8, &qword_24E389250);
    sub_24E275248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E90C0);
  }

  return result;
}

unint64_t sub_24E275248()
{
  result = qword_27F1E90D0;
  if (!qword_27F1E90D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E90D8, &qword_24E389258);
    sub_24E275300();
    sub_24DFB4C28(&qword_27F1E2040, &qword_27F1E2048, &unk_24E37DE20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E90D0);
  }

  return result;
}

unint64_t sub_24E275300()
{
  result = qword_27F1E90E0;
  if (!qword_27F1E90E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E90E8, &unk_24E389260);
    sub_24E1F6600();
    sub_24DFB4C28(&qword_27F1E2040, &qword_27F1E2048, &unk_24E37DE20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E90E0);
  }

  return result;
}

uint64_t sub_24E2753C0()
{
  OUTLINED_FUNCTION_0_8();
  v1(0);
  OUTLINED_FUNCTION_5_2();
  v2 = OUTLINED_FUNCTION_19_1();
  v3(v2);
  return v0;
}

uint64_t sub_24E275418(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24E2754C0(&qword_27F1E9138, type metadata accessor for PlayerGroupView, &protocol conformance descriptor for PlayerGroupView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E2754C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E275508(uint64_t a1)
{
  v2 = type metadata accessor for PlayerGroupView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24E275564()
{
  result = qword_27F1E9148;
  if (!qword_27F1E9148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E9128, &qword_24E3892A8);
    sub_24E275418(&qword_27F1E9130, &qword_27F1E9120, &qword_24E3892A0);
    sub_24E275418(&qword_27F1E9140, &qword_27F1E9110, &qword_24E389290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9148);
  }

  return result;
}

uint64_t objectdestroyTm_28()
{
  OUTLINED_FUNCTION_32();
  type metadata accessor for ActivityFeedLockupView(0);
  OUTLINED_FUNCTION_3_13();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  v4 = v3 + v0[5];
  sub_24E3433A8();
  OUTLINED_FUNCTION_5_2();
  (*(v5 + 8))(v4);
  type metadata accessor for ActivityFeedLockupViewModel(0);

  sub_24E343288();
  if (!OUTLINED_FUNCTION_14_39())
  {
    OUTLINED_FUNCTION_22_0();
    v6 = OUTLINED_FUNCTION_21_28();
    v7(v6);
  }

  OUTLINED_FUNCTION_34_14();
  if (!OUTLINED_FUNCTION_14_39())
  {
    OUTLINED_FUNCTION_22_0();
    v8 = OUTLINED_FUNCTION_21_28();
    v9(v8);
  }

  OUTLINED_FUNCTION_34_14();
  OUTLINED_FUNCTION_36_11();
  if (!v12)
  {
    sub_24E0BE79C(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), v10);
  }

  if (!OUTLINED_FUNCTION_14_39())
  {
    OUTLINED_FUNCTION_22_0();
    v13 = OUTLINED_FUNCTION_21_28();
    v14(v13);
  }

  OUTLINED_FUNCTION_34_14();
  v15 = v3 + v0[6];

  v16 = type metadata accessor for ActivityFeedLockupTheme(0);
  v17 = *(v16 + 60);
  sub_24E346E88();
  OUTLINED_FUNCTION_5_2();
  (*(v18 + 8))(v15 + v17);
  v19 = *(v16 + 64);
  sub_24E345658();
  OUTLINED_FUNCTION_5_2();
  (*(v20 + 8))(v15 + v19);
  if (*(v3 + v0[7]))
  {
  }

  sub_24DE73F34(*(v3 + v0[8]), *(v3 + v0[8] + 8));
  v21 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0FD0, &qword_24E382C10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E347B98();
    OUTLINED_FUNCTION_5_2();
    (*(v22 + 8))(v3 + v21);
  }

  else
  {
  }

  OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8E8](v23, v24, v25);
}

uint64_t sub_24E27597C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = type metadata accessor for ActivityFeedLockupView(0);
  OUTLINED_FUNCTION_4_5(v4);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a2(a1, v6);
}

uint64_t OUTLINED_FUNCTION_13_49(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = MEMORY[0x277CDE598];

  return sub_24DFB4C28(a1, a2, a3, v4);
}

uint64_t OUTLINED_FUNCTION_14_39()
{

  return __swift_getEnumTagSinglePayload(v0 + v2, 1, v1);
}

void *OUTLINED_FUNCTION_17_36(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void a8, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{

  return sub_24E3457F8();
}

void OUTLINED_FUNCTION_25_21(void *a1, uint64_t a2)
{
  v4 = *(v2 - 320);
  v5 = *(v2 - 312);
  v6 = *(v2 - 300);

  sub_24E274F20(a1, a2, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_26_21(uint64_t a1)
{

  return sub_24E345E38();
}

uint64_t OUTLINED_FUNCTION_34_14()
{
}

uint64_t OUTLINED_FUNCTION_40_9()
{

  return sub_24DFA9240();
}

uint64_t OUTLINED_FUNCTION_41_10(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, a1);
}

uint64_t sub_24E275C28(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E275C68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id AchievementCard.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_28();

  return [v2 v3];
}

uint64_t AchievementCard.model.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model;
  OUTLINED_FUNCTION_30_13();
  swift_beginAccess();
  sub_24E275D74(a1, v1 + v3);
  swift_endAccess();
  sub_24E2770BC();
  return sub_24E2776C4(a1);
}

uint64_t sub_24E275D74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E23E0, &qword_24E372998);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E275DE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_metrics;
  OUTLINED_FUNCTION_30_13();
  swift_beginAccess();
  sub_24E27B950(a1, v1 + v3);
  swift_endAccess();
  sub_24E276C08();
  return sub_24DF89DEC(a1);
}

uint64_t sub_24E275E4C()
{
  sub_24E343FC8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7_1();
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    v57 = MEMORY[0x277D839F8];
    v58 = MEMORY[0x277D22A30];
    v55 = MEMORY[0x277D22A30];
    *&v56 = 0x4024000000000000;
    v54 = MEMORY[0x277D839F8];
    *&v53 = 0x4030000000000000;
    if (qword_27F1DDB78 != -1)
    {
      OUTLINED_FUNCTION_1_128(&qword_27F1DDB78);
    }

    v4 = sub_24E344158();
    __swift_project_value_buffer(v4, qword_27F20B2E8);
    OUTLINED_FUNCTION_5_98();
    v5 = OUTLINED_FUNCTION_16_38();
    *&v45 = v6;
    v6(v5);
    v7 = OUTLINED_FUNCTION_3_109();
    v1(v7);
    v8 = *MEMORY[0x277D76838];
    v51 = &type metadata for CappedSizeStaticDimension;
    v52 = sub_24E03A540();
    *&v49 = 0x403A000000000000;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0B98, &unk_24E36F0D0);
    OUTLINED_FUNCTION_1_30(v9);
    OUTLINED_FUNCTION_12_44();
    v12 = OUTLINED_FUNCTION_2_110(v11, *(v10 + 88));
    v13(v12);
    *(&v49 + 1) = v0;
    v50 = v8;
    v14 = qword_27F1DDB80;
    v15 = v8;
    if (v14 != -1)
    {
      v15 = OUTLINED_FUNCTION_0_164(&qword_27F1DDB80);
    }

    v16 = OUTLINED_FUNCTION_8_74(v15, qword_27F20B300);
    (v45)(v16);
    v17 = OUTLINED_FUNCTION_4_92();
    v1(v17);
    v47 = sub_24E3444F8();
    v48 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_36_12(MEMORY[0x277D22628]);
    OUTLINED_FUNCTION_6_84();
    v18();
    sub_24E344508();
    v19 = OUTLINED_FUNCTION_15_36();
    v20(v19);
    if (qword_27F1DD710 != -1)
    {
      OUTLINED_FUNCTION_19_29(&qword_27F1DD710);
    }

    OUTLINED_FUNCTION_40_10(&xmmword_27F1E1468);
    xmmword_27F1E9198 = xmmword_24E3893D0;
    unk_27F1E91A8 = xmmword_24E3893E0;
    xmmword_27F1E91B8 = xmmword_24E3893F0;
    sub_24DF88BF0(&v56, &unk_27F1E91C8);
    v21 = 0x4061000000000000;
  }

  else
  {
    v57 = MEMORY[0x277D839F8];
    v58 = MEMORY[0x277D22A30];
    v55 = MEMORY[0x277D22A30];
    *&v56 = 0x4030000000000000;
    v54 = MEMORY[0x277D839F8];
    *&v53 = 0x4030000000000000;
    if (qword_27F1DDB78 != -1)
    {
      OUTLINED_FUNCTION_1_128(&qword_27F1DDB78);
    }

    v22 = sub_24E344158();
    __swift_project_value_buffer(v22, qword_27F20B2E8);
    OUTLINED_FUNCTION_5_98();
    v23 = OUTLINED_FUNCTION_16_38();
    *&v45 = v24;
    v24(v23);
    v25 = OUTLINED_FUNCTION_3_109();
    v1(v25);
    v26 = *MEMORY[0x277D76838];
    v51 = &type metadata for CappedSizeStaticDimension;
    v52 = sub_24E03A540();
    *&v49 = 0x4036000000000000;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0B98, &unk_24E36F0D0);
    OUTLINED_FUNCTION_1_30(v27);
    OUTLINED_FUNCTION_12_44();
    v30 = OUTLINED_FUNCTION_2_110(v29, *(v28 + 88));
    v31(v30);
    *(&v49 + 1) = v0;
    v50 = v26;
    v32 = qword_27F1DDB80;
    v33 = v26;
    if (v32 != -1)
    {
      v33 = OUTLINED_FUNCTION_0_164(&qword_27F1DDB80);
    }

    v34 = OUTLINED_FUNCTION_8_74(v33, qword_27F20B300);
    (v45)(v34);
    v35 = OUTLINED_FUNCTION_4_92();
    v1(v35);
    v47 = sub_24E3444F8();
    v48 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(v46);
    OUTLINED_FUNCTION_36_12(MEMORY[0x277D22628]);
    OUTLINED_FUNCTION_6_84();
    v36();
    sub_24E344508();
    v37 = OUTLINED_FUNCTION_15_36();
    v38(v37);
    if (qword_27F1DD710 != -1)
    {
      OUTLINED_FUNCTION_19_29(&qword_27F1DD710);
    }

    OUTLINED_FUNCTION_40_10(&xmmword_27F1E1468);
    xmmword_27F1E9198 = xmmword_24E3893A0;
    unk_27F1E91A8 = xmmword_24E3893B0;
    xmmword_27F1E91B8 = xmmword_24E3893C0;
    sub_24DF88BF0(&v56, &unk_27F1E91C8);
    v21 = 0x405C800000000000;
  }

  unk_27F1E91F0 = vdupq_n_s64(v21);
  sub_24DF88BF0(&v53, &unk_27F1E9218);
  unk_27F1E9200 = v45;
  qword_27F1E9210 = v2;
  __asm { FMOV            V0.2D, #10.0 }

  unk_27F1E9240 = _Q0;
  sub_24DF88BF0(&v49, &unk_27F1E9250);
  return OUTLINED_FUNCTION_42_9(v46);
}

void sub_24E27639C()
{
  OUTLINED_FUNCTION_13_44();
  sub_24E343FC8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  GKIsXRUIIdiomShouldUsePadUI();
  OUTLINED_FUNCTION_28_18();
  if (qword_27F1DD718 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_27_16();
  *&v36 = 0x4030000000000000;
  if (qword_27F1DDB78 != -1)
  {
    OUTLINED_FUNCTION_1_128(&qword_27F1DDB78);
  }

  v6 = sub_24E344158();
  __swift_project_value_buffer(v6, qword_27F20B2E8);
  OUTLINED_FUNCTION_5_98();
  v7 = OUTLINED_FUNCTION_16_38();
  v28 = v8;
  v8(v7);
  v9 = OUTLINED_FUNCTION_3_109();
  v1(v9);
  v10 = *MEMORY[0x277D76838];
  v34 = &type metadata for CappedSizeStaticDimension;
  v35 = sub_24E03A540();
  *&v32 = 0x403A000000000000;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0B98, &unk_24E36F0D0);
  OUTLINED_FUNCTION_1_30(v11);
  OUTLINED_FUNCTION_12_44();
  v14 = OUTLINED_FUNCTION_2_110(v13, *(v12 + 88));
  v15(v14);
  *(&v32 + 1) = v0;
  v33 = v10;
  v16 = qword_27F1DDB80;
  v17 = v10;
  if (v16 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_164(&qword_27F1DDB80);
  }

  v18 = OUTLINED_FUNCTION_8_74(v17, qword_27F20B300);
  v28(v18);
  v19 = OUTLINED_FUNCTION_4_92();
  v1(v19);
  v30 = sub_24E3444F8();
  v31 = MEMORY[0x277D22798];
  __swift_allocate_boxed_opaque_existential_1(&v29);
  OUTLINED_FUNCTION_18_38(MEMORY[0x277D22628]);
  OUTLINED_FUNCTION_6_84();
  v20();
  sub_24E344508();
  v21 = OUTLINED_FUNCTION_15_36();
  v22(v21);
  xmmword_27F1E92A8 = xmmword_24E3893D0;
  unk_27F1E92B8 = xmmword_24E3893E0;
  OUTLINED_FUNCTION_35_12(xmmword_24E3893F0);
  unk_27F1E9300 = vdupq_n_s64(0x405C800000000000uLL);
  sub_24DF88BF0(&v36, &unk_27F1E9328);
  qword_27F1E9310 = v2;
  unk_27F1E9318 = v3;
  qword_27F1E9320 = v4;
  __asm { FMOV            V0.2D, #10.0 }

  unk_27F1E9350 = _Q0;
  sub_24DF88BF0(&v32, &unk_27F1E9360);
  OUTLINED_FUNCTION_42_9(&v29);
  OUTLINED_FUNCTION_12_37();
}

void sub_24E2766B0()
{
  OUTLINED_FUNCTION_13_44();
  sub_24E343FC8();
  OUTLINED_FUNCTION_0_14();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  if (GKIsXRUIIdiomShouldUsePadUI())
  {
    OUTLINED_FUNCTION_28_18();
    if (qword_27F1DD720 != -1)
    {
      OUTLINED_FUNCTION_24_17(&qword_27F1DD720);
    }

    OUTLINED_FUNCTION_27_16();
    *&v55 = 0x4035000000000000;
    if (qword_27F1DDB78 != -1)
    {
      OUTLINED_FUNCTION_1_128(&qword_27F1DDB78);
    }

    v6 = sub_24E344158();
    __swift_project_value_buffer(v6, qword_27F20B2E8);
    OUTLINED_FUNCTION_5_98();
    v7 = OUTLINED_FUNCTION_16_38();
    v46 = v8;
    v8(v7);
    v9 = OUTLINED_FUNCTION_3_109();
    v1(v9);
    v10 = *MEMORY[0x277D76838];
    v53 = &type metadata for CappedSizeStaticDimension;
    v54 = sub_24E03A540();
    *&v51 = 0x403B000000000000;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0B98, &unk_24E36F0D0);
    OUTLINED_FUNCTION_1_30(v11);
    OUTLINED_FUNCTION_12_44();
    v14 = OUTLINED_FUNCTION_2_110(v13, *(v12 + 88));
    v15(v14);
    *(&v51 + 1) = v0;
    v52 = v10;
    v16 = qword_27F1DDB80;
    v17 = v10;
    if (v16 != -1)
    {
      v17 = OUTLINED_FUNCTION_0_164(&qword_27F1DDB80);
    }

    v18 = OUTLINED_FUNCTION_8_74(v17, qword_27F20B300);
    v46(v18);
    v19 = OUTLINED_FUNCTION_4_92();
    v1(v19);
    v49 = sub_24E3444F8();
    v50 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v48);
    OUTLINED_FUNCTION_18_38(MEMORY[0x277D22628]);
    OUTLINED_FUNCTION_6_84();
    v20();
    sub_24E344508();
    v21 = OUTLINED_FUNCTION_15_36();
    v22(v21);
    xmmword_27F1E93B8 = xmmword_24E389430;
    unk_27F1E93C8 = xmmword_24E389440;
    OUTLINED_FUNCTION_35_12(xmmword_24E3893C0);
    v23 = 0x405B400000000000;
  }

  else
  {
    OUTLINED_FUNCTION_28_18();
    if (qword_27F1DD720 != -1)
    {
      OUTLINED_FUNCTION_24_17(&qword_27F1DD720);
    }

    OUTLINED_FUNCTION_27_16();
    *&v55 = 0x4026000000000000;
    if (qword_27F1DDB78 != -1)
    {
      OUTLINED_FUNCTION_1_128(&qword_27F1DDB78);
    }

    v24 = sub_24E344158();
    __swift_project_value_buffer(v24, qword_27F20B2E8);
    OUTLINED_FUNCTION_5_98();
    v25 = OUTLINED_FUNCTION_16_38();
    v47 = v26;
    v26(v25);
    v27 = OUTLINED_FUNCTION_3_109();
    v1(v27);
    v28 = *MEMORY[0x277D76838];
    v53 = &type metadata for CappedSizeStaticDimension;
    v54 = sub_24E03A540();
    *&v51 = 0x4035000000000000;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0B98, &unk_24E36F0D0);
    OUTLINED_FUNCTION_1_30(v29);
    OUTLINED_FUNCTION_12_44();
    v32 = OUTLINED_FUNCTION_2_110(v31, *(v30 + 88));
    v33(v32);
    *(&v51 + 1) = v0;
    v52 = v28;
    v34 = qword_27F1DDB80;
    v35 = v28;
    if (v34 != -1)
    {
      v35 = OUTLINED_FUNCTION_0_164(&qword_27F1DDB80);
    }

    v36 = OUTLINED_FUNCTION_8_74(v35, qword_27F20B300);
    v47(v36);
    v37 = OUTLINED_FUNCTION_4_92();
    v1(v37);
    v49 = sub_24E3444F8();
    v50 = MEMORY[0x277D22798];
    __swift_allocate_boxed_opaque_existential_1(&v48);
    OUTLINED_FUNCTION_18_38(MEMORY[0x277D22628]);
    OUTLINED_FUNCTION_6_84();
    v38();
    sub_24E344508();
    v39 = OUTLINED_FUNCTION_15_36();
    v40(v39);
    xmmword_27F1E93B8 = xmmword_24E389400;
    unk_27F1E93C8 = xmmword_24E389410;
    OUTLINED_FUNCTION_35_12(xmmword_24E389420);
    v23 = 0x4059000000000000;
  }

  unk_27F1E9410 = vdupq_n_s64(v23);
  sub_24DF88BF0(&v55, &unk_27F1E9438);
  qword_27F1E9420 = v2;
  unk_27F1E9428 = v3;
  qword_27F1E9430 = v4;
  __asm { FMOV            V0.2D, #10.0 }

  unk_27F1E9460 = _Q0;
  sub_24DF88BF0(&v51, &unk_27F1E9470);
  OUTLINED_FUNCTION_42_9(&v48);
  OUTLINED_FUNCTION_12_37();
}

uint64_t sub_24E276BB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return sub_24DF89DB4(a2, a4);
}

id sub_24E276C08()
{
  v1 = &v0[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_metrics];
  swift_beginAccess();
  v2 = *(v1 + 15);
  v4 = *(v1 + 104);
  v5 = v2;
  sub_24E2BF4EC(&v4);
  return [v0 setNeedsLayout];
}

id sub_24E276C8C()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard____lazy_storage___highlightView;
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard____lazy_storage___highlightView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard____lazy_storage___highlightView);
  }

  else
  {
    v4 = sub_24E276CEC();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_24E276CEC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = [objc_opt_self() whiteColor];
  v2 = [v1 colorWithAlphaComponent_];

  [v0 setBackgroundColor_];
  v3 = [v0 layer];
  [v3 setCornerCurve_];

  return v0;
}

id sub_24E276DC8()
{
  v1 = v0[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_isHighlighted];
  v2 = sub_24E276C8C();
  v3 = v2;
  if (v1 == 1)
  {
    [v0 insertSubview:v2 belowSubview:*&v0[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_badge]];
  }

  else
  {
    [v2 removeFromSuperview];
  }

  return [v0 setNeedsLayout];
}

id sub_24E276E94(uint64_t a1, uint64_t *a2, id *a3, uint64_t *a4)
{
  v7 = sub_24E344158();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  v12 = *a3;
  v9 = *a4;
  *v8 = *a3;
  v8[1] = v9;
  OUTLINED_FUNCTION_22_0();
  (*(v10 + 104))();

  return v12;
}

uint64_t AchievementCard.model.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model;
  v4 = OUTLINED_FUNCTION_30_13();
  OUTLINED_FUNCTION_5_16(v4, v5);
  return sub_24DF8F3A8(v1 + v3, a1, &qword_27F1E23E0, &qword_24E372998);
}

uint64_t sub_24E276FA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model;
  swift_beginAccess();
  return sub_24DF8F3A8(v3 + v4, a2, &qword_27F1E23E0, &qword_24E372998);
}

uint64_t sub_24E277010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E23E0, &qword_24E372998);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24DF8F3A8(a1, &v6 - v3, &qword_27F1E23E0, &qword_24E372998);
  return AchievementCard.model.setter(v4);
}

id sub_24E2770BC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E23E0, &qword_24E372998);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v50 - v3;
  v5 = type metadata accessor for Achievement(0);
  MEMORY[0x28223BE20](v5);
  v7 = (v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model;
  swift_beginAccess();
  sub_24DF8F3A8(&v1[v8], v4, &qword_27F1E23E0, &qword_24E372998);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_24E2776C4(v4);
    v9 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_titleLabel];
    sub_24DF88A8C(0, &qword_27F1E2418, 0x277CCA898);
    v10 = sub_24E079130();
    [v9 setAttributedText_];

    v11 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_subtitleLabel];
    v12 = sub_24E079130();
    [v11 setAttributedText_];

    v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_isHighlighted] = 0;
    sub_24E276DC8();
    v53 = 0;
    v54 = 0;
    v55 = 0x8000000000000000;
    v58 = v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_theme];
    sub_24E27772C(&v53, &v58);
    return [v1 setNeedsLayout];
  }

  sub_24E27B630(v4, v7);
  v13 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  LODWORD(v14) = 1045220557;
  [v13 setHyphenationFactor_];
  [v13 setAlignment_];
  v15 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_titleLabel];
  type metadata accessor for ItemWithReleaseState();
  v16 = v7[5];
  v17 = v7[6];
  v18 = Achievement.description.getter();
  v20 = v19;
  v21 = (v7 + v5[12]);
  v22 = v21[1];
  v23 = v21[2];
  v24 = v21[3];
  v53 = *v21;
  v54 = v22;
  v55 = v23;
  v56 = v24;
  sub_24E151B74(v53, v22, v23, v24);
  v25 = static ItemWithReleaseState.titleText(title:accessibilityDescription:releaseStateIcon:paragraphStyle:)(v16, v17, v18, v20, &v53, v13);

  sub_24E151BF4(v53, v54);
  [v15 setAttributedText_];

  v52 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_subtitleLabel];
  v26 = v7[7];
  v27 = v7[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0680, qword_24E36E390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E367D20;
  v29 = *MEMORY[0x277D74118];
  *(inited + 32) = *MEMORY[0x277D74118];
  *(inited + 64) = sub_24DF88A8C(0, &qword_27F1E5BD0, 0x277D74240);
  *(inited + 40) = v13;
  type metadata accessor for Key(0);
  sub_24DFEA7B4();

  v30 = v29;
  v31 = v13;
  v32 = sub_24E347C28();
  v33 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v34 = sub_24E194F20(v26, v27, v32);
  [v52 setAttributedText_];

  v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_isHighlighted] = *(v7 + v5[11]);
  sub_24E276DC8();
  v35 = v7[10];
  v36 = v7[11];
  v53 = v7[9];
  v54 = v35;
  v55 = v36;
  v58 = v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_theme];
  sub_24E09B300(v53, v35, v36);
  sub_24E27772C(&v53, &v58);
  sub_24E154E88(v53, v54, v55);
  if (!*(v7 + v5[13]) || (v56 = &type metadata for GKFeatureFlags, v57 = sub_24DFA0CB4(), LOBYTE(v53) = 12, v37 = sub_24E3435A8(), __swift_destroy_boxed_opaque_existential_1(&v53), (v37 & 1) == 0))
  {
LABEL_18:

    sub_24E250C9C(v7);
    return [v1 setNeedsLayout];
  }

  v51 = v31;

  v53 = sub_24E0833E0(v38);
  sub_24E27A3F8(&v53);
  v50[1] = 0;
  v39 = v53;
  v52 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
  v40 = sub_24DFD8654();
  v41 = 0;
  while (1)
  {
    if (v40 == v41)
    {

      sub_24E277898(v52);

      v31 = v51;
      goto LABEL_18;
    }

    if ((v39 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x25303F560](v41, v39);
    }

    else
    {
      v42 = *(v39 + 16);
      if (v41 >= v42)
      {
        goto LABEL_21;
      }

      v43 = *(v39 + 8 * v41 + 32);
    }

    v44 = v43;
    v45 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    v46 = [v43 friendPlayer];
    if (!v46)
    {
      goto LABEL_22;
    }

    v47 = v46;
    v48 = [objc_allocWithZone(MEMORY[0x277D0C170]) initWithInternalRepresentation_];

    ++v41;
    if (v48)
    {
      MEMORY[0x25303EA30]();
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();
      v52 = v53;
      v41 = v45;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_24E2776C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E23E0, &qword_24E372998);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_24E27772C(uint64_t *a1, _BYTE *a2)
{
  v3 = v2;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if (v6 >> 62)
  {
    if (v6 >> 62 != 1)
    {
      v7 = *&v2[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border];
      if (!*a2)
      {
        goto LABEL_11;
      }

LABEL_8:
      v8 = &v2[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style];
      [v7 setHidden_];
      [*&v3[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_gradient] setHidden_];
      goto LABEL_13;
    }
  }

  else
  {
    if (!*a2)
    {
      v7 = *&v2[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border];
LABEL_11:
      [v7 setHidden_];
      goto LABEL_12;
    }

    if (*a2 == 1)
    {
      v7 = *&v2[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border];
      goto LABEL_8;
    }
  }

  [*&v2[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border] setHidden_];
LABEL_12:
  [*&v2[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_gradient] setHidden_];
LABEL_13:
  *&v10 = v5;
  *(&v10 + 1) = v4;
  v11 = v6;
  sub_24E09B300(v5, v4, v6);
  AchievementBadge.status.setter(&v10);
  [v3 setNeedsDisplay];

  return [v3 setNeedsLayout];
}

id sub_24E277898(unint64_t a1)
{
  v3 = sub_24DFD8654();
  if (v3 >= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  if (v3 < 4)
  {

    goto LABEL_22;
  }

  sub_24E05F66C();
  sub_24E05F66C();
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_24DF88A8C(0, &qword_27F1DF028, 0x277D0C170);

    v5 = 0;
    do
    {
      v6 = v5 + 1;
      sub_24E3489E8();
      v5 = v6;
    }

    while (v4 != v6);
  }

  else
  {
  }

  if (a1 >> 62)
  {

    v8 = sub_24E348B38();
    v9 = v12;
    v7 = v13;
    v10 = v14;
    if ((v14 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
    v8 = a1 & 0xFFFFFFFFFFFFFF8;
    v9 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v10 = (2 * v4) | 1;
    if ((v10 & 1) == 0)
    {
LABEL_13:
      sub_24E09C650(v8, v9, v7, v10);
      a1 = v11;
      goto LABEL_21;
    }
  }

  sub_24E348C28();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v15 + 16);

  if (__OFSUB__(v10 >> 1, v7))
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v16 != (v10 >> 1) - v7)
  {
LABEL_26:
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  a1 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (a1)
  {
    goto LABEL_22;
  }

  a1 = MEMORY[0x277D84F90];
LABEL_21:
  swift_unknownObjectRelease();
LABEL_22:
  v17 = sub_24E30B234(a1);
  sub_24E16D6B0(v17);

  return [v1 setNeedsLayout];
}

uint64_t AchievementCard.model.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  OUTLINED_FUNCTION_9_1();
  return OUTLINED_FUNCTION_30_4();
}

uint64_t AchievementCard.alwaysShowShadow.getter()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_alwaysShowShadow;
  OUTLINED_FUNCTION_5_16(v0 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_alwaysShowShadow, v3);
  return *(v0 + v1);
}

uint64_t sub_24E277B40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_alwaysShowShadow;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id AchievementCard.alwaysShowShadow.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_alwaysShowShadow;
  OUTLINED_FUNCTION_30_13();
  swift_beginAccess();
  v1[v3] = a1;
  return [v1 setNeedsLayout];
}

uint64_t AchievementCard.alwaysShowShadow.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  OUTLINED_FUNCTION_9_1();
  return OUTLINED_FUNCTION_30_4();
}

id sub_24E277C40(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 setNeedsLayout];
  }

  return result;
}

uint64_t AchievementCard.backgroundEffectsGroup.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_31(a1);

  return OUTLINED_FUNCTION_1_19();
}

uint64_t sub_24E277CD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundEffectsGroup);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

id sub_24E277D2C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return AchievementCard.backgroundEffectsGroup.setter(v1, v2);
}

id AchievementCard.backgroundEffectsGroup.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_37_9(a1);
  *v2 = a1;
  v2[1] = a2;

  return sub_24E277DBC();
}

id sub_24E277DBC()
{
  v1 = &v0[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundEffectsGroup];
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  sub_24DFEB9A0(v3, v2);
  return [v0 setNeedsLayout];
}

uint64_t AchievementCard.backgroundEffectsGroup.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  OUTLINED_FUNCTION_9_1();
  return OUTLINED_FUNCTION_30_4();
}

uint64_t AchievementCard.wantsFixedContentSizeCategory.getter()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_wantsFixedContentSizeCategory;
  OUTLINED_FUNCTION_5_16(v0 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_wantsFixedContentSizeCategory, v3);
  return *(v0 + v1);
}

uint64_t sub_24E277EE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_wantsFixedContentSizeCategory;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

id AchievementCard.wantsFixedContentSizeCategory.setter(char a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_wantsFixedContentSizeCategory;
  OUTLINED_FUNCTION_30_13();
  swift_beginAccess();
  *(v1 + v3) = a1;
  return sub_24E277F88();
}

id sub_24E277F88()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_wantsFixedContentSizeCategory;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    v2 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    [v0 _setLocalOverrideTraitCollection_];
  }

  else
  {
    [v0 _setLocalOverrideTraitCollection_];
  }

  return [v0 setNeedsLayout];
}

uint64_t AchievementCard.wantsFixedContentSizeCategory.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  OUTLINED_FUNCTION_9_1();
  return OUTLINED_FUNCTION_30_4();
}

uint64_t AchievementCard.init(frame:)()
{
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  if (qword_27F1DDB60 != -1)
  {
    swift_once();
  }

  if (*&xmmword_27F1E9198 > v0 || GKIsXRUIIdiomShouldUsePhoneUI())
  {
    if (qword_27F1DDB70 != -1)
    {
      swift_once();
    }

    v2 = &xmmword_27F1E93B8;
  }

  else
  {
    v2 = &xmmword_27F1E9198;
  }

  sub_24DF89DB4(v2, v8);
  sub_24DF89DB4(v8, v7);
  if (qword_27F1DD8F0 != -1)
  {
    OUTLINED_FUNCTION_20_27(&qword_27F1DD8F0);
  }

  v3 = objc_allocWithZone(ObjectType);
  OUTLINED_FUNCTION_28();
  AchievementCard.init(frame:metrics:theme:)();
  v5 = v4;
  sub_24DF89DEC(v8);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

void AchievementCard.__allocating_init(frame:metrics:theme:)()
{
  OUTLINED_FUNCTION_29();
  v1 = objc_allocWithZone(v0);
  OUTLINED_FUNCTION_28();
  AchievementCard.init(frame:metrics:theme:)();
}

void AchievementCard.init(frame:metrics:theme:)()
{
  OUTLINED_FUNCTION_13_44();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_29();
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v7 - 8);
  v105 = &v99 - v8;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard____lazy_storage___highlightView) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_isHighlighted) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard____lazy_storage___focusBackgroundView) = 0;
  v9 = *v3;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_showsFocusedBackground) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_allowsFocusing) = 1;
  v10 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundView;
  type metadata accessor for BackgroundView();
  *(v1 + v10) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_gradient;
  *(v1 + v11) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v12 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v13 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_titleLabel;
  type metadata accessor for DynamicTypeLabel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_subtitleLabel;
  *(v1 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_friendsWhoAchievedThis;
  LOBYTE(v111[0]) = 1;
  v17 = objc_allocWithZone(type metadata accessor for OverlappingPlayersPhotoView());
  OUTLINED_FUNCTION_6_38();
  *(v1 + v16) = OverlappingPlayersPhotoView.init(frame:layoutStyle:enableKnockoutSpace:)(v111, 1);
  v18 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model;
  v19 = type metadata accessor for Achievement(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_alwaysShowShadow) = 0;
  v20 = (v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundEffectsGroup);
  *v20 = 0;
  v20[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_wantsFixedContentSizeCategory) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_tapGestureRecognizer) = 0;
  v21 = (v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_tapHandler);
  *v21 = 0;
  v21[1] = 0;
  v106 = v5;
  sub_24DF89DB4(v5, v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_metrics);
  if (v9 == 3)
  {
    if (qword_27F1DD8F0 != -1)
    {
      OUTLINED_FUNCTION_20_27(&qword_27F1DD8F0);
    }

    v9 = byte_27F20AFF8;
  }

  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_theme) = v9;
  v103 = v19;
  v107 = ObjectType;
  if (v9)
  {
    if (qword_27F1DD740 != -1)
    {
      swift_once();
    }

    v22 = &qword_27F20AC30;
  }

  else
  {
    if (qword_27F1DD738 != -1)
    {
      swift_once();
    }

    v22 = &qword_27F20ABB8;
  }

  memcpy(v111, v22, 0x78uLL);
  v23 = *&v111[7];
  v24 = BYTE9(v111[6]);
  v25 = BYTE8(v111[6]);
  v104 = *(&v111[5] + 8);
  v101 = *(&v111[3] + 8);
  v102 = *(&v111[4] + 8);
  v99 = v111[0];
  v100 = v111[1];
  v26 = v111[2];
  v27 = v111[3];
  sub_24E002674(v111, v110);
  v28 = v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style;
  v29 = v100;
  *v28 = v99;
  *(v28 + 16) = v29;
  *(v28 + 32) = v26;
  *(v28 + 48) = v27;
  v30 = v102;
  *(v28 + 56) = v101;
  *(v28 + 72) = v30;
  *(v28 + 88) = v104;
  *(v28 + 104) = v25;
  *(v28 + 105) = v24;
  *(v28 + 112) = v23;
  *&v30 = *(v106 + 120);
  v111[0] = *(v106 + 104);
  *&v111[1] = v30;
  v110[0] = v9;
  v31 = objc_allocWithZone(type metadata accessor for AchievementBadge());
  v32 = OUTLINED_FUNCTION_6_38();
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_badge) = sub_24E2C06F0(v111, v110, v32, v33, 0.0, 0.0);
  v108 = v1;
  v109 = v107;
  v34 = OUTLINED_FUNCTION_28();
  v37 = objc_msgSendSuper2(v35, v36, v34);
  v38 = objc_opt_self();
  v39 = v37;
  *&v101 = v38;
  v40 = [v38 clearColor];
  [v39 setBackgroundColor_];

  v41 = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundView];
  v42 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundView;
  *&v104 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundView;
  v43 = v41;
  sub_24DFEB9A0(0x6579614C656D6167, 0xEE0070756F724772);

  v44 = *&v39[v42];
  v107 = &v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style];
  v46 = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + 8];
  v47 = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + 16];
  v48 = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + 24];
  v49 = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + 32];
  v50 = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + 40];
  v51 = v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + 48];
  *&v111[0] = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style];
  v45 = *&v111[0];
  *(&v111[0] + 1) = v46;
  *&v111[1] = v47;
  *(&v111[1] + 1) = v48;
  *&v111[2] = v49;
  *(&v111[2] + 1) = v50;
  LOBYTE(v111[3]) = v51;
  v52 = v44;
  sub_24DFD7E3C(v45, v46, v47, v48, v49, v50, v51);
  sub_24DFEB8F4(v111);

  v53 = [*&v39[v104] layer];
  v54 = *MEMORY[0x277CDA138];
  [v53 setCornerCurve_];

  v55 = [v39 layer];
  [v55 &selRef:v54 setDisplayIndex:? + 7];

  v56 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_gradient;
  v57 = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_gradient];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D00, &qword_24E372B80);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_24E36A270;
  v59 = v107;
  v60 = *(v107 + 7);
  v61 = v57;
  v62 = [v60 CGColor];
  type metadata accessor for CGColor(0);
  v64 = v63;
  *(v58 + 56) = v63;
  *(v58 + 32) = v62;
  v65 = [v59[8] CGColor];
  *(v58 + 88) = v64;
  *(v58 + 64) = v65;
  sub_24E27B56C(v58, v61);

  [*&v39[v56] setCornerCurve_];
  if (*(v59 + 104) == 1)
  {
    [*&v39[v56] setCompositingFilter_];
  }

  *&v102 = v56;
  v66 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border;
  v67 = *&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border];
  v68 = [v101 clearColor];
  v69 = [v68 CGColor];

  [v67 setBackgroundColor_];
  [*&v39[v66] setCornerCurve_];
  v70 = v107;
  v71 = *(v107 + 9);
  v72 = *&v39[v66];
  v73 = [v71 CGColor];
  [v72 setBorderColor_];

  if (v70[104] == 1)
  {
    [*&v39[v66] setCompositingFilter_];
  }

  *&v101 = v66;
  v74 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_titleLabel;
  [*&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_titleLabel] setNumberOfLines_];
  v75 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_subtitleLabel;
  [*&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_subtitleLabel] setNumberOfLines_];
  v76 = *&v39[v74];
  v77 = &v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model];
  OUTLINED_FUNCTION_5_16(&v39[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model], v110);
  v78 = v103;
  if (__swift_getEnumTagSinglePayload(v77, 1, v103))
  {
    v79 = v76;
    v80 = 0;
  }

  else
  {
    v81 = v76;

    v80 = sub_24E347CB8();
    v70 = v107;
  }

  [v76 setText_];

  [*&v39[v74] setTextColor_];
  [*&v39[v74] setTextAlignment_];
  [*&v39[v74] setNumberOfLines_];
  v82 = qword_27F1DDB78;
  v83 = *&v39[v74];
  if (v82 != -1)
  {
    OUTLINED_FUNCTION_1_128(&qword_27F1DDB78);
  }

  v84 = sub_24E344158();
  __swift_project_value_buffer(v84, qword_27F20B2E8);
  OUTLINED_FUNCTION_22_0();
  *&v100 = *(v85 + 16);
  *&v99 = v85 + 16;
  (v100)(v105);
  OUTLINED_FUNCTION_44_8();

  v86 = *&v39[v75];
  if (__swift_getEnumTagSinglePayload(v77, 1, v78))
  {
    v87 = v86;
    v88 = 0;
  }

  else
  {
    v89 = v86;

    v88 = sub_24E347CB8();
    v70 = v107;
  }

  v90 = v101;
  [v86 setText_];

  [*&v39[v75] setTextColor_];
  [*&v39[v75] setTextAlignment_];
  [*&v39[v75] setNumberOfLines_];
  v91 = qword_27F1DDB80;
  v92 = *&v39[v75];
  if (v91 != -1)
  {
    OUTLINED_FUNCTION_0_164(&qword_27F1DDB80);
  }

  v93 = __swift_project_value_buffer(v84, qword_27F20B300);
  (v100)(v105, v93, v84);
  OUTLINED_FUNCTION_44_8();

  if (v70[104] == 1)
  {
    v94 = [*&v39[v75] layer];
    [v94 setCompositingFilter_];
  }

  OUTLINED_FUNCTION_39_8();
  v95 = [v39 layer];
  [v95 addSublayer_];

  v96 = [v39 layer];
  [v96 addSublayer_];

  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_39_8();
  OUTLINED_FUNCTION_39_8();
  *(&v111[1] + 1) = &type metadata for GKFeatureFlags;
  *&v111[2] = sub_24DFA0CB4();
  LOBYTE(v111[0]) = 12;
  LOBYTE(v96) = sub_24E3435A8();
  __swift_destroy_boxed_opaque_existential_1(v111);
  if (v96)
  {
    OUTLINED_FUNCTION_39_8();
  }

  v97 = GKIsRemoteUI();
  sub_24DF89DEC(v106);
  if ((v97 & 1) == 0)
  {
    v98 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_wantsFixedContentSizeCategory;
    swift_beginAccess();
    v39[v98] = 1;
  }

  OUTLINED_FUNCTION_12_37();
}

Swift::Void __swiftcall AchievementCard._dynamicUserInterfaceTraitDidChange()()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel__dynamicUserInterfaceTraitDidChange);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border];
  v2 = &v0[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style];
  v3 = [*&v0[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + 72] CGColor];
  [v1 setBorderColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D00, &qword_24E372B80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24E36A270;
  v5 = [v2[7] CGColor];
  type metadata accessor for CGColor(0);
  v7 = v6;
  *(v4 + 56) = v6;
  *(v4 + 32) = v5;
  v8 = [v2[8] CGColor];
  *(v4 + 88) = v7;
  *(v4 + 64) = v8;
  v9 = OUTLINED_FUNCTION_1_19();
  sub_24E27B56C(v9, v10);
}

void sub_24E278F68()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard____lazy_storage___highlightView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_isHighlighted) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard____lazy_storage___focusBackgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_showsFocusedBackground) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_allowsFocusing) = 1;
  v2 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundView;
  type metadata accessor for BackgroundView();
  *(v1 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_gradient;
  *(v1 + v3) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v4 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v5 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_titleLabel;
  type metadata accessor for DynamicTypeLabel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v5) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v7 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_subtitleLabel;
  *(v1 + v7) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v8 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_friendsWhoAchievedThis;
  v14 = 1;
  v9 = objc_allocWithZone(type metadata accessor for OverlappingPlayersPhotoView());
  OUTLINED_FUNCTION_6_38();
  *(v1 + v8) = OverlappingPlayersPhotoView.init(frame:layoutStyle:enableKnockoutSpace:)(&v14, 1);
  v10 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model;
  v11 = type metadata accessor for Achievement(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_alwaysShowShadow) = 0;
  v12 = (v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundEffectsGroup);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_wantsFixedContentSizeCategory) = 0;
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_tapGestureRecognizer) = 0;
  v13 = (v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_tapHandler);
  *v13 = 0;
  v13[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

Swift::Void __swiftcall AchievementCard.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v87 = v4;
  v88 = v3;
  MEMORY[0x28223BE20](*&v3);
  OUTLINED_FUNCTION_7_1();
  v86 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E23E0, &qword_24E372998);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v83 - v8;
  v85 = type metadata accessor for Achievement(0);
  OUTLINED_FUNCTION_22_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v84 = v12 - v11;
  v93.receiver = v1;
  v93.super_class = ObjectType;
  objc_msgSendSuper2(&v93, sel_layoutSubviews);
  v13 = [v1 layer];
  v14 = &v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_metrics];
  OUTLINED_FUNCTION_5_16(&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_metrics], v92);
  [v13 setCornerRadius_];

  v15 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_backgroundView];
  v16 = [v15 layer];
  v17 = OUTLINED_FUNCTION_41_11();
  [v18 v19];

  v20 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_gradient];
  v21 = OUTLINED_FUNCTION_41_11();
  [v20 v22];
  v23 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_border];
  v24 = OUTLINED_FUNCTION_41_11();
  [v23 v25];
  [v23 setBorderWidth_];
  v26 = sub_24E276C8C();
  v27 = [v26 layer];

  v28 = OUTLINED_FUNCTION_41_11();
  [v27 v29];

  [v1 bounds];
  v31 = v30;
  [v1 bounds];
  v33 = v32;
  v34 = OUTLINED_FUNCTION_21_29();
  [v15 v35];
  OUTLINED_FUNCTION_21_29();
  OUTLINED_FUNCTION_32_16();
  [v36 v37];
  OUTLINED_FUNCTION_21_29();
  OUTLINED_FUNCTION_32_16();
  [v38 v39];
  v40 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model;
  OUTLINED_FUNCTION_5_16(&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model], v91);
  v41 = &v1[v40];
  v42 = v85;
  sub_24DF8F3A8(v41, v9, &qword_27F1E23E0, &qword_24E372998);
  if (__swift_getEnumTagSinglePayload(v9, 1, v42) == 1)
  {
    sub_24E2776C4(v9);
  }

  else
  {
    v43 = v84;
    sub_24E27B630(v9, v84);
    v44 = 72;
    if (*(v43 + *(v42 + 44)))
    {
      v44 = 80;
    }

    v45 = [*&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + v44] CGColor];
    [v23 setBorderColor_];

    sub_24E250C9C(v43);
  }

  if ((v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_style + 105] & 1) != 0 || (v46 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_alwaysShowShadow, OUTLINED_FUNCTION_5_16(&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_alwaysShowShadow], v90), v1[v46] == 1))
  {
    objc_opt_self();
    OUTLINED_FUNCTION_6_38();
    OUTLINED_FUNCTION_32_16();
    v49 = [v47 v48];
    v50 = [v49 CGPath];

    v51 = OUTLINED_FUNCTION_43_9();
    [v51 setShadowPath_];

    v52 = OUTLINED_FUNCTION_43_9();
    LODWORD(v53) = 1047233823;
    [v52 setShadowOpacity_];

    v54 = OUTLINED_FUNCTION_43_9();
    [v54 setShadowOffset_];

    v55 = OUTLINED_FUNCTION_43_9();
    [v55 setShadowRadius_];
  }

  else
  {
    v56 = [v1 layer];
    [v56 setShadowPath_];

    v55 = [v1 layer];
    [v55 setShadowOpacity_];
  }

  OUTLINED_FUNCTION_21_29();
  OUTLINED_FUNCTION_32_16();
  [v57 v58];
  sub_24E2797E4(v89);
  OUTLINED_FUNCTION_6_38();
  v59 = v86;
  OUTLINED_FUNCTION_32_16();
  AchievementCardLayout.placeChildren(relativeTo:in:)(v1, v60, v61, v62, v63);
  (*(*&v87 + 8))(v59, COERCE_CGFLOAT(*&v88));
  v64 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_titleLabel];
  [v64 frame];
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v31;
  v73 = v72;
  v74 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_subtitleLabel];
  [v74 frame];
  v87 = v76;
  v88 = v75;
  v78 = v77;
  v80 = v79;
  v94.origin.x = v66;
  v94.origin.y = v68;
  v94.size.width = v70;
  v94.size.height = v73;
  MaxY = CGRectGetMaxY(v94);
  v95.origin.x = OUTLINED_FUNCTION_6_38();
  v95.size.width = v71;
  v95.size.height = v33;
  if (CGRectGetMaxY(v95) < MaxY)
  {
    [v64 frame];
    [v64 frame];
    [v64 setFrame_];
  }

  v96.origin.y = v87;
  v96.origin.x = v88;
  v96.size.width = v78;
  v96.size.height = v80;
  v82 = CGRectGetMaxY(v96);
  v97.origin.x = OUTLINED_FUNCTION_6_38();
  v97.size.width = v71;
  v97.size.height = v33;
  [v74 setHidden_];
  sub_24E27B5DC(v89);
}

void sub_24E2797E4(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_metrics;
  swift_beginAccess();
  sub_24DF89DB4(v1 + v3, v16);
  v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_badge);
  v5 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_titleLabel);
  v6 = type metadata accessor for DynamicTypeLabel(0);
  v7 = MEMORY[0x277D22A68];
  a1[8] = v6;
  a1[9] = v7;
  a1[5] = v5;
  v8 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_subtitleLabel);
  a1[13] = v6;
  a1[14] = v7;
  a1[10] = v8;
  v9 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_friendsWhoAchievedThis);
  v10 = type metadata accessor for OverlappingPlayersPhotoView();
  v11 = MEMORY[0x277D22A58];
  a1[18] = v10;
  a1[19] = v11;
  a1[15] = v9;
  sub_24DF89DB4(v16, (a1 + 20));
  type metadata accessor for AchievementBadge();
  v12 = v4;
  v13 = v5;
  v14 = v8;
  v15 = v9;
  sub_24E3440B8();
  sub_24DF89DEC(v16);
}

CGSize __swiftcall AchievementCard.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  sub_24E2797E4(v9);
  sub_24E27B694();
  v3 = sub_24E3440D8(width, height);
  v5 = v4;
  sub_24E27B5DC(v9);
  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

double AchievementCard.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_24E27B6E8(a2, a3, a1, v3);
}

uint64_t sub_24E279CE4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_model;
  OUTLINED_FUNCTION_5_16(v3, v7);
  v4 = type metadata accessor for Achievement(0);
  if (!__swift_getEnumTagSinglePayload(v3, 1, v4))
  {
    return sub_24DF8F3A8(v3 + *(v4 + 32), a1, &unk_27F1E5890, qword_24E377010);
  }

  v5 = sub_24E343368();
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v5);
}

uint64_t AchievementCard.tapHandler.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_31(a1);
  v1 = OUTLINED_FUNCTION_1_19();
  sub_24DE56C38(v1, v2);
  return OUTLINED_FUNCTION_1_19();
}

uint64_t sub_24E279E0C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC12GameCenterUI15AchievementCard_tapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_24DFA0D30;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_24DE56C38(v4, v5);
}

uint64_t sub_24E279EAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24DFA0D28;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24DE56C38(v1, v2);
  return AchievementCard.tapHandler.setter(v4, v3);
}

uint64_t AchievementCard.tapHandler.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_37_9(a1);
  v5 = *v2;
  v6 = v2[1];
  *v2 = a1;
  v2[1] = a2;
  sub_24DE56C38(a1, a2);
  sub_24DE73FA0(v5, v6);
  sub_24E279FB4();
  return sub_24DE73FA0(a1, a2);
}

void sub_24E279FB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_tapHandler;
  swift_beginAccess();
  v4 = OBJC_IVAR____TtC12GameCenterUI15AchievementCard_tapGestureRecognizer;
  v5 = *&v1[OBJC_IVAR____TtC12GameCenterUI15AchievementCard_tapGestureRecognizer];
  if (*&v1[v3])
  {
    if (v5)
    {
      return;
    }

    v12[3] = ObjectType;
    v12[0] = v1;
    v6 = objc_allocWithZone(MEMORY[0x277D75B80]);
    v7 = v1;
    v8 = sub_24E2BE570(v12, sel_didTap);
    [v8 setNumberOfTapsRequired_];
    v9 = *&v1[v4];
    *&v1[v4] = v8;
    v10 = v8;

    [v7 addGestureRecognizer_];
    [v7 setUserInteractionEnabled_];
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v10 = v5;
    [v1 removeGestureRecognizer_];
    v11 = *&v1[v4];
    *&v1[v4] = 0;

    [v1 setUserInteractionEnabled_];
  }
}

uint64_t AchievementCard.tapHandler.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_31_11(a1);
  OUTLINED_FUNCTION_9_1();
  return OUTLINED_FUNCTION_30_4();
}

uint64_t sub_24E27A15C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_24E27A1A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_3_31(a1);
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v1 + 8);

    v3(v5);
    return sub_24DE73FA0(v3, v4);
  }

  return result;
}

id AchievementCard.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

JUMeasurements __swiftcall AchievementCard.measure(toFit:with:)(CGSize toFit, UITraitCollection with)
{
  v4 = AchievementCard.sizeThatFits(_:)(toFit);
  height = v4.height;
  width = v4.width;
  v5 = 0.0;
  v6 = v4.height;
  result.var3 = v5;
  result.var2 = v6;
  result.var1 = height;
  result.var0 = width;
  return result;
}

uint64_t sub_24E27A3F8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E08452C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24E27A474(v6);
  return sub_24E348A58();
}

void sub_24E27A474(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_24E348B98();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_24E154E18(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_24E27A790(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_24E27A554(0, v3, 1, a1);
  }
}

void sub_24E27A554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_24E343368();
  MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v32 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v36 = (v10 + 8);
    v39 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v34 = v14;
      v35 = a3;
      v16 = *(v39 + 8 * a3);
      v33 = v15;
      v17 = v15;
      do
      {
        v18 = *v14;
        v19 = v16;
        v20 = v18;
        v21 = [v19 timestamp];
        if (!v21)
        {
          __break(1u);
LABEL_12:
          __break(1u);
LABEL_13:
          __break(1u);
          return;
        }

        v22 = v21;
        sub_24E343328();

        v23 = [v20 timestamp];
        if (!v23)
        {
          goto LABEL_12;
        }

        v24 = v23;
        v25 = v37;
        sub_24E343328();

        v40 = sub_24E3432F8();
        v26 = v17;
        v27 = *v36;
        v28 = v25;
        v29 = v38;
        (*v36)(v28, v38);
        v27(v12, v29);

        if ((v40 & 1) == 0)
        {
          break;
        }

        if (!v39)
        {
          goto LABEL_13;
        }

        v30 = *v14;
        v16 = *(v14 + 8);
        *v14 = v16;
        *(v14 + 8) = v30;
        v14 -= 8;
        ++v17;
      }

      while (v26 != -1);
      a3 = v35 + 1;
      v14 = v34 + 8;
      v15 = v33 - 1;
      if (v35 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }
}

void sub_24E27A790(void ***a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v134 = a1;
  v148 = sub_24E343368();
  MEMORY[0x28223BE20](v148);
  v145 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v131 - v8;
  MEMORY[0x28223BE20](v10);
  v138 = &v131 - v11;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v133 = &v131 - v14;
  MEMORY[0x28223BE20](v15);
  v142 = a3;
  v19 = a3[1];
  if (v19 >= 1)
  {
    v131 = a4;
    v132 = &v131 - v17;
    v137 = v18;
    v20 = 0;
    v147 = (v16 + 8);
    v21 = MEMORY[0x277D84F90];
    v22 = &selRef_setRequiresValidation_;
    while (1)
    {
      v23 = v20;
      v24 = v20 + 1;
      v135 = v23;
      if (v24 < v19)
      {
        v146 = v19;
        v25 = *v142;
        v144 = v24;
        v26 = *(v25 + 8 * v23);
        v27 = *(v25 + 8 * v24);
        v28 = v26;
        v29 = [v27 v22[459]];
        if (!v29)
        {
          goto LABEL_140;
        }

        v30 = v29;
        v31 = v23;
        v149 = v27;
        v32 = v132;
        sub_24E343328();

        v33 = [v28 v22[459]];
        if (!v33)
        {
          goto LABEL_141;
        }

        v34 = v33;
        v35 = v133;
        sub_24E343328();

        LODWORD(v141) = sub_24E3432F8();
        v36 = *v147;
        v37 = v35;
        v38 = v148;
        (*v147)(v37, v148);
        v139 = v36;
        (v36)(v32, v38);

        v136 = 8 * v31;
        a4 = v25 + 8 * v31 + 16;
        v39 = (v31 + 2);
        v24 = v144;
        v22 = &selRef_setRequiresValidation_;
        v40 = v146;
        v140 = v21;
        while (1)
        {
          v41 = v39;
          if (v24 + 1 >= v40)
          {
            break;
          }

          v144 = v24;
          v42 = *(a4 - 8);
          v43 = *a4;
          v44 = v42;
          v45 = [v43 v22[459]];
          if (!v45)
          {
            goto LABEL_135;
          }

          v46 = v45;
          v149 = v41;
          v47 = v137;
          sub_24E343328();

          v48 = [v44 v22[459]];
          if (!v48)
          {
            goto LABEL_134;
          }

          v49 = v48;
          v50 = v138;
          sub_24E343328();

          LODWORD(v49) = sub_24E3432F8() & 1;
          v51 = v50;
          v52 = v148;
          v53 = v139;
          (v139)(v51, v148);
          (v53)(v47, v52);

          a4 += 8;
          v24 = v144 + 1;
          v41 = v149;
          v39 = (v149 + 1);
          v22 = &selRef_setRequiresValidation_;
          v21 = v140;
          v40 = v146;
          if ((v141 & 1) != v49)
          {
            goto LABEL_13;
          }
        }

        v24 = v40;
LABEL_13:
        if (v141)
        {
          v54 = v135;
          if (v24 < v135)
          {
            goto LABEL_127;
          }

          if (v135 < v24)
          {
            if (v40 >= v41)
            {
              v55 = v41;
            }

            else
            {
              v55 = v40;
            }

            v56 = 8 * v55 - 8;
            v57 = v24;
            v58 = v136;
            do
            {
              if (v54 != --v57)
              {
                v59 = *v142;
                if (!*v142)
                {
                  goto LABEL_138;
                }

                v60 = *(v59 + v58);
                *(v59 + v58) = *(v59 + v56);
                *(v59 + v56) = v60;
              }

              ++v54;
              v56 -= 8;
              v58 += 8;
            }

            while (v54 < v57);
          }
        }
      }

      v61 = v142[1];
      if (v24 < v61)
      {
        if (__OFSUB__(v24, v135))
        {
          goto LABEL_126;
        }

        if (v24 - v135 < v131)
        {
          v62 = v131 + v135;
          if (__OFADD__(v135, v131))
          {
            goto LABEL_128;
          }

          if (v62 >= v61)
          {
            v62 = v142[1];
          }

          if (v62 >= v135)
          {
            if (v24 == v62)
            {
              goto LABEL_43;
            }

            v140 = v21;
            v146 = *v142;
            v63 = v146 + 8 * v24 - 8;
            v64 = (v135 - v24);
            v136 = v62;
LABEL_33:
            v144 = v24;
            v65 = *(v146 + 8 * v24);
            v139 = v64;
            v66 = v64;
            v141 = v63;
            while (1)
            {
              v67 = *v63;
              v68 = v65;
              v69 = v67;
              v70 = [v68 v22[459]];
              if (!v70)
              {
                goto LABEL_132;
              }

              v71 = v70;
              sub_24E343328();

              v72 = [v69 v22[459]];
              if (!v72)
              {
                break;
              }

              v73 = v72;
              v149 = v68;
              a4 = v66;
              v74 = v145;
              sub_24E343328();

              LOBYTE(v73) = sub_24E3432F8();
              v75 = *v147;
              v76 = v74;
              v77 = v148;
              (*v147)(v76, v148);
              v75(v9, v77);

              if ((v73 & 1) == 0)
              {
                v22 = &selRef_setRequiresValidation_;
LABEL_41:
                v24 = v144 + 1;
                v63 = v141 + 8;
                v64 = (v139 - 1);
                if (v144 + 1 == v136)
                {
                  v24 = v136;
                  v21 = v140;
                  goto LABEL_43;
                }

                goto LABEL_33;
              }

              if (!v146)
              {
                goto LABEL_133;
              }

              v78 = *v63;
              v65 = *(v63 + 8);
              *v63 = v65;
              *(v63 + 8) = v78;
              v63 -= 8;
              v66 = (v66 + 1);
              v22 = &selRef_setRequiresValidation_;
              if (a4 == -1)
              {
                goto LABEL_41;
              }
            }

            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

LABEL_129:
          __break(1u);
LABEL_130:
          v21 = sub_24E081A20(v21);
          goto LABEL_97;
        }
      }

LABEL_43:
      if (v24 < v135)
      {
        goto LABEL_125;
      }

      v144 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076FA4(0, *(v21 + 16) + 1, 1, v21);
        v21 = v121;
      }

      v80 = *(v21 + 16);
      v79 = *(v21 + 24);
      a4 = v80 + 1;
      v81 = v144;
      if (v80 >= v79 >> 1)
      {
        sub_24E076FA4(v79 > 1, v80 + 1, 1, v21);
        v81 = v144;
        v21 = v122;
      }

      *(v21 + 16) = a4;
      v82 = v21 + 32;
      v83 = (v21 + 32 + 16 * v80);
      *v83 = v135;
      v83[1] = v81;
      v149 = *v134;
      if (!v149)
      {
        goto LABEL_139;
      }

      if (v80)
      {
        break;
      }

LABEL_92:
      v19 = v142[1];
      v20 = v144;
      if (v144 >= v19)
      {
        goto LABEL_95;
      }
    }

    while (1)
    {
      v84 = a4 - 1;
      v85 = (v82 + 16 * (a4 - 1));
      v86 = (v21 + 16 * a4);
      if (a4 >= 4)
      {
        break;
      }

      if (a4 == 3)
      {
        v87 = *(v21 + 32);
        v88 = *(v21 + 40);
        v97 = __OFSUB__(v88, v87);
        v89 = v88 - v87;
        v90 = v97;
LABEL_63:
        if (v90)
        {
          goto LABEL_112;
        }

        v102 = *v86;
        v101 = v86[1];
        v103 = __OFSUB__(v101, v102);
        v104 = v101 - v102;
        v105 = v103;
        if (v103)
        {
          goto LABEL_115;
        }

        v106 = v85[1];
        v107 = v106 - *v85;
        if (__OFSUB__(v106, *v85))
        {
          goto LABEL_118;
        }

        if (__OFADD__(v104, v107))
        {
          goto LABEL_120;
        }

        if (v104 + v107 >= v89)
        {
          if (v89 < v107)
          {
            v84 = a4 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      if (a4 < 2)
      {
        goto LABEL_114;
      }

      v109 = *v86;
      v108 = v86[1];
      v97 = __OFSUB__(v108, v109);
      v104 = v108 - v109;
      v105 = v97;
LABEL_78:
      if (v105)
      {
        goto LABEL_117;
      }

      v111 = *v85;
      v110 = v85[1];
      v97 = __OFSUB__(v110, v111);
      v112 = v110 - v111;
      if (v97)
      {
        goto LABEL_119;
      }

      if (v112 < v104)
      {
        goto LABEL_92;
      }

LABEL_85:
      if (v84 - 1 >= a4)
      {
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
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
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
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      if (!*v142)
      {
        goto LABEL_136;
      }

      v116 = v21;
      a4 = v82 + 16 * (v84 - 1);
      v117 = *a4;
      v118 = v82 + 16 * v84;
      v21 = *(v118 + 8);
      v119 = v143;
      sub_24E27B114((*v142 + 8 * *a4), (*v142 + 8 * *v118), (*v142 + 8 * v21), v149);
      v143 = v119;
      if (v119)
      {
        goto LABEL_105;
      }

      if (v21 < v117)
      {
        goto LABEL_107;
      }

      v120 = *(v116 + 16);
      if (v84 > v120)
      {
        goto LABEL_108;
      }

      *a4 = v117;
      *(a4 + 8) = v21;
      if (v84 >= v120)
      {
        goto LABEL_109;
      }

      a4 = v120 - 1;
      sub_24E081A34((v118 + 16), v120 - 1 - v84, (v82 + 16 * v84));
      v21 = v116;
      *(v116 + 16) = v120 - 1;
      v22 = &selRef_setRequiresValidation_;
      if (v120 <= 2)
      {
        goto LABEL_92;
      }
    }

    v91 = v82 + 16 * a4;
    v92 = *(v91 - 64);
    v93 = *(v91 - 56);
    v97 = __OFSUB__(v93, v92);
    v94 = v93 - v92;
    if (v97)
    {
      goto LABEL_110;
    }

    v96 = *(v91 - 48);
    v95 = *(v91 - 40);
    v97 = __OFSUB__(v95, v96);
    v89 = v95 - v96;
    v90 = v97;
    if (v97)
    {
      goto LABEL_111;
    }

    v98 = v86[1];
    v99 = v98 - *v86;
    if (__OFSUB__(v98, *v86))
    {
      goto LABEL_113;
    }

    v97 = __OFADD__(v89, v99);
    v100 = v89 + v99;
    if (v97)
    {
      goto LABEL_116;
    }

    if (v100 >= v94)
    {
      v114 = *v85;
      v113 = v85[1];
      v97 = __OFSUB__(v113, v114);
      v115 = v113 - v114;
      if (v97)
      {
        goto LABEL_124;
      }

      if (v89 < v115)
      {
        v84 = a4 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_63;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_95:
  a4 = *v134;
  if (!*v134)
  {
LABEL_142:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_130;
  }

LABEL_97:
  v124 = (v21 + 16);
  v123 = *(v21 + 16);
  while (v123 >= 2)
  {
    if (!*v142)
    {
      goto LABEL_137;
    }

    v125 = v21;
    v21 += 16 * v123;
    v126 = *v21;
    v127 = &v124[2 * v123];
    v128 = *(v127 + 1);
    v129 = v143;
    sub_24E27B114((*v142 + 8 * *v21), (*v142 + 8 * *v127), (*v142 + 8 * v128), a4);
    v143 = v129;
    if (v129)
    {
      break;
    }

    if (v128 < v126)
    {
      goto LABEL_121;
    }

    if (v123 - 2 >= *v124)
    {
      goto LABEL_122;
    }

    *v21 = v126;
    *(v21 + 8) = v128;
    v130 = *v124 - v123;
    if (*v124 < v123)
    {
      goto LABEL_123;
    }

    v123 = *v124 - 1;
    sub_24E081A34(v127 + 16, v130, v127);
    *v124 = v123;
    v21 = v125;
  }

LABEL_105:
}

uint64_t sub_24E27B114(void **a1, void **a2, void **a3, void **a4)
{
  v63 = sub_24E343368();
  MEMORY[0x28223BE20](v63);
  v60 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v56 - v10;
  MEMORY[0x28223BE20](v12);
  v59 = &v56 - v13;
  MEMORY[0x28223BE20](v14);
  i = (&v56 - v15);
  v16 = a2 - a1;
  v62 = (v17 + 8);
  v18 = a3 - a2;
  if (v16 < v18)
  {
    sub_24E130EB0(a1, a2 - a1, a4);
    v19 = &a4[v16];
    v20 = &selRef_setRequiresValidation_;
    v64 = v19;
    v65 = a3;
    while (1)
    {
      if (a4 >= v19 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_31;
      }

      v22 = a1;
      v66 = a2;
      v23 = *a2;
      v24 = *a4;
      v25 = v23;
      v26 = v24;
      result = [v25 v20[459]];
      if (!result)
      {
        __break(1u);
        goto LABEL_39;
      }

      v28 = result;
      v29 = a4;
      v30 = i;
      sub_24E343328();

      result = [v26 v20[459]];
      if (!result)
      {
        goto LABEL_40;
      }

      v31 = result;
      v32 = v59;
      sub_24E343328();

      LOBYTE(v31) = sub_24E3432F8();
      v33 = *v62;
      v34 = v32;
      v35 = v63;
      (*v62)(v34, v63);
      v33(v30, v35);

      if ((v31 & 1) == 0)
      {
        break;
      }

      v36 = v66;
      a2 = v66 + 1;
      v37 = v22;
      if (v22 != v66)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 = v37 + 1;
      v19 = v64;
      a3 = v65;
      v20 = &selRef_setRequiresValidation_;
    }

    v36 = a4++;
    v37 = v22;
    a2 = v66;
    if (v22 == v29)
    {
      goto LABEL_14;
    }

LABEL_13:
    *v37 = *v36;
    goto LABEL_14;
  }

  sub_24E130EB0(a2, a3 - a2, a4);
  v19 = &a4[v18];
  v38 = &selRef_setRequiresValidation_;
  v57 = a4;
  v58 = a1;
LABEL_16:
  v39 = a2 - 1;
  v40 = a3 - 1;
  v66 = a2;
  for (i = a2 - 1; v19 > a4 && a2 > a1; v39 = i)
  {
    v65 = v40;
    v42 = v19 - 1;
    v43 = *v39;
    v44 = *(v19 - 1);
    v45 = v43;
    result = [v44 v38[459]];
    if (!result)
    {
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v46 = result;
    v64 = v19;
    sub_24E343328();

    result = [v45 v38[459]];
    if (!result)
    {
      goto LABEL_41;
    }

    v47 = result;
    v48 = v60;
    sub_24E343328();

    LOBYTE(v47) = sub_24E3432F8();
    v49 = *v62;
    v50 = v48;
    v51 = v63;
    (*v62)(v50, v63);
    v49(v11, v51);

    if (v47)
    {
      v19 = v64;
      a3 = v65;
      v53 = i;
      a2 = i;
      a4 = v57;
      a1 = v58;
      v38 = &selRef_setRequiresValidation_;
      if (v65 + 1 != v66)
      {
        *v65 = *i;
        a2 = v53;
      }

      goto LABEL_16;
    }

    v52 = v65;
    a4 = v57;
    if (v64 != v65 + 1)
    {
      *v65 = *v42;
    }

    v40 = v52 - 1;
    v19 = v42;
    a2 = v66;
    a1 = v58;
    v38 = &selRef_setRequiresValidation_;
  }

LABEL_31:
  v54 = v19 - a4;
  if (a2 != a4 || a2 >= &a4[v54])
  {
    memmove(a2, a4, 8 * v54);
  }

  return 1;
}

void sub_24E27B56C(uint64_t a1, void *a2)
{
  v3 = sub_24E347EE8();

  [a2 setColors_];
}

uint64_t sub_24E27B630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Achievement(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E27B694()
{
  result = qword_27F1E9540;
  if (!qword_27F1E9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9540);
  }

  return result;
}

double sub_24E27B6E8(double a1, double a2, uint64_t a3, uint64_t a4)
{
  sub_24E2797E4(v8);
  sub_24E27B694();
  v6 = sub_24E3440D8(a1, a2);
  sub_24E27B5DC(v8);
  return v6;
}

uint64_t type metadata accessor for AchievementCard(uint64_t a1)
{
  result = qword_280BE09D0;
  if (!qword_280BE09D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E27B7CC(uint64_t a1)
{
  sub_24E27B8F8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24E27B8F8(uint64_t a1)
{
  if (!qword_280BE0A68)
  {
    type metadata accessor for Achievement(255);
    v1 = sub_24E348698();
    if (!v2)
    {
      atomic_store(v1, &qword_280BE0A68);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_164(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_128(uint64_t a1)
{

  return swift_once();
}

uint64_t *OUTLINED_FUNCTION_18_38@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 296) = v1;
  *(v2 - 288) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 320));
}

uint64_t OUTLINED_FUNCTION_19_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_20_27(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_24_17(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_28_18()
{
  *(v2 - 136) = v0;
  *(v2 - 128) = v1;
  *(v2 - 160) = 0x4024000000000000;
}

uint64_t OUTLINED_FUNCTION_35_12(__n128 a1)
{
  v1[2] = a1;

  return sub_24DF88BF0((v2 - 160), &v1[3]);
}

uint64_t *OUTLINED_FUNCTION_36_12@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 280) = v1;
  *(v2 - 272) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v2 - 304));
}

uint64_t OUTLINED_FUNCTION_37_9(uint64_t a2, ...)
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_39_8()
{

  return [v1 (v0 + 2040)];
}

__n128 OUTLINED_FUNCTION_40_10@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  *(v1 - 320) = *a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_42_9(__int128 *a1)
{
  result = sub_24DF88BF0(a1, v1 + 224);
  *(v1 + 264) = 0x4028000000000000;
  return result;
}

id OUTLINED_FUNCTION_43_9()
{

  return [v0 (v1 + 2168)];
}

uint64_t OUTLINED_FUNCTION_44_8()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return sub_24E0AED24(v0);
}

uint64_t sub_24E27BC88(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v109 = sub_24E344048();
  OUTLINED_FUNCTION_0_14();
  v108 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v14 - v13);
  v107 = sub_24E3446A8();
  OUTLINED_FUNCTION_0_14();
  v106 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v18 - v17);
  v113 = sub_24E344658();
  OUTLINED_FUNCTION_0_14();
  v102 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v22 - v21);
  v114 = sub_24E3445E8();
  OUTLINED_FUNCTION_0_14();
  v117 = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v26 - v25);
  v99 = sub_24E344648();
  OUTLINED_FUNCTION_0_14();
  v97 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_5_11(v30 - v29);
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_7_1();
  v130.origin.x = a2;
  v130.origin.y = a3;
  v130.size.width = a4;
  v130.size.height = a5;
  CGRectGetMinX(v130);
  OUTLINED_FUNCTION_8_8((v5 + 424));
  sub_24E3440D8(a4, a5);
  OUTLINED_FUNCTION_15_37(v5);
  OUTLINED_FUNCTION_4_93();
  sub_24E344198();
  v34 = *(v32 + 8);
  v35 = OUTLINED_FUNCTION_31_9();
  v34(v35);
  v131.origin.x = a2;
  v131.origin.y = a3;
  v131.size.width = a4;
  v131.size.height = a5;
  CGRectGetMidY(v131);
  OUTLINED_FUNCTION_8_8((v5 + 424));
  sub_24E348508();
  OUTLINED_FUNCTION_25_22();
  OUTLINED_FUNCTION_15_37((v5 + 112));
  OUTLINED_FUNCTION_4_93();
  sub_24E344198();
  v36 = OUTLINED_FUNCTION_6_85();
  v34(v36);
  v132.size.width = a4;
  v38 = *(v5 + 80);
  v37 = *(v5 + 88);
  v119 = a2;
  v132.origin.x = a2;
  v132.origin.y = a3;
  width = v132.size.width;
  v132.size.height = a5;
  MaxX = CGRectGetMaxX(v132);
  v41 = *(v5 + 416);
  v42 = MaxX - v38 - v41;
  v133.origin.x = v119;
  v133.origin.y = a3;
  v133.size.width = width;
  v133.size.height = a5;
  v43 = CGRectGetMidY(v133) - v37 * 0.5;
  v134.origin.x = v42;
  v134.origin.y = v43;
  v134.size.width = v38;
  v134.size.height = v37;
  v111 = v41;
  v44 = v41 + CGRectGetWidth(v134);
  OUTLINED_FUNCTION_15_37((v5 + 352));
  OUTLINED_FUNCTION_4_93();
  sub_24E344198();
  v45 = OUTLINED_FUNCTION_31_9();
  v34(v45);
  v46 = a5;
  OUTLINED_FUNCTION_16_39();
  OUTLINED_FUNCTION_8_8((v5 + 704));
  OUTLINED_FUNCTION_19_30();
  v47 = width;
  v48 = v46;
  v112 = v38;
  sub_24E348508();
  OUTLINED_FUNCTION_25_22();
  sub_24DF8F3A8(v5 + 464, &v124, &qword_27F1DEE30, &qword_24E369B60);
  v115 = v46;
  v110 = v47;
  if (*(&v125 + 1))
  {
    sub_24DE56CE8(&v124, &v127);
    sub_24DF8F3A8(v5 + 664, &v121, &qword_27F1DF0C0, &unk_24E36B630);
    if (v122)
    {
      sub_24DE56CE8(&v121, &v124);
      OUTLINED_FUNCTION_8_8(&v124);
      v49 = OUTLINED_FUNCTION_17_37();
      OUTLINED_FUNCTION_14_40();
      OUTLINED_FUNCTION_23_28();
      v50 = CGRectGetMaxX(v135);
      OUTLINED_FUNCTION_20_28(v50);
      *&v121 = *(v5 + 408);
      v51 = v121;
      sub_24E343F98();
      OUTLINED_FUNCTION_4_93();
      sub_24E344198();
      v52 = OUTLINED_FUNCTION_31_9();
      v34(v52);
      OUTLINED_FUNCTION_23_28();
      v44 = v47;
      CGRectGetMidY(v136);
      *&v121 = v51;
      sub_24E343F98();
      OUTLINED_FUNCTION_4_93();
      sub_24E344198();
      v53 = OUTLINED_FUNCTION_6_85();
      v34(v53);
      sub_24DF8F3A8(v5 + 664, &v121, &qword_27F1DF0C0, &unk_24E36B630);
      if (v122)
      {
        v54 = OUTLINED_FUNCTION_8_75();
        OUTLINED_FUNCTION_12_45(v54 - v49);
        OUTLINED_FUNCTION_8_8(&v121);
        OUTLINED_FUNCTION_32_16();
        sub_24E348508();
        sub_24E344088();
        __swift_destroy_boxed_opaque_existential_1(&v121);
      }

      else
      {
        sub_24DF8F34C(&v121, &qword_27F1DF0C0, &unk_24E36B630);
      }

      __swift_destroy_boxed_opaque_existential_1(&v124);
      v48 = v46;
      OUTLINED_FUNCTION_16_39();
    }

    else
    {
      sub_24DF8F34C(&v121, &qword_27F1DF0C0, &unk_24E36B630);
    }

    OUTLINED_FUNCTION_8_8(&v127);
    v55 = OUTLINED_FUNCTION_17_37();
    OUTLINED_FUNCTION_14_40();
    OUTLINED_FUNCTION_23_28();
    v56 = CGRectGetMaxX(v137);
    OUTLINED_FUNCTION_20_28(v56);
    v57 = *(v5 + 408);
    *&v124 = v57;
    sub_24E343F98();
    OUTLINED_FUNCTION_10_58();
    sub_24E344198();
    v58 = v44;
    v44 = v47;
    v60 = v59;
    v61 = OUTLINED_FUNCTION_31_9();
    v34(v61);
    OUTLINED_FUNCTION_23_28();
    CGRectGetMidY(v138);
    sub_24DF8F3A8(v5 + 664, &v121, &qword_27F1DF0C0, &unk_24E36B630);
    if (v122)
    {
      sub_24DE56CE8(&v121, &v124);
      OUTLINED_FUNCTION_32_16();
      v62 = CGRectGetMaxX(v139) - v112 - v55 + -4.0;
      __swift_project_boxed_opaque_existential_1(&v124, *(&v125 + 1));
      sub_24E344078();
      v63 = v47;
      v64 = v48;
      v65 = v62 - CGRectGetWidth(v140) - v111;
      *&v121 = v57;
      sub_24E343F98();
      OUTLINED_FUNCTION_10_58();
      sub_24E344198();
      v66 = OUTLINED_FUNCTION_6_85();
      v34(v66);
      OUTLINED_FUNCTION_20_28(v65 - v62);
      v141.origin.x = v58;
      v141.origin.y = v44;
      v141.size.width = v63;
      v141.size.height = v64;
      CGRectGetMidY(v141);
      __swift_destroy_boxed_opaque_existential_1(&v124);
    }

    else
    {
      v67 = OUTLINED_FUNCTION_8_75();
      v68 = OUTLINED_FUNCTION_12_45(v67 - v55);
      OUTLINED_FUNCTION_20_28(v68 - v60);
      sub_24DF8F34C(&v121, &qword_27F1DF0C0, &unk_24E36B630);
    }

    *&v124 = v57;
    sub_24E343F98();
    OUTLINED_FUNCTION_10_58();
    sub_24E344198();
    v69 = OUTLINED_FUNCTION_6_85();
    v34(v69);
    sub_24DF8F3A8(v5 + 464, &v124, &qword_27F1DEE30, &qword_24E369B60);
    if (*(&v125 + 1))
    {
      OUTLINED_FUNCTION_8_8(&v124);
      OUTLINED_FUNCTION_16_39();
      OUTLINED_FUNCTION_19_30();
      v47 = v110;
      sub_24E348508();
      OUTLINED_FUNCTION_25_22();
      __swift_destroy_boxed_opaque_existential_1(&v124);
    }

    else
    {
      sub_24DF8F34C(&v124, &qword_27F1DEE30, &qword_24E369B60);
      v47 = v110;
      OUTLINED_FUNCTION_16_39();
    }

    OUTLINED_FUNCTION_21_30();
    __swift_destroy_boxed_opaque_existential_1(&v127);
    v48 = v115;
  }

  else
  {
    sub_24DF8F34C(&v124, &qword_27F1DEE30, &qword_24E369B60);
    OUTLINED_FUNCTION_21_30();
  }

  sub_24DF8F3A8(v5 + 504, &v127, &qword_27F1DEE30, &qword_24E369B60);
  v70 = v128;
  sub_24DF8F34C(&v127, &qword_27F1DEE30, &qword_24E369B60);
  if (v70)
  {
    v71 = *(v5 + 96);
    OUTLINED_FUNCTION_32_16();
    v72 = CGRectGetMaxX(v142);
    OUTLINED_FUNCTION_20_28(v72);
    v127 = *(v5 + 408);
    v73 = v127;
    sub_24E343F98();
    OUTLINED_FUNCTION_4_93();
    sub_24E344198();
    v74 = OUTLINED_FUNCTION_31_9();
    v34(v74);
    OUTLINED_FUNCTION_32_16();
    CGRectGetMidY(v143);
    v127 = v73;
    sub_24E343F98();
    OUTLINED_FUNCTION_4_93();
    sub_24E344198();
    v75 = OUTLINED_FUNCTION_6_85();
    v34(v75);
    sub_24DF8F3A8(v5 + 504, &v127, &qword_27F1DEE30, &qword_24E369B60);
    if (v128)
    {
      v76 = OUTLINED_FUNCTION_8_75();
      OUTLINED_FUNCTION_12_45(v76 - v71);
      OUTLINED_FUNCTION_8_8(&v127);
      OUTLINED_FUNCTION_32_16();
      sub_24E348508();
      OUTLINED_FUNCTION_25_22();
      __swift_destroy_boxed_opaque_existential_1(&v127);
    }

    else
    {
      sub_24DF8F34C(&v127, &qword_27F1DEE30, &qword_24E369B60);
    }

    OUTLINED_FUNCTION_21_30();
  }

  sub_24DF8F3A8(v5 + 624, &v124, &qword_27F1DF0C0, &unk_24E36B630);
  if (*(&v125 + 1))
  {
    sub_24DE56CE8(&v124, &v127);
    OUTLINED_FUNCTION_8_8(&v127);
    OUTLINED_FUNCTION_17_37();
    OUTLINED_FUNCTION_16_39();
    OUTLINED_FUNCTION_14_40();
    v144.size.width = v47;
    v144.size.height = v48;
    v77 = CGRectGetMaxX(v144);
    v78 = *(v5 + 408);
    v145.origin.x = v44;
    v145.origin.y = v47;
    v145.size.width = v47;
    v145.size.height = v48;
    CGRectGetMidY(v145);
    *&v124 = v78;
    sub_24E343F98();
    OUTLINED_FUNCTION_10_58();
    sub_24E344198();
    v79 = OUTLINED_FUNCTION_6_85();
    v34(v79);
    sub_24DF8F3A8(v5 + 624, &v124, &qword_27F1DF0C0, &unk_24E36B630);
    if (*(&v125 + 1))
    {
      OUTLINED_FUNCTION_12_45(v77 - v112);
      OUTLINED_FUNCTION_8_8(&v124);
      OUTLINED_FUNCTION_19_30();
      OUTLINED_FUNCTION_32_16();
      sub_24E348508();
      sub_24E344088();
      __swift_destroy_boxed_opaque_existential_1(&v124);
    }

    else
    {
      sub_24DF8F34C(&v124, &qword_27F1DF0C0, &unk_24E36B630);
    }

    OUTLINED_FUNCTION_21_30();
    __swift_destroy_boxed_opaque_existential_1(&v127);
    v48 = v115;
    v80 = v110;
    OUTLINED_FUNCTION_16_39();
  }

  else
  {
    sub_24DF8F34C(&v124, &qword_27F1DF0C0, &unk_24E36B630);
    OUTLINED_FUNCTION_16_39();
    v80 = v47;
  }

  *&v121 = MEMORY[0x277D84F90];
  v81 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5D10, &unk_24E369B80);
  sub_24E344688();
  v116 = swift_allocObject();
  *(v116 + 16) = xmmword_24E36A270;
  v82 = *(v5 + 568);
  v83 = *(v5 + 576);
  OUTLINED_FUNCTION_8_8((v5 + 544));
  v128 = v82;
  v129 = *(v83 + 8);
  __swift_allocate_boxed_opaque_existential_1(&v127);
  OUTLINED_FUNCTION_22_0();
  (*(v84 + 16))();
  v126 = 0;
  v124 = 0u;
  v125 = 0u;
  v123 = v81;
  sub_24DF8A8A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE40, &unk_24E369B90);
  sub_24DF8A8FC();
  sub_24E3487E8();
  v95 = *MEMORY[0x277D227C8];
  v94 = *(v117 + 104);
  v94();
  v92 = *MEMORY[0x277D227F0];
  v93 = *(v102 + 104);
  v93();
  sub_24E344678();
  v103 = *(v102 + 8);
  v103(v101, v113);
  v118 = (v117 + 8);
  v91 = *v118;
  (*v118)(v100, v114);
  v98 = *(v97 + 8);
  v98(v96, v99);
  sub_24DF8F34C(&v124, &qword_27F1DEE48, qword_24E36BF40);
  __swift_destroy_boxed_opaque_existential_1(&v127);
  v85 = v5;
  v86 = *(v5 + 608);
  v87 = *(v6 + 616);
  v88 = v85;
  __swift_project_boxed_opaque_existential_1((v85 + 584), v86);
  v128 = v86;
  v129 = *(v87 + 8);
  __swift_allocate_boxed_opaque_existential_1(&v127);
  OUTLINED_FUNCTION_22_0();
  (*(v89 + 16))();
  sub_24DF89628(v88 + 312, &v124);
  v123 = MEMORY[0x277D84F90];
  sub_24E3487E8();
  (v94)(v100, v95, v114);
  (v93)(v101, v92, v113);
  sub_24E344678();
  v103(v101, v113);
  v91(v100, v114);
  v98(v96, v99);
  sub_24DF8F34C(&v124, &qword_27F1DEE48, qword_24E36BF40);
  __swift_destroy_boxed_opaque_existential_1(&v127);
  sub_24E26C574(v116);
  sub_24E344668();
  OUTLINED_FUNCTION_14_40();
  v146.size.width = v80;
  v146.size.height = v48;
  CGRectGetMinY(v146);
  v147.origin.x = OUTLINED_FUNCTION_13_50();
  CGRectGetHeight(v147);
  OUTLINED_FUNCTION_13_50();
  sub_24E348508();
  sub_24E344608();
  (*(v108 + 8))(v105, v109);
  OUTLINED_FUNCTION_13_50();
  sub_24E343FD8();
  return (*(v106 + 8))(v104, v107);
}

double sub_24E27D040(void *a1, double a2)
{
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_0_16(a1 + 19);
  OUTLINED_FUNCTION_6_17();
  sub_24E344198();
  v7 = *(v5 + 8);
  v8 = OUTLINED_FUNCTION_11_45();
  v7(v8);
  OUTLINED_FUNCTION_0_16(a1 + 24);
  OUTLINED_FUNCTION_6_17();
  sub_24E344198();
  v9 = OUTLINED_FUNCTION_11_45();
  v7(v9);
  __swift_project_boxed_opaque_existential_1(a1 + 39, a1[42]);
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_6_17();
  sub_24E344198();
  v10 = OUTLINED_FUNCTION_11_45();
  v7(v10);
  return a2;
}

double sub_24E27D1A8(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  return sub_24E27D228(a1, v3, a2);
}

double sub_24E27D228(uint64_t a1, void *a2, double a3)
{
  sub_24E348BC8();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  sub_24E343F98();
  sub_24E344198();
  v8 = *(v6 + 8);
  v9 = OUTLINED_FUNCTION_11_45();
  v8(v9);
  OUTLINED_FUNCTION_0_16(a2 + 5);
  OUTLINED_FUNCTION_6_17();
  sub_24E344198();
  v10 = OUTLINED_FUNCTION_11_45();
  v8(v10);
  OUTLINED_FUNCTION_0_16(a2);
  OUTLINED_FUNCTION_6_17();
  sub_24E344198();
  v11 = OUTLINED_FUNCTION_11_45();
  v8(v11);
  OUTLINED_FUNCTION_0_16(a2 + 24);
  OUTLINED_FUNCTION_6_17();
  sub_24E344198();
  v12 = OUTLINED_FUNCTION_11_45();
  v8(v12);
  OUTLINED_FUNCTION_0_16(a2 + 39);
  OUTLINED_FUNCTION_6_17();
  sub_24E344198();
  v13 = OUTLINED_FUNCTION_11_45();
  v8(v13);
  __swift_project_boxed_opaque_existential_1(a2 + 19, a2[22]);
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_6_17();
  sub_24E344198();
  v14 = OUTLINED_FUNCTION_11_45();
  v8(v14);
  return a3;
}

uint64_t sub_24E27D440(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 744))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E27D480(uint64_t result, int a2, int a3)
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
    *(result + 712) = 0u;
    *(result + 728) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
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
      *(result + 744) = 1;
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

    *(result + 744) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24E27D598(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 424))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E27D5D8(uint64_t result, int a2, int a3)
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
    *(result + 392) = 0u;
    *(result + 408) = 0u;
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
      *(result + 424) = 1;
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

    *(result + 424) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24E27D698()
{
  result = qword_27F1E9548;
  if (!qword_27F1E9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9548);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_37(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_24E2548A0(v1, v2);
}

double OUTLINED_FUNCTION_17_37()
{

  return sub_24E3440D8(v1, v2);
}

uint64_t OUTLINED_FUNCTION_24_18()
{

  return sub_24E2548A0(v0, v1);
}

double OUTLINED_FUNCTION_25_22()
{

  sub_24E344088();
  return result;
}

uint64_t sub_24E27D878(void *a1, void *a2)
{
  sub_24DF88A8C(0, &qword_27F1E2630, 0x277D82BB8);
  if ((sub_24E348628() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v5 = OUTLINED_FUNCTION_15_38(v4[6]);
  if ((MEMORY[0x25303ACA0](v5) & 1) == 0)
  {
    return 0;
  }

  v6 = OUTLINED_FUNCTION_15_38(v4[7]);
  if ((MEMORY[0x25303B010](v6) & 1) == 0)
  {
    return 0;
  }

  v7 = OUTLINED_FUNCTION_15_38(v4[8]);
  if ((MEMORY[0x25303B010](v7) & 1) == 0)
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a2[2];
  result = (v8 | v9) == 0;
  if (v8 && v9)
  {
    if (a1[1] == a2[1] && v8 == v9)
    {
      return 1;
    }

    else
    {

      return sub_24E348C08();
    }
  }

  return result;
}

uint64_t sub_24E27D96C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v6 = v5[7];
  v7 = sub_24E3444F8();
  v8 = MEMORY[0x277D22798];
  v19[3] = v7;
  v19[4] = MEMORY[0x277D22798];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  v10 = *(*(v7 - 8) + 16);
  v10(boxed_opaque_existential_1, v2 + v6, v7);
  v11 = v5[8];
  v18[3] = v7;
  v18[4] = v8;
  v12 = __swift_allocate_boxed_opaque_existential_1(v18);
  v10(v12, v2 + v11, v7);
  v13 = v5[9];
  v17[3] = v7;
  v17[4] = v8;
  v14 = __swift_allocate_boxed_opaque_existential_1(v17);
  v10(v14, v2 + v13, v7);
  sub_24DF89628(a1, v16);
  sub_24DF89628(v19, a2 + 40);
  sub_24DF89628(v18, a2 + 80);
  sub_24DF89628(v17, a2 + 120);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_24E344328();
  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v17);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_24E27DADC(void *a1, void *a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9550, &qword_24E389900);
  OUTLINED_FUNCTION_4_5(v9);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v12 = (&v37 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9568, &qword_24E389AF0);
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  sub_24DF88A8C(0, &qword_27F1E2630, 0x277D82BB8);
  if ((sub_24E348628() & 1) == 0)
  {
    goto LABEL_37;
  }

  v17 = OUTLINED_FUNCTION_15_38(v4[6]);
  if ((MEMORY[0x25303ACA0](v17) & 1) == 0)
  {
    goto LABEL_37;
  }

  v18 = OUTLINED_FUNCTION_15_38(v4[7]);
  if ((MEMORY[0x25303B010](v18) & 1) == 0)
  {
    goto LABEL_37;
  }

  v19 = OUTLINED_FUNCTION_15_38(v4[8]);
  if ((MEMORY[0x25303B010](v19) & 1) == 0)
  {
    goto LABEL_37;
  }

  v20 = a1[2];
  v21 = a2[2];
  if (v20)
  {
    if (!v21)
    {
      goto LABEL_37;
    }

    v22 = a1[1] == a2[1] && v20 == v21;
    if (!v22 && (sub_24E348C08() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (v21)
  {
    goto LABEL_37;
  }

  v38 = type metadata accessor for TitleHeaderView.Style(0);
  v23 = *(v38 + 20);
  v24 = *(v13 + 48);
  sub_24E0E8958(a1 + v23, v16, &qword_27F1E9550, &qword_24E389900);
  sub_24E0E8958(a2 + v23, &v16[v24], &qword_27F1E9550, &qword_24E389900);
  OUTLINED_FUNCTION_32_17(v16);
  if (v22)
  {
    OUTLINED_FUNCTION_32_17(&v16[v24]);
    if (v22)
    {
      sub_24DF8BFF4(v16, &qword_27F1E9550, &qword_24E389900);
      goto LABEL_24;
    }

LABEL_22:
    sub_24DF8BFF4(v16, &qword_27F1E9568, &qword_24E389AF0);
    goto LABEL_37;
  }

  sub_24E0E8958(v16, v12, &qword_27F1E9550, &qword_24E389900);
  OUTLINED_FUNCTION_32_17(&v16[v24]);
  if (v25)
  {
    OUTLINED_FUNCTION_0_165();
    sub_24E282A50(v12, v26);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_1_129();
  sub_24E282AA8(&v16[v24], v8);
  v27 = sub_24E27D878(v12, v8);
  sub_24E282A50(v8, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_24E282A50(v12, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_24DF8BFF4(v16, &qword_27F1E9550, &qword_24E389900);
  if ((v27 & 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_24:
  v28 = v38;
  OUTLINED_FUNCTION_9_59();
  if (!v22)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_9_59();
  if (!v22)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_9_59();
  if (!v22)
  {
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_9_59();
  if (!v22)
  {
    goto LABEL_37;
  }

  v29 = *(v28 + 44);
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30)
  {
    if (v31)
    {
      sub_24DF88A8C(0, &qword_27F1E5FD0, 0x277D75348);
      v32 = v31;
      v33 = v30;
      v34 = sub_24E348628();

      if (v34)
      {
        goto LABEL_35;
      }
    }

LABEL_37:
    v35 = 0;
    return v35 & 1;
  }

  if (v31)
  {
    goto LABEL_37;
  }

LABEL_35:
  v35 = sub_24E348628();
  return v35 & 1;
}

uint64_t sub_24E27DE74(uint64_t a1, uint64_t a2)
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v3 = 0.0;
  if (result)
  {
    v3 = 12.0;
  }

  qword_27F20B320 = *&v3;
  return result;
}

uint64_t sub_24E27DEA4(uint64_t a1, uint64_t a2)
{
  result = GKIsXRUIIdiomShouldUsePadUI();
  v3 = 32.0;
  if (!result)
  {
    v3 = 24.0;
  }

  *&xmmword_27F20B330 = v3;
  *(&xmmword_27F20B330 + 1) = v3;
  return result;
}

void sub_24E27DEDC()
{
  OUTLINED_FUNCTION_44();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  OUTLINED_FUNCTION_4_5(v10);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17_9();
  *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel] = 0;
  sub_24E0AC29C(&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style]);
  *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView] = 0;
  *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView] = 0;
  *&v12 = OUTLINED_FUNCTION_11_31(OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessory);
  v13 = &v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryAction];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_separatorInset];
  v15 = *MEMORY[0x277D768C8];
  v16 = *(MEMORY[0x277D768C8] + 8);
  v17 = *(MEMORY[0x277D768C8] + 16);
  v18 = *(MEMORY[0x277D768C8] + 24);
  *v14 = *MEMORY[0x277D768C8];
  v14[1] = v16;
  v14[2] = v17;
  v14[3] = v18;
  v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_allowsAccessibilityLayouts] = 1;
  v19 = &v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_avoidanceRegion];
  *v19 = v12;
  *(v19 + 1) = v12;
  v19[32] = 1;
  v20 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel(0));
  *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel] = OUTLINED_FUNCTION_4_50(v20, sel_initWithFrame_);
  *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_separatorLineView] = OUTLINED_FUNCTION_4_50(objc_allocWithZone(MEMORY[0x277D75D18]), sel_initWithFrame_);
  v44.receiver = v0;
  v44.super_class = type metadata accessor for TitleHeaderView(0);
  v21 = objc_msgSendSuper2(&v44, sel_initWithFrame_, v9, v7, v5, v3);
  v22 = [v21 layer];
  [v22 setAllowsGroupOpacity_];

  [v21 setLayoutMargins_];
  [v21 setEdgesInsettingLayoutMarginsFromSafeArea_];

  v23 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_separatorLineView;
  v24 = qword_27F1DE118;
  v25 = *&v21[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_separatorLineView];
  if (v24 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for PlayerCardTheme(0);
  [v25 setBackgroundColor_];

  [v21 addSubview_];
  v27 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel;
  v28 = *&v21[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel];
  v29 = &v21[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style];
  OUTLINED_FUNCTION_5_16(&v21[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style], &v43);
  [v28 setTextColor_];
  v30 = *&v21[v27];
  v31 = *(type metadata accessor for TitleHeaderView.TextConfiguration(0) + 24);
  v32 = sub_24E344158();
  OUTLINED_FUNCTION_5_2();
  (*(v33 + 16))(v1, &v29[v31], v32);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v32);
  v34 = v30;
  sub_24E0AED24(v1);

  v35 = *&v21[v27];
  v35[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_wantsFastBaselineMeasurement] = 1;
  v36 = v35;
  sub_24E0AFA60();

  v37 = [*&v21[v27] layer];
  if (*(v29 + 2))
  {

    v38 = sub_24E347CB8();
  }

  else
  {
    v38 = 0;
  }

  [v37 setCompositingFilter_];

  swift_unknownObjectRelease();
  v39 = *&v21[v27];
  sub_24E0AEE20(1);

  [v21 addSubview_];
  [*&v21[v27] setIsAccessibilityElement_];
  sub_24DFD8050(0xD000000000000033, 0x800000024E3AFEF0, *&v21[v27]);
  v40 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel;
  v41 = *&v21[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel];
  if (v41)
  {
    [v41 setIsAccessibilityElement_];
    v42 = *&v21[v40];
    if (v42)
    {
      sub_24DFD8050(0xD000000000000036, 0x800000024E3AFF30, v42);
    }
  }

  sub_24E27FF38();

  OUTLINED_FUNCTION_45();
}

void sub_24E27E364()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel) = 0;
  sub_24E0AC29C((v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style));
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView) = 0;
  *&v1 = OUTLINED_FUNCTION_11_31(OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessory);
  v2 = (v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryAction);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_separatorInset);
  v4 = *(MEMORY[0x277D768C8] + 16);
  *v3 = *MEMORY[0x277D768C8];
  v3[1] = v4;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_allowsAccessibilityLayouts) = 1;
  v5 = v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_avoidanceRegion;
  *v5 = v1;
  *(v5 + 16) = v1;
  *(v5 + 32) = 1;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E27E47C()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel];
  if (v1)
  {
    v2 = v1;
    sub_24E0AEE20(1);
    [v0 addSubview_];
  }
}

id sub_24E27E524(void *a1)
{
  v3 = type metadata accessor for TitleHeaderView.Style(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style;
  swift_beginAccess();
  sub_24E282B00(v1 + v6, v5);
  LOBYTE(a1) = sub_24E27DADC(v5, a1);
  result = sub_24E282A50(v5, type metadata accessor for TitleHeaderView.Style);
  if ((a1 & 1) == 0)
  {
    return sub_24E27FF38();
  }

  return result;
}

uint64_t sub_24E27E608(uint64_t a1)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  v5 = OUTLINED_FUNCTION_4_5(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_9();
  v6 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style;
  OUTLINED_FUNCTION_5_16(v1 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style, v8);
  OUTLINED_FUNCTION_6_86();
  sub_24E282B00(v1 + v6, v2);
  swift_beginAccess();
  sub_24E282B58(a1, v1 + v6);
  swift_endAccess();
  sub_24E27E524(v2);
  sub_24E282A50(a1, type metadata accessor for TitleHeaderView.Style);
  return sub_24E282A50(v2, type metadata accessor for TitleHeaderView.Style);
}

void sub_24E27E748(void *a1)
{
  sub_24E27E7B0();
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView) = a1;
  v4 = a1;

  sub_24E27E84C();
}

void sub_24E27E7B0()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView;
  if (*(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView))
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 removeTarget:v0 action:sel_didTapWithAccessoryView_ forControlEvents:0x2000];
    }

    v3 = *(v0 + v1);
    if (v3)
    {

      [v3 removeFromSuperview];
    }
  }
}

void sub_24E27E84C()
{
  v5 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView];
  if (v5)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = v1;
      v3 = v5;
      [v2 addTarget:v0 action:sel_didTapWithAccessoryView_ forControlEvents:0x2000];
    }

    else
    {
      v4 = v5;
    }

    [v0 addSubview_];
  }
}

void *sub_24E27E954()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView);
  v2 = v1;
  return v1;
}

void sub_24E27EA00(void *a1, uint64_t *a2, void (*a3)(void))
{
  v6 = *a2;
  v7 = *(v3 + *a2);
  if (v7)
  {
    [v7 removeFromSuperview];
    v6 = *a2;
    v9 = *(v3 + *a2);
  }

  else
  {
    v9 = 0;
  }

  *(v3 + v6) = a1;
  v10 = a1;

  a3();
}

void sub_24E27EA8C()
{
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView];
  if (v1)
  {
    v2 = v1;
    sub_24E0D8B84(0, 0, 0, 0);
    [v0 addSubview_];
  }
}

void sub_24E27EB20(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessory;
  swift_beginAccess();
  sub_24E0E8958(v3, v8, &qword_27F1DEE88, &unk_24E36BF90);
  sub_24E0E8958(a1, v9, &qword_27F1DEE88, &unk_24E36BF90);
  if (v8[64] == 255)
  {
    if (v9[64] == 255)
    {
      sub_24DF8BFF4(v8, &qword_27F1DEE88, &unk_24E36BF90);
      return;
    }
  }

  else
  {
    sub_24E0E8958(v8, v7, &qword_27F1DEE88, &unk_24E36BF90);
    if (v9[64] != 255)
    {
      memcpy(__dst, v9, 0x41uLL);
      v4 = sub_24E29FBA0(v7, __dst);
      sub_24DF9D524(__dst);
      sub_24DF9D524(v7);
      sub_24DF8BFF4(v8, &qword_27F1DEE88, &unk_24E36BF90);
      if (v4)
      {
        return;
      }

      goto LABEL_9;
    }

    sub_24DF9D524(v7);
  }

  sub_24DF8BFF4(v8, &qword_27F1E9570, &unk_24E389B20);
LABEL_9:
  if (*(v3 + 64) == 255)
  {
    v5 = 0;
  }

  else
  {
    sub_24DF9D480(v3, v8);
    v5 = sub_24E073800();
    sub_24DF9D524(v8);
  }

  sub_24E27E748(v5);
}

uint64_t sub_24E27ECCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessory;
  OUTLINED_FUNCTION_5_16(v1 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessory, v5);
  sub_24E0E8958(v1 + v3, v6, &qword_27F1DEE88, &unk_24E36BF90);
  swift_beginAccess();
  sub_24E15B8F4(a1, v1 + v3);
  swift_endAccess();
  sub_24E27EB20(v6);
  sub_24DF8BFF4(a1, &qword_27F1DEE88, &unk_24E36BF90);
  return sub_24DF8BFF4(v6, &qword_27F1DEE88, &unk_24E36BF90);
}

void *sub_24E27ED8C(void *result)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryAction);
  if (v2)
  {
    v3 = result;
    v9[3] = sub_24DF88A8C(0, &qword_27F1E5BD8, 0x277D753C8);
    v9[0] = v3;
    v4 = OUTLINED_FUNCTION_19_1();
    sub_24DE56C38(v4, v5);
    v6 = v3;
    v2(v9);
    v7 = OUTLINED_FUNCTION_19_1();
    sub_24E059AAC(v7, v8);
    return sub_24DF8BFF4(v9, &qword_27F1E0370, &unk_24E369A10);
  }

  return result;
}

void sub_24E27EE94(double a1, double a2)
{
  v5 = type metadata accessor for TitleHeaderView.Style(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v10 = *&v2[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView];
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  if (v10)
  {
    [v10 frame];
    v12 = v14;
    v13 = v15;
  }

  v16 = &v2[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style];
  OUTLINED_FUNCTION_5_16(&v2[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style], v34);
  v17 = 0.0;
  if (*(v16 + *(v5 + 28)) == 1)
  {
    if (qword_27F1DDB90 != -1)
    {
      OUTLINED_FUNCTION_2_111(&qword_27F1DDB90);
    }

    v17 = *(&xmmword_27F20B330 + 1);
    v11 = *&xmmword_27F20B330;
  }

  v18 = *&v2[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel];
  v19 = [v18 text];
  if (v19)
  {
    v20 = v19;
    v21 = sub_24E347CF8();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = *&v2[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel];
  if (v24)
  {
    v25 = sub_24DFFA658(v24);
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = [v18 numberOfLines];
  OUTLINED_FUNCTION_6_86();
  sub_24E282B00(v16, v9);
  [v2 layoutMargins];
  sub_24E28131C(v21, v23, v25, v27, v28, v9, 1, v2, a1, a2, v12, v13, v11, v17, v29, v30, v31, v32);

  OUTLINED_FUNCTION_5_99();
  sub_24E282A50(v9, v33);
  OUTLINED_FUNCTION_1_16();
}

uint64_t sub_24E27F124()
{
  v2 = sub_24E344A78();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_9();
  v6 = v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style;
  OUTLINED_FUNCTION_5_16(v6, v10);
  if (*(v6 + *(type metadata accessor for TitleHeaderView.Style(0) + 32)))
  {
    v7 = MEMORY[0x277D22A10];
  }

  else
  {
    v7 = MEMORY[0x277D22A08];
  }

  (*(v4 + 104))(v1, *v7, v2);
  v9[3] = sub_24E3442F8();
  v9[4] = MEMORY[0x277D226F0];
  __swift_allocate_boxed_opaque_existential_1(v9);
  sub_24E3442E8();
  OUTLINED_FUNCTION_1_16();
  return sub_24E344A88();
}

id sub_24E27F26C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9550, &qword_24E389900);
  OUTLINED_FUNCTION_4_5(v2);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v132 - v4;
  v136 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_38();
  v134 = v7;
  MEMORY[0x28223BE20](v8);
  v135 = &v132 - v9;
  v10 = sub_24E344AA8();
  OUTLINED_FUNCTION_0_14();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_1();
  v16 = v15 - v14;
  v17 = type metadata accessor for TitleHeaderView(0);
  v147.receiver = v0;
  v147.super_class = v17;
  objc_msgSendSuper2(&v147, sel_layoutSubviews);
  v18 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_separatorLineView];
  sub_24E27F124();
  [v0 bounds];
  sub_24E344A68();
  (*(v12 + 8))(v16, v10);
  v19 = OUTLINED_FUNCTION_1_16();
  [v20 v21];
  [v0 bounds];
  v23 = v22;
  v25 = v24;
  [v0 layoutMargins];
  v27 = v26;
  v148.origin.x = v28;
  v30 = v23 - v28 - v29;
  v148.size.height = v25 - v27 - v31;
  v148.origin.y = v27;
  v148.size.width = v30;
  CGRectGetMinY(v148);
  [v18 frame];
  [v18 setFrame_];
  v32 = &v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style];
  OUTLINED_FUNCTION_5_16(&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style], v146);
  v33 = type metadata accessor for TitleHeaderView.Style(0);
  LOBYTE(v18) = *(v32 + v33[12]);
  [v0 bounds];
  v37 = v36;
  v39 = v38;
  if (v18)
  {
    [v0 layoutMargins];
    v41 = v40;
    v43 = v42;
    v37 = v37 - v42 - v44;
    v39 = v39 - v40 - v45;
  }

  else
  {
    v43 = v34;
    v41 = v35;
  }

  v46 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel];
  result = [v46 font];
  if (!result)
  {
    __break(1u);
    goto LABEL_58;
  }

  v48 = result;
  v137 = v46;
  v49 = [v46 text];
  if (v49)
  {
    v50 = v49;
    v51 = sub_24E347CF8();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  v54 = sub_24E1AE614(v51, v53);
  v56 = v55;
  v57 = v54;

  v58 = v137;
  [v137 setLineSpacing_];
  sub_24E0E8958(v32 + v33[5], v5, &qword_27F1E9550, &qword_24E389900);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v136);
  v60 = MEMORY[0x277D22A68];
  if (EnumTagSinglePayload == 1)
  {
    sub_24DF8BFF4(v5, &qword_27F1E9550, &qword_24E389900);
  }

  else
  {
    OUTLINED_FUNCTION_1_129();
    v61 = v135;
    sub_24E282AA8(v5, v135);
    v62 = *&v1[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel];
    if (v62)
    {
      v63 = v62;
      sub_24DFFA658(v63);
      if (v64)
      {
        v65 = sub_24E347DD8();

        if (v65 > 0)
        {
          v66 = v60;
          *(&v139[1] + 1) = type metadata accessor for DynamicTypeLabel(0);
          *&v139[2] = v60;
          *&v139[0] = v63;
          v67 = v63;
          sub_24E27D96C(v139, v140);
          __swift_destroy_boxed_opaque_existential_1(v139);
          sub_24E077268();
          v70 = v68[2];
          v69 = v68[3];
          v71 = v68;
          if (v70 >= v69 >> 1)
          {
            OUTLINED_FUNCTION_33_0(v69);
            sub_24E077268();
            v71 = v131;
          }

          OUTLINED_FUNCTION_0_165();
          sub_24E282A50(v61, v72);
          v71[2] = v70 + 1;
          v73 = &v71[20 * v70];
          v74 = v71;
          memcpy(v73 + 4, v140, 0xA0uLL);
          v58 = v137;
          v60 = v66;
          goto LABEL_19;
        }
      }

      OUTLINED_FUNCTION_0_165();
      sub_24E282A50(v61, v75);
    }

    else
    {
      OUTLINED_FUNCTION_0_165();
      sub_24E282A50(v61, v76);
    }
  }

  v74 = MEMORY[0x277D84F90];
LABEL_19:
  LODWORD(v135) = *(v32 + v33[10]);
  v77 = [v58 text];
  if (v77)
  {
    v78 = v77;
    sub_24E347CF8();

    v79 = sub_24E347DD8();

    if (v79 >= 1)
    {
      if ((*(v32 + v33[9]) & 1) == 0)
      {
        OUTLINED_FUNCTION_4_94();
        v86 = v134;
        sub_24E282B00(v32, v134);
        *(&v139[1] + 1) = type metadata accessor for DynamicTypeLabel(0);
        *&v139[2] = v60;
        *&v139[0] = v58;
        v87 = v58;
        sub_24E27D96C(v139, v140);
        OUTLINED_FUNCTION_0_165();
        sub_24E282A50(v86, v88);
        __swift_destroy_boxed_opaque_existential_1(v139);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_27;
        }

        goto LABEL_56;
      }

      OUTLINED_FUNCTION_4_94();
      v80 = v134;
      sub_24E282B00(v32, v134);
      *(&v139[1] + 1) = type metadata accessor for DynamicTypeLabel(0);
      *&v139[2] = v60;
      *&v139[0] = v58;
      v81 = v58;
      sub_24E27D96C(v139, v140);
      OUTLINED_FUNCTION_0_165();
      sub_24E282A50(v80, v82);
      __swift_destroy_boxed_opaque_existential_1(v139);
      v83 = v74[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v145 = v74;
      if (!isUniquelyReferenced_nonNull_native || v83 >= v74[3] >> 1)
      {
        sub_24E077268();
        v74 = v85;
        v145 = v85;
      }

      sub_24E05F19C();
    }
  }

  while (1)
  {
    v134 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView;
    v94 = *&v1[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView];
    if (v94)
    {
      v95 = sub_24DF88A8C(0, &qword_27F1E1D30, 0x277D75D18);
      v96 = MEMORY[0x277D22A58];
    }

    else
    {
      v95 = 0;
      v96 = 0;
    }

    v133 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView;
    v97 = *&v1[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView];
    v136 = v74;
    if (v97)
    {
      v98 = type metadata accessor for ArtworkView();
      v99 = MEMORY[0x277D22A58];
    }

    else
    {
      v98 = 0;
      v99 = 0;
    }

    v100 = qword_27F1DDB88;
    v101 = v94;
    v102 = v97;
    if (v100 != -1)
    {
      OUTLINED_FUNCTION_11_46(&qword_27F1DDB88);
    }

    v140[18] = MEMORY[0x277D85048];
    v140[19] = MEMORY[0x277D225F8];
    v140[15] = qword_27F20B320;
    v140[24] = MEMORY[0x277D225F8];
    v140[23] = MEMORY[0x277D85048];
    v140[20] = 0x4030000000000000;
    memset(&v140[5], 0, 40);
    v103 = qword_27F1DDB90;
    v104 = v136;

    if (v103 != -1)
    {
      OUTLINED_FUNCTION_2_111(&qword_27F1DDB90);
    }

    v105 = v1[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_allowsAccessibilityLayouts];
    v140[0] = v94;
    v140[1] = 0;
    v140[2] = 0;
    v140[3] = v95;
    v140[4] = v96;
    v140[10] = v97;
    v140[11] = 0;
    v140[12] = 0;
    v140[13] = v98;
    v140[14] = v99;
    v140[25] = v56;
    v140[26] = v104;
    v141 = v135;
    v142 = 1;
    v143 = v105;
    v144 = xmmword_27F20B330;
    v106 = objc_opt_self();
    sub_24E282BBC(v140, v139);
    v107 = swift_allocObject();
    memcpy((v107 + 16), v139, 0xF0uLL);
    *(v107 + 256) = v43;
    *(v107 + 264) = v41;
    *(v107 + 272) = v37;
    *(v107 + 280) = v39;
    *(v107 + 288) = v1;
    v108 = swift_allocObject();
    *(v108 + 16) = sub_24E282C18;
    *(v108 + 24) = v107;
    v138[4] = sub_24DFA0D30;
    v138[5] = v108;
    v138[0] = MEMORY[0x277D85DD0];
    v138[1] = 1107296256;
    v138[2] = sub_24E2C314C;
    v138[3] = &block_descriptor_90;
    v109 = _Block_copy(v138);
    v110 = v1;

    [v106 performWithoutAnimation_];
    _Block_release(v109);
    LOBYTE(v106) = swift_isEscapingClosureAtFileLocation();

    if ((v106 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_56:
    OUTLINED_FUNCTION_5_10();
    sub_24E077268();
    v74 = v129;
LABEL_27:
    v89 = v74;
    v90 = v74[2];
    v91 = v89;
    v92 = v89[3];
    if (v90 >= v92 >> 1)
    {
      OUTLINED_FUNCTION_33_0(v92);
      sub_24E077268();
      v91 = v130;
    }

    v91[2] = v90 + 1;
    v93 = &v91[20 * v90];
    v74 = v91;
    memcpy(v93 + 4, v140, 0xA0uLL);
  }

  v111 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel;
  v112 = *&v110[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel];
  if (v112)
  {
    [v112 frame];
    v113 = &selRef_setContactLookup_;
    v114 = v137;
  }

  else
  {
    v114 = v137;
    [v137 frame];
    v113 = &selRef_setContactLookup_;
  }

  v139[0] = *&v110[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_avoidanceRegion];
  v139[1] = *&v110[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_avoidanceRegion + 16];
  LOBYTE(v139[2]) = v110[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_avoidanceRegion + 32];
  sub_24E0ADD1C();
  if (v115 > COERCE_DOUBLE(1))
  {
    [v114 frame];
    [v114 v113[158]];
    v116 = *&v110[v111];
    if (v116)
    {
      v117 = v116;
      [v117 frame];
      OUTLINED_FUNCTION_21_31(v118, v119);
    }

    v120 = *&v1[v133];
    if (v120)
    {
      v121 = v120;
      [v121 frame];
      OUTLINED_FUNCTION_21_31(v122, v123);
    }

    v124 = *&v1[v134];
    if (v124)
    {
      v125 = v124;
      [v125 frame];
      OUTLINED_FUNCTION_21_31(v126, v127);
    }
  }

  if (![v114 jet_isTextExtraTall])
  {
    sub_24E2829FC(v140);
  }

  v128 = [v114 font];
  result = v136;
  if (v128)
  {

    sub_24E348578();

    [v114 frame];
    CGRectGetWidth(v149);
    [v114 frame];
    CGRectGetHeight(v150);
    [v114 bounds];
    [v114 setBounds_];
    sub_24E2829FC(v140);
  }

LABEL_58:
  __break(1u);
  return result;
}

id sub_24E27FDBC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char *a6)
{
  v11 = sub_24E344048();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E259A88(a6, a1, a2, a3, a4);
  (*(v12 + 8))(v14, v11);
  [*&a6[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView] layoutIfNeeded];
  result = *&a6[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView];
  if (result)
  {
    return [result layoutIfNeeded];
  }

  return result;
}

id sub_24E27FF38()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9550, &qword_24E389900);
  OUTLINED_FUNCTION_4_5(v2);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v38[-v4 - 8];
  v6 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  OUTLINED_FUNCTION_4_5(v11);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v38[-v13 - 8];
  v15 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel];
  v16 = &v1[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style];
  OUTLINED_FUNCTION_5_16(&v1[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style], v38);
  [v15 setTextColor_];
  v17 = *(v6 + 24);
  v18 = sub_24E344158();
  OUTLINED_FUNCTION_5_2();
  v37 = *(v19 + 16);
  v37(v14, &v16[v17], v18);
  OUTLINED_FUNCTION_31_12();
  sub_24E0AED24(v14);
  v20 = type metadata accessor for TitleHeaderView.Style(0);
  [v1 setBackgroundColor_];
  sub_24E0E8958(&v16[v20[5]], v5, &qword_27F1E9550, &qword_24E389900);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_24DF8BFF4(v5, &qword_27F1E9550, &qword_24E389900);
    sub_24E27E504(0);
  }

  else
  {
    OUTLINED_FUNCTION_1_129();
    sub_24E282AA8(v5, v10);
    v21 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel;
    v22 = *&v1[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel];
    if (v22 || (v28 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel(0)), v29 = OUTLINED_FUNCTION_4_50(v28, sel_initWithFrame_), sub_24E27E504(v29), (v30 = *&v1[v21]) != 0) && ([v30 setNumberOfLines_], (v31 = *&v1[v21]) != 0) && (objc_msgSend(v31, sel_setLineBreakMode_, 4), (v22 = *&v1[v21]) != 0))
    {
      [v22 setTextColor_];
      v23 = *&v1[v21];
      if (v23)
      {
        v37(v14, &v10[*(v6 + 24)], v18);
        OUTLINED_FUNCTION_31_12();
        v24 = v23;
        sub_24E0AED24(v14);

        v25 = *&v1[v21];
        if (v25)
        {
          v26 = [v25 layer];
          if (*(v10 + 2))
          {
            v27 = sub_24E347CB8();
          }

          else
          {
            v27 = 0;
          }

          [v26 setCompositingFilter_];

          swift_unknownObjectRelease();
          v32 = *&v1[v21];
          if (v32)
          {
            v32[OBJC_IVAR____TtC12GameCenterUI16DynamicTypeLabel_wantsFastBaselineMeasurement] = 1;
            v33 = v32;
            sub_24E0AFA60();
          }
        }
      }
    }

    OUTLINED_FUNCTION_0_165();
    sub_24E282A50(v10, v34);
  }

  v35 = *&v1[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_separatorLineView];
  [v35 setHidden_];
  [v35 setBackgroundColor_];
  return [v1 setNeedsLayout];
}

void sub_24E280308()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for TitleHeaderView(0);
  objc_msgSendSuper2(&v9, sel_prepareForReuse);
  v1 = &v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryAction];
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryAction];
  v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryAction + 8];
  *v1 = 0;
  *(v1 + 1) = 0;
  sub_24E059AAC(v2, v3);
  memset(v7, 0, sizeof(v7));
  v8 = -1;
  sub_24E27ECCC(v7);
  v4 = *&v0[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView];
  if (v4)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_16_40();
    sub_24E0D8ED8(v6, 0);
  }
}

uint64_t sub_24E280460()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0C58, &qword_24E36F2C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36A270;
  v2 = [*(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel) text];
  if (v2)
  {
    v3 = v2;
    v4 = sub_24E347CF8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel);
  if (v7)
  {
    v8 = sub_24DFFA658(v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v10 = 0;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  v11 = MEMORY[0x277D84F90];
LABEL_8:
  v12 = (inited + 40 + 16 * v10);
  while (++v10 != 3)
  {
    v13 = v12 + 2;
    v14 = *v12;
    v12 += 2;
    if (v14)
    {
      v15 = *(v13 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = OUTLINED_FUNCTION_5_10();
        sub_24E076A08(v19, v20, v21, v11);
        v11 = v22;
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_24E076A08(v16 > 1, v17 + 1, 1, v11);
        v11 = v23;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      goto LABEL_8;
    }
  }

  swift_setDeallocating();
  sub_24DFD7F04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E0338, &qword_24E36DB80);
  sub_24E00FE20();
  v24 = sub_24E347C78();

  return v24;
}

void sub_24E2806B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_24E347CB8();
  }

  else
  {
    v3 = 0;
  }

  v4.receiver = v2;
  v4.super_class = type metadata accessor for TitleHeaderView(0);
  objc_msgSendSuper2(&v4, sel_setAccessibilityLabel_, v3);
}

void *sub_24E280738()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryView);
  v2 = v1;
  return v1;
}

void sub_24E280768(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v40 = a2;
  v5 = OUTLINED_FUNCTION_16_40();
  v41 = type metadata accessor for TitleHeaderView.Style(v5);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF058, &unk_24E36F980);
  OUTLINED_FUNCTION_4_5(v10);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = type metadata accessor for Shelf.Presentation(0);
  v15 = OUTLINED_FUNCTION_4_5(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_17_9();
  v16 = type metadata accessor for HeaderData(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_1();
  v20 = v19 - v18;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  sub_24E347128();

  sub_24E0E8958(v3, v13, &qword_27F1DF058, &unk_24E36F980);
  sub_24E282A50(v3, type metadata accessor for Shelf.Presentation);
  if (__swift_getEnumTagSinglePayload(v13, 1, v16) == 1)
  {
    sub_24DF8BFF4(v13, &qword_27F1DF058, &unk_24E36F980);
    return;
  }

  sub_24E282AA8(v13, v20);
  OUTLINED_FUNCTION_6_86();
  sub_24E282B00(v20 + v21, v9);
  sub_24E27E608(v9);
  v22 = *&v2[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_titleLabel];
  v23 = sub_24E347CB8();
  [v22 setText_];

  v24 = *&v4[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_detailLabel];
  if (v24)
  {
    v25 = *(v20 + *(v16 + 32) + 8);
    v26 = v24;
    if (v25)
    {
      v25 = sub_24E347CB8();
    }

    [v26 setText_];
  }

  if (!*(v20 + *(v16 + 48)))
  {
    goto LABEL_16;
  }

  v27 = qword_27F1DDB90;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_2_111(&qword_27F1DDB90);
  }

  v42[0] = 0;
  v42[1] = 0;
  v28 = sub_24E0ABE8C(v42, 0, *&xmmword_27F20B330, *(&xmmword_27F20B330 + 1));
  v29 = &v4[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style];
  OUTLINED_FUNCTION_5_16(&v4[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_style], v42);
  if (v29[*(v41 + 28)] != 1)
  {
    goto LABEL_15;
  }

  v30 = type metadata accessor for ArtworkView();
  v31 = sub_24E0D89D0(v30);
  sub_24E27E9E0(v31);
  v32 = OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView;
  v33 = *&v4[OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_iconArtworkView];
  if (!v33)
  {
    __break(1u);
    goto LABEL_18;
  }

  v34 = objc_opt_self();
  v35 = v33;
  v36 = [v34 clearColor];
  [v35 setBackgroundColor_];

  if (!*(v40 + qword_27F1EB198))
  {
LABEL_15:

LABEL_16:
    [v4 setNeedsLayout];
    sub_24E282A50(v20, type metadata accessor for HeaderData);
    return;
  }

  v37 = *&v4[v32];
  if (v37)
  {

    v38 = v37;
    sub_24E0624A4(v28, 2, 1, v38);

    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
}

void sub_24E280BB4()
{
  OUTLINED_FUNCTION_5_99();
  sub_24E282A50(v0 + v1, v2);

  sub_24DF8BFF4(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessory, &qword_27F1DEE88, &unk_24E36BF90);
  sub_24E059AAC(*(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryAction), *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_accessoryAction + 8));
  v3 = *(v0 + OBJC_IVAR____TtC12GameCenterUI15TitleHeaderView_separatorLineView);
}

id sub_24E280C6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleHeaderView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24E280D90(uint64_t a1)
{
  result = type metadata accessor for TitleHeaderView.Style(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_24E280EDC(uint64_t a1)
{
  type metadata accessor for TitleHeaderView.TextConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_24E280FCC(319);
    if (v2 <= 0x3F)
    {
      sub_24E281024(319);
      if (v3 <= 0x3F)
      {
        sub_24DF88A8C(319, &qword_27F1E5FD0, 0x277D75348);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24E280FCC(uint64_t a1)
{
  if (!qword_280BE0980)
  {
    type metadata accessor for TitleHeaderView.TextConfiguration(255);
    v1 = sub_24E348698();
    if (!v2)
    {
      atomic_store(v1, &qword_280BE0980);
    }
  }
}

void sub_24E281024(uint64_t a1)
{
  if (!qword_27F1E5D78)
  {
    sub_24DF88A8C(255, &qword_27F1E5FD0, 0x277D75348);
    v1 = sub_24E348698();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1E5D78);
    }
  }
}

_BYTE *sub_24E28109C(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_24E2811A0(uint64_t a1)
{
  sub_24DF88A8C(319, &qword_27F1E5FD0, 0x277D75348);
  if (v1 <= 0x3F)
  {
    sub_24E0ADC44();
    if (v2 <= 0x3F)
    {
      sub_24E344158();
      if (v3 <= 0x3F)
      {
        sub_24E3444F8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24E281270()
{
  result = qword_27F1E9558;
  if (!qword_27F1E9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9558);
  }

  return result;
}

unint64_t sub_24E2812C8()
{
  result = qword_27F1E9560;
  if (!qword_27F1E9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E9560);
  }

  return result;
}

double sub_24E28131C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, double a18)
{
  v79 = a7;
  v73 = a5;
  v74 = a4;
  v76 = a3;
  v77 = a1;
  v75 = a14;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9550, &qword_24E389900);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v71 - v24;
  v26 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v30 = MEMORY[0x28223BE20](v29).n128_u64[0];
  v32 = &v71 - v31;
  v80 = a8;
  v33 = [a8 traitCollection];
  v78 = type metadata accessor for TitleHeaderView.Style(0);
  v34 = *(v78 + 20);
  v81 = a6;
  sub_24E0E8958(a6 + v34, v25, &qword_27F1E9550, &qword_24E389900);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v26);
  v36 = MEMORY[0x277D228F0];
  if (EnumTagSinglePayload == 1)
  {
    sub_24DF8BFF4(v25, &qword_27F1E9550, &qword_24E389900);
    v37 = MEMORY[0x277D84F90];
    v38 = v28;
LABEL_9:
    v39 = a2;
LABEL_10:
    v47 = v77;
    goto LABEL_11;
  }

  sub_24E282AA8(v25, v32);
  v38 = v28;
  if (!v74)
  {
    sub_24E282A50(v32, type metadata accessor for TitleHeaderView.TextConfiguration);
    v37 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v39 = a2;
  if (sub_24E347DD8() <= 0)
  {
    sub_24E282A50(v32, type metadata accessor for TitleHeaderView.TextConfiguration);
    v37 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  v71 = v38;
  sub_24DF88A8C(0, &qword_27F1DEE28, 0x277D74300);
  v40 = &v32[*(v26 + 24)];
  v72 = v33;
  v41 = MEMORY[0x25303F0C0](v40, v33);

  v42 = v41;
  sub_24E344398();
  sub_24E3443A8();
  v43 = sub_24E344868();
  swift_allocObject();
  v44 = sub_24E344858();
  v90 = v43;
  v91 = v36;
  v89[0] = v44;

  sub_24E27D96C(v89, v84);

  __swift_destroy_boxed_opaque_existential_1(v89);
  sub_24E077268();
  v37 = v45;
  v46 = *(v45 + 16);
  if (v46 >= *(v45 + 24) >> 1)
  {
    sub_24E077268();
    v37 = v70;
  }

  v38 = v71;
  sub_24E282A50(v32, type metadata accessor for TitleHeaderView.TextConfiguration);
  *(v37 + 16) = v46 + 1;
  memcpy((v37 + 160 * v46 + 32), v84, 0xA0uLL);
  v47 = v77;
  v33 = v72;
LABEL_11:
  v48 = v81;
  sub_24E282B00(v81, v38);
  sub_24DF88A8C(0, &qword_27F1DEE28, 0x277D74300);
  v49 = MEMORY[0x25303F0C0](v38 + *(v26 + 24), v33);
  sub_24E1AE614(v47, v39);
  v51 = v50;
  if (v39 && sub_24E347DD8() >= 1)
  {
    v72 = v33;
    v77 = v49;
    v52 = v49;

    sub_24E344398();
    sub_24E3443A8();
    v53 = sub_24E344868();
    swift_allocObject();
    v54 = sub_24E344858();
    v90 = v53;
    v91 = MEMORY[0x277D228F0];
    v89[0] = v54;
    sub_24E27D96C(v89, v84);
    __swift_destroy_boxed_opaque_existential_1(v89);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_24E077268();
      v37 = v68;
    }

    v55 = *(v37 + 16);
    v33 = v72;
    v48 = v81;
    v49 = v77;
    if (v55 >= *(v37 + 24) >> 1)
    {
      sub_24E077268();
      v37 = v69;
    }

    *(v37 + 16) = v55 + 1;
    memcpy((v37 + 160 * v55 + 32), v84, 0xA0uLL);
  }

  if (a11 == 0.0 && a12 == 0.0)
  {
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v89[1] = 0;
    v89[2] = 0;
  }

  else
  {
    v57 = sub_24E344788();
    swift_allocObject();
    v56 = sub_24E344768();
    v58 = MEMORY[0x277D228B0];
  }

  v89[0] = v56;
  v90 = v57;
  v91 = v58;
  if (*(v48 + *(v78 + 28)) == 1)
  {
    v59 = sub_24E344788();
    swift_allocObject();
    v60 = sub_24E344768();
    v61 = MEMORY[0x277D228B0];
  }

  else
  {
    v59 = 0;
    v61 = 0;
    v60 = 0;
    v88[1] = 0;
    v88[2] = 0;
  }

  v88[3] = v59;
  v88[4] = v61;
  v88[0] = v60;
  sub_24E0E8958(v89, v84, &qword_27F1DEE30, &qword_24E369B60);
  sub_24E0E8958(v88, &v84[10], &qword_27F1DEE30, &qword_24E369B60);
  if (qword_27F1DDB88 != -1)
  {
    swift_once();
  }

  v84[18] = MEMORY[0x277D85048];
  v84[19] = MEMORY[0x277D225F8];
  v84[15] = qword_27F20B320;
  v84[23] = MEMORY[0x277D85048];
  v84[24] = MEMORY[0x277D225F8];
  v84[20] = 0x4030000000000000;
  memset(&v84[5], 0, 40);
  if (qword_27F1DDB90 != -1)
  {
    swift_once();
  }

  v84[25] = v51;
  v84[26] = v37;
  v85 = 257;
  v86 = v79 & 1;
  v87 = xmmword_27F20B330;
  sub_24E348538();
  sub_24E2821CC(v80, v84, v62, v63);
  v82 = v64;
  v83 = v65;
  sub_24E348548();

  sub_24E282A50(v38, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_24E2829FC(v84);
  v66 = v82;
  sub_24DF8BFF4(v88, &qword_27F1DEE30, &qword_24E369B60);
  sub_24DF8BFF4(v89, &qword_27F1DEE30, &qword_24E369B60);
  return v66;
}

void sub_24E281B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_44();
  v33 = v32;
  v107 = v34;
  v36 = v35;
  v102 = v38;
  v103 = v37;
  v105 = v39;
  v104 = v40;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v109 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E9550, &qword_24E389900);
  OUTLINED_FUNCTION_4_5(v48);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v49);
  v51 = &v100 - v50;
  v52 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  OUTLINED_FUNCTION_5_2();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_38();
  v55 = v54;
  *&v57 = MEMORY[0x28223BE20](v56).n128_u64[0];
  v59 = &v100 - v58;
  v108 = v33;
  v60 = [v33 traitCollection];
  v106 = type metadata accessor for TitleHeaderView.Style(0);
  v61 = *(v106 + 20);
  v110 = v36;
  sub_24E0E8958(v36 + v61, v51, &qword_27F1E9550, &qword_24E389900);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v51, 1, v52);
  v63 = MEMORY[0x277D228F0];
  if (EnumTagSinglePayload == 1)
  {
    sub_24DF8BFF4(v51, &qword_27F1E9550, &qword_24E389900);
    v64 = MEMORY[0x277D84F90];
    v65 = v55;
    v66 = v46;
    v67 = v65;
    v68 = v109;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_129();
  sub_24E282AA8(v51, v59);
  v100 = v55;
  v68 = v109;
  if (!v103)
  {
    OUTLINED_FUNCTION_0_165();
    sub_24E282A50(v59, v77);
    v64 = MEMORY[0x277D84F90];
    v66 = v46;
LABEL_10:
    v67 = v100;
    goto LABEL_11;
  }

  v66 = v46;
  if (sub_24E347DD8() <= 0)
  {
    OUTLINED_FUNCTION_0_165();
    sub_24E282A50(v59, v78);
    v64 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  sub_24DF88A8C(0, &qword_27F1DEE28, 0x277D74300);
  v69 = &v59[*(v52 + 24)];
  v101 = v60;
  v70 = MEMORY[0x25303F0C0](v69, v60);

  v71 = v70;
  sub_24E344398();
  sub_24E3443A8();
  v72 = sub_24E344868();
  OUTLINED_FUNCTION_21_7(v72);
  v73 = sub_24E344858();
  v122 = v68;
  v123 = v63;
  v121[0] = v73;

  sub_24E27D96C(v121, v113);

  __swift_destroy_boxed_opaque_existential_1(v121);
  sub_24E077268();
  v64 = v74;
  v75 = *(v74 + 24);
  if (*(v74 + 16) >= v75 >> 1)
  {
    OUTLINED_FUNCTION_33_0(v75);
    sub_24E077268();
    v64 = v99;
  }

  v67 = v100;
  OUTLINED_FUNCTION_0_165();
  sub_24E282A50(v59, v76);
  OUTLINED_FUNCTION_18_39();
  v68 = v109;
  v60 = v101;
LABEL_11:
  OUTLINED_FUNCTION_4_94();
  v79 = v110;
  sub_24E282B00(v110, v67);
  sub_24DF88A8C(0, &qword_27F1DEE28, 0x277D74300);
  v80 = MEMORY[0x25303F0C0](v67 + *(v52 + 24), v60);
  sub_24E1AE614(v68, v66);
  v82 = v81;
  if (v66 && sub_24E347DD8() >= 1)
  {
    v101 = v60;
    v109 = v80;
    v83 = v80;

    sub_24E344398();
    sub_24E3443A8();
    v84 = sub_24E344868();
    swift_allocObject();
    v85 = sub_24E344858();
    v122 = v84;
    v123 = MEMORY[0x277D228F0];
    v121[0] = v85;
    sub_24E27D96C(v121, v113);
    __swift_destroy_boxed_opaque_existential_1(v121);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_5_10();
      sub_24E077268();
      v64 = v97;
    }

    v68 = *(v64 + 16);
    v86 = *(v64 + 24);
    v60 = v101;
    v80 = v109;
    v79 = v110;
    if (v68 >= v86 >> 1)
    {
      OUTLINED_FUNCTION_33_0(v86);
      sub_24E077268();
      v64 = v98;
    }

    OUTLINED_FUNCTION_18_39();
  }

  if (v44 == 0.0 && v42 == 0.0)
  {
    v87 = 0;
    v68 = 0;
    v88 = 0;
    v121[1] = 0;
    v121[2] = 0;
  }

  else
  {
    v89 = sub_24E344788();
    OUTLINED_FUNCTION_21_7(v89);
    v87 = sub_24E344768();
    v88 = MEMORY[0x277D228B0];
  }

  v121[0] = v87;
  v122 = v68;
  v123 = v88;
  if (*(v79 + *(v106 + 28)) == 1)
  {
    v90 = sub_24E344788();
    OUTLINED_FUNCTION_21_7(v90);
    v91 = sub_24E344768();
    v92 = MEMORY[0x277D228B0];
  }

  else
  {
    v68 = 0;
    v92 = 0;
    v91 = 0;
    v120[1] = 0;
    v120[2] = 0;
  }

  v120[3] = v68;
  v120[4] = v92;
  v120[0] = v91;
  sub_24E0E8958(v121, v113, &qword_27F1DEE30, &qword_24E369B60);
  sub_24E0E8958(v120, v116, &qword_27F1DEE30, &qword_24E369B60);
  if (qword_27F1DDB88 != -1)
  {
    OUTLINED_FUNCTION_11_46(&qword_27F1DDB88);
  }

  v116[8] = MEMORY[0x277D85048];
  v116[9] = MEMORY[0x277D225F8];
  v116[5] = qword_27F20B320;
  v116[13] = MEMORY[0x277D85048];
  v116[14] = MEMORY[0x277D225F8];
  v116[10] = 0x4030000000000000;
  *&v113[40] = 0u;
  v114 = 0u;
  v115 = 0;
  if (qword_27F1DDB90 != -1)
  {
    OUTLINED_FUNCTION_2_111(&qword_27F1DDB90);
  }

  v116[15] = v82;
  v116[16] = v64;
  v117 = 257;
  v118 = v107 & 1;
  v119 = xmmword_27F20B330;
  OUTLINED_FUNCTION_25_23();
  sub_24E348538();
  sub_24E25A04C(v108, v113, a32, v93);
  v111 = v94;
  v112 = v95;
  OUTLINED_FUNCTION_25_23();
  sub_24E348548();

  OUTLINED_FUNCTION_0_165();
  sub_24E282A50(v67, v96);
  sub_24E2829FC(v113);
  sub_24DF8BFF4(v120, &qword_27F1DEE30, &qword_24E369B60);
  sub_24DF8BFF4(v121, &qword_27F1DEE30, &qword_24E369B60);
  OUTLINED_FUNCTION_1_16();
  OUTLINED_FUNCTION_45();
}

void sub_24E2821CC(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_24E348BC8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24E344478();
  v64 = *(v12 - 8);
  v65 = v12;
  MEMORY[0x28223BE20](v12);
  v63 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24E3444A8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_24E344888();
  MEMORY[0x28223BE20](v69);
  v71 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 <= 0.0)
  {
    sub_24E282C44(a1, a2, a3, a4);
  }

  else
  {
    v55 = v11;
    v56 = v9;
    v57 = v8;
    v58 = v15;
    v61 = v17;
    v62 = v14;
    v20 = 0;
    v59 = a1;
    v60 = a2;
    v21 = *(a2 + 208);
    v22 = *(v21 + 16);
    v70 = v21;
    v68 = (v18 + 16);
    v66 = v21 + 32;
    v67 = (v18 + 8);
    v23 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v20 == v22)
      {
        v24 = 0;
        v25 = 0uLL;
        v26 = 0uLL;
        v20 = v22;
        v27 = 0uLL;
        v28 = 0uLL;
        v29 = 0uLL;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
        v34 = 0uLL;
      }

      else
      {
        if (v20 >= *(v70 + 16))
        {
          goto LABEL_28;
        }

        *&v74 = v20;
        sub_24E05F5E4(v66 + 160 * v20, &v74 + 8);
        v25 = v74;
        v26 = v75;
        v24 = v76;
        v27 = v77;
        v28 = v78;
        v29 = v79;
        v30 = v80;
        v31 = v81;
        v32 = v82;
        v33 = v83;
        ++v20;
        v34 = v84;
      }

      v85 = v25;
      v86 = v26;
      v87 = v24;
      v88[0] = v27;
      v88[1] = v28;
      v88[2] = v29;
      v89[0] = v30;
      v89[1] = v31;
      v89[2] = v32;
      v89[3] = v33;
      v89[4] = v34;
      if (!v24)
      {
        (*(v64 + 104))(v63, *MEMORY[0x277D22788], v65);

        v44 = v61;
        sub_24E344488();
        v45 = v60;
        sub_24E2586BC(&v74);
        if (*(&v75 + 1))
        {
          sub_24DE56CE8(&v74, &v85);
          __swift_project_boxed_opaque_existential_1(&v85, *(&v86 + 1));
          v46 = v59;
          sub_24E3440D8(a3, a4);
          v47 = *(v45 + 184);
          v48 = *(v45 + 192);
          __swift_project_boxed_opaque_existential_1((v45 + 160), v47);
          v49 = v55;
          sub_24E2548A0(v47, v48);
          sub_24E344198();
          (*(v56 + 8))(v49, v57);
          v50 = v62;
          if (*(v45 + 218))
          {
            v51 = [v46 traitCollection];
            sub_24E3483C8();
          }

          sub_24E344468();
          __swift_destroy_boxed_opaque_existential_1(&v85);
        }

        else
        {
          sub_24DF8BFF4(&v74, &qword_27F1DEE30, &qword_24E369B60);
          sub_24E344468();
          v50 = v62;
        }

        if (*(v45 + 200) <= 1.0)
        {
          (*(v58 + 8))(v44, v50);
        }

        else
        {
          sub_24E12E6A0(v70, &v85);
          if (*(&v86 + 1))
          {
            sub_24DF89628(&v85, v73);
            sub_24E25AA9C(&v85);
            sub_24DE56CE8(v73, &v74);
            __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
            v52 = sub_24E344318();
            if (v52)
            {
              v53 = v52;

              [v53 lineHeight];

              (*(v58 + 8))(v44, v50);
              __swift_destroy_boxed_opaque_existential_1(&v74);
              return;
            }

            goto LABEL_29;
          }

          (*(v58 + 8))(v44, v50);
          sub_24DF8BFF4(&v85, &qword_27F1E8D50, &unk_24E388070);
        }

        return;
      }

      if (__OFADD__(v25, 1))
      {
        break;
      }

      v35 = v27;
      v36 = __swift_project_boxed_opaque_existential_1(&v85 + 1, v24);
      *(&v75 + 1) = v24;
      v76 = *(*(v35 + 8) + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v74);
      (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v36, v24);
      sub_24DF89628(v88 + 8, v73);
      sub_24DF89628(v89, &v72);
      sub_24E25AA9C(&v85 + 8);
      sub_24E344878();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24E076C74();
        v23 = v42;
      }

      v38 = *(v23 + 16);
      if (v38 >= *(v23 + 24) >> 1)
      {
        sub_24E076C74();
        v23 = v43;
      }

      v39 = v69;
      *(&v75 + 1) = v69;
      v76 = MEMORY[0x277D22900];
      v40 = __swift_allocate_boxed_opaque_existential_1(&v74);
      v41 = v71;
      (*v68)(v40, v71, v39);
      *(v23 + 16) = v38 + 1;
      sub_24DE56CE8(&v74, v23 + 40 * v38 + 32);
      (*v67)(v41, v39);
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_24E282A50(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_24E282AA8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_40();
  v4(v3);
  OUTLINED_FUNCTION_5_2();
  v5 = OUTLINED_FUNCTION_19_1();
  v6(v5);
  return a2;
}

uint64_t sub_24E282B00(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_16_40();
  v4(v3);
  OUTLINED_FUNCTION_5_2();
  v5 = OUTLINED_FUNCTION_19_1();
  v6(v5);
  return a2;
}

uint64_t sub_24E282B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double block_copy_helper_90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_24E282C44(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = sub_24E344478();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_24E3444A8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 104))(v8, *MEMORY[0x277D22788], v5, v11);
  sub_24E344488();
  v14 = *(a2 + 208);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + 32;
    v17 = MEMORY[0x277D228E0];
    do
    {
      sub_24E05F5E4(v16, v26);
      sub_24DF89628(&v27, v22);
      v18 = sub_24E344838();
      v24 = v18;
      v25 = v17;
      __swift_allocate_boxed_opaque_existential_1(v23);
      sub_24E344848();
      sub_24E344498();
      __swift_destroy_boxed_opaque_existential_1(v23);
      sub_24DF89628(&v28, v22);
      sub_24E25AA9C(v26);
      v24 = v18;
      v25 = v17;
      __swift_allocate_boxed_opaque_existential_1(v23);
      sub_24E344848();
      sub_24E344498();
      __swift_destroy_boxed_opaque_existential_1(v23);
      v16 += 160;
      --v15;
    }

    while (v15);
  }

  sub_24E344468();
  v20 = v19;
  (*(v10 + 8))(v13, v9);
  return v20;
}