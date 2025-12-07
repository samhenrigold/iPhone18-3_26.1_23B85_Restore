uint64_t sub_2684E1094(void *a1)
{
  v2 = [a1 displayName];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268568B20();

  return v3;
}

uint64_t sub_2684E1104(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_268568B20();

  return v4;
}

uint64_t sub_2684E1164(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2684E11BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2684E1218(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_2684E125C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t OUTLINED_FUNCTION_0_4()
{

  return sub_2685691C0();
}

id OUTLINED_FUNCTION_1_5()
{
  v3 = *v1;

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_2_5()
{

  return sub_2685691C0();
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return sub_268568B20();
}

void OUTLINED_FUNCTION_5_4()
{
}

uint64_t OUTLINED_FUNCTION_6_2()
{
}

id OUTLINED_FUNCTION_7_4()
{
  v3 = *v1;

  return [v0 v3];
}

uint64_t OUTLINED_FUNCTION_8_2()
{

  return sub_2685691C0();
}

void sub_2684E1430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, __int128 *a22)
{
  OUTLINED_FUNCTION_41();
  v23 = v22;
  v50 = v24;
  v51 = v25;
  v49 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v52 = v35;
  v36 = sub_2685688F0();
  v37 = OUTLINED_FUNCTION_10(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5_5();
  *(v23 + 16) = 0;
  *(v23 + 224) = 5;
  *(v23 + 24) = 0;
  *(v23 + 32) = v34;
  sub_2684D57FC(v32, v23 + 40);
  sub_2684D57FC(v32 + 40, v23 + 80);
  *(v23 + 152) = v30;
  *(v23 + 160) = v28;
  *(v23 + 208) = v30;
  type metadata accessor for ReadNotificationsCATs(0);
  v38 = v28;
  v39 = v30;

  sub_2685688E0();
  sub_2685686F0();
  sub_2684D57FC(v32 + 40, &v53);
  sub_2685686B0();
  *(v23 + 216) = sub_268568710();
  swift_beginAccess();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v40 = v52;
  swift_unknownObjectRelease();
  if (v52)
  {

    v42 = v50;
    v41 = v51;
    v43 = v49;
  }

  else
  {
    sub_2685199D0();
    v40 = v44;
    v43 = v45;
    v42 = v46;
    v41 = v47;
  }

  sub_2684CC8D4(v32);
  *(v23 + 120) = v40;
  *(v23 + 128) = v43;
  *(v23 + 136) = v42;
  *(v23 + 144) = v41;
  v48 = *(a21 + 16);
  *(v23 + 168) = *a21;
  *(v23 + 184) = v48;
  *(v23 + 200) = *(a21 + 32);
  sub_2684D8314(a22, v23 + 232);
  OUTLINED_FUNCTION_40();
}

uint64_t sub_2684E15EC()
{
  OUTLINED_FUNCTION_5();
  v1[14] = v0;
  v2 = sub_2685679B0();
  v1[15] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[16] = v3;
  v1[17] = OUTLINED_FUNCTION_39();
  v4 = sub_268567B60();
  v1[18] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[19] = v5;
  v1[20] = OUTLINED_FUNCTION_39();
  v6 = sub_268567D90();
  v1[21] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[22] = v7;
  v1[23] = OUTLINED_FUNCTION_39();
  v8 = sub_2685689F0();
  v1[24] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[25] = v9;
  v1[26] = OUTLINED_FUNCTION_50();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2684E17BC()
{
  v57 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v1 = v0[32];
  v2 = v0[24];
  v3 = v0[25];
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  v0[33] = v4;
  v5 = *(v3 + 16);
  v0[34] = v5;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2685689E0();
  v7 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v7))
  {
    v8 = OUTLINED_FUNCTION_16_0();
    *v8 = 0;
    _os_log_impl(&dword_2684CA000, v6, v2, "ANReadSpokenHintAction run", v8, 2u);
    OUTLINED_FUNCTION_2();
  }

  v9 = v0[32];
  v10 = v0[24];
  v11 = v0[25];

  v12 = *(v11 + 8);
  v0[36] = v12;
  v13 = v12(v9, v10);
  v14 = sub_268503BF8(v13);
  v0[37] = v14;
  if (!v14)
  {
    v24 = OUTLINED_FUNCTION_36();
    (v5)(v24, v4);
    v25 = sub_2685689E0();
    v26 = sub_268568DE0();
    if (OUTLINED_FUNCTION_29(v26))
    {
      v27 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v27);
      OUTLINED_FUNCTION_22_0();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    v33 = OUTLINED_FUNCTION_34();
    (v12)(v33);
    sub_2684E6EB0();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
    goto LABEL_21;
  }

  v15 = v14;
  if (!sub_2685425B8())
  {
    v35 = OUTLINED_FUNCTION_36();
    (v5)(v35, v4);

    v36 = sub_2685689E0();
    v37 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_0(v37))
    {
      v38 = swift_slowAlloc();
      v39 = OUTLINED_FUNCTION_51();
      v56 = v39;
      *v38 = 136315138;
      v40 = AFSiriAnnouncementPlatformGetName();

      if (!v40)
      {
        __break(1u);
        return result;
      }

      v54 = v0[24];
      v55 = v0[28];
      v42 = sub_268568B20();
      v44 = v43;

      v45 = sub_2684EABEC(v42, v44, &v56);

      *(v38 + 4) = v45;
      _os_log_impl(&dword_2684CA000, v36, v37, "ReadSpokenHintAction run | not reading hint for announce platform: %s, transitioning to follow-up", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_12_3();

      v46 = v54;
      v47 = v55;
    }

    else
    {

      v47 = OUTLINED_FUNCTION_30();
    }

    v12(v47, v46);
    sub_2684E6EB0();
    swift_allocError();
    *v50 = 2;
    swift_willThrow();

LABEL_21:
    OUTLINED_FUNCTION_14_0();

    OUTLINED_FUNCTION_9_1();
    goto LABEL_22;
  }

  if (*(v15 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isAppLocked))
  {
    v16 = OUTLINED_FUNCTION_36();
    (v5)(v16, v4);
    v17 = sub_2685689E0();
    v18 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_0(v18))
    {
      *OUTLINED_FUNCTION_16_0() = 0;
      OUTLINED_FUNCTION_21_0();
      _os_log_impl(v19, v20, v21, v22, v23, 2u);
      OUTLINED_FUNCTION_2();
    }

    else
    {
    }

    v53 = OUTLINED_FUNCTION_30();
    (v12)(v53);
    OUTLINED_FUNCTION_11_3();

    OUTLINED_FUNCTION_9_1();
LABEL_22:
    OUTLINED_FUNCTION_59();

    __asm { BRAA            X1, X16 }
  }

  v48 = swift_task_alloc();
  v0[38] = v48;
  *v48 = v0;
  v48[1] = sub_2684E1D18;
  OUTLINED_FUNCTION_59();

  return sub_2684E397C();
}

uint64_t sub_2684E1D18()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 360) = v3;

  v4 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2684E1E00(uint64_t a1)
{
  if (*(v1 + 360) <= 0xFDu)
  {
    *(v1 + 312) = *(*(v1 + 296) + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_appName);

    swift_task_alloc();
    OUTLINED_FUNCTION_44();
    *(v1 + 320) = v17;
    *v17 = v18;
    v17[1] = sub_2684E2004;

    return sub_2684E2B08();
  }

  else
  {
    v2 = OUTLINED_FUNCTION_36();
    v3(v2);
    v4 = sub_2685689E0();
    v5 = sub_268568DC0();
    v6 = OUTLINED_FUNCTION_13_0(v5);
    v7 = *(v1 + 288);
    v8 = *(v1 + 240);
    v9 = *(v1 + 192);
    if (v6)
    {
      *OUTLINED_FUNCTION_16_0() = 0;
      OUTLINED_FUNCTION_21_0();
      _os_log_impl(v10, v11, v12, v13, v14, 2u);
      OUTLINED_FUNCTION_2();
    }

    v7(v8, v9);
    OUTLINED_FUNCTION_11_3();

    OUTLINED_FUNCTION_9_1();

    return v15();
  }
}

uint64_t sub_2684E2004()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v3 + 328) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2684E210C()
{
  v1 = v0[14];
  v0[42] = sub_26851C004(v0[23], v1 + 10, 0);
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v2 = swift_task_alloc();
  v0[43] = v2;
  sub_2684E0120();
  *v2 = v0;
  v2[1] = sub_2684E21F8;
  OUTLINED_FUNCTION_69();

  return MEMORY[0x2821BB6A0](v3, v4, v5, v6);
}

uint64_t sub_2684E21F8()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 352) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2684E22F8()
{
  v1 = *(v0 + 272);
  sub_2684E358C(*(v0 + 360));
  v2 = OUTLINED_FUNCTION_52();
  v1(v2);
  v3 = sub_2685689E0();
  v4 = sub_268568DF0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_16_0();
    *v5 = 0;
    _os_log_impl(&dword_2684CA000, v3, v4, "ANReadSpokenHintAction run | read hint, transitioning to follow-up", v5, 2u);
    OUTLINED_FUNCTION_2();
  }

  v6 = *(v0 + 288);
  v7 = *(v0 + 248);
  v8 = *(v0 + 192);
  v25 = *(v0 + 176);
  v26 = *(v0 + 336);
  v9 = *(v0 + 160);
  v27 = *(v0 + 168);
  v28 = *(v0 + 184);
  v10 = *(v0 + 152);
  v22 = *(v0 + 144);
  v11 = *(v0 + 128);
  v12 = *(v0 + 136);
  v23 = *(v0 + 120);
  v24 = *(v0 + 296);

  v6(v7, v8);
  sub_268567990();
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_268567A20();
  (*(v10 + 104))(v9, *MEMORY[0x277D5BC10], v22);
  (*(v11 + 104))(v12, *MEMORY[0x277D5B950], v23);

  v13 = OUTLINED_FUNCTION_6_3();
  sub_2684EBB74(v13, v14, v15, v16, v17, 0, 0, v24, v20, v21);
  sub_2685679A0();

  (*(v25 + 8))(v28, v27);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  OUTLINED_FUNCTION_11_3();

  OUTLINED_FUNCTION_9_1();

  return v18();
}

uint64_t sub_2684E2570()
{
  v46 = v1;

  v4 = v1[41];
  v5 = OUTLINED_FUNCTION_36();
  v6(v5);
  v7 = v4;
  v8 = sub_2685689E0();
  v9 = sub_268568DE0();

  v44 = v4;
  if (os_log_type_enabled(v8, v9))
  {
    v2 = OUTLINED_FUNCTION_43();
    v3 = OUTLINED_FUNCTION_51();
    v45 = v3;
    OUTLINED_FUNCTION_66(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v10 = sub_268568B70();
    v4 = sub_2684EABEC(v10, v11, &v45);

    *(v2 + 4) = v4;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v17 = OUTLINED_FUNCTION_30();
    v18 = v43(v17);
  }

  else
  {
    v0 = v1[36];
    v9 = v1[25];

    v19 = OUTLINED_FUNCTION_30();
    v18 = (v0)(v19);
  }

  OUTLINED_FUNCTION_49(v18);
  OUTLINED_FUNCTION_57();
  (*(v0 + 104))(v8, *MEMORY[0x277D5BC00], v4);
  v20 = (v3[13])(v2, *MEMORY[0x277D5B8D0], v9);
  OUTLINED_FUNCTION_65(v20, v21, v22, v23, v24, v25, v26, v27, v38, v40, v42, v43, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();

  v28 = OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_64(v28, v29, v30, v31, v32, v33, v34, v35, v39, v41);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  swift_willThrow();

  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_9_1();

  return v36();
}

uint64_t sub_2684E282C()
{
  v48 = v0;
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 168);

  (*(v4 + 8))(v3, v5);
  v6 = *(v0 + 352);
  v7 = OUTLINED_FUNCTION_36();
  v8(v7);
  v9 = v6;
  v10 = sub_2685689E0();
  v11 = sub_268568DE0();

  v46 = v6;
  if (os_log_type_enabled(v10, v11))
  {
    v1 = OUTLINED_FUNCTION_43();
    v2 = OUTLINED_FUNCTION_51();
    v47 = v2;
    OUTLINED_FUNCTION_66(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v12 = sub_268568B70();
    v6 = sub_2684EABEC(v12, v13, &v47);

    *(v1 + 4) = v6;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v2);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v19 = OUTLINED_FUNCTION_30();
    v20 = v45(v19);
  }

  else
  {
    v5 = *(v0 + 288);
    v11 = *(v0 + 200);

    v21 = OUTLINED_FUNCTION_30();
    v20 = (v5)(v21);
  }

  OUTLINED_FUNCTION_49(v20);
  OUTLINED_FUNCTION_57();
  (*(v5 + 104))(v10, *MEMORY[0x277D5BC00], v6);
  v22 = (*(v2 + 104))(v1, *MEMORY[0x277D5B8D0], v11);
  OUTLINED_FUNCTION_65(v22, v23, v24, v25, v26, v27, v28, v29, v40, v42, v44, v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();

  v30 = OUTLINED_FUNCTION_6_3();
  OUTLINED_FUNCTION_64(v30, v31, v32, v33, v34, v35, v36, v37, v41, v43);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  swift_willThrow();

  OUTLINED_FUNCTION_14_0();

  OUTLINED_FUNCTION_9_1();

  return v38();
}

uint64_t sub_2684E2B08()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 152) = v3;
  *(v1 + 16) = v4;
  v5 = sub_2685689F0();
  *(v1 + 40) = v5;
  OUTLINED_FUNCTION_2_4(v5);
  *(v1 + 48) = v6;
  *(v1 + 56) = OUTLINED_FUNCTION_39();
  v7 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2684E2BB4()
{
  v1 = *(v0 + 32);
  v2 = v1[15];
  *(v0 + 64) = v2;
  v3 = v1[16];
  *(v0 + 72) = v3;
  if (!v2)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    OUTLINED_FUNCTION_38(*(v0 + 40), qword_28028B348);
    (*(v12 + 16))(v11);
    v13 = sub_2685689E0();
    v14 = sub_268568DE0();
    if (OUTLINED_FUNCTION_29(v14))
    {
      v15 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v15);
      OUTLINED_FUNCTION_22_0();
      _os_log_impl(v16, v17, v18, v19, v20, 2u);
      OUTLINED_FUNCTION_12_3();
    }

    v21 = OUTLINED_FUNCTION_34();
    v22(v21);
    sub_2684E6E5C();
    swift_allocError();
    swift_willThrow();

    OUTLINED_FUNCTION_9_1();
    OUTLINED_FUNCTION_69();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 152);
  *(v0 + 80) = v1[18];
  if (v4 >> 6)
  {
    if (v4 >> 6 == 1)
    {
      if (v4)
      {
        v5 = v2;
        v6 = v3;

        swift_task_alloc();
        OUTLINED_FUNCTION_44();
        *(v0 + 88) = v7;
        *v7 = v8;
        v7[1] = sub_2684E2F7C;
        OUTLINED_FUNCTION_69();

        return sub_26850E530();
      }

      else
      {
        v30 = v2;
        v31 = v3;

        swift_task_alloc();
        OUTLINED_FUNCTION_44();
        *(v0 + 104) = v32;
        *v32 = v33;
        v32[1] = sub_2684E30F4;
        OUTLINED_FUNCTION_69();

        return sub_26850E2FC(v34, v35);
      }
    }

    else
    {
      v25 = v2;
      v26 = v3;

      swift_task_alloc();
      OUTLINED_FUNCTION_44();
      *(v0 + 136) = v27;
      *v27 = v28;
      v27[1] = sub_2684E32E4;
      OUTLINED_FUNCTION_69();

      return sub_26850E248();
    }
  }

  else
  {
    if ((v4 & 1) == 0)
    {
      sub_2685691C0();
    }

    v37 = v3;

    v38 = v2;

    swift_task_alloc();
    OUTLINED_FUNCTION_44();
    *(v0 + 120) = v39;
    *v39 = v40;
    v39[1] = sub_2684E31EC;
    OUTLINED_FUNCTION_69();

    return sub_26850F9CC(v41, v42);
  }
}

uint64_t sub_2684E2F7C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2684E3074()
{
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_9_1();

  return v2();
}

uint64_t sub_2684E30F4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2684E31EC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2684E32E4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2684E33DC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_67();

  OUTLINED_FUNCTION_9_1();

  return v1();
}

uint64_t sub_2684E3448()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_67();

  OUTLINED_FUNCTION_9_1();

  return v1();
}

uint64_t sub_2684E34B4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_67();

  OUTLINED_FUNCTION_9_1();

  return v1();
}

uint64_t sub_2684E3520()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_67();

  OUTLINED_FUNCTION_9_1();

  return v1();
}

void sub_2684E358C(uint64_t a1)
{
  OUTLINED_FUNCTION_41();
  v30 = v4;
  v5 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_58();
  v9 = sub_2685675E0();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_5();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7_5();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_42();
  v17 = *(v1 + 120);
  if (v17)
  {
    v18 = *(v1 + 208);
    v29 = *(v1 + 128);

    v19 = v17;
    sub_2684D98C4(v18);
    LODWORD(v18) = __swift_getEnumTagSinglePayload(v2, 1, v9);
    sub_2684D199C(v2, &qword_280282D40, &qword_26856B330);
    if (v18 == 1)
    {
      sub_26851A040();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v9);
      sub_2684D199C(v15, &qword_280282D40, &qword_26856B330);
      if (EnumTagSinglePayload == 1)
      {
        __swift_project_boxed_opaque_existential_1((v1 + 232), *(v1 + 256));
        sub_268567A20();
        sub_268567A10();
        sub_2685679A0();
      }
    }

    if (v30 >> 6)
    {
      if (v30 >> 6 == 1)
      {
        sub_2685675D0();
        if (v30)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }
      }

      else
      {
        sub_2685675D0();
        v21 = 3;
      }
    }

    else
    {
      sub_2685675D0();
      v21 = 0;
    }

    OUTLINED_FUNCTION_46(v21);

    v27 = OUTLINED_FUNCTION_52();
    v28(v27);
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    OUTLINED_FUNCTION_38(v5, qword_28028B348);
    (*(v7 + 16))(v3);
    v22 = sub_2685689E0();
    v23 = sub_268568DE0();
    if (OUTLINED_FUNCTION_13_3(v23))
    {
      v24 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v24);
      OUTLINED_FUNCTION_9_4(&dword_2684CA000, v25, v26, "ANReadSpokenHintAction logHint | announcementEventStore nil - not logging hint");
      OUTLINED_FUNCTION_12_3();
    }

    (*(v7 + 8))(v3, v5);
  }

  OUTLINED_FUNCTION_40();
}

