void sub_1E3FDDAB8()
{
  v1 = sub_1E4204014();
  OUTLINED_FUNCTION_1_2();
  v27 = v2;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = sub_1E4203FC4();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8();
  v11 = *(v10 + 224);

  v13 = v11(v12);

  if (v13 > 0.0)
  {
    v25 = OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_autoDismissWorkItem;
    v26 = v1;
    if (*(v0 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_autoDismissWorkItem))
    {

      sub_1E4204034();
    }

    OUTLINED_FUNCTION_4_0();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1E3FDF36C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E378AEA4;
    aBlock[3] = &block_descriptor_28_2;
    _Block_copy(aBlock);
    v28 = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    sub_1E378AD28();
    sub_1E42072E4();
    sub_1E4204054();
    swift_allocObject();
    v15 = sub_1E4204024();

    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v16 = sub_1E4206A04();
    sub_1E4204004();
    OUTLINED_FUNCTION_8();
    v18 = *(v17 + 224);

    v20 = v18(v19);

    v21.n128_f64[0] = v20;
    sub_1E4204074(v21);
    v22 = *(v27 + 8);
    v23 = v5;
    v24 = v26;
    v22(v23, v26);
    sub_1E4206994();

    v22(v8, v24);
    *(v0 + v25) = v15;
  }
}

double sub_1E3FDDE74(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ToastViewController();
  objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1 & 1);
  sub_1E4203E44();
  sub_1E4200FE4();

  return result;
}

id sub_1E3FDDF54()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for ToastViewController();
  objc_msgSendSuper2(&v11, sel_viewSafeAreaInsetsDidChange);
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result safeAreaInsets];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    result = *&v0[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_hostingController];
    if (result)
    {
      return [result setAdditionalSafeAreaInsets_];
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E3FDE058()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = type metadata accessor for ToastViewController();
  objc_msgSendSuper2(&v40, sel_viewDidLayoutSubviews);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = v2;
  type metadata accessor for LayoutGrid();
  [v3 bounds];
  OUTLINED_FUNCTION_3();

  v41.origin.x = OUTLINED_FUNCTION_6();
  Width = CGRectGetWidth(v41);
  sub_1E3A258E4(Width);
  v5 = OUTLINED_FUNCTION_7_213();
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  [v5 bounds];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_51_0();
  nullsub_1();
  v7 = OUTLINED_FUNCTION_7_213();
  if (!v7)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v7;
  [v7 effectiveUserInterfaceLayoutDirection];

  OUTLINED_FUNCTION_51_0();
  sub_1E4206E44();
  OUTLINED_FUNCTION_3();
  v9 = OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_hostingController;
  v10 = *&v1[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_hostingController];
  if (v10)
  {
    v11 = v10;
    sub_1E4201E14();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [v1 traitCollection];
  [v14 displayScale];

  OUTLINED_FUNCTION_6();
  sub_1E4206E34();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v1 view];
  if (!v23)
  {
    goto LABEL_17;
  }

  v24 = v23;
  [v23 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v42.origin.x = v26;
  v42.origin.y = v28;
  v42.size.width = v30;
  v42.size.height = v32;
  CGRectGetHeight(v42);
  v43.origin.x = v16;
  v43.origin.y = v18;
  v43.size.width = v20;
  v43.size.height = v22;
  CGRectGetHeight(v43);
  v33 = *&v1[v9];
  if (!v33)
  {
    return;
  }

  v34 = [v33 view];
  if (!v34)
  {
    goto LABEL_18;
  }

  v35 = v34;
  v36 = [v1 view];
  if (!v36)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v37 = v36;
  [v36 bounds];

  v38 = [v1 view];
  if (!v38)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v39 = v38;
  [v38 vuiIsRTL];

  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  [v35 setFrame_];
}

void sub_1E3FDE3C0(void *a1)
{
  OUTLINED_FUNCTION_5_16();
  v12 = v1;
  v13 = type metadata accessor for ToastViewController();
  v5 = OUTLINED_FUNCTION_6_12();
  objc_msgSendSuper2(v6, v7, a1, v5);
  OUTLINED_FUNCTION_4_0();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v3;
  v9[4] = v2;
  v11[4] = sub_1E3FDF2B4;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E37C7850;
  v11[3] = &block_descriptor_152;
  v10 = _Block_copy(v11);

  [a1 animateAlongsideTransition:v10 completion:0];
  _Block_release(v10);
}

void sub_1E3FDE568(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *(v5 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_hostingController);
  if (v10)
  {
    v11 = v10;
    [v11 willMoveToParentViewController_];
    v12 = [v11 view];
    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = v12;
    [v12 removeFromSuperview];

    [v11 removeFromParentViewController];
  }

  (*(*a1 + 280))(a2 != 0);
  *(v5 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_toastModel) = a1;

  v14 = (v5 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_actionHandler);
  v15 = *(v5 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_actionHandler);
  v16 = *(v5 + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_actionHandler + 8);
  *v14 = a2;
  v14[1] = a3;
  sub_1E37FAED4(a2, a3);
  v17 = sub_1E37FAED8(v15, v16);
  if (a4)
  {
    MEMORY[0x1EEE9AC00](v17);
    sub_1E4203E44();
    sub_1E4200FE4();
  }

  else
  {
    sub_1E3FDD75C();
  }

  sub_1E3FDDAB8();
}

double sub_1E3FDE804()
{
  v0 = sub_1E4202514();
  OUTLINED_FUNCTION_1_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E4203E44();
  sub_1E4202504();
  sub_1E4200FD4();
  (*(v2 + 8))(v6, v0);

  return result;
}

id sub_1E3FDE9A4()
{
  OUTLINED_FUNCTION_0_8();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ToastPassthroughView();
  return OUTLINED_FUNCTION_9_175(v8.super_class, sel_initWithFrame_, v1, v2, v3, v4, v5, v6, v8);
}

id sub_1E3FDEA0C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ToastPassthroughView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3FDEAB4(uint64_t a1)
{
  OUTLINED_FUNCTION_5_16();
  v12 = v3();
  v4 = OUTLINED_FUNCTION_6_12();
  v7 = objc_msgSendSuper2(v5, v6, a1, v4, v1, v12);
  if (v7)
  {
    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    v8 = v7;
    v9 = v1;
    v10 = sub_1E4206F64();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

id sub_1E3FDEB9C(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_5_16();
  v5 = v4;
  v6 = a3;
  v7 = v5;
  OUTLINED_FUNCTION_6_12();
  v8 = sub_1E3FDEAB4(a3);

  return v8;
}

id sub_1E3FDEC1C(void *a1)
{
  v1[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC111ToastWindow_overridesOrientation] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ToastWindow();
  v3 = objc_msgSendSuper2(&v5, sel_initWithWindowScene_, a1);

  return v3;
}

id sub_1E3FDECA0()
{
  OUTLINED_FUNCTION_0_8();
  v0[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC111ToastWindow_overridesOrientation] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ToastWindow();
  return OUTLINED_FUNCTION_9_175(v8.super_class, sel_initWithFrame_, v1, v2, v3, v4, v5, v6, v8);
}

id sub_1E3FDED14(void *a1)
{
  v1[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC111ToastWindow_overridesOrientation] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ToastWindow();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E3FDEDC8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1E3FDEE3C(uint64_t a1)
{
  OUTLINED_FUNCTION_26_3();
  v3 = *((*MEMORY[0x1E69E7D40] & v2) + qword_1ECF719F0);
  OUTLINED_FUNCTION_1_2();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(v5 + 16))(&v11 - v8, a1, v3, v7);
  v9 = sub_1E4201E44();
  (*(v5 + 8))(a1, v3);
  return v9;
}

void *sub_1E3FDEF98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26_3();
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + qword_1ECF719F0);
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(v6 + 16))(&v14 - v9, v8);
  v10 = sub_1E4201E34();
  v11 = *(v6 + 8);
  v12 = v10;
  v11(a2, v4);
  if (v10)
  {
  }

  return v10;
}

id sub_1E3FDF0C4(void *a1)
{
  OUTLINED_FUNCTION_26_3();
  v5 = type metadata accessor for ToastHostingController(0, *((*MEMORY[0x1E69E7D40] & v3) + qword_1ECF719F0), *((*MEMORY[0x1E69E7D40] & v3) + qword_1ECF719F0 + 8), v4);
  v8.receiver = v1;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_1E3FDF1B0()
{
  OUTLINED_FUNCTION_26_3();
  v3 = type metadata accessor for ToastHostingController(0, *((*MEMORY[0x1E69E7D40] & v1) + qword_1ECF719F0), *((*MEMORY[0x1E69E7D40] & v1) + qword_1ECF719F0 + 8), v2);
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_1E3FDF2B4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong view];
    if (v5)
    {
      v6 = v5;
      [v5 setFrame_];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E3FDF36C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E3FDE804();
  }
}

void sub_1E3FDF3C8(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 184);

  v3(a1);
}

void sub_1E3FDF43C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_autoDismissWorkItem;
    if (*(Strong + OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_autoDismissWorkItem))
    {

      sub_1E4204034();
    }

    *&v2[v3] = 0;

    v4 = v2;
    v5 = [v4 parentViewController];
    if (v5)
    {

      [v4 willMoveToParentViewController_];
      v6 = [v4 view];

      if (!v6)
      {
        __break(1u);
        return;
      }

      [v6 removeFromSuperview];

      [v4 removeFromParentViewController];
    }

    else
    {

      if (qword_1ECF6A898)
      {
        [qword_1ECF6A898 resignKeyWindow];
        v7 = qword_1ECF6A898;
      }

      else
      {
        v7 = 0;
      }

      qword_1ECF6A898 = 0;
    }
  }
}

void sub_1E3FDF570(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E3FDE804();
    v3 = *&v2[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_actionHandler];
    if (v3)
    {
      v4 = *&v2[OBJC_IVAR____TtC8VideosUIP33_CEC0FAA63D95F28694C5A7BD137F0AC119ToastViewController_actionHandler + 8];

      v3(v5);
      sub_1E37FAED8(v3, v4);
    }
  }
}

id sub_1E3FDF644()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_sortedPlays;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_sortedPlays);
  v4 = sub_1E32AE9B0(v3);

  for (i = 0; v4 != i; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1E6911E60](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if (!sub_1E3FDF778())
    {
      goto LABEL_14;
    }
  }

  v1 = *(v1 + v2);
  result = sub_1E32AE9B0(v1);
  if (!result)
  {
    return 0;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_19:

    v7 = MEMORY[0x1E6911E60](0, v1);
LABEL_14:

    return v7;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v1 + 32);
  }

  __break(1u);
  return result;
}

BOOL sub_1E3FDF778()
{
  v0 = sub_1E4205734();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E42051D4();
  if (v7)
  {
    v8 = v7;
    v9 = (*(v2 + 104))(v6, *MEMORY[0x1E69D3B50], v0);
    MEMORY[0x1EEE9AC00](v9);
    *&v12[-16] = v6;
    v10 = sub_1E3FDFA68(sub_1E3FE15F8, &v12[-32], v8);

    (*(v2 + 8))(v6, v0);
  }

  else
  {
    return 0;
  }

  return v10;
}

void sub_1E3FDF8C0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E42051B4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_includeChildPlays) != 1)
  {
    goto LABEL_15;
  }

  v8 = OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_sortedPlays;
  if (sub_1E32AE9B0(*(v0 + OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_sortedPlays)) > 1)
  {
LABEL_14:

LABEL_15:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v9 = *(v0 + v8);
  v10 = sub_1E32AE9B0(v9);
  v11 = (v3 + 8);

  v12 = 0;
  while (1)
  {
    if (v10 == v12)
    {

      goto LABEL_15;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1E6911E60](v12, v9);
    }

    else
    {
      if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v13 = *(v9 + 8 * v12 + 32);
    }

    v14 = v13;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    sub_1E42051C4();
    sub_1E42050C4();
    v16 = v15;

    (*v11)(v7, v1);
    ++v12;
    if (v16)
    {

      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

BOOL sub_1E3FDFA68(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_1E4205734() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

void sub_1E3FDFB3C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_allocObject();
  sub_1E3FDFB90(a1, a2, v3);
}

void sub_1E3FDFB90(uint64_t a1, unint64_t a2, char a3)
{
  *(v3 + OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_playMap) = MEMORY[0x1E69E7CC8];
  *(v3 + OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_sortedPlays) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_237();
  v34 = v7;
  sub_1E3FE21D8(v7, v3 + v6);
  *(v3 + OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_includeChildPlays) = a3;
  v8 = sub_1E3B500B4();
  v37 = sub_1E32AE9B0(a2);
  v9 = OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_playMap;

  v10 = 0;
  v35 = v8;
  v36 = v9;
  while (1)
  {
    if (v37 == v10)
    {

      swift_beginAccess();

      v38 = sub_1E3FE153C(v32);
      sub_1E3FE14C0(&v38);

      OUTLINED_FUNCTION_2_237();
      sub_1E3FE2254(v34, v33);
      *(v8 + OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_sortedPlays) = v38;

      return;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E6911E60](v10, a2);
    }

    else
    {
      if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v11 = *(a2 + 8 * v10 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    v13 = sub_1E4205204();
    if (v14)
    {
      v15 = v13;
      v16 = v14;
      swift_beginAccess();
      v17 = v12;
      swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v8 + v9);
      v18 = v38;
      *(v8 + v9) = 0x8000000000000000;
      v19 = v15;
      v20 = sub_1E327D33C(v15, v16);
      if (__OFADD__(*(v18 + 16), (v21 & 1) == 0))
      {
        goto LABEL_22;
      }

      v22 = v20;
      v9 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8C0, &qword_1E42E3500);
      if (sub_1E4207644())
      {
        v23 = sub_1E327D33C(v19, v16);
        if ((v9 & 1) != (v24 & 1))
        {
          goto LABEL_24;
        }

        v22 = v23;
      }

      if (v9)
      {

        v25 = v38;
        v26 = v38[7];
        v27 = *(v26 + 8 * v22);
        *(v26 + 8 * v22) = v17;
      }

      else
      {
        v25 = v38;
        v38[(v22 >> 6) + 8] |= 1 << v22;
        v28 = (v25[6] + 16 * v22);
        *v28 = v19;
        v28[1] = v16;
        *(v25[7] + 8 * v22) = v17;
        v29 = v25[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_23;
        }

        v25[2] = v31;
      }

      v8 = v35;
      v9 = v36;
      *(v35 + v36) = v25;
      swift_endAccess();
    }

    ++v10;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1E4207A74();
  __break(1u);

  __break(1u);
}

uint64_t sub_1E3FDFEA4(void *a1)
{
  v2 = v1;
  result = sub_1E4205204();
  if (v5)
  {
    v6 = result;
    v7 = v5;
    v8 = OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_playMap;
    swift_beginAccess();
    v9 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v2 + v8);
    sub_1E3FE209C(v9, v6, v7, isUniquelyReferenced_nonNull_native);
    *(v2 + v8) = v12;

    swift_endAccess();

    v13[0] = sub_1E3FE153C(v11);
    sub_1E3FE14C0(v13);

    *(v2 + OBJC_IVAR____TtC8VideosUI15SportsPlayGroup_sortedPlays) = v13[0];
  }

  return result;
}

uint64_t sub_1E3FDFFDC()
{
  OUTLINED_FUNCTION_2_237();
  sub_1E3FE2254(v0 + v1, v2);
}

uint64_t sub_1E3FE0038()
{
  v0 = sub_1E3B4FF80();
  OUTLINED_FUNCTION_2_237();
  sub_1E3FE2254(v1 + v2, v3);

  return v0;
}

uint64_t sub_1E3FE0094()
{
  v0 = sub_1E3FE0038();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E3FE00E8()
{
  OUTLINED_FUNCTION_31_1();
  v108 = v0;
  v2 = v1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDA0, &unk_1E42E44D0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  v99 = &v95 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90, &unk_1E42A6300);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v97 = v7 - v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v95 - v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v95 - v12;
  sub_1E4205784();
  OUTLINED_FUNCTION_0_10();
  v106 = v14;
  v107 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v102 = (v15 - v16);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v95 - v18;
  sub_1E4205B24();
  OUTLINED_FUNCTION_0_10();
  v104 = v20;
  v105 = v19;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v96 = v21 - v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v95 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v95 - v27;
  type metadata accessor for SportsPlayIndex.IndexType(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v32 = (v30 - v31);
  MEMORY[0x1EEE9AC00](v33);
  v35 = (&v95 - v34);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v95 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC28, &qword_1E42E4080);
  v40 = OUTLINED_FUNCTION_17_2(v39);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v95 - v41;
  v44 = (&v95 + *(v43 + 56) - v41);
  sub_1E3FE21D8(v2, &v95 - v41);
  sub_1E3FE21D8(v108, v44);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_0_314();
      sub_1E3FE21D8(v42, v35);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC38, &qword_1E42E67C0);
      v47 = *(v46 + 48);
      v48 = *(v46 + 64);
      v49 = *(v35 + v48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v50 = *v35;
        v107 = v49;
        v108 = v50;
        v51 = *v44;
        v106 = *(v44 + v48);
        v52 = v104;
        v53 = *(v104 + 32);
        v54 = v35 + v47;
        v55 = v105;
        v53(v28, v54, v105);
        v53(v25, v44 + v47, v55);
        if (v108 == v51)
        {
          v56 = sub_1E4205B14();
          v57 = *(v52 + 8);
          v57(v25, v55);
          v57(v28, v55);
          if (v56)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v81 = *(v52 + 8);
          v81(v25, v55);
          v81(v28, v55);
        }

LABEL_24:
        OUTLINED_FUNCTION_8_187();
        goto LABEL_25;
      }

      (*(v104 + 8))(v35 + v47, v105);
    }

    else
    {
      OUTLINED_FUNCTION_0_314();
      sub_1E3FE21D8(v42, v32);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC30, qword_1E42E4088);
      v59 = *(v58 + 48);
      v60 = *(v58 + 64);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v108 = *v32;
        v95 = *v44;
        v62 = v106;
        v61 = v107;
        v63 = *(v106 + 32);
        v64 = v100;
        v63(v100, v32 + v59, v107);
        v65 = v32 + v60;
        v66 = v103;
        sub_1E385BA30(v65, v103);
        v67 = v44 + v59;
        v68 = v102;
        v63(v102, v67, v61);
        v69 = v101;
        sub_1E385BA30(v44 + v60, v101);
        if (v108 != v95)
        {
          OUTLINED_FUNCTION_45_3(v69);
          v82 = *(v62 + 8);
          v82(v68, v61);
          OUTLINED_FUNCTION_45_3(v66);
          v82(v64, v61);
          goto LABEL_24;
        }

        v70 = v64;
        if ((sub_1E3FE0A34() & 1) == 0)
        {
          OUTLINED_FUNCTION_45_3(v69);
          v83 = *(v106 + 8);
          v84 = v107;
          v83(v68, v107);
          OUTLINED_FUNCTION_45_3(v66);
          v83(v64, v84);
          goto LABEL_24;
        }

        v71 = v99;
        v72 = *(v98 + 48);
        sub_1E385B9C0(v66, v99);
        sub_1E385B9C0(v69, v71 + v72);
        v73 = v69;
        v74 = v105;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v105);
        v76 = v66;
        v77 = v106;
        if (EnumTagSinglePayload == 1)
        {
          sub_1E325F6F0(v73, &qword_1ECF2BD90, &unk_1E42A6300);
          v78 = *(v77 + 8);
          v79 = v68;
          v80 = v107;
          v78(v79, v107);
          sub_1E325F6F0(v76, &qword_1ECF2BD90, &unk_1E42A6300);
          v78(v70, v80);
          if (__swift_getEnumTagSinglePayload(v71 + v72, 1, v74) == 1)
          {
            sub_1E325F6F0(v71, &qword_1ECF2BD90, &unk_1E42A6300);
            goto LABEL_24;
          }
        }

        else
        {
          v85 = v97;
          sub_1E385B9C0(v71, v97);
          if (__swift_getEnumTagSinglePayload(v71 + v72, 1, v74) != 1)
          {
            v88 = v104;
            v89 = v96;
            (*(v104 + 32))(v96, v71 + v72, v74);
            OUTLINED_FUNCTION_3_238();
            sub_1E3FE22AC(v90, v91, MEMORY[0x1E69D3CD8]);
            LODWORD(v108) = sub_1E4205E84();
            v92 = *(v88 + 8);
            v92(v89, v74);
            sub_1E325F6F0(v101, &qword_1ECF2BD90, &unk_1E42A6300);
            v93 = *(v77 + 8);
            v94 = v107;
            v93(v102, v107);
            sub_1E325F6F0(v103, &qword_1ECF2BD90, &unk_1E42A6300);
            v93(v100, v94);
            v92(v97, v74);
            sub_1E325F6F0(v71, &qword_1ECF2BD90, &unk_1E42A6300);
            goto LABEL_24;
          }

          OUTLINED_FUNCTION_45_3(v101);
          v86 = *(v77 + 8);
          v87 = v107;
          v86(v102, v107);
          OUTLINED_FUNCTION_45_3(v103);
          v86(v70, v87);
          (*(v104 + 8))(v85, v74);
        }

        sub_1E325F6F0(v71, &qword_1ECF2BDA0, &unk_1E42E44D0);
        goto LABEL_24;
      }

      sub_1E325F6F0(v32 + v60, &qword_1ECF2BD90, &unk_1E42A6300);
      (*(v106 + 8))(v32 + v59, v107);
    }

LABEL_17:
    sub_1E325F6F0(v42, &qword_1ECF3DC28, &qword_1E42E4080);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_0_314();
  sub_1E3FE21D8(v42, v38);
  if (swift_getEnumCaseMultiPayload())
  {
    goto LABEL_17;
  }

LABEL_8:
  sub_1E3FE2254(v42, type metadata accessor for SportsPlayIndex.IndexType);
