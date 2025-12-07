uint64_t sub_1DCFCBE68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x80000001DD128E80 == a2;
  if (v3 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001DD128EA0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

unint64_t sub_1DCFCBF3C(char a1)
{
  if (a1)
  {
    return 0xD00000000000001CLL;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_1DCFCBFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCFCBE68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCFCBFD0(uint64_t a1)
{
  v2 = sub_1DCFCC424();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFCC00C(uint64_t a1)
{
  v2 = sub_1DCFCC424();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCFCC048(uint64_t a1)
{
  v2 = sub_1DCFCC520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFCC084(uint64_t a1)
{
  v2 = sub_1DCFCC520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DCFCC0C0(uint64_t a1)
{
  v2 = sub_1DCFCC478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCFCC0FC(uint64_t a1)
{
  v2 = sub_1DCFCC478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriKitUIModel.encode(to:)()
{
  OUTLINED_FUNCTION_20_3();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABB18, &qword_1DD108220);
  OUTLINED_FUNCTION_9();
  v28 = v5;
  v29 = v4;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v26 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABB20, &qword_1DD108228);
  OUTLINED_FUNCTION_9();
  v26 = v10;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v26 - v13;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABB28, &qword_1DD108230);
  OUTLINED_FUNCTION_9();
  v16 = v15;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v26 - v19;
  v21 = v1[1];
  v30 = *v1;
  v31 = v21;
  v22 = v1[3];
  v32 = v1[2];
  v33 = v22;
  v23 = *(v1 + 112);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DCFCC424();
  sub_1DD0DF24C();
  if (v23)
  {
    v35[0] = 1;
    sub_1DCFCC478();
    OUTLINED_FUNCTION_16_58(&type metadata for SiriKitUIModel.SiriNeedsLocationAccessErrorCodingKeys, v35);
    OUTLINED_FUNCTION_15_63();
    sub_1DCFCC4CC();
    v24 = v29;
    sub_1DD0DEFFC();
    (*(v28 + 8))(v9, v24);
  }

  else
  {
    v35[0] = 0;
    sub_1DCFCC520();
    OUTLINED_FUNCTION_16_58(&type metadata for SiriKitUIModel.LocationAccessCarPlayPromptCodingKeys, v35);
    OUTLINED_FUNCTION_15_63();
    memcpy(v36, v1 + 4, sizeof(v36));
    sub_1DCFCC574();
    v25 = v27;
    sub_1DD0DEFFC();
    (*(v26 + 8))(v14, v25);
  }

  (*(v16 + 8))(v20, v23);
  OUTLINED_FUNCTION_19_19();
}

unint64_t sub_1DCFCC424()
{
  result = qword_1ECCABB30;
  if (!qword_1ECCABB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB30);
  }

  return result;
}

unint64_t sub_1DCFCC478()
{
  result = qword_1ECCABB38;
  if (!qword_1ECCABB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB38);
  }

  return result;
}

unint64_t sub_1DCFCC4CC()
{
  result = qword_1ECCABB40;
  if (!qword_1ECCABB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB40);
  }

  return result;
}

unint64_t sub_1DCFCC520()
{
  result = qword_1ECCABB48;
  if (!qword_1ECCABB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB48);
  }

  return result;
}

unint64_t sub_1DCFCC574()
{
  result = qword_1ECCABB50;
  if (!qword_1ECCABB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB50);
  }

  return result;
}

void SiriKitUIModel.init(from:)()
{
  OUTLINED_FUNCTION_20_3();
  v52 = v0;
  v3 = v2;
  v50 = v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABB58, &qword_1DD108238);
  OUTLINED_FUNCTION_9();
  v48 = v5;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABB60, &qword_1DD108240);
  OUTLINED_FUNCTION_9();
  v47 = v11;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABB68, &unk_1DD108248);
  OUTLINED_FUNCTION_9();
  v51 = v17;
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_4_1();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1DCFCC424();
  v20 = v52;
  sub_1DD0DF23C();
  if (v20)
  {
    goto LABEL_9;
  }

  v45[0] = v15;
  v45[1] = v9;
  v21 = v51;
  v52 = v3;
  v46 = v1;
  v22 = sub_1DD0DEF5C();
  sub_1DCB547F8(v22, 0);
  if (v25 == v26 >> 1)
  {
LABEL_7:
    v34 = sub_1DD0DECAC();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA43D8, &qword_1DD0F0640);
    *v36 = &type metadata for SiriKitUIModel;
    v37 = v46;
    sub_1DD0DEECC();
    sub_1DD0DEC8C();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v21 + 8))(v37, v16);
    v3 = v52;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
LABEL_10:
    OUTLINED_FUNCTION_19_19();
    return;
  }

  if (v25 < (v26 >> 1))
  {
    v56 = *(v24 + v25);
    v27 = sub_1DCB54800(v25 + 1, v26 >> 1, v23, v24, v25, v26);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    if (v29 == v31 >> 1)
    {
      if (v56)
      {
        v53[0] = 1;
        sub_1DCFCC478();
        OUTLINED_FUNCTION_7_76(&type metadata for SiriKitUIModel.SiriNeedsLocationAccessErrorCodingKeys, v53);
        v32 = v50;
        v33 = v27;
        sub_1DCFCCC30();
        v38 = v31;
        v39 = v49;
        sub_1DD0DEF4C();
        v27 = (v48 + 8);
        v21 += 8;
        swift_unknownObjectRelease();
        (*v27)(v38, v39);
        v42 = OUTLINED_FUNCTION_14_2();
        v43(v42);
        OUTLINED_FUNCTION_6_78();
        v44 = 1;
      }

      else
      {
        v33 = v10;
        v53[0] = 0;
        sub_1DCFCC520();
        OUTLINED_FUNCTION_7_76(&type metadata for SiriKitUIModel.LocationAccessCarPlayPromptCodingKeys, v53);
        sub_1DCFCCC84();
        sub_1DD0DEF4C();
        v40 = v31;
        v41 = (v47 + 8);
        v38 = v21 + 8;
        swift_unknownObjectRelease();
        (*v41)(v40, v10);
        (*(v21 + 8))(v10, v16);
        OUTLINED_FUNCTION_6_78();
        memcpy(v55, v54, sizeof(v55));
        v44 = 0;
        v32 = v50;
      }

      *v32 = v38;
      *(v32 + 8) = v27;
      *(v32 + 16) = v21;
      *(v32 + 24) = v33;
      memcpy((v32 + 32), v55, 0x50uLL);
      *(v32 + 112) = v44;
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  __break(1u);
}

unint64_t sub_1DCFCCC30()
{
  result = qword_1ECCABB70;
  if (!qword_1ECCABB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB70);
  }

  return result;
}

unint64_t sub_1DCFCCC84()
{
  result = qword_1ECCABB78;
  if (!qword_1ECCABB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB78);
  }

  return result;
}

unint64_t sub_1DCFCCCEC()
{
  result = qword_1ECCABB80;
  if (!qword_1ECCABB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB80);
  }

  return result;
}

unint64_t sub_1DCFCCD44()
{
  result = qword_1ECCABB88;
  if (!qword_1ECCABB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB88);
  }

  return result;
}

double sub_1DCFCCD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if ((a15 & 1) == 0)
  {

    sub_1DCB3E244(a7, a8, a9, a10);
  }

  return result;
}

uint64_t sub_1DCFCCE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{

  if ((a15 & 1) == 0)
  {

    sub_1DCCEA1B0(a7, a8);
  }

  return result;
}

uint64_t initializeWithCopy for SiriKitUIModel(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  v15 = *(a2 + 88);
  v16 = *(a2 + 96);
  v17 = *(a2 + 104);
  v18 = *(a2 + 112);
  sub_1DCFCCD98(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v15;
  *(a1 + 96) = v16;
  *(a1 + 104) = v17;
  *(a1 + 112) = v18;
  return a1;
}

uint64_t assignWithCopy for SiriKitUIModel(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v26 = *(a2 + 72);
  v27 = *(a2 + 80);
  v28 = *(a2 + 88);
  v29 = *(a2 + 96);
  v30 = *(a2 + 104);
  v31 = *(a2 + 112);
  sub_1DCFCCD98(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v26, v27, v28, v29, v30, v31);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = *(a1 + 80);
  v22 = *(a1 + 96);
  v23 = *(a1 + 104);
  v24 = *(a1 + 112);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v26;
  *(a1 + 80) = v27;
  *(a1 + 88) = v28;
  *(a1 + 96) = v29;
  *(a1 + 104) = v30;
  *(a1 + 112) = v31;
  sub_1DCFCCE88(v12, v13, v14, v15, v16, v17, v18, v19, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, v23, v24);
  return a1;
}

uint64_t assignWithTake for SiriKitUIModel(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 112);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a1 + 80);
  v14 = *(a1 + 96);
  v15 = *(a1 + 104);
  v16 = *(a1 + 112);
  v17 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v17;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  v19 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v19;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v3;
  sub_1DCFCCE88(v4, v6, v5, v7, v8, v9, v10, v11, v12, *(&v12 + 1), v13, *(&v13 + 1), v14, v15, v16);
  return a1;
}

uint64_t getEnumTagSinglePayload for SiriKitUIModel(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 113))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 112);
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

uint64_t storeEnumTagSinglePayload for SiriKitUIModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

uint64_t destroy for SiriKitUIModel.LocationAccessCarPlayPromptModel(uint64_t a1)
{

  if (*(a1 + 56))
  {
  }
}

void *initializeWithCopy for SiriKitUIModel.LocationAccessCarPlayPromptModel(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  v6 = a2[5];
  a1[4] = a2[4];
  a1[5] = v6;
  v7 = a2[7];

  if (v7)
  {
    a1[6] = a2[6];
    a1[7] = v7;
    v8 = a2[9];
    a1[8] = a2[8];
    a1[9] = v8;
  }

  else
  {
    v9 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v9;
  }

  v10 = a2[11];
  a1[10] = a2[10];
  a1[11] = v10;
  v11 = a2[12];
  v12 = a2[13];
  a1[12] = v11;
  a1[13] = v12;

  return a1;
}

void *assignWithCopy for SiriKitUIModel.LocationAccessCarPlayPromptModel(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  a1[4] = a2[4];
  a1[5] = a2[5];

  v4 = a2[7];
  if (a1[7])
  {
    if (v4)
    {
      a1[6] = a2[6];
      a1[7] = a2[7];

      a1[8] = a2[8];
      a1[9] = a2[9];
    }

    else
    {
      sub_1DCFCD534((a1 + 6));
      v5 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v5;
    }
  }

  else if (v4)
  {
    a1[6] = a2[6];
    a1[7] = a2[7];
    a1[8] = a2[8];
    a1[9] = a2[9];
  }

  else
  {
    v6 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v6;
  }

  a1[10] = a2[10];
  a1[11] = a2[11];

  a1[12] = a2[12];
  a1[13] = a2[13];

  return a1;
}

uint64_t assignWithTake for SiriKitUIModel.LocationAccessCarPlayPromptModel(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  if (!*(a1 + 56))
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 56);
  if (!v7)
  {
    sub_1DCFCD534(a1 + 48);
LABEL_5:
    v9 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v9;
    goto LABEL_6;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;

  v8 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v8;

LABEL_6:
  v10 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v10;

  v11 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v11;

  return a1;
}

uint64_t getEnumTagSinglePayload for SiriKitUIModel.LocationAccessCarPlayPromptModel(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for SiriKitUIModel.LocationAccessCarPlayPromptModel(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1DCFCD6F0(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SiriKitUIModel.LocationAccessCarPlayPromptModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1DCFCD888(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCFCD968()
{
  result = qword_1ECCABB90;
  if (!qword_1ECCABB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB90);
  }

  return result;
}

unint64_t sub_1DCFCD9C0()
{
  result = qword_1ECCABB98;
  if (!qword_1ECCABB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABB98);
  }

  return result;
}

unint64_t sub_1DCFCDA18()
{
  result = qword_1ECCABBA0;
  if (!qword_1ECCABBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBA0);
  }

  return result;
}

unint64_t sub_1DCFCDA70()
{
  result = qword_1ECCABBA8;
  if (!qword_1ECCABBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBA8);
  }

  return result;
}

unint64_t sub_1DCFCDAC8()
{
  result = qword_1ECCABBB0;
  if (!qword_1ECCABBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBB0);
  }

  return result;
}

unint64_t sub_1DCFCDB20()
{
  result = qword_1ECCABBB8;
  if (!qword_1ECCABBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBB8);
  }

  return result;
}

unint64_t sub_1DCFCDB78()
{
  result = qword_1ECCABBC0;
  if (!qword_1ECCABBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBC0);
  }

  return result;
}

unint64_t sub_1DCFCDBD0()
{
  result = qword_1ECCABBC8;
  if (!qword_1ECCABBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBC8);
  }

  return result;
}

unint64_t sub_1DCFCDC28()
{
  result = qword_1ECCABBD0;
  if (!qword_1ECCABBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBD0);
  }

  return result;
}

unint64_t sub_1DCFCDC80()
{
  result = qword_1ECCABBD8;
  if (!qword_1ECCABBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBD8);
  }

  return result;
}

unint64_t sub_1DCFCDCD8()
{
  result = qword_1ECCABBE0;
  if (!qword_1ECCABBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBE0);
  }

  return result;
}

unint64_t sub_1DCFCDD30()
{
  result = qword_1ECCABBE8;
  if (!qword_1ECCABBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBE8);
  }

  return result;
}

unint64_t sub_1DCFCDD88()
{
  result = qword_1ECCABBF0;
  if (!qword_1ECCABBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBF0);
  }

  return result;
}

unint64_t sub_1DCFCDDE0()
{
  result = qword_1ECCABBF8;
  if (!qword_1ECCABBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABBF8);
  }

  return result;
}

unint64_t sub_1DCFCDE38()
{
  result = qword_1ECCABC00;
  if (!qword_1ECCABC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABC00);
  }

  return result;
}

unint64_t sub_1DCFCDE90()
{
  result = qword_1ECCABC08;
  if (!qword_1ECCABC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABC08);
  }

  return result;
}

unint64_t sub_1DCFCDEE8()
{
  result = qword_1ECCABC10;
  if (!qword_1ECCABC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABC10);
  }

  return result;
}

unint64_t sub_1DCFCDF40()
{
  result = qword_1ECCABC18[0];
  if (!qword_1ECCABC18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCABC18);
  }

  return result;
}

uint64_t sub_1DCFCDFAC(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v4 = v2;
  if (v5 <= 0x3F)
  {
    v4 = type metadata accessor for SiriKitWaitToContinueFlow.State(319, v2, *(a1 + 88), v3);
    if (v6 <= 0x3F)
    {
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_1DCFCE09C(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  sub_1DCFCE6E4(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_1DCFCE104@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 88);
  v7 = type metadata accessor for SiriKitWaitToContinueFlow.State(0, v3, v5, v6);
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v20 - v12;
  sub_1DCFCE538(&v20 - v12);
  result = swift_getEnumCaseMultiPayload();
  if (result == 6)
  {
    v17 = v13[8];
    *a1 = *v13;
    *(a1 + 8) = v17;
    v16 = 1;
    goto LABEL_5;
  }

  if (result == 5)
  {
    v16 = v13[16];
    *a1 = *v13;
LABEL_5:
    *(a1 + 16) = v16;
    return result;
  }

  type metadata accessor for SiriKitWaitToContinueFlow.WaitToContinueError(0, v3, v5, v15);
  OUTLINED_FUNCTION_1_131();
  swift_getWitnessTable();
  v18 = swift_allocError();
  sub_1DCFCE538(v19);
  *a1 = v18;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return (*(v9 + 8))(v13, v7);
}

void sub_1DCFCE284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SiriKitWaitToContinueFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  MEMORY[0x1EEE9AC00](v5, v6);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFCE538@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_59();
  v8 = type metadata accessor for SiriKitWaitToContinueFlow.State(0, v6, *(v5 + 88), v7);
  return (*(*(v8 - 8) + 16))(a1, v1 + v4, v8);
}

void sub_1DCFCE5EC(uint64_t a1)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 120);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_59();
  v8 = type metadata accessor for SiriKitWaitToContinueFlow.State(0, v6, *(v5 + 88), v7);
  (*(*(v8 - 8) + 24))(v1 + v4, a1, v8);
  v9 = swift_endAccess();
  sub_1DCFCE284(v9, v10, v11, v12);
}

uint64_t *sub_1DCFCE6E4(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4)
{
  v8 = *v4;
  v9 = *(a2 + 16);
  v10 = *(*v4 + 80);
  (*(*(v10 - 8) + 32))(v4 + *(*v4 + 96), a1, v10);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a3, v4 + *(v11 + 104));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a4, v4 + *(v12 + 112));
  OUTLINED_FUNCTION_66();
  v14 = v4 + *(v13 + 120);
  *v14 = *a2;
  *(v14 + 16) = v9;
  type metadata accessor for SiriKitWaitToContinueFlow.State(0, v10, *(v8 + 88), v15);
  swift_storeEnumTagMultiPayload();
  return v4;
}

uint64_t sub_1DCFCE814(uint64_t a1)
{
  OUTLINED_FUNCTION_8_2();
  v3 = *(v2 + 80);
  OUTLINED_FUNCTION_8_2();
  v5 = *(v4 + 88);
  type metadata accessor for SiriKitWaitToContinueFlow.State(0, v3, v5, v6);
  OUTLINED_FUNCTION_9();
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = (v24 - v13);
  sub_1DCFCE538(v24 - v13);
  if (swift_getEnumCaseMultiPayload() - 1 > 1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v22 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v16 = v14[1];
  v15 = v14[2];
  v17 = *v14;
  v25[0] = v17;
  v25[1] = v16;
  v25[2] = v15;
  (*(v5 + 24))(&v26, a1, v25, v3, v5);
  if (!v26)
  {
    *v11 = v17;
    v11[1] = v16;
    v11[2] = v15;
LABEL_9:
    swift_storeEnumTagMultiPayload();
    sub_1DCFCE5EC(v11);
  }

  if (v26 == 1)
  {
    v24[1] = type metadata accessor for Input(255);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v19 = swift_getAssociatedTypeWitness();
    type metadata accessor for IntentResolutionRecord(255, AssociatedTypeWitness, v19, v20);
    v21 = (v11 + *(swift_getTupleTypeMetadata2() + 48));
    sub_1DCC174D4(a1, v11);
    *v21 = v17;
    v21[1] = v16;
    v21[2] = v15;
    goto LABEL_9;
  }

  return 0;
}

void sub_1DCFCEBA0()
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  type metadata accessor for SiriKitWaitToContinueFlow(0, v1, *(v0 + 88), v2);
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCFCEC3C()
{
  OUTLINED_FUNCTION_42();
  v1[19] = v2;
  v1[20] = v0;
  v3 = *v0;
  v1[21] = type metadata accessor for Input(0);
  v1[22] = swift_task_alloc();
  v4 = *(v3 + 80);
  v1[23] = v4;
  v5 = *(v3 + 88);
  v1[24] = v5;
  v7 = type metadata accessor for SiriKitWaitToContinueFlow.State(0, v4, v5, v6);
  v1[25] = v7;
  v1[26] = *(v7 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCFCED64()
{
  v54 = v0;
  sub_1DCFCE538(v0[28]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v50 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v50, qword_1EDE57E00);
      sub_1DD0DCF8C();
    case 2u:
      v25 = v0[19];
      (*(v0[26] + 8))(v0[28], v0[25]);
      static ExecuteResponse.ongoing(requireInput:)(1, v25);
      break;
    case 3u:
      v26 = v0[28];
      v27 = v0[22];
      v28 = OUTLINED_FUNCTION_18_49();
      v29 = OUTLINED_FUNCTION_18_49();
      type metadata accessor for IntentResolutionRecord(255, v28, v29, v30);
      v31 = (v26 + *(swift_getTupleTypeMetadata2() + 48));
      v32 = *v31;
      v0[29] = *v31;
      v33 = v31[1];
      v0[30] = v33;
      v34 = v31[2];
      v0[31] = v34;
      sub_1DCC333DC(v26, v27);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v35 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v35, qword_1EDE57E00);
      v36 = sub_1DD0DD8EC();
      v37 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v37))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v38, v39, "SiriKitWaitToContinueFlow continuing with new input.");
        OUTLINED_FUNCTION_80();
      }

      v0[12] = v32;
      v0[13] = v33;
      v0[14] = v34;
      v40 = swift_task_alloc();
      v0[32] = v40;
      *v40 = v0;
      v40[1] = sub_1DCFCF5C8;
      OUTLINED_FUNCTION_73();

      __asm { BRAA            X5, X16 }

      return result;
    case 4u:
      v6 = v0[28];
      v7 = *v6;
      v0[34] = *v6;
      v8 = v6[1];
      v0[35] = v8;
      v9 = v6[2];
      v0[36] = v9;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v10 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v10, qword_1EDE57E00);
      v11 = sub_1DD0DD8EC();
      v12 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v12))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v13, v14, "SiriKitWaitToContinueFlow was cancelled while waiting. Publishing ConfirmIntentFlowStrategy's cancel response and exiting.");
        OUTLINED_FUNCTION_80();
      }

      v15 = v0[20];

      __swift_project_boxed_opaque_existential_1((v15 + *(*v15 + 104)), *(v15 + *(*v15 + 104) + 24));
      v16 = swift_task_alloc();
      v0[37] = v16;
      v16[2] = v15;
      v16[3] = v7;
      v16[4] = v8;
      v16[5] = v9;
      v17 = swift_task_alloc();
      v0[38] = v17;
      *v17 = v0;
      v17[1] = sub_1DCFCF7A4;
      OUTLINED_FUNCTION_73();

      return sub_1DCB63BBC(v18, v19, v20, v21, v22);
    case 5u:
    case 6u:
      (*(v0[26] + 8))(v0[28], v0[25]);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v1 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
      v2 = sub_1DD0DD8EC();
      v3 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v3))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v4, v5, "SiriKitWaitToContinueFlow execution complete.");
        OUTLINED_FUNCTION_80();
      }

      static ExecuteResponse.complete()();
      break;
    default:
      v43 = v0[28];
      v44 = v0[24];
      v45 = v0[23];
      v46 = v0[20];
      v47 = v43[1];
      v48 = v43[2];
      v49 = *v46;
      v53[0] = *v43;
      v53[1] = v47;
      v53[2] = v48;
      sub_1DCCA88A8(v53, v46 + *(v49 + 112), v45, v44);
  }

  OUTLINED_FUNCTION_13_73();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_73();

  __asm { BRAA            X1, X16 }

  return result;
}

uint64_t sub_1DCFCF5C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 264) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCFCF6C8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 216);
  v2 = *(v0 + 128);
  *v1 = *(v0 + 120);
  *(v1 + 8) = v2;
  *(v1 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v3 = v2;
  sub_1DCFCE5EC(v1);
}

uint64_t sub_1DCFCF7A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v3 + 312) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCFCF8B8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 216);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  sub_1DCFCE5EC(v1);
}

void sub_1DCFCF978()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 264);
  v2 = *(v0 + 216);
  *v2 = v1;
  *(v2 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v3 = v1;
  sub_1DCFCE5EC(v2);
}

void sub_1DCFCFA54()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 216);

  *v2 = v1;
  *(v2 + 8) = 0;
  swift_storeEnumTagMultiPayload();
  v3 = v1;
  sub_1DCFCE5EC(v2);
}

void sub_1DCFCFB78(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *a1;
  v6 = v4;
  sub_1DCFCFE58(&v5, a2, a3, a4);
}

uint64_t sub_1DCFCFBB8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = a5;
  v8 = *(v7 + 88);
  v9 = *(v7 + 80);
  v12 = (*(v8 + 72) + **(v8 + 72));
  v10 = swift_task_alloc();
  v5[5] = v10;
  *v10 = v5;
  v10[1] = sub_1DCFCFD3C;

  return v12(a1, v5 + 2, v9, v8);
}

uint64_t sub_1DCFCFD3C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;
  *(v4 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v8();
  }
}

