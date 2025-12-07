uint64_t sub_2665CF420(uint64_t a1)
{
  OUTLINED_FUNCTION_7_15(a1);

  return OUTLINED_FUNCTION_6_13();
}

uint64_t sub_2665CF474@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = EventRecurrencePromptResult.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2665CF4BC(uint64_t a1)
{
  v2 = sub_266669E58();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v32 - v9;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v11 = sub_26666C168();
  v12 = __swift_project_value_buffer(v11, qword_28156D7E8);
  v13 = *(v4 + 16);
  v13(v10, a1, v2);
  v32[1] = v12;
  v14 = sub_26666C148();
  v15 = sub_26666C618();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v32[0] = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34 = v18;
    *v17 = 136315138;
    v13(v8, v10, v2);
    v19 = sub_26666C318();
    v21 = v20;
    (*(v4 + 8))(v10, v2);
    v22 = sub_2665BFC90(v19, v21, &v34);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_266549000, v14, v15, "[EventRecurrencePromptParser] Parsing parse: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_4_1();
    a1 = v32[0];
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    (*(v4 + 8))(v10, v2);
  }

  if (sub_2665DA448(a1))
  {
    return 0;
  }

  v23 = sub_2665CF810(a1);
  v24 = sub_26666C148();
  v25 = sub_26666C618();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v27;
    *v26 = 136446210;
    v33 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E950, &qword_266675940);
    v28 = sub_26666C318();
    v30 = sub_2665BFC90(v28, v29, &v34);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_266549000, v24, v25, "[EventRecurrencePromptParser] returning: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  return v23;
}

uint64_t sub_2665CF810(uint64_t a1)
{
  v51 = a1;
  v1 = sub_266669E88();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v44 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_266669E48();
  v50 = *(v48 - 8);
  v3 = MEMORY[0x28223BE20](v48);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v49 = &v43 - v5;
  v6 = sub_26666B208();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_266669E58();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = *(v11 + 16);
  v20(&v43 - v18, v51, v10);
  v21 = (*(v11 + 88))(v19, v10);
  if (v21 == *MEMORY[0x277D5C128])
  {
    v20(v17, v19, v10);
    (*(v11 + 96))(v17, v10);
    (*(v7 + 32))(v9, v17, v6);
    v22 = sub_2665CFE64(v9);
    (*(v7 + 8))(v9, v6);
    goto LABEL_19;
  }

  if (v21 != *MEMORY[0x277D5C150])
  {
    if (v21 == *MEMORY[0x277D5C160])
    {
      v20(v17, v19, v10);
      (*(v11 + 96))(v17, v10);
      v32 = v44;
      v31 = v45;
      v33 = v46;
      (*(v45 + 32))(v44, v17, v46);
      v22 = sub_2665CFF8C();
      (*(v31 + 8))(v32, v33);
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  v20(v14, v19, v10);
  (*(v11 + 96))(v14, v10);
  v23 = v48;
  (*(v50 + 32))(v49, v14, v48);
  v24 = sub_266669E28();
  v26 = v25;
  swift_beginAccess();
  v27 = qword_28007E888;
  v28 = off_28007E890;
  v52 = static EventRecurrencePromptResult.identifier;
  v53 = off_28007E880;
  swift_bridgeObjectRetain_n();

  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](v27, v28);

  if (v24 == v52 && v26 == v53)
  {

    goto LABEL_18;
  }

  v30 = sub_26666CAC8();

  if (v30)
  {
LABEL_18:
    v39 = v49;
    v38 = v50;
    v40 = v47;
    (*(v50 + 16))(v47, v49, v23);
    sub_2665631B4(v40);
    v22 = v41;
    (*(v38 + 8))(v39, v23);
    goto LABEL_19;
  }

  (*(v50 + 8))(v49, v23);
LABEL_12:
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v34 = sub_26666C168();
  __swift_project_value_buffer(v34, qword_28156D7E8);
  v35 = sub_26666C148();
  v36 = sub_26666C618();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_266549000, v35, v36, "[EventRecurrencePromptParser] parse failed. Unsupported parse type", v37, 2u);
    MEMORY[0x266789690](v37, -1, -1);
  }

  v22 = 3;
LABEL_19:
  (*(v11 + 8))(v19, v10);
  return v22;
}

uint64_t sub_2665CFE64(uint64_t a1)
{
  v2 = type metadata accessor for CalendarNLv3Intent(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26666B208();
  (*(*(v5 - 8) + 16))(v4, a1, v5);
  if (qword_28007CE38 != -1)
  {
    swift_once();
  }

  sub_26656960C();
  sub_26666A528();
  sub_266563A38(v4);
  if (v9 == 4)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  if (v9 == 3)
  {
    return 1;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2665CFF8C()
{
  if (sub_2665F17DC())
  {
    sub_26666AC08();
  }

  else
  {
    if (!sub_2665F1578())
    {
      return 3;
    }

    sub_26666A808();
  }

  if (v3)
  {
    v0 = sub_26666A458();
  }

  else
  {
    v0 = 0;
  }

  v1 = sub_2665D003C(v0);

  return v1;
}

uint64_t sub_2665D003C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E958, &qword_266675948);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  if (!a1)
  {
    v12 = sub_26666A828();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v12);
    goto LABEL_6;
  }

  sub_26666A818();
  v8 = sub_26666A828();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
LABEL_6:
    v11 = 3;
    goto LABEL_7;
  }

  sub_2665D0780(v7, v5);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 88))(v5, v8);
  if (v10 != *MEMORY[0x277D5EA50])
  {
    if (v10 == *MEMORY[0x277D5EA28])
    {
      v11 = 2;
      goto LABEL_7;
    }

    (*(v9 + 8))(v5, v8);
    goto LABEL_6;
  }

  v11 = 1;
LABEL_7:
  sub_2665D0718(v7);
  return v11;
}

unint64_t sub_2665D01F4()
{
  result = qword_28007E8F8;
  if (!qword_28007E8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E8F8);
  }

  return result;
}

unint64_t sub_2665D0248(void *a1)
{
  a1[1] = sub_266563DE0();
  a1[2] = sub_2665D0280();
  result = sub_2665D01F4();
  a1[3] = result;
  return result;
}

unint64_t sub_2665D0280()
{
  result = qword_28007E900;
  if (!qword_28007E900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E900);
  }

  return result;
}

_BYTE *sub_2665D02E4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2665D03F4()
{
  result = qword_28007E908;
  if (!qword_28007E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E908);
  }

  return result;
}

unint64_t sub_2665D044C()
{
  result = qword_28007E910;
  if (!qword_28007E910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E910);
  }

  return result;
}

unint64_t sub_2665D04A4()
{
  result = qword_28007E918;
  if (!qword_28007E918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E918);
  }

  return result;
}

unint64_t sub_2665D04FC()
{
  result = qword_28007E920;
  if (!qword_28007E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E920);
  }

  return result;
}

unint64_t sub_2665D0554()
{
  result = qword_28007E928;
  if (!qword_28007E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E928);
  }

  return result;
}

unint64_t sub_2665D05AC()
{
  result = qword_28007E930;
  if (!qword_28007E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E930);
  }

  return result;
}

unint64_t sub_2665D0604()
{
  result = qword_28007E938;
  if (!qword_28007E938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E938);
  }

  return result;
}

unint64_t sub_2665D065C()
{
  result = qword_28007E940;
  if (!qword_28007E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E940);
  }

  return result;
}

unint64_t sub_2665D06B4()
{
  result = qword_28007E948;
  if (!qword_28007E948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E948);
  }

  return result;
}

uint64_t sub_2665D0718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E958, &qword_266675948);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2665D0780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E958, &qword_266675948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_15(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t sub_2665D082C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047342 && a2 == 0xE400000000000000;
  if (v3 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657461657263 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26666CAC8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2665D08F0(char a1)
{
  if (a1)
  {
    return 0x657461657263;
  }

  else
  {
    return 1954047342;
  }
}

uint64_t sub_2665D0924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665D082C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2665D094C(uint64_t a1)
{
  v2 = sub_2665D0D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665D0988(uint64_t a1)
{
  v2 = sub_2665D0D50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665D09C4(uint64_t a1)
{
  v2 = sub_2665D0DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665D0A00(uint64_t a1)
{
  v2 = sub_2665D0DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665D0A3C(uint64_t a1)
{
  v2 = sub_2665D0DF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665D0A78(uint64_t a1)
{
  v2 = sub_2665D0DF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.PromptForTitleBtnLabel.encode(to:)(void *a1, int a2)
{
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E960, &qword_266675950);
  OUTLINED_FUNCTION_3_0();
  v22 = v4;
  v23 = v3;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E968, &qword_266675958);
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E970, &qword_266675960);
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v16);
  v18 = &v21 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665D0D50();
  sub_26666CBE8();
  v19 = (v15 + 8);
  if (v24)
  {
    v26 = 1;
    sub_2665D0DA4();
    sub_26666CA08();
    (*(v22 + 8))(v7, v23);
  }

  else
  {
    v25 = 0;
    sub_2665D0DF8();
    sub_26666CA08();
    (*(v9 + 8))(v12, v21);
  }

  return (*v19)(v18, v13);
}

unint64_t sub_2665D0D50()
{
  result = qword_28007E978;
  if (!qword_28007E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E978);
  }

  return result;
}

unint64_t sub_2665D0DA4()
{
  result = qword_28007E980;
  if (!qword_28007E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E980);
  }

  return result;
}

unint64_t sub_2665D0DF8()
{
  result = qword_28007E988;
  if (!qword_28007E988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E988);
  }

  return result;
}

uint64_t Snippet.PromptForTitleBtnLabel.init(from:)(unint64_t a1)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E990, &qword_266675968);
  OUTLINED_FUNCTION_3_0();
  v38 = v2;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E998, &qword_266675970);
  OUTLINED_FUNCTION_3_0();
  v37 = v7;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E9A0, &unk_266675978);
  OUTLINED_FUNCTION_3_0();
  v39 = v12;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_2665D0D50();
  v16 = v41;
  sub_26666CBD8();
  if (v16)
  {
    goto LABEL_8;
  }

  v35 = v6;
  v36 = v10;
  v41 = a1;
  v17 = v40;
  sub_26666C9F8();
  result = sub_266575DD8();
  if (v20 == v21 >> 1)
  {
LABEL_7:
    v26 = sub_26666C848();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190);
    *v28 = &type metadata for Snippet.PromptForTitleBtnLabel;
    sub_26666C978();
    sub_26666C838();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v39 + 8))(v15, v11);
    a1 = v41;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return a1;
  }

  v34 = 0;
  if (v20 < (v21 >> 1))
  {
    a1 = *(v19 + v20);
    sub_266575DD4();
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    if (v23 == v25 >> 1)
    {
      if (a1)
      {
        LODWORD(v37) = a1;
        v43 = 1;
        sub_2665D0DA4();
        OUTLINED_FUNCTION_12_3(&_s22PromptForTitleBtnLabelO16CreateCodingKeysON, &v43);
        swift_unknownObjectRelease();
        (*(v38 + 8))(v5, v17);
        v30 = OUTLINED_FUNCTION_4_8();
        v31(v30);
        a1 = v37;
      }

      else
      {
        v42 = 0;
        sub_2665D0DF8();
        v29 = v36;
        OUTLINED_FUNCTION_12_3(&_s22PromptForTitleBtnLabelO14NextCodingKeysON, &v42);
        swift_unknownObjectRelease();
        (*(v37 + 8))(v29, v35);
        v32 = OUTLINED_FUNCTION_4_8();
        v33(v32);
      }

      __swift_destroy_boxed_opaque_existential_1(v41);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_2665D1310@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = Snippet.PromptForTitleBtnLabel.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_2665D1360()
{
  result = qword_28007E9A8;
  if (!qword_28007E9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9A8);
  }

  return result;
}

_BYTE *sub_2665D13C4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2665D14C4()
{
  result = qword_28007E9B0;
  if (!qword_28007E9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9B0);
  }

  return result;
}

unint64_t sub_2665D151C()
{
  result = qword_28007E9B8;
  if (!qword_28007E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9B8);
  }

  return result;
}

unint64_t sub_2665D1574()
{
  result = qword_28007E9C0;
  if (!qword_28007E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9C0);
  }

  return result;
}

unint64_t sub_2665D15CC()
{
  result = qword_28007E9C8;
  if (!qword_28007E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9C8);
  }

  return result;
}

unint64_t sub_2665D1624()
{
  result = qword_28007E9D0;
  if (!qword_28007E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9D0);
  }

  return result;
}

unint64_t sub_2665D167C()
{
  result = qword_28007E9D8;
  if (!qword_28007E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9D8);
  }

  return result;
}

unint64_t sub_2665D16D4()
{
  result = qword_28007E9E0;
  if (!qword_28007E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9E0);
  }

  return result;
}

id sub_2665D1730(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    return 0;
  }

  if (a2 >> 62)
  {
    v4 = sub_26666C768();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4 <= a1)
  {
    return 0;
  }

  sub_2665C4864();
  if ((a2 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x266788B60](a1, a2);
  }

  else
  {
    return *(a2 + 8 * a1 + 32);
  }
}

uint64_t sub_2665D17D4(uint64_t a1, void *a2)
{
  v4 = sub_266669E58();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_23();
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v8 = sub_26666C168();
  __swift_project_value_buffer(v8, qword_28156D7E8);
  v9 = sub_26666C148();
  v10 = sub_26666C618();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_266549000, v9, v10, "[StrategyHelpers] actionForInputForRecurrencePrompt Determining action for input", v11, 2u);
    MEMORY[0x266789690](v11, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_266669DF8();
  v12 = sub_2665CF4BC(v2);
  (*(v6 + 8))(v2, v4);
  if (v12 - 1 < 2)
  {
    return sub_2666697D8();
  }

  if (v12)
  {
    return sub_2666697E8();
  }

  return sub_2666697C8();
}

uint64_t sub_2665D19A0@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_266668D98();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_23();
  if (a2)
  {
    sub_2665D1730(*a1, a2);
  }

  sub_26666BCA8();
  (*(v11 + 16))(v4, a3, v9);
  result = sub_26666BC98();
  *a4 = result;
  return result;
}