LABEL_25:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FE0A34()
{
  sub_1E4205784();
  sub_1E3FE22AC(&qword_1ECF2BDB8, MEMORY[0x1E69D3C00], MEMORY[0x1E69D3C18]);
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

void sub_1E3FE0B14()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90, &unk_1E42A6300);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = sub_1E4205784();
  OUTLINED_FUNCTION_0_10();
  v40 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E4205B24();
  OUTLINED_FUNCTION_0_10();
  v39 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  type metadata accessor for SportsPlayIndex.IndexType(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = (v23 - v22);
  OUTLINED_FUNCTION_0_314();
  sub_1E3FE21D8(v0, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = *v24;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC38, &qword_1E42E67C0);
      v28 = *&v24[*(v27 + 64)];
      v29 = v39;
      (*(v39 + 32))(v20, &v24[*(v27 + 48)], v15);
      MEMORY[0x1E69124B0](1);
      MEMORY[0x1E69124B0](v26);
      OUTLINED_FUNCTION_3_238();
      v32 = sub_1E3FE22AC(v30, v31, MEMORY[0x1E69D3CD0]);
      OUTLINED_FUNCTION_15_159(v32);
      MEMORY[0x1E69124B0](v28);
      (*(v29 + 8))(v20, v15);
    }

    else
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC30, qword_1E42E4088);
      v34 = *(v33 + 64);
      (*(v40 + 32))(v14, &v24[*(v33 + 48)], v9);
      sub_1E385BA30(&v24[v34], v8);
      MEMORY[0x1E69124B0](2);
      MEMORY[0x1E69124B0](v26);
      sub_1E3FE22AC(&qword_1ECF3DC40, MEMORY[0x1E69D3C00], MEMORY[0x1E69D3C08]);
      sub_1E4205DB4();
      sub_1E385B9C0(v8, v5);
      if (__swift_getEnumTagSinglePayload(v5, 1, v15) == 1)
      {
        sub_1E4207B64();
      }

      else
      {
        v35 = v39;
        (*(v39 + 32))(v20, v5, v15);
        sub_1E4207B64();
        OUTLINED_FUNCTION_3_238();
        v38 = sub_1E3FE22AC(v36, v37, MEMORY[0x1E69D3CD0]);
        OUTLINED_FUNCTION_15_159(v38);
        (*(v35 + 8))(v20, v15);
      }

      sub_1E325F6F0(v8, &qword_1ECF2BD90, &unk_1E42A6300);
      (*(v40 + 8))(v14, v9);
    }
  }

  else
  {
    MEMORY[0x1E69124B0](0);
    MEMORY[0x1E69124B0](v26);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FE0F40()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90, &unk_1E42A6300);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v45 - v6;
  v8 = sub_1E4205B24();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = (v13 - v12);
  v15 = type metadata accessor for SportsPlayIndex(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = (v18 - v17);
  v20 = sub_1E4205224();
  if ((v21 & 1) == 0)
  {
    v27 = v20;
    v28 = sub_1E4205214();
    if (!v28 || (v29 = v28, v48 = v10, v30 = sub_1E4205294(), v29, v47 = sub_1E4205534(), LOBYTE(v29) = v31, v30, (v29 & 1) != 0))
    {

      goto LABEL_18;
    }

    v32 = sub_1E4205214();
    if (v32)
    {
      v33 = v32;
      v34 = sub_1E4205294();

      sub_1E4205504();
      if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
      {
        v46 = *(v48 + 32);
        v46(v14, v7, v8);
        v35 = sub_1E4205214();
        if (v35 && (v36 = v35, v37 = sub_1E4205294(), v36, v38 = sub_1E42054F4(), v37, v38) && (v45 = sub_1E4205534(), v40 = v39, v38, (v40 & 1) == 0))
        {
          v41 = sub_1E40310B0();

          if (!v41)
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC38, &qword_1E42E67C0);
            v43 = *(v42 + 48);
            v44 = *(v42 + 64);
            *v19 = v47;
            v46(v19 + v43, v14, v8);
            *(v19 + v44) = v45;
            goto LABEL_19;
          }
        }

        else
        {
        }

        (*(v48 + 8))(v14, v8);
LABEL_18:
        *v19 = v27;
LABEL_19:
        type metadata accessor for SportsPlayIndex.IndexType(0);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_4_237();
        sub_1E3FE22F4(v19, v3);
        __swift_storeEnumTagSinglePayload(v3, 0, 1, v15);
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    else
    {

      __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
    }

    sub_1E325F6F0(v7, &qword_1ECF2BD90, &unk_1E42A6300);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
}

uint64_t sub_1E3FE12A0@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC30, qword_1E42E4088);
  v5 = *(v4 + 48);
  v6 = *(v4 + 64);
  *a2 = *a1;
  v7 = type metadata accessor for SportsPlayPeriod(0);
  v8 = *(v7 + 20);
  sub_1E4205784();
  OUTLINED_FUNCTION_2();
  (*(v9 + 16))(&a2[v5], &a1[v8]);
  sub_1E385B9C0(&a1[*(v7 + 24)], &a2[v6]);
  sub_1E3FE2254(a1, type metadata accessor for SportsPlayPeriod);
  type metadata accessor for SportsPlayIndex.IndexType(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E3FE13AC()
{
  sub_1E4207B44();
  sub_1E3FE0B14();
  return sub_1E4207BA4();
}

uint64_t sub_1E3FE13F0(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E3FE0B14();
  return sub_1E4207BA4();
}

uint64_t sub_1E3FE1430(uint64_t a1, uint64_t a2)
{
  sub_1E4205734();
  sub_1E3FE22AC(&qword_1ECF3DC78, MEMORY[0x1E69D3B58], MEMORY[0x1E69D3B60]);
  return sub_1E4205E84() & 1;
}

uint64_t sub_1E3FE14C0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1E34AF5E0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1E3FE1618(v6);
  return sub_1E4207554();
}

void *sub_1E3FE153C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1E37FEA14(*(a1 + 16), 0);
  v4 = sub_1E3FE26F4(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_1E34AF4DC(v5);
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1E3FE1618(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1E4207914();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1E37FE4E4(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1E3FE17F0(v8, v9, a1, v5);
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
    sub_1E3FE16F8(0, v3, 1, a1);
  }
}

void sub_1E3FE16F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v21 = v7;
      v22 = v6;
      do
      {
        v9 = *v6;
        v10 = v8;
        v11 = v9;
        v12 = sub_1E4205224();
        if (v13)
        {
          v14 = -1;
        }

        else
        {
          v14 = v12;
        }

        v15 = sub_1E4205224();
        v17 = v16;

        if (v17)
        {
          if (v14 < 0)
          {
            break;
          }
        }

        else if (v15 >= v14)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v18;
        v6 -= 8;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v6 = v22 + 8;
      v7 = v21 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1E3FE17F0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v104 = v6;
        v99 = v7;
        v101 = v8;
        v11 = (*a3 + 8 * v7);
        v12 = 8 * v7;
        v14 = *v11;
        v13 = v11 + 2;
        v15 = *(*a3 + 8 * v10);
        v16 = v14;
        v17 = OUTLINED_FUNCTION_17_141();
        if (v18)
        {
          v19 = -1;
        }

        else
        {
          v19 = v17;
        }

        v109 = v19;
        sub_1E4205224();
        OUTLINED_FUNCTION_16_146();

        if (v5)
        {
          v20 = -1;
        }

        else
        {
          v20 = v4;
        }

        v106 = v20;
        while (1)
        {
          v21 = v10 + 1;
          v22 = v104;
          if (v10 + 1 >= v104)
          {
            break;
          }

          v23 = v10;
          v24 = *(v13 - 1);
          v25 = *v13;
          v26 = v24;
          v27 = OUTLINED_FUNCTION_17_141();
          if (v28)
          {
            v29 = -1;
          }

          else
          {
            v29 = v27;
          }

          sub_1E4205224();
          OUTLINED_FUNCTION_16_146();

          if (v5)
          {
            if (v106 < v109 == v29 < 0)
            {
              v22 = v21;
              break;
            }
          }

          else if (v106 < v109 == v4 >= v29)
          {
            v22 = v23 + 1;
            break;
          }

          ++v13;
          v10 = v21;
        }

        v9 = v99;
        v8 = v101;
        if (v106 < v109)
        {
          if (v22 < v99)
          {
            goto LABEL_138;
          }

          if (v99 < v22)
          {
            v30 = 8 * v22 - 8;
            v31 = v22;
            v32 = v99;
            do
            {
              if (v32 != --v31)
              {
                v33 = *a3;
                if (!*a3)
                {
                  goto LABEL_145;
                }

                v34 = *(v33 + v12);
                *(v33 + v12) = *(v33 + v30);
                *(v33 + v30) = v34;
              }

              ++v32;
              v30 -= 8;
              v12 += 8;
            }

            while (v32 < v31);
          }
        }

        v10 = v22;
      }

      v35 = a3[1];
      if (v10 < v35)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_137;
        }

        if (v10 - v9 < a4)
        {
          v36 = v9 + a4;
          if (__OFADD__(v9, a4))
          {
            goto LABEL_139;
          }

          if (v36 >= v35)
          {
            v36 = a3[1];
          }

          if (v36 >= v9)
          {
            if (v10 == v36)
            {
              goto LABEL_52;
            }

            v100 = v9;
            v102 = v8;
            v37 = *a3;
            v38 = *a3 + 8 * v10 - 8;
            v39 = v9 - v10;
            v105 = v36;
LABEL_39:
            v107 = v38;
            v110 = v10;
            v40 = *(v37 + 8 * v10);
            v41 = v39;
            v42 = v38;
            while (1)
            {
              v43 = *v42;
              v44 = v40;
              v45 = v43;
              v46 = OUTLINED_FUNCTION_17_141();
              v48 = (v47 & 1) != 0 ? -1 : v46;
              sub_1E4205224();
              OUTLINED_FUNCTION_16_146();

              if (v5)
              {
                if (v48 < 0)
                {
                  goto LABEL_50;
                }
              }

              else if (v4 >= v48)
              {
                goto LABEL_50;
              }

              if (!v37)
              {
                break;
              }

              v49 = *v42;
              v40 = *(v42 + 8);
              *v42 = v40;
              *(v42 + 8) = v49;
              v42 -= 8;
              if (__CFADD__(v41++, 1))
              {
LABEL_50:
                v10 = v110 + 1;
                v38 = v107 + 8;
                --v39;
                if (v110 + 1 == v105)
                {
                  v10 = v105;
                  v9 = v100;
                  v8 = v102;
                  goto LABEL_52;
                }

                goto LABEL_39;
              }
            }

            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
            goto LABEL_146;
          }

LABEL_140:
          __break(1u);
LABEL_141:
          v8 = sub_1E37FFF5C(v8);
          goto LABEL_107;
        }
      }

LABEL_52:
      if (v10 < v9)
      {
        goto LABEL_136;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1E37FFF70(0, *(v8 + 2) + 1, 1, v8);
      }

      v52 = *(v8 + 2);
      v51 = *(v8 + 3);
      v53 = v52 + 1;
      if (v52 >= v51 >> 1)
      {
        v8 = sub_1E37FFF70((v51 > 1), v52 + 1, 1, v8);
      }

      *(v8 + 2) = v53;
      v5 = v8 + 32;
      v54 = &v8[16 * v52 + 32];
      *v54 = v9;
      *(v54 + 1) = v10;
      v108 = *a1;
      if (!*a1)
      {
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      v111 = v10;
      if (v52)
      {
        break;
      }

LABEL_101:
      v7 = v111;
      v6 = a3[1];
      if (v111 >= v6)
      {
        goto LABEL_105;
      }
    }

    while (1)
    {
      v55 = v53 - 1;
      v56 = &v5[16 * v53 - 16];
      v57 = &v8[16 * v53];
      if (v53 >= 4)
      {
        break;
      }

      if (v53 == 3)
      {
        v58 = *(v8 + 4);
        v59 = *(v8 + 5);
        v68 = __OFSUB__(v59, v58);
        v60 = v59 - v58;
        v61 = v68;
LABEL_72:
        if (v61)
        {
          goto LABEL_123;
        }

        v73 = *v57;
        v72 = *(v57 + 1);
        v74 = __OFSUB__(v72, v73);
        v75 = v72 - v73;
        v76 = v74;
        if (v74)
        {
          goto LABEL_126;
        }

        v77 = *(v56 + 1);
        v78 = v77 - *v56;
        if (__OFSUB__(v77, *v56))
        {
          goto LABEL_129;
        }

        if (__OFADD__(v75, v78))
        {
          goto LABEL_131;
        }

        if (v75 + v78 >= v60)
        {
          if (v60 < v78)
          {
            v55 = v53 - 2;
          }

          goto LABEL_94;
        }

        goto LABEL_87;
      }

      if (v53 < 2)
      {
        goto LABEL_125;
      }

      v80 = *v57;
      v79 = *(v57 + 1);
      v68 = __OFSUB__(v79, v80);
      v75 = v79 - v80;
      v76 = v68;
LABEL_87:
      if (v76)
      {
        goto LABEL_128;
      }

      v82 = *v56;
      v81 = *(v56 + 1);
      v68 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v68)
      {
        goto LABEL_130;
      }

      if (v83 < v75)
      {
        goto LABEL_101;
      }

LABEL_94:
      if (v55 - 1 >= v53)
      {
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
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
LABEL_131:
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
        goto LABEL_140;
      }

      if (!*a3)
      {
        goto LABEL_143;
      }

      v87 = &v5[16 * v55 - 16];
      v88 = *v87;
      v4 = &v5[16 * v55];
      v89 = *(v4 + 1);
      sub_1E3FE1E38((*a3 + 8 * *v87), (*a3 + 8 * *v4), (*a3 + 8 * v89), v108);
      if (v113)
      {
        goto LABEL_115;
      }

      if (v89 < v88)
      {
        goto LABEL_118;
      }

      v9 = v8;
      v8 = *(v8 + 2);
      if (v55 > v8)
      {
        goto LABEL_119;
      }

      *v87 = v88;
      *(v87 + 1) = v89;
      if (v55 >= v8)
      {
        goto LABEL_120;
      }

      v113 = 0;
      v53 = (v8 - 1);
      memmove(&v5[16 * v55], v4 + 16, 16 * &v8[-v55 - 1]);
      v9[2] = v8 - 1;
      v90 = v8 > 2;
      v8 = v9;
      if (!v90)
      {
        goto LABEL_101;
      }
    }

    v62 = &v5[16 * v53];
    v63 = *(v62 - 8);
    v64 = *(v62 - 7);
    v68 = __OFSUB__(v64, v63);
    v65 = v64 - v63;
    if (v68)
    {
      goto LABEL_121;
    }

    v67 = *(v62 - 6);
    v66 = *(v62 - 5);
    v68 = __OFSUB__(v66, v67);
    v60 = v66 - v67;
    v61 = v68;
    if (v68)
    {
      goto LABEL_122;
    }

    v69 = *(v57 + 1);
    v70 = v69 - *v57;
    if (__OFSUB__(v69, *v57))
    {
      goto LABEL_124;
    }

    v68 = __OFADD__(v60, v70);
    v71 = v60 + v70;
    if (v68)
    {
      goto LABEL_127;
    }

    if (v71 >= v65)
    {
      v85 = *v56;
      v84 = *(v56 + 1);
      v68 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v68)
      {
        goto LABEL_135;
      }

      if (v60 < v86)
      {
        v55 = v53 - 2;
      }

      goto LABEL_94;
    }

    goto LABEL_72;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_105:
  v9 = *a1;
  if (!*a1)
  {
LABEL_147:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_141;
  }

LABEL_107:
  v91 = v8 + 16;
  v92 = *(v8 + 2);
  while (v92 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_144;
    }

    v93 = v8;
    v8 += 16 * v92;
    v94 = *v8;
    v95 = &v91[2 * v92];
    v96 = v95[1];
    sub_1E3FE1E38((*a3 + 8 * *v8), (*a3 + 8 * *v95), (*a3 + 8 * v96), v9);
    if (v113)
    {
      break;
    }

    if (v96 < v94)
    {
      goto LABEL_132;
    }

    if (v92 - 2 >= *v91)
    {
      goto LABEL_133;
    }

    *v8 = v94;
    *(v8 + 1) = v96;
    v97 = *v91 - v92;
    if (*v91 < v92)
    {
      goto LABEL_134;
    }

    v113 = 0;
    v92 = *v91 - 1;
    memmove(v95, v95 + 2, 16 * v97);
    *v91 = v92;
    v8 = v93;
  }

LABEL_115:
}

uint64_t sub_1E3FE1E38(void **__dst, id *__src, id *a3, void **a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = a3 - __src;
  if (v9 < v10)
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v12 = &v5[v9];
    v43 = v12;
    while (1)
    {
      if (v5 >= v12 || v7 >= v6)
      {
        v24 = v8;
        goto LABEL_48;
      }

      v14 = v7;
      v15 = *v5;
      v16 = *v7;
      v17 = v15;
      v18 = OUTLINED_FUNCTION_17_141();
      if (v19)
      {
        v20 = -1;
      }

      else
      {
        v20 = v18;
      }

      sub_1E4205224();
      OUTLINED_FUNCTION_16_146();

      if (v7)
      {
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (v4 < v20)
      {
LABEL_17:
        v21 = v7++;
        v22 = v8 == v14;
        goto LABEL_20;
      }

      v21 = v5;
      v22 = v8 == v5++;
LABEL_20:
      v12 = v43;
      if (!v22)
      {
        *v8 = *v21;
      }

      ++v8;
    }
  }

  if (a4 != __src || &__src[v10] <= a4)
  {
    memmove(a4, __src, 8 * v10);
  }

  v12 = &v5[v10];
  v41 = v8;
LABEL_29:
  v24 = v7--;
  --v6;
  v42 = v24;
  while (v12 > v5 && v24 > v8)
  {
    v26 = v5;
    v44 = v12;
    v27 = v12 - 1;
    v28 = v7;
    v29 = *v7;
    v30 = *(v12 - 1);
    v31 = v29;
    v32 = sub_1E4205224();
    if (v33)
    {
      v34 = -1;
    }

    else
    {
      v34 = v32;
    }

    v35 = sub_1E4205224();
    v37 = v36;

    if (v37)
    {
      v7 = v28;
      v24 = v42;
      if ((v34 & 0x8000000000000000) == 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v7 = v28;
      v24 = v42;
      if (v35 < v34)
      {
LABEL_45:
        v5 = v26;
        v8 = v41;
        v12 = v44;
        if (v6 + 1 != v24)
        {
          *v6 = *v7;
        }

        goto LABEL_29;
      }
    }

    if (v44 != v6 + 1)
    {
      *v6 = *v27;
    }

    --v6;
    v12 = v27;
    v5 = v26;
    v8 = v41;
  }

LABEL_48:
  v38 = v12 - v5;
  if (v24 != v5 || v24 >= &v5[v38])
  {
    memmove(v24, v5, 8 * v38);
  }

  return 1;
}

void sub_1E3FE209C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8C0, &qword_1E42E3500);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E327D33C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;
  }

  else
  {
    sub_1E377E1B0(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_1E3FE21D8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_106();
  v5(v4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1E3FE2254(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E3FE22AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3FE22F4(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_106();
  v5(v4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1E3FE2408(uint64_t a1)
{
  result = type metadata accessor for SportsPlayIndex.IndexType(319);
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

uint64_t sub_1E3FE24D8(uint64_t a1)
{
  result = type metadata accessor for SportsPlayIndex.IndexType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1E3FE254C(uint64_t a1)
{
  sub_1E3FE25D4();
  if (v1 <= 0x3F)
  {
    sub_1E3FE25FC(319);
    if (v2 <= 0x3F)
    {
      sub_1E3FE266C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1E3FE25D4()
{
  result = qword_1ECF3DC60;
  if (!qword_1ECF3DC60)
  {
    result = MEMORY[0x1E69E6530];
    atomic_store(MEMORY[0x1E69E6530], &qword_1ECF3DC60);
  }

  return result;
}

void sub_1E3FE25FC(uint64_t a1)
{
  if (!qword_1ECF3DC68)
  {
    sub_1E4205B24();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECF3DC68);
    }
  }
}

void sub_1E3FE266C(uint64_t a1)
{
  if (!qword_1ECF3DC70)
  {
    sub_1E4205784();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BD90, &unk_1E42A6300);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1ECF3DC70);
    }
  }
}

void *sub_1E3FE26F4(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = *(*(a4 + 56) + ((v15 << 9) | (8 * v16)));
      *v11 = v17;
      if (v14 == v10)
      {
        v18 = v17;
        v13 = v15;
        goto LABEL_20;
      }

      ++v11;
      result = v17;
      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3FE2868@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FE2854();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3FE28BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FE28A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3FE28FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v8 = a1[1];

  return sub_1E3FE2A50(v9, v8, a5, a6);
}

uint64_t sub_1E3FE2968@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FE2954();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3FE29BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FE29A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3FE2A10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FE29FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E3FE2A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  OUTLINED_FUNCTION_68_3();
  return sub_1E4200684();
}

unint64_t sub_1E3FE2AD4(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

unint64_t sub_1E3FE2AE4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E3FE2AD4(*a1);
  *a2 = result;
  return result;
}

void sub_1E3FE2B20(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF34380, qword_1E42BF480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v5 = *MEMORY[0x1E69DD958];
  *(inited + 32) = *MEMORY[0x1E69DD958];
  *(inited + 64) = MEMORY[0x1E69E6370];
  *(inited + 40) = 1;
  type metadata accessor for Key(0);
  OUTLINED_FUNCTION_0_315();
  sub_1E3FE5734(v6, v7, &unk_1E429A0E0);

  v8 = v5;
  OUTLINED_FUNCTION_34();
  v9 = sub_1E4205CB4();
  v10 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v11 = sub_1E376403C(a1, a2, v9);
  UIAccessibilityPostNotification(*MEMORY[0x1E69DD888], v11);
}

uint64_t sub_1E3FE2C60()
{
  v0 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = [objc_opt_self() defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_238();
  sub_1E3FE5734(v8, v9, MEMORY[0x1E6969F18]);
  v10 = sub_1E42006B4();
  (*(v2 + 8))(v6, v0);
  return v10;
}

uint64_t sub_1E3FE2D8C()
{
  v1 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel____lazy_storage___announcementQueue;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel____lazy_storage___announcementQueue))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel____lazy_storage___announcementQueue);
  }

  else
  {
    v3 = v0;
    type metadata accessor for SportsVoiceOverAnnouncementQueue();
    v5[3] = &type metadata for SportsVoiceOverViewModel.SportsVoiceOverInterface;
    v5[4] = &off_1F5D915F8;
    v2 = sub_1E418C7C0(v5);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E3FE2E1C()
{
  v0 = swift_allocObject();
  sub_1E3FE2E54();
  return v0;
}

uint64_t sub_1E3FE2E54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498, &unk_1E42C1E70);
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  sub_1E4200634();
  v4 = *(v2 + 32);
  v5 = OUTLINED_FUNCTION_8_7();
  v4(v5);
  OUTLINED_FUNCTION_4_142();
  v6 = OUTLINED_FUNCTION_8_7();
  v4(v6);
  OUTLINED_FUNCTION_4_142();
  v7 = OUTLINED_FUNCTION_8_7();
  v4(v7);
  OUTLINED_FUNCTION_4_142();
  v8 = OUTLINED_FUNCTION_8_7();
  v4(v8);
  OUTLINED_FUNCTION_4_142();
  v9 = OUTLINED_FUNCTION_8_7();
  v4(v9);
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_competitors) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverUtility) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_runningClockViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_cancellables) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_timerQueued) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_clockErrorActive) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel____lazy_storage___announcementQueue) = 0;
  sub_1E3FE3008();
  return v0;
}

