void sub_1E38A2E40()
{
  v1 = v0;
  if ([*&v0[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player] currentMediaItem] && (ObjectType = swift_getObjectType(), v3 = MEMORY[0x1E69E6158], sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]), OUTLINED_FUNCTION_92_0(), sub_1E4123590(v4, v3, v5), swift_unknownObjectRelease(), (v6 = v41) != 0))
  {
    v7 = v40;
  }

  else
  {

    v7 = 0;
    v6 = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0, &unk_1E429EC50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v9;
  *(inited + 48) = sub_1E4205F14();
  *(inited + 56) = v10;
  *(inited + 64) = sub_1E4205F14();
  *(inited + 72) = v11;
  *(inited + 80) = v7;
  *(inited + 88) = v6;
  v12 = sub_1E4205CB4();
  OUTLINED_FUNCTION_21_6();
  v14 = (*(v13 + 168))();
  if (sub_1E389D688(v14, 3, v15))
  {
    v16 = sub_1E4205F14();
    sub_1E327D33C(v16, v17);
    if (v18)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v40 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A570, &qword_1E429DC30);
      sub_1E4207644();

      OUTLINED_FUNCTION_39_3();
      sub_1E4207664();
    }
  }

  v19 = sub_1E389D8C4();
  if (!v19 || (v20 = v19, OUTLINED_FUNCTION_64(), (*(v21 + 2328))(), v23 = v22, v20, !v23))
  {
  }

  v24 = objc_opt_self();
  v25 = sub_1E4205ED4();

  v26 = @"Player";
  v27 = sub_1E37E4D10(v12);

  v28 = sub_1E38A7618(v25, v26, v27, v24);

  v29 = [objc_opt_self() sharedInstance];
  [v29 recordPage_];

  if (sub_1E389D8C4())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v30 + 416))(&v40);

    if (v42)
    {
      __swift_project_boxed_opaque_existential_1(&v40, v42);
      OUTLINED_FUNCTION_91_3();
      v32 = v31;
      MEMORY[0x1EEE9AC00](v33);
      OUTLINED_FUNCTION_5();
      (*(v32 + 16))(v35 - v34);
      sub_1E325F6F0(&v40, &unk_1ECF296D0, &qword_1E429BAA0);
      v36 = OUTLINED_FUNCTION_90_4();
      v37(v36);
      v38 = OUTLINED_FUNCTION_16_0();
      v39(v38);
      sub_1E42048D4();
    }

    else
    {

      sub_1E325F6F0(&v40, &unk_1ECF296D0, &qword_1E429BAA0);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_95();
}

void sub_1E38A32E8(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController];
  if (v3)
  {
    v5 = v3;
    v6 = v1;
    v7 = sub_1E41FFC94();
    sub_1E4206814();

    if (OUTLINED_FUNCTION_84_1())
    {
      OUTLINED_FUNCTION_6_21();
      v8 = OUTLINED_FUNCTION_26_22();
      *v2 = 138412290;
      *(v2 + 4) = v6;
      *v8 = v6;
      v9 = v6;
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
      sub_1E325F6F0(v8, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    v15 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_isShowingShelf;
    swift_beginAccess();
    v6[v15] = 0;
    v16 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_inactivityTask;
    if (*&v6[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_inactivityTask])
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
      OUTLINED_FUNCTION_78_3();
    }

    *&v6[v16] = 0;

    sub_1E38A3710();
    v28 = objc_opt_self();
    OUTLINED_FUNCTION_4_0();
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_56_10(v29);
    v30 = swift_allocObject();
    *(v30 + 16) = v16;
    *(v30 + 24) = v5;
    v44 = sub_1E38A7850;
    v45 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1E378AEA4;
    v43 = &block_descriptor_119;
    v31 = _Block_copy(&aBlock);
    v32 = v5;

    OUTLINED_FUNCTION_4_0();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v32;
    *(v34 + 32) = a1 & 1;
    v44 = sub_1E38A7998;
    v45 = v34;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1E37EB82C;
    v43 = &block_descriptor_126;
    v35 = _Block_copy(&aBlock);
    v36 = v32;

    [v28 vui:v31 animateWithDuration:v35 animations:1.0 completion:?];
    _Block_release(v35);
    _Block_release(v31);
    if (sub_1E389D8C4())
    {
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_64();
      (*(v37 + 2440))(1, 0, 1, 0, 1);
    }
  }

  else
  {
    v17 = v1;
    v38 = sub_1E41FFC94();
    v18 = sub_1E4206814();

    if (OUTLINED_FUNCTION_82_5(v19, v20, v21, v22, v23, v24, v25, v26, v38))
    {
      OUTLINED_FUNCTION_6_21();
      v27 = OUTLINED_FUNCTION_11_41();
      OUTLINED_FUNCTION_13_15(v27, 5.7779e-34);
      OUTLINED_FUNCTION_53_15(&dword_1E323F000, v39, v18, "%@ Not dismissing post play shelf because shelfViewController is nil");
      sub_1E325F6F0(v27, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_7_9();
      OUTLINED_FUNCTION_51_2();
    }
  }
}

void sub_1E38A3710()
{
  v1 = v0;
  if (sub_1E389D8C4())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v2 + 416))(v23);

    if (v24)
    {
      sub_1E327F454(v23, v20);
      sub_1E325F6F0(v23, &unk_1ECF296D0, &qword_1E429BAA0);
      v4 = v21;
      v3 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v5 = (*(*(*(v3 + 8) + 8) + 40))(v4);
      __swift_destroy_boxed_opaque_existential_1(v20);
      if (v5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCE0, &unk_1E42A7D30);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1E4297BE0;
        *(inited + 32) = sub_1E3BA363C(2);
        *(inited + 40) = v7;
        *(inited + 48) = v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
        v8 = sub_1E4205CB4();
        v9 = [objc_opt_self() sharedInstance];
        sub_1E38A63A4(v8);

        sub_1E4205C44();
        OUTLINED_FUNCTION_31_4();

        [v9 recordImpressions_];
      }
    }

    else
    {
      sub_1E325F6F0(v23, &unk_1ECF296D0, &qword_1E429BAA0);
    }
  }

  if (sub_1E389D8C4())
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_64();
    (*(v10 + 416))(v23);

    if (v24)
    {
      __swift_project_boxed_opaque_existential_1(v23, v24);
      OUTLINED_FUNCTION_91_3();
      v12 = v11;
      MEMORY[0x1EEE9AC00](v13);
      OUTLINED_FUNCTION_5();
      (*(v12 + 16))(v15 - v14);
      sub_1E325F6F0(v23, &unk_1ECF296D0, &qword_1E429BAA0);
      v16 = OUTLINED_FUNCTION_90_4();
      v17(v16);
      v18 = OUTLINED_FUNCTION_16_0();
      v19(v18);
      sub_1E42048D4();
    }

    else
    {
      sub_1E325F6F0(v23, &unk_1ECF296D0, &qword_1E429BAA0);
    }
  }
}

void sub_1E38A3A5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - v3;
  v5 = *&v0[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController];
  if (!v5)
  {
LABEL_13:
    OUTLINED_FUNCTION_95();
    return;
  }

  v6 = objc_opt_self();
  v39 = v5;
  v7 = [v6 isFeatureEnabled_];
  v8 = v0;
  v9 = sub_1E41FFC94();
  v10 = sub_1E4206814();

  v11 = OUTLINED_FUNCTION_51_11();
  if ((v7 & 1) == 0)
  {
    if (v11)
    {
      OUTLINED_FUNCTION_6_21();
      v19 = OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_48_16(5.7779e-34);
      *v20 = v8;
      v21 = v8;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v22, v23, "%@ Starting inactivity timer");
      sub_1E325F6F0(v19, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    v24 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_inactivityTask;
    if (*&v8[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_inactivityTask])
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
      OUTLINED_FUNCTION_78_3();
    }

    sub_1E4206474();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    OUTLINED_FUNCTION_4_0();
    v29 = swift_allocObject();
    OUTLINED_FUNCTION_83_1(v29);
    swift_unknownObjectWeakInit();
    sub_1E4206434();
    v30 = v39;

    v31 = sub_1E4206424();
    v32 = swift_allocObject();
    v33 = MEMORY[0x1E69E85E0];
    v32[2] = v31;
    v32[3] = v33;
    v32[4] = v10;
    v32[5] = v30;

    v34 = OUTLINED_FUNCTION_23_7();
    v37 = sub_1E37748D8(v34, v35, v4, v36, v32);

    *&v8[v24] = v37;

    goto LABEL_13;
  }

  if (v11)
  {
    OUTLINED_FUNCTION_6_21();
    v12 = OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_13_15(v12, 5.7779e-34);
    OUTLINED_FUNCTION_20_34();
    OUTLINED_FUNCTION_53_15(v13, v14, v15, v16);
    sub_1E325F6F0(v12, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_51_2();
  }

  OUTLINED_FUNCTION_95();
}

uint64_t sub_1E38A3D34()
{
  OUTLINED_FUNCTION_24();
  v0[5] = v1;
  v0[6] = v2;
  v3 = sub_1E42075E4();
  v0[7] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[8] = v4;
  v0[9] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v0[10] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  v6 = sub_1E42063B4();
  v0[11] = v6;
  v0[12] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1E38A3E08, v6, v5);
}

uint64_t sub_1E38A3E08()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 104) = Strong;
  if (Strong)
  {
    (*((*MEMORY[0x1E69E7D40] & **(v0 + 48)) + 0x6C0))();
    sub_1E4207CA4();
    sub_1E4207AA4();
    OUTLINED_FUNCTION_40_4(&dword_1E42A6EA8);
    v6 = v2;
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = sub_1E38A3F78;
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_25();

    return v6();
  }

  else
  {

    OUTLINED_FUNCTION_15_12();

    return v5();
  }
}

uint64_t sub_1E38A3F78()
{
  OUTLINED_FUNCTION_134();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 120) = v0;

  v5 = OUTLINED_FUNCTION_24_4();
  v6(v5);
  v7 = *(v2 + 96);
  v8 = *(v2 + 88);
  if (v0)
  {
    v9 = sub_1E38A4290;
  }

  else
  {
    v9 = sub_1E38A4100;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E38A4100()
{
  OUTLINED_FUNCTION_134();
  v1 = *(v0 + 104);

  v2 = sub_1E4206504();
  v3 = v1;
  v4 = sub_1E41FFC94();
  sub_1E4206814();

  v5 = OUTLINED_FUNCTION_85_5();
  if (v2)
  {
    v6 = *(v0 + 104);
    if (v5)
    {
      OUTLINED_FUNCTION_6_21();
      v7 = OUTLINED_FUNCTION_9_44();
      v6 = OUTLINED_FUNCTION_33_23(v7, 5.7779e-34);
      OUTLINED_FUNCTION_71_10();
      OUTLINED_FUNCTION_50_6(v8, v9, v10, v11);
      sub_1E325F6F0(v7, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }
  }

  else
  {
    if (v5)
    {
      v12 = *(v0 + 104);
      v13 = OUTLINED_FUNCTION_6_21();
      v14 = OUTLINED_FUNCTION_160();
      *v13 = 138412290;
      *(v13 + 4) = v12;
      *v14 = v12;
      v15 = v12;
      OUTLINED_FUNCTION_71_10();
      OUTLINED_FUNCTION_102_6(v16, v17, v18, v19);
      sub_1E325F6F0(v14, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_6_0();
    }

    v6 = *(v0 + 104);

    sub_1E38A32E8(0);
  }

  OUTLINED_FUNCTION_15_12();

  return v20();
}

uint64_t sub_1E38A4290()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_54();

  return v2();
}

double sub_1E38A42FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26 - v3;
  v5 = v0;
  v6 = sub_1E41FFC94();
  v7 = sub_1E4206814();

  if (OUTLINED_FUNCTION_51_11())
  {
    OUTLINED_FUNCTION_6_21();
    v8 = OUTLINED_FUNCTION_9_44();
    OUTLINED_FUNCTION_55_11(5.7779e-34);
    *v9 = v5;
    v10 = v5;
    OUTLINED_FUNCTION_7_28(&dword_1E323F000, v11, v12, "%@ startDismissPlaybackAtBroadcastEndTimer");
    sub_1E325F6F0(v8, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_65_0();
  }

  v13 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackTask;
  if (*&v5[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackTask])
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    OUTLINED_FUNCTION_78_3();
  }

  sub_1E4206474();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_4_0();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_83_1(v18);
  swift_unknownObjectWeakInit();
  sub_1E4206434();
  OUTLINED_FUNCTION_31_4();

  v19 = sub_1E4206424();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v7;

  v22 = OUTLINED_FUNCTION_23_7();
  *&v5[v13] = sub_1E37748D8(v22, v23, v4, v24, v20);

  return result;
}

uint64_t sub_1E38A44F0()
{
  OUTLINED_FUNCTION_24();
  v0[5] = v1;
  v2 = sub_1E42075E4();
  v0[6] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[7] = v3;
  v0[8] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v0[9] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  v5 = sub_1E42063B4();
  v0[10] = v5;
  v0[11] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E38A45C4, v5, v4);
}

uint64_t sub_1E38A45C4()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1[12] = Strong;
  if (Strong)
  {
    v4 = Strong;
    v1[13] = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_logger[0];
    v5 = OUTLINED_FUNCTION_105(Strong);
    sub_1E4206814();

    if (OUTLINED_FUNCTION_84_1())
    {
      OUTLINED_FUNCTION_49_0();
      v6 = OUTLINED_FUNCTION_26_22();
      *v2 = 138412546;
      *(v2 + 4) = v0;
      *v6 = v4;
      *(v2 + 12) = 2048;
      *(v2 + 14) = *&v0[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackDelay];
      v7 = v0;
      OUTLINED_FUNCTION_35_8();
      _os_log_impl(v8, v9, v10, v11, v12, 0x16u);
      sub_1E325F6F0(v6, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_21_0();
    }

    sub_1E4207CA4();
    sub_1E4207AA4();
    OUTLINED_FUNCTION_40_4(&dword_1E42A6EA8);
    v17 = v13;
    v14 = swift_task_alloc();
    v1[14] = v14;
    *v14 = v1;
    v14[1] = sub_1E38A47C0;
    OUTLINED_FUNCTION_25();

    return v17();
  }

  else
  {

    OUTLINED_FUNCTION_15_12();

    return v16();
  }
}

uint64_t sub_1E38A47C0()
{
  OUTLINED_FUNCTION_134();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 120) = v0;

  v5 = OUTLINED_FUNCTION_24_4();
  v6(v5);
  v7 = *(v2 + 88);
  v8 = *(v2 + 80);
  if (v0)
  {
    v9 = sub_1E38A4C94;
  }

  else
  {
    v9 = sub_1E38A4948;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1E38A4948()
{
  OUTLINED_FUNCTION_134();

  if (sub_1E4206504())
  {
    v1 = *(v0 + 96);
    v2 = sub_1E41FFC94();
    sub_1E4206814();

    v3 = OUTLINED_FUNCTION_85_5();
    v4 = *(v0 + 96);
    if (v3)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v5 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerLiveEventMonitor;
  OUTLINED_FUNCTION_8();
  v7 = (*(v6 + 168))();
  if ((sub_1E389D688(v7, 3, v8) & 1) == 0 || (sub_1E38A5720() & 1) == 0 || !sub_1E38A5778())
  {
    OUTLINED_FUNCTION_8();
    v13 = (*(v12 + 168))();
    *(v0 + 128) = v13;
    *(v0 + 129) = 3;
    sub_1E38A72C8(v13, v14, v15);
    v16 = sub_1E4205E84();
    v17 = *(v0 + 96);
    if (v16)
    {
      v18 = sub_1E38A5720();
      v19 = v17;
      v2 = sub_1E41FFC94();
      sub_1E4206814();

      v20 = OUTLINED_FUNCTION_85_5();
      v4 = *(v0 + 96);
      if (v18)
      {
        if (v20)
        {
          goto LABEL_17;
        }
      }

      else if (v20)
      {
LABEL_17:
        OUTLINED_FUNCTION_6_21();
        v23 = OUTLINED_FUNCTION_9_44();
        v4 = OUTLINED_FUNCTION_33_23(v23, 5.7779e-34);
        OUTLINED_FUNCTION_71_10();
        OUTLINED_FUNCTION_50_6(v24, v25, v26, v27);
        sub_1E325F6F0(v23, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_65_0();
      }
    }

    else
    {
      v21 = v17;
      v2 = sub_1E41FFC94();
      sub_1E4206814();

      v22 = OUTLINED_FUNCTION_85_5();
      v4 = *(v0 + 96);
      if (v22)
      {
        goto LABEL_17;
      }
    }

LABEL_18:

    goto LABEL_19;
  }

  v9 = OUTLINED_FUNCTION_66_11(*(v0 + 96));
  v10 = sub_1E4206814();

  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_6_21();
    v11 = OUTLINED_FUNCTION_11_41();
    OUTLINED_FUNCTION_58_11(v11, 5.7779e-34);
    OUTLINED_FUNCTION_53_15(&dword_1E323F000, v9, v10, "%@ dismiss playback timer fired and user is still in broadcast end range, dismissing playback");
    sub_1E325F6F0(v11, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_51_2();
  }

  v4 = *(v0 + 96);

  [*&v4[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player] stop];
LABEL_19:

  OUTLINED_FUNCTION_15_12();

  return v28();
}

uint64_t sub_1E38A4C94()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_54();

  return v2();
}

void sub_1E38A4DB8()
{
  OUTLINED_FUNCTION_108_2();
  v1 = v0;
  if ((*((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8))())
  {
    v3 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_isShowingShelf;
    OUTLINED_FUNCTION_14_0(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_isShowingShelf, v2);
    *(v1 + v3) = 0;
    sub_1E38A3710();
  }

  v4 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController;
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController);
  if (!v5)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_88_0();
  v7 = *(v6 + 1888);
  v9 = v8;
  v7();

  v10 = *(v1 + v4);
  if (!v10)
  {
    goto LABEL_9;
  }

  [v10 vui:0 willMoveToParentViewController:?];
  v11 = *(v1 + v4);
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = [v11 vuiView];
  if (v12)
  {
    v13 = v12;
    [v12 vui_removeFromSuperView];

    v14 = *(v1 + v4);
    if (v14)
    {
      [v14 vui_removeFromParentViewController];
      v5 = *(v1 + v4);
LABEL_10:
      *(v1 + v4) = 0;

      OUTLINED_FUNCTION_109_4();
      return;
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1E38A4F08()
{
  sub_1E38A524C();

  sub_1E38A32E8(0);
}

uint64_t sub_1E38A4F94(void *a1)
{
  if ([a1 currentMediaItem])
  {
    ObjectType = swift_getObjectType();
    v2 = *MEMORY[0x1E69D5B98];
    swift_unknownObjectRetain();
    v3 = MEMORY[0x1E69E6158];
    sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]);
    sub_1E4123590(v2, v3, v8);
    swift_unknownObjectRelease();
    v4 = v8[0];
    v5 = v8[1];
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = sub_1E414A784(0xD000000000000010, 0x80000001E4264AE0, v4, v5);
  swift_unknownObjectRelease();

  return v6;
}

void sub_1E38A5080(void *a1)
{
  v3 = v1;
  v4 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_51_11())
  {
    OUTLINED_FUNCTION_6_21();
    v5 = OUTLINED_FUNCTION_9_44();
    OUTLINED_FUNCTION_48_16(5.7779e-34);
    *v6 = v3;
    v7 = v3;
    OUTLINED_FUNCTION_7_28(&dword_1E323F000, v8, v9, "%@ Starting playback prefetching");
    sub_1E325F6F0(v5, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_65_0();
  }

  v10 = sub_1E38A4F94(a1);
  v12 = v11;
  v13 = objc_allocWithZone(VUIPlayer);
  v14 = sub_1E38A6730(v10, v12);
  v15 = MEMORY[0x1E69E7D40];
  v16 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x108))(v14);
  v17 = *((*v15 & *v3) + 0x100);
  v18 = (v17)(v16);
  if (v18)
  {
    v19 = v18;
    [v18 setPlaylist_];
  }

  v20 = v17();
  [v20 pause];
}

void sub_1E38A524C()
{
  v2 = v0;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playbackPrefetchTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    OUTLINED_FUNCTION_78_3();
  }

  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x100))();
  if (v4)
  {
    v11 = v4;
    v5 = OUTLINED_FUNCTION_66_11(v0);
    sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      OUTLINED_FUNCTION_6_21();
      v6 = OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_55_11(5.7779e-34);
      *v7 = v2;
      v8 = v1;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v9, v10, "%@ Invalidating prefetch player");
      sub_1E325F6F0(v6, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    [v11 stop];
    [v11 invalidate];
    (*((*v3 & *v1) + 0x108))(0);
  }
}

uint64_t sub_1E38A5438()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CC00, &unk_1E42A7BB0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  *&v4 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v6 = &v16[-1] - v5;
  if (![*(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player) currentMediaItem] || (ObjectType = swift_getObjectType(), v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0), sub_1E4123588(ObjectType, v8), v9 = OUTLINED_FUNCTION_24_4(), sub_1E4123590(v9, v8, v10), swift_unknownObjectRelease(), (v11 = v16[0]) == 0))
  {
    v11 = sub_1E4205CB4();
  }

  sub_1E3B1BEB8(v11, v6);
  PolicyVMa = _s28LivePostPlayShelfFetchPolicyVMa(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, PolicyVMa);
  v13 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfFetchPolicy;
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfFetchPolicy, v16);
  sub_1E38A7C94(v6, v1 + v13);
  return swift_endAccess();
}

void sub_1E38A55BC(char a1)
{
  v5 = v1;
  if (*(v1 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController))
  {
    OUTLINED_FUNCTION_88_0();
    v8 = *(v7 + 1776);
    v10 = v9;
    v11 = v8();
  }

  else
  {
    v11 = 0.0;
  }

  v16 = *(v5 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerViewController);
  if (v16)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      if (a1)
      {
        v14 = v16;
        sub_1E3952C94();
        OUTLINED_FUNCTION_3();
      }

      else
      {
        v11 = *MEMORY[0x1E69DDCE0];
        v2 = *(MEMORY[0x1E69DDCE0] + 8);
        v3 = *(MEMORY[0x1E69DDCE0] + 16);
        v4 = *(MEMORY[0x1E69DDCE0] + 24);
        v15 = v16;
      }

      [v13 setLegibleContentInsets_];
    }
  }
}

id sub_1E38A5720()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 isFullscreenPlaybackUIBeingShown];

  return v1;
}

BOOL sub_1E38A5778()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player);
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 activePlayer];

  if (!v3)
  {
    return 0;
  }

  return v1 == v3;
}

