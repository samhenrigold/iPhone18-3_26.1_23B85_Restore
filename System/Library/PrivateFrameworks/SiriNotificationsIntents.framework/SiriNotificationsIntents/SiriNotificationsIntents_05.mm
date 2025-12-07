uint64_t sub_268539DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_26853004C;

  return sub_26853A8E8();
}

uint64_t sub_268539EA0()
{
  OUTLINED_FUNCTION_5();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_268567B10();
  OUTLINED_FUNCTION_10(v4);
  v1[10] = OUTLINED_FUNCTION_39();
  v5 = sub_268567F20();
  v1[11] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[12] = v6;
  v1[13] = OUTLINED_FUNCTION_39();
  v7 = sub_2685689F0();
  v1[14] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[15] = v8;
  v1[16] = OUTLINED_FUNCTION_39();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268539FB4()
{
  v58 = v0;
  if (qword_280282960 != -1)
  {
LABEL_63:
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v2 = v0;
  __swift_project_value_buffer(*(v0 + 112), qword_28028B348);
  v3 = OUTLINED_FUNCTION_12_17();
  v4(v3);

  v5 = sub_2685689E0();
  v6 = sub_268568DD0();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 120);
  v8 = *(v0 + 128);
  v10 = *(v0 + 112);
  if (v7)
  {
    v11 = *(v0 + 64);
    v1 = OUTLINED_FUNCTION_4();
    v12 = OUTLINED_FUNCTION_51();
    v57 = v12;
    *v1 = 136315138;
    v13 = type metadata accessor for NotificationsApp(0);
    v14 = MEMORY[0x26D61BE70](v11, v13);
    v16 = sub_2684EABEC(v14, v15, &v57);

    *(v1 + 4) = v16;
    OUTLINED_FUNCTION_17_5(&dword_2684CA000, v17, v18, "RNReadNotificationHighlightsFlowProvider makeFinalWindowFlow | windowContent: %s");
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  (*(v9 + 8))(v8, v10);
  v49 = v2;
  if (*(*(v2 + 72) + 312))
  {
LABEL_51:
    v47 = MEMORY[0x277D84F90];
LABEL_52:
    sub_268567AE0();
    *(swift_task_alloc() + 16) = v47;
    sub_268567ED0();

    v48 = swift_task_alloc();
    *(v49 + 136) = v48;
    *v48 = v49;
    v48[1] = sub_26853A580;

    return sub_26853A8E8();
  }

  v19 = v2 + 16;
  v0 = *(v2 + 64);
  v20 = sub_2684DEAF0(v0);
  v21 = 0;
  v54 = v0 & 0xFFFFFFFFFFFFFF8;
  v55 = v0 & 0xC000000000000001;
  v22 = MEMORY[0x277D84F90];
  v53 = v0 + 32;
  v50 = v20;
  while (v21 != v20)
  {
    if (v55)
    {
      v0 = MEMORY[0x26D61C170](v21, *(v49 + 64));
    }

    else
    {
      if (v21 >= *(v54 + 16))
      {
        goto LABEL_56;
      }

      v0 = *(v53 + 8 * v21);
    }

    v23 = __OFADD__(v21, 1);
    v24 = v21 + 1;
    if (v23)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v25 = *(v0 + 24);

    v0 = v25 >> 62;
    if (v25 >> 62)
    {
      v26 = sub_2685690A0();
    }

    else
    {
      v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = v22 >> 62;
    if (v22 >> 62)
    {
      v28 = sub_2685690A0();
    }

    else
    {
      v28 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v28 + v26;
    if (__OFADD__(v28, v26))
    {
      goto LABEL_57;
    }

    v56 = v24;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v27)
      {
LABEL_21:
        sub_2685690A0();
      }

LABEL_22:
      v22 = sub_268569000();
      v30 = v22 & 0xFFFFFFFFFFFFFF8;
      v31 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      goto LABEL_23;
    }

    if (v27)
    {
      goto LABEL_21;
    }

    v30 = v22 & 0xFFFFFFFFFFFFFF8;
    v31 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v31 < v29)
    {
      goto LABEL_22;
    }

LABEL_23:
    v32 = *(v30 + 16);
    v33 = v31 - v32;
    v1 = v30 + 8 * v32;
    if (v0)
    {
      v35 = OUTLINED_FUNCTION_46_2();
      if (!v35)
      {
        goto LABEL_37;
      }

      v36 = v35;
      v52 = sub_2685690A0();
      if (v33 < v52)
      {
        goto LABEL_61;
      }

      if (v36 < 1)
      {
        goto LABEL_62;
      }

      v51 = v22;
      v37 = v1 + 32;
      v0 = sub_26853D8F8();
      for (i = 0; i != v36; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
        v1 = sub_2684DEA8C(v19, i, v25);
        v40 = *v39;

        (v1)(v19, 0);
        *(v37 + 8 * i) = v40;
      }

      v22 = v51;
      v20 = v50;
      v34 = v52;
LABEL_33:

      v21 = v56;
      if (v34 < v26)
      {
        goto LABEL_58;
      }

      if (v34 > 0)
      {
        v41 = *(v30 + 16);
        v23 = __OFADD__(v41, v34);
        v42 = v41 + v34;
        if (v23)
        {
          goto LABEL_59;
        }

        *(v30 + 16) = v42;
      }
    }

    else
    {
      v0 = v25 & 0xFFFFFFFFFFFFFF8;
      v34 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        if (v33 < v34)
        {
          goto LABEL_60;
        }

        type metadata accessor for NotificationsNotification(0);
        swift_arrayInitWithCopy();
        goto LABEL_33;
      }

LABEL_37:

      v21 = v56;
      if (v26 > 0)
      {
        goto LABEL_58;
      }
    }
  }

  v43 = sub_2684DEAF0(v22);
  if (!v43)
  {

    goto LABEL_51;
  }

  v44 = v43;
  v57 = MEMORY[0x277D84F90];
  result = sub_268569040();
  if ((v44 & 0x8000000000000000) == 0)
  {
    sub_2684DB414();
    OUTLINED_FUNCTION_31_8();
    do
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x26D61C170](v1, v22);
      }

      else
      {
      }

      ++v1;
      sub_2685646B8(v46);
      sub_268569020();
      OUTLINED_FUNCTION_27_6();
      sub_268569050();
      OUTLINED_FUNCTION_27_6();
      sub_268569060();
      sub_268569030();
    }

    while (v44 != v1);

    v47 = v57;
    goto LABEL_52;
  }

  __break(1u);
  return result;
}

uint64_t sub_26853A580(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v5 + 144) = v1;

  if (v1)
  {
    v8 = sub_268530A58;
  }

  else
  {
    *(v5 + 152) = a1;
    v8 = sub_26853A69C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26853A69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  v13 = v12[19];
  v15 = v12[12];
  v14 = v12[13];
  v16 = v12[11];
  __swift_project_boxed_opaque_existential_1((v12[9] + 64), *(v12[9] + 88));
  v12[6] = sub_268567850();
  sub_268567790();
  sub_2685678E0();

  (*(v15 + 8))(v14, v16);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_33();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_26853A794(uint64_t a1, unint64_t a2)
{
  v3 = sub_268567CE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_268567CD0();
  sub_268509368(a2, v9);
  (*(v4 + 8))(v6, v3);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v3);
  sub_268567EF0();
  return sub_268567EE0();
}

uint64_t sub_26853A8E8()
{
  OUTLINED_FUNCTION_5();
  v1[110] = v0;
  v1[109] = v2;
  v1[108] = v3;
  v4 = sub_2685688F0();
  v1[111] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[112] = v5;
  v1[113] = OUTLINED_FUNCTION_39();
  v6 = sub_2685679B0();
  v1[114] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[115] = v7;
  v1[116] = OUTLINED_FUNCTION_39();
  v8 = sub_268567B60();
  v1[117] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[118] = v9;
  v1[119] = OUTLINED_FUNCTION_39();
  v10 = sub_2685689F0();
  v1[120] = v10;
  OUTLINED_FUNCTION_2_4(v10);
  v1[121] = v11;
  v1[122] = swift_task_alloc();
  v1[123] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_10(v12);
  v1[124] = swift_task_alloc();
  v1[125] = swift_task_alloc();
  v1[126] = swift_task_alloc();
  v1[127] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26853AAE4()
{
  v203 = v0;
  i = v0;
  v185 = v0 + 800;
  v189 = (v0 + 856);
  v180 = *(v0 + 880);
  v3 = v180[13];
  v193 = v3 & 0xC000000000000001;
  v195 = sub_2684DEAF0(v3);
  v190 = v3 + 32;
  v198 = v3;

  v4 = 0;
  v5 = 0;
  v188 = MEMORY[0x277D84F90];
  v192 = i;
  while (v5 != v195)
  {
    sub_2684DEAFC();
    if (v193)
    {
      v6 = MEMORY[0x26D61C170](v5, v198);
    }

    else
    {
      v6 = *(v190 + 8 * v5);
    }

    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    v9 = *(v6 + 24);
    v10 = sub_2684DEAF0(v9);
    v11 = 0;
    v1 = v9 & 0xC000000000000001;
    while (v10 != v11)
    {
      if (v1)
      {
        v12 = MEMORY[0x26D61C170](v11, v9);
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v12 = *(v9 + 8 * v11 + 32);
      }

      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        v50 = sub_268568800();
        v176 = v51;
        v177 = v50;
LABEL_58:
        OUTLINED_FUNCTION_34_6();
        v54 = OUTLINED_FUNCTION_17_9();
        v55(v54);
        goto LABEL_59;
      }

      v202[0] = v12;
      i = sub_26853C208(v202, v6);

      ++v11;
      if ((i & 1) == 0)
      {
        i = v192;
        sub_2684D4298(v6 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName, v192[127]);
        v20 = sub_268568810();
        v21 = OUTLINED_FUNCTION_35_5();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, v22, v20);
        v24 = v192[127];
        if (EnumTagSinglePayload == 1)
        {

          v19 = v24;
          goto LABEL_22;
        }

        v186 = sub_268568800();
        v26 = v25;

        OUTLINED_FUNCTION_34_6();
        (*(v27 + 8))(v24, v20);
        goto LABEL_26;
      }
    }

    v13 = *(v6 + 24);
    if (!sub_2684DEAF0(v13))
    {

      i = v192;
      continue;
    }

    OUTLINED_FUNCTION_33_3();
    sub_2684DEAFC();
    i = v192;
    v14 = v192[126];
    if ((v13 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x26D61C170](0, v13);
      sub_2684D4298(v33 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v14);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_2684D4298(*(v13 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v192[126]);
    }

    v15 = sub_268568810();
    v16 = OUTLINED_FUNCTION_35_5();
    if (__swift_getEnumTagSinglePayload(v16, v17, v15) == 1)
    {
      v18 = v192[126];

      v19 = v18;
LABEL_22:
      sub_26853D95C(v19, &qword_280282AF0, &qword_26856A1E0);
      continue;
    }

    v28 = v192[126];
    v186 = sub_268568800();
    v26 = v29;

    sub_268568810();
    OUTLINED_FUNCTION_34_6();
    (*(v30 + 8))(v28, v15);
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_26854BB3C();
      v188 = v34;
    }

    v31 = *(v188 + 16);
    if (v31 >= *(v188 + 24) >> 1)
    {
      sub_26854BB3C();
      v188 = v35;
    }

    *(v188 + 16) = v31 + 1;
    v32 = v188 + 16 * v31;
    *(v32 + 32) = v186;
    *(v32 + 40) = v26;
  }

  v36 = *(i + 880);

  v178 = v36;
  if (__OFADD__(*(v36 + 304), 1))
  {
    goto LABEL_155;
  }

  v37 = OUTLINED_FUNCTION_17_9();
  v39 = sub_26855D244(v37, v38);
  *(i + 1024) = v39;

  if (!v39)
  {
    goto LABEL_52;
  }

  v40 = *(v39 + 24);
  v1 = sub_2684DEAF0(v40);

  for (i = 0; v1 != i; ++i)
  {
    if ((v40 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x26D61C170](i, v40);
    }

    else
    {
      if (i >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_151;
      }

      v41 = *(v40 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_150;
    }

    v202[0] = v41;
    v42 = sub_26853C810(v202, v39);

    if ((v42 & 1) == 0)
    {
      i = v192;
      v48 = v192[124];

      sub_2684D4298(v39 + OBJC_IVAR____TtC24SiriNotificationsIntents16NotificationsApp_appName, v48);
      v49 = sub_268568810();
      if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
      {
        v47 = v192[124];
        goto LABEL_51;
      }

      goto LABEL_55;
    }
  }

  v1 = *(v39 + 24);
  if (sub_2684DEAF0(v1))
  {
    OUTLINED_FUNCTION_33_3();
    sub_2684DEAFC();
    i = v192;
    v43 = v192[125];
    if ((v1 & 0xC000000000000001) != 0)
    {
      goto LABEL_162;
    }

    sub_2684D4298(*(v1 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v192[125]);
    goto LABEL_47;
  }

  v176 = 0;
  v177 = 0;
  i = v192;
  while (1)
  {
LABEL_59:
    v43 = 0xEA0000000000657ALL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283798, &unk_26856EF90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26856E8F0;
    *(inited + 32) = 0x6D614E70756F7267;
    *(inited + 40) = 0xEA00000000007365;
    v181 = inited;
    if (sub_2684DEAF0(v180[13]) <= 4)
    {
      goto LABEL_66;
    }

    sub_26853820C(3uLL, v188);
    OUTLINED_FUNCTION_40_4();
    if ((i & 1) == 0)
    {
      goto LABEL_67;
    }

    sub_2685691E0();
    swift_unknownObjectRetain_n();
    v57 = swift_dynamicCastClass();
    if (!v57)
    {
      swift_unknownObjectRelease();
      v57 = MEMORY[0x277D84F90];
    }

    v58 = *(v57 + 16);

    v59 = (i >> 1) - v1;
    if (!__OFSUB__(i >> 1, v1))
    {
      break;
    }

    __break(1u);
LABEL_66:
    sub_26853820C(4uLL, v188);
    OUTLINED_FUNCTION_40_4();
    if ((i & 1) == 0)
    {
      goto LABEL_67;
    }

    sub_2685691E0();
    swift_unknownObjectRetain_n();
    v62 = swift_dynamicCastClass();
    if (!v62)
    {
      swift_unknownObjectRelease();
      v62 = MEMORY[0x277D84F90];
    }

    v58 = *(v62 + 16);

    v59 = (i >> 1) - v1;
    if (!__OFSUB__(i >> 1, v1))
    {
      break;
    }

LABEL_161:
    __break(1u);
LABEL_162:

    v171 = OUTLINED_FUNCTION_38_2();
    v172 = MEMORY[0x26D61C170](v171);

    sub_2684D4298(v172 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v43);
    swift_unknownObjectRelease();
LABEL_47:
    v44 = sub_268568810();
    v45 = OUTLINED_FUNCTION_35_5();
    if (__swift_getEnumTagSinglePayload(v45, v46, v44) != 1)
    {
      v52 = sub_268568800();
      v176 = v53;
      v177 = v52;
      sub_268568810();
      goto LABEL_58;
    }

    v47 = *(i + 1000);
LABEL_51:
    sub_26853D95C(v47, &qword_280282AF0, &qword_26856A1E0);
LABEL_52:
    v176 = 0;
    v177 = 0;
  }

  if (v58 != v59)
  {
    goto LABEL_159;
  }

  v61 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v61)
  {
    v61 = MEMORY[0x277D84F90];
    goto LABEL_75;
  }

  i = v192;
  while (1)
  {
    v5 = *(i + 872);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282ED0, &qword_26856EB00);
    *(v181 + 48) = v61;
    *(v181 + 72) = v63;
    strcpy((v181 + 80), "isConclusion");
    *(v181 + 93) = 0;
    *(v181 + 94) = -5120;
    v64 = sub_268567FA0();
    v65 = MEMORY[0x277D839B0];
    *(v181 + 96) = v64 & 1;
    *(v181 + 120) = v65;
    strcpy((v181 + 128), "isFirstWindow");
    *(v181 + 142) = -4864;
    *(v181 + 144) = sub_268567FC0() & 1;
    *(v181 + 168) = v65;
    strcpy((v181 + 176), "isLastWindow");
    *(v181 + 189) = 0;
    *(v181 + 190) = -5120;
    *(v181 + 192) = sub_268567FB0() & 1;
    *(v181 + 216) = v65;
    *(v181 + 224) = 0xD000000000000016;
    *(v181 + 232) = 0x8000000268572CE0;
    *(v181 + 240) = sub_268567F70() & 1;
    *(v181 + 264) = v65;
    *(v181 + 272) = 0x736D657469;
    *(v181 + 280) = 0xE500000000000000;
    v66 = sub_2684DEAF0(v5);
    v67 = MEMORY[0x277D84F90];
    if (!v66)
    {
      break;
    }

    v1 = v66;
    v202[0] = MEMORY[0x277D84F90];
    v43 = v202;
    sub_2684DD058(0, v66 & ~(v66 >> 63), 0);
    if ((v1 & 0x8000000000000000) == 0)
    {
      v68 = i;
      v69 = 0;
      v70 = *(v68 + 872);
      v67 = v202[0];
      v71 = v70 & 0xC000000000000001;
      v199 = v70 + 32;
      do
      {
        if (v71)
        {
          v72 = MEMORY[0x26D61C170](v69, v192[109]);
        }

        else
        {
          v72 = *(v199 + 8 * v69);
        }

        *v189 = v72;
        type metadata accessor for NotificationsApp(0);
        sub_26853DBD8(&qword_2802837A0, 255, type metadata accessor for NotificationsApp, &unk_26856D678);
        v73 = sub_2685688B0();

        v202[0] = v67;
        v75 = *(v67 + 16);
        v74 = *(v67 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_2684DD058((v74 > 1), v75 + 1, 1);
          v67 = v202[0];
        }

        ++v69;
        *(v67 + 16) = v75 + 1;
        *(v67 + 8 * v75 + 32) = v73;
      }

      while (v1 != v69);
      i = v192;
      break;
    }

    __break(1u);
LABEL_159:
    swift_unknownObjectRelease();
LABEL_67:
    sub_26853D830(v43, v5, v1, i);
    v61 = v60;
LABEL_75:
    i = v192;
    swift_unknownObjectRelease();
  }

  v76 = *(i + 880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837A8, &unk_26856EFA0);
  *(v181 + 288) = v67;
  OUTLINED_FUNCTION_8_15();
  *(v79 + 312) = v77;
  *(v79 + 320) = v78;
  *(v79 + 328) = v80;
  *(v79 + 336) = (*(v76 + 312) & 1) == 0;
  *(v79 + 360) = MEMORY[0x277D839B0];
  *(v79 + 368) = 0x6574496C61746F74;
  *(v79 + 376) = 0xEA0000000000736DLL;
  v81 = v180[13];
  v82 = sub_2684DEAF0(v81);
  v83 = v81 & 0xC000000000000001;
  v84 = v81 & 0xFFFFFFFFFFFFFF8;
  v189 = (v81 + 32);
  v179 = v81;

  v85 = 0;
  v1 = MEMORY[0x277D84F90];
  v183 = v81 & 0xC000000000000001;
  v184 = v82;
  v182 = v81 & 0xFFFFFFFFFFFFFF8;
  while (v85 != v82)
  {
    if (v83)
    {
      v86 = MEMORY[0x26D61C170](v85, v179);
    }

    else
    {
      if (v85 >= *(v84 + 16))
      {
        goto LABEL_146;
      }

      v86 = v189[v85];
    }

    v8 = __OFADD__(v85, 1);
    v87 = v85 + 1;
    if (v8)
    {
      goto LABEL_145;
    }

    v196 = v4;
    v4 = *(v86 + 24);

    if (v4 >> 62)
    {
      v88 = sub_2685690A0();
    }

    else
    {
      v88 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v89 = v1 >> 62;
    v200 = v87;
    if (v1 >> 62)
    {
      v90 = sub_2685690A0();
    }

    else
    {
      v90 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v91 = v90 + v88;
    if (__OFADD__(v90, v88))
    {
      goto LABEL_147;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v89)
      {
        goto LABEL_104;
      }

LABEL_103:
      sub_2685690A0();
      goto LABEL_104;
    }

    if (v89)
    {
      goto LABEL_103;
    }

    v92 = v1 & 0xFFFFFFFFFFFFFF8;
    v93 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v93 >= v91)
    {
      v194 = v1;
      goto LABEL_105;
    }

LABEL_104:
    v194 = sub_268569000();
    v92 = v194 & 0xFFFFFFFFFFFFFF8;
    v93 = *((v194 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_105:
    v94 = *(v92 + 16);
    v1 = v93 - v94;
    v95 = v92 + 8 * v94;
    v191 = v92;
    if (v4 >> 62)
    {
      v97 = sub_2685690A0();
      if (v97)
      {
        v98 = v97;
        v99 = sub_2685690A0();
        if (v1 < v99)
        {
          goto LABEL_153;
        }

        if (v98 < 1)
        {
          goto LABEL_154;
        }

        v187 = v99;
        v188 = v88;
        v100 = v95 + 32;
        sub_26853D8F8();
        for (j = 0; j != v98; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283440, &qword_26856D320);
          v102 = sub_2684DEA8C(v185, j, v4);
          v104 = *v103;

          v102(v185, 0);
          *(v100 + 8 * j) = v104;
        }

        i = v192;
        v83 = v183;
        v82 = v184;
        v84 = v182;
        v96 = v187;
        goto LABEL_115;
      }
    }

    else
    {
      v96 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v96)
      {
        if (v1 < v96)
        {
          goto LABEL_152;
        }

        type metadata accessor for NotificationsNotification(0);
        swift_arrayInitWithCopy();
LABEL_115:

        v1 = v194;
        v4 = v196;
        v85 = v200;
        if (v96 < v88)
        {
          goto LABEL_148;
        }

        if (v96 > 0)
        {
          v105 = *(v191 + 16);
          v8 = __OFADD__(v105, v96);
          v106 = v105 + v96;
          if (v8)
          {
            goto LABEL_149;
          }

          *(v191 + 16) = v106;
        }

        continue;
      }
    }

    v1 = v194;
    v4 = v196;
    v85 = v200;
    if (v88 > 0)
    {
      goto LABEL_148;
    }
  }

  v107 = sub_2684DEAF0(v1);

  v4 = MEMORY[0x277D83B88];
  *(v181 + 384) = v107;
  OUTLINED_FUNCTION_8_15();
  *(v181 + 408) = v4;
  *(v181 + 416) = v108 + 3;
  *(v181 + 424) = v109;
  *(v181 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802837B8, &unk_26856EFB0);
  v110 = *(v178 + 304);
  v111 = v110 + 1;
  if (__OFADD__(v110, 1))
  {
    goto LABEL_156;
  }

  v112 = v180[13];

  v113 = sub_26855D244(v111, v112);

  if (v113)
  {
    v114 = *(v113 + 24);

    v115 = sub_2684DEAF0(v114);
  }

  else
  {
    v115 = 0;
  }

  v116 = v113 == 0;
  v117 = *(i + 872);
  v118 = v116;
  *(v181 + 432) = v115;
  *(v181 + 440) = v118;
  strcpy((v181 + 464), "nextGroupName");
  *(v181 + 478) = -4864;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A50, &unk_268569F80);
  *(v181 + 480) = v177;
  *(v181 + 488) = v176;
  *(v181 + 504) = v119;
  *(v181 + 512) = 0x6953776F646E6977;
  *(v181 + 520) = 0xEA0000000000657ALL;
  sub_2684DEAFC();
  v7 = *(i + 872);
  if ((v117 & 0xC000000000000001) == 0)
  {
    v120 = *(v7 + 32);

    goto LABEL_133;
  }