void sub_1E3FE3008()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = objc_opt_self();
  v8 = [v7 defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_4_238();
  sub_1E3FE5734(v9, v10, MEMORY[0x1E6969F18]);
  sub_1E4200844();

  v11 = *(v2 + 8);
  v11(v6, v0);
  OUTLINED_FUNCTION_26_112();
  sub_1E42004C4();
  swift_endAccess();

  v12 = [v7 defaultCenter];
  sub_1E4206C14();

  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_weakInit();
  sub_1E4200844();

  v11(v6, v0);
  OUTLINED_FUNCTION_26_112();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FE3268(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v7 = a1;
  v115 = &type metadata for ViewModelKeys.Sports;
  v116 = &off_1F5D7BC68;
  LOBYTE(v114[0]) = 6;
  sub_1E3F9F164(v114, a1, MEMORY[0x1E69E7CA0] + 8);
  if (!v119.name._object)
  {
    __swift_destroy_boxed_opaque_existential_1(v114);
    sub_1E325F6F0(&v119, &unk_1ECF296E0, &unk_1E4298030);
LABEL_28:
    v76 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v77 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_competitors;
    swift_beginAccess();
    *(v4 + v77) = v76;

    type metadata accessor for SportsVoiceOverUtility(0);
    if (a3)
    {
      sub_1E38EB2E4(v7, a2);
      v80 = &unk_1E42E4290;
      v81 = &unk_1E42E42B8;
    }

    else
    {
      v82 = sub_1E38EA474(v7, a2, 1);
      sub_1E3FE2A50(v82, v83, &unk_1E42E41B8, &unk_1E42E41E0);
      v78 = sub_1E38EA474(v7, a2, 0);
      v80 = &unk_1E42E4200;
      v81 = &unk_1E42E4228;
    }

    sub_1E3FE2A50(v78, v79, v80, v81);
    if (a2)
    {
      sub_1E3FE381C(a2);
      v85 = v84;
      if (!v84)
      {
LABEL_39:
        v92 = 0;
        goto LABEL_40;
      }

      if (v84[2])
      {
        v86 = v84[4];
        v87 = v84[5];

        v119.canonicalId._countAndFlagsBits = v86;
        v119.canonicalId._object = v87;
        v117[0] = 47042;
        v117[1] = 0xA200000000000000;
        sub_1E32822E0(v88, v89, v90);
        OUTLINED_FUNCTION_25();
        v85 = sub_1E42071F4();
        v92 = v91;

LABEL_40:
        sub_1E3FE2A50(v85, v92, &unk_1E42E4248, &unk_1E42E4270);
        v99 = sub_1E38EA860(v7, a3 & 1, v93, v94, v95, v96, v97, v98);
        sub_1E3FE2A50(v99, v100, &unk_1E42E42D8, &unk_1E42E4300);
        return;
      }
    }

    v85 = 0;
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v114);
    goto LABEL_28;
  }

  v106 = a2;
  v107 = v7;
  HIDWORD(v108) = a3;
  v109 = v3;
  v8 = v117[0];
  isUniquelyReferenced_nonNull_native = __swift_destroy_boxed_opaque_existential_1(v114);
  v17 = 0;
  v18 = *(v8 + 16);
  v110 = MEMORY[0x1E69E7CC0];
  v19 = &unk_1ECF296E0;
  while (1)
  {
    if (v18 == v17)
    {

      v4 = v109;
      v76 = v110;
      LOBYTE(a3) = BYTE4(v108);
      a2 = v106;
      v7 = v107;
      goto LABEL_30;
    }

    if (v17 >= *(v8 + 16))
    {
      break;
    }

    v115 = &type metadata for ViewModelKeys;
    v116 = &off_1F5D7BCA8;
    LOBYTE(v114[0]) = 7;
    v20 = OUTLINED_FUNCTION_10_159(isUniquelyReferenced_nonNull_native, v10, v11, v12, v13, v14, v15, v16, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, name, name_8, v113);
    if (!v118)
    {
      __swift_destroy_boxed_opaque_existential_1(v114);
      isUniquelyReferenced_nonNull_native = sub_1E325F6F0(v117, v19, &unk_1E4298030);
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_17_142(v20, v21, v22, v23, v24, v25, v26, v27, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, name, name_8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = __swift_destroy_boxed_opaque_existential_1(v114);
      goto LABEL_20;
    }

    v28 = name_8;
    v29 = v113;
    v30 = __swift_destroy_boxed_opaque_existential_1(v114);
    v115 = &type metadata for ViewModelKeys.Sports;
    v116 = &off_1F5D7BC68;
    LOBYTE(v114[0]) = 22;
    v38 = OUTLINED_FUNCTION_10_159(v30, v31, v32, v33, v34, v35, v36, v37, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, name, name_8, v113);
    if (!v118)
    {

      __swift_destroy_boxed_opaque_existential_1(v114);
      isUniquelyReferenced_nonNull_native = sub_1E325F6F0(v117, v19, &unk_1E4298030);
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_17_142(v38, v39, v40, v41, v42, v43, v44, v45, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, name, name_8);
    if ((swift_dynamicCast() & 1) == 0)
    {

      isUniquelyReferenced_nonNull_native = __swift_destroy_boxed_opaque_existential_1(v114);
      goto LABEL_20;
    }

    v46 = v19;
    v47 = v113;
    v48 = __swift_destroy_boxed_opaque_existential_1(v114);
    v115 = &type metadata for ViewModelKeys.Sports;
    v116 = &off_1F5D7BC68;
    LOBYTE(v114[0]) = 23;
    v56 = OUTLINED_FUNCTION_10_159(v48, v49, v50, v51, v52, v53, v54, v55, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, name_8, name_8, v113);
    if (!v118)
    {

      __swift_destroy_boxed_opaque_existential_1(v114);
      v19 = v46;
      isUniquelyReferenced_nonNull_native = sub_1E325F6F0(v117, v46, &unk_1E4298030);
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_17_142(v56, v57, v58, v59, v60, v61, v62, v63, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, name, name_8);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v114);
      v64._countAndFlagsBits = v28;
      v64._object = v29;
      v65._countAndFlagsBits = name;
      v65._object = v47;
      SportsVoiceOverUtility.Competitor.init(canonicalId:name:isHomeTeam:)(&v119, v64, v65, name_8);
      object = v119.canonicalId._object;
      v19 = v46;
      if (!v119.canonicalId._object)
      {
        goto LABEL_20;
      }

      countAndFlagsBits = v119.canonicalId._countAndFlagsBits;
      name = v119.name._countAndFlagsBits;
      v105 = v119.name._object;
      isHomeTeam = v119.isHomeTeam;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v72 = OUTLINED_FUNCTION_27();
        isUniquelyReferenced_nonNull_native = sub_1E3FE5020(v72, v73, v74, v75);
        v110 = isUniquelyReferenced_nonNull_native;
      }

      v70 = *(v110 + 16);
      v69 = *(v110 + 24);
      if (v70 >= v69 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_1E3FE5020((v69 > 1), v70 + 1, 1, v110);
        v110 = isUniquelyReferenced_nonNull_native;
      }

      ++v17;
      *(v110 + 16) = v70 + 1;
      v71 = v110 + 40 * v70;
      *(v71 + 32) = countAndFlagsBits;
      *(v71 + 40) = object;
      *(v71 + 48) = name;
      *(v71 + 56) = v105;
      *(v71 + 64) = isHomeTeam;
    }

    else
    {

      isUniquelyReferenced_nonNull_native = __swift_destroy_boxed_opaque_existential_1(v114);
      v19 = v46;
LABEL_20:
      ++v17;
    }
  }

  __break(1u);
}

void sub_1E3FE381C(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }
}

uint64_t sub_1E3FE3850(uint64_t result)
{
  v1 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v49 = result + 32;
  v2 = *(result + 16);
  while (1)
  {
    if (v2 == v1)
    {
      v46 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_competitors;
      swift_beginAccess();
      *(v47 + v46) = v48;
    }

    if (v1 >= v2)
    {
      break;
    }

    v3 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_29;
    }

    v52.name._object = &type metadata for ViewModelKeys.Sports;
    *&v52.isHomeTeam = &off_1F5D7BC68;
    v4 = OUTLINED_FUNCTION_8_188(7, v47, v48, v49, v50, v51, v52.canonicalId._countAndFlagsBits);
    if (!v54)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_16_147(v4, v5, v6, v7, v8, v9, v10, v11, v47, v48, v49, v50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    v13 = v50;
    v12 = v51;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v52.name._object = &type metadata for ViewModelKeys.Sports;
    *&v52.isHomeTeam = &off_1F5D7BC68;
    v14 = OUTLINED_FUNCTION_8_188(22, v47, v48, v49, v50, v51, v52.canonicalId._countAndFlagsBits);
    if (!v54)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_16_147(v14, v15, v16, v17, v18, v19, v20, v21, v47, v48, v49, v50);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    v22 = v50;
    v23 = v51;
    __swift_destroy_boxed_opaque_existential_1(&v52);
    v52.name._object = &type metadata for ViewModelKeys.Sports;
    *&v52.isHomeTeam = &off_1F5D7BC68;
    v24 = OUTLINED_FUNCTION_8_188(23, v47, v48, v49, v50, v51, v52.canonicalId._countAndFlagsBits);
    if (!v54)
    {

LABEL_15:

LABEL_16:
      __swift_destroy_boxed_opaque_existential_1(&v52);
      sub_1E325F6F0(v53, &unk_1ECF296E0, &unk_1E4298030);
LABEL_20:
      countAndFlagsBits = 0;
      object = 0;
      v37 = 0;
      v36 = 0;
      isHomeTeam = 0;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_16_147(v24, v25, v26, v27, v28, v29, v30, v31, v47, v48, v49, v50);
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_18:

LABEL_19:
      __swift_destroy_boxed_opaque_existential_1(&v52);
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(&v52);
    v32._countAndFlagsBits = v13;
    v32._object = v12;
    v33._countAndFlagsBits = v22;
    v33._object = v23;
    SportsVoiceOverUtility.Competitor.init(canonicalId:name:isHomeTeam:)(&v52, v32, v33, v50);
    countAndFlagsBits = v52.canonicalId._countAndFlagsBits;
    object = v52.canonicalId._object;
    v37 = v52.name._countAndFlagsBits;
    v36 = v52.name._object;
    isHomeTeam = v52.isHomeTeam;
LABEL_21:

    ++v1;
    if (object)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        v42 = OUTLINED_FUNCTION_27();
        result = sub_1E3FE5020(v42, v43, v44, v45);
        v48 = result;
      }

      v40 = *(v48 + 16);
      v39 = *(v48 + 24);
      if (v40 >= v39 >> 1)
      {
        result = sub_1E3FE5020((v39 > 1), v40 + 1, 1, v48);
        v48 = result;
      }

      *(v48 + 16) = v40 + 1;
      v41 = v48 + 40 * v40;
      *(v41 + 32) = countAndFlagsBits;
      *(v41 + 40) = object;
      *(v41 + 48) = v37;
      *(v41 + 56) = v36;
      *(v41 + 64) = isHomeTeam;
      v1 = v3;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1E3FE3B24()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v35 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - v11;
  v13 = sub_1E4205074();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = (v18 - v17);
  v34 = v3;
  v20 = sub_1E42056C4();
  if (v20)
  {
    v21 = v20;
    v22 = (*(v15 + 104))(v19, *MEMORY[0x1E69D3A28], v13);
    MEMORY[0x1EEE9AC00](v22);
    *(&v34 - 2) = v19;
    v23 = sub_1E3FE52FC(sub_1E3FE52DC, (&v34 - 4), v21);

    (*(v15 + 8))(v19, v13);
  }

  else
  {
    v23 = 0;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_clockErrorActive) = v23;
  type metadata accessor for SportsVoiceOverUtility(0);
  v24 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_competitors;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v25 = *(v1 + v24);
  v26 = v34;

  v27 = sub_1E38E8B18(v26, v25);
  v28 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverUtility;
  *(v1 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverUtility) = v27;

  type metadata accessor for SportsRunningClockViewModel(0);
  *(v1 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_runningClockViewModel) = sub_1E3F833B0(v26, 0, 0);

  sub_1E3FE3E68();
  v29 = sub_1E42056A4();
  sub_1E4205044();

  v30 = v35;
  (*(v5 + 104))(v9, *MEMORY[0x1E69D3B78], v35);
  LOBYTE(v29) = sub_1E3823168();
  v31 = *(v5 + 8);
  v31(v9, v30);
  v31(v12, v30);
  if (v29)
  {
    if (*(v1 + v28))
    {

      sub_1E38E9CB4();
      v32 = OUTLINED_FUNCTION_12_157();
    }

    else
    {
      OUTLINED_FUNCTION_25_100();
    }

    OUTLINED_FUNCTION_11_175(v32, v33, &unk_1E42E4290, &unk_1E42E42B8);
    sub_1E3FE3F18();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FE3E68()
{
  v1 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverUtility;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverUtility))
  {

    sub_1E38E98B0(0);
    v2 = OUTLINED_FUNCTION_12_157();
  }

  else
  {
    OUTLINED_FUNCTION_25_100();
  }

  OUTLINED_FUNCTION_11_175(v2, v3, &unk_1E42E4200, &unk_1E42E4228);
  if (*(v0 + v1))
  {

    sub_1E38E98B0(1);
    v4 = OUTLINED_FUNCTION_12_157();
  }

  else
  {
    OUTLINED_FUNCTION_25_100();
  }

  return OUTLINED_FUNCTION_11_175(v4, v5, &unk_1E42E41B8, &unk_1E42E41E0);
}

void sub_1E3FE3F18()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverTimer))
  {

    sub_1E42004E4();
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_timerQueued) = 0;
}

void sub_1E3FE3F68()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24 - v14;
  *(v1 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_clockErrorActive) = sub_1E3F95F4C();
  type metadata accessor for SportsVoiceOverUtility(0);
  v16 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_competitors;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v17 = *(v1 + v16);

  v18 = sub_1E38E8DF0(v5, v17, v3);

  v19 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverUtility;
  *(v1 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverUtility) = v18;

  if ((v5 & 0x8000000000000000) == 0)
  {
    type metadata accessor for SportsRunningClockViewModel(0);
    *(v1 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_runningClockViewModel) = sub_1E3F833B0(v5, 0, 0);
  }

  sub_1E3FE3E68();
  sub_1E3F958F0(v5);
  (*(v8 + 104))(v12, *MEMORY[0x1E69D3B78], v6);
  v20 = sub_1E3823168();
  v21 = *(v8 + 8);
  v21(v12, v6);
  v21(v15, v6);
  if (v20)
  {
    if (*(v1 + v19))
    {

      sub_1E38E9CB4();
      v22 = OUTLINED_FUNCTION_12_157();
    }

    else
    {
      OUTLINED_FUNCTION_25_100();
    }

    OUTLINED_FUNCTION_11_175(v22, v23, &unk_1E42E4290, &unk_1E42E42B8);
    sub_1E3FE3F18();
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3FE4198()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30, &unk_1E42A89B0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - v3;
  *(v0 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_timerQueued) = 1;
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSpeakScreenEnabled())
  {
    sub_1E3FE53D0();
    v6 = [objc_opt_self() mainRunLoop];
    v7 = sub_1E4207054();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    v8 = sub_1E4206F14();

    sub_1E325F6F0(v4, &unk_1ECF3DB30, &unk_1E42A89B0);
    v16 = v8;
    sub_1E4206F04();
    sub_1E3FE5734(&qword_1EE23AE48, MEMORY[0x1E6969F70], MEMORY[0x1E6969F60]);
    v9 = sub_1E4200584();

    v16 = v9;
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB40, &qword_1E429B180);
    OUTLINED_FUNCTION_68_3();
    sub_1E32752B0(v10, v11, v12, v13);
    v14 = sub_1E4200844();

    *(v1 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverTimer) = v14;
  }

  return result;
}

void sub_1E3FE48F4(uint64_t a1)
{
  v17 = sub_1E3798694(a1);
  v2 = 0;
  v15 = a1;
  v16 = a1 & 0xC000000000000001;
  v14 = a1 & 0xFFFFFFFFFFFFFF8;
  v3 = MEMORY[0x1E69E7CC0];
  while (v17 != v2)
  {
    if (v16)
    {
      v4 = MEMORY[0x1E6911E60](v2, v15);
    }

    else
    {
      if (v2 >= *(v14 + 16))
      {
        goto LABEL_20;
      }

      v4 = *(v15 + 8 * v2 + 32);
    }

    v5 = v4;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    sub_1E3FE4AD8();

    if (v19)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = OUTLINED_FUNCTION_27();
        v3 = sub_1E3FE5134(v10, v11, v12, v3);
      }

      v7 = *(v3 + 2);
      v6 = *(v3 + 3);
      v8 = v3;
      if (v7 >= v6 >> 1)
      {
        v8 = sub_1E3FE5134((v6 > 1), v7 + 1, 1, v3);
      }

      *(v8 + 2) = v7 + 1;
      v3 = v8;
      v9 = &v8[56 * v7];
      *(v9 + 4) = v18;
      *(v9 + 5) = v19;
      *(v9 + 6) = v20;
      *(v9 + 7) = v21;
      *(v9 + 8) = v22;
      *(v9 + 9) = v23;
      *(v9 + 10) = v24;
    }

    else
    {
      sub_1E3FE541C(v18, 0);
    }

    ++v2;
  }

  v13 = sub_1E3FE2D8C();
  (*(*v13 + 224))(v3);
}

void sub_1E3FE4AD8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v39 - v12;
  v14 = sub_1E4205204();
  if (!v15)
  {
    goto LABEL_4;
  }

  v43 = v14;
  v16 = sub_1E4205224();
  if ((v17 & 1) == 0)
  {
    v41 = v16;
    v42 = v1;
    v18 = v6;
    v19 = sub_1E3FE2D8C();
    v20 = (*(*v19 + 168))();
    v22 = v21;

    if (v22)
    {
      v23 = v18;
      v24 = v42;
      if (v41 < 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v23 = v18;
      v24 = v42;
      if (v20 >= v41)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v25 = *(v24 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_runningClockViewModel);
    v40 = v4;
    if (v25)
    {

      sub_1E42053C4();

      (*(v23 + 32))(v13, v10, v4);
    }

    else
    {
      (*(v23 + 104))(v13, *MEMORY[0x1E69D3D80], v4);
    }

    v39[1] = type metadata accessor for SportsVoiceOverUtility(0);

    sub_1E42051F4();
    v26 = OUTLINED_FUNCTION_34();
    v27(v26);

    v28 = OUTLINED_FUNCTION_165();
    v30 = v29;

    (*(v23 + 8))(v13, v40);
    if (v30)
    {
      sub_1E42051F4();
      v31 = OUTLINED_FUNCTION_34();
      sub_1E418C5D4(v31, v32, v28, v30, v33, v34, v41, v35);
      v36 = v45;
      v37 = v46;
      v38 = v47;
      *v3 = v44;
      *(v3 + 16) = v36;
      *(v3 + 32) = v37;
      *(v3 + 48) = v38;
      goto LABEL_5;
    }
  }

LABEL_3:

LABEL_4:
  *(v3 + 48) = 0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
LABEL_5:
  OUTLINED_FUNCTION_25_2();
}

double sub_1E3FE4DFC(uint64_t a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSpeakScreenEnabled()) && *(v3 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_timerQueued) == 1)
    {
      sub_1E3FE4198();
    }

    else if (!UIAccessibilityIsVoiceOverRunning() && !UIAccessibilityIsSpeakScreenEnabled())
    {
      if (*(v3 + OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel_voiceOverTimer))
      {

        sub_1E42004E4();
      }
    }
  }

  return result;
}

uint64_t sub_1E3FE4EB0()
{
  v1 = OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel__firstTeamVoiceOverText;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B498, &unk_1E42C1E70);
  OUTLINED_FUNCTION_2();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v5 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel__secondTeamVoiceOverText);
  (v4)(v5);
  v6 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel__clockVoiceOverText);
  (v4)(v6);
  v7 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel__finalScoreVoiceOverText);
  (v4)(v7);
  v8 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI24SportsVoiceOverViewModel__headerVoiceOverText);
  (v4)(v8);

  return v0;
}

uint64_t sub_1E3FE4FC8()
{
  sub_1E3FE4EB0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *sub_1E3FE5020(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCA0, &unk_1E42E44E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E3FE5134(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DC98, &unk_1E42F1600);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3FE524C(uint64_t a1, uint64_t a2)
{
  sub_1E4205074();
  sub_1E3FE5734(&qword_1ECF3D470, MEMORY[0x1E69D3A30], MEMORY[0x1E69D3A38]);
  return sub_1E4205E84() & 1;
}

BOOL sub_1E3FE52FC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_1E4205074() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

unint64_t sub_1E3FE53D0()
{
  result = qword_1EE23AE40;
  if (!qword_1EE23AE40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AE40);
  }

  return result;
}

uint64_t sub_1E3FE541C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1E3FE5470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3DC80;
  if (!qword_1ECF3DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DC80);
  }

  return result;
}

uint64_t type metadata accessor for SportsVoiceOverViewModel(uint64_t a1)
{
  result = qword_1EE296EE0;
  if (!qword_1EE296EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3FE555C(uint64_t a1)
{
  sub_1E3BE97D8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for SportsVoiceOverViewModel.SortPriority(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3FE570C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1E3FE5724(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E3FE5724(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1E3FE5734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_1E3FE5788()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30448, &qword_1E42B1778);
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14 - v2;
  v4 = *sub_1E3F29170();
  (*(v4 + 1520))();
  v6 = v5;

  v7 = 0;
  switch(v6)
  {
    case 1:

      goto LABEL_4;
    case 2:
      sub_1E42052F4();
      v10 = OUTLINED_FUNCTION_57();
      sub_1E3827608(v10, v11, 2);
      v12 = sub_1E4205654();
      v7 = __swift_getEnumTagSinglePayload(v3, 1, v12) != 1;
      sub_1E325F69C(v3, &qword_1ECF30448);
      break;
    case 3:
      return v7;
    default:
      v8 = OUTLINED_FUNCTION_57();
      sub_1E3827608(v8, v9, 0);
LABEL_4:
      v7 = 0;
      break;
  }

  return v7;
}

void sub_1E3FE58F4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v61 = v4;
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v60 = (v6 - v5);
  OUTLINED_FUNCTION_138();
  v7 = sub_1E42021E4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v59 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D868, &qword_1E42AA0B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6D0, &qword_1E42A9DF0);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_128_1();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_77_0();
  v24 = [objc_opt_self() currentDevice];
  v25 = [v24 userInterfaceIdiom];

  if (v25 == 1)
  {
    v58[1] = v2;
    sub_1E3F29100();
    (*(v9 + 104))(v1, *MEMORY[0x1E697FF38], v7);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v7);
    v29 = *(v13 + 48);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v30, v31, v32, v33);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v34, v35, v36, v37);
    OUTLINED_FUNCTION_4_75(v16);
    if (v42)
    {
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v38, v39);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v40, v41);
      OUTLINED_FUNCTION_4_75(&v16[v29]);
      if (v42)
      {
        sub_1E325F69C(v16, &qword_1ECF2D6D0);
        goto LABEL_12;
      }
    }

    else
    {
      sub_1E3743538(v16, v21, &qword_1ECF2D6D0, &qword_1E42A9DF0);
      OUTLINED_FUNCTION_4_75(&v16[v29]);
      if (!v42)
      {
        v47 = &v16[v29];
        v48 = v59;
        (*(v9 + 32))(v59, v47, v7);
        OUTLINED_FUNCTION_25_101();
        sub_1E3FEAEAC(v49);
        sub_1E4205E84();
        v50 = *(v9 + 8);
        v50(v48, v7);
        OUTLINED_FUNCTION_49_58();
        sub_1E325F69C(v51, v52);
        OUTLINED_FUNCTION_49_58();
        sub_1E325F69C(v53, v54);
        v50(v21, v7);
        OUTLINED_FUNCTION_49_58();
        sub_1E325F69C(v55, v56);
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v43, v44);
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v45, v46);
      (*(v9 + 8))(v21, v7);
    }

    sub_1E325F69C(v16, &qword_1ECF2D868);
  }

LABEL_12:
  if (!sub_1E3FE5788())
  {
    v57 = v60;
    sub_1E3F36CA0(v60);
    sub_1E3B02A04();
    (*(v61 + 8))(v57, v62);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FE5D4C(uint64_t a1)
{
  sub_1E3F29170();
  OUTLINED_FUNCTION_30();
  v3 = (*(v2 + 1424))();

  v11[1] = v3;
  v9 = a1;
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8, &qword_1E42A0FA0);
  OUTLINED_FUNCTION_39_35();
  sub_1E3743478(v4);
  sub_1E38D2054(&v9, v11);

  if (v11[0])
  {
    sub_1E3C27024();
    v6 = v5;

    if (v6)
    {
      v7 = sub_1E4206024();

      if (v7 == 1)
      {
        return sub_1E4203DA4();
      }
    }
  }

  if (a1)
  {
    return sub_1E4203DC4();
  }

  return sub_1E4203DB4();
}

