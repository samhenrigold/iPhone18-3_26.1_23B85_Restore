uint64_t MediaStream.description.getter()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_2();
  v1 = [v0 groupLeader];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B28, &qword_268B3C598);
  v2 = sub_268B37C24();
  MEMORY[0x26D625650](v2);

  v3 = OUTLINED_FUNCTION_1_3();
  MEMORY[0x26D625650](v3, v4 & 0xFFFF0000FFFFLL | 0xEB00000000200000);
  sub_2688F42F4(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B30, &qword_268B3EE70);
  v5 = sub_268B37C24();
  MEMORY[0x26D625650](v5);

  OUTLINED_FUNCTION_0_5();
  sub_2688F35C8();
  v6 = sub_268B38404();
  MEMORY[0x26D625650](v6);

  MEMORY[0x26D625650](32032, 0xE200000000000000);
  return v8;
}

uint64_t sub_2688F3970()
{
  v1 = v0;
  v2 = 0x3E6C696E3CLL;
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_2_2();
  v3 = [v0 groupLeader];
  if (v3)
  {
    v4 = v3;
    v5 = sub_268983C00();
    v7 = v6;
  }

  else
  {
    v7 = 0xE500000000000000;
    v5 = 0x3E6C696E3CLL;
  }

  MEMORY[0x26D625650](v5, v7);

  v8 = OUTLINED_FUNCTION_1_3();
  MEMORY[0x26D625650](v8, v9 & 0xFFFF0000FFFFLL | 0xEB000000000A0000);
  v10 = sub_2688F42F4(v1);
  if (v10)
  {
    sub_2688F3AD4(10, 0xE100000000000000, v10);
    v2 = v11;
    v13 = v12;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x26D625650](v2, v13);

  OUTLINED_FUNCTION_0_5();
  sub_2688F35C8();
  v14 = sub_268B38404();
  MEMORY[0x26D625650](v14);

  MEMORY[0x26D625650](32032, 0xE200000000000000);
  return v16;
}

void sub_2688F3AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2688EFD0C();
  if (!v4)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B48, &qword_268B416A0);
    sub_2688F4354(&qword_2802A5B50, &qword_2802A5B48, &qword_268B416A0, MEMORY[0x277D83958]);
    sub_268B37BA4();

    return;
  }

  v9 = v4;
  v23 = MEMORY[0x277D84F90];
  sub_26894470C(0, v4 & ~(v4 >> 63), 0, v5, v6, v7, v8);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D625BD0](v10, a3);
      }

      else
      {
        v11 = *(a3 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = sub_268983C00();
      v15 = v14;

      v21 = *(v23 + 16);
      v20 = *(v23 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_26894470C(v20 > 1, v21 + 1, 1, v16, v17, v18, v19);
      }

      ++v10;
      *(v23 + 16) = v21 + 1;
      v22 = v23 + 16 * v21;
      *(v22 + 32) = v13;
      *(v22 + 40) = v15;
    }

    while (v9 != v10);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_2688F3C70(uint64_t a1)
{
  result = sub_2688EFD0C();
  v3 = result;
  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v27 = a1;
  v30 = a1 + 32;
  v31 = a1 & 0xFFFFFFFFFFFFFF8;
  v6 = MEMORY[0x277D84F90];
  v28 = a1 & 0xC000000000000001;
  v29 = result;
  while (1)
  {
    if (v4 == v3)
    {
      return v6;
    }

    if (v5)
    {
      result = MEMORY[0x26D625BD0](v4, v27);
    }

    else
    {
      if (v4 >= *(v31 + 16))
      {
        goto LABEL_43;
      }

      result = *(v30 + 8 * v4);
    }

    v7 = result;
    v8 = __OFADD__(v4++, 1);
    if (v8)
    {
      break;
    }

    v9 = sub_2688F42F4(result);

    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    if (v10 >> 62)
    {
      v11 = sub_268B382A4();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      result = sub_268B382A4();
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = result + v11;
    if (__OFADD__(result, v11))
    {
      goto LABEL_44;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v33 = v11;
    if (!result)
    {
      if (v12)
      {
LABEL_20:
        sub_268B382A4();
      }

LABEL_21:
      result = sub_268B381F4();
      v6 = result;
      v14 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v12)
    {
      goto LABEL_20;
    }

    v14 = v6 & 0xFFFFFFFFFFFFFF8;
    if (v13 > *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

LABEL_22:
    v15 = *(v14 + 16);
    v16 = (*(v14 + 24) >> 1) - v15;
    v17 = v14 + 8 * v15;
    v32 = v14;
    if (v10 >> 62)
    {
      v19 = sub_268B382A4();
      if (v19)
      {
        v20 = v19;
        result = sub_268B382A4();
        if (v16 < result)
        {
          goto LABEL_48;
        }

        if (v20 < 1)
        {
          goto LABEL_49;
        }

        v18 = result;
        sub_2688F4354(&qword_2802A5B40, &qword_2802A5B38, &unk_268B51420, MEMORY[0x277D83988]);
        for (i = 0; i != v20; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B38, &unk_268B51420);
          v22 = sub_26892D47C(v34, i, v10);
          v24 = *v23;
          v22(v34, 0);
          *(v17 + 32 + 8 * i) = v24;
        }

        v5 = v28;
        v3 = v29;
        goto LABEL_32;
      }

LABEL_36:

      if (v33 > 0)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_36;
      }

      if (v16 < v18)
      {
        goto LABEL_47;
      }

      type metadata accessor for Device();
      swift_arrayInitWithCopy();
LABEL_32:

      if (v18 < v33)
      {
        goto LABEL_45;
      }

      if (v18 > 0)
      {
        v25 = *(v32 + 16);
        v8 = __OFADD__(v25, v18);
        v26 = v25 + v18;
        if (v8)
        {
          goto LABEL_46;
        }

        *(v32 + 16) = v26;
      }
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

id sub_2688F3FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_268B37A54();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2688EFD0C() == 1)
  {
    result = sub_2688EFD0C();
    if (result)
    {
      sub_2688EFD10();
      if ((a3 & 0xC000000000000001) != 0)
      {
        return MEMORY[0x26D625BD0](0, a3);
      }

      else
      {
        return *(a3 + 32);
      }
    }
  }

  else
  {
    v24 = sub_2688F3C70(a3);
    v9 = sub_2688EFD0C();
    for (i = 0; v9 != i; ++i)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26D625BD0](i, a3);
      }

      else
      {
        if (i >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v11 = *(a3 + 8 * i + 32);
      }

      v12 = v11;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v13 = [v11 groupLeader];
      if (v13)
      {

        v14 = [v12 groupLeader];
        if (v14)
        {
          type metadata accessor for MediaStream();
          return sub_2688F34B0(v24, v14);
        }

        break;
      }
    }

    if (qword_2802A4F30 == -1)
    {
      goto LABEL_17;
    }

LABEL_23:
    swift_once();
LABEL_17:
    v15 = __swift_project_value_buffer(v4, qword_2802CDA10);
    (*(v5 + 16))(v7, v15, v4);

    v16 = sub_268B37A34();
    v17 = sub_268B37EE4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v25 = v19;
      *v18 = 136315138;
      v20 = type metadata accessor for MediaStream();
      v21 = MEMORY[0x26D6256F0](a3, v20);
      v23 = sub_26892CDB8(v21, v22, &v25);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_2688BB000, v16, v17, "Merging streams %s failed. Could not find any group leaders", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      MEMORY[0x26D6266E0](v19, -1, -1);
      MEMORY[0x26D6266E0](v18, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  return result;
}

uint64_t sub_2688F42F4(void *a1)
{
  v1 = [a1 devices];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for Device();
  v3 = sub_268B37CF4();

  return v3;
}

uint64_t sub_2688F4354(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_0_5()
{

  JUMPOUT(0x26D625650);
}

void OUTLINED_FUNCTION_2_2()
{

  JUMPOUT(0x26D625650);
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return sub_268B381C4();
}

uint64_t sub_2688F442C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_268B382A4())
  {
    v2 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v4 = sub_2688F45E4(v3);
    v5 = v4;
    v22 = v2;
    v6 = v4 + 8;
    v7 = 1 << *(v4 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & v4[8];
    v10 = (v7 + 63) >> 6;

    v11 = 0;
    while (v9)
    {
LABEL_12:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = v13 | (v11 << 6);
      v15 = (v5[6] + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(v5[7] + 8 * v14);

      v19 = sub_2688F3FAC(v16, v17, v18);

      if (v19)
      {
        MEMORY[0x26D6256C0](v20);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268B37D14();
        }

        sub_268B37D44();
        v2 = v22;
      }
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return v2;
      }

      v9 = v6[v12];
      ++v11;
      if (v9)
      {
        v11 = v12;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:
    ;
  }

  return v2;
}

void *sub_2688F45E4(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v26 = MEMORY[0x277D84F98];
  v3 = sub_2688EFD0C();
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return v2;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x26D625BD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v7 = sub_2688F3558();
    v9 = v8;
    v11 = sub_268A759D0(v7);
    v12 = v2[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_22;
    }

    v15 = v10;
    if (v2[3] < v14)
    {
      sub_268ADEF48(v14, 1);
      v2 = v26;
      v16 = sub_268A759D0(v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_24;
      }

      v11 = v16;
    }

    if (v15)
    {

      v19 = (v2[7] + 8 * v11);
      MEMORY[0x26D6256C0](v18);
      if (*((*v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_268B3BBA0;
      *(v20 + 32) = v6;
      v2[(v11 >> 6) + 8] |= 1 << v11;
      v21 = (v2[6] + 16 * v11);
      *v21 = v7;
      v21[1] = v9;
      *(v2[7] + 8 * v11) = v20;
      v22 = v2[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_23;
      }

      v2[2] = v24;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A20, &unk_268B3C060);
  result = sub_268B38494();
  __break(1u);
  return result;
}

uint64_t sub_2688F4820(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (a2)
  {
    v4 = 0;
    v5 = 2;
  }

  else
  {
    if (sub_2688EFD0C())
    {
      if (sub_2688EFD0C() != 1)
      {
        v4 = a1;
        v5 = 1;
        return a3(v4, v5);
      }

      v4 = a1;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v5 = 0;
  }

  return a3(v4, v5);
}

void sub_2688F48A0()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v54 = v4;
  v6 = v5;
  OUTLINED_FUNCTION_275_0();
  v7 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_274_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  if (v6)
  {
    v53 = v3;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
    v50 = *(v9 + 16);
    v51 = v15;
    v50(v14);
    v16 = sub_268B37A34();
    v17 = sub_268B37EE4();
    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_172_0();
      v49 = v1;
      v18 = OUTLINED_FUNCTION_123_0();
      v52 = v9;
      v19 = v18;
      v56 = v18;
      *v1 = 136315138;
      v55 = v0 & 1;
      sub_26890C84C();
      v20 = sub_268B384A4();
      v22 = v0;
      v23 = sub_26892CDB8(v20, v21, &v56);

      *(v1 + 4) = v23;
      _os_log_impl(&dword_2688BB000, v16, v17, "DeviceSelectingUtil#smartSelect Error resolving devices: %s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      v24 = v52;
      OUTLINED_FUNCTION_12();
      v1 = v49;
      OUTLINED_FUNCTION_12();

      v25 = v24;
    }

    else
    {

      v25 = v9;
      v22 = v0;
    }

    v38 = *(v25 + 8);
    v38(v14, v7);
    if (v22)
    {
      (v50)(v1, v51, v7);
      v39 = sub_268B37A34();
      v40 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v40))
      {
        v41 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v41);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v42, v43, v44, v45, v46, 2u);
        OUTLINED_FUNCTION_12();
      }

      v38(v1, v7);
      v47 = 1;
    }

    else
    {
      v47 = 0;
    }

    v48 = 2;
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v7, qword_2802CDA10);
    v26 = OUTLINED_FUNCTION_139();
    v27(v26);

    v28 = sub_268B37A34();
    v29 = sub_268B37F04();
    sub_26890C840(v0, 0);
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_172_0();
      v31 = OUTLINED_FUNCTION_173_0();
      v52 = v9;
      v32 = v31;
      v56 = v31;
      *v30 = 136315138;
      type metadata accessor for Device();
      OUTLINED_FUNCTION_217_0();
      v35 = sub_26892CDB8(v33, v34, &v56);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_2688BB000, v28, v29, "DeviceSelectingUtil#smartSelect Success resolving devices: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v32);
      OUTLINED_FUNCTION_83_0();
      OUTLINED_FUNCTION_84_0();
    }

    v36 = OUTLINED_FUNCTION_138();
    v37(v36);
    v47 = v0;
    v48 = 0;
  }

  v54(v47, v48);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688F4CD4()
{
  OUTLINED_FUNCTION_208_0();
  OUTLINED_FUNCTION_0_3();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  sub_268997188("smartDeviceSelection", 20, 2, 1);
}

void sub_2688F4D90(void (*a1)(char **), uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v137 = a7;
  v141 = a6;
  v142 = a4;
  v147 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B80, &qword_268B3C678);
  MEMORY[0x28223BE20](v10 - 8);
  v120 = &v115 - v11;
  v12 = sub_268B36C04();
  v146 = *(v12 - 8);
  v13 = *(v146 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v139 = &v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v145 = &v115 - v15;
  v16 = sub_268B371E4();
  v17 = *(v16 - 1);
  v18 = MEMORY[0x28223BE20](v16);
  v129 = &v115 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v115 - v20;
  v22 = sub_268B37A54();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v127 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v123 = &v115 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v119 = &v115 - v29;
  MEMORY[0x28223BE20](v28);
  v144 = (&v115 - v30);
  v31 = swift_allocObject();
  v135 = a2;
  v136 = a1;
  *(v31 + 16) = a1;
  *(v31 + 24) = a2;
  v138 = v31;
  v32 = qword_2802A4F30;

  if (v32 != -1)
  {
    goto LABEL_33;
  }

LABEL_2:
  v33 = __swift_project_value_buffer(v22, qword_2802CDA10);
  v34 = *(v23 + 16);
  v132 = v33;
  v133 = v34;
  v134 = v23 + 16;
  (v34)(v144);
  v35 = *(v17 + 16);
  v122 = v17 + 16;
  v121 = v35;
  v35(v21, v147, v16);
  v143 = v23;
  v37 = (v146 + 16);
  v36 = *(v146 + 16);
  v36(v145, v142, v12);
  v38 = sub_268B37A34();
  v131 = sub_268B37ED4();
  v39 = os_log_type_enabled(v38, v131);
  v130 = v16;
  v126 = v17;
  v125 = v13;
  v140 = v22;
  v128 = v36;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    v148 = v118;
    *v40 = 136446466;
    sub_26890D6F8(&qword_2802A5B90, MEMORY[0x277D5F7E0], MEMORY[0x277D5F808]);
    v117 = v38;
    v41 = sub_268B38404();
    v42 = v12;
    v44 = v43;
    v45 = *(v17 + 8);
    v17 += 8;
    v45(v21, v16);
    v46 = sub_26892CDB8(v41, v44, &v148);
    v12 = v42;

    *(v40 + 4) = v46;
    *(v40 + 12) = 2082;
    v47 = v145;
    v36(v139, v145, v12);
    v48 = sub_268B37C24();
    v50 = v49;
    (*(v146 + 8))(v47, v12);
    v51 = sub_26892CDB8(v48, v50, &v148);

    *(v40 + 14) = v51;
    v52 = v117;
    _os_log_impl(&dword_2688BB000, v117, v131, "Select devices with deviceType=%{public}s, controlType=%{public}s", v40, 0x16u);
    v53 = v118;
    swift_arrayDestroy();
    MEMORY[0x26D6266E0](v53, -1, -1);
    MEMORY[0x26D6266E0](v40, -1, -1);

    v54 = v143[1];
    v22 = v140;
    v54(v144, v140);
  }

  else
  {

    (*(v146 + 8))(v145, v12);
    v55 = *(v17 + 8);
    v17 += 8;
    v55(v21, v16);
    v54 = v143[1];
    v54(v144, v22);
  }

  v56 = sub_2688EFD0C();
  if (v56)
  {
    v63 = v56;
    v144 = v54;
    v145 = v37;
    v23 = v12;
    sub_268902AB0(a5, v147, v57, v58, v59, v60, v61, v62, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
    v12 = v68;
    v69 = 0;
    v22 = a5 & 0xC000000000000001;
    v21 = (a5 & 0xFFFFFFFFFFFFFF8);
    v13 = &unk_279C42000;
    while (v63 != v69)
    {
      if (v22)
      {
        v70 = MEMORY[0x26D625BD0](v69, a5);
      }

      else
      {
        if (v69 >= *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v70 = *(a5 + 8 * v69 + 32);
      }

      v16 = v70;
      if (__OFADD__(v69, 1))
      {
        goto LABEL_31;
      }

      v71 = [v70 proximity];
      if ((v71 - 1) >= 4)
      {
        if (!v71)
        {
          goto LABEL_16;
        }

        v148 = v71;
        sub_268B38474();
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        swift_once();
        goto LABEL_2;
      }

      ++v69;
    }

    v16 = 0;
LABEL_16:
    v72 = v140;
    v73 = v137;
    v74 = v147;
    if (!*(v12 + 16))
    {
      v75 = v12;
      v76 = v120;
      v128(v120, v142, v23);
      __swift_storeEnumTagSinglePayload(v76, 0, 1, v23);
      sub_268900698(v76, v74, v73, v16, 1, v77, v78, v79, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
      v81 = v80;
      v82 = v76;
      v12 = v75;
      sub_2688C058C(v82, &qword_2802A5B80, &qword_268B3C678);
      if (v81)
      {

        v83 = v119;
        v133(v119, v132, v72);
        v84 = sub_268B37A34();
        v85 = sub_268B37EC4();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          v87 = "No predicates could be generated from context, primary is a logical candidate! Selecting the local device";
          goto LABEL_23;
        }

        goto LABEL_24;
      }
    }

    v88 = v142;
    sub_2688FEE90(v142, v74, v73, a5, v64, v65, v66, v67, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126);
    if (v89)
    {

      v83 = v123;
      v133(v123, v132, v72);
      v84 = sub_268B37A34();
      v85 = sub_268B37F04();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        *v86 = 0;
        v87 = "Short circuiting and controlling the local device";
LABEL_23:
        _os_log_impl(&dword_2688BB000, v84, v85, v87, v86, 2u);
        v90 = v86;
        v72 = v140;
        MEMORY[0x26D6266E0](v90, -1, -1);
      }

LABEL_24:

      (v144)(v83, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_268B3BBA0;
      *(v91 + 32) = sub_268901CB8(v16);
      v148 = v91;
      v149 = 0;
      v136(&v148);

      return;
    }

    v103 = v88;
    v104 = v141;
    v105 = v141[6];
    v144 = v141[5];
    v147 = v105;
    v143 = __swift_project_boxed_opaque_existential_1(v141 + 2, v144);
    v116 = v23;
    v128(v139, v103, v23);
    v121(v129, v74, v130);
    v106 = v146;
    v107 = (*(v146 + 80) + 32) & ~*(v146 + 80);
    v145 = v12;
    v108 = v126;
    v109 = (v125 + *(v126 + 80) + v107) & ~*(v126 + 80);
    v142 = (v124 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
    v110 = (v142 + 15) & 0xFFFFFFFFFFFFFFF8;
    v111 = swift_allocObject();
    *(v111 + 16) = a5;
    *(v111 + 24) = v104;
    (*(v106 + 32))(v111 + v107, v139, v116);
    (*(v108 + 32))(v111 + v109, v129, v130);
    *(v111 + v142) = v137;
    *(v111 + v110) = v16;
    v112 = (v111 + ((v110 + 15) & 0xFFFFFFFFFFFFFFF8));
    v113 = v138;
    *v112 = sub_26890D79C;
    v112[1] = v113;
    v114 = v16;

    sub_268B37424();
  }

  else
  {

    v92 = v127;
    v133(v127, v132, v22);
    v93 = sub_268B37A34();
    v94 = sub_268B37EE4();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = v22;
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_2688BB000, v93, v94, "Non-empty device context expected for smart device selection, returning local device", v96, 2u);
      v97 = v96;
      v22 = v95;
      MEMORY[0x26D6266E0](v97, -1, -1);
    }

    v54(v92, v22);
    type metadata accessor for DeviceContext();
    v98 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v99 = sub_26893A824(0, 0xE000000000000000, 0, 0xE000000000000000);
    [v99 setProximity_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_268B3BBA0;
    v101 = v99;
    v102 = sub_268901CB8(v99);

    *(v100 + 32) = v102;
    v148 = v100;
    v149 = 0;
    v136(&v148);
  }
}

uint64_t sub_2688F59FC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t), void *a7, void (*a8)(uint64_t, void), uint64_t a9)
{
  v154 = a8;
  v157 = a6;
  v158 = a7;
  v159 = a2;
  v160 = a3;
  v150 = a9;
  v12 = sub_268B36C04();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v155 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_268B371E4();
  v148 = *(v15 - 8);
  v149 = v15;
  MEMORY[0x28223BE20](v15);
  v147 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_268B34714();
  v143 = *(v17 - 8);
  v144 = v17;
  MEMORY[0x28223BE20](v17);
  v142 = &v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_268B37474();
  v141 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v140 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_268B37434();
  v152 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v139 = &v129 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_268B37A54();
  v151 = *(v21 - 8);
  v22 = MEMORY[0x28223BE20](v21);
  v133 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v135 = &v129 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v134 = (&v129 - v27);
  MEMORY[0x28223BE20](v26);
  v29 = &v129 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B80, &qword_268B3C678);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v129 - v31;
  v33 = sub_268A0358C(v159, a1);
  v163 = v33;
  v159 = v13;
  v34 = v13;
  v35 = v157;
  v36 = *(v34 + 16);
  v153 = a4;
  v36(v32, a4, v12);
  v156 = v12;
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v12);
  sub_268900698(v32, a5, v35, v158, 1, v37, v38, v39, v129, v130, v131, v132, v133, v134, v135, v136, a5, v138, v139, v140);
  LOBYTE(a4) = v40;
  v136 = v32;
  sub_2688C058C(v32, &qword_2802A5B80, &qword_268B3C678);
  v138 = v21;
  if (a4)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v21, qword_2802CDA10);
    v42 = v151;
    (*(v151 + 16))(v29, v41, v21);
    v43 = sub_268B37A34();
    v44 = sub_268B37F04();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_2688BB000, v43, v44, "Primary device is a logical candidate. Adding back the local device to the list of devices elligible for controlling", v45, 2u);
      MEMORY[0x26D6266E0](v45, -1, -1);
    }

    (*(v42 + 8))(v29, v21);
    v46 = v160;
    v132 = sub_268901CB8(v158);
    v47 = v46[27];
    v131 = v46[28];
    v130 = __swift_project_boxed_opaque_existential_1(v46 + 24, v47);
    v48 = v139;
    v49 = v145;
    (*(v152 + 104))(v139, *MEMORY[0x277D5F860], v145);
    v50 = v141;
    v51 = v140;
    v52 = v146;
    (*(v141 + 104))(v140, *MEMORY[0x277D5F8A8], v146);
    __swift_project_boxed_opaque_existential_1(v46 + 7, v46[10]);
    v53 = v142;
    sub_268B34C94();
    sub_268B376E4();
    v55 = v54;
    (*(v143 + 8))(v53, v144);
    (*(v50 + 8))(v51, v52);
    (*(v152 + 8))(v48, v49);
    if (v55)
    {
      v56 = sub_268B37BC4();
    }

    else
    {
      v56 = 0;
    }

    v35 = v157;
    [v132 setRoomName_];

    MEMORY[0x26D6256C0]();
    if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_268B37D14();
    }

    sub_268B37D44();
    v33 = v163;
  }

  v57 = v147;
  sub_268B37164();
  v58 = v153;
  v61 = sub_2688F6A28(v33, v59, v60, v153, v35);
  v148[1](v57, v149);
  v162 = v61;
  v62 = sub_2688EFD0C();
  v63 = *MEMORY[0x277D5F658];
  v64 = v159;
  v65 = *(v159 + 104);
  v157 = v65;
  if (!v62)
  {
    if (v35)
    {
      v67 = v155;
      v66 = v156;
      v157(v155, v63, v156);
      v68 = sub_268920878(v58, v67);
      (*(v64 + 8))(v67, v66);
      v65 = v157;
      if (v68)
      {
        if (v158)
        {
          v69 = [v158 nowPlayingState];
          v65 = v157;
          if (v69 == 1)
          {
            v70 = v35;

            v71 = sub_268901CB8(v158);
            v72 = v154;
            if (qword_2802A4F30 != -1)
            {
              swift_once();
            }

            v73 = v138;
            v74 = __swift_project_value_buffer(v138, qword_2802CDA10);
            v75 = v151;
            v76 = v134;
            (*(v151 + 16))(v134, v74, v73);
            v77 = sub_268B37A34();
            v78 = sub_268B37ED4();
            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              v80 = swift_slowAlloc();
              v161 = v80;
              *v79 = 136315138;
              v81 = NLMediaType.description.getter(v70);
              v83 = sub_26892CDB8(v81, v82, &v161);

              *(v79 + 4) = v83;
              _os_log_impl(&dword_2688BB000, v77, v78, "User asked to pause mediaType: %s and nothing was found. Returning local device since it is currently playing", v79, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v80);
              MEMORY[0x26D6266E0](v80, -1, -1);
              MEMORY[0x26D6266E0](v79, -1, -1);

              (*(v75 + 8))(v134, v73);
            }

            else
            {

              (*(v75 + 8))(v76, v73);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
            v126 = swift_allocObject();
            *(v126 + 16) = xmmword_268B3BBA0;
            *(v126 + 32) = v71;
            v125 = v71;
            v72(v126, 0);
LABEL_44:
          }
        }
      }
    }
  }

  v149 = v33;
  v85 = v155;
  v84 = v156;
  v65(v155, v63, v156);
  v86 = sub_268920878(v58, v85);
  v87 = *(v64 + 8);
  (v87)(v85, v84);
  v88 = v154;
  v159 = v64 + 8;
  v148 = v87;
  if ((v86 & 1) != 0 && sub_2688EFD0C() >= 2)
  {
    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v89 = v138;
    v90 = __swift_project_value_buffer(v138, qword_2802CDA10);
    v91 = v151;
    v92 = v135;
    (*(v151 + 16))(v135, v90, v89);
    v93 = sub_268B37A34();
    v94 = sub_268B37EC4();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_2688BB000, v93, v94, "More than 1 device. Adding everywhere for pause control", v95, 2u);
      MEMORY[0x26D6266E0](v95, -1, -1);
    }

    (*(v91 + 8))(v92, v138);
    v96 = v160;
    v135 = v160[27];
    v147 = v160[28];
    v134 = __swift_project_boxed_opaque_existential_1(v160 + 24, v135);
    v97 = v152;
    v98 = v139;
    (*(v152 + 104))(v139, *MEMORY[0x277D5F828], v145);
    v99 = v141;
    v100 = v140;
    (*(v141 + 104))(v140, *MEMORY[0x277D5F8A8], v146);
    __swift_project_boxed_opaque_existential_1(v96 + 7, v96[10]);
    v101 = v142;
    sub_268B34C94();
    v102 = sub_268B376E4();
    v104 = v103;
    (*(v143 + 8))(v101, v144);
    (*(v99 + 8))(v100, v146);
    (*(v97 + 8))(v98, v145);
    v58 = v153;
    v88 = v154;
    v85 = v155;
    v84 = v156;
    if (v104)
    {
      type metadata accessor for Device();
      v105 = sub_268B37724();
      LOBYTE(v128) = 0;
      sub_268983F14(v105, v106, 0, 0, v102, v104, 0, 1, 0, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);
      MEMORY[0x26D6256C0]();
      if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_268B37D14();
      }

      sub_268B37D44();
      v61 = v162;
      v85 = v155;
      v84 = v156;
    }
  }

  v107 = v157;
  v157(v85, *MEMORY[0x277D5F660], v84);
  v108 = sub_268920878(v58, v85);
  v109 = v148;
  (v148)(v85, v84);
  if (v108)
  {
  }

  else
  {
    v107(v85, *MEMORY[0x277D5F650], v84);
    v110 = sub_268920878(v58, v85);
    (v109)(v85, v84);

    if ((v110 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  if (!sub_2688EFD0C())
  {
    v111 = v136;
    __swift_storeEnumTagSinglePayload(v136, 1, 1, v84);
    sub_268900698(v111, v137, 0, v158, 1, v112, v113, v114, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140);
    v116 = v115;
    sub_2688C058C(v111, &qword_2802A5B80, &qword_268B3C678);
    if (v116)
    {

      v117 = sub_268901CB8(v158);
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v118 = v138;
      v119 = __swift_project_value_buffer(v138, qword_2802CDA10);
      v120 = v133;
      (*(v151 + 16))(v133, v119, v118);
      v121 = sub_268B37A34();
      v122 = sub_268B37EE4();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        *v123 = 0;
        _os_log_impl(&dword_2688BB000, v121, v122, "User asked for .resumable or .any devices to control but we couldn't find any. Returning the local device", v123, 2u);
        MEMORY[0x26D6266E0](v123, -1, -1);
      }

      (*(v151 + 8))(v120, v118);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v124 = swift_allocObject();
      *(v124 + 16) = xmmword_268B3BBA0;
      *(v124 + 32) = v117;
      v125 = v117;
      v88(v124, 0);
      goto LABEL_44;
    }
  }

LABEL_41:
  v88(v61, 0);
}

uint64_t sub_2688F6A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  sub_268901EE8();
  v13 = v12;
  OUTLINED_FUNCTION_150();
  sub_268ADAEEC();
  v15 = v14;

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v5, qword_2802CDA10);
  (*(v7 + 16))(v11);

  v16 = sub_268B37A34();
  sub_268B37ED4();
  OUTLINED_FUNCTION_149_0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_172_0();
    *v18 = 134217984;
    *(v18 + 4) = sub_2688EFD0C();

    OUTLINED_FUNCTION_277_0(&dword_2688BB000, v16, v13, "resolvedDevice count: %ld", v22);
    OUTLINED_FUNCTION_132_0();
  }

  else
  {
  }

  v19 = OUTLINED_FUNCTION_0_1();
  v20(v19);
  return v15;
}

