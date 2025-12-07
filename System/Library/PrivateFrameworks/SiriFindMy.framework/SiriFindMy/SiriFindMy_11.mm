uint64_t OUTLINED_FUNCTION_28_8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a16;
  *(result + 48) = a19;
  *(result + 56) = a12;
  *(result + 64) = 514;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_2()
{
  v2 = *(v0 + 2520);

  return sub_266D1DBA0(v2, type metadata accessor for Snippets.Contact);
}

uint64_t OUTLINED_FUNCTION_63_0()
{

  return sub_266D1CB20();
}

uint64_t OUTLINED_FUNCTION_66_3()
{

  return sub_266D1CAC8();
}

uint64_t OUTLINED_FUNCTION_69_2()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 9);
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 19);
}

uint64_t OUTLINED_FUNCTION_78_1()
{

  return sub_266D1CAC8();
}

uint64_t OUTLINED_FUNCTION_79_2()
{

  return sub_266DA800C();
}

_BYTE *storeEnumTagSinglePayload for GenericSearchIntentWrapper(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_266D1E0B4()
{
  v1 = *(v0 + 64);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_266D1E160(*(v0 + 16), *(v0 + 24));
    *(v0 + 64) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_266D1E0E8()
{
  v1 = *(v0 + 65);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_266D1E0B4();
    *(v0 + 65) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_266D1E118()
{
  v1 = *(v0 + 66);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_266D1E160(0xD000000000000010, 0x8000000266DC1710);
    *(v0 + 66) = v1 & 1;
  }

  return v1 & 1;
}

uint64_t sub_266D1E160(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  result = sub_266D1E2D4(a1, a2, 0);
  if (result)
  {

    return 1;
  }

  return result;
}

uint64_t sub_266D1E1E4()
{

  return v0;
}

uint64_t sub_266D1E214()
{
  sub_266D1E1E4();

  return MEMORY[0x2821FE8D8](v0, 67, 7);
}

uint64_t sub_266D1E26C()
{
  result = v0;
  *(v0 + 16) = 0xD000000000000010;
  *(v0 + 24) = 0x8000000266DC1710;
  *(v0 + 32) = 0xD00000000000001CLL;
  *(v0 + 40) = 0x8000000266DC35E0;
  *(v0 + 48) = 0xD00000000000001ALL;
  *(v0 + 56) = 0x8000000266DC3600;
  *(v0 + 64) = 514;
  *(v0 + 66) = 2;
  return result;
}

id sub_266D1E2D4(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_266DAA6FC();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_266DA72FC();

    swift_willThrow();
  }

  return v6;
}

uint64_t type metadata accessor for PersonEntityRepresentation(uint64_t a1)
{
  result = qword_2800CCB90;
  if (!qword_2800CCB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D1E43C(void *a1)
{
  v2 = [a1 person];
  if (v2 && (sub_266D1EA34(v2), v3))
  {
    sub_266D1EAA4(&qword_2800CCBE8, &unk_266DB864C);
    v4 = sub_266DA92AC();
  }

  else
  {

    return 0;
  }

  return v4;
}

uint64_t sub_266D1E4D8(uint64_t a1)
{
  v2 = sub_266DA92FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v3 + 16))(v5, a1, v2);
  v6 = sub_266DA935C();
  (*(v3 + 8))(a1, v2);
  return v6;
}

uint64_t sub_266D1E5E0()
{
  v0 = sub_266DA934C();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t sub_266D1E6E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_266D1E748(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_266D1E7C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_266D1E820@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266DA931C();
  *a1 = result;
  return result;
}

uint64_t sub_266D1EA34(void *a1)
{
  v2 = [a1 customIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266DAA70C();

  return v3;
}

uint64_t sub_266D1EAA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PersonEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266D1EAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_266D1EB18);
}

uint64_t sub_266D1EB18()
{
  OUTLINED_FUNCTION_84();
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = swift_allocObject();
  v0[9] = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  v8 = swift_allocObject();
  v0[10] = v8;
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v9 = swift_task_alloc();
  v0[11] = v9;
  v9[2] = &unk_266DB8968;
  v9[3] = v7;
  v9[4] = v6;
  v9[5] = v5;
  v9[6] = &unk_266DB8978;
  v9[7] = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[12] = v10;
  *v10 = v11;
  v10[1] = sub_266D1EC9C;
  OUTLINED_FUNCTION_82_2();

  return MEMORY[0x282200740](v12);
}

uint64_t sub_266D1EC9C()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_9_2();
  *v3 = v1;
  v4 = *v2;
  *v3 = *v2;

  OUTLINED_FUNCTION_91_2();
  if (v0)
  {
  }

  else
  {

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_266D1EDE4(uint64_t a1, int *a2)
{
  v2[2] = a1;
  v2[3] = type metadata accessor for Location(0);
  v4 = swift_task_alloc();
  v2[4] = v4;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_266D1EF18;

  return v7(v4);
}

uint64_t sub_266D1EF18()
{
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_28();
  }

  else
  {
    v8 = *(v3 + 24);
    OUTLINED_FUNCTION_2_46();
    OUTLINED_FUNCTION_32();
    sub_266D27E10();
    OUTLINED_FUNCTION_59();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);

    OUTLINED_FUNCTION_15_4();
  }

  return v7();
}

uint64_t sub_266D1F03C(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_266D1F140;

  return v8(a1, a2);
}

uint64_t sub_266D1F140()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  OUTLINED_FUNCTION_15_4();

  return v3();
}

uint64_t sub_266D1F220()
{
  OUTLINED_FUNCTION_22_0();
  v0[12] = v1;
  v0[13] = v2;
  v0[10] = v3;
  v0[11] = v4;
  v0[8] = v5;
  v0[9] = v6;
  v0[6] = v7;
  v0[7] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  OUTLINED_FUNCTION_4_3(v9);
  v0[14] = OUTLINED_FUNCTION_62();
  v10 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_266D1F2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v13 = v10[10];
  v12 = v10[11];
  v14 = sub_266DAA9EC();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  OUTLINED_FUNCTION_62_4();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_101_0(v18);
  v19 = OUTLINED_FUNCTION_61_2();
  sub_266D20264(v19, v20, v11);
  v21 = OUTLINED_FUNCTION_42();
  sub_266C1825C(v21, v22, &qword_266DB32D8);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v14);
  OUTLINED_FUNCTION_62_4();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v13;
  v26[5] = v12;
  v27 = OUTLINED_FUNCTION_61_2();
  sub_266D20264(v27, v28, v29);
  v30 = OUTLINED_FUNCTION_42();
  sub_266C1825C(v30, v31, &qword_266DB32D8);
  v32 = swift_task_alloc();
  v10[15] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCCB8, &qword_266DB8A38);
  *v32 = v10;
  v32[1] = sub_266D1F434;
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_100();

  return MEMORY[0x2822004D0](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t sub_266D1F434()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266D1F52C()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  if (v3 == 1)
  {
    sub_266C4DBB8(v1, v2, 1);
    v5 = sub_266D28A38();
    v6 = OUTLINED_FUNCTION_87(&type metadata for TimeoutErrors, v5);
    swift_willThrow();
    *(v0 + 136) = v6;
    OUTLINED_FUNCTION_4_37();
    v14 = v7;
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    *(v0 + 144) = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_32_8(v8);

    return v14(v10);
  }

  else
  {
    v12 = *(v0 + 48);
    *v12 = v1 & 1;
    *(v12 + 8) = v2;
    *(v12 + 16) = v3;
    *(v12 + 24) = v4 & 1;

    OUTLINED_FUNCTION_15_4();

    return v13();
  }
}

uint64_t sub_266D1F664()
{
  OUTLINED_FUNCTION_34();
  v0[17] = v0[16];
  OUTLINED_FUNCTION_4_37();
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[18] = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_32_8(v2);

  return v6(v4);
}

uint64_t sub_266D1F70C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266D1F804()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_15_4();

  return v1();
}

uint64_t sub_266D1F864()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v1();
}

uint64_t sub_266D1F8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC60, &unk_266DB8990);
  v8[10] = swift_task_alloc();
  v8[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v8[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D1F9E8);
}

uint64_t sub_266D1F9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v13 = v10[6];
  v12 = v10[7];
  v14 = sub_266DAA9EC();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  OUTLINED_FUNCTION_62_4();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_101_0(v18);
  v19 = OUTLINED_FUNCTION_61_2();
  sub_266D2042C(v19, v20, v11);
  v21 = OUTLINED_FUNCTION_42();
  sub_266C1825C(v21, v22, &qword_266DB32D8);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v14);
  OUTLINED_FUNCTION_62_4();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = v13;
  v26[5] = v12;
  v27 = OUTLINED_FUNCTION_61_2();
  sub_266D2042C(v27, v28, v29);
  v30 = OUTLINED_FUNCTION_42();
  sub_266C1825C(v30, v31, &qword_266DB32D8);
  v32 = swift_task_alloc();
  v10[14] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC68, &qword_266DB89C0);
  *v32 = v10;
  v32[1] = sub_266D1FB6C;
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_100();

  return MEMORY[0x2822004D0](v33, v34, v35, v36, v37, v38, v39, v40, a9, a10);
}

uint64_t sub_266D1FB6C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266D1FC64()
{
  OUTLINED_FUNCTION_84();
  v1 = v0[10];
  v2 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_61(v2, v3, v4);
  if (v5)
  {
    sub_266C1825C(v1, &qword_2800CCC60, &unk_266DB8990);
    v6 = sub_266D28A38();
    v7 = OUTLINED_FUNCTION_87(&type metadata for TimeoutErrors, v6);
    swift_willThrow();
    v0[16] = v7;
    OUTLINED_FUNCTION_4_37();
    v14 = v8;
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    v0[17] = v9;
    *v9 = v10;
    v11 = OUTLINED_FUNCTION_31_8(v9);

    return v14(v11);
  }

  else
  {
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_43_6();
    sub_266D1CB20();
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_43_6();
    sub_266D1CB20();

    OUTLINED_FUNCTION_15_4();

    return v13();
  }
}

uint64_t sub_266D1FDDC()
{
  OUTLINED_FUNCTION_34();
  v0[16] = v0[15];
  OUTLINED_FUNCTION_4_37();
  v6 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[17] = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_31_8(v2);

  return v6(v4);
}

uint64_t sub_266D1FE84()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266D1FF7C()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_15_4();

  return v1();
}

uint64_t sub_266D1FFF0()
{
  OUTLINED_FUNCTION_34();

  OUTLINED_FUNCTION_28();

  return v1();
}

uint64_t sub_266D20074(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_266C4716C;

  return v8(a1);
}

uint64_t sub_266D2016C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_266C48BB4;

  return v8(a1);
}

uint64_t sub_266D20264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  sub_266D1CAC8();
  v9 = sub_266DAA9EC();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_266C1825C(v8, &qword_2800CAF00, &qword_266DB32D8);
  }

  else
  {
    sub_266DAA9DC();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v10 = sub_266DAA99C();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = *v4;
  v14 = (v12 | v10);
  if (v12 | v10)
  {
    v17[0] = 0;
    v17[1] = 0;
    v14 = v17;
    v17[2] = v10;
    v17[3] = v12;
  }

  v16[1] = 1;
  v16[2] = v14;
  v16[3] = v13;
  swift_task_create();
}

uint64_t sub_266D2042C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CAF00, &qword_266DB32D8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  sub_266D1CAC8();
  v9 = sub_266DAA9EC();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_266C1825C(v8, &qword_2800CAF00, &qword_266DB32D8);
  }

  else
  {
    sub_266DAA9DC();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v10 = sub_266DAA99C();
    v12 = v11;
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v14 = (v12 | v10);
  if (v12 | v10)
  {
    v17[0] = 0;
    v17[1] = 0;
    v14 = v17;
    v17[2] = v10;
    v17[3] = v12;
  }

  v16[1] = 1;
  v16[2] = v14;
  v16[3] = v13;
  swift_task_create();
}

uint64_t sub_266D20604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_266DAAECC();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D206C4);
}

uint64_t sub_266D206C4()
{
  OUTLINED_FUNCTION_22_0();
  sub_266DAB22C();
  OUTLINED_FUNCTION_12_4(&unk_266DB89C8);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_49_7(v1);

  return v3(v2);
}

uint64_t sub_266D20758()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_92_0();
  v2 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v3 = v2;

  OUTLINED_FUNCTION_91_2();
  if (v0)
  {
  }

  v4 = OUTLINED_FUNCTION_42();
  v5(v4);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_102();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D208C8()
{
  OUTLINED_FUNCTION_34();
  v0 = sub_266D28A38();
  OUTLINED_FUNCTION_87(&type metadata for TimeoutErrors, v0);
  swift_willThrow();

  OUTLINED_FUNCTION_28();

  return v1();
}

uint64_t sub_266D20950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_266DAAECC();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D20A10);
}

uint64_t sub_266D20A10()
{
  OUTLINED_FUNCTION_22_0();
  sub_266DAB22C();
  OUTLINED_FUNCTION_12_4(&unk_266DB89C8);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_49_7(v1);

  return v3(v2);
}

uint64_t sub_266D20AA4()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_92_0();
  v2 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v3 = v2;

  OUTLINED_FUNCTION_91_2();
  if (v0)
  {
  }

  v4 = OUTLINED_FUNCTION_42();
  v5(v4);
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_102();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266D20C14()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CCBF0);
  v1 = __swift_project_value_buffer(v0, qword_2800CCBF0);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266D20D10(double a1, uint64_t a2, uint64_t *a3, SEL *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_94(v7, v8);
  v9 = [objc_opt_self() *a4];
  sub_266C29814(0, &qword_2800CCC20, 0x277CCAE20);
  return sub_266DA704C();
}

