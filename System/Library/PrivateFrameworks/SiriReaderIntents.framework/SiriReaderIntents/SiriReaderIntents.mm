uint64_t sub_268C48C80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C725565676170 && a2 == 0xE700000000000000;
  if (v4 || (sub_268C5AA50() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000015 && 0x8000000268C5BE30 == a2;
    if (v6 || (sub_268C5AA50() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6554726564616572 && a2 == 0xEA00000000007478;
      if (v7 || (sub_268C5AA50() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_268C5AA50();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_268C48E24(unsigned __int8 a1)
{
  sub_268C5AA70();
  MEMORY[0x26D629530](a1);
  return sub_268C5AA90();
}

unint64_t sub_268C48E78(char a1)
{
  result = 0x6C725565676170;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x6554726564616572;
      break;
    case 3:
      result = 0x656C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268C48F2C(uint64_t a1)
{
  v2 = *v1;
  sub_268C5AA70();
  MEMORY[0x26D629530](v2);
  return sub_268C5AA90();
}

uint64_t sub_268C48F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C48C80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C48FC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268C48DE4();
  *a1 = result;
  return result;
}

uint64_t sub_268C48FE8(uint64_t a1)
{
  v2 = sub_268C493D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C49024(uint64_t a1)
{
  v2 = sub_268C493D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static MockSafariReaderData.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_268C5A200() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MockSafariReaderData(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v6 = v4;
  OUTLINED_FUNCTION_2(*(v4 + 24));
  v9 = v9 && v7 == v8;
  if (!v9 && (sub_268C5AA50() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2(*(v6 + 28));
  if (v9 && v10 == v11)
  {
    return 1;
  }

  return sub_268C5AA50();
}

uint64_t type metadata accessor for MockSafariReaderData(uint64_t a1)
{
  result = qword_2802D3478;
  if (!qword_2802D3478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MockSafariReaderData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3448, &qword_268C5B3D0);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C493D4();
  sub_268C5AAB0();
  v10[15] = 0;
  sub_268C5A220();
  sub_268C49804(&qword_2802D3458, MEMORY[0x277CC9268]);
  OUTLINED_FUNCTION_5();
  sub_268C5AA30();
  if (!v1)
  {
    type metadata accessor for MockSafariReaderData(0);
    v10[14] = 1;
    OUTLINED_FUNCTION_5();
    sub_268C5AA20();
    v10[13] = 2;
    OUTLINED_FUNCTION_5();
    sub_268C5AA10();
    v10[12] = 3;
    OUTLINED_FUNCTION_5();
    sub_268C5AA10();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_268C493D4()
{
  result = qword_2802D3450;
  if (!qword_2802D3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D3450);
  }

  return result;
}

uint64_t MockSafariReaderData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_268C5A220();
  OUTLINED_FUNCTION_0();
  v28 = v5;
  MEMORY[0x28223BE20](v6);
  v31 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3460, &qword_268C5B3D8);
  OUTLINED_FUNCTION_0();
  v29 = v9;
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = type metadata accessor for MockSafariReaderData(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C493D4();
  sub_268C5AAA0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v12;
  v14 = v28;
  v35 = 0;
  sub_268C49804(&unk_2802D3468, MEMORY[0x277CC9280]);
  OUTLINED_FUNCTION_4();
  sub_268C5AA00();
  (*(v14 + 32))(v12, v31, v4);
  v34 = 1;
  OUTLINED_FUNCTION_4();
  v12[v10[5]] = sub_268C5A9F0() & 1;
  v33 = 2;
  OUTLINED_FUNCTION_4();
  v15 = sub_268C5A9E0();
  v16 = a1;
  v17 = (v13 + v10[6]);
  *v17 = v15;
  v17[1] = v18;
  v32 = 3;
  OUTLINED_FUNCTION_4();
  v19 = sub_268C5A9E0();
  v21 = v20;
  v22 = OUTLINED_FUNCTION_1();
  v23(v22);
  v24 = (v13 + v10[7]);
  *v24 = v19;
  v24[1] = v21;
  sub_268C49848(v13, v27);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_268C498AC(v13);
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_268C49804(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_268C5A220();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268C49848(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MockSafariReaderData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268C498AC(uint64_t a1)
{
  v2 = type metadata accessor for MockSafariReaderData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268C49950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268C5A220();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_268C49A3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_268C5A220();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_268C49B10(uint64_t a1)
{
  result = sub_268C5A220();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MockSafariReaderData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MockSafariReaderData.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268C49CF4);
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

unint64_t sub_268C49D44()
{
  result = qword_2802D34E8;
  if (!qword_2802D34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D34E8);
  }

  return result;
}

unint64_t sub_268C49D9C()
{
  result = qword_2802D34F0;
  if (!qword_2802D34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D34F0);
  }

  return result;
}

unint64_t sub_268C49DF4()
{
  result = qword_2802D34F8;
  if (!qword_2802D34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D34F8);
  }

  return result;
}

uint64_t sub_268C49EB0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, __int128 *a6)
{
  sub_268C509C0(a1, v6 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_entity);
  v12 = (v6 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_locale);
  *v12 = a2;
  v12[1] = a3;
  sub_268C50724(a4, v6 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_aceServiceInvoker);
  v13 = v6 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_outputPublisher;
  v14 = *(a5 + 16);
  *v13 = *a5;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a5 + 32);
  sub_268C50724(a6, v6 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_deviceState);
  return v6;
}

void sub_268C49F58(uint64_t a1)
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = sub_268C5A490();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = sub_268C5A750();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  OUTLINED_FUNCTION_16(v10, qword_2802D4560);
  (*(v12 + 16))(v16);
  (*(v5 + 16))(v9, v2, v3);
  v17 = sub_268C5A740();
  v18 = sub_268C5A910();
  if (os_log_type_enabled(v17, v18))
  {
    v28 = v10;
    v19 = OUTLINED_FUNCTION_29();
    v27 = OUTLINED_FUNCTION_37();
    v29 = v27;
    *v19 = 136315138;
    sub_268C50920(&qword_2802D3A30, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v20 = sub_268C5AA40();
    v22 = v21;
    (*(v5 + 8))(v9, v3);
    v23 = sub_268C56F44(v20, v22, &v29);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_268C47000, v17, v18, "ReadThisFlow.on input: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();

    v24 = OUTLINED_FUNCTION_47();
    v26 = v28;
  }

  else
  {

    (*(v5 + 8))(v9, v3);
    v24 = OUTLINED_FUNCTION_47();
    v26 = v10;
  }

  v25(v24, v26);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_268C4A214()
{
  OUTLINED_FUNCTION_10();
  v1[25] = v2;
  v1[26] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A20, &qword_268C5B898);
  v1[27] = v3;
  OUTLINED_FUNCTION_12(v3);
  v1[28] = v4;
  v1[29] = OUTLINED_FUNCTION_49();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A28, &qword_268C5B8A0);
  v1[30] = OUTLINED_FUNCTION_49();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39B0, &qword_268C5B848);
  v1[31] = v5;
  OUTLINED_FUNCTION_12(v5);
  v1[32] = v6;
  v1[33] = OUTLINED_FUNCTION_49();
  v7 = sub_268C5A750();
  v1[34] = v7;
  OUTLINED_FUNCTION_12(v7);
  v1[35] = v8;
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_268C4A3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_45();
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  v13 = v12[39];
  v14 = v12[34];
  v15 = v12[35];
  v16 = __swift_project_value_buffer(v14, qword_2802D4560);
  v12[40] = v16;
  v17 = *(v15 + 16);
  v12[41] = v17;
  v12[42] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v17(v13, v16, v14);
  v18 = sub_268C5A740();
  v19 = sub_268C5A910();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = OUTLINED_FUNCTION_28();
    *v20 = 0;
    _os_log_impl(&dword_268C47000, v18, v19, "Entering ReadThisFlow execute", v20, 2u);
    OUTLINED_FUNCTION_18();
  }

  v21 = v12[39];
  v22 = v12[34];
  v23 = v12[35];

  v24 = *(v23 + 8);
  v12[43] = v24;
  v25 = v24(v21, v22);
  sub_268C4C6D0(v25, v26);
  if ((v27 & 1) == 0)
  {
    v31 = v12 + 2;
    v17(v12[37], v16, v12[34]);
    v33 = sub_268C5A740();
    v34 = sub_268C5A910();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = OUTLINED_FUNCTION_28();
      *v35 = 0;
      _os_log_impl(&dword_268C47000, v33, v34, "Safari not frontmost app, not reading", v35, 2u);
      OUTLINED_FUNCTION_18();
    }

    v36 = v12[37];
    v37 = v12[34];

    v24(v36, v37);
    sub_268C4B4D8(0, v12 + 2);
    v32 = 5;
    goto LABEL_11;
  }

  v30 = v12[30];
  v29 = v12[31];
  sub_268C4C18C(v27, v28);
  if (__swift_getEnumTagSinglePayload(v30, 1, v29) == 1)
  {
    v31 = v12 + 7;
    sub_268C50968(v12[30], &qword_2802D3A28, &qword_268C5B8A0);
    sub_268C4B4D8(2, v12 + 7);
    v32 = 10;
LABEL_11:
    __swift_project_boxed_opaque_existential_1(v31, v12[v32]);
    sub_268C5A3F0();
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_24();

    OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_35();

    return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
  }

  v47 = OUTLINED_FUNCTION_19();
  v48(v47);
  sub_268C5A8D0();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v12[44] = v49;
  *v49 = v50;
  OUTLINED_FUNCTION_6(v49);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_35();

  return MEMORY[0x2822005A8](v51);
}

uint64_t sub_268C4A714()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_268C4A810()
{
  v36 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  if (v2 == 255)
  {
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
    sub_268C4B4D8(2, (v0 + 136));
    __swift_project_boxed_opaque_existential_1((v0 + 136), *(v0 + 160));
    sub_268C5A3F0();
    v19 = OUTLINED_FUNCTION_11();
    v20(v19);
    __swift_destroy_boxed_opaque_existential_1((v0 + 136));
LABEL_11:
    OUTLINED_FUNCTION_24();

    OUTLINED_FUNCTION_9();

    return v30();
  }

  if (v2 == 5)
  {
    (*(v0 + 328))(*(v0 + 304), *(v0 + 320), *(v0 + 272));
    v3 = v1;
    v4 = sub_268C5A740();
    v5 = sub_268C5A910();
    sub_268C5090C(v1, 5);
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 344);
    v8 = *(v0 + 304);
    v9 = *(v0 + 272);
    if (v6)
    {
      v34 = *(v0 + 304);
      v10 = OUTLINED_FUNCTION_29();
      v33 = v9;
      v11 = OUTLINED_FUNCTION_37();
      v35 = v11;
      *v10 = 136315138;
      v12 = [v3 description];
      v13 = sub_268C5A800();
      v32 = v7;
      v15 = v14;

      sub_268C5090C(v1, 5);
      v16 = sub_268C56F44(v13, v15, &v35);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_268C47000, v4, v5, "connection: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_18();

      v17 = v32(v34, v33);
    }

    else
    {

      v17 = v7(v8, v9);
    }

    v24 = *(v0 + 248);
    v26 = *(v0 + 224);
    v25 = *(v0 + 232);
    v27 = *(v0 + 216);
    sub_268C4AE38(v17, v18);
    sub_268C4B1BC(0);
    sub_268C5A400();
    sub_268C5090C(v1, 5);
    (*(v26 + 8))(v25, v27);
    v28 = OUTLINED_FUNCTION_47();
    v29(v28, v24);
    goto LABEL_11;
  }

  sub_268C5090C(*(v0 + 176), v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 352) = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_6(v21);
  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822005A8](v23);
}

uint64_t sub_268C4AB6C()
{
  v1 = v0[41];
  v2 = v0[40];
  v3 = v0[36];
  v4 = v0[34];
  (*(v0[28] + 8))(v0[29], v0[27]);
  v5 = v0[24];
  v1(v3, v2, v4);
  MEMORY[0x26D6298C0](v5);
  v6 = sub_268C5A740();
  v7 = sub_268C5A910();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_29();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    MEMORY[0x26D6298C0](v5);
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_268C47000, v6, v7, "Error: %@", v8, 0xCu);
    sub_268C50968(v9, &qword_2802D3A80, &qword_268C5B7E0);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();
  }

  v11 = v0[43];
  v12 = v0[36];
  v13 = v0[34];
  v14 = v0[32];
  v17 = v0[31];
  v18 = v0[33];

  v11(v12, v13);
  MEMORY[0x26D6298C0](v5);
  sub_268C4B1BC(v5);

  sub_268C4B4D8(0, v0 + 12);
  __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
  sub_268C5A3F0();

  (*(v14 + 8))(v18, v17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_9();

  return v15();
}

uint64_t sub_268C4ADA8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ReadThisFlow(0);
  sub_268C50920(&qword_2802D3A18, type metadata accessor for ReadThisFlow, &unk_268C5B778);
  return sub_268C5A2B0();
}

void sub_268C4AE38(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26();
  v31 = v2;
  v4 = sub_268C5A750();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_32();
  v8 = sub_268C5A250();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_46();
  v12 = [objc_allocWithZone(MEMORY[0x277D4C490]) init];
  sub_268C5A240();
  v13 = sub_268C5A230();
  v15 = v14;
  (*(v10 + 8))(v2, v8);
  sub_268C507DC(v13, v15, v12, &selRef_setCardSectionId_);
  v16 = sub_268C5A7F0();
  [v12 setPlaybackBundleIdentifier:v16];

  v17 = [objc_allocWithZone(MEMORY[0x277D47200]) init];
  sub_268C508CC(0, &qword_2802D3A00, 0x277D47200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A08, &qword_268C5B890);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_268C5B5C0;
  *(v18 + 32) = v12;
  v19 = sub_268C5A900();

  v20 = objc_allocWithZone(MEMORY[0x277D479E8]);
  v21 = v19;
  v22 = [v20 init];
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_268C5B5C0;
  *(v23 + 32) = v21;
  sub_268C50848(v23, v22);
  __swift_project_boxed_opaque_existential_1((v31 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_aceServiceInvoker), *(v31 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_aceServiceInvoker + 24));
  v24 = sub_268C5A460();
  if (qword_2802D3430 != -1)
  {
    v24 = OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  OUTLINED_FUNCTION_8(v24, qword_2802D4560);
  (*(v6 + 16))(v3);
  v25 = sub_268C5A740();
  v26 = sub_268C5A910();
  if (OUTLINED_FUNCTION_38(v26))
  {
    v27 = OUTLINED_FUNCTION_28();
    *v27 = 0;
    _os_log_impl(&dword_268C47000, v25, v26, "Presented UI and returning from ReadThisFlow", v27, 2u);
    OUTLINED_FUNCTION_18();
    v28 = v12;
  }

  else
  {
    v28 = v25;
    v25 = v21;
    v21 = v12;
  }

  v29 = OUTLINED_FUNCTION_47();
  v30(v29, v4);
  OUTLINED_FUNCTION_22();
}

void sub_268C4B1BC(uint64_t a1)
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39F0, &qword_268C5B880);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_32();
  v5 = sub_268C5A3C0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v11 = (v10 + 104);
  sub_268C5A310();
  __swift_project_boxed_opaque_existential_1(v24, v24[3]);
  sub_268C5A360();
  if (v3)
  {
    (*v11)(v9, *MEMORY[0x277D5BC00], v5);
    v12 = *MEMORY[0x277D5B8D0];
    v13 = sub_268C5A330();
    OUTLINED_FUNCTION_4_0();
    (*(v14 + 104))(v1, v12, v13);
    v15 = OUTLINED_FUNCTION_30();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
    *(swift_allocObject() + 16) = v3;
    MEMORY[0x26D6298C0](v3);
  }

  else
  {
    (*v11)(v9, *MEMORY[0x277D5BC10], v5);
    v18 = *MEMORY[0x277D5B950];
    v19 = sub_268C5A330();
    OUTLINED_FUNCTION_4_0();
    (*(v20 + 104))(v1, v18, v19);
    v21 = OUTLINED_FUNCTION_30();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v19);
  }

  OUTLINED_FUNCTION_21();
  sub_268C5A350();
  sub_268C5A320();

  __swift_destroy_boxed_opaque_existential_1(v24);
  OUTLINED_FUNCTION_22();
}