LABEL_157:
  v120 = MEMORY[0x26D61C170](0, v7);
LABEL_133:
  v5 = *(v120 + 24);

  v121 = sub_2684DEAF0(v5);

  *(v181 + 552) = v4;
  *(v181 + 528) = v121;
  OUTLINED_FUNCTION_8_15();
  *(v123 + 560) = v122 + 7;
  *(v123 + 568) = v124;
  v43 = v180;
  if (sub_2684DEAF0(v180[13]) < 5)
  {
    v126 = 0;
  }

  else
  {
    v125 = sub_2684DEAF0(v180[13]);
    if (__OFSUB__(v125, 4))
    {
      __break(1u);
      goto LABEL_161;
    }

    v126 = v125 - 3;
  }

  v127 = *(i + 880);
  *(v181 + 600) = v4;
  *(v181 + 576) = v126;
  *(v181 + 608) = 0xD000000000000015;
  *(v181 + 616) = 0x80000002685735C0;
  v128 = *(v127 + 320) % 3;
  *(v181 + 648) = v4;
  *(v181 + 624) = v128;
  *(v181 + 656) = 0xD00000000000001CLL;
  *(v181 + 664) = 0x8000000268573770;
  LOBYTE(v128) = *(v127 + 296);
  *(v181 + 696) = MEMORY[0x277D839B0];
  *(v181 + 672) = v128;
  v129 = sub_268568AD0();
  *(i + 1032) = v129;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v130 = *(i + 984);
  v131 = *(i + 968);
  v132 = *(i + 960);
  v133 = __swift_project_value_buffer(v132, qword_28028B348);
  *(i + 1040) = v133;
  v134 = *(v131 + 16);
  *(i + 1048) = v134;
  *(i + 1056) = (v131 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v134(v130, v133, v132);

  v135 = sub_2685689E0();
  v136 = sub_268568DD0();

  v137 = os_log_type_enabled(v135, v136);
  v138 = *(i + 984);
  v139 = *(i + 968);
  v140 = *(i + 960);
  v201 = v129;
  if (v137)
  {
    v141 = OUTLINED_FUNCTION_4();
    v142 = OUTLINED_FUNCTION_51();
    v202[0] = v142;
    *v141 = 136315138;
    v143 = sub_268568AC0();
    v145 = sub_2684EABEC(v143, v144, v202);

    *(v141 + 4) = v145;
    OUTLINED_FUNCTION_17_5(&dword_2684CA000, v146, v147, "RNReadNotificationHighlightsFlowProvider executePatternForWindow | executing pattern with parameters: %s");
    __swift_destroy_boxed_opaque_existential_0(v142);
    i = v192;
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  (*(v139 + 8))(v138, v140);
  v148 = (i + 760);
  v149 = *(i + 952);
  v150 = *(i + 944);
  v151 = *(i + 936);
  v152 = *(i + 928);
  v153 = i;
  v154 = *(i + 920);
  v155 = v153[114];
  v197 = v148;
  v156 = v153[110];
  sub_268567990();
  __swift_project_boxed_opaque_existential_1(v153 + 90, v153[93]);
  sub_268567A20();
  (*(v150 + 104))(v149, *MEMORY[0x277D5BB40], v151);
  (*(v154 + 104))(v152, *MEMORY[0x277D5B950], v155);
  sub_26853CE24();
  OUTLINED_FUNCTION_1_20();
  OUTLINED_FUNCTION_4_13();
  sub_2684EBB74(v157, v158, v159, v160, v161, v162, v163, v164, v174, v175);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v153 + 90);
  sub_2685687E0();
  v165 = *(v156 + 16);
  v153[133] = v165;
  sub_2685686F0();
  sub_2685685F0();
  v166 = v165;
  v167 = sub_2685685D0();
  v168 = sub_268516318(v156 + 184, v167);
  v153[134] = v168;

  v153[99] = 0;
  *v197 = 0u;
  v197[1] = 0u;
  sub_2685688E0();
  v169 = swift_task_alloc();
  v153[135] = v169;
  *v169 = v153;
  v169[1] = sub_26853BE18;
  v170 = v153[113];

  return MEMORY[0x2821B7E60](v166, 0xD00000000000002CLL, 0x80000002685737B0, v201, v168, v197, v170);
}

uint64_t sub_26853BE18()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  v3[104] = v1;
  v3[105] = v5;
  v3[106] = v0;
  *v4 = *v1;
  v3[136] = v0;

  v6 = v2[133];
  v7 = v2[113];
  v8 = v2[112];
  v9 = v2[111];

  (*(v8 + 8))(v7, v9);
  sub_26853D95C((v3 + 95), &qword_280282DB0, &unk_26856B440);
  if (v0)
  {
    v10 = sub_26853C150;
  }

  else
  {
    v10 = sub_26853C000;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_26853C000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  (*(v12 + 1048))(*(v12 + 976), *(v12 + 1040), *(v12 + 960));
  v13 = sub_2685689E0();
  v14 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v14))
  {
    v15 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v15);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v16, v17, "RNReadNotificationHighlightsFlowProvider executePatternForWindow | pattern successfully executed");
    OUTLINED_FUNCTION_2();
  }

  v18 = *(v12 + 976);
  v19 = *(v12 + 968);
  v20 = *(v12 + 960);
  v21 = *(v12 + 880);

  result = (*(v19 + 8))(v18, v20);
  if (__OFADD__(*(v21 + 304), 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_17_10();
    *(*(v12 + 880) + 304) = v23;

    OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_33();

    return v26(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
  }

  return result;
}

uint64_t sub_26853C150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_17_10();

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_33();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10, a11, a12);
}

uint64_t sub_26853C208(uint64_t *a1, uint64_t a2)
{
  v5 = sub_268568810();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282F98, qword_26856C420);
  MEMORY[0x28223BE20](v7);
  v42 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v14);
  v19 = &v39 - v18;
  v20 = *a1;
  v21 = *(a2 + 24);
  if (!(v21 >> 62))
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_27:
    v27 = 0;
    return v27 & 1;
  }

  v35 = v17;
  v36 = sub_2685690A0();
  v17 = v35;
  if (!v36)
  {
    goto LABEL_27;
  }

LABEL_3:
  v39 = v17;
  v43 = v2;
  v22 = v21 & 0xC000000000000001;
  sub_2684DEAFC();
  if ((v21 & 0xC000000000000001) != 0)
  {
    v38 = *(MEMORY[0x26D61C170](0, v21) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary);
    swift_unknownObjectRelease();
    if (v38 != 1)
    {
      goto LABEL_13;
    }

LABEL_5:
    if (sub_2684DEAF0(v21))
    {
      sub_2684DEAFC();
      if (v22)
      {
        v23 = MEMORY[0x26D61C170](0, v21);
        sub_2684D4298(v23 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v19);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_2684D4298(*(v21 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v19);
      }

      if (__swift_getEnumTagSinglePayload(v19, 1, v5) != 1)
      {
        sub_26853D95C(v19, &qword_280282AF0, &qword_26856A1E0);
        sub_2684D4298(v20 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v16);
        if (sub_2684DEAF0(v21))
        {
          sub_2684DEAFC();
          v28 = v42;
          if (v22)
          {
            v29 = MEMORY[0x26D61C170](0, v21);
            sub_2684D4298(v29 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v13);
            swift_unknownObjectRelease();
          }

          else
          {
            sub_2684D4298(*(v21 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v13);
          }
        }

        else
        {
          __swift_storeEnumTagSinglePayload(v13, 1, 1, v5);
          v28 = v42;
        }

        v30 = *(v7 + 48);
        sub_2684D4298(v16, v28);
        sub_2684D4298(v13, v28 + v30);
        if (__swift_getEnumTagSinglePayload(v28, 1, v5) == 1)
        {
          sub_26853D95C(v13, &qword_280282AF0, &qword_26856A1E0);
          sub_26853D95C(v16, &qword_280282AF0, &qword_26856A1E0);
          if (__swift_getEnumTagSinglePayload(v28 + v30, 1, v5) == 1)
          {
            sub_26853D95C(v28, &qword_280282AF0, &qword_26856A1E0);
            v27 = 1;
            return v27 & 1;
          }
        }

        else
        {
          v31 = v39;
          sub_2684D4298(v28, v39);
          if (__swift_getEnumTagSinglePayload(v28 + v30, 1, v5) != 1)
          {
            v32 = v40;
            v33 = v41;
            (*(v41 + 32))(v40, v28 + v30, v5);
            sub_26853DBD8(&qword_280282FA0, 255, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
            v27 = sub_268568B00();
            v34 = *(v33 + 8);
            v34(v32, v5);
            sub_26853D95C(v13, &qword_280282AF0, &qword_26856A1E0);
            sub_26853D95C(v16, &qword_280282AF0, &qword_26856A1E0);
            v34(v31, v5);
            sub_26853D95C(v28, &qword_280282AF0, &qword_26856A1E0);
            return v27 & 1;
          }

          sub_26853D95C(v13, &qword_280282AF0, &qword_26856A1E0);
          sub_26853D95C(v16, &qword_280282AF0, &qword_26856A1E0);
          (*(v41 + 8))(v31, v5);
        }

        v24 = &qword_280282F98;
        v25 = qword_26856C420;
        v26 = v28;
        goto LABEL_12;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v19, 1, 1, v5);
    }

    v24 = &qword_280282AF0;
    v25 = &qword_26856A1E0;
    v26 = v19;
LABEL_12:
    sub_26853D95C(v26, v24, v25);
    goto LABEL_13;
  }

  if (*(*(v21 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary))
  {
    goto LABEL_5;
  }

LABEL_13:
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_26853C810(uint64_t *a1, uint64_t a2)
{
  v45 = sub_268568810();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282F98, qword_26856C420);
  MEMORY[0x28223BE20](v7);
  v44 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v39 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v39 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v39 - v19;
  if (a2)
  {
    v21 = *a1;
    v22 = *(a2 + 24);
    if (v22 >> 62)
    {
      v41 = v21;
      v36 = sub_2685690A0();
      v21 = v41;
      if (!v36)
      {
        goto LABEL_16;
      }
    }

    else if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v41 = v21;
    v42 = v2;
    sub_2684DEAFC();
    if ((v22 & 0xC000000000000001) != 0)
    {
      v37 = *(MEMORY[0x26D61C170](0, v22) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary);
      swift_unknownObjectRelease();
      if (v37 != 1)
      {
        goto LABEL_16;
      }

LABEL_6:
      v23 = *(a2 + 24);
      if (sub_2684DEAF0(v23))
      {
        v40 = v6;
        sub_2684DEAFC();
        v39 = v23 & 0xC000000000000001;
        if ((v23 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x26D61C170](0, v23);
          sub_2684D4298(v38 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v20);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_2684D4298(*(v23 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v20);
        }

        if (__swift_getEnumTagSinglePayload(v20, 1, v45) != 1)
        {
          sub_26853D95C(v20, &qword_280282AF0, &qword_26856A1E0);
          sub_2684D4298(v41 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v18);
          if (sub_2684DEAF0(v23))
          {
            v24 = v39;
            sub_2684DEAFC();
            v25 = v45;
            if (v24)
            {
              v26 = MEMORY[0x26D61C170](0, v23);
              sub_2684D4298(v26 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v15);
              swift_unknownObjectRelease();
            }

            else
            {
              sub_2684D4298(*(v23 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_senderDisplayName, v15);
            }
          }

          else
          {
            v25 = v45;
            __swift_storeEnumTagSinglePayload(v15, 1, 1, v45);
          }

          v31 = *(v7 + 48);
          a2 = v44;
          sub_2684D4298(v18, v44);
          sub_2684D4298(v15, a2 + v31);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a2, 1, v25);
          v33 = v40;
          if (EnumTagSinglePayload == 1)
          {
            sub_26853D95C(v15, &qword_280282AF0, &qword_26856A1E0);
            a2 = v44;
            sub_26853D95C(v18, &qword_280282AF0, &qword_26856A1E0);
            if (__swift_getEnumTagSinglePayload(a2 + v31, 1, v25) == 1)
            {
              sub_26853D95C(a2, &qword_280282AF0, &qword_26856A1E0);
              LOBYTE(a2) = 1;
              return a2 & 1;
            }
          }

          else
          {
            sub_2684D4298(a2, v12);
            if (__swift_getEnumTagSinglePayload(a2 + v31, 1, v25) != 1)
            {
              v34 = v43;
              (*(v43 + 32))(v33, a2 + v31, v25);
              sub_26853DBD8(&qword_280282FA0, 255, MEMORY[0x277D55C48], MEMORY[0x277D55C58]);
              LOBYTE(a2) = sub_268568B00();
              v35 = *(v34 + 8);
              v35(v33, v25);
              sub_26853D95C(v15, &qword_280282AF0, &qword_26856A1E0);
              sub_26853D95C(v18, &qword_280282AF0, &qword_26856A1E0);
              v35(v12, v25);
              sub_26853D95C(v44, &qword_280282AF0, &qword_26856A1E0);
              return a2 & 1;
            }

            sub_26853D95C(v15, &qword_280282AF0, &qword_26856A1E0);
            a2 = v44;
            sub_26853D95C(v18, &qword_280282AF0, &qword_26856A1E0);
            (*(v43 + 8))(v12, v25);
          }

          v27 = &qword_280282F98;
          v28 = qword_26856C420;
          v29 = a2;
          goto LABEL_15;
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v20, 1, 1, v45);
      }

      v27 = &qword_280282AF0;
      v28 = &qword_26856A1E0;
      v29 = v20;
LABEL_15:
      sub_26853D95C(v29, v27, v28);
      goto LABEL_16;
    }

    if (*(*(v22 + 32) + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary))
    {
      goto LABEL_6;
    }

LABEL_16:
    LOBYTE(a2) = 0;
  }

  return a2 & 1;
}

uint64_t sub_26853CE24()
{
  v1 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 104);
  v8 = *(v0 + 304);

  v9 = sub_26855D244(v8, v7);

  if (!v9)
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v16 = __swift_project_value_buffer(v1, qword_28028B348);
    (*(v3 + 16))(v6, v16, v1);
    v17 = sub_2685689E0();
    v18 = sub_268568DE0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_16_0();
      *v19 = 0;
      _os_log_impl(&dword_2684CA000, v17, v18, "RNReadNotificationHighlightsFlowProvider: Invalid notifications", v19, 2u);
      OUTLINED_FUNCTION_2();
    }

    (*(v3 + 8))(v6, v1);
    LODWORD(v13) = 0;
    v15 = 0;
    return v15 | v13;
  }

  v10 = v9[3];
  v11 = sub_2684DEAF0(v10);
  v12 = MEMORY[0x277D84F90];
  v13 = &OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsStackSummary;
  if (v11)
  {
    OUTLINED_FUNCTION_33_3();
    sub_2684DEAFC();
    if ((v10 & 0xC000000000000001) != 0)
    {
LABEL_48:
      v14 = MEMORY[0x26D61C170](0, v10);
    }

    else
    {
      v14 = *(v10 + 32);
    }

    if (*(v14 + *v13) == 1)
    {
      if (*(v14 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isHighlight))
      {

        v15 = 256;
        LODWORD(v13) = 1;
        return v15 | v13;
      }

      v29 = v14;
      v13 = 1;
      goto LABEL_31;
    }

    HIDWORD(v27) = *(v14 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isHighlight);
    v29 = v14;
  }

  else
  {
    HIDWORD(v27) = 0;
    v29 = 0;
  }

  v28 = v9;
  v20 = v9[3];
  v30 = v12;
  sub_2684DEAF0(v20);
  OUTLINED_FUNCTION_31_8();
  v12 = v20 & 0xC000000000000001;
  v9 = &OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsHighlightSummary;
  while (v6 != v3)
  {
    if (v12)
    {
      v21 = MEMORY[0x26D61C170](v3, v20);
    }

    else
    {
      if (v3 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v21 = *(v20 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (*(v21 + *v13) & 1) != 0 || (*(v21 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_containsHighlightSummary))
    {
      v10 = &v30;
      sub_268569020();
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    else
    {
    }

    ++v3;
  }

  v10 = v30;
  v22 = sub_2684DEAF0(v30);

  v13 = v22 > 0;
  if ((v27 & 0x100000000) != 0)
  {

    v15 = 256;
    return v15 | v13;
  }

  v9 = v28;
  v12 = MEMORY[0x277D84F90];
LABEL_31:
  v23 = v9[3];
  v30 = v12;
  sub_2684DEAF0(v23);
  OUTLINED_FUNCTION_31_8();
  v12 = v23 & 0xFFFFFFFFFFFFFF8;
  while (v6 != v3)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x26D61C170](v3, v23);
    }

    else
    {
      if (v3 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v24 = *(v23 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      goto LABEL_46;
    }

    if (*(v24 + OBJC_IVAR____TtC24SiriNotificationsIntents25NotificationsNotification_isHighlight))
    {
      v10 = &v30;
      sub_268569020();
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    else
    {
    }

    ++v3;
  }

  v25 = sub_2684DEAF0(v30) > 0;

  v15 = v25 << 8;
  return v15 | v13;
}

uint64_t sub_26853D2AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268532A48;

  return sub_268538678();
}

uint64_t sub_26853D33C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268532A48;

  return sub_268538A04();
}

uint64_t sub_26853D3CC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268532A48;

  return sub_268538D90();
}

uint64_t sub_26853D45C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB128;

  return sub_26853911C();
}

uint64_t sub_26853D508()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268532A48;

  return sub_268539EA0();
}

uint64_t sub_26853D5B0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268532A48;

  return sub_268539600();
}

void sub_26853D6A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_23_9();
    if (v7 == v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v6;
      v9[3] = (2 * ((v10 - 32) / 8)) | 1;
    }

    if (v5 != v4)
    {
      v11 = sub_2684DB414();
      OUTLINED_FUNCTION_48_2(v11);
      return;
    }

    goto LABEL_9;
  }
}

void sub_26853D764(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_23_9();
    if (v7 == v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C80, &qword_26856AD40);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v6;
      v9[3] = 2 * ((v10 - 32) / 8);
    }

    if (v5 != v4)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C78, qword_26856CB20);
      OUTLINED_FUNCTION_48_2(v11);
      return;
    }

    goto LABEL_9;
  }
}

void sub_26853D830(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    OUTLINED_FUNCTION_23_9();
    if (v7 == v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282CA0, &qword_26856AD60);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v9[2] = v6;
      v9[3] = 2 * ((v10 - 32) / 16);
    }

    if (v5 != v4)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

unint64_t sub_26853D8F8()
{
  result = qword_2802837B0;
  if (!qword_2802837B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280283440, &qword_26856D320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802837B0);
  }

  return result;
}

uint64_t sub_26853D95C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_34_6();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_26853D9B8(uint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_26853DA0C()
{
  v1 = sub_268567FF0();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v4 | 7);
}

uint64_t sub_26853DAD8()
{
  v2 = sub_268567FF0();
  OUTLINED_FUNCTION_2_4(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + ((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_268532894;

  return sub_268539DF4(v6, v0 + v4, v7);
}

uint64_t sub_26853DBD8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void OUTLINED_FUNCTION_4_22()
{
  *(v2 - 80) = *(v1 + 72);
}

uint64_t OUTLINED_FUNCTION_10_12()
{

  return sub_268567ED0();
}

uint64_t OUTLINED_FUNCTION_15_9()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));

  return sub_268567A20();
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return sub_268567850();
}

uint64_t OUTLINED_FUNCTION_26_8(uint64_t a1)
{

  return sub_2685679A0();
}