uint64_t LocationDescriptionType.rawValue.getter()
{
  result = 0x74616964656D6D69;
  switch(*v0)
  {
    case 1:
      result = 0x636F4C7265707968;
      break;
    case 2:
      result = 0x6C61636F6CLL;
      break;
    case 3:
      result = OUTLINED_FUNCTION_80_1();
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = OUTLINED_FUNCTION_52_5();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266D20EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  switch(v4)
  {
    case 1:
    case 4:
      goto LABEL_5;
    case 2:
      OUTLINED_FUNCTION_90_2();
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_80_1();
      goto LABEL_5;
    case 5:
      OUTLINED_FUNCTION_52_5();
LABEL_5:
      v5 = sub_266DAB17C();

      if (v5)
      {
        goto LABEL_12;
      }

      switch(v4)
      {
        case 2:
        case 4:
          break;
        case 3:
          OUTLINED_FUNCTION_80_1();
          break;
        case 5:
          OUTLINED_FUNCTION_52_5();
          break;
        default:
          goto LABEL_11;
      }

      v6 = sub_266DAB17C();

      if (v6)
      {
        goto LABEL_12;
      }

      switch(v4)
      {
        case 2:
          goto LABEL_11;
        default:
          OUTLINED_FUNCTION_13_11();
          v9 = sub_266DAB17C();

          v7 = v9 ^ 1;
          break;
      }

      break;
    default:
LABEL_11:

LABEL_12:
      v7 = 0;
      break;
  }

  return v7 & 1;
}

SiriFindMy::LocationDescriptionType_optional __swiftcall LocationDescriptionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_266DAAF8C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_266D21168@<X0>(uint64_t *a1@<X8>)
{
  result = LocationDescriptionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_266D211A0()
{
  v1 = v0;
  if (qword_2800C9370 != -1)
  {
    OUTLINED_FUNCTION_3_39(&qword_2800C9370);
  }

  v2 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v2, qword_2800CCBF0);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_11();
    *v5 = 0;
    _os_log_impl(&dword_266C08000, v3, v4, "Prefetching User Location", v5, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = OUTLINED_FUNCTION_42();
  __swift_project_boxed_opaque_existential_1(v8, v9);
  return (*(v7 + 16))(v6, v7);
}

Swift::Void __swiftcall LocationDescriptionProviding.prefetchUserLocation()()
{
  v2 = v1;
  v3 = v0;
  if (qword_2800C9370 != -1)
  {
    OUTLINED_FUNCTION_3_39(&qword_2800C9370);
  }

  v4 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v4, qword_2800CCBF0);
  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_11();
    *v7 = 0;
    _os_log_impl(&dword_266C08000, v5, v6, "Prefetching User Location", v7, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  (*(v2 + 8))(v10, v3, v2);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v8 = OUTLINED_FUNCTION_42();
  v9(v8);
  __swift_destroy_boxed_opaque_existential_0(v10);
}

void sub_266D213B0()
{
  OUTLINED_FUNCTION_6();
  v127 = v0;
  v114 = v2;
  v4 = v3;
  v6 = v5;
  v130 = v7;
  v8 = sub_266DA750C();
  v9 = OUTLINED_FUNCTION_4_3(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_12_19();
  v121 = v10;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  OUTLINED_FUNCTION_0_2();
  v120 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_33_0();
  v118 = v13;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_17_16();
  v119 = v15;
  v16 = OUTLINED_FUNCTION_3_4();
  v116 = type metadata accessor for Address(v16);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_17_16();
  OUTLINED_FUNCTION_15_0(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  v21 = OUTLINED_FUNCTION_4_3(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_33_0();
  v115 = v22;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17_16();
  v117 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC10, &qword_266DB86B0);
  v26 = OUTLINED_FUNCTION_4_3(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_33_0();
  v131 = v27;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17_16();
  v128 = v29;
  OUTLINED_FUNCTION_3_4();
  sub_266DA746C();
  OUTLINED_FUNCTION_0_2();
  v123 = v31;
  v124 = v30;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17_16();
  OUTLINED_FUNCTION_15_0(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B28, &qword_266DAE4B8);
  v35 = OUTLINED_FUNCTION_4_3(v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_0_5();
  v38 = v36 - v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_17_16();
  v122 = v40;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_33_0();
  v125 = v42;
  OUTLINED_FUNCTION_15_8();
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v104[-v45];
  v47 = MEMORY[0x28223BE20](v44);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_48_7();
  MEMORY[0x28223BE20](v48);
  v50 = &v104[-v49];
  if (qword_2800C9370 != -1)
  {
    OUTLINED_FUNCTION_3_39(&qword_2800C9370);
  }

  v51 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v51, qword_2800CCBF0);
  v132 = v6;
  OUTLINED_FUNCTION_43_6();
  sub_266D1CAC8();
  v126 = v4;
  OUTLINED_FUNCTION_43_6();
  sub_266D1CAC8();
  v52 = sub_266DA948C();
  v53 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_79_3(v53))
  {
    v54 = swift_slowAlloc();
    v107 = OUTLINED_FUNCTION_108_2();
    v133 = v107;
    *v54 = 136315394;
    v108 = v38;
    v106 = v46;
    sub_266D1CAC8();
    v55 = sub_266DAA72C();
    v105 = v6;
    v57 = v56;
    sub_266C1825C(v50, &qword_2800C9B20, &unk_266DB1EC0);
    v58 = sub_266C22A3C(v55, v57, &v133);

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    sub_266D1CAC8();
    sub_266DAA72C();
    v38 = v108;
    v46 = v106;
    sub_266C1825C(v1, &qword_2800C9B20, &unk_266DB1EC0);
    v59 = OUTLINED_FUNCTION_42();
    v62 = sub_266C22A3C(v59, v60, v61);

    *(v54 + 14) = v62;
    _os_log_impl(&dword_266C08000, v52, v105, "Compute params for targetLocation: %s and userLocation: %s", v54, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    OUTLINED_FUNCTION_107_2(v1);
    OUTLINED_FUNCTION_107_2(v50);
  }

  v63 = v124;
  sub_266D1CAC8();
  v64 = type metadata accessor for Location(0);
  OUTLINED_FUNCTION_61(v46, 1, v64);
  v65 = v128;
  v66 = v129;
  v67 = v125;
  v68 = v122;
  if (v85)
  {
    sub_266C1825C(v46, &qword_2800C9B20, &unk_266DB1EC0);
    v70 = 1;
  }

  else
  {
    (*(v123 + 16))(v122, &v46[*(v64 + 28)], v63);
    OUTLINED_FUNCTION_0_62();
    sub_266D27D60(v46, v69);
    v70 = 0;
  }

  __swift_storeEnumTagSinglePayload(v68, v70, 1, v63);
  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v38, 1, v63);
  if (v85)
  {
    sub_266C1825C(v68, &qword_2800C9B28, &qword_266DAE4B8);
    v76 = 0;
    v75 = 0;
  }

  else
  {
    v71 = v123;
    OUTLINED_FUNCTION_89_2();
    v72 = v113;
    v73(v113, v38, v63);
    sub_266DA907C();
    v74 = v112;
    (*(v71 + 16))(v112, v72, v63);
    v75 = sub_266CEEB00(v74);
    (*(v71 + 8))(v72, v63);
    sub_266C1825C(v68, &qword_2800C9B28, &qword_266DAE4B8);

    v76 = sub_266CEEBBC(v114);
  }

  sub_266D22820(v65, &v134, v126, v132);
  v77 = v134;
  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v67, 1, v64);
  if (v85)
  {
    v78 = &qword_2800C9B20;
    v79 = &unk_266DB1EC0;
    v80 = v67;
  }

  else
  {
    v81 = v117;
    OUTLINED_FUNCTION_63_1();
    sub_266D1CAC8();
    OUTLINED_FUNCTION_0_62();
    sub_266D27D60(v67, v82);
    OUTLINED_FUNCTION_63_1();
    sub_266D1CAC8();
    v83 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_61(v83, v84, v116);
    if (!v85)
    {
      v86 = v110;
      sub_266D27E10();
      sub_266DA8F2C();
      v87 = v109;
      sub_266D27DB8();
      v88 = sub_266D7F7B0(v87);
      OUTLINED_FUNCTION_1_43();
      sub_266D27D60(v86, v89);
      sub_266C1825C(v81, &qword_2800CC420, &unk_266DB0480);
      goto LABEL_19;
    }

    v78 = &qword_2800CC420;
    v79 = &unk_266DB0480;
    v80 = v81;
  }

  sub_266C1825C(v80, v78, v79);
  v88 = 0;
LABEL_19:
  sub_266D1CAC8();
  v90 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_61(v90, v91, v66);
  if (v85)
  {
    sub_266C1825C(v65, &qword_2800CCC10, &qword_266DB86B0);
    v101 = 0;
  }

  else
  {
    v93 = v119;
    v92 = v120;
    OUTLINED_FUNCTION_89_2();
    v94(v93, v131, v66);
    sub_266DA8F9C();
    v95 = v118;
    (*(v92 + 16))(v118, v93, v66);
    v132 = v88;
    v96 = v75;
    v97 = v77;
    v98 = v76;
    v99 = v65;
    v100 = v121;
    sub_266DA74FC();
    v101 = sub_266D5290C(v95, v100, 0);
    (*(v92 + 8))(v93, v66);
    v102 = v99;
    v76 = v98;
    v77 = v97;
    v75 = v96;
    v88 = v132;
    sub_266C1825C(v102, &qword_2800CCC10, &qword_266DB86B0);
  }

  v103 = v130;
  *v130 = v88;
  v103[1] = v101;
  *(v103 + 16) = v77;
  v103[3] = v75;
  v103[4] = v76;
  OUTLINED_FUNCTION_5();
}

void LocationDescriptionProviding.computeParams(targetLocation:userLocation:now:)()
{
  OUTLINED_FUNCTION_6();
  v129 = v0;
  v130 = v3;
  v128 = v4;
  v115 = v5;
  v7 = v6;
  v9 = v8;
  v133 = v10;
  v11 = sub_266DA750C();
  v12 = OUTLINED_FUNCTION_4_3(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_19();
  v121 = v13;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  OUTLINED_FUNCTION_0_2();
  v120 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_33_0();
  v118 = v16;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17_16();
  v119 = v18;
  v19 = OUTLINED_FUNCTION_3_4();
  v116 = type metadata accessor for Address(v19);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_17_16();
  OUTLINED_FUNCTION_15_0(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  v24 = OUTLINED_FUNCTION_4_3(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_17_16();
  v117 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC10, &qword_266DB86B0);
  v28 = OUTLINED_FUNCTION_4_3(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_33_0();
  v131 = v29;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_3_3();
  sub_266DA746C();
  OUTLINED_FUNCTION_0_2();
  v124 = v32;
  v125 = v31;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17_16();
  OUTLINED_FUNCTION_15_0(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B28, &qword_266DAE4B8);
  v36 = OUTLINED_FUNCTION_4_3(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_33_0();
  v122 = v37;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_17_16();
  v123 = v39;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_33_0();
  v126 = v41;
  OUTLINED_FUNCTION_15_8();
  v43 = MEMORY[0x28223BE20](v42);
  v45 = &v105[-v44];
  v46 = MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_48_7();
  MEMORY[0x28223BE20](v47);
  v49 = &v105[-v48];
  if (qword_2800C9370 != -1)
  {
    OUTLINED_FUNCTION_3_39(&qword_2800C9370);
  }

  v50 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v50, qword_2800CCBF0);
  v134 = v9;
  sub_266D1CAC8();
  v127 = v7;
  sub_266D1CAC8();
  v51 = sub_266DA948C();
  v52 = sub_266DAAB0C();
  if (OUTLINED_FUNCTION_79_3(v52))
  {
    v53 = swift_slowAlloc();
    v108 = OUTLINED_FUNCTION_108_2();
    v135 = v108;
    *v53 = 136315394;
    v109 = v1;
    v107 = v45;
    sub_266D1CAC8();
    v54 = sub_266DAA72C();
    v106 = v9;
    v56 = v55;
    sub_266C1825C(v49, &qword_2800C9B20, &unk_266DB1EC0);
    v57 = sub_266C22A3C(v54, v56, &v135);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2080;
    sub_266D1CAC8();
    OUTLINED_FUNCTION_13_11();
    v58 = sub_266DAA72C();
    v60 = v59;
    v1 = v109;
    v45 = v107;
    sub_266C1825C(v2, &qword_2800C9B20, &unk_266DB1EC0);
    v61 = sub_266C22A3C(v58, v60, &v135);

    *(v53 + 14) = v61;
    _os_log_impl(&dword_266C08000, v51, v106, "Compute params for targetLocation: %s and userLocation: %s", v53, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    OUTLINED_FUNCTION_107_2(v2);
    OUTLINED_FUNCTION_107_2(v49);
  }

  v62 = v125;
  v63 = v123;
  sub_266D1CAC8();
  v64 = type metadata accessor for Location(0);
  OUTLINED_FUNCTION_61(v45, 1, v64);
  v65 = v132;
  v66 = v126;
  v67 = v122;
  if (v85)
  {
    sub_266C1825C(v45, &qword_2800C9B20, &unk_266DB1EC0);
    v69 = 1;
  }

  else
  {
    (*(v124 + 16))(v63, &v45[*(v64 + 28)], v62);
    OUTLINED_FUNCTION_0_62();
    sub_266D27D60(v45, v68);
    v69 = 0;
  }

  __swift_storeEnumTagSinglePayload(v63, v69, 1, v62);
  sub_266D1CAC8();
  v70 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_61(v70, v71, v62);
  if (v85)
  {
    sub_266C1825C(v63, &qword_2800C9B28, &qword_266DAE4B8);
    v76 = 0;
    v75 = 0;
  }

  else
  {
    v72 = v124;
    v73 = v114;
    (*(v124 + 32))(v114, v67, v62);
    sub_266DA907C();
    v74 = v113;
    (*(v72 + 16))(v113, v73, v62);
    v75 = sub_266CEEB00(v74);
    (*(v72 + 8))(v73, v62);
    sub_266C1825C(v63, &qword_2800C9B28, &qword_266DAE4B8);

    v76 = sub_266CEEBBC(v115);
  }

  (*(v130 + 32))(v1, &v136, v127, v134, v128);
  v77 = v136;
  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v66, 1, v64);
  if (v85)
  {
    v78 = &qword_2800C9B20;
    v79 = &unk_266DB1EC0;
    v80 = v66;
  }

  else
  {
    v81 = v117;
    OUTLINED_FUNCTION_63_1();
    sub_266D1CAC8();
    OUTLINED_FUNCTION_0_62();
    sub_266D27D60(v66, v82);
    OUTLINED_FUNCTION_63_1();
    sub_266D1CAC8();
    v83 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_61(v83, v84, v116);
    if (!v85)
    {
      v86 = v111;
      sub_266D27E10();
      sub_266DA8F2C();
      v87 = v110;
      sub_266D27DB8();
      v88 = sub_266D7F7B0(v87);
      OUTLINED_FUNCTION_1_43();
      sub_266D27D60(v86, v89);
      sub_266C1825C(v81, &qword_2800CC420, &unk_266DB0480);
      goto LABEL_19;
    }

    v78 = &qword_2800CC420;
    v79 = &unk_266DB0480;
    v80 = v81;
  }

  sub_266C1825C(v80, v78, v79);
  v88 = 0;
LABEL_19:
  v90 = v131;
  sub_266D1CAC8();
  v91 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_61(v91, v92, v65);
  if (v85)
  {
    sub_266C1825C(v1, &qword_2800CCC10, &qword_266DB86B0);
    v102 = 0;
  }

  else
  {
    v93 = v120;
    v94 = *(v120 + 32);
    v134 = v88;
    v95 = v75;
    v96 = v76;
    v97 = v77;
    v98 = v119;
    v94(v119, v90, v65);
    sub_266DA8F9C();
    v99 = v1;
    v100 = v118;
    (*(v93 + 16))(v118, v98, v65);
    v101 = v121;
    sub_266DA74FC();
    v102 = sub_266D5290C(v100, v101, 0);
    v103 = v98;
    v77 = v97;
    v76 = v96;
    v75 = v95;
    v88 = v134;
    (*(v93 + 8))(v103, v65);
    sub_266C1825C(v99, &qword_2800CCC10, &qword_266DB86B0);
  }

  v104 = v133;
  *v133 = v88;
  v104[1] = v102;
  *(v104 + 16) = v77;
  v104[3] = v75;
  v104[4] = v76;
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266D22820(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  v169 = a4;
  v170 = a1;
  v171 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC10, &qword_266DB86B0);
  OUTLINED_FUNCTION_4_3(v9);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10();
  v162 = v11;
  OUTLINED_FUNCTION_3_4();
  v158 = sub_266DA919C();
  OUTLINED_FUNCTION_0_2();
  v153 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_19();
  OUTLINED_FUNCTION_15_0(v14);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC18, &unk_266DB86B8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v18 = OUTLINED_FUNCTION_4_3(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_16();
  v159 = v20;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  OUTLINED_FUNCTION_0_2();
  v166 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_33_0();
  v163 = v23;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17_16();
  v164 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  v27 = OUTLINED_FUNCTION_4_3(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_33_0();
  v161 = v28;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19_4();
  v165 = v32;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v33);
  v34 = OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12_19();
  v168 = v36;
  v37 = OUTLINED_FUNCTION_3_4();
  v38 = type metadata accessor for Location(v37);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_33_0();
  v167 = v40;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_3();
  v42 = OUTLINED_FUNCTION_93();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
  v45 = OUTLINED_FUNCTION_4_3(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_48_7();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_96_2();
  MEMORY[0x28223BE20](v47);
  v49 = &v150 - v48;
  v160 = a3;
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_61(v49, 1, v38);
  if (v55)
  {
    v50 = &qword_2800C9B20;
    v51 = &unk_266DB1EC0;
    v52 = v49;
LABEL_10:
    sub_266C1825C(v52, v50, v51);
    OUTLINED_FUNCTION_43();
    result = __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
    *v171 = 6;
    return result;
  }

  sub_266C29814(0, &qword_2800CA628, 0x277CE41F8);
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_13_11();
  sub_266D27DB8();
  v53 = CLLocation.init(_:)(v4);
  OUTLINED_FUNCTION_0_62();
  sub_266D27D60(v49, v54);
  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v6, 1, v38);
  if (v55)
  {

    v50 = &qword_2800C9B20;
    v51 = &unk_266DB1EC0;
    v52 = v6;
    goto LABEL_10;
  }

  v56 = v167;
  sub_266D27E10();
  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v7, 1, v34);
  if (v57)
  {
    sub_266D27D60(v56, type metadata accessor for Location);

    v50 = &qword_2800CC420;
    v51 = &unk_266DB0480;
    v52 = v7;
    goto LABEL_10;
  }

  sub_266D27E10();
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_13_11();
  sub_266D27DB8();
  v63 = CLLocation.init(_:)(v4);
  v169 = v53;
  [v53 distanceFromLocation_];

  v64 = [objc_opt_self() meters];
  v65 = sub_266C29814(0, &qword_2800CCC20, 0x277CCAE20);
  v66 = v164;
  OUTLINED_FUNCTION_14_2();
  sub_266DA704C();
  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v5, 1, v38);
  if (v67)
  {
    sub_266C1825C(v5, &qword_2800C9B20, &unk_266DB1EC0);
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v68, v69, v70, v34);
    v71 = 0;
    v72 = v166;
LABEL_17:
    v76 = v161;
LABEL_18:
    v77 = v172;
    goto LABEL_19;
  }

  v73 = v165;
  sub_266D1CAC8();
  OUTLINED_FUNCTION_0_62();
  sub_266D27D60(v5, v74);
  OUTLINED_FUNCTION_15_21(v73);
  v72 = v166;
  if (v75)
  {
    v71 = 0;
    goto LABEL_17;
  }

  v121 = v155;
  sub_266D1CAC8();
  OUTLINED_FUNCTION_15_21(v121);
  v150 = v65;
  if (v122)
  {
    sub_266C1825C(v121, &qword_2800CC420, &unk_266DB0480);
    v128 = v158;
    v126 = v159;
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v128);
  }

  else
  {
    v126 = v159;
    sub_266D1CAC8();
    OUTLINED_FUNCTION_1_43();
    sub_266D27D60(v121, v127);
    v128 = v158;
  }

  v64 = *(v156 + 48);
  v65 = &unk_266DAFBF0;
  v129 = v157;
  OUTLINED_FUNCTION_63_1();
  sub_266D1CAC8();
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_61(v129, 1, v128);
  v76 = v161;
  if (v55)
  {
    sub_266C1825C(v126, &qword_2800CA038, &unk_266DAFBF0);
    v130 = OUTLINED_FUNCTION_88_2();
    OUTLINED_FUNCTION_61(v130, v131, v128);
    v72 = v166;
    if (v55)
    {
      sub_266C1825C(&qword_2800CA038, &qword_2800CA038, &unk_266DAFBF0);
      v77 = v172;
      goto LABEL_51;
    }

    goto LABEL_47;
  }

  v65 = v154;
  sub_266D1CAC8();
  v132 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_61(v132, v133, v128);
  if (v134)
  {
    sub_266C1825C(v126, &qword_2800CA038, &unk_266DAFBF0);
    v135 = OUTLINED_FUNCTION_93();
    v136(v135);
    v72 = v166;
LABEL_47:
    sub_266C1825C(&qword_2800CA038, &qword_2800CCC18, &unk_266DB86B8);
    v71 = 0;
    goto LABEL_18;
  }

  v137 = v153;
  OUTLINED_FUNCTION_89_2();
  v138 = &qword_2800CA038 + v64;
  v139 = v151;
  v140(v151, v138, v128);
  OUTLINED_FUNCTION_38_9();
  sub_266D28A8C(v141, v142, MEMORY[0x277D55C58]);
  LODWORD(v160) = sub_266DAA6EC();
  v143 = *(v137 + 8);
  v143(v139, v128);
  v65 = &qword_2800CA038;
  v64 = &unk_266DAFBF0;
  sub_266C1825C(v159, &qword_2800CA038, &unk_266DAFBF0);
  v143(v154, v128);
  v144 = OUTLINED_FUNCTION_4_4();
  sub_266C1825C(v144, v145, &unk_266DAFBF0);
  v72 = v166;
  v77 = v172;
  if ((v160 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_51:
  v64 = v152;
  sub_266D1CAC8();
  OUTLINED_FUNCTION_15_21(v64);
  if (v55)
  {
    sub_266C1825C(v64, &qword_2800CC420, &unk_266DB0480);
    OUTLINED_FUNCTION_17_21();
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_100_1();
  OUTLINED_FUNCTION_1_43();
  sub_266D27D60(v64, v146);
  OUTLINED_FUNCTION_17_21();
  if (!&qword_2800CA038)
  {
LABEL_62:
    if (!v147)
    {
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  if (!v147)
  {

    goto LABEL_65;
  }

  if (v65 != *v148 || &qword_2800CA038 != v147)
  {
    OUTLINED_FUNCTION_32();
    v65 = sub_266DAB17C();

    if (v65)
    {
      goto LABEL_67;
    }

LABEL_65:
    v71 = 0;
    goto LABEL_19;
  }

LABEL_67:
  if (qword_2800C9390 != -1)
  {
    OUTLINED_FUNCTION_47_6(&qword_2800C9390);
  }

  __swift_project_value_buffer(v77, qword_2800E63D8);
  v71 = sub_266DA703C();
LABEL_19:
  sub_266D1CAC8();
  OUTLINED_FUNCTION_15_21(v76);
  if (v55)
  {
    sub_266C1825C(v76, &qword_2800CC420, &unk_266DB0480);
    OUTLINED_FUNCTION_17_21();
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_1_43();
    sub_266D27D60(v76, v78);
    OUTLINED_FUNCTION_17_21();
    if (v65)
    {
      if (v79)
      {
        if (v64 == *v80 && v65 == v79)
        {

          v82 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_14_2();
          v82 = sub_266DAB17C();
        }
      }

      else
      {

        v82 = 0;
      }

      goto LABEL_30;
    }
  }

  v82 = v79 == 0;
LABEL_30:
  v83 = *(v72 + 16);
  v84 = v162;
  v83(v162, v66, v77);
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v77);
  sub_266D242C0(v84, v71 & 1, v82 & 1, v88, v89, v90, v91, v92, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161);
  sub_266C1825C(v84, &qword_2800CCC10, &qword_266DB86B0);
  v93 = v175;
  if (qword_2800C9370 != -1)
  {
    OUTLINED_FUNCTION_3_39(&qword_2800C9370);
  }

  v94 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v94, qword_2800CCBF0);
  v83(v163, v66, v77);
  v95 = sub_266DA948C();
  v96 = sub_266DAAB0C();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v174 = OUTLINED_FUNCTION_108_2();
    *v97 = 136315650;
    v173 = v93;
    v98 = sub_266DAA72C();
    v100 = sub_266C22A3C(v98, v99, &v174);

    *(v97 + 4) = v100;
    v101 = v165;
    OUTLINED_FUNCTION_58_2();
    v102 = OUTLINED_FUNCTION_56_3();
    v103(v102);
    v104 = OUTLINED_FUNCTION_4_4();
    v107 = sub_266C22A3C(v104, v105, v106);

    *(v97 + 20) = v107;
    OUTLINED_FUNCTION_98_1(&dword_266C08000, v108, v109, "Distance compute results: type: %s sameCity? %{BOOL}d distance: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    v77 = v172;
    OUTLINED_FUNCTION_6_1();

    OUTLINED_FUNCTION_0_62();
    sub_266D27D60(v167, v110);
    OUTLINED_FUNCTION_1_43();
    sub_266D27D60(v168, v111);
  }

  else
  {

    v112 = OUTLINED_FUNCTION_76_3();
    v113(v112);
    OUTLINED_FUNCTION_0_62();
    sub_266D27D60(v167, v114);
    OUTLINED_FUNCTION_1_43();
    sub_266D27D60(v168, v115);
    v101 = v165;
  }

  v116 = OUTLINED_FUNCTION_75_2();
  v117(v116);
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v118, v119, v120, v77);
  *v171 = v93;
  return sub_266C1825C(v101, &qword_2800CC420, &unk_266DB0480);
}

uint64_t LocationDescriptionProviding.distance(from:to:)(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4)
{
  v167 = a4;
  v168 = a1;
  v169 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC10, &qword_266DB86B0);
  OUTLINED_FUNCTION_4_3(v9);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10();
  v160 = v11;
  OUTLINED_FUNCTION_3_4();
  v156 = sub_266DA919C();
  OUTLINED_FUNCTION_0_2();
  v151 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_19();
  OUTLINED_FUNCTION_15_0(v14);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC18, &unk_266DB86B8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10();
  v155 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v18 = OUTLINED_FUNCTION_4_3(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17_16();
  v157 = v20;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  OUTLINED_FUNCTION_0_2();
  v164 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_33_0();
  v161 = v23;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_17_16();
  v163 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  v27 = OUTLINED_FUNCTION_4_3(v26);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_33_0();
  v159 = v28;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_11_22();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_19_4();
  v162 = v32;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v33);
  v34 = OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_12_19();
  v166 = v36;
  v37 = OUTLINED_FUNCTION_3_4();
  v38 = type metadata accessor for Location(v37);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_33_0();
  v165 = v40;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_3_3();
  v42 = OUTLINED_FUNCTION_93();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(v42, v43);
  v45 = OUTLINED_FUNCTION_4_3(v44);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_48_7();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_96_2();
  MEMORY[0x28223BE20](v47);
  v49 = &v147 - v48;
  v158 = a3;
  OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_61(v49, 1, v38);
  if (v55)
  {
    v50 = &qword_2800C9B20;
    v51 = &unk_266DB1EC0;
    v52 = v49;
LABEL_10:
    sub_266C1825C(v52, v50, v51);
    OUTLINED_FUNCTION_43();
    result = __swift_storeEnumTagSinglePayload(v59, v60, v61, v62);
    *v169 = 6;
    return result;
  }

  sub_266C29814(0, &qword_2800CA628, 0x277CE41F8);
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_13_11();
  sub_266D27DB8();
  v53 = CLLocation.init(_:)(v4);
  OUTLINED_FUNCTION_0_62();
  sub_266D27D60(v49, v54);
  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v6, 1, v38);
  if (v55)
  {

    v50 = &qword_2800C9B20;
    v51 = &unk_266DB1EC0;
    v52 = v6;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_46();
  v56 = v165;
  sub_266D27E10();
  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v7, 1, v34);
  if (v57)
  {
    OUTLINED_FUNCTION_0_62();
    sub_266D27D60(v56, v58);

    v50 = &qword_2800CC420;
    v51 = &unk_266DB0480;
    v52 = v7;
    goto LABEL_10;
  }

  sub_266D27E10();
  OUTLINED_FUNCTION_2_46();
  OUTLINED_FUNCTION_13_11();
  sub_266D27DB8();
  v64 = CLLocation.init(_:)(v4);
  v167 = v53;
  [v53 distanceFromLocation_];

  v65 = [objc_opt_self() meters];
  v66 = sub_266C29814(0, &qword_2800CCC20, 0x277CCAE20);
  v67 = v163;
  OUTLINED_FUNCTION_14_2();
  sub_266DA704C();
  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v5, 1, v38);
  if (v68)
  {
    sub_266C1825C(v5, &qword_2800C9B20, &unk_266DB1EC0);
    v74 = v162;
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v69, v70, v71, v34);
    v72 = 0;
    v73 = v164;
LABEL_17:
    v77 = v159;
LABEL_18:
    v78 = v170;
    goto LABEL_19;
  }

  v74 = v162;
  sub_266D1CAC8();
  OUTLINED_FUNCTION_0_62();
  sub_266D27D60(v5, v75);
  OUTLINED_FUNCTION_15_21(v74);
  v73 = v164;
  if (v76)
  {
    v72 = 0;
    goto LABEL_17;
  }

  v120 = v153;
  sub_266D1CAC8();
  OUTLINED_FUNCTION_15_21(v120);
  v148 = v66;
  if (v121)
  {
    sub_266C1825C(v120, &qword_2800CC420, &unk_266DB0480);
    v127 = v156;
    v125 = v157;
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v122, v123, v124, v127);
  }

  else
  {
    v125 = v157;
    sub_266D1CAC8();
    OUTLINED_FUNCTION_1_43();
    sub_266D27D60(v120, v126);
    v127 = v156;
  }

  v65 = *(v154 + 48);
  v66 = &unk_266DAFBF0;
  v128 = v155;
  OUTLINED_FUNCTION_63_1();
  sub_266D1CAC8();
  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_61(v128, 1, v127);
  v77 = v159;
  if (v55)
  {
    sub_266C1825C(v125, &qword_2800CA038, &unk_266DAFBF0);
    v129 = OUTLINED_FUNCTION_88_2();
    OUTLINED_FUNCTION_61(v129, v130, v127);
    v73 = v164;
    if (v55)
    {
      sub_266C1825C(&qword_2800CA038, &qword_2800CA038, &unk_266DAFBF0);
      v78 = v170;
      goto LABEL_51;
    }

    goto LABEL_47;
  }

  v66 = v152;
  sub_266D1CAC8();
  v131 = OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_61(v131, v132, v127);
  if (v133)
  {
    sub_266C1825C(v125, &qword_2800CA038, &unk_266DAFBF0);
    (*(v151 + 8))(v66, v127);
    v73 = v164;
LABEL_47:
    sub_266C1825C(&qword_2800CA038, &qword_2800CCC18, &unk_266DB86B8);
    v72 = 0;
    goto LABEL_18;
  }

  v134 = v151;
  OUTLINED_FUNCTION_89_2();
  v135 = &qword_2800CA038 + v65;
  v136 = v149;
  v137(v149, v135, v127);
  OUTLINED_FUNCTION_38_9();
  sub_266D28A8C(v138, v139, MEMORY[0x277D55C58]);
  LODWORD(v158) = sub_266DAA6EC();
  v140 = *(v134 + 8);
  v140(v136, v127);
  v66 = &qword_2800CA038;
  v65 = &unk_266DAFBF0;
  sub_266C1825C(v157, &qword_2800CA038, &unk_266DAFBF0);
  v140(v152, v127);
  v141 = OUTLINED_FUNCTION_4_4();
  sub_266C1825C(v141, v142, &unk_266DAFBF0);
  v73 = v164;
  v78 = v170;
  if ((v158 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_51:
  v65 = v150;
  sub_266D1CAC8();
  OUTLINED_FUNCTION_15_21(v65);
  if (v55)
  {
    sub_266C1825C(v65, &qword_2800CC420, &unk_266DB0480);
    OUTLINED_FUNCTION_17_21();
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_100_1();
  OUTLINED_FUNCTION_1_43();
  sub_266D27D60(v65, v143);
  OUTLINED_FUNCTION_17_21();
  if (!&qword_2800CA038)
  {
LABEL_62:
    if (!v144)
    {
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  if (!v144)
  {

    goto LABEL_65;
  }

  if (v66 != *v145 || &qword_2800CA038 != v144)
  {
    OUTLINED_FUNCTION_32();
    v66 = sub_266DAB17C();

    if (v66)
    {
      goto LABEL_67;
    }

LABEL_65:
    v72 = 0;
    goto LABEL_19;
  }

LABEL_67:
  if (qword_2800C9390 != -1)
  {
    OUTLINED_FUNCTION_47_6(&qword_2800C9390);
  }

  __swift_project_value_buffer(v78, qword_2800E63D8);
  v72 = sub_266DA703C();
LABEL_19:
  sub_266D1CAC8();
  OUTLINED_FUNCTION_15_21(v77);
  if (v55)
  {
    sub_266C1825C(v77, &qword_2800CC420, &unk_266DB0480);
    OUTLINED_FUNCTION_17_21();
  }

  else
  {
    OUTLINED_FUNCTION_103_1();
    OUTLINED_FUNCTION_1_43();
    sub_266D27D60(v77, v79);
    OUTLINED_FUNCTION_17_21();
    if (v66)
    {
      if (v80)
      {
        if (v65 == *v81 && v66 == v80)
        {

          v83 = 1;
        }

        else
        {
          OUTLINED_FUNCTION_14_2();
          v83 = sub_266DAB17C();
        }
      }

      else
      {

        v83 = 0;
      }

      goto LABEL_30;
    }
  }

  v83 = v80 == 0;
LABEL_30:
  v84 = *(v73 + 16);
  v85 = v160;
  v86 = OUTLINED_FUNCTION_93();
  v84(v86);
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v78);
  LocationDescriptionProviding.locationType(_:sameCity:sameCountry:)(v85, v72 & 1, v83 & 1, v90, v91, v92, v93, v94, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158);
  sub_266C1825C(v85, &qword_2800CCC10, &qword_266DB86B0);
  v95 = v173;
  if (qword_2800C9370 != -1)
  {
    OUTLINED_FUNCTION_3_39(&qword_2800C9370);
  }

  v96 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v96, qword_2800CCBF0);
  (v84)(v161, v67, v78);
  v97 = sub_266DA948C();
  v98 = sub_266DAAB0C();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v172 = OUTLINED_FUNCTION_108_2();
    *v99 = 136315650;
    v171 = v95;
    v100 = sub_266DAA72C();
    v102 = sub_266C22A3C(v100, v101, &v172);

    *(v99 + 4) = v102;
    v74 = v162;
    OUTLINED_FUNCTION_58_2();
    v103 = OUTLINED_FUNCTION_56_3();
    v104(v103);
    v105 = OUTLINED_FUNCTION_4_4();
    v108 = sub_266C22A3C(v105, v106, v107);

    *(v99 + 20) = v108;
    OUTLINED_FUNCTION_98_1(&dword_266C08000, v109, v110, "Distance compute results: type: %s sameCity? %{BOOL}d distance: %s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_1();
    v78 = v170;
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    v111 = OUTLINED_FUNCTION_76_3();
    v112(v111);
  }

  OUTLINED_FUNCTION_0_62();
  sub_266D27D60(v165, v113);
  OUTLINED_FUNCTION_1_43();
  sub_266D27D60(v166, v114);
  v115 = OUTLINED_FUNCTION_75_2();
  v116(v115);
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v78);
  *v169 = v95;
  return sub_266C1825C(v74, &qword_2800CC420, &unk_266DB0480);
}

void sub_266D242C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_86_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC10, &qword_266DB86B0);
  OUTLINED_FUNCTION_4_3(v25);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  v28 = &a9 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_61(v28, 1, v29);
  if (v31)
  {
    sub_266C1825C(v28, &qword_2800CCC10, &qword_266DB86B0);
    v32 = 5;
  }

  else
  {
    v33 = OUTLINED_FUNCTION_77_4();
    v34(v33);
    if (qword_2800C9378 != -1)
    {
      OUTLINED_FUNCTION_46_4(&qword_2800C9378);
    }

    __swift_project_value_buffer(v29, qword_2800E6390);
    v35 = sub_266C29814(0, &qword_2800CCC20, 0x277CCAE20);
    v36 = OUTLINED_FUNCTION_72_1(v35);
    if (v36)
    {
      v37 = OUTLINED_FUNCTION_13_18();
      v38(v37);
      v32 = 0;
      goto LABEL_23;
    }

    if (qword_2800C9380 != -1)
    {
      v36 = OUTLINED_FUNCTION_45_5(&qword_2800C9380);
    }

    v39 = OUTLINED_FUNCTION_25_11(v36, qword_2800E63A8);
    if (v39)
    {
      v40 = OUTLINED_FUNCTION_13_18();
      v41(v40);
      v32 = 1;
      goto LABEL_23;
    }

    if (v22 != 2 && (v22 & 1) != 0)
    {
      v42 = OUTLINED_FUNCTION_13_18();
      v43(v42);
LABEL_18:
      v32 = 2;
      goto LABEL_23;
    }

    if (qword_2800C9388 != -1)
    {
      v39 = OUTLINED_FUNCTION_44_6(&qword_2800C9388);
    }

    v44 = OUTLINED_FUNCTION_25_11(v39, qword_2800E63C0);
    v45 = OUTLINED_FUNCTION_13_18();
    v46(v45);
    if (v44)
    {
      goto LABEL_18;
    }

    if (v21 == 2 || (v21 & 1) != 0)
    {
      v32 = 3;
    }

    else
    {
      v32 = 4;
    }
  }

LABEL_23:
  *v20 = v32;
  OUTLINED_FUNCTION_5();
}