uint64_t sub_268C4B480(uint64_t a1, uint64_t a2)
{
  MEMORY[0x26D6298C0](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39F8, &qword_268C5B888);
  sub_268C5A810();
  return sub_268C5A340();
}

uint64_t sub_268C4B4D8@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  sub_268C505B8(v2 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_outputPublisher, &v10, &qword_2802D39D8, &qword_268C5B980);
  if (v11)
  {
    sub_268C50724(&v10, v12);
  }

  else
  {
    sub_268C50968(&v10, &qword_2802D39D8, &qword_268C5B980);
    sub_268C5A480();
  }

  sub_268C50618(v12, &v10);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v2;
  v6 = sub_268C5A290();
  OUTLINED_FUNCTION_50(v6);

  v7 = sub_268C5A280();
  v8 = MEMORY[0x277D5B3F0];
  a2[3] = v6;
  a2[4] = v8;
  *a2 = v7;
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_268C4B5F4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 264) = a2;
  *(v3 + 128) = a1;
  *(v3 + 136) = a3;
  v4 = sub_268C5A750();
  *(v3 + 144) = v4;
  *(v3 + 152) = *(v4 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D39E0, &qword_268C5B870);
  *(v3 + 176) = swift_task_alloc();
  sub_268C5A6F0();
  *(v3 + 184) = swift_task_alloc();
  v5 = sub_268C5A420();
  *(v3 + 192) = v5;
  *(v3 + 200) = *(v5 - 8);
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268C4B790);
}

uint64_t sub_268C4B790()
{
  OUTLINED_FUNCTION_45();
  v27 = v0;
  if (sub_268C547F4(*(v0 + 264)) == 0xD000000000000015 && 0x8000000268C5BFF0 == v1)
  {
  }

  else
  {
    v3 = sub_268C5AA50();

    if ((v3 & 1) == 0)
    {
      v5 = *(v0 + 184);
      v26 = 0;
      memset(v25, 0, sizeof(v25));
      sub_268C5A6E0();
      ThisCATProvider = type metadata accessor for ReadThisCATProvider(0);
      OUTLINED_FUNCTION_50(ThisCATProvider);
      *(v0 + 224) = sub_268C5436C(v5, v25);
      swift_task_alloc();
      OUTLINED_FUNCTION_14();
      *(v0 + 232) = v7;
      *v7 = v8;
      v7[1] = sub_268C4B9CC;
      v9 = *(v0 + 216);
      v10 = *(v0 + 264);
      v11 = MEMORY[0x277D84F90];

      return sub_268C5455C(v9, v10, v11);
    }
  }

  if (qword_2802D3430 != -1)
  {
    v4 = OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  OUTLINED_FUNCTION_8(v4, qword_2802D4560);
  v13 = OUTLINED_FUNCTION_19();
  v14(v13);
  v15 = sub_268C5A740();
  v16 = sub_268C5A930();
  if (OUTLINED_FUNCTION_38(v16))
  {
    v17 = OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_44(v17);
    OUTLINED_FUNCTION_25(&dword_268C47000, v18, v19, "Defaulting to generic error template response");
    OUTLINED_FUNCTION_18();
  }

  v20 = OUTLINED_FUNCTION_11();
  v21(v20);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 248) = v22;
  *v22 = v23;
  v24 = OUTLINED_FUNCTION_7(v22);

  return MEMORY[0x2821BAEC8](v24);
}

uint64_t sub_268C4B9CC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v3 + 240) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_268C4BAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_45();
  v13 = *(v12 + 176);
  v14 = *(v12 + 128);
  OUTLINED_FUNCTION_36(*(v12 + 136));
  sub_268C5A410();
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = sub_268C5A4E0();
  *(v12 + 72) = 0u;
  *(v12 + 88) = 0;
  *(v12 + 56) = 0u;
  v20 = MEMORY[0x277D5C1D8];
  v14[3] = v19;
  v14[4] = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  OUTLINED_FUNCTION_23(boxed_opaque_existential_1, v22, v23, MEMORY[0x277D84F90]);
  sub_268C50968(v12 + 56, &unk_2802D3A40, &qword_268C5B878);
  sub_268C50968(v13, &unk_2802D39E0, &qword_268C5B870);
  v24 = OUTLINED_FUNCTION_11();
  v25(v24);
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_35();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v12 + 56, a10, a11, a12);
}

uint64_t sub_268C4BC18()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  v2 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v3 = v2;
  *(v4 + 256) = v0;

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_268C4BD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_45();
  v13 = *(v12 + 176);
  v14 = *(v12 + 128);
  OUTLINED_FUNCTION_36(*(v12 + 136));
  sub_268C5A410();
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = sub_268C5A4E0();
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0;
  *(v12 + 16) = 0u;
  v20 = MEMORY[0x277D5C1D8];
  v14[3] = v19;
  v14[4] = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
  OUTLINED_FUNCTION_23(boxed_opaque_existential_1, v22, v23, MEMORY[0x277D84F90]);
  sub_268C50968(v12 + 16, &unk_2802D3A40, &qword_268C5B878);
  sub_268C50968(v13, &unk_2802D39E0, &qword_268C5B870);
  v24 = OUTLINED_FUNCTION_11();
  v25(v24);
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_35();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v12 + 16, a10, a11, a12);
}

uint64_t sub_268C4BE5C()
{
  v33 = v0;

  v2 = 0x2802D3000uLL;
  if (qword_2802D3430 != -1)
  {
    v1 = OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  v3 = v0[30];
  OUTLINED_FUNCTION_8(v1, qword_2802D4560);
  v4 = OUTLINED_FUNCTION_19();
  v5(v4);
  MEMORY[0x26D6298C0](v3);
  v6 = sub_268C5A740();
  v7 = sub_268C5A930();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[30];
  v11 = v0[19];
  v10 = v0[20];
  v12 = v0[18];
  if (v8)
  {
    v13 = OUTLINED_FUNCTION_29();
    v14 = OUTLINED_FUNCTION_37();
    v32 = v14;
    *v13 = 136315138;
    swift_getErrorValue();
    v15 = sub_268C5AA60();
    v17 = sub_268C56F44(v15, v16, &v32);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_268C47000, v6, v7, "Could not get CAT template: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_18();
    v2 = 0x2802D3000;
    OUTLINED_FUNCTION_18();

    v18 = (*(v11 + 8))(v10, v12);
  }

  else
  {

    v18 = (*(v11 + 8))(v10, v12);
  }

  if (*(v2 + 1072) != -1)
  {
    v18 = OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  OUTLINED_FUNCTION_8(v18, qword_2802D4560);
  v19 = OUTLINED_FUNCTION_19();
  v20(v19);
  v21 = sub_268C5A740();
  v22 = sub_268C5A930();
  if (OUTLINED_FUNCTION_38(v22))
  {
    v23 = OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_44(v23);
    OUTLINED_FUNCTION_25(&dword_268C47000, v24, v25, "Defaulting to generic error template response");
    OUTLINED_FUNCTION_18();
  }

  v26 = OUTLINED_FUNCTION_11();
  v27(v26);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[31] = v28;
  *v28 = v29;
  v30 = OUTLINED_FUNCTION_7(v28);

  return MEMORY[0x2821BAEC8](v30);
}

uint64_t sub_268C4C0F8(uint64_t a1)
{
  OUTLINED_FUNCTION_40();

  OUTLINED_FUNCTION_9();

  return v1();
}

void sub_268C4C18C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = sub_268C5A270();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = sub_268C5A250();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  sub_268C508CC(0, &qword_2802D39A8, 0x277D23BA0);
  v18 = sub_268C4C4E8(0xD000000000000016, 0x8000000268C5BDB0);
  if (v18)
  {
    v19 = v18;
    v20 = objc_allocWithZone(MEMORY[0x277D23720]);
    v39 = sub_268C4FA08(0x6F546E657473694CLL, 0xEC00000065676150, 0, 0, 0, 0, 0, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
    v21 = [objc_allocWithZone(MEMORY[0x277D23AF8]) init];
    sub_268C507DC(1769105747, 0xE400000000000000, v21, &selRef_setClientLabel_);
    [v21 setSource_];
    sub_268C5A240();
    v22 = sub_268C5A230();
    v38 = v4;
    v24 = v23;
    (*(v13 + 8))(v17, v11);
    sub_268C507DC(v22, v24, v21, &selRef_setClientLabel_);
    sub_268C508CC(0, &qword_2802D39B8, 0x277D23C08);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_deviceState), *(v3 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_deviceState + 24));
    sub_268C5A390();
    v25 = sub_268C5A260();
    v27 = v26;
    (*(v6 + 8))(v10, v38);
    v28 = sub_268C4C55C(v25, v27);
    [v21 setEnvironment_];

    sub_268C4C5D0(v39, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39B0, &qword_268C5B848);
    v29 = OUTLINED_FUNCTION_30();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    OUTLINED_FUNCTION_22();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39B0, &qword_268C5B848);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_22();

    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  }
}

id sub_268C4C4E8(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_268C5A7F0();

  v4 = [v2 initWithBundleIdentifier_];

  return v4;
}

id sub_268C4C55C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_268C5A7F0();

  v4 = [v2 initWithLocaleIdentifier_];

  return v4;
}

uint64_t sub_268C4C5D0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39C0, &unk_268C5B850);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_33();
  (*(v4 + 104))(v2, *MEMORY[0x277D858A0]);
  return sub_268C5A8F0();
}

void sub_268C4C6D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26();
  sub_268C5A7C0();
  OUTLINED_FUNCTION_0();
  v107 = v4;
  v108 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v106 = v6 - v5;
  OUTLINED_FUNCTION_41();
  v7 = sub_268C5A780();
  OUTLINED_FUNCTION_0();
  v112 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v110 = v11 - v10;
  OUTLINED_FUNCTION_41();
  v12 = sub_268C5A7E0();
  OUTLINED_FUNCTION_0();
  v113 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_0();
  v111 = (v15 - v16);
  MEMORY[0x28223BE20](v17);
  v114 = &v101 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3998, &qword_268C5B838);
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v19);
  v21 = &v101 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39A0, &qword_268C5B840);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_0();
  v25 = (v23 - v24);
  MEMORY[0x28223BE20](v26);
  v115 = &v101 - v27;
  OUTLINED_FUNCTION_41();
  v28 = sub_268C5A750();
  OUTLINED_FUNCTION_0();
  v116 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_0();
  v33 = v31 - v32;
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v101 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v101 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v109 = &v101 - v42;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_34();
  if (sub_268C4D270())
  {
    if (qword_2802D3430 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802D3430);
    }

    v43 = v28;
    OUTLINED_FUNCTION_16(v28, qword_2802D4560);
    v44 = v116;
    v45 = OUTLINED_FUNCTION_31();
    v46(v45);
    v47 = sub_268C5A740();
    v48 = sub_268C5A920();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = OUTLINED_FUNCTION_28();
      *v49 = 0;
      _os_log_impl(&dword_268C47000, v47, v48, "checkForSafariOnScreen device is locked or on lock screen, skipping check and returning false", v49, 2u);
      OUTLINED_FUNCTION_18();
    }

    (*(v44 + 8))(v2, v43);
  }

  else
  {
    v50 = sub_268C5A5D0();
    OUTLINED_FUNCTION_50(v50);
    v105 = sub_268C5A5C0();
    v51 = MEMORY[0x26D629050]();
    if (v51)
    {
      v101 = v7;
      v102 = v12;
      v52 = v51;
      sub_268C5A720();
      v53 = sub_268C5A710();
      v54 = sub_268C5A7A0();
      OUTLINED_FUNCTION_50(v54);

      v103 = v52;
      OUTLINED_FUNCTION_17();
      sub_268C5A790();
      sub_268C5A7D0();
      OUTLINED_FUNCTION_42();
      __swift_storeEnumTagSinglePayload(v55, v56, v57, v58);
      v59 = v115;
      v104 = v53;
      sub_268C5A700();

      sub_268C50968(v21, &qword_2802D3998, &qword_268C5B838);
      sub_268C505B8(v59, v25, &qword_2802D39A0, &qword_268C5B840);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v60 = *v25;
        if (qword_2802D3430 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_2802D3430);
        }

        v61 = v28;
        OUTLINED_FUNCTION_16(v28, qword_2802D4560);
        v62 = v116;
        (*(v116 + 16))(v37);
        MEMORY[0x26D6298C0](v60);
        v63 = sub_268C5A740();
        v64 = sub_268C5A930();

        if (os_log_type_enabled(v63, v64))
        {
          v65 = OUTLINED_FUNCTION_29();
          v66 = OUTLINED_FUNCTION_37();
          v117 = v60;
          v118 = v66;
          *v65 = 136315138;
          MEMORY[0x26D6298C0](v60);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3970, &qword_268C5B670);
          OUTLINED_FUNCTION_43();
          v67 = sub_268C5A810();
          v69 = sub_268C56F44(v67, v68, &v118);

          *(v65 + 4) = v69;
          _os_log_impl(&dword_268C47000, v63, v64, "checkForSafariOnScreen | Received a failure: %s -> nil", v65, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v66);
          OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_18();
        }

        (*(v62 + 8))(v37, v61);
        sub_268C50968(v115, &qword_2802D39A0, &qword_268C5B840);
      }

      else
      {
        v76 = v113;
        v75 = v114;
        v77 = v102;
        (*(v113 + 32))(v114, v25, v102);
        v78 = v111;
        (*(v76 + 16))(v111, v75, v77);
        if ((*(v76 + 88))(v78, v77) == *MEMORY[0x277D5FEC0])
        {
          (*(v76 + 96))(v78, v77);
          v79 = v110;
          (*(v112 + 32))(v110, v78, v101);
          v80 = v116;
          if (qword_2802D3420 != -1)
          {
            swift_once();
          }

          v81 = qword_2802D4550;
          v82 = v106;
          sub_268C5A770();
          v83 = sub_268C5A7B0();
          v85 = v84;
          (*(v107 + 8))(v82, v108);
          v86 = sub_268C54A10(v83, v85, v81);

          v87 = v109;
          if (qword_2802D3430 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_2802D3430);
          }

          OUTLINED_FUNCTION_16(v28, qword_2802D4560);
          (*(v80 + 16))(v87);
          v88 = sub_268C5A740();
          v89 = sub_268C5A920();
          if (os_log_type_enabled(v88, v89))
          {
            v90 = OUTLINED_FUNCTION_29();
            v91 = OUTLINED_FUNCTION_37();
            v118 = v91;
            *v90 = 136315138;
            if (v86)
            {
              v92 = 0x686374616DLL;
            }

            else
            {
              v92 = 0x686374616D206F6ELL;
            }

            if (v86)
            {
              v93 = 0xE500000000000000;
            }

            else
            {
              v93 = 0xE800000000000000;
            }

            v94 = v76;
            v95 = sub_268C56F44(v92, v93, &v118);

            *(v90 + 4) = v95;
            _os_log_impl(&dword_268C47000, v88, v89, "checkForSafariOnScreen %s found for SiriReaderFlowProvider bundles", v90, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v91);
            OUTLINED_FUNCTION_18();
            OUTLINED_FUNCTION_18();

            (*(v80 + 8))(v109, v28);
            (*(v112 + 8))(v110, v101);
            (*(v94 + 8))(v114, v102);
          }

          else
          {

            (*(v80 + 8))(v87, v28);
            (*(v112 + 8))(v79, v101);
            (*(v76 + 8))(v114, v77);
          }

          sub_268C50968(v115, &qword_2802D39A0, &qword_268C5B840);
        }

        else
        {
          v96 = v116;
          if (qword_2802D3430 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_2802D3430);
          }

          OUTLINED_FUNCTION_16(v28, qword_2802D4560);
          (*(v96 + 16))(v40);
          v97 = sub_268C5A740();
          v98 = sub_268C5A920();
          if (os_log_type_enabled(v97, v98))
          {
            v99 = OUTLINED_FUNCTION_28();
            OUTLINED_FUNCTION_44(v99);
            _os_log_impl(&dword_268C47000, v97, v98, "checkForSafariOnScreen no candidate found", v53, 2u);
            OUTLINED_FUNCTION_18();
          }

          (*(v96 + 8))(v40, v28);
          v100 = *(v76 + 8);
          v100(v114, v77);
          sub_268C50968(v115, &qword_2802D39A0, &qword_268C5B840);
          v100(v78, v77);
        }
      }
    }

    else
    {
      if (qword_2802D3430 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_2802D3430);
      }

      v70 = v28;
      OUTLINED_FUNCTION_16(v28, qword_2802D4560);
      v71 = v116;
      (*(v116 + 16))(v33);
      v72 = sub_268C5A740();
      v73 = sub_268C5A920();
      if (OUTLINED_FUNCTION_38(v73))
      {
        v74 = OUTLINED_FUNCTION_28();
        *v74 = 0;
        _os_log_impl(&dword_268C47000, v72, v73, "checkForSafariOnScreen UsoEntityBuilder_common_App | unable to convert entity builder to entity", v74, 2u);
        OUTLINED_FUNCTION_18();
      }

      else
      {
      }

      (*(v71 + 8))(v33, v70);
    }
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_268C4D270()
{
  v0 = sub_268C5A450();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  sub_268C5A4B0();
  __swift_project_boxed_opaque_existential_1(v9, v10);
  sub_268C5A440();
  v7 = sub_268C5A3A0();
  (*(v2 + 8))(v6, v0);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_268C5A4B0();
  __swift_project_boxed_opaque_existential_1(v9, v10);
  OUTLINED_FUNCTION_11();
  LOBYTE(v0) = sub_268C5A380();
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v0 & 1 | ((v7 & 1) == 0);
}

