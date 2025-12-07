uint64_t storeEnumTagSinglePayload for LRUCapacity(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1BC8BDC64(uint64_t a1)
{
  sub_1BC805D2C(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1BC8BDDAC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LRUCapacity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BC8BDF80(_BYTE *result, int a2, int a3)
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

void sub_1BC8BE034(void *a1)
{
  sub_1BC8F7B24();
  if (v1 <= 0x3F)
  {
    sub_1BC8F7F24();
    if (v2 <= 0x3F)
    {
      sub_1BC805D2C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BC8BE114()
{
  result = qword_1EBCF6610;
  if (!qword_1EBCF6610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6610);
  }

  return result;
}

unint64_t sub_1BC8BE16C()
{
  result = qword_1EBCF6618;
  if (!qword_1EBCF6618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6618);
  }

  return result;
}

unint64_t sub_1BC8BE1C4()
{
  result = qword_1EBCF6620[0];
  if (!qword_1EBCF6620[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCF6620);
  }

  return result;
}

unint64_t sub_1BC8BE21C()
{
  result = qword_1EDC1F210;
  if (!qword_1EDC1F210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F210);
  }

  return result;
}

unint64_t sub_1BC8BE274()
{
  result = qword_1EDC1F218;
  if (!qword_1EDC1F218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F218);
  }

  return result;
}

unint64_t sub_1BC8BE2CC()
{
  result = qword_1EDC1F220;
  if (!qword_1EDC1F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F220);
  }

  return result;
}

unint64_t sub_1BC8BE324()
{
  result = qword_1EDC1F228;
  if (!qword_1EDC1F228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F228);
  }

  return result;
}

unint64_t sub_1BC8BE37C()
{
  result = qword_1EDC1F238;
  if (!qword_1EDC1F238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F238);
  }

  return result;
}

unint64_t sub_1BC8BE3D4()
{
  result = qword_1EDC1F240;
  if (!qword_1EDC1F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F240);
  }

  return result;
}

unint64_t sub_1BC8BE440()
{
  result = qword_1EDC1F200;
  if (!qword_1EDC1F200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F200);
  }

  return result;
}

unint64_t sub_1BC8BE494()
{
  result = qword_1EDC1F1F8;
  if (!qword_1EDC1F1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F1F8);
  }

  return result;
}

unint64_t sub_1BC8BE518()
{
  result = qword_1EDC1F208;
  if (!qword_1EDC1F208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1F208);
  }

  return result;
}

unint64_t sub_1BC8BE56C()
{
  result = qword_1EDC1FF00;
  if (!qword_1EDC1FF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF5A20, &qword_1BC901BF0);
    sub_1BC7C4768(&qword_1EDC21000, MEMORY[0x1E6968FB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC1FF00);
  }

  return result;
}

uint64_t sub_1BC8BE71C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BC8BE7D0;

  return sub_1BC8BD34C(a1, v4, v5, v6);
}

uint64_t sub_1BC8BE7D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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

uint64_t sub_1BC8BE900(uint64_t a1, int a2)
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

uint64_t sub_1BC8BE940(uint64_t result, int a2, int a3)
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

_BYTE *sub_1BC8BE998(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BC8BEB74(uint64_t a1, char a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1BC899994();
  }

  else
  {
    v8 = *v5;

    return sub_1BC891004(v8, a2);
  }
}

uint64_t sub_1BC8BEC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if ([objc_opt_self() isAnalysisEnabled])
  {
    v13 = [objc_allocWithZone(MEMORY[0x1E69DF298]) init];
    v12[19] = v13;
    v14 = sub_1BC8F6F44();
    v12[20] = v14;
    v12[14] = sub_1BC8BF17C;
    v12[15] = 0;
    v15 = MEMORY[0x1E69E9820];
    v12[10] = MEMORY[0x1E69E9820];
    v12[11] = 1107296256;
    v12[12] = sub_1BC8BF3D4;
    v12[13] = &block_descriptor_7;
    v16 = _Block_copy(v12 + 10);
    v12[21] = v16;
    v12[2] = v12;
    v12[7] = v12 + 23;
    v12[3] = sub_1BC8BEE24;
    v17 = swift_continuation_init();
    v12[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5870, &qword_1BC902248);
    v12[10] = v15;
    v12[11] = 1107296256;
    v12[12] = sub_1BC8BEB74;
    v12[13] = &block_descriptor_4;
    v12[14] = v17;
    [v13 analyzeVideoFile:v14 useBlastdoor:1 progressHandler:v16 completionHandler:v12 + 10];

    return MEMORY[0x1EEE6DEC8](v12 + 2, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
  }

  else
  {
    OUTLINED_FUNCTION_96();

    return v25(1);
  }
}

uint64_t sub_1BC8BEE24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1BC8BEFB8;
  }

  else
  {
    v2 = sub_1BC8BEF34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BC8BEF34()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  v3 = *(v0 + 184);
  _Block_release(v2);

  OUTLINED_FUNCTION_96();

  return v4((v3 & 1) == 0);
}

uint64_t sub_1BC8BEFB8(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[20];
  swift_willThrow();
  _Block_release(v2);

  if (qword_1EDC20728 != -1)
  {
    swift_once();
  }

  v4 = v1[22];
  v5 = sub_1BC8F7734();
  __swift_project_value_buffer(v5, qword_1EDC2B3A8);
  v6 = v4;
  v7 = sub_1BC8F7714();
  v8 = sub_1BC8F81E4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[22];
  v11 = v1[19];
  if (v9)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v10;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1BC7A3000, v7, v8, "UserSafety: USSensitivityAnalyzer returned %@", v12, 0xCu);
    sub_1BC8504B8(v13);
    MEMORY[0x1BFB2AA50](v13, -1, -1);
    MEMORY[0x1BFB2AA50](v12, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_96();

  return v16(0);
}

void sub_1BC8BF17C(uint64_t a1, double a2)
{
  v4 = sub_1BC8F7014();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC20728 != -1)
  {
    swift_once();
  }

  v8 = sub_1BC8F7734();
  __swift_project_value_buffer(v8, qword_1EDC2B3A8);
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_1BC8F7714();
  v10 = sub_1BC8F8204();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315394;
    sub_1BC80DFB0();
    v13 = sub_1BC8F8A54();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v16 = sub_1BC7A9A4C(v13, v15, &v18);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a2;
    _os_log_impl(&dword_1BC7A3000, v9, v10, "UserSafety: Safety evaluation percentage complete for %s - %f", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1BFB2AA50](v12, -1, -1);
    MEMORY[0x1BFB2AA50](v11, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1BC8BF3D4(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_1BC8F7014();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  sub_1BC8F6FB4();

  v9(v8, a3);

  return (*(v6 + 8))(v8, v5);
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for HistoryItem(uint64_t a1)
{
  result = qword_1EBCF6700;
  if (!qword_1EBCF6700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC8BF5BC()
{
  OUTLINED_FUNCTION_29_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v14 = v13 - v12;
  type metadata accessor for HistoryItem(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  v18 = (v17 - v16);
  v19 = OUTLINED_FUNCTION_82();
  sub_1BC7FB138(v19, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v18;
    v22 = *v3;
    swift_beginAccess();
    v1(0);
    OUTLINED_FUNCTION_4_1();
    (*(v23 + 16))(v7, &v21[v22]);
  }

  else
  {
    v24 = (*(v10 + 32))(v14, v18, v8);
    v5(v24);
    (*(v10 + 8))(v14, v8);
  }

  OUTLINED_FUNCTION_24();
}

void HistoryItem.handles.getter()
{
  OUTLINED_FUNCTION_29_0();
  v2 = sub_1BC8F7384();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v8 = v7 - v6;
  v9 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_12();
  v13 = OUTLINED_FUNCTION_18_15();
  type metadata accessor for HistoryItem(v13);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_12();
  v17 = (v16 - v15);
  sub_1BC7FB138(v0, v16 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    swift_beginAccess();
    sub_1BC7B7A9C();
    v19 = sub_1BC8F8424();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF56B0, &unk_1BC9083A0);
    sub_1BC8F73D4();
    *(swift_allocObject() + 16) = xmmword_1BC8FC230;
    if (v19)
    {
      v20 = MEMORY[0x1E6993528];
    }

    else
    {
      v20 = MEMORY[0x1E6993520];
    }

    (*(v4 + 104))(v8, *v20, v2);

    sub_1BC8F73B4();
    sub_1BC8C1870();
  }

  else
  {
    (*(v11 + 32))(v1, v17, v9);
    sub_1BC8F72E4();
    (*(v11 + 8))(v1, v9);
  }

  OUTLINED_FUNCTION_24();
}

void HistoryItem.description.getter()
{
  OUTLINED_FUNCTION_29_0();
  v46 = *MEMORY[0x1E69E9840];
  v2 = sub_1BC8F7C64();
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_12();
  v3 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  type metadata accessor for HistoryItem(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_18_15();
  v11 = sub_1BC8F6C74();
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_12();
  sub_1BC8F6CB4();
  swift_allocObject();
  sub_1BC8F6CA4();
  sub_1BC8F6C64();
  sub_1BC8F6C84();
  sub_1BC7FB138(v0, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v1;
    type metadata accessor for Message(0);
    OUTLINED_FUNCTION_3_24();
    sub_1BC8C2144(v13, v14, &protocol conformance descriptor for Message);
    sub_1BC8F6C94();

    v17 = 0xE700000000000000;
    v18 = 0x6567617373654DLL;
  }

  else
  {
    (*(v5 + 32))(v9, v1, v3);
    OUTLINED_FUNCTION_1_26();
    sub_1BC8C2144(v15, v16, MEMORY[0x1E69934D8]);
    OUTLINED_FUNCTION_82();
    sub_1BC8F6C94();
    v19 = OUTLINED_FUNCTION_82();
    v20(v19);
    v17 = 0xEA00000000006C6CLL;
    v18 = 0x6143746E65636552;
  }

  v21 = objc_opt_self();
  OUTLINED_FUNCTION_27_0();
  v22 = sub_1BC8F70C4();
  *&v44 = 0;
  v23 = [v21 JSONObjectWithData:v22 options:0 error:&v44];

  if (!v23)
  {
    v34 = v44;

    v35 = sub_1BC8F6EA4();

LABEL_13:
    swift_willThrow();

    v39 = OUTLINED_FUNCTION_27_0();
    sub_1BC7D4C94(v39, v40);

    goto LABEL_14;
  }

  v24 = v44;
  sub_1BC8F8474();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5030, &unk_1BC8FC7D0);
  if (!swift_dynamicCast())
  {

    v36 = OUTLINED_FUNCTION_27_0();
    sub_1BC7D4C94(v36, v37);
    goto LABEL_14;
  }

  v45 = MEMORY[0x1E69E6158];
  *&v44 = v18;
  *(&v44 + 1) = v17;
  sub_1BC7F0E58(&v44, v43);

  swift_isUniquelyReferenced_nonNull_native();
  sub_1BC83D5F8(v43, 0x4979726F74736968, 0xEF657079546D6574);
  OUTLINED_FUNCTION_82();
  v25 = sub_1BC8F7A94();
  *&v44 = 0;
  v26 = [v21 dataWithJSONObject:v25 options:1 error:&v44];

  v27 = v44;
  if (!v26)
  {
    v38 = v27;

    v35 = sub_1BC8F6EA4();

    goto LABEL_13;
  }

  v28 = sub_1BC8F70D4();
  v30 = v29;

  sub_1BC8F7C54();
  sub_1BC8F7C34();
  if (v31)
  {
    v32 = OUTLINED_FUNCTION_27_0();
    sub_1BC7D4C94(v32, v33);
  }

  else
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_1BC8F85A4();

    *&v44 = 0xD000000000000012;
    *(&v44 + 1) = 0x80000001BC90DEF0;
    MEMORY[0x1BFB29120](v18, v17);

    MEMORY[0x1BFB29120](62, 0xE100000000000000);
    v41 = OUTLINED_FUNCTION_27_0();
    sub_1BC7D4C94(v41, v42);
  }

  sub_1BC7D4C94(v28, v30);

LABEL_14:
  OUTLINED_FUNCTION_24();
}

void static HistoryItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_12();
  v32 = v31 - v30;
  type metadata accessor for HistoryItem(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_20_0();
  v36 = (v34 - v35);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FC8, &qword_1BC9083B0);
  OUTLINED_FUNCTION_4_0();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &a9 - v42;
  v44 = *(v41 + 56);
  sub_1BC7FB138(v25, &a9 - v42);
  sub_1BC7FB138(v23, &v43[v44]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BC7FB138(v43, v36);
    v45 = *v36;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v46 = *&v43[v44];
      sub_1BC7D9730(0, &unk_1EDC1FF20, 0x1E69E58C0);
      sub_1BC8F83A4();

LABEL_9:
      sub_1BC7FB19C(v43);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1BC7FB138(v43, v39);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v28 + 32))(v32, &v43[v44], v26);
      MEMORY[0x1BFB28700](v39, v32);
      v47 = *(v28 + 8);
      v47(v32, v26);
      v47(v39, v26);
      goto LABEL_9;
    }

    (*(v28 + 8))(v39, v26);
  }

  sub_1BC8C1A6C(v43);
LABEL_10:
  OUTLINED_FUNCTION_24();
}

uint64_t sub_1BC8C02EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6143746E65636572 && a2 == 0xEA00000000006C6CLL;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BC8F8AA4();

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

uint64_t sub_1BC8C03BC(char a1)
{
  if (a1)
  {
    return 0x6567617373656DLL;
  }

  else
  {
    return 0x6143746E65636572;
  }
}

uint64_t sub_1BC8C0400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8C02EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8C0428(uint64_t a1)
{
  v2 = sub_1BC8C1AD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8C0464(uint64_t a1)
{
  v2 = sub_1BC8C1AD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC8C04A0(uint64_t a1)
{
  v2 = sub_1BC8C1B28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8C04DC(uint64_t a1)
{
  v2 = sub_1BC8C1B28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC8C0518(uint64_t a1)
{
  v2 = sub_1BC8C1B7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8C0554(uint64_t a1)
{
  v2 = sub_1BC8C1B7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void HistoryItem.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF66A8, &qword_1BC9083B8);
  OUTLINED_FUNCTION_0();
  v42 = v3;
  v43 = v2;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25_14(v5, v37);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF66B0, &qword_1BC9083C0);
  OUTLINED_FUNCTION_0();
  v40 = v6;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v38 = v11;
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v14 = v13 - v12;
  type metadata accessor for HistoryItem(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  v18 = (v17 - v16);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF66B8, &qword_1BC9083C8);
  OUTLINED_FUNCTION_0();
  v20 = v19;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8C1AD4();
  sub_1BC8F8CA4();
  sub_1BC7FB138(v44, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v18;
    v48 = 1;
    sub_1BC8C1B28();
    OUTLINED_FUNCTION_24_14();
    sub_1BC8F8934();
    v46 = v24;
    type metadata accessor for Message(0);
    OUTLINED_FUNCTION_3_24();
    sub_1BC8C2144(v25, v26, &protocol conformance descriptor for Message);
    sub_1BC8F89F4();
    v27 = OUTLINED_FUNCTION_82();
    v28(v27);
    v29 = OUTLINED_FUNCTION_27_0();
    v30(v29);
  }

  else
  {
    v32 = v38;
    v31 = v39;
    (*(v38 + 32))(v14, v18, v39);
    v47 = 0;
    sub_1BC8C1B7C();
    v33 = v45;
    OUTLINED_FUNCTION_24_14();
    sub_1BC8F8934();
    OUTLINED_FUNCTION_1_26();
    sub_1BC8C2144(v34, v35, MEMORY[0x1E69934D8]);
    v36 = v41;
    sub_1BC8F89F4();
    (*(v40 + 8))(v9, v36);
    (*(v32 + 8))(v14, v31);
    (*(v20 + 8))(v23, v33);
  }
}

void HistoryItem.hash(into:)(uint64_t a1)
{
  v2 = sub_1BC8F7324();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  v8 = v7 - v6;
  type metadata accessor for HistoryItem(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v12 = (v11 - v10);
  sub_1BC7FB138(v1, v11 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    MEMORY[0x1BFB2A020](1);
    sub_1BC8F83B4();
  }

  else
  {
    (*(v4 + 32))(v8, v12, v2);
    MEMORY[0x1BFB2A020](0);
    OUTLINED_FUNCTION_1_26();
    sub_1BC8C2144(v14, v15, MEMORY[0x1E69934E0]);
    sub_1BC8F7B64();
    (*(v4 + 8))(v8, v2);
  }
}

uint64_t HistoryItem.hashValue.getter()
{
  sub_1BC8F8C04();
  HistoryItem.hash(into:)(v1);
  return sub_1BC8F8C64();
}

void HistoryItem.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF66D8, &qword_1BC9083D0);
  OUTLINED_FUNCTION_0();
  v73 = v4;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v63 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF66E0, &qword_1BC9083D8);
  OUTLINED_FUNCTION_0();
  v68 = v8;
  v69 = v7;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_14(v10, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF66E8, &unk_1BC9083E0);
  OUTLINED_FUNCTION_0();
  v74 = v12;
  v75 = v11;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_18_15();
  v15 = type metadata accessor for HistoryItem(v14);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_20_0();
  v19 = (v17 - v18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v63 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v63 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8C1AD4();
  v26 = v76;
  sub_1BC8F8C84();
  if (v26)
  {
    goto LABEL_8;
  }

  v65 = v25;
  v66 = v23;
  v64 = v19;
  v67 = v15;
  v76 = a1;
  v27 = v75;
  v28 = sub_1BC8F8914();
  sub_1BC7B85D4(v28, 0);
  v32 = v2;
  if (v30 == v31 >> 1)
  {
LABEL_7:
    v46 = v67;
    v47 = sub_1BC8F8624();
    swift_allocError();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6350, &qword_1BC8FB5C0);
    *v49 = v46;
    sub_1BC8F8824();
    sub_1BC8F8614();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    swift_willThrow();
    swift_unknownObjectRelease();
    v50 = OUTLINED_FUNCTION_10_22();
    v51(v50, v27);
    a1 = v76;
LABEL_8:
    v52 = a1;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v52);
    return;
  }

  if (v30 < (v31 >> 1))
  {
    v33 = *(v29 + v30);
    sub_1BC7B85D0(v30 + 1);
    v35 = v34;
    v37 = v36;
    swift_unknownObjectRelease();
    v38 = v73;
    if (v35 == v37 >> 1)
    {
      v39 = v27;
      if (v33)
      {
        v79 = 1;
        sub_1BC8C1B28();
        v40 = v71;
        OUTLINED_FUNCTION_24_14();
        sub_1BC8F8814();
        v41 = v72;
        type metadata accessor for Message(0);
        OUTLINED_FUNCTION_3_24();
        sub_1BC8C2144(v42, v43, &protocol conformance descriptor for Message);
        v44 = v70;
        sub_1BC8F88F4();
        v45 = v74;
        swift_unknownObjectRelease();
        (*(v38 + 8))(v40, v44);
        (*(v45 + 8))(v32, v39);
        v56 = v64;
        *v64 = v77;
        swift_storeEnumTagMultiPayload();
        v57 = v56;
      }

      else
      {
        v78 = 0;
        sub_1BC8C1B7C();
        OUTLINED_FUNCTION_24_14();
        sub_1BC8F8814();
        v41 = v72;
        sub_1BC8F7324();
        OUTLINED_FUNCTION_1_26();
        sub_1BC8C2144(v53, v54, MEMORY[0x1E69934E8]);
        v55 = v66;
        sub_1BC8F88F4();
        swift_unknownObjectRelease();
        v58 = OUTLINED_FUNCTION_28_13();
        v59(v58);
        v60 = OUTLINED_FUNCTION_10_22();
        v61(v60, v27);
        swift_storeEnumTagMultiPayload();
        v57 = v55;
      }

      v62 = v65;
      sub_1BC7FBC68(v57, v65);
      sub_1BC7FBC68(v62, v41);
      v52 = v76;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1BC8C1214(uint64_t a1)
{
  sub_1BC8F8C04();
  HistoryItem.hash(into:)(v2);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8C1258(uint64_t a1, uint64_t a2)
{
  sub_1BC8F7C24();
  sub_1BC8F8C04();
  sub_1BC8F7CD4();
  v2 = sub_1BC8F8C64();

  return v2;
}

void sub_1BC8C12CC()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v4 = sub_1BC8F72C4();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_0();
  v7 = MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_19(v7, v8, v9, v10, v11, v12, v13, v14, v32);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6758, &qword_1BC908860), v15 = OUTLINED_FUNCTION_17_13(), *(v3 + 16)))
  {
    OUTLINED_FUNCTION_5_22();
    while (v16 < *(v3 + 16))
    {
      v17 = OUTLINED_FUNCTION_8_25(v16);
      (v3)(v17);
      v18 = *(v15 + 40);
      OUTLINED_FUNCTION_7_17();
      v20 = sub_1BC8C2144(&qword_1EDC205E8, v19, MEMORY[0x1E6969AD8]);
      OUTLINED_FUNCTION_29_9(v20);
      OUTLINED_FUNCTION_26_11();
      while (1)
      {
        OUTLINED_FUNCTION_13_17();
        if (v22)
        {
          break;
        }

        v23 = OUTLINED_FUNCTION_16_14();
        (v3)(v23);
        OUTLINED_FUNCTION_7_17();
        v25 = sub_1BC8C2144(&qword_1EBCF6760, v24, MEMORY[0x1E6969AE0]);
        OUTLINED_FUNCTION_23_13(v25);
        v26 = OUTLINED_FUNCTION_27_11();
        (v15)(v26);
        if (v18)
        {
          (v15)(v33, v4);
          v15 = v1;
          goto LABEL_12;
        }

        v15 = v1;
      }

      v27 = OUTLINED_FUNCTION_11_15(v21);
      v28(v27);
      v29 = *(v15 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_16;
      }

      *(v15 + 16) = v31;
LABEL_12:
      OUTLINED_FUNCTION_22_12();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_24();
  }
}

void sub_1BC8C14C8(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6768, &qword_1BC908868), v2 = OUTLINED_FUNCTION_17_13(), v3 = v2, (v25 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v23 = v1;
    v24 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v24 + 8 * v4++);
      sub_1BC8F7C24();
      sub_1BC8F8C04();
      v26 = v6;
      sub_1BC8F7CD4();
      v7 = sub_1BC8F8C64();

      OUTLINED_FUNCTION_26_11();
      v9 = ~v8;
      while (1)
      {
        v10 = v7 & v9;
        v11 = (v7 & v9) >> 6;
        v12 = *(v5 + 8 * v11);
        v13 = 1 << (v7 & v9);
        if ((v13 & v12) == 0)
        {
          break;
        }

        v14 = sub_1BC8F7C24();
        v16 = v15;
        if (v14 == sub_1BC8F7C24() && v16 == v17)
        {

          goto LABEL_17;
        }

        v19 = sub_1BC8F8AA4();

        if (v19)
        {

          goto LABEL_17;
        }

        v7 = v10 + 1;
      }

      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v20 = *(v3 + 16);
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      *(v3 + 16) = v22;
LABEL_17:
      v1 = v23;
      if (v4 == v25)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_1BC8C16BC(uint64_t a1)
{
  v1 = a1;
  if (sub_1BC7C0454(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6770, &unk_1BC908870);
    v2 = OUTLINED_FUNCTION_17_13();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v22 = sub_1BC7C0454(v1);
  if (v22)
  {
    v3 = 0;
    v4 = v2 + 56;
    v20 = v1;
    v21 = v1 & 0xC000000000000001;
    v19 = v1 + 32;
    while (1)
    {
      sub_1BC8E2358();
      v5 = v21 ? MEMORY[0x1BFB29A00](v3, v1) : *(v19 + 8 * v3);
      v6 = v5;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      sub_1BC8F8394();
      OUTLINED_FUNCTION_26_11();
      v10 = ~v9;
      while (1)
      {
        v11 = v8 & v10;
        v12 = (v8 & v10) >> 6;
        v13 = *(v4 + 8 * v12);
        v14 = 1 << (v8 & v10);
        if ((v14 & v13) == 0)
        {
          break;
        }

        sub_1BC7D9730(0, &qword_1EBCF5990, 0x1E695D630);
        v15 = *(*(v2 + 48) + 8 * v11);
        v16 = sub_1BC8F83A4();

        if (v16)
        {

          goto LABEL_17;
        }

        v8 = v11 + 1;
      }

      *(v4 + 8 * v12) = v14 | v13;
      *(*(v2 + 48) + 8 * v11) = v6;
      v17 = *(v2 + 16);
      v7 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v18;
LABEL_17:
      v1 = v20;
      if (v3 == v22)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_1BC8C1870()
{
  OUTLINED_FUNCTION_29_0();
  v3 = v2;
  v4 = sub_1BC8F73D4();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_20_0();
  v7 = MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_19(v7, v8, v9, v10, v11, v12, v13, v14, v32);
  if (v0 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6518, &qword_1BC907698), v15 = OUTLINED_FUNCTION_17_13(), *(v3 + 16)))
  {
    OUTLINED_FUNCTION_5_22();
    while (v16 < *(v3 + 16))
    {
      v17 = OUTLINED_FUNCTION_8_25(v16);
      (v3)(v17);
      v18 = *(v15 + 40);
      OUTLINED_FUNCTION_6_20();
      v20 = sub_1BC8C2144(&qword_1EBCF5678, v19, MEMORY[0x1E6993540]);
      OUTLINED_FUNCTION_29_9(v20);
      OUTLINED_FUNCTION_26_11();
      while (1)
      {
        OUTLINED_FUNCTION_13_17();
        if (v22)
        {
          break;
        }

        v23 = OUTLINED_FUNCTION_16_14();
        (v3)(v23);
        OUTLINED_FUNCTION_6_20();
        v25 = sub_1BC8C2144(&qword_1EBCF6510, v24, MEMORY[0x1E6993548]);
        OUTLINED_FUNCTION_23_13(v25);
        v26 = OUTLINED_FUNCTION_27_11();
        (v15)(v26);
        if (v18)
        {
          (v15)(v33, v4);
          v15 = v1;
          goto LABEL_12;
        }

        v15 = v1;
      }

      v27 = OUTLINED_FUNCTION_11_15(v21);
      v28(v27);
      v29 = *(v15 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_16;
      }

      *(v15 + 16) = v31;
LABEL_12:
      OUTLINED_FUNCTION_22_12();
      if (v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {
LABEL_14:

    OUTLINED_FUNCTION_24();
  }
}

uint64_t sub_1BC8C1A6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FC8, &qword_1BC9083B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BC8C1AD4()
{
  result = qword_1EBCF66C0;
  if (!qword_1EBCF66C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF66C0);
  }

  return result;
}

unint64_t sub_1BC8C1B28()
{
  result = qword_1EBCF66C8;
  if (!qword_1EBCF66C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF66C8);
  }

  return result;
}

unint64_t sub_1BC8C1B7C()
{
  result = qword_1EBCF66D0;
  if (!qword_1EBCF66D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF66D0);
  }

  return result;
}

uint64_t sub_1BC8C1C20(uint64_t a1)
{
  result = sub_1BC8F7324();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Message(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HistoryItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1BC8C1D80(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BC8C1E30()
{
  result = qword_1EBCF6710;
  if (!qword_1EBCF6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6710);
  }

  return result;
}

unint64_t sub_1BC8C1E88()
{
  result = qword_1EBCF6718;
  if (!qword_1EBCF6718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6718);
  }

  return result;
}

unint64_t sub_1BC8C1EE0()
{
  result = qword_1EBCF6720;
  if (!qword_1EBCF6720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6720);
  }

  return result;
}

unint64_t sub_1BC8C1F38()
{
  result = qword_1EBCF6728;
  if (!qword_1EBCF6728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6728);
  }

  return result;
}

unint64_t sub_1BC8C1F90()
{
  result = qword_1EBCF6730;
  if (!qword_1EBCF6730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6730);
  }

  return result;
}

unint64_t sub_1BC8C1FE8()
{
  result = qword_1EBCF6738;
  if (!qword_1EBCF6738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6738);
  }

  return result;
}

