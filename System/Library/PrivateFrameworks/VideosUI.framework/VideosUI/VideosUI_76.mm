void sub_1E3C55C38()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_33_0();
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost))
  {
    v2 = objc_opt_self();
    v3 = [v2 sharedInstance];
    LODWORD(v4) = [v3 isFullscreenPlaybackUIBeingShown];

    v5 = [v2 sharedInstance];
    v6 = [v5 isShowingExtras];

    sub_1E324FBDC();
    v7 = OUTLINED_FUNCTION_71_21();
    v8(v7);
    v9 = v0;
    v10 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_165_5())
    {
      v22 = v4;
      v4 = swift_slowAlloc();
      OUTLINED_FUNCTION_100();
      *v4 = 136315650;
      v11 = sub_1E3C486F4();
      OUTLINED_FUNCTION_58_0(v11, v12);
      OUTLINED_FUNCTION_112();

      *(v4 + 4) = v6;
      *(v4 + 12) = 1024;
      *(v4 + 14) = v22;
      *(v4 + 18) = 1024;
      *(v4 + 20) = v6;
      OUTLINED_FUNCTION_62_2();
      _os_log_impl(v13, v14, v15, v16, v17, 0x18u);
      OUTLINED_FUNCTION_36_40();
      OUTLINED_FUNCTION_79();

      v18 = OUTLINED_FUNCTION_13_8();
      v19(v18);
      LOBYTE(v4) = v22;
    }

    else
    {

      v20 = OUTLINED_FUNCTION_13_8();
      v21(v20);
    }

    *(v9 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_forceDisableAutoAdvance) = (v4 | v6) & 1;
    sub_1E3C472E0();
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3C55E60(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17 - v11;
  v13 = *(a1 + 32);
  if (a2)
  {
    sub_1E41FE584();
    v14 = sub_1E41FE5D4();
    v15 = 0;
  }

  else
  {
    v14 = sub_1E41FE5D4();
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v12, v15, 1, v14);

  v13(v12, a3, a4, a5);

  return sub_1E325F6F0(v12, &unk_1ECF28E20, &unk_1E42986D0);
}

uint64_t sub_1E3C55F88@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E3C55F7C(*a1, a1[1]);
  *a2 = result & 1;
  return result;
}

void sub_1E3C55FC0()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v4 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v8 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v12 = *v3;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v32 = v8;
    v33 = v6;
    v15 = *(Strong + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost) - 1;
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v31 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    if (v15 > 3)
    {
      v38 = sub_1E3C59A68;
      v39 = v16;
      OUTLINED_FUNCTION_46_36();
      v35 = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v36 = v24;
      v37 = &block_descriptor_117;
      v19 = _Block_copy(&v34);

      sub_1E4203FE4();
      v34 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_7_143();
      sub_1E3C59160(v25, v26);
      v27 = OUTLINED_FUNCTION_146_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
      OUTLINED_FUNCTION_47();
      sub_1E328FCF4(v29, v30, &qword_1E429B000);
      OUTLINED_FUNCTION_142_1();
    }

    else
    {
      OUTLINED_FUNCTION_2_4();
      v17 = swift_allocObject();
      *(v17 + 16) = v16;
      *(v17 + 24) = v12;
      v38 = sub_1E3C59AB8;
      v39 = v17;
      OUTLINED_FUNCTION_46_36();
      v35 = 1107296256;
      OUTLINED_FUNCTION_14_1();
      v36 = v18;
      v37 = &block_descriptor_124;
      v19 = _Block_copy(&v34);

      sub_1E4203FE4();
      v34 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_7_143();
      sub_1E3C59160(v20, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
      OUTLINED_FUNCTION_47();
      sub_1E328FCF4(v22, v23, &qword_1E429B000);
    }

    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v1, v0, v19);
    _Block_release(v19);

    (*(v33 + 8))(v0, v4);
    (*(v10 + 8))(v1, v32);
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E3C56354()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - v12;
  v14 = sub_1E324FBDC();
  isa = v3[2].isa;
  v51 = v14;
  v52 = isa;
  v53 = v3 + 2;
  (isa)(v13);
  v16 = v0;
  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();
  v19 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  v20 = &selRef_itemProviderForActivityWithAdamId_previewMetadata_existingItemProvider_;
  if (os_log_type_enabled(v17, v18))
  {
    v21 = swift_slowAlloc();
    v49 = OUTLINED_FUNCTION_100();
    v50 = v3;
    v54 = v49;
    *v21 = 136315394;
    v22 = sub_1E3C486F4();
    OUTLINED_FUNCTION_49_1(v22, v23);
    OUTLINED_FUNCTION_122();

    *(v21 + 4) = v1;
    *(v21 + 12) = 2048;
    v24 = [*(v16 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) mediaInfoIndex];

    *(v21 + 14) = v24;
    v20 = &selRef_itemProviderForActivityWithAdamId_previewMetadata_existingItemProvider_;

    _os_log_impl(&dword_1E323F000, v17, v18, "%s autoAdvance, current page = %lu", v21, 0x16u);
    OUTLINED_FUNCTION_113_7();
    v3 = v50;
    OUTLINED_FUNCTION_6_0();
    v19 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v25 = v3[1].isa;
  v25(v13, v1);
  v26 = [*(v16 + v19[280]) v20[353]];
  if (v26 != -1)
  {
    v27 = v20;
    if (v26 + 1 == sub_1E3C54538(v26) && (v28 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldAutoAdvanceLastPage, OUTLINED_FUNCTION_25(), swift_beginAccess(), (*(v16 + v28) & 1) == 0))
    {
      v52(v10, v51, v1);
      v39 = v16;
      sub_1E41FFC94();
      OUTLINED_FUNCTION_118_7();
      v40 = sub_1E4206814();
      if (!os_log_type_enabled(v1, v40))
      {

        v38 = v10;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_100();
      v53 = v10;
      v41 = OUTLINED_FUNCTION_10_11();
      v54 = v41;
      *v10 = 136315650;
      v42 = sub_1E3C486F4();
      OUTLINED_FUNCTION_49_1(v42, v43);
      v50 = v3;
      OUTLINED_FUNCTION_112();

      *(v10 + 4) = v3;
      *(v10 + 6) = 2048;
      v44 = [*(v39 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) v27 + 3623];

      *(v10 + 14) = v44;
      *(v10 + 11) = 2048;
      v46 = sub_1E3C54538(v45);

      *(v10 + 3) = v46;
      _os_log_impl(&dword_1E323F000, v1, v40, "%s skip since it's the last page & shouldAutoAdvanceLastPage is OFF,\nindex = %lu, pagesCount = %lu", v10, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_55();

      v38 = v53;
      v47 = v7;
    }

    else
    {
      sub_1E3C553FC();
      if (v29)
      {
        v30 = *(v16 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_swipeController);
        if (!v30 || (v31 = OBJC_IVAR____TtC8VideosUI25PaginatingSwipeController_isSwiping, OUTLINED_FUNCTION_25(), swift_beginAccess(), (*(v30 + v31) & 1) == 0))
        {
          sub_1E3C53D48();
        }

        goto LABEL_19;
      }

      v52(v7, v51, v1);
      v32 = v16;
      v33 = sub_1E41FFC94();
      v34 = sub_1E4206814();

      if (os_log_type_enabled(v33, v34))
      {
        OUTLINED_FUNCTION_6_21();
        OUTLINED_FUNCTION_11_16();
        OUTLINED_FUNCTION_118_7();
        v54 = v35;
        *v16 = 136315138;
        v36 = sub_1E3C486F4();
        OUTLINED_FUNCTION_49_1(v36, v37);
        OUTLINED_FUNCTION_26_5();

        *(v16 + 1) = v32;
        _os_log_impl(&dword_1E323F000, v33, v34, "%s Auto advance is disabled", v16, 0xCu);
        OUTLINED_FUNCTION_36_40();
        OUTLINED_FUNCTION_6_0();

        v38 = v7;
LABEL_17:
        v47 = v7;
        goto LABEL_18;
      }

      v38 = v7;
      v47 = v1;
    }

LABEL_18:
    v25(v38, v47);
LABEL_19:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  __break(1u);
}

uint64_t sub_1E3C56874()
{
  v0 = sub_1E3C4ACD4();
  if (v0)
  {
    v1 = v0;
    sub_1E38A75A8(v0);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35BB0, &qword_1E42C5FA8);
    OUTLINED_FUNCTION_0_32();
    sub_1E328FCF4(v3, v4, v5);
    v6 = sub_1E4149048(v2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1E3C5691C()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33_0();
  if (sub_1E3C46830(&OBJC_IVAR____TtC8VideosUI25PaginatingSwipeController_isSwiping) & 1) != 0 || (sub_1E3C46830(&OBJC_IVAR____TtC8VideosUI25PaginatingSwipeController_isAutoSwiping))
  {
    sub_1E324FBDC();
    v3 = OUTLINED_FUNCTION_71_21();
    v4(v3);
    v5 = v0;
    v6 = sub_1E41FFC94();
    v7 = sub_1E4206814();

    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_6_21();
      v26 = OUTLINED_FUNCTION_11_16();
      *v1 = 136315138;
      v8 = sub_1E3C486F4();
      OUTLINED_FUNCTION_58_0(v8, v9);
      OUTLINED_FUNCTION_26_5();

      *(v1 + 4) = v5;
      OUTLINED_FUNCTION_12_17();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    v15 = OUTLINED_FUNCTION_13_8();
    v16(v15);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    v17 = sub_1E3C46A28();
    v18 = [v17 currentPage];

    if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v19 = [*&v0[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageControl] interactionState];
      v20 = *&v0[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController];
      if (v19 == 2)
      {
        [v20 prefetchesVideoFrame];
        OUTLINED_FUNCTION_25_2();

        sub_1E3C4AA34(v21, v22, v23);
      }

      else
      {
        [v20 mediaInfoIndex];
        OUTLINED_FUNCTION_25_2();

        sub_1E3C53D48();
      }
    }
  }
}

void sub_1E3C56BBC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v18 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v17 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v8 = sub_1E4206A04();
  v19[4] = nullsub_1;
  v19[5] = 0;
  OUTLINED_FUNCTION_12_0();
  v19[1] = 1107296256;
  OUTLINED_FUNCTION_14_1();
  v19[2] = v9;
  v19[3] = &block_descriptor_104_0;
  v10 = _Block_copy(v19);
  sub_1E4203FE4();
  v19[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_7_143();
  sub_1E3C59160(v11, v12);
  v13 = OUTLINED_FUNCTION_146_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_47();
  sub_1E328FCF4(v15, v16, &qword_1E429B000);
  OUTLINED_FUNCTION_142_1();
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v1, v0, v10);
  _Block_release(v10);

  (*(v18 + 8))(v0, v2);
  (*(v6 + 8))(v1, v17);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3C56E10(id a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4 >> 62)
  {
    v5 = OUTLINED_FUNCTION_119_1();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_139_7(v4);
  }

  if (v5 < 1 || v5 <= a1)
  {
    return 0;
  }

  if ([*(v1 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) mediaInfoIndex] == a1)
  {
    return sub_1E3C468C4();
  }

  v8 = OUTLINED_FUNCTION_13_8();
  return sub_1E3C56EB8(v8, v9);
}

uint64_t sub_1E3C56EB8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v7 = *&v3[v6];
  if (v7 >> 62)
  {
    v8 = OUTLINED_FUNCTION_119_1();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_139_7(v7);
  }

  if (v8 < 1 || v8 <= a1)
  {
    return 0;
  }

  v54 = v6;
  *&v71 = a2;
  MEMORY[0x1EEE9AC00](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A78, &qword_1E42C5D18);
  sub_1E4148C68(sub_1E3C5927C, v11, &v73);
  v12 = v73;
  v13 = v3[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost];
  v14 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_disableBackgroundExtension;
  OUTLINED_FUNCTION_3_0(v73 + OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_disableBackgroundExtension, &v64);
  *(v12 + v14) = v13 != 0;
  v15 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController;
  v16 = *&v3[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController];
  v17 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_mediaView;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v55 = [v16 createTransitionViewAtIndex:a1 oldView:*(v12 + v17)];
  v18 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_metadataView;
  OUTLINED_FUNCTION_25();
  v19 = swift_beginAccess();
  v57 = v12;
  *&v71 = *(v12 + v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35A80, &unk_1E42C5D20);
  sub_1E4148C68(sub_1E3C59308, v22, &v73);

  v23 = v73;

  sub_1E3926874(a1, 0, v13 == 3);

  v58 = v13;
  if (v13 <= 4 && ((1 << v13) & 0x16) != 0 || v13 == 3)
  {

    v24 = sub_1E3C46CA4();

    sub_1E3925DE8();
    OUTLINED_FUNCTION_3();

    v25 = OUTLINED_FUNCTION_6();
    sub_1E3925EE8(v25, v26, v27, v28);
  }

  v29 = sub_1E3C58F64(*&v3[v15]);
  v30 = v29;
  if (v29)
  {
    *&v71 = v29;
    *&v73 = a1;
    BYTE8(v73) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37A40, &unk_1E42CC520);
    OUTLINED_FUNCTION_0_32();
    sub_1E328FCF4(v31, &qword_1ECF37A40, &unk_1E42CC520);
    sub_1E38D2054(&v73, &v69);

    v30 = v69;
  }

  v32 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v23) + 0x190))(v30);

  v33 = (*((*v32 & *v23) + 0x178))();
  v53 = *((*v32 & *v23) + 0x148);
  v34 = v53(v33);
  v56 = a1;
  if (v34)
  {
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A98, &qword_1E42C5D40);
    v36 = swift_dynamicCastClass();
    if (v36)
    {
      v37 = v36;
      sub_1E3C46F8C(2);
      sub_1E3C55034(&v65);

      v73 = v65;
      v74[0] = v66[0];
      *(v74 + 9) = *(v66 + 9);
      sub_1E4201234();
      v38 = v35;
      goto LABEL_20;
    }
  }

  sub_1E3C46F8C(2);
  sub_1E3C47290();
  OUTLINED_FUNCTION_16_5();

  v37 = v3;
LABEL_20:
  sub_1E4201224();
  v73 = v71;
  v74[0] = v72[0];
  *(v74 + 9) = *(v72 + 9);
  sub_1E37E147C();
  v75 = v73;
  sub_1E325F6F0(&v75, &qword_1ECF2B180, &unk_1E42C5D30);
  v76 = *(v74 + 8);
  v77 = BYTE8(v74[1]);
  sub_1E325F6F0(&v76, &qword_1ECF35A90, &qword_1E429FE60);
  v39 = sub_1E3C46F28();
  v40 = OBJC_IVAR____TtC8VideosUI31MediaShowcasingButtonsPresenter_autoPlayButtonTriggered;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v41 = *(v39 + v40);

  sub_1E3B21870(v41);

  sub_1E4201224();
  v71 = v69;
  v72[0] = v70[0];
  *(v72 + 9) = *(v70 + 9);
  sub_1E37E147C();
  v78 = v71;
  sub_1E325F6F0(&v78, &qword_1ECF2B180, &unk_1E42C5D30);
  v79 = *(v72 + 8);
  v80 = BYTE8(v72[1]);
  sub_1E325F6F0(&v79, &qword_1ECF35A90, &qword_1E429FE60);

  LOBYTE(v41) = sub_1E3B21080();

  sub_1E3B2113C(v41);

  sub_1E4201224();
  v69 = v67;
  v70[0] = v68[0];
  *(v70 + 9) = *(v68 + 9);
  sub_1E37E147C();
  v81 = v69;
  sub_1E325F6F0(&v81, &qword_1ECF2B180, &unk_1E42C5D30);
  v82 = *(v70 + 8);
  v83 = BYTE8(v70[1]);
  sub_1E325F6F0(&v82, &qword_1ECF35A90, &qword_1E429FE60);

  sub_1E3B211AC();

  sub_1E3B21268();

  v43 = v53(v42);

  if (!v43 || (v43, v37 != v43))
  {
    (*((*MEMORY[0x1E69E7D40] & *v23) + 0x170))(v37);
  }

  sub_1E4201224();
  v67 = v62;
  v68[0] = v63[0];
  *(v68 + 9) = *(v63 + 9);
  sub_1E37E147C();
  v84 = v67;
  sub_1E325F6F0(&v84, &qword_1ECF2B180, &unk_1E42C5D30);
  v85 = *(v68 + 8);
  v86 = BYTE8(v68[1]);
  sub_1E325F6F0(&v85, &qword_1ECF35A90, &qword_1E429FE60);
  v61[1] = *&v3[v54];
  v59 = v56;
  v60 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
  OUTLINED_FUNCTION_0_32();
  sub_1E328FCF4(v44, &unk_1ECF2C790, &qword_1E42996A0);
  sub_1E38D2054(&v59, v61);
  sub_1E3B23060();

  if (v58 == 3)
  {
    v45 = v55;
    v10 = v57;
    sub_1E3B512EC(v55, 0);
  }

  else
  {
    v46 = v23;
    v45 = v55;
    v47 = OUTLINED_FUNCTION_146();
    v10 = v57;
    sub_1E3B512EC(v47, v48);

    v49 = sub_1E3C468C4();
    v50 = &v49[OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_mediaViewOffset];
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v51 = v50[1];

    sub_1E3B513C4(v51);
  }

  [v23 vui_setNeedsLayout];
  [v23 vui_layoutIfNeeded];

  return v10;
}

uint64_t sub_1E3C577D4()
{
  sub_1E3C47690();
  v0 = sub_1E3C46A28();
  [v0 setVuiUserInteractionEnabled_];

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_79_1();
    v2 = OUTLINED_FUNCTION_106_13();
    v3(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E3C57874(uint64_t a1)
{
  sub_1E3C558F0();
  v2 = sub_1E3C46A28();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v2;
    [v2 setCurrentPage_];
  }
}

void sub_1E3C578D4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_12_7();
  v12(v11);
  v13 = v0;
  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();

  v71 = v2;
  if (os_log_type_enabled(v14, v15))
  {
    v69 = v5;
    v16 = swift_slowAlloc();
    v67 = OUTLINED_FUNCTION_100();
    v73[0] = v67;
    *v16 = 136315394;
    v17 = sub_1E3C486F4();
    sub_1E3270FC8(v17, v18, v73);
    OUTLINED_FUNCTION_122();

    *(v16 + 4) = v4;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v4;
    _os_log_impl(&dword_1E323F000, v14, v15, "%s didSwipeToPage: %lu", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v67);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v7 + 8))(v11, v69);
  }

  else
  {

    (*(v7 + 8))(v11, v5);
  }

  v19 = v13[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost];
  if (v19 != 3)
  {
    v20 = &v13[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationDelegate];
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v20 + 1);
      v22 = v4;
      ObjectType = swift_getObjectType();
      v24 = [*&v13[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController] mediaInfoIndex];
      v25 = *(v21 + 64);
      v26 = ObjectType;
      v4 = v22;
      v27 = v21;
      v2 = v71;
      v25(v13, v24, v22, v26, v27);
      swift_unknownObjectRelease();
    }
  }

  if (v2)
  {
    v28 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_mediaView;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v29 = *&v2[v28];
    if (v29 && (objc_opt_self(), OUTLINED_FUNCTION_20_2(), (v30 = swift_dynamicCastObjCClass()) != 0))
    {
      v31 = v30;
      v32 = v29;
      v33 = sub_1E3C46884();
      v34 = [v31 image];
      [v33 setImage_];

      if (v19 == 3)
      {
        v35 = sub_1E3C46884();
        [v35 setVuiAlpha_];
      }
    }

    else
    {
      v36 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_metadataView;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v37 = *&v2[v36];
      v32 = v37;
      sub_1E3B512EC(0, v37);
    }
  }

  v38 = sub_1E3C468C4();
  v39 = [v38 vuiLayer];

  if (v39)
  {
    memcpy(v73, MEMORY[0x1E69792E8], 0x80uLL);
    [v39 setTransform_];
  }

  v40 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_swipeTransitionStyle;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v41 = sub_1E34AF508(v13[v40], 0);
  if (v19 != 3 && v41)
  {
    v42 = *&v13[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___containerView];
    sub_1E3B51490(0.0);
  }

  if (!sub_1E34AF508(v13[v40], 1) || [objc_opt_self() isVision])
  {
    v43 = *&v13[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___containerView];
    sub_1E3B51680(v43, 1.0);
  }

  if (v71)
  {
    v44 = v4;
    v45 = v71;
    if (sub_1E3C46C10())
    {
      v46 = OBJC_IVAR____TtC8VideosUI29PaginatedSwipingContainerView_metadataView;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v47 = *&v45[v46];
      if (v47)
      {
        v48 = *((*MEMORY[0x1E69E7D40] & *v47) + 0x148);
        v72 = v47;
        v49 = v48();
        if (v49)
        {
          v50 = v49;
          v70 = v13;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A98, &qword_1E42C5D40);
          v51 = swift_dynamicCastClass();
          if (v51)
          {
            v52 = v51;
            v68 = sub_1E3C46CA4();
            sub_1E3B5138C(0);
            v53 = *&v70[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataView];
            *&v70[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataView] = v47;
            v66 = v72;

            *&v70[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___metadataPresenter] = *&v66[qword_1EE23EF80];

            v54 = *&v70[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___buttonsView];
            *&v70[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___buttonsView] = v52;
            v55 = v50;

            sub_1E4201224();
            *v73 = *&v73[23];
            *&v73[2] = *v74;
            *(&v73[3] + 1) = *&v74[9];
            v56 = sub_1E37E147C();
            v75 = *v73;
            sub_1E325F6F0(&v75, &qword_1ECF2B180, &unk_1E42C5D30);
            v76 = *&v73[3];
            v77 = v73[5];
            sub_1E325F6F0(&v76, &qword_1ECF35A90, &qword_1E429FE60);
            *&v70[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___buttonsPresenter] = v56;

            sub_1E3C468C4();
            v57 = OUTLINED_FUNCTION_76();
            sub_1E3B5138C(v57);

            sub_1E3C4B800();
            v58 = v68;
            v59 = OUTLINED_FUNCTION_112();
            sub_1E3B5138C(v59);
          }

          v13 = v70;
        }
      }
    }

    v4 = v44;
  }

  if ([*&v13[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController] prefetchesVideoFrame])
  {
    v60 = 0;
  }

  else
  {
    v60 = 3;
  }

  sub_1E3C4AA34(v4, v60, 0);
  v61 = sub_1E3C46A28();
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v62 = v61;
    [v61 setCurrentPage_];

    [*&v13[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageControl] setVuiUserInteractionEnabled_];
    if (v19 == 1)
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_getObjectType();
        v63 = sub_1E3C46CA4();
        v64 = OUTLINED_FUNCTION_88();
        v65(v64);
        swift_unknownObjectRelease();
      }
    }

    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E3C58044(double a1)
{
  v2 = v1;
  if (sub_1E3C46280())
  {
    v4 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_swipeTransitionStyle;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (sub_1E34AF508(v2[v4], 0))
    {
      if (v2[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost] != 3)
      {
        v5 = sub_1E3C468C4();
        v6 = sub_1E3C46984();
        [v6 parallaxRatio];
        v8 = v7;

        sub_1E3B51490(-(a1 * v8));
      }

      v9 = [v2 vuiView];
      if (v9)
      {
        v10 = v9;
        [v9 bounds];
        OUTLINED_FUNCTION_3();

        v18.origin.x = OUTLINED_FUNCTION_6();
        v11 = fabs(a1) / CGRectGetWidth(v18);
        v12 = sub_1E3C46984();
        [v12 metadataFadeOutSpeed];
        v14 = v13;

        v15 = 1.0 - v11 * v14;
        if (v15 > 1.0)
        {
          v15 = 1.0;
        }

        if (v15 < 0.0)
        {
          v16 = 0.0;
        }

        else
        {
          v16 = v15;
        }

        v17 = sub_1E3C468C4();
        sub_1E3B51680(v17, v16);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_1E3C581B4()
{
  sub_1E3C475DC();
  v0 = sub_1E3C46A28();
  [v0 setVuiUserInteractionEnabled_];

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_79_1();
    v2 = OUTLINED_FUNCTION_106_13();
    v3(v2);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1E3C58254()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost))
  {
    [*(v0 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) imageTransitionAnimationDuration];
  }

  else
  {
    v1 = [objc_opt_self() sharedInstance];
    v2 = [v1 mediaShowcaseConfig];

    [v2 autoSwipeAnimationDuration];
  }

  return [objc_opt_self() isFeatureEnabled_];
}

void sub_1E3C58360(int a1, id a2)
{
  v3 = &selRef_textLayout;
  v4 = [a2 view];
  if (v4)
  {
    v5 = v4;
    objc_opt_self();
    if (swift_dynamicCastObjCClass() && (v6 = [*(v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) avPlayerViewController]) != 0 && (v7 = v6, v8 = objc_msgSend(v6, sel_view), v7, v8))
    {
      v9 = sub_1E3C58598(v5, v8);

      if (v9)
      {
        return;
      }
    }

    else
    {
    }
  }

  v10 = *(v2 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_playerTabViewControllers);
  v11 = sub_1E32AE9B0(v10);
  if (v11)
  {
    v12 = v11;
    v27 = v10 & 0xFFFFFFFFFFFFFF8;

    v13 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E6911E60](v13, v10);
      }

      else
      {
        if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v17 = [a2 v3[348]];
      if (v17)
      {
        v18 = v17;
        v19 = v3;
        v20 = [v15 v3[348]];
        if (!v20)
        {
          goto LABEL_27;
        }

        v21 = v20;
        v22 = OUTLINED_FUNCTION_146();
        v24 = sub_1E3C58598(v22, v23);

        v3 = v19;
        if (v24)
        {

          return;
        }
      }

      else
      {
      }

      ++v13;
      if (v16 == v12)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_22:
    v25 = [a2 v3[348]];
    if (v25)
    {
      v26 = v25;
      objc_opt_self();
      OUTLINED_FUNCTION_19_3();
      swift_dynamicCastObjCClass();
    }
  }
}

BOOL sub_1E3C58598(void *a1, id a2)
{
  v3 = a1;
  while (1)
  {
    v4 = v3;
    v5 = v4;
    if (v4 == a2)
    {
      break;
    }

    v3 = [v4 superview];

    if (!v3)
    {
      return v5 == a2;
    }
  }

  return v5 == a2;
}

uint64_t sub_1E3C58674()
{
  if (sub_1E3C46A9C())
  {
    sub_1E3C56354();
  }

  return 0;
}

void sub_1E3C586E0()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_33_0();
  v3 = v0[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost];
  if (v3)
  {
    sub_1E324FBDC();
    v4 = OUTLINED_FUNCTION_71_21();
    v5(v4);
    v6 = v0;
    v7 = sub_1E41FFC94();
    v8 = sub_1E4206814();

    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_6_21();
      v9 = OUTLINED_FUNCTION_11_16();
      v26[0] = v9;
      *v6 = 136315138;
      v10 = sub_1E3C45E9C(v3);
      v12 = sub_1E3270FC8(v10, v11, v26);

      *(v6 + 1) = v12;
      _os_log_impl(&dword_1E323F000, v7, v8, "PaginatedMediaController:: tried to handle offer modal with host %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_6_0();
    }

    v13 = OUTLINED_FUNCTION_13_8();
    v14(v13);
  }

  else
  {
    sub_1E3C47690();
    v15 = sub_1E3C46B2C();
    [v15 setCurrentProgress_];

    v16 = [objc_opt_self() defaultCenter];
    v17 = *sub_1E37E13C8();
    v18 = objc_opt_self();
    v19 = v17;
    v20 = [v18 mainQueue];
    OUTLINED_FUNCTION_4_0();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26[4] = sub_1E3C59B30;
    v26[5] = v21;
    OUTLINED_FUNCTION_12_0();
    v26[1] = 1107296256;
    v26[2] = sub_1E3A5EE04;
    v26[3] = &block_descriptor_129_1;
    _Block_copy(v26);

    v22 = OUTLINED_FUNCTION_17_1();
    v24 = [v22 v23];
    v25 = OUTLINED_FUNCTION_41_23();
    _Block_release(v25);

    *&v0[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_offerSelectionModalNotificationToken] = v1;
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3C589A0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1E4205ED4();

  v6 = [v3 initWithName:v5 mediaInfoFetchController:a3];

  return v6;
}

uint64_t sub_1E3C58A04(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x1E6911E60](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x1E6911E60](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_1E4206F64();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3C58BD8(void *a1)
{
  v2 = [a1 playbackInitiatorForRTCReporting];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

void sub_1E3C58C54(void *a1)
{
  if ((*a1 - 3) > 1)
  {
    return;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  v4 = *(Strong + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);

  v5 = [v4 avPlayerViewController];
  if (!v5)
  {
    return;
  }

  v6 = [v5 view];

  if (!v6)
  {
    goto LABEL_19;
  }

  v7 = [v6 subviews];

  sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  OUTLINED_FUNCTION_19_3();
  v8 = sub_1E42062B4();

  if (!sub_1E32AE9B0(v8))
  {

    return;
  }

  if ((v8 & 0xC000000000000001) == 0)
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v8 + 32);
      goto LABEL_9;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v9 = MEMORY[0x1E6911E60](0, v8);
LABEL_9:
  v10 = v9;

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = *(v11 + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController);

    v14 = [v13 avPlayerViewController];
    if (v14)
    {
      [v14 vui:0 setAllowInfoMetadataSubpanel:?];
    }
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_50();
  }

  else
  {
  }
}

void sub_1E3C58E88(void **a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);

      v4 = sub_1E42062A4();

      [v1 setCustomInfoViewControllers_];
    }
  }
}