void sub_1DCFCFE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(*v5 + 88);
  v32 = *(*v5 + 80);
  v8 = type metadata accessor for SiriKitWaitToContinueFlow.State(0, v32, v7, a4);
  OUTLINED_FUNCTION_9();
  v10 = v9;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = (&v32 - v17);
  v20 = *a1;
  v19 = *(a1 + 8);
  v21 = *(a1 + 16);
  sub_1DCFCE538(&v32 - v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v18;
    v23 = v18[1];
    v24 = v18[2];
    if (!v21 && v20 != 2 && (v20 & 1) != 0)
    {
      v25 = qword_1EDE4F900;
      v26 = v19;
      if (v25 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v27 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v27, qword_1EDE57E00);
      v28 = sub_1DD0DD8EC();
      v29 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = OUTLINED_FUNCTION_50_0();
        *v30 = 0;
        _os_log_impl(&dword_1DCAFC000, v28, v29, "SiriKitWaitToContinueFlow received a rejection from the ConfirmIntentFlow. Will transition to waiting to continue.", v30, 2u);
        OUTLINED_FUNCTION_80();
      }

      *v15 = v22;
      v15[1] = v23;
      v15[2] = v24;
      OUTLINED_FUNCTION_131();
      swift_storeEnumTagMultiPayload();
      sub_1DD0DCF8C();
    }

    *v15 = v20;
    v15[1] = v19;
    *(v15 + 16) = v21;
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    sub_1DCBB12F4(v20, v19, v21);
    sub_1DCFCE5EC(v15);
  }

  (*(v10 + 8))(v18, v8);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v31 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v31, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

unint64_t sub_1DCFD0258(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      (*(v3 + 8))(v5, a1);
      v6 = 0xD000000000000017;
      break;
    case 2u:
      v6 = 0xD000000000000012;
      (*(v3 + 8))(v5, a1);
      break;
    case 3u:
      v6 = 0xD000000000000012;
      type metadata accessor for Input(255);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v8 = swift_getAssociatedTypeWitness();
      type metadata accessor for IntentResolutionRecord(255, AssociatedTypeWitness, v8, v9);
      v10 = &v5[*(swift_getTupleTypeMetadata2() + 48)];
      v11 = *(v10 + 1);

      sub_1DCE984F8(v5);
      break;
    case 4u:
      (*(v3 + 8))(v5, a1);
      v6 = 0xD00000000000001CLL;
      break;
    case 5u:
      (*(v3 + 8))(v5, a1);
      v6 = 0x74656C706D6F632ELL;
      break;
    case 6u:
      v12 = *v5;
      v13 = v5[8];
      v19 = 0x28726F7272652ELL;
      v20 = 0xE700000000000000;
      swift_getErrorValue();
      v14 = sub_1DD0DF18C();
      MEMORY[0x1E12A6780](v14);

      MEMORY[0x1E12A6780](8236, 0xE200000000000000);
      if (v13)
      {
        v15 = 1702195828;
      }

      else
      {
        v15 = 0x65736C6166;
      }

      if (v13)
      {
        v16 = 0xE400000000000000;
      }

      else
      {
        v16 = 0xE500000000000000;
      }

      MEMORY[0x1E12A6780](v15, v16);

      MEMORY[0x1E12A6780](41, 0xE100000000000000);

      v6 = v19;
      break;
    default:
      (*(v3 + 8))(v5, a1);
      v6 = 0x646574726174732ELL;
      break;
  }

  return v6;
}

uint64_t *sub_1DCFD05D8()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 96), v2);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 104)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v4 + 112)));
  OUTLINED_FUNCTION_66();
  v6 = *(v5 + 120);
  v8 = type metadata accessor for SiriKitWaitToContinueFlow.State(0, v2, *(v1 + 88), v7);
  (*(*(v8 - 8) + 8))(v0 + v6, v8);
  return v0;
}

uint64_t sub_1DCFD06EC()
{
  sub_1DCFD05D8();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFD0774(uint64_t a1)
{
  v4 = &unk_1DD108C08;
  v5 = &unk_1DD108C08;
  v6 = &unk_1DD108C08;
  result = type metadata accessor for Input(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v7 = &v3;
    v8 = &unk_1DD108C08;
    v9 = &unk_1DD108C20;
    v10 = &unk_1DD108C38;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_1DCFD0838(char *a1, char **a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v15 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v15;
      *(a1 + 2) = a2[2];
      sub_1DD0DCF8C();
    case 2u:
      v7 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v7;
      *(a1 + 2) = a2[2];
      sub_1DD0DCF8C();
    case 3u:
      v8 = sub_1DD0DB04C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      v9 = type metadata accessor for Input(0);
      v10 = v9[5];
      v11 = &a1[v10];
      v12 = a2 + v10;
      v13 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v14 = sub_1DD0DC76C();
          (*(*(v14 - 8) + 16))(v11, v12, v14);
          goto LABEL_34;
        case 1u:
          v29 = sub_1DD0DC76C();
          (*(*(v29 - 8) + 16))(v11, v12, v29);
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v11[*(v30 + 48)] = *&v12[*(v30 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v23 = *(v12 + 1);
          *v11 = *v12;
          *(v11 + 1) = v23;
          *(v11 + 2) = *(v12 + 2);

          goto LABEL_34;
        case 3u:
          *v11 = *v12;
          swift_unknownObjectRetain();
          goto LABEL_34;
        case 4u:
          v21 = sub_1DD0DB1EC();
          (*(*(v21 - 8) + 16))(v11, v12, v21);
          goto LABEL_34;
        case 5u:
          v31 = *v12;
          *v11 = *v12;
          v32 = v31;
          goto LABEL_34;
        case 6u:
          v33 = sub_1DD0DB4BC();
          (*(*(v33 - 8) + 16))(v11, v12, v33);
          v34 = type metadata accessor for USOParse(0);
          v35 = v34[5];
          v36 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v12[v35], 1, v36))
          {
            v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v11[v35], &v12[v35], *(*(v37 - 8) + 64));
          }

          else
          {
            (*(*(v36 - 8) + 16))(&v11[v35], &v12[v35], v36);
            __swift_storeEnumTagSinglePayload(&v11[v35], 0, 1, v36);
          }

          v68 = v34[6];
          v69 = &v11[v68];
          v70 = &v12[v68];
          v71 = *(v70 + 1);
          *v69 = *v70;
          *(v69 + 1) = v71;
          v72 = v34[7];
          v73 = &v11[v72];
          v74 = &v12[v72];
          v73[4] = v74[4];
          *v73 = *v74;

          goto LABEL_34;
        case 7u:
          v24 = sub_1DD0DB4BC();
          (*(*(v24 - 8) + 16))(v11, v12, v24);
          v25 = type metadata accessor for USOParse(0);
          v26 = v25[5];
          v27 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v12[v26], 1, v27))
          {
            v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v11[v26], &v12[v26], *(*(v28 - 8) + 64));
          }

          else
          {
            (*(*(v27 - 8) + 16))(&v11[v26], &v12[v26], v27);
            __swift_storeEnumTagSinglePayload(&v11[v26], 0, 1, v27);
          }

          v48 = v25[6];
          v49 = &v11[v48];
          v50 = &v12[v48];
          v51 = *(v50 + 1);
          *v49 = *v50;
          *(v49 + 1) = v51;
          v52 = v25[7];
          v53 = &v11[v52];
          v54 = &v12[v52];
          v53[4] = v54[4];
          *v53 = *v54;
          v55 = type metadata accessor for LinkParse(0);
          v56 = v55[5];
          v57 = &v11[v56];
          v58 = &v12[v56];
          v59 = *(v58 + 1);
          *v57 = *v58;
          *(v57 + 1) = v59;
          v60 = v55[6];
          v61 = &v11[v60];
          v62 = &v12[v60];
          v63 = *(v62 + 1);
          *v61 = *v62;
          *(v61 + 1) = v63;
          v64 = v55[7];
          v65 = &v11[v64];
          v66 = &v12[v64];
          v67 = *(v66 + 1);
          *v65 = *v66;
          *(v65 + 1) = v67;

          goto LABEL_34;
        case 8u:
          v38 = sub_1DD0DD12C();
          (*(*(v38 - 8) + 16))(v11, v12, v38);
          v39 = type metadata accessor for NLRouterParse(0);
          v40 = *(v39 + 20);
          v41 = &v11[v40];
          v42 = &v12[v40];
          v43 = *(v42 + 1);
          *v41 = *v42;
          *(v41 + 1) = v43;
          v44 = *(v39 + 24);
          v103 = v39;
          __dst = &v11[v44];
          v45 = &v12[v44];
          v46 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v45, 1, v46))
          {
            v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v45, *(*(v47 - 8) + 64));
          }

          else
          {
            v75 = sub_1DD0DB4BC();
            (*(*(v75 - 8) + 16))(__dst, v45, v75);
            v76 = v46[5];
            v102 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v45[v76], 1, v102))
            {
              v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v76], &v45[v76], *(*(v77 - 8) + 64));
            }

            else
            {
              (*(*(v102 - 8) + 16))(&__dst[v76], &v45[v76]);
              __swift_storeEnumTagSinglePayload(&__dst[v76], 0, 1, v102);
            }

            v78 = v46[6];
            v79 = &__dst[v78];
            v80 = &v45[v78];
            v81 = *(v80 + 1);
            *v79 = *v80;
            *(v79 + 1) = v81;
            v82 = v46[7];
            v83 = &__dst[v82];
            v84 = &v45[v82];
            v83[4] = v84[4];
            *v83 = *v84;

            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v46);
          }

          v85 = *(v103 + 28);
          v86 = *&v12[v85];
          *&v11[v85] = v86;
          v87 = v86;
          goto LABEL_34;
        case 9u:
          v22 = sub_1DD0DD08C();
          (*(*(v22 - 8) + 16))(v11, v12, v22);
LABEL_34:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v11, v12, *(*(v13 - 8) + 64));
          break;
      }

      *&a1[v9[6]] = *(a2 + v9[6]);
      v88 = v9[7];
      v89 = &a1[v88];
      v90 = a2 + v88;
      v91 = *(a2 + v88 + 24);

      if (v91)
      {
        v92 = *(v90 + 4);
        *(v89 + 3) = v91;
        *(v89 + 4) = v92;
        (**(v91 - 8))(v89, v90, v91);
      }

      else
      {
        v93 = *(v90 + 1);
        *v89 = *v90;
        *(v89 + 1) = v93;
        *(v89 + 4) = *(v90 + 4);
      }

      a1[v9[8]] = *(a2 + v9[8]);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v95 = swift_getAssociatedTypeWitness();
      type metadata accessor for IntentResolutionRecord(255, AssociatedTypeWitness, v95, v96);
      v97 = *(swift_getTupleTypeMetadata2() + 48);
      v98 = &a1[v97];
      v99 = (a2 + v97);
      v100 = v99[1];
      *v98 = *v99;
      *(v98 + 1) = v100;
      *(v98 + 2) = v99[2];
      sub_1DD0DCF8C();
    case 4u:
      v6 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v6;
      *(a1 + 2) = a2[2];
      sub_1DD0DCF8C();
    case 5u:
      v16 = *a2;
      v17 = a2[1];
      v18 = *(a2 + 16);
      sub_1DCBB12F4(v16, v17, v18);
      *a1 = v16;
      *(a1 + 1) = v17;
      a1[16] = v18;
      break;
    case 6u:
      v19 = *a2;
      v20 = *a2;
      *a1 = v19;
      a1[8] = *(a2 + 8);
      break;
    default:
      v5 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v5;
      *(a1 + 2) = a2[2];
      sub_1DD0DCF8C();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void sub_1DCFD1290(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 4u:
      goto LABEL_32;
    case 3u:
      v3 = sub_1DD0DB04C();
      (*(*(v3 - 8) + 8))(a1, v3);
      v4 = type metadata accessor for Input(0);
      v5 = (a1 + *(v4 + 20));
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v6 = sub_1DD0DC76C();
          goto LABEL_12;
        case 1u:
          v14 = sub_1DD0DC76C();
          (*(*(v14 - 8) + 8))(v5, v14);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

          break;
        case 2u:

          goto LABEL_22;
        case 3u:
          swift_unknownObjectRelease();
          break;
        case 4u:
          v6 = sub_1DD0DB1EC();
          goto LABEL_12;
        case 5u:
          v15 = *v5;
          goto LABEL_28;
        case 6u:
          v16 = sub_1DD0DB4BC();
          (*(*(v16 - 8) + 8))(v5, v16);
          v17 = *(type metadata accessor for USOParse(0) + 20);
          v18 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v5 + v17, 1, v18))
          {
            (*(*(v18 - 8) + 8))(v5 + v17, v18);
          }

          goto LABEL_22;
        case 7u:
          v11 = sub_1DD0DB4BC();
          (*(*(v11 - 8) + 8))(v5, v11);
          v12 = *(type metadata accessor for USOParse(0) + 20);
          v13 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v5 + v12, 1, v13))
          {
            (*(*(v13 - 8) + 8))(v5 + v12, v13);
          }

          type metadata accessor for LinkParse(0);

LABEL_22:

          break;
        case 8u:
          v19 = sub_1DD0DD12C();
          (*(*(v19 - 8) + 8))(v5, v19);
          v20 = type metadata accessor for NLRouterParse(0);

          v21 = v5 + *(v20 + 24);
          v22 = type metadata accessor for USOParse(0);
          if (!__swift_getEnumTagSinglePayload(v21, 1, v22))
          {
            v23 = sub_1DD0DB4BC();
            (*(*(v23 - 8) + 8))(v21, v23);
            v24 = *(v22 + 20);
            v25 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v21 + v24, 1, v25))
            {
              (*(*(v25 - 8) + 8))(v21 + v24, v25);
            }
          }

          v15 = *(v5 + *(v20 + 28));
LABEL_28:

          break;
        case 9u:
          v6 = sub_1DD0DD08C();
LABEL_12:
          (*(*(v6 - 8) + 8))(v5, v6);
          break;
        default:
          break;
      }

      v26 = (a1 + *(v4 + 28));
      if (v26[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
      }

      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v28 = swift_getAssociatedTypeWitness();
      type metadata accessor for IntentResolutionRecord(255, AssociatedTypeWitness, v28, v29);
      a1 += *(swift_getTupleTypeMetadata2() + 48);
LABEL_32:

      v10 = *(a1 + 16);

      goto LABEL_9;
    case 5u:
      v7 = *a1;
      v8 = *(a1 + 8);
      v9 = *(a1 + 16);

      sub_1DCBB1310(v7, v8, v9);
      return;
    case 6u:
      v10 = *a1;

LABEL_9:

      break;
    default:
      return;
  }
}

uint64_t sub_1DCFD184C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
      v7 = sub_1DD0DB04C();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = type metadata accessor for Input(0);
      v9 = v8[5];
      v10 = (a1 + v9);
      v11 = (a2 + v9);
      v12 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v13 = sub_1DD0DC76C();
          (*(*(v13 - 8) + 16))(v10, v11, v13);
          goto LABEL_30;
        case 1u:
          v26 = sub_1DD0DC76C();
          (*(*(v26 - 8) + 16))(v10, v11, v26);
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v10[*(v27 + 48)] = *&v11[*(v27 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v21 = *(v11 + 1);
          *v10 = *v11;
          *(v10 + 1) = v21;
          *(v10 + 2) = *(v11 + 2);

          goto LABEL_30;
        case 3u:
          *v10 = *v11;
          swift_unknownObjectRetain();
          goto LABEL_30;
        case 4u:
          v19 = sub_1DD0DB1EC();
          (*(*(v19 - 8) + 16))(v10, v11, v19);
          goto LABEL_30;
        case 5u:
          v28 = *v11;
          *v10 = *v11;
          v29 = v28;
          goto LABEL_30;
        case 6u:
          v30 = sub_1DD0DB4BC();
          (*(*(v30 - 8) + 16))(v10, v11, v30);
          __dsta = type metadata accessor for USOParse(0);
          v31 = __dsta[5];
          v32 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v11[v31], 1, v32))
          {
            v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v10[v31], &v11[v31], *(*(v33 - 8) + 64));
          }

          else
          {
            (*(*(v32 - 8) + 16))(&v10[v31], &v11[v31], v32);
            __swift_storeEnumTagSinglePayload(&v10[v31], 0, 1, v32);
          }

          v63 = __dsta[6];
          v64 = &v10[v63];
          v65 = &v11[v63];
          v66 = *(v65 + 1);
          *v64 = *v65;
          *(v64 + 1) = v66;
          v67 = __dsta[7];
          v68 = &v10[v67];
          v69 = &v11[v67];
          v68[4] = v69[4];
          *v68 = *v69;

          goto LABEL_30;
        case 7u:
          v22 = sub_1DD0DB4BC();
          (*(*(v22 - 8) + 16))(v10, v11, v22);
          __dst = type metadata accessor for USOParse(0);
          v23 = __dst[5];
          v24 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v11[v23], 1, v24))
          {
            v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v10[v23], &v11[v23], *(*(v25 - 8) + 64));
          }

          else
          {
            (*(*(v24 - 8) + 16))(&v10[v23], &v11[v23], v24);
            __swift_storeEnumTagSinglePayload(&v10[v23], 0, 1, v24);
          }

          v44 = __dst[6];
          v45 = &v10[v44];
          v46 = &v11[v44];
          v99 = *(v46 + 1);
          *v45 = *v46;
          *(v45 + 1) = v99;
          v47 = __dst[7];
          v48 = &v10[v47];
          v49 = &v11[v47];
          v48[4] = v49[4];
          *v48 = *v49;
          v50 = type metadata accessor for LinkParse(0);
          v51 = v50[5];
          v52 = &v10[v51];
          v53 = &v11[v51];
          v54 = *(v53 + 1);
          *v52 = *v53;
          *(v52 + 1) = v54;
          v55 = v50[6];
          v56 = &v10[v55];
          v57 = &v11[v55];
          v58 = *(v57 + 1);
          *v56 = *v57;
          *(v56 + 1) = v58;
          v59 = v50[7];
          v60 = &v10[v59];
          v61 = &v11[v59];
          v62 = *(v61 + 1);
          *v60 = *v61;
          *(v60 + 1) = v62;

          goto LABEL_30;
        case 8u:
          v34 = sub_1DD0DD12C();
          (*(*(v34 - 8) + 16))(v10, v11, v34);
          v35 = type metadata accessor for NLRouterParse(0);
          v36 = *(v35 + 20);
          v37 = &v10[v36];
          v38 = &v11[v36];
          v39 = *(v38 + 1);
          *v37 = *v38;
          *(v37 + 1) = v39;
          v40 = *(v35 + 24);
          v98 = v35;
          __dstb = &v10[v40];
          v41 = &v11[v40];
          v42 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v41, 1, v42))
          {
            v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstb, v41, *(*(v43 - 8) + 64));
          }

          else
          {
            v70 = sub_1DD0DB4BC();
            (*(*(v70 - 8) + 16))(__dstb, v41, v70);
            v97 = v42;
            v71 = *(v42 + 20);
            v96 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v41[v71], 1, v96))
            {
              v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstb[v71], &v41[v71], *(*(v72 - 8) + 64));
            }

            else
            {
              (*(*(v96 - 8) + 16))(&__dstb[v71], &v41[v71]);
              __swift_storeEnumTagSinglePayload(&__dstb[v71], 0, 1, v96);
            }

            v73 = *(v97 + 24);
            v74 = &__dstb[v73];
            v75 = &v41[v73];
            v76 = *(v75 + 1);
            *v74 = *v75;
            *(v74 + 1) = v76;
            v77 = *(v97 + 28);
            v78 = &__dstb[v77];
            v79 = &v41[v77];
            v78[4] = v79[4];
            *v78 = *v79;

            __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v97);
          }

          v80 = *(v98 + 28);
          v81 = *&v11[v80];
          *&v10[v80] = v81;
          v82 = v81;
          goto LABEL_30;
        case 9u:
          v20 = sub_1DD0DD08C();
          (*(*(v20 - 8) + 16))(v10, v11, v20);
LABEL_30:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v10, v11, *(*(v12 - 8) + 64));
          break;
      }

      *(a1 + v8[6]) = *(a2 + v8[6]);
      v83 = v8[7];
      v84 = a1 + v83;
      v85 = a2 + v83;
      v86 = *(a2 + v83 + 24);

      if (v86)
      {
        v87 = *(v85 + 32);
        *(v84 + 24) = v86;
        *(v84 + 32) = v87;
        (**(v86 - 8))(v84, v85, v86);
      }

      else
      {
        v88 = *(v85 + 16);
        *v84 = *v85;
        *(v84 + 16) = v88;
        *(v84 + 32) = *(v85 + 32);
      }

      *(a1 + v8[8]) = *(a2 + v8[8]);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v90 = swift_getAssociatedTypeWitness();
      type metadata accessor for IntentResolutionRecord(255, AssociatedTypeWitness, v90, v91);
      v92 = *(swift_getTupleTypeMetadata2() + 48);
      v93 = (a1 + v92);
      v94 = (a2 + v92);
      v95 = v94[1];
      *v93 = *v94;
      v93[1] = v95;
      v93[2] = v94[2];
      sub_1DD0DCF8C();
    case 5u:
      v14 = *a2;
      v15 = *(a2 + 8);
      v16 = *(a2 + 16);
      sub_1DCBB12F4(v14, v15, v16);
      *a1 = v14;
      *(a1 + 8) = v15;
      *(a1 + 16) = v16;
      break;
    case 6u:
      v17 = *a2;
      v18 = *a2;
      *a1 = v17;
      *(a1 + 8) = *(a2 + 8);
      break;
    default:
      v5 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v5;
      *(a1 + 16) = *(a2 + 16);
      sub_1DD0DCF8C();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *sub_1DCFD21CC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 3u:
        v5 = sub_1DD0DB04C();
        (*(*(v5 - 8) + 16))(a1, a2, v5);
        v6 = type metadata accessor for Input(0);
        v7 = v6[5];
        v8 = a1 + v7;
        v9 = a2 + v7;
        v10 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v11 = sub_1DD0DC76C();
            (*(*(v11 - 8) + 16))(v8, v9, v11);
            goto LABEL_33;
          case 1u:
            v24 = sub_1DD0DC76C();
            (*(*(v24 - 8) + 16))(v8, v9, v24);
            v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v8[*(v25 + 48)] = *&v9[*(v25 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v8 = *v9;
            *(v8 + 1) = *(v9 + 1);
            *(v8 + 2) = *(v9 + 2);

            goto LABEL_33;
          case 3u:
            *v8 = *v9;
            swift_unknownObjectRetain();
            goto LABEL_33;
          case 4u:
            v17 = sub_1DD0DB1EC();
            (*(*(v17 - 8) + 16))(v8, v9, v17);
            goto LABEL_33;
          case 5u:
            v26 = *v9;
            *v8 = *v9;
            v27 = v26;
            goto LABEL_33;
          case 6u:
            v28 = sub_1DD0DB4BC();
            (*(*(v28 - 8) + 16))(v8, v9, v28);
            v29 = type metadata accessor for USOParse(0);
            v30 = v29[5];
            v31 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v9[v30], 1, v31))
            {
              v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v8[v30], &v9[v30], *(*(v32 - 8) + 64));
            }

            else
            {
              (*(*(v31 - 8) + 16))(&v8[v30], &v9[v30], v31);
              __swift_storeEnumTagSinglePayload(&v8[v30], 0, 1, v31);
            }

            v59 = v29[6];
            v60 = &v8[v59];
            v61 = &v9[v59];
            *v60 = *v61;
            *(v60 + 1) = *(v61 + 1);
            v62 = v29[7];
            v63 = &v8[v62];
            v64 = &v9[v62];
            v65 = *v64;
            v63[4] = v64[4];
            *v63 = v65;

            goto LABEL_33;
          case 7u:
            v19 = sub_1DD0DB4BC();
            (*(*(v19 - 8) + 16))(v8, v9, v19);
            v20 = type metadata accessor for USOParse(0);
            v21 = v20[5];
            v22 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v9[v21], 1, v22))
            {
              v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v8[v21], &v9[v21], *(*(v23 - 8) + 64));
            }

            else
            {
              (*(*(v22 - 8) + 16))(&v8[v21], &v9[v21], v22);
              __swift_storeEnumTagSinglePayload(&v8[v21], 0, 1, v22);
            }

            v42 = v20[6];
            v43 = &v8[v42];
            v44 = &v9[v42];
            *v43 = *v44;
            *(v43 + 1) = *(v44 + 1);
            v45 = v20[7];
            v46 = &v8[v45];
            v47 = &v9[v45];
            v48 = *v47;
            v46[4] = v47[4];
            *v46 = v48;
            v49 = type metadata accessor for LinkParse(0);
            v50 = v49[5];
            v51 = &v8[v50];
            v52 = &v9[v50];
            *v51 = *v52;
            *(v51 + 1) = *(v52 + 1);
            v53 = v49[6];
            v54 = &v8[v53];
            v55 = &v9[v53];
            *v54 = *v55;
            *(v54 + 1) = *(v55 + 1);
            v56 = v49[7];
            v57 = &v8[v56];
            v58 = &v9[v56];
            *v57 = *v58;
            *(v57 + 1) = *(v58 + 1);

            goto LABEL_33;
          case 8u:
            v33 = sub_1DD0DD12C();
            (*(*(v33 - 8) + 16))(v8, v9, v33);
            v34 = type metadata accessor for NLRouterParse(0);
            v35 = *(v34 + 20);
            v36 = &v8[v35];
            v37 = &v9[v35];
            *v36 = *v37;
            *(v36 + 1) = *(v37 + 1);
            v38 = *(v34 + 24);
            v93 = v34;
            __dst = &v8[v38];
            v39 = &v9[v38];
            v40 = type metadata accessor for USOParse(0);

            if (__swift_getEnumTagSinglePayload(v39, 1, v40))
            {
              v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dst, v39, *(*(v41 - 8) + 64));
            }

            else
            {
              v66 = sub_1DD0DB4BC();
              (*(*(v66 - 8) + 16))(__dst, v39, v66);
              v67 = v40[5];
              v92 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v39[v67], 1, v92))
              {
                v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dst[v67], &v39[v67], *(*(v68 - 8) + 64));
              }

              else
              {
                (*(*(v92 - 8) + 16))(&__dst[v67], &v39[v67]);
                __swift_storeEnumTagSinglePayload(&__dst[v67], 0, 1, v92);
              }

              v69 = v40[6];
              v70 = &__dst[v69];
              v71 = &v39[v69];
              *v70 = *v71;
              *(v70 + 1) = *(v71 + 1);
              v72 = v40[7];
              v73 = &__dst[v72];
              v74 = &v39[v72];
              v75 = *v74;
              v73[4] = v74[4];
              *v73 = v75;

              __swift_storeEnumTagSinglePayload(__dst, 0, 1, v40);
            }

            v76 = *(v93 + 28);
            v77 = *&v9[v76];
            *&v8[v76] = v77;
            v78 = v77;
            goto LABEL_33;
          case 9u:
            v18 = sub_1DD0DD08C();
            (*(*(v18 - 8) + 16))(v8, v9, v18);