void sub_2665D1AA0()
{
  OUTLINED_FUNCTION_28_0();
  v23 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v12 = OUTLINED_FUNCTION_3_3(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_16_10();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_25_7();
  sub_2665A9D2C(v10, v0);
  v14 = sub_266668B08();
  v15 = 0;
  if (__swift_getEnumTagSinglePayload(v0, 1, v14) != 1)
  {
    v15 = sub_266668A18();
    OUTLINED_FUNCTION_4_5();
    (*(v16 + 8))(v0, v14);
  }

  sub_2665A9D2C(v8, v1);
  OUTLINED_FUNCTION_27_5(v1, 1, v14);
  if (v17)
  {
    v19 = 0;
    if (!v4)
    {
LABEL_8:
      v18 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v19 = sub_266668A18();
    OUTLINED_FUNCTION_4_5();
    (*(v20 + 8))(v1, v14);
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  v18 = sub_26666C2F8();

LABEL_9:
  v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v21 initWithStartDateComponents:v15 endDateComponents:v19 recurrenceRule:v6 userInput:v18 allDay:v22];

  sub_266594028(v8, &unk_28007DC90, &qword_266676EB0);
  sub_266594028(v10, &unk_28007DC90, &qword_266676EB0);
  OUTLINED_FUNCTION_27_0();
}

id sub_2665D1CD4()
{
  v2 = v0;
  sub_266668EB8();
  OUTLINED_FUNCTION_3_0();
  v69 = v4;
  v70 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  sub_266668E68();
  OUTLINED_FUNCTION_3_0();
  v66 = v9;
  v67 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v12 = v11 - v10;
  v71 = sub_266668B08();
  OUTLINED_FUNCTION_3_0();
  v68 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v19 = OUTLINED_FUNCTION_3_3(v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v23 = OUTLINED_FUNCTION_3_3(v22);
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - v24;
  v26 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v72 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_14();
  result = [v2 startDate];
  if (result)
  {
    v31 = result;
    sub_266668CE8();

    v32 = [v2 endDate];
    if (v32)
    {
      v33 = v32;
      sub_266668CE8();

      OUTLINED_FUNCTION_26_2();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v26);
      sub_266594028(v25, &qword_28007D140, &qword_26666F140);
      sub_2665D3034();
      if ((v37 & 1) == 0)
      {
        v38 = [v2 endDateComponents];
        if (v38)
        {
          v39 = v38;
          sub_266668A28();

          v40 = 0;
        }

        else
        {
          v40 = 1;
        }

        __swift_storeEnumTagSinglePayload(v21, v40, 1, v71);
        v44 = sub_2666450AC();
        sub_266594028(v21, &unk_28007DC90, &qword_266676EB0);
        if (!v44)
        {
          return (*(v72 + 8))(v1, v26);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v26);
      sub_266594028(v25, &qword_28007D140, &qword_26666F140);
    }

    v45 = [v2 allDay];
    sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
    v46 = sub_26666C658();
    v47 = v46;
    if (v45)
    {
      v48 = sub_26666C678();

      if (v48)
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v49 = sub_26666C168();
        __swift_project_value_buffer(v49, qword_28156D7E8);
        v50 = sub_26666C148();
        v51 = sub_26666C5E8();
        if (OUTLINED_FUNCTION_7_2(v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_266549000, v50, v51, "#resolveEndDate allDay event with no endDate provided", v52, 2u);
          OUTLINED_FUNCTION_4_1();
        }

        return (*(v72 + 8))(v1, v26);
      }
    }

    else
    {
    }

    sub_266552C44(0, &qword_28007D258, 0x277CF77C8);
    v53 = sub_26666C648();
    if (v53)
    {
      v54 = v53;
      [v53 defaultEventDuration];
      v56 = v55;
    }

    else
    {
      v56 = 0x40AC200000000000;
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v57 = sub_26666C168();
    __swift_project_value_buffer(v57, qword_28156D7E8);
    v58 = sub_26666C148();
    v59 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 134217984;
      *(v60 + 4) = v56;
      _os_log_impl(&dword_266549000, v58, v59, "[resolveEndDate] no endDate provided and not allDay, setting duration to %f", v60, 0xCu);
      OUTLINED_FUNCTION_4_1();
    }

    sub_266668E58();
    sub_266668EA8();
    sub_266668C78();
    sub_266668DD8();
    v61 = *(v72 + 8);
    v62 = OUTLINED_FUNCTION_23_7();
    v61(v62);
    (*(v69 + 8))(v7, v70);
    (*(v66 + 8))(v12, v67);
    v63 = sub_266668A18();
    v64 = sub_26666C2F8();
    [v2 setValue:v63 forKeyPath:v64];

    (*(v68 + 8))(v17, v71);
    return (v61)(v1, v26);
  }

  return result;
}

id sub_2665D2370()
{
  v1 = [v0 allDay];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 BOOLValue];

  return v3;
}

void sub_2665D23CC()
{
  OUTLINED_FUNCTION_28_0();
  v8 = v7;
  v66 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v11 = OUTLINED_FUNCTION_3_3(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_27_8();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_15();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_14();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_16_10();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_6();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_14();
  if (v8)
  {
    v19 = [v8 startDateComponents];
    if (v19)
    {
      v20 = v19;
      sub_266668A28();

      v21 = sub_266668B08();
      v22 = 0;
    }

    else
    {
      v21 = sub_266668B08();
      v22 = 1;
    }

    __swift_storeEnumTagSinglePayload(v6, v22, 1, v21);
    v27 = OUTLINED_FUNCTION_35_4();
    sub_2665D515C(v27, v28);
    sub_266668B08();
    OUTLINED_FUNCTION_27_5(v4, 1, v21);
    if (!v29)
    {
      OUTLINED_FUNCTION_4_5();
      (*(v33 + 32))(v0, v4, v21);
      OUTLINED_FUNCTION_26_2();
      __swift_storeEnumTagSinglePayload(v34, v35, v36, v21);
      v37 = v66;
      v38 = &selRef_setConflictingEventIdentifiers_;
      goto LABEL_14;
    }
  }

  else
  {
    sub_266668B08();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }

  v37 = v66;
  v30 = [v66 startDateComponents];
  if (v30)
  {
    v31 = v30;
    sub_266668A28();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v39 = sub_266668B08();
  __swift_storeEnumTagSinglePayload(v5, v32, 1, v39);
  sub_2665D515C(v5, v0);
  OUTLINED_FUNCTION_27_5(v4, 1, v39);
  if (!v29)
  {
    sub_266594028(v4, &unk_28007DC90, &qword_266676EB0);
  }

  v38 = &selRef_setConflictingEventIdentifiers_;
  if (!v8)
  {
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v39);
    v46 = v65;
    goto LABEL_20;
  }

LABEL_14:
  v40 = [v8 v38[27]];
  if (v40)
  {
    v41 = v40;
    sub_266668A28();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  v43 = sub_266668B08();
  __swift_storeEnumTagSinglePayload(v3, v42, 1, v43);
  v44 = OUTLINED_FUNCTION_30_7();
  sub_2665D515C(v44, v45);
  OUTLINED_FUNCTION_27_5(v1, 1, v43);
  v46 = v65;
  if (!v29)
  {
    OUTLINED_FUNCTION_4_5();
    (*(v47 + 32))(v65, v1, v43);
    OUTLINED_FUNCTION_26_2();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v43);
    goto LABEL_25;
  }

LABEL_20:
  v54 = [v37 v38[27]];
  if (v54)
  {
    v55 = v54;
    sub_266668A28();

    v56 = 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = sub_266668B08();
  __swift_storeEnumTagSinglePayload(v2, v56, 1, v57);
  sub_2665D515C(v2, v46);
  OUTLINED_FUNCTION_27_5(v1, 1, v57);
  if (!v29)
  {
    sub_266594028(v1, &unk_28007DC90, &qword_266676EB0);
  }

LABEL_25:
  v58 = [v8 recurrenceRule];
  if (v58)
  {
    if (!v8)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v58 = [v37 recurrenceRule];
    if (!v8)
    {
      goto LABEL_31;
    }
  }

  v59 = sub_2665D50F8(v8);
  if (v60)
  {
    v61 = v59;
    v62 = v60;
    goto LABEL_32;
  }

LABEL_31:
  v61 = sub_2665D50F8(v37);
  v62 = v63;

LABEL_32:
  v64 = [v8 allDay];
  if (!v64)
  {
    v64 = [v66 allDay];
  }

  objc_allocWithZone(MEMORY[0x277CD3B68]);
  sub_26660B270(v0, v46, v58, v61, v62, v64);
  OUTLINED_FUNCTION_27_0();
}

void sub_2665D289C()
{
  OUTLINED_FUNCTION_28_0();
  v107 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v6 = OUTLINED_FUNCTION_3_3(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_5();
  v109 = v7 - v8;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_5();
  v102 = v10;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_24_5();
  v104 = v12;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_24_5();
  v108 = v14;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24_5();
  v106 = v16;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_24_5();
  v100 = v18;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_24_5();
  v101 = v20;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v21);
  v105 = v98 - v22;
  v110 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10_5();
  v99 = (v26 - v27);
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v28);
  v30 = v98 - v29;
  v115 = sub_266668EB8();
  OUTLINED_FUNCTION_3_0();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_5();
  v114 = v34 - v35;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_14();
  v113 = sub_266668E68();
  OUTLINED_FUNCTION_3_0();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_25_7();
  v41 = sub_266668B08();
  OUTLINED_FUNCTION_3_0();
  v103 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_10_14();
  MEMORY[0x28223BE20](v44);
  v46 = v98 - v45;
  sub_266668E58();
  sub_266668EA8();
  v111 = v4;
  v47 = [v4 startDate];
  if (!v47)
  {
    __break(1u);
    goto LABEL_16;
  }

  v48 = v47;
  sub_266668CE8();

  v112 = v46;
  OUTLINED_FUNCTION_23_2();
  sub_266668DD8();
  v49 = *(v32 + 8);
  v98[1] = v32 + 8;
  v49(v1, v115);
  v50 = *(v38 + 8);
  v50(v0, v113);
  v51 = v24 + 8;
  v52 = *(v24 + 8);
  v53 = v30;
  v54 = v110;
  v98[2] = v51;
  v52(v53, v110);
  sub_266668E58();
  sub_266668EA8();
  v55 = [v111 endDate];
  if (!v55)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v56 = v55;
  v57 = v99;
  sub_266668CE8();

  v58 = v114;
  sub_266668DD8();
  v49(v58, v115);
  v50(v2, v113);
  v52(v57, v54);
  v59 = v107;
  v60 = [v107 startDateComponents];
  if (v60)
  {
    v61 = v60;
    v62 = v100;
    sub_266668A28();

    v63 = 0;
    v64 = v105;
    v65 = v106;
    v66 = v102;
    v67 = v103;
  }

  else
  {
    v63 = 1;
    v64 = v105;
    v65 = v106;
    v66 = v102;
    v67 = v103;
    v62 = v100;
  }

  OUTLINED_FUNCTION_3_24(v62, v63);
  v68 = v62;
  v69 = v101;
  sub_2665D515C(v68, v101);
  OUTLINED_FUNCTION_1_28(v69);
  v70 = v116;
  if (v71)
  {
    sub_266594028(v69, &unk_28007DC90, &qword_266676EB0);
    v77 = 1;
  }

  else
  {
    (*(v67 + 16))(v65, v112, v41);
    OUTLINED_FUNCTION_26_2();
    __swift_storeEnumTagSinglePayload(v72, v73, v74, v41);
    sub_266644BD4(v65, v64);
    sub_266594028(v65, &unk_28007DC90, &qword_266676EB0);
    v75 = OUTLINED_FUNCTION_19_13();
    v76(v75);
    v77 = 0;
  }

  v78 = 1;
  OUTLINED_FUNCTION_3_24(v64, v77);
  v79 = [v59 endDateComponents];
  if (v79)
  {
    v80 = v79;
    sub_266668A28();

    v78 = 0;
  }

  OUTLINED_FUNCTION_3_24(v66, v78);
  v81 = v104;
  sub_2665D515C(v66, v104);
  OUTLINED_FUNCTION_1_28(v81);
  if (v71)
  {
    sub_266594028(v81, &unk_28007DC90, &qword_266676EB0);
    v88 = 1;
    v85 = v108;
  }

  else
  {
    (*(v67 + 16))(v65, v70, v41);
    OUTLINED_FUNCTION_26_2();
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v41);
    v85 = v108;
    sub_266644BD4(v65, v108);
    sub_266594028(v65, &unk_28007DC90, &qword_266676EB0);
    v86 = OUTLINED_FUNCTION_19_13();
    v87(v86);
    v88 = 0;
  }

  OUTLINED_FUNCTION_3_24(v85, v88);
  sub_2665A9D2C(v64, v65);
  sub_2665A9D2C(v85, v109);
  v89 = [v59 recurrenceRule];
  v90 = sub_2665D50F8(v59);
  v92 = v91;
  sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
  v93 = sub_26666C658();
  v94 = objc_allocWithZone(MEMORY[0x277CD3B68]);
  v95 = OUTLINED_FUNCTION_30_7();
  sub_26660B270(v95, v96, v89, v90, v92, v93);
  sub_266594028(v85, &unk_28007DC90, &qword_266676EB0);
  sub_266594028(v64, &unk_28007DC90, &qword_266676EB0);
  v97 = *(v67 + 8);
  v97(v116, v41);
  v97(v112, v41);
  OUTLINED_FUNCTION_27_0();
}

void sub_2665D3034()
{
  OUTLINED_FUNCTION_28_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v9 = OUTLINED_FUNCTION_3_3(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_5();
  v86 = v10 - v11;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_24_5();
  v85 = v13;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_24_5();
  v88 = v15;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24_5();
  v87 = v17;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_24_5();
  v90 = v19;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_14();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_7();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_27_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17_9();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_8_15();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_12();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_6_14();
  v29 = [v1 startDateComponents];
  if (v29)
  {
    v30 = v29;
    sub_266668A28();

    v31 = sub_266668B08();
    v32 = 0;
  }

  else
  {
    v31 = sub_266668B08();
    v32 = 1;
  }

  v33 = 1;
  __swift_storeEnumTagSinglePayload(v7, v32, 1, v31);
  sub_2665D515C(v7, v3);
  v34 = [v1 endDateComponents];
  if (v34)
  {
    v35 = v34;
    sub_266668A28();

    v33 = 0;
  }

  v36 = sub_266668B08();
  OUTLINED_FUNCTION_3_24(v6, v33);
  v37 = OUTLINED_FUNCTION_30_7();
  sub_2665D515C(v37, v38);
  sub_2665A9D2C(v3, v1);
  OUTLINED_FUNCTION_1_28(v1);
  if (v39)
  {
    sub_266594028(v1, &unk_28007DC90, &qword_266676EB0);
    v40 = 0;
    v42 = 1;
  }

  else
  {
    v40 = sub_266668A78();
    v42 = v41;
    OUTLINED_FUNCTION_0_15();
    v43 = OUTLINED_FUNCTION_19_13();
    v44(v43);
  }

  sub_2665A9D2C(v4, v5);
  OUTLINED_FUNCTION_1_28(v5);
  if (v39)
  {
    sub_266594028(v5, &unk_28007DC90, &qword_266676EB0);
    if ((v42 & 1) == 0)
    {
LABEL_57:
      v79 = OUTLINED_FUNCTION_23_7();
      sub_266594028(v79, v80, &qword_266676EB0);
      sub_266594028(v3, &unk_28007DC90, &qword_266676EB0);
      goto LABEL_58;
    }
  }

  else
  {
    v45 = sub_266668A78();
    v47 = v46;
    OUTLINED_FUNCTION_0_15();
    (*(v48 + 8))(v5, v36);
    if (v42)
    {
      if ((v47 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if ((v47 & 1) != 0 || v40 != v45)
    {
      goto LABEL_57;
    }
  }

  v49 = OUTLINED_FUNCTION_23_2();
  sub_2665A9D2C(v49, v50);
  OUTLINED_FUNCTION_1_28(v2);
  if (v39)
  {
    sub_266594028(v2, &unk_28007DC90, &qword_266676EB0);
    v51 = 0;
    v53 = 1;
  }

  else
  {
    v51 = sub_266668A88();
    v53 = v52;
    OUTLINED_FUNCTION_0_15();
    (*(v54 + 8))(v2, v36);
  }

  v55 = OUTLINED_FUNCTION_23_7();
  sub_2665A9D2C(v55, v56);
  OUTLINED_FUNCTION_1_28(v0);
  if (v39)
  {
    sub_266594028(v0, &unk_28007DC90, &qword_266676EB0);
    if ((v53 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v57 = sub_266668A88();
    v59 = v58;
    OUTLINED_FUNCTION_0_15();
    (*(v60 + 8))(v0, v36);
    if (v53)
    {
      if ((v59 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if ((v59 & 1) != 0 || v51 != v57)
    {
      goto LABEL_57;
    }
  }

  sub_2665A9D2C(v3, v89);
  OUTLINED_FUNCTION_1_28(v89);
  if (v39)
  {
    sub_266594028(v89, &unk_28007DC90, &qword_266676EB0);
    v61 = 0;
    v63 = 1;
  }

  else
  {
    v61 = sub_266668A38();
    v63 = v62;
    OUTLINED_FUNCTION_0_15();
    v64 = OUTLINED_FUNCTION_19_13();
    v65(v64);
  }

  sub_2665A9D2C(v4, v90);
  OUTLINED_FUNCTION_1_28(v90);
  if (v39)
  {
    sub_266594028(v90, &unk_28007DC90, &qword_266676EB0);
    if ((v63 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v66 = sub_266668A38();
    v68 = v67;
    OUTLINED_FUNCTION_0_15();
    (*(v69 + 8))(v90, v36);
    if (v63)
    {
      if ((v68 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if ((v68 & 1) != 0 || v61 != v66)
    {
      goto LABEL_57;
    }
  }

  sub_2665A9D2C(v3, v87);
  OUTLINED_FUNCTION_1_28(v87);
  if (v39)
  {
    sub_266594028(v87, &unk_28007DC90, &qword_266676EB0);
    v70 = 0;
    v72 = 1;
  }

  else
  {
    v70 = sub_266668A58();
    v72 = v71;
    OUTLINED_FUNCTION_0_15();
    v73 = OUTLINED_FUNCTION_19_13();
    v74(v73);
  }

  sub_2665A9D2C(v4, v88);
  OUTLINED_FUNCTION_1_28(v88);
  if (v39)
  {
    sub_266594028(v88, &unk_28007DC90, &qword_266676EB0);
    if ((v72 & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v75 = sub_266668A58();
    v77 = v76;
    OUTLINED_FUNCTION_0_15();
    (*(v78 + 8))(v88, v36);
    if (v72)
    {
      if ((v77 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if ((v77 & 1) != 0 || v70 != v75)
    {
      goto LABEL_57;
    }
  }

  sub_2665A9D2C(v3, v85);
  OUTLINED_FUNCTION_1_28(v85);
  if (v39)
  {
    sub_266594028(v85, &unk_28007DC90, &qword_266676EB0);
  }

  else
  {
    sub_266668A98();
    OUTLINED_FUNCTION_0_15();
    v81 = OUTLINED_FUNCTION_19_13();
    v82(v81);
  }

  sub_2665A9D2C(v4, v86);
  OUTLINED_FUNCTION_1_28(v86);
  if (v39)
  {
    OUTLINED_FUNCTION_32_6(v4);
    OUTLINED_FUNCTION_32_6(v3);
    OUTLINED_FUNCTION_32_6(v86);
  }

  else
  {
    sub_266668A98();
    sub_266594028(v4, &unk_28007DC90, &qword_266676EB0);
    sub_266594028(v3, &unk_28007DC90, &qword_266676EB0);
    OUTLINED_FUNCTION_0_15();
    v83 = OUTLINED_FUNCTION_35_4();
    v84(v83);
  }

LABEL_58:
  OUTLINED_FUNCTION_27_0();
}

unint64_t sub_2665D37E8()
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v5 = OUTLINED_FUNCTION_3_3(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_5();
  v87 = v6 - v7;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_16_10();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24_5();
  v92 = v10;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v11);
  v93 = &v82[-v12];
  v96 = sub_266668E68();
  OUTLINED_FUNCTION_3_0();
  v94 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_0();
  v95 = v16 - v15;
  v17 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_26_6();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8_15();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v82[-v24];
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17_9();
  MEMORY[0x28223BE20](v26);
  v28 = &v82[-v27];
  v29 = [v0 startDate];
  if (!v29)
  {
    return v29;
  }

  sub_266668CE8();

  v88 = v0;
  v29 = [v0 endDate];
  if (!v29)
  {
    (*(v19 + 8))(v28, v17);
    return v29;
  }

  v85 = v3;
  sub_266668CE8();

  v30 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v31 = sub_26666C168();
  v32 = __swift_project_value_buffer(v31, qword_28156D7E8);
  v33 = *(v19 + 16);
  v91 = v28;
  v33(v25, v28, v17);
  v90 = v30;
  v33(v1, v30, v17);
  v86 = v32;
  v34 = sub_26666C148();
  v35 = sub_26666C618();
  v36 = os_log_type_enabled(v34, v35);
  v97 = v17;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v98 = v84;
    *v37 = 136315394;
    sub_2665D51CC();
    v38 = sub_26666CAA8();
    v40 = v39;
    v83 = v35;
    v41 = *(v19 + 8);
    v89 = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v41)(v25, v97);
    v42 = sub_2665BFC90(v38, v40, &v98);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v17 = v97;
    v43 = sub_26666CAA8();
    v45 = v44;
    v46 = OUTLINED_FUNCTION_30_7();
    v41(v46);
    v47 = sub_2665BFC90(v43, v45, &v98);

    *(v37 + 14) = v47;
    _os_log_impl(&dword_266549000, v34, v83, "startDate: %s endDate: %s", v37, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_1();
    v48 = v41;
    OUTLINED_FUNCTION_4_1();

    v49 = v89;
  }

  else
  {

    v48 = *(v19 + 8);
    v49 = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50 = OUTLINED_FUNCTION_30_7();
    v48(v50);
    (v48)(v25, v17);
  }

  v51 = v95;
  sub_266668E28();
  sub_266668CF8();
  sub_266668D18();
  (v48)(v2, v17);
  v52 = sub_266668E48();
  v53 = [v88 endDateComponents];
  if (v53)
  {
    v54 = v53;
    v55 = v92;
    sub_266668A28();

    v56 = 0;
  }

  else
  {
    v56 = 1;
    v55 = v92;
  }

  v57 = v93;
  v89 = v49;
  v58 = sub_266668B08();
  __swift_storeEnumTagSinglePayload(v55, v56, 1, v58);
  sub_2665D515C(v55, v57);
  OUTLINED_FUNCTION_27_5(v57, 1, v58);
  if (v59)
  {
    sub_266594028(v57, &unk_28007DC90, &qword_266676EB0);
  }

  else
  {
    v63 = sub_266668A58();
    v65 = v64;
    OUTLINED_FUNCTION_4_5();
    v67 = *(v66 + 8);
    v67(v57, v58);
    if ((v65 & 1) == 0 && v63 == 23)
    {
      v68 = [v88 endDateComponents];
      if (v68)
      {
        v69 = v68;
        v70 = v87;
        sub_266668A28();

        v71 = 0;
      }

      else
      {
        v71 = 1;
        v70 = v87;
      }

      v72 = v85;
      __swift_storeEnumTagSinglePayload(v70, v71, 1, v58);
      sub_2665D515C(v70, v72);
      OUTLINED_FUNCTION_27_5(v72, 1, v58);
      if (v59)
      {
        sub_266594028(v72, &unk_28007DC90, &qword_266676EB0);
        v60 = v97;
        v61 = v91;
      }

      else
      {
        v73 = sub_266668A98();
        v75 = v74;
        v67(v72, v58);
        v60 = v97;
        v61 = v91;
        if ((v75 & 1) == 0)
        {
          v29 = v73 == 59;
LABEL_28:
          OUTLINED_FUNCTION_28_6();
          if (!v62)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }
      }

      v29 = 0;
      goto LABEL_28;
    }
  }

  v29 = 0;
  OUTLINED_FUNCTION_28_6();
  v60 = v97;
  v61 = v91;
  if (!v62)
  {
    goto LABEL_31;
  }

LABEL_30:
  v76 = v29;
  if ((v52 ^ 1))
  {
LABEL_31:
    v76 = v29;
    v29 = 0;
  }

  v77 = sub_26666C148();
  v78 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v78))
  {
    OUTLINED_FUNCTION_28_6();
    if (v62)
    {
      v79 = 1;
    }

    else
    {
      v79 = 0;
    }

    v80 = swift_slowAlloc();
    *v80 = 67109888;
    *(v80 + 4) = v29;
    *(v80 + 8) = 1024;
    *(v80 + 10) = v79;
    v61 = v91;
    *(v80 + 14) = 1024;
    *(v80 + 16) = v52 & 1;
    *(v80 + 20) = 1024;
    *(v80 + 22) = v76;
    _os_log_impl(&dword_266549000, v77, v78, "isRestOfToday: %{BOOL}d startIsNow: %{BOOL}d endIsSameDay: %{BOOL}d endIsEndOfDay: %{BOOL}d", v80, 0x1Au);
    v60 = v97;
    OUTLINED_FUNCTION_4_1();
  }

  (*(v94 + 8))(v51, v96);
  (v48)(v90, v60);
  (v48)(v61, v60);
  return v29;
}

uint64_t sub_2665D3FB8()
{
  v2 = v0;
  v3 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v11 = OUTLINED_FUNCTION_3_3(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v15 = OUTLINED_FUNCTION_3_3(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_27_8();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_25_7();
  v17 = [v0 startDateComponents];
  if (v17)
  {
    v18 = v17;
    sub_266668A28();

    v19 = sub_266668B08();
    v20 = 0;
  }

  else
  {
    v19 = sub_266668B08();
    v20 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v20, 1, v19);
  v21 = sub_266645300();
  sub_266594028(v0, &unk_28007DC90, &qword_266676EB0);
  if (v21 & 1) != 0 && ((v22 = [v0 endDateComponents]) == 0 ? (v24 = 1) : (v23 = v22, sub_266668A28(), v23, v24 = 0), v25 = sub_266668B08(), __swift_storeEnumTagSinglePayload(v1, v24, 1, v25), v26 = sub_266645300(), sub_266594028(v1, &unk_28007DC90, &qword_266676EB0), (v26))
  {
    v27 = [v2 endDate];
    if (v27)
    {
      v28 = v27;
      sub_266668CE8();

      (*(v5 + 32))(v13, v9, v3);
      OUTLINED_FUNCTION_26_2();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v3);
      sub_266594028(v13, &qword_28007D140, &qword_26666F140);
      sub_2665D3034();
      v33 = v32;
    }

    else
    {
      v33 = 1;
      OUTLINED_FUNCTION_7_6();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v3);
      sub_266594028(v13, &qword_28007D140, &qword_26666F140);
    }
  }

  else
  {
    v33 = 0;
  }

  return v33 & 1;
}

void sub_2665D42A4()
{
  OUTLINED_FUNCTION_28_0();
  v67 = v0;
  sub_266668EB8();
  OUTLINED_FUNCTION_3_0();
  v64 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v3 = sub_266668E68();
  OUTLINED_FUNCTION_3_0();
  v63 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v10 = OUTLINED_FUNCTION_3_3(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_5();
  v65 = v11 - v12;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v60 - v14;
  v16 = sub_266668D38();
  OUTLINED_FUNCTION_3_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_10_14();
  MEMORY[0x28223BE20](v21);
  v22 = [v67 startDate];
  if (v22)
  {
    v23 = v22;
    sub_266668CE8();

    v24 = [v67 endDate];
    if (v24)
    {
      v25 = v24;
      sub_266668CE8();

      sub_266668CF8();
      if (sub_266668CA8() & 1) != 0 && (sub_266668C98())
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v26 = sub_26666C168();
        __swift_project_value_buffer(v26, qword_28156D7E8);
        v27 = sub_26666C148();
        v61 = sub_26666C5E8();
        v62 = v27;
        if (os_log_type_enabled(v27, v61))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_266549000, v62, v61, "#adjustForPastStart setting start datetime to now", v28, 2u);
          OUTLINED_FUNCTION_4_1();
        }

        sub_266668E58();
        sub_266668EA8();
        sub_266668DD8();
        v29 = OUTLINED_FUNCTION_35_4();
        v30(v29);
        (*(v63 + 8))(v8, v3);
        v31 = sub_266668B08();
        v32 = 1;
        OUTLINED_FUNCTION_26_2();
        __swift_storeEnumTagSinglePayload(v33, v34, v35, v31);
        v36 = [v67 endDateComponents];
        if (v36)
        {
          v37 = v36;
          v38 = v65;
          sub_266668A28();

          v32 = 0;
        }

        else
        {
          v38 = v65;
        }

        __swift_storeEnumTagSinglePayload(v38, v32, 1, v31);
        v51 = [v67 recurrenceRule];
        v52 = sub_2665D50F8(v67);
        v54 = v53;
        v55 = [v67 allDay];
        v56 = objc_allocWithZone(MEMORY[0x277CD3B68]);
        sub_26660B270(v15, v38, v51, v52, v54, v55);
        v57 = *(v18 + 8);
        v58 = OUTLINED_FUNCTION_23_7();
        v57(v58);
        (v57)(v66, v16);
        v59 = OUTLINED_FUNCTION_45();
        v57(v59);
        OUTLINED_FUNCTION_27_0();
        return;
      }

      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v39 = sub_26666C168();
      __swift_project_value_buffer(v39, qword_28156D7E8);
      v40 = sub_26666C148();
      v41 = sub_26666C5E8();
      if (OUTLINED_FUNCTION_7_2(v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_266549000, v40, v41, "#adjustForPastStart not modifying start datetime", v42, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v43 = *(v18 + 8);
      v44 = OUTLINED_FUNCTION_23_7();
      v43(v44);
      (v43)(v66, v16);
      v45 = OUTLINED_FUNCTION_45();
      v43(v45);
    }

    else
    {
      v46 = OUTLINED_FUNCTION_45();
      v47(v46);
    }
  }

  OUTLINED_FUNCTION_27_0();

  v50 = v48;
}

void sub_2665D4854()
{
  OUTLINED_FUNCTION_28_0();
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v11 = OUTLINED_FUNCTION_3_3(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_10_5();
  v13 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_15();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_16_10();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17_9();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_33_3();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_26_6();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_14();
  if (v9)
  {
    v57 = v22;
    v58 = v21;
    v23 = v9;
    v24 = [v23 startDateComponents];
    if (v24)
    {
      v25 = v24;
      sub_266668A28();

      v26 = sub_266668B08();
      v27 = 0;
    }

    else
    {
      v26 = sub_266668B08();
      v27 = 1;
    }

    v28 = 1;
    __swift_storeEnumTagSinglePayload(v5, v27, 1, v26);
    sub_2665D515C(v5, v3);
    v29 = [v23 endDateComponents];
    if (v29)
    {
      v30 = v29;
      sub_266668A28();

      v28 = 0;
    }

    v31 = sub_266668B08();
    OUTLINED_FUNCTION_3_24(v2, v28);
    v32 = OUTLINED_FUNCTION_45();
    sub_2665D515C(v32, v33);
    OUTLINED_FUNCTION_1_28(v0);
    if (v34)
    {
      sub_266594028(v3, &unk_28007DC90, &qword_266676EB0);

LABEL_39:
      sub_266594028(v0, &unk_28007DC90, &qword_266676EB0);
      goto LABEL_40;
    }

    sub_2665A9D2C(v3, v1);
    OUTLINED_FUNCTION_1_28(v1);
    if (v34)
    {
      sub_266594028(v1, &unk_28007DC90, &qword_266676EB0);
      v35 = 0;
      v37 = 1;
    }

    else
    {
      v35 = sub_266668A78();
      v37 = v36;
      OUTLINED_FUNCTION_0_15();
      v38 = OUTLINED_FUNCTION_19_13();
      v39(v38);
    }

    sub_2665A9D2C(v0, v7);
    OUTLINED_FUNCTION_1_28(v7);
    if (v34)
    {
      sub_266594028(v7, &unk_28007DC90, &qword_266676EB0);
      if ((v37 & 1) == 0)
      {
LABEL_38:

        sub_266594028(v3, &unk_28007DC90, &qword_266676EB0);
        goto LABEL_39;
      }
    }

    else
    {
      v56 = v35;
      v40 = sub_266668A78();
      v42 = v41;
      OUTLINED_FUNCTION_0_15();
      v43 = OUTLINED_FUNCTION_35_4();
      v44(v43);
      if (v37)
      {
        if ((v42 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if ((v42 & 1) != 0 || v56 != v40)
      {
        goto LABEL_38;
      }
    }

    sub_2665A9D2C(v3, v6);
    OUTLINED_FUNCTION_1_28(v6);
    if (v34)
    {
      sub_266594028(v6, &unk_28007DC90, &qword_266676EB0);
      v45 = 0;
      v47 = 1;
    }

    else
    {
      v45 = sub_266668A88();
      v47 = v46;
      OUTLINED_FUNCTION_0_15();
      (*(v48 + 8))(v6, v31);
    }

    sub_2665A9D2C(v0, v4);
    OUTLINED_FUNCTION_1_28(v4);
    if (v34)
    {
      sub_266594028(v4, &unk_28007DC90, &qword_266676EB0);
      if ((v47 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v49 = sub_266668A88();
      v51 = v50;
      OUTLINED_FUNCTION_0_15();
      (*(v52 + 8))(v4, v31);
      if (v47)
      {
        if ((v51 & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      else if ((v51 & 1) != 0 || v45 != v49)
      {
        goto LABEL_38;
      }
    }

    sub_2665A9D2C(v3, v57);
    OUTLINED_FUNCTION_1_28(v57);
    if (v34)
    {
      sub_266594028(v57, &unk_28007DC90, &qword_266676EB0);
    }

    else
    {
      sub_266668A38();
      OUTLINED_FUNCTION_0_15();
      v53 = OUTLINED_FUNCTION_19_13();
      v54(v53);
    }

    sub_2665A9D2C(v0, v58);
    OUTLINED_FUNCTION_1_28(v58);
    if (v34)
    {
      OUTLINED_FUNCTION_32_6(v3);

      OUTLINED_FUNCTION_32_6(v58);
    }

    else
    {
      sub_266668A38();

      sub_266594028(v3, &unk_28007DC90, &qword_266676EB0);
      OUTLINED_FUNCTION_0_15();
      (*(v55 + 8))(v58, v31);
    }

    goto LABEL_39;
  }

LABEL_40:
  OUTLINED_FUNCTION_27_0();
}

void sub_2665D4E04()
{
  OUTLINED_FUNCTION_28_0();
  v5 = v4;
  v7 = v6;
  v45 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  v10 = OUTLINED_FUNCTION_3_3(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_5();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_18_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_12();
  MEMORY[0x28223BE20](v16);
  v18 = &v44 - v17;
  v19 = sub_266668B08();
  OUTLINED_FUNCTION_3_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_4_25();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_14();
  if (!v7)
  {
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v19);
LABEL_8:
    v31 = v18;
LABEL_17:
    sub_266594028(v31, &unk_28007DC90, &qword_266676EB0);
    goto LABEL_18;
  }

  v24 = [v7 *v5];
  if (v24)
  {
    v25 = v24;
    sub_266668A28();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v3, v26, 1, v19);
  sub_2665D515C(v3, v18);
  OUTLINED_FUNCTION_27_5(v18, 1, v19);
  if (v30)
  {
    goto LABEL_8;
  }

  v32 = *(v21 + 32);
  v32(v1, v18, v19);
  if (!v45)
  {
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v19);
LABEL_16:
    v39 = OUTLINED_FUNCTION_23_2();
    v40(v39);
    v31 = v0;
    goto LABEL_17;
  }

  v33 = [v45 *v5];
  if (v33)
  {
    v34 = v33;
    sub_266668A28();

    v35 = 0;
  }

  else
  {
    v35 = 1;
  }

  __swift_storeEnumTagSinglePayload(v13, v35, 1, v19);
  sub_2665D515C(v13, v0);
  OUTLINED_FUNCTION_27_5(v0, 1, v19);
  if (v30)
  {
    goto LABEL_16;
  }

  v41 = OUTLINED_FUNCTION_23_7();
  (v32)(v41);
  sub_266645474(v2);
  v42 = *(v21 + 8);
  v42(v2, v19);
  v43 = OUTLINED_FUNCTION_23_2();
  (v42)(v43);
LABEL_18:
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_2665D50F8(void *a1)
{
  v1 = [a1 userInput];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_26666C308();

  return v3;
}

uint64_t sub_2665D515C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2665D51CC()
{
  result = qword_28007E9E8;
  if (!qword_28007E9E8)
  {
    sub_266668D38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007E9E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_6(uint64_t a1)
{

  return sub_266594028(a1, v1, v2);
}

unint64_t sub_2665D5350(unint64_t a1)
{
  v1 = a1;
  if (a1 >= 8)
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v2 = sub_26666C168();
    __swift_project_value_buffer(v2, qword_28156D7E8);
    v3 = sub_26666C148();
    v4 = sub_26666C608();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_266549000, v3, v4, "Unknown EKParticipantStatus: %ld", v5, 0xCu);
      MEMORY[0x266789690](v5, -1, -1);
    }

    return 0;
  }

  return v1;
}

uint64_t sub_2665D5448(uint64_t a1, unsigned __int8 *a2)
{
  v3 = OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_promptedForEventRecurrence;
  v4 = a2[OBJC_IVAR____TtCO19SiriCalendarIntents11DeleteEvent13IntentHandler_promptedForEventRecurrence];
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v5 = sub_26666C168();
  __swift_project_value_buffer(v5, qword_28156D7E8);
  v6 = a2;
  v7 = sub_26666C148();
  v8 = sub_26666C618();
  v9 = v4 ^ 1u;
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    *(v10 + 4) = v9;
    *(v10 + 8) = 1024;
    *(v10 + 10) = a2[v3];

    _os_log_impl(&dword_266549000, v7, v8, "[DeleteEvent.FlowProducersAsync] Should Confirm Intent: %{BOOL}d; Prompted For EventRecurrence: %{BOOL}d", v10, 0xEu);
    MEMORY[0x266789690](v10, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  return v9;
}

uint64_t sub_2665D5588(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_2665D55C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2665D5644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v58 = sub_266669E18();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v57 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  v15 = sub_266669E58();
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_266669DF8();
  v21 = sub_266561674(v20, v63);
  (*(v17 + 8))(v20, v15, v21);
  if (v63[0] == 3)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v22 = sub_26666C168();
    __swift_project_value_buffer(v22, qword_28156D7E8);
    OUTLINED_FUNCTION_12_9();
    v23 = v58;
    v24(v9, a1, v58);
    v25 = sub_26666C148();
    v26 = sub_26666C618();
    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_21();
      v27 = OUTLINED_FUNCTION_13();
      v61 = v27;
      *v12 = 136315138;
      sub_2665B934C();
      sub_26666CAA8();
      OUTLINED_FUNCTION_11_12();
      v28(v9, v23);
      v29 = OUTLINED_FUNCTION_21_5();
      v32 = sub_2665BFC90(v29, v30, v31);

      *(v12 + 4) = v32;
      _os_log_impl(&dword_266549000, v25, v26, "[DeleteEvent ConfirmIntent] Returning .ignore() for input: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_12();
    }

    else
    {

      (*(v5 + 8))(v9, v23);
    }

    sub_2666697E8();
  }

  else
  {
    sub_2665B9288(v63, &v61);
    if (v61 == 2)
    {
      v33 = v58;
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v34 = sub_26666C168();
      __swift_project_value_buffer(v34, qword_28156D7E8);
      OUTLINED_FUNCTION_12_9();
      OUTLINED_FUNCTION_20_9();
      v35();
      v36 = sub_26666C148();
      v37 = sub_26666C618();
      if (os_log_type_enabled(v36, v37))
      {
        OUTLINED_FUNCTION_21();
        v38 = OUTLINED_FUNCTION_13();
        v60 = v38;
        *v12 = 136315138;
        sub_2665B934C();
        sub_26666CAA8();
        OUTLINED_FUNCTION_11_12();
        v39(v14, v33);
        v40 = OUTLINED_FUNCTION_21_5();
        v43 = sub_2665BFC90(v40, v41, v42);

        *(v12 + 4) = v43;
        _os_log_impl(&dword_266549000, v36, v37, "[DeleteEvent ConfirmIntent] Returning .cancel() for input: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_12();
      }

      else
      {

        (*(v5 + 8))(v14, v33);
      }

      sub_2666697C8();
    }

    else
    {
      v44 = v58;
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v45 = sub_26666C168();
      __swift_project_value_buffer(v45, qword_28156D7E8);
      OUTLINED_FUNCTION_12_9();
      OUTLINED_FUNCTION_20_9();
      v46();
      v47 = sub_26666C148();
      v48 = sub_26666C618();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_21();
        v50 = swift_slowAlloc();
        v60 = v50;
        *v49 = 136315138;
        sub_2665B934C();
        sub_26666CAA8();
        OUTLINED_FUNCTION_11_12();
        v51(v12, v44);
        v52 = OUTLINED_FUNCTION_21_5();
        v55 = sub_2665BFC90(v52, v53, v54);

        *(v49 + 4) = v55;
        _os_log_impl(&dword_266549000, v47, v48, "[DeleteEvent ConfirmIntent] Returning .handle() for input: %s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {

        (*(v5 + 8))(v12, v44);
      }

      sub_2666697D8();
      sub_266557D74(&v62, &unk_28007D200, &qword_26666FD20);
    }
  }

  return sub_266557D74(v63, &qword_28007E368, &unk_266673E30);
}

uint64_t sub_2665D5C00()
{
  OUTLINED_FUNCTION_14();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v5 = sub_266669E18();
  v1[20] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[21] = v6;
  v1[22] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600);
  OUTLINED_FUNCTION_3_3(v7);
  v1[23] = OUTLINED_FUNCTION_19();
  v8 = sub_266669E58();
  v1[24] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[25] = v9;
  v1[26] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2665D5D24()
{
  v32 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1(*(v0 + 152), *(*(v0 + 152) + 24));
  sub_266669DF8();
  v4 = sub_266561674(v1, v0 + 16);
  (*(v2 + 8))(v1, v3, v4);
  sub_2665B9288(v0 + 16, v0 + 72);
  v5 = *(v0 + 72);
  if (v5 == 2)
  {
    sub_2665B92F8(v0 + 72);
    goto LABEL_5;
  }

  if (v5 == 3)
  {
    sub_266557D74(v0 + 72, &qword_28007E368, &unk_266673E30);
LABEL_5:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    v9 = *(v0 + 136);
    v10 = sub_26666C168();
    v11 = __swift_project_value_buffer(v10, qword_28156D7E8);
    (*(v7 + 16))(v6, v9, v8);
    v12 = sub_26666C148();
    v13 = sub_26666C5F8();
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_21();
      v14 = OUTLINED_FUNCTION_13();
      v31 = v14;
      *v11 = 136315138;
      sub_266669DF8();
      v15 = sub_26666C318();
      v17 = v16;
      v18 = OUTLINED_FUNCTION_21_5();
      v19(v18);
      v20 = sub_2665BFC90(v15, v17, &v31);

      *(v11 + 4) = v20;
      _os_log_impl(&dword_266549000, v12, v13, "[DeleteEvent ConfirmIntent] Did not get ConfirmationTask from parse: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_12();
    }

    else
    {
      v22 = *(v0 + 168);
      v21 = *(v0 + 176);
      v23 = *(v0 + 160);

      (*(v22 + 8))(v21, v23);
    }

    sub_26656CBFC();
    v24 = swift_allocError();
    OUTLINED_FUNCTION_14_10(v24, v25);
    sub_266557D74(v0 + 16, &qword_28007E368, &unk_266673E30);

    OUTLINED_FUNCTION_24_1();
    goto LABEL_14;
  }

  v27 = *(v0 + 184);
  sub_266557D74(v0 + 80, &unk_28007D200, &qword_26666FD20);
  v28 = sub_266669AF8();
  v29 = MEMORY[0x277D5BED0];
  if ((v5 & 1) == 0)
  {
    v29 = MEMORY[0x277D5BED8];
  }

  (*(*(v28 - 8) + 104))(v27, *v29, v28);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E9F0, &qword_266675E18);
  sub_266669B68();
  sub_266552C44(0, &qword_28007D010, 0x277CD3B98);
  sub_266669A98();
  sub_266557D74(v0 + 16, &qword_28007E368, &unk_266673E30);

  OUTLINED_FUNCTION_24_1();
LABEL_14:

  return v26();
}

uint64_t sub_2665D6108()
{
  OUTLINED_FUNCTION_14();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v4);
  v1[30] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v5);
  v1[31] = OUTLINED_FUNCTION_19();
  v6 = sub_266669708();
  v1[32] = v6;
  OUTLINED_FUNCTION_3_1(v6);
  v1[33] = v7;
  v1[34] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v8);
  v1[35] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v9);
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v10 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_3_3(v10);
  v1[38] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2665D6298()
{
  if (qword_28156C150 != -1)
  {
LABEL_40:
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266549000, v2, v3, "[DeleteEvent.ConfirmIntent] Making confirm delete output", v4, 2u);
    OUTLINED_FUNCTION_12();
  }

  v5 = v0[29];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E9F0, &qword_266675E18);
  v6 = sub_266669B68();
  v7 = sub_26658C0E0(v6);
  v9 = v8;
  v10 = *__swift_project_boxed_opaque_existential_1((v5 + 80), *(v5 + 104));
  v0[5] = type metadata accessor for EventProvider();
  v0[6] = &off_287806290;
  v0[2] = v10;
  sub_26655358C((v0 + 2), (v0 + 7));

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (!v9)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);

  v11 = sub_26655A8B4();
  v12 = sub_26665140C(v7, v9, v11);
  v0[39] = v12;

  swift_bridgeObjectRelease_n();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  if (!v12)
  {
LABEL_20:
    v23 = sub_26666C148();
    v24 = sub_26666C608();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_266549000, v23, v24, "[DeleteEvent ConfirmIntent] target event identifier unexpectedly nil on intent", v25, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    sub_26656CBFC();
    v26 = swift_allocError();
    OUTLINED_FUNCTION_14_10(v26, v27);
    OUTLINED_FUNCTION_20_10();

    OUTLINED_FUNCTION_24_1();

    return v38();
  }

  sub_26666B078();
  swift_allocObject();
  v13 = sub_26666B068();
  v0[40] = v13;
  sub_26666AF28();
  swift_allocObject();
  v14 = sub_26666AF18();
  v0[41] = v14;
  sub_26666AC38();
  sub_266552C44(0, &qword_28156C110, 0x277CD3AD8);
  v15 = v12;
  sub_2665EB4F8();
  v17 = v16;
  v0[42] = v16;
  v49 = v15;
  v18 = COERCE_DOUBLE(sub_2665EF6AC(v49));
  if (v18 == 0.0)
  {
    v30 = 1;
  }

  else
  {
    v44 = v0;
    v45 = v17;
    v46 = v14;
    v47 = v13;
    v48 = v5;
    v50 = MEMORY[0x277D84F90];
    v19 = sub_2665C485C();
    v20 = 0;
    v0 = (*&v18 & 0xC000000000000001);
    while (v19 != v20)
    {
      if (v0)
      {
        v21 = MEMORY[0x266788B60](v20, *&v18);
      }

      else
      {
        if (v20 >= *((*&v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v21 = *(*&v18 + 8 * v20 + 32);
      }

      v22 = v21;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      if ([v21 participantType] == 1 && (objc_msgSend(v22, sel_isCurrentUser) & 1) == 0)
      {
        sub_26666C868();
        sub_26666C8A8();
        sub_26666C8B8();
        sub_26666C878();
      }

      else
      {
      }

      ++v20;
    }

    v28 = sub_2665C485C();

    v29 = v28 <= 3;
    if (v28 <= 3)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = (v28 - 3);
    }

    v30 = v29;
    v5 = v48;
    v0 = v44;
  }

  sub_26655358C(v5 + 80, (v0 + 12));
  v31 = v17;
  sub_2665AAA8C(v31, (v0 + 12), v32, v33, v34, v35, v36, v37, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  v40 = v0[29];
  type metadata accessor for CalendarEventConcept(0);
  sub_26655358C(v40 + 40, (v0 + 17));
  v41 = sub_2665CA7F4(v31, v0 + 17);
  v0[43] = v41;
  v42 = swift_task_alloc();
  v0[44] = v42;
  *v42 = v0;
  v42[1] = sub_2665D6818;

  return sub_2665DD990(v41, 0, 0, *&v18, v30);
}

uint64_t sub_2665D6818(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2665D6950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v15 = *(v14 + 368);
  v16 = *(v14 + 320);
  v18 = *(v14 + 296);
  v17 = *(v14 + 304);
  v19 = *(v14 + 280);
  sub_26655358C(*(v14 + 232) + 128, v14 + 176);
  __swift_project_boxed_opaque_existential_1((v14 + 176), *(v14 + 200));
  sub_2665B5F10(v17, v18);
  v20 = type metadata accessor for Snippet(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v20);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
  sub_266662A60(v16, v19);
  if (v15)
  {
    v24 = *(v14 + 336);
    v25 = *(v14 + 312);
    v27 = *(v14 + 296);
    v26 = *(v14 + 304);
    v28 = *(v14 + 288);

    sub_266557D74(v28, &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v27, &unk_28007DE30, &unk_26666EAF0);
    sub_2665AE46C(v26);
    __swift_destroy_boxed_opaque_existential_1((v14 + 176));

    OUTLINED_FUNCTION_24_1();

    return v29();
  }

  else
  {
    v31 = *(v14 + 280);
    v32 = sub_2666699C8();
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v32);
    sub_2666696B8();
    sub_26666BB08();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
    sub_266669788();
    OUTLINED_FUNCTION_7_6();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    sub_26656CFC4();
    v41 = swift_task_alloc();
    *(v14 + 376) = v41;
    *v41 = v14;
    v41[1] = sub_2665D6C24;
    OUTLINED_FUNCTION_4_7();

    return sub_2665643AC(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_2665D6C24()
{
  OUTLINED_FUNCTION_5_1();
  v2 = v1[35];
  v3 = v1[34];
  v4 = v1[33];
  v5 = v1[32];
  v6 = v1[31];
  v7 = v1[30];
  v8 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v9 = v8;

  sub_266557D74(v7, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v6, &unk_28007DE20, &unk_26666EAE0);
  (*(v4 + 8))(v3, v5);
  sub_266557D74(v2, &qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_20_9();
  sub_266557D74(v10, v11, v12);
  OUTLINED_FUNCTION_20_9();
  sub_266557D74(v13, v14, v15);
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_2665D6E50()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 304);

  sub_2665AE46C(v3);
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  OUTLINED_FUNCTION_24_1();

  return v4();
}

uint64_t sub_2665D6F4C()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[38];

  sub_2665AE46C(v3);
  OUTLINED_FUNCTION_20_10();

  OUTLINED_FUNCTION_24_1();

  return v4();
}

uint64_t sub_2665D7018()
{
  OUTLINED_FUNCTION_14();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_2665D70AC();
}

uint64_t sub_2665D70AC()
{
  OUTLINED_FUNCTION_14();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_266669708();
  v1[9] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[10] = v4;
  v1[11] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v5);
  v1[12] = OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v6);
  v1[13] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v7);
  v1[14] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2665D7218()
{
  sub_26655358C(*(v0 + 64) + 128, v0 + 16);
  v1 = *(v0 + 40);
  *(v0 + 136) = v1;
  *(v0 + 152) = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  v2 = type metadata accessor for Snippet(0);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v2);
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v2);
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_2665D7308;

  return sub_2665DE2B8();
}

uint64_t sub_2665D7308(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  v5[21] = v1;

  if (v1)
  {
    v8 = v5[16];
    sub_266557D74(v5[15], &unk_28007DE30, &unk_26666EAF0);
    sub_266557D74(v8, &unk_28007DE30, &unk_26666EAF0);
  }

  else
  {
    v5[22] = a1;
  }

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2665D744C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  sub_2666699C8();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  sub_26666BB08();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  sub_266669788();
  OUTLINED_FUNCTION_7_6();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  sub_2666696A8();
  sub_26656CFC4();
  v27 = swift_task_alloc();
  v14[23] = v27;
  *v27 = v14;
  v27[1] = sub_2665D75A0;
  v28 = v14[22];
  v29 = v14[16];
  v31 = v14[14];
  v30 = v14[15];
  v32 = v14[11];
  v33 = v14[7];

  return sub_2665643AC(v33, v29, v30, v28, 0, 0, v31, v32, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2665D75A0()
{
  OUTLINED_FUNCTION_5_1();
  v2 = v1[22];
  v3 = v1[14];
  v4 = v1[13];
  v5 = v1[12];
  v6 = v1[11];
  v7 = v1[10];
  v8 = v1[9];
  v9 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v10 = v9;

  (*(v7 + 8))(v6, v8);
  sub_266557D74(v5, &qword_28007D330, &unk_26666EEA0);
  sub_266557D74(v4, &unk_28007DE20, &unk_26666EAE0);
  sub_266557D74(v3, &qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_20_9();
  sub_266557D74(v11, v12, v13);
  OUTLINED_FUNCTION_20_9();
  sub_266557D74(v14, v15, v16);
  OUTLINED_FUNCTION_4_14();
  OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2665D77E8()
{
  OUTLINED_FUNCTION_22_3();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_2665D787C()
{
  OUTLINED_FUNCTION_22_3();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_2665D7914()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_2665D5C00();
}

uint64_t sub_2665D79C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_2665D6108();
}

uint64_t sub_2665D7A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26656CD98;

  return MEMORY[0x2821B9D08](a1, a2, a3, a4);
}

uint64_t sub_2665D7B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26656CD98;

  return MEMORY[0x2821B9D10](a1, a2, a3, a4);
}

uint64_t sub_2665D7BF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_2665D7018();
}

uint64_t sub_2665D7C9C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656C894;

  return sub_2665D70AC();
}

uint64_t sub_2665D7D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26656CD98;

  return MEMORY[0x2821B9D00](a1, a2, a3, a4, a5);
}

uint64_t OUTLINED_FUNCTION_20_10()
{
}

uint64_t OUTLINED_FUNCTION_22_3()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
}

uint64_t type metadata accessor for CommonCATsSimple(uint64_t a1)
{
  result = qword_28156CB40;
  if (!qword_28156CB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665D7EE4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_2665D987C;
  v3 = MEMORY[0x277D84F90];

  return v5(0xD000000000000029, 0x800000026667EC70, v3);
}

uint64_t sub_2665D7F9C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665D7FB4()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_266671D70;
  *(v2 + 32) = 0x746E657665;
  *(v2 + 40) = 0xE500000000000000;
  if (v1)
  {
    type metadata accessor for CalendarEventConcept(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v3 = v0[3];
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_15_11();
  *(v2 + 72) = v5;
  *(v2 + 80) = v4 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
  *(v2 + 88) = 0xE800000000000000;
  *(v2 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB90, &unk_266671E00);
  *(v2 + 96) = v3;
  OUTLINED_FUNCTION_7_11();

  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_20_11(v6);
  v7 = OUTLINED_FUNCTION_8_16();

  return v9(v7);
}

uint64_t sub_2665D8118()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_6_5();

    return v11(v10);
  }
}

uint64_t sub_2665D8244(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 64) = a3;
  *(v4 + 16) = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665D8260()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  *(v2 + 16) = xmmword_266671D70;
  *(v2 + 32) = 0xD000000000000016;
  *(v2 + 40) = 0x800000026667EC10;
  if (v1)
  {
    v3 = type metadata accessor for CalendarEventConcept(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = *(v0 + 64);
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "numConflicts");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  else
  {
    v6 = *(v0 + 24);
    v7 = MEMORY[0x277D839F8];
  }

  *(v2 + 96) = v6;
  *(v2 + 120) = v7;
  OUTLINED_FUNCTION_7_11();
  v8 = swift_task_alloc();
  *(v0 + 48) = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_20_11(v8);
  OUTLINED_FUNCTION_19_14();

  return v9();
}

uint64_t sub_2665D83E8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_6_5();

    return v11(v10);
  }
}

uint64_t sub_2665D8514()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  *(v1 + 72) = v3;
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v5);
  *(v1 + 40) = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2665D85A8()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  *(v0 + 48) = v2;
  *(v2 + 16) = xmmword_266672100;
  *(v2 + 32) = 0x7954746E65746E69;
  *(v2 + 40) = 0xEA00000000006570;
  OUTLINED_FUNCTION_23_8(v2, v3, &unk_28007D130, &unk_266671DF0);
  v4 = sub_26666BDA8();
  if (OUTLINED_FUNCTION_7_16(v4) == 1)
  {
    sub_266557D74(*(v0 + 40), &unk_28007D130, &unk_266671DF0);
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
  }

  else
  {
    *(v2 + 72) = v1;
    __swift_allocate_boxed_opaque_existential_1((v2 + 48));
    OUTLINED_FUNCTION_4_26();
    OUTLINED_FUNCTION_17_5();
    v5();
  }

  v6 = *(v0 + 72);
  v7 = *(v0 + 24);
  *(v2 + 80) = 0x73746E657665;
  *(v2 + 88) = 0xE600000000000000;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DDA0, &qword_266675EA0);
  *(v2 + 96) = v7;
  *(v2 + 120) = v8;
  *(v2 + 128) = 0xD000000000000019;
  *(v2 + 136) = 0x800000026667EBF0;
  *(v2 + 168) = MEMORY[0x277D839B0];
  *(v2 + 144) = v6;
  v11 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v9 = swift_task_alloc();
  *(v0 + 56) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_20_11(v9);

  return v11(0xD000000000000018, 0x800000026667EBD0, v2);
}

uint64_t sub_2665D87C0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_11();

    return v11(v10);
  }
}

uint64_t sub_2665D88F0()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_2665D8954()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 96) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v8);
  *(v1 + 64) = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2665D89EC()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  v3 = OUTLINED_FUNCTION_12_13(v2, xmmword_266671D50);
  OUTLINED_FUNCTION_23_8(v3, v4, &unk_28007D130, &unk_266671DF0);
  v5 = sub_26666BDA8();
  if (OUTLINED_FUNCTION_7_16(v5) == 1)
  {
    sub_266557D74(*(v0 + 64), &unk_28007D130, &unk_266671DF0);
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
  }

  else
  {
    *(v2 + 72) = v1;
    __swift_allocate_boxed_opaque_existential_1((v2 + 48));
    OUTLINED_FUNCTION_4_26();
    OUTLINED_FUNCTION_17_5();
    v6();
  }

  v7 = *(v0 + 24);
  strcpy((v2 + 80), "dateTimeRange");
  *(v2 + 94) = -4864;
  if (v7)
  {
    v8 = sub_26666BB78();
    v9 = v7;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  v10 = *(v0 + 32);
  *(v2 + 96) = v9;
  *(v2 + 120) = v8;
  *(v2 + 128) = 0x6E65727275636572;
  *(v2 + 136) = 0xEA00000000006563;
  if (v10)
  {
    v11 = type metadata accessor for CalendarEventRecurrence();
    v12 = v10;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  v14 = *(v0 + 40);
  v13 = *(v0 + 48);
  v15 = *(v0 + 96);
  *(v2 + 144) = v12;
  *(v2 + 168) = v11;
  *(v2 + 176) = 0x7961446C6C417369;
  v16 = MEMORY[0x277D839B0];
  *(v2 + 184) = 0xE800000000000000;
  *(v2 + 192) = v15;
  *(v2 + 216) = v16;
  *(v2 + 224) = 0x7365657469766E69;
  *(v2 + 232) = 0xE800000000000000;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB90, &unk_266671E00);
  *(v2 + 240) = v14;
  *(v2 + 264) = v17;
  *(v2 + 272) = 0x6E6F697461636F6CLL;
  *(v2 + 280) = 0xE800000000000000;
  v18 = 0;
  if (v13)
  {
    v18 = sub_26666BD58();
  }

  else
  {
    *(v2 + 296) = 0;
    *(v2 + 304) = 0;
  }

  *(v2 + 288) = v13;
  *(v2 + 312) = v18;
  OUTLINED_FUNCTION_7_11();

  v19 = swift_task_alloc();
  *(v0 + 80) = v19;
  *v19 = v0;
  v19[1] = sub_266592C28;
  v20 = OUTLINED_FUNCTION_8_16();

  return v22(v20);
}

uint64_t sub_2665D8CB8()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v5);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2665D8D54()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  v0[8] = v2;
  v3 = OUTLINED_FUNCTION_12_13(v2, xmmword_266672100);
  OUTLINED_FUNCTION_23_8(v3, v4, &unk_28007D130, &unk_266671DF0);
  v5 = sub_26666BDA8();
  if (OUTLINED_FUNCTION_7_16(v5) == 1)
  {
    sub_266557D74(v0[7], &unk_28007D130, &unk_266671DF0);
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
  }

  else
  {
    *(v2 + 72) = v1;
    __swift_allocate_boxed_opaque_existential_1((v2 + 48));
    OUTLINED_FUNCTION_4_26();
    OUTLINED_FUNCTION_17_5();
    v6();
  }

  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  OUTLINED_FUNCTION_15_11();
  *(v2 + 80) = v10 & 0xFFFFFFFFFFFFLL | 0x7365000000000000;
  *(v2 + 88) = 0xE800000000000000;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB90, &unk_266671E00);
  *(v2 + 96) = v8;
  *(v2 + 120) = v11;
  *(v2 + 128) = 0x756F4E746E657665;
  *(v2 + 136) = 0xE90000000000006ELL;
  sub_26659236C(v9, v7, &unk_28007D130, &unk_266671DF0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v1);
  v13 = v0[6];
  if (EnumTagSinglePayload == 1)
  {

    sub_266557D74(v13, &unk_28007D130, &unk_266671DF0);
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
  }

  else
  {
    *(v2 + 168) = v1;
    __swift_allocate_boxed_opaque_existential_1((v2 + 144));
    OUTLINED_FUNCTION_4_26();
    OUTLINED_FUNCTION_17_5();
    v14();
  }

  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v19 = v15;
  v16 = swift_task_alloc();
  v0[9] = v16;
  *v16 = v0;
  v16[1] = sub_2665D8FC0;
  v17 = OUTLINED_FUNCTION_8_16();

  return v19(v17);
}

uint64_t sub_2665D8FC0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_11();

    return v11(v10);
  }
}

uint64_t sub_2665D90FC()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_24_1();

  return v0();
}

uint64_t sub_2665D916C()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_3_3(v4);
  v1[5] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2665D91FC()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  v0[6] = v2;
  *(v2 + 16) = xmmword_266671D70;
  *(v2 + 32) = 0xD000000000000011;
  *(v2 + 40) = 0x800000026667E140;
  OUTLINED_FUNCTION_23_8(v2, v3, &unk_28007D130, &unk_266671DF0);
  v4 = sub_26666BDA8();
  if (OUTLINED_FUNCTION_7_16(v4) == 1)
  {
    sub_266557D74(v0[5], &unk_28007D130, &unk_266671DF0);
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
  }

  else
  {
    *(v2 + 72) = v1;
    __swift_allocate_boxed_opaque_existential_1((v2 + 48));
    OUTLINED_FUNCTION_4_26();
    OUTLINED_FUNCTION_17_5();
    v5();
  }

  v6 = v0[3];
  OUTLINED_FUNCTION_15_11();
  *(v2 + 80) = v7 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
  *(v2 + 88) = 0xE700000000000000;
  v8 = 0;
  if (v6)
  {
    v8 = sub_26666BCA8();
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  *(v2 + 96) = v6;
  *(v2 + 120) = v8;
  OUTLINED_FUNCTION_7_11();
  v9 = swift_task_alloc();
  v0[7] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_20_11(v9);
  OUTLINED_FUNCTION_19_14();

  return v10();
}

uint64_t sub_2665D93C4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_4_14();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_5_11();

    return v11(v10);
  }
}