uint64_t sub_268C4D398()
{
  sub_268C50968(v0 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_entity, &qword_2802D3A38, &qword_268C5B8A8);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_aceServiceInvoker));
  sub_268C50968(v0 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_outputPublisher, &qword_2802D39D8, &qword_268C5B980);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC17SiriReaderIntents12ReadThisFlow_deviceState));
  return v0;
}

uint64_t sub_268C4D424()
{
  sub_268C4D398();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_268C4D4A4(uint64_t a1)
{
  sub_268C4D554(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_268C4D554(uint64_t a1)
{
  if (!qword_2802D38D8)
  {
    sub_268C5A7C0();
    v1 = sub_268C5A970();
    if (!v2)
    {
      atomic_store(v1, &qword_2802D38D8);
    }
  }
}

uint64_t sub_268C4D5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_268C4D678;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_268C4D678()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  OUTLINED_FUNCTION_13();
  v3 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_268C4D788()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268C4D824;

  return sub_268C4A214();
}

uint64_t sub_268C4D824()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  OUTLINED_FUNCTION_9();

  return v3();
}

uint64_t sub_268C4D904(uint64_t a1, uint64_t a2)
{
  ThisFlow = type metadata accessor for ReadThisFlow(0);

  return MEMORY[0x2821BA658](ThisFlow, a2);
}

uint64_t sub_268C4D944(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D3980, &qword_268C5B7D8);
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-1] - v9;
  (*(v11 + 16))(&v18[-1] - v9, a1, v8);
  sub_268C5A370();
  v12 = objc_allocWithZone(type metadata accessor for ReadThisAppIntentConnectionDelegate(0));
  v13 = sub_268C4DDFC(v10, v18);
  v14 = [a2 executorForAction:a3 options:a4 delegate:v13];
  [v14 perform];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  return sub_268C5A890();
}

uint64_t sub_268C4DAC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_268C5A750();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v37[-v9];
  if (qword_2802D3430 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_2802D4560);
  v12 = *(v5 + 16);
  v12(v10, v11, v4);
  v13 = a3;
  v14 = sub_268C5A740();
  v15 = sub_268C5A920();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v42 = v5;
    v17 = v16;
    v39 = v16;
    v40 = swift_slowAlloc();
    v43 = v40;
    *v17 = 136315138;
    v18 = v13;
    v19 = [v18 description];
    v41 = v8;
    v20 = v19;
    v21 = v12;
    v22 = v11;
    v23 = sub_268C5A800();
    v38 = v15;
    v25 = v24;

    v26 = v23;
    v11 = v22;
    v12 = v21;
    v27 = sub_268C56F44(v26, v25, &v43);

    v28 = v39;
    *(v39 + 4) = v27;
    v8 = v41;
    _os_log_impl(&dword_268C47000, v14, v38, "Stopping executor %s", v28, 0xCu);
    v29 = v40;
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x26D6299D0](v29, -1, -1);
    v5 = v42;
    MEMORY[0x26D6299D0](v28, -1, -1);
  }

  v30 = *(v5 + 8);
  v30(v10, v4);
  v12(v8, v11, v4);
  v31 = sub_268C5A740();
  v32 = sub_268C5A920();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = v8;
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_268C47000, v31, v32, "AsyncStream terminated", v34, 2u);
    v35 = v34;
    v8 = v33;
    MEMORY[0x26D6299D0](v35, -1, -1);
  }

  return (v30)(v8, v4);
}

id sub_268C4DDFC(uint64_t a1, void *a2)
{
  sub_268C50618(a2, &v2[OBJC_IVAR____TtC17SiriReaderIntents35ReadThisAppIntentConnectionDelegate_aceService]);
  v5 = OBJC_IVAR____TtC17SiriReaderIntents35ReadThisAppIntentConnectionDelegate_continuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D3980, &qword_268C5B7D8);
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ReadThisAppIntentConnectionDelegate(0);
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1(a2);
  (*(v7 + 8))(a1, v6);
  return v8;
}

void sub_268C4DF8C(uint64_t a1, uint64_t a2, const char *a3, ...)
{
  OUTLINED_FUNCTION_26();
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3978, &qword_268C5B7D0);
  OUTLINED_FUNCTION_0();
  v24 = v10;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_33();
  v12 = sub_268C5A750();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_46();
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  OUTLINED_FUNCTION_16(v12, qword_2802D4560);
  v16 = OUTLINED_FUNCTION_31();
  v17(v16);
  v18 = v8;
  v19 = sub_268C5A740();
  v20 = sub_268C5A920();

  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_29();
    v21 = OUTLINED_FUNCTION_39();
    *v6 = 138412290;
    *(v6 + 4) = v18;
    *v21 = v18;
    v22 = v18;
    _os_log_impl(&dword_268C47000, v19, v20, v6, v6, 0xCu);
    sub_268C50968(v21, &qword_2802D3A80, &qword_268C5B7E0);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();
  }

  (*(v14 + 8))(v3, v12);
  v23 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D3980, &qword_268C5B7D8);
  OUTLINED_FUNCTION_43();
  sub_268C5A8A0();
  (*(v24 + 8))(v4, v9);
  OUTLINED_FUNCTION_22();
}

void sub_268C4E2FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26();
  v39 = v2;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3978, &qword_268C5B7D0);
  OUTLINED_FUNCTION_0();
  v37 = v6;
  v38 = v5;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v7);
  v36 = &v34 - v8;
  OUTLINED_FUNCTION_41();
  v9 = sub_268C5A750();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_34();
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  v17 = __swift_project_value_buffer(v9, qword_2802D4560);
  v35 = *(v11 + 16);
  v35(v2, v17, v9);
  v18 = v4;
  v19 = sub_268C5A740();
  v20 = sub_268C5A920();

  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_29();
    v34 = v15;
    v21 = OUTLINED_FUNCTION_39();
    *v15 = 138412290;
    *(v15 + 4) = v18;
    *v21 = v18;
    v22 = v18;
    _os_log_impl(&dword_268C47000, v19, v20, "ReadThisAppIntentConnectionDelegate got LNNeedsValueRequest: %@", v15, 0xCu);
    sub_268C50968(v21, &qword_2802D3A80, &qword_268C5B7E0);
    OUTLINED_FUNCTION_18();
    v15 = v34;
    OUTLINED_FUNCTION_18();
  }

  v23 = *(v11 + 8);
  v23(v2, v9);
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v35(v15, v17, v9);
    v26 = v18;
    v27 = sub_268C5A740();
    v28 = sub_268C5A940();
    if (OUTLINED_FUNCTION_38(v28))
    {
      v29 = OUTLINED_FUNCTION_28();
      *v29 = 0;
      _os_log_impl(&dword_268C47000, v27, v28, "ReadThisAppIntentConnectionDelegate#executor(_:needsValueWith:) got called erronously with an LNSuccessResult", v29, 2u);
      OUTLINED_FUNCTION_18();
    }

    v23(v15, v9);
    v40 = v25;
    v41 = 5;
    v30 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D3980, &qword_268C5B7D8);
    v31 = v36;
    sub_268C5A8A0();
    (*(v37 + 8))(v31, v38);
    v40 = 0;
    sub_268C5A8B0();
  }

  else
  {
    v40 = v18;
    v41 = 0;
    v32 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D3980, &qword_268C5B7D8);
    OUTLINED_FUNCTION_43();
    v33 = v36;
    sub_268C5A8A0();
    (*(v37 + 8))(v33, v38);
  }

  OUTLINED_FUNCTION_22();
}

void sub_268C4E740(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26();
  v59 = v4;
  v60 = v2;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D3980, &qword_268C5B7D8);
  OUTLINED_FUNCTION_0();
  v58 = v8;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  v11 = &v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3978, &qword_268C5B7D0);
  OUTLINED_FUNCTION_0();
  v14 = v13;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_32();
  v16 = sub_268C5A750();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_5_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_34();
  if (v6)
  {
    v25 = MEMORY[0x26D6298C0](v6);
    if (qword_2802D3430 != -1)
    {
      v25 = OUTLINED_FUNCTION_0_0(&qword_2802D3430);
    }

    OUTLINED_FUNCTION_8(v25, qword_2802D4560);
    v26 = v18;
    v27 = OUTLINED_FUNCTION_19();
    v28(v27);
    MEMORY[0x26D6298C0](v6);
    v29 = sub_268C5A740();
    v30 = sub_268C5A920();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = OUTLINED_FUNCTION_29();
      v32 = OUTLINED_FUNCTION_37();
      v61 = v6;
      v62 = v32;
      *v31 = 136315138;
      MEMORY[0x26D6298C0](v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3970, &qword_268C5B670);
      v33 = sub_268C5A810();
      v57 = v16;
      v35 = sub_268C56F44(v33, v34, &v62);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_268C47000, v29, v30, "ReadThisAppIntentConnectionDelegate finished with error: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_18();

      (*(v26 + 8))(v2, v57);
    }

    else
    {

      (*(v26 + 8))(v2, v16);
    }

    v62 = v6;
    MEMORY[0x26D6298C0](v6);
    sub_268C5A8B0();

    goto LABEL_15;
  }

  v55 = v3;
  v56 = v14;
  v52 = v12;
  v53 = v11;
  v36 = v59;
  v54 = v7;
  if (qword_2802D3430 != -1)
  {
    v24 = OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  OUTLINED_FUNCTION_8(v24, qword_2802D4560);
  v37 = v18;
  (*(v18 + 16))(v22);
  v38 = v36;
  v39 = v36;
  v40 = sub_268C5A740();
  v41 = sub_268C5A920();

  v42 = os_log_type_enabled(v40, v41);
  v43 = v55;
  v44 = v56;
  if (v42)
  {
    v57 = v16;
    OUTLINED_FUNCTION_29();
    v45 = OUTLINED_FUNCTION_39();
    *v16 = 138412290;
    if (!v36)
    {
      goto LABEL_17;
    }

    v46 = v45;
    *(v16 + 4) = v39;
    *v45 = v38;
    v47 = v39;
    _os_log_impl(&dword_268C47000, v40, v41, "ReadThisAppIntentConnectionDelegate finished with result: %@", v16, 0xCu);
    sub_268C50968(v46, &qword_2802D3A80, &qword_268C5B7E0);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();
    v16 = v57;
  }

  (*(v37 + 8))(v22, v16);
  v48 = v58;
  v49 = v53;
  v50 = v54;
  (*(v58 + 16))(v53, v60 + OBJC_IVAR____TtC17SiriReaderIntents35ReadThisAppIntentConnectionDelegate_continuation, v54);
  if (v38)
  {
    v62 = v38;
    v63 = 5;
    v51 = v39;
    sub_268C5A8A0();
    (*(v48 + 8))(v49, v50);
    (*(v44 + 8))(v43, v52);
    v62 = 0;
    sub_268C5A8B0();
LABEL_15:
    OUTLINED_FUNCTION_22();
    return;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_268C4ECC4()
{
  OUTLINED_FUNCTION_10();
  v1 = sub_268C5A750();
  v0[2] = v1;
  OUTLINED_FUNCTION_12(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_268C4ED68()
{
  OUTLINED_FUNCTION_27();
  if (qword_2802D3430 != -1)
  {
    v1 = OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  OUTLINED_FUNCTION_8(v1, qword_2802D4560);
  v2 = OUTLINED_FUNCTION_19();
  v3(v2);
  v4 = sub_268C5A740();
  v5 = sub_268C5A920();
  if (OUTLINED_FUNCTION_38(v5))
  {
    v6 = OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_44(v6);
    OUTLINED_FUNCTION_25(&dword_268C47000, v7, v8, "ReadThisAppIntentConnectionDelegate executorEnvironmentForViewSnippet");
    OUTLINED_FUNCTION_18();
  }

  v9 = OUTLINED_FUNCTION_11();
  v10(v9);

  v11 = *(v0 + 8);

  return v11(0);
}

uint64_t sub_268C4EEFC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_268C4EFB4;

  return sub_268C4ECC4();
}

uint64_t sub_268C4EFB4()
{
  OUTLINED_FUNCTION_27();
  v2 = v1;
  OUTLINED_FUNCTION_13();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v8 = v7;

  (v4)[2](v4, v2);
  _Block_release(v4);

  OUTLINED_FUNCTION_9();

  return v9();
}

uint64_t sub_268C4F104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3990, &qword_268C5B7F8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_268C5A880();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_268C5B808;
  v9[5] = v8;
  sub_268C4FD20(0, 0, v6, &unk_268C5B818, v9);
}

uint64_t sub_268C4F214()
{
  v1 = sub_268C5A750();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_46();
  if (qword_2802D3430 != -1)
  {
    v5 = OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  OUTLINED_FUNCTION_8(v5, qword_2802D4560);
  v6 = OUTLINED_FUNCTION_19();
  v7(v6);
  v8 = sub_268C5A740();
  v9 = sub_268C5A920();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_28();
    *v10 = 0;
    _os_log_impl(&dword_268C47000, v8, v9, "ReadThisAppIntentConnectionDelegate shouldRunShowOutputAction return false", v10, 2u);
    OUTLINED_FUNCTION_18();
  }

  (*(v3 + 8))(v0, v1);
  return 0;
}

void sub_268C4F3B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_26();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3978, &qword_268C5B7D0);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  OUTLINED_FUNCTION_15();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_33();
  v10 = sub_268C5A750();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_46();
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  OUTLINED_FUNCTION_16(v10, qword_2802D4560);
  v14 = OUTLINED_FUNCTION_31();
  v15(v14);
  v16 = sub_268C5A740();
  v17 = sub_268C5A920();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = OUTLINED_FUNCTION_28();
    *v18 = 0;
    _os_log_impl(&dword_268C47000, v16, v17, "ReadThisAppIntentConnectionDelegate needsContinueInAppWith request", v18, 2u);
    OUTLINED_FUNCTION_18();
  }

  (*(v12 + 8))(v2, v10);
  v19 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D3980, &qword_268C5B7D8);
  OUTLINED_FUNCTION_43();
  sub_268C5A8A0();
  (*(v8 + 8))(v3, v6);
  OUTLINED_FUNCTION_22();
}