uint64_t sub_1E3FE5E88@<X0>(uint64_t a1@<X8>)
{
  v98 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCA8, &qword_1E42E44F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v92 = v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCB0, &qword_1E42E44F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v96 = v7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCB8, &qword_1E42E4500);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v91 = v9;
  OUTLINED_FUNCTION_138();
  v10 = sub_1E42021E4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v90 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D868, &qword_1E42AA0B0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v89 - v18;
  v20 = OUTLINED_FUNCTION_99_0();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_23_8();
  v94 = v1;
  sub_1E3F29100();
  (*(v12 + 104))(v2, *MEMORY[0x1E697FF40], v10);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v10);
  v32 = *(v16 + 56);
  sub_1E3743538(v3, v19, &qword_1ECF2D6D0, &qword_1E42A9DF0);
  sub_1E3743538(v2, &v19[v32], &qword_1ECF2D6D0, &qword_1E42A9DF0);
  OUTLINED_FUNCTION_44_3(v19);
  if (v38)
  {
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v33, v34);
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v35, v36);
    OUTLINED_FUNCTION_44_3(&v19[v32]);
    if (v38)
    {
      sub_1E325F69C(v19, &qword_1ECF2D6D0);
      v37 = v94;
LABEL_14:
      v65 = 0.0;
      if (*(v37 + *(type metadata accessor for SportsBannerScoreboardView(0) + 60)) && (sub_1E37573D0(), OUTLINED_FUNCTION_30(), (*(v66 + 176))(&v99), , (v100 & 1) == 0))
      {
        v65 = OUTLINED_FUNCTION_31_83(v67, v68, v69, v70);
        v71 = 0;
      }

      else
      {
        v71 = 1;
      }

      v79 = sub_1E4201D44();
      v80 = v91;
      *v91 = v79;
      *(v80 + 1) = v65;
      *(v80 + 16) = v71;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCD8, &qword_1E42E4510);
      sub_1E3FE90E8();
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v81, v82, v83, v84);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_24_104();
      sub_1E3743478(v85);
      v78 = &unk_1ECF3DCD0;
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  sub_1E3743538(v19, v26, &qword_1ECF2D6D0, &qword_1E42A9DF0);
  OUTLINED_FUNCTION_44_3(&v19[v32]);
  if (v38)
  {
    OUTLINED_FUNCTION_39_35();
    sub_1E325F69C(v39, v40);
    OUTLINED_FUNCTION_39_35();
    sub_1E325F69C(v41, v42);
    v43 = OUTLINED_FUNCTION_95_0();
    v44(v43);
LABEL_9:
    sub_1E325F69C(v19, &qword_1ECF2D868);
    v37 = v94;
    goto LABEL_10;
  }

  v53 = &v19[v32];
  v54 = v90;
  (*(v12 + 32))(v90, v53, v10);
  OUTLINED_FUNCTION_25_101();
  sub_1E3FEAEAC(v55);
  v56 = sub_1E4205E84();
  v57 = *(v12 + 8);
  v57(v54, v10);
  OUTLINED_FUNCTION_58_37();
  sub_1E325F69C(v58, v59);
  OUTLINED_FUNCTION_58_37();
  sub_1E325F69C(v60, v61);
  v62 = OUTLINED_FUNCTION_95_0();
  (v57)(v62);
  OUTLINED_FUNCTION_58_37();
  sub_1E325F69C(v63, v64);
  v37 = v94;
  if (v56)
  {
    goto LABEL_14;
  }

LABEL_10:
  v45 = sub_1E4201D44();
  v46 = 0.0;
  if (*(v37 + *(type metadata accessor for SportsBannerScoreboardView(0) + 60)) && (sub_1E37573D0(), OUTLINED_FUNCTION_30(), (*(v47 + 176))(&v99), , (v100 & 1) == 0))
  {
    v46 = OUTLINED_FUNCTION_31_83(v48, v49, v50, v51);
    v52 = 0;
  }

  else
  {
    v52 = 1;
  }

  v72 = v92;
  *v92 = v45;
  *(v72 + 1) = v46;
  *(v72 + 16) = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCC0, &qword_1E42E4508);
  sub_1E3FE87B8();
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v73, v74, v75, v76);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_24_104();
  sub_1E3743478(v77);
  OUTLINED_FUNCTION_21_1();
LABEL_21:
  sub_1E3743478(v78);
  sub_1E4201F44();
  OUTLINED_FUNCTION_21_1();
  return sub_1E325F69C(v86, v87);
}

void sub_1E3FE658C()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE40, &qword_1E42E4788);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE48, &qword_1E42E4790);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v31 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_7();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DDF0, &qword_1E42E4738);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v17 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_8();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DDE8, &qword_1E42E4730);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_77_0();
  sub_1E3FE6904();
  sub_1E3FE7024();
  if (*(v5 + *(type metadata accessor for SportsBannerScoreboardView(0) + 52)))
  {
    sub_1E3F30DCC();
    v22 = OUTLINED_FUNCTION_95_0();
    v23(v22);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v24, 1, v8);
  sub_1E3743538(v3, v1, &qword_1ECF3DDE8, &qword_1E42E4730);
  sub_1E3743538(v2, v17, &qword_1ECF3DDF0, &qword_1E42E4738);
  sub_1E3743538(v0, v31, &qword_1ECF3DE48, &qword_1E42E4790);
  *v7 = 0;
  *(v7 + 8) = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE50, &qword_1E42E4798);
  sub_1E3743538(v1, v7 + v25[12], &qword_1ECF3DDE8, &qword_1E42E4730);
  sub_1E3743538(v17, v7 + v25[16], &qword_1ECF3DDF0, &qword_1E42E4738);
  sub_1E3743538(v31, v7 + v25[20], &qword_1ECF3DE48, &qword_1E42E4790);
  v26 = v7 + v25[24];
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = OUTLINED_FUNCTION_35_4();
  sub_1E325F69C(v27, v28);
  sub_1E325F69C(v2, &qword_1ECF3DDF0);
  sub_1E325F69C(v3, &qword_1ECF3DDE8);
  sub_1E325F69C(v31, &qword_1ECF3DE48);
  sub_1E325F69C(v17, &qword_1ECF3DDF0);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v29, v30);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FE6904()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v91 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_15_15();
  v8 = type metadata accessor for SportsBannerScoreboardView.EventTitleView(v7);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCE8, &qword_1E42E4528);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_49_2();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCF0, &qword_1E42E4530);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v87 = v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DCF8, &unk_1E42E4538);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v85 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400, &qword_1E42AC130);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v75 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD00, &qword_1E42E4548);
  OUTLINED_FUNCTION_0_10();
  v82 = v24;
  v83 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v81 = v26;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD08, &qword_1E42E4550);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_44();
  v84 = v28;
  v29 = OUTLINED_FUNCTION_138();
  v30 = type metadata accessor for SportsBannerScoreboardView(v29);
  OUTLINED_FUNCTION_71_32();
  if (!v0)
  {
    goto LABEL_8;
  }

  v89 = v0;
  sub_1E37569B4();
  OUTLINED_FUNCTION_30();
  v32 = (*(v31 + 2408))();

  v33 = [objc_opt_self() vui:v32 fontFromTextLayout:?];
  if (!v33)
  {

    v3 = v89;
LABEL_8:
    v73 = *(v3 + *(v30 + 44));

    sub_1E3F2F010();
    sub_1E3F2F02C(v1, v73);
    OUTLINED_FUNCTION_99_0();
    sub_1E3FEAEF0();
    swift_storeEnumTagMultiPayload();
    sub_1E3FE9458();
    OUTLINED_FUNCTION_28_86();
    sub_1E3FEAEAC(v74);
    sub_1E4201F44();
    sub_1E3FEAF44(v12, type metadata accessor for SportsBannerScoreboardView.EventTitleView);
    goto LABEL_9;
  }

  v34 = v33;
  v77 = v32;
  v35 = sub_1E405EEA0();

  v36 = *(v89 + *(v30 + 44));
  v79 = v2;
  v80 = v8;
  v78 = v13;
  if (!v36 || (v37 = sub_1E3C27024(), !v38))
  {

    v37 = 0;
    v38 = 0xE000000000000000;
  }

  v94[0] = v37;
  v94[1] = v38;
  sub_1E32822E0(v37, v38, v39);
  sub_1E4202C44();

  v40 = sub_1E4202C04();
  v76 = v35;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;

  v48 = OUTLINED_FUNCTION_99_0();
  sub_1E37434B8(v48, v49, v50);

  sub_1E4203DA4();
  OUTLINED_FUNCTION_28_52();
  LOBYTE(v78) = 1;
  v77 = 0;
  LOBYTE(v76) = 1;
  v51 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_92_1(v51, v52, v53, v54, v55, v56, v57, v58, v75);
  v59 = v45 & 1;
  v95 = v45 & 1;
  KeyPath = swift_getKeyPath();
  v92[0] = v41;
  v92[1] = v43;
  LOBYTE(v92[2]) = v59;
  v92[3] = v47;
  memcpy(&v92[4], v93, 0x70uLL);
  LOWORD(v92[18]) = 256;
  v92[19] = KeyPath;
  LOBYTE(v92[20]) = 1;
  sub_1E3F291E4();
  sub_1E3FE29FC();

  v61 = sub_1E4202494();
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD18, &qword_1E42E4558);
  v63 = sub_1E3FE9520();
  v64 = v81;
  sub_1E3E038E0();

  sub_1E325F69C(v22, &qword_1ECF2E400);
  memcpy(v94, v92, 0xA1uLL);
  sub_1E325F69C(v94, &qword_1ECF3DD18);
  static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
  v92[0] = v62;
  v92[1] = v63;
  OUTLINED_FUNCTION_7_22();
  swift_getOpaqueTypeConformance2();
  v65 = v85;
  v66 = v83;
  sub_1E4202EA4();

  OUTLINED_FUNCTION_113_1(v65, v87);
  swift_storeEnumTagMultiPayload();
  sub_1E3FE9688();
  v67 = v84;
  OUTLINED_FUNCTION_35_4();
  sub_1E4201F44();
  OUTLINED_FUNCTION_39_35();
  sub_1E325F69C(v68, v69);
  (*(v82 + 8))(v64, v66);
  sub_1E3743538(v67, v79, &qword_1ECF3DD08, &qword_1E42E4550);
  swift_storeEnumTagMultiPayload();
  sub_1E3FE9458();
  OUTLINED_FUNCTION_28_86();
  sub_1E3FEAEAC(v70);
  sub_1E4201F44();

  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v71, v72);
LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FE7024()
{
  OUTLINED_FUNCTION_31_1();
  v97 = v1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD58, &qword_1E42E45A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_44();
  v96 = v3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD60, &unk_1E42E45B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v95 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35378, &qword_1E42C3E10);
  OUTLINED_FUNCTION_0_10();
  v88 = v7;
  v89 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v86 = v9;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD68, &qword_1E42E45C0);
  OUTLINED_FUNCTION_0_10();
  v83 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v82 = v12;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD70, &qword_1E42E45C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v87 = v14;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD78, &unk_1E42E45D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v91 = v16;
  v17 = OUTLINED_FUNCTION_138();
  v18 = type metadata accessor for SportsBannerScoreboardView(v17);
  if (*(v0 + *(v18 + 60)))
  {
    v19 = objc_opt_self();

    sub_1E37570D8();
    OUTLINED_FUNCTION_2_1();
    v21 = (*(v20 + 2408))();

    v98 = [v19 vui:v21 fontFromTextLayout:?];

    sub_1E37570D8();
    OUTLINED_FUNCTION_2_1();
    v81 = (*(v22 + 672))();

    sub_1E37570D8();
    OUTLINED_FUNCTION_2_1();
    v80 = (*(v23 + 1976))();
  }

  else
  {
    v81 = 0;
    v98 = 0;
    v80 = 7;
  }

  v24 = *(v18 + 48);
  v92 = v0;
  v25 = *(v0 + v24);
  v26 = sub_1E3798694(v25);
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  while (v26 != v27)
  {
    if ((v25 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v27, v25);
    }

    else
    {
      if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }
    }

    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    v30 = sub_1E3C27024();
    v32 = v31;

    ++v27;
    if (v32)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1E3740F88(0, *(v28 + 2) + 1, 1, v28);
      }

      v34 = *(v28 + 2);
      v33 = *(v28 + 3);
      if (v34 >= v33 >> 1)
      {
        v28 = sub_1E3740F88((v33 > 1), v34 + 1, 1, v28);
      }

      *(v28 + 2) = v34 + 1;
      v35 = &v28[16 * v34];
      *(v35 + 4) = v30;
      *(v35 + 5) = v32;
      v27 = v29;
    }
  }

  v103 = v28;
  sub_1E3756654();

  v36 = OUTLINED_FUNCTION_125();
  MEMORY[0x1E69109E0](v36);

  MEMORY[0x1E69109E0](32, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  OUTLINED_FUNCTION_21_113();
  sub_1E3743478(v37);
  OUTLINED_FUNCTION_125();
  v38 = sub_1E4205DF4();
  v40 = v39;

  v99 = v38;
  v100 = v40;
  sub_1E32822E0(v41, v42, v43);
  sub_1E4202C44();
  if (v98)
  {
    v44 = v98;
    sub_1E405EEA0();
  }

  OUTLINED_FUNCTION_112_1();
  v45 = sub_1E4202C04();
  v47 = v46;
  v49 = v48;
  v51 = v50;

  v52 = OUTLINED_FUNCTION_125();
  sub_1E37434B8(v52, v53, v54);

  v99 = v45;
  v100 = v47;
  v55 = v49 & 1;
  v101 = v49 & 1;
  v102 = v51;
  v56 = MEMORY[0x1E6981148];
  v57 = MEMORY[0x1E6981138];
  v58 = v86;
  v59 = v81;
  OUTLINED_FUNCTION_112_1();
  sub_1E39B9138();
  sub_1E37434B8(v45, v47, v55);

  MEMORY[0x1EEE9AC00](v60);
  *&v79[-16] = v92;
  v79[-8] = v80;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DD80, &qword_1E42E45E0);
  v99 = v56;
  v100 = v57;
  OUTLINED_FUNCTION_27_95();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v63 = v89;
  v99 = v89;
  v100 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_26_10();
  swift_getOpaqueTypeConformance2();
  v64 = v82;
  sub_1E3E35D1C(v61, v82);
  (*(v88 + 8))(v58, v63);
  v65 = v87;
  (*(v83 + 32))(v87, v64, v84);
  *(v65 + *(v85 + 36)) = 256;
  sub_1E3FE7E74();
  v67 = v66;
  v69 = v68;
  LOBYTE(v51) = v70;
  sub_1E3FEA9E8();
  v71 = v91;
  sub_1E4202EC4();
  sub_1E37434B8(v67, v69, v51 & 1);

  sub_1E325F69C(v65, &qword_1ECF3DD70);
  static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
  sub_1E3FEAB2C();
  sub_1E4202EA4();

  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v72, v73, v74, v75);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_21_1();
  sub_1E3FEAB5C(v76);
  OUTLINED_FUNCTION_58_1();
  sub_1E4201F44();

  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v77, v78);
  sub_1E325F69C(v71, &qword_1ECF3DD78);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FE78CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DEB0, &unk_1E42E47E8);
  sub_1E3743538(*(a1 + 8), a2 + v5[12], &qword_1ECF3DE90, &qword_1E42E47E0);
  v6 = a2 + v5[16];
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  *v6 = v9;
  *(v6 + 8) = v8;
  sub_1E3743538(v7, a2 + v5[20], &qword_1ECF3DE80, &unk_1E42E47C8);
  v10 = a2 + v5[24];
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *v10 = v13;
  *(v10 + 8) = v12;
  sub_1E3743538(v11, a2 + v5[28], &qword_1ECF3DDF8, &qword_1E42E4740);
  v14 = a2 + v5[32];
  v16 = *(a1 + 48);
  v15 = *(a1 + 56);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *v14 = v17;
  *(v14 + 8) = v16;
  sub_1E3743538(v15, a2 + v5[36], &qword_1ECF3DE80, &unk_1E42E47C8);
  v18 = a2 + v5[40];
  v20 = *(a1 + 64);
  v19 = *(a1 + 72);
  v21 = *v20;
  LOBYTE(v20) = *(v20 + 8);
  *v18 = v21;
  *(v18 + 8) = v20;
  result = sub_1E3743538(v19, a2 + v5[44], &qword_1ECF3DE90, &qword_1E42E47E0);
  v23 = a2 + v5[48];
  v24 = *(a1 + 80);
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  *v23 = v25;
  *(v23 + 8) = v24;
  return result;
}

void View.accessibilityIdentifier(key:location:)()
{
  OUTLINED_FUNCTION_31_1();
  v58 = v2;
  v59 = v0;
  v4 = v3;
  v56[2] = v5;
  v56[3] = v6;
  v8 = v7;
  v62 = v9;
  LODWORD(v57) = v5;
  sub_1E4202624();
  v10 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_1_2();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v23 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v56 - v25;
  OUTLINED_FUNCTION_8_154();
  v27 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v61 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44();
  v60 = v31;
  if (v57 != 14 || v30 | v8)
  {
    static SportsAccessibilityIdentifier.makeIdentifier(key:location:)();
    v57 = v27;
    v43 = v58;
    sub_1E4202EA4();

    OUTLINED_FUNCTION_2_238();
    v45 = sub_1E3FEAEAC(v44);
    v69 = v43;
    v70 = v45;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v46 = *(v12 + 16);
    OUTLINED_FUNCTION_58_37();
    v46();
    v47 = *(v12 + 8);
    v47(v16, v10);
    (v46)(v16, v1, v10);
    v42 = v60;
    OUTLINED_FUNCTION_8_154();
    sub_1E37B8E90(v48, v49, v50);
    v51 = v16;
    v36 = v43;
    v27 = v57;
    v47(v51, v10);
    v47(v1, v10);
  }

  else
  {
    v32 = *(v19 + 16);
    v32(v26, v59, v4);
    v33 = OUTLINED_FUNCTION_57();
    (v32)(v33);
    OUTLINED_FUNCTION_2_238();
    v35 = sub_1E3FEAEAC(v34);
    v36 = v58;
    v63 = v58;
    v64 = v35;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v37 = v60;
    OUTLINED_FUNCTION_8_154();
    sub_1E37B8D98(v38, v39);
    v40 = *(v19 + 8);
    v41 = v23;
    v42 = v37;
    v40(v41, v4);
    v40(v26, v4);
  }

  OUTLINED_FUNCTION_2_238();
  v53 = sub_1E3FEAEAC(v52);
  v67 = v36;
  v68 = v53;
  OUTLINED_FUNCTION_4_1();
  WitnessTable = swift_getWitnessTable();
  v65 = v36;
  v66 = WitnessTable;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v55 = v61;
  (*(v61 + 16))(v62, v42, v27);
  (*(v55 + 8))(v42, v27);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FE7E74()
{
  v1 = *(v0 + *(type metadata accessor for SportsBannerScoreboardView(0) + 48));
  v2 = sub_1E3798694(v1);
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v2 == v3)
    {
      v12 = OUTLINED_FUNCTION_57();
      __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
      OUTLINED_FUNCTION_21_113();
      sub_1E3743478(v14);
      sub_1E4205DF4();

      sub_1E32822E0(v15, v16, v17);
      sub_1E4202C44();
      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }
    }

    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v6 = sub_1E3C27024();
    v8 = v7;

    ++v3;
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1E3740F88(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_1E3740F88((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v6;
      *(v11 + 5) = v8;
      v3 = v5;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1E3FE8040()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1E4201D44();
  type metadata accessor for SportsBannerScoreboardView(0);
  OUTLINED_FUNCTION_71_32();
  if (v0)
  {
    v8();
    OUTLINED_FUNCTION_30();
    v13 = (*(v12 + 1176))();
    v15 = v14;

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13;
    }
  }

  else
  {
    v16 = 0;
  }

  *v10 = v11;
  *(v10 + 8) = v16;
  *(v10 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v4);
  v2(v0);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FE8114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE00, &qword_1E42E4748);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v72 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE08, &qword_1E42E4750);
  OUTLINED_FUNCTION_0_10();
  v71 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  v70 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE10, &unk_1E42E4758);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v76 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v74 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_49_2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258, &qword_1E42DE8A0);
  OUTLINED_FUNCTION_17_2(v21);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_15_15();
  type metadata accessor for SportsBannerScoreboardView.BadgeView(v23);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE18, &qword_1E42E4768);
  v29 = OUTLINED_FUNCTION_17_2(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_5();
  v73 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_93_0();
  sub_1E3F29170();
  OUTLINED_FUNCTION_2_1();
  v39 = (*(v33 + 1304))(v34, v35, v36, v37, v38);

  if (v39)
  {
    v40 = sub_1E4203D34();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v40);

    sub_1E3F36C98();
    sub_1E3F2ED6C();
    sub_1E3FEAEAC(&unk_1ECF3DE38);
    sub_1E4202ED4();
    sub_1E3FEAF44(v27, type metadata accessor for SportsBannerScoreboardView.BadgeView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE20, &qword_1E42E4770);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  }

  else
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE20, &qword_1E42E4770);
    OUTLINED_FUNCTION_74_21(v45);
  }

  sub_1E3741EA0(v4, v2, &qword_1ECF3DE18, &qword_1E42E4768);
  v46 = type metadata accessor for SportsBannerScoreboardView(0);
  v48 = *(a1 + *(v46 + 60));
  if (v48)
  {
    v49 = sub_1E3757514(v46, v47);
  }

  else
  {
    v49 = 0.0;
  }

  sub_1E3FE58F4();
  if (v50)
  {
    v51 = v74;
    v52 = v74;
    v53 = 1;
  }

  else
  {
    sub_1E3F2CB10(v13);
    sub_1E4203DA4();
    OUTLINED_FUNCTION_28_52();
    LOBYTE(v72) = 0;
    LOBYTE(v71) = 1;
    OUTLINED_FUNCTION_51_3();
    sub_1E42015C4();
    v78[120] = 1;
    memcpy(&v78[7], __src, 0x70uLL);
    v54 = *(v71 + 16);
    v55 = OUTLINED_FUNCTION_95_0();
    v54(v55);
    (v54)(v72, v70, 0x7FF0000000000000);
    v56 = v72 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE28, &qword_1E42E4778) + 48);
    *v56 = 0;
    *(v56 + 8) = 1;
    memcpy((v56 + 9), v78, 0x77uLL);
    v57 = *(v71 + 8);
    v57(v13, 0x7FF0000000000000);
    v58 = OUTLINED_FUNCTION_35_4();
    (v57)(v58);
    v51 = v74;
    sub_1E3741EA0(v72, v74, &qword_1ECF3DE00, &qword_1E42E4748);
    v52 = v74;
    v53 = 0;
  }

  __swift_storeEnumTagSinglePayload(v52, v53, 1, v75);
  sub_1E3743538(v2, v73, &qword_1ECF3DE18, &qword_1E42E4768);
  sub_1E3743538(v51, v76, &qword_1ECF3DE10, &unk_1E42E4758);
  sub_1E3743538(v73, a2, &qword_1ECF3DE18, &qword_1E42E4768);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE30, &qword_1E42E4780);
  v60 = a2 + *(v59 + 48);
  *v60 = v49;
  *(v60 + 8) = v48 == 0;
  sub_1E3743538(v76, a2 + *(v59 + 64), &qword_1ECF3DE10, &unk_1E42E4758);
  OUTLINED_FUNCTION_112_1();
  sub_1E325F69C(v61, v62);
  v63 = OUTLINED_FUNCTION_32_0();
  sub_1E325F69C(v63, v64);
  OUTLINED_FUNCTION_112_1();
  sub_1E325F69C(v65, v66);
  OUTLINED_FUNCTION_82();
  return sub_1E325F69C(v67, v68);
}