uint64_t OUTLINED_FUNCTION_27_8()
{

  return sub_268567B00();
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return sub_2685690A0();
}

uint64_t OUTLINED_FUNCTION_47_2()
{

  return __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_48_2(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_26853DEAC(uint64_t a1, const void *a2, char a3)
{
  *(v3 + 16) = a1;
  memcpy((v3 + 24), a2, 0x80uLL);
  *(v3 + 152) = a3;
  return v3;
}

uint64_t sub_26853DEE4@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_2685689F0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v67 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v67 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v67 - v18;
  v20 = *(v3 + 16);
  v21 = *(v20 + 48);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_33:
    v17 = OUTLINED_FUNCTION_0_0(&qword_280282960);
LABEL_10:
    OUTLINED_FUNCTION_1_21(v17, qword_28028B348);
    v30(v13);
    v31 = sub_2685689E0();
    v32 = sub_268568DC0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_16_0();
      *v33 = 0;
      _os_log_impl(&dword_2684CA000, v31, v32, "RNPromptReturnGroup getNextGroupTransition | repeat", v33, 2u);
      OUTLINED_FUNCTION_2();
    }

    (*(v7 + 8))(v13, v6);
    *(v20 + 64) = 1;
    goto LABEL_13;
  }

  *(v20 + 48) = v23;
  *(v20 + 32) = 0;
  switch(a1)
  {
    case 0:
      if (qword_280282960 != -1)
      {
        v17 = OUTLINED_FUNCTION_0_0(&qword_280282960);
      }

      OUTLINED_FUNCTION_1_21(v17, qword_28028B348);
      v24(v19);
      v25 = sub_2685689E0();
      v26 = sub_268568DC0();
      if (os_log_type_enabled(v25, v26))
      {
        v16 = OUTLINED_FUNCTION_16_0();
        *v16 = 0;
        _os_log_impl(&dword_2684CA000, v25, v26, "RNPromptReturnGroup getNextGroupTransition | accept", v16, 2u);
        OUTLINED_FUNCTION_2();
      }

      v27 = *(v7 + 8);
      v7 += 8;
      v27(v19, v6);
      v28 = *(v20 + 40);
      v22 = __OFADD__(v28, 1);
      v29 = v28 + 1;
      if (!v22)
      {
        *(v20 + 40) = v29;
LABEL_13:
        *(v20 + 56) = 0;
        OUTLINED_FUNCTION_2_22();
        v34 = *(v3 + 152);
        type metadata accessor for RNReadAppNotificationsActionGroup();
        swift_allocObject();

        v36 = sub_26850CF38(v35, __src, v34);
        v37 = &qword_280282A38;
        v38 = type metadata accessor for RNReadAppNotificationsActionGroup;
        v39 = &unk_26856CE8C;
LABEL_30:
        v64 = sub_26853E7F0(v37, 255, v38, v39);
        *a2 = v36;
        a2[1] = v64;
        v56 = MEMORY[0x277D5BF58];
        goto LABEL_31;
      }

      __break(1u);
LABEL_35:
      v17 = OUTLINED_FUNCTION_0_0(&qword_280282960);
LABEL_15:
      OUTLINED_FUNCTION_1_21(v17, qword_28028B348);
      v40(v16);
      v10 = sub_2685689E0();
      v41 = sub_268568DC0();
      if (os_log_type_enabled(v10, v41))
      {
        v42 = OUTLINED_FUNCTION_16_0();
        *v42 = 0;
        _os_log_impl(&dword_2684CA000, v10, v41, "RNPromptReturnGroup getNextGroupTransition | decline", v42, 2u);
        OUTLINED_FUNCTION_2();
      }

      v43 = *(v7 + 8);
      v7 += 8;
      v43(v16, v6);
      v44 = *(v20 + 40);
      v6 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
LABEL_37:
        v17 = OUTLINED_FUNCTION_0_0(&qword_280282960);
LABEL_23:
        OUTLINED_FUNCTION_1_21(v17, qword_28028B348);
        v57(v10);
        v58 = sub_2685689E0();
        v59 = sub_268568DC0();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = OUTLINED_FUNCTION_16_0();
          *v60 = 0;
          _os_log_impl(&dword_2684CA000, v58, v59, "RNPromptReturnGroup getNextGroupTransition | reply", v60, 2u);
          OUTLINED_FUNCTION_2();
        }

        (*(v7 + 8))(v10, v6);
        OUTLINED_FUNCTION_2_22();
        v61 = *(v3 + 152);
        type metadata accessor for RNReplyFollowupActionGroup(0);
        swift_allocObject();
        v36 = sub_2684F7E80(__src, v61);
        v37 = &unk_280283838;
        v38 = type metadata accessor for RNReplyFollowupActionGroup;
        v39 = &unk_26856BC78;
        goto LABEL_30;
      }

      v45 = *(sub_2684F4060() + 16);

      if (v6 >= v45 - 1)
      {
        OUTLINED_FUNCTION_2_22();
        type metadata accessor for RNReadConclusionActionGroup(0);
        swift_allocObject();
        v36 = sub_2684DBAF0(__src);
        v37 = &qword_2802833E8;
        v38 = type metadata accessor for RNReadConclusionActionGroup;
        v39 = &unk_26856AAF8;
        goto LABEL_30;
      }

      v46 = *(v20 + 40);
      v22 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v22)
      {
        __break(1u);
        goto LABEL_39;
      }

      *(v20 + 40) = v47;
      v48 = *(v20 + 56);
      v22 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v22)
      {
LABEL_39:
        __break(1u);
        JUMPOUT(0x26853E704);
      }

      *(v20 + 56) = v49;
      OUTLINED_FUNCTION_2_22();
      type metadata accessor for RNPromptFlow();
      swift_allocObject();
      v50 = sub_26854A0A8(v20, __src);
      OUTLINED_FUNCTION_2_22();
      v51 = *(v3 + 152);
      type metadata accessor for RNPromptReturnGroup();
      v52 = swift_allocObject();
      *(v52 + 16) = v20;
      memcpy((v52 + 24), __src, 0x80uLL);
      *(v52 + 152) = v51;
      v67[1] = v52;
      __src[0] = v50;
      sub_2685677B0();
      swift_allocObject();
      sub_26853E7F0(&qword_2802833F0, 255, type metadata accessor for RNPromptFlow, &protocol conformance descriptor for RNPromptFlow);
      sub_26853E7F0(&qword_2802833F8, v53, type metadata accessor for RNPromptReturnGroup, &unk_26856F044);
      swift_retain_n();
      *a2 = sub_2685677A0();
      v54 = *MEMORY[0x277D5B898];
      v55 = sub_268567960();
      (*(*(v55 - 8) + 104))(a2, v54, v55);
      v56 = MEMORY[0x277D5BF50];
LABEL_31:
      v65 = *v56;
      v66 = sub_268567E80();
      (*(*(v66 - 8) + 104))(a2, v65, v66);
      return __swift_storeEnumTagSinglePayload(a2, 0, 1, v66);
    case 2:
      if (qword_280282960 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_35;
    case 3:
      if (qword_280282960 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_33;
    case 4:
      if (qword_280282960 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_37;
    default:
      v62 = sub_268567E80();

      return __swift_storeEnumTagSinglePayload(a2, 1, 1, v62);
  }
}

uint64_t sub_26853E718()
{

  sub_2684CC8D4(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 153, 7);
}

uint64_t sub_26853E77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RNPromptReturnGroup();

  return MEMORY[0x2821BB570](a1, v5, a3);
}

uint64_t sub_26853E7F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_2_22()
{

  return sub_2684CC878(v0 + 24, v1 - 208);
}

uint64_t sub_26853E874@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_2685679B0();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_268567B60();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268567990();
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_268567A20();
  (*(v9 + 104))(v12, *MEMORY[0x277D5BC10], v7);
  (*(v3 + 104))(v6, *MEMORY[0x277D5B950], v1);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_4_13();
  sub_2684EBB74(v13, v14, v15, v16, v17, v18, v19, v20, v22, v23);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v25);
  return sub_268567D20();
}

uint64_t sub_26853EA60(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RNConclusionFlow();
  sub_26853F688();
  return sub_268567900();
}

uint64_t sub_26853EABC(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_2685679B0();
  v2[20] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v2[21] = v4;
  v2[22] = OUTLINED_FUNCTION_39();
  v5 = sub_268567B60();
  v2[23] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v2[24] = v6;
  v2[25] = OUTLINED_FUNCTION_39();
  sub_268567B10();
  v2[26] = OUTLINED_FUNCTION_39();
  v7 = sub_268567F20();
  v2[27] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v2[28] = v8;
  v2[29] = OUTLINED_FUNCTION_39();
  v9 = sub_2685689F0();
  v2[30] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v2[31] = v10;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26853EC88, 0, 0);
}

uint64_t sub_26853EC88()
{
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  v0[34] = v4;
  v5 = *(v3 + 16);
  v0[35] = v5;
  v0[36] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2685689E0();
  v7 = sub_268568DC0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2684CA000, v6, v7, "RNConclusionFlow execute", v8, 2u);
    MEMORY[0x26D61CB30](v8, -1, -1);
  }

  v9 = v0[33];
  v10 = v0[30];
  v11 = v0[31];
  v12 = v0[19];

  v13 = *(v11 + 8);
  v0[37] = v13;
  v13(v9, v10);
  sub_268567AE0();
  sub_268567ED0();
  v16 = (*(v12 + 16) + **(v12 + 16));
  v14 = swift_task_alloc();
  v0[38] = v14;
  *v14 = v0;
  v14[1] = sub_26853EEC4;

  return v16();
}

uint64_t sub_26853EEC4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v4 + 312) = v1;

  if (v1)
  {
    v7 = sub_26853F224;
  }

  else
  {
    *(v4 + 320) = a1;
    v7 = sub_26853EFE4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26853EFE4(uint64_t a1)
{
  v23 = v1[40];
  v2 = v1[24];
  v3 = v1[25];
  v5 = v1[22];
  v4 = v1[23];
  v6 = v1[20];
  v7 = v1[21];
  v22 = v1[19];
  sub_268567990();
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  sub_268567A20();
  (*(v2 + 104))(v3, *MEMORY[0x277D5BC10], v4);
  (*(v7 + 104))(v5, *MEMORY[0x277D5B950], v6);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_4_13();
  sub_2684EBB74(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v1 + 7);
  sub_2684D57FC(v22 + 112, (v1 + 12));
  sub_268567D00();
  swift_allocObject();
  sub_268567CF0();
  sub_268567840();
  swift_allocObject();
  v1[17] = sub_268567830();
  sub_268567890();

  sub_268567C30();

  v16 = OUTLINED_FUNCTION_2_23();
  v17(v16);

  v18 = v1[1];

  return v18();
}

uint64_t sub_26853F224()
{
  (*(v0 + 280))(*(v0 + 256), *(v0 + 272), *(v0 + 240));
  v1 = sub_2685689E0();
  v2 = sub_268568DE0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2684CA000, v1, v2, "RNConclusionFlow: Error while getting pattern result", v3, 2u);
    MEMORY[0x26D61CB30](v3, -1, -1);
  }

  v4 = *(v0 + 296);
  v5 = *(v0 + 256);
  v6 = *(v0 + 240);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = *(v0 + 176);
  v10 = *(v0 + 168);
  v25 = *(v0 + 184);
  v26 = *(v0 + 160);
  v27 = *(v0 + 312);

  v4(v5, v6);
  sub_268567990();
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_268567A20();
  (*(v8 + 104))(v7, *MEMORY[0x277D5BC00], v25);
  (*(v10 + 104))(v9, *MEMORY[0x277D5B8D0], v26);
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_4_13();
  sub_2684EBB74(v11, v12, v13, v14, v15, v16, v17, v18, v23, v24);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_268567C40();

  v19 = OUTLINED_FUNCTION_2_23();
  v20(v19);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_26853F460()
{

  sub_2684CC8D4(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

uint64_t sub_26853F4E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26853F584;

  return sub_26853EABC(a1);
}

uint64_t sub_26853F584()
{
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_26853F688()
{
  result = qword_280283840;
  if (!qword_280283840)
  {
    type metadata accessor for RNConclusionFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283840);
  }

  return result;
}

uint64_t sub_26853F778()
{
  OUTLINED_FUNCTION_5();
  v1[14] = v0;
  v2 = sub_2685679B0();
  v1[15] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[16] = v3;
  v1[17] = swift_task_alloc();
  v4 = sub_268567B60();
  v1[18] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[19] = v5;
  v1[20] = swift_task_alloc();
  v6 = sub_2685689F0();
  v1[21] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[22] = v7;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v8 = sub_268567D90();
  v1[25] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[26] = v9;
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26853F934, 0, 0);
}

uint64_t sub_26853F934()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0[14] + 32);
  v2 = swift_task_alloc();
  v0[28] = v2;
  *v2 = v0;
  v2[1] = sub_26853F9D4;
  v3 = v0[27];

  return sub_26850D7A0(v3, v1);
}

uint64_t sub_26853F9D4()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  *(v4 + 232) = v0;

  if (v0)
  {
    v5 = sub_26853FF54;
  }

  else
  {
    v5 = sub_26853FADC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26853FADC()
{
  v1 = v0[14];
  v2 = sub_26851C004(v0[27], v1 + 10, 0);
  v0[30] = v2;
  v3 = v1[8];
  v4 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v3);
  v5 = swift_task_alloc();
  v0[31] = v5;
  v6 = sub_2684E0120();
  *v5 = v0;
  v5[1] = sub_26853FBCC;

  return MEMORY[0x2821BB6A0](v2, v3, v6, v4);
}

uint64_t sub_26853FBCC()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 256) = v0;

  if (v0)
  {
    v7 = sub_2685401F8;
  }

  else
  {

    v7 = sub_26853FCDC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26853FCDC()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_2685689E0();
  v6 = sub_268568DF0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNInformNoNewNotificationsAction run | informed user of no new notifications", v7, 2u);
    OUTLINED_FUNCTION_2();
  }

  v8 = v0[26];
  v9 = v0[24];
  v24 = v0[30];
  v25 = v0[25];
  v10 = v0[22];
  v26 = v0[27];
  v11 = v0[20];
  v12 = v0[21];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[16];
  v22 = v0[17];
  v23 = v0[15];

  (*(v10 + 8))(v9, v12);
  sub_268567990();
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_268567A20();
  (*(v13 + 104))(v11, *MEMORY[0x277D5BC10], v14);
  (*(v15 + 104))(v22, *MEMORY[0x277D5B950], v23);
  v16 = OUTLINED_FUNCTION_1_22();
  sub_2684EBB74(v16, v17, v11, v22, 8, 0, 0, 0, v20, v21);
  sub_2685679A0();

  (*(v8 + 8))(v26, v25);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  OUTLINED_FUNCTION_9_1();

  return v18();
}

uint64_t sub_26853FF54()
{
  v34 = v0;
  v4 = v0[29];
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(v0[21], qword_28028B348);
  v5 = OUTLINED_FUNCTION_10_1();
  v6(v5);
  v7 = v4;
  v8 = sub_2685689E0();
  v9 = sub_268568DE0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[22];
  v32 = v0[23];
  v12 = v0[21];
  if (v10)
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v33 = v2;
    *v1 = 136315138;
    v0[13] = v4;
    v13 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v14 = sub_268568B70();
    v3 = sub_2684EABEC(v14, v15, &v33);

    *(v1 + 4) = v3;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v16, v17, "RNInformNoNewNotificationsAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v2);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  v18 = (*(v11 + 8))(v32, v12);
  OUTLINED_FUNCTION_3_20(v18);
  OUTLINED_FUNCTION_57();
  (*(v3 + 104))(v9, *MEMORY[0x277D5BC10], v8);
  (*(v1 + 104))(v12, *MEMORY[0x277D5B950], v2);
  v0[12] = v4;
  v19 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();
  v20 = OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_6_7(v20, v21, v22, v23, v24, v25, v26, v27, v30, v31);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v28();
}

uint64_t sub_2685401F8()
{
  v37 = v0;
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 200);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 256);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(*(v0 + 168), qword_28028B348);
  v8 = OUTLINED_FUNCTION_10_1();
  v9(v8);
  v10 = v7;
  v11 = sub_2685689E0();
  v12 = sub_268568DE0();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 176);
  v35 = *(v0 + 184);
  v15 = *(v0 + 168);
  if (v13)
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v36 = v2;
    *v1 = 136315138;
    *(v0 + 104) = v7;
    v16 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v17 = sub_268568B70();
    v3 = sub_2684EABEC(v17, v18, &v36);

    *(v1 + 4) = v3;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v19, v20, "RNInformNoNewNotificationsAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v2);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  v21 = (*(v14 + 8))(v35, v15);
  OUTLINED_FUNCTION_3_20(v21);
  OUTLINED_FUNCTION_57();
  (*(v3 + 104))(v12, *MEMORY[0x277D5BC10], v11);
  (*(v1 + 104))(v15, *MEMORY[0x277D5B950], v2);
  *(v0 + 96) = v7;
  v22 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();
  v23 = OUTLINED_FUNCTION_1_22();
  OUTLINED_FUNCTION_6_7(v23, v24, v25, v26, v27, v28, v29, v30, v33, v34);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v31();
}

uint64_t sub_2685404E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DFF1C;

  return sub_26853F778();
}

uint64_t sub_268540600(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RNInformNoNewNotificationsAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_20(uint64_t a1)
{

  return sub_268567990();
}

uint64_t sub_268540688(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2685406BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for ReadingRecord(0);
    sub_2684E6980(a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a2);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for ReadingRecord(0);
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t sub_26854079C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      sub_2684DEAFC();
      if ((a1 & 0xC000000000000001) == 0)
      {
      }
    }

    return MEMORY[0x26D61C170](v3, a1);
  }

  result = sub_2685690A0();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_268540830@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_2685679B0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_14();
  v123 = v8;
  v121 = sub_268567B60();
  OUTLINED_FUNCTION_1();
  v120 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_14();
  v122 = v11;
  v12 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v115 = &v110 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v114 = &v110 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v110 - v24;
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v26 = __swift_project_value_buffer(v12, qword_28028B348);
  v27 = *(v14 + 16);
  v117 = v26;
  v119 = v14 + 16;
  v118 = v27;
  v27(v25);
  v28 = sub_2685689E0();
  v116 = sub_268568DC0();
  v29 = os_log_type_enabled(v28, v116);
  v125 = a1;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v113 = a2;
    v31 = v30;
    v111 = v30;
    v112 = swift_slowAlloc();
    v127[0] = v112;
    *v31 = 136315138;
    v126[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283868, &unk_26856F300);
    v32 = sub_268568B70();
    v34 = v18;
    v35 = v14;
    v36 = v12;
    v37 = v6;
    v38 = v4;
    v39 = sub_2684EABEC(v32, v33, v127);

    v40 = v111;
    *(v111 + 4) = v39;
    v4 = v38;
    v6 = v37;
    v12 = v36;
    v14 = v35;
    v18 = v34;
    _os_log_impl(&dword_2684CA000, v28, v116, "NotificationFollowupReturnGroup getNextGroupTransition | exitValue: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v112);
    OUTLINED_FUNCTION_2();
    a2 = v113;
    OUTLINED_FUNCTION_2();
  }

  v41 = *(v14 + 8);
  v41(v25, v12);
  switch(v125)
  {
    case 1:
      sub_268504C5C();
      OUTLINED_FUNCTION_0_22();
      v54();
      v55 = sub_2685689E0();
      v56 = sub_268568DC0();
      if (OUTLINED_FUNCTION_12_1(v56))
      {
        v57 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_11_13(v57);
        OUTLINED_FUNCTION_8_11(&dword_2684CA000, v58, v59, "NotificationFollowupReturnGroup getNextGroupTransition | appending follow-up notification and transitioning to ReadNotificationsActionGroup to read the full notification");
        OUTLINED_FUNCTION_2();
      }

      goto LABEL_18;
    case 2:
      sub_268504DEC();
      OUTLINED_FUNCTION_0_22();
      v85();
      v55 = sub_2685689E0();
      v86 = sub_268568DC0();
      if (OUTLINED_FUNCTION_12_1(v86))
      {
        v87 = OUTLINED_FUNCTION_16_0();
        OUTLINED_FUNCTION_11_13(v87);
        OUTLINED_FUNCTION_8_11(&dword_2684CA000, v88, v89, "NotificationFollowupReturnGroup getNextGroupTransition | appending follow-up notification and transitioning to ReadNotificationsActionGroup to repeat the previous notification");
        OUTLINED_FUNCTION_2();
      }

LABEL_18:

      v90 = OUTLINED_FUNCTION_7_22();
      (v41)(v90);
      sub_268567990();
      OUTLINED_FUNCTION_5_19();
      v91 = OUTLINED_FUNCTION_1_23();
      v92(v91);
      v93 = OUTLINED_FUNCTION_3_21();
      v94(v93);
      OUTLINED_FUNCTION_13_16();

      v96 = sub_26854079C(v95);

      OUTLINED_FUNCTION_2_15();
      OUTLINED_FUNCTION_6_21();
      v104 = sub_2684EBB74(v97, v98, v99, v100, v101, v102, v103, v96, v110, v111);
      OUTLINED_FUNCTION_9_19(v104);

      __swift_destroy_boxed_opaque_existential_0(v127);
      sub_2684CC878(v124 + 24, v127);
      type metadata accessor for ANReadNotificationsActionGroup();
      swift_allocObject();

      v81 = sub_2684D4E64(v105, v127);
      v82 = &qword_280282B70;
      v83 = type metadata accessor for ANReadNotificationsActionGroup;
      v84 = &unk_26856A4E8;
      goto LABEL_19;
    case 3:
      v125 = v4;
      OUTLINED_FUNCTION_0_22();
      v60();
      v61 = sub_2685689E0();
      v62 = sub_268568DC0();
      if (OUTLINED_FUNCTION_12_1(v62))
      {
        v63 = OUTLINED_FUNCTION_16_0();
        *v63 = 0;
        _os_log_impl(&dword_2684CA000, v61, v18, "NotificationFollowupReturnGroup getNextGroupTransition | transitioning to ReplyFollowupActionGroup to provide unsupported message for reply", v63, 2u);
        OUTLINED_FUNCTION_2();
      }

      v64 = OUTLINED_FUNCTION_7_22();
      (v41)(v64);
      sub_268567990();
      OUTLINED_FUNCTION_5_19();
      v65 = OUTLINED_FUNCTION_1_23();
      v66(v65);
      v67 = OUTLINED_FUNCTION_3_21();
      v69 = v68(v67);
      v70 = v124;
      sub_268503BF8(v69);
      OUTLINED_FUNCTION_2_15();
      OUTLINED_FUNCTION_6_21();
      v79 = sub_2684EBB74(v71, v72, v73, v74, v75, v76, v77, v78, v110, v111);
      OUTLINED_FUNCTION_9_19(v79);

      __swift_destroy_boxed_opaque_existential_0(v127);
      sub_2684CC878(v70 + 24, v127);
      type metadata accessor for ANReplyFollowupActionGroup();
      swift_allocObject();

      v81 = sub_2684CC29C(v80, v127);
      v82 = &unk_280283860;
      v83 = type metadata accessor for ANReplyFollowupActionGroup;
      v84 = &unk_268569C20;
LABEL_19:
      v106 = sub_268541300(v82, v83, v84);
      *a2 = v81;
      a2[1] = v106;
      v107 = *MEMORY[0x277D5BF58];
      v108 = sub_268567E80();
      (*(*(v108 - 8) + 104))(a2, v107, v108);
      v52 = a2;
      v53 = 0;
      v51 = v108;
      return __swift_storeEnumTagSinglePayload(v52, v53, 1, v51);
    case 4:
    case 5:
      goto LABEL_9;
    default:
      v42 = v4;
      OUTLINED_FUNCTION_0_22();
      v43();
      v44 = sub_2685689E0();
      v45 = sub_268568DC0();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = OUTLINED_FUNCTION_16_0();
        *v46 = 0;
        _os_log_impl(&dword_2684CA000, v44, v45, "NotificationFollowupReturnGroup getNextGroupTransition | cancelling request by returning nil", v46, 2u);
        OUTLINED_FUNCTION_2();
      }

      v41(v18, v12);
      sub_268567990();
      __swift_project_boxed_opaque_existential_1(v127, v127[3]);
      sub_268567A20();
      v47 = v122;
      (*(v120 + 104))(v122, *MEMORY[0x277D5BC08], v121);
      v48 = v123;
      v49 = (*(v6 + 104))(v123, *MEMORY[0x277D5B950], v42);
      sub_268503BF8(v49);
      OUTLINED_FUNCTION_2_15();
      sub_2684EBB74(8u, 9, v47, v48, 8, 0, 0, v50, v110, v111);
      sub_2685679A0();

      __swift_destroy_boxed_opaque_existential_0(v127);