id sub_268C4F6A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadThisAppIntentConnectionDelegate(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_268C4F784(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_268C4F7BC(uint64_t a1)
{
  sub_268C4F858(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_268C4F858(uint64_t a1)
{
  if (!qword_2802D3968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D3970, &qword_268C5B670);
    v1 = sub_268C5A8C0();
    if (!v2)
    {
      atomic_store(v1, &qword_2802D3968);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_268C4F934(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 9))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 5)
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

uint64_t sub_268C4F974(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 8) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

id sub_268C4FA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v15 = sub_268C5A7F0();

  if (a4)
  {
    v16 = sub_268C5A7F0();
  }

  else
  {
    v16 = 0;
  }

  sub_268C508CC(0, &qword_2802D39C8, 0x277D23938);
  v17 = sub_268C5A850();

  sub_268C508CC(0, &qword_2802D39D0, 0x277D238D8);
  v18 = sub_268C5A850();

  v19 = [v10 initWithIdentifier:v15 mangledTypeName:v16 openAppWhenRun:a5 & 1 outputFlags:a6 outputType:a7 systemProtocols:v17 parameters:v18];

  return v19;
}

uint64_t sub_268C4FB50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_268C50A3C;

  return v6();
}

uint64_t sub_268C4FC38(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_268C50A3C;

  return v7();
}

uint64_t sub_268C4FD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3990, &qword_268C5B7F8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - v10;
  sub_268C505B8(a3, v22 - v10, &qword_2802D3990, &qword_268C5B7F8);
  v12 = sub_268C5A880();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_268C50968(v11, &qword_2802D3990, &qword_268C5B7F8);
  }

  else
  {
    sub_268C5A870();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_268C5A860();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_268C5A820() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_268C50968(a3, &qword_2802D3990, &qword_268C5B7F8);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_268C50968(a3, &qword_2802D3990, &qword_268C5B7F8);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_268C4FFFC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_268C500F4;

  return v6(a1);
}

uint64_t sub_268C500F4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  v1 = *v0;
  OUTLINED_FUNCTION_3_0();
  *v2 = v1;

  OUTLINED_FUNCTION_9();

  return v3();
}

uint64_t sub_268C501D8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_268C50220()
{
  OUTLINED_FUNCTION_27();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268C4D824;
  v2 = OUTLINED_FUNCTION_11();

  return v3(v2);
}

uint64_t sub_268C502D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268C50A3C;
  v2 = OUTLINED_FUNCTION_11();

  return v3(v2);
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_268C503CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v2 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_268C50A3C;

  return sub_268C4FC38(a1, v4, v5, v6);
}

uint64_t sub_268C50494()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268C504CC()
{
  OUTLINED_FUNCTION_27();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_20(v1);

  return v4(v3);
}

uint64_t sub_268C50570()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268C505B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_268C50618(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_268C5067C()
{
  OUTLINED_FUNCTION_27();
  v3 = v2;
  v4 = *(v0 + 24);
  v5 = *(v0 + 16);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_268C4D824;

  return sub_268C4B5F4(v3, v5, v4);
}

uint64_t sub_268C50724(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

uint64_t sub_268C5079C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_268C507DC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_268C5A7F0();

  [a3 *a4];
}

void sub_268C50848(uint64_t a1, void *a2)
{
  sub_268C508CC(0, &qword_2802D3A10, 0x277D47140);
  v3 = sub_268C5A850();

  [a2 setViews_];
}

uint64_t sub_268C508CC(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_268C5090C(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_268C50920(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268C50968(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_0();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_268C509C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A38, &qword_268C5B8A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_18()
{

  JUMPOUT(0x26D6299D0);
}

uint64_t OUTLINED_FUNCTION_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_268C5A3E0();
}

uint64_t OUTLINED_FUNCTION_24()
{
}

void OUTLINED_FUNCTION_25(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_36@<X0>(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((a1 + v1), *(a1 + v1 + 24));

  return sub_268C5A3B0();
}

uint64_t OUTLINED_FUNCTION_37()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_38(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_39()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_40()
{
}

uint64_t OUTLINED_FUNCTION_49()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_50(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_268C50E80(uint64_t a1)
{
  v2 = sub_268C5A490();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_268C5A750();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  v16 = __swift_project_value_buffer(v9, qword_2802D4560);
  (*(v11 + 16))(v15, v16, v9);
  (*(v4 + 16))(v8, a1, v2);
  v17 = sub_268C5A740();
  v18 = sub_268C5A910();
  if (os_log_type_enabled(v17, v18))
  {
    v26 = v9;
    v19 = OUTLINED_FUNCTION_29();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v19 = 136315138;
    sub_268C5404C(&qword_2802D3A30, 255, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v20 = sub_268C5AA40();
    v22 = v21;
    (*(v4 + 8))(v8, v2);
    v23 = sub_268C56F44(v20, v22, &v27);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_268C47000, v17, v18, "ReadThisFlow.on input: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();

    (*(v11 + 8))(v15, v26);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
    (*(v11 + 8))(v15, v9);
  }

  return 1;
}

uint64_t sub_268C51164(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ScreenReaderFlow();
  sub_268C5404C(&qword_2802D3A88, v2, type metadata accessor for ScreenReaderFlow, &unk_268C5B928);
  return sub_268C5A2B0();
}

uint64_t sub_268C511F0()
{
  OUTLINED_FUNCTION_10();
  v1[18] = v2;
  v1[19] = v0;
  v3 = sub_268C5A430();
  v1[20] = v3;
  OUTLINED_FUNCTION_12(v3);
  v1[21] = v4;
  v1[22] = OUTLINED_FUNCTION_49();
  v5 = sub_268C5A750();
  v1[23] = v5;
  OUTLINED_FUNCTION_12(v5);
  v1[24] = v6;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268C5137C()
{
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  v1 = v0[37];
  v2 = v0[23];
  v3 = v0[24];
  v4 = __swift_project_value_buffer(v2, qword_2802D4560);
  v0[38] = v4;
  v5 = *(v3 + 16);
  v0[39] = v5;
  v0[40] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_268C5A740();
  v7 = sub_268C5A910();
  if (OUTLINED_FUNCTION_17_0(v7))
  {
    *OUTLINED_FUNCTION_28() = 0;
    OUTLINED_FUNCTION_25(&dword_268C47000, v8, v9, "Entering ScreenReaderFlow");
    OUTLINED_FUNCTION_18();
  }

  v10 = v0[37];
  v11 = v0[23];
  v12 = v0[24];

  v13 = *(v12 + 8);
  v0[41] = v13;
  v13(v10, v11);
  v14 = [objc_allocWithZone(MEMORY[0x277D47118]) init];
  v0[42] = v14;
  sub_268C5A370();
  v15 = v0[5];
  v16 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
  v17 = swift_task_alloc();
  v0[43] = v17;
  v18 = sub_268C508CC(0, &unk_2802D3A70, 0x277D471B0);
  *v17 = v0;
  v17[1] = sub_268C51550;

  return MEMORY[0x2821BB6A0](v14, v15, v18, v16);
}

uint64_t sub_268C51550()
{
  OUTLINED_FUNCTION_10();
  v3 = v2;
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_1();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v7 = v6;
  *(v8 + 352) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_268C51654(uint64_t a1)
{
  v2 = *(v1 + 336);
  sub_268C5A400();

  OUTLINED_FUNCTION_18_0();

  OUTLINED_FUNCTION_9();

  return v3();
}

uint64_t sub_268C51754()
{
  v1 = v0;
  *(v0 + 136) = *(v0 + 352);
  v2 = v0 + 136;
  MEMORY[0x26D6298C0]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3970, &qword_268C5B670);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_28;
  }

  v3 = (*(*(v0 + 168) + 88))(*(v0 + 176), *(v0 + 160));
  if (v3 == *MEMORY[0x277D5BE70])
  {
    v4 = *(v0 + 312);
    v5 = *(v0 + 224);
    v6 = *(v1 + 176);
    v7 = *(v1 + 160);
    v8 = *(v1 + 168);

    (*(v8 + 96))(v6, v7);
    v9 = *v6;
    v10 = OUTLINED_FUNCTION_28_0();
    v4(v10);
    MEMORY[0x26D6298C0](v9);
    v11 = sub_268C5A740();
    v12 = sub_268C5A910();

    if (os_log_type_enabled(v11, v12))
    {
      OUTLINED_FUNCTION_29();
      v13 = OUTLINED_FUNCTION_23_0();
      *v5 = 138412290;
      MEMORY[0x26D6298C0](v9);
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v14;
      *v13 = v14;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v15, v16, v17, v18, v19, 0xCu);
      sub_268C53FEC(v13, &qword_2802D3A80, &qword_268C5B7E0);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
    }

    (*(v1 + 328))(*(v1 + 224), *(v1 + 184));
    goto LABEL_43;
  }

  if (v3 != *MEMORY[0x277D5BE80])
  {
    if (v3 == *MEMORY[0x277D5BE88])
    {
      v30 = *(v0 + 312);
      v31 = *(v0 + 216);
      v32 = *(v1 + 176);
      v33 = *(v1 + 160);
      v34 = *(v1 + 168);

      (*(v34 + 96))(v32, v33);
      v35 = *v32;
      v36 = OUTLINED_FUNCTION_28_0();
      v30(v36);
      v37 = v35;
      v38 = sub_268C5A740();
      LOBYTE(v33) = sub_268C5A910();

      if (os_log_type_enabled(v38, v33))
      {
        OUTLINED_FUNCTION_29();
        v39 = OUTLINED_FUNCTION_23_0();
        *v31 = 138412290;
        *(v31 + 4) = v37;
        *v39 = v37;
        v40 = v37;
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
        sub_268C53FEC(v39, &qword_2802D3A80, &qword_268C5B7E0);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
        v40 = v38;
        v38 = v37;
      }

      v72 = *(v1 + 328);
      v73 = *(v1 + 216);
      v74 = *(v1 + 184);

      v72(v73, v74);
      goto LABEL_43;
    }

    if (v3 == *MEMORY[0x277D5BE78])
    {
      v59 = *(v0 + 312);

      v60 = OUTLINED_FUNCTION_28_0();
      v59(v60);
      v61 = sub_268C5A740();
      v62 = sub_268C5A910();
      if (OUTLINED_FUNCTION_17_0(v62))
      {
        v63 = OUTLINED_FUNCTION_28();
        OUTLINED_FUNCTION_11_0(v63);
        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v64, v65, v66, v67, v68, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v69 = *(v0 + 328);
      v70 = *(v0 + 208);
      v71 = *(v1 + 184);

      v69(v70, v71);
      goto LABEL_43;
    }

    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
LABEL_28:
    v75 = *(v0 + 352);
    v76 = *(v1 + 312);
    v77 = *(v1 + 304);
    v78 = *(v1 + 200);
    v79 = *(v1 + 184);

    v76(v78, v77, v79);
    MEMORY[0x26D6298C0](v75);
    v80 = sub_268C5A740();
    LOBYTE(v79) = sub_268C5A910();

    v81 = os_log_type_enabled(v80, v79);
    v82 = *(v1 + 352);
    if (v81)
    {
      OUTLINED_FUNCTION_29();
      v83 = OUTLINED_FUNCTION_23_0();
      *v75 = 138412290;
      MEMORY[0x26D6298C0](v82);
      v84 = _swift_stdlib_bridgeErrorToNSError();
      *(v75 + 1) = v84;
      *v83 = v84;
      OUTLINED_FUNCTION_15_0();
      _os_log_impl(v85, v86, v87, v88, v89, 0xCu);
      sub_268C53FEC(v83, &qword_2802D3A80, &qword_268C5B7E0);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
    }

    (*(v1 + 328))(*(v1 + 200), *(v1 + 184));
    goto LABEL_44;
  }

  v20 = *(v0 + 168);
  v21 = *(v0 + 176);
  v22 = *(v1 + 160);

  (*(v20 + 96))(v21, v22);
  v23 = *v21;
  v24 = [*v21 errorCode];
  if (*MEMORY[0x277D47BD0] == v24)
  {
    OUTLINED_FUNCTION_16_0();
    v25 = (v1 + 288);
    v26 = OUTLINED_FUNCTION_27_0();
    v27(v26);
    v28 = sub_268C5A740();
    v29 = sub_268C5A910();
    if (OUTLINED_FUNCTION_14_0(v29))
    {
      goto LABEL_35;
    }

LABEL_41:
    v99 = v28;
    v28 = v23;
    goto LABEL_42;
  }

  if (*MEMORY[0x277D47BD8] == v24)
  {
    v128 = v23;
    v46 = (v2 - 40);
    OUTLINED_FUNCTION_16_0();
    v47 = OUTLINED_FUNCTION_27_0();
    v48(v47);
    v49 = sub_268C5A740();
    v50 = sub_268C5A910();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_11_0(v51);
      OUTLINED_FUNCTION_32_0(&dword_268C47000, v52, v53, "Handling SAAXScreenReaderNothingToSpeakErrorCode");
      OUTLINED_FUNCTION_4_1();
    }

    v54 = *(v1 + 328);
    v55 = *(v1 + 336);
    v56 = *(v1 + 280);
    v57 = *(v1 + 184);

    v54(v56, v57);
    sub_268C52CF4(v46);
    v58 = *(v1 + 120);
    goto LABEL_18;
  }

  if (*MEMORY[0x277D47BE8] == v24)
  {
    OUTLINED_FUNCTION_16_0();
    v25 = (v1 + 272);
    goto LABEL_34;
  }

  if (*MEMORY[0x277D47BF0] == v24)
  {
    OUTLINED_FUNCTION_16_0();
    v25 = (v1 + 264);
LABEL_34:
    v90 = OUTLINED_FUNCTION_27_0();
    v91(v90);
    v28 = sub_268C5A740();
    v92 = sub_268C5A910();
    if (!OUTLINED_FUNCTION_14_0(v92))
    {
      goto LABEL_41;
    }

    goto LABEL_35;
  }

  if (*MEMORY[0x277D47BC0] == v24)
  {
    OUTLINED_FUNCTION_16_0();
    v25 = (v1 + 256);
    v100 = OUTLINED_FUNCTION_27_0();
    v101(v100);
    v28 = sub_268C5A740();
    v102 = sub_268C5A910();
    if (OUTLINED_FUNCTION_14_0(v102))
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  if (*MEMORY[0x277D47BC8] != v24)
  {
    OUTLINED_FUNCTION_16_0();
    if (v112 != v111)
    {
      v25 = (v1 + 232);
      v110(*(v1 + 232));
      v99 = v23;
      v28 = sub_268C5A740();
      v121 = sub_268C5A910();
      if (OUTLINED_FUNCTION_17_0(v121))
      {
        v122 = OUTLINED_FUNCTION_29();
        *v122 = 134217984;
        *(v122 + 4) = [v99 errorCode];

        OUTLINED_FUNCTION_15_0();
        _os_log_impl(v123, v124, v125, v126, v127, 0xCu);
        OUTLINED_FUNCTION_4_1();
      }

      else
      {

        v28 = v99;
      }

      goto LABEL_42;
    }

    v128 = v23;
    v46 = (v2 - 80);
    v110(*(v1 + 240));
    v113 = sub_268C5A740();
    v114 = sub_268C5A910();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = OUTLINED_FUNCTION_28();
      OUTLINED_FUNCTION_11_0(v115);
      OUTLINED_FUNCTION_32_0(&dword_268C47000, v116, v117, "Handling SAAXScreenReaderSettingNotEnabledErrorCode");
      OUTLINED_FUNCTION_4_1();
    }

    v118 = *(v1 + 328);
    v55 = *(v1 + 336);
    v119 = *(v1 + 240);
    v120 = *(v1 + 184);

    v118(v119, v120);
    sub_268C52130(v46);
    v58 = *(v1 + 80);
LABEL_18:
    __swift_project_boxed_opaque_existential_1(v46, v58);
    sub_268C5A3F0();

    __swift_destroy_boxed_opaque_existential_1(v46);
    goto LABEL_45;
  }

  v25 = (v1 + 248);
  (*(v1 + 312))(*(v1 + 248), *(v1 + 304), *(v1 + 184));
  v28 = sub_268C5A740();
  v103 = sub_268C5A910();
  if (!OUTLINED_FUNCTION_14_0(v103))
  {
    goto LABEL_41;
  }

LABEL_35:
  v93 = OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_11_0(v93);
  OUTLINED_FUNCTION_15_0();
  _os_log_impl(v94, v95, v96, v97, v98, 2u);
  OUTLINED_FUNCTION_4_1();
  v99 = v23;
LABEL_42:
  v104 = *v25;
  v105 = *(v1 + 328);
  v106 = *(v1 + 184);

  v105(v104, v106);
LABEL_43:

LABEL_44:
  v107 = *(v1 + 336);
  sub_268C5A400();

LABEL_45:
  OUTLINED_FUNCTION_18_0();

  OUTLINED_FUNCTION_9();

  return v108();
}

uint64_t sub_268C52148(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = sub_268C5A750();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D39E0, &qword_268C5B870);
  v2[16] = swift_task_alloc();
  sub_268C5A6F0();
  v2[17] = swift_task_alloc();
  v4 = sub_268C5A420();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268C522C8);
}

uint64_t sub_268C522C8(uint64_t a1)
{
  OUTLINED_FUNCTION_22_0(a1);
  type metadata accessor for ReadThisCATProvider(0);
  v2 = swift_allocObject();
  v1[21] = OUTLINED_FUNCTION_33_0(v2, v3, v4, v5, v6, v7, v8, v9, v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v1[22] = v10;
  *v10 = v11;
  v10[1] = sub_268C52388;
  v12 = v1[20];
  v13 = MEMORY[0x277D84F90];

  return sub_268C5455C(v12, 3, v13);
}

uint64_t sub_268C52388()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268C5248C()
{
  v1 = *(v0 + 152);
  v16 = *(v0 + 160);
  v17 = *(v0 + 144);
  v2 = *(v0 + 128);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  sub_268C508CC(0, &unk_2802D3A50, 0x277D479F0);
  v5 = sub_268C52B08();
  v6 = [objc_allocWithZone(MEMORY[0x277D47A18]) init];
  sub_268C507DC(0x746553206E65704FLL, 0xED000073676E6974, v6, &selRef_setText_);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A08, &qword_268C5B890);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_268C5B5C0;
  *(v7 + 32) = v5;
  v15 = v5;
  sub_268C53F6C(v7, v6);
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  sub_268C5A3B0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_268C5B5C0;
  *(v8 + 32) = v6;
  v9 = sub_268C5A410();
  v10 = OUTLINED_FUNCTION_37_0(v9);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v11 = MEMORY[0x277D5C1D8];
  v3[3] = v10;
  v3[4] = v11;
  __swift_allocate_boxed_opaque_existential_1(v3);
  v12 = v6;
  sub_268C5A3E0();

  sub_268C53FEC(v0 + 16, &unk_2802D3A40, &qword_268C5B878);
  sub_268C53FEC(v2, &unk_2802D39E0, &qword_268C5B870);
  (*(v1 + 8))(v16, v17);

  OUTLINED_FUNCTION_3_1();

  return v13();
}

uint64_t sub_268C52724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30_0();
  a21 = v23;
  a22 = v24;
  a20 = v22;

  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  v25 = v22[23];
  __swift_project_value_buffer(v22[13], qword_2802D4560);
  v26 = OUTLINED_FUNCTION_24_0();
  v27(v26);
  MEMORY[0x26D6298C0](v25);
  v28 = sub_268C5A740();
  v29 = sub_268C5A930();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v22[23];
  v33 = v22[14];
  v32 = v22[15];
  v34 = v22[13];
  if (v30)
  {
    v35 = OUTLINED_FUNCTION_29();
    v36 = swift_slowAlloc();
    a11 = v36;
    OUTLINED_FUNCTION_31_0(4.8149e-34);
    v37 = sub_268C5AA60();
    v39 = sub_268C56F44(v37, v38, &a11);

    *(v35 + 4) = v39;
    OUTLINED_FUNCTION_35_0(&dword_268C47000, v40, v41, "Could not get CAT template: %s");
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();
  }

  else
  {
  }

  (*(v33 + 8))(v32, v34);
  v42 = v22[11];
  v43 = sub_268C5A4E0();
  v44 = MEMORY[0x277D5C1D8];
  v42[3] = v43;
  v42[4] = v44;
  __swift_allocate_boxed_opaque_existential_1(v42);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v22[24] = v45;
  *v45 = v46;
  v45[1] = sub_268C5292C;
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_29_0();

  return sub_268C535FC();
}

uint64_t sub_268C5292C()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_17();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_3_1();

    return v8();
  }
}

uint64_t sub_268C52A78()
{
  OUTLINED_FUNCTION_27();
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 88));

  OUTLINED_FUNCTION_9();

  return v1();
}

