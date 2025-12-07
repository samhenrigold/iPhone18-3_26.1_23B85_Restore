uint64_t sub_1E39B29F0()
{
  OUTLINED_FUNCTION_27_2();

  v1 = *(v0 + 96);
  *(v0 + 208) = sub_1E4206424();
  v2 = swift_task_alloc();
  *(v0 + 216) = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  *(v0 + 224) = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_15_58(v3);
  OUTLINED_FUNCTION_6_64();

  return MEMORY[0x1EEE6DDE0](v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1E39B2AB8()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 160);
  v5 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E39B2C0C, v5, v4);
}

void sub_1E39B2C0C()
{
  v1 = [*(v0 + 96) parentViewController];
  v2 = v1;
  if (v1)
  {
  }

  v3 = [*(v0 + 168) presentedViewController];
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 96);
    sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    v6 = v5;
    v7 = sub_1E4206F64();

    v8 = (v2 == 0) | v7;
    if (v2 || (v7 & 1) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v18 = *(v0 + 168);
    v19 = *(v0 + 96);
    [v18 addChildViewController_];
    [v19 didMoveToParentViewController_];
    goto LABEL_13;
  }

  if (!v2)
  {
    goto LABEL_12;
  }

  v8 = 0;
LABEL_9:
  v10 = *(v0 + 112);
  v9 = *(v0 + 120);
  v11 = *(v0 + 104);
  v12 = sub_1E324FBDC();
  (*(v10 + 16))(v9, v12, v11);
  v13 = sub_1E41FFC94();
  v14 = sub_1E42067F4();
  if (OUTLINED_FUNCTION_104(v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109376;
    *(v15 + 4) = v2 == 0;
    *(v15 + 8) = 1024;
    *(v15 + 10) = v8 & 1;
    _os_log_impl(&dword_1E323F000, v13, v14, "    PlaybackContainerViewController:: failed to add child\n        isParentNil: %{BOOL}d,\n        isPlayerPresented: %{BOOL}d", v15, 0xEu);
    OUTLINED_FUNCTION_6_0();
  }

  v16 = OUTLINED_FUNCTION_27_0();
  v17(v16);
LABEL_13:
  v20 = *(v0 + 168);
  v21 = *(v0 + 96);
  v22 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView;
  v23 = *(v20 + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView);
  v24 = [v21 view];
  if (!v24)
  {
    __break(1u);
    goto LABEL_21;
  }

  v25 = v24;
  v26 = *(v0 + 168);
  v27 = sub_1E39AC444();
  [v23 insertSubview:v25 belowSubview:v27];

  v28 = [v26 view];
  if (!v28)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = *(v0 + 96);
  [v28 bringSubviewToFront_];

  v30 = [v29 vuiView];
  if (!v30)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v31 = v30;
  [v30 setAccessibilityElementsHidden_];

  v32 = OUTLINED_FUNCTION_58_15();
  if (!v32)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v33 = v32;
  v34 = *(v0 + 168);

  [*(v20 + v22) bounds];
  [v33 setFrame_];

  v35 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v36 = swift_allocObject();
  *(v36 + 16) = v34;
  *(v0 + 48) = sub_1E39B3EEC;
  *(v0 + 56) = v36;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1E378AEA4;
  *(v0 + 40) = &block_descriptor_106;
  v37 = _Block_copy((v0 + 16));
  v38 = v34;

  [v35 animateWithDuration:v37 animations:0.25];
  _Block_release(v37);
  v38[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_isAnimatingPiP] = 0;
  v39 = [objc_opt_self() defaultCenter];
  [v39 postNotificationName:@"VUIPostPlayDidAppearNotification" object:0];

  OUTLINED_FUNCTION_54();

  v40();
}

void sub_1E39B3068(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8, &qword_1E42AF868);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = aBlock - v14;
  (*(v11 + 16))(aBlock - v14, a1, v9, v13);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  (*(v11 + 32))(v17 + v16, v15, v9);
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  aBlock[2] = v18;
  aBlock[3] = a5;
  v19 = _Block_copy(aBlock);

  [a2 dismissViewControllerAnimated:1 completion:v19];
  _Block_release(v19);
}

void *sub_1E39B31FC()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  sub_1E324FBDC();
  v9 = OUTLINED_FUNCTION_101();
  v10(v9);
  v11 = sub_1E41FFC94();
  sub_1E42067E4();
  OUTLINED_FUNCTION_41_15();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v13);
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v14, v15, v16, v17, v18, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v19 = (*(v4 + 8))(v8, v2);
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA8))(v19);
  if (result)
  {
    [result playbackContainerViewControllerDidFinishLoadingPostPlay_];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_1E39B33B8()
{
  OUTLINED_FUNCTION_21();
  result = (*(v1 + 168))();
  if (result)
  {
    [result playbackContainerViewControllerBackgroundPlaybackWillBegin_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E39B3480(uint64_t a1, char a2, char a3)
{
  if ((a2 & 1) != 0 && (a3 & 1) == 0)
  {
    OUTLINED_FUNCTION_21();
    v5 = (*(v4 + 168))();
    if (v5)
    {
      [v5 playbackContainerViewControllerDidAutoPlay_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1E39B3638(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x140))(a2 & 1);
  }
}

void sub_1E39B36C4()
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
      [v2 frame];
      v4 = v3;
      v6 = v5;

      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v7 = swift_unknownObjectWeakLoadStrong();
      if (v7)
      {
        v8 = v7;
        v9 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0xA8))();

        if (v9)
        {
          [v9 playbackContainerViewControllerWillTransitionToSize_];
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E39B37D8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [v1 parentViewController];
    if (v5)
    {

      [v1 removeFromParentViewController];
      v6 = [v1 view];
      if (!v6)
      {
LABEL_15:
        __break(1u);
        return;
      }

      v7 = v6;
      [v6 removeFromSuperview];
    }

    v8 = v4;
    [v8 addChildViewController_];
    v9 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView;
    v10 = *&v8[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView];
    v11 = [v1 view];
    if (v11)
    {
      v12 = v11;
      [v10 addSubview_];

      v13 = [v8 view];
      if (v13)
      {
        [v13 bringSubviewToFront_];

        [v1 didMoveToParentViewController_];
        v14 = [v1 view];
        if (v14)
        {
          v15 = v14;
          v16 = [v8 view];

          if (v16)
          {
            [v16 bounds];
            OUTLINED_FUNCTION_3();

            OUTLINED_FUNCTION_18_28(v15, sel_setFrame_);
            v17 = OUTLINED_FUNCTION_27_0();
            v18(v17);
            OUTLINED_FUNCTION_4_0();
            v19 = swift_allocObject();
            *(v19 + 16) = v2;
            v20 = v2;
            v21 = sub_1E3C4D0C0();
            sub_1E3C4D0C8(0, 1, sub_1E39B433C, v19, 0, 0, v21);

            [*&v8[v9] setHidden_];
            [*&v8[v9] setAlpha_];

            return;
          }

          goto LABEL_14;
        }

LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

void sub_1E39B3B08()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView;
    [*(Strong + OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_pipTargetView) setHidden_];
    v5 = *&v3[v4];
    sub_1E39AC7A4();
    [v5 setFrame_];

    v6 = *&v3[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_playerViewController];
    if (v6)
    {
      v7 = [v6 view];
      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = v7;
      sub_1E39AC7A4();
      [v8 setFrame_];
    }

    if (v1)
    {
      v1();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8VideosUI31PlaybackContainerViewControllerC17BackgroundContent33_2716B203EC1D6F6513B935166B7E5A21LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1E39B3C28(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E39B3C68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E39B3CAC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1E39B3CD4()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_30_0(v3);
  *v4 = v5;
  v4[1] = sub_1E3286A7C;

  return sub_1E39B1F5C(v1, v2);
}

uint64_t sub_1E39B3D78()
{
  OUTLINED_FUNCTION_64_2();
  OUTLINED_FUNCTION_134();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_40_28(v1);
  OUTLINED_FUNCTION_62_1();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E39B3E1C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E327C238;

  return sub_1E39B2434();
}

void sub_1E39B3EEC()
{
  v0 = sub_1E39AC444();
  [v0 setAlpha_];
}

uint64_t objectdestroy_109Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDE8, &qword_1E42AF868);
  OUTLINED_FUNCTION_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

void sub_1E39B407C(uint64_t a1, void *a2)
{
  sub_1E3280A90(0, &qword_1EE23B340, 0x1E69DF730);
  v3 = sub_1E42062A4();

  [a2 setImageProxies_];
}

void sub_1E39B4108()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    type metadata accessor for PostPlayTemplateController();

    v5 = v2;
    sub_1E394E98C(v1, v2);
    v7 = v6;
    v8 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x1B0);
    v9 = v4;
    v8(v4);
    v10 = v7;
    v11 = [v10 view];
    if (v11)
    {
      v12 = v11;
      v13 = [v9 view];
      if (v13)
      {
        v14 = v13;
        [v13 bounds];
        OUTLINED_FUNCTION_3();

        OUTLINED_FUNCTION_18_28(v12, sel_setFrame_);
        [v9 addChildViewController_];
        v15 = [v9 view];
        if (v15)
        {
          v16 = v15;
          v17 = [v10 view];
          if (v17)
          {
            v18 = v17;
            [v16 addSubview_];

            v19 = OUTLINED_FUNCTION_33_14();
            [v19 v20];
            v21 = [v10 view];
            if (v21)
            {
              v22 = v21;
              [v21 setHidden_];

              v23 = &v9[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent];
              v24 = *&v9[OBJC_IVAR____TtC8VideosUI31PlaybackContainerViewController_backgroundContent];
              *v23 = v7;
              v23[8] = 0;

              return;
            }

LABEL_13:
            __break(1u);
            return;
          }

LABEL_12:
          __break(1u);
          goto LABEL_13;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }
}

id sub_1E39B433C()
{
  result = *(v0 + 16);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

void sub_1E39B4358()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xA8))();
    if (v2)
    {
      [v2 playbackContainerViewControllerExitPictureInPicturePressed_];
      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_1E39B43F4()
{
  result = qword_1EE289690;
  if (!qword_1EE289690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FE08, &qword_1E42AF890);
    sub_1E39B4480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289690);
  }

  return result;
}

unint64_t sub_1E39B4480()
{
  result = qword_1EE289B58;
  if (!qword_1EE289B58)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2FE10, &qword_1E42AF898);
    sub_1E38CA3A4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B58);
  }

  return result;
}

uint64_t sub_1E39B450C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_53_4(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_2();
  (*(v7 + 16))(a2, v3);
  return a2;
}

uint64_t OUTLINED_FUNCTION_32_35()
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_58_15()
{

  return [v0 (v1 + 2808)];
}

void sub_1E39B45E0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AlertPickerTemplateLayout();
  v4 = sub_1E3B20558();
  type metadata accessor for TemplateViewModel(0);
  sub_1E37E1424();

  v5 = sub_1E42010C4();
  v7 = v6;
  v8 = *(*a1 + 464);

  v10 = a1;
  v11 = (v8)(v9);

  if (!v11)
  {

    goto LABEL_46;
  }

  v12 = sub_1E32AE9B0(v11);
  if (!v12)
  {

LABEL_46:
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v14 = 0;
LABEL_47:
    *a2 = v5;
    a2[1] = v7;
    a2[2] = v14;
    a2[3] = v62;
    a2[4] = v61;
    a2[5] = v60;
    a2[6] = v4;
    return;
  }

  v13 = v12;
  if (v12 >= 1)
  {
    v63 = a1;
    v64 = v7;
    v65 = v5;
    v66 = v4;
    v67 = a2;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v14 = 0;
    v15 = 0;
    v72 = v11 & 0xC000000000000001;
    while (1)
    {
      if (v72)
      {
        v16 = MEMORY[0x1E6911E60](v15, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v15 + 32);
      }

      OUTLINED_FUNCTION_13_69();
      sub_1E3742F1C(v17, v18, v19);
      OUTLINED_FUNCTION_3_84();
      v20 = OUTLINED_FUNCTION_2_80();
      v28 = OUTLINED_FUNCTION_6_65(v20, v21, v22, v23, v24, v25, v26, v27, v63, v64, v65, v66, v67, v68, v69, v70, v72, v73, v74, v75);
      v31 = v31 && v8 == v10;
      if (v31)
      {

LABEL_30:

        if (*v16 == _TtC8VideosUI13TextViewModel)
        {
          v14 = v16;
        }

        else
        {

          v14 = 0;
        }

        goto LABEL_33;
      }

      v32 = OUTLINED_FUNCTION_9_6(v28, v29, v30);

      if (v32)
      {
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_13_69();
      OUTLINED_FUNCTION_3_84();
      v33 = OUTLINED_FUNCTION_2_80();
      v41 = OUTLINED_FUNCTION_6_65(v33, v34, v35, v36, v37, v38, v39, v40, v63, v64, v65, v66, v67, v68, v69, v70, v72, v73, v74, v75);
      if (v31 && v8 == v10)
      {

LABEL_36:

        if (*v16 == _TtC8VideosUI13TextViewModel)
        {
          v70 = v16;
        }

        else
        {

          v70 = 0;
        }

        goto LABEL_33;
      }

      v45 = OUTLINED_FUNCTION_9_6(v41, v42, v43);

      if (v45)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_13_69();
      OUTLINED_FUNCTION_3_84();
      v46 = OUTLINED_FUNCTION_2_80();
      v54 = OUTLINED_FUNCTION_6_65(v46, v47, v48, v49, v50, v51, v52, v53, v63, v64, v65, v66, v67, v68, v69, v71, v72, v73, v74, v75);
      if (v31 && v8 == v10)
      {

LABEL_40:

        type metadata accessor for ImageViewModel();
        v69 = swift_dynamicCastClass();
        if (!v69)
        {

          v69 = 0;
        }

        goto LABEL_33;
      }

      v58 = OUTLINED_FUNCTION_9_6(v54, v55, v56);

      if (v58)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_13_69();
      OUTLINED_FUNCTION_3_84();
      OUTLINED_FUNCTION_2_80();
      v10 = v76;
      if (v75 == v73 && v76 == v74)
      {
        break;
      }

      v8 = sub_1E42079A4();

      if (v8)
      {
        goto LABEL_43;
      }

LABEL_33:
      if (v13 == ++v15)
      {

        v4 = v66;
        a2 = v67;
        v7 = v64;
        v5 = v65;
        v60 = v68;
        v61 = v69;
        v62 = v70;
        goto LABEL_47;
      }
    }

LABEL_43:

    v68 = v16;
    goto LABEL_33;
  }

  __break(1u);
}

uint64_t sub_1E39B49E4@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(**(*&v1 + 48) + 1856))();
  *a1 = sub_1E4201D44();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE28, &qword_1E42AF8B0);
  return sub_1E39B4A80(v1, a1 + *(v4 + 44));
}

uint64_t sub_1E39B4A80@<X0>(double a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a2;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE40, &qword_1E42AF970);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v164 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v163 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE48, &qword_1E42AF978);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v174 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v173 = v15;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE50, &qword_1E42AF980);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v162 = (v152 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE58, &qword_1E42AF988);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_5();
  v172 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v23 = v152 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v178 = v25;
  v179 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  v177 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  v29 = v152 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_5();
  v170 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  v167 = v152 - v34;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25_3();
  v166 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F9A8, &qword_1E42AF320);
  v38 = OUTLINED_FUNCTION_17_2(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_5();
  v171 = v39;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v152 - v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v157 = v44;
  v158 = v43;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v45);
  v47 = v152 - v46;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE60, &qword_1E42AF990);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  v159 = v152 - v49;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE68, &qword_1E42AF998);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v50);
  v52 = v152 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE70, &qword_1E42AF9A0);
  OUTLINED_FUNCTION_17_2(v53);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  v56 = v152 - v55;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE78, &qword_1E42AF9A8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_2_5();
  v161 = v58;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_25_3();
  v160 = v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE80, &qword_1E42AF9B0);
  v62 = OUTLINED_FUNCTION_17_2(v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_2_5();
  v169 = v63;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v64);
  v66 = v152 - v65;
  v67 = *(*&a1 + 32);
  v184 = v23;
  v181 = v152 - v65;
  v182 = v42;
  v180 = a1;
  v176 = v30;
  if (v67)
  {
    v153 = v56;
    v154 = v52;
    v155 = v29;
    v68 = v67;

    sub_1E3EB9BB4(v201);
    v69 = OUTLINED_FUNCTION_18();
    v152[2] = v68;
    sub_1E37E8BE8(v68, v201, 0, v69 & 1, 0, 0, v47);
    v70 = sub_1E375C31C(v201);
    v71 = *(*&a1 + 48);
    v72 = *(*v71 + 1808);
    v73 = v72(v70);
    (*(*v73 + 248))(v73);

    v75 = *v72(v74);
    (*(v75 + 352))();

    sub_1E4203DA4();
    sub_1E42015C4();
    v76 = v159;
    (*(v157 + 32))(v159, v47, v158);
    memcpy((v76 + *(v156 + 36)), v202, 0x70uLL);
    LOBYTE(v68) = sub_1E4202734();
    v77 = sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v68)
    {
      v77 = sub_1E4202774();
    }

    (*(*v71 + 1856))();
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    v78 = v154;
    sub_1E3741EA0(v76, v154, &qword_1ECF2FE60, &qword_1E42AF990);
    v79 = v165;
    v80 = v78 + *(v165 + 36);
    *v80 = v77;
    *(v80 + 8) = v2;
    *(v80 + 16) = v3;
    *(v80 + 24) = v4;
    *(v80 + 32) = v5;
    *(v80 + 40) = 0;
    v81 = [objc_opt_self() blackColor];
    v82 = sub_1E39B5CE0();
    v83 = v153;
    sub_1E39B87A4(v81, v79, v82);

    sub_1E325F6F0(v78, &qword_1ECF2FE68, &qword_1E42AF998);
    v84 = v83;
    v85 = v161;
    sub_1E3741EA0(v84, v161, &qword_1ECF2FE70, &qword_1E42AF9A0);
    *(v85 + *(v185 + 36)) = 256;
    v86 = v85;
    v87 = v160;
    OUTLINED_FUNCTION_17_50(v86, v160);
    v66 = v181;
    OUTLINED_FUNCTION_17_50(v87, v181);
    v88 = 0;
    v23 = v184;
    v42 = v182;
    a1 = v180;
    v30 = v176;
    v29 = v155;
  }

  else
  {
    v88 = 1;
  }

  v89 = 1;
  __swift_storeEnumTagSinglePayload(v66, v88, 1, v185);
  if (*(*&a1 + 24))
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v92 = sub_1E3C27528(v90, v91);
    if (v92 && ((*(*v92 + 152))(v203), v2 = v203[0], v3 = v203[1], v4 = v203[2], v5 = v203[3], , (v204 & 1) == 0))
    {
      v93.n128_u64[0] = v2;
      v94.n128_u64[0] = v3;
      v95.n128_u64[0] = v4;
      v96.n128_u64[0] = v5;
      j_nullsub_1(v93, v94, v95, v96);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_3();
    v97 = sub_1E4202734();

    v98 = v167;
    (*(v178 + 32))(v167, v29, v179);
    v99 = v98 + *(v30 + 36);
    *v99 = v97;
    *(v99 + 8) = v2;
    *(v99 + 16) = v3;
    *(v99 + 24) = v4;
    *(v99 + 32) = v5;
    *(v99 + 40) = 0;
    v100 = v166;
    OUTLINED_FUNCTION_17_50(v98, v166);
    OUTLINED_FUNCTION_17_50(v100, v42);
    v89 = 0;
  }

  __swift_storeEnumTagSinglePayload(v42, v89, 1, v30);
  v101 = sub_1E3FFE5B8(0, 1);
  v102 = sub_1E4202724();
  v103 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v102)
  {
    v103 = sub_1E4202774();
  }

  LODWORD(v167) = v103;
  v104 = *(*&a1 + 48);
  v105 = (*v104 + 1856);
  v165 = *v105;
  v185 = v105;
  (v165)();
  sub_1E4200A54();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v166 = v112;
  v113 = *(*&a1 + 40);
  v114 = 1;
  if (v113)
  {
    v115 = MEMORY[0x1E69E7CC0];

    v116 = sub_1E4201D44();
    v161 = v104;
    v117 = v162;
    *v162 = v116;
    *(v117 + 8) = 0;
    *(v117 + 16) = 1;
    v160 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE88, &qword_1E42AF9B8) + 44);
    v118 = (*(*v113 + 464))();
    if (v118)
    {
      v119 = v118;
    }

    else
    {
      v119 = v115;
    }

    v193 = *&v119;
    swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878, &unk_1E429C0E0);
    sub_1E32752B0(&qword_1EE23B548, &unk_1ECF2C790, &qword_1E42996A0, MEMORY[0x1E69E6338]);
    sub_1E375BEF4();
    swift_getOpaqueTypeConformance2();
    a1 = v180;
    sub_1E4203B34();

    sub_1E3741EA0(v117, v23, &qword_1ECF2FE50, &qword_1E42AF980);
    v114 = 0;
  }

  v120 = *&v170;
  __swift_storeEnumTagSinglePayload(v23, v114, 1, v168);
  v170 = sub_1E3FFE5B8(0, 1);
  v121 = sub_1E4202724();
  v122 = sub_1E4202774();
  sub_1E4202774();
  v123 = sub_1E4202774();
  v124 = v165;
  if (v123 != v121)
  {
    v122 = sub_1E4202774();
  }

  v124();
  sub_1E4200A54();
  v126 = v125;
  v128 = v127;
  v130 = v129;
  v132 = v131;
  if (*(*&a1 + 16))
  {
    v161 = v111;
    v162 = v109;
    v168 = v107;
    v180 = v101;

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v133 = sub_1E4202724();
    sub_1E4202774();
    sub_1E4202774();
    v134 = sub_1E4202774();
    if (v134 != v133)
    {
      v134 = sub_1E4202774();
    }

    (v124)(v134);
    sub_1E4200A54();
    OUTLINED_FUNCTION_5_23();
    (*(v178 + 32))(v120, v177, v179);
    OUTLINED_FUNCTION_5_80(v176);
    v135 = sub_1E4202754();
    sub_1E4202774();
    sub_1E4202774();
    v136 = sub_1E4202774();
    if (v136 != v135)
    {
      v136 = sub_1E4202774();
    }

    (v124)(v136);
    sub_1E4200A54();
    OUTLINED_FUNCTION_5_23();

    v137 = v120;
    v138 = v164;
    sub_1E3741EA0(v137, v164, &qword_1ECF28CC0, &qword_1E4298440);
    OUTLINED_FUNCTION_5_80(v183);
    v139 = v138;
    v140 = v163;
    sub_1E3741EA0(v139, v163, &qword_1ECF2FE40, &qword_1E42AF970);
    v141 = v140;
    v142 = v173;
    sub_1E3741EA0(v141, v173, &qword_1ECF2FE40, &qword_1E42AF970);
    v143 = 0;
    v101 = v180;
    v107 = v168;
    v111 = v161;
    v109 = v162;
  }

  else
  {
    v143 = 1;
    v142 = v173;
  }

  __swift_storeEnumTagSinglePayload(v142, v143, 1, v183);
  v144 = v66;
  v145 = v169;
  sub_1E3743538(v144, v169, &qword_1ECF2FE80, &qword_1E42AF9B0);
  v200[0] = v145;
  v146 = v182;
  v147 = v171;
  sub_1E3743538(v182, v171, &qword_1ECF2F9A8, &qword_1E42AF320);
  v193 = v101;
  v194 = v167;
  v195 = v107;
  v196 = v109;
  v197 = v111;
  v198 = v166;
  v199 = 0;
  v200[1] = v147;
  v200[2] = &v193;
  v148 = v184;
  v149 = v172;
  sub_1E3743538(v184, v172, &qword_1ECF2FE58, &qword_1E42AF988);
  v186 = v170;
  v187 = v122;
  v188 = v126;
  v189 = v128;
  v190 = v130;
  v191 = v132;
  v192 = 0;
  v200[3] = v149;
  v200[4] = &v186;
  v150 = v174;
  sub_1E3743538(v142, v174, &qword_1ECF2FE48, &qword_1E42AF978);
  v200[5] = v150;
  sub_1E39B5B14(v200, v175);
  sub_1E325F6F0(v142, &qword_1ECF2FE48, &qword_1E42AF978);
  sub_1E325F6F0(v148, &qword_1ECF2FE58, &qword_1E42AF988);
  sub_1E325F6F0(v146, &qword_1ECF2F9A8, &qword_1E42AF320);
  sub_1E325F6F0(v181, &qword_1ECF2FE80, &qword_1E42AF9B0);
  sub_1E325F6F0(v150, &qword_1ECF2FE48, &qword_1E42AF978);
  sub_1E325F6F0(v149, &qword_1ECF2FE58, &qword_1E42AF988);
  sub_1E325F6F0(v147, &qword_1ECF2F9A8, &qword_1E42AF320);
  return sub_1E325F6F0(v145, &qword_1ECF2FE80, &qword_1E42AF9B0);
}