LABEL_33:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v8, v9, *(*(v10 - 8) + 64));
            break;
        }

        *(a1 + v6[6]) = *(a2 + v6[6]);
        v79 = v6[7];
        v80 = a1 + v79;
        v81 = (a2 + v79);
        v82 = *(a2 + v79 + 24);

        if (v82)
        {
          *(v80 + 3) = v82;
          *(v80 + 4) = *(v81 + 4);
          (**(v82 - 8))(v80, v81, v82);
        }

        else
        {
          v83 = *v81;
          v84 = v81[1];
          *(v80 + 4) = *(v81 + 4);
          *v80 = v83;
          *(v80 + 1) = v84;
        }

        *(a1 + v6[8]) = *(a2 + v6[8]);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v86 = swift_getAssociatedTypeWitness();
        type metadata accessor for IntentResolutionRecord(255, AssociatedTypeWitness, v86, v87);
        v88 = *(swift_getTupleTypeMetadata2() + 48);
        v89 = (a1 + v88);
        v90 = (a2 + v88);
        *v89 = *v90;
        v89[1] = v90[1];
        v89[2] = v90[2];
        sub_1DD0DCF8C();
      case 4u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 5u:
        v12 = *a2;
        v13 = a2[1];
        v14 = *(a2 + 16);
        sub_1DCBB12F4(v12, v13, v14);
        *a1 = v12;
        a1[1] = v13;
        *(a1 + 16) = v14;
        break;
      case 6u:
        v15 = *a2;
        v16 = *a2;
        *a1 = v15;
        *(a1 + 8) = *(a2 + 8);
        break;
      default:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_BYTE *sub_1DCFD2C7C(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v6 = sub_1DD0DB04C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    v7 = type metadata accessor for Input(0);
    v8 = v7[5];
    v9 = &a1[v8];
    v10 = &a2[v8];
    v11 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v12 = sub_1DD0DC76C();
        (*(*(v12 - 8) + 32))(v9, v10, v12);
        goto LABEL_26;
      case 1u:
        v22 = sub_1DD0DC76C();
        (*(*(v22 - 8) + 32))(v9, v10, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v9[*(v23 + 48)] = *&v10[*(v23 + 48)];
        goto LABEL_26;
      case 4u:
        v25 = sub_1DD0DB1EC();
        (*(*(v25 - 8) + 32))(v9, v10, v25);
        goto LABEL_26;
      case 6u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(v9, v10, v26);
        v27 = type metadata accessor for USOParse(0);
        v28 = v27[5];
        v29 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v10[v28], 1, v29))
        {
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v9[v28], &v10[v28], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(*(v29 - 8) + 32))(&v9[v28], &v10[v28], v29);
          __swift_storeEnumTagSinglePayload(&v9[v28], 0, 1, v29);
        }

        *&v9[v27[6]] = *&v10[v27[6]];
        v43 = v27[7];
        v44 = &v9[v43];
        v45 = &v10[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        goto LABEL_26;
      case 7u:
        v31 = sub_1DD0DB4BC();
        (*(*(v31 - 8) + 32))(v9, v10, v31);
        v32 = type metadata accessor for USOParse(0);
        v33 = v32[5];
        v34 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v10[v33], 1, v34))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v9[v33], &v10[v33], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v34 - 8) + 32))(&v9[v33], &v10[v33], v34);
          __swift_storeEnumTagSinglePayload(&v9[v33], 0, 1, v34);
        }

        *&v9[v32[6]] = *&v10[v32[6]];
        v46 = v32[7];
        v47 = &v9[v46];
        v48 = &v10[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        v49 = type metadata accessor for LinkParse(0);
        *&v9[v49[5]] = *&v10[v49[5]];
        *&v9[v49[6]] = *&v10[v49[6]];
        *&v9[v49[7]] = *&v10[v49[7]];
        goto LABEL_26;
      case 8u:
        v15 = sub_1DD0DD12C();
        (*(*(v15 - 8) + 32))(v9, v10, v15);
        v16 = type metadata accessor for NLRouterParse(0);
        *&v9[*(v16 + 20)] = *&v10[*(v16 + 20)];
        v66 = v16;
        v17 = *(v16 + 24);
        v18 = &v9[v17];
        v19 = &v10[v17];
        v20 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v19, 1, v20))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v18, v19, *(*(v21 - 8) + 64));
        }

        else
        {
          v36 = sub_1DD0DB4BC();
          v65 = v18;
          (*(*(v36 - 8) + 32))(v18, v19, v36);
          v37 = v20[5];
          v38 = sub_1DD0DB3EC();
          v64 = v37;
          v39 = &v19[v37];
          v40 = v38;
          if (__swift_getEnumTagSinglePayload(v39, 1, v38))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v42 = v65;
            memcpy(&v65[v64], &v19[v64], *(*(v41 - 8) + 64));
          }

          else
          {
            v63 = v40;
            (*(*(v40 - 8) + 32))(&v65[v64], &v19[v64], v40);
            v42 = v65;
            __swift_storeEnumTagSinglePayload(&v65[v64], 0, 1, v63);
          }

          *(v42 + v20[6]) = *&v19[v20[6]];
          v50 = v20[7];
          v51 = v42 + v50;
          v52 = &v19[v50];
          *(v51 + 4) = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v42, 0, 1, v20);
        }

        *&v9[*(v66 + 28)] = *&v10[*(v66 + 28)];
        goto LABEL_26;
      case 9u:
        v24 = sub_1DD0DD08C();
        (*(*(v24 - 8) + 32))(v9, v10, v24);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v9, v10, *(*(v11 - 8) + 64));
        break;
    }

    *&a1[v7[6]] = *&a2[v7[6]];
    v53 = v7[7];
    v54 = &a1[v53];
    v55 = &a2[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    *(v54 + 4) = *(v55 + 4);
    a1[v7[8]] = a2[v7[8]];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v58 = swift_getAssociatedTypeWitness();
    type metadata accessor for IntentResolutionRecord(255, AssociatedTypeWitness, v58, v59);
    v60 = *(swift_getTupleTypeMetadata2() + 48);
    v61 = &a1[v60];
    v62 = &a2[v60];
    *v61 = *v62;
    *(v61 + 2) = *(v62 + 2);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v13 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v13);
  }
}

_BYTE *sub_1DCFD3490(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 - 8);
  (*(v5 + 8))(a1, a3);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v6 = sub_1DD0DB04C();
    (*(*(v6 - 8) + 32))(a1, a2, v6);
    v7 = type metadata accessor for Input(0);
    v8 = v7[5];
    v9 = &a1[v8];
    v10 = &a2[v8];
    v11 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v12 = sub_1DD0DC76C();
        (*(*(v12 - 8) + 32))(v9, v10, v12);
        goto LABEL_27;
      case 1u:
        v22 = sub_1DD0DC76C();
        (*(*(v22 - 8) + 32))(v9, v10, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v9[*(v23 + 48)] = *&v10[*(v23 + 48)];
        goto LABEL_27;
      case 4u:
        v25 = sub_1DD0DB1EC();
        (*(*(v25 - 8) + 32))(v9, v10, v25);
        goto LABEL_27;
      case 6u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(v9, v10, v26);
        v27 = type metadata accessor for USOParse(0);
        v28 = v27[5];
        v29 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v10[v28], 1, v29))
        {
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v9[v28], &v10[v28], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(*(v29 - 8) + 32))(&v9[v28], &v10[v28], v29);
          __swift_storeEnumTagSinglePayload(&v9[v28], 0, 1, v29);
        }

        *&v9[v27[6]] = *&v10[v27[6]];
        v43 = v27[7];
        v44 = &v9[v43];
        v45 = &v10[v43];
        v44[4] = v45[4];
        *v44 = *v45;
        goto LABEL_27;
      case 7u:
        v31 = sub_1DD0DB4BC();
        (*(*(v31 - 8) + 32))(v9, v10, v31);
        v32 = type metadata accessor for USOParse(0);
        v33 = v32[5];
        v34 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v10[v33], 1, v34))
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v9[v33], &v10[v33], *(*(v35 - 8) + 64));
        }

        else
        {
          (*(*(v34 - 8) + 32))(&v9[v33], &v10[v33], v34);
          __swift_storeEnumTagSinglePayload(&v9[v33], 0, 1, v34);
        }

        *&v9[v32[6]] = *&v10[v32[6]];
        v46 = v32[7];
        v47 = &v9[v46];
        v48 = &v10[v46];
        v47[4] = v48[4];
        *v47 = *v48;
        v49 = type metadata accessor for LinkParse(0);
        *&v9[v49[5]] = *&v10[v49[5]];
        *&v9[v49[6]] = *&v10[v49[6]];
        *&v9[v49[7]] = *&v10[v49[7]];
        goto LABEL_27;
      case 8u:
        v15 = sub_1DD0DD12C();
        (*(*(v15 - 8) + 32))(v9, v10, v15);
        v16 = type metadata accessor for NLRouterParse(0);
        *&v9[*(v16 + 20)] = *&v10[*(v16 + 20)];
        v66 = v16;
        v17 = *(v16 + 24);
        v18 = &v9[v17];
        v19 = &v10[v17];
        v20 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v19, 1, v20))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v18, v19, *(*(v21 - 8) + 64));
        }

        else
        {
          v36 = sub_1DD0DB4BC();
          v65 = v18;
          (*(*(v36 - 8) + 32))(v18, v19, v36);
          v37 = v20[5];
          v38 = sub_1DD0DB3EC();
          v64 = v37;
          v39 = &v19[v37];
          v40 = v38;
          if (__swift_getEnumTagSinglePayload(v39, 1, v38))
          {
            v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            v42 = v65;
            memcpy(&v65[v64], &v19[v64], *(*(v41 - 8) + 64));
          }

          else
          {
            v63 = v40;
            (*(*(v40 - 8) + 32))(&v65[v64], &v19[v64], v40);
            v42 = v65;
            __swift_storeEnumTagSinglePayload(&v65[v64], 0, 1, v63);
          }

          *(v42 + v20[6]) = *&v19[v20[6]];
          v50 = v20[7];
          v51 = v42 + v50;
          v52 = &v19[v50];
          *(v51 + 4) = v52[4];
          *v51 = *v52;
          __swift_storeEnumTagSinglePayload(v42, 0, 1, v20);
        }

        *&v9[*(v66 + 28)] = *&v10[*(v66 + 28)];
        goto LABEL_27;
      case 9u:
        v24 = sub_1DD0DD08C();
        (*(*(v24 - 8) + 32))(v9, v10, v24);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v9, v10, *(*(v11 - 8) + 64));
        break;
    }

    *&a1[v7[6]] = *&a2[v7[6]];
    v53 = v7[7];
    v54 = &a1[v53];
    v55 = &a2[v53];
    v56 = *(v55 + 1);
    *v54 = *v55;
    *(v54 + 1) = v56;
    *(v54 + 4) = *(v55 + 4);
    a1[v7[8]] = a2[v7[8]];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v58 = swift_getAssociatedTypeWitness();
    type metadata accessor for IntentResolutionRecord(255, AssociatedTypeWitness, v58, v59);
    v60 = *(swift_getTupleTypeMetadata2() + 48);
    v61 = &a1[v60];
    v62 = &a2[v60];
    *v61 = *v62;
    *(v61 + 2) = *(v62 + 2);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v5 + 64);

  return memcpy(a1, a2, v13);
}

uint64_t sub_1DCFD3D44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCFCEC3C();
}

uint64_t sub_1DCFD3E04(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCFD3E58()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1DCB4AD3C;

  return sub_1DCFCFBB8(v3, v4, v5, v7, v6);
}

uint64_t sub_1DCFD3F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SiriKitWaitToContinueFlow.State(319, *(a1 + 16), *(a1 + 24), a4);
  if (v6 <= 0x3F)
  {
    v7 = *(result - 8);
    swift_initEnumMetadataSingleCase();
    result = 0;
    *(*(a1 - 8) + 84) = *(v7 + 84);
  }

  return result;
}

char *sub_1DCFD3FC4(char *a1, char **a2, uint64_t a3, uint64_t a4)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  type metadata accessor for SiriKitWaitToContinueFlow.State(0, *(a3 + 16), *(a3 + 24), a4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v16 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v16;
      *(a1 + 2) = a2[2];
      sub_1DD0DCF8C();
    case 2u:
      v8 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v8;
      *(a1 + 2) = a2[2];
      sub_1DD0DCF8C();
    case 3u:
      v9 = sub_1DD0DB04C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
      v10 = type metadata accessor for Input(0);
      v11 = v10[5];
      v12 = &a1[v11];
      v13 = a2 + v11;
      v14 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v15 = sub_1DD0DC76C();
          (*(*(v15 - 8) + 16))(v12, v13, v15);
          goto LABEL_34;
        case 1u:
          v29 = sub_1DD0DC76C();
          (*(*(v29 - 8) + 16))(v12, v13, v29);
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v12[*(v30 + 48)] = *&v13[*(v30 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v24 = *(v13 + 1);
          *v12 = *v13;
          *(v12 + 1) = v24;
          *(v12 + 2) = *(v13 + 2);

          goto LABEL_34;
        case 3u:
          *v12 = *v13;
          swift_unknownObjectRetain();
          goto LABEL_34;
        case 4u:
          v22 = sub_1DD0DB1EC();
          (*(*(v22 - 8) + 16))(v12, v13, v22);
          goto LABEL_34;
        case 5u:
          v31 = *v13;
          *v12 = *v13;
          v32 = v31;
          goto LABEL_34;
        case 6u:
          v33 = sub_1DD0DB4BC();
          (*(*(v33 - 8) + 16))(v12, v13, v33);
          __dsta = type metadata accessor for USOParse(0);
          v34 = __dsta[5];
          v35 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v13[v34], 1, v35))
          {
            v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v12[v34], &v13[v34], *(*(v36 - 8) + 64));
          }

          else
          {
            (*(*(v35 - 8) + 16))(&v12[v34], &v13[v34], v35);
            __swift_storeEnumTagSinglePayload(&v12[v34], 0, 1, v35);
          }

          v66 = __dsta[6];
          v67 = &v12[v66];
          v68 = &v13[v66];
          v69 = *(v68 + 1);
          *v67 = *v68;
          *(v67 + 1) = v69;
          v70 = __dsta[7];
          v71 = &v12[v70];
          v72 = &v13[v70];
          v71[4] = v72[4];
          *v71 = *v72;

          goto LABEL_34;
        case 7u:
          v25 = sub_1DD0DB4BC();
          (*(*(v25 - 8) + 16))(v12, v13, v25);
          __dst = type metadata accessor for USOParse(0);
          v26 = __dst[5];
          v27 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v13[v26], 1, v27))
          {
            v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v12[v26], &v13[v26], *(*(v28 - 8) + 64));
          }

          else
          {
            (*(*(v27 - 8) + 16))(&v12[v26], &v13[v26], v27);
            __swift_storeEnumTagSinglePayload(&v12[v26], 0, 1, v27);
          }

          v47 = __dst[6];
          v48 = &v12[v47];
          v49 = &v13[v47];
          v103 = *(v49 + 1);
          *v48 = *v49;
          *(v48 + 1) = v103;
          v50 = __dst[7];
          v51 = &v12[v50];
          v52 = &v13[v50];
          v51[4] = v52[4];
          *v51 = *v52;
          v53 = type metadata accessor for LinkParse(0);
          v54 = v53[5];
          v55 = &v12[v54];
          v56 = &v13[v54];
          v57 = *(v56 + 1);
          *v55 = *v56;
          *(v55 + 1) = v57;
          v58 = v53[6];
          v59 = &v12[v58];
          v60 = &v13[v58];
          v61 = *(v60 + 1);
          *v59 = *v60;
          *(v59 + 1) = v61;
          v62 = v53[7];
          v63 = &v12[v62];
          v64 = &v13[v62];
          v65 = *(v64 + 1);
          *v63 = *v64;
          *(v63 + 1) = v65;

          goto LABEL_34;
        case 8u:
          v37 = sub_1DD0DD12C();
          (*(*(v37 - 8) + 16))(v12, v13, v37);
          v38 = type metadata accessor for NLRouterParse(0);
          v39 = *(v38 + 20);
          v40 = &v12[v39];
          v41 = &v13[v39];
          v42 = *(v41 + 1);
          *v40 = *v41;
          *(v40 + 1) = v42;
          v43 = *(v38 + 24);
          v102 = v38;
          __dstb = &v12[v43];
          v44 = &v13[v43];
          v45 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v44, 1, v45))
          {
            v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstb, v44, *(*(v46 - 8) + 64));
          }

          else
          {
            v73 = sub_1DD0DB4BC();
            (*(*(v73 - 8) + 16))(__dstb, v44, v73);
            v101 = v45;
            v74 = *(v45 + 20);
            v100 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v44[v74], 1, v100))
            {
              v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstb[v74], &v44[v74], *(*(v75 - 8) + 64));
            }

            else
            {
              (*(*(v100 - 8) + 16))(&__dstb[v74], &v44[v74]);
              __swift_storeEnumTagSinglePayload(&__dstb[v74], 0, 1, v100);
            }

            v76 = *(v101 + 24);
            v77 = &__dstb[v76];
            v78 = &v44[v76];
            v79 = *(v78 + 1);
            *v77 = *v78;
            *(v77 + 1) = v79;
            v80 = *(v101 + 28);
            v81 = &__dstb[v80];
            v82 = &v44[v80];
            v81[4] = v82[4];
            *v81 = *v82;

            __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v101);
          }

          v83 = *(v102 + 28);
          v84 = *&v13[v83];
          *&v12[v83] = v84;
          v85 = v84;
          goto LABEL_34;
        case 9u:
          v23 = sub_1DD0DD08C();
          (*(*(v23 - 8) + 16))(v12, v13, v23);
LABEL_34:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v12, v13, *(*(v14 - 8) + 64));
          break;
      }

      *&a1[v10[6]] = *(a2 + v10[6]);
      v86 = v10[7];
      v87 = &a1[v86];
      v88 = a2 + v86;
      v89 = *(a2 + v86 + 24);

      if (v89)
      {
        v90 = *(v88 + 4);
        *(v87 + 3) = v89;
        *(v87 + 4) = v90;
        (**(v89 - 8))(v87, v88, v89);
      }

      else
      {
        v91 = *(v88 + 1);
        *v87 = *v88;
        *(v87 + 1) = v91;
        *(v87 + 4) = *(v88 + 4);
      }

      a1[v10[8]] = *(a2 + v10[8]);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v93 = swift_getAssociatedTypeWitness();
      type metadata accessor for IntentResolutionRecord(255, AssociatedTypeWitness, v93, v94);
      v95 = *(swift_getTupleTypeMetadata2() + 48);
      v96 = &a1[v95];
      v97 = (a2 + v95);
      v98 = v97[1];
      *v96 = *v97;
      *(v96 + 1) = v98;
      *(v96 + 2) = v97[2];
      sub_1DD0DCF8C();
    case 4u:
      v7 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v7;
      *(a1 + 2) = a2[2];
      sub_1DD0DCF8C();
    case 5u:
      v17 = *a2;
      v18 = a2[1];
      v19 = *(a2 + 16);
      sub_1DCBB12F4(v17, v18, v19);
      *a1 = v17;
      *(a1 + 1) = v18;
      a1[16] = v19;
      break;
    case 6u:
      v20 = *a2;
      v21 = *a2;
      *a1 = v20;
      a1[8] = *(a2 + 8);
      break;
    default:
      v6 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v6;
      *(a1 + 2) = a2[2];
      sub_1DD0DCF8C();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

void sub_1DCFD4A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SiriKitWaitToContinueFlow.State(0, *(a2 + 16), *(a2 + 24), a4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:
    case 4u:
      goto LABEL_32;
    case 3u:
      v5 = sub_1DD0DB04C();
      (*(*(v5 - 8) + 8))(a1, v5);
      v6 = type metadata accessor for Input(0);
      v7 = (a1 + *(v6 + 20));
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v8 = sub_1DD0DC76C();
          goto LABEL_12;
        case 1u:
          v16 = sub_1DD0DC76C();
          (*(*(v16 - 8) + 8))(v7, v16);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

          break;
        case 2u:

          goto LABEL_22;
        case 3u:
          swift_unknownObjectRelease();
          break;
        case 4u:
          v8 = sub_1DD0DB1EC();
          goto LABEL_12;
        case 5u:
          v17 = *v7;
          goto LABEL_28;
        case 6u:
          v18 = sub_1DD0DB4BC();
          (*(*(v18 - 8) + 8))(v7, v18);
          v19 = *(type metadata accessor for USOParse(0) + 20);
          v20 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v7 + v19, 1, v20))
          {
            (*(*(v20 - 8) + 8))(v7 + v19, v20);
          }

          goto LABEL_22;
        case 7u:
          v13 = sub_1DD0DB4BC();
          (*(*(v13 - 8) + 8))(v7, v13);
          v14 = *(type metadata accessor for USOParse(0) + 20);
          v15 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(v7 + v14, 1, v15))
          {
            (*(*(v15 - 8) + 8))(v7 + v14, v15);
          }

          type metadata accessor for LinkParse(0);

LABEL_22:

          break;
        case 8u:
          v21 = sub_1DD0DD12C();
          (*(*(v21 - 8) + 8))(v7, v21);
          v22 = type metadata accessor for NLRouterParse(0);

          v23 = v7 + *(v22 + 24);
          v24 = type metadata accessor for USOParse(0);
          if (!__swift_getEnumTagSinglePayload(v23, 1, v24))
          {
            v25 = sub_1DD0DB4BC();
            (*(*(v25 - 8) + 8))(v23, v25);
            v26 = *(v24 + 20);
            v27 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v23 + v26, 1, v27))
            {
              (*(*(v27 - 8) + 8))(v23 + v26, v27);
            }
          }

          v17 = *(v7 + *(v22 + 28));
LABEL_28:

          break;
        case 9u:
          v8 = sub_1DD0DD08C();
LABEL_12:
          (*(*(v8 - 8) + 8))(v7, v8);
          break;
        default:
          break;
      }

      v28 = (a1 + *(v6 + 28));
      if (v28[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v28);
      }

      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v30 = swift_getAssociatedTypeWitness();
      type metadata accessor for IntentResolutionRecord(255, AssociatedTypeWitness, v30, v31);
      a1 += *(swift_getTupleTypeMetadata2() + 48);
LABEL_32:

      v12 = *(a1 + 16);

      goto LABEL_9;
    case 5u:
      v9 = *a1;
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);

      sub_1DCBB1310(v9, v10, v11);
      return;
    case 6u:
      v12 = *a1;

LABEL_9:

      break;
    default:
      return;
  }
}