uint64_t sub_2684E397C()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_2685675E0();
  v1[4] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_50();
  v1[7] = swift_task_alloc();
  v5 = sub_2685676D0();
  v1[8] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_39();
  v7 = sub_268567480();
  v1[11] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[12] = v8;
  v1[13] = OUTLINED_FUNCTION_39();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  OUTLINED_FUNCTION_10(v9);
  v1[14] = OUTLINED_FUNCTION_50();
  v1[15] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D58, &qword_26856BDF0);
  OUTLINED_FUNCTION_10(v10);
  v1[16] = OUTLINED_FUNCTION_39();
  v11 = sub_2685689F0();
  v1[17] = v11;
  OUTLINED_FUNCTION_2_4(v11);
  v1[18] = v12;
  v1[19] = OUTLINED_FUNCTION_50();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2684E3BBC()
{
  v1 = *(v0 + 24);
  v2 = v1[15];
  *(v0 + 208) = v2;
  v3 = v1[16];
  *(v0 + 216) = v3;
  *(v0 + 224) = v1[17];
  if (!v2)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v32 = *(v0 + 144);
    v31 = *(v0 + 152);
    OUTLINED_FUNCTION_38(*(v0 + 136), qword_28028B348);
    (*(v32 + 16))(v31);
    v33 = sub_2685689E0();
    v34 = sub_268568DE0();
    if (OUTLINED_FUNCTION_13_0(v34))
    {
      v35 = OUTLINED_FUNCTION_16_0();
      *v35 = 0;
      _os_log_impl(&dword_2684CA000, v33, v34, "ANReadSpokenHintAction spokenHint | announce event store is nil, don't give hint", v35, 2u);
      OUTLINED_FUNCTION_2();
    }

    v36 = OUTLINED_FUNCTION_34();
    v37(v36);
    goto LABEL_24;
  }

  *(v0 + 232) = v1[18];
  v4 = qword_280282960;
  v109 = v2;
  v107 = v3;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v5 = *(v0 + 200);
  v6 = *(v0 + 144);
  *(v0 + 240) = OUTLINED_FUNCTION_38(*(v0 + 136), qword_28028B348);
  v7 = *(v6 + 16);
  *(v0 + 248) = v7;
  *(v0 + 256) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v5);
  v8 = sub_2685689E0();
  v9 = sub_268568DC0();
  if (OUTLINED_FUNCTION_13_0(v9))
  {
    v10 = OUTLINED_FUNCTION_16_0();
    *v10 = 0;
    _os_log_impl(&dword_2684CA000, v8, v9, "ANReadSpokenHintAction finding hint state to determine if we should give hint", v10, 2u);
    OUTLINED_FUNCTION_2();
  }

  v11 = *(v0 + 200);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v14 = *(v0 + 128);

  v15 = *(v12 + 8);
  *(v0 + 264) = v15;
  v108 = v15;
  v15(v11, v13);
  v16 = type metadata accessor for ReadingRecord(0);
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v16);
  v17 = sub_2685051E0(0, v14);
  v18 = sub_2684D199C(v14, &qword_280282D58, &qword_26856BDF0);
  if (v17 >= 2)
  {
    sub_2684E496C(v18, v19);
    v39 = v38;
    if (v38 <= 0xFDu)
    {
      v68 = OUTLINED_FUNCTION_23_0();
      v69(v68);
      v42 = sub_2685689E0();
      v43 = sub_268568DC0();
      v70 = OUTLINED_FUNCTION_13_0(v43);
      v45 = *(v0 + 192);
      v46 = *(v0 + 136);
      if (v70)
      {
        v47 = OUTLINED_FUNCTION_16_0();
        *v47 = 0;
        v48 = "ANReadSpokenHintAction spokenHint | early dismissal hint ignoring burst throttle";
        goto LABEL_27;
      }
    }

    else
    {
      v40 = OUTLINED_FUNCTION_23_0();
      v41(v40);
      v42 = sub_2685689E0();
      v43 = sub_268568DC0();
      v44 = OUTLINED_FUNCTION_13_0(v43);
      v45 = *(v0 + 184);
      v46 = *(v0 + 136);
      if (v44)
      {
        v47 = OUTLINED_FUNCTION_16_0();
        *v47 = 0;
        v48 = "ANReadSpokenHintAction spokenHint | notification was part of a burst, do not give hint";
LABEL_27:
        _os_log_impl(&dword_2684CA000, v42, v43, v48, v47, 2u);
        OUTLINED_FUNCTION_2();
      }
    }

    v108(v45, v46);
    goto LABEL_29;
  }

  v20 = *(v0 + 112);
  v21 = *(v0 + 120);
  sub_26851A040();
  v104 = OUTLINED_FUNCTION_68(v21);
  *(v0 + 320) = v104;
  sub_26851A5F8();
  v103 = v22;
  *(v0 + 272) = v22;
  sub_2685676B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D20, &qword_26856B320);
  v23 = sub_2685676C0();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_26856A540;
  (*(v25 + 104))(v27 + v26, *MEMORY[0x277CC9968], v23);
  sub_2684E6A40(v27);
  sub_2684E6DF4(v21, v20, &qword_280282D40, &qword_26856B330);
  v28 = OUTLINED_FUNCTION_68(v20);
  v29 = *(v0 + 112);
  if (v28 == 1)
  {
    v30 = *(v0 + 32);
    sub_2685675A0();
    if (__swift_getEnumTagSinglePayload(v29, 1, v30) != 1)
    {
      sub_2684D199C(*(v0 + 112), &qword_280282D40, &qword_26856B330);
    }
  }

  else
  {
    (*(*(v0 + 40) + 32))(*(v0 + 56), v29, *(v0 + 32));
  }

  v50 = *(v0 + 96);
  v49 = *(v0 + 104);
  v51 = *(v0 + 80);
  v52 = *(v0 + 72);
  v105 = *(v0 + 64);
  v106 = *(v0 + 88);
  v54 = *(v0 + 48);
  v53 = *(v0 + 56);
  v55 = *(v0 + 32);
  v56 = *(v0 + 40);
  sub_2685675D0();
  sub_2685676A0();

  v57 = *(v56 + 8);
  v57(v54, v55);
  v57(v53, v55);
  (*(v52 + 8))(v51, v105);
  v58 = sub_268567460();
  LOBYTE(v51) = v59;
  *(v0 + 280) = v58;
  (*(v50 + 8))(v49, v106);
  if (v51)
  {
    v60 = OUTLINED_FUNCTION_23_0();
    v61(v60);
    v62 = sub_2685689E0();
    v63 = sub_268568DE0();
    if (OUTLINED_FUNCTION_13_0(v63))
    {
      v64 = OUTLINED_FUNCTION_16_0();
      *v64 = 0;
      _os_log_impl(&dword_2684CA000, v62, v63, "ANReadSpokenHintAction error getting ANReadSpokenHintAction", v64, 2u);
      OUTLINED_FUNCTION_2();
    }

    v65 = *(v0 + 120);

    v66 = OUTLINED_FUNCTION_34();
    (v108)(v66);
    v67 = v65;
LABEL_23:
    sub_2684D199C(v67, &qword_280282D40, &qword_26856B330);
LABEL_24:
    v39 = 254;
LABEL_29:

    v71 = *(v0 + 8);

    return v71(v39);
  }

  v73 = OUTLINED_FUNCTION_23_0();
  v74(v73);
  v75 = sub_2685689E0();
  v76 = sub_268568DD0();
  if (OUTLINED_FUNCTION_29(v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 134218496;
    *(v77 + 4) = v103;
    *(v77 + 12) = 2048;
    *(v77 + 14) = v58;
    *(v77 + 22) = 1024;
    *(v77 + 24) = v104 == 1;
    OUTLINED_FUNCTION_22_0();
    _os_log_impl(v78, v79, v80, v81, v82, 0x1Cu);
    OUTLINED_FUNCTION_12_3();
  }

  v83 = *(v0 + 144);

  *(v0 + 288) = (v83 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v84 = OUTLINED_FUNCTION_34();
  v85 = (v108)(v84);
  v87 = v103 > 2 || v104 == 1;
  v88 = v87;
  if (v58 < 3 || !v88)
  {
    sub_2684E496C(v85, v86);
    OUTLINED_FUNCTION_53();
    if (!(!v87 & v91))
    {
      v99 = *(v0 + 208);
      v100 = *(v0 + 120);
      v39 = v90;

      sub_2684D199C(v100, &qword_280282D40, &qword_26856B330);
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_56();
    v93 = v87;
    if (v92 >= 7 && v93)
    {
      v94 = *(v0 + 216);
      v95 = *(v0 + 208);
      v96 = *(v0 + 120);
      OUTLINED_FUNCTION_63();
      v39 = v97;
      v98 = v97;

      sub_2684D199C(v96, &qword_280282D40, &qword_26856B330);
      if (v98 <= 0xFD)
      {
        goto LABEL_29;
      }

      goto LABEL_24;
    }

    v101 = *(v0 + 208);
    v102 = *(v0 + 120);

    v67 = v102;
    goto LABEL_23;
  }

  v89 = swift_task_alloc();
  *(v0 + 296) = v89;
  *v89 = v0;
  v89[1] = sub_2684E4590;
  OUTLINED_FUNCTION_52();

  return sub_2684E605C();
}

uint64_t sub_2684E4590()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 304) = v3;
  *(v1 + 312) = v4;

  v5 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_2684E4678()
{
  (*(v0 + 248))(*(v0 + 168), *(v0 + 240), *(v0 + 136));
  v1 = sub_2685689E0();
  v2 = sub_268568DD0();
  if (OUTLINED_FUNCTION_29(v2))
  {
    v4 = *(v0 + 304);
    v3 = *(v0 + 312);
    v5 = swift_slowAlloc();
    *v5 = 134218240;
    *(v5 + 4) = v4;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v3;
    OUTLINED_FUNCTION_22_0();
    _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
    OUTLINED_FUNCTION_12_3();
  }

  v11 = *(v0 + 304);
  v12 = *(v0 + 264);

  v13 = OUTLINED_FUNCTION_34();
  v14 = v12(v13);
  if (v11 < 3 || (sub_26851A778(), (v14) || (sub_2684E57A0(*(v0 + 208), *(v0 + 216)), OUTLINED_FUNCTION_53(), !v17 & v16)) && (*(v0 + 312) < 5 || (sub_26851A778(), (v14) || (sub_2684E5AD4(*(v0 + 208), *(v0 + 216)), OUTLINED_FUNCTION_53(), !v17 & v16)) && (sub_2684E496C(v14, v15), OUTLINED_FUNCTION_53(), !v17 & v16))
  {
    OUTLINED_FUNCTION_56();
    if (v17)
    {
      v19 = 1;
    }

    else
    {
      v19 = 0;
    }

    if (v18 >= 7 && v19)
    {
      v20 = *(v0 + 216);
      v21 = *(v0 + 208);
      v22 = *(v0 + 120);
      OUTLINED_FUNCTION_63();

      sub_2684D199C(v22, &qword_280282D40, &qword_26856B330);
    }

    else
    {
      v25 = *(v0 + 208);
      v26 = *(v0 + 120);

      sub_2684D199C(v26, &qword_280282D40, &qword_26856B330);
    }
  }

  else
  {
    v23 = *(v0 + 208);
    v24 = *(v0 + 120);

    sub_2684D199C(v24, &qword_280282D40, &qword_26856B330);
  }

  OUTLINED_FUNCTION_59();

  __asm { BRAA            X2, X16 }
}

void sub_2684E496C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_41();
  v3 = v2;
  v5 = v4;
  sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v180 = v6;
  v181 = v7;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_5();
  v10 = v8 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v167 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v167 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v167 - v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19();
  v175 = v21;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_19();
  v174 = v23;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_19();
  v179 = v25;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19();
  v178 = v27;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19();
  v177 = v29;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v30);
  v32 = &v167 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v34 = OUTLINED_FUNCTION_10(v33);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_7_5();
  v176 = v35 - v36;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v37);
  v39 = &v167 - v38;
  sub_2685685F0();
  sub_2685685E0();
  sub_2685685C0();

  v40 = sub_268568620();

  if (v40)
  {
    if (*(v5 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead) == 1)
    {
      v42 = *(v3 + 120);
      if (v42)
      {
        v43 = *(v3 + 136);
        v44 = *(v3 + 144);
        v171 = *(v3 + 128);

        v45 = v42;
        v170 = v43;
        sub_26851A90C();
        v46 = sub_2685675E0();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v46);
        v48 = sub_2684D199C(v39, &qword_280282D40, &qword_26856B330);
        if (EnumTagSinglePayload == 1)
        {
          sub_2684E6DF4(v3 + 168, &v183, &qword_280282D48, &qword_26856B338);
          if (v184)
          {
            sub_2684D8314(&v183, v185);
          }

          else
          {
            v78 = type metadata accessor for TrialHeadGesturesHintsExperimentProvider();
            swift_allocObject();
            v79 = sub_2684CE4A4();
            v186 = v78;
            v187 = &off_2879186B8;
            v185[0] = v79;
            if (v184)
            {
              sub_2684D199C(&v183, &qword_280282D48, &qword_26856B338);
            }
          }

          v80 = sub_26851AC18(v45);
          v173 = v44;
          v81 = v186;
          v82 = v187;
          __swift_project_boxed_opaque_existential_1(v185, v186);
          v83 = (v82[1])(v81, v82);
          sub_26851A5F8();
          LODWORD(v81) = v84 > 0;
          v172 = v45;
          v85 = v186;
          v86 = v187;
          __swift_project_boxed_opaque_existential_1(v185, v186);
          v87 = (v86[2])(v85, v86);
          v89 = v88;
          v90 = sub_26851AD20(v172);
          v168 = v83;
          v92 = sub_2684CCE20(v80, v83, v81, v87, v89, v90, v91);

          v93 = v186;
          v94 = v187;
          __swift_mutable_project_boxed_opaque_existential_1(v185, v186);
          (v94[5])(v92 & 0x10101, v93, v94);
          v95 = v180;
          v169 = v92;
          if ((v92 & 0x10000) != 0)
          {
            if (qword_280282960 != -1)
            {
              OUTLINED_FUNCTION_0_0(&qword_280282960);
            }

            OUTLINED_FUNCTION_38(v95, qword_28028B348);
            (*(v181 + 16))(v32);
            v96 = sub_2685689E0();
            v97 = sub_268568DC0();
            if (OUTLINED_FUNCTION_13_3(v97))
            {
              v98 = OUTLINED_FUNCTION_16_0();
              OUTLINED_FUNCTION_26_0(v98);
              OUTLINED_FUNCTION_9_4(&dword_2684CA000, v99, v100, "#ANReadSpokenHintAction spokenHintForEarlyDismissal | experimental policy requires reset");
              OUTLINED_FUNCTION_2();
            }

            (*(v181 + 8))(v32, v95);
            sub_26851ADB4();
          }

          v101 = v176;
          sub_26851AFCC();
          v102 = *(v5 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized);
          type metadata accessor for LimitedTTSDurationCache();
          v103 = sub_2684D0A7C(*(v5 + 32), *(v5 + 40));
          v105 = sub_2685567EC(v101, v102, v103, v104 & 1);
          sub_2684D199C(v101, &qword_280282D40, &qword_26856B330);
          if (qword_280282960 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_280282960);
          }

          OUTLINED_FUNCTION_38(v95, qword_28028B348);
          v106 = v181;
          v107 = *(v181 + 16);
          v108 = v177;
          v176 = v109;
          v107(v177);
          v110 = sub_2685689E0();
          v111 = sub_268568DD0();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            v170 = v107;
            v113 = v112;
            v114 = OUTLINED_FUNCTION_51();
            *&v183 = v114;
            *v113 = 136315138;
            v182 = v105;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D50, &qword_26856B340);
            v115 = sub_268568EA0();
            v117 = sub_2684EABEC(v115, v116, &v183);

            *(v113 + 4) = v117;
            v95 = v180;
            _os_log_impl(&dword_2684CA000, v110, v111, "#ANReadSpokenHintAction spokenHintForEarlyDismissal | earlyDismissalHint %s", v113, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v114);
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_2();

            v118 = *(v106 + 8);
            v107 = v170;
          }

          else
          {

            v118 = *(v106 + 8);
          }

          v118(v108, v95);
          v119 = v179;
          if (v105 <= 0xFDu && (v169 & 0x100) != 0)
          {
            (v107)(v178, v176, v95);
            v120 = sub_2685689E0();
            v121 = sub_268568DD0();
            if (OUTLINED_FUNCTION_13_3(v121))
            {
              v122 = OUTLINED_FUNCTION_16_0();
              *v122 = 0;
              OUTLINED_FUNCTION_19_0();
              _os_log_impl(v123, v124, v125, v126, v122, 2u);
              OUTLINED_FUNCTION_2();
            }

            v127 = v178;
            v178 = v181 + 8;
            v118(v127, v95);
            v128 = v186;
            v129 = v187;
            __swift_project_boxed_opaque_existential_1(v185, v186);
            (v129[3])(0xD000000000000024, 0x8000000268571CB0, v128, v129);
            v130 = v168 == 1;
            v131 = sub_268568B10();
            [v172 setBool:v130 forKey:v131];

            v132 = v186;
            v133 = v187;
            __swift_project_boxed_opaque_existential_1(v185, v186);
            v134 = (v133[2])(v132, v133);
            if (v135)
            {
              v136 = v134;
              v137 = v135;
              (v107)(v119, v176, v95);
              v138 = sub_2685689E0();
              v139 = sub_268568DD0();
              if (OUTLINED_FUNCTION_13_3(v139))
              {
                v140 = swift_slowAlloc();
                v141 = OUTLINED_FUNCTION_51();
                *&v183 = v141;
                *v140 = 136315138;
                *(v140 + 4) = sub_2684EABEC(v136, v137, &v183);
                OUTLINED_FUNCTION_19_0();
                _os_log_impl(v142, v143, v144, v145, v140, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v141);
                v95 = v180;
                OUTLINED_FUNCTION_2();
                OUTLINED_FUNCTION_2();

                v146 = v179;
              }

              else
              {

                v146 = v119;
              }

              v118(v146, v95);
              v147 = sub_268568B10();

              v148 = sub_268568B10();
              [v172 setObject:v147 forKey:v148];
            }
          }

          if (v169)
          {
            v149 = v174;
            (v107)(v174, v176, v95);
            v150 = sub_2685689E0();
            v151 = sub_268568DD0();
            if (OUTLINED_FUNCTION_13_3(v151))
            {
              v152 = OUTLINED_FUNCTION_16_0();
              *v152 = 0;
              OUTLINED_FUNCTION_19_0();
              _os_log_impl(v153, v154, v155, v156, v152, 2u);
              OUTLINED_FUNCTION_2();

              OUTLINED_FUNCTION_35();

              v158 = v172;
            }

            else
            {

              v150 = v172;
              OUTLINED_FUNCTION_35();
            }

            v118(v149, v95);
            __swift_destroy_boxed_opaque_existential_0(v185);
          }

          else
          {
            v159 = v175;
            (v107)(v175, v176, v95);
            v160 = sub_2685689E0();
            v161 = sub_268568DD0();
            if (OUTLINED_FUNCTION_13_3(v161))
            {
              v162 = OUTLINED_FUNCTION_16_0();
              OUTLINED_FUNCTION_26_0(v162);
              OUTLINED_FUNCTION_9_4(&dword_2684CA000, v163, v164, "#ANReadSpokenHintAction spokenHintForEarlyDismissal | experimental policy disallowing hint");
              OUTLINED_FUNCTION_12_3();

              OUTLINED_FUNCTION_35();

              v166 = v172;
            }

            else
            {

              v160 = v172;
              OUTLINED_FUNCTION_35();
            }

            v118(v159, v95);
            __swift_destroy_boxed_opaque_existential_0(v185);
          }
        }

        else
        {
          if (qword_280282960 != -1)
          {
            v48 = OUTLINED_FUNCTION_0_0(&qword_280282960);
          }

          OUTLINED_FUNCTION_24_0(v48, qword_28028B348);
          v70(v20);
          v71 = sub_2685689E0();
          v72 = sub_268568DC0();
          if (OUTLINED_FUNCTION_13_3(v72))
          {
            v73 = OUTLINED_FUNCTION_16_0();
            OUTLINED_FUNCTION_26_0(v73);
            OUTLINED_FUNCTION_9_4(&dword_2684CA000, v74, v75, "#ANReadSpokenHintAction spokenHintForEarlyDismissal | user has used head gestures to dismiss a hint, skip early dismissal hint experience.");
            OUTLINED_FUNCTION_12_3();

            OUTLINED_FUNCTION_35();
          }

          else
          {

            OUTLINED_FUNCTION_35();
          }

          (*(v32 + 1))(v20, v5);
        }
      }

      else
      {
        if (qword_280282960 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_280282960);
        }

        OUTLINED_FUNCTION_38(v180, qword_28028B348);
        (*(v181 + 16))(v17);
        v61 = sub_2685689E0();
        v62 = sub_268568DC0();
        if (OUTLINED_FUNCTION_13_3(v62))
        {
          v63 = OUTLINED_FUNCTION_16_0();
          *v63 = 0;
          OUTLINED_FUNCTION_19_0();
          _os_log_impl(v64, v65, v66, v67, v63, 2u);
          OUTLINED_FUNCTION_2();
        }

        v68 = OUTLINED_FUNCTION_30();
        v69(v68);
      }
    }

    else
    {
      if (qword_280282960 != -1)
      {
        v41 = OUTLINED_FUNCTION_0_0(&qword_280282960);
      }

      OUTLINED_FUNCTION_24_0(v41, qword_28028B348);
      v55(v14);
      v56 = sub_2685689E0();
      v57 = sub_268568DC0();
      if (OUTLINED_FUNCTION_13_3(v57))
      {
        v58 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_26_0(v58);
        OUTLINED_FUNCTION_9_4(&dword_2684CA000, v59, v60, "#ANReadSpokenHintAction last notification was not fully read, skip early dismissal hint experience.");
        OUTLINED_FUNCTION_12_3();
      }

      (*(v32 + 1))(v14, v5);
    }
  }

  else
  {
    if (qword_280282960 != -1)
    {
      v41 = OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    OUTLINED_FUNCTION_24_0(v41, qword_28028B348);
    v49(v10);
    v50 = sub_2685689E0();
    v51 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_3(v51))
    {
      v52 = OUTLINED_FUNCTION_16_0();
      OUTLINED_FUNCTION_26_0(v52);
      OUTLINED_FUNCTION_9_4(&dword_2684CA000, v53, v54, "#ANReadSpokenHintAction spokenHintForEarlyDismissal | early dismissal hint experience requires head gestures capable audio device.");
      OUTLINED_FUNCTION_12_3();
    }

    (*(v32 + 1))(v10, v5);
  }

  OUTLINED_FUNCTION_40();
}