uint64_t sub_1E39B5B14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3743538(*a1, a2, &qword_1ECF2FE80, &qword_1E42AF9B0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FE98, &qword_1E42AF9E8);
  sub_1E3743538(a1[1], a2 + v4[12], &qword_1ECF2F9A8, &qword_1E42AF320);
  v5 = a2 + v4[16];
  v7 = a1[2];
  v6 = a1[3];
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = *(v7 + 32);
  LOBYTE(v7) = *(v7 + 48);
  *v5 = v8;
  *(v5 + 8) = v9;
  *(v5 + 16) = v10;
  *(v5 + 32) = v11;
  *(v5 + 48) = v7;
  sub_1E3743538(v6, a2 + v4[20], &qword_1ECF2FE58, &qword_1E42AF988);
  v12 = a2 + v4[24];
  v14 = a1[4];
  v13 = a1[5];
  v15 = *(v14 + 8);
  v16 = *(v14 + 48);
  v17 = *(v14 + 16);
  v18 = *(v14 + 32);
  *v12 = *v14;
  *(v12 + 8) = v15;
  *(v12 + 16) = v17;
  *(v12 + 32) = v18;
  *(v12 + 48) = v16;
  return sub_1E3743538(v13, a2 + v4[28], &qword_1ECF2FE48, &qword_1E42AF978);
}

uint64_t sub_1E39B5C44(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1E39B5C84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E39B5CE0()
{
  result = qword_1ECF2FE90;
  if (!qword_1ECF2FE90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FE68, &qword_1E42AF998);
    sub_1E39B5D6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2FE90);
  }

  return result;
}

unint64_t sub_1E39B5D6C()
{
  result = qword_1EE289C50;
  if (!qword_1EE289C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FE60, &qword_1E42AF990);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C50);
  }

  return result;
}

uint64_t sub_1E39B5E10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEA0, &qword_1E42AF9F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEA8, &qword_1E42AF9F8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEB0, &qword_1E42AFA00);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v50 - v14;
  v16 = *v1;
  if (!*v1)
  {
    goto LABEL_11;
  }

  v17 = (*(*v16 + 464))(v13);
  if (!v17)
  {
    goto LABEL_11;
  }

  v18 = v17;
  result = sub_1E32AE9B0(v17);
  if (!result)
  {

LABEL_11:

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
  }

  v51 = v12;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1E6911E60](0, v18);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v20 = *(v18 + 32);
  }

  *v6 = sub_1E4201D44();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v21 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEB8, &qword_1E42AFA08) + 44)];
  memcpy(__dst, v2 + 1, 0x5BuLL);
  v22 = OUTLINED_FUNCTION_18();
  v50 = v20;
  sub_1E37E8BE8(v20, __dst, 0, v22 & 1, 0, 0, v21);
  *(v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEC0, &unk_1E42C8F40) + 36)) = 256;
  v23 = *(*v16 + 392);
  v24 = v23();
  if (v24 && ((*(*v24 + 152))(v52), v25 = v52[0], v26 = v52[1], v27 = v52[2], v28 = v52[3], , (v53 & 1) == 0))
  {
    v29.n128_u64[0] = v25;
    v30.n128_u64[0] = v26;
    v31.n128_u64[0] = v27;
    v32.n128_u64[0] = v28;
    v33 = j_nullsub_1(v29, v30, v31, v32);
  }

  else
  {
    v33 = OUTLINED_FUNCTION_5_8();
  }

  v37 = v33;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = sub_1E4202734();
  v42 = sub_1E32BDA74(v6, v10);
  v43 = &v10[*(v7 + 36)];
  *v43 = v41;
  *(v43 + 1) = v37;
  *(v43 + 2) = v38;
  *(v43 + 3) = v39;
  *(v43 + 4) = v40;
  v43[40] = 0;
  v44 = (v23)(v42);
  v45 = sub_1E39B62A0();
  OUTLINED_FUNCTION_76_0();
  v46 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_76_0();
  v47 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_76_0();
  v48 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_76_0();
  v49 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v44, v46 & 1, v47 & 1, v48 & 1, v49 & 1, v7, v45);

  sub_1E32BDADC(v10);
  (*(v51 + 32))(a1, v15, v11);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v11);
}

unint64_t sub_1E39B62A0()
{
  result = qword_1ECF2FEC8;
  if (!qword_1ECF2FEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEA8, &qword_1E42AF9F8);
    sub_1E39B632C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2FEC8);
  }

  return result;
}

unint64_t sub_1E39B632C()
{
  result = qword_1ECF2FED0;
  if (!qword_1ECF2FED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEA0, &qword_1E42AF9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2FED0);
  }

  return result;
}

uint64_t sub_1E39B63B4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 203))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E39B6408(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 202) = 0;
    *(result + 200) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 203) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 203) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1E39B64A4()
{
  result = qword_1ECF2FED8;
  if (!qword_1ECF2FED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEE0, &unk_1E42AFAA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEA8, &qword_1E42AF9F8);
    sub_1E39B62A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2FED8);
  }

  return result;
}

void *sub_1E39B6564@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v14 = *(v13 + 392);
    v15 = swift_retain_n();
    v16 = v14(v15);

    if (v16)
    {
      type metadata accessor for ImageLayout();
      v9 = swift_dynamicCastClass();
      if (!v9)
      {
      }
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = a4 & 1;
  memcpy(v23, a2, 0x5BuLL);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  memcpy((v11 + 24), a2, 0x5BuLL);
  v26 = 0;
  __src[0] = sub_1E39B66FC;
  __src[1] = v11;
  LOBYTE(__src[2]) = 0;
  __src[3] = a1;
  __src[4] = v9;
  memcpy(&__src[5], a2, 0x5BuLL);
  BYTE3(__src[16]) = v10;
  __src[17] = 0;
  __src[18] = 0;
  v19[0] = sub_1E39B66FC;
  v19[1] = v11;
  v20 = 0;
  v21 = a1;
  v22 = v9;
  v23[91] = v10;
  v24 = 0;
  v25 = 0;
  sub_1E375C2C0(a2, v17);
  sub_1E37E94CC(__src, v17);
  sub_1E37E9478(v19);
  return memcpy(a5, __src, 0x98uLL);
}

uint64_t sub_1E39B66FC()
{
  v1 = *(v0 + 16);
  type metadata accessor for ImageViewInteractor(0);

  sub_1E375C2C0(v0 + 24, &v3);
  return sub_1E41A4110(v1, (v0 + 24));
}

void sub_1E39B675C()
{
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v1, v2, &unk_1E42BD340);
  OUTLINED_FUNCTION_75();
  sub_1E4200BC4();
  sub_1E41A476C(*(v0 + 24), *(v0 + 32));

  OUTLINED_FUNCTION_75();
  v3 = sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_boundingBoxSize;
  OUTLINED_FUNCTION_5_0(v3, v4);

  sub_1E39B68DC();
}

void sub_1E39B68DC()
{
  OUTLINED_FUNCTION_93();
  v45 = v1;
  v46 = v2;
  v47 = v3;
  v5 = v4;
  v44 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF20, &qword_1E42AFC38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF18, &qword_1E42AFC30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42[-v13];
  v43 = *(v0 + 81);
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v15, v16, &unk_1E42BD340);
  v17 = (sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_boundingBoxSize);
  OUTLINED_FUNCTION_5_0(v17, v48);
  v18 = *v17;
  v19 = v17[1];

  v20 = *(v0 + 32);
  if (!v20 || (OUTLINED_FUNCTION_8(), ((*(v21 + 408))() & 1) != 0))
  {
    v22 = v18 != 0.0;
    if (v19 != 0.0)
    {
      v22 = 1;
    }

    v23 = v18 <= 0.0 || !v22;
    if (!v23 && v19 > 0.0)
    {
      v24 = 0;
      v25 = v18 / v19;
      goto LABEL_15;
    }

    if (!v20)
    {
      v25 = 0.0;
      v24 = 1;
      goto LABEL_15;
    }
  }

  OUTLINED_FUNCTION_8();
  v27 = (*(v26 + 432))();
  if (v24)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = *&v27;
  }

LABEL_15:
  v28 = &v10[*(v7 + 36)];
  *v28 = v25;
  *(v28 + 8) = v24 & 1;
  v10[*(v7 + 40)] = (v43 & 1) == 0;
  sub_1E39B6D00(v44, v5 & 1, v46, v45 & 1, v10);
  sub_1E4203DA4();
  sub_1E4200D94();
  v29 = OUTLINED_FUNCTION_134_0();
  sub_1E3741EA0(v29, v30, v31, v32);
  v33 = &v14[*(v11 + 36)];
  v34 = v49;
  *v33 = *&v48[24];
  v33[1] = v34;
  v33[2] = v50;
  v35 = sub_1E4203DA4();
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF10, &qword_1E42AFC28);
  v39 = v47;
  v40 = v47 + *(v38 + 36);
  sub_1E39B74EC();
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF28, &qword_1E42AFC40) + 36));
  *v41 = v35;
  v41[1] = v37;
  sub_1E3741EA0(v14, v39, &qword_1ECF2FF18, &qword_1E42AFC30);
  OUTLINED_FUNCTION_54_0();
}

void *sub_1E39B6C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = v3[17];
  v8 = v3[18];
  memcpy(__dst, v3, sizeof(__dst));
  sub_1E37E94CC(v3, v13);

  sub_1E34AF594(v7, v8);
  memcpy(__src, __dst, 0x88uLL);
  __src[17] = a1;
  __src[18] = a2;
  memcpy(v13, __dst, sizeof(v13));
  v14 = a1;
  v15 = a2;
  sub_1E37E94CC(__src, v10);
  sub_1E37E9478(v13);
  return memcpy(a3, __src, 0x98uLL);
}

uint64_t sub_1E39B6D00@<X0>(uint64_t a1@<X0>, int a2@<W1>, id a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v88 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF40, &qword_1E42AFCD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v75 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF48, &qword_1E42AFCE0);
  OUTLINED_FUNCTION_0_10();
  v79 = v15;
  v80 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v78 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF50, &qword_1E42AFCE8);
  OUTLINED_FUNCTION_0_10();
  v82 = v19;
  v83 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v81 = v21;
  sub_1E39B7734();
  sub_1E4203DA4();
  v85 = a2;
  v87 = a4;
  v84 = a1;
  v86 = a3;
  sub_1E4200D94();
  v22 = &v13[*(v10 + 36)];
  v23 = v95;
  *v22 = v94;
  *(v22 + 1) = v23;
  *(v22 + 2) = v96;
  v77 = v5[4];
  LODWORD(a3) = *(v5 + 128);
  if (a3 == 2)
  {
    v25 = *v5;
    v26 = *(v6 + 16);
    type metadata accessor for ImageViewInteractor(0);
    OUTLINED_FUNCTION_0_97();
    sub_1E39BCC78(v27, v28, &unk_1E42BD340);
    v76 = v25;
    v75[1] = v26;
    v29 = sub_1E4200BC4();
    v30 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image;
    OUTLINED_FUNCTION_5_0(v29 + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image, v100);
    v31 = *(v29 + v30);
    a3 = v31;

    if (!v31)
    {
      LOBYTE(a3) = 1;
      goto LABEL_15;
    }

    [a3 size];
    v33 = v32;
    v35 = v34;

    LOBYTE(a3) = 1;
    if (v35 > 0.0 && v33 > 0.0)
    {
      v36 = (sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_boundingBoxSize);
      OUTLINED_FUNCTION_5_0(v36, v99);
      v37 = *v36;
      v38 = v36[1];

      v39 = v6[4];
      if (!v39 || (OUTLINED_FUNCTION_8(), ((*(v40 + 408))() & 1) != 0))
      {
        v41 = v37 != 0.0;
        if (v38 != 0.0)
        {
          v41 = 1;
        }

        if (v37 > 0.0 && v41 && v38 > 0.0)
        {
          if (!v39)
          {
            goto LABEL_15;
          }

          v42 = v37 / v38;
          goto LABEL_19;
        }

        if (!v39)
        {
          goto LABEL_15;
        }
      }

      OUTLINED_FUNCTION_8();
      *&v69 = COERCE_DOUBLE((*(v68 + 432))());
      if (v70)
      {
        goto LABEL_15;
      }

      v42 = *&v69;
LABEL_19:
      OUTLINED_FUNCTION_8();
      v72 = (*(v71 + 744))();
      if (v72)
      {

        v73 = floor(v42 * 10.0);
        v74 = floor(v33 / v35 * 10.0);
        LOBYTE(a3) = v73 + -1.0 <= v74 && v74 <= v73 + 1.0;
      }
    }
  }

LABEL_15:
  v43 = *(v6 + 131);
  v44 = sub_1E39BC24C();
  v45 = a3 & 1;
  v46 = v78;
  sub_1E3C8F60C(v77, v45, v43, v10, v44);
  sub_1E325F69C(v13, &qword_1ECF2FF40);
  memcpy(v97, v6 + 5, 0x5BuLL);
  memcpy(v93, v6 + 5, 0x5BuLL);
  OUTLINED_FUNCTION_47_20();
  v47 = swift_allocObject();
  OUTLINED_FUNCTION_35_26(v47);
  sub_1E375C2C0(v97, &v89);
  OUTLINED_FUNCTION_52_16();
  v89 = v10;
  v90 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v51 = sub_1E39BCB80(OpaqueTypeConformance2, v49, v50);
  v52 = v80;
  v53 = v81;
  sub_1E4203524();

  memcpy(v98, v93, 0x5BuLL);
  sub_1E375C31C(v98);
  (*(v79 + 8))(v46, v52);
  v93[0] = v6[3];
  OUTLINED_FUNCTION_47_20();
  v54 = swift_allocObject();
  OUTLINED_FUNCTION_35_26(v54);
  OUTLINED_FUNCTION_52_16();
  type metadata accessor for ImageViewModel();

  v89 = v52;
  v90 = &unk_1F5D8B778;
  v91 = OpaqueTypeConformance2;
  v92 = v51;
  swift_getOpaqueTypeConformance2();
  sub_1E39BCC78(&qword_1EE282FC0, type metadata accessor for ImageViewModel, &protocol conformance descriptor for ViewModel);
  v55 = v88;
  v56 = v83;
  sub_1E4203524();

  (*(v82 + 8))(v53, v56);
  OUTLINED_FUNCTION_47_20();
  v57 = swift_allocObject();
  OUTLINED_FUNCTION_35_26(v57);
  v58 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFB8, &qword_1E42AFD60) + 36));
  *v58 = sub_1E39BCCC0;
  v58[1] = v57;
  v58[2] = 0;
  v58[3] = 0;
  OUTLINED_FUNCTION_52_16();
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v59, v60, &unk_1E42BD340);
  OUTLINED_FUNCTION_63_0();
  sub_1E4200BC4();
  v61 = sub_1E41A3EB8();

  v62 = swift_allocObject();
  *(v62 + 16) = v84;
  *(v62 + 24) = v85 & 1;
  *(v62 + 32) = v86;
  *(v62 + 40) = v87 & 1;
  memcpy((v62 + 48), v6, 0x98uLL);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFC0, &qword_1E42AFD68);
  *(v55 + *(v63 + 52)) = v61;
  v64 = (v55 + *(v63 + 56));
  *v64 = sub_1E39BCD5C;
  v64[1] = v62;
  OUTLINED_FUNCTION_47_20();
  v65 = swift_allocObject();
  OUTLINED_FUNCTION_35_26(v65);
  v66 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFC8, &qword_1E42AFD70) + 36));
  *v66 = 0;
  v66[1] = 0;
  v66[2] = sub_1E39BCE70;
  v66[3] = v65;
  OUTLINED_FUNCTION_52_16();
  return OUTLINED_FUNCTION_52_16();
}

void sub_1E39B74EC()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF38, &unk_1E42AFCC8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_7();
  memcpy(v27, (v2 + 40), 0x5BuLL);
  if (v27[10])
  {
    sub_1E375C2C0(v27, v25);
    sub_1E375C2C0(v27, v25);
    v11 = sub_1E4203644();
    v12 = *(v2 + 32);
    v13 = 0.0;
    if (v12)
    {
      (*(*v12 + 552))(v25);
      if ((v26 & 1) == 0)
      {
        v13 = sub_1E3952BE8(v25[0], v25[1], v25[2], v25[3]);
      }
    }

    sub_1E375C31C(v27);
    v14 = (v9 + *(v5 + 36));
    v15 = *(sub_1E4201534() + 20);
    v16 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v17 + 104))(v14 + v15, v16);
    *v14 = v13;
    v14[1] = v13;
    *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0) + 36)) = 256;
    *v9 = v11;
    v18 = OUTLINED_FUNCTION_75();
    sub_1E3741EA0(v18, v19, &qword_1ECF2FF38, &unk_1E42AFCC8);
    sub_1E3741EA0(v0, v4, &qword_1ECF2FF38, &unk_1E42AFCC8);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v5);
    OUTLINED_FUNCTION_54_0();
  }

  else
  {
    OUTLINED_FUNCTION_54_0();

    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }
}

void sub_1E39B7734()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFB0, &unk_1E42AFD50);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v2);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFA8, &qword_1E42AFD48);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v78 = v4 - v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFD0, &qword_1E42AFD78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFD8, &qword_1E42AFD80);
  OUTLINED_FUNCTION_0_10();
  v80 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF60, &qword_1E42AFCF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v15);
  v16 = *v0;
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v17, v18, &unk_1E42BD340);
  OUTLINED_FUNCTION_48_9();
  v19 = (sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_symbolName);
  OUTLINED_FUNCTION_5_0(v19, &v89);
  v20 = *v19;
  v21 = v19[1];

  if (!v21)
  {
    OUTLINED_FUNCTION_48_9();
    v30 = sub_1E4200BC4();
    v31 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image;
    OUTLINED_FUNCTION_5_0(v30 + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image, &v92);
    v32 = *(v30 + v31);
    v33 = v32;

    if (v32)
    {
    }

    OUTLINED_FUNCTION_48_9();
    v34 = sub_1E4200BC4();
    v35 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image;
    OUTLINED_FUNCTION_5_0(v34 + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image, &v90);
    v36 = *(v34 + v35);
    v37 = v36;

    if (!v36)
    {
      v38 = OUTLINED_FUNCTION_31_31(v16);
      v39 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_placeholderImage;
      OUTLINED_FUNCTION_5_0(v38 + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_placeholderImage, v94);
      v37 = *(v38 + v39);
    }

    sub_1E39B8128();

    v40 = OUTLINED_FUNCTION_31_31(v16);
    v41 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image;
    OUTLINED_FUNCTION_5_0(v40 + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image, &v88);
    v42 = *(v40 + v41);
    v43 = v42;

    if (v42)
    {
    }

    else
    {
      v69 = OUTLINED_FUNCTION_31_31(v16);
      v70 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_placeholderColor;
      OUTLINED_FUNCTION_5_0(v69 + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_placeholderColor, &v87);
      v71 = *(v69 + v70);
      v45 = v71;

      if (v71)
      {
        v44 = sub_1E38F08C4(v45);
        goto LABEL_30;
      }
    }

    v44 = 0;
    v45 = 0;
LABEL_30:
    v72 = sub_1E4203DA4();
    v74 = v73;

    sub_1E3741EA0(v82, v78, &qword_1ECF2FFB0, &unk_1E42AFD50);
    v75 = (v78 + *(v85 + 36));
    *v75 = v44;
    v75[1] = v72;
    v75[2] = v74;
    sub_1E3741EA0(v78, v79, &qword_1ECF2FFA8, &qword_1E42AFD48);
    sub_1E3743538(v79, v84, &qword_1ECF2FFA8, &qword_1E42AFD48);
    swift_storeEnumTagMultiPayload();
    sub_1E39BC364();
    sub_1E39BC96C();
    sub_1E4201F44();
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v76, v77);
    goto LABEL_31;
  }

  v83 = v10;

  v22 = sub_1E42037F4();
  v23 = v0[4];
  if (v23)
  {
    OUTLINED_FUNCTION_8();
    v25 = (*(v24 + 696))();
    if (v25 != 4)
    {
      v52 = sub_1E41261D8(v25);
      *&v90 = v22;
      *(&v90 + 1) = v52;
      *v91 = 0;
      *&v91[8] = 0;
      *&v91[15] = 0;

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_8();
    v27 = (*(v26 + 672))();
    OUTLINED_FUNCTION_8();
    v29 = (*(v28 + 744))();
  }

  else
  {
    v29 = 0;
    v27 = 0;
  }

  v46 = OUTLINED_FUNCTION_34();
  sub_1E39B9AD8(v46, v47, 0, v48);
  v49 = v95;
  v50 = v96;

  if (v50)
  {
    v51 = 256;
  }

  else
  {
    v51 = 0;
  }

  v90 = v94[0];
  *v91 = v94[1];
  *&v91[16] = v51 | v49;
  v91[18] = 1;
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF70, &qword_1E42AFD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF78, &qword_1E42AFD18);
  sub_1E39BC4E8();
  sub_1E39BC5A0();
  sub_1E4201F44();

  v90 = v92;
  *v91 = *v93;
  *&v91[15] = *&v93[15];
  if (v23)
  {
    OUTLINED_FUNCTION_8();
    (*(v53 + 720))();
  }

  v54 = OUTLINED_FUNCTION_75();
  __swift_instantiateConcreteTypeFromMangledNameV2(v54, v55);
  v56 = sub_1E39BC45C();
  sub_1E37B8438();
  sub_1E325F69C(&v92, &qword_1ECF2FF68);
  if (_MergedGlobals_176 != -1)
  {
    swift_once();
  }

  sub_1E37D26AC(v20, v21, qword_1EE28B848);
  if (!v57)
  {
    goto LABEL_26;
  }

  v58 = [objc_opt_self() sharedInstance];
  if (v58)
  {
    v59 = v58;
    v60 = sub_1E4205ED4();

    v61 = [v59 localizedStringForKey_];

    if (v61)
    {
      v62 = sub_1E4205F14();
      v64 = v63;

      *&v90 = v62;
      *(&v90 + 1) = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFD8, &qword_1E42AFD80);
      *&v94[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF68, &qword_1E42AFD00);
      *(&v94[0] + 1) = v56;
      OUTLINED_FUNCTION_22_35();
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      sub_1E32822E0(OpaqueTypeConformance2, v66, v67);
      v68 = v86;
      sub_1E4203114();
LABEL_27:

      (*(v80 + 8))(v68, v83);
      sub_1E32BDE64(v81, v84);
      swift_storeEnumTagMultiPayload();
      sub_1E39BC364();
      sub_1E39BC96C();
      sub_1E4201F44();
      sub_1E325F69C(v81, &qword_1ECF2FF60);
LABEL_31:
      OUTLINED_FUNCTION_25_2();
      return;
    }

LABEL_26:
    sub_1E4201C14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFD8, &qword_1E42AFD80);
    *&v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF68, &qword_1E42AFD00);
    *(&v90 + 1) = v56;
    OUTLINED_FUNCTION_22_35();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_57();
    v68 = v86;
    sub_1E4203104();

    goto LABEL_27;
  }

  __break(1u);
}

void sub_1E39B8128()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFE0, &qword_1E42AFD88);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v7);
  v8 = sub_1E42037D4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v58 = sub_1E4203804();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  if (*(v0 + 130))
  {
    goto LABEL_2;
  }

  v16 = TVAppFeature.isEnabled.getter(10, v17, v18);
  if (v16)
  {
    v21 = *v0;
    type metadata accessor for ImageViewInteractor(0);
    OUTLINED_FUNCTION_0_97();
    sub_1E39BCC78(v22, v23, &unk_1E42BD340);
    v3 = v21;
    v24 = sub_1E4200BC4();
    v25 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image;
    OUTLINED_FUNCTION_5_0(v24 + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image, &v63);
    v5 = *(v24 + v25);
    v26 = v5;

    if (v5 || (v27 = sub_1E4200BC4(), v28 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_placeholderColor, OUTLINED_FUNCTION_5_0(v27 + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_placeholderColor, &v62), v5 = *(v27 + v28), v26 = v5, , v5))
    {

      OUTLINED_FUNCTION_60_11();
    }

    else
    {
      v55 = v1[4];
      OUTLINED_FUNCTION_60_11();
      if (v55)
      {
        OUTLINED_FUNCTION_8();
        v16 = (*(v56 + 1992))();
        if (v16 != 3)
        {
LABEL_2:
          v19 = 0.0;
          v20 = 1;
          goto LABEL_24;
        }
      }
    }
  }

  sub_1E39B885C(v16, v17, v18);
  v20 = 1;
  v16 = sub_1E4200B54();
  if ((v16 & 1) == 0 && (v3 & 1) == 0)
  {
    v19 = 0.0;
    goto LABEL_24;
  }

  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v29, v30, &unk_1E42BD340);
  OUTLINED_FUNCTION_32_0();
  v31 = (sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_boundingBoxSize);
  OUTLINED_FUNCTION_5_0(v31, &v64);
  v32 = *v31;
  v33 = v31[1];

  v34 = v1[4];
  if (!v34 || (OUTLINED_FUNCTION_8(), v16 = (*(v35 + 408))(), (v16 & 1) != 0))
  {
    v36 = v32 != 0.0;
    if (v33 != 0.0)
    {
      v36 = 1;
    }

    v37 = v32 <= 0.0 || !v36;
    if (!v37 && v33 > 0.0)
    {
      v20 = 0;
      v19 = v32 / v33;
      goto LABEL_24;
    }

    if (!v34)
    {
      goto LABEL_2;
    }
  }

  OUTLINED_FUNCTION_8();
  v16 = (*(v38 + 432))();
  v20 = v17;
  if (v17)
  {
    v19 = 0.0;
  }

  else
  {
    v19 = *&v16;
  }