unint64_t sub_1BC8C2040()
{
  result = qword_1EBCF6740;
  if (!qword_1EBCF6740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6740);
  }

  return result;
}

unint64_t sub_1BC8C2098()
{
  result = qword_1EBCF6748;
  if (!qword_1EBCF6748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6748);
  }

  return result;
}

unint64_t sub_1BC8C20F0()
{
  result = qword_1EBCF6750;
  if (!qword_1EBCF6750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6750);
  }

  return result;
}

uint64_t sub_1BC8C2144(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC8C2198(uint64_t a1)
{
  if ((a1 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return (0x1000300020004uLL >> (16 * (a1 - 1)));
  }
}

uint64_t sub_1BC8C21C4(unsigned __int16 a1)
{
  v1 = a1;
  result = 0x676E69646E65702ELL;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x72676F72506E692ELL;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      result = sub_1BC8F8B04();
      __break(1u);
      break;
  }

  return result;
}

unint64_t sub_1BC8C22C0()
{
  result = qword_1EBCF6778;
  if (!qword_1EBCF6778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6778);
  }

  return result;
}

uint64_t sub_1BC8C2324(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v5 = OUTLINED_FUNCTION_25(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - v6;
  v8 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = a1;

  sub_1BC8333D4();
}

uint64_t sub_1BC8C2414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = swift_task_alloc();
  *(v5 + 16) = v6;
  *v6 = v5;
  v6[1] = sub_1BC8C24B0;

  return sub_1BC8C26F4();
}

uint64_t sub_1BC8C24B0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t sub_1BC8C25C4()
{
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_28_14(v1, qword_1EDC2B208);
  v3 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  v4 = OUTLINED_FUNCTION_137();
  v5 = *(v0 + 24);
  if (v4)
  {
    OUTLINED_FUNCTION_21_1();
    v6 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v7);
    OUTLINED_FUNCTION_17_14(&dword_1BC7A3000, v8, v9, "Failed to insert voicemails from notification: %{public}@");
    sub_1BC7E6180(v6, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();

  return v10();
}

uint64_t sub_1BC8C26F4()
{
  OUTLINED_FUNCTION_5();
  v1[32] = v2;
  v1[33] = v0;
  v3 = sub_1BC8F7014();
  v1[34] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[35] = v4;
  v1[36] = OUTLINED_FUNCTION_47_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v5);
  v1[37] = OUTLINED_FUNCTION_47_3();
  Request = type metadata accessor for MessageStoreFetchRequest(0);
  v1[38] = Request;
  OUTLINED_FUNCTION_25(Request);
  v1[39] = OUTLINED_FUNCTION_47_3();
  v7 = sub_1BC8F7264();
  v1[40] = v7;
  OUTLINED_FUNCTION_26(v7);
  v1[41] = v8;
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC8C2864()
{
  v1 = v0[33];
  v2 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v3 = OUTLINED_FUNCTION_10_2();
  if (v4(v3, v2))
  {
    v5 = v0[32];
    v6 = *(v5 + 16);
    v0[46] = v6;
    v7 = MEMORY[0x1E69E7CC0];
    if (v6)
    {
      v30 = MEMORY[0x1E69E7CC0];
      sub_1BC7DDB5C(0, v6, 0);
      v8 = v30;
      v9 = v5 + 32;
      do
      {
        sub_1BC7A792C(v9, (v0 + 2));
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        v10 = OUTLINED_FUNCTION_20_14();
        v11(v10);
        __swift_destroy_boxed_opaque_existential_1(v0 + 2);
        v13 = *(v30 + 16);
        v12 = *(v30 + 24);
        if (v13 >= v12 >> 1)
        {
          v16 = OUTLINED_FUNCTION_37(v12);
          sub_1BC7DDB5C(v16, v13 + 1, 1);
        }

        v14 = OUTLINED_FUNCTION_57_4();
        v15(v14);
        v9 += 40;
        --v6;
      }

      while (v6);
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    sub_1BC80FA88(20, v8);
    v20 = v19;

    v21 = *(v20 + 16);
    if (v21)
    {
      sub_1BC7DDB1C(0, v21, 0);
      do
      {
        v22 = *(v20 + 32);
        OUTLINED_FUNCTION_21_4();
        *(swift_allocObject() + 16) = v22;
        v24 = *(v7 + 16);
        v23 = *(v7 + 24);

        if (v24 >= v23 >> 1)
        {
          sub_1BC7DDB1C((v23 > 1), v24 + 1, 1);
        }

        OUTLINED_FUNCTION_73_7();
      }

      while (!v25);
    }

    __swift_project_boxed_opaque_existential_1((v0[33] + 64), *(v0[33] + 88));
    OUTLINED_FUNCTION_21_4();
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_108_2(v26);
    OUTLINED_FUNCTION_61_4();
    v27 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
    OUTLINED_FUNCTION_50_7(v27, v28);
    v29 = swift_task_alloc();
    v0[47] = v29;
    *v29 = v0;
    v29[1] = sub_1BC8C2B9C;
    OUTLINED_FUNCTION_28_9(v0[39]);

    return sub_1BC7BED60();
  }

  else
  {
    OUTLINED_FUNCTION_27_12();

    OUTLINED_FUNCTION_11();

    return v17();
  }
}

uint64_t sub_1BC8C2B9C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_10_0();
  *v5 = v4;
  *(v7 + 384) = v6;
  *(v7 + 392) = v0;

  OUTLINED_FUNCTION_102_1();
  sub_1BC7ADC24(*(v8 + 312));
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC8C2CBC()
{
  v91 = v0;
  v2 = sub_1BC7C0454(*(v0 + 384));
  if (v2)
  {
    v3 = v2;
    v90 = MEMORY[0x1E69E7CC0];
    sub_1BC7DDB5C(0, v2 & ~(v2 >> 63), 0);
    if (v3 < 0)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      OUTLINED_FUNCTION_0_26();
      swift_once();
LABEL_47:
      v71 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v71, qword_1EDC2B208);
      v72 = v3;
      v73 = sub_1BC8F7714();
      v74 = sub_1BC8F81E4();

      if (os_log_type_enabled(v73, v74))
      {
        OUTLINED_FUNCTION_21_1();
        v75 = OUTLINED_FUNCTION_6_2();
        *v1 = 138543362;
        v76 = v3;
        v77 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_124(v77);
        OUTLINED_FUNCTION_20_10(&dword_1BC7A3000, v78, v74, "Got an error while inserting messages: %{public}@");
        sub_1BC7E6180(v75, &unk_1EBCF5DB0, &unk_1BC900410);
        OUTLINED_FUNCTION_19_0();
        OUTLINED_FUNCTION_9_0();
      }

      v79 = swift_task_alloc();
      v80 = OUTLINED_FUNCTION_100_2(v79);
      *v80 = v81;
      OUTLINED_FUNCTION_1_27(v80);
      OUTLINED_FUNCTION_69_4();

      return sub_1BC8C787C();
    }

    v4 = 0;
    v5 = *(v0 + 384);
    v6 = *(v0 + 328);
    v7 = v90;
    v83 = v5 + 32;
    v87 = v5 & 0xC000000000000001;
    do
    {
      if (v87)
      {
        v8 = MEMORY[0x1BFB29A00](v4, *(v0 + 384));
      }

      else
      {
        v8 = *(v83 + 8 * v4);
      }

      v9 = v8;
      v10 = *(v0 + 352);
      v11 = *(v0 + 320);
      v12 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      swift_beginAccess();
      (*(v6 + 16))(v10, &v9[v12], v11);

      v90 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = OUTLINED_FUNCTION_37(v13);
        sub_1BC7DDB5C(v16, v14 + 1, 1);
        v7 = v90;
      }

      v4 = v4 + 1;
      *(v7 + 16) = v14 + 1;
      OUTLINED_FUNCTION_76_6();
      (*(v6 + 32))(v15 + *(v6 + 72) * v14);
    }

    while (v3 != v4);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v17 = 0;
  v84 = *(v0 + 256) + 32;
  v85 = (*(v0 + 328) + 8);
  v1 = MEMORY[0x1E69E7CC0];
LABEL_13:
  while (v17 != *(v0 + 368))
  {
    v88 = v17 + 1;
    sub_1BC7A792C(v84 + 40 * v17, v0 + 56);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v18 = OUTLINED_FUNCTION_20_14();
    v19(v18);
    v20 = 0;
    v21 = *(v7 + 16);
    while (v21 != v20)
    {
      v22 = v20 + 1;
      OUTLINED_FUNCTION_2_26();
      sub_1BC8CB0C8(&unk_1EDC205F0, v23, MEMORY[0x1E69695C8]);
      v24 = sub_1BC8F7BC4();
      v20 = v22;
      if (v24)
      {
        (*v85)(*(v0 + 344), *(v0 + 320));
        __swift_destroy_boxed_opaque_existential_1((v0 + 56));
        v17 = v88;
        goto LABEL_13;
      }
    }

    (*v85)(*(v0 + 344), *(v0 + 320));
    sub_1BC7CF5EC((v0 + 56), v0 + 96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BC7DDDE4(0, *(v1 + 16) + 1, 1);
      v1 = v90;
    }

    v27 = *(v1 + 16);
    v26 = *(v1 + 24);
    if (v27 >= v26 >> 1)
    {
      v34 = OUTLINED_FUNCTION_37(v26);
      sub_1BC7DDDE4(v34, v27 + 1, 1);
    }

    v28 = *(v0 + 120);
    v29 = *(v0 + 128);
    v30 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 96, v28);
    OUTLINED_FUNCTION_103_1();
    v32 = v31;
    v33 = OUTLINED_FUNCTION_47_3();
    (*(v32 + 16))(v33, v30, v28);
    sub_1BC8F5354(v27, v33, &v90, v28, v29);
    __swift_destroy_boxed_opaque_existential_1((v0 + 96));

    v17 = v88;
    v1 = v90;
  }

  sub_1BC80FE9C(20, v1);
  v36 = v35;
  *(v0 + 400) = v35;

  v37 = *(v36 + 16);
  *(v0 + 408) = v37;
  if (!v37)
  {

    goto LABEL_43;
  }

  *(v0 + 416) = 0;
  v3 = *(v0 + 392);
  v38 = *(v0 + 400);
  if (!*(v38 + 16))
  {
    goto LABEL_54;
  }

  v1 = *(v38 + 32);
  *(v0 + 424) = v1;
  v39 = *(v1 + 16);
  if (v39)
  {
    *(v0 + 240) = MEMORY[0x1E69E7CC0];

    OUTLINED_FUNCTION_98_0();
    sub_1BC8F8684();
    type metadata accessor for Message(0);
    v86 = v39;
    v40 = 0;
    v41 = v1 + 32;
    v89 = v1;
    while (1)
    {
      if (v40 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_53;
      }

      v43 = *(v0 + 288);
      v42 = *(v0 + 296);
      sub_1BC7A792C(v41, v0 + 136);
      sub_1BC7A792C(v0 + 136, v0 + 176);
      v45 = *(v0 + 160);
      v44 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v45);
      (*(v44 + 72))(v45, v44);
      v1 = *(v0 + 160);
      v46 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v1);
      (*(v46 + 128))(v1, v46);
      sub_1BC7ED740(v43, v42);
      if (v3)
      {
        break;
      }

      ++v40;
      v47 = *(v0 + 296);
      v48 = *(v0 + 272);
      (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
      v49 = OUTLINED_FUNCTION_55_4();
      v50(v49);
      v51 = OUTLINED_FUNCTION_80_5();
      __swift_storeEnumTagSinglePayload(v51, v52, v53, v48);
      sub_1BC7EA618((v0 + 176), v47);
      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      sub_1BC8F8654();
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
      v3 = 0;
      v41 += 40;
      v1 = v89;
      if (v86 == v40)
      {
        goto LABEL_33;
      }
    }

    OUTLINED_FUNCTION_78_6();
    v58();
    v59 = OUTLINED_FUNCTION_25_15();
    v60(v59);
    OUTLINED_FUNCTION_81_5();
    OUTLINED_FUNCTION_92_2();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
    if (OUTLINED_FUNCTION_90_1(v61, v62, v61, &type metadata for MessageError) && *(v0 + 472) == 4)
    {
      OUTLINED_FUNCTION_110_1();

      if (qword_1EDC1E1A0 != -1)
      {
        OUTLINED_FUNCTION_0_26();
        swift_once();
      }

      v63 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v63, qword_1EDC2B208);
      v64 = sub_1BC8F7714();
      v65 = sub_1BC8F81E4();
      if (OUTLINED_FUNCTION_21(v65))
      {
        v66 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_81(v66);
        OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v67, v68, "Can't insert voicemails because storage is full!");
        OUTLINED_FUNCTION_18_12();
      }

LABEL_43:
      OUTLINED_FUNCTION_27_12();

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_69_4();

      __asm { BRAA            X1, X16 }
    }

    if (qword_1EDC1E1A0 == -1)
    {
      goto LABEL_47;
    }

    goto LABEL_55;
  }

LABEL_33:
  OUTLINED_FUNCTION_64_5();
  v54 = swift_task_alloc();
  *(v0 + 440) = v54;
  *v54 = v0;
  OUTLINED_FUNCTION_5_23(v54);
  OUTLINED_FUNCTION_69_4();

  return sub_1BC87BD2C(v55);
}