uint64_t sub_2665D94F4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_26658BF28;
  v3 = OUTLINED_FUNCTION_8_16();

  return v5(v3);
}

uint64_t sub_2665D95A4()
{
  swift_allocObject();
  OUTLINED_FUNCTION_17_5();
  return sub_2665D95F4(v0, v1, v2);
}

uint64_t sub_2665D95F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26666BE18();
  OUTLINED_FUNCTION_13_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2B0, &qword_26666E5F0);
  v12 = OUTLINED_FUNCTION_3_3(v11);
  MEMORY[0x28223BE20](v12);
  sub_26659236C(a1, &v16 - v13, &qword_28007D2B0, &qword_26666E5F0);
  (*(v7 + 16))(v10, a2, v3);
  v14 = sub_26666BDB8();
  (*(v7 + 8))(a2, v3);
  sub_266557D74(a1, &qword_28007D2B0, &qword_26666E5F0);
  return v14;
}

uint64_t sub_2665D976C(uint64_t a1, uint64_t a2)
{
  sub_26666BE18();
  OUTLINED_FUNCTION_13_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_26666BDC8();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t OUTLINED_FUNCTION_7_16(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

__n128 *OUTLINED_FUNCTION_12_13(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x656C746974;
  result[2].n128_u64[1] = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_23_8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_26659236C(v4, v5, a3, a4);
}

uint64_t sub_2665D9924(uint64_t a1)
{
  if (sub_26666A9F8())
  {
    v1 = sub_26666ABB8();
    v3 = v2;

    if (v3)
    {
      goto LABEL_6;
    }
  }

  v4 = sub_26666A9F8();
  if (v4)
  {
    v5 = sub_26666ABC8();

    if (v5)
    {
      v1 = sub_26666AAF8();
      v3 = v6;

      if (v3)
      {
LABEL_6:
        sub_2665BD5A0();
        v7 = objc_allocWithZone(MEMORY[0x277CE41F8]);

        v4 = sub_266606794([v7 init], v1, v3, 0);
        goto LABEL_7;
      }
    }

    else
    {
    }

    return 0;
  }

LABEL_7:

  return v4;
}

uint64_t sub_2665D9A28(uint64_t a1)
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);

  v2 = sub_26666C148();
  v3 = sub_26666C618();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 136315138;
    sub_26666AA48();

    v6 = sub_26666C318();
    v8 = sub_2665BFC90(v6, v7, &v13);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_266549000, v2, v3, "[USOIntentHelpers] Attempting to make event attribute for %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x266789690](v5, -1, -1);
    MEMORY[0x266789690](v4, -1, -1);
  }

  if (sub_26666A9E8())
  {

    return 3;
  }

  else if (sub_26666AA38() || sub_26666A9D8())
  {

    return 2;
  }

  else if (sub_26666AA28() || sub_26666A9F8())
  {

    return 1;
  }

  else
  {
    v10 = sub_26666C148();
    v11 = sub_26666C5F8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_20();
      *v12 = 0;
      _os_log_impl(&dword_266549000, v10, v11, "[USOIntentHelpers] Unsupported requested event attribute", v12, 2u);
      MEMORY[0x266789690](v12, -1, -1);
    }

    return 0;
  }
}