void sub_2688F6BEC()
{
  OUTLINED_FUNCTION_26();
  v24 = v2;
  v25 = v0;
  v4 = v3;
  v6 = v5;
  v7 = sub_268B37A24();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_0_3();
  v15 = swift_allocObject();
  *(v15 + 16) = v6;
  *(v15 + 24) = v4;
  v16 = qword_2802A5028;

  if (v16 != -1)
  {
    swift_once();
  }

  qword_2802CDB28;
  sub_268B37A14();
  (*(v9 + 16))(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v7);
  v17 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v18 = v17 + v11;
  v19 = (v17 + v11) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "resolveDevice";
  *(v20 + 24) = 13;
  *(v20 + 32) = 2;
  (*(v9 + 32))(v20 + v17, v14, v7);
  *(v20 + v18) = 1;
  v21 = v20 + v19;
  *(v21 + 8) = sub_26890D530;
  *(v21 + 16) = v15;

  sub_268B38004();
  sub_268B37A04();

  sub_2688F6E80(v24, v25, sub_26890D5CC, v20);

  v22 = OUTLINED_FUNCTION_153_0();
  v23(v22);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688F6E80(uint64_t a1, void *a2, void (*a3)(void **), uint64_t a4)
{
  v120 = sub_268B371E4();
  v8 = *(v120 - 8);
  v9 = MEMORY[0x28223BE20](v120);
  v130 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v129 = &v110 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v133 = &v110 - v14;
  MEMORY[0x28223BE20](v13);
  v132 = &v110 - v15;
  v134 = sub_268B37594();
  v131 = *(v134 - 8);
  v16 = MEMORY[0x28223BE20](v134);
  v147 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v146 = &v110 - v19;
  MEMORY[0x28223BE20](v18);
  v135 = &v110 - v20;
  v148 = sub_268B37A54();
  v21 = *(v148 - 8);
  v22 = MEMORY[0x28223BE20](v148);
  v119 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v115 = &v110 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v141 = &v110 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v110 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v110 - v31;
  v33 = swift_allocObject();
  *(v33 + 16) = a3;
  *(v33 + 24) = a4;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_26890D668;
  *(v34 + 24) = v33;
  v121 = a1;
  v128 = sub_2688EFD0C();
  if (v128)
  {
    v111 = v34;
    v112 = a2;
    v35 = qword_2802A4F30;
    v114 = a4;

    v113 = v33;

    if (v35 != -1)
    {
LABEL_36:
      swift_once();
    }

    v36 = __swift_project_value_buffer(v148, qword_2802CDA10);
    v37 = v21;
    v38 = *(v21 + 2);
    v138 = v36;
    v139 = v21 + 16;
    v137 = v38;
    (v38)(v30);
    v39 = v121;

    v40 = sub_268B37A34();
    v41 = sub_268B37EC4();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v132;
    if (v42)
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      type metadata accessor for Device();
      v46 = sub_268B37CE4();
      *(v44 + 4) = v46;
      *v45 = v46;
      _os_log_impl(&dword_2688BB000, v40, v41, "Resolving devices: %@", v44, 0xCu);
      sub_2688C058C(v45, &qword_2802A6420, &unk_268B3C680);
      MEMORY[0x26D6266E0](v45, -1, -1);
      MEMORY[0x26D6266E0](v44, -1, -1);
    }

    v47 = *(v37 + 1);
    v140 = v37 + 8;
    v136 = v47;
    v48 = (v47)(v30, v148);
    v49 = 0;
    v116 = 0;
    v127 = v39 & 0xC000000000000001;
    v117 = v39 & 0xFFFFFFFFFFFFFF8;
    v126 = (v8 + 16);
    v125 = (v8 + 8);
    v145 = (v131 + 16);
    v124 = v131 + 32;
    v123 = (v131 + 8);
    v50 = MEMORY[0x277D84F90];
    v48.n128_u64[0] = 136315138;
    v118 = v48;
    v21 = v133;
    v8 = v134;
    v51 = v120;
    v52 = v135;
    do
    {
      if (v127)
      {
        v53 = MEMORY[0x26D625BD0](v49, v39);
      }

      else
      {
        if (v49 >= *(v117 + 16))
        {
          goto LABEL_35;
        }

        v53 = *(v39 + 8 * v49 + 32);
      }

      v30 = v53;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v143 = v49 + 1;
      v144 = v49;
      v54 = v8;
      v151 = type metadata accessor for Device();
      v152 = sub_26890D6F8(&qword_2802A5BD8, type metadata accessor for Device, &protocol conformance descriptor for Device);
      v149 = v30;
      v142 = v30;
      sub_268B37514();
      sub_268B374E4();
      sub_268B371A4();
      (*v126)(v130, v43, v51);
      sub_26890D6F8(&qword_2802A5BE0, MEMORY[0x277D5F7E0], MEMORY[0x277D5F800]);
      v55 = v43;
      v56 = v129;
      sub_268B38104();
      v57 = sub_268B38114();
      v58 = *v125;
      (*v125)(v56, v51);
      v58(v21, v51);
      v58(v55, v51);
      if (v57)
      {
        v8 = v54;
      }

      else
      {
        sub_268B374E4();
        sub_268B37164();
        sub_26890D6F8(&qword_2802A5AF8, MEMORY[0x277D5F7E0], MEMORY[0x277D5F7F0]);
        v59 = sub_268B37BB4();
        v58(v21, v51);
        v58(v55, v51);
        v8 = v54;
        if ((v59 & 1) == 0)
        {
          v137(v119, v138, v148);
          v60 = sub_268B37A34();
          v61 = sub_268B37EC4();
          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            *v62 = 0;
            _os_log_impl(&dword_2688BB000, v60, v61, "Forcing disambiguation based on predicate device type", v62, 2u);
            v52 = v135;
            MEMORY[0x26D6266E0](v62, -1, -1);
          }

          v136(v119, v148);
          v116 = 1;
        }
      }

      v63 = *v145;
      (*v145)(v146, v52, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268987BAC();
        v50 = v77;
      }

      v64 = *(v50 + 16);
      if (v64 >= *(v50 + 24) >> 1)
      {
        sub_268987BAC();
        v50 = v78;
      }

      *(v50 + 16) = v64 + 1;
      (*(v131 + 32))(v50 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v64, v146, v8);
      v30 = v141;
      v137(v141, v138, v148);
      v52 = v135;
      v63(v147, v135, v8);
      v65 = sub_268B37A34();
      v66 = sub_268B37ED4();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v149 = v68;
        *v67 = v118.n128_u32[0];
        sub_26890D6F8(&qword_2802A5BE8, MEMORY[0x277D5F918], MEMORY[0x277D5F920]);
        v69 = sub_268B38404();
        v122 = v50;
        v71 = v70;
        v72 = *v123;
        (*v123)(v147, v134);
        v30 = sub_26892CDB8(v69, v71, &v149);
        v73 = v148;

        *(v67 + 4) = v30;
        _os_log_impl(&dword_2688BB000, v65, v66, "Created predicate: %s", v67, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v68);
        v74 = v68;
        v51 = v120;
        MEMORY[0x26D6266E0](v74, -1, -1);
        MEMORY[0x26D6266E0](v67, -1, -1);

        v75 = v73;
        v8 = v134;
        v136(v141, v75);
        v50 = v122;
        v72(v52, v8);
        v39 = v121;
      }

      else
      {

        v76 = *v123;
        (*v123)(v147, v8);
        v136(v30, v148);
        v76(v52, v8);
      }

      v21 = v133;
      v43 = v132;
      v49 = v144 + 1;
    }

    while (v143 != v128);
    v137(v115, v138, v148);
    v79 = sub_268B37A34();
    v80 = sub_268B37EC4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v149 = v82;
      *v81 = v118.n128_u32[0];

      v84 = MEMORY[0x26D6256F0](v83, v134);
      v86 = v85;

      v87 = sub_26892CDB8(v84, v86, &v149);

      *(v81 + 4) = v87;
      _os_log_impl(&dword_2688BB000, v79, v80, "Using predicates: %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v82);
      MEMORY[0x26D6266E0](v82, -1, -1);
      MEMORY[0x26D6266E0](v81, -1, -1);
    }

    v136(v115, v148);
    v88 = v111;
    v89 = v116;
    __swift_project_boxed_opaque_existential_1(v112 + 2, v112[5]);
    v90 = swift_allocObject();
    *(v90 + 16) = sub_26890D670;
    *(v90 + 24) = v88;
    *(v90 + 32) = v89 & 1;

    sub_268B37424();

    swift_bridgeObjectRelease_n();
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v91 = v148;
    v92 = __swift_project_value_buffer(v148, qword_2802CDA10);
    v93 = v21;
    (*(v21 + 2))(v32, v92, v91);
    v94 = sub_268B37A34();
    v95 = sub_268B37EC4();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_2688BB000, v94, v95, "No devices provided in intent, resolving with local device", v96, 2u);
      v97 = v96;
      v93 = v21;
      MEMORY[0x26D6266E0](v97, -1, -1);
    }

    v93[1](v32, v148);
    type metadata accessor for Device();
    sub_268B36C54();
    v98 = sub_268B36C24();
    v100 = v99;
    v101 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v102 = sub_26893A824(v98, v100, 0, 0xE000000000000000);
    type metadata accessor for DeviceContext();
    v103 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v104 = sub_26893A824(0, 0xE000000000000000, 0, 0xE000000000000000);
    [v104 setProximity_];
    v105 = sub_268B36C24();
    sub_2689884A0(v105, v106, v102);
    [v102 setContext_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
    v107 = swift_allocObject();
    *(v107 + 16) = xmmword_268B3BBA0;
    *(v107 + 32) = v102;
    v149 = v107;
    v150 = 0;
    v108 = v102;
    a3(&v149);
  }
}

uint64_t sub_2688F7E6C(uint64_t a1, void (*a2)(void), uint64_t a3, int a4)
{
  v7 = sub_268B37A54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v7, qword_2802CDA10);
  (*(v8 + 16))(v10, v11, v7);

  v12 = sub_268B37A34();
  v13 = sub_268B37ED4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21[2] = a4;
    v15 = a2;
    v16 = v14;
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    sub_268B378C4();
    v18 = sub_268B37CE4();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_2688BB000, v12, v13, "Resolved devices: %@", v16, 0xCu);
    sub_2688C058C(v17, &qword_2802A6420, &unk_268B3C680);
    MEMORY[0x26D6266E0](v17, -1, -1);
    v19 = v16;
    a2 = v15;
    MEMORY[0x26D6266E0](v19, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  sub_268A0358C(MEMORY[0x277D84F90], a1);
  a2();
}

uint64_t sub_2688F80CC()
{
  OUTLINED_FUNCTION_208_0();
  OUTLINED_FUNCTION_0_3();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  sub_268997188("resolveDevice", 13, 2, 1);
}

uint64_t sub_2688F8188(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v94 = a7;
  v97 = a5;
  v98 = a6;
  v11 = sub_268B371E4();
  v85 = *(v11 - 8);
  v86 = v11;
  MEMORY[0x28223BE20](v11);
  v84 = &v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_268B36C04();
  v92 = *(v13 - 8);
  v93 = v13;
  MEMORY[0x28223BE20](v13);
  v90 = v14;
  v91 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_268B37A54();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v83 = &v81 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v81 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v81 - v25;
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;
  v99 = a3;
  if (*(a3 + 16))
  {
    v88 = v27;
    v89 = a4;
    v28 = qword_2802A4F30;

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v15, qword_2802CDA10);
    v95 = v16[2];
    v95(v26, v29, v15);
    v30 = v99;

    v31 = sub_268B37A34();
    v32 = sub_268B37EC4();

    v33 = os_log_type_enabled(v31, v32);
    v96 = v16;
    v87 = v16 + 2;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v82 = v29;
      v36 = v35;
      v100 = v35;
      *v34 = 136315138;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A40, &qword_268B3C080);
      v38 = MEMORY[0x26D6256F0](v30, v37);
      v40 = sub_26892CDB8(v38, v39, &v100);

      *(v34 + 4) = v40;
      v30 = v99;
      _os_log_impl(&dword_2688BB000, v31, v32, "Using HomeAutomationEntities: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v36);
      v41 = v36;
      v29 = v82;
      MEMORY[0x26D6266E0](v41, -1, -1);
      MEMORY[0x26D6266E0](v34, -1, -1);
    }

    v42 = v16[1];
    v42(v26, v15);
    v43 = sub_268B37504();
    v95(v24, v29, v15);
    v44 = sub_268B37A34();
    v45 = sub_268B37EC4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v82 = v42;
      v48 = v29;
      v49 = v47;
      v100 = v47;
      *v46 = 136315138;
      v50 = sub_268B37594();
      v51 = MEMORY[0x26D6256F0](v43, v50);
      v53 = sub_26892CDB8(v51, v52, &v100);
      v30 = v99;

      *(v46 + 4) = v53;
      _os_log_impl(&dword_2688BB000, v44, v45, "Using predicates: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v49);
      v54 = v49;
      v29 = v48;
      v42 = v82;
      MEMORY[0x26D6266E0](v54, -1, -1);
      MEMORY[0x26D6266E0](v46, -1, -1);
    }

    v42(v24, v15);
    v55 = v97;
    if (*(v43 + 16))
    {
      v97 = v43;
      v56 = v89;
      v57 = v89[5];
      v99 = v89[6];
      v96 = __swift_project_boxed_opaque_existential_1(v89 + 2, v57);
      v59 = v91;
      v58 = v92;
      v60 = v93;
      (*(v92 + 16))(v91, v55, v93);
      v61 = (*(v58 + 80) + 40) & ~*(v58 + 80);
      v62 = (v90 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      v64 = v88;
      *(v63 + 2) = sub_26890DF14;
      *(v63 + 3) = v64;
      *(v63 + 4) = v98;
      (*(v58 + 32))(&v63[v61], v59, v60);
      *&v63[v62] = v56;
      *&v63[(v62 + 15) & 0xFFFFFFFFFFFFFFF8] = v94;

      sub_268B37424();
    }

    else
    {

      v70 = v83;
      v95(v83, v29, v15);

      v71 = sub_268B37A34();
      v72 = sub_268B37EE4();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = v42;
        v75 = swift_slowAlloc();
        v100 = v75;
        *v73 = 136315138;
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5A40, &qword_268B3C080);
        v77 = MEMORY[0x26D6256F0](v30, v76);
        v79 = sub_26892CDB8(v77, v78, &v100);

        *(v73 + 4) = v79;
        _os_log_impl(&dword_2688BB000, v71, v72, "No predicates were created from homeAutomationEntities: %s. Falling back to smart select", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v75);
        MEMORY[0x26D6266E0](v75, -1, -1);
        MEMORY[0x26D6266E0](v73, -1, -1);

        v74(v70, v15);
      }

      else
      {

        v42(v70, v15);
      }

      v80 = v84;
      sub_268B37164();
      sub_2688F4CD4();

      return (*(v85 + 8))(v80, v86);
    }
  }

  else
  {

    if (qword_2802A4F30 != -1)
    {
      swift_once();
    }

    v66 = __swift_project_value_buffer(v15, qword_2802CDA10);
    (v16[2])(v19, v66, v15);
    v67 = sub_268B37A34();
    v68 = sub_268B37EC4();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_2688BB000, v67, v68, "No home automation entities in intent, returning failure.", v69, 2u);
      MEMORY[0x26D6266E0](v69, -1, -1);
    }

    (v16[1])(v19, v15);
    v100 = 0;
    v101 = 1;
    return a1(&v100);
  }
}