void LocationDescriptionProviding.locationType(_:sameCity:sameCountry:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_86_1();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC10, &qword_266DB86B0);
  OUTLINED_FUNCTION_4_3(v25);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  v28 = &a9 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC08, &unk_266DB86A0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_61(v28, 1, v29);
  if (v31)
  {
    sub_266C1825C(v28, &qword_2800CCC10, &qword_266DB86B0);
    v32 = 5;
  }

  else
  {
    v33 = OUTLINED_FUNCTION_77_4();
    v34(v33);
    if (qword_2800C9378 != -1)
    {
      OUTLINED_FUNCTION_46_4(&qword_2800C9378);
    }

    __swift_project_value_buffer(v29, qword_2800E6390);
    v35 = sub_266C29814(0, &qword_2800CCC20, 0x277CCAE20);
    v36 = OUTLINED_FUNCTION_72_1(v35);
    if (v36)
    {
      v37 = OUTLINED_FUNCTION_13_18();
      v38(v37);
      v32 = 0;
      goto LABEL_23;
    }

    if (qword_2800C9380 != -1)
    {
      v36 = OUTLINED_FUNCTION_45_5(&qword_2800C9380);
    }

    v39 = OUTLINED_FUNCTION_25_11(v36, qword_2800E63A8);
    if (v39)
    {
      v40 = OUTLINED_FUNCTION_13_18();
      v41(v40);
      v32 = 1;
      goto LABEL_23;
    }

    if (v22 != 2 && (v22 & 1) != 0)
    {
      v42 = OUTLINED_FUNCTION_13_18();
      v43(v42);
LABEL_18:
      v32 = 2;
      goto LABEL_23;
    }

    if (qword_2800C9388 != -1)
    {
      v39 = OUTLINED_FUNCTION_44_6(&qword_2800C9388);
    }

    v44 = OUTLINED_FUNCTION_25_11(v39, qword_2800E63C0);
    v45 = OUTLINED_FUNCTION_13_18();
    v46(v45);
    if (v44)
    {
      goto LABEL_18;
    }

    if (v21 == 2 || (v21 & 1) != 0)
    {
      v32 = 3;
    }

    else
    {
      v32 = 4;
    }
  }

LABEL_23:
  *v20 = v32;
  OUTLINED_FUNCTION_5();
}

uint64_t DeviceLocationDescriptionProviding.notFoundNearbyDescription(device:deviceLocation:)()
{
  OUTLINED_FUNCTION_22_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = sub_266DA746C();
  v1[7] = v6;
  OUTLINED_FUNCTION_11_3(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_62();
  v8 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_266D2484C()
{
  OUTLINED_FUNCTION_34();
  v9 = v0[5];
  sub_266DA745C();
  v8 = (*(v9 + 16) + **(v9 + 16));
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_266D2496C;
  v2 = v0[9];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return v8(v6, v4, v2, v5, v3);
}

uint64_t sub_266D2496C()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v2 = *v1;
  OUTLINED_FUNCTION_21_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_102();

    return MEMORY[0x2822009F8](v5);
  }

  else
  {

    OUTLINED_FUNCTION_102();

    return v9(v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

uint64_t sub_266D24B04()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266D24B60()
{
  OUTLINED_FUNCTION_22_0();
  v1[20] = v2;
  v1[21] = v0;
  v1[18] = v3;
  v1[19] = v4;
  v5 = type metadata accessor for DeviceLocationDescriptionProvider(0);
  OUTLINED_FUNCTION_11_3(v5);
  v1[22] = v6;
  v1[23] = *(v7 + 64);
  v1[24] = OUTLINED_FUNCTION_62();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_4_3(v8);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v9 = type metadata accessor for Location(0);
  v1[29] = v9;
  OUTLINED_FUNCTION_4_3(v9);
  v1[30] = OUTLINED_FUNCTION_62();
  v10 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_266D24C88()
{
  if (qword_2800C9370 != -1)
  {
    OUTLINED_FUNCTION_3_39(&qword_2800C9370);
  }

  v1 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v1, qword_2800CCBF0);
  v2 = sub_266DA948C();
  v3 = sub_266DAAB0C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_11();
    *v4 = 0;
    _os_log_impl(&dword_266C08000, v2, v3, "LocationDescriptionProvider notFoundNearbyDescription", v4, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  v6 = *(v0 + 224);
  v5 = *(v0 + 232);

  sub_266D1CAC8();
  OUTLINED_FUNCTION_61(v6, 1, v5);
  if (v7)
  {
    sub_266C1825C(*(v0 + 224), &qword_2800C9B20, &unk_266DB1EC0);
    v8 = sub_266DA948C();
    v9 = sub_266DAAAEC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_11();
      *v10 = 0;
      _os_log_impl(&dword_266C08000, v8, v9, "No device location available, skipping user location.", v10, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v11 = *(v0 + 232);
    v12 = *(v0 + 200);

    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v11);
    sub_266D213B0();
    sub_266C1825C(v12, &qword_2800C9B20, &unk_266DB1EC0);
    v19 = OUTLINED_FUNCTION_14_2();
    sub_266C1825C(v19, v20, &unk_266DB1EC0);
    *(v0 + 312) = v32;
    *(v0 + 328) = v34;
    *(v0 + 16) = v32;
    *(v0 + 32) = v33;
    *(v0 + 40) = v34;
    v21 = swift_task_alloc();
    *(v0 + 344) = v21;
    *v21 = v0;
    OUTLINED_FUNCTION_65_1(v21);

    return sub_266D25768();
  }

  else
  {
    OUTLINED_FUNCTION_2_46();
    sub_266D27E10();
    v23 = sub_266DAB37C();
    v25 = v24;
    sub_266D27DB8();
    v26 = swift_allocObject();
    *(v0 + 248) = v26;
    sub_266D27E10();
    OUTLINED_FUNCTION_12_4(&unk_266DB8958);
    v31 = v27;
    swift_task_alloc();
    OUTLINED_FUNCTION_24_1();
    *(v0 + 256) = v28;
    *v28 = v29;
    v28[1] = sub_266D25030;
    v30 = *(v0 + 216);

    return v31(v30, v23, v25, &unk_266DB8948, v26, &unk_266DB8950, 0);
  }
}

uint64_t sub_266D25030()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266D25130()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 208);
  OUTLINED_FUNCTION_2_46();
  sub_266D27DB8();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v1);
  sub_266D213B0();
  sub_266C1825C(v2, &qword_2800C9B20, &unk_266DB1EC0);
  *(v0 + 264) = v8;
  *(v0 + 280) = v10;
  *(v0 + 56) = v8;
  *(v0 + 72) = v9;
  *(v0 + 80) = v10;
  v6 = swift_task_alloc();
  *(v0 + 296) = v6;
  *v6 = v0;
  OUTLINED_FUNCTION_65_1(v6);

  return sub_266D25768();
}

uint64_t sub_266D25240()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v2[12] = v1;
  v2[13] = v4;
  v2[14] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v7 + 304) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v8);
}

void sub_266D25340()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);

  sub_266C1825C(v2, &qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_0_62();
  sub_266D27D60(v1, v3);
  OUTLINED_FUNCTION_41_3();

  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_109_2();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_266D25424()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v2[15] = v1;
  v2[16] = v4;
  v2[17] = v0;
  v5 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v6 = v5;
  *(v7 + 352) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v8);
}

void sub_266D25524()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_41_3();

  OUTLINED_FUNCTION_43_4();
  OUTLINED_FUNCTION_109_2();

  __asm { BRAA            X2, X16 }
}

void sub_266D255DC()
{
  OUTLINED_FUNCTION_56();

  OUTLINED_FUNCTION_41_3();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_109_2();

  __asm { BRAA            X1, X16 }
}