LABEL_9:
      v51 = sub_268567E80();
      v52 = a2;
      v53 = 1;
      return __swift_storeEnumTagSinglePayload(v52, v53, 1, v51);
  }
}

uint64_t sub_26854128C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ANFollowupReturnGroup();

  return MEMORY[0x2821BB570](a1, v5, a3);
}

uint64_t sub_268541300(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_5_19()
{
  __swift_project_boxed_opaque_existential_1((v0 - 216), *(v0 - 192));

  return sub_268567A20();
}

uint64_t OUTLINED_FUNCTION_9_19(uint64_t a1)
{

  return sub_2685679A0();
}

uint64_t OUTLINED_FUNCTION_13_16()
{

  return swift_beginAccess();
}

uint64_t sub_268541460()
{
  if (*(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead))
  {
    return 1;
  }

  else
  {
    return *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized);
  }
}

uint64_t sub_268541488()
{
  v1 = v0;
  v2 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v8 = __swift_project_value_buffer(v2, qword_28028B348);
  (*(v4 + 16))(v7, v8, v2);
  swift_retain_n();
  v9 = sub_2685689E0();
  v10 = sub_268568DD0();
  v11 = &unk_28028B000;
  v12 = &unk_28028B000;
  if (os_log_type_enabled(v9, v10))
  {
    v13 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v13 = 136315650;
    LOBYTE(v26) = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_summaryType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283890, &unk_26856F5D0);
    v14 = sub_268568B70();
    v16 = sub_2684EABEC(v14, v15, &v27);

    *(v13 + 4) = v16;
    *(v13 + 12) = 1024;
    v17 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired);

    *(v13 + 14) = v17;

    *(v13 + 18) = 2080;
    v26 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_announcePlatform);
    type metadata accessor for AFSiriAnnouncementPlatform(0);
    v18 = sub_268568B70();
    v20 = sub_2684EABEC(v18, v19, &v27);
    v11 = &unk_28028B000;

    *(v13 + 20) = v20;
    _os_log_impl(&dword_2684CA000, v9, v10, "ReadNotification#shouldHardPrompt summaryType: %s, isFullContentReadRequired: %{BOOL}d, announcePlatform: %s", v13, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2();
    v12 = &unk_28028B000;
    OUTLINED_FUNCTION_2();
  }

  else
  {
  }

  (*(v4 + 8))(v7, v2);
  if ((*(v1 + v12[143]) & 1) != 0 || *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_announcePlatform) == 4)
  {
    v21 = 0;
  }

  else
  {
    v23 = v11[141];
    v24 = 1;
    v21 = 0;
    switch(*(v1 + v23))
    {
      case 2:
LABEL_16:

        v21 = v24;
        break;
      case 3:
        return v21 & 1;
      default:
        v25 = sub_2685691C0();

        if (v25)
        {
          v21 = 1;
        }

        else
        {
          v21 = 0;
          switch(*(v1 + v23))
          {
            case 1:
            case 2:
              v24 = sub_2685691C0();
              goto LABEL_16;
            case 3:
              return v21 & 1;
            default:
              v24 = 1;
              goto LABEL_16;
          }
        }

        break;
    }
  }

  return v21 & 1;
}

char *sub_26854188C(uint64_t *a1)
{
  v2 = v1;
  v1[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead] = 0;
  v1[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized] = 0;
  v1[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isAppLocked] = 0;
  v1[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_summaryType] = 3;
  v1[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired] = 0;
  v4 = *a1;
  v5 = a1[1];
  *(v2 + 2) = *a1;
  *(v2 + 3) = v5;
  v6 = a1[3];
  *(v2 + 4) = a1[2];
  *(v2 + 5) = v6;
  v7 = type metadata accessor for ANDirectInvocation(0);
  v8 = v7[6];
  v9 = OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_date;
  v10 = sub_2685675E0();
  (*(*(v10 - 8) + 16))(&v2[v9], a1 + v8, v10);
  v11 = (a1 + v7[10]);
  v12 = *v11;
  v13 = v11[1];
  v14 = &v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_threadIdentifier];
  *v14 = v12;
  *(v14 + 1) = v13;
  sub_2685687A0();

  swift_bridgeObjectRetain_n();

  *&v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_appName] = sub_2684FF6C4(v4, v5);
  v15 = (a1 + v7[7]);
  v16 = *v15;
  v17 = v15[1];
  v18 = &v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title];
  *v18 = v16;
  *(v18 + 1) = v17;
  v19 = (a1 + v7[8]);
  v20 = *v19;
  v21 = v19[1];
  v22 = &v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle];
  *v22 = v20;
  *(v22 + 1) = v21;
  v23 = (a1 + v7[9]);
  v24 = *v23;
  v25 = v23[1];
  v26 = &v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body];
  *v26 = v24;
  *(v26 + 1) = v25;
  v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_origin] = 0;
  v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSameTypeAsLastAnnouncement] = *(a1 + v7[12]);
  *&v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_announcePlatform] = *(a1 + v7[13]);
  v27 = *(a1 + v7[14]);
  v28 = &v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType];
  *&v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType] = v27;
  type metadata accessor for NotificationSelfContext();
  *(v28 + 2) = 0;
  *(v28 + 3) = 0;
  *(v28 + 1) = 0;
  *(v28 + 16) = 0;
  swift_allocObject();
  v29 = v27;

  v30 = sub_268512D7C();
  sub_268542E68(a1);
  *&v2[OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationSelfContext] = v30;
  return v2;
}

void *sub_268541AD0(void *a1, int a2, void (*a3)(char *, uint64_t))
{
  v4 = v3;
  v69 = a3;
  LODWORD(v68) = a2;
  v6 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v67 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v63 - v12;
  v14 = sub_2685675E0();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  v19 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead) = 0;
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized) = 0;
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isAppLocked) = 0;
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_summaryType) = 3;
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired) = 0;
  v20 = a1;
  v21 = sub_2685565F0(v20);
  if (!v22)
  {
    goto LABEL_12;
  }

  v23 = v21;
  v24 = v22;
  v70 = v8;
  v65 = v19;
  v66 = v16;
  v25 = v20;
  v26 = sub_268565290(v25);
  if (!v27)
  {
LABEL_11:

LABEL_12:

    type metadata accessor for AnnounceNotification(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v28 = v26;
  v29 = v27;
  v64 = v14;
  v30 = [v25 date];
  if (!v30)
  {

    goto LABEL_11;
  }

  v31 = v30;
  v32 = v65;
  sub_2685675C0();

  v4[2] = v23;
  v4[3] = v24;
  v4[4] = v28;
  v4[5] = v29;

  v33 = sub_268565300(v25);
  OUTLINED_FUNCTION_5_20(v33, v34, OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title);
  v35 = sub_26856530C(v25);
  OUTLINED_FUNCTION_5_20(v35, v36, OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle);
  v37 = sub_268565318(v25);
  OUTLINED_FUNCTION_5_20(v37, v38, OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body);
  (*(v66 + 16))(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_date, v32, v64);
  v39 = sub_2685565FC(v25);
  OUTLINED_FUNCTION_5_20(v39, v40, OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_threadIdentifier);
  sub_2685687A0();

  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_appName) = sub_2684FF6C4(v23, v24);
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_origin) = 2;
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSameTypeAsLastAnnouncement) = v68 & 1;
  *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_announcePlatform) = v69;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v41 = __swift_project_value_buffer(v6, qword_28028B348);
  v42 = *(v70 + 16);
  v68 = v41;
  v63[1] = v42;
  v42(v13);
  v43 = sub_2685689E0();
  v44 = sub_268568DC0();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2684CA000, v43, v44, "ReadNotification init? attempting to unwrap SANotificationOnDeviceObject.request", v45, 2u);
    OUTLINED_FUNCTION_2();
  }

  v69 = *(v70 + 8);
  v70 += 8;
  v69(v13, v6);
  result = sub_268556608(v25);
  if (v47 >> 60 != 15)
  {
    v48 = result;
    v49 = v47;

    v50 = sub_2684E07D8(v48, v49);
    v52 = v51;
    sub_268542E54(v50, v51);
    v53 = v64;
    v54 = [v25 isHighlight];
    sub_2684D16C0(0, &qword_280282BA8, 0x277CCABB0);
    v55 = sub_268568E50();
    v56 = v55;
    if (v54)
    {
      v57 = sub_268568E70();

      v58 = v57 & 1;
    }

    else
    {

      v58 = 0;
    }

    v59 = sub_268527624(v25);
    v60 = v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType;
    *v60 = v58;
    *(v60 + 1) = v59;
    *(v60 + 2) = v61;
    *(v60 + 3) = v50;
    v60[32] = v52;
    v60[33] = 1;
    type metadata accessor for NotificationSelfContext();
    swift_allocObject();
    v62 = sub_268512D7C();
    sub_268542D78(v50, v52);

    (*(v66 + 8))(v65, v53);
    *(v4 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationSelfContext) = v62;
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_26854215C(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_2685691C0() & 1) == 0)
  {
    goto LABEL_65;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_2685691C0() & 1) == 0 || (sub_2685675B0() & 1) == 0)
  {
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_0_23();
  if (v8)
  {
    if (!v6)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_3_22(v7);
    v11 = v4 && v9 == v10;
    if (!v11 && (sub_2685691C0() & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (v6)
  {
    goto LABEL_65;
  }

  v12 = *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_appName);
  v13 = *(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_appName);
  if (v12)
  {
    if (!v13)
    {
      goto LABEL_65;
    }

    sub_2685687A0();

    v14 = static SirikitApp.== infix(_:_:)(v12, v13);

    if ((v14 & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (v13)
  {
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_0_23();
  if (v17)
  {
    if (!v15)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_3_22(v16);
    v20 = v4 && v18 == v19;
    if (!v20 && (sub_2685691C0() & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (v15)
  {
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_0_23();
  if (v23)
  {
    if (!v21)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_3_22(v22);
    v26 = v4 && v24 == v25;
    if (!v26 && (sub_2685691C0() & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (v21)
  {
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_0_23();
  if (v29)
  {
    if (!v27)
    {
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_3_22(v28);
    v32 = v4 && v30 == v31;
    if (!v32 && (sub_2685691C0() & 1) == 0)
    {
      goto LABEL_65;
    }
  }

  else if (v27)
  {
    goto LABEL_65;
  }

  if ((*(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead) & 1) == 0)
  {
    v33 = *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized);
    if (*(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead))
    {
      if (v33)
      {
        goto LABEL_61;
      }
    }

    else if (v33 == *(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized))
    {
      goto LABEL_61;
    }

LABEL_65:
    v36 = 0;
    return v36 & 1;
  }

  if ((*(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead) & 1) == 0 && (*(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized) & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_61:
  if (*(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired) != *(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullContentReadRequired) || *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_origin) != *(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_origin) || *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_announcePlatform) != *(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_announcePlatform))
  {
    goto LABEL_65;
  }

  v34 = *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 16);
  v39[0] = *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType);
  v39[1] = v34;
  v40 = *(a1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 32);
  v35 = *(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 16);
  v41[0] = *(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType);
  v41[1] = v35;
  v42 = *(a2 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 32);
  sub_268542D10(v39, v38);
  sub_268542D10(v41, v38);
  v36 = sub_268542428(v39, v41);
  sub_268542D48(v41);
  sub_268542D48(v39);
  return v36 & 1;
}

uint64_t sub_268542428(unsigned __int8 *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *a1;
  if ((a1[33] & 1) == 0)
  {
    if ((*(a2 + 33) & 1) == 0)
    {
      v14 = (*(a1 + 1) << 8) | ((*(a1 + 5) | (a1[7] << 16)) << 40) | v5;
      v6 = (v14 | v4) == 0;
      if (v14 && v4)
      {
        sub_2684D16C0(0, &qword_280283198, 0x277D5C208);
        sub_268542D10(a2, v18);
        sub_268542D10(a1, v18);
        v6 = sub_268568E70();
        sub_268542D48(a1);
        sub_268542D48(a2);
      }

      return v6 & 1;
    }

    goto LABEL_13;
  }

  v6 = 0;
  if (*(a2 + 33) & 1) == 0 || ((v5 ^ v4))
  {
    return v6 & 1;
  }

  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = a1[32];
  v10 = a2[2];
  v11 = a2[3];
  v12 = *(a2 + 32);
  if (!v7)
  {
    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_13:
    v6 = 0;
    return v6 & 1;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v13 = *(a1 + 1) == a2[1] && v7 == v10;
  if (!v13 && (sub_2685691C0() & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_20:
  v6 = (v9 & v12) == 255;
  if (v9 != 255 && v12 != 255)
  {
    v16 = v11;
    v17 = sub_2684E0B50(v8, v9 & 1, v11, v12 & 1);
    sub_268542D78(v11, v12);
    return v17 & 1;
  }

  return v6 & 1;
}

uint64_t sub_2685425EC()
{

  v1 = OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_date;
  v2 = sub_2685675E0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  OUTLINED_FUNCTION_6_22();

  OUTLINED_FUNCTION_6_22();
  OUTLINED_FUNCTION_6_22();
  OUTLINED_FUNCTION_6_22();
  sub_268542DFC(*(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType), *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 8), *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 16), *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 24), *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 32), *(v0 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_notificationType + 33));

  return v0;
}

uint64_t sub_2685426CC()
{
  sub_2685425EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AnnounceNotification(uint64_t a1)
{
  result = qword_280283870;
  if (!qword_280283870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268542778(uint64_t a1)
{
  result = sub_2685675E0();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AnnounceNotification.Origin(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268542940);
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

uint64_t get_enum_tag_for_layout_string_24SiriNotificationsIntents21RNNotificationContentVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2685429AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 34))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 33);
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

uint64_t sub_2685429EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = -a2;
    }
  }

  return result;
}

uint64_t sub_268542A74()
{
  if (*(v0 + 33))
  {
    v1 = *(v0 + 32);
    if (v1 != 255)
    {
      v2 = *(v0 + 24);
      v3 = v2;
      if (v1)
      {
        if (sub_2684E0514())
        {
          v4 = sub_2684E0764();
LABEL_11:
          v9 = v4;
          sub_268542D78(v2, v1);
          return v9;
        }
      }

      else if (sub_2684E03C8())
      {
        v4 = sub_2684E12C4();
        goto LABEL_11;
      }

      sub_268542D78(v2, v1);
    }

    return 0;
  }

  if (!*v0)
  {
    return 0;
  }

  v5 = [*v0 notification];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [v5 request];

  v8 = [v7 content];
  v9 = sub_2684E12C4();

  return v9;
}

uint64_t sub_268542B84()
{
  if (*(v0 + 33))
  {
    v1 = *(v0 + 8);

    return v1;
  }

  if (!*v0)
  {
    return 0;
  }

  v2 = sub_268542D8C(*v0);
  v1 = v2;
  if (!v2)
  {
    return v1;
  }

  if (!sub_2684DEAF0(v2))
  {

    return 0;
  }

  sub_2684DEAFC();
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x26D61C170](0, v1);
  }

  else
  {
    v3 = *(v1 + 32);
  }

  v4 = v3;

  v5 = [v4 summary];

  v1 = sub_268568B20();
  return v1;
}

uint64_t sub_268542C6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_268542428(v5, v7) & 1;
}

unint64_t sub_268542CBC()
{
  result = qword_280283880;
  if (!qword_280283880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280283880);
  }

  return result;
}

void sub_268542D78(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_268542D8C(void *a1)
{
  v1 = [a1 summaries];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2684D16C0(0, &qword_280283888, 0x277CEF418);
  v3 = sub_268568CE0();

  return v3;
}

void sub_268542DFC(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5, char a6)
{
  if (a6)
  {

    sub_268542D78(a4, a5);
  }

  else
  {
  }
}

id sub_268542E54(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t sub_268542E68(uint64_t a1)
{
  v2 = type metadata accessor for ANDirectInvocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_5_20@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_22()
{
}

uint64_t sub_268542F0C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, void *__src)
{
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 48) = a5;
  *(v7 + 56) = a6 & 1;
  *(v7 + 57) = HIBYTE(a6) & 1;
  memcpy((v7 + 64), __src, 0x80uLL);
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return v7;
}

uint64_t sub_268542F6C()
{
  OUTLINED_FUNCTION_5();
  v1[11] = v2;
  v1[12] = v0;
  v3 = sub_2685689F0();
  v1[13] = v3;
  v1[14] = *(v3 - 8);
  v1[15] = swift_task_alloc();
  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_268543024()
{
  v29 = v0;
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v2 + 16))(v1, v4, v3);

  v5 = sub_2685689E0();
  v6 = sub_268568DD0();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  if (v7)
  {
    v11 = v0[12];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v28 = v13;
    *v12 = 136315138;
    v14 = *(v11 + 16);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C78, qword_26856CB20);
    v16 = MEMORY[0x26D61BE70](v14, v15);
    v18 = sub_2684EABEC(v16, v17, &v28);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_2684CA000, v5, v6, "#RNReadNotificationHighlightsFlow notification highlights: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26D61CB30](v13, -1, -1);
    MEMORY[0x26D61CB30](v12, -1, -1);
  }

  (*(v9 + 8))(v8, v10);
  sub_2685685F0();
  sub_2685685E0();
  v0[16] = sub_2685685B0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BE8, &qword_26856A950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26856A540;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 64) = sub_268568610();
  __swift_allocate_boxed_opaque_existential_0((inited + 40));
  sub_268568600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BF0, &qword_26856AD20);
  v20 = sub_268568AD0();
  v0[17] = v20;
  v21 = swift_task_alloc();
  v0[18] = v21;
  v22 = sub_268568950();
  v23 = sub_268567C50();
  v24 = sub_26854431C(&qword_280282BF8, MEMORY[0x277D55F70], MEMORY[0x277D55F30]);
  *v21 = v0;
  v21[1] = sub_268543374;
  v25 = v0[11];
  v26 = v0[12];

  return MEMORY[0x2821C8828](v25, v20, &unk_26856F718, v26, v22, v23, v24);
}

uint64_t sub_268543374()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v3 + 152) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {

    OUTLINED_FUNCTION_9_1();

    return v9();
  }
}

uint64_t sub_2685434B0()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_9_1();

  return v0();
}