id sub_268C52B08()
{
  v0 = sub_268C5A250();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A68, qword_268C5B9C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  OUTLINED_FUNCTION_28_0();
  sub_268C5A210();
  v11 = sub_268C5A220();
  v12 = 0;
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) != 1)
  {
    v12 = sub_268C5A1F0();
    (*(*(v11 - 8) + 8))(v9, v11);
  }

  [v10 setPunchOutUri_];

  v13 = v10;
  sub_268C5A240();
  v14 = sub_268C5A230();
  v16 = v15;
  (*(v2 + 8))(v6, v0);
  sub_268C507DC(v14, v16, v13, &selRef_setAceId_);

  return v13;
}

uint64_t sub_268C52D0C@<X0>(uint64_t *a2@<X8>)
{
  sub_268C53CB8(v2 + 16, &v8);
  if (v9)
  {
    sub_268C50A40(&v8, v10);
  }

  else
  {
    sub_268C53FEC(&v8, &qword_2802D39D8, &qword_268C5B980);
    sub_268C5A480();
  }

  sub_268C50618(v10, &v8);
  v4 = sub_268C5A290();
  swift_allocObject();

  v5 = sub_268C5A280();
  v6 = MEMORY[0x277D5B3F0];
  a2[3] = v4;
  a2[4] = v6;
  *a2 = v5;
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_268C52DE8(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = sub_268C5A750();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D39E0, &qword_268C5B870);
  v2[16] = swift_task_alloc();
  sub_268C5A6F0();
  v2[17] = swift_task_alloc();
  v4 = sub_268C5A420();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_268C52F68);
}

uint64_t sub_268C52F68(uint64_t a1)
{
  OUTLINED_FUNCTION_22_0(a1);
  type metadata accessor for ReadThisCATProvider(0);
  v2 = swift_allocObject();
  v1[21] = OUTLINED_FUNCTION_33_0(v2, v3, v4, v5, v6, v7, v8, v9, v15);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v1[22] = v10;
  *v10 = v11;
  v10[1] = sub_268C53028;
  v12 = v1[20];
  v13 = MEMORY[0x277D84F90];

  return sub_268C5455C(v12, 4, v13);
}

uint64_t sub_268C53028()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 184) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268C5312C()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 128);
  v5 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1((*(v0 + 96) + 56), *(*(v0 + 96) + 80));
  sub_268C5A3B0();
  v6 = sub_268C5A410();
  v7 = OUTLINED_FUNCTION_37_0(v6);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v8 = MEMORY[0x277D5C1D8];
  v5[3] = v7;
  v5[4] = v8;
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_268C5A3E0();
  sub_268C53FEC(v0 + 16, &unk_2802D3A40, &qword_268C5B878);
  sub_268C53FEC(v4, &unk_2802D39E0, &qword_268C5B870);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3_1();

  return v9();
}

uint64_t sub_268C532A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_30_0();
  a21 = v23;
  a22 = v24;
  a20 = v22;

  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  v25 = v22[23];
  __swift_project_value_buffer(v22[13], qword_2802D4560);
  v26 = OUTLINED_FUNCTION_24_0();
  v27(v26);
  MEMORY[0x26D6298C0](v25);
  v28 = sub_268C5A740();
  v29 = sub_268C5A930();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v22[23];
  v33 = v22[14];
  v32 = v22[15];
  v34 = v22[13];
  if (v30)
  {
    v35 = OUTLINED_FUNCTION_29();
    v36 = swift_slowAlloc();
    a11 = v36;
    OUTLINED_FUNCTION_31_0(4.8149e-34);
    v37 = sub_268C5AA60();
    v39 = sub_268C56F44(v37, v38, &a11);

    *(v35 + 4) = v39;
    OUTLINED_FUNCTION_35_0(&dword_268C47000, v40, v41, "Could not get CAT template: %s");
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();
  }

  else
  {
  }

  (*(v33 + 8))(v32, v34);
  v42 = v22[11];
  v43 = sub_268C5A4E0();
  v44 = MEMORY[0x277D5C1D8];
  v42[3] = v43;
  v42[4] = v44;
  __swift_allocate_boxed_opaque_existential_1(v42);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v22[24] = v45;
  *v45 = v46;
  v45[1] = sub_268C534B0;
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_29_0();

  return sub_268C535FC();
}

uint64_t sub_268C534B0()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_13();
  v3 = v2;
  OUTLINED_FUNCTION_2_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v6 = v5;
  *(v3 + 200) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_17();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_3_1();

    return v8();
  }
}

uint64_t sub_268C535FC()
{
  OUTLINED_FUNCTION_10();
  v1[7] = v2;
  v1[8] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802D39E0, &qword_268C5B870);
  v1[9] = OUTLINED_FUNCTION_49();
  v3 = sub_268C5A420();
  v1[10] = v3;
  OUTLINED_FUNCTION_12(v3);
  v1[11] = v4;
  v1[12] = OUTLINED_FUNCTION_49();
  v5 = sub_268C5A750();
  v1[13] = v5;
  OUTLINED_FUNCTION_12(v5);
  v1[14] = v6;
  v1[15] = OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268C53720()
{
  OUTLINED_FUNCTION_27();
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = __swift_project_value_buffer(v3, qword_2802D4560);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_268C5A740();
  v6 = sub_268C5A930();
  if (OUTLINED_FUNCTION_17_0(v6))
  {
    *OUTLINED_FUNCTION_28() = 0;
    OUTLINED_FUNCTION_25(&dword_268C47000, v7, v8, "Defaulting to generic error template response");
    OUTLINED_FUNCTION_18();
  }

  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[13];

  (*(v10 + 8))(v9, v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  v0[16] = v12;
  *v12 = v13;
  v12[1] = sub_268C5386C;
  v14 = v0[12];

  return MEMORY[0x2821BAEC8](v14);
}

uint64_t sub_268C5386C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_0();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_17();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_268C53968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_30_0();
  v29 = *(v14 + 120);
  v16 = *(v14 + 88);
  v15 = *(v14 + 96);
  v17 = *(v14 + 72);
  v18 = *(v14 + 80);
  __swift_project_boxed_opaque_existential_1((*(v14 + 64) + 56), *(*(v14 + 64) + 80));
  sub_268C5A3B0();
  v19 = sub_268C5A410();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v19);
  *(v14 + 48) = 0;
  *(v14 + 32) = 0u;
  *(v14 + 16) = 0u;
  sub_268C5A3E0();
  sub_268C53FEC(v14 + 16, &unk_2802D3A40, &qword_268C5B878);
  sub_268C53FEC(v17, &unk_2802D39E0, &qword_268C5B870);
  (*(v16 + 8))(v15, v18);

  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_29_0();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, v14 + 16, a10, v29, a12, a13, a14);
}

