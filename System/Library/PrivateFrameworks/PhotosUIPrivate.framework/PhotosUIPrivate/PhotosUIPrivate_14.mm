void sub_1B3855B54(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1B3855BE0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR___PUStoryViewController_isExportPending) = 0;
  v3 = (v2 + OBJC_IVAR___PUStoryViewController_exportConfigurationCompletionBlock);
  v4 = *(v2 + OBJC_IVAR___PUStoryViewController_exportConfigurationCompletionBlock);
  if (v4)
  {
    *v3 = 0;
    v3[1] = 0;
    v5 = sub_1B3C9C5E8();
    v7 = v6;
    v8 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v9 = sub_1B3866F3C(v5, v7, 3072, 0);
    v4(0, v9);

    v10 = OUTLINED_FUNCTION_5_14();

    sub_1B36F9DA0(v10, v11);
  }
}

uint64_t sub_1B3855CE4()
{
  OUTLINED_FUNCTION_0_0();
  v1[6] = v2;
  v1[7] = v0;
  sub_1B3C9C888();
  v1[8] = sub_1B3C9C878();
  OUTLINED_FUNCTION_42();
  v4 = sub_1B3C9C848();
  v1[9] = v4;
  v1[10] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B3855D74, v4, v3);
}

uint64_t sub_1B3855D74()
{
  OUTLINED_FUNCTION_0_0();
  v1 = v0[6];
  if (v1)
  {
    v2 = sub_1B3710718(0, &unk_1EB84F790, 0x1E69DD250);
  }

  else
  {
    v2 = 0;
    v0[3] = 0;
    v0[4] = 0;
  }

  v0[2] = v1;
  v0[5] = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1B3855E44;

  return sub_1B385617C();
}

uint64_t sub_1B3855E44()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v2 + 96) = v6;

  sub_1B371B36C(v2 + 16, &qword_1EB850170, &qword_1B3CF6D20);
  v7 = *(v1 + 80);
  v8 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1B3855F78, v8, v7);
}

uint64_t sub_1B3855F78()
{
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 96);

  if ((v1 & 1) == 0)
  {
    v3 = *(v0 + 56);
    v4 = sub_1B3851C34(v2);
    v5 = [v4 mainModel];

    v6 = *&v3[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel];
    v7 = *&v3[OBJC_IVAR___PUStoryViewController_initialSongResource];
    type metadata accessor for StoryExportHelper();
    swift_allocObject();
    swift_unknownObjectRetain();
    v8 = v3;
    v9 = v6;
    *&v8[OBJC_IVAR___PUStoryViewController_exportHelper] = sub_1B37DCC88(v5, v8, v6, v7);

    v10 = *&v8[OBJC_IVAR___PUStoryViewController_exportActivityCount];
    result = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    sub_1B3852118(result);
    OUTLINED_FUNCTION_20();
    v12 = swift_allocObject();
    OUTLINED_FUNCTION_8_21(v12);

    v13 = OUTLINED_FUNCTION_2_13();
    sub_1B37DCCFC(v13, v14, v15);
  }

  OUTLINED_FUNCTION_1();

  return v16();
}

void sub_1B38560FC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(Strong + OBJC_IVAR___PUStoryViewController_exportHelper) = 0;

    v3 = *&v2[OBJC_IVAR___PUStoryViewController_exportActivityCount];
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1B3852118(v3 - 1);
    }
  }
}

uint64_t sub_1B385617C()
{
  OUTLINED_FUNCTION_9();
  v1[2] = v2;
  v1[3] = v0;
  v1[4] = sub_1B3C9C888();
  v1[5] = sub_1B3C9C878();
  v3 = swift_task_alloc();
  v1[6] = v3;
  *v3 = v1;
  v3[1] = sub_1B3856234;
  OUTLINED_FUNCTION_55_3();

  return sub_1B3856AB8();
}

uint64_t sub_1B3856234()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;
  *(v4 + 56) = v3;

  sub_1B3C9C848();
  v5 = OUTLINED_FUNCTION_65_2();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1B3856360()
{
  OUTLINED_FUNCTION_0_0();
  v1 = *(v0 + 56);

  if ((v1 & 1) == 0)
  {
    sub_1B38563D4(*(v0 + 16));
  }

  OUTLINED_FUNCTION_45_2();
  v4 = v3 & 1;

  return v2(v4);
}

void sub_1B38563D4(uint64_t a1)
{
  v3 = sub_1B3851C34(a1);
  v4 = [v3 mainModel];

  v5 = [v4 currentSongResource];
  if (v5)
  {
    v6 = [v5 px_storyResourceSongAsset];
    swift_unknownObjectRelease();
    if (v6)
    {
      if ([v6 catalog] == 2 && (v7 = objc_msgSend(*(v1 + OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel), sel_mainModel), v8 = objc_msgSend(v7, sel_timeline), v7, objc_msgSend(v8, sel_timeRange), swift_unknownObjectRelease(), PXAudioAssetExportableDurationWithDefaultEntryPoint(), v9 = sub_1B3C9CED8(), (v9 & 1) != 0))
      {
        *(v1 + OBJC_IVAR___PUStoryViewController_isExportPending) = 1;
        MEMORY[0x1EEE9AC00](v9);
        v10[2] = v1;
        v10[3] = a1;
        sub_1B3858544(a1, 1, sub_1B3869438, v10);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void sub_1B3856598(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1B3C9C5A8();
  v7 = PULocalizedString(v6);

  v8 = sub_1B3C9C5E8();
  v10 = v9;

  sub_1B3813F04(v8, v10, a1);
  v11 = sub_1B3C9C5A8();
  v12 = PULocalizedString(v11);

  v13 = sub_1B3C9C5E8();
  v15 = v14;

  sub_1B3813F10(v13, v15, a1);
  v17 = sub_1B3851C34(v16);
  v18 = [v17 mainModel];

  v19 = [v18 recipeManager];
  v20 = sub_1B3753964(&unk_1F2AB3AC0);
  if (*(v20 + 16) < 2uLL)
  {
  }

  else
  {
    v21 = sub_1B3C9C5A8();
    v22 = PULocalizedString(v21);

    if (!v22)
    {
      sub_1B3C9C5E8();
      v22 = sub_1B3C9C5A8();
    }

    sub_1B3869524(a3, v38, &qword_1EB850170);
    v23 = swift_allocObject();
    *(v23 + 16) = a2;
    *(v23 + 24) = v20;
    v24 = v38[1];
    *(v23 + 32) = v38[0];
    *(v23 + 48) = v24;
    v43 = sub_1B3869448;
    v44 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1B370C014;
    v42 = &block_descriptor_505;
    v25 = _Block_copy(&aBlock);
    v26 = a2;

    [a1 addActionWithTitle:v22 style:0 action:v25];
    _Block_release(v25);
  }

  sub_1B3710718(0, &qword_1EB84F200, 0x1E69C3B18);
  v27 = [swift_getObjCClassFromMetadata() sharedInstance];
  if ([v27 showMusicAndColorGradeEditor])
  {
    v28 = sub_1B3C9C5A8();
    v29 = PULocalizedString(v28);

    if (!v29)
    {
      sub_1B3C9C5E8();
      v29 = sub_1B3C9C5A8();
    }

    v30 = swift_allocObject();
    *(v30 + 16) = a2;
    v43 = sub_1B3869440;
    v44 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1B370C014;
    v42 = &block_descriptor_499;
    v31 = _Block_copy(&aBlock);
    v32 = a2;

    [a1 addActionWithTitle:v29 style:0 action:v31];
    _Block_release(v31);
  }

  v33 = sub_1B3C9C5A8();
  v34 = PXLocalizedString();

  if (!v34)
  {
    sub_1B3C9C5E8();
    v34 = sub_1B3C9C5A8();
  }

  v35 = swift_allocObject();
  *(v35 + 16) = a2;
  v43 = sub_1B386A0BC;
  v44 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1B370C014;
  v42 = &block_descriptor_493;
  v36 = _Block_copy(&aBlock);
  v37 = a2;

  [a1 addActionWithTitle:v34 style:1 action:v36];
  _Block_release(v36);
}

uint64_t sub_1B3856AB8()
{
  OUTLINED_FUNCTION_0_0();
  v1[6] = v2;
  v1[7] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970, &unk_1B3CFB660);
  OUTLINED_FUNCTION_8_0(v3);
  v1[8] = swift_task_alloc();
  sub_1B3C9C888();
  v1[9] = sub_1B3C9C878();
  OUTLINED_FUNCTION_42();
  v5 = sub_1B3C9C848();
  v1[10] = v5;
  v1[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B3856B7C, v5, v4);
}

uint64_t sub_1B3856B7C()
{
  OUTLINED_FUNCTION_19_3();
  v2 = sub_1B3851C34(v1);
  v3 = [v2 mainModel];

  v4 = [v3 currentSongResource];
  v0[12] = v4;

  if (v4)
  {
    v5 = [v4 px_storyResourceSongAsset];
    v0[13] = v5;
    if (v5)
    {
      v6 = v5;
      if ([v5 catalog] == 2)
      {
        v7 = v0[7];
        v8 = OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel;
        v0[14] = OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel;
        v9 = [*(v7 + v8) mainConfiguration];
        v10 = [v9 photoLibrary];
        v0[15] = v10;

        if (v10)
        {
          sub_1B3710718(0, &qword_1EB857298, 0x1E69C36D0);
          v11 = [v6 identifier];
          sub_1B3C9C5E8();
          v13 = v12;

          v0[16] = v13;
          v14 = swift_task_alloc();
          v0[17] = v14;
          *v14 = v0;
          v14[1] = sub_1B3856DC0;
          v15 = OUTLINED_FUNCTION_87_0();

          return MEMORY[0x1EEE2D0F0](v15, v13, v10);
        }
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  OUTLINED_FUNCTION_45_2();

  return v16(0);
}

uint64_t sub_1B3856DC0()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  *v4 = *v1;
  v3[18] = v5;
  v3[19] = v0;

  if (v0)
  {
    v6 = v3[10];
    v7 = v3[11];
    v8 = sub_1B38574D8;
  }

  else
  {

    v6 = v3[10];
    v7 = v3[11];
    v8 = sub_1B3856ECC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1B3856ECC()
{
  v1 = *(v0 + 144);
  v2 = [*(*(v0 + 56) + *(v0 + 112)) mainModel];
  if (!v1)
  {
    goto LABEL_11;
  }

  if (![*(v0 + 144) firstObject])
  {

LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  objc_opt_self();
  OUTLINED_FUNCTION_96_0();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_11:

    goto LABEL_15;
  }

  v4 = v3;
  if (![v2 currentAssetCollection])
  {
LABEL_13:

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v6 = *(v0 + 112);
  v32 = v6;
  v7 = *(v0 + 56);
  v8 = [v2 photoKitAssetContainerWithAssetCollection_];
  v9 = [*(v7 + v6) mainConfiguration];
  v10 = [v9 musicCurationProvider];

  v33 = v8;
  [v10 updateAudioAsset:v4 forAssetContainer:v8];
  swift_unknownObjectRelease();
  v11 = [*(v7 + v32) mainModel];
  v12 = [v11 currentSongResource];

  *(v7 + OBJC_IVAR___PUStoryViewController_initialSongResource) = v12;
  swift_unknownObjectRelease();
  sub_1B3710718(0, &unk_1EB8572A0, 0x1E69C3340);
  if ((sub_1B3C9CA48() & 1) == 0)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v13 = [v4 introPreviewURL];
  if (v13)
  {
    v14 = v13;
    v15 = *(v0 + 120);
    v16 = *(v0 + 64);

    sub_1B3C98038();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v17 = sub_1B3C98068();
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
    sub_1B371B36C(v16, &qword_1EB853970, &unk_1B3CFB660);
    v18 = 0;
LABEL_20:

    OUTLINED_FUNCTION_45_2();

    return v27(v18);
  }

  v28 = *(v0 + 64);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v29 = sub_1B3C98068();
  OUTLINED_FUNCTION_7_3(v28, v30, v31, v29);
  sub_1B371B36C(v28, &qword_1EB853970, &unk_1B3CFB660);
LABEL_15:
  *(*(v0 + 56) + OBJC_IVAR___PUStoryViewController_isExportPending) = 1;
  if (![objc_opt_self() isAppleMusicSharingEnabled])
  {
    v21 = *(v0 + 120);
    v22 = *(v0 + 104);
    v24 = *(v0 + 48);
    v23 = *(v0 + 56);

    v25 = swift_task_alloc();
    *(v25 + 16) = v22;
    *(v25 + 24) = v23;
    OUTLINED_FUNCTION_38_7();
    v18 = 1;
    sub_1B3858544(v24, 1, v26, v25);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    goto LABEL_20;
  }

  *(v0 + 176) = 2;
  v19 = swift_task_alloc();
  *(v0 + 160) = v19;
  *v19 = v0;
  OUTLINED_FUNCTION_29_9(v19);

  return sub_1B386142C();
}

uint64_t sub_1B3857340()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_10();
  v5 = v4;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  v5[21] = v0;

  if (v0)
  {
    v9 = v5[10];
    v10 = v5[11];
    v11 = sub_1B385772C;
  }

  else
  {

    v9 = v5[10];
    v10 = v5[11];
    v11 = sub_1B3857450;
  }

  return MEMORY[0x1EEE6DFA0](v11, v9, v10);
}

uint64_t sub_1B3857450()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0 + 120);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_45_2();

  return v2(1);
}

uint64_t sub_1B38574D8()
{
  v22 = v0;

  v1 = sub_1B3C9CAC8();
  if (qword_1EB84FFB8 != -1)
  {
    OUTLINED_FUNCTION_3_39(&qword_1EB84FFB8);
  }

  v2 = qword_1EB878C60;
  v3 = os_log_type_enabled(qword_1EB878C60, v1);
  v4 = *(v0 + 152);
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_9_0();
    v6 = swift_slowAlloc();
    v21 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_1B3C9D748();
    v9 = sub_1B3749364(v7, v8, &v21);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1B36F3000, v2, v1, "Checking cleared for export state failed: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    OUTLINED_FUNCTION_1_31();
    MEMORY[0x1B8C6EC70](v10);
    OUTLINED_FUNCTION_1_31();
    MEMORY[0x1B8C6EC70](v11);
  }

  *(*(v0 + 56) + OBJC_IVAR___PUStoryViewController_isExportPending) = 1;
  if ([objc_opt_self() isAppleMusicSharingEnabled])
  {
    *(v0 + 176) = 2;
    v12 = swift_task_alloc();
    *(v0 + 160) = v12;
    *v12 = v0;
    OUTLINED_FUNCTION_29_9(v12);

    return sub_1B386142C();
  }

  else
  {
    v14 = *(v0 + 120);
    v15 = *(v0 + 104);
    v17 = *(v0 + 48);
    v16 = *(v0 + 56);

    v18 = swift_task_alloc();
    *(v18 + 16) = v15;
    *(v18 + 24) = v16;
    OUTLINED_FUNCTION_38_7();
    sub_1B3858544(v17, 1, v19, v18);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_45_2();

    return v20(1);
  }
}

uint64_t sub_1B385772C()
{

  v1 = sub_1B3C9CAC8();
  if (qword_1EB84FFB8 != -1)
  {
    OUTLINED_FUNCTION_3_39(&qword_1EB84FFB8);
  }

  v2 = qword_1EB878C60;
  v3 = os_log_type_enabled(qword_1EB878C60, v1);
  v4 = *(v0 + 168);
  v5 = *(v0 + 120);
  if (v3)
  {
    v6 = OUTLINED_FUNCTION_9_0();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v4;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B36F3000, v2, v1, "Presenting fallback song picker failed: %@", v6, 0xCu);
    sub_1B371B36C(v7, &qword_1EB8567E0, &qword_1B3CFA380);
    OUTLINED_FUNCTION_1_31();
    MEMORY[0x1B8C6EC70]();
    OUTLINED_FUNCTION_1_31();
    MEMORY[0x1B8C6EC70]();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_45_2();

  return v10(1);
}

void sub_1B38578C4(void *a1, void *a2, uint64_t a3)
{
  v5 = sub_1B3C9C5A8();
  v6 = PXLocalizedString();

  sub_1B3C9C5E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852810, &qword_1B3CFCD60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B3CF6CE0;
  v8 = [a2 title];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1B3C9C5E8();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1B3753408();
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0xE000000000000000;
  if (v12)
  {
    v14 = v12;
  }

  *(v7 + 32) = v13;
  *(v7 + 40) = v14;
  v15 = sub_1B3C9C5F8();
  v17 = v16;

  v18 = sub_1B3C9C5A8();
  v19 = PXLocalizedString();

  v20 = sub_1B3C9C5E8();
  v22 = v21;

  sub_1B3813F04(v20, v22, a1);
  sub_1B3813F10(v15, v17, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1B3CF9810;
  v24 = sub_1B3C9C5A8();
  v25 = PXLocalizedString();

  v26 = sub_1B3C9C5E8();
  v28 = v27;

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = objc_allocWithZone(MEMORY[0x1E69C4470]);
  v31 = sub_1B3866FEC(v26, v28, 0, sub_1B38693F8, v29);
  *(v23 + 32) = v31;
  v51 = v23;
  v32 = sub_1B3862604(v31);
  if (v32)
  {
    v33 = v32;
    v34 = sub_1B3C9C5A8();
    v35 = PXLocalizedString();

    v36 = sub_1B3C9C5E8();
    v38 = v37;

    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = v33;
    objc_allocWithZone(MEMORY[0x1E69C4470]);
    swift_unknownObjectRetain();
    sub_1B3866FEC(v36, v38, 0, sub_1B3869430, v40);
    MEMORY[0x1B8C69CE0]();
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1B3C9C7E8();
    }

    sub_1B3C9C808();
    swift_unknownObjectRelease();
  }

  v41 = sub_1B3C9C5A8();
  v42 = PXLocalizedString();

  v43 = sub_1B3C9C5E8();
  v45 = v44;

  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = objc_allocWithZone(MEMORY[0x1E69C4470]);
  sub_1B3866FEC(v43, v45, 1, sub_1B3869400, v46);
  MEMORY[0x1B8C69CE0]();
  if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B3C9C7E8();
  }

  sub_1B3C9C808();
  sub_1B3710718(0, &unk_1EB8572B8, 0x1E69C4470);
  v48 = sub_1B3C9C778();
  [a1 addActions_];

  if (sub_1B3711890())
  {
    sub_1B37ED0BC();
    if ((v51 & 0xC000000000000001) != 0)
    {
      v49 = MEMORY[0x1B8C6A930](0, v51);
    }

    else
    {
      v49 = *(v51 + 32);
    }

    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  [a1 setPreferredAction_];
}

void sub_1B3857EF0()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v6 = v5;
  v7 = sub_1B3C9C118();
  OUTLINED_FUNCTION_15_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_66_2();
  v20 = sub_1B3C9C168();
  OUTLINED_FUNCTION_15_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_67_2();
  sub_1B3710718(0, &qword_1EB84FE60, 0x1E69E9610);
  v14 = sub_1B3C9CC88();
  sub_1B3869524(v4, v22, &qword_1EB850170);
  v15 = swift_allocObject();
  v16 = v22[1];
  *(v15 + 24) = v22[0];
  *(v15 + 16) = v0;
  *(v15 + 40) = v16;
  *(v15 + 56) = v6;
  v21[4] = sub_1B386938C;
  v21[5] = v15;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  OUTLINED_FUNCTION_2();
  v21[2] = v17;
  v21[3] = &block_descriptor_464;
  v18 = _Block_copy(v21);
  v19 = v0;

  sub_1B3C9C138();
  v21[0] = MEMORY[0x1E69E7CC0];
  sub_1B38692E4(&qword_1EB84FEE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB851AF0, &unk_1B3CF6D10);
  sub_1B37254F8();
  sub_1B3C9D278();
  MEMORY[0x1B8C6A210](0, v2, v1, v18);
  _Block_release(v18);

  (*(v9 + 8))(v1, v7);
  (*(v12 + 8))(v2, v20);
  OUTLINED_FUNCTION_27();
}

void sub_1B38581A8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = a2;
  sub_1B3858544(a3, 1, sub_1B386939C, v4);
}

void sub_1B38581F8(void *a1, uint64_t a2, void *a3)
{
  v6 = sub_1B3C9C5A8();
  v7 = PULocalizedString(v6);

  v8 = sub_1B3C9C5E8();
  v10 = v9;

  sub_1B3813F04(v8, v10, a1);
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (a2 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = PFStoryOverallDurationKindLocalizationKey();
      v16 = sub_1B3C9C5E8();
      v18 = v17;

      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1B3C9D378();

      v29 = 0xD000000000000022;
      v30 = 0x80000001B3D1D960;
      MEMORY[0x1B8C69C10](v16, v18);

      v19 = sub_1B3C9C5A8();

      v20 = PXLocalizedString();

      if (!v20)
      {
        sub_1B3C9C5E8();
        v20 = sub_1B3C9C5A8();
      }

      v21 = swift_allocObject();
      *(v21 + 16) = a3;
      *(v21 + 24) = v13;
      v33 = sub_1B38693A4;
      v34 = v21;
      v29 = MEMORY[0x1E69E9820];
      v30 = 1107296256;
      v31 = sub_1B370C014;
      v32 = &block_descriptor_470;
      v22 = _Block_copy(&v29);
      v23 = a3;

      [a1 addActionWithTitle:v20 style:0 action:v22];
      _Block_release(v22);

      --v11;
    }

    while (v11);
  }

  v24 = sub_1B3C9C5A8();
  v25 = PXLocalizedString();

  if (!v25)
  {
    sub_1B3C9C5E8();
    v25 = sub_1B3C9C5A8();
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a3;
  v33 = sub_1B38693CC;
  v34 = v26;
  v29 = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1B370C014;
  v32 = &block_descriptor_476;
  v27 = _Block_copy(&v29);
  v28 = a3;

  [a1 addActionWithTitle:v25 style:1 action:v27];
  _Block_release(v27);
}

void sub_1B3858544(uint64_t a1, char a2, const void *a3, uint64_t a4)
{
  v5 = v4;
  OUTLINED_FUNCTION_18_20();
  v9 = PXPresentationEnvironmentForSender();
  if (v9)
  {
    v10 = v9;
    sub_1B3869524(v4, v19, &qword_1EB850170);
    v11 = swift_allocObject();
    v12 = v19[1];
    *(v11 + 16) = v19[0];
    *(v11 + 32) = v12;
    *(v11 + 48) = a2 & 1;
    *(v11 + 56) = a3;
    *(v11 + 64) = a4;
    *(v11 + 72) = v5;
    OUTLINED_FUNCTION_14_1();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1B386933C;
    *(v13 + 24) = v11;
    v18[4] = sub_1B37E5DE0;
    v18[5] = v13;
    OUTLINED_FUNCTION_1_0();
    v18[1] = 1107296256;
    OUTLINED_FUNCTION_9_21();
    v18[2] = v14;
    v18[3] = &block_descriptor_448;
    _Block_copy(v18);
    OUTLINED_FUNCTION_92_0();
    v15 = v5;

    v16 = [v10 presentAlertWithConfigurationHandler_];
    OUTLINED_FUNCTION_100_0();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    _Block_release(a3);
    LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

    if ((v10 & 1) == 0)
    {
      OUTLINED_FUNCTION_112();
      return;
    }

    __break(1u);
    goto LABEL_9;
  }

  sub_1B3C9CAC8();
  if (qword_1EB84FFB8 != -1)
  {
LABEL_9:
    OUTLINED_FUNCTION_3_39(&qword_1EB84FFB8);
  }

  OUTLINED_FUNCTION_112();

  sub_1B3C9A438();
}

uint64_t sub_1B385874C(void *a1, uint64_t a2, char a3, void (*a4)(void *))
{
  if ((MEMORY[0x1B8C6D660]() & 1) != 0 || (v8 = [objc_opt_self() currentDevice], v9 = objc_msgSend(v8, sel_userInterfaceIdiom), v8, v9 == 1))
  {
    sub_1B3869524(a2, aBlock, &qword_1EB850170);
    if (v25)
    {
      sub_1B3710718(0, &unk_1EB84FE10, 0x1E69DC738);
      if (swift_dynamicCast())
      {
        [a1 setStyle_];
        [a1 setSourceItem_];

        goto LABEL_14;
      }
    }

    else
    {
      sub_1B371B36C(aBlock, &qword_1EB850170, &qword_1B3CF6D20);
    }

    [a1 setStyle_];
  }

  else
  {
    [a1 setStyle_];
    sub_1B3869524(a2, aBlock, &qword_1EB850170);
    if (v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB857288, &unk_1B3D089F8);
      if (swift_dynamicCast())
      {
        v10 = v23;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      sub_1B371B36C(aBlock, &qword_1EB850170, &qword_1B3CF6D20);
      v10 = 0;
    }

    [a1 setSourceItem_];
    swift_unknownObjectRelease();
  }

LABEL_14:
  a4(a1);
  v11 = [a1 completionHandler];
  if (v11)
  {
    v12 = v11;
    v11 = swift_allocObject();
    v13 = v11;
    v11[2] = v12;
    v14 = sub_1B386A0A8;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v15 = sub_1B3851C34(v11);
  v16 = [v15 mainModel];

  v17 = [v16 didStartPresentingAlert];
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v14;
  v18[5] = v13;
  v26 = sub_1B3869350;
  v27 = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  v25 = &block_descriptor_454;
  v19 = _Block_copy(aBlock);
  v20 = v16;
  v21 = v17;
  sub_1B370A6FC(v14, v13);

  [a1 setCompletionHandler_];
  _Block_release(v19);

  return sub_1B36F9DA0(v14, v13);
}

void sub_1B3858AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B3851C34(a1);
  v9 = [v8 actionPerformer];

  if (v9)
  {
    switch(a1)
    {
      case 0:
        [v9 presentSharingViewWithSender_];
        goto LABEL_52;
      case 1:
        [v9 toggleFavoriteState];
        goto LABEL_52;
      case 2:
        sub_1B385A780(a2);
        goto LABEL_52;
      case 3:
        [v9 presentTitleEditor];
        goto LABEL_52;
      case 4:
        [v9 presentChapterEditor];
        goto LABEL_52;
      case 5:
        [v9 presentChapterInsertor];
        goto LABEL_52;
      case 6:
        [v9 deleteCurrentChapter];
        goto LABEL_52;
      case 7:
        [v9 fileRadar];
        goto LABEL_52;
      case 8:
        [v9 fileRadarForErrorRepository_];
        goto LABEL_38;
      case 9:
        v27 = *&v4[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel];
        v54 = sub_1B3859334;
        v55 = 0;
        OUTLINED_FUNCTION_6_26();
        v51 = 1107296256;
        OUTLINED_FUNCTION_13_1();
        v29 = &block_descriptor_41_0;
        goto LABEL_44;
      case 10:
        v39 = v4;
        sub_1B385D274(v39, v39);
        goto LABEL_52;
      case 11:
        sub_1B385A10C(v10);
        goto LABEL_52;
      case 12:
        v22 = *&v4[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel];
        OUTLINED_FUNCTION_20();
        v23 = swift_allocObject();
        *(v23 + 16) = a2;
        v54 = sub_1B3867798;
        v55 = v23;
        OUTLINED_FUNCTION_6_26();
        v51 = 1107296256;
        OUTLINED_FUNCTION_13_1();
        v52 = v24;
        v53 = &block_descriptor_47;
        v25 = _Block_copy(aBlock);
        v26 = v22;
        OUTLINED_FUNCTION_55_3();

        [v22 performChanges_];
        swift_unknownObjectRelease();
        _Block_release(v25);

        goto LABEL_45;
      case 13:
        sub_1B3854714();
        goto LABEL_52;
      case 14:
        if (!PXPresentationEnvironmentForSender())
        {
          __break(1u);
          goto LABEL_59;
        }

        v18 = OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel;
        v19 = [*&v4[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel] mainModel];
        v20 = [v19 currentSongResource];

        if (v20)
        {
          v21 = [v20 px_storyResourceSongAsset];
          OUTLINED_FUNCTION_87_0();
          swift_unknownObjectRelease();
        }

        v46 = [*&v4[v18] mainAssetCollection];
        v47 = OUTLINED_FUNCTION_8_3();
        sub_1B3813378(v47, v48, v46);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_52:
        OUTLINED_FUNCTION_112();

        swift_unknownObjectRelease();
        break;
      case 15:
        [v9 showVisualDiagnostics];
        goto LABEL_52;
      case 16:
        if (![*&v4[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel] mainAssetCollection])
        {
          goto LABEL_52;
        }

        objc_opt_self();
        OUTLINED_FUNCTION_96_0();
        v13 = swift_dynamicCastObjCClass();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = [objc_allocWithZone(MEMORY[0x1E69C3690]) initWithMemory_];
        v15 = OUTLINED_FUNCTION_97_0();
        OUTLINED_FUNCTION_109_0(v15, v16, v17);
        swift_unknownObjectRelease();

        goto LABEL_52;
      case 17:
        [v9 copyInternalURL];
        goto LABEL_52;
      case 18:
        v27 = *&v4[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel];
        v54 = sub_1B38592D0;
        v55 = 0;
        OUTLINED_FUNCTION_6_26();
        v51 = 1107296256;
        OUTLINED_FUNCTION_13_1();
        v29 = &block_descriptor_50_1;
        goto LABEL_44;
      case 19:
        v27 = *&v4[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel];
        v54 = sub_1B38592C0;
        v55 = 0;
        OUTLINED_FUNCTION_6_26();
        v51 = 1107296256;
        OUTLINED_FUNCTION_13_1();
        v29 = &block_descriptor_53;
        goto LABEL_44;
      case 20:
        [v9 presentAssetPicker];
        goto LABEL_52;
      case 21:
        [v9 presentBrowserGrid];
        goto LABEL_52;
      case 22:
        sub_1B3860258(a4);
        goto LABEL_52;
      case 23:
        v27 = *&v4[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel];
        v54 = sub_1B3859398;
        v55 = 0;
        OUTLINED_FUNCTION_6_26();
        v51 = 1107296256;
        OUTLINED_FUNCTION_13_1();
        v29 = &block_descriptor_35_0;
LABEL_44:
        v52 = v28;
        v53 = v29;
        v42 = _Block_copy(aBlock);
        v43 = v27;
        [v43 performChanges_];
        swift_unknownObjectRelease();
        _Block_release(v42);

        goto LABEL_45;
      case 24:
        v49 = [*&v4[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel] mainModel];
        v35 = [v49 recipeManager];
        v36 = [v35 curatedSongs];

        if (v36)
        {
          v37 = [v49 currentSongResource];
          if (v37 && (v38 = [v37 px_storyResourceSongAsset], OUTLINED_FUNCTION_87_0(), swift_unknownObjectRelease(), v35) || objc_msgSend(v36, sel_firstObject))
          {
            OUTLINED_FUNCTION_8_3();
            sub_1B385B120();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

LABEL_38:
        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_112();

        return;
      case 25:
        v30 = OBJC_IVAR___PUStoryViewController_viewEnvironmentActionDelegate;
        OUTLINED_FUNCTION_14();
        swift_beginAccess();
        v31 = *&v4[v30];
        if (v31 && ([v31 respondsToSelector_] & 1) != 0)
        {
          [objc_msgSend(v31 viewEnvironmentModel)];
          swift_unknownObjectRelease();
        }

        v32 = *&v4[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel];
        OUTLINED_FUNCTION_20();
        *(swift_allocObject() + 16) = v4;
        v33 = v4;
        v34 = v32;
        OUTLINED_FUNCTION_89_0();
        sub_1B3C9CA68();

        swift_unknownObjectRelease();
LABEL_45:
        OUTLINED_FUNCTION_112();
        return;
      case 26:
        [v9 deleteMemory];
        goto LABEL_52;
      case 27:
        [v9 provideFeedback];
        goto LABEL_52;
      case 28:
        if ([*&v4[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel] mainAssetCollection])
        {
          objc_opt_self();
          OUTLINED_FUNCTION_96_0();
          v44 = swift_dynamicCastObjCClass();
          if (v44 && [v44 creationType] == 1)
          {
            PXSoftLinkedProtoGenerativeStoryPresentEvaluationFromViewController();
          }

LABEL_50:
          swift_unknownObjectRelease();
        }

        goto LABEL_52;
      default:
        OUTLINED_FUNCTION_108_0("Fatal error", 11, 2, 0, 0xE000000000000000, "PhotosUIPrivate/StoryViewController.swift", v11, v12, 1063, 0);
        goto LABEL_61;
    }
  }

  else
  {
LABEL_59:
    OUTLINED_FUNCTION_108_0("Fatal error", 11, 2, 0xD000000000000018, 0x80000001B3D1C8A0, "PhotosUIPrivate/StoryViewController.swift", v11, v12, 966, 0);
LABEL_61:
    __break(1u);
  }
}

id sub_1B38592DC(void *a1, uint64_t a2)
{
  [a1 setDiagnosticHUDType_];

  return [a1 setIsHUDVisible_];
}

void sub_1B3859344(uint64_t a1)
{
  v1 = sub_1B3851C34(a1);
  [v1 signalChange_];
}

void sub_1B3859460()
{
  OUTLINED_FUNCTION_62_1();
  v4 = sub_1B3C982A8();
  if (v4 & 1) != 0 || (v4 = sub_1B3C982A8(), (v4))
  {
    v5 = sub_1B3851C34(v4);
    [v5 viewMode];
  }

  else
  {
    v6 = sub_1B3C982A8();
    if (v6)
    {
      v7 = sub_1B3851C34(v6);
      v8 = [v7 viewMode];

      if (v8 == 1 && sub_1B3852020(v9))
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1B3869524(v2, v16, &qword_1EB850170);
      v10 = v17;
      if (v17)
      {
        __swift_project_boxed_opaque_existential_0Tm(v16, v17);
        OUTLINED_FUNCTION_15_0();
        v12 = v11;
        MEMORY[0x1EEE9AC00](v13);
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_67_2();
        (*(v12 + 16))(v3);
        v14 = sub_1B3C9D688();
        (*(v12 + 8))(v3, v10);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
      }

      else
      {
        v14 = 0;
      }

      v15.receiver = v1;
      v15.super_class = type metadata accessor for StoryViewController(0);
      objc_msgSendSuper2(&v15, sel_canPerformAction_withSender_, v0, v14);
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_16_1();
}

void sub_1B38596F0(void *a1)
{
  [a1 action];
  v2 = sub_1B3C982A8();
  if (v2)
  {
    v3 = sub_1B3851C34(v2);
    [v3 desiredPlayState];

    v4 = sub_1B3C9C5A8();

    v5 = PXLocalizedString();
  }

  else
  {
    [a1 action];
    if ((sub_1B3C982A8() & 1) == 0)
    {
      return;
    }

    v6 = [a1 title];
    sub_1B3C9C5E8();

    OUTLINED_FUNCTION_98_0();
    v7 = sub_1B3C9C678();

    if (v7 < 1)
    {
      return;
    }

    v4 = sub_1B3C9C5A8();
    v5 = PXLocalizedString();
  }

  v9 = v5;

  v8 = v9;
  if (!v9)
  {
    sub_1B3C9C5E8();
    v10 = sub_1B3C9C5A8();

    v8 = v10;
  }

  v11 = v8;
  [a1 setTitle_];
}

id sub_1B3859910(void *a1)
{
  [a1 setIsInSelectMode_];

  return [a1 selectAllGridItems];
}

void sub_1B3859A14()
{
  OUTLINED_FUNCTION_69_1();
  v5 = sub_1B3851C34(v2);
  if ([v5 viewMode] == 2)
  {
    v10 = v1;
    v11 = 0;
    OUTLINED_FUNCTION_12_8();
    v7 = 1107296256;
    OUTLINED_FUNCTION_13_1();
    v8 = v3;
    v9 = v0;
    v4 = _Block_copy(aBlock);
    [v5 performChanges_];

    _Block_release(v4);
  }

  else
  {
  }
}

uint64_t sub_1B3859AF8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(id))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1B3C9D1E8();
    v7 = swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v7);

  return sub_1B371B36C(v9, &qword_1EB850170, &qword_1B3CF6D20);
}

void sub_1B3859B84()
{
  v1 = v0;

  sub_1B385D274(v1, v1);
}

void sub_1B3859BF8()
{
  OUTLINED_FUNCTION_17_0();
  v4 = OBJC_IVAR___PUStoryViewController_storyView;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    sub_1B3869524(v2, v12, &qword_1EB850170);
    v6 = v13;
    if (v13)
    {
      __swift_project_boxed_opaque_existential_0Tm(v12, v13);
      OUTLINED_FUNCTION_15_0();
      v8 = v7;
      MEMORY[0x1EEE9AC00](v9);
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_67_2();
      (*(v8 + 16))(v3);
      v10 = v5;
      v11 = sub_1B3C9D688();
      (*(v8 + 8))(v3, v6);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
    }

    else
    {
      v10 = v5;
      v11 = 0;
    }

    [v10 *v0];

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_16_1();
}

uint64_t sub_1B3859DA4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1B3C9D1E8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return sub_1B371B36C(v9, &qword_1EB850170, &qword_1B3CF6D20);
}

void sub_1B3859E50(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1B3851C34(a1);
    v2 = [v1 mainModel];

    v4[4] = sub_1B3859F28;
    v4[5] = 0;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 1107296256;
    v4[2] = sub_1B386A148;
    v4[3] = &block_descriptor_702;
    v3 = _Block_copy(v4);
    [v2 performChanges_];
    _Block_release(v3);
  }
}

uint64_t sub_1B3859F34(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_42();
  swift_unknownObjectRetain();

  return sub_1B385D590(v1, v1, a1);
}

void sub_1B3859F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B3851C34(a1);
  v6 = [v5 mainModel];

  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  v9[4] = sub_1B3869B98;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1B386A148;
  v9[3] = &block_descriptor_630;
  v8 = _Block_copy(v9);
  swift_unknownObjectRetain();

  [v6 performChanges_];
  _Block_release(v8);
}