void sub_1E38A5934()
{
  v2 = v0;
  v3 = sub_1E41FFC94();
  sub_1E4206814();

  if (OUTLINED_FUNCTION_67_5())
  {
    OUTLINED_FUNCTION_6_21();
    v4 = OUTLINED_FUNCTION_32_27();
    *v1 = 138412290;
    *(v1 + 4) = v2;
    *v4 = v2;
    v5 = v2;
    OUTLINED_FUNCTION_136();
    OUTLINED_FUNCTION_103_0(v6, v7, v8, v9);
    sub_1E325F6F0(v4, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_7_9();
  }

  if (*(v2 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfFetchTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    OUTLINED_FUNCTION_80_4();
  }

  v11 = MEMORY[0x1E69E7D40];
  v12 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x100);
  v13 = (v12)(v10);
  [v13 stop];

  v14 = v12();
  [v14 invalidate];

  (*((*v11 & *v2) + 0x108))(0);
  if (*(v2 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playbackPrefetchTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    OUTLINED_FUNCTION_80_4();
  }

  if (*(v2 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_inactivityTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    OUTLINED_FUNCTION_80_4();
  }

  if (*(v2 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackTask))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    OUTLINED_FUNCTION_80_4();
  }

  sub_1E38A32E8(0);
  sub_1E38A4D0C();
  sub_1E38A4DB8();
}

void sub_1E38A5C24()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v9 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v32 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  if (sub_1E389D9E8())
  {
    v15 = v0;
    v16 = sub_1E41FFC94();
    v17 = sub_1E4206814();

    if (os_log_type_enabled(v16, v17))
    {
      v30 = v7;
      v18 = swift_slowAlloc();
      v29 = v9;
      v19 = OUTLINED_FUNCTION_160();
      *v18 = 138412546;
      *(v18 + 4) = v15;
      *v19 = v15;
      *(v18 + 12) = 1024;
      *(v18 + 14) = v4 & 1;
      v20 = v15;
      _os_log_impl(&dword_1E323F000, v16, v17, "%@ Player controls visibility did change to %{BOOL}d", v18, 0x12u);
      sub_1E325F6F0(v19, &unk_1ECF28E30, &qword_1E429E820);
      v9 = v29;
      OUTLINED_FUNCTION_6_0();
      v7 = v30;
      OUTLINED_FUNCTION_6_0();
    }
  }

  v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerControlsOrTabsVisible] = v4 & 1;
  if ((v4 & 1) == 0 && v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss] == 1)
  {
    v2[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_waitingForPlayerControlsOrTabsToDismiss] = 0;
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v31 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33[4] = sub_1E38A6AB0;
    v33[5] = v21;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    v33[2] = v22;
    v33[3] = &block_descriptor_12_0;
    v23 = _Block_copy(v33);

    sub_1E4203FE4();
    v33[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_4_59();
    sub_1E3274A24(v24, v25, MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    OUTLINED_FUNCTION_47();
    sub_1E32752B0(v26, v27, &qword_1E429B000, v28);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v14, v1, v23);
    _Block_release(v23);

    (*(v7 + 8))(v1, v5);
    (*(v32 + 8))(v14, v9);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38A6014(void *a1, double a2, double a3)
{
  OUTLINED_FUNCTION_4_0();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_83_1(v7);
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  v16 = sub_1E38A6AFC;
  v17 = v8;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1E37C7850;
  v15 = &block_descriptor_19;
  v9 = _Block_copy(&v12);

  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_1E38A6D7C;
  v17 = v10;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1E37C7850;
  v15 = &block_descriptor_23;
  v11 = _Block_copy(&v12);

  [a1 animateAlongsideTransition:v9 completion:v11];
  _Block_release(v11);
  _Block_release(v9);
}

void sub_1E38A63A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0, &qword_1E429A1F0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (*(a1 + 48) + 16 * (__clz(__rbit64(v5)) | (v8 << 6)));
    v11 = v10[1];
    *&v30[0] = *v10;
    *(&v30[0] + 1) = v11;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1E329504C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1E329504C(v29, v30);
    v12 = sub_1E42073F4();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    sub_1E329504C(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

id sub_1E38A666C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_1E4205ED4();

  v9 = sub_1E4205ED4();

  if (a6)
  {
    v10 = sub_1E4205ED4();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithCanonicalId:v8 playablePassthrough:v9 broadcastLocale:v10];

  return v11;
}

id sub_1E38A6730(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1E4205ED4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithName_];

  return v4;
}

uint64_t sub_1E38A6794()
{
  OUTLINED_FUNCTION_134();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v3 = v2;
  v5 = v4[12];
  v6 = v4[11];
  v7 = v4[8];
  v8 = *v1;
  OUTLINED_FUNCTION_31();
  *v9 = v8;
  *(v2 + 120) = v0;

  v5(v6, v7);
  if (v0)
  {
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {

    OUTLINED_FUNCTION_15_12();

    return v13();
  }
}

void sub_1E38A6934()
{
  v1 = sub_1E38A75A8(*(v0 + 16));
  if (v1)
  {
    v2 = v1;
    if (sub_1E32AE9B0(v1))
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x1E6911E60](0, v2);
      }

      else
      {
        if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v3 = *(v2 + 32);
      }

      v4 = v3;

      [objc_opt_self() recordPlay:v4 isLaunchingExtras:0];
    }

    else
    {
    }
  }
}

uint64_t sub_1E38A6A14()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64_0(v1);

  return sub_1E389F474();
}

void sub_1E38A6AB0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1E38A1FA8();
  }
}

void sub_1E38A6AFC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    OUTLINED_FUNCTION_64();
    v3 = (*(v2 + 456))();
    v4 = v1;
    v5 = sub_1E41FFC94();
    sub_1E4206814();

    v6 = OUTLINED_FUNCTION_67_5();
    if (v3)
    {
      if (v6)
      {
        OUTLINED_FUNCTION_49_0();
        v7 = OUTLINED_FUNCTION_9_44();
        v8 = OUTLINED_FUNCTION_100();
        v30 = v8;
        OUTLINED_FUNCTION_48_16(5.778e-34);
        *v7 = v1;
        *(v3 + 12) = 2080;
        v9 = v4;
        v10 = sub_1E4206E54();
        v12 = sub_1E3270FC8(v10, v11, &v30);

        *(v3 + 14) = v12;
        OUTLINED_FUNCTION_136();
        _os_log_impl(v13, v14, v15, v16, v3, 0x16u);
        sub_1E325F6F0(v7, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_55();
        __swift_destroy_boxed_opaque_existential_1(v8);
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_65_0();
      }

      v17 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController;
      v18 = *&v4[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_shelfViewController];
      if (!v18)
      {
        goto LABEL_13;
      }

      v19 = [v18 view];
      if (v19)
      {
        v20 = v19;
        [v19 frame];

        v21 = *&v4[v17];
        if (!v21)
        {
LABEL_13:

          return;
        }

        v22 = [v21 view];
        if (v22)
        {
          v23 = v22;
          OUTLINED_FUNCTION_98_3(v22, sel_setFrame_);
          v5 = v4;
          v4 = v23;
LABEL_12:

          goto LABEL_13;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    if (v6)
    {
      OUTLINED_FUNCTION_6_21();
      v24 = OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_48_16(5.7779e-34);
      *v25 = v1;
      v4 = v4;
      OUTLINED_FUNCTION_136();
      OUTLINED_FUNCTION_50_6(v26, v27, v28, v29);
      sub_1E325F6F0(v24, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    goto LABEL_12;
  }
}

void sub_1E38A6D7C()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OUTLINED_FUNCTION_105(Strong);
    sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      OUTLINED_FUNCTION_6_21();
      v4 = OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_48_16(5.7779e-34);
      *v5 = v2;
      v6 = v0;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v7, v8, "%@ update post play shelf visibility after player view transition has completed");
      sub_1E325F6F0(v4, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    v9 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_gameEndShelfAlreadyDisplayed;
    v10 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_broadcastEndShelfAlreadyDisplayed;
    v11 = *(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_gameEndShelfAlreadyDisplayed);
    v12 = *(v0 + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_broadcastEndShelfAlreadyDisplayed);
    v13 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1C8);
    if (v13())
    {
      *(v0 + v9) = 0;
      *(v0 + v10) = 0;
      sub_1E38A1FA8();
      if (v13())
      {
        *(v0 + v9) = v11;
        *(v0 + v10) = v12;
      }
    }

    else
    {
      sub_1E38A1FA8();
    }
  }
}

unint64_t sub_1E38A6EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2CC08;
  if (!qword_1ECF2CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CC08);
  }

  return result;
}

void sub_1E38A6F48(uint64_t a1)
{
  sub_1E41FFCB4();
  if (v1 <= 0x3F)
  {
    sub_1E38A7080(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E38A7080(uint64_t a1)
{
  if (!qword_1EE261238[0])
  {
    _s28LivePostPlayShelfFetchPolicyVMa(255);
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, qword_1EE261238);
    }
  }
}

uint64_t getEnumTagSinglePayload for LivePostPlayController.ShelfDisplayFailureReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LivePostPlayController.ShelfDisplayFailureReason(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E38A723C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  v1[1] = sub_1E38A8524;

  return sub_1E38A44F0();
}

unint64_t sub_1E38A72C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF339D0;
  if (!qword_1ECF339D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF339D0);
  }

  return result;
}

unint64_t sub_1E38A731C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE260AA0;
  if (!qword_1EE260AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE260AA0);
  }

  return result;
}

id sub_1E38A7370()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  result = [v1 vuiView];
  if (result)
  {
    v4 = result;
    [result frame];
    v6 = v5;
    v8 = v7;
    v10 = v9;

    result = [v1 vuiView];
    if (result)
    {
      v11 = result;
      [result setFrame_];

      return (*((*MEMORY[0x1E69E7D40] & *v1) + 0x758))(1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E38A747C(uint64_t a1)
{
  OUTLINED_FUNCTION_108_2();
  v2 = v1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (v2)
    {
      v5 = sub_1E389D8C4();
      v6 = MEMORY[0x1E69E7D40];
      if (v5)
      {
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_64();
        v8 = *(v7 + 2192);
        v9 = v4;
        v8(v4, &off_1F5D60F78);
      }

      v10 = sub_1E389D8C4();
      if (v10)
      {
        v13 = v10;
        v14 = OUTLINED_FUNCTION_83_3(v10, v11, v12);
        (*((*v6 & *v13) + 0x980))(v14 & 1);
      }

      sub_1E38A3A5C();
      sub_1E38A4D00();
      sub_1E38A2E40();
      sub_1E38A55BC(1);
    }
  }

  OUTLINED_FUNCTION_109_4();
}

uint64_t sub_1E38A75A8(void *a1)
{
  v1 = [a1 videosPlayables];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, &qword_1EE23B1C0, off_1E8728690);
  v3 = sub_1E42062B4();

  return v3;
}

id sub_1E38A7618(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1E4205C44();

  v8 = [a4 createWithPageId:a1 andPageType:a2 andEventData:v7];

  return v8;
}

uint64_t objectdestroy_84Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_16_0();

  return swift_deallocObject();
}

uint64_t sub_1E38A76FC()
{
  OUTLINED_FUNCTION_27_2();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64_0(v1);

  return sub_1E38A1270();
}

uint64_t sub_1E38A7790(uint64_t a1, uint64_t a2)
{
  PolicyVMa = _s28LivePostPlayShelfFetchPolicyVMa(0);
  (*(*(PolicyVMa - 8) + 32))(a2, a1, PolicyVMa);
  return a2;
}

uint64_t sub_1E38A77F4(uint64_t a1)
{
  PolicyVMa = _s28LivePostPlayShelfFetchPolicyVMa(0);
  (*(*(PolicyVMa - 8) + 8))(a1, PolicyVMa);
  return a1;
}

void sub_1E38A7850()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 frame];

      v6 = *&v3[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_presentationView];
      if (v6)
      {
        [v6 frame];
      }

      v7 = [v1 vuiView];
      if (v7)
      {
        v8 = v7;
        OUTLINED_FUNCTION_98_3(v7, sel_setFrame_);

        (*((*MEMORY[0x1E69E7D40] & *v1) + 0x758))(0);
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

void sub_1E38A7998(uint64_t a1)
{
  OUTLINED_FUNCTION_108_2();
  v3 = v2;
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v7 = Strong;
  if ((v3 & 1) == 0)
  {
LABEL_8:

LABEL_9:
    OUTLINED_FUNCTION_109_4();
    return;
  }

  sub_1E38A4D0C();
  v8 = [v4 vuiView];
  if (v8)
  {
    v9 = v8;
    [v8 setHidden_];

    sub_1E38A55BC(0);
    OUTLINED_FUNCTION_21_6();
    v11 = *(v10 + 168);

    v13 = v11(v12);

    if (!(v5 & 1 | ((OUTLINED_FUNCTION_101_1(v14, v15, v16) & 1) == 0)))
    {
      v17 = OUTLINED_FUNCTION_66_11(v7);
      sub_1E4206814();

      if (OUTLINED_FUNCTION_51_11())
      {
        OUTLINED_FUNCTION_6_21();
        v18 = OUTLINED_FUNCTION_9_44();
        OUTLINED_FUNCTION_55_11(5.7779e-34);
        *v19 = v7;
        v20 = v13;
        OUTLINED_FUNCTION_7_28(&dword_1E323F000, v21, v22, "%@ stopping player so that playback is dismissed cause shelf was dismissed in broadcast end range");
        sub_1E325F6F0(v18, &unk_1ECF28E30, &qword_1E429E820);
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_65_0();
      }

      [*&v13[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player] stop];
    }

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1E38A7B24()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_64_0(v1);

  return sub_1E38A3D34();
}

uint64_t sub_1E38A7BAC()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  OUTLINED_FUNCTION_31();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E38A7C94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CC00, &unk_1E42A7BB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1E38A7D04()
{
  OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OUTLINED_FUNCTION_105(Strong);
    sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      OUTLINED_FUNCTION_6_21();
      v4 = OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_48_16(5.7779e-34);
      *v5 = v2;
      v6 = v0;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v7, v8, "%@ watch modal will appear notification received");
      sub_1E325F6F0(v4, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    if (*&v0[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_inactivityTask])
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
      OUTLINED_FUNCTION_80_4();
    }

    if (*&v0[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackTask])
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
      OUTLINED_FUNCTION_80_4();
    }
  }

  OUTLINED_FUNCTION_109_4();
}

void sub_1E38A7E64()
{
  OUTLINED_FUNCTION_108_2();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OUTLINED_FUNCTION_105(Strong);
    sub_1E4206814();

    if (OUTLINED_FUNCTION_51_11())
    {
      OUTLINED_FUNCTION_6_21();
      v4 = OUTLINED_FUNCTION_9_44();
      OUTLINED_FUNCTION_48_16(5.7779e-34);
      *v5 = v2;
      v6 = v0;
      OUTLINED_FUNCTION_7_28(&dword_1E323F000, v7, v8, "%@ watch modal did disappear notification received");
      sub_1E325F6F0(v4, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_65_0();
    }

    sub_1E38A3A5C();
  }

  OUTLINED_FUNCTION_109_4();
}

void sub_1E38A7F44()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [objc_opt_self() sharedInstance];
    v3 = [v2 isFullscreenPlaybackUIBeingShown];

    if ((v3 & 1) == 0)
    {
      v1[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_playerControlsOrTabsVisible] = 0;
    }

    sub_1E38A1FA8();
  }
}

void sub_1E38A7FE0()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player;
    v3 = &selRef_collectionViewCanBecomeFocused_;
    if ([*(Strong + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_player) currentMediaItem] && (ObjectType = swift_getObjectType(), v5 = *MEMORY[0x1E69D5DC0], v6 = MEMORY[0x1E69E6158], sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]), sub_1E4123590(v5, v6, &v22), swift_unknownObjectRelease(), (v7 = *(&v22 + 1)) != 0))
    {
      v8 = v22;
    }

    else
    {

      v7 = 0xE300000000000000;
      v8 = 7104878;
    }

    v9 = v1;

    v10 = sub_1E41FFC94();
    v11 = sub_1E4206814();

    if (os_log_type_enabled(v10, v11))
    {
      OUTLINED_FUNCTION_49_0();
      v12 = OUTLINED_FUNCTION_26_22();
      v13 = OUTLINED_FUNCTION_100();
      *&v22 = v13;
      LODWORD(selRef_collectionViewCanBecomeFocused_) = 138412546;
      *(&selRef_collectionViewCanBecomeFocused_ + 4) = v9;
      *v12 = v1;
      WORD2(selRef_collectionViewHeight) = 2080;
      v14 = v9;
      v15 = sub_1E3270FC8(v8, v7, &v22);

      *(&selRef_collectionViewHeight + 6) = v15;
      _os_log_impl(&dword_1E323F000, v10, v11, "%@ Media item changed to %s", &selRef_collectionViewCanBecomeFocused_, 0x16u);
      sub_1E325F6F0(v12, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_79();
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_7_7();
      v3 = &selRef_collectionViewCanBecomeFocused_;
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    [v9 cleanup];
    v9[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_didEnterStreamInBroadcastEndRange] = 0;
    sub_1E38A5438();
    v16 = [*&v1[v2] v3[273]];
    if (v16)
    {
      v17 = [v16 mediaItemMetadataForProperty_];
      swift_unknownObjectRelease();
      if (v17)
      {
        sub_1E4207264();
        swift_unknownObjectRelease();
      }

      else
      {
        *v20 = 0u;
        v21 = 0u;
      }

      v22 = *v20;
      v23 = v21;
      if (*(&v21 + 1))
      {
        sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
        if (swift_dynamicCast())
        {
          [v20[0] doubleValue];
          v19 = v18;

LABEL_19:
          *&v9[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackDelay] = v19;

          goto LABEL_20;
        }

LABEL_18:
        v19 = 0;
        goto LABEL_19;
      }
    }

    else
    {
      v22 = 0u;
      v23 = 0u;
    }

    sub_1E325F6F0(&v22, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_18;
  }

LABEL_20:
  OUTLINED_FUNCTION_96_5();
}

void sub_1E38A8318()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8VideosUI22LivePostPlayController_dismissPlaybackTask))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
      OUTLINED_FUNCTION_78_3();
    }

    v8 = (sub_1E389D688(v2, 0, v5) & 1) != 0 && (sub_1E389D688(v3, 3, v7) & 1) != 0;
    v6[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_didEnterStreamInBroadcastEndRange] = v8;
    v9 = v6;
    v10 = sub_1E41FFC94();
    v11 = sub_1E4206814();
    if (os_log_type_enabled(v10, v11))
    {
      swift_slowAlloc();
      v12 = OUTLINED_FUNCTION_36_8();
      *v1 = 138412546;
      *(v1 + 4) = v9;
      *v12 = v6;
      *(v1 + 12) = 1024;
      *(v1 + 14) = v9[OBJC_IVAR____TtC8VideosUI22LivePostPlayController_didEnterStreamInBroadcastEndRange];
      _os_log_impl(&dword_1E323F000, v10, v11, "%@ didEnterStreamInBroadcastEndRange - %{BOOL}d", v1, 0x12u);
      sub_1E325F6F0(v12, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_55();
    }

    else
    {
    }

    if (sub_1E389D688(v2, 0, v13) & 1) != 0 && (sub_1E389D688(v3, 1, v14))
    {
      sub_1E38A01C0();
    }

    else
    {
      sub_1E38A1FA8();
    }
  }
}

uint64_t OUTLINED_FUNCTION_32_27()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_53_15(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_56_10(uint64_t a1)
{

  return swift_unknownObjectWeakInit();
}

id OUTLINED_FUNCTION_58_11(void *a1, float a2)
{
  *v2 = a2;
  *(v2 + 4) = v3;
  *a1 = v3;

  return v3;
}

id OUTLINED_FUNCTION_79_8(void *a1, float a2)
{
  *v4 = a2;
  *(v4 + 4) = v3;
  *a1 = v2;

  return v3;
}

uint64_t OUTLINED_FUNCTION_80_4()
{

  return sub_1E42064D4();
}

BOOL OUTLINED_FUNCTION_82_5(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t oslog)
{

  return os_log_type_enabled(oslog, v9);
}

uint64_t OUTLINED_FUNCTION_83_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E389D688(v3, 2, a3);
}

id OUTLINED_FUNCTION_100_1()
{

  return [v0 (v1 + 2867)];
}

uint64_t sub_1E38A86A4()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 128) = v1;
  }

  return v1;
}

id sub_1E38A8718()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 136);
  }

  else
  {
    v3 = [objc_allocWithZone(VUIMediaTagsViewLayout) initWithType_];
    v4 = *(v0 + 136);
    *(v0 + 136) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1E38A8788(uint64_t a1)
{
  v2 = *(v1 + 136);
  *(v1 + 136) = a1;
}

uint64_t sub_1E38A8794()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 144) = v1;
  }

  return v1;
}

uint64_t sub_1E38A8808()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 152) = v1;
  }

  return v1;
}

uint64_t sub_1E38A8870()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 160) = v1;
  }

  return v1;
}

uint64_t sub_1E38A88D8()
{
  if (*(v0 + 168))
  {
    v1 = *(v0 + 168);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for ImageLayout();
    v5 = sub_1E3BD61D8();
    sub_1E41E1A64(&v5, sub_1E38A8984, v3, &v6);

    v1 = v6;
    *(v2 + 168) = v6;
  }

  return v1;
}

uint64_t sub_1E38A8984()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1760))(0x4097700000000000, 0);
  OUTLINED_FUNCTION_36();
  (*(v1 + 336))(0x4038000000000000, 0);
  sub_1E3952C94();
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v11 = 0;
  OUTLINED_FUNCTION_8();
  (*(v6 + 160))(v10);
  v17 = 1;
  sub_1E3C2FC98();
  v16[0] = v16[1];
  sub_1E3C3DE00();
  v15[0] = v15[1];
  sub_1E3C3DE00();
  v14[0] = v14[1];
  sub_1E3C3DE00();
  v13[0] = v13[1];
  sub_1E3C3DE00();
  v12[0] = v12[1];
  sub_1E3C2FCB8(&v17, v16, v15, v14, v13, v12, &unk_1F5D99680, &v18);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  return (*(v7 + 1600))(&v18, 12, v8 & 1, &unk_1F5D99680);
}

void sub_1E38A8BA8(__n128 a1, __n128 a2)
{
  if (a1.n128_f64[0] >= 375.0 && a1.n128_f64[0] >= 415.0 && a1.n128_f64[0] < 727.0)
  {
    [objc_opt_self() isPad];
  }

  sub_1E3952C64();
}

uint64_t sub_1E38A8C88(double a1)
{
  result = swift_beginAccess();
  *(v1 + 176) = a1;
  return result;
}

double sub_1E38A8CC8(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    v3 = [objc_opt_self() isSUIEnabled] == 0;
    result = 40.0;
    v5 = 43.0;
  }

  else
  {
    if (sub_1E373F630(a1, 0, a3))
    {
      return 52.0;
    }

    v3 = (sub_1E373F630(a1, 1, v7) & 1) == 0;
    result = 48.0;
    v5 = 52.0;
  }

  if (!v3)
  {
    return v5;
  }

  return result;
}

double sub_1E38A8D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E373F630(a1, 0, a3);
  result = 30.0;
  if ((v4 & 1) == 0)
  {
    v7 = sub_1E373F630(a1, 1, v5);
    result = 24.0;
    if (v7)
    {
      return 30.0;
    }
  }

  return result;
}

double sub_1E38A8DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E373F630(a1, 0, a3);
  result = 30.0;
  if ((v4 & 1) == 0)
  {
    v7 = sub_1E373F630(a1, 1, v5);
    result = 32.0;
    if (v7)
    {
      return 30.0;
    }
  }

  return result;
}

