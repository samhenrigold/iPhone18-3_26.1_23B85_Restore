id sub_2688D9A20(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  result = sub_2688EFD0C();
  v6 = result;
  for (i = 0; ; ++i)
  {
    if (v6 == i)
    {
      return v4;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v14 = OUTLINED_FUNCTION_230();
      result = MEMORY[0x26D625BD0](v14);
    }

    else
    {
      if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      result = *(a3 + 8 * i + 32);
    }

    v8 = result;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = a1();
    v11 = v10;
    sub_268B35754();
    v12 = v8;
    v13 = sub_26894E030(v12);
    (*(v11 + 16))(v13, MEMORY[0x277D5E3B0], *v9, v11);

    MEMORY[0x26D6256C0]();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_268B37D14();
    }

    OUTLINED_FUNCTION_115();
    result = sub_268B37D44();
    v4 = v16;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_2688D9BB0()
{
  OUTLINED_FUNCTION_26();
  v73 = v1;
  v74 = v2;
  v71 = v3;
  v72 = v4;
  v70 = v5;
  v7 = v6;
  v9 = v8;
  v10 = sub_268B35664();
  OUTLINED_FUNCTION_1();
  v77 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v60 = v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  v66 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_78();
  v78 = v17;
  OUTLINED_FUNCTION_9();
  v18 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_3();
  v68 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v18, qword_2802CDA10);
  v61 = *(v20 + 16);
  v63 = v24;
  v61(v0);

  v79 = v20;
  v25 = sub_268B37A34();
  v26 = sub_268B37F04();

  v75 = v9;
  v76 = v18;
  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_238();
    v80[0] = OUTLINED_FUNCTION_237();
    *v27 = 136315394;
    v28 = sub_268B34DE4();
    v29 = MEMORY[0x26D6256F0](v9, v28);
    v31 = sub_26892CDB8(v29, v30, v80);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2080;
    v32 = sub_268B358E4();
    v33 = MEMORY[0x26D6256F0](v7, v32);
    v35 = sub_26892CDB8(v33, v34, v80);

    *(v27 + 14) = v35;
    v18 = v76;
    _os_log_impl(&dword_2688BB000, v25, v26, "Making disambiguation context with hints: %s and task builders: %s", v27, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v36 = *(v79 + 8);
  v36(v0, v18);
  sub_268B35034();
  if (sub_2688EFD0C())
  {
    sub_2688DCB78();
    sub_2688DE21C(v7, v37, v38, v39, v40, v41, v42, v43, v36, v60, v61, v63, v66, v68, v70, v71, v72, v73, v74, v75);
    v62(v69, v64, v18);
    v44 = *(v77 + 16);
    v45 = OUTLINED_FUNCTION_179();
    (v44)(v45);
    swift_unknownObjectRetain();
    v46 = sub_268B37A34();
    v47 = sub_268B37F04();
    swift_unknownObjectRelease();
    v65 = v47;
    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_238();
      v80[0] = OUTLINED_FUNCTION_237();
      *v48 = 136315394;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5750, &unk_268B3BDA0);
      v49 = sub_268B37C24();
      v50 = v10;
      v52 = sub_26892CDB8(v49, v51, v80);

      *(v48 + 4) = v52;
      *(v48 + 12) = 2080;
      OUTLINED_FUNCTION_268();
      v44();
      v53 = sub_268B37C24();
      v55 = v54;
      v56 = *(v77 + 8);
      v56(v67, v50);
      v10 = sub_26892CDB8(v53, v55, v80);
      v57 = v44;

      *(v48 + 14) = v10;
      _os_log_impl(&dword_2688BB000, v46, v65, "Including SystemGaveOptions in context update: %s, NLUSysteamDialogAct: %s", v48, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();

      v59(v69, v76);
    }

    else
    {

      v56 = *(v77 + 8);
      v57 = v44;
      v56(v67, v10);
      v59(v69, v76);
      v50 = v10;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62C0, &unk_268B3BD90);
    v58 = OUTLINED_FUNCTION_300();
    *(v58 + 16) = xmmword_268B3BBC0;
    (v57)(v58 + v10, v78, v50);
    sub_268B34FB4();
    swift_unknownObjectRelease();
    v56(v78, v50);
  }

  sub_268B34FF4();
  sub_268B34FD4();

  sub_268B34FE4();

  sub_268B35014();

  sub_268B35004();

  sub_268B34FA4();
  sub_268B34FC4();
  OUTLINED_FUNCTION_23();
}

void sub_2688DA200()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v58 = v3;
  OUTLINED_FUNCTION_232();
  v4 = sub_268B35664();
  OUTLINED_FUNCTION_1();
  v55 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3();
  v46 = v7;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v51 = v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_78();
  v56 = v11;
  OUTLINED_FUNCTION_9();
  v12 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v57 = v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v12, qword_2802CDA10);
  v47 = *(v14 + 16);
  v49 = v18;
  v47(v0);

  v19 = sub_268B37A34();
  v20 = sub_268B37F04();

  v54 = v14;
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_238();
    v59 = OUTLINED_FUNCTION_237();
    *v21 = 136315394;
    v22 = sub_268B34DE4();
    v23 = MEMORY[0x26D6256F0](v58, v22);
    v52 = v12;
    v25 = sub_26892CDB8(v23, v24, &v59);

    *(v21 + 4) = v25;
    *(v21 + 12) = 2080;
    v26 = sub_268B358E4();
    v27 = MEMORY[0x26D6256F0](v2, v26);
    v29 = sub_26892CDB8(v27, v28, &v59);

    *(v21 + 14) = v29;
    v12 = v52;
    _os_log_impl(&dword_2688BB000, v19, v20, "Making disambiguation context with hints: %s and task builders: %s", v21, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    v14 = v54;
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v30 = *(v14 + 8);
  v30(v0, v12);
  sub_268B35034();
  if (sub_2688EFD0C())
  {
    sub_2688DD628(v2);
    sub_2688DEBF4(v2, v56);
    (v47)(v57, v49, v12);
    v50 = *(v55 + 16);
    v50(v51, v56, v4);
    swift_unknownObjectRetain();
    v31 = sub_268B37A34();
    v32 = sub_268B37F04();
    swift_unknownObjectRelease();
    v48 = v32;
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_238();
      v45 = OUTLINED_FUNCTION_237();
      v59 = v45;
      *v33 = 136315394;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5750, &unk_268B3BDA0);
      v34 = sub_268B37C24();
      v53 = v12;
      v35 = v4;
      v37 = sub_26892CDB8(v34, v36, &v59);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      v50(v46, v51, v4);
      sub_268B37C24();
      v38 = OUTLINED_FUNCTION_289();
      v51(v38, v4);
      v39 = OUTLINED_FUNCTION_100();
      v42 = sub_26892CDB8(v39, v40, v41);

      *(v33 + 14) = v42;
      _os_log_impl(&dword_2688BB000, v31, v48, "Including SystemGaveOptions in context update: %s, NLUSysteamDialogAct: %s", v33, 0x16u);
      v4 = v45;
      swift_arrayDestroy();
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();

      v30(v57, v53);
    }

    else
    {

      v43 = OUTLINED_FUNCTION_289();
      v51(v43, v4);
      v30(v57, v12);
      v35 = v4;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62C0, &unk_268B3BD90);
    v44 = OUTLINED_FUNCTION_300();
    *(v44 + 16) = xmmword_268B3BBC0;
    v50((v44 + v4), v56, v35);
    sub_268B34FB4();
    swift_unknownObjectRelease();
    v51(v56, v35);
  }

  OUTLINED_FUNCTION_189();
  sub_268B34FF4();
  sub_268B34FD4();

  sub_268B34FE4();

  sub_268B35014();

  sub_268B35004();

  sub_268B34FA4();
  sub_268B34FC4();
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688DA838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = 0xD000000000000013;
  v7[4] = 0x8000000268B56E90;
  v7[5] = 0xD000000000000025;
  v7[6] = 0x8000000268B56EB0;
  v7[7] = 0xD000000000000017;
  v7[8] = 0x8000000268B56F00;
  v7[9] = 0xD000000000000029;
  v7[10] = 0x8000000268B56710;
  v7[11] = v6;
  v7[12] = 0xD00000000000001ELL;
  v7[13] = 0x8000000268B56F20;
  v7[14] = 0xD000000000000030;
  v7[15] = 0x8000000268B56740;
  v7[16] = 0xD000000000000012;
  v7[17] = 0x8000000268B56EE0;
  v7[18] = 0xD000000000000024;
  v7[19] = 0x8000000268B566E0;
  v7[20] = a3;
  v7[21] = a4;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2688E19C0;
  *(v8 + 24) = v7;

  sub_268997240("encodeRouteIds", 14, 2, 0);
}

uint64_t sub_2688DAA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = 0xD000000000000013;
  v7[4] = 0x8000000268B56E90;
  v7[5] = 0xD000000000000025;
  v7[6] = 0x8000000268B56EB0;
  v7[7] = 0xD000000000000017;
  v7[8] = 0x8000000268B56F00;
  v7[9] = 0xD000000000000029;
  v7[10] = 0x8000000268B56710;
  v7[11] = v6;
  v7[12] = 0xD00000000000001ELL;
  v7[13] = 0x8000000268B56F20;
  v7[14] = 0xD000000000000030;
  v7[15] = 0x8000000268B56740;
  v7[16] = 0xD000000000000012;
  v7[17] = 0x8000000268B56EE0;
  v7[18] = 0xD000000000000024;
  v7[19] = 0x8000000268B566E0;
  v7[20] = a3;
  v7[21] = a4;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2688EA324;
  *(v8 + 24) = v7;

  sub_268997240("encodeRouteIds", 14, 2, 0);
}

uint64_t sub_2688DAC90()
{
  type metadata accessor for MediaIntent(0);
  OUTLINED_FUNCTION_242();
  return OUTLINED_FUNCTION_123();
}

uint64_t sub_2688DACC0()
{
  type metadata accessor for SettingsIntent(0);
  OUTLINED_FUNCTION_242();
  return OUTLINED_FUNCTION_123();
}

uint64_t sub_2688DACF4()
{
  type metadata accessor for MediaPlayerIntent(0);
  OUTLINED_FUNCTION_242();
  return OUTLINED_FUNCTION_123();
}

uint64_t sub_2688DAD2C()
{
  v0 = OUTLINED_FUNCTION_232();
  type metadata accessor for MediaIntent(v0);
  return OUTLINED_FUNCTION_323();
}

uint64_t sub_2688DAD90()
{
  if (qword_2802A4DD0 != -1)
  {
    OUTLINED_FUNCTION_53(&qword_2802A4DD0);
  }

  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_114();
  sub_2688EA07C(v0, 255, v1);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_2688DAE28()
{
  v0 = OUTLINED_FUNCTION_232();
  type metadata accessor for MediaPlayerIntent(v0);
  return OUTLINED_FUNCTION_323();
}

uint64_t sub_2688DAE64()
{
  if (qword_2802A4DD0 != -1)
  {
    OUTLINED_FUNCTION_53(&qword_2802A4DD0);
  }

  type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_113();
  sub_2688EA07C(v0, 255, v1);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_2688DAEFC()
{
  if (qword_2802A4DD0 != -1)
  {
    OUTLINED_FUNCTION_53(&qword_2802A4DD0);
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_112();
  sub_2688EA07C(v0, 255, v1);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_2688DB014()
{
  v0 = OUTLINED_FUNCTION_232();
  type metadata accessor for SettingsIntent(v0);
  return OUTLINED_FUNCTION_323();
}

uint64_t sub_2688DB050()
{
  if (qword_2802A4DD8 != -1)
  {
    OUTLINED_FUNCTION_52(&qword_2802A4DD8);
  }

  type metadata accessor for MediaNLv3Intent(0);
  OUTLINED_FUNCTION_114();
  sub_2688EA07C(v0, 255, v1);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_2688DB0E8()
{
  v0 = OUTLINED_FUNCTION_232();
  type metadata accessor for MediaPlayerIntent(v0);
  return OUTLINED_FUNCTION_323();
}

uint64_t sub_2688DB124()
{
  if (qword_2802A4DD8 != -1)
  {
    OUTLINED_FUNCTION_52(&qword_2802A4DD8);
  }

  type metadata accessor for SettingNLv3Intent(0);
  OUTLINED_FUNCTION_113();
  sub_2688EA07C(v0, 255, v1);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

uint64_t sub_2688DB1BC()
{
  if (qword_2802A4DD8 != -1)
  {
    OUTLINED_FUNCTION_52(&qword_2802A4DD8);
  }

  type metadata accessor for MediaPlayerNLv3Intent(0);
  OUTLINED_FUNCTION_112();
  sub_2688EA07C(v0, 255, v1);
  OUTLINED_FUNCTION_40();

  return sub_268B35C64();
}

void sub_2688DB254(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_268B37A54();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v48 = v12;
  v13 = sub_2688EFD0C();
  v49 = v8;
  if (v13)
  {
    v14 = v13;
    v51[0] = MEMORY[0x277D84F90];
    v15 = v13 & ~(v13 >> 63);

    sub_26894470C(0, v15, 0, v16, v17, v18, v19);
    if (v14 < 0)
    {
      __break(1u);
      return;
    }

    v45 = v11;
    v46 = v9;
    v47 = a4;
    v20 = 0;
    v21 = v51[0];
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x26D625BD0](v20, a3);
      }

      else
      {
        v22 = *(a3 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = sub_26892D418(v22);
      v26 = v25;

      if (v26)
      {
        v31 = v24;
      }

      else
      {
        v31 = 0;
      }

      if (!v26)
      {
        v26 = 0xE000000000000000;
      }

      v51[0] = v21;
      v33 = *(v21 + 16);
      v32 = *(v21 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_26894470C(v32 > 1, v33 + 1, 1, v27, v28, v29, v30);
        v21 = v51[0];
      }

      ++v20;
      *(v21 + 16) = v33 + 1;
      v34 = v21 + 16 * v33;
      *(v34 + 32) = v31;
      *(v34 + 40) = v26;
    }

    while (v14 != v20);
    v9 = v46;
    a4 = v47;
    v8 = v49;
    v11 = v45;
  }

  else
  {
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v35 = __swift_project_value_buffer(v8, qword_2802CDA10);
  (*(v9 + 16))(v11, v35, v8);
  sub_2688E4594(a4, v51);
  v36 = sub_268B37A34();
  v37 = sub_268B37EC4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v50 = v39;
    *v38 = 136315138;
    __swift_project_boxed_opaque_existential_1(v51, v51[3]);
    swift_getDynamicType();
    v40 = sub_268B385B4();
    v42 = v41;
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    v43 = sub_26892CDB8(v40, v42, &v50);

    *(v38 + 4) = v43;
    _os_log_impl(&dword_2688BB000, v36, v37, "Encoding routeIds Using encryption provider: %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    MEMORY[0x26D6266E0](v39, -1, -1);
    MEMORY[0x26D6266E0](v38, -1, -1);

    (*(v9 + 8))(v11, v49);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    (*(v9 + 8))(v11, v8);
  }

  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_268B375A4();
}

void sub_2688DB634()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_191();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_151();
  sub_2688E451C();
  v13 = sub_268B37DB4();
  v14 = OUTLINED_FUNCTION_162();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_2688C058C(v0, &unk_2802A6460, &qword_268B3BE08);
  }

  else
  {
    sub_268B37DA4();
    OUTLINED_FUNCTION_70();
    v17 = OUTLINED_FUNCTION_190();
    v18(v17);
  }

  v19 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v19)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_2688C058C(v6, &unk_2802A6460, &qword_268B3BE08);
    v21 = swift_allocObject();
    *(v21 + 16) = v4;
    *(v21 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_268B37D84();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_268B37C44();
  v20 = swift_allocObject();
  *(v20 + 16) = v4;
  *(v20 + 24) = v2;

  swift_task_create();

  sub_2688C058C(v6, &unk_2802A6460, &qword_268B3BE08);

LABEL_9:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688DB8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  return MEMORY[0x2822009F8](sub_2688DB910, 0, 0);
}

uint64_t sub_2688DB910()
{
  OUTLINED_FUNCTION_158();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *(v1 + 16) = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57E0, &qword_268B3BE58);
  *v2 = v0;
  v2[1] = sub_2688DB9EC;

  return MEMORY[0x2821BBDF0](v0 + 16, &unk_268B3BE50, v1, v3);
}

uint64_t sub_2688DB9EC()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v1 = *v0;
  OUTLINED_FUNCTION_89();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2688DBAF4, 0, 0);
}

uint64_t sub_2688DBAF4()
{
  OUTLINED_FUNCTION_158();
  (*(v0 + 80))(v0 + 16);
  sub_2688C058C(v0 + 16, &unk_2802A57C0, &qword_268B3BE00);
  OUTLINED_FUNCTION_222();

  return v1();
}

uint64_t sub_2688DBB6C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2688EA0F0;

  return v6(a1);
}