void sub_1B385A09C()
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_94_0(v3, v4, v5);
  swift_unknownObjectRetain();
  v6 = v1;
  v0(v2);
  swift_unknownObjectRelease();
}

uint64_t sub_1B385A10C(uint64_t a1)
{
  v1 = sub_1B3851C34(a1);
  v2 = [v1 mainModel];

  v3 = [v2 visibleDisplayAssets];
  if ([v3 count] == 1)
  {
    v10 = [v3 objectAtIndexedSubscript_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8548E0, &unk_1B3D062B0);
    if (swift_dynamicCast())
    {
      v11[0] = v7;
      v11[1] = v8;
      v12 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB857308, &qword_1B3D08A40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B3CF6CE0;
      sub_1B3720CB4(v11, inited + 32);
      sub_1B374A1A8(inited);
      sub_1B385A2B0(v5);
      swift_unknownObjectRelease();

      return sub_1B3720D10(v11);
    }

    else
    {
      swift_unknownObjectRelease();
      v9 = 0;
      v7 = 0u;
      v8 = 0u;
      return sub_1B371B36C(&v7, &qword_1EB857300, &qword_1B3D01780);
    }
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

char *sub_1B385A2B0(uint64_t a1)
{
  v3 = sub_1B3851C34(a1);
  v4 = [v3 mainModel];

  v5 = [v4 currentSegmentIdentifier];
  v6 = [v4 timeline];
  v7 = [v6 indexOfSegmentWithIdentifier_];
  result = [v6 numberOfSegments];
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    if (v7 == result - 1)
    {
      v9 = v7 - 1;
      if (!__OFSUB__(v7, 1))
      {
        goto LABEL_7;
      }

      __break(1u);
    }

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
LABEL_7:
      [v6 identifierForSegmentAtIndex_];
      PXStorySegmentMixMakeWithSegment();
      v10 = v15;
      v11 = v16;
      v12 = v17;
      OUTLINED_FUNCTION_37_4();
      v13 = swift_allocObject();
      v13[2] = a1;
      v13[3] = v10;
      v13[4] = v11;
      v13[5] = v12;
      v13[6] = v1;
      v19 = sub_1B38677A0;
      v20 = v13;
      v15 = MEMORY[0x1E69E9820];
      v16 = 1107296256;
      v17 = sub_1B386A148;
      v18 = &block_descriptor_65;
      _Block_copy(&v15);
      OUTLINED_FUNCTION_92_0();

      v14 = v1;

      [v4 performChanges_];
      _Block_release(&v15);

      return swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

void sub_1B385A47C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), double a5)
{
  v9 = sub_1B3C9C968();
  [a1 removeAssetsFromCuration_];

  v13 = a3;
  v14 = *&a5;
  v15 = a4;
  v10 = sub_1B3851C34([a1 scrollToPosition_]);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a5;
  *(v11 + 32) = a4;
  v17 = sub_1B3869B04;
  v18 = v11;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1B386A148;
  v16 = &block_descriptor_614;
  v12 = _Block_copy(&v13);

  [v10 performChanges_];
  _Block_release(v12);
}

uint64_t sub_1B385A648(uint64_t a1, uint64_t a2)
{
  sub_1B3C9C5E8();
  OUTLINED_FUNCTION_20();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_64_2(v2);

  v3 = OUTLINED_FUNCTION_5_14();
  sub_1B385F950(v3, v4, 3, v5, v2);
}

double sub_1B385A780(uint64_t a1)
{
  OUTLINED_FUNCTION_20();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_64_2(v2);

  v3 = OUTLINED_FUNCTION_26_7();
  sub_1B385CE40(v3, v4, a1);

  return result;
}

void sub_1B385A7E8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a1)
    {
      v9 = sub_1B3851C34(Strong);
      v10 = [v9 mainModel];

      v11 = swift_allocObject();
      *(v11 + 16) = a4;
      *(v11 + 24) = a3;
      aBlock[4] = sub_1B386A150;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B386A148;
      aBlock[3] = &block_descriptor_683;
      v12 = _Block_copy(aBlock);

      [v10 performChanges_];

      _Block_release(v12);
      v8 = v10;
    }
  }
}

void sub_1B385A92C(void *a1, uint64_t a2, uint64_t a3)
{
  v6[4] = sub_1B3869BD4;
  v6[5] = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B386A14C;
  v6[3] = &block_descriptor_673;
  v5 = _Block_copy(v6);

  [a1 changeOverallDuration:a2 completionHandler:v5];
  _Block_release(v5);
}

void sub_1B385AA04(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      v6 = sub_1B3851C34(Strong);
      v19 = sub_1B373B964;
      v20 = 0;
      *(&v16 + 1) = MEMORY[0x1E69E9820];
      *&v17 = 1107296256;
      *(&v17 + 1) = sub_1B386A148;
      v18 = &block_descriptor_676;
      v7 = _Block_copy(&v16 + 8);
      [v6 performChanges_];
      _Block_release(v7);

      sub_1B3855A60(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
    }

    else
    {
      sub_1B3855BE0(Strong, v4);
    }
  }
}

double sub_1B385AAFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_1B385AB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v23 = sub_1B3851C34(a1);
  v24 = [v23 hasCurrentClosePermission];

  if (v24)
  {
    OUTLINED_FUNCTION_54_2();

    sub_1B385ADB4(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  else
  {
    v33 = *(v22 + OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel);
    OUTLINED_FUNCTION_20();
    v34 = swift_allocObject();
    OUTLINED_FUNCTION_64_2(v34);
    v39[4] = sub_1B38677B8;
    v39[5] = v34;
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_23_8();
    v39[2] = sub_1B372B6C8;
    v39[3] = &block_descriptor_70_0;
    v35 = _Block_copy(v39);
    v36 = v33;

    v37 = OUTLINED_FUNCTION_99_0();
    [v37 v38];
    _Block_release(v35);
  }
}

void *sub_1B385AC64(void *result, uint64_t a2)
{
  if (result)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v2 = result;
      v3 = swift_unknownObjectRetain();
      sub_1B385AD1C(v3);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1B385ADB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_85_0();
  a21 = v24;
  a22 = v27;
  v29 = v28;
  if (v25)
  {
    a13 = v25;
    a14 = v26;
    OUTLINED_FUNCTION_1_0();
    a10 = 1107296256;
    OUTLINED_FUNCTION_2();
    a11 = v30;
    a12 = &block_descriptor_601;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_56_1();
  }

  else
  {
    v23 = 0;
  }

  [v22 dismissViewControllerAnimated:v29 & 1 completion:v23];
  _Block_release(v23);
  OUTLINED_FUNCTION_84();
}

id sub_1B385AE54()
{
  v1 = [objc_opt_self() interactiveDismissalOfDetailViewController_];

  return v1;
}

id sub_1B385AF10()
{
  sub_1B3710718(0, &qword_1EB84F200, 0x1E69C3B18);
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = [v1 needs79067616Workaround];

  if (v2)
  {
    result = [v0 viewIfLoaded];
    if (!result)
    {
      return result;
    }

    v4 = result;
    if ([v0 prefersStatusBarHidden])
    {
      [v4 safeAreaInsets];
      v6 = v5;

      return (v6 == 0.0);
    }
  }

  return 0;
}

void sub_1B385AFE8(uint64_t a1)
{
  v2 = sub_1B3851C34(a1);
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v6[4] = sub_1B3869AD0;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B386A148;
  v6[3] = &block_descriptor_597;
  v4 = _Block_copy(v6);
  v5 = v1;

  [v2 performChanges_];
  _Block_release(v4);
}

void sub_1B385B0C8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___PUStoryViewController_appleMusicPreviewVC);
  *(v1 + OBJC_IVAR___PUStoryViewController_appleMusicPreviewVC) = a1;
  v4 = a1;

  sub_1B385AFE8(v3);
}

double sub_1B385B120()
{
  OUTLINED_FUNCTION_17_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20, &qword_1B3CFA360);
  OUTLINED_FUNCTION_8_0(v1);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_66_2();
  v3 = sub_1B3C9C8B8();
  OUTLINED_FUNCTION_7_3(v0, v4, v5, v3);
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_8_21(v6);
  sub_1B3C9C888();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1B3C9C878();
  OUTLINED_FUNCTION_37_4();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_105_0(v7, MEMORY[0x1E69E85E0]);
  OUTLINED_FUNCTION_43_4();
  sub_1B3850B9C();

  return result;
}

uint64_t sub_1B385B228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_1B3C985E8();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_1B3C98C28();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  sub_1B3C9C888();
  v6[15] = sub_1B3C9C878();
  v10 = sub_1B3C9C848();
  v6[16] = v10;
  v6[17] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B385B388, v10, v9);
}

uint64_t sub_1B385B388()
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    v0[19] = sub_1B385B810();
    v2 = OUTLINED_FUNCTION_2_16();
    v3(v2);
    v9 = (*MEMORY[0x1E69C3288] + MEMORY[0x1E69C3288]);
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_1B385B4F4;
    v5 = v0[14];
    v6 = v0[10];

    return v9(v5, v6, 1);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v8();
  }
}

uint64_t sub_1B385B4F4()
{
  OUTLINED_FUNCTION_19_3();
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v5 = *v0;
  OUTLINED_FUNCTION_3();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  v7 = *(v1 + 136);
  v8 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1B385B688, v8, v7);
}

uint64_t sub_1B385B688()
{
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 96);

  v2 = OUTLINED_FUNCTION_2_16();
  v3(v2);
  v4 = sub_1B3C98C18();
  v5 = *(v1 + 8);
  v6 = OUTLINED_FUNCTION_5_14();
  v5(v6);
  v7 = OUTLINED_FUNCTION_26_7();
  v5(v7);
  v8 = *(v0 + 144);
  if (v4)
  {
    sub_1B385C36C();
  }

  else
  {
    sub_1B385B88C();
  }

  OUTLINED_FUNCTION_1();

  return v9();
}

uint64_t sub_1B385B810()
{
  v1 = OBJC_IVAR___PUStoryViewController____lazy_storage___tccStatusProvider;
  if (*(v0 + OBJC_IVAR___PUStoryViewController____lazy_storage___tccStatusProvider))
  {
    v2 = *(v0 + OBJC_IVAR___PUStoryViewController____lazy_storage___tccStatusProvider);
  }

  else
  {
    v3 = v0;
    sub_1B3C98C48();
    swift_allocObject();
    v2 = sub_1B3C98C38();
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_1B385B88C()
{
  OUTLINED_FUNCTION_39();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853970, &unk_1B3CFB660);
  OUTLINED_FUNCTION_8_0(v1);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_67_2();
  v3 = sub_1B3C98068();
  OUTLINED_FUNCTION_15_0();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v9 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  sub_1B3C9C5E8();
  sub_1B3C98058();

  if (__swift_getEnumTagSinglePayload(v0, 1, v3) == 1)
  {
    sub_1B371B36C(v0, &qword_1EB853970, &unk_1B3CFB660);
    sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      OUTLINED_FUNCTION_3_39(&qword_1EB84FFB8);
    }

    sub_1B3C9A438();
    goto LABEL_6;
  }

  v13 = *(v5 + 32);
  v13(v12, v0, v3);
  v14 = objc_opt_self();
  (*(v5 + 16))(v9, v12, v3);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  v13((v16 + v15), v9, v3);
  OUTLINED_FUNCTION_14_1();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1B386912C;
  *(v17 + 24) = v16;
  v23[4] = sub_1B37E5DE0;
  v23[5] = v17;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  OUTLINED_FUNCTION_9_21();
  v23[2] = v18;
  v23[3] = &block_descriptor_423;
  v19 = _Block_copy(v23);

  v20 = [v14 show_];
  v21 = OUTLINED_FUNCTION_93_0();
  _Block_release(v21);

  (*(v5 + 8))(v12, v3);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
LABEL_6:
    OUTLINED_FUNCTION_27();
    return;
  }

  __break(1u);
}

void sub_1B385BBDC(void *a1, uint64_t a2)
{
  v4 = sub_1B3C98068();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = sub_1B3C9C5A8();
  v8 = PXLocalizedString();

  v9 = sub_1B3C9C5E8();
  v11 = v10;

  sub_1B3813F04(v9, v11, a1);
  v12 = sub_1B3C9C5A8();
  v13 = PXLocalizedString();

  v14 = sub_1B3C9C5E8();
  v16 = v15;

  sub_1B3813F10(v14, v16, a1);
  v17 = sub_1B3C9C5A8();
  v18 = PXLocalizedString();

  if (!v18)
  {
    sub_1B3C9C5E8();
    v18 = sub_1B3C9C5A8();
  }

  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v20 = swift_allocObject();
  (*(v5 + 32))(v20 + v19, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  aBlock[4] = sub_1B3869194;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B370C014;
  aBlock[3] = &block_descriptor_429;
  v21 = _Block_copy(aBlock);

  [a1 addActionWithTitle:v18 style:0 action:v21];
  _Block_release(v21);

  v22 = sub_1B3C9C5A8();
  v23 = PXLocalizedString();

  if (!v23)
  {
    sub_1B3C9C5E8();
    v23 = sub_1B3C9C5A8();
  }

  [a1 addActionWithTitle:v23 style:1 action:0];
}

void sub_1B385BF04(uint64_t a1)
{
  v2 = sub_1B3C98068();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = objc_opt_self();
  (*(v3 + 16))(aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  aBlock[4] = sub_1B386926C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B3814B94;
  aBlock[3] = &block_descriptor_435;
  v8 = _Block_copy(aBlock);

  [v5 navigateToDestination:13 completion:v8];
  _Block_release(v8);
}

void sub_1B385C0B8(char a1, void *a2, uint64_t a3)
{
  v6 = sub_1B3C98068();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    v10 = sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      swift_once();
    }

    v11 = qword_1EB878C60;
    (*(v7 + 16))(v9, a3, v6);
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23 = v13;
      *v12 = 136315394;
      sub_1B38692E4(&unk_1EB853B40, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v14 = sub_1B3C9D678();
      v16 = v15;
      (*(v7 + 8))(v9, v6);
      v17 = sub_1B3749364(v14, v16, &v23);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2080;
      v22 = a2;
      v18 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8584E0, &qword_1B3CFA600);
      v19 = sub_1B3C9C608();
      v21 = sub_1B3749364(v19, v20, &v23);

      *(v12 + 14) = v21;
      _os_log_impl(&dword_1B36F3000, v11, v10, "Failed to open settings URL for granting Media Library access (%s; Error: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C6EC70](v13, -1, -1);
      MEMORY[0x1B8C6EC70](v12, -1, -1);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }
  }
}