void sub_2684E57A0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_41();
  v5 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_1();
  v38 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_5();
  v37 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_5();
  v36 = v12 - v13;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_42();
  v15 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_47(1);
  v20 = v19;
  v21 = *(v2 + 208);
  if (v21)
  {
    v22 = OUTLINED_FUNCTION_62();
    v39 = [v21 BOOLForKey_];
  }

  else
  {
    v39 = 0;
  }

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  OUTLINED_FUNCTION_38(v15, qword_28028B348);
  v23 = OUTLINED_FUNCTION_55();
  v24(v23);
  v25 = sub_2685689E0();
  v26 = sub_268568DC0();
  if (OUTLINED_FUNCTION_13_0(v26))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_31(v27, 1.5047e-36);
    OUTLINED_FUNCTION_61(&dword_2684CA000, v28, v29, "ANReadSpokenHintAction spokenHintForDisableAnnouncements | disableTemporaryEventOccured: %{BOOL}d - usedByLegacyHint: %{BOOL}d");
    v5 = v35;
    OUTLINED_FUNCTION_2();
  }

  (*(v17 + 8))(v4, v15);
  sub_2684D99B0(v21);
  v30 = v20 | ~v39;
  if (v20)
  {
    v31 = 4294967294;
  }

  else
  {
    v31 = 65;
  }

  if ((v30 & 1) == 0)
  {
    sub_2684E6DF4(v3, v36, &qword_280282D40, &qword_26856B330);
    OUTLINED_FUNCTION_18_0();
    if (v32)
    {
      v25 = v37;
      sub_2685675D0();
      OUTLINED_FUNCTION_18_0();
      v31 = v38;
      if (!v32)
      {
        sub_2684D199C(v36, &qword_280282D40, &qword_26856B330);
      }
    }

    else
    {
      v33 = OUTLINED_FUNCTION_37();
      v34(v33);
    }

    OUTLINED_FUNCTION_60(1);
    (*(v31 + 8))(v25, v5);
  }

  sub_2684D199C(v3, &qword_280282D40, &qword_26856B330);
  OUTLINED_FUNCTION_40();
}

void sub_2684E5AD4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_41();
  v5 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_1();
  v38 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_5();
  v37 = (v9 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_5();
  v36 = v12 - v13;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_42();
  v15 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_47(2);
  v20 = v19;
  v21 = *(v2 + 208);
  if (v21)
  {
    v22 = OUTLINED_FUNCTION_62();
    v39 = [v21 BOOLForKey_];
  }

  else
  {
    v39 = 0;
  }

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  OUTLINED_FUNCTION_38(v15, qword_28028B348);
  v23 = OUTLINED_FUNCTION_55();
  v24(v23);
  v25 = sub_2685689E0();
  v26 = sub_268568DC0();
  if (OUTLINED_FUNCTION_13_0(v26))
  {
    swift_slowAlloc();
    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_31(v27, 1.5047e-36);
    OUTLINED_FUNCTION_61(&dword_2684CA000, v28, v29, "ANReadSpokenHintAction spokenHintForDisableAppAnnouncements | disableAppHintEventOccured: %{BOOL}d - usedByLegacyHint: %{BOOL}d");
    v5 = v35;
    OUTLINED_FUNCTION_2();
  }

  (*(v17 + 8))(v4, v15);
  sub_2684D99B0(v21);
  v30 = v20 | ~v39;
  if (v20)
  {
    v31 = 4294967294;
  }

  else
  {
    v31 = 64;
  }

  if ((v30 & 1) == 0)
  {
    sub_2684E6DF4(v3, v36, &qword_280282D40, &qword_26856B330);
    OUTLINED_FUNCTION_18_0();
    if (v32)
    {
      v25 = v37;
      sub_2685675D0();
      OUTLINED_FUNCTION_18_0();
      v31 = v38;
      if (!v32)
      {
        sub_2684D199C(v36, &qword_280282D40, &qword_26856B330);
      }
    }

    else
    {
      v33 = OUTLINED_FUNCTION_37();
      v34(v33);
    }

    OUTLINED_FUNCTION_60(2);
    (*(v31 + 8))(v25, v5);
  }

  sub_2684D199C(v3, &qword_280282D40, &qword_26856B330);
  OUTLINED_FUNCTION_40();
}

void sub_2684E5E08(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_41();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_2685675E0();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_5();
  OUTLINED_FUNCTION_58();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  v17 = OUTLINED_FUNCTION_10(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7_5();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v28 - v22;
  sub_26851A5F8();
  v29 = v24;
  v30 = v7;
  v31 = v5;
  sub_26851A040();
  v25 = *(v2 + 208);
  if (v25)
  {
    v26 = sub_268568B10();
    v27 = [v25 BOOLForKey_];
  }

  else
  {
    v27 = 0;
  }

  sub_2684D9A9C(v25);
  if (OUTLINED_FUNCTION_68(v20) == 1)
  {
    sub_2685675D0();
    if (OUTLINED_FUNCTION_68(v20) != 1)
    {
      sub_2684D199C(v20, &qword_280282D40, &qword_26856B330);
    }
  }

  else
  {
    (*(v14 + 32))(v3, v20, v12);
  }

  sub_268556BC4(v29, v23, v27, v3, v11, v9, v30, v31);
  (*(v14 + 8))(v3, v12);
  sub_2684D199C(v23, &qword_280282D40, &qword_26856B330);
  OUTLINED_FUNCTION_40();
}

uint64_t sub_2684E605C()
{
  OUTLINED_FUNCTION_5();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_2685675E0();
  v1[5] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_39();
  v6 = sub_2685676D0();
  v1[8] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_39();
  v8 = sub_268567480();
  v1[11] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_39();
  v10 = type metadata accessor for ReadingRecord(0);
  v1[14] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[15] = v11;
  v1[16] = OUTLINED_FUNCTION_50();
  v1[17] = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2684E61F4()
{
  OUTLINED_FUNCTION_5();
  v0[18] = *(*(v0[4] + 32) + 32);

  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_2684E62A0;

  return sub_268559770(3600.0);
}

uint64_t sub_2684E62A0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  *(v6 + 160) = v5;

  v7 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_2684E63A0()
{
  v1 = 0;
  v30 = v0[15];
  v31 = v0[17];
  v33 = v0[20];
  v32 = *(v33 + 16);
  v27 = *MEMORY[0x277CC99A0];
  v25 = (v0[9] + 8);
  v26 = (v0[6] + 8);
  v24 = (v0[12] + 8);
  v23 = MEMORY[0x277D84F90];
  while (v32 != v1)
  {
    if (v1 >= *(v33 + 16))
    {
      __break(1u);
      return;
    }

    v2 = v0[17];
    v4 = v0[2];
    v3 = v0[3];
    v28 = *(v30 + 72);
    v29 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    sub_2684E6980(v0[20] + v29 + v28 * v1, v2);
    v5 = *v2 == v4 && *(v31 + 8) == v3;
    if (v5 || (sub_2685691C0()) && ((v6 = v0[13], v7 = v0[10], v8 = v0[7], v35 = v0[8], v36 = v0[11], v34 = v0[5], sub_2685676B0(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D20, &qword_26856B320), v9 = sub_2685676C0(), OUTLINED_FUNCTION_1(), v11 = v10, v12 = (*(v10 + 80) + 32) & ~*(v10 + 80), v13 = swift_allocObject(), *(v13 + 16) = xmmword_26856A540, (*(v11 + 104))(v13 + v12, v27, v9), sub_2684E6A40(v13), sub_2685675D0(), sub_2685676A0(), , (*v26)(v8, v34), (*v25)(v7, v35), v14 = sub_268567470(), LOBYTE(v13) = v15, (*v24)(v6, v36), (v13) || v14 <= 60))
    {
      sub_2684E6D48(v0[17], v0[16]);
      v16 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2684DCFA8(0, *(v23 + 16) + 1, 1);
        v16 = v23;
      }

      v18 = *(v16 + 16);
      v17 = *(v16 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2684DCFA8((v17 > 1), v18 + 1, 1);
        v16 = v23;
      }

      ++v1;
      v19 = v0[16];
      *(v16 + 16) = v18 + 1;
      v23 = v16;
      sub_2684E6D48(v19, v16 + v29 + v18 * v28);
    }

    else
    {
      sub_2684E69E4(v0[17]);
      ++v1;
    }
  }

  v20 = *(v33 + 16);

  v21 = *(v23 + 16);

  v22 = v0[1];

  v22(v20, v21);
}

uint64_t sub_2684E6764()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  sub_2684E6F04(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));

  sub_2684D199C(v0 + 168, &qword_280282D48, &qword_26856B338);

  __swift_destroy_boxed_opaque_existential_0((v0 + 232));
  return v0;
}

uint64_t sub_2684E67E8()
{
  sub_2684E6764();

  return MEMORY[0x2821FE8D8](v0, 272, 7);
}

uint64_t sub_2684E6840()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB128;

  return sub_2684E15EC();
}

uint64_t sub_2684E6980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684E69E4(uint64_t a1)
{
  v2 = type metadata accessor for ReadingRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2684E6A40(uint64_t a1)
{
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v3 = sub_2685676C0();
  OUTLINED_FUNCTION_1();
  v38 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_5();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v42 = &v33 - v10;
  if (*(v2 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D28, &qword_26856B328), v11 = sub_268568F90(), v12 = v11, (v37 = *(v2 + 16)) != 0))
  {
    v13 = 0;
    v41 = v11 + 56;
    v14 = *(v38 + 80);
    v35 = v2;
    v36 = v2 + ((v14 + 32) & ~v14);
    v40 = v38 + 16;
    v15 = (v38 + 8);
    v34 = (v38 + 32);
    while (v13 < *(v2 + 16))
    {
      v16 = *(v38 + 72);
      v39 = v13 + 1;
      v17 = *(v38 + 16);
      v17(v42, v36 + v16 * v13, v3);
      OUTLINED_FUNCTION_17_1();
      sub_2684E6DAC(&qword_280282D30, 255, v18, MEMORY[0x277CC99D8]);
      v19 = sub_268568AE0();
      v20 = ~(-1 << *(v12 + 32));
      while (1)
      {
        v21 = v19 & v20;
        v22 = (v19 & v20) >> 6;
        v23 = *(v41 + 8 * v22);
        v24 = 1 << (v19 & v20);
        if ((v24 & v23) == 0)
        {
          break;
        }

        v25 = v12;
        v17(v8, *(v12 + 48) + v21 * v16, v3);
        OUTLINED_FUNCTION_17_1();
        sub_2684E6DAC(&qword_280282D38, 255, v26, MEMORY[0x277CC99E0]);
        v27 = sub_268568B00();
        v28 = *v15;
        (*v15)(v8, v3);
        if (v27)
        {
          v28(v42, v3);
          v12 = v25;
          goto LABEL_12;
        }

        v19 = v21 + 1;
        v12 = v25;
      }

      v29 = v42;
      *(v41 + 8 * v22) = v24 | v23;
      (*v34)(*(v12 + 48) + v21 * v16, v29, v3);
      v30 = *(v12 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_15;
      }

      *(v12 + 16) = v32;
LABEL_12:
      v13 = v39;
      v2 = v35;
      if (v39 == v37)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:

    OUTLINED_FUNCTION_40();
  }
}

uint64_t sub_2684E6D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684E6DAC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2684E6DF4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2684E6E5C()
{
  result = qword_280282D60;
  if (!qword_280282D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282D60);
  }

  return result;
}

unint64_t sub_2684E6EB0()
{
  result = qword_280282D68;
  if (!qword_280282D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282D68);
  }

  return result;
}

void sub_2684E6F04(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }
}

_BYTE *storeEnumTagSinglePayload for ANReadSpokenHintAction.ReadSpokenHintActionErrors(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2684E7024);
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

unint64_t sub_2684E7060()
{
  result = qword_280282D78;
  if (!qword_280282D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282D78);
  }

  return result;
}

void OUTLINED_FUNCTION_9_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_11_3()
{
}

void OUTLINED_FUNCTION_12_3()
{

  JUMPOUT(0x26D61CB30);
}

BOOL OUTLINED_FUNCTION_13_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_29(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_31(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2 & 1;
  *(result + 8) = 1024;
  *(result + 10) = *(v3 - 84);
  return result;
}

uint64_t OUTLINED_FUNCTION_39()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_46(uint64_t a1)
{

  sub_268519BA8();
}

void OUTLINED_FUNCTION_47(uint64_t a1)
{
  *(v3 - 112) = v2;
  *(v3 - 104) = v1;

  sub_26851B5B4();
}

uint64_t OUTLINED_FUNCTION_48()
{

  return sub_2685675E0();
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1)
{

  return sub_268567990();
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_51()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_57()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));

  return sub_268567A20();
}

void OUTLINED_FUNCTION_60(uint64_t a1)
{

  sub_268519BA8();
}

void OUTLINED_FUNCTION_61(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xEu);
}

uint64_t OUTLINED_FUNCTION_62()
{

  return sub_268568B10();
}

void OUTLINED_FUNCTION_63()
{

  sub_2684E5E08(v1, v0);
}

uint64_t OUTLINED_FUNCTION_64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10)
{

  return sub_2684EBB74(a1, a2, a3, a4, a5, v11, v12, v10, a9, a10);
}

id OUTLINED_FUNCTION_65(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13)
{
  *(v13 + 96) = a13;

  return a13;
}

id OUTLINED_FUNCTION_66(float a1)
{
  *v2 = a1;
  *(v1 + 104) = v3;

  return v3;
}

void OUTLINED_FUNCTION_67()
{
  v2 = *(v0 + 72);
}

uint64_t OUTLINED_FUNCTION_68(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t ANFollowupFlow.__allocating_init(notificationManager:sharedObjects:)()
{
  OUTLINED_FUNCTION_31_0();
  v0 = swift_allocObject();
  ANFollowupFlow.init(notificationManager:sharedObjects:)();
  return v0;
}

uint64_t sub_2684E7688(unsigned __int8 a1, char a2)
{
  v2 = 0x6C65636E6163;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6C65636E6163;
  switch(v4)
  {
    case 1:
      v3 = 0x8000000268571140;
      v5 = 0xD000000000000014;
      break;
    case 2:
      v5 = 0xD000000000000012;
      v3 = 0x8000000268571160;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x796C706572;
      break;
    case 4:
      v5 = 0x6574616C65726E75;
      v3 = 0xE900000000000064;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0x8000000268571140;
      v2 = 0xD000000000000014;
      break;
    case 2:
      v2 = 0xD000000000000012;
      v6 = 0x8000000268571160;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x796C706572;
      break;
    case 4:
      v2 = 0x6574616C65726E75;
      v6 = 0xE900000000000064;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2685691C0();
  }

  return v8 & 1;
}

uint64_t sub_2684E7830(unsigned __int8 a1, char a2)
{
  v2 = 0x6574656C6564;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6574656C6564;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1684104562;
      break;
    case 2:
      v5 = 0x746165706572;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_29_0();
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1684104562;
      break;
    case 2:
      v2 = 0x746165706572;
      break;
    case 3:
      OUTLINED_FUNCTION_27_0();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_4(v5);
  }

  return v8 & 1;
}

uint64_t sub_2684E794C(unsigned __int8 a1, char a2)
{
  v2 = 0x7472656C61;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x7472656C61;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x737472656C61;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_14_1();
      v3 = 0xEC00000000000000;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_14_1();
      v3 = 0xED00007300000000;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE600000000000000;
      v2 = 0x737472656C61;
      break;
    case 2:
      OUTLINED_FUNCTION_8_3();
      v6 = 0xEC0000006E6F6974;
      break;
    case 3:
      OUTLINED_FUNCTION_8_3();
      v6 = 0xED0000736E6F6974;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_4(v5);
  }

  return v8 & 1;
}

uint64_t sub_2684E7A88(unsigned __int8 a1, char a2)
{
  v2 = 0x6C65636E6163;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6C65636E6163;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 28526;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1885956979;
      break;
    case 3:
      v3 = 0xE300000000000000;
      v5 = 7562617;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 28526;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1885956979;
      break;
    case 3:
      v6 = 0xE300000000000000;
      v2 = 7562617;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_4(v5);
  }

  return v8 & 1;
}

uint64_t sub_2684E7BAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_268568B20();
  v4 = v3;
  if (v2 == sub_268568B20() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_6_4(v2);
  }

  return v7 & 1;
}

uint64_t sub_2684E7C24(unsigned __int8 a1, char a2)
{
  v2 = 0x747065636361;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x747065636361;
  switch(v4)
  {
    case 1:
      v5 = 0x6C65636E6163;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x656E696C636564;
      break;
    case 3:
      v5 = 0x746165706572;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_29_0();
      break;
    case 5:
      v5 = 0x6574616C65726E75;
      v3 = 0xE900000000000064;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6C65636E6163;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x656E696C636564;
      break;
    case 3:
      v2 = 0x746165706572;
      break;
    case 4:
      OUTLINED_FUNCTION_27_0();
      break;
    case 5:
      OUTLINED_FUNCTION_30_0();
      v6 = 0xE900000000000064;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_4(v5);
  }

  return v8 & 1;
}

uint64_t sub_2684E7DAC(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000015;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000016;
    }

    else
    {
      v4 = 0x7A6972616D6D7573;
    }

    if (v3 == 1)
    {
      v5 = 0x80000002685712F0;
    }

    else
    {
      v5 = 0xEC000000656C6261;
    }
  }

  else
  {
    v5 = 0x80000002685712D0;
    v4 = 0xD000000000000015;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000016;
    }

    else
    {
      v2 = 0x7A6972616D6D7573;
    }

    if (a2 == 1)
    {
      v6 = 0x80000002685712F0;
    }

    else
    {
      v6 = 0xEC000000656C6261;
    }
  }

  else
  {
    v6 = 0x80000002685712D0;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_4(v4);
  }

  return v8 & 1;
}

uint64_t sub_2684E7E8C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x7261726F706D6574;
  }

  else
  {
    v3 = 0x746163696C707061;
  }

  if (v2)
  {
    v4 = 0xEB000000006E6F69;
  }

  else
  {
    v4 = 0xEF6C61626F6C4779;
  }

  if (a2)
  {
    v5 = 0x7261726F706D6574;
  }

  else
  {
    v5 = 0x746163696C707061;
  }

  if (a2)
  {
    v6 = 0xEF6C61626F6C4779;
  }

  else
  {
    v6 = 0xEB000000006E6F69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_4(v3);
  }

  return v8 & 1;
}

uint64_t sub_2684E7F34(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x657369636E6F63;
  }

  else
  {
    v2 = 0x65736F62726576;
  }

  if (a2)
  {
    v3 = 0x657369636E6F63;
  }

  else
  {
    v3 = 0x65736F62726576;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2685691C0();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_2684E7FB4(uint64_t a1)
{
  v1 = 0xED0000736E6F6974;
  OUTLINED_FUNCTION_8_3();
  v5 = v4;
  v6 = v3;
  v7 = 0xED0000736E6F6974;
  switch(v5)
  {
    case 1:
      v7 = 0xE500000000000000;
      v6 = 0x6449707061;
      break;
    case 2:
      v7 = 0xE700000000000000;
      v6 = 0x656D614E707061;
      break;
    case 3:
      v6 = 0xD000000000000010;
      v7 = 0x8000000268571230;
      break;
    default:
      break;
  }

  switch(v2)
  {
    case 1:
      v1 = 0xE500000000000000;
      v3 = 0x6449707061;
      break;
    case 2:
      v1 = 0xE700000000000000;
      v3 = 0x656D614E707061;
      break;
    case 3:
      v3 = 0xD000000000000010;
      v1 = 0x8000000268571230;
      break;
    default:
      break;
  }

  if (v6 == v3 && v7 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2685691C0();
  }

  return v9 & 1;
}

uint64_t sub_2684E8118(char a1, char a2)
{
  v3 = sub_2684D2D60(a1);
  v5 = v4;
  if (v3 == sub_2684D2D60(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_4(v3);
  }

  return v8 & 1;
}

uint64_t sub_2684E8190()
{
  sub_268567DF0();
  sub_2684EB938(&qword_280282DE0, MEMORY[0x277D5BE10], MEMORY[0x277D5BE20]);
  sub_268568C90();
  sub_268568C90();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_2685691C0();
  }

  return v1 & 1;
}

uint64_t ANFollowupFlow.init(notificationManager:sharedObjects:)()
{
  OUTLINED_FUNCTION_31_0();
  v3 = OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_input;
  v4 = sub_268568040();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  *(v1 + 16) = 5;
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_notificationManager) = v2;
  memcpy((v1 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects), v0, 0x80uLL);
  *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_shouldHardPrompt) = 0;
  return v1;
}

uint64_t ANFollowupFlow.exitValue.getter()
{
  if (*(v0 + 16) - 5 >= 2)
  {
    return *(v0 + 16);
  }

  else
  {
    return 4;
  }
}