LABEL_24:
  v39 = sub_1E39B885C(v16, v17, v18);
  sub_1E39B8A74();
  v40 = v5;
  sub_1E42037B4();
  (*(v10 + 104))(v14, *MEMORY[0x1E6981630], v8);
  sub_1E4203824();

  (*(v10 + 8))(v14, v8);
  v41 = OUTLINED_FUNCTION_63_0();
  v42(v41);
  __swift_storeEnumTagSinglePayload(v57, 0, 1, v58);
  v43 = sub_1E42037E4();

  sub_1E325F69C(v57, &qword_1ECF2FFE0);
  v59[3] = v43;
  *&v59[4] = v19;
  v60 = v20 & 1;
  v61 = v39;
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v44, v45, &unk_1E42BD340);
  OUTLINED_FUNCTION_32_0();
  v46 = sub_1E4200BC4();
  v47 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_imageViewModel;
  OUTLINED_FUNCTION_5_0(v46 + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_imageViewModel, v59);
  v48 = *(v46 + v47);

  (*(*v48 + 904))(v49);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1B0, &unk_1E429CE00);
  v50 = sub_1E37AE314();
  sub_1E32822E0(v50, v51, v52);
  sub_1E4203114();

  v53 = OUTLINED_FUNCTION_74();
  v54(v53);
  OUTLINED_FUNCTION_54_0();
}

double sub_1E39B87A4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    sub_1E38F08C4(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FEE8, &qword_1E42AFAB0);
  sub_1E39B9524();
  sub_1E4203DA4();
  sub_1E4202D24();

  return result;
}

uint64_t sub_1E39B885C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (TVAppFeature.isEnabled.getter(10, a2, a3))
  {
    type metadata accessor for ImageViewInteractor(0);
    OUTLINED_FUNCTION_0_97();
    sub_1E39BCC78(v5, v6, &unk_1E42BD340);
    OUTLINED_FUNCTION_57();
    v7 = sub_1E4200BC4();
    v8 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image;
    OUTLINED_FUNCTION_5_0(v7 + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_image, v23);
    v9 = *(v7 + v8);
    v10 = v9;

    if (v9 || (OUTLINED_FUNCTION_57(), v11 = sub_1E4200BC4(), v12 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_placeholderColor, OUTLINED_FUNCTION_5_0(v11 + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_placeholderColor, v22), v13 = *(v11 + v12), v10 = v13, , v13))
    {
    }

    else if (*(v4 + 32))
    {
      OUTLINED_FUNCTION_8();
      if ((*(v20 + 1992))() != 3)
      {
        goto LABEL_11;
      }
    }
  }

  v14 = *(v4 + 82);
  if (v14 == 2)
  {
    if (*(v4 + 32))
    {
      OUTLINED_FUNCTION_8();
      v25 = (*(v15 + 1800))();
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC58, "^i\r");
      v17 = sub_1E4148C68(sub_1E3783B7C, v16, &v24);
      v25 = 1;
      sub_1E39BD0B0(v17, v18, v19);
      if (sub_1E4205E84())
      {
        LOBYTE(v14) = 0;
        return v14 & 1;
      }
    }

LABEL_11:
    LOBYTE(v14) = 1;
  }

  return v14 & 1;
}

void sub_1E39B8A74()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_75();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v8, v9, &unk_1E42BD340);
  v10 = sub_1E4200BC4();
  v11 = OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_imageInfo;
  OUTLINED_FUNCTION_5_0(v10 + OBJC_IVAR____TtC8VideosUI19ImageViewInteractor_imageInfo, &v24);
  sub_1E3743538(v10 + v11, v7, &qword_1ECF2FFE8, &unk_1E42AFD90);

  v12 = type metadata accessor for ImageInfo(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    sub_1E325F69C(v7, &qword_1ECF2FFE8);
  }

  else
  {
    v13 = *(v7 + 1);
    v14 = v13;
    sub_1E39BD054(v7, v15);
    if (v13)
    {

      v16 = 1;
      goto LABEL_6;
    }
  }

  v16 = 0;
LABEL_6:
  if (!*(v0 + 32))
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_8();
  if ((v16 & (*(v17 + 2040))() & 1) == 0)
  {
    OUTLINED_FUNCTION_8();
    v19 = (*(v18 + 672))();
    if (v19)
    {

      goto LABEL_10;
    }

LABEL_11:
    v20 = MEMORY[0x1E6981688];
    goto LABEL_12;
  }

LABEL_10:
  v20 = MEMORY[0x1E6981698];
LABEL_12:
  v21 = *v20;
  sub_1E4203804();
  OUTLINED_FUNCTION_2();
  (*(v22 + 104))(v2, v21);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39B8C98()
{
  OUTLINED_FUNCTION_93();
  WitnessTable = v0;
  v56 = v1;
  v57 = v2;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_1_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEF0, &qword_1E42AFAB8);
  OUTLINED_FUNCTION_18_12();
  v16 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v53 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_25_3();
  v54 = v23;
  OUTLINED_FUNCTION_112_1();
  v24 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v26 = v25;
  OUTLINED_FUNCTION_5_7();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v51 - v29;
  if (v6)
  {
    OUTLINED_FUNCTION_8();
    v32 = (*(v31 + 1824))();
    if (v32)
    {
      v52 = v24;
      v33 = v32;
      OUTLINED_FUNCTION_8();
      (*(v34 + 1848))(&v67);
      if ((v68 & 1) == 0)
      {
        v51 = v33;
        v60 = sub_1E38F08C4(v33);
        v43 = v57;
        sub_1E4203494();

        v44 = OUTLINED_FUNCTION_14_67(&qword_1EE289350, &qword_1ECF2FEF0, &qword_1E42AFAB8);
        v58 = v43;
        v59 = v44;
        OUTLINED_FUNCTION_4_1();
        WitnessTable = swift_getWitnessTable();
        v45 = v53;
        v46 = *(v53 + 16);
        v46(v54, v21, v16);
        v47 = *(v45 + 8);
        v47(v21, v16);
        v48 = OUTLINED_FUNCTION_32_0();
        (v46)(v48);
        OUTLINED_FUNCTION_112_1();
        v37 = v57;
        sub_1E37B8D98(v49, v50);

        v47(v21, v16);
        v47(v54, v16);
        v24 = v52;
        goto LABEL_6;
      }

      v24 = v52;
    }
  }

  v35 = *(v8 + 16);
  v35(v15, WitnessTable, v4, v28);
  (v35)(v12, v15, v4);
  v36 = OUTLINED_FUNCTION_14_67(&qword_1EE289350, &qword_1ECF2FEF0, &qword_1E42AFAB8);
  v37 = v57;
  v65 = v57;
  v66 = v36;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_112_1();
  sub_1E37B8E90(v38, v39, v40);
  v41 = *(v8 + 8);
  v41(v12, v4);
  v41(v15, v4);
LABEL_6:
  v42 = OUTLINED_FUNCTION_14_67(&qword_1EE289350, &qword_1ECF2FEF0, &qword_1E42AFAB8);
  v63 = v37;
  v64 = v42;
  OUTLINED_FUNCTION_4_1();
  v61 = swift_getWitnessTable();
  v62 = v37;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  (*(v26 + 16))(v56, v30, v24);
  (*(v26 + 8))(v30, v24);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E39B9138()
{
  OUTLINED_FUNCTION_31_1();
  v51 = v1;
  v54 = v4;
  v55 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_1_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = (v12 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28998, &unk_1E4297E30);
  OUTLINED_FUNCTION_18_12();
  v18 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_61_10();
  OUTLINED_FUNCTION_112_1();
  v23 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v53 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  v52 = v26;
  if (v8)
  {
    v49 = v8;
    sub_1E38F08C4(v49);
    v50 = v23;
    v27 = v55;
    sub_1E4202FB4();

    v28 = OUTLINED_FUNCTION_8_56(&qword_1EE288788, &qword_1ECF28998, &unk_1E4297E30);
    v56 = v27;
    v57 = v28;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v29 = *(v20 + 16);
    v29(v0, v2, v18);
    v30 = *(v20 + 8);
    v31 = OUTLINED_FUNCTION_134_0();
    v30(v31);
    v29(v2, v0, v18);
    v32 = v52;
    OUTLINED_FUNCTION_112_1();
    v23 = v50;
    sub_1E37B8D98(v33, v34);

    v35 = OUTLINED_FUNCTION_134_0();
    v30(v35);
    (v30)(v0, v18);
  }

  else
  {
    v36 = *(v10 + 16);
    v36(v17, v51, v6);
    v36(v14, v17, v6);
    v37 = OUTLINED_FUNCTION_8_56(&qword_1EE288788, &qword_1ECF28998, &unk_1E4297E30);
    v62 = v55;
    v63 = v37;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v38 = v52;
    OUTLINED_FUNCTION_112_1();
    sub_1E37B8E90(v39, v40, v41);
    v42 = *(v10 + 8);
    v43 = OUTLINED_FUNCTION_105_3();
    v42(v43);
    v44 = v17;
    v32 = v38;
    (v42)(v44, v6);
  }

  v45 = OUTLINED_FUNCTION_8_56(&qword_1EE288788, &qword_1ECF28998, &unk_1E4297E30);
  v46 = v55;
  v60 = v55;
  v61 = v45;
  OUTLINED_FUNCTION_4_1();
  WitnessTable = swift_getWitnessTable();
  v59 = v46;
  OUTLINED_FUNCTION_2_25();
  swift_getWitnessTable();
  v47 = v53;
  (*(v53 + 16))(v54, v32, v23);
  (*(v47 + 8))(v32, v23);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E39B9524()
{
  result = qword_1EE288700;
  if (!qword_1EE288700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEE8, &qword_1E42AFAB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288700);
  }

  return result;
}

double sub_1E39B95A0(void *a1)
{
  if (a1)
  {
    sub_1E38F08C4(a1);
  }

  OUTLINED_FUNCTION_59_1();
  sub_1E4202D74();

  return result;
}

void sub_1E39B9610()
{
  OUTLINED_FUNCTION_31_1();
  v64 = v1;
  v3 = v2;
  v5 = v4;
  LODWORD(v63) = v6;
  v58 = v7;
  v67 = v8;
  OUTLINED_FUNCTION_1_2();
  v62 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v61 = v11 - v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v59 = sub_1E4203814();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FA20, &qword_1E42AF3B0);
  OUTLINED_FUNCTION_18_12();
  v22 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  v60 = v26 - v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v58 - v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_61_10();
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v65 = v33;
  v66 = v32;
  OUTLINED_FUNCTION_5_7();
  v36 = MEMORY[0x1EEE9AC00](v34);
  v37 = &v58 - v35;
  if (v63)
  {
    v38 = v62;
    v39 = *(v62 + 16);
    v39(v15, v64, v5, v36);
    v40 = v61;
    (v39)(v61, v15, v5);
    v41 = OUTLINED_FUNCTION_8_56(&qword_1EE288780, &qword_1ECF2FA20, &qword_1E42AF3B0);
    v74 = v3;
    v75 = v41;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    sub_1E37B8E90(v40, v22, v5);
    v42 = *(v38 + 8);
    v42(v40, v5);
    v43 = OUTLINED_FUNCTION_63_0();
    (v42)(v43);
    v44 = v37;
  }

  else
  {
    v63 = &v58 - v35;
    if ((v58 - 1) > 2)
    {
      v45 = MEMORY[0x1E69816E0];
    }

    else
    {
      v45 = qword_1E8737E88[v58 - 1];
    }

    v46 = v59;
    (*(v17 + 104))(v21, *v45, v59, v36);
    OUTLINED_FUNCTION_34();
    sub_1E4202D44();
    (*(v17 + 8))(v21, v46);
    v47 = OUTLINED_FUNCTION_8_56(&qword_1EE288780, &qword_1ECF2FA20, &qword_1E42AF3B0);
    v68 = v3;
    v69 = v47;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v48 = *(v24 + 16);
    v48(v0, v30, v22);
    v49 = *(v24 + 8);
    v50 = OUTLINED_FUNCTION_124();
    v49(v50);
    v48(v60, v0, v22);
    v44 = v63;
    v51 = OUTLINED_FUNCTION_124();
    sub_1E37B8D98(v51, v52);
    v53 = OUTLINED_FUNCTION_124();
    v49(v53);
    (v49)(v0, v22);
  }

  v54 = OUTLINED_FUNCTION_8_56(&qword_1EE288780, &qword_1ECF2FA20, &qword_1E42AF3B0);
  v72 = v3;
  v73 = v54;
  OUTLINED_FUNCTION_4_1();
  WitnessTable = swift_getWitnessTable();
  v71 = v3;
  OUTLINED_FUNCTION_2_25();
  v55 = v66;
  swift_getWitnessTable();
  v56 = v65;
  OUTLINED_FUNCTION_59_1();
  v57();
  (*(v56 + 8))(v44, v55);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E39B9AD8@<D0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v12 = a1;
        v10 = a2;
        v9 = a3;
        sub_1E38F08C4(v12);
        sub_1E38F08C4(v10);
        sub_1E38F08C4(v9);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF88, &qword_1E42AFD28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF90, &qword_1E42AFD30);
        sub_1E39BC6B8();
        sub_1E39BC770();
        sub_1E4201F44();
        sub_1E39BCF80(v14, *(&v14 + 1), v15, *(&v15 + 1), v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF80, &qword_1E42AFD20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF98, &qword_1E42AFD38);
        sub_1E39BC62C();
        sub_1E39BC828();
        sub_1E4201F44();

        sub_1E39BCFE4(v14, *(&v14 + 1), v15, *(&v15 + 1), v16);
      }

      else
      {
        v13 = a1;
        v11 = a2;
        sub_1E38F08C4(v13);
        sub_1E38F08C4(v11);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF88, &qword_1E42AFD28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF90, &qword_1E42AFD30);
        sub_1E39BC6B8();
        sub_1E39BC770();
        sub_1E4201F44();
        sub_1E39BCF80(v14, *(&v14 + 1), v15, *(&v15 + 1), v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF80, &qword_1E42AFD20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF98, &qword_1E42AFD38);
        sub_1E39BC62C();
        sub_1E39BC828();
        sub_1E4201F44();

        sub_1E39BCFE4(v14, *(&v14 + 1), v15, *(&v15 + 1), v16);
      }
    }

    else
    {
      v7 = a1;
      sub_1E38F08C4(v7);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFA0, &qword_1E42AFD40);
      sub_1E39BC8B4();
      sub_1E4201F44();
      sub_1E39BCEF8(v14, *(&v14 + 1), v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF80, &qword_1E42AFD20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF98, &qword_1E42AFD38);
      sub_1E39BC62C();
      sub_1E39BC828();
      sub_1E4201F44();

      sub_1E39BCF34(v14, *(&v14 + 1), v15);
    }
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFA0, &qword_1E42AFD40);
    sub_1E39BC8B4();
    sub_1E4201F44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF80, &qword_1E42AFD20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FF98, &qword_1E42AFD38);
    sub_1E39BC62C();
    sub_1E39BC828();
    sub_1E4201F44();
  }

  result = *&v14;
  *a4 = v14;
  *(a4 + 16) = v15;
  *(a4 + 32) = v16;
  *(a4 + 33) = v17;
  return result;
}

void sub_1E39BA034()
{
  OUTLINED_FUNCTION_31_1();
  v162 = v0;
  v166 = v1;
  v3 = v2;
  v145 = v4;
  v150 = v5;
  v169 = v6;
  OUTLINED_FUNCTION_1_2();
  v154 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v153 = v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FEF8, &qword_1E42AFAC0);
  OUTLINED_FUNCTION_13_10();
  v14 = sub_1E42013A4();
  v15 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v149 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v156 = v18;
  v170 = v14;
  v141 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_25_3();
  v147 = v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF00, &qword_1E42AFAC8);
  OUTLINED_FUNCTION_18_12();
  v25 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v140 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v144 = v28 - v29;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25_3();
  v143 = v31;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF08, &qword_1E42AFAD0);
  OUTLINED_FUNCTION_13_10();
  v32 = sub_1E42013A4();
  v33 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v35 = v34;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  v146 = v37;
  OUTLINED_FUNCTION_1_2();
  v142 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_4_6();
  v42 = v40 - v41;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_25_3();
  v148 = v44;
  sub_1E4201F54();
  OUTLINED_FUNCTION_1_2();
  v167 = v46;
  v168 = v45;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_44();
  v171 = v49;
  if (v48)
  {
    v138 = v35;
    v152 = v32;
    v155 = v33;
    if (v150)
    {
      if (v145)
      {
        v159 = v48;
        v157 = v150;
        v151 = v145;
        v50 = v166;
        v173[0] = sub_1E38F08C4(v159);
        v172[0] = sub_1E38F08C4(v157);
        sub_1E38F08C4(v151);
        sub_1E4202FD4();

        OUTLINED_FUNCTION_5_81();
        sub_1E374AD40(v51, v52, v53, v54);
        swift_getWitnessTable();
        v55 = *(v142 + 16);
        v56 = OUTLINED_FUNCTION_134_0();
        v55(v56);
        v163 = *(v142 + 8);
        v163(v42, v152);
        (v55)(v42, v148, v152);
        OUTLINED_FUNCTION_4_83();
        sub_1E374AD40(v57, v58, v59, v60);
        swift_getWitnessTable();
        sub_1E37B8D98(v42, v152);
        OUTLINED_FUNCTION_12_60();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_3_85();
        sub_1E374AD40(v61, v62, v63, v64);
        swift_getWitnessTable();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_55_17();
        sub_1E37B8D98(v146, v33);

        (*(v138 + 8))(v146, v33);
        v163(v42, v152);
        v163(v148, v152);
      }

      else
      {
        v161 = v48;
        v158 = v150;
        v173[0] = sub_1E38F08C4(v161);
        v172[0] = sub_1E38F08C4(v158);
        MEMORY[0x1E690D940](v173, v172, v3, MEMORY[0x1E69815C0], MEMORY[0x1E69815C0], v166, MEMORY[0x1E6981568], MEMORY[0x1E6981568]);

        OUTLINED_FUNCTION_4_83();
        sub_1E374AD40(v103, v104, v105, v106);
        OUTLINED_FUNCTION_4_1();
        swift_getWitnessTable();
        v50 = v166;
        v107 = *(v140 + 16);
        (v107)(v143, v144, v25);
        v165 = *(v140 + 8);
        v165(v144, v25);
        OUTLINED_FUNCTION_82();
        v107();
        OUTLINED_FUNCTION_5_81();
        sub_1E374AD40(v108, v109, v110, v111);
        swift_getWitnessTable();
        OUTLINED_FUNCTION_82();
        sub_1E37B8E90(v112, v113, v114);
        swift_getWitnessTable();
        OUTLINED_FUNCTION_3_85();
        sub_1E374AD40(v115, v116, v117, v118);
        swift_getWitnessTable();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_55_17();
        sub_1E37B8D98(v146, v33);

        (*(v35 + 8))(v146, v33);
        v165(v144, v25);
        v165(v143, v25);
      }
    }

    else
    {
      v160 = v48;
      v173[0] = sub_1E38F08C4(v160);
      sub_1E4202FC4();

      OUTLINED_FUNCTION_3_85();
      v172[9] = v166;
      v172[10] = sub_1E374AD40(v86, v87, v88, v89);
      OUTLINED_FUNCTION_4_1();
      v50 = v166;
      WitnessTable = swift_getWitnessTable();
      v91 = *(v141 + 16);
      v92 = OUTLINED_FUNCTION_74();
      v91(v92);
      v164 = *(v141 + 8);
      v164(v22, v170);
      v93 = OUTLINED_FUNCTION_34();
      v91(v93);
      sub_1E37B8D98(v22, v170);
      OUTLINED_FUNCTION_5_81();
      v172[7] = v166;
      v172[8] = sub_1E374AD40(v94, v95, v96, v97);
      v98 = swift_getWitnessTable();
      OUTLINED_FUNCTION_4_83();
      v172[5] = v166;
      v172[6] = sub_1E374AD40(v99, v100, v101, v102);
      v172[3] = v98;
      v172[4] = swift_getWitnessTable();
      OUTLINED_FUNCTION_19_50();
      swift_getWitnessTable();
      v172[1] = WitnessTable;
      v172[2] = v166;
      swift_getWitnessTable();
      OUTLINED_FUNCTION_55_17();
      sub_1E37B8E90(v156, v155, v15);

      (*(v149 + 8))(v156, v15);
      v164(v22, v170);
      v164(v147, v170);
    }
  }

  else
  {
    v65 = *(v154 + 16);
    v65(v153, v162, v3);
    v139 = v11;
    v65(v11, v153, v3);
    OUTLINED_FUNCTION_3_85();
    v173[21] = v166;
    v173[22] = sub_1E374AD40(v66, v67, v68, v69);
    swift_getWitnessTable();
    v70 = OUTLINED_FUNCTION_124();
    v72 = v71;
    sub_1E37B8E90(v70, v73, v3);
    OUTLINED_FUNCTION_5_81();
    v173[19] = v166;
    v173[20] = sub_1E374AD40(v74, v75, v76, v77);
    v78 = swift_getWitnessTable();
    OUTLINED_FUNCTION_4_83();
    v173[17] = v166;
    v173[18] = sub_1E374AD40(v79, v80, v81, v82);
    OUTLINED_FUNCTION_34();
    v173[15] = v78;
    v173[16] = swift_getWitnessTable();
    OUTLINED_FUNCTION_12_60();
    swift_getWitnessTable();
    v173[13] = v72;
    v173[14] = v166;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_55_17();
    sub_1E37B8E90(v156, v33, v15);
    v83 = OUTLINED_FUNCTION_57();
    v84(v83);
    v85 = *(v154 + 8);
    v85(v139, v3);
    v85(v153, v3);
    v50 = v166;
  }

  OUTLINED_FUNCTION_5_81();
  v123 = sub_1E374AD40(v119, v120, v121, v122);
  v173[11] = v50;
  v173[12] = v123;
  OUTLINED_FUNCTION_21_44();
  v124 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_83();
  v129 = sub_1E374AD40(v125, v126, v127, v128);
  v173[9] = v50;
  v173[10] = v129;
  OUTLINED_FUNCTION_63_0();
  v130 = swift_getWitnessTable();
  v173[7] = v124;
  v173[8] = v130;
  OUTLINED_FUNCTION_12_60();
  v131 = swift_getWitnessTable();
  OUTLINED_FUNCTION_3_85();
  v136 = sub_1E374AD40(v132, v133, v134, v135);
  v173[5] = v50;
  v173[6] = v136;
  v173[3] = swift_getWitnessTable();
  v173[4] = v50;
  v137 = swift_getWitnessTable();
  v173[1] = v131;
  v173[2] = v137;
  swift_getWitnessTable();
  (*(v167 + 16))(v169, v171, v168);
  (*(v167 + 8))(v171, v168);
  OUTLINED_FUNCTION_25_2();
}

uint64_t get_enum_tag_for_layout_string_8VideosUI20AsyncImageLoadResultVIegg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E39BAED8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1E39BAF18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E39BAF8C()
{
  result = qword_1EE2896D8;
  if (!qword_1EE2896D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF10, &qword_1E42AFC28);
    sub_1E39BB044();
    sub_1E374AD40(&qword_1EE289260, &qword_1ECF2FF28, &qword_1E42AFC40, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2896D8);
  }

  return result;
}

unint64_t sub_1E39BB044()
{
  result = qword_1EE289BC8;
  if (!qword_1EE289BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF18, &qword_1E42AFC30);
    sub_1E39BB0D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BC8);
  }

  return result;
}