void sub_1E3FE87B8()
{
  OUTLINED_FUNCTION_31_1();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE08, &qword_1E42E4750);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_49_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE58, &qword_1E42E47A0);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_7();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DEB8, &qword_1E42E47F8);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_8();
  *v3 = sub_1E4201B64();
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DEC0, &qword_1E42E4800);
  sub_1E3FE8A24();
  sub_1E3FE58F4();
  if (v15)
  {
    sub_1E3F2CB10(v4);
    OUTLINED_FUNCTION_58_37();
    v16();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  __swift_storeEnumTagSinglePayload(v1, v17, 1, v7);
  OUTLINED_FUNCTION_113_1(v3, v2);
  sub_1E3743538(v1, v0, &qword_1ECF3DE58, &qword_1E42E47A0);
  OUTLINED_FUNCTION_21_1();
  sub_1E3743538(v18, v19, v20, &qword_1E42E47F8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DEC8, &qword_1E42E4808);
  sub_1E3743538(v0, v6 + *(v21 + 48), &qword_1ECF3DE58, &qword_1E42E47A0);
  v22 = OUTLINED_FUNCTION_35_4();
  sub_1E325F69C(v22, v23);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F69C(v24, v25);
  sub_1E325F69C(v0, &qword_1ECF3DE58);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F69C(v26, v27);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FE8A24()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v71 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DDF8, &qword_1E42E4740);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v9 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DED0, &qword_1E42E4810);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v72 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_128_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v70 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v67 - v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_93_0();
  sub_1E3FE58F4();
  if (v22)
  {
    v23 = sub_1E4201D54();
  }

  else
  {
    v23 = sub_1E4201D44();
  }

  *v20 = v23;
  *(v20 + 1) = 0;
  v20[16] = 1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DED8, &qword_1E42E4818);
  sub_1E3FE8E18();
  v69 = v0;
  sub_1E3741EA0(v20, v0, &qword_1ECF3DED0, &qword_1E42E4810);
  v24 = sub_1E4201D44();
  if (*(v4 + *(type metadata accessor for SportsBannerScoreboardView(0) + 60)))
  {
    sub_1E3756660();
    OUTLINED_FUNCTION_30();
    v26 = v9;
    v27 = (*(v25 + 1176))();
    v29 = v28;

    if (v29)
    {
      v30 = 0;
    }

    else
    {
      v30 = v27;
    }

    v9 = v26;
  }

  else
  {
    v30 = 0;
  }

  *v1 = v24;
  *(v1 + 8) = v30;
  *(v1 + 16) = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DDA0, &qword_1E42E45E8);
  sub_1E3FE8114(v4, v1 + *(v31 + 44));
  sub_1E3FE58F4();
  if (v32)
  {
    v33 = sub_1E4201D64();
  }

  else
  {
    v33 = sub_1E4201D44();
  }

  *v2 = v33;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  sub_1E3FE8E18();
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v34, v35, v36, v37);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v38, v39, v40, v41);
  v42 = v9;
  v68 = v1;
  sub_1E3743538(v1, v9, &qword_1ECF3DDF8, &qword_1E42E4740);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v43, v44, v45, v46);
  v47 = v71;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v48, v49, v50, v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DEE0, &qword_1E42E4820);
  v53 = v47 + v52[12];
  *v53 = 0;
  *(v53 + 8) = 0;
  sub_1E3743538(v42, v47 + v52[16], &qword_1ECF3DDF8, &qword_1E42E4740);
  v54 = v47 + v52[20];
  *v54 = 0;
  *(v54 + 8) = 0;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v55, v56, v57, v58);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v59, v60);
  sub_1E325F69C(v68, &qword_1ECF3DDF8);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v61, v62);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v63, v64);
  sub_1E325F69C(v42, &qword_1ECF3DDF8);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v65, v66);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FE8E18()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v33 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE80, &unk_1E42E47C8);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v32 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  OUTLINED_FUNCTION_17_2(v15);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_15_15();
  v18 = type metadata accessor for SportsBannerLogoView(v17);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_77_0();
  type metadata accessor for SportsBannerLogoViewModel();
  v24 = sub_1E3F29170();
  v25 = sub_1E3CBAB38(v24, v3);
  v26 = *(v5 + *(type metadata accessor for SportsBannerScoreboardView(0) + 60));

  sub_1E3CBCBC0();
  sub_1E3CBCC24(v0, v25, v26, v1);
  sub_1E3F2C430(v14);
  sub_1E3F2951C();
  sub_1E3FE5D4C(v3);
  sub_1E4200D94();
  v27 = (v14 + *(v8 + 44));
  v28 = v35;
  *v27 = v34;
  v27[1] = v28;
  v27[2] = v36;
  sub_1E3FEAEF0();
  sub_1E3743538(v14, v11, &qword_1ECF3DE80, &unk_1E42E47C8);
  v29 = v33;
  sub_1E3FEAEF0();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DEE8, &qword_1E42E4828);
  v31 = v29 + *(v30 + 48);
  *v31 = 0;
  *(v31 + 8) = 1;
  sub_1E3743538(v11, v29 + *(v30 + 64), &qword_1ECF3DE80, &unk_1E42E47C8);
  sub_1E325F69C(v14, &qword_1ECF3DE80);
  sub_1E3FEAF44(v1, type metadata accessor for SportsBannerLogoView);
  sub_1E325F69C(v11, &qword_1ECF3DE80);
  sub_1E3FEAF44(v22, type metadata accessor for SportsBannerLogoView);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FE90E8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v53 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE08, &qword_1E42E4750);
  OUTLINED_FUNCTION_0_10();
  v52 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v51 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE58, &qword_1E42E47A0);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_7();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE60, &qword_1E42E47A8);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE68, &qword_1E42E47B0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v21);
  *v15 = sub_1E4201B84();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE70, &qword_1E42E47B8);
  sub_1E3FE9780(v3, &v15[*(v22 + 44)]);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_28_52();
  v23 = 1;
  LOBYTE(v53) = 1;
  v52 = 0;
  LOBYTE(v51) = 1;
  v24 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_92_1(v24, v25, v26, v27, v28, v29, v30, v31, v50);
  sub_1E3741EA0(v15, v20, &qword_1ECF3DE60, &qword_1E42E47A8);
  memcpy(&v20[*(v17 + 44)], v54, 0x70uLL);
  v32 = OUTLINED_FUNCTION_99_0();
  sub_1E3741EA0(v32, v33, &qword_1ECF3DE68, &qword_1E42E47B0);
  sub_1E3FE58F4();
  if (v34)
  {
    v35 = v51;
    sub_1E3F2CB10(v51);
    (*(v52 + 32))(v1, v35, v5);
    v23 = 0;
  }

  __swift_storeEnumTagSinglePayload(v1, v23, 1, v5);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v36, v37, v38, v39);
  sub_1E3743538(v1, v0, &qword_1ECF3DE58, &qword_1E42E47A0);
  v40 = v53;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v41, v42, v43, v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE78, &qword_1E42E47C0);
  sub_1E3743538(v0, v40 + *(v45 + 48), &qword_1ECF3DE58, &qword_1E42E47A0);
  sub_1E325F69C(v1, &qword_1ECF3DE58);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v46, v47);
  sub_1E325F69C(v0, &qword_1ECF3DE58);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v48, v49);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3FE9458()
{
  result = qword_1ECF3DD10;
  if (!qword_1ECF3DD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DD08, &qword_1E42E4550);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DD18, &qword_1E42E4558);
    sub_1E3FE9520();
    swift_getOpaqueTypeConformance2();
    sub_1E3FE9688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DD10);
  }

  return result;
}

unint64_t sub_1E3FE9520()
{
  result = qword_1ECF3DD20;
  if (!qword_1ECF3DD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DD18, &qword_1E42E4558);
    sub_1E3FEAD84(&unk_1ECF3DD28);
    sub_1E3743478(&qword_1EE2887C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DD20);
  }

  return result;
}

unint64_t sub_1E3FE9604()
{
  result = qword_1ECF3DD38;
  if (!qword_1ECF3DD38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DD40, &qword_1E42E4568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DD38);
  }

  return result;
}

unint64_t sub_1E3FE9688()
{
  result = qword_1ECF3DD48;
  if (!qword_1ECF3DD48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DCF8, &unk_1E42E4538);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DD18, &qword_1E42E4558);
    sub_1E3FE9520();
    swift_getOpaqueTypeConformance2();
    sub_1E3FEAEAC(&qword_1EE288768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DD48);
  }

  return result;
}

uint64_t sub_1E3FE9780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DDF8, &qword_1E42E4740);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v133 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v138 = v10;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE80, &unk_1E42E47C8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v130 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  v131 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  v137 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v139 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BB8, &unk_1E429B6A0);
  OUTLINED_FUNCTION_17_2(v19);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_49_2();
  v21 = type metadata accessor for SportsBannerLogoView(0);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  v127 = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v120 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3CF18, &qword_1E42DEFF0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_5();
  v126 = v29;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_23_8();
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE88, &qword_1E42E47D8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_5();
  v123 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v120 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DE90, &qword_1E42E47E0);
  v37 = OUTLINED_FUNCTION_17_2(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_5();
  v129 = v38;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_6();
  v136 = v40;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_6();
  v128 = v42;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_78();
  v44 = type metadata accessor for SportsBannerLogoViewModel();
  v45 = sub_1E3F29170();
  v122 = v44;
  v46 = sub_1E3CBAB38(v45, 0);
  v47 = *(a1 + *(type metadata accessor for SportsBannerScoreboardView(0) + 60));

  sub_1E3CBCBC0();

  v124 = v4;
  sub_1E3CBCC24(v4, v46, v47, v26);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_28_52();
  LOBYTE(v123) = 1;
  v122 = 0;
  LOBYTE(v121) = 1;
  v48 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_92_1(v48, v49, v50, v51, v52, v53, v54, v55, v120);
  sub_1E3CBC9EC(v26, v3);
  v125 = v27;
  v56 = *(v27 + 36);
  v57 = v120;
  memcpy((v3 + v56), v153, 0x70uLL);
  sub_1E3741EA0(v3, v35, &qword_1ECF3CF18, &qword_1E42DEFF0);
  *&v35[*(v57 + 36)] = 1;
  v58 = sub_1E3FEAD84(&unk_1ECF3DE98);
  v135 = v2;
  v121 = v58;
  sub_1E4202ED4();
  v59 = sub_1E325F69C(v35, &qword_1ECF3DE88);
  v61 = 0.0;
  v62 = 0.0;
  if (v47)
  {
    v62 = sub_1E3757514(v59, v60);
  }

  v63 = v139;
  sub_1E3F2C430(v139);
  sub_1E3F2951C();
  sub_1E3FE5D4C(0);
  v64 = OUTLINED_FUNCTION_73_22();
  v66 = (v63 + *(v134 + 36));
  v67 = v155;
  *v66 = v154;
  v66[1] = v67;
  v66[2] = v156;
  if (v47)
  {
    v61 = sub_1E3757514(v64, v65);
  }

  v68 = sub_1E4201D44();
  if (v47)
  {
    sub_1E3756660();
    OUTLINED_FUNCTION_30();
    v70 = (*(v69 + 1176))();
    v72 = v71;

    if (v72)
    {
      v73 = 0;
    }

    else
    {
      v73 = v70;
    }
  }

  else
  {
    v73 = 0;
  }

  v74 = v138;
  *v138 = v68;
  v74[1] = v73;
  *(v74 + 16) = 0;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DDA0, &qword_1E42E45E8);
  v76 = sub_1E3FE8114(a1, v74 + *(v75 + 44));
  v78 = 0.0;
  v79 = 0.0;
  if (v47)
  {
    v79 = sub_1E3757514(v76, v77);
  }

  v80 = v137;
  sub_1E3F2C430(v137);
  sub_1E3F2951C();
  sub_1E3FE5D4C(1);
  v81 = OUTLINED_FUNCTION_73_22();
  v83 = (v80 + *(v134 + 36));
  v84 = v158;
  *v83 = v157;
  v83[1] = v84;
  v83[2] = v159;
  if (v47)
  {
    v78 = sub_1E3757514(v81, v82);
  }

  v85 = v47 == 0;
  v86 = sub_1E3F29170();
  v87 = sub_1E3CBAB38(v86, 1);
  v88 = v124;
  sub_1E3CBCBC0();
  v89 = v127;
  sub_1E3CBCC24(v88, v87, v47, v127);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_28_52();
  LOBYTE(v129) = 1;
  v128 = 0;
  LOBYTE(v127) = 1;
  v90 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_92_1(v90, v91, v92, v93, v94, v95, v96, v97, v126);
  v98 = v126;
  sub_1E3CBC9EC(v89, v126);
  memcpy((v98 + *(v125 + 36)), __src, 0x70uLL);
  v99 = v98;
  v100 = v123;
  sub_1E3741EA0(v99, v123, &qword_1ECF3CF18, &qword_1E42DEFF0);
  *(v100 + *(v57 + 36)) = 1;
  v101 = v128;
  sub_1E4202ED4();
  sub_1E325F69C(v100, &qword_1ECF3DE88);
  v150 = 0;
  v151 = 1;
  v152[0] = &v150;
  v102 = v136;
  sub_1E3743538(v135, v136, &qword_1ECF3DE90, &qword_1E42E47E0);
  v148 = v62;
  v149 = v85;
  v152[1] = v102;
  v152[2] = &v148;
  v103 = v131;
  OUTLINED_FUNCTION_113_1(v139, v131);
  v146 = v61;
  v147 = v85;
  v152[3] = v103;
  v152[4] = &v146;
  v104 = v138;
  v105 = v133;
  sub_1E3743538(v138, v133, &qword_1ECF3DDF8, &qword_1E42E4740);
  v144 = v79;
  v145 = v85;
  v152[5] = v105;
  v152[6] = &v144;
  v106 = v137;
  v107 = v130;
  OUTLINED_FUNCTION_113_1(v137, v130);
  v142 = v78;
  v143 = v85;
  v152[7] = v107;
  v152[8] = &v142;
  v108 = v129;
  sub_1E3743538(v101, v129, &qword_1ECF3DE90, &qword_1E42E47E0);
  v140 = 0;
  v141 = 1;
  v152[9] = v108;
  v152[10] = &v140;
  sub_1E3FE78CC(v152, v132);
  sub_1E325F69C(v101, &qword_1ECF3DE90);
  sub_1E325F69C(v106, &qword_1ECF3DE80);
  sub_1E325F69C(v104, &qword_1ECF3DDF8);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F69C(v109, v110);
  sub_1E325F69C(v135, &qword_1ECF3DE90);
  OUTLINED_FUNCTION_49_58();
  sub_1E325F69C(v111, v112);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F69C(v113, v114);
  sub_1E325F69C(v105, &qword_1ECF3DDF8);
  OUTLINED_FUNCTION_39_35();
  sub_1E325F69C(v115, v116);
  OUTLINED_FUNCTION_49_58();
  return sub_1E325F69C(v117, v118);
}

uint64_t sub_1E3FEA03C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400, &qword_1E42AC130);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  if (a2)
  {
    sub_1E3FE28A8();
    v7 = 4;
  }

  else
  {
    sub_1E3FE2854();
    v7 = 3;
  }

  sub_1E3FE2AC4(v7);
  sub_1E4202474();
  sub_1E4202494();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DDA8, &qword_1E42E45F0);
  OUTLINED_FUNCTION_1_11();
  sub_1E3743478(v12);
  OUTLINED_FUNCTION_8_154();
  sub_1E3E038E0();

  return sub_1E325F69C(v6, &qword_1ECF2E400);
}

uint64_t sub_1E3FEA1A8()
{
  v1 = OUTLINED_FUNCTION_52_51();
  type metadata accessor for SportsVoiceOverViewModel(v1);
  OUTLINED_FUNCTION_3_239();
  sub_1E3FEAEAC(v2);
  sub_1E42010C4();
  return v0;
}

void sub_1E3FEA22C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E400, &qword_1E42AC130);
  OUTLINED_FUNCTION_17_2(v22);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &a9 - v24;
  sub_1E3FE2954();
  v26 = sub_1E4202494();
  OUTLINED_FUNCTION_74_21(v26);
  sub_1E3FE2AC4(5u);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DDB8, &qword_1E42E45F8);
  OUTLINED_FUNCTION_1_11();
  sub_1E3743478(v27);
  sub_1E3E038E0();

  sub_1E325F69C(v25, &qword_1ECF2E400);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FEA350()
{
  type metadata accessor for SportsVoiceOverViewModel(0);
  OUTLINED_FUNCTION_3_239();
  sub_1E3FEAEAC(v0);
  OUTLINED_FUNCTION_32_0();

  return sub_1E42010C4();
}

void View.ifAccessibilityOff<A>(typeSize:transform:)()
{
  OUTLINED_FUNCTION_31_1();
  v6 = v5;
  v33 = v8;
  v34 = v7;
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_1_2();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_78();
  v35 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_2();
  if (sub_1E42012B4())
  {
    v18 = OUTLINED_FUNCTION_55_49();
    v2(v18);
    v19 = OUTLINED_FUNCTION_63_34();
    v2(v19);
    OUTLINED_FUNCTION_40_70();
    sub_1E37B8E90(v20, v21, v22);
    v23 = *(v3 + 8);
    v23(v12, v6);
    v23(v0, v6);
  }

  else
  {
    v34(v1);
    v24 = OUTLINED_FUNCTION_54_49();
    (v33)(v24);
    v25 = *(v12 + 8);
    v26 = OUTLINED_FUNCTION_58_1();
    v25(v26);
    OUTLINED_FUNCTION_112_1();
    v33();
    OUTLINED_FUNCTION_40_70();
    sub_1E37B8D98(v27, v28);
    v29 = OUTLINED_FUNCTION_58_1();
    v25(v29);
    v30 = OUTLINED_FUNCTION_125();
    v25(v30);
  }

  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v31 = OUTLINED_FUNCTION_53_50();
  v32(v31);
  (*(v16 + 8))(v4, v35);
  OUTLINED_FUNCTION_25_2();
}

void View.ifAccessibilityOn<A>(typeSize:transform:)()
{
  OUTLINED_FUNCTION_31_1();
  v6 = v5;
  v33 = v8;
  v34 = v7;
  OUTLINED_FUNCTION_1_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_93_0();
  OUTLINED_FUNCTION_1_2();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_78();
  v35 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v16 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_2();
  if (sub_1E42012B4())
  {
    v34(v1);
    v18 = OUTLINED_FUNCTION_54_49();
    (v33)(v18);
    v19 = *(v12 + 8);
    v20 = OUTLINED_FUNCTION_58_1();
    v19(v20);
    OUTLINED_FUNCTION_112_1();
    v33();
    OUTLINED_FUNCTION_40_70();
    sub_1E37B8D98(v21, v22);
    v23 = OUTLINED_FUNCTION_58_1();
    v19(v23);
    v24 = OUTLINED_FUNCTION_125();
    v19(v24);
  }

  else
  {
    v25 = OUTLINED_FUNCTION_55_49();
    v2(v25);
    v26 = OUTLINED_FUNCTION_63_34();
    v2(v26);
    OUTLINED_FUNCTION_40_70();
    sub_1E37B8E90(v27, v28, v29);
    v30 = *(v3 + 8);
    v30(v12, v6);
    v30(v0, v6);
  }

  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v31 = OUTLINED_FUNCTION_53_50();
  v32(v31);
  (*(v16 + 8))(v4, v35);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FEA940()
{
  v1 = *(v0 + 24);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35378, &qword_1E42C3E10);
  OUTLINED_FUNCTION_27_95();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v4 = j__OUTLINED_FUNCTION_18();
  return sub_1E37B8C10(v1, v4 & 1, v2, OpaqueTypeConformance2);
}

unint64_t sub_1E3FEA9E8()
{
  result = qword_1ECF3DD88;
  if (!qword_1ECF3DD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DD70, &qword_1E42E45C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35378, &qword_1E42C3E10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DD80, &qword_1E42E45E0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DD88);
  }

  return result;
}

unint64_t sub_1E3FEAB5C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    OUTLINED_FUNCTION_2_238();
    sub_1E3FEAEAC(v8);
    OUTLINED_FUNCTION_4_1();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3FEAC38()
{
  result = qword_1ECF3DDC8;
  if (!qword_1ECF3DDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DDD0, &qword_1E42E4720);
    sub_1E3743478(&unk_1ECF3DCC8);
    sub_1E3743478(&unk_1ECF3DCD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DDC8);
  }

  return result;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBP06VideosB0E16vuiAccessibility5label8behavior12sortPriorityQrSSSg_AA0F13ChildBehaviorVSgSdSgtFQOyAA01_C16Modifier_ContentVyAD020SportsScoreVoiceOverM0VG_Qo_HOTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_40_2(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v5, v6);
  OUTLINED_FUNCTION_1_11();
  sub_1E3743478(a4);
  OUTLINED_FUNCTION_7_22();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1E3FEAD84(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_40_2(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    OUTLINED_FUNCTION_4_1();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1E3FEADF0()
{
  result = qword_1ECF3DEA0;
  if (!qword_1ECF3DEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3CF18, &qword_1E42DEFF0);
    sub_1E3FEAEAC(&unk_1ECF3DEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DEA0);
  }

  return result;
}

unint64_t sub_1E3FEAEAC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_48_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1E3FEAEF0()
{
  v1 = OUTLINED_FUNCTION_52_51();
  v2(v1);
  OUTLINED_FUNCTION_2();
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  return v0;
}

uint64_t sub_1E3FEAF44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_74_21(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void *sub_1E3FEAFE0@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  *(a3 + 203) = 1;
  v13 = type metadata accessor for LegacySearchLockupListCell(0);
  v14 = v13[7];
  *(a3 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v15 = a3 + v13[9];
  type metadata accessor for CGRect(0);
  sub_1E42038E4();
  *v15 = v17;
  *(v15 + 16) = v18;
  *(v15 + 32) = v19;
  type metadata accessor for ContextMenuModel(0);

  sub_1E38F8CA4();

  sub_1E4207414();
  (*(v8 + 104))(v12, *MEMORY[0x1E697E660], v6);
  *(a3 + v13[8]) = sub_1E4188148(a1, v12);
  *a3 = a1;
  return memcpy((a3 + 8), a2, 0xC3uLL);
}

uint64_t type metadata accessor for LegacySearchLockupListCell(uint64_t a1)
{
  result = qword_1EE2958A0;
  if (!qword_1EE2958A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3FEB1EC(uint64_t a1@<X8>)
{
  v161 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DEF0, &qword_1E42E4868);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_17_3(&v136 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DEF8, &qword_1E42E4870);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v8);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF00, &qword_1E42E4878);
  OUTLINED_FUNCTION_0_10();
  v145 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v136 - v11;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF08, &qword_1E42E4880);
  OUTLINED_FUNCTION_0_10();
  v149 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v15);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF10, &qword_1E42E4888);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v136 - v17;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF18, &qword_1E42E4890);
  OUTLINED_FUNCTION_0_10();
  v156 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v21);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF20, &qword_1E42E4898);
  OUTLINED_FUNCTION_0_10();
  v159 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v24);
  v25 = objc_opt_self();
  v26 = [v25 isSearchEnabled];
  v166 = v1;
  v27 = *v1;
  v152 = v18;
  v144 = v6;
  if ((v26 & 1) == 0)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8();
  v26 = (*(v28 + 488))();
  if (!v26)
  {
    goto LABEL_6;
  }

  v30 = sub_1E373E010(16, v26, v29);

  if (v30 && *v30 != _TtC8VideosUI13TextViewModel)
  {

LABEL_6:
    v30 = 0;
  }

  v143 = v12;
  v31 = (*v27 + 488);
  v32 = *v31;
  v33 = (*v31)(v26);
  if (!v33)
  {
LABEL_11:
    v35 = 0;
    goto LABEL_12;
  }

  v35 = sub_1E373E010(23, v33, v34);

  if (v35 && *v35 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_11;
  }

LABEL_12:
  v36 = (v32)(v33);
  if (!v36)
  {
LABEL_16:
    v38 = 0;
    goto LABEL_17;
  }

  v38 = sub_1E373E010(15, v36, v37);

  if (v38 && *v38 != _TtC8VideosUI13TextViewModel)
  {

    goto LABEL_16;
  }

LABEL_17:
  v39 = (v32)(v36);
  v41 = v39;
  if (v39)
  {
    v41 = sub_1E373E010(222, v39, v40);
  }

  v42 = (v32)(v39);
  v162 = v41;
  if (v42)
  {
    v44 = sub_1E373E010(39, v42, v43);

    if (v44)
    {
      type metadata accessor for ImageViewModel();
      v164 = swift_dynamicCastClass();
      if (v164)
      {
LABEL_24:
        v41 = v162;
        goto LABEL_26;
      }
    }

    v164 = 0;
    goto LABEL_24;
  }

  v164 = 0;