void sub_1B385C36C()
{
  v1 = v0;
  OUTLINED_FUNCTION_62_1();
  v3 = sub_1B3851C34(v2);
  v39 = sub_1B385C71C;
  v40 = 0;
  OUTLINED_FUNCTION_1_0();
  v37[1] = 1107296256;
  OUTLINED_FUNCTION_13_1();
  v37[2] = v4;
  v38 = &block_descriptor_413;
  v5 = _Block_copy(v37);
  v6 = OUTLINED_FUNCTION_97_0();
  [v6 v7];
  _Block_release(v5);

  sub_1B3710718(0, &qword_1EB857220, 0x1E69C3B20);
  OUTLINED_FUNCTION_42();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = sub_1B3851178();
  v9 = [*&v1[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel] mainConfiguration];
  v10 = [v9 copyForMusicPreviewWithCuratedSongs_];

  [v10 setActiveStateManagedExternally_];
  [v10 setAllowsVerticalGestures_];
  v11 = type metadata accessor for StoryViewController(0);
  v12 = objc_allocWithZone(v11);
  v13 = v10;
  v14 = StoryViewController.init(configuration:)(v13);
  v15 = [v14 navigationItem];
  v38 = v11;
  v37[0] = v1;
  v16 = objc_allocWithZone(MEMORY[0x1E69DC708]);
  v17 = v1;
  v18 = sub_1B38670DC(1, v37, sel_dismissAppleMusicPreview);
  [v15 setLeftBarButtonItem_];

  v19 = [v14 navigationItem];
  v20 = sub_1B3C9C5A8();
  v21 = PULocalizedString(v20);

  v22 = sub_1B3C9C5E8();
  v24 = v23;

  v38 = v11;
  v37[0] = v17;
  objc_allocWithZone(MEMORY[0x1E69DC708]);
  v25 = v17;
  v26 = sub_1B3867234(v22, v24, 0, v37, sel_presentAppleMusicSignupWithSender_);
  [v19 setRightBarButtonItem_];

  v27 = sub_1B3C9C5A8();
  v28 = PULocalizedString(v27);

  v29 = sub_1B3C9C5E8();
  v31 = v30;

  sub_1B373ED44(v29, v31, v14);
  v32 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  v33 = v32;
  v34 = [v33 presentationController];
  if (v34)
  {
    v35 = v34;
    [v34 setDelegate_];
  }

  sub_1B385B0C8(v33);
  v36 = [v25 presentedViewController];
  if (!v36)
  {
    v36 = v25;
  }

  OUTLINED_FUNCTION_109_0(v36, sel_presentViewController_animated_completion_, v33);

  OUTLINED_FUNCTION_37_1();
}

void sub_1B385C72C()
{
  v1 = *(v0 + OBJC_IVAR___PUStoryViewController_appleMusicPreviewVC);
  if (v1)
  {
    [v1 dismissViewControllerAnimated:1 completion:0];
  }

  sub_1B385B0C8(0);
}

void sub_1B385C7C0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___PUStoryViewController_appleMusicPreviewVC);
  if (!v3 || (objc_opt_self(), (v4 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_10:
    OUTLINED_FUNCTION_103_0();
    return;
  }

  v5 = v4;
  v6 = v3;
  v7 = [v5 viewControllers];
  sub_1B3710718(0, &qword_1EB850188, 0x1E69DD258);
  OUTLINED_FUNCTION_96_0();
  v8 = sub_1B3C9C788();

  if (sub_1B3711890())
  {
    sub_1B37ED0BC();
    if ((v8 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1B8C6A930](0, v8);
    }

    else
    {
      v9 = *(v8 + 32);
    }

    v49 = v9;

    type metadata accessor for StoryViewController(0);
    v10 = swift_dynamicCastClass();
    if (v10)
    {
      v11 = sub_1B38624F0(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8571B0, &qword_1B3CFB658);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B3CFA2E0;
      v13 = objc_opt_self();
      v14 = [v13 action];
      v15 = sub_1B3C9C5E8();
      v17 = v16;

      *(inited + 32) = v15;
      *(inited + 40) = v17;
      v18 = [objc_opt_self() subscribe];
      v19 = sub_1B3C9C5E8();
      v21 = v20;

      v22 = MEMORY[0x1E69E6158];
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 48) = v19;
      *(inited + 56) = v21;
      v23 = [v13 messageIdentifier];
      v24 = sub_1B3C9C5E8();
      v26 = v25;

      *(inited + 80) = v24;
      *(inited + 88) = v26;
      v27 = [objc_opt_self() addMusic];
      v28 = sub_1B3C9C5E8();
      v30 = v29;

      *(inited + 120) = v22;
      *(inited + 96) = v28;
      *(inited + 104) = v30;
      sub_1B3C9C4D8();
      if (v11)
      {
        swift_unknownObjectRetain();
        v31 = [v13 iTunesItemIdentifier];
        v32 = sub_1B3C9C5E8();
        v34 = v33;

        v35 = [v11 identifier];
        v36 = sub_1B3C9C5E8();
        v38 = v37;

        v53 = v22;
        *&aBlock = v36;
        *(&aBlock + 1) = v38;
        sub_1B370ED44(&aBlock, v50);
        swift_isUniquelyReferenced_nonNull_native();
        sub_1B371FA70(v50, v32, v34);
        swift_unknownObjectRelease();
      }

      v39 = PXConstructSKCloudServiceSetupViewController();
      v40 = sub_1B3C9C4A8();

      OUTLINED_FUNCTION_20();
      v41 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_14_1();
      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      *(v42 + 24) = v39;
      v54 = sub_1B3869124;
      v55 = v42;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      OUTLINED_FUNCTION_5();
      v52 = v43;
      v53 = &block_descriptor_410;
      v44 = _Block_copy(&aBlock);
      v45 = v39;

      [v45 loadWithOptions:v40 completionHandler:v44];

      swift_unknownObjectRelease();
      _Block_release(v44);

      goto LABEL_10;
    }

    OUTLINED_FUNCTION_103_0();
  }

  else
  {

    OUTLINED_FUNCTION_103_0();
  }
}

void sub_1B385CC44(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [Strong presentViewController:a4 animated:1 completion:0];
    }
  }

  else
  {
    v8 = sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      swift_once();
    }

    v9 = qword_1EB878C60;
    if (os_log_type_enabled(qword_1EB878C60, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v16[0] = v11;
      *v10 = 136315138;
      v16[3] = a2;
      v12 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8584E0, &qword_1B3CFA600);
      v13 = sub_1B3C9C608();
      v15 = sub_1B3749364(v13, v14, v16);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_1B36F3000, v9, v8, "failed to load options for apple music signup with error: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x1B8C6EC70](v11, -1, -1);
      MEMORY[0x1B8C6EC70](v10, -1, -1);
    }
  }
}

void sub_1B385CE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v7 = sub_1B3851C34(v6);
  v8 = [v7 mainAssetCollection];

  if (v8)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v9 = [objc_allocWithZone(MEMORY[0x1E69C33F8]) initWithAssetCollection_];
      [v9 setPresentationEnvironment_];
      swift_unknownObjectRelease();
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1B3869BC4;
      *(v10 + 24) = v5;
      v28 = sub_1B3869FCC;
      v29 = v10;
      aBlock = MEMORY[0x1E69E9820];
      v25 = 1107296256;
      v26 = sub_1B385DAEC;
      v27 = &block_descriptor_670;
      v11 = _Block_copy(&aBlock);

      [v9 performSaveActionIfNeededOnUnsavedSyndicatedAssetsWithCompletion_];
      _Block_release(v11);

      swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v19 = Strong;
        v20 = sub_1B3851C34(Strong);
        v21 = [v20 mainModel];

        v22 = swift_allocObject();
        *(v22 + 16) = a3;
        *(v22 + 24) = a2;
        v28 = sub_1B386A150;
        v29 = v22;
        aBlock = MEMORY[0x1E69E9820];
        v25 = 1107296256;
        v26 = sub_1B386A148;
        v27 = &block_descriptor_663;
        v23 = _Block_copy(&aBlock);

        [v21 performChanges_];

        _Block_release(v23);

        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = v12;
      v14 = sub_1B3851C34(v12);
      v15 = [v14 mainModel];

      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      *(v16 + 24) = a2;
      v28 = sub_1B3869BCC;
      v29 = v16;
      aBlock = MEMORY[0x1E69E9820];
      v25 = 1107296256;
      v26 = sub_1B386A148;
      v27 = &block_descriptor_656;
      v17 = _Block_copy(&aBlock);

      [v15 performChanges_];

      _Block_release(v17);
    }

    else
    {
    }
  }
}

void sub_1B385D274(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = a2;
  v5 = sub_1B3851C34(v4);
  v6 = [v5 mainAssetCollection];

  if (v6)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E69C33F8]) initWithAssetCollection_];
      [v8 setPresentationEnvironment_];
      swift_unknownObjectRelease();
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1B3869BDC;
      *(v9 + 24) = v3;
      v18 = sub_1B3869FCC;
      v19 = v9;
      v14 = MEMORY[0x1E69E9820];
      v15 = 1107296256;
      v16 = sub_1B385DAEC;
      v17 = &block_descriptor_699;
      v10 = _Block_copy(&v14);

      [v8 performSaveActionIfNeededOnUnsavedSyndicatedAssetsWithCompletion_];
    }

    else
    {
      v13 = sub_1B3851C34(0);
      v8 = [v13 mainModel];

      v18 = sub_1B3859F28;
      v19 = 0;
      v14 = MEMORY[0x1E69E9820];
      v15 = 1107296256;
      v16 = sub_1B386A148;
      v17 = &block_descriptor_692;
      v10 = _Block_copy(&v14);
      [v8 performChanges_];
    }

    _Block_release(v10);

    swift_unknownObjectRelease();
  }

  else
  {
    v11 = sub_1B3851C34(v7);
    v8 = [v11 mainModel];

    v18 = sub_1B3859F28;
    v19 = 0;
    v14 = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v16 = sub_1B386A148;
    v17 = &block_descriptor_689;
    v12 = _Block_copy(&v14);
    [v8 performChanges_];
    _Block_release(v12);
  }
}

uint64_t sub_1B385D590(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  v6 = a2;
  v7 = swift_unknownObjectRetain();
  v8 = sub_1B3851C34(v7);
  v9 = [v8 mainAssetCollection];

  if (v9)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v10 = [objc_allocWithZone(MEMORY[0x1E69C33F8]) initWithAssetCollection_];
      [v10 setPresentationEnvironment_];
      swift_unknownObjectRelease();
      v11 = swift_allocObject();
      *(v11 + 16) = sub_1B3869B90;
      *(v11 + 24) = v5;
      v14[4] = sub_1B3869FCC;
      v14[5] = v11;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 1107296256;
      v14[2] = sub_1B385DAEC;
      v14[3] = &block_descriptor_624;
      v12 = _Block_copy(v14);

      [v10 performSaveActionIfNeededOnUnsavedSyndicatedAssetsWithCompletion_];
      _Block_release(v12);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_1B3859F7C(1, 0, v6, a3);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1B3859F7C(1, 0, v6, a3);
  }

  return swift_unknownObjectRelease();
}

void sub_1B385D7C8(uint64_t a1, void *a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a2;
  v4 = a2;
  v5 = sub_1B3851C34(v4);
  v6 = [v5 mainAssetCollection];

  if (v6)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v8 = [objc_allocWithZone(MEMORY[0x1E69C33F8]) initWithAssetCollection_];
      [v8 setPresentationEnvironment_];
      swift_unknownObjectRelease();
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1B38699E0;
      *(v9 + 24) = v3;
      v19[4] = sub_1B38699F0;
      v19[5] = v9;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 1107296256;
      v19[2] = sub_1B385DAEC;
      v19[3] = &block_descriptor_579;
      v10 = _Block_copy(v19);

      [v8 performSaveActionIfNeededOnUnsavedSyndicatedAssetsWithCompletion_];
      _Block_release(v10);

      swift_unknownObjectRelease();

      return;
    }

    sub_1B3851C34(0);
    v15 = objc_allocWithZone(sub_1B3C98708());
    v16 = sub_1B3C986E8();
    v17 = *&v4[OBJC_IVAR___PUStoryViewController_assetPicker];
    *&v4[OBJC_IVAR___PUStoryViewController_assetPicker] = v16;
    v18 = v16;

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1B3C986F8();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B3851C34(v7);
    v11 = objc_allocWithZone(sub_1B3C98708());
    v12 = sub_1B3C986E8();
    v13 = *&v4[OBJC_IVAR___PUStoryViewController_assetPicker];
    *&v4[OBJC_IVAR___PUStoryViewController_assetPicker] = v12;
    v14 = v12;

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1B3C986F8();
  }
}

uint64_t sub_1B385DAEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8548E0, &unk_1B3D062B0);
    v5 = sub_1B3C9C788();
  }

  v8 = a4;
  v7(a2, v5, a4);
}

double sub_1B385DB94()
{
  OUTLINED_FUNCTION_7_1();
  v1 = swift_allocObject();
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = v0;
  v2 = v0;
  sub_1B385EBD8();

  return result;
}

double sub_1B385DC1C()
{
  OUTLINED_FUNCTION_7_1();
  v1 = swift_allocObject();
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = v0;
  v2 = v0;
  sub_1B385EBD8();

  return result;
}

double sub_1B385DCD4(void *a1)
{
  OUTLINED_FUNCTION_20();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  OUTLINED_FUNCTION_7_1();
  v4 = swift_allocObject();
  v4[2] = v1;
  v4[3] = sub_1B386787C;
  v4[4] = v3;
  v5 = a1;
  v6 = v1;
  OUTLINED_FUNCTION_18_20();

  sub_1B385EBD8();

  return result;
}

void sub_1B385DD88(void *a1, id a2)
{
  v4 = [a2 errorsByComponent];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8518D0, &qword_1B3CFA5F0);
  v5 = sub_1B3C9C4C8();

  v6 = [a2 errors];
  v7 = sub_1B3C9C788();

  if (*(v7 + 16))
  {
    v29 = a1;
    v8 = *(v7 + 32);
    v9 = v8;

    swift_getErrorValue();
    v32 = sub_1B3C9D748();
    v33 = v10;
    if (*(v5 + 16) >= 2uLL)
    {
      v11 = sub_1B3C9D678();
      MEMORY[0x1B8C69C10](v11);

      MEMORY[0x1B8C69C10](0x2965726F6D20, 0xE600000000000000);
      MEMORY[0x1B8C69C10](0x20646E612820, 0xE600000000000000);
    }

    v12 = 0;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = v12;
LABEL_12:
      v18 = __clz(__rbit64(v15)) | (v17 << 6);
      v19 = (*(v5 + 48) + 16 * v18);
      v20 = *(*(v5 + 56) + 8 * v18);
      v15 &= v15 - 1;
      v30 = *v19;
      v31 = v19[1];

      v21 = v20;
      MEMORY[0x1B8C69C10](8250, 0xE200000000000000);
      swift_getErrorValue();
      v22 = sub_1B3C9D748();
      MEMORY[0x1B8C69C10](v22);

      MEMORY[0x1B8C69C10](10, 0xE100000000000000);
      MEMORY[0x1B8C69C10](v30, v31);

      v23 = sub_1B3C97F18();
      v24 = sub_1B3C97F18();

      v25 = PXStoryErrorDetailsDescription();
      v26 = sub_1B3C9C5E8();
      v28 = v27;

      MEMORY[0x1B8C69C10](10, 0xE100000000000000);
      MEMORY[0x1B8C69C10](v26, v28);

      MEMORY[0x1B8C69C10](10, 0xE100000000000000);
    }

    while (1)
    {
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v17 >= v16)
      {

        sub_1B373ED44(v32, v33, v29);
        sub_1B3813F1C(0, 0xE000000000000000, v29, &selRef_setDescription_);
        [v29 setClassification_];

        return;
      }

      v15 = *(v5 + 64 + 8 * v17);
      ++v12;
      if (v15)
      {
        v12 = v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1B385E1A0(uint64_t a1, unint64_t a2, __int16 a3, uint64_t a4, void (*a5)(id))
{
  v9 = a1;
  v10 = sub_1B3851C34(a1);
  v11 = [v10 mainAssetCollection];

  v12 = [objc_allocWithZone(MEMORY[0x1E69C3940]) init];
  v14 = v12;
  [v12 addDiagnosticProvider_];
  sub_1B37A0A90(&v14, v9 & 0x101, a2, a3 & 0x101, v11);
  if (a5)
  {
    a5(v12);
  }

  PXFileRadarWithConfiguration();

  return swift_unknownObjectRelease();
}

void sub_1B385E298()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20, &qword_1B3CFA360);
  OUTLINED_FUNCTION_8_0(v1);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &aBlock[-1] - v3;
  objc_allocWithZone(sub_1B3C98568());
  v5 = v0;
  v6 = sub_1B3C98558();
  if (v6)
  {
    v34 = v6;
    v7 = sub_1B3851C34(v6);
    v8 = [v7 mainAssetCollection];

    if (v8)
    {
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        if ([v9 creationType] == 1)
        {
          v11 = *&v5[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel];
          aBlock[4] = sub_1B3869FB4;
          aBlock[5] = 0;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          OUTLINED_FUNCTION_13_1();
          aBlock[2] = v12;
          aBlock[3] = &block_descriptor_88_0;
          v13 = _Block_copy(aBlock);
          v14 = v11;
          [v14 performChanges_];
          _Block_release(v13);

          v15 = sub_1B3C9C8B8();
          OUTLINED_FUNCTION_7_3(v4, v16, v17, v15);
          sub_1B3C9C888();
          v18 = v34;
          swift_unknownObjectRetain();
          v19 = sub_1B3C9C878();
          OUTLINED_FUNCTION_9_18();
          v20 = swift_allocObject();
          v21 = MEMORY[0x1E69E85E0];
          v20[2] = v19;
          v20[3] = v21;
          v20[4] = v18;
          v20[5] = v10;
          OUTLINED_FUNCTION_43_4();
          sub_1B3850B9C();

          swift_unknownObjectRelease();

          return;
        }
      }

      swift_unknownObjectRelease();
    }

    sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      OUTLINED_FUNCTION_3_39(&qword_1EB84FFB8);
    }

    if (OUTLINED_FUNCTION_110_0())
    {
      OUTLINED_FUNCTION_9_0();
      v27 = OUTLINED_FUNCTION_57_1();
      aBlock[0] = v27;
      *v8 = 136315138;
      aBlock[6] = [*&v5[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel] mainAssetCollection];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB856D00, &qword_1B3D08840);
      v28 = sub_1B3C9C608();
      v30 = sub_1B3749364(v28, v29, aBlock);

      *(v8 + 4) = v30;
      OUTLINED_FUNCTION_52_2(&dword_1B36F3000, v31, v32, "Unsupported asset collection for providing feedback: %s");
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      OUTLINED_FUNCTION_1_31();
      MEMORY[0x1B8C6EC70]();
      OUTLINED_FUNCTION_1_31();
      MEMORY[0x1B8C6EC70]();
    }

    else
    {
      v33 = v34;
    }
  }

  else
  {
    sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      OUTLINED_FUNCTION_3_39(&qword_1EB84FFB8);
    }

    if (OUTLINED_FUNCTION_110_0())
    {
      v22 = OUTLINED_FUNCTION_9_0();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v5;
      *v23 = v5;
      v24 = v5;
      OUTLINED_FUNCTION_52_2(&dword_1B36F3000, v25, v26, "Unable to create PhotosFeedbackActionPerformer for %@");
      sub_1B371B36C(v23, &qword_1EB8567E0, &qword_1B3CFA380);
      OUTLINED_FUNCTION_1_31();
      MEMORY[0x1B8C6EC70]();
      OUTLINED_FUNCTION_1_31();

      JUMPOUT(0x1B8C6EC70);
    }
  }
}

uint64_t sub_1B385E6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1B3C9C888();
  v5[3] = sub_1B3C9C878();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1B385E77C;

  return MEMORY[0x1EEE2CB80](3, a5, CGSizeMake, 0);
}

uint64_t sub_1B385E77C()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  sub_1B3C9C848();
  v3 = OUTLINED_FUNCTION_65_2();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1B385E8E8()
{
  sub_1B3C98068();
  OUTLINED_FUNCTION_15_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_8();
  v3 = v2 - v1;
  v5 = sub_1B3851C34(v4);
  v6 = [v5 mainAssetCollection];

  if (v6)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      OUTLINED_FUNCTION_42();
      swift_unknownObjectRetain();
      v7 = [v5 px_navigationURL];
      OUTLINED_FUNCTION_42();
      swift_unknownObjectRelease();
      if (v5)
      {
        sub_1B3C98038();

        v8 = [objc_opt_self() generalPasteboard];
        v9 = sub_1B3C98018();
        [v8 setURL_];

        swift_unknownObjectRelease();
        v10 = OUTLINED_FUNCTION_8_3();
        v11(v10);
LABEL_15:
        OUTLINED_FUNCTION_16_1();
        return;
      }
    }
  }

  sub_1B3C9CAC8();
  if (qword_1EB84FFB8 != -1)
  {
    OUTLINED_FUNCTION_3_39(&qword_1EB84FFB8);
  }

  if (OUTLINED_FUNCTION_110_0())
  {
    OUTLINED_FUNCTION_9_0();
    v12 = OUTLINED_FUNCTION_57_1();
    v21 = v12;
    *v3 = 136315138;
    if (v6)
    {
      v13 = [v6 description];
      v14 = sub_1B3C9C5E8();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v18 = sub_1B3749364(v14, v16, &v21);

    *(v3 + 4) = v18;
    OUTLINED_FUNCTION_52_2(&dword_1B36F3000, v19, v20, "Unable to copy internal URL for %s since it is not a PHCollection");
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    OUTLINED_FUNCTION_1_31();
    MEMORY[0x1B8C6EC70]();
    OUTLINED_FUNCTION_1_31();
    MEMORY[0x1B8C6EC70]();
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_16_1();

  swift_unknownObjectRelease();
}

uint64_t sub_1B385EBD8()
{
  OUTLINED_FUNCTION_17_0();
  sub_1B3710718(0, &qword_1EB84F200, 0x1E69C3B18);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = sub_1B3851C34(v3);
  v5 = [v4 mainAssetCollection];

  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = [v6 isGenerative];
    }

    else
    {
      v7 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 includeImagesInVisualDiagnosticsForTTR];
  if ([v3 includeDeviceDiagnosticsForTTR])
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  sub_1B379E70C(v9 | v8, 0, v7, v24);
  v10 = v24[0];
  v11 = v24[1];
  OUTLINED_FUNCTION_9_18();
  v12 = swift_allocObject();
  v12[2] = v1;
  v12[3] = v3;
  v12[4] = v2;
  v12[5] = v0;
  v13 = v1;
  v14 = v3;
  OUTLINED_FUNCTION_100_0();

  sub_1B36F9DA0(v10, v11);
  *&v19[0] = sub_1B3869A24;
  *(&v19[0] + 1) = v12;
  v19[2] = v26;
  v19[3] = v27;
  v19[1] = v25;
  v20 = v19[0];
  v21 = v25;
  v22 = v26;
  v23 = v27;
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8572F0, &unk_1B3D08A30));
  sub_1B37A1810(v19, &v18);
  v16 = sub_1B3C98DF8();
  OUTLINED_FUNCTION_109_0(v13, sel_presentViewController_animated_completion_, v16);

  *&v20 = sub_1B3869A24;
  *(&v20 + 1) = v12;
  v21 = v25;
  v22 = v26;
  v23 = v27;
  return sub_1B3869A3C(&v20);
}

void sub_1B385EDE4(char a1, __int16 a2, uint64_t a3, __int16 a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a6;
  *(v16 + 32) = a2 & 1;
  *(v16 + 33) = HIBYTE(a2) & 1;
  *(v16 + 40) = a3;
  *(v16 + 48) = a4 & 1;
  *(v16 + 49) = HIBYTE(a4) & 1;
  *(v16 + 56) = a7;
  *(v16 + 64) = a8;
  v19[4] = sub_1B3869A90;
  v19[5] = v16;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1B370C014;
  v19[3] = &block_descriptor_591;
  v17 = _Block_copy(v19);
  v18 = a6;

  [a5 dismissViewControllerAnimated:1 completion:v17];
  _Block_release(v17);
}

uint64_t sub_1B385EF20(uint64_t result, id a2, unsigned int a3, uint64_t a4, unsigned int a5, uint64_t (*a6)(void, uint64_t, void))
{
  if (result)
  {
    v7 = a5;
    v9 = a3;
    v11 = (a5 >> 8) & 1;
    v12 = (a3 >> 8) & 1;
    [a2 setIncludeImagesInVisualDiagnosticsForTTR_];
    [a2 setIncludeDeviceDiagnosticsForTTR_];
    sub_1B3710718(0, &qword_1EB853D70, 0x1E69C35B0);
    v13 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v13 setUploadVisualDiagnostics_];

    return a6(v9 & 0x101, a4, v7 & 0x101);
  }

  return result;
}

void sub_1B385F004(uint64_t a1)
{
  v2 = sub_1B3851C34(a1);
  v3 = [objc_allocWithZone(MEMORY[0x1E69C4618]) initWithRootProvider_];

  sub_1B3813F1C(0xD000000000000019, 0x80000001B3D1C950, v3, &selRef_setName_);
  [v3 setIsPrivateDataAllowed_];
  [objc_opt_self() showVisualDiagnosticsWithConfiguration:v3 fromViewController:v1 completionHandler:0];
}