void sub_266D2568C()
{
  OUTLINED_FUNCTION_56();
  v1 = *(v0 + 240);
  sub_266C1825C(*(v0 + 216), &qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_0_62();
  sub_266D27D60(v1, v2);

  OUTLINED_FUNCTION_41_3();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_109_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D25768()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  *(v1 + 16) = v4;
  *(v1 + 24) = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v5);
  *(v1 + 32) = OUTLINED_FUNCTION_62();
  v6 = sub_266DA750C();
  *(v1 + 40) = v6;
  OUTLINED_FUNCTION_11_3(v6);
  *(v1 + 48) = v7;
  *(v1 + 56) = OUTLINED_FUNCTION_62();
  v8 = *v3;
  *(v1 + 120) = *(v3 + 16);
  v9 = *(v3 + 24);
  *(v1 + 64) = v8;
  *(v1 + 80) = v9;
  v10 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_266D25850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v11 = *(v10 + 120);
  v13 = *(v10 + 48);
  v12 = *(v10 + 56);
  v14 = *(v10 + 40);
  v16 = *(v10 + 16);
  v15 = *(v10 + 24);
  type metadata accessor for FindmyDevice(0);
  v17 = type metadata accessor for DeviceLocationDescriptionProvider(0);
  (*(v13 + 16))(v12, v15 + *(v17 + 24), v14);
  *(v10 + 96) = sub_266D9AF54(v16, v12, 0, 0xF000000000000000, 0, 0, 0, 0);
  v18 = 1;
  switch(v11)
  {
    case 2:
      OUTLINED_FUNCTION_90_2();
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_80_1();
      goto LABEL_5;
    case 5:
      OUTLINED_FUNCTION_52_5();
      goto LABEL_5;
    case 6:
      goto LABEL_6;
    default:
LABEL_5:
      sub_266DAA77C();

      v18 = 0;
LABEL_6:
      v19 = *(v10 + 32);
      v20 = sub_266DA919C();
      __swift_storeEnumTagSinglePayload(v19, v18, 1, v20);
      v21 = swift_task_alloc();
      *(v10 + 104) = v21;
      *v21 = v10;
      v21[1] = sub_266D25A38;
      OUTLINED_FUNCTION_100();

      return sub_266D44260();
  }
}

uint64_t sub_266D25A38()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_9_2();
  *v3 = v1;
  *v3 = *v2;
  *(v1 + 112) = v0;

  OUTLINED_FUNCTION_91_2();
  if (v0)
  {
    sub_266C1825C(*(v1 + 32), &qword_2800CA038, &unk_266DAFBF0);

    OUTLINED_FUNCTION_49();
    OUTLINED_FUNCTION_102();

    return MEMORY[0x2822009F8](v4);
  }

  else
  {
    sub_266C1825C(*(v1 + 32), &qword_2800CA038, &unk_266DAFBF0);

    OUTLINED_FUNCTION_102();

    return v8(v6, v7, v8, v9, v10, v11, v12, v13);
  }
}

uint64_t sub_266D25BDC()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266D25C44(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_266D25C64);
}

uint64_t sub_266D25C64()
{
  OUTLINED_FUNCTION_34();
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[4] = v4;
  v5 = *(v3 + 8);
  *v4 = v6;
  v4[1] = sub_266D25D18;
  v7 = v0[2];

  return sub_266D7BF1C(v7, v2, v5);
}

uint64_t sub_266D25D18()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  OUTLINED_FUNCTION_28();

  return v3();
}

uint64_t sub_266D25DF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_266D25E18);
}

uint64_t sub_266D25E18()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  if (qword_2800C9370 != -1)
  {
    OUTLINED_FUNCTION_3_39(&qword_2800C9370);
  }

  v1 = *(v0 + 24);
  v2 = sub_266DA94AC();
  OUTLINED_FUNCTION_94(v2, qword_2800CCBF0);
  v3 = v1;
  v4 = sub_266DA948C();
  v5 = sub_266DAAAEC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_266C08000, v4, v5, "LocationDescriptionProvider: Failed getting user location with error: %@", v7, 0xCu);
    sub_266C1825C(v8, &qword_2800C9F78, &unk_266DB1430);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  type metadata accessor for Location(0);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_102();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_266D25F8C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266D26038;

  return sub_266D24B60();
}

uint64_t sub_266D26038()
{
  OUTLINED_FUNCTION_22_0();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  OUTLINED_FUNCTION_43_4();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_266D26124@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v94 = a1;
  v9 = sub_266DA750C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v13 = MEMORY[0x28223BE20](v89);
  v88 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v92 = &v85 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v85 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v85 - v21;
  MEMORY[0x28223BE20](v20);
  v98 = &v85 - v23;
  v24 = *a3;
  v99 = a3[1];
  v93 = *(a3 + 16);
  v25 = a3[3];
  v95 = a3[4];
  v96 = v25;
  v26 = [a2 friendLocation];
  v27 = [v26 location];

  v97 = v27;
  v91 = v19;
  if (!v27 || (v28 = v97, sub_266D6CDF4(&v103), v28, v29 = v105, v105 == 255))
  {
    v39 = sub_266DA919C();
    v40 = v98;
    v41 = 1;
  }

  else
  {
    v87 = v5;
    v90 = v10;
    v30 = v98;
    v31 = v9;
    v32 = v24;
    v33 = v22;
    v34 = a4;
    v36 = v103;
    v35 = v104;
    v100 = v103;
    v101 = v104;
    v102 = v105;
    sub_266D91274();
    v37 = v36;
    a4 = v34;
    v22 = v33;
    v24 = v32;
    v9 = v31;
    v38 = v35;
    v5 = v87;
    sub_266C23130(v37, v38, v29);
    v39 = sub_266DA919C();
    v40 = v30;
    v10 = v90;
    v41 = 0;
  }

  __swift_storeEnumTagSinglePayload(v40, v41, 1, v39);
  sub_266DA900C();
  v42 = [v94 person];
  v43 = type metadata accessor for FriendLocationDescriptionProvider(0);
  (v10[2].isa)(v12, v5 + *(v43 + 24), v9);
  v44 = sub_266DA8FBC();
  switch(v93)
  {
    case 6uLL:
      v84 = sub_266DA919C();
      __swift_storeEnumTagSinglePayload(v22, 1, 1, v84);

      break;
    default:

      sub_266DAA77C();

      v45 = sub_266DA919C();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v45);
      break;
  }

  v94 = v44;
  if (qword_2800C9370 != -1)
  {
    swift_once();
  }

  v46 = sub_266DA94AC();
  __swift_project_value_buffer(v46, qword_2800CCBF0);
  v47 = v91;
  sub_266D1CAC8();
  v93 = v22;
  v48 = v92;
  sub_266D1CAC8();
  v49 = v94;

  swift_retain_n();

  v50 = sub_266DA948C();
  v51 = sub_266DAAB0C();

  LODWORD(v87) = v51;
  v90 = v50;
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v86 = a4;
    v53 = v52;
    v85 = swift_slowAlloc();
    v103 = v85;
    *v53 = 136316674;
    v100 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC90, &qword_266DB89E8);
    v54 = sub_266DAA72C();
    v56 = sub_266C22A3C(v54, v55, &v103);

    *(v53 + 4) = v56;
    *(v53 + 12) = 2080;
    v57 = v99;
    sub_266D1CAC8();
    v58 = sub_266DAA72C();
    v60 = v59;
    sub_266C1825C(v47, &qword_2800CA038, &unk_266DAFBF0);
    v61 = v48;
    v62 = sub_266C22A3C(v58, v60, &v103);
    v49 = v94;

    *(v53 + 14) = v62;
    *(v53 + 22) = 2080;
    v100 = v57;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC98, &qword_266DB89F0);
    v63 = sub_266DAA72C();
    v65 = sub_266C22A3C(v63, v64, &v103);

    *(v53 + 24) = v65;
    *(v53 + 32) = 2080;
    v100 = v49;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCCA0, &qword_266DB89F8);
    v66 = sub_266DAA72C();
    v68 = sub_266C22A3C(v66, v67, &v103);

    *(v53 + 34) = v68;
    *(v53 + 42) = 2080;
    sub_266D1CAC8();
    v69 = sub_266DAA72C();
    v71 = v70;
    sub_266C1825C(v61, &qword_2800CA038, &unk_266DAFBF0);
    v72 = sub_266C22A3C(v69, v71, &v103);

    *(v53 + 44) = v72;
    *(v53 + 52) = 2080;
    v100 = v96;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCCA8, &qword_266DB8A00);
    v73 = sub_266DAA72C();
    v75 = sub_266C22A3C(v73, v74, &v103);

    *(v53 + 54) = v75;
    *(v53 + 62) = 2080;
    v100 = v95;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCCB0, &qword_266DB8A08);
    v76 = sub_266DAA72C();
    v78 = sub_266C22A3C(v76, v77, &v103);

    *(v53 + 64) = v78;
    v79 = v90;
    _os_log_impl(&dword_266C08000, v90, v87, "foundFriendDescriptionCAT %s, %s, %s, %s, %s, %s, %s", v53, 0x48u);
    v80 = v85;
    swift_arrayDestroy();
    MEMORY[0x26D5F2480](v80, -1, -1);
    v81 = v53;
    a4 = v86;
    MEMORY[0x26D5F2480](v81, -1, -1);
  }

  else
  {

    sub_266C1825C(v48, &qword_2800CA038, &unk_266DAFBF0);
    sub_266C1825C(v47, &qword_2800CA038, &unk_266DAFBF0);
  }

  sub_266D1CB20();
  v82 = type metadata accessor for FriendLocationDescriptionProvider.FriendLocationDescriptionParams(0);
  result = sub_266D1CB20();
  *(a4 + *(v82 + 20)) = v99;
  *(a4 + *(v82 + 24)) = v49;
  return result;
}

uint64_t sub_266D26A40()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for FriendLocationDescriptionProvider.FriendLocationDescriptionParams(0);
  v1[5] = v4;
  OUTLINED_FUNCTION_4_3(v4);
  v1[6] = OUTLINED_FUNCTION_62();
  v5 = sub_266DA746C();
  v1[7] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_62();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_4_3(v7);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = type metadata accessor for Location(0);
  v1[13] = v8;
  OUTLINED_FUNCTION_4_3(v8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_266D26B90()
{
  OUTLINED_FUNCTION_84();
  v2 = [*(v1 + 24) friendLocation];
  if (!v2 || (v3 = v2, v0 = [v2 location], v3, !v0))
  {
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
LABEL_7:
    sub_266C1825C(*(v1 + 96), &qword_2800C9B20, &unk_266DB1EC0);
    if (qword_2800C9370 != -1)
    {
      OUTLINED_FUNCTION_3_39(&qword_2800C9370);
    }

    v13 = sub_266DA94AC();
    OUTLINED_FUNCTION_94(v13, qword_2800CCBF0);
    v14 = sub_266DA948C();
    v15 = sub_266DAAAEC();
    if (OUTLINED_FUNCTION_79_3(v15))
    {
      v16 = OUTLINED_FUNCTION_11();
      *v16 = 0;
      _os_log_impl(&dword_266C08000, v14, v0, "LocationDescriptionProvider: should not have a nil friendLocation", v16, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v17 = sub_266D28AF4();
    OUTLINED_FUNCTION_87(&type metadata for LocationDescriptionError, v17);
    swift_willThrow();
    OUTLINED_FUNCTION_59_4();

    OUTLINED_FUNCTION_28();
    OUTLINED_FUNCTION_82_2();

    __asm { BRAA            X1, X16 }
  }

  v5 = *(v1 + 96);
  v4 = *(v1 + 104);
  sub_266C5FF68(v0, v5);
  OUTLINED_FUNCTION_61(v5, 1, v4);
  if (v6)
  {
    goto LABEL_7;
  }

  v7 = *(v1 + 24);
  OUTLINED_FUNCTION_2_46();
  sub_266D27E10();
  v8 = [v7 userLocation];
  if (v8)
  {
    sub_266C5FF68(v8, *(v1 + 88));
  }

  else
  {
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v1 + 128) = v24;
  *v24 = v25;
  v24[1] = sub_266D26E10;
  OUTLINED_FUNCTION_82_2();

  return sub_266D274C4(v26, v27, v28);
}

uint64_t sub_266D26E10()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266D26F08()
{
  v20 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v15 = *(v0 + 16);
  v16 = *(v0 + 24);
  OUTLINED_FUNCTION_2_46();
  sub_266D27DB8();
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v1);
  sub_266DA745C();
  sub_266D213B0();
  (*(v3 + 8))(v4, v6);
  sub_266C1825C(v2, &qword_2800C9B20, &unk_266DB1EC0);
  v10 = v18;
  v11 = v19;
  v12 = v17;
  *(v0 + 144) = v17;
  *(v0 + 160) = v11;
  v17 = v12;
  v18 = v10;
  v19 = v11;
  sub_266D26124(v15, v16, &v17, v5);
  v13 = swift_task_alloc();
  *(v0 + 176) = v13;
  *v13 = v0;
  v13[1] = sub_266D270A4;

  return sub_266CB3AF8();
}

uint64_t sub_266D270A4()
{
  OUTLINED_FUNCTION_34();
  v3 = v2;
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_21_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  *(v5 + 184) = v0;

  if (!v0)
  {
    *(v5 + 192) = v3;
  }

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_266D271B4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];
  v4 = v0[6];
  OUTLINED_FUNCTION_40_5();
  sub_266D27D60(v4, v5);

  sub_266D27D60(v2, type metadata accessor for Location);
  sub_266C1825C(v3, &qword_2800C9B20, &unk_266DB1EC0);
  sub_266D27D60(v1, type metadata accessor for Location);

  OUTLINED_FUNCTION_43_4();
  v7 = v0[24];

  return v6(v7);
}

uint64_t sub_266D272F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v12 = v10[14];
  v11 = v10[15];
  v13 = v10[11];
  OUTLINED_FUNCTION_40_5();
  sub_266D27D60(v14, v15);
  sub_266D27D60(v12, type metadata accessor for Location);
  sub_266C1825C(v13, &qword_2800C9B20, &unk_266DB1EC0);
  sub_266D27D60(v11, type metadata accessor for Location);

  OUTLINED_FUNCTION_59_4();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_100();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

void sub_266D27404()
{
  OUTLINED_FUNCTION_84();
  v1 = *(v0 + 120);
  sub_266C1825C(*(v0 + 88), &qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_0_62();
  sub_266D27D60(v1, v2);
  OUTLINED_FUNCTION_59_4();

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_82_2();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_266D274C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  v4[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCC10, &qword_266DB86B0);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D2759C);
}

uint64_t sub_266D2759C()
{
  OUTLINED_FUNCTION_56();
  v18 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  OUTLINED_FUNCTION_2_46();
  sub_266D27DB8();
  type metadata accessor for Location(0);
  OUTLINED_FUNCTION_59();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  sub_266D22820(v1, v17, v3, v2);
  sub_266C1825C(v2, &qword_2800C9B20, &unk_266DB1EC0);
  v8 = sub_266C1825C(v1, &qword_2800CCC10, &qword_266DB86B0);
  if (v17[0] == 6)
  {
    v11 = 2;
  }

  else
  {
    v17[1] = v17[0];
    if (sub_266D20EB0(v8, v9, v10))
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }
  }

  v12 = v0[11];
  v13 = type metadata accessor for FriendLocationDescriptionProvider(0);
  sub_266C233D0(v12 + *(v13 + 32), (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[7] = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  v0[14] = v14;
  *v14 = v15;
  v14[1] = sub_266D27714;

  return GEOServicesReverseGeocoder.reverseGeocodeLocationAsync(_:spokenNeeds:)();
}

uint64_t sub_266D27714()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_35_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_49();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_266D2780C()
{
  OUTLINED_FUNCTION_22_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_15_4();

  return v1();
}

uint64_t sub_266D27878()
{
  OUTLINED_FUNCTION_22_0();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_28();

  return v1();
}

uint64_t sub_266D278E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_266DAAEBC();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_266D279E8);
}