uint64_t sub_2688DBC64(void *a1)
{
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v2 = sub_268B38054();
  [a1 setDisambiguated_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268B3BBA0;
  *(v3 + 32) = a1;
  v7 = off_287959E70;
  v4 = type metadata accessor for ResumeMediaIntent();
  v5 = a1;

  return (v7)(v3, v4, &off_287959E50);
}

uint64_t sub_2688DBD60(void *a1)
{
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v2 = sub_268B38054();
  [a1 setDisambiguated_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268B3BBA0;
  *(v3 + 32) = a1;
  v7 = off_287959E18;
  v4 = type metadata accessor for PauseMediaIntent();
  v5 = a1;

  return (v7)(v3, v4, &off_287959DF8);
}

uint64_t sub_2688DBE5C(void *a1)
{
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v2 = sub_268B38054();
  [a1 setDisambiguated_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268B3BBA0;
  *(v3 + 32) = a1;
  v7 = off_287959F20;
  v4 = type metadata accessor for SkipTimeIntent();
  v5 = a1;

  return (v7)(v3, v4, &off_287959F00);
}

uint64_t sub_2688DBF58(void *a1)
{
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v2 = sub_268B38054();
  [a1 setDisambiguated_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268B3BBA0;
  *(v3 + 32) = a1;
  v7 = off_287959F78;
  v4 = type metadata accessor for SkipContentIntent();
  v5 = a1;

  return (v7)(v3, v4, &off_287959F58);
}

uint64_t sub_2688DC054(void *a1)
{
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v2 = sub_268B38054();
  [a1 setDisambiguated_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268B3BBA0;
  *(v3 + 32) = a1;
  v7 = off_287959FD0;
  v4 = type metadata accessor for SetRepeatStateIntent();
  v5 = a1;

  return (v7)(v3, v4, &off_287959FB0);
}

uint64_t sub_2688DC150(void *a1)
{
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v2 = sub_268B38054();
  [a1 setDisambiguated_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268B3BBA0;
  *(v3 + 32) = a1;
  v7 = off_28795A028;
  v4 = type metadata accessor for SetShuffleStateIntent();
  v5 = a1;

  return (v7)(v3, v4, &off_28795A008);
}

uint64_t sub_2688DC24C(void *a1)
{
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v2 = sub_268B38054();
  [a1 setDisambiguated_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_268B3BBA0;
  *(v3 + 32) = a1;
  v7 = off_287959EC8;
  v4 = type metadata accessor for SeekTimeIntent();
  v5 = a1;

  return (v7)(v3, v4, &off_287959EA8);
}

id sub_2688DC348(uint64_t a1)
{
  v2 = v1;
  sub_2688EA03C(0, &qword_2802A5920, 0x277CCABB0);
  v4 = sub_268B38054();
  v5 = OUTLINED_FUNCTION_216();
  [v5 v6];

  return [v2 setDevice_];
}

void sub_2688DC3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t), uint64_t a23, void (*a24)(uint64_t, uint64_t), uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_197();
  v103[3] = v28;
  v103[1] = v29;
  v103[2] = v30;
  v103[0] = v31;
  v115 = v32;
  v34 = v33;
  v109 = v35;
  sub_268B34DE4();
  OUTLINED_FUNCTION_1();
  v113 = v37;
  v114 = v36;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  v106 = v38;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18();
  v105 = v40;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18();
  v104 = v42;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_78();
  v107 = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5798, &qword_268B3BDE0);
  v46 = OUTLINED_FUNCTION_22(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_201();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_132();
  MEMORY[0x28223BE20](v48);
  v50 = v103 - v49;
  v51 = sub_268B34EA4();
  OUTLINED_FUNCTION_1();
  v53 = v52;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_78();
  v116 = v57;
  sub_268B34DD4();
  v58 = OUTLINED_FUNCTION_257();
  if (__swift_getEnumTagSinglePayload(v58, v59, v51) == 1)
  {
    sub_268B34DB4();
    v60 = OUTLINED_FUNCTION_257();
    if (__swift_getEnumTagSinglePayload(v60, v61, v51) != 1)
    {
      sub_2688C058C(v26, &qword_2802A5798, &qword_268B3BDE0);
    }
  }

  else
  {
    (*(v53 + 32))(v50, v26, v51);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v51);
  }

  if (__swift_getEnumTagSinglePayload(v50, 1, v51) != 1)
  {
    v111 = a25;
    v112 = a26;
    v110 = a23;
    (*(v53 + 32))(v116, v50, v51);
    v65 = v109;
    v66 = *v109;
    v67 = *v109 < *(v34 + 16);
    v108 = a24;
    if (v67)
    {
      if (v66 < 0)
      {
        goto LABEL_35;
      }

      sub_268B34E94();
      OUTLINED_FUNCTION_118();
      OUTLINED_FUNCTION_51();
      sub_268B34E64();

      OUTLINED_FUNCTION_278();
      sub_268B34E74();
      OUTLINED_FUNCTION_126();
      OUTLINED_FUNCTION_51();
      sub_268B34E84();
      v68 = *(v53 + 16);
      v68(v27, v116, v51);
      v69 = OUTLINED_FUNCTION_54();
      (v68)(v69);
      OUTLINED_FUNCTION_324();

      v70 = OUTLINED_FUNCTION_97();
      v71(v70);
      sub_268987924();
      v76 = v72;
      v50 = *(v72 + 16);
      OUTLINED_FUNCTION_272();
      if (v73)
      {
        goto LABEL_36;
      }

      goto LABEL_10;
    }

    v76 = MEMORY[0x277D84F90];
    while (1)
    {
      if (__OFSUB__(v115, 3))
      {
        __break(1u);
      }

      else
      {
        v77 = *v65;
        if (*v65 == v115 - 3)
        {
          sub_268B34E94();
          OUTLINED_FUNCTION_118();
          OUTLINED_FUNCTION_51();
          sub_268B34E64();

          sub_268B34E74();
          OUTLINED_FUNCTION_126();
          OUTLINED_FUNCTION_51();
          sub_268B34E84();
          v78 = OUTLINED_FUNCTION_90();
          (v50)(v78);
          v79 = OUTLINED_FUNCTION_54();
          (v50)(v79);
          OUTLINED_FUNCTION_324();
          v80 = OUTLINED_FUNCTION_97();
          v81(v80);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_88();
            sub_268987924();
            v76 = v97;
          }

          v50 = *(v76 + 16);
          OUTLINED_FUNCTION_272();
          if (v73)
          {
            OUTLINED_FUNCTION_111();
            sub_268987924();
            v76 = v98;
          }

          v82 = OUTLINED_FUNCTION_46();
          v83(v82, v104);
          v77 = *v65;
        }

        if (v77 == v115 - 2)
        {
          sub_268B34E94();
          OUTLINED_FUNCTION_118();
          OUTLINED_FUNCTION_51();
          sub_268B34E64();

          sub_268B34E74();
          OUTLINED_FUNCTION_126();
          OUTLINED_FUNCTION_51();
          sub_268B34E84();
          v84 = OUTLINED_FUNCTION_90();
          (v50)(v84);
          v85 = OUTLINED_FUNCTION_54();
          (v50)(v85);
          OUTLINED_FUNCTION_324();
          v86 = OUTLINED_FUNCTION_97();
          v87(v86);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_88();
            sub_268987924();
            v76 = v99;
          }

          v50 = *(v76 + 16);
          OUTLINED_FUNCTION_272();
          if (v73)
          {
            OUTLINED_FUNCTION_111();
            sub_268987924();
            v76 = v100;
          }

          v88 = OUTLINED_FUNCTION_46();
          v89(v88, v105);
          v77 = *v65;
        }

        if (v77 == v115 - 1)
        {
          sub_268B34E94();
          OUTLINED_FUNCTION_118();
          OUTLINED_FUNCTION_51();
          sub_268B34E64();

          OUTLINED_FUNCTION_122();
          sub_268B34E74();
          OUTLINED_FUNCTION_126();
          OUTLINED_FUNCTION_51();
          sub_268B34E84();
          v90 = OUTLINED_FUNCTION_90();
          a22(v90);
          v91 = OUTLINED_FUNCTION_54();
          a22(v91);
          OUTLINED_FUNCTION_324();
          v93 = *(v53 + 8);
          v53 += 8;
          v92 = v93;
          v94 = OUTLINED_FUNCTION_97();
          (v93)(v94);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_88();
            sub_268987924();
            v76 = v101;
          }

          v50 = *(v76 + 16);
          v65 = v109;
          if (v50 >= *(v76 + 24) >> 1)
          {
            OUTLINED_FUNCTION_111();
            sub_268987924();
            v76 = v102;
          }

          v92(v116, v51);
          *(v76 + 16) = v50 + 1;
          (*(v113 + 32))(v76 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v50, v106, v114);
        }

        else
        {
          v95 = *(v53 + 8);
          v53 += 8;
          v95(v116, v51);
        }

        if (!__OFADD__(*v65, 1))
        {
          ++*v65;
          OUTLINED_FUNCTION_198();
          return;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      OUTLINED_FUNCTION_111();
      sub_268987924();
      v76 = v96;
LABEL_10:
      v74 = OUTLINED_FUNCTION_46();
      v75(v74, v107);
    }
  }

  sub_2688C058C(v50, &qword_2802A5798, &qword_268B3BDE0);
  sub_268B38284();
  __break(1u);
}

void sub_2688DCB78()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = sub_268B357A4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_98();
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v104 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_201();
  MEMORY[0x28223BE20](v14);
  v16 = &v89 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_74();
  v110 = v19;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5770, &unk_268B3BDC0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v109 = v21;
  OUTLINED_FUNCTION_8();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v89 - v24;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_79(v26);
  v27 = MEMORY[0x277D84F90];
  v115 = MEMORY[0x277D84F90];
  v100 = v3;
  v28 = sub_2688EFD0C();
  v94 = v10;
  v93 = v16;
  if (v28)
  {
    v92 = v28 - 1;
    if (v28 < 1)
    {
      __break(1u);
      return;
    }

    v105 = v28;
    v108 = v25;
    v98 = v1;
    v91 = v0;
    v29 = 0;
    v107 = v100 & 0xC000000000000001;
    v96 = v100 + 32;
    v111 = (v10 + 8);
    v112 = (v10 + 16);
    v90 = v6 + 32;
    v95 = MEMORY[0x277D84F90];
    v89 = v6 + 8;
    *(&v30 + 1) = 3;
    v106 = xmmword_268B3BBA0;
    *&v30 = 136315138;
    v101 = v30;
    v103 = v8;
    v102 = v4;
    v31 = v99;
    do
    {
      v32 = v29;
      v33 = v104;
      while (1)
      {
        if (v107)
        {
          v34 = MEMORY[0x26D625BD0](v32, v100);
        }

        else
        {
          v34 = *(v96 + 8 * v32);
        }

        OUTLINED_FUNCTION_96();
        __swift_storeEnumTagSinglePayload(v35, v36, v37, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        OUTLINED_FUNCTION_220();
        v38 = swift_allocObject();
        *(v38 + 16) = v106;
        *(v38 + 32) = v34;
        sub_268B35BD4();
        v39 = v31;
        v40 = v110;
        OUTLINED_FUNCTION_96();
        __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
        v113 = v34;

        v45 = OUTLINED_FUNCTION_138();
        MEMORY[0x26D623520](v45);

        sub_2688C058C(v40, &unk_2802A62D0, &qword_268B3EDD0);
        v46 = v108;
        sub_268B36604();
        OUTLINED_FUNCTION_84();
        __swift_storeEnumTagSinglePayload(v47, v48, v49, v4);
        swift_beginAccess();
        sub_2688E1A30(v46, v39);
        v50 = v109;
        v31 = v39;
        swift_beginAccess();
        sub_2688E451C();
        v51 = OUTLINED_FUNCTION_162();
        OUTLINED_FUNCTION_135(v51, v52, v4);
        if (!v53)
        {
          break;
        }

        sub_2688C058C(v50, &qword_2802A5770, &unk_268B3BDC0);
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
        (*v112)(v33);
        v54 = sub_268B37A34();
        v55 = sub_268B37EE4();
        if (os_log_type_enabled(v54, v55))
        {
          OUTLINED_FUNCTION_68();
          v56 = swift_slowAlloc();
          OUTLINED_FUNCTION_69();
          v57 = swift_slowAlloc();
          v114[0] = v57;
          *v56 = v101;
          v58 = sub_268B38094();
          v60 = sub_26892CDB8(v58, v59, v114);

          *(v56 + 4) = v60;
          v4 = v102;
          _os_log_impl(&dword_2688BB000, v54, v55, "Unable to serialize protoGraph: %s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v57);
          v33 = v104;
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0](v61, v62);
          v8 = v103;
          OUTLINED_FUNCTION_55();
          MEMORY[0x26D6266E0](v63, v64);
        }

        else
        {
        }

        (*v111)(v33, v8);
        sub_2688C058C(v31, &qword_2802A5770, &unk_268B3BDC0);
        if (v105 == ++v32)
        {
          goto LABEL_22;
        }
      }

      OUTLINED_FUNCTION_146();
      v65 = v91;
      v66(v91, v50, v4);
      sub_2688EA03C(0, &qword_2802A62F0, 0x277D5F608);
      v67 = OUTLINED_FUNCTION_186();
      v68 = MEMORY[0x26D6259D0](v67);
      v69 = objc_allocWithZone(MEMORY[0x277D5F5E0]);
      v95 = [v69 initWithTask_];

      MEMORY[0x26D6256C0]();
      if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      v29 = v32 + 1;
      sub_268B37D44();

      OUTLINED_FUNCTION_146();
      v70(v65, v4);
      v95 = v115;
      sub_2688C058C(v31, &qword_2802A5770, &unk_268B3BDC0);
    }

    while (v92 != v32);
  }

  else
  {
    v95 = v27;
  }

LABEL_22:
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v8, qword_2802CDA10);
  OUTLINED_FUNCTION_152();
  v71(v93);
  v72 = v95;

  v73 = sub_268B37A34();
  v74 = sub_268B37F04();
  if (OUTLINED_FUNCTION_196(v74))
  {
    OUTLINED_FUNCTION_68();
    v75 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v114[0] = swift_slowAlloc();
    *v75 = 136315138;
    sub_2688EA03C(0, &unk_2802A5780, 0x277D5F5E0);
    OUTLINED_FUNCTION_246();
    v78 = sub_26892CDB8(v76, v77, v114);

    *(v75 + 4) = v78;

    OUTLINED_FUNCTION_247();
    OUTLINED_FUNCTION_204(v79, v80, v81, v82);
    OUTLINED_FUNCTION_77();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    v83 = OUTLINED_FUNCTION_134();
    v84(v83);
  }

  else
  {

    v85 = OUTLINED_FUNCTION_134();
    v86(v85);
  }

  if (v72 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5778, &unk_268B3BDD0);
    OUTLINED_FUNCTION_148();
    sub_268B38294();
  }

  else
  {
    sub_268B38454();
  }

  v87 = objc_allocWithZone(MEMORY[0x277D5F590]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5778, &unk_268B3BDD0);
  OUTLINED_FUNCTION_148();
  v88 = sub_268B37CE4();

  [v87 initWithChoices_];

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688DD628(uint64_t a1)
{
  v2 = sub_268B357A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v68 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v64 - v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5770, &unk_268B3BDC0);
  v7 = MEMORY[0x28223BE20](v73);
  v83 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v64 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v64 - v12;
  v14 = sub_268B37A54();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v85 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v74 = &v64 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v64 - v20;
  v22 = MEMORY[0x277D84F90];
  v91 = MEMORY[0x277D84F90];
  v75 = a1;
  result = sub_2688EFD0C();
  v70 = v15;
  v69 = v21;
  if (result)
  {
    v67 = result - 1;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v24 = result;
    v25 = v15;
    v26 = 0;
    v81 = v75 & 0xC000000000000001;
    v72 = v75 + 32;
    v86 = (v25 + 8);
    v87 = (v25 + 16);
    v66 = (v3 + 32);
    v71 = MEMORY[0x277D84F90];
    v65 = (v3 + 8);
    *(&v27 + 1) = 3;
    v80 = xmmword_268B3BBA0;
    *&v27 = 136315138;
    v76 = v27;
    v79 = v14;
    v78 = v2;
    v82 = v11;
    v88 = v13;
    v77 = result;
    do
    {
      v28 = v26;
      while (1)
      {
        if (v81)
        {
          v29 = MEMORY[0x26D625BD0](v28, v75);
        }

        else
        {
          v29 = *(v72 + 8 * v28);
        }

        __swift_storeEnumTagSinglePayload(v13, 1, 1, v2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        v30 = swift_allocObject();
        *(v30 + 16) = v80;
        *(v30 + 32) = v29;
        v31 = sub_268B35BD4();
        v32 = v13;
        v33 = v84;
        __swift_storeEnumTagSinglePayload(v84, 1, 1, v31);
        v89 = v29;

        MEMORY[0x26D623520](v30, v33);

        sub_2688C058C(v33, &unk_2802A62D0, &qword_268B3EDD0);
        sub_268B36604();
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v2);
        swift_beginAccess();
        sub_2688E1A30(v11, v32);
        v34 = v83;
        swift_beginAccess();
        sub_2688E451C();
        if (__swift_getEnumTagSinglePayload(v34, 1, v2) != 1)
        {
          break;
        }

        sub_2688C058C(v34, &qword_2802A5770, &unk_268B3BDC0);
        if (qword_2802A4F30 != -1)
        {
          swift_once();
        }

        v35 = __swift_project_value_buffer(v14, qword_2802CDA10);
        v36 = v85;
        (*v87)(v85, v35, v14);
        v37 = sub_268B37A34();
        v38 = sub_268B37EE4();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v90 = v40;
          *v39 = v76;
          v41 = v88;
          v42 = sub_268B38094();
          v44 = sub_26892CDB8(v42, v43, &v90);

          *(v39 + 4) = v44;
          v2 = v78;
          v45 = v38;
          v13 = v41;
          v24 = v77;
          v46 = v85;
          _os_log_impl(&dword_2688BB000, v37, v45, "Unable to serialize protoGraph: %s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v40);
          MEMORY[0x26D6266E0](v40, -1, -1);
          v47 = v39;
          v14 = v79;
          MEMORY[0x26D6266E0](v47, -1, -1);

          (*v86)(v46, v14);
          v48 = v13;
        }

        else
        {

          (*v86)(v36, v14);
          v13 = v88;
          v48 = v88;
        }

        sub_2688C058C(v48, &qword_2802A5770, &unk_268B3BDC0);
        ++v28;
        v11 = v82;
        if (v24 == v28)
        {
          goto LABEL_21;
        }
      }

      v49 = v68;
      (*v66)(v68, v34, v2);
      sub_2688EA03C(0, &qword_2802A62F0, 0x277D5F608);
      v50 = MEMORY[0x26D6259D0](v49);
      v71 = [objc_allocWithZone(MEMORY[0x277D5F5E0]) initWithTask_];

      MEMORY[0x26D6256C0]();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      v26 = v28 + 1;
      sub_268B37D44();

      (*v65)(v49, v2);
      v71 = v91;
      v13 = v88;
      sub_2688C058C(v88, &qword_2802A5770, &unk_268B3BDC0);
      v11 = v82;
    }

    while (v67 != v28);
  }

  else
  {
    v71 = v22;
  }

LABEL_21:
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v51 = __swift_project_value_buffer(v14, qword_2802CDA10);
  v52 = v70;
  v53 = v69;
  (*(v70 + 16))(v69, v51, v14);
  v54 = v71;

  v55 = sub_268B37A34();
  v56 = sub_268B37F04();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v90 = v58;
    *v57 = 136315138;
    v59 = sub_2688EA03C(0, &unk_2802A5780, 0x277D5F5E0);
    v60 = MEMORY[0x26D6256F0](v54, v59);
    v62 = sub_26892CDB8(v60, v61, &v90);

    *(v57 + 4) = v62;
    v54 = v71;

    _os_log_impl(&dword_2688BB000, v55, v56, "uso disambiguate among: %s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v58);
    MEMORY[0x26D6266E0](v58, -1, -1);
    MEMORY[0x26D6266E0](v57, -1, -1);

    (*(v52 + 8))(v53, v14);
  }

  else
  {

    (*(v52 + 8))(v53, v14);
  }

  if (v54 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5778, &unk_268B3BDD0);
    v63 = sub_268B38294();
  }

  else
  {
    sub_268B38454();
    v63 = v54;
  }

  sub_2688EA03C(0, &qword_2802A5A58, 0x277D5F590);
  return sub_2688DF798(v63);
}

void sub_2688DE21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  v23 = v22;
  v25 = v24;
  v26 = sub_268B35694();
  OUTLINED_FUNCTION_1();
  v130 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v30);
  v155 = sub_268B35614();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  v144 = v34;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_78();
  v154 = v36;
  OUTLINED_FUNCTION_9();
  v156 = sub_268B355B4();
  OUTLINED_FUNCTION_1();
  v146 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_3();
  v153 = v39;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_78();
  v152 = v41;
  OUTLINED_FUNCTION_9();
  v159 = sub_268B35504();
  OUTLINED_FUNCTION_1();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_3();
  v143 = v45;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_78();
  v151 = v47;
  OUTLINED_FUNCTION_9();
  v127 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v126[2] = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v50);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  OUTLINED_FUNCTION_22(v51);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v52);
  v54 = v126 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5760, &unk_268B3BDB0);
  v56 = OUTLINED_FUNCTION_22(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_132();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_295();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_78();
  v145 = v59;
  v157 = v23;
  v60 = sub_2688EFD0C();
  v132 = v26;
  v131 = v25;
  if (v60)
  {
    if (v60 < 1)
    {
      __break(1u);
      return;
    }

    v61 = 0;
    v62 = 0;
    v149 = v157 & 0xC000000000000001;
    v140 = v43 + 32;
    v139 = v43 + 16;
    v138 = v32 + 16;
    v137 = v146 + 16;
    v136 = v32 + 8;
    v135 = v146 + 8;
    v134 = v43 + 8;
    v133 = v146 + 32;
    v63 = MEMORY[0x277D84F90];
    v148 = xmmword_268B3BBA0;
    v64 = v145;
    v142 = v54;
    v141 = v20;
    v150 = v60;
    do
    {
      v158 = v63;
      if (v149)
      {
        v65 = MEMORY[0x26D625BD0](v61, v157);
      }

      else
      {
        v65 = *(v157 + 8 * v61 + 32);
      }

      OUTLINED_FUNCTION_96();
      __swift_storeEnumTagSinglePayload(v66, v67, v68, v159);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v69 = swift_allocObject();
      *(v69 + 16) = v148;
      *(v69 + 32) = v65;
      sub_268B35BD4();
      OUTLINED_FUNCTION_96();
      __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);

      v74 = OUTLINED_FUNCTION_103();
      MEMORY[0x26D623520](v74);

      sub_2688C058C(v54, &unk_2802A62D0, &qword_268B3EDD0);
      sub_268B35BE4();
      v75 = sub_268B35C44();
      OUTLINED_FUNCTION_245(v75);
      OUTLINED_FUNCTION_229();
      sub_268B35C34();
      sub_268B356B4();
      if (v62)
      {

        v62 = 0;
      }

      else
      {
        sub_2688C058C(v64, &unk_2802A5760, &unk_268B3BDB0);

        OUTLINED_FUNCTION_84();
        __swift_storeEnumTagSinglePayload(v76, v77, v78, v159);
        sub_2688E43D8();
      }

      sub_2688E451C();
      v79 = OUTLINED_FUNCTION_257();
      OUTLINED_FUNCTION_135(v79, v80, v159);
      if (v81)
      {
        sub_2688C058C(v64, &unk_2802A5760, &unk_268B3BDB0);

        sub_2688C058C(v21, &unk_2802A5760, &unk_268B3BDB0);
        v63 = v158;
        v82 = v150;
      }

      else
      {
        OUTLINED_FUNCTION_146();
        v83 = v21;
        v84(v151, v21, v159);
        v85 = v152;
        sub_268B355A4();
        sub_268B35604();
        OUTLINED_FUNCTION_146();
        v86 = OUTLINED_FUNCTION_138();
        v87(v86);
        sub_268B355F4();
        OUTLINED_FUNCTION_146();
        v88 = OUTLINED_FUNCTION_228();
        v89(v88);
        sub_268B35594();
        OUTLINED_FUNCTION_146();
        v90(v153, v85, v156);
        v91 = v158;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v147 = 0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_88();
          sub_26898784C();
          v91 = v101;
        }

        v93 = *(v91 + 16);
        v94 = v91;
        OUTLINED_FUNCTION_272();
        if (v95)
        {
          sub_26898784C();
          v94 = v102;
        }

        OUTLINED_FUNCTION_146();
        v96(v154, v155);
        v97 = v146;
        v98 = v156;
        (*(v146 + 8))(v152, v156);
        OUTLINED_FUNCTION_146();
        v99(v151, v159);
        v64 = v145;
        sub_2688C058C(v145, &unk_2802A5760, &unk_268B3BDB0);
        *(v94 + 16) = v91;
        v63 = v94;
        OUTLINED_FUNCTION_258();
        (*(v97 + 32))(v94 + v100 + *(v97 + 72) * v93, v153, v98);
        v54 = v142;
        v82 = v150;
        v21 = v83;
        v62 = v147;
      }

      ++v61;
    }

    while (v82 != v61);
  }

  else
  {
    v63 = MEMORY[0x277D84F90];
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v127, qword_2802CDA10);
  OUTLINED_FUNCTION_152();
  v103(v126[1]);

  v104 = v63;
  v105 = sub_268B37A34();
  sub_268B37F04();
  v106 = OUTLINED_FUNCTION_71();
  if (os_log_type_enabled(v106, v107))
  {
    OUTLINED_FUNCTION_68();
    v108 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v109 = swift_slowAlloc();
    v160 = v109;
    *v108 = 136315138;
    v110 = MEMORY[0x26D6256F0](v104, v156);
    v112 = sub_26892CDB8(v110, v111, &v160);

    *(v108 + 4) = v112;

    OUTLINED_FUNCTION_169(&dword_2688BB000, v113, v114, "uso disambiguate among: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v109);
    v115 = OUTLINED_FUNCTION_34();
    MEMORY[0x26D6266E0](v115);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    v116 = OUTLINED_FUNCTION_134();
    v117(v116);
  }

  else
  {

    v118 = OUTLINED_FUNCTION_134();
    v119(v118);
  }

  v120 = v132;
  v121 = v130;
  v122 = v129;
  v123 = v128;
  sub_268B35684();
  sub_268B35674();
  sub_268B35654();
  (*(v121 + 16))(v122, v123, v120);
  sub_268B35624();
  v124 = OUTLINED_FUNCTION_230();
  v125(v124);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688DEBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = sub_268B35614();
  v4 = *(v104 - 8);
  v5 = MEMORY[0x28223BE20](v104);
  v91 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v103 = &v73 - v7;
  v105 = sub_268B355B4();
  v94 = *(v105 - 8);
  v8 = MEMORY[0x28223BE20](v105);
  v102 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v101 = &v73 - v10;
  v11 = sub_268B35504();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v90 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v100 = &v73 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62D0, &qword_268B3EDD0);
  MEMORY[0x28223BE20](v16 - 8);
  v99 = &v73 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A5760, &unk_268B3BDB0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v93 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v73 - v22;
  MEMORY[0x28223BE20](v21);
  v92 = &v73 - v24;
  v25 = sub_268B35694();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v74 = &v73 - v30;
  v81 = sub_268B37A54();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a1;
  result = sub_2688EFD0C();
  v78 = a2;
  v77 = v25;
  v76 = v26;
  v75 = v29;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v98 = v23;
    v33 = 0;
    v96 = v106 & 0xC000000000000001;
    v89 = (v12 + 32);
    v88 = (v12 + 16);
    v87 = (v4 + 16);
    v86 = (v94 + 16);
    v85 = (v4 + 8);
    v84 = v94 + 8;
    v83 = (v12 + 8);
    v82 = v94 + 32;
    v34 = MEMORY[0x277D84F90];
    v95 = xmmword_268B3BBA0;
    v35 = v92;
    v36 = v93;
    v97 = result;
    do
    {
      v107 = v34;
      if (v96)
      {
        v37 = MEMORY[0x26D625BD0](v33, v106);
      }

      else
      {
        v37 = *(v106 + 8 * v33 + 32);
      }

      __swift_storeEnumTagSinglePayload(v35, 1, 1, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v38 = v35;
      v39 = swift_allocObject();
      *(v39 + 16) = v95;
      *(v39 + 32) = v37;
      v40 = sub_268B35BD4();
      v41 = v99;
      __swift_storeEnumTagSinglePayload(v99, 1, 1, v40);

      MEMORY[0x26D623520](v39, v41);

      sub_2688C058C(v41, &unk_2802A62D0, &qword_268B3EDD0);
      sub_268B35BE4();
      sub_268B35C44();
      swift_allocObject();
      sub_268B35C34();
      v42 = v11;
      v43 = v98;
      sub_268B356B4();
      sub_2688C058C(v38, &unk_2802A5760, &unk_268B3BDB0);

      __swift_storeEnumTagSinglePayload(v43, 0, 1, v42);
      sub_2688E43D8();
      v35 = v38;
      sub_2688E451C();
      v11 = v42;
      if (__swift_getEnumTagSinglePayload(v36, 1, v42) == 1)
      {
        sub_2688C058C(v38, &unk_2802A5760, &unk_268B3BDB0);

        sub_2688C058C(v36, &unk_2802A5760, &unk_268B3BDB0);
        v34 = v107;
      }

      else
      {
        v44 = v100;
        (*v89)(v100, v36, v42);
        v45 = v101;
        sub_268B355A4();
        v46 = v103;
        sub_268B35604();
        (*v88)(v90, v44, v11);
        sub_268B355F4();
        (*v87)(v91, v46, v104);
        sub_268B35594();
        v47 = v45;
        v34 = v107;
        (*v86)(v102, v47, v105);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26898784C();
          v34 = v52;
        }

        v48 = *(v34 + 16);
        if (v48 >= *(v34 + 24) >> 1)
        {
          sub_26898784C();
          v34 = v53;
        }

        (*v85)(v103, v104);
        v49 = v94;
        v50 = v105;
        (*(v94 + 8))(v101, v105);
        (*v83)(v100, v11);
        v51 = v92;
        sub_2688C058C(v92, &unk_2802A5760, &unk_268B3BDB0);
        *(v34 + 16) = v48 + 1;
        v35 = v51;
        (*(v49 + 32))(v34 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48, v102, v50);
        v36 = v93;
      }

      ++v33;
    }

    while (v97 != v33);
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v54 = v81;
  v55 = __swift_project_value_buffer(v81, qword_2802CDA10);
  v56 = v80;
  v57 = v79;
  (*(v80 + 16))(v79, v55, v54);

  v58 = v34;
  v59 = sub_268B37A34();
  v60 = sub_268B37F04();
  v61 = os_log_type_enabled(v59, v60);
  v62 = v77;
  v63 = v76;
  v64 = v75;
  if (v61)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v108 = v66;
    *v65 = 136315138;
    v67 = MEMORY[0x26D6256F0](v58, v105);
    v69 = v64;
    v70 = v62;
    v71 = sub_26892CDB8(v67, v68, &v108);

    *(v65 + 4) = v71;
    v62 = v70;
    v64 = v69;

    _os_log_impl(&dword_2688BB000, v59, v60, "uso disambiguate among: %s", v65, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
    MEMORY[0x26D6266E0](v66, -1, -1);
    MEMORY[0x26D6266E0](v65, -1, -1);

    (*(v80 + 8))(v79, v81);
  }

  else
  {

    (*(v56 + 8))(v57, v54);
  }

  v72 = v74;
  sub_268B35684();
  sub_268B35674();
  sub_268B35654();
  (*(v63 + 16))(v64, v72, v62);
  sub_268B35624();
  return (*(v63 + 8))(v72, v62);
}