void sub_1B385F110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, id (*a13)(void *a1), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_85_0();
  a21 = v23;
  a22 = v24;
  v25 = sub_1B3851C34(v24);
  v26 = [v25 mainModel];

  LOBYTE(v25) = [v26 currentAssetCollectionIsFavorite];
  v27 = [*(v22 + OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel) mainModel];
  v28 = swift_allocObject();
  *(v28 + 16) = v25 ^ 1;
  a13 = sub_1B386796C;
  a14 = v28;
  OUTLINED_FUNCTION_1_0();
  a10 = 1107296256;
  OUTLINED_FUNCTION_13_1();
  a11 = v29;
  a12 = &block_descriptor_98;
  v30 = _Block_copy(&a9);

  [v27 performChanges_];
  _Block_release(v30);

  v31 = sub_1B3C9C5E8();
  sub_1B385F950(v31, v32, 3, 0, 0);

  OUTLINED_FUNCTION_84();
}

void sub_1B385F2A0(uint64_t a1)
{
  v2 = sub_1B3851C34(a1);
  v3 = [v2 isMuted];

  v4 = *(v1 + OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v11[4] = sub_1B386797C;
  v11[5] = v5;
  OUTLINED_FUNCTION_1_0();
  v11[1] = 1107296256;
  OUTLINED_FUNCTION_13_1();
  v11[2] = v6;
  v11[3] = &block_descriptor_104_0;
  v7 = _Block_copy(v11);
  v8 = v4;

  v9 = OUTLINED_FUNCTION_99_0();
  [v9 v10];
  _Block_release(v7);
}

double sub_1B385F3C4(uint64_t a1)
{
  v1 = sub_1B3851C34(a1);
  v2 = [v1 mainModel];

  v3 = [v2 didStartPresentingAlert];
  v4 = sub_1B3C9C5E8();
  v6 = v5;
  OUTLINED_FUNCTION_20();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_64_2(v7);
  OUTLINED_FUNCTION_37_4();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v6;
  v8[5] = v2;
  v8[6] = v3;

  v9 = v2;
  v10 = v3;
  sub_1B385F950(v4, v6, 1, sub_1B3867998, v8);

  OUTLINED_FUNCTION_16_1();

  return result;
}

id sub_1B385F4F8(char a1, uint64_t a2, int a3, uint64_t a4, id a5, uint64_t a6)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      sub_1B38600B0(Strong, v9, 2);
    }
  }

  return [a5 didEndPresentingAlertWithToken_];
}

void sub_1B385F5C0(uint64_t a1)
{
  v2 = sub_1B3851C34(a1);
  v3 = [v2 mainModel];

  OUTLINED_FUNCTION_14_1();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  v9[4] = sub_1B38679A8;
  v9[5] = v4;
  OUTLINED_FUNCTION_1_0();
  v9[1] = 1107296256;
  OUTLINED_FUNCTION_5();
  v9[2] = v5;
  v9[3] = &block_descriptor_114;
  v6 = _Block_copy(v9);
  v7 = v1;
  v8 = v3;

  [v8 requestPersistencePermissionForUserActionKind:1 completionHandler:v6];
  _Block_release(v6);
}

void sub_1B385F6A0(char a1, void *a2, void *a3, id a4)
{
  if (a1)
  {
    v4 = a3;

    sub_1B385D7C8(v4, v4);
  }

  else
  {
    v6 = [a4 errorReporter];
    if (v6)
    {
      v7 = v6;
      if (a2)
      {
        a2 = sub_1B3C97F18();
      }

      v8 = sub_1B3C9C5A8();
      v9 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugDescription();

      v10 = sub_1B3C97F18();
      v11 = sub_1B3C9C5A8();
      [v7 setError:v10 forComponent:v11];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1B385F7DC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_1B3851C34(result);
    v4 = objc_allocWithZone(sub_1B3C98708());
    v5 = sub_1B3C986E8();
    v6 = *(a3 + OBJC_IVAR___PUStoryViewController_assetPicker);
    *(a3 + OBJC_IVAR___PUStoryViewController_assetPicker) = v5;
    v7 = v5;

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_1B3C986F8();
  }

  return result;
}

void sub_1B385F8A8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *&Strong[OBJC_IVAR___PUStoryViewController_assetPicker];
    *&Strong[OBJC_IVAR___PUStoryViewController_assetPicker] = 0;
  }
}

void sub_1B385F950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1B3851C34(a1);
  v10 = [v9 mainModel];

  OUTLINED_FUNCTION_20();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_64_2(v11);
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = v10;
  v20[4] = sub_1B3869AF4;
  v20[5] = v12;
  OUTLINED_FUNCTION_1_0();
  v20[1] = 1107296256;
  OUTLINED_FUNCTION_5();
  v20[2] = v13;
  v20[3] = &block_descriptor_608;
  v14 = _Block_copy(v20);

  v15 = OUTLINED_FUNCTION_8_3();
  sub_1B370A6FC(v15, v16);
  v17 = v10;

  v18 = OUTLINED_FUNCTION_99_0();
  [v18 v19];
  _Block_release(v14);
}

void sub_1B385FA80(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, id a8)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      sub_1B385FC4C(a4, a5, a6, a7);
    }
  }

  else
  {
    v15 = [a8 errorReporter];
    if (v15)
    {
      v16 = v15;
      if (a2)
      {
        v17 = sub_1B3C97F18();
      }

      else
      {
        v17 = 0;
      }

      sub_1B3C9D378();

      MEMORY[0x1B8C69C10](0xD00000000000002BLL, 0x80000001B3D1DC20);
      v18 = sub_1B3C9C5A8();

      v19 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugDescription();

      v20 = sub_1B3C97F18();
      v21 = sub_1B3C9C5A8();
      [v16 setError:v20 forComponent:v21];

      swift_unknownObjectRelease();
    }

    if (a6)
    {
      a6(0);
    }
  }
}

void sub_1B385FC4C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v10 = sub_1B3851C34(a1);
  v11 = [v10 mainAssetCollection];

  sub_1B3710718(0, &qword_1EB8571A8, 0x1E69C37A0);
  OUTLINED_FUNCTION_42();
  swift_unknownObjectRetain();
  v12 = sub_1B385FEA4();
  [v12 setPerformerDelegate_];
  v13 = sub_1B3C9C5A8();
  v14 = [v12 actionPerformerForActionType_];

  if (v14)
  {
    v15 = v14;
    [v15 setPresentationEnvironment_];

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_9_18();
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = a2;
    v16[4] = a3;
    v16[5] = a4;
    v22[4] = sub_1B386909C;
    v22[5] = v16;
    OUTLINED_FUNCTION_1_0();
    v22[1] = 1107296256;
    OUTLINED_FUNCTION_5();
    v22[2] = v17;
    v22[3] = &block_descriptor_399;
    v18 = _Block_copy(v22);

    v19 = OUTLINED_FUNCTION_8_3();
    sub_1B370A6FC(v19, v20);

    [v15 performActionWithCompletionHandler_];

    swift_unknownObjectRelease();
    _Block_release(v18);

    OUTLINED_FUNCTION_37_1();
  }

  else
  {
    sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      OUTLINED_FUNCTION_3_39(&qword_1EB84FFB8);
    }

    sub_1B3C9A438();
    if (a3)
    {
      a3(0);
    }

    OUTLINED_FUNCTION_37_1();

    swift_unknownObjectRelease();
  }
}

uint64_t sub_1B385FEA4()
{
  OUTLINED_FUNCTION_17_0();
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAssetCollection:v2 displayTitleInfo:v0];
  OUTLINED_FUNCTION_18_20();
  swift_unknownObjectRelease();

  return v1;
}

void sub_1B385FEFC(char a1, id a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  if (a2)
  {
    v10 = a2;
    v11 = sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      swift_once();
    }

    v12 = qword_1EB878C60;
    if (os_log_type_enabled(qword_1EB878C60, v11))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1B3749364(a3, a4, &v18);
      *(v13 + 12) = 2080;
      swift_getErrorValue();
      v15 = sub_1B3C9D748();
      v17 = sub_1B3749364(v15, v16, &v18);

      *(v13 + 14) = v17;
      _os_log_impl(&dword_1B36F3000, v12, v11, "%s action manager error: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C6EC70](v14, -1, -1);
      MEMORY[0x1B8C6EC70](v13, -1, -1);
    }
  }

  if (a5)
  {
    a5(a1 & 1);
  }
}

void sub_1B38600B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1B3851C34(a1);
  v5 = [v4 mainModel];

  [v5 performedUserActionKind_];
}

id sub_1B3860124()
{
  OUTLINED_FUNCTION_17_0();
  sub_1B3851C34(v2);
  v3 = objc_allocWithZone(type metadata accessor for StoryMusicFeedbackContextMenuDelegate());
  v4 = v1;
  OUTLINED_FUNCTION_42();

  v5 = OUTLINED_FUNCTION_8_3();
  return sub_1B389FB20(v5, v6, v0, v1);
}

id sub_1B3860224(uint64_t a1)
{
  v1 = (*(a1 + 16))();

  return v1;
}

void sub_1B3860258(uint64_t a1)
{
  v2 = sub_1B3851C34(a1);
  v9[4] = sub_1B3869FB4;
  v9[5] = 0;
  OUTLINED_FUNCTION_1_0();
  v9[1] = 1107296256;
  OUTLINED_FUNCTION_13_1();
  v9[2] = v3;
  v9[3] = &block_descriptor_117_0;
  v4 = _Block_copy(v9);
  [v2 performChanges_];
  _Block_release(v4);

  v5 = objc_allocWithZone(type metadata accessor for StoryAirPlayHelper());
  v6 = v1;
  sub_1B37392F8(v6);
  v7 = OUTLINED_FUNCTION_42();
  sub_1B373945C(v7);
  v8 = *&v6[OBJC_IVAR___PUStoryViewController_airPlayHelper];
  *&v6[OBJC_IVAR___PUStoryViewController_airPlayHelper] = v5;
}

uint64_t sub_1B3860334@<X0>(void *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_1B3851C34(a2);
  v4 = [v3 mainAssetCollection];

  if (v4)
  {
    result = swift_getObjectType();
  }

  else
  {
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  return result;
}

id sub_1B38603B8@<X0>(void *a1@<X8>)
{
  result = [*(v1 + OBJC_IVAR___PUStoryViewController_initialConfiguration) assetCollection];
  v4 = result;
  if (result)
  {
    result = swift_getObjectType();
  }

  else
  {
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = result;
  return result;
}

id sub_1B3860430()
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_94_0(v2, v3, v4);
  swift_unknownObjectRetain();
  v5 = v1;
  v0(v17);
  swift_unknownObjectRelease();

  v6 = v18;
  if (v18)
  {
    __swift_project_boxed_opaque_existential_0Tm(v17, v18);
    OUTLINED_FUNCTION_15_0();
    v8 = v7;
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_8();
    v12 = v11 - v10;
    v13 = OUTLINED_FUNCTION_99_0();
    v14(v13);
    v15 = sub_1B3C9D688();
    (*(v8 + 8))(v12, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_1B3860570(void *a1)
{
  v3 = OBJC_IVAR___PUStoryViewController_storyView;
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!v4)
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v5 = v4;
  OUTLINED_FUNCTION_100_0();
  sub_1B3C9D688();
  v6 = OUTLINED_FUNCTION_18_15();
  v8 = [v6 v7];

  swift_unknownObjectRelease();
  return v8;
}

id sub_1B3860694(uint64_t a1)
{
  v2 = OBJC_IVAR___PUStoryViewController_storyView;
  OUTLINED_FUNCTION_7_0(a1);
  result = *(v1 + v2);
  if (result)
  {
    result = [result viewModel];
    if (result)
    {
      v4 = result;
      if ([result viewMode] == 1 && !objc_msgSend(v4, sel_wantsRelatedOverlayVisible))
      {
        v5 = [v4 didSelectAnyRelated];

        return (v5 ^ 1);
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

void sub_1B3860798()
{
  v1 = OBJC_IVAR___PUStoryViewController_storyView;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = [v2 viewModel];
    if (v3)
    {
      v4 = v3;
      v11 = sub_1B3860850;
      v12 = 0;
      OUTLINED_FUNCTION_4_31();
      v8 = 1107296256;
      OUTLINED_FUNCTION_13_1();
      v9 = v5;
      v10 = &block_descriptor_120;
      v6 = _Block_copy(aBlock);
      OUTLINED_FUNCTION_28_4(v6, sel_performChanges_);
      _Block_release(v6);
    }
  }
}

void sub_1B3860910()
{
  v1 = OBJC_IVAR___PUStoryViewController_storyView;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = [v2 viewModel];
    if (v3)
    {
      v4 = v3;
      v11 = sub_1B38609C8;
      v12 = 0;
      OUTLINED_FUNCTION_4_31();
      v8 = 1107296256;
      OUTLINED_FUNCTION_13_1();
      v9 = v5;
      v10 = &block_descriptor_123;
      v6 = _Block_copy(aBlock);
      OUTLINED_FUNCTION_28_4(v6, sel_performChanges_);
      _Block_release(v6);
    }
  }
}

void sub_1B3860A50(uint64_t a1)
{
  v1 = sub_1B3851C34(a1);
  v2 = [v1 mainModel];

  v7[4] = sub_1B3860AF4;
  v7[5] = 0;
  OUTLINED_FUNCTION_1_0();
  v7[1] = 1107296256;
  OUTLINED_FUNCTION_13_1();
  v7[2] = v3;
  v7[3] = &block_descriptor_126;
  v4 = _Block_copy(v7);
  v5 = OUTLINED_FUNCTION_23_7();
  [v5 v6];
  _Block_release(v4);
}

void sub_1B3860B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_85_0();
  a21 = v23;
  a22 = v26;
  if (v24)
  {
    a13 = v24;
    a14 = v25;
    OUTLINED_FUNCTION_1_0();
    a10 = 1107296256;
    OUTLINED_FUNCTION_2();
    a11 = v27;
    a12 = &block_descriptor_567;
    _Block_copy(&a9);
    OUTLINED_FUNCTION_56_1();
  }

  else
  {
    v22 = 0;
  }

  v28 = OUTLINED_FUNCTION_23_7();
  [v28 v29];
  _Block_release(v22);
  OUTLINED_FUNCTION_84();
}

void sub_1B3860C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_62_1();
  if ([v6 isBeingDismissed])
  {
    if (v4)
    {
      v4();
    }
  }

  else
  {
    if (v4)
    {
      v8[4] = v4;
      v8[5] = a3;
      OUTLINED_FUNCTION_1_0();
      v8[1] = 1107296256;
      OUTLINED_FUNCTION_2();
      v8[2] = v7;
      v8[3] = &block_descriptor_393;
      v4 = _Block_copy(v8);
    }

    [v3 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }
}

void sub_1B3860CC0(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B3860FB8(a1);
  v4 = OBJC_IVAR___PUStoryViewController_storyView;
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  v5 = *&v2[v4];
  if (v5)
  {
    v6 = [v5 tungstenView];
    v7 = [v6 rootLayout];

    v8 = [v7 mediaProvider];
    if (v8)
    {
      v10 = sub_1B3851C34(v9);
      v11 = v8;
      v12 = [v2 px_extendedTraitCollection];
      v13 = objc_allocWithZone(type metadata accessor for StoryColorGradeEditorViewController(0));
      v14 = sub_1B377C9FC(v10, v3, v11, v12);
      *&v14[qword_1EB8534F0 + 8] = &off_1F2ABF5F0;
      swift_unknownObjectWeakAssign();
      [v14 setModalPresentationStyle_];
      OUTLINED_FUNCTION_54_2();
      sub_1B3860B64(v15, v16, v17, v18, v19, v20, v21, v22, v26, aBlock, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
      v23 = [*&v2[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel] mainModel];
      v31 = sub_1B3860EA4;
      v32 = 0;
      OUTLINED_FUNCTION_4_31();
      v28 = 1107296256;
      OUTLINED_FUNCTION_13_1();
      v29 = v24;
      v30 = &block_descriptor_129;
      v25 = _Block_copy(&aBlock);
      OUTLINED_FUNCTION_28_4(v25, sel_performChanges_);
      _Block_release(v25);

      OUTLINED_FUNCTION_112();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1B3860EFC(uint64_t a1)
{
  OUTLINED_FUNCTION_54_2();
  sub_1B3860C04(v1, v2, v3);
  v5 = sub_1B3851C34(v4);
  v6 = [v5 mainModel];

  v11[4] = sub_1B3860FA8;
  v11[5] = 0;
  OUTLINED_FUNCTION_1_0();
  v11[1] = 1107296256;
  OUTLINED_FUNCTION_13_1();
  v11[2] = v7;
  v11[3] = &block_descriptor_390;
  v8 = _Block_copy(v11);
  v9 = OUTLINED_FUNCTION_23_7();
  [v9 v10];
  _Block_release(v8);
}

id sub_1B3860FB8(uint64_t a1)
{
  v1 = sub_1B3851C34(a1);
  v2 = [v1 mainModel];

  v3 = [v2 styleManager];
  v4 = [v3 selectionDataSource];
  v5 = [v4 styleInfoAtIndex_];

  v6 = [v5 customColorGradeKind];
  if (v6)
  {
    v7 = v6;

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = [v2 colorGradingRepository];
    v9 = [v5 originalColorGradeCategory];
    v7 = [v8 colorGradeKindForColorGradeCategory_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v7;
}

void sub_1B3861108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(char a1, uint64_t a2), void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_85_0();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v29 = *(*(v27 + qword_1EB8534E0) + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_configuration);
  v30 = sub_1B3851C34(v27);
  v31 = [v30 mainModel];

  if (v29 == v26)
  {
    v32 = 1;
  }

  else
  {
    v32 = 2;
  }

  OUTLINED_FUNCTION_9_18();
  v33 = swift_allocObject();
  v33[2] = v31;
  v33[3] = v26;
  v33[4] = v22;
  v33[5] = v28;
  a13 = sub_1B3869080;
  a14 = v33;
  OUTLINED_FUNCTION_1_0();
  a10 = 1107296256;
  OUTLINED_FUNCTION_5();
  a11 = v34;
  a12 = &block_descriptor_381;
  _Block_copy(&a9);
  OUTLINED_FUNCTION_92_0();
  v35 = v31;
  v36 = v22;
  v37 = v28;

  [v35 requestPersistencePermissionForUserActionKind:v32 completionHandler:v26];
  _Block_release(v26);

  OUTLINED_FUNCTION_84();
}

void sub_1B3861220(char a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v8 = [a3 styleManager];
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    v19[4] = sub_1B386908C;
    v19[5] = v9;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1B386A148;
    v19[3] = &block_descriptor_387;
    v10 = _Block_copy(v19);

    [v8 performChanges:v10 origin:2];
    _Block_release(v10);

    sub_1B3860EFC(a6);
  }

  else
  {
    v12 = [a3 errorReporter];
    if (v12)
    {
      v13 = v12;
      if (a2)
      {
        v14 = sub_1B3C97F18();
      }

      else
      {
        v14 = 0;
      }

      v15 = sub_1B3C9C5A8();
      v16 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugDescription();

      v17 = sub_1B3C97F18();
      v18 = sub_1B3C9C5A8();
      [v13 setError:v17 forComponent:v18];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1B386142C()
{
  OUTLINED_FUNCTION_0_0();
  *(v1 + 24) = v0;
  *(v1 + 96) = *v2;
  *(v1 + 32) = sub_1B3C9C888();
  *(v1 + 40) = sub_1B3C9C878();
  OUTLINED_FUNCTION_42();
  v4 = sub_1B3C9C848();
  *(v1 + 48) = v4;
  *(v1 + 56) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B38614C8, v4, v3);
}

uint64_t sub_1B38614C8()
{
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);
  v3 = sub_1B3C9C878();
  *(v0 + 64) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = type metadata accessor for StoryMusicEditorViewController(0);
  *v5 = v0;
  v5[1] = sub_1B38615E0;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v0 + 16, v3, v7, 0xD000000000000020, 0x80000001B3D1C970, sub_1B38679B0, v4, v6);
}

uint64_t sub_1B38615E0()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  v3[11] = v0;

  if (v0)
  {
    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1B386174C;
  }

  else
  {

    v7 = v3[6];
    v8 = v3[7];
    v9 = sub_1B38616EC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1B38616EC()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_45_2();

  return v0();
}

uint64_t sub_1B386174C()
{
  OUTLINED_FUNCTION_0_0();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_1B3861914(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8572E8, &qword_1B3D08A28);
    return sub_1B3C9C858();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8572E8, &qword_1B3D08A28);
    return sub_1B3C9C868();
  }
}

void sub_1B3861994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(int a1, int a2), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_85_0();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_69_1();
  v27 = *v26;
  v28 = sub_1B3851C34(v26);
  v29 = [v28 mainModel];

  OUTLINED_FUNCTION_20();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_8_21(v30);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v23;
  *(v31 + 32) = v22;
  *(v31 + 40) = v28;
  *(v31 + 48) = v27;
  a13 = sub_1B3869C74;
  a14 = v31;
  OUTLINED_FUNCTION_1_0();
  a10 = 1107296256;
  OUTLINED_FUNCTION_5();
  a11 = v32;
  a12 = &block_descriptor_720;
  v33 = _Block_copy(&a9);
  v34 = v29;
  v35 = OUTLINED_FUNCTION_55_3();
  sub_1B370A6FC(v35, v22);

  [v29 requestPersistencePermissionForUserActionKind:1 completionHandler:v33];
  _Block_release(v33);

  OUTLINED_FUNCTION_84();
}

void sub_1B386207C(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + qword_1EB857910);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v9[2] = a2;
    v9[3] = a3;
    v9[4] = v6;
    v9[5] = v8;
    v10 = v7;
    sub_1B370A6FC(a2, a3);
    v11 = v6;

    sub_1B389A3D0(sub_1B3869074, v9);
  }

  else if (a2)
  {
    sub_1B3869020();
    v12 = swift_allocError();
    a2(v12, 1);
  }
}

void sub_1B38621C4(char *a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a1 - 1) >= 2)
  {
    if (a1 == 3)
    {
      if (a2)
      {
        (a2)(a4, 0, a3);
      }
    }

    else if (a2)
    {
      if (a1)
      {
        v7 = a1;
      }

      else
      {
        sub_1B3869020();
        v7 = swift_allocError();
      }

      v8 = a1;
      a2(v7, 1);
    }
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1B389A3D0(0, 0);
  }
}

double sub_1B38622C8(uint64_t a1)
{
  OUTLINED_FUNCTION_69_1();
  v5 = v4;
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_8_21(v6);
  OUTLINED_FUNCTION_7_1();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v1;

  sub_1B370A6FC(v2, v1);
  sub_1B3860C04(v5, sub_1B3868FC4, v7);

  return result;
}

void sub_1B386237C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1B3851C34(Strong);
    v6 = [v5 mainModel];

    aBlock[4] = sub_1B38624A0;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B386A148;
    aBlock[3] = &block_descriptor_360;
    v7 = _Block_copy(aBlock);
    [v6 performChanges_];
    _Block_release(v7);

    if (a2)
    {
      a2();
    }
  }
}

id sub_1B38624A0(void *a1)
{
  [a1 setIsPresentingMusicEditor_];

  return [a1 setEditorPreviewSong_];
}

id sub_1B38624F0(uint64_t a1)
{
  v1 = sub_1B3851C34(a1);
  v2 = [v1 mainModel];

  v3 = [v2 styleManager];
  v4 = [v3 selectionDataSource];
  v5 = [v4 styleInfoAtIndex_];
  v6 = [v5 songResource];
  swift_unknownObjectRelease();
  if (v6)
  {
    v7 = [v6 px_storyResourceSongAsset];
    OUTLINED_FUNCTION_55_3();
    swift_unknownObjectRelease();
  }

  else
  {

    return 0;
  }

  return v5;
}

id sub_1B3862604(uint64_t a1)
{
  v1 = sub_1B3851C34(a1);
  v2 = [v1 mainModel];

  v3 = [v2 recipeManager];
  v4 = [v3 recipe];

  v5 = [v4 fallbackSongResource];
  if (!v5 || (v6 = [v5 px_storyResourceSongAsset], swift_unknownObjectRelease(), !v6) || objc_msgSend(v6, sel_catalog) != 4)
  {
    sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      OUTLINED_FUNCTION_3_39(&qword_1EB84FFB8);
    }

    sub_1B3C9A438();
    swift_unknownObjectRelease();
    return 0;
  }

  return v6;
}

void sub_1B3862868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(char a1, uint64_t a2), void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_85_0();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_62_1();
  v28 = sub_1B3851C34(v27);
  v29 = [v28 mainModel];

  OUTLINED_FUNCTION_9_18();
  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = v22;
  v30[4] = v23;
  v30[5] = v24;
  a13 = sub_1B3868F78;
  a14 = v30;
  OUTLINED_FUNCTION_1_0();
  a10 = 1107296256;
  OUTLINED_FUNCTION_5();
  a11 = v31;
  a12 = &block_descriptor_336;
  _Block_copy(&a9);
  OUTLINED_FUNCTION_92_0();
  v32 = v24;
  v33 = v29;
  OUTLINED_FUNCTION_100_0();
  swift_unknownObjectRetain();
  v34 = v23;

  [v24 requestPersistencePermissionForUserActionKind:2 completionHandler:v28];
  _Block_release(v28);

  OUTLINED_FUNCTION_84();
}

