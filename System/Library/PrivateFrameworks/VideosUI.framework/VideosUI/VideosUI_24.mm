id sub_1E37F6478@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 outputVolume];
  *a2 = v4;
  return result;
}

id sub_1E37F64AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 avPlayer];
  *a2 = result;
  return result;
}

id sub_1E37F64E8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMuted];
  *a2 = result;
  return result;
}

void sub_1E37F6530()
{
  OUTLINED_FUNCTION_21();
  v1 += 134;
  v2 = *v1;
  v3 = (*v1)();
  [v0 addChildViewController_];

  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  v6 = v2();
  v7 = [v6 view];

  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [v5 addSubview_];

  v8 = [v0 view];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  v10 = v2();
  v11 = [v10 view];

  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v9 vui:v11 sendSubviewToBack:?];

  v12 = v2();
  [v12 vui:v0 didMoveToParentViewController:?];
}

void sub_1E37F66D0()
{
  OUTLINED_FUNCTION_82_2();
  v1 = type metadata accessor for BackgroundPlaybackUIInteractionManager();
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v3 + 1072))();
  v4 = v0;
  v5 = v1;
  sub_1E3C9B3A4();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_64();
  (*(v6 + 240))(1);
  OUTLINED_FUNCTION_26_3();
  (*((*v2 & v7) + 0x138))(1);
  OUTLINED_FUNCTION_26_3();
  (*((*v2 & v8) + 0x150))(1);
  OUTLINED_FUNCTION_26_3();
  (*((*v2 & v9) + 0x108))(1);
  OUTLINED_FUNCTION_26_3();
  (*((*v2 & v10) + 0x120))(0);
  OUTLINED_FUNCTION_4_0();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v11);
  OUTLINED_FUNCTION_26_3();
  v13 = *((*v2 & v12) + 0x198);

  v13(sub_1E37FA2C4, v11);

  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v14);
  OUTLINED_FUNCTION_26_3();
  v16 = *((*v2 & v15) + 0x1B0);

  v17 = OUTLINED_FUNCTION_40_1();
  v16(v17);

  OUTLINED_FUNCTION_26_3();
  v19 = (*((*v2 & v18) + 0x160))();
  if (v19)
  {
    v20 = v19;
    [v19 setVuiAlpha_];
    v21 = [v4 view];
    if (!v21)
    {
      __break(1u);
      return;
    }

    v22 = v21;
    [v21 vui:v20 addSubview:0 oldView:?];
  }

  *&v4[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_interactionManager] = v5;
  OUTLINED_FUNCTION_95();
}

void sub_1E37F6A2C()
{
  OUTLINED_FUNCTION_55_4();
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v3 = (*(v1 + 1072))();
  OUTLINED_FUNCTION_26_3();
  if ((*((*v0 & v2) + 0x280))() < 0)
  {
    __break(1u);
  }

  else
  {
    j__OUTLINED_FUNCTION_18();
    sub_1E3C4EE0C();
  }
}

void sub_1E37F6B10()
{
  OUTLINED_FUNCTION_82_2();
  v2 = v0;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  OUTLINED_FUNCTION_26_3();
  v11 = (*((*MEMORY[0x1E69E7D40] & v10) + 0x200))();
  if (!sub_1E32AE9B0(v11))
  {

    v21 = sub_1E324FBDC();
    (*(v5 + 16))(v9, v21, v3);
    v22 = sub_1E41FFC94();
    v23 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v23))
    {
      v24 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v24);
      _os_log_impl(&dword_1E323F000, v22, v23, "PlaylistViewController:: Not adding header view because there are no video models", v1, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    (*(v5 + 8))(v9, v3);
    goto LABEL_10;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x1E6911E60](0, v11);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_13;
    }

    v12 = *(v11 + 32);
  }

  v13 = *&v2[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_presenter];
  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_4_0();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E38C8038(v12, v13, sub_1E37FA87C, v14, sub_1E37FA884, v15, v27);
  memcpy(v26, v27, sizeof(v26));
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADD8, &qword_1E429F568));
  sub_1E37FA88C(v27, &v25);
  v17 = sub_1E4201214();
  v18 = [v2 view];
  if (v18)
  {
    v19 = v18;
    [v18 vui:v17 addSubview:0 oldView:?];

    sub_1E37FA8E8(v27);

    v20 = *&v2[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView];
    *&v2[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView] = v17;

LABEL_10:
    OUTLINED_FUNCTION_95();
    return;
  }

LABEL_13:
  __break(1u);
}

void sub_1E37F6E18()
{
  OUTLINED_FUNCTION_82_2();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v2 = OUTLINED_FUNCTION_4_36();
  v3(v2);
  v4 = sub_1E41FFC94();
  v5 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_41_13(v5))
  {
    v6 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v6);
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v12 = OUTLINED_FUNCTION_22_4();
  v13(v12);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    v15 = (*(v14 + 1072))();

    v0 = v15;
    sub_1E3C53C48();
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    v17 = (*(v16 + 1024))();
    v19 = v18;

    if (v17)
    {
      v17();
      sub_1E34AF594(v17, v19);
    }
  }

  OUTLINED_FUNCTION_95();
}

void sub_1E37F6FEC()
{
  OUTLINED_FUNCTION_82_2();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1E324FBDC();
    v5 = OUTLINED_FUNCTION_24_10();
    v6(v5);
    v7 = sub_1E41FFC94();
    v8 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_77_3(v8))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_60_3();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_55();
    }

    v14 = OUTLINED_FUNCTION_63_0();
    v15(v14);
    OUTLINED_FUNCTION_8();
    v17 = *(v16 + 152);

    v17(v1 & 1);

    OUTLINED_FUNCTION_67_1();
    v19 = (*((*MEMORY[0x1E69E7D40] & v18) + 0x430))();
    sub_1E3C52FF4(v1 & 1);
  }

  OUTLINED_FUNCTION_95();
}

void sub_1E37F71B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_44();
  v70 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30, &unk_1E42A89B0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v64 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADC0, &qword_1E429F550);
  OUTLINED_FUNCTION_0_10();
  v67 = v9;
  v68 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v66 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2ADC8, &unk_1E429F558);
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v69 = v16;
  v17 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v60 - v24;
  v65 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer))
  {

    sub_1E42004E4();
  }

  v26 = sub_1E324FBDC();
  v62 = *(v19 + 16);
  v63 = v26;
  v62(v25);
  v27 = sub_1E41FFC94();
  v28 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_104(v28))
  {
    v29 = OUTLINED_FUNCTION_125_0();
    v61 = v17;
    *v29 = 0;
    OUTLINED_FUNCTION_5_20(&dword_1E323F000, v30, v31, "PlaylistViewController: starting fullscreen transition timer");
    v17 = v61;
    OUTLINED_FUNCTION_6_0();
  }

  v32 = *(v19 + 8);
  v33 = v32(v25, v17);
  v34 = v1;
  v35 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x238);
  if ((COERCE_UNSIGNED_INT64((v35)(v33)) & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    sub_1E3280A90(0, &qword_1EE23AE40, 0x1E695DFF0);
    v35();
    v39 = [objc_opt_self() mainRunLoop];
    sub_1E4207054();
    v40 = v64;
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
    v45 = sub_1E4206F14();

    sub_1E325F6F0(v40, &unk_1ECF3DB30, &unk_1E42A89B0);
    v71 = v45;
    sub_1E4206F04();
    sub_1E37FA784(&qword_1EE23AE48, MEMORY[0x1E6969F70], MEMORY[0x1E6969F60]);
    v46 = sub_1E4200584();

    v71 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB40, &qword_1E429B180);
    sub_1E32752B0(&qword_1EE28A360, &unk_1ECF3DB40, &qword_1E429B180, MEMORY[0x1E695BCA0]);
    v47 = v66;
    sub_1E42007A4();

    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v48 = sub_1E4206A04();
    v71 = v48;
    sub_1E42069A4();
    v49 = v70;
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
    sub_1E32752B0(&qword_1ECF3DB50, &qword_1ECF2ADC0, &qword_1E429F550, MEMORY[0x1E695BDB8]);
    sub_1E3746800();
    v55 = v68;
    v54 = v69;
    sub_1E42007D4();
    sub_1E325F6F0(v49, &unk_1ECF2D2B0, &unk_1E429D3D0);

    (*(v67 + 8))(v47, v55);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_3_15();
    sub_1E32752B0(v56, v57, v58, v59);
    OUTLINED_FUNCTION_40_1();
    sub_1E4200844();
    OUTLINED_FUNCTION_38();

    (*(v14 + 8))(v54, v12);
    *(v34 + v65) = v54;
  }

  else
  {
    (v62)(v22, v63, v17);
    v36 = sub_1E41FFC94();
    v37 = sub_1E42067E4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_125_0();
      *v38 = 0;
      _os_log_impl(&dword_1E323F000, v36, v37, "PlaylistViewController: ignoring the metadata timeout since accessibility is enabled", v38, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v32(v22, v17);
  }
}

void sub_1E37F78C4()
{
  OUTLINED_FUNCTION_82_2();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_4_36();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_41_13(v4))
  {
    v5 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v5);
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v11 = OUTLINED_FUNCTION_22_4();
  v12(v11);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_1E37F8064();
  }

  OUTLINED_FUNCTION_95();
}

uint64_t sub_1E37F79E4()
{
  v1 = OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_26_3();
  v9 = (*((*MEMORY[0x1E69E7D40] & v8) + 0x430))();
  v10 = sub_1E3C51004();

  if (!v10)
  {
LABEL_4:
    v14 = sub_1E324FBDC();
    (*(v3 + 16))(v7, v14, v1);
    v15 = sub_1E41FFC94();
    v16 = sub_1E42067E4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_125_0();
      *v17 = 0;
      _os_log_impl(&dword_1E323F000, v15, v16, "PlaylistViewController: not adding fade in because player or time is missing", v17, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    return (*(v3 + 8))(v7, v1);
  }

  OUTLINED_FUNCTION_12_5();
  *&v12 = COERCE_DOUBLE((*(v11 + 592))());
  if (v13)
  {

    goto LABEL_4;
  }

  v19 = *&v12;
  [v10 duration];
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31B50, &qword_1E429B030);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1E4297BE0;
  *(v22 + 56) = MEMORY[0x1E69E63B0];
  *(v22 + 32) = v21 - v19;
  OUTLINED_FUNCTION_4_0();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v23);
  OUTLINED_FUNCTION_2_4();
  v24 = swift_allocObject();
  *(v24 + 16) = v1;
  *(v24 + 24) = v10;
  v33 = sub_1E37FA190;
  v34 = v24;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v32 = sub_1E37EB82C;
  *(&v32 + 1) = &block_descriptor_83;
  _Block_copy(&aBlock);
  v25 = v10;

  v26 = OUTLINED_FUNCTION_63_0();
  sub_1E37F9910(v26, v27, v25);
  v28 = OUTLINED_FUNCTION_31_4();
  _Block_release(v28);
  if (v22)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {

    aBlock = 0u;
    v32 = 0u;
  }

  v29 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_boundaryObserver;
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_boundaryObserver, v30);
  sub_1E37FA198(&aBlock, v0 + v29, &unk_1ECF296E0, &unk_1E4298030);
  return swift_endAccess();
}

void sub_1E37F7D30()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E324FBDC();
    v7 = OUTLINED_FUNCTION_24_10();
    v8(v7);
    v9 = sub_1E41FFC94();
    v10 = sub_1E42067E4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = v3 & 1;
      _os_log_impl(&dword_1E323F000, v9, v10, "PlaylistViewController: did cross boundary due to time jump %{BOOL}d", v11, 8u);
      OUTLINED_FUNCTION_6_0();
    }

    v12 = OUTLINED_FUNCTION_63_0();
    v13(v12);
    v6[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden] = 0;
    [v6 setNeedsStatusBarAppearanceUpdate];
    OUTLINED_FUNCTION_67_1();
    v15 = *((*MEMORY[0x1E69E7D40] & v14) + 0x430);
    v15();
    v16 = OUTLINED_FUNCTION_70_3();
    sub_1E3C4D450(v16);

    v17 = (v15)();
    OUTLINED_FUNCTION_4_0();
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();

    v19 = sub_1E3C4D0C0();
    sub_1E3C4D0C8(0, 1, sub_1E37FA1E8, v18, nullsub_1, 0, v19);

    MEMORY[0x1E69144A0](&v23);

    v6[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState] = 3;
    sub_1E37EFFB4();
    v20 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_boundaryObserver;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E3294EE4(&v6[v20], &v21, &unk_1ECF296E0, &unk_1E4298030);
    if (v22)
    {
      sub_1E329504C(&v21, &v23);
      __swift_project_boxed_opaque_existential_1(&v23, v24);
      [v1 removeBoundaryTimeObserverWithToken_];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v23);
    }

    else
    {

      sub_1E325F6F0(&v21, &unk_1ECF296E0, &unk_1E4298030);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37F8064()
{
  v1 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState;
  v2 = v0[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState];
  if (v2 != 2)
  {
    v3 = v0;
    if (v2 == 3)
    {

      sub_1E37F817C();
    }

    else if (v2)
    {

      sub_1E37F82B0();
    }

    else
    {
      OUTLINED_FUNCTION_12_5();
      v5 = (*(v4 + 1072))();
      sub_1E3C53CE8(1);

      v3[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden] = 0;
      [v3 setNeedsStatusBarAppearanceUpdate];
      v3[v1] = 1;

      sub_1E37EFFB4();
    }
  }
}

void sub_1E37F817C()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer])
  {

    sub_1E42004E4();
  }

  OUTLINED_FUNCTION_12_5();
  v2 += 134;
  v3 = *v2;
  v4 = (*v2)();
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v5);

  OUTLINED_FUNCTION_76_3(1, v6, v7, sub_1E37FA108);

  (v3)(v8);
  v9 = OUTLINED_FUNCTION_70_3();
  sub_1E3C4D450(v9);

  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden) = 1;
  [v1 setNeedsStatusBarAppearanceUpdate];
  *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState) = 0;

  sub_1E37EFFB4();
}

void sub_1E37F82B0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_transportVisibilityState) == 1;
  OUTLINED_FUNCTION_21();
  v4 += 134;
  v5 = *v4;
  v6 = (*v4)();
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_19_6(v7);
  OUTLINED_FUNCTION_91_2();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  *(v8 + 24) = v3;
  OUTLINED_FUNCTION_4_0();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v9);
  OUTLINED_FUNCTION_91_2();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v3;

  sub_1E3C4CD98();

  (v5)(v11);
  v12 = OUTLINED_FUNCTION_70_3();
  sub_1E3C4D450(v12);

  *(v2 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden) = 0;
  [v2 setNeedsStatusBarAppearanceUpdate];
  v13 = [v2 vuiView];
  if (v13)
  {
    v14 = v13;
    [v13 setNeedsLayout];

    sub_1E37F71B4();
    *(v2 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState) = 3;
    OUTLINED_FUNCTION_25_2();

    sub_1E37EFFB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E37F84F4()
{
  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_collectionImpressioner, &unk_1ECF296D0, &qword_1E429BAA0);

  OUTLINED_FUNCTION_84_4(OBJC_IVAR____TtC8VideosUI22PlaylistViewController_hostMetadataView);
  OUTLINED_FUNCTION_84_4(OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackDidBegin);
  OUTLINED_FUNCTION_84_4(OBJC_IVAR____TtC8VideosUI22PlaylistViewController_initialMediaLoaded);
  OUTLINED_FUNCTION_84_4(OBJC_IVAR____TtC8VideosUI22PlaylistViewController_indexDidChange);
  OUTLINED_FUNCTION_84_4(OBJC_IVAR____TtC8VideosUI22PlaylistViewController_onClosePressed);

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_boundaryObserver, &unk_1ECF296E0, &unk_1E4298030);
  v1 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController__contentAspectRatio;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD78, &qword_1E429F1C0);
  OUTLINED_FUNCTION_2();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

id sub_1E37F8654()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlaylistViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_1E37F88A4(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_21();
  v2[4] = (*(v3 + 432))();
  return sub_1E37BCF0C;
}

uint64_t sub_1E37F8944(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21();
  result = (*(v4 + 928))();
  if (result)
  {
    OUTLINED_FUNCTION_152();
    v6 = v2(a2);
    v7 = OUTLINED_FUNCTION_67_0();
    sub_1E34AF594(v7, v8);
    return v6 & 1;
  }

  return result;
}

void sub_1E37F89C8()
{
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_4_36();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_41_13(v4))
  {
    v5 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v5);
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v11 = OUTLINED_FUNCTION_22_4();
  v12(v11);
  OUTLINED_FUNCTION_36_3();
  if ((*((*MEMORY[0x1E69E7D40] & v13) + 0x3D0))())
  {
    OUTLINED_FUNCTION_152();
    v14();
    v15 = OUTLINED_FUNCTION_67_0();
    sub_1E34AF594(v15, v16);
  }

  OUTLINED_FUNCTION_12_5();
  if ((*(v17 + 864))())
  {
    sub_1E37F8B60(1);
  }

  sub_1E37F42D4();
  OUTLINED_FUNCTION_95();
}

void sub_1E37F8B60(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_interactionManager))
  {
    OUTLINED_FUNCTION_88_0();
    v5 = *(v4 + 352);
    v7 = v6;
    OUTLINED_FUNCTION_66_8();
    v8 = v5();

    if (v8)
    {
      if (a1)
      {
        v9 = 0.0;
      }

      else
      {
        v9 = 1.0;
      }

      v10 = v8;
      [v10 setVuiAlpha_];
      if (a1)
      {
        CGAffineTransformMakeScale(&v18, 1.1, 1.1);
        v12 = *&v18.a;
        v11 = *&v18.c;
        v13 = *&v18.tx;
      }

      else
      {
        v11 = xmmword_1E4297490;
        v12 = xmmword_1E4297540;
        v13 = 0uLL;
      }

      *&v18.a = v12;
      *&v18.c = v11;
      *&v18.tx = v13;
      [v10 setTransform_];

      v14 = objc_opt_self();
      OUTLINED_FUNCTION_2_4();
      v15 = swift_allocObject();
      *(v15 + 16) = a1 & 1;
      *(v15 + 24) = v10;
      *&v18.tx = sub_1E37FA7D4;
      *&v18.ty = v15;
      *&v18.a = MEMORY[0x1E69E9820];
      *&v18.b = 1107296256;
      *&v18.c = sub_1E378AEA4;
      *&v18.d = &block_descriptor_109;
      v16 = _Block_copy(&v18);
      v17 = v10;
      OUTLINED_FUNCTION_31_4();

      [v14 vui:v16 animateWithDuration:0.25 animations:?];

      _Block_release(v16);
    }
  }
}

void sub_1E37F8D40(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_21();
  if (((*(v3 + 864))() & 1) == 0)
  {

    sub_1E37F8B60(a2 & 1);
  }
}

void sub_1E37F8DCC()
{
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v2 = OUTLINED_FUNCTION_4_36();
  v3(v2);
  v4 = sub_1E41FFC94();
  v5 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_41_13(v5))
  {
    v6 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v6);
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v7, v8, v9, v10, v11, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v12 = OUTLINED_FUNCTION_22_4();
  v13(v12);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer))
  {

    sub_1E42004E4();
  }

  OUTLINED_FUNCTION_95();
}

void sub_1E37F8EDC()
{
  OUTLINED_FUNCTION_82_2();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v4 = OUTLINED_FUNCTION_24_10();
  v5(v4);
  v6 = sub_1E41FFC94();
  v7 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_77_3(v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    v8[1] = v2 & 1;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v9, v10, v11, v12, v13, 8u);
    OUTLINED_FUNCTION_55();
  }

  v14 = OUTLINED_FUNCTION_63_0();
  v15(v14);
  OUTLINED_FUNCTION_67_1();
  if ((*((*MEMORY[0x1E69E7D40] & v16) + 0x3B8))())
  {
    OUTLINED_FUNCTION_152();
    v0(v2 & 1);
    v17 = OUTLINED_FUNCTION_67_0();
    sub_1E34AF594(v17, v18);
  }

  OUTLINED_FUNCTION_95();
}