uint64_t ANFollowupFlow.on(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_268568040();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_5();
  v10 = (v9 - v8);
  v11 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v64 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7_5();
  v62 = (v14 - v15);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DA0, &qword_26856B430);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v56 - v20;
  v60 = v6;
  v22 = *(v6 + 16);
  v22(&v56 - v20, a1, v4);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v4);
  v23 = OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_input;
  swift_beginAccess();
  v63 = v2;
  sub_2684EAA4C(v21, v2 + v23);
  swift_endAccess();
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v24 = __swift_project_value_buffer(v11, qword_28028B348);
  v58 = *(v64 + 16);
  v59 = v24;
  v58(v18);
  v61 = a1;
  v22(v10, a1, v4);
  v25 = sub_2685689E0();
  v26 = sub_268568DD0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_4();
    v28 = OUTLINED_FUNCTION_51();
    v57 = v18;
    v29 = v10;
    v30 = v28;
    v65[0] = v28;
    *v27 = 136315138;
    sub_2684EB938(&qword_280282DA8, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v31 = sub_2685691A0();
    v33 = v32;
    (*(v60 + 8))(v29, v4);
    v34 = sub_2684EABEC(v31, v33, v65);
    v35 = v64;

    *(v27 + 4) = v34;
    _os_log_impl(&dword_2684CA000, v25, v26, "ANFollowupFlow input set: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    OUTLINED_FUNCTION_11_2();
    OUTLINED_FUNCTION_2();

    v36 = *(v35 + 8);
    v36(v57, v11);
  }

  else
  {

    (*(v60 + 8))(v10, v4);
    v36 = *(v64 + 8);
    v36(v18, v11);
  }

  v37 = sub_2684E9CA8();
  v38 = v62;
  (v58)(v62, v59, v11);
  v39 = sub_2685689E0();
  v40 = sub_268568DC0();
  if (OUTLINED_FUNCTION_13_0(v40))
  {
    v41 = OUTLINED_FUNCTION_4();
    v42 = OUTLINED_FUNCTION_51();
    v65[0] = v42;
    *v41 = 136315138;
    v43 = ANFollowupRequestedBehavior.rawValue.getter(v37);
    v45 = v44;
    v46 = sub_2684EABEC(v43, v44, v65);
    v61 = v11;
    v47 = v46;

    *(v41 + 4) = v47;
    OUTLINED_FUNCTION_13_4(&dword_2684CA000, v48, v40, "ANFollowupFlow behavior requested: %s");
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_11_2();

    v36(v38, v61);
  }

  else
  {

    v36(v38, v11);
    v43 = ANFollowupRequestedBehavior.rawValue.getter(v37);
    v45 = v49;
  }

  OUTLINED_FUNCTION_30_0();
  *(v63 + 16) = v37;
  if (v43 == v51 && v45 == v50)
  {

    v54 = 0;
  }

  else
  {
    v53 = sub_2685691C0();

    v54 = v53 ^ 1;
  }

  return v54 & 1;
}

unint64_t ANFollowupRequestedBehavior.rawValue.getter(char a1)
{
  result = 0x6C65636E6163;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x796C706572;
      break;
    case 4:
      result = 0x6574616C65726E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ANFollowupFlow.execute()()
{
  OUTLINED_FUNCTION_5();
  v1[17] = v2;
  v1[18] = v0;
  v3 = sub_2685688F0();
  v1[19] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[20] = v4;
  v1[21] = OUTLINED_FUNCTION_39();
  sub_268567B10();
  v1[22] = OUTLINED_FUNCTION_39();
  v5 = sub_268567F20();
  v1[23] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[24] = v6;
  v1[25] = OUTLINED_FUNCTION_39();
  v7 = sub_268567DB0();
  v1[26] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[27] = v8;
  v1[28] = OUTLINED_FUNCTION_39();
  v9 = sub_2685689F0();
  v1[29] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[30] = v10;
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2684E8ACC()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  *(v0 + 280) = v4;
  v5 = *(v3 + 16);
  *(v0 + 288) = v5;
  *(v0 + 296) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v46 = v5;
  v5(v1, v4, v2);
  v6 = sub_2685689E0();
  v7 = sub_268568DC0();
  if (OUTLINED_FUNCTION_13_0(v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2684CA000, v6, v7, "ANFollowupFlow executing", v8, 2u);
    OUTLINED_FUNCTION_11_2();
  }

  v9 = *(v0 + 272);
  v10 = *(v0 + 232);
  v11 = *(v0 + 240);
  v12 = *(v0 + 144);

  v13 = *(v11 + 8);
  *(v0 + 304) = v13;
  v13(v9, v10);
  if (*(v12 + 16) == 5)
  {
    v14 = *(v0 + 144);
    *(v12 + 16) = 6;
    v15 = OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects;
    *(v0 + 312) = OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects;
    v45 = v14 + v15;
    if ((sub_2684D4BC4() & 1) != 0 && (v16 = OUTLINED_FUNCTION_34_0(), v17 = sub_268503BF8(v16), , v17))
    {
      v18 = sub_268541488();
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v0 + 264);
    v20 = *(v0 + 232);
    v21 = *(v0 + 144);
    v22 = OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_shouldHardPrompt;
    *(v21 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_shouldHardPrompt) = v18 & 1;
    v46(v19, v4, v20);

    v23 = sub_2685689E0();
    v24 = sub_268568DC0();
    if (OUTLINED_FUNCTION_13_0(v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 67109120;
      *(v25 + 4) = *(v21 + v22);

      _os_log_impl(&dword_2684CA000, v23, v24, "ANFollowupFlow shouldHardPrompt: %{BOOL}d", v25, 8u);
      OUTLINED_FUNCTION_2();
    }

    else
    {
    }

    v26 = *(v0 + 264);
    v27 = *(v0 + 232);
    *(v0 + 320) = (*(v0 + 240) + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v26, v27);
    if (*(v21 + v22) == 1)
    {
      v28 = OUTLINED_FUNCTION_34_0();
      v29 = sub_268503BF8(v28);
      *(v0 + 328) = v29;

      if (v29)
      {
        v46(*(v0 + 256), v4, *(v0 + 232));
        v30 = sub_2685689E0();
        v31 = sub_268568DC0();
        if (OUTLINED_FUNCTION_13_0(v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_2684CA000, v30, v31, "ANFollowupFlow prompting for followup", v32, 2u);
          OUTLINED_FUNCTION_2();
        }

        v33 = *(v0 + 256);
        v35 = *(v0 + 224);
        v34 = *(v0 + 232);

        v13(v33, v34);
        sub_268567DC0();
        sub_268567DA0();
        sub_268567AF0();
        v36 = swift_task_alloc();
        *(v36 + 16) = v29;
        *(v36 + 24) = v35;
        sub_268567ED0();

        sub_2685688D0();
        type metadata accessor for ANFollowupFlow(0);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v38 = [objc_opt_self() bundleForClass_];
        *(v0 + 336) = v38;
        v39 = sub_268568AD0();
        *(v0 + 344) = v39;
        sub_2685686F0();
        sub_2684D57FC(v45 + 40, v0 + 16);
        v40 = sub_2685686B0();
        *(v0 + 352) = v40;
        *(v0 + 72) = 0u;
        *(v0 + 88) = 0;
        *(v0 + 56) = 0u;
        sub_2685688E0();
        v41 = swift_task_alloc();
        *(v0 + 360) = v41;
        *v41 = v0;
        v41[1] = sub_2684E907C;
        v42 = *(v0 + 168);

        return MEMORY[0x2821B8050](v38, 0xD00000000000002CLL, 0x8000000268571D40, v39, v40, v0 + 56, v42);
      }
    }

    OUTLINED_FUNCTION_37_0();
  }

  else
  {
    sub_268567C40();
  }

  OUTLINED_FUNCTION_3_6();

  OUTLINED_FUNCTION_9_1();

  return v43();
}

uint64_t sub_2684E907C(uint64_t a1)
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  v5 = v3[44];
  v6 = v3[42];
  v7 = v3[21];
  v8 = v3[20];
  v9 = v3[19];
  v10 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v11 = v10;
  v4[46] = v12;
  v4[47] = v1;

  (*(v8 + 8))(v7, v9);
  sub_2684EB7C8((v4 + 7), &qword_280282DB0, &unk_26856B440);
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2684E9248()
{
  v1 = v0[46];
  sub_268567D00();
  swift_allocObject();
  v0[48] = sub_268567CF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
  v2 = swift_allocObject();
  v0[49] = v2;
  *(v2 + 16) = xmmword_26856B420;
  *(v2 + 32) = v1;
  v7 = (*MEMORY[0x277D5BD50] + MEMORY[0x277D5BD50]);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[50] = v4;
  *v4 = v0;
  v4[1] = sub_2684E936C;
  v5 = v0[25];

  return v7(v0 + 12, v2, v5);
}

uint64_t sub_2684E936C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2684E948C()
{
  v1 = (v0[18] + v0[39]);
  v2 = v1[13];
  v3 = v1[14];
  __swift_project_boxed_opaque_existential_1(v1 + 10, v2);
  v4 = swift_task_alloc();
  v0[51] = v4;
  *v4 = v0;
  v4[1] = sub_2684E9554;

  return MEMORY[0x2821BB5D0](v0 + 12, v2, v3);
}

uint64_t sub_2684E9554()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  *(v4 + 416) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2684E9654()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v3 = *(v0 + 184);

  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  (*(v2 + 8))(v1, v3);
  v4 = OUTLINED_FUNCTION_16_2();
  v5(v4);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_3_6();

  OUTLINED_FUNCTION_9_1();

  return v6();
}

uint64_t sub_2684E974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  v18 = *(v12 + 376);
  v19 = OUTLINED_FUNCTION_18_1();
  v20(v19);
  v21 = v18;
  v22 = sub_2685689E0();
  v23 = sub_268568DE0();

  if (os_log_type_enabled(v22, v23))
  {
    v13 = OUTLINED_FUNCTION_4();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v24 = v18;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v25;
    *v14 = v25;
    OUTLINED_FUNCTION_13_4(&dword_2684CA000, v26, v23, "ANFollowupFlow unable to generate prompt dialog error=%@");
    sub_2684EB7C8(v14, &qword_280282A68, &qword_268569FA0);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_11_2();
  }

  OUTLINED_FUNCTION_15_1();

  v17(v13, v14);
  (*(v22 + 8))(v15, v16);
  v27 = OUTLINED_FUNCTION_16_2();
  v28(v27);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_3_6();

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_33();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_2684E98E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();

  __swift_destroy_boxed_opaque_existential_0((v12 + 96));
  v18 = *(v12 + 416);
  v19 = OUTLINED_FUNCTION_18_1();
  v20(v19);
  v21 = v18;
  v22 = sub_2685689E0();
  v23 = sub_268568DE0();

  if (os_log_type_enabled(v22, v23))
  {
    v13 = OUTLINED_FUNCTION_4();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v24 = v18;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v25;
    *v14 = v25;
    OUTLINED_FUNCTION_13_4(&dword_2684CA000, v26, v23, "ANFollowupFlow unable to generate prompt dialog error=%@");
    sub_2684EB7C8(v14, &qword_280282A68, &qword_268569FA0);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_11_2();
  }

  OUTLINED_FUNCTION_15_1();

  v17(v13, v14);
  (*(v22 + 8))(v15, v16);
  v27 = OUTLINED_FUNCTION_16_2();
  v28(v27);
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_3_6();

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_33();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12);
}

uint64_t sub_2684E9A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DE8, &unk_26856B610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_268567F10();
  sub_2684DB414();

  v11 = sub_268564474(v10);
  sub_268516718(v11, v9);

  v12 = sub_268567CE0();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
  sub_268567EF0();
  v13 = sub_268567DB0();
  (*(*(v13 - 8) + 16))(v6, a3, v13);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v13);
  return sub_268567F00();
}

uint64_t ANFollowupFlow.execute(completion:)()
{
  OUTLINED_FUNCTION_31_0();
  type metadata accessor for ANFollowupFlow(0);
  sub_2684EB938(&qword_280282A10, type metadata accessor for ANFollowupFlow, &protocol conformance descriptor for ANFollowupFlow);
  return sub_268567900();
}

uint64_t sub_2684E9CA8()
{
  v96 = sub_2685680B0();
  OUTLINED_FUNCTION_1();
  v94 = v0;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_7_5();
  v91 = (v2 - v3);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v4);
  v93 = &v90 - v5;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v6);
  v98 = &v90 - v7;
  sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v99 = v8;
  v100 = v9;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_5();
  v95 = v10 - v11;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  v14 = &v90 - v13;
  v92 = type metadata accessor for NotificationNLv3Intent(0);
  OUTLINED_FUNCTION_17_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_7_5();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v90 - v20;
  v22 = sub_268568560();
  OUTLINED_FUNCTION_1();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_5();
  v28 = v27 - v26;
  sub_268568080();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_5();
  v32 = v31 - v30;
  sub_268568030();
  v33 = OUTLINED_FUNCTION_24_1();
  v35 = v34(v33);
  if (v35 == *MEMORY[0x277D5C128])
  {
    v36 = OUTLINED_FUNCTION_24_1();
    v37(v36);
    (*(v24 + 4))(v28, v32, v22);
    v98 = v24;
    v38 = *(v24 + 2);
    v96 = v28;
    v38(v21, v28, v22);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v39 = v99;
    v40 = __swift_project_value_buffer(v99, qword_28028B348);
    v41 = v100;
    (*(v100 + 16))(v14, v40, v39);
    sub_2684EB87C(v21, v18);
    v42 = sub_2685689E0();
    v43 = sub_268568DD0();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_4();
      v45 = OUTLINED_FUNCTION_51();
      v95 = v22;
      v46 = v45;
      v101 = v45;
      *v44 = 136315138;
      sub_2684EB938(&qword_280282DF8, type metadata accessor for NotificationNLv3Intent, &unk_26856E8A8);
      v47 = sub_268568310();
      v49 = v48;
      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v18, v50);
      v51 = sub_2684EABEC(v47, v49, &v101);

      *(v44 + 4) = v51;
      _os_log_impl(&dword_2684CA000, v42, v43, "ANFollowupFlow behaviorRequested | nlv3 parsed intent: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v100 + 8))(v14, v39);
    }

    else
    {

      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v18, v73);
      (*(v41 + 8))(v14, v39);
    }

    if ((sub_26852B4B8() & 1) == 0 && (sub_26852B5A8() & 1) == 0 && ((sub_26852B6A4() & 1) == 0 || *(v97 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_shouldHardPrompt) != 1))
    {
      if (sub_26852B7A4())
      {
        OUTLINED_FUNCTION_0_5();
        sub_2684EB8E0(v21, v82);
        v83 = OUTLINED_FUNCTION_7_6();
        v84(v83);
        return 3;
      }

      if (sub_26852B8AC() & 1) != 0 || (sub_26852B998())
      {
        __swift_project_boxed_opaque_existential_1((v97 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects), *(v97 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects + 24));
        v85 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
        sub_268567E90();

        OUTLINED_FUNCTION_0_5();
        sub_2684EB8E0(v21, v86);
        v87 = OUTLINED_FUNCTION_7_6();
        v88(v87);
        return 0;
      }

      OUTLINED_FUNCTION_0_5();
      sub_2684EB8E0(v21, v89);
      v78 = OUTLINED_FUNCTION_7_6();
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_0_5();
    sub_2684EB8E0(v21, v74);
    v75 = OUTLINED_FUNCTION_7_6();
    v76(v75);
    return 2;
  }

  else
  {
    if (v35 != *MEMORY[0x277D5C160])
    {
      v78 = OUTLINED_FUNCTION_24_1();
LABEL_16:
      v79(v78);
      return 4;
    }

    v52 = OUTLINED_FUNCTION_24_1();
    v53(v52);
    v54 = v94;
    v55 = v98;
    v56 = v96;
    (*(v94 + 32))(v98, v32, v96);
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v57 = v99;
    v58 = __swift_project_value_buffer(v99, qword_28028B348);
    v59 = v100;
    v60 = v95;
    (*(v100 + 16))(v95, v58, v57);
    v61 = (v54 + 16);
    v62 = *(v54 + 16);
    v63 = v93;
    v62(v93, v55, v56);
    v64 = sub_2685689E0();
    LODWORD(v92) = sub_268568DD0();
    if (OUTLINED_FUNCTION_13_0(v92))
    {
      v65 = OUTLINED_FUNCTION_4();
      v90 = OUTLINED_FUNCTION_51();
      v101 = v90;
      *v65 = 136315138;
      v62(v91, v63, v56);
      sub_268568B70();
      v66 = OUTLINED_FUNCTION_20_0();
      v61(v66);
      v67 = OUTLINED_FUNCTION_24_1();
      v70 = v60;
      v71 = sub_2684EABEC(v67, v68, v69);

      *(v65 + 4) = v71;
      OUTLINED_FUNCTION_13_4(&dword_2684CA000, v72, v92, "ANFollowupFlow behaviorRequested | uso parse: %s");
      __swift_destroy_boxed_opaque_existential_0(v90);
      OUTLINED_FUNCTION_2();
      v55 = v98;
      OUTLINED_FUNCTION_2();

      (*(v59 + 8))(v70, v99);
    }

    else
    {

      v80 = OUTLINED_FUNCTION_20_0();
      v61(v80);
      (*(v59 + 8))(v60, v57);
    }

    v77 = sub_2684EA4DC(v55);
    (v61)(v55, v56);
  }

  return v77;
}

uint64_t sub_2684EA4DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2685680B0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_5();
  v10 = v9 - v8;
  v11 = type metadata accessor for NotificationNLv4Intent(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_5();
  v15 = v14 - v13;
  v16 = *(v6 + 16);
  v16(v10, a1, v4);
  v16(v15, v10, v4);
  sub_268568550();
  v17 = sub_26850CCFC();
  (*(v6 + 8))(v10, v4);
  *(v15 + *(v12 + 28)) = v17;
  if (v17)
  {
    if (sub_268568540() == 1684104562 && v18 == 0xE400000000000000)
    {
    }

    else
    {
      v20 = sub_2685691C0();

      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

LABEL_14:
    v21 = 2;
    goto LABEL_15;
  }

LABEL_7:
  if (sub_26856563C() & 1) != 0 || (sub_268565808() & 1) != 0 && (*(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_shouldHardPrompt))
  {
    goto LABEL_14;
  }

  sub_2685683B0();
  if (v25)
  {
    sub_268568440();
    if (swift_dynamicCast())
    {

      v21 = 3;
      goto LABEL_15;
    }
  }

  else
  {
    sub_2684EB7C8(v24, &qword_280282BE0, &unk_26856D8C0);
  }

  if (sub_268565820() & 1) != 0 || (sub_268565954())
  {
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects), *(v2 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects + 24));
    v23 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
    sub_268567E90();

    v21 = 0;
  }

  else
  {
    v21 = 4;
  }

LABEL_15:
  sub_2684EB8E0(v15, type metadata accessor for NotificationNLv4Intent);
  return v21;
}

uint64_t ANFollowupFlow.deinit()
{
  sub_2684EB7C8(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_input, &qword_280282DA0, &qword_26856B430);

  sub_2684CC8D4(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents14ANFollowupFlow_sharedObjects);
  return v0;
}

uint64_t ANFollowupFlow.__deallocating_deinit()
{
  ANFollowupFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2684EA8B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB128;

  return ANFollowupFlow.execute()();
}

uint64_t sub_2684EA954@<X0>(_BYTE *a1@<X8>)
{
  result = ANFollowupFlow.exitValue.getter();
  *a1 = result;
  return result;
}

SiriNotificationsIntents::ANFollowupRequestedBehavior_optional __swiftcall ANFollowupRequestedBehavior.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_2685690D0();

  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