uint64_t sub_2688F8A9C(unint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v138 = a7;
  v136 = a6;
  v141 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  MEMORY[0x28223BE20](v11 - 8);
  v150 = &v130 - v12;
  v152 = sub_268B371E4();
  v137 = *(v152 - 8);
  v13 = MEMORY[0x28223BE20](v152);
  v151 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v149 = &v130 - v15;
  v16 = sub_268B36C04();
  v143 = *(v16 - 8);
  v144 = v16;
  MEMORY[0x28223BE20](v16);
  v142 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_268B37A54();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v153 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v135 = &v130 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v134 = &v130 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v139 = &v130 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v130 - v28;
  if (qword_2802A4F30 != -1)
  {
    goto LABEL_72;
  }

LABEL_2:
  v30 = __swift_project_value_buffer(v18, qword_2802CDA10);
  v31 = *(v19 + 16);
  v145 = v30;
  v146 = v31;
  v147 = v19 + 16;
  (v31)(v29);

  v32 = sub_268B37A34();
  v33 = sub_268B37ED4();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v148 = v19;
    v35 = v34;
    v36 = a4;
    v37 = a3;
    v38 = a2;
    v39 = v18;
    v40 = swift_slowAlloc();
    *v35 = 138412290;
    sub_268B378C4();
    v41 = sub_268B37CE4();
    *(v35 + 4) = v41;
    *v40 = v41;
    _os_log_impl(&dword_2688BB000, v32, v33, "Matched devices: %@", v35, 0xCu);
    sub_2688C058C(v40, &qword_2802A6420, &unk_268B3C680);
    v42 = v40;
    v18 = v39;
    a2 = v38;
    a3 = v37;
    a4 = v36;
    MEMORY[0x26D6266E0](v42, -1, -1);
    v43 = v35;
    v19 = v148;
    MEMORY[0x26D6266E0](v43, -1, -1);
  }

  v46 = *(v19 + 8);
  v44 = v19 + 8;
  v45 = v46;
  v46(v29, v18);
  if (*(a1 + 16))
  {
    v130 = v45;
    v148 = v44;
    v131 = v18;
    v132 = a3;
    v133 = a2;
    v19 = sub_268A0358C(a4, a1);
    a2 = MEMORY[0x277D84F90];
    v154[0] = MEMORY[0x277D84F90];
    a4 = sub_2688EFD0C();
    v29 = 0;
    v18 = v19 & 0xC000000000000001;
    a3 = v19 & 0xFFFFFFFFFFFFFF8;
    v153 = a2;
    while (a4 != v29)
    {
      if (v18)
      {
        v47 = MEMORY[0x26D625BD0](v29, v19);
      }

      else
      {
        if (v29 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_67;
        }

        v47 = *(v19 + 8 * v29 + 32);
      }

      a1 = v47;
      a2 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        swift_once();
        goto LABEL_2;
      }

      v48 = [v47 context];
      if (v48)
      {

        MEMORY[0x26D6256C0]();
        if (*((v154[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268B37D14();
        }

        sub_268B37D44();
        v153 = v154[0];
        ++v29;
      }

      else
      {

        ++v29;
      }
    }

    v29 = 0;
    a1 = MEMORY[0x277D84F90];
    v154[0] = MEMORY[0x277D84F90];
    while (a4 != v29)
    {
      if (v18)
      {
        v49 = MEMORY[0x26D625BD0](v29, v19);
      }

      else
      {
        if (v29 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_69;
        }

        v49 = *(v19 + 8 * v29 + 32);
      }

      v50 = v49;
      a2 = (v29 + 1);
      if (__OFADD__(v29, 1))
      {
        goto LABEL_68;
      }

      v51 = [v49 context];
      if (v51)
      {
        v52 = v51;

        ++v29;
      }

      else
      {
        MEMORY[0x26D6256C0]();
        if (*((v154[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v154[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_268B37D14();
        }

        sub_268B37D44();
        a1 = v154[0];
        ++v29;
      }
    }

    v54 = v142;
    v53 = v143;
    v55 = v141;
    a2 = v144;
    (*(v143 + 16))(v142, v141, v144);
    v56 = (*(v53 + 88))(v54, a2);
    if (v56 == *MEMORY[0x277D5F658])
    {

      sub_268901EE8();
      v58 = v57;

      v154[0] = v58;

      sub_2689848D8(v59);
      v60 = v154[0];
      v61 = v139;
      v62 = v131;
      v146(v139, v145, v131);

      v63 = sub_268B37A34();
      v64 = sub_268B37F04();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v153 = v60;
        v66 = v65;
        v67 = swift_slowAlloc();
        v154[0] = v67;
        *v66 = 136315394;
        v68 = type metadata accessor for Device();
        v69 = MEMORY[0x26D6256F0](v58, v68);
        v71 = v70;

        v72 = sub_26892CDB8(v69, v71, v154);

        *(v66 + 4) = v72;
        *(v66 + 12) = 2080;
        v73 = MEMORY[0x26D6256F0](a1, v68);
        v75 = v74;

        v76 = sub_26892CDB8(v73, v75, v154);

        *(v66 + 14) = v76;
        _os_log_impl(&dword_2688BB000, v63, v64, "Pause in <location> request, returning filtered devices: %s + devices without context: %s", v66, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D6266E0](v67, -1, -1);
        v77 = v66;
        v60 = v153;
        MEMORY[0x26D6266E0](v77, -1, -1);

        v78 = v139;
      }

      else
      {

        v78 = v61;
      }

      v130(v78, v62);
      (v133)(v60, 0);
    }

    if (v56 == *MEMORY[0x277D5F648])
    {

      a1 = 0;
      v154[0] = MEMORY[0x277D84F90];
      v143 = v137 + 8;
      v144 = (v137 + 32);
      v85 = v152;
      v29 = v150;
      v140 = v19;
      while (a4 != a1)
      {
        if (v18)
        {
          v86 = MEMORY[0x26D625BD0](a1, v19);
        }

        else
        {
          if (a1 >= *(a3 + 16))
          {
            goto LABEL_71;
          }

          v86 = *(v19 + 8 * a1 + 32);
        }

        v87 = v86;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_70;
        }

        sub_268988574(v86);
        if (v88)
        {
          sub_268B37154();
          if (__swift_getEnumTagSinglePayload(v29, 1, v85) == 1)
          {

            sub_2688C058C(v29, &qword_2802A58F8, &unk_268B3C510);
          }

          else
          {
            a2 = v149;
            (*v144)(v149, v29, v85);
            v89 = v151;
            sub_268B37194();
            sub_26890D6F8(&qword_2802A5BE0, MEMORY[0x277D5F7E0], MEMORY[0x277D5F800]);
            LODWORD(v153) = sub_268B380F4();
            v90 = *v143;
            (*v143)(v89, v85);
            v90(a2, v85);
            if (v153)
            {
              sub_268B38214();
              sub_268B38244();
              sub_268B38254();
              sub_268B38224();
            }

            else
            {
            }

            v85 = v152;
            v29 = v150;
            v19 = v140;
          }
        }

        else
        {
        }

        ++a1;
      }

      if (sub_2688EFD0C())
      {
      }

      else
      {
      }

      v114 = v133;
      v115 = v131;
      v116 = v134;
      v117 = v146;
      v118 = v145;
      sub_268ADB3A4();
      v120 = v119;

      v117(v116, v118, v115);

      v121 = sub_268B37A34();
      v122 = sub_268B37F04();

      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        v154[0] = v124;
        *v123 = 136315138;
        v125 = type metadata accessor for Device();
        v126 = MEMORY[0x26D6256F0](v120, v125);
        v128 = sub_26892CDB8(v126, v127, v154);

        *(v123 + 4) = v128;
        _os_log_impl(&dword_2688BB000, v121, v122, "Volume controls request, returning resolved devices grouped by media system id: %s", v123, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v124);
        MEMORY[0x26D6266E0](v124, -1, -1);
        MEMORY[0x26D6266E0](v123, -1, -1);

        v129 = v134;
      }

      else
      {

        v129 = v116;
      }

      v130(v129, v115);
      (v114)(v120, 0);
    }

    v91 = v151;
    sub_268B37164();
    v94 = sub_2688F6A28(v153, v92, v93, v55, v138);

    (*(v137 + 8))(v91, v152);
    v154[0] = v94;

    sub_2689848D8(a1);
    v95 = v154[0];
    v96 = v135;
    v97 = v131;
    v146(v135, v145, v131);

    v98 = sub_268B37A34();
    v99 = sub_268B37F04();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v153 = v95;
      v101 = v100;
      v102 = swift_slowAlloc();
      v154[0] = v102;
      *v101 = 136315394;
      v103 = type metadata accessor for Device();
      v104 = MEMORY[0x26D6256F0](v94, v103);
      v106 = v105;

      v107 = sub_26892CDB8(v104, v106, v154);

      *(v101 + 4) = v107;
      *(v101 + 12) = 2080;
      v108 = MEMORY[0x26D6256F0](a1, v103);
      v110 = v109;

      v111 = sub_26892CDB8(v108, v110, v154);

      *(v101 + 14) = v111;
      _os_log_impl(&dword_2688BB000, v98, v99, "Returning selected group leaders: %s + devices without context: %s", v101, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6266E0](v102, -1, -1);
      v112 = v101;
      v95 = v153;
      MEMORY[0x26D6266E0](v112, -1, -1);

      v113 = v135;
    }

    else
    {

      v113 = v96;
    }

    v130(v113, v97);
    (v133)(v95, 0);

    return (*(v143 + 8))(v142, v144);
  }

  else
  {
    v79 = a2;
    v80 = v153;
    v146(v153, v145, v18);
    v81 = sub_268B37A34();
    v82 = sub_268B37EE4();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_2688BB000, v81, v82, "No matching devices found in HomeKit.", v83, 2u);
      MEMORY[0x26D6266E0](v83, -1, -1);
    }

    v45(v80, v18);
    return (v79)(1, 1);
  }
}

uint64_t sub_2688F9A5C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = a2;
  *(v11 + 32) = a1;
  *(v11 + 40) = a3;
  *(v11 + 48) = a4;
  *(v11 + 56) = a5;

  v12 = OUTLINED_FUNCTION_150();
  sub_268A0383C(v12, v13, v14, v11);
}

void sub_2688F9B28(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  if (sub_2688EFD0C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BB8, &qword_268B3C698);
    sub_26890CAA0(&qword_2802A5BC0, &qword_2802A5BB8, &qword_268B3C698);
    v14 = sub_268B37E94();
    sub_2688FA004(a1, MEMORY[0x277D84F90], a3, v14 & 1, a5 & 1, a6, a7, v15, v18, a4, v19, v20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BB8, &qword_268B3C698);
    sub_26890CAA0(&qword_2802A5BC0, &qword_2802A5BB8, &qword_268B3C698);
    v16 = sub_268B37E94();
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    *(v17 + 32) = a3;
    *(v17 + 40) = a4;
    *(v17 + 48) = a5 & 1;
    *(v17 + 56) = a6;
    *(v17 + 64) = a7;

    sub_268A04D9C(a4, a3, v16 & 1, sub_26890CC88, v17);
  }
}

void sub_2688F9CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v10) = a6;
  v44 = a4;
  v45 = a5;
  v14 = sub_268B37A54();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_2802CDA10);
  (*(v15 + 16))(v17, v18, v14);

  v19 = sub_268B37A34();
  v20 = sub_268B37F04();
  v21 = a2;
  v22 = v20;
  v46 = a1;
  v23 = v21;

  if (os_log_type_enabled(v19, v22))
  {
    v24 = swift_slowAlloc();
    v43 = a8;
    v25 = v24;
    v26 = swift_slowAlloc();
    v42 = a7;
    v27 = v26;
    v47 = v26;
    *v25 = 136315394;
    v28 = type metadata accessor for MediaStream();
    v29 = MEMORY[0x26D6256F0](v23, v28);
    v41 = a3;
    v31 = sub_26892CDB8(v29, v30, &v47);
    HIDWORD(v40) = v10;
    v32 = v31;

    *(v25 + 4) = v32;
    *(v25 + 12) = 2080;
    v33 = type metadata accessor for DeviceGroup();
    v34 = MEMORY[0x26D6256F0](v46, v33);
    v10 = sub_26892CDB8(v34, v35, &v47);

    *(v25 + 14) = v10;
    LOBYTE(v10) = BYTE4(v40);
    _os_log_impl(&dword_2688BB000, v19, v22, "Resolving source groups for add speaker request with explicit sources: %s and ambiguousEntities: %s", v25, 0x16u);
    swift_arrayDestroy();
    v36 = v27;
    a7 = v42;
    MEMORY[0x26D6266E0](v36, -1, -1);
    v37 = v25;
    a8 = v43;
    MEMORY[0x26D6266E0](v37, -1, -1);
  }

  (*(v15 + 8))(v17, v14);
  v47 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BB8, &qword_268B3C698);
  sub_26890CAA0(&qword_2802A5BC0, &qword_2802A5BB8, &qword_268B3C698);
  v38 = sub_268B37E94();
  sub_2688FA004(v23, v46, v44, v38 & 1, v10 & 1, a7, a8, v39, v40, v41, v42, v43);
}

void sub_2688FA004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_26();
  v13 = v12;
  v15 = v14;
  v16 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v22 = v21 - v20;
  v23 = v15;
  if (sub_2688EFD0C())
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v16, qword_2802CDA10);
    (*(v18 + 16))(v22);

    v24 = sub_268B37A34();
    v25 = sub_268B37F04();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_172_0();
      v27 = swift_slowAlloc();
      OUTLINED_FUNCTION_165_0(5.7779e-34);
      type metadata accessor for MediaStream();
      v28 = sub_268B37CE4();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&dword_2688BB000, v24, v25, "Found explicit source streams in the intent: %@", v26, 0xCu);
      sub_2688C058C(v27, &qword_2802A6420, &unk_268B3C680);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_83_0();
    }

    (*(v18 + 8))(v22, v16);
    v13(v23);
    OUTLINED_FUNCTION_23();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    sub_2688FA23C();
  }
}

void sub_2688FA23C()
{
  OUTLINED_FUNCTION_26();
  v251 = v0;
  v3 = v2;
  v249 = v4;
  v247 = v5;
  v248 = v6;
  v252 = v7;
  v8 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_58_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  __swift_project_value_buffer(v8, qword_2802CDA10);
  v24 = OUTLINED_FUNCTION_51_0();
  v253 = v8;
  v25(v24);
  v26 = sub_268B37A34();
  v27 = sub_268B37F04();
  if (OUTLINED_FUNCTION_183_0(v27))
  {
    v28 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_10(v28);
    OUTLINED_FUNCTION_206_0(&dword_2688BB000, v26, v27, "Resolving add source from ambiguous entities");
    OUTLINED_FUNCTION_6();
  }

  v30 = *(v10 + 8);
  v29 = (v10 + 8);
  v30(v0, v253);
  i = v252;
  v258 = sub_2688EFD0C();
  v260 = v252 & 0xC000000000000001;
  v259 = v252 + 32;
  v250 = v3;
  swift_retain_n();
  v32 = 0;
  v33 = MEMORY[0x277D84F90];
  v34 = &qword_2802A5BC8;
  while (v32 != v258)
  {
    if (v260)
    {
      v35 = MEMORY[0x26D625BD0](v32, v252);
    }

    else
    {
      if (v32 >= *((v252 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_176;
      }

      v35 = *(v259 + 8 * v32);
    }

    i = v35;
    v36 = __OFADD__(v32, 1);
    v37 = v32 + 1;
    if (v36)
    {
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:

      OUTLINED_FUNCTION_209_1();
      goto LABEL_192;
    }

    v38 = v34;
    v39 = sub_2689CC34C(v35);

    if (v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
    }

    i = v40 >> 62;
    if (v40 >> 62)
    {
      v29 = sub_268B382A4();
    }

    else
    {
      v29 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v33 >> 62;
    if (v33 >> 62)
    {
      v42 = sub_268B382A4();
    }

    else
    {
      v42 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v43 = &v29[v42];
    if (__OFADD__(v42, v29))
    {
      goto LABEL_177;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v41)
      {
LABEL_24:
        sub_268B382A4();
      }

LABEL_25:
      v33 = sub_268B381F4();
      v1 = v33 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_26;
    }

    if (v41)
    {
      goto LABEL_24;
    }

    v1 = v33 & 0xFFFFFFFFFFFFFF8;
    if (v43 > *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_25;
    }

LABEL_26:
    v261 = v37;
    v44 = *(v1 + 16);
    v45 = (*(v1 + 24) >> 1) - v44;
    v46 = v1 + 8 * v44;
    if (i)
    {
      if (v40 < 0)
      {
        i = v40;
      }

      else
      {
        i = v40 & 0xFFFFFFFFFFFFFF8;
      }

      v48 = sub_268B382A4();
      if (v48)
      {
        v49 = v48;
        v50 = sub_268B382A4();
        if (v45 < v50)
        {
          goto LABEL_198;
        }

        if (v49 < 1)
        {
          goto LABEL_199;
        }

        v254 = v50;
        v256 = v33;
        v51 = v46 + 32;
        v34 = v38;
        sub_26890CAA0(&qword_2802A5BD0, v38, &unk_268B3C6A0);
        for (i = 0; i != v49; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(v34, &unk_268B3C6A0);
          v52 = sub_26892D47C(v269, i, v40);
          v54 = *v53;
          v52(v269, 0);
          v34 = v38;
          *(v51 + 8 * i) = v54;
        }

        v33 = v256;
        v47 = v254;
        goto LABEL_39;
      }

LABEL_43:

      v34 = v38;
      v32 = v261;
      if (v29 > 0)
      {
        goto LABEL_178;
      }
    }

    else
    {
      i = v40 & 0xFFFFFFFFFFFFFF8;
      v47 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v47)
      {
        goto LABEL_43;
      }

      if (v45 < v47)
      {
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:

        if ((v247 & 1) == 0)
        {
          goto LABEL_207;
        }

        OUTLINED_FUNCTION_122_0(&v260);
        OUTLINED_FUNCTION_209_1();
        OUTLINED_FUNCTION_12_3();
        v222();
        v223 = sub_268B37A34();
        v224 = sub_268B37EE4();
        if (OUTLINED_FUNCTION_115_0(v224))
        {
          v225 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v225);
          OUTLINED_FUNCTION_57();
          _os_log_impl(v226, v227, v228, v229, v230, 2u);
          OUTLINED_FUNCTION_6();
        }

        OUTLINED_FUNCTION_17_2();
        v231();
        type metadata accessor for GroupingUtil();
        v232 = OUTLINED_FUNCTION_226();
        v216 = sub_268A03764(v232);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_268B3BBA0;
        *(inited + 32) = v216;
        goto LABEL_195;
      }

      type metadata accessor for MediaStream();
      swift_arrayInitWithCopy();
      v34 = v38;
LABEL_39:

      v32 = v261;
      if (v47 < v29)
      {
        goto LABEL_178;
      }

      if (v47 > 0)
      {
        v55 = *(v1 + 16);
        v36 = __OFADD__(v55, v47);
        v56 = v55 + v47;
        if (v36)
        {
          goto LABEL_189;
        }

        *(v1 + 16) = v56;
      }
    }
  }

  v269[0] = MEMORY[0x277D84F90];
  v57 = sub_2688EFD0C();
  v58 = 0;
  v59 = v33 & 0xC000000000000001;
  v60 = v33;
  v61 = v33 & 0xFFFFFFFFFFFFFF8;
  while (v57 != v58)
  {
    if (v59)
    {
      v62 = MEMORY[0x26D625BD0](v58, v60);
    }

    else
    {
      if (v58 >= *(v61 + 16))
      {
        goto LABEL_180;
      }

      v62 = *(v60 + 8 * v58 + 32);
    }

    v29 = v62;
    if (__OFADD__(v58, 1))
    {
      goto LABEL_179;
    }

    sub_2688F36FC();
    if (v63)
    {
      sub_268B38214();
      i = *(v269[0] + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    else
    {
    }

    ++v58;
  }

  v64 = 0;
  v255 = v269[0];
  v261 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_264_0();
  while (2)
  {
    while (2)
    {
      if (v64 == v59)
      {
        v269[0] = MEMORY[0x277D84F90];
        v85 = sub_2688EFD0C();
        for (j = 0; v85 != j; ++j)
        {
          if ((v261 & 0xC000000000000001) != 0)
          {
            v87 = MEMORY[0x26D625BD0](j, v261);
          }

          else
          {
            if (j >= *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_186;
            }

            v87 = *(v261 + 8 * j + 32);
          }

          v29 = v87;
          if (__OFADD__(j, 1))
          {
            goto LABEL_185;
          }

          sub_2688F36FC();
          if (v88)
          {
          }

          else
          {
            sub_268B38214();
            i = *(v269[0] + 16);
            sub_268B38244();
            sub_268B38254();
            sub_268B38224();
          }
        }

        v89 = sub_2688EFD0C();
        v90 = 0;
        v91 = v255;
        while (1)
        {
          if (v89 == v90)
          {
            v29 = 0;
            goto LABEL_123;
          }

          if ((v1 & 0xC000000000000001) != 0)
          {
            v92 = MEMORY[0x26D625BD0](v90, v1);
          }

          else
          {
            if (v90 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_188;
            }

            v92 = *(v1 + 8 * v90 + 32);
          }

          v29 = v92;
          if (__OFADD__(v90, 1))
          {
            goto LABEL_187;
          }

          [v92 proximity];
          OUTLINED_FUNCTION_179_0();
          if (v94)
          {
            break;
          }

          ++v90;
        }

        v136 = v93;
        if (v93)
        {

          v269[0] = v136;
          sub_268B38474();
          __break(1u);
          goto LABEL_141;
        }

LABEL_123:
        OUTLINED_FUNCTION_209_1();
        v95 = v251[10];
        OUTLINED_FUNCTION_263_0(v251);
        OUTLINED_FUNCTION_176_0();
        v97 = sub_2688C337C(v96);
        if (v258)
        {
          LOBYTE(v90) = v97;
          v98 = sub_2688EFD0C();
          if (v98 >= 2)
          {

            OUTLINED_FUNCTION_119_0(&v267);
            OUTLINED_FUNCTION_3_3();
            v123();
            v124 = sub_268B37A34();
            v125 = sub_268B37EE4();
            if (OUTLINED_FUNCTION_19(v125))
            {
              v126 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_81(v126);
              OUTLINED_FUNCTION_27();
              _os_log_impl(v127, v128, v129, v130, v131, 2u);
              OUTLINED_FUNCTION_83_0();
            }

            OUTLINED_FUNCTION_17_2();
            v132();
            OUTLINED_FUNCTION_117_0();
            sub_2688FB73C(v134, v135, *(v133 - 256));

            goto LABEL_146;
          }

          if (v98 == 1 && sub_2688EFD0C())
          {
            OUTLINED_FUNCTION_270_0();
            sub_2688EFD10();
            if (v95)
            {
LABEL_212:
              v99 = MEMORY[0x26D625BD0](0, v91);
            }

            else
            {
              v99 = *(v255 + 32);
            }

            i = v99;
            v100 = sub_2688EFD0C();

            if (v100)
            {
              OUTLINED_FUNCTION_3_3();
              v101();
              v102 = sub_268B37A34();
              v103 = sub_268B37F04();
              if (OUTLINED_FUNCTION_115_0(v103))
              {
                v104 = OUTLINED_FUNCTION_14();
                OUTLINED_FUNCTION_10(v104);
                OUTLINED_FUNCTION_57();
                _os_log_impl(v105, v106, v107, v108, v109, 2u);
                OUTLINED_FUNCTION_6();
              }

LABEL_173:
              OUTLINED_FUNCTION_17_2();
              v201();
              OUTLINED_FUNCTION_117_0();
              sub_2688FB73C(v203, v204, *(v202 - 256));

              goto LABEL_174;
            }

            OUTLINED_FUNCTION_3_3();
            v181();
            v182 = sub_268B37A34();
            v183 = sub_268B37F04();
            if (os_log_type_enabled(v182, v183))
            {
              v184 = OUTLINED_FUNCTION_14();
              *v184 = 0;
              _os_log_impl(&dword_2688BB000, v182, v183, "All entities in the intent are playing in the same group (1 group found).", v184, 2u);
              OUTLINED_FUNCTION_209_1();
              OUTLINED_FUNCTION_12();
            }

            OUTLINED_FUNCTION_17_2();
            v185();
            if ((v90 & 1) == 0)
            {
              OUTLINED_FUNCTION_119_0(&v263);
              OUTLINED_FUNCTION_3_3();
              v192();
              v193 = sub_268B37A34();
              v194 = sub_268B37F04();
              if (OUTLINED_FUNCTION_115_0(v194))
              {
                v195 = OUTLINED_FUNCTION_14();
                OUTLINED_FUNCTION_10(v195);
                OUTLINED_FUNCTION_57();
                _os_log_impl(v196, v197, v198, v199, v200, 2u);
                OUTLINED_FUNCTION_12();
              }

              goto LABEL_173;
            }

            v186 = sub_2688F42F4(i);
            if (v186)
            {
              v90 = v186;
              v187 = sub_2688EFD0C();
              v188 = 0;
              v91 = v90 & 0xFFFFFFFFFFFFFF8;
              while (v187 != v188)
              {
                if ((v90 & 0xC000000000000001) != 0)
                {
                  v189 = MEMORY[0x26D625BD0](v188, v90);
                }

                else
                {
                  if (v188 >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_211;
                  }

                  v189 = *(v90 + 8 * v188 + 32);
                }

                v190 = v189;
                if (__OFADD__(v188, 1))
                {
                  __break(1u);
LABEL_211:
                  __break(1u);
                  goto LABEL_212;
                }

                v191 = sub_268983434(v189);

                ++v188;
                if (v191)
                {
                  goto LABEL_200;
                }
              }

              goto LABEL_191;
            }

LABEL_192:
            OUTLINED_FUNCTION_109(&v262);
            OUTLINED_FUNCTION_3_3();
            v205();
            v206 = sub_268B37A34();
            v207 = sub_268B37F04();
            if (OUTLINED_FUNCTION_115_0(v207))
            {
              v208 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_10(v208);
              OUTLINED_FUNCTION_57();
              _os_log_impl(v209, v210, v211, v212, v213, 2u);
              OUTLINED_FUNCTION_6();
            }

            OUTLINED_FUNCTION_17_2();
            v214();
            type metadata accessor for GroupingUtil();
            v215 = OUTLINED_FUNCTION_226();
            v216 = sub_268A03764(v215);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
            v217 = swift_initStackObject();
            *(v217 + 16) = xmmword_268B3C5A0;
            *(v217 + 32) = i;
            *(v217 + 40) = v216;
            i = i;
LABEL_195:
            v218 = v216;
            OUTLINED_FUNCTION_117_0();
            sub_2688FB73C(v220, v221, *(v219 - 256));

            swift_setDeallocating();
LABEL_196:
            sub_268ACE718();
            goto LABEL_147;
          }

LABEL_141:

          if (v248)
          {
            OUTLINED_FUNCTION_119_0(&v265);
            OUTLINED_FUNCTION_3_3();
            v137();
            v138 = sub_268B37A34();
            v139 = sub_268B37F04();
            if (OUTLINED_FUNCTION_19(v139))
            {
              v140 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_81(v140);
              OUTLINED_FUNCTION_27();
              _os_log_impl(v141, v142, v143, v144, v145, 2u);
              OUTLINED_FUNCTION_83_0();
            }

            OUTLINED_FUNCTION_17_2();
            v146();
            v249(MEMORY[0x277D84F90]);
          }

          else
          {
            OUTLINED_FUNCTION_109(&v266);
            OUTLINED_FUNCTION_3_3();
            v147();
            v148 = sub_268B37A34();
            v149 = sub_268B37F04();
            if (OUTLINED_FUNCTION_19(v149))
            {
              v150 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_10(v150);
              OUTLINED_FUNCTION_72();
              OUTLINED_FUNCTION_206_0(v151, v152, v153, v154);
              OUTLINED_FUNCTION_6();
            }

            OUTLINED_FUNCTION_17_2();
            v155();
            if (v90)
            {
              OUTLINED_FUNCTION_119_0(&v264);
              OUTLINED_FUNCTION_3_3();
              v156();
              v157 = sub_268B37A34();
              v158 = sub_268B37F04();
              if (OUTLINED_FUNCTION_19(v158))
              {
                v159 = OUTLINED_FUNCTION_14();
                OUTLINED_FUNCTION_81(v159);
                OUTLINED_FUNCTION_27();
                _os_log_impl(v160, v161, v162, v163, v164, 2u);
                OUTLINED_FUNCTION_83_0();
              }

              OUTLINED_FUNCTION_17_2();
              v165();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
              v166 = swift_initStackObject();
              *(v166 + 16) = xmmword_268B3BBA0;
              type metadata accessor for GroupingUtil();
              v167 = OUTLINED_FUNCTION_226();
              *(v166 + 32) = sub_268A03764(v167);
              OUTLINED_FUNCTION_117_0();
              sub_2688FB73C(v169, v170, *(v168 - 256));

              swift_setDeallocating();
              goto LABEL_196;
            }

            OUTLINED_FUNCTION_3_3();
            v171();
            v172 = sub_268B37A34();
            v173 = sub_268B37F04();
            if (OUTLINED_FUNCTION_19(v173))
            {
              v174 = OUTLINED_FUNCTION_14();
              OUTLINED_FUNCTION_81(v174);
              OUTLINED_FUNCTION_27();
              _os_log_impl(v175, v176, v177, v178, v179, 2u);
              OUTLINED_FUNCTION_12();
            }

            OUTLINED_FUNCTION_17_2();
            v180();

            sub_2688FBAB0(v1, v251, v249, v250);
          }
        }

        else
        {

          OUTLINED_FUNCTION_119_0(&v268);
          OUTLINED_FUNCTION_3_3();
          v110();
          v111 = sub_268B37A34();
          v112 = sub_268B37EE4();
          if (OUTLINED_FUNCTION_19(v112))
          {
            v113 = OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_81(v113);
            OUTLINED_FUNCTION_27();
            _os_log_impl(v114, v115, v116, v117, v118, 2u);
            OUTLINED_FUNCTION_83_0();
          }

          OUTLINED_FUNCTION_17_2();
          v119();
          OUTLINED_FUNCTION_117_0();
          sub_2688FB73C(v121, v122, *(v120 - 256));
        }

        goto LABEL_146;
      }

      v29 = v261;
      if (v260)
      {
        v65 = MEMORY[0x26D625BD0](v64, v252);
      }

      else
      {
        if (v64 >= *((v252 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_182;
        }

        v65 = *(v259 + 8 * v64);
      }

      i = v65;
      v36 = __OFADD__(v64++, 1);
      if (v36)
      {
        goto LABEL_181;
      }

      v66 = sub_2689CC34C(v65);

      if (!v66)
      {
        v66 = MEMORY[0x277D84F90];
      }

      i = v66 >> 62;
      if (v66 >> 62)
      {
        v67 = sub_268B382A4();
      }

      else
      {
        v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v68 = v261 >> 62;
      if (v261 >> 62)
      {
        v69 = sub_268B382A4();
      }

      else
      {
        v69 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v70 = v69 + v67;
      if (__OFADD__(v69, v67))
      {
        goto LABEL_183;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v68)
        {
          v71 = v261 & 0xFFFFFFFFFFFFFF8;
          if (v70 > *((v261 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_77:
            v29 = v261;
            goto LABEL_79;
          }

          goto LABEL_80;
        }
      }

      else if (!v68)
      {
        goto LABEL_77;
      }

      sub_268B382A4();
LABEL_79:
      v261 = sub_268B381F4();
      v71 = v261 & 0xFFFFFFFFFFFFFF8;
LABEL_80:
      v72 = *(v71 + 16);
      v73 = (*(v71 + 24) >> 1) - v72;
      v74 = v71 + 8 * v72;
      v257 = v71;
      if (i)
      {
        if (v66 < 0)
        {
          i = v66;
        }

        else
        {
          i = v66 & 0xFFFFFFFFFFFFFF8;
        }

        v75 = sub_268B382A4();
        if (v75)
        {
          v76 = v75;
          v77 = sub_268B382A4();
          if (v73 < v77)
          {
            goto LABEL_205;
          }

          if (v76 < 1)
          {
            goto LABEL_206;
          }

          v29 = v77;
          v78 = v74 + 32;
          v59 = sub_26890CAA0(&qword_2802A5BD0, &qword_2802A5BC8, &unk_268B3C6A0);
          for (i = 0; i != v76; ++i)
          {
            v79 = OUTLINED_FUNCTION_231_0();
            __swift_instantiateConcreteTypeFromMangledNameV2(v79, v80);
            v81 = sub_26892D47C(v269, i, v66);
            v1 = *v82;
            v81(v269, 0);
            *(v78 + 8 * i) = v1;
          }

          OUTLINED_FUNCTION_264_0();
          goto LABEL_93;
        }

        goto LABEL_97;
      }

      i = v66 & 0xFFFFFFFFFFFFFF8;
      v29 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v29)
      {
LABEL_97:

        if (v67 > 0)
        {
          goto LABEL_184;
        }

        continue;
      }

      break;
    }

    if (v73 >= v29)
    {
      type metadata accessor for MediaStream();
      swift_arrayInitWithCopy();
LABEL_93:

      if (v29 < v67)
      {
        goto LABEL_184;
      }

      if (v29 > 0)
      {
        v83 = *(v257 + 16);
        v36 = __OFADD__(v83, v29);
        v84 = &v29[v83];
        if (v36)
        {
          goto LABEL_190;
        }

        *(v257 + 16) = v84;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  OUTLINED_FUNCTION_122_0(&v261);
  OUTLINED_FUNCTION_209_1();
  OUTLINED_FUNCTION_12_3();
  v234();
  v235 = sub_268B37A34();
  v236 = sub_268B37EE4();
  if (OUTLINED_FUNCTION_115_0(v236))
  {
    v237 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_10(v237);
    OUTLINED_FUNCTION_57();
    _os_log_impl(v238, v239, v240, v241, v242, 2u);
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_17_2();
  v243();
  OUTLINED_FUNCTION_117_0();
  sub_2688FB73C(v245, v246, *(v244 - 256));

LABEL_174:

LABEL_146:
LABEL_147:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2688FB73C(unint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v40 = a3;
  v41 = a2;
  v5 = sub_268B37A54();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2688F442C(a1);
  v8 = sub_2688EFD0C();
  v9 = 0;
  v10 = v7 & 0xC000000000000001;
  v11 = v7 & 0xFFFFFFFFFFFFFF8;
  v12 = v7 + 32;
  v38 = v7 & 0xC000000000000001;
  v39 = v8;
  v36 = v7 + 32;
  v37 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_2:
  while (v9 != v8)
  {
    if (v10)
    {
      v13 = MEMORY[0x26D625BD0](v9, v7);
    }

    else
    {
      if (v9 >= *(v11 + 16))
      {
        goto LABEL_30;
      }

      v13 = *(v12 + 8 * v9);
    }

    v3 = v13;
    if (__OFADD__(v9++, 1))
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      swift_once();
LABEL_21:
      v22 = v35;
      v23 = __swift_project_value_buffer(v35, qword_2802CDA10);
      v25 = v33;
      v24 = v34;
      (*(v34 + 16))(v33, v23, v22);
      v26 = sub_268B37A34();
      v27 = sub_268B37F04();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_2688BB000, v26, v27, "Multiple sources found, but one of them contains the local device. Choosing that one as the source", v28, 2u);
        MEMORY[0x26D6266E0](v28, -1, -1);
      }

      (*(v24 + 8))(v25, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_268B3BBA0;
      *(v29 + 32) = v3;
      v30 = v3;
      v41(v29);
    }

    v15 = sub_2688F42F4(v13);
    if (v15)
    {
      v16 = v15;
      v17 = sub_2688EFD0C();
      v18 = 0;
      do
      {
        if (v17 == v18)
        {

          v10 = v38;
          v8 = v39;
          v12 = v36;
          v11 = v37;
          goto LABEL_2;
        }

        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x26D625BD0](v18, v16);
        }

        else
        {
          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v19 = *(v16 + 8 * v18 + 32);
        }

        v20 = v19;
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v21 = sub_268983434(v19);

        ++v18;
      }

      while ((v21 & 1) == 0);

      if (qword_2802A4F30 != -1)
      {
        goto LABEL_31;
      }

      goto LABEL_21;
    }
  }

  v41(v7);
}

uint64_t sub_2688FBAB0(uint64_t a1, void *a2, void (*a3)(uint64_t), NSObject *a4)
{
  v104 = a2;
  v7 = sub_268B371E4();
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x28223BE20](v7);
  v92 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v89 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v95 = &v88 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v91 = &v88 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v88 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v88 - v20;
  v22 = swift_allocObject();
  v90 = a3;
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  v96 = v22;
  v23 = qword_2802A4F30;

  if (v23 != -1)
  {
    goto LABEL_63;
  }

LABEL_2:
  v97 = a4;
  v24 = __swift_project_value_buffer(v9, qword_2802CDA10);
  v25 = *(v10 + 16);
  v98 = v24;
  v99 = v25;
  v100 = v10 + 16;
  (v25)(v21);
  a4 = sub_268B37A34();
  v26 = sub_268B37F04();
  if (os_log_type_enabled(a4, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2688BB000, a4, v26, "Resolving add source from context", v27, 2u);
    MEMORY[0x26D6266E0](v27, -1, -1);
  }

  v28 = *(v10 + 8);
  v102 = v10 + 8;
  v103 = v9;
  v101 = v28;
  v28(v21, v9);
  v29 = sub_2688EFD0C();
  v21 = 0;
  v9 = a1 & 0xC000000000000001;
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v29 == v21)
    {
      a4 = 0;
      goto LABEL_14;
    }

    if (v9)
    {
      v30 = MEMORY[0x26D625BD0](v21, a1);
    }

    else
    {
      if (v21 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v30 = *(a1 + 8 * v21 + 32);
    }

    a4 = v30;
    if (__OFADD__(v21, 1))
    {
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
LABEL_63:
      swift_once();
      goto LABEL_2;
    }

    v31 = [v30 proximity];
    if ((v31 - 1) >= 4)
    {
      break;
    }

    ++v21;
  }

  v82 = v31;
  if (v31)
  {

    v105 = v82;
    sub_268B38474();
    __break(1u);
    goto LABEL_54;
  }

LABEL_14:
  v21 = __swift_project_boxed_opaque_existential_1(v104 + 7, v104[10]);
  v32 = sub_2688C337C(a4);
  if (!a4 || (v32 & 1) == 0)
  {
    v19 = 0;
    v105 = MEMORY[0x277D84F90];
    while (v29 != v19)
    {
      if (v9)
      {
        v41 = MEMORY[0x26D625BD0](v19, a1);
      }

      else
      {
        if (v19 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v41 = *(a1 + 8 * v19 + 32);
      }

      v42 = v41;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_59;
      }

      if ([v41 nowPlayingState] == 1)
      {
        v21 = &v105;
        sub_268B38214();
        sub_268B38244();
        sub_268B38254();
        sub_268B38224();
      }

      else
      {
      }

      ++v19;
    }

    v43 = v105;
    if (sub_2688EFD0C())
    {
      v44 = v95;
      v45 = v103;
      v99(v95, v98, v103);

      v46 = sub_268B37A34();
      v47 = sub_268B37F04();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v105 = v49;
        *v48 = 136315138;
        v50 = type metadata accessor for DeviceContext();
        v51 = MEMORY[0x26D6256F0](v43, v50);
        v53 = sub_26892CDB8(v51, v52, &v105);

        *(v48 + 4) = v53;
        _os_log_impl(&dword_2688BB000, v46, v47, "Found pausable devices from context: %s. Creating device groups", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v49);
        MEMORY[0x26D6266E0](v49, -1, -1);
        MEMORY[0x26D6266E0](v48, -1, -1);

        v54 = v95;
      }

      else
      {

        v54 = v44;
      }

      v101(v54, v45);
      v69 = v96;
      v70 = swift_allocObject();
      *(v70 + 16) = MEMORY[0x277D84F90];
      v71 = v92;
      sub_268B37164();
      sub_268902AB0(v43, v71, v72, v73, v74, v75, v76, v77, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);

      (*(v93 + 8))(v71, v94);
      v78 = v104;
      v79 = v104[5];
      v103 = v104[6];
      __swift_project_boxed_opaque_existential_1(v104 + 2, v79);
      v80 = swift_allocObject();
      v80[2] = a1;
      v80[3] = v70;
      v80[4] = v78;
      v80[5] = sub_26890CAF4;
      v80[6] = v69;

      sub_268B37424();
    }

    else
    {

      v99(v91, v98, v103);
      v21 = sub_268B37A34();
      v19 = sub_268B37EE4();
      if (os_log_type_enabled(v21, v19))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_2688BB000, v21, v19, "No pausable contexts were found. Looking for devices with paused content on screen", v55, 2u);
        MEMORY[0x26D6266E0](v55, -1, -1);
      }

      v101(v91, v103);
      v56 = 0;
      v105 = MEMORY[0x277D84F90];
      while (v29 != v56)
      {
        if (v9)
        {
          v57 = MEMORY[0x26D625BD0](v56, a1);
        }

        else
        {
          if (v56 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v57 = *(a1 + 8 * v56 + 32);
        }

        v19 = v57;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_61;
        }

        if ([v57 nowPlayingState] == 2)
        {
          v21 = &v105;
          sub_268B38214();
          sub_268B38244();
          sub_268B38254();
          sub_268B38224();
        }

        else
        {
        }

        ++v56;
      }

      v58 = v105;
      if (sub_2688EFD0C())
      {
        v59 = swift_allocObject();
        *(v59 + 16) = MEMORY[0x277D84F90];
        v60 = v92;
        sub_268B371A4();
        sub_268902AB0(v58, v60, v61, v62, v63, v64, v65, v66, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99);

        (*(v93 + 8))(v60, v94);
        v67 = v104;
        __swift_project_boxed_opaque_existential_1(v104 + 2, v104[5]);
        v68 = swift_allocObject();
        v68[2] = a1;
        v68[3] = v59;
        v68[4] = v67;
        v68[5] = sub_26890CAF4;
        v68[6] = v96;

        sub_268B37424();
      }

LABEL_54:

      v83 = v89;
      v84 = v103;
      v99(v89, v98, v103);
      v85 = sub_268B37A34();
      v86 = sub_268B37EE4();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        *v87 = 0;
        _os_log_impl(&dword_2688BB000, v85, v86, "No pausable contexts were found, and no contexts with paused content on the screen either. Bailing...", v87, 2u);
        MEMORY[0x26D6266E0](v87, -1, -1);
      }

      v101(v83, v84);
      sub_2688FB73C(MEMORY[0x277D84F90], v90, v97);
    }
  }

  v33 = v103;
  v99(v19, v98, v103);
  v34 = a4;
  v35 = sub_268B37A34();
  v36 = sub_268B37F04();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_2688BB000, v35, v36, "Local device is playing or has paused content on screen. Choosing local device as the source", v37, 2u);
    MEMORY[0x26D6266E0](v37, -1, -1);
  }

  v101(v19, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_268B3BBA0;
  type metadata accessor for GroupingUtil();
  v39 = v34;
  v40 = sub_268A03764(a4);

  *(v38 + 32) = v40;
  sub_2688FB73C(v38, v90, v97);
}

uint64_t sub_2688FC64C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v9 = sub_268B37A54();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_268A0358C(a2, a1);
  if (qword_2802A4F30 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_2802CDA10);
  (*(v10 + 16))(v12, v14, v9);

  v31 = v12;
  v15 = sub_268B37A34();
  v16 = sub_268B37F04();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v10;
    v18 = v17;
    v28 = swift_slowAlloc();
    v32[0] = v28;
    *v18 = 136315138;
    v19 = type metadata accessor for Device();
    v20 = MEMORY[0x26D6256F0](v13, v19);
    v29 = v9;
    v22 = sub_26892CDB8(v20, v21, v32);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_2688BB000, v15, v16, "Found the following devices with paused content on the screen: %s", v18, 0xCu);
    v23 = v28;
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x26D6266E0](v23, -1, -1);
    MEMORY[0x26D6266E0](v18, -1, -1);

    (*(v30 + 8))(v31, v29);
  }

  else
  {

    (*(v10 + 8))(v31, v9);
  }

  v24 = sub_268A08F04();

  swift_beginAccess();
  *(a3 + 16) = v24;

  a5(v25);
}