uint64_t sub_268C53ABC()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_9();

  return v0();
}

uint64_t sub_268C53B30()
{
  sub_268C53FEC(v0 + 16, &qword_2802D39D8, &qword_268C5B980);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_268C53BE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268C4D824;

  return sub_268C511F0();
}

uint64_t sub_268C53C80(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ScreenReaderFlow();

  return MEMORY[0x2821BA658](v3, a2);
}

uint64_t sub_268C53CB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39D8, &qword_268C5B980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268C53D28()
{
  OUTLINED_FUNCTION_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_268C50A3C;
  v4 = OUTLINED_FUNCTION_25_0();

  return sub_268C52DE8(v4, v0);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x26D6299D0);
  }

  return result;
}

uint64_t sub_268C53E08(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_268C53E68()
{
  OUTLINED_FUNCTION_10();
  swift_task_alloc();
  OUTLINED_FUNCTION_14();
  *(v1 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_268C4D824;
  v4 = OUTLINED_FUNCTION_25_0();

  return sub_268C52148(v4, v0);
}

void sub_268C53EF8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_268C53F6C(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A60, &qword_268C5B9B8);
  v3 = sub_268C5A850();

  [a2 setCommands_];
}

uint64_t sub_268C53FEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_268C5404C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void OUTLINED_FUNCTION_4_1()
{

  JUMPOUT(0x26D6299D0);
}

BOOL OUTLINED_FUNCTION_14_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

BOOL OUTLINED_FUNCTION_17_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_18_0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

uint64_t OUTLINED_FUNCTION_22_0(uint64_t a1)
{

  return sub_268C5A6E0();
}

uint64_t OUTLINED_FUNCTION_23_0()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_31_0(float a1)
{
  *v1 = a1;

  return swift_getErrorValue();
}

void OUTLINED_FUNCTION_32_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_268C5436C(v9, &a9);
}

void OUTLINED_FUNCTION_35_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_37_0(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_268C5A4E0();
}

uint64_t type metadata accessor for ReadThisCATProvider(uint64_t a1)
{
  result = qword_2802D3A90;
  if (!qword_2802D3A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268C5436C(uint64_t a1, uint64_t a2)
{
  v4 = sub_268C5A6F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A68, qword_268C5B9C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  sub_268C54900(a2, &v16);
  if (v17)
  {
    sub_268C50724(&v16, v18);
    sub_268C5A6B0();
    sub_268C50618(v18, &v16);
    v11 = sub_268C5A6A0();
    __swift_destroy_boxed_opaque_existential_1(v18);
    v12 = v11;
  }

  else
  {
    sub_268C54970(&v16);
    v11 = 0;
  }

  v13 = sub_268C5A220();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v13);
  (*(v5 + 16))(v7, a1, v4);
  v14 = sub_268C5A6C0();

  sub_268C54970(a2);
  (*(v5 + 8))(a1, v4);
  return v14;
}

uint64_t sub_268C5455C(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_268C54584);
}

uint64_t sub_268C54584()
{
  v1 = sub_268C547F4(*(v0 + 64));
  v3 = v2;
  *(v0 + 40) = v2;
  v8 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_268C54654;
  v5 = *(v0 + 24);
  v6 = *(v0 + 16);

  return v8(v6, v1, v3, v5);
}

uint64_t sub_268C54654()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_268C54790);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_268C54790()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_268C547F4(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    case 4:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268C548C8()
{
  v0 = sub_268C5A6D0();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_268C54900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3AA0, qword_268C5BA30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268C54970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3AA0, qword_268C5BA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268C549E4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_268C547F4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

BOOL sub_268C54A10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_268C5AA70();
  sub_268C5A830();
  v6 = sub_268C5AA90();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_268C5AA50();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t sub_268C54AFC()
{
  result = sub_268C574E8(&unk_287981DC8);
  qword_2802D4550 = result;
  return result;
}

uint64_t SiriReaderFlowProvider.__allocating_init(referenceResolver:aceServiceInvoker:deviceState:outputPublisher:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_20_0();
  SiriReaderFlowProvider.init(referenceResolver:aceServiceInvoker:deviceState:outputPublisher:)(v7, v8, a3, a4);
  return v6;
}

uint64_t SiriReaderFlowProvider.init(referenceResolver:aceServiceInvoker:deviceState:outputPublisher:)(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  sub_268C50724(a1, v4 + 16);
  sub_268C50724(a2, v4 + 56);
  sub_268C50724(a3, v4 + 96);
  v8 = *(a4 + 16);
  *(v4 + 136) = *a4;
  *(v4 + 152) = v8;
  *(v4 + 168) = *(a4 + 32);
  return v4;
}

void SiriReaderFlowProvider.findFlow(for:)()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v127 = v2;
  v111 = sub_268C5A4F0();
  OUTLINED_FUNCTION_0();
  v110 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v109 = v6 - v5;
  OUTLINED_FUNCTION_41();
  v118 = sub_268C5A4D0();
  OUTLINED_FUNCTION_0();
  v113 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v112 = v10 - v9;
  OUTLINED_FUNCTION_41();
  sub_268C5A680();
  OUTLINED_FUNCTION_0();
  v121 = v12;
  v122 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v120 = v14 - v13;
  OUTLINED_FUNCTION_41();
  v15 = sub_268C5A4A0();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  v125 = (v19 - v20);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_23_1();
  v129 = v22;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_23_1();
  v123 = v24;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v106 - v26;
  v28 = sub_268C5A750();
  OUTLINED_FUNCTION_0();
  v130 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_0();
  v126 = (v31 - v32);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_23_1();
  v108 = v34;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v35);
  v37 = &v106 - v36;
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  v38 = __swift_project_value_buffer(v28, qword_2802D4560);
  v39 = *(v130 + 16);
  v115 = v38;
  v116 = v39;
  v117 = v130 + 16;
  v39(v37);
  v40 = *(v17 + 16);
  v128 = v1;
  v40(v27, v1, v15);
  v41 = v17;
  v42 = sub_268C5A740();
  v43 = sub_268C5A910();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v119 = v40;
    v45 = v44;
    v46 = swift_slowAlloc();
    v114 = v28;
    v106 = v46;
    v131[0] = v46;
    *v45 = 136315138;
    v107 = v37;
    v119(v123, v27, v15);
    v47 = sub_268C5A810();
    v49 = v48;
    v50 = v41;
    v51 = OUTLINED_FUNCTION_14_1();
    v52(v51);
    v53 = v47;
    v54 = v130;
    v55 = sub_268C56F44(v53, v49, v131);

    *(v45 + 4) = v55;
    _os_log_impl(&dword_268C47000, v42, v43, "Finding flow for parse: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v106);
    v28 = v114;
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_18();

    v56 = v54;
    v40 = v119;
    v57 = *(v56 + 8);
    v57(v107, v28);
  }

  else
  {

    v58 = OUTLINED_FUNCTION_14_1();
    v59(v58);
    v57 = *(v130 + 8);
    v57(v37, v28);
    v50 = v41;
  }

  v40(v129, v128, v15);
  v60 = OUTLINED_FUNCTION_11_1();
  v62 = v61(v60);
  v64 = v125;
  v63 = v126;
  if (v62 == *MEMORY[0x277D5C128])
  {
    v65 = OUTLINED_FUNCTION_8_0();
    v66(v65);
    v68 = v120;
    v67 = v121;
    v69 = OUTLINED_FUNCTION_24_1();
    v70 = v122;
    v71(v69);
    sub_268C55A48();
    (*(v67 + 8))(v68, v70);
  }

  else if (v62 == *MEMORY[0x277D5C130])
  {
    v72 = OUTLINED_FUNCTION_8_0();
    v73(v72);
    sub_268C55470();
    swift_unknownObjectRelease();
  }

  else if (v62 == *MEMORY[0x277D5C160])
  {
    v74 = OUTLINED_FUNCTION_8_0();
    v75(v74);
    v77 = v112;
    v76 = v113;
    v78 = OUTLINED_FUNCTION_24_1();
    v79(v78);
    v80 = v109;
    sub_268C5A4C0();
    v81 = sub_268C5A500();
    (*(v110 + 8))(v80, v111);
    if (v81)
    {
      sub_268C55470();
      swift_unknownObjectRelease();
    }

    else
    {
      v97 = OUTLINED_FUNCTION_22_1();
      v98(v97);
      v99 = sub_268C5A740();
      v100 = sub_268C5A910();
      if (OUTLINED_FUNCTION_15_1(v100))
      {
        v101 = OUTLINED_FUNCTION_28();
        *v101 = 0;
        OUTLINED_FUNCTION_21_0();
        _os_log_impl(v102, v103, v104, v105, v101, 2u);
        OUTLINED_FUNCTION_18();
      }

      v57(v108, v28);
      sub_268C5A2F0();
    }

    (*(v76 + 8))(v77, v118);
  }

  else
  {
    v124 = v50;
    v82 = OUTLINED_FUNCTION_22_1();
    v83(v82);
    v84 = v40;
    v40(v64, v128, v15);
    v85 = sub_268C5A740();
    v86 = sub_268C5A930();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v122 = v87;
      v128 = swift_slowAlloc();
      v131[0] = v128;
      *v87 = 136315138;
      v84(v123, v64, v15);
      v88 = sub_268C5A810();
      v114 = v28;
      v90 = v89;
      v91 = OUTLINED_FUNCTION_9_0();
      v64(v91);
      v92 = sub_268C56F44(v88, v90, v131);

      v93 = v122;
      *(v122 + 1) = v92;
      _os_log_impl(&dword_268C47000, v85, v86, "Received unsupported parse: %s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v128);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_18();

      v94 = v63;
      v95 = v114;
    }

    else
    {

      v96 = OUTLINED_FUNCTION_9_0();
      v64(v96);
      v94 = v63;
      v95 = v28;
    }

    v57(v94, v95);
    sub_268C5A2F0();
    (v64)(v129, v15);
  }

  OUTLINED_FUNCTION_22();
}

void sub_268C55470()
{
  OUTLINED_FUNCTION_26();
  v63 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A38, &qword_268C5B8A8);
  v2 = OUTLINED_FUNCTION_19_0(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_0();
  v58 = v3 - v4;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  v59 = &v57 - v6;
  OUTLINED_FUNCTION_41();
  v7 = sub_268C5A750();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v60 = (v11 - v12);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_23_1();
  v64 = v14;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v57 - v16;
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  __swift_project_value_buffer(v7, qword_2802D4560);
  v18 = *(v9 + 16);
  v19 = OUTLINED_FUNCTION_11_1();
  v18(v19);
  v20 = sub_268C5A740();
  v21 = sub_268C5A910();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_28();
    v62 = v7;
    *v22 = 0;
    _os_log_impl(&dword_268C47000, v20, v21, "Handling NLv4 parse", v22, 2u);
    v7 = v62;
    OUTLINED_FUNCTION_18();
  }

  v23 = *(v9 + 8);
  v23(v17, v7);
  v24 = swift_unknownObjectRetain();
  v25 = ReaderNLv4Intent.init(userDialogAct:)(v24);
  v27 = v26;
  v29 = v28;
  if (ReaderNLv4Intent.shouldStartScreenReader.getter(v25, v26, v28))
  {
    v61 = v27;
    v62 = v29;
    v30 = OUTLINED_FUNCTION_11_1();
    v18(v30);
    v31 = sub_268C5A740();
    v32 = sub_268C5A910();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_28();
      *v33 = 0;
      _os_log_impl(&dword_268C47000, v31, v32, "Creating ScreenReaderFlow", v33, 2u);
      OUTLINED_FUNCTION_18();
    }

    v23(v64, v7);
    v34 = v63;
    sub_268C505B8(v63 + 136, v67, &qword_2802D39D8, &qword_268C5B980);
    sub_268C50618(v34 + 96, v66);
    type metadata accessor for ScreenReaderFlow();
    v35 = swift_allocObject();
    v36 = v67[1];
    *(v35 + 16) = v67[0];
    *(v35 + 32) = v36;
    *(v35 + 48) = v68;
    sub_268C50724(v66, v35 + 56);
    *&v67[0] = v35;
    sub_268C5791C(&qword_2802D3A88, type metadata accessor for ScreenReaderFlow, &unk_268C5B928);
    sub_268C5A2A0();

    sub_268C5A300();
    swift_unknownObjectRelease();

    goto LABEL_14;
  }

  v37 = OUTLINED_FUNCTION_13_0();
  if ((ReaderNLv4Intent.read.getter(v37, v38, v29) & 1) == 0)
  {
    sub_268C5A2F0();
    swift_unknownObjectRelease();

LABEL_14:

    goto LABEL_15;
  }

  v61 = v27;
  v62 = v29;
  v39 = OUTLINED_FUNCTION_11_1();
  v18(v39);
  v40 = sub_268C5A740();
  v41 = sub_268C5A910();
  if (OUTLINED_FUNCTION_15_1(v41))
  {
    v42 = OUTLINED_FUNCTION_28();
    *v42 = 0;
    OUTLINED_FUNCTION_21_0();
    _os_log_impl(v43, v44, v45, v46, v42, 2u);
    OUTLINED_FUNCTION_18();
  }

  v23(v60, v7);
  v47 = v59;
  v48 = v63;
  sub_268C55DF8();
  v49 = v58;
  sub_268C505B8(v47, v58, &qword_2802D3A38, &qword_268C5B8A8);
  sub_268C50618(v48 + 56, v67);
  sub_268C505B8(v48 + 136, v66, &qword_2802D39D8, &qword_268C5B980);
  sub_268C50618(v48 + 96, v65);
  v50 = [objc_opt_self() sharedPreferences];
  v51 = sub_268C578AC(v50);
  v53 = v52;
  ThisFlow = type metadata accessor for ReadThisFlow(0);
  OUTLINED_FUNCTION_50(ThisFlow);
  *&v67[0] = sub_268C49EB0(v49, v51, v53, v67, v66, v65);
  OUTLINED_FUNCTION_5_1();
  sub_268C5791C(v55, v56, &unk_268C5B778);
  sub_268C5A2A0();

  sub_268C5A300();

  swift_unknownObjectRelease();

  sub_268C50968(v47, &qword_2802D3A38, &qword_268C5B8A8);
LABEL_15:
  OUTLINED_FUNCTION_22();
}