uint64_t sub_1E38A8E28(uint64_t a1)
{
  *(v1 + 168) = 0;
  *(v1 + 152) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 176) = xmmword_1E42A7D80;
  *(v1 + 192) = 0x4061000000000000;
  v2 = sub_1E3C2F9A0();
  v3 = *(*v2 + 1880);

  v4 = v3();
  sub_1E3952C58();
  [v4 setMargin_];

  sub_1E38A9890();
  OUTLINED_FUNCTION_9_2();
  v6 = *(v5 + 1928);
  v6();
  v7 = sub_1E38AA69C();
  OUTLINED_FUNCTION_4_60(v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v8 = OUTLINED_FUNCTION_13_50();
  v9(v8);

  (v6)(v10);
  OUTLINED_FUNCTION_2_1();
  v11 = OUTLINED_FUNCTION_10_7();
  v12(v11);

  (v6)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1696))(1);

  (v6)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 1792))(10);

  v18 = (v6)(v17);
  v19 = *sub_1E3E5FD88();
  v20 = *(*v18 + 680);
  v21 = v19;
  v20(v19);

  (v6)(v22);
  OUTLINED_FUNCTION_2_1();
  v23 = OUTLINED_FUNCTION_10_7();
  v24(v23);

  OUTLINED_FUNCTION_9_2();
  v26 = *(v25 + 1952);
  v26();
  v27 = sub_1E38AA69C();
  OUTLINED_FUNCTION_4_60(v27);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v28 = OUTLINED_FUNCTION_13_50();
  v29(v28);

  (v26)(v30);
  OUTLINED_FUNCTION_2_1();
  v31 = OUTLINED_FUNCTION_10_7();
  v32(v31);

  v34 = (v26)(v33);
  v35 = *sub_1E3E5FDEC();
  v36 = *(*v34 + 680);
  v37 = v35;
  v36(v35);

  (v26)(v38);
  OUTLINED_FUNCTION_2_1();
  (*(v39 + 1696))(2);

  (v26)(v40);
  OUTLINED_FUNCTION_2_1();
  v41 = OUTLINED_FUNCTION_10_7();
  v42(v41);

  (v26)(v43);
  OUTLINED_FUNCTION_2_1();
  (*(v44 + 2224))(0);

  OUTLINED_FUNCTION_9_2();
  v46 = *(v45 + 1808);
  v46();
  sub_1E3952C94();
  OUTLINED_FUNCTION_15_46(v47);
  OUTLINED_FUNCTION_7_11(v48, v49, v50, v51);
  type metadata accessor for UIEdgeInsets();
  v53 = v52;
  sub_1E3C2FC98();
  v126 = v129;
  v127 = v130;
  v128 = v131;
  sub_1E3C3DE00();
  v120 = v123;
  v121 = v124;
  v122 = v125;
  sub_1E3C3DE00();
  v114 = v117;
  v115 = v118;
  v116 = v119;
  sub_1E3C3DE00();
  v106 = v111;
  v107 = v112;
  LOBYTE(v108) = v113;
  sub_1E3C2FCB8(__dst, &v126, &v120, &v114, v132, &v106, v53, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v62 = OUTLINED_FUNCTION_14_47(v54, v55, v56, v57, v58, v59, v60, v61, v106, *(&v106 + 1), v107, *(&v107 + 1), v108, v109, __dst[0]);
  v63(v62);

  (v46)(v64);
  OUTLINED_FUNCTION_2_1();
  (*(v65 + 360))(0x4041000000000000, 0);

  (v46)(v66);
  OUTLINED_FUNCTION_2_1();
  (*(v67 + 1808))(1);

  OUTLINED_FUNCTION_9_2();
  v69 = *(v68 + 1832);
  v69();
  OUTLINED_FUNCTION_2_1();
  (*(v70 + 1984))(1);

  (v69)(v71);
  OUTLINED_FUNCTION_2_1();
  (*(v72 + 2056))(1, 0);

  (v69)(v73);
  OUTLINED_FUNCTION_2_1();
  (*(v74 + 1696))(2);

  (v69)(v75);
  OUTLINED_FUNCTION_2_1();
  (*(v76 + 1792))(10);

  v78 = (v69)(v77);
  v79 = *sub_1E3E5FD88();
  v80 = *(*v78 + 680);
  v81 = v79;
  v80(v79);

  (v69)(v82);
  OUTLINED_FUNCTION_2_1();
  v83 = OUTLINED_FUNCTION_10_7();
  v84(v83);

  (v69)(v85);
  sub_1E3952C94();
  OUTLINED_FUNCTION_15_46(v86);
  OUTLINED_FUNCTION_7_11(v87, v88, v89, v90);
  sub_1E3952C94();
  *&v129 = v91;
  *(&v129 + 1) = v92;
  *&v130 = v93;
  *(&v130 + 1) = v94;
  v131 = 0;
  sub_1E3C2FC98();
  v123 = v126;
  v124 = v127;
  v125 = v128;
  sub_1E3C3DE00();
  v117 = v120;
  v118 = v121;
  v119 = v122;
  sub_1E3C3DE00();
  v111 = v114;
  v112 = v115;
  v113 = v116;
  sub_1E3C2FCB8(__dst, &v123, &v117, &v111, v132, &v129, v53, __src);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v103 = OUTLINED_FUNCTION_14_47(v95, v96, v97, v98, v99, v100, v101, v102, v106, *(&v106 + 1), v107, *(&v107 + 1), v108, v109, __dst[0]);
  v104(v103);

  return v2;
}

double sub_1E38A9890()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B858, &unk_1E42A1760);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27 - v2;
  if ([objc_opt_self() isSUIEnabled])
  {
    v4 = (*v0 + 1904);
    v5 = *v4;
    v6 = (*v4)();
    v7 = *sub_1E3E5FD88();
    v8 = *(*v6 + 680);
    v9 = v7;
    v8(v7);

    (v5)(v10);
    sub_1E42028C4();
    OUTLINED_FUNCTION_36();
    (*(v11 + 2120))();

    (v5)(v12);
    OUTLINED_FUNCTION_2_1();
    (*(v13 + 2168))(6);

    (v5)(v14);
    sub_1E4201DE4();
    v15 = sub_1E4201DF4();
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v15);
    OUTLINED_FUNCTION_36();
    (*(v16 + 2192))(v3);
  }

  else
  {
    v18 = *sub_1E3E5FD88();
    v19 = objc_opt_self();
    v20 = [v19 configurationWithHierarchicalColor_];
    v21 = [v19 configurationWithWeight_];
    v22 = [v19 configurationWithTextStyle_];
    v23 = [v22 configurationByApplyingConfiguration_];
    OUTLINED_FUNCTION_9_2();
    (*(v24 + 1904))();
    v25 = [v21 configurationByApplyingConfiguration_];
    OUTLINED_FUNCTION_36();
    (*(v26 + 1952))();
  }

  return result;
}

double sub_1E38A9C34(uint64_t a1, void *a2)
{
  sub_1E3C35CF4(a1, a2);
  OUTLINED_FUNCTION_36();
  (*(v3 + 1784))();
  OUTLINED_FUNCTION_2_1();
  v4 = OUTLINED_FUNCTION_3_5();
  v5(v4);

  (*(*v2 + 1976))(v6);
  OUTLINED_FUNCTION_2_1();
  v7 = OUTLINED_FUNCTION_3_5();
  v8(v7);

  (*(*v2 + 1856))(v9);
  OUTLINED_FUNCTION_2_1();
  v10 = OUTLINED_FUNCTION_3_5();
  v11(v10);

  return result;
}

double sub_1E38A9DEC()
{
  OUTLINED_FUNCTION_8();
  v0 += 232;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 440))(0x3FFC71C71C71C71CLL, 0);

  type metadata accessor for LayoutGrid();
  v1();
  OUTLINED_FUNCTION_2_1();
  (*(v3 + 1560))();

  v4 = sub_1E3A25914();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = (v1)();
  sub_1E39537A8();
  v20[0] = v12;
  v20[1] = v13;
  v20[2] = v14;
  v20[3] = v15;
  v21 = 0;
  (*(*v11 + 560))(v20);

  sub_1E3952BE0(v4, v6, v8, v10);
  v1();
  OUTLINED_FUNCTION_8();
  (*(v16 + 208))();

  (v1)(v17);
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 1808))(1);

  return result;
}

double sub_1E38AA060(double a1, double a2, double a3)
{
  v3 = a1 / (a3 * 0.44);
  OUTLINED_FUNCTION_8();
  v4 += 223;
  v5 = *v4;
  v6 = (*v4)();
  (*(*v6 + 440))(*&v3, 0);

  v8 = *(v5)(v7);
  v9 = COERCE_DOUBLE((*(v8 + 432))());
  v11 = v10;

  if ((v11 & 1) == 0 && v9 > 0.0)
  {
    (v5)(v12);
    OUTLINED_FUNCTION_8();
    (*(v13 + 312))();
  }

  v14 = sub_1E39DFFC8();
  if (v14)
  {
    v5();
    sub_1E3952C94();
    v24[0] = v15;
    v24[1] = v16;
    v24[2] = v17;
    v24[3] = v18;
    v25 = 0;
    OUTLINED_FUNCTION_8();
    (*(v19 + 160))(v24);
  }

  (v5)(v14);
  OUTLINED_FUNCTION_8();
  (*(v20 + 208))();

  (v5)(v21);
  OUTLINED_FUNCTION_2_1();
  (*(v22 + 1808))(3);

  return result;
}

void sub_1E38AA2E8(char a1, char a2)
{
  OUTLINED_FUNCTION_8();
  v4 += 235;
  v5 = *v4;
  v6 = (*v4)();
  if (a1 & 1) == 0 || (a2)
  {
    v7 = MEMORY[0x1E6979D40];
    v8 = sub_1E3E5FD88();
  }

  else
  {
    v7 = MEMORY[0x1E6979CF8];
    v8 = sub_1E3E5FDEC();
  }

  v9 = v8;
  [v6 setBadgeTintColor_];

  v10 = v5();
  [v10 setCompositingFilter_];

  v11 = v5();
  v12 = [v11 textLayout];

  [v12 setColor_];
}

double sub_1E38AA408()
{
  type metadata accessor for LayoutGrid();
  OUTLINED_FUNCTION_8();
  v0 += 226;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 1560))();

  v3 = sub_1E3A25914();
  v1(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 256))(0x406FE00000000000, 0);

  (v1)(v5);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 360))(0x404E000000000000, 0);

  return result;
}

double sub_1E38AA570()
{

  return result;
}

uint64_t sub_1E38AA5D8()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E38AA648()
{
  v0 = sub_1E38AA5D8();

  return MEMORY[0x1EEE6BDC0](v0, 200, 7);
}

unint64_t sub_1E38AA69C()
{
  v6 = 1;
  sub_1E3C2FC98();
  v5[0] = v5[1];
  sub_1E3C3DE00();
  v4[0] = v4[1];
  sub_1E3C3DE00();
  v3[0] = v3[1];
  sub_1E3C3DE00();
  v2[0] = v2[1];
  sub_1E3C3DE00();
  v1[0] = v1[1];
  sub_1E3C2FCB8(&v6, v5, v4, v3, v2, v1, &unk_1F5D54CA8, &v7);
  return v7 | (v8 << 32);
}

uint64_t sub_1E38AA764()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E38AA7C4();
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E38AA7C4()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E383BCC0();
  (*(*v0 + 1984))(4);

  v1 = *sub_1E3E5FD88();
  v2 = *(*v0 + 680);
  v3 = v1;
  v2(v1);

  OUTLINED_FUNCTION_36();
  (*(v4 + 1792))(7);
  OUTLINED_FUNCTION_36();
  (*(v5 + 2176))(4, 0);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2056))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v7 + 2080))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v8 + 2104))(2, 0);
  OUTLINED_FUNCTION_36();
  (*(v9 + 2128))(0x3FE6666666666666, 0);
  OUTLINED_FUNCTION_36();
  (*(v10 + 1696))(6);
  v43[32] = 1;
  sub_1E3952C88();
  OUTLINED_FUNCTION_3_57(v11, v12, v13, v14);
  sub_1E3952C88();
  OUTLINED_FUNCTION_5_60();
  v63 = 1;
  type metadata accessor for UIEdgeInsets();
  v16 = v15;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_4_10(v17, v18, v19, v20, v21, v22, v23, v24, 0.0, 0.0, 0.0, 0.0, *&v43[32], *&v43[40], *&v43[48], *&v43[56], *&v43[64], *&v43[72], *&v43[80], *&v43[88], *&v43[96], *&v43[104], *&v43[112], *&v43[120], *&v43[128], *&v43[136], *&v43[144], *&v43[152], *&v43[160], *&v43[168], *&v43[176], *&v43[184], *&v43[192], *&v43[200], *&v43[208], *&v43[216], *&v43[224], *&v43[232], v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62[0]);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_0_62(v25, v26, v27, v28, v29, v30, v31, v32, *v43, *&v43[8], *&v43[16], *&v43[24], *&v43[32], *&v43[40], *&v43[48], *&v43[56], *&v43[64], *&v43[72], *&v43[80], *&v43[88], *&v43[96], *&v43[104], *&v43[112], *&v43[120], *&v43[128], *&v43[136], *&v43[144], *&v43[152], *&v43[160], *&v43[168], *&v43[176], *&v43[184], *&v43[192], *&v43[200], *&v43[208], *&v43[216], *&v43[224], *&v43[232], v44, v45, v46, v47, v48, v49, v50);
  sub_1E3C2FCB8(v33, v34, v35, v36, v37, v38, v16, v39);
  memcpy(v43, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v40 + 1600))(v43, 0, v41 & 1, v16);
  return v0;
}

uint64_t sub_1E38AAAF8()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v3 = j__OUTLINED_FUNCTION_18();
    v4 = sub_1E3B050E8();
    v5 = j__OUTLINED_FUNCTION_18();
    v1 = sub_1E3BBD964(6, v3 & 1, v4, v5 & 1);
    *(v2 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E38AABB8(uint64_t a1)
{
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  v2 = sub_1E3C2F9A0();
  v3 = *(*v2 + 1728);

  v3();
  v40[32] = 1;
  sub_1E3952C88();
  OUTLINED_FUNCTION_3_57(v4, v5, v6, v7);
  sub_1E3952C88();
  OUTLINED_FUNCTION_5_60();
  v60 = 1;
  type metadata accessor for UIEdgeInsets();
  v9 = v8;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_4_10(v10, v11, v12, v13, v14, v15, v16, v17, 0.0, 0.0, 0.0, 0.0, *&v40[32], *&v40[40], *&v40[48], *&v40[56], *&v40[64], *&v40[72], *&v40[80], *&v40[88], *&v40[96], *&v40[104], *&v40[112], *&v40[120], *&v40[128], *&v40[136], *&v40[144], *&v40[152], *&v40[160], *&v40[168], *&v40[176], *&v40[184], *&v40[192], *&v40[200], *&v40[208], *&v40[216], *&v40[224], *&v40[232], v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59[0]);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_0_62(v18, v19, v20, v21, v22, v23, v24, v25, *v40, *&v40[8], *&v40[16], *&v40[24], *&v40[32], *&v40[40], *&v40[48], *&v40[56], *&v40[64], *&v40[72], *&v40[80], *&v40[88], *&v40[96], *&v40[104], *&v40[112], *&v40[120], *&v40[128], *&v40[136], *&v40[144], *&v40[152], *&v40[160], *&v40[168], *&v40[176], *&v40[184], *&v40[192], *&v40[200], *&v40[208], *&v40[216], *&v40[224], *&v40[232], v41, v42, v43, v44, v45, v46, v47);
  sub_1E3C2FCB8(v26, v27, v28, v29, v30, v31, v9, v32);
  memcpy(v40, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v33 + 1600))(v40, 0, v34 & 1, v9);

  v36 = (*(*v2 + 1704))(v35);
  sub_1E3C37CBC(v36, 23);

  v38 = (v3)(v37);
  sub_1E3C37CBC(v38, 62);

  return v2;
}

unint64_t sub_1E38AADA0()
{
  v0 = sub_1E4207784();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E38AADEC(char a1)
{
  if (!a1)
  {
    return 0x6465726F6E6769;
  }

  if (a1 == 1)
  {
    return 0x6574656C706D6F63;
  }

  return 0xD000000000000016;
}

unint64_t sub_1E38AAE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2CD18;
  if (!qword_1ECF2CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CD18);
  }

  return result;
}

uint64_t sub_1E38AAEB0(unsigned __int8 a1, char a2)
{
  v2 = 0x6465726F6E6769;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6574656C706D6F63;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000064;
    }

    else
    {
      v5 = 0x80000001E4264CE0;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x6465726F6E6769;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6574656C706D6F63;
    }

    else
    {
      v2 = 0xD000000000000016;
    }

    if (a2 == 1)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0x80000001E4264CE0;
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

uint64_t sub_1E38AAFD0(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E38AB06C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E38AB114@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E38AADA0();
  *a1 = result;
  return result;
}

uint64_t sub_1E38AB144@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E38AADEC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for DocumentEventUpdateResult(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1E38AB24C()
{
  type metadata accessor for UpNextInteractor(0);
  OUTLINED_FUNCTION_0_63();
  sub_1E38ADA68(v0, v1, &unk_1E42F08F8);
  sub_1E4200BC4();
  sub_1E4179AAC();

  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1E4205ED4();
    v5 = [v3 localizedStringForKey_];

    if (v5)
    {
      sub_1E4205F14();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E38AB38C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v142) = 4;
  OUTLINED_FUNCTION_26_0();
  v5 = *(v4 + 776);

  v12 = OUTLINED_FUNCTION_15_47(v6, &unk_1F5D5D0A8, &off_1F5D5C758, v7, v8, v9, v10, v11, v88, v95, v102, v109, v116, v123, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, 4);
  v13 = v5(v12);
  if (!v155)
  {

    sub_1E325F6F0(v154, &unk_1ECF296E0, &unk_1E4298030);

LABEL_50:
    a1 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
    v59 = 0;
    v55 = 0;
    v85 = 0;
    v86 = 0;
    v87 = 0;
LABEL_51:
    *a2 = a1;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = v81;
    *(a2 + 32) = v82;
    *(a2 + 40) = v83;
    *(a2 + 48) = v84;
    *(a2 + 56) = v59;
    *(a2 + 64) = v55;
    *(a2 + 72) = v85;
    *(a2 + 80) = v86;
    *(a2 + 88) = v87;
    return;
  }

  OUTLINED_FUNCTION_18_24(v13, v14, v15, MEMORY[0x1E69E6158], v16, v17, v18, v19, v89, v96, v103, v110, v117, v124, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
  v20 = swift_dynamicCast();
  if ((v20 & 1) == 0)
  {
LABEL_49:

    goto LABEL_50;
  }

  v27 = v142;
  v26 = v143;
  v28 = OUTLINED_FUNCTION_15_47(v20, &unk_1F5D5D0A8, &off_1F5D5C758, v21, v22, v23, v24, v25, v90, v97, v104, v111, v118, v125, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, 5);
  v29 = v5(v28);
  OUTLINED_FUNCTION_18_24(v29, v30, v31, MEMORY[0x1E69E6158], v32, v33, v34, v35, v91, v98, v105, v112, v119, v126, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
  v36 = swift_dynamicCast();
  if ((v36 & 1) == 0)
  {
LABEL_48:

    goto LABEL_49;
  }

  v43 = v142;
  v42 = v143;
  v44 = OUTLINED_FUNCTION_15_47(v36, &unk_1F5D5D0A8, &off_1F5D5C758, v37, v38, v39, v40, v41, v92, v99, v106, v113, v120, v127, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, 6);
  v45 = v5(v44);
  OUTLINED_FUNCTION_18_24(v45, v46, v47, MEMORY[0x1E69E6370], v48, v49, v50, v51, v93, v100, v107, v114, v121, v128, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_48;
  }

  v52 = v142;
  v53 = swift_allocObject();
  *(v53 + 16) = v27;
  *(v53 + 24) = v26;
  *(v53 + 32) = v43;
  *(v53 + 40) = v42;
  v94 = v53;
  *(v53 + 48) = v52;
  v166 = 0;
  v54 = (*(*a1 + 464))();

  v55 = MEMORY[0x1E69E7CC0];
  if (v54)
  {
    v56 = v54;
  }

  else
  {
    v56 = MEMORY[0x1E69E7CC0];
  }

  v164 = MEMORY[0x1E69E7CC0];
  v165 = MEMORY[0x1E69E7CC0];
  v129 = v56;
  v57 = sub_1E32AE9B0(v56);
  if (!v57)
  {
    v59 = v55;
LABEL_53:
    v82 = 0x80000001E4264D00;
    v84 = 0x80000001E4264D20;
    v83 = 0xD000000000000017;

    v142 = a1;
    v143 = 0;
    v81 = 0xD00000000000001ALL;
    v144 = 0;
    v145 = 0xD00000000000001ALL;
    v146 = 0x80000001E4264D00;
    v147 = 0xD000000000000017;
    v148 = 0x80000001E4264D20;
    v149 = v59;
    v85 = sub_1E38AB938;
    v150 = v55;
    v151 = sub_1E38AB938;
    v152 = v94;
    v153 = v166;
    v87 = v166;
    v154[0] = a1;
    v154[1] = 0;
    v154[2] = 0;
    v155 = 0xD00000000000001ALL;
    v156 = 0x80000001E4264D00;
    v157 = 0xD000000000000017;
    v158 = 0x80000001E4264D20;
    v159 = v59;
    v160 = v55;
    v161 = sub_1E38AB938;
    v162 = v94;
    v163 = v166;
    sub_1E38AD6D8(&v142, &v130);
    sub_1E38AD710(v154);
    v86 = v94;
    goto LABEL_51;
  }

  if (v57 >= 1)
  {
    v58 = 0;
    v108 = v129 & 0xC000000000000001;
    v115 = @"added";
    v101 = @"removed";
    v59 = v55;
    v122 = v57;
    while (1)
    {
      if (v108)
      {
        v60 = MEMORY[0x1E6911E60](v58, v129);
      }

      else
      {
        v60 = *(v129 + 8 * v58 + 32);
      }

      LOBYTE(v142) = 28;
      v61 = (*(*v60 + 776))(v154, &v142, &unk_1F5D5DAC8, &off_1F5D5C998);
      if (v155)
      {
        OUTLINED_FUNCTION_18_24(v61, v62, v63, v64, v65, v66, v67, v68, v94, v101, v108, v115, v122, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
        if (swift_dynamicCast())
        {
          v70 = v142;
          v69 = v143;
          goto LABEL_19;
        }
      }

      else
      {
        sub_1E325F6F0(v154, &unk_1ECF296E0, &unk_1E4298030);
      }

      v70 = 0;
      v69 = 0;
LABEL_19:
      v71 = sub_1E4205F14();
      if (v69)
      {
        if (v70 == v71 && v69 == v72)
        {

LABEL_35:

          MEMORY[0x1E6910BF0](v79);
          if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            OUTLINED_FUNCTION_12_21();
          }

          sub_1E4206324();

          v59 = v165;
          goto LABEL_44;
        }

        v74 = OUTLINED_FUNCTION_21_33(v71, v72, v71);

        if (v74)
        {
          goto LABEL_35;
        }
      }

      else
      {
      }

      v75 = sub_1E4205F14();
      if (v69)
      {
        if (v70 == v75 && v69 == v76)
        {

LABEL_41:

          MEMORY[0x1E6910BF0](v80);
          if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            OUTLINED_FUNCTION_12_21();
          }

          sub_1E4206324();

          v55 = v164;
          goto LABEL_44;
        }

        v78 = OUTLINED_FUNCTION_21_33(v75, v76, v75);

        if (v78)
        {
          goto LABEL_41;
        }
      }

      else
      {
      }

LABEL_44:
      if (v122 == ++v58)
      {
        goto LABEL_53;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1E38AB938()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  if (sub_1E4205F14() == v3 && v6 == v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  type metadata accessor for UpNextInteractor(0);

  v9 = j__OUTLINED_FUNCTION_18();
  return sub_1E4179BE8(v1, v2, v8 & 1, v5, v9 & 1);
}

void sub_1E38AB9F4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v56 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD20, &qword_1E42A7F18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v51 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD28, &qword_1E42A7F20);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD30, &qword_1E42A7F28);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v51 - v16;
  v18 = (*(**v0 + 392))(v15);
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = v18;
  type metadata accessor for ButtonLayout();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {

    goto LABEL_7;
  }

  v52 = v17;
  v53 = v13;
  v21 = *v20;
  v54 = v1;
  v22 = *(v21 + 2336);

  v24 = v19;
  v25 = v22(v23);
  v51 = v24;

  if ((v25 & 1) == 0)
  {
LABEL_7:
    sub_1E38ABE84();
    (*(v8 + 16))(v5, v11, v6);
    swift_storeEnumTagMultiPayload();
    v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CD38, &qword_1E42A7F30);
    v42 = type metadata accessor for ViewModel();
    v43 = sub_1E38AD740();
    OUTLINED_FUNCTION_2_58();
    v46 = sub_1E38ADA68(v44, v45, &protocol conformance descriptor for ViewModel);
    v59 = v41;
    v60 = v42;
    v61 = v43;
    v62 = v46;
    v47 = OUTLINED_FUNCTION_8_41();
    v50 = sub_1E32822E0(v47, v48, v49);
    v59 = v6;
    v60 = MEMORY[0x1E69E6158];
    v61 = v47;
    v62 = v50;
    OUTLINED_FUNCTION_7_66();
    sub_1E4201F44();

    (*(v8 + 8))(v11, v6);
    goto LABEL_8;
  }

  sub_1E38ABE84();
  sub_1E38AB24C();
  v57 = v26;
  v58 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CD38, &qword_1E42A7F30);
  v29 = type metadata accessor for ViewModel();
  v30 = sub_1E38AD740();
  OUTLINED_FUNCTION_2_58();
  v33 = sub_1E38ADA68(v31, v32, &protocol conformance descriptor for ViewModel);
  v59 = v28;
  v60 = v29;
  v61 = v30;
  v62 = v33;
  v34 = OUTLINED_FUNCTION_8_41();
  v37 = sub_1E32822E0(v34, v35, v36);
  v38 = v52;
  sub_1E4203414();

  (*(v8 + 8))(v11, v6);
  v39 = v53;
  v40 = v55;
  (*(v53 + 16))(v5, v38, v55);
  swift_storeEnumTagMultiPayload();
  v59 = v6;
  v60 = MEMORY[0x1E69E6158];
  v61 = v34;
  v62 = v37;
  OUTLINED_FUNCTION_7_66();
  sub_1E4201F44();

  (*(v39 + 8))(v38, v40);
LABEL_8:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38ABE84()
{
  OUTLINED_FUNCTION_31_1();
  v31 = v1;
  v30 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD50, &qword_1E42A7F38);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  v29[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD38, &qword_1E42A7F30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v29 - v18;
  v20 = swift_allocObject();
  memcpy((v20 + 16), v0, 0x59uLL);
  v32 = v0;
  sub_1E38AD6D8(v0, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD70, &qword_1E42A8048);
  sub_1E38ADADC();
  sub_1E4203964();
  sub_1E38AB24C();
  v34[0] = v21;
  v34[1] = v22;
  v23 = sub_1E32752B0(&qword_1ECF2CD48, &qword_1ECF2CD50, &qword_1E42A7F38, MEMORY[0x1E697D680]);
  sub_1E32822E0(v23, v24, v25);
  sub_1E4203114();

  (*(v9 + 8))(v12, v7);
  sub_1E4201C54();
  sub_1E4201384();
  (*(v3 + 8))(v6, v30);
  sub_1E325F6F0(v16, &qword_1ECF2CD38, &qword_1E42A7F30);
  v33 = *v0;
  v26 = swift_allocObject();
  memcpy((v26 + 16), v0, 0x59uLL);
  sub_1E38AD6D8(v0, v34);
  type metadata accessor for ViewModel();
  sub_1E38AD740();
  OUTLINED_FUNCTION_2_58();
  sub_1E38ADA68(v27, v28, &protocol conformance descriptor for ViewModel);

  sub_1E4203524();

  sub_1E325F6F0(v19, &qword_1ECF2CD38, &qword_1E42A7F30);
  OUTLINED_FUNCTION_25_2();
}

double sub_1E38AC258()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10[-v3];
  v5 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_1E4206434();
  sub_1E38AD6D8(v0, v10);
  v6 = sub_1E4206424();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  memcpy(v7 + 4, v1, 0x59uLL);
  sub_1E376FE58(0, 0, v4, &unk_1E42A8098, v7);

  return result;
}

void sub_1E38AC36C()
{
  OUTLINED_FUNCTION_31_1();
  v9[1] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDC0, &qword_1E42A8070);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v9 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD88, &qword_1E42A8050);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v9 - v5;
  type metadata accessor for UpNextInteractor(0);
  OUTLINED_FUNCTION_0_63();
  sub_1E38ADA68(v7, v8, &unk_1E42F08F8);
  sub_1E4200BC4();
  sub_1E4179AAC();

  sub_1E38AC51C();
  sub_1E37E93E8(v6, v3, &qword_1ECF2CD88, &qword_1E42A8050);
  swift_storeEnumTagMultiPayload();
  sub_1E38ADB60();
  sub_1E4201F44();
  sub_1E325F6F0(v6, &qword_1ECF2CD88, &qword_1E42A8050);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38AC51C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v78 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v77 = v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDC8, &qword_1E42A8078);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v82 = v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v80 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v79 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDA8, &qword_1E42A8060);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v87 = v14;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDD0, &qword_1E42A8080);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v92 = v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CD98, &qword_1E42A8058);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v86 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29210, &qword_1E4299980);
  MEMORY[0x1EEE9AC00](v19 - 8);
  OUTLINED_FUNCTION_4_6();
  v84 = v20 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v85 = v76 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  OUTLINED_FUNCTION_4_6();
  v83 = v25 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v76 - v28;
  v32 = sub_1E32AE9B0(v1);
  v33 = 0;
  v34 = v1 & 0xC000000000000001;
  v93 = v12;
  while (1)
  {
    if (v32 == v33)
    {
      v36 = v3;
      v37 = 0;
      goto LABEL_12;
    }

    if (v34)
    {
      MEMORY[0x1E6911E60](v33, v1);
    }

    else
    {
      if (v33 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }
    }

    if (__OFADD__(v33, 1))
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

    type metadata accessor for ImageViewModel();
    v35 = swift_dynamicCastClass();
    if (v35)
    {
      break;
    }

    ++v33;
  }

  v37 = v35;
  v36 = v3;