uint64_t sub_266D279E8()
{
  OUTLINED_FUNCTION_84();
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  sub_266DAAECC();
  sub_266D28A8C(&qword_2800CCC78, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  OUTLINED_FUNCTION_42();
  sub_266DAB20C();
  sub_266D28A8C(&qword_2800CCC80, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_266DAAEDC();
  v4 = *(v3 + 8);
  v0[12] = v4;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_266D27B68;
  OUTLINED_FUNCTION_82_2();

  return MEMORY[0x2822008C8](v6);
}

uint64_t sub_266D27B68()
{
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_1();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  OUTLINED_FUNCTION_9_2();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (!v0)
  {

    OUTLINED_FUNCTION_15_4();
    OUTLINED_FUNCTION_109_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_109_2();

  return MEMORY[0x2822009F8](v11);
}

uint64_t sub_266D27CFC()
{
  OUTLINED_FUNCTION_22_0();

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266D27D60(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_266D27DB8()
{
  OUTLINED_FUNCTION_6_22();
  v1(0);
  OUTLINED_FUNCTION_0();
  v2 = OUTLINED_FUNCTION_4_4();
  v3(v2);
  return v0;
}

uint64_t sub_266D27E10()
{
  OUTLINED_FUNCTION_6_22();
  v1(0);
  OUTLINED_FUNCTION_0();
  v2 = OUTLINED_FUNCTION_4_4();
  v3(v2);
  return v0;
}

unint64_t sub_266D27E6C()
{
  result = qword_2800CCC30;
  if (!qword_2800CCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCC30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LocationDescriptionType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_266D27F9C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_266D27FF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of DeviceLocationDescriptionProviding.notFoundNearbyDescription(device:deviceLocation:now:)()
{
  OUTLINED_FUNCTION_84();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v13 = (*(v1 + 16) + **(v1 + 16));
  v11 = swift_task_alloc();
  *(v0 + 16) = v11;
  *v11 = v0;
  v11[1] = sub_266D281E8;

  return v13(v10, v8, v6, v4, v2);
}

uint64_t sub_266D281E8()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v3 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;

  OUTLINED_FUNCTION_43_4();

  return v5(v2);
}

uint64_t sub_266D28318(uint64_t a1)
{
  result = sub_266C79A8C(319, &qword_2800CCC48, &protocol descriptor for PrefetchingUserLocationProviding);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FindMyFriendCATsSimple(319);
    if (v3 <= 0x3F)
    {
      result = sub_266DA750C();
      if (v4 <= 0x3F)
      {
        result = sub_266C29814(319, &qword_2800C9A80, 0x277CCABD8);
        if (v5 <= 0x3F)
        {
          result = sub_266C79A8C(319, &qword_2800CBBE0, &protocol descriptor for LocationGeocoding);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_266DA750C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_266DA750C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_266D28564(uint64_t a1)
{
  result = sub_266C79A8C(319, &qword_2800CCC48, &protocol descriptor for PrefetchingUserLocationProviding);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for FindDeviceAndPlaySoundCATsSimple(319);
    if (v3 <= 0x3F)
    {
      result = sub_266DA750C();
      if (v4 <= 0x3F)
      {
        result = sub_266C29814(319, &qword_2800C9A80, 0x277CCABD8);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_266D28638()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v3 = type metadata accessor for DeviceLocationDescriptionProvider(0);
  OUTLINED_FUNCTION_4_3(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_6_23(v6);
  *v7 = v8;
  v7[1] = sub_266C48BB4;

  return sub_266D25C44(v2, v0 + v5);
}

uint64_t sub_266D28704()
{
  OUTLINED_FUNCTION_34();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_6_23(v4);
  *v5 = v6;
  v5[1] = sub_266C48BB4;

  return sub_266D1EDE4(v2, v3);
}

uint64_t sub_266D287B0()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_23(v0);
  *v1 = v2;
  v1[1] = sub_266C48BB4;
  OUTLINED_FUNCTION_102();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_266D28864()
{
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_84();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_23(v0);
  *v1 = v2;
  v1[1] = sub_266C4716C;
  OUTLINED_FUNCTION_43_6();
  OUTLINED_FUNCTION_100();

  return sub_266D1F8CC(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_266D28920()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_50_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_10_17(v1);
  OUTLINED_FUNCTION_102();

  return sub_266D2016C(v3, v4, v5, v6);
}

uint64_t sub_266D289AC()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_50_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_10_17(v1);
  OUTLINED_FUNCTION_102();

  return sub_266D20950(v3, v4, v5, v6, v7);
}

unint64_t sub_266D28A38()
{
  result = qword_2800CCC70;
  if (!qword_2800CCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCC70);
  }

  return result;
}

uint64_t sub_266D28A8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266D28AF4()
{
  result = qword_2800CCC88;
  if (!qword_2800CCC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCC88);
  }

  return result;
}

uint64_t objectdestroy_42Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_62_4();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_266D28B84()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_50_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_10_17(v1);
  OUTLINED_FUNCTION_102();

  return sub_266D20074(v3, v4, v5, v6);
}

uint64_t sub_266D28C10()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_50_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_23(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_10_17(v1);
  OUTLINED_FUNCTION_102();

  return sub_266D20604(v3, v4, v5, v6, v7);
}

_BYTE *storeEnumTagSinglePayload for LocationDescriptionError(_BYTE *result, int a2, int a3)
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

uint64_t sub_266D28D70(uint64_t a1)
{
  sub_266D28E74(319, &qword_2800CA680, MEMORY[0x277D55C48]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_266D28E74(319, &qword_2800CCCD0, MEMORY[0x277D55B48]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_266D28E74(319, &qword_2800CCCD8, MEMORY[0x277D55B70]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_266D28E74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_266DAAC1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_266D28ECC()
{
  result = qword_2800CCCE0;
  if (!qword_2800CCCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCCE0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_39(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_25_11(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(v2, a2);

  return sub_266DA703C();
}

uint64_t OUTLINED_FUNCTION_41_3()
{
}

uint64_t OUTLINED_FUNCTION_44_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_45_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_47_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_58_2()
{
  *(v1 + 12) = 1024;
  *(v1 + 14) = v0 & 1;
  *(v1 + 18) = 2080;
  v4 = *(v2 - 136);

  return MEMORY[0x28211B6A8](v4);
}

uint64_t OUTLINED_FUNCTION_59_4()
{
}

uint64_t OUTLINED_FUNCTION_67_2()
{

  return sub_266D1CAC8();
}

uint64_t OUTLINED_FUNCTION_71_3()
{

  return sub_266D1CAC8();
}

uint64_t OUTLINED_FUNCTION_72_1(uint64_t a1)
{

  return sub_266DA703C();
}

BOOL OUTLINED_FUNCTION_79_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_98_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x1Cu);
}

uint64_t OUTLINED_FUNCTION_100_1()
{
}

uint64_t OUTLINED_FUNCTION_101_0(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v2;
  a1[5] = v1;
}

uint64_t OUTLINED_FUNCTION_102_1()
{

  return sub_266D1CAC8();
}

uint64_t OUTLINED_FUNCTION_103_1()
{
}

uint64_t OUTLINED_FUNCTION_104_2()
{

  return type metadata accessor for Address(0);
}

uint64_t OUTLINED_FUNCTION_107_2(uint64_t a1)
{

  return sub_266C1825C(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_108_2()
{

  return swift_slowAlloc();
}

uint64_t sub_266D2955C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = sub_266DA9A1C();
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  v7 = MEMORY[0x28223BE20](v6);
  v84 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCCE8, &qword_266DB8B28);
  v11 = OUTLINED_FUNCTION_4_3(v10);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v79 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  v18 = OUTLINED_FUNCTION_4_3(v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v79 - v19;
  v21 = sub_266DA9C4C();
  v22 = OUTLINED_FUNCTION_4_3(v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266DA746C();
  OUTLINED_FUNCTION_0_2();
  v86 = v26;
  v87 = v25;
  MEMORY[0x28223BE20](v25);
  v89 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC028, &qword_266DB59C8);
  v29 = OUTLINED_FUNCTION_4_3(v28);
  MEMORY[0x28223BE20](v29);
  v31 = &v79 - v30;
  v32 = sub_266DA9BCC();
  if (v32)
  {
    v33 = v32;
    v80 = v5;
    v85 = v20;
    sub_266DA9BAC();
    v34 = sub_266DA9EBC();
    if (__swift_getEnumTagSinglePayload(v31, 1, v34) == 1)
    {
      sub_266C47654(v31, &qword_2800CC028, &qword_266DB59C8);
      v35 = 0;
      v36 = 0;
      v37 = 255;
    }

    else
    {
      v41 = sub_266DA9EAC();
      v43 = v42;
      (*(*(v34 - 8) + 8))(v31, v34);
      v44._countAndFlagsBits = sub_266DAA73C();
      DefaultLocationLabel.init(rawValue:)(v44);
      v35 = v90;
      if (v90 == 5)
      {
        v45 = sub_266DAA73C();
        sub_266D91A18(v45, v46, &v90);

        v37 = v92;
        if (v92 == 255)
        {
          v37 = 1;
          v35 = v41;
          v36 = v43;
        }

        else
        {
          v35 = v90;
          v36 = v91;
        }
      }

      else
      {

        v36 = 0;
        v37 = 0;
      }
    }

    [v33 coordinate];
    v48 = v47;
    [v33 coordinate];
    v50 = v49;
    [v33 horizontalAccuracy];
    v52 = v51;
    [v33 verticalAccuracy];
    v54 = v53;
    v55 = [v33 timestamp];
    sub_266DA744C();

    if (v37 == 255)
    {
      v81 = 0;
      v82 = 0;
    }

    else
    {
      v90 = v35;
      v91 = v36;
      v92 = v37;
      v56 = LocationLabel.rawValue.getter();
      v81 = v57;
      v82 = v56;
      sub_266C23130(v35, v36, v37);
    }

    v58 = sub_266DA9B7C();
    if (v58 >= 6)
    {
      v60 = 0;
    }

    else
    {
      v60 = v58;
    }

    if (v59)
    {
      v61 = 6;
    }

    else
    {
      v61 = v60;
    }

    sub_266DA9B4C();
    sub_266CF6AD8(v24, &v90);
    v62 = v90;
    sub_266DA9BBC();
    sub_266D29C3C(v16, v14);
    v63 = 1;
    v64 = v88;
    if (__swift_getEnumTagSinglePayload(v14, 1, v88) != 1)
    {
      v65 = v80;
      v66 = v83;
      (*(v80 + 32))(v83, v14, v64);
      v67 = v84;
      (*(v65 + 16))(v84, v66, v64);
      sub_266C6E194(v67, v85);
      (*(v65 + 8))(v66, v64);
      v63 = 0;
    }

    sub_266C47654(v16, &qword_2800CCCE8, &qword_266DB8B28);
    v68 = type metadata accessor for Address(0);
    v69 = v85;
    __swift_storeEnumTagSinglePayload(v85, v63, 1, v68);

    sub_266DA9BDC();
    OUTLINED_FUNCTION_8_0();
    (*(v70 + 8))(a1);
    v71 = type metadata accessor for Location(0);
    v72 = v71[8];
    v73 = v71[9];
    *(a2 + v73) = 6;
    v74 = (a2 + v72);
    v75 = v71[10];
    *(a2 + v75) = 4;
    v76 = v71[11];
    __swift_storeEnumTagSinglePayload(a2 + v76, 1, 1, v68);
    *a2 = v48;
    *(a2 + 8) = v50;
    *(a2 + 16) = v52;
    *(a2 + 24) = v54;
    *(a2 + 32) = 0;
    (*(v86 + 32))(a2 + v71[7], v89, v87);
    v77 = v81;
    *v74 = v82;
    v74[1] = v77;
    *(a2 + v73) = v61;
    *(a2 + v75) = v62;
    sub_266C60554(v69, a2 + v76);
    v78 = (a2 + v71[12]);
    *v78 = 1701736302;
    v78[1] = 0xE400000000000000;
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v71);
  }

  else
  {
    sub_266DA9BDC();
    OUTLINED_FUNCTION_8_0();
    (*(v38 + 8))(a1);
    v39 = type metadata accessor for Location(0);

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v39);
  }
}

uint64_t sub_266D29C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCCE8, &qword_266DB8B28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266D29CB4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_266D29CF4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_266D29D64()
{
  v2 = v0;
  v3 = sub_266DA81AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_2800C93F8 != -1)
  {
    OUTLINED_FUNCTION_7_6(&qword_2800C93F8);
  }

  v7 = sub_266DA94AC();
  __swift_project_value_buffer(v7, qword_2800E64C0);
  v8 = sub_266DA948C();
  v9 = sub_266DAAB0C();
  if (os_log_type_enabled(v8, v9))
  {
    v1 = swift_slowAlloc();
    *v1 = 0;
    _os_log_impl(&dword_266C08000, v8, v9, "SetGeoFence.FlowStrategy.actionForInput() called", v1, 2u);
    OUTLINED_FUNCTION_6_1();
  }

  __swift_project_boxed_opaque_existential_1((v2 + 88), *(v2 + 112));
  sub_266DA816C();
  sub_266CD6764(v6, v29);
  (*(v4 + 8))(v6, v3);
  sub_266C6F230(v29, v27);
  if (v28 == 2)
  {
    sub_266C6F308(v27);
    sub_266C6F230(v29, v27);
    v10 = sub_266DA948C();
    v11 = sub_266DAAB0C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136315138;
      sub_266C6F230(v27, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA870, &qword_266DB1F08);
      sub_266DAA72C();
      OUTLINED_FUNCTION_8_16();
      v14 = sub_266C22A3C(v9, v1, &v26);

      *(v12 + 4) = v14;
      OUTLINED_FUNCTION_12_18(&dword_266C08000, v15, v16, "SetGeoFence.FlowStrategy.actionForInput() handling task: %s");
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      sub_266C3A088(v27, &qword_2800CA870, &qword_266DB1F08);
    }

    sub_266DA7CBC();
  }

  else
  {
    if (v28 == 255)
    {
      sub_266C3A088(v27, &qword_2800CA870, &qword_266DB1F08);
    }

    else
    {
      sub_266C6F308(v27);
    }

    sub_266C6F230(v29, v27);
    v17 = sub_266DA948C();
    v18 = sub_266DAAB0C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136315138;
      sub_266C6F230(v27, v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA870, &qword_266DB1F08);
      sub_266DAA72C();
      OUTLINED_FUNCTION_8_16();
      v21 = sub_266C22A3C(v9, v1, &v26);

      *(v19 + 4) = v21;
      OUTLINED_FUNCTION_12_18(&dword_266C08000, v22, v23, "SetGeoFence.FlowStrategy.actionForInput() ignoring unsupported task: %s");
      __swift_destroy_boxed_opaque_existential_0(v20);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {

      sub_266C3A088(v27, &qword_2800CA870, &qword_266DB1F08);
    }

    sub_266DA7CCC();
  }

  return sub_266C3A088(v29, &qword_2800CA870, &qword_266DB1F08);
}

uint64_t sub_266D2A198()
{
  OUTLINED_FUNCTION_22_0();
  v1[20] = v2;
  v1[21] = v0;
  v1[19] = v3;
  v4 = sub_266DA750C();
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D2A258);
}

uint64_t sub_266D2A258()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 152);
  __swift_project_boxed_opaque_existential_1((*(v0 + 168) + 88), *(*(v0 + 168) + 112));
  sub_266CD6764(v2, v0 + 16);
  if (v1)
  {
    v3 = *(v0 + 160);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for SetGeoFenceIntent()) init];
  }

  sub_266C6F230(v0 + 16, v0 + 64);
  v4 = *(v0 + 104);
  if (v4 == 2)
  {
    v7 = *(v0 + 184);
    v6 = *(v0 + 192);
    v9 = *(v0 + 168);
    v8 = *(v0 + 176);
    v10 = *(v0 + 160);
    sub_266C0B0D8((v0 + 64), v0 + 112);
    __swift_project_boxed_opaque_existential_1(v9 + 1, v9[4]);
    v11 = v10;
    sub_266DA7AFC();
    v12 = __swift_project_boxed_opaque_existential_1(v9 + 6, v9[9]);
    sub_266D2AAF8((v0 + 112), v12, v6, v3);
    (*(v7 + 8))(v6, v8);
    if (qword_2800C93F8 != -1)
    {
      OUTLINED_FUNCTION_7_6(&qword_2800C93F8);
    }

    v13 = sub_266DA94AC();
    __swift_project_value_buffer(v13, qword_2800E64C0);
    v14 = v3;
    v15 = sub_266DA948C();
    v16 = sub_266DAAB0C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v18 = v14;
      v19 = v14;
      _os_log_impl(&dword_266C08000, v15, v16, "SetGeoFence Intent created: %@", v17, 0xCu);
      sub_266C3A088(v18, &qword_2800C9F78, &unk_266DB1430);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 112));
    sub_266C3A088(v0 + 16, &qword_2800CA870, &qword_266DB1F08);

    OUTLINED_FUNCTION_43_4();

    return v20(v14);
  }

  else
  {
    if (v4 == 255)
    {
      v5 = *(v0 + 160);
      sub_266C3A088(v0 + 64, &qword_2800CA870, &qword_266DB1F08);
    }

    else
    {
      v22 = *(v0 + 160);
      sub_266C6F308(v0 + 64);
    }

    sub_266C55488();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();

    sub_266C3A088(v0 + 16, &qword_2800CA870, &qword_266DB1F08);

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_266D2A5A4()
{
  OUTLINED_FUNCTION_22_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_266DA7A4C();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266D2A664);
}

uint64_t sub_266D2A664()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  v5 = **(v0 + 32);
  type metadata accessor for SetGeoFenceIntent();

  v6 = v5;
  v7 = v4;
  sub_266DA7A3C();
  sub_266DA7A9C();
  v8 = sub_266DA7A8C();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43_4();

  return v9(v8);
}

uint64_t sub_266D2A754()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DB8B30;
  sub_266DA7A7C();
  swift_allocObject();
  *(v0 + 32) = sub_266DA7A6C();
  swift_allocObject();
  *(v0 + 40) = sub_266DA7A6C();
  return v0;
}

uint64_t sub_266D2A82C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266D02CA0;

  return sub_266D2A198();
}

uint64_t sub_266D2A8E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266D03318;

  return sub_266D2A5A4();
}

unint64_t sub_266D2A990()
{
  result = qword_2800CCCF0;
  if (!qword_2800CCCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCCF0);
  }

  return result;
}

unint64_t sub_266D2A9E8()
{
  result = qword_2800CCCF8;
  if (!qword_2800CCCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCCF8);
  }

  return result;
}

unint64_t sub_266D2AA40()
{
  result = qword_2800CCD00;
  if (!qword_2800CCD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCD00);
  }

  return result;
}

void sub_266D2AA94(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_266DAA6FC();

  [a3 setLabel_];
}

uint64_t sub_266D2AAF8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA8C8, &unk_266DB2130);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800C95E0, &unk_266DAE370);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v45 - v12;
  v14 = sub_266DA8C4C();
  v51 = v14;
  v52 = &off_28785D468;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, a2, v14);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 8))(v16, v17);
  v18 = sub_266DA8D0C();
  if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
  {
    sub_266C3A088(v13, &unk_2800C95E0, &unk_266DAE370);
  }

  else
  {
    v19 = __swift_project_boxed_opaque_existential_1(v50, v51);
    v20 = sub_266D03560(a4, v19, a3, v13);
    (*(*(v18 - 8) + 8))(v13, v18);
    if (v20)
    {
      type metadata accessor for INFriend();
      v21 = type metadata accessor for Friend(0);
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v21);
      v22 = sub_266C6FCE0(v20, v10);
      goto LABEL_6;
    }
  }

  v22 = 0;
LABEL_6:
  [a4 setFriend_];

  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v23);
  v25 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [a4 setNotifyMe_];

  v26 = a1[3];
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [a4 setNotifyOnce_];

  v29 = a1[3];
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v29);
  [a4 setAction_];
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v31);
  [a4 setTrigger_];
  type metadata accessor for SpeakableLocation();
  v33 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v34 = sub_266CAB33C(0, 0, 0);
  [a4 setLocation_];

  v35 = [a4 location];
  if (v35)
  {
    v36 = v35;
    v37 = a1[3];
    v38 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v37);
    (*(v38 + 48))(&v47, v37, v38);
    v39 = v47;
    v40 = v48;
    LOBYTE(v38) = v49;
    v45[1] = v47;
    v45[2] = v48;
    v46 = v49;
    v41 = LocationLabel.rawValue.getter();
    v43 = v42;
    sub_266C17E24(v39, v40, v38);
    sub_266D2AA94(v41, v43, v36);
  }

  return __swift_destroy_boxed_opaque_existential_0(v50);
}

uint64_t sub_266D2AF8C(char a1)
{
  if (a1 == 2)
  {
    if (qword_2800C9110 != -1)
    {
      swift_once();
    }

    v1 = sub_266DA94AC();
    __swift_project_value_buffer(v1, &unk_2800E61A8);
    v2 = sub_266DA948C();
    v3 = sub_266DAAB0C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315394;
      *(v4 + 4) = sub_266C22A3C(7104878, 0xE300000000000000, &v9);
      *(v4 + 12) = 1024;
      *(v4 + 14) = 1;
      _os_log_impl(&dword_266C08000, v2, v3, "Location Permission guard skipped. { requiredPrecision: %s, supportedPlatform: %{BOOL}d }", v4, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x26D5F2480](v5, -1, -1);
      MEMORY[0x26D5F2480](v4, -1, -1);
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCD08, &qword_266DB8CD8);
    v7 = sub_266D2B318();

    return MEMORY[0x2821BA320](sub_266C34AA0, 0, v6, v7);
  }

  else
  {

    return sub_266D2B15C(a1);
  }
}

uint64_t sub_266D2B15C(char a1)
{
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, &unk_2800E61A8);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315394;
    v7 = 0x657372616F63;
    if (a1)
    {
      v7 = 0x65736963657270;
    }

    v8 = 0xE600000000000000;
    if (a1)
    {
      v8 = 0xE700000000000000;
    }

    if (a1 == 2)
    {
      v9 = 7104878;
    }

    else
    {
      v9 = v7;
    }

    if (a1 == 2)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = v8;
    }

    v11 = sub_266C22A3C(v9, v10, &v13);

    *(v5 + 4) = v11;
    *(v5 + 12) = 1024;
    *(v5 + 14) = 1;
    _os_log_impl(&dword_266C08000, v3, v4, "Location Permission guard applied. { requiredPrecision: %s, supportedPlatform: %{BOOL}d }", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x26D5F2480](v6, -1, -1);
    MEMORY[0x26D5F2480](v5, -1, -1);
  }

  return MEMORY[0x2821BA2C0](a1 & 1);
}

unint64_t sub_266D2B318()
{
  result = qword_2800CCD10;
  if (!qword_2800CCD10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CCD08, &qword_266DB8CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCD10);
  }

  return result;
}

uint64_t static FMFPunchOutProvider.getPunchOurURL(friendId:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_266DA737C();
  OUTLINED_FUNCTION_0_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_44();
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  if (qword_2800C94A0 != -1)
  {
    OUTLINED_FUNCTION_0_63(&qword_2800C94A0);
  }

  __swift_project_value_buffer(v10, qword_2800E6560);
  v17 = OUTLINED_FUNCTION_2_47();
  v4(v17);
  (v4)(v3, v16, v10);
  if (a2)
  {

    sub_266DA733C();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v18, 1, v10);
  v19 = *(v12 + 8);
  v19(v3, v10);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    (*(v12 + 32))(a3, v16, v10);
    result = __swift_getEnumTagSinglePayload(v9, 1, v10);
    if (result != 1)
    {
      return sub_266C2A858(v9);
    }
  }

  else
  {
    v19(v16, v10);
    return (*(v12 + 32))(a3, v9, v10);
  }

  return result;
}

id sub_266D2B5D0(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_266DA737C();
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_44();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  if (qword_2800C94A0 != -1)
  {
    OUTLINED_FUNCTION_0_63(&qword_2800C94A0);
  }

  __swift_project_value_buffer(v8, qword_2800E6560);
  v18 = OUTLINED_FUNCTION_2_47();
  v3(v18);
  (v3)(v2, v15, v8);
  if (a2)
  {

    sub_266DA733C();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v19, 1, v8);
  v20 = *(v10 + 8);
  v20(v2, v8);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    (*(v10 + 32))(v17, v15, v8);
    if (__swift_getEnumTagSinglePayload(v7, 1, v8) != 1)
    {
      sub_266C2A858(v7);
    }
  }

  else
  {
    v20(v15, v8);
    (*(v10 + 32))(v17, v7, v8);
  }

  v21 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v22 = sub_266DA732C();
  [v21 setPunchOutUri_];

  v20(v17, v8);
  return v21;
}

_BYTE *storeEnumTagSinglePayload for FMFPunchOutProvider(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_0_63(uint64_t a1)
{

  return swift_once();
}

uint64_t Snippets.SetGeoFenceConfirmation.init(contact:notifyTitle:notifyMessage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_266D2B9FC(a1, a6);
  result = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
  v12 = (a6 + *(result + 20));
  *v12 = a2;
  v12[1] = a3;
  v13 = (a6 + *(result + 24));
  *v13 = a4;
  v13[1] = a5;
  return result;
}

uint64_t sub_266D2B9FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippets.Contact(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for Snippets.SetGeoFenceConfirmation(uint64_t a1)
{
  result = qword_2800CCD40;
  if (!qword_2800CCD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266D2BAE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippets.Contact(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Snippets.SetGeoFenceConfirmation.notifyTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for Snippets.SetGeoFenceConfirmation(0) + 20));

  return v1;
}

uint64_t Snippets.SetGeoFenceConfirmation.notifyTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Snippets.SetGeoFenceConfirmation(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Snippets.SetGeoFenceConfirmation.notifyTitle.modify())()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Snippets.SetGeoFenceConfirmation(v0);
  return nullsub_1;
}

uint64_t Snippets.SetGeoFenceConfirmation.notifyMessage.getter()
{
  v1 = *(v0 + *(type metadata accessor for Snippets.SetGeoFenceConfirmation(0) + 24));

  return v1;
}

uint64_t Snippets.SetGeoFenceConfirmation.notifyMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Snippets.SetGeoFenceConfirmation(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Snippets.SetGeoFenceConfirmation.notifyMessage.modify())()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Snippets.SetGeoFenceConfirmation(v0);
  return nullsub_1;
}