void sub_1B3862954(char a1, uint64_t a2, id a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a1)
  {
    v9 = [a3 styleManager];
    v10 = swift_allocObject();
    *(v10 + 16) = a4;
    v34 = sub_1B3868F84;
    v35 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v31 = 1107296256;
    v32 = sub_1B386A148;
    v33 = &block_descriptor_342;
    v11 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v9 performChanges:v11 origin:2];
    _Block_release(v11);
    if ((*(a5 + OBJC_IVAR___PUStoryViewController_isExportPending) & 1) == 0)
    {
      v13 = sub_1B3851C34(v12);
      v34 = sub_1B3862DB0;
      v35 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v31 = 1107296256;
      v32 = sub_1B386A148;
      v33 = &block_descriptor_345;
      v14 = _Block_copy(&aBlock);
      [v13 performChanges_];
      _Block_release(v14);
    }

    v15 = OBJC_IVAR___PUStoryViewController_storyView;
    swift_beginAccess();
    v16 = *(a5 + v15);
    if (v16)
    {
      v17 = [v16 tungstenView];
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = swift_allocObject();
      *(v19 + 16) = a6;
      *(v19 + 24) = v18;
      v34 = sub_1B3868F8C;
      v35 = v19;
      aBlock = MEMORY[0x1E69E9820];
      v31 = 1107296256;
      v32 = sub_1B386A14C;
      v33 = &block_descriptor_352;
      v20 = _Block_copy(&aBlock);
      v21 = a6;

      [v17 notifyContentFullyLoadedWithTimeout:v20 block:0.5];
      _Block_release(v20);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v23 = [a3 errorReporter];
    if (v23)
    {
      v24 = v23;
      if (a2)
      {
        v25 = sub_1B3C97F18();
      }

      else
      {
        v25 = 0;
      }

      v26 = sub_1B3C9C5A8();
      v27 = PXStoryErrorCreateWithCodeUnderlyingErrorDebugDescription();

      v28 = sub_1B3C97F18();
      v29 = sub_1B3C9C5A8();
      [v24 setError:v28 forComponent:v29];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1B3862D14(void *a1, uint64_t a2)
{
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (v3)
  {
    v4 = v3;
    swift_unknownObjectRetain();
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69C3B08]) init];
  }

  [a1 applyFocusedStyleWithCustomizedSongResource_];
  return swift_unknownObjectRelease();
}

void sub_1B3862DC4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v5 = Strong;
    swift_allocObject();
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v7 = a2;

    sub_1B38622C8(v7);
  }

  else
  {
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (!v8)
    {
      return;
    }

    v7 = v8;
    sub_1B3855A60(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, vars0, vars8);
  }
}

void sub_1B3862EE4(uint64_t a1, void (*a2)(void))
{
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

void sub_1B3862F3C(uint64_t a1)
{
  OUTLINED_FUNCTION_54_2();
  sub_1B38622C8(v1);

  sub_1B3855BE0(v2, v3);
}

void sub_1B38633D0(void *a1, char a2, id a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  [a3 didEndPresentingAlertWithToken_];
  if (a2)
  {
    v12 = [a6 identifier];
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    objc_allocWithZone(MEMORY[0x1E69C3A88]);
    v14 = a1;
    v15 = a5;
    sub_1B38673B8(v15, v12, sub_1B3869940, v13, &block_descriptor_561, &selRef_initWithChapterCollectionManager_editChapterWithIdentifier_changeRequest_, v16, v17, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, vars0, vars8);
    v19 = v18;
    v25 = sub_1B3863540;
    v26 = 0;
    v21 = MEMORY[0x1E69E9820];
    v22 = 1107296256;
    v23 = sub_1B3814B94;
    v24 = &block_descriptor_558;
    v20 = _Block_copy(&v21);
    [v19 executeWithUndoManager:a7 completionHandler:v20];
    _Block_release(v20);
  }
}

void sub_1B386354C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1B3863608(uint64_t a1)
{
  v2 = sub_1B3851C34(a1);
  v44 = [v2 mainModel];

  v3 = [objc_msgSend(v44 visibleDisplayAssets)];
  swift_unknownObjectRelease();
  if (!v3)
  {
    sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      OUTLINED_FUNCTION_3_39(&qword_1EB84FFB8);
    }

    sub_1B3C9A438();
LABEL_18:
    OUTLINED_FUNCTION_74_0();

    return;
  }

  v4 = [v44 chapterCollectionManager];
  if (v4)
  {
    v42 = v4;
    v5 = [v1 undoManager];
    if (v5)
    {
      v6 = v5;
      v7 = [objc_allocWithZone(MEMORY[0x1E69C3BB0]) init];
      v50 = sub_1B3863AC8;
      v51 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v47 = 1107296256;
      v48 = sub_1B3863C00;
      v49 = &block_descriptor_140;
      v8 = _Block_copy(&aBlock);
      v9 = OUTLINED_FUNCTION_2_13();
      [v9 v10];
      _Block_release(v8);
      sub_1B3813F1C(0xD00000000000001ELL, 0x80000001B3D1CB40, v7, &selRef_setMessage_);
      v11 = sub_1B3C9C5A8();
      v12 = PXLocalizedString();

      sub_1B3C9C5E8();
      OUTLINED_FUNCTION_81_0(v13, v14, v15, &selRef_setTitlePlaceholder_);
      v16 = sub_1B3C9C5A8();
      v17 = PXLocalizedString();

      if (!v17)
      {
        sub_1B3C9C5E8();
        sub_1B3C9C5A8();
        OUTLINED_FUNCTION_93_0();
      }

      v18 = OUTLINED_FUNCTION_2_13();
      [v18 v19];

      v20 = [v44 didStartPresentingAlert];
      OUTLINED_FUNCTION_37_4();
      v21 = swift_allocObject();
      v29 = OUTLINED_FUNCTION_88_0(v21, v22, v23, v24, v25, v26, v27, v28, v42, v44);
      v50 = sub_1B3867A24;
      v51 = v29;
      aBlock = MEMORY[0x1E69E9820];
      v47 = 1107296256;
      v48 = sub_1B386354C;
      v49 = &block_descriptor_146;
      v30 = _Block_copy(&aBlock);
      v31 = v45;
      v32 = v20;
      v33 = v43;
      swift_unknownObjectRetain();
      v34 = v6;

      [v7 setCompletionHandler_];
      _Block_release(v30);
      v35 = OUTLINED_FUNCTION_18_15();
      [v35 v36];

      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_74_0();
      return;
    }

    v39 = sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      v39 = OUTLINED_FUNCTION_3_39(&qword_1EB84FFB8);
    }

    OUTLINED_FUNCTION_80_0(v39, &dword_1B36F3000, qword_1EB878C60, "missing undo manager");

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v37 = sub_1B3C9CAC8();
  if (qword_1EB84FFB8 != -1)
  {
    v37 = OUTLINED_FUNCTION_3_39(&qword_1EB84FFB8);
  }

  OUTLINED_FUNCTION_79_0(v37, &dword_1B36F3000, qword_1EB878C60, "missing chapter collection manager");

  OUTLINED_FUNCTION_74_0();

  swift_unknownObjectRelease();
}

BOOL sub_1B3863AC8(void *a1)
{
  v2 = sub_1B3C97D98();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B3869580(a1);
  if (!v7)
  {
    return 0;
  }

  v10[0] = v6;
  v10[1] = v7;
  sub_1B3C97D88();
  sub_1B371B158();
  sub_1B3C9D1C8();
  (*(v3 + 8))(v5, v2);

  v8 = sub_1B3C9C678();

  return v8 > 0;
}

uint64_t sub_1B3863C00(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void sub_1B3863C58(void *a1, char a2, id a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  [a3 didEndPresentingAlertWithToken_];
  if (a2)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    objc_allocWithZone(MEMORY[0x1E69C3A88]);
    v13 = a1;
    v14 = a5;
    swift_unknownObjectRetain();
    sub_1B38673B8(v14, a6, sub_1B386A154, v12, &block_descriptor_552, &selRef_initWithChapterCollectionManager_insertChapterWithFirstAsset_configuration_, v15, v16, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, vars0, vars8);
    v18 = v17;
    v24 = sub_1B3863E34;
    v25 = 0;
    v20 = MEMORY[0x1E69E9820];
    v21 = 1107296256;
    v22 = sub_1B3814B94;
    v23 = &block_descriptor_549;
    v19 = _Block_copy(&v20);
    [v18 executeWithUndoManager:a7 completionHandler:v19];
    _Block_release(v19);
  }
}

void sub_1B3863DBC(void *a1, void *a2, __n128 a3)
{
  sub_1B3869580(a2);
  if (v4)
  {
    v5 = sub_1B3C9C5A8();
  }

  else
  {
    v5 = 0;
  }

  [a1 setLocalizedTitle_];
}

void sub_1B3863E88(uint64_t a1)
{
  v2 = sub_1B3851C34(a1);
  v21 = [v2 mainModel];

  v3 = [v21 currentChapter];
  if (v3)
  {
    v4 = v3;
    v5 = [v21 chapterCollectionManager];
    if (!v5)
    {
      v18 = sub_1B3C9CAC8();
      if (qword_1EB84FFB8 == -1)
      {
LABEL_10:
        OUTLINED_FUNCTION_79_0(v18, &dword_1B36F3000, qword_1EB878C60, "missing chapter collection manager");

        swift_unknownObjectRelease();
        return;
      }

LABEL_20:
      v18 = OUTLINED_FUNCTION_3_39(&qword_1EB84FFB8);
      goto LABEL_10;
    }

    v20 = v5;
    v6 = [v1 undoManager];
    if (v6)
    {
      v7 = v6;
      v8 = objc_opt_self();
      OUTLINED_FUNCTION_7_1();
      v9 = swift_allocObject();
      v9[2] = v20;
      v9[3] = v4;
      v9[4] = v7;
      OUTLINED_FUNCTION_14_1();
      v10 = swift_allocObject();
      *(v10 + 16) = sub_1B3867A54;
      *(v10 + 24) = v9;
      v26 = sub_1B37DEE38;
      v27 = v10;
      OUTLINED_FUNCTION_12_8();
      v23 = 1107296256;
      OUTLINED_FUNCTION_9_21();
      v24 = v11;
      v25 = &block_descriptor_155_0;
      v12 = _Block_copy(aBlock);
      v13 = v20;
      swift_unknownObjectRetain();
      v14 = v7;

      v15 = [v8 show_];

      swift_unknownObjectRelease();
      _Block_release(v12);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
      goto LABEL_20;
    }

    v19 = sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      v19 = OUTLINED_FUNCTION_3_39(&qword_1EB84FFB8);
    }

    OUTLINED_FUNCTION_80_0(v19, &dword_1B36F3000, qword_1EB878C60, "missing undo manager");

    swift_unknownObjectRelease();
    v17 = v20;
  }

  else
  {
    sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      OUTLINED_FUNCTION_3_39(&qword_1EB84FFB8);
    }

    sub_1B3C9A438();
    v17 = v21;
  }
}

void sub_1B3864200(void *a1, void *a2, uint64_t a3, void *a4)
{
  sub_1B3813F04(0xD000000000000015, 0x80000001B3D1DB80, a1);
  sub_1B3813F10(0x616E7265746E4928, 0xEF29796C6E4F206CLL, a1);
  v8 = sub_1B3C9C5A8();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v14[4] = sub_1B3869934;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1B370C014;
  v14[3] = &block_descriptor_540;
  v10 = _Block_copy(v14);
  v11 = a2;
  swift_unknownObjectRetain();
  v12 = a4;

  [a1 addActionWithTitle:v8 style:2 action:v10];
  _Block_release(v10);

  v13 = sub_1B3C9C5A8();
  [a1 addActionWithTitle:v13 style:1 action:0];
}

void sub_1B38643A4(void *a1, void *a2, uint64_t a3)
{
  sub_1B3710718(0, &unk_1EB8572D8, 0x1E69C3A88);
  v6 = sub_1B38644B4(a1, [a2 identifier]);
  v8[4] = sub_1B3864514;
  v8[5] = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B3814B94;
  v8[3] = &block_descriptor_543;
  v7 = _Block_copy(v8);
  [v6 executeWithUndoManager:a3 completionHandler:v7];
  _Block_release(v7);
}

id sub_1B38644B4(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithChapterCollectionManager:a1 deleteChapterWithIdentifier:a2];

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1B3864520(uint64_t result, void *a2, const char *a3, ...)
{
  if ((result & 1) == 0)
  {
    v6 = sub_1B3C9CAC8();
    if (qword_1EB84FFB8 != -1)
    {
      OUTLINED_FUNCTION_3_39(&qword_1EB84FFB8);
    }

    v7 = qword_1EB878C60;
    result = OUTLINED_FUNCTION_110_0();
    if (result)
    {
      OUTLINED_FUNCTION_9_0();
      v8 = OUTLINED_FUNCTION_57_1();
      v17 = v8;
      *v3 = 136315138;
      v9 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8584E0, &qword_1B3CFA600);
      v10 = sub_1B3C9C608();
      v12 = sub_1B3749364(v10, v11, &v17);

      *(v3 + 4) = v12;
      _os_log_impl(&dword_1B36F3000, v7, v6, a3, v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      OUTLINED_FUNCTION_1_31();
      MEMORY[0x1B8C6EC70](v13, v14);
      OUTLINED_FUNCTION_1_31();
      return MEMORY[0x1B8C6EC70](v15, v16);
    }
  }

  return result;
}

id StoryViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1B3C9C5A8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id StoryViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall StoryViewController.presentationControllerDidDismiss(_:)(UIPresentationController *a1)
{
  v2 = [(UIPresentationController *)a1 presentedViewController];
  v3 = *(v1 + OBJC_IVAR___PUStoryViewController_appleMusicPreviewVC);
  if (!v2)
  {
    if (v3)
    {
      return;
    }

    goto LABEL_4;
  }

  if (v3)
  {
    v6 = v2;
    sub_1B3710718(0, &qword_1EB850188, 0x1E69DD258);
    v4 = v3;
    v5 = sub_1B3C9CFA8();

    if ((v5 & 1) == 0)
    {
      return;
    }

LABEL_4:

    sub_1B385B0C8(0);
    return;
  }
}

BOOL StoryViewController.actionPerformer(_:transitionTo:transitionType:)(int a1, id a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = OUTLINED_FUNCTION_23_7();
    OUTLINED_FUNCTION_109_0(v3, v4, v5);
  }

  return v2 != 0;
}

BOOL StoryViewController.actionPerformer(_:dismiss:completionHandler:)(int a1, id a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (v6)
  {
    v10[4] = a3;
    v10[5] = a4;
    OUTLINED_FUNCTION_1_0();
    v10[1] = 1107296256;
    OUTLINED_FUNCTION_2();
    v10[2] = v7;
    v10[3] = &block_descriptor_158;
    v8 = _Block_copy(v10);

    [v6 dismissViewControllerAnimated:1 completion:v8];

    _Block_release(v8);
  }

  return v6 != 0;
}

NSUndoManager_optional __swiftcall StoryViewController.undoManager(for:)(PXActionPerformer *a1)
{
  v2 = [v1 undoManager];

  v3 = v2;
  result.value.super.isa = v3;
  result.is_nil = v4;
  return result;
}

double StoryViewController.requestExportConfiguration(completionHandler:)()
{
  OUTLINED_FUNCTION_17_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853B20, &qword_1B3CFA360);
  OUTLINED_FUNCTION_8_0(v1);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_66_2();
  v3 = sub_1B3C9C8B8();
  OUTLINED_FUNCTION_7_3(v0, v4, v5, v3);
  OUTLINED_FUNCTION_20();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_8_21(v6);
  sub_1B3C9C888();

  sub_1B3C9C878();
  OUTLINED_FUNCTION_37_4();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_105_0(v7, MEMORY[0x1E69E85E0]);
  OUTLINED_FUNCTION_43_4();
  sub_1B3850B9C();

  return result;
}

uint64_t sub_1B3864EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  sub_1B3C9C888();
  v6[12] = sub_1B3C9C878();
  v8 = sub_1B3C9C848();
  v6[13] = v8;
  v6[14] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B3864F48, v8, v7);
}

uint64_t sub_1B3864F48()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[10];
    v3 = v0[11];
    v5 = OBJC_IVAR___PUStoryViewController_exportConfigurationCompletionBlock;
    v0[16] = OBJC_IVAR___PUStoryViewController_exportConfigurationCompletionBlock;
    v6 = &v2[v5];
    *v6 = v4;
    *(v6 + 1) = v3;

    v7 = OUTLINED_FUNCTION_5_14();
    sub_1B36F9DA0(v7, v8);
    v9 = v2;
    v10 = sub_1B3C9CBF8();
    v0[17] = v10;

    v0[5] = sub_1B3710718(0, &unk_1EB84F790, 0x1E69DD250);
    v0[2] = v10;
    v11 = v10;
    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = sub_1B38650A4;
    OUTLINED_FUNCTION_55_3();

    return sub_1B385617C();
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v14();
  }
}

uint64_t sub_1B38650A4()
{
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v2 + 152) = v6;

  sub_1B371B36C(v2 + 16, &qword_1EB850170, &qword_1B3CF6D20);
  v7 = *(v1 + 112);
  v8 = *(v1 + 104);

  return MEMORY[0x1EEE6DFA0](sub_1B38651D8, v8, v7);
}

uint64_t sub_1B38651D8()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 136);
  if (v1)
  {
    v3 = *(v0 + 120);
  }

  else
  {
    v4 = *(v0 + 120);
    v5 = *(v0 + 80);
    v6 = &v4[*(v0 + 128)];
    v7 = *v6;
    v8 = v6[1];
    *v6 = 0;
    v6[1] = 0;
    sub_1B36F9DA0(v7, v8);
    v9 = type metadata accessor for StoryExportHelper();
    v10 = sub_1B3851C34(v9);
    v11 = [v10 mainModel];

    sub_1B37DE418(v11);
    v3 = v12;

    v5(v3, 0);
  }

  OUTLINED_FUNCTION_1();

  return v13();
}

void StoryViewController.iconAsset.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_85_0();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_20();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  OUTLINED_FUNCTION_14_1();
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  *(v27 + 24) = v26;
  a13 = sub_1B3867B04;
  a14 = v27;
  OUTLINED_FUNCTION_1_0();
  a10 = 1107296256;
  OUTLINED_FUNCTION_2();
  a11 = v28;
  a12 = &block_descriptor_172;
  _Block_copy(&a9);
  OUTLINED_FUNCTION_56_1();
  v29 = v22;

  px_dispatch_on_main_queue_sync();
  _Block_release(v23);
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_84();
}

uint64_t sub_1B386549C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B3851C34(a1);
  v4 = [v3 mainModel];

  v5 = [v4 resourcesDataSourceManager];
  v6 = [v5 dataSource];

  v7 = [v6 keyAssetResource];
  if (v7)
  {
    v8 = [v7 px_storyResourceDisplayAsset];
    swift_unknownObjectRelease();
  }

  else
  {

    v8 = 0;
  }

  swift_beginAccess();
  *(a2 + 16) = v8;
  return swift_unknownObjectRelease();
}

void StoryViewController.preferredExportFilename.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_85_0();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_14_1();
  v26 = swift_allocObject();
  *(v26 + 24) = 0;
  *(v26 + 16) = 0;
  OUTLINED_FUNCTION_14_1();
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  *(v27 + 24) = v26;
  a13 = sub_1B3867B0C;
  a14 = v27;
  OUTLINED_FUNCTION_1_0();
  a10 = 1107296256;
  OUTLINED_FUNCTION_2();
  a11 = v28;
  a12 = &block_descriptor_181;
  _Block_copy(&a9);
  OUTLINED_FUNCTION_56_1();
  v29 = v22;

  px_dispatch_on_main_queue_sync();
  _Block_release(v23);
  OUTLINED_FUNCTION_14();
  swift_beginAccess();

  OUTLINED_FUNCTION_26_7();
  OUTLINED_FUNCTION_84();
}

uint64_t sub_1B386570C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B3851C34(a1);
  v4 = [v3 mainModel];

  v5 = [v4 configuration];
  v6 = [v5 assetCollection];

  if (v6)
  {
    v7 = [v6 localizedTitle];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1B3C9C5E8();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    v16 = [v6 localizedSubtitle];
    if (v16)
    {
      v17 = v16;
      v18 = sub_1B3C9C5E8();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    type metadata accessor for StoryExportHelper();
    sub_1B37DE770(v9, v11, v18, v20);
    v13 = v21;
    v15 = v22;
    swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for StoryExportHelper();
    sub_1B37DE770(0, 0, 0, 0);
    v13 = v12;
    v15 = v14;
  }

  swift_beginAccess();
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
}

void StoryViewController.collection.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t (*a13)(), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_85_0();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_20();
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  OUTLINED_FUNCTION_14_1();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = v22;
  a13 = sub_1B3867B14;
  a14 = v27;
  OUTLINED_FUNCTION_1_0();
  a10 = 1107296256;
  OUTLINED_FUNCTION_2();
  a11 = v28;
  a12 = &block_descriptor_190;
  _Block_copy(&a9);
  OUTLINED_FUNCTION_56_1();

  v29 = v22;

  px_dispatch_on_main_queue_sync();
  _Block_release(v23);
  OUTLINED_FUNCTION_14();
  swift_beginAccess();
  swift_unknownObjectRetain();

  OUTLINED_FUNCTION_84();
}

uint64_t sub_1B38659EC(uint64_t a1)
{
  v2 = sub_1B3851C34(a1);
  v3 = [v2 mainModel];

  v4 = [v3 configuration];
  v5 = [v4 assetCollection];

  swift_beginAccess();
  *(a1 + 16) = v5;
  return swift_unknownObjectRelease();
}

void sub_1B3865ACC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___PUStoryViewController_exportActivityCount);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1B3852118(v1 + 1);
  }
}

void sub_1B3865B90()
{
  OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_20();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v9 = v2;
  v10 = v3;
  OUTLINED_FUNCTION_1_0();
  v7[1] = 1107296256;
  OUTLINED_FUNCTION_2();
  v7[2] = v4;
  v8 = v0;
  v5 = _Block_copy(v7);
  v6 = v1;

  px_dispatch_on_main_queue();
  _Block_release(v5);
}

void sub_1B3865C18(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___PUStoryViewController_exportActivityCount);
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1B3852118(v1 - 1);
  }
}

uint64_t StoryViewController.appIntentsDebugDescription.getter()
{
  swift_getObjectType();
  swift_getMetatypeMetadata();
  return sub_1B3C9C608();
}

void sub_1B3865D54(void *a1, void (**a2)(void, void, void, double, double, double, double))
{
  v4 = sub_1B3851C34(a1);
  v5 = [v4 mainAssetCollection];

  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = [a1 view];
      if (!v8)
      {
        __break(1u);
        return;
      }

      v9 = v8;
      [v8 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      a2[2](a2, v7, 1, v11, v13, v15, v17);
    }

    swift_unknownObjectRelease();
  }

  _Block_release(a2);
}

void StoryViewController.appIntentsEnumerateAssetCollections(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_62_1();
  v4 = sub_1B3851C34(v3);
  v5 = [v4 mainAssetCollection];

  if (v5)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v6 = [v2 view];
      if (!v6)
      {
        __break(1u);
        return;
      }

      v7 = v6;
      [v6 bounds];
      OUTLINED_FUNCTION_6();

      v8 = OUTLINED_FUNCTION_17();
      v1(v8);
    }

    swift_unknownObjectRelease();
  }
}

void sub_1B3865F84(char *a1, void (**a2)(void, void, void, double, double, double, double))
{
  v4 = sub_1B3C9A558();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a2;
  v9 = sub_1B3851C34(v8);
  v10 = [v9 viewMode];

  if (v10 != 1 || !sub_1B3852020(v11))
  {
LABEL_7:
    v24 = OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel;
    if ([*&a1[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel] viewMode] != 2)
    {
      goto LABEL_11;
    }

    v25 = [*&a1[v24] photosGridViewModel];
    if (v25 && (v26 = v25, v27 = [v25 selectionSnapshot], v26, v28 = objc_msgSend(v27, sel_fetchSelectedObjects), v27, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB856DD0, &qword_1B3D088A0), v29 = sub_1B3C9C788(), v28, v30 = sub_1B3850A60(v29), , v30))
    {
      v72 = v30;
    }

    else
    {
      v72 = MEMORY[0x1E69E7CC0];
    }

    v31 = OBJC_IVAR___PUStoryViewController_storyView;
    swift_beginAccess();
    v32 = *&a1[v31];
    if (v32)
    {
      v33 = [v32 viewLayout];
      if (v33)
      {
        v34 = v33;
        v35 = [v34 coordinateSpace];
        if (v35)
        {
          v36 = v35;
          v37 = *&a1[v31];
          if (v37)
          {
            v38 = [v37 tungstenView];
            if (v38)
            {
              v39 = v38;
              [v34 visibleRect];
              [v34 safeAreaInsets];

              PXEdgeInsetsInsetRect();
              v41 = v40;
              v43 = v42;
              v45 = v44;
              v47 = v46;
              v48 = swift_allocObject();
              v48[2] = &v72;
              v48[3] = v34;
              v48[4] = v36;
              v48[5] = v39;
              v48[6] = sub_1B3868F0C;
              v48[7] = &v69;
              v49 = swift_allocObject();
              *(v49 + 16) = sub_1B3869FD0;
              *(v49 + 24) = v48;
              aBlock[4] = sub_1B3869FB8;
              aBlock[5] = v49;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1B3866E0C;
              aBlock[3] = &block_descriptor_324;
              v50 = _Block_copy(aBlock);
              v51 = v34;
              swift_unknownObjectRetain();
              v52 = v39;

              [v51 enumerateAssetsInRect:v50 enumerator:{v41, v43, v45, v47}];
              _Block_release(v50);
              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

              if (isEscapingClosureAtFileLocation)
              {
                __break(1u);
              }

              else
              {
                v54 = v72;
                v55 = sub_1B3711890();
                if (!v55)
                {
                  swift_unknownObjectRelease();

LABEL_36:

LABEL_34:

                  _Block_release(a2);
                  return;
                }

                v56 = v55;
                v68 = v52;
                if (v55 >= 1)
                {
                  v58 = *(MEMORY[0x1E695F058] + 16);
                  v57 = *(MEMORY[0x1E695F058] + 24);
                  v60 = *MEMORY[0x1E695F058];
                  v59 = *(MEMORY[0x1E695F058] + 8);

                  for (i = 0; i != v56; ++i)
                  {
                    if ((v54 & 0xC000000000000001) != 0)
                    {
                      v62 = MEMORY[0x1B8C6A930](i, v54);
                    }

                    else
                    {
                      v62 = *(v54 + 8 * i + 32);
                    }

                    v63 = v62;
                    (a2)[2](a2, v62, 1, v60, v59, v58, v57);
                  }

                  swift_unknownObjectRelease();

                  goto LABEL_36;
                }
              }

              __break(1u);
              goto LABEL_39;
            }
          }

          swift_unknownObjectRelease();
        }
      }
    }

    sub_1B3C987F8();
    v64 = sub_1B3C9A538();
    v65 = sub_1B3C9CAC8();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1B36F3000, v64, v65, "Failed to enumerate assets for StoryViewController", v66, 2u);
      MEMORY[0x1B8C6EC70](v66, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    goto LABEL_34;
  }

  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v13 = v12;
  v14 = [a1 view];
  if (!v14)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v15 = v14;
  [v14 bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  a2[2](a2, v13, 0, v17, v19, v21, v23);
  swift_unknownObjectRelease();
LABEL_11:

  _Block_release(a2);
}