uint64_t sub_268543520(uint64_t a1, uint64_t a2)
{
  v2[28] = a1;
  v2[29] = a2;
  v3 = sub_2685689F0();
  v2[30] = v3;
  v2[31] = *(v3 - 8);
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2685435E0, 0, 0);
}

uint64_t sub_2685435E0()
{
  v1 = v0[29];
  sub_2684D57FC(v1 + 144, (v0 + 18));
  sub_268567D00();
  swift_allocObject();
  sub_268567CF0();
  v2 = sub_268567840();
  swift_allocObject();
  v3 = sub_268567830();
  v0[33] = v3;
  v0[26] = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 40);
  v19 = *(v1 + 32);
  v6 = *(v1 + 48);
  v18 = *(v1 + 56);
  v7 = *(v1 + 57);
  sub_2684CC878(v1 + 64, (v0 + 2));
  v8 = *(v1 + 24);
  swift_allocObject();

  v9 = sub_268567CF0();
  v10 = type metadata accessor for RNReadNotificationHighlightsFlowProvider();
  v11 = swift_allocObject();
  if (v7)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_268544030(v4, v19, v5, v6, v12 | v18, (v0 + 2), v9, v8, v11);
  v0[34] = v13;
  v0[27] = v13;
  v14 = swift_task_alloc();
  v0[35] = v14;
  v15 = sub_26854431C(&qword_280283898, type metadata accessor for RNReadNotificationHighlightsFlowProvider, &unk_26856EF18);
  *v14 = v0;
  v14[1] = sub_268543814;
  v16 = MEMORY[0x277D5B808];

  return MEMORY[0x2821BA370](v0 + 27, v2, v10, v16, v15);
}

uint64_t sub_268543814()
{
  OUTLINED_FUNCTION_9();
  v3[23] = v1;
  v3[24] = v2;
  v3[25] = v0;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 288) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_268543960()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNReadNotificationHighlightsFlow execute | pattern provider successfully created", v7, 2u);
    MEMORY[0x26D61CB30](v7, -1, -1);
  }

  v9 = v0[31];
  v8 = v0[32];
  v10 = v0[30];

  (*(v9 + 8))(v8, v10);
  sub_268567C30();

  OUTLINED_FUNCTION_9_1();

  return v11();
}

uint64_t sub_268543ACC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_2684DDBA0(0, 0, v7, &unk_26856F6C0, v9);
}

uint64_t sub_268543BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v6[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v6[7] = v8;
  *v8 = v6;
  v8[1] = sub_268543CC8;

  return sub_268542F6C();
}

uint64_t sub_268543CC8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  *(v4 + 64) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_268543DC8()
{

  sub_2684CC8D4(v0 + 64);
  return v0;
}

uint64_t sub_268543E08()
{
  sub_268543DC8();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

uint64_t sub_268543E84()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_268543ECC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684DB458;

  return sub_268543BCC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_268543F98()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2684DB128;

  return sub_268543520(v3, v0);
}

uint64_t sub_268544030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v15 = sub_268567D00();
  v16 = MEMORY[0x277D5BD58];
  v33[3] = v15;
  v33[4] = MEMORY[0x277D5BD58];
  v33[0] = a7;
  type metadata accessor for RNReadNotificationHighlightsFlowProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(a9 + 16) = [objc_opt_self() bundleForClass_];
  *(a9 + 272) = 0xD00000000000002CLL;
  *(a9 + 280) = 0x80000002685737B0;
  *(a9 + 288) = 4;
  *(a9 + 320) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    v25 = a4;
    *&v29 = MEMORY[0x277D84F90];
    sub_268569040();
    v19 = 0;
    while (v19 < *(a1 + 16))
    {
      v32 = *(a1 + 8 * v19 + 32);

      sub_268538310(&v32, v28);

      ++v19;
      sub_268569020();
      sub_268569050();
      sub_268569060();
      sub_268569030();
      if (v18 == v19)
      {

        v20 = v29;
        a4 = v25;
        v16 = MEMORY[0x277D5BD58];
        goto LABEL_7;
      }
    }

    __break(1u);

    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
LABEL_7:
    *(a9 + 104) = v20;
    *(a9 + 112) = a2;
    *(a9 + 120) = a3;
    *(a9 + 128) = a4;
    *(a9 + 136) = a5 & 1;
    *(a9 + 137) = HIBYTE(a5) & 1;
    sub_2684CC878(a6, a9 + 144);
    sub_2684D57FC(v33, a9 + 24);
    *(a9 + 304) = 0;
    *(a9 + 312) = 0;
    *(a9 + 296) = a8 & 1;
    sub_2684D57FC(a6 + 80, &v29);
    swift_allocObject();

    v21 = sub_268567CF0();
    v28[3] = v15;
    v28[4] = v16;
    v28[0] = v21;
    v22 = sub_268567840();
    swift_allocObject();
    v23 = sub_268567830();
    v30 = v22;
    v31 = MEMORY[0x277D5B808];

    *&v29 = v23;
    sub_2684CC8D4(a6);
    __swift_destroy_boxed_opaque_existential_0(v33);
    sub_2684D8314(&v29, a9 + 64);
    return a9;
  }

  return result;
}

uint64_t sub_26854431C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2685443C8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2685688F0();
  MEMORY[0x28223BE20](v4 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_2684D57FC(a1, v1 + 32);
  sub_2684D57FC(a1 + 40, v1 + 72);
  type metadata accessor for ReadNotificationsCATs(0);
  sub_2685688E0();
  sub_2685686F0();
  sub_2684D57FC(v1 + 72, v8);
  sub_2685685F0();
  v5 = sub_2685685D0();
  sub_268516318(v8, v5);

  __swift_destroy_boxed_opaque_existential_0(v8);
  v6 = sub_268568710();
  sub_2684CC8D4(a1);
  *(v2 + 112) = v6;
  return v2;
}

uint64_t sub_2685444F4()
{
  OUTLINED_FUNCTION_5();
  v1[14] = v0;
  v2 = sub_2685679B0();
  v1[15] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[16] = v3;
  v1[17] = swift_task_alloc();
  v4 = sub_268567B60();
  v1[18] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[19] = v5;
  v1[20] = swift_task_alloc();
  v6 = sub_2685689F0();
  v1[21] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[22] = v7;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v8 = sub_268567D90();
  v1[25] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[26] = v9;
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2685446B0, 0, 0);
}

uint64_t sub_2685446B0()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_268544748;

  return sub_26850E194();
}

uint64_t sub_268544748()
{
  OUTLINED_FUNCTION_5();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  *(v4 + 232) = v0;

  if (v0)
  {
    v5 = sub_268544CC8;
  }

  else
  {
    v5 = sub_268544850;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_268544850()
{
  v1 = v0[14];
  v2 = sub_26851C004(v0[27], v1 + 9, 0);
  v0[30] = v2;
  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  v5 = swift_task_alloc();
  v0[31] = v5;
  v6 = sub_2684E0120();
  *v5 = v0;
  v5[1] = sub_268544940;

  return MEMORY[0x2821BB6A0](v2, v3, v6, v4);
}

uint64_t sub_268544940()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 256) = v0;

  if (v0)
  {
    v7 = sub_268544F6C;
  }

  else
  {

    v7 = sub_268544A50;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_268544A50()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = __swift_project_value_buffer(v2, qword_28028B348);
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_2685689E0();
  v6 = sub_268568DF0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNReadConclusionAction run | read conclusion", v7, 2u);
    OUTLINED_FUNCTION_2();
  }

  v8 = v0[26];
  v9 = v0[24];
  v24 = v0[30];
  v25 = v0[25];
  v10 = v0[22];
  v26 = v0[27];
  v11 = v0[20];
  v12 = v0[21];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[16];
  v22 = v0[17];
  v23 = v0[15];

  (*(v10 + 8))(v9, v12);
  sub_268567990();
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_268567A20();
  (*(v13 + 104))(v11, *MEMORY[0x277D5BC10], v14);
  (*(v15 + 104))(v22, *MEMORY[0x277D5B958], v23);
  v16 = OUTLINED_FUNCTION_1_24();
  sub_2684EBB74(v16, v17, v11, v22, 8, 0, 0, 0, v20, v21);
  sub_2685679A0();

  (*(v8 + 8))(v26, v25);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);

  OUTLINED_FUNCTION_9_1();

  return v18();
}

uint64_t sub_268544CC8()
{
  v34 = v0;
  v4 = v0[29];
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(v0[21], qword_28028B348);
  v5 = OUTLINED_FUNCTION_10_1();
  v6(v5);
  v7 = v4;
  v8 = sub_2685689E0();
  v9 = sub_268568DE0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[22];
  v32 = v0[23];
  v12 = v0[21];
  if (v10)
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v33 = v2;
    *v1 = 136315138;
    v0[13] = v4;
    v13 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v14 = sub_268568B70();
    v3 = sub_2684EABEC(v14, v15, &v33);

    *(v1 + 4) = v3;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v16, v17, "RNReadConclusionAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v2);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  v18 = (*(v11 + 8))(v32, v12);
  OUTLINED_FUNCTION_3_20(v18);
  OUTLINED_FUNCTION_57();
  (*(v3 + 104))(v9, *MEMORY[0x277D5BC00], v8);
  (*(v1 + 104))(v12, *MEMORY[0x277D5B8D0], v2);
  v0[12] = v4;
  v19 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();
  v20 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_6_7(v20, v21, v22, v23, v24, v25, v26, v27, v30, v31);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v28();
}

uint64_t sub_268544F6C()
{
  v37 = v0;
  v5 = *(v0 + 208);
  v4 = *(v0 + 216);
  v6 = *(v0 + 200);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 256);
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(*(v0 + 168), qword_28028B348);
  v8 = OUTLINED_FUNCTION_10_1();
  v9(v8);
  v10 = v7;
  v11 = sub_2685689E0();
  v12 = sub_268568DE0();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 176);
  v35 = *(v0 + 184);
  v15 = *(v0 + 168);
  if (v13)
  {
    v1 = swift_slowAlloc();
    v2 = swift_slowAlloc();
    v36 = v2;
    *v1 = 136315138;
    *(v0 + 104) = v7;
    v16 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v17 = sub_268568B70();
    v3 = sub_2684EABEC(v17, v18, &v36);

    *(v1 + 4) = v3;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v19, v20, "RNReadConclusionAction run | error: %s");
    __swift_destroy_boxed_opaque_existential_0(v2);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_2();
  }

  v21 = (*(v14 + 8))(v35, v15);
  OUTLINED_FUNCTION_3_20(v21);
  OUTLINED_FUNCTION_57();
  (*(v3 + 104))(v12, *MEMORY[0x277D5BC00], v11);
  (*(v1 + 104))(v15, *MEMORY[0x277D5B8D0], v2);
  *(v0 + 96) = v7;
  v22 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
  sub_268568B70();
  v23 = OUTLINED_FUNCTION_1_24();
  OUTLINED_FUNCTION_6_7(v23, v24, v25, v26, v27, v28, v29, v30, v33, v34);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();

  return v31();
}

uint64_t sub_268545238()
{
  sub_2684FCA7C();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_268545290()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DFF1C;

  return sub_2685444F4();
}

uint64_t sub_2685453A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RNReadConclusionAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268545400(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x2822009F8](sub_268545420, 0, 0);
}

uint64_t sub_268545420()
{
  sub_2685685F0();
  sub_2685685E0();
  v0[13] = sub_2685685B0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BE8, &qword_26856A950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26856A540;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 64) = sub_268568610();
  __swift_allocate_boxed_opaque_existential_0((inited + 40));
  sub_268568600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BF0, &qword_26856AD20);
  v2 = sub_268568AD0();
  v0[14] = v2;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = sub_268568950();
  v5 = sub_268567C50();
  v6 = sub_26854653C(&qword_280282BF8, MEMORY[0x277D55F70], MEMORY[0x277D55F30]);
  *v3 = v0;
  v3[1] = sub_2685455F8;
  v7 = v0[11];
  v8 = v0[12];

  return MEMORY[0x2821C8828](v7, v2, &unk_26856F980, v8, v4, v5, v6);
}

uint64_t sub_2685455F8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v3 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_268545728, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_9_10();

    return v6();
  }
}

uint64_t sub_268545728()
{
  OUTLINED_FUNCTION_5();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_268545790(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return MEMORY[0x2822009F8](sub_2685457B0, 0, 0);
}

uint64_t sub_2685457B0()
{
  v1 = v0[26];
  sub_2684D57FC(v1 + 136, (v0 + 18));
  sub_268567D00();
  swift_allocObject();
  sub_268567CF0();
  v2 = sub_268567840();
  swift_allocObject();
  v3 = sub_268567830();
  v0[27] = v3;
  v0[23] = v3;
  v4 = *(v1 + 16);
  v19 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v18 = *(v1 + 48);
  v7 = *(v1 + 49);
  sub_2684CC878(v1 + 56, (v0 + 2));
  v8 = *(v1 + 184);
  swift_allocObject();

  v9 = sub_268567CF0();
  v10 = type metadata accessor for RNReadNotificationsFromMultipleAppsPatternFlowProvider();
  v11 = swift_allocObject();
  if (v7)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_268546258(v4, v19, v5, v6, v12 | v18, (v0 + 2), v9, v8, v11);
  v0[28] = v13;
  v0[24] = v13;
  v14 = swift_task_alloc();
  v0[29] = v14;
  v15 = sub_26854653C(&qword_2802838B0, type metadata accessor for RNReadNotificationsFromMultipleAppsPatternFlowProvider, &unk_26856EA90);
  *v14 = v0;
  v14[1] = sub_2685459E0;
  v16 = MEMORY[0x277D5B808];

  return MEMORY[0x2821BA370](v0 + 24, v2, v10, v16, v15);
}

uint64_t sub_2685459E0(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v5 + 240) = v1;

  if (v1)
  {
    v8 = sub_268545BA4;
  }

  else
  {
    *(v5 + 248) = a1;
    v8 = sub_268545B3C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_268545B3C()
{
  OUTLINED_FUNCTION_5();
  sub_268567C30();

  OUTLINED_FUNCTION_9_10();

  return v0();
}

uint64_t sub_268545BBC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_2684DDBA0(0, 0, v7, &unk_26856F928, v9);
}

uint64_t sub_268545CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v8 = swift_task_alloc();
  v6[6] = v8;
  v9 = swift_task_alloc();
  v6[7] = v9;
  *v9 = v6;
  v9[1] = sub_268545DB8;

  return sub_268545400(v8);
}

uint64_t sub_268545DB8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  *(v4 + 64) = v0;

  if (v0)
  {
    v5 = sub_268545F50;
  }

  else
  {
    v5 = sub_268545EBC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_268545EBC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_9_10();

  return v4();
}

uint64_t sub_268545F50()
{
  OUTLINED_FUNCTION_5();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_268545FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2684D1820;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_2685460AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2685460F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684D1F44;

  return sub_268545CBC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_2685461C0()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2684D1820;

  return sub_268545790(v3, v0);
}

uint64_t sub_268546258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  v15 = sub_268567D00();
  v16 = MEMORY[0x277D5BD58];
  v33[3] = v15;
  v33[4] = MEMORY[0x277D5BD58];
  v33[0] = a7;
  type metadata accessor for RNReadNotificationsFromOneAppPatternFlowProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(a9 + 16) = [objc_opt_self() bundleForClass_];
  *(a9 + 272) = 0xD000000000000033;
  *(a9 + 280) = 0x8000000268573580;
  *(a9 + 288) = 4;
  *(a9 + 320) = 0;
  v18 = *(a1 + 16);
  if (v18)
  {
    v25 = a3;
    *&v29 = MEMORY[0x277D84F90];
    sub_268569040();
    v19 = 0;
    while (v19 < *(a1 + 16))
    {
      v32 = *(a1 + 8 * v19 + 32);

      sub_26852E700(&v32, v28);

      ++v19;
      sub_268569020();
      sub_268569050();
      sub_268569060();
      sub_268569030();
      if (v18 == v19)
      {

        v20 = v29;
        a3 = v25;
        v16 = MEMORY[0x277D5BD58];
        goto LABEL_7;
      }
    }

    __break(1u);

    type metadata accessor for RNReadNotificationsFromMultipleAppsPatternFlowProvider();
    result = swift_deallocPartialClassInstance();
    __break(1u);
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
LABEL_7:
    *(a9 + 104) = v20;
    *(a9 + 112) = a2;
    *(a9 + 120) = a3;
    *(a9 + 128) = a4;
    *(a9 + 136) = a5 & 1;
    *(a9 + 137) = HIBYTE(a5) & 1;
    sub_2684CC878(a6, a9 + 144);
    sub_2684D57FC(v33, a9 + 24);
    *(a9 + 304) = 0;
    *(a9 + 312) = 0;
    sub_2684D57FC(a6 + 80, &v29);
    swift_allocObject();

    v21 = sub_268567CF0();
    v28[3] = v15;
    v28[4] = v16;
    v28[0] = v21;
    v22 = sub_268567840();
    swift_allocObject();
    v23 = sub_268567830();
    v30 = v22;
    v31 = MEMORY[0x277D5B808];

    *&v29 = v23;
    sub_2684CC8D4(a6);
    __swift_destroy_boxed_opaque_existential_0(v33);
    sub_2684D8314(&v29, a9 + 64);
    *(a9 + 296) = a8 & 1;
    return a9;
  }

  return result;
}

uint64_t sub_26854653C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26854658C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_2685465CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26854663C()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v3 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_5(v3);
  v4 = sub_268567F20();
  v1[4] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[5] = v5;
  v6 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_18_8(v6);
  v7 = sub_2685689F0();
  v1[7] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[8] = v8;
  v1[9] = OUTLINED_FUNCTION_39();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268546744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  if (qword_280282960 != -1)
  {
    v19 = OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v20 = *(v12 + 64);
  v21 = OUTLINED_FUNCTION_2_24(v19, qword_28028B348);
  v22(v21);
  sub_2685689E0();
  v23 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v23))
  {
    v24 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v24);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v25, v26, "RNReadNotificationsFromOneAppPatternFlowProvider makeEmptyResultSetFlow | Empty result set flow should never be run");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_14_6();
  (*(v16 + 8))(v13, v15);
  __swift_project_boxed_opaque_existential_1((v17 + 64), *(v17 + 88));
  v27 = [objc_allocWithZone(MEMORY[0x277D052D0]) init];
  sub_268567B00();
  OUTLINED_FUNCTION_16_11();
  sub_268567ED0();
  OUTLINED_FUNCTION_12_14();

  (*(v18 + 8))(v20, v14);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_33();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_2685468C0()
{
  OUTLINED_FUNCTION_5();
  v1[2] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v3 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_5(v3);
  v4 = sub_268567F20();
  v1[4] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[5] = v5;
  v6 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_18_8(v6);
  v7 = sub_2685689F0();
  v1[7] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[8] = v8;
  v1[9] = OUTLINED_FUNCTION_39();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2685469C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  if (qword_280282960 != -1)
  {
    v19 = OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v20 = *(v12 + 64);
  v21 = OUTLINED_FUNCTION_2_24(v19, qword_28028B348);
  v22(v21);
  sub_2685689E0();
  v23 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v23))
  {
    v24 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v24);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v25, v26, "RNReadNotificationsFromOneAppPatternFlowProvider makeSingleItemFlow | Single result set flow should never be run");
    OUTLINED_FUNCTION_12_3();
  }

  OUTLINED_FUNCTION_14_6();
  (*(v16 + 8))(v13, v15);
  __swift_project_boxed_opaque_existential_1((v17 + 64), *(v17 + 88));
  v27 = [objc_allocWithZone(MEMORY[0x277D052D0]) init];
  sub_268567B00();
  OUTLINED_FUNCTION_16_11();
  sub_268567ED0();
  OUTLINED_FUNCTION_12_14();

  (*(v18 + 8))(v20, v14);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_33();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_268546B44()
{
  OUTLINED_FUNCTION_5();
  v1[5] = v0;
  v2 = sub_268567B10();
  OUTLINED_FUNCTION_10(v2);
  v3 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_18_8(v3);
  v4 = sub_268567F20();
  v1[7] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_39();
  v6 = sub_2685689F0();
  v1[10] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[11] = v7;
  v1[12] = OUTLINED_FUNCTION_39();
  v8 = sub_268567FF0();
  v1[13] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_39();
  v10 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268546C9C()
{
  OUTLINED_FUNCTION_20_2();
  v1 = v0[5];
  sub_268567F80();
  v0[16] = *(v1 + 104);

  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_268546D5C;

  return sub_268548208();
}

uint64_t sub_268546D5C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v0;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 144) = v0;

  if (v0)
  {
    v7 = sub_26854703C;
  }

  else
  {
    v7 = sub_268546E84;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_268546E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23_10();
  if (qword_280282960 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v18 = OUTLINED_FUNCTION_2_24(v17, qword_28028B348);
  v19(v18);
  v20 = sub_2685689E0();
  v21 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v21))
  {
    v22 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v22);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v23, v24, "RNReadNotificationsFromOneAppPatternFlowProvider makeAllResultsFlow | pattern successfully executed");
    OUTLINED_FUNCTION_12_3();
  }

  v25 = v16[14];
  v26 = v16[12];
  v43 = v16[13];
  v44 = v16[15];
  v27 = v16[10];
  v28 = v16[11];
  v30 = v16[8];
  v29 = v16[9];
  v41 = v16[3];
  v42 = v16[7];
  v31 = v16[5];

  (*(v28 + 8))(v26, v27);
  sub_268567AE0();
  OUTLINED_FUNCTION_16_11();
  sub_268567ED0();
  __swift_project_boxed_opaque_existential_1((v31 + 64), *(v31 + 88));
  sub_268567850();

  (*(v30 + 8))(v29, v42);
  (*(v25 + 8))(v44, v43);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_59();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v42, v43, v44, a14, a15, a16);
}