void sub_268C55A48()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v3 = v2;
  v39 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3A38, &qword_268C5B8A8);
  v6 = OUTLINED_FUNCTION_19_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ReaderNLv3Intent(0);
  v14 = OUTLINED_FUNCTION_19_0(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = sub_268C5A750();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  if (qword_2802D3430 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_2802D3430);
  }

  v25 = __swift_project_value_buffer(v18, qword_2802D4560);
  (*(v20 + 16))(v24, v25, v18);
  v26 = sub_268C5A740();
  v27 = sub_268C5A910();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_28();
    v38 = v17;
    *v28 = 0;
    _os_log_impl(&dword_268C47000, v26, v27, "Handling NLv3 parse", v28, 2u);
    v17 = v38;
    OUTLINED_FUNCTION_18();
  }

  (*(v20 + 8))(v24, v18);
  sub_268C5A680();
  OUTLINED_FUNCTION_4_0();
  (*(v29 + 16))(v17, v3);
  if (ReaderNLv3Intent.read.getter())
  {
    sub_268C55DF8();
    sub_268C505B8(v12, v9, &qword_2802D3A38, &qword_268C5B8A8);
    sub_268C50618(v1 + 56, v42);
    sub_268C505B8(v1 + 136, v41, &qword_2802D39D8, &qword_268C5B980);
    sub_268C50618(v1 + 96, v40);
    v30 = [objc_opt_self() sharedPreferences];
    v31 = sub_268C578AC(v30);
    v33 = v32;
    ThisFlow = type metadata accessor for ReadThisFlow(0);
    OUTLINED_FUNCTION_50(ThisFlow);
    *&v42[0] = sub_268C49EB0(v9, v31, v33, v42, v41, v40);
    OUTLINED_FUNCTION_5_1();
    sub_268C5791C(v35, v36, &unk_268C5B778);
    sub_268C5A2A0();

    sub_268C5A300();

    sub_268C50968(v12, &qword_2802D3A38, &qword_268C5B8A8);
  }

  else
  {
    sub_268C5A2F0();
  }

  sub_268C57850(v17);
  OUTLINED_FUNCTION_22();
}

void sub_268C55DF8()
{
  OUTLINED_FUNCTION_26();
  v2 = v1;
  v3 = sub_268C5A750();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v62 = v56 - v11;
  OUTLINED_FUNCTION_41();
  sub_268C5A7E0();
  OUTLINED_FUNCTION_0();
  v60 = v13;
  v61 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D39A0, &qword_268C5B840);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5_0();
  v20 = (v18 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = v56 - v22;
  v24 = sub_268C5A610();
  OUTLINED_FUNCTION_50(v24);
  v63 = sub_268C5A600();
  v25 = MEMORY[0x26D629050]();
  if (!v25)
  {
    if (qword_2802D3430 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802D3430);
    }

    v44 = __swift_project_value_buffer(v3, qword_2802D4560);
    (*(v5 + 16))(v9, v44, v3);
    v45 = sub_268C5A740();
    v46 = sub_268C5A930();
    if (OUTLINED_FUNCTION_15_1(v46))
    {
      v47 = v5;
      v48 = OUTLINED_FUNCTION_28();
      *v48 = 0;
      OUTLINED_FUNCTION_21_0();
      _os_log_impl(v49, v50, v51, v52, v48, 2u);
      v5 = v47;
      OUTLINED_FUNCTION_18();
    }

    else
    {
    }

    (*(v5 + 8))(v9, v3);
    goto LABEL_16;
  }

  v57 = v5;
  v58 = v3;
  v59 = v2;
  v26 = *(v0 + 40);
  v27 = v25;
  v56[1] = v0;
  __swift_project_boxed_opaque_existential_1((v0 + 16), v26);
  v28 = sub_268C5A7A0();
  OUTLINED_FUNCTION_50(v28);

  sub_268C5A790();
  sub_268C5A730();

  sub_268C505B8(v23, v20, &qword_2802D39A0, &qword_268C5B840);
  OUTLINED_FUNCTION_20_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v61 = v27;
    v29 = *v20;
    v2 = v59;
    if (qword_2802D3430 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802D3430);
    }

    v30 = v58;
    v31 = __swift_project_value_buffer(v58, qword_2802D4560);
    v32 = v57;
    v33 = v62;
    (*(v57 + 16))(v62, v31, v30);
    MEMORY[0x26D6298C0](v29);
    v34 = sub_268C5A740();
    v35 = sub_268C5A930();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v64 = v37;
      *v36 = 136315138;
      swift_getErrorValue();
      v38 = sub_268C5AA60();
      v40 = sub_268C56F44(v38, v39, &v64);
      v60 = v23;
      v41 = v32;
      v42 = v40;

      *(v36 + 4) = v42;
      _os_log_impl(&dword_268C47000, v34, v35, "Failed to make SRR resolve call %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_18();

      (*(v41 + 8))(v62, v30);
      v43 = v60;
    }

    else
    {

      (*(v32 + 8))(v33, v30);
      v43 = v23;
    }

    sub_268C50968(v43, &qword_2802D39A0, &qword_268C5B840);
LABEL_16:
    v55 = sub_268C5A7C0();
    __swift_storeEnumTagSinglePayload(v2, 1, 1, v55);
    goto LABEL_17;
  }

  v54 = v60;
  v53 = v61;
  (*(v60 + 4))(v16, v20, v61);
  sub_268C56384();

  v54[1](v16, v53);
  sub_268C50968(v23, &qword_2802D39A0, &qword_268C5B840);
LABEL_17:
  OUTLINED_FUNCTION_22();
}

void sub_268C56384()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v47 = v2;
  v3 = sub_268C5A7C0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v10 = sub_268C5A780();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = sub_268C5A7E0();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  (*(v19 + 16))(v22 - v21, v1, v17);
  v24 = OUTLINED_FUNCTION_13_0();
  v26 = v25(v24);
  if (v26 == *MEMORY[0x277D5FEC0])
  {
    v27 = OUTLINED_FUNCTION_13_0();
    v28(v27);
    (*(v12 + 32))(v16, v23, v10);
    if (qword_2802D3420 != -1)
    {
      OUTLINED_FUNCTION_4_2();
      swift_once();
    }

    v29 = qword_2802D4550;
    sub_268C5A770();
    v30 = sub_268C5A7B0();
    v32 = v31;
    (*(v5 + 8))(v9, v3);
    LOBYTE(v30) = sub_268C54A10(v30, v32, v29);

    if (v30)
    {
      sub_268C5A770();
      v33 = OUTLINED_FUNCTION_20_0();
      v34(v33);
      v35 = v47;
      v36 = 0;
LABEL_12:
      __swift_storeEnumTagSinglePayload(v35, v36, 1, v3);
      goto LABEL_13;
    }

    v40 = OUTLINED_FUNCTION_20_0();
    v41(v40);
LABEL_11:
    v35 = v47;
    v36 = 1;
    goto LABEL_12;
  }

  v37 = v26;
  if (v26 == *MEMORY[0x277D5FED0] || v26 == *MEMORY[0x277D5FEC8])
  {
    v38 = OUTLINED_FUNCTION_13_0();
    v39(v38);
    sub_268C56748();
LABEL_9:

    goto LABEL_13;
  }

  if (v26 == *MEMORY[0x277D5FED8])
  {
    v42 = OUTLINED_FUNCTION_13_0();
    v43(v42);
    if (!*(*v23 + 16))
    {

      goto LABEL_11;
    }

    sub_268C56748();
    goto LABEL_9;
  }

  v44 = *MEMORY[0x277D5FEE0];
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v3);
  if (v37 != v44)
  {
    v45 = OUTLINED_FUNCTION_13_0();
    v46(v45);
  }

LABEL_13:
  OUTLINED_FUNCTION_22();
}

void sub_268C56748()
{
  OUTLINED_FUNCTION_26();
  v1 = v0;
  v63 = v2;
  v60 = sub_268C5A750();
  OUTLINED_FUNCTION_0();
  v59 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v62 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3AA8, &qword_268C5BAA8);
  v8 = OUTLINED_FUNCTION_19_0(v7);
  MEMORY[0x28223BE20](v8);
  v61 = &v59 - v9;
  OUTLINED_FUNCTION_41();
  v73 = sub_268C5A7C0();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v70 = v14 - v13;
  OUTLINED_FUNCTION_41();
  v15 = sub_268C5A780();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_0();
  v66 = (v17 - v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - v20;
  v22 = 0;
  v23 = *(v1 + 16);
  v71 = v1;
  v72 = v23;
  v67 = (v11 + 8);
  v68 = v24 + 16;
  v65 = (v24 + 32);
  v25 = MEMORY[0x277D84F90];
  v69 = v24;
  v64 = (v24 + 8);
LABEL_2:
  while (v22 != v72)
  {
    v75 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v74 = *(v69 + 72);
    v26 = v15;
    (*(v69 + 16))(v21, v71 + v75 + v74 * v22, v15);
    if (qword_2802D3420 != -1)
    {
      OUTLINED_FUNCTION_4_2();
      swift_once();
    }

    ++v22;
    v27 = qword_2802D4550;
    v28 = v70;
    v29 = v21;
    sub_268C5A770();
    v30 = sub_268C5A7B0();
    v32 = v31;
    (*v67)(v28, v73);
    if (*(v27 + 16))
    {
      sub_268C5AA70();
      sub_268C5A830();
      v33 = sub_268C5AA90();
      v34 = ~(-1 << *(v27 + 32));
      while (1)
      {
        v35 = v33 & v34;
        if (((*(v27 + 56 + (((v33 & v34) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v33 & v34)) & 1) == 0)
        {
          break;
        }

        v36 = (*(v27 + 48) + 16 * v35);
        if (*v36 != v30 || v36[1] != v32)
        {
          v38 = sub_268C5AA50();
          v33 = v35 + 1;
          if ((v38 & 1) == 0)
          {
            continue;
          }
        }

        v39 = *v65;
        v21 = v29;
        v15 = v26;
        (*v65)(v66, v29, v26);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_268C57678(0, *(v25 + 16) + 1, 1);
          v25 = v76;
        }

        v42 = v74;
        v41 = v75;
        v44 = *(v25 + 16);
        v43 = *(v25 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_268C57678((v43 > 1), v44 + 1, 1);
          v25 = v76;
        }

        *(v25 + 16) = v44 + 1;
        v39(v25 + v41 + v44 * v42, v66, v15);
        goto LABEL_2;
      }
    }

    v21 = v29;
    v15 = v26;
    (*v64)(v29, v26);
  }

  if (*(v25 + 16))
  {
    v45 = v61;
    sub_268C59EC8(v25, v61);

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, 1, v15);
    v47 = v63;
    if (EnumTagSinglePayload == 1)
    {
      sub_268C50968(v45, &qword_2802D3AA8, &qword_268C5BAA8);
      v48 = 1;
    }

    else
    {
      sub_268C5A770();
      (*v64)(v45, v15);
      v48 = 0;
    }
  }

  else
  {

    if (qword_2802D3430 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_2802D3430);
    }

    v49 = v60;
    v50 = __swift_project_value_buffer(v60, qword_2802D4560);
    v51 = v59;
    (*(v59 + 16))(v62, v50, v49);
    v52 = sub_268C5A740();
    v53 = sub_268C5A930();
    if (OUTLINED_FUNCTION_15_1(v53))
    {
      v54 = OUTLINED_FUNCTION_28();
      *v54 = 0;
      OUTLINED_FUNCTION_21_0();
      _os_log_impl(v55, v56, v57, v58, v54, 2u);
      OUTLINED_FUNCTION_18();
    }

    (*(v51 + 8))(v62, v49);
    v48 = 1;
    v47 = v63;
  }

  __swift_storeEnumTagSinglePayload(v47, v48, 1, v73);
  OUTLINED_FUNCTION_22();
}

void *SiriReaderFlowProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_268C50968((v0 + 17), &qword_2802D39D8, &qword_268C5B980);
  return v0;
}