LABEL_26:
  v45 = v32();
  if (v45)
  {
    v165 = sub_1E373E010(41, v45, v47);
  }

  else
  {
    v165 = 0;
  }

  v48 = sub_1E3FEC2C8(v45, v46, v47);
  v49 = MEMORY[0x1E69E7CC0];
  v171[0] = MEMORY[0x1E69E7CC0];
  v50 = [v25 isSearchEnabled];
  v167 = v48;
  if (v30 && v50)
  {
    if (v48)
    {
      v51 = v165;

      v52 = sub_1E37BD068();
    }

    else
    {
      v51 = v165;

      v52 = 0;
    }

    type metadata accessor for RichTextViewModel(0);
    v53 = sub_1E3AF46D0();
    v54 = sub_1E3AF46DC(v53);

    sub_1E3AF46E0(v55, v52, v53, v54, 0, 1);
    v56 = sub_1E3ABC5C0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v58 = *(v56 + 2);
    v57 = *(v56 + 3);
    v49 = v56;
    v165 = v51;
    if (v58 >= v57 >> 1)
    {
      v133 = OUTLINED_FUNCTION_20_121(v57);
      v49 = sub_1E3ABC5C0(v133, v134, v135, v49);
    }

    *(v49 + 2) = v58 + 1;
    OUTLINED_FUNCTION_7_214();
    v48 = v167;
  }

  if (v35)
  {

    v59 = [v25 isSearchEnabled];
    if (v30 && v59 && v38 | v41)
    {
      if (!v48)
      {
        type metadata accessor for RichTextViewModel(0);
        goto LABEL_47;
      }

      sub_1E374EA2C();
      OUTLINED_FUNCTION_73_3();
      (*(*v48 + 2056))(1, 0);

      type metadata accessor for RichTextViewModel(0);
    }

    else
    {
      type metadata accessor for RichTextViewModel(0);
      if (!v48)
      {
        goto LABEL_47;
      }
    }

    sub_1E374EA2C();
    OUTLINED_FUNCTION_73_3();
LABEL_47:
    v60 = sub_1E3AF46D0();
    sub_1E3AF46DC(v60);

    OUTLINED_FUNCTION_12_158(v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = OUTLINED_FUNCTION_4_239();
    }

    v63 = *(v49 + 2);
    v62 = *(v49 + 3);
    if (v63 >= v62 >> 1)
    {
      v49 = OUTLINED_FUNCTION_17_143(v62);
    }

    *(v49 + 2) = v63 + 1;
    OUTLINED_FUNCTION_7_214();
  }

  if (v38)
  {

    if (v48)
    {

      sub_1E374EA94();
      OUTLINED_FUNCTION_73_3();
    }

    type metadata accessor for RichTextViewModel(0);
    v64 = sub_1E3AF46D0();
    sub_1E3AF46DC(v64);

    OUTLINED_FUNCTION_12_158(v65);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = OUTLINED_FUNCTION_4_239();
    }

    v67 = *(v49 + 2);
    v66 = *(v49 + 3);
    if (v67 >= v66 >> 1)
    {
      v49 = OUTLINED_FUNCTION_17_143(v66);
    }

    *(v49 + 2) = v67 + 1;
    OUTLINED_FUNCTION_7_214();
  }

  v151 = v35;
  v155 = v30;
  v147 = v38;
  if (v41)
  {
    if (v48)
    {

      v68 = v48;
      sub_1E3AFFB84();
      OUTLINED_FUNCTION_73_3();
    }

    else
    {
      v69 = objc_allocWithZone(VUIMediaTagsViewLayout);

      v68 = [v69 init];
    }

    type metadata accessor for MediaTagsViewModel();

    v70 = v68;
    v71 = sub_1E403C2C0(v41, v68);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = OUTLINED_FUNCTION_4_239();
    }

    v163 = v49;
    v73 = *(v49 + 2);
    v72 = *(v49 + 3);
    if (v73 >= v72 >> 1)
    {
      v130 = OUTLINED_FUNCTION_20_121(v72);
      v163 = sub_1E3ABC5C0(v130, v131, v132, v163);
    }

    v74 = v163;
    *(v163 + 2) = v73 + 1;
    *&v74[8 * v73 + 32] = v71 | 0x8000000000000000;
    v171[0] = v74;
    v75 = [objc_allocWithZone(VUIMediaTagsView) init];
    [v75 elementsArePlacedOnIndividualLines];
  }

  else
  {
    v163 = v49;
  }

  v76 = sub_1E4201D44();
  v77 = v142;
  *v142 = v76;
  *(v77 + 8) = 0;
  *(v77 + 16) = 0;
  v78 = sub_1E4201B84();
  v79 = v140;
  *v140 = v78;
  *(v79 + 8) = 0;
  *(v79 + 16) = 0;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF28, &qword_1E42E48A0);
  sub_1E3FEC408(v164, v48, v165, v171, v79 + *(v80 + 44));
  v81 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF30, &qword_1E42E48A8) + 44);
  sub_1E4203DA4();
  sub_1E4200D94();
  v139 = v171[1];
  v138 = v173;
  v82 = v175;
  v137 = v176;
  v170 = 1;
  v169 = v172;
  v168 = v174;
  v83 = v141;
  sub_1E379D7E4(v79, v141, &qword_1ECF3DEF0, &qword_1E42E4868);
  v84 = v170;
  v85 = v169;
  v86 = v168;
  sub_1E379D7E4(v83, v81, &qword_1ECF3DEF0, &qword_1E42E4868);
  v87 = v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF38, &unk_1E42E48B0) + 48);
  *v87 = 0;
  *(v87 + 8) = v84;
  *(v87 + 16) = v139;
  *(v87 + 24) = v85;
  *(v87 + 32) = v138;
  *(v87 + 40) = v86;
  *(v87 + 48) = v82;
  v88 = v167;
  *(v87 + 56) = v137;
  sub_1E325F6F0(v79, &qword_1ECF3DEF0, &qword_1E42E4868);
  sub_1E325F6F0(v83, &qword_1ECF3DEF0, &qword_1E42E4868);
  v89 = *(v166 + *(type metadata accessor for LegacySearchLockupListCell(0) + 32));
  v90 = sub_1E32752B0(&qword_1ECF3DF40, &qword_1ECF3DEF8, &qword_1E42E4870, MEMORY[0x1E6981870]);
  v91 = v143;
  v92 = v144;
  sub_1E4187EA8(v89, v144, v90);
  sub_1E325F6F0(v77, &qword_1ECF3DEF8, &qword_1E42E4870);
  if (v88)
  {
    v93 = *(*v88 + 792);

    v95 = v93(v94);
  }

  else
  {
    v95 = 11;
  }

  v96 = v158;
  v97 = v153;
  v98 = v152;
  v99 = v148;
  memset(v182, 0, sizeof(v182));
  v183 = 1;
  v179 = v92;
  v180 = v90;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v101 = v146;
  sub_1E3A6929C(v95, 0, 0, 1, v182, v146, OpaqueTypeConformance2);
  (*(v145 + 8))(v91, v101);
  if (v88)
  {
    v102 = *(*v88 + 744);

    v104 = v88;
    v102(v103);
    OUTLINED_FUNCTION_73_3();
  }

  else
  {
    v104 = [objc_opt_self() clearColor];
  }

  v105 = sub_1E38F08C4(v104);

  v106 = sub_1E4202734();
  (*(v149 + 32))(v98, v99, v150);
  v107 = v98 + *(v97 + 36);
  *v107 = v105;
  *(v107 + 8) = v106;
  if (v167)
  {
    OUTLINED_FUNCTION_8();
    v109 = *(v108 + 552);

    v109(&v177, v110);

    if ((v178 & 1) == 0)
    {
      v111 = OUTLINED_FUNCTION_6();
      sub_1E3952BE8(v111, v112, v113, v114);
    }
  }

  v115 = sub_1E3FECF90();
  v116 = v154;
  sub_1E3E361E8();
  sub_1E32DF3A8(v98);
  v117 = v167;

  v179 = v97;
  v180 = v115;
  v118 = swift_getOpaqueTypeConformance2();
  v119 = v157;
  OUTLINED_FUNCTION_32_0();
  v120 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_32_0();
  LOBYTE(v115) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_32_0();
  v121 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v117, v120 & 1, v115 & 1, 1, v121 & 1, v119, v118);

  (*(v156 + 8))(v116, v119);
  if (v117 && (v122 = *(*v117 + 152), v123 = , v122(&v179, v123), , (v181 & 1) == 0))
  {
    v124.n128_f64[0] = OUTLINED_FUNCTION_6();
    j_nullsub_1(v124, v125, v126, v127);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  sub_1E4202734();

  v128 = v161;
  (*(v159 + 32))(v161, v96, v160);

  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF50, &qword_1E42E48C0);
  OUTLINED_FUNCTION_7_3(v128 + *(v129 + 36));
}

uint64_t sub_1E3FEC2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 186) == 3)
  {
    return 0;
  }

  sub_1E3AFFC64(a1, a2, a3);
  if (sub_1E4205E84())
  {
    type metadata accessor for SearchViewModel();
    result = swift_dynamicCastClass();
    if (result)
    {
      return (*(*result + 1008))();
    }
  }

  else
  {
    if ((sub_1E4205E84() & 1) == 0)
    {
      return 0;
    }

    type metadata accessor for SearchViewModel();
    result = swift_dynamicCastClass();
    if (result)
    {
      return (*(*result + 1032))();
    }
  }

  return result;
}

uint64_t sub_1E3FEC408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v134 = a3;
  v129 = a2;
  v8 = type metadata accessor for StackedTextViews(0);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_17_3(&v123 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF60, &qword_1E42E4940);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v123 - v18;
  v132 = type metadata accessor for Monogram(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = (v22 - v21);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF68, &qword_1E42E4948);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v26);
  v27 = type metadata accessor for ImageViewWithOverlay(0);
  v28 = OUTLINED_FUNCTION_17_2(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v30 - v29);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF70, &qword_1E42E4950);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4_6();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v123 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF78, &qword_1E42E4958);
  v39 = OUTLINED_FUNCTION_17_2(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_17_3(&v123 - v41);
  if (a1)
  {
    v128 = a4;
    v125 = a5;
    OUTLINED_FUNCTION_8();
    v43 = *(v42 + 488);

    v45 = v43(v44);
    if (v45)
    {
      v133 = sub_1E373E010(155, v45, v47);
    }

    else
    {
      v133 = 0;
    }

    v61 = sub_1E3FEC2C8(v45, v46, v47);
    v124 = v16;
    if (v61)
    {

      sub_1E38A86A4();
      OUTLINED_FUNCTION_73_3();
      OUTLINED_FUNCTION_8();
      (*(v62 + 200))();

      v63 = sub_1E38A86A4();

      (*(*v63 + 304))(v64);
    }

    v134 = a1;
    v123 = v19;
    OUTLINED_FUNCTION_24_105();
    if (v66)
    {
      v67 = v65;
    }

    else
    {
      v67 = 0;
    }

    j__OUTLINED_FUNCTION_51_1();
    j__OUTLINED_FUNCTION_18();
    v121 = j__OUTLINED_FUNCTION_18() & 1;
    OUTLINED_FUNCTION_9_177();
    v68 = OUTLINED_FUNCTION_15_160();
    OUTLINED_FUNCTION_6_14(v68, v67, v69, v70, v115, v116, v117, v118, v119, v120, SHIBYTE(v120), v121);

    v71 = v129;
    if (v129)
    {
      v72 = sub_1E38A86A4();
    }

    else
    {
      v72 = 0;
    }

    v127 = v24;
    v73 = OUTLINED_FUNCTION_18();
    v74 = sub_1E3BF493C();
    v76 = v75;
    v78 = v77;
    v79 = v133;

    v81 = v73 & 1;
    v82 = v126;
    sub_1E3FB1C2C(v80, v141, v79, v72, v81, v74, v76, v78 & 1, v126, 0, 0);
    if (v71 && (v83 = sub_1E38A86A4(), (*(*v83 + 152))(&v139), , (v140 & 1) == 0))
    {
      v84.n128_f64[0] = OUTLINED_FUNCTION_6();
      j_nullsub_1(v84, v85, v86, v87);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    v88 = v125;
    v16 = v124;
    v89 = v135;
    v19 = v123;
    sub_1E4202734();
    sub_1E3FB29B8(v82, v34);
    OUTLINED_FUNCTION_7_3(v34 + *(v130 + 36));
    sub_1E3FED598(v34, v37);
    a4 = &qword_1ECF3DF70;
    sub_1E379D7E4(v37, v131, &qword_1ECF3DF70, &qword_1E42E4950);
    swift_storeEnumTagMultiPayload();
    sub_1E3FED43C();
    OUTLINED_FUNCTION_3_240();
    sub_1E3FED4F8(v90, v91, &unk_1E42C18F0);
    sub_1E4201F44();

    sub_1E325F6F0(v37, &qword_1ECF3DF70, &qword_1E42E4950);
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF80, &qword_1E42E4960);
    OUTLINED_FUNCTION_25_102(v92);
    a5 = v88;
  }

  else if (v134)
  {
    v127 = v24;
    v128 = a4;

    if (sub_1E3FEC2C8(v48, v49, v50))
    {

      v52 = sub_1E3AFF5D8(v51);

      v54 = (*(*v52 + 1744))(v53);

      (*(*v54 + 200))(v55);

      v57 = sub_1E3AFF5D8(v56);

      v59 = (*(*v57 + 1744))(v58);

      (*(*v59 + 304))(v60);
    }

    OUTLINED_FUNCTION_24_105();
    if (v66)
    {
      v95 = v94;
    }

    else
    {
      v95 = 0;
    }

    j__OUTLINED_FUNCTION_51_1();
    j__OUTLINED_FUNCTION_18();
    v122 = j__OUTLINED_FUNCTION_18() & 1;
    OUTLINED_FUNCTION_9_177();
    v96 = OUTLINED_FUNCTION_15_160();
    OUTLINED_FUNCTION_6_14(v96, v95, v97, v98, v115, v116, v117, v118, v119, v120, SHIBYTE(v120), v122);

    if (v129)
    {
      v100 = sub_1E3AFF5D8(v99);
    }

    else
    {
      v100 = 0;
    }

    v89 = v135;

    sub_1E3BD63E4(v101, 0, v141, v100, 0, 0, 0, 0, v23);
    sub_1E3FED3E0(v23, v131, type metadata accessor for Monogram);
    swift_storeEnumTagMultiPayload();
    a4 = sub_1E3FED43C();
    OUTLINED_FUNCTION_3_240();
    sub_1E3FED4F8(v102, v103, &unk_1E42C18F0);
    sub_1E4201F44();

    sub_1E3FED540(v23, type metadata accessor for Monogram);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF80, &qword_1E42E4960);
    OUTLINED_FUNCTION_25_102(v104);
  }

  else
  {
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF80, &qword_1E42E4960);
    v89 = v135;
    __swift_storeEnumTagSinglePayload(v135, 1, 1, v93);
  }

  *v19 = sub_1E4201B84();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v105 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF88, &qword_1E42E4968) + 44)];
  v106 = *a4;

  v108 = sub_1E404034C(v107);
  v109 = v137;
  sub_1E403E1F8(v106, v108, v137);
  v110 = v138;
  sub_1E3FED3E0(v109, v138, type metadata accessor for StackedTextViews);
  sub_1E3FED3E0(v110, v105, type metadata accessor for StackedTextViews);
  v111 = v105 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF90, &qword_1E42E4970) + 48);
  *v111 = 0;
  *(v111 + 8) = 1;
  sub_1E3FED540(v109, type metadata accessor for StackedTextViews);
  sub_1E3FED540(v110, type metadata accessor for StackedTextViews);
  v112 = v136;
  sub_1E379D7E4(v89, v136, &qword_1ECF3DF78, &qword_1E42E4958);
  sub_1E379D7E4(v19, v16, &qword_1ECF3DF60, &qword_1E42E4940);
  sub_1E379D7E4(v112, a5, &qword_1ECF3DF78, &qword_1E42E4958);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF98, qword_1E42E4978);
  sub_1E379D7E4(v16, a5 + *(v113 + 48), &qword_1ECF3DF60, &qword_1E42E4940);
  sub_1E325F6F0(v19, &qword_1ECF3DF60, &qword_1E42E4940);
  sub_1E325F6F0(v89, &qword_1ECF3DF78, &qword_1E42E4958);
  sub_1E325F6F0(v16, &qword_1ECF3DF60, &qword_1E42E4940);
  return sub_1E325F6F0(v112, &qword_1ECF3DF78, &qword_1E42E4958);
}

unint64_t sub_1E3FECF90()
{
  result = qword_1ECF3DF48;
  if (!qword_1ECF3DF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DF10, &qword_1E42E4888);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DF00, &qword_1E42E4878);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DEF8, &qword_1E42E4870);
    sub_1E32752B0(&qword_1ECF3DF40, &qword_1ECF3DEF8, &qword_1E42E4870, MEMORY[0x1E6981870]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE288898, &qword_1ECF2DCD8, &qword_1E42AE9C0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DF48);
  }

  return result;
}

void sub_1E3FED144(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E3FED270(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ContextMenuModel(319);
      if (v3 <= 0x3F)
      {
        sub_1E3FED270(319, &qword_1EE288650, type metadata accessor for CGRect, MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3FED270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E3FED2D4()
{
  result = qword_1ECF3DF58;
  if (!qword_1ECF3DF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DF50, &qword_1E42E48C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DF18, &qword_1E42E4890);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DF10, &qword_1E42E4888);
    sub_1E3FECF90();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DF58);
  }

  return result;
}

uint64_t sub_1E3FED3E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

unint64_t sub_1E3FED43C()
{
  result = qword_1ECF3DFA0;
  if (!qword_1ECF3DFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DF70, &qword_1E42E4950);
    sub_1E3FED4F8(qword_1EE26CB60, type metadata accessor for ImageViewWithOverlay, &unk_1E42E2390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DFA0);
  }

  return result;
}

uint64_t sub_1E3FED4F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E3FED540(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E3FED598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DF70, &qword_1E42E4950);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1E3FED608()
{
  v1 = OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController____lazy_storage___canonicalConfig;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController____lazy_storage___canonicalConfig);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController____lazy_storage___canonicalConfig);
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 canonicalConfig];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void sub_1E3FED6AC(char a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CanonicalTemplateController(0);
  objc_msgSendSuper2(&v3, sel_vui_viewDidAppear_, a1 & 1);
  sub_1E3EDC240();
}

uint64_t type metadata accessor for CanonicalTemplateController(uint64_t a1)
{
  result = qword_1EE294D90;
  if (!qword_1EE294D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3FED794(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CanonicalTemplateController(0);
  objc_msgSendSuper2(&v4, sel_vui_viewDidDisappear_, a1 & 1);
  v3 = [v1 userActivity];
  [v3 resignCurrent];
}

void sub_1E3FED858(void *a1)
{
  sub_1E3ED6400(a1);
  if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x230))())
  {

    sub_1E3905190(v4, v5, v6);
    if (sub_1E4205E84())
    {
      type metadata accessor for SportsCanonicalBannerCell();
      swift_getObjCClassFromMetadata();
      sub_1E3859230(86);
      sub_1E4205ED4();
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_1_274();

      type metadata accessor for SportsPlayByPlayCell();
      v7 = 191;
    }

    else
    {
      type metadata accessor for CanonicalBannerViewCell();
      swift_getObjCClassFromMetadata();
      sub_1E3859230(83);
      sub_1E4205ED4();
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_1_274();

      type metadata accessor for CanonicalFooterViewCell();
      swift_getObjCClassFromMetadata();
      sub_1E3859230(107);
      sub_1E4205ED4();
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_1_274();

      type metadata accessor for CanonicalInfoCardCell();
      swift_getObjCClassFromMetadata();
      sub_1E3859230(166);
      sub_1E4205ED4();
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_1_274();

      sub_1E3859230(192);
      sub_1E4205ED4();
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_1_274();

      sub_1E3859230(168);
      sub_1E4205ED4();
      OUTLINED_FUNCTION_7_8();
      OUTLINED_FUNCTION_1_274();

      type metadata accessor for VideoItunesExtrasDescriptionCell();
      v7 = 177;
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1E3859230(v7);
    v9 = sub_1E4205ED4();

    [a1 vui:ObjCClassFromMetadata registerClass:v9 forCellWithReuseIdentifier:?];
  }
}