SiriNotificationsIntents::ANFollowupRequestedBehavior_optional sub_2684EA9F0@<W0>(Swift::String *a1@<X0>, SiriNotificationsIntents::ANFollowupRequestedBehavior_optional *a2@<X8>)
{
  result.value = ANFollowupRequestedBehavior.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t sub_2684EAA20@<X0>(unint64_t *a1@<X8>)
{
  result = ANFollowupRequestedBehavior.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2684EAA4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DA0, &qword_26856B430);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684EAABC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_2684EAB08(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_2684EAB90(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2684EABEC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_2684EABEC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  OUTLINED_FUNCTION_16_1();
  v9 = sub_2684EACAC(v6, v7, v8, 1, a1, a2);
  v10 = v14[0];
  if (v9)
  {
    v11 = v9;

    ObjectType = swift_getObjectType();
    v14[0] = v11;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v14[0] = a1;
    v14[1] = a2;
  }

  v12 = *a3;
  if (*a3)
  {
    sub_2684EB820(v14, *a3);
    *a3 = v12 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v14);
  return v10;
}

unint64_t sub_2684EACAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2684EADAC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_268569010();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2684EADAC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2684EADF8(a1, a2);
  sub_2684EAF10(&unk_287917B50);
  return v3;
}

uint64_t sub_2684EADF8(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_268568C40())
  {
    result = sub_2684EAFF4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_268568FA0();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_268569010();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2684EAF10(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2684EB064(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2684EAFF4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DF0, &qword_26856B620);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2684EB064(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DF0, &qword_26856B620);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2684EB158(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_2684EB168(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2684EB1E0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for ANFollowupFlow(uint64_t a1)
{
  result = qword_280282DC8;
  if (!qword_280282DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684EB264()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v2();
  v4 = *v1;
  *v4 = v3;
  *v1 = v4 + 1;
  v5 = *v0;
  if (*v0)
  {
    *v5 = v3;
    *v0 = v5 + 1;
  }

  else
  {
  }
}

unint64_t sub_2684EB2D8()
{
  result = qword_280282DC0;
  if (!qword_280282DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282DC0);
  }

  return result;
}

void sub_2684EB334(uint64_t a1)
{
  sub_2684EB3F0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2684EB3F0(uint64_t a1)
{
  if (!qword_280282DD8)
  {
    sub_268568040();
    v1 = sub_268568EB0();
    if (!v2)
    {
      atomic_store(v1, &qword_280282DD8);
    }
  }
}

uint64_t getEnumTagSinglePayload for ANFollowupRequestedBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ANFollowupRequestedBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x2684EB59CLL);
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

uint64_t getEnumTagSinglePayload for ANFollowupFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA)
  {
    v2 = a2 + 6;
    if (a2 + 6 >= 0xFFFF00)
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
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 6;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 6;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x2684EB684);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 6;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 5)
  {
    v8 = v7 - 4;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for ANFollowupFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
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

  if (a3 >= 0xFA)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF9)
  {
    v7 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x2684EB76CLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2684EB794(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2684EB7A8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t sub_2684EB7C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_17_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2684EB820(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2684EB87C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationNLv3Intent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684EB8E0(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2684EB938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_3_6()
{
}

uint64_t OUTLINED_FUNCTION_6_4(uint64_t a1)
{

  return sub_2685691C0();
}

void OUTLINED_FUNCTION_13_4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_15_1()
{
}

uint64_t OUTLINED_FUNCTION_34_0()
{
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return MEMORY[0x2821BB078](1);
}

uint64_t sub_2684EBB74(unsigned int a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int16 a10)
{
  v77 = a4;
  v82 = a6;
  v83 = a7;
  v80 = a2;
  v81 = a5;
  v84 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E00, &qword_26856B628);
  MEMORY[0x28223BE20](v12 - 8);
  v79 = &v68 - v13;
  v87 = sub_268567B60();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  v78 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v68 - v19;
  v21 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v86 = a10;
  v27 = __swift_project_value_buffer(v21, qword_28028B348);
  (*(v23 + 16))(v26, v27, v21);
  v75 = v21;
  v76 = *(v15 + 16);
  v76(v20, a3, v87);

  v28 = sub_2685689E0();
  v29 = sub_268568DD0();
  v85 = a9;

  v72 = v29;
  v30 = os_log_type_enabled(v28, v29);
  v73 = a8;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v71 = a3;
    v32 = v31;
    v70 = swift_slowAlloc();
    v89 = v70;
    *v32 = 136316162;
    sub_268566F8C(v84);
    v69 = v28;
    v35 = OUTLINED_FUNCTION_2_6(v33, v34);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    v36 = sub_268567B50();
    v38 = v37;
    v39 = OUTLINED_FUNCTION_0_6();
    v40(v39, v87);
    v41 = sub_2684EABEC(v36, v38, &v89);

    *(v32 + 14) = v41;
    *(v32 + 22) = 2080;
    v88 = a8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E08, &qword_26856B630);
    v42 = sub_268568EA0();
    v44 = OUTLINED_FUNCTION_2_6(v42, v43);

    *(v32 + 24) = v44;
    *(v32 + 32) = 2080;
    v88 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E10, &qword_26856B638);
    v45 = sub_268568EA0();
    v47 = OUTLINED_FUNCTION_2_6(v45, v46);

    *(v32 + 34) = v47;
    *(v32 + 42) = 2080;
    LOWORD(v88) = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E18, &unk_26856B640);
    v48 = sub_268568EA0();
    v50 = OUTLINED_FUNCTION_2_6(v48, v49);
    v51 = v84;

    *(v32 + 44) = v50;
    v52 = v69;
    _os_log_impl(&dword_2684CA000, v69, v72, "In SiriKitEvent donator: task name %s activity %s announce notification: %s or readNotification: %s or notificationMetricsSummary: %s", v32, 0x34u);
    v53 = v70;
    swift_arrayDestroy();
    MEMORY[0x26D61CB30](v53, -1, -1);
    v54 = v32;
    a3 = v71;
    MEMORY[0x26D61CB30](v54, -1, -1);

    (*(v23 + 8))(v26, v75);
    v55 = v87;
  }

  else
  {

    v56 = OUTLINED_FUNCTION_0_6();
    v55 = v87;
    v57(v56, v87);
    (*(v23 + 8))(v26, v75);
    v51 = v84;
  }

  v76(v78, a3, v55);
  sub_268566F8C(v51);
  v58 = sub_2685679B0();
  v59 = *(v58 - 8);
  v60 = v79;
  v61 = v77;
  (*(v59 + 16))(v79, v77, v58);
  __swift_storeEnumTagSinglePayload(v60, 0, 1, v58);
  v62 = swift_allocObject();
  v63 = v81;
  *(v62 + 16) = v80;
  *(v62 + 17) = v63;
  v64 = v83;
  *(v62 + 24) = v82;
  *(v62 + 32) = v64;
  v65 = v85;
  *(v62 + 40) = v73;
  *(v62 + 48) = v65;
  *(v62 + 56) = v86;
  v66 = sub_268567A00();
  (*(v59 + 8))(v61, v58);
  v74(a3, v55);
  return v66;
}

void sub_2684EC168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8)
{
  v11 = a3;
  if (a2 != 9)
  {
    sub_2685670F4(a2);
  }

  sub_2685679F0();
  if (v11 == 8)
  {
  }

  else
  {
    sub_26856722C(v11);
  }

  sub_2685679E0();
  [objc_allocWithZone(MEMORY[0x277D57520]) init];
  sub_2685679D0();
  v12 = sub_2685679C0();
  if (v12)
  {
    v13 = v12;
    v14 = [objc_allocWithZone(MEMORY[0x277D57668]) init];
    [v13 setNotificationContext_];
  }

  if (a6)
  {

    v15 = sub_2685679C0();
    if (v15)
    {
      v16 = v15;
      v17 = [v15 notificationContext];

      if (v17)
      {
        v18 = 0xEC000000656C6261;
        v19 = 1;
        v20 = 0;
        switch(*(a6 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_summaryType))
        {
          case 2:
            goto LABEL_13;
          case 3:
            break;
          default:
            v19 = sub_2685691C0();
LABEL_13:

            v20 = v19;
            break;
        }

        [v17 setIsSummarized_];
      }
    }

    v21 = sub_2685679C0();
    if (v21)
    {
      v22 = v21;
      v23 = [v21 notificationContext];

      if (v23)
      {
        v24 = 0;
        switch(*(a6 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_summaryType))
        {
          case 1:
          case 2:
            v24 = sub_2685691C0();
            goto LABEL_38;
          case 3:
            break;
          default:
            v24 = 1;
LABEL_38:

            break;
        }

        [v23 setIsLongNotification_];
      }
    }

    v37 = sub_2685679C0();
    if (v37)
    {
      v38 = v37;
      v39 = [v37 notificationContext];

      if (v39)
      {
        [v39 setIsHighlight_];
      }
    }

LABEL_46:

    return;
  }

  if (a7)
  {

    v25 = sub_2685679C0();
    if (v25)
    {
      v26 = v25;
      v27 = [v25 notificationContext];

      if (v27)
      {
        [v27 setIsHighlight_];
      }
    }

    v28 = sub_2685679C0();
    if (v28)
    {
      v29 = v28;
      v30 = [v28 notificationContext];

      if (v30)
      {
        if (*(a7 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_summary + 8))
        {
          v31 = 1;
        }

        else
        {
          v31 = *(a7 + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_stackSummary + 8) != 0;
        }

        [v30 setIsSummarized_];
      }
    }

    goto LABEL_46;
  }

  if (a8 != 2)
  {
    v32 = sub_2685679C0();
    if (v32)
    {
      v33 = v32;
      v34 = [v32 notificationContext];

      if (v34)
      {
        [v34 setIsHighlight_];
      }
    }

    v35 = sub_2685679C0();
    if (v35)
    {
      v36 = v35;
      v40 = [v35 notificationContext];

      if (v40)
      {
        [v40 setIsSummarized_];
      }
    }
  }
}

uint64_t sub_2684EC694()
{

  return MEMORY[0x2821FE8E8](v0, 58, 7);
}

uint64_t OUTLINED_FUNCTION_0_6()
{
  v3 = *(v0 + 8);
  *(v2 - 224) = (v0 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  *(v2 - 216) = v3;
  return v1;
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1, unint64_t a2)
{

  return sub_2684EABEC(a1, a2, (v2 - 96));
}

uint64_t sub_2684EC724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, char a6, uint64_t a7)
{
  *(v7 + 240) = MEMORY[0x277D84F90];
  sub_2684CC878(a1, v7 + 16);
  *(v7 + 144) = a2;
  *(v7 + 152) = a3;
  *(v7 + 160) = a4;
  *(v7 + 168) = a5 & 1;
  *(v7 + 169) = HIBYTE(a5) & 1;
  *(v7 + 216) = a2;
  *(v7 + 224) = a3;
  *(v7 + 232) = 0;
  *(v7 + 248) = a6;
  sub_2684F11A0(a7, &v18);
  if (v19)
  {

    sub_2684D199C(a7, &qword_280282E40, &unk_26856B7C0);
    sub_2684CC8D4(a1);
    sub_2684D8314(&v18, &v20);
  }

  else
  {
    v15 = type metadata accessor for DefaultGuardFlowProvider();
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    v21 = v15;
    v22 = &off_28791A698;
    *&v20 = v16;

    sub_2684D199C(a7, &qword_280282E40, &unk_26856B7C0);
    sub_2684CC8D4(a1);
    if (v19)
    {
      sub_2684D199C(&v18, &qword_280282E40, &unk_26856B7C0);
    }
  }

  sub_2684D8314(&v20, v7 + 176);
  return v7;
}

uint64_t RNAuthenticationFlow.execute()(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  v3 = OUTLINED_FUNCTION_7();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2684EC8B4(uint64_t a1)
{
  v2 = v1[20];
  if (*(v2 + 232) == 2)
  {
    v5 = __swift_project_boxed_opaque_existential_1((v2 + 176), *(v2 + 200));
    if (*(*v5 + 24))
    {
      v6 = *(*v5 + 24);
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    type metadata accessor for RNStateManager();
    swift_allocObject();
    v7 = sub_2684F4624(v6, 0, 0, 0, 0);
    v9 = *(v2 + 144);
    v8 = *(v2 + 152);
    v10 = *(v2 + 160);
    v11 = *(v2 + 168);
    v12 = *(v2 + 169);
    sub_2684CC878(v2 + 16, (v1 + 2));
    type metadata accessor for RNFlow();
    swift_allocObject();
    if (v12)
    {
      v13 = 256;
    }

    else
    {
      v13 = 0;
    }

    v1[18] = RNFlow.init(notificationManager:request:sharedObjects:)(v7, v9, v8, v10, v13 | v11, v1 + 2);
    sub_2684EFB7C(&qword_280282E20, 255, type metadata accessor for RNFlow, &protocol conformance descriptor for RNFlow);

    sub_268567C20();
  }

  else
  {
    if (!*(v2 + 232))
    {
      v3 = swift_task_alloc();
      v1[21] = v3;
      *v3 = v1;
      v3[1] = sub_2684ECB00;

      return sub_2684ECEB8();
    }

    sub_268567C40();
  }

  OUTLINED_FUNCTION_9_1();

  return v14();
}

uint64_t sub_2684ECB00()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  *(v1 + 176) = v0;
  *(v1 + 192) = v2;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2684ECBF4()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 176);
  if (*(v0 + 192))
  {
    sub_268567C40();
    sub_2684EFB4C(v1, 1);
    OUTLINED_FUNCTION_9_1();

    return v2();
  }

  else
  {
    *(*(v0 + 160) + 240) = v1;

    v4 = swift_task_alloc();
    *(v0 + 184) = v4;
    *v4 = v0;
    v4[1] = sub_2684ECCEC;

    return sub_2684EE984();
  }
}

uint64_t sub_2684ECCEC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2684ECDD0()
{
  OUTLINED_FUNCTION_5();
  sub_2684EFB4C(*(v0 + 176), 0);
  OUTLINED_FUNCTION_9_1();

  return v1();
}

uint64_t RNAuthenticationFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RNAuthenticationFlow();
  sub_2684EFB7C(&qword_280282E28, v2, type metadata accessor for RNAuthenticationFlow, &protocol conformance descriptor for RNAuthenticationFlow);
  return sub_268567900();
}

uint64_t sub_2684ECEB8()
{
  OUTLINED_FUNCTION_5();
  v1[14] = v0;
  v2 = sub_2685679B0();
  v1[15] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[16] = v3;
  v1[17] = OUTLINED_FUNCTION_39();
  v4 = sub_268567B60();
  v1[18] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[19] = v5;
  v1[20] = OUTLINED_FUNCTION_39();
  v6 = sub_2685689F0();
  v1[21] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[22] = v7;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_2684ED02C()
{
  v1 = v0[14];
  v2 = [objc_allocWithZone(MEMORY[0x277D47618]) init];
  v0[28] = v2;
  sub_2684D16C0(0, &qword_280282BA8, 0x277CCABB0);
  v3 = sub_268568E50();
  [v2 setSupportsSpokenNotifications_];

  [v2 setSourceAppId_];
  v4 = sub_268568E50();
  [v2 setIsOnDeviceSearch_];

  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  v7 = swift_task_alloc();
  v0[29] = v7;
  v8 = sub_2684D16C0(0, &qword_280282BB0, 0x277D471B0);
  *v7 = v0;
  v7[1] = sub_2684ED1AC;

  return MEMORY[0x2821BB6A0](v2, v5, v8, v6);
}

uint64_t sub_2684ED1AC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  *(v2 + 240) = v1;
  *(v2 + 248) = v0;

  if (v0)
  {
    v3 = sub_2684EDAF0;
  }

  else
  {
    v3 = sub_2684ED2B8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_2684ED2B8()
{
  v104 = v0;
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {

    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    __swift_project_value_buffer(*(v0 + 168), qword_28028B348);
    v27 = OUTLINED_FUNCTION_12_2();
    v28(v27);
    v29 = sub_2685689E0();
    v30 = sub_268568DE0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_16_0();
      *v31 = 0;
      _os_log_impl(&dword_2684CA000, v29, v30, "ReadNotificationAuthenticationFlow getNotifications | unable to convert SABaseCommand to SAOnDeviceNotificationsSearchCompleted", v31, 2u);
      OUTLINED_FUNCTION_2();
    }

    v32 = *(v0 + 192);
    v33 = *(v0 + 168);
    v34 = *(v0 + 176);
    v36 = *(v0 + 152);
    v35 = *(v0 + 160);
    v37 = *(v0 + 136);
    v38 = *(v0 + 144);
    v39 = *(v0 + 128);
    v96 = *(v0 + 120);
    v98 = *(v0 + 224);

    (*(v34 + 8))(v32, v33);
    sub_268567990();
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    sub_268567A20();
    (*(v36 + 104))(v35, *MEMORY[0x277D5BC00], v38);
    (*(v39 + 104))(v37, *MEMORY[0x277D5B8D0], v96);
    sub_268568B70();
    v40 = OUTLINED_FUNCTION_5_6();
    sub_2684EBB74(v40, v41, v42, v37, 8, v43, v44, 0, v88, v89);
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0((v0 + 56));
    sub_2684F1220();
    v45 = swift_allocError();

    v1 = 0;
    goto LABEL_36;
  }

  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v2 = *(v0 + 240);
  v3 = *(v0 + 216);
  v4 = *(v0 + 176);
  v5 = __swift_project_value_buffer(*(v0 + 168), qword_28028B348);
  v95 = *(v4 + 16);
  v97 = v5;
  v95(v3);
  v6 = v2;
  v7 = sub_2685689E0();
  v8 = sub_268568DD0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 240);
  v11 = MEMORY[0x277D84F90];
  if (v9)
  {
    v12 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    buf = v12;
    *v12 = 136315138;
    v99 = v1;
    v102 = v92;
    v13 = sub_2684D9504(v1);

    if (v13)
    {
      v14 = sub_2684DEAF0(v13);
      log = v7;
      v90 = v8;
      if (!v14)
      {

        v17 = MEMORY[0x277D84F90];
LABEL_23:
        v51 = *(v0 + 216);
        v53 = *(v0 + 168);
        v52 = *(v0 + 176);
        v54 = MEMORY[0x26D61BE70](v17, MEMORY[0x277D837D0]);
        v56 = v55;

        v57 = sub_2684EABEC(v54, v56, &v102);

        *(buf + 4) = v57;
        _os_log_impl(&dword_2684CA000, log, v90, "ReadNotificationFlow getNotificationsInReverseChronologicalOrder | notifications search complete notifications %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v92);
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_2();

        v50 = *(v52 + 8);
        v50(v51, v53);
        v1 = v99;
        v11 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }

      v15 = v14;
      v103 = v11;
      sub_2684DCF68(0, v14 & ~(v14 >> 63), 0);
      if ((v15 & 0x8000000000000000) == 0)
      {
        v16 = 0;
        v17 = v103;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x26D61C170](v16, v13);
          }

          else
          {
            v18 = *(v13 + 8 * v16 + 32);
          }

          v19 = v18;
          v20 = [v18 description];
          v21 = sub_268568B20();
          v23 = v22;

          v103 = v17;
          v25 = *(v17 + 16);
          v24 = *(v17 + 24);
          if (v25 >= v24 >> 1)
          {
            sub_2684DCF68((v24 > 1), v25 + 1, 1);
            v17 = v103;
          }

          ++v16;
          *(v17 + 16) = v25 + 1;
          v26 = v17 + 16 * v25;
          *(v26 + 32) = v21;
          *(v26 + 40) = v23;
        }

        while (v15 != v16);

        goto LABEL_23;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  v46 = *(v0 + 216);
  v47 = v7;
  v48 = *(v0 + 168);
  v49 = *(v0 + 176);

  v50 = *(v49 + 8);
  v50(v46, v48);
LABEL_24:
  v58 = *(v0 + 208);
  v59 = *(v0 + 168);
  v60 = sub_2684D9504(v1);
  if (v60)
  {
    v11 = v60;
  }

  v45 = sub_2684EDE38(v11);

  (v95)(v58, v97, v59);

  v61 = sub_2685689E0();
  v62 = sub_268568DD0();

  v63 = os_log_type_enabled(v61, v62);
  v64 = *(v0 + 208);
  v65 = *(v0 + 168);
  if (v63)
  {
    v100 = v50;
    v66 = swift_slowAlloc();
    v94 = v64;
    v67 = swift_slowAlloc();
    v103 = v67;
    *v66 = 136315138;
    Notification = type metadata accessor for ReadNotification(0);
    v69 = MEMORY[0x26D61BE70](v45, Notification);
    v71 = v1;
    v72 = sub_2684EABEC(v69, v70, &v103);

    *(v66 + 4) = v72;
    v1 = v71;
    _os_log_impl(&dword_2684CA000, v61, v62, "ReadNotificationFlow getNotificationsInReverseChronologicalOrder | sorted and filtered notifications %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    OUTLINED_FUNCTION_2();
    v50 = v100;
    OUTLINED_FUNCTION_2();

    v73 = v65;
    v74 = v94;
  }

  else
  {

    v74 = OUTLINED_FUNCTION_34();
  }

  v50(v74, v73);
  if (*(*(v0 + 112) + 248) == 1)
  {
    v75 = sub_2684F1428(v45);

    if (v75)
    {
      v76 = *(v0 + 240);
      v77 = *(v0 + 224);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_26856B420;
      *(v45 + 32) = v75;
    }

    else
    {
      v101 = v50;
      (v95)(*(v0 + 200), v97, *(v0 + 168));
      v79 = sub_2685689E0();
      v80 = sub_268568DC0();
      v81 = os_log_type_enabled(v79, v80);
      v82 = *(v0 + 240);
      v83 = *(v0 + 224);
      v84 = *(v0 + 200);
      v85 = *(v0 + 168);
      if (v81)
      {
        v86 = OUTLINED_FUNCTION_16_0();
        *v86 = 0;
        _os_log_impl(&dword_2684CA000, v79, v80, "ReadNotificationFlow getNotificationsInReverseChronologicalOrder | no salient notification, returning []", v86, 2u);
        OUTLINED_FUNCTION_2();
      }

      v101(v84, v85);
      v45 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v78 = *(v0 + 224);
  }

LABEL_36:

  v87 = *(v0 + 8);

  v87(v45, v1 == 0);
}

uint64_t sub_2684EDAF0()
{
  v39 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v1 = v0[31];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v5 = __swift_project_value_buffer(v4, qword_28028B348);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2685689E0();
  v8 = sub_268568DE0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[31];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v38 = v11;
    *v10 = 136315138;
    v0[13] = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v13 = sub_268568B70();
    v15 = sub_2684EABEC(v13, v14, &v38);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2684CA000, v7, v8, "ReadNotificationAuthenticationFlow getNotifications | notifications search error: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();

    v16 = OUTLINED_FUNCTION_34();
    v17(v16);
  }

  else
  {

    v18 = OUTLINED_FUNCTION_34();
    v19(v18);
  }

  v20 = v0[31];
  v37 = v0[28];
  v22 = v0[19];
  v21 = v0[20];
  v23 = v0[17];
  v24 = v0[18];
  v26 = v0[15];
  v25 = v0[16];
  sub_268567990();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_268567A20();
  (*(v22 + 104))(v21, *MEMORY[0x277D5BC00], v24);
  (*(v25 + 104))(v23, *MEMORY[0x277D5B8D0], v26);
  v0[12] = v20;
  v27 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();
  v28 = OUTLINED_FUNCTION_5_6();
  sub_2684EBB74(v28, v29, v30, v23, 8, v31, v32, 0, v35, v36);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v33 = v0[1];

  return v33(v20, 1);
}

unint64_t sub_2684EDE38(uint64_t a1)
{
  v2 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D40, &qword_26856B330);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v67 - v10;
  v12 = sub_2684DEAF0(a1);
  if (!v12)
  {
    if (qword_280282960 != -1)
    {
      goto LABEL_103;
    }

    goto LABEL_47;
  }

  v13 = v12;
  v68 = 0;
  v2 = 0;
  v71 = MEMORY[0x277D84F90];
  v4 = &qword_280282D40;
  v69 = v11;
  while (1)
  {
    if (v13 == v2)
    {
      v20 = v71;
      v21 = MEMORY[0x277D84F90];
      v71 = MEMORY[0x277D84F90];
      v22 = sub_2684DEAF0(v20);
      v23 = 0;
      v4 = (v20 & 0xC000000000000001);
      v24 = v68;
      while (v22 != v23)
      {
        if (v4)
        {
          v25 = MEMORY[0x26D61C170](v23, v20);
        }

        else
        {
          if (v23 >= *(v20 + 16))
          {
            goto LABEL_97;
          }

          v25 = *(v20 + 8 * v23 + 32);
        }

        v2 = v25;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_96;
        }

        v8 = v70;
        if (sub_2684EE7A8(v25))
        {
          v8 = &v71;
          sub_268569020();
          OUTLINED_FUNCTION_12_4();
          sub_268569060();
          sub_268569030();
        }

        else
        {
        }

        ++v23;
      }

      v26 = v71;
      if (*(v70 + 169))
      {
        v71 = v21;
        v27 = sub_2684DEAF0(v26);
        v28 = 0;
        v69 = v26 & 0xC000000000000001;
        v2 = *MEMORY[0x277D48748];
        while (1)
        {
          if (v27 == v28)
          {

            v26 = v71;
            goto LABEL_51;
          }

          if (v69)
          {
            v29 = MEMORY[0x26D61C170](v28, v26);
          }

          else
          {
            if (v28 >= *(v26 + 16))
            {
              goto LABEL_102;
            }

            v29 = *(v26 + 8 * v28 + 32);
          }

          v4 = v29;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_101;
          }

          v30 = sub_26856533C(v29);
          v32 = v31;
          v33 = sub_268568B20();
          v8 = v34;
          if (!v32)
          {
            break;
          }

          if (v30 == v33 && v32 == v34)
          {
          }

          else
          {
            v36 = sub_2685691C0();

            if ((v36 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          v8 = &v71;
          sub_268569020();
          OUTLINED_FUNCTION_12_4();
          sub_268569060();
          sub_268569030();
LABEL_44:
          ++v28;
        }

LABEL_41:

        goto LABEL_44;
      }

LABEL_51:
      v2 = sub_2684DEAF0(v26);
      v8 = 0;
      v42 = MEMORY[0x277D84F90];
      v4 = &v71;
      v67 = xmmword_26856B420;
      v69 = MEMORY[0x277D84F90];
      while (v2 != v8)
      {
        sub_2684DEAFC();
        if ((v26 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x26D61C170](v8, v26);
        }

        else
        {
          v43 = *(v26 + 8 * v8 + 32);
        }

        v44 = v43;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_98;
        }

        v71 = v43;
        MEMORY[0x28223BE20](v43);
        *(&v67 - 2) = &v71;
        sub_26855B860(sub_2684F1180, (&v67 - 2), v42);
        if (v45)
        {
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
          inited = swift_initStackObject();
          *(inited + 16) = v67;
          *(inited + 32) = v44;
          v71 = v42;
          sub_268509694(inited);
          v42 = v71;
        }

        ++v8;
      }

      v47 = *(v70 + 80);
      __swift_project_boxed_opaque_existential_1((v70 + 56), v47);
      if (sub_268567AB0())
      {
        v48 = sub_2684DEAF0(v42);
        if (v48)
        {
          v49 = v48;
          v71 = MEMORY[0x277D84F90];
          v50 = &v71;
          sub_268569040();
          if (v49 < 0)
          {
            __break(1u);
            goto LABEL_105;
          }

          v51 = 0;
          do
          {
            if ((v42 & 0xC000000000000001) != 0)
            {
              v52 = MEMORY[0x26D61C170](v51, v42);
            }

            else
            {
              v52 = *(v42 + 8 * v51 + 32);
            }

            v4 = v52;
            ++v51;
            sub_2684EE82C(v52);

            sub_268569020();
            OUTLINED_FUNCTION_12_4();
            sub_268569060();
            sub_268569030();
          }

          while (v49 != v51);
        }
      }

      v71 = sub_2684F10C8(v53);
      sub_2684EFDA8(&v71);
      if (v24)
      {

        __break(1u);
        return result;
      }

      v54 = v71;
      if ((*(v70 + 168) & 1) == 0)
      {
        v8 = MEMORY[0x277D84F90];
        goto LABEL_82;
      }

      v47 = sub_2685380D4(1, v71);
      v50 = v55;
      v49 = v56;
      v42 = v57;
      if ((v57 & 1) == 0)
      {
        goto LABEL_73;
      }

      sub_2685691E0();
      swift_unknownObjectRetain_n();
      v59 = swift_dynamicCastClass();
      if (!v59)
      {
        swift_unknownObjectRelease();
        v59 = MEMORY[0x277D84F90];
      }

      v60 = *(v59 + 16);

      if (!__OFSUB__(v42 >> 1, v49))
      {
        if (v60 == (v42 >> 1) - v49)
        {
          v54 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v8 = MEMORY[0x277D84F90];
          if (v54)
          {
            goto LABEL_82;
          }

          v54 = MEMORY[0x277D84F90];
LABEL_81:
          swift_unknownObjectRelease();
LABEL_82:
          v71 = v8;
          v61 = sub_2684DEAF0(v54);
          v2 = 0;
          while (v61 != v2)
          {
            if ((v54 & 0xC000000000000001) != 0)
            {
              v62 = MEMORY[0x26D61C170](v2, v54);
            }

            else
            {
              if (v2 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_100;
              }

              v62 = *(v54 + 8 * v2 + 32);
            }

            v8 = v62;
            v63 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_99;
            }

            type metadata accessor for ReadNotification(0);
            v64 = swift_allocObject();
            v65 = v8;
            v8 = v64;
            sub_268555018(v65, &unk_287917E78);
            ++v2;
            if (v66)
            {
              v4 = v66;
              v8 = &v71;
              MEMORY[0x26D61BE40]();
              if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_268568D00();
              }

              sub_268568D20();
              v69 = v71;
              v2 = v63;
            }
          }

          return v69;
        }

        goto LABEL_106;
      }

LABEL_105:
      __break(1u);
LABEL_106:
      swift_unknownObjectRelease();
LABEL_73:
      sub_26853D6A0(v47, v50, v49, v42);
      v54 = v58;
      v8 = MEMORY[0x277D84F90];
      goto LABEL_81;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D61C170](v2, a1);
    }

    else
    {
      if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_95;
      }

      v14 = *(a1 + 8 * v2 + 32);
    }

    v15 = v14;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v16 = [v14 date];
    if (v16)
    {
      v8 = v16;
      sub_2685675C0();

      v17 = sub_2685675E0();
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v17);
      sub_2684D199C(v11, &qword_280282D40, &qword_26856B330);
      v18 = [v15 source];
      if (v18)
      {

        v8 = &v71;
        sub_268569020();
        sub_268569050();
        v11 = v69;
        sub_268569060();
        sub_268569030();
      }

      else
      {
      }
    }

    else
    {

      v19 = sub_2685675E0();
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v19);
      sub_2684D199C(v11, &qword_280282D40, &qword_26856B330);
    }

    ++v2;
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
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
  OUTLINED_FUNCTION_0_0(&qword_280282960);