double sub_1E3C58F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1E3C58F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_1E3C58F64(void *a1)
{
  v2 = [a1 mediaInfos];

  if (!v2)
  {
    return 0;
  }

  sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
  v3 = sub_1E42062B4();

  return v3;
}

void sub_1E3C58FDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setName_];
}

double sub_1E3C59040()
{
  sub_1E3C46D8C();
  sub_1E3927714();

  return result;
}

void sub_1E3C5907C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1E3C46A28();
    v3 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_viewModels;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    [v2 setNumberOfPages_];

    v4 = *&v1[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController];
    v5 = *&v1[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController____lazy_storage___pageControl];
    v6 = [v4 mediaInfoIndex];
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      [v5 setCurrentPage_];
    }
  }
}

uint64_t sub_1E3C59160(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3C591C0()
{
  v0 = sub_1E3C46CA4();
  v1 = sub_1E3C4ACD4();
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x190))();

  return sub_1E3C4E738();
}

id sub_1E3C5927C@<X0>(void *a1@<X8>)
{
  result = [v1[2] vuiView];
  if (result)
  {
    OUTLINED_FUNCTION_106();
    type metadata accessor for PaginatedSwipingContainerView();
    [v1 bounds];
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_6();
    result = sub_1E3890DAC();
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E3C59308(void *a1@<X8>)
{
  type metadata accessor for MediaShowcasingMetadataPresenter(0);
  OUTLINED_FUNCTION_141_7();
  v3 = sub_1E3C46D1C();
  v4 = sub_1E3C46CA4();

  LOBYTE(v4) = sub_1E3925B38();

  sub_1E392625C(v3, v4 & 1);
  OUTLINED_FUNCTION_141_7();
  sub_1E3C46E14(v5);
  OUTLINED_FUNCTION_31_4();

  *a1 = v1;
}

unint64_t sub_1E3C593B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35AA0;
  if (!qword_1ECF35AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35AA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PaginationHost(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for PaginatedMediaController(uint64_t a1)
{
  result = qword_1EE297600;
  if (!qword_1EE297600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3C59558(uint64_t a1)
{
  sub_1E3C59724(319, &qword_1EE28A0A8, MEMORY[0x1E69E7DE0], MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E3C59724(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1E3C59774(uint64_t a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationDelegate;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v7 = (*(v5 + 32))(v3, a1, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void sub_1E3C59854(double a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [*(Strong + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) player];
    if (v4)
    {
      v5 = v4;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong() || (swift_getObjectType(), v6 = OUTLINED_FUNCTION_27_0(), v8 = v7(v6), swift_unknownObjectRelease(), (~LODWORD(v8) & 0x7F800000) == 0) && (LODWORD(v8) & 0x7FFFFF) != 0)
      {
        [v5 duration];
        v8 = 0.0;
        if (v9 > 0.0)
        {
          [v5 duration];
          v8 = a1 / v10;
        }
      }

      v11 = sub_1E3C46B2C();
      *&v12 = v8;
      [v11 setCurrentProgress_];
    }

    else
    {
      v5 = v3;
    }
  }
}

void sub_1E3C599AC(unsigned __int8 *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (v1)
    {
      sub_1E3C46F28();
      sub_1E3B233D4();

      OUTLINED_FUNCTION_148_6();
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v4 = swift_unknownObjectWeakLoadStrong();
      if (v4)
      {
        OUTLINED_FUNCTION_132_7(v4);
        OUTLINED_FUNCTION_12_7();
        v5 = OUTLINED_FUNCTION_17_1();
        v6(v5);
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1E3C59A68()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3C478B4();
    sub_1E3C47BAC();
  }
}

void sub_1E3C59AB8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3C47BAC();
  }
}

void sub_1E3C59B30()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong isViewInTopMostVisibleViewController])
    {
      sub_1E3C475DC();
    }

    v3 = *&v2[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_offerSelectionModalNotificationToken];
    if (v3)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_87_0();
      swift_unknownObjectRetain();
      v4 = [v0 defaultCenter];
      OUTLINED_FUNCTION_87_0();
      swift_unknownObjectRetain();
      [v0 removeObserver_];
      swift_unknownObjectRelease_n();
    }
  }
}

void sub_1E3C59C14(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1E3C59C68()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isPlayingVideo) = 1;
    sub_1E3C47D18();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      OUTLINED_FUNCTION_132_7(v2);
      v3 = OUTLINED_FUNCTION_140_8();
      v4(v3, 1);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3C59D1C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_isPlayingVideo) = 0;
    sub_1E3C47D18();
    sub_1E3C558F0();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      OUTLINED_FUNCTION_132_7(v2);
      v3 = OUTLINED_FUNCTION_140_8();
      v4(v3, 0);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3C59DD0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController;
    if ([*(Strong + OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_backgroundMediaController) didAVPlayerControllerEnterFullscreen])
    {
LABEL_25:

      return;
    }

    if (([OUTLINED_FUNCTION_116_6() shouldShowImageAndStopAfterPausingAtEnd] & 1) == 0 && (objc_msgSend(OUTLINED_FUNCTION_116_6(), sel_prefetchesVideoFrame) & 1) == 0)
    {
      [*&v1[v2] stop];
    }

    v3 = [*&v1[v2] player];
    if (v3)
    {
      v4 = v3;
      if ([v3 externalPlaybackType] || (v10 = objc_msgSend(*&v1[v2], sel_avPlayerViewController)) != 0 && (v11 = v10, v12 = objc_msgSend(v10, sel_isPictureInPictureActive), v11, v12))
      {
        if (v1[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_paginationHost] == 4)
        {
          v5 = [OUTLINED_FUNCTION_116_6() mediaInfoIndex];
          if (v5 == -1)
          {
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          if (v5 + 1 < sub_1E3C54538(v5))
          {
            v6 = [OUTLINED_FUNCTION_116_6() mediaInfoIndex];
            v7 = (v6 + 1);
            if (v6 == -1)
            {
LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

            sub_1E3C4A524();
            v8 = sub_1E3C46A28();
            if ((v7 & 0x8000000000000000) != 0)
            {
LABEL_30:
              __break(1u);
              return;
            }

            v9 = v8;
            [v8 setCurrentPage_];
          }
        }
      }
    }

    sub_1E3C553FC();
    if (v13)
    {
      sub_1E3C477F8();
      sub_1E3C55790(v14);
    }

    v15 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldUsePageControlProgress;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (v1[v15] != 1)
    {
      goto LABEL_25;
    }

    sub_1E3C558F0();
    sub_1E3C553FC();
    if ((v16 & 1) == 0)
    {
LABEL_24:
      v20 = sub_1E3C46B2C();
      [v20 setCurrentProgress_];

      goto LABEL_25;
    }

    v17 = [OUTLINED_FUNCTION_116_6() mediaInfoIndex];
    v18 = sub_1E3C54538(v17);
    if (v18)
    {
      if (v17 < v18 - 1)
      {
        goto LABEL_25;
      }

      v19 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldAutoAdvanceLastPage;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      if (v1[v19])
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_28;
  }
}

void sub_1E3C5A014()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v1 = Strong;
  v2 = sub_1E41FDF24();
  if (v2)
  {
    v3 = v2;
    sub_1E4205F14();
    sub_1E4207414();
    sub_1E375D7E8(v3, &v10, v9);

    sub_1E375D84C(v9);
    if (*(&v11 + 1))
    {
      if (OUTLINED_FUNCTION_21_4())
      {
        if (v9[0])
        {
          sub_1E3C553FC();
          if (v4)
          {
            sub_1E3C477F8();
            sub_1E3C55790(v5);
          }
        }
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  sub_1E325F6F0(&v10, &unk_1ECF296E0, &unk_1E4298030);
LABEL_10:
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    OUTLINED_FUNCTION_132_7(v6);
    OUTLINED_FUNCTION_79_1();
    v7 = OUTLINED_FUNCTION_17_1();
    v8(v7);
    swift_unknownObjectRelease();
  }
}

void sub_1E3C5A180()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong vuiView];
    if (v2)
    {
      v3 = v2;
      v4 = sub_1E3C46CA4();
      v5 = OUTLINED_FUNCTION_17_1();
      [v5 v6];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E3C5A21C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_148_6();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      OUTLINED_FUNCTION_132_7(v2);
      OUTLINED_FUNCTION_79_1();
      v3 = OUTLINED_FUNCTION_17_1();
      v4(v3);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3C5A2B4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E3C56354();
  }
}

void sub_1E3C5A300(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_showsPageControl;
  OUTLINED_FUNCTION_0_12(a1);
  if (*(v2 + v3))
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = sub_1E3C46A28();
  [v5 setVuiAlpha_];
}

void *OUTLINED_FUNCTION_128_6()
{

  return memcpy((v0 + 16), (v0 + 320), 0x81uLL);
}

id OUTLINED_FUNCTION_130_9()
{

  return [v0 (v2 + 3941)];
}

uint64_t OUTLINED_FUNCTION_132_7(uint64_t a1)
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_158_6(uint64_t a1)
{

  return sub_1E4200FE4();
}

uint64_t OUTLINED_FUNCTION_160_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_161_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_162_5()
{

  return sub_1E4206C14();
}

id OUTLINED_FUNCTION_163_4()
{

  return [v1 (v0 + 2867)];
}

unint64_t OUTLINED_FUNCTION_164_3(float a1)
{
  *v1 = a1;

  return sub_1E3C486F4();
}

BOOL OUTLINED_FUNCTION_165_5()
{

  return os_log_type_enabled(v0, v1);
}

void *OUTLINED_FUNCTION_166_4()
{
  v0[145] = 0;
  nullsub_1();

  return memcpy(v0 + 456, v0 + 16, 0x82uLL);
}

uint64_t sub_1E3C5A5E0()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    type metadata accessor for PlaybackStatusLayout();
    v1 = sub_1E3A70EBC(1);
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1E3C5A64C()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    type metadata accessor for ContextMenuButtonLayout();
    v1 = sub_1E3890F28();
    *(v0 + 144) = v1;
  }

  return v1;
}

double sub_1E3C5A6B4()
{
  if ((*(v0 + 160) & 1) == 0)
  {
    return *(v0 + 152);
  }

  *(v0 + 152) = 0x4059000000000000;
  *(v0 + 160) = 0;
  return 100.0;
}