LABEL_12:
  for (i = 0; v32 != i; ++i)
  {
    if (v34)
    {
      v39 = MEMORY[0x1E6911E60](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v39 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_40;
    }

    if (*v39 == _TtC8VideosUI13TextViewModel)
    {
      goto LABEL_22;
    }
  }

  v39 = 0;
LABEL_22:
  if (TVAppFeature.isEnabled.getter(20, v30, v31))
  {
    v40 = v29;
    if (v37)
    {

      sub_1E38AD5A4();
      sub_1E3EB9BB4(v94);
      v41 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_17_32(v41, v94, v42, v41 & 1);

      sub_1E375C31C(v94);
      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    v51 = v84;
    v52 = 1;
    __swift_storeEnumTagSinglePayload(v40, v43, 1, v89);
    v76[1] = v36;
    if (v39)
    {

      sub_1E38AD5A4();
      OUTLINED_FUNCTION_18();
      v53 = v85;
      sub_1E3F23370();

      v52 = 0;
    }

    else
    {
      v53 = v85;
    }

    __swift_storeEnumTagSinglePayload(v53, v52, 1, v88);
    v64 = v83;
    sub_1E37E93E8(v40, v83, &qword_1ECF29938, &unk_1E429C3F0);
    v89 = v40;
    sub_1E37E93E8(v53, v51, &qword_1ECF29210, &qword_1E4299980);
    v65 = v86;
    sub_1E37E93E8(v64, v86, &qword_1ECF29938, &unk_1E429C3F0);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDD8, &qword_1E42A8088);
    sub_1E37E93E8(v51, v65 + *(v66 + 48), &qword_1ECF29210, &qword_1E4299980);
    sub_1E325F6F0(v51, &qword_1ECF29210, &qword_1E4299980);
    sub_1E325F6F0(v64, &qword_1ECF29938, &unk_1E429C3F0);
    sub_1E37E93E8(v65, v92, &qword_1ECF2CD98, &qword_1E42A8058);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_1();
    sub_1E32752B0(v67, &qword_1ECF2CD98, &qword_1E42A8058, v68);
    sub_1E38ADC18();
    sub_1E4201F44();

    sub_1E325F6F0(v65, &qword_1ECF2CD98, &qword_1E42A8058);
    sub_1E325F6F0(v53, &qword_1ECF29210, &qword_1E4299980);
    v69 = v89;
    v70 = &qword_1ECF29938;
    v71 = &unk_1E429C3F0;
  }

  else
  {
    if (v39)
    {

      sub_1E38AD5A4();
      OUTLINED_FUNCTION_18();
      v44 = v79;
      sub_1E3F23370();
      v45 = v80;
      v46 = v88;
      (*(v80 + 16))(v82, v44, v88);
      v47 = swift_storeEnumTagMultiPayload();
      v48 = OUTLINED_FUNCTION_0_21(v47);
      OUTLINED_FUNCTION_6_15(v48);
      v49 = v87;
      sub_1E4201F44();

      (*(v45 + 8))(v44, v46);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDB8, &qword_1E42A8068);
      __swift_storeEnumTagSinglePayload(v49, 0, 1, v50);
    }

    else
    {
      v49 = v87;
      if (v37)
      {

        sub_1E38AD5A4();
        sub_1E3EB9BB4(v94);
        v54 = OUTLINED_FUNCTION_18();
        v55 = v77;
        OUTLINED_FUNCTION_17_32(v54, v94, v56, v54 & 1);
        sub_1E375C31C(v94);
        v57 = v78;
        v58 = v89;
        (*(v78 + 16))(v82, v55, v89);
        v59 = swift_storeEnumTagMultiPayload();
        v60 = OUTLINED_FUNCTION_0_21(v59);
        OUTLINED_FUNCTION_6_15(v60);
        sub_1E4201F44();

        (*(v57 + 8))(v55, v58);
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDB8, &qword_1E42A8068);
        v62 = v49;
        v63 = 0;
      }

      else
      {
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDB8, &qword_1E42A8068);
        v62 = v49;
        v63 = 1;
      }

      __swift_storeEnumTagSinglePayload(v62, v63, 1, v61);
    }

    sub_1E37E93E8(v49, v92, &qword_1ECF2CDA8, &qword_1E42A8060);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_1();
    sub_1E32752B0(v72, v73, v74, v75);
    sub_1E38ADC18();
    sub_1E4201F44();

    v69 = v49;
    v70 = &qword_1ECF2CDA8;
    v71 = &qword_1E42A8060;
  }

  sub_1E325F6F0(v69, v70, v71);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38ACE98()
{
  OUTLINED_FUNCTION_24();
  v0[24] = v1;
  sub_1E4206434();
  v0[25] = sub_1E4206424();
  v3 = sub_1E42063B4();
  v0[26] = v3;
  v0[27] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E38ACF2C, v3, v2);
}

uint64_t sub_1E38ACF2C()
{
  v1 = **(v0 + 192);
  v2 = (*(*v1 + 576))();
  if (v2)
  {
    v3 = v2;
    OUTLINED_FUNCTION_26_0();
    v5 = (*(v4 + 176))();
    if (v5)
    {
      v6 = v5;
      type metadata accessor for UpNextInteractor(0);
      OUTLINED_FUNCTION_0_63();
      sub_1E38ADA68(v7, v8, &unk_1E42F08F8);
      sub_1E4200BC4();
      sub_1E4179AAC();

      v9 = sub_1E4205F14();
      v11 = v10;
      v12 = sub_1E4205F14();
      v14 = v13;
      *(v0 + 40) = MEMORY[0x1E69E6158];
      *(v0 + 16) = v9;
      *(v0 + 24) = v11;
      sub_1E329504C((v0 + 16), (v0 + 48));

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1E32A87C0((v0 + 48), v12, v14, isUniquelyReferenced_nonNull_native);

      v16 = (*(*v3 + 184))(v6);
      v17 = (*(*v3 + 200))(v16);
      if (v17)
      {
        v18 = v17;
        v19 = sub_1E4205F14();
        v21 = v20;
        *(v0 + 104) = MEMORY[0x1E69E6158];
        *(v0 + 80) = v9;
        *(v0 + 88) = v11;
        sub_1E329504C((v0 + 80), (v0 + 112));
        v22 = swift_isUniquelyReferenced_nonNull_native();
        sub_1E32A87C0((v0 + 112), v19, v21, v22);

        (*(*v3 + 208))(v18);
      }

      else
      {
      }

      type metadata accessor for Router(0);
      if (sub_1E40C43F8())
      {
        OUTLINED_FUNCTION_26_0();
        if ((*(v23 + 368))())
        {
          OUTLINED_FUNCTION_26_0();
          (*(v24 + 216))(v1);
        }
      }
    }
  }

  v25 = *(v0 + 192);
  *(v0 + 224) = *(v25 + 72);
  *(v0 + 232) = *(v25 + 80);
  *(v0 + 272) = *(v25 + 88);
  *(v0 + 240) = type metadata accessor for UpNextInteractor(0);
  OUTLINED_FUNCTION_0_63();
  *(v0 + 248) = sub_1E38ADA68(v26, v27, &unk_1E42F08F8);
  *(v0 + 256) = sub_1E4200BC4();
  v28 = swift_task_alloc();
  *(v0 + 264) = v28;
  *v28 = v0;
  v28[1] = sub_1E38AD328;

  return sub_1E417A84C();
}

uint64_t sub_1E38AD328()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v1 + 216);
  v5 = *(v1 + 208);

  return MEMORY[0x1EEE6DFA0](sub_1E38AD464, v5, v4);
}

uint64_t sub_1E38AD464()
{

  v0 = sub_1E4200BC4();
  v1 = OBJC_IVAR____TtC8VideosUI16UpNextInteractor_dismissOnSelect;
  swift_beginAccess();
  LODWORD(v1) = *(v0 + v1);

  if (v1 == 1)
  {
    v2 = sub_1E40C4340();
    swift_beginAccess();
    if (*v2)
    {
      v3 = *v2;
      v4 = j__OUTLINED_FUNCTION_51_1();
      (*((*MEMORY[0x1E69E7D40] & *v3) + 0x208))(v4 & 1, 0, 0);
    }
  }

  OUTLINED_FUNCTION_54();

  return v5();
}

uint64_t sub_1E38AD5A4()
{
  OUTLINED_FUNCTION_26_0();
  v0 += 49;
  v1 = *v0;
  v2 = (*v0)();
  if (v2)
  {
    OUTLINED_FUNCTION_26_0();
    (*(v3 + 680))(0);
  }

  if ((v1)(v2))
  {
    OUTLINED_FUNCTION_26_0();
    (*(v4 + 872))(0);
  }
}

unint64_t sub_1E38AD740()
{
  result = qword_1ECF2CD40;
  if (!qword_1ECF2CD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CD38, &qword_1E42A7F30);
    sub_1E32752B0(&qword_1ECF2CD48, &qword_1ECF2CD50, &qword_1E42A7F38, MEMORY[0x1E697D680]);
    sub_1E38ADA68(&qword_1EE288768, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CD40);
  }

  return result;
}

uint64_t sub_1E38AD858(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1E38AD898(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E38AD900()
{
  result = qword_1ECF2CD58;
  if (!qword_1ECF2CD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CD60, &qword_1E42A8040);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CD28, &qword_1E42A7F20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CD38, &qword_1E42A7F30);
    type metadata accessor for ViewModel();
    sub_1E38AD740();
    sub_1E38ADA68(&qword_1EE23BA60, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E32822E0(OpaqueTypeConformance2, v2, v3);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CD58);
  }

  return result;
}

uint64_t sub_1E38ADA68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E38ADADC()
{
  result = qword_1ECF2CD78;
  if (!qword_1ECF2CD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CD70, &qword_1E42A8048);
    sub_1E38ADB60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CD78);
  }

  return result;
}

unint64_t sub_1E38ADB60()
{
  result = qword_1ECF2CD80;
  if (!qword_1ECF2CD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CD88, &qword_1E42A8050);
    sub_1E32752B0(&qword_1ECF2CD90, &qword_1ECF2CD98, &qword_1E42A8058, MEMORY[0x1E6981F48]);
    sub_1E38ADC18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CD80);
  }

  return result;
}

unint64_t sub_1E38ADC18()
{
  result = qword_1ECF2CDA0;
  if (!qword_1ECF2CDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CDA8, &qword_1E42A8060);
    sub_1E38ADC9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CDA0);
  }

  return result;
}

unint64_t sub_1E38ADC9C()
{
  result = qword_1ECF2CDB0;
  if (!qword_1ECF2CDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2CDB8, &qword_1E42A8068);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CDB0);
  }

  return result;
}

double sub_1E38ADD58(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  type metadata accessor for UpNextInteractor(0);
  OUTLINED_FUNCTION_0_63();
  sub_1E38ADA68(v3, v4, &unk_1E42F08F8);
  sub_1E4200BC4();
  sub_1E417A604(v2, v5, v6, v7, v8, v9, v10, v11);

  return result;
}

uint64_t sub_1E38ADDF8()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E37E1058;

  return sub_1E38ACE98();
}

uint64_t sub_1E38ADECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E39DFFC0(a1, a2, a3);
  v4 = 0x80000001E4264FF0;
  v5 = 0xD000000000000011;
  if (result)
  {
    v5 = 0x6B726F77747261;
    v4 = 0xE700000000000000;
  }

  qword_1ECF71358 = v5;
  unk_1ECF71360 = v4;
  return result;
}

uint64_t sub_1E38AE06C()
{
  v1 = sub_1E41FE624();
  MEMORY[0x1EEE9AC00](v1);
  if (!*(v0 + 24))
  {
    sub_1E3277E60(25705, 0xE200000000000000, *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_familySharingDict), &v10);
    if (v11)
    {
      if (OUTLINED_FUNCTION_21_4())
      {
        v2 = v8;
        v3 = v9;
LABEL_7:
        *(v0 + 16) = v2;
        *(v0 + 24) = v3;

        goto LABEL_8;
      }
    }

    else
    {
      sub_1E325F6F0(&v10, &unk_1ECF296E0, &unk_1E4298030);
    }

    sub_1E41FE614();
    v2 = sub_1E41FE5E4();
    v3 = v4;
    v5 = OUTLINED_FUNCTION_57();
    v6(v5);
    goto LABEL_7;
  }

LABEL_8:

  return OUTLINED_FUNCTION_75();
}

uint64_t sub_1E38AE1E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return OUTLINED_FUNCTION_11_10();
}

uint64_t sub_1E38AE1EC(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E38AE06C();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E38AE22C(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
}

uint64_t sub_1E38AE240()
{
  if (*(v0 + 40) == 1)
  {
    v2 = sub_1E3277E60(25705, 0xE200000000000000, *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_familySharingDict), &v11);
    if (v12)
    {
      if (OUTLINED_FUNCTION_8_17(v10, v1, v2))
      {
        v3 = v10[0];
        v4 = v10[1];
LABEL_7:
        v5 = *(v0 + 32);
        v6 = *(v0 + 40);
        *(v0 + 32) = v3;
        *(v0 + 40) = v4;

        sub_1E37E9E48(v5, v6);
        goto LABEL_8;
      }
    }

    else
    {
      sub_1E325F6F0(&v11, &unk_1ECF296E0, &unk_1E4298030);
    }

    v3 = 0;
    v4 = 0;
    goto LABEL_7;
  }

LABEL_8:
  v7 = OUTLINED_FUNCTION_27_0();
  sub_1E37EA628(v7, v8);
  return OUTLINED_FUNCTION_75();
}

uint64_t sub_1E38AE320(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return OUTLINED_FUNCTION_0_64(v3);
}