LABEL_47:
  v37 = __swift_project_value_buffer(v2, qword_28028B348);
  (v4[2])(v8, v37, v2);
  v38 = sub_2685689E0();
  v39 = sub_268568DC0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_16_0();
    *v40 = 0;
    _os_log_impl(&dword_2684CA000, v38, v39, "ReadNotificationFlow sortAndFilterNotifications incoming notifications array is empty", v40, 2u);
    OUTLINED_FUNCTION_2();
  }

  (v4[1])(v8, v2);
  return MEMORY[0x277D84F90];
}

uint64_t sub_2684EE7A8(void *a1)
{
  v2 = *(v1 + 224);
  if (v2)
  {
    v3 = *(v1 + 216);
    v4 = sub_268565330(a1);
    if (v5)
    {
      if (v4 == v3 && v5 == v2)
      {
        v7 = 1;
      }

      else
      {
        v7 = sub_2685691C0();
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

id sub_2684EE82C(void *a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  OUTLINED_FUNCTION_34();
  if (sub_268567AB0())
  {
    v2 = sub_268564624();
    result = sub_268565330(a1);
    if (v2)
    {
      if (v4)
      {
        goto LABEL_6;
      }

      __break(1u);
    }

    else if (v4)
    {
LABEL_6:
      sub_2684D166C();
      v5 = sub_268568F10();
      v7 = v6;

      sub_2684F1064(v5, v7, a1);
      goto LABEL_7;
    }

    __break(1u);
    return result;
  }

LABEL_7:

  return a1;
}

uint64_t sub_2684EE984()
{
  OUTLINED_FUNCTION_5();
  v1[9] = v2;
  v1[10] = v0;
  v3 = sub_2685679B0();
  v1[11] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v1[12] = v4;
  v1[13] = OUTLINED_FUNCTION_39();
  v5 = sub_268567B60();
  v1[14] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[15] = v6;
  v1[16] = OUTLINED_FUNCTION_39();
  v7 = sub_2685689F0();
  v1[17] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[18] = v8;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2684EEAD4()
{
  if (sub_2684EF6C0())
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    __swift_project_value_buffer(v0[17], qword_28028B348);
    v1 = OUTLINED_FUNCTION_12_2();
    v2(v1);
    v3 = sub_2685689E0();
    v4 = sub_268568DC0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = OUTLINED_FUNCTION_16_0();
      *v5 = 0;
      _os_log_impl(&dword_2684CA000, v3, v4, "ReadNotificationAuthenticationFlow handleUnlockCheck | unlock is required, waiting for device to be unlocked", v5, 2u);
      OUTLINED_FUNCTION_2();
    }

    v6 = v0[20];
    v8 = v0[17];
    v7 = v0[18];
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[13];
    v12 = v0[12];
    v30 = v0[14];
    v31 = v0[11];
    v13 = v0[10];

    (*(v7 + 8))(v6, v8);
    sub_268567990();
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_268567A20();
    (*(v10 + 104))(v9, *MEMORY[0x277D5BB38], v30);
    (*(v12 + 104))(v11, *MEMORY[0x277D5B928], v31);
    sub_2684EBB74(1u, 9, v9, v11, 8, 0, 0, 0, 0, 2u);
    sub_2685679A0();

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    *(v13 + 232) = 1;
    v14 = OUTLINED_FUNCTION_16_3();
    sub_26855BC44(v14);
    v16 = v15;

    v0[8] = v16;
    sub_2685677C0();
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    __swift_project_value_buffer(v0[17], qword_28028B348);
    v17 = OUTLINED_FUNCTION_12_2();
    v18(v17);
    v19 = sub_2685689E0();
    v20 = sub_268568DC0();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_16_0();
      *v21 = 0;
      _os_log_impl(&dword_2684CA000, v19, v20, "ReadNotificationAuthenticationFlow handleUnlockCheck | unlock is not required, proceeding to next flow", v21, 2u);
      OUTLINED_FUNCTION_2();
    }

    v23 = v0[18];
    v22 = v0[19];
    v24 = v0[17];

    (*(v23 + 8))(v22, v24);
    v25 = OUTLINED_FUNCTION_16_3();
    sub_26855BE48(v25);
    v27 = v26;

    v0[7] = v27;
    sub_2685677C0();
  }

  sub_268567C00();

  OUTLINED_FUNCTION_9_1();

  return v28();
}

uint64_t sub_2684EEEA0(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2685679B0();
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_268567B60();
  v7 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2685689F0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  if (*a1 == 1)
  {
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v10, qword_28028B348);
    (*(v11 + 16))(v16, v17, v10);
    v18 = sub_2685689E0();
    v19 = sub_268568DC0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v35 = v4;
      v21 = v6;
      v22 = a2;
      v23 = v20;
      *v20 = 0;
      _os_log_impl(&dword_2684CA000, v18, v19, "ReadNotificationAuthenticationFlow processDeviceUnlockResult | unable to unlock device due to error", v20, 2u);
      v24 = v23;
      a2 = v22;
      v6 = v21;
      v4 = v35;
      MEMORY[0x26D61CB30](v24, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    sub_268567990();
    __swift_project_boxed_opaque_existential_1(v38, v39);
    sub_268567A20();
    (*(v7 + 104))(v9, *MEMORY[0x277D5BC00], v36);
    (*(v37 + 104))(v6, *MEMORY[0x277D5B8D0], v4);
    sub_2684EBB74(1u, 9, v9, v6, 0, 0, 0, 0, 0, 2u);
    sub_2685679A0();

    result = __swift_destroy_boxed_opaque_existential_0(v38);
    v26 = 3;
  }

  else
  {
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v10, qword_28028B348);
    (*(v11 + 16))(v14, v27, v10);
    v28 = sub_2685689E0();
    v29 = sub_268568DC0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v35 = v4;
      v31 = v6;
      v32 = a2;
      v33 = v30;
      *v30 = 0;
      _os_log_impl(&dword_2684CA000, v28, v29, "ReadNotificationAuthenticationFlow processDeviceUnlockResult | unlocked device, authenticated", v30, 2u);
      v34 = v33;
      a2 = v32;
      v6 = v31;
      v4 = v35;
      MEMORY[0x26D61CB30](v34, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    sub_268567990();
    __swift_project_boxed_opaque_existential_1(v38, v39);
    sub_268567A20();
    (*(v7 + 104))(v9, *MEMORY[0x277D5BBA0], v36);
    (*(v37 + 104))(v6, *MEMORY[0x277D5B940], v4);
    v26 = 2;
    sub_2684EBB74(1u, 9, v9, v6, 8, 0, 0, 0, 0, 2u);
    sub_2685679A0();

    result = __swift_destroy_boxed_opaque_existential_0(v38);
  }

  *(a2 + 232) = v26;
  return result;
}

uint64_t sub_2684EF420(_BYTE *a1, uint64_t a2)
{
  v4 = sub_2685689F0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  if (*a1 == 1)
  {
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v11 = __swift_project_value_buffer(v4, qword_28028B348);
    (*(v5 + 16))(v10, v11, v4);
    v12 = sub_2685689E0();
    v13 = sub_268568DC0();
    if (!os_log_type_enabled(v12, v13))
    {
      v15 = 3;
      goto LABEL_13;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2684CA000, v12, v13, "ReadNotificationAuthenticationFlow protectedAppGuardFlow | unable to check protected apps due to error", v14, 2u);
    v15 = 3;
  }

  else
  {
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v4, qword_28028B348);
    (*(v5 + 16))(v8, v16, v4);
    v12 = sub_2685689E0();
    v17 = sub_268568DC0();
    v15 = 2;
    if (!os_log_type_enabled(v12, v17))
    {
      v10 = v8;
      goto LABEL_13;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2684CA000, v12, v17, "ReadNotificationAuthenticationFlow protectedAppGuardFlow | protected app filtered, we are authenticated", v14, 2u);
    v10 = v8;
  }

  MEMORY[0x26D61CB30](v14, -1, -1);
LABEL_13:

  result = (*(v5 + 8))(v10, v4);
  *(a2 + 232) = v15;
  return result;
}

uint64_t sub_2684EF6C0()
{
  v27 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_5();
  v6 = v5 - v4;
  v7 = sub_268567E40();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_5();
  v13 = v12 - v11;
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_268567E30();
  v26 = sub_268567A80();
  (*(v9 + 8))(v13, v7);
  v14 = v0[30];
  v15 = sub_2684DEAF0(v14);
  v16 = v14 + 32;

  v17 = 0;
  do
  {
    v18 = v17;
    if (v17 == v15)
    {
      break;
    }

    if ((v14 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D61C170](v17++, v14);
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        return result;
      }

      v25 = *(result + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isPreviewRestricted);
      swift_unknownObjectRelease();
      v19 = v25;
    }

    else
    {
      if ((v17 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      ++v17;
      v19 = *(*(v16 + 8 * v18) + OBJC_IVAR____TtC24SiriNotificationsIntents16ReadNotification_isPreviewRestricted);
    }
  }

  while (v19 != 1);

  v17 = v27;
  LODWORD(v16) = v26;
  if (qword_280282960 == -1)
  {
    goto LABEL_12;
  }

LABEL_17:
  OUTLINED_FUNCTION_0_0(&qword_280282960);
LABEL_12:
  v21 = __swift_project_value_buffer(v17, qword_28028B348);
  (*(v2 + 16))(v6, v21, v17);
  v22 = sub_2685689E0();
  v23 = sub_268568DD0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 67109376;
    *(v24 + 4) = v16 & 1;
    *(v24 + 8) = 1024;
    *(v24 + 10) = v18 != v15;
    _os_log_impl(&dword_2684CA000, v22, v23, "ReadNotificationAuthenticationFlow isUnlockRequired | isAuthenticated: %{BOOL}d, containsPreviewRestrictedNotification: %{BOOL}d", v24, 0xEu);
    OUTLINED_FUNCTION_2();
  }

  (*(v2 + 8))(v6, v17);
  return (v18 != v15) & (v16 ^ 1);
}

void *RNAuthenticationFlow.deinit()
{
  sub_2684CC8D4(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  return v0;
}

uint64_t RNAuthenticationFlow.__deallocating_deinit()
{
  RNAuthenticationFlow.deinit();

  return MEMORY[0x2821FE8D8](v0, 249, 7);
}

uint64_t sub_2684EFA78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2684DB128;

  return RNAuthenticationFlow.execute()(a1);
}

uint64_t sub_2684EFB14(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RNAuthenticationFlow();

  return sub_268567950();
}

void sub_2684EFB4C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2684EFB7C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t getEnumTagSinglePayload for RNAuthenticationFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RNAuthenticationFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x2684EFD18);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2684EFD54()
{
  result = qword_280282E30;
  if (!qword_280282E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282E30);
  }

  return result;
}

uint64_t sub_2684EFDA8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_268537B94(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2684EFE24(v6);
  return sub_268569030();
}

void sub_2684EFE24(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_268569190();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_268563684(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_2684F0140(v8, v9, a1, v5);
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
    sub_2684EFF04(0, v3, 1, a1);
  }
}

void sub_2684EFF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_2685675E0();
  v8 = MEMORY[0x28223BE20](v38);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
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
        v21 = [v19 date];
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
        sub_2685675C0();

        v23 = [v20 date];
        if (!v23)
        {
          goto LABEL_12;
        }

        v24 = v23;
        v25 = v37;
        sub_2685675C0();

        v40 = sub_268567580();
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