uint64_t sub_26854703C()
{
  OUTLINED_FUNCTION_20_2();
  (*(v0[14] + 8))(v0[15], v0[13]);

  OUTLINED_FUNCTION_9_1();

  return v1();
}

uint64_t sub_2685470DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_268567CE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - v9;
  v11 = *(a2 + 104);
  v12 = sub_2684DEAF0(v11);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
LABEL_9:
    sub_268567CD0();
    sub_268509368(v13, v10);

    (*(v5 + 8))(v7, v4);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v4);
    sub_268567EF0();
    return sub_268567EE0();
  }

  v14 = v12;
  v21 = MEMORY[0x277D84F90];

  result = sub_268569040();
  if ((v14 & 0x8000000000000000) == 0)
  {
    v18 = v5;
    v19 = v4;
    v20 = a1;
    sub_2684DB414();
    v16 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x26D61C170](v16, v11);
      }

      else
      {
      }

      ++v16;
      sub_26856427C(v17);
      sub_268569020();
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    while (v14 != v16);

    v13 = v21;
    v5 = v18;
    v4 = v19;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_268547314()
{
  OUTLINED_FUNCTION_5();
  v1[4] = v2;
  v1[5] = v0;
  OUTLINED_FUNCTION_32_5(v3);
  v4 = sub_2685689F0();
  v1[6] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_39();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802838C0, &qword_26856FC00);
  OUTLINED_FUNCTION_10(v6);
  v1[9] = OUTLINED_FUNCTION_39();
  v7 = sub_268567A60();
  v1[10] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[11] = v8;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268547444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_23_10();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[13];
  v28 = v24[10];
  v29 = v24[11];
  sub_268567A30();
  v30 = sub_268567A40();
  v31 = *(v29 + 8);
  v31(v27, v28);
  if (v30)
  {
    v24[2] = v24[5];
    v32 = v24[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C78, qword_26856CB20);
    type metadata accessor for RNReadNotificationsFromOneAppPatternFlowProvider();
    sub_2685491EC(&qword_2802838D0, v33, type metadata accessor for RNReadNotificationsFromOneAppPatternFlowProvider, &unk_26856FB18);
    sub_268567810();
    sub_268567EC0();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802838C8, &qword_26856FC08);
    v35 = v32;
    v36 = 0;
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    v38 = v24[11];
    v37 = v24[12];
    v39 = v24[10];
    v41 = v24[7];
    v40 = v24[8];
    v42 = v24[6];
    v43 = v24[4];
    v44 = __swift_project_value_buffer(v42, qword_28028B348);
    (*(v41 + 16))(v40, v44, v42);
    (*(v38 + 16))(v37, v43, v39);
    v45 = sub_2685689E0();
    v46 = sub_268568DE0();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v24[12];
    v49 = v24[10];
    v51 = v24[7];
    v50 = v24[8];
    v52 = v24[6];
    if (v47)
    {
      a12 = v24[6];
      v53 = swift_slowAlloc();
      a11 = swift_slowAlloc();
      a13 = a11;
      *v53 = 136315138;
      sub_2685491EC(&qword_2802837E8, 255, MEMORY[0x277D5B9D0], MEMORY[0x277D5B9D8]);
      HIDWORD(a9) = v46;
      v54 = sub_2685691A0();
      a10 = v50;
      v56 = v55;
      v31(v48, v49);
      v57 = sub_2684EABEC(v54, v56, &a13);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_2684CA000, v45, BYTE4(a9), "Unsupported promptType '%s'. Will not support windowing.", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a11);
      MEMORY[0x26D61CB30](a11, -1, -1);
      MEMORY[0x26D61CB30](v53, -1, -1);

      (*(v51 + 8))(a10, a12);
    }

    else
    {

      v31(v48, v49);
      (*(v51 + 8))(v50, v52);
    }

    v58 = v24[3];
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802838C8, &qword_26856FC08);
    v35 = v58;
    v36 = 1;
  }

  __swift_storeEnumTagSinglePayload(v35, v36, 1, v34);

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_59();

  return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_268547804()
{
  OUTLINED_FUNCTION_5();
  v1[24] = v2;
  v1[25] = v0;
  v1[23] = v3;
  v4 = sub_268567FF0();
  v1[26] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[27] = v5;
  v1[28] = *(v6 + 64);
  v1[29] = OUTLINED_FUNCTION_39();
  v7 = sub_2685689F0();
  v1[30] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[31] = v8;
  v1[32] = OUTLINED_FUNCTION_39();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_268547900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23_10();
  if (qword_280282960 != -1)
  {
    v17 = OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v18 = OUTLINED_FUNCTION_2_24(v17, qword_28028B348);
  v19(v18);
  v20 = sub_2685689E0();
  v21 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v21))
  {
    v22 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v22);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v23, v24, "RNReadNotificationsFromOneAppPatternFlowProvider makeAllResultsFlow | executing makeWindowFlow");
    OUTLINED_FUNCTION_12_3();
  }

  v26 = v16[31];
  v25 = v16[32];
  v27 = v16[30];
  v28 = v16[24];
  v29 = v16[25];

  (*(v26 + 8))(v25, v27);
  sub_2684D57FC(v29 + 64, (v16 + 18));
  v30 = v16[21];
  v31 = v16[22];
  v32 = __swift_project_boxed_opaque_existential_1(v16 + 18, v30);
  sub_2684CC878(v29 + 144, (v16 + 2));
  v33 = sub_2684DEAF0(v28);
  v34 = MEMORY[0x277D84F90];
  v59 = v31;
  v60 = v30;
  v58 = v32;
  if (v33)
  {
    v35 = v33;
    a13 = MEMORY[0x277D84F90];
    result = sub_268569040();
    if (v35 < 0)
    {
      __break(1u);
      return result;
    }

    v37 = v16[24];
    sub_2684DB414();
    v38 = 0;
    do
    {
      if ((v37 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x26D61C170](v38, v16[24]);
      }

      else
      {
      }

      ++v38;
      sub_26856427C(v39);
      sub_268569020();
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    while (v35 != v38);
    v34 = a13;
  }

  v57 = v16[32];
  v40 = v16[28];
  v41 = v16[29];
  v43 = v16[26];
  v42 = v16[27];
  v44 = v16[24];
  v45 = v16[25];
  (*(v42 + 16))(v41, v16[23], v43);
  v46 = (*(v42 + 80) + 24) & ~*(v42 + 80);
  v47 = (v40 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = v45;
  (*(v42 + 32))(v48 + v46, v41, v43);
  *(v48 + v47) = v44;
  type metadata accessor for RNYesNoPromptStrategy();
  swift_allocObject();
  sub_2685276DC(v16 + 2, v34, 0, &unk_26856FBF8, v48);
  sub_2685491EC(&qword_280283580, 255, type metadata accessor for RNYesNoPromptStrategy, &unk_26856E158);

  sub_268567880();

  __swift_destroy_boxed_opaque_existential_0(v16 + 18);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_59();

  return v51(v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, a13, a14, a15, a16);
}

uint64_t sub_268547C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_26853004C;

  return sub_268548208();
}

uint64_t sub_268547CE8()
{
  OUTLINED_FUNCTION_5();
  v1[4] = v2;
  v1[5] = v0;
  OUTLINED_FUNCTION_32_5(v3);
  v4 = sub_268567B10();
  OUTLINED_FUNCTION_10(v4);
  v5 = OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_18_8(v5);
  v6 = sub_268567F20();
  v1[7] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_39();
  v8 = sub_2685689F0();
  v1[10] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_39();
  v10 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_268547DF4(uint64_t a1)
{
  if (qword_280282960 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v2 = OUTLINED_FUNCTION_2_24(a1, qword_28028B348);
  v3(v2);
  v4 = sub_2685689E0();
  v5 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v5))
  {
    v6 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v6);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v7, v8, "RNReadNotificationsFromOneAppPatternFlowProvider makeAllResultsFlow | executing makeFinalWindowFlow");
    OUTLINED_FUNCTION_12_3();
  }

  v10 = v1[11];
  v9 = v1[12];
  v11 = v1[10];

  (*(v10 + 8))(v9, v11);
  sub_268567AE0();
  sub_268567ED0();
  v12 = swift_task_alloc();
  v1[13] = v12;
  *v12 = v1;
  v12[1] = sub_268547F64;

  return sub_268548208();
}

uint64_t sub_268547F64()
{
  OUTLINED_FUNCTION_20_2();
  v3 = v2;
  OUTLINED_FUNCTION_9();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v5 + 112) = v0;

  if (v0)
  {
    v8 = sub_268548174;
  }

  else
  {
    *(v5 + 120) = v3;
    v8 = sub_26854807C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26854807C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_32();
  v13 = v12[15];
  v15 = v12[8];
  v14 = v12[9];
  v16 = v12[7];
  __swift_project_boxed_opaque_existential_1((v12[5] + 64), *(v12[5] + 88));
  v12[2] = sub_268567850();
  sub_268567790();
  sub_2685678E0();

  (*(v15 + 8))(v14, v16);

  OUTLINED_FUNCTION_3_18();
  OUTLINED_FUNCTION_33();

  return v19(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_268548174()
{
  OUTLINED_FUNCTION_20_2();
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_9_1();

  return v1();
}

uint64_t sub_268548208()
{
  OUTLINED_FUNCTION_5();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v4 = sub_2685689F0();
  v1[13] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[14] = v5;
  v1[15] = OUTLINED_FUNCTION_39();
  v6 = sub_2685679B0();
  v1[16] = v6;
  OUTLINED_FUNCTION_2_4(v6);
  v1[17] = v7;
  v1[18] = OUTLINED_FUNCTION_39();
  v8 = sub_268567B60();
  v1[19] = v8;
  OUTLINED_FUNCTION_2_4(v8);
  v1[20] = v9;
  v1[21] = OUTLINED_FUNCTION_39();
  v10 = sub_2685688F0();
  OUTLINED_FUNCTION_10(v10);
  v1[22] = OUTLINED_FUNCTION_39();
  v11 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_268548368()
{
  v2 = v0[11];
  v1 = v0[12];
  type metadata accessor for ReadNotificationsCATPatternsExecutor(0);
  sub_2685686F0();
  sub_2685685F0();
  v3 = sub_2685685D0();
  sub_268516318(v1 + 184, v3);

  sub_2685688E0();
  v0[23] = sub_268568710();
  v4 = *(v1 + 272);
  v5 = sub_268567FA0();
  v6 = sub_268567FC0();
  v21 = sub_268567FB0();
  v7 = sub_268567F70();
  v8 = sub_2684DEAF0(v2);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = v8;
    v23 = MEMORY[0x277D84F90];
    result = sub_268569040();
    if (v10 < 0)
    {
      __break(1u);
      return result;
    }

    v19 = v7;
    v20 = v6;
    v12 = v4;
    v13 = 0;
    v14 = v0[11] & 0xC000000000000001;
    do
    {
      if (v14)
      {
        MEMORY[0x26D61C170](v13, v0[11]);
      }

      else
      {
      }

      ++v13;
      sub_268555B38();

      sub_268569020();
      sub_268569050();
      sub_268569060();
      sub_268569030();
    }

    while (v10 != v13);
    v9 = v23;
    v4 = v12;
    v6 = v20;
    v7 = v19;
  }

  v0[24] = v9;
  v15 = v0[12];
  v16 = v0[10];
  v17 = swift_task_alloc();
  v0[25] = v17;
  *(v17 + 16) = v15;
  *(v17 + 24) = v16;
  v18 = swift_task_alloc();
  v0[26] = v18;
  *v18 = v0;
  v18[1] = sub_2685485D0;

  return sub_268513F68(0, v4, v5 & 1, v6 & 1, v21 & 1, v7 & 1, v9, &unk_26856FBE8);
}

uint64_t sub_2685485D0()
{
  OUTLINED_FUNCTION_9();
  v3[7] = v1;
  v3[8] = v2;
  v3[9] = v0;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;

  if (v0)
  {

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_268548798, 0, 0);
  }
}

uint64_t sub_268548798(uint64_t a1)
{
  v2 = sub_268567FB0();
  if (v2)
  {
    v4 = v1[20];
    v3 = v1[21];
    v6 = v1[18];
    v5 = v1[19];
    v7 = v1[16];
    v8 = v1[17];
    sub_268567990();
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    sub_268567A20();
    (*(v4 + 104))(v3, *MEMORY[0x277D5BC10], v5);
    (*(v8 + 104))(v6, *MEMORY[0x277D5B958], v7);
    sub_2684EBB74(1u, 2, v3, v6, 8, 0, 0, 0, 0, 2u);
    sub_2685679A0();

    v2 = __swift_destroy_boxed_opaque_existential_0(v1 + 2);
  }

  if (qword_280282960 != -1)
  {
    v2 = OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v9 = OUTLINED_FUNCTION_2_24(v2, qword_28028B348);
  v10(v9);
  v11 = sub_2685689E0();
  v12 = sub_268568DC0();
  if (OUTLINED_FUNCTION_29(v12))
  {
    v13 = OUTLINED_FUNCTION_16_0();
    OUTLINED_FUNCTION_26_0(v13);
    OUTLINED_FUNCTION_9_11(&dword_2684CA000, v14, v15, "RNReadNotificationsFromOneAppPatternFlowProvider executePatternForWindow | pattern successfully executed");
    OUTLINED_FUNCTION_12_3();
  }

  v16 = v1[8];
  v18 = v1[14];
  v17 = v1[15];
  v19 = v1[13];

  (*(v18 + 8))(v17, v19);

  v20 = v1[1];

  return v20(v16);
}

uint64_t sub_2685489C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2685489E4, 0, 0);
}

uint64_t sub_2685489E4()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 16);
  *(v1 + 48) = sub_2684DEAF0(*(*(v0 + 24) + 104));
  *(v1 + 56) = 0;
  sub_268567FE0();
  if ((v2 & 1) == 0)
  {
    result = sub_268567FE0();
    if (v4)
    {
      __break(1u);
      return result;
    }

    v5 = *(v0 + 16);
    *(v5 + 32) = result;
    *(v5 + 40) = 0;
  }

  v6 = *(v0 + 16);
  *(v6 + 64) = sub_268567F90();
  *(v6 + 72) = 0;
  OUTLINED_FUNCTION_9_1();

  return v7();
}

uint64_t sub_268548A94()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  sub_2684CC8D4(v0 + 144);

  return v0;
}

uint64_t sub_268548AF4()
{
  sub_268548A94();

  return MEMORY[0x2821FE8D8](v0, 296, 7);
}

uint64_t sub_268548B4C()
{
  v1 = *(*v0 + 280);

  return v1;
}

uint64_t sub_268548B80()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268532A48;

  return sub_26854663C();
}

uint64_t sub_268548C10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268532A48;

  return sub_2685468C0();
}

uint64_t sub_268548CA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268532A48;

  return sub_268546B44();
}

uint64_t sub_268548D30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2684DB128;

  return sub_268547314();
}

uint64_t sub_268548DDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268532A48;

  return sub_268547CE8();
}

uint64_t sub_268548E84()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268532A48;

  return sub_268547804();
}

uint64_t sub_268548F74()
{
  OUTLINED_FUNCTION_20_2();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2684DB128;

  return sub_2685489C0(v3, v5, v4);
}

uint64_t sub_268549018()
{
  v1 = sub_268567FF0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2685490F0()
{
  OUTLINED_FUNCTION_20_2();
  v2 = sub_268567FF0();
  OUTLINED_FUNCTION_2_4(v2);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + ((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_268532894;

  return sub_268547C3C(v6, v0 + v4, v7);
}

uint64_t sub_2685491EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_26854929C(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x2822009F8](sub_2685492BC, 0, 0);
}

uint64_t sub_2685492BC()
{
  sub_2685685F0();
  sub_2685685E0();
  v0[13] = sub_2685685B0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BE8, &qword_26856A950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26856A540;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 64) = sub_268568610();
  __swift_allocate_boxed_opaque_existential_0((inited + 40));
  sub_268568600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BF0, &qword_26856AD20);
  v2 = sub_268568AD0();
  v0[14] = v2;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = sub_268568950();
  v5 = sub_268567C50();
  v6 = sub_2684DB3B4();
  *v3 = v0;
  v3[1] = sub_2684D9E54;
  v7 = v0[11];
  v8 = v0[12];

  return MEMORY[0x2821C8828](v7, v2, &unk_26856FD30, v8, v4, v5, v6);
}

uint64_t sub_268549464(uint64_t a1, uint64_t a2)
{
  v2[16] = a1;
  v2[17] = a2;
  v3 = sub_2685679B0();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v4 = sub_268567B60();
  v2[21] = v4;
  v2[22] = *(v4 - 8);
  v2[23] = swift_task_alloc();
  sub_268567B10();
  v2[24] = swift_task_alloc();
  v5 = sub_268567F20();
  v2[25] = v5;
  v2[26] = *(v5 - 8);
  v2[27] = swift_task_alloc();
  v6 = sub_2685689F0();
  v2[28] = v6;
  v2[29] = *(v6 - 8);
  v2[30] = swift_task_alloc();
  sub_2685688F0();
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268549690, 0, 0);
}

uint64_t sub_268549690()
{
  v1 = v0[17];
  type metadata accessor for ReadNotificationsCATPatternsExecutor(0);
  sub_2685686F0();
  sub_2685685F0();
  v2 = sub_2685685D0();
  sub_268516318(v1 + 88, v2);

  sub_2685688E0();
  v3 = sub_268568710();
  v0[32] = v3;

  v4 = swift_task_alloc();
  v0[33] = v4;
  *v4 = v0;
  v4[1] = sub_2685497C8;
  v5 = v0[17];

  return sub_2685139D4(v3, v5);
}

uint64_t sub_2685497C8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v2[12] = v1;
  v2[13] = v4;
  v2[14] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v3[34] = v0;

  if (v0)
  {
    v7 = sub_2684DA7F8;
  }

  else
  {

    v7 = sub_2685498DC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2685498DC()
{
  if (qword_280282960 != -1)
  {
    swift_once();
  }

  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = __swift_project_value_buffer(v3, qword_28028B348);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2685689E0();
  v6 = sub_268568DC0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2684CA000, v5, v6, "RNNoNewNotificationsPatternFlow execute | pattern successfully executed", v7, 2u);
    MEMORY[0x26D61CB30](v7, -1, -1);
  }

  v8 = v0[30];
  v10 = v0[28];
  v9 = v0[29];
  v11 = v0[27];
  v22 = v0[26];
  v23 = v0[25];
  v12 = v0[22];
  v17 = v0[13];
  v18 = v0[23];
  v19 = v0[21];
  v20 = v0[20];
  v13 = v0[19];
  v14 = v0[17];
  v21 = v0[18];

  (*(v9 + 8))(v8, v10);
  sub_268567AE0();
  sub_268567ED0();
  sub_2684D57FC(v14 + 128, (v0 + 2));
  sub_268567D00();
  swift_allocObject();
  sub_268567CF0();
  sub_268567840();
  swift_allocObject();
  v0[15] = sub_268567830();
  sub_268567890();

  sub_268567990();
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_268567A20();
  (*(v12 + 104))(v18, *MEMORY[0x277D5BC10], v19);
  (*(v13 + 104))(v20, *MEMORY[0x277D5B950], v21);
  sub_2684EBB74(1u, 0, v18, v20, 8, 0, 0, 0, 0, 2u);
  sub_2685679A0();

  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  sub_268567C30();

  (*(v22 + 8))(v11, v23);

  OUTLINED_FUNCTION_9_1();

  return v15();
}

uint64_t sub_268549C68(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_2684DDBA0(0, 0, v7, &unk_26856FCD8, v9);
}

uint64_t sub_268549D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v8 = swift_task_alloc();
  v6[6] = v8;
  v9 = swift_task_alloc();
  v6[7] = v9;
  *v9 = v6;
  v9[1] = sub_2684DAC24;

  return sub_26854929C(v8);
}

uint64_t sub_268549E64()
{

  sub_2684CC8D4(v0 + 48);

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t sub_268549EFC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_268549F44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684DB458;

  return sub_268549D68(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26854A010()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2684DB128;

  return sub_268549464(v3, v0);
}

uint64_t sub_26854A0A8(uint64_t a1, const void *a2)
{
  *(v2 + 16) = a1;
  memcpy((v2 + 24), a2, 0x80uLL);
  *(v2 + 152) = 6;
  return v2;
}

uint64_t RNPromptFlow.exitValue.getter()
{
  if (*(v0 + 152) - 6 >= 3)
  {
    return *(v0 + 152);
  }

  else
  {
    return 5;
  }
}

uint64_t RNPromptFlow.execute()(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_26854A118, 0, 0);
}

uint64_t sub_26854A118(uint64_t a1)
{
  v2 = v1[8];
  if (*(v2 + 152) == 6)
  {
    *(v2 + 152) = 7;
    sub_2684D57FC(v2 + 64, (v1 + 2));
    type metadata accessor for RNPromptStrategy();
    swift_allocObject();

    sub_2684F8B4C(v3, v1 + 2);
    sub_2684D57FC(v2 + 104, (v1 + 2));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802838D8, qword_26856FD48);
    swift_allocObject();
    sub_26854A3DC(&qword_2802838E0, 255, type metadata accessor for RNPromptStrategy, &unk_26856BEA8);
    v1[2] = sub_268567760();
    sub_26854A2C8();

    sub_268567C00();
  }

  else
  {
    sub_268567C40();
  }

  v4 = v1[1];

  return v4();
}