uint64_t sub_1BC8C352C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_27_12();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC8C35C4()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 448) = v0;

  OUTLINED_FUNCTION_102_1();

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC8C36E4()
{
  if (qword_1EDC1E1A0 != -1)
  {
LABEL_35:
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  __swift_project_value_buffer(v1, qword_1EDC2B208);

  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 424);
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_21_1();
    *v6 = 134349056;
    v7 = *(v5 + 16);

    *(v6 + 4) = v7;

    _os_log_impl(&dword_1BC7A3000, v2, v3, "Inserted messages: %{public}ld", v6, 0xCu);
    OUTLINED_FUNCTION_6();
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v8 = *(v0 + 416) + 1;
  if (v8 == *(v0 + 408))
  {

    goto LABEL_7;
  }

  v11 = *(v0 + 448);
  OUTLINED_FUNCTION_97_2(v8);
  if (v14)
  {
    __break(1u);
LABEL_37:
    OUTLINED_FUNCTION_0_26();
    swift_once();
LABEL_29:
    OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B208);
    v45 = v11;
    v46 = sub_1BC8F7714();
    v47 = sub_1BC8F81E4();

    if (os_log_type_enabled(v46, v47))
    {
      OUTLINED_FUNCTION_21_1();
      v48 = OUTLINED_FUNCTION_6_2();
      *v5 = 138543362;
      v49 = v11;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_124(v50);
      OUTLINED_FUNCTION_20_10(&dword_1BC7A3000, v51, v47, "Got an error while inserting messages: %{public}@");
      sub_1BC7E6180(v48, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_9_0();
    }

    v52 = swift_task_alloc();
    v53 = OUTLINED_FUNCTION_100_2(v52);
    *v53 = v54;
    OUTLINED_FUNCTION_1_27(v53);
    OUTLINED_FUNCTION_32_7();

    return sub_1BC8C787C();
  }

  v15 = *(v13 + 8 * v12 + 32);
  *(v0 + 424) = v15;
  v16 = *(v15 + 16);
  if (v16)
  {
    v56 = v1;
    *(v0 + 240) = MEMORY[0x1E69E7CC0];

    OUTLINED_FUNCTION_98_0();
    sub_1BC8F8684();
    type metadata accessor for Message(0);
    v57 = v16;
    v5 = 0;
    v17 = v15 + 32;
    v58 = v15;
    while (1)
    {
      if (v5 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_35;
      }

      v18 = *(v0 + 288);
      v19 = *(v0 + 296);
      sub_1BC7A792C(v17, v0 + 136);
      sub_1BC7A792C(v0 + 136, v0 + 176);
      v21 = *(v0 + 160);
      v20 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v21);
      (*(v20 + 72))(v21, v20);
      v22 = *(v0 + 160);
      v23 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v22);
      (*(v23 + 128))(v22, v23);
      sub_1BC7ED740(v18, v19);
      if (v11)
      {
        break;
      }

      ++v5;
      v24 = *(v0 + 288);
      v25 = *(v0 + 296);
      v26 = *(v0 + 272);
      v27 = *(v0 + 280);
      (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
      (*(v27 + 8))(v24, v26);
      v28 = OUTLINED_FUNCTION_80_5();
      __swift_storeEnumTagSinglePayload(v28, v29, v30, v26);
      sub_1BC7EA618((v0 + 176), v25);
      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      sub_1BC8F8654();
      sub_1BC8F8694();
      sub_1BC8F86A4();
      sub_1BC8F8664();
      v11 = 0;
      v17 += 40;
      v15 = v58;
      if (v57 == v5)
      {
        goto LABEL_18;
      }
    }

    OUTLINED_FUNCTION_78_6();
    v35();
    v36 = OUTLINED_FUNCTION_25_15();
    v37(v36);
    OUTLINED_FUNCTION_81_5();
    OUTLINED_FUNCTION_92_2();
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
    if (OUTLINED_FUNCTION_90_1(v38, v39, v38, &type metadata for MessageError) && *(v0 + 472) == 4)
    {
      OUTLINED_FUNCTION_110_1();

      if (qword_1EDC1E1A0 != -1)
      {
        OUTLINED_FUNCTION_0_26();
        swift_once();
      }

      OUTLINED_FUNCTION_37_0(v56, qword_1EDC2B208);
      v40 = sub_1BC8F7714();
      v41 = sub_1BC8F81E4();
      if (OUTLINED_FUNCTION_21(v41))
      {
        v42 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_81(v42);
        OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v43, v44, "Can't insert voicemails because storage is full!");
        OUTLINED_FUNCTION_18_12();
      }

LABEL_7:
      OUTLINED_FUNCTION_27_12();

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_32_7();

      __asm { BRAA            X1, X16 }
    }

    v2 = v56;
    if (qword_1EDC1E1A0 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

LABEL_18:
  OUTLINED_FUNCTION_64_5();
  v31 = swift_task_alloc();
  *(v0 + 440) = v31;
  *v31 = v0;
  OUTLINED_FUNCTION_5_23(v31);
  OUTLINED_FUNCTION_32_7();

  return sub_1BC87BD2C(v32);
}

uint64_t sub_1BC8C3CA0()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 448);
  *(v0 + 248) = v1;
  *(v0 + 456) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5E20, &unk_1BC902A40);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 472) == 4;
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    OUTLINED_FUNCTION_110_1();

    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    v15 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v15, qword_1EDC2B208);
    v16 = sub_1BC8F7714();
    v17 = sub_1BC8F81E4();
    if (OUTLINED_FUNCTION_21(v17))
    {
      v18 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v18);
      OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v19, v20, "Can't insert voicemails because storage is full!");
      OUTLINED_FUNCTION_18_12();
    }

    OUTLINED_FUNCTION_27_12();

    OUTLINED_FUNCTION_11();

    return v21();
  }

  else
  {

    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    v4 = sub_1BC8F7734();
    v5 = OUTLINED_FUNCTION_28_14(v4, qword_1EDC2B208);
    v6 = sub_1BC8F7714();
    sub_1BC8F81E4();
    OUTLINED_FUNCTION_138();
    if (OUTLINED_FUNCTION_137())
    {
      OUTLINED_FUNCTION_21_1();
      v7 = OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_67_2(5.8381e-34);
      v8 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_124(v8);
      OUTLINED_FUNCTION_17_14(&dword_1BC7A3000, v9, v10, "Got an error while inserting messages: %{public}@");
      sub_1BC7E6180(v7, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_9_0();
    }

    v11 = swift_task_alloc();
    v12 = OUTLINED_FUNCTION_100_2(v11);
    *v12 = v13;
    OUTLINED_FUNCTION_1_27(v12);

    return sub_1BC8C787C();
  }
}

uint64_t sub_1BC8C3F1C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC8C4020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_91();

  v17 = *(v15 + 416) + 1;
  if (v17 == *(v15 + 408))
  {

    OUTLINED_FUNCTION_27_12();

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_62_1();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
  }

  OUTLINED_FUNCTION_97_2(v17);
  if (v29)
  {
    goto LABEL_22;
  }

  v30 = *(v28 + 8 * v27 + 32);
  *(v15 + 424) = v30;
  v14 = *(v30 + 16);
  if (v14)
  {
    *(v15 + 240) = MEMORY[0x1E69E7CC0];

    sub_1BC8F8684();
    type metadata accessor for Message(0);
    v62 = v30;
    v16 = 0;
    v31 = v30 + 32;
    while (v16 < *(v30 + 16))
    {
      v32 = v14;
      v34 = *(v15 + 288);
      v33 = *(v15 + 296);
      sub_1BC7A792C(v31, v15 + 136);
      sub_1BC7A792C(v15 + 136, v15 + 176);
      v36 = *(v15 + 160);
      v35 = *(v15 + 168);
      __swift_project_boxed_opaque_existential_1((v15 + 136), v36);
      (*(v35 + 72))(v36, v35);
      v37 = *(v15 + 160);
      v38 = *(v15 + 168);
      __swift_project_boxed_opaque_existential_1((v15 + 136), v37);
      (*(v38 + 128))(v37, v38);
      sub_1BC7ED740(v34, v33);
      v16 = (v16 + 1);
      v40 = *(v15 + 288);
      v39 = *(v15 + 296);
      v41 = *(v15 + 272);
      v42 = *(v15 + 280);
      (*(*(v15 + 328) + 8))(*(v15 + 336), *(v15 + 320));
      (*(v42 + 8))(v40, v41);
      v43 = OUTLINED_FUNCTION_80_5();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v41);
      sub_1BC7EA618((v15 + 176), v39);
      __swift_destroy_boxed_opaque_existential_1((v15 + 136));
      sub_1BC8F8654();
      OUTLINED_FUNCTION_98_0();
      sub_1BC8F8694();
      OUTLINED_FUNCTION_98_0();
      sub_1BC8F86A4();
      sub_1BC8F8664();
      v31 += 40;
      v14 = v32;
      v46 = v32 == v16;
      v30 = v62;
      if (v46)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    OUTLINED_FUNCTION_0_26();
    swift_once();
    v50 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v50, qword_1EDC2B208);
    v51 = v14;
    v52 = sub_1BC8F7714();
    v53 = sub_1BC8F81E4();

    if (os_log_type_enabled(v52, v53))
    {
      OUTLINED_FUNCTION_21_1();
      v54 = OUTLINED_FUNCTION_6_2();
      *v16 = 138543362;
      v55 = v14;
      v56 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_124(v56);
      OUTLINED_FUNCTION_20_10(&dword_1BC7A3000, v57, v53, "Got an error while inserting messages: %{public}@");
      sub_1BC7E6180(v54, &unk_1EBCF5DB0, &unk_1BC900410);
      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_9_0();
    }

    v58 = swift_task_alloc();
    v59 = OUTLINED_FUNCTION_100_2(v58);
    *v59 = v60;
    OUTLINED_FUNCTION_1_27(v59);
    OUTLINED_FUNCTION_62_1();

    return sub_1BC8C787C();
  }

LABEL_13:
  OUTLINED_FUNCTION_64_5();
  v47 = swift_task_alloc();
  *(v15 + 440) = v47;
  *v47 = v15;
  OUTLINED_FUNCTION_5_23(v47);
  OUTLINED_FUNCTION_62_1();

  return sub_1BC87BD2C(v48);
}

uint64_t sub_1BC8C44F0(uint64_t a1, char a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  v8 = OUTLINED_FUNCTION_25(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_9();
  v9 = sub_1BC8F7FC4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a3;
  *(v10 + 40) = a1;
  *(v10 + 48) = a2;

  sub_1BC8333D4();
}

uint64_t sub_1BC8C45E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = swift_task_alloc();
  *(v6 + 16) = v7;
  *v7 = v6;
  v7[1] = sub_1BC8C4694;

  return sub_1BC8C48D8();
}

uint64_t sub_1BC8C4694()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t sub_1BC8C47A8()
{
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  v2 = OUTLINED_FUNCTION_28_14(v1, qword_1EDC2B208);
  v3 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  v4 = OUTLINED_FUNCTION_137();
  v5 = *(v0 + 24);
  if (v4)
  {
    OUTLINED_FUNCTION_21_1();
    v6 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v7);
    OUTLINED_FUNCTION_17_14(&dword_1BC7A3000, v8, v9, "Failed to update voicemails from notification: %{public}@");
    sub_1BC7E6180(v6, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();

  return v10();
}

uint64_t sub_1BC8C48D8()
{
  OUTLINED_FUNCTION_5();
  *(v1 + 312) = v2;
  *(v1 + 176) = v3;
  *(v1 + 184) = v0;
  v4 = type metadata accessor for VoicemailUpdate(0);
  *(v1 + 192) = v4;
  OUTLINED_FUNCTION_26(v4);
  *(v1 + 200) = v5;
  *(v1 + 208) = OUTLINED_FUNCTION_47_3();
  Request = type metadata accessor for MessageStoreFetchRequest(0);
  *(v1 + 216) = Request;
  OUTLINED_FUNCTION_25(Request);
  *(v1 + 224) = OUTLINED_FUNCTION_47_3();
  v7 = sub_1BC8F7264();
  *(v1 + 232) = v7;
  OUTLINED_FUNCTION_26(v7);
  *(v1 + 240) = v8;
  *(v1 + 248) = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC8C49F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_91();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = qword_1EDC1E000;
  if (*(v22 + 312))
  {
    if (qword_1EDC1E1A0 != -1)
    {
      goto LABEL_47;
    }

    while (1)
    {
      v26 = sub_1BC8F7734();
      OUTLINED_FUNCTION_37_0(v26, qword_1EDC2B208);
      v27 = sub_1BC8F7714();
      v28 = sub_1BC8F8204();
      if (OUTLINED_FUNCTION_21(v28))
      {
        v29 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_81(v29);
        OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v30, v31, "Not comparing voicemails to update because this came from the diff");
        OUTLINED_FUNCTION_18_12();
      }

      v32 = *(v22 + 176);
      v33 = *(v32 + 16);

      if (!v33)
      {
        break;
      }

      a9 = v26;
      v34 = *(v22 + 200);
      a10 = MEMORY[0x1E69E7CC0];
      v35 = OUTLINED_FUNCTION_88_4();
      sub_1BC7DDE04(v35, v33, 0);
      v36 = 0;
      v37 = a10;
      v38 = v32 + 32;
      while (v36 < *(v32 + 16))
      {
        v39 = *(v22 + 208);
        sub_1BC7A792C(v38, v22 + 136);
        sub_1BC8C8870((v22 + 136), v39);
        __swift_destroy_boxed_opaque_existential_1((v22 + 136));
        a10 = v37;
        v25 = v37[2];
        v40 = v37[3];
        if (v25 >= v40 >> 1)
        {
          v43 = OUTLINED_FUNCTION_37(v40);
          sub_1BC7DDE04(v43, v25 + 1, 1);
          v37 = a10;
        }

        ++v36;
        v37[2] = v25 + 1;
        OUTLINED_FUNCTION_76_6();
        sub_1BC880FD4(v42, v41 + *(v34 + 72) * v25);
        v38 += 40;
        if (v33 == v36)
        {

          v25 = qword_1EDC1E000;
          v26 = a9;
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_47:
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    v37 = MEMORY[0x1E69E7CC0];
LABEL_33:
    *(v22 + 288) = v37;
    if (*(v25 + 416) != -1)
    {
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    OUTLINED_FUNCTION_28_14(v26, qword_1EDC2B208);

    v81 = sub_1BC8F7714();
    v82 = sub_1BC8F8204();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = *(v22 + 192);
      OUTLINED_FUNCTION_21_1();
      v84 = OUTLINED_FUNCTION_5_12();
      a10 = v84;
      *v32 = 136446210;
      v85 = MEMORY[0x1BFB29280](v37, v83);
      v87 = sub_1BC7A9A4C(v85, v86, &a10);

      *(v32 + 4) = v87;
      OUTLINED_FUNCTION_1_13(&dword_1BC7A3000, v88, v89, "Updating the store with messageUpdates: %{public}s");
      __swift_destroy_boxed_opaque_existential_1(v84);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_19_0();
    }

    if (v37[2])
    {
      v90 = swift_task_alloc();
      *(v22 + 296) = v90;
      *v90 = v22;
      OUTLINED_FUNCTION_37_12(v90);
      OUTLINED_FUNCTION_62_1();

      return sub_1BC8C8D50(v91);
    }

    else
    {

      v93 = sub_1BC8F7714();
      v94 = sub_1BC8F8204();
      if (OUTLINED_FUNCTION_21(v94))
      {
        v95 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_81(v95);
        OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v96, v97, "No message updates to perform");
        OUTLINED_FUNCTION_18_12();
      }

      OUTLINED_FUNCTION_93_0();

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_62_1();

      return v99(v98, v99, v100, v101, v102, v103, v104, v105, a9, a10, a11, a12, a13, a14);
    }
  }

  else
  {
    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    v44 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v44, qword_1EDC2B208);
    v45 = sub_1BC8F7714();
    v46 = sub_1BC8F8204();
    if (OUTLINED_FUNCTION_21(v46))
    {
      v47 = OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_81(v47);
      OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v48, v49, "Comparing voicemails to update");
      OUTLINED_FUNCTION_18_12();
    }

    v50 = *(v22 + 176);

    v51 = *(v50 + 16);
    *(v22 + 256) = v51;
    v52 = MEMORY[0x1E69E7CC0];
    if (v51)
    {
      v53 = *(v22 + 176);
      a10 = MEMORY[0x1E69E7CC0];
      v54 = OUTLINED_FUNCTION_88_4();
      sub_1BC7DDB5C(v54, v51, 0);
      v55 = a10;
      v56 = v53 + 32;
      do
      {
        sub_1BC7A792C(v56, v22 + 16);
        __swift_project_boxed_opaque_existential_1((v22 + 16), *(v22 + 40));
        v57 = OUTLINED_FUNCTION_20_14();
        v58(v57);
        __swift_destroy_boxed_opaque_existential_1((v22 + 16));
        a10 = v55;
        v60 = v55[2];
        v59 = v55[3];
        if (v60 >= v59 >> 1)
        {
          v63 = OUTLINED_FUNCTION_37(v59);
          sub_1BC7DDB5C(v63, v60 + 1, 1);
          v55 = a10;
        }

        v61 = OUTLINED_FUNCTION_57_4();
        v62(v61);
        v56 += 40;
        --v51;
      }

      while (v51);
    }

    else
    {
      v55 = MEMORY[0x1E69E7CC0];
    }

    sub_1BC80FA88(20, v55);
    v65 = v64;

    v66 = *(v65 + 16);
    if (v66)
    {
      a10 = v52;
      v67 = OUTLINED_FUNCTION_88_4();
      sub_1BC7DDB1C(v67, v66, 0);
      v68 = a10;
      do
      {
        v69 = *(v65 + 32);
        OUTLINED_FUNCTION_21_4();
        *(swift_allocObject() + 16) = v69;
        a10 = v68;
        v71 = v68[2];
        v70 = v68[3];

        if (v71 >= v70 >> 1)
        {
          sub_1BC7DDB1C((v70 > 1), v71 + 1, 1);
          v68 = a10;
        }

        OUTLINED_FUNCTION_73_7();
      }

      while (!v72);
    }

    __swift_project_boxed_opaque_existential_1((*(v22 + 184) + 64), *(*(v22 + 184) + 88));
    OUTLINED_FUNCTION_21_4();
    v73 = swift_allocObject();
    OUTLINED_FUNCTION_108_2(v73);
    OUTLINED_FUNCTION_61_4();
    v74 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
    OUTLINED_FUNCTION_50_7(v74, v75);
    v76 = swift_task_alloc();
    v77 = OUTLINED_FUNCTION_101_3(v76);
    *v77 = v78;
    v77[1] = sub_1BC8C5024;
    OUTLINED_FUNCTION_28_9(*(v22 + 224));
    OUTLINED_FUNCTION_62_1();

    return sub_1BC7BED60();
  }
}

uint64_t sub_1BC8C5024()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_10_0();
  *v5 = v4;
  *(v7 + 272) = v6;
  *(v7 + 280) = v0;

  OUTLINED_FUNCTION_102_1();
  sub_1BC7ADC24(*(v8 + 224));
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1BC8C5144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_91();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = 0;
  v26 = *(v22 + 176) + 32;
  v27 = *(v22 + 280);
  v28 = MEMORY[0x1E69E7CC0];
  while (v25 != *(v22 + 256))
  {
    v29 = *(v22 + 272);
    sub_1BC7A792C(v26, v22 + 56);
    v30 = swift_task_alloc();
    *(v30 + 16) = v22 + 56;
    sub_1BC8D6128(sub_1BC8CB0A8, v30, v29);
    v32 = v31;

    if (v32 && (v33 = sub_1BC7EAD54((v22 + 56)), v32, !v33))
    {
      sub_1BC7CF5EC((v22 + 56), v22 + 96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a10 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = OUTLINED_FUNCTION_88_4();
        sub_1BC7DDDE4(v35, v36, 1);
        v28 = a10;
      }

      v38 = v28[2];
      v37 = v28[3];
      if (v38 >= v37 >> 1)
      {
        v44 = OUTLINED_FUNCTION_37(v37);
        sub_1BC7DDDE4(v44, v38 + 1, 1);
      }

      v39 = *(v22 + 120);
      a9 = *(v22 + 128);
      v40 = __swift_mutable_project_boxed_opaque_existential_1(v22 + 96, v39);
      OUTLINED_FUNCTION_103_1();
      v42 = v41;
      v43 = OUTLINED_FUNCTION_47_3();
      (*(v42 + 16))(v43, v40, v39);
      sub_1BC8F5354(v38, v43, &a10, v39, a9);
      __swift_destroy_boxed_opaque_existential_1((v22 + 96));

      v28 = a10;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1((v22 + 56));
    }

    v26 += 40;
    ++v25;
  }

  v45 = v28[2];
  if (v45)
  {
    v46 = *(v22 + 200);
    a10 = MEMORY[0x1E69E7CC0];
    v47 = OUTLINED_FUNCTION_88_4();
    sub_1BC7DDE04(v47, v45, 0);
    v48 = 0;
    v49 = a10;
    v50 = (v28 + 4);
    while (1)
    {
      if (v48 >= v28[2])
      {
        __break(1u);
        goto LABEL_37;
      }

      v51 = *(v22 + 208);
      sub_1BC7A792C(v50, v22 + 136);
      sub_1BC8C8870((v22 + 136), v51);
      __swift_destroy_boxed_opaque_existential_1((v22 + 136));
      if (v27)
      {
        break;
      }

      a10 = v49;
      v53 = v49[2];
      v52 = v49[3];
      if (v53 >= v52 >> 1)
      {
        v56 = OUTLINED_FUNCTION_37(v52);
        sub_1BC7DDE04(v56, v53 + 1, 1);
        v49 = a10;
      }

      ++v48;
      v49[2] = v53 + 1;
      OUTLINED_FUNCTION_76_6();
      sub_1BC880FD4(v55, v54 + *(v46 + 72) * v53);
      v27 = 0;
      v50 += 40;
      if (v45 == v48)
      {

        goto LABEL_24;
      }
    }

    OUTLINED_FUNCTION_62_1();
  }

  else
  {

    v49 = MEMORY[0x1E69E7CC0];
LABEL_24:
    *(v22 + 288) = v49;
    if (qword_1EDC1E1A0 != -1)
    {
LABEL_37:
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    v59 = sub_1BC8F7734();
    OUTLINED_FUNCTION_28_14(v59, qword_1EDC2B208);

    v60 = sub_1BC8F7714();
    v61 = sub_1BC8F8204();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = *(v22 + 192);
      OUTLINED_FUNCTION_21_1();
      v63 = OUTLINED_FUNCTION_5_12();
      a10 = v63;
      *v45 = 136446210;
      v64 = MEMORY[0x1BFB29280](v49, v62);
      v66 = sub_1BC7A9A4C(v64, v65, &a10);

      *(v45 + 4) = v66;
      OUTLINED_FUNCTION_1_13(&dword_1BC7A3000, v67, v68, "Updating the store with messageUpdates: %{public}s");
      __swift_destroy_boxed_opaque_existential_1(v63);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_19_0();
    }

    if (v49[2])
    {
      v69 = swift_task_alloc();
      *(v22 + 296) = v69;
      *v69 = v22;
      OUTLINED_FUNCTION_37_12(v69);
      OUTLINED_FUNCTION_62_1();

      return sub_1BC8C8D50(v70);
    }

    else
    {

      v72 = sub_1BC8F7714();
      v73 = sub_1BC8F8204();
      if (OUTLINED_FUNCTION_21(v73))
      {
        v74 = OUTLINED_FUNCTION_36();
        OUTLINED_FUNCTION_81(v74);
        OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v75, v76, "No message updates to perform");
        OUTLINED_FUNCTION_18_12();
      }

      OUTLINED_FUNCTION_93_0();

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_62_1();

      return v78(v77, v78, v79, v80, v81, v82, v83, v84, a9, a10, a11, a12, a13, a14);
    }
  }
}