unint64_t sub_1E39BB0D0()
{
  result = qword_1EE2A0C90[0];
  if (!qword_1EE2A0C90[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF20, &qword_1E42AFC38);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A0C90);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA19_ConditionalContentVyAA08ModifiedE0VyxAA16_OverlayModifierVyAA06_ShapeC0VyAA08_StrokedI0VyAA9RectangleV6_InsetVGAA5ColorVGGGxGAaBHPAvaBHPxAaBHD1__AuA0cH0HPyHCHC_xAaBHD1_HCTm()
{
  OUTLINED_FUNCTION_56_16();
  v4 = OUTLINED_FUNCTION_40_2(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  sub_1E4201F54();
  v6 = OUTLINED_FUNCTION_63_0();
  sub_1E374AD40(v6, v7, v1, v0);
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_25();
  return swift_getWitnessTable();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA19_BackgroundModifierVyAA5ColorVSgGGAaBHPxAaBHD1__AjA0cG0HPyHCHCTm()
{
  OUTLINED_FUNCTION_56_16();
  v4 = OUTLINED_FUNCTION_40_2(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  v6 = OUTLINED_FUNCTION_63_0();
  sub_1E374AD40(v6, v7, v1, v0);
  OUTLINED_FUNCTION_4_1();
  return swift_getWitnessTable();
}

void sub_1E39BB25C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E39BB660(319, &qword_1EE28A3B8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unsigned __int16 *sub_1E39BB310(unsigned __int16 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 < a2)
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 10;
    v9 = (a2 - v7 + 0xFFFF) >> 16;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_25;
        }

LABEL_21:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        v17 = v7 + (v15 | v14);
        break;
      default:
        goto LABEL_25;
    }

    return (v17 + 1);
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return __swift_getEnumTagSinglePayload(result, v5, v4);
  }

  v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v16 < 2)
  {
    return 0;
  }

  v17 = (v16 + 2147483646) & 0x7FFFFFFF;
  return (v17 + 1);
}

void sub_1E39BB468(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 10;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 0xFFFF) >> 16;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            *(((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9) = a2 + 1;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    v16 = OUTLINED_FUNCTION_32_0();
    bzero(v16, v17);
    if (v10 <= 3)
    {
      v18 = HIWORD(v15) + 1;
    }

    else
    {
      v18 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v10) = v18;
        break;
      case 2:
        *(a1 + v10) = v18;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *(a1 + v10) = v18;
        break;
      default:
        return;
    }
  }
}

void sub_1E39BB660(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1E39BB6F4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v60 = v4;
  v5 = *(v2 + 16);
  v6 = MEMORY[0x1E697F578];
  v7 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  v57 = v12;
  v13 = MEMORY[0x1E6981840];
  v56 = v5;
  v14 = OUTLINED_FUNCTION_50_0(255, MEMORY[0x1E6981840], v5, MEMORY[0x1E6981840]);
  OUTLINED_FUNCTION_51_18(v14);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E4203A44();
  v15 = OUTLINED_FUNCTION_13_10();
  v17 = OUTLINED_FUNCTION_50_0(v15, v13, v16, v13);
  OUTLINED_FUNCTION_51_18(v17);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_12();
  sub_1E42039C4();
  OUTLINED_FUNCTION_0_10();
  v55 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v54 - v20;
  v62 = v22;
  v23 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_19_7();
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v58 = v32;
  v59 = v31;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  v61 = v34;
  if (*(v0 + *(v3 + 40)) == 1)
  {
    sub_1E39BBC94();
    OUTLINED_FUNCTION_3_2();
    v57 = v3;
    v35 = v62;
    WitnessTable = swift_getWitnessTable();
    sub_1E4202D84();
    (*(v55 + 8))(v21, v35);
    v65 = WitnessTable;
    v66 = MEMORY[0x1E697F568];
    OUTLINED_FUNCTION_14_55();
    v56 = swift_getWitnessTable();
    v37 = *(v25 + 16);
    v37(v6, v29, v23);
    v38 = *(v25 + 8);
    v39 = OUTLINED_FUNCTION_105_3();
    v38(v39);
    v37(v29, v6, v23);
    v40 = *(v57 + 24);
    v63 = v40;
    v64 = MEMORY[0x1E697F568];
    swift_getWitnessTable();
    v41 = OUTLINED_FUNCTION_105_3();
    sub_1E37B8D98(v41, v42);
    v43 = OUTLINED_FUNCTION_105_3();
    v38(v43);
    (v38)(v6, v23);
  }

  else
  {
    v40 = *(v3 + 24);
    sub_1E4202D84();
    v75 = v40;
    v76 = MEMORY[0x1E697F568];
    OUTLINED_FUNCTION_14_55();
    v56 = swift_getWitnessTable();
    v44 = *(v9 + 16);
    (v44)(v57, v1, v7);
    v45 = *(v9 + 8);
    v45(v1, v7);
    OUTLINED_FUNCTION_82();
    v44();
    OUTLINED_FUNCTION_3_2();
    v73 = swift_getWitnessTable();
    v74 = MEMORY[0x1E697F568];
    swift_getWitnessTable();
    sub_1E37B8E90(v1, v23, v7);
    v45(v1, v7);
    v46 = OUTLINED_FUNCTION_57();
    (v45)(v46);
  }

  OUTLINED_FUNCTION_3_2();
  v71 = swift_getWitnessTable();
  v47 = MEMORY[0x1E697F568];
  v72 = MEMORY[0x1E697F568];
  OUTLINED_FUNCTION_14_55();
  v48 = swift_getWitnessTable();
  v69 = v40;
  v70 = v47;
  v49 = swift_getWitnessTable();
  v67 = v48;
  v68 = v49;
  OUTLINED_FUNCTION_2_25();
  v50 = v59;
  swift_getWitnessTable();
  v51 = v58;
  v52 = v61;
  OUTLINED_FUNCTION_59_1();
  v53();
  (*(v51 + 8))(v52, v50);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39BBC94()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = *(v2 + 16);
  v7 = MEMORY[0x1E6981840];
  v8 = OUTLINED_FUNCTION_50_0(255, MEMORY[0x1E6981840], v6, MEMORY[0x1E6981840]);
  OUTLINED_FUNCTION_51_18(v8);
  OUTLINED_FUNCTION_20_49();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E4203A44();
  v9 = OUTLINED_FUNCTION_13_10();
  v11 = OUTLINED_FUNCTION_50_0(v9, v7, v10, v7);
  OUTLINED_FUNCTION_51_18(v11);
  swift_getWitnessTable();
  v12 = sub_1E42039C4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v23 - v17;
  v19 = *(v3 + 24);
  v23[2] = v6;
  v23[3] = v19;
  v24 = v0;
  sub_1E4201B84();
  sub_1E42039B4();
  OUTLINED_FUNCTION_3_2();
  swift_getWitnessTable();
  v20 = *(v14 + 16);
  v21 = OUTLINED_FUNCTION_48_9();
  v20(v21);
  v22 = *(v14 + 8);
  v22(v1, v12);
  (v20)(v5, v18, v12);
  v22(v18, v12);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39BBE6C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = MEMORY[0x1E6981840];
  v3 = OUTLINED_FUNCTION_50_0(255, MEMORY[0x1E6981840], v2, MEMORY[0x1E6981840]);
  OUTLINED_FUNCTION_51_18(v3);
  OUTLINED_FUNCTION_20_49();
  swift_getWitnessTable();
  v4 = sub_1E4203A44();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_7();
  sub_1E4201D44();
  sub_1E4203A34();
  swift_getWitnessTable();
  v12 = *(v6 + 16);
  v12(v0, v10, v4);
  v13 = *(v6 + 8);
  v14 = OUTLINED_FUNCTION_74();
  v13(v14);
  v20 = 0;
  v21 = 0;
  v22[0] = &v20;
  v15 = OUTLINED_FUNCTION_75();
  (v12)(v15);
  v17[2] = v1;
  v18 = 0;
  v19 = 0;
  v22[1] = v10;
  v22[2] = &v18;
  v17[0] = v1;
  v17[1] = v4;
  sub_1E3910324(v22, 3, v17);
  (v13)(v0, v4);
  v16 = OUTLINED_FUNCTION_74();
  v13(v16);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39BC07C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_19_7();
  v11 = *(v5 + 16);
  v11(v2);
  v17 = 0;
  v18 = 0;
  v19[0] = &v17;
  (v11)(v9, v2, a2);
  v15 = 0;
  v16 = 0;
  v19[1] = v9;
  v19[2] = &v15;
  v14[0] = MEMORY[0x1E6981840];
  v14[1] = a2;
  v14[2] = MEMORY[0x1E6981840];
  sub_1E3910324(v19, 3, v14);
  v12 = *(v5 + 8);
  v12(v2, a2);
  return v12(v9, a2);
}

uint64_t sub_1E39BC210()
{
  result = sub_1E4205CB4();
  qword_1EE28B848 = result;
  return result;
}

unint64_t sub_1E39BC24C()
{
  result = qword_1EE289B28;
  if (!qword_1EE289B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF40, &qword_1E42AFCD8);
    sub_1E39BC2D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289B28);
  }

  return result;
}

unint64_t sub_1E39BC2D8()
{
  result = qword_1EE288F30;
  if (!qword_1EE288F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF58, &qword_1E42AFCF0);
    sub_1E39BC364();
    sub_1E39BC96C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F30);
  }

  return result;
}

unint64_t sub_1E39BC364()
{
  result = qword_1EE289A08;
  if (!qword_1EE289A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF60, &qword_1E42AFCF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF68, &qword_1E42AFD00);
    sub_1E39BC45C();
    swift_getOpaqueTypeConformance2();
    sub_1E39BCC78(&qword_1EE288768, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A08);
  }

  return result;
}

unint64_t sub_1E39BC45C()
{
  result = qword_1EE288F10;
  if (!qword_1EE288F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF68, &qword_1E42AFD00);
    sub_1E39BC4E8();
    sub_1E39BC5A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F10);
  }

  return result;
}

unint64_t sub_1E39BC4E8()
{
  result = qword_1EE289820;
  if (!qword_1EE289820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF70, &qword_1E42AFD08);
    sub_1E374AD40(&qword_1EE288880, &qword_1ECF2A218, &qword_1E42AFD10, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289820);
  }

  return result;
}

unint64_t sub_1E39BC5A0()
{
  result = qword_1EE288BC8;
  if (!qword_1EE288BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF78, &qword_1E42AFD18);
    sub_1E39BC62C();
    sub_1E39BC828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288BC8);
  }

  return result;
}

unint64_t sub_1E39BC62C()
{
  result = qword_1EE288F00;
  if (!qword_1EE288F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF80, &qword_1E42AFD20);
    sub_1E39BC6B8();
    sub_1E39BC770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F00);
  }

  return result;
}

unint64_t sub_1E39BC6B8()
{
  result = qword_1EE289808;
  if (!qword_1EE289808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF88, &qword_1E42AFD28);
    sub_1E374AD40(&qword_1EE288840, &qword_1ECF2FF08, &qword_1E42AFAD0, MEMORY[0x1E6980608]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289808);
  }

  return result;
}

unint64_t sub_1E39BC770()
{
  result = qword_1EE289810;
  if (!qword_1EE289810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF90, &qword_1E42AFD30);
    sub_1E374AD40(&qword_1EE288848, &qword_1ECF2FF00, &qword_1E42AFAC8, MEMORY[0x1E6980600]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289810);
  }

  return result;
}

unint64_t sub_1E39BC828()
{
  result = qword_1EE288F08;
  if (!qword_1EE288F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FF98, &qword_1E42AFD38);
    sub_1E39BC8B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F08);
  }

  return result;
}

unint64_t sub_1E39BC8B4()
{
  result = qword_1EE289818;
  if (!qword_1EE289818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FFA0, &qword_1E42AFD40);
    sub_1E374AD40(&qword_1EE288870, &qword_1ECF2FEF8, &qword_1E42AFAC0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289818);
  }

  return result;
}

unint64_t sub_1E39BC96C()
{
  result = qword_1EE289478;
  if (!qword_1EE289478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FFA8, &qword_1E42AFD48);
    sub_1E39BCA24();
    sub_1E374AD40(&qword_1EE289210, &unk_1ECF2FF30, &unk_1E42AFC48, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289478);
  }

  return result;
}

unint64_t sub_1E39BCA24()
{
  result = qword_1EE289568;
  if (!qword_1EE289568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2FFB0, &unk_1E42AFD50);
    sub_1E37AE314();
    sub_1E39BCC78(&qword_1EE288768, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289568);
  }

  return result;
}

double sub_1E39BCAE0(uint64_t a1, const void *a2)
{
  memcpy(v5, a2, 0x5BuLL);
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v2, v3, &unk_1E42BD340);
  OUTLINED_FUNCTION_38_20();
  sub_1E4200BC4();
  sub_1E41A4554(v5);

  return result;
}

unint64_t sub_1E39BCB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE274490;
  if (!qword_1EE274490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE274490);
  }

  return result;
}

double sub_1E39BCBD4(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v2, v3, &unk_1E42BD340);
  OUTLINED_FUNCTION_34();
  sub_1E4200BC4();
  sub_1E41A655C();

  return result;
}

uint64_t sub_1E39BCC78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E39BCCC0()
{
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v0, v1, &unk_1E42BD340);
  OUTLINED_FUNCTION_38_20();
  sub_1E4200BC4();
  sub_1E41A655C();

  return result;
}

id *sub_1E39BCD5C(id *result, double a2, __n128 a3)
{
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = *result;
  if (*(v3 + 24) != 1)
  {
    v8 = *(v3 + 16);
    if ((*(v3 + 40) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_6:
    if (v6)
    {
      result = [v6 size];
    }

    else
    {
      a3.n128_u64[0] = 0;
    }

    goto LABEL_11;
  }

  if (!v6)
  {
    v8 = 0.0;
    a3.n128_u64[0] = 0;
    if (*(v3 + 40))
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  result = [*result size];
  v8 = v7;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_9:
  a3.n128_u64[0] = v4;
LABEL_11:
  v9 = *(v3 + 184);
  if (v9)
  {
    return v9(v6, v8, a3);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{
  sub_1E3264CE0(*(v0 + 16), *(v0 + 24));

  if (*(v0 + 152))
  {
  }

  OUTLINED_FUNCTION_47_20();

  return swift_deallocObject();
}

double sub_1E39BCE70()
{
  type metadata accessor for ImageViewInteractor(0);
  OUTLINED_FUNCTION_0_97();
  sub_1E39BCC78(v0, v1, &unk_1E42BD340);
  OUTLINED_FUNCTION_38_20();
  sub_1E4200BC4();
  sub_1E41A447C();

  return result;
}

uint64_t sub_1E39BCEF8(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {

    v3 = vars8;
  }
}

double sub_1E39BCF34(uint64_t a1, uint64_t a2, char a3)
{

  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E39BCF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }
}

double sub_1E39BCFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E39BD054(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for ImageInfo(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E39BD0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE286A78;
  if (!qword_1EE286A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE286A78);
  }

  return result;
}

uint64_t sub_1E39BD118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_1E328438C(*(a3 + 56) + 32 * v4, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v7 = OUTLINED_FUNCTION_8_17(&v17, v6);
  return OUTLINED_FUNCTION_31_32(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);
}

uint64_t sub_1E39BD1A0(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return sub_1E39C3974(v5, a2, v3, v4);
}

BOOL sub_1E39BD1F0(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10, &qword_1E42B9000);
  sub_1E32752B0(&qword_1EE23B610, &qword_1ECF2A770, &qword_1E42992B0, MEMORY[0x1E69E5E60]);
  v3 = sub_1E4149048(v2);

  return (v3 & 1) == 0;
}

uint64_t sub_1E39BD2D0()
{
  if (!*(v0 + 40))
  {
    sub_1E384EE08(*(v0 + 98));
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E39BD31C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1E39BD364(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 48, a2);

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E39BD3A0()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_14_0(v1 + 48, v3);
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
}

uint64_t sub_1E39BD42C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 64, a2);

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E39BD468()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_14_0(v1 + 64, v3);
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
}

uint64_t sub_1E39BD52C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 80, a2);

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E39BD568()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_14_0(v1 + 80, v3);
  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
}

uint64_t sub_1E39BD620(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 96, a2);
  *(v2 + 96) = a1;
  return result;
}

uint64_t sub_1E39BD6A0()
{
  OUTLINED_FUNCTION_8();
  v15 = (*(v1 + 368))();
  v16 = v2;
  MEMORY[0x1E69109E0](23328, 0xE200000000000000);
  if (!v0[3])
  {
    sub_1E41E1364(v0);
    OUTLINED_FUNCTION_9_9();
  }

  v3 = OUTLINED_FUNCTION_34();
  MEMORY[0x1E69109E0](v3);

  v6 = v15;
  v5 = v16;
  v7 = (*(*v0 + 264))(v4);
  v9 = v7;
  v10 = v8;
  if (v8)
  {
    sub_1E37614CC(v7, v8, v7);
    sub_1E38D2484(sub_1E39BD838, MEMORY[0x1E69E6158], &v15);

    v9 = v15;
    v10 = v16;
  }

  v11 = sub_1E414A784(v6, v5, v9, v10);
  v13 = v12;

  v15 = v11;
  v16 = v13;

  MEMORY[0x1E69109E0](93, 0xE100000000000000);

  return v15;
}

uint64_t sub_1E39BD838@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = MEMORY[0x1E69109E0](*a1, a1[1]);
  *a2 = 0x3A677562656420;
  a2[1] = 0xE700000000000000;
  return result;
}

uint64_t ViewModel.description.getter()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 672))();
  v1 = sub_1E4205C74();

  return v1;
}

uint64_t sub_1E39BD938()
{
  result = swift_beginAccess();
  if (*(v0 + 136))
  {
    sub_1E327F454(v0 + 112, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    v2 = OUTLINED_FUNCTION_3_86();
    v3(v2);
    sub_1E325F748(&v4, &unk_1ECF296E0, &unk_1E4298030);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  return result;
}

uint64_t sub_1E39BDA18(uint64_t a1)
{
  OUTLINED_FUNCTION_11_3(v1 + 112, v4);
  sub_1E39C3A70(a1, v1 + 112);
  swift_endAccess();
  sub_1E39BD938();
  return sub_1E325F748(a1, &qword_1ECF2FFF0, &unk_1E42AFDA0);
}

uint64_t (*sub_1E39BDA7C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_66(v1 + 112);
  return sub_1E39BDAC4;
}

uint64_t sub_1E39BDAC4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E39BD938();
  }

  return result;
}

double sub_1E39BDB00(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 152, a2);

  return result;
}

uint64_t sub_1E39BDB2C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 152, a2);
  *(v2 + 152) = a1;
}

uint64_t ViewModel.children.getter()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 416))(v15);
  if (!v16)
  {
    sub_1E325F748(v15, &qword_1ECF2FFF0, &unk_1E42AFDA0);
LABEL_5:
    OUTLINED_FUNCTION_111();
    (*(v11 + 720))();
    OUTLINED_FUNCTION_26_0();
    v6 = (*(v12 + 96))();

    return v6;
  }

  __swift_project_boxed_opaque_existential_1(v15, v16);
  OUTLINED_FUNCTION_5_82();
  MEMORY[0x1EEE9AC00](v2);
  v4 = OUTLINED_FUNCTION_1_106(v3, v14);
  v5(v4);
  sub_1E325F748(v15, &qword_1ECF2FFF0, &unk_1E42AFDA0);
  v6 = v0;
  v7 = OUTLINED_FUNCTION_34();
  v8(v7);
  v9 = OUTLINED_FUNCTION_19_51();
  v10(v9);
  if (!v0)
  {
    goto LABEL_5;
  }

  return v6;
}

uint64_t ViewModel.children.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  (*(v2 + 720))();
  OUTLINED_FUNCTION_30();
  (*(v3 + 104))(a1);

  OUTLINED_FUNCTION_9_2();
  (*(v4 + 416))(v10);
  if (!v10[3])
  {
    return sub_1E325F748(v10, &qword_1ECF2FFF0, &unk_1E42AFDA0);
  }

  sub_1E327F454(v10, v9);
  sub_1E325F748(v10, &qword_1ECF2FFF0, &unk_1E42AFDA0);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = OUTLINED_FUNCTION_3_86();
  v6(v5);
  sub_1E325F748(&v8, &unk_1ECF296E0, &unk_1E4298030);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t (*ViewModel.children.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = ViewModel.children.getter();
  return sub_1E39BDEB0;
}

uint64_t sub_1E39BDEC8()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 416))(v15);
  if (!v16)
  {
    sub_1E325F748(v15, &qword_1ECF2FFF0, &unk_1E42AFDA0);
LABEL_5:
    OUTLINED_FUNCTION_111();
    (*(v11 + 720))();
    OUTLINED_FUNCTION_26_0();
    v6 = (*(v12 + 120))();

    return v6;
  }

  __swift_project_boxed_opaque_existential_1(v15, v16);
  OUTLINED_FUNCTION_5_82();
  MEMORY[0x1EEE9AC00](v2);
  v4 = OUTLINED_FUNCTION_1_106(v3, v14);
  v5(v4);
  sub_1E325F748(v15, &qword_1ECF2FFF0, &unk_1E42AFDA0);
  v6 = v0;
  v7 = OUTLINED_FUNCTION_34();
  v8(v7);
  v9 = OUTLINED_FUNCTION_19_51();
  v10(v9);
  if (!v0)
  {
    goto LABEL_5;
  }

  return v6;
}

uint64_t sub_1E39BE07C(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  (*(v2 + 720))();
  OUTLINED_FUNCTION_30();
  (*(v3 + 128))(a1);

  OUTLINED_FUNCTION_9_2();
  (*(v4 + 416))(v10);
  if (!v10[3])
  {
    return sub_1E325F748(v10, &qword_1ECF2FFF0, &unk_1E42AFDA0);
  }

  sub_1E327F454(v10, v9);
  sub_1E325F748(v10, &qword_1ECF2FFF0, &unk_1E42AFDA0);
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v5 = OUTLINED_FUNCTION_3_86();
  v6(v5);
  sub_1E325F748(&v8, &unk_1ECF296E0, &unk_1E4298030);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t (*sub_1E39BE1C8(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1E39BDEC8();
  return sub_1E39BE210;
}

uint64_t sub_1E39BE228(void *a1, char a2, void (*a3)(__n128))
{
  if ((a2 & 1) == 0)
  {
    return (a3)(*a1);
  }

  (a3)(v4);
}

uint64_t sub_1E39BE2E8(uint64_t a1)
{
  OUTLINED_FUNCTION_11_3(v1 + 160, v4);
  sub_1E37EB5D0(a1, v1 + 160);
  return swift_endAccess();
}

uint64_t sub_1E39BE330()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 672))();
  v20[3] = &type metadata for ViewModelKeys;
  v20[4] = &off_1F5D7BCA8;
  v9 = OUTLINED_FUNCTION_23_36(v1, v2, v3, v4, v5, v6, v7, v8, v19, 11);
  OUTLINED_FUNCTION_52_17(v9);

  if (v22)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_41_25(&v19, v11, v12, v10, v13, v14, v15, v16, v19, v20[0]))
    {
      v17 = v19;
    }

    else
    {
      v17 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v20);
    sub_1E325F748(v21, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  return v17;
}

id sub_1E39BE41C(__n128 a1)
{
  result = sub_1E39BE4D0();
  if (result)
  {
    sub_1E3744600(result);

    OUTLINED_FUNCTION_8();
    v3 = (*(v2 + 648))();
    if (v3)
    {
      OUTLINED_FUNCTION_15_0(v3 + 48, v4);
      swift_unknownObjectWeakLoadStrong();
      OUTLINED_FUNCTION_38();
    }

    v5 = objc_allocWithZone(VUIRouterDataSource);
    v6 = OUTLINED_FUNCTION_32_0();
    return sub_1E37FB770(v6, v7);
  }

  return result;
}

uint64_t sub_1E39BE4D0()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 416))(v14);
  if (v15)
  {
    __swift_project_boxed_opaque_existential_1(v14, v15);
    OUTLINED_FUNCTION_5_82();
    MEMORY[0x1EEE9AC00](v2);
    v4 = OUTLINED_FUNCTION_1_106(v3, v13[0]);
    v5(v4);
    sub_1E325F748(v14, &qword_1ECF2FFF0, &unk_1E42AFDA0);
    v6 = v0;
    v7 = OUTLINED_FUNCTION_34();
    v8(v7);
    v9 = OUTLINED_FUNCTION_19_51();
    v10(v9);
    if (v0)
    {
      return v6;
    }
  }

  else
  {
    sub_1E325F748(v14, &qword_1ECF2FFF0, &unk_1E42AFDA0);
  }

  OUTLINED_FUNCTION_111();
  (*(v11 + 672))();
  v15 = &type metadata for ViewModelKeys;
  v16 = &off_1F5D7BCA8;
  LOBYTE(v14[0]) = 15;
  OUTLINED_FUNCTION_52_17(v14);

  if (v13[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v17 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v14);

    return v17;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    sub_1E325F748(v13, &unk_1ECF296E0, &unk_1E4298030);

    return 0;
  }
}