double sub_1E3C5A6D8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E3E5FB0C();
  v4 = *v3;
  OUTLINED_FUNCTION_111();
  v5 += 94;
  v6 = *v5;
  v7 = v5;
  v8 = v4;
  v505 = v7;
  v533 = v6;
  v6(v4);
  v9 = *sub_1E3E5FB88();
  v10 = *(*v2 + 872);
  v11 = v9;
  v10(v9);
  OUTLINED_FUNCTION_9_2();
  v13 = *(v12 + 1776);
  v13();
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1656))();

  OUTLINED_FUNCTION_9_2();
  v16 = *(v15 + 1800);
  v16();
  OUTLINED_FUNCTION_2_1();
  (*(v17 + 1656))();

  OUTLINED_FUNCTION_9_2();
  if ((*(v18 + 1920))())
  {
    type metadata accessor for LayoutGrid();
    OUTLINED_FUNCTION_111();
    (*(v19 + 1560))();
    sub_1E3A25914();
    v574[0] = 0x4014000000000000;
    v574[1] = v20;
    *&v575 = 0x4024000000000000;
    *(&v575 + 1) = v21;
    LOBYTE(v576) = 0;
    OUTLINED_FUNCTION_111();
    (*(v22 + 184))(v574);
    *v570 = 0u;
    v571 = 0u;
    LOBYTE(v572) = 1;
    (*(*v2 + 560))(v570);
    v6(0);
    v23 = (v10)(0);
    v24 = (v13)(v23);
    sub_1E3C6DC94(v24);

    (v16)(v25);
    sub_1E3C6DE18();

    (v16)(v26);
    OUTLINED_FUNCTION_2_1();
    (*(v27 + 2056))(3, 0);

    (v16)(v28);
    OUTLINED_FUNCTION_2_1();
    (*(v29 + 2080))(3, 0);
  }

  else
  {
    LOBYTE(v580) = 0;
    *v620 = xmmword_1E42A76C0;
    v621 = xmmword_1E42A76B0;
    LOBYTE(v622) = 0;
    __asm { FMOV            V2.2D, #14.0 }

    *v617 = xmmword_1E42A76C0;
    v618 = _Q2;
    LOBYTE(v619) = 0;
    __asm { FMOV            V1.2D, #12.0 }

    *v614 = xmmword_1E42A76A0;
    v615 = _Q1;
    LOBYTE(v616) = 0;
    *v611 = xmmword_1E42A76A0;
    v612 = _Q1;
    LOBYTE(v613) = 0;
    type metadata accessor for UIEdgeInsets();
    v37 = v36;
    v38 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_7_21(v38, v39, v40, v41, v42, v43, v44, v45, v7, v533, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, 0, 0x4028000000000000, 0x4026000000000000, 0x4028000000000000, v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604);
    v54 = OUTLINED_FUNCTION_1_181(v46, v47, v48, v49, v50, v51, v52, v53, v506, v534, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, *__dst, *&__dst[8], v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604);
    sub_1E3C2FCB8(v54, v55, v56, v57, v58, v59, v37, v60);
    OUTLINED_FUNCTION_9_104(v61, v62, v63, v64, v65, v66, v67, v68, v507, v535, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, *__dst);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_9_2();
    v77 = OUTLINED_FUNCTION_6_126(v69, v70, v71, v72, v73, v74, v75, v76, v508, v536, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, __dst[0]);
    v78(v77, 1);
    v79 = sub_1E3E61064();
    v80 = *(v79 + 1);
    *v561 = *v79;
    v562 = v80;
    LOBYTE(v563) = 0;
    (*(*v2 + 560))(v561);
    v81 = *v3;
    v82 = *v3;
    v537(v81);
    OUTLINED_FUNCTION_9_2();
    v84 = *(v83 + 1776);
    v84();
    OUTLINED_FUNCTION_2_1();
    (*(v85 + 2056))(1, 0);

    (v84)(v86);
    OUTLINED_FUNCTION_2_1();
    v87 = OUTLINED_FUNCTION_10_7();
    v88(v87);

    (v84)(v89);
    OUTLINED_FUNCTION_2_1();
    v90 = OUTLINED_FUNCTION_10_7();
    v91(v90);

    (v84)(v92);
    OUTLINED_FUNCTION_17_87(5);
    LOBYTE(v617[0]) = v93;
    LOBYTE(v614[0]) = v93;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_12_96();
    v94 = sub_1E3C3DE00();
    LOBYTE(v574[0]) = v605[0];
    v102 = OUTLINED_FUNCTION_13_108(v94, v95, v96, v97, v98, v99, v100, v101, v509, v537, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, *__dst, *&__dst[8], v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604);
    sub_1E3C2FCB8(v102, v103, v104, v105, v574, v614, &qword_1F5D54AF8, v106);
    OUTLINED_FUNCTION_4_14();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v115 = OUTLINED_FUNCTION_6_126(v107, v108, v109, v110, v111, v112, v113, v114, v510, v538, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, __dst[0]);
    v116(v115, 54);

    (v84)(v117);
    OUTLINED_FUNCTION_17_87(17);
    LOBYTE(v617[0]) = 22;
    LOBYTE(v614[0]) = 3;
    LOBYTE(v611[0]) = 14;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_19_83();
    v126 = OUTLINED_FUNCTION_1_181(v118, v119, v120, v121, v122, v123, v124, v125, v511, v539, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, *__dst, *&__dst[8], v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604);
    sub_1E3C2FCB8(v126, v127, v128, v129, v130, v131, &qword_1F5D549D8, v132);
    OUTLINED_FUNCTION_4_14();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v141 = OUTLINED_FUNCTION_6_126(v133, v134, v135, v136, v137, v138, v139, v140, v512, v540, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, __dst[0]);
    v142(v141, 48);

    (v84)(v143);
    __dst[0] = 5;
    LOBYTE(v620[0]) = 3;
    sub_1E3C2FC98();
    LOBYTE(v614[0]) = v617[0];
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_12_96();
    sub_1E3C3DE00();
    LOBYTE(v574[0]) = v605[0];
    v144 = sub_1E3C3DE00();
    LOBYTE(v565[0]) = v570[0];
    v152 = OUTLINED_FUNCTION_20_14(v144, v145, v146, v147, v148, v149, v150, v151, v513, v541, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, __dst[0]);
    sub_1E3C2FCB8(v152, v614, v608, v574, v620, v565, &unk_1F5D54B88, v153);
    OUTLINED_FUNCTION_4_14();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v162 = OUTLINED_FUNCTION_6_126(v154, v155, v156, v157, v158, v159, v160, v161, v514, v542, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, __dst[0]);
    v163(v162, 55);

    (v84)(v164);
    OUTLINED_FUNCTION_2_1();
    (*(v165 + 1984))(5);

    (v84)(v166);
    sub_1E3952C94();
    *__dst = v167;
    *&__dst[8] = v168;
    v579[0] = v169;
    v579[1] = v170;
    LOBYTE(v580) = 0;
    sub_1E3952C94();
    OUTLINED_FUNCTION_16_93(v171, v172, v173, v174);
    *v617 = 0u;
    v618 = 0u;
    LOBYTE(v619) = 1;
    sub_1E3C2FC98();
    *v611 = *v614;
    v612 = v615;
    LOBYTE(v613) = v616;
    v175 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_7_21(v175, v176, v177, v178, v179, v180, v181, v182, v515, v543, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, *__dst, *&__dst[8], v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604);
    v183 = sub_1E3C3DE00();
    LOBYTE(v572) = v576;
    v191 = OUTLINED_FUNCTION_20_14(v183, v184, v185, v186, v187, v188, v189, v190, v516, v544, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v574[0], v574[1], v575, *(&v575 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, __dst[0]);
    sub_1E3C2FCB8(v191, v611, v605, v570, v620, v617, v37, v192);
    OUTLINED_FUNCTION_9_104(v193, v194, v195, v196, v197, v198, v199, v200, v517, v545, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, *__dst);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v209 = OUTLINED_FUNCTION_6_126(v201, v202, v203, v204, v205, v206, v207, v208, v518, v546, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, __dst[0]);
    v210(v209, 0);

    v212 = (v84)(v211);
    v213 = *sub_1E3E5FD88();
    v214 = *(*v212 + 680);
    v215 = v213;
    v214(v213);

    (v84)(v216);
    OUTLINED_FUNCTION_2_1();
    (*(v217 + 2008))(1);

    OUTLINED_FUNCTION_9_2();
    v219 = *(v218 + 1800);
    v219();
    OUTLINED_FUNCTION_2_1();
    (*(v220 + 2056))(3, 0);

    (v219)(v221);
    OUTLINED_FUNCTION_2_1();
    v222 = OUTLINED_FUNCTION_10_7();
    v223(v222);

    (v219)(v224);
    OUTLINED_FUNCTION_2_1();
    v225 = OUTLINED_FUNCTION_10_7();
    v226(v225);

    (v219)(v227);
    __dst[0] = 11;
    LOBYTE(v620[0]) = 5;
    LOBYTE(v617[0]) = 4;
    sub_1E3C2FC98();
    LOBYTE(v611[0]) = v614[0];
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_19_83();
    v228 = sub_1E3C3DE00();
    LOBYTE(v570[0]) = v574[0];
    v236 = OUTLINED_FUNCTION_20_14(v228, v229, v230, v231, v232, v233, v234, v235, v519, v547, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, __dst[0]);
    sub_1E3C2FCB8(v236, v611, v605, v620, v570, v617, &qword_1F5D54AF8, v237);
    OUTLINED_FUNCTION_10_100();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v246 = OUTLINED_FUNCTION_6_126(v238, v239, v240, v241, v242, v243, v244, v245, v520, v548, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, __dst[0]);
    v247(v246, 54);

    (v219)(v248);
    OUTLINED_FUNCTION_17_87(19);
    LOBYTE(v617[0]) = 25;
    LOBYTE(v614[0]) = 15;
    LOBYTE(v611[0]) = v249;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_19_83();
    v258 = OUTLINED_FUNCTION_1_181(v250, v251, v252, v253, v254, v255, v256, v257, v521, v549, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, *__dst, *&__dst[8], v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604);
    sub_1E3C2FCB8(v258, v259, v260, v261, v262, v263, &qword_1F5D549D8, v264);
    OUTLINED_FUNCTION_10_100();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v273 = OUTLINED_FUNCTION_6_126(v265, v266, v267, v268, v269, v270, v271, v272, v522, v550, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, __dst[0]);
    v274(v273, 48);

    (v219)(v275);
    sub_1E3952C94();
    *__dst = v276;
    *&__dst[8] = v277;
    v579[0] = v278;
    v579[1] = v279;
    LOBYTE(v580) = 0;
    sub_1E3952C94();
    OUTLINED_FUNCTION_16_93(v280, v281, v282, v283);
    sub_1E3C2FC98();
    *v614 = *v617;
    v615 = v618;
    LOBYTE(v616) = v619;
    sub_1E3C3DE00();
    *v608 = *v611;
    v609 = v612;
    LOBYTE(v610) = v613;
    sub_1E3C3DE00();
    *v574 = *v605;
    v575 = v606;
    LOBYTE(v576) = v607;
    v284 = sub_1E3C3DE00();
    LOBYTE(v568) = v572;
    v292 = OUTLINED_FUNCTION_20_14(v284, v285, v286, v287, v288, v289, v290, v291, v523, v551, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v570[0], v570[1], v571, *(&v571 + 1), v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, __dst[0]);
    sub_1E3C2FCB8(v292, v614, v608, v620, v574, v565, v37, v293);
    OUTLINED_FUNCTION_9_104(v294, v295, v296, v297, v298, v299, v300, v301, v524, v552, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, *__dst);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v310 = OUTLINED_FUNCTION_6_126(v302, v303, v304, v305, v306, v307, v308, v309, v525, v553, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, __dst[0]);
    v311(v310, 0);

    (v219)(v312);
    v313 = sub_1E3C8BE74();
    sub_1E3DEFBE8(1, v313);
  }

  OUTLINED_FUNCTION_111();
  v314 += 219;
  v315 = *v314;
  v316 = (*v314)();
  (*(*v316 + 2056))(1, 0);

  (v315)(v317);
  OUTLINED_FUNCTION_2_1();
  v318 = OUTLINED_FUNCTION_10_7();
  v319(v318);

  (v315)(v320);
  OUTLINED_FUNCTION_2_1();
  v321 = OUTLINED_FUNCTION_10_7();
  v322(v321);

  (v315)(v323);
  OUTLINED_FUNCTION_17_87(10);
  LOBYTE(v617[0]) = 5;
  LOBYTE(v614[0]) = 5;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_12_96();
  v324 = sub_1E3C3DE00();
  LOBYTE(v565[0]) = v605[0];
  v332 = OUTLINED_FUNCTION_13_108(v324, v325, v326, v327, v328, v329, v330, v331, v505, v533, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, *__dst, *&__dst[8], v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604);
  sub_1E3C2FCB8(v332, v333, v334, v335, v565, v614, &qword_1F5D54AF8, v336);
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v345 = OUTLINED_FUNCTION_6_126(v337, v338, v339, v340, v341, v342, v343, v344, v526, v554, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, __dst[0]);
  v346(v345, 54);

  (v315)(v347);
  OUTLINED_FUNCTION_17_87(22);
  LOBYTE(v617[0]) = 25;
  LOBYTE(v614[0]) = 17;
  LOBYTE(v611[0]) = v348;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_19_83();
  v357 = OUTLINED_FUNCTION_1_181(v349, v350, v351, v352, v353, v354, v355, v356, v527, v555, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, *__dst, *&__dst[8], v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604);
  sub_1E3C2FCB8(v357, v358, v359, v360, v361, v362, &qword_1F5D549D8, v363);
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v372 = OUTLINED_FUNCTION_6_126(v364, v365, v366, v367, v368, v369, v370, v371, v528, v556, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, __dst[0]);
  v373(v372, 48);

  (v315)(v374);
  *__dst = xmmword_1E4298710;
  *v579 = xmmword_1E42C0790;
  LOBYTE(v580) = 0;
  *v620 = xmmword_1E4298710;
  v621 = xmmword_1E42C0790;
  LOBYTE(v622) = 0;
  *v617 = xmmword_1E42B9700;
  v618 = xmmword_1E42C0790;
  LOBYTE(v619) = 0;
  *v614 = xmmword_1E4296C50;
  v615 = xmmword_1E4297540;
  LOBYTE(v616) = 0;
  v375 = *(MEMORY[0x1E69DDCE0] + 16);
  *v611 = *MEMORY[0x1E69DDCE0];
  v612 = v375;
  LOBYTE(v613) = 0;
  type metadata accessor for UIEdgeInsets();
  v377 = v376;
  v378 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_7_21(v378, v379, v380, v381, v382, v383, v384, v385, v529, v557, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, *__dst, *&__dst[8], v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604);
  v394 = OUTLINED_FUNCTION_1_181(v386, v387, v388, v389, v390, v391, v392, v393, v530, v558, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, *__dst, *&__dst[8], v579[0], v579[1], v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v595, v596, v597, v598, v599, v600, v601, v602, v603, v604);
  sub_1E3C2FCB8(v394, v395, v396, v397, v398, v399, v377, v400);
  OUTLINED_FUNCTION_9_104(v401, v402, v403, v404, v405, v406, v407, v408, v531, v559, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, *__dst);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v417 = OUTLINED_FUNCTION_6_126(v409, v410, v411, v412, v413, v414, v415, v416, v532, v560, v561[0], v561[1], v562, *(&v562 + 1), v563, v564, v565[0], v565[1], v566, v567, v568, v569, v570[0], v570[1], v571, *(&v571 + 1), v572, v573, v574[0], v574[1], v575, *(&v575 + 1), v576, v577, __dst[0]);
  v418(v417, 0);

  v420 = (v315)(v419);
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v421 = *(*v420 + 680);
  v422 = v377;
  v421(v377);

  (v315)(v423);
  OUTLINED_FUNCTION_2_1();
  (*(v424 + 1936))(2);

  (v315)(v425);
  OUTLINED_FUNCTION_2_1();
  (*(v426 + 2008))(1);

  v428 = (v315)(v427);
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_7_16();
  v429 = *(*v428 + 872);
  v430 = v377;
  v429(v377);

  (v315)(v431);
  OUTLINED_FUNCTION_2_1();
  (*(v432 + 2272))(1);

  sub_1E3C5C49C();
  OUTLINED_FUNCTION_9_2();
  v434 = *(v433 + 1824);
  v434();
  OUTLINED_FUNCTION_2_1();
  (*(v435 + 1352))(0);

  (v434)(v436);
  OUTLINED_FUNCTION_2_1();
  (*(v437 + 512))(2);

  (v434)(v438);
  OUTLINED_FUNCTION_2_1();
  (*(v439 + 1808))(3);

  v441 = (v434)(v440);
  sub_1E3E5FB0C();
  OUTLINED_FUNCTION_7_16();
  v442 = *(*v441 + 776);
  v443 = v377;
  v442(v377);

  OUTLINED_FUNCTION_9_2();
  LOBYTE(v377) = (*(v444 + 1920))();
  v434();
  if (v377)
  {
    sub_1E418A524();
    OUTLINED_FUNCTION_8();
    (*(v445 + 440))();

    (v434)(v446);
    OUTLINED_FUNCTION_2_1();
    (*(v447 + 2240))(1);

    v449 = (v434)(v448);
    sub_1E39537A8();
    *&v623 = v450;
    *(&v623 + 1) = v451;
    *&v624 = v452;
    *(&v624 + 1) = v453;
    v625 = 0;
    (*(*v449 + 560))(&v623);

    (v434)(v454);
    OUTLINED_FUNCTION_2_1();
    (*(v455 + 312))(0x4048000000000000, 0);

    v457 = (v434)(v456);
    memset(__dst, 0, sizeof(__dst));
    __asm { FMOV            V0.2D, #10.0 }

    *v579 = _Q0;
    LOBYTE(v580) = 0;
    (*(*v457 + 160))(__dst);

    (v434)(v459);
    OUTLINED_FUNCTION_2_1();
    (*(v460 + 1712))(1);
  }

  else
  {
    OUTLINED_FUNCTION_8();
    (*(v461 + 2240))(0);

    v463 = (v434)(v462);
    v623 = 0u;
    v624 = 0u;
    v625 = 1;
    (*(*v463 + 560))(&v623);

    (v434)(v464);
    OUTLINED_FUNCTION_2_1();
    (*(v465 + 360))(0, 1);

    v467 = (v434)(v466);
    (*(*v467 + 160))(&v623);

    (v434)(v468);
    OUTLINED_FUNCTION_2_1();
    (*(v469 + 312))(0, 1);
  }

  type metadata accessor for RelationalLayout();
  v470 = sub_1E4177030();
  sub_1E3952C88();
  nullsub_1();
  sub_1E41776B0(39, v471, v472, v473, v474);
  OUTLINED_FUNCTION_9_2();
  (*(v475 + 1776))();
  OUTLINED_FUNCTION_2_1();
  v477 = *(v476 + 1424);

  v477(v478);

  OUTLINED_FUNCTION_9_2();
  v480 = *(v479 + 1872);
  v480();
  sub_1E3952C78();
  *&v623 = v481;
  *(&v623 + 1) = v482;
  *&v624 = v483;
  *(&v624 + 1) = v484;
  v625 = 0;
  OUTLINED_FUNCTION_8();
  (*(v485 + 160))(&v623);

  v487 = (v480)(v486);
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v488 = *(*v487 + 680);
  v489 = v470;
  v488(v470);

  v491 = (v480)(v490);
  sub_1E3E60364();
  OUTLINED_FUNCTION_7_16();
  v492 = *(*v491 + 872);
  v493 = v470;
  v492(v470);

  OUTLINED_FUNCTION_9_2();
  v495 = (*(v494 + 1776))();
  sub_1E3C37CBC(v495, 23);

  OUTLINED_FUNCTION_9_2();
  v497 = (*(v496 + 1800))();
  sub_1E3C37CBC(v497, 15);

  OUTLINED_FUNCTION_9_2();
  v499 = (*(v498 + 1752))();
  sub_1E3C37CBC(v499, 17);

  OUTLINED_FUNCTION_9_2();
  v501 = (*(v500 + 1824))();
  sub_1E3C37CBC(v501, 39);

  OUTLINED_FUNCTION_9_2();
  v503 = (*(v502 + 1872))();
  sub_1E3C37CBC(v503, 67);

  return result;
}

double sub_1E3C5C2F4(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 161);
  *(v1 + 161) = a1;
  v4 = swift_beginAccess();
  if (v3 != *(v1 + 161))
  {
    return sub_1E3C5A6D8(v4);
  }

  return result;
}

uint64_t sub_1E3C5C398()
{
  *(v0 + 152) = 0;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 160) = 1;
  v1 = sub_1E3C2F9A0();

  sub_1E3C5A6D8(v2);

  return v1;
}

double sub_1E3C5C3EC(__objc2_class **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_1E373F6E0(a2, 96, a3, a4, a5, a6) & 1) != 0 && *a1 == _TtC8VideosUI20PlaybackStatusLayout)
  {
    *(v6 + 136) = a1;
    swift_retain_n();

    sub_1E3C5C49C();
  }

  return result;
}

double sub_1E3C5C49C()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1848))();
  v6[0] = 0x4028000000000000;
  memset(&v6[1], 0, 25);
  v24[0] = 0x4030000000000000;
  memset(&v24[1], 0, 24);
  v25 = 0;
  v22[0] = 0x402C000000000000;
  memset(&v22[1], 0, 24);
  v23 = 0;
  type metadata accessor for UIEdgeInsets();
  v2 = v1;
  sub_1E3C3DE00();
  v17[0] = v19;
  v17[1] = v20;
  v18 = v21;
  sub_1E3C3DE00();
  v12[0] = v14;
  v12[1] = v15;
  v13 = v16;
  sub_1E3C3DE00();
  v7[0] = v9;
  v7[1] = v10;
  v8 = v11;
  sub_1E3C2FCB8(v6, v24, v17, v22, v12, v7, v2, __src);
  memcpy(v6, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v3 + 1600))(v6, 0, v4 & 1, v2);

  return result;
}

double sub_1E3C5C618(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1E3C35CF4(a1, a2);
  v6 = sub_1E3890920(a1, a3, v5);

  return sub_1E3C5C2F4(v6);
}

double sub_1E3C5C668()
{

  return result;
}

uint64_t sub_1E3C5C6B8()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3C5C710()
{
  v0 = sub_1E3C5C6B8();

  return MEMORY[0x1EEE6BDC0](v0, 162, 7);
}

uint64_t sub_1E3C5C740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E3890920(a1, a3, a3);
  OUTLINED_FUNCTION_8();
  return (v3 ^ (*(v4 + 1920))()) & 1;
}

void sub_1E3C5C7E4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_layout;
  OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI15SyndicationCell_layout], v8);
  v3 = *&v1[v2];
  if (v3)
  {
    v4 = *(*v3 + 744);
    v5 = swift_retain_n();
    v6 = v4(v5);
    [v1 setBackgroundColor_];

    v7 = (*(*v3 + 864))();

    [v1 setHighlightedBackgroundColor_];
  }
}

double sub_1E3C5C920(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_layout;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1E3C5C7E4();

  return result;
}

void (*sub_1E3C5C990(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E3C5C9F4;
}

void sub_1E3C5C9F4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E3C5C7E4();
  }
}

void *sub_1E3C5CA28(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_titleLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3C5CA70()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3C5CAEC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_subtitleLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3C5CB34()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E3C5CBB0(uint64_t a1, char a2, void (*a3)(id))
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

void *sub_1E3C5CC30(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_imageView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E3C5CC78()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3C5CCF4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_attributionView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3C5CD3C(void *a1, uint64_t *a2)
{
  v5 = *a2;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  v7 = a1;
  v8 = [v2 vuiContentView];
  v9 = *a2;
  OUTLINED_FUNCTION_5_0(&v2[v9], v10);
  [v8 vui:*&v2[v9] addSubview:v6 oldView:?];
}

uint64_t sub_1E3C5CDF0()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E3C5CE6C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_badgeView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E3C5CEA8(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_badgeView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xD8);
  v6 = a1;
  v7 = v5();
  if (v7)
  {
    v8 = v7;
    v9 = OBJC_IVAR____TtC8VideosUI15SyndicationCell_badgeView;
    OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_badgeView, v10);
    [v8 vui:*(v1 + v9) addSubview:v4 oldView:?];
  }
}

uint64_t sub_1E3C5CF7C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

id sub_1E3C5CFF8()
{
  v1 = OBJC_IVAR____TtC8VideosUI15SyndicationCell____lazy_storage___bottomSeparatorView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI15SyndicationCell____lazy_storage___bottomSeparatorView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI15SyndicationCell____lazy_storage___bottomSeparatorView];
  }

  else
  {
    type metadata accessor for SeparatorView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = [v0 vuiContentView];
    [v5 vui:v4 addSubview:0 oldView:?];

    v6 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1E3C5D0A8()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_attributionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_badgeView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell____lazy_storage___bottomSeparatorView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_syndicationId);
  v2 = type metadata accessor for SyndicationCell();
  *v1 = 0;
  v1[1] = 0;
  v13 = v0;
  v14 = v2;
  v3 = OUTLINED_FUNCTION_2_0();
  v6 = objc_msgSendSuper2(v4, v5, v3);
  [v6 setAutoresizingMask_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0, qword_1E42CC4A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E4297BE0;
  *(v7 + 32) = sub_1E3280A90(0, &unk_1ECF35CC0, 0x1E69DF7A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00, &unk_1E429BBA0);
  v8 = sub_1E42062A4();

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[4] = sub_1E3C5F1D0;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1E3790FBC;
  v12[3] = &block_descriptor_81;
  v10 = _Block_copy(v12);

  [v6 vui:v8 registerForTraitChanges:v10 withHandler:?];
  _Block_release(v10);

  return v6;
}

void sub_1E3C5D300()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_imageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_attributionView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_badgeView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell____lazy_storage___bottomSeparatorView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_syndicationId);
  *v1 = 0;
  v1[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E3C5D3D8(char a1, double a2, double a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_4_154();
  v9 = (*(v8 + 144))();
  if (!v9)
  {
    return a2;
  }

  v10 = v9;
  v137 = a3;
  v11 = v138;
  (*(*v9 + 176))(v138);
  v12 = MEMORY[0x1E69DDCE0];
  if (v139)
  {
    v13 = *(MEMORY[0x1E69DDCE0] + 8);
    v14 = *(MEMORY[0x1E69DDCE0] + 16);
    v11 = MEMORY[0x1E69DDCE0];
    v15 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v13 = *&v138[1];
    v14 = *&v138[2];
    v15 = *&v138[3];
  }

  v16 = *v11;
  sub_1E37DAE10();
  OUTLINED_FUNCTION_30();
  (*(v17 + 152))(v140);
  v18 = *v140;
  v131 = *&v140[1];
  v19 = *&v140[3];
  v135 = *&v140[2];

  if (v141)
  {
    v18 = *v12;
    v131 = v12[1];
    v19 = v12[3];
    v135 = v12[2];
  }

  v132 = v18;
  v20 = a2 - sub_1E3952BE0(v16, v13, v14, v15);
  v21 = [v3 vuiTraitCollection];
  v22 = [v21 isAXEnabled];

  OUTLINED_FUNCTION_23_0();
  v24 = (*(v23 + 216))();
  if (v24)
  {

    v25 = [v4 vuiTraitCollection];
    v26 = [v25 isAXEnabled];

    sub_1E37DAE10();
    OUTLINED_FUNCTION_30();
    (*(v27 + 152))(v146);
    v28 = *v146;
    v29 = *&v146[1];

    v31 = v12[1];
    if (v147)
    {
      v28 = *v12;
      v29 = v12[1];
    }

    (*(*v10 + 176))(v148, v30);
    if ((v149 & 1) == 0)
    {
      v31 = *&v148[1];
    }

    v32 = *sub_1E37DAE10();
    v134 = (*(v32 + 2288))();
    v34 = v33;

    v124 = v29 + v31;
    rect = v34;
    if (!v26)
    {
      v28 = (v137 - v34) * 0.5;
    }

    if ((a1 & 1) == 0)
    {
      [v4 effectiveUserInterfaceLayoutDirection];
      OUTLINED_FUNCTION_23_0();
      v36 = (*(v35 + 216))();
      if (v36)
      {
        v37 = v36;
        [v4 bounds];
        OUTLINED_FUNCTION_2_6();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v37 setFrame_];
      }
    }

    if (v22)
    {
      goto LABEL_22;
    }

    v38 = v134;
    v20 = v20 - (v19 + v134);
  }

  else
  {
    v124 = 0.0;
    v28 = 0.0;
    v38 = 0.0;
    rect = 0.0;
    if (v22)
    {
      v134 = 0.0;
      rect = 0.0;
      goto LABEL_22;
    }
  }

  v134 = v38;
  v13 = v19 + v13 + v38;
LABEL_22:
  v129 = v20;
  OUTLINED_FUNCTION_23_0();
  v133 = *(v39 + 168);
  v40 = v133();
  v130 = v22;
  if (v40 || (OUTLINED_FUNCTION_23_0(), (v40 = (*(v41 + 192))()) != 0))
  {
    v42 = v28;

    OUTLINED_FUNCTION_23_0();
    v44 = (*(v43 + 168))();
    v45 = 0.0;
    v46 = 0.0;
    v47 = 0.0;
    v48 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
    v51 = 0.0;
    if (v44)
    {
      v52 = v44;
      v53 = sub_1E37BD068();
      sub_1E3C8B764(v53, v129, 0.0);
      v55 = v54;

      OUTLINED_FUNCTION_23_0();
      v57 = (*(v56 + 192))();
      if (v57)
      {
        v58 = v57;
        v59 = sub_1E374EA2C();
        sub_1E3C8B764(v59, v129, 0.0);
        v48 = v60;

        sub_1E374EA2C();
        OUTLINED_FUNCTION_30();
        (*(v61 + 152))(v148);

        if ((v149 & 1) == 0)
        {
          v45 = *v148;
        }

        v62 = v52;
        [v58 topMarginToLabel:v62 withBaselineMargin:v45];
        v64 = v63;

        v65 = v55 + v64;
        v45 = v13;
        v49 = v13;
        v50 = v129;
        v46 = v65;
        v51 = v55;
        v47 = v129;
      }

      else
      {

        v48 = 0.0;
        v49 = v13;
        v50 = v129;
        v51 = v55;
        v47 = 0.0;
      }
    }

    v66 = 0;
    v125 = v49;
    v126 = v50;
    v127 = v51;
    CGRectGetHeight(*&v49);
    if (!OUTLINED_FUNCTION_9_105())
    {
      sub_1E374EA2C();
      OUTLINED_FUNCTION_30();
      (*(v67 + 152))(v142);

      v68 = v142[0];
      v69 = v143;
      OUTLINED_FUNCTION_23_0();
      v71 = (*(v70 + 192))();
      if (v71)
      {
        v72 = v71;
        if (v69)
        {
          v68 = 0.0;
        }

        v73 = v133();
        [v72 topMarginToLabel:v73 withBaselineMargin:v68];
      }
    }
  }

  else
  {
    v42 = v28;
    v47 = 0.0;
    v48 = 0.0;
    v45 = 0.0;
    v126 = 0.0;
    v127 = 0.0;
    v125 = 0.0;
    v46 = 0.0;
  }

  OUTLINED_FUNCTION_23_0();
  v123 = *(v74 + 240);
  v75 = v123();
  v128 = v45;
  v121 = v42;
  if (v75)
  {

    v76 = sub_1E3E0B68C();
    OUTLINED_FUNCTION_23_0();
    v78 = (*(v77 + 192))();
    v120 = a2;
    if (v78 || (v78 = v133()) != 0)
    {
      v79 = v78;
      [v78 bottomMarginWithBaselineMargin_];
      v81 = v80;
    }

    else
    {
      v81 = 0.0;
    }

    v82 = 0.0;
    v83 = OUTLINED_FUNCTION_9_105();
    OUTLINED_FUNCTION_23_0();
    v85 = (*(v84 + 240))();
    v86 = 0.0;
    v87 = 0.0;
    v88 = 0;
    if (v85)
    {
      v89 = v85;
      if (v83)
      {
        v90 = v127;
      }

      else
      {
        v90 = v48;
      }

      if (v83)
      {
        v91 = v126;
      }

      else
      {
        v91 = v47;
      }

      if (v83)
      {
        v92 = 0.0;
      }

      else
      {
        v92 = v46;
      }

      if (v83)
      {
        v93 = v125;
      }

      else
      {
        v93 = v128;
      }

      [v85 prepareLayoutWithMaxWidth_];
      [v89 sizeThatFits_];
      v94 = v81;
      v96 = v95;
      v150.origin.x = v93;
      v150.origin.y = v92;
      v150.size.width = v91;
      v150.size.height = v90;
      MinX = CGRectGetMinX(v150);
      v151.origin.x = v93;
      v151.origin.y = v92;
      v151.size.width = v91;
      v151.size.height = v90;
      v82 = MinX;
      MaxY = CGRectGetMaxY(v151);

      v88 = v96;
      v86 = v94 + MaxY;
      v87 = v129;
    }

    v99 = v82;
    CGRectGetHeight(*(&v86 - 1));
    sub_1E3E0B68C();
    a2 = v120;
  }

  OUTLINED_FUNCTION_23_0();
  v122 = *(v100 + 264);
  v101 = v122();
  if (v101)
  {
    v102 = v101;
    [v101 sizeThatFits_];
    sub_1E3E0B6CC();
    OUTLINED_FUNCTION_30();
    (*(v103 + 152))(&v144);

    sub_1E3E0B6CC();
    OUTLINED_FUNCTION_30();
    (*(v104 + 152))(v145);
  }

  (*(*v10 + 176))(v146);
  sub_1E37DAE10();
  OUTLINED_FUNCTION_30();
  (*(v105 + 152))(v148);

  v106 = sub_1E3C5CFF8();
  OUTLINED_FUNCTION_4_154();
  (*(v107 + 112))();

  v108 = OBJC_IVAR____TtC8VideosUI15SyndicationCell____lazy_storage___bottomSeparatorView;
  OUTLINED_FUNCTION_17_88();
  v110 = *(v109 + 112);
  v112 = v111;
  v110();

  if (a1)
  {
    v113 = v135;
    v114 = v132;
    v115 = v130;
  }

  else
  {
    [v4 effectiveUserInterfaceLayoutDirection];
    v116 = *&v4[v108];
    [v4 bounds];
    OUTLINED_FUNCTION_2_6();
    VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
    [v116 setFrame_];

    v115 = v130;
    if (v130)
    {
      v152.origin.x = v124;
      v152.origin.y = v121;
      v152.size.width = v134;
      v152.size.height = rect;
      CGRectGetMaxY(v152);
    }

    else
    {
      [v4 effectiveUserInterfaceLayoutDirection];
    }

    v113 = v135;
    VUIRoundValue();
    VUIRoundValue();
    v117 = VUIRoundValue();
    if ((v133)(v117))
    {
      OUTLINED_FUNCTION_11_20();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_22_2();
    }

    OUTLINED_FUNCTION_23_0();
    if ((*(v118 + 192))())
    {
      OUTLINED_FUNCTION_11_20();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_22_2();
    }

    v114 = v132;
    if (v123())
    {
      OUTLINED_FUNCTION_11_20();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_22_2();
    }

    if (v122())
    {
      OUTLINED_FUNCTION_11_20();
      OUTLINED_FUNCTION_2_6();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_22_2();
    }
  }

  if (v115)
  {
    sub_1E3952BD8(v114, v131, v113);
  }

  return a2;
}