uint64_t sub_2688FC92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  sub_268A0358C(a2, a1);
  v7 = sub_268A08F04();

  swift_beginAccess();
  *(a3 + 16) = v7;

  a5(v8);
}

void sub_2688FC9D4()
{
  OUTLINED_FUNCTION_26();
  v61 = v2;
  v62 = v0;
  v64 = v4;
  v65 = v3;
  v6 = v5;
  v63 = v7;
  v8 = sub_268B37464();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v68 = v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA0, &unk_268B41020);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v13);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_2(v18, v60);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_78();
  v75 = v21;
  OUTLINED_FUNCTION_9();
  v22 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1_0();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v22, qword_2802CDA10);
  v24 = OUTLINED_FUNCTION_139();
  v25(v24);
  v26 = sub_268B37A34();
  v27 = sub_268B37F04();
  v28 = os_log_type_enabled(v26, v27);
  v66 = v6;
  if (v28)
  {
    v29 = OUTLINED_FUNCTION_14();
    *v29 = 0;
    _os_log_impl(&dword_2688BB000, v26, v27, "Resolving destination groups for add", v29, 2u);
    v6 = v66;
    OUTLINED_FUNCTION_12();
  }

  v30 = OUTLINED_FUNCTION_189();
  v31(v30);
  v32 = *(v6 + 16);
  if (!v32)
  {
LABEL_18:
    v51 = 0;
    goto LABEL_20;
  }

  v33 = v6 + 32;
  v73 = (v10 + 104);
  v67 = (v10 + 32);
  v72 = *MEMORY[0x277D5F870];
  v70 = (v10 + 8);
  while (1)
  {
    sub_26890C900(v33, v76);
    __swift_project_boxed_opaque_existential_1(v76, v76[3]);
    v34 = v75;
    sub_268B37604();
    (*v73)(v1, v72, v8);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v8);
    v38 = *(v74 + 48);
    sub_26890C964(v34, v15, &qword_2802A5BA8, &qword_268B3C690);
    sub_26890C964(v1, &v15[v38], &qword_2802A5BA8, &qword_268B3C690);
    OUTLINED_FUNCTION_54_0(v15);
    if (v41)
    {
      break;
    }

    sub_26890C964(v15, v71, &qword_2802A5BA8, &qword_268B3C690);
    OUTLINED_FUNCTION_54_0(&v15[v38]);
    if (v41)
    {
      sub_2688C058C(v1, &qword_2802A5BA8, &qword_268B3C690);
      v42 = OUTLINED_FUNCTION_231_0();
      sub_2688C058C(v42, v43, &qword_268B3C690);
      v44 = OUTLINED_FUNCTION_213_0();
      v45(v44);
LABEL_15:
      sub_2688C058C(v15, &qword_2802A5BA0, &unk_268B41020);
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
      goto LABEL_17;
    }

    v46 = v68;
    (*v67)(v68, &v15[v38], v8);
    OUTLINED_FUNCTION_148_0();
    sub_26890D6F8(&qword_2802A5BB0, v47, MEMORY[0x277D5F890]);
    OUTLINED_FUNCTION_223_0();
    v69 = sub_268B37BB4();
    v48 = *v70;
    (*v70)(v46, v8);
    v49 = OUTLINED_FUNCTION_230_0();
    sub_2688C058C(v49, v50, &qword_268B3C690);
    sub_2688C058C(v75, &qword_2802A5BA8, &qword_268B3C690);
    v48(v71, v8);
    sub_2688C058C(v15, &qword_2802A5BA8, &qword_268B3C690);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    if (v69)
    {
      goto LABEL_19;
    }

LABEL_17:
    v33 += 40;
    if (!--v32)
    {
      goto LABEL_18;
    }
  }

  sub_2688C058C(v1, &qword_2802A5BA8, &qword_268B3C690);
  v39 = OUTLINED_FUNCTION_231_0();
  sub_2688C058C(v39, v40, &qword_268B3C690);
  OUTLINED_FUNCTION_54_0(&v15[v38]);
  if (!v41)
  {
    goto LABEL_15;
  }

  sub_2688C058C(v15, &qword_2802A5BA8, &qword_268B3C690);
  __swift_destroy_boxed_opaque_existential_0Tm(v76);
LABEL_19:
  v51 = 1;
LABEL_20:
  v52 = v62;
  v53 = swift_allocObject();
  v55 = v63;
  v54 = v64;
  *(v53 + 16) = v52;
  *(v53 + 24) = v55;
  v56 = v65;
  *(v53 + 32) = v65;
  *(v53 + 40) = v51;
  v57 = v66;
  v58 = v61;
  *(v53 + 48) = v66;
  *(v53 + 56) = v58;
  *(v53 + 64) = v54;

  v59 = v55;

  sub_268A04D9C(v57, v56, 1, sub_26890CA88, v53);

  OUTLINED_FUNCTION_23();
}

void sub_2688FCF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BB8, &qword_268B3C698);
  sub_26890CAA0(&qword_2802A5BC0, &qword_2802A5BB8, &qword_268B3C698);
  sub_268B37EA4();
  sub_2688FD068();
}

void sub_2688FD068()
{
  OUTLINED_FUNCTION_26();
  v169 = v0;
  v172 = v3;
  LODWORD(v166) = v4;
  LODWORD(v168) = v5;
  v164 = v6;
  v8 = v7;
  v10 = v9;
  sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v170 = v11;
  v171 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_2(v13, v154);
  v15 = MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_33_0(v15, v16, v17, v18, v19, v20, v21, v22, v155);
  v24 = MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_20_1(v24, v25, v26, v27, v28, v29, v30, v31, v156);
  v33 = MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_21_1(v33, v34, v35, v36, v37, v38, v39, v40, v157);
  v42 = MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_32_0(v42, v43, v44, v45, v46, v47, v48, v49, v158);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_18();
  v161 = v51;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_78();
  v165 = v53;
  v174 = MEMORY[0x277D84F90];
  v54 = sub_2688EFD0C();
  v55 = v54;
  v56 = 0;
  v57 = v8 & 0xC000000000000001;
  while (v55 != v56)
  {
    if (v57)
    {
      v54 = MEMORY[0x26D625BD0](v56, v8);
    }

    else
    {
      if (v56 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      v54 = *(v8 + 8 * v56 + 32);
    }

    v2 = v54;
    if (__OFADD__(v56, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      if (!v54)
      {

        sub_2688F3558();
        v62 = v171;
        if (v100)
        {
          if (qword_2802A4F30 != -1)
          {
            OUTLINED_FUNCTION_0_2();
            swift_once();
          }

          OUTLINED_FUNCTION_82(v170, qword_2802CDA10);
          v166 = v101;
          v167 = *(v171 + 16);
          v167(v161);
          v102 = sub_268B37A34();
          sub_268B37EC4();
          OUTLINED_FUNCTION_149_0();
          if (os_log_type_enabled(v102, v103))
          {
            v104 = OUTLINED_FUNCTION_14();
            *v104 = 0;
            _os_log_impl(&dword_2688BB000, v102, v10, "Local device is the source. Checking if this is a add this to the rest of the room/zone request", v104, 2u);
            OUTLINED_FUNCTION_12();
          }

          v105 = *(v171 + 8);
          v62 = v171 + 8;
          v171 += 8;
          v168 = v105;
          v105(v161, v170);
          v169 = v2;
          v10 = sub_2689CB550();
          v106 = sub_2688EFD0C();
          v107 = 0;
          while (1)
          {
            if (v106 == v107)
            {
              goto LABEL_87;
            }

            if ((v10 & 0xC000000000000001) != 0)
            {
              v108 = MEMORY[0x26D625BD0](v107, v10);
            }

            else
            {
              if (v107 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_102;
              }

              v108 = *(v10 + 8 * v107 + 32);
            }

            v109 = v108;
            if (__OFADD__(v107, 1))
            {
              break;
            }

            v62 = sub_268983434(v108);

            ++v107;
            if (v62)
            {

              v133 = v2;
              sub_2689CB8A8();
              v135 = v134;

              if (v135)
              {
                (v167)(v159, v166, v170);
                v136 = sub_268B37A34();
                v137 = sub_268B37ED4();
                if (OUTLINED_FUNCTION_19(v137))
                {
                  v138 = OUTLINED_FUNCTION_14();
                  OUTLINED_FUNCTION_81(v138);
                  OUTLINED_FUNCTION_27();
                  _os_log_impl(v139, v140, v141, v142, v143, 2u);
                  OUTLINED_FUNCTION_83_0();
                }

                v168(v159, v170);
                v144 = v8;
LABEL_95:
                (v172)(v144);

                goto LABEL_84;
              }

LABEL_92:
              (v167)(v160, v166, v170);
              v145 = sub_268B37A34();
              v146 = sub_268B37EE4();
              if (OUTLINED_FUNCTION_19(v146))
              {
                v147 = OUTLINED_FUNCTION_14();
                OUTLINED_FUNCTION_81(v147);
                OUTLINED_FUNCTION_27();
                _os_log_impl(v148, v149, v150, v151, v152, 2u);
                OUTLINED_FUNCTION_83_0();
              }

              v153 = OUTLINED_FUNCTION_150();
              (v168)(v153);
              v144 = MEMORY[0x277D84F90];
              goto LABEL_95;
            }
          }

          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          v92 = MEMORY[0x26D625BD0](0, v8);
          goto LABEL_31;
        }

        goto LABEL_61;
      }

LABEL_86:
      v174 = v54;
      sub_268B38474();
      __break(1u);
LABEL_87:

      v133 = v169;
      goto LABEL_92;
    }

    v173 = v54;
    if (sub_2688FDC3C(&v173))
    {
      v0 = &v174;
      sub_268B38214();
      v1 = v174[2];
      sub_268B38244();
      sub_268B38254();
      v54 = sub_268B38224();
    }

    else
    {
    }

    ++v56;
  }

  OUTLINED_FUNCTION_268_0();
  if (sub_2688EFD0C())
  {
    sub_2688FE814(v168 & 1, v8);
    if ((v58 & 1) == 0)
    {
      if (qword_2802A4F30 != -1)
      {
        goto LABEL_100;
      }

      goto LABEL_24;
    }

    sub_2688FE880();
    v172();
    OUTLINED_FUNCTION_23();

    return;
  }

  v60 = sub_2688EFD0C();
  if (v60 >= 2)
  {
    sub_268903178();
    v63 = v170;
    v62 = v171;
    if (v61)
    {
      v64 = v61;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      OUTLINED_FUNCTION_82(v170, qword_2802CDA10);
      OUTLINED_FUNCTION_120();
      v65(v165);
      v66 = v64;
      v67 = sub_268B37A34();
      sub_268B37F04();

      if (OUTLINED_FUNCTION_214_0())
      {
        OUTLINED_FUNCTION_172_0();
        v68 = OUTLINED_FUNCTION_120_0();
        OUTLINED_FUNCTION_144_0(v68);
        *v165 = 136315138;
        v69 = [v66 debugDescription];
        sub_268B37BF4();
        v71 = v70;

        v72 = OUTLINED_FUNCTION_265_0();
        v74 = sub_26892CDB8(v72, v71, v73);

        *(v165 + 4) = v74;
        OUTLINED_FUNCTION_57();
        _os_log_impl(v75, v76, v77, v78, v79, 0xCu);
        OUTLINED_FUNCTION_73_0();
        OUTLINED_FUNCTION_6();
      }

      (*(v171 + 8))(v165, v170);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_268B3BBA0;
      *(v97 + 32) = v66;
      v98 = v66;
      v99 = OUTLINED_FUNCTION_137_0();
      (v172)(v99);

      goto LABEL_84;
    }

    goto LABEL_63;
  }

  if (v55 && v60 == 1)
  {
    sub_2688EFD10();
    v62 = v171;
    if (v57)
    {
      goto LABEL_103;
    }

    v92 = *(v8 + 32);
LABEL_31:
    v2 = v92;
    v93 = sub_2688F42F4(v10);
    if (!v93)
    {
LABEL_61:

      goto LABEL_62;
    }

    v56 = v93;
    v57 = sub_2688EFD0C();
    v94 = 0;
    v1 = (v56 & 0xC000000000000001);
    while (v57 != v94)
    {
      if (v1)
      {
        v95 = MEMORY[0x26D625BD0](v94, v56);
      }

      else
      {
        if (v94 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_99;
        }

        v95 = *(v56 + 8 * v94 + 32);
      }

      v0 = v95;
      if (__OFADD__(v94, 1))
      {
        goto LABEL_98;
      }

      sub_2689840D4();
      OUTLINED_FUNCTION_179_0();
      if (v96)
      {
        goto LABEL_46;
      }

      ++v94;
    }
  }

  v62 = v171;
LABEL_62:
  v63 = v170;
LABEL_63:
  if (v166)
  {
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v63, qword_2802CDA10);
    OUTLINED_FUNCTION_120();
    v110();
    v111 = sub_268B37A34();
    v112 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v112))
    {
      v113 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v113);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v114, v115, v116, v117, v118, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    (*(v62 + 8))(v163, v63);
    (v172)(MEMORY[0x277D84F90]);
    goto LABEL_84;
  }

  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v63, qword_2802CDA10);
  OUTLINED_FUNCTION_120();
  v119();
  v56 = sub_268B37A34();
  v120 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v120))
  {
    v121 = OUTLINED_FUNCTION_14();
    OUTLINED_FUNCTION_10(v121);
    OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_206_0(v122, v123, v124, v125);
    OUTLINED_FUNCTION_6();
  }

  (*(v62 + 8))(v162, v63);
  v126 = sub_2688EFD0C();
  v57 = 0;
  v1 = &unk_279C42000;
  while (1)
  {
    if (v126 == v57)
    {
      v56 = 0;
      goto LABEL_83;
    }

    if ((v164 & 0xC000000000000001) != 0)
    {
      v127 = MEMORY[0x26D625BD0](v57, v164);
    }

    else
    {
      if (v57 >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_97;
      }

      v127 = *(v164 + 8 * v57 + 32);
    }

    v56 = v127;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    [v127 proximity];
    OUTLINED_FUNCTION_179_0();
    if (v96)
    {
      if (v54)
      {
        goto LABEL_86;
      }

LABEL_83:
      type metadata accessor for GroupingUtil();
      v128 = OUTLINED_FUNCTION_129();
      v129 = sub_268A03764(v128);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v130 = swift_allocObject();
      *(v130 + 16) = xmmword_268B3BBA0;
      type metadata accessor for DeviceGroup();
      OUTLINED_FUNCTION_220();
      v131 = swift_allocObject();
      *(v131 + 16) = xmmword_268B3BBA0;
      *(v131 + 32) = v129;
      v132 = v129;
      *(v130 + 32) = sub_2689CBA40(0, 0, 5, 0, v131);
      (v172)(v130);

      goto LABEL_84;
    }

    ++v57;
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  OUTLINED_FUNCTION_0_2();
  swift_once();
LABEL_24:
  OUTLINED_FUNCTION_82(v170, qword_2802CDA10);
  (*(v171 + 16))(v167);

  v80 = sub_268B37A34();
  sub_268B37F04();

  if (OUTLINED_FUNCTION_214_0())
  {
    OUTLINED_FUNCTION_172_0();
    v81 = OUTLINED_FUNCTION_120_0();
    OUTLINED_FUNCTION_144_0(v81);
    OUTLINED_FUNCTION_134_0(4.8149e-34);
    v82 = type metadata accessor for DeviceGroup();
    v83 = MEMORY[0x26D6256F0](v56, v82);
    OUTLINED_FUNCTION_220_0(v83, v84);
    OUTLINED_FUNCTION_241();
    *(v57 + 4) = v1;
    OUTLINED_FUNCTION_57();
    _os_log_impl(v85, v86, v87, v88, v89, 0xCu);
    OUTLINED_FUNCTION_73_0();
    OUTLINED_FUNCTION_6();
  }

  v90 = OUTLINED_FUNCTION_271_0();
  v91(v90);
  (v172)(v56);

LABEL_84:
  OUTLINED_FUNCTION_23();
}