double sub_1E39BE70C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 192, a2);

  return result;
}

uint64_t sub_1E39BE738(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 192, a2);
  *(v2 + 192) = a1;
}

double sub_1E39BE7EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 200, a2);
  *(v2 + 200) = a1;

  return result;
}

double sub_1E39BE874(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 208, a2);

  return result;
}

uint64_t sub_1E39BE8A0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 208, a2);
  *(v2 + 208) = a1;
}

double sub_1E39BE954(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 216, a2);
  swift_weakAssign();

  return result;
}

void (*sub_1E39BE998(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  OUTLINED_FUNCTION_11_3(v1 + 216, v3);
  v3[3] = swift_weakLoadStrong();
  return sub_1E39BEA0C;
}

void sub_1E39BEA0C(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1E39BEA8C()
{
  if (!swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_111();
    if ((*(v0 + 624))())
    {
      OUTLINED_FUNCTION_26_0();
      (*(v1 + 648))();
      OUTLINED_FUNCTION_38();
    }

    swift_weakAssign();
  }

  return swift_weakLoadStrong();
}

double sub_1E39BEB58(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

uint64_t (*sub_1E39BEB98(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1E39BEA8C();
  return sub_1E39BEBE0;
}

double sub_1E39BEBE0(void *a1)
{
  swift_weakAssign();

  return result;
}

double sub_1E39BEC20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 224, a2);

  return result;
}

uint64_t sub_1E39BEC4C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 224, a2);
  *(v2 + 224) = a1;
}

double sub_1E39BED00(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 240, a2);
  *(v2 + 240) = a1;

  return result;
}

uint64_t sub_1E39BED80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  OUTLINED_FUNCTION_29_32();
  swift_allocObject();
  return sub_1E39BEDCC(v5, a2, a3);
}

uint64_t sub_1E39BEDCC(__int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 48) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 1;
  *(v4 + 64) = 0u;
  *(v4 + 152) = 0u;
  v255 = v4 + 152;
  *(v4 + 200) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 168) = 0u;
  *(v4 + 184) = 0u;
  swift_weakInit();
  swift_weakInit();
  *(v4 + 98) = a1;
  *(v4 + 224) = a2;
  OUTLINED_FUNCTION_3_0(v4 + 216, &v274);
  v258 = a3;
  swift_weakAssign();
  type metadata accessor for ViewModel.ProtectedMembers();
  OUTLINED_FUNCTION_2_4();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v4 + 240) = v8;
  *(&v285 + 1) = &type metadata for ViewModelKeys;
  *&v286 = &off_1F5D7BCA8;
  LOBYTE(v284) = 7;

  v9 = sub_1E3F9F164(&v284, a2, MEMORY[0x1E69E7CA0] + 8);
  if (*(&v282 + 1))
  {
    v16 = OUTLINED_FUNCTION_49_20(v9, v10, v11, MEMORY[0x1E69E6158], v12, v13, v14, v15, v247, v249, v251, v253, v255, a3, v260, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281);
    if (v16)
    {
      v17 = v287;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = *(&v287 + 1);
    }

    else
    {
      v18 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(&v284);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v284);
    sub_1E325F748(&v281, &unk_1ECF296E0, &unk_1E4298030);
    v17 = 0;
    v18 = 0;
  }

  *(v4 + 16) = v17;
  *(v4 + 24) = v18;
  LOBYTE(v281) = 11;
  OUTLINED_FUNCTION_111();
  v20 = (*(v19 + 776))(&v284, &v281, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (*(&v285 + 1))
  {
    OUTLINED_FUNCTION_25_39(v20, v21, v22, MEMORY[0x1E69E6158], v23, v24, v25, v26, v247, v249, v251, v253, v255, v258, v260, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281);
    v27 = swift_dynamicCast();
    if (v27)
    {
      v28 = v281;
    }

    else
    {
      v28 = 0;
    }

    if (v27)
    {
      v29 = *(&v281 + 1);
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    sub_1E325F748(&v284, &unk_1ECF296E0, &unk_1E4298030);
    v28 = 0;
    v29 = 0;
  }

  OUTLINED_FUNCTION_3_0(v4 + 48, &v271);
  *(v4 + 48) = v28;
  *(v4 + 56) = v29;

  OUTLINED_FUNCTION_9_2();
  v31 = (*(v30 + 816))();
  LOWORD(v284) = a1;
  LOWORD(v281) = 0;
  sub_1E3741534(v31, v32, v33);
  if ((sub_1E4205E84() & 1) == 0)
  {
    *(&v285 + 1) = &type metadata for ViewModelKeys;
    *&v286 = &off_1F5D7BCA8;
    v34 = OUTLINED_FUNCTION_7_88(8);
    sub_1E3F9F164(v34, a2, MEMORY[0x1E69E7CA0] + 8);
    if (*(&v282 + 1))
    {
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      OUTLINED_FUNCTION_49_20(v35, v36, v37, v35, v38, v39, v40, v41, v247, v249, v251, v253, v255, v258, v260, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281);
      __swift_destroy_boxed_opaque_existential_1(&v284);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v284);
      sub_1E325F748(&v281, &unk_1ECF296E0, &unk_1E4298030);
    }

    v42 = OUTLINED_FUNCTION_32_0();
    v44 = sub_1E3F6AF24(v42, v43);

    OUTLINED_FUNCTION_3_0(v4 + 200, &v268);
    *(v4 + 200) = v44;
  }

  *(&v285 + 1) = &type metadata for ViewModelKeys;
  *&v286 = &off_1F5D7BCA8;
  v45 = OUTLINED_FUNCTION_7_88(9);
  v46 = MEMORY[0x1E69E7CA0];
  v47 = sub_1E3F9F164(v45, a2, MEMORY[0x1E69E7CA0] + 8);
  if (*(&v282 + 1))
  {
    if (OUTLINED_FUNCTION_16_52(v47, v48, v49, MEMORY[0x1E69E6158], v50, v51, v52, v53, v247, v249, v251, v253, v255, v258, v260, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281))
    {
      v55 = *(&v287 + 1);
      v54 = v287;
      __swift_destroy_boxed_opaque_existential_1(&v284);
      OUTLINED_FUNCTION_3_0(v4 + 80, &v262);
      *(v4 + 80) = __PAIR128__(v55, v54);
      v46 = MEMORY[0x1E69E7CA0];
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v284);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v284);
    sub_1E325F748(&v281, &unk_1ECF296E0, &unk_1E4298030);
  }

  *(&v285 + 1) = &type metadata for ViewModelKeys;
  *&v286 = &off_1F5D7BCA8;
  v56 = OUTLINED_FUNCTION_7_88(10);
  sub_1E3F9F164(v56, a2, v46 + 8);

  if (!*(&v282 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v284);
    sub_1E325F748(&v281, &unk_1ECF296E0, &unk_1E4298030);
LABEL_33:
    v64 = 1;
    goto LABEL_34;
  }

  if ((OUTLINED_FUNCTION_16_52(v57, v58, v59, MEMORY[0x1E69E6370], v60, v61, v62, v63, v247, v249, v251, v253, v255, v258, v260, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v284);
    goto LABEL_33;
  }

  v64 = v287;
  __swift_destroy_boxed_opaque_existential_1(&v284);
LABEL_34:
  v65 = OUTLINED_FUNCTION_3_0(v4 + 96, &v265);
  *(v4 + 96) = v64;
  v66 = (*v4 + 672);
  v67 = *v66;
  v68 = *((*v66)(v65) + 16);

  v70 = MEMORY[0x1E69E7CC0];
  if (!v68)
  {
    goto LABEL_99;
  }

  v67(v69);
  *(&v285 + 1) = &type metadata for ViewModelKeys;
  *&v286 = &off_1F5D7BCA8;
  LOBYTE(v284) = 13;
  OUTLINED_FUNCTION_33_30(&v284);

  __swift_destroy_boxed_opaque_existential_1(&v284);
  sub_1E379539C(&v277, &v284, &unk_1ECF296E0, &unk_1E4298030);
  if (!*(&v285 + 1))
  {
    goto LABEL_65;
  }

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  OUTLINED_FUNCTION_25_39(v71, v72, v73, v74, v75, v76, v77, v78, v247, v249, v251, v253, v255, v258, v260, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_66;
  }

  v79 = sub_1E379539C(&v277, &v284, &unk_1ECF296E0, &unk_1E4298030);
  if (!*(&v285 + 1))
  {
LABEL_65:
    sub_1E325F748(&v284, &unk_1ECF296E0, &unk_1E4298030);
LABEL_66:
    sub_1E379539C(&v277, &v284, &unk_1ECF296E0, &unk_1E4298030);
    if (*(&v285 + 1))
    {
      v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
      v130 = OUTLINED_FUNCTION_25_39(v123, v124, v125, v123, v126, v127, v128, v129, v247, v249, v251, v66, v255, v258, v260, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281);
      v134 = OUTLINED_FUNCTION_32_13(v130, v131, v132, v133);
      if (v134)
      {
        v249 = v67;
        v135 = v70;
        v136 = 0;
        v137 = v281;
        v289[0] = v135;
        v138 = *(v281 + 16);
        v139 = v135;
        while (1)
        {
          if (v138 == v136)
          {

            OUTLINED_FUNCTION_111();
            v157 = v139;
            v158 = (*(v156 + 720))();
            *&v284 = v157;
            v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
            OUTLINED_FUNCTION_46();
            sub_1E32752B0(v160, v161, &qword_1E42996A0, v162);
            sub_1E38D2480(v159, &v281);

            (*(*v158 + 104))(v281);

            v70 = MEMORY[0x1E69E7CC0];
            v249(v163);
            goto LABEL_93;
          }

          if (v136 >= *(v137 + 16))
          {
            goto LABEL_156;
          }

          sub_1E39C36BC(v140, &v281);
          if (*(&v281 + 1))
          {
            v284 = v281;
            sub_1E329504C(&v282, &v285);
            v141 = v284;
            sub_1E329504C(&v285, &v287);
            if (sub_1E39C3648(&v287))
            {

              if (sub_1E38506C8() != 263)
              {
                v143 = sub_1E3A7CD30(v141, *(&v141 + 1), &v287, v4);

LABEL_81:
                __swift_destroy_boxed_opaque_existential_1(&v287);
                goto LABEL_82;
              }

              v142 = sub_1E41240F4();
              if (v142 != 31)
              {
                v143 = sub_1E3A7C9B4(v142, &v287, v4);
                goto LABEL_81;
              }

              __swift_destroy_boxed_opaque_existential_1(&v287);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(&v287);
            }
          }

          else
          {
            sub_1E325F748(&v281, &qword_1ECF30008, &qword_1E42B0018);
          }

          v143 = 0;
LABEL_82:

          ++v136;
          if (v143)
          {
            MEMORY[0x1E6910BF0](v144);
            if (*((v289[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v289[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();
            v139 = v289[0];
          }
        }
      }
    }

    else
    {
      v134 = sub_1E325F748(&v284, &unk_1ECF296E0, &unk_1E4298030);
    }

    v67(v134);
    *(&v285 + 1) = &type metadata for ViewModelKeys;
    *&v286 = &off_1F5D7BCA8;
    LOBYTE(v284) = 14;
    OUTLINED_FUNCTION_33_30(&v284);

    if (v288)
    {
      sub_1E329504C(&v287, &v281);
      v145 = __swift_destroy_boxed_opaque_existential_1(&v284);
      v153 = OUTLINED_FUNCTION_25_39(v145, v146, v147, v148, v149, v150, v151, v152, v247, v249, v251, v253, v255, v258, v260, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281);
      sub_1E329504C(v153, v154);
      OUTLINED_FUNCTION_11_3(v4 + 160, &v287);
      sub_1E37EB5D0(&v284, v4 + 160);
      v155 = swift_endAccess();
    }

    else
    {
      sub_1E325F748(&v287, &unk_1ECF296E0, &unk_1E4298030);
      v155 = __swift_destroy_boxed_opaque_existential_1(&v284);
    }

    goto LABEL_92;
  }

  OUTLINED_FUNCTION_25_39(v79, v80, v81, v82, v83, v84, v85, v86, v247, v249, v251, v253, v255, v258, v260, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_66;
  }

  v253 = v66;
  v87 = 0;
  v88 = 0;
  v89 = v281 + 64;
  v260 = v281;
  OUTLINED_FUNCTION_4_4();
  v92 = v91 & v90;
  v94 = (v93 + 63) >> 6;
  v249 = v67;
  while (2)
  {
    if (v92)
    {
      v95 = v88;
      goto LABEL_46;
    }

    do
    {
      v95 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      if (v95 >= v94)
      {
        v92 = 0;
        v282 = 0u;
        v283 = 0u;
        v281 = 0u;
        goto LABEL_47;
      }

      v92 = *(v89 + 8 * v95);
      ++v88;
    }

    while (!v92);
    v88 = v95;
LABEL_46:
    v96 = __clz(__rbit64(v92));
    v92 &= v92 - 1;
    v97 = v96 | (v95 << 6);
    v98 = (*(v260 + 48) + 16 * v97);
    v100 = *v98;
    v99 = v98[1];
    sub_1E328438C(*(v260 + 56) + 32 * v97, &v287);
    *&v281 = v100;
    *(&v281 + 1) = v99;
    sub_1E329504C(&v287, &v282);

LABEL_47:
    v284 = v281;
    v285 = v282;
    v286 = v283;
    v101 = *(&v281 + 1);
    if (*(&v281 + 1))
    {
      v102 = v284;
      sub_1E329504C(&v285, &v281);
      if (!sub_1E39C3648(&v281) || (, v103 = sub_1E38506C8(), v103 == 263))
      {
        __swift_destroy_boxed_opaque_existential_1(&v281);

        continue;
      }

      v104 = v103;
      v105 = sub_1E3A7CD30(v102, v101, &v281, v4);

      if (!v105)
      {
        __swift_destroy_boxed_opaque_existential_1(&v281);
        continue;
      }

      HIDWORD(v251) = v104;
      if (!v87)
      {
        v106 = type metadata accessor for ViewModel();
        sub_1E37414E0(v106, v107, v108);
        v87 = sub_1E4205CB4();
      }

      v247 = v105;

      swift_isUniquelyReferenced_nonNull_native();
      *&v287 = v87;
      v111 = sub_1E3740AE8(v104, v109, v110);
      if (!__OFADD__(v87[2], (v112 & 1) == 0))
      {
        v113 = v111;
        v114 = v112;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C780, &unk_1E42988B0);
        v115 = sub_1E4207644();
        v87 = v287;
        if (v115)
        {
          v118 = sub_1E3740AE8(v104, v116, v117);
          if ((v114 & 1) == (v119 & 1))
          {
            v113 = v118;
            if ((v114 & 1) == 0)
            {
              goto LABEL_58;
            }

LABEL_63:
            *(v87[7] + 8 * v113) = v247;

            __swift_destroy_boxed_opaque_existential_1(&v281);
LABEL_64:
            v67 = v249;
            continue;
          }

LABEL_161:
          result = sub_1E4207A74();
          __break(1u);
          return result;
        }

        if (v114)
        {
          goto LABEL_63;
        }

LABEL_58:
        v87[(v113 >> 6) + 8] |= 1 << v113;
        *(v87[6] + 2 * v113) = v104;
        *(v87[7] + 8 * v113) = v247;

        __swift_destroy_boxed_opaque_existential_1(&v281);
        v120 = v87[2];
        v121 = __OFADD__(v120, 1);
        v122 = v120 + 1;
        if (!v121)
        {
          v87[2] = v122;
          goto LABEL_64;
        }

LABEL_160:
        __break(1u);
        goto LABEL_161;
      }

LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    break;
  }

  OUTLINED_FUNCTION_111();
  (*(v164 + 720))();
  OUTLINED_FUNCTION_30();
  v166 = *(v165 + 128);

  v166(v167);

  v70 = MEMORY[0x1E69E7CC0];
LABEL_92:
  v67(v155);
LABEL_93:
  *(&v285 + 1) = &type metadata for ViewModelKeys;
  *&v286 = &off_1F5D7BCA8;
  v168 = OUTLINED_FUNCTION_7_88(20);
  OUTLINED_FUNCTION_33_30(v168);

  if (*(&v282 + 1))
  {
    v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_16_52(v169, v170, v171, v169, v172, v173, v174, v175, v247, v249, v251, v253, v255, v258, v260, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281))
    {
      v176 = v287;
      __swift_destroy_boxed_opaque_existential_1(&v284);
      OUTLINED_FUNCTION_111();
      (*(v177 + 560))(v176);
      v178 = &unk_1ECF296E0;
      v179 = &unk_1E4298030;
      v180 = &v277;
      goto LABEL_97;
    }

    sub_1E325F748(&v277, &unk_1ECF296E0, &unk_1E4298030);
    __swift_destroy_boxed_opaque_existential_1(&v284);
  }

  else
  {
    OUTLINED_FUNCTION_82();
    sub_1E325F748(v181, v182, v183);
    __swift_destroy_boxed_opaque_existential_1(&v284);
    OUTLINED_FUNCTION_82();
LABEL_97:
    sub_1E325F748(v180, v178, v179);
  }

LABEL_99:
  OUTLINED_FUNCTION_111();
  v184 += 84;
  v185 = *v184;
  v186 = *((*v184)() + 16);

  if (!v186)
  {
    goto LABEL_153;
  }

  (v185)(v187);
  *(&v285 + 1) = &type metadata for ViewModelKeys;
  *&v286 = &off_1F5D7BCA8;
  v188 = OUTLINED_FUNCTION_7_88(21);
  OUTLINED_FUNCTION_33_30(v188);

  if (!*(&v282 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v284);
    sub_1E325F748(&v281, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_153;
  }

  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if ((OUTLINED_FUNCTION_16_52(v189, v190, v191, v189, v192, v193, v194, v195, v247, v249, v251, v253, v255, v258, v260, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281) & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(&v284);
    goto LABEL_153;
  }

  v196 = v287;
  __swift_destroy_boxed_opaque_existential_1(&v284);
  v197 = 0;
  v198 = v70;
  v277 = v70;
  v199 = *(v196 + 16);
  while (2)
  {
    if (v199 != v197)
    {
      if (v197 >= *(v196 + 16))
      {
        goto LABEL_155;
      }

      sub_1E39C36BC(v200, &v281);
      if (*(&v281 + 1))
      {
        v284 = v281;
        sub_1E329504C(&v282, &v285);
        v201 = v284;
        sub_1E329504C(&v285, &v287);
        if (sub_1E39C3648(&v287))
        {

          if (sub_1E38506C8() == 263)
          {

            __swift_destroy_boxed_opaque_existential_1(&v287);
            goto LABEL_111;
          }

          v202 = sub_1E3A7CD30(v201, *(&v201 + 1), &v287, v4);

          __swift_destroy_boxed_opaque_existential_1(&v287);
LABEL_112:

          ++v197;
          if (v202)
          {
            MEMORY[0x1E6910BF0](v203);
            if (*((v277 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v277 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();
            v198 = v277;
          }

          continue;
        }

        __swift_destroy_boxed_opaque_existential_1(&v287);
      }

      else
      {
        sub_1E325F748(&v281, &qword_1ECF30008, &qword_1E42B0018);
      }

LABEL_111:
      v202 = 0;
      goto LABEL_112;
    }

    break;
  }

  OUTLINED_FUNCTION_3_0(v256, &v277);
  *(v4 + 152) = v198;

  OUTLINED_FUNCTION_9_2();
  v205 = (*(v204 + 440))();
  if (!v205)
  {
    goto LABEL_153;
  }

  v206 = v205;
  v207 = sub_1E32AE9B0(v205);
  v208 = 0;
  v261 = v206 & 0xC000000000000001;
  v209 = v206 & 0xFFFFFFFFFFFFFF8;
  v257 = v206 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v207 != v208)
    {
      if (v261)
      {
        v210 = MEMORY[0x1E6911E60](v208, v206);
      }

      else
      {
        if (v208 >= *(v209 + 16))
        {
          goto LABEL_158;
        }

        v210 = *(v206 + 8 * v208 + 32);
      }

      if (__OFADD__(v208, 1))
      {
        goto LABEL_157;
      }

      OUTLINED_FUNCTION_111();
      v212 = (*(v211 + 624))();
      if (v212)
      {
        OUTLINED_FUNCTION_26_0();
        v215 = v214;
        (*(v213 + 392))();
        OUTLINED_FUNCTION_38();

        if (v215)
        {
          OUTLINED_FUNCTION_8();
          v217 = (*(v216 + 1624))(*(v4 + 98), v4);

          if (v217)
          {
            (*(*v210 + 672))(v212);
            *(&v285 + 1) = &type metadata for ViewModelKeys;
            *&v286 = &off_1F5D7BCA8;
            v218 = OUTLINED_FUNCTION_7_88(12);
            OUTLINED_FUNCTION_33_30(v218);

            if (*(&v282 + 1))
            {
              v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
              if (OUTLINED_FUNCTION_32_13(v289, &v281, v220, v219))
              {
                v221 = v289[0];
                v222 = __swift_destroy_boxed_opaque_existential_1(&v284);
                if (*(v221 + 16))
                {
                  v223 = v221;
                  v224 = (*v210 + 392);
                  v225 = *v224;
                  v226 = (*v224)(v222);
                  if (v226)
                  {
                    OUTLINED_FUNCTION_30();
                    (*(v227 + 1648))(v217);
                  }

                  v228 = v225(v226);
                  if (!v228)
                  {
                    [v217 copyWithZone_];
                    sub_1E4207264();
                    swift_unknownObjectRelease();
                    v229 = type metadata accessor for ViewLayout();
                    OUTLINED_FUNCTION_25_39(v229, v230, v231, v232, v233, v234, v235, v236, v248, v250, v252, v254, v257, v259, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281);
                    if (swift_dynamicCast())
                    {
                      v237 = v281;
                      goto LABEL_142;
                    }

                    v228 = sub_1E3C2F968();
                  }

                  v237 = v228;
LABEL_142:

                  v217 = v237;
                  OUTLINED_FUNCTION_8();
                  v239 = *(v238 + 1616);

                  v239(v223);

                  v209 = v257;
                }

                else
                {
                }
              }

              else
              {
                __swift_destroy_boxed_opaque_existential_1(&v284);
              }
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1(&v284);
              sub_1E325F748(&v281, &unk_1ECF296E0, &unk_1E4298030);
            }

            OUTLINED_FUNCTION_3_0((v210 + 13), &v287);
            v210[13] = v217;
          }
        }
      }

      v240 = (*(*v210 + 392))(v212);
      if (v240)
      {
        v241 = v240;
        OUTLINED_FUNCTION_111();
        v242 += 49;
        v243 = *v242;
        v244 = (*v242)();
        if (!v244 || (v245 = v244, , v241 != v245))
        {
          if (v243())
          {
            sub_1E3C37F10(v241);
          }
        }
      }

      ++v208;
      continue;
    }

    break;
  }

LABEL_153:

  return v4;
}

uint64_t sub_1E39C028C()
{
  OUTLINED_FUNCTION_2_4();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_1E39C02B0()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_29_32();
  swift_allocObject();
  return sub_1E39C0300();
}

uint64_t sub_1E39C0300()
{
  OUTLINED_FUNCTION_48_1();
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 96) = 1;
  *(v0 + 104) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  swift_weakInit();
  swift_weakInit();
  *(v0 + 98) = v3;
  OUTLINED_FUNCTION_3_0(v0 + 216, v7);
  swift_weakAssign();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  OUTLINED_FUNCTION_3_0(v0 + 48, &v6);
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;

  *(v0 + 224) = MEMORY[0x1E69E7CC8];
  type metadata accessor for ViewModel.ProtectedMembers();
  OUTLINED_FUNCTION_2_4();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v0 + 240) = v4;
  (*(*v0 + 816))();

  return v0;
}

uint64_t ViewModel.hash(into:)()
{
  if (!*(v0 + 24))
  {
    return sub_1E4207B64();
  }

  sub_1E4207B64();
  OUTLINED_FUNCTION_34();

  return sub_1E4206014();
}

uint64_t static ViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  OUTLINED_FUNCTION_30();
  return (*(v2 + 768))(v3) & 1;
}

uint64_t sub_1E39C0504(void *a1)
{
  v3 = *(v1 + 24);
  v4 = a1[3];
  v5 = (v3 | v4) == 0;
  if (v3 && v4)
  {
    if (*(v1 + 16) == a1[2] && v3 == v4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1E42079A4();
    }
  }

  OUTLINED_FUNCTION_111();
  v7 += 69;
  v8 = *v7;
  if ((*v7)() || (OUTLINED_FUNCTION_12_6(), (*(v9 + 552))()))
  {

    if ((v8)(v10))
    {
      OUTLINED_FUNCTION_12_6();
      v12 = (*(v11 + 552))();
      if (v12)
      {
        v13 = v12;
        if (v5)
        {
          v14 = sub_1E4205C44();

          sub_1E3744600(v13);

          sub_1E4205C44();
          OUTLINED_FUNCTION_38();

          v5 = [v14 isEqualToDictionary_];

          goto LABEL_18;
        }
      }
    }

    v5 = 0;
  }

LABEL_18:
  OUTLINED_FUNCTION_111();
  v16 = (*(v15 + 648))();
  v17 = (*(*a1 + 648))();
  v18 = v17;
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_23;
    }

LABEL_30:

    goto LABEL_31;
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  if (v16 != v18)
  {
    goto LABEL_31;
  }

LABEL_23:
  OUTLINED_FUNCTION_111();
  v19 += 58;
  v20 = *v19;
  if ((*v19)() || (OUTLINED_FUNCTION_12_6(), (*(v21 + 464))()))
  {

    if (v5)
    {
      v23 = (v20)(v22);
      OUTLINED_FUNCTION_12_6();
      v25 = (*(v24 + 464))();
      v26 = v25;
      if (v23)
      {
        if (v25)
        {
          v27 = OUTLINED_FUNCTION_32_0();
          v29 = sub_1E38BBA04(v27, v28);
LABEL_29:
          v5 = v29;

          return v5 & 1;
        }

        goto LABEL_40;
      }

LABEL_39:
      if (!v26)
      {
        v5 = 1;
        return v5 & 1;
      }

LABEL_40:

      goto LABEL_31;
    }

    goto LABEL_31;
  }

  OUTLINED_FUNCTION_111();
  v31 += 61;
  v32 = *v31;
  if ((*v31)() || (OUTLINED_FUNCTION_12_6(), (*(v33 + 488))()))
  {

    if (v5)
    {
      v35 = (v32)(v34);
      OUTLINED_FUNCTION_12_6();
      v37 = (*(v36 + 488))();
      v26 = v37;
      if (v35)
      {
        if (v37)
        {
          v38 = OUTLINED_FUNCTION_32_0();
          sub_1E39C3764(v38, v39);
          goto LABEL_29;
        }

        goto LABEL_40;
      }

      goto LABEL_39;
    }

LABEL_31:
    v5 = 0;
    return v5 & 1;
  }

  OUTLINED_FUNCTION_111();
  v40 += 64;
  v41 = *v40;
  (*v40)(&v198);
  v42 = v199;
  v43 = sub_1E325F748(&v198, &unk_1ECF296E0, &unk_1E4298030);
  if (v42 || (OUTLINED_FUNCTION_12_6(), (*(v44 + 512))(&v198), v45 = v199, v43 = sub_1E325F748(&v198, &unk_1ECF296E0, &unk_1E4298030), v45))
  {
    (v41)(&v198, v43);
    if (v199)
    {
      v46 = sub_1E329504C(&v198, &v193);
      (v41)(&v198, v46);
      if (v199)
      {
        sub_1E329504C(&v198, &v190);
        if ((v5 & 1) == 0)
        {
          goto LABEL_78;
        }

        v47 = type metadata accessor for ViewModel();
        v55 = OUTLINED_FUNCTION_39_20(v47, v48, v49, v50, v51, v52, v53, v54);
        v62 = OUTLINED_FUNCTION_2_81(v55, v56, v57, MEMORY[0x1E69E6158], v58, v59, v60, v61, v190, *(&v190 + 1), v191, v192);
        if (v62)
        {
          v71 = v196;
          v70 = v197;
          v72 = OUTLINED_FUNCTION_38_21(v62, v63, v64, v65, v66, v67, v68, v69, v190, *(&v190 + 1), v191, v192, v193, *(&v193 + 1), v194, v195, *&v196, v197);
          if (OUTLINED_FUNCTION_2_81(v72, v73, v74, MEMORY[0x1E69E6158], v75, v76, v77, v78, v190, *(&v190 + 1), v191, v192))
          {
            if (*&v71 == *&v196 && v70 == v197)
            {
            }

            else
            {
              v80 = sub_1E42079A4();

              if ((v80 & 1) == 0)
              {
                goto LABEL_78;
              }
            }

            v5 = 1;
LABEL_79:
            __swift_destroy_boxed_opaque_existential_1(&v190);
            __swift_destroy_boxed_opaque_existential_1(&v193);
            return v5 & 1;
          }

          goto LABEL_78;
        }

        v81 = OUTLINED_FUNCTION_39_20(v62, v63, v64, v65, v66, v67, v68, v69);
        v88 = OUTLINED_FUNCTION_2_81(v81, v82, v83, MEMORY[0x1E69E6530], v84, v85, v86, v87, v190, *(&v190 + 1), v191, v192);
        if (v88)
        {
          v96 = v196;
          v97 = OUTLINED_FUNCTION_38_21(v88, v89, v90, v91, v92, v93, v94, v95, v190, *(&v190 + 1), v191, v192, v193, *(&v193 + 1), v194, v195, *&v196, v197);
          v104 = MEMORY[0x1E69E6530];
        }

        else
        {
          v105 = OUTLINED_FUNCTION_39_20(v88, v89, v90, v91, v92, v93, v94, v95);
          v112 = OUTLINED_FUNCTION_2_81(v105, v106, v107, MEMORY[0x1E69E7360], v108, v109, v110, v111, v190, *(&v190 + 1), v191, v192);
          if (!v112)
          {
            v121 = OUTLINED_FUNCTION_39_20(v112, v113, v114, v115, v116, v117, v118, v119);
            v128 = OUTLINED_FUNCTION_2_81(v121, v122, v123, MEMORY[0x1E69E63B0], v124, v125, v126, v127, v190, *(&v190 + 1), v191, v192);
            if (v128)
            {
              v136 = v196;
              v137 = OUTLINED_FUNCTION_38_21(v128, v129, v130, v131, v132, v133, v134, v135, v190, *(&v190 + 1), v191, v192, v193, *(&v193 + 1), v194, v195, *&v196, v197);
              if ((OUTLINED_FUNCTION_2_81(v137, v138, v139, MEMORY[0x1E69E63B0], v140, v141, v142, v143, v190, *(&v190 + 1), v191, v192) & 1) == 0)
              {
                goto LABEL_78;
              }

              v120 = v136 == v196;
            }

            else
            {
              v144 = OUTLINED_FUNCTION_39_20(v128, v129, v130, v131, v132, v133, v134, v135);
              v151 = OUTLINED_FUNCTION_2_81(v144, v145, v146, MEMORY[0x1E69E6448], v147, v148, v149, v150, v190, *(&v190 + 1), v191, v192);
              if (!v151)
              {
                v167 = OUTLINED_FUNCTION_39_20(v151, v152, v153, v154, v155, v156, v157, v158);
                v174 = OUTLINED_FUNCTION_2_81(v167, v168, v169, MEMORY[0x1E69E6370], v170, v171, v172, v173, v190, *(&v190 + 1), v191, v192);
                if ((v174 & 1) == 0)
                {
                  goto LABEL_78;
                }

                v182 = LOBYTE(v196);
                v183 = OUTLINED_FUNCTION_38_21(v174, v175, v176, v177, v178, v179, v180, v181, v190, *(&v190 + 1), v191, v192, v193, *(&v193 + 1), v194, v195, *&v196, v197);
                if ((OUTLINED_FUNCTION_2_81(v183, v184, v185, MEMORY[0x1E69E6370], v186, v187, v188, v189, v190, *(&v190 + 1), v191, v192) & 1) == 0)
                {
                  goto LABEL_78;
                }

                v5 = v182 ^ LOBYTE(v196) ^ 1;
                goto LABEL_79;
              }

              v159 = *&v196;
              v160 = OUTLINED_FUNCTION_38_21(v151, v152, v153, v154, v155, v156, v157, v158, v190, *(&v190 + 1), v191, v192, v193, *(&v193 + 1), v194, v195, *&v196, v197);
              if ((OUTLINED_FUNCTION_2_81(v160, v161, v162, MEMORY[0x1E69E6448], v163, v164, v165, v166, v190, *(&v190 + 1), v191, v192) & 1) == 0)
              {
LABEL_78:
                v5 = 0;
                goto LABEL_79;
              }

              v120 = v159 == *&v196;
            }

LABEL_64:
            v5 = v120;
            goto LABEL_79;
          }

          v96 = v196;
          v97 = OUTLINED_FUNCTION_38_21(v112, v113, v114, v115, v116, v117, v118, v119, v190, *(&v190 + 1), v191, v192, v193, *(&v193 + 1), v194, v195, *&v196, v197);
          v104 = MEMORY[0x1E69E7360];
        }

        if ((OUTLINED_FUNCTION_2_81(v97, v98, v99, v104, v100, v101, v102, v103, v190, *(&v190 + 1), v191, v192) & 1) == 0)
        {
          goto LABEL_78;
        }

        v120 = *&v96 == *&v196;
        goto LABEL_64;
      }

      __swift_destroy_boxed_opaque_existential_1(&v193);
    }

    sub_1E325F748(&v198, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_31;
  }

  return v5 & 1;
}

double sub_1E39C0C20@<D0>(_OWORD *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 536))();
  if (v3)
  {
    v4 = v3;
    v5 = OUTLINED_FUNCTION_37_22();
    v7 = v6(v5);
    sub_1E3277E60(v7, v8, v4, a1);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

uint64_t sub_1E39C0CE4(uint64_t a1, uint64_t a2)
{
  ViewModelKeys.rawValue.getter(11);
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_8();
  v8 = (*(v7 + 672))();
  sub_1E3277E60(v4, v6, v8, &v31);

  if (!v33)
  {
    sub_1E325F748(&v31, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v9 = 0;
    v34 = 0;
    goto LABEL_6;
  }

  v9 = v34;
LABEL_6:
  if (*(a2 + 24) && !v9)
  {
    v34 = sub_1E4205CB4();

    v9 = v34;
  }

  if (v9)
  {
    v10 = OUTLINED_FUNCTION_37_22();
    v12 = v11(v10);
    v14 = v13;
    sub_1E379539C(a2, &v31, &unk_1ECF296E0, &unk_1E4298030);
    if (v33)
    {
      sub_1E329504C(&v31, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v34;
      sub_1E32A87C0(v30, v12, v14, isUniquelyReferenced_nonNull_native);

      v34 = v28;
    }

    else
    {
      sub_1E325F748(&v31, &unk_1ECF296E0, &unk_1E4298030);
      v16 = sub_1E327D33C(v12, v14);
      if (v17)
      {
        v18 = v16;
        swift_isUniquelyReferenced_nonNull_native();
        v29 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
        sub_1E4207644();

        sub_1E329504C((*(v29 + 56) + 32 * v18), v30);
        sub_1E4207664();
        v34 = v29;
      }

      else
      {
        memset(v30, 0, sizeof(v30));
      }

      sub_1E325F748(v30, &unk_1ECF296E0, &unk_1E4298030);
    }
  }

  ViewModelKeys.rawValue.getter(11);
  OUTLINED_FUNCTION_9_9();
  v19 = v34;
  if (v34)
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  }

  else
  {
    v20 = 0;
    *(&v31 + 1) = 0;
    v32 = 0;
  }

  *&v31 = v19;
  v33 = v20;
  OUTLINED_FUNCTION_111();
  v22 = *(v21 + 688);

  v23 = v22(v30);
  OUTLINED_FUNCTION_55_0();
  sub_1E3946774(v24, v25, v26);
  v23(v30, 0);
}

uint64_t sub_1E39C1050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (*(a3 + 24))
  {
    if ((*(*v3 + 552))())
    {
    }

    else
    {
      sub_1E4205CB4();
      OUTLINED_FUNCTION_9_2();
      (*(v8 + 560))();
    }
  }

  v9 = (*(*v3 + 568))(v19);
  if (*v10)
  {
    sub_1E379539C(a3, v18, &unk_1ECF296E0, &unk_1E4298030);

    sub_1E3946774(v18, a1, a2);
  }

  v9(v19, 0);
  ViewModelKeys.rawValue.getter(20);
  OUTLINED_FUNCTION_9_9();
  v11 = (*(*v3 + 552))();
  v12 = v11;
  if (v11)
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  }

  else
  {
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[0] = v12;
  v19[3] = v11;
  v13 = (*(*v4 + 688))(v18);
  OUTLINED_FUNCTION_55_0();
  sub_1E3946774(v14, v15, v16);
  return v13(v18, 0);
}

uint64_t sub_1E39C1294(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [objc_opt_self() isSUIEnabled];
  if (!v8)
  {
    v8 = (*(*v4 + 808))(a1, a2);
  }

  if ((*(*v4 + 648))(v8))
  {
    OUTLINED_FUNCTION_82();
    v12 = sub_1E4018954(v9, v10, v11, 0, a4);

    return v12 & 1;
  }

  else
  {
    type metadata accessor for Document();
    OUTLINED_FUNCTION_82();
    return sub_1E4018A10(v14, v15, v16, 0, a4) & 1;
  }
}

uint64_t sub_1E39C13B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (sub_1E378CB90(a1, 2, a3) & 1) != 0 || (result = sub_1E378CB90(a1, 1, v7), (result))
  {
    v9 = sub_1E3BA4968(a1);
    type metadata accessor for Metrics(0);
    OUTLINED_FUNCTION_38();
    v10 = sub_1E3BA7AA8();
    v11 = sub_1E3BA7F00(v4);
    if ((*(*v4 + 576))())
    {
      OUTLINED_FUNCTION_30();
      (*(v12 + 288))(v9, a2, v10, v11);
    }
  }

  return result;
}

double sub_1E39C14E0()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 672))();
  v29[3] = &type metadata for ViewModelKeys;
  v29[4] = &off_1F5D7BCA8;
  v11 = OUTLINED_FUNCTION_23_36(v3, v4, v5, v6, v7, v8, v9, v10, v28, 12);
  OUTLINED_FUNCTION_33_30(v11);

  if (v31)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_32_13(&v28, v30, v13, v12))
    {
      v14 = v28;
    }

    else
    {
      v14 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
    sub_1E325F748(v30, &unk_1ECF296E0, &unk_1E4298030);
    v14 = 0;
  }

  OUTLINED_FUNCTION_111();
  v15 += 78;
  v16 = *v15;
  if ((*v15)() && (OUTLINED_FUNCTION_26_0(), v19 = v18, (*(v17 + 392))(), OUTLINED_FUNCTION_38(), , v19) && (OUTLINED_FUNCTION_8(), v21 = (*(v20 + 1624))(*(v1 + 98), v1), , v21))
  {
    v29[0] = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10, &qword_1E42B9000);
    sub_1E4148DE0(sub_1E39C3B28);
  }

  else
  {
    v21 = sub_1E3D76A14(v1, v14);

    if (v21)
    {
      v23 = swift_retain_n();
      if ((v16)(v23))
      {
        OUTLINED_FUNCTION_26_0();
        v25 = (*(v24 + 392))();

        if (v25)
        {
          OUTLINED_FUNCTION_8();
          (*(v26 + 1632))(v21, *(v1 + 98));
        }
      }
    }
  }

  OUTLINED_FUNCTION_14_0(v1 + 104, v22);
  *(v1 + 104) = v21;

  return result;
}