unint64_t sub_2665D9C5C(uint64_t a1, char *a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;
  v6 = sub_26666A318();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v61 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v61 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28007E9F8, &qword_266675EA8);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v67 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  i = &v61 - v19;
  v21 = sub_26666A4C8();
  v71 = *(v21 + 16);
  v72 = v7;
  if (v71)
  {
    v64 = a3;
    v65 = v10;
    v66 = i;
    v22 = *(v7 + 16);
    v69 = v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v70 = v22;
    (v22)(v15);
    v23 = v7 + 8;
    v68 = (v7 + 32);
    for (i = 1; ; ++i)
    {
      if (v71 == i)
      {

        i = v66;
        (*v68)(v66, v15, v6);
        __swift_storeEnumTagSinglePayload(i, 0, 1, v6);
        v7 = v72;
        v10 = v65;
        goto LABEL_11;
      }

      if (i >= *(v21 + 16))
      {
        break;
      }

      LODWORD(v7) = v21;
      v3 = v72;
      v70(v13, v69 + *(v72 + 72) * i, v6);
      v4 = sub_26666A2F8();
      v24 = sub_26666A2F8();
      v25 = *(v3 + 8);
      if (v4 >= v24)
      {
        v25(v13, v6);
      }

      else
      {
        v25(v15, v6);
        (*v68)(v15, v13, v6);
      }
    }

    __break(1u);
LABEL_41:
    if (v7 == v4)
    {
      goto LABEL_42;
    }

    goto LABEL_48;
  }

  __swift_storeEnumTagSinglePayload(i, 1, 1, v6);