void sub_1E37F9060()
{
  OUTLINED_FUNCTION_82_2();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v4 = OUTLINED_FUNCTION_24_10();
  v5(v4);
  v6 = sub_1E41FFC94();
  v7 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_77_3(v7))
  {
    v8 = OUTLINED_FUNCTION_6_21();
    *v8 = 134217984;
    *(v8 + 4) = v2;
    OUTLINED_FUNCTION_60_3();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    OUTLINED_FUNCTION_55();
  }

  v14 = OUTLINED_FUNCTION_63_0();
  v15(v14);
  OUTLINED_FUNCTION_67_1();
  v16 = MEMORY[0x1E69E7D40];
  if (((*((*MEMORY[0x1E69E7D40] & v17) + 0x390))() & 1) == 0 || *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playlistType) == 1)
  {
    OUTLINED_FUNCTION_8();
    (*(v18 + 104))(v19 & 1);
  }

  if (v2)
  {
    (*((*v16 & *v0) + 0x2A8))(1);
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden) = 0;
  [v0 setNeedsStatusBarAppearanceUpdate];
  OUTLINED_FUNCTION_67_1();
  if (!(*((*v16 & v20) + 0x3E8))())
  {
    goto LABEL_11;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_152();
    (v0)(v2);
    v21 = OUTLINED_FUNCTION_67_0();
    sub_1E34AF594(v21, v22);
LABEL_11:
    OUTLINED_FUNCTION_95();
    return;
  }

  __break(1u);
}

void sub_1E37F92C4()
{
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_87_4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_4_36();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_41_13(v4))
  {
    v5 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v5);
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_21_0();
  }

  v11 = OUTLINED_FUNCTION_22_4();
  v12(v11);
  sub_1E37F71B4();
  OUTLINED_FUNCTION_95();
}

void sub_1E37F93B8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_8();
  sub_1E324FBDC();
  v7 = OUTLINED_FUNCTION_24_10();
  v8(v7);
  v9 = sub_1E41FFC94();
  v10 = sub_1E42067E4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = v5;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v3;
    _os_log_impl(&dword_1E323F000, v9, v10, "PlaylistViewController:: will change from page %lu to index %lu", v11, 0x16u);
    OUTLINED_FUNCTION_6_0();
  }

  v12 = OUTLINED_FUNCTION_63_0();
  v13(v12);
  OUTLINED_FUNCTION_36_3();
  if ((*((*MEMORY[0x1E69E7D40] & v14) + 0x390))())
  {
    v15 = sub_1E3C51370();
    if (v15)
    {
      v16 = sub_1E32AE9B0(v15);

      if (v16 >= 2)
      {
        OUTLINED_FUNCTION_12_5();
        v17 += 134;
        v18 = *v17;
        v19 = (*v17)();
        OUTLINED_FUNCTION_4_0();
        v20 = swift_allocObject();
        OUTLINED_FUNCTION_19_6(v20);

        OUTLINED_FUNCTION_76_3(0, v21, v22, sub_1E37F9A7C);

        v23 = OBJC_IVAR____TtC8VideosUI22PlaylistViewController_boundaryObserver;
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        sub_1E3294EE4(v1 + v23, &v30, &unk_1ECF296E0, &unk_1E4298030);
        if (v31)
        {
          v24 = sub_1E329504C(&v30, &v32);
          (v18)(v24);
          OUTLINED_FUNCTION_66_8();
          v25 = sub_1E3C51004();

          if (v25)
          {
            __swift_project_boxed_opaque_existential_1(&v32, v33);
            [v25 removeBoundaryTimeObserverWithToken_];

            swift_unknownObjectRelease();
          }

          __swift_destroy_boxed_opaque_existential_1(&v32);
        }

        else
        {
          sub_1E325F6F0(&v30, &unk_1ECF296E0, &unk_1E4298030);
        }

        if (*(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_interactionManager))
        {
          OUTLINED_FUNCTION_88_0();
          v27 = *(v26 + 704);
          v29 = v28;
          v27();
        }

        *(v1 + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState) = 2;
        sub_1E37EFFB4();
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E37F9728()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1E324FBDC();
  (*(v3 + 16))(v7, v8, v1);
  v9 = v0;
  v10 = sub_1E41FFC94();
  v11 = sub_1E42067E4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_6_21();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    OUTLINED_FUNCTION_17_21();
    OUTLINED_FUNCTION_79_6();
    OUTLINED_FUNCTION_78_2();
    if (v20)
    {
      v18 = v19;
    }

    if (v14 == 2)
    {
      v21 = v16;
    }

    else
    {
      v21 = v17;
    }

    if (v14 == 2)
    {
      v22 = v15;
    }

    else
    {
      v22 = v18;
    }

    v23 = sub_1E3270FC8(v21, v22, &v29);

    *(v12 + 4) = v23;
    OUTLINED_FUNCTION_12_17();
    _os_log_impl(v24, v25, v26, v27, v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_21_0();
  }

  (*(v3 + 8))(v7, v1);
  sub_1E37F8064();
  OUTLINED_FUNCTION_25_2();
}

id sub_1E37F9910(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1E42062A4();

  v6 = [a3 addBoundaryTimeObserverForTimes:v5 withHandler:a2];

  return v6;
}

uint64_t type metadata accessor for PlaylistViewController(uint64_t a1)
{
  result = qword_1EE29A0F0;
  if (!qword_1EE29A0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E37F99D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE287FA0;
  if (!qword_1EE287FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE287FA0);
  }

  return result;
}

unint64_t sub_1E37F9A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE23C240;
  if (!qword_1EE23C240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23C240);
  }

  return result;
}

unint64_t sub_1E37F9A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2AD88;
  if (!qword_1ECF2AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AD88);
  }

  return result;
}

unint64_t sub_1E37F9AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2AD90;
  if (!qword_1ECF2AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AD90);
  }

  return result;
}

void sub_1E37F9B3C(uint64_t a1)
{
  sub_1E37F9C6C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E37F9C6C(uint64_t a1)
{
  if (!qword_1EE289F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AD70, &qword_1E429F170);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289F10);
    }
  }
}

_BYTE *sub_1E37F9CE8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaylistViewController.BackgroundPlaybackState(uint64_t result, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
  }

  if (a2 < 0xFD)
  {
LABEL_17:
    v6 = *result;
    if (*result >= 2u)
    {
      v7 = (v6 & 0xFE) + 2147483646;
      if ((v7 & 0x7FFFFFFE) != 0)
      {
        return (v7 & 0x7FFFFFFE | v6 & 1u) - 1;
      }
    }

    return OUTLINED_FUNCTION_18();
  }

  v2 = a2 + 3;
  if (a2 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  switch(v4)
  {
    case 1:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 2:
      v5 = *(result + 1);
      if (!*(result + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    case 3:
      __break(1u);
      return result;
    case 4:
      v5 = *(result + 1);
      if (!v5)
      {
        goto LABEL_17;
      }

LABEL_15:
      result = (*result | (v5 << 8)) - 3;
      break;
    default:
      goto LABEL_17;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlaylistViewController.BackgroundPlaybackState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E37F9F58(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1E37F9F74(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

void sub_1E37F9F9C()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ((v1 & 1) == 0)
    {
      v4 = *(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView);
      if (v4)
      {
        v5 = v4;
        [v5 setVuiAlpha_];
      }
    }
  }
}

void sub_1E37FA01C()
{
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      v5 = objc_opt_self();
      OUTLINED_FUNCTION_4_0();
      v6 = swift_allocObject();
      OUTLINED_FUNCTION_19_6(v6);
      v12 = sub_1E37FAED0;
      v13 = v1;
      OUTLINED_FUNCTION_29_9();
      OUTLINED_FUNCTION_28_16();
      v10 = v7;
      v11 = &block_descriptor_12;
      v8 = _Block_copy(aBlock);

      [v5 vui:v8 animateWithDuration:0.25 animations:?];

      _Block_release(v8);
    }

    else
    {
    }
  }
}

void sub_1E37FA110(uint64_t a1, double a2)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView);
    v6 = v5;

    if (v5)
    {
      [v6 setVuiAlpha_];
    }
  }
}

uint64_t sub_1E37FA198(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_22_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 40))(v4, v5);
  return v4;
}

void sub_1E37FA1E8(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView);
    if (v4)
    {
      [v4 setVuiAlpha_];
    }

    if (*&v3[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_interactionManager])
    {
      OUTLINED_FUNCTION_88_0();
      v6 = *(v5 + 352);
      v8 = v7;
      OUTLINED_FUNCTION_66_8();
      v9 = v6();

      if (v9)
      {
        [v9 setVuiAlpha_];
      }
    }
  }
}

void sub_1E37FA2C4(char a1)
{
  v2 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  OUTLINED_FUNCTION_91_2();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = a1;
  v11 = sub_1E37FA4CC;
  v12 = v5;
  OUTLINED_FUNCTION_29_9();
  OUTLINED_FUNCTION_28_16();
  v9 = v6;
  v10 = &block_descriptor_93;
  v7 = _Block_copy(aBlock);

  [v2 vui:v7 animateWithDuration:0.25 animations:?];
  _Block_release(v7);
}

void sub_1E37FA3C0(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1 == 1)
    {
      OUTLINED_FUNCTION_12_5();
      if ((*(v4 + 912))())
      {
        OUTLINED_FUNCTION_8();
        v6 = *(v5 + 104);

        v6(1);
      }

      v3[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden] = 0;
      [v3 setNeedsStatusBarAppearanceUpdate];
      v3[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState] = 3;
      sub_1E37EFFB4();
      sub_1E37F71B4();
    }
  }
}

void sub_1E37FA4CC()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView);
    v5 = v4;

    if (v4)
    {
      v6 = 1.0;
      if (v1)
      {
        v6 = 0.0;
      }

      [v5 setVuiAlpha_];
    }
  }
}

void sub_1E37FA56C(float *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(**(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_presenter) + 152);

    v4(v1 == 0.0);

    OUTLINED_FUNCTION_36_3();
    v6 = *((*MEMORY[0x1E69E7D40] & v5) + 0x430);
    v7 = v6();
    v8 = sub_1E3C52F80();

    if ((v8 & 1) != 0 && v1 > 0.0)
    {
      v6();
      v9 = OUTLINED_FUNCTION_70_3();
      sub_1E3C52FF4(v9);
    }
  }
}

double sub_1E37FA6B4(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 != 2)
  {
    v3 = *(v1 + 16);
    if ([v3 isMuted] != (v2 & 1))
    {
      [v3 setMuted_];
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v6 = Strong;

        OUTLINED_FUNCTION_8();
        (*(v7 + 152))(v2 & 1);
      }
    }
  }

  return result;
}

uint64_t sub_1E37FA784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1E37FA7D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = 0.0;
  if (v1)
  {
    v3 = 1.0;
  }

  [*(v0 + 24) setAlpha_];
  if (v1)
  {
    v4 = xmmword_1E4297490;
    v5 = xmmword_1E4297540;
    v6 = 0uLL;
  }

  else
  {
    CGAffineTransformMakeScale(&v8, 1.1, 1.1);
    v5 = *&v8.a;
    v4 = *&v8.c;
    v6 = *&v8.tx;
  }

  *&v8.a = v5;
  *&v8.c = v4;
  *&v8.tx = v6;
  return [v2 setTransform_];
}

uint64_t sub_1E37FA93C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    v3 = (*(v2 + 544))();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_1E37FA9BC(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_71();
    v2 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_64();
    v4 = (*(v3 + 640))();
    OUTLINED_FUNCTION_26_3();
    v6 = (*((*v2 & v5) + 0x298))();
    if (__OFSUB__(v6, 1))
    {
      __break(1u);
    }

    else
    {
      if (v4 == v6 - 1)
      {
        [v1 dismissViewControllerAnimated:1 completion:0];
      }

      else
      {
        [objc_opt_self() isFeatureEnabled_];
      }
    }
  }
}

void sub_1E37FAAC0(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataContentHeight;
    OUTLINED_FUNCTION_3_0(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_metadataContentHeight, &v5);
    *v4 = v1;
    *(v4 + 8) = 0;
  }
}

unsigned __int8 *sub_1E37FAB34(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playlistType];

    return (v2 == 0);
  }

  return result;
}

void sub_1E37FAB80(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackTimer))
    {

      sub_1E42004E4();
    }

    v2[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState] = 2;
    sub_1E37EFFB4();
    v3 = *&v2[OBJC_IVAR____TtC8VideosUI22PlaylistViewController_headerView];
    if (v3)
    {
      v4 = v3;
      [v4 setVuiAlpha_];
    }
  }
}

void sub_1E37FAC38(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1E37F219C(v1, v2, v3);
  }
}

void sub_1E37FACA0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1E41FDF24();
    if (v2)
    {
      v3 = v2;
      sub_1E4205F14();
      sub_1E4207414();
      sub_1E375D7E8(v3, &v5, v4);

      sub_1E375D84C(v4);
      if (*(&v6 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && (v4[0] & 1) == 0)
        {
          sub_1E37F71B4();
        }

        goto LABEL_9;
      }
    }

    else
    {
      v5 = 0u;
      v6 = 0u;
    }

    sub_1E325F6F0(&v5, &unk_1ECF296E0, &unk_1E4298030);
LABEL_9:
    sub_1E37F79E4();
  }
}

void sub_1E37FADC0(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_1E37FAE10(unsigned __int8 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    *(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_transportVisibilityState) = v4;
    if ((*(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState) & 0xFE) == 2 || (*(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_playbackState) & 1) == 0)
    {
      *(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden) = 0;
    }

    else
    {
      *(Strong + OBJC_IVAR____TtC8VideosUI22PlaylistViewController_isStatusBarHidden) = v1 ^ 1;
    }

    [Strong setNeedsStatusBarAppearanceUpdate];
  }
}

BOOL OUTLINED_FUNCTION_77_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_83_2@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_1E34AF594(v4, v5);
}

uint64_t OUTLINED_FUNCTION_84_4@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];

  return sub_1E34AF594(v4, v5);
}

id sub_1E37FAFF8()
{
  v2 = objc_allocWithZone(OUTLINED_FUNCTION_2_35());
  OUTLINED_FUNCTION_1_67();
  sub_1E4205CB4();
  OUTLINED_FUNCTION_1_67();
  v3 = sub_1E4205C44();

  v4 = [v2 initWithRouterData:v3 appContext:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE18, &unk_1E429F640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001E425E570;
  sub_1E327F454(v0, inited + 48);
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  v7 = sub_1E4205CB4();
  sub_1E37FB194();
  v8 = sub_1E37FB1D8(v7);

  v9 = sub_1E39DE0A4(v1, v8);

  [v6 setSelectEventDataSource_];

  __swift_destroy_boxed_opaque_existential_1(v0);
  return v6;
}

unint64_t sub_1E37FB194()
{
  result = qword_1EE23B170;
  if (!qword_1EE23B170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B170);
  }

  return result;
}

unint64_t sub_1E37FB1D8(uint64_t a1)
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

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_1E327F454(*(a1 + 56) + 40 * v11, v30);
    *&v29 = v13;
    *(&v29 + 1) = v14;
    v26[2] = v29;
    v27[0] = v30[0];
    v27[1] = v30[1];
    v28 = v31;
    v15 = v29;
    sub_1E3251BE8(v27, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
    swift_dynamicCast();
    sub_1E329504C(&v23, v25);
    sub_1E329504C(v25, v26);
    sub_1E329504C(v26, &v24);
    result = sub_1E327D33C(v15, *(&v15 + 1));
    v16 = result;
    if (v17)
    {
      *(v2[6] + 16 * result) = v15;

      v18 = (v2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = sub_1E329504C(&v24, v18);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v15;
      result = sub_1E329504C(&v24, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
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
  return result;
}

id sub_1E37FB46C()
{
  v2 = objc_allocWithZone(OUTLINED_FUNCTION_2_35());
  OUTLINED_FUNCTION_1_67();
  sub_1E4205CB4();
  OUTLINED_FUNCTION_1_67();
  v3 = sub_1E4205C44();

  v4 = [v2 initWithRouterData:v3 appContext:0];

  sub_1E37FB194();
  v5 = v4;
  v6 = sub_1E39DE0A4(v1, v0);

  [v5 setSelectEventDataSource_];

  return v5;
}

id sub_1E37FB55C()
{
  v0 = sub_1E4205CB4();
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 appController];

  if (v2)
  {
    v3 = [v2 appContext];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_allocWithZone(VUIRouterDataSource);
  v5 = sub_1E37FB770(v0, v3);
  v6 = [objc_allocWithZone(VUIDocumentDataSource) init];
  [v6 setDocumentRef_];
  v7 = sub_1E4205F14();
  sub_1E37FB7F0(v7, v8, v6, &selRef_setControllerRef_);
  v9 = [objc_allocWithZone(VUIDocumentUIConfigurationModal) init];
  [v9 setType_];
  [v9 setAnimated_];
  v10 = sub_1E4205F14();
  sub_1E37FB7F0(v10, v11, v9, &selRef_setViewControllerDocumentIdentifier_);
  v12 = sub_1E4205F14();
  sub_1E37FB7F0(v12, v13, v9, &selRef_setViewControllerIdentifier_);
  [v9 setNavigationBarAdjustedToSizeClass_];
  [v6 setUiConfiguration_];
  v14 = [objc_allocWithZone(VUIEventDataSource) init];
  [v14 setDocumentDataSource_];
  [v5 setSelectEventDataSource_];

  return v5;
}

id sub_1E37FB770(uint64_t a1, void *a2)
{
  v4 = sub_1E4205C44();

  v5 = [v2 initWithRouterData:v4 appContext:a2];

  return v5;
}

void sub_1E37FB7F0(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1E4205ED4();

  [a3 *a4];
}

__n128 sub_1E37FB85C@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W4>, uint64_t a5@<X8>)
{
  v8 = j__OUTLINED_FUNCTION_51_1();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_50();
  sub_1E3EB9C0C(0, 0, 0, 0, 0, 1, v8 & 1, 2, v94, 0, 1, 0, 1, 0, 2, v71, SHIBYTE(v71));
  sub_1E375C2C0(v94, v99);
  v9 = j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_18();
  j__OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_7_50();
  sub_1E3EB9DAC(__src, v94, 0, 0, 1, 0, 0, 1, 0, 1, 0, 0, 256, 3, 0, v9 & 1, v72, v73);
  v10 = memcpy(__dst, __src, sizeof(__dst));
  v89 = v96;
  v90 = v97;
  v91[0] = *v98;
  *(v91 + 10) = *&v98[10];
  v11 = COERCE_DOUBLE((*(*a3 + 184))(v10));
  if (v13)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v11;
  }

  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12;
  }

  v92 = 0;
  memcpy(v105, __src, sizeof(v105));
  v106 = v14;
  v75 = v15;
  v107 = v15;
  v108 = 0;
  v109 = v96;
  v110 = v97;
  v111[0] = *v98;
  *(v111 + 10) = *&v98[10];
  sub_1E375C1CC(v105, v99);
  v16 = j__OUTLINED_FUNCTION_18();
  v17 = j__OUTLINED_FUNCTION_18();
  v18 = j_j__OUTLINED_FUNCTION_5_8();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = j__OUTLINED_FUNCTION_51_1();
  v26 = j__OUTLINED_FUNCTION_18();
  v27 = v26;
  v28 = sub_1E3CBD2B8(v26);
  v29 = j__OUTLINED_FUNCTION_18();
  v30 = j__OUTLINED_FUNCTION_5_8();
  sub_1E3EBA150(v99, v105, 0, 0, 1, v16, v17, 0, v25 & 1, v18, v20, v22, v24, v30, v31, v32, v33, 0, 1, v27 & 1, v28, v29 & 1);
  memcpy(v88, v99, sizeof(v88));
  v85[0] = *v101;
  *(v85 + 9) = *(&v101[4] + 1);
  v82 = *&v101[13];
  v86[0] = *v100;
  *(v86 + 3) = *&v100[3];
  v83 = *&v101[21];
  v84[0] = *v102;
  *(v84 + 14) = *&v102[14];
  v87 = 0;
  type metadata accessor for CollectionViewModel();
  v34 = swift_dynamicCastClass();
  if (v34)
  {
    v35 = v34;
    type metadata accessor for LayoutGrid();

    sub_1E3A2579C(v14);
    v36 = *(*v35 + 392);

    v38 = v36(v37);

    if (v38)
    {
      sub_1E3C2AE10();
      v40 = v39;
      (*(*v38 + 1640))();
    }

    else
    {
    }
  }

  if ((*(*a1 + 392))(v34))
  {
    OUTLINED_FUNCTION_30();
    (*(v41 + 176))(v103);

    if ((v104 & 1) == 0)
    {
      v18 = *v103;
      v24 = *&v103[2];
      v20 = 0.0;
      v22 = 0.0;
      goto LABEL_24;
    }
  }

  type metadata accessor for CollectionLayoutFactory();
  sub_1E3C11D38(a1, v42, v43, v44, v45, v77);
  v46.n128_u64[0] = v77[0];
  v47.n128_u64[0] = v77[1];
  v48.n128_u64[0] = v77[2];
  v49.n128_u64[0] = v77[3];
  j_nullsub_1(v46, v47, v48, v49);
  OUTLINED_FUNCTION_8_34();
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_30();
    v51 = *(v50 + 960);

    if (!v51(v52))
    {
LABEL_20:

      goto LABEL_21;
    }

    OUTLINED_FUNCTION_5_43();
    if (!(!v54 & v53))
    {
      OUTLINED_FUNCTION_0_41();
      if (v54)
      {
        if (v55 != 25)
        {
          goto LABEL_19;
        }

        v66 = OUTLINED_FUNCTION_4_37();
        sub_1E3CB4B04(v67, v68, v66, v69, v70);
      }

      else
      {
        v56 = OUTLINED_FUNCTION_4_37();
        sub_1E3AB7F40(v57, v58, v56, v59, v60);
      }

      OUTLINED_FUNCTION_8_34();
    }

LABEL_19:

    goto LABEL_20;
  }