uint64_t ViewModel.deinit()
{

  sub_1E325F748(v0 + 112, &qword_1ECF2FFF0, &unk_1E42AFDA0);

  sub_1E325F748(v0 + 160, &unk_1ECF296E0, &unk_1E4298030);

  swift_weakDestroy();

  swift_weakDestroy();

  return v0;
}

uint64_t ViewModel.__deallocating_deinit()
{
  ViewModel.deinit();
  v0 = OUTLINED_FUNCTION_29_32();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t ViewModel.hashValue.getter()
{
  sub_1E4207B44();
  OUTLINED_FUNCTION_8();
  (*(v0 + 760))(v2);
  return sub_1E4207BA4();
}

uint64_t sub_1E39C1988(uint64_t a1)
{
  sub_1E4207B44();
  (*(**v1 + 760))(v3);
  return sub_1E4207BA4();
}

uint64_t sub_1E39C1A3C@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for ViewModel();
  result = sub_1E42074D4();
  *a3 = result;
  return result;
}

uint64_t sub_1E39C1AA0()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 672))();
  v2 = sub_1E39C38B4(34, v1);

  return v2;
}

void sub_1E39C1B08(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 488))();
  if (!v4 || (v6 = sub_1E373E010(a1, v4, v5), , !v6))
  {
    v7 = (*(*v1 + 464))();
    if (v7)
    {
      v8 = v7;
      v9 = sub_1E32AE9B0(v7);
      for (i = 0; ; ++i)
      {
        if (v9 == i)
        {

          return;
        }

        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1E6911E60](i, v8);
        }

        else
        {
          if (i >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_1E3742F1C(v11, v12, v13);
        sub_1E4206254();
        sub_1E4206254();
        if (v18 == v16 && v19 == v17)
        {

LABEL_20:

          return;
        }

        v15 = sub_1E42079A4();

        if (v15)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
    }
  }
}

uint64_t sub_1E39C1CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8();
  v6 = (*(v5 + 464))();
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_30_31(v6);
    MEMORY[0x1EEE9AC00](v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v8, v9, &qword_1E42996A0, v10);
    OUTLINED_FUNCTION_43_21();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFF0, &qword_1E42AFDB0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1E4297BE0;
    v12 = (*(*v3 + 488))();
    if (v12)
    {
      *(v11 + 32) = sub_1E373E010(a1, v12, v13);
    }

    else
    {
      *(v11 + 32) = 0;
    }

    MEMORY[0x1EEE9AC00](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFF8, &qword_1E42AFDB8);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v14, v15, &qword_1E42AFDB8, v16);
    OUTLINED_FUNCTION_43_21();
  }

  v17 = sub_1E42061B4();

  return v17;
}

void sub_1E39C1F18()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 464))();
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
    v24 = MEMORY[0x1E69E7CC0];
    v5 = sub_1E32AE9B0(v2);
    for (i = 0; v5 != i; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E6911E60](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v7 = *(v4 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      if (v0(v7))
      {
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
      }

      else
      {
      }
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    OUTLINED_FUNCTION_46();
    sub_1E32752B0(v9, v10, &qword_1E42996A0, v11);
    sub_1E38D2480(v8, &v23);

    v3 = MEMORY[0x1E69E7CC0];
    if (v23)
    {
      return;
    }
  }

  OUTLINED_FUNCTION_8();
  v13 = (*(v12 + 488))();
  if (v13)
  {
    v24 = v3;
    v14 = v13 + 64;
    OUTLINED_FUNCTION_4_4();
    v17 = v16 & v15;
    v19 = (v18 + 63) >> 6;

    v20 = 0;
    while (1)
    {
      v21 = v20;
      if (!v17)
      {
        break;
      }

LABEL_20:
      v17 &= v17 - 1;

      if (v0(v22))
      {
        MEMORY[0x1E6910BF0]();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
      }

      else
      {
      }
    }

    while (1)
    {
      v20 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v20 >= v19)
      {

        return;
      }

      v17 = *(v14 + 8 * v20);
      ++v21;
      if (v17)
      {
        goto LABEL_20;
      }
    }

LABEL_30:
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1E39C2218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 464))();
  if (v4)
  {
    v5 = OUTLINED_FUNCTION_30_31(v4);
    MEMORY[0x1EEE9AC00](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v6, v7, &qword_1E42996A0, v8);
    OUTLINED_FUNCTION_43_21();
  }

  else
  {
    OUTLINED_FUNCTION_8();
    v10 = (*(v9 + 488))();
    if (!v10)
    {
      return sub_1E4206304();
    }

    v11 = OUTLINED_FUNCTION_30_31(v10);
    MEMORY[0x1EEE9AC00](v11);
    MEMORY[0x1EEE9AC00](v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34240, &unk_1E4297E90);
    sub_1E32752B0(&qword_1ECF30000, &qword_1ECF34240, &unk_1E4297E90, MEMORY[0x1E69E5E50]);
    OUTLINED_FUNCTION_43_21();
  }

  v13 = sub_1E42061B4();

  return v13;
}

uint64_t sub_1E39C2438(unint64_t a1)
{
  sub_1E3841D9C(v1, a1);
  v4 = v3;
  result = 0;
  if ((v6 & 1) == 0)
  {
    v7 = v4 - 1;
    if (v4 >= 1)
    {
      sub_1E34AF4E4(v4 - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E6911E60](v7, a1);
      }

      else
      {
      }

      MEMORY[0x1EEE9AC00](v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28, &qword_1E42A2A60);
      sub_1E4148DE0(sub_1E39C3CC0);

      return 0;
    }
  }

  return result;
}