uint64_t sub_1E38AE32C(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E38AE240();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E38AE36C()
{
  OUTLINED_FUNCTION_26_7();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  if (v3)
  {

    v4 = OUTLINED_FUNCTION_57();
    sub_1E37E9E48(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_57();

    return sub_1E37E9E48(v7, v8);
  }
}

uint64_t sub_1E38AE3E8()
{
  if (!*(v0 + 56))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
    if (v1)
    {
      v3 = sub_1E3277E60(1701667182, 0xE400000000000000, v1, &v8);
      if (*(&v9 + 1))
      {
        if (OUTLINED_FUNCTION_8_17(v7, v2, v3))
        {
          v4 = v7[0];
          v5 = v7[1];
LABEL_9:
          *(v0 + 48) = v4;
          *(v0 + 56) = v5;

          goto LABEL_10;
        }

LABEL_8:
        v4 = 0;
        v5 = 0xE000000000000000;
        goto LABEL_9;
      }
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    sub_1E325F6F0(&v8, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_8;
  }

LABEL_10:

  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E38AE4C4(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return OUTLINED_FUNCTION_11_10();
}

uint64_t sub_1E38AE4D0(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E38AE3E8();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E38AE510(void *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  *(v1 + 48) = *a1;
  *(v1 + 56) = v2;
}

uint64_t sub_1E38AE524()
{
  v1 = *(v0 + 64);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 64) = 0;
  }

  return v1 & 1;
}

uint64_t (*sub_1E38AE548(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = sub_1E38AE524() & 1;
  return sub_1E38AE594;
}

uint64_t sub_1E38AE5A4()
{
  if (*(v0 + 80) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
    if (v1)
    {
      v3 = sub_1E3277E60(0x7470697263736564, 0xEB000000006E6F69, v1, &v12);
      if (*(&v13 + 1))
      {
        if (OUTLINED_FUNCTION_8_17(v11, v2, v3))
        {
          v4 = v11[0];
          v5 = v11[1];
LABEL_9:
          v6 = *(v0 + 72);
          v7 = *(v0 + 80);
          *(v0 + 72) = v4;
          *(v0 + 80) = v5;

          sub_1E37E9E48(v6, v7);
          goto LABEL_10;
        }

LABEL_8:
        v4 = 0;
        v5 = 0;
        goto LABEL_9;
      }
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    sub_1E325F6F0(&v12, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_8;
  }

LABEL_10:
  v8 = OUTLINED_FUNCTION_27_0();
  sub_1E37EA628(v8, v9);
  return OUTLINED_FUNCTION_75();
}

uint64_t sub_1E38AE6A4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 72);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return OUTLINED_FUNCTION_0_64(v3);
}

uint64_t sub_1E38AE6B0(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E38AE5A4();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E38AE6F0()
{
  OUTLINED_FUNCTION_26_7();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  if (v3)
  {

    v4 = OUTLINED_FUNCTION_57();
    sub_1E37E9E48(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_57();

    return sub_1E37E9E48(v7, v8);
  }
}

id sub_1E38AE76C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = v3;
  v8 = v4;
  v9 = *(v1 + 120);
  v10 = v5;
  v11 = v6;
  v12 = *(v1 + 120);
  if (v9 == 254)
  {
    v26 = *(v1 + 104);
    v27 = *(v1 + 96);
    v28 = *(v1 + 88);
    v13 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
    v14 = 0uLL;
    if (!v13)
    {
      v12 = -1;
      v17 = 0uLL;
      goto LABEL_12;
    }

    v15 = sub_1E38AE948(*(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict));
    if (v15)
    {
      v16 = v15;
LABEL_5:
      type metadata accessor for LibFamilySharingBaseMediaEntity(0);
      sub_1E38AEAB0(v16, &v34);
      v29 = v34;
      v31 = v35;
      v12 = v36;

      v14 = v29;
      v17 = v31;
LABEL_12:
      v30 = v14;
      v32 = v17;
      v34 = v14;
      v35 = v17;
      v36 = v12;
      v20 = *(v1 + 88);
      v21 = *(v1 + 96);
      v23 = *(v1 + 104);
      v22 = *(v1 + 112);
      *(v1 + 88) = v14;
      *(v1 + 104) = v17;
      v24 = *(v1 + 120);
      *(v1 + 120) = v12;
      sub_1E3294EE4(&v34, v33, &qword_1ECF2A450, &qword_1E429D7C0);
      sub_1E37C52A4(v20, v21, v23, v22, v24);
      v8 = *(&v30 + 1);
      v7 = v30;
      v11 = *(&v32 + 1);
      v10 = v32;
      v4 = v27;
      v3 = v28;
      v5 = v26;
      goto LABEL_13;
    }

    v18 = OUTLINED_FUNCTION_22_21();
    sub_1E3277E60(v18, v19, v13, &v34);
    if (*(&v35 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if (OUTLINED_FUNCTION_21_4())
      {
        v16 = v33[0];
        goto LABEL_5;
      }
    }

    else
    {
      sub_1E325F6F0(&v34, &unk_1ECF296E0, &unk_1E4298030);
    }

    v12 = -1;
    v17 = 0uLL;
    v14 = 0uLL;
    goto LABEL_12;
  }

LABEL_13:
  result = sub_1E37C55C0(v3, v4, v5, v6, v9);
  *a1 = v7;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  return result;
}

uint64_t sub_1E38AE948(uint64_t a1)
{
  if (qword_1ECF4EDA0 != -1)
  {
    OUTLINED_FUNCTION_2_59(&qword_1ECF4EDA0);
  }

  sub_1E3277E60(qword_1ECF71358, unk_1ECF71360, a1, &v19);
  if (v20)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_14_48(&v18, v3, v4, v2, v5, v6))
    {
      v7 = v18;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    sub_1E325F6F0(&v19, &unk_1ECF296E0, &unk_1E4298030);
    v7 = 0;
  }

  sub_1E3277E60(0x777472416C6C6174, 0xEB000000006B726FLL, a1, &v19);
  if (v20)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    v13 = OUTLINED_FUNCTION_14_48(&v18, v9, v10, v8, v11, v12);
    if (v13)
    {
      v16 = v18;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v13 = sub_1E325F6F0(&v19, &unk_1ECF296E0, &unk_1E4298030);
    v16 = 0;
  }

  if (sub_1E39DFFC0(v13, v14, v15))
  {
    if (!v16)
    {
      return v7;
    }
  }

  else
  {
    v16 = v7;
  }

  return v16;
}

uint64_t sub_1E38AEAB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = sub_1E3277E60(7107189, 0xE300000000000000, a1, &v25);
  if (v26)
  {
    v9 = OUTLINED_FUNCTION_14_48(&v23, v4, v5, MEMORY[0x1E69E6158], v6, v7, v8);
    if (v9)
    {
      v10 = v23;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = v24;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    sub_1E325F6F0(&v25, &unk_1ECF296E0, &unk_1E4298030);
    v10 = 0;
    v11 = 0;
  }

  v16 = sub_1E3277E60(0x726F6C6F436762, 0xE700000000000000, a1, &v25);
  if (v26)
  {
    v17 = OUTLINED_FUNCTION_14_48(&v23, v12, v13, MEMORY[0x1E69E6158], v14, v15, v16);
    if (v17)
    {
      v18 = v23;
    }

    else
    {
      v18 = 0;
    }

    if (v17)
    {
      v19 = v24;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    sub_1E325F6F0(&v25, &unk_1ECF296E0, &unk_1E4298030);
    v18 = 0;
    v19 = 0;
  }

  result = sub_1E41494A8(v18, v19);
  if (result)
  {

    v21 = 0;
    v22 = 0;
LABEL_21:
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v21;
    *(a2 + 24) = v22;
    *(a2 + 32) = 2;
    return result;
  }

  *&v25 = 35;
  *(&v25 + 1) = 0xE100000000000000;
  if (v19)
  {
    MEMORY[0x1E69109E0](v18, v19);

    v22 = *(&v25 + 1);
    v21 = v25;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void sub_1E38AEC28(uint64_t a1)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(a1 + 16);
  *(v1 + 88) = *a1;
  v5 = *(a1 + 32);
  v6 = *(v1 + 104);
  v7 = *(v1 + 112);
  *(v1 + 104) = v4;
  v8 = *(v1 + 120);
  *(v1 + 120) = v5;
  sub_1E37C52A4(v3, v2, v6, v7, v8);
}

void (*sub_1E38AEC50(void *a1))(void ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  sub_1E38AE76C(v3);
  return sub_1E38AECB4;
}

void sub_1E38AECB4(void ***a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v3 + 32);
  v10 = *(v4 + 104);
  v11 = *(v4 + 112);
  v12 = *(v4 + 120);
  *(v4 + 88) = v5;
  *(v4 + 96) = v6;
  *(v4 + 104) = v7;
  *(v4 + 112) = v8;
  *(v4 + 120) = v9;
  if (a2)
  {
    sub_1E37C5358(v5, v6, v7, v8, v9);
    v13 = OUTLINED_FUNCTION_57();
    sub_1E37C52A4(v13, v14, v10, v11, v12);
    sub_1E37C52B8(*v3, v3[1], v3[2], v3[3], *(v3 + 32));
  }

  else
  {
    v15 = OUTLINED_FUNCTION_57();
    sub_1E37C52A4(v15, v16, v10, v11, v12);
  }

  free(v3);
}

uint64_t sub_1E38AED68()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = (v0 + 128);
  if (v2 == 1)
  {
    *v3 = 0;
    v3[1] = 0;
  }

  sub_1E37EA628(v1, v2);
  return OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1E38AEDB4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 128);
  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return OUTLINED_FUNCTION_0_64(v3);
}

uint64_t sub_1E38AEDC0(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E38AED68();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E38AEE00()
{
  OUTLINED_FUNCTION_26_7();
  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  if (v3)
  {

    v4 = OUTLINED_FUNCTION_57();
    sub_1E37E9E48(v4, v5);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_57();

    return sub_1E37E9E48(v7, v8);
  }
}

uint64_t sub_1E38AEE7C@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0, &unk_1E42B0D70);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  v9 = OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___addedDate;
  OUTLINED_FUNCTION_31_19();
  sub_1E3294EE4(v2 + v9, v8, &qword_1ECF2CDE0, &unk_1E42B0D70);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return sub_1E3889AF0(v8, a1);
  }

  sub_1E325F6F0(v8, &qword_1ECF2CDE0, &unk_1E42B0D70);
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  sub_1E3294EE4(a1, v1, &unk_1ECF28E20, &unk_1E42986D0);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v10);
  OUTLINED_FUNCTION_30_17();
  OUTLINED_FUNCTION_29_18();
  return swift_endAccess();
}

void (*sub_1E38AF000(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  sub_1E38AEE7C(v6);
  return sub_1E38AF098;
}

uint64_t sub_1E38AF0B0@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0, &unk_1E42B0D70);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___releaseDate;
  OUTLINED_FUNCTION_31_19();
  sub_1E3294EE4(v2 + v9, v8, &qword_1ECF2CDE0, &unk_1E42B0D70);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return sub_1E3889AF0(v8, a1);
  }

  sub_1E325F6F0(v8, &qword_1ECF2CDE0, &unk_1E42B0D70);
  sub_1E38AF21C(v2, a1);
  sub_1E3294EE4(a1, v1, &unk_1ECF28E20, &unk_1E42986D0);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v10);
  OUTLINED_FUNCTION_30_17();
  OUTLINED_FUNCTION_29_18();
  return swift_endAccess();
}

uint64_t sub_1E38AF21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity__releaseDate;
  swift_beginAccess();
  sub_1E3294EE4(a1 + v11, v10, &unk_1ECF28E20, &unk_1E42986D0);
  v12 = sub_1E41FE5D4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v12);
  sub_1E325F6F0(v10, &unk_1ECF28E20, &unk_1E42986D0);
  if (EnumTagSinglePayload != 1)
  {
    return sub_1E3294EE4(a1 + v11, a2, &unk_1ECF28E20, &unk_1E42986D0);
  }

  v14 = *(a1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
  if (!v14)
  {
    v21 = 0u;
    v22 = 0u;
    goto LABEL_10;
  }

  sub_1E3277E60(0x44657361656C6572, 0xEB00000000657461, v14, &v21);
  if (!*(&v22 + 1))
  {
LABEL_10:
    sub_1E325F6F0(&v21, &unk_1ECF296E0, &unk_1E4298030);
    return sub_1E3294EE4(a1 + v11, a2, &unk_1ECF28E20, &unk_1E42986D0);
  }

  if (OUTLINED_FUNCTION_21_4())
  {
    if (_MergedGlobals_164 != -1)
    {
      swift_once();
    }

    v15 = qword_1EE28B568;
    v16 = sub_1E4205ED4();

    v17 = [v15 dateFromString_];

    if (v17)
    {
      sub_1E41FE584();

      v18 = 0;
    }

    else
    {
      v18 = 1;
    }

    __swift_storeEnumTagSinglePayload(v7, v18, 1, v12);
    swift_beginAccess();
    sub_1E37FA198(v7, a1 + v11, &unk_1ECF28E20, &unk_1E42986D0);
    swift_endAccess();
  }

  return sub_1E3294EE4(a1 + v11, a2, &unk_1ECF28E20, &unk_1E42986D0);
}

uint64_t sub_1E38AF4CC(uint64_t a1, uint64_t *a2)
{
  v5 = OUTLINED_FUNCTION_75();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1E3889AF0(a1, &v14 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  v12 = *a2;
  swift_beginAccess();
  sub_1E37FA198(v10, v2 + v12, &qword_1ECF2CDE0, &unk_1E42B0D70);
  return swift_endAccess();
}

void (*sub_1E38AF5BC(void *a1))(uint64_t a1, uint64_t a2)
{
  *a1 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v3);
  v5 = *(v4 + 64);
  a1[1] = __swift_coroFrameAllocStub(v5);
  v6 = __swift_coroFrameAllocStub(v5);
  a1[2] = v6;
  sub_1E38AF0B0(v6);
  return sub_1E38AF654;
}

void sub_1E38AF66C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_1E3294EE4(*(a1 + 16), v4, &unk_1ECF28E20, &unk_1E42986D0);
    a3(v4);
    sub_1E325F6F0(v5, &unk_1ECF28E20, &unk_1E42986D0);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v5);

  free(v4);
}

uint64_t sub_1E38AF714()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre + 8) == 1)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
    if (v3)
    {
      if (*(v3 + 16))
      {
        v4 = sub_1E327D33C(0x6D614E65726E6567, 0xEA00000000007365);
        if (v5)
        {
          sub_1E328438C(*(v3 + 56) + 32 * v4, v14);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
          if (OUTLINED_FUNCTION_8_17(&v13, v6))
          {
            if (v13[2])
            {
              v2 = v13[4];
              v7 = v13[5];

LABEL_10:
              v8 = *v1;
              v9 = v1[1];
              *v1 = v2;
              v1[1] = v7;

              sub_1E37E9E48(v8, v9);
              goto LABEL_11;
            }
          }
        }
      }
    }

    v2 = 0;
    v7 = 0;
    goto LABEL_10;
  }

LABEL_11:
  v10 = OUTLINED_FUNCTION_27_0();
  sub_1E37EA628(v10, v11);
  return v2;
}

uint64_t sub_1E38AF844(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre);
  v4 = *(v2 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre);
  *v3 = a1;
  v3[1] = a2;
  return OUTLINED_FUNCTION_0_64(v4);
}

uint64_t sub_1E38AF85C(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E38AF714();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E38AF89C()
{
  OUTLINED_FUNCTION_26_7();
  v2 = (v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre);
  *v2 = v3;
  v2[1] = v0;
  if (v4)
  {

    v5 = OUTLINED_FUNCTION_57();
    sub_1E37E9E48(v5, v6);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_57();

    return sub_1E37E9E48(v8, v9);
  }
}

uint64_t sub_1E38AF924()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
  if (v1 && *(v1 + 16) && (v2 = sub_1E327D33C(0x696C696261706163, 0xEC00000073656974), (v3 & 1) != 0) && (sub_1E328438C(*(v1 + 56) + 32 * v2, v7), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0), (OUTLINED_FUNCTION_8_17(&v6, v4) & 1) != 0))
  {
    return sub_1E32772D8(v6);
  }

  else
  {
    return 0;
  }
}

void sub_1E38AF9D0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E3768E10(0x2D4D4D2D79797979, 0xEA00000000006464, v0);
  qword_1EE28B568 = v0;
}

uint64_t sub_1E38AFA6C(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 2;
  *(v1 + 72) = xmmword_1E4297170;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = -2;
  *(v1 + 128) = xmmword_1E4297170;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
  *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre) = xmmword_1E4297170;
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_familySharingDict) = a1;

  sub_1E3277E60(0x7475626972747461, 0xEA00000000007365, a1, &v18);

  if (v19)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    v14 = OUTLINED_FUNCTION_21_4();
    v15 = v17;
    if (!v14)
    {
      v15 = 0;
    }
  }

  else
  {
    sub_1E325F6F0(&v18, &unk_1ECF296E0, &unk_1E4298030);
    v15 = 0;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict) = v15;
  return v1;
}

uint64_t sub_1E38AFC04()
{

  sub_1E37E9E48(*(v0 + 32), *(v0 + 40));

  sub_1E37E9E48(*(v0 + 72), *(v0 + 80));
  sub_1E37C52A4(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  sub_1E37E9E48(*(v0 + 128), *(v0 + 136));
  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___addedDate, &qword_1ECF2CDE0, &unk_1E42B0D70);
  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___releaseDate, &qword_1ECF2CDE0, &unk_1E42B0D70);
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre), *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity____lazy_storage___genre + 8));

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity__releaseDate, &unk_1ECF28E20, &unk_1E42986D0);
  return v0;
}

uint64_t sub_1E38AFCF0()
{
  sub_1E38AFC04();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1E38AFECC(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 272))();
  return sub_1E37C55D4;
}

double sub_1E38AFF90@<D0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_5_2();
  (*(v2 + 312))(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

void (*sub_1E38B0080(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 352))();
  return sub_1E37C4BF8;
}

uint64_t sub_1E38B01E8(uint64_t a1)
{
  OUTLINED_FUNCTION_116();
  WitnessTable = swift_getWitnessTable();

  return sub_1E3B8DF5C(a1, WitnessTable);
}

unint64_t sub_1E38B0238(uint64_t a1)
{
  result = sub_1E38B0260();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E38B0260()
{
  result = qword_1ECF2CDE8;
  if (!qword_1ECF2CDE8)
  {
    type metadata accessor for LibFamilySharingBaseMediaEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CDE8);
  }

  return result;
}

uint64_t type metadata accessor for LibFamilySharingBaseMediaEntity(uint64_t a1)
{
  result = qword_1EE292860;
  if (!qword_1EE292860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E38B032C(uint64_t a1)
{
  sub_1E38B0440(319);
  if (v1 <= 0x3F)
  {
    sub_1E3273C28(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E38B0440(uint64_t a1)
{
  if (!qword_1EE28A448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF28E20, &unk_1E42986D0);
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE28A448);
    }
  }
}

uint64_t sub_1E38B04B4()
{
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  v0 = sub_1E4206F24();
  v1 = sub_1E4206F24();
  type metadata accessor for CGPoint(0);
  result = sub_1E4205CB4();
  qword_1EE28B598 = 0x406C200000000000;
  unk_1EE28B5A0 = 0x406C200000000000;
  qword_1EE28B5A8 = v0;
  qword_1EE28B5B0 = v1;
  qword_1EE28B5B8 = result;
  return result;
}

void *sub_1E38B0578(uint64_t a1, void *a2, __int128 *a3, uint64_t a4)
{
  v128 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v121 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v121 - v15;
  if (!a4 && !(*(*a1 + 392))(v14))
  {
    return 0;
  }

  type metadata accessor for MonogramLayout();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {

    return 0;
  }

  v18 = v17;
  v124 = a2;
  v19 = *(*a1 + 488);

  v21 = v19(v20);
  v127 = v16;
  if (!v21)
  {
    v22 = type metadata accessor for ViewModel();
    sub_1E37414E0(v22, v23, v24);
    v21 = sub_1E4205CB4();
  }

  v25 = v21;
  v26 = sub_1E41FE414();
  __swift_storeEnumTagSinglePayload(v127, 1, 1, v26);
  v125 = v128[9];
  if (v125 == 1 || (v129 = *v128, LOBYTE(v130) = *(v128 + 16), v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AD70, &qword_1E429F170), sub_1E38B22AC(), v28 = &v129, sub_1E4149AF0(v27, &v132), v133 == 1))
  {
    v30 = *(*v18 + 200);

    v32 = COERCE_DOUBLE(v30(v31));
    v34 = 0.0;
    if (v33)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v32;
    }

    v36 = COERCE_DOUBLE((*(*v18 + 304))());
    v28 = v37;

    if ((v28 & 1) == 0)
    {
      v34 = v36;
    }
  }

  else
  {
    v34 = *(&v132 + 1);
    v35 = *&v132;
  }

  if (sub_1E373E010(39, v25, v29))
  {
    type metadata accessor for ImageViewModel();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_30();
      v40 = (*(v39 + 1000))(0, v35, v34);
      if (v41 != -1)
      {
        v42 = v41;
        v126 = v40;

        switch(v42)
        {
          case 1:
            if ([objc_opt_self() makeImageProxyWithDescriptor_])
            {
              sub_1E4207264();
              swift_unknownObjectRelease();
            }

            else
            {
              v132 = 0u;
              v133 = 0u;
            }

            OUTLINED_FUNCTION_3_58();
            if (v59)
            {
              sub_1E3280A90(0, &qword_1EE23B340, 0x1E69DF730);
              if (swift_dynamicCast())
              {
                v54 = v134[0];
                if (v134[0])
                {
                  if ([v134[0] object])
                  {
                    sub_1E4207264();
                    swift_unknownObjectRelease();
                    sub_1E325F748(v127, &unk_1ECF363C0, &unk_1E42A9420);
                  }

                  else
                  {
                    sub_1E325F748(v127, &unk_1ECF363C0, &unk_1E42A9420);
                    v132 = 0u;
                    v133 = 0u;
                  }

                  OUTLINED_FUNCTION_3_58();
                  if (v120)
                  {
                    v61 = swift_dynamicCast() ^ 1;
                    v60 = v9;
LABEL_43:
                    __swift_storeEnumTagSinglePayload(v60, v61, 1, v26);
                    v62 = v9;
                    v51 = v127;
                    v63 = sub_1E327D738(v62, v127);
                    v121 = (*(*v28 + 904))(v63);
                    v56 = v64;
                    v65 = *(*v28 + 392);

                    v67 = v65(v66);

                    if (v67)
                    {
                      type metadata accessor for ImageLayout();
                      v68 = swift_dynamicCastClass();
                      if (v68)
                      {
                        v69 = (*(*v68 + 1968))();

                        v55 = v69;

                        sub_1E379098C(v126, 1u);
LABEL_86:
                        v48 = v121;
                        goto LABEL_51;
                      }
                    }

                    sub_1E379098C(v126, 1u);

                    v55 = 0;
                    goto LABEL_86;
                  }

LABEL_42:
                  sub_1E325F748(&v129, &unk_1ECF296E0, &unk_1E4298030);
                  v60 = v9;
                  v61 = 1;
                  goto LABEL_43;
                }
              }
            }

            else
            {
              sub_1E325F748(&v129, &unk_1ECF296E0, &unk_1E4298030);
            }

            sub_1E325F748(v127, &unk_1ECF363C0, &unk_1E42A9420);
            v54 = 0;
            v129 = 0u;
            v130 = 0u;
            goto LABEL_42;
          case 2:

            v57 = v126;
            v58 = 2;
            goto LABEL_49;
          case 3:

            v57 = v126;
            v58 = 3;
            goto LABEL_49;
          default:
            v43 = [v126 type];
            if (!v43)
            {
              v70 = sub_1E3F52F38();
              v46 = *v70;
              v45 = *(v70 + 1);

              v47 = [v126 name];
              goto LABEL_47;
            }

            if (v43 == 1)
            {
              v44 = sub_1E3F52F2C();
              v46 = *v44;
              v45 = *(v44 + 1);

              v47 = [v126 name];
LABEL_47:
              v71 = v47;
              v72 = sub_1E4205F14();
              v74 = v73;

              *&v129 = v46;
              *(&v129 + 1) = v45;

              MEMORY[0x1E69109E0](v72, v74);

              sub_1E41FE404();

              sub_1E379098C(v126, 0);

              v51 = v127;
              sub_1E325F748(v127, &unk_1ECF363C0, &unk_1E42A9420);
              sub_1E327D738(v12, v51);
              goto LABEL_29;
            }

            v57 = v126;
            v58 = 0;
LABEL_49:
            sub_1E379098C(v57, v58);
            v55 = 0;
            v48 = 0;
            break;
        }

LABEL_50:
        v56 = 0;
        v54 = 0;
        v51 = v127;
        goto LABEL_51;
      }
    }
  }

  v48 = sub_1E373E010(39, v25, v38);

  if (!v48)
  {
    v55 = 0;
    goto LABEL_50;
  }

  v49 = type metadata accessor for LibImageViewModel();
  v50 = swift_dynamicCastClass();
  v51 = v127;
  if (v50)
  {
    *(&v130 + 1) = v49;
    *&v129 = v50;

    v52 = *sub_1E39FAF00();
    objc_allocWithZone(MEMORY[0x1E69DF730]);
    v53 = v52;
    v54 = sub_1E38B2064(&v129, v52, 0);

    v55 = 0;
    v48 = 0;
    v56 = 0;
  }

  else
  {

LABEL_29:
    v55 = 0;
    v48 = 0;
    v56 = 0;
    v54 = 0;
  }