uint64_t sub_1BC8C55D8()
{
  OUTLINED_FUNCTION_71();
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v0 = sub_1BC8F7734();
  v1 = OUTLINED_FUNCTION_28_14(v0, qword_1EDC2B208);
  v2 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  if (OUTLINED_FUNCTION_137())
  {
    OUTLINED_FUNCTION_21_1();
    v3 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v4);
    OUTLINED_FUNCTION_17_14(&dword_1BC7A3000, v5, v6, "Got an error while performing update: %{public}@");
    sub_1BC7E6180(v3, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  swift_willThrow();

  OUTLINED_FUNCTION_27();

  return v7();
}

uint64_t sub_1BC8C5724()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8C581C()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_93_0();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_1BC8C5888()
{
  OUTLINED_FUNCTION_71();

  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v0 = sub_1BC8F7734();
  v1 = OUTLINED_FUNCTION_28_14(v0, qword_1EDC2B208);
  v2 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  if (OUTLINED_FUNCTION_137())
  {
    OUTLINED_FUNCTION_21_1();
    v3 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v4);
    OUTLINED_FUNCTION_17_14(&dword_1BC7A3000, v5, v6, "Got an error while performing update: %{public}@");
    sub_1BC7E6180(v3, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  swift_willThrow();

  OUTLINED_FUNCTION_27();

  return v7();
}

uint64_t sub_1BC8C59DC()
{
  OUTLINED_FUNCTION_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC7B0168;

  return sub_1BC8C5A68();
}

uint64_t sub_1BC8C5A88()
{
  OUTLINED_FUNCTION_32();
  v1 = type metadata accessor for OSTransaction();

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1BC8C5B60;
  v3 = OUTLINED_FUNCTION_28_9("com.apple.facetimemessagestored.voicemailSetup");

  return sub_1BC8D3BF4(v3, 46, 2, v1, v4);
}

void sub_1BC8C5B60()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v2 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_27();

    v4();
  }
}

uint64_t sub_1BC8C5C68()
{
  OUTLINED_FUNCTION_5();
  v0[15] = v1;
  v2 = sub_1BC8F76C4();
  v0[16] = v2;
  OUTLINED_FUNCTION_26(v2);
  v0[17] = v3;
  v0[18] = OUTLINED_FUNCTION_47_3();
  Request = type metadata accessor for MessageStoreFetchRequest(0);
  v0[19] = Request;
  OUTLINED_FUNCTION_25(Request);
  v0[20] = OUTLINED_FUNCTION_47_3();
  v5 = sub_1BC8F7684();
  v0[21] = v5;
  OUTLINED_FUNCTION_26(v5);
  v0[22] = v6;
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8C5DA0()
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_71();
  if (qword_1EDC1DF68 != -1)
  {
    swift_once();
  }

  v1 = sub_1BC8F76B4();
  v0[26] = OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B1B8);
  sub_1BC8F76A4();
  sub_1BC8F7664();
  v2 = sub_1BC8F76A4();
  v3 = sub_1BC8F82D4();
  if (sub_1BC8F83D4())
  {
    v4 = OUTLINED_FUNCTION_36();
    *v4 = 0;
    v5 = sub_1BC8F7674();
    _os_signpost_emit_with_name_impl(&dword_1BC7A3000, v2, v3, v5, "Voicemail Diff Start", "", v4, 2u);
    OUTLINED_FUNCTION_9_0();
  }

  v7 = v0[24];
  v6 = v0[25];
  v8 = v0[21];
  v9 = v0[22];
  v11 = v0[19];
  v10 = v0[20];
  v12 = v0[15];

  (*(v9 + 16))(v7, v6, v8);
  sub_1BC8F76F4();
  swift_allocObject();
  v0[27] = sub_1BC8F76E4();
  OUTLINED_FUNCTION_21_4();
  v13 = swift_allocObject();
  v0[28] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1BC8FEAA0;
  OUTLINED_FUNCTION_21_4();
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_1F3B36CB8;
  *(v14 + 32) = v15 | 0x4000000000000000;
  OUTLINED_FUNCTION_21_4();
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1F3B36CE0;
  *(v14 + 40) = v16 | 0x6000000000000000;
  *(v13 + 16) = v14;

  sub_1BC8F7254();
  *(v10 + v11[5]) = v13 | 0xC000000000000000;
  *(v10 + v11[6]) = 266;
  *(v10 + v11[7]) = 2;
  v17 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
  v18 = (v10 + v11[8]);
  *v18 = v17;
  v18[1] = v19;
  *(v10 + v11[9]) = 0x7FFFFFFFFFFFFFFFLL;
  *(v10 + v11[10]) = 0;
  __swift_project_boxed_opaque_existential_1((v12 + 64), *(v12 + 88));
  v20 = swift_task_alloc();
  v0[29] = v20;
  *v20 = v0;
  v20[1] = sub_1BC8C605C;
  OUTLINED_FUNCTION_28_9(v0[20]);
  OUTLINED_FUNCTION_190();

  return sub_1BC7BED60();
}

uint64_t sub_1BC8C605C()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 240) = v4;
  *(v2 + 248) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC8C615C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_71();
  v11 = v10[15];
  swift_beginAccess();
  result = sub_1BC8CB038(v11 + 104, (v10 + 2));
  v13 = v10[5];
  if (!v13)
  {
    __break(1u);
    goto LABEL_19;
  }

  v14 = v10[30];
  __swift_project_boxed_opaque_existential_1(v10 + 2, v13);
  v15 = sub_1BC8D6308(v14);
  v10[32] = v15;
  v10[33] = v16;
  __swift_destroy_boxed_opaque_existential_1(v10 + 2);
  result = sub_1BC8CB038(v11 + 104, (v10 + 7));
  if (!v10[10])
  {
LABEL_19:
    __break(1u);
    return result;
  }

  __swift_project_boxed_opaque_existential_1(v10 + 7, v10[10]);
  sub_1BC8D7364();
  __swift_destroy_boxed_opaque_existential_1(v10 + 7);
  if (*(v15 + 16))
  {
    v17 = swift_task_alloc();
    v10[34] = v17;
    *v17 = v10;
    v17[1] = sub_1BC8C6638;
    OUTLINED_FUNCTION_190();

    return sub_1BC8C26F4();
  }

  else
  {

    if (*(v10[33] + 16))
    {
      v19 = swift_task_alloc();
      v10[36] = v19;
      *v19 = v10;
      OUTLINED_FUNCTION_33_14(v19);
      OUTLINED_FUNCTION_190();

      return sub_1BC8C48D8();
    }

    else
    {
      v21 = v10[28];
      sub_1BC7ADC24(v10[20]);

      OUTLINED_FUNCTION_89_1(v22);
      OUTLINED_FUNCTION_54_9();
      sub_1BC8F82C4();
      if (OUTLINED_FUNCTION_96_1())
      {
        OUTLINED_FUNCTION_26_12();
        sub_1BC8F7704();

        v23 = OUTLINED_FUNCTION_23_14();
        if (v24(v23) != *MEMORY[0x1E69E93E8])
        {
          v25 = OUTLINED_FUNCTION_22_13();
          v26(v25);
        }

        v27 = OUTLINED_FUNCTION_53_8();
        v28 = OUTLINED_FUNCTION_94_1(v27);
        OUTLINED_FUNCTION_14_15(&dword_1BC7A3000, v29, v30, v28, "Voicemail Diff End");
        OUTLINED_FUNCTION_19_0();
      }

      OUTLINED_FUNCTION_12_17();

      v31 = OUTLINED_FUNCTION_21_15();
      (v21)(v31);
      v32 = OUTLINED_FUNCTION_20_5();
      (v21)(v32);

      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_190();

      return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
    }
  }
}

uint64_t sub_1BC8C6420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_71();

  v11 = *(v10 + 248);
  sub_1BC7ADC24(*(v10 + 160));
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v12 = sub_1BC8F7734();
  v13 = OUTLINED_FUNCTION_28_14(v12, qword_1EDC2B208);
  v14 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  if (OUTLINED_FUNCTION_137())
  {
    OUTLINED_FUNCTION_21_1();
    v15 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v16);
    OUTLINED_FUNCTION_17_14(&dword_1BC7A3000, v17, v18, "Failed to fetch messages for voicemail diff. %{public}@");
    sub_1BC7E6180(v15, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_89_1(v19);
  OUTLINED_FUNCTION_54_9();
  sub_1BC8F82C4();
  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_26_12();
    sub_1BC8F7704();

    v20 = OUTLINED_FUNCTION_23_14();
    if (v21(v20) != *MEMORY[0x1E69E93E8])
    {
      v22 = OUTLINED_FUNCTION_22_13();
      v23(v22);
    }

    v24 = OUTLINED_FUNCTION_53_8();
    v25 = OUTLINED_FUNCTION_94_1(v24);
    OUTLINED_FUNCTION_14_15(&dword_1BC7A3000, v26, v27, v25, "Voicemail Diff End");
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_12_17();

  v28 = OUTLINED_FUNCTION_21_15();
  (v11)(v28);
  v29 = OUTLINED_FUNCTION_20_5();
  (v11)(v29);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_190();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t sub_1BC8C6638()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_3();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v3 + 280) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8C674C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_71();
  if (*(v10[33] + 16))
  {
    v11 = swift_task_alloc();
    v10[36] = v11;
    *v11 = v10;
    OUTLINED_FUNCTION_33_14(v11);
    OUTLINED_FUNCTION_190();

    return sub_1BC8C48D8();
  }

  else
  {
    v14 = v10[28];
    sub_1BC7ADC24(v10[20]);

    OUTLINED_FUNCTION_89_1(v15);
    OUTLINED_FUNCTION_54_9();
    sub_1BC8F82C4();
    if (OUTLINED_FUNCTION_96_1())
    {
      OUTLINED_FUNCTION_26_12();
      sub_1BC8F7704();

      v16 = OUTLINED_FUNCTION_23_14();
      if (v17(v16) != *MEMORY[0x1E69E93E8])
      {
        v18 = OUTLINED_FUNCTION_22_13();
        v19(v18);
      }

      v20 = OUTLINED_FUNCTION_53_8();
      v21 = OUTLINED_FUNCTION_94_1(v20);
      OUTLINED_FUNCTION_14_15(&dword_1BC7A3000, v22, v23, v21, "Voicemail Diff End");
      OUTLINED_FUNCTION_19_0();
    }

    OUTLINED_FUNCTION_12_17();

    v24 = OUTLINED_FUNCTION_21_15();
    (v14)(v24);
    v25 = OUTLINED_FUNCTION_20_5();
    (v14)(v25);

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_190();

    return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
  }
}

uint64_t sub_1BC8C68FC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 296) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8C6A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_71();
  v12 = *(v11 + 160);

  v13 = sub_1BC7ADC24(v12);
  OUTLINED_FUNCTION_89_1(v13);
  OUTLINED_FUNCTION_54_9();
  sub_1BC8F82C4();
  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_26_12();
    sub_1BC8F7704();

    v14 = OUTLINED_FUNCTION_23_14();
    if (v15(v14) != *MEMORY[0x1E69E93E8])
    {
      v16 = OUTLINED_FUNCTION_22_13();
      v17(v16);
    }

    v18 = OUTLINED_FUNCTION_53_8();
    v19 = OUTLINED_FUNCTION_94_1(v18);
    OUTLINED_FUNCTION_14_15(&dword_1BC7A3000, v20, v21, v19, "Voicemail Diff End");
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_12_17();

  v22 = OUTLINED_FUNCTION_21_15();
  (v10)(v22);
  v23 = OUTLINED_FUNCTION_20_5();
  (v10)(v23);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_190();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

uint64_t sub_1BC8C6B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_71();

  v11 = *(v10 + 280);
  sub_1BC7ADC24(*(v10 + 160));
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v12 = sub_1BC8F7734();
  v13 = OUTLINED_FUNCTION_28_14(v12, qword_1EDC2B208);
  v14 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  if (OUTLINED_FUNCTION_137())
  {
    OUTLINED_FUNCTION_21_1();
    v15 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v16);
    OUTLINED_FUNCTION_17_14(&dword_1BC7A3000, v17, v18, "Failed to fetch messages for voicemail diff. %{public}@");
    sub_1BC7E6180(v15, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_89_1(v19);
  OUTLINED_FUNCTION_54_9();
  sub_1BC8F82C4();
  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_26_12();
    sub_1BC8F7704();

    v20 = OUTLINED_FUNCTION_23_14();
    if (v21(v20) != *MEMORY[0x1E69E93E8])
    {
      v22 = OUTLINED_FUNCTION_22_13();
      v23(v22);
    }

    v24 = OUTLINED_FUNCTION_53_8();
    v25 = OUTLINED_FUNCTION_94_1(v24);
    OUTLINED_FUNCTION_14_15(&dword_1BC7A3000, v26, v27, v25, "Voicemail Diff End");
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_12_17();

  v28 = OUTLINED_FUNCTION_21_15();
  (v11)(v28);
  v29 = OUTLINED_FUNCTION_20_5();
  (v11)(v29);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_190();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t sub_1BC8C6D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_75_4();
  OUTLINED_FUNCTION_71();

  v11 = *(v10 + 296);
  sub_1BC7ADC24(*(v10 + 160));
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v12 = sub_1BC8F7734();
  v13 = OUTLINED_FUNCTION_28_14(v12, qword_1EDC2B208);
  v14 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  if (OUTLINED_FUNCTION_137())
  {
    OUTLINED_FUNCTION_21_1();
    v15 = OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_67_2(5.8381e-34);
    v16 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v16);
    OUTLINED_FUNCTION_17_14(&dword_1BC7A3000, v17, v18, "Failed to fetch messages for voicemail diff. %{public}@");
    sub_1BC7E6180(v15, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_9_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_89_1(v19);
  OUTLINED_FUNCTION_54_9();
  sub_1BC8F82C4();
  if (OUTLINED_FUNCTION_96_1())
  {
    OUTLINED_FUNCTION_26_12();
    sub_1BC8F7704();

    v20 = OUTLINED_FUNCTION_23_14();
    if (v21(v20) != *MEMORY[0x1E69E93E8])
    {
      v22 = OUTLINED_FUNCTION_22_13();
      v23(v22);
    }

    v24 = OUTLINED_FUNCTION_53_8();
    v25 = OUTLINED_FUNCTION_94_1(v24);
    OUTLINED_FUNCTION_14_15(&dword_1BC7A3000, v26, v27, v25, "Voicemail Diff End");
    OUTLINED_FUNCTION_19_0();
  }

  OUTLINED_FUNCTION_12_17();

  v28 = OUTLINED_FUNCTION_21_15();
  (v11)(v28);
  v29 = OUTLINED_FUNCTION_20_5();
  (v11)(v29);

  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_190();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t sub_1BC8C6F90()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  sub_1BC7E6180(v0 + 104, &qword_1EBCF5B00, &qword_1BC9034D8);
  return v0;
}

uint64_t sub_1BC8C6FD8()
{
  sub_1BC8C6F90();

  return MEMORY[0x1EEE6BDC0](v0, 144, 7);
}

uint64_t sub_1BC8C7030(uint64_t a1)
{
  v4 = sub_1BC8F78B4();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_9();
  v8 = sub_1BC8F78E4();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v14 = v13 - v12;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = v1;
  v26 = sub_1BC8CB030;
  v27 = v15;
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_7_18(COERCE_DOUBLE(1107296256));
  v24 = v16;
  v25 = &block_descriptor_38;
  v17 = _Block_copy(aBlock);

  sub_1BC8F78D4();
  OUTLINED_FUNCTION_9_16();
  sub_1BC8CB0C8(v18, v19, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E58, &qword_1BC8FC3A0);
  v20 = sub_1BC7D9414();
  OUTLINED_FUNCTION_32_10(v20);
  v21 = OUTLINED_FUNCTION_77_5();
  MEMORY[0x1BFB296A0](v21);
  _Block_release(v17);
  (*(v6 + 8))(v2, v4);
  (*(v10 + 8))(v14, v8);
}

uint64_t sub_1BC8C729C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v32[1] = a2;
  sub_1BC8F78B4();
  OUTLINED_FUNCTION_0();
  v36 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_9();
  v35 = sub_1BC8F78E4();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v13 = v12 - v11;
  v14 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v20 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[2] = *(v4 + 16);
  (*(v16 + 16))(v20, a1, v14);
  v21 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  (*(v16 + 32))(v22 + v21, v20, v14);
  v41 = v33;
  v42 = v22;
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_7_18(COERCE_DOUBLE(1107296256));
  v39 = v23;
  v40 = v34;
  v24 = _Block_copy(aBlock);

  sub_1BC8F78D4();
  v37 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_9_16();
  sub_1BC8CB0C8(v25, v26, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E58, &qword_1BC8FC3A0);
  v27 = sub_1BC7D9414();
  OUTLINED_FUNCTION_32_10(v27);
  v28 = OUTLINED_FUNCTION_77_5();
  MEMORY[0x1BFB296A0](v28);
  _Block_release(v24);
  v29 = OUTLINED_FUNCTION_104_2();
  v30(v29);
  (*(v9 + 8))(v13, v35);
}

uint64_t sub_1BC8C75A8(uint64_t a1, int a2)
{
  v29 = a2;
  sub_1BC8F78B4();
  OUTLINED_FUNCTION_0();
  v33 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_16_9();
  sub_1BC8F78E4();
  OUTLINED_FUNCTION_0();
  v31 = v7;
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v10 = v9 - v8;
  v11 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v30 = *(v2 + 16);
  (*(v13 + 16))(&v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v11);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  (*(v13 + 32))(v18 + v17, &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v11);
  *(v18 + v17 + v15) = v29;
  v38 = sub_1BC8CAE70;
  v39 = v18;
  OUTLINED_FUNCTION_8_3();
  OUTLINED_FUNCTION_7_18(COERCE_DOUBLE(1107296256));
  v36 = v19;
  v37 = &block_descriptor_26;
  v20 = _Block_copy(aBlock);

  sub_1BC8F78D4();
  v34 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_9_16();
  sub_1BC8CB0C8(v21, v22, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF4E58, &qword_1BC8FC3A0);
  v23 = sub_1BC7D9414();
  OUTLINED_FUNCTION_32_10(v23);
  v24 = OUTLINED_FUNCTION_77_5();
  MEMORY[0x1BFB296A0](v24);
  _Block_release(v20);
  v25 = OUTLINED_FUNCTION_104_2();
  v26(v25);
  (*(v31 + 8))(v10, v32);
}

uint64_t sub_1BC8C787C()
{
  OUTLINED_FUNCTION_5();
  v1[17] = v2;
  v1[18] = v0;
  v3 = sub_1BC8F7264();
  v1[19] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[20] = v4;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = sub_1BC8F7014();
  v1[23] = v5;
  OUTLINED_FUNCTION_26(v5);
  v1[24] = v6;
  v1[25] = OUTLINED_FUNCTION_47_3();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  OUTLINED_FUNCTION_25(v7);
  v1[26] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1BC8C79B0()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  v0[27] = v2;
  if (!v2)
  {
LABEL_11:

    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_69_4();

    __asm { BRAA            X1, X16 }
  }

  v3 = type metadata accessor for Message(0);
  v4 = 0;
  v0[28] = v3;
  while (1)
  {
    v0[29] = v4;
    v6 = v0[25];
    v5 = v0[26];
    sub_1BC7A792C(v1 + 40 * v4 + 32, (v0 + 2));
    sub_1BC7A792C((v0 + 2), (v0 + 7));
    OUTLINED_FUNCTION_45_12();
    v7 = OUTLINED_FUNCTION_52_6();
    v8(v7);
    OUTLINED_FUNCTION_45_12();
    v9 = OUTLINED_FUNCTION_52_6();
    v10(v9);
    OUTLINED_FUNCTION_107_2();
    if (!v5)
    {
      break;
    }

    v11 = OUTLINED_FUNCTION_82_5();
    v45 = *(v12 + 8);
    v45(v11);
    v13 = OUTLINED_FUNCTION_25_15();
    v14(v13);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    v15 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v15, qword_1EDC2B208);
    sub_1BC7A792C((v0 + 2), (v0 + 12));
    v16 = sub_1BC8F7714();
    v17 = sub_1BC8F81F4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = v0[21];
      v44 = v0[19];
      v19 = OUTLINED_FUNCTION_21_1();
      v46 = swift_slowAlloc();
      *v19 = 136446210;
      v20 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      v21 = OUTLINED_FUNCTION_10_2();
      v22(v21, v20);
      OUTLINED_FUNCTION_2_26();
      sub_1BC8CB0C8(&qword_1EDC20FA0, v23, MEMORY[0x1E69695E0]);
      v24 = sub_1BC8F8A54();
      (v45)(v18, v44);
      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
      v25 = OUTLINED_FUNCTION_31_3();
      sub_1BC7A9A4C(v25, v26, v27);
      OUTLINED_FUNCTION_10_2();

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1BC7A3000, v16, v17, "Failed to insert message with UUID: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      OUTLINED_FUNCTION_9_0();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    }

    OUTLINED_FUNCTION_65_4();
    if (v28)
    {
      goto LABEL_11;
    }

    v4 = v0[29] + 1;
    v1 = v0[17];
  }

  v31 = OUTLINED_FUNCTION_13_18();
  v32(v31);
  v33 = OUTLINED_FUNCTION_55_4();
  v34(v33);
  v35 = OUTLINED_FUNCTION_48_10();
  OUTLINED_FUNCTION_66_4(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v36 = swift_allocObject();
  v0[32] = v36;
  OUTLINED_FUNCTION_79_4(v36, xmmword_1BC904010);
  v37 = v6;
  v38 = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_101_3(v38);
  *v39 = v40;
  OUTLINED_FUNCTION_6_21(v39);
  OUTLINED_FUNCTION_69_4();

  return sub_1BC87BD2C(v41);
}