uint64_t sub_1DCFD5024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SiriKitWaitToContinueFlow.State(0, *(a3 + 16), *(a3 + 24), a4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 3u:
      v8 = sub_1DD0DB04C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      v9 = type metadata accessor for Input(0);
      v10 = v9[5];
      v11 = (a1 + v10);
      v12 = (a2 + v10);
      v13 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v14 = sub_1DD0DC76C();
          (*(*(v14 - 8) + 16))(v11, v12, v14);
          goto LABEL_30;
        case 1u:
          v26 = sub_1DD0DC76C();
          (*(*(v26 - 8) + 16))(v11, v12, v26);
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v11[*(v27 + 48)] = *&v12[*(v27 + 48)];
          sub_1DD0DCF8C();
        case 2u:
          v22 = *(v12 + 1);
          *v11 = *v12;
          *(v11 + 1) = v22;
          *(v11 + 2) = *(v12 + 2);

          goto LABEL_30;
        case 3u:
          *v11 = *v12;
          swift_unknownObjectRetain();
          goto LABEL_30;
        case 4u:
          v20 = sub_1DD0DB1EC();
          (*(*(v20 - 8) + 16))(v11, v12, v20);
          goto LABEL_30;
        case 5u:
          v28 = *v12;
          *v11 = *v12;
          v29 = v28;
          goto LABEL_30;
        case 6u:
          v30 = sub_1DD0DB4BC();
          (*(*(v30 - 8) + 16))(v11, v12, v30);
          v104 = type metadata accessor for USOParse(0);
          v31 = v104[5];
          v100 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v12[v31], 1, v100))
          {
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v11[v31], &v12[v31], *(*(v32 - 8) + 64));
          }

          else
          {
            (*(*(v100 - 8) + 16))(&v11[v31], &v12[v31]);
            __swift_storeEnumTagSinglePayload(&v11[v31], 0, 1, v100);
          }

          v62 = v104[6];
          v63 = &v11[v62];
          v64 = &v12[v62];
          v65 = *(v64 + 1);
          *v63 = *v64;
          *(v63 + 1) = v65;
          v66 = v104[7];
          v67 = &v11[v66];
          v68 = &v12[v66];
          v67[4] = v68[4];
          *v67 = *v68;

          goto LABEL_30;
        case 7u:
          v23 = sub_1DD0DB4BC();
          (*(*(v23 - 8) + 16))(v11, v12, v23);
          v103 = type metadata accessor for USOParse(0);
          v24 = v103[5];
          v99 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v12[v24], 1, v99))
          {
            v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v11[v24], &v12[v24], *(*(v25 - 8) + 64));
          }

          else
          {
            (*(*(v99 - 8) + 16))(&v11[v24], &v12[v24]);
            __swift_storeEnumTagSinglePayload(&v11[v24], 0, 1, v99);
          }

          v44 = v103[6];
          v45 = &v11[v44];
          v46 = &v12[v44];
          v102 = *(v46 + 1);
          *v45 = *v46;
          *(v45 + 1) = v102;
          v47 = v103[7];
          v48 = &v11[v47];
          v49 = &v12[v47];
          v48[4] = v49[4];
          *v48 = *v49;
          v50 = type metadata accessor for LinkParse(0);
          v51 = v50[5];
          v52 = &v11[v51];
          v53 = &v12[v51];
          v106 = *(v53 + 1);
          *v52 = *v53;
          *(v52 + 1) = v106;
          v54 = v50[6];
          v55 = &v11[v54];
          v56 = &v12[v54];
          v57 = *(v56 + 1);
          *v55 = *v56;
          *(v55 + 1) = v57;
          v58 = v50[7];
          v59 = &v11[v58];
          v60 = &v12[v58];
          v61 = *(v60 + 1);
          *v59 = *v60;
          *(v59 + 1) = v61;

          goto LABEL_30;
        case 8u:
          v33 = sub_1DD0DD12C();
          (*(*(v33 - 8) + 16))(v11, v12, v33);
          v34 = type metadata accessor for NLRouterParse(0);
          v35 = *(v34 + 20);
          v36 = &v11[v35];
          v37 = &v12[v35];
          v38 = *(v37 + 1);
          *v36 = *v37;
          *(v36 + 1) = v38;
          v97 = v11;
          v98 = v34;
          v39 = *(v34 + 24);
          v105 = &v11[v39];
          v40 = &v12[v39];
          v41 = type metadata accessor for USOParse(0);

          v101 = v40;
          if (__swift_getEnumTagSinglePayload(v40, 1, v41))
          {
            v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v105, v40, *(*(v42 - 8) + 64));
            v43 = v97;
          }

          else
          {
            v69 = sub_1DD0DB4BC();
            (*(*(v69 - 8) + 16))(v105, v40, v69);
            v96 = v41;
            v70 = *(v41 + 20);
            v71 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v101[v70], 1, v71))
            {
              v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v105[v70], &v101[v70], *(*(v72 - 8) + 64));
            }

            else
            {
              (*(*(v71 - 8) + 16))(&v105[v70], &v101[v70], v71);
              __swift_storeEnumTagSinglePayload(&v105[v70], 0, 1, v71);
            }

            v43 = v97;
            v73 = *(v96 + 24);
            v74 = &v105[v73];
            v75 = &v101[v73];
            v76 = *(v75 + 1);
            *v74 = *v75;
            *(v74 + 1) = v76;
            v77 = *(v96 + 28);
            v78 = &v105[v77];
            v79 = &v101[v77];
            v78[4] = v79[4];
            *v78 = *v79;

            __swift_storeEnumTagSinglePayload(v105, 0, 1, v96);
          }

          v80 = *(v98 + 28);
          v81 = *&v12[v80];
          *(v43 + v80) = v81;
          v82 = v81;
          goto LABEL_30;
        case 9u:
          v21 = sub_1DD0DD08C();
          (*(*(v21 - 8) + 16))(v11, v12, v21);
LABEL_30:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v11, v12, *(*(v13 - 8) + 64));
          break;
      }

      *(a1 + v9[6]) = *(a2 + v9[6]);
      v83 = v9[7];
      v84 = a1 + v83;
      v85 = a2 + v83;
      v86 = *(a2 + v83 + 24);

      if (v86)
      {
        v87 = *(v85 + 32);
        *(v84 + 24) = v86;
        *(v84 + 32) = v87;
        (**(v86 - 8))(v84, v85, v86);
      }

      else
      {
        v88 = *(v85 + 16);
        *v84 = *v85;
        *(v84 + 16) = v88;
        *(v84 + 32) = *(v85 + 32);
      }

      *(a1 + v9[8]) = *(a2 + v9[8]);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v90 = swift_getAssociatedTypeWitness();
      type metadata accessor for IntentResolutionRecord(255, AssociatedTypeWitness, v90, v91);
      v92 = *(swift_getTupleTypeMetadata2() + 48);
      v93 = (a1 + v92);
      v94 = (a2 + v92);
      v95 = v94[1];
      *v93 = *v94;
      v93[1] = v95;
      v93[2] = v94[2];
      sub_1DD0DCF8C();
    case 5u:
      v15 = *a2;
      v16 = *(a2 + 8);
      v17 = *(a2 + 16);
      sub_1DCBB12F4(v15, v16, v17);
      *a1 = v15;
      *(a1 + 8) = v16;
      *(a1 + 16) = v17;
      break;
    case 6u:
      v18 = *a2;
      v19 = *a2;
      *a1 = v18;
      *(a1 + 8) = *(a2 + 8);
      break;
    default:
      v6 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v6;
      *(a1 + 16) = *(a2 + 16);
      sub_1DD0DCF8C();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *sub_1DCFD59DC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = type metadata accessor for SiriKitWaitToContinueFlow.State(0, *(a3 + 16), *(a3 + 24), a4);
    (*(*(v6 - 8) + 8))(a1, v6);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 3u:
        v7 = sub_1DD0DB04C();
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        v8 = type metadata accessor for Input(0);
        v9 = v8[5];
        v10 = a1 + v9;
        v11 = a2 + v9;
        v12 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v13 = sub_1DD0DC76C();
            (*(*(v13 - 8) + 16))(v10, v11, v13);
            goto LABEL_33;
          case 1u:
            v25 = sub_1DD0DC76C();
            (*(*(v25 - 8) + 16))(v10, v11, v25);
            v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v10[*(v26 + 48)] = *&v11[*(v26 + 48)];
            sub_1DD0DCF8C();
          case 2u:
            *v10 = *v11;
            *(v10 + 1) = *(v11 + 1);
            *(v10 + 2) = *(v11 + 2);

            goto LABEL_33;
          case 3u:
            *v10 = *v11;
            swift_unknownObjectRetain();
            goto LABEL_33;
          case 4u:
            v19 = sub_1DD0DB1EC();
            (*(*(v19 - 8) + 16))(v10, v11, v19);
            goto LABEL_33;
          case 5u:
            v27 = *v11;
            *v10 = *v11;
            v28 = v27;
            goto LABEL_33;
          case 6u:
            v29 = sub_1DD0DB4BC();
            (*(*(v29 - 8) + 16))(v10, v11, v29);
            __dsta = type metadata accessor for USOParse(0);
            v30 = __dsta[5];
            v31 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v11[v30], 1, v31))
            {
              v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v10[v30], &v11[v30], *(*(v32 - 8) + 64));
            }

            else
            {
              (*(*(v31 - 8) + 16))(&v10[v30], &v11[v30], v31);
              __swift_storeEnumTagSinglePayload(&v10[v30], 0, 1, v31);
            }

            v59 = __dsta[6];
            v60 = &v10[v59];
            v61 = &v11[v59];
            *v60 = *v61;
            *(v60 + 1) = *(v61 + 1);
            v62 = __dsta[7];
            v63 = &v10[v62];
            v64 = &v11[v62];
            v65 = *v64;
            v63[4] = v64[4];
            *v63 = v65;

            goto LABEL_33;
          case 7u:
            v21 = sub_1DD0DB4BC();
            (*(*(v21 - 8) + 16))(v10, v11, v21);
            __dst = type metadata accessor for USOParse(0);
            v22 = __dst[5];
            v23 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v11[v22], 1, v23))
            {
              v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v10[v22], &v11[v22], *(*(v24 - 8) + 64));
            }

            else
            {
              (*(*(v23 - 8) + 16))(&v10[v22], &v11[v22], v23);
              __swift_storeEnumTagSinglePayload(&v10[v22], 0, 1, v23);
            }

            v42 = __dst[6];
            v43 = &v10[v42];
            v44 = &v11[v42];
            *v43 = *v44;
            *(v43 + 1) = *(v44 + 1);
            v45 = __dst[7];
            v46 = &v10[v45];
            v47 = &v11[v45];
            v48 = *v47;
            v46[4] = v47[4];
            *v46 = v48;
            v49 = type metadata accessor for LinkParse(0);
            v50 = v49[5];
            v51 = &v10[v50];
            v52 = &v11[v50];
            *v51 = *v52;
            *(v51 + 1) = *(v52 + 1);
            v53 = v49[6];
            v54 = &v10[v53];
            v55 = &v11[v53];
            *v54 = *v55;
            *(v54 + 1) = *(v55 + 1);
            v56 = v49[7];
            v57 = &v10[v56];
            v58 = &v11[v56];
            *v57 = *v58;
            *(v57 + 1) = *(v58 + 1);

            goto LABEL_33;
          case 8u:
            v33 = sub_1DD0DD12C();
            (*(*(v33 - 8) + 16))(v10, v11, v33);
            v34 = type metadata accessor for NLRouterParse(0);
            v35 = *(v34 + 20);
            v36 = &v10[v35];
            v37 = &v11[v35];
            *v36 = *v37;
            *(v36 + 1) = *(v37 + 1);
            v38 = *(v34 + 24);
            v97 = v34;
            __dstb = &v10[v38];
            v39 = &v11[v38];
            v40 = type metadata accessor for USOParse(0);

            if (__swift_getEnumTagSinglePayload(v39, 1, v40))
            {
              v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dstb, v39, *(*(v41 - 8) + 64));
            }

            else
            {
              v66 = sub_1DD0DB4BC();
              (*(*(v66 - 8) + 16))(__dstb, v39, v66);
              v95 = v40;
              v67 = *(v40 + 20);
              v68 = sub_1DD0DB3EC();
              v96 = v39;
              v69 = &v39[v67];
              v70 = v68;
              if (__swift_getEnumTagSinglePayload(v69, 1, v68))
              {
                v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dstb[v67], &v96[v67], *(*(v71 - 8) + 64));
              }

              else
              {
                (*(*(v70 - 8) + 16))(&__dstb[v67], &v96[v67], v70);
                __swift_storeEnumTagSinglePayload(&__dstb[v67], 0, 1, v70);
              }

              v72 = *(v95 + 24);
              v73 = &__dstb[v72];
              v74 = &v96[v72];
              *v73 = *v74;
              *(v73 + 1) = *(v74 + 1);
              v75 = *(v95 + 28);
              v76 = &__dstb[v75];
              v77 = &v96[v75];
              v78 = *v77;
              v76[4] = v77[4];
              *v76 = v78;

              __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v95);
            }

            v79 = *(v97 + 28);
            v80 = *&v11[v79];
            *&v10[v79] = v80;
            v81 = v80;
            goto LABEL_33;
          case 9u:
            v20 = sub_1DD0DD08C();
            (*(*(v20 - 8) + 16))(v10, v11, v20);
LABEL_33:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v10, v11, *(*(v12 - 8) + 64));
            break;
        }

        *(a1 + v8[6]) = *(a2 + v8[6]);
        v82 = v8[7];
        v83 = a1 + v82;
        v84 = (a2 + v82);
        v85 = *(a2 + v82 + 24);

        if (v85)
        {
          *(v83 + 3) = v85;
          *(v83 + 4) = *(v84 + 4);
          (**(v85 - 8))(v83, v84, v85);
        }

        else
        {
          v86 = *v84;
          v87 = v84[1];
          *(v83 + 4) = *(v84 + 4);
          *v83 = v86;
          *(v83 + 1) = v87;
        }

        *(a1 + v8[8]) = *(a2 + v8[8]);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v89 = swift_getAssociatedTypeWitness();
        type metadata accessor for IntentResolutionRecord(255, AssociatedTypeWitness, v89, v90);
        v91 = *(swift_getTupleTypeMetadata2() + 48);
        v92 = (a1 + v91);
        v93 = (a2 + v91);
        *v92 = *v93;
        v92[1] = v93[1];
        v92[2] = v93[2];
        sub_1DD0DCF8C();
      case 4u:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
      case 5u:
        v14 = *a2;
        v15 = a2[1];
        v16 = *(a2 + 16);
        sub_1DCBB12F4(v14, v15, v16);
        *a1 = v14;
        a1[1] = v15;
        *(a1 + 16) = v16;
        break;
      case 6u:
        v17 = *a2;
        v18 = *a2;
        *a1 = v17;
        *(a1 + 8) = *(a2 + 8);
        break;
      default:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        sub_1DD0DCF8C();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_BYTE *sub_1DCFD64D4(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SiriKitWaitToContinueFlow.State(0, *(a3 + 16), *(a3 + 24), a4);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v7 = sub_1DD0DB04C();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = type metadata accessor for Input(0);
    v9 = v8[5];
    v10 = &a1[v9];
    v11 = &a2[v9];
    v12 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v13 = sub_1DD0DC76C();
        (*(*(v13 - 8) + 32))(v10, v11, v13);
        goto LABEL_26;
      case 1u:
        v21 = sub_1DD0DC76C();
        (*(*(v21 - 8) + 32))(v10, v11, v21);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v10[*(v22 + 48)] = *&v11[*(v22 + 48)];
        goto LABEL_26;
      case 4u:
        v24 = sub_1DD0DB1EC();
        (*(*(v24 - 8) + 32))(v10, v11, v24);
        goto LABEL_26;
      case 6u:
        v25 = sub_1DD0DB4BC();
        (*(*(v25 - 8) + 32))(v10, v11, v25);
        v59 = type metadata accessor for USOParse(0);
        v26 = v59[5];
        v27 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v26], 1, v27))
        {
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v26], &v11[v26], *(*(v28 - 8) + 64));
        }

        else
        {
          (*(*(v27 - 8) + 32))(&v10[v26], &v11[v26], v27);
          __swift_storeEnumTagSinglePayload(&v10[v26], 0, 1, v27);
        }

        *&v10[v59[6]] = *&v11[v59[6]];
        v35 = v59[7];
        v36 = &v10[v35];
        v37 = &v11[v35];
        v36[4] = v37[4];
        *v36 = *v37;
        goto LABEL_26;
      case 7u:
        v29 = sub_1DD0DB4BC();
        (*(*(v29 - 8) + 32))(v10, v11, v29);
        v60 = type metadata accessor for USOParse(0);
        v30 = v60[5];
        v31 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v11[v30], 1, v31))
        {
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v10[v30], &v11[v30], *(*(v32 - 8) + 64));
        }

        else
        {
          (*(*(v31 - 8) + 32))(&v10[v30], &v11[v30], v31);
          __swift_storeEnumTagSinglePayload(&v10[v30], 0, 1, v31);
        }

        *&v10[v60[6]] = *&v11[v60[6]];
        v38 = v60[7];
        v39 = &v10[v38];
        v40 = &v11[v38];
        v39[4] = v40[4];
        *v39 = *v40;
        v41 = type metadata accessor for LinkParse(0);
        *&v10[v41[5]] = *&v11[v41[5]];
        *&v10[v41[6]] = *&v11[v41[6]];
        *&v10[v41[7]] = *&v11[v41[7]];
        goto LABEL_26;
      case 8u:
        v16 = sub_1DD0DD12C();
        (*(*(v16 - 8) + 32))(v10, v11, v16);
        v17 = type metadata accessor for NLRouterParse(0);
        *&v10[*(v17 + 20)] = *&v11[*(v17 + 20)];
        v18 = *(v17 + 24);
        v58 = v17;
        __dst = &v10[v18];
        v19 = &v11[v18];
        v57 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v19, 1, v57))
        {
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(__dst, v19, *(*(v20 - 8) + 64));
        }

        else
        {
          v33 = sub_1DD0DB4BC();
          (*(*(v33 - 8) + 32))(__dst, v19, v33);
          v56 = v57[5];
          v55 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v19[v56], 1, v55))
          {
            v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&__dst[v56], &v19[v56], *(*(v34 - 8) + 64));
          }

          else
          {
            (*(*(v55 - 8) + 32))(&__dst[v56], &v19[v56]);
            __swift_storeEnumTagSinglePayload(&__dst[v56], 0, 1, v55);
          }

          *&__dst[v57[6]] = *&v19[v57[6]];
          v42 = v57[7];
          v43 = &__dst[v42];
          v44 = &v19[v42];
          v43[4] = v44[4];
          *v43 = *v44;
          __swift_storeEnumTagSinglePayload(__dst, 0, 1, v57);
        }

        *&v10[*(v58 + 28)] = *&v11[*(v58 + 28)];
        goto LABEL_26;
      case 9u:
        v23 = sub_1DD0DD08C();
        (*(*(v23 - 8) + 32))(v10, v11, v23);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v10, v11, *(*(v12 - 8) + 64));
        break;
    }

    *&a1[v8[6]] = *&a2[v8[6]];
    v45 = v8[7];
    v46 = &a1[v45];
    v47 = &a2[v45];
    v48 = *(v47 + 1);
    *v46 = *v47;
    *(v46 + 1) = v48;
    *(v46 + 4) = *(v47 + 4);
    a1[v8[8]] = a2[v8[8]];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v50 = swift_getAssociatedTypeWitness();
    type metadata accessor for IntentResolutionRecord(255, AssociatedTypeWitness, v50, v51);
    v52 = *(swift_getTupleTypeMetadata2() + 48);
    v53 = &a1[v52];
    v54 = &a2[v52];
    *v53 = *v54;
    *(v53 + 2) = *(v54 + 2);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v14 = *(*(v6 - 8) + 64);

    return memcpy(a1, a2, v14);
  }
}

_BYTE *sub_1DCFD6D08(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a2)
  {
    return a1;
  }

  v6 = type metadata accessor for SiriKitWaitToContinueFlow.State(0, *(a3 + 16), *(a3 + 24), a4);
  v7 = *(v6 - 8);
  (*(v7 + 8))(a1, v6);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v8 = sub_1DD0DB04C();
    (*(*(v8 - 8) + 32))(a1, a2, v8);
    v9 = type metadata accessor for Input(0);
    v10 = v9[5];
    v11 = &a1[v10];
    v12 = &a2[v10];
    v13 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v14 = sub_1DD0DC76C();
        (*(*(v14 - 8) + 32))(v11, v12, v14);
        goto LABEL_27;
      case 1u:
        v22 = sub_1DD0DC76C();
        (*(*(v22 - 8) + 32))(v11, v12, v22);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&v11[*(v23 + 48)] = *&v12[*(v23 + 48)];
        goto LABEL_27;
      case 4u:
        v25 = sub_1DD0DB1EC();
        (*(*(v25 - 8) + 32))(v11, v12, v25);
        goto LABEL_27;
      case 6u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(v11, v12, v26);
        v60 = type metadata accessor for USOParse(0);
        v27 = v60[5];
        v28 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v12[v27], 1, v28))
        {
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v11[v27], &v12[v27], *(*(v29 - 8) + 64));
        }

        else
        {
          (*(*(v28 - 8) + 32))(&v11[v27], &v12[v27], v28);
          __swift_storeEnumTagSinglePayload(&v11[v27], 0, 1, v28);
        }

        *&v11[v60[6]] = *&v12[v60[6]];
        v36 = v60[7];
        v37 = &v11[v36];
        v38 = &v12[v36];
        v37[4] = v38[4];
        *v37 = *v38;
        goto LABEL_27;
      case 7u:
        v30 = sub_1DD0DB4BC();
        (*(*(v30 - 8) + 32))(v11, v12, v30);
        v61 = type metadata accessor for USOParse(0);
        v31 = v61[5];
        v32 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v12[v31], 1, v32))
        {
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v11[v31], &v12[v31], *(*(v33 - 8) + 64));
        }

        else
        {
          (*(*(v32 - 8) + 32))(&v11[v31], &v12[v31], v32);
          __swift_storeEnumTagSinglePayload(&v11[v31], 0, 1, v32);
        }

        *&v11[v61[6]] = *&v12[v61[6]];
        v39 = v61[7];
        v40 = &v11[v39];
        v41 = &v12[v39];
        v40[4] = v41[4];
        *v40 = *v41;
        v42 = type metadata accessor for LinkParse(0);
        *&v11[v42[5]] = *&v12[v42[5]];
        *&v11[v42[6]] = *&v12[v42[6]];
        *&v11[v42[7]] = *&v12[v42[7]];
        goto LABEL_27;
      case 8u:
        v17 = sub_1DD0DD12C();
        (*(*(v17 - 8) + 32))(v11, v12, v17);
        v18 = type metadata accessor for NLRouterParse(0);
        *&v11[*(v18 + 20)] = *&v12[*(v18 + 20)];
        v19 = *(v18 + 24);
        v59 = v18;
        __dst = &v11[v19];
        v20 = &v12[v19];
        v58 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v20, 1, v58))
        {
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(__dst, v20, *(*(v21 - 8) + 64));
        }

        else
        {
          v34 = sub_1DD0DB4BC();
          (*(*(v34 - 8) + 32))(__dst, v20, v34);
          v57 = v58[5];
          v56 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v20[v57], 1, v56))
          {
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&__dst[v57], &v20[v57], *(*(v35 - 8) + 64));
          }

          else
          {
            (*(*(v56 - 8) + 32))(&__dst[v57], &v20[v57]);
            __swift_storeEnumTagSinglePayload(&__dst[v57], 0, 1, v56);
          }

          *&__dst[v58[6]] = *&v20[v58[6]];
          v43 = v58[7];
          v44 = &__dst[v43];
          v45 = &v20[v43];
          v44[4] = v45[4];
          *v44 = *v45;
          __swift_storeEnumTagSinglePayload(__dst, 0, 1, v58);
        }

        *&v11[*(v59 + 28)] = *&v12[*(v59 + 28)];
        goto LABEL_27;
      case 9u:
        v24 = sub_1DD0DD08C();
        (*(*(v24 - 8) + 32))(v11, v12, v24);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(v11, v12, *(*(v13 - 8) + 64));
        break;
    }

    *&a1[v9[6]] = *&a2[v9[6]];
    v46 = v9[7];
    v47 = &a1[v46];
    v48 = &a2[v46];
    v49 = *(v48 + 1);
    *v47 = *v48;
    *(v47 + 1) = v49;
    *(v47 + 4) = *(v48 + 4);
    a1[v9[8]] = a2[v9[8]];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v51 = swift_getAssociatedTypeWitness();
    type metadata accessor for IntentResolutionRecord(255, AssociatedTypeWitness, v51, v52);
    v53 = *(swift_getTupleTypeMetadata2() + 48);
    v54 = &a1[v53];
    v55 = &a2[v53];
    *v54 = *v55;
    *(v54 + 2) = *(v55 + 2);
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v15 = *(v7 + 64);

  return memcpy(a1, a2, v15);
}