uint64_t sub_1E3C5E1E4(SEL *a1, uint64_t a2)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for SyndicationCell();
  objc_msgSendSuper2(&v13, *a1);
  v5 = sub_1E3285D14();
  v6 = *v5;
  v7 = &v2[OBJC_IVAR____TtC8VideosUI15SyndicationCell_syndicationId];
  v8 = *&v2[OBJC_IVAR____TtC8VideosUI15SyndicationCell_syndicationId];
  v9 = *(v7 + 1);
  v10 = *((*MEMORY[0x1E69E7D40] & **v5) + 0x118);

  v11 = v6;
  v10(v8, v9, a2);
}

uint64_t sub_1E3C5E318()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SyndicationCell();
  objc_msgSendSuper2(&v3, sel_vui_prepareForReuse);
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_syndicationId);
  *v1 = 0;
  v1[1] = 0;

  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF8))(0);
}

void *sub_1E3C5E3E4(__int16 *a1, void *a2)
{
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = *(*a1 + 392);
    v9 = a2;
    v10 = v8();
    if (v10)
    {
      v11 = v10;
      if (*v10 == _TtC8VideosUI21SyndicationCellLayout)
      {
        v12 = (*(*a1 + 488))();
        if (v12)
        {
          v13 = v12;
          if (*(v12 + 16))
          {
            v115 = a1;
            v14 = MEMORY[0x1E69E7D40];
            v15 = *((*MEMORY[0x1E69E7D40] & *v9) + 0x98);
            v118 = a2;

            v15(v16);
            v17 = type metadata accessor for UIFactory();
            v19 = sub_1E373E010(23, v13, v18);
            v20 = (*((*v14 & *v9) + 0xA8))();
            OUTLINED_FUNCTION_12_97();
            v21 = sub_1E37BD068();
            v22 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
            v117 = v17;
            sub_1E393D92C(v19, v20, &v120, v21, v22);

            sub_1E325F748(&v120, &qword_1ECF296C0, &unk_1E429BBE0);
            v23 = OUTLINED_FUNCTION_21_63();
            v24(v23);
            sub_1E373E010(15, v13, v25);
            OUTLINED_FUNCTION_8_105();
            v27 = (*(v26 + 192))();
            OUTLINED_FUNCTION_12_97();
            sub_1E374EA2C();
            v28 = OUTLINED_FUNCTION_16_94();
            sub_1E393D92C(v28, v29, v30, v31, v22);

            sub_1E325F748(&v120, &qword_1ECF296C0, &unk_1E429BBE0);
            OUTLINED_FUNCTION_8_105();
            v32 = OUTLINED_FUNCTION_21_63();
            v33(v32);
            sub_1E373E010(39, v13, v34);
            OUTLINED_FUNCTION_8_105();
            v36 = *(v35 + 216);
            v37 = v36();
            OUTLINED_FUNCTION_12_97();
            v116 = v11;
            sub_1E37DAE10();
            sub_1E3280A90(0, &qword_1EE23B360, 0x1E69DF740);
            v38 = OUTLINED_FUNCTION_16_94();
            sub_1E393D92C(v38, v39, v40, v41, v42);
            v43 = MEMORY[0x1E69E7D40];

            sub_1E325F748(&v120, &qword_1ECF296C0, &unk_1E429BBE0);
            OUTLINED_FUNCTION_4_154();
            v44 = OUTLINED_FUNCTION_21_63();
            v46 = v45(v44);
            v47 = (v36)(v46);
            if (v47)
            {
              v49 = v47;
              [v47 setVuiUserInteractionEnabled_];
            }

            v50 = sub_1E373E010(155, v13, v48);

            v52 = v115;
            if (v50)
            {
              v53 = (*(*v50 + 488))(v51);
              if (v53)
              {
                v55 = sub_1E373E010(53, v53, v54);

                if (v55)
                {
                  OUTLINED_FUNCTION_4_154();
                  v57 = *(v56 + 264);

                  v59 = v57(v58);
                  v60 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
                  v120 = 0u;
                  v121 = 0u;
                  v122 = 0;
                  sub_1E393D92C(v55, v59, &v120, 0, v60);

                  sub_1E325F748(&v120, &qword_1ECF296C0, &unk_1E429BBE0);
                  v61 = OUTLINED_FUNCTION_21_63();
                  v62(v61);
                }

                goto LABEL_17;
              }
            }

            OUTLINED_FUNCTION_4_154();
            (*(v64 + 272))(0);
LABEL_17:
            LOBYTE(v119[0]) = 0;
            v65 = (*v52 + 776);
            v66 = *v65;
            v67 = (*v65)(&v120, v119, &unk_1F5D5E0F8, &off_1F5D5CAF8);
            if (*(&v121 + 1))
            {
              if (OUTLINED_FUNCTION_21_67(v67, v68, v69, MEMORY[0x1E69E6158]))
              {
                v117 = v66;
                v71 = v119[0];
                v70 = v119[1];
                v114 = sub_1E3285D14();
                OUTLINED_FUNCTION_17_88();
                v73 = *(v72 + 272);
                v75 = v74;
                v76 = v73(v71, v70);

                if (v76)
                {
                  v77 = v76;
                  v78 = (v9 + OBJC_IVAR____TtC8VideosUI15SyndicationCell_syndicationId);
                  *v78 = v71;
                  v78[1] = v70;

                  OUTLINED_FUNCTION_4_154();
                  v80 = *(v79 + 240);
                  v81 = v80();
                  if (v81)
                  {
                    v82 = v81;
                    [v81 frame];
                    v84 = v83;
                    v86 = v85;
                    v88 = v87;
                    v90 = v89;
                  }

                  else
                  {
                    v84 = 0.0;
                    v86 = 0.0;
                    v88 = 0.0;
                    v90 = 0.0;
                  }

                  v91 = *((*v43 & **v114) + 0x108);
                  v92 = *v114;
                  v93 = v91(v77);

                  v94 = (*((*v43 & *v9) + 0xF8))(v93);
                  v95 = (v80)(v94);
                  if (v95)
                  {
                    v96 = v95;
                    [v95 setFrame_];
                  }

                  v66 = v117;
                }

                else
                {

                  v66 = v117;
                }
              }
            }

            else
            {
              sub_1E325F748(&v120, &unk_1ECF296E0, &unk_1E4298030);
            }

            LOBYTE(v119[0]) = 38;
            v97 = v66(&v120, v119, &unk_1F5D5DAC8, &off_1F5D5C998);
            if (*(&v121 + 1))
            {
              v100 = OUTLINED_FUNCTION_21_67(v97, v98, v99, MEMORY[0x1E69E6370]);
              a2 = v118;
              if (v100)
              {
                v101 = LOBYTE(v119[0]);
              }

              else
              {
                v101 = 0;
              }
            }

            else
            {
              sub_1E325F748(&v120, &unk_1ECF296E0, &unk_1E4298030);
              v101 = 0;
              a2 = v118;
            }

            v102 = sub_1E3C5CFF8();
            [v102 setHidden_];

            return a2;
          }
        }

        v63 = v9;
        return a2;
      }
    }
  }

  else
  {
    v104 = sub_1E324FBDC();
    (*(v5 + 16))(v7, v104, v4);

    v105 = v7;
    v106 = sub_1E41FFC94();
    v107 = sub_1E4206814();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *&v120 = v109;
      *v108 = 136315138;
      sub_1E384EE08(a1[49]);
      v112 = sub_1E3270FC8(v110, v111, &v120);

      *(v108 + 4) = v112;
      _os_log_impl(&dword_1E323F000, v106, v107, "SyndicationCell: Failed to get correct cell for [%s]", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v109);
      MEMORY[0x1E69143B0](v109, -1, -1);
      MEMORY[0x1E69143B0](v108, -1, -1);
    }

    (*(v5 + 8))(v105, v4);
  }

  result = sub_1E42076B4();
  __break(1u);
  return result;
}

id sub_1E3C5EF18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyndicationCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3C5EFFC()
{
  v1 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xF0))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 contextMenuItems];

  if (v3)
  {
    sub_1E3280A90(0, &unk_1ECF3BDE0, 0x1E69DC628);
    v4 = sub_1E42062B4();

    if (v4 >> 62)
    {
      sub_1E3280A90(0, &qword_1ECF2BA40, 0x1E69DCC78);

      v3 = sub_1E42076C4();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      sub_1E42079D4();
      sub_1E3280A90(0, &qword_1ECF2BA40, 0x1E69DCC78);

      return v4;
    }
  }

  return v3;
}

void sub_1E3C5F1D0()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong vuiCollectionViewCellInteractor];
    if (v3)
    {
      v4 = v3;
      if ([v3 respondsToSelector_])
      {
        [v4 vui:v2 cellNeedsReloading:?];
      }

      swift_unknownObjectRelease();
    }
  }
}

void sub_1E3C5F26C(uint64_t a1, int a2)
{
  v3 = (*(*a1 + 464))(a1);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1E32AE9B0(v3);
    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {

        goto LABEL_19;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1E6911E60](i, v4);
      }

      else
      {
        if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_40;
      }

      sub_1E3742F1C(v7, v8, v9);
      sub_1E4206254();
      sub_1E4206254();
      if (v27 == v25 && v28 == v26)
      {
        break;
      }

      v11 = sub_1E42079A4();

      if (v11)
      {
        goto LABEL_17;
      }
    }

LABEL_17:

    type metadata accessor for ImageViewModel();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      goto LABEL_35;
    }
  }

LABEL_19:
  v12 = (*(*a1 + 488))();
  if (!v12)
  {
LABEL_35:
    MEMORY[0x1EEE9AC00](v12);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF31990, &qword_1E42DDF40);
    sub_1E4148DE0(sub_1E3C5F74C);

    return;
  }

  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;

  v21 = 0;
  if (v16)
  {
    while (1)
    {
      v22 = v21;
LABEL_27:
      sub_1E3742F1C(v18, v19, v20);

      sub_1E4206254();
      sub_1E4206254();
      if (v27 == v25 && v28 == v26)
      {
        break;
      }

      v24 = sub_1E42079A4();

      if (v24)
      {
        goto LABEL_37;
      }

      v16 &= v16 - 1;

      v21 = v22;
      if (!v16)
      {
        goto LABEL_24;
      }
    }

LABEL_37:

    type metadata accessor for ImageViewModel();
    v12 = swift_dynamicCastClass();
    if (!v12)
    {
    }

    goto LABEL_35;
  }

LABEL_24:
  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v17)
    {

      goto LABEL_35;
    }

    v16 = *(v13 + 8 * v22);
    ++v21;
    if (v16)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_1E3C5F680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 == 1)
  {
    v3 = MEMORY[0x1E697DBB8];
    goto LABEL_5;
  }

  if (a1 == 2)
  {
    v3 = MEMORY[0x1E697DBA8];
LABEL_5:
    v4 = *v3;
    v5 = sub_1E4200B44();
    (*(*(v5 - 8) + 104))(a2, v4, v5);
    v6 = a2;
    v7 = 0;
    v8 = v5;
    goto LABEL_7;
  }

  v8 = sub_1E4200B44();
  v6 = a2;
  v7 = 1;
LABEL_7:

  return __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
}

uint64_t sub_1E3C5F74C(uint64_t a1)
{
  v2 = *(v1 + 16);
  result = (*(**a1 + 1032))(*(v1 + 24));
  *v2 = result;
  *(v2 + 8) = v4 & 1;
  return result;
}

uint64_t type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext(uint64_t a1)
{
  result = qword_1EE290A30;
  if (!qword_1EE290A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3C5F7FC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext(0);
  swift_unknownObjectWeakInit();
  *a3 = a1;
  a3[1] = a2;
  sub_1E41FE614();
  v6 = [objc_opt_self() sharedInstance];
  v7 = [v6 appController];

  if (v7)
  {
    v8 = [v7 appContext];
  }

  else
  {
    v8 = 0;
  }

  swift_unknownObjectWeakAssign();
}

double sub_1E3C5F8F4@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
  *a1 = v3;

  return result;
}

uint64_t sub_1E3C5F948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1E3C5FA10(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29410, &qword_1E429AF90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E327F454(a2, &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0, &unk_1E42980F0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_1E325F6F0(v8, &qword_1ECF29410, &qword_1E429AF90);
    goto LABEL_9;
  }

  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  sub_1E3781918(v8, v12);
  sub_1E384EE08(234);
  sub_1E3277E60(v13, v14, a1, &v21);

  if (!v22)
  {
    sub_1E325F6F0(&v21, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(a2);
    sub_1E3AC57B0(v12);
    goto LABEL_9;
  }

  v15 = v20;
  type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
  v16 = *v12;

  sub_1E3F90D40(234, v15, v16);
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_1(a2);
  sub_1E3AC57B0(v12);
  if (!v18)
  {
LABEL_9:
    type metadata accessor for SportsCanonicalBannerScoreboardUpdate();
    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v3 + 16) = v18;
  return v3;
}

uint64_t sub_1E3C5FCA0()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1E3C5FCD8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 88))();
  *a1 = result;
  return result;
}

void sub_1E3C5FD38(uint64_t a1)
{
  sub_1E3C5FDE0(319);
  if (v1 <= 0x3F)
  {
    sub_1E3C5FE38();
    if (v2 <= 0x3F)
    {
      sub_1E41FE624();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E3C5FDE0(uint64_t a1)
{
  if (!qword_1EE23B6C8[0])
  {
    type metadata accessor for ViewModel();
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, qword_1EE23B6C8);
    }
  }
}

void sub_1E3C5FE38()
{
  if (!qword_1EE23B600)
  {
    v0 = sub_1E4205D34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE23B600);
    }
  }
}

void sub_1E3C5FEA8(void *a1, uint64_t *a2)
{
  v5 = *a2;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  v7 = *a2;
  v8 = a1;
  OUTLINED_FUNCTION_5_0(&v2[v7], v10);
  v9 = *&v2[v7];
  if (v9)
  {
    if (v9 == v6)
    {
      goto LABEL_8;
    }

    if (!v6)
    {
      goto LABEL_7;
    }
  }

  else if (!v6)
  {
    goto LABEL_8;
  }

  [v6 removeFromSuperview];
  if (*&v2[v7])
  {
LABEL_7:
    [v2 addSubview_];
  }

LABEL_8:
  [v2 setNeedsLayout];
}

double sub_1E3C5FF80(char a1, double a2, double a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_layout;
  OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_layout], v41);
  v9 = *&v4[v8];
  if (v9 && (a2 != 0.0 || a3 != 0.0))
  {
    v10 = *(*v9 + 176);

    v12 = v42;
    v10(v42, v11);
    if (v43)
    {
      v12 = MEMORY[0x1E69DDCE0];
      v13 = *(MEMORY[0x1E69DDCE0] + 8);
      v14 = *(MEMORY[0x1E69DDCE0] + 16);
      v15 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    else
    {
      v13 = *&v42[1];
      v14 = *&v42[2];
      v15 = *&v42[3];
    }

    v16 = *v12;
    v17 = sub_1E3952BE0(*v12, v13, v14, v15);
    [v4 effectiveUserInterfaceLayoutDirection];
    v18 = OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_titleView;
    OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_titleView], v40);
    v19 = *&v4[v18];
    if (v19)
    {
      v20 = v19;
      [v20 sizeThatFits_];
      v22 = v21;
      v24 = v23;
      v44.origin.x = 0.0;
      v44.origin.y = v16;
      v44.size.width = v22;
      v44.size.height = v24;
      CGRectGetWidth(v44);
    }

    v25 = OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_topSeparatorView;
    OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_topSeparatorView], v39);
    v26 = *&v4[v25];
    if (v26)
    {
      v27 = v26;
      OUTLINED_FUNCTION_33_2();
      v28 = v14;
      Height = CGRectGetHeight(v45);
      OUTLINED_FUNCTION_33_2();
      Width = CGRectGetWidth(v46);
      v31 = Height;
      v14 = v28;
      [v27 setFrame_];
    }

    v32 = OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_bottomSeparatorView;
    OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_bottomSeparatorView], v38);
    v33 = *&v4[v32];
    if (v33)
    {
      v34 = v33;
      OUTLINED_FUNCTION_33_2();
      [v34 setFrame_];
    }

    if ((a1 & 1) == 0)
    {
      v35 = *&v4[v18];
      if (v35)
      {
        v36 = v35;
        OUTLINED_FUNCTION_33_2();
        OUTLINED_FUNCTION_7_144();
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        [v36 setFrame_];
      }
    }

    sub_1E3952BD8(v16, v13, v14);
    v48.origin.x = OUTLINED_FUNCTION_7_144();
    CGRectGetHeight(v48);
  }

  return a2;
}

double sub_1E3C602F0()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  [v0 bounds];
  return sub_1E3C5FF80(0, v1, v2);
}

char *sub_1E3C60390(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 488))(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!*(v4 + 16) || (v6 = (*(*a1 + 392))()) == 0)
  {

    return 0;
  }

  v7 = v6;
  if (*v6 != _TtC8VideosUI24AskToBuyListHeaderLayout)
  {

    return 0;
  }

  v27[0] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35CF0, &unk_1E42C61A0);
  sub_1E4148C68(sub_1E3C606DC, v8, v24);
  v9 = *&v24[0];
  v10 = OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_layout;
  swift_beginAccess();
  *&v9[v10] = v7;

  vtable = (*v7)[18].vtable;

  v12 = v9;
  v13 = vtable();

  [v12 setBackgroundColor_];

  v15 = sub_1E373E010(23, v5, v14);

  if (v15)
  {
    if (*v15 != _TtC8VideosUI13TextViewModel)
    {
LABEL_12:

      goto LABEL_13;
    }

    v16 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    v17 = OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_titleView;
    OUTLINED_FUNCTION_5_0(&v12[OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_titleView], v26);
    v18 = *&v12[v17];
    v25 = 0;
    memset(v24, 0, sizeof(v24));
    v19 = v16;
    v20 = v18;
    v21 = sub_1E393D9C4(v15, v18, v24, 0);

    sub_1E373C624(v24);
    if (v21)
    {
      v22 = swift_dynamicCastObjCProtocolConditional();
      if (v22)
      {
LABEL_11:
        sub_1E3C5FEA8(v22, &OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_titleView);

        goto LABEL_12;
      }
    }

    v22 = 0;
    goto LABEL_11;
  }

LABEL_13:
  sub_1E3C5FEA8([objc_allocWithZone(VUISeparatorView) init], &OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_bottomSeparatorView);
  sub_1E3C5FEA8([objc_allocWithZone(VUISeparatorView) init], &OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_topSeparatorView);

  return v12;
}

id sub_1E3C606DC@<X0>(void *a2@<X8>)
{
  type metadata accessor for AskToBuyListHeader();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a2 = result;
  return result;
}

id sub_1E3C60718()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_titleView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_topSeparatorView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_bottomSeparatorView) = 0;
  v6 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

id sub_1E3C607BC(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_layout] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_titleView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_topSeparatorView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI18AskToBuyListHeader_bottomSeparatorView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_1E3C6090C()
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

uint64_t sub_1E3C60960(char a1)
{
  if (a1)
  {
    return 0x6174654477656976;
  }

  else
  {
    return 2036427888;
  }
}

uint64_t sub_1E3C609A4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6174654477656976;
  }

  else
  {
    v3 = 2036427888;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEB00000000736C69;
  }

  if (a2)
  {
    v5 = 0x6174654477656976;
  }

  else
  {
    v5 = 2036427888;
  }

  if (a2)
  {
    v6 = 0xEB00000000736C69;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3C60A60(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3C60AD4(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3C60B54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3C6090C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3C60B84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3C60960(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_1E3C60BDC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 248, a2);
  *(v2 + 248) = a1;

  return result;
}

double sub_1E3C60C44(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 256, a2);
  *(v2 + 256) = a1;

  return result;
}

uint64_t sub_1E3C60CA8(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 264, a2);
  *(v2 + 264) = a1 & 1;
  return result;
}

uint64_t sub_1E3C60CE0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_148();
  swift_allocObject();
  return sub_1E3C60D48(a1 & 1, a2, a3, a4, a5);
}

uint64_t sub_1E3C60D48(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 248) = 0;
  *(v5 + 256) = 0;
  *(v5 + 264) = a1 & 1;
  v10 = sub_1E39C0300();
  if (v10)
  {

    sub_1E3C60E0C(a2, a3, a4, a5);
  }

  return v10;
}

uint64_t sub_1E3C60E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  type metadata accessor for TextViewModel();
  v11 = MEMORY[0x1E69E6158];
  v28[3] = MEMORY[0x1E69E6158];
  v28[0] = a1;
  v28[1] = a2;

  v12 = sub_1E3C27638(23, v28, v5, 0, 0);
  if (v12)
  {
    v13 = v12;

    MEMORY[0x1E6910BF0](v14);
    OUTLINED_FUNCTION_3_147();
    if (v15)
    {
      OUTLINED_FUNCTION_7_14();
    }

    sub_1E4206324();
    v10 = v29;
    swift_beginAccess();
    v5[31] = v13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  ViewModelKeys.rawValue.getter(7);
  *(inited + 32) = v17;
  *(inited + 40) = v18;
  v20 = v5[2];
  v19 = v5[3];
  *(inited + 72) = v11;
  if (!v19)
  {
    v20 = 0;
  }

  v21 = 0xE000000000000000;
  if (v19)
  {
    v21 = v19;
  }

  *(inited + 48) = v20;
  *(inited + 56) = v21;

  *(inited + 80) = sub_1E3C7CCAC(0);
  *(inited + 88) = v22;
  *(inited + 120) = v11;
  *(inited + 96) = a3;
  *(inited + 104) = a4;

  v23 = sub_1E4205CB4();
  type metadata accessor for ImageViewModel();

  v24 = sub_1E3F5321C(39, v23, v5);
  if (v24)
  {
    v25 = v24;

    MEMORY[0x1E6910BF0](v26);
    OUTLINED_FUNCTION_3_147();
    if (v15)
    {
      OUTLINED_FUNCTION_7_14();
    }

    sub_1E4206324();
    v10 = v29;
    swift_beginAccess();
    v5[32] = v25;
  }

  return (*(*v5 + 472))(v10);
}