LABEL_21:
  if (a4)
  {
    v24 = *sub_1E3C11B40();
  }

LABEL_24:
  v61 = sub_1E39C2438(a2);
  sub_1E375C31C(v94);
  memcpy(v77, __dst, 0x78uLL);
  *&v77[15] = v14;
  v77[16] = v75;
  v78 = v92;
  v79 = v89;
  v80 = v90;
  *v81 = v91[0];
  *&v81[10] = *(v91 + 10);
  sub_1E37E6F2C(v77);
  v62 = v87;
  memcpy(a5, v88, 0xC8uLL);
  *(a5 + 200) = v14;
  *(a5 + 208) = v75;
  *(a5 + 216) = v62;
  *(a5 + 217) = v86[0];
  *(a5 + 220) = *(v86 + 3);
  *(a5 + 224) = v18;
  *(a5 + 232) = v22;
  *(a5 + 240) = v24;
  *(a5 + 248) = v20;
  *(a5 + 256) = v85[0];
  *(a5 + 265) = *(v85 + 9);
  *(a5 + 281) = v61 & 1;
  result = v82;
  v64 = v83;
  v65 = v84[0];
  *(a5 + 328) = *(v84 + 14);
  *(a5 + 298) = v64;
  *(a5 + 314) = v65;
  *(a5 + 282) = result;
  return result;
}

uint64_t sub_1E37FBE98()
{
  v0 = sub_1E4207784();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E37FBEEC(char a1)
{
  if (a1)
  {
    return 0x676E69646E6570;
  }

  else
  {
    return 0x656C6269736976;
  }
}

uint64_t sub_1E37FBF28(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x676E69646E6570;
  }

  else
  {
    v2 = 0x656C6269736976;
  }

  if (a2)
  {
    v3 = 0x676E69646E6570;
  }

  else
  {
    v3 = 0x656C6269736976;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1E42079A4();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1E37FBFC4(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E37FC024(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E37FC098@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E37FBE98();
  *a1 = result;
  return result;
}

uint64_t sub_1E37FC0C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E37FBEEC(*v1);
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_1E37FC0F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E37FC16C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E37FC0F8();
  *a1 = result;
  return result;
}

uint64_t sub_1E37FC1C4(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E37FC234()
{
  OUTLINED_FUNCTION_11_3(v0 + OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue__plays, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE20, &unk_1E429F6A0);
  sub_1E4200644();
  return swift_endAccess();
}

void sub_1E37FC2A0(unint64_t a1, int a2)
{
  v3 = v2;
  v130 = a2;
  p_aBlock = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v131 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v126 - v11;
  v135 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v137 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_3();
  v134 = v15;
  v133 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_3();
  v132 = v18;
  if (a1 >> 62)
  {
    goto LABEL_139;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v136 = v17;
      v127 = v12;
      v128 = v7;
      v129 = p_aBlock;
      v19 = OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_model;
      OUTLINED_FUNCTION_4_38(v3 + OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_model);
      v20 = sub_1E37FD33C(0, *(v3 + v19));
      swift_endAccess();
      aBlock = v20;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE30, &qword_1E429F6B0);
      sub_1E4148C68(sub_1E3800B78, v21, &v161);

      v12 = v161;
      OUTLINED_FUNCTION_4_38(v3 + v19);
      v146 = v19;
      v22 = sub_1E37FD33C(1, *(v3 + v19));
      swift_endAccess();
      v160 = v22;
      v145 = v21;
      sub_1E4148C68(sub_1E3800B78, v21, &aBlock);

      v160 = v12;
      sub_1E37FE584(aBlock);
      p_aBlock = v160;
      sub_1E3FCC2B4(v160);
      v7 = v23;
      v24 = sub_1E32AE9B0(p_aBlock);

      if (!v24)
      {
        v25 = sub_1E37FD390(2, v7);
        p_aBlock = v26;
        v28 = v27;
        v12 = v29;
        if ((v29 & 1) == 0)
        {
          goto LABEL_5;
        }

        sub_1E42079E4();
        swift_unknownObjectRetain_n();
        v31 = swift_dynamicCastClass();
        if (!v31)
        {
          swift_unknownObjectRelease();
          v31 = MEMORY[0x1E69E7CC0];
        }

        v32 = *(v31 + 16);

        if (__OFSUB__(v12 >> 1, v28))
        {
          __break(1u);
LABEL_142:
          swift_unknownObjectRelease();
LABEL_5:
          sub_1E37FE630(v25, p_aBlock, v28, v12);
          v7 = v30;
LABEL_12:
          swift_unknownObjectRelease();
          goto LABEL_13;
        }

        if (v32 != (v12 >> 1) - v28)
        {
          goto LABEL_142;
        }

        v7 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v7)
        {
          v7 = MEMORY[0x1E69E7CC0];
          goto LABEL_12;
        }
      }

LABEL_13:
      v33 = MEMORY[0x1E69E7CC0];
      v160 = MEMORY[0x1E69E7CC0];
      v161 = MEMORY[0x1E69E7CC0];
      v34 = sub_1E32AE9B0(v7);
      v144 = v3;
      v142 = v34;
      if (!v34)
      {
        v35 = v33;
        v150 = v33;
LABEL_86:

        aBlock = v33;
        p_aBlock = v150;
        v69 = sub_1E32AE9B0(v150);
        v7 = 0;
        v70 = p_aBlock & 0xC000000000000001;
        v71 = p_aBlock & 0xFFFFFFFFFFFFFF8;
        while (v69 != v7)
        {
          if (v70)
          {
            v72 = MEMORY[0x1E6911E60](v7, v150);
          }

          else
          {
            if (v7 >= *(v71 + 16))
            {
              goto LABEL_132;
            }

            v72 = *(v150 + 8 * v7 + 32);
          }

          v12 = v72;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_131;
          }

          p_aBlock = v72;
          sub_1E4205224();
          if (v73)
          {
          }

          else
          {
            p_aBlock = &aBlock;
            sub_1E4207544();
            sub_1E4207584();
            sub_1E4207594();
            sub_1E4207554();
          }

          ++v7;
        }

        aBlock = sub_1E38005A8(v74);
        sub_1E37FE70C(&aBlock, sub_1E37FF3F8, sub_1E37FEC80);
        v151 = 0;

        v75 = aBlock;
        v76 = v146;
        OUTLINED_FUNCTION_11_3(v3 + v146, &aBlock);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v159 = *(v3 + v76);
        p_aBlock = &v159;
        sub_1E37FE7A0(v75, 0, isUniquelyReferenced_nonNull_native);
        *(v3 + v76) = v159;
        swift_endAccess();
        aBlock = v33;
        v78 = sub_1E32AE9B0(v35);
        v79 = 0;
        v7 = v35 & 0xC000000000000001;
        while (v78 != v79)
        {
          if (v7)
          {
            v80 = MEMORY[0x1E6911E60](v79, v35);
          }

          else
          {
            if (v79 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_134;
            }

            v80 = *(v35 + 8 * v79 + 32);
          }

          v12 = v80;
          if (__OFADD__(v79, 1))
          {
            goto LABEL_133;
          }

          p_aBlock = v80;
          sub_1E4205224();
          if (v81)
          {
          }

          else
          {
            p_aBlock = &aBlock;
            sub_1E4207544();
            sub_1E4207584();
            sub_1E4207594();
            sub_1E4207554();
          }

          ++v79;
        }

        v149 = v35;
        v82 = aBlock;
        v159 = v33;
        v83 = sub_1E32AE9B0(aBlock);
        v84 = 0;
        v3 += OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_mostRecentStamp;
        v7 = &qword_1ECF3D8E0;
        while (v83 != v84)
        {
          if ((v82 & 0xC000000000000001) != 0)
          {
            v85 = MEMORY[0x1E6911E60](v84, v82);
          }

          else
          {
            if (v84 >= *(v82 + 16))
            {
              goto LABEL_136;
            }

            v85 = *(v82 + 8 * v84 + 32);
          }

          v12 = v85;
          if (__OFADD__(v84, 1))
          {
            goto LABEL_135;
          }

          v86 = sub_1E4205224();
          if (v87)
          {
            __break(1u);
            v125 = v151;
LABEL_145:

            __break(1u);
            return;
          }

          v88 = v86;
          v89 = *(v3 + 8);
          aBlock = *v3;
          LOBYTE(v153) = v89;
          v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8E0, &qword_1E42E35B0);
          p_aBlock = &aBlock;
          sub_1E4148C68(sub_1E37FD4C8, v90, &v158);
          if (v158 >= v88)
          {
          }

          else
          {
            p_aBlock = &v159;
            sub_1E4207544();
            sub_1E4207584();
            sub_1E4207594();
            sub_1E4207554();
          }

          ++v84;
        }

        aBlock = sub_1E38005A8(v91);
        v92 = v151;
        sub_1E37FE70C(&aBlock, sub_1E37FED74, sub_1E37FEB8C);
        if (v92)
        {
          v125 = v92;
          goto LABEL_145;
        }

        v93 = aBlock;
        v94 = v144;
        v95 = v146;
        OUTLINED_FUNCTION_11_3(v144 + v146, &aBlock);
        v96 = swift_isUniquelyReferenced_nonNull_native();
        v159 = *(v94 + v95);
        sub_1E37FE7A0(v93, 1, v96);
        *(v94 + v95) = v159;
        swift_endAccess();
        v149 = sub_1E32ADE38();
        v97 = sub_1E4206A04();
        v156 = sub_1E380063C;
        v157 = v94;
        aBlock = MEMORY[0x1E69E9820];
        v153 = 1107296256;
        v154 = sub_1E378AEA4;
        v155 = &block_descriptor_13;
        v98 = _Block_copy(&aBlock);

        v99 = v132;
        sub_1E4203FE4();
        aBlock = MEMORY[0x1E69E7CC0];
        v100 = sub_1E37E7A8C();
        v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
        OUTLINED_FUNCTION_47();
        sub_1E32752B0(v102, v103, &qword_1E429B000, v104);
        v105 = v134;
        v150 = v101;
        v106 = v135;
        v151 = v100;
        sub_1E42072E4();
        MEMORY[0x1E6911380](0, v99, v105, v98);
        _Block_release(v98);

        v107 = v137 + 8;
        v108 = *(v137 + 8);
        v108(v105, v106);
        v109 = *(v136 + 8);
        v136 += 8;
        v109(v99, v133);
        OUTLINED_FUNCTION_4_38(v94 + v95);
        v110 = sub_1E37FD33C(1, *(v94 + v95));
        swift_endAccess();
        v159 = v110;
        OUTLINED_FUNCTION_3_35();

        v111 = sub_1E32AE9B0(aBlock);

        if (v111)
        {
          v147 = v109;
          v148 = v108;
          v137 = v107;
          if (v130)
          {
            v112 = 2;
            do
            {
              sub_1E37FD5A0(0);
              --v112;
            }

            while (v112);
          }

          v113 = sub_1E4206A04();
          v114 = v131;
          sub_1E4204004();
          v115.n128_f64[0] = sub_1E37FD4D0();
          v116 = v127;
          sub_1E4204074(v115);
          v117 = *(v128 + 8);
          v118 = v129;
          v117(v114, v129);
          v156 = sub_1E3800B7C;
          v157 = v94;
          aBlock = MEMORY[0x1E69E9820];
          v153 = 1107296256;
          v154 = sub_1E378AEA4;
          v155 = &block_descriptor_5;
          v119 = _Block_copy(&aBlock);

          v120 = v132;
          sub_1E4203FE4();
          aBlock = MEMORY[0x1E69E7CC0];
          v121 = v134;
          v122 = v135;
          sub_1E42072E4();
          MEMORY[0x1E69112E0](v116, v120, v121, v119);
          _Block_release(v119);

          v148(v121, v122);
          v147(v120, v133);
          v117(v116, v118);
        }

        return;
      }

      v12 = 0;
      v141 = v7 & 0xC000000000000001;
      v139 = v7 & 0xFFFFFFFFFFFFFF8;
      v138 = v7 + 32;
      v35 = MEMORY[0x1E69E7CC0];
      v150 = MEMORY[0x1E69E7CC0];
      v140 = v7;
      while (1)
      {
        if (v141)
        {
          v36 = MEMORY[0x1E6911E60](v12, v7);
        }

        else
        {
          if (v12 >= *(v139 + 16))
          {
            goto LABEL_138;
          }

          v36 = *(v138 + 8 * v12);
        }

        if (__OFADD__(v12++, 1))
        {
          goto LABEL_137;
        }

        v149 = v35;
        p_aBlock = v36;
        v38 = v36;
        v39 = sub_1E4205204();
        if (v40)
        {
          break;
        }

        v35 = v149;
LABEL_83:
        if (v12 == v142)
        {
          goto LABEL_86;
        }
      }

      v41 = v39;
      v42 = v40;
      v148 = v38;
      v43 = v146;
      OUTLINED_FUNCTION_4_38(v3 + v146);
      p_aBlock = *(v3 + v43);
      if (*(p_aBlock + 16) && (v44 = sub_1E37FE540(0), (v45 & 1) != 0))
      {
        v46 = *(*(p_aBlock + 56) + 8 * v44);
      }

      else
      {
        v46 = 0;
      }

      swift_endAccess();
      v159 = v46;
      OUTLINED_FUNCTION_3_35();

      v7 = aBlock;
      if (aBlock >> 62)
      {
        v47 = sub_1E4207384();
      }

      else
      {
        v47 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v143 = v12;
      if (!v47)
      {
        LODWORD(v147) = 0;
        goto LABEL_50;
      }

      LODWORD(v147) = 0;
      v48 = 0;
      v151 = v7 & 0xFFFFFFFFFFFFFF8;
      do
      {
        v12 = v48;
        while (1)
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v49 = MEMORY[0x1E6911E60](v12, v7);
          }

          else
          {
            if (v12 >= *(v151 + 16))
            {
              goto LABEL_129;
            }

            v49 = *(v7 + 8 * v12 + 32);
          }

          v50 = v49;
          v48 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
            goto LABEL_128;
          }

          p_aBlock = v49;
          v51 = sub_1E4205204();
          if (!v52)
          {
            goto LABEL_41;
          }

          p_aBlock = v52;
          if (v51 == v41 && v52 == v42)
          {
            break;
          }

          v3 = OUTLINED_FUNCTION_11_33(v51);

          if (v3)
          {
            goto LABEL_44;
          }

LABEL_41:

          ++v12;
          if (v48 == v47)
          {
            goto LABEL_50;
          }
        }

LABEL_44:
        v54 = v148;
        p_aBlock = &v161;
        MEMORY[0x1E6910BF0]();
        v3 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v3 >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          OUTLINED_FUNCTION_12_21();
        }

        sub_1E4206324();

        v150 = v161;
        LODWORD(v147) = 1;
      }

      while (v48 != v47);
LABEL_50:

      v55 = v144;
      v56 = v146;
      OUTLINED_FUNCTION_4_38(v144 + v146);
      p_aBlock = *(v55 + v56);
      if (*(p_aBlock + 16) && (v57 = sub_1E37FE540(1), (v58 & 1) != 0))
      {
        v59 = *(*(p_aBlock + 56) + 8 * v57);
      }

      else
      {
        v59 = 0;
      }

      swift_endAccess();
      v159 = v59;
      OUTLINED_FUNCTION_3_35();

      v7 = aBlock;
      if (aBlock >> 62)
      {
        v60 = sub_1E4207384();
        if (v60)
        {
          goto LABEL_56;
        }

LABEL_78:

        v12 = v143;
        if (v147)
        {

          v3 = v144;
          v33 = MEMORY[0x1E69E7CC0];
          v35 = v149;
          v7 = v140;
        }

        else
        {
          p_aBlock = &v160;
          MEMORY[0x1E6910BF0](v68);
          v3 = v144;
          v33 = MEMORY[0x1E69E7CC0];
          v7 = v140;
          if (*((v160 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E42062F4();
          }

          sub_1E4206324();
          v35 = v160;
        }

        goto LABEL_83;
      }

      v60 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v60)
      {
        goto LABEL_78;
      }

LABEL_56:
      v61 = 0;
      v151 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_57:
      v12 = v61;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v62 = MEMORY[0x1E6911E60](v12, v7);
        }

        else
        {
          if (v12 >= *(v151 + 16))
          {
            goto LABEL_130;
          }

          v62 = *(v7 + 8 * v12 + 32);
        }

        v63 = v62;
        v61 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        p_aBlock = v62;
        v64 = sub_1E4205204();
        if (v65)
        {
          p_aBlock = v65;
          if (v64 == v41 && v65 == v42)
          {

LABEL_72:
            v67 = v148;
            p_aBlock = &v160;
            MEMORY[0x1E6910BF0]();
            v3 = *((v160 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v3 >= *((v160 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              OUTLINED_FUNCTION_12_21();
            }

            sub_1E4206324();

            v149 = v160;
            LODWORD(v147) = 1;
            if (v61 == v60)
            {

              v3 = v144;
              v33 = MEMORY[0x1E69E7CC0];
              v35 = v149;
              v7 = v140;
              v12 = v143;
              goto LABEL_83;
            }

            goto LABEL_57;
          }

          v3 = OUTLINED_FUNCTION_11_33(v64);

          if (v3)
          {
            goto LABEL_72;
          }
        }

        ++v12;
        if (v61 == v60)
        {
          goto LABEL_78;
        }
      }

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
      v123 = v17;
      v124 = sub_1E4207384();
      v17 = v123;
    }

    while (v124);
  }
}

uint64_t sub_1E37FD33C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1E37FE540(a1 & 1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E37FD390(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v10 = sub_1E4207704();

    return v10;
  }

  v4 = sub_1E32AE9B0(a2);
  v5 = sub_1E380055C(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7 < 0)
  {
    goto LABEL_16;
  }

  sub_1E37EFABC(0, a2);
  sub_1E37EFABC(v7, a2);
  if ((a2 & 0xC000000000000001) != 0 && v7)
  {
    sub_1E4205234();

    v8 = 0;
    do
    {
      v9 = v8 + 1;
      sub_1E42074F4();
      v8 = v9;
    }

    while (v7 != v9);
  }

  else
  {
  }

  if (a2 >> 62)
  {
    goto LABEL_17;
  }

  return a2 & 0xFFFFFFFFFFFFFF8;
}

double sub_1E37FD4D0()
{
  v1 = OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_model;
  OUTLINED_FUNCTION_5_44(v0 + OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_model, v6);
  v2 = sub_1E37FD33C(0, *(v0 + v1));
  swift_endAccess();
  v6[0] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE30, &qword_1E429F6B0);
  sub_1E32752B0(&qword_1ECF2AE58, &unk_1ECF3DAE0, &qword_1E429F650, MEMORY[0x1E69E6340]);
  v4 = sub_1E4149048(v3);

  result = 1.0;
  if (v4)
  {
    return 0.0;
  }

  return result;
}