uint64_t sub_1DCFD7578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SiriKitWaitToContinueFlow.State(0, *(a3 + 16), *(a3 + 24), a4);

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_1DCFD75C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SiriKitWaitToContinueFlow.State(0, *(a4 + 16), *(a4 + 24), a4);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v7);
}

void sub_1DCFD7620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v6);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - v9;
  sub_1DCB09910(a3, &v12 - v9, &unk_1ECCAAB70, &qword_1DD0E17E0);
  v11 = sub_1DD0DE4BC();
  __swift_getEnumTagSinglePayload(v10, 1, v11);
  sub_1DD0DCF8C();
}

void sub_1DCFD7888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v11 - v8;
  sub_1DCB09910(a3, &v11 - v8, &unk_1ECCAAB70, &qword_1DD0E17E0);
  v10 = sub_1DD0DE4BC();
  __swift_getEnumTagSinglePayload(v9, 1, v10);
  sub_1DD0DCF8C();
}

void *sub_1DCFD7B10(void *a1, __int128 *a2)
{
  v3 = v2;
  v6 = sub_1DD0DB04C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v7 + 8))(v10, v6);
  v3[8] = sub_1DCB598EC(8);
  v3[9] = v11;
  v3[10] = v12;
  v3[11] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DF0, &qword_1DD0E2270);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABDC8, &qword_1DD109020);
  swift_allocObject();
  v3[2] = sub_1DCFD7D5C(a1);
  sub_1DCAFF9E8(a2, (v3 + 3));
  return v3;
}

void *sub_1DCFD7C88(void *a1)
{
  v1[16] = *a1;
  v1[2] = sub_1DCFE3F28;
  v1[3] = a1;
  v1[4] = &unk_1DD1090A0;
  v1[5] = a1;
  v1[6] = &unk_1DD1090B0;
  v1[7] = a1;
  v1[8] = &unk_1DD1090C0;
  v1[9] = a1;
  v1[10] = &unk_1DD1090D0;
  v1[11] = a1;
  v1[12] = &unk_1DD1090E0;
  v1[13] = a1;
  v1[14] = &unk_1DD1090F0;
  v1[15] = a1;
  swift_retain_n();
  return v1;
}

void *sub_1DCFD7D5C(void *a1)
{
  v1[16] = *a1;
  v1[2] = sub_1DCFE2934;
  v1[3] = a1;
  v1[4] = &unk_1DD109030;
  v1[5] = a1;
  v1[6] = &unk_1DD109040;
  v1[7] = a1;
  v1[8] = &unk_1DD109050;
  v1[9] = a1;
  v1[10] = &unk_1DD109060;
  v1[11] = a1;
  v1[12] = &unk_1DD109070;
  v1[13] = a1;
  v1[14] = &unk_1DD109080;
  v1[15] = a1;
  swift_retain_n();
  return v1;
}

uint64_t sub_1DCFD7E30(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DD07E0C0();
}

uint64_t sub_1DCFD7EDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCBCF08C;

  return sub_1DCFDF094(a1);
}

uint64_t sub_1DCFD7F74(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return sub_1DD07F068();
}

uint64_t sub_1DCFD8038(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return sub_1DCFDF6F0();
}

uint64_t sub_1DCFD80D4(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return sub_1DD07F964();
}

uint64_t sub_1DCFD8170(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCFE1E14(a1);
}

uint64_t sub_1DCFD8208(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AD3C;

  return sub_1DD080798();
}

uint64_t sub_1DCFD82B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return sub_1DCFE1F38(a1);
}

unint64_t sub_1DCFD834C(char a1)
{
  if (a1 < 0)
  {
    sub_1DD0DEC1C();

    v7 = 0xD000000000000016;
    if (a1)
    {
      v4 = 0x776F6C6C6F467369;
    }

    else
    {
      v4 = 0x6C6F46746F4E7369;
    }

    if (a1)
    {
      v5 = 0xEA00000000007055;
    }

    else
    {
      v5 = 0xED00007055776F6CLL;
    }

    MEMORY[0x1E12A6780](v4, v5);
  }

  else
  {
    sub_1DD0DEC1C();

    v7 = 0xD000000000000011;
    if (a1)
    {
      v2 = 0xD000000000000011;
    }

    else
    {
      v2 = 0xD000000000000014;
    }

    if (a1)
    {
      v3 = "notRequestingPrecise";
    }

    else
    {
      v3 = ".readyToCheckAccess/";
    }

    MEMORY[0x1E12A6780](v2, v3 | 0x8000000000000000);
  }

  return v7;
}

uint64_t sub_1DCFD8488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  type metadata accessor for PromptForSiriLocationAccessStrategy();
  sub_1DCB17CA0(a2, v7);
  return sub_1DCFD84E0(v5, v7, v3);
}

uint64_t sub_1DCFD84E0(char a1, void *a2, char a3)
{
  sub_1DCB17CA0(a2, v13);
  v6 = type metadata accessor for ResponseFactory();
  swift_allocObject();
  v11 = v6;
  v12 = &protocol witness table for ResponseFactory;
  v9[3] = &type metadata for TCCLocationAccessTemplates;
  v9[4] = &off_1F5875408;
  *&v10 = ResponseFactory.init()();
  type metadata accessor for PromptForSiriLocationAccessStrategy();
  v7 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v9, &type metadata for TCCLocationAccessTemplates);
  *(v7 + 136) = &type metadata for TCCLocationAccessTemplates;
  *(v7 + 144) = &off_1F5875408;
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v7 + 16) = a1;
  sub_1DCAFF9E8(v13, v7 + 24);
  sub_1DCAFF9E8(&v10, v7 + 72);
  *(v7 + 64) = a3;
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v7;
}

unint64_t sub_1DCFD85C8()
{
  sub_1DCFE359C(v0, v15);
  v1 = 0x6F5479646165722ELL;
  switch(v16)
  {
    case 1:
      v1 = 0xD000000000000011;
      break;
    case 2:
      return v1;
    case 3:
      v1 = 0xD000000000000011;
      break;
    case 4:
      sub_1DCFE35D4(v15);
      v1 = 0xD000000000000014;
      break;
    case 5:
      v5 = *(&v15[0] + 1);
      v13 = 0;
      v14 = 0xE000000000000000;
      sub_1DD0DEC1C();
      MEMORY[0x1E12A6780](0xD00000000000001ELL, 0x80000001DD1290C0);
      v6 = sub_1DD0DE02C();
      MEMORY[0x1E12A6780](v6);

      MEMORY[0x1E12A6780](0xD000000000000016, 0x80000001DD1290E0);
      v10[0] = v5;
      sub_1DCBF4488(v5);
      v7 = sub_1DD0DE02C();
      MEMORY[0x1E12A6780](v7);

      MEMORY[0x1E12A6780](93, 0xE100000000000000);
      sub_1DCBF44A0(v5);
      goto LABEL_14;
    case 6:
      sub_1DCAFF9E8(v15, &v13);
      v10[0] = 0;
      v10[1] = 0xE000000000000000;
      sub_1DD0DEC1C();

      v11 = 0xD000000000000023;
      v12 = 0x80000001DD129090;
      sub_1DCB17CA0(&v13, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABDA8, &qword_1DD108FE0);
      v8 = sub_1DD0DE02C();
      MEMORY[0x1E12A6780](v8);

      v1 = v11;
      __swift_destroy_boxed_opaque_existential_1Tm(&v13);
      break;
    default:
      v2 = LOBYTE(v15[0]);
      sub_1DD0DEC1C();

      v13 = 0xD000000000000014;
      v14 = 0x80000001DD129160;
      if (v2)
      {
        v3 = 0xD000000000000011;
      }

      else
      {
        v3 = 0xD000000000000014;
      }

      if (v2)
      {
        v4 = "notRequestingPrecise";
      }

      else
      {
        v4 = ".readyToCheckAccess/";
      }

      MEMORY[0x1E12A6780](v3, v4 | 0x8000000000000000);

LABEL_14:
      v1 = v13;
      break;
  }

  return v1;
}

unint64_t sub_1DCFD8894()
{
  v1 = *(v0 + 216);
  os_unfair_lock_lock(v1 + 15);
  sub_1DCFE359C(&v1[4], v16);
  os_unfair_lock_unlock(v1 + 15);
  sub_1DCFE359C(v16, v13);
  if (v14 == 6)
  {
    sub_1DCFE35D4(v16);
    sub_1DCAFF9E8(v13, v15);
    v2 = *__swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_1DCBF4488(v2);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    sub_1DCFE35D4(v13);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v2 = 0xF000000000000006;
    v3 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
    v4 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    v5 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_50_0();
      *v7 = 0;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v8, v9, v10, v11, v7, 2u);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    sub_1DCFE35D4(v16);
  }

  return v2;
}

uint64_t sub_1DCFD89E0()
{
  OUTLINED_FUNCTION_42();
  v1[53] = v2;
  v1[54] = v0;
  v3 = type metadata accessor for ExecuteResponse(0);
  v1[55] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v1[56] = OUTLINED_FUNCTION_38();
  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCFD8A5C()
{
  OUTLINED_FUNCTION_125();
  v59 = v1;
  v2 = *(*(v1 + 432) + 216);
  os_unfair_lock_lock(v2 + 15);
  sub_1DCFE359C(&v2[4], v1 + 16);
  os_unfair_lock_unlock(v2 + 15);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v3 = sub_1DD0DD8FC();
  *(v1 + 456) = OUTLINED_FUNCTION_92(v3, qword_1EDE57E00);
  sub_1DCFE359C(v1 + 16, v1 + 64);
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_51_14(v5))
  {
    v6 = OUTLINED_FUNCTION_151();
    v58 = OUTLINED_FUNCTION_83();
    *v6 = 136315138;
    sub_1DCFE359C(v1 + 64, v1 + 352);
    v7 = sub_1DD0DE02C();
    v9 = v8;
    sub_1DCFE35D4(v1 + 64);
    v10 = sub_1DCB10E9C(v7, v9, &v58);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v4, v0, "#SiriLocationAccessCheckFlow execute - executing under state=%s", v6, 0xCu);
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    v11 = OUTLINED_FUNCTION_12_68();
    MEMORY[0x1E12A8390](v11);
  }

  else
  {

    sub_1DCFE35D4(v1 + 64);
  }

  sub_1DCFE359C(v1 + 16, v1 + 112);
  switch(*(v1 + 152))
  {
    case 1:
    case 3:
      sub_1DCFE359C(v1 + 16, v1 + 160);
      v12 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();
      v13 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = OUTLINED_FUNCTION_151();
        v16 = OUTLINED_FUNCTION_83();
        v58 = v16;
        *v15 = 136315138;
        sub_1DCFE359C(v1 + 160, v1 + 208);
        v17 = sub_1DD0DE02C();
        v19 = v18;
        sub_1DCFE35D4(v1 + 160);
        v20 = sub_1DCB10E9C(v17, v19, &v58);

        *(v15 + 4) = v20;
        OUTLINED_FUNCTION_54_6();
        _os_log_impl(v21, v22, v23, v24, v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        v25 = OUTLINED_FUNCTION_12_68();
        MEMORY[0x1E12A8390](v25);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      else
      {

        sub_1DCFE35D4(v1 + 160);
      }

      sub_1DCFE35D4(v1 + 16);
      v26 = *(v1 + 424);
      type metadata accessor for PluginAction(0);
      OUTLINED_FUNCTION_31();
      __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
      *v26 = 1;
      OUTLINED_FUNCTION_16_59();
      goto LABEL_18;
    case 2:
      sub_1DCFDA44C(*(v1 + 112));
    case 4:
      *(v1 + 57) = *(v1 + 112);
      *(v1 + 480) = *(v1 + 120);
      v46 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v47 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v49);
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v50, v51, v52, v53, v54, 2u);
        v55 = OUTLINED_FUNCTION_12_68();
        MEMORY[0x1E12A8390](v55);
      }

      v56 = swift_task_alloc();
      *(v1 + 488) = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
      *v56 = v1;
      v56[1] = sub_1DCFD90B4;
      OUTLINED_FUNCTION_96_0();

      return MEMORY[0x1EEE6DA20]();
    case 5:
      v37 = *(v1 + 120);
      sub_1DCFDDC2C(v37, *(v1 + 112), *(v1 + 424));
      sub_1DCBF44A0(v37);
      v38 = v1 + 16;
      goto LABEL_17;
    case 6:
      v39 = *(v1 + 424);
      sub_1DCFE35D4(v1 + 16);
      type metadata accessor for PluginAction(0);
      OUTLINED_FUNCTION_31();
      __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
      *v39 = 1;
      OUTLINED_FUNCTION_16_59();
      v38 = v1 + 112;
LABEL_17:
      sub_1DCFE35D4(v38);
LABEL_18:

      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_96_0();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v1 + 464) = v31;
      *v31 = v32;
      v31[1] = sub_1DCFD8F34;
      OUTLINED_FUNCTION_96_0();

      return sub_1DCFD9744(v33, v34);
  }
}

uint64_t sub_1DCFD8F34()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 472) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCFD902C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 448);
  v2 = *(v0 + 424);
  sub_1DCFE35D4(v0 + 16);
  sub_1DCFE3EC8(v1, v2, type metadata accessor for ExecuteResponse);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCFD90B4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCFD9198()
{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 424);
  v2 = *(v0 + 400);
  v3 = *(v0 + 408);
  if (v3)
  {
    v4 = v2 | 0x8000000000000000;
  }

  else
  {
    v4 = *(v0 + 400);
  }

  v5 = *(v0 + 57);
  sub_1DCFE3EB0(*(v0 + 400), *(v0 + 408));
  sub_1DCFDDC2C(v4, v5, v1);
  sub_1DCFE3EBC(v2, v3);

  sub_1DCFE3EBC(v2, v3);
  sub_1DCFE35D4(v0 + 16);

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCFD926C()
{
  OUTLINED_FUNCTION_41();
  v25 = v0;
  v1 = *(v0 + 472);
  sub_1DCFE359C(v0 + 16, v0 + 256);
  v2 = v1;
  v3 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();

  if (OUTLINED_FUNCTION_62_0())
  {
    v4 = *(v0 + 472);
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_35_9();
    v24 = swift_slowAlloc();
    *v5 = 136315394;
    sub_1DCFE359C(v0 + 256, v0 + 304);
    v6 = sub_1DD0DE02C();
    v8 = v7;
    sub_1DCFE35D4(v0 + 256);
    v9 = sub_1DCB10E9C(v6, v8, &v24);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v0 + 416) = v4;
    v10 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v11 = sub_1DD0DE02C();
    v13 = sub_1DCB10E9C(v11, v12, &v24);

    *(v5 + 14) = v13;
    OUTLINED_FUNCTION_54_6();
    _os_log_impl(v14, v15, v16, v17, v5, 0x16u);
    swift_arrayDestroy();
    v18 = OUTLINED_FUNCTION_12_68();
    MEMORY[0x1E12A8390](v18);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390](v19);
  }

  else
  {

    sub_1DCFE35D4(v0 + 256);
  }

  v20 = *(v0 + 472);
  v21 = v20;
  sub_1DCFD947C();

  sub_1DCFE35D4(v0 + 16);

  OUTLINED_FUNCTION_29();

  return v22();
}

double sub_1DCFD947C()
{
  v1 = *(v0 + 216);
  os_unfair_lock_lock((v1 + 60));
  sub_1DCFE3E90((v1 + 16));
  os_unfair_lock_unlock((v1 + 60));
  return static ExecuteResponse.complete()();
}

uint64_t sub_1DCFD94E0(__int128 *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v25 = *a1;
  v26[0] = v5;
  *(v26 + 9) = *(a1 + 25);
  sub_1DCFE2A8C(a3, a4, a1);
  *(a1 + 40) = 6;
  sub_1DCFE359C(a1, v24);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  sub_1DCFE359C(v24, v23);
  sub_1DCFE359C(&v25, v22);
  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315394;
    sub_1DCFE359C(v23, v20);
    v11 = sub_1DD0DE02C();
    v13 = v12;
    sub_1DCFE35D4(v23);
    v14 = sub_1DCB10E9C(v11, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    sub_1DCFE359C(v22, v20);
    v15 = sub_1DD0DE02C();
    v17 = v16;
    sub_1DCFE35D4(v22);
    v18 = sub_1DCB10E9C(v15, v17, &v21);

    *(v9 + 14) = v18;
    _os_log_impl(&dword_1DCAFC000, v7, v8, "#SiriLocationAccessCheckFlow exitWithValue - transitioned to state=%s; \n lastState=%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v10, -1, -1);
    MEMORY[0x1E12A8390](v9, -1, -1);
  }

  else
  {

    sub_1DCFE35D4(v22);
    sub_1DCFE35D4(v23);
  }

  sub_1DCFE35D4(v24);
  return sub_1DCFE35D4(&v25);
}

uint64_t sub_1DCFD9744(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_12(sub_1DCFD9760);
}

uint64_t sub_1DCFD9760()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_57_1((*(v0 + 24) + 56), *(*(v0 + 24) + 80));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_31_0(v1);

  return sub_1DCDC75C8();
}

uint64_t sub_1DCFD97F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_29();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1DCFD9910()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 40);
  if ((~v1 & 0xF000000000000006) == 0)
  {
    sub_1DCFD99B8(*(v0 + 48));
  }

  if ((v1 & 0x8000000000000000) == 0 && *(v0 + 48) && (v1 & 1) == 0)
  {
    sub_1DCFD99B8(128);
  }

  sub_1DCFD947C();
  sub_1DCBB1234(v1);
  OUTLINED_FUNCTION_43();

  return v2();
}

void sub_1DCFD99B8(uint64_t a1)
{
  v3 = v2;
  v4 = a1;
  sub_1DCB17CA0(v3 + 16, v18);
  type metadata accessor for GuardedAuthenticationFlow();
  v5 = swift_allocObject();
  sub_1DCFE3A24(v18, sub_1DCFE3E50, v3, v5);
  v6 = *(v3 + 216);
  swift_retain_n();
  os_unfair_lock_lock((v6 + 60));
  sub_1DCFDA6C8((v6 + 16), v4, 1, "#SiriLocationAccessCheckFlow waitForUnlock - transitioned to state=%s; \n lastState=%s", v17, *&v18[0]);
  os_unfair_lock_unlock((v6 + 60));
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v7, qword_1EDE57E00);
  v8 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v9 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = OUTLINED_FUNCTION_50_0();
    *v11 = 0;
    OUTLINED_FUNCTION_54_6();
    _os_log_impl(v12, v13, v14, v15, v11, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = sub_1DCFE3E58;
  *(v16 + 24) = v3;
  sub_1DD0DCF8C();
}

void sub_1DCFD9B7C(uint64_t a1)
{
  sub_1DD01D740();
  sub_1DCB17CA0(a1 + 16, v8);
  sub_1DCB17CA0(a1 + 96, v7);
  type metadata accessor for UnlockDeviceFlowAsync(0);
  swift_allocObject();
  v2 = __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  MEMORY[0x1EEE9AC00](v2, v2);
  (*(v4 + 16))(v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DD01F0F0();
  v6 = v5;
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26B0, &qword_1DD0FF8A0);
  swift_allocObject();
  sub_1DCC4AC30(v6);
}

void sub_1DCFD9D00(char a1)
{
  v2 = v1;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v6 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_151();
    v18 = OUTLINED_FUNCTION_83();
    *v8 = 136315138;
    if (a1)
    {
      v9 = 1818845542;
    }

    else
    {
      v9 = 1936941424;
    }

    v10 = sub_1DCB10E9C(v9, 0xE400000000000000, &v18);

    *(v8 + 4) = v10;
    OUTLINED_FUNCTION_34_3();
    _os_log_impl(v11, v12, v13, v14, v8, 0xCu);
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390](v15);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390](v16);
  }

  v17 = *(v2 + 216);
  os_unfair_lock_lock((v17 + 60));
  sub_1DCFD9E5C((v17 + 16), a1 & 1);

  os_unfair_lock_unlock((v17 + 60));
}

uint64_t sub_1DCFD9E5C(unint64_t *a1, char a2)
{
  sub_1DCFE359C(a1, v47);
  sub_1DCFE359C(a1, v45);
  if (v46 != 1)
  {
    sub_1DCFE35D4(v45);
    sub_1DCFE359C(a1, v45);
    if (v46 == 6)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v12 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v12, qword_1EDE57E00);
      sub_1DCFE359C(v47, v44);
      v13 = sub_1DD0DD8EC();
      v14 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v42[0] = v16;
        *v15 = 136315138;
        sub_1DCFE359C(v44, v43);
        v17 = sub_1DD0DE02C();
        v19 = v18;
        sub_1DCFE35D4(v44);
        v20 = sub_1DCB10E9C(v17, v19, v42);

        *(v15 + 4) = v20;
        v21 = "#SiriLocationAccessCheckFlow onUnlockResult - ignoring late unlockResult during state=%s";
LABEL_22:
        _os_log_impl(&dword_1DCAFC000, v13, v14, v21, v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x1E12A8390](v16, -1, -1);
        MEMORY[0x1E12A8390](v15, -1, -1);

LABEL_26:
        sub_1DCFE35D4(v47);
        v40 = v45;
        return sub_1DCFE35D4(v40);
      }
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v35 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v35, qword_1EDE57E00);
      sub_1DCFE359C(v47, v44);
      v13 = sub_1DD0DD8EC();
      v14 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v42[0] = v16;
        *v15 = 136315138;
        sub_1DCFE359C(v44, v43);
        v36 = sub_1DD0DE02C();
        v38 = v37;
        sub_1DCFE35D4(v44);
        v39 = sub_1DCB10E9C(v36, v38, v42);

        *(v15 + 4) = v39;
        v21 = "#SiriLocationAccessCheckFlow onUnlockResult - unsupported unlockResult during state=%s";
        goto LABEL_22;
      }
    }

    sub_1DCFE35D4(v44);
    goto LABEL_26;
  }

  sub_1DCFE35D4(a1);
  v4 = v45[0];
  if (a2)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6CC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1DCAFC000, v6, v7, "#SiriLocationAccessCheckFlow onUnlockResult - cannot issue privacy prompt with locked device", v8, 2u);
      MEMORY[0x1E12A8390](v8, -1, -1);
    }

    sub_1DCFE3758();
    v9 = swift_allocError();
    *v10 = 0;
    sub_1DCFE2A8C(v9 | 0x8000000000000000, v4, a1);

    v11 = 6;
  }

  else
  {
    *a1 = v45[0];
    v11 = 2;
  }

  *(a1 + 40) = v11;
  sub_1DCFE359C(a1, v45);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v22 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v22, qword_1EDE57E00);
  sub_1DCFE359C(v45, v44);
  sub_1DCFE359C(v47, v43);
  v23 = sub_1DD0DD8EC();
  v24 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v48 = v26;
    *v25 = 136315394;
    sub_1DCFE359C(v44, v42);
    v27 = sub_1DD0DE02C();
    v29 = v28;
    sub_1DCFE35D4(v44);
    v30 = sub_1DCB10E9C(v27, v29, &v48);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    sub_1DCFE359C(v43, v42);
    v31 = sub_1DD0DE02C();
    v33 = v32;
    sub_1DCFE35D4(v43);
    v34 = sub_1DCB10E9C(v31, v33, &v48);

    *(v25 + 14) = v34;
    _os_log_impl(&dword_1DCAFC000, v23, v24, "#SiriLocationAccessCheckFlow onUnlockResult - transitioned to state=%s; \n lastState=%s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v26, -1, -1);
    MEMORY[0x1E12A8390](v25, -1, -1);
  }

  else
  {

    sub_1DCFE35D4(v43);
    sub_1DCFE35D4(v44);
  }

  sub_1DCFE35D4(v45);
  v40 = v47;
  return sub_1DCFE35D4(v40);
}