void StoryViewController.appIntentsEnumerateAssets(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_62_1();
  v5 = sub_1B3C9A558();
  OUTLINED_FUNCTION_15_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_67_2();
  v10 = sub_1B3851C34(v9);
  v11 = [v10 viewMode];

  if (v11 != 1 || !sub_1B3852020(v12))
  {
LABEL_9:
    v17 = OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel;
    if ([*&v2[OBJC_IVAR___PUStoryViewController____lazy_storage___viewModel] viewMode] != 2)
    {
LABEL_34:
      OUTLINED_FUNCTION_19_11();
      return;
    }

    v18 = [*&v2[v17] photosGridViewModel];
    if (v18 && (v19 = v18, v20 = [v18 selectionSnapshot], v19, v21 = objc_msgSend(v20, sel_fetchSelectedObjects), v20, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB856DD0, &qword_1B3D088A0), v22 = sub_1B3C9C788(), v21, v23 = sub_1B3850A60(v22), , v23))
    {
      v53 = v23;
    }

    else
    {
      v53 = MEMORY[0x1E69E7CC0];
    }

    v24 = OBJC_IVAR___PUStoryViewController_storyView;
    OUTLINED_FUNCTION_14();
    swift_beginAccess();
    v25 = *&v2[v24];
    if (v25)
    {
      v26 = [v25 viewLayout];
      if (v26)
      {
        v27 = v26;
        v28 = [v27 coordinateSpace];
        if (v28)
        {
          v29 = v28;
          v30 = *&v2[v24];
          if (v30)
          {
            v31 = [v30 tungstenView];
            if (v31)
            {
              v32 = v31;
              [v27 visibleRect];
              OUTLINED_FUNCTION_6();
              [v27 safeAreaInsets];

              OUTLINED_FUNCTION_17();
              PXEdgeInsetsInsetRect();
              OUTLINED_FUNCTION_6();
              v33 = swift_allocObject();
              v33[2] = &v53;
              v33[3] = v27;
              v33[4] = v29;
              v33[5] = v32;
              v33[6] = v1;
              v33[7] = v3;
              OUTLINED_FUNCTION_14_1();
              v34 = swift_allocObject();
              *(v34 + 16) = sub_1B3867B2C;
              *(v34 + 24) = v33;
              aBlock[4] = sub_1B3867B30;
              aBlock[5] = v34;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1B3866E0C;
              aBlock[3] = &block_descriptor_211;
              v35 = _Block_copy(aBlock);
              v36 = v27;
              OUTLINED_FUNCTION_93_0();
              swift_unknownObjectRetain();
              v37 = v32;

              v38 = OUTLINED_FUNCTION_17();
              [v39 v40];
              _Block_release(v35);
              LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

              if (v32)
              {
                __break(1u);
              }

              else
              {
                v41 = v53;
                v42 = sub_1B3711890();
                if (!v42)
                {
                  swift_unknownObjectRelease();

LABEL_36:

LABEL_33:

                  goto LABEL_34;
                }

                v43 = v42;
                v51 = v37;
                if (v42 >= 1)
                {

                  v44 = 0;
                  do
                  {
                    if ((v41 & 0xC000000000000001) != 0)
                    {
                      v45 = MEMORY[0x1B8C6A930](v44, v41);
                    }

                    else
                    {
                      v45 = *(v41 + 8 * v44 + 32);
                    }

                    v46 = v45;
                    ++v44;
                    v47 = OUTLINED_FUNCTION_17();
                    v1(v47);
                  }

                  while (v43 != v44);
                  swift_unknownObjectRelease();

                  goto LABEL_36;
                }
              }

              __break(1u);
              goto LABEL_39;
            }
          }

          swift_unknownObjectRelease();
        }
      }
    }

    sub_1B3C987F8();
    v48 = sub_1B3C9A538();
    v49 = sub_1B3C9CAC8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1B36F3000, v48, v49, "Failed to enumerate assets for StoryViewController", v50, 2u);
      OUTLINED_FUNCTION_1_31();
      MEMORY[0x1B8C6EC70]();
    }

    (*(v7 + 8))(v4, v5);
    goto LABEL_33;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v13 = [v2 view];
  if (!v13)
  {
LABEL_39:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 bounds];
  OUTLINED_FUNCTION_6();

  v15 = OUTLINED_FUNCTION_17();
  v1(v15);
  OUTLINED_FUNCTION_19_11();

  swift_unknownObjectRelease();
}

uint64_t sub_1B3866C14(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v21 = result;
    v26 = a7;
    swift_unknownObjectRetain();

    sub_1B382C860();
    v23 = v22;
    v25 = v24;

    if ((v25 & 1) == 0)
    {
    }

    [a4 convertRect:a2 fromLayout:{a9, a10, a11, a12, a8, v26}];
    PXRectConvertFromCoordinateSpaceToCoordinateSpace();
    v27(v21, (v25 & 1) == 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B3866D80(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1B37A4FC8();
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1;
    v9 = *(v8 + 0x20);
    sub_1B37EAAA0((v8 + 40), v7, (v8 + 32));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

uint64_t sub_1B3866E0C(uint64_t a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = *(a1 + 32);
  swift_unknownObjectRetain();
  v14 = a3;
  v13(a2, v14, a4, a5, a6, a7);

  return swift_unknownObjectRelease();
}

void sub_1B3866EBC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = OUTLINED_FUNCTION_94_0(a1, a2, a3);
  v7 = _Block_copy(v6);
  _Block_copy(v7);
  v8 = v4;
  a4();
  _Block_release(v7);
}

id sub_1B3866F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B3C9C5A8();

  if (a4)
  {
    v8 = sub_1B3C9C4A8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

id sub_1B3866FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_1B3C9C5A8();

  if (a4)
  {
    v14[4] = a4;
    v14[5] = a5;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1B370C014;
    v14[3] = &block_descriptor_487;
    v11 = _Block_copy(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 initWithTitle:v10 style:a3 action:v11];
  _Block_release(v11);

  return v12;
}

id sub_1B38670DC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[3];
  if (v6)
  {
    v8 = __swift_project_boxed_opaque_existential_0Tm(a2, a2[3]);
    v9 = *(v6 - 8);
    v10 = MEMORY[0x1EEE9AC00](v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_1B3C9D688();
    (*(v9 + 8))(v12, v6);
    __swift_destroy_boxed_opaque_existential_0Tm(a2);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v3 initWithBarButtonSystemItem:a1 target:v13 action:a3];
  swift_unknownObjectRelease();
  return v14;
}

id sub_1B3867234(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    v10 = sub_1B3C9C5A8();
  }

  else
  {
    v10 = 0;
  }

  v11 = a4[3];
  if (v11)
  {
    v12 = __swift_project_boxed_opaque_existential_0Tm(a4, a4[3]);
    v13 = *(v11 - 8);
    v14 = MEMORY[0x1EEE9AC00](v12);
    v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v16, v14);
    v17 = sub_1B3C9D688();
    (*(v13 + 8))(v16, v11);
    __swift_destroy_boxed_opaque_existential_0Tm(a4);
  }

  else
  {
    v17 = 0;
  }

  v18 = [v6 initWithTitle:v10 style:a3 target:v17 action:a5];

  swift_unknownObjectRelease();
  return v18;
}

void sub_1B38673B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t (*a11)(), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_85_0();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  a13 = v26;
  a14 = v27;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_23_8();
  a11 = sub_1B386A148;
  a12 = v28;
  v29 = _Block_copy(&a9);
  v30 = OUTLINED_FUNCTION_97_0();
  [v30 v31];

  swift_unknownObjectRelease();
  _Block_release(v29);

  OUTLINED_FUNCTION_84();
}

unint64_t sub_1B3867458()
{
  result = qword_1EB84F830;
  if (!qword_1EB84F830)
  {
    sub_1B3710718(255, &qword_1EB84F828, 0x1E69C3AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB84F830);
  }

  return result;
}

uint64_t sub_1B3867500(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B38675F8;

  return v6(a1);
}

uint64_t sub_1B38675F8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_1B38676F4()
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_91_0();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_10_21(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_8_18(v3);

  return sub_1B3855810(v5, v6, v7, v8, v1);
}

uint64_t sub_1B38677C0()
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_91_0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_10_21(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_18(v4);

  return sub_1B385B228(v6, v7, v8, v9, v1, v2);
}

uint64_t objectdestroy_30Tm()
{
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B38678C4()
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_91_0();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_10_21(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_8_18(v3);

  return sub_1B385E6A0(v5, v6, v7, v8, v1);
}

uint64_t objectdestroy_133Tm()
{
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_32_5();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B3867A60()
{
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_91_0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_10_21(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_8_18(v4);

  return sub_1B3864EAC(v6, v7, v8, v9, v1, v2);
}

void sub_1B3867B60(uint64_t a1)
{
  sub_1B3868EB4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of StoryViewController.presentMusicEditor(musicSource:)()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x7B0);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B3868D18;

  return v7(v3);
}

uint64_t sub_1B3868D18()
{
  OUTLINED_FUNCTION_0_0();
  v2 = v1;
  OUTLINED_FUNCTION_10();
  v3 = *v0;
  OUTLINED_FUNCTION_3();
  *v4 = v3;

  OUTLINED_FUNCTION_45_2();

  return v5(v2);
}

void sub_1B3868EB4(uint64_t a1)
{
  if (!qword_1EB84FEC0)
  {
    sub_1B3C98118();
    v1 = sub_1B3C9D198();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB84FEC0);
    }
  }
}

uint64_t objectdestroy_204Tm()
{
  swift_unknownObjectRelease();

  v1 = OUTLINED_FUNCTION_44_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_356Tm()
{

  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

unint64_t sub_1B3869020()
{
  result = qword_1EB8571A0;
  if (!qword_1EB8571A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8571A0);
  }

  return result;
}

uint64_t objectdestroy_77Tm()
{
  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t objectdestroy_186Tm()
{

  v1 = OUTLINED_FUNCTION_16();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

void sub_1B386912C(void *a1)
{
  v3 = sub_1B3C98068();
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_86_0();

  sub_1B385BBDC(a1, v1 + v4);
}

void sub_1B3869194()
{
  v1 = sub_1B3C98068();
  OUTLINED_FUNCTION_8_0(v1);
  OUTLINED_FUNCTION_86_0();

  sub_1B385BF04(v0 + v2);
}

uint64_t objectdestroy_415Tm()
{
  sub_1B3C98068();
  OUTLINED_FUNCTION_0_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

void sub_1B386926C(char a1, void *a2)
{
  v5 = sub_1B3C98068();
  OUTLINED_FUNCTION_8_0(v5);
  OUTLINED_FUNCTION_86_0();

  sub_1B385C0B8(a1, a2, v2 + v6);
}

uint64_t sub_1B38692E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1B3869350()
{
  v1 = *(v0 + 32);
  result = [*(v0 + 16) didEndPresentingAlertWithToken_];
  if (v1)
  {
    return v1(result);
  }

  return result;
}

uint64_t sub_1B386947C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB855BF0, &unk_1B3D05A50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B3869524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_94_0(a1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_0_1();
  (*(v7 + 16))(a2, v3);
  return a2;
}

uint64_t sub_1B3869580(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B3C9C5E8();

  return v3;
}

uint64_t sub_1B38695E4(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1B38696D8;

  return v5(v2 + 32);
}

uint64_t sub_1B38696D8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_10();
  v2 = v1;
  OUTLINED_FUNCTION_4_0();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_3();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_1();

  return v8();
}

uint64_t sub_1B38697D0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_90_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_21(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_21(v1);

  return v4(v3);
}

uint64_t sub_1B3869860()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_90_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_21(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_21(v1);

  return v4(v3);
}

uint64_t objectdestroy_148Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_7_1();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1B386995C(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8572E8, &qword_1B3D08A28);
  OUTLINED_FUNCTION_8_0(v4);
  OUTLINED_FUNCTION_86_0();

  return sub_1B3861914(a1, a2 & 1);
}

uint64_t sub_1B3869A90()
{
  if (*(v0 + 33))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 49))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1B385EF20(*(v0 + 16), *(v0 + 24), v1 | *(v0 + 32), *(v0 + 40), v2 | *(v0 + 48), *(v0 + 56));
}

id sub_1B3869B04(void *a1)
{
  v2 = v1[3];
  v3 = v1[4];
  v5[0] = v1[2];
  v5[1] = v2;
  v5[2] = v3;
  return [a1 setScrubberPosition_];
}

uint64_t objectdestroy_168Tm(void (*a1)(void))
{
  a1(*(v1 + 24));
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1B3869BE4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_90_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_10_21(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_13_21(v1);

  return v4(v3);
}

uint64_t sub_1B3869C84(uint64_t result, char a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    return v3(result, a2 & 1);
  }

  return result;
}

uint64_t objectdestroy_18Tm()
{

  v0 = OUTLINED_FUNCTION_19();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1B3869D00()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 16))();
  return v1(v2);
}

_BYTE *storeEnumTagSinglePayload for StoryViewController.MusicEditorPresentationFailure(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1B3869DF4()
{
  result = qword_1EB857318;
  if (!qword_1EB857318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857318);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_39(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_52_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_57_1()
{

  return swift_slowAlloc();
}

double OUTLINED_FUNCTION_64_2(uint64_t a1)
{

  swift_unknownObjectWeakInit();
  return result;
}

uint64_t OUTLINED_FUNCTION_79_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1B3C9A438();
}

uint64_t OUTLINED_FUNCTION_80_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1B3C9A438();
}

void OUTLINED_FUNCTION_81_0(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{

  sub_1B3813F1C(v5, v6, v4, a4);
}

void *OUTLINED_FUNCTION_88_0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result[2] = a10;
  result[3] = v12;
  result[4] = a9;
  result[5] = v10;
  result[6] = v11;
  return result;
}

double OUTLINED_FUNCTION_105_0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  a1[2] = v3;
  a1[3] = a2;
  a1[4] = v5;
  a1[5] = v4;
  a1[6] = v2;

  return result;
}

uint64_t OUTLINED_FUNCTION_106_0()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_108_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{

  return sub_1B3C9D4C8();
}

id OUTLINED_FUNCTION_109_0(id a1, SEL a2, uint64_t a3)
{

  return [a1 a2];
}

BOOL OUTLINED_FUNCTION_110_0()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t PUAmbientPhotoFrameSettings.createPhotoFrameContentConfiguration(photoLibrary:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = 0;
  if ([v1 showCuratedCategories])
  {
    v5 = [v1 showPeopleCuratedAssets];
    if ([v2 showCitiesCuratedAssets])
    {
      v5 |= 8uLL;
    }

    if ([v2 showNatureCuratedAssets])
    {
      v5 |= 4uLL;
    }

    if ([v2 showPetsCuratedAssets])
    {
      v5 |= 2uLL;
    }

    v6 = [v2 showFeaturedCuratedAssets];
    v7 = v5 | 0x10;
    if (!v6)
    {
      v7 = v5;
    }

    if (v7)
    {
      v4 = v7;
    }

    else
    {
      v4 = 31;
    }

    v8 = PFPosterShuffleSmartAlbumsDescription();
    v9 = sub_1B3C9C5E8();
    v11 = v10;

    MEMORY[0x1B8C69C10](v9, v11);
  }

  if ([v2 showFavoriteAlbumAssets])
  {
    MEMORY[0x1B8C69C10](0x7469726F7661467CLL, 0xE900000000000065);
    v12 = &unk_1F2AB3AF8;
  }

  else
  {
    v12 = 0;
  }

  result = sub_1B386A724(v2);
  *(a1 + 16) = 0;
  *(a1 + 24) = v4;
  *(a1 + 32) = 0;
  *(a1 + 40) = result;
  *(a1 + 48) = 0;
  *(a1 + 56) = v12;
  *(a1 + 64) = 1;
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  return result;
}

uint64_t sub_1B386A724(void *a1)
{
  v1 = [a1 personLocalIdentifiers];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B3C9C788();

  return v3;
}

void *sub_1B386A7A4@<X0>(void *a1@<X0>, char *a4@<X8>)
{
  sub_1B386A864(a1, v11);
  v5 = sub_1B3C9BFE8();
  v7 = v6;
  v8 = &a4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857380, &qword_1B3D08BD8) + 36)];
  sub_1B386AA8C(v8);
  v9 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857388, &qword_1B3D08BE0) + 36)];
  *v9 = v5;
  v9[1] = v7;
  return memcpy(a4, v11, 0x49uLL);
}

void *sub_1B386A864@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if ((sub_1B37C175C() & 1) == 0)
  {
    sub_1B386B11C();
    sub_1B386B170();
    sub_1B3C9B168();
    v13 = __dst[1];
    v12 = 0;
    v11[0] = __dst[0];
    LOBYTE(v11[1]) = __dst[1];
    BYTE8(v11[4]) = 0;
LABEL_6:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8573B8, &qword_1B3D08C08);
    sub_1B386B1C4();
    sub_1B386B250();
    sub_1B3C9B168();
    return memcpy(a2, __dst, 0x49uLL);
  }

  if ((sub_1B37C1784() & 1) == 0)
  {
    v9 = a1;
    sub_1B38879E0(v11);
    v13 = 1;
    BYTE8(v11[4]) = 1;
    goto LABEL_6;
  }

  type metadata accessor for PUWallpaperShuffleConfigurationViewModel(0);
  sub_1B386D924(qword_1EB851490, type metadata accessor for PUWallpaperShuffleConfigurationViewModel, &unk_1B3D03264);
  v4 = a1;
  v5 = sub_1B3C9AA58();
  v7 = v6;
  *&v11[0] = v5;
  *(&v11[0] + 1) = v6;
  LOBYTE(v11[1]) = 1;
  sub_1B386B11C();
  sub_1B386B170();
  v8 = v7;
  sub_1B3C9B168();
  v13 = __dst[1];
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8573B8, &qword_1B3D08C08);
  sub_1B386B1C4();
  sub_1B386B250();
  sub_1B3C9B168();

  memcpy(__dst, v11, 0x49uLL);
  return memcpy(a2, __dst, 0x49uLL);
}

uint64_t sub_1B386AA8C@<X0>(uint64_t a4@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857390, &qword_1B3D08BE8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = sub_1B3C9C5A8();
  Bool = PXPreferencesGetBool();

  if (Bool)
  {
    sub_1B386ABDC(v7);
    sub_1B386D570(v7, a4, &qword_1EB857390, &qword_1B3D08BE8);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v5);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v5);
  }
}

uint64_t sub_1B386ABDC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B3C9AF68();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B3C9AF58();
  sub_1B3C9AF48();
  v3 = [objc_opt_self() processInfo];
  [v3 processIdentifier];

  sub_1B3C9D678();
  sub_1B3C9AF38();

  sub_1B3C9AF48();
  sub_1B3C9AF88();
  v4 = sub_1B3C9B798();
  v6 = v5;
  v8 = v7;
  sub_1B3C9B6B8();
  v9 = sub_1B3C9B778();
  v11 = v10;
  v13 = v12;

  sub_1B371B148(v4, v6, v8 & 1);

  sub_1B3C9BBC8();
  v14 = sub_1B3C9B758();
  v68 = v15;
  v69 = v14;
  v17 = v16;
  v19 = v18;

  sub_1B371B148(v9, v11, v13 & 1);

  v20 = sub_1B3C9B4F8();
  sub_1B3C9A738();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v17 & 1;
  v30 = sub_1B3C9B568();
  sub_1B3C9A738();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1B3C9BBC8();
  v39 = sub_1B3C9BBA8();

  LOBYTE(v11) = sub_1B3C9B508();
  v40 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857398, &unk_1B3D08BF0) + 36));
  v41 = *(sub_1B3C9AB78() + 20);
  v42 = *MEMORY[0x1E697F468];
  v43 = sub_1B3C9AFA8();
  (*(*(v43 - 8) + 104))(&v40[v41], v42, v43);
  __asm { FMOV            V0.2D, #6.0 }

  *v40 = _Q0;
  *&v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB854570, &qword_1B3D02B80) + 36)] = 256;
  *a1 = v69;
  *(a1 + 8) = v68;
  *(a1 + 16) = v29;
  *(a1 + 24) = v19;
  *(a1 + 32) = v20;
  *(a1 + 40) = v22;
  *(a1 + 48) = v24;
  *(a1 + 56) = v26;
  *(a1 + 64) = v28;
  *(a1 + 72) = 0;
  *(a1 + 80) = v30;
  *(a1 + 88) = v32;
  *(a1 + 96) = v34;
  *(a1 + 104) = v36;
  *(a1 + 112) = v38;
  *(a1 + 120) = 0;
  *(a1 + 128) = v39;
  *(a1 + 136) = v11;
  LOBYTE(v40) = sub_1B3C9B518();
  sub_1B3C9A738();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8573A0, &qword_1B3D08C00) + 36);
  *v57 = v40;
  *(v57 + 8) = v50;
  *(v57 + 16) = v52;
  *(v57 + 24) = v54;
  *(v57 + 32) = v56;
  *(v57 + 40) = 0;
  LOBYTE(v40) = sub_1B3C9B558();
  sub_1B3C9A738();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857390, &qword_1B3D08BE8);
  v67 = a1 + *(result + 36);
  *v67 = v40;
  *(v67 + 8) = v59;
  *(v67 + 16) = v61;
  *(v67 + 24) = v63;
  *(v67 + 32) = v65;
  *(v67 + 40) = 0;
  return result;
}

id sub_1B386AFDC()
{
  v0 = [objc_opt_self() px_contentLoadingView];

  return v0;
}

uint64_t sub_1B386B020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B386D004();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1B386B084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B386D004();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1B386B0E8(uint64_t a1)
{
  sub_1B386D004();
  sub_1B3C9B138();
  __break(1u);
}

unint64_t sub_1B386B11C()
{
  result = qword_1EB8573A8;
  if (!qword_1EB8573A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8573A8);
  }

  return result;
}

unint64_t sub_1B386B170()
{
  result = qword_1EB8573B0;
  if (!qword_1EB8573B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8573B0);
  }

  return result;
}

unint64_t sub_1B386B1C4()
{
  result = qword_1EB8573C0;
  if (!qword_1EB8573C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8573B8, &qword_1B3D08C08);
    sub_1B386B11C();
    sub_1B386B170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8573C0);
  }

  return result;
}

unint64_t sub_1B386B250()
{
  result = qword_1EB8573C8;
  if (!qword_1EB8573C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8573C8);
  }

  return result;
}

unint64_t sub_1B386B2C0()
{
  result = qword_1EB8573D0;
  if (!qword_1EB8573D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857380, &qword_1B3D08BD8);
    sub_1B386B378();
    sub_1B3787F14(&qword_1EB8573F8, &qword_1EB857388, &qword_1B3D08BE0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8573D0);
  }

  return result;
}

unint64_t sub_1B386B378()
{
  result = qword_1EB8573D8;
  if (!qword_1EB8573D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8573E0, &qword_1B3D08C88);
    sub_1B386B3FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8573D8);
  }

  return result;
}

unint64_t sub_1B386B3FC()
{
  result = qword_1EB8573E8;
  if (!qword_1EB8573E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8573F0, &qword_1B3D08C90);
    sub_1B386B1C4();
    sub_1B386B250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8573E8);
  }

  return result;
}

id sub_1B386B4A8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (**a3)(uint64_t a1)@<X8>)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *a3 = sub_1B386D058;
  a3[1] = v5;

  return a2;
}

uint64_t sub_1B386B518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B3C9B1D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857408, &qword_1B3D08DC8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16[-v11];
  sub_1B3C9A988();
  v17 = a2;
  v18 = a3;
  v19 = v13;
  v20 = v14;
  sub_1B3C9B4D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857410, &qword_1B3D08DD0);
  sub_1B386D06C();
  sub_1B3C9A7A8();
  sub_1B3C9B1C8();
  LOBYTE(a3) = sub_1B3C9B4D8();
  sub_1B3C9B4C8();
  sub_1B3C9B4C8();
  if (sub_1B3C9B4C8() != a3)
  {
    sub_1B3C9B4C8();
  }

  sub_1B3787F14(&qword_1EB857440, &qword_1EB857408, &qword_1B3D08DC8, MEMORY[0x1E697BE60]);
  sub_1B3C9B9E8();
  (*(v6 + 8))(v8, v5);
  return (*(v10 + 8))(v12, v9);
}

void *sub_1B386B780@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857428, &qword_1B3D08DD8);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = __src - v10;
  *v11 = sub_1B3C9AFF8();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857448, &qword_1B3D08DE8);
  sub_1B386B958(a1, a2, &v11[*(v12 + 44)], 15.0);
  LOBYTE(a2) = sub_1B3C9B4F8();
  sub_1B3C9A738();
  v13 = &v11[*(v9 + 44)];
  *v13 = a2;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  sub_1B3C9C008();
  sub_1B3C9AB98();
  sub_1B3708DD4(v11, a3);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857410, &qword_1B3D08DD0);
  return memcpy((a3 + *(v18 + 36)), __src, 0x70uLL);
}