void sub_1E37FD5A0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_3();
  v99 = v8;
  v100 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_3();
  v98 = v12;
  v101 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v96 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v97 = &v90 - v18;
  v19 = OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_model;
  OUTLINED_FUNCTION_5_44(v1 + OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_model, aBlock);
  v20 = sub_1E37FD33C(1, *(v1 + v19));
  swift_endAccess();
  aBlock[0] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE30, &qword_1E429F6B0);
  sub_1E4148C68(sub_1E3800B78, v21, v107);

  v22 = v107[0];
  if (!sub_1E32AE9B0(v107[0]))
  {

    return;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {

    v23 = MEMORY[0x1E6911E60](0, v22);
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v23 = *(v22 + 32);
  }

  if (!sub_1E32AE9B0(v22))
  {
    __break(1u);
    goto LABEL_57;
  }

  v92 = v10;
  v24 = sub_1E37FDFF8(v22);
  if (!v24)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    return;
  }

  v25 = v24;
  if (!sub_1E32AE9B0(v22))
  {
    goto LABEL_66;
  }

  if (sub_1E32AE9B0(v22) < 1)
  {
    goto LABEL_58;
  }

  v26 = sub_1E32AE9B0(v22);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v102 = v23;
  v23 = v107;
  sub_1E3797CDC(v28, 1);
  sub_1E38001B4(0, 1, 0);
  v22 = v107[0];

  v107[0] = v22;
  v29 = sub_1E32AE9B0(v22);
  v91 = v6;
  LODWORD(v94) = a1;
  if (!v29)
  {
    goto LABEL_14;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    goto LABEL_62;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_64;
  }

  while (1)
  {
    v30 = OUTLINED_FUNCTION_8_35();
    OUTLINED_FUNCTION_5_44(v30, v31);
    v32 = sub_1E37FD33C(0, *(v2 + v19));
    swift_endAccess();
    v106 = v32;
    sub_1E4148C68(sub_1E3800B78, v21, aBlock);

    v33 = sub_1E32AE9B0(aBlock[0]);

    if (v33)
    {
LABEL_14:
      v25 = v4;
      v4 = 0;
      goto LABEL_22;
    }

    if (!sub_1E32AE9B0(v22))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v34 = sub_1E37FDFF8(v22);
    if (!v34)
    {
      goto LABEL_76;
    }

    v35 = v34;
    if (!sub_1E32AE9B0(v22))
    {
      goto LABEL_74;
    }

    v25 = v4;
    if (sub_1E32AE9B0(v22) < 1)
    {
      goto LABEL_72;
    }

    v36 = sub_1E32AE9B0(v22);
    v27 = __OFSUB__(v36, 1);
    v37 = v36 - 1;
    if (v27)
    {
      goto LABEL_73;
    }

    v4 = v35;
    sub_1E3797CDC(v37, 1);
    sub_1E38001B4(0, 1, 0);
    v22 = v107[0];
LABEL_22:
    v23 = sub_1E37FE074(2, v22);
    v22 = v38;
    v6 = v39;
    a1 = v40;
    v103 = v14;
    v95 = v4;
    if ((v40 & 1) == 0)
    {
      goto LABEL_23;
    }

    v14 = v21;
    sub_1E42079E4();
    swift_unknownObjectRetain_n();
    v42 = swift_dynamicCastClass();
    if (!v42)
    {
      swift_unknownObjectRelease();
      v42 = MEMORY[0x1E69E7CC0];
    }

    v43 = *(v42 + 16);

    if (__OFSUB__(a1 >> 1, v6))
    {
LABEL_67:
      __break(1u);
LABEL_68:
      swift_unknownObjectRelease();
      v21 = v14;
      v14 = v103;
      v4 = v95;
LABEL_23:
      sub_1E37FE630(v23, v22, v6, a1);
      a1 = v41;
LABEL_30:
      swift_unknownObjectRelease();
      goto LABEL_31;
    }

    if (v43 != (a1 >> 1) - v6)
    {
      goto LABEL_68;
    }

    a1 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v21 = v14;
    v14 = v103;
    v4 = v95;
    if (!a1)
    {
      a1 = MEMORY[0x1E69E7CC0];
      goto LABEL_30;
    }

LABEL_31:
    v44 = OUTLINED_FUNCTION_8_35();
    OUTLINED_FUNCTION_5_44(v44, v45);
    v46 = *(v2 + v19);

    v47 = sub_1E37FD33C(0, v46);
    swift_endAccess();
    aBlock[0] = v47;
    sub_1E4148C68(sub_1E37FE1C4, v21, &v106);

    v48 = v106;
    sub_1E37EFABC(0, v106);
    if (sub_1E32AE9B0(v48) < 0)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v49 = sub_1E32AE9B0(v48);
    v6 = v49 + 1;
    if (!__OFADD__(v49, 1))
    {
      break;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    MEMORY[0x1E6911E60](0, v22);
    swift_unknownObjectRelease();
  }

  v22 = v102;
  sub_1E3797CDC(v6, 1);
  v102 = v22;
  sub_1E3800070(0, 0, 1, v22);
  v23 = v106;
  v93 = a1;
  if (v4)
  {
    sub_1E37EFABC(0, v106);
    if (sub_1E32AE9B0(v23) < 0)
    {
LABEL_64:
      __break(1u);
    }

    else
    {
      v50 = sub_1E32AE9B0(v23);
      v6 = v50 + 1;
      if (!__OFADD__(v50, 1))
      {
        v51 = v21;
        v52 = v4;
        v53 = v4;
        sub_1E3797CDC(v6, 1);
        sub_1E3800070(0, 0, 1, v53);
        v23 = v106;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v52 = 0;
  v51 = v21;
LABEL_38:
  v54 = sub_1E37FD390(2, v23);
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v90 = v25;
  if ((v59 & 1) == 0)
  {
LABEL_39:
    sub_1E37FE630(v54, v56, v58, v60);
    v62 = v61;
    v63 = v51;
    v64 = v93;
    goto LABEL_48;
  }

  sub_1E42079E4();
  swift_unknownObjectRetain_n();
  v65 = swift_dynamicCastClass();
  if (!v65)
  {
    swift_unknownObjectRelease();
    v65 = MEMORY[0x1E69E7CC0];
  }

  v66 = *(v65 + 16);

  if (__OFSUB__(v60 >> 1, v58))
  {
    __break(1u);
    goto LABEL_70;
  }

  if (v66 != (v60 >> 1) - v58)
  {
LABEL_70:
    swift_unknownObjectRelease();
    v14 = v103;
    goto LABEL_39;
  }

  v62 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v14 = v103;
  v63 = v51;
  v64 = v93;
  if (v62)
  {
    if (!v52)
    {
      goto LABEL_50;
    }

LABEL_49:
    v67 = sub_1E4205224();
    if (v68)
    {
      goto LABEL_50;
    }

    v69 = 0;
  }

  else
  {
    v62 = MEMORY[0x1E69E7CC0];
LABEL_48:
    swift_unknownObjectRelease();
    if (v52)
    {
      goto LABEL_49;
    }

LABEL_50:
    v67 = sub_1E4205224();
  }

  v70 = v2 + OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_mostRecentStamp;
  *v70 = v67;
  *(v70 + 8) = v69 & 1;
  v71 = OUTLINED_FUNCTION_8_35();
  OUTLINED_FUNCTION_11_3(v71, v72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v105 = *(v2 + v19);
  sub_1E37FE7A0(v62, 0, isUniquelyReferenced_nonNull_native);
  *(v2 + v19) = v105;
  swift_endAccess();

  v74 = OUTLINED_FUNCTION_8_35();
  OUTLINED_FUNCTION_11_3(v74, v75);
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *(v2 + v19);
  sub_1E37FE7A0(v64, 1, v76);
  v77 = v105;
  *(v2 + v19) = v105;
  swift_endAccess();
  v105 = sub_1E37FD33C(0, v77);
  sub_1E4148C68(sub_1E3800B78, v63, aBlock);

  sub_1E37FC1C4(aBlock[0]);
  if (v94)
  {
    v78 = MEMORY[0x1E69E7CC0];
    sub_1E32ADE38();
    v79 = sub_1E4206A04();
    v80 = v96;
    sub_1E4204004();
    v81.n128_f64[0] = sub_1E37FD4D0();
    v82 = v97;
    sub_1E4204074(v81);
    v94 = *(v14 + 8);
    v103 = v14 + 8;
    v94(v80, v101);
    aBlock[4] = sub_1E38006EC;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E378AEA4;
    aBlock[3] = &block_descriptor_8;
    v83 = _Block_copy(aBlock);

    v84 = v90;
    v85 = v98;
    sub_1E4203FE4();
    aBlock[0] = v78;
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v86, v87, &qword_1E429B000, v88);
    v89 = v99;
    sub_1E42072E4();
    MEMORY[0x1E69112E0](v82, v85, v89, v83);
    _Block_release(v83);

    (*(v91 + 8))(v89, v84);
    (*(v92 + 8))(v85, v100);
    v94(v82, v101);
  }

  else
  {
  }
}

id sub_1E37FDFF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    result = sub_1E4207384();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1E6911E60](0, a1);
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(a1 + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E37FE074(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_1E32AE9B0(a2);
  v5 = sub_1E380055C(v4, -a1, 0);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_1E37EFABC(v7, a2);
  result = sub_1E37EFABC(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    sub_1E4205234();

    result = v7;
    do
    {
      v9 = result + 1;
      sub_1E42074F4();
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = sub_1E4207704();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1E37FE1D0(char a1)
{
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_model, v7);
  v4 = sub_1E37FE260(v6, a1 & 1);
  if (*v3)
  {
    *v3 = MEMORY[0x1E69E7CC0];
  }

  (v4)(v6, 0);
  return swift_endAccess();
}

void (*sub_1E37FE260(void *a1, char a2))(void *a1)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_1E38002B0(v4, a2 & 1);
  return sub_1E376FAC0;
}

uint64_t sub_1E37FE2C4()
{
  v1 = OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue__plays;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE20, &unk_1E429F6A0);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E37FE378()
{
  v0 = swift_allocObject();
  sub_1E37FE3B0();
  return v0;
}

uint64_t sub_1E37FE3B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE20, &unk_1E429F6A0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - v5;
  v7 = OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue__plays;
  v10[1] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DAE0, &qword_1E429F650);
  sub_1E4200634();
  (*(v3 + 32))(v0 + v7, v6, v1);
  *(v0 + OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_model) = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_maximumVisiblePlays) = 2;
  v8 = v0 + OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_mostRecentStamp;
  *v8 = 0;
  *(v8 + 8) = 1;
  return v0;
}

uint64_t sub_1E37FE4E4(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_1E4205234();
      result = sub_1E4206314();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

unint64_t sub_1E37FE540(char a1)
{
  v3 = sub_1E37FC024(*(v1 + 40), a1 & 1);

  return sub_1E37FE90C(a1 & 1, v3);
}

uint64_t sub_1E37FE584(unint64_t a1)
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
  sub_1E38009E8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

void sub_1E37FE630(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = (2 * ((v8 - 32) / 8)) | 1;
    }

    if (v4 != a3)
    {
      sub_1E4205234();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1E37FE70C(uint64_t *a1, uint64_t (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a3)
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1E34AF5E0(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_1E37FEA94(v10, a2, a3);
  return sub_1E4207554();
}

unint64_t sub_1E37FE7A0(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E37FE540(a2 & 1);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE48, &qword_1E429F798);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1E37FE540(a2 & 1);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    *(v14[7] + 8 * v10) = a1;
  }

  else
  {

    return sub_1E37FE8C4(v10, a2 & 1, a1, v14);
  }
}

unint64_t sub_1E37FE8C4(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2 & 1;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1E37FE90C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x676E69646E6570;
    }

    else
    {
      v6 = 0x656C6269736976;
    }

    while (1)
    {
      v7 = *(*(v2 + 48) + v4) ? 0x676E69646E6570 : 0x656C6269736976;
      if (v7 == v6)
      {
        break;
      }

      v8 = sub_1E42079A4();
      swift_bridgeObjectRelease_n();
      if ((v8 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  return v4;
}

void *sub_1E37FEA14(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t sub_1E37FEA94(uint64_t a1, uint64_t (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t a3)
{
  v7 = *(a1 + 8);
  result = sub_1E4207914();
  if (result < v7)
  {
    v9 = result;
    a3 = sub_1E37FE4E4(v7 / 2);
    v11[0] = v10;
    v11[1] = v7 / 2;
    result = a2(v11, v12, a1, v9);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    return (a3)(0, v7, 1, a1);
  }

  return result;
}

void sub_1E37FEB8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v9 = v7;
      v22 = v6;
      do
      {
        v10 = *v6;
        v11 = v8;
        v12 = v10;
        v13 = sub_1E4205224();
        if (v14)
        {
          __break(1u);
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          return;
        }

        v15 = v13;
        v16 = sub_1E4205224();
        if (v17)
        {
          goto LABEL_13;
        }

        v18 = v16;

        if (v15 >= v18)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_14;
        }

        v19 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v19;
        v6 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v22 + 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1E37FEC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v9 = v7;
      v22 = v6;
      do
      {
        v10 = *v6;
        v11 = v8;
        v12 = v10;
        v13 = sub_1E4205224();
        if (v14)
        {
          __break(1u);
LABEL_13:
          __break(1u);
LABEL_14:
          __break(1u);
          return;
        }

        v15 = v13;
        v16 = sub_1E4205224();
        if (v17)
        {
          goto LABEL_13;
        }

        v18 = v16;

        if (v18 >= v15)
        {
          break;
        }

        if (!v5)
        {
          goto LABEL_14;
        }

        v19 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v19;
        v6 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v22 + 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1E37FED74(void ***a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = v5++;
      if (v5 < v4)
      {
        v112 = v6;
        v8 = *a3;
        v9 = v5;
        v10 = *(*a3 + 8 * v7);
        v11 = *(*a3 + 8 * v5);
        v12 = v10;
        v117 = sub_1E4205224();
        if (v13)
        {
          goto LABEL_142;
        }

        v115 = sub_1E4205224();
        if (v14)
        {
          goto LABEL_143;
        }

        v108 = 8 * v7;
        v15 = (v8 + 8 * v7 + 16);
        v110 = v7;
        v16 = v7 + 2;
        v5 = v9;
        while (1)
        {
          v17 = v16;
          if (v5 + 1 >= v4)
          {
            break;
          }

          v18 = v4;
          v19 = v5;
          v20 = *(v15 - 1);
          v21 = *v15;
          v22 = v20;
          v23 = sub_1E4205224();
          if (v24)
          {
            goto LABEL_137;
          }

          v25 = v23;
          v26 = sub_1E4205224();
          if (v27)
          {
            goto LABEL_136;
          }

          v28 = v26;

          v29 = (v117 < v115) ^ (v25 >= v28);
          ++v15;
          v5 = v19 + 1;
          v16 = v17 + 1;
          v4 = v18;
          if ((v29 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v5 = v4;
LABEL_13:
        if (v117 >= v115)
        {
          v7 = v110;
          v6 = v112;
        }

        else
        {
          v6 = v112;
          if (v5 < v110)
          {
            goto LABEL_129;
          }

          if (v110 >= v5)
          {
            v7 = v110;
          }

          else
          {
            if (v4 >= v17)
            {
              v30 = v17;
            }

            else
            {
              v30 = v4;
            }

            v31 = 8 * v30 - 8;
            v32 = v5;
            v33 = v110;
            v7 = v110;
            v34 = v108;
            do
            {
              if (v33 != --v32)
              {
                v35 = *a3;
                if (!*a3)
                {
                  goto LABEL_140;
                }

                v36 = *(v35 + v34);
                *(v35 + v34) = *(v35 + v31);
                *(v35 + v31) = v36;
              }

              ++v33;
              v31 -= 8;
              v34 += 8;
            }

            while (v33 < v32);
          }
        }
      }

      v37 = a3[1];
      if (v5 < v37)
      {
        if (__OFSUB__(v5, v7))
        {
          goto LABEL_128;
        }

        if (v5 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_130;
          }

          if (v7 + a4 < v37)
          {
            v37 = v7 + a4;
          }

          if (v37 >= v7)
          {
            if (v5 == v37)
            {
              goto LABEL_45;
            }

            v116 = v37;
            v38 = v7;
            v39 = *a3;
            v40 = *a3 + 8 * v5 - 8;
            v111 = v38;
            v113 = v6;
            v41 = v38 - v5;
LABEL_36:
            v118 = v5;
            v42 = *(v39 + 8 * v5);
            v43 = v41;
            v44 = v40;
            while (1)
            {
              v45 = *v44;
              v46 = v42;
              v47 = v45;
              v48 = sub_1E4205224();
              if (v49)
              {
                goto LABEL_134;
              }

              v50 = v48;
              v51 = sub_1E4205224();
              if (v52)
              {
                break;
              }

              v53 = v51;

              if (v50 >= v53)
              {
                goto LABEL_43;
              }

              if (!v39)
              {
                goto LABEL_135;
              }

              v54 = *v44;
              v42 = *(v44 + 8);
              *v44 = v42;
              *(v44 + 8) = v54;
              v44 -= 8;
              if (__CFADD__(v43++, 1))
              {
LABEL_43:
                v5 = (v118 + 1);
                v40 += 8;
                --v41;
                if (v118 + 1 == v116)
                {
                  v5 = v116;
                  v7 = v111;
                  v6 = v113;
                  goto LABEL_45;
                }

                goto LABEL_36;
              }
            }

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
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

LABEL_131:
          __break(1u);
LABEL_132:
          v6 = sub_1E37FFF5C(v6);
          goto LABEL_99;
        }
      }

LABEL_45:
      if (v5 < v7)
      {
        goto LABEL_127;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1E37FFF70(0, *(v6 + 16) + 1, 1, v6);
      }

      v57 = *(v6 + 16);
      v56 = *(v6 + 24);
      v58 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        v6 = sub_1E37FFF70((v56 > 1), v57 + 1, 1, v6);
      }

      *(v6 + 16) = v58;
      v59 = v6 + 32;
      v60 = (v6 + 32 + 16 * v57);
      *v60 = v7;
      v60[1] = v5;
      v119 = *a1;
      if (!*a1)
      {
        goto LABEL_141;
      }

      if (v57)
      {
        break;
      }

LABEL_94:
      v4 = a3[1];
      if (v5 >= v4)
      {
        goto LABEL_97;
      }
    }

    while (1)
    {
      v61 = v58 - 1;
      v62 = (v59 + 16 * (v58 - 1));
      v63 = (v6 + 16 * v58);
      if (v58 >= 4)
      {
        break;
      }

      if (v58 == 3)
      {
        v64 = *(v6 + 32);
        v65 = *(v6 + 40);
        v74 = __OFSUB__(v65, v64);
        v66 = v65 - v64;
        v67 = v74;
LABEL_65:
        if (v67)
        {
          goto LABEL_114;
        }

        v79 = *v63;
        v78 = v63[1];
        v80 = __OFSUB__(v78, v79);
        v81 = v78 - v79;
        v82 = v80;
        if (v80)
        {
          goto LABEL_117;
        }

        v83 = v62[1];
        v84 = v83 - *v62;
        if (__OFSUB__(v83, *v62))
        {
          goto LABEL_120;
        }

        if (__OFADD__(v81, v84))
        {
          goto LABEL_122;
        }

        if (v81 + v84 >= v66)
        {
          if (v66 < v84)
          {
            v61 = v58 - 2;
          }

          goto LABEL_87;
        }

        goto LABEL_80;
      }

      if (v58 < 2)
      {
        goto LABEL_116;
      }

      v86 = *v63;
      v85 = v63[1];
      v74 = __OFSUB__(v85, v86);
      v81 = v85 - v86;
      v82 = v74;
LABEL_80:
      if (v82)
      {
        goto LABEL_119;
      }

      v88 = *v62;
      v87 = v62[1];
      v74 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v74)
      {
        goto LABEL_121;
      }

      if (v89 < v81)
      {
        goto LABEL_94;
      }

LABEL_87:
      if (v61 - 1 >= v58)
      {
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
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      if (!*a3)
      {
        goto LABEL_138;
      }

      v93 = v6;
      v94 = (v59 + 16 * (v61 - 1));
      v95 = *v94;
      v96 = v61;
      v6 = v59 + 16 * v61;
      v97 = *(v6 + 8);
      sub_1E37FFA7C((*a3 + 8 * *v94), (*a3 + 8 * *v6), (*a3 + 8 * v97), v119);
      if (v121)
      {
        goto LABEL_107;
      }

      if (v97 < v95)
      {
        goto LABEL_109;
      }

      v98 = v5;
      v5 = *(v93 + 16);
      if (v96 > v5)
      {
        goto LABEL_110;
      }

      *v94 = v95;
      v94[1] = v97;
      if (v96 >= v5)
      {
        goto LABEL_111;
      }

      v99 = v96;
      v121 = 0;
      v58 = v5 - 1;
      memmove(v6, (v6 + 16), 16 * (v5 - 1 - v99));
      v6 = v93;
      *(v93 + 16) = v5 - 1;
      v100 = v5 > 2;
      v5 = v98;
      if (!v100)
      {
        goto LABEL_94;
      }
    }

    v68 = v59 + 16 * v58;
    v69 = *(v68 - 64);
    v70 = *(v68 - 56);
    v74 = __OFSUB__(v70, v69);
    v71 = v70 - v69;
    if (v74)
    {
      goto LABEL_112;
    }

    v73 = *(v68 - 48);
    v72 = *(v68 - 40);
    v74 = __OFSUB__(v72, v73);
    v66 = v72 - v73;
    v67 = v74;
    if (v74)
    {
      goto LABEL_113;
    }

    v75 = v63[1];
    v76 = v75 - *v63;
    if (__OFSUB__(v75, *v63))
    {
      goto LABEL_115;
    }

    v74 = __OFADD__(v66, v76);
    v77 = v66 + v76;
    if (v74)
    {
      goto LABEL_118;
    }

    if (v77 >= v71)
    {
      v91 = *v62;
      v90 = v62[1];
      v74 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v74)
      {
        goto LABEL_126;
      }

      if (v66 < v92)
      {
        v61 = v58 - 2;
      }

      goto LABEL_87;
    }

    goto LABEL_65;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_97:
  v5 = *a1;
  if (!*a1)
  {
LABEL_144:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_132;
  }

LABEL_99:
  v101 = (v6 + 16);
  v102 = *(v6 + 16);
  while (v102 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_139;
    }

    v103 = v6;
    v104 = (v6 + 16 * v102);
    v105 = *v104;
    v106 = &v101[2 * v102];
    v6 = v106[1];
    sub_1E37FFA7C((*a3 + 8 * *v104), (*a3 + 8 * *v106), (*a3 + 8 * v6), v5);
    if (v121)
    {
      break;
    }

    if (v6 < v105)
    {
      goto LABEL_123;
    }

    if (v102 - 2 >= *v101)
    {
      goto LABEL_124;
    }

    *v104 = v105;
    v104[1] = v6;
    v107 = *v101 - v102;
    if (*v101 < v102)
    {
      goto LABEL_125;
    }

    v121 = 0;
    v102 = *v101 - 1;
    memmove(v106, v106 + 2, 16 * v107);
    *v101 = v102;
    v6 = v103;
  }

LABEL_107:
}

void sub_1E37FF3F8(void ***a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = v5++;
      if (v5 < v4)
      {
        v112 = v6;
        v8 = *a3;
        v9 = v5;
        v10 = *(*a3 + 8 * v7);
        v11 = *(*a3 + 8 * v5);
        v12 = v10;
        v117 = sub_1E4205224();
        if (v13)
        {
          goto LABEL_142;
        }

        v115 = sub_1E4205224();
        if (v14)
        {
          goto LABEL_143;
        }

        v108 = 8 * v7;
        v15 = (v8 + 8 * v7 + 16);
        v110 = v7;
        v16 = v7 + 2;
        v5 = v9;
        while (1)
        {
          v17 = v16;
          if (v5 + 1 >= v4)
          {
            break;
          }

          v18 = v4;
          v19 = v5;
          v20 = *(v15 - 1);
          v21 = *v15;
          v22 = v20;
          v23 = sub_1E4205224();
          if (v24)
          {
            goto LABEL_137;
          }

          v25 = v23;
          v26 = sub_1E4205224();
          if (v27)
          {
            goto LABEL_136;
          }

          v28 = v26;

          v29 = (v115 < v117) ^ (v28 >= v25);
          ++v15;
          v5 = v19 + 1;
          v16 = v17 + 1;
          v4 = v18;
          if ((v29 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v5 = v4;
LABEL_13:
        if (v115 >= v117)
        {
          v7 = v110;
          v6 = v112;
        }

        else
        {
          v6 = v112;
          if (v5 < v110)
          {
            goto LABEL_129;
          }

          if (v110 >= v5)
          {
            v7 = v110;
          }

          else
          {
            if (v4 >= v17)
            {
              v30 = v17;
            }

            else
            {
              v30 = v4;
            }

            v31 = 8 * v30 - 8;
            v32 = v5;
            v33 = v110;
            v7 = v110;
            v34 = v108;
            do
            {
              if (v33 != --v32)
              {
                v35 = *a3;
                if (!*a3)
                {
                  goto LABEL_140;
                }

                v36 = *(v35 + v34);
                *(v35 + v34) = *(v35 + v31);
                *(v35 + v31) = v36;
              }

              ++v33;
              v31 -= 8;
              v34 += 8;
            }

            while (v33 < v32);
          }
        }
      }

      v37 = a3[1];
      if (v5 < v37)
      {
        if (__OFSUB__(v5, v7))
        {
          goto LABEL_128;
        }

        if (v5 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_130;
          }

          if (v7 + a4 < v37)
          {
            v37 = v7 + a4;
          }

          if (v37 >= v7)
          {
            if (v5 == v37)
            {
              goto LABEL_45;
            }

            v116 = v37;
            v38 = v7;
            v39 = *a3;
            v40 = *a3 + 8 * v5 - 8;
            v111 = v38;
            v113 = v6;
            v41 = v38 - v5;
LABEL_36:
            v118 = v5;
            v42 = *(v39 + 8 * v5);
            v43 = v41;
            v44 = v40;
            while (1)
            {
              v45 = *v44;
              v46 = v42;
              v47 = v45;
              v48 = sub_1E4205224();
              if (v49)
              {
                goto LABEL_134;
              }

              v50 = v48;
              v51 = sub_1E4205224();
              if (v52)
              {
                break;
              }

              v53 = v51;

              if (v53 >= v50)
              {
                goto LABEL_43;
              }

              if (!v39)
              {
                goto LABEL_135;
              }

              v54 = *v44;
              v42 = *(v44 + 8);
              *v44 = v42;
              *(v44 + 8) = v54;
              v44 -= 8;
              if (__CFADD__(v43++, 1))
              {
LABEL_43:
                v5 = (v118 + 1);
                v40 += 8;
                --v41;
                if (v118 + 1 == v116)
                {
                  v5 = v116;
                  v7 = v111;
                  v6 = v113;
                  goto LABEL_45;
                }

                goto LABEL_36;
              }
            }

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
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

LABEL_131:
          __break(1u);
LABEL_132:
          v6 = sub_1E37FFF5C(v6);
          goto LABEL_99;
        }
      }

LABEL_45:
      if (v5 < v7)
      {
        goto LABEL_127;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1E37FFF70(0, *(v6 + 16) + 1, 1, v6);
      }

      v57 = *(v6 + 16);
      v56 = *(v6 + 24);
      v58 = v57 + 1;
      if (v57 >= v56 >> 1)
      {
        v6 = sub_1E37FFF70((v56 > 1), v57 + 1, 1, v6);
      }

      *(v6 + 16) = v58;
      v59 = v6 + 32;
      v60 = (v6 + 32 + 16 * v57);
      *v60 = v7;
      v60[1] = v5;
      v119 = *a1;
      if (!*a1)
      {
        goto LABEL_141;
      }

      if (v57)
      {
        break;
      }

LABEL_94:
      v4 = a3[1];
      if (v5 >= v4)
      {
        goto LABEL_97;
      }
    }

    while (1)
    {
      v61 = v58 - 1;
      v62 = (v59 + 16 * (v58 - 1));
      v63 = (v6 + 16 * v58);
      if (v58 >= 4)
      {
        break;
      }

      if (v58 == 3)
      {
        v64 = *(v6 + 32);
        v65 = *(v6 + 40);
        v74 = __OFSUB__(v65, v64);
        v66 = v65 - v64;
        v67 = v74;
LABEL_65:
        if (v67)
        {
          goto LABEL_114;
        }

        v79 = *v63;
        v78 = v63[1];
        v80 = __OFSUB__(v78, v79);
        v81 = v78 - v79;
        v82 = v80;
        if (v80)
        {
          goto LABEL_117;
        }

        v83 = v62[1];
        v84 = v83 - *v62;
        if (__OFSUB__(v83, *v62))
        {
          goto LABEL_120;
        }

        if (__OFADD__(v81, v84))
        {
          goto LABEL_122;
        }

        if (v81 + v84 >= v66)
        {
          if (v66 < v84)
          {
            v61 = v58 - 2;
          }

          goto LABEL_87;
        }

        goto LABEL_80;
      }

      if (v58 < 2)
      {
        goto LABEL_116;
      }

      v86 = *v63;
      v85 = v63[1];
      v74 = __OFSUB__(v85, v86);
      v81 = v85 - v86;
      v82 = v74;
LABEL_80:
      if (v82)
      {
        goto LABEL_119;
      }

      v88 = *v62;
      v87 = v62[1];
      v74 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v74)
      {
        goto LABEL_121;
      }

      if (v89 < v81)
      {
        goto LABEL_94;
      }

LABEL_87:
      if (v61 - 1 >= v58)
      {
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
LABEL_129:
        __break(1u);
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      if (!*a3)
      {
        goto LABEL_138;
      }

      v93 = v6;
      v94 = (v59 + 16 * (v61 - 1));
      v95 = *v94;
      v96 = v61;
      v6 = v59 + 16 * v61;
      v97 = *(v6 + 8);
      sub_1E37FFCEC((*a3 + 8 * *v94), (*a3 + 8 * *v6), (*a3 + 8 * v97), v119);
      if (v121)
      {
        goto LABEL_107;
      }

      if (v97 < v95)
      {
        goto LABEL_109;
      }

      v98 = v5;
      v5 = *(v93 + 16);
      if (v96 > v5)
      {
        goto LABEL_110;
      }

      *v94 = v95;
      v94[1] = v97;
      if (v96 >= v5)
      {
        goto LABEL_111;
      }

      v99 = v96;
      v121 = 0;
      v58 = v5 - 1;
      memmove(v6, (v6 + 16), 16 * (v5 - 1 - v99));
      v6 = v93;
      *(v93 + 16) = v5 - 1;
      v100 = v5 > 2;
      v5 = v98;
      if (!v100)
      {
        goto LABEL_94;
      }
    }

    v68 = v59 + 16 * v58;
    v69 = *(v68 - 64);
    v70 = *(v68 - 56);
    v74 = __OFSUB__(v70, v69);
    v71 = v70 - v69;
    if (v74)
    {
      goto LABEL_112;
    }

    v73 = *(v68 - 48);
    v72 = *(v68 - 40);
    v74 = __OFSUB__(v72, v73);
    v66 = v72 - v73;
    v67 = v74;
    if (v74)
    {
      goto LABEL_113;
    }

    v75 = v63[1];
    v76 = v75 - *v63;
    if (__OFSUB__(v75, *v63))
    {
      goto LABEL_115;
    }

    v74 = __OFADD__(v66, v76);
    v77 = v66 + v76;
    if (v74)
    {
      goto LABEL_118;
    }

    if (v77 >= v71)
    {
      v91 = *v62;
      v90 = v62[1];
      v74 = __OFSUB__(v90, v91);
      v92 = v90 - v91;
      if (v74)
      {
        goto LABEL_126;
      }

      if (v66 < v92)
      {
        v61 = v58 - 2;
      }

      goto LABEL_87;
    }

    goto LABEL_65;
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_97:
  v5 = *a1;
  if (!*a1)
  {
LABEL_144:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_132;
  }

LABEL_99:
  v101 = (v6 + 16);
  v102 = *(v6 + 16);
  while (v102 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_139;
    }

    v103 = v6;
    v104 = (v6 + 16 * v102);
    v105 = *v104;
    v106 = &v101[2 * v102];
    v6 = v106[1];
    sub_1E37FFCEC((*a3 + 8 * *v104), (*a3 + 8 * *v106), (*a3 + 8 * v6), v5);
    if (v121)
    {
      break;
    }

    if (v6 < v105)
    {
      goto LABEL_123;
    }

    if (v102 - 2 >= *v101)
    {
      goto LABEL_124;
    }

    *v104 = v105;
    v104[1] = v6;
    v107 = *v101 - v102;
    if (*v101 < v102)
    {
      goto LABEL_125;
    }

    v121 = 0;
    v102 = *v101 - 1;
    memmove(v106, v106 + 2, 16 * v107);
    *v101 = v102;
    v6 = v103;
  }

LABEL_107:
}

uint64_t sub_1E37FFA7C(void **__src, void **__dst, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = a3 - __dst;
  if (v7 < v8)
  {
    if (a4 != __src || &__src[v7] <= a4)
    {
      v10 = __dst;
      memmove(a4, __src, 8 * v7);
      __dst = v10;
    }

    v11 = &v4[v7];
    while (1)
    {
      if (v4 >= v11 || __dst >= v5)
      {
        __dst = v6;
        goto LABEL_40;
      }

      v13 = v6;
      v14 = __dst;
      v15 = v4;
      v16 = *v4;
      v17 = *__dst;
      v18 = v16;
      result = sub_1E4205224();
      if (v20)
      {
        __break(1u);
        goto LABEL_48;
      }

      v21 = result;
      result = sub_1E4205224();
      if (v22)
      {
        goto LABEL_49;
      }

      v23 = result;

      if (v21 >= v23)
      {
        break;
      }

      v24 = v14;
      __dst = v14 + 1;
      v25 = v13;
      v4 = v15;
      if (v13 != v14)
      {
        goto LABEL_18;
      }

LABEL_19:
      v6 = v25 + 1;
    }

    v24 = v15;
    v4 = v15 + 1;
    v25 = v13;
    __dst = v14;
    if (v13 == v15)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v25 = *v24;
    goto LABEL_19;
  }

  if (a4 != __dst || &__dst[v8] <= a4)
  {
    v27 = __dst;
    memmove(a4, __dst, 8 * v8);
    __dst = v27;
  }

  v11 = &v4[v8];
  v45 = v4;
  v44 = v6;
LABEL_26:
  v28 = __dst - 1;
  while (1)
  {
    --v5;
    if (v11 <= v4 || __dst <= v6)
    {
      break;
    }

    v30 = __dst;
    v31 = v11;
    v32 = *--v11;
    v33 = v28;
    v34 = *v28;
    v35 = v32;
    v36 = v34;
    result = sub_1E4205224();
    if (v37)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    v38 = result;
    result = sub_1E4205224();
    if (v39)
    {
      goto LABEL_50;
    }

    v40 = result;

    v41 = v5 + 1;
    if (v38 < v40)
    {
      __dst = v33;
      v6 = v44;
      v4 = v45;
      v11 = v31;
      if (v41 != v30)
      {
        *v5 = *v33;
        __dst = v33;
      }

      goto LABEL_26;
    }

    v6 = v44;
    v4 = v45;
    __dst = v30;
    v28 = v33;
    if (v31 != v41)
    {
      *v5 = *v11;
    }
  }

LABEL_40:
  v42 = v11 - v4;
  if (__dst != v4 || __dst >= &v4[v42])
  {
    memmove(__dst, v4, 8 * v42);
  }

  return 1;
}

uint64_t sub_1E37FFCEC(void **__src, void **__dst, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst - __src;
  v8 = a3 - __dst;
  if (v7 < v8)
  {
    if (a4 != __src || &__src[v7] <= a4)
    {
      v10 = __dst;
      memmove(a4, __src, 8 * v7);
      __dst = v10;
    }

    v11 = &v4[v7];
    while (1)
    {
      if (v4 >= v11 || __dst >= v5)
      {
        __dst = v6;
        goto LABEL_40;
      }

      v13 = v6;
      v14 = __dst;
      v15 = v4;
      v16 = *v4;
      v17 = *__dst;
      v18 = v16;
      result = sub_1E4205224();
      if (v20)
      {
        __break(1u);
        goto LABEL_48;
      }

      v21 = result;
      result = sub_1E4205224();
      if (v22)
      {
        goto LABEL_49;
      }

      v23 = result;

      if (v23 >= v21)
      {
        break;
      }

      v24 = v14;
      __dst = v14 + 1;
      v25 = v13;
      v4 = v15;
      if (v13 != v14)
      {
        goto LABEL_18;
      }

LABEL_19:
      v6 = v25 + 1;
    }

    v24 = v15;
    v4 = v15 + 1;
    v25 = v13;
    __dst = v14;
    if (v13 == v15)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v25 = *v24;
    goto LABEL_19;
  }

  if (a4 != __dst || &__dst[v8] <= a4)
  {
    v27 = __dst;
    memmove(a4, __dst, 8 * v8);
    __dst = v27;
  }

  v11 = &v4[v8];
  v45 = v4;
  v44 = v6;
LABEL_26:
  v28 = __dst - 1;
  while (1)
  {
    --v5;
    if (v11 <= v4 || __dst <= v6)
    {
      break;
    }

    v30 = __dst;
    v31 = v11;
    v32 = *--v11;
    v33 = v28;
    v34 = *v28;
    v35 = v32;
    v36 = v34;
    result = sub_1E4205224();
    if (v37)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return result;
    }

    v38 = result;
    result = sub_1E4205224();
    if (v39)
    {
      goto LABEL_50;
    }

    v40 = result;

    v41 = v5 + 1;
    if (v40 < v38)
    {
      __dst = v33;
      v6 = v44;
      v4 = v45;
      v11 = v31;
      if (v41 != v30)
      {
        *v5 = *v33;
        __dst = v33;
      }

      goto LABEL_26;
    }

    v6 = v44;
    v4 = v45;
    __dst = v30;
    v28 = v33;
    if (v31 != v41)
    {
      *v5 = *v11;
    }
  }

LABEL_40:
  v42 = v11 - v4;
  if (__dst != v4 || __dst >= &v4[v42])
  {
    memmove(__dst, v4, 8 * v42);
  }

  return 1;
}

char *sub_1E37FFF70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32780, &qword_1E42A8F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1E3800070(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  sub_1E4205234();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = sub_1E4207384();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = sub_1E4207384();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_1E38001B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1E4205234();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

void (*sub_1E38002B0(void *a1, char a2))(uint64_t a1)
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_1E380052C(v4);
  v4[9] = sub_1E3800340((v4 + 4), a2 & 1, isUniquelyReferenced_nonNull_native);
  return sub_1E377D9EC;
}

unint64_t (*sub_1E3800340(uint64_t a1, char a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v7 = *v3;
  v8 = sub_1E37FE540(a2 & 1);
  *(a1 + 25) = v9 & 1;
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE48, &qword_1E429F798);
  if (sub_1E4207644())
  {
    v12 = sub_1E37FE540(a2 & 1);
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

LABEL_5:
  *(a1 + 16) = v10;
  if (v11)
  {
    v14 = *(*(*v4 + 56) + 8 * v10);
  }

  else
  {
    v14 = 0;
  }

  *a1 = v14;
  return sub_1E3800458;
}

unint64_t sub_1E3800458(unint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      v6 = *(result + 24) & 1;
      v7 = *(result + 16);

      return sub_1E37FE8C4(v7, v6, v1, v2);
    }
  }

  else if (*(result + 25))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DAE0, &qword_1E429F650);
    sub_1E3800994(v3, v4, v5);

    return sub_1E4207664();
  }

  return result;
}

void (*sub_1E380052C(void *a1))(uint64_t a1)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1E3800554;
}

uint64_t sub_1E380055C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

void *sub_1E38005A8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1E4207384();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1E37FEA14(v4, 0);
      sub_1E38009E8((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x1E69E7CC0];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_1E380063C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_model;
  OUTLINED_FUNCTION_5_44(v1 + OBJC_IVAR____TtC8VideosUI21SportsPlayByPlayQueue_model, v5);
  sub_1E37FD33C(0, *(v1 + v2));
  swift_endAccess();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE30, &qword_1E429F6B0);
  sub_1E4148C68(sub_1E3800B78, v3, v5);

  return sub_1E37FC1C4(v5[0]);
}

unint64_t sub_1E38006F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2AE38;
  if (!qword_1ECF2AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AE38);
  }

  return result;
}