void sub_1DCFDA44C(uint64_t a1)
{
  v3 = v2;
  v5 = *(v2 + 216);
  os_unfair_lock_lock((v5 + 60));
  sub_1DCFDA6C8((v5 + 16), a1, 3, "#SiriLocationAccessCheckFlow executeAccessPrompt - transitioned to state=%s; \n lastState=%s", v17[0], v17[1]);
  os_unfair_lock_unlock((v5 + 60));
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  __swift_project_boxed_opaque_existential_1((v3 + 16), v6);
  if ((*(v7 + 32))(v6, v7))
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v8 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v8, qword_1EDE57E00);
    v9 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v10 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_50_0();
      *v12 = 0;
      OUTLINED_FUNCTION_54_6();
      _os_log_impl(v13, v14, v15, v16, v12, 2u);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    (*(v3 + 176))(a1, v3 + 16, *(v3 + 192));
    sub_1DCB17CA0(v3 + 96, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DD8, &unk_1DD109010);
    swift_allocObject();
    sub_1DD0DCF8C();
  }

  sub_1DCFDA968(a1);
}

uint64_t sub_1DCFDA6C8(__int128 *a1, char a2, char a3, const char *a4, ...)
{
  v5 = a1[1];
  v28 = *a1;
  v29[0] = v5;
  *(v29 + 9) = *(a1 + 25);
  *a1 = a2;
  *(a1 + 40) = a3;
  sub_1DCFE359C(a1, v27);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  sub_1DCFE359C(v27, v26);
  sub_1DCFE359C(&v28, v25);
  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6DC();
  v9 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    OUTLINED_FUNCTION_35_9();
    v24 = swift_slowAlloc();
    *v11 = 136315394;
    sub_1DCFE359C(v26, v23);
    v12 = sub_1DD0DE02C();
    v14 = v13;
    sub_1DCFE35D4(v26);
    v15 = sub_1DCB10E9C(v12, v14, &v24);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    sub_1DCFE359C(v25, v23);
    v16 = sub_1DD0DE02C();
    v18 = v17;
    sub_1DCFE35D4(v25);
    v19 = sub_1DCB10E9C(v16, v18, &v24);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1DCAFC000, v7, v8, a4, v11, 0x16u);
    swift_arrayDestroy();
    v20 = OUTLINED_FUNCTION_11_3();
    MEMORY[0x1E12A8390](v20);
    v21 = OUTLINED_FUNCTION_12_68();
    MEMORY[0x1E12A8390](v21);
  }

  else
  {

    sub_1DCFE35D4(v25);
    sub_1DCFE35D4(v26);
  }

  sub_1DCFE35D4(v27);
  return sub_1DCFE35D4(&v28);
}

void sub_1DCFDA8EC(uint64_t *a1)
{
  v1 = *(a1 + 4);
  v2 = *a1;
  v3 = v1;
  sub_1DCFDBFA0(&v2);
}

void sub_1DCFDA92C()
{
  if (*(v0 + 208) == 1)
  {
    *(v0 + 208) = 0;
    OUTLINED_FUNCTION_57_1((v0 + 56), *(v0 + 80));
    sub_1DCDC9744();
  }
}

void sub_1DCFDA968(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v3);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  *(v1 + 208) = 1;
  sub_1DD0DE4BC();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v1;
  *(v10 + 40) = a1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFDAA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 184) = a5;
  *(v5 + 112) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DCFDAA74, 0, 0);
}

uint64_t sub_1DCFDAA74()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  *(v0 + 120) = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v3 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v11 = *(v0 + 184);
  v12 = *(v0 + 112);

  OUTLINED_FUNCTION_57_1((v12 + 56), *(v12 + 80));
  v13 = swift_task_alloc();
  *(v0 + 128) = v13;
  *v13 = v0;
  v13[1] = sub_1DCFDABB0;

  return sub_1DCDC7E64(v11 >> 7);
}

uint64_t sub_1DCFDABB0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v4;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCFDACB0()
{
  OUTLINED_FUNCTION_125();
  v30 = v0;
  v1 = v0[17];
  sub_1DCBF4488(v1);
  sub_1DCBF4488(v1);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  sub_1DCBF44A0(v1);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[17];
    v5 = OUTLINED_FUNCTION_151();
    v29[0] = OUTLINED_FUNCTION_83();
    *v5 = 136315138;
    v0[13] = v4;
    sub_1DCBF4488(v4);
    v6 = sub_1DD0DE02C();
    v8 = sub_1DCB10E9C(v6, v7, v29);

    *(v5 + 4) = v8;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    OUTLINED_FUNCTION_44_1();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v14 = v0[17];
  v15 = v0[18];
  v0[19] = v14;
  v16 = *(v0[14] + 216);
  *(swift_task_alloc() + 16) = v14;
  os_unfair_lock_lock(v16 + 15);
  sub_1DCFE39B8(&v16[4], v29);
  os_unfair_lock_unlock(v16 + 15);
  if (!v15)
  {
    v17 = v29[0];
    sub_1DCBF44A0(v14);

    if (v17)
    {
      sub_1DCFDBE60();
    }

    v18 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v19 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v21);
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v22, v23, v24, v25, v26, 2u);
      v27 = OUTLINED_FUNCTION_12_68();
      MEMORY[0x1E12A8390](v27);
    }

    sub_1DCBF44A0(v14);

    OUTLINED_FUNCTION_29();

    v28();
  }
}

void sub_1DCFDAFF8()
{
  v68 = v0;
  v2 = *(v0 + 144);
  *(v0 + 16) = v2;
  v3 = (v0 + 16);
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  type metadata accessor for AFLocationServiceError(0);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 144);
  if (v5)
  {

    v7 = *(v0 + 24);
    v8 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_94_10())
    {
      OUTLINED_FUNCTION_151();
      v67[0] = OUTLINED_FUNCTION_41_29();
      *v1 = 136315138;
      *(v0 + 96) = v7;
      v9 = v7;
      v10 = sub_1DD0DE02C();
      v12 = sub_1DCB10E9C(v10, v11, v67);

      *(v1 + 4) = v12;
      OUTLINED_FUNCTION_61_3();
      _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
      OUTLINED_FUNCTION_4_68();
      v18 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v18);
    }

    *(v0 + 48) = v7;
    sub_1DCFE39D4(&qword_1EDE462F8, 255, type metadata accessor for AFLocationServiceError, &unk_1DD0E0E20);
    OUTLINED_FUNCTION_124();
    sub_1DD0DADCC();
    if (*(v0 + 56) == 1 || (*(v0 + 64) = v7, OUTLINED_FUNCTION_124(), sub_1DD0DADCC(), *(v0 + 72) == 2))
    {
      v19 = 0xC000000000000008;
      v20 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();
      v21 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v21, v22))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_61_3();
        _os_log_impl(v23, v24, v25, v26, v27, 2u);
        v28 = OUTLINED_FUNCTION_11_3();
        MEMORY[0x1E12A8390](v28);
      }

      v29 = 1;
    }

    else
    {
      *(v0 + 80) = v7;
      OUTLINED_FUNCTION_124();
      sub_1DD0DADCC();
      if (*(v0 + 88) == 3)
      {
        v19 = 0xC000000000000008;
        v43 = sub_1DD0DD8EC();
        sub_1DD0DE6EC();
        v44 = OUTLINED_FUNCTION_19_2();
        if (os_log_type_enabled(v44, v45))
        {
          *OUTLINED_FUNCTION_50_0() = 0;
          OUTLINED_FUNCTION_61_3();
          _os_log_impl(v46, v47, v48, v49, v50, 2u);
          v51 = OUTLINED_FUNCTION_11_3();
          MEMORY[0x1E12A8390](v51);
        }
      }

      else
      {
        v19 = v7 | 0x8000000000000000;
        v52 = v7;
      }

      v29 = 0;
    }
  }

  else
  {

    v30 = v6;
    v31 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_57_9())
    {
      v32 = *(v0 + 144);
      OUTLINED_FUNCTION_151();
      v67[0] = OUTLINED_FUNCTION_109();
      *v6 = 136315138;
      *(v0 + 40) = v32;
      v33 = v32;
      v34 = sub_1DD0DE02C();
      v36 = sub_1DCB10E9C(v34, v35, v67);

      *(v6 + 1) = v36;
      OUTLINED_FUNCTION_34_3();
      OUTLINED_FUNCTION_65_8(v37, v38, v39, v40);
      OUTLINED_FUNCTION_4_68();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v41 = *(v0 + 144);
    v19 = v41 | 0x8000000000000000;
    v42 = v41;
    v29 = 0;
  }

  *(v0 + 152) = v19;
  v53 = *(*(v0 + 112) + 216);
  *(swift_task_alloc() + 16) = v19;
  os_unfair_lock_lock(v53 + 15);
  sub_1DCFE39B8(&v53[4], v67);
  os_unfair_lock_unlock(v53 + 15);
  v54 = LOBYTE(v67[0]);
  sub_1DCBF44A0(v19);

  if (v29)
  {
    v55 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v56 = OUTLINED_FUNCTION_19_2();
    if (!os_log_type_enabled(v56, v57))
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v54)
    {
      sub_1DCFDBE60();
    }

    v55 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v58 = OUTLINED_FUNCTION_19_2();
    if (!os_log_type_enabled(v58, v59))
    {
LABEL_26:
      sub_1DCBF44A0(v19);

      OUTLINED_FUNCTION_29();
      OUTLINED_FUNCTION_73();

      __asm { BRAA            X1, X16 }
    }
  }

  v60 = OUTLINED_FUNCTION_50_0();
  *v60 = 0;
  OUTLINED_FUNCTION_54_6();
  _os_log_impl(v61, v62, v63, v64, v60, 2u);
  OUTLINED_FUNCTION_18();
  MEMORY[0x1E12A8390]();
  goto LABEL_26;
}

uint64_t sub_1DCFDB5E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 185) = v3;
  *(v1 + 176) = v4;

  v5 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCFDB6D4()
{
  OUTLINED_FUNCTION_125();
  v39 = v0;
  v2 = *(v0 + 176);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();

    v5 = OUTLINED_FUNCTION_57_9();
    v6 = *(v0 + 152);
    v7 = *(v0 + 160);
    if (!v5)
    {
      sub_1DCBF44A0(*(v0 + 152));

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_151();
    v8 = OUTLINED_FUNCTION_109();
    v38 = v8;
    *v1 = 136315138;
    *(v0 + 32) = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v10 = sub_1DD0DE02C();
    v12 = sub_1DCB10E9C(v10, v11, &v38);

    *(v1 + 4) = v12;
    OUTLINED_FUNCTION_34_3();
    OUTLINED_FUNCTION_65_8(v13, v14, v15, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    v17 = OUTLINED_FUNCTION_11_3();
    MEMORY[0x1E12A8390](v17);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390](v18);
    sub_1DCBF44A0(v6);
  }

  else
  {
    v4 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v19 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 185);
      v22 = *(v0 + 152);
      v23 = *(v0 + 160);
      v24 = OUTLINED_FUNCTION_151();
      v38 = OUTLINED_FUNCTION_83();
      *v24 = 136315138;
      if (v21)
      {
        v25 = 1702195828;
      }

      else
      {
        v25 = 0x65736C6166;
      }

      if (v21)
      {
        v26 = 0xE400000000000000;
      }

      else
      {
        v26 = 0xE500000000000000;
      }

      v27 = sub_1DCB10E9C(v25, v26, &v38);

      *(v24 + 4) = v27;
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
      OUTLINED_FUNCTION_44_1();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390](v33);
      v34 = OUTLINED_FUNCTION_12_68();
      MEMORY[0x1E12A8390](v34);
      sub_1DCBF44A0(v22);
    }

    else
    {
      v35 = *(v0 + 160);
      sub_1DCBF44A0(*(v0 + 152));
    }
  }

LABEL_15:
  OUTLINED_FUNCTION_29();

  return v36();
}

uint64_t sub_1DCFDB920@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, BOOL *a3@<X8>)
{
  sub_1DCFE359C(a1, v42);
  sub_1DCFE359C(a1, v40);
  v6 = v41;
  if (v41 != 3)
  {
    sub_1DCFE35D4(v40);
    sub_1DCFE359C(a1, v40);
    if (v41 == 4)
    {
LABEL_20:
      sub_1DCFE35D4(v42);
      v30 = v40;
      goto LABEL_21;
    }

    sub_1DCFE35D4(v40);
    sub_1DCFE359C(a1, v40);
    if (v41 == 6)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v20 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v20, qword_1EDE57E00);
      sub_1DCFE359C(v42, v39);
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v37[0] = v24;
        *v23 = 136315138;
        sub_1DCFE359C(v39, v38);
        v25 = sub_1DD0DE02C();
        v27 = v26;
        sub_1DCFE35D4(v39);
        v28 = sub_1DCB10E9C(v25, v27, v37);

        *(v23 + 4) = v28;
        v29 = "#SiriLocationAccessCheckFlow startTCCRequest - ignoring late TCC result during state=%s";
LABEL_18:
        _os_log_impl(&dword_1DCAFC000, v21, v22, v29, v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x1E12A8390](v24, -1, -1);
        MEMORY[0x1E12A8390](v23, -1, -1);

        goto LABEL_20;
      }
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v31 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v31, qword_1EDE57E00);
      sub_1DCFE359C(v42, v39);
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v37[0] = v24;
        *v23 = 136315138;
        sub_1DCFE359C(v39, v38);
        v32 = sub_1DD0DE02C();
        v34 = v33;
        sub_1DCFE35D4(v39);
        v35 = sub_1DCB10E9C(v32, v34, v37);

        *(v23 + 4) = v35;
        v29 = "#SiriLocationAccessCheckFlow startTCCRequest - unsupported TCC result during state=%s";
        goto LABEL_18;
      }
    }

    sub_1DCFE35D4(v39);
    goto LABEL_20;
  }

  sub_1DCFE35D4(a1);
  *a1 = v40[0];
  *(a1 + 8) = a2;
  *(a1 + 40) = 5;
  sub_1DCFE359C(a1, v40);
  sub_1DCBF4488(a2);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  sub_1DCFE359C(v40, v39);
  sub_1DCFE359C(v42, v38);
  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v43 = v11;
    *v10 = 136315394;
    sub_1DCFE359C(v39, v37);
    v12 = sub_1DD0DE02C();
    v14 = v13;
    sub_1DCFE35D4(v39);
    v15 = sub_1DCB10E9C(v12, v14, &v43);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    sub_1DCFE359C(v38, v37);
    v16 = sub_1DD0DE02C();
    v18 = v17;
    sub_1DCFE35D4(v38);
    v19 = sub_1DCB10E9C(v16, v18, &v43);

    *(v10 + 14) = v19;
    _os_log_impl(&dword_1DCAFC000, v8, v9, "#SiriLocationAccessCheckFlow startTCCRequest - transitioned to state=%s; \n lastState=%s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v11, -1, -1);
    MEMORY[0x1E12A8390](v10, -1, -1);
  }

  else
  {

    sub_1DCFE35D4(v38);
    sub_1DCFE35D4(v39);
  }

  sub_1DCFE35D4(v40);
  v30 = v42;
LABEL_21:
  result = sub_1DCFE35D4(v30);
  *a3 = v6 == 3;
  return result;
}

void sub_1DCFDBE60()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_7_1();
  DeviceState.asInvocationContext.getter();
}

void sub_1DCFDBFA0(uint64_t a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v7, qword_1EDE57E00);
  v8 = OUTLINED_FUNCTION_50_23();
  sub_1DCFE38C0(v8, v9, v10);
  v11 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v12 = OUTLINED_FUNCTION_50_23();
  sub_1DCC99E2C(v12, v13, v14);
  if (OUTLINED_FUNCTION_94_10())
  {
    OUTLINED_FUNCTION_151();
    v34 = OUTLINED_FUNCTION_41_29();
    *v2 = 136315138;
    v15 = OUTLINED_FUNCTION_50_23();
    sub_1DCFE38C0(v15, v16, v17);
    v18 = sub_1DCC3327C(v4, v5 | (v6 << 8));
    v20 = v19;
    v21 = OUTLINED_FUNCTION_50_23();
    sub_1DCC99E2C(v21, v22, v23);
    v24 = sub_1DCB10E9C(v18, v20, &v34);

    *(v2 + 4) = v24;
    OUTLINED_FUNCTION_61_3();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    OUTLINED_FUNCTION_4_68();
    v30 = OUTLINED_FUNCTION_11_3();
    MEMORY[0x1E12A8390](v30);
  }

  v31 = *(v3 + 216);
  MEMORY[0x1EEE9AC00](v32, v33);
  os_unfair_lock_lock(v31 + 15);
  sub_1DCFE38EC(&v31[4]);
  os_unfair_lock_unlock(v31 + 15);
  sub_1DCFDA92C();
}

uint64_t sub_1DCFDC13C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  sub_1DCFE359C(a1, v34);
  sub_1DCFE359C(a1, &v31);
  if (v33 == 3)
  {
    sub_1DCFE35D4(a1);
    v7 = v31;
    v31 = a3;
    v32 = a4;
    sub_1DCFDC6C4(&v31, v7);
  }

  sub_1DCFE35D4(&v31);
  sub_1DCFE359C(a1, &v31);
  if (v33 - 5 >= 2)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v18, qword_1EDE57E00);
    sub_1DCFE359C(v34, v30);
    v19 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28[0] = v22;
      *v21 = 136315138;
      sub_1DCFE359C(v30, v29);
      v23 = sub_1DD0DE02C();
      v25 = v24;
      sub_1DCFE35D4(v30);
      v26 = sub_1DCB10E9C(v23, v25, v28);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_1DCAFC000, v19, v20, "#SiriLocationAccessCheckFlow onSiriPromptResult - unsupported Siri prompt result during state=%s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x1E12A8390](v22, -1, -1);
      MEMORY[0x1E12A8390](v21, -1, -1);
    }

    else
    {

      sub_1DCFE35D4(v30);
    }

    sub_1DCFE35D4(v34);
    v17 = &v31;
  }

  else
  {
    sub_1DCFE35D4(&v31);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v8 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v8, qword_1EDE57E00);
    sub_1DCFE359C(v34, &v31);
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v29[0] = v12;
      *v11 = 136315138;
      sub_1DCFE359C(&v31, v30);
      v13 = sub_1DD0DE02C();
      v15 = v14;
      sub_1DCFE35D4(&v31);
      v16 = sub_1DCB10E9C(v13, v15, v29);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_1DCAFC000, v9, v10, "#SiriLocationAccessCheckFlow onSiriPromptResult - ignoring late Siri prompt result during state=%s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1E12A8390](v12, -1, -1);
      MEMORY[0x1E12A8390](v11, -1, -1);
    }

    else
    {

      sub_1DCFE35D4(&v31);
    }

    v17 = v34;
  }

  return sub_1DCFE35D4(v17);
}

void sub_1DCFDC6C4(uint64_t *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v5);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v8 = *a1;
  v9 = *(a1 + 9);
  LOBYTE(a1) = *(a1 + 8);
  sub_1DD0DE4BC();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = v2;
  *(v14 + 40) = v8;
  *(v14 + 48) = a1;
  *(v14 + 49) = v9;
  *(v14 + 50) = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFDC7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, char a7)
{
  *(v7 + 170) = a7;
  *(v7 + 168) = a6;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCFDC804, 0, 0);
}

uint64_t sub_1DCFDC804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_58_18();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_125();
  a18 = v20;
  v23 = *(v20 + 168);
  v24 = *(v20 + 170);
  a10 = *(v20 + 88);
  LOWORD(a11) = v23;
  v25 = sub_1DCFDDB44(&a10, v24);
  v27 = v25;
  *(v20 + 96) = v25;
  *(v20 + 171) = v26;
  if (v26)
  {
    if (v26 == 1)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v28 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v28, qword_1EDE57E00);
      v29 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v30 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = OUTLINED_FUNCTION_151();
        a10 = OUTLINED_FUNCTION_83();
        *v32 = 136315138;
        *(v20 + 56) = v27;
        type metadata accessor for AFUserSelectedLocationAuthorizationStyle(0);
        v33 = sub_1DD0DE02C();
        v35 = sub_1DCB10E9C(v33, v34, &a10);

        *(v32 + 4) = v35;
        OUTLINED_FUNCTION_34_3();
        _os_log_impl(v36, v37, v38, v39, v32, 0xCu);
        OUTLINED_FUNCTION_44_1();
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      OUTLINED_FUNCTION_57_1((*(v20 + 80) + 56), *(*(v20 + 80) + 80));
      v40 = swift_task_alloc();
      *(v20 + 104) = v40;
      *v40 = v20;
      OUTLINED_FUNCTION_31_0(v40);
      OUTLINED_FUNCTION_88_1();

      return sub_1DCDC8C14(v41);
    }

    if (v25)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v56 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v56, qword_1EDE57E00);
      v57 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v58 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 67109120;
        v60[1] = 1;
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v61, v62, v63, v64, v65, 8u);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      v66 = *(v20 + 80);

      OUTLINED_FUNCTION_57_1((v66 + 56), *(v66 + 80));
      v67 = swift_task_alloc();
      *(v20 + 120) = v67;
      *v67 = v20;
      OUTLINED_FUNCTION_31_0(v67);
      OUTLINED_FUNCTION_88_1();

      return sub_1DCDC91E0(v68);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v70 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v70, qword_1EDE57E00);
    v71 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v72 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v72, v73))
    {
      *swift_slowAlloc() = 67109120;
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v74, v75, v76, v77, v78, 8u);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v27 = 0;
  }

  else
  {
    sub_1DCBF4488(v25);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v44 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v44, qword_1EDE57E00);
    sub_1DCBF4488(v27);
    v45 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    sub_1DCFE38DC(v27, 0);
    if (OUTLINED_FUNCTION_62_0())
    {
      v46 = OUTLINED_FUNCTION_151();
      a10 = OUTLINED_FUNCTION_83();
      *v46 = 136315138;
      *(v20 + 64) = v27;
      sub_1DCBF4488(v27);
      v47 = sub_1DD0DE02C();
      v49 = sub_1DCB10E9C(v47, v48, &a10);

      *(v46 + 4) = v49;
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v50, v51, v52, v53, v54, 0xCu);
      OUTLINED_FUNCTION_44_1();
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
      v55 = OUTLINED_FUNCTION_12_68();
      MEMORY[0x1E12A8390](v55);
    }

    sub_1DCFE38DC(v27, 0);
  }

  **(v20 + 72) = v27;
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_1();

  return v80(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, a11, a12);
}

uint64_t sub_1DCFDCCC0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCFDCDB8()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  v0[17] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v3 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v11 = v0[10];

  OUTLINED_FUNCTION_57_1((v11 + 56), *(v11 + 80));
  v12 = swift_task_alloc();
  v0[18] = v12;
  *v12 = v0;
  OUTLINED_FUNCTION_31_0(v12);

  return sub_1DCDC75C8();
}