LABEL_11:
  v26 = sub_26666A278();
  if ((v26 & 0x100000000) != 0 || (v27 = v26, v28 = sub_26666A298(), (v28 & 0x100000000) != 0))
  {
LABEL_15:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v30 = sub_26666C168();
    __swift_project_value_buffer(v30, qword_28156D7E8);
    v31 = sub_26666C148();
    v32 = sub_26666C5F8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_24_3(v33);
      OUTLINED_FUNCTION_3_25(&dword_266549000, v34, v32, "[USOIntentHelpers] Missing required indexes from entity span or utterance alignment");
      OUTLINED_FUNCTION_11_6();
    }

    goto LABEL_20;
  }

  LODWORD(v3) = v28;
  v29 = v67;
  sub_2665DA3BC(i, v67);
  if (__swift_getEnumTagSinglePayload(v29, 1, v6) == 1)
  {
    sub_2665DA354(v29);
    goto LABEL_15;
  }

  (*(v7 + 32))(v10, v29, v6);
  if (sub_26666A2F8() > v27 || sub_26666A308() < v3)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v37 = sub_26666C168();
    __swift_project_value_buffer(v37, qword_28156D7E8);
    v38 = sub_26666C148();
    v39 = sub_26666C5F8();
    if (OUTLINED_FUNCTION_4_11(v39))
    {
      v40 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_24_3(v40);
      OUTLINED_FUNCTION_3_25(&dword_266549000, v41, v3, "[USOIntentHelpers] Entity span is not contained within utterance alignment");
      OUTLINED_FUNCTION_11_6();
    }

    (*(v7 + 8))(v10, v6);
    goto LABEL_20;
  }

  v42 = sub_26666A2F8();
  v43 = v27 - v42;
  if (v27 < v42)
  {
    __break(1u);
    goto LABEL_51;
  }

  v71 = v6;
  v44 = sub_26666A2F8();
  LODWORD(v7) = v3 - v44;
  if (v3 < v44)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v45 = sub_26666A308();
  v15 = v10;
  v46 = sub_26666A2F8();
  v4 = v45 - v46;
  if (v45 < v46)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v23 = v62;
  v13 = v63;
  if (MEMORY[0x266788730](v62, v63) != v4)
  {
    if (qword_28156C150 == -1)
    {
LABEL_38:
      v47 = sub_26666C168();
      __swift_project_value_buffer(v47, qword_28156D7E8);
      v48 = sub_26666C148();
      v49 = sub_26666C5F8();
      v50 = OUTLINED_FUNCTION_4_11(v49);
      v51 = v72;
      if (!v50)
      {
LABEL_47:

        (*(v51 + 8))(v15, v71);
LABEL_20:
        v35 = 0;
LABEL_21:
        sub_2665DA354(i);
        return v35;
      }

      v52 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_24_3(v52);
      v54 = "[USOIntentHelpers] Base string string length is not the same as utterance alignment";
LABEL_46:
      OUTLINED_FUNCTION_3_25(&dword_266549000, v53, v3, v54);
      OUTLINED_FUNCTION_11_6();
      goto LABEL_47;
    }

LABEL_53:
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
    goto LABEL_38;
  }

  if (!v43)
  {
    goto LABEL_41;
  }

  if (v7 != v4)
  {
LABEL_42:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v55 = sub_26666C168();
    __swift_project_value_buffer(v55, qword_28156D7E8);
    v48 = sub_26666C148();
    v56 = sub_26666C618();
    v57 = OUTLINED_FUNCTION_4_11(v56);
    v51 = v72;
    if (!v57)
    {
      goto LABEL_47;
    }

    v58 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_24_3(v58);
    v54 = "[USOIntentHelpers] Entity Span is not a suffix or prefix of the utterance alignment";
    goto LABEL_46;
  }

LABEL_48:
  v73 = v23;
  v74 = v13;
  sub_266595F88();

  v59 = sub_26666C378();
  v73 = v23;
  v74 = v13;

  result = sub_26666C378();
  if (result >> 14 >= v59 >> 14)
  {
    v60 = MEMORY[0x266788740](v59, result, v23, v13);
    v35 = MEMORY[0x266788760](v60);
    (*(v72 + 8))(v15, v71);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_2665DA354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28007E9F8, &qword_266675EA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2665DA3BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28007E9F8, &qword_266675EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_3_25(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_2665DA448(uint64_t a1)
{
  sub_266669E88();
  OUTLINED_FUNCTION_3_0();
  v72 = v3;
  v73 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v71 = v5 - v4;
  v80 = sub_266669E48();
  OUTLINED_FUNCTION_3_0();
  v82 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_10();
  v78 = v8;
  MEMORY[0x28223BE20](v9);
  v79 = &v70 - v10;
  v81 = sub_26666B208();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_0();
  v16 = v15 - v14;
  v17 = sub_266669E58();
  OUTLINED_FUNCTION_3_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8_10();
  v76 = v21;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v70 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v70 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v70 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = *(v19 + 16);
  v77 = a1;
  v34 = &v70 - v33;
  v32();
  v35 = *(v19 + 88);
  v83 = v34;
  v36 = v35(v34, v17);
  if (v36 == *MEMORY[0x277D5C128])
  {
    (v32)(v31, v83, v17);
    (*(v19 + 96))(v31, v17);
    v37 = v81;
    (*(v12 + 32))(v16, v31, v81);
    v38 = sub_2665DAC20(v16);
    (*(v12 + 8))(v16, v37);
    v39 = v19;
    v40 = v17;
    goto LABEL_22;
  }

  v81 = v17;
  v74 = v32;
  v75 = v19;
  if (v36 != *MEMORY[0x277D5C150])
  {
    v49 = v74;
    v39 = v75;
    v40 = v81;
    if (v36 == *MEMORY[0x277D5C130])
    {
      (v74)(v25, v83, v81);
      (*(v39 + 96))(v25, v40);
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass() != 0;
      swift_unknownObjectRelease();
      goto LABEL_22;
    }

    if (v36 == *MEMORY[0x277D5C160])
    {
      (v74)(v31, v83, v81);
      (*(v39 + 96))(v31, v40);
      v55 = v71;
      v54 = v72;
      v56 = v73;
      (*(v72 + 32))(v71, v31, v73);
      v38 = sub_2665DAD94();
      (*(v54 + 8))(v55, v56);
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v40 = v81;
  (v74)(v28, v83, v81);
  v39 = v75;
  (*(v75 + 96))(v28, v40);
  v41 = v79;
  v42 = v28;
  v43 = v80;
  (*(v82 + 32))(v79, v42, v80);
  v44 = sub_266669E28();
  v46 = v45;
  v84 = 0xD000000000000028;
  v85 = 0x800000026667D640;
  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](0xD000000000000014, 0x800000026667DA00);
  if (v44 == v84 && v46 == v85)
  {

    goto LABEL_13;
  }

  v48 = sub_26666CAC8();

  if (v48)
  {
LABEL_13:
    v50 = v82;
    v51 = v78;
    (*(v82 + 16))(v78, v41, v43);
    sub_2665629D8(v51);
    v53 = v52;
    (*(v50 + 8))(v41, v43);
    v38 = v53 == 2;
    goto LABEL_22;
  }

  (*(v82 + 8))(v41, v43);
  v49 = v74;
LABEL_16:
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v57 = sub_26666C168();
  __swift_project_value_buffer(v57, qword_28156D7E8);
  v58 = v76;
  (v49)(v76, v77, v40);
  v59 = sub_26666C148();
  v60 = sub_26666C618();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = v49;
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v84 = v63;
    *v62 = 136315138;
    (v61)(v31, v58, v81);
    v64 = sub_26666C318();
    v65 = v58;
    v67 = v66;
    (*(v75 + 8))(v65, v81);
    v68 = sub_2665BFC90(v64, v67, &v84);

    *(v62 + 4) = v68;
    v40 = v81;
    v39 = v75;
    _os_log_impl(&dword_266549000, v59, v60, "CancelTask parse failed. Unsupported parse type: %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x266789690](v63, -1, -1);
    MEMORY[0x266789690](v62, -1, -1);
  }

  else
  {

    (*(v39 + 8))(v58, v40);
  }

  v38 = 0;
LABEL_22:
  (*(v39 + 8))(v83, v40);
  return v38 & 1;
}

uint64_t sub_2665DAC20(uint64_t a1)
{
  v2 = type metadata accessor for CalendarNLv3Intent(0);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_0();
  v5 = v4 - v3;
  v6 = sub_26666B208();
  (*(*(v6 - 8) + 16))(v5, a1, v6);
  if (qword_28007CE38 != -1)
  {
    swift_once();
  }

  sub_26656960C();
  sub_26666A528();
  sub_266563A38(v5);
  if (v11 == 7)
  {
    v7 = 0;
  }

  else if (sub_2666313F0(v11) == 0x6C65636E6163 && v8 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_26666CAC8();
  }

  return v7 & 1;
}

uint64_t sub_2665DAD94()
{
  v0 = sub_266669EE8();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2F8, &unk_266677220);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - v8;
  sub_266669E78();
  v10 = sub_266669ED8();
  (*(v2 + 8))(v6, v0);
  sub_2665EC518(v10, v9);

  v11 = sub_266669F98();
  if (__swift_getEnumTagSinglePayload(v9, 1, v11) == 1)
  {
    sub_2665DAF2C(v9);
    v12 = 0;
  }

  else
  {
    v12 = sub_266669F58();
    (*(*(v11 - 8) + 8))(v9, v11);
  }

  return v12 & 1;
}

uint64_t sub_2665DAF2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2F8, &unk_266677220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2665DAF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2665DAFD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 208))
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

uint64_t sub_2665DB018(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
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

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2665DB0A4()
{
  v1 = sub_266669E58();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  sub_266669DF8();
  v5 = sub_266561674(v4, &v15);
  v6 = *(v2 + 8);
  v6(v4, v1, v5);
  if (v15 == 3)
  {
    sub_26656CAEC(&v15, &qword_28007E368, &unk_266673E30);
    __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
    sub_266669DF8();
    sub_26659AC88(v4, &v15);
    (v6)(v4, v1);
    if (v16[24] == 255)
    {
      sub_26656CAEC(&v15, &unk_28007D200, &qword_26666FD20);
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v10 = sub_26666C168();
      __swift_project_value_buffer(v10, qword_28156D7E8);
      v11 = sub_26666C148();
      v12 = sub_26666C618();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = OUTLINED_FUNCTION_20();
        *v13 = 0;
        _os_log_impl(&dword_266549000, v11, v12, "[ChangeOrCancelStrategy] Unsupported input, returning .ignore", v13, 2u);
        MEMORY[0x266789690](v13, -1, -1);
      }

      return sub_2666697E8();
    }

    else
    {
      v18 = v15;
      *v19 = *v16;
      *&v19[9] = *&v16[9];
      v7 = OUTLINED_FUNCTION_16_11();
      sub_2665DB5D4(v7);
      return sub_266553988(&v18);
    }
  }

  else
  {
    v18 = v15;
    *v19 = *v16;
    *&v19[16] = *&v16[16];
    v20 = v17;
    v9 = OUTLINED_FUNCTION_16_11();
    sub_2665DB338(v9);
    return sub_2665B92F8(&v18);
  }
}

uint64_t sub_2665DB338(uint64_t a1)
{
  sub_2665DD59C(a1, v14);
  if (v14[0] == 2)
  {
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v1 = sub_26666C168();
    __swift_project_value_buffer(v1, qword_28156D7E8);
    v2 = sub_26666C148();
    v3 = sub_26666C618();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_266549000, v2, v3, "[ChangeOrCancelStrategy] Returning .cancel() for input", v4, 2u);
      MEMORY[0x266789690](v4, -1, -1);
    }

    return sub_2666697C8();
  }

  else
  {
    if (v14[0])
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v6 = sub_26666C168();
      __swift_project_value_buffer(v6, qword_28156D7E8);
      v7 = sub_26666C148();
      v8 = sub_26666C618();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_266549000, v7, v8, "[ChangeOrCancelStrategy] Returning .cancel() due to confirmed rejected.", v9, 2u);
        MEMORY[0x266789690](v9, -1, -1);
      }

      sub_2666697C8();
    }

    else
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v10 = sub_26666C168();
      __swift_project_value_buffer(v10, qword_28156D7E8);
      v11 = sub_26666C148();
      v12 = sub_26666C618();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_266549000, v11, v12, "[ChangeOrCancelStrategy] Returning .handle()", v13, 2u);
        MEMORY[0x266789690](v13, -1, -1);
      }

      sub_2666697D8();
    }

    return sub_26656CAEC(&v15, &unk_28007D200, &qword_26666FD20);
  }
}

uint64_t sub_2665DB5D4(uint64_t a1)
{
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v2 = sub_26666C168();
  __swift_project_value_buffer(v2, qword_28156D7E8);
  v3 = sub_26666C148();
  v4 = sub_26666C618();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266549000, v3, v4, "[ChangeOrCancelStrategy] Calculating action for input for calendarTask", v5, 2u);
    MEMORY[0x266789690](v5, -1, -1);
  }

  sub_266553950(a1, v8);
  v6 = v8[40];
  sub_266553988(v8);
  if (v6 == 3)
  {
    return sub_2666697D8();
  }

  else
  {
    return sub_2666697E8();
  }
}

uint64_t sub_2665DB6F4()
{
  OUTLINED_FUNCTION_14();
  v1[49] = v2;
  v1[50] = v0;
  v1[47] = v3;
  v1[48] = v4;
  v1[46] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600);
  OUTLINED_FUNCTION_3_3(v6);
  v1[51] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v7);
  v1[52] = OUTLINED_FUNCTION_19();
  v8 = sub_266669E58();
  v1[53] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[54] = v9;
  v1[55] = OUTLINED_FUNCTION_19();
  v10 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2665DB7F8()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 424);
  __swift_project_boxed_opaque_existential_1(*(v0 + 400), *(*(v0 + 400) + 24));
  sub_266669DF8();
  v4 = sub_266561674(v1, v0 + 16);
  v5 = *(v2 + 8);
  v5(v1, v3, v4);
  if (*(v0 + 16) == 3)
  {
    sub_26656CAEC(v0 + 16, &qword_28007E368, &unk_266673E30);
    *(v0 + 176) = 0u;
    *(v0 + 192) = 0u;
    *(v0 + 208) = 0;
    *(v0 + 216) = -1;
  }

  else
  {
    sub_2665DD59C(v0 + 16, v0 + 72);
    if (*(v0 + 72) == 2)
    {
      *(v0 + 208) = 0;
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
      *(v0 + 216) = -1;
      sub_2665B92F8(v0 + 16);
    }

    else
    {
      *(v0 + 201) = *(v0 + 105);
      v6 = *(v0 + 96);
      *(v0 + 176) = *(v0 + 80);
      *(v0 + 192) = v6;
      v7 = *(v0 + 216);
      sub_2665B92F8(v0 + 16);
      if (v7 != 255)
      {
        v8 = *(v0 + 192);
        *(v0 + 128) = *(v0 + 176);
        *(v0 + 144) = v8;
        *(v0 + 153) = *(v0 + 201);
        goto LABEL_9;
      }
    }
  }

  v9 = *(v0 + 440);
  v10 = *(v0 + 424);
  __swift_project_boxed_opaque_existential_1((*(v0 + 400) + 40), *(*(v0 + 400) + 64));
  sub_266669DF8();
  sub_26659AC88(v9, v0 + 128);
  (v5)(v9, v10);
  if (*(v0 + 216) != 255)
  {
    sub_26656CAEC(v0 + 176, &unk_28007D200, &qword_26666FD20);
  }

LABEL_9:
  v11 = *(*(v0 + 392) + 16);
  *(v0 + 448) = v11;
  *(v0 + 456) = sub_266669CE8();
  v12 = sub_266669CB8();
  *(v0 + 464) = v12;
  sub_26655A100(v0 + 128, v0 + 224);
  v13 = *(v0 + 264);
  if (v13 == 3)
  {
    sub_2665536F8((v0 + 224), v0 + 272);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v14 = sub_26666C168();
    *(v0 + 472) = __swift_project_value_buffer(v14, qword_28156D7E8);
    v15 = sub_26666C148();
    v16 = sub_26666C618();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = OUTLINED_FUNCTION_20();
      *v17 = 0;
      _os_log_impl(&dword_266549000, v15, v16, "[ChangeOrCancelStrategy] Checking for date time range on update task", v17, 2u);
      OUTLINED_FUNCTION_9_5();
    }

    v18 = sub_266669CC8();
    v19 = [v18 itemToConfirm];

    sub_26666C718();
    swift_unknownObjectRelease();
    *(v0 + 480) = sub_2665F0658((v0 + 312));
    *(v0 + 488) = v20;
    v39 = v20;
    __swift_destroy_boxed_opaque_existential_1((v0 + 312));
    v40 = *(v0 + 296);
    v41 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v40);
    v42 = [v39 startDate];
    if (v42)
    {
      v43 = v42;
      sub_266668CE8();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v45 = *(v0 + 416);
    v46 = sub_266668D38();
    __swift_storeEnumTagSinglePayload(v45, v44, 1, v46);
    v47 = swift_task_alloc();
    *(v0 + 496) = v47;
    v48 = *(v41 + 8);
    *v47 = v0;
    v47[1] = sub_2665DBE20;
    v49 = *(v0 + 416);

    return sub_2665CA6A8(0, 0, v49, v40, v48);
  }

  else
  {
    if (v13 == 255)
    {
      sub_26656CAEC(v0 + 224, &unk_28007D200, &qword_26666FD20);
    }

    else
    {
      sub_266553988(v0 + 224);
    }

    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v21 = sub_26666C168();
    __swift_project_value_buffer(v21, qword_28156D7E8);
    v22 = sub_26666C148();
    v23 = sub_26666C618();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_20();
      *v24 = 0;
      _os_log_impl(&dword_266549000, v22, v23, "[ChangeOrCancelStrategy] Got non-change request, removing date components", v24, 2u);
      MEMORY[0x266789690](v24, -1, -1);
    }

    v25 = *(v0 + 392);

    v26 = sub_266669CB8();
    (*(*(v25 + 32) + 32))(v11);

    v27 = *(v0 + 344);
    v28 = *(v0 + 408);
    v29 = *MEMORY[0x277D5BED0];
    v30 = sub_266669AF8();
    OUTLINED_FUNCTION_18_2();
    v32 = *(v31 + 104);
    v33 = v27;
    v32(v28, v29, v30);
    OUTLINED_FUNCTION_26_2();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v30);
    sub_266669B98();

    sub_26656CAEC(v0 + 128, &unk_28007D200, &qword_26666FD20);

    OUTLINED_FUNCTION_5_3();

    return v37();
  }
}

uint64_t sub_2665DBE20()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v2 = *(v1 + 416);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;
  *(v6 + 504) = v5;

  sub_26656CAEC(v2, &qword_28007D140, &qword_26666F140);

  v7 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665DBF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_10_3();
  v13 = v12[63];
  v14 = [v13 setDateTimeRange];

  v15 = sub_26666C148();
  v16 = sub_26666C618();
  v17 = os_log_type_enabled(v15, v16);
  if (v14)
  {
    a9 = v12 + 45;
    if (v17)
    {
      v18 = OUTLINED_FUNCTION_20();
      *v18 = 0;
      _os_log_impl(&dword_266549000, v15, v16, "[ChangeOrCancelStrategy] Date time exist, updating the current.", v18, 2u);
      OUTLINED_FUNCTION_9_5();
    }

    v19 = v12[61];
    v20 = v12[58];
    v21 = v12[56];
    v22 = v12[49];

    v23 = sub_266669CB8();
    v24 = *(v22 + 32);
    v25 = (v12 + 45);
    sub_2665B2A7C(v14, 1, v21, v24);
  }

  else
  {
    if (v17)
    {
      v26 = OUTLINED_FUNCTION_20();
      *v26 = 0;
      _os_log_impl(&dword_266549000, v15, v16, "[ChangeOrCancelStrategy] No date time existed, removing date components", v26, 2u);
      MEMORY[0x266789690](v26, -1, -1);
    }

    v19 = v12[61];
    v23 = v12[58];
    v27 = v12[56];
    v28 = v12[49];

    v14 = sub_266669CB8();
    v29 = *(*(v28 + 32) + 32);
    v25 = (v12 + 44);
    v29(v27);
  }

  v30 = *v25;
  __swift_destroy_boxed_opaque_existential_1(v12 + 34);
  v31 = v12[51];
  v32 = *MEMORY[0x277D5BED0];
  v33 = sub_266669AF8();
  OUTLINED_FUNCTION_18_2();
  (*(v34 + 104))(v31, v32, v33);
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v33);
  sub_266669B98();

  sub_26656CAEC((v12 + 16), &unk_28007D200, &qword_26666FD20);

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4_7();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_2665DC1D0()
{
  OUTLINED_FUNCTION_14();
  v1[18] = v2;
  v1[19] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D330, &unk_26666EEA0);
  OUTLINED_FUNCTION_3_3(v5);
  v1[20] = OUTLINED_FUNCTION_19();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE20, &unk_26666EAE0);
  OUTLINED_FUNCTION_3_3(v6);
  v1[21] = OUTLINED_FUNCTION_19();
  v7 = sub_266669708();
  v1[22] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[23] = v8;
  v1[24] = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D338, &qword_26666EEB0);
  OUTLINED_FUNCTION_3_3(v9);
  v1[25] = OUTLINED_FUNCTION_19();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_3_3(v10);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v11 = type metadata accessor for Snippet.Event(0);
  OUTLINED_FUNCTION_3_3(v11);
  v1[28] = OUTLINED_FUNCTION_19();
  v12 = sub_2666699C8();
  v1[29] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v1[30] = v13;
  v1[31] = OUTLINED_FUNCTION_19();
  v14 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_2665DC7E8(uint64_t a1)
{
  OUTLINED_FUNCTION_5_1();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  v5[40] = v1;

  if (v1)
  {
    v8 = v5[27];
    sub_26656CAEC(v5[26], &unk_28007DE30, &unk_26666EAF0);
    sub_26656CAEC(v8, &unk_28007DE30, &unk_26666EAF0);
    v9 = sub_2665DCE08;
  }

  else
  {
    v5[41] = a1;
    v9 = sub_2665DC930;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_2665DC930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, char a10, __int16 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v15 = v14[29];
  v17 = v14[20];
  v16 = v14[21];
  (*(v14[30] + 16))(v14[25], v14[31], v15, a4, a5, a6, a7, a8);
  OUTLINED_FUNCTION_26_2();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v15);
  sub_2666696B8();
  v21 = sub_26666BB08();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v21);
  v22 = sub_266669788();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v22);
  sub_26656CFC4();
  v23 = swift_task_alloc();
  v14[42] = v23;
  *v23 = v14;
  v23[1] = sub_2665DCAAC;
  v24 = v14[41];
  v26 = v14[26];
  v25 = v14[27];
  v28 = v14[24];
  v27 = v14[25];
  v29 = v14[16];

  return sub_2665643AC(v29, v25, v26, v24, 0, 0, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2665DCAAC()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_5_1();
  v2 = v1[41];
  v17 = v1[27];
  v3 = v1[26];
  v4 = v1[25];
  v5 = v1[24];
  v6 = v1[23];
  v7 = v1[22];
  v8 = v1[21];
  v9 = v1[20];
  v10 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v11 = v10;

  sub_26656CAEC(v9, &qword_28007D330, &unk_26666EEA0);
  sub_26656CAEC(v8, &unk_28007DE20, &unk_26666EAE0);
  (*(v6 + 8))(v5, v7);
  sub_26656CAEC(v4, &qword_28007D338, &qword_26666EEB0);
  sub_26656CAEC(v3, &unk_28007DE30, &unk_26666EAF0);
  sub_26656CAEC(v17, &unk_28007DE30, &unk_26666EAF0);
  OUTLINED_FUNCTION_4_7();

  return MEMORY[0x2822009F8](v12, v13, v14);
}