uint64_t type metadata accessor for SportsPlayByPlayQueue(uint64_t a1)
{
  result = qword_1EE2A9C70;
  if (!qword_1EE2A9C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E38007A0(uint64_t a1)
{
  sub_1E3800854(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3800854(uint64_t a1)
{
  if (!qword_1ECF2AE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF3DAE0, &qword_1E429F650);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF2AE40);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SportsPlayByPlayQueue.Key(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3800994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2AE50;
  if (!qword_1ECF2AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AE50);
  }

  return result;
}

uint64_t sub_1E38009E8(uint64_t result, uint64_t a2, unint64_t a3)
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
        sub_1E4205234();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E32752B0(&qword_1ECF2AE58, &unk_1ECF3DAE0, &qword_1E429F650, MEMORY[0x1E69E6340]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DAE0, &qword_1E429F650);
          v9 = sub_1E374111C(v12, i, a3);
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

uint64_t type metadata accessor for SportsScoreboardViewAccessibleView(uint64_t a1)
{
  result = qword_1EE2A99D0;
  if (!qword_1EE2A99D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1E3800BD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for SportsScoreboardViewAccessibleView(0);
  v9 = v8[5];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *(a4 + v8[6]) = a1;
  *(a4 + v8[7]) = a2;
  v10 = a4 + v8[8];

  return memcpy(v10, a3, 0xC3uLL);
}

void *sub_1E3800CB8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE60, &qword_1E429F810);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &__src[-v4];
  *v5 = *sub_1E41F0A04();
  *(v5 + 1) = 0;
  v5[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE68, &qword_1E429F818);
  sub_1E3800DF8();
  sub_1E4203DA4();
  sub_1E42015C4();
  OUTLINED_FUNCTION_21_1();
  sub_1E3741EA0(v6, v7, v8, &qword_1E429F810);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE70, &qword_1E429F820);
  return memcpy((a1 + *(v9 + 36)), __src, 0x70uLL);
}

void sub_1E3800DF8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v98 = v2;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D70, &qword_1E42984F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_3();
  v97 = v8;
  OUTLINED_FUNCTION_138();
  v9 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (v84 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE90, "Fj\r");
  v20 = OUTLINED_FUNCTION_17_2(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_6();
  v95 = v21 - v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_6();
  v96 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_6();
  v92 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_6();
  v93 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v84 - v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_25_3();
  v99 = v33;
  v34 = OUTLINED_FUNCTION_138();
  v85 = type metadata accessor for SportsScoreboardViewAccessibleView(v34);
  v35 = *(v1 + *(v85 + 24));
  v36 = sub_1E38266E4();
  v84[1] = sub_1E38267CC();
  v100 = v1;
  sub_1E374709C(v18);
  v37 = *MEMORY[0x1E697E7D0];
  v38 = *(v11 + 104);
  v88 = v11 + 104;
  v87 = v38;
  v38(v15, v37, v9);
  v39 = sub_1E4201314();
  v40 = *(v11 + 8);
  v40(v15, v9);
  v91 = v9;
  v89 = v40;
  v40(v18, v9);
  v94 = v6;
  if (v36)
  {
    v41 = v39;
    if (sub_1E39C408C())
    {
      type metadata accessor for ImageViewModel();
      if (!swift_dynamicCastClass())
      {
      }
    }
  }

  else
  {
    v41 = v39;
  }

  if (v41)
  {
    v42 = sub_1E41F0984();
  }

  else
  {
    v42 = OUTLINED_FUNCTION_17_22(&_MergedGlobals_153);
    if (!v43)
    {
      OUTLINED_FUNCTION_0_42();
      swift_once();
      v42 = &qword_1EE28B3B8;
    }
  }

  *v31 = *v42;
  *(v31 + 1) = 0;
  v31[16] = 0;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE78, qword_1E429F828);
  v44 = v100;
  sub_1E38015D8();

  sub_1E3741EA0(v31, v99, &qword_1ECF2AE90, "Fj\r");
  v45 = *(v44 + *(v85 + 28));

  v46 = v97;
  sub_1E41EEC10(v35, v45, v97);
  v47 = sub_1E41F0A04();
  v48 = (v46 + *(v90 + 36));
  *v48 = *v47;
  v48[1] = sub_1E374AE08;
  v48[2] = 0;
  v49 = sub_1E38266EC();
  sub_1E38267D4();
  sub_1E374709C(v18);
  v50 = v91;
  v87(v15, *MEMORY[0x1E697E7D8], v91);
  v51 = sub_1E4201314();
  v52 = OUTLINED_FUNCTION_32_0();
  v53 = v89;
  (v89)(v52);
  v53(v18, v50);
  if (!v49)
  {
    v55 = v94;
    goto LABEL_16;
  }

  v54 = sub_1E39C408C();
  v55 = v94;
  if (!v54)
  {
    if ((v51 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    v56 = sub_1E41F0984();
    goto LABEL_21;
  }

  type metadata accessor for ImageViewModel();
  if (swift_dynamicCastClass())
  {
LABEL_16:
    if ((v51 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v51)
  {
    goto LABEL_17;
  }

LABEL_19:
  v56 = OUTLINED_FUNCTION_17_22(&_MergedGlobals_153);
  if (!v43)
  {
    OUTLINED_FUNCTION_0_42();
    swift_once();
    v56 = &qword_1EE28B3B8;
  }

LABEL_21:
  v57 = v92;
  *v92 = *v56;
  v57[1] = 0;
  *(v57 + 16) = 0;
  sub_1E38015D8();

  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v58, v59, v60, v61);
  v107 = 0;
  v108 = 0;
  v109[0] = &v107;
  v62 = v96;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v63, v64, v65, v66);
  v105 = 0;
  v106 = 0;
  v109[1] = v62;
  v109[2] = &v105;
  sub_1E3743538(v46, v55, &qword_1ECF28D70, &qword_1E42984F0);
  v103 = 0;
  v104 = 0;
  v109[3] = v55;
  v109[4] = &v103;
  v67 = v95;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v68, v69, v70, v71);
  v101 = 0;
  v102 = 0;
  v109[5] = v67;
  v109[6] = &v101;
  sub_1E38014CC(v109, v98);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v72, v73, v74);
  sub_1E325F6F0(v46, &qword_1ECF28D70, &qword_1E42984F0);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v75, v76, v77);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v78, v79, v80);
  sub_1E325F6F0(v55, &qword_1ECF28D70, &qword_1E42984F0);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v81, v82, v83);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38014CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF28, &qword_1E429F928);
  sub_1E3743538(*(a1 + 8), a2 + v5[12], &qword_1ECF2AE90, "Fj\r");
  v6 = a2 + v5[16];
  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *v8;
  LOBYTE(v8) = *(v8 + 8);
  *v6 = v9;
  *(v6 + 8) = v8;
  sub_1E3743538(v7, a2 + v5[20], &qword_1ECF28D70, &qword_1E42984F0);
  v10 = a2 + v5[24];
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *v10 = v13;
  *(v10 + 8) = v12;
  result = sub_1E3743538(v11, a2 + v5[28], &qword_1ECF2AE90, "Fj\r");
  v15 = a2 + v5[32];
  v16 = *(a1 + 48);
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *v15 = v17;
  *(v15 + 8) = v16;
  return result;
}