uint64_t sub_1B386B958@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857450, &qword_1B3D08DF0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857458, &qword_1B3D08DF8);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v52 - v19);
  *v20 = sub_1B3C9AFF8();
  v20[1] = a4;
  *(v20 + 16) = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857460, &qword_1B3D08E00);
  sub_1B386BE04(v20 + *(v21 + 44));
  v22 = sub_1B3C9B4F8();
  sub_1B3C9A738();
  v23 = v20 + *(v15 + 44);
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  v56 = sub_1B3C9AFF8();
  LOBYTE(v61[0]) = 0;
  sub_1B386C410(a1, a2, v59);
  *&v58[7] = v59[0];
  *&v58[23] = v59[1];
  *&v58[39] = v59[2];
  *&v58[55] = v59[3];
  v54 = LOBYTE(v61[0]);
  v55 = sub_1B3C9B528();
  sub_1B3C9A738();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = swift_allocObject();
  *(v36 + 16) = a1;
  *(v36 + 24) = a2;
  v37 = a2;
  sub_1B3C9BCE8();
  v38 = sub_1B3C9BB28();
  KeyPath = swift_getKeyPath();
  v40 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853378, &qword_1B3CFF2F8) + 36)];
  *v40 = KeyPath;
  v40[1] = v38;
  LOBYTE(v38) = sub_1B3C9B528();
  sub_1B3C9A738();
  v41 = &v13[*(v9 + 44)];
  v52 = v13;
  v53 = v17;
  *v41 = v38;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  sub_1B37772C8(v20, v17, &qword_1EB857458, &qword_1B3D08DF8);
  v46 = v57;
  sub_1B37772C8(v13, v57, &qword_1EB857450, &qword_1B3D08DF0);
  *a3 = 0;
  *(a3 + 8) = 1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857468, &qword_1B3D08E40);
  sub_1B37772C8(v17, a3 + v47[12], &qword_1EB857458, &qword_1B3D08DF8);
  v48 = a3 + v47[16];
  *v48 = a4;
  *(v48 + 8) = 0;
  v49 = v47[20];
  v50 = v56;
  v60[0] = v56;
  *&v60[1] = a4;
  LOBYTE(v13) = v54;
  LOBYTE(v60[2]) = v54;
  memcpy(&v60[2] + 1, v58, 0x47uLL);
  LOBYTE(KeyPath) = v55;
  LOBYTE(v60[11]) = v55;
  v60[12] = v29;
  v60[13] = v31;
  v60[14] = v33;
  v60[15] = v35;
  LOBYTE(v60[16]) = 0;
  memcpy((a3 + v49), v60, 0x81uLL);
  sub_1B37772C8(v46, a3 + v47[24], &qword_1EB857450, &qword_1B3D08DF0);
  sub_1B37772C8(v60, v61, &qword_1EB857470, &qword_1B3D08E48);
  sub_1B386D51C(v52, &qword_1EB857450);
  sub_1B386D51C(v20, &qword_1EB857458);
  sub_1B386D51C(v46, &qword_1EB857450);
  v61[0] = v50;
  *&v61[1] = a4;
  v62 = v13;
  memcpy(v63, v58, 0x47uLL);
  v63[71] = KeyPath;
  v64 = v29;
  v65 = v31;
  v66 = v33;
  v67 = v35;
  v68 = 0;
  sub_1B386D51C(v61, &qword_1EB857470);
  return sub_1B386D51C(v53, &qword_1EB857458);
}

uint64_t sub_1B386BE04@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857478, &qword_1B3D08E50);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v70 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v60 - v5;
  v7 = sub_1B3C9C5A8();
  v8 = PULocalizedString(v7);

  v9 = sub_1B3C9C5E8();
  v11 = v10;

  v12 = sub_1B3C9C5A8();
  v13 = PULocalizedString(v12);

  v66 = sub_1B3C9C5E8();
  v65 = v14;

  *v6 = sub_1B3C9AF18();
  *(v6 + 8) = 0x402E000000000000;
  *(v6 + 16) = 0;
  v64 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857480, &qword_1B3D08E58);
  v74 = &unk_1F2AB3B28;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857488, &qword_1B3D08E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857490, &qword_1B3D08E88);
  sub_1B3787F14(&qword_1EB857498, &qword_1EB857488, &qword_1B3D08E80, MEMORY[0x1E69E6338]);
  sub_1B386D2C0();
  sub_1B3C9BE88();
  LOBYTE(v12) = sub_1B3C9B528();
  sub_1B3C9A738();
  v15 = v6 + *(v2 + 44);
  *v15 = v12;
  *(v15 + 8) = v16;
  *(v15 + 16) = v17;
  *(v15 + 24) = v18;
  *(v15 + 32) = v19;
  *(v15 + 40) = 0;
  v74 = v9;
  v75 = v11;
  sub_1B371B158();
  v20 = sub_1B3C9B7A8();
  v22 = v21;
  LOBYTE(v9) = v23;
  sub_1B3C9B5F8();
  v24 = sub_1B3C9B778();
  v26 = v25;
  LOBYTE(v13) = v27;

  sub_1B371B148(v20, v22, v9 & 1);

  sub_1B3C9B628();
  v68 = sub_1B3C9B738();
  v62 = v28;
  v63 = v29;
  v69 = v30;
  sub_1B371B148(v24, v26, v13 & 1);

  KeyPath = swift_getKeyPath();
  v74 = v66;
  v75 = v65;
  v31 = sub_1B3C9B7A8();
  v33 = v32;
  LOBYTE(v6) = v34;
  sub_1B3C9B5E8();
  v35 = sub_1B3C9B778();
  v37 = v36;
  LOBYTE(v11) = v38;

  sub_1B371B148(v31, v33, v6 & 1);

  sub_1B3C9BBC8();
  v39 = sub_1B3C9B758();
  v66 = v39;
  v41 = v40;
  v65 = v40;
  LOBYTE(v33) = v42;
  v44 = v43;

  sub_1B371B148(v35, v37, v11 & 1);

  v60 = swift_getKeyPath();
  LOBYTE(v11) = v33 & 1;
  LOBYTE(v74) = v33 & 1;
  v45 = v64;
  v46 = v70;
  sub_1B37772C8(v64, v70, &qword_1EB857478, &qword_1B3D08E50);
  v47 = v67;
  sub_1B37772C8(v46, v67, &qword_1EB857478, &qword_1B3D08E50);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8574C8, &qword_1B3D08EF0);
  v49 = v47 + *(v48 + 48);
  v50 = v68;
  v51 = v69;
  v52 = v62;
  *v49 = v68;
  *(v49 + 8) = v52;
  LOBYTE(v35) = v63 & 1;
  *(v49 + 16) = v63 & 1;
  v53 = KeyPath;
  *(v49 + 24) = v51;
  *(v49 + 32) = v53;
  *(v49 + 40) = 1;
  v54 = (v47 + *(v48 + 64));
  *&v72 = v39;
  *(&v72 + 1) = v41;
  v73[0] = v11;
  *&v73[1] = v71[0];
  *&v73[4] = *(v71 + 3);
  *&v73[8] = v44;
  v55 = v44;
  v56 = v60;
  *&v73[16] = v60;
  *&v73[24] = 1;
  v73[26] = 1;
  v57 = *v73;
  *v54 = v72;
  v54[1] = v57;
  *(v54 + 27) = *&v73[11];
  v58 = v52;
  sub_1B370EFD4(v50, v52, v35);

  sub_1B37772C8(&v72, &v74, &qword_1EB8574D0, &qword_1B3D08EF8);
  sub_1B386D51C(v45, &qword_1EB857478);
  v74 = v66;
  v75 = v65;
  v76 = v11;
  *v77 = v71[0];
  *&v77[3] = *(v71 + 3);
  v78 = v55;
  v79 = v56;
  v80 = 1;
  v81 = 1;
  sub_1B386D51C(&v74, &qword_1EB8574D0);
  sub_1B371B148(v68, v58, v35);

  return sub_1B386D51C(v70, &qword_1EB857478);
}

uint64_t sub_1B386C410@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B3C9C5A8();
  v7 = PULocalizedString(v6);

  v8 = sub_1B3C9C5E8();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = a2;
  v13 = sub_1B3C9C5A8();
  v14 = PULocalizedString(v13);

  v15 = sub_1B3C9C5E8();
  v17 = v16;

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = v12;
  *a3 = v8;
  a3[1] = v10;
  a3[2] = sub_1B386D278;
  a3[3] = v11;
  a3[4] = v15;
  a3[5] = v17;
  a3[6] = sub_1B386D29C;
  a3[7] = v18;
  v19 = v12;
}

uint64_t sub_1B386C574@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B3C9C5A8();
  v3 = PULocalizedString(v2);

  sub_1B3C9C5E8();
  sub_1B371B158();
  v4 = sub_1B3C9B7A8();
  v6 = v5;
  v8 = v7;
  sub_1B3C9B6D8();
  v9 = sub_1B3C9B778();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  sub_1B371B148(v4, v6, v8 & 1);

  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_1B386C68C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8574D8, &qword_1B3D08F00);
  MEMORY[0x1EEE9AC00](v41);
  v40 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v39 - v5;
  v7 = sub_1B3C9AAF8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8574B8, &unk_1B3D08EA0);
  MEMORY[0x1EEE9AC00](v14);
  v43 = v39 - v15;
  v16 = [objc_opt_self() fallbackSystemImageNameForSingleSmartAlbumType_];
  sub_1B3C9C5E8();

  v17 = sub_1B3C9BC38();
  v18 = sub_1B3C9B578();
  KeyPath = swift_getKeyPath();
  v44 = v17;
  v45 = KeyPath;
  v39[1] = KeyPath;
  v39[2] = v18;
  v46 = v18;
  v20 = v8;
  v21 = *(v8 + 104);
  v21(v13, *MEMORY[0x1E697E6F8], v7);
  v21(v10, *MEMORY[0x1E697E6E8], v7);
  sub_1B386D924(&qword_1EB8574E0, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  result = sub_1B3C9C518();
  if (result)
  {
    v39[0] = v17;
    v23 = *(v8 + 32);
    v23(v6, v13, v7);
    v24 = v41;
    v23(&v6[*(v41 + 48)], v10, v7);
    v25 = v40;
    sub_1B37772C8(v6, v40, &qword_1EB8574D8, &qword_1B3D08F00);
    v26 = *(v24 + 48);
    v23(v43, v25, v7);
    v27 = *(v20 + 8);
    v27(v25 + v26, v7);
    sub_1B386D570(v6, v25, &qword_1EB8574D8, &qword_1B3D08F00);
    v28 = *(v24 + 48);
    v29 = v43;
    v23(&v43[*(v14 + 36)], (v25 + v28), v7);
    v27(v25, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB852250, &qword_1B3CF9F70);
    sub_1B371B4D0();
    sub_1B3787F14(&qword_1EB8574C0, &qword_1EB8574B8, &unk_1B3D08EA0, MEMORY[0x1E69E5FB8]);
    v30 = v42;
    sub_1B3C9B938();
    sub_1B386D51C(v29, &qword_1EB8574B8);

    v31 = (v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8574B0, &unk_1B3D08E90) + 36));
    v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8562C8, &unk_1B3D08EB0) + 28);
    v33 = *MEMORY[0x1E69816C0];
    v34 = sub_1B3C9BC68();
    (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
    *v31 = swift_getKeyPath();
    v35 = [objc_opt_self() systemGray2Color];
    v36 = sub_1B3C9BAF8();
    v37 = swift_getKeyPath();
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857490, &qword_1B3D08E88);
    v38 = (v30 + *(result + 36));
    *v38 = v37;
    v38[1] = v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B386CBC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1B3C9B428();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v32[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8574F8, &qword_1B3D09028);
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32[-v18];
  v33 = a1;
  v34 = a2;
  v35 = a3;
  v36 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857500, &qword_1B3D09030);
  sub_1B386D5F0();
  sub_1B3C9BCE8();
  v20 = &v19[*(v16 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857520, &qword_1B3D09040);
  sub_1B3C9ABA8();
  *v20 = swift_getKeyPath();
  sub_1B3C9B418();
  sub_1B386D840();
  sub_1B386D924(&qword_1EB857548, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
  sub_1B3C9B858();
  (*(v12 + 8))(v15, v10);
  sub_1B386D51C(v19, &qword_1EB8574F8);
  v21 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857550, &unk_1B3D09080) + 36));
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB852F70, &qword_1B3CFE760) + 28);
  v23 = *MEMORY[0x1E697DC10];
  sub_1B3C9A7D8();
  OUTLINED_FUNCTION_0_1();
  (*(v24 + 104))(v21 + v22, v23);
  *v21 = swift_getKeyPath();
  v25 = sub_1B3C9BB88();
  KeyPath = swift_getKeyPath();
  v27 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857558, &qword_1B3D090C0) + 36));
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = sub_1B3C9BB48();
  v29 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857560, &qword_1B3D090C8);
  v31 = (a5 + *(result + 36));
  *v31 = v29;
  v31[1] = v28;
  return result;
}

void *sub_1B386CEF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __src[0] = a1;
  __src[1] = a2;
  sub_1B371B158();

  v4 = sub_1B3C9B7A8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1B3C9C008();
  sub_1B3C9AB98();
  v11 = v8 & 1;
  v12 = sub_1B3C9B6D8();
  KeyPath = swift_getKeyPath();
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v11;
  *(a3 + 24) = v10;
  result = memcpy((a3 + 32), __src, 0x70uLL);
  *(a3 + 144) = KeyPath;
  *(a3 + 152) = v12;
  return result;
}

unint64_t sub_1B386D004()
{
  result = qword_1EB857400;
  if (!qword_1EB857400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857400);
  }

  return result;
}

unint64_t sub_1B386D06C()
{
  result = qword_1EB857418;
  if (!qword_1EB857418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857410, &qword_1B3D08DD0);
    sub_1B386D0F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857418);
  }

  return result;
}

unint64_t sub_1B386D0F8()
{
  result = qword_1EB857420;
  if (!qword_1EB857420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857428, &qword_1B3D08DD8);
    sub_1B3787F14(&qword_1EB857430, &unk_1EB857438, &unk_1B3D08DE0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857420);
  }

  return result;
}

uint64_t sub_1B386D224()
{
  OUTLINED_FUNCTION_0_7();
  result = sub_1B3C9AE58();
  *v0 = result;
  return result;
}

unint64_t sub_1B386D2C0()
{
  result = qword_1EB8574A0;
  if (!qword_1EB8574A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857490, &qword_1B3D08E88);
    sub_1B386D378();
    sub_1B3787F14(&qword_1EB852268, &qword_1EB852270, &qword_1B3CFB360, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8574A0);
  }

  return result;
}

unint64_t sub_1B386D378()
{
  result = qword_1EB8574A8;
  if (!qword_1EB8574A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8574B0, &unk_1B3D08E90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB852250, &qword_1B3CF9F70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8574B8, &unk_1B3D08EA0);
    sub_1B371B4D0();
    sub_1B3787F14(&qword_1EB8574C0, &qword_1EB8574B8, &unk_1B3D08EA0, MEMORY[0x1E69E5FB8]);
    swift_getOpaqueTypeConformance2();
    sub_1B3787F14(&qword_1EB856330, &qword_1EB8562C8, &unk_1B3D08EB0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8574A8);
  }

  return result;
}

uint64_t sub_1B386D4CC()
{
  OUTLINED_FUNCTION_0_7();
  result = sub_1B3C9AD98();
  *v0 = result;
  return result;
}

uint64_t sub_1B386D51C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_29_3(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1B386D570(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_2(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_1();
  v5 = OUTLINED_FUNCTION_87();
  v6(v5);
  return v4;
}

unint64_t sub_1B386D5F0()
{
  result = qword_1EB857508;
  if (!qword_1EB857508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857500, &qword_1B3D09030);
    sub_1B386D6A8();
    sub_1B3787F14(&qword_1EB8515D8, &qword_1EB852260, &unk_1B3D004D0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857508);
  }

  return result;
}

unint64_t sub_1B386D6A8()
{
  result = qword_1EB857510;
  if (!qword_1EB857510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857518, &qword_1B3D09038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857510);
  }

  return result;
}

uint64_t sub_1B386D77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_0();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

unint64_t sub_1B386D840()
{
  result = qword_1EB857528;
  if (!qword_1EB857528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8574F8, &qword_1B3D09028);
    sub_1B3787F14(&qword_1EB857530, &unk_1EB857538, &unk_1B3D09078, MEMORY[0x1E697D680]);
    sub_1B3787F14(&qword_1EB857540, &qword_1EB857520, &qword_1B3D09040, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857528);
  }

  return result;
}

uint64_t sub_1B386D924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B386D96C(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_29_3(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    sub_1B3787F14(&qword_1EB852268, &qword_1EB852270, &qword_1B3CFB360, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B386DA48()
{
  result = qword_1EB857578;
  if (!qword_1EB857578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB857550, &unk_1B3D09080);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8574F8, &qword_1B3D09028);
    sub_1B3C9B428();
    sub_1B386D840();
    sub_1B386D924(&qword_1EB857548, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    sub_1B3787F14(&qword_1EB852F68, &qword_1EB852F70, &qword_1B3CFE760, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB857578);
  }

  return result;
}

uint64_t sub_1B386DB8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B386DBE8();
  *a1 = result;
  return result;
}

uint64_t sub_1B386DBB8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_1B386DC5C(v1);
}

uint64_t sub_1B386DBE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1B3C9A698();

  return v1;
}

uint64_t sub_1B386DC5C(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1B3C9A6A8();
}

char *sub_1B386DCC8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v43 = a2;
  v44 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857608, &qword_1B3D09260);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - v10;
  v12 = &v5[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_title];
  v13 = sub_1B3C9C5A8();
  v14 = PULocalizedString(v13);

  v15 = sub_1B3C9C5E8();
  v17 = v16;

  *v12 = v15;
  v12[1] = v17;
  v18 = &v5[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_selectionHandler];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v5[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_cancelHandler];
  *v19 = 0;
  *(v19 + 1) = 0;
  v20 = OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_previewMode;
  sub_1B3710718(0, &qword_1EB84F200, 0x1E69C3B18);
  v21 = [swift_getObjCClassFromMetadata() sharedInstance];
  v22 = [v21 colorGradeEditorPreviewMode];

  *&v5[v20] = v22;
  v23 = &v5[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutManagerObservation];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel__tungstenView;
  *&v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8575F8, &qword_1B3D09138);
  sub_1B3C9A678();
  (*(v9 + 32))(&v5[v24], v11, v8);
  *&v5[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel____lazy_storage___allItems] = 0;
  *&v5[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_storyModel] = a1;
  v25 = v43;
  *&v5[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_configuration] = v43;
  *&v5[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_mediaProvider] = a3;
  v26 = type metadata accessor for StoryColorGradeEditorLayoutSpecManager();
  v47.receiver = objc_allocWithZone(v26);
  v47.super_class = v26;
  v27 = a1;
  v28 = a3;
  v29 = v44;
  v30 = objc_msgSendSuper2(&v47, sel_initWithExtendedTraitCollection_options_, v44, 0);
  *&v5[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_specManager] = v30;
  v31 = v30;
  sub_1B38233E4();

  sub_1B370EF10(&v46, &v5[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutSpec]);
  *&v5[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_selectedItem] = v25;
  v32 = type metadata accessor for StoryColorGradeEditorViewModel(0);
  v45.receiver = v5;
  v45.super_class = v32;
  v33 = objc_msgSendSuper2(&v45, sel_init);
  v34 = *&v33[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_specManager];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v35 = v33;
  v36 = v34;

  v37 = sub_1B3C9CA58();
  v39 = v38;

  v40 = &v35[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutManagerObservation];
  *v40 = v37;
  v40[1] = v39;

  swift_unknownObjectRelease();
  return v35;
}

void sub_1B386E040(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a2)
    {
      sub_1B386E690(sub_1B386E874, 0);
    }
  }
}

id sub_1B386E0B4(id result)
{
  if (*&v1[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_selectedItem] != result)
  {
    return [v1 signalChange_];
  }

  return result;
}

id sub_1B386E0E0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_selectedItem);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_selectedItem) = a1;
  return sub_1B386E0B4(v2);
}

uint64_t sub_1B386E0F8(int64_t a1)
{
  v3 = *(sub_1B386E1F4() + 16);

  if (v3 <= a1)
  {
    return 0;
  }

  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel____lazy_storage___allItems);
    if (*(v5 + 16) > a1)
    {
      return *(v5 + 8 * a1 + 32);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B386E168(uint64_t a1)
{
  v2 = [objc_msgSend(*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_storyModel) colorGradingRepository)];
  swift_unknownObjectRelease();
  v3 = sub_1B3C9C5E8();

  return v3;
}

uint64_t sub_1B386E1F4()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel____lazy_storage___allItems;
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel____lazy_storage___allItems))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel____lazy_storage___allItems);
  }

  else
  {
    swift_getObjectType();
    v2 = sub_1B386E268(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1B386E268(uint64_t a1)
{
  v1 = [objc_msgSend(*(a1 + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_storyModel) colorGradingRepository)];
  swift_unknownObjectRelease();
  sub_1B3710718(0, &qword_1EB852330, 0x1E696AD98);
  v2 = sub_1B3C9C788();

  v3 = MEMORY[0x1E69E7CC0];
  v4 = 0x20u;
  do
  {
    v5 = *(&unk_1F2AB3690 + v4);
    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v13 = v6;
    MEMORY[0x1EEE9AC00](v6);
    v12[2] = &v13;
    v7 = sub_1B3876ED4(sub_1B386EC3C, v12, v2);

    if (v7)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B37EAD00(0, *(v3 + 16) + 1, 1);
        v3 = v14;
      }

      v10 = *(v3 + 16);
      v9 = *(v3 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1B37EAD00(v9 > 1, v10 + 1, 1);
        v3 = v14;
      }

      *(v3 + 16) = v10 + 1;
      *(v3 + 8 * v10 + 32) = v5;
    }

    v4 += 8;
  }

  while (v4 != 128);

  return v3;
}

uint64_t sub_1B386E438()
{
  result = sub_1B386DC5C(0);
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_selectionHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_selectionHandler + 8);
    v4 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_selectedItem);

    v2(v4);

    return sub_1B36F9DA0(v2, v3);
  }

  return result;
}

uint64_t sub_1B386E4C8()
{
  result = sub_1B386DC5C(0);
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_cancelHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_cancelHandler + 8);

    v2(v4);

    return sub_1B36F9DA0(v2, v3);
  }

  return result;
}

id sub_1B386E538()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_specManager];
  sub_1B38233E4();

  v3 = __swift_mutable_project_boxed_opaque_existential_1(v15, v15[3]);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6, v4);
  v8 = *v6;
  v13 = type metadata accessor for StoryColorGradeEditorConcreteLayoutSpec();
  v14 = &off_1F2AB9F38;
  *&v12 = v8;
  v9 = OBJC_IVAR____TtC15PhotosUIPrivate30StoryColorGradeEditorViewModel_layoutSpec;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(&v1[v9]);
  sub_1B370EF10(&v12, &v1[v9]);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return [v1 signalChange_];
}

void sub_1B386E690(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  aBlock[4] = sub_1B386EC08;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B386E804;
  aBlock[3] = &block_descriptor_53;
  v6 = _Block_copy(aBlock);

  v7.receiver = v2;
  v7.super_class = type metadata accessor for StoryColorGradeEditorViewModel(0);
  objc_msgSendSuper2(&v7, sel_performChanges_, v6);
  _Block_release(v6);
}

uint64_t sub_1B386E77C(uint64_t a1, void (*a2)())
{
  sub_1B37106B4(a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB857600, &qword_1B3D09210);
  swift_dynamicCast();
  a2();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B386E804(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[3] = swift_getObjectType();
  v5[0] = a2;

  swift_unknownObjectRetain();
  v3(v5);

  return __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

id sub_1B386E8D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryColorGradeEditorViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for StoryColorGradeEditorViewModel(uint64_t a1)
{
  result = qword_1EB8575E0;
  if (!qword_1EB8575E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B386EA78(uint64_t a1)
{
  sub_1B386EB54(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B386EB54(uint64_t a1)
{
  if (!qword_1EB8575F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8575F8, &qword_1B3D09138);
    v1 = sub_1B3C9A6B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB8575F0);
    }
  }
}

uint64_t sub_1B386EBC8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for StoryColorGradeEditorViewModel(0);
  result = sub_1B3C9A658();
  *a2 = result;
  return result;
}

id sub_1B386EC64(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for AttributeName(0);
  OUTLINED_FUNCTION_0_43();
  sub_1B3870AA8(v2, v3, &unk_1B3CF94C4);
  v4 = sub_1B3C9C4A8();

  v5 = [v1 initWithFontAttributes_];

  return v5;
}

id sub_1B386ED14(double a1, double a2, double a3, double a4)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_15();
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_titleAlignmentConstraints] = 0;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_subtitleLabelBottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView____lazy_storage___titleFontDescriptor] = 0;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView____lazy_storage___titleMultilineParagraphAttributes] = 0;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_maximumTitleFontSize] = 0x4040000000000000;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_minimumTitleFontSize] = 0x4038000000000000;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView____lazy_storage___titleMinimumFont] = 0;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView____lazy_storage___titleMaximumFont] = 0;
  *&v4[OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_titleAlignment] = 3;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for AmbientPhotoFrameCompactMetadataOverlayView();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  sub_1B386EF50();

  return v9;
}

void sub_1B386EE4C()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_15();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_titleAlignmentConstraints) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_subtitleLabelBottomConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView____lazy_storage___titleFontDescriptor) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView____lazy_storage___titleMultilineParagraphAttributes) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_maximumTitleFontSize) = 0x4040000000000000;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_minimumTitleFontSize) = 0x4038000000000000;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView____lazy_storage___titleMinimumFont) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView____lazy_storage___titleMaximumFont) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_titleAlignment) = 3;
  sub_1B3C9D4C8();
  __break(1u);
}