uint64_t static Snippets.SetGeoFenceConfirmation.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for Snippets.Contact(0);
  if ((sub_266DA748C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_64(*(v6 + 28));
  v9 = v4 && v7 == v8;
  if (!v9 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  v10 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
  OUTLINED_FUNCTION_0_64(*(v10 + 20));
  v13 = v4 && v11 == v12;
  if (!v13 && (sub_266DAB17C() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_0_64(*(v10 + 24));
  if (v4 && v14 == v15)
  {
    return 1;
  }

  return sub_266DAB17C();
}

uint64_t sub_266D2BE18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746361746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6954796669746F6ELL && a2 == 0xEB00000000656C74;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x654D796669746F6ELL && a2 == 0xED00006567617373)
    {

      return 2;
    }

    else
    {
      v8 = sub_266DAB17C();

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

uint64_t sub_266D2BF34(char a1)
{
  if (!a1)
  {
    return 0x746361746E6F63;
  }

  if (a1 == 1)
  {
    return 0x6954796669746F6ELL;
  }

  return 0x654D796669746F6ELL;
}

uint64_t sub_266D2BFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D2BE18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D2BFD0(uint64_t a1)
{
  v2 = sub_266D2C21C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D2C00C(uint64_t a1)
{
  v2 = sub_266D2C21C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippets.SetGeoFenceConfirmation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCD18, &qword_266DB8D00);
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D2C21C();
  sub_266DAB36C();
  v12[15] = 0;
  type metadata accessor for Snippets.Contact(0);
  OUTLINED_FUNCTION_1_45();
  sub_266D2C6E4(v9, v10, &protocol conformance descriptor for Snippets.Contact);
  sub_266DAB11C();
  if (!v1)
  {
    type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
    v12[14] = 1;
    sub_266DAB0EC();
    v12[13] = 2;
    sub_266DAB0EC();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_266D2C21C()
{
  result = qword_2800CCD20;
  if (!qword_2800CCD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCD20);
  }

  return result;
}

uint64_t Snippets.SetGeoFenceConfirmation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25[0] = a2;
  type metadata accessor for Snippets.Contact(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  v26 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCD28, &qword_266DB8D08);
  OUTLINED_FUNCTION_0_2();
  v25[1] = v7;
  v25[2] = v6;
  MEMORY[0x28223BE20](v6);
  v8 = type metadata accessor for Snippets.SetGeoFenceConfirmation(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D2C21C();
  sub_266DAB34C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v29 = 0;
  OUTLINED_FUNCTION_1_45();
  sub_266D2C6E4(v12, v13, &protocol conformance descriptor for Snippets.Contact);
  sub_266DAB05C();
  sub_266D2B9FC(v26, v11);
  v28 = 1;
  v14 = sub_266DAB01C();
  v15 = &v11[*(v8 + 20)];
  *v15 = v14;
  v15[1] = v16;
  v27 = 2;
  v17 = sub_266DAB01C();
  v26 = v18;
  v19 = v17;
  v20 = OUTLINED_FUNCTION_2_48();
  v21(v20);
  v22 = &v11[*(v8 + 24)];
  v23 = v26;
  *v22 = v19;
  *(v22 + 1) = v23;
  sub_266D2C5A0(v11, v25[0], type metadata accessor for Snippets.SetGeoFenceConfirmation);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_266D2C600();
}

uint64_t sub_266D2C5A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266D2C600()
{
  v1 = OUTLINED_FUNCTION_7_8();
  v2(v1);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_266D2C6E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266D2C788(uint64_t a1)
{
  result = type metadata accessor for Snippets.Contact(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s23SetGeoFenceConfirmationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D2C8E4()
{
  result = qword_2800CCD50;
  if (!qword_2800CCD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCD50);
  }

  return result;
}

unint64_t sub_266D2C93C()
{
  result = qword_2800CCD58;
  if (!qword_2800CCD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCD58);
  }

  return result;
}

unint64_t sub_266D2C994()
{
  result = qword_2800CCD60;
  if (!qword_2800CCD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCD60);
  }

  return result;
}

uint64_t sub_266D2CA28@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  OUTLINED_FUNCTION_4_3(v8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = sub_266DA716C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_266DA715C();
    sub_266DA714C();
    if (a3)
    {
      MEMORY[0x26D5EDA90](0x72756769666E6F63, 0xE900000000000065);
      v27 = 47;
      v28 = 0xE100000000000000;
      MEMORY[0x26D5F1170](a1, a2);
      v16 = v27;
      v17 = v28;
    }

    else
    {
      MEMORY[0x26D5EDA90](0x737361707962, 0xE600000000000000);
      v17 = 0xE700000000000000;
      v16 = 0x6563697665642FLL;
    }

    MEMORY[0x26D5EDAA0](v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA758, &qword_266DB1980);
    sub_266DA70FC();
    *(swift_allocObject() + 16) = xmmword_266DAE4A0;
    sub_266DA70EC();
    sub_266DA710C();
    sub_266DA711C();
    v22 = sub_266DA737C();
    OUTLINED_FUNCTION_1_46(v11);
    if (v23)
    {
      if (a3)
      {
        if (qword_2800C93A0 != -1)
        {
          swift_once();
        }

        v24 = qword_2800E6408;
      }

      else
      {
        if (qword_2800C93A8 != -1)
        {
          swift_once();
        }

        v24 = qword_2800E6420;
      }

      __swift_project_value_buffer(v22, v24);
      OUTLINED_FUNCTION_0_65();
      (*(v26 + 16))(a4);
      (*(v13 + 8))(v15, v12);
      result = OUTLINED_FUNCTION_1_46(v11);
      if (!v23)
      {
        return sub_266C2A858(v11);
      }
    }

    else
    {
      (*(v13 + 8))(v15, v12);
      OUTLINED_FUNCTION_0_65();
      return (*(v25 + 32))(a4, v11, v22);
    }
  }

  else
  {
    if (qword_2800C9398 != -1)
    {
      swift_once();
    }

    v18 = sub_266DA737C();
    __swift_project_value_buffer(v18, qword_2800E63F0);
    OUTLINED_FUNCTION_0_65();
    v20 = *(v19 + 16);

    return v20(a4);
  }

  return result;
}

uint64_t sub_266D2CE90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_266DA737C();
  __swift_allocate_value_buffer(v3, qword_2800E63F0);
  v4 = __swift_project_value_buffer(v3, qword_2800E63F0);
  sub_266DA736C();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_266D2CFBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  OUTLINED_FUNCTION_4_3(v1);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_3_40();
  __swift_allocate_value_buffer(v3, qword_2800E6420);
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_5_33();
  sub_266DA736C();
  result = OUTLINED_FUNCTION_1_46(v0);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_65();
    v6 = OUTLINED_FUNCTION_2_49();
    return v7(v6);
  }

  return result;
}

uint64_t sub_266D2D09C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  OUTLINED_FUNCTION_4_3(v5);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_3_40();
  __swift_allocate_value_buffer(v7, a2);
  OUTLINED_FUNCTION_4_38();
  sub_266DA736C();
  result = OUTLINED_FUNCTION_1_46(v3);
  if (v9)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_65();
    v10 = OUTLINED_FUNCTION_2_49();
    return v11(v10);
  }

  return result;
}

uint64_t sub_266D2D168()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  OUTLINED_FUNCTION_4_3(v1);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_3_40();
  __swift_allocate_value_buffer(v3, qword_2800E6450);
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_5_33();
  sub_266DA736C();
  result = OUTLINED_FUNCTION_1_46(v0);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_65();
    v6 = OUTLINED_FUNCTION_2_49();
    return v7(v6);
  }

  return result;
}

uint64_t sub_266D2D230()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  OUTLINED_FUNCTION_4_3(v1);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_3_40();
  __swift_allocate_value_buffer(v3, qword_2800E6468);
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_5_33();
  sub_266DA736C();
  result = OUTLINED_FUNCTION_1_46(v0);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_65();
    v6 = OUTLINED_FUNCTION_2_49();
    return v7(v6);
  }

  return result;
}

uint64_t sub_266D2D2F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9C48, &unk_266DAEBA0);
  OUTLINED_FUNCTION_4_3(v1);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v2);
  v3 = OUTLINED_FUNCTION_3_40();
  __swift_allocate_value_buffer(v3, qword_2800E6480);
  OUTLINED_FUNCTION_4_38();
  OUTLINED_FUNCTION_5_33();
  sub_266DA736C();
  result = OUTLINED_FUNCTION_1_46(v0);
  if (v5)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_0_65();
    v6 = OUTLINED_FUNCTION_2_49();
    return v7(v6);
  }

  return result;
}

uint64_t sub_266D2D3C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = sub_266C1CEB4(a1);
    v5 = v4;
    LOBYTE(a1) = sub_266CC7C44();
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  sub_266D2CA28(v3, v5, a1 & 1, a2);

  v6 = sub_266DA737C();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v6);
}

uint64_t OUTLINED_FUNCTION_3_40()
{

  return sub_266DA737C();
}

BOOL sub_266D2D4E0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL sub_266D2D590(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5, a2);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_266D2D5F0()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CCD68);
  v1 = __swift_project_value_buffer(v0, qword_2800CCD68);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266D2D6B8(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return sub_266D2E454(a1);
  }
}

uint64_t sub_266D2D6E0()
{
  if (v0[2])
  {
    v1 = v0[2];
  }

  else
  {
    v2 = v0[7];
    v3 = v0[8];
    __swift_project_boxed_opaque_existential_1(v0 + 4, v2);
    v1 = (*(v3 + 8))(v2, v3);
    v0[2] = v1;
  }

  return v1;
}

uint64_t sub_266D2D76C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_266D2E6E8();
    v1 = v2;
    *(v0 + 24) = v2;
  }

  return v1;
}

void *sub_266D2D7C8@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  v5 = sub_266D2D6E0();
  if (*(v5 + 16) && (v6 = sub_266D99E08(a1), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 248 * v6);
    memcpy(__dst, v8, 0xF2uLL);
    memmove(__src, v8, 0xF2uLL);
    nullsub_1();
    sub_266CFBD3C(__dst, v12);

    memcpy(v12, __src, 0xF2uLL);
  }

  else
  {

    sub_266C9D234(v12);
  }

  return memcpy(a3, v12, 0xF2uLL);
}

void sub_266D2D8A4()
{
  OUTLINED_FUNCTION_6();
  v95 = v2;
  v93 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC030, &qword_266DB59D0);
  MEMORY[0x28223BE20](v4 - 8);
  *&v105 = &v92 - v5;
  v6 = sub_266D2D6E0() + 64;
  OUTLINED_FUNCTION_5_34();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v110 = v12;

  v13 = 0;
  v94 = 0;
  v108 = v11;
  v109 = MEMORY[0x277D84F90];
LABEL_2:
  if (v9)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      OUTLINED_FUNCTION_2_50(&qword_2800C93D0);
LABEL_48:
      v65 = sub_266DA94AC();
      __swift_project_value_buffer(v65, qword_2800CCD68);
      sub_266C233D0(v95, v111);
      v66 = v106;

      v67 = sub_266DA948C();
      v68 = sub_266DAAB0C();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        *&v112[0] = v109;
        *v69 = 136315650;
        *(v69 + 4) = sub_266C22A3C(v0, v66, v112);
        *(v69 + 12) = 2080;
        *v116 = v1;
        *&v116[8] = v110;
        v70 = sub_266DAA72C();
        v72 = sub_266C22A3C(v70, v71, v112);

        *(v69 + 14) = v72;
        *(v69 + 22) = 2080;
        __swift_project_boxed_opaque_existential_1(v111, v111[3]);
        v73 = sub_266CDA8CC();
        v75 = v74;
        __swift_destroy_boxed_opaque_existential_0(v111);
        v76 = sub_266C22A3C(v73, v75, v112);

        *(v69 + 24) = v76;
        _os_log_impl(&dword_266C08000, v67, v68, "Selected semantic %s with matchType '%s' for device %s", v69, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_1();
        OUTLINED_FUNCTION_6_1();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_0(v111);
      }

      v86 = v115;
      OUTLINED_FUNCTION_17_22();
      *&v112[0] = v0;
      *(&v112[0] + 1) = v66;
      LOBYTE(v112[1]) = v97;
      BYTE1(v112[1]) = v98;
      *(&v112[2] + 8) = v100;
      *(&v112[1] + 8) = v99;
      *(&v112[4] + 8) = v102;
      *(&v112[3] + 8) = v101;
      BYTE8(v112[5]) = v86;
      BYTE9(v112[5]) = v103;
      BYTE10(v112[5]) = v104;
      v112[6] = v105;
      v112[7] = v107;
      *&v112[8] = v108;
      nullsub_1();
      v87 = OUTLINED_FUNCTION_8_18();
      memcpy(v87, v88, 0x102uLL);
      v89 = v93;
      goto LABEL_58;
    }

    if (v14 >= v11)
    {
      break;
    }

    v9 = *(v6 + 8 * v14);
    ++v13;
    if (v9)
    {
      v13 = v14;
LABEL_7:
      OUTLINED_FUNCTION_1_47();
      v16 = v15 | (v13 << 6);
      v17 = (*(v110 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      memcpy(v116, (*(v110 + 56) + 248 * v16), 0xF2uLL);
      v106 = v19;
      *&v118[0] = v19;
      *(&v118[0] + 1) = v18;
      memcpy(&v118[1], v116, 0xF2uLL);
      v20 = *&v116[56];
      *&v107 = v18;
      if (*&v116[56])
      {
        v21 = v95[3];
        v1 = v95[4];
        __swift_project_boxed_opaque_existential_1(v95, v21);
        v22 = *(v1 + 72);

        v23 = OUTLINED_FUNCTION_8_18();
        sub_266CFBD3C(v23, v24);
        v25 = v22(v21, v1);
        v0 = &v92;
        *&v112[0] = v25;
        *(&v112[0] + 1) = v26;
        MEMORY[0x28223BE20](v25);
        v90 = v112;
        v27 = v94;
        LOBYTE(v21) = sub_266D2D4E0(sub_266CAB4BC, (&v92 - 4), v20);
        v94 = v27;

        if (v21)
        {
          v28 = v116[0];
          v29 = *(v20 + 16);
          v30 = 0x4000000000000000;
          goto LABEL_18;
        }
      }

      else
      {

        v31 = OUTLINED_FUNCTION_8_18();
        sub_266CFBD3C(v31, v32);
      }

      if ((v116[72] & 1) == 0)
      {
        v33 = *&v116[64];
        v34 = v95[3];
        v35 = v95[4];
        __swift_project_boxed_opaque_existential_1(v95, v34);
        v36 = (*(v35 + 56))(v34, v35);
        if ((v37 & 1) == 0 && v33 == v36)
        {
          v29 = 0;
          v43 = v116[0] & 1;
LABEL_20:
          v44 = v107;

          v45 = OUTLINED_FUNCTION_8_18();
          sub_266CFBD3C(v45, v46);
          sub_266C3A088(v118, &qword_2800CCD80, &qword_266DB8F58);
          memcpy(v112, v116, 0xF2uLL);
          v0 = v44;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_11_23();
            sub_266CFA69C();
            v109 = v51;
          }

          v47 = v109[2];
          if (v47 >= v109[3] >> 1)
          {
            sub_266CFA69C();
            v109 = v52;
          }

          v48 = v109;
          v109[2] = v47 + 1;
          v49 = &v48[35 * v47];
          v49[4] = v106;
          v49[5] = v0;
          memcpy(v49 + 6, v112, 0xF2uLL);
          v50 = WORD2(v111[0]);
          *(v49 + 290) = v111[0];
          *(v49 + 147) = v50;
          v49[37] = v43;
          v49[38] = v29;
          v11 = v108;
          goto LABEL_2;
        }
      }

      if (*&v116[48])
      {
        v112[0] = *&v116[40];
        v38 = v95[3];
        v1 = v95[4];
        __swift_project_boxed_opaque_existential_1(v95, v38);
        v0 = *(v1 + 64);

        v111[0] = (v0)(v38, v1);
        v111[1] = v39;
        v40 = sub_266DA750C();
        v41 = v105;
        __swift_storeEnumTagSinglePayload(v105, 1, 1, v40);
        v90 = sub_266C680F8();
        v91 = v90;
        v42 = sub_266DAACAC();
        sub_266C3A088(v41, &qword_2800CC030, &qword_266DB59D0);

        if (!v42)
        {
          v29 = 0;
          v28 = v116[0];
          v30 = 0x8000000000000000;
LABEL_18:
          v43 = v30 & 0xFFFFFFFFFFFFFFFELL | v28 & 1;
          goto LABEL_20;
        }
      }

      sub_266C3A088(v118, &qword_2800CCD80, &qword_266DB8F58);
      v11 = v108;
      goto LABEL_2;
    }
  }

  v53 = v109;
  v96 = v109[2];
  if (v96)
  {
    memcpy(v118, v109 + 4, 0x118uLL);
    v110 = *&v118[17];
    v106 = *(&v118[0] + 1);
    v54 = *&v118[0];
    v55 = *(&v118[16] + 1);
    v108 = *&v118[8];
    v107 = v118[7];
    v105 = v118[6];
    v103 = BYTE9(v118[5]);
    v104 = BYTE10(v118[5]);
    v56 = BYTE8(v118[5]);
    OUTLINED_FUNCTION_7_27(v118);
    v97 = LOBYTE(v118[1]);
    v98 = BYTE1(v118[1]);
    sub_266D2F478(v118, v116);
    memcpy(v117, &v118[8] + 8, sizeof(v117));
    v57 = 1;
    v58 = 32;
    v92 = 32;
    while (2)
    {
      v1 = v55;
      v59 = v55 & 0xC000000000000000;
      v60 = v55 >> 62;
      v61 = v58 + 280 * v57;
      v62 = v56 & 1;
LABEL_28:
      v115 = v62;
      v0 = v54;
      if (v96 == v57)
      {

        if (qword_2800C93D0 == -1)
        {
          goto LABEL_48;
        }

        goto LABEL_61;
      }

      *&v112[0] = v54;
      *(&v112[0] + 1) = v106;
      LOBYTE(v112[1]) = v97;
      BYTE1(v112[1]) = v98;
      *(&v112[1] + 8) = v99;
      *(&v112[2] + 8) = v100;
      *(&v112[3] + 8) = v101;
      *(&v112[4] + 8) = v102;
      BYTE8(v112[5]) = v115;
      BYTE9(v112[5]) = v103;
      BYTE10(v112[5]) = v104;
      v112[6] = v105;
      v112[7] = v107;
      *&v112[8] = v108;
      OUTLINED_FUNCTION_17_22();
      v113 = v1;
      v114 = v110;
      if (v57 >= v53[2])
      {
        goto LABEL_60;
      }

      memcpy(v116, v53 + v61, sizeof(v116));
      v55 = *&v116[264];
      v63 = *&v116[272];
      if (*&v116[264] >> 62)
      {
        if (*&v116[264] >> 62 == 1)
        {
          if (v59 == 0x4000000000000000)
          {
            if (((*&v116[264] ^ v1) & 1) == 0)
            {
              if (*&v116[272] < v110)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            }

            goto LABEL_40;
          }

          v64 = 1;
LABEL_44:
          if (v64 < v60)
          {
LABEL_46:
            sub_266D2F478(v116, v111);
            sub_266C3A088(v112, &qword_2800CC850, &unk_266DB6C20);
            v54 = *v116;
            v106 = *&v116[8];
            v108 = *&v116[128];
            v107 = *&v116[112];
            v105 = *&v116[96];
            v103 = v116[89];
            v104 = v116[90];
            v56 = v116[88];
            OUTLINED_FUNCTION_7_27(v116);
            v97 = v116[16];
            v98 = v116[17];
            memcpy(v117, &v116[136], sizeof(v117));
            ++v57;
            v110 = v63;
            v53 = v109;
            v58 = v92;
            continue;
          }

          goto LABEL_45;
        }

        if (v59 != 0x8000000000000000)
        {
          v64 = 2;
          goto LABEL_44;
        }
      }

      else if (v60)
      {
        v64 = 0;
        goto LABEL_44;
      }

      break;
    }

    if (((*&v116[264] ^ v1) & 1) == 0)
    {
LABEL_45:
      v61 += 280;
      ++v57;
      v53 = v109;
      goto LABEL_28;
    }

LABEL_40:
    if (v116[264])
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (qword_2800C93D0 != -1)
  {
    OUTLINED_FUNCTION_2_50(&qword_2800C93D0);
  }

  v77 = sub_266DA94AC();
  __swift_project_value_buffer(v77, qword_2800CCD68);
  sub_266C233D0(v95, v118);
  v78 = sub_266DA948C();
  v79 = sub_266DAAAFC();
  if (os_log_type_enabled(v78, v79))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *v116 = v81;
    *v80 = 136315138;
    __swift_project_boxed_opaque_existential_1(v118, *(&v118[1] + 1));
    v82 = sub_266CDA8CC();
    v84 = v83;
    __swift_destroy_boxed_opaque_existential_0(v118);
    v85 = sub_266C22A3C(v82, v84, v116);

    *(v80 + 4) = v85;
    _os_log_impl(&dword_266C08000, v78, v79, "Could not find a mapping for device: %s", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);
    OUTLINED_FUNCTION_6_1();
    OUTLINED_FUNCTION_6_1();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v118);
  }

  v89 = v93;
  sub_266D2F4E8(v116);