void sub_1E38015D8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v68 = v4;
  v6 = v5;
  v8 = v7;
  v76 = v9;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AE98, &qword_1E429F8B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v66 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AEA0, &qword_1E429F8B8);
  OUTLINED_FUNCTION_0_10();
  v71 = v14;
  v72 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v75 = v15 - v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v73 = v18;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AEA8, &qword_1E429F8C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v66 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AEB0, &qword_1E429F8C8);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v70 = v24 - v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  v28 = v27;
  v29 = OUTLINED_FUNCTION_138();
  v30 = type metadata accessor for SportsScoreboardViewAccessibleView(v29);
  v31 = sub_1E3827278();
  v32 = 1;
  v77 = v28;
  if (v31)
  {
    v66[3] = v3;
    v67 = v1;
    v33 = sub_1E3826B74();
    if (v33)
    {
      v35 = *(v33 + 16);
      v34 = *(v33 + 24);

      if (!v6)
      {
        if (!v34)
        {
          goto LABEL_21;
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (!v6)
      {
        goto LABEL_21;
      }

      v34 = 0;
      v35 = 0;
    }

    v37 = *(v6 + 16);
    v36 = *(v6 + 24);

    if (v34)
    {
      if (v36)
      {
        if (v35 != v37 || v34 != v36)
        {
          OUTLINED_FUNCTION_53();
          v39 = sub_1E42079A4();

          if (v39)
          {
            goto LABEL_21;
          }

LABEL_18:
          if (v68)
          {
            (*(*v68 + 392))(v40);
          }

          goto LABEL_22;
        }

LABEL_21:
        OUTLINED_FUNCTION_5_0(*(v8 + *(v30 + 28)) + 280, &v78);

LABEL_22:
        v28 = v77;
        *v21 = sub_1E4201B84();
        *(v21 + 1) = 0;
        v21[16] = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AED8, &unk_1E429F8E0);
        sub_1E3801AB0();

        sub_1E3741EA0(v21, v28, &qword_1ECF2AEA8, &qword_1E429F8C0);
        v32 = 0;
        goto LABEL_23;
      }
    }

    else if (!v36)
    {
      goto LABEL_21;
    }

LABEL_17:

    goto LABEL_18;
  }

LABEL_23:
  __swift_storeEnumTagSinglePayload(v28, v32, 1, v69);
  sub_1E3802A14();
  v41 = *sub_1E41F0A04();
  v42 = sub_1E3827278();
  v43 = sub_1E3803794();
  v44 = v73;
  sub_1E41F0AD8(v41, (v42 & 1) == 0, sub_1E374AE08, 0, v74, v43);
  sub_1E325F6F0(v12, &qword_1ECF2AE98, &qword_1E429F8B0);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v45, v46, v47, v48);
  v50 = v71;
  v49 = v72;
  v51 = *(v71 + 16);
  v52 = v75;
  v51(v75, v44, v72);
  v53 = v76;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v54, v55, v56, v57);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AED0, &qword_1E429F8D8);
  v51(v53 + *(v58 + 48), v52, v49);
  v59 = *(v50 + 8);
  v59(v44, v49);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v60, v61, v62);
  v59(v52, v49);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v63, v64, v65);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3801AB0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v72 = v2;
  v80 = v3;
  v5 = v4;
  v82 = v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D40, &qword_1E42984C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v69 - v8;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AEE0, &qword_1E429F8F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v81 = v10 - v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_6();
  v75 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v84 = v15;
  OUTLINED_FUNCTION_138();
  v16 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v69 - v24);
  sub_1E374709C((&v69 - v24));
  v26 = *(v18 + 104);
  v27 = (v18 + 8);
  v28 = v5;
  v73 = v26;
  if (v5)
  {
    v29 = *MEMORY[0x1E697E7D0];
  }

  else
  {
    v29 = *MEMORY[0x1E697E7D8];
  }

  v26(v22, v29, v16);
  OUTLINED_FUNCTION_53();
  v30 = sub_1E4201314();
  v31 = *v27;
  (*v27)(v22, v16);
  v31(v25, v16);
  if (v30)
  {
    v70 = v1;
    v71 = v28;
    type metadata accessor for SportsScoreboardViewAccessibleView(0);

    sub_1E3AC5824();
    v33 = v32;
    v78 = v34 & 1;
    v79 = v35;

    v77 = v33;

    LOBYTE(v28) = v71;
    v1 = v70;
  }

  else
  {
    v79 = 0;
    v78 = 0;
    v77 = 1;
  }

  v36 = sub_1E3801FEC(v1);
  v37 = v83;
  sub_1E3802680(v72, v36, v83);

  v38 = sub_1E41F0A04();
  v39 = (v37 + *(v74 + 36));
  *v39 = *v38;
  v39[1] = sub_1E374A0BC;
  v39[2] = 0;
  if (v28)
  {
    v40 = sub_1E41F0984();
  }

  else
  {
    v40 = OUTLINED_FUNCTION_17_22(&_MergedGlobals_153);
    if (!v41)
    {
      OUTLINED_FUNCTION_0_42();
      swift_once();
      v40 = &qword_1EE28B3B8;
    }
  }

  v42 = *v40;
  v43 = v75;
  sub_1E3741EA0(v83, v75, &qword_1ECF28D40, &qword_1E42984C0);
  v44 = (v43 + *(v76 + 36));
  *v44 = v42;
  v44[1] = sub_1E3803508;
  v44[2] = 0;
  sub_1E3741EA0(v43, v84, &qword_1ECF2AEE0, &qword_1E429F8F0);
  sub_1E374709C(v25);
  if (v28)
  {
    v45 = MEMORY[0x1E697E7D8];
  }

  else
  {
    v45 = MEMORY[0x1E697E7D0];
  }

  v73(v22, *v45, v16);
  OUTLINED_FUNCTION_53();
  v46 = sub_1E4201314();
  v31(v22, v16);
  v31(v25, v16);
  if (v46)
  {
    type metadata accessor for SportsScoreboardViewAccessibleView(0);

    sub_1E3AC5824();
    v48 = v47;
    v50 = v49;
    v52 = v51 & 1;
  }

  else
  {
    v50 = 0;
    v52 = 0;
    v48 = 1;
  }

  v53 = v84;
  v54 = v81;
  sub_1E3743538(v84, v81, &qword_1ECF2AEE0, &qword_1E429F8F0);
  v55 = v82;
  v56 = v79;
  *v82 = v77;
  v55[1] = v56;
  *(v55 + 16) = v78;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AEE8, &qword_1E429F8F8);
  sub_1E3743538(v54, v55 + *(v57 + 48), &qword_1ECF2AEE0, &qword_1E429F8F0);
  v58 = v55 + *(v57 + 64);
  v59 = OUTLINED_FUNCTION_15_34();
  sub_1E3803844(v59);
  v60 = OUTLINED_FUNCTION_16_23();
  sub_1E3803844(v60);
  v61 = OUTLINED_FUNCTION_15_34();
  sub_1E380388C(v61, v62);
  v63 = OUTLINED_FUNCTION_16_23();
  sub_1E380388C(v63, v64);
  *v58 = v48;
  *(v58 + 1) = v50;
  v58[16] = v52;
  sub_1E325F6F0(v53, &qword_1ECF2AEE0, &qword_1E429F8F0);
  v65 = OUTLINED_FUNCTION_16_23();
  sub_1E380388C(v65, v66);
  sub_1E325F6F0(v54, &qword_1ECF2AEE0, &qword_1E429F8F0);
  v67 = OUTLINED_FUNCTION_15_34();
  sub_1E380388C(v67, v68);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3801FEC(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v62 - v7;
  v9 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v68 = (v13 - v14);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v62 - v17;
  if (!a1)
  {
    return 0;
  }

  [ copyWithZone_];
  sub_1E4207264();
  swift_unknownObjectRelease();
  type metadata accessor for ViewLayout();
  v19 = swift_dynamicCast();
  v67 = v69;
  if (v19)
  {
    v20 = v69;
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v11 + 104);
  v21(v18, *MEMORY[0x1E697E6C8], v9);
  type metadata accessor for ImageLayout();
  if (swift_dynamicCastClass())
  {
    v22 = OUTLINED_FUNCTION_74();
    v23(v22);
    v21(v18, *MEMORY[0x1E697E728], v9);
  }

  type metadata accessor for TextLayout();
  v24 = swift_dynamicCastClass();
  if (v24)
  {
    if (v20)
    {
      v25 = v24;
      v26 = swift_dynamicCastClass();
      if (v26)
      {
        v65 = v26;
        v66 = v3;
        v63 = *(v11 + 16);
        v64 = v11 + 16;
        v63(v2, v18, v9);
        v27 = *(*v25 + 1712);

        v29 = v27(v28);
        if (v29 != 13)
        {
          v30 = v68;
          sub_1E3B03354(v29, v68);
          v31 = OUTLINED_FUNCTION_7_51();
          v32(v31);
          v29 = (*(v11 + 32))(v2, v30, v9);
        }

        v33 = (*(*v25 + 1808))(v29);
        if (v34)
        {
          v35 = OUTLINED_FUNCTION_7_51();
          v36(v35);
        }

        else
        {
          v37 = *&v33;
          type metadata accessor for SportsScoreboardViewAccessibleView(0);
          v38 = v68;
          sub_1E3746E10(v68);
          v63(v8, v2, v9);
          OUTLINED_FUNCTION_12_30();
          v39 = sub_1E3AC5CD8(v38, v8, v37);
          sub_1E325F6F0(v8, &qword_1ECF2A250, " B\r");
          v40 = *(v11 + 8);
          v40(v38, v9);
          (*(*v65 + 1816))(COERCE_DOUBLE(*&v39), 0);

          v40(v2, v9);
        }
      }
    }
  }

  v41 = (*(*a1 + 200))();
  if ((v42 & 1) == 0 && v20)
  {
    v43 = *&v41;
    type metadata accessor for SportsScoreboardViewAccessibleView(0);

    v44 = v68;
    sub_1E3746E10(v68);
    v45 = OUTLINED_FUNCTION_53();
    v46(v45);
    OUTLINED_FUNCTION_12_30();
    v47 = sub_1E3AC5CD8(v44, v8, v43);
    sub_1E325F6F0(v8, &qword_1ECF2A250, " B\r");
    v48 = OUTLINED_FUNCTION_7_51();
    v49(v48);
    (*(*v20 + 208))(COERCE_DOUBLE(*&v47), 0);
  }

  v50 = (*(*a1 + 304))(v41);
  if ((v51 & 1) != 0 || !v20)
  {
    v59 = OUTLINED_FUNCTION_74();
    v60(v59);
  }

  else
  {
    v52 = *&v50;
    type metadata accessor for SportsScoreboardViewAccessibleView(0);

    v53 = v68;
    sub_1E3746E10(v68);
    v54 = OUTLINED_FUNCTION_53();
    v55(v54);
    OUTLINED_FUNCTION_12_30();
    v56 = sub_1E3AC5CD8(v53, v8, v52);
    sub_1E325F6F0(v8, &qword_1ECF2A250, " B\r");
    v57 = *(v11 + 8);
    (v57)(v53, v9);
    (*(*v20 + 312))(COERCE_DOUBLE(*&v56), 0);

    v58 = OUTLINED_FUNCTION_74();
    v57(v58);
    return v67;
  }

  return v20;
}

uint64_t sub_1E3802680@<X0>(__objc2_class **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v60 = v9;
  v61 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CC0, &qword_1E4298440);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v59 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28D90, &unk_1E4298510);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v19);
  if (a1 && *a1 == _TtC8VideosUI13TextViewModel)
  {
    v59[2] = a3;
    if (a2)
    {
      type metadata accessor for TextLayout();
      swift_dynamicCastClass();
    }

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    v59[0] = type metadata accessor for SportsScoreboardViewAccessibleView(0);
    v59[1] = v3;
    v25 = *(**(*(v3 + *(v59[0] + 28)) + 216) + 176);

    v25(v62, v26);
    v27 = v62[0];
    v28 = v62[1];
    v29 = v62[2];
    v30 = v62[3];

    if (v63)
    {
      v35 = OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v31.n128_u64[0] = v27;
      v32.n128_u64[0] = v28;
      v33.n128_u64[0] = v29;
      v34.n128_u64[0] = v30;
      v35 = j_nullsub_1(v31, v32, v33, v34);
    }

    v39 = v35;
    v40 = v36;
    v41 = v37;
    v42 = v38;
    v43 = sub_1E4202734();
    (*(v60 + 32))(v16, v12, v61);
    v44 = &v16[*(v13 + 36)];
    *v44 = v43;
    *(v44 + 1) = v39;
    *(v44 + 2) = v40;
    *(v44 + 3) = v41;
    *(v44 + 4) = v42;
    v44[40] = 0;
    v45 = sub_1E3827278();

    if (v45)
    {
      v46 = 1.0;
    }

    else
    {
      v46 = 0.0;
    }

    sub_1E3741EA0(v16, v4, &qword_1ECF28CC0, &qword_1E4298440);
    *(v4 + *(v17 + 36)) = v46;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v47, v48, v49, v50);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v51, v52, v53, v54);
    OUTLINED_FUNCTION_21_18();
    return __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
  }

  else
  {
    OUTLINED_FUNCTION_21_18();

    return __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }
}