uint64_t sub_1DCFDCEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  v15 = *(v13 + 112);
  OUTLINED_FUNCTION_90_12();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  type metadata accessor for AFLocationServiceError(0);
  OUTLINED_FUNCTION_39_32();
  if (swift_dynamicCast())
  {

    v17 = *(v12 + 8);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v18, qword_1EDE57E00);
    v19 = v17;
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_57_9())
    {
      OUTLINED_FUNCTION_151();
      OUTLINED_FUNCTION_41_29();
      OUTLINED_FUNCTION_71_17();
      *v14 = 136315138;
      *(v12 + 24) = v19;
      v22 = v19;
      v23 = sub_1DD0DE02C();
      v27 = OUTLINED_FUNCTION_88_14(v23, v24, v25, v26);

      *(v14 + 4) = v27;
      OUTLINED_FUNCTION_23_4(&dword_1DCAFC000, v28, v21, "#SiriLocationAccessCheckFlow startTCCUpdateTask - forwarding user selection failed; AFLocationServiceError=%s");
      OUTLINED_FUNCTION_4_68();
      v29 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v29);
    }

    OUTLINED_FUNCTION_44_31();
    OUTLINED_FUNCTION_73_14();
  }

  else
  {

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v30 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v30, qword_1EDE57E00);
    v31 = v15;
    v32 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_94_10())
    {
      OUTLINED_FUNCTION_151();
      OUTLINED_FUNCTION_41_29();
      OUTLINED_FUNCTION_71_17();
      OUTLINED_FUNCTION_93_9(4.8149e-34);
      v33 = sub_1DD0DE02C();
      OUTLINED_FUNCTION_88_14(v33, v34, v35, v36);
      OUTLINED_FUNCTION_31_12();
      *(v14 + 4) = v16;
      OUTLINED_FUNCTION_61_3();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      OUTLINED_FUNCTION_4_68();
      v42 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v42);
    }

    OUTLINED_FUNCTION_44_31();
    OUTLINED_FUNCTION_84_13();
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_88_1();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_1DCFDD128()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCFDD220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  v15 = *(v13 + 128);
  OUTLINED_FUNCTION_90_12();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  type metadata accessor for AFLocationServiceError(0);
  OUTLINED_FUNCTION_39_32();
  if (swift_dynamicCast())
  {

    v17 = *(v12 + 8);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v18, qword_1EDE57E00);
    v19 = v17;
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_57_9())
    {
      OUTLINED_FUNCTION_151();
      OUTLINED_FUNCTION_41_29();
      OUTLINED_FUNCTION_71_17();
      *v14 = 136315138;
      *(v12 + 24) = v19;
      v22 = v19;
      v23 = sub_1DD0DE02C();
      v27 = OUTLINED_FUNCTION_88_14(v23, v24, v25, v26);

      *(v14 + 4) = v27;
      OUTLINED_FUNCTION_23_4(&dword_1DCAFC000, v28, v21, "#SiriLocationAccessCheckFlow startTCCUpdateTask - forwarding user selection failed; AFLocationServiceError=%s");
      OUTLINED_FUNCTION_4_68();
      v29 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v29);
    }

    OUTLINED_FUNCTION_44_31();
    OUTLINED_FUNCTION_73_14();
  }

  else
  {

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v30 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v30, qword_1EDE57E00);
    v31 = v15;
    v32 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_94_10())
    {
      OUTLINED_FUNCTION_151();
      OUTLINED_FUNCTION_41_29();
      OUTLINED_FUNCTION_71_17();
      OUTLINED_FUNCTION_93_9(4.8149e-34);
      v33 = sub_1DD0DE02C();
      OUTLINED_FUNCTION_88_14(v33, v34, v35, v36);
      OUTLINED_FUNCTION_31_12();
      *(v14 + 4) = v16;
      OUTLINED_FUNCTION_61_3();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      OUTLINED_FUNCTION_4_68();
      v42 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v42);
    }

    OUTLINED_FUNCTION_44_31();
    OUTLINED_FUNCTION_84_13();
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_88_1();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_1DCFDD464()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v4;
  *(v2 + 160) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCFDD564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_58_18();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_125();
  a18 = v20;
  if ((~*(v20 + 152) & 0xF000000000000006) != 0)
  {
    sub_1DCFE38DC(*(v20 + 96), *(v20 + 171));
    **(v20 + 72) = *(v20 + 152);
    OUTLINED_FUNCTION_43();
  }

  else
  {
    v24 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    v25 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v20 + 152);
      v28 = OUTLINED_FUNCTION_151();
      v29 = OUTLINED_FUNCTION_83();
      a10 = v29;
      *v28 = 136315138;
      *(v20 + 48) = v27;
      v30 = sub_1DD0DE02C();
      v21 = v31;
      v32 = sub_1DCB10E9C(v30, v31, &a10);

      *(v28 + 4) = v32;
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v38 = OUTLINED_FUNCTION_12_68();
      MEMORY[0x1E12A8390](v38);
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    sub_1DCDCB0A4();
    v39 = swift_allocError();
    *v40 = 1;
    swift_willThrow();
    *(v20 + 16) = v39;
    v41 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    type metadata accessor for AFLocationServiceError(0);
    if (swift_dynamicCast())
    {

      v42 = *(v20 + 24);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v43 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v43, qword_1EDE57E00);
      v44 = v42;
      v45 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();

      if (OUTLINED_FUNCTION_62_0())
      {
        OUTLINED_FUNCTION_151();
        v46 = OUTLINED_FUNCTION_109();
        a10 = v46;
        *v21 = 136315138;
        *(v20 + 40) = v44;
        v47 = v44;
        v48 = sub_1DD0DE02C();
        v50 = sub_1DCB10E9C(v48, v49, &a10);

        *(v21 + 4) = v50;
        OUTLINED_FUNCTION_54_6();
        OUTLINED_FUNCTION_65_8(v51, v52, v53, v54);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        v55 = OUTLINED_FUNCTION_11_3();
        MEMORY[0x1E12A8390](v55);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      OUTLINED_FUNCTION_44_31();
      OUTLINED_FUNCTION_73_14();
    }

    else
    {

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v56 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v56, qword_1EDE57E00);
      v57 = v39;
      v58 = sub_1DD0DD8EC();
      sub_1DD0DE6EC();

      if (OUTLINED_FUNCTION_57_9())
      {
        OUTLINED_FUNCTION_151();
        v59 = OUTLINED_FUNCTION_109();
        a10 = v59;
        *v21 = 136315138;
        *(v20 + 32) = v39;
        v60 = v39;
        v61 = sub_1DD0DE02C();
        v65 = OUTLINED_FUNCTION_88_14(v61, v62, v63, v64);

        *(v21 + 4) = v65;
        OUTLINED_FUNCTION_34_3();
        OUTLINED_FUNCTION_65_8(v66, v67, v68, v69);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        v70 = OUTLINED_FUNCTION_11_3();
        MEMORY[0x1E12A8390](v70);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      OUTLINED_FUNCTION_44_31();
      OUTLINED_FUNCTION_84_13();
    }

    OUTLINED_FUNCTION_29();
  }

  OUTLINED_FUNCTION_88_1();

  return v72(v71, v72, v73, v74, v75, v76, v77, v78, a9, a10, a11, a12);
}

uint64_t sub_1DCFDD900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_58_18();
  OUTLINED_FUNCTION_125();
  v15 = *(v13 + 160);
  OUTLINED_FUNCTION_90_12();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  type metadata accessor for AFLocationServiceError(0);
  OUTLINED_FUNCTION_39_32();
  if (swift_dynamicCast())
  {

    v17 = *(v12 + 8);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v18 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v18, qword_1EDE57E00);
    v19 = v17;
    v20 = sub_1DD0DD8EC();
    v21 = sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_57_9())
    {
      OUTLINED_FUNCTION_151();
      OUTLINED_FUNCTION_41_29();
      OUTLINED_FUNCTION_71_17();
      *v14 = 136315138;
      *(v12 + 24) = v19;
      v22 = v19;
      v23 = sub_1DD0DE02C();
      v27 = OUTLINED_FUNCTION_88_14(v23, v24, v25, v26);

      *(v14 + 4) = v27;
      OUTLINED_FUNCTION_23_4(&dword_1DCAFC000, v28, v21, "#SiriLocationAccessCheckFlow startTCCUpdateTask - forwarding user selection failed; AFLocationServiceError=%s");
      OUTLINED_FUNCTION_4_68();
      v29 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v29);
    }

    OUTLINED_FUNCTION_44_31();
    OUTLINED_FUNCTION_73_14();
  }

  else
  {

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v30 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v30, qword_1EDE57E00);
    v31 = v15;
    v32 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();

    if (OUTLINED_FUNCTION_94_10())
    {
      OUTLINED_FUNCTION_151();
      OUTLINED_FUNCTION_41_29();
      OUTLINED_FUNCTION_71_17();
      OUTLINED_FUNCTION_93_9(4.8149e-34);
      v33 = sub_1DD0DE02C();
      OUTLINED_FUNCTION_88_14(v33, v34, v35, v36);
      OUTLINED_FUNCTION_31_12();
      *(v14 + 4) = v16;
      OUTLINED_FUNCTION_61_3();
      _os_log_impl(v37, v38, v39, v40, v41, 0xCu);
      OUTLINED_FUNCTION_4_68();
      v42 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v42);
    }

    OUTLINED_FUNCTION_44_31();
    OUTLINED_FUNCTION_84_13();
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_88_1();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_1DCFDDB44(uint64_t a1, char a2)
{
  v2 = *a1;
  if (*(a1 + 9))
  {
    if (*(a1 + 9) == 1)
    {
      v3 = v2 | 0x8000000000000000;
      v4 = v2;
    }

    else
    {
      return 0xC000000000000008;
    }
  }

  else
  {
    v5 = v2 >> 62;
    if (a2 < 0)
    {
      if (v5 >= 2)
      {
        if (v5 == 2)
        {
LABEL_11:
          sub_1DCBF4488(*a1);
          return v2;
        }

        else
        {
LABEL_12:
          if (v2 == 0xC000000000000000)
          {
            return 0;
          }

          else
          {
            return *a1;
          }
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      v3 = 1;
      switch(v5)
      {
        case 1:
          v3 = 2;
          break;
        case 2:
          goto LABEL_11;
        case 3:
          goto LABEL_12;
        default:
          return v3;
      }
    }
  }

  return v3;
}

double sub_1DCFDDC2C@<D0>(unint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = v3;
  if ((a2 & 0x80) != 0 || (a1 & 0x8000000000000000) != 0 || (a1 & 1) != 0 || (a2 & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v22 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
    sub_1DCBF4488(a1);
    v23 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    sub_1DCBF44A0(a1);
    if (OUTLINED_FUNCTION_94_10())
    {
      OUTLINED_FUNCTION_151();
      v33[0] = OUTLINED_FUNCTION_41_29();
      *v4 = 136315138;
      v33[5] = a1;
      sub_1DCBF4488(a1);
      v24 = sub_1DD0DE02C();
      v26 = sub_1DCB10E9C(v24, v25, v33);

      *(v4 + 4) = v26;
      OUTLINED_FUNCTION_61_3();
      _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
      OUTLINED_FUNCTION_4_68();
      v32 = OUTLINED_FUNCTION_11_3();
      MEMORY[0x1E12A8390](v32);
    }

    return sub_1DCFD947C();
  }

  else
  {
    sub_1DCFE2A8C(a1, a2, v33);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v8 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v8, qword_1EDE57E00);
    v9 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    v10 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v12);
      OUTLINED_FUNCTION_16_0(&dword_1DCAFC000, v13, v14, "#SiriLocationAccessCheckFlow handleTCCResult - need to do one-time prompt for temp, precise access permissions");
      v15 = OUTLINED_FUNCTION_12_68();
      MEMORY[0x1E12A8390](v15);
    }

    v16 = *(v5 + 216);
    os_unfair_lock_lock((v16 + 60));
    sub_1DCFDDE70((v16 + 16));
    os_unfair_lock_unlock((v16 + 60));
    type metadata accessor for ExecuteResponse(0);
    type metadata accessor for PluginAction(0);
    OUTLINED_FUNCTION_31();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    *a3 = 0;
    return OUTLINED_FUNCTION_16_59();
  }
}

uint64_t sub_1DCFDDE70(__int128 *a1)
{
  v1 = a1[1];
  v21 = *a1;
  v22[0] = v1;
  *(v22 + 9) = *(a1 + 25);
  *a1 = -127;
  *(a1 + 40) = 2;
  sub_1DCFE359C(a1, v20);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DCFE359C(v20, v19);
  sub_1DCFE359C(&v21, v18);
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    sub_1DCFE359C(v19, v16);
    v7 = sub_1DD0DE02C();
    v9 = v8;
    sub_1DCFE35D4(v19);
    v10 = sub_1DCB10E9C(v7, v9, &v17);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2080;
    sub_1DCFE359C(v18, v16);
    v11 = sub_1DD0DE02C();
    v13 = v12;
    sub_1DCFE35D4(v18);
    v14 = sub_1DCB10E9C(v11, v13, &v17);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "#SiriLocationAccessCheckFlow handleTCCResult - transitioned to state=%s; \n lastState=%s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v6, -1, -1);
    MEMORY[0x1E12A8390](v5, -1, -1);
  }

  else
  {

    sub_1DCFE35D4(v18);
    sub_1DCFE35D4(v19);
  }

  sub_1DCFE35D4(v20);
  return sub_1DCFE35D4(&v21);
}

void *sub_1DCFDE0C0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);

  return v0;
}

uint64_t sub_1DCFDE110()
{
  sub_1DCFDE0C0();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFDE204()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_13_17(v1);

  return sub_1DCFD89E0();
}

unint64_t sub_1DCFDE28C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DCFD8894();
  *a1 = result;
  return result;
}

void sub_1DCFDE2B8(char *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_16();
  v10 = (v9 - v8);
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_3_2();
  sub_1DCB2479C(&a1[v11], v10, v12);
  OUTLINED_FUNCTION_124();
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v13 = *v10;
    v14 = v10[1];

    v15 = sub_1DCFEBF5C(v13, v14);

    if (v15 - 1 < 3)
    {
LABEL_17:
      v25 = 1;
      goto LABEL_18;
    }

    if (!v15)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v16 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v16, qword_1EDE57E00);
      v17 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      v18 = OUTLINED_FUNCTION_19_2();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = OUTLINED_FUNCTION_50_0();
        *v20 = 0;
        OUTLINED_FUNCTION_54_6();
        _os_log_impl(v21, v22, v23, v24, v20, 2u);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      v25 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_109();
    sub_1DCFE37AC(v10, v26);
  }

  v27 = sub_1DCFDE538(a1, *(v3 + 16));
  if ((~v27 & 0xF000000000000006) != 0)
  {
    sub_1DCBB1234(v27);
    goto LABEL_17;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v28 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v28, qword_1EDE57E00);
  v29 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  v30 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = OUTLINED_FUNCTION_50_0();
    *v32 = 0;
    OUTLINED_FUNCTION_54_6();
    _os_log_impl(v33, v34, v35, v36, v32, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v25 = 2;
LABEL_18:
  *a2 = v25;
}

unint64_t sub_1DCFDE538(char *a1, unsigned int a2)
{
  v139 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  OUTLINED_FUNCTION_20_0(v3);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  v137 = &v134 - v6;
  OUTLINED_FUNCTION_12();
  v147 = sub_1DD0DB5BC();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_10_2();
  v141 = v11 - v12;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v13, v14);
  v142 = &v134 - v15;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v16, v17);
  v145 = &v134 - v18;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_71_0();
  v135 = v21;
  v22 = OUTLINED_FUNCTION_12();
  v23 = type metadata accessor for USOParse(v22);
  v24 = OUTLINED_FUNCTION_20_0(v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_16();
  v140 = (v27 - v26);
  v28 = OUTLINED_FUNCTION_12();
  v29 = type metadata accessor for Input(v28);
  MEMORY[0x1EEE9AC00](v29, v30);
  OUTLINED_FUNCTION_16();
  v33 = (v32 - v31);
  v143 = type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_10_2();
  v144 = (v36 - v37);
  OUTLINED_FUNCTION_29_0();
  v40 = MEMORY[0x1EEE9AC00](v38, v39);
  v42 = &v134 - v41;
  v44 = MEMORY[0x1EEE9AC00](v40, v43);
  v46 = &v134 - v45;
  MEMORY[0x1EEE9AC00](v44, v47);
  v49 = &v134 - v48;
  OUTLINED_FUNCTION_3_2();
  sub_1DCB2479C(&a1[v50], v49, v51);
  if (qword_1EDE4F900 != -1)
  {
LABEL_62:
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v52 = sub_1DD0DD8FC();
  v53 = __swift_project_value_buffer(v52, qword_1EDE57E00);
  sub_1DCB2479C(a1, v33, type metadata accessor for Input);
  OUTLINED_FUNCTION_3_2();
  v146 = v49;
  sub_1DCB2479C(v49, v46, v54);
  v55 = sub_1DD0DD8EC();
  v56 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v138 = v53;
    v58 = v57;
    OUTLINED_FUNCTION_35_9();
    v149 = swift_slowAlloc();
    *v58 = 136315394;
    v59 = Input.description.getter();
    v61 = v60;
    OUTLINED_FUNCTION_49_24();
    v62 = sub_1DCB10E9C(v59, v61, &v149);

    *(v58 + 4) = v62;
    *(v58 + 12) = 2080;
    OUTLINED_FUNCTION_3_2();
    sub_1DCB2479C(v46, v42, v63);
    v64 = sub_1DD0DE02C();
    v66 = v65;
    OUTLINED_FUNCTION_2_109();
    sub_1DCFE37AC(v46, v67);
    v68 = sub_1DCB10E9C(v64, v66, &v149);

    *(v58 + 14) = v68;
    _os_log_impl(&dword_1DCAFC000, v55, v56, "#PromptForSiriLocationAccessStrategy parseAuthorizationResult - received Input=%s \n\n Input Parse=%s", v58, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    v53 = v138;
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  else
  {

    OUTLINED_FUNCTION_2_109();
    sub_1DCFE37AC(v46, v70);
    OUTLINED_FUNCTION_49_24();
  }

  v69 = v144;
  OUTLINED_FUNCTION_3_2();
  v71 = v146;
  sub_1DCB2479C(v146, v69, v72);
  v33 = &off_1DD0E0000;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      sub_1DD0DC76C();
      OUTLINED_FUNCTION_2();
      (*(v89 + 8))(v69);
      goto LABEL_20;
    case 2u:
      v84 = *v69;
      v83 = v69[1];

      if (sub_1DCFEBF5C(v84, v83) != 4)
      {

        v80 = 0xC000000000000000;
        switch(v113)
        {
          case 1:
            goto LABEL_17;
          case 2:
            OUTLINED_FUNCTION_37_35();
            v80 = v125 & 1 | 0x4000000000000000;
            goto LABEL_26;
          case 3:
            goto LABEL_26;
          default:
            v74 = sub_1DD0DD8EC();
            v114 = sub_1DD0DE6EC();
            if (!OUTLINED_FUNCTION_22(v114))
            {
              goto LABEL_24;
            }

            v115 = OUTLINED_FUNCTION_50_0();
            OUTLINED_FUNCTION_46(v115);
            v79 = "#PromptForSiriLocationAccessStrategy parseAuthorizationResult - unexported abort";
            goto LABEL_22;
        }
      }

      v74 = sub_1DD0DD8EC();
      v85 = sub_1DD0DE6EC();

      if (os_log_type_enabled(v74, v85))
      {
        v86 = OUTLINED_FUNCTION_151();
        v149 = OUTLINED_FUNCTION_83();
        *v86 = 136315138;
        sub_1DCB10E9C(v84, v83, &v149);
        OUTLINED_FUNCTION_31_12();
        *(v86 + 4) = v84;
        _os_log_impl(&dword_1DCAFC000, v74, v85, "#PromptForSiriLocationAccessStrategy parseAuthorizationResult - unsupported DirectInvocation identifier=%s", v86, 0xCu);
        OUTLINED_FUNCTION_44_1();
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
        goto LABEL_23;
      }

      goto LABEL_24;
    case 3u:
      objc_opt_self();
      OUTLINED_FUNCTION_28();
      if (swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRelease();
LABEL_17:
        OUTLINED_FUNCTION_37_35();
        v80 = v87 & 1;
        goto LABEL_26;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_28();
      if (swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRelease();
        v80 = 0xC000000000000000;
        goto LABEL_26;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_28();
      v124 = swift_dynamicCastObjCClass();
      swift_unknownObjectRelease();
      if (v124)
      {
        v80 = 0xC000000000000008;
        goto LABEL_26;
      }

LABEL_7:
      v74 = sub_1DD0DD8EC();
      v75 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_22(v75))
      {
        v76 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v76);
        v79 = "#PromptForSiriLocationAccessStrategy parseAuthorizationResult - unsupported Input Parse";
LABEL_22:
        OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v77, v78, v79);
LABEL_23:
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

LABEL_24:

      sub_1DCFE3758();
      v92 = swift_allocError();
      *v93 = 1;
      v80 = v92 | 0x8000000000000000;
      goto LABEL_25;
    case 4u:
    case 5u:
    case 7u:
    case 8u:
    case 9u:
      OUTLINED_FUNCTION_2_109();
      sub_1DCFE37AC(v69, v73);
      goto LABEL_7;
    case 6u:
      a1 = v140;
      sub_1DCFE3EC8(v69, v140, type metadata accessor for USOParse);
      v49 = sub_1DD0DB46C();
      v80 = v137;
      sub_1DCC621EC(v49);
      v81 = v147;
      if (__swift_getEnumTagSinglePayload(v80, 1, v147) == 1)
      {
        result = sub_1DCB0E9D8(v80, &qword_1ECCA29B8, &qword_1DD0E96C0);
      }

      else
      {
        v107 = v135;
        (*(v8 + 32))(v135, v80, v81);
        a1 = v136;
        v108 = sub_1DCFE205C(v107, v139);
        v81 = v147;
        v80 = v108;
        result = (*(v8 + 8))(v107, v147);
        if ((~v80 & 0xF000000000000006) != 0)
        {
          OUTLINED_FUNCTION_4_113();

          sub_1DCBF4488(v80);
          goto LABEL_26;
        }
      }

      v138 = v53;
      v109 = 0;
      v42 = *(v49 + 2);
      v46 = (v8 + 16);
      while (v42 != v109)
      {
        if (v109 >= *(v49 + 2))
        {
          __break(1u);
          goto LABEL_62;
        }

        OUTLINED_FUNCTION_22_43();
        a1 = v145;
        v110(v145);
        ++v109;
        sub_1DD0DB52C();
        OUTLINED_FUNCTION_81_10();
        result = v111(a1, v81);
        if (v80)
        {
          OUTLINED_FUNCTION_4_113();

          OUTLINED_FUNCTION_37_35();
          v80 = v112 & 1;
LABEL_45:
          v71 = v146;
          goto LABEL_26;
        }
      }

      v116 = 0;
      while (v42 != v116)
      {
        if (v116 >= *(v49 + 2))
        {
          __break(1u);
LABEL_64:
          __break(1u);
          return result;
        }

        OUTLINED_FUNCTION_22_43();
        v117 = v142;
        v118(v142);
        ++v116;
        sub_1DD0DB53C();
        OUTLINED_FUNCTION_81_10();
        result = v119(v117, v81);
        if (v80)
        {
          OUTLINED_FUNCTION_4_113();

          v80 = 0xC000000000000000;
          goto LABEL_45;
        }
      }

      v120 = 0;
      v121 = v141;
      while (v42 != v120)
      {
        if (v120 >= *(v49 + 2))
        {
          goto LABEL_64;
        }

        OUTLINED_FUNCTION_22_43();
        v122(v121);
        ++v120;
        sub_1DD0DB54C();
        OUTLINED_FUNCTION_81_10();
        result = v123(v121, v81);
        if (v80)
        {
          v80 = 0xC000000000000008;
          OUTLINED_FUNCTION_4_113();

          v33 = &off_1DD0E0000;
          goto LABEL_45;
        }
      }

      v126 = sub_1DD0DD8EC();
      v127 = sub_1DD0DE6EC();
      v128 = OUTLINED_FUNCTION_22(v127);
      v33 = &off_1DD0E0000;
      v71 = v146;
      if (v128)
      {
        v129 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v129);
        OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v130, v131, "#PromptForSiriLocationAccessStrategy parseAuthorizationResult - unsupported USOParse");
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      sub_1DCFE3758();
      v132 = swift_allocError();
      *v133 = 1;
      OUTLINED_FUNCTION_4_113();
      v80 = v132 | 0x8000000000000000;
      v92 = v132;
LABEL_25:
      v94 = v92;
LABEL_26:
      sub_1DCBF4488(v80);
      v95 = sub_1DD0DD8EC();
      sub_1DD0DE6DC();
      sub_1DCBF44A0(v80);
      if (OUTLINED_FUNCTION_62_0())
      {
        v96 = OUTLINED_FUNCTION_151();
        v97 = OUTLINED_FUNCTION_83();
        v148 = v80;
        v149 = v97;
        *v96 = *(v33 + 246);
        v98 = sub_1DD0DE02C();
        v100 = sub_1DCB10E9C(v98, v99, &v149);

        *(v96 + 4) = v100;
        OUTLINED_FUNCTION_54_6();
        _os_log_impl(v101, v102, v103, v104, v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v97);
        v105 = OUTLINED_FUNCTION_12_68();
        MEMORY[0x1E12A8390](v105);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
      }

      else
      {
        sub_1DCBF44A0(v80);
      }

LABEL_30:
      OUTLINED_FUNCTION_2_109();
      sub_1DCFE37AC(v71, v106);
      return v80;
    case 0xAu:
      v80 = 0xF000000000000006;
      goto LABEL_30;
    default:
      OUTLINED_FUNCTION_2_109();
      sub_1DCFE37AC(v69, v88);
LABEL_20:
      v74 = sub_1DD0DD8EC();
      v90 = sub_1DD0DE6EC();
      if (!OUTLINED_FUNCTION_22(v90))
      {
        goto LABEL_24;
      }

      v91 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v91);
      v79 = "#PromptForSiriLocationAccessStrategy parseAuthorizationResult - unsupported NLv3 Parse; (tester should check NL asset(s)' availability)";
      goto LABEL_22;
  }
}

uint64_t sub_1DCFDF094(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCFDF0D4);
}