uint64_t sub_1E3C610B4()
{
  sub_1E3BD99F8();
  OUTLINED_FUNCTION_2_148();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

id sub_1E3C61178(uint64_t a1)
{
  sub_1E327F454(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE68, &unk_1E42A8E30);
  if (swift_dynamicCast())
  {
    sub_1E325F748(v6, &qword_1ECF2CE78, &unk_1E42C61E0);
    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v2 = result;
    v3 = sub_1E3741090(0x6F747475422E5654, 0xEE0079616C502E6ELL, result);
    v5 = v4;

    if (v5)
    {
      type metadata accessor for LibContextMenuViewModel();
      OUTLINED_FUNCTION_2_148();
      swift_allocObject();
      return sub_1E3C60D48(0, v3, v5, 0x2F3A6C6F626D7973, 0xED000079616C702FLL);
    }
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1E325F748(v6, &qword_1ECF2CE78, &unk_1E42C61E0);
  }

  return 0;
}

id sub_1E3C612E0(void *a1)
{
  v2 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  if (sub_1E3C6157C(v2))
  {
    sub_1E327F454(a1, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
    if (swift_dynamicCast())
    {
      v3 = 0x80000001E42797D0;
      __swift_destroy_boxed_opaque_existential_1(v13);
      v4 = 0xD000000000000012;
    }

    else
    {
      sub_1E327F454(a1, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88, &unk_1E42C61F0);
      if (swift_dynamicCast())
      {
        v3 = 0x80000001E42797B0;
        sub_1E37DADF4(v11, v14);
        sub_1E327F454(v14, v13);
        type metadata accessor for LibSidebandMovieMediaEntity(0);
        if (swift_dynamicCast())
        {
          v5 = (*(**&v11[0] + 928))();

          __swift_destroy_boxed_opaque_existential_1(v14);
          if (v5)
          {
            v4 = 0xD000000000000012;
          }

          else
          {
            v4 = 0xD000000000000013;
          }

          if (v5)
          {
            v3 = 0x80000001E42797F0;
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v14);
          v4 = 0xD000000000000013;
        }
      }

      else
      {
        v3 = 0x80000001E4279810;
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        sub_1E325F748(v11, &qword_1ECF2CEA0, &unk_1E42A8980);
        v4 = 0xD000000000000015;
      }
    }

    result = [objc_opt_self() sharedInstance];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v7 = result;
    v8 = sub_1E3741090(v4, v3, result);
    v10 = v9;

    if (v10)
    {
      type metadata accessor for LibContextMenuViewModel();
      OUTLINED_FUNCTION_2_148();
      swift_allocObject();
      return sub_1E3C60D48(1, v8, v10, 0xD000000000000014, 0x80000001E4279830);
    }
  }

  return 0;
}

uint64_t sub_1E3C6157C(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = *(v3 + 16);
  v8(&v13[-1] - v9, v1, a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A780, &unk_1E42A8840);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    return 1;
  }

  else
  {
    (v8)(v5, v1, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88, &unk_1E42C61F0);
    v10 = swift_dynamicCast();
    if (v10)
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  return v10;
}

unint64_t sub_1E3C6171C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35CF8;
  if (!qword_1ECF35CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35CF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LibContextMenuActionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3C6184C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for HorizontalContainerRelativeModifier(0);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  *v17 = a1;
  *(v17 + 8) = 0;
  *(v17 + 16) = a2;
  *(v17 + 24) = 1;
  *(v17 + 32) = 0;
  *(v17 + 40) = 1;
  *(v17 + 41) = a3;
  *(v17 + 48) = a4;
  *(v17 + 56) = a5;
  v19 = *(v18 + 44);
  *(v17 + v19) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();

  sub_1E34AF604(a4, a5);
  MEMORY[0x1E690DE70](v17, a6, v14, a7);
  return sub_1E3C620E4(v17);
}

uint64_t type metadata accessor for HorizontalContainerRelativeModifier(uint64_t a1)
{
  result = qword_1EE2910D0;
  if (!qword_1EE2910D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1E3C619DC()
{
  v1 = type metadata accessor for HorizontalContainerRelativeModifier(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  if (*(v0 + 41) != 1 || (v4 = sub_1E42026E4(), sub_1E42026F4(), sub_1E42026F4(), sub_1E42026F4() != v4))
  {
    sub_1E42026F4();
  }

  sub_1E3C623B4(v0, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_1E3C62418(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1E4203DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35D00, qword_1E42C63C0);
  sub_1E3C624EC();
  sub_1E42032A4();

  return result;
}

double sub_1E3C61B7C(uint64_t a1, double a2)
{
  v4 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = (v9 - v8);
  v11 = *a1;
  if ((sub_1E373F6E0(*(*a1 + 98), 129, v12, v13, v14, v15) & 1) != 0 && (v16 = *(a1 + 16)) != 0)
  {

    v17 = sub_1E3C61DD0(v11, v16, a2);
  }

  else
  {
    type metadata accessor for HorizontalContainerRelativeModifier(0);
    sub_1E3746E10(v10);
    v19 = sub_1E389CA24(v11, v10, *(a1 + 24));
    v20 = (*(v6 + 8))(v10, v4);
    v21 = (*(*v11 + 392))(v20);
    v22 = 1.0;
    if (v21)
    {
      v23 = (*(*v21 + 1128))(v21);
      v25 = v24;

      if ((v25 & 1) == 0)
      {
        v22 = *&v23;
      }
    }

    v26 = [objc_opt_self() isPad];
    v27 = *(a1 + 32);
    if (*(a1 + 40))
    {
      v27 = 0.0;
    }

    v28 = v27 + a2;
    v29 = a2 - v27;
    if (v26)
    {
      v30 = v29;
    }

    else
    {
      v30 = v28;
    }

    type metadata accessor for LayoutGrid();
    v17 = sub_1E3A25D00(v19, *(a1 + 8), v30, v22);
  }

  v31 = *(a1 + 48);
  if (v31)
  {
    v31(v18, v17);
  }

  return v17;
}

double sub_1E3C61DD0(uint64_t a1, uint64_t a2, double a3)
{
  v7 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = (v12 - v11);
  type metadata accessor for HorizontalContainerRelativeModifier(0);
  sub_1E3746E10(v13);
  v14 = sub_1E389CA24(a1, v13, *(v3 + 24));
  v15 = *(v9 + 8);
  v16 = v15(v13, v7);
  v17 = (*(*a1 + 392))(v16);
  v18 = 1.0;
  if (v17)
  {
    v19 = (*(*v17 + 1128))(v17);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      v18 = *&v19;
    }
  }

  type metadata accessor for LayoutGrid();
  v22 = sub_1E3A25D00(v14, 0, a3, v18);
  v23 = (*(*a2 + 392))();
  if (!v23)
  {
    goto LABEL_7;
  }

  v24 = v23;
  if (*v23 != _TtC8VideosUI23CanonicalInfoCardLayout)
  {

LABEL_7:
    type metadata accessor for CanonicalInfoCardLayout();
    v24 = sub_1E418442C();
  }

  sub_1E3746E10(v13);
  v25 = sub_1E3B02A04();
  v15(v13, v7);
  v26 = 1.0;
  if ((v25 & 1) == 0)
  {
    v27 = *(*v24 + 1128);

    v29 = v27(v28);
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      v26 = *&v29;
    }
  }

  sub_1E3A25950(a3);
  v33 = sub_1E3FF427C(v26, v22, v32);

  return v33;
}

uint64_t sub_1E3C620E4(uint64_t a1)
{
  v2 = type metadata accessor for HorizontalContainerRelativeModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3C62140()
{
  result = qword_1EE2910E8[0];
  if (!qword_1EE2910E8[0])
  {
    type metadata accessor for HorizontalContainerRelativeModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2910E8);
  }

  return result;
}

void sub_1E3C621C0(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    type metadata accessor for VUIGridType(319);
    if (v2 <= 0x3F)
    {
      sub_1E3C62330(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1E39BB660(319, &qword_1EE28A3B8, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1E381ECE4(319);
          if (v5 <= 0x3F)
          {
            sub_1E3C62330(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
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

void sub_1E3C62330(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1E3C623B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalContainerRelativeModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3C62418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HorizontalContainerRelativeModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E3C6247C(double a1)
{
  v3 = *(type metadata accessor for HorizontalContainerRelativeModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E3C61B7C(v4, a1);
}

unint64_t sub_1E3C624EC()
{
  result = qword_1EE288918;
  if (!qword_1EE288918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF35D00, qword_1E42C63C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288918);
  }

  return result;
}

uint64_t sub_1E3C62550()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    type metadata accessor for DownloadStateIndicatorLayout();
    v1 = sub_1E3C6D918();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_1E3C625B8()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BBB724();
    *(v0 + 168) = v1;
  }

  return v1;
}

uint64_t sub_1E3C62620()
{
  if (*(v0 + 176))
  {
    v1 = *(v0 + 176);
  }

  else
  {
    type metadata accessor for PlaybackStatusLayout();
    v1 = sub_1E3A70EBC(1);
    *(v0 + 176) = v1;
  }

  return v1;
}

uint64_t sub_1E3C6268C()
{
  if (*(v0 + 184))
  {
    v3 = *(v0 + 184);
  }

  else
  {
    v4 = v0;
    v3 = type metadata accessor for ViewGradientLayout(0);
    sub_1E40C3088();
    OUTLINED_FUNCTION_30();
    (*(v5 + 1776))(1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1E42A76D0;
    v7 = [objc_opt_self() blackColor];
    v8 = OUTLINED_FUNCTION_29_57(v7);

    *(v6 + 32) = v8;
    v9 = OUTLINED_FUNCTION_22_65();
    OUTLINED_FUNCTION_18_74();
    v12 = [v10 v11];

    *(v6 + 40) = v12;
    v13 = OUTLINED_FUNCTION_22_65();
    OUTLINED_FUNCTION_18_74();
    v16 = [v14 v15];

    *(v6 + 48) = v16;
    v17 = OUTLINED_FUNCTION_22_65();
    OUTLINED_FUNCTION_18_74();
    v20 = [v18 v19];

    *(v6 + 56) = v20;
    v21 = OUTLINED_FUNCTION_22_65();
    v22 = [v21 (v2 + 376)];

    *(v6 + 64) = v22;
    (*(*v3 + 1800))(v6);
    OUTLINED_FUNCTION_36();
    (*(v23 + 1824))(&unk_1F5D79AE8);
    OUTLINED_FUNCTION_36();
    v24 = OUTLINED_FUNCTION_20_69();
    v25(v24);
    OUTLINED_FUNCTION_36();
    v26 = OUTLINED_FUNCTION_19_84();
    v27(v26);
    *(v4 + 184) = v3;
  }

  return v3;
}

uint64_t sub_1E3C62940()
{
  if (*(v0 + 192))
  {
    v2 = *(v0 + 192);
  }

  else
  {
    v3 = v0;
    v2 = type metadata accessor for ViewGradientLayout(0);
    sub_1E40C3088();
    OUTLINED_FUNCTION_30();
    (*(v4 + 1776))(1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1E42A76D0;
    v6 = [objc_opt_self() blackColor];
    v7 = OUTLINED_FUNCTION_29_57(v6);

    *(v5 + 32) = v7;
    v8 = OUTLINED_FUNCTION_22_65();
    OUTLINED_FUNCTION_18_74();
    v11 = [v9 v10];

    *(v5 + 40) = v11;
    v12 = OUTLINED_FUNCTION_22_65();
    OUTLINED_FUNCTION_18_74();
    v15 = [v13 v14];

    *(v5 + 48) = v15;
    v16 = OUTLINED_FUNCTION_22_65();
    OUTLINED_FUNCTION_18_74();
    v19 = [v17 v18];

    *(v5 + 56) = v19;
    *(v5 + 64) = OUTLINED_FUNCTION_22_65();
    (*(*v2 + 1800))(v5);
    OUTLINED_FUNCTION_36();
    (*(v20 + 1824))(&unk_1F5D79B30);
    OUTLINED_FUNCTION_36();
    v21 = OUTLINED_FUNCTION_20_69();
    v22(v21);
    OUTLINED_FUNCTION_36();
    v23 = OUTLINED_FUNCTION_19_84();
    v24(v23);
    *(v3 + 192) = v2;
  }

  return v2;
}

uint64_t sub_1E3C62BD4()
{
  if (*(v0 + 200))
  {
    v1 = *(v0 + 200);
  }

  else
  {
    type metadata accessor for ViewGradientLayout(0);
    v1 = sub_1E40C3088();
    OUTLINED_FUNCTION_26_0();
    (*(v2 + 1776))(1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1E42B2A10;
    sub_1E3755B54();
    OUTLINED_FUNCTION_71_5();
    *(v3 + 32) = sub_1E4206F24();
    OUTLINED_FUNCTION_71_5();
    *(v3 + 40) = sub_1E4206F24();
    OUTLINED_FUNCTION_71_5();
    *(v3 + 48) = sub_1E4206F24();
    OUTLINED_FUNCTION_71_5();
    *(v3 + 56) = sub_1E4206F24();
    OUTLINED_FUNCTION_71_5();
    *(v3 + 64) = sub_1E4206F24();
    OUTLINED_FUNCTION_71_5();
    *(v3 + 72) = sub_1E4206F24();
    (*(*v1 + 1800))(v3);
    OUTLINED_FUNCTION_9_2();
    (*(v4 + 1824))(&unk_1F5D79B78);
    OUTLINED_FUNCTION_9_2();
    v5 = OUTLINED_FUNCTION_20_69();
    v6(v5);
    OUTLINED_FUNCTION_9_2();
    v7 = OUTLINED_FUNCTION_19_84();
    v8(v7);
    *(v0 + 200) = v1;
  }

  return v1;
}

double sub_1E3C62E0C()
{
  if ((*(v0 + 216) & 1) == 0)
  {
    return *(v0 + 208);
  }

  *(v0 + 208) = 0x4059000000000000;
  *(v0 + 216) = 0;
  return 100.0;
}

uint64_t sub_1E3C62E70()
{
  *(v0 + 200) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + 216) = 1;
  v1 = sub_1E3C2F9A0();

  sub_1E3C641A8();
  sub_1E3C64598();
  OUTLINED_FUNCTION_9_2();
  (*(v2 + 440))(0x3FF0F45D1745D174, 0);
  OUTLINED_FUNCTION_111();
  v4 = (*(v3 + 176))(v230);
  if (v231)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = *&v230[1];
  }

  v6 = *(*v1 + 2024);
  v6(v4);
  OUTLINED_FUNCTION_30();
  (*(v7 + 176))(&v232);

  v9 = v233;
  if (v234)
  {
    v9 = 0.0;
  }

  *&v10 = v5 - v9;
  v6(v8);
  v212[32] = 0;
  v227[0] = 0x4020000000000000;
  v227[1] = v10;
  v227[2] = v10;
  v227[3] = v10;
  v228 = 0;
  type metadata accessor for UIEdgeInsets();
  v12 = v11;
  sub_1E3C2FC98();
  v223[0] = v225[0];
  v223[1] = v225[1];
  v224 = v226;
  sub_1E3C3DE00();
  v219[0] = v221[0];
  v219[1] = v221[1];
  v220 = v222;
  sub_1E3C3DE00();
  v215[0] = v217[0];
  v215[1] = v217[1];
  v216 = v218;
  v13 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_107(v13, v14, v15, v16, v17, v18, v19, v20, 0x4018000000000000, v10, v10, v10, *&v212[32], *&v212[40], *&v212[48], *&v212[56], *&v212[64], *&v212[72], *&v212[80], *&v212[88], *&v212[96], *&v212[104], *&v212[112], *&v212[120], *&v212[128], *&v212[136], *&v212[144], *&v212[152], *&v212[160], *&v212[168], *&v212[176], *&v212[184], *&v212[192], *&v212[200], *&v212[208], *&v212[216], *&v212[224], *&v212[232], v213[0], v213[1], v213[2], v213[3], v213[4], v213[5], v214);
  sub_1E3C2FCB8(v212, v223, v219, v227, v215, v213, v12, __src);
  memcpy(v212, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v29 = OUTLINED_FUNCTION_30_3(v21, v22, v23, v24, v25, v26, v27, v28, *v212);
  v30(v29, 0);

  v6(v31);
  v32 = [objc_opt_self() whiteColor];
  v33 = [v32 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_36();
  (*(v34 + 752))(v33);

  v35 = [objc_opt_self() configurationWithPointSize:4 weight:20.0];
  OUTLINED_FUNCTION_9_2();
  v37 = *(v36 + 1832);
  v37();
  OUTLINED_FUNCTION_2_1();
  v39 = *(v38 + 1952);
  v40 = v35;
  v39(v35);

  (v37)(v41);
  v42 = [objc_opt_self() whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v43 + 680))();

  OUTLINED_FUNCTION_9_2();
  (*(v44 + 2024))();
  OUTLINED_FUNCTION_30();
  (*(v45 + 152))(v212);

  if (v212[32])
  {
    v47 = -1.0;
  }

  else
  {
    v47 = *&v212[16] + -1.0;
  }

  (v37)(v46);
  __src[1] = 0;
  __src[0] = 0;
  *&__src[2] = v47;
  __src[3] = 0x4024000000000000;
  LOBYTE(__src[4]) = 0;
  OUTLINED_FUNCTION_26_0();
  (*(v48 + 160))(__src);

  sub_1E3C6488C();
  sub_1E3C64C8C();
  OUTLINED_FUNCTION_9_2();
  v50 = *(v49 + 1856);
  v50();
  OUTLINED_FUNCTION_2_1();
  v51 = OUTLINED_FUNCTION_13_12();
  v52(v51);

  (v50)(v53);
  OUTLINED_FUNCTION_2_1();
  (*(v54 + 1984))(5);

  (v50)(v55);
  *v212 = 3;
  v212[8] = 0;
  v232 = 2;
  LOBYTE(v233) = 0;
  v56 = MEMORY[0x1E69E6810];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_21_68();
  OUTLINED_FUNCTION_17_89();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_16_95();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_15_97();
  sub_1E3C2FCB8(v57, v58, v59, &v232, v219, v215, v56, v60);
  memcpy(v212, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v69 = OUTLINED_FUNCTION_30_3(v61, v62, v63, v64, v65, v66, v67, v68, *v212);
  v70(v69, 62);

  (v50)(v71);
  OUTLINED_FUNCTION_2_1();
  v72 = OUTLINED_FUNCTION_10_7();
  v73(v72);

  (v50)(v74);
  OUTLINED_FUNCTION_2_1();
  v75 = OUTLINED_FUNCTION_10_7();
  v76(v75);

  (v50)(v77);
  OUTLINED_FUNCTION_2_1();
  (*(v78 + 2008))(1);

  v80 = (v50)(v79);
  v212[0] = 27;
  LOBYTE(v232) = 19;
  LOBYTE(v230[0]) = 19;
  LOBYTE(v227[0]) = 22;
  LOBYTE(v225[0]) = 15;
  LOBYTE(v223[0]) = 19;
  v88 = OUTLINED_FUNCTION_28_46(v80, v81, v82, v83, v84, v85, v86, v87, *v212);
  sub_1E3C2FCB8(v88, v89, v90, v227, v225, v223, &qword_1F5D549D8, v91);
  *v212 = __src[0];
  *&v212[4] = WORD2(__src[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v100 = OUTLINED_FUNCTION_30_3(v92, v93, v94, v95, v96, v97, v98, v99, *v212);
  v101(v100, 48);

  (v50)(v102);
  v103 = sub_1E3C8BE74();
  sub_1E3DEFBE8(1, v103);

  (v50)(v104);
  sub_1E3952C88();
  __src[0] = v105;
  __src[1] = v106;
  __src[2] = v107;
  __src[3] = v108;
  LOBYTE(__src[4]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v109 + 160))(__src);

  (v50)(v110);
  LOBYTE(v232) = 11;
  LOBYTE(v230[0]) = 5;
  LOBYTE(v227[0]) = 4;
  sub_1E3C2FC98();
  LOBYTE(v223[0]) = v225[0];
  sub_1E3C3DE00();
  LOBYTE(v219[0]) = v221[0];
  sub_1E3C3DE00();
  LOBYTE(v215[0]) = v217[0];
  sub_1E3C2FCB8(&v232, v223, v219, v230, v215, v227, &qword_1F5D54AF8, v212);
  LODWORD(v232) = *v212;
  WORD2(v232) = *&v212[4];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v111 + 1600))(&v232, 54, v112 & 1, &qword_1F5D54AF8);

  OUTLINED_FUNCTION_9_2();
  v114 = *(v113 + 1928);
  v114();
  OUTLINED_FUNCTION_2_1();
  (*(v115 + 2056))(1, 0);

  (v114)(v116);
  *v212 = 1;
  v212[8] = 0;
  v232 = 0;
  LOBYTE(v233) = 0;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_21_68();
  OUTLINED_FUNCTION_17_89();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_16_95();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_15_97();
  sub_1E3C2FCB8(v117, v118, v119, v219, v215, &v232, v56, v120);
  memcpy(v212, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v129 = OUTLINED_FUNCTION_30_3(v121, v122, v123, v124, v125, v126, v127, v128, *v212);
  v130(v129, 63);

  (v114)(v131);
  OUTLINED_FUNCTION_2_1();
  v132 = OUTLINED_FUNCTION_10_7();
  v133(v132);

  (v114)(v134);
  v212[0] = 17;
  LOBYTE(v232) = 21;
  LOBYTE(v230[0]) = 21;
  sub_1E3C3DE00();
  LOBYTE(v225[0]) = v227[0];
  sub_1E3C3DE00();
  LOBYTE(v221[0]) = v223[0];
  v135 = sub_1E3C3DE00();
  LOBYTE(v217[0]) = v219[0];
  v143 = OUTLINED_FUNCTION_28_46(v135, v136, v137, v138, v139, v140, v141, v142, *v212);
  sub_1E3C2FCB8(v143, v144, v145, v225, v221, v217, &qword_1F5D549D8, v146);
  *v212 = __src[0];
  *&v212[4] = WORD2(__src[0]);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v155 = OUTLINED_FUNCTION_30_3(v147, v148, v149, v150, v151, v152, v153, v154, *v212);
  v156(v155, 48);

  (v114)(v157);
  OUTLINED_FUNCTION_2_1();
  (*(v158 + 2008))(1);

  v160 = (v114)(v159);
  sub_1E3E60700();
  OUTLINED_FUNCTION_7_16();
  v161 = *(*v160 + 680);
  v162 = v56;
  v161(v56);

  (v114)(v163);
  sub_1E3952C88();
  __src[0] = v164;
  __src[1] = v165;
  __src[2] = v166;
  __src[3] = v167;
  LOBYTE(__src[4]) = 0;
  OUTLINED_FUNCTION_8();
  (*(v168 + 160))(__src);

  OUTLINED_FUNCTION_9_2();
  (*(v169 + 1952))();
  memset(__src, 0, 24);
  __src[3] = 0x401C000000000000;
  LOBYTE(__src[4]) = 0;
  OUTLINED_FUNCTION_26_0();
  (*(v170 + 160))(__src);

  OUTLINED_FUNCTION_9_2();
  v172 = *(v171 + 2000);
  v172();
  __src[0] = 0x4020000000000000;
  memset(&__src[1], 0, 25);
  OUTLINED_FUNCTION_26_0();
  (*(v173 + 160))(__src);

  v175 = (v172)(v174);
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v176 = *(*v175 + 680);
  v177 = v56;
  v176(v56);

  v179 = (v172)(v178);
  sub_1E3E60364();
  OUTLINED_FUNCTION_7_16();
  v180 = *(*v179 + 872);
  v181 = v56;
  v180(v56);

  OUTLINED_FUNCTION_9_2();
  (*(v182 + 1976))();
  sub_1E3952C78();
  *v212 = v183;
  *&v212[8] = v184;
  *&v212[16] = v185;
  *&v212[24] = v186;
  v212[32] = 0;
  OUTLINED_FUNCTION_8();
  (*(v187 + 160))(v212);

  OUTLINED_FUNCTION_9_2();
  v189 = (*(v188 + 1976))();
  v190 = *sub_1E3E5FD88();
  (*(*v189 + 1712))(v190);

  OUTLINED_FUNCTION_9_2();
  v192 = (*(v191 + 1880))();
  sub_1E3C37CBC(v192, 23);

  OUTLINED_FUNCTION_9_2();
  v194 = (*(v193 + 1904))();
  sub_1E3C37CBC(v194, 15);

  OUTLINED_FUNCTION_9_2();
  v196 = (*(v195 + 1856))();
  sub_1E3C37CBC(v196, 4);

  OUTLINED_FUNCTION_9_2();
  v198 = (*(v197 + 1928))();
  sub_1E3C37CBC(v198, 10);

  OUTLINED_FUNCTION_9_2();
  v200 = (*(v199 + 1808))();
  sub_1E3C37CBC(v200, 39);

  OUTLINED_FUNCTION_9_2();
  v202 = (*(v201 + 1832))();
  sub_1E3C37CBC(v202, 36);

  OUTLINED_FUNCTION_9_2();
  v204 = (*(v203 + 1952))();
  sub_1E3C37CBC(v204, 59);

  OUTLINED_FUNCTION_9_2();
  v206 = (*(v205 + 2000))();
  sub_1E3C37CBC(v206, 67);

  OUTLINED_FUNCTION_9_2();
  v208 = (*(v207 + 1976))();
  sub_1E3C37CBC(v208, 233);

  OUTLINED_FUNCTION_9_2();
  v210 = (*(v209 + 2024))();
  sub_1E3C37CBC(v210, 96);

  return v1;
}

void sub_1E3C641A8()
{
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_10_7();
  v2(v1);
  OUTLINED_FUNCTION_36();
  v3 = OUTLINED_FUNCTION_13_12();
  v4(v3);
  OUTLINED_FUNCTION_36();
  v5 = OUTLINED_FUNCTION_10_7();
  v6(v5);
  OUTLINED_FUNCTION_36();
  v7 = OUTLINED_FUNCTION_13_12();
  v8(v7);
  sub_1E39537A8();
  v67[0] = v9;
  v67[1] = v10;
  v67[2] = v11;
  v67[3] = v12;
  v68 = 0;
  (*(*v0 + 560))(v67);
  v13 = *sub_1E3E5FB0C();
  v14 = *(*v0 + 752);
  v15 = v13;
  v14(v13);
  v16 = *sub_1E3E5FB88();
  v17 = *(*v0 + 872);
  v18 = v16;
  v17(v16);
  __asm { FMOV            V1.2D, #12.0 }

  *&v55[16] = _Q1;
  v55[32] = 0;
  v64[0] = xmmword_1E42A76A0;
  v64[1] = xmmword_1E42A76B0;
  v65 = 0;
  v62[0] = xmmword_1E42A76A0;
  v62[1] = xmmword_1E42A76B0;
  v63 = 0;
  __asm { FMOV            V2.2D, #18.0 }

  v60[0] = _Q2;
  v60[1] = _Q2;
  v61 = 0;
  v58[0] = xmmword_1E42A76A0;
  v58[1] = _Q1;
  v59 = 0;
  type metadata accessor for UIEdgeInsets();
  v26 = v25;
  v27 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_107(v27, v28, v29, v30, v31, v32, v33, v34, 0, 0x4028000000000000, *&v55[16], *&v55[24], *&v55[32], *&v55[40], *&v55[48], *&v55[56], *&v55[64], *&v55[72], *&v55[80], *&v55[88], *&v55[96], *&v55[104], *&v55[112], *&v55[120], *&v55[128], *&v55[136], *&v55[144], *&v55[152], *&v55[160], *&v55[168], *&v55[176], *&v55[184], *&v55[192], *&v55[200], *&v55[208], *&v55[216], *&v55[224], *&v55[232], v56[0], v56[1], v56[2], v56[3], v56[4], v56[5], v57);
  sub_1E3C2FCB8(v55, v64, v62, v60, v58, v56, v26, __src);
  memcpy(v55, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v43 = OUTLINED_FUNCTION_30_3(v35, v36, v37, v38, v39, v40, v41, v42, *v55);
  v44(v43, 1);
  [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  OUTLINED_FUNCTION_36();
  (*(v45 + 608))();
  OUTLINED_FUNCTION_36();
  v47 = *(v46 + 600);
  v48 = v47();
  if (v48)
  {
    v49 = v48;
    [v48 setShadowOffset_];
  }

  v50 = v47();
  [v50 setShadowBlurRadius_];

  v51 = v47();
  if (v51)
  {
    v52 = v51;
    v53 = [objc_opt_self() blackColor];
    v54 = [v53 colorWithAlphaComponent_];

    [v52 setShadowColor_];
  }
}

double sub_1E3C64598()
{
  OUTLINED_FUNCTION_8();
  v1 += 226;
  v2 = *v1;
  (*v1)();
  OUTLINED_FUNCTION_30();
  (*(v3 + 512))(2);

  (v2)(v4);
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 1808))(3);

  v7 = (v2)(v6);
  sub_1E3E60A14();
  OUTLINED_FUNCTION_7_16();
  v8 = *(*v7 + 872);
  v9 = v0;
  v8(v0);

  v11 = (v2)(v10);
  v12 = *sub_1E418A524();
  (*(*v11 + 440))(v12, 0);

  (v2)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 2000))(0);

  (v2)(v15);
  if ([objc_opt_self() isVision])
  {
    v16 = [objc_opt_self() blackColor];
  }

  else
  {
    v17 = *sub_1E3E5FACC();
  }

  OUTLINED_FUNCTION_8();
  (*(v18 + 752))();

  v20 = (v2)(v19);
  v21 = *sub_1E3E5FB0C();
  v22 = *(*v20 + 776);
  v23 = v21;
  v22(v21);

  return result;
}

double sub_1E3C6488C()
{
  OUTLINED_FUNCTION_8();
  v0 += 235;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_30();
  v2 = OUTLINED_FUNCTION_13_12();
  v3(v2);

  (v1)(v4);
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 1984))(5);

  (v1)(v6);
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 2056))(1, 0);

  (v1)(v8);
  OUTLINED_FUNCTION_2_1();
  v9 = OUTLINED_FUNCTION_10_7();
  v10(v9);

  (v1)(v11);
  OUTLINED_FUNCTION_2_1();
  v12 = OUTLINED_FUNCTION_10_7();
  v13(v12);

  v15 = (v1)(v14);
  v61 = 22;
  v60 = 22;
  v59 = 25;
  v58 = 17;
  v57 = 22;
  v23 = OUTLINED_FUNCTION_24_62(v15, v16, v17, v18, v19, v20, v21, v22, v53, v55, 27);
  sub_1E3C2FCB8(v23, v24, v25, v26, &v58, &v57, &qword_1F5D549D8, v27);
  OUTLINED_FUNCTION_27_53();
  OUTLINED_FUNCTION_14();
  (*(v28 + 1600))(v56, 48, v29 & 1, &qword_1F5D549D8);

  (v1)(v30);
  v56[0] = 11;
  v61 = 10;
  v60 = 10;
  v59 = 5;
  v58 = 5;
  v31 = sub_1E3C3DE00();
  HIBYTE(v55) = v57;
  v39 = OUTLINED_FUNCTION_24_62(v31, v32, v33, v34, v35, v36, v37, v38, v54, v55, v56[0]);
  sub_1E3C2FCB8(v39, v40, v41, v42, &v55 + 3, &v58, &qword_1F5D54AF8, v43);
  OUTLINED_FUNCTION_27_53();
  OUTLINED_FUNCTION_14();
  (*(v44 + 1600))(v56, 54, v45 & 1, &qword_1F5D54AF8);

  (v1)(v46);
  OUTLINED_FUNCTION_2_1();
  (*(v47 + 1936))(2);

  (v1)(v48);
  v49 = sub_1E3C8BE74();
  sub_1E3DEFBE8(1, v49);

  (v1)(v50);
  OUTLINED_FUNCTION_2_1();
  (*(v51 + 2008))(1);

  return result;
}

double sub_1E3C64C8C()
{
  OUTLINED_FUNCTION_8();
  v0 += 238;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_30();
  v2 = OUTLINED_FUNCTION_13_12();
  v3(v2);

  (v1)(v4);
  OUTLINED_FUNCTION_2_1();
  (*(v5 + 1984))(5);

  (v1)(v6);
  OUTLINED_FUNCTION_2_1();
  (*(v7 + 2056))(1, 0);

  (v1)(v8);
  OUTLINED_FUNCTION_2_1();
  v9 = OUTLINED_FUNCTION_10_7();
  v10(v9);

  (v1)(v11);
  OUTLINED_FUNCTION_2_1();
  v12 = OUTLINED_FUNCTION_10_7();
  v13(v12);

  (v1)(v14);
  OUTLINED_FUNCTION_2_1();
  (*(v15 + 2008))(1);

  v17 = (v1)(v16);
  v130[0] = 15;
  LOBYTE(v142[0]) = 17;
  LOBYTE(v137) = 17;
  LOBYTE(v135[0]) = 21;
  LOBYTE(v133[0]) = 3;
  LOBYTE(v132[0]) = 14;
  v25 = OUTLINED_FUNCTION_8_106(v17, v18, v19, v20, v21, v22, v23, v24, *v130);
  sub_1E3C2FCB8(v25, v26, v27, v28, v133, v132, &qword_1F5D549D8, v29);
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_14();
  v38 = OUTLINED_FUNCTION_30_3(v30, v31, v32, v33, v34, v35, v36, v37, *v130);
  v39(v38, 48);

  (v1)(v40);
  v130[0] = 5;
  LOBYTE(v142[0]) = 3;
  sub_1E3C2FC98();
  LOBYTE(v135[0]) = v137;
  sub_1E3C3DE00();
  LOBYTE(v132[0]) = v133[0];
  sub_1E3C3DE00();
  v146 = v131[0];
  sub_1E3C3DE00();
  v145[0] = v145[1];
  sub_1E3C2FCB8(v130, v135, v132, &v146, v142, v145, &unk_1F5D54B88, __src);
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_14();
  v49 = OUTLINED_FUNCTION_30_3(v41, v42, v43, v44, v45, v46, v47, v48, *v130);
  v50(v49, 55);

  (v1)(v51);
  v130[0] = 11;
  LOBYTE(v142[0]) = 5;
  LOBYTE(v137) = 5;
  LOBYTE(v135[0]) = 5;
  LOBYTE(v133[0]) = 5;
  v52 = sub_1E3C3DE00();
  LOBYTE(v131[0]) = v132[0];
  v60 = OUTLINED_FUNCTION_8_106(v52, v53, v54, v55, v56, v57, v58, v59, *v130);
  sub_1E3C2FCB8(v60, v61, v62, v63, v131, v133, &qword_1F5D54AF8, v64);
  OUTLINED_FUNCTION_32_9();
  OUTLINED_FUNCTION_14();
  v73 = OUTLINED_FUNCTION_30_3(v65, v66, v67, v68, v69, v70, v71, v72, *v130);
  v74(v73, 54);

  v76 = (v1)(v75);
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_7_16();
  v77 = *(*v76 + 680);
  v78 = &qword_1F5D54AF8;
  v77(&qword_1F5D54AF8);

  (v1)(v79);
  memset(v130, 0, 32);
  v130[32] = 1;
  sub_1E3952C88();
  v142[0] = v80;
  v142[1] = v81;
  v142[2] = v82;
  v142[3] = v83;
  v143 = 0;
  sub_1E3952C88();
  v137 = v84;
  v138 = v85;
  v139 = v86;
  v140 = v87;
  v141 = 0;
  sub_1E3952C88();
  v135[0] = v88;
  v135[1] = v89;
  v135[2] = v90;
  v135[3] = v91;
  v136 = 0;
  sub_1E3952C88();
  v133[0] = v92;
  v133[1] = v93;
  v133[2] = v94;
  v133[3] = v95;
  v134 = 0;
  type metadata accessor for UIEdgeInsets();
  v97 = v96;
  v98 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_107(v98, v99, v100, v101, v102, v103, v104, v105, *v130, *&v130[8], *&v130[16], *&v130[24], *&v130[32], *&v130[40], *&v130[48], *&v130[56], *&v130[64], *&v130[72], *&v130[80], *&v130[88], *&v130[96], *&v130[104], *&v130[112], *&v130[120], *&v130[128], *&v130[136], *&v130[144], *&v130[152], *&v130[160], *&v130[168], *&v130[176], *&v130[184], *&v130[192], *&v130[200], *&v130[208], *&v130[216], *&v130[224], *&v130[232], v131[0], v131[1], v131[2], v131[3], v131[4], v131[5], v132[0]);
  v114 = OUTLINED_FUNCTION_8_106(v106, v107, v108, v109, v110, v111, v112, v113, *v130);
  sub_1E3C2FCB8(v114, v115, v116, v117, v133, v131, v97, v118);
  memcpy(v130, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v127 = OUTLINED_FUNCTION_30_3(v119, v120, v121, v122, v123, v124, v125, v126, *v130);
  v128(v127, 0);

  return result;
}

double sub_1E3C6525C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1E3C35CF4(a1, a2);
  v6 = sub_1E3890920(a1, a3, v5);

  return sub_1E3C652E0(v6);
}

double sub_1E3C652E0(char a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 217);
  *(v2 + 217) = a1;
  swift_beginAccess();
  if (v4 != *(v2 + 217))
  {
    OUTLINED_FUNCTION_111();
    if ((*(v6 + 2144))())
    {
      sub_1E3C6DC7C();
      OUTLINED_FUNCTION_111();
      (*(v7 + 1160))();
      type metadata accessor for LayoutGrid();
      OUTLINED_FUNCTION_9_2();
      (*(v8 + 1560))();
      sub_1E3A25914();
      v33[0] = 0x4014000000000000;
      v33[1] = v9;
      v33[2] = 0x4024000000000000;
      v33[3] = v10;
      v34 = 0;
      OUTLINED_FUNCTION_111();
      (*(v11 + 184))(v33);
      OUTLINED_FUNCTION_9_2();
      v13 = *(v12 + 1880);
      v14 = v13();
      sub_1E3C6DC94(v14);

      (v13)(v15);
      OUTLINED_FUNCTION_2_1();
      (*(v16 + 1792))(4);

      (v13)(v17);
      OUTLINED_FUNCTION_2_1();
      (*(v18 + 1696))(22);

      OUTLINED_FUNCTION_9_2();
      v20 = *(v19 + 1904);
      v20();
      sub_1E3C6DE18();

      (v20)(v21);
      OUTLINED_FUNCTION_2_1();
      (*(v22 + 1696))(14);

      (v20)(v23);
      OUTLINED_FUNCTION_2_1();
      (*(v24 + 1792))(7);

      OUTLINED_FUNCTION_9_2();
      (*(v25 + 1856))();
      v30[0] = 0;
      v30[1] = 0;
      v31 = xmmword_1E4296CD0;
      v32 = 0;
      OUTLINED_FUNCTION_26_0();
      (*(v26 + 160))(v30);

      OUTLINED_FUNCTION_9_2();
      (*(v27 + 1808))();
      v28 = sub_1E418A524();
      sub_1E3C6DFCC(*v28);
    }

    else
    {
      OUTLINED_FUNCTION_111();
      (*(v29 + 1160))(0, 1);
      sub_1E3C641A8();
      sub_1E3C64598();
      sub_1E3C6488C();
      return sub_1E3C64C8C();
    }
  }

  return result;
}

double sub_1E3C65728()
{

  return result;
}

uint64_t sub_1E3C657B0()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3C65840()
{
  v0 = sub_1E3C657B0();

  return MEMORY[0x1EEE6BDC0](v0, 218, 7);
}

uint64_t sub_1E3C65870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E3890920(a1, a3, a3);
  OUTLINED_FUNCTION_8();
  return (v3 ^ (*(v4 + 2144))()) & 1;
}

uint64_t sub_1E3C65964(void *a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35D08, &qword_1E42C6470);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = sub_1E4204BE4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = MEMORY[0x1E690F520](a1);
  sub_1E3C65D60(v19, v11);

  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1E325F748(v11, &qword_1ECF35D08, &qword_1E42C6470);
    v20 = sub_1E324FBDC();
    (*(v4 + 16))(v8, v20, v2);
    v21 = a1;
    v22 = sub_1E41FFC94();
    v23 = sub_1E42067F4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35 = v25;
      *v24 = 136315138;
      v26 = [v21 debugDescription];
      v27 = sub_1E4205F14();
      v29 = v28;

      v30 = sub_1E3270FC8(v27, v29, &v35);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_1E323F000, v22, v23, "JetNetworkPerfMetricsConverter - No network performance metrics could\nbe created from the AMSURLResult:%s.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E69143B0](v25, -1, -1);
      MEMORY[0x1E69143B0](v24, -1, -1);
    }

    (*(v4 + 8))(v8, v2);
    return MEMORY[0x1E69E7CC8];
  }

  else
  {
    OUTLINED_FUNCTION_90();
    v32();
    v31 = sub_1E3C65E28(v18);
    (*(v14 + 8))(v18, v12);
  }

  return v31;
}

id JetNetworkPerfMetricsConverterObjc.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3C65D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = sub_1E4204BE4();
    (*(*(v7 - 8) + 16))(a2, a1 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v6, v7);
    v8 = a2;
    v9 = 0;
    v10 = v7;
  }

  else
  {
    v10 = sub_1E4204BE4();
    v8 = a2;
    v9 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, 1, v10);
}

uint64_t sub_1E3C65E28(uint64_t a1)
{
  v2 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4204534();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v232 = v231 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v231[5] = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v231[4] = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  v231[3] = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_18_6();
  v231[2] = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_6();
  v231[1] = v23;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_6();
  v231[0] = v25;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v231 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v231 - v30;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = v231 - v34;
  v36 = *(v11 + 104);
  v236 = *MEMORY[0x1E69AAFB8];
  v237 = v11 + 104;
  v235 = v36;
  v36(v231 - v34, v33);
  sub_1E41FE5C4();
  sub_1E41FE574();
  (*(v4 + 8))(v8, v2);
  sub_1E4204524();
  v38 = v37;
  v39 = *(v11 + 8);
  v233 = v11 + 8;
  v234 = v39;
  v39(v35, v9);
  sub_1E3C6A554(7);
  v41 = v40;
  v43 = v42;
  v241 = MEMORY[0x1E69E63B0];
  *&v240 = floor(v38);
  sub_1E329504C(&v240, v239);
  v44 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v238 = v44;
  sub_1E32A87C0(v239, v41, v43, isUniquelyReferenced_nonNull_native);

  v46 = v238;
  v47 = sub_1E4204B84();
  v49 = MEMORY[0x1E69E6158];
  if (v48)
  {
    v50 = v47;
    v51 = v48;
    sub_1E3C6A554(0);
    OUTLINED_FUNCTION_11_24();
    v241 = v49;
    *&v240 = v50;
    *(&v240 + 1) = v51;
    OUTLINED_FUNCTION_7_145();
    v52 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v52, v53, v54, v55);

    v46 = v238;
  }

  v56 = sub_1E4204BD4();
  v58 = v234;
  if (v57)
  {
    v59 = v56;
    v60 = v57;
    sub_1E3C6A554(1);
    OUTLINED_FUNCTION_11_24();
    v241 = MEMORY[0x1E69E6158];
    *&v240 = v59;
    *(&v240 + 1) = v60;
    OUTLINED_FUNCTION_7_145();
    v61 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v61, v62, v63, v64);

    v46 = v238;
  }

  v65 = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_4_155();
  v66();
  v67 = sub_1E4204AE4();
  if (v68)
  {
    v67 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v69 = MEMORY[0x1E69E63B0];
  }

  v70 = OUTLINED_FUNCTION_0_192(v67, v69);
  sub_1E3C677F0(v70, v71);
  v73 = v72;
  v58(v31, v9);
  sub_1E325F748(&v240, &unk_1ECF296E0, &unk_1E4298030);
  if ((v73 & 1) == 0)
  {
    sub_1E3C6A554(4);
    OUTLINED_FUNCTION_2_149();
    v74 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v74, v75, v76, v77);

    v46 = v238;
  }

  OUTLINED_FUNCTION_4_155();
  v78();
  v79 = sub_1E4204B04();
  if (v80)
  {
    v79 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v81 = MEMORY[0x1E69E63B0];
  }

  v82 = OUTLINED_FUNCTION_0_192(v79, v81);
  sub_1E3C677F0(v82, v83);
  v85 = v84;
  v58(v28, v9);
  sub_1E325F748(&v240, &unk_1ECF296E0, &unk_1E4298030);
  if ((v85 & 1) == 0)
  {
    sub_1E3C6A554(5);
    OUTLINED_FUNCTION_2_149();
    v86 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v86, v87, v88, v89);

    v46 = v238;
  }

  v90 = OUTLINED_FUNCTION_3_148();
  v91(v90);
  v92 = sub_1E4204AC4();
  if (v93)
  {
    v92 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v94 = MEMORY[0x1E69E63B0];
  }

  v95 = OUTLINED_FUNCTION_0_192(v92, v94);
  sub_1E3C677F0(v95, v96);
  v97 = OUTLINED_FUNCTION_5_141();
  (v58)(v97);
  sub_1E325F748(&v240, &unk_1ECF296E0, &unk_1E4298030);
  if ((v85 & 1) == 0)
  {
    sub_1E3C6A554(6);
    OUTLINED_FUNCTION_2_149();
    v98 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v98, v99, v100, v101);

    v46 = v238;
  }

  v102 = sub_1E4204B14();
  v103 = MEMORY[0x1E69E6370];
  if (v102 != 2)
  {
    v104 = v102;
    sub_1E3C6A554(3);
    OUTLINED_FUNCTION_11_24();
    v241 = v103;
    LOBYTE(v240) = v104 & 1;
    OUTLINED_FUNCTION_7_145();
    v105 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v105, v106, v107, v108);

    v46 = v238;
  }

  v109 = OUTLINED_FUNCTION_3_148();
  v110(v109);
  v111 = sub_1E4204B34();
  if (v112)
  {
    v111 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v113 = MEMORY[0x1E69E63B0];
  }

  v114 = OUTLINED_FUNCTION_0_192(v111, v113);
  sub_1E3C677F0(v114, v115);
  v116 = OUTLINED_FUNCTION_5_141();
  (v58)(v116);
  sub_1E325F748(&v240, &unk_1ECF296E0, &unk_1E4298030);
  if ((v85 & 1) == 0)
  {
    sub_1E3C6A554(9);
    OUTLINED_FUNCTION_2_149();
    v117 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v117, v118, v119, v120);

    v46 = v238;
  }

  v121 = OUTLINED_FUNCTION_3_148();
  v122(v121);
  v123 = sub_1E4204AF4();
  if (v124)
  {
    v123 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v125 = MEMORY[0x1E69E63B0];
  }

  v126 = OUTLINED_FUNCTION_0_192(v123, v125);
  sub_1E3C677F0(v126, v127);
  v128 = OUTLINED_FUNCTION_5_141();
  (v58)(v128);
  sub_1E325F748(&v240, &unk_1ECF296E0, &unk_1E4298030);
  if ((v85 & 1) == 0)
  {
    sub_1E3C6A554(10);
    OUTLINED_FUNCTION_2_149();
    v129 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v129, v130, v131, v132);

    v46 = v238;
  }

  v133 = OUTLINED_FUNCTION_3_148();
  v134(v133);
  v135 = sub_1E4204B94();
  if (v136)
  {
    v135 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v137 = MEMORY[0x1E69E63B0];
  }

  v138 = OUTLINED_FUNCTION_0_192(v135, v137);
  sub_1E3C677F0(v138, v139);
  v140 = OUTLINED_FUNCTION_5_141();
  (v58)(v140);
  sub_1E325F748(&v240, &unk_1ECF296E0, &unk_1E4298030);
  if ((v85 & 1) == 0)
  {
    sub_1E3C6A554(11);
    OUTLINED_FUNCTION_2_149();
    v141 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v141, v142, v143, v144);

    v46 = v238;
  }

  v145 = OUTLINED_FUNCTION_3_148();
  v146(v145);
  v147 = sub_1E4204B44();
  if (v148)
  {
    v147 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v149 = MEMORY[0x1E69E63B0];
  }

  v150 = OUTLINED_FUNCTION_0_192(v147, v149);
  sub_1E3C677F0(v150, v151);
  v152 = OUTLINED_FUNCTION_5_141();
  (v58)(v152);
  sub_1E325F748(&v240, &unk_1ECF296E0, &unk_1E4298030);
  if ((v85 & 1) == 0)
  {
    sub_1E3C6A554(12);
    OUTLINED_FUNCTION_2_149();
    v153 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v153, v154, v155, v156);

    v46 = v238;
  }

  v157 = OUTLINED_FUNCTION_3_148();
  v158(v157);
  v159 = sub_1E4204AB4();
  if (v160)
  {
    v159 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v161 = MEMORY[0x1E69E63B0];
  }

  v162 = OUTLINED_FUNCTION_0_192(v159, v161);
  sub_1E3C677F0(v162, v163);
  v164 = OUTLINED_FUNCTION_5_141();
  (v58)(v164);
  sub_1E325F748(&v240, &unk_1ECF296E0, &unk_1E4298030);
  if ((v85 & 1) == 0)
  {
    sub_1E3C6A554(13);
    OUTLINED_FUNCTION_2_149();
    v165 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v165, v166, v167, v168);

    v46 = v238;
  }

  v169 = *&v232;
  v170 = OUTLINED_FUNCTION_3_148();
  v171(v170);
  v172 = sub_1E4204BB4();
  if (v173)
  {
    v172 = OUTLINED_FUNCTION_8_107();
  }

  else
  {
    v174 = MEMORY[0x1E69E63B0];
  }

  v175 = MEMORY[0x1E69E6158];
  v176 = OUTLINED_FUNCTION_0_192(v172, v174);
  sub_1E3C677F0(v176, v177);
  v178 = OUTLINED_FUNCTION_5_141();
  (v234)(v178);
  sub_1E325F748(&v240, &unk_1ECF296E0, &unk_1E4298030);
  if ((v85 & 1) == 0)
  {
    sub_1E3C6A554(14);
    OUTLINED_FUNCTION_22_66();
    v241 = v65;
    *&v240 = ceil(v169);
    OUTLINED_FUNCTION_7_145();
    OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_90();
    sub_1E32A87C0(v179, v180, v181, v182);

    v46 = v238;
  }

  v183 = sub_1E4204AD4();
  if (v183 != 2)
  {
    v184 = v183;
    sub_1E3C6A554(15);
    OUTLINED_FUNCTION_22_66();
    v241 = v103;
    LOBYTE(v240) = v184 & 1;
    OUTLINED_FUNCTION_7_145();
    OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_90();
    sub_1E32A87C0(v185, v186, v187, v188);

    v46 = v238;
  }

  v189 = sub_1E4204B24();
  v190 = MEMORY[0x1E69E7360];
  if ((v191 & 1) == 0)
  {
    v192 = v189;
    sub_1E3C6A554(16);
    OUTLINED_FUNCTION_22_66();
    v241 = v190;
    *&v240 = v192;
    OUTLINED_FUNCTION_7_145();
    OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_90();
    sub_1E32A87C0(v193, v194, v195, v196);

    v46 = v238;
  }

  v197 = sub_1E4204B64();
  if ((v198 & 1) == 0)
  {
    v199 = v197;
    sub_1E3C6A554(17);
    OUTLINED_FUNCTION_22_66();
    v241 = v190;
    *&v240 = v199;
    OUTLINED_FUNCTION_7_145();
    OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_90();
    sub_1E32A87C0(v200, v201, v202, v203);

    v46 = v238;
  }

  sub_1E4204A84();
  if (v204)
  {
    OUTLINED_FUNCTION_49_4();
    sub_1E3C6A554(18);
    OUTLINED_FUNCTION_11_24();
    v241 = v175;
    *&v240 = a1;
    *(&v240 + 1) = v9;
    OUTLINED_FUNCTION_7_145();
    v205 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v205, v206, v207, v208);

    v46 = v238;
  }

  sub_1E4204B54();
  if (v209)
  {
    OUTLINED_FUNCTION_49_4();
    sub_1E3C6A554(19);
    OUTLINED_FUNCTION_11_24();
    v241 = v175;
    *&v240 = a1;
    *(&v240 + 1) = v9;
    OUTLINED_FUNCTION_7_145();
    v210 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v210, v211, v212, v213);

    v46 = v238;
  }

  sub_1E4204BA4();
  if (v214)
  {
    OUTLINED_FUNCTION_49_4();
    sub_1E3C6A554(20);
    OUTLINED_FUNCTION_11_24();
    v241 = v175;
    *&v240 = a1;
    *(&v240 + 1) = v9;
    OUTLINED_FUNCTION_7_145();
    v215 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v215, v216, v217, v218);

    v46 = v238;
  }

  sub_1E4204AA4();
  if (v219)
  {
    OUTLINED_FUNCTION_49_4();
    sub_1E3C6A554(21);
    OUTLINED_FUNCTION_11_24();
    v241 = v175;
    *&v240 = a1;
    *(&v240 + 1) = v9;
    OUTLINED_FUNCTION_7_145();
    v220 = OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_19_85(v220, v221, v222, v223);

    v46 = v238;
  }

  v224 = sub_1E4204A94();
  if (v224 != 2)
  {
    v225 = v224;
    sub_1E3C6A554(2);
    OUTLINED_FUNCTION_22_66();
    v241 = v103;
    LOBYTE(v240) = v225 & 1;
    OUTLINED_FUNCTION_7_145();
    OUTLINED_FUNCTION_1_182();
    OUTLINED_FUNCTION_90();
    sub_1E32A87C0(v226, v227, v228, v229);

    return v238;
  }

  return v46;
}