void sub_1B386EF50()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  [v2 setTextColor_];

  v5 = v2;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  swift_unknownObjectWeakAssign();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853948, &unk_1B3D092A0);
  inited = swift_initStackObject();
  v7 = MEMORY[0x1E69DB9C0];
  *(inited + 16) = xmmword_1B3CFC360;
  v8 = *v7;
  *(inited + 32) = v8;
  v9 = v8;
  v10 = sub_1B3C98328();
  v11 = sub_1B3710718(0, &qword_1EB852330, 0x1E696AD98);
  *(inited + 40) = v10;
  v12 = *MEMORY[0x1E69DB990];
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  v13 = v12;
  v14 = sub_1B3C98328();
  *(inited + 104) = v11;
  *(inited + 80) = v14;
  *(inited + 112) = sub_1B3C9CDE8();
  v15 = sub_1B3C9C5E8();
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 120) = v15;
  *(inited + 128) = v16;
  type metadata accessor for TraitKey(0);
  sub_1B3870AA8(&qword_1EB851010, type metadata accessor for TraitKey, &unk_1B3CF9508);
  v17 = sub_1B3C9C4D8();
  sub_1B3710718(0, &qword_1EB853950, 0x1E69DB880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853958, &unk_1B3D00680);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1B3CF6CE0;
  v19 = *MEMORY[0x1E69DB8F0];
  *(v18 + 32) = *MEMORY[0x1E69DB8F0];
  *(v18 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853960, &unk_1B3D092B0);
  *(v18 + 40) = v17;
  type metadata accessor for AttributeName(0);
  OUTLINED_FUNCTION_0_43();
  sub_1B3870AA8(v20, v21, &unk_1B3CF94C4);
  v22 = v19;

  v23 = sub_1B3C9C4D8();
  v51 = sub_1B386EC64(v23);
  v24 = [objc_opt_self() fontWithDescriptor:v51 size:18.0];
  [v5 setFont_];

  v25 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v26 = [v3 whiteColor];
  [v25 setTextColor_];

  v27 = v25;
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  swift_unknownObjectWeakAssign();
  v28 = [v5 lastBaselineAnchor];
  v29 = [v1 bottomAnchor];
  [v1 safeAreaInsets];
  v31 = [v28 constraintEqualToAnchor:v29 constant:-v30];

  v32 = OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_subtitleLabelBottomConstraint;
  v33 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_subtitleLabelBottomConstraint];
  *&v1[OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_subtitleLabelBottomConstraint] = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1B3D001A0;
  v35 = *&v1[v32];
  if (v35)
  {
    v36 = v34;
    v50 = objc_opt_self();
    v37 = v35;

    v36[4] = v37;
    v38 = [v27 lastBaselineAnchor];
    v39 = [v5 firstBaselineAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:-28.0];

    v36[5] = v40;
    v41 = [v27 widthAnchor];

    v42 = [v1 safeAreaLayoutGuide];
    v43 = [v42 widthAnchor];

    v44 = [v41 constraintLessThanOrEqualToAnchor:v43 multiplier:0.666666667];
    v36[6] = v44;
    v45 = [v5 widthAnchor];

    v46 = [v1 safeAreaLayoutGuide];
    v47 = [v46 widthAnchor];

    v48 = [v45 constraintLessThanOrEqualToAnchor:v47 multiplier:0.666666667];
    v36[7] = v48;
    sub_1B3710718(0, &qword_1EB84FE50, 0x1E696ACD8);
    v49 = sub_1B3C9C778();

    [v50 activateConstraints_];

    sub_1B386FFB4();
    sub_1B3870354();
  }

  else
  {
    __break(1u);
  }
}

void sub_1B386F5C8(uint64_t a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AmbientPhotoFrameCompactMetadataOverlayView();
  objc_msgSendSuper2(&v5, sel_safeAreaInsetsDidChange);
  v2 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_subtitleLabelBottomConstraint];
  if (v2)
  {
    v3 = v2;
    [v1 safeAreaInsets];
    [v3 setConstant_];
  }
}

void sub_1B386F68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B386FDAC(a1, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1B371B158();
    v6 = sub_1B3C9D1B8();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853940, &unk_1B3D00670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B3CF6CE0;
    v10 = *MEMORY[0x1E69DB748];
    *(inited + 64) = MEMORY[0x1E69E6530];
    *(inited + 32) = v10;
    *(inited + 40) = 2;
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_1_42();
    sub_1B3870AA8(v11, v12, &unk_1B3CF7C10);
    v13 = v10;
    v14 = sub_1B3C9C4D8();
    v15 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
    v16 = sub_1B3870904(v6, v8, v14);
    [v5 setAttributedText_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1B386F7FC()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView____lazy_storage___titleFontDescriptor;
  v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView____lazy_storage___titleFontDescriptor);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView____lazy_storage___titleFontDescriptor);
  }

  else
  {
    v4 = sub_1B386F85C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_1B386F85C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853948, &unk_1B3D092A0);
  inited = swift_initStackObject();
  v1 = MEMORY[0x1E69DB9C0];
  *(inited + 16) = xmmword_1B3CFC360;
  v2 = *v1;
  *(inited + 32) = v2;
  v3 = v2;
  v4 = sub_1B3C98328();
  v5 = sub_1B3710718(0, &qword_1EB852330, 0x1E696AD98);
  *(inited + 40) = v4;
  v6 = *MEMORY[0x1E69DB990];
  *(inited + 64) = v5;
  *(inited + 72) = v6;
  v7 = v6;
  v8 = sub_1B3C98328();
  *(inited + 104) = v5;
  *(inited + 80) = v8;
  *(inited + 112) = sub_1B3C9CDE8();
  v9 = sub_1B3C9C5E8();
  *(inited + 144) = MEMORY[0x1E69E6158];
  *(inited + 120) = v9;
  *(inited + 128) = v10;
  type metadata accessor for TraitKey(0);
  sub_1B3870AA8(&qword_1EB851010, type metadata accessor for TraitKey, &unk_1B3CF9508);
  v11 = sub_1B3C9C4D8();
  sub_1B3710718(0, &qword_1EB853950, 0x1E69DB880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853958, &unk_1B3D00680);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1B3CF6CE0;
  v13 = *MEMORY[0x1E69DB8F0];
  *(v12 + 32) = *MEMORY[0x1E69DB8F0];
  *(v12 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853960, &unk_1B3D092B0);
  *(v12 + 40) = v11;
  type metadata accessor for AttributeName(0);
  sub_1B3870AA8(&qword_1EB851000, type metadata accessor for AttributeName, &unk_1B3CF94C4);
  v14 = v13;
  v15 = sub_1B3C9C4D8();
  return sub_1B386EC64(v15);
}

uint64_t sub_1B386FAA4()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView____lazy_storage___titleMultilineParagraphAttributes;
  if (*(v0 + OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView____lazy_storage___titleMultilineParagraphAttributes))
  {
    v2 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView____lazy_storage___titleMultilineParagraphAttributes);
  }

  else
  {
    v2 = sub_1B386FB0C(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1B386FB0C(uint64_t a1)
{
  v2 = [objc_opt_self() defaultParagraphStyle];
  [v2 mutableCopy];

  sub_1B3C9D1E8();
  swift_unknownObjectRelease();
  v3 = sub_1B3710718(0, &qword_1EB854A18, 0x1E69DB7C8);
  swift_dynamicCast();
  v4 = v14;
  [v14 setAlignment_];
  [v4 setSpansAllLines_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB853940, &unk_1B3D00670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B3CFA2E0;
  v6 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  v7 = v6;
  v8 = sub_1B386FCE4();
  v9 = sub_1B3710718(0, &unk_1EB8553D0, 0x1E69DB878);
  v10 = MEMORY[0x1E69DB688];
  *(inited + 40) = v8;
  v11 = *v10;
  *(inited + 64) = v9;
  *(inited + 72) = v11;
  *(inited + 104) = v3;
  *(inited + 80) = v4;
  type metadata accessor for Key(0);
  sub_1B3870AA8(&qword_1EB850B88, type metadata accessor for Key, &unk_1B3CF7C10);
  v12 = v11;
  return sub_1B3C9C4D8();
}

id sub_1B386FD08(uint64_t *a1, double a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v7 = sub_1B386F7FC();
    v8 = [objc_opt_self() fontWithDescriptor:v7 size:a2];

    v9 = *(v2 + v3);
    *(v2 + v3) = v8;
    v5 = v8;

    v4 = 0;
  }

  v10 = v4;
  return v5;
}

void sub_1B386FDAC(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1B38709CC(a1, a2, Strong);
    [Strong setAdjustsFontSizeToFitWidth_];
    v4 = sub_1B386FCE4();
    [Strong setFont_];

    v5 = [Strong setNumberOfLines_];
    OUTLINED_FUNCTION_3_40(v5, v6, v7, v8, v9, v10, v11, v12, v28, Strong);
    v14 = v13;
    v15 = [v31 setNumberOfLines_];
    OUTLINED_FUNCTION_3_40(v15, v16, v17, v18, v19, v20, v21, v22, v29, v31);
    if (v23 == v14)
    {
      v24 = sub_1B386FCF4();
      [v32 setFont_];

      [v32 setNumberOfLines_];
      [v32 setMinimumScaleFactor_];
      [v32 setAdjustsFontSizeToFitWidth_];
    }

    else
    {

      v25 = sub_1B386FAA4();
      v26 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v27 = sub_1B3870904(a1, a2, v25);
      [v32 setAttributedText_];
    }
  }
}

void sub_1B386FF80(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_titleAlignment) != result)
  {
    sub_1B386FFB4();
  }
}

void sub_1B386FF9C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_titleAlignment);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_titleAlignment) = a1;
  sub_1B386FF80(v2);
}

void sub_1B386FFB4()
{
  v1 = OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_titleAlignmentConstraints;
  if (*&v0[OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_titleAlignmentConstraints])
  {
    v2 = objc_opt_self();
    sub_1B3710718(0, &qword_1EB84FE50, 0x1E696ACD8);

    v3 = sub_1B3C9C778();

    [v2 deactivateConstraints_];

    *&v0[v1] = 0;
  }

  v4 = *&v0[OBJC_IVAR____TtC15PhotosUIPrivate43AmbientPhotoFrameCompactMetadataOverlayView_titleAlignment];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B3CFB680;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = Strong;
  if (v4 == 2)
  {
    if (!Strong)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v8 = &selRef_leftAnchor;
    v9 = [Strong leftAnchor];

    v10 = [v0 safeAreaLayoutGuide];
    v11 = [v10 leftAnchor];

    v12 = [v9 constraintEqualToAnchor_];
    *(v5 + 32) = v12;
    v13 = swift_unknownObjectWeakLoadStrong();
    if (!v13)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v14 = v13;
    v15 = 0;
  }

  else
  {
    if (!Strong)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = &selRef_rightAnchor;
    v16 = [Strong rightAnchor];

    v17 = [v0 safeAreaLayoutGuide];
    v18 = [v17 rightAnchor];

    v19 = [v16 constraintEqualToAnchor_];
    *(v5 + 32) = v19;
    v20 = swift_unknownObjectWeakLoadStrong();
    if (!v20)
    {
LABEL_20:
      __break(1u);
      return;
    }

    v14 = v20;
    v15 = 2;
  }

  v21 = [v14 *v8];

  v22 = [v0 safeAreaLayoutGuide];
  v23 = [v22 *v8];

  v24 = [v21 constraintEqualToAnchor_];
  *(v5 + 40) = v24;
  v25 = objc_opt_self();
  sub_1B3710718(0, &qword_1EB84FE50, 0x1E696ACD8);
  v26 = sub_1B3C9C778();
  [v25 activateConstraints_];

  *&v0[v1] = v5;

  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27)
  {
    __break(1u);
    goto LABEL_16;
  }

  v28 = v27;
  [v27 setTextAlignment_];

  v29 = swift_unknownObjectWeakLoadStrong();
  if (!v29)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v30 = v29;
  [v29 setTextAlignment_];
}

void sub_1B3870354()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69C35B8]) init];
  v2 = objc_opt_self();
  v3 = [v2 blackColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = [v2 blackColor];
  v6 = [v5 colorWithAlphaComponent_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB853EE0, &unk_1B3CFA830);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B3CFB680;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v31 = v4;
  v8 = v6;
  sub_1B3870A24(v7, v1, &unk_1EB8525D0, 0x1E69DC888, &selRef_setColors_);
  [v1 setStartPoint_];
  [v1 setEndPoint_];
  v9 = v1;
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  v12 = [objc_opt_self() functionWithName_];
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B3CFB680;
  *(v13 + 32) = v12;
  *(v13 + 40) = v12;
  v14 = v12;
  sub_1B3870A24(v13, v11, &qword_1EB857668, 0x1E69793D0, &selRef_setInterpolations_);
  [v9 setUserInteractionEnabled_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [v0 insertSubview:v9 atIndex:0];
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B3D001A0;
  v16 = [v9 leadingAnchor];
  v17 = [v0 leadingAnchor];
  v18 = OUTLINED_FUNCTION_2_39();

  *(v15 + 32) = v18;
  v19 = [v9 trailingAnchor];
  v20 = [v0 trailingAnchor];
  v21 = OUTLINED_FUNCTION_2_39();

  *(v15 + 40) = v21;
  v22 = [v9 bottomAnchor];
  v23 = [v0 bottomAnchor];
  v24 = OUTLINED_FUNCTION_2_39();

  *(v15 + 48) = v24;
  v25 = [v9 topAnchor];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v28 = objc_opt_self();
    v29 = [v27 topAnchor];

    v30 = [v25 constraintEqualToAnchor:v29 constant:-50.0];
    *(v15 + 56) = v30;
    sub_1B3710718(0, &qword_1EB84FE50, 0x1E696ACD8);
    v32 = sub_1B3C9C778();

    [v28 activateConstraints_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1B3870800(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AmbientPhotoFrameCompactMetadataOverlayView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1B3870904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B3C9C5A8();

  if (a3)
  {
    type metadata accessor for Key(0);
    OUTLINED_FUNCTION_1_42();
    sub_1B3870AA8(v6, v7, &unk_1B3CF7C10);
    v8 = sub_1B3C9C4A8();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 initWithString:v5 attributes:v8];

  return v9;
}

void sub_1B38709CC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1B3C9C5A8();
  [a3 setText_];
}

void sub_1B3870A24(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_1B3710718(0, a3, a4);
  v7 = sub_1B3C9C778();

  [a2 *a5];
}

uint64_t sub_1B3870AA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id OUTLINED_FUNCTION_2_39()
{

  return [v1 (v0 + 3941)];
}

id OUTLINED_FUNCTION_3_40(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id a10)
{

  return [a10 (v10 + 1466)];
}

char *sub_1B3870B2C(void *a1, void *a2, char a3)
{
  v89 = *MEMORY[0x1E69E9840];
  v7 = sub_1B3C9A558();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v84 - v15;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_renderEffect] = 0;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_unlockProgress] = 0;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_backlightProgress] = 0x3FF0000000000000;
  v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isGeneratingPoster] = 0;
  v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableOcclusion] = 0;
  v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableGyroAnimator] = 0;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_occlusionLayerView] = 0;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroAnimator] = 0;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneView] = 0;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_scene] = 0;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneData] = xmmword_1B3D092C0;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_deviceOrientation] = 0;
  v17 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_deviceOrientationChangedDate;
  v18 = sub_1B3C98118();
  __swift_storeEnumTagSinglePayload(&v3[v17], 1, 1, v18);
  v19 = OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_previousDeviceOrientationAttitude;
  v20 = sub_1B3C9A3F8();
  __swift_storeEnumTagSinglePayload(&v3[v19], 1, 1, v20);
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroDisabledAnimatorObservation] = 0u;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_zFocusAnimatorObservation] = 0u;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneMetadataObservation] = 0;
  sub_1B3C9A3D8();
  sub_1B3C9A0A8();
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView__currentLayoutInfo] = 0;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_currentBacklightLuminance] = -1;
  v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_hasAlwaysOnDisplayEnabled] = 1;
  if (!PLWallpaperGetLog())
  {
    __break(1u);
  }

  sub_1B3C9A568();
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_parallaxSpatialPhotoLayer] = a1;
  v21 = objc_allocWithZone(MEMORY[0x1E69C4588]);
  v86 = a1;
  v22 = [v21 initWithValue_];
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroDisabledAnimator] = v22;
  v23 = [objc_allocWithZone(MEMORY[0x1E69C4588]) initWithValue_];
  v24 = &OBJC_IVAR___PUCropGestureHandler__animateEndGesture;
  *&v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_zFocusAnimator] = v23;
  v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isEditing] = a3 & 1;
  v25 = [objc_opt_self() processInfo];
  LOBYTE(v21) = [v25 isLowPowerModeEnabled];

  v3[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isLowPowerModeEnabled] = v21;
  v26 = type metadata accessor for PUParallaxSpatialPhotoLayerView(0);
  v88.receiver = v3;
  v88.super_class = v26;
  v27 = objc_msgSendSuper2(&v88, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v28 = v27;
  if (a2)
  {
    v29 = objc_opt_self();
    v30 = v28;
    v85 = a2;
    v31 = a2;
    v32 = [v29 standardUserDefaults];
    v33 = sub_1B3C9C5A8();
    v34 = [v32 BOOLForKey_];

    if (v34)
    {
      (*(v9 + 16))(v16, &v30[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_logger], v7);
      v35 = sub_1B3C9A538();
      v36 = sub_1B3C9CAE8();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_1B36F3000, v35, v36, "PU_DISABLE_AOD_RENDER_EFFECT active, skipping AOD render effect", v37, 2u);
        OUTLINED_FUNCTION_3_5();
      }

      else
      {
      }

      (*(v9 + 8))(v16, v7);
      a2 = v85;
      v39 = v86;
      goto LABEL_11;
    }

    v40 = objc_opt_self();
    v41 = [v31 data];
    v42 = sub_1B3C980A8();
    v44 = v43;

    v45 = sub_1B3C98088();
    v46 = sub_1B377659C(v42, v44);
    aBlock[0] = 0;
    v47 = [v40 loadFromSerializedData:v45 error:{aBlock, v46}];

    if (v47)
    {
      v48 = aBlock[0];
      v49 = v47;
      [v31 frame];
      OUTLINED_FUNCTION_6();
      v39 = v86;
      [v86 frame];
      type metadata accessor for PUParallaxSpatialPhotoInactiveEffect();
      swift_allocObject();
      OUTLINED_FUNCTION_17();
      sub_1B37DAC04(v50);
      *&v30[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_renderEffect] = v51;

      sub_1B38758FC();

      a2 = v85;
LABEL_11:
      v24 = &OBJC_IVAR___PUCropGestureHandler__animateEndGesture;
      goto LABEL_12;
    }

    v75 = aBlock[0];
    v76 = sub_1B3C97F28();

    swift_willThrow();
    (*(v9 + 16))(v13, &v30[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_logger], v7);
    v77 = v76;
    v78 = sub_1B3C9A538();
    v79 = sub_1B3C9CAC8();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = OUTLINED_FUNCTION_27_10();
      *v80 = 138412290;
      v82 = v76;
      v83 = _swift_stdlib_bridgeErrorToNSError();
      *(v80 + 4) = v83;
      *v81 = v83;
      _os_log_impl(&dword_1B36F3000, v78, v79, "Unable to load spatial photo scene from data:%@", v80, 0xCu);
      sub_1B36FB21C(v81, &qword_1EB8567E0, &qword_1B3CFA380);
      OUTLINED_FUNCTION_3_5();
      OUTLINED_FUNCTION_3_5();
    }

    else
    {
    }

    v24 = &OBJC_IVAR___PUCropGestureHandler__animateEndGesture;
    (*(v9 + 8))(v13, v7);
    a2 = v85;
    v39 = v86;
  }

  else
  {
    v38 = v27;
    v39 = v86;
  }

LABEL_12:
  v52 = *&v28[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroDisabledAnimator];
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = v28;
  v54 = v52;

  v55 = sub_1B3C9CA58();
  v57 = v56;

  v58 = &v53[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroDisabledAnimatorObservation];
  *v58 = v55;
  v58[1] = v57;
  swift_unknownObjectRelease();
  v59 = *&v53[*(v24 + 166)];
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = v59;

  v61 = sub_1B3C9CA58();
  v63 = v62;

  v64 = &v53[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_zFocusAnimatorObservation];
  *v64 = v61;
  v64[1] = v63;
  swift_unknownObjectRelease();
  sub_1B3873C0C();
  sub_1B3875CA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB856820, &unk_1B3CFC1E0);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_1B3CF6CE0;
  v66 = sub_1B3C9A5A8();
  v67 = MEMORY[0x1E69DC0E0];
  *(v65 + 32) = v66;
  *(v65 + 40) = v67;
  OUTLINED_FUNCTION_20();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1B3710718(0, &unk_1EB84F790, 0x1E69DD250);
  sub_1B3C9CF48();
  swift_unknownObjectRelease();

  v68 = [objc_opt_self() defaultCenter];
  v69 = sub_1B3C9CA88();
  v70 = [objc_opt_self() mainQueue];
  OUTLINED_FUNCTION_20();
  v71 = swift_allocObject();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1B3876CB4;
  aBlock[5] = v71;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B3871634;
  aBlock[3] = &block_descriptor_86;
  v72 = _Block_copy(aBlock);

  v73 = [v68 addObserverForName:v69 object:0 queue:v70 usingBlock:v72];
  _Block_release(v72);

  swift_unknownObjectRelease();
  return v53;
}

void sub_1B387158C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_4_21(a3 + 16, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    a4();
  }
}

void sub_1B38715E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1B3875CA0();
  }
}

uint64_t sub_1B3871634(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B3C97DB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1B3C97DA8();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_1B3871778()
{
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_renderEffect) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_unlockProgress) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_backlightProgress) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isGeneratingPoster) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableOcclusion) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableGyroAnimator) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_occlusionLayerView) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroAnimator) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneView) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_scene) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneData) = xmmword_1B3D092C0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_deviceOrientation) = 0;
  v1 = sub_1B3C98118();
  OUTLINED_FUNCTION_13_22(v1, v2, v3, v1);
  v4 = sub_1B3C9A3F8();
  OUTLINED_FUNCTION_13_22(v4, v5, v6, v4);
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroDisabledAnimatorObservation) = 0u;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_zFocusAnimatorObservation) = 0u;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneMetadataObservation) = 0;
  sub_1B3C9A3D8();
  sub_1B3C9A0A8();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView__currentLayoutInfo) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_currentBacklightLuminance) = -1;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_hasAlwaysOnDisplayEnabled) = 1;
  if (!PLWallpaperGetLog())
  {
    __break(1u);
  }

  sub_1B3C9A568();
  OUTLINED_FUNCTION_8_22("Fatal error", v7, v8, v9, v10, "PhotosUIPrivate/PUParallaxSpatialPhotoLayerView.swift", v11, v12, 66, 0);
  __break(1u);
}

void sub_1B387193C()
{
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_renderEffect) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_unlockProgress) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_backlightProgress) = 0x3FF0000000000000;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_isGeneratingPoster) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableOcclusion) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_enableGyroAnimator) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_occlusionLayerView) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroAnimator) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneView) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_scene) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneData) = xmmword_1B3D092C0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_deviceOrientation) = 0;
  v1 = sub_1B3C98118();
  OUTLINED_FUNCTION_13_22(v1, v2, v3, v1);
  v4 = sub_1B3C9A3F8();
  OUTLINED_FUNCTION_13_22(v4, v5, v6, v4);
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_gyroDisabledAnimatorObservation) = 0u;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_zFocusAnimatorObservation) = 0u;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneMetadataObservation) = 0;
  sub_1B3C9A3D8();
  sub_1B3C9A0A8();
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView__currentLayoutInfo) = 0;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_currentBacklightLuminance) = -1;
  *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_hasAlwaysOnDisplayEnabled) = 1;
  if (!PLWallpaperGetLog())
  {
    __break(1u);
  }

  sub_1B3C9A568();
  OUTLINED_FUNCTION_8_22("Fatal error", v7, v8, v9, v10, "PhotosUIPrivate/PUParallaxSpatialPhotoLayerView.swift", v11, v12, 70, 0);
  __break(1u);
}

void sub_1B3871B58(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_parallaxSpatialPhotoLayer);
  *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_parallaxSpatialPhotoLayer) = a1;
  v2 = a1;
  sub_1B3871BB8(v3);
}

void sub_1B3871BB8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_parallaxSpatialPhotoLayer);
  sub_1B3710718(0, &qword_1EB857718, 0x1E69C07B8);
  v3 = v2;
  v4 = sub_1B3C9CFA8();

  if ((v4 & 1) == 0)
  {
    sub_1B3873C0C();

    sub_1B38761E4();
  }
}

void sub_1B3871C68(void *a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for PUParallaxSpatialPhotoLayerView(0);
  objc_msgSendSuper2(&v4, sel_layoutWithInfo_, a1);
  v3 = a1;
  sub_1B38738A4(a1);
}

id sub_1B3871D24(char a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PUParallaxSpatialPhotoLayerView(0);
  v3 = objc_msgSendSuper2(&v11, sel_snapshotViewAfterScreenUpdates_, a1 & 1);
  v4 = [v1 currentLayoutInfo];
  if (v4)
  {
    v5 = v4;
    v6 = *&v1[OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneView];
    if (v6)
    {
      v7 = v6;
      v8 = [v7 snapshotViewAfterScreenUpdates_];
      if (v8)
      {
        v9 = v8;
        [v3 addSubview_];
        sub_1B3875F50(v9, v5);

        v5 = v7;
        v7 = v9;
      }

      v5 = v7;
    }
  }

  return v3;
}

void *sub_1B3871E98()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView__currentLayoutInfo);
  v2 = v1;
  return v1;
}

void *sub_1B3871F3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PhotosUIPrivate31PUParallaxSpatialPhotoLayerView_sceneView);
  v2 = v1;
  return v1;
}