uint64_t sub_1DCFDF0D4()
{
  OUTLINED_FUNCTION_42();
  v1 = sub_1DCFDE538(*(v0 + 16), *(*(v0 + 24) + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1DCFDF13C()
{
  sub_1DD0DB6EC();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_12();
  sub_1DD0DB50C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_12();
  sub_1DD0DB5BC();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_12();
  sub_1DD0DB75C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_12();
  sub_1DD0DB44C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v17, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2990, &qword_1DD0E8E30);
  OUTLINED_FUNCTION_20_0(v19);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v20, v21);
  sub_1DD0DC42C();
  swift_allocObject();
  v22 = sub_1DD0DC41C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  OUTLINED_FUNCTION_92_2();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1DD0E15D0;
  *(v23 + 32) = v22;
  sub_1DD0DBC3C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFDF6F0()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1818, &qword_1DD0E0F80);
  OUTLINED_FUNCTION_20_0(v3);
  v1[4] = OUTLINED_FUNCTION_38();
  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCFDF820()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v3 + 48) = v0;

  sub_1DCB0E9D8(v6, &qword_1ECCA1818, &qword_1DD0E0F80);
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v12();
  }
}

void sub_1DCFDF974()
{
  OUTLINED_FUNCTION_42();
  v1[30] = v2;
  v1[31] = v0;
  v1[29] = v3;
  sub_1DD0DCE5C();
}

void sub_1DCFDFB5C()
{
  if (qword_1EDE4EC30 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = qword_1EDE4EC38;
  v4 = unk_1EDE4EC40;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  *(v1 + v2[9]) = 256;
  v21 = v3;
  *(v1 + v2[11]) = 0;
  v5 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v5);
  v9 = (v1 + v2[14]);
  *v9 = 0;
  v9[1] = 0;
  v10 = v2[15];
  *(v0 + 596) = v10;
  v11 = (v1 + v10);
  *v11 = 0;
  v11[1] = 0;
  *(v1 + v2[16]) = 0;
  *(v1 + v2[18]) = 0;
  v12 = v1 + v2[19];
  *v12 = 0;
  *(v12 + 4) = 512;
  *(v1 + v2[20]) = 0;
  *(v1 + v2[21]) = 0;
  *(v1 + v2[22]) = 0;
  *(v1 + v2[23]) = 0;
  *(v1 + v2[24]) = 0;
  *(v1 + v2[25]) = 0;
  v13 = (v1 + v2[26]);
  *v13 = 0;
  v13[1] = 0;
  *(v1 + v2[27]) = 0;
  *(v1 + v2[28]) = MEMORY[0x1E69E7CC0];
  v14 = v2[29];
  v15 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_2();
  (*(v16 + 104))(v1 + v14, v15);
  sub_1DD0DD10C();
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  *(v1 + v2[31]) = 2;
  *v1 = v21;
  v1[1] = v4;

  sub_1DCB67914();
}

uint64_t sub_1DCFE0374()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v3[23] = v1;
  v3[24] = v5;
  v3[25] = v0;
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  v3[48] = v0;

  __swift_destroy_boxed_opaque_existential_1Tm(v3 + 12);
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCFE047C()
{
  v1 = *(v0 + 248);
  *(v0 + 408) = *(v0 + 192);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  v2 = OUTLINED_FUNCTION_7_1();
  if ((v3(v2) & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v9, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  if (*(v0 + 594) < 0)
  {
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    v10 = [*(v0 + 408) dialog];
    sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
    OUTLINED_FUNCTION_28();
    v11 = sub_1DD0DE2EC();

    if (sub_1DCB08B14(v11))
    {
      sub_1DCB35460(0, (v11 & 0xC000000000000001) == 0, v11);
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E12A72C0](0, v11);
      }

      else
      {
        v12 = *(v11 + 32);
      }

      v13 = v12;

      v14 = [v13 fullPrint];

      v15 = sub_1DD0DDFBC();
      v17 = v16;
    }

    else
    {

      v15 = 0;
      v17 = 0xE000000000000000;
    }

    *(v0 + 480) = v15;
    *(v0 + 488) = v17;
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 496) = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_11_69(v18);
    OUTLINED_FUNCTION_33_5();

    return static TCCTemplates.accessLocationOnceLabel(deviceState:)(v20);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 416) = v4;
    *v4 = v5;
    OUTLINED_FUNCTION_40_32(v4);
    OUTLINED_FUNCTION_33_5();

    return static TCCTemplates.accessLocationUsingSiriLabel(deviceState:)(v6);
  }
}

uint64_t sub_1DCFE0948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_1_132();
  sub_1DCFE37AC(v10, v11);
  OUTLINED_FUNCTION_5_112();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_125_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1DCFE09F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v2[26] = v1;
  v2[27] = v4;
  v2[28] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v7 + 400) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCFE0AF4()
{
  v1 = *(v0 + 248);
  *(v0 + 408) = *(v0 + 216);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  v2 = OUTLINED_FUNCTION_7_1();
  if ((v3(v2) & 1) == 0)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v9, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  if (*(v0 + 594) < 0)
  {
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    v10 = [*(v0 + 408) dialog];
    sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
    OUTLINED_FUNCTION_28();
    v11 = sub_1DD0DE2EC();

    if (sub_1DCB08B14(v11))
    {
      sub_1DCB35460(0, (v11 & 0xC000000000000001) == 0, v11);
      if ((v11 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E12A72C0](0, v11);
      }

      else
      {
        v12 = *(v11 + 32);
      }

      v13 = v12;

      v14 = [v13 fullPrint];

      v15 = sub_1DD0DDFBC();
      v17 = v16;
    }

    else
    {

      v15 = 0;
      v17 = 0xE000000000000000;
    }

    *(v0 + 480) = v15;
    *(v0 + 488) = v17;
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 496) = v18;
    *v18 = v19;
    OUTLINED_FUNCTION_11_69(v18);
    OUTLINED_FUNCTION_33_5();

    return static TCCTemplates.accessLocationOnceLabel(deviceState:)(v20);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 416) = v4;
    *v4 = v5;
    OUTLINED_FUNCTION_40_32(v4);
    OUTLINED_FUNCTION_33_5();

    return static TCCTemplates.accessLocationUsingSiriLabel(deviceState:)(v6);
  }
}

uint64_t sub_1DCFE0FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_1_132();
  sub_1DCFE37AC(v10, v11);
  OUTLINED_FUNCTION_5_112();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_125_0();

  return v13(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1DCFE106C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  v7[53] = v2;

  if (!v2)
  {
    v7[54] = a2;
    v7[55] = a1;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCFE1188()
{
  OUTLINED_FUNCTION_39();
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  if (!v2)
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  *(v0 + 464) = 0xD000000000000053;
  *(v0 + 472) = 0x80000001DD1292E0;
  *(v0 + 448) = v1;
  *(v0 + 456) = v2;
  v3 = [*(v0 + 408) dialog];
  sub_1DCB10E5C(0, &qword_1EDE46220, 0x1E699A0B0);
  OUTLINED_FUNCTION_28();
  v4 = sub_1DD0DE2EC();

  if (sub_1DCB08B14(v4))
  {
    sub_1DCB35460(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E12A72C0](0, v4);
    }

    else
    {
      v5 = *(v4 + 32);
    }

    v6 = v5;

    v7 = [v6 fullPrint];

    v8 = sub_1DD0DDFBC();
    v10 = v9;
  }

  else
  {

    v8 = 0;
    v10 = 0xE000000000000000;
  }

  *(v0 + 480) = v8;
  *(v0 + 488) = v10;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 496) = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_11_69(v11);

  return static TCCTemplates.accessLocationOnceLabel(deviceState:)(v13);
}

uint64_t sub_1DCFE1310()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  v7[63] = v0;

  if (v0)
  {
    sub_1DCCEA1B0(v7[56], v7[57]);
  }

  else
  {
    v7[64] = v3;
    v7[65] = v5;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCFE1438()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 248);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 528) = v2;
  *v2 = v3;
  v2[1] = sub_1DCFE14CC;

  return static TCCTemplates.accessLocationDoNotLabel(deviceState:)(v1 + 24);
}

uint64_t sub_1DCFE14CC()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;
  v7[67] = v0;

  if (v0)
  {
    sub_1DCCEA1B0(v7[56], v7[57]);
  }

  else
  {
    v7[68] = v3;
    v7[69] = v5;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1DCFE1620()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = (*(v0 + 368) + *(v0 + 596));
  *v3 = 0xD000000000000033;
  v3[1] = 0x80000001DD1292A0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v6 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v8);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v9, v10, v11, v12, v13, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  if (v2)
  {
    v14 = v2;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  if (v2)
  {
    v15 = v1;
  }

  else
  {
    v15 = 0;
  }

  v34 = v15;
  v35 = v14;
  v16 = *(v0 + 512);
  v18 = *(v0 + 480);
  v17 = *(v0 + 488);
  v19 = *(v0 + 408);
  v20 = *(v0 + 248);
  if (v16)
  {
    v21 = *(v0 + 512);
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  if (v16)
  {
    v22 = *(v0 + 520);
  }

  else
  {
    v22 = 0;
  }

  v32 = *(v0 + 464);
  v33 = *(v0 + 448);

  v23 = v20[13];
  v37 = v20[12];
  OUTLINED_FUNCTION_57_1(v20 + 9, v37);
  *(v0 + 592) = 0;
  *(v0 + 80) = &type metadata for SiriKitUIModel;
  *(v0 + 88) = sub_1DCFE3704();
  v24 = swift_allocObject();
  *(v0 + 56) = v24;
  *(v24 + 16) = v18;
  *(v24 + 24) = v17;
  *(v24 + 32) = v22;
  *(v24 + 40) = v21;
  *(v24 + 48) = 0xD00000000000004ELL;
  *(v24 + 56) = 0x80000001DD129200;
  *(v24 + 64) = v33;
  *(v24 + 80) = v32;
  *(v24 + 96) = v34;
  *(v24 + 104) = v35;
  *(v24 + 112) = 0xD00000000000004FLL;
  *(v24 + 120) = 0x80000001DD129250;
  *(v24 + 128) = *(v0 + 592);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  OUTLINED_FUNCTION_92_2();
  v25 = swift_allocObject();
  *(v0 + 560) = v25;
  *(v25 + 16) = xmmword_1DD0E15D0;
  *(v25 + 32) = v19;
  v26 = *(v23 + 56);
  v27 = v19;
  v36 = (v26 + *v26);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 568) = v28;
  *v28 = v29;
  v28[1] = sub_1DCFE192C;
  v30 = *(v0 + 368);

  return v36(v0 + 16, v0 + 56, v25, v30, v37, v23);
}

uint64_t sub_1DCFE192C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCFE1A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();

  v11 = *(v10 + 368);
  OUTLINED_FUNCTION_5_112();
  sub_1DCAFF9E8((v10 + 16), *(v10 + 232));
  OUTLINED_FUNCTION_1_132();
  sub_1DCFE37AC(v11, v12);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_125_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1DCFE1AEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCFE1BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v11 = *(v10 + 368);

  OUTLINED_FUNCTION_1_132();
  sub_1DCFE37AC(v11, v12);
  OUTLINED_FUNCTION_5_112();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_125_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1DCFE1CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v11 = *(v10 + 368);

  OUTLINED_FUNCTION_1_132();
  sub_1DCFE37AC(v11, v12);
  OUTLINED_FUNCTION_5_112();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_125_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1DCFE1D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_131_0();
  OUTLINED_FUNCTION_41();
  v11 = *(v10 + 368);

  OUTLINED_FUNCTION_1_132();
  sub_1DCFE37AC(v11, v12);
  OUTLINED_FUNCTION_5_112();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_125_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1DCFE1E2C()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v3 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v11 = *(v0 + 16);

  v12 = type metadata accessor for EmptyOutput();
  v13 = swift_allocObject();
  v11[3] = v12;
  v11[4] = &protocol witness table for EmptyOutput;
  *v11 = v13;
  OUTLINED_FUNCTION_43();

  return v14();
}

uint64_t sub_1DCFE1F50()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  sub_1DD0DE6DC();
  v3 = OUTLINED_FUNCTION_19_2();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v5);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  v11 = *(v0 + 16);

  v12 = type metadata accessor for EmptyOutput();
  v13 = swift_allocObject();
  v11[3] = v12;
  v11[4] = &protocol witness table for EmptyOutput;
  *v11 = v13;
  OUTLINED_FUNCTION_43();

  return v14();
}

unint64_t sub_1DCFE205C(uint64_t a1, unsigned int a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABDC0, &qword_1DD108FE8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = sub_1DD0DBEFC();
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = MEMORY[0x1EEE9AC00](v6, v7);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v17 = sub_1DD0DB7DC();
  if (sub_1DCB08B14(v17))
  {
    sub_1DCB35460(0, (v17 & 0xC000000000000001) == 0, v17);
    if ((v17 & 0xC000000000000001) == 0)
    {
      sub_1DD0DCF8C();
    }

    MEMORY[0x1E12A72C0](0, v17);

    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v12 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v12, qword_1EDE57E00);
  v13 = sub_1DD0DD8EC();
  v14 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DCAFC000, v13, v14, "#PromptForSiriLocationAccessStrategy parseDefinedValueResult - no definedValue found", v15, 2u);
    MEMORY[0x1E12A8390](v15, -1, -1);
  }

  return 0xF000000000000006;
}

void *sub_1DCFE28AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  return v0;
}

uint64_t sub_1DCFE28DC()
{
  sub_1DCFE28AC();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFE2938(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DCBF9BB8;

  return sub_1DCFDF094(a2);
}

uint64_t sub_1DCFE29D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCFDF6F0();
}

void sub_1DCFE2A8C(unint64_t a1@<X0>, unsigned int a2@<W1>, unint64_t *a3@<X8>)
{
  if (*(v3 + 56) == 1)
  {
    *(v3 + 56) = 0;
    switch(a1 >> 62)
    {
      case 1uLL:
        v6 = 0;
        v7 = 3;
        goto LABEL_25;
      case 2uLL:
        sub_1DCBF4488(a1);
        v16 = (a1 & 0x3FFFFFFFFFFFFFFFLL);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
        if ((swift_dynamicCast() & 1) != 0 && v21 != 1)
        {
          v6 = 0x10000000000;
          v17 = 3;
        }

        else
        {
          v17 = 0;
          v6 = 0x10000000000;
        }

        break;
      case 3uLL:
        v6 = 0x10000000000;
        v17 = 2;
        v18 = 0x10000000000;
        v19 = 5;
        if ((a2 & 0x80u) == 0)
        {
          v19 = 0x200000001;
        }

        if (a2 <= 0xFDu)
        {
          v20 = v19;
        }

        else
        {
          v20 = 0;
        }

        if (a2 <= 0xFDu)
        {
          v18 = ((a2 >> 7) & 1) << 40;
        }

        if (a1 != 0xC000000000000001)
        {
          v17 = 1;
          v6 = 0x10000000000;
        }

        if (a1 == 0xC000000000000000)
        {
          v17 = v20;
          v6 = v18;
        }

        break;
      default:
        v6 = 0;
        v7 = 2;
LABEL_25:
        v17 = v7 & 0xFFFFFFFEFFFFFFFFLL | ((a1 & 1) << 32);
        break;
    }

    sub_1DCFE2C94(v6 | v17);
  }

  else
  {
    sub_1DCBF4488(a1);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v8 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v8, qword_1EDE57E00);
    v9 = sub_1DD0DD8EC();
    sub_1DD0DE6EC();
    v10 = OUTLINED_FUNCTION_19_2();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v12);
      OUTLINED_FUNCTION_16_0(&dword_1DCAFC000, v13, v14, "#PermissionPromptSchemaLogger emitResult - no corresponding start message emitted");
      v15 = OUTLINED_FUNCTION_12_68();
      MEMORY[0x1E12A8390](v15);
    }
  }

  a3[3] = &type metadata for PermissionPromptSchemaLogger.LoggedResult;
  a3[4] = &off_1F5875450;
  *a3 = a1;
}

void sub_1DCFE2C94(unint64_t a1)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69CEB60]) init];
  if (!v8)
  {
    return;
  }

  if (BYTE5(a1))
  {
    if (BYTE5(a1) == 1)
    {
      v3 = [objc_allocWithZone(MEMORY[0x1E69CEB70]) init];
      if (v3)
      {
        v4 = v3;
        [v3 setFailureReason_];
        v5 = &selRef_setFailed_;
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v7 = [objc_allocWithZone(MEMORY[0x1E69CEB78]) init];
    if (v7)
    {
      v4 = v7;
      v5 = &selRef_setStartedOrChanged_;
      goto LABEL_13;
    }
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E69CEB68]) init];
    if (v6)
    {
      v4 = v6;
      [v6 setPermissionStatusResult_];
      if ((a1 & 0xFF00000000) != 0x200000000)
      {
        [v4 setIsPreciseLocationResult_];
      }

      v5 = &selRef_setEnded_;
LABEL_13:
      [v8 *v5];

      __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
      sub_1DCFE3604(v8);
    }
  }

LABEL_14:
}

uint64_t sub_1DCFE2DFC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void destroy for SiriLocationAccessCheckFlow.State(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 >= 7)
  {
    v2 = *a1 + 7;
  }

  switch(v2)
  {
    case 4u:

      break;
    case 5u:
      v3 = *(a1 + 8);

      sub_1DCBF44A0(v3);
      break;
    case 6u:
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      break;
    default:
      return;
  }
}

uint64_t initializeWithCopy for SiriLocationAccessCheckFlow.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 7)
  {
    v3 = *a2 + 7;
  }

  switch(v3)
  {
    case 1u:
      *a1 = *a2;
      v4 = 1;
      goto LABEL_11;
    case 2u:
      *a1 = *a2;
      v4 = 2;
      goto LABEL_11;
    case 3u:
      *a1 = *a2;
      v4 = 3;
      goto LABEL_11;
    case 4u:
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 40) = 4;
      sub_1DD0DCF8C();
    case 5u:
      *a1 = *a2;
      v5 = *(a2 + 8);
      sub_1DCBF4488(v5);
      *(a1 + 8) = v5;
      v4 = 5;
      goto LABEL_11;
    case 6u:
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      (**(v6 - 8))(a1);
      v4 = 6;
LABEL_11:
      *(a1 + 40) = v4;
      break;
    default:
      *a1 = *a2;
      *(a1 + 40) = 0;
      break;
  }

  return a1;
}

uint64_t assignWithCopy for SiriLocationAccessCheckFlow.State(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 7)
    {
      v4 = *a1 + 7;
    }

    switch(v4)
    {
      case 4u:

        break;
      case 5u:
        sub_1DCBF44A0(*(a1 + 8));
        break;
      case 6u:
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        break;
      default:
        break;
    }

    v5 = *(a2 + 40);
    if (v5 >= 7)
    {
      v5 = *a2 + 7;
    }

    switch(v5)
    {
      case 1u:
        *a1 = *a2;
        v6 = 1;
        goto LABEL_17;
      case 2u:
        *a1 = *a2;
        v6 = 2;
        goto LABEL_17;
      case 3u:
        *a1 = *a2;
        v6 = 3;
        goto LABEL_17;
      case 4u:
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 40) = 4;
        sub_1DD0DCF8C();
      case 5u:
        *a1 = *a2;
        v7 = *(a2 + 8);
        sub_1DCBF4488(v7);
        *(a1 + 8) = v7;
        v6 = 5;
        goto LABEL_17;
      case 6u:
        v8 = *(a2 + 24);
        *(a1 + 24) = v8;
        *(a1 + 32) = *(a2 + 32);
        (**(v8 - 8))(a1, a2);
        v6 = 6;
LABEL_17:
        *(a1 + 40) = v6;
        break;
      default:
        *a1 = *a2;
        *(a1 + 40) = 0;
        break;
    }
  }

  return a1;
}

uint64_t assignWithTake for SiriLocationAccessCheckFlow.State(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 40);
    if (v4 >= 7)
    {
      v4 = *a1 + 7;
    }

    switch(v4)
    {
      case 4u:

        break;
      case 5u:
        sub_1DCBF44A0(*(a1 + 8));
        break;
      case 6u:
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        break;
      default:
        break;
    }

    v5 = *(a2 + 40);
    if (v5 >= 7)
    {
      v5 = *a2 + 7;
    }

    switch(v5)
    {
      case 1u:
        *a1 = *a2;
        v6 = 1;
        break;
      case 2u:
        *a1 = *a2;
        v6 = 2;
        break;
      case 3u:
        *a1 = *a2;
        v6 = 3;
        break;
      case 4u:
        *a1 = *a2;
        v6 = 4;
        break;
      case 5u:
        *a1 = *a2;
        v6 = 5;
        break;
      case 6u:
        v7 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v7;
        *(a1 + 32) = *(a2 + 32);
        v6 = 6;
        break;
      default:
        v6 = 0;
        *a1 = *a2;
        break;
    }

    *(a1 + 40) = v6;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for SiriLocationAccessCheckFlow.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 41))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 40);
  if (v3 >= 7)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SiriLocationAccessCheckFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCFE3344(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 7)
  {
    return (*a1 + 7);
  }

  return result;
}

uint64_t sub_1DCFE3360(uint64_t result, unsigned int a2)
{
  if (a2 > 6)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 7;
    LOBYTE(a2) = 7;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for PromptMode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7F)
  {
    if (a2 + 129 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 129) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 130;
    return v5 + 1;
  }

LABEL_17:
  v5 = (*a1 & 0x7E | (*a1 >> 7)) ^ 0x7F;
  if (v5 >= 0x7E)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for PromptMode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 129 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 129) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7F)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7E)
  {
    v6 = ((a2 - 127) >> 8) + 1;
    *result = a2 - 127;
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
          *result = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1DCFE3544(uint64_t a1, uint64_t a2)
{
  result = sub_1DCFE39D4(&qword_1ECCABDA0, a2, type metadata accessor for SiriLocationAccessCheckFlow, &unk_1DD108F88);
  *(a1 + 16) = result;
  return result;
}

void sub_1DCFE3604(void *a1)
{
  v2 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDE4F6A8 != -1)
  {
    swift_once();
  }

  type metadata accessor for SiriKitEvent(0);
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  v6 = a1;
  SiriKitEvent.__allocating_init(_:builder:)(v5, 0);
  sub_1DCB4C064();
}

unint64_t sub_1DCFE3704()
{
  result = qword_1ECCABDB0;
  if (!qword_1ECCABDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABDB0);
  }

  return result;
}

unint64_t sub_1DCFE3758()
{
  result = qword_1ECCABDB8;
  if (!qword_1ECCABDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCABDB8);
  }

  return result;
}

uint64_t sub_1DCFE37AC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCFE3804()
{
  OUTLINED_FUNCTION_41();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 50);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_13_17(v5);
  OUTLINED_FUNCTION_39_32();

  return sub_1DCFDC7D8(v7, v8, v9, v10, v1, v2, v3);
}

unint64_t sub_1DCFE38C0(unint64_t result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
    return sub_1DCBF4488(result);
  }

  return result;
}

void sub_1DCFE38DC(unint64_t a1, char a2)
{
  if (!a2)
  {
    sub_1DCBF44A0(a1);
  }
}

uint64_t sub_1DCFE390C()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_13_17(v3);
  OUTLINED_FUNCTION_39_32();

  return sub_1DCFDAA50(v5, v6, v7, v8, v1);
}

uint64_t sub_1DCFE39D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1DCFE3A24(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 104) = &type metadata for LocationAccessUnlockDeviceStrategy;
  *(a4 + 112) = &off_1F5875430;
  *(a4 + 16) = 1;
  *(a4 + 120) = 0;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  sub_1DCAFF9E8(a1, a4 + 40);
  return a4;
}

uint64_t sub_1DCFE3A74(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1DCBF6C40;

  return sub_1DCFD7EDC(a2);
}

uint64_t sub_1DCFE3B14()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_4_32();

  return v4(v3);
}

uint64_t sub_1DCFE3BB0()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCFD8038(v3);
}

uint64_t sub_1DCFE3C34()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCFD8038(v3);
}

uint64_t sub_1DCFE3CB8()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCC0A2BC(v3);
}

uint64_t sub_1DCFE3D3C()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCFD8170(v3);
}

uint64_t sub_1DCFE3DC0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_4_32();

  return sub_1DCFD82B4(v3);
}

id sub_1DCFE3EB0(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
    return sub_1DCBF4488(a1);
  }
}

void sub_1DCFE3EBC(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    sub_1DCBF44A0(a1);
  }
}

uint64_t sub_1DCFE3EC8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DCFE3F2C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_4_32();

  return sub_1DCFD7E30(v3, v4);
}

uint64_t sub_1DCFE3FBC()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCFD7F74(v3);
}

uint64_t sub_1DCFE4040()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCFD7F74(v3);
}

uint64_t sub_1DCFE40C4()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_18_4(v1);

  return sub_1DCFD7F74(v3);
}