LABEL_51:
  v75 = sub_1E38B14E8(a1, v51, v18, v128);
  if (!v75)
  {
    sub_1E325F748(v51, &unk_1ECF363C0, &unk_1E42A9420);

    return 0;
  }

  v126 = v54;
  v121 = v48;
  v123 = v56;
  v76 = v75;
  v77 = (*(*v18 + 1720))(v75);
  LOBYTE(v129) = v77;
  LOBYTE(v132) = 4;
  sub_1E38B23EC(v77, v78, v79);
  v80 = [objc_allocWithZone(VUIMonogramViewConfiguration) initWithShadowImages_];
  (*(*v18 + 1744))();
  OUTLINED_FUNCTION_2_1();
  v82 = (*(v81 + 1272))();
  v84 = v83;

  v85 = *&v82;
  if (v84)
  {
    v85 = 0.0;
  }

  v86 = (*(*v18 + 672))([v80 setFocusedSizeIncrease_]);
  *&v132 = v86;
  *&v130 = v80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC50, &unk_1E42DC510);
  sub_1E4148DE0(sub_1E38B2440);

  v87 = (*(*v18 + 864))();
  v134[0] = v87;
  *&v133 = v80;
  sub_1E4148DE0(sub_1E38B2454);

  if (v55)
  {
    [v76 setShouldFallBackToSilhouette_];
  }

  v88 = v124;
  v89 = [v124 setConfiguration_];
  *&v132 = v88;
  MEMORY[0x1EEE9AC00](v89);
  *(&v121 - 2) = v80;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDF0, &qword_1E42A83C0);
  sub_1E4148C68(sub_1E38B1CBC, v90, &v129);
  v91 = v129;
  [v129 setImageProxy_];
  v124 = v76;
  v92 = [v91 setMonogramDescription_];
  if (v55)
  {
    type metadata accessor for GraphicsUtilities();
    v93 = v55;
    v94 = sub_1E418A59C();
    sub_1E418A5A8(v93, v94, v95);
    v97 = v96;
    OUTLINED_FUNCTION_5_61(v96, sel_setPlaceholderImage_);

    v98 = v126;
  }

  else
  {
    (*(*v18 + 1744))(v92);
    OUTLINED_FUNCTION_30();
    v100 = (*(v99 + 1992))();

    if (v100 == 3)
    {
      v97 = 0;
    }

    else
    {
      v101 = sub_1E3B64FB0();
      v97 = v101;
    }

    v98 = v126;
    OUTLINED_FUNCTION_5_61(v101, sel_setPlaceholderImage_);
  }

  if (!v98)
  {
    v129 = 0u;
    v130 = 0u;
LABEL_72:
    sub_1E325F748(&v129, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_73;
  }

  if ([v98 imageLoader])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v132 = 0u;
    v133 = 0u;
  }

  OUTLINED_FUNCTION_3_58();
  if (!v102)
  {
    goto LABEL_72;
  }

  type metadata accessor for LibImageLoader();
  if (swift_dynamicCast())
  {

    [v124 setIsUsingLibraryImageLoader_];
  }

LABEL_73:
  OUTLINED_FUNCTION_51_1();
  sub_1E3ACF3E8();
  v104 = v103;
  v106 = v105;
  v108 = v107;
  sub_1E39C1F18();
  v110 = v109;
  result = sub_1E32AE9B0(v109);
  v122 = v55;
  if (!result)
  {
    v113 = v98;

    v112 = 0;
    goto LABEL_79;
  }

  if ((v110 & 0xC000000000000001) != 0)
  {
    v112 = MEMORY[0x1E6911E60](0, v110);
    goto LABEL_77;
  }

  if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v112 = *(v110 + 32);

LABEL_77:
    v113 = v98;

LABEL_79:
    type metadata accessor for UIFactory();
    v114 = [v91 overlayView];
    *(&v130 + 1) = &type metadata for OverlayFactoryContext;
    v131 = &off_1F5D6F838;
    *&v129 = v104;
    *(&v129 + 1) = v106;
    LOWORD(v130) = v108 & 0x101;
    v115 = sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    v116 = sub_1E393D92C(v112, v114, &v129, 0, v115);

    v117 = sub_1E325F748(&v129, &qword_1ECF296C0, &unk_1E429BBE0);
    OUTLINED_FUNCTION_5_61(v117, sel_setOverlayView_);

    v118 = [v91 vui:1 isAccessibilityElement:?];
    if (v123)
    {
      v119 = sub_1E4205ED4();
    }

    else
    {
      v119 = 0;
    }

    OUTLINED_FUNCTION_5_61(v118, sel_vui_setAccessibilityText_);

    sub_1E325F748(v127, &unk_1ECF363C0, &unk_1E42A9420);
    return v91;
  }

  __break(1u);
  return result;
}

id sub_1E38B14E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v70 - v10;
  if (!a1)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v13 = (*(*a1 + 488))(v9);
  if (v13)
  {
    v14 = sub_1E373E010(17, v13, v12);

    if (v14)
    {
      if (*v14 == _TtC8VideosUI13TextViewModel)
      {
        v13 = sub_1E3C27024();
        v16 = v15;

        goto LABEL_9;
      }
    }

    goto LABEL_7;
  }

LABEL_8:
  v16 = 0;
LABEL_9:
  v17 = objc_opt_self();
  OUTLINED_FUNCTION_111();
  (*(v18 + 1768))();
  OUTLINED_FUNCTION_2_1();
  v20 = (*(v19 + 2408))();

  v21 = [v17 vui:v20 fontFromTextLayout:?];

  sub_1E38B2468(a2, v11);
  objc_allocWithZone(VUIMonogramDescription);
  v22 = v21;
  v23 = sub_1E38B21C4(v13, v16, v11, v21);
  if (v23)
  {
    if (a4[9] != 1 && (a4[2] & 1) == 0)
    {
      v25 = *a4;
      v24 = a4[1];
      OUTLINED_FUNCTION_111();
      v26 += 218;
      v27 = *v26;
      (*v26)();
      OUTLINED_FUNCTION_30();
      (*(v28 + 208))(v25, 0);

      (v27)(v29);
      OUTLINED_FUNCTION_2_1();
      (*(v30 + 312))(v24, 0);
    }

    OUTLINED_FUNCTION_111();
    v31 += 218;
    v32 = *v31;
    (*v31)();
    OUTLINED_FUNCTION_30();
    v34 = (*(v33 + 1992))();

    if (v34 != 3)
    {
      v35 = [v23 setShouldFallBackToSilhouette_];
    }

    (v32)(v35);
    OUTLINED_FUNCTION_30();
    v37 = (*(v36 + 2288))();
    v39 = v38;

    [v23 setSize_];
    if (_MergedGlobals_165 != -1)
    {
      swift_once();
    }

    [v23 setDefaultImageSize_];
    sub_1E38B1DA0(qword_1EE28B5B8);
    sub_1E38B24D8(v40, v23);
    v41 = *(v32)();
    v42 = (*(v41 + 1800))();

    if (v42 != 5)
    {
      v43 = [v23 setScaleMode_];
    }

    (v32)(v43);
    OUTLINED_FUNCTION_30();
    (*(v44 + 176))(v70);
    v45 = *v70;
    v46 = *&v70[1];
    v47 = *&v70[2];
    v48 = *&v70[3];

    if (v71)
    {
      v45 = *MEMORY[0x1E69DDCE0];
      v46 = *(MEMORY[0x1E69DDCE0] + 8);
      v47 = *(MEMORY[0x1E69DDCE0] + 16);
      v48 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    v49 = (*(*a3 + 744))([v23 setPadding_]);
    [v23 setBackgroundColor_];

    v50 = [v23 size];
    if (v52 == 0.0 && v51 == 0.0)
    {
      OUTLINED_FUNCTION_111();
      v54 = COERCE_DOUBLE((*(v53 + 200))());
      if (v55)
      {
        v56 = 0.0;
      }

      else
      {
        v56 = v54;
      }

      v57 = COERCE_DOUBLE((*(*a3 + 304))());
      if (v58)
      {
        v59 = 0.0;
      }

      else
      {
        v59 = v57;
      }

      v50 = [v23 setSize_];
    }

    (v32)(v50);
    OUTLINED_FUNCTION_30();
    (*(v60 + 1848))(v72);

    if ((v73 & 1) == 0)
    {
      v61 = [v23 setBorderWidth_];
    }

    v62 = (v32)(v61);
    v63 = (*(*v62 + 1824))();

    if (v63)
    {
      [v23 setBorderColor_];
    }

    OUTLINED_FUNCTION_111();
    v65 = (*(v64 + 1792))();
    if (v65 != 2)
    {
      [v23 setOptimizedImageRendering_];
    }

    OUTLINED_FUNCTION_111();
    v67 = (*(v66 + 672))();
    if (v67)
    {
      v68 = v67;
      [v23 setFillColor_];
    }

    [v23 setGradientStartColor_];
    [v23 setGradientEndColor_];
  }

  return v23;
}

id sub_1E38B1CBC@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(VUIMonogramView) initWithFrame:*(v1 + 16) configuration:{0.0, 0.0, 0.0, 0.0}];
  *a1 = result;
  return result;
}

void sub_1E38B1D18(char a1)
{
  v3 = [v1 overlayView];
  if (v3)
  {
    v4 = v3;
    [v3 setHidden_];
  }
}

void sub_1E38B1DA0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0, &qword_1E429A1F0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v11 = v10[1];
    *&v30[0] = *v10;
    *(&v30[0] + 1) = v11;

    swift_dynamicCast();
    type metadata accessor for CGPoint(0);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1E329504C(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1E329504C(v29, v30);
    v12 = sub_1E42073F4();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v13) >> 6;
      while (++v15 != v18 || (v17 & 1) == 0)
      {
        v19 = v15 == v18;
        if (v15 == v18)
        {
          v15 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v15);
        if (v20 != -1)
        {
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v21 = *(v2 + 48) + 40 * v16;
    *v21 = v22;
    *(v21 + 16) = v23;
    *(v21 + 32) = v24;
    sub_1E329504C(v30, (*(v2 + 56) + 32 * v16));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

id sub_1E38B2064(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = a1[3];
  if (v7)
  {
    v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v10 = *(v7 - 8);
    v11 = MEMORY[0x1EEE9AC00](v9);
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_1E4207994();
    (*(v10 + 8))(v13, v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v4 initWithObject:v14 imageLoader:a2 groupType:a3];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v15;
}

id sub_1E38B21C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1E4205ED4();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1E41FE414();
  v10 = 0;
  if (__swift_getEnumTagSinglePayload(a3, 1, v9) != 1)
  {
    v10 = sub_1E41FE364();
    (*(*(v9 - 8) + 8))(a3, v9);
  }

  v11 = [v5 initWithText:v8 imageURL:v10 font:a4];

  return v11;
}

unint64_t sub_1E38B22AC()
{
  result = qword_1EE23AEA0;
  if (!qword_1EE23AEA0)
  {
    type metadata accessor for CGSize(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23AEA0);
  }

  return result;
}

uint64_t sub_1E38B230C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 82))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 72);
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

uint64_t sub_1E38B2360(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

unint64_t sub_1E38B23EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2CDF8;
  if (!qword_1ECF2CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CDF8);
  }

  return result;
}

uint64_t sub_1E38B2468(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E38B24D8(uint64_t a1, void *a2)
{
  v3 = sub_1E4205C44();

  [a2 setSpecialOffsetByFirstLetter_];
}

uint64_t sub_1E38B2578()
{
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  swift_unknownObjectWeakInit();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = sub_1E38B2A10();
  *v2 = v0;
  v2[1] = sub_1E38B2684;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0x67616D4964616F6CLL, 0xEB00000000292865, sub_1E38B2A08, v1, v3);
}

uint64_t sub_1E38B2684()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1E38B27BC;
  }

  else
  {

    v2 = sub_1E38B27A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E38B27BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1E38B2820(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE10, "ԛ\r");
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &aBlock[-1] - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    (*(v4 + 16))(v6, a1, v3);
    v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v10 = swift_allocObject();
    (*(v4 + 32))(v10 + v9, v6, v3);
    aBlock[4] = sub_1E38B2B58;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E38B2C5C;
    aBlock[3] = &block_descriptor_23;
    v11 = _Block_copy(aBlock);

    [v8 setCompletionHandler_];
    _Block_release(v11);
    [v8 load];
  }
}

unint64_t sub_1E38B2A10()
{
  result = qword_1ECF2CE00;
  if (!qword_1ECF2CE00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF2CE00);
  }

  return result;
}

unint64_t sub_1E38B2A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2CE08;
  if (!qword_1ECF2CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CE08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ImageProxyError(_BYTE *result, int a2, int a3)
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

uint64_t sub_1E38B2B58(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE10, "ԛ\r") - 8;
  if (a1)
  {
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE10, "ԛ\r");
    return sub_1E42063D4();
  }

  else
  {
    if (!a2)
    {
      sub_1E38B2CF0(v4, v5, v6);
      swift_allocError();
    }

    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE10, "ԛ\r");
    return sub_1E42063C4();
  }
}

void sub_1E38B2C5C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a3;
  v7(a2, a3, a4);
}

unint64_t sub_1E38B2CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2CE18;
  if (!qword_1ECF2CE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2CE18);
  }

  return result;
}

double sub_1E38B2D44(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_viewModel] = a1;

  if ([v1 vuiIsViewLoaded])
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      type metadata accessor for MediaShowcaseHostingView();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        v6 = *&v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_viewModel];
        v7 = OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_viewModel;
        OUTLINED_FUNCTION_3_0(v4 + OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_viewModel, v9);
        *(v5 + v7) = v6;
      }
    }
  }

  return result;
}

uint64_t sub_1E38B2E2C()
{
  if (!*(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_viewModel))
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8();
  v2 = *(v1 + 1040);

  v4 = v2(v3);

  if (!v4)
  {
    goto LABEL_10;
  }

  result = sub_1E32AE9B0(v4);
  if (!result)
  {

    goto LABEL_10;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v4);
LABEL_7:

    OUTLINED_FUNCTION_8();
    v7 = (*(v6 + 872))();

    if (v7)
    {
      return v7;
    }

LABEL_10:

    return MEMORY[0x1E69E7CC0];
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E38B2F44@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_collectionImpressioner;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return sub_1E38B9460(v1 + v3, a1);
}

uint64_t sub_1E38B2F98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_collectionImpressioner;
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_collectionImpressioner, v5);
  sub_1E38B94D0(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_1E38B2FF0()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_1E42074B4();

    v3 = sub_1E41E1364(v0);
    MEMORY[0x1E69109E0](v3);

    MEMORY[0x1E69109E0](8250, 0xE200000000000000);

    v4 = OUTLINED_FUNCTION_27_0();
    MEMORY[0x1E69109E0](v4);

    MEMORY[0x1E69109E0](41, 0xE100000000000000);
    v2 = 0xD000000000000010;
    *v1 = 0xD000000000000010;
    v1[1] = 0x80000001E4265380;
  }

  return v2;
}

_BYTE *sub_1E38B310C()
{
  v1 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController);
  }

  else
  {
    v4 = v0;
    v5 = type metadata accessor for PaginatedMediaController(0);
    v6 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_collectionImpressioner;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E38B9460(v4 + v6, v12);
    swift_unknownObjectRetain();
    sub_1E3C487D0(0, 0, MEMORY[0x1E69E7CC0], 0, 0, v4, &off_1F5D61820, v12, 0, 0);
    v7 = OUTLINED_FUNCTION_70_3();
    sub_1E3C47874(v7);
    sub_1E3C52B94(1);
    sub_1E3C52CF0(2);
    sub_1E3C52848(0);
    sub_1E3C53324(1);
    sub_1E3C52908(0);
    v8 = OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldAdjustCaptionPosition;
    OUTLINED_FUNCTION_3_0(&v5[OBJC_IVAR____TtC8VideosUI24PaginatedMediaController_shouldAdjustCaptionPosition], v12);
    v5[v8] = 1;
    sub_1E3C52DB4(1);
    sub_1E3C4770C(1);
    sub_1E3C535A8(1);
    v9 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1E38B3250()
{
  v1 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar);
  }

  else
  {
    v4 = sub_1E3FC1E24();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1E38B32B0()
{
  OUTLINED_FUNCTION_52_11();
  if (v1 && (*(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_shouldShowMuteButton);
  }

  else
  {
    v2 = 0;
  }

  v4 = sub_1E38B3250();
  v3 = j__OUTLINED_FUNCTION_51_1();
  sub_1E3FBEA98(v2, v3 & 1);
}

uint64_t sub_1E38B3338()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___isAudioMuted);
  if (v1 == 2)
  {
    LOBYTE(v1) = 1;
    *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___isAudioMuted) = 1;
  }

  return v1 & 1;
}

void sub_1E38B335C(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_navigationButtonsHiddenFromOffset);
  *(v1 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_navigationButtonsHiddenFromOffset) = a1;
  v3 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_navigationButtonsHiddenFromOffset;
  if (v2 != *(v1 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_navigationButtonsHiddenFromOffset))
  {
    OUTLINED_FUNCTION_52_11();
    if (v4)
    {
      v5 = sub_1E38B3250();
      v6 = *(v1 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar);
      v7 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v8 = *(v6 + v7);
      v9 = *(v1 + v3);
      v10 = v8;
      v11 = j__OUTLINED_FUNCTION_51_1();
      sub_1E3FBFC94(v8, (v9 & 1) == 0, v11 & 1);
    }
  }
}

id sub_1E38B3424()
{
  v1 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___mediaShowcaseConfig;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___mediaShowcaseConfig);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___mediaShowcaseConfig);
  }

  else
  {
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 mediaShowcaseConfig];

    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

double sub_1E38B34C8()
{
  type metadata accessor for MediaShowcaseHostingView();
  OUTLINED_FUNCTION_50();

  v1 = sub_1E40037C8(v0);

  return v1;
}

id sub_1E38B351C()
{
  swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_viewModel) = 0;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v1 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_notificationObservers) = v1;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_metadataViewTopOffsetObserver) = 0;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_collectionImpressioner;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  OUTLINED_FUNCTION_63_7(OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isTabbarChild);
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasViewDisappeared) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___logPrefix);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_initializedPageViewModels) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_toolBarOffsetY) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_lastViewWidth) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_lastSizeClass) = 7;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_didSetupView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isControlButtonsVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___isAudioMuted) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_shouldShowMuteButton) = v4;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hideMuteButtonTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_showingButtonsInNavigationItem) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_navigationButtonsHiddenFromOffset) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___mediaShowcaseConfig) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasLayedOutSubviews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_accountSettingViewModel) = 0;
  result = sub_1E4207944();
  v6 = (v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_name);
  *v6 = result;
  v6[1] = v7;
  if (__OFADD__(qword_1EE291530, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_1EE291530;
    OUTLINED_FUNCTION_25();
    return objc_msgSendSuper2(v8, v9);
  }

  return result;
}

void sub_1E38B36F8()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_viewModel) = 0;
  if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
  {
    v1 = sub_1E37654B0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_notificationObservers) = v1;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_metadataViewTopOffsetObserver) = 0;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_collectionImpressioner;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isTabbarChild) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasViewDisappeared) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___logPrefix);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_initializedPageViewModels) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_toolBarOffsetY) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_lastViewWidth) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_lastSizeClass) = 7;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_didSetupView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isControlButtonsVisible) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___isAudioMuted) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_shouldShowMuteButton) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hideMuteButtonTimer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_showingButtonsInNavigationItem) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_navigationButtonsHiddenFromOffset) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___mediaShowcaseConfig) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasLayedOutSubviews) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_accountSettingViewModel) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E38B388C()
{
  type metadata accessor for MediaShowcaseHostingView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = sub_1E38B34C8();
  v3 = OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_widthThresholdForIpadLayout;
  OUTLINED_FUNCTION_3_0(&v1[OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_widthThresholdForIpadLayout], v9);
  *&v1[v3] = v2;
  v4 = v1;
  [v4 vui:2 setOverrideUserInterfaceStyle:?];
  v5 = [objc_opt_self() blackColor];
  [v4 setVuiBackgroundColor_];

  v6 = *&v0[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_viewModel];
  v7 = OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_viewModel;
  OUTLINED_FUNCTION_3_0(&v4[OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_viewModel], &v8);
  *&v4[v7] = v6;

  [v0 setVuiView_];
}

void sub_1E38B3A08()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  sub_1E38B3ABC();
  if ([objc_opt_self() isPad])
  {
    v1 = sub_1E39DFFC8();
    v2 = [v0 vuiView];
    v3 = v2;
    if (v1)
    {
      if (v2)
      {
LABEL_6:
        [v2 setClipsToBounds_];

        return;
      }

      __break(1u);
    }

    if (!v2)
    {
      __break(1u);
      return;
    }

    goto LABEL_6;
  }
}