uint64_t sub_2665DCCF4()
{
  v1 = v0[34];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];

  sub_2665AE46C(v6);
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  OUTLINED_FUNCTION_5_3();

  return v7();
}

uint64_t sub_2665DCE08()
{
  v1 = v0[34];
  v2 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];

  sub_2665AE46C(v6);
  (*(v4 + 8))(v3, v5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  OUTLINED_FUNCTION_13_9();

  OUTLINED_FUNCTION_24_1();

  return v7();
}

uint64_t sub_2665DCF00(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_31();
  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2665DCF28()
{
  OUTLINED_FUNCTION_14();
  sub_266669758();
  sub_266669748();
  OUTLINED_FUNCTION_5_3();

  return v0();
}

uint64_t sub_2665DCF98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656CD98;

  return sub_2665DB6F4();
}

uint64_t sub_2665DD058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26657A00C;

  return MEMORY[0x2821B9E10](a1, a2, a3, a4);
}

uint64_t sub_2665DD118()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656C894;

  return sub_2665DC1D0();
}

uint64_t sub_2665DD1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26656CD98;

  return MEMORY[0x2821B9E28](a1, a2, a3, a4, a5);
}

uint64_t sub_2665DD294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26656CD98;

  return MEMORY[0x2821B9E38](a1, a2, a3, a4, a5);
}

uint64_t sub_2665DD360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26656CD98;

  return MEMORY[0x2821B9E30](a1, a2, a3, a4);
}

uint64_t sub_2665DD424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_26656CD98;

  return MEMORY[0x2821B9E40](a1, a2, a3, a4);
}

uint64_t sub_2665DD4E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26656CD98;

  return sub_2665DCF00(a1);
}

uint64_t OUTLINED_FUNCTION_13_9()
{
}

uint64_t type metadata accessor for DeleteEventCATsSimple(uint64_t a1)
{
  result = qword_28007EA80;
  if (!qword_28007EA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665DD6BC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665DD6D0()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  v0[4] = v2;
  OUTLINED_FUNCTION_11_9(v2, xmmword_26666EED0);
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for CalendarEventConcept(0);
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  v6 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2665DD800;

  return v6(0xD000000000000027, 0x800000026667ED70, v2);
}

uint64_t sub_2665DD800()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2665DD930, 0, 0);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_6_5();

    return v8(v7);
  }
}

uint64_t sub_2665DD930()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2665DD990(uint64_t a1, char a2, char a3, uint64_t a4, char a5)
{
  *(v6 + 24) = a4;
  *(v6 + 32) = v5;
  *(v6 + 66) = a5;
  *(v6 + 65) = a3;
  *(v6 + 64) = a2;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_2665DD9B4()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v2 = swift_allocObject();
  *(v0 + 40) = v2;
  OUTLINED_FUNCTION_11_9(v2, xmmword_266671D60);
  if (v1)
  {
    v3 = type metadata accessor for CalendarEventConcept(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v5 = *(v0 + 66);
  v6 = *(v0 + 65);
  v7 = *(v0 + 64);
  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;
  v2[5].n128_u64[0] = 0x4C794264656B7361;
  v2[5].n128_u64[1] = 0xEF6E6F697461636FLL;
  v8 = MEMORY[0x277D839B0];
  v2[6].n128_u8[0] = v7;
  v2[7].n128_u64[1] = v8;
  v2[8].n128_u64[0] = 0x49794264656B7361;
  v2[8].n128_u64[1] = 0xEF7365657469766ELL;
  v2[9].n128_u8[0] = v6;
  v2[10].n128_u64[1] = v8;
  v2[11].n128_u64[0] = 0xD000000000000015;
  v2[11].n128_u64[1] = 0x800000026667E230;
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    v2[12].n128_u64[1] = 0;
    v2[13].n128_u64[0] = 0;
  }

  else
  {
    v9 = *(v0 + 24);
    v10 = MEMORY[0x277D839F8];
  }

  v2[12].n128_u64[0] = v9;
  v2[13].n128_u64[1] = v10;
  v13 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *v11 = v0;
  v11[1] = sub_2665DDBA4;

  return v13(0xD000000000000019, 0x800000026667ED50, v2);
}

uint64_t sub_2665DDBA4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v3 = v2;
  OUTLINED_FUNCTION_15_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2665DDCD4, 0, 0);
  }

  else
  {

    v7 = OUTLINED_FUNCTION_6_5();

    return v8(v7);
  }
}

uint64_t sub_2665DDCD4()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2665DDD34()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26658BF28;
  v2 = OUTLINED_FUNCTION_7_17();

  return v3(v2);
}

uint64_t sub_2665DDDDC()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665DDE84, 0, 0);
}

uint64_t sub_2665DDE84()
{
  v1 = v0[6];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB88, &unk_2666727F0);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_266671D70;
  *(v3 + 32) = 0xD000000000000011;
  *(v3 + 40) = 0x800000026667E140;
  sub_266566430(v2, v1, &unk_28007D130, &unk_266671DF0);
  v4 = sub_26666BDA8();
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    sub_266594028(v0[6], &unk_28007D130, &unk_266671DF0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 48));
    OUTLINED_FUNCTION_4_5();
    (*(v5 + 32))();
  }

  v6 = v0[5];
  v7 = v0[3];
  *(v3 + 80) = 0x746954746E657665;
  *(v3 + 88) = 0xEA0000000000656CLL;
  sub_266566430(v7, v6, &unk_28007D130, &unk_266671DF0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v4) == 1)
  {
    sub_266594028(v0[5], &unk_28007D130, &unk_266671DF0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    __swift_allocate_boxed_opaque_existential_1((v3 + 96));
    OUTLINED_FUNCTION_4_5();
    (*(v8 + 32))();
  }

  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v12 = v9;
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_2665DE0F8;

  return v12(0xD000000000000022, 0x800000026667ED00, v3);
}

uint64_t sub_2665DE0F8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_3_15();
  v4 = v3;
  OUTLINED_FUNCTION_15_1();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2665DE244, 0, 0);
  }

  else
  {

    v8 = *(v6 + 8);

    return v8(v1);
  }
}

uint64_t sub_2665DE244()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2665DE2B8()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_7_9(MEMORY[0x277D55C70]);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2665D987C;
  v2 = OUTLINED_FUNCTION_7_17();

  return v3(v2);
}

uint64_t sub_2665DE3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_26666BE18();
  OUTLINED_FUNCTION_13_4();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2B0, &qword_26666E5F0);
  MEMORY[0x28223BE20](v11 - 8);
  sub_266566430(a1, &v15 - v12, &qword_28007D2B0, &qword_26666E5F0);
  (*(v7 + 16))(v10, a2, v3);
  v13 = sub_26666BDB8();
  (*(v7 + 8))(a2, v3);
  sub_266594028(a1, &qword_28007D2B0, &qword_26666E5F0);
  return v13;
}

uint64_t sub_2665DE530(uint64_t a1, uint64_t a2)
{
  sub_26666BE18();
  OUTLINED_FUNCTION_13_4();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v5 + 16))(v8, a2, v2);
  v9 = sub_26666BDC8();
  (*(v5 + 8))(a2, v2);
  return v9;
}

uint64_t sub_2665DE650(void *a1)
{
  result = type metadata accessor for NeedsConfirmationConflictFlow.State(319, a1[10], a1[11], a1[12]);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_2665DE6F8()
{
  v1 = v0;
  v2 = type metadata accessor for NeedsConfirmationConflictFlow.State(0, *(*v0 + 80), *(*v0 + 88), *(*v0 + 96));
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v6 = sub_26666C168();
  __swift_project_value_buffer(v6, qword_28156D7E8);

  v17 = sub_26666C148();
  v7 = sub_26666C618();
  if (os_log_type_enabled(v17, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    v10 = *(*v0 + 120);
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v10, v2);
    v11 = sub_2665E0774(v2);
    v13 = v12;

    (*(v3 + 8))(v5, v2);
    v14 = sub_2665BFC90(v11, v13, &v18);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_266549000, v17, v7, "[NeedsConfirmationConflictFlow] transitioned to state %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x266789690](v9, -1, -1);
    MEMORY[0x266789690](v8, -1, -1);
  }

  else
  {

    v15 = v17;
  }
}

uint64_t sub_2665DE9C0@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_17();
  v4 = *(v3 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_8_17();
  type metadata accessor for NeedsConfirmationConflictFlow.State(0, v6, v7, *(v5 + 96));
  OUTLINED_FUNCTION_18_2();
  return (*(v8 + 16))(a1, v1 + v4);
}

uint64_t sub_2665DEA7C(uint64_t a1)
{
  OUTLINED_FUNCTION_8_17();
  v4 = *(v3 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_8_17();
  OUTLINED_FUNCTION_8_17();
  v8 = type metadata accessor for NeedsConfirmationConflictFlow.State(0, v6, v7, *(v5 + 96));
  v9 = *(v8 - 8);
  (*(v9 + 24))(v1 + v4, a1, v8);
  swift_endAccess();
  sub_2665DE6F8();
  return (*(v9 + 8))(a1, v8);
}

uint64_t sub_2665DEB84@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  OUTLINED_FUNCTION_42_0();
  v3 = type metadata accessor for NeedsConfirmationConflictFlow.State(0, *(v1 + 80), *(v2 + 88), *(v2 + 96));
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_5();
  v64 = (v7 - v8);
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v61 - v10;
  v12 = sub_266669BB8();
  v13 = OUTLINED_FUNCTION_11_15(v12);
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_5();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v61 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v61 - v24;
  sub_2665DE9C0(v11);
  if (__swift_getEnumTagSinglePayload(v11, 4, v13))
  {
    v26 = v65;
    v62 = v15;
    v63 = v13;
    v29 = *(v5 + 8);
    v28 = (v5 + 8);
    v27 = v29;
    v29(v11, v3);
    v30 = v3;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v31 = sub_26666C168();
    __swift_project_value_buffer(v31, qword_28156D7E8);

    v32 = sub_26666C148();
    v33 = sub_26666C608();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = OUTLINED_FUNCTION_21();
      v35 = OUTLINED_FUNCTION_13_0();
      v61 = v28;
      v36 = v35;
      v66 = v35;
      *v34 = 136315138;
      v37 = v30;
      v38 = v64;
      sub_2665DE9C0(v64);
      v39 = sub_2665E0774(v37);
      v40 = v27;
      v42 = v41;

      v40(v38, v37);
      v43 = sub_2665BFC90(v39, v42, &v66);
      v26 = v65;

      *(v34 + 4) = v43;
      _os_log_impl(&dword_266549000, v32, v33, "[NeedsConfirmationConflictFlow] Flow exitValue was called an unexpected state: %s returning .error", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
    }

    sub_26656CBFC();
    v56 = swift_allocError();
    v58 = OUTLINED_FUNCTION_35_3(v56, v57);
    *v26 = v59;
    *(v26 + 8) = 0;
    return (*(v62 + 104))(v26, *MEMORY[0x277D5BC30], v63, v58);
  }

  else
  {
    v44 = *(v15 + 32);
    v63 = v19;
    v64 = v44;
    v44(v25, v11, v13);
    v45 = v15;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v46 = sub_26666C168();
    __swift_project_value_buffer(v46, qword_28156D7E8);
    v47 = *(v15 + 16);
    v47(v23, v25, v13);
    v48 = sub_26666C148();
    v49 = sub_26666C618();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_21();
      LODWORD(v62) = v49;
      v51 = v50;
      v61 = OUTLINED_FUNCTION_13_0();
      v66 = v61;
      *v51 = 136315138;
      v47(v63, v23, v13);
      OUTLINED_FUNCTION_2_26();
      swift_getWitnessTable();
      v52 = sub_26666C328();
      v54 = v53;
      (*(v45 + 8))(v23, v13);
      v55 = sub_2665BFC90(v52, v54, &v66);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_266549000, v48, v62, "[NeedsConfirmationConflictFlow] Exiting needs confirmation flow with %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_4_1();
    }

    else
    {

      (*(v45 + 8))(v23, v13);
    }

    return v64(v65, v25, v13);
  }
}

uint64_t sub_2665DF0D8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  OUTLINED_FUNCTION_42_0();
  v2[4] = *(v3 + 80);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_42_0();
  v7 = type metadata accessor for NeedsConfirmationConflictFlow.State(0, v5, v6, *(v4 + 96));
  v2[5] = v7;
  v2[6] = *(v7 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665DF1DC, 0, 0);
}

uint64_t sub_2665DF1DC()
{
  v33 = v0;
  v1 = v0[8];
  sub_2665DE9C0(v1);
  v2 = sub_266669BB8();
  v3 = OUTLINED_FUNCTION_11_15(v2);
  switch(__swift_getEnumTagSinglePayload(v1, 4, v3))
  {
    case 1u:
      (*(v0[3] + 16))();
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v23 = sub_26666C168();
      __swift_project_value_buffer(v23, qword_28156D7E8);
      v24 = sub_26666C148();
      v25 = sub_26666C618();
      if (os_log_type_enabled(v24, v25))
      {
        *OUTLINED_FUNCTION_20() = 0;
        OUTLINED_FUNCTION_21_6(&dword_266549000, v26, v27, "[ConflictConfirmationFlow] Pushing intial conflict confirmation flow");
        OUTLINED_FUNCTION_4_1();
      }

      v28 = v0[7];
      v29 = v0[3];

      __swift_storeEnumTagSinglePayload(v28, 2, 4, v3);
      sub_2665DEA7C(v28);
      sub_2665DF5D4(v29);
      goto LABEL_18;
    case 2u:
    case 4u:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v4 = sub_26666C168();
      __swift_project_value_buffer(v4, qword_28156D7E8);

      v5 = sub_26666C148();
      v6 = sub_26666C608();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = v0[7];
        v8 = OUTLINED_FUNCTION_21();
        v9 = OUTLINED_FUNCTION_13_0();
        v32 = v9;
        *v8 = 136315138;
        sub_2665DE9C0(v7);
        swift_getWitnessTable();
        v10 = sub_26666C328();
        v12 = sub_2665BFC90(v10, v11, &v32);

        *(v8 + 4) = v12;
        _os_log_impl(&dword_266549000, v5, v6, "[ConflictConfirmationFlow] Unexpected state: %s exiting flow", v8, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v9);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      sub_2666698A8();
      break;
    case 3u:
      (*(v0[3] + 32))();
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v13 = sub_26666C168();
      __swift_project_value_buffer(v13, qword_28156D7E8);
      v14 = sub_26666C148();
      v15 = sub_26666C618();
      if (os_log_type_enabled(v14, v15))
      {
        *OUTLINED_FUNCTION_20() = 0;
        OUTLINED_FUNCTION_21_6(&dword_266549000, v16, v17, "[ConflictConfirmationFlow] Pushing second conflict confirmation flow");
        OUTLINED_FUNCTION_4_1();
      }

      v18 = v0[7];
      v19 = v0[3];

      __swift_storeEnumTagSinglePayload(v18, 4, 4, v3);
      sub_2665DEA7C(v18);
      sub_2665DF614(v19);
LABEL_18:
      sub_266669848();

      break;
    default:
      v20 = v0[8];
      v21 = v0[5];
      v22 = v0[6];
      sub_2666698A8();
      (*(v22 + 8))(v20, v21);
      break;
  }

  v30 = v0[1];

  return v30();
}

uint64_t sub_2665DF654(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_42_0();
  type metadata accessor for NeedsConfirmationConflictFlow(0, v3, v4, *(v2 + 96));
  swift_getWitnessTable();
  return sub_266669548();
}

void sub_2665DF700(uint64_t a1)
{
  v2 = v1;
  v111 = a1;
  OUTLINED_FUNCTION_42_0();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_42_0();
  OUTLINED_FUNCTION_42_0();
  type metadata accessor for NeedsConfirmationConflictFlow.State(0, v4, v6, *(v5 + 96));
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  v103 = (v95 - v8);
  v106 = sub_266669AF8();
  OUTLINED_FUNCTION_3_0();
  v102 = v9;
  MEMORY[0x28223BE20](v10);
  v97 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD38, &qword_2666725F8);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v12);
  v109 = v95 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600);
  MEMORY[0x28223BE20](v14 - 8);
  OUTLINED_FUNCTION_10_5();
  v98 = (v15 - v16);
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v17);
  v101 = v95 - v18;
  OUTLINED_FUNCTION_12_7();
  MEMORY[0x28223BE20](v19);
  v104 = v95 - v20;
  sub_266669BB8();
  OUTLINED_FUNCTION_3_0();
  v107 = v21;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v22);
  v105 = v95 - v23;
  v108 = v24;
  v25 = sub_266669778();
  OUTLINED_FUNCTION_3_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_10_5();
  v31 = v29 - v30;
  v33 = MEMORY[0x28223BE20](v32);
  v35 = v95 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = v95 - v36;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v38 = sub_26666C168();
  v39 = __swift_project_value_buffer(v38, qword_28156D7E8);
  v40 = (v27 + 16);
  v41 = *(v27 + 16);
  v41(v37, v111, v25);
  v110 = v27;
  v96 = v39;
  v42 = sub_26666C148();
  v43 = sub_26666C618();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = OUTLINED_FUNCTION_21();
    v95[1] = v2;
    v45 = v44;
    v95[0] = OUTLINED_FUNCTION_13_0();
    v112 = v95[0];
    *v45 = 136315138;
    v41(v35, v37, v25);
    OUTLINED_FUNCTION_2_26();
    swift_getWitnessTable();
    v46 = sub_26666C328();
    v48 = v47;
    v49 = OUTLINED_FUNCTION_16_12(v110);
    v50(v49);
    v51 = sub_2665BFC90(v46, v48, &v112);

    *(v45 + 4) = v51;
    _os_log_impl(&dword_266549000, v42, v43, "[ConflictConfirmationFlow] Conflict Confirmation result: %s", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v95[0]);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();

    v52 = v110;
  }

  else
  {

    v52 = v110;
    v53 = OUTLINED_FUNCTION_16_12(v110);
    v54(v53);
  }

  v41(v31, v111, v25);
  v55 = OUTLINED_FUNCTION_20_12();
  v57 = v56(v55);
  v58 = v106;
  v59 = v109;
  v60 = v104;
  if (v57 == *MEMORY[0x277D5BC38])
  {
    v96 = v41;
    v99 = v40;
    v61 = OUTLINED_FUNCTION_20_12();
    v62(v61);
    v63 = *(v107 + 16);
    v110 = v31;
    v63(v105, v31, v108);
    sub_266669BA8();
    v64 = v101;
    (*(v102 + 104))(v101, *MEMORY[0x277D5BED8], v58);
    __swift_storeEnumTagSinglePayload(v64, 0, 1, v58);
    v65 = *(v100 + 48);
    sub_2665E0920(v60, v59);
    sub_2665E0920(v64, v59 + v65);
    OUTLINED_FUNCTION_1_2(v59);
    if (v70)
    {
      v69 = &qword_28007DD40;
      OUTLINED_FUNCTION_23_9(v64);
      OUTLINED_FUNCTION_23_9(v60);
      OUTLINED_FUNCTION_1_2(v59 + v65);
      if (v70)
      {
        sub_26656CAEC(v59, &qword_28007DD40, &qword_266672600);
        v66 = v110;
LABEL_22:
        v81 = OUTLINED_FUNCTION_17_10();
        v96(v81);
        OUTLINED_FUNCTION_12_14(v69);
        sub_2665DEA7C(v69);
        v82 = v108;
        v83 = *(v107 + 8);
        v83(v105, v108);
        v83(v66, v82);
        return;
      }
    }

    else
    {
      v69 = v98;
      sub_2665E0920(v59, v98);
      OUTLINED_FUNCTION_1_2(v59 + v65);
      if (!v70)
      {
        v75 = v60;
        v76 = v102;
        v77 = v59 + v65;
        v78 = v97;
        (*(v102 + 32))(v97, v77, v58);
        sub_2665E0990();
        v79 = sub_26666C2E8();
        v80 = *(v76 + 8);
        v80(v78, v58);
        sub_26656CAEC(v101, &qword_28007DD40, &qword_266672600);
        sub_26656CAEC(v75, &qword_28007DD40, &qword_266672600);
        v80(v69, v58);
        sub_26656CAEC(v109, &qword_28007DD40, &qword_266672600);
        v66 = v110;
        if (v79)
        {
          goto LABEL_22;
        }

LABEL_18:
        v71 = v108;
        v72 = *(v107 + 8);
        v72(v105, v108);
        v73 = v103;
        __swift_storeEnumTagSinglePayload(v103, 3, 4, v25);
        sub_2665DEA7C(v73);
        v72(v66, v71);
        return;
      }

      OUTLINED_FUNCTION_23_9(v101);
      OUTLINED_FUNCTION_23_9(v60);
      (*(v102 + 8))(v69, v58);
    }

    sub_26656CAEC(v59, &qword_28007DD38, &qword_2666725F8);
    v66 = v110;
    goto LABEL_18;
  }

  v67 = *MEMORY[0x277D5BC30];
  if (v57 == v67)
  {
    v68 = OUTLINED_FUNCTION_20_12();
    v99(v68);
LABEL_20:
    v74 = OUTLINED_FUNCTION_17_10();
    (v41)(v74);
    OUTLINED_FUNCTION_12_14(v67);
    sub_2665DEA7C(v67);
    return;
  }

  if (v57 == *MEMORY[0x277D5BC40])
  {
    goto LABEL_20;
  }

  if (v57 == *MEMORY[0x277D5BC28])
  {
    v84 = sub_26666C148();
    v85 = sub_26666C618();
    if (os_log_type_enabled(v84, v85))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_35_1(&dword_266549000, v86, v87, "[ConflictConfirmationFlow] Schedule over conflict message is unanswered, prompting again");
      OUTLINED_FUNCTION_4_1();
    }
  }

  else
  {
    sub_26656CBFC();
    v88 = swift_allocError();
    v90 = OUTLINED_FUNCTION_35_3(v88, v89);
    v91 = v52;
    v92 = v103;
    *v103 = v93;
    *(v92 + 8) = 0;
    (*(v91 + 104))(v92, v67, v25, v90);
    OUTLINED_FUNCTION_12_14(v92);
    sub_2665DEA7C(v92);
    v94 = OUTLINED_FUNCTION_20_12();
    v99(v94);
  }
}