BOOL sub_2688FDC3C(id *a1)
{
  v3 = sub_268B37A54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  if ([*a1 type] == 4)
  {
    return 1;
  }

  if ([v7 type] == 5)
  {
    if (qword_2802A4F30 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_5;
  }

  v13 = sub_2689CC34C(v7);
  if (!v13)
  {
    return 1;
  }

  v3 = v13;
  v34 = v7;
  v35 = v1;
  v6 = sub_2688EFD0C();
  v4 = 0;
  v36 = v3 & 0xC000000000000001;
  while (1)
  {
    if (v6 == v4)
    {

      return 1;
    }

    if (v36)
    {
      v14 = MEMORY[0x26D625BD0](v4, v3);
    }

    else
    {
      if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v14 = *(v3 + 8 * v4 + 32);
    }

    v15 = v14;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v16 = [v14 groupLeader];
    v17 = v16;
    if (v16)
    {
      v18 = [v16 context];

      if (v18)
      {
        v17 = sub_268AE10A4(v18);
        v20 = v19;
        goto LABEL_20;
      }

      v17 = 0;
    }

    v20 = 0;
LABEL_20:
    v21 = sub_2688F3558();
    if (!v20)
    {
      if (!v22)
      {

        goto LABEL_36;
      }

LABEL_30:

      goto LABEL_31;
    }

    if (!v22)
    {
      goto LABEL_30;
    }

    if (v17 == v21 && v20 == v22)
    {

LABEL_35:

LABEL_36:
      sub_2689CB3F8(v25, v26, v27, v28, v29, v30, v31, v32, v34, v35);
      return v33 != 1;
    }

    v24 = sub_268B38444();

    if (v24)
    {
      goto LABEL_35;
    }

LABEL_31:
    ++v4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  swift_once();
LABEL_5:
  v9 = __swift_project_value_buffer(v3, qword_2802CDA10);
  (*(v4 + 16))(v6, v9, v3);
  v10 = sub_268B37A34();
  v11 = sub_268B37F04();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2688BB000, v10, v11, "User asked to control *this* and local device is an ambiguousEntity. Removing from possible destinations.", v12, 2u);
    MEMORY[0x26D6266E0](v12, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  return 0;
}

void sub_2688FDFDC()
{
  OUTLINED_FUNCTION_26();
  v54 = v0;
  v55 = v2;
  v53 = v3;
  v56 = v4;
  OUTLINED_FUNCTION_275_0();
  v5 = sub_268B37464();
  OUTLINED_FUNCTION_1();
  v60 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v58 = v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA0, &unk_268B41020);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5BA8, &qword_268B3C690);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_2(v14, v52);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_78();
  v65 = v19;
  OUTLINED_FUNCTION_9();
  v20 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_1_0();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v20, qword_2802CDA10);
  v22 = OUTLINED_FUNCTION_139();
  v23(v22);
  v24 = sub_268B37A34();
  v25 = sub_268B37F04();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = OUTLINED_FUNCTION_14();
    *v26 = 0;
    _os_log_impl(&dword_2688BB000, v24, v25, "Resolving destination groups for moveSpeaker request", v26, 2u);
    OUTLINED_FUNCTION_12();
  }

  v27 = OUTLINED_FUNCTION_189();
  v28(v27);
  v29 = *(v1 + 16);
  if (!v29)
  {
    v48 = 0;
    goto LABEL_22;
  }

  v52 = v1;
  v30 = v1 + 32;
  v63 = (v60 + 13);
  v57 = (v60 + 4);
  v62 = *MEMORY[0x277D5F870];
  ++v60;
  while (1)
  {
    sub_26890C900(v30, v66);
    __swift_project_boxed_opaque_existential_1(v66, v66[3]);
    OUTLINED_FUNCTION_129();
    v32 = v31;
    sub_268B37604();
    (*v63)(v18, v62, v5);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v5);
    v36 = *(v64 + 48);
    sub_26890C964(v32, v11, &qword_2802A5BA8, &qword_268B3C690);
    sub_26890C964(v18, &v11[v36], &qword_2802A5BA8, &qword_268B3C690);
    OUTLINED_FUNCTION_278_0(v11);
    if (v40)
    {
      break;
    }

    v39 = v61;
    sub_26890C964(v11, v61, &qword_2802A5BA8, &qword_268B3C690);
    OUTLINED_FUNCTION_278_0(&v11[v36]);
    if (v40)
    {
      v41 = OUTLINED_FUNCTION_191();
      sub_2688C058C(v41, v42, &qword_268B3C690);
      OUTLINED_FUNCTION_241_0(v32);
      (*v60)(v39, v5);
LABEL_15:
      sub_2688C058C(v11, &qword_2802A5BA0, &unk_268B41020);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      goto LABEL_17;
    }

    v43 = v58;
    (*v57)(v58, &v11[v36], v5);
    OUTLINED_FUNCTION_148_0();
    sub_26890D6F8(&qword_2802A5BB0, v44, MEMORY[0x277D5F890]);
    OUTLINED_FUNCTION_212_0();
    v59 = sub_268B37BB4();
    v45 = *v60;
    (*v60)(v43, v5);
    v46 = OUTLINED_FUNCTION_191();
    sub_2688C058C(v46, v47, &qword_268B3C690);
    OUTLINED_FUNCTION_241_0(v65);
    v45(v61, v5);
    OUTLINED_FUNCTION_241_0(v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
    if (v59)
    {
      goto LABEL_20;
    }

LABEL_17:
    v30 += 40;
    if (!--v29)
    {
      v48 = 0;
      goto LABEL_21;
    }
  }

  v37 = OUTLINED_FUNCTION_191();
  sub_2688C058C(v37, v38, &qword_268B3C690);
  OUTLINED_FUNCTION_241_0(v32);
  OUTLINED_FUNCTION_278_0(&v11[v36]);
  if (!v40)
  {
    goto LABEL_15;
  }

  sub_2688C058C(v11, &qword_2802A5BA8, &qword_268B3C690);
  __swift_destroy_boxed_opaque_existential_0Tm(v66);
LABEL_20:
  v48 = 1;
LABEL_21:
  v1 = v52;
LABEL_22:
  v49 = v54;
  v50 = swift_allocObject();
  *(v50 + 16) = v49;
  *(v50 + 24) = v48;
  v51 = v55;
  *(v50 + 32) = v53;
  *(v50 + 40) = v51;

  sub_268A04D9C(v1, v56, 0, sub_26890CA00, v50);

  OUTLINED_FUNCTION_23();
}

void sub_2688FE558()
{
  OUTLINED_FUNCTION_26();
  v21 = v1;
  v20 = v2;
  v4 = v3;
  v5 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  v25 = MEMORY[0x277D84F90];
  v12 = sub_2688EFD0C();
  v13 = 0;
  v23 = (v7 + 8);
  v24 = (v7 + 16);
  v22 = v11;
  while (v12 != v13)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x26D625BD0](v13, v4);
    }

    else
    {
      if (v13 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v14 = *(v4 + 8 * v13 + 32);
    }

    v15 = v14;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return;
    }

    if ([v14 type] == 5)
    {
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      OUTLINED_FUNCTION_82(v5, qword_2802CDA10);
      (*v24)(v11);
      v16 = sub_268B37A34();
      v17 = sub_268B37F04();
      if (OUTLINED_FUNCTION_115_0(v17))
      {
        v18 = OUTLINED_FUNCTION_14();
        *v18 = 0;
        _os_log_impl(&dword_2688BB000, v16, v0, "User asked to control *this* and local device is an ambiguousEntity. Removing from possible destinations.", v18, 2u);
        v11 = v22;
        OUTLINED_FUNCTION_12();
      }

      (*v23)(v11, v5);
    }

    else
    {
      sub_268B38214();
      v0 = *(v25 + 16);
      sub_268B38244();
      sub_268B38254();
      sub_268B38224();
    }

    ++v13;
  }

  sub_2688FE814(v20 & 1, v4);
  if (v19)
  {

    sub_2688FE880();
    v21();
  }

  else
  {
    (v21)(v25);
  }

  OUTLINED_FUNCTION_23();
}

void sub_2688FE814(char a1, unint64_t a2)
{
  if (a1)
  {
    if (a2 >> 62)
    {
      v2 = sub_268B382A4();
    }

    else
    {
      v2 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v2 >= 2)
    {
      sub_268903178();
      if (v3)
      {
      }
    }
  }
}

void sub_2688FE880()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_275_0();
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v63 - v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_78();
  v71 = v10;
  if (sub_2688EFD0C() < 2 || (sub_268903178(), (v70 = v11) == 0))
  {
    if (qword_2802A4F30 != -1)
    {
LABEL_47:
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_2802CDA10);
    v23 = OUTLINED_FUNCTION_51_0();
    v24(v23);
    v25 = sub_268B37A34();
    sub_268B37F04();
    OUTLINED_FUNCTION_149_0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_136_0(v27);
      _os_log_impl(&dword_2688BB000, v25, v0, "Cannot filter out excluded groups since superset group cannot be determined", v9, 2u);
      OUTLINED_FUNCTION_84_0();
    }

    v28 = OUTLINED_FUNCTION_189();
    v29(v28);
    goto LABEL_44;
  }

  v64 = v9;
  v65 = v4;
  v72 = MEMORY[0x277D84F90];
  v12 = sub_2688EFD0C();
  v13 = 0;
  v9 = (v1 & 0xC000000000000001);
  v14 = v1 & 0xFFFFFFFFFFFFFF8;
  v15 = v2;
  while (v12 != v13)
  {
    if (v9)
    {
      v2 = v1;
      v16 = MEMORY[0x26D625BD0](v13, v1);
    }

    else
    {
      if (v13 >= *(v14 + 16))
      {
        goto LABEL_46;
      }

      v2 = v1;
      v16 = *(v1 + 8 * v13 + 32);
    }

    v17 = v16;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v0 = sub_2689CC3AC(v16);
    v19 = v18;
    v20 = sub_2689CC3AC(v70);
    if (!v19)
    {
      if (v21)
      {
LABEL_18:

LABEL_19:
        sub_268B38214();
        v0 = *(v72 + 16);
        sub_268B38244();
        sub_268B38254();
        sub_268B38224();
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (!v21)
    {
      goto LABEL_18;
    }

    if (v0 != v20 || v19 != v21)
    {
      LOBYTE(v0) = sub_268B38444();

      if ((v0 & 1) == 0)
      {
        goto LABEL_19;
      }

LABEL_20:

      goto LABEL_22;
    }

LABEL_22:
    ++v13;
    v1 = v2;
    v2 = v15;
  }

  v30 = v72;
  v31 = sub_2688EFD0C();
  if (!v31)
  {
    goto LABEL_39;
  }

  v32 = v31;
  v63[1] = v1;
  v33 = sub_2688C063C();
  if (v32 < 1)
  {
    __break(1u);
  }

  else
  {
    v35 = v33;
    v36 = 0;
    v37 = v30 & 0xC000000000000001;
    v68 = (v65 + 8);
    v69 = v65 + 16;
    *&v34 = 138412290;
    v66 = v34;
    v67 = v30 & 0xC000000000000001;
    do
    {
      if (v37)
      {
        v38 = OUTLINED_FUNCTION_271_0();
        v39 = MEMORY[0x26D625BD0](v38);
      }

      else
      {
        v39 = *(v30 + 8 * v36 + 32);
      }

      v40 = v39;
      if (qword_2802A4F30 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      OUTLINED_FUNCTION_82(v2, qword_2802CDA10);
      v41 = OUTLINED_FUNCTION_268_0();
      v42(v41);
      v43 = v40;
      v44 = sub_268B37A34();
      v45 = sub_268B37ED4();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = OUTLINED_FUNCTION_172_0();
        v47 = v35;
        v48 = v2;
        v49 = v32;
        v50 = v30;
        v51 = swift_slowAlloc();
        *v46 = v66;
        *(v46 + 4) = v43;
        *v51 = v43;
        v52 = v43;
        _os_log_impl(&dword_2688BB000, v44, v45, "Setting excludeGroup to true for: %@", v46, 0xCu);
        sub_2688C058C(v51, &qword_2802A6420, &unk_268B3C680);
        v30 = v50;
        v32 = v49;
        v2 = v48;
        v35 = v47;
        v37 = v67;
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_84_0();
      }

      ++v36;

      (*v68)(v71, v2);
      v53 = sub_268B38054();
      [v43 setExcludeGroup_];
    }

    while (v32 != v36);
LABEL_39:

    v55 = v64;
    v54 = v65;
    if (qword_2802A4F30 != -1)
    {
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v2, qword_2802CDA10);
    OUTLINED_FUNCTION_120();
    v56(v55);

    v57 = sub_268B37A34();
    v58 = sub_268B37F04();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_172_0();
      v72 = OUTLINED_FUNCTION_173_0();
      *v59 = 136315138;
      type metadata accessor for DeviceGroup();
      OUTLINED_FUNCTION_217_0();
      v62 = sub_26892CDB8(v60, v61, &v72);

      *(v59 + 4) = v62;
      OUTLINED_FUNCTION_277_0(&dword_2688BB000, v57, v58, "containsExcludeGroups set and found a superset group. Returning all ambiguous entities with excludeGroup flag applied to smaller entities: %s", v63[0]);
      OUTLINED_FUNCTION_48_0();
      OUTLINED_FUNCTION_132_0();
    }

    (*(v54 + 8))(v55, v2);
LABEL_44:

    OUTLINED_FUNCTION_23();
  }
}

void sub_2688FEE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v24;
  a20 = v25;
  v363 = v26;
  v364 = v20;
  v368 = v27;
  v357 = v28;
  v358 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B80, &qword_268B3C678);
  OUTLINED_FUNCTION_22(v30);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v31);
  v356 = &v340 - v32;
  OUTLINED_FUNCTION_9();
  sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v360 = v34;
  v361 = v33;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_3();
  v353 = v35;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_18();
  v354 = v37;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_78();
  v362 = v39;
  OUTLINED_FUNCTION_9();
  v40 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_3();
  v359 = v44;
  OUTLINED_FUNCTION_8();
  v46 = MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_20_1(v46, v47, v48, v49, v50, v51, v52, v53, v340);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  v58 = MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_11_2(v58, v59, v60, v61, v62, v63, v64, v65, v340);
  v67 = MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_32_0(v67, v68, v69, v70, v71, v72, v73, v74, v340);
  v76 = MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_21_1(v76, v77, v78, v79, v80, v81, v82, v83, v340);
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_18();
  v352 = v85;
  OUTLINED_FUNCTION_8();
  v87 = MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_2_3(v87, v88, v89, v90, v91, v92, v93, v94, v340);
  v96 = MEMORY[0x28223BE20](v95);
  v98 = &v340 - v97;
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_274_0();
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_15();
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v40, qword_2802CDA10);
  v102 = OUTLINED_FUNCTION_139();
  v365 = v103;
  v366 = v104;
  v367 = v105;
  (v104)(v102);
  v106 = sub_268B37A34();
  v107 = sub_268B37F04();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = OUTLINED_FUNCTION_14();
    *v108 = 0;
    _os_log_impl(&dword_2688BB000, v106, v107, "Determining if we should short circuit and control the primary device immediately", v108, 2u);
    OUTLINED_FUNCTION_12();
  }

  v111 = *(v42 + 8);
  v110 = v42 + 8;
  v109 = v111;
  (v111)(v20, v40);
  v112 = sub_2688EFD0C();
  if (!v112)
  {
    OUTLINED_FUNCTION_75_0();
    v124();
    v125 = sub_268B37A34();
    v126 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v126))
    {
      v127 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v127);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v128, v129, v130, v131, v132, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    v123 = v22;
    goto LABEL_22;
  }

  v113 = v112;
  OUTLINED_FUNCTION_263_0(v364);
  OUTLINED_FUNCTION_129();
  if (sub_268B34D14())
  {
    OUTLINED_FUNCTION_75_0();
    v114();
    v115 = sub_268B37A34();
    v116 = sub_268B37EC4();
    if (OUTLINED_FUNCTION_19(v116))
    {
      v117 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v117);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v118, v119, v120, v121, v122, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    v123 = v23;
LABEL_22:
    (v109)(v123, v40);
    goto LABEL_23;
  }

  v133 = v360;
  v134 = OUTLINED_FUNCTION_267_0();
  HIDWORD(v342) = v135;
  v343 = v136;
  v344 = v137;
  v137(v134);
  v138 = OUTLINED_FUNCTION_227_0();
  v140 = sub_268920878(v138, v139);
  v141 = OUTLINED_FUNCTION_212_0();
  v346 = v133 + 8;
  v345 = v142;
  (v142)(v141);
  if (v140)
  {
    OUTLINED_FUNCTION_263_0(v364);
    OUTLINED_FUNCTION_129();
    if (sub_268B34D04())
    {
      OUTLINED_FUNCTION_75_0();
      v143();
      v144 = sub_268B37A34();
      v145 = sub_268B37EC4();
      if (OUTLINED_FUNCTION_19(v145))
      {
        v146 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v146);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v147, v148, v149, v150, v151, 2u);
        OUTLINED_FUNCTION_83_0();
      }

      v123 = v21;
      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_267_0();
  LODWORD(v342) = v152;
  OUTLINED_FUNCTION_232_0();
  v153();
  v154 = OUTLINED_FUNCTION_227_0();
  v156 = sub_268920878(v154, v155);
  OUTLINED_FUNCTION_167_0();
  (*(v157 - 256))();
  if (v156)
  {
    OUTLINED_FUNCTION_75_0();
    v158();
    v159 = sub_268B37A34();
    v160 = sub_268B37EC4();
    if (OUTLINED_FUNCTION_19(v160))
    {
      v161 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v161);
      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_206_0(v162, v163, v164, v165);
      OUTLINED_FUNCTION_6();
    }

    v123 = v98;
    goto LABEL_22;
  }

  v341 = v110;
  v166 = 0;
  v167 = v368 & 0xC000000000000001;
  v168 = v368 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v113 == v166)
    {
      v173 = v359;
      OUTLINED_FUNCTION_75_0();
      v174();
      v175 = sub_268B37A34();
      v176 = sub_268B37F04();
      if (OUTLINED_FUNCTION_19(v176))
      {
        v177 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v177);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v178, v179, v180, v181, v182, 2u);
        OUTLINED_FUNCTION_83_0();
      }

      v183 = v173;
LABEL_36:
      v184 = v40;