unint64_t sub_26854A2C8()
{
  result = qword_2802838E8;
  if (!qword_2802838E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802838D8, qword_26856FD48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802838E8);
  }

  return result;
}

uint64_t RNPromptFlow.execute(completion:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RNPromptFlow();
  sub_26854A3DC(&qword_2802833F0, v2, type metadata accessor for RNPromptFlow, &protocol conformance descriptor for RNPromptFlow);
  return sub_268567900();
}

uint64_t sub_26854A3DC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_26854A424(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2685689F0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280283350, &qword_26856CD38);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  (*(v12 + 16))(&v28 - v14, a1, v10);
  if ((*(v12 + 88))(v15, v10) == *MEMORY[0x277D5BC38])
  {
    (*(v12 + 96))(v15, v10);
    v16 = *v15;
    if (qword_280282960 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v4, qword_28028B348);
    (*(v6 + 16))(v9, v17, v4);
    v18 = sub_2685689E0();
    v19 = sub_268568DC0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v2;
      v29 = v21;
      v22 = v21;
      *v20 = 136315138;
      v23 = RNPromptResponse.rawValue.getter(v16);
      v25 = sub_2684EABEC(v23, v24, &v29);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_2684CA000, v18, v19, "RNPromptFlow processPromptResult | prompt response: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      v26 = v22;
      v2 = v28;
      MEMORY[0x26D61CB30](v26, -1, -1);
      MEMORY[0x26D61CB30](v20, -1, -1);
    }

    result = (*(v6 + 8))(v9, v4);
    *(v2 + 152) = v16;
  }

  else
  {
    *(v2 + 152) = 8;
    return (*(v12 + 8))(v15, v10);
  }

  return result;
}

uint64_t RNPromptResponse.rawValue.getter(char a1)
{
  result = 0x747065636361;
  switch(a1)
  {
    case 1:
      result = 0x6C65636E6163;
      break;
    case 2:
      result = 0x656E696C636564;
      break;
    case 3:
      result = 0x746165706572;
      break;
    case 4:
      result = 0x796C706572;
      break;
    case 5:
      result = 0x6574616C65726E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t RNPromptFlow.deinit()
{

  sub_2684CC8D4(v0 + 24);
  return v0;
}

uint64_t RNPromptFlow.__deallocating_deinit()
{

  sub_2684CC8D4(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 153, 7);
}

uint64_t sub_26854A868(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2684CEB80;

  return RNPromptFlow.execute()(a1);
}

uint64_t sub_26854A904@<X0>(_BYTE *a1@<X8>)
{
  result = RNPromptFlow.exitValue.getter();
  *a1 = result;
  return result;
}

SiriNotificationsIntents::RNPromptResponse_optional __swiftcall RNPromptResponse.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_2685690D0();

  if (v1 >= 6)
  {
    return 6;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_26854A98C()
{
  result = qword_2802838F0;
  if (!qword_2802838F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802838F0);
  }

  return result;
}

SiriNotificationsIntents::RNPromptResponse_optional sub_26854A9F8@<W0>(Swift::String *a1@<X0>, SiriNotificationsIntents::RNPromptResponse_optional *a2@<X8>)
{
  result.value = RNPromptResponse.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_26854AA28@<X0>(uint64_t *a1@<X8>)
{
  result = RNPromptResponse.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for RNPromptResponse(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RNPromptResponse(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26854ABA8);
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

uint64_t getEnumTagSinglePayload for RNPromptFlow.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8)
  {
    v2 = a2 + 8;
    if (a2 + 8 >= 0xFFFF00)
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

        return (*a1 | (v5 << 8)) - 8;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 8;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x26854AC90);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 8;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 6)
  {
    v8 = v7 - 5;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for RNPromptFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 8;
  if (a3 + 8 >= 0xFFFF00)
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

  if (a3 >= 0xF8)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF7)
  {
    v7 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x26854AD78);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26854ADA0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_26854ADB4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

uint64_t sub_26854ADD4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, const void *a6, char a7)
{
  v7 = result;
  v8 = 0;
  v39 = *(result + 16);
  v9 = MEMORY[0x277D84F90];
  v38 = result + 32;
  v36 = result;
  while (1)
  {
    if (v8 == v39)
    {

      *(v35 + 16) = v9;
      *(v35 + 24) = a2;
      *(v35 + 32) = a3;
      *(v35 + 40) = a4;
      *(v35 + 48) = a5 & 1;
      *(v35 + 49) = HIBYTE(a5) & 1;
      memcpy((v35 + 56), a6, 0x80uLL);
      *(v35 + 184) = a7 & 1;
      return v35;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v10 = *(v38 + 8 * v8);
    if (v10 >> 62)
    {
      v11 = sub_2685690A0();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v9 >> 62;
    if (v9 >> 62)
    {
      result = sub_2685690A0();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = result + v11;
    if (__OFADD__(result, v11))
    {
      goto LABEL_36;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v12)
      {
LABEL_14:
        sub_2685690A0();
      }

LABEL_15:
      result = sub_268569000();
      v9 = result;
      v14 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_16;
    }

    if (v12)
    {
      goto LABEL_14;
    }

    v14 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v13 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_15;
    }

LABEL_16:
    v40 = v14;
    v41 = v8 + 1;
    v15 = *(v14 + 16);
    v16 = (*(v14 + 24) >> 1) - v15;
    v17 = v14 + 8 * v15;
    if (v10 >> 62)
    {
      v19 = sub_2685690A0();
      if (v19)
      {
        v20 = v19;
        result = sub_2685690A0();
        if (v16 < result)
        {
          goto LABEL_40;
        }

        if (v20 < 1)
        {
          goto LABEL_41;
        }

        v37 = result;
        v21 = v17 + 32;
        sub_26854C830();
        for (i = 0; i != v20; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C78, qword_26856CB20);
          v23 = sub_2684DE984(v42, i, v10);
          v25 = *v24;

          v23(v42, 0);
          *(v21 + 8 * i) = v25;
        }

        v7 = v36;
        v18 = v37;
        goto LABEL_26;
      }

LABEL_30:

      v8 = v41;
      if (v11 > 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_30;
      }

      if (v16 < v18)
      {
        goto LABEL_39;
      }

      type metadata accessor for ReadNotification(0);
      swift_arrayInitWithCopy();
LABEL_26:

      v8 = v41;
      if (v18 < v11)
      {
        goto LABEL_37;
      }

      if (v18 > 0)
      {
        v26 = *(v40 + 16);
        v27 = __OFADD__(v26, v18);
        v28 = v26 + v18;
        if (v27)
        {
          goto LABEL_38;
        }

        *(v40 + 16) = v28;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_26854B0FC(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x2822009F8](sub_26854B11C, 0, 0);
}

uint64_t sub_26854B11C()
{
  sub_2685685F0();
  sub_2685685E0();
  v0[13] = sub_2685685B0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BE8, &qword_26856A950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26856A540;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 64) = sub_268568610();
  __swift_allocate_boxed_opaque_existential_0((inited + 40));
  sub_268568600();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BF0, &qword_26856AD20);
  v2 = sub_268568AD0();
  v0[14] = v2;
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = sub_268568950();
  v5 = sub_268567C50();
  v6 = sub_26854CA40(&qword_280282BF8, MEMORY[0x277D55F70], MEMORY[0x277D55F30]);
  *v3 = v0;
  v3[1] = sub_2685455F8;
  v7 = v0[11];
  v8 = v0[12];

  return MEMORY[0x2821C8828](v7, v2, &unk_268570020, v8, v4, v5, v6);
}

uint64_t sub_26854B2F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 320) = a1;
  *(v2 + 328) = a2;
  return MEMORY[0x2822009F8](sub_26854B314, 0, 0);
}

uint64_t sub_26854B314()
{
  v1 = *(v0 + 328);
  sub_2684D57FC(v1 + 136, v0 + 144);
  v2 = sub_268567D00();
  swift_allocObject();
  sub_268567CF0();
  v3 = MEMORY[0x277D5BD58];
  v4 = sub_268567840();
  swift_allocObject();
  v5 = sub_268567830();
  *(v0 + 336) = v5;
  *(v0 + 304) = v5;
  v6 = *(v1 + 16);
  v20 = *(v1 + 24);
  v7 = *(v1 + 40);
  v17 = *(v1 + 32);
  v18 = *(v1 + 49);
  v19 = *(v1 + 48);
  sub_2684CC878(v1 + 56, v0 + 16);
  v21 = *(v1 + 184);
  swift_allocObject();

  v8 = sub_268567CF0();
  v22 = type metadata accessor for RNReadNotificationsFromOneAppPatternFlowProvider();
  v9 = swift_allocObject();
  *(v0 + 344) = v9;
  *(v0 + 208) = v2;
  *(v0 + 216) = v3;
  *(v0 + 184) = v8;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  *(v9 + 16) = [v11 bundleForClass_];
  *(v9 + 280) = 0xD00000000000002DLL;
  *(v9 + 288) = 0x8000000268572C80;
  *(v9 + 104) = v6;
  *(v9 + 112) = v20;
  *(v9 + 120) = v17;
  *(v9 + 128) = v7;
  *(v9 + 136) = v19;
  *(v9 + 137) = v18;
  sub_2684CC878(v0 + 16, v9 + 144);
  sub_2684D57FC(v0 + 184, v9 + 24);
  sub_2684D57FC(v0 + 96, v0 + 264);
  swift_allocObject();

  sub_268567CF0();
  swift_allocObject();
  v12 = sub_268567830();
  v13 = MEMORY[0x277D5B808];
  *(v0 + 248) = v4;
  *(v0 + 256) = v13;

  *(v0 + 224) = v12;
  sub_2684CC8D4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  sub_2684D8314((v0 + 224), v9 + 64);
  *(v9 + 272) = v21;
  *(v0 + 312) = v9;
  v14 = swift_task_alloc();
  *(v0 + 352) = v14;
  v15 = sub_26854CA40(&qword_280283900, type metadata accessor for RNReadNotificationsFromOneAppPatternFlowProvider, &unk_26856FB70);
  *v14 = v0;
  v14[1] = sub_26854B64C;

  return MEMORY[0x2821BA370](v0 + 312, v4, v22, v13, v15);
}

uint64_t sub_26854B64C(uint64_t a1)
{
  OUTLINED_FUNCTION_9();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v5 + 360) = v1;

  if (v1)
  {
    v8 = sub_26854B810;
  }

  else
  {
    *(v5 + 368) = a1;
    v8 = sub_26854B7A8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26854B7A8()
{
  OUTLINED_FUNCTION_5();
  sub_268567C30();

  OUTLINED_FUNCTION_9_10();

  return v0();
}

uint64_t sub_26854B828(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A58, &qword_26856A930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_268568D70();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;

  sub_2684DDBA0(0, 0, v7, &unk_26856FFC8, v9);
}

uint64_t sub_26854B928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = sub_268567C50();
  v6[4] = v7;
  v6[5] = *(v7 - 8);
  v8 = swift_task_alloc();
  v6[6] = v8;
  v9 = swift_task_alloc();
  v6[7] = v9;
  *v9 = v6;
  v9[1] = sub_268545DB8;

  return sub_26854B0FC(v8);
}

void sub_26854BA6C()
{
  OUTLINED_FUNCTION_11_14();
  if (v4)
  {
    OUTLINED_FUNCTION_3_23();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_17();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_25();
    }
  }

  OUTLINED_FUNCTION_6_23();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283910, &qword_268570038);
    v7 = OUTLINED_FUNCTION_12_18();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_10_13(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26854BB3C()
{
  OUTLINED_FUNCTION_11_14();
  if (v4)
  {
    OUTLINED_FUNCTION_3_23();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_17();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_25();
    }
  }

  OUTLINED_FUNCTION_6_23();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282CA0, &qword_26856AD60);
    v7 = OUTLINED_FUNCTION_12_18();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_5_21();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_26854BC10()
{
  OUTLINED_FUNCTION_11_14();
  if (v3)
  {
    OUTLINED_FUNCTION_3_23();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_17();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_25();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282E38, &qword_268570030);
    v9 = OUTLINED_FUNCTION_12_18();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_5_21();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_26854BCE4()
{
  OUTLINED_FUNCTION_11_14();
  if (v4)
  {
    OUTLINED_FUNCTION_3_23();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_17();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_25();
    }
  }

  OUTLINED_FUNCTION_6_23();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283918, &qword_268570040);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 24);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[3 * v2 + 4] <= v7 + 4)
    {
      memmove(v7 + 4, v0 + 4, 24 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282A88, &qword_26856A028);
    swift_arrayInitWithCopy();
  }
}

void *sub_26854BDFC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_26854C458(v9, a2, &qword_280283200, &unk_26856FFB0, MEMORY[0x277D5FEB0]);
  v11 = *(sub_268568A70() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_26854C5EC(a4 + v12, v9, v10 + v12, MEMORY[0x277D5FEB0]);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_14_8();
  }

  return v10;
}

void sub_26854BF58(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = a1;
  if (a3)
  {
    OUTLINED_FUNCTION_3_23();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_8_17();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_25();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = a4[2];
  if (v12 <= v15)
  {
    v16 = a4[2];
  }

  else
  {
    v16 = v12;
  }

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v17 = OUTLINED_FUNCTION_12_18();
    v18 = _swift_stdlib_malloc_size(v17);
    v17[2] = v15;
    v17[3] = 2 * ((v18 - 32) / 8);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v17 != a4 || &a4[v15 + 4] <= v17 + 4)
    {
      memmove(v17 + 4, a4 + 4, 8 * v15);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }
}

void *sub_26854C06C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_26854C458(v9, a2, &qword_280283930, &qword_268570060, MEMORY[0x277D5FE08]);
  v11 = *(sub_268568A20() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_26854C5EC(a4 + v12, v9, v10 + v12, MEMORY[0x277D5FE08]);
    *(a4 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_14_8();
  }

  return v10;
}

void *sub_26854C180(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_26854C458(v9, a2, &qword_280282C98, &qword_26856AD58, type metadata accessor for ReadingRecord);
  v11 = *(type metadata accessor for ReadingRecord(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_26854C5EC(a4 + v12, v9, v10 + v12, type metadata accessor for ReadingRecord);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26854C2A4()
{
  OUTLINED_FUNCTION_11_14();
  if (v4)
  {
    OUTLINED_FUNCTION_3_23();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_8_17();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_25();
    }
  }

  OUTLINED_FUNCTION_6_23();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283908, &qword_268570DA0);
    v7 = OUTLINED_FUNCTION_12_18();
    v8 = _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_10_13(v8);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_26854C378(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282CA0, &qword_26856AD60);
  v4 = OUTLINED_FUNCTION_12_18();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_5_21();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_26854C3E0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282DB8, qword_26856B450);
  v4 = OUTLINED_FUNCTION_12_18();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_26854C458(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_26854C554(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_24(a3, result);
  }

  return result;
}

char *sub_26854C574(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_24(a3, result);
  }

  return result;
}

char *sub_26854C59C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_24(a3, result);
  }

  return result;
}

uint64_t sub_26854C5EC(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_13_17();

    return MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_13_17();

    return MEMORY[0x2821FE820](v9);
  }

  return result;
}

uint64_t sub_26854C700(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2685690A0();
LABEL_9:
  result = sub_268569000();
  *v1 = result;
  return result;
}

uint64_t sub_26854C7B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

unint64_t sub_26854C830()
{
  result = qword_2802838F8;
  if (!qword_2802838F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280282C78, qword_26856CB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802838F8);
  }

  return result;
}

uint64_t sub_26854C894()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26854C8DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2684D1F44;

  return sub_26854B928(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26854C9A8()
{
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2684D1820;

  return sub_26854B2F4(v3, v0);
}

uint64_t sub_26854CA40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_10_13(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_18()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_14_8()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_26854CBC4()
{
  OUTLINED_FUNCTION_5();
  v1[13] = v0;
  v2 = sub_2685689F0();
  v1[14] = v2;
  OUTLINED_FUNCTION_2_4(v2);
  v1[15] = v3;
  v1[16] = OUTLINED_FUNCTION_50();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282C00, &unk_26856A9A0);
  OUTLINED_FUNCTION_10(v4);
  v1[19] = OUTLINED_FUNCTION_39();
  v5 = sub_2685680C0();
  v1[20] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v1[21] = v6;
  v1[22] = OUTLINED_FUNCTION_39();
  v7 = sub_268567CE0();
  v1[23] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[24] = v8;
  v1[25] = OUTLINED_FUNCTION_39();
  v9 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26854CD44()
{
  OUTLINED_FUNCTION_32_1();
  v2 = sub_268503B1C(v1);
  v0[26] = v2;
  if (v2)
  {
    v3 = v2;
    v4 = v0[25];
    sub_2684DB414();

    v6 = sub_268564474(v5);
    sub_268517644(v6, v4);

    v7 = swift_task_alloc();
    v0[27] = v7;
    *v7 = v0;
    v7[1] = sub_26854CF70;

    return sub_26854DC14(v3);
  }

  else
  {
    if (qword_280282960 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_280282960);
    }

    __swift_project_value_buffer(v0[14], qword_28028B348);
    v9 = OUTLINED_FUNCTION_12_2();
    v10(v9);
    v11 = sub_2685689E0();
    v12 = sub_268568DE0();
    if (OUTLINED_FUNCTION_29(v12))
    {
      *OUTLINED_FUNCTION_16_0() = 0;
      OUTLINED_FUNCTION_9_11(&dword_2684CA000, v13, v14, "ANReadNotificationAction run | missing the next notification");
      OUTLINED_FUNCTION_2();
    }

    v15 = OUTLINED_FUNCTION_34();
    v16(v15);
    sub_268554674();
    swift_allocError();
    swift_willThrow();

    OUTLINED_FUNCTION_9_1();

    return v17();
  }
}

uint64_t sub_26854CF70()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v4;
  *(v2 + 232) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26854D070()
{
  OUTLINED_FUNCTION_32_1();
  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  v7 = *(v0 + 104);
  (*(*(v0 + 192) + 16))(v6, *(v0 + 200), v3);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v3);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  MEMORY[0x26D61AD60](v1, v6, MEMORY[0x277D84F90], v0 + 16);
  sub_2684EB7C8(v0 + 16, &qword_280282F30, &qword_26856DAD0);
  sub_2684EB7C8(v6, &qword_280282C00, &unk_26856A9A0);
  v8 = v7[18];
  v9 = v7[19];
  __swift_project_boxed_opaque_existential_1(v7 + 15, v8);
  v10 = MEMORY[0x277D5C1D8];
  *(v0 + 80) = v4;
  *(v0 + 88) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  (*(v5 + 16))(boxed_opaque_existential_0, v2, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 240) = v12;
  *v12 = v13;
  v12[1] = sub_26854D208;

  return MEMORY[0x2821BB5D0](v0 + 56, v8, v9);
}

uint64_t sub_26854D208()
{
  OUTLINED_FUNCTION_9();
  v3 = v2;
  OUTLINED_FUNCTION_4_12();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  v3[31] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_16_1();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v3 + 7);
    v10 = swift_task_alloc();
    v3[32] = v10;
    *v10 = v5;
    v10[1] = sub_26854D378;

    return sub_268553748();
  }
}

uint64_t sub_26854D378()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26854D470()
{
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  __swift_project_value_buffer(v0[14], qword_28028B348);
  v1 = OUTLINED_FUNCTION_12_2();
  v2(v1);
  v3 = sub_2685689E0();
  v4 = sub_268568DC0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_16_0();
    *v5 = 0;
    _os_log_impl(&dword_2684CA000, v3, v4, "ANReadNotificationAction run | announced notification", v5, 2u);
    OUTLINED_FUNCTION_2();
  }

  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[24];
  v9 = v0[21];
  v10 = v0[22];
  v16 = v0[28];
  v17 = v0[20];
  v18 = v0[23];

  v11 = OUTLINED_FUNCTION_52();
  v12(v11);
  v13 = sub_268553B94(v7);
  sub_2685541BC(v13);

  (*(v9 + 8))(v10, v17);
  (*(v8 + 8))(v6, v18);

  OUTLINED_FUNCTION_9_10();

  return v14();
}