LABEL_58:
  memcpy(v89, v116, 0x102uLL);
  OUTLINED_FUNCTION_5();
}

void sub_266D2E318()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  sub_266D2D8A4();
  if (sub_266D2F434(__src) == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  else
  {
    memcpy(__dst, __src, 0x102uLL);
    v5 = __dst[1];
    v11 = __dst[16];
    if (__dst[16])
    {
      v18 = __dst[15];

      v5 = v11;
    }

    else
    {
      v18 = __dst[0];
    }

    v6 = __dst[5];
    v7 = __dst[6];
    v12 = v1[3];
    v13 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v12);
    v14 = *(v13 + 56);

    v15 = v14(v12, v13);
    v8 = sub_266D2D6B8(v15, v16 & 1);
    v9 = v17;
    sub_266C9D124(&__dst[2]);
    v10 = BYTE1(__dst[11]) & 1 | ((BYTE2(__dst[11]) & 1) << 8);
    v4 = v18;
  }

  *v3 = v4;
  *(v3 + 8) = v5;
  *(v3 + 16) = v6;
  *(v3 + 24) = v7;
  *(v3 + 32) = v8;
  *(v3 + 40) = v9;
  *(v3 + 48) = v10;
  OUTLINED_FUNCTION_5();
}

uint64_t sub_266D2E454(uint64_t a1)
{
  v2 = sub_266D2D76C();
  if (*(v2 + 16) && (v3 = sub_266D99F28(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 16 * v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_266D2E4C8()
{
  OUTLINED_FUNCTION_6();
  v1 = v0;
  v3 = v2;
  v4 = sub_266D2D6E0();
  v5 = v4;
  v6 = 0;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v4 + 64;
  v10 = v8 & *(v4 + 64);
  v11 = (v7 + 63) >> 6;
  while (v10)
  {
LABEL_9:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = *(v5 + 56) + 248 * (v13 | (v6 << 6));
    v15 = *(v14 + 88);
    if (v15)
    {
      v16 = *(v14 + 80) == v3 && v15 == v1;
      if (v16 || (sub_266DAB17C() & 1) != 0)
      {
LABEL_15:

        OUTLINED_FUNCTION_5();
        return;
      }
    }
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_15;
    }

    v10 = *(v9 + 8 * v12);
    ++v6;
    if (v10)
    {
      v6 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_266D2E5D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_266D2D6E0();
  if (*(v3 + 16) && (v4 = sub_266D99E08(a1), (v5 & 1) != 0))
  {
    v6 = (*(v3 + 56) + 248 * v4);
    memcpy(__dst, v6, 0xF2uLL);
    memmove(__src, v6, 0xF2uLL);
    sub_266CFBD3C(__dst, v9);

    nullsub_1();
  }

  else
  {

    sub_266C9D234(__src);
  }

  memcpy(__dst, __src, 0xF2uLL);
  if (sub_266C9D0E0(__dst) == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = __src[8];
  }

  memcpy(v9, __src, 0xF2uLL);
  sub_266C3A088(v9, &unk_2800CAF18, &qword_266DB8F70);
  return v7;
}

void sub_266D2E6E8()
{
  OUTLINED_FUNCTION_6();
  v0 = sub_266D2D6E0();
  OUTLINED_FUNCTION_5_34();
  v3 = v2 & v1;
  v5 = (v4 + 63) >> 6;

  v6 = 0;
  v20 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v6;
    if (!v3)
    {
      break;
    }

LABEL_6:
    v8 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
    v9 = v8 | (v6 << 6);
    v10 = (*(v0 + 48) + 16 * v9);
    v11 = *v10;
    v12 = v10[1];
    memcpy(__dst, (*(v0 + 56) + 248 * v9), 0xF2uLL);
    v23[0] = v11;
    v23[1] = v12;
    memcpy(v24, __dst, sizeof(v24));
    if (__dst[9])
    {

      sub_266CFBD3C(__dst, v21);
      sub_266C3A088(v23, &qword_2800CCD80, &qword_266DB8F58);
    }

    else
    {
      v19 = __dst[8];
      if (__dst[14])
      {
        v11 = __dst[13];
        v18 = __dst[14];
      }

      else
      {

        v18 = v12;
      }

      sub_266CFBD3C(__dst, v21);

      sub_266C3A088(v23, &qword_2800CCD80, &qword_266DB8F58);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_11_23();
        sub_266CFA92C();
        v20 = v16;
      }

      v13 = *(v20 + 16);
      v14 = v13 + 1;
      if (v13 >= *(v20 + 24) >> 1)
      {
        sub_266CFA92C();
        v14 = v13 + 1;
        v20 = v17;
      }

      *(v20 + 16) = v14;
      v15 = (v20 + 24 * v13);
      v15[4] = v19;
      v15[5] = v11;
      v15[6] = v18;
    }
  }

  while (1)
  {
    v6 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v6 >= v5)
    {

      sub_266D2E8FC(v20);
      OUTLINED_FUNCTION_5();
      return;
    }

    v3 = *(v0 + 64 + 8 * v6);
    ++v7;
    if (v3)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_266D2E8FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCD88, &qword_266DB8F60);
    v3 = sub_266DAAF6C();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_266D2F0F4(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_266D2E994()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));
  return v0;
}

uint64_t sub_266D2E9C4()
{
  sub_266D2E994();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_266D2EA1C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_266DAFA10;
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

void sub_266D2EA80()
{
  OUTLINED_FUNCTION_6_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCD98, &unk_266DB8F78);
  v24 = v2;
  v7 = sub_266DAAF5C();
  if (!v1[2])
  {
LABEL_30:

    *v0 = v7;
    return;
  }

  OUTLINED_FUNCTION_0_66();
  if (!v3)
  {
LABEL_4:
    v9 = v5;
    while (1)
    {
      v5 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v9;
      if (v4[v5])
      {
        OUTLINED_FUNCTION_9_18();
        goto LABEL_9;
      }
    }

    if (v24)
    {
      OUTLINED_FUNCTION_10_18();
      if (v22 != v23)
      {
        *v4 = -1 << v21;
      }

      else
      {
        OUTLINED_FUNCTION_16_16(v21);
      }

      v1[2] = 0;
    }

    goto LABEL_30;
  }

  while (1)
  {
    OUTLINED_FUNCTION_1_47();
LABEL_9:
    v10 = v8 | (v5 << 6);
    v11 = *(v1[7] + 8 * v10);
    v25 = *(v1[6] + 16 * v10);
    v12 = *(v1[6] + 16 * v10 + 8);
    if ((v24 & 1) == 0)
    {
    }

    sub_266DAB2AC();
    sub_266DAB2CC();
    if (v12)
    {
      sub_266DAA7BC();
    }

    sub_266DAB2DC();
    OUTLINED_FUNCTION_4_39();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_14_26();
LABEL_22:
    OUTLINED_FUNCTION_3_41(v14);
    *(v20 + 16 * v19) = v25;
    *(*(v7 + 56) + 8 * v19) = v11;
    ++*(v7 + 16);
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_13_19();
  while (++v15 != v17 || (v16 & 1) == 0)
  {
    v18 = v15 == v17;
    if (v15 == v17)
    {
      v15 = 0;
    }

    v16 |= v18;
    if (*(v6 + 8 * v15) != -1)
    {
      OUTLINED_FUNCTION_12_20();
      goto LABEL_22;
    }
  }

LABEL_32:
  __break(1u);
}

void sub_266D2EC6C()
{
  OUTLINED_FUNCTION_6_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA240, &qword_266DB02D0);
  v28 = v2;
  v7 = sub_266DAAF5C();
  if (!v1[2])
  {
LABEL_28:

    *v0 = v7;
    return;
  }

  v27 = v1;
  OUTLINED_FUNCTION_0_66();
  if (!v3)
  {
LABEL_4:
    v9 = v5;
    while (1)
    {
      v5 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v9;
      if (v4[v5])
      {
        OUTLINED_FUNCTION_9_18();
        goto LABEL_9;
      }
    }

    if (v28)
    {
      OUTLINED_FUNCTION_10_18();
      if (v25 != v26)
      {
        *v4 = -1 << v24;
      }

      else
      {
        OUTLINED_FUNCTION_16_16(v24);
      }

      v1[2] = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_1_47();
LABEL_9:
    v10 = v8 | (v5 << 6);
    v11 = (v1[6] + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(v1[7] + v10);
    if ((v28 & 1) == 0)
    {
    }

    sub_266DAB2AC();
    sub_266DAA7BC();
    sub_266DAB2DC();
    OUTLINED_FUNCTION_4_39();
    if (v15)
    {
      break;
    }

    OUTLINED_FUNCTION_14_26();
LABEL_20:
    OUTLINED_FUNCTION_3_41(v16);
    v23 = (v22 + 16 * v21);
    *v23 = v12;
    v23[1] = v13;
    *(*(v7 + 56) + v21) = v14;
    ++*(v7 + 16);
    v1 = v27;
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_13_19();
  while (++v17 != v19 || (v18 & 1) == 0)
  {
    v20 = v17 == v19;
    if (v17 == v19)
    {
      v17 = 0;
    }

    v18 |= v20;
    if (*(v6 + 8 * v17) != -1)
    {
      OUTLINED_FUNCTION_12_20();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_266D2EE30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCD88, &qword_266DB8F60);
  v34 = v4;
  result = sub_266DAAF5C();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v3;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      sub_266D2EA1C(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = (*(v5 + 56) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    if ((v34 & 1) == 0)
    {
    }

    result = sub_266DAB29C();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v7 + 48) + 8 * v26) = v19;
    v31 = (*(v7 + 56) + 16 * v26);
    *v31 = v21;
    v31[1] = v22;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_266D2F0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_266DAB17C() & 1;
  }
}

uint64_t sub_266D2F0F4(uint64_t a1, char a2, void *a3)
{
  v3 = a3;
  v5 = a1;
  v6 = 0;
  v45 = *(a1 + 16);
  v7 = (a1 + 48);
  while (1)
  {
    if (v45 == v6)
    {
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    v46 = v7;
    v47 = v6;
    v9 = *(v7 - 2);
    v8 = *(v7 - 1);
    v10 = *v7;
    v11 = *v3;
    v12 = sub_266D99F28(v9);
    v14 = v11[2];
    v15 = (v13 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      goto LABEL_21;
    }

    v17 = v12;
    v18 = v13;
    v19 = v11[3];

    if (v19 >= v16)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCD90, &qword_266DB8F68);
        sub_266DAAF0C();
      }
    }

    else
    {
      sub_266D2EE30(v16, a2 & 1);
      v20 = sub_266D99F28(v9);
      if ((v18 & 1) != (v21 & 1))
      {
        goto LABEL_23;
      }

      v17 = v20;
    }

    v22 = *v3;
    if (v18)
    {
      v23 = (v22[7] + 16 * v17);
      v24 = *v23;
      v25 = v23[1];
      v26 = qword_2800C93D0;

      if (v26 != -1)
      {
        swift_once();
      }

      v27 = sub_266DA94AC();
      __swift_project_value_buffer(v27, qword_2800CCD68);

      v28 = sub_266DA948C();
      v29 = sub_266DAAAFC();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v43 = v24;
        v31 = swift_slowAlloc();
        v48 = v31;
        *v30 = 136315394;
        *(v30 + 4) = sub_266C22A3C(v43, v25, &v48);
        *(v30 + 12) = 2080;
        *(v30 + 14) = sub_266C22A3C(v8, v10, &v48);
        _os_log_impl(&dword_266C08000, v28, v29, "Multiple semantics list the same category id: [%s, %s], choosing the first one. This can only happen if the DeviceMapping file is wrong.", v30, 0x16u);
        swift_arrayDestroy();
        v32 = v31;
        v24 = v43;
        MEMORY[0x26D5F2480](v32, -1, -1);
        v33 = v30;
        v5 = a1;
        MEMORY[0x26D5F2480](v33, -1, -1);
      }

      v35 = v46;
      v34 = v47;
      v36 = (v22[7] + 16 * v17);
      *v36 = v24;
      v36[1] = v25;
    }

    else
    {
      v22[(v17 >> 6) + 8] |= 1 << v17;
      *(v22[6] + 8 * v17) = v9;
      v37 = (v22[7] + 16 * v17);
      *v37 = v8;
      v37[1] = v10;
      v38 = v22[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_22;
      }

      v22[2] = v40;
      v35 = v46;
      v34 = v47;
    }

    v7 = v35 + 3;
    v6 = v34 + 1;
    a2 = 1;
    v3 = a3;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_266DAB1FC();
  __break(1u);
  return result;
}

uint64_t sub_266D2F434(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_266D2F478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC850, &unk_266DB6C20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_50(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_7_27@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 72);
  *(v1 + 80) = *(a1 + 56);
  *(v1 + 96) = v2;
  v3 = *(a1 + 40);
  result = *(a1 + 24);
  *(v1 + 48) = result;
  *(v1 + 64) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_16_16@<X0>(uint64_t a1@<X8>)
{

  return sub_266D2EA1C(0, (a1 + 63) >> 6, v1);
}

void *OUTLINED_FUNCTION_17_22()
{

  return memcpy((v0 + 616), (v0 + 1048), 0x7AuLL);
}

uint64_t sub_266D2F6C4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800E6498);
  v1 = __swift_project_value_buffer(v0, qword_2800E6498);
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E61A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266D2F78C()
{
  sub_266DA929C();
  result = sub_266DA927C();
  qword_2800E64B0 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for FindDevice.FindDeviceFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266D2F8DC()
{
  result = qword_2800CCDA0;
  if (!qword_2800CCDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCDA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy15SearchCriterionO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 0xC)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 13);
  }
}

uint64_t sub_266D2F94C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF3 && *(a1 + 17))
    {
      v2 = *a1 + 242;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 0xD)
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

uint64_t sub_266D2F98C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF2)
  {
    *(result + 16) = 0;
    *result = a2 - 243;
    *(result + 8) = 0;
    if (a3 >= 0xF3)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF3)
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

uint64_t sub_266D2F9D0(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xD)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    LOBYTE(a2) = 13;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_266D2F9F8(void *a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 1:
    case 10:
      OUTLINED_FUNCTION_0_67();
      v60 = OUTLINED_FUNCTION_1_33();
      v93 = v61(v60);
      v94 = v62;
      sub_266C680F8();
      v63 = sub_266DAAC6C();
      v65 = v64;

      OUTLINED_FUNCTION_6_30();
      v66 = sub_266DAAC6C();
      if (v63 == v66 && v65 == v67)
      {
        v22 = 1;
      }

      else
      {
        v22 = OUTLINED_FUNCTION_7_28(v66, v67, v66);
      }

      goto LABEL_54;
    case 2:
      OUTLINED_FUNCTION_0_67();
      v31 = OUTLINED_FUNCTION_1_33();
      v93 = v32(v31);
      v94 = v33;
      sub_266C680F8();
      v34 = OUTLINED_FUNCTION_5_35();
      v36 = v35;

      v100 = v34;
      v101 = v36;
      OUTLINED_FUNCTION_5_35();
      v22 = sub_266DAACBC();
      goto LABEL_53;
    case 3:
      OUTLINED_FUNCTION_0_67();
      v37 = OUTLINED_FUNCTION_1_33();
      v38(v37);
      v39 = sub_266DAA73C();
      v41 = v40;

      if (v39 == sub_266DAA73C() && v41 == v42)
      {

LABEL_50:

        v22 = 1;
        return v22 & 1;
      }

      else
      {
        v44 = sub_266DAB17C();

        return v44 & 1;
      }

    case 4:
      OUTLINED_FUNCTION_4_40();
      v18 = OUTLINED_FUNCTION_3_42();
      v20 = v19(v18) == a3;
      v22 = (v21 & 1) == 0 && v20;
      return v22 & 1;
    case 5:
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      OUTLINED_FUNCTION_1_48();
      v50 = 0;
      if (v99)
      {
        v51 = 0;
        if (v94)
        {
          v100 = v93;
          v101 = v94;
          sub_266C680F8();
          v50 = sub_266DAAC6C();
          v51 = v52;
        }
      }

      else
      {
        v51 = 0;
      }

      v100 = a3;
      v101 = a4;
      sub_266C680F8();
      v77 = sub_266DAAC6C();
      if (v51)
      {
        if (v50 == v77 && v51 == v78)
        {
          v22 = 1;
        }

        else
        {
          v22 = sub_266DAB17C();
        }
      }

      else
      {
        v22 = 0;
      }

      if (v99 && (v80 = v96, , sub_266C24A30(&v93), v80))
      {
        v81 = sub_266DAAC6C();
        v83 = v82;
      }

      else
      {
        v81 = 0;
        v83 = 0;
      }

      v84 = sub_266DAAC6C();
      if (v83)
      {
        if (v81 == v84 && v83 == v85)
        {
          v87 = 1;
        }

        else
        {
          v87 = sub_266DAB17C();
        }
      }

      else
      {
        v87 = 0;
      }

      goto LABEL_81;
    case 6:
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      OUTLINED_FUNCTION_1_48();
      if (!v99)
      {
        goto LABEL_41;
      }

      if (v94)
      {
        sub_266C680F8();
        v55 = sub_266DAAC6C();
        v57 = v56;
        OUTLINED_FUNCTION_6_30();
        v58 = sub_266DAAC6C();
        v22 = sub_266D301AC(v58, v59, v55, v57);
      }

      else
      {
        v22 = 0;
      }

      if (v96)
      {
        v93 = v95;
        v94 = v96;
        sub_266C680F8();
        v88 = sub_266DAAC6C();
        v90 = v89;

        OUTLINED_FUNCTION_6_30();
        v91 = sub_266DAAC6C();
        v87 = sub_266D301AC(v91, v92, v88, v90);

LABEL_81:

        v22 |= v87;
      }

      return v22 & 1;
    case 7:
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      OUTLINED_FUNCTION_1_48();
      if (v99 && (v45 = v97, v46 = v98, , sub_266C24A30(&v93), v46))
      {
        v100 = v45;
        v101 = v46;
        sub_266C680F8();
        v47 = sub_266DAAC6C();
        v49 = v48;
      }

      else
      {
        v47 = 0;
        v49 = 0;
      }

      v100 = a3;
      v101 = a4;
      sub_266C680F8();
      v74 = sub_266DAAC6C();
      if (v49)
      {
        if (v47 == v74 && v49 == v75)
        {
          v22 = 1;
        }

        else
        {
          v22 = OUTLINED_FUNCTION_7_28(v74, v75, v74);
        }

LABEL_53:
      }

      else
      {
        v22 = 0;
      }

      goto LABEL_54;
    case 8:
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      OUTLINED_FUNCTION_1_48();
      if (v99 && (v69 = v97, v70 = v98, , sub_266C24A30(&v93), v70))
      {
        v100 = v69;
        v101 = v70;
        sub_266C680F8();
        v15 = OUTLINED_FUNCTION_5_35();
        v17 = v71;

LABEL_40:
        v72 = OUTLINED_FUNCTION_5_35();
        v22 = sub_266D301AC(v72, v73, v15, v17);

LABEL_54:
      }

      else
      {
LABEL_41:
        v22 = 0;
      }

      return v22 & 1;
    case 9:
      OUTLINED_FUNCTION_4_40();
      v29 = OUTLINED_FUNCTION_3_42();
      v22 = v30(v29) ^ a3 ^ 1;
      return v22 & 1;
    case 11:
      OUTLINED_FUNCTION_0_67();
      v12 = OUTLINED_FUNCTION_1_33();
      v93 = v13(v12);
      v94 = v14;
      sub_266C680F8();
      v15 = OUTLINED_FUNCTION_5_35();
      v17 = v16;

      OUTLINED_FUNCTION_6_30();
      goto LABEL_40;
    case 12:
      OUTLINED_FUNCTION_4_40();
      v23 = OUTLINED_FUNCTION_3_42();
      v25 = v24(v23);
      v11 = sub_266C50F74(v25, v26, a3);
      goto LABEL_12;
    case 13:
      v53 = a1[3];
      v54 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v53);
      return (*(v54 + 88))(v53, v54) & 1;
    default:
      OUTLINED_FUNCTION_0_67();
      v7 = OUTLINED_FUNCTION_1_33();
      if (v8(v7) == a3 && v9 == a4)
      {
        goto LABEL_50;
      }

      v11 = sub_266DAB17C();