LABEL_37:
      (v109)(v183, v184);
      goto LABEL_23;
    }

    if (v167)
    {
      v169 = MEMORY[0x26D625BD0](v166, v368);
    }

    else
    {
      if (v166 >= *(v168 + 16))
      {
        goto LABEL_91;
      }

      v169 = *(v368 + 8 * v166 + 32);
    }

    v170 = v169;
    if (__OFADD__(v166, 1))
    {
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      v272 = v166;
      v166 = v40;
LABEL_93:

      v113(v167, v109);

LABEL_166:

LABEL_23:
      OUTLINED_FUNCTION_23();
      return;
    }

    [v169 proximity];
    OUTLINED_FUNCTION_179_0();
    if (v172)
    {
      break;
    }

    ++v166;
  }

  if (v171)
  {
    goto LABEL_181;
  }

  if (sub_2688EFD0C() == 1)
  {
    v185 = v361;
    v186 = v362;
    OUTLINED_FUNCTION_232_0();
    v187();
    v188 = sub_268920878(v363, v186);
    (v345)(v186, v185);
    if (v188)
    {
      v189 = *(v364 + 10);
      OUTLINED_FUNCTION_263_0(v364);
      OUTLINED_FUNCTION_129();
      if (sub_268B34D24())
      {
        OUTLINED_FUNCTION_145_0(&a17);
        OUTLINED_FUNCTION_75_0();
        v190();
        v191 = sub_268B37A34();
        v192 = sub_268B37F04();
        if (OUTLINED_FUNCTION_139_0(v192))
        {
          v193 = OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_10(v193);
          OUTLINED_FUNCTION_206_0(&dword_2688BB000, v191, v189, "Primary is the only context and user asked for .videoControls on HomePod. shouldControlPrimary: false.");
          OUTLINED_FUNCTION_6();
        }

        else
        {
        }

        v183 = v167;
        goto LABEL_36;
      }
    }

    v194 = v361;
    v195 = v362;
    OUTLINED_FUNCTION_232_0();
    v196();
    OUTLINED_FUNCTION_18_0();
    sub_26890D6F8(v197, v198, MEMORY[0x277D5F670]);
    v199 = sub_268B37BB4();
    (v345)(v195, v194);
    if ((v199 & 1) == 0)
    {
      v251 = v352;
      OUTLINED_FUNCTION_75_0();
      v252();
      v253 = sub_268B37A34();
      v254 = sub_268B37F04();
      if (OUTLINED_FUNCTION_19(v254))
      {
        v255 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_10(v255);
        OUTLINED_FUNCTION_72();
        OUTLINED_FUNCTION_206_0(v256, v257, v258, v259);
        OUTLINED_FUNCTION_6();
      }

      else
      {
      }

      (v109)(v251, v40);
      goto LABEL_23;
    }
  }

  if (![v170 nowPlayingState])
  {
    v213 = v355;
    v214 = v340;
    v366(v355, v365, v340);
    v215 = sub_268B37A34();
    v216 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v216))
    {
      v217 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_10(v217);
      OUTLINED_FUNCTION_72();
      OUTLINED_FUNCTION_206_0(v218, v219, v220, v221);
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }

    v183 = v213;
    v184 = v214;
    goto LABEL_37;
  }

  v200 = v361;
  v201 = *(v360 + 16);
  v202 = v356;
  v355 = v360 + 16;
  v352 = v201;
  v201(v356, v363, v361);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v203, v204, v205, v200);
  v206 = v170;
  sub_268900698(v202, v357, v358, v170, 1, v207, v208, v209, v340, v341, v342, v343, v344, v345, v346, v347, v348, v349, v350, v351);
  LOBYTE(v200) = v210;
  v359 = v206;

  v171 = sub_2688C058C(v202, &qword_2802A5B80, &qword_268B3C678);
  if ((v200 & 1) == 0)
  {
    OUTLINED_FUNCTION_228_0();
    v222();
    v223 = sub_268B37A34();
    v224 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v224))
    {
      v225 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v225);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v226, v227, v228, v229, v230, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    else
    {
    }

    v183 = OUTLINED_FUNCTION_278();
    goto LABEL_37;
  }

  v211 = 0;
  v370[0] = MEMORY[0x277D84F90];
  while (1)
  {
    if (v113 == v211)
    {
      v231 = v370[0];
      sub_268AD488C();
      sub_268AD54B8(1, v232);
      v234 = v233;
      __swift_project_boxed_opaque_existential_1(v364 + 14, *(v364 + 17));
      OUTLINED_FUNCTION_129();
      sub_2688EFD0C();

      sub_2688EFD0C();
      sub_26894AE34();
      OUTLINED_FUNCTION_228_0();
      v235();
      v236 = sub_268B37A34();
      v237 = sub_268B37F04();
      v238 = OUTLINED_FUNCTION_183_0(v237);
      v368 = v234;
      if (v238)
      {
        v239 = swift_slowAlloc();
        v358 = swift_slowAlloc();
        v370[0] = v358;
        OUTLINED_FUNCTION_175_0(4.8151e-34);
        v240 = type metadata accessor for DeviceContext();

        MEMORY[0x26D6256F0](v241, v240);
        v364 = v109;

        v242 = OUTLINED_FUNCTION_150();
        v245 = sub_26892CDB8(v242, v243, v244);

        *(v239 + 4) = v245;
        *(v239 + 12) = 2080;

        v247 = MEMORY[0x26D6256F0](v246, v240);
        v249 = v248;

        v250 = sub_26892CDB8(v247, v249, v370);
        v109 = v364;

        *(v239 + 14) = v250;
        _os_log_impl(&dword_2688BB000, v236, v237, "Pausable Contexts: %s, Resumable Contexts :%s", v239, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_83_0();
        OUTLINED_FUNCTION_138_0();
      }

      OUTLINED_FUNCTION_222_0();
      v109();
      v167 = v361;
      v260 = v352;
      v261 = v353;
      v262 = v354;
      v352(v354, v363, v361);
      v263 = (*(v360 + 88))(v262, v167);
      if (v263 == *MEMORY[0x277D5F658])
      {
        v113 = v109;
        v40 = v359;
        [v359 nowPlayingState];
        v264 = OUTLINED_FUNCTION_145_0(&a18);
        v109 = v340;
        v366(v264, v365, v340);
        v166 = sub_268B37A34();
        v265 = sub_268B37F04();
        if (!OUTLINED_FUNCTION_115_0(v265))
        {
          goto LABEL_92;
        }

        v266 = swift_slowAlloc();
        OUTLINED_FUNCTION_224_0(v266, 1.5047e-36);
        v167 = v351;
        OUTLINED_FUNCTION_57();
        _os_log_impl(v267, v268, v269, v270, v271, 0xEu);
        OUTLINED_FUNCTION_6();
        v272 = v40;
        goto LABEL_93;
      }

      if (v263 == *MEMORY[0x277D5F660])
      {
        v360 = v231;
        v370[0] = MEMORY[0x277D84F90];
        v273 = v368;
        v274 = sub_2688EFD0C();

        for (i = 0; v274 != i; ++i)
        {
          if ((v273 & 0xC000000000000001) != 0)
          {
            v171 = MEMORY[0x26D625BD0](i, v273);
          }

          else
          {
            if (i >= *((v273 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_172;
            }

            v171 = *(v273 + 8 * i + 32);
          }

          v276 = v171;
          if (__OFADD__(i, 1))
          {
            goto LABEL_171;
          }

          [v171 proximity];
          OUTLINED_FUNCTION_179_0();
          if (v172)
          {
            if (v277)
            {
              goto LABEL_182;
            }
          }

          else
          {
            sub_268B38214();
            OUTLINED_FUNCTION_261_0();
            OUTLINED_FUNCTION_278();
            sub_268B38254();
            v171 = sub_268B38224();
          }
        }

        OUTLINED_FUNCTION_268_0();
        sub_2688EFD0C();

        OUTLINED_FUNCTION_75_0();
        v287();
        v288 = sub_268B37A34();
        v289 = sub_268B37F04();
        if (OUTLINED_FUNCTION_115_0(v289))
        {
          v290 = swift_slowAlloc();
          OUTLINED_FUNCTION_224_0(v290, 1.5047e-36);
          OUTLINED_FUNCTION_57();
          _os_log_impl(v291, v292, v293, v294, v295, 0xEu);
          OUTLINED_FUNCTION_6();
          v296 = v359;
        }

        else
        {
          v296 = v288;
          v288 = v359;
        }

        v297 = OUTLINED_FUNCTION_191();
        (v109)(v297);

        goto LABEL_166;
      }

      v278 = v340;
      if (v263 != HIDWORD(v342))
      {
        if (v263 == v342)
        {

          goto LABEL_23;
        }

        if (v263 != *MEMORY[0x277D5F650])
        {
          v360 = v231;
          v315 = v347;
          OUTLINED_FUNCTION_75_0();
          v316();
          v260(v261, v363, v167);
          v317 = v315;
          v318 = sub_268B37A34();
          v319 = v260;
          v320 = sub_268B37EE4();
          if (OUTLINED_FUNCTION_183_0(v320))
          {
            OUTLINED_FUNCTION_172_0();
            v367 = OUTLINED_FUNCTION_143_0();
            v370[0] = v367;
            *v315 = 136315138;
            v319(v362, v261, v167);
            v321 = sub_268B37C24();
            v322 = v109;
            v324 = v323;
            v325 = v345;
            (v345)(v261, v361);
            v326 = sub_26892CDB8(v321, v324, v370);

            *(v317 + 1) = v326;
            v167 = v361;
            _os_log_impl(&dword_2688BB000, v318, v320, "Unknown controlType: %s, returning false", v317, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v367);
            OUTLINED_FUNCTION_83_0();
            OUTLINED_FUNCTION_138_0();

            (v322)(v347, v278);
          }

          else
          {

            OUTLINED_FUNCTION_167_0();
            v325 = *(v338 - 256);
            v325();
            v339 = OUTLINED_FUNCTION_115();
            (v109)(v339);
          }

          (v325)(v354, v167);

          goto LABEL_23;
        }
      }

      v364 = v109;
      OUTLINED_FUNCTION_267_0();
      OUTLINED_FUNCTION_232_0();
      v279();
      v280 = OUTLINED_FUNCTION_227_0();
      v282 = sub_268920878(v280, v281);
      OUTLINED_FUNCTION_167_0();
      (*(v283 - 256))();
      if (v282)
      {
        v370[0] = MEMORY[0x277D84F90];
        v284 = sub_2688EFD0C();

        for (j = 0; v284 != j; ++j)
        {
          if ((v231 & 0xC000000000000001) != 0)
          {
            v171 = MEMORY[0x26D625BD0](j, v231);
          }

          else
          {
            if (j >= *(v231 + 16))
            {
              goto LABEL_176;
            }

            v171 = *(v231 + 8 * j + 32);
          }

          v286 = v171;
          if (__OFADD__(j, 1))
          {
            goto LABEL_175;
          }

          if ([v171 nowPlayingMediaType] == 7)
          {
            sub_268B38214();
            OUTLINED_FUNCTION_261_0();
            sub_268B38254();
            v171 = sub_268B38224();
          }

          else
          {
          }
        }

        v231 = v370[0];
        OUTLINED_FUNCTION_222_0();
      }

      OUTLINED_FUNCTION_267_0();
      OUTLINED_FUNCTION_232_0();
      v298();
      v299 = OUTLINED_FUNCTION_227_0();
      v301 = sub_268920878(v299, v300);
      v302 = OUTLINED_FUNCTION_212_0();
      (v345)(v302);
      if (v301)
      {
        v360 = v231;
        v370[0] = MEMORY[0x277D84F90];
        v303 = v368;
        v304 = sub_2688EFD0C();

        v305 = 0;
        v306 = v348;
        while (v304 != v305)
        {
          if ((v303 & 0xC000000000000001) != 0)
          {
            v171 = MEMORY[0x26D625BD0](v305, v303);
          }

          else
          {
            if (v305 >= *((v303 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_178;
            }

            v171 = *(v303 + 8 * v305 + 32);
          }

          v307 = v171;
          if (__OFADD__(v305, 1))
          {
            goto LABEL_177;
          }

          if ([v171 nowPlayingMediaType] == 7)
          {
            sub_268B38214();
            OUTLINED_FUNCTION_261_0();
            OUTLINED_FUNCTION_278();
            sub_268B38254();
            v171 = sub_268B38224();
          }

          else
          {
          }

          ++v305;
        }

        swift_bridgeObjectRelease_n();
        v368 = v370[0];
        OUTLINED_FUNCTION_222_0();
        v278 = v340;
        v231 = v360;
      }

      else
      {
        v306 = v348;
      }

      v308 = sub_2688EFD0C();
      LOBYTE(m) = v231 & 0xF8;

      for (k = 0; ; ++k)
      {
        if (v308 == k)
        {

          goto LABEL_138;
        }

        if ((v231 & 0xC000000000000001) != 0)
        {
          v312 = OUTLINED_FUNCTION_231_0();
          v171 = MEMORY[0x26D625BD0](v312);
        }

        else
        {
          if (k >= *((v231 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_174;
          }

          v171 = *(v231 + 8 * k + 32);
        }

        v311 = v171;
        if (__OFADD__(k, 1))
        {
          goto LABEL_173;
        }

        [v171 proximity];
        OUTLINED_FUNCTION_179_0();
        if (v172)
        {
          break;
        }
      }

      if (v171)
      {
        goto LABEL_181;
      }

LABEL_138:
      if (sub_2688EFD0C())
      {
        v313 = 0;
        if (v308 != k)
        {
          v314 = 1;
LABEL_162:
          OUTLINED_FUNCTION_75_0();
          v332();
          v333 = sub_268B37A34();
          sub_268B37F04();
          OUTLINED_FUNCTION_149_0();
          if (os_log_type_enabled(v333, v334))
          {
            v335 = v308 != k;
            v336 = swift_slowAlloc();
            *v336 = 67109632;
            *(v336 + 4) = v335;
            *(v336 + 8) = 1024;
            *(v336 + 10) = v313;
            *(v336 + 14) = 1024;
            *(v336 + 16) = v314;
            _os_log_impl(&dword_2688BB000, v333, m, ".any request and primary is playing something == %{BOOL}d, nothing else is playing and primary is the only resumable == %{BOOL}d. shouldControlPrimary: %{BOOL}d", v336, 0x14u);
            OUTLINED_FUNCTION_83_0();
            v337 = v359;
          }

          else
          {
            v337 = v333;
            v333 = v359;
          }

          (v364)(v306, v278);

          goto LABEL_166;
        }
      }

      else
      {
        v360 = v231;
        v370[0] = MEMORY[0x277D84F90];
        v327 = v368;
        v328 = sub_2688EFD0C();
        v329 = v327 & 0xC000000000000001;
        v330 = v327 & 0xFFFFFFFFFFFFFF8;

        for (m = 0; v328 != m; ++m)
        {
          if (v329)
          {
            v171 = MEMORY[0x26D625BD0](m, v368);
          }

          else
          {
            if (m >= *(v330 + 16))
            {
              goto LABEL_180;
            }

            v171 = *(v368 + 8 * m + 32);
          }

          v331 = v171;
          if (__OFADD__(m, 1))
          {
            goto LABEL_179;
          }

          [v171 proximity];
          OUTLINED_FUNCTION_179_0();
          if (v172)
          {
            if (v277)
            {
LABEL_182:
              v369 = v277;
              goto LABEL_183;
            }
          }

          else
          {
            v327 = v370;
            sub_268B38214();
            sub_268B38244();
            v278 = v340;
            sub_268B38254();
            v171 = sub_268B38224();
          }
        }

        OUTLINED_FUNCTION_268_0();
        sub_2688EFD0C();
        OUTLINED_FUNCTION_129();

        v313 = v327 == 0;
        if (v308 != k)
        {
          v314 = 1;
          OUTLINED_FUNCTION_222_0();
          goto LABEL_162;
        }

        OUTLINED_FUNCTION_222_0();
      }

      v314 = v313;
      goto LABEL_162;
    }

    if (v167)
    {
      v171 = MEMORY[0x26D625BD0](v211, v368);
    }

    else
    {
      if (v211 >= *(v168 + 16))
      {
        goto LABEL_170;
      }

      v171 = *(v368 + 8 * v211 + 32);
    }

    v212 = v171;
    if (__OFADD__(v211, 1))
    {
      break;
    }

    if ([v171 nowPlayingState] == 1)
    {
      sub_268B38214();
      sub_268B38244();
      OUTLINED_FUNCTION_152_0();
      sub_268B38254();
      v171 = sub_268B38224();
    }

    else
    {
    }

    ++v211;
  }

  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  v370[0] = v171;
LABEL_183:
  sub_268B38474();
  __break(1u);
}

void sub_268900698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v22;
  a20 = v23;
  v321 = v20;
  v304 = v24;
  v336 = v25;
  v319 = v26;
  v28 = v27;
  v30 = v29;
  v334 = sub_268B36C04();
  OUTLINED_FUNCTION_1();
  v337 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2();
  v320 = v33;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B78, &qword_268B3C670);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  v37 = MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_20_1(v37, v38, v39, v40, v41, v42, v43, v44, v300);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_78();
  v333 = v46;
  OUTLINED_FUNCTION_9();
  v47 = sub_268B371E4();
  OUTLINED_FUNCTION_1();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v52);
  v54 = &v300 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A5B80, &qword_268B3C678);
  v56 = OUTLINED_FUNCTION_22(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_18();
  v324 = v62;
  OUTLINED_FUNCTION_8();
  v64 = MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_2_3(v64, v65, v66, v67, v68, v69, v70, v71, v300);
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_18();
  v330 = v73;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_218_0();
  v76 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v78 = v77;
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21_0();
  MEMORY[0x28223BE20](v87);
  v89 = &v300 - v88;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v76, qword_2802CDA10);
  v90 = *(v78 + 16);
  v326 = v91;
  v327 = v90;
  v328 = v78 + 16;
  (v90)(v89);
  v332 = v30;
  sub_26890C964(v30, v21, &qword_2802A5B80, &qword_268B3C678);
  v92 = *(v49 + 16);
  v313 = v28;
  v306 = v49 + 16;
  v305 = v92;
  v92(v54, v28, v47);
  v93 = v76;
  v94 = v49;
  v95 = v336;
  v96 = sub_268B37A34();
  v97 = sub_268B37F04();
  v335 = v95;

  LODWORD(v329) = v97;
  v98 = os_log_type_enabled(v96, v97);
  v322 = v94;
  v323 = v47;
  v331 = v78;
  if (v98)
  {
    v302 = v96;
    v303 = v93;
    v99 = swift_slowAlloc();
    v301 = swift_slowAlloc();
    v340[0] = v301;
    *v99 = 136446978;
    v100 = v317;
    sub_26890C964(v21, v317, &qword_2802A5B80, &qword_268B3C678);
    if (__swift_getEnumTagSinglePayload(v100, 1, v334) == 1)
    {
      sub_2688C058C(v100, &qword_2802A5B80, &qword_268B3C678);
      v101 = 0xE300000000000000;
    }

    else
    {
      sub_268B36BF4();
      v101 = v107;
      OUTLINED_FUNCTION_273_0();
      v108 = OUTLINED_FUNCTION_0_1();
      v109(v108);
    }

    v110 = v323;
    v103 = v332;
    v111 = v89;
    sub_2688C058C(v21, &qword_2802A5B80, &qword_268B3C678);
    v112 = OUTLINED_FUNCTION_265_0();
    v114 = sub_26892CDB8(v112, v101, v113);

    *(v99 + 4) = v114;
    *(v99 + 12) = 2082;
    OUTLINED_FUNCTION_74_0();
    sub_26890D6F8(v115, v116, MEMORY[0x277D5F808]);
    sub_268B38404();
    v317 = *(v322 + 8);
    v317(v54, v110);
    v117 = OUTLINED_FUNCTION_138();
    v120 = sub_26892CDB8(v117, v118, v119);

    *(v99 + 14) = v120;
    *(v99 + 22) = 2082;
    v121 = NLMediaType.description.getter(v319);
    v123 = sub_26892CDB8(v121, v122, v340);

    *(v99 + 24) = v123;
    *(v99 + 32) = 2080;
    v104 = v333;
    if (v336)
    {
      v124 = [v335 description];
      sub_268B37BF4();
      v126 = v125;
    }

    else
    {
      v126 = 0xE300000000000000;
    }

    v127 = v303;
    v106 = v334;
    v128 = OUTLINED_FUNCTION_265_0();
    v130 = sub_26892CDB8(v128, v126, v129);

    *(v99 + 34) = v130;
    v131 = v302;
    _os_log_impl(&dword_2688BB000, v302, v329, "Deciding wether the primary is an acceptable candidate for controls using controlType: %{public}s, deviceType: %{public}s, mediaTypeFilter: %{public}s and primaryContext: %s", v99, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_83_0();
    OUTLINED_FUNCTION_132_0();

    v132 = v111;
    v102 = v127;
    v329 = *(v331 + 8);
    v329(v132, v127);
    v105 = v330;
  }

  else
  {

    v317 = *(v94 + 8);
    v317(v54, v47);
    sub_2688C058C(v21, &qword_2802A5B80, &qword_268B3C678);
    v329 = *(v78 + 8);
    v329(v89, v93);
    v102 = v93;
    v103 = v332;
    v104 = v333;
    v105 = v330;
    v106 = v334;
  }

  v133 = *MEMORY[0x277D5F648];
  v134 = *(v337 + 104);
  v333 = v337 + 104;
  v334 = v134;
  v134(v105, v133, v106);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_276_0(v135, v136, v137);
  v139 = *(v138 + 48);
  sub_26890C964(v103, v104, &qword_2802A5B80, &qword_268B3C678);
  sub_26890C964(v105, v104 + v139, &qword_2802A5B80, &qword_268B3C678);
  OUTLINED_FUNCTION_54_0(v104);
  v140 = v324;
  if (!v143)
  {
    sub_26890C964(v104, v318, &qword_2802A5B80, &qword_268B3C678);
    OUTLINED_FUNCTION_54_0(v104 + v139);
    if (!v143)
    {
      v146 = v337;
      v147 = v320;
      (*(v337 + 32))(v320, v104 + v139, v106);
      OUTLINED_FUNCTION_18_0();
      sub_26890D6F8(v148, v149, MEMORY[0x277D5F670]);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_223_0();
      v150 = sub_268B37BB4();
      v139 = v104;
      v151 = *(v146 + 8);
      (v151)(v147, v106);
      sub_2688C058C(v330, &qword_2802A5B80, &qword_268B3C678);
      v152 = OUTLINED_FUNCTION_213_0();
      v151(v152);
      v103 = v332;
      v141 = v102;
      v153 = OUTLINED_FUNCTION_153_0();
      sub_2688C058C(v153, v154, &qword_268B3C678);
      v142 = v325;
      if ((v150 & 1) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    sub_2688C058C(v330, &qword_2802A5B80, &qword_268B3C678);
    OUTLINED_FUNCTION_273_0();
    v144 = OUTLINED_FUNCTION_213_0();
    v145(v144);
    v141 = v102;
LABEL_20:
    sub_2688C058C(v104, &qword_2802A5B78, &qword_268B3C670);
    v142 = v325;
    goto LABEL_23;
  }

  sub_2688C058C(v105, &qword_2802A5B80, &qword_268B3C678);
  OUTLINED_FUNCTION_54_0(v104 + v139);
  v141 = v102;
  if (!v143)
  {
    goto LABEL_20;
  }

  sub_2688C058C(v104, &qword_2802A5B80, &qword_268B3C678);
  v142 = v325;
LABEL_22:
  OUTLINED_FUNCTION_263_0(v321);
  OUTLINED_FUNCTION_129();
  if ((sub_268B34D04() & 1) == 0)
  {
    v199 = OUTLINED_FUNCTION_56(&v337);
    v200(v199);
    v194 = sub_268B37A34();
    v201 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v201))
    {
LABEL_49:
      v202 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v202);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v203, v204, v205, v206, v207, 2u);
      OUTLINED_FUNCTION_83_0();
    }

LABEL_50:

LABEL_51:
    OUTLINED_FUNCTION_221_0();
    v329(v139, v141);
    goto LABEL_79;
  }

LABEL_23:
  v334(v140, *MEMORY[0x277D5F640], v106);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_276_0(v155, v156, v157);
  v159 = *(v158 + 48);
  OUTLINED_FUNCTION_262_0(v103, v142);
  OUTLINED_FUNCTION_262_0(v140, v142 + v159);
  OUTLINED_FUNCTION_54_0(v142);
  if (!v143)
  {
    v160 = v314;
    sub_26890C964(v142, v314, &qword_2802A5B80, &qword_268B3C678);
    OUTLINED_FUNCTION_54_0(v142 + v159);
    if (!v161)
    {
      v163 = v337;
      (*(v337 + 32))(v320, v142 + v159, v106);
      OUTLINED_FUNCTION_18_0();
      sub_26890D6F8(v164, v165, MEMORY[0x277D5F670]);
      OUTLINED_FUNCTION_223_0();
      v166 = sub_268B37BB4();
      v167 = *(v163 + 8);
      v139 = v163 + 8;
      v168 = OUTLINED_FUNCTION_213_0();
      v167(v168);
      OUTLINED_FUNCTION_135_0();
      sub_2688C058C(v169, v170, v171);
      (v167)(v160, v106);
      v103 = v332;
      OUTLINED_FUNCTION_135_0();
      sub_2688C058C(v172, v173, v174);
      if ((v166 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }

    sub_2688C058C(v140, &qword_2802A5B80, &qword_268B3C678);
    OUTLINED_FUNCTION_273_0();
    v162(v160, v106);
LABEL_31:
    sub_2688C058C(v142, &qword_2802A5B78, &qword_268B3C670);
    goto LABEL_37;
  }

  sub_2688C058C(v140, &qword_2802A5B80, &qword_268B3C678);
  OUTLINED_FUNCTION_54_0(v142 + v159);
  if (!v143)
  {
    goto LABEL_31;
  }

  sub_2688C058C(v142, &qword_2802A5B80, &qword_268B3C678);
LABEL_33:
  OUTLINED_FUNCTION_263_0(v321);
  OUTLINED_FUNCTION_129();
  if (sub_268B34D24())
  {
    v175 = OUTLINED_FUNCTION_56(&v335);
    v176(v175);
    v177 = sub_268B37A34();
    v178 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v178))
    {
      v179 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v179);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v180, v181, v182, v183, v184, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    goto LABEL_77;
  }

LABEL_37:
  if (!v336)
  {
    v192 = OUTLINED_FUNCTION_56(&v339);
    v193(v192);
    v194 = sub_268B37A34();
    v195 = sub_268B37EE4();
    if (OUTLINED_FUNCTION_19(v195))
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

  v185 = v315;
  v334(v315, *MEMORY[0x277D5F658], v106);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_276_0(v186, v187, v188);
  v190 = *(v189 + 48);
  v139 = v316;
  OUTLINED_FUNCTION_262_0(v103, v316);
  OUTLINED_FUNCTION_262_0(v185, v139 + v190);
  if (__swift_getEnumTagSinglePayload(v139, 1, v106) == 1)
  {
    v191 = v335;
    sub_2688C058C(v185, &qword_2802A5B80, &qword_268B3C678);
    OUTLINED_FUNCTION_54_0(v139 + v190);
    if (!v143)
    {
      goto LABEL_47;
    }

    sub_2688C058C(v139, &qword_2802A5B80, &qword_268B3C678);
LABEL_53:
    if ([v335 nowPlayingState] != 1)
    {
      v278 = OUTLINED_FUNCTION_56(&v330);
      v279(v278);
      v249 = sub_268B37A34();
      v280 = sub_268B37F04();
      if (OUTLINED_FUNCTION_19(v280))
      {
LABEL_75:
        v281 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v281);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v282, v283, v284, v285, v286, 2u);
        OUTLINED_FUNCTION_83_0();
      }

LABEL_76:

LABEL_77:
      OUTLINED_FUNCTION_221_0();
      v277 = v139;
LABEL_78:
      v329(v277, v141);
      goto LABEL_79;
    }

    goto LABEL_54;
  }

  v196 = v310;
  sub_26890C964(v139, v310, &qword_2802A5B80, &qword_268B3C678);
  OUTLINED_FUNCTION_54_0(v139 + v190);
  if (v143)
  {
    v197 = v335;
    sub_2688C058C(v185, &qword_2802A5B80, &qword_268B3C678);
    OUTLINED_FUNCTION_273_0();
    v198(v196, v106);
LABEL_47:
    sub_2688C058C(v139, &qword_2802A5B78, &qword_268B3C670);
    goto LABEL_54;
  }

  v208 = OUTLINED_FUNCTION_185_0();
  v209(v208);
  OUTLINED_FUNCTION_18_0();
  sub_26890D6F8(v210, v211, MEMORY[0x277D5F670]);
  v142 = v139;
  v212 = v335;
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_223_0();
  v213 = sub_268B37BB4();
  v139 = v141;
  v214 = *(v103 + 8);
  v215 = OUTLINED_FUNCTION_213_0();
  v214(v215);
  OUTLINED_FUNCTION_135_0();
  sub_2688C058C(v216, v217, v218);
  (v214)(v310, v106);
  v103 = v332;
  OUTLINED_FUNCTION_135_0();
  sub_2688C058C(v219, v220, v221);
  if (v213)
  {
    goto LABEL_53;
  }

LABEL_54:
  v222 = OUTLINED_FUNCTION_145_0(&a9);
  (v334)(v222);
  OUTLINED_FUNCTION_84();
  OUTLINED_FUNCTION_276_0(v223, v224, v225);
  v227 = *(v226 + 48);
  v139 = v311;
  OUTLINED_FUNCTION_262_0(v103, v311);
  OUTLINED_FUNCTION_262_0(v142, v139 + v227);
  OUTLINED_FUNCTION_54_0(v139);
  if (!v143)
  {
    v230 = v307;
    sub_26890C964(v139, v307, &qword_2802A5B80, &qword_268B3C678);
    OUTLINED_FUNCTION_54_0(v139 + v227);
    if (!v231)
    {
      v234 = OUTLINED_FUNCTION_185_0();
      v235(v234);
      OUTLINED_FUNCTION_18_0();
      sub_26890D6F8(v236, v237, MEMORY[0x277D5F670]);
      OUTLINED_FUNCTION_223_0();
      v238 = sub_268B37BB4();
      v239 = *(v103 + 8);
      v240 = OUTLINED_FUNCTION_213_0();
      v239(v240);
      OUTLINED_FUNCTION_135_0();
      sub_2688C058C(v241, v242, v243);
      (v239)(v230, v106);
      OUTLINED_FUNCTION_135_0();
      sub_2688C058C(v244, v245, v246);
      v229 = v313;
      v228 = v312;
      if ((v238 & 1) == 0)
      {
        goto LABEL_67;
      }

      goto LABEL_64;
    }

    sub_2688C058C(v142, &qword_2802A5B80, &qword_268B3C678);
    v232 = OUTLINED_FUNCTION_191();
    v233(v232);
    v228 = v312;
LABEL_62:
    sub_2688C058C(v139, &qword_2802A5B78, &qword_268B3C670);
    v229 = v313;
    goto LABEL_67;
  }

  sub_2688C058C(v142, &qword_2802A5B80, &qword_268B3C678);
  OUTLINED_FUNCTION_54_0(v139 + v227);
  v228 = v312;
  if (!v143)
  {
    goto LABEL_62;
  }

  sub_2688C058C(v139, &qword_2802A5B80, &qword_268B3C678);
  v229 = v313;
LABEL_64:
  if ([v335 nowPlayingState] == 1)
  {
    v247 = OUTLINED_FUNCTION_56(&v329);
    v248(v247);
    v249 = sub_268B37A34();
    v250 = sub_268B37F04();
    if (OUTLINED_FUNCTION_19(v250))
    {
      goto LABEL_75;
    }

    goto LABEL_76;
  }

LABEL_67:
  v139 = v309;
  sub_268B37164();
  OUTLINED_FUNCTION_74_0();
  sub_26890D6F8(v251, v252, MEMORY[0x277D5F7F8]);
  v253 = v323;
  sub_268B37CA4();
  v254 = v139;
  sub_268B37CA4();
  OUTLINED_FUNCTION_219_0();
  v255();
  if (v340[0] != v339)
  {
    v267 = OUTLINED_FUNCTION_109(&v338);
    v327(v267, v326, v141);
    v305(v228, v229, v253);
    v268 = sub_268B37A34();
    v269 = sub_268B37F04();
    if (OUTLINED_FUNCTION_183_0(v269))
    {
      OUTLINED_FUNCTION_172_0();
      v270 = OUTLINED_FUNCTION_118_0();
      OUTLINED_FUNCTION_144_0(v270);
      *v229 = 136315138;
      OUTLINED_FUNCTION_74_0();
      sub_26890D6F8(v271, v272, MEMORY[0x277D5F808]);
      v273 = sub_268B38404();
      v275 = v274;
      OUTLINED_FUNCTION_219_0();
      v276();
      sub_26892CDB8(v273, v275, v340);
      OUTLINED_FUNCTION_226();

      *(v229 + 4) = v228;
      _os_log_impl(&dword_2688BB000, v268, v269, "A deviceType: %s is specified. Cannot assume that the primary matches that device type. Primary is NOT a valid fallback", v229, 0xCu);
      OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_83_0();

      OUTLINED_FUNCTION_221_0();
      v277 = v308;
    }

    else
    {

      OUTLINED_FUNCTION_219_0();
      v287();
      OUTLINED_FUNCTION_221_0();
      v277 = v254;
    }

    goto LABEL_78;
  }

  if (!v319)
  {
    v288 = OUTLINED_FUNCTION_56(&v328);
    v289(v288);
    v290 = sub_268B37A34();
    v291 = sub_268B37F04();
    v292 = OUTLINED_FUNCTION_19(v291);
    v293 = v335;
    if (v292)
    {
      v294 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_81(v294);
      OUTLINED_FUNCTION_27();
      _os_log_impl(v295, v296, v297, v298, v299, 2u);
      OUTLINED_FUNCTION_83_0();
    }

    goto LABEL_51;
  }

  v256 = v335;
  v257 = sub_268A514F4(v319, 1, v304 & 1);
  v258 = OUTLINED_FUNCTION_145_0(&v331);
  v327(v258, v326, v141);
  v259 = sub_268B37A34();
  v260 = sub_268B37F04();
  if (OUTLINED_FUNCTION_115_0(v260))
  {
    v261 = swift_slowAlloc();
    *v261 = 67109376;
    *(v261 + 4) = v257 & 1;
    *(v261 + 8) = 1024;
    *(v261 + 10) = v257 & 1;
    OUTLINED_FUNCTION_57();
    _os_log_impl(v262, v263, v264, v265, v266, 0xEu);
    OUTLINED_FUNCTION_6();
  }

  OUTLINED_FUNCTION_221_0();
  v329(v228, v141);
LABEL_79:
  OUTLINED_FUNCTION_23();
}