void sub_1E39C2540()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_8();
  v5 = (*(v4 + 624))();
  v6 = v5;
  v7 = MEMORY[0x1E69E6370];
  while (1)
  {
    v8 = v6;
    v12[10] = v6;
    MEMORY[0x1EEE9AC00](v5);
    v12[6] = v3;
    v12[7] = v1;
    MEMORY[0x1EEE9AC00](v9);
    v12[2] = sub_1E39C3D14;
    v12[3] = v10;

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28, &qword_1E42A2A60);
    sub_1E4148F70(sub_1E39C3D48, v12, v11, v7, &v13);

    if (v13 == 2 || (v13 & 1) != 0)
    {
      break;
    }

    v6 = 0;
    if (v8)
    {
      v6 = (*(*v8 + 624))(v5);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E39C26D0(char a1, char a2)
{
  OUTLINED_FUNCTION_8();
  v7 = (*(v6 + 440))();
  if (!v7)
  {
LABEL_24:
    sub_1E39C3D80(49, v2);
    if (v18)
    {
      OUTLINED_FUNCTION_9_9();
      if (v3 == sub_1E38569FC(a1) && v4 == v19)
      {
      }

      else
      {
        OUTLINED_FUNCTION_34();
        v21 = sub_1E42079A4();

        if ((v21 & 1) == 0)
        {
          return;
        }
      }
    }

    else if (a2)
    {
      return;
    }

    return;
  }

  v8 = v7;
  v22 = a2;
  v9 = sub_1E32AE9B0(v7);
  v10 = 0;
  v4 = v8 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v9 == v10)
    {

      a2 = v22;
      goto LABEL_24;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }
    }

    if (__OFADD__(v10, 1))
    {
      break;
    }

    v27[3] = &unk_1F5D5DAC8;
    v27[4] = &off_1F5D5C998;
    LOBYTE(v27[0]) = 49;
    __swift_project_boxed_opaque_existential_1(v27, &unk_1F5D5DAC8);
    OUTLINED_FUNCTION_36();
    (*(v11 + 776))(v26);
    if (v26[3])
    {
      if (swift_dynamicCast())
      {
        v12 = v24;
        v13 = v25;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1E325F748(v26, &unk_1ECF296E0, &unk_1E4298030);
    }

    v12 = 0;
    v13 = 0;
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1(v27);
    v14 = sub_1E38569FC(a1);
    v3 = v15;
    if (v13)
    {
      if (v12 == v14 && v13 == v15)
      {

LABEL_36:

        return;
      }

      v17 = sub_1E42079A4();

      if (v17)
      {
        goto LABEL_36;
      }
    }

    else
    {
    }

    ++v10;
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_1E39C29A4(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_1E39C3E88(v4, v1, v2, v3);
}

uint64_t sub_1E39C29F0(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_55_0();
  v3();
  if (v8)
  {
    if (OUTLINED_FUNCTION_8_17(&v6, v4))
    {
      a2 = v6;
    }
  }

  else
  {
    sub_1E325F748(v7, &unk_1ECF296E0, &unk_1E4298030);
  }

  return a2 & 1;
}

uint64_t sub_1E39C2AB0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_36();
  (*(v1 + 776))(v5);
  if (v5[3])
  {
    if (OUTLINED_FUNCTION_8_17(&v4, v2))
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E325F748(v5, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }
}

void sub_1E39C2B80()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_1E4207104();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v8 - v4;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  OUTLINED_FUNCTION_36();
  (*(v6 + 776))(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  v7 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v5, v7 ^ 1u, 1, AssociatedTypeWitness);
  sub_1E4149694();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39C2CD0()
{
  OUTLINED_FUNCTION_8();
  if (!(*(v0 + 552))())
  {
    OUTLINED_FUNCTION_34_31();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_46_21();
  v9 = OUTLINED_FUNCTION_23_36(v1, v2, v3, v4, v5, v6, v7, v8, v17, v19);
  OUTLINED_FUNCTION_52_17(v9);

  __swift_destroy_boxed_opaque_existential_1(&v19);
  if (!v21)
  {
LABEL_8:
    sub_1E325F748(v20, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  if (OUTLINED_FUNCTION_41_25(&v19, v10, v11, MEMORY[0x1E69E6158], v12, v13, v14, v15, v18, v19))
  {
    return v19;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E39C2DB4()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 552))())
  {
    OUTLINED_FUNCTION_46_21();
    v9 = OUTLINED_FUNCTION_23_36(v1, v2, v3, v4, v5, v6, v7, v8, v26, v29[0]);
    OUTLINED_FUNCTION_52_17(v9);

    __swift_destroy_boxed_opaque_existential_1(v29);
    if (v31)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      v17 = OUTLINED_FUNCTION_41_25(v29, v11, v12, v10, v13, v14, v15, v16, v27, v29[0]);
      return OUTLINED_FUNCTION_31_32(v17, v18, v19, v20, v21, v22, v23, v24, v28, v29[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_31();
  }

  sub_1E325F748(v30, &unk_1ECF296E0, &unk_1E4298030);
  return 0;
}

uint64_t sub_1E39C2E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8();
  if ((*(v3 + 552))())
  {
    OUTLINED_FUNCTION_46_21();
    v12 = OUTLINED_FUNCTION_23_36(v4, v5, v6, v7, v8, v9, v10, v11, v24, v26[0]);
    OUTLINED_FUNCTION_33_30(v12);

    __swift_destroy_boxed_opaque_existential_1(v26);
    if (v28)
    {
      v13 = sub_1E4206374();
      v15 = OUTLINED_FUNCTION_32_13(v26, v27, v14, v13);
      return OUTLINED_FUNCTION_31_32(v15, v16, v17, v18, v19, v20, v21, v22, v25, v26[0]);
    }
  }

  else
  {
    OUTLINED_FUNCTION_34_31();
  }

  sub_1E325F748(v27, &unk_1ECF296E0, &unk_1E4298030);
  return 0;
}

uint64_t sub_1E39C2F7C@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_8();
  v7 = (*(v6 + 552))();
  if (v7)
  {
    v15 = v7;
    v21[3] = &unk_1F5D7C138;
    v21[4] = &off_1F5D7BC98;
    v16 = OUTLINED_FUNCTION_23_36(v7, v8, v9, v10, v11, v12, v13, v14, v20, a1);
    sub_1E3F9F164(v16, v15, v17 + 8);

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {
    OUTLINED_FUNCTION_34_31();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  v18 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v18 ^ 1u, 1, a2);
}

uint64_t sub_1E39C306C(char a1)
{
  sub_1E3C7ED20(a1);
  OUTLINED_FUNCTION_8();
  (*(v1 + 792))();
}

void sub_1E39C30DC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E39C3D80(54, v0);
  if (v7)
  {
    v8 = v7;
    MEMORY[0x1EEE9AC00](v6);
    *(&v26 - 2) = v9;
    *(&v26 - 1) = v8;
    sub_1E39C2540();
    v11 = v10;

    if (v11 && (, v12 = sub_1E39C2DB4(), , v12))
    {
    }

    else
    {
      v13 = sub_1E324FBDC();
      (*(v3 + 16))(v5, v13, v2);

      v14 = sub_1E41FFC94();
      v15 = sub_1E42067F4();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v27 = v17;
        *v16 = 136315394;
        v18 = (*(*v1 + 376))();
        v20 = sub_1E3270FC8(v18, v19, &v27);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        if (v11)
        {
          OUTLINED_FUNCTION_12_6();
          v22 = (*(v21 + 376))();
          v24 = v23;
        }

        else
        {
          v24 = 0xE300000000000000;
          v22 = 7104878;
        }

        v25 = sub_1E3270FC8(v22, v24, &v27);

        *(v16 + 14) = v25;
        _os_log_impl(&dword_1E323F000, v14, v15, "sharedSupplementaryData expected for %s, provider %s", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E69143B0](v17, -1, -1);
        MEMORY[0x1E69143B0](v16, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39C3418(void *a1, char a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (!a3)
  {
    v9 = 0u;
    v10 = 0u;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_55_0();
  v5();
  if (!*(&v10 + 1))
  {
LABEL_6:
    sub_1E325F748(&v9, &unk_1ECF296E0, &unk_1E4298030);
    return a2 & 1;
  }

  if (OUTLINED_FUNCTION_8_17(&v8, v6))
  {
    a2 = v8;
  }

  return a2 & 1;
}

double sub_1E39C34DC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);

  return result;
}

uint64_t sub_1E39C3508(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 16, a2);
  *(v2 + 16) = a1;
}

double sub_1E39C3544(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 24, a2);

  return result;
}

uint64_t sub_1E39C3570(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 24, a2);
  *(v2 + 24) = a1;
}

uint64_t sub_1E39C35F0()
{

  return v0;
}

uint64_t sub_1E39C3618()
{
  sub_1E39C35F0();
  OUTLINED_FUNCTION_2_4();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

BOOL sub_1E39C3648(uint64_t a1)
{
  sub_1E328438C(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  result = 1;
  if (OUTLINED_FUNCTION_8_17(&v4, v1))
  {
    v2 = *(v4 + 16);

    if (!v2)
    {
      return 0;
    }
  }

  return result;
}

_OWORD *sub_1E39C36BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1E37817B4(a1);
  if (v6)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  else
  {
    *a2 = sub_1E39C4000(v8, result, v5, 0, a1);
    *(a2 + 8) = v7;
    return sub_1E329504C(v8, (a2 + 16));
  }

  return result;
}

void sub_1E39C3764(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;
    while (v6)
    {
      v8 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_13:
      v11 = v8 | (v3 << 6);
      v12 = *(*(a1 + 56) + 8 * v11);
      v13 = *(*(a1 + 48) + 2 * v11);

      sub_1E3740AE8(v13, v14, v15);
      if ((v16 & 1) == 0)
      {

        return;
      }

      type metadata accessor for ViewModel();

      v18 = static ViewModel.== infix(_:_:)(v17, v12);

      if ((v18 & 1) == 0)
      {
        return;
      }
    }

    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v3 >= v7)
      {
        return;
      }

      v10 = *(a1 + 64 + 8 * v3);
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v6 = (v10 - 1) & v10;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1E39C38B4(char a1, uint64_t a2)
{
  v7[3] = &type metadata for ViewModelKeys;
  v7[4] = &off_1F5D7BCA8;
  LOBYTE(v7[0]) = a1;
  sub_1E3F9F164(v7, a2, MEMORY[0x1E69E7CA0] + 8);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (swift_dynamicCast())
    {
      v2 = v4;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    sub_1E325F748(v5, &unk_1ECF296E0, &unk_1E4298030);
    v2 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v7);
  return v2;
}

uint64_t sub_1E39C3974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[3] = a3;
  v13[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_1E3F9F164(v13, a2, MEMORY[0x1E69E7CA0] + 8);
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (swift_dynamicCast())
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    sub_1E325F748(v11, &unk_1ECF296E0, &unk_1E4298030);
    v8 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return v8;
}

uint64_t sub_1E39C3A70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FFF0, &unk_1E42AFDA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E39C3B64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  result = sub_1E373F6E0(*(*a1 + 98), *(v6 + 24), a2, a3, a4, a5);
  if (result)
  {
    result = swift_dynamicCastClass();
    v9 = result;
    if (result)
    {
    }
  }

  else
  {
    v9 = 0;
  }

  *a6 = v9;
  return result;
}

void *sub_1E39C3BD4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result && (result = swift_dynamicCastClass()) != 0)
  {
    *a2 = result;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1E39C3CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  v8 = *(*a1 + 98);
  if (sub_1E373F6E0(v8, 83, a3, a4, a5, a6))
  {
    result = 1;
  }

  else
  {
    result = sub_1E373F6E0(v8, 86, v9, v10, v11, v12);
  }

  *v7 = result & 1;
  return result;
}

uint64_t sub_1E39C3D48@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E39C3D80(char a1, uint64_t a2)
{
  v8[3] = &unk_1F5D5DAC8;
  v8[4] = &off_1F5D5C998;
  LOBYTE(v8[0]) = a1;
  v3 = __swift_project_boxed_opaque_existential_1(v8, &unk_1F5D5DAC8);
  (*(*a2 + 776))(v7, v3, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v7[3])
  {
    if (swift_dynamicCast())
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_1E325F748(v7, &unk_1ECF296E0, &unk_1E4298030);
    v4 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  return v4;
}

uint64_t sub_1E39C3E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a3;
  v17 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v8 = v16;
  v9 = v17;
  v10 = __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(*a2 + 776))(v14, v10, v8, v9);
  if (v14[3])
  {
    if (swift_dynamicCast())
    {
      v11 = v13;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    sub_1E325F748(v14, &unk_1ECF296E0, &unk_1E4298030);
    v11 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v11;
}

uint64_t sub_1E39C3FC0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (*(a1 + 16) == *(v1 + 16) && v2 == *(v1 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1E42079A4();
  }
}

uint64_t sub_1E39C4000(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    sub_1E328438C(*(a5 + 56) + 32 * a2, result);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1E39C4090(unsigned __int16 *a1, void *a2, unint64_t a3)
{
  v8 = 0;
  v9 = a1[49];
  switch(a1[49])
  {
    case 0x79u:
      v24 = type metadata accessor for CollectionViewModel();
      v25 = OUTLINED_FUNCTION_4_84(v24);
      if (!v25)
      {
        return 0;
      }

      v26 = v25;
      if (a2)
      {
        v27 = type metadata accessor for MultiGroupHorizontalCollectionController(0);
        v28 = OUTLINED_FUNCTION_5_83(v27);
        if (v28)
        {
          v29 = a2;
        }
      }

      else
      {
        v28 = 0;
      }

      OUTLINED_FUNCTION_9_59();
      if (__dst[3])
      {

        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        OUTLINED_FUNCTION_3_87(v78, v79, v78, &type metadata for CollectionViewContext, v80, v81, v82, v83, v97[0], v97[1], v97[2], v97[3], v97[4], v97[5], v97[6], v97[7], v97[8], v97[9], v97[10], v97[11], v97[12], v97[13], v97[14], v97[15], v97[16], v98, v99, v100, v101, v102, __src[0]);
        OUTLINED_FUNCTION_0_98();
        if (v84)
        {
          v87 = 0;
        }

        else
        {
          v87 = v85;
        }

        if (v84)
        {
          v88 = 1;
        }

        else
        {
          v88 = v86;
        }
      }

      else
      {

        sub_1E325F748(__dst, &qword_1ECF296C0, &unk_1E429BBE0);
        v87 = 0;
        v88 = 1;
      }

      type metadata accessor for MultiGroupHorizontalCollectionController(0);
      sub_1E40897C0(v26, v28);
      v89 = OUTLINED_FUNCTION_8_57();
      sub_1E39C47AC(v89, v87, v88);

      return v8;
    case 0x7Au:
    case 0x7Cu:
    case 0x7Du:
    case 0x81u:
    case 0x84u:
    case 0x85u:
    case 0x86u:
      return v8;
    case 0x7Bu:
      v30 = type metadata accessor for CollectionViewModel();
      if (!OUTLINED_FUNCTION_4_84(v30))
      {
        return 0;
      }

      if (a2)
      {
        v31 = type metadata accessor for MediaShowcaseHostingViewController();
        v16 = OUTLINED_FUNCTION_5_83(v31);
        if (v16)
        {
          v32 = a2;
        }
      }

      else
      {
        v16 = 0;
      }

      type metadata accessor for MediaShowcaseHostingViewController();
      OUTLINED_FUNCTION_50();

      OUTLINED_FUNCTION_34();
      sub_1E38B555C();
      goto LABEL_98;
    case 0x7Eu:
    case 0x80u:
      v10 = type metadata accessor for CollectionViewModel();
      v8 = OUTLINED_FUNCTION_4_84(v10);
      if (!v8)
      {
        return v8;
      }

      if (a2)
      {
        v11 = type metadata accessor for CarouselViewController();
        v12 = OUTLINED_FUNCTION_5_83(v11);
        if (v12)
        {
          v13 = a2;
        }
      }

      else
      {
        v12 = 0;
      }

      OUTLINED_FUNCTION_9_59();
      if (__dst[3])
      {

        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        OUTLINED_FUNCTION_3_87(v63, v64, v63, &type metadata for CollectionViewContext, v65, v66, v67, v68, v97[0], v97[1], v97[2], v97[3], v97[4], v97[5], v97[6], v97[7], v97[8], v97[9], v97[10], v97[11], v97[12], v97[13], v97[14], v97[15], v97[16], v98, v99, v100, v101, v102, __src[0]);
        OUTLINED_FUNCTION_0_98();
        if (v69)
        {
          v3 = 0;
        }

        else
        {
          v3 = v70;
        }

        if (v69)
        {
          v4 = 1;
        }

        else
        {
          v4 = v71;
        }
      }

      else
      {

        sub_1E325F748(__dst, &qword_1ECF296C0, &unk_1E429BBE0);
        OUTLINED_FUNCTION_6_66();
      }

      type metadata accessor for CarouselViewController();
      v72 = OUTLINED_FUNCTION_2_82();
      sub_1E37C7B40(v72, v73);
      goto LABEL_70;
    case 0x7Fu:
      v33 = type metadata accessor for CollectionViewModel();
      v34 = OUTLINED_FUNCTION_4_84(v33);
      if (!v34)
      {
        return 0;
      }

      v35 = v34;
      if (a2)
      {
        v36 = type metadata accessor for EpicShowcaseViewController();
        a2 = OUTLINED_FUNCTION_5_83(v36);
      }

      OUTLINED_FUNCTION_9_59();
      if (__dst[3])
      {

        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        OUTLINED_FUNCTION_3_87(v37, v38, v37, &type metadata for CollectionViewContext, v39, v40, v41, v42, v97[0], v97[1], v97[2], v97[3], v97[4], v97[5], v97[6], v97[7], v97[8], v97[9], v97[10], v97[11], v97[12], v97[13], v97[14], v97[15], v97[16], v98, v99, v100, v101, v102, __src[0]);
        OUTLINED_FUNCTION_0_98();
        if (v43)
        {
          v3 = 0;
        }

        else
        {
          v3 = v44;
        }

        if (v43)
        {
          v4 = 1;
        }

        else
        {
          v4 = v45;
        }
      }

      else
      {

        sub_1E325F748(__dst, &qword_1ECF296C0, &unk_1E429BBE0);
        OUTLINED_FUNCTION_6_66();
      }

      type metadata accessor for EpicShowcaseViewController();
      sub_1E411D928(v35, a2, a3, v3, v4);
      v90 = OUTLINED_FUNCTION_8_57();
      sub_1E39C47AC(v90, v3, v4);

      return v8;
    case 0x82u:
    case 0x83u:
      v18 = type metadata accessor for EpisodeCollectionViewModel();
      v8 = OUTLINED_FUNCTION_4_84(v18);
      if (!v8)
      {
        return v8;
      }

      if (a2)
      {
        v19 = type metadata accessor for EpisodeCollectionViewController(0);
        v12 = OUTLINED_FUNCTION_5_83(v19);
        if (v12)
        {
          v20 = a2;
        }
      }

      else
      {
        v12 = 0;
      }

      OUTLINED_FUNCTION_9_59();
      if (__dst[3])
      {

        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
        OUTLINED_FUNCTION_3_87(v52, v53, v52, &type metadata for CollectionViewContext, v54, v55, v56, v57, v97[0], v97[1], v97[2], v97[3], v97[4], v97[5], v97[6], v97[7], v97[8], v97[9], v97[10], v97[11], v97[12], v97[13], v97[14], v97[15], v97[16], v98, v99, v100, v101, v102, __src[0]);
        OUTLINED_FUNCTION_0_98();
        if (v58)
        {
          v3 = 0;
        }

        else
        {
          v3 = v59;
        }

        if (v58)
        {
          v4 = 1;
        }

        else
        {
          v4 = v60;
        }
      }

      else
      {

        sub_1E325F748(__dst, &qword_1ECF296C0, &unk_1E429BBE0);
        OUTLINED_FUNCTION_6_66();
      }

      type metadata accessor for EpisodeCollectionViewController(0);
      v61 = OUTLINED_FUNCTION_2_82();
      sub_1E38920D8(v61, v62);
LABEL_70:
      v74 = OUTLINED_FUNCTION_8_57();
      sub_1E39C47AC(v74, v3, v4);

      return v8;
    case 0x87u:
      v46 = type metadata accessor for UnifiedMessagingBannerViewModel();
      if (!OUTLINED_FUNCTION_4_84(v46))
      {
        return 0;
      }

      if (a2)
      {
        v47 = type metadata accessor for UnifiedMessagingBannerViewController();
        v16 = OUTLINED_FUNCTION_5_83(v47);
        if (v16)
        {
          v48 = a2;
        }
      }

      else
      {
        v16 = 0;
      }

      type metadata accessor for UnifiedMessagingBannerViewController();
      OUTLINED_FUNCTION_50();

      v92 = OUTLINED_FUNCTION_34();
      sub_1E3AC6994(v92, v93);
      goto LABEL_98;
    case 0x88u:
      v21 = type metadata accessor for UnifiedMessagingAccountMessageViewModel();
      if (!OUTLINED_FUNCTION_4_84(v21))
      {
        return 0;
      }

      if (a2)
      {
        v22 = type metadata accessor for AccountMessageViewController();
        v16 = OUTLINED_FUNCTION_5_83(v22);
        if (v16)
        {
          v23 = a2;
        }
      }

      else
      {
        v16 = 0;
      }

      type metadata accessor for AccountMessageViewController();
      OUTLINED_FUNCTION_50();

      v77 = OUTLINED_FUNCTION_34();
      sub_1E3A51B24(v77);
      goto LABEL_98;
    case 0x89u:
      v49 = type metadata accessor for UnifiedMessagingBubbleTipViewModel();
      if (!OUTLINED_FUNCTION_4_84(v49))
      {
        return 0;
      }

      if (a2)
      {
        v50 = type metadata accessor for UnifiedMessagingBubbleTipViewController();
        v16 = OUTLINED_FUNCTION_5_83(v50);
        if (v16)
        {
          v51 = a2;
        }
      }

      else
      {
        v16 = 0;
      }

      type metadata accessor for UnifiedMessagingBubbleTipViewController();
      OUTLINED_FUNCTION_50();

      v94 = OUTLINED_FUNCTION_34();
      sub_1E3D3B0A8(v94, v95);
      goto LABEL_98;
    default:
      if (v9 == 1)
      {
        sub_1E39C4734(a3, &v98);
        if (v101)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D498, &qword_1E42A9830);
          if (swift_dynamicCast())
          {
            memcpy(v97, __src, 0x82uLL);
            nullsub_1();
            memcpy(__dst, v97, 0x82uLL);
          }

          else
          {
            sub_1E39C47A4(__dst);
          }

          memcpy(__src, __dst, 0x82uLL);
        }

        else
        {
          sub_1E325F748(&v98, &qword_1ECF296C0, &unk_1E429BBE0);
          sub_1E39C47A4(__src);
        }

        v75 = memcpy(__dst, __src, 0x82uLL);
        v76 = sub_1E3D41994(v75);
        sub_1E3D41998(a1, a2, v76, __dst);
        OUTLINED_FUNCTION_8_57();

        sub_1E325F748(__src, &qword_1ECF30010, &qword_1E42B0020);
        return v8;
      }

      if (v9 != 148)
      {
        return v8;
      }

      v14 = type metadata accessor for EpicInlineViewModel();
      if (!OUTLINED_FUNCTION_4_84(v14))
      {
        return 0;
      }

      if (a2)
      {
        v15 = type metadata accessor for EpicInlineViewController();
        v16 = OUTLINED_FUNCTION_5_83(v15);
        if (v16)
        {
          v17 = a2;
        }
      }

      else
      {
        v16 = 0;
      }

      type metadata accessor for EpicInlineViewController();
      OUTLINED_FUNCTION_50();

      v96 = OUTLINED_FUNCTION_34();
      sub_1E3A50198(v96);
LABEL_98:
      OUTLINED_FUNCTION_50();

      return a2;
  }
}

uint64_t sub_1E39C4734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF296C0, &unk_1E429BBE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E39C47AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return MEMORY[0x1EEE66BE0](a1, a2);
  }

  return a1;
}

uint64_t sub_1E39C47BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E38E51A8(&unk_1F5D66C98, a2, a3);
  qword_1EE2AA890 = result;
  return result;
}

uint64_t sub_1E39C4858()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E39C48F4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

void sub_1E39C4938(void *a1)
{
  OUTLINED_FUNCTION_37(a1);
  swift_unknownObjectWeakAssign();
}

void (*sub_1E39C4984(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI37FloatingCardHostingCollectionViewCell_hostingParentViewController;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

uint64_t sub_1E39C4A08()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
  if (v1 && (v2 = (*(*v1 + 792))(v1), , v2 != 11) && (v3 = sub_1E41265A4(v2)) != 0)
  {

    return 1;
  }

  else
  {
    v5.receiver = v0;
    v5.super_class = type metadata accessor for FloatingCardHostingCollectionViewCell();
    return objc_msgSendSuper2(&v5, sel__disableRasterizeInAnimations);
  }
}

id sub_1E39C4B40()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI37FloatingCardHostingCollectionViewCell_viewLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI37FloatingCardHostingCollectionViewCell_viewModel) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI37FloatingCardHostingCollectionViewCell__dynamicMenuActions) = 0;
  v5 = type metadata accessor for FloatingCardHostingCollectionViewCell();
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

void sub_1E39C4BE8()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI37FloatingCardHostingCollectionViewCell_viewLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI37FloatingCardHostingCollectionViewCell_viewModel) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI37FloatingCardHostingCollectionViewCell__dynamicMenuActions) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E39C4C94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30038, qword_1E42B0028);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v7 - v2;
  v4 = type metadata accessor for FloatingCardHostingCollectionViewCell();
  v9.receiver = v0;
  v9.super_class = v4;
  objc_msgSendSuper2(&v9, sel_vui_prepareForReuse);
  sub_1E4206C64();
  v5 = sub_1E41FFE94();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
  MEMORY[0x1E69115A0](v3);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  return MEMORY[0x1E6911580](v7);
}

void *sub_1E39C4DA4(__int16 *a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if (a2)
  {
    type metadata accessor for FloatingCardHostingCollectionViewCell();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v13 = *(*a1 + 392);
      v14 = a2;
      v15 = v13();
      if (v15)
      {
        v17 = v15;
        if (qword_1EE290BD0 != -1)
        {
          OUTLINED_FUNCTION_1_107(&qword_1EE290BD0);
        }

        if (sub_1E38E5664(a1[49], qword_1EE2AA890, v16))
        {
          v18 = [v12 vuiContentView];
          [v18 frame];
          v20 = v19;
          v22 = v21;

          v23 = MEMORY[0x1E69E7D40];
          v24 = *((*MEMORY[0x1E69E7D40] & *v12) + 0x78);

          v24(v25);
          v26 = *((*v23 & *v12) + 0x90);

          v26(v27);
          v28 = *(*a1 + 344);
          v29 = v14;
          [v12 setAccessibilityIgnoresInvertColors_];

          LOBYTE(v24) = j__OUTLINED_FUNCTION_51_1();
          v30 = j__OUTLINED_FUNCTION_18();
          v31 = j__OUTLINED_FUNCTION_18();
          sub_1E3EB9C0C(v20, v22, 0, 0, 0, 1, v24 & 1, 2, v48, 0, 1, 0, 1, 0, 2, v30 & 1, v31 & 1);
          sub_1E375C2C0(v48, v52);
          LOBYTE(v18) = j__OUTLINED_FUNCTION_18();
          LOBYTE(v29) = j__OUTLINED_FUNCTION_18();
          v32 = j__OUTLINED_FUNCTION_51_1();
          sub_1E3EB9DAC(v49, v48, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 256, 3, 0, v18 & 1, v29 & 1, v32 & 1);
          memcpy(v52, v49, 0x78uLL);
          v52[15] = v20;
          v52[16] = v22;
          v53 = 0;
          OUTLINED_FUNCTION_8_58(v52, v50);
          *(v33 + 179) = v51;
          sub_1E39C530C(a1, v12, v17, v52);

          sub_1E375C31C(v48);
          memcpy(v43, v49, sizeof(v43));
          v44 = v20;
          v45 = v22;
          v46 = 0;
          OUTLINED_FUNCTION_8_58(v43, v50);
          v47 = v51;
          sub_1E37E6F2C(v43);
          return v12;
        }
      }

      else
      {
      }
    }
  }

  v35 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v35, v4);

  v36 = sub_1E41FFC94();
  v37 = sub_1E4206814();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v52[0] = v39;
    *v38 = 136315138;
    sub_1E384EE08(a1[49]);
    v42 = sub_1E3270FC8(v40, v41, v52);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_1E323F000, v36, v37, "FloatingCardHostingCollectionViewCell: Failed to get correct cell for [%s]", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1E69143B0](v39, -1, -1);
    MEMORY[0x1E69143B0](v38, -1, -1);
  }

  (*(v6 + 8))(v10, v4);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