id sub_2688DF798(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5778, &unk_268B3BDD0);
  v2 = sub_268B37CE4();

  v3 = [v1 initWithChoices_];

  return v3;
}

uint64_t sub_2688DF81C()
{
  v0 = sub_268B37A54();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_2802CDA10);
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2688BB000, v5, v6, "Default metricsIsWHAIntent: nil", v7, 2u);
    MEMORY[0x26D6266E0](v7, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t sub_2688DF9AC()
{
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    v2 = swift_once();
  }

  OUTLINED_FUNCTION_61(v2, qword_2802CDA10);
  v3 = OUTLINED_FUNCTION_139();
  v4(v3);
  v5 = sub_268B37A34();
  v6 = sub_268B37ED4();
  if (os_log_type_enabled(v5, v6))
  {
    OUTLINED_FUNCTION_64();
    v7 = swift_slowAlloc();
    OUTLINED_FUNCTION_279(v7);
    _os_log_impl(&dword_2688BB000, v5, v6, "Default metricsMediaType: .unknown", v0, 2u);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v8 = OUTLINED_FUNCTION_103();
  v9(v8);
  return 0;
}

uint64_t sub_2688DFAFC(uint64_t (*a1)(void))
{
  v3 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_254();
  v7 = a1();
  v8 = v7;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    v7 = swift_once();
  }

  OUTLINED_FUNCTION_61(v7, qword_2802CDA10);
  (*(v5 + 16))(v1);
  v9 = sub_268B37A34();
  v10 = sub_268B37ED4();
  if (OUTLINED_FUNCTION_196(v10))
  {
    v11 = OUTLINED_FUNCTION_236();
    *v11 = 67109120;
    *(v11 + 4) = v8 & 1;
    _os_log_impl(&dword_2688BB000, v9, v10, "DeviceQueryableIntent metricsIsWHAIntent: %{BOOL}d", v11, 8u);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  (*(v5 + 8))(v1, v3);
  return v8 & 1;
}

uint64_t sub_2688DFC78()
{
  v1 = v0;
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_268B18100(v1);
  if (v6)
  {
    v7 = sub_2688EFD0C();
  }

  else
  {
    v7 = 0;
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v5, v8, v2);
  v9 = sub_268B37A34();
  v10 = sub_268B37ED4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    v19[1] = v7;
    v20 = v6 == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5878, &unk_268B3BE90);
    v13 = sub_268B37C24();
    v15 = sub_26892CDB8(v13, v14, &v21);
    v19[0] = v2;
    v16 = v7;
    v17 = v15;

    *(v11 + 4) = v17;
    v7 = v16;
    _os_log_impl(&dword_2688BB000, v9, v10, "DeviceSelectableIntent metricsEligibleDeviceCount: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x26D6266E0](v12, -1, -1);
    MEMORY[0x26D6266E0](v11, -1, -1);

    (*(v3 + 8))(v5, v19[0]);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return v7;
}

void sub_2688DFEF4()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  if (v3(v0))
  {
    sub_2688EFD0C();
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v4, qword_2802CDA10);
  v8 = OUTLINED_FUNCTION_139();
  v9(v8);
  v10 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_161();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_68();
    v22 = v4;
    v12 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5878, &unk_268B3BE90);
    v14 = sub_268B37C24();
    sub_26892CDB8(v14, v15, &v23);
    OUTLINED_FUNCTION_234();
    *(v12 + 4) = v1;
    OUTLINED_FUNCTION_170(&dword_2688BB000, v16, v17, "DeviceSelectableIntent metricsEligibleDeviceCount: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    v18 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v18);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    (*(v6 + 8))(v0, v22);
  }

  else
  {

    v19 = OUTLINED_FUNCTION_228();
    v21(v19, v20);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2688E0100()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  v5 = [v0 device];
  if (v5)
  {

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    v5 = swift_once();
  }

  OUTLINED_FUNCTION_61(v5, qword_2802CDA10);
  v7 = OUTLINED_FUNCTION_139();
  v8(v7);
  v9 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_161();
  if (os_log_type_enabled(v9, v10))
  {
    OUTLINED_FUNCTION_68();
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v11 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5878, &unk_268B3BE90);
    v13 = sub_268B37C24();
    sub_26892CDB8(v13, v14, &v21);
    OUTLINED_FUNCTION_234();
    *(v11 + 4) = v6;
    OUTLINED_FUNCTION_170(&dword_2688BB000, v15, v16, "SingleDeviceSelectableIntent metricsEligibleDeviceCount: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    v17 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v17);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    (*(v3 + 8))(v0, v1);
  }

  else
  {

    v18 = OUTLINED_FUNCTION_103();
    v20(v18, v19);
  }

  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_23();
}