void sub_1E3802A14()
{
  OUTLINED_FUNCTION_31_1();
  v79 = v1;
  v75 = v2;
  v73 = v3;
  v5 = v4;
  v82 = v6;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AEF0, &qword_1E429F900);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v68 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AEF8, &qword_1E429F908);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v78 = v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF00, &unk_1E429F910);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v81 = v18 - v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_25_3();
  v80 = v22;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v71 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v70 = &v68 - v25;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v68 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF08, &unk_1E42D3100);
  v34 = OUTLINED_FUNCTION_17_2(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4_6();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v68 - v39;
  v41 = type metadata accessor for SportsScoreboardViewAccessibleView(0);
  v42 = (*(**(v5 + *(v41 + 24)) + 1232))();
  v83 = v5;
  if (v42)
  {
    v43 = 1;
  }

  else
  {
    v44 = sub_1E3827278();
    v45 = *(v5 + *(v41 + 28));
    if (v44)
    {
      v46 = v45 + 208;
    }

    else
    {
      v46 = v45 + 272;
    }

    OUTLINED_FUNCTION_5_0(v46, &v84);

    v69 = sub_1E3801FEC(v47);

    if (v73 && (type metadata accessor for ImageViewModel(), (v48 = swift_dynamicCastClass()) != 0))
    {
      v49 = v48;

      sub_1E3EB9BB4(v85);
      if (v69)
      {
        type metadata accessor for ImageLayout();
        v68 = swift_dynamicCastClass();
      }

      else
      {
        v68 = 0;
      }

      v52 = OUTLINED_FUNCTION_18();
      sub_1E37E8BE8(v49, v85, v68, v52 & 1, 0, 0, v70);

      sub_1E375C31C(v85);
      v53 = OUTLINED_FUNCTION_53();
      v51 = v72;
      v54(v53);
      v50 = 0;
    }

    else
    {
      v50 = 1;
      v51 = v72;
    }

    __swift_storeEnumTagSinglePayload(v29, v50, 1, v51);
    sub_1E3741EA0(v29, v32, &qword_1ECF29938, &unk_1E429C3F0);

    OUTLINED_FUNCTION_21_1();
    sub_1E3741EA0(v55, v56, v57, &unk_1E429C3F0);
    v43 = 0;
  }

  v58 = 1;
  __swift_storeEnumTagSinglePayload(v40, v43, 1, v74);
  v59 = v78;
  if (v75)
  {

    *v9 = sub_1E4201B84();
    *(v9 + 1) = 0;
    v9[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF18, &qword_1E42F5BB0);
    sub_1E38030F4();

    sub_1E3741EA0(v9, v14, &qword_1ECF2AEF0, &qword_1E429F900);
    v58 = 0;
  }

  __swift_storeEnumTagSinglePayload(v14, v58, 1, v76);
  sub_1E3741EA0(v14, v59, &qword_1ECF2AEF8, &qword_1E429F908);
  if (v79)
  {
    v60 = sub_1E41F0984();
  }

  else
  {
    v60 = OUTLINED_FUNCTION_17_22(&_MergedGlobals_153);
    if (!v61)
    {
      OUTLINED_FUNCTION_0_42();
      swift_once();
      v60 = &qword_1EE28B3B8;
    }
  }

  v62 = *v60;
  sub_1E3741EA0(v59, v0, &qword_1ECF2AEF8, &qword_1E429F908);
  v63 = (v0 + *(v77 + 36));
  *v63 = v62;
  v63[1] = sub_1E3803508;
  v63[2] = 0;
  v64 = v80;
  sub_1E3741EA0(v0, v80, &qword_1ECF2AF00, &unk_1E429F910);
  sub_1E3743538(v40, v37, &qword_1ECF2AF08, &unk_1E42D3100);
  v65 = v81;
  sub_1E3743538(v64, v81, &qword_1ECF2AF00, &unk_1E429F910);
  v66 = v82;
  sub_1E3743538(v37, v82, &qword_1ECF2AF08, &unk_1E42D3100);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF10, &qword_1E429F920);
  sub_1E3743538(v65, v66 + *(v67 + 48), &qword_1ECF2AF00, &unk_1E429F910);
  sub_1E325F6F0(v64, &qword_1ECF2AF00, &unk_1E429F910);
  sub_1E325F6F0(v40, &qword_1ECF2AF08, &unk_1E42D3100);
  sub_1E325F6F0(v65, &qword_1ECF2AF00, &unk_1E429F910);
  sub_1E325F6F0(v37, &qword_1ECF2AF08, &unk_1E42D3100);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38030F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v46 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v45 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v43 = v6 - v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - v23;
  v25 = sub_1E39C408C();
  v44 = v1;
  if (v25)
  {
    if (*v25 == _TtC8VideosUI13TextViewModel)
    {
      v26 = *(v1 + *(type metadata accessor for SportsScoreboardViewAccessibleView(0) + 28));
      OUTLINED_FUNCTION_5_0(v26 + 248, &v47);
      if (*(v26 + 248))
      {
      }

      OUTLINED_FUNCTION_18();
      sub_1E3F23370();

      (*(v45 + 32))(v24, v10, v3);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_21_18();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = sub_1E39C408C();
  if (v31)
  {
    if (*v31 == _TtC8VideosUI13TextViewModel)
    {
      v32 = *(v44 + *(type metadata accessor for SportsScoreboardViewAccessibleView(0) + 28));
      OUTLINED_FUNCTION_5_0(v32 + 248, &v48);
      if (*(v32 + 248))
      {
      }

      OUTLINED_FUNCTION_18();
      v33 = v43;
      sub_1E3F23370();

      (*(v45 + 32))(v21, v33, v3);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_21_18();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  sub_1E3743538(v24, v18, &qword_1ECF29210, &qword_1E4299980);
  sub_1E3743538(v21, v15, &qword_1ECF29210, &qword_1E4299980);
  v38 = v46;
  OUTLINED_FUNCTION_21_1();
  sub_1E3743538(v39, v40, v41, &qword_1E4299980);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF20, &qword_1E42F5BC0);
  sub_1E3743538(v15, v38 + *(v42 + 48), &qword_1ECF29210, &qword_1E4299980);
  OUTLINED_FUNCTION_27_12(v21);
  OUTLINED_FUNCTION_27_12(v24);
  OUTLINED_FUNCTION_27_12(v15);
  OUTLINED_FUNCTION_27_12(v18);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3803510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E38038D0(a1, a2, a3);
  result = sub_1E4201D74();
  qword_1EE28B3B8 = result;
  return result;
}

void sub_1E3803584(uint64_t a1)
{
  sub_1E3803688(319, &qword_1EE289EA8, MEMORY[0x1E697E7E0]);
  if (v1 <= 0x3F)
  {
    sub_1E3803688(319, &qword_1EE289EB0, MEMORY[0x1E697E730]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ScoreboardViewModel(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SportsScoreboardLayout();
        if (v4 <= 0x3F)
        {
          sub_1E374A270();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3803688(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4200B94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1E38036DC()
{
  result = qword_1ECF2AE80;
  if (!qword_1ECF2AE80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AE70, &qword_1E429F820);
    sub_1E32752B0(&qword_1ECF2AE88, &qword_1ECF2AE60, &qword_1E429F810, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AE80);
  }

  return result;
}

unint64_t sub_1E3803794()
{
  result = qword_1ECF2AEB8;
  if (!qword_1ECF2AEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AE98, &qword_1E429F8B0);
    sub_1E32752B0(&qword_1ECF2AEC0, &qword_1ECF2AEC8, &qword_1E429F8D0, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AEB8);
  }

  return result;
}

uint64_t sub_1E3803844(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

double sub_1E380388C(uint64_t a1, uint64_t a2)
{
  if (a1 != 1)
  {
  }

  return result;
}

unint64_t sub_1E38038D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2AA1D0[0];
  if (!qword_1EE2AA1D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2AA1D0);
  }

  return result;
}

uint64_t type metadata accessor for OfferCard(uint64_t a1)
{
  result = qword_1EE28F290;
  if (!qword_1EE28F290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3803980(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for OfferCard(0);
  v7 = *(v6 + 28);
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v8 = (a3 + *(v6 + 32));
  type metadata accessor for ViewInteractionStates(0);
  v23[0] = sub_1E3B1E0A8(0);
  sub_1E42038E4();
  v9 = v25[1];
  *v8 = v25[0];
  v8[1] = v9;
  *a3 = a1;
  v10 = *(*a1 + 392);

  v12 = v10(v11);

  if (v12)
  {
    v13 = *v12;
    if (*v12 == _TtC8VideosUI15OfferCardLayout)
    {
      goto LABEL_5;
    }
  }

  type metadata accessor for OfferCardLayout();
  v12 = sub_1E3FB6848();
  v13 = *v12;
LABEL_5:
  isa = v13[12].isa;

  *(a3 + 16) = (isa)(v15);
  if (*(a2 + 136))
  {

    sub_1E37E6F2C(a2);
  }

  else
  {
    v16 = *(a2 + 120);
    cache = (*v12)[4].cache;
    v18 = cache(v23);
    if (v24)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = *&v23[1];
    }

    (cache)(v25, v18);

    v20 = *&v25[3];
    if (v26)
    {
      v20 = 0.0;
    }

    v21 = v16 - v19 - v20;
    v22 = sub_1E374E9C4();
    (*(*v22 + 256))(*&v21, 0);
    sub_1E37E6F2C(a2);
  }

  *(a3 + 8) = v12;
}

uint64_t sub_1E3803C24@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v82 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v80 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v79 = v5 - v4;
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v77 = v7;
  v78 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v76 = v9 - v8;
  v10 = type metadata accessor for OfferCard(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF30, &qword_1E429F9B0);
  OUTLINED_FUNCTION_0_10();
  v68 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v67 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF38, &qword_1E429F9B8);
  OUTLINED_FUNCTION_0_10();
  v69 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_26_2();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF40, &qword_1E429F9C0);
  OUTLINED_FUNCTION_0_10();
  v70 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v67 = &v67 - v24;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF48, &qword_1E429F9C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v67 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF50, &qword_1E429F9D0);
  OUTLINED_FUNCTION_0_10();
  v74 = v29;
  v75 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  v72 = &v67 - v31;
  sub_1E3804370(v18);
  v32 = v1;
  sub_1E380498C(v1, v13);
  v33 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v34 = swift_allocObject();
  sub_1E3806224(v13, v34 + v33, type metadata accessor for OfferCard);
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF58, &qword_1E429F9D8);
  OUTLINED_FUNCTION_5_45();
  v38 = sub_1E3804AC4(v36, &qword_1ECF2AF58, &qword_1E429F9D8, v37);
  v85 = v35;
  v86 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = j__OUTLINED_FUNCTION_18();
  sub_1E383F5C4(v40 & 1, sub_1E38049F0, v34, 0, 0, v14, OpaqueTypeConformance2);

  (*(v68 + 8))(v18, v14);
  v41 = v32[1];
  v85 = v14;
  v86 = OpaqueTypeConformance2;
  v42 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_35_5();
  LOBYTE(v18) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_5();
  LOBYTE(v34) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_5();
  LOBYTE(v14) = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_35_5();
  v43 = OUTLINED_FUNCTION_51_1();
  v44 = v18 & 1;
  v45 = v67;
  sub_1E383F6D4(v41, v44, v34 & 1, v14 & 1, v43 & 1, v19, v42);
  v46 = OUTLINED_FUNCTION_74();
  v48 = v47(v46);
  v49 = (*(**v32 + 392))(v48);
  if (v49 && ((*(*v49 + 152))(&v85), v50 = v85, v51 = v86, v52 = v87, v53 = v88, , (v89 & 1) == 0))
  {
    v54.n128_u64[0] = v50;
    v55.n128_u64[0] = v51;
    v56.n128_u64[0] = v52;
    v57.n128_u64[0] = v53;
    j_nullsub_1(v54, v55, v56, v57);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v58 = sub_1E4202734();
  (*(v70 + 32))(v27, v45, v71);
  v59 = v73;
  v60 = &v27[*(v73 + 36)];
  *v60 = v58;
  OUTLINED_FUNCTION_11_4(v60);
  v61 = v76;
  sub_1E4202474();
  v62 = sub_1E3804C8C();
  v63 = v72;
  sub_1E4203224();
  (*(v77 + 8))(v61, v78);
  sub_1E325F6F0(v27, &qword_1ECF2AF48, &qword_1E429F9C8);
  v64 = v79;
  sub_1E4201C94();
  v83 = v59;
  v84 = v62;
  swift_getOpaqueTypeConformance2();
  v65 = v75;
  sub_1E4203294();
  (*(v80 + 8))(v64, v82);
  return (*(v74 + 8))(v63, v65);
}

uint64_t sub_1E3804370@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v84 = a1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFA0, &qword_1E429F9F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v77 - v5);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF90, &qword_1E429F9F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v77 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF80, &qword_1E429F9E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v77 - v11;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF70, &qword_1E429F9E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v77 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AF58, &qword_1E429F9D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_26_2();
  v16 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = (v21 - v20);
  type metadata accessor for OfferCard(0);
  sub_1E3746E10(v22);
  v23 = v22;
  v24 = sub_1E3B0352C();
  (*(v18 + 8))(v22, v16);
  if (v24)
  {
    sub_1E4201D54();
    OUTLINED_FUNCTION_13_41();
    v26 = (*(v25 + 1152))();
    v85 = v16;
    v86 = v26;
    LOBYTE(v87) = v27 & 1;
    sub_1E37E65E0(v26, v27, v28);
  }

  else
  {
    sub_1E4201B84();
    OUTLINED_FUNCTION_13_41();
    v30 = (*(v29 + 1152))();
    v85 = v16;
    v86 = v30;
    LOBYTE(v87) = v31 & 1;
    sub_1E37E658C(v30, v31, v32);
  }

  v33 = sub_1E4203E84();
  (*(*v22 + 176))(&v85);
  if (v89)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v36.n128_u64[0] = v87;
    v37.n128_u64[0] = v88;
    v34.n128_u64[0] = v85;
    v35.n128_u64[0] = v86;
    j_nullsub_1(v34, v35, v36, v37);
  }

  if (v24)
  {
    v38 = 2;
  }

  else
  {
    v38 = *(v3 + 16);
  }

  (*(*v22 + 488))(v38);
  *v6 = v33;
  v39 = *(v78 + 44);

  sub_1E3804E24(v6 + v39);
  v40 = sub_1E4202764();
  v41 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v40)
  {
    v41 = sub_1E4202774();
  }

  sub_1E4200A54();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_1E3741EA0(v6, v9, &qword_1ECF2AFA0, &qword_1E429F9F8);
  v50 = &v9[*(v79 + 36)];
  *v50 = v41;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  v51 = sub_1E4202784();
  v52 = sub_1E4202774();
  sub_1E4202774();
  v53 = sub_1E4202774();
  v54 = v82;
  if (v53 != v51)
  {
    v52 = sub_1E4202774();
  }

  sub_1E4200A54();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  sub_1E3741EA0(v9, v12, &qword_1ECF2AF90, &qword_1E429F9F0);
  v63 = &v12[*(v80 + 36)];
  *v63 = v52;
  *(v63 + 1) = v56;
  *(v63 + 2) = v58;
  *(v63 + 3) = v60;
  *(v63 + 4) = v62;
  v63[40] = 0;
  v64 = sub_1E4202744();
  v65 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v64)
  {
    v65 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  sub_1E3741EA0(v12, v54, &qword_1ECF2AF80, &qword_1E429F9E8);
  v66 = (v54 + *(v81 + 36));
  *v66 = v65;
  v67 = OUTLINED_FUNCTION_12_31(v66);
  v68 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v67)
  {
    v68 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v54, v2, &qword_1ECF2AF70, &qword_1E429F9E0);
  v69 = v83;
  v70 = (v2 + *(v83 + 36));
  *v70 = v68;
  OUTLINED_FUNCTION_11_4(v70);
  OUTLINED_FUNCTION_5_45();
  v73 = sub_1E3804AC4(v71, &qword_1ECF2AF58, &qword_1E429F9D8, v72);
  sub_1E3883AF4(v23, v69, v73);

  v74 = OUTLINED_FUNCTION_74();
  return sub_1E325F6F0(v74, v75, &qword_1E429F9D8);
}

uint64_t sub_1E380498C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OfferCard(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1E38049F0(uint64_t a1)
{
  v2 = type metadata accessor for OfferCard(0);
  OUTLINED_FUNCTION_17_2(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFD0, &qword_1E429FA70);
  sub_1E42038F4();
  sub_1E3B1E260(a1);

  return result;
}

uint64_t sub_1E3804AC4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3804BA8()
{
  result = qword_1ECF2AF98;
  if (!qword_1ECF2AF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AFA0, &qword_1E429F9F8);
    sub_1E32752B0(&qword_1EE289DD0, &qword_1ECF2AAA0, &qword_1E429EAE0, MEMORY[0x1E697DDD0]);
    sub_1E32752B0(&qword_1ECF2AFA8, &qword_1ECF2AFB0, &qword_1E429FA00, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AF98);
  }

  return result;
}

unint64_t sub_1E3804C8C()
{
  result = qword_1ECF2AFB8;
  if (!qword_1ECF2AFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF48, &qword_1E429F9C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF38, &qword_1E429F9B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF30, &qword_1E429F9B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF58, &qword_1E429F9D8);
    sub_1E3804AC4(&qword_1ECF2AF60, &qword_1ECF2AF58, &qword_1E429F9D8, sub_1E3804A94);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AFB8);
  }

  return result;
}

uint64_t sub_1E3804E24@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_6();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFD8, &qword_1E429FA78);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFE0, &qword_1E429FA80);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v28 - v23;
  sub_1E38050D8();
  sub_1E38056C0();
  sub_1E3805B14(v8);
  sub_1E3743538(v24, v21, &qword_1ECF2AFE0, &qword_1E429FA80);
  sub_1E3743538(v16, v13, &qword_1ECF2AFD8, &qword_1E429FA78);
  sub_1E3743538(v8, v5, &qword_1ECF29938, &unk_1E429C3F0);
  v25 = v29;
  sub_1E3743538(v21, v29, &qword_1ECF2AFE0, &qword_1E429FA80);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFE8, &qword_1E429FA88);
  sub_1E3743538(v13, v25 + *(v26 + 48), &qword_1ECF2AFD8, &qword_1E429FA78);
  sub_1E3743538(v5, v25 + *(v26 + 64), &qword_1ECF29938, &unk_1E429C3F0);
  sub_1E325F6F0(v8, &qword_1ECF29938, &unk_1E429C3F0);
  sub_1E38061BC(v16);
  sub_1E325F6F0(v24, &qword_1ECF2AFE0, &qword_1E429FA80);
  sub_1E325F6F0(v5, &qword_1ECF29938, &unk_1E429C3F0);
  sub_1E38061BC(v13);
  return sub_1E325F6F0(v21, &qword_1ECF2AFE0, &qword_1E429FA80);
}