uint64_t SiriReaderFlowProvider.__deallocating_deinit()
{
  SiriReaderFlowProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t sub_268C56DA0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_268C56DEC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_268C5A780(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_268C5A780();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_268C56EE8(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_268C56F44(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_268C56F44(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_268C57008(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_268C57964(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_268C57008(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_268C57108(a5, a6);
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
    result = sub_268C5A9B0();
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

uint64_t sub_268C57108(uint64_t a1, unint64_t a2)
{
  v3 = sub_268C57154(a1, a2);
  sub_268C5726C(&unk_287981DA0);
  return v3;
}

uint64_t sub_268C57154(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_268C5A840())
  {
    result = sub_268C57350(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_268C5A990();
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
          result = sub_268C5A9B0();
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

uint64_t sub_268C5726C(uint64_t result)
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

    result = sub_268C573C0(result, v7, 1, v3);
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

void *sub_268C57350(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3AC0, &unk_268C5BAC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_268C573C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3AC0, &unk_268C5BAC0);
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

_BYTE **sub_268C574B4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_268C574E8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3AB8, &qword_268C5BAB8);
  result = sub_268C5A980();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_268C5AA70();

    sub_268C5A830();
    result = sub_268C5AA90();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_268C5AA50() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_268C57678(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_268C57698(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_268C57698(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3AB0, &qword_268C5BAB0);
  v10 = *(sub_268C5A780() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_268C5A780() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_268C56DEC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_268C57850(uint64_t a1)
{
  v2 = type metadata accessor for ReaderNLv3Intent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268C578AC(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268C5A800();

  return v3;
}

uint64_t sub_268C5791C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268C57964(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_14_1()
{
  result = v1;
  *(v2 - 280) = *(v0 + 8);
  return result;
}

BOOL OUTLINED_FUNCTION_15_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_268C57AD8()
{
  sub_268C57C2C();
  result = sub_268C5A960();
  qword_2802D4558 = result;
  return result;
}

uint64_t sub_268C57B3C()
{
  v0 = sub_268C5A750();
  __swift_allocate_value_buffer(v0, qword_2802D4560);
  __swift_project_value_buffer(v0, qword_2802D4560);
  if (qword_2802D3428 != -1)
  {
    swift_once();
  }

  v1 = qword_2802D4558;
  return sub_268C5A760();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_268C57C2C()
{
  result = qword_2802D3AC8;
  if (!qword_2802D3AC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802D3AC8);
  }

  return result;
}

uint64_t sub_268C57C70(char a1, char a2)
{
  v3 = sub_268C547F4(a1);
  v5 = v4;
  if (v3 == sub_268C547F4(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_268C5AA50();
  }

  return v8 & 1;
}

uint64_t sub_268C57CF4(unsigned __int8 a1, char a2)
{
  v2 = 1684104562;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1684104562;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x65756E69746E6F63;
      break;
    case 2:
      v5 = 1869901671;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x65726975716E69;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x7463656C6573;
      break;
    case 5:
      v5 = 0x6B63614270696B73;
      v3 = 0xEC00000064726177;
      break;
    case 6:
      v5 = 0x77726F4670696B73;
      v3 = 0xEB00000000647261;
      break;
    case 7:
      v5 = 1886352499;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x65756E69746E6F63;
      break;
    case 2:
      v2 = 1869901671;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x65726975716E69;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x7463656C6573;
      break;
    case 5:
      v2 = 0x6B63614270696B73;
      v6 = 0xEC00000064726177;
      break;
    case 6:
      v2 = 0x77726F4670696B73;
      v6 = 0xEB00000000647261;
      break;
    case 7:
      v2 = 1886352499;
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
    v8 = sub_268C5AA50();
  }

  return v8 & 1;
}

uint64_t sub_268C57F24(uint64_t a1)
{
  v1 = a1;
  sub_268C5AA70();
  sub_268C58558(v1);
  sub_268C5A830();

  return sub_268C5AA90();
}

uint64_t sub_268C57F88(uint64_t a1, char a2)
{
  sub_268C5A830();
}

uint64_t sub_268C580AC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_268C5AA70();
  sub_268C58558(v2);
  sub_268C5A830();

  return sub_268C5AA90();
}

uint64_t ReaderNLv3Intent.init(intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_268C5A680();
  OUTLINED_FUNCTION_4_0();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t ReaderNLv3Intent.read.getter()
{
  if (qword_2802D3438 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_2802D3438);
  }

  type metadata accessor for ReaderNLv3Intent(0);
  v0 = OUTLINED_FUNCTION_1_0(&qword_2802D3AE0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v9 = OUTLINED_FUNCTION_3_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = 114;
    OUTLINED_FUNCTION_4_3(v9);
    if (v11)
    {
      v13 = v12 == 0xE400000000000000;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {

      v10 = 1;
    }

    else
    {
      sub_268C5AA50();
      OUTLINED_FUNCTION_6_0();
    }
  }

  return v10 & 1;
}

uint64_t sub_268C58238()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3B10, &qword_268C5BBC0);
  swift_allocObject();
  result = sub_268C5A530();
  qword_2802D3AD0 = result;
  return result;
}

uint64_t sub_268C582A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3B08, "H\n");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_268C5BAD0;
  if (qword_2802D3438 != -1)
  {
    swift_once();
  }

  v1 = qword_2802D3AD0;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3B10, &qword_268C5BBC0);
  *(v0 + 64) = sub_268C592CC(&qword_2802D3B18, &qword_2802D3B10, &qword_268C5BBC0, MEMORY[0x277D5E430]);
  *(v0 + 32) = v1;
  sub_268C5A520();
  swift_allocObject();

  result = sub_268C5A510();
  qword_2802D3AD8 = result;
  return result;
}

uint64_t ReaderNLv3Intent.intent.getter@<X0>(uint64_t a1@<X8>)
{
  sub_268C5A680();
  OUTLINED_FUNCTION_4_0();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t ReaderNLv3Intent.intent.setter(uint64_t a1)
{
  sub_268C5A680();
  OUTLINED_FUNCTION_4_0();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t ReaderNLv3Intent.domainOntologyNode.getter()
{
  if (qword_2802D3440 != -1)
  {
    swift_once();
  }
}

unint64_t sub_268C58500(uint64_t a1, uint64_t a2)
{
  v2 = sub_268C5A9D0();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_268C58558(char a1)
{
  result = 1684104562;
  switch(a1)
  {
    case 1:
      result = 0x65756E69746E6F63;
      break;
    case 2:
      result = 1869901671;
      break;
    case 3:
      result = 0x65726975716E69;
      break;
    case 4:
      result = 0x7463656C6573;
      break;
    case 5:
      result = 0x6B63614270696B73;
      break;
    case 6:
      result = 0x77726F4670696B73;
      break;
    case 7:
      result = 1886352499;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_268C5866C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268C58500(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_268C5869C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268C58558(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t type metadata accessor for ReaderNLv3Intent(uint64_t a1)
{
  result = qword_2802D3AF0;
  if (!qword_2802D3AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_268C58714@<X0>(void *a1@<X8>)
{
  result = sub_268C5854C();
  *a1 = result;
  return result;
}

uint64_t sub_268C5873C(uint64_t a1, uint64_t a2)
{
  v4 = sub_268C593C4();
  v5 = sub_268C59418();
  v6 = sub_268C5946C();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t ReaderNLv3Intent.continue.getter()
{
  if (qword_2802D3438 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_2802D3438);
  }

  type metadata accessor for ReaderNLv3Intent(0);
  v0 = OUTLINED_FUNCTION_1_0(&qword_2802D3AE0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v9 = OUTLINED_FUNCTION_3_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = 99;
    OUTLINED_FUNCTION_4_3(v9);
    if (v11)
    {
      v13 = v12 == 0xE800000000000000;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {

      v10 = 1;
    }

    else
    {
      sub_268C5AA50();
      OUTLINED_FUNCTION_6_0();
    }
  }

  return v10 & 1;
}

uint64_t ReaderNLv3Intent.goto.getter()
{
  if (qword_2802D3438 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_2802D3438);
  }

  type metadata accessor for ReaderNLv3Intent(0);
  v0 = OUTLINED_FUNCTION_1_0(&qword_2802D3AE0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v9 = OUTLINED_FUNCTION_3_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = 103;
    OUTLINED_FUNCTION_4_3(v9);
    if (v11)
    {
      v13 = v12 == 0xE400000000000000;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {

      v10 = 1;
    }

    else
    {
      sub_268C5AA50();
      OUTLINED_FUNCTION_6_0();
    }
  }

  return v10 & 1;
}

uint64_t ReaderNLv3Intent.inquire.getter()
{
  if (qword_2802D3438 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_2802D3438);
  }

  type metadata accessor for ReaderNLv3Intent(0);
  v0 = OUTLINED_FUNCTION_1_0(&qword_2802D3AE0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v9 = OUTLINED_FUNCTION_3_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = 105;
    OUTLINED_FUNCTION_4_3(v9);
    if (v11)
    {
      v13 = v12 == 0xE700000000000000;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {

      v10 = 1;
    }

    else
    {
      sub_268C5AA50();
      OUTLINED_FUNCTION_6_0();
    }
  }

  return v10 & 1;
}

uint64_t ReaderNLv3Intent.select.getter()
{
  if (qword_2802D3438 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_2802D3438);
  }

  type metadata accessor for ReaderNLv3Intent(0);
  v0 = OUTLINED_FUNCTION_1_0(&qword_2802D3AE0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v9 = OUTLINED_FUNCTION_3_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = 115;
    OUTLINED_FUNCTION_4_3(v9);
    if (v11)
    {
      v13 = v12 == 0xE600000000000000;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {

      v10 = 1;
    }

    else
    {
      sub_268C5AA50();
      OUTLINED_FUNCTION_6_0();
    }
  }

  return v10 & 1;
}

uint64_t ReaderNLv3Intent.skipBackward.getter()
{
  if (qword_2802D3438 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_2802D3438);
  }

  type metadata accessor for ReaderNLv3Intent(0);
  v0 = OUTLINED_FUNCTION_1_0(&qword_2802D3AE0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v9 = OUTLINED_FUNCTION_3_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
  if (v13)
  {
    v10 = 0;
  }

  else
  {
    v10 = 119;
    v11 = sub_268C58558(v9);
    v13 = v11 == 0x6B63614270696B73 && v12 == 0xEC00000064726177;
    if (v13)
    {

      v10 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_7_1(v11);
      OUTLINED_FUNCTION_6_0();
    }
  }

  return v10 & 1;
}

uint64_t ReaderNLv3Intent.skipForward.getter()
{
  if (qword_2802D3438 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_2802D3438);
  }

  type metadata accessor for ReaderNLv3Intent(0);
  v0 = OUTLINED_FUNCTION_1_0(&qword_2802D3AE0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v9 = OUTLINED_FUNCTION_3_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
  if (v13)
  {
    v10 = 0;
  }

  else
  {
    v10 = 97;
    v11 = sub_268C58558(v9);
    v13 = v11 == 0x77726F4670696B73 && v12 == 0xEB00000000647261;
    if (v13)
    {

      v10 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_7_1(v11);
      OUTLINED_FUNCTION_6_0();
    }
  }

  return v10 & 1;
}

uint64_t ReaderNLv3Intent.stop.getter()
{
  if (qword_2802D3438 != -1)
  {
    OUTLINED_FUNCTION_0_1(&qword_2802D3438);
  }

  type metadata accessor for ReaderNLv3Intent(0);
  v0 = OUTLINED_FUNCTION_1_0(&qword_2802D3AE0);
  v1 = OUTLINED_FUNCTION_2_2(v0);
  v9 = OUTLINED_FUNCTION_3_2(v1, v2, v3, v4, v5, v6, v7, v8, v15, v16, SWORD2(v16), SBYTE6(v16), HIBYTE(v16));
  if (v11)
  {
    v10 = 0;
  }

  else
  {
    v10 = 115;
    OUTLINED_FUNCTION_4_3(v9);
    if (v11)
    {
      v13 = v12 == 0xE400000000000000;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {

      v10 = 1;
    }

    else
    {
      sub_268C5AA50();
      OUTLINED_FUNCTION_6_0();
    }
  }

  return v10 & 1;
}

uint64_t sub_268C58DA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_268C5A680();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_268C58E20(uint64_t a1)
{
  v2 = sub_268C59060(&qword_2802D3B00, &protocol conformance descriptor for ReaderNLv3Intent);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_268C58E88(uint64_t a1)
{
  v2 = sub_268C59060(&qword_2802D3B00, &protocol conformance descriptor for ReaderNLv3Intent);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_268C58EE0(uint64_t a1)
{
  v2 = sub_268C59060(&qword_2802D3B00, &protocol conformance descriptor for ReaderNLv3Intent);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_268C58F4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_268C5A680();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_268C58FA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_268C5A680();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_268C58FF4(uint64_t a1)
{
  result = sub_268C5A680();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_268C59060(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReaderNLv3Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReaderNLv3Intent.Verb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ReaderNLv3Intent.Verb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        JUMPOUT(0x268C591F8);
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268C59234()
{
  result = qword_2802D3B20;
  if (!qword_2802D3B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D3B20);
  }

  return result;
}

uint64_t sub_268C592CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_268C59318()
{
  result = qword_2802D3B38;
  if (!qword_2802D3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D3B38);
  }

  return result;
}

unint64_t sub_268C59370()
{
  result = qword_2802D3B40;
  if (!qword_2802D3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D3B40);
  }

  return result;
}

unint64_t sub_268C593C4()
{
  result = qword_2802D3B48;
  if (!qword_2802D3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D3B48);
  }

  return result;
}

unint64_t sub_268C59418()
{
  result = qword_2802D3B50;
  if (!qword_2802D3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D3B50);
  }

  return result;
}

unint64_t sub_268C5946C()
{
  result = qword_2802D3B58;
  if (!qword_2802D3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D3B58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_0(unint64_t *a1)
{

  return sub_268C59060(a1, &protocol conformance descriptor for ReaderNLv3Intent);
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1)
{

  return MEMORY[0x2821C1128](v1, v2, a1);
}

uint64_t OUTLINED_FUNCTION_6_0()
{
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1)
{

  return sub_268C5AA50();
}

uint64_t ReaderNLv4Intent.init(userDialogAct:)(uint64_t a1)
{
  sub_268C5A750();
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8 || (v9 = [v8 task], v10 = sub_268C5A950(), v9, !v10))
  {
    if (qword_2802D3430 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v1, qword_2802D4560);
    (*(v4 + 16))(v7, v14, v1);
    v15 = sub_268C5A740();
    v16 = sub_268C5A930();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_268C47000, v15, v16, "Unable to convert USO serialized graph to USO graph Siri NL, no initial task", v17, 2u);
      MEMORY[0x26D6299D0](v17, -1, -1);
    }

    (*(v4 + 8))(v7, v1);
    return a1;
  }

  v12 = MEMORY[0x26D629020](v11);

  result = sub_268C59FC0(v12);
  if (!result)
  {
LABEL_7:

    return a1;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26D629450](0, v12);
    goto LABEL_7;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t ReaderNLv4Intent.shouldStartScreenReader.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3B60, &qword_268C5BD10);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v38 - v9;
  sub_268C5A660();
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3B68, &qword_268C5BD18);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3B70, &qword_268C5BD20);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v38 - v23;
  if (!a3)
  {
    goto LABEL_11;
  }

  v25 = sub_268C5A670();
  v26 = sub_268C59F70(0x69746E4572657375, 0xEC00000073656974, v25);

  if (!v26)
  {
    goto LABEL_11;
  }

  result = sub_268C59FC0(v26);
  if (!result)
  {

    goto LABEL_11;
  }

  if ((v26 & 0xC000000000000001) != 0)
  {
    v28 = MEMORY[0x26D629450](0, v26);
LABEL_7:

    if (v28)
    {

      sub_268C5A690();

      v29 = sub_268C5A630();
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v29);
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v29);
      v30 = sub_268C5A640();
      sub_268C50968(v8, &qword_2802D3B60, &qword_268C5BD10);
      sub_268C50968(v10, &qword_2802D3B60, &qword_268C5BD10);
      (*(v12 + 8))(v15, v3);
      sub_268C59E08(v30, v18);

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3B78, &qword_268C5BD28);
      if (__swift_getEnumTagSinglePayload(v18, 1, v31) != 1)
      {
        (*(v12 + 32))(v24, &v18[*(v31 + 48)], v3);
        __swift_storeEnumTagSinglePayload(v24, 0, 1, v3);
        sub_268C5A620();
        OUTLINED_FUNCTION_4_0();
        (*(v37 + 8))(v18);
LABEL_12:
        sub_268C505B8(v24, v22, &qword_2802D3B70, &qword_268C5BD20);
        if (__swift_getEnumTagSinglePayload(v22, 1, v3) == 1)
        {
          sub_268C50968(v22, &qword_2802D3B70, &qword_268C5BD20);
        }

        else
        {
          v32 = sub_268C5A650();
          (*(v12 + 8))(v22, v3);
          if (v32[2])
          {
            v34 = v32[4];
            v33 = v32[5];

            if (v34 == 0x6E6565726373 && v33 == 0xE600000000000000)
            {

              v36 = 1;
            }

            else
            {
              v36 = sub_268C5AA50();
            }

            goto LABEL_22;
          }
        }

        v36 = 0;
LABEL_22:
        sub_268C50968(v24, &qword_2802D3B70, &qword_268C5BD20);
        return v36 & 1;
      }

      sub_268C50968(v18, &qword_2802D3B68, &qword_268C5BD18);
    }

LABEL_11:
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v3);
    goto LABEL_12;
  }

  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v26 + 32);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t ReaderNLv4Intent.read.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_268C5A590();
  sub_268C505B8(&v10, &v8, &unk_2802D3B80, &qword_268C5BD30);
  if (*(&v9 + 1))
  {
    v3 = sub_268C5A5B0();
    if (OUTLINED_FUNCTION_2_3(v3, v4))
    {

      sub_268C50968(&v10, &unk_2802D3B80, &qword_268C5BD30);
      return 1;
    }
  }

  else
  {
    sub_268C50968(&v8, &unk_2802D3B80, &qword_268C5BD30);
  }

  v8 = v10;
  v9 = v11;
  if (*(&v11 + 1))
  {
    v5 = sub_268C5A5E0();
    if (OUTLINED_FUNCTION_2_3(v5, v6))
    {

      return 1;
    }
  }

  else
  {
    sub_268C50968(&v8, &unk_2802D3B80, &qword_268C5BD30);
  }

  return 0;
}

uint64_t sub_268C59E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D3B78, &qword_268C5BD28);
  v6 = v5;
  if (v4)
  {
    sub_268C505B8(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, &qword_2802D3B78, &qword_268C5BD28);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_268C59EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_268C5A780();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_268C59F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_268C5A088(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268C59FC0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_268C59FF8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_268C5A038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_268C5A088(uint64_t a1, uint64_t a2)
{
  sub_268C5AA70();
  sub_268C5A830();
  v4 = sub_268C5AA90();

  return sub_268C5A100(a1, a2, v4);
}

unint64_t sub_268C5A100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_268C5AA50() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}