LABEL_12:
      v27 = v11;

      return v27 & 1;
  }
}

uint64_t sub_266D301AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_266C680F8();
  if (sub_266DAACBC())
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_266DAACBC();
  }

  return v4 & 1;
}

uint64_t sub_266D30258(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a3)
  {
    case 1:
      if (a6 == 1)
      {
        goto LABEL_26;
      }

      goto LABEL_33;
    case 2:
      if (a6 != 2)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    case 3:
      if (a6 != 3)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    case 4:
      if (a6 != 4)
      {
        goto LABEL_33;
      }

      v6 = a1 == a4;
      return v6 & 1;
    case 5:
      if (a6 != 5)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    case 6:
      if (a6 == 6)
      {
        goto LABEL_26;
      }

      goto LABEL_33;
    case 7:
      if (a6 != 7)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    case 8:
      if (a6 != 8)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    case 9:
      if (a6 != 9)
      {
        goto LABEL_33;
      }

      v6 = a4 ^ a1 ^ 1;
      return v6 & 1;
    case 10:
      if (a6 != 10)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    case 11:
      if (a6 != 11)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    case 12:
      if (a6 != 12)
      {
        goto LABEL_33;
      }

      return sub_266C65B10(a1, a4);
    case 13:
      if (a6 != 13 || a5 | a4)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    default:
      if (a6)
      {
LABEL_33:
        v6 = 0;
      }

      else
      {
LABEL_26:
        if (a1 != a4 || a2 != a5)
        {
          return sub_266DAB17C();
        }

LABEL_31:
        v6 = 1;
      }

      return v6 & 1;
  }
}

uint64_t OUTLINED_FUNCTION_1_48()
{

  return SFMContactDataProvider.ownerContact(of:)(v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_5_35()
{

  return sub_266DAAC6C();
}

uint64_t OUTLINED_FUNCTION_7_28(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_266DAB17C();
}

uint64_t sub_266D3047C(void *a1, id a2)
{
  v131 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCDC0, &qword_266DB9250);
  OUTLINED_FUNCTION_4_3(v4);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v102 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCDC8, &qword_266DB9258);
  OUTLINED_FUNCTION_4_3(v8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v121 = &v102 - v10;
  sub_266DA9DAC();
  OUTLINED_FUNCTION_0_2();
  v118 = v12;
  v119 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_6();
  v120 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC028, &qword_266DB59C8);
  OUTLINED_FUNCTION_4_3(v15);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  v117 = &v102 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC120, &qword_266DB5C88);
  OUTLINED_FUNCTION_4_3(v18);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v102 - v20;
  sub_266DA9BDC();
  OUTLINED_FUNCTION_0_2();
  v124 = v23;
  v125 = v22;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_5();
  v122 = v24 - v25;
  MEMORY[0x28223BE20](v26);
  v123 = &v102 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCDD0, &qword_266DB9260);
  OUTLINED_FUNCTION_4_3(v28);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v102 - v30;
  v128 = sub_266DA9E5C();
  OUTLINED_FUNCTION_0_2();
  v126 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_0_5();
  v116 = v34 - v35;
  MEMORY[0x28223BE20](v36);
  v127 = &v102 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCDD8, &qword_266DB9268);
  OUTLINED_FUNCTION_4_3(v38);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v39);
  v41 = &v102 - v40;
  v130 = sub_266DA9E6C();
  OUTLINED_FUNCTION_0_2();
  v43 = v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_0_5();
  v47 = v45 - v46;
  MEMORY[0x28223BE20](v48);
  v129 = &v102 - v49;
  v50 = [a2 notifyMe];
  if (!v50)
  {
    goto LABEL_11;
  }

  v51 = v50;
  v115 = [v50 BOOLValue];

  v52 = [a2 notifyOnce];
  if (!v52)
  {
    goto LABEL_11;
  }

  v53 = v52;
  v54 = [v52 BOOLValue];

  v55 = [a2 location];
  if (!v55)
  {
    goto LABEL_11;
  }

  v56 = v55;
  v114 = v43;
  sub_266D31128([a2 trigger], v41);
  v57 = v130;
  if (__swift_getEnumTagSinglePayload(v41, 1, v130) == 1)
  {

    sub_266C3A088(v41, &qword_2800CCDD8, &qword_266DB9268);
LABEL_11:
    if (qword_2800C93E8 != -1)
    {
      OUTLINED_FUNCTION_4_41(&qword_2800C93E8);
    }

    v70 = sub_266DA94AC();
    __swift_project_value_buffer(v70, qword_2800CCDA8);
    v71 = sub_266DA948C();
    v72 = sub_266DAAAEC();
    v73 = os_log_type_enabled(v71, v72);
    v74 = v131;
    if (v73)
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_266C08000, v71, v72, "SetGeoFence intent did not have the required fields to create FMFAddLocationAlterAction", v75, 2u);
      MEMORY[0x26D5F2480](v75, -1, -1);
    }

    sub_266C701F4(v74);
    return 0;
  }

  v110 = v54;
  v111 = v7;
  v112 = v2;
  v58 = v114;
  v59 = v129;
  (*(v114 + 32))(v129, v41, v57);
  v60 = v56;
  v113 = a2;
  v61 = [a2 trigger];
  sub_266D3125C(v60, v115, v61, v31);
  v62 = v128;
  if (__swift_getEnumTagSinglePayload(v31, 1, v128) == 1)
  {
    (*(v58 + 8))(v59, v57);

    v63 = &qword_2800CCDD0;
    v64 = &qword_266DB9260;
    v65 = v31;
LABEL_10:
    sub_266C3A088(v65, v63, v64);
    a2 = v113;
    goto LABEL_11;
  }

  v66 = v126;
  v67 = v127;
  (*(v126 + 32))(v127, v31, v62);
  v68 = v60;
  sub_266D314A4(v68, v21);
  v69 = v125;
  if (__swift_getEnumTagSinglePayload(v21, 1, v125) == 1)
  {

    (*(v66 + 8))(v67, v62);
    (*(v114 + 8))(v129, v130);
    v63 = &qword_2800CC120;
    v64 = &qword_266DB5C88;
    v65 = v21;
    goto LABEL_10;
  }

  v109 = v68;
  v79 = v123;
  v78 = v124;
  (*(v124 + 32))(v123, v21, v69);
  v80 = v131[1];
  v108 = *v131;
  v107 = v80;

  sub_266C66C84();
  v106 = v81;
  sub_266C66D88();
  v105 = v82;
  (*(v78 + 16))(v122, v79, v69);
  v83 = v117;
  sub_266DA9BAC();
  v84 = sub_266DA9EBC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83, 1, v84);
  v86 = v114;
  if (EnumTagSinglePayload == 1)
  {
    sub_266C3A088(v83, &qword_2800CC028, &qword_266DB59C8);
    v104 = 0;
    v103 = 0;
  }

  else
  {
    v104 = sub_266DA9E8C();
    v103 = v87;
    (*(*(v84 - 8) + 8))(v83, v84);
  }

  v88 = v126;
  (*(v126 + 16))(v116, v127, v128);
  v89 = MEMORY[0x277D07C18];
  if (!v115)
  {
    v89 = MEMORY[0x277D07C10];
  }

  (*(v118 + 104))(v120, *v89, v119);
  v91 = v129;
  v90 = v130;
  (*(v86 + 16))(v47, v129, v130);
  sub_266DA9BEC();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
  sub_266DA9E7C();
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
  v76 = sub_266DA9E1C();

  sub_266C701F4(v131);
  v100 = OUTLINED_FUNCTION_7_29();
  v101(v100);
  (*(v88 + 8))(v127, v128);
  (*(v86 + 8))(v91, v90);
  return v76;
}

uint64_t sub_266D31060()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CCDA8);
  v1 = __swift_project_value_buffer(v0, qword_2800CCDA8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266D31128@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266DA9E6C();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  v10 = v9 - v8;
  if ((a1 - 1) >= 3)
  {
    OUTLINED_FUNCTION_43();

    return __swift_storeEnumTagSinglePayload(v15, v16, v17, v4);
  }

  else
  {
    (*(v6 + 104))(v10, **(&unk_279C03600 + a1 - 1), v4);
    (*(v6 + 32))(a2, v10, v4);
    OUTLINED_FUNCTION_59();
    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v4);
  }
}

uint64_t sub_266D3125C@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_266DA9E5C();
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_5();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v33[-1] - v16;
  sub_266D6CDF4(v33);

  switch(v34)
  {
    case 0:
      v21 = MEMORY[0x277D07C20];
      goto LABEL_19;
    case 1:
      sub_266C23130(v33[0], v33[1], 1);
      v21 = MEMORY[0x277D07C38];
LABEL_19:
      v22 = *v21;
      v23 = *(v10 + 104);
      goto LABEL_20;
    case 2:
      if (LOBYTE(v33[0]) == 2)
      {
        v19 = a3 == 5 || a3 == 2;
        if ((a2 & 1) == 0)
        {
          v19 = a3 == 1;
        }

        if (v19)
        {
          v20 = MEMORY[0x277D07C28];
        }

        else
        {
          v20 = MEMORY[0x277D07C30];
        }

        (*(v10 + 104))(v14, *v20, v8);
        (*(v10 + 32))(v17, v14, v8);
        goto LABEL_21;
      }

      v23 = *(v10 + 104);
      if (v33[0])
      {
        v31 = MEMORY[0x277D07C28];
      }

      else
      {
        v31 = MEMORY[0x277D07C30];
      }

      v22 = *v31;
LABEL_20:
      v23(v17, v22, v8);
LABEL_21:
      (*(v10 + 32))(a4, v17, v8);
      OUTLINED_FUNCTION_59();
      return __swift_storeEnumTagSinglePayload(v24, v25, v26, v8);
  }

  OUTLINED_FUNCTION_43();

  return __swift_storeEnumTagSinglePayload(v28, v29, v30, v8);
}

uint64_t sub_266D314A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCCE8, &qword_266DB8B28);
  OUTLINED_FUNCTION_4_3(v4);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - v6;
  v8 = sub_266DA9A1C();
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0_6();
  v51 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCDE0, &qword_266DB9270);
  OUTLINED_FUNCTION_4_3(v14);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCDE8, &qword_266DB9278);
  OUTLINED_FUNCTION_4_3(v16);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC028, &qword_266DB59C8);
  v19 = OUTLINED_FUNCTION_4_3(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_0_5();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v48 - v24;
  if ([a1 location])
  {
    sub_266C39CC0(a1, &selRef_fullThoroughfare);
    v49 = a1;
    v50 = a2;
    sub_266DA9C3C();
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    sub_266DA9C5C();
    OUTLINED_FUNCTION_43();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    sub_266DA9E9C();
    v34 = v49;
    v35 = v51;
    sub_266D31810(v34);
    (*(v10 + 16))(v7, v35, v8);
    OUTLINED_FUNCTION_59();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v8);
    sub_266D319F8(v25, v22);
    sub_266DA9B8C();

    (*(v10 + 8))(v35, v8);
    sub_266C3A088(v25, &qword_2800CC028, &qword_266DB59C8);
    sub_266DA9BDC();
    OUTLINED_FUNCTION_59();
    return __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  }

  else
  {

    sub_266DA9BDC();
    OUTLINED_FUNCTION_43();

    return __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  }
}

void sub_266D31810(void *a1)
{
  sub_266C39CC0(a1, &selRef_country);
  sub_266C39CC0(a1, &selRef_countryCode);
  sub_266C39CC0(a1, &selRef_thoroughfare);
  sub_266C39CC0(a1, &selRef_fullThoroughfare);
  v1 = [a1 locality];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 spokenPhrase];

    sub_266DAA70C();
  }

  v4 = sub_266D31A8C(a1);
  if (v4)
  {
    if (*(v4 + 16))
    {
    }
  }

  sub_266C39CC0(a1, &selRef_administrativeArea);
  sub_266D31A8C(a1);
  sub_266C39CC0(a1, &selRef_fullThoroughfare);
  sub_266DA99DC();
}

uint64_t sub_266D319F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC028, &qword_266DB59C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266D31A8C(void *a1)
{
  v1 = [a1 areasOfInterest];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_266DAA93C();

  return v3;
}

uint64_t OUTLINED_FUNCTION_4_41(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_266D31B14(uint64_t a1, uint64_t a2)
{
  v2 = sub_266DAAF8C();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266D31B68()
{
  sub_266DA929C();
  result = sub_266DA927C();
  qword_2800E64B8 = result;
  return result;
}

uint64_t sub_266D31BC4()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800E64C0);
  v1 = __swift_project_value_buffer(v0, qword_2800E64C0);
  if (qword_28156F1D8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156F1E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

_BYTE *storeEnumTagSinglePayload for SetGeoFence.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D31D6C()
{
  result = qword_2800CCDF0;
  if (!qword_2800CCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCDF0);
  }

  return result;
}

BOOL static LocationPrecision.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      return 1;
    }
  }

  else if ((*(a2 + 16) & 1) == 0 && *a1 == *a2)
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return 0;
}

uint64_t sub_266D31E08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736963657270 && a2 == 0xE700000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657372616F63 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

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

uint64_t sub_266D31ECC(char a1)
{
  if (a1)
  {
    return 0x657372616F63;
  }

  else
  {
    return 0x65736963657270;
  }
}

uint64_t sub_266D31F00(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x8000000266DC3790 == a2;
  if (v3 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000266DC37B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_266DAB17C();

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

unint64_t sub_266D31FD8(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_266D32010(uint64_t a1)
{
  v2 = sub_266D3252C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D3204C(uint64_t a1)
{
  v2 = sub_266D3252C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266D32090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D31E08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D320B8(uint64_t a1)
{
  v2 = sub_266D324D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D320F4(uint64_t a1)
{
  v2 = sub_266D324D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266D32138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266D31F00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266D32160(uint64_t a1)
{
  v2 = sub_266D32580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266D3219C(uint64_t a1)
{
  v2 = sub_266D32580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocationPrecision.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCDF8, &qword_266DB9340);
  OUTLINED_FUNCTION_0_2();
  v24 = v4;
  v25 = v3;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCE00, &qword_266DB9348);
  OUTLINED_FUNCTION_0_2();
  v26 = v9;
  v27 = v8;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCE08, &qword_266DB9350);
  OUTLINED_FUNCTION_0_2();
  v14 = v13;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  v18 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D324D8();
  sub_266DAB36C();
  if (v18)
  {
    v33 = 1;
    sub_266D3252C();
    v19 = v28;
    sub_266DAB08C();
    (*(v24 + 8))(v7, v25);
    return (*(v14 + 8))(v17, v19);
  }

  else
  {
    v32 = 0;
    sub_266D32580();
    v21 = v28;
    sub_266DAB08C();
    v31 = 0;
    v22 = v27;
    v23 = v29;
    sub_266DAB10C();
    if (!v23)
    {
      v30 = 1;
      sub_266DAB10C();
    }

    (*(v26 + 8))(v12, v22);
    return (*(v14 + 8))(v17, v21);
  }
}

unint64_t sub_266D324D8()
{
  result = qword_2800CCE10;
  if (!qword_2800CCE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE10);
  }

  return result;
}

unint64_t sub_266D3252C()
{
  result = qword_2800CCE18;
  if (!qword_2800CCE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE18);
  }

  return result;
}

unint64_t sub_266D32580()
{
  result = qword_2800CCE20;
  if (!qword_2800CCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE20);
  }

  return result;
}

uint64_t LocationPrecision.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  *&v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCE28, &qword_266DB9358);
  OUTLINED_FUNCTION_0_2();
  *&v43 = v3;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v6 = v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCE30, &qword_266DB9360);
  OUTLINED_FUNCTION_0_2();
  v45 = v8;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v9);
  v11 = v41 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CCE38, &unk_266DB9368);
  OUTLINED_FUNCTION_0_2();
  v46 = v12;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266D324D8();
  v14 = v48;
  v15 = a1;
  sub_266DAB34C();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  v41[2] = v7;
  v42 = v6;
  v48 = v11;
  v16 = v47;
  sub_266DAB06C();
  result = sub_266C1E2FC();
  if (v19 == v20 >> 1)
  {
LABEL_8:
    v27 = sub_266DAAE4C();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9908, &qword_266DAD8C0);
    *v29 = &type metadata for LocationPrecision;
    sub_266DAAFBC();
    sub_266DAAE3C();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    v30 = OUTLINED_FUNCTION_2_51();
    v31(v30);
    return __swift_destroy_boxed_opaque_existential_0(v15);
  }

  v41[1] = 0;
  if (v19 < (v20 >> 1))
  {
    v21 = *(v18 + v19);
    sub_266C1E2EC();
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    if (v23 == v25 >> 1)
    {
      v15 = a1;
      v49 = v21;
      if (v21)
      {
        v53 = 1;
        sub_266D3252C();
        v26 = v42;
        OUTLINED_FUNCTION_3_43(&type metadata for LocationPrecision.CoarseCodingKeys, &v53);
        swift_unknownObjectRelease();
        (*(v43 + 8))(v26, v44);
        v32 = OUTLINED_FUNCTION_2_51();
        v33(v32);
        v34 = 0uLL;
      }

      else
      {
        v52 = 0;
        sub_266D32580();
        OUTLINED_FUNCTION_3_43(&type metadata for LocationPrecision.PreciseCodingKeys, &v52);
        v51 = 0;
        sub_266DAB03C();
        v44 = v35;
        v50 = 1;
        sub_266DAB03C();
        v43 = v36;
        swift_unknownObjectRelease();
        v37 = OUTLINED_FUNCTION_4_42();
        v38(v37);
        v39 = OUTLINED_FUNCTION_2_51();
        v40(v39);
        *&v34 = v44;
        *(&v34 + 1) = v43;
      }

      *v16 = v34;
      *(v16 + 16) = v49;
      return __swift_destroy_boxed_opaque_existential_0(v15);
    }

    v15 = a1;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for LocationPrecision(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LocationPrecision(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_266D32B70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266D32B8C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 16) = v2;
  return result;
}

_BYTE *sub_266D32BCC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266D32CBC()
{
  result = qword_2800CCE40;
  if (!qword_2800CCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE40);
  }

  return result;
}

unint64_t sub_266D32D14()
{
  result = qword_2800CCE48;
  if (!qword_2800CCE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE48);
  }

  return result;
}

unint64_t sub_266D32D6C()
{
  result = qword_2800CCE50;
  if (!qword_2800CCE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CCE50);
  }

  return result;
}