void sub_1E38050D8()
{
  OUTLINED_FUNCTION_21_5();
  v55 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFF8, &qword_1E429FA90);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v53[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B000, &qword_1E429FA98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B008, &qword_1E429FAA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53[-v9];
  v11 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = (v16 - v15);
  type metadata accessor for OfferCard(0);
  sub_1E3746E10(v17);
  sub_1E3B0352C();
  (*(v13 + 8))(v17, v11);
  OUTLINED_FUNCTION_8();
  (*(v18 + 176))(v56);
  if (v57)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v22.n128_u64[0] = v56[3];
    v21.n128_u64[0] = v56[2];
    v20.n128_u64[0] = v56[1];
    v19.n128_u64[0] = v56[0];
    j_nullsub_1(v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_8();
  v24 = (*(v23 + 488))();
  if (v24)
  {
    v26 = sub_1E373E010(39, v24, v25);

    if (v26)
    {
      v27 = *(*v26 + 392);

      v29 = v27(v28);

      if (v29)
      {
        type metadata accessor for ImageLayout();
        v30 = swift_dynamicCastClass();
        if (v30)
        {
          OUTLINED_FUNCTION_8();
          v32 = *(v31 + 304);

          v34 = COERCE_DOUBLE(v32(v33));
          v36 = v35;

          if (v36)
          {
            v37 = 0.0;
          }

          else
          {
            v37 = v34;
          }

          v38 = *(*v30 + 1704);

          v40 = v38(v39);

          if (v40 != 2 && (v40 & 1) != 0)
          {
            [objc_opt_self() scaleContentSizeValue:0 forTraitCollection:v37];
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v26 = 0;
  }

  *v5 = sub_1E4201D44();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B010, &qword_1E429FAA8);
  sub_1E3805CC0(v26, &v5[*(v41 + 44)]);
  sub_1E4203DA4();
  sub_1E42015C4();
  sub_1E3741EA0(v5, v0, &qword_1ECF2AFF8, &qword_1E429FA90);
  memcpy((v0 + *(v6 + 36)), v58, 0x70uLL);
  v42 = sub_1E4202744();
  v43 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v42)
  {
    v43 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  v44 = OUTLINED_FUNCTION_74();
  sub_1E3741EA0(v44, v45, v46, v47);
  v48 = &v10[*(v54 + 36)];
  *v48 = v43;
  v49 = OUTLINED_FUNCTION_12_31(v48);
  v50 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v49)
  {
    v50 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  v51 = v55;
  sub_1E3741EA0(v10, v55, &qword_1ECF2B008, &qword_1E429FAA0);
  v52 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFE0, &qword_1E429FA80) + 36));
  *v52 = v50;
  OUTLINED_FUNCTION_11_4(v52);
  OUTLINED_FUNCTION_20_0();
}

void sub_1E38056C0()
{
  OUTLINED_FUNCTION_21_5();
  v43 = v1;
  v2 = type metadata accessor for StackedTextViews(0);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29078, &qword_1E4299638);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - v6;
  v8 = (*(**v0 + 488))(v5);
  v42 = v7;
  if (v8)
  {
    v9 = v8;

    v11 = sub_1E373E010(23, v9, v10);

    if (v11 && *v11 != _TtC8VideosUI13TextViewModel)
    {

      v11 = 0;
    }

    v13 = sub_1E373E010(17, v9, v12);

    if (v13 && *v13 != _TtC8VideosUI13TextViewModel)
    {

      v13 = 0;
    }

    v15 = sub_1E373E010(15, v9, v14);

    if (v15 && *v15 != _TtC8VideosUI13TextViewModel)
    {

      v15 = 0;
    }

    v17 = sub_1E373E010(222, v9, v16);
  }

  else
  {
    v17 = 0;
    v15 = 0;
    v13 = 0;
    v11 = 0;
  }

  v18 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFF0, &qword_1E42AFDB0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1E4298AD0;
  *(v19 + 32) = v11;
  *(v19 + 40) = v13;
  *(v19 + 48) = v17;
  *(v19 + 56) = v15;
  OUTLINED_FUNCTION_8();
  v21 = *(v20 + 176);

  v21(v44, v22);
  if (v45)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v25.n128_u64[0] = v44[2];
    v26.n128_u64[0] = v44[3];
    v23.n128_u64[0] = v44[0];
    v24.n128_u64[0] = v44[1];
    j_nullsub_1(v23, v24, v25, v26);
  }

  v27 = v18;
  v28 = sub_1E4201D54();
  sub_1E403E278(v19, v27, v28, 1);
  v29 = sub_1E4202744();
  v30 = sub_1E4202774();
  sub_1E4202774();
  v31 = sub_1E4202774();
  v32 = v42;
  if (v31 != v29)
  {
    v30 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_9_10();
  v33 = OUTLINED_FUNCTION_74();
  sub_1E3806224(v33, v34, v35);
  v36 = (v32 + *(v41 + 36));
  *v36 = v30;
  v37 = OUTLINED_FUNCTION_12_31(v36);
  v38 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v37)
  {
    v38 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();

  v39 = v43;
  sub_1E3806280(v32, v43);
  v40 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFD8, &qword_1E429FA78) + 36));
  *v40 = v38;
  OUTLINED_FUNCTION_11_4(v40);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3805B14@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v8 = (*(**v1 + 488))();
  if (v8)
  {
    v10 = sub_1E373E010(31, v8, v9);

    if (v10)
    {
      type metadata accessor for ImageViewModel();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        sub_1E3EB9BB4(v19);
        v13 = OUTLINED_FUNCTION_18();
        sub_1E37E8BE8(v12, v19, 0, v13 & 1, 0, 0, v2);

        sub_1E375C31C(v19);
        (*(v6 + 32))(a1, v2, v4);
        return OUTLINED_FUNCTION_39_5();
      }
    }
  }

  v15 = OUTLINED_FUNCTION_34_5();

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_1E3805CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - v8;
  if (a1 && (type metadata accessor for ImageViewModel(), (v10 = swift_dynamicCastClass()) != 0))
  {
    v11 = v10;
    v12 = *(*v10 + 392);

    if (v12(v13))
    {
      type metadata accessor for ImageLayout();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
      }
    }

    else
    {
      v14 = 0;
    }

    sub_1E3EB9BB4(v21);
    v20 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v11, v21, v14, v20 & 1, 0, 0, v9);

    sub_1E375C31C(v21);
    (*(v6 + 32))(a2, v9, v4);
    return OUTLINED_FUNCTION_39_5();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_34_5();

    return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }
}

void sub_1E3805EBC(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    type metadata accessor for OfferCardLayout();
    if (v2 <= 0x3F)
    {
      sub_1E3805FE8();
      if (v3 <= 0x3F)
      {
        sub_1E3806038(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1E3806038(319, &qword_1EE288688, type metadata accessor for ViewInteractionStates, MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E3805FE8()
{
  if (!qword_1EE287238)
  {
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE287238);
    }
  }
}

void sub_1E3806038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1E380609C()
{
  result = qword_1ECF2AFC0;
  if (!qword_1ECF2AFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AFC8, &qword_1E429FA68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2AF48, &qword_1E429F9C8);
    sub_1E3804C8C();
    swift_getOpaqueTypeConformance2();
    sub_1E3806164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2AFC0);
  }

  return result;
}

unint64_t sub_1E3806164()
{
  result = qword_1EE288768;
  if (!qword_1EE288768)
  {
    sub_1E4202624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288768);
  }

  return result;
}

uint64_t sub_1E38061BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AFD8, &qword_1E429FA78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3806224(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

uint64_t sub_1E3806280(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29078, &qword_1E4299638);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3806314(void *a1)
{
  OUTLINED_FUNCTION_37(a1);
  swift_unknownObjectWeakAssign();
}

void (*sub_1E3806360(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_appContext;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_11_3(v1 + v4, v3);
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38063DC;
}

void sub_1E38063DC(uint64_t a1)
{
  OUTLINED_FUNCTION_2_9(a1);
  swift_unknownObjectWeakAssign();
  if (v3)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v1);
}

uint64_t sub_1E3806464(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v4 = *a1;
  OUTLINED_FUNCTION_15_0(v2 + *a1, a2);
  return a2(v2 + v4);
}

double sub_1E38064AC(uint64_t a1)
{
  OUTLINED_FUNCTION_37(a1);
  swift_weakAssign();

  return result;
}

void (*sub_1E38064FC(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_parent;
  v3[4] = v1;
  v3[5] = v4;
  OUTLINED_FUNCTION_11_3(v1 + v4, v3);
  v3[3] = swift_weakLoadStrong();
  return sub_1E3806578;
}

void sub_1E3806578(uint64_t a1)
{
  OUTLINED_FUNCTION_2_9(a1);
  swift_weakAssign();
  if (v2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v1);
}

double variable initialization expression of DocumentServiceRequestContext.contextDataRef@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_1E380665C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  OUTLINED_FUNCTION_15_0(v3 + *a1, a2);
  return sub_1E3294F34(v3 + v5, a3);
}

uint64_t sub_1E38066B0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_11_3(v2 + *a2, v6);
  sub_1E37EB5D0(a1, v2 + v4);
  return swift_endAccess();
}

uint64_t sub_1E380680C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_37(a1);
  *(v2 + v4) = a1;
}

uint64_t DocumentServiceRequestContext.__allocating_init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v14 = a2;
  v15 = a1;
  v16 = swift_allocObject();
  DocumentServiceRequestContext.init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(v15, v14, a3, a4, a5, a6, a7, v8);
  return v16;
}

uint64_t DocumentServiceRequestContext.init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(char a1, char a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char a8)
{
  v26 = a6;
  v27 = a7;
  v24 = a3;
  v25 = a4;
  v13 = sub_1E41FE624();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_weakInit();
  v17 = (v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_contextDataRef);
  *v17 = 0u;
  v17[1] = 0u;
  v18 = (v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_prefetchDataRef);
  *v18 = 0u;
  v18[1] = 0u;
  *(v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_updateContextDataRef) = 0;
  *(v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_appendContextDataRef) = 0;
  sub_1E41FE614();
  (*(v14 + 32))(v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_requestID, v16, v13);
  *(v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_animateUpdates) = a8;
  *(v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_requestType) = a2;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();

  *(v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_documentType) = a1;
  v19 = (v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef);
  v20 = v25;
  *v19 = v24;
  v19[1] = v20;
  v21 = OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_contextDataRef;
  OUTLINED_FUNCTION_11_3(v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_contextDataRef, v28);
  sub_1E37EB5D0(v26, v8 + v21);
  swift_endAccess();
  v22 = OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_prefetchDataRef;
  OUTLINED_FUNCTION_11_3(v8 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_prefetchDataRef, v28);
  sub_1E37EB5D0(v27, v8 + v22);
  swift_endAccess();
  return v8;
}

uint64_t sub_1E3806B44@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B018, &unk_1E42D5B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A200;
  strcpy((inited + 32), "documentType");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v4 = DocumentType.rawValue.getter(*(v1 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_documentType));
  v5 = MEMORY[0x1E69E6158];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  *(inited + 72) = v5;
  strcpy((inited + 80), "controllerRef");
  *(inited + 94) = -4864;
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef + 8);
  *(inited + 96) = *(v1 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_controllerRef);
  *(inited + 104) = v7;
  *(inited + 120) = v5;
  strcpy((inited + 128), "contextDataRef");
  *(inited + 143) = -18;
  OUTLINED_FUNCTION_8();
  v9 = *(v8 + 216);

  v9(v10);
  *(inited + 176) = 0x6863746566657270;
  *(inited + 184) = 0xEF66655261746144;
  OUTLINED_FUNCTION_8();
  (*(v11 + 240))();
  *(inited + 224) = 0x5474736575716572;
  *(inited + 232) = 0xEB00000000657079;
  v12 = *(v1 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_requestType);
  v13 = ViewModelRequestType.rawValue.getter(*(v1 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_requestType));
  *(inited + 264) = v5;
  *(inited + 240) = v13;
  *(inited + 248) = v14;
  ViewModelKeys.rawValue.getter(34);
  *(inited + 272) = v15;
  *(inited + 280) = v16;
  v17 = (*(*v1 + 264))();
  v18 = v17;
  if (v17)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  }

  else
  {
    *(inited + 296) = 0;
    *(inited + 304) = 0;
  }

  *(inited + 288) = v18;
  *(inited + 312) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  v19 = sub_1E4205CB4();
  if (sub_1E37D01CC(v12, 2, v20))
  {
    OUTLINED_FUNCTION_8();
    v22 = (*(v21 + 288))();
    if (v22)
    {
      *&v30 = v22;
      *(&v31 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1E3807164(&v30, 0xD000000000000014, 0x80000001E425E740, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      v24 = sub_1E327D33C(0xD000000000000014, 0x80000001E425E740);
      if (v25)
      {
        v26 = v24;
        swift_isUniquelyReferenced_nonNull_native();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B028, &unk_1E429FAC0);
        sub_1E4207644();

        v27 = (*(v19 + 56) + 32 * v26);
        v28 = v27[1];
        v30 = *v27;
        v31 = v28;
        sub_1E4207664();
      }

      else
      {
        v30 = 0uLL;
        *&v31 = 0;
        *(&v31 + 1) = 1;
      }

      sub_1E325F6F0(&v30, &qword_1ECF2B020, &qword_1E429FAB8);
    }
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0, &qword_1E429FAB0);
  a1[3] = result;
  *a1 = v19;
  return result;
}

uint64_t DocumentServiceRequestContext.deinit()
{
  v1 = OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_requestID;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  MEMORY[0x1E69144A0](v0 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_appContext);
  swift_weakDestroy();

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_contextDataRef, &unk_1ECF296E0, &unk_1E4298030);
  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_prefetchDataRef, &unk_1ECF296E0, &unk_1E4298030);

  return v0;
}

uint64_t DocumentServiceRequestContext.__deallocating_deinit()
{
  DocumentServiceRequestContext.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3807068@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8VideosUI29DocumentServiceRequestContext_requestID;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t sub_1E3807164(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B028, &unk_1E429FAC0);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E327D33C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7] + 32 * v12;

    return sub_1E37EB5D0(a1, v17);
  }

  else
  {
    sub_1E38073E0(v12, a2, a3, a1, v16);
  }
}

uint64_t type metadata accessor for DocumentServiceRequestContext(uint64_t a1)
{
  result = qword_1EE293600;
  if (!qword_1EE293600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3807304(uint64_t a1)
{
  result = sub_1E41FE624();
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

unint64_t sub_1E38073E0(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 32 * result);
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1E3807434@<X0>(char a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for MediaShowcasingButtonsPresenter(0);
  OUTLINED_FUNCTION_2_36();
  sub_1E380E6AC(v7);
  result = sub_1E42010C4();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = a1;
  *(a4 + 24) = sub_1E38074D0;
  *(a4 + 32) = a3;
  *(a4 + 40) = 0;
  return result;
}

void sub_1E38074D8()
{
  OUTLINED_FUNCTION_31_1();
  v56 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B030, &qword_1E429FBD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B038, &qword_1E429FBD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B040, &qword_1E429FBE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B048, &qword_1E429FBE8);
  OUTLINED_FUNCTION_0_10();
  v51 = v10;
  v52 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B050, &qword_1E429FBF0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B058, &qword_1E429FBF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8_4();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B060, &qword_1E429FC00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  switch(*(v0 + 16))
  {
    case 1:
      v43 = &v51 - v17;
      sub_1E3807F88();
      v44 = v51;
      v45 = v52;
      (*(v51 + 16))(v2, v13, v52);
      v46 = swift_storeEnumTagMultiPayload();
      sub_1E3807EA8(v46, v47, v48);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B090, qword_1E429FC38);
      OUTLINED_FUNCTION_1();
      v50 = sub_1E3743478(v49);
      OUTLINED_FUNCTION_25_21(v50);
      sub_1E4201F44();
      sub_1E3743538(v43, v1, &qword_1ECF2B060, &qword_1E429FC00);
      OUTLINED_FUNCTION_80_1();
      swift_storeEnumTagMultiPayload();
      sub_1E3807DA4();
      sub_1E3807EFC();
      OUTLINED_FUNCTION_18_16();
      sub_1E4201F44();
      sub_1E325F69C(v43, &qword_1ECF2B060);
      (*(v44 + 8))(v13, v45);
      goto LABEL_7;
    case 2:
    case 3:
      OUTLINED_FUNCTION_84_5();
      swift_storeEnumTagMultiPayload();
      sub_1E3807AAC();
      sub_1E4201F44();
      v18 = &qword_1ECF2B038;
      OUTLINED_FUNCTION_47_4();
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v19, v20, v21, v22);
      OUTLINED_FUNCTION_80_1();
      swift_storeEnumTagMultiPayload();
      sub_1E3807DA4();
      sub_1E3807EFC();
      OUTLINED_FUNCTION_18_16();
      sub_1E4201F44();
      v23 = v4;
      goto LABEL_4;
    case 4:
      sub_1E3808158();
      v18 = &qword_1ECF2B040;
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v24, v25, v26, v27);
      OUTLINED_FUNCTION_84_5();
      swift_storeEnumTagMultiPayload();
      sub_1E3807AAC();
      sub_1E4201F44();
      v28 = OUTLINED_FUNCTION_47_4();
      sub_1E3743538(v28, v29, &qword_1ECF2B038, &qword_1E429FBD8);
      OUTLINED_FUNCTION_80_1();
      swift_storeEnumTagMultiPayload();
      sub_1E3807DA4();
      sub_1E3807EFC();
      OUTLINED_FUNCTION_18_16();
      sub_1E4201F44();
      sub_1E325F69C(v4, &qword_1ECF2B038);
      v23 = v3;
LABEL_4:
      v30 = v18;
      goto LABEL_6;
    default:
      type metadata accessor for MediaShowcasingButtonsPresenter(0);
      OUTLINED_FUNCTION_2_36();
      sub_1E380E6AC(v31);

      OUTLINED_FUNCTION_82();
      v32 = sub_1E42010C4();
      *v2 = 0;
      *(v2 + 8) = v32;
      *(v2 + 16) = v33;
      v34 = swift_storeEnumTagMultiPayload();
      sub_1E3807EA8(v34, v35, v36);

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B090, qword_1E429FC38);
      OUTLINED_FUNCTION_1();
      v38 = sub_1E3743478(v37);
      OUTLINED_FUNCTION_25_21(v38);
      sub_1E4201F44();
      OUTLINED_FUNCTION_47_4();
      OUTLINED_FUNCTION_18_5();
      sub_1E3743538(v39, v40, v41, v42);
      OUTLINED_FUNCTION_80_1();
      swift_storeEnumTagMultiPayload();
      sub_1E3807DA4();
      sub_1E3807EFC();
      OUTLINED_FUNCTION_18_16();
      sub_1E4201F44();

      OUTLINED_FUNCTION_82();
LABEL_6:
      sub_1E325F69C(v23, v30);
LABEL_7:
      OUTLINED_FUNCTION_25_2();
      return;
  }
}

unint64_t sub_1E3807AAC()
{
  result = qword_1EE288708;
  if (!qword_1EE288708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B040, &qword_1E429FBE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B068, &unk_1E429FC08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
    sub_1E3807BCC();
    sub_1E3743478(&qword_1EE23ACD8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288708);
  }

  return result;
}

unint64_t sub_1E3807BCC()
{
  result = qword_1EE2899E8;
  if (!qword_1EE2899E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B068, &unk_1E429FC08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B070, &qword_1E429FC18);
    sub_1E3807CC0();
    swift_getOpaqueTypeConformance2();
    sub_1E3743478(&qword_1EE2889D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2899E8);
  }

  return result;
}

unint64_t sub_1E3807CC0()
{
  result = qword_1EE289D98;
  if (!qword_1EE289D98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B070, &qword_1E429FC18);
    sub_1E3743478(&unk_1EE289DD8);
    sub_1E3743478(&unk_1EE288320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289D98);
  }

  return result;
}

unint64_t sub_1E3807DA4()
{
  result = qword_1ECF2B088;
  if (!qword_1ECF2B088)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B060, &qword_1E429FC00);
    sub_1E3807EA8(v1, v2, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B090, qword_1E429FC38);
    sub_1E3743478(&unk_1EE288520);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2B088);
  }

  return result;
}

unint64_t sub_1E3807EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF46FA0[0];
  if (!qword_1ECF46FA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF46FA0);
  }

  return result;
}

unint64_t sub_1E3807EFC()
{
  result = qword_1EE288DF0;
  if (!qword_1EE288DF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2B038, &qword_1E429FBD8);
    sub_1E3807AAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288DF0);
  }

  return result;
}

uint64_t sub_1E3807F88()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B090, qword_1E429FC38);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  v4 = *(v0 + 8);
  v5 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_5_0(v4 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel, v18);
  if (*(v4 + v5) && (OUTLINED_FUNCTION_8(), v7 = *(v6 + 488), v8 = , v9 = v7(v8), , v9) && (v11 = sub_1E373E010(91, v9, v10), , v11))
  {
    OUTLINED_FUNCTION_30_1();
    (*(v12 + 464))();
    OUTLINED_FUNCTION_35_0();
  }

  else
  {
  }

  *v1 = sub_1E4201D44();
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B0B8, &qword_1E429FDD8);
  OUTLINED_FUNCTION_76_0();
  sub_1E3809CBC();

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_13();
  v14 = sub_1E3743478(v13);
  sub_1E418F2CC(1, v2, v14);
  OUTLINED_FUNCTION_40_13();
  return sub_1E325F69C(v15, v16);
}

void sub_1E3808158()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B188, &qword_1E429FE68);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  v8 = *(v0 + 8);
  v9 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel;
  OUTLINED_FUNCTION_5_0(v8 + OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_metadataViewModel, &v19);
  if (*(v8 + v9) && (OUTLINED_FUNCTION_8(), v11 = *(v10 + 488), v12 = , v11(v12), OUTLINED_FUNCTION_89_3(), v11))
  {
    sub_1E373E010(91, v11, v13);
    OUTLINED_FUNCTION_35_0();

    OUTLINED_FUNCTION_8();
    (*(v14 + 464))();
    OUTLINED_FUNCTION_89_3();
  }

  else
  {
  }

  v15 = *(v8 + v9);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = *(*v15 + 392);

  if (!v16(v17))
  {

LABEL_11:

LABEL_12:
    v18 = 1;
    goto LABEL_13;
  }

  type metadata accessor for MediaShowcasingMetadataLayout();
  if (!swift_dynamicCastClass())
  {

    goto LABEL_12;
  }

  sub_1E380852C();

  (*(v6 + 32))(v3, v1, v4);
  v18 = 0;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v3, v18, 1, v4);
  OUTLINED_FUNCTION_25_2();
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E38083DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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