uint64_t sub_1E39C530C(uint64_t a1, void *a2, uint64_t a3, const void *a4)
{
  v65 = a3;
  v61 = a2;
  v62 = sub_1E41FFE94();
  OUTLINED_FUNCTION_0_10();
  v59 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30038, qword_1E42B0028);
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30040, &qword_1E42B0078);
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v58 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060, &qword_1E42A7B70);
  OUTLINED_FUNCTION_0_10();
  v64 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v58 - v24;
  v60 = a1;
  v27 = v26;
  v58 = a4;
  OUTLINED_FUNCTION_25();
  v33 = sub_1E40EA03C(v28, v29, v30, v31, v32);
  v63 = v25;
  v66 = v25;
  OUTLINED_FUNCTION_6_8(v33);
  sub_1E42021C4();
  sub_1E4202734();
  v67[3] = v16;
  v67[4] = sub_1E39C609C();
  __swift_allocate_boxed_opaque_existential_1(v67);
  v34 = v61;
  sub_1E42021B4();
  (*(v18 + 8))(v21, v16);
  MEMORY[0x1E6911580](v67);
  v35 = [objc_opt_self() clearColor];
  [v34 setTintColor_];

  if (sub_1E39DFFC8() & 1) != 0 && ((v40 = *(v60 + 98), (sub_1E373F6E0(v40, 204, v36, v37, v38, v39)) || (sub_1E373F6E0(v40, 205, v41, v42, v43, v44)))
  {
    sub_1E41FFE84();
    v45 = 1;
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v62);
    MEMORY[0x1E69115A0](v15);
    v46 = v65;
  }

  else
  {
    MEMORY[0x1E6911590]();
    v47 = v62;
    if (__swift_getEnumTagSinglePayload(v4, 1, v62) == 1)
    {
      sub_1E41FFE84();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v4, 1, v47);
      v49 = v59;
      if (EnumTagSinglePayload != 1)
      {
        EnumTagSinglePayload = sub_1E39C6100(v4);
      }
    }

    else
    {
      v49 = v59;
      EnumTagSinglePayload = (*(v59 + 32))(v11, v4, v47);
    }

    v46 = v65;
    v50 = (*(*v65 + 792))(EnumTagSinglePayload);
    if (v50 != 11)
    {
      sub_1E41265A4(v50);
    }

    v51 = sub_1E41FFE64();
    (*(*v46 + 552))(v68, v51);
    if ((v69 & 1) == 0)
    {
      sub_1E3952BE8(v68[0], v68[1], v68[2], v68[3]);
    }

    sub_1E41FFE54();
    (*(v49 + 16))(v15, v11, v47);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v47);
    MEMORY[0x1E69115A0](v15);
    (*(v49 + 8))(v11, v47);
    v45 = 0;
  }

  v52 = sub_1E4206C54();
  if (v52)
  {
    sub_1E34AF594(v52, v53);
  }

  else
  {
    v54 = swift_allocObject();
    *(v54 + 16) = v45;
    v55 = v60;
    *(v54 + 24) = v46;
    *(v54 + 32) = v55;
    v56 = v58;
    memcpy((v54 + 40), v58, 0xC3uLL);

    sub_1E375C1CC(v56, v67);
    sub_1E4206C64();
  }

  return (*(v64 + 8))(v63, v27);
}

id sub_1E39C5870()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FloatingCardHostingCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E39C5910(void *a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5, unsigned __int8 *a6)
{
  v53 = a6;
  v61 = a5;
  v60 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30040, &qword_1E42B0078);
  OUTLINED_FUNCTION_0_10();
  v55 = v10;
  v56 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v53 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060, &qword_1E42A7B70);
  OUTLINED_FUNCTION_0_10();
  v57 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v53 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30038, qword_1E42B0028);
  MEMORY[0x1EEE9AC00](v16 - 8);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v20 = sub_1E41FFE94();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v26 = v25 - v24;
  MEMORY[0x1E6911590]();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1E41FFE84();
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) != 1)
    {
      sub_1E39C6100(v19);
    }
  }

  else
  {
    (*(v22 + 32))(v26, v19, v20);
  }

  if (sub_1E41FFE24() & 1) != 0 || (sub_1E41FFE04())
  {
    v27 = 1;
  }

  else
  {
    v27 = sub_1E41FFDF4();
  }

  if ((v60 & 1) == 0)
  {
    v28 = *a4;
    if (v27)
    {
      (*(v28 + 864))();
    }

    else
    {
      (*(v28 + 744))();
    }

    sub_1E41FFE74();
  }

  (*(v22 + 16))(v6, v26, v20);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v20);
  v29 = MEMORY[0x1E69115A0](v6);
  v30 = *(v61 + 98);
  *v67 = v30;
  *v64 = 204;
  sub_1E3741534(v29, v31, v32);
  if (OUTLINED_FUNCTION_14_68() & 1) != 0 || (*v67 = v30, *v64 = 205, (OUTLINED_FUNCTION_14_68()) || (type metadata accessor for FloatingCardHostingCollectionViewCell(), (v33 = swift_dynamicCastClass()) == 0))
  {
    v49 = OUTLINED_FUNCTION_5_84();
    v50(v49);
  }

  else
  {
    v34 = *((*MEMORY[0x1E69E7D40] & *v33) + 0x88);
    v35 = a1;
    if (v34())
    {
      memcpy(v63, v53, sizeof(v63));
      v36 = v53[194];
      v60 = v27 & 1;
      LODWORD(v61) = v36;
      memcpy(v67, v53, sizeof(v67));
      v68 = v27 & 1;
      v69 = v36;
      sub_1E375C1CC(v53, v64);
      v37 = v58;
      OUTLINED_FUNCTION_25();
      v43 = sub_1E40EA03C(v38, v39, v40, v41, v42);
      MEMORY[0x1EEE9AC00](v43);
      *(&v53 - 2) = v37;
      v44 = v35;
      OUTLINED_FUNCTION_6_8(v44);
      v45 = v54;
      sub_1E42021C4();
      sub_1E4202734();
      v46 = v56;
      v62[3] = v56;
      v62[4] = sub_1E39C609C();
      __swift_allocate_boxed_opaque_existential_1(v62);
      sub_1E42021B4();
      (*(v55 + 8))(v45, v46);
      MEMORY[0x1E6911580](v62);

      v47 = OUTLINED_FUNCTION_5_84();
      v48(v47);
      memcpy(v64, v63, sizeof(v64));
      v65 = v60;
      v66 = v61;
      sub_1E37E6F2C(v64);
      (*(v57 + 8))(v58, v59);
    }

    else
    {
      v51 = OUTLINED_FUNCTION_5_84();
      v52(v51);
    }
  }
}

void *sub_1E39C5EAC@<X0>(void *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v13 = [v6 contentView];
  [v13 sizeThatFits_];
  v15 = v14;
  v17 = v16;

  sub_1E41A300C(v20);
  sub_1E41A2FE8(v18, v15, v17);
  *&v20[6] = a3;
  *&v20[7] = a4;
  *&v20[8] = a5;
  *&v20[9] = a6;
  return memcpy(a1, v20, 0x50uLL);
}

uint64_t (*sub_1E39C6028(void *a1))()
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtC8VideosUI37FloatingCardHostingCollectionViewCell__dynamicMenuActions;
  a1[1] = *v1;
  a1[2] = v3;
  *a1 = *(v2 + v3);

  return sub_1E39C61F0;
}

unint64_t sub_1E39C609C()
{
  result = qword_1ECF30048;
  if (!qword_1ECF30048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30040, &qword_1E42B0078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30048);
  }

  return result;
}

uint64_t sub_1E39C6100(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30038, qword_1E42B0028);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E39C6178@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29060, &qword_1E42A7B70);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E39C6214(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 57))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E39C6268(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t *NSNotification.remoteNetworkReachabilityDidChange.unsafeMutableAddressor()
{
  if (qword_1EE28E9B0[0] != -1)
  {
    OUTLINED_FUNCTION_13_70(qword_1EE28E9B0);
  }

  return &static NSNotification.remoteNetworkReachabilityDidChange;
}

id RemoteNetworkReachabilityMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1E39C634C()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E39C6394(char a1)
{
  if (!a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (a1 == 1)
  {
    return 0x6863616552746F6ELL;
  }

  return 0x6C62616863616572;
}

uint64_t sub_1E39C6404(unsigned __int8 a1, char a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6863616552746F6ELL;
    }

    else
    {
      v4 = 0x6C62616863616572;
    }

    if (v3 == 1)
    {
      v5 = 0xEC000000656C6261;
    }

    else
    {
      v5 = 0xE900000000000065;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6863616552746F6ELL;
    }

    else
    {
      v2 = 0x6C62616863616572;
    }

    if (a2 == 1)
    {
      v6 = 0xEC000000656C6261;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E39C6534(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E39C65D4(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E39C6680@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E39C634C();
  *a1 = result;
  return result;
}

uint64_t sub_1E39C66B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E39C6394(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t variable initialization expression of RemoteNetworkReachabilityMonitor.networkActor()
{
  type metadata accessor for RemoteNetworkReachabilityActor();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  return v0;
}

Swift::Bool __swiftcall RemoteNetworkReachabilityMonitor.isReachable()()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  v5 = OBJC_IVAR____TtC8VideosUI32RemoteNetworkReachabilityMonitor_status;
  OUTLINED_FUNCTION_5_0(&v0[OBJC_IVAR____TtC8VideosUI32RemoteNetworkReachabilityMonitor_status], &v20);
  if (!v0[v5])
  {
    goto LABEL_4;
  }

  if (v0[v5] == 1)
  {
    OUTLINED_FUNCTION_15_59();
LABEL_4:
    v6 = sub_1E42079A4();
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:

  v7 = sub_1E324FBDC();
  (*(v3 + 16))(v0, v7, v1);
  v8 = v0;
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_100();
    v19 = v12;
    *v11 = 136315394;
    v13 = 0x6863616552746F6ELL;
    v14 = 0xEC000000656C6261;
    if (v0[v5] != 1)
    {
      v13 = 0x6C62616863616572;
      v14 = 0xE900000000000065;
    }

    if (v0[v5])
    {
      v15 = v13;
    }

    else
    {
      v15 = 0x6E776F6E6B6E75;
    }

    if (v0[v5])
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE700000000000000;
    }

    v17 = sub_1E3270FC8(v15, v16, &v19);

    *(v11 + 4) = v17;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v6 & 1;
    _os_log_impl(&dword_1E323F000, v9, v10, "RemoteNetworkReachability: isReachable status: %s, result: %{BOOL}d", v11, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  (*(v3 + 8))(v0, v1);
  OUTLINED_FUNCTION_25_2();
  return result;
}

uint64_t sub_1E39C69C8()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_31();
  *v5 = v4;
  *(v7 + 177) = v6;

  v8 = *(v1 + 112);
  v9 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1E39C6AE4, v9, v8);
}

uint64_t sub_1E39C6AE4()
{
  OUTLINED_FUNCTION_24();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1E39C6B48()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 168) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E39C6BCC, v2, v1);
}

uint64_t sub_1E39C6BCC()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_5_0(v0 + 40, v0 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E39C7078();
  }

  MEMORY[0x1E69144A0](v0 + 40);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1E39C6C68, v3, v4);
}

uint64_t sub_1E39C6C68()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 128);

  v2 = OUTLINED_FUNCTION_23_6();
  v1(v2);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (OUTLINED_FUNCTION_16_53(v4))
  {
    v5 = *(v0 + 177);
    v6 = OUTLINED_FUNCTION_160();
    *v6 = 67109120;
    v6[1] = v5;
    OUTLINED_FUNCTION_41_2();
    _os_log_impl(v7, v8, v9, v10, v11, 8u);
    OUTLINED_FUNCTION_6_0();
  }

  v12 = *(v0 + 144);

  v13 = OUTLINED_FUNCTION_35_5();
  v12(v13);

  OUTLINED_FUNCTION_54();

  return v14();
}

uint64_t sub_1E39C6D68()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E39C6E60()
{
  OUTLINED_FUNCTION_27_2();

  v1 = *(v0 + 97);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E39C6EE8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E39C6FE0()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 16);

  v2 = *(v0 + 96);
  *(v1 + 112) = 0;

  v3 = *(v0 + 8);

  return v3(v2);
}

void sub_1E39C7078()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_8();
  v8 = sub_1E324FBDC();
  (*(v6 + 16))(v0, v8, v4);
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_6_21();
    v12 = OUTLINED_FUNCTION_100();
    v20 = v12;
    *v11 = 136315138;
    if (v3 == 2)
    {
      v13 = 0x6C62616863616572;
    }

    else
    {
      v13 = 0x6863616552746F6ELL;
    }

    v19 = v4;
    v14 = v3;
    if (v3 == 2)
    {
      v15 = 0xE900000000000065;
    }

    else
    {
      v15 = 0xEC000000656C6261;
    }

    v16 = sub_1E3270FC8(v13, v15, &v20);
    v3 = v14;
    v1 = v0;

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1E323F000, v9, v10, "RemoteNetworkReachability: update status: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v6 + 8))(v0, v4);
  }

  else
  {

    (*(v6 + 8))(v0, v4);
  }

  v17 = OBJC_IVAR____TtC8VideosUI32RemoteNetworkReachabilityMonitor_status;
  swift_beginAccess();
  *(v1 + v17) = v3;
  v18 = [objc_opt_self() defaultCenter];
  if (qword_1EE28E9B0[0] != -1)
  {
    OUTLINED_FUNCTION_13_70(qword_1EE28E9B0);
  }

  [v18 postNotificationName:static NSNotification.remoteNetworkReachabilityDidChange object:{0, v19, v20}];

  OUTLINED_FUNCTION_25_2();
}

uint64_t RemoteNetworkReachabilityMonitor.checkRemoteServerReachability()()
{
  OUTLINED_FUNCTION_24();
  v0[2] = sub_1E4206434();
  v0[3] = sub_1E4206424();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1E39C7384;

  return sub_1E329D160();
}

uint64_t sub_1E39C7384()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v4 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E39C74B0, v4, v3);
}

uint64_t sub_1E39C74B0()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E39C7584(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1E4206434();
  v2[4] = sub_1E4206424();
  v4 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E39C761C, v4, v3);
}

uint64_t sub_1E39C761C()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1E39C76C8;

  return RemoteNetworkReachabilityMonitor.checkRemoteServerReachability()();
}

uint64_t sub_1E39C76C8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = *(v1 + 40);
  v3 = *(v1 + 24);
  v4 = *v0;
  OUTLINED_FUNCTION_7();
  *v5 = v4;

  v2[2](v2);
  _Block_release(v2);
  OUTLINED_FUNCTION_54();

  return v6();
}

id RemoteNetworkReachabilityMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E39C7834()
{
  OUTLINED_FUNCTION_134();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_39();
  v9 = v8;
  OUTLINED_FUNCTION_31();
  *v10 = v9;
  v11 = *v1;
  OUTLINED_FUNCTION_7();
  *v12 = v11;
  v9[30] = v0;

  if (v0)
  {
    v13 = v9[3];
    v14 = sub_1E39C7C10;
  }

  else
  {
    v15 = v9[28];
    v16 = v9[3];
    sub_1E38DCE1C(v7, v5);

    v14 = sub_1E39C7974;
    v13 = v16;
  }

  return MEMORY[0x1EEE6DFA0](v14, v13, 0);
}

uint64_t sub_1E39C7974()
{
  v54 = v0;
  v1 = *(v0 + 168);
  (*(v0 + 192))(*(v0 + 80), *(v0 + 184), *(v0 + 56));
  v2 = OUTLINED_FUNCTION_23_6();
  v1(v2);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 216);
  v7 = *(v0 + 160);
  v8 = *(v0 + 136);
  v9 = *(v0 + 112);
  v48 = *(v0 + 64);
  v49 = *(v0 + 56);
  v50 = *(v0 + 80);
  v10 = *(v0 + 40);
  v52 = *(v0 + 48);
  v51 = *(v0 + 32);
  if (v5)
  {
    HIDWORD(v41) = v4;
    v11 = OUTLINED_FUNCTION_6_21();
    v12 = OUTLINED_FUNCTION_100();
    v53 = v12;
    *v11 = 136315138;
    v43 = v9;
    v46 = v7;
    v13 = sub_1E41FE314();
    v14 = v9;
    v16 = v15;
    v6(v8, v14);
    v17 = sub_1E3270FC8(v13, v16, &v53);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_1E323F000, v3, BYTE4(v41), "RemoteNetworkReachability: Connected successfully to: %s ", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v26 = OUTLINED_FUNCTION_33_31(v18, v19, v20, v21, v22, v23, v24, v25, v40, v41, v43, v46, v48, v49, v50);
    v27(v26);
    (*(v10 + 8))(v52, v51);
    v6(v47, v44);
  }

  else
  {

    v28 = (v6)(v8, v9);
    v36 = OUTLINED_FUNCTION_33_31(v28, v29, v30, v31, v32, v33, v34, v35, v40, v41, v42, v45, v48, v49, v50);
    v37(v36);
    (*(v10 + 8))(v52, v51);
    v6(v7, v9);
  }

  OUTLINED_FUNCTION_4_85();
  **(v0 + 16) = 1;

  OUTLINED_FUNCTION_54();

  return v38();
}

uint64_t sub_1E39C7C10()
{
  v41 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 192);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v37 = *(v0 + 168);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);

  v2(v7, v3, v8);
  v37(v5, v4, v6);
  v9 = v1;
  v10 = sub_1E41FFC94();
  LOBYTE(v3) = sub_1E4206814();

  v33 = v3;
  v11 = os_log_type_enabled(v10, v3);
  v13 = *(v0 + 208);
  v12 = *(v0 + 216);
  v14 = *(v0 + 160);
  v15 = *(v0 + 128);
  v16 = *(v0 + 112);
  v35 = *(v0 + 240);
  v17 = *(v0 + 48);
  v36 = *(v0 + 56);
  v38 = *(v0 + 72);
  v34 = *(v0 + 40);
  v39 = *(v0 + 32);
  if (v11)
  {
    v32 = *(v0 + 160);
    v18 = swift_slowAlloc();
    v31 = v13;
    v19 = OUTLINED_FUNCTION_160();
    log = v10;
    v29 = OUTLINED_FUNCTION_100();
    v40 = v29;
    *v18 = 136315394;
    v30 = v17;
    v20 = sub_1E41FE314();
    v22 = v21;
    v12(v15, v16);
    v23 = sub_1E3270FC8(v20, v22, &v40);

    *(v18 + 4) = v23;
    *(v18 + 12) = 2112;
    v24 = v35;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 14) = v25;
    *v19 = v25;
    _os_log_impl(&dword_1E323F000, log, v33, "RemoteNetworkReachability: Failed to connect to %s: %@", v18, 0x16u);
    sub_1E325F7FC(v19, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v31(v38, v36);
    (*(v34 + 8))(v30, v39);
    v12(v32, v16);
  }

  else
  {

    v12(v15, v16);
    v13(v38, v36);
    (*(v34 + 8))(v17, v39);
    v12(v14, v16);
  }

  OUTLINED_FUNCTION_4_85();
  **(v0 + 16) = 0;

  OUTLINED_FUNCTION_54();

  return v26();
}

uint64_t sub_1E39C7F78()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E39C809C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E39C80F8()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E39C8130()
{
  OUTLINED_FUNCTION_134();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_39();
  v9 = v8;
  OUTLINED_FUNCTION_31();
  *v10 = v9;
  v11 = *v1;
  OUTLINED_FUNCTION_7();
  *v12 = v11;
  v9[11] = v0;

  if (!v0)
  {
    v9[12] = v3;
    v9[13] = v5;
    v9[14] = v7;
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1E39C8254()
{
  OUTLINED_FUNCTION_24();
  v1 = OUTLINED_FUNCTION_30_32();
  v2(v1);

  v3 = v0[1];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];

  return v3(v4, v5, v6);
}

uint64_t sub_1E39C82D4()
{
  OUTLINED_FUNCTION_24();
  v0 = OUTLINED_FUNCTION_30_32();
  v1(v0);

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E39C8348()
{
  OUTLINED_FUNCTION_31_1();
  v92 = v1;
  v93 = v0;
  v87 = v2;
  v88 = v3;
  v86 = v4;
  v90 = v5;
  v91 = v6;
  v89 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v84 = (&v81 - v14);
  v15 = sub_1E41FDDF4();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v85 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  v24 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_4_6();
  v30 = (v28 - v29);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v81 - v32;
  v34 = sub_1E4206B94();
  v35 = VUISignpostLogObject(v34);
  v36 = v86;
  sub_1E41FFBA4();

  if (v36)
  {
    v37 = v36;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v38(v33);
    v17[2](v23, v88, v15);
    v39 = v36;
    v40 = sub_1E41FFC94();
    v41 = sub_1E4206814();

    if (os_log_type_enabled(v40, v41))
    {
      LODWORD(v83) = v41;
      v85 = v33;
      v87 = v26;
      v88 = v24;
      v42 = swift_slowAlloc();
      v43 = OUTLINED_FUNCTION_160();
      v82 = OUTLINED_FUNCTION_100();
      v94 = v82;
      *v42 = 136315394;
      v44 = v84;
      sub_1E41FDDC4();
      v45 = sub_1E41FE414();
      if (__swift_getEnumTagSinglePayload(v44, 1, v45) == 1)
      {
        sub_1E325F7FC(v44, &unk_1ECF363C0, &unk_1E42A9420);
        v46 = 0;
        v47 = 0xE000000000000000;
      }

      else
      {
        v46 = sub_1E41FE314();
        v47 = v65;
        OUTLINED_FUNCTION_37_1();
        (*(v66 + 8))(v67, v45);
      }

      v68 = OUTLINED_FUNCTION_35_5();
      v69(v68);
      v70 = sub_1E3270FC8(v46, v47, &v94);

      *(v42 + 4) = v70;
      *(v42 + 12) = 2112;
      v71 = v36;
      v72 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 14) = v72;
      *v43 = v72;
      _os_log_impl(&dword_1E323F000, v40, v83, "Session:Request:  error: url=%s error: %@", v42, 0x16u);
      sub_1E325F7FC(v43, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_6_0();
      __swift_destroy_boxed_opaque_existential_1(v82);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v62 = *(v87 + 8);
      v63 = v85;
LABEL_15:
      v64 = v88;
      goto LABEL_16;
    }

    v60 = OUTLINED_FUNCTION_35_5();
    v61(v60);
    v62 = *(v26 + 8);
    v63 = v33;
  }

  else
  {
    v48 = v12;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v49(v30);
    v17[2](v85, v88, v15);
    v50 = sub_1E41FFC94();
    v51 = sub_1E4206814();
    if (os_log_type_enabled(v50, v51))
    {
      v83 = v15;
      v84 = v17;
      v87 = v26;
      v88 = v24;
      v52 = OUTLINED_FUNCTION_6_21();
      v53 = OUTLINED_FUNCTION_100();
      v94 = v53;
      *v52 = 136315138;
      v54 = v48;
      v55 = v85;
      sub_1E41FDDC4();
      v56 = v54;
      v57 = sub_1E41FE414();
      if (__swift_getEnumTagSinglePayload(v56, 1, v57) == 1)
      {
        sub_1E325F7FC(v56, &unk_1ECF363C0, &unk_1E42A9420);
        v58 = 0;
        v59 = 0xE000000000000000;
      }

      else
      {
        v73 = v30;
        v74 = v53;
        v75 = v56;
        sub_1E41FE314();
        v59 = v76;
        OUTLINED_FUNCTION_37_1();
        v78 = v75;
        v53 = v74;
        v30 = v73;
        v58 = v79;
        (*(v77 + 8))(v78, v57);
      }

      v84[1](v55, v83);
      v80 = sub_1E3270FC8(v58, v59, &v94);

      *(v52 + 4) = v80;
      _os_log_impl(&dword_1E323F000, v50, v51, "Session:Request: prewarmConnection success: url=%s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v62 = *(v87 + 8);
      v63 = v30;
      goto LABEL_15;
    }

    (v17[1])(v85, v15);
    v62 = *(v26 + 8);
    v63 = v30;
  }

  v64 = v24;
LABEL_16:
  v62(v63, v64);
  v93(v89, v90, v91, v36);
  OUTLINED_FUNCTION_25_2();
}