void sub_1E38B3ABC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D8F0, &qword_1E42981C0);
  OUTLINED_FUNCTION_0_10();
  v73 = v3;
  v74 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v68 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_12();
  v8 = sub_1E4206C04();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CD00, &unk_1E42A2900);
  OUTLINED_FUNCTION_0_10();
  v85 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v68 - v17;
  v83 = objc_opt_self();
  v19 = [v83 defaultCenter];
  sub_1E4206C14();

  v20 = sub_1E32ADE38();
  v21 = sub_1E4206A04();
  v86 = v21;
  v22 = sub_1E42069A4();
  v75 = v22;
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v22);
  v84 = sub_1E38B96D8(&qword_1EE23B130, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v82 = sub_1E38B96D8(&qword_1EE23B1E0, sub_1E32ADE38, MEMORY[0x1E69E8028]);
  OUTLINED_FUNCTION_30_18();
  v76 = v8;
  sub_1E42007D4();
  sub_1E325F748(v1, &unk_1ECF2D2B0, &unk_1E429D3D0);

  v23 = *(v10 + 8);
  v78 = v10 + 8;
  v81 = v23;
  v23(v14, v8);
  OUTLINED_FUNCTION_4_0();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_25_26(v24);
  v80 = sub_1E32752B0(&qword_1EE28A240, &unk_1ECF2CD00, &unk_1E42A2900, MEMORY[0x1E695BE98]);
  sub_1E4200844();
  OUTLINED_FUNCTION_73_3();
  v25 = *(v85 + 8);
  v85 += 8;
  v79 = v25;
  v26 = OUTLINED_FUNCTION_27_0();
  v27(v26);
  v28 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_notificationObservers;
  OUTLINED_FUNCTION_15_48();
  sub_1E42004C4();
  swift_endAccess();

  v29 = [v83 defaultCenter];
  v30 = *MEMORY[0x1E69DF7E0];
  sub_1E4206C14();

  v31 = sub_1E4206A04();
  v32 = OUTLINED_FUNCTION_6_48(v31);
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v22);
  v35 = OUTLINED_FUNCTION_30_18();
  v36 = v76;
  OUTLINED_FUNCTION_65_9(v35, v37, v76);
  sub_1E325F748(v1, &unk_1ECF2D2B0, &unk_1E429D3D0);

  v81(v14, v36);
  OUTLINED_FUNCTION_4_0();
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_25_26(v38);
  OUTLINED_FUNCTION_44_21();
  OUTLINED_FUNCTION_73_3();
  v39 = OUTLINED_FUNCTION_27_0();
  v79(v39);
  OUTLINED_FUNCTION_15_48();
  sub_1E42004C4();
  swift_endAccess();

  v40 = [v83 defaultCenter];
  v41 = *MEMORY[0x1E69DF7D8];
  sub_1E4206C14();

  v42 = sub_1E4206A04();
  v43 = OUTLINED_FUNCTION_6_48(v42);
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v75);
  v46 = OUTLINED_FUNCTION_30_18();
  v71 = v20;
  OUTLINED_FUNCTION_65_9(v46, v47, v36);
  sub_1E325F748(v1, &unk_1ECF2D2B0, &unk_1E429D3D0);

  v69 = v14;
  v81(v14, v36);
  OUTLINED_FUNCTION_4_0();
  v48 = swift_allocObject();
  OUTLINED_FUNCTION_25_26(v48);
  OUTLINED_FUNCTION_44_21();
  OUTLINED_FUNCTION_73_3();
  v70 = v18;
  v49 = OUTLINED_FUNCTION_27_0();
  v50 = v28;
  v79(v49);
  OUTLINED_FUNCTION_15_48();
  sub_1E42004C4();
  swift_endAccess();

  v51 = sub_1E38D25EC();
  OUTLINED_FUNCTION_51_12(v51);
  v52 = v72;
  sub_1E38D2768();

  OUTLINED_FUNCTION_4_0();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_25_26(v53);
  OUTLINED_FUNCTION_11_9();
  sub_1E32752B0(v54, &qword_1ECF3D8F0, &qword_1E42981C0, v55);
  v56 = v73;
  sub_1E4200844();
  OUTLINED_FUNCTION_73_3();
  (*(v74 + 8))(v52, v56);
  OUTLINED_FUNCTION_15_48();
  v57 = v2;
  sub_1E42004C4();
  swift_endAccess();

  if ([objc_opt_self() isPad])
  {
    v58 = [v83 defaultCenter];
    sub_1E396B128();

    v59 = sub_1E4205ED4();

    v60 = v69;
    sub_1E4206C14();

    v61 = sub_1E4206A04();
    v62 = OUTLINED_FUNCTION_6_48(v61);
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v75);
    v65 = v70;
    v66 = v76;
    sub_1E42007D4();
    sub_1E325F748(v1, &unk_1ECF2D2B0, &unk_1E429D3D0);

    v81(v60, v66);
    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v67 = v77;
    sub_1E4200844();

    (v79)(v65, v67);
    OUTLINED_FUNCTION_11_3(v57 + v50, &v86);
    sub_1E42004C4();
    swift_endAccess();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38B4324()
{
  v1 = v0;
  v92.receiver = v0;
  v92.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v92, sel_vui_viewDidLayoutSubviews);
  v0[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasLayedOutSubviews] = 1;
  if (v0[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_didSetupView])
  {
LABEL_26:
    v83 = sub_1E38B310C();
    v84 = [v83 vuiView];

    if (v84)
    {
      v85 = OUTLINED_FUNCTION_35_18();
      if (v85)
      {
        v86 = v85;
        [v85 bounds];
        OUTLINED_FUNCTION_3();

        v87 = OUTLINED_FUNCTION_6();
        [v88 v89];

        if ((v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasViewDisappeared] & 1) == 0)
        {
          sub_1E38B4B28();
        }

        v90 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_initializedPageViewModels;
        v91 = OUTLINED_FUNCTION_35_18();
        if (v91)
        {
          OUTLINED_FUNCTION_50_7(v91);
          OUTLINED_FUNCTION_70_8();
          OUTLINED_FUNCTION_17_4();
          sub_1E38B4E78();
          v1[v90] = 1;
          return;
        }

        goto LABEL_35;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v0[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_didSetupView] = 1;
  v2 = sub_1E38D25EC();
  OUTLINED_FUNCTION_51_12(v2);
  v3 = sub_1E38D262C();

  v0[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___isAudioMuted] = v3 & 1;
  v4 = OUTLINED_FUNCTION_35_18();
  if (!v4)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  OUTLINED_FUNCTION_50_7(v4);
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_17_4();
  sub_1E38B5B8C();
  if (sub_1E39DFFC8())
  {
    sub_1E38B310C();
    v5 = OUTLINED_FUNCTION_18_26();
    sub_1E3C479B0(v5);

    v6 = *&v0[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
    v7 = OUTLINED_FUNCTION_18_26();
    sub_1E3C47A74(v7);
  }

  v8 = sub_1E38B310C();
  v9 = sub_1E38D25EC();
  OUTLINED_FUNCTION_51_12(v9);
  v10 = sub_1E38D262C();

  sub_1E3C53038(v10 & 1);

  v11 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController;
  v12 = *&v0[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
  OUTLINED_FUNCTION_39_2();
  v13 = sub_1E38B3424();
  [v13 backgroundVolume];

  sub_1E3C53200();
  v14 = *&v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___mediaShowcaseConfig];
  v15 = *&v1[v11];
  [v14 foregroundVolume];
  v16 = v15;
  sub_1E3C53218();

  v17 = OUTLINED_FUNCTION_48_17();
  [v16 animationTransitionDuration];
  v18 = v17;
  sub_1E3C53230();

  v19 = OUTLINED_FUNCTION_48_17();
  [v18 volumeTransitionAnimationDuration];
  v20 = v19;
  sub_1E3C53248();

  v21 = OUTLINED_FUNCTION_48_17();
  v22 = [v20 numberOfVolumeIncrements];
  v23 = v21;
  sub_1E3C53260(v22);

  v24 = OUTLINED_FUNCTION_48_17();
  [v23 playbackDelayInterval];
  v25 = v24;
  sub_1E3C52AD4();

  v26 = *&v1[v11];
  v27 = OUTLINED_FUNCTION_18_26();
  sub_1E3C4770C(v27);

  v28 = OUTLINED_FUNCTION_48_17();
  sub_1E3C467F8([v25 carouselBehaviorEnabled]);

  [v1 vui:*&v1[v11] addChildViewController:?];
  v29 = [*&v1[v11] vuiView];
  if (!v29)
  {
    goto LABEL_37;
  }

  v30 = v29;
  v31 = OUTLINED_FUNCTION_35_18();
  if (!v31)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v32 = v31;
  [v31 bounds];
  OUTLINED_FUNCTION_3();

  v33 = OUTLINED_FUNCTION_6();
  [v34 v35];

  v36 = OUTLINED_FUNCTION_35_18();
  if (!v36)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v37 = v36;
  v38 = [*&v1[v11] vuiView];
  if (!v38)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v39 = v38;
  [v37 addSubview_];

  [*&v1[v11] vui:v1 didMoveToParentViewController:?];
  sub_1E38B310C();
  v40 = OUTLINED_FUNCTION_18_26();
  sub_1E3C51644(v40, v41, v42, v43, v44, v45, v46, v47, v92.receiver, v92.super_class, v93[0]);

  v48 = OUTLINED_FUNCTION_35_18();
  if (!v48)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  OUTLINED_FUNCTION_50_7(v48);
  v50 = v49;

  sub_1E38B5EE0(v50);
  v51 = sub_1E38B3250();
  [v51 setMaximumContentSizeCategory_];

  v52 = OUTLINED_FUNCTION_35_18();
  if (!v52)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v53 = v52;
  v54 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar;
  [v52 addSubview_];

  v55 = sub_1E38B2E2C();
  sub_1E32AE9B0(v55);
  OUTLINED_FUNCTION_11_5();

  v56 = sub_1E38B310C();
  v57 = sub_1E3C465D8();

  sub_1E38B6168(v57);
  v58 = *&v1[v54];
  OUTLINED_FUNCTION_4_0();
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = &v58[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_onMutePressed];
  OUTLINED_FUNCTION_3_0(&v58[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_onMutePressed], v93);
  v61 = *v60;
  v62 = v60[1];
  *v60 = sub_1E38B9660;
  v60[1] = v59;

  v63 = v58;
  sub_1E34AF594(v61, v62);

  v64 = *&v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_viewModel];

  if (!v64 || (OUTLINED_FUNCTION_8(), (v66 = (*(v65 + 552))()) == 0))
  {
    v97 = 0u;
    v98 = 0u;
    goto LABEL_21;
  }

  v95 = &unk_1F5D7BE68;
  v96 = &off_1F5D7BC48;
  LOBYTE(v94) = 13;
  sub_1E3F9F164(&v94, v66, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(&v94);
  if (!*(&v98 + 1))
  {
LABEL_21:
    v75 = &v97;
LABEL_22:
    sub_1E325F748(v75, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_23;
  }

  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v68 = v94;
  sub_1E384EE08(62);
  sub_1E3277E60(v69, v70, v68, &v94);

  if (!v95)
  {
    v75 = &v94;
    goto LABEL_22;
  }

  if (swift_dynamicCast())
  {
    v71 = v97;
    sub_1E384EE08(62);
    v95 = v67;
    *&v94 = v71;
    v74 = sub_1E3A7CD30(v72, v73, &v94, v64);

    __swift_destroy_boxed_opaque_existential_1(&v94);
    goto LABEL_24;
  }

LABEL_23:
  v74 = 0;
LABEL_24:

  *&v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_accountSettingViewModel] = v74;

  v76 = *&v1[v54];
  sub_1E3FC03AC(v74);

  v77 = OUTLINED_FUNCTION_35_18();
  if (v77)
  {
    OUTLINED_FUNCTION_50_7(v77);

    sub_1E38B6754();
    v78 = *&v1[v54];
    v79 = objc_opt_self();
    v80 = v78;
    v81 = [v79 sharedInstance];
    v82 = [v81 autoPlayConfig];

    LOBYTE(v81) = [v82 autoPlayVideoSound];
    sub_1E3FBDD44(v81 ^ 1);

    goto LABEL_26;
  }

LABEL_43:
  __break(1u);
}

void sub_1E38B4B28()
{
  v1 = v0;
  v2 = sub_1E38B3250();
  sub_1E3FC6D18();
  sub_1E3FC0A14();

  v3 = OUTLINED_FUNCTION_67_4();
  if (!v3)
  {
    __break(1u);
    goto LABEL_22;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v41.origin.x = v6;
  v41.origin.y = v8;
  v41.size.width = v10;
  v41.size.height = v12;
  CGRectGetWidth(v41);
  sub_1E3FC6D24();
  v13 = OUTLINED_FUNCTION_67_4();
  if (!v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = v13;
  type metadata accessor for MediaShowcaseCollectionLayout();
  [v14 bounds];
  v16 = v15;
  v18 = v17;

  v19 = sub_1E38B34C8();
  v20 = sub_1E3FC706C(v16, v18, v19);
  if (v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isTabbarChild] == 1 && ((v21 = v20, v22 = objc_opt_self(), ([v22 isPhone] & 1) != 0) || objc_msgSend(v22, sel_isPad) && (sub_1E3A24FDC(v21) & 1) != 0))
  {
    if ([v22 isPhone])
    {
      sub_1E3FC6D30();
    }

    else
    {
      sub_1E3FC6D3C();
    }

    v36 = sub_1E38B3250();
    sub_1E3FC02FC();
  }

  else
  {
    v23 = OUTLINED_FUNCTION_67_4();
    if (!v23)
    {
LABEL_24:
      __break(1u);
      return;
    }

    v24 = v23;
    v25 = [v23 window];

    if (v25)
    {
      v26 = [v25 windowScene];

      if (v26)
      {
        v27 = [v26 statusBarManager];

        if (v27)
        {
          [v27 statusBarFrame];
          v29 = v28;
          v31 = v30;
          v33 = v32;
          v35 = v34;

          v42.origin.x = v29;
          v42.origin.y = v31;
          v42.size.width = v33;
          v42.size.height = v35;
          CGRectGetHeight(v42);
        }
      }
    }

    sub_1E3FC6CDC();
  }

  v39 = *&v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar];
  v37 = OUTLINED_FUNCTION_67_4();
  if (!v37)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v38 = v37;
  [v37 bounds];

  [v1 vuiIsRTL];
  VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
  [v39 setFrame_];
}

void sub_1E38B4E78()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  if ((v8 != 0.0 || v6 != 0.0) && *&v2[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_lastViewWidth] != v8)
  {
    v44 = v4;
    v43 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_lastViewWidth;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v13(v1);
    v14 = v2;
    v15 = sub_1E41FFC94();
    v16 = sub_1E4206814();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v45 = OUTLINED_FUNCTION_72_0();
      *v17 = 136315650;
      v18 = sub_1E38B2FF0();
      v20 = sub_1E3270FC8(v18, v19, &v45);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      OUTLINED_FUNCTION_17_4();
      v21 = sub_1E4206E54();
      v23 = sub_1E3270FC8(v21, v22, &v45);

      *(v17 + 14) = v23;
      *(v17 + 22) = 1024;
      *(v17 + 24) = v4 & 1;
      _os_log_impl(&dword_1E323F000, v15, v16, "%s sizeDidChange: %s, shouldInitPageViewModels: %{BOOL}d", v17, 0x1Cu);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_7_7();
    }

    (*(v11 + 8))(v1, v9);
    OUTLINED_FUNCTION_17_4();
    sub_1E38B5B8C();
    OUTLINED_FUNCTION_17_4();
    sub_1E38B79E8();
    v24 = sub_1E38B310C();
    v25 = sub_1E38B3424();
    v26 = [v25 carouselBehaviorEnabled];

    sub_1E3C467F8(v26);
    type metadata accessor for MediaShowcaseCollectionLayout();
    sub_1E38B34C8();
    v27 = OUTLINED_FUNCTION_17_4();
    v30 = sub_1E3FC706C(v27, v28, v29);
    v33 = v30;
    v34 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_lastSizeClass;
    v35 = v14[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_lastSizeClass];
    v47 = v30;
    if (v35 == 7 || (v46 = v35, sub_1E37F99D4(v30, v31, v32), (sub_1E4205E84() & 1) == 0))
    {
      sub_1E38B5EE0(v8);
      v37 = *&v14[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
      if (v44)
      {
        v38 = sub_1E38B2E2C();
      }

      else
      {
        v38 = 0;
      }

      sub_1E3C50DD4(v33, v38);

      v14[v34] = v33;
    }

    else
    {
      v36 = *&v14[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
      sub_1E3C50E7C();
    }

    sub_1E38B6754();
    if (TVAppFeature.isEnabled.getter(20, v39, v40))
    {
      v41 = *&v14[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
      v42 = sub_1E3C58330();

      sub_1E38B6168(v42);
    }

    *&v2[v43] = v8;
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E38B523C(char a1)
{
  v2 = v1;
  v20.receiver = v2;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_vui_viewWillDisappear_, a1 & 1);
  v2[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasViewDisappeared] = 1;
  if ((v2[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused] & 1) == 0)
  {
    v4 = sub_1E38B310C();
    v5 = sub_1E3C52774();

    if ((v5 & 1) == 0)
    {
      v6 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController;
      v7 = *&v2[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
      sub_1E3C53C48();

      v8 = *&v2[v6];
      v9 = OUTLINED_FUNCTION_70_3();
      sub_1E3C51644(v9, v10, v11, v12, v13, v14, v15, v16, v20.receiver, v20.super_class, v21);

      v17 = *&v2[v6];
      v18 = OUTLINED_FUNCTION_70_3();
      sub_1E3C475BC(v18);
    }
  }

  sub_1E38B310C();
  v19 = OUTLINED_FUNCTION_70_3();
  sub_1E3C52DB4(v19);
}

void sub_1E38B536C(char a1)
{
  v2 = v1;
  v23.receiver = v2;
  v23.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v23, sel_vui_viewDidAppear_, a1 & 1);
  *(v2 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasViewDisappeared) = 0;
  v4 = 0;
  if ([objc_opt_self() isPad])
  {
    v5 = [objc_opt_self() sharedInstance];
    v6 = [v5 splitViewController];

    if (v6)
    {
      v4 = [v6 isSidebarEditing];

      if (v4)
      {
        v4 = [v2 isViewInTopMostVisibleViewController];
      }
    }

    else
    {
      v4 = 0;
    }

    *(v2 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing) = v4;
  }

  if ((*(v2 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused) & 1) == 0)
  {
    v7 = sub_1E38B310C();
    v8 = sub_1E3C52774();

    if (((v8 | v4) & 1) == 0)
    {
      v9 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController;
      v10 = *(v2 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController);
      v11 = OUTLINED_FUNCTION_18_26();
      sub_1E3C51644(v11, v12, v13, v14, v15, v16, v17, v18, v23.receiver, v23.super_class, v24);

      v19 = *&v9[v2];
      OUTLINED_FUNCTION_39_2();
      v20 = sub_1E38B3424();
      v21 = [v20 isAutoAdvanceToNextPageEnabled];

      sub_1E3C475BC(v21);
    }
  }

  sub_1E38B310C();
  v22 = OUTLINED_FUNCTION_18_26();
  sub_1E3C52DB4(v22);

  sub_1E38B4B28();
}

uint64_t sub_1E38B555C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE28, qword_1E42A8518);
  sub_1E4148C68(sub_1E38B55D8, v0, &v4);
  v1 = v4;

  sub_1E38B2D44(v2);
  return v1;
}

id sub_1E38B55D8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for MediaShowcaseHostingViewController()) init];
  *a1 = result;
  return result;
}

void sub_1E38B5610()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v10 = sub_1E324FBDC();
  (*(v8 + 16))(v1, v10, v6);
  v11 = v3;
  v12 = v0;
  v13 = sub_1E41FFC94();
  v14 = sub_1E4206814();

  v35 = v12;
  if (os_log_type_enabled(v13, v14))
  {
    v34 = v3;
    v15 = swift_slowAlloc();
    v33 = v6;
    v16 = swift_slowAlloc();
    v36 = OUTLINED_FUNCTION_100();
    *v15 = 136315650;
    v17 = sub_1E38B2FF0();
    OUTLINED_FUNCTION_49_1(v17, v18);
    OUTLINED_FUNCTION_11_5();

    *(v15 + 4) = v12;
    *(v15 + 12) = 1024;
    *(v15 + 14) = v5 & 1;
    *(v15 + 18) = 2112;
    *(v15 + 20) = v11;
    *v16 = v34;
    v19 = v11;
    _os_log_impl(&dword_1E323F000, v13, v14, "%s showNavigationBarButtons: show = %{BOOL}d, item: %@", v15, 0x1Cu);
    sub_1E325F748(v16, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_6_0();
    v3 = v34;
    OUTLINED_FUNCTION_6_0();

    (*(v8 + 8))(v1, v33);
  }

  else
  {

    (*(v8 + 8))(v1, v6);
  }

  if (sub_1E39DFFC8())
  {
    v20 = v12;
    if (*(v12 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_showingButtonsInNavigationItem))
    {
      v21 = sub_1E38B3250();
      v22 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem;
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      v23 = *&v21[v22];
      v24 = v23;

      if (v3)
      {
        if (v23)
        {

          if (v23 == v3)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        if (!v23)
        {
          goto LABEL_23;
        }
      }
    }

    *(v12 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_showingButtonsInNavigationItem) = 1;
    v31 = sub_1E38B3250();
    [v31 setHidden_];

    goto LABEL_21;
  }

  v20 = v12;
  if (![objc_opt_self() isPad])
  {
    goto LABEL_23;
  }

  if (*(v12 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_showingButtonsInNavigationItem) != (v5 & 1))
  {
LABEL_12:
    v35[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_showingButtonsInNavigationItem] = v5 & 1;
    v25 = sub_1E38B3250();
    [v25 setHidden_];

    if ((v5 & 1) == 0)
    {
      v26 = 0;
LABEL_22:
      v32 = *&v20[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___toolBar];
      sub_1E3FBFC94(v3, v26 & 1, 0);

      goto LABEL_23;
    }

LABEL_21:
    v26 = v20[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_navigationButtonsHiddenFromOffset] ^ 1;
    goto LABEL_22;
  }

  v27 = sub_1E38B3250();
  v28 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v29 = *&v27[v28];
  v30 = v29;

  if (!v3)
  {
    if (!v29)
    {
      goto LABEL_23;
    }

    goto LABEL_12;
  }

  if (!v29)
  {
    goto LABEL_12;
  }

  if (v29 != v3)
  {
    goto LABEL_12;
  }

LABEL_23:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38B5B8C()
{
  OUTLINED_FUNCTION_93();
  v4 = v3;
  v6 = v5;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v8(v1);
  v9 = v0;
  v10 = sub_1E41FFC94();
  v11 = sub_1E42067D4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_72_0();
    *v12 = 136446466;
    v13 = sub_1E38B2FF0();
    OUTLINED_FUNCTION_49_1(v13, v14);
    OUTLINED_FUNCTION_34_3();
    v17 = OUTLINED_FUNCTION_45_15(v15, v16);
    OUTLINED_FUNCTION_49_1(v17, v18);
    OUTLINED_FUNCTION_34_3();
    *(v12 + 14) = v2;
    OUTLINED_FUNCTION_66_12(&dword_1E323F000, v19, v20, "%{public}s updateViewLayoutSizeClass, size = %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_21_0();
  }

  v21 = OUTLINED_FUNCTION_74();
  v22(v21);
  type metadata accessor for MediaShowcaseCollectionLayout();
  OUTLINED_FUNCTION_39_2();
  v23 = sub_1E38B34C8();
  sub_1E3FC706C(v6, v4, v23);
  v24 = [v9 traitCollection];
  sub_1E3C2AE10();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = *&v9[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_viewModel];
  if (v31)
  {
    v32 = *(*v31 + 392);

    v34 = v32(v33);

    if (v34)
    {
      OUTLINED_FUNCTION_8();
      (*(v35 + 1640))(v26, v28, v30);
    }
  }

  v36 = sub_1E38B2E2C();
  v37 = sub_1E32AE9B0(v36);
  if (!v37)
  {
    goto LABEL_15;
  }

  v38 = v37;
  if (v37 >= 1)
  {
    for (i = 0; i != v38; ++i)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x1E6911E60](i, v36);
      }

      else
      {
        v40 = *(v36 + 8 * i + 32);
      }

      v41 = (*(*v40 + 392))();
      if (v41)
      {
        (*(*v41 + 1640))(v26, v28, v30);
      }
    }

LABEL_15:

    OUTLINED_FUNCTION_54_0();
    return;
  }

  __break(1u);
}

void sub_1E38B5EE0(double a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35A30, &qword_1E429F570);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_41();
  type metadata accessor for MediaShowcaseCollectionLayout();
  v5 = sub_1E38B34C8();
  v6 = sub_1E3FC7038(a1, v5);
  v7 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_metadataViewTopOffsetObserver;
  v8 = *&v1[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_metadataViewTopOffsetObserver];
  if (v6)
  {
    if (v8)
    {

      sub_1E42004E4();
    }

    *&v2[v7] = 0;

    sub_1E3FC6C48();
    if (([v2 vuiIsRTL] & 1) == 0)
    {
      sub_1E3FC6C3C();
    }

    sub_1E3FC6C8C();
    if ([v2 vuiIsRTL])
    {
      sub_1E3FC6C3C();
    }

    v17 = sub_1E38B310C();
    sub_1E3C534D0();
  }

  else
  {
    if (v8)
    {

      sub_1E42004E4();
    }

    v9 = sub_1E38B310C();
    sub_1E3C47C20();

    OUTLINED_FUNCTION_4_0();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_11_9();
    sub_1E32752B0(v10, v11, v12, v13);
    v14 = sub_1E4200844();

    v15 = OUTLINED_FUNCTION_74();
    v16(v15);
    *&v2[v7] = v14;
  }
}

void sub_1E38B6168(uint64_t a1)
{
  v2 = sub_1E38B2E2C();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v7[1] = v2;
    v5 = a1;
    v6 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0, MEMORY[0x1E69E6340]);
    sub_1E38D2054(&v5, v7);
    v3 = v7[0];

    if (v3)
    {
      v4 = sub_1E38B3250();
      sub_1E3FBFE0C(v3);
    }
  }
}