uint64_t sub_1BC8C7D64()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_11_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 272) = v0;

  OUTLINED_FUNCTION_102_1();

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC8C7E84()
{
  if (qword_1EDC1E1A0 != -1)
  {
    OUTLINED_FUNCTION_0_26();
    swift_once();
  }

  v1 = v0[31];
  v50 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v50, qword_1EDC2B208);
  v2 = v1;
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();

  v5 = OUTLINED_FUNCTION_137();
  v6 = v0[31];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_21_1();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1BC7A3000, v3, v4, "Inserted message: %@", v7, 0xCu);
    sub_1BC7E6180(v8, &unk_1EBCF5DB0, &unk_1BC900410);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v9 = v3;
    v3 = v0[31];
  }

  for (i = v0[34]; ; i = 0)
  {
    OUTLINED_FUNCTION_65_4();
    if (v11)
    {

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_53();

      __asm { BRAA            X1, X16 }
    }

    v12 = v0[29];
    v0[29] = v12 + 1;
    v14 = v0[25];
    v13 = v0[26];
    OUTLINED_FUNCTION_91_2(v12);
    sub_1BC7A792C((v0 + 2), (v0 + 7));
    v15 = v0[5];
    v16 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v15);
    (*(v16 + 72))(v15, v16);
    v17 = v0[5];
    v18 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v17);
    (*(v18 + 128))(v17, v18);
    sub_1BC7ED740(v14, v13);
    if (!i)
    {
      break;
    }

    v19 = OUTLINED_FUNCTION_82_5();
    v51 = *(v20 + 8);
    v51(v19);
    v21 = OUTLINED_FUNCTION_25_15();
    v22(v21);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    OUTLINED_FUNCTION_37_0(v50, qword_1EDC2B208);
    sub_1BC7A792C((v0 + 2), (v0 + 12));
    v23 = sub_1BC8F7714();
    v24 = sub_1BC8F81F4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = v0[21];
      v49 = v0[19];
      OUTLINED_FUNCTION_21_1();
      v52 = OUTLINED_FUNCTION_5_12();
      *v13 = 136446210;
      v26 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      v27 = OUTLINED_FUNCTION_10_2();
      v28(v27, v26);
      OUTLINED_FUNCTION_2_26();
      sub_1BC8CB0C8(&qword_1EDC20FA0, v29, MEMORY[0x1E69695E0]);
      v9 = v49;
      v30 = sub_1BC8F8A54();
      (v51)(v25, v49);
      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
      v31 = OUTLINED_FUNCTION_31_3();
      sub_1BC7A9A4C(v31, v32, v33);
      OUTLINED_FUNCTION_10_2();

      *(v13 + 4) = v30;
      _os_log_impl(&dword_1BC7A3000, v23, v24, "Failed to insert message with UUID: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_19_0();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
    }
  }

  v36 = OUTLINED_FUNCTION_13_18();
  v37(v36);
  v38 = OUTLINED_FUNCTION_55_4();
  v39(v38);
  v40 = OUTLINED_FUNCTION_48_10();
  OUTLINED_FUNCTION_66_4(v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v41 = swift_allocObject();
  v0[32] = v41;
  OUTLINED_FUNCTION_79_4(v41, xmmword_1BC904010);
  v42 = v9;
  v43 = swift_task_alloc();
  v44 = OUTLINED_FUNCTION_101_3(v43);
  *v44 = v45;
  OUTLINED_FUNCTION_6_21(v44);
  OUTLINED_FUNCTION_53();

  return sub_1BC87BD2C(v46);
}

uint64_t sub_1BC8C8334()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 240);
  v3 = qword_1EDC2B208;
  while (1)
  {
    if (qword_1EDC1E1A0 != -1)
    {
      OUTLINED_FUNCTION_0_26();
      swift_once();
    }

    v4 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v4, v3);
    sub_1BC7A792C(v0 + 16, v0 + 96);
    v5 = sub_1BC8F7714();
    v6 = sub_1BC8F81F4();
    if (os_log_type_enabled(v5, v6))
    {
      v46 = v2;
      v7 = *(v0 + 168);
      v45 = *(v0 + 152);
      v8 = OUTLINED_FUNCTION_21_1();
      v47 = swift_slowAlloc();
      *v8 = 136446210;
      v9 = v3;
      v10 = *(v0 + 128);
      __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
      v11 = OUTLINED_FUNCTION_10_2();
      v12 = v10;
      v3 = v9;
      v13(v11, v12);
      OUTLINED_FUNCTION_2_26();
      sub_1BC8CB0C8(&qword_1EDC20FA0, v14, MEMORY[0x1E69695E0]);
      v15 = sub_1BC8F8A54();
      v46(v7, v45);
      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
      v16 = OUTLINED_FUNCTION_31_3();
      sub_1BC7A9A4C(v16, v17, v18);
      OUTLINED_FUNCTION_10_2();

      *(v8 + 4) = v15;
      _os_log_impl(&dword_1BC7A3000, v5, v6, "Failed to insert message with UUID: %{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1((v0 + 96));
    }

    OUTLINED_FUNCTION_65_4();
    if (v19)
    {

      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_53();

      __asm { BRAA            X1, X16 }
    }

    v20 = *(v0 + 232);
    *(v0 + 232) = v20 + 1;
    v21 = *(v0 + 200);
    v1 = *(v0 + 208);
    OUTLINED_FUNCTION_91_2(v20);
    sub_1BC7A792C(v0 + 16, v0 + 56);
    OUTLINED_FUNCTION_45_12();
    v22 = OUTLINED_FUNCTION_52_6();
    v23(v22);
    OUTLINED_FUNCTION_45_12();
    v24 = OUTLINED_FUNCTION_52_6();
    v25(v24);
    OUTLINED_FUNCTION_107_2();
    if (!v1)
    {
      break;
    }

    v26 = OUTLINED_FUNCTION_82_5();
    v2 = *(v27 + 8);
    (v2)(v26);
    v28 = OUTLINED_FUNCTION_25_15();
    v29(v28);
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  v32 = OUTLINED_FUNCTION_13_18();
  v33(v32);
  v34 = OUTLINED_FUNCTION_55_4();
  v35(v34);
  v36 = OUTLINED_FUNCTION_48_10();
  OUTLINED_FUNCTION_66_4(v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
  v37 = swift_allocObject();
  *(v0 + 256) = v37;
  OUTLINED_FUNCTION_79_4(v37, xmmword_1BC904010);
  v38 = v21;
  v39 = swift_task_alloc();
  v40 = OUTLINED_FUNCTION_101_3(v39);
  *v40 = v41;
  OUTLINED_FUNCTION_6_21(v40);
  OUTLINED_FUNCTION_53();

  return sub_1BC87BD2C(v42);
}

uint64_t sub_1BC8C86D4(uint64_t *a1, void *a2)
{
  v4 = sub_1BC8F7264();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v11 = *a1;
  v12 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  swift_beginAccess();
  (*(v5 + 16))(v10, v11 + v12, v4);
  v13 = a2[3];
  v14 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v13);
  (*(v14 + 128))(v13, v14);
  LOBYTE(a2) = sub_1BC8F7234();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  return a2 & 1;
}

uint64_t sub_1BC8C8870@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1BC8F7264();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1BC8F7014();
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v33 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v33 - v16;
  __swift_storeEnumTagSinglePayload(&v33 - v16, 1, 1, v6);
  v18 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  (*(v17 + 96))(v18, v17);
  if (__swift_getEnumTagSinglePayload(v15, 1, v6) == 1)
  {
    sub_1BC7E6180(v15, &qword_1EBCF5A20, &qword_1BC901BF0);
    v19 = v39;
    v20 = a1;
  }

  else
  {
    (*(v37 + 32))(v8, v15, v6);
    v21 = a1[3];
    v22 = a1[4];
    v34 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v21);
    (*(v22 + 128))(v21, v22);
    v23 = v38;
    sub_1BC7ED740(v8, v12);
    if (v23)
    {
      (*(v35 + 8))(v5, v36);
      (*(v37 + 8))(v8, v6);
      if (qword_1EDC1E1A0 != -1)
      {
        swift_once();
      }

      v24 = sub_1BC8F7734();
      __swift_project_value_buffer(v24, qword_1EDC2B208);
      v25 = v23;
      v26 = sub_1BC8F7714();
      v27 = sub_1BC8F81E4();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138543362;
        v30 = v23;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        *(v28 + 4) = v31;
        *v29 = v31;
        _os_log_impl(&dword_1BC7A3000, v26, v27, "Got an error while trying to copy the transcriptURL: %{public}@", v28, 0xCu);
        sub_1BC7E6180(v29, &unk_1EBCF5DB0, &unk_1BC900410);
        MEMORY[0x1BFB2AA50](v29, -1, -1);
        MEMORY[0x1BFB2AA50](v28, -1, -1);
      }

      else
      {
      }

      v20 = v34;
      v19 = v39;
    }

    else
    {
      (*(v35 + 8))(v5, v36);
      (*(v37 + 8))(v8, v6);
      v19 = v39;
      sub_1BC7E6180(v39, &qword_1EBCF5A20, &qword_1BC901BF0);
      __swift_storeEnumTagSinglePayload(v12, 0, 1, v6);
      sub_1BC805ABC(v12, v19);
      v20 = v34;
    }
  }

  sub_1BC7A792C(v20, v40);
  sub_1BC87CDD8(v40, v41);
  return sub_1BC7E6180(v19, &qword_1EBCF5A20, &qword_1BC901BF0);
}

uint64_t sub_1BC8C8D50(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  OUTLINED_FUNCTION_15();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1BC8C8D7C()
{
  OUTLINED_FUNCTION_5();
  if (*(v0[2] + 16))
  {
    __swift_project_boxed_opaque_existential_1((v0[3] + 64), *(v0[3] + 88));
    v1 = swift_task_alloc();
    v0[4] = v1;
    *v1 = v0;
    v1[1] = sub_1BC8ABC78;
    v2 = OUTLINED_FUNCTION_28_9(v0[2]);

    return sub_1BC87C39C(v2);
  }

  else
  {
    OUTLINED_FUNCTION_11();

    return v4();
  }
}

uint64_t sub_1BC8C8E54(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v43 = sub_1BC8F7264();
  v3 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDC1E1A0 != -1)
  {
    swift_once();
  }

  v6 = sub_1BC8F7734();
  __swift_project_value_buffer(v6, qword_1EDC2B208);

  v7 = sub_1BC8F7714();
  v8 = sub_1BC8F8204();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v47[0] = v10;
    *v9 = 136315138;
    *&v45 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
    v11 = sub_1BC8F7C94();
    v13 = sub_1BC7A9A4C(v11, v12, v47);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1BC7A3000, v7, v8, "Asked to perform update voicemails with messages: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFB2AA50](v10, -1, -1);
    MEMORY[0x1BFB2AA50](v9, -1, -1);
  }

  result = sub_1BC7C0454(a1);
  v40 = result;
  if (result)
  {
    if (v40 < 1)
    {
      __break(1u);
    }

    else
    {
      v15 = 0;
      v39 = a1 & 0xC000000000000001;
      v42 = (v3 + 16);
      v41 = (v3 + 8);
      v38 = a1;
      do
      {
        if (v39)
        {
          v16 = MEMORY[0x1BFB29A00](v15, a1);
        }

        else
        {
          v16 = *(a1 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
        swift_beginAccess();
        v19 = *v42;
        v20 = v43;
        (*v42)(v5, &v17[v18], v43);
        v21 = sub_1BC8C9418(v5, &v45);
        v22 = *v41;
        (*v41)(v5, v20, v21);
        if (v46)
        {
          sub_1BC7CF5EC(&v45, v47);
          v23 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
          swift_beginAccess();
          if (v17[v23] == 1)
          {
            v24 = v48;
            v25 = v49;
            __swift_project_boxed_opaque_existential_1(v47, v48);
            if (((*(v25 + 16))(v24, v25) & 1) == 0)
            {
              v26 = v43;
              v19(v5, &v17[v18], v43);
              sub_1BC8C729C(v5, &unk_1F3B3D908, sub_1BC8C9F80, &block_descriptor_8);
              (v22)(v5, v26);
            }
          }

          v27 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
          swift_beginAccess();
          v28 = *&v17[v27];
          if (v28 == 2)
          {
            v29 = v48;
            v30 = v49;
            __swift_project_boxed_opaque_existential_1(v47, v48);
            if ((*(v30 + 24))(v29, v30) == 1)
            {
              v31 = v43;
              v19(v5, &v17[v18], v43);
              sub_1BC8C729C(v5, &unk_1F3B3D958, sub_1BC8CAE40, &block_descriptor_14_0);
              (v22)(v5, v31);
            }

            v28 = *&v17[v27];
          }

          if (v28)
          {

            a1 = v38;
          }

          else
          {
            v32 = v48;
            v33 = v49;
            __swift_project_boxed_opaque_existential_1(v47, v48);
            v34 = (*(v33 + 24))(v32, v33);
            a1 = v38;
            if (v34 == 3)
            {
              v35 = &v17[v18];
              v36 = v43;
              v19(v5, v35, v43);
              sub_1BC8C729C(v5, &unk_1F3B3D9A8, sub_1BC8CAE58, &block_descriptor_20_1);

              (v22)(v5, v36);
            }

            else
            {
            }
          }

          result = __swift_destroy_boxed_opaque_existential_1(v47);
        }

        else
        {

          result = sub_1BC7E6180(&v45, &qword_1EBCF6780, &qword_1BC908A10);
        }

        ++v15;
      }

      while (v40 != v15);
    }
  }

  return result;
}

double sub_1BC8C9418@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v63 = a2;
  v5 = sub_1BC8F7264();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v57 - v10;
  if (qword_1EDC1E1A0 != -1)
  {
    swift_once();
  }

  v12 = sub_1BC8F7734();
  __swift_project_value_buffer(v12, qword_1EDC2B208);
  v59 = *(v6 + 16);
  v60 = v6 + 16;
  v59(v11, a1, v5);
  v13 = sub_1BC8F7714();
  v14 = sub_1BC8F8204();
  v15 = os_log_type_enabled(v13, v14);
  v61 = v6;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v57 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v58 = v9;
    v62 = v5;
    v19 = v18;
    *&v67[0] = v18;
    *v17 = 136446210;
    sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v20 = sub_1BC8F8A54();
    v21 = v3;
    v23 = v22;
    v24 = v11;
    v25 = *(v6 + 8);
    v25(v24, v62);
    v26 = sub_1BC7A9A4C(v20, v23, v67);
    v3 = v21;

    *(v17 + 4) = v26;
    _os_log_impl(&dword_1BC7A3000, v13, v14, "Getting voicemail for message: %{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v27 = v19;
    v5 = v62;
    v9 = v58;
    MEMORY[0x1BFB2AA50](v27, -1, -1);
    v28 = v17;
    a1 = v57;
    MEMORY[0x1BFB2AA50](v28, -1, -1);
  }

  else
  {

    v29 = v11;
    v25 = *(v6 + 8);
    v25(v29, v5);
  }

  v30 = v3[6];
  v31 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v30);
  (*(v31 + 56))(&v65, a1, v30, v31);
  if (v66)
  {
    sub_1BC7CF5EC(&v65, v67);
    sub_1BC7A792C(v67, &v65);
    v32 = sub_1BC8F7714();
    v33 = sub_1BC8F8204();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v64 = v35;
      *v34 = 136315138;
      v36 = v66;
      v37 = __swift_project_boxed_opaque_existential_1(&v65, v66);
      v38 = sub_1BC8F83F4();
      v39 = *(v38 - 8);
      MEMORY[0x1EEE9AC00](v38);
      v41 = &v57 - v40;
      (*(*(v36 - 8) + 16))(&v57 - v40, v37, v36);
      __swift_storeEnumTagSinglePayload(v41, 0, 1, v36);
      v42 = sub_1BC8073F0(v41, v36);
      v44 = v43;
      (*(v39 + 8))(v41, v38);
      __swift_destroy_boxed_opaque_existential_1(&v65);
      v45 = sub_1BC7A9A4C(v42, v44, &v64);

      *(v34 + 4) = v45;
      _os_log_impl(&dword_1BC7A3000, v32, v33, "Got voicemail: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x1BFB2AA50](v35, -1, -1);
      MEMORY[0x1BFB2AA50](v34, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v65);
    }

    sub_1BC7CF5EC(v67, v63);
  }

  else
  {
    sub_1BC7E6180(&v65, &qword_1EBCF6780, &qword_1BC908A10);
    v59(v9, a1, v5);
    v46 = sub_1BC8F7714();
    v47 = sub_1BC8F81E4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v67[0] = v49;
      *v48 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v50 = sub_1BC8F8A54();
      v51 = v9;
      v53 = v52;
      v25(v51, v5);
      v54 = sub_1BC7A9A4C(v50, v53, v67);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_1BC7A3000, v46, v47, "Couldn't find a voicemail for message: %{public}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      MEMORY[0x1BFB2AA50](v49, -1, -1);
      MEMORY[0x1BFB2AA50](v48, -1, -1);
    }

    else
    {

      v25(v9, v5);
    }

    v56 = v63;
    *(v63 + 32) = 0;
    result = 0.0;
    *v56 = 0u;
    v56[1] = 0u;
  }

  return result;
}