void sub_2688E0310()
{
  OUTLINED_FUNCTION_26();
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_151();
  v3 = [v0 mediaType];
  v4 = v3;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    v3 = swift_once();
  }

  OUTLINED_FUNCTION_61(v3, qword_2802CDA10);
  v5 = OUTLINED_FUNCTION_139();
  v6(v5);
  v7 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_161();
  if (os_log_type_enabled(v7, v8))
  {
    OUTLINED_FUNCTION_68();
    v9 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = NLMediaType.description.getter(v4);
    v13 = sub_26892CDB8(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2688BB000, v7, v1, "MediaTypeProvidingIntent metricsMediaType: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v14 = OUTLINED_FUNCTION_103();
  v15(v14);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688E04D0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2688E05C8;

  return v6(a1);
}

uint64_t sub_2688E05C8()
{
  OUTLINED_FUNCTION_158();
  OUTLINED_FUNCTION_219();
  v1 = *v0;
  OUTLINED_FUNCTION_89();
  *v2 = v1;

  OUTLINED_FUNCTION_222();

  return v3();
}

void sub_2688E06D4()
{
  OUTLINED_FUNCTION_284();
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

uint64_t sub_2688E0744(uint64_t (*a1)(void))
{
  a1();

  return sub_268B385B4();
}

void sub_2688E07B0()
{
  OUTLINED_FUNCTION_223();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_49(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_86();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A38, &qword_268B3C078);
      v7 = OUTLINED_FUNCTION_168(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_130(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_85();
        sub_268988A78(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A40, &qword_268B3C080);
    OUTLINED_FUNCTION_87(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_145();
  if (!v4)
  {
    OUTLINED_FUNCTION_48();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2688E0874()
{
  OUTLINED_FUNCTION_223();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_49(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_86();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A78, &unk_268B3C0B0);
      v7 = OUTLINED_FUNCTION_317();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_248();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_85();
        sub_2689882C8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A80, &qword_268B42590);
    OUTLINED_FUNCTION_87(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_145();
  if (!v5)
  {
    OUTLINED_FUNCTION_48();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2688E097C()
{
  OUTLINED_FUNCTION_223();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_49(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_86();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A18, &qword_268B3F270);
      v7 = OUTLINED_FUNCTION_317();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_248();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_85();
        sub_2689882A8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
    OUTLINED_FUNCTION_87(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_145();
  if (!v5)
  {
    OUTLINED_FUNCTION_48();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2688E0A78(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *), uint64_t a8)
{
  v10 = a1;
  if ((a3 & 1) == 0)
  {
    v11 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_49();
  if (v12 == v13)
  {
LABEL_7:
    v14 = *(a4 + 16);
    if (v11 <= v14)
    {
      v15 = *(a4 + 16);
    }

    else
    {
      v15 = v11;
    }

    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v16 = OUTLINED_FUNCTION_317();
      _swift_stdlib_malloc_size(v16);
      OUTLINED_FUNCTION_248();
      v16[2] = v14;
      v16[3] = v17;
      if (v10)
      {
LABEL_12:
        a7(a4 + 32, v14, v16 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
      if (v10)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_145();
  if (!v12)
  {
    OUTLINED_FUNCTION_48();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2688E0BC4()
{
  OUTLINED_FUNCTION_223();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_49(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_86();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A48, &qword_268B3C088);
      v7 = OUTLINED_FUNCTION_168(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_130(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_85();
        sub_268988A78(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A50, &qword_268B3C090);
    OUTLINED_FUNCTION_87(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_145();
  if (!v4)
  {
    OUTLINED_FUNCTION_48();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2688E0CEC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_49();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = OUTLINED_FUNCTION_317();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_248();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_145();
  if (!v11)
  {
    OUTLINED_FUNCTION_48();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2688E0DCC()
{
  OUTLINED_FUNCTION_223();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_49(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_86();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A08, &qword_268B3C048);
      v7 = OUTLINED_FUNCTION_168(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_130(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_85();
        sub_268988A78(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A10, &unk_268B3C050);
    OUTLINED_FUNCTION_87(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_145();
  if (!v4)
  {
    OUTLINED_FUNCTION_48();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2688E0F08()
{
  OUTLINED_FUNCTION_26();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_49();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_145();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_48();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = v6(0);
  OUTLINED_FUNCTION_19_0(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v6(0);
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258();
  if (v10)
  {
    v4(v8 + v25, v15, v22 + v25);
    *(v8 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688E109C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_268B38444() & 1;
  }
}

BOOL sub_2688E10E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 != a3 || a2 != a4)
    {
      return sub_268B38444() & 1;
    }

    return 1;
  }

  return v4;
}

uint64_t sub_2688E113C(uint64_t a1, uint64_t a2)
{
  v2 = sub_268B378F4();
  v18 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5900, &unk_268B3BED0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v17 - v10;
  v12 = *(v9 + 56);
  sub_2688E451C();
  sub_2688E451C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) != 1)
  {
    sub_2688E451C();
    if (__swift_getEnumTagSinglePayload(&v11[v12], 1, v2) != 1)
    {
      v14 = v18;
      (*(v18 + 32))(v4, &v11[v12], v2);
      sub_2688EA07C(&qword_2802A5918, 255, MEMORY[0x277D5F9D0]);
      v13 = sub_268B37BB4();
      v15 = *(v14 + 8);
      v15(v4, v2);
      v15(v7, v2);
      sub_2688C058C(v11, &qword_2802A5908, &qword_268B3D920);
      return v13 & 1;
    }

    (*(v18 + 8))(v7, v2);
    goto LABEL_6;
  }

  if (__swift_getEnumTagSinglePayload(&v11[v12], 1, v2) != 1)
  {
LABEL_6:
    sub_2688C058C(v11, &qword_2802A5900, &unk_268B3BED0);
    v13 = 0;
    return v13 & 1;
  }

  sub_2688C058C(v11, &qword_2802A5908, &qword_268B3D920);
  v13 = 1;
  return v13 & 1;
}

uint64_t sub_2688E1450(uint64_t a1, uint64_t a2)
{
  v2 = sub_268B37BF4();
  v4 = v3;
  if (v2 == sub_268B37BF4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_179();
    v7 = sub_268B38444();
  }

  return v7 & 1;
}

uint64_t sub_2688E1538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_2688E15B4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_268B382A4();
LABEL_9:
  result = sub_268B381F4();
  *v2 = result;
  return result;
}

uint64_t sub_2688E176C(void *a1)
{
  v1 = [a1 identifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268B37BF4();

  return v3;
}

uint64_t sub_2688E1988()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2688E19F8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_2688E1A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5770, &unk_268B3BDC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2688E1C2C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v31 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_254();
  if (v2)
  {
    [v2 unsupportedReason];
    sub_2688E4434();
    v30 = sub_268B380D4();
    v15 = v14;
  }

  else
  {
    v30 = 0;
    v15 = 0xE000000000000000;
  }

  sub_26894B7A0(v10);
  OUTLINED_FUNCTION_307();

  MEMORY[0x26D625650](35, 0xE100000000000000);

  v16 = sub_26894BAF4(v8);
  v18 = v17;

  MEMORY[0x26D625650](v16, v18);

  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_160();
  MEMORY[0x26D625650](v6, v4);
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  sub_2688DF9AC();
  sub_268B38404();
  OUTLINED_FUNCTION_312();

  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  sub_2688DF81C();
  OUTLINED_FUNCTION_183(978807080);
  MEMORY[0x26D625650]();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  OUTLINED_FUNCTION_183(v18 + 512);
  MEMORY[0x26D625650](v30, v15);

  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v31, qword_2802CDA10);
  v19 = OUTLINED_FUNCTION_266();
  v20(v19);

  v21 = sub_268B37A34();
  v22 = sub_268B37F04();

  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_68();
    v23 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v32 = swift_slowAlloc();
    *v23 = 136315138;
    v24 = OUTLINED_FUNCTION_221();
    *(v23 + 4) = sub_26892CDB8(v24, v25, v26);
    OUTLINED_FUNCTION_309(&dword_2688BB000, v27, v28, "AnalyticsService#encodeInfo: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    v29 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v29);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  (*(v12 + 8))(v0, v31);
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_23();
}

void sub_2688E1FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t), uint64_t (*a22)(void))
{
  OUTLINED_FUNCTION_26();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_254();
  v55 = v36;
  if (v24)
  {
    [v24 unsupportedReason];
    sub_2688E4434();
    v54 = sub_268B380D4();
    v38 = v37;
  }

  else
  {
    v54 = 0;
    v38 = 0xE000000000000000;
  }

  sub_26894B7A0(v32);
  OUTLINED_FUNCTION_307();

  MEMORY[0x26D625650](35, 0xE100000000000000);

  v39 = sub_26894BAF4(v30);
  v41 = v40;

  MEMORY[0x26D625650](v39, v41);

  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_160();
  MEMORY[0x26D625650](v28, v26);
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  a21(v42);
  sub_268B38404();
  OUTLINED_FUNCTION_312();

  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  sub_2688DFAFC(a22);
  OUTLINED_FUNCTION_183(978807080);
  MEMORY[0x26D625650]();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  OUTLINED_FUNCTION_239();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  OUTLINED_FUNCTION_183(v57 + 512);
  MEMORY[0x26D625650](v54, v38);

  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_184();

  OUTLINED_FUNCTION_92();

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v55, qword_2802CDA10);
  v43 = OUTLINED_FUNCTION_266();
  v44(v43);

  v45 = sub_268B37A34();
  v46 = sub_268B37F04();

  if (os_log_type_enabled(v45, v46))
  {
    OUTLINED_FUNCTION_68();
    v47 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v56 = swift_slowAlloc();
    *v47 = 136315138;
    v48 = OUTLINED_FUNCTION_221();
    *(v47 + 4) = sub_26892CDB8(v48, v49, v50);
    OUTLINED_FUNCTION_309(&dword_2688BB000, v51, v52, "AnalyticsService#encodeInfo: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    v53 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v53);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  (*(v34 + 8))(v22, v55);
  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688E23F0(uint64_t a1)
{
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_127();
  v1 = OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_19_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v2);
  v3 = sub_268B36A54();
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_25_0();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_44(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_5_1(v5);
  OUTLINED_FUNCTION_277();

  return sub_2688F10B4(v7, v8, v9, v10, v11);
}

uint64_t sub_2688E254C(uint64_t a1)
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_33(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_2_1(v2);
  OUTLINED_FUNCTION_164();

  return sub_2688DB8EC(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2688E25D8()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v1[1] = sub_2688EA0F0;
  v3 = OUTLINED_FUNCTION_32();

  return v4(v3);
}

uint64_t sub_2688E2680()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33(v0);
  *v1 = v2;
  v1[1] = sub_2688EA0F0;
  v3 = OUTLINED_FUNCTION_32();

  return sub_2688DBB6C(v3, v4);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  OUTLINED_FUNCTION_182();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

void sub_2688E2778()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_42(v12, v34);
  v14 = OUTLINED_FUNCTION_10_1(v13);
  v16 = v15;
  v17 = MEMORY[0x28223BE20](v14);
  v25 = OUTLINED_FUNCTION_16_1(v17, v18, v19, v20, v21, v22, v23, v24, v35);
  OUTLINED_FUNCTION_3_1(v25);
  sub_2688E45F4();
  v27 = OUTLINED_FUNCTION_6_1(v26);
  v28(v27);
  OUTLINED_FUNCTION_115();
  sub_2688E451C();
  OUTLINED_FUNCTION_1_1();
  v29 = OUTLINED_FUNCTION_195();
  v30 = OUTLINED_FUNCTION_12_1(v29);
  v31(v30);
  OUTLINED_FUNCTION_29(&off_287960358);
  sub_2688E43D8();
  OUTLINED_FUNCTION_8_1();

  v32 = v16;
  v33 = v10;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_23();
}

void sub_2688E2964()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_42(v12, v34);
  v14 = OUTLINED_FUNCTION_10_1(v13);
  v16 = v15;
  v17 = MEMORY[0x28223BE20](v14);
  v25 = OUTLINED_FUNCTION_16_1(v17, v18, v19, v20, v21, v22, v23, v24, v35);
  OUTLINED_FUNCTION_3_1(v25);
  sub_2688E45F4();
  v27 = OUTLINED_FUNCTION_6_1(v26);
  v28(v27);
  OUTLINED_FUNCTION_115();
  sub_2688E451C();
  OUTLINED_FUNCTION_1_1();
  v29 = OUTLINED_FUNCTION_195();
  v30 = OUTLINED_FUNCTION_12_1(v29);
  v31(v30);
  OUTLINED_FUNCTION_29(&off_2879604D8);
  sub_2688E43D8();
  OUTLINED_FUNCTION_8_1();

  v32 = v16;
  v33 = v10;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_23();
}

void sub_2688E2B50()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_42(v12, v33);
  v14 = OUTLINED_FUNCTION_10_1(v13);
  v16 = v15;
  v17 = MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_16_1(v17, v18, v19, v20, v21, v22, v23, v24, v34);
  sub_2688E45F4();
  v26 = OUTLINED_FUNCTION_6_1(v25);
  v27(v26);
  OUTLINED_FUNCTION_115();
  sub_2688E451C();
  OUTLINED_FUNCTION_1_1();
  v28 = OUTLINED_FUNCTION_195();
  v29 = OUTLINED_FUNCTION_12_1(v28);
  v30(v29);
  OUTLINED_FUNCTION_29(&off_2879604B8);
  sub_2688E43D8();
  OUTLINED_FUNCTION_8_1();

  v31 = v16;
  v32 = v10;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_23();
}

void sub_2688E2D50()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_42(v12, v34);
  v14 = OUTLINED_FUNCTION_10_1(v13);
  v16 = v15;
  v17 = MEMORY[0x28223BE20](v14);
  v25 = OUTLINED_FUNCTION_16_1(v17, v18, v19, v20, v21, v22, v23, v24, v35);
  OUTLINED_FUNCTION_3_1(v25);
  sub_2688E45F4();
  v27 = OUTLINED_FUNCTION_6_1(v26);
  v28(v27);
  OUTLINED_FUNCTION_115();
  sub_2688E451C();
  OUTLINED_FUNCTION_1_1();
  v29 = OUTLINED_FUNCTION_195();
  v30 = OUTLINED_FUNCTION_12_1(v29);
  v31(v30);
  OUTLINED_FUNCTION_29(&off_2879603B8);
  sub_2688E43D8();
  OUTLINED_FUNCTION_8_1();

  v32 = v16;
  v33 = v10;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_23();
}

void sub_2688E2F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_102(v17, v18, v19, v20, v21, v22, v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v25 = OUTLINED_FUNCTION_19_0(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_94();
  v26 = sub_268B34E24();
  v27 = OUTLINED_FUNCTION_180(v26);
  v28 = MEMORY[0x28223BE20](v27);
  v36 = OUTLINED_FUNCTION_165(v28, v29, v30, v31, v32, v33, v34, v35, v43);
  sub_2688E4A50(v36, v12, v15);
  __swift_project_boxed_opaque_existential_1(v13 + 13, v13[16]);
  OUTLINED_FUNCTION_152();
  v37(v16, v44, v14);
  sub_2688E451C();
  v38 = OUTLINED_FUNCTION_80();
  v39 = OUTLINED_FUNCTION_155(v38);
  v40(v39);
  OUTLINED_FUNCTION_215();
  sub_2688E43D8();
  OUTLINED_FUNCTION_117();

  v41 = v15;
  v42 = v13;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_313();

  OUTLINED_FUNCTION_23();
}

void sub_2688E3180()
{
  OUTLINED_FUNCTION_26();
  v43 = v2;
  v44 = v3;
  OUTLINED_FUNCTION_14_1(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v6);
  v41 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_75();
  v11 = sub_268B34E24();
  v12 = OUTLINED_FUNCTION_10_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v40 = OUTLINED_FUNCTION_166(v17, v18, v19, v20, v21, v22, v23, v24, v38);
  sub_2688E4828();
  OUTLINED_FUNCTION_9_1(v25);
  v26(v0, v42, v1);
  OUTLINED_FUNCTION_287();
  sub_2688E451C();
  v27 = (v9 + ((*(v41 + 80) + ((v16 + ((v14[80] + 32) & ~v14[80]) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v41 + 80)) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v28 = (v27 + 11) & 0xFFFFFFFFFFFFFFF8;
  v29 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  OUTLINED_FUNCTION_23_0();
  v30 = OUTLINED_FUNCTION_195();
  v31 = OUTLINED_FUNCTION_13_1(v30);
  v32(v31);
  OUTLINED_FUNCTION_253(&off_287960318);
  sub_2688E43D8();
  *(v30 + v27) = v40;
  *(v30 + v28) = v39;
  v33 = &v29[v30];
  *v33 = v43;
  *(v33 + 1) = v44;
  OUTLINED_FUNCTION_22_0((v30 + v0));
  *(v30 + v35) = v34;

  v36 = v14;
  v37 = v39;
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_310();

  OUTLINED_FUNCTION_23();
}

void sub_2688E3410()
{
  OUTLINED_FUNCTION_26();
  v43 = v2;
  v44 = v3;
  OUTLINED_FUNCTION_14_1(v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v6);
  v41 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_75();
  v11 = sub_268B34E24();
  v12 = OUTLINED_FUNCTION_10_1(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v40 = OUTLINED_FUNCTION_166(v17, v18, v19, v20, v21, v22, v23, v24, v38);
  sub_2688E4828();
  OUTLINED_FUNCTION_9_1(v25);
  v26(v0, v42, v1);
  OUTLINED_FUNCTION_287();
  sub_2688E451C();
  v27 = (v9 + ((*(v41 + 80) + ((v16 + ((v14[80] + 32) & ~v14[80]) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v41 + 80)) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v28 = (v27 + 11) & 0xFFFFFFFFFFFFFFF8;
  v29 = ((v28 + 15) & 0xFFFFFFFFFFFFFFF8);
  OUTLINED_FUNCTION_23_0();
  v30 = OUTLINED_FUNCTION_195();
  v31 = OUTLINED_FUNCTION_13_1(v30);
  v32(v31);
  OUTLINED_FUNCTION_253(&off_287960338);
  sub_2688E43D8();
  *(v30 + v27) = v40;
  *(v30 + v28) = v39;
  v33 = &v29[v30];
  *v33 = v43;
  *(v33 + 1) = v44;
  OUTLINED_FUNCTION_22_0((v30 + v0));
  *(v30 + v35) = v34;

  v36 = v14;
  v37 = v39;
  OUTLINED_FUNCTION_154();

  OUTLINED_FUNCTION_310();

  OUTLINED_FUNCTION_23();
}

void sub_2688E36A0()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_42(v12, v34);
  v14 = OUTLINED_FUNCTION_10_1(v13);
  v16 = v15;
  v17 = MEMORY[0x28223BE20](v14);
  v25 = OUTLINED_FUNCTION_16_1(v17, v18, v19, v20, v21, v22, v23, v24, v35);
  OUTLINED_FUNCTION_3_1(v25);
  sub_2688E45F4();
  v27 = OUTLINED_FUNCTION_6_1(v26);
  v28(v27);
  OUTLINED_FUNCTION_115();
  sub_2688E451C();
  OUTLINED_FUNCTION_1_1();
  v29 = OUTLINED_FUNCTION_195();
  v30 = OUTLINED_FUNCTION_12_1(v29);
  v31(v30);
  OUTLINED_FUNCTION_29(&off_2879603D8);
  sub_2688E43D8();
  OUTLINED_FUNCTION_8_1();

  v32 = v16;
  v33 = v10;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_23();
}

void sub_2688E388C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_42(v12, v34);
  v14 = OUTLINED_FUNCTION_10_1(v13);
  v16 = v15;
  v17 = MEMORY[0x28223BE20](v14);
  v25 = OUTLINED_FUNCTION_16_1(v17, v18, v19, v20, v21, v22, v23, v24, v35);
  OUTLINED_FUNCTION_3_1(v25);
  sub_2688E45F4();
  v27 = OUTLINED_FUNCTION_6_1(v26);
  v28(v27);
  OUTLINED_FUNCTION_115();
  sub_2688E451C();
  OUTLINED_FUNCTION_1_1();
  v29 = OUTLINED_FUNCTION_195();
  v30 = OUTLINED_FUNCTION_12_1(v29);
  v31(v30);
  OUTLINED_FUNCTION_29(&off_2879603F8);
  sub_2688E43D8();
  OUTLINED_FUNCTION_8_1();

  v32 = v16;
  v33 = v10;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_23();
}

void sub_2688E3B38()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_102(v5, v6, v7, v8, v9, v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  v13 = OUTLINED_FUNCTION_19_0(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_94();
  v14 = sub_268B34E24();
  v15 = OUTLINED_FUNCTION_180(v14);
  v16 = MEMORY[0x28223BE20](v15);
  v24 = OUTLINED_FUNCTION_165(v16, v17, v18, v19, v20, v21, v22, v23, v31);
  v3(v24, v0);
  __swift_project_boxed_opaque_existential_1(v1 + 13, v1[16]);
  OUTLINED_FUNCTION_152();
  v25(v4, v32, v2);
  sub_2688E451C();
  v26 = OUTLINED_FUNCTION_80();
  v27 = OUTLINED_FUNCTION_155(v26);
  v28(v27);
  OUTLINED_FUNCTION_215();
  sub_2688E43D8();
  OUTLINED_FUNCTION_117();

  v29 = v3;
  v30 = v1;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_313();

  OUTLINED_FUNCTION_23();
}

void sub_2688E3D1C()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_42(v12, v34);
  v14 = OUTLINED_FUNCTION_10_1(v13);
  v16 = v15;
  v17 = MEMORY[0x28223BE20](v14);
  v25 = OUTLINED_FUNCTION_16_1(v17, v18, v19, v20, v21, v22, v23, v24, v35);
  OUTLINED_FUNCTION_3_1(v25);
  sub_2688E45F4();
  v27 = OUTLINED_FUNCTION_6_1(v26);
  v28(v27);
  OUTLINED_FUNCTION_115();
  sub_2688E451C();
  OUTLINED_FUNCTION_1_1();
  v29 = OUTLINED_FUNCTION_195();
  v30 = OUTLINED_FUNCTION_12_1(v29);
  v31(v30);
  OUTLINED_FUNCTION_29(&off_287960398);
  sub_2688E43D8();
  OUTLINED_FUNCTION_8_1();

  v32 = v16;
  v33 = v10;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_23();
}

void sub_2688E3F68()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_4_1(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v11);
  v13 = OUTLINED_FUNCTION_42(v12, v34);
  v14 = OUTLINED_FUNCTION_10_1(v13);
  v16 = v15;
  v17 = MEMORY[0x28223BE20](v14);
  v25 = OUTLINED_FUNCTION_16_1(v17, v18, v19, v20, v21, v22, v23, v24, v35);
  OUTLINED_FUNCTION_3_1(v25);
  sub_2688E45F4();
  v27 = OUTLINED_FUNCTION_6_1(v26);
  v28(v27);
  OUTLINED_FUNCTION_115();
  sub_2688E451C();
  OUTLINED_FUNCTION_1_1();
  v29 = OUTLINED_FUNCTION_195();
  v30 = OUTLINED_FUNCTION_12_1(v29);
  v31(v30);
  OUTLINED_FUNCTION_29(&off_287960418);
  sub_2688E43D8();
  OUTLINED_FUNCTION_8_1();

  v32 = v16;
  v33 = v10;
  OUTLINED_FUNCTION_101();

  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_23();
}

void *sub_2688E4154(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277D57628]) init];
    if (v8)
    {
      v9 = v8;
      [v8 setTaskType_];
      sub_2688E0310();
      [v9 setMediaType_];
      [v9 setIsWholeHouseAudio_];
      v11 = sub_2688DFC78();
      v13 = sub_26898B0F0(v11, v12 & 1);
      [v9 setWholeHouseAudioDestinationContext_];

      [v7 setMediaPlayerContext_];
      return v7;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v5, v14, v2);
  v15 = sub_268B37A34();
  v16 = sub_268B37EE4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "FLOWSchemaFLOWDomainContext error creating domainContext. Returning nil", v17, 2u);
    MEMORY[0x26D6266E0](v17, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_2688E43D8()
{
  OUTLINED_FUNCTION_185();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_123();
  v4(v3);
  return v0;
}

unint64_t sub_2688E4434()
{
  result = qword_2802A5880;
  if (!qword_2802A5880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5880);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2688E44B8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_229();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2688E451C()
{
  OUTLINED_FUNCTION_185();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4();
  v3 = OUTLINED_FUNCTION_123();
  v4(v3);
  return v0;
}

uint64_t sub_2688E4594(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_70();
  (*v3)(a2);
  return a2;
}

void sub_2688E45F4()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_293();
  v11 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277D57628]) init];
    if (v13)
    {
      v14 = v13;
      v15 = v4([v13 setTaskType_]);
      [v14 setMediaType_];
      [v14 setIsWholeHouseAudio_];
      sub_2688DFEF4();
      v18 = sub_26898B0F0(v17, v16 & 1);
      v19 = OUTLINED_FUNCTION_290();
      [v19 v20];

      [v12 setMediaPlayerContext_];
      goto LABEL_10;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    v11 = swift_once();
  }

  OUTLINED_FUNCTION_61(v11, qword_2802CDA10);
  (*(v9 + 16))(v0);
  v21 = sub_268B37A34();
  sub_268B37EE4();
  OUTLINED_FUNCTION_13();
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_64();
    v23 = swift_slowAlloc();
    OUTLINED_FUNCTION_10(v23);
    OUTLINED_FUNCTION_57();
    _os_log_impl(v24, v25, v26, v27, v28, 2u);
    v29 = OUTLINED_FUNCTION_34();
    MEMORY[0x26D6266E0](v29);
  }

  (*(v9 + 8))(v0, v7);
LABEL_10:
  OUTLINED_FUNCTION_23();
}

void sub_2688E4828()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_293();
  v11 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x277D57628]) init];
    if (v13)
    {
      v14 = v13;
      [v13 setTaskType_];
      sub_2688E0310();
      [v14 setMediaType_];
      v16 = [v14 setIsWholeHouseAudio_];
      v17 = v2(v16);
      v19 = sub_26898B0F0(v17, v18 & 1);
      v20 = OUTLINED_FUNCTION_290();
      [v20 v21];

      [v12 setMediaPlayerContext_];
      goto LABEL_10;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    v11 = swift_once();
  }

  OUTLINED_FUNCTION_61(v11, qword_2802CDA10);
  OUTLINED_FUNCTION_120();
  v22(v0);
  v23 = sub_268B37A34();
  sub_268B37EE4();
  OUTLINED_FUNCTION_13();
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_64();
    v25 = swift_slowAlloc();
    OUTLINED_FUNCTION_10(v25);
    OUTLINED_FUNCTION_57();
    _os_log_impl(v26, v27, v28, v29, v30, 2u);
    v31 = OUTLINED_FUNCTION_34();
    MEMORY[0x26D6266E0](v31);
  }

  (*(v9 + 8))(v0, v7);
LABEL_10:
  OUTLINED_FUNCTION_23();
}

void *sub_2688E4A50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v13 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (v13)
  {
    v3 = v13;
    v14 = [objc_allocWithZone(MEMORY[0x277D57628]) init];
    if (v14)
    {
      v15 = v14;
      [v14 setTaskType_];
      v16 = sub_2688DF9AC();
      [v15 setMediaType_];
      [v15 setIsWholeHouseAudio_];
      sub_2688E0100();
      v19 = sub_26898B0F0(v18, v17 & 1);
      [v15 setWholeHouseAudioDestinationContext_];

      [v3 setMediaPlayerContext_];
      return v3;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    v13 = swift_once();
  }

  OUTLINED_FUNCTION_61(v13, qword_2802CDA10);
  OUTLINED_FUNCTION_152();
  v20(v12);
  v21 = sub_268B37A34();
  sub_268B37EE4();
  OUTLINED_FUNCTION_13();
  if (os_log_type_enabled(v21, v22))
  {
    OUTLINED_FUNCTION_64();
    v23 = swift_slowAlloc();
    OUTLINED_FUNCTION_279(v23);
    _os_log_impl(&dword_2688BB000, v21, v3, "FLOWSchemaFLOWDomainContext error creating domainContext. Returning nil", a3, 2u);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  (*(v8 + 8))(v12, v6);
  return 0;
}

void *sub_2688E4C8C(uint64_t a1)
{
  v2 = sub_268B37A54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277D57520]) init];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277D57628]) init];
    if (v8)
    {
      v9 = v8;
      [v8 setTaskType_];
      v10 = sub_2688DF9AC();
      [v9 setMediaType_];
      [v9 setIsWholeHouseAudio_];
      sub_2688E0100();
      v13 = sub_26898B0F0(v12, v11 & 1);
      [v9 setWholeHouseAudioDestinationContext_];

      [v7 setMediaPlayerContext_];
      return v7;
    }
  }

  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_2802CDA10);
  (*(v3 + 16))(v5, v14, v2);
  v15 = sub_268B37A34();
  v16 = sub_268B37EE4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2688BB000, v15, v16, "FLOWSchemaFLOWDomainContext error creating domainContext. Returning nil", v17, 2u);
    MEMORY[0x26D6266E0](v17, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

void sub_2688E4FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_213(v26, v27, v28, v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_38(v35);
  v214 = sub_268B371E4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v38);
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v218 = v39;
  v219 = v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_31();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9();
  v46 = sub_268B378F4();
  OUTLINED_FUNCTION_1();
  v48 = v47;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v50);
  v51 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5900, &unk_268B3BED0) - 8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_94();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  v54 = OUTLINED_FUNCTION_19_0(v53);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_136();
  v57 = type metadata accessor for MediaPlayerIntent(0);
  v223 = v57;
  OUTLINED_FUNCTION_108();
  v60 = sub_2688EA07C(v58, 255, v59);
  v224 = OUTLINED_FUNCTION_156(v60);
  __swift_allocate_boxed_opaque_existential_0Tm(v222);
  OUTLINED_FUNCTION_37();
  sub_2688E7418();
  __swift_project_boxed_opaque_existential_1(v222, v223);
  v217 = v57;
  v61 = OUTLINED_FUNCTION_212();
  v48(v61);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v46);
  OUTLINED_FUNCTION_250();
  v65 = &qword_2802A5908;
  sub_2688E451C();
  OUTLINED_FUNCTION_303();
  v66 = OUTLINED_FUNCTION_286();
  if (__swift_getEnumTagSinglePayload(v66, v67, v46) == 1)
  {
    sub_2688C058C(v22, &qword_2802A5908, &qword_268B3D920);
    OUTLINED_FUNCTION_119();
    if (!v140)
    {
      goto LABEL_8;
    }

    sub_2688C058C(v23, &qword_2802A5908, &qword_268B3D920);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_287();
  sub_2688E451C();
  OUTLINED_FUNCTION_119();
  if (v140)
  {
    sub_2688C058C(v22, &qword_2802A5908, &qword_268B3D920);
    v68 = OUTLINED_FUNCTION_276();
    v69(v68);
LABEL_8:
    sub_2688C058C(v23, &qword_2802A5900, &unk_268B3BED0);
    goto LABEL_9;
  }

  v113 = OUTLINED_FUNCTION_144();
  v114(v113);
  OUTLINED_FUNCTION_107();
  sub_2688EA07C(v115, 255, v116);
  OUTLINED_FUNCTION_150();
  v209 = sub_268B37BB4();
  v65 = &off_2802A5910;
  v117 = off_2802A5910;
  v118 = OUTLINED_FUNCTION_179();
  v117(v118);
  v51 = &qword_268B3D920;
  sub_2688C058C(v22, &qword_2802A5908, &qword_268B3D920);
  (v117)(v21, v46);
  v119 = OUTLINED_FUNCTION_115();
  sub_2688C058C(v119, v120, &qword_268B3D920);
  if (v209)
  {
LABEL_33:
    OUTLINED_FUNCTION_297();
    if (v140)
    {
LABEL_35:
      OUTLINED_FUNCTION_62(v121, qword_2802CDA10);
      v122 = OUTLINED_FUNCTION_291();
      v123(v122);
      v124 = sub_268B37A34();
      sub_268B37F04();
      v125 = OUTLINED_FUNCTION_28();
      if (os_log_type_enabled(v125, v126))
      {
        OUTLINED_FUNCTION_64();
        v127 = swift_slowAlloc();
        OUTLINED_FUNCTION_81(v127);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v128, v129, v130, v131, v132, 2u);
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      v133 = OUTLINED_FUNCTION_131();
      v134(v133);
      OUTLINED_FUNCTION_325(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_264();
      while (1)
      {
        if (v124 == v65)
        {
          goto LABEL_81;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v142 = OUTLINED_FUNCTION_100();
          MEMORY[0x26D625BD0](v142);
        }

        else
        {
          if (v65 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          OUTLINED_FUNCTION_316();
        }

        OUTLINED_FUNCTION_281();
        if (v100)
        {
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v135 = sub_2688E176C(v51);
        v137 = v136;
        v138 = sub_268B37724();
        if (!v137)
        {
          break;
        }

        v140 = v135 == v138 && v137 == v139;
        if (v140)
        {
        }

        else
        {
          v141 = OUTLINED_FUNCTION_311();

          if ((v141 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        sub_268B38214();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_150();
        sub_268B38254();
        sub_268B38224();
LABEL_54:
        v65 = (v65 + 1);
      }

LABEL_51:

      goto LABEL_54;
    }

LABEL_91:
    OUTLINED_FUNCTION_0_2();
    v121 = swift_once();
    goto LABEL_35;
  }

LABEL_9:
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_2802A5910, &unk_268B3BEE0);
  v71 = OUTLINED_FUNCTION_174(v70);
  *(v71 + 16) = xmmword_268B3BBD0;
  v65 = (v65 + v71);
  v72 = OUTLINED_FUNCTION_216();
  v48(v72);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v46);
  (v48)(v51 + v65, *MEMORY[0x277D5F9B8], v46);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v46);
  v51 = v57;
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_249();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_59();
  v82 = OUTLINED_FUNCTION_302(v80, v81);
  swift_setDeallocating();
  sub_268ACE758();
  v83 = OUTLINED_FUNCTION_275();
  v85 = sub_2688C058C(v83, v84, &qword_268B3D920);
  if (v82)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      v85 = swift_once();
    }

    OUTLINED_FUNCTION_62(v85, qword_2802CDA10);
    v86 = OUTLINED_FUNCTION_291();
    v87(v86);
    v88 = sub_268B37A34();
    sub_268B37F04();
    v89 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v89, v90))
    {
      OUTLINED_FUNCTION_64();
      v91 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v91);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v92, v93, v94, v95, v96, 2u);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

    v97 = OUTLINED_FUNCTION_131();
    v98(v97);
    OUTLINED_FUNCTION_325(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_264();
    while (1)
    {
      if (v88 == v65)
      {
        goto LABEL_81;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v101 = OUTLINED_FUNCTION_100();
        MEMORY[0x26D625BD0](v101);
      }

      else
      {
        if (v65 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_90;
        }

        OUTLINED_FUNCTION_316();
      }

      OUTLINED_FUNCTION_281();
      if (v100)
      {
        break;
      }

      if (sub_268983434(v99))
      {
        sub_268B38214();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_150();
        sub_268B38254();
        sub_268B38224();
      }

      else
      {
      }

      v65 = (v65 + 1);
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    __break(1u);
    goto LABEL_91;
  }

  if (*(OUTLINED_FUNCTION_305() + 16))
  {
    OUTLINED_FUNCTION_243(MEMORY[0x277D84F90], v102, v103, v104, v105);
    v106 = v221[0];
    do
    {
      sub_268B37C34();
      OUTLINED_FUNCTION_188();
      if (v112)
      {
        sub_26894470C(v111 > 1, v82, 1, v107, v108, v109, v110);
        v106 = v221[0];
      }

      OUTLINED_FUNCTION_211();
    }

    while (!v140);
  }

  else
  {

    v106 = MEMORY[0x277D84F90];
  }

  sub_26893E6A8(v106);
  v144 = v143;
  OUTLINED_FUNCTION_297();
  v145 = v219;
  if (!v140)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v146 = OUTLINED_FUNCTION_82(v218, qword_2802CDA10);
  v148 = OUTLINED_FUNCTION_178(v146, v147);
  v149(v148);

  v150 = v215;
  v151 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_270();

  if (OUTLINED_FUNCTION_210())
  {
    v145 = OUTLINED_FUNCTION_238();
    v221[0] = OUTLINED_FUNCTION_237();
    *v145 = 136315394;
    v152 = sub_268B37E24();
    OUTLINED_FUNCTION_318(v152, v153);
    OUTLINED_FUNCTION_234();
    v154 = OUTLINED_FUNCTION_315();
    v155 = MEMORY[0x26D625710](v20, v154);
    OUTLINED_FUNCTION_318(v155, v156);
    OUTLINED_FUNCTION_234();
    *(v145 + 14) = 0x2802A4000;
    OUTLINED_FUNCTION_72();
    _os_log_impl(v157, v158, v159, v160, v145, 0x16u);
    swift_arrayDestroy();
    v161 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v161);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v216 = *(v219 + 8);
  v216(v215, v218);
  v51 = MEMORY[0x277D84F90];
  v221[0] = MEMORY[0x277D84F90];
  sub_2688EFD0C();
  OUTLINED_FUNCTION_263();
  while (v151 != v145)
  {
    v162 = OUTLINED_FUNCTION_192();
    v150 = MEMORY[0x26D625BD0](v162);
    if (__OFADD__(v145, 1))
    {
      goto LABEL_89;
    }

    OUTLINED_FUNCTION_314();

    if (v220)
    {
      v150 = v221;
      MEMORY[0x26D6256C0]();
      OUTLINED_FUNCTION_251();
      if (v112)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
      v51 = v221[0];
    }

    ++v145;
  }

  if (sub_2688EFD0C() <= 1)
  {
    v167 = OUTLINED_FUNCTION_157();
    v168(v167);

    v169 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_321();
    if (OUTLINED_FUNCTION_210())
    {
      goto LABEL_79;
    }

    goto LABEL_80;
  }

  OUTLINED_FUNCTION_235();
  sub_268B37034();
  v163 = OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_124(v163);
  if (v140)
  {
    sub_2688C058C(v150, &qword_2802A58F0, &unk_268B3BEC0);
    OUTLINED_FUNCTION_175(&a14);
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v164, v165, v166, v214);
    goto LABEL_78;
  }

  v145 = v212;
  sub_268B36FE4();
  OUTLINED_FUNCTION_70();
  v170 = OUTLINED_FUNCTION_103();
  v171(v170);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_135(v172, v173, v20);
  if (v174)
  {
LABEL_78:
    sub_2688C058C(v145, &qword_2802A58F8, &unk_268B3C510);
    OUTLINED_FUNCTION_142();
    v175();

    v169 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_321();
    if (OUTLINED_FUNCTION_210())
    {
LABEL_79:
      OUTLINED_FUNCTION_68();
      v176 = swift_slowAlloc();
      OUTLINED_FUNCTION_69();
      v177 = swift_slowAlloc();
      OUTLINED_FUNCTION_283(v177);
      OUTLINED_FUNCTION_244(4.8149e-34);
      OUTLINED_FUNCTION_246();
      OUTLINED_FUNCTION_322(v178, v179);
      OUTLINED_FUNCTION_241();
      *(v176 + 4) = v144;
      OUTLINED_FUNCTION_27();
      _os_log_impl(v180, v181, v182, v183, v184, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v185 = OUTLINED_FUNCTION_34();
      MEMORY[0x26D6266E0](v185);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

LABEL_80:

    v186 = OUTLINED_FUNCTION_233();
    v187(v186);
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_133();
  v188 = OUTLINED_FUNCTION_225();
  v189(v188);
  OUTLINED_FUNCTION_109(&a10);
  OUTLINED_FUNCTION_142();
  v190();
  OUTLINED_FUNCTION_120();
  v191 = OUTLINED_FUNCTION_224();
  v192(v191);
  v193 = sub_268B37A34();
  sub_268B37F04();
  v194 = OUTLINED_FUNCTION_71();
  if (os_log_type_enabled(v194, v195))
  {
    OUTLINED_FUNCTION_68();
    v196 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v197 = swift_slowAlloc();
    v221[0] = v197;
    *v196 = 136315138;
    sub_268B37184();
    OUTLINED_FUNCTION_186();
    v199 = v198;
    OUTLINED_FUNCTION_140();
    v218();
    sub_26892CDB8(v213, v199, v221);
    OUTLINED_FUNCTION_186();

    *(v196 + 4) = v213;
    OUTLINED_FUNCTION_308(&dword_2688BB000, v200, v201, "Multiple devices matched. Narrowing down using device capabilities: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v197);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_218();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    v202 = OUTLINED_FUNCTION_294();
  }

  else
  {

    OUTLINED_FUNCTION_140();
    v203 = OUTLINED_FUNCTION_122();
    (v218)(v203);
    v202 = OUTLINED_FUNCTION_228();
  }

  (v216)(v202);
  OUTLINED_FUNCTION_249();
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_59();
  *(v205 - 16) = v211;
  OUTLINED_FUNCTION_36();
  sub_2688C8F5C(v210, v206, v51, v207);
  v208 = OUTLINED_FUNCTION_138();
  (v218)(v208);
LABEL_81:
  __swift_destroy_boxed_opaque_existential_0Tm(v222);
  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_23();
}

id sub_2688E61E8@<X0>(void **a1@<X0>, void **a2@<X1>, void *a3@<X8>)
{
  result = sub_2688D7E68(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2688E6514(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2688E65D0(uint64_t a1)
{
  OUTLINED_FUNCTION_271();
  OUTLINED_FUNCTION_127();
  v1 = OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_19_0(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  OUTLINED_FUNCTION_19_0(v2);
  v3 = sub_268B36A54();
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_25_0();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_44(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_5_1(v5);
  OUTLINED_FUNCTION_277();

  return sub_2688F10B4(v7, v8, v9, v10, v11);
}

uint64_t sub_2688E6730(uint64_t a1)
{
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_24_0();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_33(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_2_1(v2);
  OUTLINED_FUNCTION_164();

  return sub_2688DB8EC(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_25Tm()
{

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_2688E7290()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2688E7348()
{
  OUTLINED_FUNCTION_185();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_123();
  v3(v2);
  return v0;
}

uint64_t sub_2688E73C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2688E7418()
{
  OUTLINED_FUNCTION_185();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_123();
  v3(v2);
  return v0;
}

void sub_2688E7530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_213(v26, v27, v28, v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_79(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v33);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_38(v35);
  v214 = sub_268B371E4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_38(v38);
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v218 = v39;
  v219 = v40;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_31();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9();
  v46 = sub_268B378F4();
  OUTLINED_FUNCTION_1();
  v48 = v47;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_79(v50);
  v51 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5900, &unk_268B3BED0) - 8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_94();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5908, &qword_268B3D920);
  v54 = OUTLINED_FUNCTION_19_0(v53);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_141();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_136();
  v57 = type metadata accessor for MediaIntent(0);
  v223 = v57;
  OUTLINED_FUNCTION_116();
  v60 = sub_2688EA07C(v58, 255, v59);
  v224 = OUTLINED_FUNCTION_156(v60);
  __swift_allocate_boxed_opaque_existential_0Tm(v222);
  OUTLINED_FUNCTION_35();
  sub_2688E7418();
  __swift_project_boxed_opaque_existential_1(v222, v223);
  v217 = v57;
  v61 = OUTLINED_FUNCTION_212();
  v48(v61);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v46);
  OUTLINED_FUNCTION_250();
  v65 = &qword_2802A5908;
  sub_2688E451C();
  OUTLINED_FUNCTION_303();
  v66 = OUTLINED_FUNCTION_286();
  if (__swift_getEnumTagSinglePayload(v66, v67, v46) == 1)
  {
    sub_2688C058C(v22, &qword_2802A5908, &qword_268B3D920);
    OUTLINED_FUNCTION_119();
    if (!v140)
    {
      goto LABEL_8;
    }

    sub_2688C058C(v23, &qword_2802A5908, &qword_268B3D920);
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_287();
  sub_2688E451C();
  OUTLINED_FUNCTION_119();
  if (v140)
  {
    sub_2688C058C(v22, &qword_2802A5908, &qword_268B3D920);
    v68 = OUTLINED_FUNCTION_276();
    v69(v68);
LABEL_8:
    sub_2688C058C(v23, &qword_2802A5900, &unk_268B3BED0);
    goto LABEL_9;
  }

  v113 = OUTLINED_FUNCTION_144();
  v114(v113);
  OUTLINED_FUNCTION_107();
  sub_2688EA07C(v115, 255, v116);
  OUTLINED_FUNCTION_150();
  v209 = sub_268B37BB4();
  v65 = &off_2802A5910;
  v117 = off_2802A5910;
  v118 = OUTLINED_FUNCTION_179();
  v117(v118);
  v51 = &qword_268B3D920;
  sub_2688C058C(v22, &qword_2802A5908, &qword_268B3D920);
  (v117)(v21, v46);
  v119 = OUTLINED_FUNCTION_115();
  sub_2688C058C(v119, v120, &qword_268B3D920);
  if (v209)
  {
LABEL_33:
    OUTLINED_FUNCTION_297();
    if (v140)
    {
LABEL_35:
      OUTLINED_FUNCTION_62(v121, qword_2802CDA10);
      v122 = OUTLINED_FUNCTION_291();
      v123(v122);
      v124 = sub_268B37A34();
      sub_268B37F04();
      v125 = OUTLINED_FUNCTION_28();
      if (os_log_type_enabled(v125, v126))
      {
        OUTLINED_FUNCTION_64();
        v127 = swift_slowAlloc();
        OUTLINED_FUNCTION_81(v127);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v128, v129, v130, v131, v132, 2u);
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      v133 = OUTLINED_FUNCTION_131();
      v134(v133);
      OUTLINED_FUNCTION_325(MEMORY[0x277D84F90]);
      OUTLINED_FUNCTION_264();
      while (1)
      {
        if (v124 == v65)
        {
          goto LABEL_81;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v142 = OUTLINED_FUNCTION_100();
          MEMORY[0x26D625BD0](v142);
        }

        else
        {
          if (v65 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_87;
          }

          OUTLINED_FUNCTION_316();
        }

        OUTLINED_FUNCTION_281();
        if (v100)
        {
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v135 = sub_2688E176C(v51);
        v137 = v136;
        v138 = sub_268B37724();
        if (!v137)
        {
          break;
        }

        v140 = v135 == v138 && v137 == v139;
        if (v140)
        {
        }

        else
        {
          v141 = OUTLINED_FUNCTION_311();

          if ((v141 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        sub_268B38214();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_150();
        sub_268B38254();
        sub_268B38224();
LABEL_54:
        v65 = (v65 + 1);
      }

LABEL_51:

      goto LABEL_54;
    }

LABEL_91:
    OUTLINED_FUNCTION_0_2();
    v121 = swift_once();
    goto LABEL_35;
  }

LABEL_9:
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_2802A5910, &unk_268B3BEE0);
  v71 = OUTLINED_FUNCTION_174(v70);
  *(v71 + 16) = xmmword_268B3BBD0;
  v65 = (v65 + v71);
  v72 = OUTLINED_FUNCTION_216();
  v48(v72);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v46);
  (v48)(v51 + v65, *MEMORY[0x277D5F9B8], v46);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v46);
  v51 = v57;
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_249();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_59();
  v82 = OUTLINED_FUNCTION_302(v80, v81);
  swift_setDeallocating();
  sub_268ACE758();
  v83 = OUTLINED_FUNCTION_275();
  v85 = sub_2688C058C(v83, v84, &qword_268B3D920);
  if (v82)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      v85 = swift_once();
    }

    OUTLINED_FUNCTION_62(v85, qword_2802CDA10);
    v86 = OUTLINED_FUNCTION_291();
    v87(v86);
    v88 = sub_268B37A34();
    sub_268B37F04();
    v89 = OUTLINED_FUNCTION_28();
    if (os_log_type_enabled(v89, v90))
    {
      OUTLINED_FUNCTION_64();
      v91 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v91);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v92, v93, v94, v95, v96, 2u);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

    v97 = OUTLINED_FUNCTION_131();
    v98(v97);
    OUTLINED_FUNCTION_325(MEMORY[0x277D84F90]);
    OUTLINED_FUNCTION_264();
    while (1)
    {
      if (v88 == v65)
      {
        goto LABEL_81;
      }

      if ((v20 & 0xC000000000000001) != 0)
      {
        v101 = OUTLINED_FUNCTION_100();
        MEMORY[0x26D625BD0](v101);
      }

      else
      {
        if (v65 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_90;
        }

        OUTLINED_FUNCTION_316();
      }

      OUTLINED_FUNCTION_281();
      if (v100)
      {
        break;
      }

      if (sub_268983434(v99))
      {
        sub_268B38214();
        OUTLINED_FUNCTION_171();
        OUTLINED_FUNCTION_150();
        sub_268B38254();
        sub_268B38224();
      }

      else
      {
      }

      v65 = (v65 + 1);
    }

LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    __break(1u);
    goto LABEL_91;
  }

  if (*(OUTLINED_FUNCTION_305() + 16))
  {
    OUTLINED_FUNCTION_243(MEMORY[0x277D84F90], v102, v103, v104, v105);
    v106 = v221[0];
    do
    {
      sub_268B37C34();
      OUTLINED_FUNCTION_188();
      if (v112)
      {
        sub_26894470C(v111 > 1, v82, 1, v107, v108, v109, v110);
        v106 = v221[0];
      }

      OUTLINED_FUNCTION_211();
    }

    while (!v140);
  }

  else
  {

    v106 = MEMORY[0x277D84F90];
  }

  sub_26893E6A8(v106);
  v144 = v143;
  OUTLINED_FUNCTION_297();
  v145 = v219;
  if (!v140)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v146 = OUTLINED_FUNCTION_82(v218, qword_2802CDA10);
  v148 = OUTLINED_FUNCTION_178(v146, v147);
  v149(v148);

  v150 = v215;
  v151 = sub_268B37A34();
  sub_268B37F04();
  OUTLINED_FUNCTION_270();

  if (OUTLINED_FUNCTION_210())
  {
    v145 = OUTLINED_FUNCTION_238();
    v221[0] = OUTLINED_FUNCTION_237();
    *v145 = 136315394;
    v152 = sub_268B37E24();
    OUTLINED_FUNCTION_318(v152, v153);
    OUTLINED_FUNCTION_234();
    v154 = OUTLINED_FUNCTION_315();
    v155 = MEMORY[0x26D625710](v20, v154);
    OUTLINED_FUNCTION_318(v155, v156);
    OUTLINED_FUNCTION_234();
    *(v145 + 14) = 0x2802A4000;
    OUTLINED_FUNCTION_72();
    _os_log_impl(v157, v158, v159, v160, v145, 0x16u);
    swift_arrayDestroy();
    v161 = OUTLINED_FUNCTION_45();
    MEMORY[0x26D6266E0](v161);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v216 = *(v219 + 8);
  v216(v215, v218);
  v51 = MEMORY[0x277D84F90];
  v221[0] = MEMORY[0x277D84F90];
  sub_2688EFD0C();
  OUTLINED_FUNCTION_263();
  while (v151 != v145)
  {
    v162 = OUTLINED_FUNCTION_192();
    v150 = MEMORY[0x26D625BD0](v162);
    if (__OFADD__(v145, 1))
    {
      goto LABEL_89;
    }

    OUTLINED_FUNCTION_314();

    if (v220)
    {
      v150 = v221;
      MEMORY[0x26D6256C0]();
      OUTLINED_FUNCTION_251();
      if (v112)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
      v51 = v221[0];
    }

    ++v145;
  }

  if (sub_2688EFD0C() <= 1)
  {
    v167 = OUTLINED_FUNCTION_157();
    v168(v167);

    v169 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_321();
    if (OUTLINED_FUNCTION_210())
    {
      goto LABEL_79;
    }

    goto LABEL_80;
  }

  OUTLINED_FUNCTION_235();
  sub_268B37034();
  v163 = OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_124(v163);
  if (v140)
  {
    sub_2688C058C(v150, &qword_2802A58F0, &unk_268B3BEC0);
    OUTLINED_FUNCTION_175(&a14);
    OUTLINED_FUNCTION_96();
    __swift_storeEnumTagSinglePayload(v164, v165, v166, v214);
    goto LABEL_78;
  }

  v145 = v212;
  sub_268B36FE4();
  OUTLINED_FUNCTION_70();
  v170 = OUTLINED_FUNCTION_103();
  v171(v170);
  OUTLINED_FUNCTION_149();
  OUTLINED_FUNCTION_218();
  OUTLINED_FUNCTION_135(v172, v173, v20);
  if (v174)
  {
LABEL_78:
    sub_2688C058C(v145, &qword_2802A58F8, &unk_268B3C510);
    OUTLINED_FUNCTION_142();
    v175();

    v169 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_321();
    if (OUTLINED_FUNCTION_210())
    {
LABEL_79:
      OUTLINED_FUNCTION_68();
      v176 = swift_slowAlloc();
      OUTLINED_FUNCTION_69();
      v177 = swift_slowAlloc();
      OUTLINED_FUNCTION_283(v177);
      OUTLINED_FUNCTION_244(4.8149e-34);
      OUTLINED_FUNCTION_246();
      OUTLINED_FUNCTION_322(v178, v179);
      OUTLINED_FUNCTION_241();
      *(v176 + 4) = v144;
      OUTLINED_FUNCTION_27();
      _os_log_impl(v180, v181, v182, v183, v184, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v185 = OUTLINED_FUNCTION_34();
      MEMORY[0x26D6266E0](v185);
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

LABEL_80:

    v186 = OUTLINED_FUNCTION_233();
    v187(v186);
    goto LABEL_81;
  }

  OUTLINED_FUNCTION_133();
  v188 = OUTLINED_FUNCTION_225();
  v189(v188);
  OUTLINED_FUNCTION_109(&a10);
  OUTLINED_FUNCTION_142();
  v190();
  OUTLINED_FUNCTION_120();
  v191 = OUTLINED_FUNCTION_224();
  v192(v191);
  v193 = sub_268B37A34();
  sub_268B37F04();
  v194 = OUTLINED_FUNCTION_71();
  if (os_log_type_enabled(v194, v195))
  {
    OUTLINED_FUNCTION_68();
    v196 = swift_slowAlloc();
    OUTLINED_FUNCTION_69();
    v197 = swift_slowAlloc();
    v221[0] = v197;
    *v196 = 136315138;
    sub_268B37184();
    OUTLINED_FUNCTION_186();
    v199 = v198;
    OUTLINED_FUNCTION_140();
    v218();
    sub_26892CDB8(v213, v199, v221);
    OUTLINED_FUNCTION_186();

    *(v196 + 4) = v213;
    OUTLINED_FUNCTION_308(&dword_2688BB000, v200, v201, "Multiple devices matched. Narrowing down using device capabilities: %s");
    __swift_destroy_boxed_opaque_existential_0Tm(v197);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_218();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    v202 = OUTLINED_FUNCTION_294();
  }

  else
  {

    OUTLINED_FUNCTION_140();
    v203 = OUTLINED_FUNCTION_122();
    (v218)(v203);
    v202 = OUTLINED_FUNCTION_228();
  }

  (v216)(v202);
  OUTLINED_FUNCTION_249();
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_59();
  *(v205 - 16) = v211;
  OUTLINED_FUNCTION_36();
  sub_2688C8F5C(v210, v206, v51, v207);
  v208 = OUTLINED_FUNCTION_138();
  (v218)(v208);
LABEL_81:
  __swift_destroy_boxed_opaque_existential_0Tm(v222);
  OUTLINED_FUNCTION_274();
  OUTLINED_FUNCTION_23();
}

uint64_t objectdestroyTm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = (((((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_2688E901C()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_19_0(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return v0(v2, *(v1 + 2), v1 + 3, *(v1 + 4), *(v1 + 5), &v1[v8], *&v1[v9], *&v1[v9 + 8], *&v1[(v9 + 23) & 0xFFFFFFFFFFFFFFF8], *&v1[((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 8], *&v1[(((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8]);
}

uint64_t objectdestroy_13Tm()
{
  OUTLINED_FUNCTION_298();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_255();
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  v8 = *(v6 + 80);

  v9 = (v0 + v2);
  OUTLINED_FUNCTION_100();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    sub_268B350F4();
    OUTLINED_FUNCTION_4();
    (*(v10 + 8))(v0 + v2);
  }

  v11 = (((((v4 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v7 + 8))(v0 + ((v8 + ((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8), v5);
  OUTLINED_FUNCTION_299();

  return MEMORY[0x2821FE8E8](v13, v14, v15);
}

uint64_t sub_2688E9428()
{
  OUTLINED_FUNCTION_284();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A6300, &unk_268B3BD80);
  OUTLINED_FUNCTION_19_0(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_22(v12);
  return v0(v2, *(v1 + 16), v1 + v5, *(v1 + v7), *(v1 + v7 + 8), *(v1 + v8), *(v1 + v8 + 8), *(v1 + v9), *(v1 + v10), v1 + v11, *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), v1 + ((*(v13 + 80) + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v13 + 80)));
}

uint64_t objectdestroy_16Tm()
{

  OUTLINED_FUNCTION_220();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroy_36Tm()
{
  OUTLINED_FUNCTION_298();
  v1 = sub_268B35044();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0) - 8);
  v8 = (v6 + *(*v7 + 80)) & ~*(*v7 + 80);
  v9 = *(*v7 + 64);
  v19 = sub_268B36A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v12 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v13 + 8))(v0 + v8);

  (*(v11 + 8))(v0 + v12, v19);
  OUTLINED_FUNCTION_299();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t objectdestroy_40Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_61Tm()
{
  OUTLINED_FUNCTION_298();
  v1 = sub_268B35434();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v10 = (v6 + *(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (((*(v11 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v4, v1);

  (*(v9 + 8))(v0 + v10, v7);

  OUTLINED_FUNCTION_299();

  return MEMORY[0x2821FE8E8](v13, v14, v15);
}

uint64_t sub_2688E9AC8(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, unint64_t, unint64_t, uint64_t))
{
  v2 = sub_268B35434();
  OUTLINED_FUNCTION_19_0(v2);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56D0, &unk_268B43B90);
  OUTLINED_FUNCTION_19_0(v7);
  v9 = v8;
  v11 = v10;
  v12 = (v6 + *(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v1 + v6);
  v15 = *(v1 + v6 + 8);
  v16 = *(v1 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v4, v14, v15, v1 + v12, v1 + v13, v16);
}

uint64_t objectdestroy_68Tm()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_58Tm()
{
  OUTLINED_FUNCTION_26();
  v1 = sub_268B34E24();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62B0, &unk_268B3BDF0);
  OUTLINED_FUNCTION_19_0(v7);
  v9 = (v6 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = *(v10 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  v12 = sub_268B34B94();
  if (!__swift_getEnumTagSinglePayload(v0 + v9, 1, v12))
  {
    OUTLINED_FUNCTION_70();
    (*(v13 + 8))(v0 + v9, v12);
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2821FE8E8](v14, v15, v16);
}

uint64_t sub_2688EA03C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2688EA07C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    OUTLINED_FUNCTION_229();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_1(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 104) = a6;
  *(v7 - 96) = a7;
  *(v7 - 120) = a4;
  *(v7 - 112) = a5;
  *(v7 - 160) = a2;
  *(v7 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1)
{
  *(v3 - 184) = a1;
  v4 = v1[16];
  v5 = v1[17];
  *(v3 - 144) = v4;
  *(v3 - 136) = v5;
  *(v3 - 152) = __swift_project_boxed_opaque_existential_1(v1 + 13, v4);
  return v2;
}

uint64_t OUTLINED_FUNCTION_8_1()
{
  *(v0 + v2) = *(v5 - 172);
  *(v0 + v3) = *(v5 - 184);
  v7 = (v0 + v4);
  v8 = *(v5 - 112);
  *v7 = *(v5 - 120);
  v7[1] = v8;
  v9 = (v0 + v1);
  v10 = *(v5 - 96);
  *v9 = *(v5 - 104);
  v9[1] = v10;
  *(v0 + *(v5 - 160)) = *(v5 - 128);
}

void *OUTLINED_FUNCTION_9_1(uint64_t a1)
{
  *(v2 - 184) = a1;
  v3 = v1[16];
  v4 = v1[17];
  *(v2 - 144) = v3;
  *(v2 - 136) = v4;
  result = __swift_project_boxed_opaque_existential_1(v1 + 13, v3);
  *(v2 - 152) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1)
{
  v4 = *(v3 - 88);
  *(a1 + 16) = v1;
  *(a1 + 24) = v4;
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_13_1(uint64_t a1)
{
  v4 = *(v3 - 88);
  *(a1 + 16) = v1;
  *(a1 + 24) = v4;
  return a1 + v2;
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t result, uint64_t a2)
{
  *(v2 - 160) = a2;
  *(v2 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 208) = &a9 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 - 192) = v10;

  return sub_26898ABC4(v10);
}

uint64_t OUTLINED_FUNCTION_22_0@<X0>(void *a1@<X8>)
{
  result = *(v1 - 96);
  *a1 = *(v1 - 104);
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_29@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + v2);
  result = *(v3 - 200);
  *v4 = *(v3 - 192);
  v4[1] = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_39@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  *(v3 - 136) = a1;
  *(v3 - 96) = 1;
  return v3 - 136;
}

uint64_t OUTLINED_FUNCTION_42@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 200) = &a2 - a1;

  return sub_268B34E24();
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_60()
{

  return sub_268B36DB4();
}

uint64_t OUTLINED_FUNCTION_80()
{
  v5 = *(*(v3 - 208) + 80);
  *(v3 - 192) = (v1 + ((v5 + ((v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v5) + 3) & 0xFFFFFFFFFFFFFFFCLL;

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_83@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;
  **(v3 - 208) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_87(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_91()
{

  return sub_268B35044();
}

void OUTLINED_FUNCTION_92()
{

  JUMPOUT(0x26D625650);
}

uint64_t OUTLINED_FUNCTION_93()
{
  v2 = *(v0 - 104);
  *(v0 - 112) = *(v0 - 112);
  *(v0 - 104) = v2;
}

uint64_t OUTLINED_FUNCTION_102(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 15) = a6;
  *(v7 - 14) = a7;
  *(v7 - 17) = a4;
  *(v7 - 16) = a5;
  *(v7 - 24) = a2;
  v8 = v7[5];
  *(v7 - 13) = v7[6];
  *(v7 - 12) = result;
  *(v7 - 20) = v7[4];
  *(v7 - 19) = v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_117()
{
  *(v0 + *(v5 - 192)) = *(v5 - 196);
  *(v0 + v1) = *(v5 - 216);
  v7 = (v0 + v3);
  v8 = *(v5 - 128);
  *v7 = *(v5 - 136);
  v7[1] = v8;
  v9 = (v0 + v4);
  v10 = *(v5 - 112);
  *v9 = *(v5 - 120);
  v9[1] = v10;
  *(v0 + v2) = *(v5 - 144);
}

uint64_t OUTLINED_FUNCTION_118()
{
}

uint64_t OUTLINED_FUNCTION_126()
{
}

uint64_t OUTLINED_FUNCTION_130(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

void OUTLINED_FUNCTION_147(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 72) = v8;
  *(v9 - 256) = a6;
  *(v9 - 248) = a8;
  *(v9 - 160) = a7;
  *(v9 - 264) = a5;
  *(v9 - 152) = a3;
  *(v9 - 144) = a4;
}

uint64_t OUTLINED_FUNCTION_155(uint64_t a1)
{
  v3 = *(v2 - 96);
  *(a1 + 16) = *(v2 - 240);
  *(a1 + 24) = v3;
  return a1 + v1;
}

void OUTLINED_FUNCTION_160()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
  *(v0 - 112) = 978219048;
  *(v0 - 104) = 0xE400000000000000;
}

uint64_t OUTLINED_FUNCTION_165(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 248) = &a9 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 - 224) = v10;

  return sub_26898ABC4(v10);
}

uint64_t OUTLINED_FUNCTION_166(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 208) = &a9 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 - 192) = v9;

  return sub_26898ABC4(v9);
}

uint64_t OUTLINED_FUNCTION_168(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_169(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_170(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_171()
{

  return sub_268B38244();
}

uint64_t OUTLINED_FUNCTION_172(uint64_t a1, uint64_t a2)
{
  v6 = *(v4 + 16);
  result = v2;
  *(v5 - 168) = a2;
  *(v5 - 160) = v6;
  *(v5 - 136) = v3;
  *(v5 - 152) = v4 + 16;
  return result;
}

uint64_t OUTLINED_FUNCTION_173(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 256) = a4;
  *(v6 - 248) = a6;
  *(v6 - 200) = a3;
  *(v6 - 192) = a2;
  *(v6 - 224) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_174(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_177(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t), uint64_t (*a22)(void))
{
  v24 = *(v22 - 264);
  v25 = *(v22 - 256);
  v26 = *(v22 - 168);

  sub_2688E1FD4(a1, 1, v24, v25, v26, a6, 0xE700000000000000, 0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t OUTLINED_FUNCTION_178(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  result = v3;
  *(v4 - 216) = a2;
  *(v4 - 208) = v5;
  *(v4 - 200) = v2 + 16;
  return result;
}

void OUTLINED_FUNCTION_184()
{

  JUMPOUT(0x26D625650);
}

uint64_t OUTLINED_FUNCTION_195()
{

  return swift_allocObject();
}

BOOL OUTLINED_FUNCTION_196(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_199()
{
  __swift_project_boxed_opaque_existential_1((v0 - 128), *(v0 - 104));

  return sub_268B37834();
}

void OUTLINED_FUNCTION_200(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{

  sub_2688C6D20(a1, a2, a3, a4, a5, a6, a7, a8, a9, v26, v27, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

double OUTLINED_FUNCTION_203()
{
  *(v0 - 144) = 0;
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

void OUTLINED_FUNCTION_204(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t OUTLINED_FUNCTION_205()
{

  return sub_268B351E4();
}

void OUTLINED_FUNCTION_206(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t), uint64_t (*a22)(void))
{
  v24 = *(v22 - 264);
  v25 = *(v22 - 256);
  v26 = *(v22 - 248);
  v27 = *(v22 - 160);

  sub_2688E1FD4(a1, 2, v24, v25, v27, a6, 0xE700000000000000, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t OUTLINED_FUNCTION_207(uint64_t a1)
{

  return sub_268B38444();
}

uint64_t OUTLINED_FUNCTION_208()
{

  return sub_2688E451C();
}

uint64_t OUTLINED_FUNCTION_209(uint64_t a1)
{

  return sub_268B35184();
}

BOOL OUTLINED_FUNCTION_210()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_211()
{
  *(v0 + 16) = v3;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_215()
{
  v3 = (v0 + v1);
  result = *(v2 - 232);
  v5 = *(v2 - 152);
  *v3 = *(v2 - 224);
  v3[1] = v5;
  return result;
}

void OUTLINED_FUNCTION_231(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 - 168) = a6;
  *(v7 - 160) = a7;
  *(v7 - 256) = a5;
  *(v7 - 264) = a4;
  *(v7 - 152) = a2;
  *(v7 - 144) = a3;
}

uint64_t OUTLINED_FUNCTION_234()
{
}

uint64_t OUTLINED_FUNCTION_235()
{

  return sub_2688E451C();
}

uint64_t OUTLINED_FUNCTION_236()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_237()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_238()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_239()
{
  *(v1 - 112) = 978481960;
  *(v1 - 104) = v0;

  JUMPOUT(0x26D625650);
}

uint64_t OUTLINED_FUNCTION_240()
{
  *(v1 - 184) = v0;

  return sub_2688E451C();
}

uint64_t OUTLINED_FUNCTION_241()
{
}

uint64_t OUTLINED_FUNCTION_242()
{
}

void OUTLINED_FUNCTION_243(uint64_t a1@<X8>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>)
{
  *(v6 - 144) = a1;

  sub_26894470C(0, v5, 0, a2, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_244(float a1)
{
  *v1 = a1;

  return type metadata accessor for Device();
}

uint64_t OUTLINED_FUNCTION_245(uint64_t a1)
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_246()
{

  JUMPOUT(0x26D6256F0);
}

uint64_t OUTLINED_FUNCTION_253@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 + v2);
  result = *(v3 - 200);
  *v4 = *(v3 - 192);
  v4[1] = a1;
  return result;
}

uint64_t OUTLINED_FUNCTION_262(float a1)
{
  *v1 = a1;
  __swift_project_boxed_opaque_existential_1((v2 - 176), *(v2 - 152));

  return swift_getDynamicType();
}

uint64_t OUTLINED_FUNCTION_300()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_301()
{

  return sub_2688E451C();
}

BOOL OUTLINED_FUNCTION_302@<W0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 - 16) = v3;
  v6 = *(v4 - 192);

  return sub_268ACD16C(v6, a1, v2);
}

uint64_t OUTLINED_FUNCTION_303()
{

  return sub_2688E451C();
}

void OUTLINED_FUNCTION_304(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_305()
{
  v3 = *(v1 - 264);

  return MEMORY[0x2821C4700](v0, v3);
}

void OUTLINED_FUNCTION_306(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

void OUTLINED_FUNCTION_307()
{
  *(v0 - 96) = 40;
  *(v0 - 88) = 0xE100000000000000;

  JUMPOUT(0x26D625650);
}

void OUTLINED_FUNCTION_308(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_309(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_310()
{

  return sub_268B36DB4();
}

uint64_t OUTLINED_FUNCTION_311()
{

  return sub_268B38444();
}

void OUTLINED_FUNCTION_312()
{
  *(v1 - 112) = 978611496;
  *(v1 - 104) = v0;

  JUMPOUT(0x26D625650);
}

uint64_t OUTLINED_FUNCTION_313()
{

  return sub_268B36DB4();
}

id OUTLINED_FUNCTION_314()
{
  *(v2 - 152) = v0;

  return sub_2688F088C((v2 - 152), v1, (v2 - 160));
}

uint64_t OUTLINED_FUNCTION_315()
{
  *(v0 + 4) = v1;
  *(v0 + 12) = 2080;

  return type metadata accessor for Device();
}

id OUTLINED_FUNCTION_316()
{
  v3 = *(v1 + 8 * v0 + 32);

  return v3;
}

uint64_t OUTLINED_FUNCTION_317()
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_318(uint64_t a1, unint64_t a2)
{

  return sub_26892CDB8(a1, a2, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_319()
{

  return __swift_destroy_boxed_opaque_existential_0Tm((v0 - 176));
}

uint64_t OUTLINED_FUNCTION_320()
{

  return sub_2688E4594(v0 - 128, v0 - 176);
}

uint64_t OUTLINED_FUNCTION_321()
{
}

unint64_t OUTLINED_FUNCTION_322(uint64_t a1, unint64_t a2)
{

  return sub_26892CDB8(a1, a2, (v2 - 144));
}

uint64_t OUTLINED_FUNCTION_323()
{

  return sub_2688E451C();
}

uint64_t OUTLINED_FUNCTION_324()
{

  return sub_268B34DC4();
}

uint64_t OUTLINED_FUNCTION_325@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 144) = a1;

  return sub_2688EFD0C();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2688EBEF8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2688EBF38(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2688EBF90()
{
  OUTLINED_FUNCTION_0_3();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_1_2(v0);
  sub_2689971E4("fetchContext", 12, 2, 1);
}

uint64_t sub_2688EC028(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = sub_268B37BF4();
  *(inited + 40) = v8;

  sub_268A63AD8(inited);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2688EF500;
  *(v9 + 24) = v6;
  sub_268B36B64();
}

uint64_t sub_2688EC158(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  MEMORY[0x28223BE20](v9);
  v14 = &v39 - v13;
  if (a1)
  {
    v43 = v12;
    v46 = a3;
    v47 = a2;
    if (qword_2802A5030 != -1)
    {
LABEL_28:
      swift_once();
    }

    v15 = __swift_project_value_buffer(v6, qword_2802CDB30);
    v40 = v7[2];
    v41 = v15;
    v40(v11);

    v16 = sub_268B37A34();
    v17 = sub_268B37F04();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134217984;
      *(v18 + 4) = sub_2688EFD0C();

      _os_log_impl(&dword_2688BB000, v16, v17, "Got mediaContext for %ld devices", v18, 0xCu);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    else
    {
    }

    v25 = v7[1];
    v44 = ++v7;
    v45 = v6;
    v42 = v25;
    v25(v11, v6);
    v26 = MEMORY[0x277D84F90];
    v48 = MEMORY[0x277D84F90];
    v27 = sub_2688EFD0C();
    v11 = 0;
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
    while (v27 != v11)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x26D625BD0](v11, a1);
      }

      else
      {
        if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v28 = *(a1 + 8 * v11 + 32);
      }

      v29 = v28;
      v30 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v7 = sub_2688EC6C0(v11, v28);

      ++v11;
      if (v7)
      {
        MEMORY[0x26D6256C0]();
        if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268B37D14();
        }

        sub_268B37D44();
        v26 = v48;
        v11 = v30;
      }
    }

    v31 = v43;
    v32 = v45;
    (v40)(v43, v41, v45);

    v33 = sub_268B37A34();
    v34 = sub_268B37F04();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 134218242;
      *(v35 + 4) = sub_2688EFD0C();

      *(v35 + 12) = 2112;
      type metadata accessor for DeviceContext();
      v37 = sub_268B37CE4();
      *(v35 + 14) = v37;
      *v36 = v37;
      _os_log_impl(&dword_2688BB000, v33, v34, "Returning %ld context(s): %@", v35, 0x16u);
      sub_2688EF38C(v36, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v36, -1, -1);
      MEMORY[0x26D6266E0](v35, -1, -1);
    }

    else
    {
    }

    v38 = v47;
    v42(v31, v32);
    v38(v26);
  }

  else
  {
    if (qword_2802A5030 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v6, qword_2802CDB30);
    v20 = v6;
    (v7[2])(v14, v19, v6);
    v21 = sub_268B37A34();
    v22 = sub_268B37EE4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2688BB000, v21, v22, "Got nil context array", v23, 2u);
      MEMORY[0x26D6266E0](v23, -1, -1);
    }

    (v7[1])(v14, v20);
    return (a2)(MEMORY[0x277D84F90]);
  }
}

id sub_2688EC6C0(uint64_t a1, void *a2)
{
  v4 = sub_268B34614();
  v68 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v67 = (&v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v66 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v64 - v10;
  if (qword_2802A5030 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_2802CDB30);
  v64 = *(v7 + 16);
  v65 = v12;
  v64(v11);
  v13 = a2;
  v14 = sub_268B37A34();
  v15 = sub_268B37F04();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = a1;
    v19 = v4;
    v20 = v17;
    *v16 = 134218242;
    *(v16 + 4) = v18;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v13;
    *v17 = v13;
    v21 = v13;
    _os_log_impl(&dword_2688BB000, v14, v15, "Mapping device context %ld: %@", v16, 0x16u);
    sub_2688EF38C(v20, &qword_2802A6420, &unk_268B3C680);
    v22 = v20;
    v4 = v19;
    MEMORY[0x26D6266E0](v22, -1, -1);
    MEMORY[0x26D6266E0](v16, -1, -1);
  }

  v23 = *(v7 + 8);
  v23(v11, v6);
  v24 = sub_2688EF060(v13, &selRef_serializedContextByKey, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (!v24)
  {
    __break(1u);
    goto LABEL_47;
  }

  v25 = v24;
  v26 = sub_268B37BF4();
  sub_26892E0F4(v25, &v71, v26);

  if (!v72)
  {
    sub_2688EF38C(&v71, &byte_2802A6450, &byte_268B3BE10);
    return 0;
  }

  sub_2688EF2B0(&v71, v75);
  sub_2688EF2C0(v75, &v71);
  v27 = objc_allocWithZone(MEMORY[0x277CEF2F0]);
  v28 = sub_2688EEF14(&v71);
  type metadata accessor for DeviceContext();
  v29 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v30 = sub_26893A824(0, 0xE000000000000000, 0, 0xE000000000000000);
  [v30 setProximity_];
  v31 = [v28 nowPlayingTimestamp];
  if (v31)
  {
    v32 = v67;
    sub_268B345D4();

    v31 = sub_268B34594();
    (v68[1].isa)(v32, v4);
  }

  [v30 setNowPlayingTimestamp_];

  v33 = [v28 playbackState];
  if ((v33 - 2) < 2)
  {
    goto LABEL_21;
  }

  v34 = v33;
  if (v33 != 1)
  {
    if (v33 == 4)
    {
      v35 = v66;
      (v64)(v66, v65, v6);
      v36 = v13;
      v37 = sub_268B37A34();
      v38 = sub_268B37EE4();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v68 = v37;
        v40 = v39;
        v67 = swift_slowAlloc();
        *&v71 = v67;
        *v40 = 136315138;
        v41 = sub_2688EF000(v36, &selRef_mediaRouteIdentifier);
        if (v42)
        {
          v43 = v42;
        }

        else
        {
          v41 = 0;
          v43 = 0xE000000000000000;
        }

        v44 = v38;
        v45 = sub_26892CDB8(v41, v43, &v71);

        *(v40 + 4) = v45;
        v46 = v44;
        v47 = v68;
        _os_log_impl(&dword_2688BB000, v68, v46, "Device %s is in interrupted state, treating as paused.", v40, 0xCu);
        v48 = v67;
        __swift_destroy_boxed_opaque_existential_0Tm(v67);
        MEMORY[0x26D6266E0](v48, -1, -1);
        MEMORY[0x26D6266E0](v40, -1, -1);

        v49 = v66;
      }

      else
      {

        v49 = v35;
      }

      v23(v49, v6);
LABEL_21:
      v34 = 2;
      goto LABEL_22;
    }

    v34 = 0;
  }

LABEL_22:
  [v30 setNowPlayingState_];
  v50 = sub_2688EF000(v28, &selRef_mediaType);
  [v30 setNowPlayingMediaType_];
  v24 = [v30 proximity];
  if ((v24 - 1) < 4)
  {
    goto LABEL_23;
  }

  if (!v24)
  {
    v63 = sub_268AACBE0();
    if (v63 != 7 && sub_268AD3708(v63, &unk_28794EA98))
    {
      [v30 setRouteId_];
      goto LABEL_27;
    }

LABEL_23:
    sub_2688EF000(v13, &selRef_mediaRouteIdentifier);
    if (v52)
    {
      v53 = sub_268B37BC4();
    }

    else
    {
      v53 = 0;
    }

    [v30 setRouteId_];

LABEL_27:
    sub_2688EF000(v28, &selRef_groupIdentifier);
    if (v54)
    {
      v55 = sub_268B37BC4();
    }

    else
    {
      v55 = 0;
    }

    [v30 setGroupId_];

    sub_2688EF000(v13, &selRef_roomName);
    if (v56)
    {
      v57 = sub_268B37BC4();
    }

    else
    {
      v57 = 0;
    }

    [v30 setRoomName_];

    v58 = sub_2688EF060(v13, &selRef_metricsContext, MEMORY[0x277D84030], MEMORY[0x277D84038]);
    if (v58)
    {
      v59 = v58;
      v69 = 0x54746375646F7270;
      v70 = 0xEB00000000657079;
      sub_268B38164();
      sub_26892E294(v59, &v73, &v71);

      sub_2688EF510(&v71);
      if (*(&v74 + 1))
      {
        if (swift_dynamicCast())
        {
          v60 = sub_268B37BC4();

LABEL_40:
          [v30 setDeviceType_];

          [v28 isProxyGroupPlayer];
          v61 = sub_268B37D64();
          [v30 setSilentPrimary_];

          __swift_destroy_boxed_opaque_existential_0Tm(v75);
          return v30;
        }

LABEL_39:
        v60 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      v73 = 0u;
      v74 = 0u;
    }

    sub_2688EF38C(&v73, &byte_2802A6450, &byte_268B3BE10);
    goto LABEL_39;
  }

LABEL_47:
  *&v71 = v24;
  result = sub_268B38474();
  __break(1u);
  return result;
}

uint64_t sub_2688ECF44()
{
  OUTLINED_FUNCTION_0_3();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_1_2(v0);
  sub_26899729C("fetchQuickStopContext", 21, 2, 1);
}

uint64_t sub_2688ECFDC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3C0C0;
  *(inited + 32) = sub_268B37BF4();
  *(inited + 40) = v8;
  *(inited + 48) = sub_268B37BF4();
  *(inited + 56) = v9;
  *(inited + 64) = sub_268B37BF4();
  *(inited + 72) = v10;
  *(inited + 80) = sub_268B37BF4();
  *(inited + 88) = v11;
  *(inited + 96) = sub_268B37BF4();
  *(inited + 104) = v12;
  *(inited + 112) = sub_268B37BF4();
  *(inited + 120) = v13;

  sub_268A63AD8(inited);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2688EF17C;
  *(v14 + 24) = v6;
  sub_268B36B64();
}

uint64_t sub_2688ED16C(uint64_t a1, void (*a2)(uint64_t), unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5AA0, &unk_268B3C150);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - v7;
  v65 = type metadata accessor for QuickStopContext(0);
  v61 = *(v65 - 8);
  v9 = MEMORY[0x28223BE20](v65);
  v63 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v60 = &v52 - v11;
  v12 = sub_268B37A54();
  v13 = *(v12 - 1);
  v14 = MEMORY[0x28223BE20](v12);
  v62 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  if (a1)
  {
    if (qword_2802A5030 != -1)
    {
LABEL_31:
      swift_once();
    }

    v21 = __swift_project_value_buffer(v12, qword_2802CDB30);
    v22 = *(v13 + 16);
    v53 = v21;
    v54 = v13 + 16;
    v52 = v22;
    (v22)(v18);

    v23 = sub_268B37A34();
    v24 = sub_268B37F04();
    v25 = os_log_type_enabled(v23, v24);
    v58 = a3;
    v59 = a2;
    if (v25)
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = sub_2688EFD0C();

      _os_log_impl(&dword_2688BB000, v23, v24, "Got QuickStop context for %ld devices", v26, 0xCu);
      MEMORY[0x26D6266E0](v26, -1, -1);
    }

    else
    {
    }

    v32 = *(v13 + 8);
    v56 = v13 + 8;
    v57 = v12;
    v55 = v32;
    v32(v18, v12);
    v18 = sub_2688EFD0C();
    v13 = 0;
    a2 = (a1 & 0xC000000000000001);
    v64 = MEMORY[0x277D84F90];
    v12 = &qword_2802A5AA0;
    while (v18 != v13)
    {
      if (a2)
      {
        v33 = MEMORY[0x26D625BD0](v13, a1);
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v33 = *(a1 + 8 * v13 + 32);
      }

      v34 = v33;
      a3 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_2688ED84C(v13, v33, v8);

      if (__swift_getEnumTagSinglePayload(v8, 1, v65) == 1)
      {
        sub_2688EF38C(v8, &qword_2802A5AA0, &unk_268B3C150);
        ++v13;
      }

      else
      {
        v35 = v60;
        sub_2688EF18C(v8, v60);
        sub_2688EF18C(v35, v63);
        v36 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_268987AD4();
          v36 = v41;
        }

        v38 = *(v36 + 16);
        v37 = *(v36 + 24);
        v64 = v36;
        if (v38 >= v37 >> 1)
        {
          sub_268987AD4();
          v64 = v42;
        }

        v39 = v63;
        v40 = v64;
        *(v64 + 16) = v38 + 1;
        sub_2688EF18C(v39, v40 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v38);
        v13 = a3;
      }
    }

    v43 = v62;
    v44 = v57;
    v52(v62, v53, v57);
    v45 = v64;

    v46 = sub_268B37A34();
    v47 = sub_268B37F04();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 134218242;
      *(v48 + 4) = *(v45 + 16);

      *(v48 + 12) = 2112;
      v50 = sub_268B37CE4();
      *(v48 + 14) = v50;
      *v49 = v50;
      _os_log_impl(&dword_2688BB000, v46, v47, "Returning %ld QuickStop context(s): %@", v48, 0x16u);
      sub_2688EF38C(v49, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v49, -1, -1);
      MEMORY[0x26D6266E0](v48, -1, -1);
    }

    else
    {
    }

    v51 = v59;
    v55(v43, v44);
    v51(v45);
  }

  else
  {
    if (qword_2802A5030 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v12, qword_2802CDB30);
    (*(v13 + 16))(v20, v27, v12);
    v28 = sub_268B37A34();
    v29 = sub_268B37EE4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2688BB000, v28, v29, "Got nil context array", v30, 2u);
      MEMORY[0x26D6266E0](v30, -1, -1);
    }

    (*(v13 + 8))(v20, v12);
    return (a2)(MEMORY[0x277D84F90]);
  }
}

char *sub_2688ED84C@<X0>(char *a1@<X0>, SEL *a2@<X1>, uint64_t a3@<X8>)
{
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5AA8, qword_268B3C160);
  v6 = MEMORY[0x28223BE20](v129);
  v128 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v127 = &v112 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v115 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v125 = (&v112 - v13);
  v14 = MEMORY[0x28223BE20](v12);
  v117 = &v112 - v15;
  MEMORY[0x28223BE20](v14);
  v126 = &v112 - v16;
  v130 = sub_268B34614();
  v116 = *(v130 - 1);
  v17 = MEMORY[0x28223BE20](v130);
  v113 = &v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v114 = &v112 - v19;
  v20 = sub_268B34674();
  v21 = *(v20 - 8);
  v131 = v20;
  v132 = v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for QuickStopContext(0);
  MEMORY[0x28223BE20](v123);
  v122 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_268B37A54();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A5030 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v121 = a3;
    v29 = __swift_project_value_buffer(v25, qword_2802CDB30);
    (*(v26 + 16))(v28, v29, v25);
    v30 = a2;
    v31 = sub_268B37A34();
    v32 = sub_268B37F04();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 134218242;
      *(v33 + 4) = a1;
      *(v33 + 12) = 2112;
      *(v33 + 14) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&dword_2688BB000, v31, v32, "Mapping device context %ld: %@", v33, 0x16u);
      sub_2688EF38C(v34, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v34, -1, -1);
      MEMORY[0x26D6266E0](v33, -1, -1);
    }

    (*(v26 + 8))(v28, v25);
    result = [(SEL *)v30 identifier];
    if (!result)
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v37 = result;
    sub_268B34654();

    v124 = v30;
    v38 = [(SEL *)v30 proximity];
    a1 = v122;
    v39 = v123;
    v40 = *(v123 + 24);
    v122[v40] = 0;
    v112 = v39[7];
    a1[v112] = 0;
    v41 = v39[8];
    v42 = v130;
    __swift_storeEnumTagSinglePayload(&a1[v41], 1, 1, v130);
    a3 = v39[9];
    __swift_storeEnumTagSinglePayload(&a1[a3], 1, 1, v42);
    v118 = v39[10];
    a1[v118] = 0;
    v120 = v39[11];
    a1[v120] = 0;
    v119 = v39[12];
    a1[v119] = 0;
    v43 = v39[13];
    v43[a1] = 0;
    v44 = v39[14];
    a1[v44] = 0;
    (*(v132 + 32))(a1, v23, v131);
    if (v38 == 1000)
    {
      v46 = 3;
      goto LABEL_13;
    }

    if (v38 == 2000)
    {
      v46 = 2;
LABEL_13:
      v45 = v124;
      goto LABEL_15;
    }

    v45 = v124;
    if (v38 == 4000)
    {
      v46 = 0;
    }

    else
    {
      v46 = v38 == 3000 ? 1 : 4;
    }

LABEL_15:
    *&a1[v39[5]] = v46;
    result = sub_2688EF060(v45, &selRef_serializedContextByKey, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    if (!result)
    {
      goto LABEL_78;
    }

    v47 = result;
    v48 = sub_268B37BF4();
    sub_26892E0F4(v47, v133, v48);

    if (v134)
    {
      sub_2688EF2B0(v133, v135);
      sub_2688EF2C0(v135, v133);
      v49 = objc_allocWithZone(MEMORY[0x277CEF1C8]);
      v50 = sub_2688EEF14(v133);
      if ([v50 callState] == 1)
      {
        v51 = [v50 isDropInCall];

        __swift_destroy_boxed_opaque_existential_0Tm(v135);
        if (v51)
        {
          a1[v44] = 1;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v135);
      }
    }

    else
    {
      sub_2688EF38C(v133, &byte_2802A6450, &byte_268B3BE10);
    }

    result = sub_2688EF060(v45, &selRef_serializedContextByKey, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    if (!result)
    {
      goto LABEL_79;
    }

    v52 = result;
    v53 = sub_268B37BF4();
    sub_26892E0F4(v52, v133, v53);

    a2 = &unk_279C42000;
    if (!v134)
    {
      v61 = &byte_2802A6450;
      v62 = &byte_268B3BE10;
      v63 = v133;
      goto LABEL_34;
    }

    sub_2688EF2B0(v133, v135);
    sub_2688EF2C0(v135, v133);
    v54 = objc_allocWithZone(MEMORY[0x277CEF1F0]);
    v55 = sub_2688EEF14(v133);
    if (![v55 hasFiringAlarms])
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v135);

      goto LABEL_35;
    }

    v56 = [v55 mostRecentFiringAlarm];
    if (!v56)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v135);

      v64 = v126;
      __swift_storeEnumTagSinglePayload(v126, 1, 1, v130);
LABEL_33:
      v61 = &unk_2802A7350;
      v62 = qword_268B3FF10;
      v63 = v64;
LABEL_34:
      sub_2688EF38C(v63, v61, v62);
      goto LABEL_35;
    }

    v57 = v56;
    v58 = [v56 firedDate];

    if (v58)
    {
      v59 = v117;
      sub_268B345D4();

      __swift_destroy_boxed_opaque_existential_0Tm(v135);
      v60 = 0;
      v45 = v124;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v135);

      v60 = 1;
      v45 = v124;
      v59 = v117;
    }

    v65 = v59;
    v66 = v59;
    v67 = v130;
    __swift_storeEnumTagSinglePayload(v65, v60, 1, v130);
    v68 = v66;
    v64 = v126;
    sub_2688EF3EC(v68, v126);
    if (__swift_getEnumTagSinglePayload(v64, 1, v67) == 1)
    {
      goto LABEL_33;
    }

    v76 = v116[4];
    v117 = v43;
    v77 = a3;
    v78 = v114;
    v79 = v64;
    v80 = v130;
    v76(v114, v79, v130);
    a1[v40] = 1;
    sub_2688EF38C(&a1[v41], &unk_2802A7350, qword_268B3FF10);
    v81 = v78;
    a3 = v77;
    v43 = v117;
    v76(&a1[v41], v81, v80);
    a2 = &unk_279C42000;
    __swift_storeEnumTagSinglePayload(&a1[v41], 0, 1, v80);
LABEL_35:
    result = sub_2688EF060(v45, &selRef_serializedContextByKey, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    if (!result)
    {
      goto LABEL_80;
    }

    v25 = result;
    v69 = sub_268B37BF4();
    sub_26892E0F4(v25, v133, v69);

    if (!v134)
    {
      break;
    }

    sub_2688EF2B0(v133, v135);
    sub_2688EF2C0(v135, v133);
    v28 = objc_allocWithZone(MEMORY[0x277CEF208]);
    v70 = sub_2688EEF14(v133);
    if (![v70 hasFiringTimers])
    {
      goto LABEL_48;
    }

    v71 = [v70 mostRecentFiringTimer];
    if (!v71)
    {
      a2 = v125;
      __swift_storeEnumTagSinglePayload(v125, 1, 1, v130);
LABEL_46:
      sub_2688EF38C(a2, &unk_2802A7350, qword_268B3FF10);
      goto LABEL_48;
    }

    v72 = v71;
    v73 = [v71 a2[488]];

    if (v73)
    {
      v28 = v115;
      sub_268B345D4();

      v74 = 0;
    }

    else
    {
      v74 = 1;
      v28 = v115;
    }

    v25 = 1;
    v82 = v130;
    __swift_storeEnumTagSinglePayload(v28, v74, 1, v130);
    a2 = v125;
    sub_2688EF3EC(v28, v125);
    if (__swift_getEnumTagSinglePayload(a2, 1, v82) == 1)
    {
      goto LABEL_46;
    }

    v28 = v116[4];
    v83 = v113;
    (v28)(v113, a2, v82);
    a1[v112] = 1;
    sub_2688EF38C(&a1[a3], &unk_2802A7350, qword_268B3FF10);
    (v28)(&a1[a3], v83, v82);
    __swift_storeEnumTagSinglePayload(&a1[a3], 0, 1, v82);
LABEL_48:
    v117 = v43;
    v116 = v70;
    result = sub_2688EF0D0(v70);
    if (!result)
    {
      goto LABEL_84;
    }

    v84 = result + 64;
    v85 = 1 << result[32];
    v86 = -1;
    if (v85 < 64)
    {
      v86 = ~(-1 << v85);
    }

    v23 = v86 & *(result + 8);
    v26 = (v85 + 63) >> 6;
    v125 = (v132 + 8);
    v126 = v132 + 16;
    v130 = result;

    v87 = 0;
    v88 = v131;
    while (v23)
    {
      v89 = v87;
LABEL_58:
      v90 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v91 = v90 | (v89 << 6);
      v92 = v130;
      v25 = v132;
      v28 = v127;
      (*(v132 + 16))(v127, *(v130 + 6) + *(v132 + 72) * v91, v88);
      v93 = *(*(v92 + 7) + 8 * v91);
      a1 = v128;
      v94 = v129;
      *&v28[*(v129 + 48)] = v93;
      sub_2688EF31C(v28, a1);
      a3 = *&a1[*(v94 + 48)];
      v95 = v93;
      a2 = [a3 state];

      sub_2688EF38C(v28, &qword_2802A5AA8, qword_268B3C160);
      (*(v25 + 8))(a1, v88);
      if (a2 == 3)
      {
        v96 = 1;
LABEL_61:
        __swift_destroy_boxed_opaque_existential_0Tm(v135);

        v75 = v121;
        a1 = v122;
        v122[v118] = v96;
        v39 = v123;
        v45 = v124;
        v43 = v117;
        goto LABEL_62;
      }
    }

    while (1)
    {
      v89 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        break;
      }

      if (v89 >= v26)
      {
        v96 = 0;
        goto LABEL_61;
      }

      v23 = *&v84[8 * v89];
      ++v87;
      if (v23)
      {
        v87 = v89;
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_76:
    swift_once();
  }

  sub_2688EF38C(v133, &byte_2802A6450, &byte_268B3BE10);
  v75 = v121;
LABEL_62:
  result = sub_2688EF060(v45, &selRef_serializedContextByKey, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (!result)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    return result;
  }

  v97 = result;
  v98 = sub_268B37BF4();
  sub_26892E0F4(v97, v133, v98);

  if (v134)
  {
    sub_2688EF2B0(v133, v135);
    sub_2688EF2C0(v135, v133);
    v99 = objc_allocWithZone(MEMORY[0x277CEF2F0]);
    v100 = sub_2688EEF14(v133);
    v101 = [v100 playbackState];

    __swift_destroy_boxed_opaque_existential_0Tm(v135);
    a1[v120] = v101 == 1;
  }

  else
  {
    sub_2688EF38C(v133, &byte_2802A6450, &byte_268B3BE10);
  }

  result = sub_2688EF060(v45, &selRef_serializedContextByKey, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (!result)
  {
    goto LABEL_82;
  }

  v102 = result;
  v103 = sub_268B37BF4();
  sub_26892E0F4(v102, v133, v103);

  if (v134)
  {
    sub_2688EF2B0(v133, v135);
    sub_2688EF2C0(v135, v133);
    v104 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v105 = sub_2688EEF14(v133);
    v106 = [v105 unsignedLongLongValue];

    __swift_destroy_boxed_opaque_existential_0Tm(v135);
    a1[v119] = (v106 & 8) != 0;
  }

  else
  {
    sub_2688EF38C(v133, &byte_2802A6450, &byte_268B3BE10);
  }

  result = sub_2688EF060(v45, &selRef_serializedContextByKey, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  if (!result)
  {
    goto LABEL_83;
  }

  v107 = result;
  v108 = sub_268B37BF4();
  sub_26892E0F4(v107, v133, v108);

  if (v134)
  {
    sub_2688EF2B0(v133, v135);
    sub_2688EF2C0(v135, v133);
    v109 = objc_allocWithZone(MEMORY[0x277CEF2B8]);
    v110 = sub_2688EEF14(v133);
    v111 = [v110 state];

    __swift_destroy_boxed_opaque_existential_0Tm(v135);
    v43[a1] = v111 == 1;
  }

  else
  {
    sub_2688EF38C(v133, &byte_2802A6450, &byte_268B3BE10);
  }

  sub_2688EF1F0(a1, v75);
  __swift_storeEnumTagSinglePayload(v75, 0, 1, v39);
  return sub_2688EF254(a1);
}

uint64_t sub_2688EE874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_3();
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_2689972F8("mapDevicesToAFServiceDeviceContext", 34, 2, 0);
}

uint64_t sub_2688EE928(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5790, &unk_268B3E810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268B3BBC0;
  *(inited + 32) = sub_268B37BF4();
  *(inited + 40) = v10;

  sub_268A63AD8(inited);
  v11 = swift_allocObject();
  v11[2] = sub_2688E19F8;
  v11[3] = v8;
  v11[4] = a4;

  sub_268B36B64();
}

uint64_t sub_2688EEA6C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v28[1] = a3;
  v5 = sub_268B37A54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v28[0] = a2;
    v31 = MEMORY[0x277D84F90];
    v9 = sub_2688EFD0C();
    v10 = v9;
    v11 = 0;
    v12 = a1 & 0xC000000000000001;
    while (v10 != v11)
    {
      sub_2688EFD10();
      if (v12)
      {
        v13 = MEMORY[0x26D625BD0](v11, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v11 + 32);
      }

      v14 = v13;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v15 = sub_2688EF000(v13, &selRef_mediaRouteIdentifier);
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      v29 = v17;
      v30 = v18;
      MEMORY[0x28223BE20](v15);
      v28[-2] = &v29;
      v19 = sub_268ACD018();

      if (v19)
      {
        sub_268B38214();
        sub_268B38244();
        sub_268B38254();
        v9 = sub_268B38224();
      }

      else
      {
      }

      ++v11;
    }

    v11 = v31;
    if (qword_2802A50C0 == -1)
    {
      goto LABEL_19;
    }

LABEL_41:
    v9 = swift_once();
LABEL_19:
    v29 = qword_2802CDB48;
    v30 = unk_2802CDB50;
    MEMORY[0x28223BE20](v9);
    v28[-2] = &v29;
    if (sub_268ACD018())
    {
      for (i = 0; v10 != i; ++i)
      {
        if (v12)
        {
          v21 = MEMORY[0x26D625BD0](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v21 = *(a1 + 8 * i + 32);
        }

        v22 = v21;
        if (__OFADD__(i, 1))
        {
          goto LABEL_39;
        }

        if ([v21 proximity] == 4000)
        {
          MEMORY[0x26D6256C0]();
          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_268B37D14();
          }

          sub_268B37D44();
          v11 = v31;
          break;
        }
      }
    }

    (v28[0])(v11);
  }

  else
  {
    if (qword_2802A5030 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v5, qword_2802CDB30);
    (*(v6 + 16))(v8, v23, v5);
    v24 = sub_268B37A34();
    v25 = sub_268B37EE4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2688BB000, v24, v25, "Got nil context array", v26, 2u);
      MEMORY[0x26D6266E0](v26, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    return a2(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_2688EEED8()
{

  OUTLINED_FUNCTION_0_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

id sub_2688EEF14(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = [v1 initWithSerializedBackingStore_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v3;
}

uint64_t sub_2688EEFB4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2688EF000(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_268B37BF4();

  return v4;
}

uint64_t sub_2688EF060(void *a1, SEL *a2, uint64_t a3, uint64_t a4)
{
  v4 = [a1 *a2];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_268B37B64();

  return v6;
}

uint64_t sub_2688EF0D0(void *a1)
{
  v1 = [a1 timersByID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_268B34674();
  sub_2688EF45C();
  sub_2688EF4A0();
  v3 = sub_268B37B64();

  return v3;
}

uint64_t sub_2688EF18C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickStopContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2688EF1F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickStopContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2688EF254(uint64_t a1)
{
  v2 = type metadata accessor for QuickStopContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_OWORD *sub_2688EF2B0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2688EF2C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2688EF31C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5AA8, qword_268B3C160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2688EF38C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2688EF3EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2688EF45C()
{
  result = qword_2802A5AB0;
  if (!qword_2802A5AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A5AB0);
  }

  return result;
}

unint64_t sub_2688EF4A0()
{
  result = qword_2802A5AB8;
  if (!qword_2802A5AB8)
  {
    sub_268B34674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802A5AB8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_2(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

Swift::String_optional __swiftcall UsoTask_repeat_common_MediaItem.verb()()
{
  v0 = 0x746165706572;
  v1 = 0xE600000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

unint64_t UsoTask_repeat_common_MediaItem.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    result = sub_2688EFBD0(result);
    if (result)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
        goto LABEL_6;
      }

      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

LABEL_6:

        sub_268B35B44();

        return v2;
      }

      __break(1u);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2688EF738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2688EF78C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2688EF7E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2688EF834(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2688EF888(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2688EF8DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2688EF930(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2688EF984(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2688EF9E8(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2688EFA3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2688EFAA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2688EFB04(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2688EFB68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_2688EFBD0(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_268B382A4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_2688EFBF8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2688EFC1C(uint64_t a1)
{
  result = sub_2688EFCC8(&qword_2802A5AC0, &protocol conformance descriptor for UsoTask_repeat_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2688EFCC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B36134();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::String_optional __swiftcall UsoTask_skipBackward_common_MediaItem.verb()()
{
  v0 = 0x73756F6976657270;
  v1 = 0xE800000000000000;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t UsoTask_skipBackward_common_MediaItem.referencedSetting()()
{
  result = sub_268B36304();
  if (result)
  {
    v1 = result;
    if (sub_2688EFD0C())
    {
      sub_2688EFD10();
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D625BD0](0, v1);
      }

      else
      {
      }

      sub_268B35B44();

      return v2;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_2688EFE58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4498](a1, WitnessTable);
}

uint64_t sub_2688EFEAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4478](a1, WitnessTable);
}

uint64_t sub_2688EFF00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A0](a1, WitnessTable);
}

uint64_t sub_2688EFF54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D0](a1, WitnessTable);
}

uint64_t sub_2688EFFA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C0](a1, WitnessTable);
}

uint64_t sub_2688EFFFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44C8](a1, WitnessTable);
}

uint64_t sub_2688F0050(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B373B4();
}

uint64_t sub_2688F00A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44D8](a1, WitnessTable);
}

void sub_2688F0108(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x26D624DF0);
}

uint64_t sub_2688F015C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44A8](a1, WitnessTable);
}

uint64_t sub_2688F01C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C4488](a1, WitnessTable);
}

uint64_t sub_2688F0224(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_268B37364();
}

uint64_t sub_2688F0288(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821C44B0](a1, WitnessTable);
}

uint64_t sub_2688F02EC(uint64_t a1)
{
  result = sub_2688F0398(&qword_2802A5AD8, &protocol conformance descriptor for UsoTask_skipBackward_common_MediaItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2688F0398(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268B364B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2688F050C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  __swift_project_value_buffer(v9, qword_2802CDA10);
  OUTLINED_FUNCTION_6_2();
  v16(v15);
  v17 = sub_268B37A34();
  v18 = sub_268B37ED4();
  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_64();
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_8_2();
    _os_log_impl(v19, v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  (*(v11 + 8))(v15, v9);
  sub_2688F072C(type metadata accessor for Device);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A56A8, &qword_268B3BCB0);
  swift_allocObject();
  v26 = sub_268B35404();
  v27 = 0;
  a7(&v26);
}

uint64_t sub_2688F072C(void (*a1)(void))
{
  v3 = [v1 disambiguationItems];
  v4 = sub_268B37CF4();

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v7 = *(v4 + 16);
LABEL_2:
  v8 = v4 + 32 + 32 * v5;
  while (1)
  {
    if (v7 == v5)
    {

      return v6;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    sub_2688EF2C0(v8, v12);
    v9 = sub_2688F1C54(v12, a1);
    ++v5;
    v8 += 32;
    v10 = __swift_destroy_boxed_opaque_existential_0Tm(v12);
    if (v9)
    {
      MEMORY[0x26D6256C0](v10);
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
      v6 = v13;
      goto LABEL_2;
    }
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_0Tm(v12);

  __break(1u);
  return result;
}

id sub_2688F088C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v46 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v47 = v10 - v9;
  v11 = *a1;
  v16 = Device.namedEntities.getter();
  v17 = *(v16 + 16);
  if (v17)
  {
    v43 = a2;
    v44 = v6;
    v45 = a3;
    v48 = MEMORY[0x277D84F90];
    sub_26894470C(0, v17, 0, v12, v13, v14, v15);
    v18 = v48;
    v19 = v16 + 40;
    do
    {
      v24 = sub_268B37C34();
      v26 = v25;
      v28 = *(v48 + 16);
      v27 = *(v48 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_26894470C(v27 > 1, v28 + 1, 1, v20, v21, v22, v23);
      }

      *(v48 + 16) = v28 + 1;
      v29 = v48 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v19 += 16;
      --v17;
    }

    while (v17);

    a3 = v45;
    v6 = v44;
    a2 = v43;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  sub_26893E6A8(v18);
  v31 = v30;

  v32 = sub_2688F20B0(v31, a2);

  v33 = v32[2];

  if (v33)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    v35 = __swift_project_value_buffer(v6, qword_2802CDA10);
    (*(v46 + 16))(v47, v35, v6);
    v36 = v11;
    v37 = sub_268B37A34();
    v38 = sub_268B37F04();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = v6;
      v41 = swift_slowAlloc();
      *v39 = 138412290;
      *(v39 + 4) = v36;
      *v41 = v36;
      v42 = v36;
      _os_log_impl(&dword_2688BB000, v37, v38, "User selection matched device: %@", v39, 0xCu);
      sub_2688C058C(v41, &qword_2802A6420, &unk_268B3C680);
      v6 = v40;
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
      OUTLINED_FUNCTION_55();
      MEMORY[0x26D6266E0]();
    }

    (*(v46 + 8))(v47, v6);
    *a3 = v36;
    return v36;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_2688F0BA4(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v2 = sub_268B371E4();
  OUTLINED_FUNCTION_1();
  v44 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v40 = v6 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5AF0, &unk_268B3C500);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v10 = sub_268B37034();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F0, &unk_268B3BEC0);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  v22 = OUTLINED_FUNCTION_22(v21);
  v23 = MEMORY[0x28223BE20](v22);
  v41 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v39 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v39 - v28;
  Device.deviceType.getter(v20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v10))
  {
    sub_2688C058C(v20, &qword_2802A58F0, &unk_268B3BEC0);
    __swift_storeEnumTagSinglePayload(v29, 1, 1, v2);
  }

  else
  {
    (*(v12 + 16))(v16, v20, v10);
    sub_2688C058C(v20, &qword_2802A58F0, &unk_268B3BEC0);
    sub_268B36FE4();
    (*(v12 + 8))(v16, v10);
  }

  v30 = v44;
  (*(v44 + 16))(v27, v43, v2);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v2);
  v31 = *(v42 + 48);
  sub_2688F1FA4(v29, v9, &qword_2802A58F8, &unk_268B3C510);
  sub_2688F1FA4(v27, &v9[v31], &qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_13_2(v9);
  if (!v34)
  {
    v33 = v41;
    sub_2688F1FA4(v9, v41, &qword_2802A58F8, &unk_268B3C510);
    OUTLINED_FUNCTION_13_2(&v9[v31]);
    if (!v34)
    {
      v35 = &v9[v31];
      v36 = v40;
      (*(v30 + 32))(v40, v35, v2);
      sub_2688F2004(&qword_2802A5AF8, MEMORY[0x277D5F7E0], MEMORY[0x277D5F7F0]);
      v32 = sub_268B37BB4();
      v37 = *(v30 + 8);
      v37(v36, v2);
      sub_2688C058C(v27, &qword_2802A58F8, &unk_268B3C510);
      sub_2688C058C(v29, &qword_2802A58F8, &unk_268B3C510);
      v37(v41, v2);
      sub_2688C058C(v9, &qword_2802A58F8, &unk_268B3C510);
      return v32 & 1;
    }

    OUTLINED_FUNCTION_12_2(v27);
    OUTLINED_FUNCTION_12_2(v29);
    (*(v30 + 8))(v33, v2);
LABEL_12:
    sub_2688C058C(v9, &qword_2802A5AF0, &unk_268B3C500);
    v32 = 0;
    return v32 & 1;
  }

  OUTLINED_FUNCTION_12_2(v27);
  OUTLINED_FUNCTION_12_2(v29);
  OUTLINED_FUNCTION_13_2(&v9[v31]);
  if (!v34)
  {
    goto LABEL_12;
  }

  sub_2688C058C(v9, &qword_2802A58F8, &unk_268B3C510);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_2688F10B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v5[12] = v6;
  OUTLINED_FUNCTION_22(v6);
  v5[13] = OUTLINED_FUNCTION_11_1();
  v7 = sub_268B34DA4();
  OUTLINED_FUNCTION_22(v7);
  v5[14] = OUTLINED_FUNCTION_11_1();
  v8 = sub_268B35374();
  v5[15] = v8;
  OUTLINED_FUNCTION_19_0(v8);
  v5[16] = v9;
  v5[17] = OUTLINED_FUNCTION_11_1();
  v10 = sub_268B367A4();
  v5[18] = v10;
  OUTLINED_FUNCTION_19_0(v10);
  v5[19] = v11;
  v5[20] = OUTLINED_FUNCTION_11_1();
  v12 = sub_268B37A54();
  v5[21] = v12;
  OUTLINED_FUNCTION_19_0(v12);
  v5[22] = v13;
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2688F1268, 0, 0);
}

uint64_t sub_2688F1268()
{
  v50 = v0;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = v0[12].i64[0];
  v2 = v0[10].i64[1];
  v3 = v0[11].i64[0];
  v4 = __swift_project_value_buffer(v2, qword_2802CDA10);
  v47 = *(v3 + 16);
  v47(v1, v4, v2);

  v5 = sub_268B37A34();
  v6 = sub_268B37EC4();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[12].i64[0];
  v9 = v0[10].i64[1];
  v10 = v0[11].i64[0];
  if (v7)
  {
    v44 = v0[10].i64[1];
    v45 = v4;
    v11 = v0[9].i64[1];
    v12 = v0[10].i64[0];
    v42 = v0[9].i64[0];
    v43 = v0[12].i64[0];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v49 = v14;
    *v13 = 136315138;
    sub_268B36714();
    sub_268B36B14();

    v15 = sub_268B36784();
    v17 = v16;
    v18 = v12;
    v4 = v45;
    (*(v11 + 8))(v18, v42);
    v19 = sub_26892CDB8(v15, v17, &v49);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_2688BB000, v5, v6, "DeviceDisambiguationStrategy.provideOutput with responseMode = %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();

    v20 = *(v10 + 8);
    v20(v43, v44);
  }

  else
  {

    v20 = *(v10 + 8);
    v20(v8, v9);
  }

  v21 = v0[11].i64[1];
  v22 = v0[10].i64[1];
  v23 = v0[5].i64[0];
  v46 = v0[4];
  sub_268B34D64();
  v24 = swift_task_alloc();
  v24[1] = vextq_s8(v46, v46, 8uLL);
  v24[2].i64[0] = v23;
  sub_268B352C4();

  v47(v21, v4, v22);
  v25 = sub_268B37A34();
  v26 = sub_268B37F04();
  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_64();
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2688BB000, v25, v26, "DeviceDisambiguationStrategy.provideOutput creating confirmationViewOutput using RF 2.0", v27, 2u);
    OUTLINED_FUNCTION_55();
    MEMORY[0x26D6266E0]();
  }

  v28 = v0[11].i64[1];
  v29 = v0[10].i64[1];
  v31 = v0[6].i64[0];
  v30 = v0[6].i64[1];
  v32 = v0[5].i64[0];
  v33 = v0[5].i64[1];

  v20(v28, v29);
  sub_268B35094();
  swift_allocObject();
  v0[12].i64[1] = sub_268B35084();
  v34 = sub_268B36A54();
  v0[2].i64[1] = v34;
  v0[3].i64[0] = sub_2688F2004(&qword_2802A6470, MEMORY[0x277D55560], MEMORY[0x277D55540]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0[1].i64);
  (*(*(v34 - 8) + 16))(boxed_opaque_existential_1, v33, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v36 = swift_allocObject();
  v0[13].i64[0] = v36;
  *(v36 + 16) = xmmword_268B3BBA0;
  sub_2688F1FA4(v32, v30, &unk_2802A56E0, &unk_268B3CDF0);
  *(v36 + 32) = *(v30 + *(v31 + 48));
  sub_268B350F4();
  OUTLINED_FUNCTION_4();
  (*(v37 + 8))(v30);
  v48 = (*MEMORY[0x277D5BD38] + MEMORY[0x277D5BD38]);
  v38 = swift_task_alloc();
  v0[13].i64[1] = v38;
  *v38 = v0;
  v38[1] = sub_2688F173C;
  v39 = v0[8].i64[1];
  v40 = v0[3].i64[1];

  return v48(v40, v0 + 1, v36, v39);
}

uint64_t sub_2688F173C()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));

  return MEMORY[0x2822009F8](sub_2688F1880, 0, 0);
}

uint64_t sub_2688F1880()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2688F1944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v22 = sub_268B34E54();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A56E0, &unk_268B3CDF0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = sub_268B367A4();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A57F0, &qword_268B3DDB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v21 - v14;
  v16 = sub_268B35044();
  (*(*(v16 - 8) + 16))(v15, a2, v16);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  sub_268B35314();
  sub_268B35344();
  sub_268B35304();
  sub_268B36714();
  sub_268B36B14();

  sub_268B352D4();
  sub_2688F1FA4(v21, v11, &unk_2802A56E0, &unk_268B3CDF0);
  v17 = *&v11[*(v9 + 56)];
  v18 = [v17 catId];

  sub_268B37BF4();
  sub_268B352F4();
  v19 = sub_268B350F4();
  (*(*(v19 - 8) + 8))(v11, v19);
  (*(v5 + 104))(v7, *MEMORY[0x277D5BC50], v22);
  return sub_268B352E4();
}

id sub_2688F1C54(uint64_t a1, void (*a2)(void))
{
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - v11;
  sub_2688EF2C0(a1, v38);
  v13 = (a2)(0);
  if (!OUTLINED_FUNCTION_10_2(v13, v14, v15, v13))
  {
    sub_2688EF2C0(a1, v38);
    v17 = sub_2688F28C8();
    if (OUTLINED_FUNCTION_10_2(v17, v18, v19, v17))
    {
      v20 = v37;
      v21 = INTypedObjectWithCustomObject();
      if (v21)
      {
        v16 = v21;

        return v16;
      }

      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_2802CDA10);
      OUTLINED_FUNCTION_6_2();
      v26(v10);
      v27 = sub_268B37A34();
      v28 = sub_268B37EE4();
      if (os_log_type_enabled(v27, v28))
      {
        OUTLINED_FUNCTION_64();
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_8_2();
        _os_log_impl(v29, v30, v31, v32, v33, v34);
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      else
      {
      }

      (*(v6 + 8))(v10, v4);
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_2802CDA10);
      OUTLINED_FUNCTION_6_2();
      v22(v12);
      v23 = sub_268B37A34();
      v24 = sub_268B37EE4();
      if (os_log_type_enabled(v23, v24))
      {
        OUTLINED_FUNCTION_64();
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_2688BB000, v23, v24, "Unexpected disambiguation item type", v25, 2u);
        OUTLINED_FUNCTION_55();
        MEMORY[0x26D6266E0]();
      }

      (*(v6 + 8))(v12, v4);
    }

    return 0;
  }

  return v37;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_2688F1FA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2688F2004(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2688F204C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_268B3C470;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t *sub_2688F20B0(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = (v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_2688F204C(0, v6, v8);
    v9 = sub_2688F2308(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_2688F2278(v11, v6, a2, a1);

    MEMORY[0x26D6266E0](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_2688F2278(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_2688F2308(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_2688F2308(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      sub_268B38514();

      sub_268B37C54();
      v40 = sub_268B38544();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = sub_268B38444();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return sub_2688F26AC(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      sub_268B38514();

      sub_268B37C54();
      v18 = sub_268B38544();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = sub_268B38444();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

uint64_t sub_2688F26AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B00, qword_268B3C520);
  result = sub_268B38194();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_268B38514();

    sub_268B37C54();
    result = sub_268B38544();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_2688F28C8()
{
  result = qword_2802A5B08;
  if (!qword_2802A5B08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802A5B08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t a1)
{

  return sub_2688C058C(a1, v1, v2);
}

uint64_t sub_2688F29A4(uint64_t a1)
{
  v42 = a1;
  sub_268B35494();
  OUTLINED_FUNCTION_1();
  v40 = v2;
  v41 = v1;
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5650, &unk_268B3BAC0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  v39 = type metadata accessor for MediaPlayerIntent(0);
  MEMORY[0x28223BE20](v39);
  v36 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v37 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v35 = &v35 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - v17;
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v38 = *(v11 + 16);
  v38(v18, v19, v9);
  v20 = sub_268B37A34();
  v21 = sub_268B37ED4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2688BB000, v20, v21, "SetPlaybackSpeed.shouldHandle() called", v22, 2u);
    MEMORY[0x26D6266E0](v22, -1, -1);
  }

  v23 = *(v11 + 8);
  v23(v18, v9);
  (*(v40 + 16))(v4, v42, v41);
  sub_26893BA8C(v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v39) == 1)
  {
    sub_2688C2E64(v7);
LABEL_13:
    v31 = v37;
    v38(v37, v19, v9);
    v32 = sub_268B37A34();
    v33 = sub_268B37EC4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2688BB000, v32, v33, "Could not validate verb from MediaPlayerIntent or SettingsIntent. Ignoring input.", v34, 2u);
      MEMORY[0x26D6266E0](v34, -1, -1);
    }

    v23(v31, v9);
    return 0;
  }

  v24 = v36;
  sub_2688C0464(v7, v36);
  if (*v24 == 24 || (sub_268AD3824(), (v25 & 1) == 0))
  {
    sub_2688C2F6C(v24);
    goto LABEL_13;
  }

  v26 = v35;
  v38(v35, v19, v9);
  v27 = sub_268B37A34();
  v28 = sub_268B37EC4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v27, v28, "Supported mediaPlayerIntent verb from parse.", v29, 2u);
    MEMORY[0x26D6266E0](v29, -1, -1);
  }

  v23(v26, v9);
  sub_2688C2F6C(v24);
  return 1;
}

uint64_t sub_2688F2EB0()
{
  type metadata accessor for NothingToStopTracker(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC26SiriPlaybackControlIntents20NothingToStopTracker_lastNothingToStopDate;
  v2 = sub_268B34614();
  result = __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  qword_2802CD8E0 = v0;
  return result;
}

uint64_t sub_2688F2F10()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_268B34614();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC26SiriPlaybackControlIntents20NothingToStopTracker_lastNothingToStopDate;
  swift_beginAccess();
  sub_2688F33D8(v0 + v11, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2688F3448(v3);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    sub_268B34604();
    sub_268B34584();
    v14 = v13;
    v15 = *(v5 + 8);
    v15(v8, v4);
    v15(v10, v4);
    return v14;
  }
}

uint64_t sub_2688F30FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  sub_268B34604();
  v4 = sub_268B34614();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  v5 = OBJC_IVAR____TtC26SiriPlaybackControlIntents20NothingToStopTracker_lastNothingToStopDate;
  swift_beginAccess();
  sub_2688F3368(v3, v0 + v5);
  return swift_endAccess();
}

uint64_t sub_2688F31C8()
{
  sub_2688F3448(v0 + OBJC_IVAR____TtC26SiriPlaybackControlIntents20NothingToStopTracker_lastNothingToStopDate);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for NothingToStopTracker(uint64_t a1)
{
  result = qword_2802A5B10;
  if (!qword_2802A5B10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2688F3280(uint64_t a1)
{
  sub_2688F3310(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2688F3310(uint64_t a1)
{
  if (!qword_2802A5B20)
  {
    sub_268B34614();
    v1 = sub_268B380A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2802A5B20);
    }
  }
}

uint64_t sub_2688F3368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2688F33D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2688F3448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A7350, qword_268B3FF10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2688F34B0(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_268B37BC4();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  sub_2688C04C8(a1, v8);
  v9 = a2;
  [v8 setGroupLeader_];

  return v8;
}

id sub_2688F3558()
{
  result = [v0 groupLeader];
  if (result)
  {
    v2 = result;
    v3 = [result context];

    if (v3)
    {
      return sub_268AE10A4(v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_2688F35C8()
{
  v1 = sub_2688F42F4(v0);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    goto LABEL_12;
  }

  v3 = v1;
  v4 = sub_2688EFD0C();
  if (!v4)
  {
LABEL_11:

LABEL_12:
    sub_26893E750(v2);

    return;
  }

  v5 = v4;
  sub_26894478C();
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D625BD0](v6, v3);
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = sub_268988568(v7);
      v11 = v10;

      v12 = *(v2 + 16);
      if (v12 >= *(v2 + 24) >> 1)
      {
        sub_26894478C();
      }

      ++v6;
      *(v2 + 16) = v12 + 1;
      v13 = v2 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v11;
    }

    while (v5 != v6);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_2688F36FC()
{
  v1 = sub_2688F42F4(v0);
  if (v1)
  {
    v2 = v1;
    v3 = sub_2688EFD0C();
    v4 = 0;
    while (1)
    {
      if (v3 == v4)
      {
LABEL_11:

        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D625BD0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      Device.isPlayingOrHasPausedContentOnScreen.getter();
      v8 = v7;

      ++v4;
      if (v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }
}