void sub_2665E0034(uint64_t a1)
{
  OUTLINED_FUNCTION_42_0();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_42_0();
  v6 = *(v5 + 88);
  v58 = v1;
  type metadata accessor for NeedsConfirmationConflictFlow.State(0, v4, v6, *(v7 + 96));
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - v9;
  v11 = sub_266669BB8();
  v12 = OUTLINED_FUNCTION_11_15(v11);
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_5();
  v60 = v16 - v17;
  OUTLINED_FUNCTION_12_7();
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v54 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v54 - v22;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v24 = sub_26666C168();
  v25 = __swift_project_value_buffer(v24, qword_28156D7E8);
  v26 = *(v14 + 16);
  v59 = a1;
  OUTLINED_FUNCTION_15_12();
  v26();
  v57 = v25;
  v27 = sub_26666C148();
  v28 = sub_26666C618();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_21();
    v56 = v10;
    v30 = v29;
    v54 = v29;
    v55 = OUTLINED_FUNCTION_13_0();
    v61 = v55;
    *v30 = 136315138;
    (v26)(v21, v23, v12);
    OUTLINED_FUNCTION_2_26();
    swift_getWitnessTable();
    v31 = sub_26666C328();
    v33 = v32;
    v34 = *(v14 + 8);
    v35 = OUTLINED_FUNCTION_10_15();
    v34(v35);
    v36 = sub_2665BFC90(v31, v33, &v61);

    v37 = v54;
    *(v54 + 4) = v36;
    _os_log_impl(&dword_266549000, v27, v28, "[ConflictConfirmationFlow] Change or cancel result: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_4_1();
    v10 = v56;
    OUTLINED_FUNCTION_4_1();
  }

  else
  {

    v34 = *(v14 + 8);
    v38 = OUTLINED_FUNCTION_10_15();
    v34(v38);
  }

  OUTLINED_FUNCTION_15_12();
  v26();
  v39 = OUTLINED_FUNCTION_10_15();
  v41 = v40(v39);
  if (v41 == *MEMORY[0x277D5BC38])
  {
    OUTLINED_FUNCTION_15_12();
    v26();
    OUTLINED_FUNCTION_7_18();
LABEL_8:
    v42 = OUTLINED_FUNCTION_10_15();
    v34(v42);
    return;
  }

  v43 = v14;
  v44 = *MEMORY[0x277D5BC30];
  if (v41 == v44)
  {
    v45 = OUTLINED_FUNCTION_10_15();
    v34(v45);
LABEL_12:
    OUTLINED_FUNCTION_15_12();
    v26();
    OUTLINED_FUNCTION_7_18();
    return;
  }

  if (v41 == *MEMORY[0x277D5BC40])
  {
    goto LABEL_12;
  }

  if (v41 != *MEMORY[0x277D5BC28])
  {
    sub_26656CBFC();
    v50 = swift_allocError();
    v52 = OUTLINED_FUNCTION_35_3(v50, v51);
    *v10 = v53;
    v10[8] = 0;
    (*(v43 + 104))(v10, v44, v12, v52);
    OUTLINED_FUNCTION_7_18();
    goto LABEL_8;
  }

  v46 = sub_26666C148();
  v47 = sub_26666C618();
  if (os_log_type_enabled(v46, v47))
  {
    *OUTLINED_FUNCTION_20() = 0;
    OUTLINED_FUNCTION_35_1(&dword_266549000, v48, v49, "[ConflictConfirmationFlow] Schedule over conflict message is unanswered, prompting again");
    OUTLINED_FUNCTION_4_1();
  }
}

uint64_t **sub_2665E04B4()
{
  v1 = *v0;

  v2 = (*v0)[15];
  type metadata accessor for NeedsConfirmationConflictFlow.State(0, v1[10], v1[11], v1[12]);
  OUTLINED_FUNCTION_18_2();
  (*(v3 + 8))(v0 + v2);
  return v0;
}

uint64_t sub_2665E0570()
{
  sub_2665E04B4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2665E0600(uint64_t a1)
{
  sub_266669BB8();
  v1 = sub_266669778();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2665E06B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266553FF0;

  return sub_2665DF0D8(a1);
}

unint64_t sub_2665E0774(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6);
  v7 = sub_266669BB8();
  v8 = OUTLINED_FUNCTION_11_15(v7);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 4, v8);
  result = 0x696C616974696E69;
  switch(EnumTagSinglePayload)
  {
    case 1:
      return result;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    default:
      (*(v3 + 8))(v6, a1);
      result = 0x6574656C706D6F63;
      break;
  }

  return result;
}

uint64_t sub_2665E0920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2665E0990()
{
  result = qword_28007DD50;
  if (!qword_28007DD50)
  {
    sub_266669AF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007DD50);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_18()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 4, v0);

  return sub_2665DEA7C(v1);
}

uint64_t OUTLINED_FUNCTION_11_15(uint64_t a1)
{

  return sub_266669778();
}

uint64_t OUTLINED_FUNCTION_12_14(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 4, v1);
}

uint64_t OUTLINED_FUNCTION_16_12@<X0>(uint64_t a1@<X8>)
{
  result = v1;
  *(v2 - 200) = *(a1 + 8);
  return result;
}

void OUTLINED_FUNCTION_21_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_23_9(uint64_t a1)
{

  return sub_26656CAEC(a1, v1, v2);
}

uint64_t sub_2665E0B08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49746361746E6F63 && a2 == 0xE900000000000064;
  if (v4 || (sub_26666CAC8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26666CAC8();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2665E0BD4(char a1)
{
  if (a1)
  {
    return 0x7865646E69;
  }

  else
  {
    return 0x49746361746E6F63;
  }
}

uint64_t sub_2665E0C0C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3)
  {
    return a6 & (a1 == a4);
  }

  if (a6)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_26666CAC8();
  }
}

uint64_t sub_2665E0C50(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v26 = a2;
  v27 = a4;
  v24 = a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EBE0, &qword_266676368);
  OUTLINED_FUNCTION_3_0();
  v23 = v5;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EBE8, &qword_266676370);
  OUTLINED_FUNCTION_3_0();
  v22 = v10;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EBF0, &qword_266676378);
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v17);
  v19 = &v22 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665E1DC8();
  sub_26666CBE8();
  if (v27)
  {
    v29 = 1;
    sub_2665E1E1C();
    sub_26666CA08();
    v20 = v25;
    sub_26666CA68();
    (*(v23 + 8))(v8, v20);
  }

  else
  {
    v28 = 0;
    sub_2665E1E70();
    sub_26666CA08();
    sub_26666CA48();
    (*(v22 + 8))(v13, v9);
  }

  return (*(v16 + 8))(v19, v14);
}

uint64_t sub_2665E0F0C(void *a1)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EBB0, &qword_266676348);
  OUTLINED_FUNCTION_3_0();
  v39 = v2;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v3);
  v5 = v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EBB8, &qword_266676350);
  OUTLINED_FUNCTION_3_0();
  v38[3] = v7;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  v10 = v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EBC0, &unk_266676358);
  OUTLINED_FUNCTION_3_0();
  v40 = v12;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v13);
  v15 = v38 - v14;
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665E1DC8();
  v17 = v42;
  sub_26666CBD8();
  if (v17)
  {
    goto LABEL_10;
  }

  v38[1] = v6;
  v38[2] = v10;
  v42 = a1;
  v18 = v41;
  v19 = v15;
  sub_26666C9F8();
  result = sub_266575DD8();
  if (v22 == v23 >> 1)
  {
LABEL_8:
    v31 = sub_26666C848();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D4C0, &qword_26666F190);
    *v33 = &type metadata for DIParticipantDisambiguationResponse;
    v16 = v19;
    sub_26666C978();
    sub_26666C838();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D84160], v31);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v40 + 8))(v19, v11);
    a1 = v42;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v16;
  }

  v38[0] = 0;
  if (v22 < (v23 >> 1))
  {
    v24 = *(v21 + v22);
    sub_266575DD4();
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    v29 = v26 == v28 >> 1;
    v30 = v39;
    if (v29)
    {
      v43 = v24;
      if (v24)
      {
        v45 = 1;
        sub_2665E1E1C();
        OUTLINED_FUNCTION_7_19(&type metadata for DIParticipantDisambiguationResponse.IndexCodingKeys, &v45);
        v16 = sub_26666C9D8();
        swift_unknownObjectRelease();
        (*(v30 + 8))(v5, v18);
      }

      else
      {
        v44 = 0;
        sub_2665E1E70();
        OUTLINED_FUNCTION_7_19(&type metadata for DIParticipantDisambiguationResponse.ContactIdCodingKeys, &v44);
        v16 = sub_26666C9B8();
        swift_unknownObjectRelease();
        v36 = OUTLINED_FUNCTION_5_20();
        v37(v36);
      }

      v34 = OUTLINED_FUNCTION_1_29();
      v35(v34);
      __swift_destroy_boxed_opaque_existential_1(v42);
      return v16;
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_2665E140C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665E0B08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2665E1434(uint64_t a1)
{
  v2 = sub_2665E1DC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665E1470(uint64_t a1)
{
  v2 = sub_2665E1DC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665E14AC(uint64_t a1)
{
  v2 = sub_2665E1E70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665E14E8(uint64_t a1)
{
  v2 = sub_2665E1E70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665E1524(uint64_t a1)
{
  v2 = sub_2665E1E1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665E1560(uint64_t a1)
{
  v2 = sub_2665E1E1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665E15D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2665E0F0C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_2665E1640(char *a1)
{
  v2 = sub_266669E48();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26666BE58();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_266669E28();
  v15 = v14;
  *&v42 = 0xD000000000000028;
  *(&v42 + 1) = 0x800000026667D640;
  MEMORY[0x266788710](46, 0xE100000000000000);
  MEMORY[0x266788710](0xD000000000000021, 0x800000026667EE40);
  if (v13 == v42 && v15 == *(&v42 + 1))
  {

LABEL_8:
    if (sub_266669E38())
    {
      v20 = OUTLINED_FUNCTION_4_27();
      v21(v20);
      sub_26666BE48();
      (*(v9 + 8))(v12, v7);
      OUTLINED_FUNCTION_6_15();

      if (*(&v43 + 1))
      {
        if (swift_dynamicCast())
        {
LABEL_11:
          v22 = OUTLINED_FUNCTION_3_26();
          v23(v22);
          return v41;
        }

LABEL_14:
        if (sub_266669E38())
        {
          v25 = OUTLINED_FUNCTION_4_27();
          v26(v25);
          sub_26666BE48();
          (*(v9 + 8))(v12, v7);
          OUTLINED_FUNCTION_6_15();

          v27 = v40;
          if (*(&v43 + 1))
          {
            if (swift_dynamicCast())
            {
              goto LABEL_11;
            }

LABEL_20:
            if (qword_28156C150 != -1)
            {
              swift_once();
            }

            v28 = sub_26666C168();
            __swift_project_value_buffer(v28, qword_28156D7E8);
            (*(v4 + 16))(v27, a1, v2);
            v29 = sub_26666C148();
            v30 = sub_26666C608();
            if (os_log_type_enabled(v29, v30))
            {
              v31 = swift_slowAlloc();
              v32 = swift_slowAlloc();
              *&v42 = v32;
              *v31 = 136315138;
              v41 = sub_266669E38();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D2E8, &unk_26666E620);
              v33 = sub_26666C318();
              v35 = v34;
              v36 = *(v4 + 8);
              v36(v27, v2);
              v37 = sub_2665BFC90(v33, v35, &v42);

              *(v31 + 4) = v37;
              _os_log_impl(&dword_266549000, v29, v30, "[DIParticipantDisambiguationResponse] Unexpected userData of %s", v31, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v32);
              MEMORY[0x266789690](v32, -1, -1);
              MEMORY[0x266789690](v31, -1, -1);

              v36(a1, v2);
            }

            else
            {

              v38 = *(v4 + 8);
              v38(a1, v2);
              v38(v27, v2);
            }

            return 0;
          }
        }

        else
        {
          v42 = 0u;
          v43 = 0u;
          v27 = v40;
        }

        sub_2665E1B80(&v42);
        goto LABEL_20;
      }
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    sub_2665E1B80(&v42);
    goto LABEL_14;
  }

  v17 = sub_26666CAC8();

  if (v17)
  {
    goto LABEL_8;
  }

  v18 = OUTLINED_FUNCTION_3_26();
  v19(v18);
  return 0;
}

uint64_t sub_2665E1B80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EB90, &unk_266676210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2665E1BF4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2665E1C34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_2665E1C94(void *a1)
{
  a1[1] = sub_2665E1CCC();
  a1[2] = sub_2665E1D20();
  result = sub_2665E1D74();
  a1[3] = result;
  return result;
}

unint64_t sub_2665E1CCC()
{
  result = qword_28007EB98;
  if (!qword_28007EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EB98);
  }

  return result;
}

unint64_t sub_2665E1D20()
{
  result = qword_28007EBA0;
  if (!qword_28007EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EBA0);
  }

  return result;
}

unint64_t sub_2665E1D74()
{
  result = qword_28007EBA8;
  if (!qword_28007EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EBA8);
  }

  return result;
}

unint64_t sub_2665E1DC8()
{
  result = qword_28007EBC8;
  if (!qword_28007EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EBC8);
  }

  return result;
}

unint64_t sub_2665E1E1C()
{
  result = qword_28007EBD0;
  if (!qword_28007EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EBD0);
  }

  return result;
}

unint64_t sub_2665E1E70()
{
  result = qword_28007EBD8;
  if (!qword_28007EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EBD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DIParticipantDisambiguationResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_2665E1FB0(_BYTE *result, int a2, int a3)
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

unint64_t sub_2665E2060()
{
  result = qword_28007EBF8;
  if (!qword_28007EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EBF8);
  }

  return result;
}

unint64_t sub_2665E20B8()
{
  result = qword_28007EC00;
  if (!qword_28007EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC00);
  }

  return result;
}

unint64_t sub_2665E2110()
{
  result = qword_28007EC08;
  if (!qword_28007EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC08);
  }

  return result;
}

unint64_t sub_2665E2168()
{
  result = qword_28007EC10;
  if (!qword_28007EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC10);
  }

  return result;
}

unint64_t sub_2665E21C0()
{
  result = qword_28007EC18;
  if (!qword_28007EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC18);
  }

  return result;
}

unint64_t sub_2665E2218()
{
  result = qword_28007EC20;
  if (!qword_28007EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC20);
  }

  return result;
}

unint64_t sub_2665E2270()
{
  result = qword_28007EC28;
  if (!qword_28007EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC28);
  }

  return result;
}

unint64_t sub_2665E22C8()
{
  result = qword_28007EC30;
  if (!qword_28007EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC30);
  }

  return result;
}

unint64_t sub_2665E2320()
{
  result = qword_28007EC38;
  if (!qword_28007EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC38);
  }

  return result;
}

double OUTLINED_FUNCTION_6_15()
{

  return sub_2665763EC(v1, (v3 - 112), v0, v2);
}

uint64_t OUTLINED_FUNCTION_7_19(uint64_t a1, uint64_t a2)
{

  return sub_26666C968();
}

uint64_t sub_2665E2400()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 18) = 0;
  return result;
}

uint64_t sub_2665E243C(_BYTE *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = a1[16];
  *(v1 + 25) = a1[17];
  v2 = a1[18];

  *(v1 + 26) = v2;
  return v1;
}

double sub_2665E247C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1 == 0xD000000000000017 && 0x800000026667D070 == a2;
  if (v6 || (OUTLINED_FUNCTION_2_6(0xD000000000000017, 0x800000026667D070) & 1) != 0)
  {
    v9 = v3[24];
LABEL_7:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = v9;
    return result;
  }

  v10 = a1 == 0xD000000000000015 && 0x800000026667D090 == a2;
  if (v10 || (OUTLINED_FUNCTION_2_6(0xD000000000000015, 0x800000026667D090) & 1) != 0)
  {
    v9 = v3[25];
    goto LABEL_7;
  }

  v11 = a1 == 0xD000000000000016 && 0x800000026667D0B0 == a2;
  if (v11 || (OUTLINED_FUNCTION_2_6(0xD000000000000016, 0x800000026667D0B0) & 1) != 0)
  {
    v9 = v3[26];
    goto LABEL_7;
  }

  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

unint64_t sub_2665E256C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26666C958();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2665E25B8(char a1)
{
  if (!a1)
  {
    return 0xD000000000000017;
  }

  if (a1 == 1)
  {
    return 0xD000000000000015;
  }

  return 0xD000000000000016;
}