void sub_1BC8C9AC8(void *a1, uint64_t a2)
{
  v4 = sub_1BC8F7264();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  sub_1BC8C9418(a2, &v31);
  if (v32)
  {
    sub_1BC7CF5EC(&v31, v33);
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v11 = sub_1BC8F7734();
    __swift_project_value_buffer(v11, qword_1EDC2B208);
    (*(v5 + 16))(v8, a2, v4);
    v12 = sub_1BC8F7714();
    v13 = sub_1BC8F8204();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v31 = v15;
      *v14 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v16 = sub_1BC8F8A54();
      v18 = v17;
      (*(v5 + 8))(v8, v4);
      v19 = sub_1BC7A9A4C(v16, v18, &v31);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1BC7A3000, v12, v13, "Asked to perform mark as ready for voicemail with uuid: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFB2AA50](v15, -1, -1);
      MEMORY[0x1BFB2AA50](v14, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v29 = a1[6];
    v30 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, v29);
    (*(v30 + 72))(v33, v29, v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    sub_1BC7E6180(&v31, &qword_1EBCF6780, &qword_1BC908A10);
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v20 = sub_1BC8F7734();
    __swift_project_value_buffer(v20, qword_1EDC2B208);
    (*(v5 + 16))(v10, a2, v4);
    v21 = sub_1BC8F7714();
    v22 = sub_1BC8F81E4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v23 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v25 = sub_1BC8F8A54();
      v27 = v26;
      (*(v5 + 8))(v10, v4);
      v28 = sub_1BC7A9A4C(v25, v27, v33);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1BC7A3000, v21, v22, "Couldn't find voicemail to mark as read for uuid: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1BFB2AA50](v24, -1, -1);
      MEMORY[0x1BFB2AA50](v23, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1BC8C9FB0(void *a1, uint64_t a2)
{
  v4 = sub_1BC8F7264();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  sub_1BC8C9418(a2, &v31);
  if (v32)
  {
    sub_1BC7CF5EC(&v31, v33);
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v11 = sub_1BC8F7734();
    __swift_project_value_buffer(v11, qword_1EDC2B208);
    (*(v5 + 16))(v8, a2, v4);
    v12 = sub_1BC8F7714();
    v13 = sub_1BC8F8204();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v31 = v15;
      *v14 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v16 = sub_1BC8F8A54();
      v18 = v17;
      (*(v5 + 8))(v8, v4);
      v19 = sub_1BC7A9A4C(v16, v18, &v31);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1BC7A3000, v12, v13, "Asked to perform trash voicemail with uuids: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFB2AA50](v15, -1, -1);
      MEMORY[0x1BFB2AA50](v14, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v29 = a1[6];
    v30 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, v29);
    (*(v30 + 80))(v33, v29, v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    sub_1BC7E6180(&v31, &qword_1EBCF6780, &qword_1BC908A10);
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v20 = sub_1BC8F7734();
    __swift_project_value_buffer(v20, qword_1EDC2B208);
    (*(v5 + 16))(v10, a2, v4);
    v21 = sub_1BC8F7714();
    v22 = sub_1BC8F81E4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v23 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v25 = sub_1BC8F8A54();
      v27 = v26;
      (*(v5 + 8))(v10, v4);
      v28 = sub_1BC7A9A4C(v25, v27, v33);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1BC7A3000, v21, v22, "Couldn't find voicemail to trash for uuid: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1BFB2AA50](v24, -1, -1);
      MEMORY[0x1BFB2AA50](v23, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }
}

void sub_1BC8CA468(void *a1, uint64_t a2)
{
  v4 = sub_1BC8F7264();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  sub_1BC8C9418(a2, &v31);
  if (v32)
  {
    sub_1BC7CF5EC(&v31, v33);
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v11 = sub_1BC8F7734();
    __swift_project_value_buffer(v11, qword_1EDC2B208);
    (*(v5 + 16))(v8, a2, v4);
    v12 = sub_1BC8F7714();
    v13 = sub_1BC8F8204();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v31 = v15;
      *v14 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v16 = sub_1BC8F8A54();
      v18 = v17;
      (*(v5 + 8))(v8, v4);
      v19 = sub_1BC7A9A4C(v16, v18, &v31);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1BC7A3000, v12, v13, "Asked to perform delete voicemail with uuids: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFB2AA50](v15, -1, -1);
      MEMORY[0x1BFB2AA50](v14, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v29 = a1[6];
    v30 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, v29);
    (*(v30 + 88))(v33, v29, v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    sub_1BC7E6180(&v31, &qword_1EBCF6780, &qword_1BC908A10);
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v20 = sub_1BC8F7734();
    __swift_project_value_buffer(v20, qword_1EDC2B208);
    (*(v5 + 16))(v10, a2, v4);
    v21 = sub_1BC8F7714();
    v22 = sub_1BC8F81E4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v23 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v25 = sub_1BC8F8A54();
      v27 = v26;
      (*(v5 + 8))(v10, v4);
      v28 = sub_1BC7A9A4C(v25, v27, v33);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1BC7A3000, v21, v22, "Couldn't find voicemail to delete for uuid: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1BFB2AA50](v24, -1, -1);
      MEMORY[0x1BFB2AA50](v23, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }
}

void sub_1BC8CA920(void *a1, uint64_t a2)
{
  v4 = sub_1BC8F7264();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  sub_1BC8C9418(a2, &v31);
  if (v32)
  {
    sub_1BC7CF5EC(&v31, v33);
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v11 = sub_1BC8F7734();
    __swift_project_value_buffer(v11, qword_1EDC2B208);
    (*(v5 + 16))(v8, a2, v4);
    v12 = sub_1BC8F7714();
    v13 = sub_1BC8F8204();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *&v31 = v15;
      *v14 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v16 = sub_1BC8F8A54();
      v18 = v17;
      (*(v5 + 8))(v8, v4);
      v19 = sub_1BC7A9A4C(v16, v18, &v31);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1BC7A3000, v12, v13, "Asked to move voicemail with uuid from trash: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1BFB2AA50](v15, -1, -1);
      MEMORY[0x1BFB2AA50](v14, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    v29 = a1[6];
    v30 = a1[7];
    __swift_project_boxed_opaque_existential_1(a1 + 3, v29);
    (*(v30 + 96))(v33, v29, v30);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    sub_1BC7E6180(&v31, &qword_1EBCF6780, &qword_1BC908A10);
    if (qword_1EDC1E1A0 != -1)
    {
      swift_once();
    }

    v20 = sub_1BC8F7734();
    __swift_project_value_buffer(v20, qword_1EDC2B208);
    (*(v5 + 16))(v10, a2, v4);
    v21 = sub_1BC8F7714();
    v22 = sub_1BC8F81E4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v33[0] = v24;
      *v23 = 136446210;
      sub_1BC8CB0C8(&qword_1EDC20FA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v25 = sub_1BC8F8A54();
      v27 = v26;
      (*(v5 + 8))(v10, v4);
      v28 = sub_1BC7A9A4C(v25, v27, v33);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_1BC7A3000, v21, v22, "Couldn't find voicemail to remove from the trash for uuid: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1BFB2AA50](v24, -1, -1);
      MEMORY[0x1BFB2AA50](v23, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }
}

uint64_t sub_1BC8CADD8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v5);
  return (*(v6 + 112))(a2, a3, v5, v6);
}

uint64_t sub_1BC8CAE70()
{
  v1 = sub_1BC8F7264();
  OUTLINED_FUNCTION_26(v1);
  v4 = *(v0 + 16);
  v5 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));
  v6 = *(v5 + *(v3 + 64));

  return sub_1BC8CADD8(v4, v5, v6);
}

uint64_t objectdestroyTm_2()
{
  v1 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1BC8CAFBC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = sub_1BC8F7264();
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a1(v4, v5);
}

uint64_t sub_1BC8CB038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5B00, &qword_1BC9034D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC8CB0C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC8CB110()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_71_4(v4);

  return sub_1BC8C45E8(v5, v6, v7, v8, v2, v3);
}

uint64_t objectdestroy_71Tm()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_31_3();

  return MEMORY[0x1EEE6BDD0](v0, v1, 7);
}

uint64_t sub_1BC8CB210()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_71_4(v3);

  return sub_1BC8C2414(v4, v5, v6, v7, v2);
}

_BYTE *storeEnumTagSinglePayload for VoicemailError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC8CB398()
{
  result = qword_1EBCF6788;
  if (!qword_1EBCF6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6788);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_50_7(uint64_t result, uint64_t a2)
{
  v4 = (v2 + v3[8]);
  *v4 = result;
  v4[1] = a2;
  *(v2 + v3[9]) = 0x7FFFFFFFFFFFFFFFLL;
  *(v2 + v3[10]) = 0;
  return result;
}

void OUTLINED_FUNCTION_61_4()
{
  *(v0 + v1[5]) = v2;
  *(v0 + v1[6]) = 512;
  *(v0 + v1[7]) = 0;
}

__n128 *OUTLINED_FUNCTION_79_4(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_89_1(uint64_t a1)
{

  return sub_1BC8F76A4();
}

uint64_t OUTLINED_FUNCTION_90_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_107_2()
{

  sub_1BC7ED740(v1, v0);
}

uint64_t OUTLINED_FUNCTION_108_2(uint64_t a1)
{
  *(a1 + 16) = v1;

  return sub_1BC8F7254();
}

uint64_t sub_1BC8CB554@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  return sub_1BC8F7424();
}

uint64_t sub_1BC8CB58C@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for FaceTimeMessageStore_Caption(0);
  sub_1BC8F7424();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t sub_1BC8CB5F4@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for FaceTimeMessageStore_Utterance(0);
  result = sub_1BC8F7424();
  v4 = a1 + v2[8];
  *v4 = 0;
  *(v4 + 4) = 1;
  v5 = a1 + v2[9];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + v2[10];
  *v6 = 0;
  *(v6 + 8) = 1;
  return result;
}

uint64_t sub_1BC8CB678@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for FaceTimeMessageStore_Transcript(0);
  result = sub_1BC8F7424();
  v4 = (a1 + *(v2 + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_1BC8CB6E8()
{
  OUTLINED_FUNCTION_5_24();
  while (1)
  {
    result = OUTLINED_FUNCTION_16_15();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_1_28();
      sub_1BC8CB74C(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_7_19();
      sub_1BC8F74D4();
    }
  }

  return result;
}

uint64_t sub_1BC8CB74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FaceTimeMessageStore_Caption(0);
  type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  sub_1BC8CDCAC(&qword_1EBCF67B8, type metadata accessor for FaceTimeMessageStore_CaptionRange, &unk_1BC908F00);
  return sub_1BC8F7524();
}

uint64_t sub_1BC8CB800()
{
  OUTLINED_FUNCTION_3_25();
  if (!*v0 || (OUTLINED_FUNCTION_9_17(), OUTLINED_FUNCTION_7_19(), result = sub_1BC8F75A4(), !v1))
  {
    v3 = OUTLINED_FUNCTION_2_27();
    result = sub_1BC8CB87C(v3, v4, v5, v6);
    if (!v1)
    {
      type metadata accessor for FaceTimeMessageStore_Caption(0);
      return OUTLINED_FUNCTION_6_22();
    }
  }

  return result;
}

uint64_t sub_1BC8CB87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FaceTimeMessageStore_Caption(0);
  sub_1BC7DF4F8(a1 + *(v11 + 24), v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1BC7C1744(v7, &qword_1EBCF4F08, &qword_1BC9090E0);
  }

  sub_1BC7DF568(v7, v10);
  sub_1BC8CDCAC(&qword_1EBCF67B8, type metadata accessor for FaceTimeMessageStore_CaptionRange, &unk_1BC908F00);
  sub_1BC8F75E4();
  return sub_1BC8CE144(v10);
}

uint64_t sub_1BC8CBA1C(double *a1, double *a2)
{
  type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v26 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F10, &unk_1BC8FC6C0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_18;
  }

  v14 = *(type metadata accessor for FaceTimeMessageStore_Caption(0) + 24);
  v15 = *(v10 + 48);
  sub_1BC7DF4F8(a1 + v14, v13);
  sub_1BC7DF4F8(a2 + v14, &v13[v15]);
  OUTLINED_FUNCTION_3_0(v13);
  if (!v19)
  {
    sub_1BC7DF4F8(v13, v9);
    OUTLINED_FUNCTION_3_0(&v13[v15]);
    if (!v19)
    {
      sub_1BC7DF568(&v13[v15], v6);
      if (*v9 == *v6 && v9[1] == v6[1])
      {
        sub_1BC8F7434();
        OUTLINED_FUNCTION_0_27();
        sub_1BC8CDCAC(v22, v23, MEMORY[0x1E69AAC10]);
        v24 = sub_1BC8F7BC4();
        sub_1BC8CE144(v6);
        if (v24)
        {
          sub_1BC8CE144(v9);
          goto LABEL_6;
        }
      }

      else
      {
        sub_1BC8CE144(v6);
      }

      sub_1BC8CE144(v9);
      v20 = &qword_1EBCF4F08;
      v21 = &qword_1BC9090E0;
      goto LABEL_17;
    }

    sub_1BC8CE144(v9);
LABEL_10:
    v20 = &qword_1EBCF4F10;
    v21 = &unk_1BC8FC6C0;
LABEL_17:
    sub_1BC7C1744(v13, v20, v21);
LABEL_18:
    v18 = 0;
    return v18 & 1;
  }

  OUTLINED_FUNCTION_3_0(&v13[v15]);
  if (!v19)
  {
    goto LABEL_10;
  }

LABEL_6:
  sub_1BC7C1744(v13, &qword_1EBCF4F08, &qword_1BC9090E0);
  sub_1BC8F7434();
  OUTLINED_FUNCTION_0_27();
  sub_1BC8CDCAC(v16, v17, MEMORY[0x1E69AAC10]);
  v18 = sub_1BC8F7BC4();
  return v18 & 1;
}

uint64_t sub_1BC8CBD60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8CDCAC(&qword_1EBCF67E0, type metadata accessor for FaceTimeMessageStore_Caption, &unk_1BC909030);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1BC8CBE00(uint64_t a1)
{
  v2 = sub_1BC8CDCAC(qword_1EDC1F6E8, type metadata accessor for FaceTimeMessageStore_Caption, &unk_1BC909068);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1BC8CBEC8(uint64_t a1, uint64_t a2)
{
  sub_1BC8CDCAC(qword_1EDC1F6E8, type metadata accessor for FaceTimeMessageStore_Caption, &unk_1BC909068);

  return sub_1BC8F7584();
}

uint64_t sub_1BC8CBF48()
{
  v0 = sub_1BC8F7614();
  __swift_allocate_value_buffer(v0, qword_1EBD06890);
  __swift_project_value_buffer(v0, qword_1EBD06890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF67E8, &qword_1BC9090E8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF67F0, &unk_1BC9090F0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC8FEAA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "location";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1BC8F75F4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "length";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1BC8F7604();
}

uint64_t sub_1BC8CC110()
{
  OUTLINED_FUNCTION_5_24();
  while (1)
  {
    result = OUTLINED_FUNCTION_16_15();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_7_19();
      sub_1BC8F74B4();
    }
  }

  return result;
}

uint64_t sub_1BC8CC16C()
{
  OUTLINED_FUNCTION_3_25();
  if (!*v0 || (OUTLINED_FUNCTION_9_17(), result = sub_1BC8F7594(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_9_17(), result = sub_1BC8F7594(), !v1))
    {
      type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
      return OUTLINED_FUNCTION_6_22();
    }
  }

  return result;
}

uint64_t sub_1BC8CC1FC(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  sub_1BC8F7434();
  OUTLINED_FUNCTION_0_27();
  v4 = sub_1BC8CDCAC(v2, v3, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_8_26(v4) & 1;
}

uint64_t sub_1BC8CC2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1BC8F7434();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1BC8CC328(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1BC8F7434();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1BC8CC3F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8CDCAC(&qword_1EBCF67F8, type metadata accessor for FaceTimeMessageStore_CaptionRange, &unk_1BC908EC8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1BC8CC490(uint64_t a1)
{
  v2 = sub_1BC8CDCAC(&qword_1EBCF67B8, type metadata accessor for FaceTimeMessageStore_CaptionRange, &unk_1BC908F00);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1BC8CC558(uint64_t a1, uint64_t a2)
{
  sub_1BC8CDCAC(&qword_1EBCF67B8, type metadata accessor for FaceTimeMessageStore_CaptionRange, &unk_1BC908F00);

  return sub_1BC8F7584();
}

uint64_t sub_1BC8CC5D8()
{
  v0 = sub_1BC8F7614();
  __swift_allocate_value_buffer(v0, qword_1EBD068A8);
  __swift_project_value_buffer(v0, qword_1EBD068A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF67E8, &qword_1BC9090E8);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF67F0, &unk_1BC9090F0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1BC908B30;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1BC8F75F4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "captions";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "utteranceNumber";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "utteranceStartTimestamp";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "utteranceDuration";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  return sub_1BC8F7604();
}

uint64_t sub_1BC8CC898()
{
  OUTLINED_FUNCTION_5_24();
  while (1)
  {
    result = OUTLINED_FUNCTION_16_15();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_7_19();
        sub_1BC8F74B4();
        break;
      case 2:
        OUTLINED_FUNCTION_7_19();
        sub_1BC8F74F4();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_1_28();
        sub_1BC8CC95C(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_1_28();
        sub_1BC8CC9FC(v11, v12, v13, v14);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_1_28();
        sub_1BC8CCA60(v3, v4, v5, v6);
        break;
      case 6:
        v15 = OUTLINED_FUNCTION_1_28();
        sub_1BC8CCAC4(v15, v16, v17, v18);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1BC8CC95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FaceTimeMessageStore_Caption(0);
  sub_1BC8CDCAC(qword_1EDC1F6E8, type metadata accessor for FaceTimeMessageStore_Caption, &unk_1BC909068);
  return sub_1BC8F7514();
}

uint64_t sub_1BC8CCB28()
{
  OUTLINED_FUNCTION_3_25();
  if (!*v0 || (OUTLINED_FUNCTION_9_17(), result = sub_1BC8F7594(), !v1))
  {
    v4 = v2[2];
    v5 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x2000000000000000) == 0)
    {
      v5 = v2[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v5 || (OUTLINED_FUNCTION_9_17(), result = sub_1BC8F75B4(), !v1))
    {
      if (!*(v2[3] + 16) || (type metadata accessor for FaceTimeMessageStore_Caption(0), sub_1BC8CDCAC(qword_1EDC1F6E8, type metadata accessor for FaceTimeMessageStore_Caption, &unk_1BC909068), OUTLINED_FUNCTION_9_17(), result = sub_1BC8F75D4(), !v1))
      {
        v6 = OUTLINED_FUNCTION_2_27();
        result = sub_1BC8CCC74(v6, v7, v8, v9);
        if (!v1)
        {
          v10 = OUTLINED_FUNCTION_2_27();
          sub_1BC8CCCEC(v10, v11, v12, v13);
          v14 = OUTLINED_FUNCTION_2_27();
          sub_1BC8CCD64(v14, v15, v16, v17);
          type metadata accessor for FaceTimeMessageStore_Utterance(0);
          return OUTLINED_FUNCTION_6_22();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1BC8CCC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FaceTimeMessageStore_Utterance(0);
  if ((*(a1 + *(result + 32) + 4) & 1) == 0)
  {
    return sub_1BC8F75C4();
  }

  return result;
}

uint64_t sub_1BC8CCCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FaceTimeMessageStore_Utterance(0);
  if ((*(a1 + *(result + 36) + 8) & 1) == 0)
  {
    return sub_1BC8F75A4();
  }

  return result;
}

uint64_t sub_1BC8CCD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FaceTimeMessageStore_Utterance(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return sub_1BC8F75A4();
  }

  return result;
}

uint64_t sub_1BC8CCDDC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1BC8F8AA4() & 1) == 0)
  {
    return 0;
  }

  sub_1BC7DC204();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for FaceTimeMessageStore_Utterance(0) + 32);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_14_16();
  if (v12)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    if (v13)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_14_16();
  if (v15)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_44();
    if (v17)
    {
      return 0;
    }
  }

  sub_1BC8F7434();
  OUTLINED_FUNCTION_0_27();
  v20 = sub_1BC8CDCAC(v18, v19, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_8_26(v20) & 1;
}

uint64_t sub_1BC8CCF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_1BC8F7434();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1BC8CCF94(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_1BC8F7434();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1BC8CD05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8CDCAC(&qword_1EBCF6800, type metadata accessor for FaceTimeMessageStore_Utterance, &unk_1BC908D60);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1BC8CD0FC(uint64_t a1)
{
  v2 = sub_1BC8CDCAC(&qword_1EDC1F8E8, type metadata accessor for FaceTimeMessageStore_Utterance, &unk_1BC908D98);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1BC8CD1C4(uint64_t a1, uint64_t a2)
{
  sub_1BC8CDCAC(&qword_1EDC1F8E8, type metadata accessor for FaceTimeMessageStore_Utterance, &unk_1BC908D98);

  return sub_1BC8F7584();
}

uint64_t sub_1BC8CD264(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1BC8F7614();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF67E8, &qword_1BC9090E8);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF67F0, &unk_1BC9090F0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BC8FEAA0;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 10;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1BC8F75F4();
  OUTLINED_FUNCTION_4_1();
  v17 = *(v16 + 104);
  (v17)(v13, v14, v15);
  v18 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v18 = a4;
  *(v18 + 1) = a5;
  v18[16] = 2;
  v17();
  return sub_1BC8F7604();
}

uint64_t sub_1BC8CD418()
{
  OUTLINED_FUNCTION_5_24();
  while (1)
  {
    result = OUTLINED_FUNCTION_16_15();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_1_28();
      sub_1BC8CD518(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_1_28();
      sub_1BC8CD478(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t sub_1BC8CD478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FaceTimeMessageStore_Utterance(0);
  sub_1BC8CDCAC(&qword_1EDC1F8E8, type metadata accessor for FaceTimeMessageStore_Utterance, &unk_1BC908D98);
  return sub_1BC8F7514();
}

uint64_t sub_1BC8CD57C()
{
  OUTLINED_FUNCTION_3_25();
  if (!*(*v0 + 16) || (type metadata accessor for FaceTimeMessageStore_Utterance(0), sub_1BC8CDCAC(&qword_1EDC1F8E8, type metadata accessor for FaceTimeMessageStore_Utterance, &unk_1BC908D98), OUTLINED_FUNCTION_9_17(), result = sub_1BC8F75D4(), !v1))
  {
    v3 = OUTLINED_FUNCTION_2_27();
    result = sub_1BC8CD650(v3, v4, v5, v6);
    if (!v1)
    {
      type metadata accessor for FaceTimeMessageStore_Transcript(0);
      return OUTLINED_FUNCTION_6_22();
    }
  }

  return result;
}

uint64_t sub_1BC8CD650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FaceTimeMessageStore_Transcript(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_1BC8F75B4();
  }

  return result;
}

uint64_t sub_1BC8CD6C8(uint64_t a1, uint64_t a2)
{
  sub_1BC7DBADC();
  if (v4)
  {
    v5 = *(type metadata accessor for FaceTimeMessageStore_Transcript(0) + 24);
    v6 = (a1 + v5);
    v7 = *(a1 + v5 + 8);
    v8 = (a2 + v5);
    v9 = v8[1];
    if (v7)
    {
      if (v9)
      {
        v10 = *v6 == *v8 && v7 == v9;
        if (v10 || (sub_1BC8F8AA4() & 1) != 0)
        {
          goto LABEL_9;
        }
      }
    }

    else if (!v9)
    {
LABEL_9:
      sub_1BC8F7434();
      OUTLINED_FUNCTION_0_27();
      v13 = sub_1BC8CDCAC(v11, v12, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_8_26(v13) & 1;
    }
  }

  return 0;
}

uint64_t sub_1BC8CD794(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1BC8F8C04();
  a1(0);
  sub_1BC8CDCAC(a2, a3, a4);
  sub_1BC8F7B64();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8CD83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  sub_1BC8F7434();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1BC8CD8A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  sub_1BC8F7434();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 40);

  return v6(v2 + v4, a1);
}

uint64_t sub_1BC8CD944(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC8CDCAC(&qword_1EBCF6808, type metadata accessor for FaceTimeMessageStore_Transcript, &unk_1BC908BF8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1BC8CD9E4@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1BC8F7614();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1BC8CDA80(uint64_t a1)
{
  v2 = sub_1BC8CDCAC(qword_1EDC1F830, type metadata accessor for FaceTimeMessageStore_Transcript, &unk_1BC908C30);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1BC8CDB48(uint64_t a1, uint64_t a2)
{
  sub_1BC8CDCAC(qword_1EDC1F830, type metadata accessor for FaceTimeMessageStore_Transcript, &unk_1BC908C30);

  return sub_1BC8F7584();
}

uint64_t sub_1BC8CDBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BC8F8C04();
  sub_1BC8F7B64();
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8CDCAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC8CE144(uint64_t a1)
{
  v2 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BC8CE1C8(uint64_t a1)
{
  sub_1BC8F7434();
  if (v1 <= 0x3F)
  {
    sub_1BC8CE474(319, qword_1EDC1F748, type metadata accessor for FaceTimeMessageStore_CaptionRange, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1BC8CE2B4(uint64_t a1)
{
  result = sub_1BC8F7434();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1BC8CE358(uint64_t a1)
{
  sub_1BC8CE474(319, &qword_1EDC1DEF8, type metadata accessor for FaceTimeMessageStore_Caption, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1BC8F7434();
    if (v2 <= 0x3F)
    {
      sub_1BC881274(319, &qword_1EDC1DD18, MEMORY[0x1E69E7668]);
      if (v3 <= 0x3F)
      {
        sub_1BC881274(319, &qword_1EDC1DEC0, MEMORY[0x1E69E63B0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1BC8CE474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BC8CE500(uint64_t a1)
{
  sub_1BC8CE474(319, &qword_1EDC1DF00, type metadata accessor for FaceTimeMessageStore_Utterance, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1BC8F7434();
    if (v2 <= 0x3F)
    {
      sub_1BC881274(319, &qword_1EDC206A8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BC8CE5F4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for FaceTimeMessageStore_CaptionRange(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FaceTimeMessageStore_Caption(0);
  OUTLINED_FUNCTION_0();
  v95 = v8;
  v96 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v68 - v12;
  type metadata accessor for FaceTimeMessageStore_Utterance(0);
  OUTLINED_FUNCTION_0();
  v78 = v15;
  v79 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v68 - v19;
  v21 = *a1;
  v71 = a1[1];
  v72 = a1[2];
  v22 = type metadata accessor for FaceTimeMessageStore_Transcript(0);
  sub_1BC8F7424();
  v23 = (a2 + *(v22 + 24));
  *v23 = 0;
  v23[1] = 0;
  v70 = v23;
  v24 = *(v21 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (!v24)
  {
    goto LABEL_27;
  }

  v69 = a2;
  v98 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDBF4(0, v24, 0);
  v26 = 0;
  v92 = v98;
  v77 = v21 + 32;
  v93 = v6;
  v94 = v4;
  v76 = v21;
  v73 = v18;
  v75 = v20;
  v74 = v24;
  while (1)
  {
    if (v26 >= *(v21 + 16))
    {
      goto LABEL_34;
    }

    v91 = v26;
    v27 = (v77 + (v26 << 6));
    v29 = *v27;
    v28 = v27[1];
    v30 = v27[2];
    v31 = *(v27 + 32);
    v32 = v27[5];
    v87 = v27[3];
    v88 = v32;
    LODWORD(v32) = *(v27 + 48);
    v89 = v31;
    v90 = v32;
    v33 = *(v27 + 13);
    v34 = *(v27 + 56);
    *v18 = 0;
    v35 = v79;

    sub_1BC8F7424();
    v36 = &v18[v35[8]];
    *v36 = 0;
    v85 = v36;
    v36[4] = 1;
    v37 = &v18[v35[9]];
    *v37 = 0;
    v86 = v37;
    v37[8] = 1;
    v38 = &v18[v35[10]];
    *v38 = 0;
    v38[8] = 1;
    *(v18 + 1) = v28;
    *(v18 + 2) = v30;
    v39 = v29;
    v40 = *(v29 + 16);
    if (v40)
    {
      break;
    }

    v41 = MEMORY[0x1E69E7CC0];
    v21 = v76;
LABEL_17:
    *(v18 + 3) = v41;
    v56 = v75;
    if ((v34 & 1) == 0)
    {
      v57 = v85;
      *v85 = v33;
      v57[4] = 0;
    }

    v58 = v91;
    if ((v89 & 1) == 0)
    {
      v59 = v86;
      *v86 = v87;
      v59[8] = 0;
    }

    if ((v90 & 1) == 0)
    {
      *v38 = v88;
      v38[8] = 0;
    }

    OUTLINED_FUNCTION_1_29();
    sub_1BC8CEC6C(v18, v56, v60);
    v61 = v92;
    v98 = v92;
    v63 = *(v92 + 16);
    v62 = *(v92 + 24);
    if (v63 >= v62 >> 1)
    {
      sub_1BC7DDBF4(v62 > 1, v63 + 1, 1);
      v58 = v91;
      v61 = v98;
    }

    v26 = v58 + 1;
    *(v61 + 16) = v63 + 1;
    v92 = v61;
    OUTLINED_FUNCTION_1_29();
    sub_1BC8CEC6C(v56, v64, v65);
    if (v26 == v74)
    {
      a2 = v69;
      v25 = v92;
LABEL_27:
      *a2 = v25;
      v66 = v72;
      if (v72)
      {

        v67 = v70;
        *v70 = v71;
        v67[1] = v66;
      }

      else
      {
      }

      return;
    }
  }

  v82 = v38;
  v83 = v34;
  v84 = v33;
  v97 = MEMORY[0x1E69E7CC0];
  v80 = v30;

  sub_1BC7DDC4C(0, v40, 0);
  v41 = v97;
  v81 = v39;
  v42 = (v39 + 56);
  while (1)
  {
    v44 = *(v42 - 3);
    v43 = *(v42 - 2);
    v45 = *(v42 - 8);
    v46 = *v42;
    v47 = v96;
    sub_1BC8F7424();
    v48 = *(v47 + 24);
    v49 = v94;
    __swift_storeEnumTagSinglePayload(v11 + v48, 1, 1, v94);
    *v11 = v46;
    if (v45)
    {
      goto LABEL_12;
    }

    v50 = v93;
    sub_1BC8F7424();
    if (v44 < 0xFFFFFFFF80000000)
    {
      break;
    }

    if (v44 > 0x7FFFFFFF)
    {
      goto LABEL_31;
    }

    *v50 = v44;
    if (v43 < 0xFFFFFFFF80000000)
    {
      goto LABEL_32;
    }

    if (v43 > 0x7FFFFFFF)
    {
      goto LABEL_33;
    }

    v50[1] = v43;
    sub_1BC8CEC04(v11 + v48);
    sub_1BC8CEC6C(v50, v11 + v48, type metadata accessor for FaceTimeMessageStore_CaptionRange);
    __swift_storeEnumTagSinglePayload(v11 + v48, 0, 1, v49);
LABEL_12:
    OUTLINED_FUNCTION_0_28();
    sub_1BC8CEC6C(v11, v13, v51);
    v97 = v41;
    v53 = *(v41 + 16);
    v52 = *(v41 + 24);
    if (v53 >= v52 >> 1)
    {
      sub_1BC7DDC4C(v52 > 1, v53 + 1, 1);
      v41 = v97;
    }

    *(v41 + 16) = v53 + 1;
    OUTLINED_FUNCTION_0_28();
    sub_1BC8CEC6C(v13, v54, v55);
    v42 += 4;
    if (!--v40)
    {

      v21 = v76;
      v18 = v73;
      LOBYTE(v34) = v83;
      v33 = v84;
      v38 = v82;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1BC8CEC04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F08, &qword_1BC9090E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC8CEC6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t RawMessageMetadata.messageType.setter(__int16 a1)
{
  result = type metadata accessor for RawMessageMetadata(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t RawMessageMetadata.messageType.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  type metadata accessor for RawMessageMetadata(v0);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t RawMessageMetadata.senderHandle.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  type metadata accessor for RawMessageMetadata(v0);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t RawMessageMetadata.init(callUUID:messageType:senderHandle:)()
{
  OUTLINED_FUNCTION_12_19();
  sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 32))(v1, v0);
  v3 = type metadata accessor for RawMessageMetadata(0);
  return OUTLINED_FUNCTION_13_19(v3);
}

uint64_t static RawMessageMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1BC8F7234() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for RawMessageMetadata(0);
  OUTLINED_FUNCTION_16_16();
  if (!v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_27(v2);
  v5 = v5 && v3 == v4;
  if (v5)
  {
    return 1;
  }

  return sub_1BC8F8AA4();
}

uint64_t sub_1BC8CEF00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x61487265646E6573 && a2 == 0xEC000000656C646ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BC8F8AA4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BC8CF018(char a1)
{
  if (!a1)
  {
    return 0x444955556C6C6163;
  }

  if (a1 == 1)
  {
    return 0x546567617373656DLL;
  }

  return 0x61487265646E6573;
}

uint64_t sub_1BC8CF0A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8CEF00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8CF0C8(uint64_t a1)
{
  v2 = sub_1BC8CF2F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8CF104(uint64_t a1)
{
  v2 = sub_1BC8CF2F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawMessageMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6810, &qword_1BC909190);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1BC8CF2F0();
  OUTLINED_FUNCTION_17_15(&type metadata for RawMessageMetadata.CodingKeys, v10, v9);
  v15[15] = 0;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_29();
  sub_1BC8CF3E8(v11, v12, MEMORY[0x1E69695B0]);
  OUTLINED_FUNCTION_5_25();
  sub_1BC8F89F4();
  if (!v1)
  {
    v13 = type metadata accessor for RawMessageMetadata(0);
    OUTLINED_FUNCTION_11_16(v13);
    OUTLINED_FUNCTION_5_25();
    sub_1BC8F89F4();
    v15[10] = 2;
    OUTLINED_FUNCTION_5_25();
    sub_1BC8F89A4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1BC8CF2F0()
{
  result = qword_1EBCF6818;
  if (!qword_1EBCF6818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6818);
  }

  return result;
}

uint64_t RawMessageMetadata.hash(into:)(uint64_t a1)
{
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_29();
  sub_1BC8CF3E8(v1, v2, MEMORY[0x1E69695B8]);
  sub_1BC8F7B64();
  v3 = type metadata accessor for RawMessageMetadata(0);
  OUTLINED_FUNCTION_14_17(v3);
  sub_1BC8F8C34();

  return sub_1BC8F7CD4();
}

uint64_t sub_1BC8CF3E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RawMessageMetadata.hashValue.getter()
{
  sub_1BC8F8C04();
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_29();
  sub_1BC8CF3E8(v0, v1, MEMORY[0x1E69695B8]);
  sub_1BC8F7B64();
  v2 = type metadata accessor for RawMessageMetadata(0);
  OUTLINED_FUNCTION_14_17(v2);
  sub_1BC8F8C34();
  sub_1BC8F7CD4();
  return sub_1BC8F8C64();
}

uint64_t RawMessageMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v25 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v26 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6820, &qword_1BC909198);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = type metadata accessor for RawMessageMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v14 = v13 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8CF2F0();
  sub_1BC8F8C84();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_0_29();
  sub_1BC8CF3E8(v15, v16, MEMORY[0x1E69695D0]);
  sub_1BC8F88F4();
  (*(v25 + 32))(v14, v26, v4);
  sub_1BC7C70CC();
  sub_1BC8F88F4();
  *(v14 + *(v10 + 20)) = v28;
  v17 = sub_1BC8F88A4();
  v27 = v18;
  v19 = v17;
  v20 = OUTLINED_FUNCTION_9_18();
  v21(v20);
  v22 = (v14 + *(v10 + 24));
  *v22 = v19;
  v22[1] = v27;
  sub_1BC8D0A40(v14, a2, type metadata accessor for RawMessageMetadata);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1BC8D0AA0();
}

uint64_t _s20FaceTimeMessageStore03RawC8MetadataV8callUUID10Foundation0H0Vvg_0@<X0>(uint64_t a1@<X8>)
{
  sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t _s20FaceTimeMessageStore03RawC8MetadataV8callUUID10Foundation0H0Vvs_0()
{
  OUTLINED_FUNCTION_114();
  sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t IncomingMessageMetadata.messageType.setter(__int16 a1)
{
  result = type metadata accessor for IncomingMessageMetadata(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t IncomingMessageMetadata.messageType.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  type metadata accessor for IncomingMessageMetadata(v0);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t sub_1BC8CFA20(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));

  return v2;
}

void sub_1BC8CFA80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
}

uint64_t IncomingMessageMetadata.provider.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  type metadata accessor for IncomingMessageMetadata(v0);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t IncomingMessageMetadata.quality.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IncomingMessageMetadata(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t IncomingMessageMetadata.quality.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for IncomingMessageMetadata(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t IncomingMessageMetadata.quality.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  type metadata accessor for IncomingMessageMetadata(v0);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t IncomingMessageMetadata.metadataVersion.setter()
{
  v2 = OUTLINED_FUNCTION_114();
  result = type metadata accessor for IncomingMessageMetadata(v2);
  *(v1 + *(result + 32)) = v0;
  return result;
}

uint64_t IncomingMessageMetadata.metadataVersion.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  type metadata accessor for IncomingMessageMetadata(v0);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t IncomingMessageMetadata.duration.setter(double a1)
{
  result = type metadata accessor for IncomingMessageMetadata(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t IncomingMessageMetadata.duration.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  type metadata accessor for IncomingMessageMetadata(v0);
  return OUTLINED_FUNCTION_6_23();
}

int *IncomingMessageMetadata.init(callUUID:messageType:provider:quality:duration:)(double a1)
{
  OUTLINED_FUNCTION_12_19();
  v5 = *v4;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1();
  (*(v6 + 32))(v2, v1);
  v7 = type metadata accessor for IncomingMessageMetadata(0);
  result = OUTLINED_FUNCTION_13_19(v7);
  *(v2 + result[7]) = v5;
  *(v2 + result[8]) = 1;
  *(v2 + result[9]) = a1;
  return result;
}

BOOL static IncomingMessageMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1BC8F7234() & 1) != 0 && (type metadata accessor for IncomingMessageMetadata(0), OUTLINED_FUNCTION_16_16(), v8) && ((v5 = v4, OUTLINED_FUNCTION_8_27(v4), v8) ? (v8 = v6 == v7) : (v8 = 0), (v8 || (sub_1BC8F8AA4()) && (sub_1BC800E6C(*(a1 + v5[7]), *(a2 + v5[7])) & 1) != 0 && *(a1 + v5[8]) == *(a2 + v5[8])))
  {
    return *(a1 + v5[9]) == *(a2 + v5[9]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC8CFE14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72656469766F7270 && a2 == 0xE800000000000000;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7974696C617571 && a2 == 0xE700000000000000;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x617461646174656DLL && a2 == 0xEF6E6F6973726556;
          if (v9 || (sub_1BC8F8AA4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1BC8F8AA4();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BC8D0010(char a1)
{
  result = 0x444955556C6C6163;
  switch(a1)
  {
    case 1:
      result = 0x546567617373656DLL;
      break;
    case 2:
      result = 0x72656469766F7270;
      break;
    case 3:
      result = 0x7974696C617571;
      break;
    case 4:
      result = 0x617461646174656DLL;
      break;
    case 5:
      result = 0x6E6F697461727564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC8D00D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BC8F8C04();
  a4(v8, v6);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8D0124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8CFE14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8D014C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC8D0008();
  *a1 = result;
  return result;
}

uint64_t sub_1BC8D0174(uint64_t a1)
{
  v2 = sub_1BC8D042C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8D01B0(uint64_t a1)
{
  v2 = sub_1BC8D042C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t IncomingMessageMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6828, &qword_1BC9091A0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-v9];
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v12 = sub_1BC8D042C();
  OUTLINED_FUNCTION_17_15(&type metadata for IncomingMessageMetadata.CodingKeys, v13, v12);
  v18[15] = 0;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_29();
  sub_1BC8CF3E8(v14, v15, MEMORY[0x1E69695B0]);
  OUTLINED_FUNCTION_5_25();
  sub_1BC8F89F4();
  if (!v2)
  {
    v16 = type metadata accessor for IncomingMessageMetadata(0);
    OUTLINED_FUNCTION_11_16(v16);
    OUTLINED_FUNCTION_5_25();
    sub_1BC8F89F4();
    v18[10] = 2;
    OUTLINED_FUNCTION_5_25();
    sub_1BC8F89A4();
    v18[9] = *(v3 + *(v11 + 28));
    v18[8] = 3;
    sub_1BC7C4FF8();
    OUTLINED_FUNCTION_5_25();
    sub_1BC8F89F4();
    v18[7] = 4;
    OUTLINED_FUNCTION_5_25();
    sub_1BC8F89D4();
    v18[6] = 5;
    OUTLINED_FUNCTION_5_25();
    sub_1BC8F89C4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1BC8D042C()
{
  result = qword_1EBCF6830;
  if (!qword_1EBCF6830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6830);
  }

  return result;
}

uint64_t IncomingMessageMetadata.hash(into:)()
{
  OUTLINED_FUNCTION_114();
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_29();
  sub_1BC8CF3E8(v2, v3, MEMORY[0x1E69695B8]);
  sub_1BC8F7B64();
  v4 = type metadata accessor for IncomingMessageMetadata(0);
  OUTLINED_FUNCTION_14_17(v4);
  sub_1BC8F8C34();
  sub_1BC8F7CD4();
  v5 = sub_1BC80122C(v0, *(v1 + v4[7]));
  MEMORY[0x1BFB2A020](*(v1 + v4[8]), v5);
  v6 = *(v1 + v4[9]);
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  return MEMORY[0x1BFB2A060](*&v6);
}

uint64_t IncomingMessageMetadata.hashValue.getter()
{
  sub_1BC8F8C04();
  IncomingMessageMetadata.hash(into:)();
  return sub_1BC8F8C64();
}

void IncomingMessageMetadata.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v26 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF6838, &qword_1BC9091A8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  v24 = type metadata accessor for IncomingMessageMetadata(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12();
  v25 = v13 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8D042C();
  sub_1BC8F8C84();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    OUTLINED_FUNCTION_0_29();
    sub_1BC8CF3E8(v14, v15, MEMORY[0x1E69695D0]);
    OUTLINED_FUNCTION_7_20();
    sub_1BC8F88F4();
    (*(v26 + 32))(v25, v9, v4);
    sub_1BC7C70CC();
    OUTLINED_FUNCTION_7_20();
    sub_1BC8F88F4();
    *(v25 + v24[5]) = v28;
    OUTLINED_FUNCTION_7_20();
    v16 = sub_1BC8F88A4();
    v17 = (v25 + v24[6]);
    *v17 = v16;
    v17[1] = v18;
    sub_1BC7C732C();
    OUTLINED_FUNCTION_7_20();
    sub_1BC8F88F4();
    *(v25 + v24[7]) = v27;
    OUTLINED_FUNCTION_7_20();
    *(v25 + v24[8]) = sub_1BC8F88D4();
    OUTLINED_FUNCTION_7_20();
    sub_1BC8F88C4();
    v20 = v19;
    v21 = OUTLINED_FUNCTION_10_24();
    v22(v21);
    *(v25 + v24[9]) = v20;
    sub_1BC8D0A40(v25, a2, type metadata accessor for IncomingMessageMetadata);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1BC8D0AA0();
  }
}

uint64_t sub_1BC8D09FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1BC8F8C04();
  a4(v6);
  return sub_1BC8F8C64();
}

uint64_t sub_1BC8D0A40(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BC8D0AA0()
{
  v1 = OUTLINED_FUNCTION_114();
  v2(v1);
  OUTLINED_FUNCTION_4_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1BC8D0BB0(uint64_t a1)
{
  result = sub_1BC8F7264();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_114();
  v6 = sub_1BC8F7264();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v6);
  }

  else
  {
    v8 = *(v3 + *(a3 + 24) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1BC8F7264();
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

uint64_t sub_1BC8D0DB4(uint64_t a1)
{
  result = sub_1BC8F7264();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IncomingMessageMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RawMessageMetadata.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC8D1010()
{
  result = qword_1EBCF6870;
  if (!qword_1EBCF6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6870);
  }

  return result;
}

unint64_t sub_1BC8D1068()
{
  result = qword_1EBCF6878;
  if (!qword_1EBCF6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6878);
  }

  return result;
}

unint64_t sub_1BC8D10C0()
{
  result = qword_1EBCF6880;
  if (!qword_1EBCF6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6880);
  }

  return result;
}

unint64_t sub_1BC8D1118()
{
  result = qword_1EBCF6888;
  if (!qword_1EBCF6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6888);
  }

  return result;
}

unint64_t sub_1BC8D1170()
{
  result = qword_1EBCF6890;
  if (!qword_1EBCF6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6890);
  }

  return result;
}

unint64_t sub_1BC8D11C8()
{
  result = qword_1EBCF6898;
  if (!qword_1EBCF6898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF6898);
  }

  return result;
}

uint64_t OutgoingVideoMessage.conversationID.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t OutgoingVideoMessage.conversationID.setter()
{
  OUTLINED_FUNCTION_114();
  sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t OutgoingVideoMessage.senderHandle.getter()
{
  v1 = *(v0 + *(type metadata accessor for OutgoingVideoMessage(0) + 20));

  return v1;
}

uint64_t type metadata accessor for OutgoingVideoMessage(uint64_t a1)
{
  result = qword_1EDC1FEF0;
  if (!qword_1EDC1FEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void OutgoingVideoMessage.senderHandle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for OutgoingVideoMessage(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t OutgoingVideoMessage.senderHandle.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  type metadata accessor for OutgoingVideoMessage(v0);
  return OUTLINED_FUNCTION_6_23();
}

double OutgoingVideoMessage.destinationHandles.getter()
{
  type metadata accessor for OutgoingVideoMessage(0);

  return result;
}

void OutgoingVideoMessage.destinationHandles.setter()
{
  v2 = OUTLINED_FUNCTION_114();
  v3 = *(type metadata accessor for OutgoingVideoMessage(v2) + 24);

  *(v1 + v3) = v0;
}

uint64_t OutgoingVideoMessage.destinationHandles.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  type metadata accessor for OutgoingVideoMessage(v0);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t OutgoingVideoMessage.messageType.setter(__int16 a1)
{
  result = type metadata accessor for OutgoingVideoMessage(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t OutgoingVideoMessage.messageType.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  type metadata accessor for OutgoingVideoMessage(v0);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t OutgoingVideoMessage.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OutgoingVideoMessage(0) + 32);
  sub_1BC8F7014();
  OUTLINED_FUNCTION_4_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t OutgoingVideoMessage.url.setter()
{
  v2 = OUTLINED_FUNCTION_114();
  v3 = *(type metadata accessor for OutgoingVideoMessage(v2) + 32);
  sub_1BC8F7014();
  OUTLINED_FUNCTION_4_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t OutgoingVideoMessage.url.modify()
{
  v0 = OUTLINED_FUNCTION_114();
  type metadata accessor for OutgoingVideoMessage(v0);
  return OUTLINED_FUNCTION_6_23();
}

uint64_t OutgoingVideoMessage.init(conversationID:senderHandle:destinationHandles:messageType:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1BC8F7264();
  OUTLINED_FUNCTION_4_1();
  (*(v14 + 32))(a7, a1);
  v15 = type metadata accessor for OutgoingVideoMessage(0);
  v16 = (a7 + v15[5]);
  *v16 = a2;
  v16[1] = a3;
  *(a7 + v15[6]) = a4;
  *(a7 + v15[7]) = a5;
  v17 = v15[8];
  sub_1BC8F7014();
  OUTLINED_FUNCTION_4_1();
  v19 = *(v18 + 32);

  return v19(a7 + v17, a6);
}

uint64_t static OutgoingVideoMessage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1BC8F7234() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for OutgoingVideoMessage(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1BC8F8AA4() & 1) == 0 || (sub_1BC7DB4D8(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0 || *(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  return sub_1BC8F6FA4();
}

uint64_t sub_1BC8D182C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEE0044496E6F6974;
  if (v4 || (sub_1BC8F8AA4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x61487265646E6573 && a2 == 0xEC000000656C646ELL;
    if (v6 || (sub_1BC8F8AA4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001BC90E280 == a2;
      if (v7 || (sub_1BC8F8AA4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
        if (v8 || (sub_1BC8F8AA4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 7107189 && a2 == 0xE300000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1BC8F8AA4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1BC8D19E4(char a1)
{
  result = 0x61737265766E6F63;
  switch(a1)
  {
    case 1:
      result = 0x61487265646E6573;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x546567617373656DLL;
      break;
    case 4:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BC8D1AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BC8D182C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BC8D1AC8(uint64_t a1)
{
  v2 = sub_1BC8D1DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC8D1B04(uint64_t a1)
{
  v2 = sub_1BC8D1DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OutgoingVideoMessage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF68A0, &unk_1BC9095D0);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28[-v9 - 6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8D1DD8();
  sub_1BC8F8CA4();
  v33 = 0;
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_30();
  v13 = sub_1BC8D2B74(v11, v12, MEMORY[0x1E69695B0]);
  OUTLINED_FUNCTION_7_21(v3, &v33, v14, v15, v13);
  if (!v2)
  {
    v16 = type metadata accessor for OutgoingVideoMessage(0);
    v32 = 1;
    sub_1BC8F89A4();
    v31 = *(v3 + v16[6]);
    v30 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    v17 = sub_1BC8D2A5C(&qword_1EBCF53B8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_7_21(&v31, &v30, v18, v19, v17);
    v29 = *(v3 + v16[7]);
    v28[1] = 3;
    sub_1BC7BED0C();
    sub_1BC8F89F4();
    v20 = v16[8];
    v28[0] = 4;
    sub_1BC8F7014();
    OUTLINED_FUNCTION_1_30();
    v23 = sub_1BC8D2B74(v21, v22, MEMORY[0x1E6968FB8]);
    OUTLINED_FUNCTION_7_21(v3 + v20, v28, v24, v25, v23);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1BC8D1DD8()
{
  result = qword_1EBCF68A8;
  if (!qword_1EBCF68A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF68A8);
  }

  return result;
}

uint64_t OutgoingVideoMessage.hash(into:)()
{
  OUTLINED_FUNCTION_114();
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_30();
  sub_1BC8D2B74(v0, v1, MEMORY[0x1E69695B8]);
  sub_1BC8F7B64();
  type metadata accessor for OutgoingVideoMessage(0);
  sub_1BC8F7CD4();
  sub_1BC7DEC58();
  sub_1BC8F8C34();
  sub_1BC8F7014();
  OUTLINED_FUNCTION_1_30();
  sub_1BC8D2B74(v2, v3, MEMORY[0x1E6968FC0]);
  return sub_1BC8F7B64();
}

uint64_t OutgoingVideoMessage.hashValue.getter()
{
  sub_1BC8F8C04();
  sub_1BC8F7264();
  OUTLINED_FUNCTION_0_30();
  sub_1BC8D2B74(v0, v1, MEMORY[0x1E69695B8]);
  sub_1BC8F7B64();
  type metadata accessor for OutgoingVideoMessage(0);
  sub_1BC8F7CD4();
  sub_1BC7DEC58();
  sub_1BC8F8C34();
  sub_1BC8F7014();
  OUTLINED_FUNCTION_1_30();
  sub_1BC8D2B74(v2, v3, MEMORY[0x1E6968FC0]);
  sub_1BC8F7B64();
  return sub_1BC8F8C64();
}

void OutgoingVideoMessage.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v37 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v35 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_12();
  v7 = v6 - v5;
  v8 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v38 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v41 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF68B0, &qword_1BC9095E0);
  OUTLINED_FUNCTION_0();
  v39 = v14;
  v40 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = type metadata accessor for OutgoingVideoMessage(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_12();
  v21 = v20 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC8D1DD8();
  v42 = v16;
  v22 = v43;
  sub_1BC8F8C84();
  if (v22)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v43 = v7;
    v23 = v38;
    v50 = 0;
    OUTLINED_FUNCTION_0_30();
    sub_1BC8D2B74(v24, v25, MEMORY[0x1E69695D0]);
    sub_1BC8F88F4();
    v26 = v21;
    (*(v23 + 32))(v21, v41, v8);
    v49 = 1;
    v27 = sub_1BC8F88A4();
    v28 = (v21 + v17[5]);
    *v28 = v27;
    v28[1] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    v48 = 2;
    sub_1BC8D2A5C(&qword_1EBCF5490, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    v41 = 0;
    sub_1BC8F88F4();
    v30 = a1;
    *(v26 + v17[6]) = v44;
    v47 = 3;
    sub_1BC7C70CC();
    sub_1BC8F88F4();
    *(v26 + v17[7]) = v46;
    v45 = 4;
    OUTLINED_FUNCTION_1_30();
    sub_1BC8D2B74(v31, v32, MEMORY[0x1E6968FD0]);
    v33 = v43;
    v34 = v37;
    sub_1BC8F88F4();
    (*(v39 + 8))(v42, v40);
    (*(v35 + 32))(v26 + v17[8], v33, v34);
    sub_1BC8D2AC8(v26, v36);
    __swift_destroy_boxed_opaque_existential_1(v30);
    sub_1BC890934(v26);
  }
}

uint64_t sub_1BC8D2580(uint64_t a1)
{
  sub_1BC8F8C04();
  OutgoingVideoMessage.hash(into:)();
  return sub_1BC8F8C64();
}

void *VideoMessagingController.__allocating_init()()
{
  v0 = type metadata accessor for VideoMessagingClient();
  swift_allocObject();
  v9[3] = v0;
  v9[4] = &off_1F3B3E0C8;
  v9[0] = sub_1BC8DF360();
  v1 = swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v9, v0);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_12();
  v5 = (v4 - v3);
  (*(v6 + 16))(v4 - v3);
  v7 = *v5;
  v1[5] = v0;
  v1[6] = &off_1F3B3E0C8;
  v1[2] = v7;
  __swift_destroy_boxed_opaque_existential_1(v9);
  return v1;
}

uint64_t VideoMessagingController.sendVideoMessage(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1BC8D26F8, 0, 0);
}

uint64_t sub_1BC8D26F8()
{
  OUTLINED_FUNCTION_5();
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + 16), *(*(v0 + 24) + 40));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1BC8D279C;

  return sub_1BC8DF534();
}

uint64_t sub_1BC8D279C()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t VideoMessagingController.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1BC8D28DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BC8D2974;

  return VideoMessagingController.sendVideoMessage(_:)(a1);
}

uint64_t sub_1BC8D2974()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1BC8D2A5C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCF4ED8, &qword_1BC8FC480);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BC8D2AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutgoingVideoMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC8D2B74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BC8D2BE4(uint64_t a1)
{
  sub_1BC8F7264();
  if (v1 <= 0x3F)
  {
    sub_1BC8D2C90();
    if (v2 <= 0x3F)
    {
      sub_1BC8F7014();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BC8D2C90()
{
  if (!qword_1EDC1DEC8)
  {
    v0 = sub_1BC8F7F24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC1DEC8);
    }
  }
}

uint64_t dispatch thunk of VideoMessagingDataSource.sendVideoMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BC8D2974;

  return v9(a1, a2, a3);
}

_BYTE *storeEnumTagSinglePayload for OutgoingVideoMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BC8D2F24()
{
  result = qword_1EBCF68C0;
  if (!qword_1EBCF68C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF68C0);
  }

  return result;
}

unint64_t sub_1BC8D2F7C()
{
  result = qword_1EBCF68C8;
  if (!qword_1EBCF68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF68C8);
  }

  return result;
}

unint64_t sub_1BC8D2FD4()
{
  result = qword_1EBCF68D0;
  if (!qword_1EBCF68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF68D0);
  }

  return result;
}

uint64_t sub_1BC8D3028(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

uint64_t sub_1BC8D3070()
{
  v0 = sub_1BC8F6ED4();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_12();
  v6 = v5 - v4;
  v7 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v13 = v12 - v11;
  _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
  (*(v2 + 104))(v6, *MEMORY[0x1E6968F70], v0);
  sub_1BC7B7A9C();
  sub_1BC8F7004();
  v14 = OUTLINED_FUNCTION_62_0();
  v15(v14);
  return (*(v9 + 8))(v13, v7);
}

uint64_t sub_1BC8D321C()
{
  v2 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_28();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_156();
  _s20FaceTimeMessageStore011getUserDataD12DirectoryURL10Foundation0I0VyF_0();
  sub_1BC8F6F64();
  v7 = *(v4 + 8);
  v7(v0, v2);
  sub_1BC7C20D0(v1);
  sub_1BC8F6F64();
  v8 = OUTLINED_FUNCTION_62_0();
  return (v7)(v8);
}

id sub_1BC8D3338()
{
  v29[4] = *MEMORY[0x1E69E9840];
  v0 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
  v1 = sub_1BC8F7E54();
  sub_1BC8D3028(v1);
  v3 = v2;

  if (!v3)
  {
    __break(1u);
  }

  v4 = [objc_opt_self() defaultManager];
  v5 = sub_1BC8F7BE4();

  v29[0] = 0;
  v6 = [v4 attributesOfFileSystemForPath:v5 error:v29];

  v7 = v29[0];
  if (v6)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_1BC7C47AC(&qword_1EBCF4AB0, type metadata accessor for FileAttributeKey, &unk_1BC8FB458);
    sub_1BC8F7AA4();
    v8 = v7;

    sub_1BC8E731C();

    if (v29[3])
    {
      sub_1BC7E613C();
      if (swift_dynamicCast())
      {
        if (qword_1EDC20728 != -1)
        {
          OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
        }

        v9 = sub_1BC8F7734();
        __swift_project_value_buffer(v9, qword_1EDC2B3A8);
        v10 = v28;
        v11 = sub_1BC8F7714();
        v12 = sub_1BC8F8204();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v29[0] = v14;
          *v13 = 136446210;
          v15 = [objc_allocWithZone(MEMORY[0x1E696AAF0]) init];
          v16 = [v15 stringFromByteCount_];

          v17 = sub_1BC8F7C24();
          v19 = v18;

          v20 = sub_1BC7A9A4C(v17, v19, v29);

          *(v13 + 4) = v20;
          _os_log_impl(&dword_1BC7A3000, v11, v12, "Got %{public}s of free space", v13, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v14);
          OUTLINED_FUNCTION_6();
          OUTLINED_FUNCTION_6();
        }

        v21 = [v10 longLongValue];
        goto LABEL_17;
      }
    }

    else
    {
      sub_1BC7E6180(v29, &unk_1EBCF5E50, &qword_1BC8FE850);
    }
  }

  else
  {
    v22 = v29[0];
    v23 = sub_1BC8F6EA4();

    swift_willThrow();
  }

  if (qword_1EDC20728 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_1EDC20728);
  }

  v24 = sub_1BC8F7734();
  __swift_project_value_buffer(v24, qword_1EDC2B3A8);
  v10 = sub_1BC8F7714();
  v25 = sub_1BC8F81E4();
  if (os_log_type_enabled(v10, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_1BC7A3000, v10, v25, "Failed to get free storage for device", v26, 2u);
    OUTLINED_FUNCTION_6();
  }

  v21 = 0;
LABEL_17:

  return v21;
}

void static OSTransaction.transaction(withID:with:beginInterval:endInterval:block:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7, unint64_t a8, uint64_t a9, char a10, uint64_t (*a11)(void))
{
  v64 = a8;
  v66 = a7;
  v67 = a5;
  v13 = a3;
  sub_1BC8F76C4();
  OUTLINED_FUNCTION_0();
  v61 = v17;
  v62 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v63 = v19 - v18;
  v20 = sub_1BC8F7684();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_31();
  v68 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v61 - v27;
  inited = swift_initStackObject();
  sub_1BC8D418C(a1, a2, v13);
  sub_1BC8F76A4();
  sub_1BC8F7664();
  v65 = a4;
  v29 = v70;
  v30 = sub_1BC8F76A4();
  sub_1BC8F82D4();
  if (sub_1BC8F83D4())
  {
    if ((v66 & 1) == 0)
    {
      if (v67)
      {
LABEL_8:
        OUTLINED_FUNCTION_45();
        v33 = swift_slowAlloc();
        OUTLINED_FUNCTION_18_16(v33);
        sub_1BC8F7674();
        OUTLINED_FUNCTION_17_16();
        _os_signpost_emit_with_name_impl(v34, v35, v36, v37, v38, v39, v40, v41);
        v42 = OUTLINED_FUNCTION_17_11();
        MEMORY[0x1BFB2AA50](v42);
        v29 = v70;
        goto LABEL_9;
      }

      __break(1u);
    }

    if (HIDWORD(v67))
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_9_19();
      if (v31)
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_25_16();
      if (!(!v31 & v32))
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_9:

  (*(v22 + 16))(v11, v28, v20);
  sub_1BC8F76F4();
  OUTLINED_FUNCTION_21_16();
  swift_allocObject();
  sub_1BC8F76E4();
  a11();
  v43 = v20;
  if (v29)
  {
    (*(v22 + 8))(v28, v20);

    return;
  }

  v44 = sub_1BC8F76A4();
  v45 = v68;
  sub_1BC8F76D4();
  v46 = sub_1BC8F82C4();
  if ((sub_1BC8F83D4() & 1) == 0)
  {
    goto LABEL_21;
  }

  LODWORD(v70) = v46;
  if ((a10 & 1) == 0)
  {
    v47 = v63;
    if (v64)
    {
LABEL_18:
      v67 = v43;

      sub_1BC8F7704();

      v49 = v61;
      v48 = v62;
      if ((*(v61 + 88))(v47, v62) != *MEMORY[0x1E69E93E8])
      {
        (*(v49 + 8))(v47, v48);
      }

      OUTLINED_FUNCTION_45();
      v50 = swift_slowAlloc();
      OUTLINED_FUNCTION_18_16(v50);
      v51 = v68;
      sub_1BC8F7674();
      OUTLINED_FUNCTION_17_16();
      _os_signpost_emit_with_name_impl(v52, v53, v54, v55, v56, v57, v58, v59);
      v45 = v51;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v43 = v67;
LABEL_21:

      v60 = *(v22 + 8);
      v60(v45, v43);
      v60(v28, v43);
      return;
    }

    __break(1u);
  }

  v47 = v63;
  if (HIDWORD(v64))
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_9_19();
  if (!v31)
  {
    OUTLINED_FUNCTION_25_16();
    if (!(!v31 & v32))
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1BC8D3BF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a2;
  *(v5 + 72) = a5;
  *(v5 + 104) = a3;
  *(v5 + 56) = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC8D3C10(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 104);
  type metadata accessor for OSTransaction();
  *(v1 + 80) = swift_initStackObject();
  sub_1BC8D418C(v2, v3, v4);
  v5 = swift_task_alloc();
  *(v1 + 88) = v5;
  *v5 = v1;
  v5[1] = sub_1BC8D3CDC;

  return sub_1BC8C5C68();
}

uint64_t sub_1BC8D3CDC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 96) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8D3DD4()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_1BC8D3E34()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t static OSTransaction.named(_:block:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 80) = a5;
  *(v6 + 88) = v5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a4;
  *(v6 + 120) = a3;
  *(v6 + 56) = a1;
  return OUTLINED_FUNCTION_1_0();
}

{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 80) = a3;
  *(v6 + 16) = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC8D3EB8()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 120);
  *(v0 + 96) = swift_initStackObject();
  sub_1BC8D418C(v3, v2, v4);
  v7 = (v1 + *v1);
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1BC8D3FE0;

  return v7();
}

uint64_t sub_1BC8D3FE0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8D40D8()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_11();

  return v0();
}

uint64_t sub_1BC8D4130()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

void sub_1BC8D418C(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12();
  v13 = v12 - v11;
  if (a3)
  {
    v11 = HIDWORD(a1);
    if (!HIDWORD(a1))
    {
      OUTLINED_FUNCTION_9_19();
      if (v14)
      {
        __break(1u);
        goto LABEL_26;
      }

      v11 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v15 = a1 + 1;
LABEL_9:
          v35 = ((v15 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v15) >> 3)))));
          goto LABEL_10;
        }

LABEL_19:
        v30 = (a1 & 0x3F) << 8;
        v31 = (a1 >> 6) + v30 + 33217;
        v32 = (v30 | (a1 >> 6) & 0x3F) << 8;
        v33 = (a1 >> 18) + ((v32 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v34 = (a1 >> 12) + v32 + 8487393;
        if (v11)
        {
          v15 = v33;
        }

        else
        {
          v15 = v34;
        }

        if (a1 < 0x800)
        {
          v15 = v31;
        }

        goto LABEL_9;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_10:
  v35 = sub_1BC8F7CC4();
  v36 = v16;

  MEMORY[0x1BFB29120](46, 0xE100000000000000);
  sub_1BC8F7254();
  v17 = sub_1BC8F7204();
  v19 = v18;
  (*(v9 + 8))(v13, v7);

  MEMORY[0x1BFB29120](v17, v19);

  v21 = v35;
  v20 = v36;
  v4[2] = v35;
  v4[3] = v20;
  v22 = qword_1EDC1E1D0;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = sub_1BC8F7734();
  __swift_project_value_buffer(v23, qword_1EDC2B268);

  v24 = sub_1BC8F7714();
  v25 = sub_1BC8F8204();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_1BC7A9A4C(v21, v20, &v35);
    _os_log_impl(&dword_1BC7A3000, v24, v25, "Opening transaction: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v28 = OUTLINED_FUNCTION_17_11();
    MEMORY[0x1BFB2AA50](v28);
  }

  sub_1BC8F7CA4();
  v29 = os_transaction_create();

  if (v29)
  {

    v4[4] = v29;
    return;
  }

LABEL_26:
  __break(1u);
}

void sub_1BC8D4500()
{
  v1 = v0;
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B268);

  oslog = sub_1BC8F7714();
  v3 = sub_1BC8F8204();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1BC7A9A4C(*(v1 + 16), *(v1 + 24), &v7);
    _os_log_impl(&dword_1BC7A3000, oslog, v3, "Closing transaction: %{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
    MEMORY[0x1BFB2AA50](v4, -1, -1);
  }
}

uint64_t OSTransaction.deinit()
{
  sub_1BC8D4500();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t OSTransaction.__deallocating_deinit()
{
  OSTransaction.deinit();
  v0 = OUTLINED_FUNCTION_14_18();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t static OSTransaction.named(_:block:)()
{
  OUTLINED_FUNCTION_13_20();
  swift_initStackObject();
  OUTLINED_FUNCTION_20_15();
  v0();
}

{
  OUTLINED_FUNCTION_13_20();
  OUTLINED_FUNCTION_14_18();
  swift_allocObject();
  OUTLINED_FUNCTION_20_15();
  v0(v1);
}

uint64_t sub_1BC8D4798()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v4 = *(v0 + 80);
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  sub_1BC8D418C(v3, v2, v4);
  v8 = (v1 + *v1);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1BC8D48CC;

  return v8(v5);
}

uint64_t sub_1BC8D48CC()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8D49C4()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_11();

  return v0();
}

void static OSTransaction.transaction(withID:and:beginInterval:endInterval:block:)(unint64_t a1, uint64_t a2, char a3, uint64_t a4, NSObject *a5, uint64_t a6, int a7, const char *a8, uint64_t a9, char a10, uint64_t (*a11)(uint64_t))
{
  v58 = a8;
  LODWORD(v60) = a7;
  v61 = a5;
  sub_1BC8F76C4();
  OUTLINED_FUNCTION_0();
  v56 = v17;
  v57 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12();
  v55 = v19 - v18;
  v20 = sub_1BC8F7684();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_31();
  v62 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_7_3();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v53 - v27;
  OUTLINED_FUNCTION_14_18();
  v29 = swift_allocObject();
  v30 = a3;
  v31 = v29;
  sub_1BC8D418C(a1, a2, v30);
  sub_1BC8F76A4();
  sub_1BC8F7664();
  v59 = a4;
  v32 = sub_1BC8F76A4();
  v33 = sub_1BC8F82D4();
  if (sub_1BC8F83D4())
  {
    v54 = v31;
    if ((v60 & 1) == 0)
    {
      v34 = v61;
      if (v61)
      {
LABEL_9:
        OUTLINED_FUNCTION_45();
        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = sub_1BC8F7674();
        _os_signpost_emit_with_name_impl(&dword_1BC7A3000, v32, v33, v38, v34, "", v37, 2u);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
        v31 = v54;
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v61 >> 32)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_9_19();
      if (v35)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      OUTLINED_FUNCTION_25_16();
      if (!(!v35 & v36))
      {
        v34 = &v64;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

LABEL_10:

  (*(v22 + 16))(v11, v28, v20);
  sub_1BC8F76F4();
  OUTLINED_FUNCTION_21_16();
  swift_allocObject();
  sub_1BC8F76E4();
  v39 = v63;
  a11(v31);
  if (v39)
  {
    (*(v22 + 8))(v28, v20);

    return;
  }

  v40 = sub_1BC8F76A4();
  v41 = v62;
  sub_1BC8F76D4();
  LODWORD(v63) = sub_1BC8F82C4();
  if ((sub_1BC8F83D4() & 1) == 0)
  {
    goto LABEL_24;
  }

  v61 = v40;
  if (a10)
  {
LABEL_16:
    v41 = v62;
    if (!HIDWORD(v58))
    {
      OUTLINED_FUNCTION_9_19();
      if (v35)
      {
LABEL_31:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_25_16();
      if (!(!v35 & v36))
      {
        v42 = &v65;
        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v42 = v58;
  v41 = v62;
  if (!v58)
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_20:
  v62 = v22;
  v60 = v20;

  v43 = v55;
  sub_1BC8F7704();

  v45 = v56;
  v44 = v57;
  if ((*(v56 + 88))(v43, v57) == *MEMORY[0x1E69E93E8])
  {
    v46 = v42;
    v47 = "[Error] Interval already ended";
  }

  else
  {
    v48 = v43;
    v46 = v42;
    (*(v45 + 8))(v48, v44);
    v47 = "";
  }

  OUTLINED_FUNCTION_45();
  v49 = swift_slowAlloc();
  *v49 = 0;
  v50 = sub_1BC8F7674();
  v51 = v61;
  _os_signpost_emit_with_name_impl(&dword_1BC7A3000, v61, v63, v50, v46, v47, v49, 2u);
  v40 = v51;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1BFB2AA50]();
  v20 = v60;
  v22 = v62;
LABEL_24:

  v52 = *(v22 + 8);
  v52(v41, v20);
  v52(v28, v20);
}