void sub_268901DA4(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_2688EFD0C();
    for (i = 0; ; ++i)
    {
      if (v2 == i)
      {
        sub_2688EFD0C();
        OUTLINED_FUNCTION_129();

        return;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = OUTLINED_FUNCTION_153_0();
        v4 = MEMORY[0x26D625BD0](v9);
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v4 = *(a1 + 8 * i + 32);
      }

      v5 = v4;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v6 = [v4 context];
      if (v6 && (v7 = v6, v8 = [v6 nowPlayingState], v7, !v8))
      {
        sub_268B38214();
        sub_268B38244();
        OUTLINED_FUNCTION_150();
        sub_268B38254();
        sub_268B38224();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

void sub_268901EE8()
{
  OUTLINED_FUNCTION_26();
  v46 = v3;
  OUTLINED_FUNCTION_275_0();
  v4 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_137();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  v44 = v9;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_78();
  v47 = v11;
  if (qword_2802A4F30 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v4, qword_2802CDA10);
  v12 = *(v6 + 16);
  v45 = v13;
  (v12)(v47);

  v14 = sub_268B37A34();
  v15 = sub_268B37F04();
  if (os_log_type_enabled(v14, v15))
  {
    swift_slowAlloc();
    v49 = OUTLINED_FUNCTION_123_0();
    *v2 = 134218242;
    *(v2 + 4) = sub_2688EFD0C();

    *(v2 + 12) = 2082;
    v16 = NLMediaType.description.getter(v46);
    v18 = v1;
    v19 = v6;
    v20 = v4;
    v21 = sub_26892CDB8(v16, v17, &v49);

    *(v2 + 14) = v21;
    v4 = v20;
    v6 = v19;
    v1 = v18;
    _os_log_impl(&dword_2688BB000, v14, v15, "Filtering %ld device(s) using mediaTypeFilter %{public}s", v2, 0x16u);
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();
  }

  else
  {
  }

  v22 = *(v6 + 8);
  v22(v47, v4);
  v23 = sub_268902304(v46, 1, v1);
  v24 = sub_2688EFD0C();
  if (v24 != sub_2688EFD0C())
  {
    (v12)(v44, v45, v4);

    v36 = sub_268B37A34();
    v37 = sub_268B37F04();

    if (OUTLINED_FUNCTION_214_0())
    {
      v48 = v4;
      v38 = OUTLINED_FUNCTION_172_0();
      v49 = OUTLINED_FUNCTION_173_0();
      *v38 = 136315138;
      v39 = type metadata accessor for Device();
      v40 = MEMORY[0x26D6256F0](v23, v39);
      v42 = sub_26892CDB8(v40, v41, &v49);

      *(v38 + 4) = v42;
      _os_log_impl(&dword_2688BB000, v36, v37, "Devices after mediaType filtration: %s", v38, 0xCu);
      OUTLINED_FUNCTION_79_0();
      OUTLINED_FUNCTION_12();

      v35 = v44;
      goto LABEL_11;
    }

    v35 = v44;
LABEL_14:
    v43 = v4;
    goto LABEL_15;
  }

  (v12)(v0, v45, v4);
  v25 = sub_268B37A34();
  v26 = sub_268B37F04();
  if (!OUTLINED_FUNCTION_139_0(v26))
  {

    v35 = v0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_172_0();
  v48 = v4;
  v49 = OUTLINED_FUNCTION_118_0();
  *v12 = 136315138;
  v27 = NLMediaType.description.getter(v46);
  v29 = sub_26892CDB8(v27, v28, &v49);

  *(v12 + 4) = v29;
  OUTLINED_FUNCTION_76_0();
  _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_83_0();

  v35 = v0;
LABEL_11:
  v43 = v48;
LABEL_15:
  v22(v35, v43);
  OUTLINED_FUNCTION_23();
}

void *sub_268902304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268B37A54();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v44 - v11);
  v49 = a1;
  if (!a1 || NLMediaType.isAmbiguous()())
  {
    if (qword_2802A4F30 != -1)
    {
      goto LABEL_29;
    }

    goto LABEL_4;
  }

  v56 = MEMORY[0x277D84F90];
  v22 = sub_2688EFD0C();
  v23 = 0;
  v53 = a3 & 0xC000000000000001;
  v54 = v22;
  v50 = (v7 + 16);
  v51 = (v7 + 8);
  v52 = a3 & 0xFFFFFFFFFFFFFF8;
  *&v24 = 136315138;
  v46 = v24;
  v47 = a3;
  v48 = v6;
  v45 = v10;
  while (1)
  {
    if (v54 == v23)
    {
      return v56;
    }

    if (v53)
    {
      v25 = MEMORY[0x26D625BD0](v23, a3);
    }

    else
    {
      if (v23 >= *(v52 + 16))
      {
        goto LABEL_28;
      }

      v25 = *(a3 + 8 * v23 + 32);
    }

    v26 = v25;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    v27 = [v25 context];
    if (v27)
    {
      v12 = v27;
      v28 = sub_268A514F4(a1, 1, a2 & 1);

      if ((v28 & 1) == 0)
      {

        goto LABEL_23;
      }
    }

    else
    {
      if (qword_2802A4F30 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(v6, qword_2802CDA10);
      (*v50)(v10, v29, v6);
      v30 = v26;
      v31 = sub_268B37A34();
      v32 = v10;
      v33 = sub_268B37EC4();

      if (os_log_type_enabled(v31, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v55 = v35;
        *v34 = v46;
        v36 = [v30 description];
        v37 = sub_268B37BF4();
        v38 = a2;
        v40 = v39;

        v41 = sub_26892CDB8(v37, v40, &v55);
        a2 = v38;

        *(v34 + 4) = v41;
        a3 = v47;
        v6 = v48;
        _os_log_impl(&dword_2688BB000, v31, v33, "Found no context for item: %s, filtering skipped for this item.", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        MEMORY[0x26D6266E0](v35, -1, -1);
        v42 = v34;
        a1 = v49;
        MEMORY[0x26D6266E0](v42, -1, -1);

        v10 = v45;
        (*v51)(v45, v6);
      }

      else
      {

        (*v51)(v32, v6);
        v10 = v32;
      }
    }

    v12 = &v56;
    sub_268B38214();
    v7 = v56[2];
    sub_268B38244();
    sub_268B38254();
    sub_268B38224();
LABEL_23:
    ++v23;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  swift_once();
LABEL_4:
  v13 = __swift_project_value_buffer(v6, qword_2802CDA10);
  (*(v7 + 16))(v12, v13, v6);
  v14 = sub_268B37A34();
  v15 = sub_268B37EC4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v6;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v56 = v18;
    *v17 = 136446210;
    v19 = NLMediaType.description.getter(v49);
    v21 = sub_26892CDB8(v19, v20, &v56);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_2688BB000, v14, v15, "mediaType: %{public}s is ambiguous or unspecified, filtering skipped.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    MEMORY[0x26D6266E0](v18, -1, -1);
    MEMORY[0x26D6266E0](v17, -1, -1);

    (*(v7 + 8))(v12, v16);
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  return a3;
}

void sub_26890282C()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_182_0();
  v5 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  if (v0 && !NLMediaType.isAmbiguous()())
  {
    v22 = MEMORY[0x277D84F90];
    v5 = sub_2688EFD0C();
    for (i = 0; v5 != i; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x26D625BD0](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v19 = *(v2 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v20 = v19;
      v21 = sub_268A514F4(v0, 1, v4 & 1);

      if (v21)
      {
        sub_268B38214();
        sub_268B38244();
        sub_268B38254();
        sub_268B38224();
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_2802A4F30 != -1)
    {
LABEL_21:
      OUTLINED_FUNCTION_0_2();
      swift_once();
    }

    OUTLINED_FUNCTION_82(v5, qword_2802CDA10);
    v7 = OUTLINED_FUNCTION_139();
    v8(v7);
    v9 = sub_268B37A34();
    v10 = sub_268B37EC4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_172_0();
      v12 = OUTLINED_FUNCTION_173_0();
      v22 = v12;
      *v11 = 136446210;
      v13 = NLMediaType.description.getter(v0);
      v15 = sub_26892CDB8(v13, v14, &v22);

      *(v11 + 4) = v15;
      OUTLINED_FUNCTION_277_0(&dword_2688BB000, v9, v10, "mediaType: %{public}s is ambiguous or unspecified, filtering skipped.");
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
      OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_132_0();
    }

    v16 = OUTLINED_FUNCTION_138();
    v17(v16);
  }

  OUTLINED_FUNCTION_23();
}

void sub_268902AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_26();
  a19 = v21;
  a20 = v22;
  v87 = v23;
  v25 = v24;
  v86 = sub_268B371E4();
  OUTLINED_FUNCTION_1();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2();
  v85 = v29;
  OUTLINED_FUNCTION_9();
  v30 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_1_0();
  v36 = v35 - v34;
  v37 = sub_268B37594();
  OUTLINED_FUNCTION_1();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_3();
  v93 = v41;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_18();
  v92 = v43;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_218_0();
  if (v25 >> 62)
  {
LABEL_49:
    v45 = sub_268B382A4();
  }

  else
  {
    v45 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v91 = v45;
  if (!v45)
  {
    goto LABEL_45;
  }

  v82 = v30;
  v30 = 0;
  v94 = v25 & 0xC000000000000001;
  v88 = v25 + 32;
  v89 = v25 & 0xFFFFFFFFFFFFFF8;
  v81 = (v32 + 16);
  v84 = (v27 + 16);
  v97 = MEMORY[0x277D84F90];
  v80 = 136315138;
  v96 = v37;
  v32 = v45;
  v90 = v25;
  v83 = v36;
LABEL_5:
  if (v94)
  {
    v46 = OUTLINED_FUNCTION_178_0();
    v47 = MEMORY[0x26D625BD0](v46);
  }

  else
  {
    if (v30 >= *(v89 + 16))
    {
      goto LABEL_48;
    }

    v47 = *(v88 + 8 * v30);
  }

  v48 = v47;
  if (__OFADD__(v30++, 1))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v95 = v30;
  sub_268A52360(v47);
  if (!v50)
  {
    goto LABEL_33;
  }

  [v48 proximity];
  OUTLINED_FUNCTION_179_0();
  if (!v52)
  {
    v32 = *(v97 + 16);
    if (!v32)
    {
LABEL_27:
      sub_268B37584();
      sub_268A52360(v48);
      sub_268B37544();
      (*v84)(v85, v87, v86);
      sub_268B374F4();
      OUTLINED_FUNCTION_135_0();
      v65();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_169_0();
        sub_268987BAC();
        v97 = v78;
      }

      v25 = v90;
      v32 = v91;
      v66 = *(v97 + 16);
      v27 = v66 + 1;
      if (v66 >= *(v97 + 24) >> 1)
      {
        sub_268987BAC();
        v97 = v79;
      }

      (*(v39 + 8))(v92, v96);
      *(v97 + 16) = v27;
      v67 = v97 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v66;
      v37 = v96;
      (*(v39 + 32))(v67, v93, v96);
      goto LABEL_44;
    }

    v25 = 0;
    v53 = v97 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    while (1)
    {
      if (v25 >= *(v97 + 16))
      {
        __break(1u);
        goto LABEL_47;
      }

      (*(v39 + 16))(v20, v53 + *(v39 + 72) * v25, v37);
      v36 = sub_268B37534();
      v30 = v37;
      v55 = v54;
      v56 = sub_268A52360(v48);
      v27 = v57;
      if (v55)
      {
        if (v57)
        {
          if (v36 == v56 && v55 == v57)
          {

            (*(v39 + 8))(v20, v96);
LABEL_35:
            if (qword_2802A4F30 != -1)
            {
              OUTLINED_FUNCTION_0_2();
              swift_once();
            }

            OUTLINED_FUNCTION_82(v82, qword_2802CDA10);
            v36 = v83;
            (*v81)(v83);
            v68 = v48;
            v27 = v83;
            v69 = sub_268B37A34();
            v70 = sub_268B37EE4();

            v25 = v90;
            if (os_log_type_enabled(v69, v70))
            {
              v71 = OUTLINED_FUNCTION_172_0();
              v98 = OUTLINED_FUNCTION_173_0();
              *v71 = v80;
              v72 = sub_268A52360(v68);
              if (v73)
              {
                v74 = v73;
              }

              else
              {
                v72 = 0x296C696E28;
                v74 = 0xE500000000000000;
              }

              v27 = sub_26892CDB8(v72, v74, &v98);

              *(v71 + 4) = v27;
              OUTLINED_FUNCTION_277_0(&dword_2688BB000, v69, v70, "Predicates already contain condition with routeId: %s, a duplicate will not be added.", v80);
              v75 = OUTLINED_FUNCTION_109(&a17);
              __swift_destroy_boxed_opaque_existential_0Tm(v75);
              OUTLINED_FUNCTION_138_0();
              v36 = v83;
              OUTLINED_FUNCTION_12();
            }

            else
            {
            }

            v76 = OUTLINED_FUNCTION_150();
            v77(v76);
            v37 = v96;
            v32 = v91;
LABEL_44:
            v30 = v95;
            if (v95 == v32)
            {
LABEL_45:
              OUTLINED_FUNCTION_23();
              return;
            }

            goto LABEL_5;
          }

          v36 = sub_268B38444();

          v37 = v96;
          v59 = OUTLINED_FUNCTION_152_0();
          v60(v59);
          if (v36)
          {
            goto LABEL_35;
          }
        }

        else
        {

          v37 = v96;
          v63 = OUTLINED_FUNCTION_152_0();
          v64(v63);
        }
      }

      else
      {
        v61 = OUTLINED_FUNCTION_153_0();
        v62(v61);
        if (!v27)
        {
          goto LABEL_35;
        }

        v37 = v30;
      }

      if (v32 == ++v25)
      {
        goto LABEL_27;
      }
    }
  }

  if (!v51)
  {
LABEL_33:

    goto LABEL_44;
  }

  v98 = v51;
  sub_268B38474();
  __break(1u);
}

void sub_268903178()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_142_0();
  v2 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_216_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v78 = v7;
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_57_0();

  v89 = sub_268AE1178(v9);
  sub_268903C90(&v89);
  v10 = v89;
  v11 = 0x2802A4000uLL;
  if (!sub_2688EFD0C())
  {

    if (qword_2802A4F30 == -1)
    {
LABEL_9:
      OUTLINED_FUNCTION_82(v2, qword_2802CDA10);
      (*(v4 + 16))(v1);
      v27 = sub_268B37A34();
      v28 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_19(v28))
      {
        v29 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_81(v29);
        OUTLINED_FUNCTION_27();
        _os_log_impl(v30, v31, v32, v33, v34, 2u);
        OUTLINED_FUNCTION_83_0();
      }

      (*(v4 + 8))(v1, v2);
      goto LABEL_61;
    }

LABEL_71:
    OUTLINED_FUNCTION_0_2();
    swift_once();
    goto LABEL_9;
  }

  sub_2688EFD10();
  if ((v10 & 0xC000000000000001) != 0)
  {
    goto LABEL_67;
  }

  v12 = *(v10 + 32);
LABEL_4:
  if (*(v11 + 3888) != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  OUTLINED_FUNCTION_82(v2, qword_2802CDA10);
  v13 = OUTLINED_FUNCTION_139();
  v76 = v14;
  v75 = v15;
  (v15)(v13);
  v16 = v12;
  v1 = v4;
  v4 = sub_268B37A34();
  v17 = sub_268B37F04();

  v77 = v1;
  v79 = v16;
  if (os_log_type_enabled(v4, v17))
  {
    v1 = OUTLINED_FUNCTION_172_0();
    v18 = OUTLINED_FUNCTION_173_0();
    v88 = v18;
    *v1 = 136315138;
    v19 = [v16 debugDescription];
    v20 = sub_268B37BF4();
    v21 = v2;
    v23 = v22;

    v24 = sub_26892CDB8(v20, v23, &v88);
    v2 = v21;

    *(v1 + 4) = v24;
    _os_log_impl(&dword_2688BB000, v4, v17, "Entity/Group with the most amount of devices found is: %s. Determining if it is a superset of all other groups", v1, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_12();

    v11 = *(v77 + 8);
    v25 = OUTLINED_FUNCTION_230_0();
  }

  else
  {

    v11 = *(v1 + 8);
    v25 = v0;
    v26 = v2;
  }

  (v11)(v25, v26);
  if (!sub_2688EFD0C())
  {
    __break(1u);
    goto LABEL_69;
  }

  v35 = sub_2689A994C(v10);
  if (!v35)
  {
LABEL_73:
    __break(1u);

    __break(1u);
    return;
  }

  v36 = v35;
  if (!sub_2688EFD0C())
  {
    __break(1u);
    goto LABEL_73;
  }

  if (sub_2688EFBD0(v10) < 1)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (__OFSUB__(sub_2688EFD0C(), 1))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v73 = v11;
  v74 = v2;
  sub_2688EA32C();
  sub_268904964(0, 1, 0);
  v82 = v89;

  v0 = sub_2689CB550();
  v37 = sub_2688EFD0C();
  v4 = 0;
  v10 = v0 & 0xC000000000000001;
  v86 = MEMORY[0x277D84F90];
  v2 = &selRef_groupLeader;
  while (v37 != v4)
  {
    if (v10)
    {
      v38 = MEMORY[0x26D625BD0](v4, v0);
    }

    else
    {
      if (v4 >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v38 = *(v0 + 8 * v4 + 32);
    }

    v39 = v38;
    v40 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_64;
    }

    v41 = [v38 context];
    if (v41)
    {
      v11 = sub_268B0F784(v41);
      v43 = v42;

      if (!v43)
      {
        goto LABEL_32;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_169_0();
        sub_2689876A4();
        v86 = v46;
      }

      v44 = *(v86 + 16);
      if (v44 >= *(v86 + 24) >> 1)
      {
        sub_2689876A4();
        v86 = v47;
      }

      *(v86 + 16) = v44 + 1;
      v45 = v86 + 16 * v44;
      *(v45 + 32) = v11;
      *(v45 + 40) = v43;
      v4 = v40;
    }

    else
    {

LABEL_32:
      ++v4;
    }
  }

  sub_26893E6A8(v86);
  v80 = v48;
  v81 = sub_2688EFD0C();
  v49 = 0;
  v10 = 1;
LABEL_35:
  if (v49 != v81)
  {
    sub_2688EFD10();
    if ((v82 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x26D625BD0](v49, v82);
    }

    else
    {
      v50 = *(v82 + 32 + 8 * v49);
    }

    v51 = __OFADD__(v49, 1);
    v0 = v49 + 1;
    if (v51)
    {
      goto LABEL_66;
    }

    v83 = v50;
    v84 = v0;
    v85 = v10;
    v52 = sub_2689CB550();
    v53 = sub_2688EFD0C();
    v11 = 0;
    v0 = v52 & 0xC000000000000001;
    v4 = v52 & 0xFFFFFFFFFFFFFF8;
    v87 = MEMORY[0x277D84F90];
    while (1)
    {
LABEL_40:
      if (v53 == v11)
      {

        sub_26893E6A8(v87);
        v11 = sub_268903940(v80, v63);

        v10 = v11 & v85;
        v49 = v84;
        goto LABEL_35;
      }

      if (v0)
      {
        v54 = MEMORY[0x26D625BD0](v11, v52);
      }

      else
      {
        if (v11 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_63;
        }

        v54 = *(v52 + 8 * v11 + 32);
      }

      v55 = v54;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:

        v12 = MEMORY[0x26D625BD0](0, v10);

        goto LABEL_4;
      }

      v56 = [v54 context];
      if (!v56)
      {
        break;
      }

      v57 = sub_268B0F784(v56);
      v10 = v58;

      if (!v10)
      {
        goto LABEL_53;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_169_0();
        sub_2689876A4();
        v87 = v61;
      }

      v59 = *(v87 + 16);
      if (v59 >= *(v87 + 24) >> 1)
      {
        sub_2689876A4();
        v87 = v62;
      }

      *(v87 + 16) = v59 + 1;
      v60 = v87 + 16 * v59;
      *(v60 + 32) = v57;
      *(v60 + 40) = v10;
      ++v11;
    }

LABEL_53:
    ++v11;
    goto LABEL_40;
  }

  v75(v78, v76, v74);
  v64 = sub_268B37A34();
  v65 = sub_268B37F04();
  if (OUTLINED_FUNCTION_19(v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 67109120;
    v66[1] = v10 & 1;
    OUTLINED_FUNCTION_27();
    _os_log_impl(v67, v68, v69, v70, v71, 8u);
    OUTLINED_FUNCTION_83_0();
  }

  v72 = OUTLINED_FUNCTION_278();
  v73(v72);
  if ((v10 & 1) == 0)
  {
  }

LABEL_61:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_268903940(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v23 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        sub_268B38514();

        sub_268B37C54();
        v17 = sub_268B38544();
        v18 = ~(-1 << *(a1 + 32));
        do
        {
          v19 = v17 & v18;
          if (((*(v9 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
          {

            return 0;
          }

          v20 = (*(a1 + 48) + 16 * v19);
          if (*v20 == v16 && v20[1] == v15)
          {
            break;
          }

          v22 = sub_268B38444();
          v17 = v19 + 1;
        }

        while ((v22 & 1) == 0);

        v2 = v23;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_268903B00()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);

  return v0;
}

uint64_t sub_268903B58()
{
  sub_268903B00();

  return MEMORY[0x2821FE8D8](v0, 240, 7);
}

uint64_t sub_268903BD8(char a1)
{
  sub_268B38514();
  MEMORY[0x26D625F10](a1 & 1);
  return sub_268B38544();
}

uint64_t sub_268903C3C(uint64_t a1)
{
  v2 = *v1;
  sub_268B38514();
  MEMORY[0x26D625F10](v2);
  return sub_268B38544();
}

uint64_t sub_268903C90(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2688EA2F4(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_268903D0C(v6);
  return sub_268B38224();
}

void sub_268903D0C(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_268B383F4();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_26892CCC0(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_268903F34(v8, v9, a1, v5);
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
    sub_268903DEC(0, v3, 1, a1);
  }
}

void sub_268903DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      v19 = v7;
      v20 = v6;
      do
      {
        v9 = *v6;
        v10 = v8;
        v11 = v9;
        v12 = sub_2689CB550();
        if (v12 >> 62)
        {
          v13 = sub_268B382A4();
        }

        else
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 = sub_2689CB550();
        if (v14 >> 62)
        {
          v15 = sub_268B382A4();
        }

        else
        {
          v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v15 >= v13)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v16 = *v6;
        v8 = *(v6 + 8);
        *v6 = v8;
        *(v6 + 8) = v16;
        v6 -= 8;
      }

      while (!__CFADD__(v7++, 1));
      ++v4;
      v6 = v20 + 8;
      v7 = v19 - 1;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_268903F34(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v116 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_108:
      v95 = (v8 + 16);
      v96 = *(v8 + 16);
      while (v96 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_144;
        }

        v97 = v8;
        v98 = (v8 + 16 * v96);
        v99 = *v98;
        v100 = &v95[2 * v96];
        v8 = *(v100 + 1);
        sub_26890467C((*a3 + 8 * *v98), (*a3 + 8 * *v100), (*a3 + 8 * v8), v116);
        if (v5)
        {
          break;
        }

        if (v8 < v99)
        {
          goto LABEL_132;
        }

        if (v96 - 2 >= *v95)
        {
          goto LABEL_133;
        }

        *v98 = v99;
        v98[1] = v8;
        v101 = *v95 - v96;
        if (*v95 < v96)
        {
          goto LABEL_134;
        }

        v96 = *v95 - 1;
        sub_268AE0F78(v100 + 16, v101, v100);
        *v95 = v96;
        v8 = v97;
      }

LABEL_116:

      return;
    }

LABEL_141:
    v8 = sub_268AE0F64(v8);
    goto LABEL_108;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v107 = v7;
    if (v7 + 1 < v6)
    {
      v104 = v8;
      v11 = v7 + 1;
      v12 = (*a3 + 8 * v7);
      v102 = 8 * v7;
      v13 = v7;
      v14 = *v12;
      v8 = (v12 + 2);
      v15 = *(*a3 + 8 * v10);
      v16 = v14;
      sub_2689CB550();
      v112 = sub_2688EFD0C();

      sub_2689CB550();
      v110 = sub_2688EFD0C();

      v17 = v13 + 2;
      v108 = v6;
      while (1)
      {
        v18 = v17;
        if (v11 + 1 >= v6)
        {
          break;
        }

        v116 = v5;
        v19 = *(v8 - 8);
        v20 = *v8;
        v21 = v19;
        v22 = sub_2689CB550();
        if (v22 >> 62)
        {
          v23 = sub_268B382A4();
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v24 = sub_2689CB550();
        if (v24 >> 62)
        {
          v25 = sub_268B382A4();
        }

        else
        {
          v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v8 += 8;
        ++v11;
        v17 = v18 + 1;
        v5 = v116;
        v6 = v108;
        if (v110 < v112 == v25 >= v23)
        {
          goto LABEL_15;
        }
      }

      v11 = v6;
LABEL_15:
      if (v110 >= v112)
      {
        v8 = v104;
        v10 = v11;
        v9 = v107;
      }

      else
      {
        v9 = v107;
        if (v11 < v107)
        {
          goto LABEL_138;
        }

        v10 = v11;
        if (v107 >= v11)
        {
          v8 = v104;
        }

        else
        {
          if (v6 >= v18)
          {
            v26 = v18;
          }

          else
          {
            v26 = v6;
          }

          v27 = 8 * v26 - 8;
          v28 = v107;
          v8 = v104;
          v29 = v102;
          do
          {
            if (v28 != --v10)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_145;
              }

              v31 = *(v30 + v29);
              *(v30 + v29) = *(v30 + v27);
              *(v30 + v27) = v31;
            }

            ++v28;
            v27 -= 8;
            v29 += 8;
          }

          while (v28 < v10);
          v10 = v11;
        }
      }
    }

    v32 = a3[1];
    if (v10 >= v32)
    {
      goto LABEL_54;
    }

    v33 = v10;
    v68 = __OFSUB__(v10, v9);
    v34 = v10 - v9;
    if (v68)
    {
      goto LABEL_137;
    }

    if (v34 < a4)
    {
      break;
    }

    v10 = v33;
LABEL_54:
    if (v10 < v9)
    {
      goto LABEL_136;
    }

    v114 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_268987C84();
      v8 = v93;
    }

    v50 = *(v8 + 16);
    v51 = v50 + 1;
    v52 = v114;
    if (v50 >= *(v8 + 24) >> 1)
    {
      sub_268987C84();
      v52 = v114;
      v8 = v94;
    }

    *(v8 + 16) = v51;
    v53 = v8 + 32;
    v54 = (v8 + 32 + 16 * v50);
    *v54 = v107;
    v54[1] = v52;
    v116 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (v50)
    {
      while (1)
      {
        v55 = v51 - 1;
        v56 = (v53 + 16 * (v51 - 1));
        v57 = (v8 + 16 * v51);
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v58 = *(v8 + 32);
          v59 = *(v8 + 40);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_74:
          if (v61)
          {
            goto LABEL_123;
          }

          v73 = *v57;
          v72 = v57[1];
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_126;
          }

          v77 = v56[1];
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
              v55 = v51 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        if (v51 < 2)
        {
          goto LABEL_125;
        }

        v80 = *v57;
        v79 = v57[1];
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_89:
        if (v76)
        {
          goto LABEL_128;
        }

        v82 = *v56;
        v81 = v56[1];
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_130;
        }

        if (v83 < v75)
        {
          goto LABEL_103;
        }

LABEL_96:
        if (v55 - 1 >= v51)
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

        v87 = (v53 + 16 * (v55 - 1));
        v88 = *v87;
        v89 = v53 + 16 * v55;
        v90 = *(v89 + 8);
        sub_26890467C((*a3 + 8 * *v87), (*a3 + 8 * *v89), (*a3 + 8 * v90), v116);
        if (v5)
        {
          goto LABEL_116;
        }

        if (v90 < v88)
        {
          goto LABEL_118;
        }

        v91 = v8;
        v8 = *(v8 + 16);
        if (v55 > v8)
        {
          goto LABEL_119;
        }

        *v87 = v88;
        v87[1] = v90;
        if (v55 >= v8)
        {
          goto LABEL_120;
        }

        v51 = v8 - 1;
        sub_268AE0F78((v89 + 16), v8 - 1 - v55, (v53 + 16 * v55));
        *(v91 + 16) = v8 - 1;
        v92 = v8 > 2;
        v8 = v91;
        if (!v92)
        {
          goto LABEL_103;
        }
      }

      v62 = v53 + 16 * v51;
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_121;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_122;
      }

      v69 = v57[1];
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
        v84 = v56[1];
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_135;
        }

        if (v60 < v86)
        {
          v55 = v51 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_74;
    }

LABEL_103:
    v7 = v114;
    v6 = a3[1];
    if (v114 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_139;
  }

  if (v9 + a4 >= v32)
  {
    v35 = a3[1];
  }

  else
  {
    v35 = v9 + a4;
  }

  if (v35 < v9)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v10 = v33;
  if (v33 == v35)
  {
    goto LABEL_54;
  }

  v105 = v8;
  v116 = v5;
  v36 = *a3;
  v37 = *a3 + 8 * v33 - 8;
  v38 = v9 - v33;
  v109 = v35;
LABEL_39:
  v111 = v37;
  v113 = v10;
  v39 = *(v36 + 8 * v10);
  v40 = v38;
  while (1)
  {
    v41 = *v37;
    v42 = v39;
    v43 = v41;
    v44 = sub_2689CB550();
    if (v44 >> 62)
    {
      v45 = sub_268B382A4();
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = sub_2689CB550();
    if (v46 >> 62)
    {
      v47 = sub_268B382A4();
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47 >= v45)
    {
LABEL_51:
      v10 = v113 + 1;
      v37 = v111 + 8;
      --v38;
      if (v113 + 1 == v109)
      {
        v10 = v109;
        v5 = v116;
        v8 = v105;
        v9 = v107;
        goto LABEL_54;
      }

      goto LABEL_39;
    }

    if (!v36)
    {
      break;
    }

    v48 = *v37;
    v39 = *(v37 + 8);
    *v37 = v39;
    *(v37 + 8) = v48;
    v37 -= 8;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_26890467C(void **a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = a2 - a1;
  v9 = a3 - a2;
  if (v8 >= v9)
  {
    sub_268988A70(a2, a3 - a2, a4);
    v10 = &v4[v9];
    v36 = v4;
LABEL_20:
    v21 = v6 - 1;
    v22 = v5 - 1;
    v39 = v6;
    v37 = v6 - 1;
    while (v10 > v4 && v6 > v7)
    {
      v24 = v22;
      v25 = *v21;
      v26 = *(v10 - 1);
      v27 = v25;
      v28 = sub_2689CB550();
      if (v28 >> 62)
      {
        v29 = sub_268B382A4();
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v30 = sub_2689CB550();
      if (v30 >> 62)
      {
        v31 = sub_268B382A4();
      }

      else
      {
        v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = v24;
      v32 = v24 + 1;
      if (v31 < v29)
      {
        v6 = v37;
        v4 = v36;
        if (v32 != v39)
        {
          *v5 = *v37;
          v6 = v37;
        }

        goto LABEL_20;
      }

      if (v10 != v32)
      {
        *v24 = *(v10 - 1);
      }

      v22 = v24 - 1;
      --v10;
      v4 = v36;
      v21 = v37;
      v6 = v39;
    }
  }

  else
  {
    sub_268988A70(a1, a2 - a1, a4);
    v10 = &v4[v8];
    v38 = v5;
    while (v4 < v10 && v6 < v5)
    {
      v12 = *v4;
      v13 = *v6;
      v14 = v12;
      v15 = sub_2689CB550();
      if (v15 >> 62)
      {
        v16 = sub_268B382A4();
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = sub_2689CB550();
      if (v17 >> 62)
      {
        v18 = sub_268B382A4();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18 >= v16)
      {
        v19 = v4;
        v20 = v7 == v4++;
      }

      else
      {
        v19 = v6;
        v20 = v7 == v6++;
      }

      v5 = v38;
      if (!v20)
      {
        *v7 = *v19;
      }

      ++v7;
    }

    v6 = v7;
  }

  v33 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v33])
  {
    memmove(v6, v4, 8 * v33);
  }

  return 1;
}

uint64_t sub_268904964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for DeviceGroup();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_268B382A4();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_268988A70(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_268B382A4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_268904AC8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_63(v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802A58F8, &unk_268B3C510);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_30_0(v8);
  sub_268B371E4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_9();
  v10 = sub_268B37A54();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_2(v14, v146);
  v16 = MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_20_1(v16, v17, v18, v19, v20, v21, v22, v23, v147);
  v25 = MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_3(v25, v26, v27, v28, v29, v30, v31, v32, v148);
  v34 = MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_11_2(v34, v35, v36, v37, v38, v39, v40, v41, v149);
  v43 = MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_21_1(v43, v44, v45, v46, v47, v48, v49, v50, v150);
  MEMORY[0x28223BE20](v51);
  v52 = OUTLINED_FUNCTION_57_0();
  _Block_copy(v52);
  OUTLINED_FUNCTION_168_0();
  v53 = swift_allocObject();
  OUTLINED_FUNCTION_199_0(v53);
  OUTLINED_FUNCTION_0_3();
  v54 = swift_allocObject();
  OUTLINED_FUNCTION_248_0(v54);
  OUTLINED_FUNCTION_247_0();
  v55 = qword_2802A4F30;
  OUTLINED_FUNCTION_257_0();
  if (v55 != -1)
  {
LABEL_49:
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v56 = __swift_project_value_buffer(v10, qword_2802CDA10);
  v57 = OUTLINED_FUNCTION_14_2(v56);
  v58(v57);
  v59 = v1;
  v60 = sub_268B37A34();
  v61 = sub_268B37F04();

  if (OUTLINED_FUNCTION_246_0())
  {
    OUTLINED_FUNCTION_172_0();
    v62 = OUTLINED_FUNCTION_123_0();
    OUTLINED_FUNCTION_99_0(v62);
    OUTLINED_FUNCTION_255_0(4.8149e-34);
    v63 = sub_268B385B4();
    OUTLINED_FUNCTION_235_0(v63, v64);
    OUTLINED_FUNCTION_157_0();
    OUTLINED_FUNCTION_193_0();
    OUTLINED_FUNCTION_112_0(&dword_2688BB000, v65, v66, "Smart selecting devices for intent: %s");
    OUTLINED_FUNCTION_48_0();
    OUTLINED_FUNCTION_125_0();
  }

  v67 = OUTLINED_FUNCTION_91_0();
  (v1)(v67);
  sub_268B18100(v59);
  v68 = MEMORY[0x277D84F90];
  v69 = OUTLINED_FUNCTION_66();
  sub_268B18140(v69);
  if (OUTLINED_FUNCTION_158_0() == 1 && sub_2688EFD0C())
  {
    OUTLINED_FUNCTION_110();
    if (v68)
    {
      OUTLINED_FUNCTION_259_0();
    }

    else
    {
      v70 = *(v61 + 32);
    }

    v60 = v70;
    sub_26892D418(v70);
    if (v71)
    {
      OUTLINED_FUNCTION_159();
      v72 = OUTLINED_FUNCTION_43_0();
      v73(v72);

      v74 = sub_268B37A34();
      sub_268B37F04();
      OUTLINED_FUNCTION_233_0();
      if (OUTLINED_FUNCTION_236_0())
      {
        OUTLINED_FUNCTION_172_0();
        v75 = OUTLINED_FUNCTION_109_0();
        OUTLINED_FUNCTION_181_0(v75);
        OUTLINED_FUNCTION_114_0(4.8149e-34);
        OUTLINED_FUNCTION_161_0();
        OUTLINED_FUNCTION_89_0();
        OUTLINED_FUNCTION_102_0(&dword_2688BB000, v76, v77, "Intent already has device with destinationDeviceId: %s, returning it");
        OUTLINED_FUNCTION_79_0();
        OUTLINED_FUNCTION_84_0();

        v78 = OUTLINED_FUNCTION_46_0();
        v79(v78);
      }

      else
      {

        v128 = OUTLINED_FUNCTION_71_0();
        (v1)(v128);
      }

      OUTLINED_FUNCTION_252_0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802A62E0, &unk_268B3C4F0);
      OUTLINED_FUNCTION_220();
      v68 = swift_allocObject();
      OUTLINED_FUNCTION_113_0(v68, xmmword_268B3BBA0);
      v129 = v60;
      OUTLINED_FUNCTION_61_0();
      sub_2689562B4();

LABEL_37:

      goto LABEL_46;
    }
  }

  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_44_0();
  while (v60 != v10)
  {
    if (v12)
    {
      v84 = OUTLINED_FUNCTION_115();
      MEMORY[0x26D625BD0](v84);
    }

    else
    {
      OUTLINED_FUNCTION_192_0();
      if (v80)
      {
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_244_0();
    }

    OUTLINED_FUNCTION_197_0();
    if (v81)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v82 = OUTLINED_FUNCTION_243_0();
    OUTLINED_FUNCTION_182_0();
    sub_2688C063C();
    v83 = OUTLINED_FUNCTION_201_0();
    v68 = v83;
    if (&OBJC_INSTANCE_METHODS_AddSpeakerIntentHandling_0)
    {
      OUTLINED_FUNCTION_0_1();
      v0 = sub_268B38074();

      if (v0)
      {

        v95 = OUTLINED_FUNCTION_29_0();
        v96(v95);

        v97 = sub_268B37A34();
        sub_268B37F04();
        OUTLINED_FUNCTION_234_0();
        if (OUTLINED_FUNCTION_214_0())
        {
          OUTLINED_FUNCTION_172_0();
          v99 = OUTLINED_FUNCTION_120_0();
          OUTLINED_FUNCTION_99_0(v99);
          OUTLINED_FUNCTION_134_0(4.8149e-34);
          type metadata accessor for Device();
          OUTLINED_FUNCTION_217_0();
          OUTLINED_FUNCTION_220_0(v100, v101);
          OUTLINED_FUNCTION_241();
          *(v1 + 4) = v60;
          OUTLINED_FUNCTION_57();
          _os_log_impl(v102, v103, v104, v105, v106, 0xCu);
          OUTLINED_FUNCTION_48_0();
          OUTLINED_FUNCTION_6();
        }

        v107 = OUTLINED_FUNCTION_45_0();
        v108(v107);
        OUTLINED_FUNCTION_242_0();
        OUTLINED_FUNCTION_92_0();
        sub_2689562B4();

        goto LABEL_37;
      }
    }

    else
    {
    }

    ++v10;
  }

  if (sub_268921060())
  {
    sub_268B18120(v151);
    OUTLINED_FUNCTION_191_0();
    if (v85)
    {
      v86 = OUTLINED_FUNCTION_16_2();
      v87(v86);
      v88 = sub_268B37A34();
      v89 = sub_268B37F04();
      if (OUTLINED_FUNCTION_160_0(v89))
      {
        OUTLINED_FUNCTION_172_0();
        v90 = OUTLINED_FUNCTION_120_0();
        OUTLINED_FUNCTION_99_0(v90);
        OUTLINED_FUNCTION_134_0(4.8149e-34);
        type metadata accessor for DeviceQuery();
        OUTLINED_FUNCTION_205_0();
        OUTLINED_FUNCTION_184_0(v91, v92);
        OUTLINED_FUNCTION_126_0();

        *(v1 + 4) = v61;
        OUTLINED_FUNCTION_106(&dword_2688BB000, v93, v94, "DeviceSelectingUtil#smartSelect WHA request: Resolving target devices using deviceQueries: %s");
        OUTLINED_FUNCTION_48_0();
        OUTLINED_FUNCTION_6();
      }

      v142 = OUTLINED_FUNCTION_88_0();
      v143(v142);
      sub_268920A60();
      OUTLINED_FUNCTION_137_0();

      OUTLINED_FUNCTION_0_3();
      v144 = swift_allocObject();
      *(v144 + 16) = sub_26890C8F8;
      *(v144 + 24) = v54;

      OUTLINED_FUNCTION_67();
    }

    else
    {

      v130 = OUTLINED_FUNCTION_24_1();
      v131(v130);
      v132 = sub_268B37A34();
      v133 = sub_268B37EE4();
      if (OUTLINED_FUNCTION_115_0(v133))
      {
        v134 = OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_136_0(v134);
        OUTLINED_FUNCTION_78_0(&dword_2688BB000, v135, v136, "DeviceSelectingUtil#smartSelect WHA request, but could not get any deviceQueries in the intent.");
        OUTLINED_FUNCTION_84_0();
      }

      v137 = OUTLINED_FUNCTION_87_0();
      (v1)(v137);
      v138 = OUTLINED_FUNCTION_133_0();
      _Block_copy(v138);
      OUTLINED_FUNCTION_94_0();
      sub_2689562B4();
    }
  }

  else
  {
    v109 = OUTLINED_FUNCTION_28_0();
    v110(v109);
    v111 = sub_268B37A34();
    v112 = sub_268B37F04();
    if (OUTLINED_FUNCTION_115_0(v112))
    {
      v113 = OUTLINED_FUNCTION_14();
      OUTLINED_FUNCTION_136_0(v113);
      OUTLINED_FUNCTION_78_0(&dword_2688BB000, v114, v115, "DeviceSelectingUtil#smartSelect intent has no target entities. Going down the select route");
      OUTLINED_FUNCTION_84_0();
    }

    v116 = OUTLINED_FUNCTION_65();
    v117(v116);
    v118 = sub_268B18120(v151);
    if (v118)
    {
      OUTLINED_FUNCTION_200_0(v118);
      v119 = OUTLINED_FUNCTION_123();
      __swift_instantiateConcreteTypeFromMangledNameV2(v119, v120);
      OUTLINED_FUNCTION_176_0();
      sub_26890CAA0(v121, v122, v123);
      OUTLINED_FUNCTION_1_4();
      sub_26890D6F8(v124, v125, &protocol conformance descriptor for DeviceQuery);
      OUTLINED_FUNCTION_7_1();
      sub_268B37E84();

      v126 = OUTLINED_FUNCTION_6_3();
      v127(v126);
    }

    else
    {
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_22_1();
      if (!v139)
      {
        sub_2688C058C(v68, &qword_2802A58F8, &unk_268B3C510);
      }
    }

    OUTLINED_FUNCTION_0_3();
    v68 = swift_allocObject();
    OUTLINED_FUNCTION_204_0(v68);
    OUTLINED_FUNCTION_68_0();

    v140 = OUTLINED_FUNCTION_64_0();
    v141(v140);
  }

LABEL_46:
  v145 = OUTLINED_FUNCTION_133_0();
  _Block_release(v145);
  _Block_release(v68);
  _Block_release(v68);
  OUTLINED_FUNCTION_23();
}