void sub_2684F0140(void ***a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v133 = a1;
  v147 = sub_2685675E0();
  v6 = MEMORY[0x28223BE20](v147);
  v144 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v130 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v137 = &v130 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v14 = MEMORY[0x28223BE20](v13);
  v132 = &v130 - v15;
  MEMORY[0x28223BE20](v14);
  v141 = a3;
  v19 = a3[1];
  if (v19 >= 1)
  {
    v130 = a4;
    v131 = &v130 - v17;
    v136 = v18;
    v20 = 0;
    v146 = (v16 + 8);
    v21 = MEMORY[0x277D84F90];
    v22 = 0x279C3C000uLL;
    while (1)
    {
      v23 = v20;
      v24 = v20 + 1;
      v134 = v23;
      if (v24 < v19)
      {
        v145 = v19;
        v25 = *v141;
        v143 = v24;
        v26 = *(v25 + 8 * v23);
        v27 = *(v25 + 8 * v24);
        v28 = v26;
        v29 = [v27 *(v22 + 2648)];
        if (!v29)
        {
          goto LABEL_140;
        }

        v30 = v29;
        v31 = v23;
        v148 = v27;
        v32 = v131;
        sub_2685675C0();

        v33 = [v28 *(v22 + 2648)];
        if (!v33)
        {
          goto LABEL_141;
        }

        v34 = v33;
        v35 = v132;
        sub_2685675C0();

        LODWORD(v140) = sub_268567580();
        v36 = *v146;
        v37 = v35;
        v38 = v147;
        (*v146)(v37, v147);
        v138 = v36;
        (v36)(v32, v38);

        v135 = 8 * v31;
        a4 = v25 + 8 * v31 + 16;
        v39 = (v31 + 2);
        v24 = v143;
        v22 = 0x279C3C000uLL;
        v40 = v145;
        v139 = v21;
        while (1)
        {
          v41 = v39;
          if (v24 + 1 >= v40)
          {
            break;
          }

          v143 = v24;
          v42 = *(a4 - 8);
          v43 = *a4;
          v44 = v42;
          v45 = [v43 *(v22 + 2648)];
          if (!v45)
          {
            goto LABEL_135;
          }

          v46 = v45;
          v148 = v41;
          v47 = v136;
          sub_2685675C0();

          v48 = [v44 *(v22 + 2648)];
          if (!v48)
          {
            goto LABEL_134;
          }

          v49 = v48;
          v50 = v137;
          sub_2685675C0();

          LODWORD(v49) = sub_268567580() & 1;
          v51 = v50;
          v52 = v147;
          v53 = v138;
          (v138)(v51, v147);
          (v53)(v47, v52);

          a4 += 8;
          v24 = v143 + 1;
          v41 = v148;
          v39 = (v148 + 1);
          v22 = 0x279C3C000;
          v21 = v139;
          v40 = v145;
          if ((v140 & 1) != v49)
          {
            goto LABEL_13;
          }
        }

        v24 = v40;
LABEL_13:
        if (v140)
        {
          v54 = v134;
          if (v24 < v134)
          {
            goto LABEL_127;
          }

          if (v134 < v24)
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
            v58 = v135;
            do
            {
              if (v54 != --v57)
              {
                v59 = *v141;
                if (!*v141)
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

      v61 = v141[1];
      if (v24 < v61)
      {
        if (__OFSUB__(v24, v134))
        {
          goto LABEL_126;
        }

        if (v24 - v134 < v130)
        {
          v62 = v130 + v134;
          if (__OFADD__(v134, v130))
          {
            goto LABEL_128;
          }

          if (v62 >= v61)
          {
            v62 = v141[1];
          }

          if (v62 >= v134)
          {
            if (v24 == v62)
            {
              goto LABEL_43;
            }

            v139 = v21;
            v145 = *v141;
            v63 = v145 + 8 * v24 - 8;
            v64 = (v134 - v24);
            v135 = v62;
LABEL_33:
            v143 = v24;
            v65 = *(v145 + 8 * v24);
            v138 = v64;
            v66 = v64;
            v140 = v63;
            while (1)
            {
              v67 = *v63;
              v68 = v65;
              v69 = v67;
              v70 = [v68 *(v22 + 2648)];
              if (!v70)
              {
                goto LABEL_132;
              }

              v71 = v70;
              sub_2685675C0();

              v72 = [v69 *(v22 + 2648)];
              if (!v72)
              {
                break;
              }

              v73 = v72;
              v148 = v68;
              a4 = v66;
              v74 = v144;
              sub_2685675C0();

              LOBYTE(v73) = sub_268567580();
              v75 = *v146;
              v76 = v74;
              v77 = v147;
              (*v146)(v76, v147);
              v75(v10, v77);

              if ((v73 & 1) == 0)
              {
                v22 = 0x279C3C000;
LABEL_41:
                v24 = v143 + 1;
                v63 = v140 + 8;
                v64 = (v138 - 1);
                if (v143 + 1 == v135)
                {
                  v24 = v135;
                  v21 = v139;
                  goto LABEL_43;
                }

                goto LABEL_33;
              }

              if (!v145)
              {
                goto LABEL_133;
              }

              v78 = *v63;
              v65 = *(v63 + 8);
              *v63 = v65;
              *(v63 + 8) = v78;
              v63 -= 8;
              v66 = (v66 + 1);
              v22 = 0x279C3C000;
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
          v21 = sub_2684F0F24(v21);
          goto LABEL_97;
        }
      }

LABEL_43:
      if (v24 < v134)
      {
        goto LABEL_125;
      }

      v143 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26854BC10();
        v21 = v120;
      }

      v79 = *(v21 + 16);
      a4 = v79 + 1;
      v80 = v143;
      if (v79 >= *(v21 + 24) >> 1)
      {
        sub_26854BC10();
        v80 = v143;
        v21 = v121;
      }

      *(v21 + 16) = a4;
      v81 = v21 + 32;
      v82 = (v21 + 32 + 16 * v79);
      *v82 = v134;
      v82[1] = v80;
      v148 = *v133;
      if (!v148)
      {
        goto LABEL_139;
      }

      if (v79)
      {
        break;
      }

LABEL_92:
      v19 = v141[1];
      v20 = v143;
      if (v143 >= v19)
      {
        goto LABEL_95;
      }
    }

    while (1)
    {
      v83 = a4 - 1;
      v84 = (v81 + 16 * (a4 - 1));
      v85 = (v21 + 16 * a4);
      if (a4 >= 4)
      {
        break;
      }

      if (a4 == 3)
      {
        v86 = *(v21 + 32);
        v87 = *(v21 + 40);
        v96 = __OFSUB__(v87, v86);
        v88 = v87 - v86;
        v89 = v96;
LABEL_63:
        if (v89)
        {
          goto LABEL_112;
        }

        v101 = *v85;
        v100 = v85[1];
        v102 = __OFSUB__(v100, v101);
        v103 = v100 - v101;
        v104 = v102;
        if (v102)
        {
          goto LABEL_115;
        }

        v105 = v84[1];
        v106 = v105 - *v84;
        if (__OFSUB__(v105, *v84))
        {
          goto LABEL_118;
        }

        if (__OFADD__(v103, v106))
        {
          goto LABEL_120;
        }

        if (v103 + v106 >= v88)
        {
          if (v88 < v106)
          {
            v83 = a4 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      if (a4 < 2)
      {
        goto LABEL_114;
      }

      v108 = *v85;
      v107 = v85[1];
      v96 = __OFSUB__(v107, v108);
      v103 = v107 - v108;
      v104 = v96;
LABEL_78:
      if (v104)
      {
        goto LABEL_117;
      }

      v110 = *v84;
      v109 = v84[1];
      v96 = __OFSUB__(v109, v110);
      v111 = v109 - v110;
      if (v96)
      {
        goto LABEL_119;
      }

      if (v111 < v103)
      {
        goto LABEL_92;
      }

LABEL_85:
      if (v83 - 1 >= a4)
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

      if (!*v141)
      {
        goto LABEL_136;
      }

      v115 = v21;
      a4 = v81 + 16 * (v83 - 1);
      v116 = *a4;
      v117 = (v81 + 16 * v83);
      v21 = v117[1];
      v118 = v142;
      sub_2684F0ACC((*v141 + 8 * *a4), (*v141 + 8 * *v117), (*v141 + 8 * v21), v148);
      v142 = v118;
      if (v118)
      {
        goto LABEL_105;
      }

      if (v21 < v116)
      {
        goto LABEL_107;
      }

      v119 = *(v115 + 16);
      if (v83 > v119)
      {
        goto LABEL_108;
      }

      *a4 = v116;
      *(a4 + 8) = v21;
      if (v83 >= v119)
      {
        goto LABEL_109;
      }

      a4 = v119 - 1;
      memmove((v81 + 16 * v83), v117 + 2, 16 * (v119 - 1 - v83));
      v21 = v115;
      *(v115 + 16) = v119 - 1;
      v22 = 0x279C3C000;
      if (v119 <= 2)
      {
        goto LABEL_92;
      }
    }

    v90 = v81 + 16 * a4;
    v91 = *(v90 - 64);
    v92 = *(v90 - 56);
    v96 = __OFSUB__(v92, v91);
    v93 = v92 - v91;
    if (v96)
    {
      goto LABEL_110;
    }

    v95 = *(v90 - 48);
    v94 = *(v90 - 40);
    v96 = __OFSUB__(v94, v95);
    v88 = v94 - v95;
    v89 = v96;
    if (v96)
    {
      goto LABEL_111;
    }

    v97 = v85[1];
    v98 = v97 - *v85;
    if (__OFSUB__(v97, *v85))
    {
      goto LABEL_113;
    }

    v96 = __OFADD__(v88, v98);
    v99 = v88 + v98;
    if (v96)
    {
      goto LABEL_116;
    }

    if (v99 >= v93)
    {
      v113 = *v84;
      v112 = v84[1];
      v96 = __OFSUB__(v112, v113);
      v114 = v112 - v113;
      if (v96)
      {
        goto LABEL_124;
      }

      if (v88 < v114)
      {
        v83 = a4 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_63;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_95:
  a4 = *v133;
  if (!*v133)
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
  v123 = (v21 + 16);
  v122 = *(v21 + 16);
  while (v122 >= 2)
  {
    if (!*v141)
    {
      goto LABEL_137;
    }

    v124 = v21;
    v21 += 16 * v122;
    v125 = *v21;
    v126 = &v123[2 * v122];
    v127 = v126[1];
    v128 = v142;
    sub_2684F0ACC((*v141 + 8 * *v21), (*v141 + 8 * *v126), (*v141 + 8 * v127), a4);
    v142 = v128;
    if (v128)
    {
      break;
    }

    if (v127 < v125)
    {
      goto LABEL_121;
    }

    if (v122 - 2 >= *v123)
    {
      goto LABEL_122;
    }

    *v21 = v125;
    *(v21 + 8) = v127;
    v129 = *v123 - v122;
    if (*v123 < v122)
    {
      goto LABEL_123;
    }

    v122 = *v123 - 1;
    memmove(v126, v126 + 2, 16 * v129);
    *v123 = v122;
    v21 = v124;
  }

LABEL_105:
}

uint64_t sub_2684F0ACC(void **a1, void **a2, void **a3, void **a4)
{
  v63 = sub_2685675E0();
  v8 = MEMORY[0x28223BE20](v63);
  v60 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v56 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v59 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  i = (&v56 - v15);
  v16 = a2 - a1;
  v62 = (v17 + 8);
  v18 = a3 - a2;
  if (v16 < v18)
  {
    sub_26854CA88(a1, a2 - a1, a4);
    v19 = &a4[v16];
    v20 = 0x279C3C000uLL;
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
      result = [v25 *(v20 + 2648)];
      if (!result)
      {
        __break(1u);
        goto LABEL_39;
      }

      v28 = result;
      v29 = a4;
      v30 = i;
      sub_2685675C0();

      result = [v26 *(v20 + 2648)];
      if (!result)
      {
        goto LABEL_40;
      }

      v31 = result;
      v32 = v59;
      sub_2685675C0();

      LOBYTE(v31) = sub_268567580();
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
      v20 = 0x279C3C000;
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

  sub_26854CA88(a2, a3 - a2, a4);
  v19 = &a4[v18];
  v38 = 0x279C3C000uLL;
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
    result = [v44 *(v38 + 2648)];
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
    sub_2685675C0();

    result = [v45 *(v38 + 2648)];
    if (!result)
    {
      goto LABEL_41;
    }

    v47 = result;
    v48 = v60;
    sub_2685675C0();

    LOBYTE(v47) = sub_268567580();
    v49 = *v62;
    v50 = v48;
    v51 = v63;
    (*v62)(v50, v63);
    v49(v12, v51);

    if (v47)
    {
      v19 = v64;
      a3 = v65;
      v53 = i;
      a2 = i;
      a4 = v57;
      a1 = v58;
      v38 = 0x279C3C000;
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
    v38 = 0x279C3C000;
  }

LABEL_31:
  v54 = v19 - a4;
  if (a2 != a4 || a2 >= &a4[v54])
  {
    memmove(a2, a4, 8 * v54);
  }

  return 1;
}

char *sub_2684F0F38(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_2684F0F64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E38, &qword_268570030);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void sub_2684F1064(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268568B10();

  [a3 setApplicationId_];
}

void *sub_2684F10C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_2685690A0();
    if (v4)
    {
      v5 = v4;
      v2 = sub_26854C3E0(v4, 0);
      sub_268509A54((v2 + 4), v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return (a1 & 0xFFFFFFFFFFFFFF8);
}

uint64_t sub_2684F11A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E40, &unk_26856B7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2684F1220()
{
  result = qword_280282E48;
  if (!qword_280282E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282E48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RNAuthenticationFlow.RNAuthenticationFlowErrors(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2684F1310);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2684F134C()
{
  result = qword_280282E50;
  if (!qword_280282E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282E50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_4()
{

  return sub_268569050();
}

uint64_t OUTLINED_FUNCTION_16_3()
{
  __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
}

uint64_t sub_2684F1428(uint64_t a1)
{
  v2 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  i = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_5();
  v8 = v6 - v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v108 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v108 - v14;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  v115 = v16;
  OUTLINED_FUNCTION_17();
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v108 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v108 - v22;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19();
  v116 = v24;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v25);
  v27 = &v108 - v26;
  v28 = 0x280282000uLL;
  v121 = sub_2684DEAF0(a1);
  if (v121)
  {
    v109 = v20;
    v110 = v23;
    v111 = v15;
    v29 = a1 & 0xC000000000000001;
    sub_2684DEAFC();
    if ((a1 & 0xC000000000000001) != 0)
    {
LABEL_58:
      v30 = MEMORY[0x26D61C170](0, a1);
    }

    else
    {
      v30 = *(a1 + 32);
    }

    v112 = v12;
    if (*(v28 + 2400) != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v31 = __swift_project_value_buffer(v2, qword_28028B348);
    v8 = i + 16;
    v32 = *(i + 16);
    v119 = v31;
    v120 = v32;
    (v32)(v27);

    v33 = sub_2685689E0();
    v34 = sub_268568DD0();

    v35 = os_log_type_enabled(v33, v34);
    v28 = sub_268569000;
    v118 = v30;
    if (v35)
    {
      OUTLINED_FUNCTION_4();
      v113 = i + 16;
      v36 = OUTLINED_FUNCTION_9_5();
      v114 = v2;
      v37 = i;
      v38 = v36;
      v122[0] = v36;
      OUTLINED_FUNCTION_24_2(4.8149e-34);

      v39 = sub_268568B70();
      v28 = v40;
      v41 = sub_2684EABEC(v39, v40, v122);

      *(v8 + 4) = v41;
      _os_log_impl(&dword_2684CA000, v33, v34, "NotificationSRRHelper getMostSalientNotification | most recent notification: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      i = v37;
      v2 = v114;
      OUTLINED_FUNCTION_2();
      v8 = v113;
      OUTLINED_FUNCTION_2();
    }

    v117 = *(i + 8);
    v117(v27, v2);
    v12 = sub_2684F1D50();
    v27 = v42;
    if (v43)
    {
      if (v43 == 1)
      {
        v113 = v8;
        v114 = v2;
        v116 = i;
        for (i = 0; v121 != i; ++i)
        {
          sub_2684DEAFC();
          if (v29)
          {
            v44 = MEMORY[0x26D61C170](i, a1);
            v45 = v44;
          }

          else
          {
            v45 = *(a1 + 8 * i + 32);
          }

          if (__OFADD__(i, 1))
          {
            __break(1u);
            goto LABEL_57;
          }

          v2 = &v108;
          v28 = *(v45 + 40);
          v122[0] = *(v45 + 32);
          v122[1] = v28;
          MEMORY[0x28223BE20](v44);
          *(&v108 - 2) = v122;

          v46 = sub_26855B7B0(sub_2684F3570, (&v108 - 4), v12);

          if (v46)
          {
            v76 = OUTLINED_FUNCTION_27_1();
            sub_2684F3590(v76, v77, 1u);
            v78 = v111;
            v2 = v114;
            v120(v111, v119, v114);

            v79 = sub_2685689E0();
            sub_268568DD0();

            if (OUTLINED_FUNCTION_33_0())
            {
              OUTLINED_FUNCTION_4();
              v80 = OUTLINED_FUNCTION_9_5();
              v122[0] = v80;
              OUTLINED_FUNCTION_24_2(4.8149e-34);

              v81 = sub_268568B70();
              OUTLINED_FUNCTION_32_0(v81, v82);
              OUTLINED_FUNCTION_29_1();

              *(v46 + 4) = v12;
              OUTLINED_FUNCTION_5_7(&dword_2684CA000, v83, v84, "NotificationSRRHelper getMostSalientNotification | most salient notification: %s");
              __swift_destroy_boxed_opaque_existential_0(v80);
              OUTLINED_FUNCTION_13_5();
              OUTLINED_FUNCTION_11_4();
            }

            else
            {
            }

            v97 = v78;
            goto LABEL_55;
          }
        }

        v63 = OUTLINED_FUNCTION_27_1();
        sub_2684F3590(v63, v64, 1u);
        v65 = v112;
        v66 = v114;
        v120(v112, v119, v114);
        v67 = sub_2685689E0();
        v68 = sub_268568DC0();
        if (OUTLINED_FUNCTION_12_1(v68))
        {
          v69 = OUTLINED_FUNCTION_16_0();
          OUTLINED_FUNCTION_18_2(v69);
          OUTLINED_FUNCTION_12_5();
          _os_log_impl(v70, v71, v72, v73, v28, 2u);
          OUTLINED_FUNCTION_13_5();
        }

        v74 = v65;
        v75 = v66;
        goto LABEL_52;
      }

      v58 = v116;
      v59 = OUTLINED_FUNCTION_17_3();
      v60(v59);
      v61 = sub_2685689E0();
      v62 = sub_268568DC0();
      if (OUTLINED_FUNCTION_12_1(v62))
      {
        goto LABEL_50;
      }

LABEL_51:

      v74 = v58;
      v75 = v2;
LABEL_52:
      v117(v74, v75);
      return v118;
    }

    if (v42)
    {
      v56 = 0;
      v28 = a1 & 0xFFFFFFFFFFFFFF8;
      while (v121 != v56)
      {
        if (v29)
        {
          v45 = MEMORY[0x26D61C170](v56, a1);
        }

        else
        {
          if (v56 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_60;
          }

          v45 = *(a1 + 8 * v56 + 32);
        }

        if (__OFADD__(v56, 1))
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v57 = *(v45 + 32) == v12 && v27 == *(v45 + 40);
        if (v57 || (sub_2685691C0() & 1) != 0)
        {
          v85 = OUTLINED_FUNCTION_27_1();
          sub_2684F3590(v85, v86, 0);
          v87 = v110;
          v120(v110, v119, v2);

          v88 = sub_2685689E0();
          sub_268568DD0();

          if (OUTLINED_FUNCTION_33_0())
          {
            OUTLINED_FUNCTION_4();
            v89 = OUTLINED_FUNCTION_9_5();
            v122[0] = v89;
            OUTLINED_FUNCTION_24_2(4.8149e-34);

            v90 = sub_268568B70();
            OUTLINED_FUNCTION_32_0(v90, v91);
            OUTLINED_FUNCTION_29_1();

            *(v8 + 4) = v12;
            OUTLINED_FUNCTION_5_7(&dword_2684CA000, v92, v93, "NotificationSRRHelper getMostSalientNotification | most salient notification: %s");
            __swift_destroy_boxed_opaque_existential_0(v89);
            OUTLINED_FUNCTION_13_5();
            OUTLINED_FUNCTION_11_4();
          }

          else
          {
          }

          v97 = v87;
LABEL_55:
          v117(v97, v2);
          return v45;
        }

        ++v56;
      }

      v98 = OUTLINED_FUNCTION_27_1();
      sub_2684F3590(v98, v99, 0);
      v58 = v109;
      v100 = OUTLINED_FUNCTION_17_3();
      v101(v100);
      v61 = sub_2685689E0();
      v102 = sub_268568DC0();
      if (!OUTLINED_FUNCTION_12_1(v102))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v58 = v115;
      v94 = OUTLINED_FUNCTION_17_3();
      v95(v94);
      v61 = sub_2685689E0();
      v96 = sub_268568DC0();
      if (!OUTLINED_FUNCTION_12_1(v96))
      {
        goto LABEL_51;
      }
    }

LABEL_50:
    v103 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_18_2(v103);
    OUTLINED_FUNCTION_12_5();
    _os_log_impl(v104, v105, v106, v107, v28, 2u);
    OUTLINED_FUNCTION_13_5();
    goto LABEL_51;
  }

  if (qword_280282960 != -1)
  {
LABEL_60:
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v47 = __swift_project_value_buffer(v2, qword_28028B348);
  (*(i + 16))(v8, v47, v2);
  v48 = sub_2685689E0();
  v49 = sub_268568DC0();
  if (OUTLINED_FUNCTION_12_1(v49))
  {
    v50 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_18_2(v50);
    OUTLINED_FUNCTION_12_5();
    _os_log_impl(v51, v52, v53, v54, v28, 2u);
    OUTLINED_FUNCTION_13_5();
  }

  (*(i + 8))(v8, v2);
  return 0;
}

uint64_t sub_2684F1D1C()
{
  sub_268568990();
  result = sub_268568980();
  qword_280282E58 = result;
  return result;
}

uint64_t sub_2684F1D50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E60, &qword_26856B8D8);
  MEMORY[0x28223BE20](v0 - 8);
  v237 = &v232 - v1;
  OUTLINED_FUNCTION_19_1();
  v255 = sub_268568A70();
  OUTLINED_FUNCTION_1();
  v243 = v2;
  MEMORY[0x28223BE20](v3);
  v254 = &v232 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_19_1();
  sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v250 = v6;
  v251 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_5();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v248 = v11;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19();
  v235 = v13;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  v234 = v15;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19();
  v236 = v17;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19();
  v239 = v19;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19();
  v238 = v21;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_25_0();
  v241 = v23;
  OUTLINED_FUNCTION_19_1();
  v256 = sub_268568A20();
  OUTLINED_FUNCTION_1();
  v249 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_5();
  v253 = (v26 - v27);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_19();
  v240 = v29;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_25_0();
  v242 = v31;
  OUTLINED_FUNCTION_19_1();
  sub_268568A90();
  OUTLINED_FUNCTION_1();
  v245 = v32;
  v246 = v33;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_5();
  v233 = (v34 - v35);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  v244 = v37;
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_25_0();
  v247 = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E68, &qword_26856B8E0);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v232 - v41;
  v43 = sub_268568A40();
  OUTLINED_FUNCTION_1();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  v48 = (&v232 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E70, &unk_26856B8E8);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_7_5();
  v52 = (v50 - v51);
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_25_0();
  v55 = v54;
  OUTLINED_FUNCTION_19_1();
  sub_268568500();
  swift_allocObject();
  sub_2685684F0();
  v56 = MEMORY[0x26D61B540]();

  v252 = v56;
  if (!v56)
  {
    if (qword_280282960 != -1)
    {
LABEL_91:
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v77 = v251;
    v78 = __swift_project_value_buffer(v251, qword_28028B348);
    v79 = v250;
    (*(v250 + 16))(v9, v78, v77);
    v80 = sub_2685689E0();
    v81 = sub_268568DC0();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = OUTLINED_FUNCTION_16_0();
      *v82 = 0;
      _os_log_impl(&dword_2684CA000, v80, v81, "NotificationSRRHelper resolveMostSalientNotificationIdentifier | unable to convert entity builder to entity", v82, 2u);
      OUTLINED_FUNCTION_2();

      (*(v79 + 8))(v9, v77);
      return OUTLINED_FUNCTION_28_0();
    }

    (*(v79 + 8))(v9, v77);
    return OUTLINED_FUNCTION_28_0();
  }

  if (qword_280282950 != -1)
  {
    swift_once();
  }

  *v48 = v252;
  (*(v45 + 104))(v48, *MEMORY[0x277D5FEA8], v43);
  v57 = sub_268568A80();
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v57);

  v9 = v55;
  sub_268568970();
  sub_2684D199C(v42, &qword_280282E68, &qword_26856B8E0);
  (*(v45 + 8))(v48, v43);
  sub_2684F35B0(v55, v52);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58 = *v52;
    if (qword_280282960 != -1)
    {
LABEL_93:
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v59 = v251;
    v60 = __swift_project_value_buffer(v251, qword_28028B348);
    v61 = v250;
    v62 = v248;
    (*(v250 + 16))(v248, v60, v59);
    v63 = v58;
    v64 = sub_2685689E0();
    sub_268568DE0();

    if (OUTLINED_FUNCTION_33_0())
    {
      v65 = OUTLINED_FUNCTION_4();
      v66 = v9;
      v67 = swift_slowAlloc();
      v257 = v58;
      v258[0] = v67;
      *v65 = 136315138;
      v68 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
      v69 = sub_268568B70();
      v71 = sub_2684EABEC(v69, v70, v258);

      *(v65 + 4) = v71;
      OUTLINED_FUNCTION_12_5();
      _os_log_impl(v72, v73, v74, v75, v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_2();

      (*(v61 + 8))(v248, v59);
      v76 = v66;
LABEL_18:
      sub_2684D199C(v76, &qword_280282E70, &unk_26856B8E8);
      return OUTLINED_FUNCTION_28_0();
    }

    (*(v61 + 8))(v62, v59);
LABEL_17:
    v76 = v9;
    goto LABEL_18;
  }

  v84 = v246;
  v85 = v247;
  v86 = v245;
  (*(v246 + 32))(v247, v52, v245);
  v87 = v84[2];
  v88 = v244;
  v87(v244, v85, v86);
  v89 = (v84[11])(v88, v86);
  if (v89 == *MEMORY[0x277D5FEC0])
  {
    v239 = v9;
    v90 = OUTLINED_FUNCTION_7_7();
    v91 = v86;
    v92(v90, v86);
    v93 = v249;
    v9 = v242;
    v58 = v256;
    (*(v249 + 32))(v242, v88, v256);
    v94 = v250;
    if (qword_280282960 != -1)
    {
LABEL_95:
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v95 = v251;
    v96 = __swift_project_value_buffer(v251, qword_28028B348);
    v97 = v241;
    (*(v94 + 16))(v241, v96, v95);
    (*(v93 + 16))(v240, v9, v58);
    v98 = sub_2685689E0();
    v99 = sub_268568DD0();
    if (os_log_type_enabled(v98, v99))
    {
      v100 = OUTLINED_FUNCTION_4();
      v253 = swift_slowAlloc();
      v258[0] = v253;
      *v100 = 136315138;
      sub_2684F3620(&qword_280282E88, MEMORY[0x277D5FE08], MEMORY[0x277D5FE10]);
      v101 = v256;
      v102 = sub_2685691A0();
      v104 = v103;
      v105 = OUTLINED_FUNCTION_21_1();
      (v93)(v105, v101);
      v106 = sub_2684EABEC(v102, v104, v258);
      v9 = v242;

      *(v100 + 4) = v106;
      _os_log_impl(&dword_2684CA000, v98, v99, "NotificationSRRHelper resolveMostSalientNotificationIdentifier | resolved a candidate notification %s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v253);
      v91 = v245;
      OUTLINED_FUNCTION_2();
      v84 = v246;
      OUTLINED_FUNCTION_2();
    }

    else
    {

      v121 = OUTLINED_FUNCTION_21_1();
      (v93)(v121, v256);
    }

    (*(v94 + 8))(v97, v251);
    sub_268568A10();
    v122 = sub_268568A60();

    v123 = OUTLINED_FUNCTION_26_1();
    v124(v123);
    (v93)(v9, v256);
    (v84[1])(v247, v91);
    v125 = v239;
    goto LABEL_27;
  }

  v107 = v250;
  if (v89 == *MEMORY[0x277D5FED0])
  {
    v108 = OUTLINED_FUNCTION_7_7();
    v110 = v109(v108, v86);
    v111 = *v88;
    v112 = v251;
    if (qword_280282960 != -1)
    {
      v110 = OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    OUTLINED_FUNCTION_2_7(v110, qword_28028B348);
    v113 = v239;
    v114 = OUTLINED_FUNCTION_30_1();
    v115(v114);

    v116 = sub_2685689E0();
    v117 = sub_268568DD0();

    if (os_log_type_enabled(v116, v117))
    {
      OUTLINED_FUNCTION_4();
      v118 = OUTLINED_FUNCTION_9_5();
      v258[0] = v118;
      *v113 = 136315138;
      v119 = MEMORY[0x26D61BE70](v111, v256);
      OUTLINED_FUNCTION_32_0(v119, v120);
      OUTLINED_FUNCTION_29_1();

      *(v113 + 4) = v85;
      _os_log_impl(&dword_2684CA000, v116, v117, "NoctificationSRRHelper resolveMostSalientNotificationIdentifier | needsDisambiguation candidates: %s", v113, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v118);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_11_4();

      (*(v107 + 8))(v239, v251);
    }

    else
    {

      (*(v107 + 8))(v113, v112);
    }

    v142 = *(v111 + 16);
    if (v142)
    {
      v239 = v9;
      v258[0] = MEMORY[0x277D84F90];
      OUTLINED_FUNCTION_31_1();
      v143 = v258[0];
      OUTLINED_FUNCTION_20_1();
      v244 = v111;
      v146 = v111 + v145;
      v250 = *(v144 + 56);
      v251 = v147;
      v248 = (v144 - 8);
      v249 = v243 + 8;
      v148 = v253;
      do
      {
        v149 = v256;
        v150 = v144;
        v251(v148, v146, v256);
        v151 = v254;
        sub_268568A10();
        v152 = sub_268568A60();
        v154 = v153;
        (*v249)(v151, v255);
        (*v248)(v148, v149);
        v258[0] = v143;
        v156 = *(v143 + 16);
        v155 = *(v143 + 24);
        if (v156 >= v155 >> 1)
        {
          OUTLINED_FUNCTION_23_1(v155);
          v143 = v258[0];
        }

        *(v143 + 16) = v156 + 1;
        v157 = v143 + 16 * v156;
        *(v157 + 32) = v152;
        *(v157 + 40) = v154;
        v146 += v250;
        --v142;
        v144 = v150;
      }

      while (v142);

      v158 = OUTLINED_FUNCTION_15_2();
      v159(v158);
      sub_2684D199C(v239, &qword_280282E70, &unk_26856B8E8);
      return v143;
    }

    else
    {

      v173 = OUTLINED_FUNCTION_8_4();
      v174(v173);
      v175 = v9;
LABEL_46:
      sub_2684D199C(v175, &qword_280282E70, &unk_26856B8E8);
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v126 = v251;
    if (v89 == *MEMORY[0x277D5FEC8])
    {
      v127 = v9;
      v128 = OUTLINED_FUNCTION_7_7();
      v130 = v129(v128, v86);
      v131 = *v88;
      if (qword_280282960 != -1)
      {
        v130 = OUTLINED_FUNCTION_0_0(&qword_280282960);
      }

      OUTLINED_FUNCTION_2_7(v130, qword_28028B348);
      v132 = v238;
      v133 = OUTLINED_FUNCTION_30_1();
      v134(v133);

      v135 = sub_2685689E0();
      v136 = sub_268568DD0();
      v137 = OUTLINED_FUNCTION_12_1(v136);
      v138 = v237;
      if (v137)
      {
        v139 = OUTLINED_FUNCTION_4();
        *v139 = 134217984;
        *(v139 + 4) = *(v131 + 16);

        OUTLINED_FUNCTION_5_7(&dword_2684CA000, v140, v141, "NotificationSRRHelper resolveMostSalientNotificationIdentifier | Found %ld notification candidates. Using the first one");
        v132 = v238;
        OUTLINED_FUNCTION_2();
      }

      else
      {
      }

      (*(v107 + 8))(v132, v126);
      sub_2684D65A8(v131, v138);

      v176 = v256;
      if (__swift_getEnumTagSinglePayload(v138, 1, v256) != 1)
      {
        sub_268568A10();
        (*(v249 + 8))(v138, v176);
        v122 = sub_268568A60();

        v184 = OUTLINED_FUNCTION_26_1();
        v185(v184);
        v186 = OUTLINED_FUNCTION_8_4();
        v187(v186);
        v125 = v127;
LABEL_27:
        sub_2684D199C(v125, &qword_280282E70, &unk_26856B8E8);
        return v122;
      }

      v177 = OUTLINED_FUNCTION_8_4();
      v178(v177);
      sub_2684D199C(v127, &qword_280282E70, &unk_26856B8E8);
      sub_2684D199C(v138, &qword_280282E60, &qword_26856B8D8);
      return OUTLINED_FUNCTION_28_0();
    }

    else if (v89 == *MEMORY[0x277D5FED8])
    {
      v160 = OUTLINED_FUNCTION_7_7();
      v162 = v161(v160, v86);
      v58 = *v88;
      if (qword_280282960 != -1)
      {
        v162 = OUTLINED_FUNCTION_0_0(&qword_280282960);
      }

      OUTLINED_FUNCTION_2_7(v162, qword_28028B348);
      v163 = v236;
      v164 = OUTLINED_FUNCTION_30_1();
      v165(v164);

      v166 = sub_2685689E0();
      sub_268568DD0();

      v91 = v9;
      if (OUTLINED_FUNCTION_33_0())
      {
        OUTLINED_FUNCTION_4();
        v167 = OUTLINED_FUNCTION_9_5();
        v258[0] = v167;
        *v163 = 136315138;
        v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E80, &qword_26856B8F8);
        v169 = MEMORY[0x26D61BE70](v58, v168);
        OUTLINED_FUNCTION_32_0(v169, v170);
        OUTLINED_FUNCTION_29_1();

        *(v163 + 4) = v85;
        OUTLINED_FUNCTION_5_7(&dword_2684CA000, v171, v172, "NoctificationSRRHelper resolveMostSalientNotificationIdentifier | needsDisambiguationPlural candidates: %s");
        __swift_destroy_boxed_opaque_existential_0(v167);
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_11_4();

        (*(v107 + 8))(v236, v126);
      }

      else
      {

        (*(v107 + 8))(v163, v126);
      }

      v9 = 0;
      v93 = v58[2];
      v188 = MEMORY[0x277D84F90];
      v84 = MEMORY[0x277D84F90];
      while (v93 != v9)
      {
        if (v9 >= v58[2])
        {
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

        v189 = v58[v9 + 4];
        v190 = *(v189 + 16);
        v191 = v84[2];
        v94 = v191 + v190;
        if (__OFADD__(v191, v190))
        {
          goto LABEL_89;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v94 > v84[3] >> 1)
        {
          if (v191 <= v94)
          {
            v193 = v191 + v190;
          }

          else
          {
            v193 = v191;
          }

          v84 = sub_26854C06C(isUniquelyReferenced_nonNull_native, v193, 1, v84);
        }

        if (*(v189 + 16))
        {
          if ((v84[3] >> 1) - v84[2] < v190)
          {
            __break(1u);
            goto LABEL_93;
          }

          swift_arrayInitWithCopy();

          if (v190)
          {
            v194 = v84[2];
            v195 = __OFADD__(v194, v190);
            v196 = v194 + v190;
            if (v195)
            {
              __break(1u);
              goto LABEL_95;
            }

            v84[2] = v196;
          }
        }

        else
        {

          if (v190)
          {
            goto LABEL_90;
          }
        }

        ++v9;
      }

      v197 = v84[2];
      if (!v197)
      {

        v228 = OUTLINED_FUNCTION_15_2();
        v229(v228);
        v175 = v91;
        goto LABEL_46;
      }

      v239 = v91;
      v258[0] = v188;
      OUTLINED_FUNCTION_31_1();
      v198 = v258[0];
      OUTLINED_FUNCTION_20_1();
      v200 = v84 + v199;
      v250 = *(v201 + 56);
      v251 = v202;
      v248 = (v243 + 8);
      v249 = v201;
      v244 = (v201 - 8);
      v203 = v253;
      do
      {
        v204 = v256;
        v251(v203, v200, v256);
        v205 = v254;
        sub_268568A10();
        v206 = sub_268568A60();
        v208 = v207;
        (*v248)(v205, v255);
        (*v244)(v203, v204);
        v258[0] = v198;
        v210 = *(v198 + 16);
        v209 = *(v198 + 24);
        if (v210 >= v209 >> 1)
        {
          OUTLINED_FUNCTION_23_1(v209);
          v198 = v258[0];
        }

        *(v198 + 16) = v210 + 1;
        v211 = v198 + 16 * v210;
        *(v211 + 32) = v206;
        *(v211 + 40) = v208;
        v200 += v250;
        --v197;
      }

      while (v197);

      v212 = OUTLINED_FUNCTION_15_2();
      v213(v212);
      sub_2684D199C(v239, &qword_280282E70, &unk_26856B8E8);
      return v198;
    }

    else
    {
      if (v89 != *MEMORY[0x277D5FEE0])
      {
        v239 = v9;
        if (qword_280282960 != -1)
        {
          v89 = OUTLINED_FUNCTION_0_0(&qword_280282960);
        }

        OUTLINED_FUNCTION_2_7(v89, qword_28028B348);
        v214 = v235;
        v215 = OUTLINED_FUNCTION_30_1();
        v216(v215);
        v217 = v233;
        v87(v233, v85, v86);
        v218 = sub_2685689E0();
        v219 = v126;
        v220 = v107;
        v221 = v86;
        v222 = sub_268568DE0();
        if (os_log_type_enabled(v218, v222))
        {
          OUTLINED_FUNCTION_4();
          v256 = OUTLINED_FUNCTION_9_5();
          v258[0] = v256;
          *v214 = 136315138;
          sub_2684F3620(&qword_280282E78, MEMORY[0x277D5FEE8], MEMORY[0x277D5FEF0]);
          v223 = sub_2685691A0();
          v225 = v224;
          v226 = *(v246 + 8);
          v226(v217, v221);
          v227 = sub_2684EABEC(v223, v225, v258);

          *(v214 + 4) = v227;
          _os_log_impl(&dword_2684CA000, v218, v222, "NotificationSRRHelper resolveMostSalientNotificationIdentifier | Received unknown result type %s", v214, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v256);
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_11_4();

          (*(v220 + 8))(v235, v251);
          v226(v247, v221);
        }

        else
        {

          v226 = *(v246 + 8);
          v226(v217, v221);
          (*(v220 + 8))(v214, v219);
          v226(v85, v221);
        }

        sub_2684D199C(v239, &qword_280282E70, &unk_26856B8E8);
        v226(v244, v221);
        return OUTLINED_FUNCTION_28_0();
      }

      if (qword_280282960 != -1)
      {
        v89 = OUTLINED_FUNCTION_0_0(&qword_280282960);
      }

      OUTLINED_FUNCTION_2_7(v89, qword_28028B348);
      v179 = v234;
      v180(v234);
      v181 = sub_2685689E0();
      v182 = sub_268568DD0();
      if (!os_log_type_enabled(v181, v182))
      {

        (*(v107 + 8))(v179, v126);
        v230 = OUTLINED_FUNCTION_8_4();
        v231(v230);
        goto LABEL_17;
      }

      v239 = v9;
      v183 = OUTLINED_FUNCTION_16_0();
      *v183 = 0;
      _os_log_impl(&dword_2684CA000, v181, v182, "NotificationSRRHelper resolveMostSalientNotificationIdentifier | No notifications found", v183, 2u);
      OUTLINED_FUNCTION_11_4();

      (*(v107 + 8))(v179, v126);
      (v84[1])(v85, v86);
      sub_2684D199C(v239, &qword_280282E70, &unk_26856B8E8);
      return OUTLINED_FUNCTION_28_0();
    }
  }
}

uint64_t sub_2684F3590(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return v3;
}

uint64_t sub_2684F35B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E70, &unk_26856B8E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684F3620(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_5_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_5()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_11_4()
{

  JUMPOUT(0x26D61CB30);
}

void OUTLINED_FUNCTION_13_5()
{

  JUMPOUT(0x26D61CB30);
}

void *OUTLINED_FUNCTION_23_1@<X0>(unint64_t a1@<X8>)
{

  return sub_2684DCF68((a1 > 1), v1, 1);
}

uint64_t OUTLINED_FUNCTION_24_2(float a1)
{
  *v1 = a1;
  *(v3 - 112) = v2;

  return type metadata accessor for ReadNotification(0);
}

void *OUTLINED_FUNCTION_31_1()
{

  return sub_2684DCF68(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1, unint64_t a2)
{

  return sub_2684EABEC(a1, a2, (v2 - 96));
}

BOOL OUTLINED_FUNCTION_33_0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_2684F38D8()
{
  swift_unknownObjectRelease();
  sub_2684DBF00(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents31RNNoNewNotificationsActionGroup_transition);
  sub_2684CC8D4(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents31RNNoNewNotificationsActionGroup_sharedObjects);
  return v0;
}

uint64_t sub_2684F3918()
{
  sub_2684F38D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RNNoNewNotificationsActionGroup(uint64_t a1)
{
  result = qword_280282E98;
  if (!qword_280282E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684F39C4(uint64_t a1)
{
  sub_2684DBD70(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_2684F3AA4()
{
  result = qword_280282EA8;
  if (!qword_280282EA8)
  {
    type metadata accessor for RNNoNewNotificationsActionGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280282EA8);
  }

  return result;
}

uint64_t type metadata accessor for FollowupNotificationsCATPatternsExecutor(uint64_t a1)
{
  result = qword_280282EB8;
  if (!qword_280282EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2684F3BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2685688F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282EC8, &unk_26856D010);
  MEMORY[0x28223BE20](v9 - 8);
  sub_2684F3D80(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_268568700();
  (*(v6 + 8))(a2, v5);
  sub_2684F3DF0(a1);
  return v11;
}

uint64_t sub_2684F3D48()
{
  v0 = sub_268568720();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_2684F3D80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282EC8, &unk_26856D010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684F3DF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282EC8, &unk_26856D010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2684F3E58()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for NotificationMetricsSummary(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}