void sub_1E38B6250()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1E324FBDC();
    (*(v5 + 16))(v0, v9, v3);
    v10 = v8;
    v11 = sub_1E41FFC94();
    v12 = sub_1E42067E4();

    if (os_log_type_enabled(v11, v12))
    {
      v32 = v3;
      v13 = OUTLINED_FUNCTION_42_9();
      v31 = OUTLINED_FUNCTION_100();
      v33 = v31;
      *v13 = 136315394;
      v14 = sub_1E38B2FF0();
      sub_1E3270FC8(v14, v15, &v33);
      OUTLINED_FUNCTION_11_5();

      *(v13 + 4) = v10;
      *(v13 + 12) = 1024;
      *(v13 + 14) = v2 & 1;
      _os_log_impl(&dword_1E323F000, v11, v12, "%s Toggle mute button, isMuted = %{BOOL}d", v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v31);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v5 + 8))(v0, v32);
    }

    else
    {

      (*(v5 + 8))(v0, v3);
    }

    sub_1E38B65BC();
    v16 = sub_1E38D25EC();
    OUTLINED_FUNCTION_51_12(v16);
    sub_1E38D27DC(v2 & 1);

    v17 = [objc_opt_self() sharedInstance];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BD0;
    v33 = sub_1E4205F14();
    v34 = v19;
    v20 = MEMORY[0x1E69E6158];
    OUTLINED_FUNCTION_41_20();
    v21 = sub_1E4205F14();
    *(inited + 96) = v20;
    *(inited + 72) = v21;
    *(inited + 80) = v22;
    v33 = sub_1E4205F14();
    v34 = v23;
    OUTLINED_FUNCTION_41_20();
    v24 = sub_1E4205F14();
    *(inited + 168) = v20;
    *(inited + 144) = v24;
    *(inited + 152) = v25;
    v33 = sub_1E4205F14();
    v34 = v26;
    OUTLINED_FUNCTION_41_20();
    v27 = sub_1E4205F14();
    *(inited + 240) = v20;
    *(inited + 216) = v27;
    *(inited + 224) = v28;
    v29 = v10;
    OUTLINED_FUNCTION_74();
    sub_1E4205CB4();
    v30 = sub_1E4205C44();

    [v17 recordClick_];
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38B65BC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v11(v10);
  v12 = v0;
  v13 = sub_1E41FFC94();
  sub_1E42067E4();

  if (OUTLINED_FUNCTION_75_3())
  {
    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_26_8();
    *v1 = 136315394;
    v14 = sub_1E38B2FF0();
    OUTLINED_FUNCTION_58_0(v14, v15);
    OUTLINED_FUNCTION_40_18();
    *(v1 + 4) = v3;
    OUTLINED_FUNCTION_56_11();
    *(v1 + 14) = v3 & 1;
    OUTLINED_FUNCTION_14_6(&dword_1E323F000, v16, v17, "%s updateAudio isMuted=%{BOOL}d");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_7_7();
  }

  (*(v6 + 8))(v10, v4);
  v18 = sub_1E38B310C();
  sub_1E3C53038(v3 & 1);

  sub_1E38B7DA4();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38B6754()
{
  if ([objc_opt_self() isPad])
  {
    v1 = [v0 vuiTraitCollection];
    v2 = [v1 horizontalSizeClass];

    v3 = [objc_opt_self() sharedInstance];
    v4 = [v3 accountConfig];

    LODWORD(v3) = [v4 showAccountSettingOnSidebar];
    if (v3)
    {
      v5 = sub_1E38B3250();
      if (v2 == 1)
      {
        v6 = *(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isTabbarChild);
      }

      else
      {
        v6 = 0;
      }

      v7 = v5;
      sub_1E3FC0934(v6);
    }
  }
}

void sub_1E38B6880()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v62 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v62 - v12;
  sub_1E41FDF14();
  if (!v69)
  {
    sub_1E325F748(v68, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v27(v7);
    v28 = sub_1E41FFC94();
    v29 = sub_1E42067E4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_125_0();
      *v30 = 0;
      _os_log_impl(&dword_1E323F000, v28, v29, "MediaShowcase:: VUIUpNextRequestDidFinish does't contain canonicalID, ignore the event", v30, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v4 + 8))(v7, v2);
    goto LABEL_11;
  }

  v14 = *(&v70 + 1);
  v15 = v70;
  v16 = sub_1E41FDF24();
  if (v16)
  {
    v66 = sub_1E4205F14();
    v67 = v17;

    sub_1E4207414();
    sub_1E375D7E8(v16, &v70, v68);

    sub_1E375D84C(v68);
    if (*(&v71 + 1))
    {

      sub_1E325F748(&v70, &unk_1ECF296E0, &unk_1E4298030);
      sub_1E324FBDC();
      OUTLINED_FUNCTION_4_32();
      v18(v13);

      v19 = sub_1E41FFC94();
      v20 = sub_1E42067E4();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = OUTLINED_FUNCTION_100();
        v68[0] = v22;
        *v21 = 136315138;
        v23 = OUTLINED_FUNCTION_13_8();
        v26 = sub_1E3270FC8(v23, v24, v25);

        *(v21 + 4) = v26;
        _os_log_impl(&dword_1E323F000, v19, v20, "MediaShowcase:: UpNext request for %s has occurred error, ignore the event", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        OUTLINED_FUNCTION_7_7();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v4 + 8))(v13, v2);
LABEL_11:
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
  }

  sub_1E325F748(&v70, &unk_1ECF296E0, &unk_1E4298030);
  if (!v16)
  {
    v70 = 0u;
    v71 = 0u;
    goto LABEL_45;
  }

  v66 = sub_1E4205F14();
  v67 = v31;
  sub_1E4207414();
  sub_1E375D7E8(v16, &v70, v68);

  sub_1E375D84C(v68);
  if (!*(&v71 + 1))
  {
LABEL_45:
    sub_1E325F748(&v70, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_46;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_46:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_4_32();
    v53(v10);

    v54 = sub_1E41FFC94();
    v55 = sub_1E42067E4();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = OUTLINED_FUNCTION_100();
      v68[0] = v57;
      *v56 = 136315138;
      v58 = OUTLINED_FUNCTION_13_8();
      v61 = sub_1E3270FC8(v58, v59, v60);

      *(v56 + 4) = v61;
      _os_log_impl(&dword_1E323F000, v54, v55, "MediaShowcase:: UpNext request for %s doesn't contain action key, ignore the event", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_21_0();
    }

    else
    {
    }

    (*(v4 + 8))(v10, v2);
    goto LABEL_11;
  }

  v64 = v1;
  v65 = v15;
  v32 = v68[0];
  v33 = sub_1E38B2E2C();
  v34 = sub_1E32AE9B0(v33);
  v35 = 0;
  v36 = &VUIUpNextRemovedState;
  if (!v32)
  {
    v36 = VUIUpNextAddedState;
  }

  v62[1] = *v36;
  v63 = v14;
  while (1)
  {
    if (v34 == v35)
    {

      goto LABEL_11;
    }

    if ((v33 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x1E6911E60](v35, v33);
      v37 = v38;
    }

    else
    {
      if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v37 = *(v33 + 8 * v35 + 32);
    }

    if (__OFADD__(v35, 1))
    {
      break;
    }

    v39 = (*(*v37 + 488))(v38);
    if (!v39)
    {
      goto LABEL_42;
    }

    v42 = v39;
    if (*(v39 + 16) && (v43 = sub_1E3740AE8(65, v40, v41), (v44 & 1) != 0))
    {
      v45 = *(*(v42 + 56) + 8 * v43);

      LOBYTE(v70) = 4;
      (*(*v45 + 776))(v68, &v70, &unk_1F5D5D0A8, &off_1F5D5C758);
      if (!v69)
      {
        sub_1E325F748(v68, &unk_1ECF296E0, &unk_1E4298030);
LABEL_34:

        goto LABEL_42;
      }

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_34;
      }

      if (v65 == v70 && v14 == *(&v70 + 1))
      {
      }

      else
      {
        v47 = sub_1E42079A4();

        if ((v47 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      v48 = sub_1E4205F14();
      LOBYTE(v70) = 5;
      v69 = MEMORY[0x1E69E6158];
      v68[0] = v48;
      v68[1] = v49;
      (*(*v45 + 784))(&v70, v68, &unk_1F5D5D0A8, &off_1F5D5C758);
      sub_1E325F748(v68, &unk_1ECF296E0, &unk_1E4298030);
      v50 = sub_1E38B310C();
      v51 = sub_1E3C465D8();

      if (v35 == v51)
      {
        v52 = sub_1E38B3250();
        sub_1E3FBFE0C(v37);
      }

      v14 = v63;
    }

    else
    {
    }

LABEL_42:

    ++v35;
  }

  __break(1u);
LABEL_54:
  __break(1u);
}

void sub_1E38B7080()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_4_36();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_41_13(v4))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v5, v6, "MediaShowcase:: ApplicationDidEnterBackgroundNotification");
    OUTLINED_FUNCTION_21_0();
  }

  v7 = OUTLINED_FUNCTION_22_4();
  v8(v7);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([Strong isViewInTopMostVisibleViewController])
    {
      v11 = sub_1E38B310C();
      v12 = sub_1E3C515D0();

      if (v12)
      {
        v13 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController;
        v14 = *&v10[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
        v15 = OUTLINED_FUNCTION_70_3();
        sub_1E3C475BC(v15);

        v16 = *&v10[v13];
        v17 = OUTLINED_FUNCTION_70_3();
        sub_1E3C51644(v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      }
    }
  }
}

void sub_1E38B7200()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_4_36();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_41_13(v4))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v5, v6, "MediaShowcase:: ApplicationDidBecomeActiveNotification");
    OUTLINED_FUNCTION_21_0();
  }

  v7 = OUTLINED_FUNCTION_22_4();
  v8(v7);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused) & 1) == 0)
    {
      v11 = sub_1E38B310C();
      v12 = sub_1E3C52774();

      if ((v12 & 1) == 0 && (*(v10 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasViewDisappeared) & 1) == 0 && [v10 isViewInTopMostVisibleViewController] && (*(v10 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing) & 1) == 0)
      {
        v13 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController;
        v14 = *(v10 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController);
        v15 = OUTLINED_FUNCTION_18_26();
        sub_1E3C51644(v15, v16, v17, v18, v19, v20, v21, v22, v26, v27, v28);

        v23 = *&v13[v10];
        OUTLINED_FUNCTION_39_2();
        v24 = sub_1E38B3424();
        v25 = [v24 isAutoAdvanceToNextPageEnabled];

        sub_1E3C475BC(v25);
      }
    }
  }
}

void sub_1E38B73D8()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v8 = *v3;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v11(v0);
    v12 = v10;
    v13 = sub_1E41FFC94();
    sub_1E42067E4();

    if (OUTLINED_FUNCTION_75_3())
    {
      OUTLINED_FUNCTION_42_9();
      v18 = OUTLINED_FUNCTION_26_8();
      *v4 = 136315394;
      v14 = sub_1E38B2FF0();
      sub_1E3270FC8(v14, v15, &v18);
      OUTLINED_FUNCTION_40_18();
      *(v4 + 4) = v1;
      OUTLINED_FUNCTION_56_11();
      *(v4 + 14) = v8;
      OUTLINED_FUNCTION_14_6(&dword_1E323F000, v16, v17, "%s AudioConfig isAudioMuted did change: isMuted=%{BOOL}d");
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_7_7();

      (*(v6 + 8))(v0, v4);
    }

    else
    {

      (*(v6 + 8))(v0, v4);
    }

    sub_1E38B757C();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38B757C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2 & 1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  if ((sub_1E38B3338() & 1) == v3)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v9(v7);
    v10 = v0;
    v11 = sub_1E41FFC94();
    v12 = sub_1E42067E4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_42_9();
      v19 = OUTLINED_FUNCTION_100();
      *v13 = 136315394;
      v14 = sub_1E38B2FF0();
      OUTLINED_FUNCTION_58_0(v14, v15);
      OUTLINED_FUNCTION_34_3();
      *(v13 + 4) = v1;
      *(v13 + 12) = 1024;
      v16 = v10[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___isAudioMuted];

      *(v13 + 14) = v16 & 1;
      _os_log_impl(&dword_1E323F000, v11, v12, "%s Ignore mute configuration change since they are the same: isAudioMuted = %{BOOL}d", v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_7_7();
      OUTLINED_FUNCTION_21_0();
    }

    else
    {
    }

    v17 = OUTLINED_FUNCTION_13_8();
    v18(v17);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    sub_1E38B65BC();
  }
}

void sub_1E38B7754()
{
  OUTLINED_FUNCTION_9_5();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_4_36();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_41_13(v4))
  {
    *OUTLINED_FUNCTION_125_0() = 0;
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v5, v6, "MediaShowcase:: SidebarEditingDidChangeNotification");
    OUTLINED_FUNCTION_21_0();
  }

  v7 = OUTLINED_FUNCTION_22_4();
  v8(v7);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if ([objc_opt_self() isPad])
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 splitViewController];

      if (v12)
      {
        v13 = [v12 isSidebarEditing];

        if (v13)
        {
          if ([v10 isViewInTopMostVisibleViewController])
          {
            sub_1E38B310C();
            v14 = OUTLINED_FUNCTION_70_3();
            sub_1E3C51644(v14, v15, v16, v17, v18, v19, v20, v21, v36, v37, v38);

            v22 = *&v10[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
            v23 = OUTLINED_FUNCTION_70_3();
            sub_1E3C475BC(v23);

            OUTLINED_FUNCTION_63_7(OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing);
            v10[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isPaused] = 0;
            sub_1E38B32B0();
          }
        }

        else
        {
          v24 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing;
          if (v10[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_isStoppedForSideBarEditing] == 1 && (v10[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hasViewDisappeared] & 1) == 0 && [v10 isViewInTopMostVisibleViewController])
          {
            sub_1E38B310C();
            v25 = OUTLINED_FUNCTION_18_26();
            sub_1E3C51644(v25, v26, v27, v28, v29, v30, v31, v32, v36, v37, v38);

            v33 = *&v10[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
            OUTLINED_FUNCTION_39_2();
            v34 = sub_1E38B3424();
            v35 = [v34 isAutoAdvanceToNextPageEnabled];

            sub_1E3C475BC(v35);
          }

          v10[v24] = 0;
        }
      }
    }
  }
}

void sub_1E38B79E8()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v5 = v4;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v10(v9);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E42067D4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_49_0();
    OUTLINED_FUNCTION_72_0();
    *v14 = 136446466;
    v15 = sub_1E38B2FF0();
    OUTLINED_FUNCTION_49_1(v15, v16);
    OUTLINED_FUNCTION_34_3();
    v19 = OUTLINED_FUNCTION_45_15(v17, v18);
    OUTLINED_FUNCTION_49_1(v19, v20);
    OUTLINED_FUNCTION_34_3();
    *(v14 + 14) = v1;
    OUTLINED_FUNCTION_66_12(&dword_1E323F000, v21, v22, "%{public}s updateMetadataLayout, size = %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_21_0();
  }

  v23 = OUTLINED_FUNCTION_13_8();
  v24(v23);
  v25 = sub_1E38B2E2C();
  v26 = sub_1E32AE9B0(v25);
  if (!v26)
  {
    goto LABEL_25;
  }

  v27 = v26;
  if (v26 >= 1)
  {
    for (i = 0; i != v27; ++i)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1E6911E60](i, v25);
      }

      else
      {
        v29 = *(v25 + 8 * i + 32);
      }

      v30 = (*(*v29 + 488))();
      if (v30)
      {
        v33 = v30;
        if (*(v30 + 16) && (v34 = sub_1E3740AE8(224, v31, v32), (v35 & 1) != 0))
        {
          v36 = *(*(v33 + 56) + 8 * v34);

          if ((*(*v36 + 392))(v37))
          {
            type metadata accessor for MediaShowcasingMetadataLayout();
            v38 = swift_dynamicCastClass();
            if (v38)
            {
              v39 = v38;
              v40 = (*(*v36 + 488))();
              v43 = v40;
              if (v40)
              {
                if (*(v40 + 16) && (sub_1E3740AE8(234, v41, v42), (v44 & 1) != 0))
                {

                  type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
                  v43 = swift_dynamicCastClass() != 0;
                }

                else
                {

                  v43 = 0;
                }
              }

              (*(*v39 + 2192))(v43, v5, v3);
            }

            else
            {
            }
          }
        }

        else
        {
        }
      }
    }

LABEL_25:

    OUTLINED_FUNCTION_54_0();
    return;
  }

  __break(1u);
}

void sub_1E38B7DA4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v11, v4);
  v12 = v0;
  v13 = sub_1E41FFC94();
  sub_1E42067E4();

  if (OUTLINED_FUNCTION_75_3())
  {
    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_26_8();
    *v1 = 136315394;
    v14 = sub_1E38B2FF0();
    OUTLINED_FUNCTION_58_0(v14, v15);
    OUTLINED_FUNCTION_40_18();
    *(v1 + 4) = v3;
    OUTLINED_FUNCTION_56_11();
    *(v1 + 14) = v3 & 1;
    OUTLINED_FUNCTION_14_6(&dword_1E323F000, v16, v17, "%s handleAudioMuteDidChange isMuted=%{BOOL}d");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_7_7();

    (*(v6 + 8))(v10, v4);
  }

  else
  {

    v18 = OUTLINED_FUNCTION_53();
    v20(v18, v19);
  }

  v12[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___isAudioMuted] = v3 & 1;
  v21 = sub_1E38B310C();
  sub_1E3C531D0((v3 & 1) == 0);

  if (v3)
  {
    v22 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hideMuteButtonTimer;
    v23 = *&v12[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_hideMuteButtonTimer];
    if (v23)
    {
      [v23 invalidate];
      v24 = *&v12[v22];
    }

    else
    {
      v24 = 0;
    }

    *&v12[v22] = 0;

    OUTLINED_FUNCTION_63_7(OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_shouldShowMuteButton);
    sub_1E38B32B0();
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E38B7F94()
{
  sub_1E38B8968();
  v2 = v1;
  v3 = sub_1E38B3424();
  [v3 titleViewTransitionDistance];
  v5 = v4;

  [*(v0 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___mediaShowcaseConfig) navigationBarTransitionDistance];
  return v2 + v5 - v6;
}

double sub_1E38B8004()
{
  v0 = sub_1E38B3424();
  [v0 titleViewTransitionDistance];
  v2 = v1;

  return v2;
}

void sub_1E38B8048()
{
  OUTLINED_FUNCTION_52_11();
  if (v1)
  {
    v2 = v0;
    v3 = sub_1E38B310C();
    sub_1E3C47690();

    v4 = *(v2 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController);
    sub_1E3C51644(0, v4, v5, v6, v7, v8, v9, v10, v11, v4, v13);
  }
}

void sub_1E38B80D8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = sub_1E324FBDC();
  v37 = *(v3 + 16);
  v38 = v10;
  v37(v9);
  v11 = v0;
  v12 = sub_1E41FFC94();
  v13 = sub_1E42067E4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36 = v3;
    v15 = v14;
    v35 = OUTLINED_FUNCTION_100();
    v39[0] = v35;
    *v15 = 136315138;
    v16 = sub_1E38B2FF0();
    sub_1E3270FC8(v16, v17, v39);
    OUTLINED_FUNCTION_11_5();

    *(v15 + 4) = v6;
    _os_log_impl(&dword_1E323F000, v12, v13, "%s dispatchSelectEvent", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    OUTLINED_FUNCTION_6_0();
    v3 = v36;
    OUTLINED_FUNCTION_6_0();
  }

  v18 = *(v3 + 8);
  v18(v9, v1);
  v19 = sub_1E38B310C();
  v20 = sub_1E3C46500();

  if (v20)
  {
    v21 = v11 + OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController_collectionImpressioner;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    if (*(v21 + 24))
    {
      sub_1E327F454(v21, v39);
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      v22 = OUTLINED_FUNCTION_50();
      v24 = v23(v22);
      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    else
    {
      v24 = 0;
    }

    v34 = [v11 view];
    (*(*v20 + 800))(2, v24, v34, 0);
  }

  else
  {
    (v37)(v6, v38, v1);
    v25 = v11;
    v26 = sub_1E41FFC94();
    v27 = sub_1E42067F4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_49_0();
      v39[0] = OUTLINED_FUNCTION_100();
      *v28 = 136446466;
      v29 = sub_1E38B2FF0();
      sub_1E3270FC8(v29, v30, v39);
      v38 = v6;
      OUTLINED_FUNCTION_11_5();

      *(v28 + 4) = v6;
      *(v28 + 12) = 2048;
      v31 = sub_1E38B310C();
      v32 = sub_1E3C465D8();

      *(v28 + 14) = v32;
      _os_log_impl(&dword_1E323F000, v26, v27, "%{public}s Trying to open current page but no viewModel, index = %lu", v28, 0x16u);
      OUTLINED_FUNCTION_5_22();
      OUTLINED_FUNCTION_6_0();

      v33 = v38;
    }

    else
    {

      v33 = v6;
    }

    v18(v33, v1);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E38B84EC()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_2_26();
  v7(v6);
  v8 = v0;

  v9 = sub_1E41FFC94();
  v10 = sub_1E42067E4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_49_0();
    v42[0] = OUTLINED_FUNCTION_72_0();
    *v11 = 136315394;
    v12 = sub_1E38B2FF0();
    sub_1E3270FC8(v12, v13, v42);
    OUTLINED_FUNCTION_40_18();
    *(v11 + 4) = v2;
    v14 = v2;
    *(v11 + 12) = 2080;
    if (*(v2 + 24))
    {
      v15 = *(v2 + 16);
      v16 = *(v14 + 24);
    }

    else
    {
      v15 = 0;
      v16 = 0xE000000000000000;
    }

    sub_1E3270FC8(v15, v16, v42);
    OUTLINED_FUNCTION_40_18();
    *(v11 + 14) = v15;
    _os_log_impl(&dword_1E323F000, v9, v10, "%s did replace view model id = %s", v11, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    v19 = OUTLINED_FUNCTION_53();
    v20(v19);
  }

  else
  {

    v17 = OUTLINED_FUNCTION_53();
    v18(v17);
  }

  type metadata accessor for CollectionViewModel();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    goto LABEL_21;
  }

  swift_retain_n();
  sub_1E38B2D44(v21);
  v22 = OUTLINED_FUNCTION_69_5();
  if (v22)
  {
    v23 = v22;
    type metadata accessor for MediaShowcaseHostingView();
    v24 = swift_dynamicCastClass();
    if (v24)
    {
      v25 = v24;
      v26 = sub_1E38B34C8();
      v27 = OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_widthThresholdForIpadLayout;
      OUTLINED_FUNCTION_3_0(v25 + OBJC_IVAR____TtC8VideosUI24MediaShowcaseHostingView_widthThresholdForIpadLayout, v42);
      *(v25 + v27) = v26;
    }
  }

  v28 = OUTLINED_FUNCTION_69_5();
  if (!v28)
  {
    __break(1u);
    goto LABEL_23;
  }

  [v28 bounds];
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_17_4();
  sub_1E38B5B8C();
  v29 = OUTLINED_FUNCTION_69_5();
  if (!v29)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v29 bounds];
  OUTLINED_FUNCTION_70_8();
  OUTLINED_FUNCTION_17_4();
  sub_1E38B79E8();
  v30 = OUTLINED_FUNCTION_69_5();
  if (v30)
  {
    v31 = v30;
    [v30 bounds];
    v33 = v32;

    sub_1E38B5EE0(v33);
    v34 = sub_1E38B310C();
    sub_1E3C4666C();

    v35 = OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController;
    v36 = *&v8[OBJC_IVAR____TtC8VideosUI34MediaShowcaseHostingViewController____lazy_storage___paginatedMediaController];
    sub_1E38B2E2C();
    sub_1E3C4E814();

    v37 = *&v8[v35];
    v38 = sub_1E3C465D8();

    v39 = sub_1E38B2E2C();
    v40 = sub_1E32AE9B0(v39);

    if (v40 >= 1 && v38 < v40)
    {
      sub_1E38B6168(v38);
    }

    sub_1E38B8048();

LABEL_21:
    OUTLINED_FUNCTION_54_0();
    return;
  }

LABEL_24:
  __break(1u);
}

void sub_1E38B88E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E38B310C();
  if (sub_1E41FE844() < 0)
  {
    __break(1u);
  }

  else
  {
    j__OUTLINED_FUNCTION_51_1();
    sub_1E3C4FCE0();

    sub_1E38B8048();
  }
}