uint64_t sub_26854D650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_36_4();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_38_3();
  a20 = v22;
  v26 = (*(v22[24] + 8))(v22[25], v22[23]);
  v27 = v22[29];
  if (qword_280282960 != -1)
  {
    v26 = OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v28 = OUTLINED_FUNCTION_4_23(v26, qword_28028B348);
  v29(v28);
  v30 = v27;
  v31 = sub_2685689E0();
  sub_268568DE0();

  v32 = OUTLINED_FUNCTION_24_4();
  v33 = v22[15];
  v34 = v22[16];
  v35 = v22[14];
  if (v32)
  {
    OUTLINED_FUNCTION_4();
    a9 = v34;
    a10 = OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_69_0(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v36 = sub_268568B70();
    sub_2684EABEC(v36, v37, &a10);
    OUTLINED_FUNCTION_23_3();
    *(v34 + 4) = v23;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v38, v39, "ANReadNotificationAction run | error: %s");
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_2();
  }

  (*(v33 + 8))(v34, v35);
  v40 = OUTLINED_FUNCTION_17_9();
  v42 = sub_268553E70(v40, v41);
  sub_2685541BC(v42);

  swift_willThrow();

  OUTLINED_FUNCTION_41_3();

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_34_7();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26854D82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_36_4();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_38_3();
  a20 = v22;
  OUTLINED_FUNCTION_80();
  v26 = OUTLINED_FUNCTION_30();
  v27(v26);
  v28 = OUTLINED_FUNCTION_17_9();
  v29(v28);
  v30 = __swift_destroy_boxed_opaque_existential_0(v22 + 7);
  v31 = v22[31];
  if (qword_280282960 != -1)
  {
    v30 = OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v32 = OUTLINED_FUNCTION_4_23(v30, qword_28028B348);
  v33(v32);
  v34 = v31;
  v35 = sub_2685689E0();
  sub_268568DE0();

  v36 = OUTLINED_FUNCTION_24_4();
  v37 = v22[15];
  v38 = v22[16];
  v39 = v22[14];
  if (v36)
  {
    OUTLINED_FUNCTION_4();
    a9 = v38;
    a10 = OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_69_0(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v40 = sub_268568B70();
    sub_2684EABEC(v40, v41, &a10);
    OUTLINED_FUNCTION_23_3();
    *(v38 + 4) = v23;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v42, v43, "ANReadNotificationAction run | error: %s");
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_2();
  }

  (*(v37 + 8))(v38, v39);
  v44 = OUTLINED_FUNCTION_17_9();
  v46 = sub_268553E70(v44, v45);
  sub_2685541BC(v46);

  swift_willThrow();

  OUTLINED_FUNCTION_41_3();

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_34_7();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26854DA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_36_4();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_38_3();
  a20 = v22;
  OUTLINED_FUNCTION_80();
  v26 = OUTLINED_FUNCTION_30();
  v27(v26);
  v28 = OUTLINED_FUNCTION_17_9();
  v30 = v29(v28);
  v31 = v22[33];
  if (qword_280282960 != -1)
  {
    v30 = OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v32 = OUTLINED_FUNCTION_4_23(v30, qword_28028B348);
  v33(v32);
  v34 = v31;
  v35 = sub_2685689E0();
  sub_268568DE0();

  v36 = OUTLINED_FUNCTION_24_4();
  v37 = v22[15];
  v38 = v22[16];
  v39 = v22[14];
  if (v36)
  {
    OUTLINED_FUNCTION_4();
    a9 = v38;
    a10 = OUTLINED_FUNCTION_6_8();
    OUTLINED_FUNCTION_69_0(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v40 = sub_268568B70();
    sub_2684EABEC(v40, v41, &a10);
    OUTLINED_FUNCTION_23_3();
    *(v38 + 4) = v23;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v42, v43, "ANReadNotificationAction run | error: %s");
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_2();
  }

  (*(v37 + 8))(v38, v39);
  v44 = OUTLINED_FUNCTION_17_9();
  v46 = sub_268553E70(v44, v45);
  sub_2685541BC(v46);

  swift_willThrow();

  OUTLINED_FUNCTION_41_3();

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_34_7();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26854DC14(uint64_t a1)
{
  v2[3] = v1;
  v3 = sub_2685689F0();
  v2[4] = v3;
  OUTLINED_FUNCTION_2_4(v3);
  v2[5] = v4;
  v2[6] = OUTLINED_FUNCTION_39();
  v5 = sub_268567D90();
  v2[7] = v5;
  OUTLINED_FUNCTION_2_4(v5);
  v2[8] = v6;
  v2[9] = OUTLINED_FUNCTION_39();
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  v2[10] = v7;
  *v7 = v8;
  v7[1] = sub_26854DD54;

  return sub_26854E0AC();
}

uint64_t sub_26854DD54()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26854DE4C()
{
  OUTLINED_FUNCTION_19_3();
  v1 = sub_26851C004(*(v0 + 72), (*(v0 + 24) + 40), 0);
  v2 = OUTLINED_FUNCTION_17_9();
  v3(v2);

  OUTLINED_FUNCTION_49_2();

  return v4(v1);
}

uint64_t sub_26854DEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_36_4();
  a21 = v25;
  a22 = v26;
  OUTLINED_FUNCTION_38_3();
  a20 = v22;
  if (qword_280282960 != -1)
  {
    v27 = OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v28 = *(v22 + 88);
  v29 = OUTLINED_FUNCTION_4_23(v27, qword_28028B348);
  v30(v29);
  v31 = v28;
  v32 = sub_2685689E0();
  sub_268568DE0();
  OUTLINED_FUNCTION_87();
  if (OUTLINED_FUNCTION_86())
  {
    v33 = *(v22 + 88);
    OUTLINED_FUNCTION_4();
    v34 = OUTLINED_FUNCTION_7_1();
    a10 = v34;
    *v23 = 136315138;
    *(v22 + 16) = v33;
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v36 = sub_268568B70();
    sub_2684EABEC(v36, v37, &a10);
    OUTLINED_FUNCTION_85();
    *(v23 + 4) = v24;
    OUTLINED_FUNCTION_25_7();
    _os_log_impl(v38, v39, v40, v41, v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_2();
  }

  v43 = OUTLINED_FUNCTION_34();
  v44(v43);
  swift_willThrow();

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_34_7();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_26854E0AC()
{
  OUTLINED_FUNCTION_5();
  v1[12] = v2;
  v1[13] = v0;
  v1[11] = v3;
  v4 = sub_268567BB0();
  v1[14] = v4;
  OUTLINED_FUNCTION_2_4(v4);
  v1[15] = v5;
  v1[16] = OUTLINED_FUNCTION_39();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283820, &qword_26856ED88);
  OUTLINED_FUNCTION_10(v6);
  v1[17] = OUTLINED_FUNCTION_39();
  v7 = sub_268567D90();
  v1[18] = v7;
  OUTLINED_FUNCTION_2_4(v7);
  v1[19] = v8;
  v1[20] = OUTLINED_FUNCTION_39();
  v9 = sub_2685689F0();
  v1[21] = v9;
  OUTLINED_FUNCTION_2_4(v9);
  v1[22] = v10;
  v1[23] = OUTLINED_FUNCTION_50();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282AF0, &qword_26856A1E0);
  v1[27] = v11;
  OUTLINED_FUNCTION_10(v11);
  v1[28] = OUTLINED_FUNCTION_50();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282D58, &qword_26856BDF0);
  OUTLINED_FUNCTION_10(v12);
  v1[36] = OUTLINED_FUNCTION_50();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_26854E304()
{
  OUTLINED_FUNCTION_5();
  v0[39] = *(v0[13] + 32);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  v0[40] = v1;
  *v1 = v2;
  v1[1] = sub_26854E3A4;
  v3 = v0[38];

  return sub_268504FBC(v3, 60.0);
}

uint64_t sub_26854E3A4()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26854E488()
{
  OUTLINED_FUNCTION_19_3();
  v1 = *(v0 + 96);
  if (*(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSameTypeAsLastAnnouncement) == 1)
  {
    v2 = *(v0 + 296);
    v4 = *(v1 + 16);
    v3 = *(v1 + 24);
    sub_268554614(*(v0 + 304), v2, &qword_280282D58, &qword_26856BDF0);
    v5 = type metadata accessor for ReadingRecord(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v5);
    v7 = *(v0 + 296);
    if (EnumTagSinglePayload != 1)
    {
      v15 = *v7;
      v14 = v7[1];

      OUTLINED_FUNCTION_1_25();
      sub_2685545BC(v7, v16);
      if (v4 == v15 && v3 == v14)
      {

        v8 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_17_9();
        v8 = sub_2685691C0();
      }

      goto LABEL_5;
    }

    sub_2684EB7C8(*(v0 + 296), &qword_280282D58, &qword_26856BDF0);
  }

  v8 = 0;
LABEL_5:
  *(v0 + 472) = v8 & 1;
  v9 = *(v0 + 304);
  v10 = *(v0 + 96);
  *(v0 + 473) = sub_2685425D4();
  *(v0 + 474) = sub_268550934(v10, v9) & 1;
  *(v0 + 328) = *(v10 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_appName);
  *(v0 + 336) = sub_2685051E0(v10, v9);
  swift_task_alloc();
  OUTLINED_FUNCTION_44();
  *(v0 + 344) = v11;
  *v11 = v12;
  v11[1] = sub_26854E654;

  return sub_268550B00();
}

uint64_t sub_26854E654()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_26854E738()
{
  v73 = v0;
  if (*(v0 + 24))
  {

    OUTLINED_FUNCTION_52();
    sub_268568BB0();
  }

  v1 = *(v0 + 280);
  sub_268568810();
  v2 = 1;
  OUTLINED_FUNCTION_44_3(v1);
  if (*(v0 + 40))
  {

    sub_268568BB0();

    v2 = 0;
  }

  v3 = 1;
  OUTLINED_FUNCTION_57_1(*(v0 + 272), v2);
  if (*(v0 + 56))
  {

    sub_268568BB0();
    swift_bridgeObjectRelease_n();
    v3 = 0;
  }

  v4 = *(v0 + 264);
  v5 = *(v0 + 96);

  OUTLINED_FUNCTION_57_1(v4, v3);
  switch(sub_268553668(v5, 0))
  {
    case 3u:
      break;
    default:
      sub_268568BB0();

      break;
  }

  OUTLINED_FUNCTION_44_3(*(v0 + 256));
  if (qword_280282960 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_280282960);
  }

  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v9 = *(v0 + 240);
  v8 = *(v0 + 248);
  v67 = *(v0 + 224);
  v10 = *(v0 + 208);
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);
  v69 = *(v0 + 256);
  v13 = __swift_project_value_buffer(v12, qword_28028B348);
  *(v0 + 352) = v13;
  v14 = *(v11 + 16);
  *(v0 + 360) = v14;
  *(v0 + 368) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14(v10, v13, v12);
  sub_268554614(v6, v8, &qword_280282AF0, &qword_26856A1E0);
  sub_268554614(v7, v9, &qword_280282AF0, &qword_26856A1E0);
  OUTLINED_FUNCTION_62_1();
  sub_268554614(v15, v16, v17, &qword_26856A1E0);
  sub_268554614(v69, v67, &qword_280282AF0, &qword_26856A1E0);

  swift_retain_n();
  v18 = sub_2685689E0();
  v19 = sub_268568DD0();

  if (os_log_type_enabled(v18, v19))
  {
    v66 = v19;
    v20 = *(v0 + 328);
    v64 = *(v0 + 474);
    log = v18;
    v21 = *(v0 + 240);
    v22 = *(v0 + 248);
    v63 = *(v0 + 232);
    v65 = *(v0 + 224);
    v68 = *(v0 + 176);
    v70 = *(v0 + 168);
    v71 = *(v0 + 208);
    v23 = *(v0 + 336);
    v24 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *v24 = 136317186;
    *(v0 + 80) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280283968, &qword_268570260);
    v25 = sub_268568EA0();
    v27 = sub_2684EABEC(v25, v26, &v72);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    v28 = sub_268568BC0();
    v30 = sub_2684EABEC(v28, v29, &v72);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2080;
    v31 = sub_268568EA0();
    sub_2684EB7C8(v22, &qword_280282AF0, &qword_26856A1E0);
    v32 = OUTLINED_FUNCTION_61_1();
    sub_2684EABEC(v32, v33, v34);
    OUTLINED_FUNCTION_73();

    *(v24 + 24) = v31;
    *(v24 + 32) = 2080;
    v35 = v21;
    v36 = sub_268568EA0();
    v38 = v37;
    sub_2684EB7C8(v35, &qword_280282AF0, &qword_26856A1E0);
    sub_2684EABEC(v36, v38, &v72);
    OUTLINED_FUNCTION_73();

    *(v24 + 34) = v35;
    *(v24 + 42) = 2080;
    v39 = sub_268568EA0();
    sub_2684EB7C8(v63, &qword_280282AF0, &qword_26856A1E0);
    v40 = OUTLINED_FUNCTION_61_1();
    sub_2684EABEC(v40, v41, v42);
    OUTLINED_FUNCTION_73();

    *(v24 + 44) = v39;
    *(v24 + 52) = 2048;
    *(v24 + 54) = v23;
    *(v24 + 62) = 2080;
    if (v64)
    {
      v43 = 0;
    }

    else
    {
      v43 = 7630702;
    }

    if (v64)
    {
      v44 = 0xE000000000000000;
    }

    else
    {
      v44 = 0xE300000000000000;
    }

    v45 = sub_2684EABEC(v43, v44, &v72);

    *(v24 + 64) = v45;
    *(v24 + 72) = 2080;
    v46 = sub_268568EA0();
    v48 = v47;
    sub_2684EB7C8(v65, &qword_280282AF0, &qword_26856A1E0);
    v49 = sub_2684EABEC(v46, v48, &v72);

    *(v24 + 74) = v49;
    *(v24 + 82) = 1024;
    LOBYTE(v49) = sub_2685425D4();

    *(v24 + 84) = v49 & 1;

    _os_log_impl(&dword_2684CA000, log, v66, "ANReadNotificationAction prepareNotificationDialog | preparing to read notification: %s with appName: %s, title: %s, subtitle: %s, and body: %s that is index: %f in burst, %s the same app as the previous notification, and has mail reading rule: %s, isFollowup: %{BOOL}d", v24, 0x58u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_3_2();

    v50 = *(v68 + 8);
    v50(v71, v70);
  }

  else
  {
    v52 = *(v0 + 224);
    v51 = *(v0 + 232);
    v53 = *(v0 + 208);
    v54 = *(v0 + 168);
    v55 = *(v0 + 176);

    sub_2684EB7C8(v52, &qword_280282AF0, &qword_26856A1E0);
    sub_2684EB7C8(v51, &qword_280282AF0, &qword_26856A1E0);
    v56 = OUTLINED_FUNCTION_52();
    sub_2684EB7C8(v56, v57, &qword_26856A1E0);
    v58 = OUTLINED_FUNCTION_17_9();
    sub_2684EB7C8(v58, v59, &qword_26856A1E0);
    v50 = *(v55 + 8);
    v50(v53, v54);
  }

  *(v0 + 376) = v50;
  v60 = swift_task_alloc();
  *(v0 + 384) = v60;
  *v60 = v0;
  v60[1] = sub_26854EE24;
  OUTLINED_FUNCTION_52();

  return sub_268550560();
}

uint64_t sub_26854EE24()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 475) = v3;

  v4 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26854EF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  OUTLINED_FUNCTION_32_1();
  if (*(v11 + 475) == 1)
  {
    (*(v11 + 360))(*(v11 + 200), *(v11 + 352), *(v11 + 168));
    v12 = sub_2685689E0();
    v13 = sub_268568DC0();
    if (OUTLINED_FUNCTION_29(v13))
    {
      *OUTLINED_FUNCTION_16_0() = 0;
      OUTLINED_FUNCTION_9_11(&dword_2684CA000, v14, v15, "ANReadNotificationAction prepareNotificationDialog | notification content should be hidden, reading censored notification dialog");
      OUTLINED_FUNCTION_2();
    }

    v16 = *(v11 + 376);
    v17 = *(v11 + 96);
    v18 = *(v11 + 336);

    v19 = OUTLINED_FUNCTION_34();
    v16(v19);
    *(v17 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isAppLocked) = 1;
    *(v17 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isSummarized) = 1;
    v20 = v18;
    swift_task_alloc();
    OUTLINED_FUNCTION_44();
    *(v11 + 392) = v21;
    *v21 = v22;
    OUTLINED_FUNCTION_52_2(v21);
    v28 = *(v11 + 88);
  }

  else
  {
    v20 = *(v11 + 336);
    swift_task_alloc();
    OUTLINED_FUNCTION_44();
    *(v11 + 408) = v29;
    *v29 = v30;
    OUTLINED_FUNCTION_52_2(v29);
    v28 = *(v11 + 160);
  }

  return sub_26850E5E4(v28, *&v20, 0, v23, v24, v25, v26, v27, a9, a10, a11);
}

uint64_t sub_26854F0E0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 400) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26854F1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_71();
  v21 = v20[38];
  v23 = v20[34];
  v22 = v20[35];
  v24 = v20[33];
  OUTLINED_FUNCTION_83(v20[32]);
  OUTLINED_FUNCTION_83(v24);
  OUTLINED_FUNCTION_83(v23);
  OUTLINED_FUNCTION_83(v22);
  sub_2684EB7C8(v21, &qword_280282D58, &qword_26856BDF0);
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_45_1();

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_13_8();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26854F310()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 416) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26854F408()
{
  v1 = v0[12];
  if (*(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title + 8))
  {
    v2 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title);
    v3 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_title + 8);
  }

  else
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  if (*(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle + 8))
  {
    v4 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle);
    v5 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_subtitle + 8);
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v20 = v2;

  MEMORY[0x26D61BDA0](v4, v5);

  if (*(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body + 8))
  {
    v6 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body);
    v7 = *(v1 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_body + 8);
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v8 = v0[17];

  MEMORY[0x26D61BDA0](v6, v7);

  v0[53] = v20;
  v0[54] = v3;
  v9 = sub_268567D80();
  sub_2684D65C0(v9, v8);

  v10 = sub_268567DE0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) == 1)
  {
    sub_2684EB7C8(v0[17], &qword_280283820, &qword_26856ED88);
    v11 = 0;
  }

  else
  {
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[14];
    sub_268567DD0();
    v15 = OUTLINED_FUNCTION_61_1();
    v16(v15);
    sub_268567BA0();
    v11 = v17;
    (*(v13 + 8))(v12, v14);
  }

  v0[55] = v11;
  v18 = swift_task_alloc();
  v0[56] = v18;
  *v18 = v0;
  v18[1] = sub_26854F69C;
  OUTLINED_FUNCTION_50_1(v0[12]);

  return sub_2685521CC();
}

uint64_t sub_26854F69C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4_4();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;
  *(v6 + 476) = v5;

  v7 = OUTLINED_FUNCTION_7();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26854F79C()
{
  OUTLINED_FUNCTION_71();
  if (*(v0 + 476) == 3)
  {
    v1 = *(v0 + 304);
    v2 = *(v0 + 152);
    v25 = *(v0 + 144);
    v26 = *(v0 + 160);
    v3 = *(v0 + 96);
    v24 = *(v0 + 88);

    OUTLINED_FUNCTION_62_1();
    sub_2684EB7C8(v4, v5, v6);
    OUTLINED_FUNCTION_62_1();
    sub_2684EB7C8(v7, v8, v9);
    OUTLINED_FUNCTION_62_1();
    sub_2684EB7C8(v10, v11, v12);
    OUTLINED_FUNCTION_62_1();
    sub_2684EB7C8(v13, v14, v15);
    sub_2684EB7C8(v1, &qword_280282D58, &qword_26856BDF0);
    *(v3 + OBJC_IVAR____TtC24SiriNotificationsIntents20AnnounceNotification_isFullyRead) = 1;
    (*(v2 + 32))(v24, v26, v25);
    OUTLINED_FUNCTION_14_9();

    OUTLINED_FUNCTION_9_10();

    return v16();
  }

  else
  {
    v18 = *(v0 + 288);
    sub_268554614(*(v0 + 304), v18, &qword_280282D58, &qword_26856BDF0);
    v19 = type metadata accessor for ReadingRecord(0);
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
    {
      sub_2684EB7C8(*(v0 + 288), &qword_280282D58, &qword_26856BDF0);
    }

    else
    {
      OUTLINED_FUNCTION_1_25();
      sub_2685545BC(v20, v21);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_44();
    *(v0 + 456) = v22;
    *v22 = v23;
    v22[1] = sub_26854FA98;

    return sub_268551374();
  }
}

uint64_t sub_26854FA98()
{
  OUTLINED_FUNCTION_4_12();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 464) = v0;

  OUTLINED_FUNCTION_16_1();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26854FBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_71();
  v21 = v20[38];
  v23 = v20[34];
  v22 = v20[35];
  v25 = v20[32];
  v24 = v20[33];
  (*(v20[19] + 8))(v20[20], v20[18]);
  OUTLINED_FUNCTION_89(v25);
  OUTLINED_FUNCTION_89(v24);
  OUTLINED_FUNCTION_89(v23);
  OUTLINED_FUNCTION_89(v22);
  sub_2684EB7C8(v21, &qword_280282D58, &qword_26856BDF0);
  OUTLINED_FUNCTION_14_9();
  OUTLINED_FUNCTION_45_1();

  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_13_8();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_26854FD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t (*a20)(uint64_t, uint64_t), uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_78();
  a33 = v38;
  a34 = v39;
  a32 = v34;
  v40 = v34[50];
  v41 = OUTLINED_FUNCTION_24_11();
  v42(v41);
  v43 = v40;
  v44 = sub_2685689E0();
  sub_268568DE0();

  if (OUTLINED_FUNCTION_24_4())
  {
    a19 = v34[24];
    a20 = v34[47];
    v46 = v34[21];
    v45 = v34[22];
    OUTLINED_FUNCTION_4();
    v36 = OUTLINED_FUNCTION_6_8();
    a22 = v36;
    OUTLINED_FUNCTION_81(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280282BB8, &qword_26856AF60);
    v47 = sub_268568B70();
    v37 = v48;
    sub_2684EABEC(v47, v48, &a22);
    OUTLINED_FUNCTION_23_3();
    *(v35 + 4) = v40;
    OUTLINED_FUNCTION_11_1(&dword_2684CA000, v49, v50, "ANReadNotificationAction prepareNotificationDialog | ReadNotifications#ReadFullNotification failure: %s");
    OUTLINED_FUNCTION_1_7();
    OUTLINED_FUNCTION_3_2();

    v51 = a20(a19, v46);
  }

  else
  {
    v45 = v34[47];

    v52 = OUTLINED_FUNCTION_30();
    v51 = v45(v52);
  }

  OUTLINED_FUNCTION_10_14(v51);
  OUTLINED_FUNCTION_48_3(v36);
  OUTLINED_FUNCTION_48_3(v37);
  OUTLINED_FUNCTION_48_3(v40);
  OUTLINED_FUNCTION_48_3(v44);
  sub_2684EB7C8(v45, &qword_280282D58, &qword_26856BDF0);

  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_75();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}