void sub_1E3FEDA5C()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = *(v8 + 98);
  if (sub_1E373F6E0(v9, 107, v2, v10, v11, v12) & 1) != 0 || (sub_1E373F6E0(v9, 75, v13, v14, v15, v16) & 1) != 0 || (sub_1E373F6E0(v9, 89, v17, v18, v19, v20))
  {
    OUTLINED_FUNCTION_6_204();
    sub_1E3AD9330();
    if (v25)
    {
      v26 = v25;
      sub_1E3790540(__dst);
      v27 = __dst[1];
      v28 = __dst[0];
      v29 = __dst[3];
      v30 = __dst[2];
      v31 = __dst[5];
      v32 = __dst[4];
      v33 = __dst[7];
      v34 = __dst[6];
      v35 = __dst[9];
      v36 = __dst[8];
      v38 = *(&__dst[10] + 1);
      v37 = *&__dst[10];
LABEL_11:
      *v7 = v26;
      *(v7 + 8) = v28;
      *(v7 + 24) = v27;
      *(v7 + 40) = v30;
      *(v7 + 56) = v29;
      *(v7 + 72) = v32;
      *(v7 + 88) = v31;
      *(v7 + 104) = v34;
      *(v7 + 120) = v33;
      *(v7 + 136) = v36;
      *(v7 + 152) = v35;
      *(v7 + 168) = v37;
      *(v7 + 176) = v38;
      OUTLINED_FUNCTION_42();
      return;
    }

LABEL_10:
    OUTLINED_FUNCTION_6_204();
    sub_1E3ED6648(v42, v43);
    v26 = *&__dst[0];
    v28 = *(__dst + 8);
    v27 = *(&__dst[1] + 8);
    v30 = *(&__dst[2] + 8);
    v29 = *(&__dst[3] + 8);
    v31 = *(&__dst[5] + 8);
    v32 = *(&__dst[4] + 8);
    v33 = *(&__dst[7] + 8);
    v34 = *(&__dst[6] + 8);
    v35 = *(&__dst[9] + 8);
    v36 = *(&__dst[8] + 8);
    v37 = *(&__dst[10] + 1);
    v38 = v136;
    goto LABEL_11;
  }

  if ((sub_1E373F6E0(v9, 129, v21, v22, v23, v24) & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for CollectionViewModel();
  v39 = swift_dynamicCastClass();
  if (!v39)
  {
    goto LABEL_10;
  }

  v40 = v39;

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x470))(v40, v5, v3);
  if (v3)
  {
    swift_getObjectType();
    v41 = sub_1E40175B0();
  }

  else
  {
    v41 = 0.0;
  }

  v44 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x458))(__dst, v40, v3);
  v45 = __dst[0];
  type metadata accessor for LayoutGrid();
  sub_1E3A258E4(v41);
  v46 = (*((*v44 & *v1) + 0x460))(v40, v3);
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = (*(*v40 + 1040))();
  v54 = MEMORY[0x1E69E7CC0];
  if (!v53)
  {
    v92 = MEMORY[0x1E69E7CC0];
LABEL_50:
    v140[0] = v54;
    v93 = *(v92 + 2);
    if (v93)
    {
      v131 = v52;
      v94 = v50;
      v95 = v48;
      v96 = v46;
      v97 = v92;
      v98 = objc_opt_self();
      v99 = objc_opt_self();
      v100 = objc_opt_self();
      v101 = (v97 + 40);
      v102 = 0.0;
      v103 = 0.0;
      do
      {
        v105 = *(v101 - 1);
        v104 = *v101;
        v106 = [v98 absoluteDimension_];
        v107 = [v98 fractionalHeightDimension_];
        v108 = [v99 sizeWithWidthDimension:v106 heightDimension:v107];

        v109 = [v100 itemWithLayoutSize_];
        MEMORY[0x1E6910BF0]();
        if (*((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();

        if (--v93)
        {
          v103 = *(&v45 + 1) + v103 + *&v45;
        }

        else
        {
          v103 = v103 + v105;
        }

        if (v102 <= v104)
        {
          v102 = v104;
        }

        v101 += 2;
      }

      while (v93);
      v46 = v96;
      v48 = v95;
      v50 = v94;
      v52 = v131;
    }

    else
    {
      v102 = 0.0;
      v103 = 0.0;
    }

    v110 = objc_opt_self();
    v111 = [v110 absoluteDimension_];
    v112 = [v110 absoluteDimension_];
    v113 = [objc_opt_self() sizeWithWidthDimension:v111 heightDimension:v112];

    v114 = objc_opt_self();
    sub_1E3280A90(0, &unk_1EE23B0A0, 0x1E6995578);
    v115 = sub_1E42062A4();

    v116 = [v114 horizontalGroupWithLayoutSize:v113 subitems:v115];

    v117 = [objc_opt_self() fixedSpacing_];
    [v116 setInterItemSpacing_];

    v26 = [objc_opt_self() sectionWithGroup_];
    [v26 setOrthogonalScrollingBehavior_];
    [v26 setContentInsets_];
    sub_1E3790540(__src);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1E3F3778C(__dst, v26, v138);
    v132 = v138[0];
    v134 = v138[1];
    v127 = v138[2];
    v129 = v138[3];
    v124 = v138[4];
    v125 = v138[5];
    v121 = v138[6];
    v122 = v138[7];
    v119 = v138[8];
    v120 = v138[9];
    v38 = *(&v138[10] + 1);
    v37 = *&v138[10];

    memcpy(v139, v138, sizeof(v139));
    if (sub_1E3AD9318(v139) == 1)
    {
      v132 = __src[0];
      v134 = __src[1];
      v127 = __src[2];
      v129 = __src[3];
      v124 = __src[4];
      v125 = __src[5];
      v121 = __src[6];
      v122 = __src[7];
      v119 = __src[8];
      v120 = __src[9];
      v38 = *(&__src[10] + 1);
      v37 = *&__src[10];
    }

    v28 = v132;
    v27 = v134;
    v30 = v127;
    v29 = v129;
    v32 = v124;
    v31 = v125;
    v34 = v121;
    v33 = v122;
    v36 = v119;
    v35 = v120;
    goto LABEL_11;
  }

  v55 = v53;
  if (!sub_1E32AE9B0(v53))
  {
    goto LABEL_48;
  }

  if ((v55 & 0xC000000000000001) != 0)
  {
    v56 = MEMORY[0x1E6911E60](0, v55);
  }

  else
  {
    if (!*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_67;
    }

    v56 = *(v55 + 32);
  }

  v58 = (*(*v56 + 872))(v57);
  if (!v58)
  {

LABEL_49:
    v92 = MEMORY[0x1E69E7CC0];
    v54 = MEMORY[0x1E69E7CC0];
    goto LABEL_50;
  }

  v59 = v58;
  v60 = sub_1E32AE9B0(v58);
  if (!v60)
  {

LABEL_48:

    goto LABEL_49;
  }

  v118 = v56;
  if (v60 >= 1)
  {
    v61 = 0;
    v128 = v59 & 0xC000000000000001;
    v123 = MEMORY[0x1E69E7CC0];
    v126 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8);
    v133 = v59;
    v130 = v60;
    while (1)
    {
      if (v128)
      {
        v62 = MEMORY[0x1E6911E60](v61, v59);
      }

      else
      {
        v62 = *(v59 + 8 * v61 + 32);
      }

      sub_1E38BAE74(__dst);
      v139[0] = *(__dst + 1);
      v139[1] = *(&__dst[1] + 1);
      *(&v139[1] + 10) = *(&__dst[1] + 11);
      v63 = [v1 vuiTraitCollection];
      v64 = [v63 isAXLargeEnabled];

      v65 = 1.0;
      if ((v64 & 1) == 0)
      {
        v66 = (*(*v62 + 392))();
        if (v66)
        {
          *&v67 = COERCE_DOUBLE((*(*v66 + 1128))(v66));
          v69 = v68;

          if ((v69 & 1) == 0)
          {
            v65 = *&v67;
          }
        }
      }

      v70 = v126();
      sub_1E384EE08(v62[49]);
      v71 = (*((*MEMORY[0x1E69E7D40] & *v70) + 0xE0))();

      if (v71 && (v72 = *&v45 * v65 + *(&v45 + 1) * (v65 + -1.0), (v73 = [swift_getObjCClassFromMetadata() makePrototypeCellWithFrame_]) != 0))
      {
        v74 = v73;
        type metadata accessor for UIFactory();
        v140[0] = v74;
        *(&v138[1] + 1) = &type metadata for CollectionViewCellContext;
        *&v138[2] = &off_1F5D621F8;
        v75 = swift_allocObject();
        *&v138[0] = v75;
        *(v75 + 16) = 1;
        v76 = v139[1];
        *(v75 + 17) = v139[0];
        *(v75 + 33) = v76;
        *(v75 + 43) = *(&v139[1] + 10);
        v77 = sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
        v78 = v74;

        sub_1E38E5240(v79, v140, v138, 0, 0, v77, __src);

        sub_1E325F748(v138, &qword_1ECF296C0, &unk_1E429BBE0);
        v80 = *&__src[0];
        if (*&__src[0])
        {
          objc_opt_self();
          v81 = swift_dynamicCastObjCClass();
          if (v81)
          {
            v82 = v81;
            objc_opt_self();
            v83 = swift_dynamicCastObjCClass();
            if (!v83)
            {
              v83 = v82;
            }

            [v83 vui:v72 sizeThatFits:{1.79769313e308, v118}];
            v85 = v84;
            v87 = v86;
            v88 = v1;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v123 = sub_1E3AA7150(0, *(v123 + 2) + 1, 1, v123);
            }

            v90 = *(v123 + 2);
            v89 = *(v123 + 3);
            if (v90 >= v89 >> 1)
            {
              v123 = sub_1E3AA7150((v89 > 1), v90 + 1, 1, v123);
            }

            *(v123 + 2) = v90 + 1;
            v91 = &v123[16 * v90];
            *(v91 + 4) = v85;
            *(v91 + 5) = v87;
            v1 = v88;
            goto LABEL_43;
          }
        }
      }

      else
      {
      }

LABEL_43:
      ++v61;
      v59 = v133;
      if (v130 == v61)
      {

        v54 = MEMORY[0x1E69E7CC0];
        v92 = v123;
        goto LABEL_50;
      }
    }
  }

LABEL_67:
  __break(1u);
}

void sub_1E3FEE68C()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0;
  v3 = v2;
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v52.receiver = v1;
  v52.super_class = type metadata accessor for CanonicalTemplateController(0);
  objc_msgSendSuper2(&v52, sel_vuiScrollViewDidScroll_, v3);
  v5 = MEMORY[0x1E6909190](0, 0);
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1B8);
  v8 = (v7)(v5);
  v9 = sub_1E41FE7E4();
  v10 = [v8 vui:v9 cellForItemAtIndexPath:?];

  if (!v10)
  {
    goto LABEL_30;
  }

  type metadata accessor for CanonicalBannerViewCell();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    goto LABEL_29;
  }

  v12 = (*((*v6 & *v11) + 0x4E8))();
  v13 = v7();
  [v13 vuiBounds];
  v49 = v15;
  v50 = v14;
  v48 = v16;
  v18 = v17;

  v19 = v7();
  v20 = sub_1E41FE7E4();
  v21 = [v19 layoutAttributesForItemAtIndexPath_];

  if (v21)
  {
    [v21 frame];
  }

  v53.origin.x = OUTLINED_FUNCTION_51_0();
  Height = CGRectGetHeight(v53);
  v23 = sub_1E3FED608();
  [v23 videoViewOffscreenThresholdToStopPlayback];
  v25 = v24;

  v26 = Height * v25;
  v54.origin.x = OUTLINED_FUNCTION_51_0();
  MinX = CGRectGetMinX(v54);
  v55.origin.x = OUTLINED_FUNCTION_51_0();
  MinY = CGRectGetMinY(v55);
  v56.origin.x = OUTLINED_FUNCTION_51_0();
  v58.size.width = CGRectGetWidth(v56);
  v57.origin.y = v49;
  v57.origin.x = v50;
  v57.size.width = v48;
  v57.size.height = v18;
  v58.origin.x = MinX;
  v58.origin.y = MinY;
  v58.size.height = v26;
  if (!CGRectIntersectsRect(v57, v58))
  {
    if (!v12)
    {
LABEL_15:
      v35 = OUTLINED_FUNCTION_3_241();
      v36(v35);
LABEL_18:

      goto LABEL_31;
    }

    v29 = [v12 player];
    if (!v29)
    {
      v39 = OUTLINED_FUNCTION_3_241();
      v40(v39);

      goto LABEL_18;
    }

    v30 = v29;
    v31 = [v29 state];
    v51 = objc_opt_self();
    v32 = [v51 playing];
    v33 = v32;
    if (v31)
    {
      if (v32)
      {
        sub_1E3280A90(0, &qword_1EE23B280, 0x1E69D5A40);
        v34 = sub_1E4206F64();

        if (v34)
        {
          goto LABEL_28;
        }

LABEL_23:
        v41 = [v30 state];
        v42 = [v51 loading];
        v43 = v42;
        if (v41)
        {
          if (v42)
          {
            sub_1E3280A90(0, &qword_1EE23B280, 0x1E69D5A40);
            v44 = sub_1E4206F64();

            if ((v44 & 1) == 0)
            {
              goto LABEL_34;
            }

LABEL_28:
            *(v1 + OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController_shouldResumeWhenRedisplaying) = 1;
            v45 = v12;
            [v45 pause];

            goto LABEL_29;
          }

          v43 = v41;
        }

        else if (!v42)
        {
          goto LABEL_28;
        }

LABEL_34:
        goto LABEL_30;
      }

      v33 = v31;
    }

    else if (!v32)
    {
      goto LABEL_28;
    }

    goto LABEL_23;
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController_shouldResumeWhenRedisplaying) == 1)
  {
    *(v1 + OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController_shouldResumeWhenRedisplaying) = 0;
    if (v12)
    {
      [v12 play];

LABEL_29:
LABEL_30:
      v46 = OUTLINED_FUNCTION_3_241();
      v47(v46);
      goto LABEL_31;
    }

    goto LABEL_15;
  }

  v37 = OUTLINED_FUNCTION_3_241();
  v38(v37);

LABEL_31:
  OUTLINED_FUNCTION_42();
}

void sub_1E3FEEBDC()
{
  v1 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = MEMORY[0x1E6909190](0, 0);
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))(v8);
  v11 = sub_1E41FE7E4();
  v12 = [v10 vui:v11 cellForItemAtIndexPath:?];

  if (!v12)
  {
    goto LABEL_6;
  }

  type metadata accessor for CanonicalBannerViewCell();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
LABEL_5:

LABEL_6:
    (*(v3 + 8))(v7, v1);
    return;
  }

  v14 = (*((*v9 & *v13) + 0x4E8))();
  if (v14)
  {
    v15 = v14;
    [v14 setPlaybackEnabled_];

    goto LABEL_5;
  }

  (*(v3 + 8))(v7, v1);
}

id sub_1E3FEEDB4(uint64_t a1, char a2)
{
  sub_1E3FEEE10();
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CanonicalTemplateController(0);
  return objc_msgSendSuper2(&v6, sel_vuiScrollViewDidEndDragging_willDecelerate_, a1, a2 & 1);
}

void sub_1E3FEEE10()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 applicationState];

  if (v2 == 1)
  {
    v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x1B8))();
    v6 = [v3 collectionViewLayout];

    v4 = [v6 _invalidationContextForRefreshingVisibleElementAttributes];
    if (v4)
    {
      v5 = v4;
      [v6 invalidateLayoutWithContext_];
    }
  }
}

id sub_1E3FEEFA8(uint64_t a1)
{
  sub_1E3FEEE10();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CanonicalTemplateController(0);
  return objc_msgSendSuper2(&v4, sel_vuiScrollViewDidEndDecelerating_, a1);
}

void sub_1E3FEF09C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController_shouldResumeWhenRedisplaying) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController____lazy_storage___canonicalConfig) = 0;
  sub_1E3ED15A8(a1, a2);
}

id sub_1E3FEF0B8(void *a1)
{
  v1[OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController_shouldResumeWhenRedisplaying] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI27CanonicalTemplateController____lazy_storage___canonicalConfig] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CanonicalTemplateController(0);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  return v3;
}

id sub_1E3FEF15C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanonicalTemplateController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3FEF1A4(uint64_t a1)
{
  v14 = &unk_1F5D7BE68;
  v15 = &off_1F5D7BC48;
  LOBYTE(v13[0]) = 0;
  sub_1E3F9F164(v13, a1, MEMORY[0x1E69E7CA0] + 8);
  if (!v17)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    sub_1E325F748(v16, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    return 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_1E384EE08(35);
  v14 = v1;
  v13[0] = v12;
  v4 = sub_1E3A7CD30(v2, v3, v13, 0);

  __swift_destroy_boxed_opaque_existential_1(v13);
  if (!v4)
  {
    return 0;
  }

  v5 = *(*v4 + 392);

  v7 = v5(v6);

  if (v7)
  {
    v8 = [objc_opt_self() current];
    sub_1E3C2AE10();
    v10 = v9;
    (*(*v7 + 1640))();
  }

  type metadata accessor for ImageViewModel();
  result = swift_dynamicCastClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

char *sub_1E3FEF39C(char *result, void *a2, __n128 a3)
{
  if (result || sub_1E41FE824())
  {
    goto LABEL_7;
  }

  v6 = sub_1E41FE854();
  v7 = [a2 numberOfSections];
  if (!__OFSUB__(v7, 1))
  {
    if (v6 == v7 - 1)
    {
      v8 = sub_1E41FE7E4();
      v9 = [a2 cellForItemAtIndexPath_];

      if (!v9)
      {
        return 0;
      }

      type metadata accessor for CanonicalFooterViewCell();
      v10 = swift_dynamicCastClass() != 0;

      return v10;
    }

LABEL_7:
    v11 = sub_1E41FE7E4();
    v12.receiver = v3;
    v12.super_class = type metadata accessor for CanonicalTemplateController(0);
    v10 = objc_msgSendSuper2(&v12, sel_shouldRubberbandElementWithCategory_in_at_, result, a2, v11);

    return v10;
  }

  __break(1u);
  return v7;
}

uint64_t sub_1E3FEF670(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 32, a2);
  *(v2 + 32) = a1;
  return result;
}

uint64_t sub_1E3FEF6A4()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 152);

  v11[1] = v1;
  v9 = v3(v4);
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DFA8, &unk_1E42E49E8);
  sub_1E3FEF7B0();
  sub_1E38D2054(&v9, v11);
  v5 = v11[0];

  if (!v5)
  {
    v3(v6);
    OUTLINED_FUNCTION_111();
    return (*(v7 + 184))();
  }

  return v5;
}

unint64_t sub_1E3FEF7B0()
{
  result = qword_1ECF3DFB0;
  if (!qword_1ECF3DFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3DFA8, &unk_1E42E49E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DFB0);
  }

  return result;
}

uint64_t sub_1E3FEF814(int64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (sub_1E32AE9B0(*(v1 + 24)) <= a1)
  {
    result = sub_1E32AE9B0(*(v1 + 24));
    v5 = a1 - result;
    if (__OFSUB__(a1, result))
    {
      __break(1u);
    }

    else
    {
      v6 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        sub_1E4204964();
        v7 = sub_1E4204954();
        v8 = sub_1E3FEF930(v7, v6);
        swift_beginAccess();
        sub_1E3FEF9BC(v8);
        swift_endAccess();
        goto LABEL_5;
      }
    }

    __break(1u);
    return result;
  }

LABEL_5:
  v9 = *(v1 + 24);
  sub_1E34AF4E4(a1, (v9 & 0xC000000000000001) == 0, *(v2 + 24));
  if ((v9 & 0xC000000000000001) != 0)
  {

    v10 = MEMORY[0x1E6911E60](a1, v9);
  }

  else
  {
    v10 = *(v9 + 8 * a1 + 32);
  }

  return v10;
}