unint64_t sub_2665E262C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2665E256C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2665E265C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2665E25B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2665E2690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2665E256C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2665E26C4(uint64_t a1)
{
  v2 = sub_2665E2C70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2665E2700(uint64_t a1)
{
  v2 = sub_2665E2C70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2665E273C()
{

  return MEMORY[0x2821FE8D8](v0, 27, 7);
}

uint64_t sub_2665E2798(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EC60, &qword_2666767F8);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665E2C70();
  sub_26666CBE8();
  v11 = v3[24];
  v18 = 0;
  OUTLINED_FUNCTION_0_8(v11, &v18);
  if (!v2)
  {
    v12 = v3[25];
    v17 = 1;
    OUTLINED_FUNCTION_0_8(v12, &v17);
    v13 = v3[26];
    v16 = 2;
    OUTLINED_FUNCTION_0_8(v13, &v16);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_2665E28F4(void *a1)
{
  v2 = swift_allocObject();
  sub_2665E2968(a1);
  return v2;
}

uint64_t sub_2665E2968(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EC50, &qword_2666767F0);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2665E2C70();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarResultSetWindowPromptOptions();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 0;
    *(v1 + 24) = OUTLINED_FUNCTION_1_8(&v16) & 1;
    v15 = 1;
    *(v1 + 25) = OUTLINED_FUNCTION_1_8(&v15) & 1;
    v14 = 2;
    v12 = OUTLINED_FUNCTION_1_8(&v14);
    (*(v7 + 8))(v10, v5);
    *(v3 + 26) = v12 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2665E2B78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_2665E28F4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_2665E2C30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalendarResultSetWindowPromptOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2665E2C70()
{
  result = qword_28007EC58;
  if (!qword_28007EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC58);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CalendarResultSetWindowPromptOptions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2665E2DA4()
{
  result = qword_28007EC68;
  if (!qword_28007EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC68);
  }

  return result;
}

unint64_t sub_2665E2DFC()
{
  result = qword_28007EC70;
  if (!qword_28007EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC70);
  }

  return result;
}

unint64_t sub_2665E2E54()
{
  result = qword_28007EC78;
  if (!qword_28007EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EC78);
  }

  return result;
}

uint64_t type metadata accessor for FindEventDayComparator(uint64_t a1)
{
  result = qword_28007EC80;
  if (!qword_28007EC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665E2F1C(uint64_t a1)
{
  result = sub_266668D38();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2665E2F98(void *a1, void *a2)
{
  v4 = sub_2665EC938();
  if (v4 & 1) != 0 && (v4 = sub_2665EC938(), (v4))
  {

    return sub_2665E305C(a1, a2);
  }

  else
  {
    v6 = sub_2665EC908(v4);
    if (v6 & 1) != 0 && (sub_2665EC908(v6))
    {

      return sub_2665E3158(a1, a2);
    }

    else if (sub_2665EC938())
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t sub_2665E305C(void *a1, void *a2)
{
  v4 = [a1 dateTimeRange];
  sub_2665D4854();
  v6 = v5;

  if (v6 & 1) != 0 && (v7 = [a2 dateTimeRange], sub_2665D4854(), v9 = v8, v7, (v9))
  {
    if (sub_2665ECA68())
    {
      return 1;
    }

    else
    {
      return (sub_2665ECA68() << 63) >> 63;
    }
  }

  else
  {
    v11 = [a1 dateTimeRange];
    sub_2665D4854();
    v13 = v12;

    if (v13)
    {
      return -1;
    }

    else
    {
      v14 = [a2 dateTimeRange];
      sub_2665D4854();
      v16 = v15;

      return v16 & 1;
    }
  }
}

uint64_t sub_2665E3158(void *a1, void *a2)
{
  v147 = a2;
  v3 = sub_266668E68();
  v141 = *(v3 - 8);
  v142 = v3;
  MEMORY[0x28223BE20](v3);
  v140 = &v133 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_266668998();
  v138 = *(v5 - 8);
  v139 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v137 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v136 = &v133 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v143 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v144 = &v133 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v133 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v133 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v133 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v133 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v133 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v133 - v29;
  v31 = sub_266668D38();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v135 = &v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v134 = &v133 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v145 = &v133 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v146 = &v133 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v133 - v42;
  MEMORY[0x28223BE20](v41);
  v148 = a1;
  v149 = &v133 - v44;
  v45 = [a1 dateTimeRange];
  if (!v45)
  {
    __swift_storeEnumTagSinglePayload(v30, 1, 1, v31);
LABEL_7:
    v51 = v30;
LABEL_32:
    sub_266574608(v51);
    return 0;
  }

  v46 = v45;
  v150 = v32;
  v47 = [v45 startDate];

  if (v47)
  {
    sub_266668CE8();

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  __swift_storeEnumTagSinglePayload(v28, v48, 1, v31);
  sub_266557CE4(v28, v30);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v31);
  v50 = v150;
  if (EnumTagSinglePayload == 1)
  {
    goto LABEL_7;
  }

  v52 = v43;
  v53 = *(v150 + 32);
  v54 = v149;
  v55 = v30;
  v133 = v150 + 32;
  v56 = v53;
  v53(v149, v55, v31);
  v57 = [v148 dateTimeRange];
  if (!v57)
  {
    (*(v50 + 8))(v54, v31);
    __swift_storeEnumTagSinglePayload(v25, 1, 1, v31);
LABEL_15:
    v51 = v25;
    goto LABEL_32;
  }

  v58 = v57;
  v59 = [v57 endDate];

  if (v59)
  {
    sub_266668CE8();

    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  __swift_storeEnumTagSinglePayload(v22, v60, 1, v31);
  sub_266557CE4(v22, v25);
  v61 = __swift_getEnumTagSinglePayload(v25, 1, v31);
  v62 = v150;
  if (v61 == 1)
  {
    (*(v150 + 8))(v149, v31);
    goto LABEL_15;
  }

  v56(v52, v25, v31);
  v63 = v147;
  v64 = [v147 dateTimeRange];
  if (!v64)
  {
    v68 = *(v62 + 8);
    v68(v52, v31);
    v68(v149, v31);
LABEL_27:
    __swift_storeEnumTagSinglePayload(v19, 1, 1, v31);
    goto LABEL_31;
  }

  v65 = v64;
  v66 = [v64 startDate];

  if (v66)
  {
    sub_266668CE8();

    v67 = 0;
  }

  else
  {
    v67 = 1;
  }

  __swift_storeEnumTagSinglePayload(v16, v67, 1, v31);
  sub_266557CE4(v16, v19);
  v69 = __swift_getEnumTagSinglePayload(v19, 1, v31);
  v70 = v150;
  if (v69 == 1)
  {
    v71 = *(v150 + 8);
    v71(v52, v31);
    v71(v149, v31);
LABEL_31:
    v51 = v19;
    goto LABEL_32;
  }

  v72 = v146;
  v56(v146, v19, v31);
  v73 = [v63 dateTimeRange];
  if (!v73)
  {
    v80 = *(v70 + 8);
    v80(v72, v31);
    v80(v52, v31);
    v80(v149, v31);
    v19 = v144;
    goto LABEL_27;
  }

  v74 = v73;
  v75 = [v73 endDate];

  v76 = v52;
  if (v75)
  {
    v77 = v143;
    sub_266668CE8();

    v78 = 0;
    v19 = v144;
    v79 = v145;
  }

  else
  {
    v78 = 1;
    v19 = v144;
    v79 = v145;
    v77 = v143;
  }

  __swift_storeEnumTagSinglePayload(v77, v78, 1, v31);
  sub_266557CE4(v77, v19);
  v81 = __swift_getEnumTagSinglePayload(v19, 1, v31);
  v82 = v149;
  if (v81 == 1)
  {
    v83 = *(v150 + 8);
    v83(v72, v31);
    v83(v76, v31);
    v83(v82, v31);
    goto LABEL_31;
  }

  v56(v79, v19, v31);
  v86 = [v148 dateTimeRange];
  sub_2665D4854();
  v88 = v87;

  if (v88)
  {
    v89 = [v63 dateTimeRange];
    sub_2665D4854();
    v91 = v90;

    if (v91)
    {
      v92 = v150;
      v93 = *(v150 + 16);
      v94 = v134;
      v93(v134, v82, v31);
      v95 = v135;
      v93(v135, v76, v31);
      v96 = v136;
      sub_266668978();
      v93(v94, v146, v31);
      v97 = v145;
      v93(v95, v145, v31);
      v98 = v137;
      sub_266668978();
      v84 = sub_266668988();
      v99 = *(v138 + 8);
      v100 = v98;
      v101 = v139;
      v99(v100, v139);
      v99(v96, v101);
      v102 = *(v92 + 8);
      v102(v97, v31);
      v102(v146, v31);
      v102(v76, v31);
      v103 = v149;
LABEL_52:
      v102(v103, v31);
      return v84;
    }
  }

  v104 = v140;
  sub_266668E58();
  type metadata accessor for FindEventDayComparator(0);
  LODWORD(v144) = sub_266668E48();
  v105 = v142;
  v106 = *(v141 + 8);
  v106(v104, v142);
  sub_266668E58();
  LODWORD(v143) = sub_266668E48();
  v106(v104, v105);
  sub_266668E58();
  v107 = sub_266668E48();
  v106(v104, v105);
  sub_266668E58();
  v108 = sub_266668E48();
  v106(v104, v105);
  v109 = [v148 &off_279BCF2A0 + 5];
  sub_2665D4854();
  v111 = v110;

  if (v111)
  {
    if ((v107 & 1) == 0)
    {
      v117 = v149;
      if ((v108 & 1) == 0)
      {
        v125 = *(v150 + 8);
        v125(v145, v31);
        v125(v146, v31);
        v125(v76, v31);
        v125(v117, v31);
        return -1;
      }

      v118 = v145;
      v84 = sub_266668D08();
      v102 = *(v150 + 8);
      v102(v118, v31);
      v102(v146, v31);
      v102(v76, v31);
      v103 = v117;
      goto LABEL_52;
    }

    v112 = v146;
    v113 = v149;
    goto LABEL_49;
  }

  v114 = [v147 &off_279BCF2A0 + 5];
  sub_2665D4854();
  v116 = v115;

  if (v116)
  {
    v113 = v149;
    if ((v144 & 1) == 0)
    {
      if ((v143 & 1) == 0)
      {
        v128 = *(v150 + 8);
        v128(v145, v31);
        v128(v146, v31);
        v128(v76, v31);
        v128(v113, v31);
        return 1;
      }

      v112 = v146;
      goto LABEL_49;
    }

LABEL_48:
    v112 = v146;
LABEL_49:
    v84 = sub_266668D08();
    v102 = *(v150 + 8);
    v102(v145, v31);
LABEL_50:
    v121 = v112;
LABEL_51:
    v102(v121, v31);
    v102(v76, v31);
    v103 = v113;
    goto LABEL_52;
  }

  v119 = v144;
  v120 = v107 ^ 1;
  v113 = v149;
  if (((v144 ^ 1) & 1) == 0 && (v120 & 1) == 0)
  {
    goto LABEL_48;
  }

  v122 = v143;
  v123 = v108 ^ 1;
  if (((v143 ^ 1) & 1) == 0 && (v123 & 1) == 0)
  {
    v124 = v145;
    v84 = sub_266668D08();
    v102 = *(v150 + 8);
    v102(v124, v31);
LABEL_64:
    v121 = v146;
    goto LABEL_51;
  }

  v126 = v145;
  if (((v144 ^ 1 | v123) & 1) == 0)
  {
    v129 = sub_266668D08();
    v130 = v126;
    v84 = v129;
    v102 = *(v150 + 8);
    v102(v130, v31);
    goto LABEL_64;
  }

  if (((v143 ^ 1 | v120) & 1) == 0)
  {
    v112 = v146;
    v131 = sub_266668D08();
    v132 = v126;
    v84 = v131;
    v102 = *(v150 + 8);
    v102(v132, v31);
    goto LABEL_50;
  }

  v127 = *(v150 + 8);
  v127(v145, v31);
  v127(v146, v31);
  v127(v76, v31);
  v127(v113, v31);
  if ((v119 | v122))
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2665E3F18(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((sub_266668EC8() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FindEventDayComparator(0);

  return sub_266668CD8();
}

uint64_t sub_2665E3F80(uint64_t a1)
{
  sub_266668ED8();
  type metadata accessor for FindEventDayComparator(0);
  sub_266668D38();
  OUTLINED_FUNCTION_0_28();
  sub_2665E41E8(v1, v2, MEMORY[0x277CC9588]);
  return sub_26666C278();
}

uint64_t sub_2665E4000()
{
  sub_26666CB88();
  sub_266668ED8();
  type metadata accessor for FindEventDayComparator(0);
  sub_266668D38();
  OUTLINED_FUNCTION_0_28();
  sub_2665E41E8(v0, v1, MEMORY[0x277CC9588]);
  sub_26666C278();
  return sub_26666CBC8();
}

uint64_t sub_2665E40B0(uint64_t a1)
{
  sub_26666CB88();
  sub_266668ED8();
  sub_266668D38();
  sub_2665E41E8(&qword_28007E5D0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_26666C278();
  return sub_26666CBC8();
}

uint64_t sub_2665E41E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2665E4248(char a1)
{
  v3 = sub_26666A828();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v4 + 104);
  if (a1)
  {
    sub_26666B078();
    swift_allocObject();
    sub_26666B068();
    OUTLINED_FUNCTION_3_27();
    v21 = sub_26666B068();
    v8 = *(v4 + 104);
    v9 = OUTLINED_FUNCTION_2_27();
    v8(v9);
    sub_2665E466C(v6);
    v10 = OUTLINED_FUNCTION_1_30();
    v7(v10);
    sub_26666AC38();

    v11 = OUTLINED_FUNCTION_2_27();
    v8(v11);
    v12 = v21;
    sub_2665E466C(v6);
    (v7)(v6, v3);
    sub_26666AC38();
  }

  else
  {
    sub_26666B0B8();
    swift_allocObject();
    sub_26666B0A8();
    OUTLINED_FUNCTION_3_27();
    v21 = sub_26666B0A8();
    v8 = *(v4 + 104);
    v14 = OUTLINED_FUNCTION_2_27();
    v8(v14);
    sub_2665E466C(v6);
    v15 = OUTLINED_FUNCTION_1_30();
    v7(v15);
    sub_26666B028();

    v16 = OUTLINED_FUNCTION_2_27();
    v8(v16);
    v12 = v21;
    sub_2665E466C(v6);
    (v7)(v6, v3);
    sub_26666B028();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECA0, &qword_266677240);
  sub_26666A058();
  v13 = OUTLINED_FUNCTION_0_29();
  *(v13 + 16) = xmmword_26666EED0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266676A20;
  *(inited + 32) = v1;
  *(inited + 40) = v12;

  v18 = v22;
  sub_26664F374(inited, v8 + v13);
  if (v18)
  {

    swift_setDeallocating();
    sub_26663919C();
    *(v13 + 16) = 0;
  }

  else
  {
    swift_setDeallocating();
    sub_26663919C();
  }

  return v13;
}

uint64_t sub_2665E466C(uint64_t a1)
{
  sub_26666AF28();
  swift_allocObject();
  v1 = sub_26666AF18();
  sub_26666ACE8();
  swift_allocObject();
  sub_26666ACD8();
  sub_26666A828();
  sub_2665E4720();
  sub_26666A418();

  sub_26666A7B8();

  return v1;
}

unint64_t sub_2665E4720()
{
  result = qword_28007ECA8;
  if (!qword_28007ECA8)
  {
    sub_26666A828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ECA8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_29()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_3_27()
{

  return swift_allocObject();
}

void sub_2665E47E4()
{
  v1 = v0;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v2 = sub_26666C168();
  __swift_project_value_buffer(v2, qword_28156D7E8);

  oslog = sub_26666C148();
  v3 = sub_26666C5E8();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    v6 = 0xEF776F6C466E6961;
    v7 = 0x4D65747563657865;
    if (*(v1 + 48) != 1)
    {
      v7 = 0x6574656C706D6F63;
      v6 = 0xE800000000000000;
    }

    if (*(v1 + 48))
    {
      v8 = v7;
    }

    else
    {
      v8 = 0x5065747563657865;
    }

    if (*(v1 + 48))
    {
      v9 = v6;
    }

    else
    {
      v9 = 0xEF73776F6C466572;
    }

    v10 = sub_2665BFC90(v8, v9, &v12);

    *(v4 + 4) = v10;
    _os_log_impl(&dword_266549000, oslog, v3, "[RootFlow] transitioned to state %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x266789690](v5, -1, -1);
    MEMORY[0x266789690](v4, -1, -1);
  }
}

uint64_t sub_2665E49B0(char a1)
{
  if (!a1)
  {
    return 0x5065747563657865;
  }

  if (a1 == 1)
  {
    return 0x4D65747563657865;
  }

  return 0x6574656C706D6F63;
}

uint64_t sub_2665E4A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 48) = 0;
  v8 = qword_28156C150;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v9 = sub_26666C168();
  __swift_project_value_buffer(v9, qword_28156D7E8);

  v10 = sub_26666C148();
  v11 = sub_26666C618();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v12 = 136315394;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECC0, &unk_266676B80);
    v14 = MEMORY[0x2667887F0](a1, v13);
    v16 = v15;

    v17 = sub_2665BFC90(v14, v16, &v24);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v18 = sub_2666692A8();
    v19 = MEMORY[0x2667887F0](a2, v18);
    v21 = v20;

    v22 = sub_2665BFC90(v19, v21, &v24);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_266549000, v10, v11, "[RootFlow] \n<preconditionFlows: %s \n prerequisiteFlows: %s>", v12, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
  }

  return v5;
}

uint64_t sub_2665E4C48(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_2665E4C68, 0, 0);
}

uint64_t sub_2665E4C68(uint64_t a1)
{
  v2 = v1[6];
  if (*(v2 + 48))
  {
    if (*(v2 + 48) == 1)
    {
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v3 = sub_26666C168();
      __swift_project_value_buffer(v3, qword_28156D7E8);
      v4 = sub_26666C148();
      v5 = sub_26666C618();
      if (os_log_type_enabled(v4, v5))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_3_9(&dword_266549000, v6, v5, "[RootFlow] Creating the main flow and finishing this flow as complete with it.");
        OUTLINED_FUNCTION_4_1();
      }

      v7 = v1[6];

      v15 = (*(v7 + 32) + **(v7 + 32));
      v8 = swift_task_alloc();
      v1[7] = v8;
      *v8 = v1;
      v8[1] = sub_2665E4FDC;

      return v15();
    }

    sub_2666698A8();
  }

  else
  {
    sub_2666692D8();
    swift_allocObject();

    v10 = sub_2666692C8();
    v11 = *(v2 + 24);
    type metadata accessor for EachFlow();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v1[2] = v12;
    v1[3] = v10;
    sub_2665E5A68(qword_28156C3C0, 255, type metadata accessor for EachFlow, &unk_2666745F8);

    v1[4] = sub_266669568();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_2665E5AB0;
    *(v13 + 24) = v2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007ECB8, &qword_266676B78);
    sub_2665E5AE8();
    sub_266669838();
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_2665E4FDC()
{
  OUTLINED_FUNCTION_14();
  *(*v0 + 64) = v1;

  return MEMORY[0x2822009F8](sub_2665E50D8, 0, 0);
}

uint64_t sub_2665E50D8()
{
  OUTLINED_FUNCTION_14();
  sub_266669898();

  v1 = *(v0 + 8);

  return v1();
}

void sub_2665E516C(char a1)
{
  v2 = v1;
  if (a1)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v3 = sub_26666C168();
    __swift_project_value_buffer(v3, qword_28156D7E8);
    v4 = sub_26666C148();
    v5 = sub_26666C618();
    v6 = 2;
    if (os_log_type_enabled(v4, v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_9(&dword_266549000, v7, v5, "[RootFlow] A Guard flow failed, prerequisiteFlows did not execute. Finishing flow as complete.");
LABEL_10:
      OUTLINED_FUNCTION_4_1();
    }
  }

  else
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v8 = sub_26666C168();
    __swift_project_value_buffer(v8, qword_28156D7E8);
    v4 = sub_26666C148();
    v9 = sub_26666C618();
    if (os_log_type_enabled(v4, v9))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_3_9(&dword_266549000, v10, v9, "[RootFlow] All guard flows passed and all prerequisiteFlows executed.");
      v6 = 1;
      goto LABEL_10;
    }

    v6 = 1;
  }

  *(v2 + 48) = v6;

  sub_2665E47E4();
}

uint64_t sub_2665E52D0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RootFlow();
  sub_2665E5A68(qword_28156C2E8, v2, type metadata accessor for RootFlow, &unk_266676B20);
  return sub_266669548();
}

unint64_t sub_2665E535C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26666C958();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2665E53CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2665E535C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2665E53FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2665E49B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2665E5428()
{

  return v0;
}

uint64_t sub_2665E5458()
{
  sub_2665E5428();

  return MEMORY[0x2821FE8D8](v0, 49, 7);
}

_BYTE *storeEnumTagSinglePayload for RootFlow.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2665E5590()
{
  result = qword_28007ECB0;
  if (!qword_28007ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007ECB0);
  }

  return result;
}

uint64_t sub_2665E55E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26658F46C;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_2665E56B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2665E5754;

  return sub_2665E4C48(a1);
}

uint64_t sub_2665E5754()
{
  OUTLINED_FUNCTION_14();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2665E5844(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RootFlow();

  return sub_266669588();
}

uint64_t sub_2665E587C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_266669368();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v22 = a2;
    v23 = a3;
    v24 = a4;
    v26 = MEMORY[0x277D84F90];
    sub_26666C898();
    v13 = v9 + 16;
    v25 = *(v9 + 16);
    v14 = *(v9 + 80);
    v21 = a1;
    v15 = a1 + ((v14 + 32) & ~v14);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v25(v11, v15, v8);
      sub_2666692F8();
      (*v17)(v11, v8);
      sub_26666C868();
      sub_26666C8A8();
      sub_26666C8B8();
      sub_26666C878();
      v15 += v16;
      --v12;
    }

    while (v12);

    v18 = v26;
    a3 = v23;
    a4 = v24;
    a2 = v22;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  type metadata accessor for RootFlow();
  v19 = swift_allocObject();
  sub_2665E4A20(v18, a2, a3, a4);
  return v19;
}

uint64_t sub_2665E5A68(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_2665E5AE8()
{
  result = qword_28156D150;
  if (!qword_28156D150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007ECB8, &qword_266676B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156D150);
  }

  return result;
}

uint64_t sub_2665E5B4C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2665E5B8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s17DayEventGroupingsV8GroupingVMa(uint64_t a1)
{
  result = qword_28007ECC8;
  if (!qword_28007ECC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2665E5C4C(uint64_t a1)
{
  sub_266668D38();
  if (v1 <= 0x3F)
  {
    sub_2665E5CD0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2665E5CD0(uint64_t a1)
{
  if (!qword_28007DD00)
  {
    sub_26656CC50();
    v1 = sub_26666C508();
    if (!v2)
    {
      atomic_store(v1, &qword_28007DD00);
    }
  }
}