uint64_t sub_1E3C66978(uint64_t a1, __n128 a2)
{
  v3 = sub_1E4204BE4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1E3C66A98(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35D10, &qword_1E42C6478);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E4297BE0;
  (*(v4 + 32))(v9 + v8, v7, v3);
  return v9;
}

uint64_t sub_1E3C66A98(uint64_t a1)
{
  v135 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v134 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v133 = v5 - v4;
  v6 = sub_1E4204534();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = *MEMORY[0x1E69AAFB8];
  v14 = *(v8 + 104);
  v15 = OUTLINED_FUNCTION_9_106();
  v14(v15);
  v138 = &unk_1F5D7A428;
  v139 = &off_1F5D7A268;
  LOBYTE(v137) = 4;
  sub_1E3F9F164(&v137, a1, MEMORY[0x1E69E7CA0] + 8);
  v16 = MEMORY[0x1E69AAFC0];
  sub_1E3C677F0(&v136, MEMORY[0x1E69AAFC0]);
  sub_1E325F748(&v136, &unk_1ECF296E0, &unk_1E4298030);
  v17 = *(v8 + 8);
  v18 = OUTLINED_FUNCTION_210();
  v17(v18);
  __swift_destroy_boxed_opaque_existential_1(&v137);
  v19 = OUTLINED_FUNCTION_9_106();
  v14(v19);
  sub_1E3C6A554(5);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v20, v21, a1, v22);

  sub_1E3C677F0(&v137, v16);
  sub_1E325F748(&v137, &unk_1ECF296E0, &unk_1E4298030);
  v23 = OUTLINED_FUNCTION_210();
  v17(v23);
  v24 = OUTLINED_FUNCTION_9_106();
  v14(v24);
  sub_1E3C6A554(6);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v25, v26, a1, v27);

  sub_1E3C677F0(&v137, v16);
  sub_1E325F748(&v137, &unk_1ECF296E0, &unk_1E4298030);
  v28 = OUTLINED_FUNCTION_210();
  v17(v28);
  v29 = OUTLINED_FUNCTION_9_106();
  v14(v29);
  sub_1E3C6A554(7);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v30, v31, a1, v32);

  OUTLINED_FUNCTION_24_63();
  v34 = OUTLINED_FUNCTION_18_75(v33, &v146 + 4);
  sub_1E325F748(v34, &unk_1ECF296E0, &unk_1E4298030);
  v35 = OUTLINED_FUNCTION_210();
  v17(v35);
  v36 = OUTLINED_FUNCTION_9_106();
  v14(v36);
  sub_1E3C6A554(9);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v37, v38, a1, v39);

  sub_1E3C677F0(&v137, v16);
  v41 = OUTLINED_FUNCTION_18_75(v40, &v145 + 4);
  sub_1E325F748(v41, &unk_1ECF296E0, &unk_1E4298030);
  v42 = OUTLINED_FUNCTION_210();
  v17(v42);
  v43 = OUTLINED_FUNCTION_9_106();
  v14(v43);
  sub_1E3C6A554(10);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v44, v45, a1, v46);

  sub_1E3C677F0(&v137, v16);
  v48 = OUTLINED_FUNCTION_18_75(v47, &v144 + 4);
  sub_1E325F748(v48, &unk_1ECF296E0, &unk_1E4298030);
  v49 = OUTLINED_FUNCTION_210();
  v17(v49);
  v50 = OUTLINED_FUNCTION_9_106();
  v14(v50);
  sub_1E3C6A554(11);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v51, v52, a1, v53);

  sub_1E3C677F0(&v137, v16);
  v55 = OUTLINED_FUNCTION_18_75(v54, &v143 + 4);
  sub_1E325F748(v55, &unk_1ECF296E0, &unk_1E4298030);
  v56 = OUTLINED_FUNCTION_210();
  v17(v56);
  v57 = OUTLINED_FUNCTION_9_106();
  v14(v57);
  sub_1E3C6A554(12);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v58, v59, a1, v60);

  OUTLINED_FUNCTION_24_63();
  v62 = OUTLINED_FUNCTION_18_75(v61, &v142 + 4);
  sub_1E325F748(v62, &unk_1ECF296E0, &unk_1E4298030);
  v63 = OUTLINED_FUNCTION_210();
  v17(v63);
  v64 = OUTLINED_FUNCTION_9_106();
  v14(v64);
  sub_1E3C6A554(13);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v65, v66, a1, v67);

  OUTLINED_FUNCTION_24_63();
  v69 = OUTLINED_FUNCTION_18_75(v68, &v141 + 4);
  sub_1E325F748(v69, &unk_1ECF296E0, &unk_1E4298030);
  v70 = OUTLINED_FUNCTION_210();
  v17(v70);
  (v14)(v12, v13, v6);
  sub_1E3C6A554(14);
  OUTLINED_FUNCTION_15_98();
  sub_1E3277E60(v71, v72, a1, v73);

  OUTLINED_FUNCTION_24_63();
  v75 = OUTLINED_FUNCTION_18_75(v74, v140);
  sub_1E325F748(v75, &unk_1ECF296E0, &unk_1E4298030);
  (v17)(v12, v6);
  sub_1E3C6A554(0);
  sub_1E3277E60(v76, v77, a1, &v137);

  if (v138)
  {
    swift_dynamicCast();
    OUTLINED_FUNCTION_13_109();
  }

  else
  {
    sub_1E325F748(&v137, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E3C6A554(1);
  sub_1E3277E60(v78, v79, a1, &v137);

  if (v138)
  {
    OUTLINED_FUNCTION_10_101(v80, v81, v82, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_13_109();
  }

  else
  {
    sub_1E325F748(&v137, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E3C6A554(3);
  OUTLINED_FUNCTION_14_110(v83, v84);

  if (v138)
  {
    OUTLINED_FUNCTION_10_101(v85, v86, v87, MEMORY[0x1E69E6370]);
  }

  else
  {
    sub_1E325F748(&v137, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E3C6A554(15);
  OUTLINED_FUNCTION_14_110(v88, v89);

  if (v138)
  {
    OUTLINED_FUNCTION_10_101(v90, v91, v92, MEMORY[0x1E69E6370]);
  }

  else
  {
    sub_1E325F748(&v137, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E3C6A554(16);
  OUTLINED_FUNCTION_14_110(v93, v94);

  if (v138)
  {
    OUTLINED_FUNCTION_10_101(v95, v96, v97, MEMORY[0x1E69E7360]);
  }

  else
  {
    sub_1E325F748(&v137, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E3C6A554(17);
  OUTLINED_FUNCTION_14_110(v98, v99);

  if (v138)
  {
    OUTLINED_FUNCTION_10_101(v100, v101, v102, MEMORY[0x1E69E7360]);
  }

  else
  {
    sub_1E325F748(&v137, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E3C6A554(18);
  OUTLINED_FUNCTION_14_110(v103, v104);

  if (v138)
  {
    OUTLINED_FUNCTION_10_101(v105, v106, v107, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_13_109();
  }

  else
  {
    sub_1E325F748(&v137, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E3C6A554(19);
  OUTLINED_FUNCTION_14_110(v108, v109);

  if (v138)
  {
    OUTLINED_FUNCTION_10_101(v110, v111, v112, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_13_109();
  }

  else
  {
    sub_1E325F748(&v137, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E3C6A554(20);
  OUTLINED_FUNCTION_14_110(v113, v114);

  if (v138)
  {
    OUTLINED_FUNCTION_10_101(v115, v116, v117, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_13_109();
  }

  else
  {
    sub_1E325F748(&v137, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E3C6A554(2);
  OUTLINED_FUNCTION_14_110(v118, v119);

  if (v138)
  {
    OUTLINED_FUNCTION_10_101(v120, v121, v122, MEMORY[0x1E69E6370]);
  }

  else
  {
    sub_1E325F748(&v137, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E3C6A554(21);
  OUTLINED_FUNCTION_14_110(v123, v124);

  if (v138)
  {
    OUTLINED_FUNCTION_10_101(v125, v126, v127, MEMORY[0x1E69E6158]);
  }

  else
  {
    sub_1E325F748(&v137, &unk_1ECF296E0, &unk_1E4298030);
  }

  (v14)(v12, v13, v6);
  sub_1E3C6A554(8);
  sub_1E3277E60(v128, v129, a1, &v137);

  sub_1E3C677F0(&v137, MEMORY[0x1E69AAFC0]);
  v131 = v130;
  sub_1E325F748(&v137, &unk_1ECF296E0, &unk_1E4298030);
  (v17)(v12, v6);
  if (v131)
  {
    sub_1E41FE5C4();
    sub_1E41FE574();
    (*(v134 + 8))(v133, v135);
  }

  return sub_1E4204B74();
}

uint64_t sub_1E3C677F0(uint64_t a1, double (*a2)())
{
  sub_1E3294F34(a1, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return a2();
    }
  }

  else
  {
    sub_1E325F748(v4, &unk_1ECF296E0, &unk_1E4298030);
  }

  return 0;
}

uint64_t sub_1E3C678AC()
{
  v0 = swift_allocObject();
  sub_1E3C678E4();
  return v0;
}

uint64_t sub_1E3C678E4()
{
  v1 = v0;
  v2 = sub_1E42045D4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_5();
  v3 = sub_1E41FE624();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v35 - v11 + 16;
  type metadata accessor for PagePerformanceEventStorage();
  v13 = sub_1E3C6B0EC();
  *(v0 + 24) = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = v13;
  *(v0 + 48) = 0;
  type metadata accessor for MetricsBaseTime();
  *(v0 + 40) = sub_1E3C6AD98();
  v14 = sub_1E4205F14();
  v16 = v15;
  v17 = sub_1E4205F14();
  v35[3] = MEMORY[0x1E69E6158];
  v35[0] = v17;
  v35[1] = v18;
  swift_beginAccess();
  sub_1E3946774(v35, v14, v16);
  swift_endAccess();
  v19 = [objc_opt_self() sharedInstance];
  v20 = [v19 perfEventPublishingEnabled];

  v21 = 0;
  if (v20)
  {
    v22 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v22);
    sub_1E4206434();
    v23 = sub_1E4206424();
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    *(v24 + 16) = v23;
    *(v24 + 24) = v25;
    sub_1E376FE58(0, 0, v12, &unk_1E42C64E0, v24);

    sub_1E41FE614();
    sub_1E41FE5E4();
    (*(v5 + 8))(v9, v3);
    sub_1E42044F4();
    OUTLINED_FUNCTION_22_66();
    sub_1E4205F14();
    v26 = MetricsJetEngine.shared.unsafeMutableAddressor();
    v27 = *((*MEMORY[0x1E69E7D40] & **v26) + 0x68);
    v28 = *v26;
    v27();

    sub_1E4204A74();
    swift_allocObject();
    v21 = sub_1E4204A64();
  }

  *(v1 + 56) = v21;
  type metadata accessor for ImagePerformanceRecorder();

  v30 = sub_1E3C6C478(v29);
  *(v1 + 32) = v30;
  v31 = *(*v30 + 232);

  v31(v32, &off_1F5D79C20);

  return v1;
}

uint64_t sub_1E3C67CB4()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  *(v0 + 16) = sub_1E4206424();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3C67D44, v2, v1);
}

uint64_t sub_1E3C67D44()
{
  OUTLINED_FUNCTION_24();

  sub_1E41FFCC4();
  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3C67DA0()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E37E1058;

  return sub_1E3C67CB4();
}

void sub_1E3C67E28(char a1, uint64_t a2, char a3)
{
  v7 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v69 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E4204A14();
  OUTLINED_FUNCTION_0_10();
  v64 = v14;
  v65 = v13;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v63 = v16 - v15;
  v17 = sub_1E4204624();
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_5();
  sub_1E4204514();
  OUTLINED_FUNCTION_0_10();
  v67 = v19;
  v68 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v66 = v21 - v20;
  v22 = sub_1E4204A24();
  OUTLINED_FUNCTION_0_10();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = (v27 - v26);
  if (*(v3 + 48))
  {
    return;
  }

  v70 = v3;
  mach_absolute_time();
  OUTLINED_FUNCTION_8();
  v30 = (*(v29 + 112))();
  if (v31)
  {
    return;
  }

  if ((a3 & 1) == 0)
  {
    v32 = *&a2 * 1000.0;
    if (COERCE__INT64(fabs(*&a2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v32 > -1.0)
    {
      if (v32 < 1.84467441e19)
      {
        v33 = __CFADD__(v30, v32);
        v30 += v32;
        if (!v33)
        {
          goto LABEL_8;
        }

LABEL_37:
        __break(1u);
        return;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_8:
  v34 = v30;
  LOBYTE(v71[0]) = a1;
  sub_1E4205F84();

  switch(a1)
  {
    case 1:

      sub_1E3C6C2D0();
      OUTLINED_FUNCTION_8();
      (*(v51 + 120))(v71);

      v52 = v72;
      sub_1E325F748(v71, &unk_1ECF296E0, &unk_1E4298030);
      if (v52 && (sub_1E3C685D0(1, v34, 0) & 1) != 0)
      {
        OUTLINED_FUNCTION_5_0(v3 + 24, v71);
        v53 = *(v3 + 24);
        v54 = objc_opt_self();

        v55 = [v54 sharedInstance];
        v56 = [v55 getBasePerfData_];

        v57 = sub_1E4205C64();
        swift_isUniquelyReferenced_nonNull_native();
        v73 = v53;
        OUTLINED_FUNCTION_0_165();
        sub_1E3C69BE4(v57, v58, 0, v59, &v73);
        sub_1E4204614();
        sub_1E37E5C70(MEMORY[0x1E69E7CC0]);
        sub_1E4204504();
        if (*(v70 + 56))
        {
          (*(v67 + 16))(v63, v66, v68);
          (*(v64 + 104))(v63, *MEMORY[0x1E69AB440], v65);
          sub_1E4204A44();
          (*(v64 + 8))(v63, v65);
        }

        byte_1EE259EF8 = 0;
        (*(v67 + 8))(v66, v68);
      }

      return;
    case 2:
    case 3:
    case 6:
    case 10:
    case 11:
      OUTLINED_FUNCTION_13_110();
      goto LABEL_31;
    case 4:
      v42 = sub_1E4206BB4();
      v43 = VUISignpostLogObject(v42);
      sub_1E41FFBE4();
      sub_1E41FFBA4();

      (*(v69 + 8))(v12, v7);
      OUTLINED_FUNCTION_8();
      (*(v44 + 208))(0, 0, 1);
      OUTLINED_FUNCTION_13_110();
      sub_1E3C685D0(v45, v46, v47);
      if (*(v3 + 56))
      {
        sub_1E4204A34();
      }

      goto LABEL_24;
    case 5:
    case 9:

      sub_1E3C6C2D0();
      OUTLINED_FUNCTION_8();
      (*(v35 + 120))(v71);

      v36 = v72;
      sub_1E325F748(v71, &unk_1ECF296E0, &unk_1E4298030);
      if (!v36)
      {
        OUTLINED_FUNCTION_13_110();
        sub_1E3C685D0(v37, v38, v39);
        if (*(v3 + 56))
        {
          sub_1E4204A74();
          sub_1E4204974();
        }

        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_8();
        (*(v40 + 264))(v41 & 1);
      }

      if (sub_1E3C687C4())
      {
        goto LABEL_18;
      }

      return;
    case 7:
      v60 = 3;
      v61 = v34;
      v62 = 0;
LABEL_31:
      sub_1E3C685D0(v60, v61, v62);
      return;
    case 8:
      OUTLINED_FUNCTION_13_110();
      sub_1E3C685D0(v48, v49, v50);
      if (sub_1E3C687C4())
      {
LABEL_18:
        sub_1E3C68B54();
      }

      break;
    default:
      if (sub_1E3C685D0(0, v34, 0))
      {
        if ((byte_1EE259EF8 & 1) == 0)
        {
          sub_1E42045E4();
        }

        if (*(v3 + 56))
        {
          *v28 = 1;
          (*(v24 + 104))(v28, *MEMORY[0x1E69AB450], v22);
          sub_1E4204A54();
          (*(v24 + 8))(v28, v22);
        }

LABEL_24:
        sub_1E3C68750();
      }

      break;
  }
}

uint64_t sub_1E3C685D0(uint64_t a1, unint64_t a2, char a3)
{
  v3 = a2;
  if (a3 == 3)
  {
    goto LABEL_9;
  }

  sub_1E3C6C2D0();
  OUTLINED_FUNCTION_8();
  (*(v5 + 120))(v12);

  if (!v13)
  {
    sub_1E325F748(v12, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_9;
  }

  if (!swift_dynamicCast())
  {
LABEL_9:
    v6 = MEMORY[0x1E69E63B0];

    sub_1E3C6C2D0();
    v13 = v6;
    *v12 = v3;
    OUTLINED_FUNCTION_8();
    (*(v7 + 128))(v12, v8, v9);

    return 1;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      if (v11 <= v3)
      {
        return 0;
      }

      goto LABEL_9;
    }

    if (v11 < v3)
    {
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t sub_1E3C68750()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 256))();
  OUTLINED_FUNCTION_8();
  return (*(v1 + 272))(5.0);
}

uint64_t sub_1E3C687C4()
{
  v1 = v0;

  sub_1E3C6C2D0();
  OUTLINED_FUNCTION_8();
  (*(v2 + 120))(&v25);

  v3 = v26;
  sub_1E325F748(&v25, &unk_1ECF296E0, &unk_1E4298030);
  if (!v3)
  {
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_14_111();
  sub_1E3C6C2D0();
  OUTLINED_FUNCTION_8();
  (*(v4 + 120))(&v25);

  v5 = v26;
  sub_1E325F748(&v25, &unk_1ECF296E0, &unk_1E4298030);
  OUTLINED_FUNCTION_14_111();
  sub_1E3C6C2D0();
  v7 = v6;
  OUTLINED_FUNCTION_8();
  (*(v8 + 120))(&v25);

  v9 = v26;
  sub_1E325F748(&v25, &unk_1ECF296E0, &unk_1E4298030);
  v10 = 0;
  if (v5)
  {
    if (v9)
    {
      v11 = sub_1E4205F14();
      v13 = v12;
      OUTLINED_FUNCTION_5_0(v1 + 24, v24);
      v14 = *(v1 + 24);

      sub_1E3277E60(v11, v13, v14, &v25);

      v15 = v26;
      sub_1E325F748(&v25, &unk_1ECF296E0, &unk_1E4298030);
      sub_1E4205F14();
      OUTLINED_FUNCTION_22_66();
      v16 = *(v1 + 24);

      sub_1E3277E60(v14, v7, v16, &v25);

      v17 = v26;
      sub_1E325F748(&v25, &unk_1ECF296E0, &unk_1E4298030);
      v10 = 0;
      if (v15)
      {
        if (v17)
        {
          v18 = sub_1E3C695D0();
          if (v18 != 13 && !sub_1E3C6A9C4(v18))
          {
            v10 = 1;
            return v10 & 1;
          }

          OUTLINED_FUNCTION_14_111();
          sub_1E3C6C2D0();
          OUTLINED_FUNCTION_8();
          (*(v19 + 120))(&v25);

          v20 = v26;
          sub_1E325F748(&v25, &unk_1ECF296E0, &unk_1E4298030);
          OUTLINED_FUNCTION_14_111();
          sub_1E3C6C2D0();
          OUTLINED_FUNCTION_8();
          (*(v21 + 120))(&v25);

          if (v26)
          {
            sub_1E325F748(&v25, &unk_1ECF296E0, &unk_1E4298030);
            if (v20)
            {
              OUTLINED_FUNCTION_8();
              v10 = (*(v22 + 288))();
              return v10 & 1;
            }
          }

          else
          {
            sub_1E325F748(&v25, &unk_1ECF296E0, &unk_1E4298030);
          }

LABEL_12:
          v10 = 0;
        }
      }
    }
  }

  return v10 & 1;
}

void sub_1E3C68B54()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    v1 = v0;
    sub_1E3C68EF0(0xD000000000000022, 0x80000001E4279BB0);
    v2 = [objc_opt_self() sharedInstance];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 pagePerformanceEnabled];

      if (v4)
      {
        v5 = [objc_opt_self() sharedInstance];
        OUTLINED_FUNCTION_8();
        v7 = *(v6 + 144);

        v9 = v7(v8);

        OUTLINED_FUNCTION_5_0(v1 + 24, v16);
        v10 = *(v1 + 24);

        swift_isUniquelyReferenced_nonNull_native();
        v15 = v9;
        OUTLINED_FUNCTION_0_165();
        sub_1E3C69BE4(v10, v11, 0, v12, &v15);
        sub_1E3744600(v15);

        v13 = sub_1E4205C44();

        [v5 recordPerfEvent_];
      }

      OUTLINED_FUNCTION_8();
      (*(v14 + 272))(2.5);
      *(v1 + 48) = 1;
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1E3C68D28(uint64_t a1)
{
  v3 = sub_1E4204C44();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  if (a1)
  {
    OUTLINED_FUNCTION_8();
    v11 = *(v10 + 152);

    v11(a1);

    type metadata accessor for JetNetworkPerfMetricsConverter();
    sub_1E3C66978(a1, v12);
    if (*(v1 + 56))
    {
      (*(v5 + 104))(v9, *MEMORY[0x1E69AB4E8], v3);
      sub_1E4204A04();

      return (*(v5 + 8))(v9, v3);
    }

    else
    {
    }
  }

  else
  {

    return sub_1E3C68EF0(0xD00000000000002DLL, 0x80000001E4279AC0);
  }
}

uint64_t sub_1E3C68EF0(uint64_t a1, unint64_t a2)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = sub_1E4205F14();
  v14 = v13;
  OUTLINED_FUNCTION_5_0(v2 + 24, v32);
  v15 = *(v2 + 24);

  sub_1E3277E60(v12, v14, v15, &v33);

  if (v34)
  {
    if (swift_dynamicCast())
    {
      v17 = v30;
      v16 = v31;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E325F748(&v33, &unk_1ECF296E0, &unk_1E4298030);
  }

  v16 = 0xE700000000000000;
  v17 = 0x6E776F6E6B6E55;
LABEL_6:
  if (a2)
  {
    v18 = a2;
  }

  else
  {
    v18 = 0xE300000000000000;
  }

  v19 = sub_1E324FBDC();
  (*(v7 + 16))(v11, v19, v5);

  v20 = sub_1E41FFC94();
  v21 = v5;
  v22 = sub_1E42067D4();

  if (os_log_type_enabled(v20, v22))
  {
    v29 = v21;
    if (a2)
    {
      v23 = a1;
    }

    else
    {
      v23 = 7104878;
    }

    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v33 = v25;
    *v24 = 136315394;
    v26 = sub_1E3270FC8(v17, v16, &v33);

    *(v24 + 4) = v26;
    *(v24 + 12) = 2080;
    v27 = sub_1E3270FC8(v23, v18, &v33);

    *(v24 + 14) = v27;
    _os_log_impl(&dword_1E323F000, v20, v22, "PagePerformanceReporter[%s] - %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E69143B0](v25, -1, -1);
    MEMORY[0x1E69143B0](v24, -1, -1);

    return (*(v7 + 8))(v11, v29);
  }

  else
  {

    return (*(v7 + 8))(v11, v21);
  }
}

uint64_t *sub_1E3C69200(uint64_t *result)
{
  v2 = v1;
  v3 = result[1];
  v4 = result[2];
  v5 = result[3];
  v167 = result[4];
  v168 = result[6];
  v6 = result[7];
  v169 = result[9];
  v170 = result[5];
  v152 = result[10];
  v7 = result[11];
  v159 = result[12];
  v166 = result[8];
  v8 = result[13];
  v9 = MEMORY[0x1E69E6158];
  if (v3)
  {
    if (v3 == 1)
    {
      return result;
    }

    v10 = MEMORY[0x1E69E6158];
    v11 = *result;
    v12 = sub_1E4205F14();
    v145 = v6;
    v14 = v13;
    v178 = v10;
    LOBYTE(v177) = v11;
    *(&v177 + 1) = v3;
    v9 = v10;
    OUTLINED_FUNCTION_2_150(v12, v13, v15, v16, v17, v18, v19, v20, v145, v152, v159);

    v29 = OUTLINED_FUNCTION_6_127(v21, v22, v23, v24, v25, v26, v27, v28, v146, v153, v160, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177);
    v30 = v14;
    v6 = v144;
    sub_1E3946774(v29, v12, v30);
    swift_endAccess();
  }

  if (v5)
  {
    v31 = sub_1E4205F14();
    v32 = v6;
    v34 = v33;
    v178 = v9;
    *(&v177 + 1) = v5;
    OUTLINED_FUNCTION_2_150(v31, v33, v35, v36, v37, v38, v39, v40, v144, v152, v159);

    v49 = OUTLINED_FUNCTION_6_127(v41, v42, v43, v44, v45, v46, v47, v48, v147, v154, v161, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v4);
    v50 = v34;
    v6 = v32;
    sub_1E3946774(v49, v31, v50);
    swift_endAccess();
  }

  if (v7)
  {
    v51 = sub_1E4205F14();
    v53 = v52;
    v178 = v9;
    LOBYTE(v177) = v152;
    *(&v177 + 1) = v7;
    OUTLINED_FUNCTION_2_150(v51, v52, v54, v55, v56, v57, v58, v59, v144, v152, v159);

    v68 = OUTLINED_FUNCTION_6_127(v60, v61, v62, v63, v64, v65, v66, v67, v148, v155, v162, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177);
    sub_1E3946774(v68, v51, v53);
    swift_endAccess();
  }

  if (v8)
  {
    v69 = sub_1E4205F14();
    v71 = v70;
    v178 = v9;
    LOBYTE(v177) = v159;
    *(&v177 + 1) = v8;
    OUTLINED_FUNCTION_2_150(v69, v70, v72, v73, v74, v75, v76, v77, v144, v152, v159);

    v86 = OUTLINED_FUNCTION_6_127(v78, v79, v80, v81, v82, v83, v84, v85, v149, v156, v163, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177);
    sub_1E3946774(v86, v69, v71);
    swift_endAccess();
  }

  if (v169)
  {

    v87 = sub_1E3C6A90C(1);
    v89 = v88;
    v178 = v9;
    *(&v177 + 1) = v169;
    v96 = OUTLINED_FUNCTION_2_150(v87, v88, v90, v91, v92, v93, v94, v95, v144, v152, v159);
    v104 = OUTLINED_FUNCTION_6_127(v96, v97, v98, v99, v100, v101, v102, v103, v150, v157, v164, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v166);
    sub_1E3946774(v104, v87, v89);
    swift_endAccess();
  }

  if (v170)
  {

    v105 = sub_1E3C6A90C(0);
    v107 = v106;
    v178 = v9;
    *(&v177 + 1) = v170;
    v114 = OUTLINED_FUNCTION_2_150(v105, v106, v108, v109, v110, v111, v112, v113, v144, v152, v159);
    v122 = OUTLINED_FUNCTION_6_127(v114, v115, v116, v117, v118, v119, v120, v121, v151, v158, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v167);
    sub_1E3946774(v122, v105, v107);
    swift_endAccess();
  }

  v123 = sub_1E3C6A90C(1);
  v125 = v124;
  OUTLINED_FUNCTION_5_0(v2 + 24, &v174);
  v126 = *(v2 + 24);

  sub_1E3277E60(v123, v125, v126, &v177);

  if (v178)
  {
    v127 = swift_dynamicCast();
    if (v127)
    {
      v128 = v171;
    }

    else
    {
      v128 = 0;
    }

    if (v127)
    {
      v129 = v172;
    }

    else
    {
      v129 = 0;
    }

    if (v6)
    {
      goto LABEL_22;
    }
  }

  else
  {
    sub_1E325F748(&v177, &unk_1ECF296E0, &unk_1E4298030);
    v128 = 0;
    v129 = 0;
    if (v6)
    {
LABEL_22:

      sub_1E4205F14();
      OUTLINED_FUNCTION_22_66();
      v178 = v9;
      *&v177 = v168;
      *(&v177 + 1) = v6;
LABEL_23:
      v130 = swift_beginAccess();
      v138 = OUTLINED_FUNCTION_6_127(v130, v131, v132, v133, v134, v135, v136, v137, v144, v152, v159, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177);
      sub_1E3946774(v138, v129, v128);
      return swift_endAccess();
    }
  }

  v139 = sub_1E3C695D0();
  if (v139 == 13)
  {
  }

  v140 = v9;
  v141 = sub_1E3C6A9D8(v128, v129, v139);
  v143 = v142;

  if (v143)
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_22_66();
    v178 = v140;
    *&v177 = v141;
    *(&v177 + 1) = v143;
    goto LABEL_23;
  }

  return result;
}

unint64_t sub_1E3C695D0()
{
  v1 = sub_1E4205F14();
  v3 = v2;
  OUTLINED_FUNCTION_5_0(v0 + 24, v6);
  v4 = *(v0 + 24);

  sub_1E3277E60(v1, v3, v4, &v7);

  if (v8)
  {
    if (swift_dynamicCast())
    {
      return sub_1E3C6AAE8();
    }
  }

  else
  {
    sub_1E325F748(&v7, &unk_1ECF296E0, &unk_1E4298030);
  }

  return 13;
}

uint64_t sub_1E3C696A8()
{

  return v0;
}

uint64_t sub_1E3C696E8()
{
  sub_1E3C696A8();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

uint64_t sub_1E3C69720()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 208);
  v2(7, 0, 1);

  return (v2)(8, 0, 1);
}

uint64_t sub_1E3C69824(unint64_t a1, char a2)
{
  v5 = sub_1E4204A24();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = (v10 - v9);
  result = sub_1E3C685D0(11, a1, 1);
  if (*(v2 + 56))
  {
    *v11 = a2 & 1;
    (*(v7 + 104))(v11, *MEMORY[0x1E69AB448], v5);
    sub_1E4204A54();
    return (*(v7 + 8))(v11, v5);
  }

  return result;
}

uint64_t sub_1E3C69928(unint64_t a1, char a2, void *a3)
{
  v7 = sub_1E4204A14();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  if (a3)
  {
    *v13 = a3;
    *(v13 + 8) = a2 & 1;
    v14 = MEMORY[0x1E69AB428];
  }

  else
  {
    *v13 = a2 & 1;
    v14 = MEMORY[0x1E69AB438];
  }

  (*(v9 + 104))(v13, *v14, v7);
  v15 = a3;
  sub_1E3C685D0(12, a1, 2);
  if (*(v3 + 56))
  {
    sub_1E4204A44();
  }

  return (*(v9 + 8))(v13, v7);
}

void sub_1E3C69A5C()
{
  if (sub_1E3C687C4())
  {

    sub_1E3C68B54();
  }
}

void *sub_1E3C69AA0(uint64_t a1)
{
  if (!sub_1E39BD118(0x6672655065676170, 0xEF7363697274654DLL, a1))
  {
    return 0;
  }

  v1 = sub_1E4205C44();
  v2 = sub_1E3FA1E90();

  return v2;
}

uint64_t sub_1E3C69B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_1E4207B44();
  sub_1E4206014();
  v5 = sub_1E4207BA4();

  return a3(a1, a2, v5);
}

void sub_1E3C69BE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1E394CDB0(a1, a2, a3, v31);
  v27 = v31[0];
  v28 = v31[1];
  v29 = v31[2];
  v30 = v32;

  while (1)
  {
    sub_1E394CDEC(&v25);
    v7 = *(&v25 + 1);
    if (!*(&v25 + 1))
    {
      sub_1E34AF4DC(v27);

      return;
    }

    v8 = v25;
    sub_1E329504C(&v26, v24);
    v10 = OUTLINED_FUNCTION_4_156();
    v11 = (v9 & 1) == 0;
    v12 = v28 + v11;
    if (__OFADD__(v28, v11))
    {
      break;
    }

    v13 = v9;
    if (*(&v28 + 1) >= v12)
    {
      if (a4)
      {
        if (v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
        sub_1E4207654();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1E394C160(v12, a4 & 1);
      v14 = OUTLINED_FUNCTION_4_156();
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

      v10 = v14;
      if (v13)
      {
LABEL_10:
        v16 = *a5;
        sub_1E328438C(*(*a5 + 56) + 32 * v10, v23);
        __swift_destroy_boxed_opaque_existential_1(v24);

        v17 = (*(v16 + 56) + 32 * v10);
        __swift_destroy_boxed_opaque_existential_1(v17);
        sub_1E329504C(v23, v17);
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    v19 = (v18[6] + 16 * v10);
    *v19 = v8;
    v19[1] = v7;
    sub_1E329504C(v24, (v18[7] + 32 * v10));
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_17;
    }

    v18[2] = v22;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_1E4207A74();
  __break(1u);
}

void sub_1E3C69E04(char a1)
{
  switch(a1)
  {
    case 1:
    case 10:
      OUTLINED_FUNCTION_23();
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 7:
    case 12:
      return;
    case 6:
      OUTLINED_FUNCTION_17_90(18);
      break;
    case 8:
    case 11:
      OUTLINED_FUNCTION_18_76(18);
      break;
    default:
      OUTLINED_FUNCTION_41_6(18);
      break;
  }
}

unint64_t sub_1E3C69F64()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3C69FB4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6F527361766E6163;
  }

  else
  {
    v3 = 0x656D614E65676170;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA0000000000746FLL;
  }

  if (a2)
  {
    v5 = 0x6F527361766E6163;
  }

  else
  {
    v5 = 0x656D614E65676170;
  }

  if (a2)
  {
    v6 = 0xEA0000000000746FLL;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3C6A058(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  if (v5 == a3(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_13_8();
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E3C6A0E4(char a1, char a2)
{
  sub_1E3C69E04(a1);
  v4 = v3;
  v6 = v5;
  sub_1E3C69E04(a2);
  if (v4 == v8 && v6 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E3C6A170(char a1)
{
  sub_1E4207B44();
  sub_1E3C69E04(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3C6A1D4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1E4207B44();
  v4 = a2(a1);
  OUTLINED_FUNCTION_18_0(v4, v5, v6);

  return sub_1E4207BA4();
}

uint64_t sub_1E3C6A240(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3C6A2B0(uint64_t a1, char a2)
{
  sub_1E3C69E04(a2);
  sub_1E4206014();
}

uint64_t sub_1E3C6A304(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_1E4206014();
}

uint64_t sub_1E3C6A364(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3C69E04(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3C6A3C4(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3C6A448(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1E4207B44();
  v5 = a3(a2);
  OUTLINED_FUNCTION_18_0(v5, v6, v7);

  return sub_1E4207BA4();
}

unint64_t sub_1E3C6A49C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3C69F64();
  *v1 = result;
  return result;
}

void sub_1E3C6A4C4()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E3C69E04(v1);
  *v0 = v2;
  v0[1] = v3;
}

unint64_t sub_1E3C6A508()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207A04();
  OUTLINED_FUNCTION_50();

  if (v0 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v0;
  }
}

void sub_1E3C6A554(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
      return;
    case 9:
    case 12:
    case 17:
    case 19:
      OUTLINED_FUNCTION_23();
      break;
    case 11:
    case 20:
      OUTLINED_FUNCTION_41_6(30);
      break;
    case 14:
      OUTLINED_FUNCTION_18_76(30);
      break;
    case 16:
      OUTLINED_FUNCTION_17_90(30);
      break;
    default:
      OUTLINED_FUNCTION_21_69();
      break;
  }
}

unint64_t sub_1E3C6A868(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3C6A508();
  *v1 = result;
  return result;
}

void sub_1E3C6A890()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E3C6A554(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1E3C6A8C0()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

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

uint64_t sub_1E3C6A90C(char a1)
{
  if (a1)
  {
    return 0x6F527361766E6163;
  }

  else
  {
    return 0x656D614E65676170;
  }
}

uint64_t sub_1E3C6A96C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3C6A8C0();
  *v1 = result;
  return result;
}

uint64_t sub_1E3C6A994()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3C6A90C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3C6A9D8(uint64_t a1, uint64_t a2, char a3)
{
  v3 = 0;
  switch(a3)
  {
    case 0:
      v3 = 0x776F6E6863746177;
      break;
    case 1:

      v3 = a1;
      break;
    case 8:
      if (a2)
      {
        v7 = sub_1E4205CB4();
        v3 = sub_1E37D26AC(a1, a2, v7);
      }

      else
      {
        v3 = a1;
      }

      break;
    case 9:
    case 10:
    case 11:
    case 12:
      v3 = 0x686372616573;
      break;
    default:
      return v3;
  }

  return v3;
}

unint64_t sub_1E3C6AAE8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3C6AB2C(char a1)
{
  result = 0x776F4E6863746157;
  switch(a1)
  {
    case 1:
      result = 0x6C656E6E616843;
      break;
    case 2:
      result = 0x7361766E6143;
      break;
    case 3:
      result = 0x776F68535654;
      break;
    case 4:
      result = 0x646F736970455654;
      break;
    case 5:
      result = 0x6569766F4DLL;
      break;
    case 6:
      result = 0x676E6974726F7053;
      break;
    case 7:
      result = 1836019538;
      break;
    case 8:
      result = 1953460050;
      break;
    case 9:
      result = 0x614C686372616553;
      break;
    case 10:
      result = 0x6948686372616553;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x6552686372616553;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1E3C6AD48(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3C6AAE8();
  *v1 = result;
  return result;
}

unint64_t sub_1E3C6AD70()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3C6AB2C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3C6AD98()
{
  v0 = swift_allocObject();
  sub_1E3C6ADD0();
  return v0;
}

uint64_t sub_1E3C6ADD0()
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = sub_1E41FFBF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = sub_1E4206BA4();
  v4 = VUISignpostLogObject(v3);
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_11_104();

  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_13_8();
  v5(v6);
  v12.tv_sec = 0;
  v12.tv_usec = 0;
  gettimeofday(&v12, 0);
  tv_usec = v12.tv_usec;
  *(v0 + 24) = v12.tv_sec;
  *(v0 + 32) = tv_usec;
  *(v0 + 16) = mach_absolute_time();
  type metadata accessor for MetricsBaseTime();
  *(v0 + 40) = sub_1E3C6AFA4(*(v0 + 24), *(v0 + 32));
  v8 = sub_1E4206B94();
  v9 = VUISignpostLogObject(v8);
  sub_1E41FFBE4();
  OUTLINED_FUNCTION_11_104();

  v10 = OUTLINED_FUNCTION_13_8();
  v5(v10);
  return v0;
}

unint64_t sub_1E3C6AFA4(unint64_t result, unsigned int a2)
{
  if (!is_mul_ok(result, 0xF4240uLL))
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a2 & 0x80000000) != 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = 1000000 * result;
  result = 1000000 * result + a2;
  if (__CFADD__(v2, a2))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

unint64_t sub_1E3C6AFD8(unint64_t a1)
{
  type metadata accessor for MetricsBaseTime();
  result = sub_1E3C6B038(*(v1 + 16), a1);
  if (!result)
  {
    return 0;
  }

  v4 = *(v1 + 40);
  v5 = __CFADD__(v4, result);
  v6 = v4 + result;
  if (!v5)
  {
    return v6 / 0x3E8;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E3C6B038(unint64_t a1, unint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  mach_timebase_info(v6);
  v4 = a2 - a1;
  if (a2 < a1)
  {
    return 0;
  }

  if (!is_mul_ok(v4, v6[0].numer))
  {
    __break(1u);
LABEL_8:
    __break(1u);
  }

  if (!v6[0].denom)
  {
    goto LABEL_8;
  }

  return v4 * v6[0].numer / v6[0].denom / 0x3E8;
}

uint64_t sub_1E3C6B0EC()
{
  OUTLINED_FUNCTION_15_1();
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1E4205CB4();
  return v0;
}

double sub_1E3C6B144@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  OUTLINED_FUNCTION_7_4(a1);
  v7 = *(v3 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_1E327D33C(a1, a2);
    if (v9)
    {
      sub_1E328438C(*(v7 + 56) + 32 * v8, a3);

      return result;
    }
  }

  result = 0.0;
  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

double sub_1E3C6B1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_weakInit();
  sub_1E37C5830(a1, v10, &unk_1ECF296E0, &unk_1E4298030);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v8 = v10[1];
  *(v7 + 40) = v10[0];
  *(v7 + 56) = v8;

  sub_1E3C6B718(sub_1E3C6B990, v7);

  sub_1E325F748(a1, &unk_1ECF296E0, &unk_1E4298030);

  return result;
}

void (*sub_1E3C6B2D0(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v7;
  v7[9] = a3;
  v7[10] = v3;
  v7[8] = a2;
  v8 = OUTLINED_FUNCTION_13_8();
  sub_1E3C6B144(v8, v9, v10);
  return sub_1E3C6B34C;
}

void sub_1E3C6B34C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 64);
  if (a2)
  {
    sub_1E37C5830(*a1, v2 + 32, &unk_1ECF296E0, &unk_1E4298030);

    sub_1E3C6B1D0(v2 + 32, v4, v3);
    sub_1E325F748(v2, &unk_1ECF296E0, &unk_1E4298030);
  }

  else
  {

    sub_1E3C6B1D0(v2, v4, v3);
  }

  free(v2);
}

double sub_1E3C6B40C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);

  return result;
}

double sub_1E3C6B434(uint64_t a1)
{
  swift_allocObject();
  swift_weakInit();

  v1 = OUTLINED_FUNCTION_13_8();
  sub_1E3C6B554(v1, v2);

  return result;
}

double sub_1E3C6B4AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();

    sub_1E3C6C1D4(v5, sub_1E394C454, 0, (v4 + 16));
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1E3C6B554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = objc_opt_self();

  v9 = [v8 currentThread];
  v10 = [v9 isMainThread];

  if (v10)
  {
    v11 = OUTLINED_FUNCTION_13_8();
    sub_1E3C6B4AC(v11, v12);
  }

  else
  {
    v13 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v13);
    sub_1E4206434();

    v14 = sub_1E4206424();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = sub_1E3C6C148;
    v15[5] = v7;
    sub_1E376FE58(0, 0, v6, &unk_1E42C6A58, v15);
  }
}

double sub_1E3C6B718(void (*a1)(void), uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = [objc_opt_self() currentThread];
  v8 = [v7 isMainThread];

  if (v8)
  {
    a1();
  }

  else
  {
    v10 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
    sub_1E4206434();
    OUTLINED_FUNCTION_50();

    v11 = sub_1E4206424();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = a1;
    v12[5] = a2;
    sub_1E376FE58(0, 0, v6, &unk_1E42C6A60, v12);
  }

  return result;
}

uint64_t sub_1E3C6B86C()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  sub_1E4206434();
  v0[4] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v4 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3C6B8FC, v4, v3);
}

uint64_t sub_1E3C6B8FC()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 16);

  v1(v2);
  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3C6B960()
{

  v0 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double sub_1E3C6B990()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E37C5830(v0 + 40, v4, &unk_1ECF296E0, &unk_1E4298030);
    swift_beginAccess();

    sub_1E3946774(v4, v1, v2);
    swift_endAccess();
  }

  return result;
}

unint64_t sub_1E3C6BA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35D18;
  if (!qword_1ECF35D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35D18);
  }

  return result;
}

unint64_t sub_1E3C6BAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35D20;
  if (!qword_1ECF35D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35D20);
  }

  return result;
}

unint64_t sub_1E3C6BAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35D28;
  if (!qword_1ECF35D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35D28);
  }

  return result;
}

unint64_t sub_1E3C6BB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35D30;
  if (!qword_1ECF35D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35D30);
  }

  return result;
}

unint64_t sub_1E3C6BBA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35D38;
  if (!qword_1ECF35D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35D38);
  }

  return result;
}

unint64_t sub_1E3C6BC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF35D40;
  if (!qword_1ECF35D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF35D40);
  }

  return result;
}

_BYTE *sub_1E3C6BC54(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 11);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3C6BD28(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 24);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 24);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 24);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E3C6BDAC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 23);
        }

        break;
    }
  }

  return result;
}