uint64_t sub_1E3FEF930(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      sub_1E4204964();
      v4 = sub_1E4206314();
      *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
      for (i = ((v4 & 0xFFFFFFFFFFFFFF8) + 32); ; ++i)
      {
        --v2;
        *i = v3;
        if (!v2)
        {
          break;
        }
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

uint64_t sub_1E3FEF9BC(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E3FF16A0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1E3FEFA68()
{
  OUTLINED_FUNCTION_5_10();
  v0 = swift_allocObject();
  sub_1E3289DE4();
  return v0;
}

uint64_t sub_1E3FEFA9C(uint64_t result)
{
  if (result)
  {
    OUTLINED_FUNCTION_6_6();
    v3 = *(v2 + 112);

    v5 = v3(v4);
    return (*(*v1 + 296))(v5);
  }

  return result;
}

uint64_t sub_1E3FEFB24(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_8();
  (*(v5 + 232))();
  OUTLINED_FUNCTION_6_6();
  v7 = *(v6 + 104);
  if (!v7() || (OUTLINED_FUNCTION_26_0(), v9 = (*(v8 + 128))(), , !v9))
  {
    if (v7())
    {
      OUTLINED_FUNCTION_26_0();
      v9 = (*(v10 + 152))();
    }

    else
    {

      v9 = 0;
    }
  }

  type metadata accessor for Metrics(0);
  v11 = (*(*a1 + 176))();
  sub_1E3BA5D04(v11, v2, a2, v9);
}

double sub_1E3FEFCA4()
{
  OUTLINED_FUNCTION_26_0();
  v1 = (*(v0 + 576))();
  if (v1)
  {
    v3 = v1;
    OUTLINED_FUNCTION_26_0();
    if ((*(v4 + 176))())
    {

      type metadata accessor for Metrics(0);
      OUTLINED_FUNCTION_31_4();
      v5 = sub_1E3BA7AA8();
      OUTLINED_FUNCTION_111();
      (*(v6 + 208))(v3, v5);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E3FEFDC0()
{
  type metadata accessor for MetricsJetEngine(0);
  static MetricsJetEngine.convertClickDataToLocationData(_:index:)();
  v1 = OUTLINED_FUNCTION_144_0();
  type metadata accessor for Metrics(v1);
  v2 = sub_1E3BA54D0();
  OUTLINED_FUNCTION_26_0();
  v4 = *(v3 + 184);

  v4(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0, &qword_1E42AB350);
  OUTLINED_FUNCTION_5_10();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E4297BE0;
  *(v6 + 32) = v0;
  OUTLINED_FUNCTION_111();
  (*(v7 + 208))(v2, v6);
}

uint64_t sub_1E3FEFED4()
{
  type metadata accessor for BaseImpressionManager();
  OUTLINED_FUNCTION_6_6();
  (*(v0 + 176))();
  static BaseImpressionManager.getSnapshotImpressionsFromTracker(_:)();
  v2 = v1;
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1E3FEFF3C()
{
  type metadata accessor for BaseImpressionManager();
  OUTLINED_FUNCTION_6_6();
  (*(v1 + 176))();
  static BaseImpressionManager.getRecordedImpressionsFromTracker(_:)();
  v3 = v2;
  result = swift_unknownObjectRelease();
  if (v3)
  {
    if (*(v3 + 16))
    {
      v5 = (*(*v0 + 104))(result);
      if (v5)
      {
        v6 = v5;
        OUTLINED_FUNCTION_26_0();
        v8 = (*(v7 + 128))();
        if (!v8)
        {
          v8 = (*(*v6 + 152))();
        }

        type metadata accessor for Metrics(0);
        v9 = OUTLINED_FUNCTION_50();
        sub_1E3BA5A94(v9, v8);
      }
    }
  }

  return result;
}

void sub_1E3FF0088(char a1)
{
  OUTLINED_FUNCTION_8();
  (*(v2 + 240))();
  v3 = [objc_opt_self() sharedInstance];
  v5 = v3;
  v4 = &selRef_recordAppWillTerminate;
  if ((a1 & 1) == 0)
  {
    v4 = &selRef_recordAppWillBackground;
  }

  [v3 *v4];
}

void sub_1E3FF0128(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v12;
  v13 = sub_1E3940F84(a3);
  v14 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v13;
  *(inited + 56) = v15;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v16;
  *(inited + 120) = v14;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v17;
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1E4297BE0;
  *(v18 + 32) = sub_1E4205F14();
  *(v18 + 40) = v19;

  v20 = sub_1E394B988(a4, a5);
  *(v18 + 72) = v14;
  *(v18 + 48) = v20;
  *(v18 + 56) = v21;
  v22 = sub_1E4205CB4();
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  *(inited + 144) = v22;
  sub_1E4205CB4();
  OUTLINED_FUNCTION_6_6();
  if ((*(v23 + 104))())
  {
    OUTLINED_FUNCTION_26_0();
    v5 = (*(v24 + 128))();

    if (v5)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = inited;
      sub_1E394C48C(v5, sub_1E394C454, 0, isUniquelyReferenced_nonNull_native, &v29);
    }
  }

  v26 = [objc_opt_self() sharedInstance];
  v27 = OUTLINED_FUNCTION_50();
  sub_1E3744600(v27);

  v28 = sub_1E4205C44();

  [v5 recordSearch_];
}

void sub_1E3FF03C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B470, &qword_1E42986E0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = (*(a1 + 48) + 16 * (v9 | (v8 << 6)));
    v12 = *v10;
    v11 = v10[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    swift_dynamicCast();
    sub_1E329504C(&v22, v24);
    sub_1E329504C(v24, v25);
    sub_1E329504C(v25, &v23);
    v13 = sub_1E327D33C(v12, v11);
    v14 = v13;
    if (v15)
    {
      v16 = (v2[6] + 16 * v13);
      *v16 = v12;
      v16[1] = v11;

      v17 = (v2[7] + 32 * v14);
      __swift_destroy_boxed_opaque_existential_1(v17);
      sub_1E329504C(&v23, v17);
      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      v18 = (v2[6] + 16 * v13);
      *v18 = v12;
      v18[1] = v11;
      sub_1E329504C(&v23, (v2[7] + 32 * v13));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v7 = v8;
    }
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

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_1E3FF0644(uint64_t a1, void (*a2)(uint64_t, uint64_t, char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = sub_1E4204724();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E3B2A208(a1, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    return sub_1E325F748(v9, &qword_1ECF2B7B0, &qword_1E429EC30);
  }

  (*(v11 + 32))(v13, v9, v10);
  type metadata accessor for BaseImpressionManager();
  OUTLINED_FUNCTION_8();
  v16 = (*(v15 + 176))();
  v18 = v17;
  (*(v11 + 16))(v6, v13, v10);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  a2(v16, v18, v6);
  swift_unknownObjectRelease();
  sub_1E325F748(v6, &qword_1ECF2B7B0, &qword_1E429EC30);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1E3FF0884()
{
  sub_1E37BF908();
  OUTLINED_FUNCTION_5_10();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double sub_1E3FF0924(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI19MetricsRecorderObjC_pageData, a2);

  return result;
}

double sub_1E3FF09E4(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI19MetricsRecorderObjC_pageData;
  OUTLINED_FUNCTION_14_0(v2 + OBJC_IVAR____TtC8VideosUI19MetricsRecorderObjC_pageData, a2);
  *(v2 + v4) = a1;

  return sub_1E3FF0A34();
}

double sub_1E3FF0A34()
{
  v1 = v0;
  type metadata accessor for Metrics(0);
  sub_1E3BA54D0();
  v2 = OBJC_IVAR____TtC8VideosUI19MetricsRecorderObjC_pageData;
  OUTLINED_FUNCTION_15_0(v1 + OBJC_IVAR____TtC8VideosUI19MetricsRecorderObjC_pageData, v3);
  if (!*(v1 + v2) || (v4 = , sub_1E374BD08(v4), OUTLINED_FUNCTION_31_4(), , !v2))
  {
    v2 = sub_1E4205CB4();
  }

  OUTLINED_FUNCTION_111();
  (*(v5 + 136))(v2);
  OUTLINED_FUNCTION_8();
  v7 = *(v6 + 112);

  v7(v8);

  return result;
}

double (*sub_1E3FF0B40(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_66(v1 + OBJC_IVAR____TtC8VideosUI19MetricsRecorderObjC_pageData);
  return sub_1E3FF0B98;
}

double sub_1E3FF0B98(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E3FF0A34();
  }

  return result;
}

uint64_t sub_1E3FF0BCC()
{
  v1 = OUTLINED_FUNCTION_144_0();
  type metadata accessor for Metrics(v1);
  sub_1E3BA54D0();
  if (!sub_1E374BD08(v0))
  {
    sub_1E4205CB4();
  }

  OUTLINED_FUNCTION_111();
  (*(v2 + 136))();
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 200);

  v4(v5);
}

uint64_t sub_1E3FF0D14(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Metrics(0);
  v4 = sub_1E3BA54D0();
  if (!sub_1E374BD08(a1))
  {
    sub_1E4205CB4();
  }

  OUTLINED_FUNCTION_111();
  (*(v5 + 184))();
  if (a2)
  {
    a2 = sub_1E396AB60(a2);
  }

  OUTLINED_FUNCTION_8();
  (*(v6 + 208))(v4, a2);
}

unint64_t sub_1E3FF0EC0(uint64_t a1, uint64_t a2)
{
  result = sub_1E374BD08(a1);
  if (result)
  {
    if (a2 < 0)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_8();
      (*(v4 + 224))();
    }
  }

  return result;
}

uint64_t sub_1E3FF0FF8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  result = OUTLINED_FUNCTION_12_159();
  if (result)
  {
    v8 = OUTLINED_FUNCTION_144_0();
    result = type metadata accessor for MetricsJetEngine(v8);
    if (a2 < 0)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_13_173();
      OUTLINED_FUNCTION_31_4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      *(inited + 32) = sub_1E3BA363C(2);
      *(inited + 40) = v10;
      *(inited + 48) = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      v11 = sub_1E4205CB4();
      sub_1E3FF03C0(v11);
      v13 = v12;

      sub_1E3F6B7FC(0, v13, v3);

      (*(**(v4 + OBJC_IVAR____TtC8VideosUI19MetricsRecorderObjC_viewMetricsRecorder) + 264))(v3);
      return sub_1E325F748(v3, &qword_1ECF2B7B0, &qword_1E429EC30);
    }
  }

  return result;
}

uint64_t sub_1E3FF11A4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  result = OUTLINED_FUNCTION_12_159();
  if (result)
  {
    v8 = OUTLINED_FUNCTION_144_0();
    result = type metadata accessor for MetricsJetEngine(v8);
    if (a2 < 0)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_13_173();
      OUTLINED_FUNCTION_31_4();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      *(inited + 32) = sub_1E3BA363C(2);
      *(inited + 40) = v10;
      *(inited + 48) = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      v11 = sub_1E4205CB4();
      sub_1E3FF03C0(v11);
      v13 = v12;

      sub_1E3F6B7FC(0, v13, v3);

      (*(**(v4 + OBJC_IVAR____TtC8VideosUI19MetricsRecorderObjC_viewMetricsRecorder) + 272))(v3);
      return sub_1E325F748(v3, &qword_1ECF2B7B0, &qword_1E429EC30);
    }
  }

  return result;
}

uint64_t sub_1E3FF1350(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v8 = OUTLINED_FUNCTION_14_168();
  v9 = a1;
  a5(v8, a4);
}

id sub_1E3FF13D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsRecorderObjC();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static MetricsRecorderFactoryObjC.makeViewMetricsRecorder()()
{
  v0 = objc_allocWithZone(type metadata accessor for MetricsRecorderObjC());

  return [v0 init];
}

id MetricsRecorderFactoryObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MetricsRecorderFactoryObjC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3FF154C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3DFC8;
  if (!qword_1ECF3DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3DFC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ExitType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3FF16A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_1E4204964();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E3FEF7B0();
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DFA8, &unk_1E42E49E8);
          v9 = sub_1E3797EB0(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E3FF1808()
{
  v3 = OUTLINED_FUNCTION_31_84();
  v4 = v3[7];
  *(v0 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v5 = v3[8];
  *(v0 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  v6 = (v0 + v3[9]);
  type metadata accessor for ViewInteractionStates(0);
  sub_1E3B1E0A8(0);
  sub_1E42038E4();
  *v6 = v10;
  v6[1] = v11;
  *v0 = v1;
  memcpy(v0 + 1, v2, 0xC3uLL);
  v7 = *(*v1 + 392);

  v9 = v7(v8);

  if (!v9)
  {
    goto LABEL_4;
  }

  if (*v9 != _TtC8VideosUI23CanonicalInfoCardLayout)
  {

LABEL_4:
    type metadata accessor for CanonicalInfoCardLayout();
    v9 = sub_1E418442C();
  }

  v0[26] = v9;
}

uint64_t type metadata accessor for CanonicalInfoCard(uint64_t a1)
{
  result = qword_1EE2A2440;
  if (!qword_1EE2A2440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3FF19F4()
{
  OUTLINED_FUNCTION_21_5();
  v37 = v1;
  v35 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DFD0, &qword_1E42E4B60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DFD8, &qword_1E42E4B68);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_2();
  v12 = *(v0 + 208);
  OUTLINED_FUNCTION_36();
  v14 = (*(v13 + 552))(v38);
  if ((v39 & 1) == 0)
  {
    sub_1E3952BE8(v38[0], v38[1], v38[2], v38[3]);
  }

  (*(*v12 + 176))(v40, v14);
  if ((v41 & 1) == 0)
  {
    v17.n128_u64[0] = v40[2];
    v18.n128_u64[0] = v40[3];
    v15.n128_u64[0] = v40[0];
    v16.n128_u64[0] = v40[1];
    j_nullsub_1(v15, v16, v17, v18);
  }

  *v10 = sub_1E4201D44();
  *(v10 + 1) = 0;
  v10[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DFE0, &qword_1E42E4B70);
  sub_1E3FF1DB4();
  sub_1E4202474();
  sub_1E32752B0(&qword_1ECF3DFE8, &qword_1ECF3DFD0, &qword_1E42E4B60, MEMORY[0x1E6981870]);
  sub_1E4203224();
  (*(v3 + 8))(v7, v35);
  sub_1E325F6F0(v10, &qword_1ECF3DFD0, &qword_1E42E4B60);
  OUTLINED_FUNCTION_36();
  if ((*(v19 + 392))() && (OUTLINED_FUNCTION_30(), (*(v20 + 152))(v42), v21 = v42[0], v22 = v42[1], v23 = v42[2], v24 = v42[3], , (v43 & 1) == 0))
  {
    v25.n128_u64[0] = v21;
    v26.n128_u64[0] = v22;
    v27.n128_u64[0] = v23;
    v28.n128_u64[0] = v24;
    j_nullsub_1(v25, v26, v27, v28);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v29 = sub_1E4202734();
  v30 = v37;
  v31 = OUTLINED_FUNCTION_63_0();
  v32(v31);
  v33 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DFF0, &unk_1E42E4B78) + 36));
  *v33 = v29;
  OUTLINED_FUNCTION_11_4(v33);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3FF1DB4()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v70 = v11;
  v12 = type metadata accessor for CanonicalInfoCard(0);
  v13 = OUTLINED_FUNCTION_8_0(v12);
  v69 = v14;
  v68 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_17_3(&v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E000, &qword_1E42E4C80);
  OUTLINED_FUNCTION_17_2(v17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E008, &qword_1E42E4C88) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E010, &qword_1E42E4C90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_26_2();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E018, &qword_1E42E4C98);
  OUTLINED_FUNCTION_0_10();
  v64 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v60 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E020, &qword_1E42E4CA0);
  OUTLINED_FUNCTION_0_10();
  v65 = v32;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_17_3(&v60 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E028, &qword_1E42E4CA8);
  OUTLINED_FUNCTION_0_10();
  v66 = v36;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_17_3(&v60 - v38);
  *v20 = sub_1E4201D54();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E030, &qword_1E42E4CB0);
  sub_1E3FF24A0(v10, &v20[*(v39 + 44)]);
  sub_1E4203D44();
  OUTLINED_FUNCTION_51_3();
  sub_1E42015C4();
  sub_1E3741EA0(v20, v24, &qword_1ECF3E000, &qword_1E42E4C80);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E038, &qword_1E42E4CB8);
  memcpy(&v24[*(v40 + 36)], v73, 0x70uLL);
  LOBYTE(v20) = sub_1E4202734();
  v41 = &v24[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E040, &unk_1E42E4CC0) + 36)];
  *v41 = v20;
  *(v41 + 1) = v8;
  *(v41 + 2) = v6;
  *(v41 + 3) = v4;
  *(v41 + 4) = v2;
  v41[40] = 0;
  *&v24[*(v21 + 44)] = 256;
  sub_1E4203D44();
  OUTLINED_FUNCTION_51_3();
  sub_1E42015C4();
  v42 = OUTLINED_FUNCTION_63_0();
  sub_1E3741EA0(v42, v43, &qword_1ECF3E008, &qword_1E42E4C88);
  v44 = memcpy((v0 + *(v25 + 36)), v74, 0x70uLL);
  v45 = v10[26];
  v46 = (*(*v45 + 744))(v44);
  v47 = sub_1E3FF45E4();
  sub_1E39B87A4(v46, v25, v47);

  sub_1E325F6F0(v0, &qword_1ECF3E010, &qword_1E42E4C90);
  v71 = v25;
  v72 = v47;
  v48 = OUTLINED_FUNCTION_22_96();
  v49 = v62;
  v50 = v61;
  sub_1E3E361E8();
  v51 = v50;
  (*(v64 + 8))(v30, v50);
  v52 = v67;
  sub_1E3FF4840(v10, v67);
  v53 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v54 = swift_allocObject();
  sub_1E3FF48A4(v52, v54 + v53);
  v71 = v51;
  v72 = v48;
  v55 = OUTLINED_FUNCTION_22_96();
  v56 = j__OUTLINED_FUNCTION_18();
  v57 = v63;
  sub_1E383F5C4(v56 & 1, sub_1E3FF4908, v54, 0, 0, v31, v55);

  (*(v65 + 8))(v49, v31);
  v71 = v31;
  v72 = v55;
  v58 = OUTLINED_FUNCTION_22_96();
  OUTLINED_FUNCTION_242();
  LOBYTE(v53) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_242();
  LOBYTE(v54) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_242();
  LOBYTE(v48) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_242();
  v59 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v45, v53 & 1, v54 & 1, v48 & 1, v59 & 1, v35, v58);
  (*(v66 + 8))(v57, v35);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3FF24A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E070, &unk_1E42E4CD0);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v82 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v89 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v11);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v82 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8, &qword_1E42AF320);
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  v99 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E078, &qword_1E42E4CE0);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_5();
  v98 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v82 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v82 - v32;
  v87 = a1[26];
  sub_1E374E9C4();
  OUTLINED_FUNCTION_30();
  (*(v34 + 152))(v100);

  if (v101)
  {
    v35 = 0;
  }

  else
  {
    v35 = v100[3];
  }

  *v30 = sub_1E4201B84();
  *(v30 + 1) = v35;
  v30[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E080, &qword_1E42E4CE8);
  sub_1E3FF32C0(a1, v36, v37, v38, v39, v40, v41, v42, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93);
  v97 = v33;
  v43 = sub_1E3741EA0(v30, v33, &qword_1ECF3E078, &qword_1E42E4CE0);
  v44 = *(**a1 + 488);
  v45 = v44(v43);
  if (!v45)
  {
    goto LABEL_12;
  }

  v47 = sub_1E373E010(15, v45, v46);

  if (!v47)
  {
    goto LABEL_12;
  }

  if (*v47 != _TtC8VideosUI13TextViewModel)
  {

LABEL_12:
    v55 = 1;
    v51 = v91;
    goto LABEL_13;
  }

  sub_1E374EA94();
  OUTLINED_FUNCTION_30();
  (*(v48 + 152))(v102);

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  v49 = sub_1E4202744();
  v50 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v49)
  {
    v50 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  (*(v89 + 32))(v16, v88, v90);
  v51 = v91;
  v52 = &v16[*(v91 + 36)];
  *v52 = v50;
  OUTLINED_FUNCTION_11_4(v52);
  v53 = v16;
  v54 = v83;
  sub_1E3741EA0(v53, v83, &qword_1ECF28CC0, &qword_1E4298440);
  sub_1E3741EA0(v54, v99, &qword_1ECF28CC0, &qword_1E4298440);
  v55 = 0;
LABEL_13:
  v56 = 1;
  v57 = __swift_storeEnumTagSinglePayload(v99, v55, 1, v51);
  v58 = v44(v57);
  if (v58)
  {
    v60 = sub_1E373E010(9, v58, v59);

    if (v60)
    {
      if (*v60 == _TtC8VideosUI13TextViewModel)
      {
        sub_1E374EAFC();
        OUTLINED_FUNCTION_30();
        (*(v61 + 152))(v103);

        OUTLINED_FUNCTION_18();
        v62 = v86;
        sub_1E3F23370();
        v63 = sub_1E4202744();
        v64 = sub_1E4202774();
        sub_1E4202774();
        if (sub_1E4202774() != v63)
        {
          v64 = sub_1E4202774();
        }

        sub_1E4200A54();
        OUTLINED_FUNCTION_3();

        v65 = v85;
        (*(v89 + 32))(v85, v62, v90);
        v66 = (v65 + *(v51 + 36));
        *v66 = v64;
        OUTLINED_FUNCTION_11_4(v66);
        v67 = v65;
        v68 = v84;
        OUTLINED_FUNCTION_8_85(v67, v84);
        OUTLINED_FUNCTION_8_85(v68, v96);
        v56 = 0;
      }

      else
      {
      }
    }
  }

  v69 = v96;
  __swift_storeEnumTagSinglePayload(v96, v56, 1, v51);
  sub_1E3FF2DBC(v7);
  v70 = v98;
  sub_1E3743538(v97, v98, &qword_1ECF3E078, &qword_1E42E4CE0);
  v71 = v99;
  v72 = v92;
  OUTLINED_FUNCTION_29_12(v99, v92);
  v73 = v93;
  OUTLINED_FUNCTION_29_12(v69, v93);
  v74 = v94;
  sub_1E3743538(v7, v94, &qword_1ECF3E070, &unk_1E42E4CD0);
  v75 = v70;
  v76 = v7;
  v77 = v95;
  sub_1E3743538(v75, v95, &qword_1ECF3E078, &qword_1E42E4CE0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E088, &qword_1E42E4CF0);
  OUTLINED_FUNCTION_29_12(v72, v77 + v78[12]);
  OUTLINED_FUNCTION_29_12(v73, v77 + v78[16]);
  sub_1E3743538(v74, v77 + v78[20], &qword_1ECF3E070, &unk_1E42E4CD0);
  sub_1E325F6F0(v76, &qword_1ECF3E070, &unk_1E42E4CD0);
  sub_1E325F6F0(v69, &qword_1ECF2F9A8, &qword_1E42AF320);
  sub_1E325F6F0(v71, &qword_1ECF2F9A8, &qword_1E42AF320);
  sub_1E325F6F0(v97, &qword_1ECF3E078, &qword_1E42E4CE0);
  sub_1E325F6F0(v74, &qword_1ECF3E070, &unk_1E42E4CD0);
  sub_1E325F6F0(v73, &qword_1ECF2F9A8, &qword_1E42AF320);
  v79 = OUTLINED_FUNCTION_63_0();
  sub_1E325F6F0(v79, v80, &qword_1E42AF320);
  return sub_1E325F6F0(v98, &qword_1ECF3E078, &qword_1E42E4CE0);
}

uint64_t sub_1E3FF2DBC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E090, &qword_1E42E4CF8);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v54 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E098, &unk_1E42E4D00);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v54 - v13;
  OUTLINED_FUNCTION_36();
  v16 = (*(v15 + 552))();
  if (!v16)
  {
    goto LABEL_32;
  }

  sub_1E3277E60(0x656D6F74616D6F74, 0xEB00000000726574, v16, &v61);

  if (!*(&v62 + 1))
  {
    sub_1E329505C(&v61);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  OUTLINED_FUNCTION_25_103();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v39 = a1;
    v40 = 1;
    return __swift_storeEnumTagSinglePayload(v39, v40, 1, v7);
  }

  v54[1] = v1;
  v55 = v14;
  v56 = v11;
  v57 = v6;
  v58 = v7;
  v59 = a1;
  v17 = *(v63 + 16);
  v54[0] = v63;
  if (v17)
  {
    v60 = MEMORY[0x1E69E7CC0];
    v18 = (v63 + 32);
    while (1)
    {
      v19 = *v18;
      v20 = *(*v18 + 16);

      if (v20 && (v21 = OUTLINED_FUNCTION_33_82(), (v22 & 1) != 0) && (OUTLINED_FUNCTION_23_97(v21), OUTLINED_FUNCTION_25_103(), swift_dynamicCast()))
      {
        v24 = v63;
        v23 = v64;
      }

      else
      {
        v24 = 0;
        v23 = 0xE000000000000000;
      }

      if (*(v19 + 16) && (v25 = OUTLINED_FUNCTION_33_82(), (v26 & 1) != 0) && (OUTLINED_FUNCTION_23_97(v25), OUTLINED_FUNCTION_25_103(), swift_dynamicCast()))
      {
        v28 = v63;
        v27 = v64;
      }

      else
      {
        v28 = 0;
        v27 = 0xE000000000000000;
      }

      if (*(v19 + 16) && (v29 = sub_1E327D33C(0x65756C6176, 0xE500000000000000), (v30 & 1) != 0))
      {
        OUTLINED_FUNCTION_23_97(v29);
      }

      else
      {
        v61 = 0u;
        v62 = 0u;
      }

      if (!*(&v62 + 1))
      {
        break;
      }

      OUTLINED_FUNCTION_25_103();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_24;
      }

      v32 = v63;
      v31 = v64;
LABEL_25:
      v33 = v23;
      v34 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_1E3FF4A98(0, *(v60 + 2) + 1, 1, v60);
      }

      v36 = *(v60 + 2);
      v35 = *(v60 + 3);
      if (v36 >= v35 >> 1)
      {
        v60 = sub_1E3FF4A98((v35 > 1), v36 + 1, 1, v60);
      }

      v37 = v60;
      *(v60 + 2) = v36 + 1;
      v38 = &v37[48 * v36];
      *(v38 + 4) = v34;
      *(v38 + 5) = v33;
      *(v38 + 6) = v28;
      *(v38 + 7) = v27;
      *(v38 + 8) = v32;
      *(v38 + 9) = v31;
      ++v18;
      if (!--v17)
      {
        goto LABEL_35;
      }
    }

    sub_1E329505C(&v61);
LABEL_24:
    v32 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_25;
  }

  v60 = MEMORY[0x1E69E7CC0];
LABEL_35:

  sub_1E374EAFC();
  OUTLINED_FUNCTION_30();
  (*(v42 + 152))(&v61);

  v43 = sub_1E4201D44();
  v44 = v57;
  *v57 = v43;
  v44[1] = 0;
  *(v44 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E0A0, &qword_1E42E4D10);
  sub_1E3FF3828();

  v45 = sub_1E4202744();
  v46 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v45)
  {
    v46 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v47 = v44;
  v48 = v56;
  sub_1E3741EA0(v47, v56, &qword_1ECF3E090, &qword_1E42E4CF8);
  v7 = v58;
  v49 = (v48 + *(v58 + 36));
  *v49 = v46;
  OUTLINED_FUNCTION_11_4(v49);
  v50 = v48;
  v51 = v55;
  OUTLINED_FUNCTION_8_85(v50, v55);
  v52 = v51;
  v53 = v59;
  OUTLINED_FUNCTION_8_85(v52, v59);
  v39 = v53;
  v40 = 0;
  return __swift_storeEnumTagSinglePayload(v39, v40, 1, v7);
}

void sub_1E3FF32C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E0F0, &unk_1E42E4D58);
  v27 = OUTLINED_FUNCTION_17_2(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  v35 = OUTLINED_FUNCTION_17_2(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_6();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &a9 - v40;
  sub_1E3FF3598();
  *v33 = sub_1E4201D54();
  *(v33 + 1) = 0;
  v42 = 1;
  v33[16] = 1;
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E0F8, &qword_1E42E4D68) + 44);
  v44 = (*(**v23 + 488))();
  if (v44)
  {
    v46 = sub_1E373E010(23, v44, v45);

    if (v46)
    {
      if (*v46 == _TtC8VideosUI13TextViewModel)
      {
        OUTLINED_FUNCTION_18();
        sub_1E3F23370();
        v42 = 0;
      }
    }
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  __swift_storeEnumTagSinglePayload(&v33[v43], v42, 1, v47);
  sub_1E3743538(v41, v38, &qword_1ECF29938, &unk_1E429C3F0);
  sub_1E3743538(v33, v30, &qword_1ECF3E0F0, &unk_1E42E4D58);
  sub_1E3743538(v38, v25, &qword_1ECF29938, &unk_1E429C3F0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E100, &qword_1E42E4D70);
  sub_1E3743538(v30, v25 + *(v48 + 48), &qword_1ECF3E0F0, &unk_1E42E4D58);
  sub_1E325F6F0(v33, &qword_1ECF3E0F0, &unk_1E42E4D58);
  sub_1E325F6F0(v41, &qword_1ECF29938, &unk_1E429C3F0);
  sub_1E325F6F0(v30, &qword_1ECF3E0F0, &unk_1E42E4D58);
  sub_1E325F6F0(v38, &qword_1ECF29938, &unk_1E429C3F0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FF3598()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_36();
  v10 = (*(v9 + 488))();
  if (v10)
  {
    v12 = sub_1E373E010(39, v10, v11);

    if (v12)
    {
      type metadata accessor for ImageViewModel();
      v13 = swift_dynamicCastClass();
      if (v13)
      {
        v14 = v13;
        v15 = *(v2 + 136);
        v26 = *(v2 + 128);
        v16 = *(v2 + 144);
        v17 = j__OUTLINED_FUNCTION_51_1();
        v18 = j__OUTLINED_FUNCTION_18();
        v19 = j__OUTLINED_FUNCTION_18();
        sub_1E3EB9C0C(v26, v15, v16, 0, 0, 1, v17 & 1, 2, &v34, 0, 1, 0, 1, 0, 2, v18 & 1, v19 & 1);
        v27 = v34;
        *v28 = *v35;
        *&v28[9] = *(&v35[4] + 1);
        v30 = *&v35[13];
        v31 = *&v35[21];
        v32 = *&v35[29];
        v33 = v36;
        v29 = 1;
        v20 = OUTLINED_FUNCTION_18();
        sub_1E37E8BE8(v14, &v27, 0, v20 & 1, 0, 0, v1);

        sub_1E375C31C(&v27);
        (*(v7 + 32))(v4, v1, v5);
        __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }
  }

  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
}

uint64_t sub_1E3FF3828()
{
  v2 = OUTLINED_FUNCTION_31_84();
  v3 = OUTLINED_FUNCTION_8_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  type metadata accessor for CanonicalInfoCardLayout.RowLayout();
  v8 = sub_1E41845C0();
  v20 = v0;
  sub_1E3FF4840(v1, v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_1E3FF48A4(v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v7 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E0A8, &qword_1E42E4D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E0B0, &qword_1E42E4D20);
  sub_1E32752B0(&qword_1ECF3E0B8, &qword_1ECF3E0A8, &qword_1E42E4D18, MEMORY[0x1E69E6338]);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E0C0, &qword_1E42E4D28);
  OUTLINED_FUNCTION_9_0();
  v14 = sub_1E32752B0(v12, &qword_1ECF3E0C0, &qword_1E42E4D28, v13);
  v19[1] = v11;
  v19[2] = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E3FF4A44(OpaqueTypeConformance2, v16, v17);
  return sub_1E4203B44();
}

void sub_1E3FF3A40()
{
  OUTLINED_FUNCTION_31_1();
  v15[1] = v0;
  v1 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = OUTLINED_FUNCTION_63_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - v11;
  *v12 = sub_1E4201B84();
  *(v12 + 1) = 0;
  v12[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E0D8, &unk_1E42E4D30);
  sub_1E3FF3BD4();
  sub_1E4202484();
  OUTLINED_FUNCTION_9_0();
  sub_1E32752B0(v13, &qword_1ECF3E0C0, &qword_1E42E4D28, v14);
  sub_1E4203224();
  (*(v3 + 8))(v7, v1);
  sub_1E325F6F0(v12, &qword_1ECF3E0C0, &qword_1E42E4D28);
  OUTLINED_FUNCTION_25_2();
}