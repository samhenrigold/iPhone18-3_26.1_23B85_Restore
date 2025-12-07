uint64_t sub_268C644F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RREntity.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  v3 = OUTLINED_FUNCTION_6(v2);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v29 = 0;
  *&v30 = 0xE000000000000000;
  sub_268C88DF4();
  v31 = v29;
  v32 = v30;
  MEMORY[0x26D629FC0](540697705, 0xE400000000000000);
  MEMORY[0x26D629FC0](*v1, v1[1]);
  MEMORY[0x26D629FC0](0x646E75427070610ALL, 0xEE00203A6449656CLL);
  MEMORY[0x26D629FC0](v1[2], v1[3]);
  MEMORY[0x26D629FC0](0x69746E456F73750ALL, 0xEC000000203A7974);
  sub_268C88AC4();
  v9 = sub_268C88A74();
  v11 = v10;

  MEMORY[0x26D629FC0](v9, v11);

  MEMORY[0x26D629FC0](0x615664657079740ALL, 0xED0000203A65756CLL);
  v12 = type metadata accessor for RREntity(0);
  v13 = v12[7];
  sub_268C644F0(v0 + v13, v8);
  v14 = sub_268C88C24();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v14);
  sub_268C64978(v8);
  if (EnumTagSinglePayload == 1)
  {
    v16 = 0xE300000000000000;
    v17 = 7104878;
  }

  else
  {
    sub_268C644F0(v1 + v13, v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
    {
      sub_268C64978(v6);
      v17 = 0;
      v16 = 0;
    }

    else
    {
      v17 = sub_268C88C14();
      v16 = v18;
      (*(*(v14 - 8) + 8))(v6, v14);
    }
  }

  v29 = v17;
  *&v30 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4648, &qword_268C89718);
  sub_268C88E44();

  MEMORY[0x26D629FC0](0x707954617461640ALL, 0xEB00000000203A65);
  v19 = (v1 + v12[8]);
  if (v19[1])
  {
    v20 = *v19;
    v21 = v19[1];
  }

  else
  {
    v21 = 0xE300000000000000;
    v20 = 7104878;
  }

  MEMORY[0x26D629FC0](v20, v21);

  MEMORY[0x26D629FC0](0x203A70756F72670ALL, 0xE800000000000000);
  v22 = v1 + v12[10];
  v29 = *v22;
  v30 = *(v22 + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4650, &qword_268C89720);
  v23 = sub_268C88C94();
  MEMORY[0x26D629FC0](v23);

  MEMORY[0x26D629FC0](0x7461646174656D0ALL, 0xEB00000000203A61);
  v24 = MEMORY[0x26D62A020](*(v1 + v12[11]), &type metadata for RRMetadata);
  MEMORY[0x26D629FC0](v24);

  MEMORY[0x26D629FC0](0xD000000000000016, 0x8000000268C8D8E0);
  if (*(v1 + v12[12] + 8))
  {
    v25 = 0x6465746361646572;
  }

  else
  {
    v25 = 7104878;
  }

  if (*(v1 + v12[12] + 8))
  {
    v26 = 0xE800000000000000;
  }

  else
  {
    v26 = 0xE300000000000000;
  }

  MEMORY[0x26D629FC0](v25, v26);

  return v31;
}

uint64_t sub_268C64978(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268C64A08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t type metadata accessor for RREntity(uint64_t a1)
{
  result = qword_280D69750;
  if (!qword_280D69750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return sub_268C88FB4();
}

void *OUTLINED_FUNCTION_17_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 - 256);
  *v2 = a1;
  return v2;
}

uint64_t sub_268C64C1C()
{
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_40_0();
  sub_268C88DF4();
  MEMORY[0x26D629FC0](540697705, 0xE400000000000000);
  MEMORY[0x26D629FC0](*(v2 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id), *(v2 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id + 8));
  MEMORY[0x26D629FC0](0x646E75427070610ALL, 0xEE00203A6449656CLL);
  MEMORY[0x26D629FC0](*(v2 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId), *(v2 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId + 8));
  MEMORY[0x26D629FC0](0x69746E456F73750ALL, 0xEC000000203A7974);
  sub_268C88AC4();
  sub_268C88A74();

  v4 = OUTLINED_FUNCTION_45();
  MEMORY[0x26D629FC0](v4);

  MEMORY[0x26D629FC0](0x707954617461640ALL, 0xEB00000000203A65);
  OUTLINED_FUNCTION_46(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType);

  v5 = OUTLINED_FUNCTION_45();
  MEMORY[0x26D629FC0](v5);

  MEMORY[0x26D629FC0](0x203A70756F72670ALL, 0xE800000000000000);
  OUTLINED_FUNCTION_56(v0 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4650, &qword_268C89720);
  v6 = sub_268C88C94();
  MEMORY[0x26D629FC0](v6);

  MEMORY[0x26D629FC0](0x7461646174656D0ALL, 0xEB00000000203A61);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();

  v8 = MEMORY[0x26D62A020](v7, &type metadata for RRMetadata);
  v10 = v9;

  MEMORY[0x26D629FC0](v8, v10);

  MEMORY[0x26D629FC0](0x203A65726F63730ALL, 0xE800000000000000);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  sub_268C88D54();
  MEMORY[0x26D629FC0](0xD000000000000015, 0x8000000268C8DA80);
  v11 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  sub_268C6736C(v2 + v11, v1, &qword_2802D47B8, &unk_268C8A5B8);
  v12 = sub_268C88C94();
  MEMORY[0x26D629FC0](v12);

  MEMORY[0x26D629FC0](0xD00000000000001DLL, 0x8000000268C8DAA0);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47C0, &qword_268C8A5C8);
  v13 = sub_268C88C94();
  MEMORY[0x26D629FC0](v13);

  MEMORY[0x26D629FC0](0x7461746F6E6E610ALL, 0xEE00203A736E6F69);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  type metadata accessor for RRAnnotationValue(0);

  v14 = sub_268C88C34();
  v16 = v15;

  MEMORY[0x26D629FC0](v14, v16);

  MEMORY[0x26D629FC0](0x3A6449726573750ALL, 0xE900000000000020);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();

  v17 = OUTLINED_FUNCTION_63();
  MEMORY[0x26D629FC0](v17);

  return 0;
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1, uint64_t a2)
{

  return sub_268C88FD4();
}

uint64_t RREntity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4660, &qword_268C89728);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C663B4();
  sub_268C890F4();
  LOBYTE(v21) = 0;
  OUTLINED_FUNCTION_4();
  sub_268C88F74();
  if (!v2)
  {
    LOBYTE(v21) = 1;
    OUTLINED_FUNCTION_4();
    sub_268C88F74();
    v21 = *(v3 + 32);
    v23 = 2;
    sub_268C88BC4();
    OUTLINED_FUNCTION_10();
    sub_268C65594(v11, v12, MEMORY[0x277D5F4A0]);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_15();
    sub_268C88FB4();
    v13 = type metadata accessor for RREntity(0);
    LOBYTE(v21) = 3;
    sub_268C88C24();
    OUTLINED_FUNCTION_9();
    sub_268C65594(v14, v15, MEMORY[0x277D72A80]);
    OUTLINED_FUNCTION_15();
    sub_268C88F64();
    LOBYTE(v21) = 4;
    OUTLINED_FUNCTION_4();
    sub_268C88F54();
    v16 = (v3 + v13[9]);
    v17 = v16[1];
    v21 = *v16;
    *&v22 = v17;
    v23 = 5;
    sub_268C66A34(v21, v17);
    sub_268C669E0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_15();
    sub_268C88F64();
    sub_268C65EE0(v21, v22);
    v18 = v3 + v13[10];
    v21 = *v18;
    v22 = *(v18 + 8);
    v23 = 6;
    v19 = sub_268C6698C();

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_15();
    sub_268C88F64();

    if (!v19)
    {
      v21 = *(v3 + v13[11]);
      v23 = 7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4668, &qword_268C89730);
      sub_268C66738(&qword_280D69410, sub_268C6FF64, MEMORY[0x277D83948]);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_15();
      sub_268C88FB4();
      LOBYTE(v21) = 8;
      OUTLINED_FUNCTION_4();
      sub_268C88F54();
    }
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_268C654EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_268C65540(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_268C65594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_1_3(uint64_t a1)
{

  return sub_268C88F24();
}

void OUTLINED_FUNCTION_1_6()
{

  JUMPOUT(0x26D629FC0);
}

void OUTLINED_FUNCTION_8()
{
  v7 = (v5 + *(v6 + 40));
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v0;
}

void RREntity.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_19_0();
  v4 = v3;
  v30 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v6);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4670, &qword_268C89738);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for RREntity(0);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v31 = (v12 - v11);
  v32 = v10;
  v13 = (v12 - v11 + v10[10]);
  *v13 = 0;
  v13[1] = 0;
  v14 = v13;
  v13[2] = 0;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_268C663B4();
  sub_268C890D4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
  }

  else
  {
    LOBYTE(v33) = 0;
    *v31 = sub_268C88EE4();
    v31[1] = v15;
    OUTLINED_FUNCTION_14(1);
    v31[2] = sub_268C88EE4();
    v31[3] = v16;
    sub_268C88BC4();
    OUTLINED_FUNCTION_10();
    sub_268C65594(v17, v18, MEMORY[0x277D5F4A8]);
    OUTLINED_FUNCTION_17();
    sub_268C88F24();
    v31[4] = v33;
    sub_268C88C24();
    LOBYTE(v33) = 3;
    OUTLINED_FUNCTION_9();
    sub_268C65594(v19, v20, MEMORY[0x277D72A98]);
    OUTLINED_FUNCTION_17();
    sub_268C88ED4();
    sub_268C65FC8(v2, v31 + v32[7]);
    OUTLINED_FUNCTION_14(4);
    v21 = sub_268C88EB4();
    v22 = (v31 + v32[8]);
    *v22 = v21;
    v22[1] = v23;
    sub_268C660B8();
    OUTLINED_FUNCTION_30(MEMORY[0x277CC9318]);
    *(v31 + v32[9]) = v33;
    sub_268C66154();
    OUTLINED_FUNCTION_30(&type metadata for GroupIdentifier);

    *v14 = v33;
    v14[2] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4668, &qword_268C89730);
    sub_268C66738(&qword_280D691B8, sub_268C6FFB8, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_17();
    sub_268C88F24();
    *(v31 + v32[11]) = v33;
    OUTLINED_FUNCTION_14(8);
    v29 = sub_268C88EB4();
    v25 = v24;
    v26 = (v31 + v32[12]);
    v27 = OUTLINED_FUNCTION_3_0();
    v28(v27);
    *v26 = v29;
    v26[1] = v25;
    sub_268C661A8(v31, v30);
    __swift_destroy_boxed_opaque_existential_0Tm(v4);
    sub_268C6620C(v31);
  }

  OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_30(uint64_t a1)
{

  return sub_268C88ED4();
}

uint64_t sub_268C65E88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_268C65EE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_268C65EF4(a1, a2);
  }

  return a1;
}

uint64_t sub_268C65EF4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t RRMentionedEvent.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_268C65F88(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_268C65FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_2(uint64_t a1, uint64_t a2)
{

  return sub_268C88E94();
}

uint64_t OUTLINED_FUNCTION_13_3(uint64_t a1)
{

  return swift_allocObject();
}

unint64_t sub_268C660B8()
{
  result = qword_280D693E8;
  if (!qword_280D693E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D693E8);
  }

  return result;
}

unint64_t sub_268C66154()
{
  result = qword_280D69388;
  if (!qword_280D69388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69388);
  }

  return result;
}

uint64_t sub_268C661A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RREntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268C6620C(uint64_t a1)
{
  v2 = type metadata accessor for RREntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
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

uint64_t OUTLINED_FUNCTION_15_0(uint64_t a1, uint64_t a2)
{

  return sub_268C88F44();
}

uint64_t OUTLINED_FUNCTION_15_1(uint64_t a1, uint64_t a2)
{

  return sub_268C88F44();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_268C663B4()
{
  result = qword_280D69548;
  if (!qword_280D69548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69548);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_1@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 32) = a1;
  *(v1 + 40) = v2;

  return sub_268C88D74();
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_268C88F24();
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return sub_268C88DA4();
}

unint64_t sub_268C66528(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6C646E7542707061;
      break;
    case 2:
      result = 0x7469746E456F7375;
      break;
    case 3:
      result = 0x6C61566465707974;
      break;
    case 4:
      result = 0x6570795461746164;
      break;
    case 5:
      result = 1635017060;
      break;
    case 6:
      result = 0x70756F7267;
      break;
    case 7:
      result = 0x617461646174656DLL;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RREntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x268C66710);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_268C66738(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D4668, &qword_268C89730);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RREntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t a1, uint64_t a2)
{

  return sub_268C88F44();
}

unint64_t OUTLINED_FUNCTION_12_3()
{

  return sub_268C83C24();
}

uint64_t OUTLINED_FUNCTION_9_2(uint64_t a1, uint64_t a2)
{

  return sub_268C88FB4();
}

unint64_t sub_268C6698C()
{
  result = qword_280D69558;
  if (!qword_280D69558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69558);
  }

  return result;
}

unint64_t sub_268C669E0()
{
  result = qword_280D69668;
  if (!qword_280D69668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69668);
  }

  return result;
}

void sub_268C66A34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_268C66A48(a1, a2);
  }
}

void sub_268C66A48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

id RREntity.toAnnotatedEntity(addUsoIdentifierIfNotPresent:configuration:)(char a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v6);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7);
  v9 = &v108 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v10);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v11);
  v13 = &v108 - v12;
  sub_268C88A64();
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v119 = v18 - v17;
  v19 = a2[1];
  if (v19 == 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 == 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = a2[1];
  }

  v22 = v3[1];
  v120 = *v3;
  v24 = v3[2];
  v23 = v3[3];
  v117 = v20;
  v118 = v24;
  v115 = v13;
  v116 = v21;
  if (a1)
  {
    *&v112 = v16;
    v113 = v15;
    v114 = v9;
    v25 = OUTLINED_FUNCTION_64();
    sub_268C6718C(v25, v26);

    v27 = v119;
    sub_268C88A54();
    v28 = v3[4];
    v29 = sub_268C88BA4();
    MEMORY[0x28223BE20](v29);
    *(&v108 - 2) = v27;
    v30 = v23;
    v31 = sub_268C671C0(sub_268C671A0, (&v108 - 4), v29);

    if (v31)
    {
      v32 = type metadata accessor for RREntity(0);
      OUTLINED_FUNCTION_68(&qword_2802D4640, &qword_268C89710, v32[7]);
      v33 = v32[9];
      v34 = (v3 + v32[8]);
      v35 = *v34;
      v110 = v34[1];
      v111 = v35;
      v36 = *(v3 + v33);
      v37 = *(v3 + v33 + 8);
      OUTLINED_FUNCTION_7_1();
      v38 = v114;
      OUTLINED_FUNCTION_16();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);

      sub_268C66A34(v36, v37);
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_66();

      sub_268C88C44();
      v43 = OUTLINED_FUNCTION_36_0();
      v44 = objc_allocWithZone(type metadata accessor for RRAnnotatedEntity(v43));
      v45 = OUTLINED_FUNCTION_2_1();
      v47 = RRAnnotatedEntity.init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(v120, v22, v118, v23, v28, v115, v3, v46, v45, v36, v37, v46, v3, v38, 0, v113, v114, v115, v116);
    }

    else
    {
      sub_268C88BB4();
      sub_268C88A94();
      swift_allocObject();
      v70 = OUTLINED_FUNCTION_20();
      v71 = MEMORY[0x26D629D90](v70);
      sub_268C88AB4();
      sub_268C88A44();
      v72 = MEMORY[0x26D629DB0](v71);
      v73 = v114;
      if (v72)
      {
        v74 = v72;
        v75 = type metadata accessor for RREntity(0);
        OUTLINED_FUNCTION_68(&qword_2802D4640, &qword_268C89710, v75[7]);
        v76 = v75[9];
        v77 = (v3 + v75[8]);
        v78 = *v77;
        v110 = v77[1];
        v111 = v78;
        v80 = *(v3 + v76);
        v79 = *(v3 + v76 + 8);
        OUTLINED_FUNCTION_7_1();
        OUTLINED_FUNCTION_65();
        OUTLINED_FUNCTION_16();
        __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);

        sub_268C66A34(v80, v79);
        OUTLINED_FUNCTION_50();
        OUTLINED_FUNCTION_66();

        sub_268C88C44();
        v85 = OUTLINED_FUNCTION_36_0();
        v86 = objc_allocWithZone(type metadata accessor for RRAnnotatedEntity(v85));
        v87 = OUTLINED_FUNCTION_2_1();
        v112 = v73;
        v110 = v88;
        v111 = v3;
        v108 = v80;
        v109 = v79;
        v89 = v120;
        v90 = v22;
        v91 = v118;
        v92 = v30;
        v93 = v74;
      }

      else
      {
        v94 = type metadata accessor for RREntity(0);
        OUTLINED_FUNCTION_68(&qword_2802D4640, &qword_268C89710, v94[7]);
        v95 = v94[9];
        v96 = (v3 + v94[8]);
        v97 = *v96;
        v110 = v96[1];
        v111 = v97;
        v98 = *(v3 + v95);
        v99 = *(v3 + v95 + 8);
        OUTLINED_FUNCTION_7_1();
        OUTLINED_FUNCTION_65();
        OUTLINED_FUNCTION_16();
        __swift_storeEnumTagSinglePayload(v100, v101, v102, v103);

        sub_268C66A34(v98, v99);
        OUTLINED_FUNCTION_50();
        OUTLINED_FUNCTION_66();

        sub_268C88C44();
        v104 = OUTLINED_FUNCTION_36_0();
        v105 = objc_allocWithZone(type metadata accessor for RRAnnotatedEntity(v104));
        v87 = OUTLINED_FUNCTION_2_1();
        v112 = v73;
        v110 = v106;
        v111 = v3;
        v108 = v98;
        v109 = v99;
        v89 = v120;
        v90 = v22;
        v91 = v118;
        v92 = v30;
        v93 = v28;
      }

      v47 = RRAnnotatedEntity.init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(v89, v90, v91, v92, v93, v115, v111, v110, v87, v108, v109, v110, v111, v112, *(&v112 + 1), v113, v114, v115, v116);
    }

    (*(v112 + 8))(v119, v113);
  }

  else
  {
    v114 = v3[4];
    v48 = type metadata accessor for RREntity(0);
    OUTLINED_FUNCTION_68(&qword_2802D4640, &qword_268C89710, v48[7]);
    v49 = v48[9];
    v50 = (v3 + v48[8]);
    v51 = v50[1];
    v119 = *v50;
    v52 = *(v3 + v49);
    v113 = *(v3 + v49 + 8);
    v53 = v48[11];
    v54 = v3 + v48[10];
    v121 = *v54;
    v112 = *(v54 + 8);
    v122 = v112;
    v55 = *(v3 + v53);
    sub_268C889E4();
    OUTLINED_FUNCTION_16();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
    v60 = OUTLINED_FUNCTION_64();
    sub_268C6718C(v60, v61);
    v62 = v51;

    v63 = v23;

    v64 = v114;

    v65 = v113;
    sub_268C66A34(v52, v113);
    type metadata accessor for RRAnnotationValue(0);
    OUTLINED_FUNCTION_66();

    sub_268C88C44();
    v66 = OUTLINED_FUNCTION_36_0();
    v67 = objc_allocWithZone(type metadata accessor for RRAnnotatedEntity(v66));
    v68 = OUTLINED_FUNCTION_2_1();
    return RRAnnotatedEntity.init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(v120, v22, v118, v63, v64, v115, v119, v62, v68, v52, v65, v69, v55, v9, 0, v113, v114, v115, v116);
  }

  return v47;
}

uint64_t sub_268C6718C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

BOOL sub_268C671C0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_268C88A64() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_268C67294(uint64_t a1, uint64_t a2)
{
  sub_268C88A64();
  sub_268C67324(&qword_280D693D0, MEMORY[0x277D5E4F0], MEMORY[0x277D5E4F8]);
  return sub_268C88C64() & 1;
}

uint64_t sub_268C67324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268C6736C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_20();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7()
{
  sub_268C66A34(v1, v0);
  sub_268C66A34(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_7_0(uint64_t a1, uint64_t a2)
{

  return sub_268C88E94();
}

uint64_t OUTLINED_FUNCTION_7_1()
{
  v4 = v1 + *(v0 + 40);
  *(v2 - 104) = *v4;
  v5 = *(v4 + 8);
  *(v2 - 224) = v5;
  *(v2 - 96) = v5;

  return sub_268C889E4();
}

uint64_t OUTLINED_FUNCTION_7_2(uint64_t a1, uint64_t a2)
{

  return sub_268C88E94();
}

__n128 OUTLINED_FUNCTION_48@<Q0>(uint64_t a1@<X8>, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = (v4 + a1);
  result = a4;
  *v5 = a4;
  v5[1].n128_u64[0] = a3;
  return result;
}

id RRAnnotatedEntity.init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, unint64_t a11, __int128 *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v42 = *a12;
  v41 = *(a12 + 2);
  v27 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
  sub_268C889E4();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = &v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment];
  *v32 = 0;
  *(v32 + 8) = 1;
  v33 = &v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_userId];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id];
  *v34 = a1;
  *(v34 + 1) = a2;
  v35 = &v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId];
  *v35 = a3;
  *(v35 + 1) = a4;
  *&v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_usoEntity] = a5;
  sub_268C6736C(a6, &v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_typedValue], &qword_2802D4640, &qword_268C89710);
  v36 = &v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType];
  *v36 = a7;
  *(v36 + 1) = a8;
  v37 = &v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data];
  *v37 = a10;
  *(v37 + 1) = a11;
  v38 = &v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group];
  *v38 = v42;
  *(v38 + 2) = v41;
  *&v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_metadata] = a13;
  *&v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score] = a9;
  OUTLINED_FUNCTION_32_0(&v19[v27]);

  sub_268C66A34(a10, a11);
  sub_268C67908(a14, &v19[v27]);
  swift_endAccess();
  OUTLINED_FUNCTION_37_0(v32);
  *v32 = a15;
  *(v32 + 8) = a16 & 1;
  *&v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations] = a17;
  OUTLINED_FUNCTION_37_0(v33);
  *v33 = a18;
  *(v33 + 1) = a19;

  v45.receiver = v19;
  v45.super_class = type metadata accessor for RRAnnotatedEntity(0);
  v39 = objc_msgSendSuper2(&v45, sel_init);
  sub_268C65EE0(a10, a11);

  sub_268C65E88(a14, &qword_2802D47B8, &unk_268C8A5B8);
  sub_268C65E88(a6, &qword_2802D4640, &qword_268C89710);
  return v39;
}

uint64_t OUTLINED_FUNCTION_49_0(uint64_t a1)
{

  return sub_268C88E14();
}

uint64_t sub_268C678D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268C67908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_37_0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t sub_268C679A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47C8, &qword_268C8A5D0);
  OUTLINED_FUNCTION_6(v5);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_40_0();
  v7 = OUTLINED_FUNCTION_24_1();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_6(v9);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = sub_268C889E4();
  OUTLINED_FUNCTION_0_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  sub_268C6736C(a3, v12, &qword_2802D47B8, &unk_268C8A5B8);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_268C65E88(v12, &qword_2802D47B8, &unk_268C8A5B8);
    type metadata accessor for RRAnnotationValue(0);
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_16();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    OUTLINED_FUNCTION_62();
    sub_268C67C58(v24, v25, v26);
    return sub_268C65E88(v3, &qword_2802D47C8, &qword_268C8A5D0);
  }

  else
  {
    (*(v15 + 32))(v19, v12, v13);
    (*(v15 + 16))(v3, v19, v13);
    type metadata accessor for RRAnnotationValue(0);
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
    OUTLINED_FUNCTION_62();
    sub_268C67C58(v32, v33, v34);
    sub_268C65E88(v3, &qword_2802D47C8, &qword_268C8A5D0);
    return (*(v15 + 8))(v19, v13);
  }
}

uint64_t sub_268C67BF8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_53();
  sub_268C679A4(v2, v3, a1);
  return sub_268C65E88(a1, &qword_2802D47B8, &unk_268C8A5B8);
}

uint64_t OUTLINED_FUNCTION_51()
{
}

uint64_t sub_268C67C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a2;
  v65 = a1;
  v61 = sub_268C889E4();
  OUTLINED_FUNCTION_0_0();
  v63 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_1();
  v60 = v7 - v8;
  v10 = MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_60(v10, v11, v12, v13, v14, v15, v16, v17, v58);
  v18 = OUTLINED_FUNCTION_64();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  v21 = OUTLINED_FUNCTION_6(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_10_1();
  v24 = v22 - v23;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v58 - v27;
  MEMORY[0x28223BE20](v26);
  v30 = &v58 - v29;
  v31 = type metadata accessor for RRAnnotationValue(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_10_1();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v58 - v37;
  sub_268C6736C(a3, v30, &qword_2802D47C8, &qword_268C8A5D0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    sub_268C65E88(v30, &qword_2802D47C8, &qword_268C8A5D0);
    OUTLINED_FUNCTION_16();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v31);
    swift_beginAccess();
    v42 = v62;

    sub_268C685C8(v24, v65, v42);
    return swift_endAccess();
  }

  v44 = OUTLINED_FUNCTION_45();
  sub_268C684A0(v44, v45);
  sub_268C68518(v38, v35);
  v46 = *(v63 + 32);
  v46(v64, v35, v61);
  v47 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v59 = v3;
  v48 = *(v3 + v47);

  v49 = v62;
  sub_268C6802C(v48, v28, v65, v62);

  if (__swift_getEnumTagSinglePayload(v28, 1, v31) == 1)
  {
    sub_268C65E88(v28, &qword_2802D47C8, &qword_268C8A5D0);
    v50 = v61;
LABEL_7:
    sub_268C68518(v38, v24);
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v31);
    OUTLINED_FUNCTION_32_0(v59 + v47);

    sub_268C685C8(v24, v65, v49);
    swift_endAccess();
    (*(v63 + 8))(v64, v50);
    return sub_268C687CC(v38);
  }

  v51 = v60;
  v52 = v28;
  v50 = v61;
  v46(v60, v52, v61);
  v53 = sub_268C889C4();
  v54 = *(v63 + 8);
  v54(v51, v50);
  if ((v53 & 1) == 0)
  {
    goto LABEL_7;
  }

  v54(v64, v50);
  return sub_268C687CC(v38);
}

uint64_t sub_268C6802C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  if (*(a1 + 16) && (v6 = sub_268C68144(a3, a4), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a1 + 56);
    v10 = type metadata accessor for RRAnnotationValue(0);
    sub_268C68518(v9 + *(*(v10 - 8) + 72) * v8, a2);
    v11 = a2;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for RRAnnotationValue(0);
    v11 = a2;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

__n128 OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, uint64_t a9, unint64_t a10, __n128 a12)
{
  result = a12;
  *v12 = a12;
  v12[1].n128_u64[0] = a10;
  return result;
}

uint64_t OUTLINED_FUNCTION_28_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_268C88F24();
}

unint64_t sub_268C68144(uint64_t a1, uint64_t a2)
{
  sub_268C89064();
  sub_268C88CA4();
  v4 = sub_268C890A4();

  return sub_268C681BC(a1, a2, v4);
}

unint64_t sub_268C681BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_268C88FD4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_268C68270(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_268C68144(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4888, &qword_268C8CE90);
  if ((sub_268C88E54() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_268C68144(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_268C89014();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = type metadata accessor for RRAnnotationValue(0);
    OUTLINED_FUNCTION_6(v18);
    v20 = v17 + *(v19 + 72) * v12;

    return sub_268C6BD00(a1, v20);
  }

  else
  {
    sub_268C683DC(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_268C683DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RRAnnotationValue(0);
  result = sub_268C684A0(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_268C684A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RRAnnotationValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268C68518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RRAnnotationValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268C685C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47C8, &qword_268C8A5D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for RRAnnotationValue(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v14) == 1)
  {
    sub_268C65E88(a1, &qword_2802D47C8, &qword_268C8A5D0);
    sub_268C78C98(a2, a3, v10);

    return sub_268C65E88(v10, &qword_2802D47C8, &qword_268C8A5D0);
  }

  else
  {
    sub_268C684A0(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    sub_268C68270(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_268C687CC(uint64_t a1)
{
  v2 = type metadata accessor for RRAnnotationValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268C68828(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for RRAnnotationValue(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47C8, &qword_268C8A5D0);
  OUTLINED_FUNCTION_6(v11);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22();
  v13 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v14 = *(v2 + v13);

  sub_268C6802C(v14, v3, a1, a2);

  if (__swift_getEnumTagSinglePayload(v3, 1, v6))
  {
    sub_268C65E88(v3, &qword_2802D47C8, &qword_268C8A5D0);
    sub_268C889E4();
    OUTLINED_FUNCTION_16();
    return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  }

  else
  {
    v20 = OUTLINED_FUNCTION_45();
    sub_268C68518(v20, v21);
    sub_268C65E88(v3, &qword_2802D47C8, &qword_268C8A5D0);
    RRAnnotationValue.date.getter();
    return sub_268C687CC(v10);
  }
}

uint64_t sub_268C689A4(uint64_t *a1)
{
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
}

__n128 OUTLINED_FUNCTION_56@<Q0>(uint64_t a1@<X8>)
{
  *(v1 - 104) = *a1;
  result = *(a1 + 8);
  *(v1 - 96) = result;
  return result;
}

uint64_t RRAnnotationValue.date.getter()
{
  v3 = type metadata accessor for RRAnnotationValue(0);
  v4 = OUTLINED_FUNCTION_6(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_41();
  sub_268C68518(v1, v2);
  v5 = sub_268C889E4();
  OUTLINED_FUNCTION_3();
  v6 = OUTLINED_FUNCTION_63();
  v7(v6);
  OUTLINED_FUNCTION_31_0();
  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v5);
}

uint64_t sub_268C68C1C()
{
  v4 = type metadata accessor for RRAnnotationValue(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_44();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47C8, &qword_268C8A5D0);
  OUTLINED_FUNCTION_6(v6);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_40_0();
  v8 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v9 = *(v1 + v8);

  sub_268C6802C(v9, v2, 0xD000000000000016, 0x8000000268C8D870);

  if (__swift_getEnumTagSinglePayload(v2, 1, v4))
  {
    sub_268C65E88(v2, &qword_2802D47C8, &qword_268C8A5D0);
    sub_268C889E4();
    OUTLINED_FUNCTION_16();
    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_29_0();
    sub_268C68518(v15, v16);
    sub_268C65E88(v2, &qword_2802D47C8, &qword_268C8A5D0);
    RRAnnotationValue.date.getter();
    return sub_268C687CC(v3);
  }
}

void *OUTLINED_FUNCTION_34_1(uint64_t a1, ...)
{

  return sub_268C89064();
}

uint64_t OUTLINED_FUNCTION_50()
{

  return type metadata accessor for RRAnnotationValue(0);
}

unint64_t OUTLINED_FUNCTION_50_0@<X0>(char a1@<W8>)
{
  *(v1 - 144) = a1;
  *(v1 - 65) = 0;

  return sub_268C6BF18();
}

uint64_t sub_268C68F10(double a1)
{
  v3 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score;
  v4 = OUTLINED_FUNCTION_57();
  result = OUTLINED_FUNCTION_37_0(v4);
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_268C68F88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
  OUTLINED_FUNCTION_58();
  swift_beginAccess();
  sub_268C69024(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_268C69024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RRMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D48E0, &qword_268C8AE18);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_40_0();
  v6 = *(v1 + 48);
  OUTLINED_FUNCTION_23_2(a1, a1[3]);
  sub_268C6938C();
  OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_30_1();
  sub_268C890F4();
  switch(v6)
  {
    case 1:
      sub_268C6BF18();
      OUTLINED_FUNCTION_5_2();
      if (!v2)
      {
        sub_268C80B8C();
        goto LABEL_14;
      }

      break;
    case 2:
      OUTLINED_FUNCTION_50_0(2);
      OUTLINED_FUNCTION_5_2();
      if (!v2)
      {
        OUTLINED_FUNCTION_21_2();
        sub_268C6BFF0();
        goto LABEL_14;
      }

      break;
    case 3:
      OUTLINED_FUNCTION_50_0(3);
      OUTLINED_FUNCTION_5_2();
      if (!v2)
      {
        OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_21_2();
        sub_268C80B38();
        goto LABEL_14;
      }

      break;
    case 4:
      OUTLINED_FUNCTION_50_0(4);
      OUTLINED_FUNCTION_5_2();
      if (!v2)
      {
        OUTLINED_FUNCTION_21_2();
        sub_268C80AE4();
        goto LABEL_14;
      }

      break;
    case 5:
      OUTLINED_FUNCTION_50_0(5);
      OUTLINED_FUNCTION_5_2();
      if (!v2)
      {
        OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_21_2();
        sub_268C80A90();
        goto LABEL_14;
      }

      break;
    default:
      sub_268C6BF18();
      OUTLINED_FUNCTION_5_2();
      if (!v2)
      {
        OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_21_2();
        sub_268C80BE0();
LABEL_14:
        OUTLINED_FUNCTION_5_2();
      }

      break;
  }

  v7 = OUTLINED_FUNCTION_29_1();
  return v8(v7, v4);
}

unint64_t sub_268C6938C()
{
  result = qword_280D69970;
  if (!qword_280D69970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69970);
  }

  return result;
}

uint64_t sub_268C693E0()
{
  v1 = (v0 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_userId);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

void RREntity.init<A>(id:appBundleId:usoEntity:intentEntity:group:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_0();
  v9 = v8;
  v22 = v10;
  OUTLINED_FUNCTION_2();
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v13);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_23();
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_33();
  RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v7, v6, v5, v4, v3, v2, v22, v19, v12, v20, v21, 0, v9);
  OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_32(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_32_0(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v37 = a8[1];
  v31 = a8[2];
  v32 = *a8;
  v19 = type metadata accessor for RREntity(0);
  v20 = (a9 + v19[10]);
  *v20 = 0;
  v20[1] = 0;
  v20[2] = 0;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  v33 = v19[7];
  sub_268C644F0(a6, a9 + v33);
  swift_getMetatypeMetadata();
  v21 = sub_268C88C94();
  v22 = (a9 + v19[8]);
  *v22 = v21;
  v22[1] = v23;
  v24 = static RRCoder.encode<A>(_:)(a7);
  if (v36)
  {
    sub_268C64978(a6);

    swift_unknownObjectRelease();

    sub_268C64978(a9 + v33);
  }

  else
  {
    v27 = v24;
    v28 = v25;
    v29 = (a9 + v19[12]);
    sub_268C64978(a6);
    swift_unknownObjectRelease();
    v30 = (a9 + v19[9]);
    *v30 = v27;
    v30[1] = v28;

    *v20 = v32;
    v20[1] = v37;
    v20[2] = v31;
    *(a9 + v19[11]) = a10;
    *v29 = a11;
    v29[1] = a12;
  }

  return result;
}

{
  v39 = a8[1];
  v33 = a8[2];
  v34 = *a8;
  v20 = type metadata accessor for RREntity(0);
  v21 = (a9 + v20[10]);
  *v21 = 0;
  v21[1] = 0;
  v38 = v21;
  v21[2] = 0;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  v35 = v20[7];
  sub_268C644F0(a6, a9 + v35);
  swift_getMetatypeMetadata();
  v22 = sub_268C88C94();
  v23 = (a9 + v20[8]);
  *v23 = v22;
  v23[1] = v24;
  v25 = sub_268C88964();
  OUTLINED_FUNCTION_29(v25);
  sub_268C88954();
  v26 = sub_268C88944();
  if (v37)
  {

    (*(*(a13 - 8) + 8))(a7, a13);
    sub_268C64978(a6);

    sub_268C64978(a9 + v35);
  }

  else
  {
    v29 = v26;
    v30 = v27;

    v31 = (a9 + v20[12]);
    (*(*(a13 - 8) + 8))(a7, a13);
    sub_268C64978(a6);
    v32 = (a9 + v20[9]);
    *v32 = v29;
    v32[1] = v30;

    *v38 = v34;
    v38[1] = v39;
    v38[2] = v33;
    *(a9 + v20[11]) = a10;
    *v31 = a11;
    v31[1] = a12;
  }

  return result;
}

void *static RRCoder.encode<A>(_:)(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v5];
  v2 = v5[0];
  if (v1)
  {
    v3 = sub_268C889A4();
  }

  else
  {
    v3 = v2;
    sub_268C88974();

    swift_willThrow();
  }

  return v3;
}

uint64_t RRAnnotationValue.description.getter()
{
  v2 = sub_268C889E4();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_41();
  v6 = type metadata accessor for RRAnnotationValue(0);
  v7 = OUTLINED_FUNCTION_6(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  sub_268C68518(v0, v9 - v8);
  (*(v4 + 32))(v1, v10, v2);
  OUTLINED_FUNCTION_0_1();
  sub_268C67324(v11, v12, MEMORY[0x277CC95B8]);
  v13 = sub_268C88FC4();
  MEMORY[0x26D629FC0](v13);

  MEMORY[0x26D629FC0](41, 0xE100000000000000);
  v14 = OUTLINED_FUNCTION_55();
  v15(v14);
  return 0x2865746164;
}

void RRMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_47_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D48B0, &qword_268C8AE10);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_23_2(v14, v14[3]);
  sub_268C6938C();
  OUTLINED_FUNCTION_44_0();
  sub_268C890D4();
  if (!v15)
  {
    v18 = sub_268C69D70();
    OUTLINED_FUNCTION_2_3(&type metadata for RRMetadata.Base, v19, v20, v21, v18);
    switch(v62)
    {
      case 1:
        OUTLINED_FUNCTION_21_2();
        v50 = sub_268C809E8();
        OUTLINED_FUNCTION_2_3(&type metadata for RRSurroundingTextsMetadataValue, v51, v52, v53, v50);
        v54 = OUTLINED_FUNCTION_10_2();
        v55(v54);
        v40 = 0;
        v41 = v62;
        goto LABEL_11;
      case 2:
        OUTLINED_FUNCTION_21_2();
        v34 = sub_268C6A00C();
        OUTLINED_FUNCTION_2_3(&type metadata for RRDataSourceMetadataValue, v35, v36, v37, v34);
        v38 = OUTLINED_FUNCTION_10_2();
        v39(v38);
        goto LABEL_8;
      case 3:
        OUTLINED_FUNCTION_21_2();
        v42 = sub_268C80994();
        OUTLINED_FUNCTION_2_3(&type metadata for RRViewLocationMetadataValue, v43, v44, v45, v42);
        v46 = OUTLINED_FUNCTION_10_2();
        v47(v46);
        v41 = v62;
        v40 = v63;
        v48 = v64;
        v49 = v65;
        goto LABEL_14;
      case 4:
        OUTLINED_FUNCTION_21_2();
        v28 = sub_268C80940();
        OUTLINED_FUNCTION_2_3(&type metadata for RRViewState, v29, v30, v31, v28);
        v32 = OUTLINED_FUNCTION_10_2();
        v33(v32);
LABEL_8:
        v40 = 0;
        v41 = v62;
LABEL_11:
        v48 = 0uLL;
        v49 = 0uLL;
        goto LABEL_14;
      case 5:
        OUTLINED_FUNCTION_21_2();
        v56 = sub_268C808EC();
        OUTLINED_FUNCTION_2_3(&type metadata for RRDisplayRepresentation, v57, v58, v59, v56);
        v60 = OUTLINED_FUNCTION_10_2();
        v61(v60);
        goto LABEL_13;
      default:
        OUTLINED_FUNCTION_21_2();
        v22 = sub_268C80A3C();
        OUTLINED_FUNCTION_2_3(&type metadata for RRBoundingBoxMetadataValue, v23, v24, v25, v22);
        v26 = OUTLINED_FUNCTION_10_2();
        v27(v26);
LABEL_13:
        v41 = v62;
        v40 = v63;
        v49 = 0uLL;
        v48 = v64;
LABEL_14:
        *v16 = v41;
        *(v16 + 8) = v40;
        *(v16 + 16) = v48;
        *(v16 + 32) = v49;
        *(v16 + 48) = v62;
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v14);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_20_0(uint64_t a1, uint64_t a2)
{

  return sub_268C88FB4();
}

void OUTLINED_FUNCTION_20_2()
{
  v2 = (v1 + *(v0 + 40));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

unint64_t sub_268C69D70()
{
  result = qword_280D69950;
  if (!qword_280D69950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69950);
  }

  return result;
}

uint64_t sub_268C69DCC(char a1)
{
  if (a1)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_268C69E04(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_39_0(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_39_0(v8);
}

unint64_t sub_268C69EF0()
{
  result = qword_280D69958;
  if (!qword_280D69958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69958);
  }

  return result;
}

unint64_t sub_268C69F44@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268C69FF4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_268C69F70(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_39_0(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 6);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_39_0(v8);
}

unint64_t sub_268C69FF4(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_268C6A00C()
{
  result = qword_280D69760;
  if (!qword_280D69760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69760);
  }

  return result;
}

void RRDataSourceMetadataValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_19_0();
  a26 = v29;
  a27 = v30;
  v120 = v27;
  v32 = v31;
  v115 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AF0, &qword_268C8AF48);
  OUTLINED_FUNCTION_0_0();
  v110 = v35;
  v111 = v34;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_19();
  v118 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AF8, &qword_268C8AF50);
  OUTLINED_FUNCTION_0_0();
  v108 = v39;
  v109 = v38;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_19();
  v114 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4B00, &qword_268C8AF58);
  OUTLINED_FUNCTION_0_0();
  v106 = v43;
  v107 = v42;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_19();
  v117 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4B08, &qword_268C8AF60);
  OUTLINED_FUNCTION_0_0();
  v104 = v46;
  v105 = v47;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_19();
  v113 = v49;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4B10, &qword_268C8AF68);
  OUTLINED_FUNCTION_0_0();
  v103 = v50;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_19();
  v112 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4B18, &qword_268C8AF70);
  OUTLINED_FUNCTION_0_0();
  v101 = v54;
  v102 = v53;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_19();
  v116 = v56;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4B20, &qword_268C8AF78);
  OUTLINED_FUNCTION_0_0();
  v98 = v57;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_40_0();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4B28, &qword_268C8AF80);
  OUTLINED_FUNCTION_0_0();
  v97 = v60;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v61);
  v63 = &v92 - v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4B30, &qword_268C8AF88);
  OUTLINED_FUNCTION_0_0();
  v65 = v64;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_13();
  v67 = v32[3];
  v119 = v32;
  OUTLINED_FUNCTION_23_2(v32, v67);
  sub_268C6A94C();
  v68 = v120;
  sub_268C890D4();
  if (v68)
  {
    goto LABEL_8;
  }

  v95 = v63;
  v94 = v59;
  v96 = v28;
  v69 = v116;
  v120 = v65;
  v70 = sub_268C88F34();
  sub_268C6ACF0(v70, 0);
  if (v72 == v73 >> 1)
  {
    goto LABEL_7;
  }

  v92 = 0;
  if (v72 >= (v73 >> 1))
  {
    __break(1u);
    JUMPOUT(0x268C6A914);
  }

  v93 = *(v71 + v72);
  sub_268C6ACE8(v72 + 1);
  v75 = v74;
  v77 = v76;
  swift_unknownObjectRelease();
  if (v75 != v77 >> 1)
  {
LABEL_7:
    v82 = sub_268C88E34();
    swift_allocError();
    v84 = v83;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4720, &qword_268C89A80);
    *v84 = &type metadata for RRDataSourceMetadataValue;
    v85 = sub_268C88EA4();
    OUTLINED_FUNCTION_49_0(v85);
    (*(*(v82 - 8) + 104))(v84, *MEMORY[0x277D84160], v82);
    swift_willThrow();
    swift_unknownObjectRelease();
    v86 = OUTLINED_FUNCTION_28_2();
    v87(v86);
LABEL_8:
    v88 = v119;
    goto LABEL_9;
  }

  v78 = v115;
  switch(v93)
  {
    case 1:
      a11 = 1;
      sub_268C814E0();
      OUTLINED_FUNCTION_7_2(&type metadata for RRDataSourceMetadataValue.ForegroundedCodingKeys, &a11);
      swift_unknownObjectRelease();
      v79 = OUTLINED_FUNCTION_29_1();
      v81 = &a25;
      goto LABEL_15;
    case 2:
      a12 = 2;
      sub_268C8148C();
      OUTLINED_FUNCTION_13_2(&type metadata for RRDataSourceMetadataValue.OnScreenCodingKeys, &a12);
      swift_unknownObjectRelease();
      (*(v101 + 8))(v69, v102);
      goto LABEL_20;
    case 3:
      a13 = 3;
      sub_268C81438();
      OUTLINED_FUNCTION_7_2(&type metadata for RRDataSourceMetadataValue.NotificationCodingKeys, &a13);
      swift_unknownObjectRelease();
      v79 = OUTLINED_FUNCTION_29_1();
      v89 = v100;
      break;
    case 4:
      a14 = 4;
      sub_268C813E4();
      OUTLINED_FUNCTION_7_2(&type metadata for RRDataSourceMetadataValue.AnnouncementCodingKeys, &a14);
      swift_unknownObjectRelease();
      goto LABEL_18;
    case 5:
      a15 = 5;
      sub_268C81390();
      OUTLINED_FUNCTION_13_2(&type metadata for RRDataSourceMetadataValue.MediaQueueStateCodingKeys, &a15);
      swift_unknownObjectRelease();
      goto LABEL_18;
    case 6:
      a16 = 6;
      sub_268C8133C();
      OUTLINED_FUNCTION_7_2(&type metadata for RRDataSourceMetadataValue.VisualCodingKeys, &a16);
      swift_unknownObjectRelease();
      goto LABEL_18;
    case 7:
      a17 = 7;
      sub_268C812E8();
      OUTLINED_FUNCTION_7_2(&type metadata for RRDataSourceMetadataValue.NearbyCodingKeys, &a17);
      swift_unknownObjectRelease();
LABEL_18:
      v79 = OUTLINED_FUNCTION_29_1();
      break;
    default:
      a10 = 0;
      sub_268C6ACF8();
      OUTLINED_FUNCTION_7_2(&type metadata for RRDataSourceMetadataValue.ConversationalCodingKeys, &a10);
      swift_unknownObjectRelease();
      v79 = OUTLINED_FUNCTION_29_1();
      v81 = &a20;
LABEL_15:
      v89 = *(v81 - 32);
      break;
  }

  v80(v79, v89);
LABEL_20:
  v90 = OUTLINED_FUNCTION_28_2();
  v91(v90);
  v88 = v119;
  *v78 = v93;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_0Tm(v88);
  OUTLINED_FUNCTION_18();
}

unint64_t sub_268C6A94C()
{
  result = qword_280D69800[0];
  if (!qword_280D69800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D69800);
  }

  return result;
}

uint64_t sub_268C6A9A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_268C6A9C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_268C6A9C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEE006C616E6F6974;
  if (v4 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x756F726765726F66 && a2 == 0xEC0000006465646ELL;
    if (v6 || (sub_268C88FD4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65657263536E6FLL && a2 == 0xE800000000000000;
      if (v7 || (sub_268C88FD4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974;
        if (v8 || (sub_268C88FD4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65636E756F6E6E61 && a2 == 0xEC000000746E656DLL;
          if (v9 || (sub_268C88FD4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x657551616964656DLL && a2 == 0xEF65746174536575;
            if (v10 || (sub_268C88FD4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C6175736976 && a2 == 0xE600000000000000;
              if (v11 || (sub_268C88FD4() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x79627261656ELL && a2 == 0xE600000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_268C88FD4();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_268C6AC5C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_39_0(-1);
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 8);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 8);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_39_0(v8);
}

unint64_t sub_268C6ACF8()
{
  result = qword_280D69550;
  if (!qword_280D69550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69550);
  }

  return result;
}

uint64_t sub_268C6AD54(char a1)
{
  result = 0x61737265766E6F63;
  switch(a1)
  {
    case 1:
      result = 0x756F726765726F66;
      break;
    case 2:
      result = 0x6E65657263536E6FLL;
      break;
    case 3:
      result = 0x6163696669746F6ELL;
      break;
    case 4:
      result = 0x65636E756F6E6E61;
      break;
    case 5:
      result = 0x657551616964656DLL;
      break;
    case 6:
      result = 0x6C6175736976;
      break;
    case 7:
      result = 0x79627261656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return sub_268C88C74();
}

uint64_t RRAnnotationValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_268C88E24();
  OUTLINED_FUNCTION_0_0();
  v31 = v6;
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v10);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v11);
  v34 = &v26 - v12;
  v13 = sub_268C889E4();
  OUTLINED_FUNCTION_0_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_44();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C890C4();
  if (!v2)
  {
    v27 = v3;
    v28 = v15;
    v29 = v9;
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    OUTLINED_FUNCTION_0_1();
    sub_268C67324(v17, v18, MEMORY[0x277CC95A0]);
    v19 = v34;
    sub_268C88FE4();
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v13);
    v23 = v27;
    v24 = *(v28 + 32);
    v24(v27, v19, v13);
    v24(v30, v23, v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

id RRAnnotatedEntity.__allocating_init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_21_1();
  v19 = objc_allocWithZone(v18);
  v20 = OUTLINED_FUNCTION_25_1();
  return RRAnnotatedEntity.init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(v21, v22, v23, v24, v25, a6, a7, a8, v20, v27, v28, v29, v30, a13, a14, a15 & 1, a16, a17, a18);
}

uint64_t OUTLINED_FUNCTION_24()
{

  return type metadata accessor for RREntity(0);
}

uint64_t sub_268C6B3C0(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v1[2];
  v9 = v2;
  sub_268C89064();
  RRMetadata.hash(into:)(v5);
  return sub_268C890A4();
}

uint64_t RRMetadata.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  switch(*(v1 + 48))
  {
    case 1:
      MEMORY[0x26D62A380](1);

      result = sub_268C80810(a1, v2);
      break;
    case 2:
      v12 = 2;
      goto LABEL_17;
    case 3:
      MEMORY[0x26D62A380](3);
      result = RRViewLocationMetadataValue.hash(into:)();
      break;
    case 4:
      v12 = 4;
LABEL_17:
      MEMORY[0x26D62A380](v12);
      result = MEMORY[0x26D62A380](v2);
      break;
    case 5:
      MEMORY[0x26D62A380](5);
      sub_268C88CA4();
      if (v4)
      {
        sub_268C89084();

        result = sub_268C88CA4();
      }

      else
      {
        result = sub_268C89084();
      }

      break;
    default:
      MEMORY[0x26D62A380](0);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v2;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x26D62A3A0](v7);
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x26D62A3A0](v8);
      if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = 0;
      }

      MEMORY[0x26D62A3A0](v9);
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = v4;
      }

      else
      {
        v10 = 0;
      }

      result = MEMORY[0x26D62A3A0](v10);
      break;
  }

  return result;
}

BOOL static RRMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 48);
  switch(*(a1 + 48))
  {
    case 1:
      if (v13 != 1 || *(*&v4 + 16) != *(*&v9 + 16))
      {
        return 0;
      }

      sub_268C7C41C(v19);

      sub_268C7C41C(v20);
      v21 = OUTLINED_FUNCTION_20();
      v23 = sub_268C7C4E8(v21, v22);

      return v23 & 1;
    case 2:
      v17 = LOBYTE(v9) == LOBYTE(v4);
      v18 = v13 == 2;
      return v18 && v17;
    case 3:
      if (v13 != 3)
      {
        return 0;
      }

      v31.f64[0] = v4;
      v31.f64[1] = v5;
      v32 = v6;
      v33 = v7;
      v34 = *(a1 + 32);
      v27.f64[0] = v9;
      v27.f64[1] = v8;
      v28 = v11;
      v29 = v10;
      v30 = v12;
      return static RRViewLocationMetadataValue.== infix(_:_:)(&v31, &v27);
    case 4:
      v17 = LOBYTE(v9) == LOBYTE(v4);
      v18 = v13 == 4;
      return v18 && v17;
    case 5:
      if (v13 != 5)
      {
        return 0;
      }

      v25 = *&v4 == *&v9 && *&v5 == *&v8;
      if (!v25 && (sub_268C88FD4() & 1) == 0)
      {
        return 0;
      }

      if (v7 == 0.0)
      {
        if (v10 == 0.0)
        {
          return 1;
        }
      }

      else if (v10 != 0.0)
      {
        v26 = *&v6 == *&v11 && *&v7 == *&v10;
        if (v26 || (sub_268C88FD4() & 1) != 0)
        {
          return 1;
        }
      }

      return 0;
    default:
      if (v13)
      {
        return 0;
      }

      v14 = v4 == v9 && v5 == v8;
      if (!v14 || v6 != v11)
      {
        return 0;
      }

      return v7 == v10;
  }
}

uint64_t RRAnnotatedEntity.data.getter()
{
  v0 = OUTLINED_FUNCTION_20();
  sub_268C66A34(v0, v1);
  return OUTLINED_FUNCTION_20();
}

double sub_268C6B834()
{
  v1 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score;
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268C6B8A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  return sub_268C6736C(v1 + v3, a1, &qword_2802D47B8, &unk_268C8A5B8);
}

uint64_t sub_268C6B938()
{
  v1 = v0 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  return *v1;
}

id RRAnnotatedEntity.init(id:appBundleId:usoEntity:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_59(a11);
  v25 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
  sub_268C889E4();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = &v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment];
  *v30 = 0;
  *(v30 + 8) = 1;
  v31 = &v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_userId];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id];
  *v32 = a1;
  *(v32 + 1) = a2;
  v33 = &v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId];
  *v33 = a3;
  *(v33 + 1) = a4;
  *&v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_usoEntity] = a5;
  v34 = &v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType];
  *v34 = a6;
  *(v34 + 1) = a7;
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  v39 = &v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data];
  *v39 = a8;
  *(v39 + 1) = a10;
  OUTLINED_FUNCTION_48(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group, a6, v43, v44);
  *&v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_metadata] = a12;
  *&v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score] = a9;
  OUTLINED_FUNCTION_32_0(&v18[v25]);

  sub_268C66A34(a8, a10);
  sub_268C67908(a13, &v18[v25]);
  swift_endAccess();
  OUTLINED_FUNCTION_37_0(v30);
  *v30 = a14;
  *(v30 + 8) = a15 & 1;
  *&v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations] = a16;
  OUTLINED_FUNCTION_37_0(v31);
  *v31 = a17;
  *(v31 + 1) = a18;

  v47.receiver = v18;
  v47.super_class = type metadata accessor for RRAnnotatedEntity(0);
  v40 = objc_msgSendSuper2(&v47, sel_init);
  sub_268C65EE0(a8, a10);

  sub_268C65E88(a13, &qword_2802D47B8, &unk_268C8A5B8);
  return v40;
}

uint64_t sub_268C6BD00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RRAnnotationValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_268C6BDA0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId + 8);
  v3 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id);
  v4 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t OUTLINED_FUNCTION_31@<X0>(void *a1@<X8>)
{
  *a1 = v2;
  a1[1] = v3;
  v8 = (v5 + *(v6 + 36));
  *v8 = v1;
  v8[1] = v4;
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, uint64_t a2)
{

  return sub_268C88F44();
}

unint64_t sub_268C6BF18()
{
  result = qword_280D693C0;
  if (!qword_280D693C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D693C0);
  }

  return result;
}

uint64_t sub_268C6BFBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268C6BFE8(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_268C6BFF0()
{
  result = qword_280D691D8;
  if (!qword_280D691D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D691D8);
  }

  return result;
}

void RRDataSourceMetadataValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_19_0();
  a26 = v31;
  a27 = v32;
  v33 = v27;
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4A90, &qword_268C8AF00);
  OUTLINED_FUNCTION_0_0();
  v91 = v37;
  v92 = v36;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_19();
  v90 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4A98, &qword_268C8AF08);
  OUTLINED_FUNCTION_0_0();
  v88 = v41;
  v89 = v40;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_19();
  v87 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AA0, &qword_268C8AF10);
  OUTLINED_FUNCTION_0_0();
  v85 = v45;
  v86 = v44;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_19();
  v84 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AA8, &qword_268C8AF18);
  OUTLINED_FUNCTION_0_0();
  v82 = v49;
  v83 = v48;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_19();
  v81 = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AB0, &qword_268C8AF20);
  OUTLINED_FUNCTION_0_0();
  v79 = v53;
  v80 = v52;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_19();
  v78 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AB8, &qword_268C8AF28);
  OUTLINED_FUNCTION_0_0();
  v76 = v57;
  v77 = v56;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_19();
  v75 = v59;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AC0, &qword_268C8AF30);
  OUTLINED_FUNCTION_0_0();
  v73 = v60;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_22();
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AC8, &qword_268C8AF38);
  OUTLINED_FUNCTION_0_0();
  v72 = v63;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AD0, &qword_268C8AF40);
  OUTLINED_FUNCTION_0_0();
  v66 = v65;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_26_2();
  v68 = *v33;
  OUTLINED_FUNCTION_23_2(v35, v35[3]);
  sub_268C6A94C();
  OUTLINED_FUNCTION_44_0();
  sub_268C890F4();
  switch(v68)
  {
    case 1:
      a11 = 1;
      sub_268C814E0();
      OUTLINED_FUNCTION_12_2(&type metadata for RRDataSourceMetadataValue.ForegroundedCodingKeys, &a11);
      (*(v73 + 8))(v28, v74);
      break;
    case 2:
      a12 = 2;
      sub_268C8148C();
      v69 = v75;
      OUTLINED_FUNCTION_6_2(&type metadata for RRDataSourceMetadataValue.OnScreenCodingKeys, &a12);
      v71 = v76;
      v70 = v77;
      goto LABEL_10;
    case 3:
      a13 = 3;
      sub_268C81438();
      v69 = v78;
      OUTLINED_FUNCTION_6_2(&type metadata for RRDataSourceMetadataValue.NotificationCodingKeys, &a13);
      v71 = v79;
      v70 = v80;
      goto LABEL_10;
    case 4:
      a14 = 4;
      sub_268C813E4();
      v69 = v81;
      OUTLINED_FUNCTION_6_2(&type metadata for RRDataSourceMetadataValue.AnnouncementCodingKeys, &a14);
      v71 = v82;
      v70 = v83;
      goto LABEL_10;
    case 5:
      a15 = 5;
      sub_268C81390();
      v69 = v84;
      OUTLINED_FUNCTION_6_2(&type metadata for RRDataSourceMetadataValue.MediaQueueStateCodingKeys, &a15);
      v71 = v85;
      v70 = v86;
      goto LABEL_10;
    case 6:
      a16 = 6;
      sub_268C8133C();
      v69 = v87;
      OUTLINED_FUNCTION_6_2(&type metadata for RRDataSourceMetadataValue.VisualCodingKeys, &a16);
      v71 = v88;
      v70 = v89;
      goto LABEL_10;
    case 7:
      a17 = 7;
      sub_268C812E8();
      v69 = v90;
      OUTLINED_FUNCTION_6_2(&type metadata for RRDataSourceMetadataValue.NearbyCodingKeys, &a17);
      v71 = v91;
      v70 = v92;
LABEL_10:
      (*(v71 + 8))(v69, v70);
      break;
    default:
      a10 = 0;
      sub_268C6ACF8();
      OUTLINED_FUNCTION_12_2(&type metadata for RRDataSourceMetadataValue.ConversationalCodingKeys, &a10);
      (*(v72 + 8))(v30, v62);
      break;
  }

  (*(v66 + 8))(v29, v66);
  OUTLINED_FUNCTION_18();
}

uint64_t RRAnnotationValue.encode(to:)(uint64_t a1)
{
  v2 = sub_268C889E4();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_44();
  v6 = type metadata accessor for RRAnnotationValue(0);
  v7 = OUTLINED_FUNCTION_6(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = OUTLINED_FUNCTION_22_1();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_268C890E4();
  v13 = OUTLINED_FUNCTION_45();
  sub_268C68518(v13, v14);
  (*(v4 + 32))(v1, v10, v2);
  __swift_mutable_project_boxed_opaque_existential_1(v20, v20[3]);
  OUTLINED_FUNCTION_0_1();
  sub_268C67324(v15, v16, MEMORY[0x277CC9580]);
  sub_268C88FF4();
  v17 = OUTLINED_FUNCTION_38_0();
  v18(v17);
  return __swift_destroy_boxed_opaque_existential_0Tm(v20);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_268C6C934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_268C6C9C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_268C6CAE8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_268C70BF8(a2, a3);
  *a1 = result & 1;
  return result;
}

uint64_t sub_268C6CB3C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_24_0();
  v5 = type metadata accessor for RREntity(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_268C6CB80(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_24_0();
  v5 = type metadata accessor for RREntity(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_268C6CCB4()
{
  OUTLINED_FUNCTION_43();
  result = sub_268C689E0();
  *v0 = result;
  return result;
}

uint64_t sub_268C6CD80()
{
  OUTLINED_FUNCTION_43();
  result = sub_268C6B938();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_268C6CDB4()
{
  OUTLINED_FUNCTION_43();
  result = sub_268C6B9DC();
  *v0 = result;
  return result;
}

uint64_t sub_268C6CDE0()
{
  OUTLINED_FUNCTION_43();
  result = sub_268C693E0();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_268C6D550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C6D508(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for RREntityError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_268C6D5E0(_BYTE *result, int a2, int a3)
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

uint64_t RREntity.typedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RREntity(0) + 28);

  return sub_268C644F0(v3, a1);
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

uint64_t RREntity.dataType.getter()
{
  type metadata accessor for RREntity(0);

  return OUTLINED_FUNCTION_20();
}

uint64_t RREntity.data.getter()
{
  type metadata accessor for RREntity(0);
  v0 = OUTLINED_FUNCTION_20();
  sub_268C66A34(v0, v1);
  return OUTLINED_FUNCTION_20();
}

uint64_t RREntity.group.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RREntity(0) + 40);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
}

__n128 RREntity.group.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for RREntity(0) + 40));

  result = v5;
  *v3 = v5;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t RREntity.metadata.getter()
{
  type metadata accessor for RREntity(0);
}

uint64_t RREntity.metadata.setter()
{
  v2 = *(OUTLINED_FUNCTION_40_1() + 44);

  *(v1 + v2) = v0;
  return result;
}

uint64_t RREntity.restrictedEntityKey.getter()
{
  type metadata accessor for RREntity(0);

  return OUTLINED_FUNCTION_20();
}

uint64_t RREntity.restrictedEntityKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RREntity(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t UsoEntity.debugString.getter()
{
  sub_268C88AC4();
  v0 = sub_268C88A74();

  return v0;
}

void RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2();
  v8 = v7;
  OUTLINED_FUNCTION_24();
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_8();
  v14 = OUTLINED_FUNCTION_31(v13);
  OUTLINED_FUNCTION_28(v14, v15, v16, v17, v18, v19, v20, v21, v22, a6, v26, v23);
  *(v8 + v24) = MEMORY[0x277D84F90];
  *v6 = 0;
  v6[1] = 0;
}

void RREntity.init(id:appBundleId:usoEntity:dataType:data:group:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_2();
  v13 = v12;
  OUTLINED_FUNCTION_24();
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_8();
  v19 = OUTLINED_FUNCTION_31(v18);
  OUTLINED_FUNCTION_28(v19, v20, v21, v22, v23, v24, v25, v26, v27, a6, v31, v28);
  *(v13 + v29) = a11;
  *v11 = 0;
  v11[1] = 0;
}

void RREntity.init(id:appBundleId:typedValue:dataType:data:group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t *a22)
{
  OUTLINED_FUNCTION_19_0();
  v70 = v24;
  v73 = v25;
  v74 = v26;
  v28 = v27;
  v68 = v29;
  v69 = v30;
  v72 = v31;
  v33 = v32;
  v75 = v34;
  v65 = sub_268C88C04();
  OUTLINED_FUNCTION_0();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1();
  v40 = v39 - v38;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v41);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_13();
  v43 = sub_268C88C24();
  OUTLINED_FUNCTION_0();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1();
  v49 = v48 - v47;
  v71 = a22[1];
  v66 = a22[2];
  v67 = *a22;
  v50 = v28;
  sub_268C644F0(v28, v23);
  if (__swift_getEnumTagSinglePayload(v23, 1, v43) == 1)
  {
    sub_268C64978(v23);
  }

  else
  {
    (*(v45 + 32))(v49, v23, v43);
    v76[3] = v43;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v76);
    (*(v45 + 16))(boxed_opaque_existential_0, v49, v43);
    sub_268C88BC4();
    sub_268C88BF4();
    sub_268C88BD4();
    sub_268C88BE4();
    if (!v22)
    {
      (*(v36 + 8))(v40, v65);
      v58 = OUTLINED_FUNCTION_37();
      v59(v58);
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
      v56 = a10;
      goto LABEL_9;
    }

    (*(v36 + 8))(v40, v65);
    v52 = OUTLINED_FUNCTION_37();
    v53(v52);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
  }

  v54 = sub_268C88A34();
  OUTLINED_FUNCTION_29(v54);
  sub_268C88A24();
  v55 = MEMORY[0x26D629DB0]();
  if (v55)
  {
    v56 = v55;

LABEL_9:

    v60 = type metadata accessor for RREntity(0);
    sub_268C644F0(v50, v33 + v60[7]);

    sub_268C64978(v50);
    v61 = (v33 + v60[10]);
    *v61 = 0;
    v61[1] = 0;
    v61[2] = 0;
    v62 = (v33 + v60[12]);
    *v33 = v68;
    v33[1] = v72;
    v33[2] = v69;
    v33[3] = v73;
    v33[4] = v56;
    v63 = (v33 + v60[8]);
    *v63 = v70;
    v63[1] = v74;
    v64 = (v33 + v60[9]);
    *v64 = v75;
    v64[1] = a21;

    *v61 = v67;
    v61[1] = v71;
    v61[2] = v66;
    *(v33 + v60[11]) = MEMORY[0x277D84F90];
    *v62 = 0;
    v62[1] = 0;
    goto LABEL_10;
  }

  v57 = sub_268C6E0B8();
  OUTLINED_FUNCTION_32(&type metadata for RREntityError, v57);
  swift_willThrow();
  sub_268C65EE0(v75, a21);

  sub_268C64978(v28);
LABEL_10:
  OUTLINED_FUNCTION_18();
}

__n128 RREntity.init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:restrictedEntityKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_2();
  v20 = v19;
  v29 = *a11;
  v28 = a11[1].n128_u64[0];
  v21 = type metadata accessor for RREntity(0);
  v22 = (v20 + v21[10]);
  v22->n128_u64[0] = 0;
  v22->n128_u64[1] = 0;
  v22[1].n128_u64[0] = 0;
  v23 = (v20 + v21[12]);
  *v20 = v18;
  v20[1] = v17;
  v20[2] = v16;
  v20[3] = v15;
  v20[4] = v14;
  sub_268C65FC8(a6, v20 + v21[7]);
  v24 = (v20 + v21[8]);
  *v24 = a7;
  v24[1] = a8;
  v25 = (v20 + v21[9]);
  *v25 = a9;
  v25[1] = a10;

  result = v29;
  *v22 = v29;
  v22[1].n128_u64[0] = v28;
  *(v20 + v21[11]) = a12;
  *v23 = a13;
  v23[1] = a14;
  return result;
}

unint64_t sub_268C6E0B8()
{
  result = qword_2802D4658;
  if (!qword_2802D4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4658);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void RREntity.init<A>(id:appBundleId:usoEntity:intentEntity:group:)()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v1;
  v4 = v3;
  v30 = v5;
  v31 = v6;
  v28 = v7;
  v29 = v8;
  v10 = v9;
  v12 = v11;
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v19);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22();
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  (*(v14 + 16))(v18, v4, v2);
  OUTLINED_FUNCTION_33();
  RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v10, v28, v29, v30, v31, v0, v18, v25, v12, v26, v27, 0, v2);
  (*(v14 + 8))(v4, v2);
  OUTLINED_FUNCTION_18();
}

void RREntity.init<A>(id:appBundleId:typedValue:intentEntity:group:)()
{
  OUTLINED_FUNCTION_19_0();
  v30 = v1;
  v3 = v2;
  v5 = v4;
  v31 = v6;
  v32 = v7;
  v28 = v9;
  v29 = v8;
  v33 = v10;
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v17);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_13();
  v19 = sub_268C88A34();
  OUTLINED_FUNCTION_29(v19);
  sub_268C88A24();
  v20 = MEMORY[0x26D629DB0]();
  if (v20)
  {
    v21 = v20;
    sub_268C644F0(v5, v0);
    v22 = OUTLINED_FUNCTION_37();
    v23(v22);
    OUTLINED_FUNCTION_33();
    RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v29, v31, v30, v32, v21, v0, v16, v24, v28, v26, v27, 0, v33);
  }

  else
  {

    v25 = sub_268C6E0B8();
    OUTLINED_FUNCTION_32(&type metadata for RREntityError, v25);
    swift_willThrow();
  }

  (*(v12 + 8))(v3, v33);
  sub_268C64978(v5);
  OUTLINED_FUNCTION_18();
}

{
  OUTLINED_FUNCTION_19_0();
  v29 = v1;
  v30 = v2;
  v4 = v3;
  v6 = v5;
  v37 = v7;
  v9 = v8;
  v32 = v11;
  v33 = v10;
  v31 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v13);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v14);
  v16 = v28 - v15;
  v18 = *v4;
  v17 = v4[1];
  v19 = v4[2];
  v20 = sub_268C88A34();
  OUTLINED_FUNCTION_29(v20);
  sub_268C88A24();
  v21 = MEMORY[0x26D629DB0]();
  if (v21)
  {
    v22 = v21;
    v28[1] = v0;
    sub_268C644F0(v37, v16);
    v34 = v18;
    v35 = v17;
    v36 = v19;
    v27 = v29;
    OUTLINED_FUNCTION_33();
    RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v31, v33, v32, v9, v22, v16, v6, v23, v30, v25, v26, 0, v27);
    sub_268C64978(v37);
  }

  else
  {

    v24 = sub_268C6E0B8();
    OUTLINED_FUNCTION_32(&type metadata for RREntityError, v24);
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_268C64978(v37);
  }

  OUTLINED_FUNCTION_18();
}

void RREntity.init<A>(id:appBundleId:usoEntity:intentEntity:group:restrictedEntityKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_0();
  v23 = v22;
  v25 = v24;
  v54 = v26;
  v55 = v27;
  v52 = v28;
  v53 = v29;
  v50 = v31;
  v51 = v30;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1();
  v35 = v34 - v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v36);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v37);
  v39 = &v49 - v38;
  v49 = *v25;
  v40 = *(v25 + 2);
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  v45 = OUTLINED_FUNCTION_26();
  v46(v45);
  v56 = v49;
  v57 = v40;
  RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v51, v52, v53, v54, v55, v39, v35, &v56, v50, MEMORY[0x277D84F90], v23, a21, a22);
  v47 = OUTLINED_FUNCTION_27();
  v48(v47);
  OUTLINED_FUNCTION_18();
}

{
  OUTLINED_FUNCTION_19_0();
  v24 = v23;
  v26 = v25;
  v47 = v27;
  v48 = v28;
  v46 = v29;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v38);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_23();
  v45 = *v26;
  v40 = *(v26 + 2);
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  v49 = v45;
  v50 = v40;
  RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v35, v33, v31, v46, v47, v22, v48, &v49, v37, MEMORY[0x277D84F90], v24, a21, a22);
  OUTLINED_FUNCTION_18();
}

void RREntity.init<A>(id:appBundleId:usoEntity:intentEntity:group:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_19_0();
  v47 = v23;
  v48 = v22;
  v49 = v24;
  v45 = v25;
  v46 = v26;
  v28 = v27;
  v30 = v29;
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_1();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v35);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_22();

  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  v41 = OUTLINED_FUNCTION_26();
  v42(v41);
  memset(v50, 0, sizeof(v50));
  RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v28, v45, v46, v48, v49, v21, v34, v50, v30, v47, 0, 0, a21);
  v43 = OUTLINED_FUNCTION_27();
  v44(v43);
  OUTLINED_FUNCTION_18();
}

{
  OUTLINED_FUNCTION_19_0();
  v23 = v22;
  v25 = v24;
  v46 = v26;
  v47 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v38);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_23();
  v45 = *v25;
  v40 = *(v25 + 2);
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  v48 = v45;
  v49 = v40;
  RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v35, v33, v31, v29, v46, v21, v47, &v48, v37, v23, 0, 0, a21);
  OUTLINED_FUNCTION_18();
}

void RREntity.init<A>(id:appBundleId:typedValue:intentEntity:group:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_19_0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v34);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_13();

  v36 = sub_268C88A34();
  OUTLINED_FUNCTION_29(v36);
  sub_268C88A24();
  v37 = MEMORY[0x26D629DB0]();
  if (v37)
  {
    v38 = v37;
    sub_268C644F0(v27, v21);
    (*(v29 + 16))(v33, v25, a21);
    v39 = OUTLINED_FUNCTION_39();
    RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v39, v40, v41, v42, v38, v21, v33, v43, v44, v23, 0, 0, a21);
  }

  else
  {

    v45 = sub_268C6E0B8();
    OUTLINED_FUNCTION_32(&type metadata for RREntityError, v45);
    swift_willThrow();
  }

  (*(v29 + 8))(v25, a21);
  sub_268C64978(v27);
  OUTLINED_FUNCTION_18();
}

{
  OUTLINED_FUNCTION_19_0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v28);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_22();
  v30 = sub_268C88A34();
  OUTLINED_FUNCTION_29(v30);
  sub_268C88A24();
  v31 = MEMORY[0x26D629DB0]();
  if (v31)
  {
    v32 = v31;
    v33 = OUTLINED_FUNCTION_12();
    sub_268C644F0(v33, v34);
    v35 = OUTLINED_FUNCTION_39();
    RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v35, v36, v37, v38, v32, v21, v25, v39, v40, v23, 0, 0, a21);
    sub_268C64978(v27);
  }

  else
  {

    v41 = sub_268C6E0B8();
    OUTLINED_FUNCTION_32(&type metadata for RREntityError, v41);
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_268C64978(v27);
  }

  OUTLINED_FUNCTION_18();
}

uint64_t static RREntity.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_268C88FD4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_268C88FD4() & 1) == 0)
  {
    return 0;
  }

  sub_268C88AC4();
  v6 = sub_268C88A74();
  v8 = v7;

  sub_268C88AC4();
  v9 = sub_268C88A74();
  v11 = v10;

  if (v6 == v9 && v8 == v11)
  {
  }

  else
  {
    v13 = sub_268C88FD4();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = type metadata accessor for RREntity(0);
  OUTLINED_FUNCTION_36();
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v19 = *v17 == *v18 && v15 == v16;
    if (!v19 && (sub_268C88FD4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v20 = v14[9];
  v22 = *(a1 + v20);
  v21 = *(a1 + v20 + 8);
  v23 = *(a2 + v20 + 8);
  if (v21 >> 60 == 15)
  {
    if (v23 >> 60 == 15)
    {
      v24 = OUTLINED_FUNCTION_7();
      sub_268C65EE0(v24, v25);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v23 >> 60 == 15)
  {
LABEL_31:
    v26 = OUTLINED_FUNCTION_7();
    sub_268C65EE0(v26, v27);
    v28 = OUTLINED_FUNCTION_12();
    sub_268C65EE0(v28, v29);
    return 0;
  }

  v30 = OUTLINED_FUNCTION_7();
  v31 = MEMORY[0x26D629CA0](v30);
  v32 = OUTLINED_FUNCTION_12();
  sub_268C65EE0(v32, v33);
  sub_268C65EE0(v22, v21);
  if ((v31 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v34 = v14[10];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 8);
  v37 = (a2 + v34);
  v38 = v37[1];
  if (!v36)
  {
    if (!v38)
    {

      goto LABEL_47;
    }

LABEL_42:

    return 0;
  }

  if (!v38)
  {
    goto LABEL_42;
  }

  v39 = v35[2];
  v40 = v37[2];
  if (*v35 == *v37 && v36 == v38)
  {
    OUTLINED_FUNCTION_34();
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v42 = sub_268C88FD4();
    OUTLINED_FUNCTION_34();
    swift_bridgeObjectRetain_n();
    if ((v42 & 1) == 0)
    {
      OUTLINED_FUNCTION_34();
      swift_bridgeObjectRelease_n();
      return 0;
    }
  }

  OUTLINED_FUNCTION_34();
  swift_bridgeObjectRelease_n();
  if (v39 != v40)
  {
    return 0;
  }

LABEL_47:
  if ((sub_268C6F4CC(*(a1 + v14[11]), *(a2 + v14[11])) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_36();
  result = (v43 | v44) == 0;
  if (v43 && v44)
  {
    if (*v45 == *v46 && v43 == v44)
    {
      return 1;
    }

    else
    {

      return sub_268C88FD4();
    }
  }

  return result;
}

uint64_t sub_268C6F4CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(a1 + v3 + 32);
      v5 = *(a1 + v3 + 48);
      v6 = *(a2 + v3 + 32);
      v7 = *(a2 + v3 + 48);
      v8 = *(a2 + v3 + 80);
      v9 = *(a2 + v3 + 40);
      v10 = *(a2 + v3 + 56);
      switch(*(a1 + v3 + 80))
      {
        case 1:
          if (v8 != 1)
          {
            return 0;
          }

          v31 = *(a1 + v3 + 32);
          v32 = *(a2 + v3 + 32);
          if (*(v4.i64[0] + 16) != *(v6.i64[0] + 16))
          {
            return 0;
          }

          v62 = *(a2 + v3 + 40);
          v63 = *(a2 + v3 + 72);
          v33 = *(a2 + v3 + 64);
          v65 = *(a2 + v3 + 48);
          v60 = *(a1 + v3 + 72);
          sub_268C704A0(v4.i64[0], *(a1 + v3 + 40), *(a1 + v3 + 48), *(a1 + v3 + 56), *(a1 + v3 + 64), v60, 1);
          sub_268C704A0(v32, v9, v65, v10, v33, v63, 1);
          v34 = OUTLINED_FUNCTION_38();
          sub_268C704A0(v34, v35, v36, v37, v38, v60, 1);
          v39 = sub_268C7C41C(v31);

          v41 = sub_268C7C41C(v40);
          v61 = sub_268C7C4E8(v39, v41);

          sub_268C704F4(v32, v62, v65, v10, v33, v63, 1);
          v42 = OUTLINED_FUNCTION_38();
          sub_268C704F4(v42, v43, v44, v45, v46, v60, 1);
          v47 = v61;
          goto LABEL_30;
        case 2:
          if (v8 != 2)
          {
            return 0;
          }

          v12 = (v6.i8[0] ^ v4.i8[0]);
          OUTLINED_FUNCTION_21();
          sub_268C704A0(v13, v14, v15, v16, v17, v18, 2);
          if (v12)
          {
            return 0;
          }

          goto LABEL_31;
        case 3:
          if (v8 != 3)
          {
            return 0;
          }

          OUTLINED_FUNCTION_25();
          if ((v22 & 1) == 0)
          {
            goto LABEL_38;
          }

          if (!v20 || v21 != v19)
          {
            goto LABEL_38;
          }

          goto LABEL_22;
        case 4:
          if (v8 != 4)
          {
            return 0;
          }

          if (v6.i8[0] != v4.i8[0])
          {
            goto LABEL_38;
          }

          goto LABEL_22;
        case 5:
          if (v8 != 5)
          {
            return 0;
          }

          v48 = vmovn_s64(vceqq_s64(v4, v6));
          if ((v48.i32[0] & v48.i32[1] & 1) == 0)
          {
            v64 = *(a1 + v3 + 48);
            v66 = *(a2 + v3 + 48);
            v49 = sub_268C88FD4();
            v5 = v64;
            v7 = v66;
            if ((v49 & 1) == 0)
            {
              return 0;
            }
          }

          v50 = vmovn_s64(vceqzq_s64(vzip2q_s64(v7, v5)));
          v47 = v50.i8[0];
          if (v50.i8[4])
          {
LABEL_30:
            if ((v47 & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            if (v50.i8[0])
            {
              return 0;
            }

            v51 = vmovn_s64(vceqq_s64(v5, v7));
            if ((v51.i32[0] & v51.i32[1] & 1) == 0 && (sub_268C88FD4() & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_31;
        default:
          if (*(a2 + v3 + 80))
          {
            return 0;
          }

          OUTLINED_FUNCTION_25();
          if ((v11 & 1) == 0)
          {
LABEL_38:
            OUTLINED_FUNCTION_21();
            sub_268C704A0(v53, v54, v55, v56, v57, v58, v59);
            return 0;
          }

LABEL_22:
          OUTLINED_FUNCTION_21();
          sub_268C704A0(v24, v25, v26, v27, v28, v29, v30);
LABEL_31:
          v3 += 56;
          if (!--v2)
          {
            return 1;
          }

          break;
      }
    }
  }

  return 1;
}

void RREntity.convertData<A>(to:)()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v5 = v4;
  if (*(v0 + *(type metadata accessor for RREntity(0) + 36) + 8) >> 60 == 15)
  {
    OUTLINED_FUNCTION_16();
    __swift_storeEnumTagSinglePayload(v6, v7, v8, v3);
  }

  else
  {
    v9 = sub_268C88934();
    OUTLINED_FUNCTION_29(v9);
    v10 = OUTLINED_FUNCTION_12();
    sub_268C66A48(v10, v11);
    sub_268C88924();
    OUTLINED_FUNCTION_37();
    sub_268C88914();
    if (v1)
    {

      v12 = OUTLINED_FUNCTION_12();
      sub_268C65EE0(v12, v13);
    }

    else
    {
      v14 = OUTLINED_FUNCTION_12();
      sub_268C65EE0(v14, v15);

      __swift_storeEnumTagSinglePayload(v5, 0, 1, v3);
    }
  }

  OUTLINED_FUNCTION_18();
}

void *RREntity.convertData<A>(to:)(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for RREntity(0) + 36);
  v6 = *(v5 + 8);
  if (v6 >> 60 == 15)
  {
    return 0;
  }

  v8 = *v5;
  sub_268C66A48(*v5, *(v5 + 8));
  v7 = static RRCoder.decode<A>(_:from:)(a1, v8, v6, a2);
  sub_268C65EE0(v8, v6);
  return v7;
}

uint64_t sub_268C6F9BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
    if (v6 || (sub_268C88FD4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7469746E456F7375 && a2 == 0xE900000000000079;
      if (v7 || (sub_268C88FD4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C61566465707974 && a2 == 0xEA00000000006575;
        if (v8 || (sub_268C88FD4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
          if (v9 || (sub_268C88FD4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1635017060 && a2 == 0xE400000000000000;
            if (v10 || (sub_268C88FD4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
              if (v11 || (sub_268C88FD4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
                if (v12 || (sub_268C88FD4() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000013 && 0x8000000268C8D900 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_268C88FD4();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_268C6FC94(unsigned __int8 a1)
{
  sub_268C89064();
  MEMORY[0x26D62A380](a1);
  return sub_268C890A4();
}

uint64_t sub_268C6FCF0(uint64_t a1)
{
  v2 = *v1;
  sub_268C89064();
  MEMORY[0x26D62A380](v2);
  return sub_268C890A4();
}

uint64_t sub_268C6FD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C6F9BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C6FD7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268C6FC8C();
  *a1 = result;
  return result;
}

uint64_t sub_268C6FDA4(uint64_t a1)
{
  v2 = sub_268C663B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C6FDE0(uint64_t a1)
{
  v2 = sub_268C663B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RREntityError.hashValue.getter()
{
  sub_268C89064();
  MEMORY[0x26D62A380](0);
  return sub_268C890A4();
}

uint64_t sub_268C6FECC(uint64_t a1)
{
  sub_268C89064();
  MEMORY[0x26D62A380](0);
  return sub_268C890A4();
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

unint64_t sub_268C6FF64()
{
  result = qword_280D69658;
  if (!qword_280D69658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69658);
  }

  return result;
}

unint64_t sub_268C6FFB8()
{
  result = qword_280D693B0;
  if (!qword_280D693B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D693B0);
  }

  return result;
}

unint64_t sub_268C70010()
{
  result = qword_2802D4678;
  if (!qword_2802D4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4678);
  }

  return result;
}

uint64_t sub_268C7008C(uint64_t a1)
{
  v1 = sub_268C88BC4();
  if (v2 <= 0x3F)
  {
    sub_268C7022C(319);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_268C70284(319, &qword_280D696A0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_268C70284(319, qword_280D69988, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v8 > 0x3F)
        {
          return v7;
        }

        sub_268C70284(319, qword_280D698B8, &type metadata for GroupIdentifier, MEMORY[0x277D83D88]);
        if (v9 > 0x3F)
        {
          return v7;
        }

        sub_268C70284(319, &qword_280D69698, &type metadata for RRMetadata, MEMORY[0x277D83940]);
        if (v10 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_268C7022C(uint64_t a1)
{
  if (!qword_280D696A8[0])
  {
    sub_268C88C24();
    v1 = sub_268C88D94();
    if (!v2)
    {
      atomic_store(v1, qword_280D696A8);
    }
  }
}

void sub_268C70284(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for RREntityError(_BYTE *result, int a2, int a3)
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

unint64_t sub_268C7039C()
{
  result = qword_2802D4680;
  if (!qword_2802D4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4680);
  }

  return result;
}

unint64_t sub_268C703F4()
{
  result = qword_280D69538;
  if (!qword_280D69538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69538);
  }

  return result;
}

unint64_t sub_268C7044C()
{
  result = qword_280D69540;
  if (!qword_280D69540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69540);
  }

  return result;
}

uint64_t sub_268C704A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != 1)
  {
    if (a7 != 5)
    {
      return v8;
    }
  }
}

uint64_t sub_268C704F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != 1)
  {
    if (a7 != 5)
    {
      return v8;
    }
  }
}

uint64_t OUTLINED_FUNCTION_40_1()
{

  return type metadata accessor for RREntity(0);
}

uint64_t RRResult.description.getter()
{
  v0 = type metadata accessor for RRCandidate(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v4 = v3 - v2;
  type metadata accessor for RRResult(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v8 = (v7 - v6);
  OUTLINED_FUNCTION_11_0();
  v9 = OUTLINED_FUNCTION_26_0();
  sub_268C72E38(v9, v10);
  v11 = 0x686374616D206F4ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = *v8;
      OUTLINED_FUNCTION_22_0();
      sub_268C88DF4();

      OUTLINED_FUNCTION_6_0();
      v25 = v24 | 0xC;
      goto LABEL_6;
    case 2u:
      v23 = *v8;
      OUTLINED_FUNCTION_22_0();
      sub_268C88DF4();

      OUTLINED_FUNCTION_6_0();
LABEL_6:
      v30 = v25;
      v26 = MEMORY[0x26D62A020](v23, v0);
      v21 = v27;

      v22 = v26;
      goto LABEL_7;
    case 3u:
      v16 = *v8;
      OUTLINED_FUNCTION_22_0();
      sub_268C88DF4();

      OUTLINED_FUNCTION_6_0();
      v30 = v17 + 10;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4688, &qword_268C89A10);
      v19 = MEMORY[0x26D62A020](v16, v18);
      v21 = v20;

      v22 = v19;
LABEL_7:
      MEMORY[0x26D629FC0](v22, v21);

      v11 = v30;
      break;
    case 4u:
      return v11;
    default:
      sub_268C72C5C(v8, v4);
      sub_268C88DF4();

      OUTLINED_FUNCTION_6_0();
      v29 = v12 + 2;
      v13 = RREntity.description.getter();
      MEMORY[0x26D629FC0](v13);

      v14 = OUTLINED_FUNCTION_27_0();
      MEMORY[0x26D629FC0](v14, 0xE800000000000000);
      sub_268C88D54();
      MEMORY[0x26D629FC0](0, 0xE000000000000000);

      v11 = v29;
      OUTLINED_FUNCTION_12_0();
      sub_268C72EE8(v4, v15);
      break;
  }

  return v11;
}

uint64_t sub_268C708CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74614D646E756F66 && a2 == 0xEA00000000006863;
  if (v4 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000268C8D9D0 == a2;
    if (v6 || (sub_268C88FD4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000268C8D9F0 == a2;
      if (v7 || (sub_268C88FD4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x8000000268C8DA10 == a2;
        if (v8 || (sub_268C88FD4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x686374614D6F6ELL && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_268C88FD4();

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

unint64_t sub_268C70A88(char a1)
{
  result = 0x74614D646E756F66;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0x686374614D6F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268C70B40(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74616469646E6163 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_268C88FD4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268C70BF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_268C88FD4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268C70C78()
{
  sub_268C89064();
  MEMORY[0x26D62A380](0);
  return sub_268C890A4();
}

uint64_t sub_268C70CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C708CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C70CF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268C70A80();
  *a1 = result;
  return result;
}

uint64_t sub_268C70D20(uint64_t a1)
{
  v2 = sub_268C7296C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C70D5C(uint64_t a1)
{
  v2 = sub_268C7296C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C70DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C70B40(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268C70DE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268C6FE94();
  *a1 = result & 1;
  return result;
}

uint64_t sub_268C70E14(uint64_t a1)
{
  v2 = sub_268C72BC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C70E50(uint64_t a1)
{
  v2 = sub_268C72BC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C70E90(uint64_t a1)
{
  v2 = sub_268C72B18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C70ECC(uint64_t a1)
{
  v2 = sub_268C72B18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C70F08(uint64_t a1)
{
  v2 = sub_268C72B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C70F44(uint64_t a1)
{
  v2 = sub_268C72B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C70F80(uint64_t a1)
{
  v2 = sub_268C72A14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C70FBC(uint64_t a1)
{
  v2 = sub_268C72A14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C70FFC(uint64_t a1)
{
  v2 = sub_268C729C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C71038(uint64_t a1)
{
  v2 = sub_268C729C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RRResult.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4690, &qword_268C89A18);
  OUTLINED_FUNCTION_0_0();
  v70 = v4;
  v71 = v3;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19();
  v68 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4698, &qword_268C89A20);
  OUTLINED_FUNCTION_0_0();
  v72 = v8;
  v73 = v7;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v69 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D46A0, &qword_268C89A28);
  OUTLINED_FUNCTION_0_0();
  v66 = v12;
  v67 = v11;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  v65 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D46A8, &qword_268C89A30);
  OUTLINED_FUNCTION_0_0();
  v63 = v16;
  v64 = v15;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19();
  v62 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D46B0, &qword_268C89A38);
  OUTLINED_FUNCTION_0_0();
  v60 = v20;
  v61 = v19;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  type metadata accessor for RRCandidate(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1();
  v25 = OUTLINED_FUNCTION_23_0();
  type metadata accessor for RRResult(v25);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1();
  v29 = (v28 - v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D46B8, &qword_268C89A40);
  OUTLINED_FUNCTION_0_0();
  v75 = v31;
  v76 = v30;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C7296C();
  sub_268C890F4();
  OUTLINED_FUNCTION_11_0();
  sub_268C72E38(v74, v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v53 = *v29;
      LOBYTE(v77) = 1;
      sub_268C72B6C();
      v44 = v62;
      OUTLINED_FUNCTION_15_0(&type metadata for RRResult.NeedsDisambiguationCodingKeys, &v77);
      v77 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4688, &qword_268C89A10);
      OUTLINED_FUNCTION_13_0();
      sub_268C72D68(v54, v55, v56);
      v48 = v64;
      OUTLINED_FUNCTION_20_0(&v77, v57);
      v50 = v63;
      goto LABEL_7;
    case 2u:
      v43 = *v29;
      LOBYTE(v77) = 2;
      sub_268C72B18();
      v44 = v65;
      OUTLINED_FUNCTION_15_0(&type metadata for RRResult.FoundMatchPluralCodingKeys, &v77);
      v77 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4688, &qword_268C89A10);
      OUTLINED_FUNCTION_13_0();
      sub_268C72D68(v45, v46, v47);
      v48 = v67;
      OUTLINED_FUNCTION_20_0(&v77, v49);
      v50 = v66;
      goto LABEL_7;
    case 3u:
      v51 = *v29;
      LOBYTE(v77) = 3;
      sub_268C72A14();
      v44 = v69;
      OUTLINED_FUNCTION_15_0(&type metadata for RRResult.NeedsDisambiguationPluralCodingKeys, &v77);
      v77 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D46C8, &qword_268C89A48);
      sub_268C72A68();
      v48 = v73;
      OUTLINED_FUNCTION_20_0(&v77, v52);
      v50 = v72;
LABEL_7:
      (*(v50 + 8))(v44, v48);
      v58 = OUTLINED_FUNCTION_25_0();
      v59(v58);

      break;
    case 4u:
      LOBYTE(v77) = 4;
      sub_268C729C0();
      v40 = v68;
      sub_268C88F44();
      (*(v70 + 8))(v40, v71);
      v41 = OUTLINED_FUNCTION_16_0();
      result = v42(v41);
      break;
    default:
      sub_268C72C5C(v29, v1);
      LOBYTE(v77) = 0;
      sub_268C72BC0();
      OUTLINED_FUNCTION_15_0(&type metadata for RRResult.FoundMatchCodingKeys, &v77);
      OUTLINED_FUNCTION_2_0();
      sub_268C72DF0(v33, v34, &protocol conformance descriptor for RRCandidate);
      v35 = v61;
      sub_268C88FB4();
      (*(v60 + 8))(v23, v35);
      OUTLINED_FUNCTION_12_0();
      sub_268C72EE8(v1, v36);
      v37 = OUTLINED_FUNCTION_25_0();
      result = v38(v37);
      break;
  }

  return result;
}

uint64_t RRResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D46F0, &qword_268C89A50);
  OUTLINED_FUNCTION_0_0();
  v113 = v3;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19();
  v118 = v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D46F8, &qword_268C89A58);
  OUTLINED_FUNCTION_0_0();
  v116 = v6;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19();
  v119 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4700, &qword_268C89A60);
  OUTLINED_FUNCTION_0_0();
  v114 = v10;
  v115 = v9;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v126 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4708, &qword_268C89A68);
  OUTLINED_FUNCTION_0_0();
  v110 = v14;
  v111 = v13;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  v117 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4710, &qword_268C89A70);
  OUTLINED_FUNCTION_0_0();
  v108 = v18;
  v109 = v17;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19();
  v120 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4718, &qword_268C89A78);
  OUTLINED_FUNCTION_0_0();
  v124 = v22;
  v125 = v21;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v23);
  v24 = OUTLINED_FUNCTION_23_0();
  v123 = type metadata accessor for RRResult(v24);
  OUTLINED_FUNCTION_3();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v106 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = v106 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = v106 - v36;
  MEMORY[0x28223BE20](v35);
  v39 = v106 - v38;
  v40 = a1[3];
  v127 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v40);
  sub_268C7296C();
  v41 = v128;
  sub_268C890D4();
  if (v41)
  {
    goto LABEL_8;
  }

  v107 = v37;
  v106[2] = v34;
  v106[3] = v28;
  v106[4] = v31;
  v128 = v39;
  v42 = sub_268C88F34();
  result = sub_268C72C14(v42, 0);
  if (v45 == v46 >> 1)
  {
LABEL_7:
    v56 = v123;
    v57 = sub_268C88E34();
    swift_allocError();
    v59 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4720, &qword_268C89A80);
    *v59 = v56;
    sub_268C88EA4();
    sub_268C88E14();
    (*(*(v57 - 8) + 104))(v59, *MEMORY[0x277D84160], v57);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = OUTLINED_FUNCTION_5_0();
    v61(v60);
LABEL_8:
    v62 = v127;
    return __swift_destroy_boxed_opaque_existential_0Tm(v62);
  }

  v106[1] = 0;
  if (v45 < (v46 >> 1))
  {
    v47 = *(v44 + v45);
    sub_268C73C5C(v45 + 1, v46 >> 1, result, v44, v45, v46);
    v49 = v48;
    v51 = v50;
    swift_unknownObjectRelease();
    if (v49 == v51 >> 1)
    {
      v52 = v121;
      switch(v47)
      {
        case 1:
          LOBYTE(v129) = 1;
          sub_268C72B6C();
          OUTLINED_FUNCTION_7_0(&type metadata for RRResult.NeedsDisambiguationCodingKeys, &v129);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4688, &qword_268C89A10);
          OUTLINED_FUNCTION_10_0();
          sub_268C72D68(v83, v84, v85);
          v86 = v111;
          sub_268C88F24();
          swift_unknownObjectRelease();
          v102 = OUTLINED_FUNCTION_16_0();
          v103(v102);
          v104 = OUTLINED_FUNCTION_18_0();
          v105(v104);
          OUTLINED_FUNCTION_17_0(v129);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_0();
          v101 = v86;
          goto LABEL_15;
        case 2:
          LOBYTE(v129) = 2;
          sub_268C72B18();
          OUTLINED_FUNCTION_7_0(&type metadata for RRResult.FoundMatchPluralCodingKeys, &v129);
          v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4688, &qword_268C89A10);
          OUTLINED_FUNCTION_10_0();
          v72 = sub_268C72D68(v69, v70, v71);
          OUTLINED_FUNCTION_28_0(v68, v73, v74, v75, v72);
          v76 = v124;
          swift_unknownObjectRelease();
          v87 = OUTLINED_FUNCTION_21_0();
          v88(v87);
          v89 = v76 + 8;
          v90 = OUTLINED_FUNCTION_18_0();
          v91(v90);
          OUTLINED_FUNCTION_17_0(v129);
          goto LABEL_14;
        case 3:
          LOBYTE(v129) = 3;
          sub_268C72A14();
          OUTLINED_FUNCTION_7_0(&type metadata for RRResult.NeedsDisambiguationPluralCodingKeys, &v129);
          v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D46C8, &qword_268C89A48);
          v78 = sub_268C72CB8();
          OUTLINED_FUNCTION_28_0(v77, v79, v80, v81, v78);
          v82 = v124;
          swift_unknownObjectRelease();
          v92 = OUTLINED_FUNCTION_21_0();
          v93(v92);
          v89 = v82 + 8;
          v94 = OUTLINED_FUNCTION_18_0();
          v95(v94);
          OUTLINED_FUNCTION_17_0(v129);
LABEL_14:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_0();
          v67 = v128;
          sub_268C72C5C(v89, v128);
          v96 = v127;
          v52 = v121;
          goto LABEL_17;
        case 4:
          LOBYTE(v129) = 4;
          sub_268C729C0();
          OUTLINED_FUNCTION_7_0(&type metadata for RRResult.NoMatchCodingKeys, &v129);
          swift_unknownObjectRelease();
          v63 = OUTLINED_FUNCTION_16_0();
          v64(v63);
          v65 = OUTLINED_FUNCTION_5_0();
          v66(v65);
          v67 = v128;
          swift_storeEnumTagMultiPayload();
          goto LABEL_16;
        default:
          LOBYTE(v129) = 0;
          sub_268C72BC0();
          OUTLINED_FUNCTION_7_0(&type metadata for RRResult.FoundMatchCodingKeys, &v129);
          type metadata accessor for RRCandidate(0);
          OUTLINED_FUNCTION_2_0();
          sub_268C72DF0(v53, v54, &protocol conformance descriptor for RRCandidate);
          v55 = v107;
          sub_268C88F24();
          swift_unknownObjectRelease();
          v97 = OUTLINED_FUNCTION_26_0();
          v98(v97);
          v99 = OUTLINED_FUNCTION_5_0();
          v100(v99);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_0();
          v101 = v55;
LABEL_15:
          v67 = v128;
          sub_268C72C5C(v101, v128);
LABEL_16:
          v96 = v127;
LABEL_17:
          OUTLINED_FUNCTION_1_0();
          sub_268C72C5C(v67, v52);
          v62 = v96;
          break;
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v62);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t RRCandidate.init(entity:score:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  OUTLINED_FUNCTION_14_0();
  sub_268C72C5C(v4, v5);
  result = type metadata accessor for RRCandidate(0);
  *(a1 + *(result + 20)) = a2;
  return result;
}

uint64_t RRCandidate.description.getter()
{
  v0 = RREntity.description.getter();
  MEMORY[0x26D629FC0](v0);

  v1 = OUTLINED_FUNCTION_27_0();
  MEMORY[0x26D629FC0](v1, 0xE800000000000000);
  type metadata accessor for RRCandidate(0);
  sub_268C88D54();
  return 0;
}

uint64_t sub_268C722C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v4 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_268C88FD4();

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

uint64_t sub_268C72390(char a1)
{
  sub_268C89064();
  MEMORY[0x26D62A380](a1 & 1);
  return sub_268C890A4();
}

uint64_t sub_268C723D8(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x797469746E65;
  }
}

uint64_t sub_268C72418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C722C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C72440@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268C72388();
  *a1 = result;
  return result;
}

uint64_t sub_268C72468(uint64_t a1)
{
  v2 = sub_268C72E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C724A4(uint64_t a1)
{
  v2 = sub_268C72E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RRCandidate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4740, &qword_268C89A88);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C72E94();
  sub_268C890F4();
  v12[15] = 0;
  type metadata accessor for RREntity(0);
  OUTLINED_FUNCTION_9_0();
  sub_268C72DF0(v9, v10, &protocol conformance descriptor for RREntity);
  sub_268C88FB4();
  if (!v1)
  {
    type metadata accessor for RRCandidate(0);
    v12[14] = 1;
    sub_268C88F94();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t RRCandidate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for RREntity(0);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v23 = v7 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4748, &qword_268C89A90);
  OUTLINED_FUNCTION_0_0();
  v21 = v8;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_23_0();
  v11 = type metadata accessor for RRCandidate(v10);
  OUTLINED_FUNCTION_3();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C72E94();
  sub_268C890D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  OUTLINED_FUNCTION_9_0();
  sub_268C72DF0(v16, v17, &protocol conformance descriptor for RREntity);
  sub_268C88F24();
  OUTLINED_FUNCTION_14_0();
  sub_268C72C5C(v23, v15);
  sub_268C88F04();
  v19 = v18;
  (*(v21 + 8))(v3, v24);
  *(v15 + *(v11 + 20)) = v19;
  sub_268C72E38(v15, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_268C72EE8(v15, type metadata accessor for RRCandidate);
}

unint64_t sub_268C7296C()
{
  result = qword_280D69530;
  if (!qword_280D69530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69530);
  }

  return result;
}

unint64_t sub_268C729C0()
{
  result = qword_280D69518;
  if (!qword_280D69518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69518);
  }

  return result;
}

unint64_t sub_268C72A14()
{
  result = qword_2802D46C0;
  if (!qword_2802D46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D46C0);
  }

  return result;
}

unint64_t sub_268C72A68()
{
  result = qword_2802D46D0;
  if (!qword_2802D46D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D46C8, &qword_268C89A48);
    sub_268C72D68(&qword_2802D46D8, &qword_280D69390, &protocol conformance descriptor for RRCandidate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D46D0);
  }

  return result;
}

unint64_t sub_268C72B18()
{
  result = qword_2802D46E0;
  if (!qword_2802D46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D46E0);
  }

  return result;
}

unint64_t sub_268C72B6C()
{
  result = qword_2802D46E8;
  if (!qword_2802D46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D46E8);
  }

  return result;
}

unint64_t sub_268C72BC0()
{
  result = qword_280D691C8;
  if (!qword_280D691C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D691C8);
  }

  return result;
}

uint64_t sub_268C72C14(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_268C72C5C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_24_0();
  v5(v4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_268C72CB8()
{
  result = qword_2802D4728;
  if (!qword_2802D4728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D46C8, &qword_268C89A48);
    sub_268C72D68(&qword_2802D4730, &qword_2802D4738, &protocol conformance descriptor for RRCandidate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4728);
  }

  return result;
}

uint64_t sub_268C72D68(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D4688, &qword_268C89A10);
    OUTLINED_FUNCTION_2_0();
    sub_268C72DF0(a2, v7, a3);
    OUTLINED_FUNCTION_26_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268C72DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_268C72E38(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_24_0();
  v5(v4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_268C72E94()
{
  result = qword_280D693A8;
  if (!qword_280D693A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D693A8);
  }

  return result;
}

uint64_t sub_268C72EE8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_268C72F48(uint64_t a1)
{
  sub_268C73024(319, &qword_280D69650, type metadata accessor for RRCandidate);
  if (v1 <= 0x3F)
  {
    sub_268C73024(319, &qword_280D69408, sub_268C73070);
    if (v2 <= 0x3F)
    {
      sub_268C73024(319, &qword_280D693F8, sub_268C730C8);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_268C73024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_268C73070(uint64_t a1)
{
  if (!qword_280D69400)
  {
    type metadata accessor for RRCandidate(255);
    v1 = sub_268C88D44();
    if (!v2)
    {
      atomic_store(v1, &qword_280D69400);
    }
  }
}

void sub_268C730C8(uint64_t a1)
{
  if (!qword_280D693F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D4688, &qword_268C89A10);
    v1 = sub_268C88D44();
    if (!v2)
    {
      atomic_store(v1, &qword_280D693F0);
    }
  }
}

uint64_t sub_268C73154(uint64_t a1)
{
  result = type metadata accessor for RREntity(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RRCandidate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RRCandidate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RRResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for RRResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_268C734C0(_BYTE *result, int a2, int a3)
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

unint64_t sub_268C73580()
{
  result = qword_2802D4758;
  if (!qword_2802D4758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4758);
  }

  return result;
}

unint64_t sub_268C735D8()
{
  result = qword_2802D4760;
  if (!qword_2802D4760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4760);
  }

  return result;
}

unint64_t sub_268C73630()
{
  result = qword_2802D4768;
  if (!qword_2802D4768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4768);
  }

  return result;
}

unint64_t sub_268C73688()
{
  result = qword_2802D4770;
  if (!qword_2802D4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4770);
  }

  return result;
}

unint64_t sub_268C736E0()
{
  result = qword_2802D4778;
  if (!qword_2802D4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4778);
  }

  return result;
}

unint64_t sub_268C73738()
{
  result = qword_2802D4780;
  if (!qword_2802D4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4780);
  }

  return result;
}

unint64_t sub_268C73790()
{
  result = qword_280D69398;
  if (!qword_280D69398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69398);
  }

  return result;
}

unint64_t sub_268C737E8()
{
  result = qword_280D693A0;
  if (!qword_280D693A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D693A0);
  }

  return result;
}

unint64_t sub_268C73840()
{
  result = qword_280D694F8;
  if (!qword_280D694F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D694F8);
  }

  return result;
}

unint64_t sub_268C73898()
{
  result = qword_280D69500;
  if (!qword_280D69500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69500);
  }

  return result;
}

unint64_t sub_268C738F0()
{
  result = qword_280D694D8;
  if (!qword_280D694D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D694D8);
  }

  return result;
}

unint64_t sub_268C73948()
{
  result = qword_280D694E0;
  if (!qword_280D694E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D694E0);
  }

  return result;
}

unint64_t sub_268C739A0()
{
  result = qword_280D694E8;
  if (!qword_280D694E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D694E8);
  }

  return result;
}

unint64_t sub_268C739F8()
{
  result = qword_280D694F0;
  if (!qword_280D694F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D694F0);
  }

  return result;
}

unint64_t sub_268C73A50()
{
  result = qword_280D694C8;
  if (!qword_280D694C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D694C8);
  }

  return result;
}

unint64_t sub_268C73AA8()
{
  result = qword_280D694D0;
  if (!qword_280D694D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D694D0);
  }

  return result;
}

unint64_t sub_268C73B00()
{
  result = qword_280D69508;
  if (!qword_280D69508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69508);
  }

  return result;
}

unint64_t sub_268C73B58()
{
  result = qword_280D69510;
  if (!qword_280D69510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69510);
  }

  return result;
}

unint64_t sub_268C73BB0()
{
  result = qword_280D69520;
  if (!qword_280D69520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69520);
  }

  return result;
}

unint64_t sub_268C73C08()
{
  result = qword_280D69528;
  if (!qword_280D69528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69528);
  }

  return result;
}

uint64_t sub_268C73C5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t GroupIdentifier.id.getter()
{
  v1 = *v0;

  return v1;
}

SiriReferenceResolutionDataModel::GroupIdentifier __swiftcall GroupIdentifier.init(id:seq:)(Swift::String id, Swift::Int seq)
{
  *v2 = id;
  v2[1]._countAndFlagsBits = seq;
  result.id = id;
  result.seq = seq;
  return result;
}

uint64_t GroupIdentifier.description.getter()
{
  MEMORY[0x26D629FC0](*v0, v0[1]);
  MEMORY[0x26D629FC0](0x203A71657320, 0xE600000000000000);
  v1 = sub_268C88FC4();
  MEMORY[0x26D629FC0](v1);

  return 540697705;
}

BOOL static GroupIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_268C88FD4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_268C73E44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7431539 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_268C88FD4();

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

uint64_t sub_268C73F04(char a1)
{
  if (a1)
  {
    return 7431539;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_268C73F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C73E44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C73F58(uint64_t a1)
{
  v2 = sub_268C7413C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C73F94(uint64_t a1)
{
  v2 = sub_268C7413C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4788, &qword_268C8A360);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v11[0] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C7413C();
  sub_268C890F4();
  v13 = 0;
  v9 = v11[1];
  sub_268C88F74();
  if (!v9)
  {
    v12 = 1;
    sub_268C88FA4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_268C7413C()
{
  result = qword_280D69570;
  if (!qword_280D69570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69570);
  }

  return result;
}

uint64_t GroupIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4790, &qword_268C8A368);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C7413C();
  sub_268C890D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v6 = sub_268C88EE4();
  v8 = v7;
  v9 = sub_268C88F14();
  v10 = OUTLINED_FUNCTION_1_1();
  v11(v10);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v9;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t GroupIdentifierGenerator.__allocating_init()()
{
  v0 = swift_allocObject();
  GroupIdentifierGenerator.init()();
  return v0;
}

void *GroupIdentifierGenerator.init()()
{
  v1 = v0;
  v2 = sub_268C88A14();
  OUTLINED_FUNCTION_0_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[4] = -1;
  sub_268C88A04();
  v8 = sub_268C889F4();
  v10 = v9;
  (*(v4 + 8))(v7, v2);
  v1[2] = v8;
  v1[3] = v10;
  return v1;
}

uint64_t sub_268C74494@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v4;
    v5 = v1[3];
    *a1 = v1[2];
    a1[1] = v5;
    a1[2] = v4;
  }

  return result;
}

uint64_t GroupIdentifierGenerator.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for GroupIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268C74688()
{
  result = qword_2802D4798;
  if (!qword_2802D4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4798);
  }

  return result;
}

unint64_t sub_268C746E0()
{
  result = qword_280D69560;
  if (!qword_280D69560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69560);
  }

  return result;
}

unint64_t sub_268C74738()
{
  result = qword_280D69568;
  if (!qword_280D69568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69568);
  }

  return result;
}

id sub_268C747BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  v3 = sub_268C88C74();

  return v3;
}

uint64_t RRAnnotatedEntity.group.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group;
  *a1 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group);
  *(a1 + 8) = *(v2 + 8);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_268C74B58(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment;
  result = OUTLINED_FUNCTION_37_0(v5);
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_268C74C34(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_37_0(v5);
  *(v2 + v4) = a1;
}

id sub_268C74CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_268C88C74();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_268C74DBC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_userId);
  OUTLINED_FUNCTION_37_0(v5);
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_268C74E14(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_268C74DBC(v1, v2);
}

uint64_t sub_268C74ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v8 = OUTLINED_FUNCTION_29_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_6(v10);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_22();
  sub_268C6736C(a1, v5, &qword_2802D47B8, &unk_268C8A5B8);
  return a5(v5);
}

unint64_t RRAnnotationName.rawValue.getter()
{
  result = 0x656E6F69746E656DLL;
  switch(*v0)
  {
    case 1:
      result = 0x6E65657263736E6FLL;
      break;
    case 2:
      result = 0x756F726765726F66;
      break;
    case 3:
      result = OUTLINED_FUNCTION_26_1();
      break;
    case 4:
      result = 0x6979616C50776F6ELL;
      break;
    case 5:
      result = 0x744179627261656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268C75048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_268C68144(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268C75098(void *a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_30_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = OUTLINED_FUNCTION_9_1(v5);
  sub_268C689EC(v6, v7);
  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_268C7516C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_67();
  sub_268C679A4(v4, v5, a1);
  return sub_268C65E88(a1, &qword_2802D47B8, &unk_268C8A5B8);
}

uint64_t sub_268C751B0(void *a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_30_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = OUTLINED_FUNCTION_9_1(v5);
  sub_268C68BBC(v6, v7);
  return OUTLINED_FUNCTION_34_0();
}

void sub_268C75250(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_55();
    sub_268C6736C(v4, v5, &qword_2802D47B8, &unk_268C8A5B8);
    v6 = OUTLINED_FUNCTION_29_0();
    sub_268C679A4(v6, v7, v2);
    sub_268C65E88(v2, &qword_2802D47B8, &unk_268C8A5B8);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_29_0();
    sub_268C679A4(v8, v9, v3);
  }

  sub_268C65E88(v3, &qword_2802D47B8, &unk_268C8A5B8);
  free(v3);

  free(v2);
}

uint64_t sub_268C75348(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_49();
  sub_268C679A4(v2, v3, a1);
  return sub_268C65E88(a1, &qword_2802D47B8, &unk_268C8A5B8);
}

uint64_t sub_268C7538C(void *a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_30_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_9_1(v5);
  sub_268C68B50();
  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_268C754B8(void *a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_30_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_9_1(v5);
  sub_268C68EB0();
  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_268C75584(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_26_1();
  sub_268C679A4(v2, v3, a1);
  return sub_268C65E88(a1, &qword_2802D47B8, &unk_268C8A5B8);
}

uint64_t sub_268C755D0(void *a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_30_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_9_1(v5);
  sub_268C68C1C();
  return OUTLINED_FUNCTION_34_0();
}

void sub_268C75654(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = OUTLINED_FUNCTION_55();
    sub_268C6736C(v4, v5, &qword_2802D47B8, &unk_268C8A5B8);
    v6 = OUTLINED_FUNCTION_26_1();
    sub_268C679A4(v6, v7, v2);
    v8 = OUTLINED_FUNCTION_64();
    sub_268C65E88(v8, v9, &unk_268C8A5B8);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_26_1();
    sub_268C679A4(v10, v11, v3);
  }

  sub_268C65E88(v3, &qword_2802D47B8, &unk_268C8A5B8);
  free(v3);

  free(v2);
}

id sub_268C75730(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v5);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = a1;
  a3();

  v10 = sub_268C889E4();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    v11 = sub_268C889B4();
    OUTLINED_FUNCTION_16_1();
    v12 = OUTLINED_FUNCTION_63();
    v13(v12);
  }

  return v11;
}

void sub_268C75844(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v8);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_41();
  if (a3)
  {
    sub_268C889D4();
    v10 = sub_268C889E4();
    v11 = 0;
  }

  else
  {
    v10 = sub_268C889E4();
    v11 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v11, 1, v10);
  v12 = a1;
  a4(v4);
}

uint64_t sub_268C75910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_52();
  sub_268C679A4(v4, v5, a1);
  return sub_268C65E88(a1, &qword_2802D47B8, &unk_268C8A5B8);
}

uint64_t sub_268C75954(void *a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_30_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  v6 = OUTLINED_FUNCTION_9_1(v5);
  sub_268C68E08(v6, v7);
  return OUTLINED_FUNCTION_34_0();
}

id RRAnnotatedEntity.init(id:appBundleId:usoEntity:dataType:data:group:metadata:score:saliencyComputedAt:annotations:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_59(a11);
  v23 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
  sub_268C889E4();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v28 = &v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment];
  *v28 = 0;
  *(v28 + 8) = 1;
  v29 = &v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_userId];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id];
  *v30 = a1;
  *(v30 + 1) = a2;
  v31 = &v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId];
  *v31 = a3;
  *(v31 + 1) = a4;
  *&v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_usoEntity] = a5;
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v36 = &v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType];
  *v36 = a6;
  *(v36 + 1) = a7;
  v37 = &v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data];
  *v37 = a8;
  *(v37 + 1) = a10;
  OUTLINED_FUNCTION_48(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group, v44, v45, v46);
  *&v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_metadata] = a12;
  *&v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score] = a9;
  OUTLINED_FUNCTION_32_0(&v16[v23]);

  v38 = OUTLINED_FUNCTION_29_0();
  sub_268C66A34(v38, v39);
  sub_268C67908(a13, &v16[v23]);
  swift_endAccess();
  OUTLINED_FUNCTION_37_0(v28);
  *v28 = 0;
  *(v28 + 8) = 1;
  *&v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations] = a14;
  OUTLINED_FUNCTION_37_0(v29);
  *v29 = a15;
  *(v29 + 1) = a16;

  v50.receiver = v16;
  v50.super_class = type metadata accessor for RRAnnotatedEntity(0);
  v40 = objc_msgSendSuper2(&v50, sel_init);
  v41 = OUTLINED_FUNCTION_29_0();
  sub_268C65EE0(v41, v42);

  sub_268C65E88(a13, &qword_2802D47B8, &unk_268C8A5B8);
  return v40;
}

id RRAnnotatedEntity.__allocating_init(id:appBundleId:usoEntity:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_21_1();
  v19 = objc_allocWithZone(v17);
  v20 = OUTLINED_FUNCTION_25_1();
  return RRAnnotatedEntity.init(id:appBundleId:usoEntity:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(v21, v22, v23, v24, v25, a6, a7, a8, v20, v27, v28, v29, v30, a13, a14 & 1, a15, a16, a17);
}

void *RRAnnotatedEntity.__allocating_init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  v3 = OUTLINED_FUNCTION_6(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10_1();
  v94 = v4 - v5;
  v7 = MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_60(v7, v8, v9, v10, v11, v12, v13, v14, v78);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  v16 = OUTLINED_FUNCTION_6(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_10_1();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v78 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v78 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47D0, &qword_268C8A5D8);
  OUTLINED_FUNCTION_0_0();
  v28 = v27;
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_44();
  v97 = a1;
  v30 = OUTLINED_FUNCTION_22_1();
  v32 = __swift_project_boxed_opaque_existential_1(v30, v31);
  sub_268C769D8();
  v33 = v96;
  sub_268C890D4();
  if (v33)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
  }

  else
  {
    v34 = v23;
    v92 = v19;
    v93 = v25;
    v96 = v28;
    LOBYTE(v98) = 0;
    OUTLINED_FUNCTION_17_1();
    v35 = sub_268C88EE4();
    v37 = v36;
    OUTLINED_FUNCTION_12_1(1);
    v38 = sub_268C88EE4();
    v40 = v39;
    v91 = v38;
    sub_268C88BC4();
    v100 = 2;
    OUTLINED_FUNCTION_20_1();
    sub_268C67324(v41, v42, MEMORY[0x277D5F4A8]);
    OUTLINED_FUNCTION_6_1();
    sub_268C88F24();
    v87 = v35;
    v88 = v40;
    v89 = v98;
    v90 = v37;
    v44 = sub_268C88C24();
    v45 = v93;
    OUTLINED_FUNCTION_16();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v44);
    LOBYTE(v98) = 3;
    OUTLINED_FUNCTION_19_1();
    sub_268C67324(v49, v50, MEMORY[0x277D72A98]);
    OUTLINED_FUNCTION_17_1();
    sub_268C88F24();
    sub_268C65E88(v45, &qword_2802D4640, &qword_268C89710);
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v44);
    OUTLINED_FUNCTION_16_1();
    (*(v54 + 32))(v45, v34, v44);
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v44);
    OUTLINED_FUNCTION_12_1(4);
    v58 = sub_268C88EB4();
    v59 = v88;
    v84 = v58;
    v86 = v60;
    v100 = 5;
    sub_268C660B8();
    OUTLINED_FUNCTION_17_1();
    sub_268C88ED4();
    if (*(&v98 + 1) >> 60 == 15)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47E0, &unk_268C8A5E0);
      v100 = 5;
      sub_268C76AE8(&qword_2802D47E8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
      OUTLINED_FUNCTION_17_1();
      sub_268C88ED4();
      v62 = v98;
      if (v98)
      {

        *&v98 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4808, &qword_268C8A5F8);
        v84 = sub_268C88C94();
        v86 = v63;
        sub_268C88964();
        swift_allocObject();
        sub_268C88954();
        *&v98 = v62;
        sub_268C76AE8(&qword_2802D4810, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
        *&v85 = sub_268C88944();
        *(&v85 + 1) = v64;
      }

      else
      {
        *&v85 = 0;
        *(&v85 + 1) = 0xF000000000000000;
      }
    }

    else
    {
      v85 = v98;
    }

    v100 = 6;
    sub_268C66154();
    OUTLINED_FUNCTION_17_1();
    sub_268C88ED4();
    v65 = v98;
    v66 = v99;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4668, &qword_268C89730);
    v100 = 7;
    sub_268C78B64(&qword_280D691B8, sub_268C6FFB8, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_6_1();
    sub_268C88ED4();
    v88 = *(&v65 + 1);
    v67 = v98;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47F0, &qword_268C8A5F0);
    v100 = 8;
    sub_268C76A2C();
    OUTLINED_FUNCTION_6_1();
    sub_268C88ED4();
    v83 = v67;
    v68 = *&v98;
    OUTLINED_FUNCTION_12_1(9);
    v80 = sub_268C88EB4();
    v82 = v68;
    v81 = v69;
    OUTLINED_FUNCTION_12_1(10);
    sub_268C88EC4();
    v79 = v70;
    OUTLINED_FUNCTION_36_0();
    sub_268C889E4();
    LOBYTE(v98) = 11;
    OUTLINED_FUNCTION_0_1();
    sub_268C67324(v71, v72, MEMORY[0x277CC95A0]);
    v78 = v26;
    OUTLINED_FUNCTION_17_1();
    sub_268C88ED4();
    sub_268C6736C(v93, v92, &qword_2802D4640, &qword_268C89710);
    *&v98 = v65;
    *(&v98 + 1) = v88;
    v99 = v66;
    if (v83)
    {
      v73 = v83;
    }

    else
    {
      v73 = MEMORY[0x277D84F90];
    }

    if (v79)
    {
      v74 = 0.0;
    }

    else
    {
      v74 = v68;
    }

    sub_268C6736C(v95, v94, &qword_2802D47B8, &unk_268C8A5B8);
    if (v82 == 0.0)
    {
      type metadata accessor for RRAnnotationValue(0);
      v82 = COERCE_DOUBLE(sub_268C88C44());
    }

    v75 = objc_allocWithZone(type metadata accessor for RRAnnotatedEntity(0));
    v32 = RRAnnotatedEntity.init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(v87, v90, v91, v59, v89, v92, v84, v86, v74, v85, *(&v85 + 1), &v98, v73, v94, 0, 1, *&v82, v80, v81);
    sub_268C65E88(v95, &qword_2802D47B8, &unk_268C8A5B8);
    sub_268C65E88(v93, &qword_2802D4640, &qword_268C89710);
    v76 = OUTLINED_FUNCTION_47();
    v77(v76);
    __swift_destroy_boxed_opaque_existential_0Tm(v97);
  }

  return v32;
}

unint64_t sub_268C769D8()
{
  result = qword_2802D47D8;
  if (!qword_2802D47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D47D8);
  }

  return result;
}

unint64_t sub_268C76A2C()
{
  result = qword_2802D47F8;
  if (!qword_2802D47F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D47F0, &qword_268C8A5F0);
    sub_268C67324(&qword_2802D4800, type metadata accessor for RRAnnotationValue, &protocol conformance descriptor for RRAnnotationValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D47F8);
  }

  return result;
}

uint64_t sub_268C76AE8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D47E0, &unk_268C8A5E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_268C76B54(uint64_t a1, uint64_t a2)
{
  v2 = sub_268C88E84();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_268C76BA8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6C646E7542707061;
      break;
    case 2:
      result = 0x7469746E456F7375;
      break;
    case 3:
      result = 0x6C61566465707974;
      break;
    case 4:
      result = 0x6570795461746164;
      break;
    case 5:
      result = 1635017060;
      break;
    case 6:
      result = 0x70756F7267;
      break;
    case 7:
      result = 0x617461646174656DLL;
      break;
    case 8:
      result = 0x697461746F6E6E61;
      break;
    case 9:
      result = 0x644972657375;
      break;
    case 10:
      result = 0x65726F6373;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_268C76D0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268C76B54(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_268C76D3C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_268C76BA8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268C76D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C76BA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C76DB8(uint64_t a1)
{
  v2 = sub_268C769D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C76DF4(uint64_t a1)
{
  v2 = sub_268C769D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C76E30@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id + 8);
  v20 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId);
  v21 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id);
  v18 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_usoEntity);
  v19 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId + 8);
  v4 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_typedValue;
  v5 = type metadata accessor for RREntity(0);
  sub_268C6736C(v1 + v4, a1 + v5[7], &qword_2802D4640, &qword_268C89710);
  v6 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType + 8);
  v15 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType);
  v8 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data);
  v7 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data + 8);
  v17 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group + 8);
  v22 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group + 16);
  v23 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group);
  v9 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_metadata;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v16 = *(v1 + v9);
  v10 = (a1 + v5[10]);
  v10[1] = 0;
  v10[2] = 0;
  *v10 = 0;
  v11 = (a1 + v5[12]);
  *a1 = v21;
  a1[1] = v3;
  a1[2] = v20;
  a1[3] = v19;
  a1[4] = v18;
  v12 = (a1 + v5[8]);
  *v12 = v15;
  v12[1] = v6;
  v13 = (a1 + v5[9]);
  *v13 = v8;
  v13[1] = v7;

  sub_268C66A34(v8, v7);

  *v10 = v23;
  v10[1] = v17;
  v10[2] = v22;
  *(a1 + v5[11]) = v16;
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_268C76FF4@<X0>(void *a1@<X8>)
{
  sub_268C76E30(a1);
  v3 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v4 = *(v1 + v3);
  result = type metadata accessor for RRCandidate(0);
  *(a1 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_268C77058(uint64_t a1)
{
  v4 = sub_268C889E4();
  OUTLINED_FUNCTION_0_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4818, &unk_268C8A600);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_41();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  v14 = OUTLINED_FUNCTION_6(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_1();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v112 - v19;
  sub_268C6736C(a1, v119, &qword_2802D4820, &unk_268C8AA40);
  if (!v120)
  {
    sub_268C65E88(v119, &qword_2802D4820, &unk_268C8AA40);
    goto LABEL_59;
  }

  type metadata accessor for RRAnnotatedEntity(0);
  if (swift_dynamicCast())
  {
    v21 = v118;
    OUTLINED_FUNCTION_42(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id);
    v24 = v24 && v22 == v23;
    if (!v24 && (sub_268C88FD4() & 1) == 0)
    {
      goto LABEL_58;
    }

    OUTLINED_FUNCTION_42(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId);
    v27 = v24 && v25 == v26;
    if (!v27 && (sub_268C88FD4() & 1) == 0)
    {
      goto LABEL_58;
    }

    v113 = v6;
    v114 = v2;
    v115 = v4;
    v116 = v1;
    sub_268C88AC4();
    v28 = sub_268C88A74();
    v30 = v29;

    v117 = v21;
    sub_268C88AC4();
    v31 = sub_268C88A74();
    v33 = v32;

    if (v28 == v31 && v30 == v33)
    {
    }

    else
    {
      v35 = sub_268C88FD4();

      if ((v35 & 1) == 0)
      {
LABEL_18:

        goto LABEL_59;
      }
    }

    v36 = v116;
    v37 = *(v116 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType + 8);
    v38 = v117;
    v39 = *&v117[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType + 8];
    if (v37)
    {
      if (v39)
      {
        v40 = *(v116 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType) == *&v117[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType] && v37 == v39;
        if (v40 || (sub_268C88FD4() & 1) != 0)
        {
LABEL_28:
          v41 = *&v38[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data + 8];
          if (*(v36 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data + 8) >> 60 == 15)
          {
            if (v41 >> 60 == 15)
            {
              v42 = OUTLINED_FUNCTION_24_1();
              sub_268C66A34(v42, v43);
              v44 = OUTLINED_FUNCTION_22_1();
              sub_268C66A34(v44, v45);
              v46 = OUTLINED_FUNCTION_22_1();
              sub_268C65EE0(v46, v47);
              goto LABEL_36;
            }
          }

          else if (v41 >> 60 != 15)
          {
            v56 = OUTLINED_FUNCTION_24_1();
            sub_268C66A34(v56, v57);
            v58 = OUTLINED_FUNCTION_24_1();
            sub_268C66A34(v58, v59);
            v60 = OUTLINED_FUNCTION_22_1();
            sub_268C66A34(v60, v61);
            v62 = OUTLINED_FUNCTION_22_1();
            v63 = MEMORY[0x26D629CA0](v62);
            v64 = OUTLINED_FUNCTION_24_1();
            sub_268C65EE0(v64, v65);
            v66 = OUTLINED_FUNCTION_24_1();
            sub_268C65EE0(v66, v67);
            v68 = OUTLINED_FUNCTION_22_1();
            sub_268C65EE0(v68, v69);
            if ((v63 & 1) == 0)
            {
              goto LABEL_18;
            }

LABEL_36:
            v70 = (v116 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group);
            v71 = *(v116 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group + 8);
            v21 = v117;
            v72 = &v117[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group];
            v73 = *&v117[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group + 8];
            if (v71)
            {
              if (v73)
              {
                v74 = v70[2];
                v75 = *(v72 + 2);
                if (*v70 == *v72 && v71 == v73)
                {
                  OUTLINED_FUNCTION_54();
                  swift_bridgeObjectRetain_n();
                  v78 = v116;
                }

                else
                {
                  v77 = sub_268C88FD4();
                  OUTLINED_FUNCTION_54();
                  swift_bridgeObjectRetain_n();
                  v78 = v116;
                  if ((v77 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_54();
                    swift_bridgeObjectRelease_n();
                    v21 = v117;
LABEL_58:

                    goto LABEL_59;
                  }
                }

                OUTLINED_FUNCTION_54();
                swift_bridgeObjectRelease_n();
                v24 = v74 == v75;
                v21 = v117;
                if (!v24)
                {
                  goto LABEL_58;
                }

LABEL_50:
                OUTLINED_FUNCTION_8_0();
                swift_beginAccess();
                OUTLINED_FUNCTION_8_0();
                swift_beginAccess();

                v79 = OUTLINED_FUNCTION_20();
                v81 = sub_268C6F4CC(v79, v80);

                if ((v81 & 1) == 0)
                {
                  goto LABEL_58;
                }

                v82 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score;
                OUTLINED_FUNCTION_8_0();
                swift_beginAccess();
                v83 = *(v78 + v82);
                v84 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score;
                OUTLINED_FUNCTION_8_0();
                swift_beginAccess();
                if (v83 != *&v21[v84])
                {
                  goto LABEL_58;
                }

                v85 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
                OUTLINED_FUNCTION_8_0();
                swift_beginAccess();
                v86 = v116;
                sub_268C6736C(v116 + v85, v20, &qword_2802D47B8, &unk_268C8A5B8);
                v87 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
                OUTLINED_FUNCTION_8_0();
                swift_beginAccess();
                v88 = *(v11 + 48);
                v89 = v114;
                sub_268C6736C(v20, v114, &qword_2802D47B8, &unk_268C8A5B8);
                sub_268C6736C(&v21[v87], v89 + v88, &qword_2802D47B8, &unk_268C8A5B8);
                v90 = v115;
                if (__swift_getEnumTagSinglePayload(v89, 1, v115) == 1)
                {
                  sub_268C65E88(v20, &qword_2802D47B8, &unk_268C8A5B8);
                  if (__swift_getEnumTagSinglePayload(v89 + v88, 1, v90) == 1)
                  {
                    sub_268C65E88(v89, &qword_2802D47B8, &unk_268C8A5B8);
                    goto LABEL_62;
                  }
                }

                else
                {
                  sub_268C6736C(v89, v17, &qword_2802D47B8, &unk_268C8A5B8);
                  if (__swift_getEnumTagSinglePayload(v89 + v88, 1, v90) != 1)
                  {
                    v93 = v113;
                    (*(v113 + 32))(v10, v89 + v88, v90);
                    OUTLINED_FUNCTION_0_1();
                    sub_268C67324(v94, v95, MEMORY[0x277CC9598]);
                    LODWORD(v117) = sub_268C88C64();
                    v96 = *(v93 + 8);
                    v96(v10, v90);
                    OUTLINED_FUNCTION_62();
                    sub_268C65E88(v97, v98, v99);
                    v96(v17, v90);
                    OUTLINED_FUNCTION_62();
                    sub_268C65E88(v100, v101, v102);
                    if ((v117 & 1) == 0)
                    {
                      goto LABEL_58;
                    }

LABEL_62:
                    v103 = v86;
                    v104 = v86 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment;
                    OUTLINED_FUNCTION_8_0();
                    swift_beginAccess();
                    v105 = *v104;
                    v106 = *(v104 + 8);
                    v107 = &v21[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment];
                    OUTLINED_FUNCTION_8_0();
                    swift_beginAccess();
                    if (v106)
                    {
                      if ((v107[1] & 1) == 0)
                      {
                        goto LABEL_58;
                      }
                    }

                    else if ((v107[1] & 1) != 0 || v105 != *v107)
                    {
                      goto LABEL_58;
                    }

                    v108 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations;
                    OUTLINED_FUNCTION_8_0();
                    swift_beginAccess();
                    v109 = *(v103 + v108);
                    v110 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations;
                    OUTLINED_FUNCTION_8_0();
                    swift_beginAccess();
                    v111 = *&v21[v110];

                    v91 = sub_268C77934(v109, v111);

                    return v91 & 1;
                  }

                  sub_268C65E88(v20, &qword_2802D47B8, &unk_268C8A5B8);
                  (*(v113 + 8))(v17, v90);
                }

                sub_268C65E88(v89, &qword_2802D4818, &unk_268C8A600);
                goto LABEL_58;
              }
            }

            else if (!v73)
            {

              v78 = v116;
              goto LABEL_50;
            }

            goto LABEL_59;
          }

          v48 = OUTLINED_FUNCTION_24_1();
          sub_268C66A34(v48, v49);
          v50 = OUTLINED_FUNCTION_22_1();
          sub_268C66A34(v50, v51);

          v52 = OUTLINED_FUNCTION_22_1();
          sub_268C65EE0(v52, v53);
          v54 = OUTLINED_FUNCTION_24_1();
          sub_268C65EE0(v54, v55);
          goto LABEL_59;
        }
      }
    }

    else if (!v39)
    {
      goto LABEL_28;
    }
  }

LABEL_59:
  v91 = 0;
  return v91 & 1;
}

uint64_t sub_268C77934(uint64_t a1, uint64_t a2)
{
  v71 = sub_268C889E4();
  v4 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RRAnnotationValue(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v78 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v60 - v11;
  MEMORY[0x28223BE20](v10);
  v77 = &v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4878, &qword_268C8AA28);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  result = MEMORY[0x28223BE20](v15);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v68 = (&v60 - v17);
  v69 = v18;
  v19 = 0;
  v63 = a1;
  v22 = *(a1 + 64);
  v21 = a1 + 64;
  v20 = v22;
  v23 = 1 << *(v21 - 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v61 = (v23 + 63) >> 6;
  v62 = v21;
  v64 = (v4 + 8);
  v65 = (v4 + 32);
  v66 = v7;
  v67 = a2;
  v76 = v12;
  while (v25)
  {
    v75 = (v25 - 1) & v25;
    v26 = __clz(__rbit64(v25)) | (v19 << 6);
    v27 = v69;
LABEL_13:
    v30 = (*(v63 + 48) + 16 * v26);
    v32 = *v30;
    v31 = v30[1];
    v33 = v77;
    sub_268C68518(*(v63 + 56) + *(v7 + 72) * v26, v77);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4880, &unk_268C8AA30);
    v35 = *(v34 + 48);
    *v27 = v32;
    v27[1] = v31;
    sub_268C684A0(v33, v27 + v35);
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v34);

LABEL_14:
    v36 = v68;
    sub_268C79BCC(v27, v68);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4880, &unk_268C8AA30);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v37);
    v39 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      return v39;
    }

    v40 = *(v37 + 48);
    v41 = *v36;
    v42 = v36[1];
    sub_268C684A0(v36 + v40, v12);
    v43 = sub_268C68144(v41, v42);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      sub_268C687CC(v12);
      return 0;
    }

    v72 = v39;
    v46 = *(a2 + 56) + *(v7 + 72) * v43;
    v47 = v78;
    sub_268C68518(v46, v78);
    v48 = v77;
    sub_268C68518(v47, v77);
    v74 = *v65;
    v50 = v70;
    v49 = v71;
    v74(v70, v48, v71);
    v79 = 0x2865746164;
    v80 = 0xE500000000000000;
    sub_268C67324(&qword_280D693D8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v51 = sub_268C88FC4();
    MEMORY[0x26D629FC0](v51);

    MEMORY[0x26D629FC0](41, 0xE100000000000000);
    v52 = v80;
    v73 = v79;
    v53 = *v64;
    (*v64)(v50, v49);
    sub_268C68518(v76, v48);
    v74(v50, v48, v49);
    v79 = 0x2865746164;
    v80 = 0xE500000000000000;
    v54 = sub_268C88FC4();
    MEMORY[0x26D629FC0](v54);

    MEMORY[0x26D629FC0](41, 0xE100000000000000);
    v56 = v79;
    v55 = v80;
    v53(v50, v49);
    if (v73 == v56 && v52 == v55)
    {

      sub_268C687CC(v78);
      v12 = v76;
      result = sub_268C687CC(v76);
      v7 = v66;
      a2 = v67;
      v25 = v75;
    }

    else
    {
      v58 = sub_268C88FD4();

      sub_268C687CC(v78);
      v12 = v76;
      result = sub_268C687CC(v76);
      v7 = v66;
      a2 = v67;
      v25 = v75;
      v39 = v72;
      if ((v58 & 1) == 0)
      {
        return v39;
      }
    }
  }

  v27 = v69;
  while (1)
  {
    v28 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v28 >= v61)
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4880, &unk_268C8AA30);
      __swift_storeEnumTagSinglePayload(v27, 1, 1, v59);
      v75 = 0;
      goto LABEL_14;
    }

    v29 = *(v62 + 8 * v28);
    ++v19;
    if (v29)
    {
      v75 = (v29 - 1) & v29;
      v26 = __clz(__rbit64(v29)) | (v28 << 6);
      v19 = v28;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268C77FD0()
{
  v1 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_metadata;
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16) + 1;
  while (--v3)
  {
    v4 = (v2 + 56);
    v5 = *(v2 + 80);
    v2 += 56;
    if (!v5)
    {
      *&result = *(v4 - 1) * *v4;
      return result;
    }
  }

  *&result = 0.0;
  return result;
}

id RRAnnotatedEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RRAnnotatedEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RRAnnotatedEntity(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_268C780F4(uint64_t a1)
{
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v5);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4830, &qword_268C8A610);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44();
  v8 = OUTLINED_FUNCTION_22_1();
  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_268C769D8();
  sub_268C890F4();
  OUTLINED_FUNCTION_61(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id);
  OUTLINED_FUNCTION_18_1();
  sub_268C88F74();
  if (v2)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_61(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId);
  OUTLINED_FUNCTION_18_1();
  sub_268C88F74();
  sub_268C88BC4();
  OUTLINED_FUNCTION_20_1();
  sub_268C67324(v10, v11, MEMORY[0x277D5F4A0]);
  OUTLINED_FUNCTION_5_1();
  sub_268C88FB4();
  sub_268C88C24();
  OUTLINED_FUNCTION_19_1();
  sub_268C67324(v12, v13, MEMORY[0x277D72A80]);
  OUTLINED_FUNCTION_5_1();
  sub_268C88F64();
  OUTLINED_FUNCTION_61(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType);
  OUTLINED_FUNCTION_18_1();
  sub_268C88F54();
  v26 = OUTLINED_FUNCTION_61(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data);
  v27 = v14;
  sub_268C66A34(v26, v14);
  sub_268C669E0();
  OUTLINED_FUNCTION_18_1();
  sub_268C88F64();
  sub_268C65EE0(v26, v27);
  OUTLINED_FUNCTION_56(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group);
  v15 = sub_268C6698C();

  OUTLINED_FUNCTION_18_1();
  sub_268C88F64();
  if (v15)
  {

LABEL_5:
    v16 = OUTLINED_FUNCTION_38_0();
    return v17(v16);
  }

  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4668, &qword_268C89730);
  sub_268C78B64(&qword_280D69410, sub_268C6FF64, MEMORY[0x277D83948]);
  OUTLINED_FUNCTION_5_1();
  sub_268C88FB4();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47F0, &qword_268C8A5F0);
  sub_268C78BDC();
  OUTLINED_FUNCTION_5_1();
  sub_268C88FB4();
  v19 = (v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_userId);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v20 = *v19;

  OUTLINED_FUNCTION_18_1();
  sub_268C88F54();
  if (!v20)
  {

    OUTLINED_FUNCTION_8_0();
    swift_beginAccess();
    OUTLINED_FUNCTION_18_1();
    sub_268C88F94();
    v23 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
    OUTLINED_FUNCTION_8_0();
    swift_beginAccess();
    sub_268C6736C(v4 + v23, v3, &qword_2802D47B8, &unk_268C8A5B8);
    sub_268C889E4();
    OUTLINED_FUNCTION_0_1();
    sub_268C67324(v24, v25, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_5_1();
    sub_268C88F64();
    sub_268C65E88(v3, &qword_2802D47B8, &unk_268C8A5B8);
    goto LABEL_5;
  }

  v21 = OUTLINED_FUNCTION_38_0();
  v22(v21);
}

void *sub_268C78678@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = RRAnnotatedEntity.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

SiriReferenceResolutionDataModel::RRAnnotationName_optional __swiftcall RRAnnotationName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_268C88E84();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_268C78754@<X0>(unint64_t *a1@<X8>)
{
  result = RRAnnotationName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t RRAnnotationValue.init(date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_268C889E4();
  OUTLINED_FUNCTION_3();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t static RRAnnotationValue.== infix(_:_:)()
{
  v0 = RRAnnotationValue.description.getter();
  v2 = v1;
  if (v0 == RRAnnotationValue.description.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_55();
    v5 = sub_268C88FD4();
  }

  return v5 & 1;
}

uint64_t RRAnnotationValue.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_36_0();
  v3 = type metadata accessor for RRAnnotationValue(v2);
  v4 = OUTLINED_FUNCTION_6(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_41();
  sub_268C68518(v0, v1);
  MEMORY[0x26D62A380](0);
  v5 = sub_268C889E4();
  OUTLINED_FUNCTION_0_1();
  sub_268C67324(v6, v7, MEMORY[0x277CC9588]);
  sub_268C88C54();
  OUTLINED_FUNCTION_16_1();
  return (*(v8 + 8))(v1, v5);
}

uint64_t RRAnnotationValue.hashValue.getter()
{
  v1 = type metadata accessor for RRAnnotationValue(0);
  v2 = OUTLINED_FUNCTION_6(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v5 = v4 - v3;
  sub_268C89064();
  sub_268C68518(v0, v5);
  MEMORY[0x26D62A380](0);
  sub_268C889E4();
  OUTLINED_FUNCTION_0_1();
  sub_268C67324(v6, v7, MEMORY[0x277CC9588]);
  sub_268C88C54();
  OUTLINED_FUNCTION_16_1();
  v8 = OUTLINED_FUNCTION_63();
  v9(v8);
  return sub_268C890A4();
}

uint64_t sub_268C78A4C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268C89064();
  sub_268C68518(v1, v3);
  MEMORY[0x26D62A380](0);
  v4 = sub_268C889E4();
  sub_268C67324(&qword_2802D4848, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_268C88C54();
  (*(*(v4 - 8) + 8))(v3, v4);
  return sub_268C890A4();
}

uint64_t sub_268C78B64(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D4668, &qword_268C89730);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_268C78BDC()
{
  result = qword_2802D4838;
  if (!qword_2802D4838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D47F0, &qword_268C8A5F0);
    sub_268C67324(&qword_2802D4840, type metadata accessor for RRAnnotationValue, &protocol conformance descriptor for RRAnnotationValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4838);
  }

  return result;
}

uint64_t sub_268C78C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_268C68144(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4888, &qword_268C8CE90);
    sub_268C88E54();

    v8 = *(v14 + 56);
    v9 = type metadata accessor for RRAnnotationValue(0);
    sub_268C684A0(v8 + *(*(v9 - 8) + 72) * v7, a3);
    sub_268C88E64();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = type metadata accessor for RRAnnotationValue(0);
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

unint64_t sub_268C78DD0()
{
  result = qword_2802D4850;
  if (!qword_2802D4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4850);
  }

  return result;
}

void sub_268C78E74(uint64_t a1)
{
  sub_268C79660(319, qword_280D696A8, MEMORY[0x277D72A78]);
  if (v1 <= 0x3F)
  {
    sub_268C79660(319, &qword_280D69978, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_268C79660(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_268C88D94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RRAnnotationName(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for RRAnnotationName(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_268C79818(uint64_t a1, uint64_t a2)
{
  v4 = sub_268C889E4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_268C79860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268C889E4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_268C798B8(uint64_t a1)
{
  v2 = sub_268C889E4();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for RRAnnotatedEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RRAnnotatedEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268C79AC8()
{
  result = qword_2802D4860;
  if (!qword_2802D4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4860);
  }

  return result;
}

unint64_t sub_268C79B20()
{
  result = qword_2802D4868;
  if (!qword_2802D4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4868);
  }

  return result;
}

unint64_t sub_268C79B78()
{
  result = qword_2802D4870;
  if (!qword_2802D4870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4870);
  }

  return result;
}

uint64_t sub_268C79BCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4878, &qword_268C8AA28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_66()
{
}

uint64_t OUTLINED_FUNCTION_68@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_268C6736C(v3 + a3, v4, a1, a2);
}

void *static RRCoder.decode<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_268C79E0C();
  result = sub_268C88D84();
  if (!v4)
  {
    if (v8)
    {
      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_268C79E50(v7);
      return 0;
    }
  }

  return result;
}

unint64_t sub_268C79E0C()
{
  result = qword_2802D4890;
  if (!qword_2802D4890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802D4890);
  }

  return result;
}

uint64_t sub_268C79E50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4820, &unk_268C8AA40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for RRCoder(_BYTE *result, int a2, int a3)
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

uint64_t RRQuery.description.getter()
{
  sub_268C7A3F8(v0, &v35);
  switch(v39)
  {
    case 1:
      v18 = 7104878;
      v19 = v35;
      v20 = BYTE8(v35);
      v21 = v36;
      OUTLINED_FUNCTION_2_2();
      sub_268C88DF4();
      MEMORY[0x26D629FC0](0xD00000000000001ALL, 0x8000000268C8DD00);
      *&v33[0] = v19;
      v22 = sub_268C88FC4();
      MEMORY[0x26D629FC0](v22);

      MEMORY[0x26D629FC0](0x746365726964202CLL, 0xED0000203A6E6F69);
      v23 = 0xE400000000000000;
      v24 = 1413891404;
      switch(v20)
      {
        case 1:
          v23 = 0xE500000000000000;
          v25 = 1212631378;
          goto LABEL_11;
        case 2:
          v23 = 0xE300000000000000;
          v24 = 5263188;
          break;
        case 3:
          v23 = 0xE600000000000000;
          v24 = 0x4D4F54544F42;
          break;
        case 4:
          v23 = 0xE500000000000000;
          v25 = 1313821254;
LABEL_11:
          v24 = v25 & 0xFFFF0000FFFFFFFFLL | 0x5400000000;
          break;
        case 5:
          v24 = 1262698818;
          break;
        case 6:
          v23 = 0xE300000000000000;
          v24 = 7104878;
          break;
        default:
          break;
      }

      MEMORY[0x26D629FC0](v24, v23);

      MEMORY[0x26D629FC0](0x636964657270202CLL, 0xED0000203A657461);
      if (v21)
      {
        v26 = [v21 predicateFormat];
        v18 = sub_268C88C84();
        v28 = v27;
      }

      else
      {
        v28 = 0xE300000000000000;
      }

      MEMORY[0x26D629FC0](v18, v28);

      goto LABEL_20;
    case 2:
      OUTLINED_FUNCTION_2_2();
      sub_268C88DF4();

      OUTLINED_FUNCTION_0_2();
      *&v34[0] = v9 + 12;
      *(&v34[0] + 1) = v8;
      sub_268C88AC4();
      v10 = sub_268C88A74();
      v12 = v11;

      MEMORY[0x26D629FC0](v10, v12);

      goto LABEL_20;
    case 3:
      v34[0] = v35;
      v34[1] = v36;
      v33[0] = v37;
      v33[1] = v38;
      v30[0] = 0;
      v30[1] = 0xE000000000000000;
      sub_268C88DF4();

      OUTLINED_FUNCTION_0_2();
      v31 = v14;
      v32 = v13;
      sub_268C7A430(v34, v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4820, &unk_268C8AA40);
      v15 = sub_268C88C94();
      MEMORY[0x26D629FC0](v15);

      MEMORY[0x26D629FC0](0x7265746C6966202CLL, 0xEA0000000000203ALL);
      sub_268C7A430(v33, v30);
      v16 = sub_268C88C94();
      MEMORY[0x26D629FC0](v16);

      v17 = v31;
      sub_268C79E50(v33);
      sub_268C79E50(v34);
      return v17;
    default:
      v1 = v35;
      OUTLINED_FUNCTION_2_2();
      sub_268C88DF4();

      OUTLINED_FUNCTION_0_2();
      *&v34[0] = v3;
      *(&v34[0] + 1) = v2;
      if (v1)
      {
        v4 = [v1 predicateFormat];
        v5 = sub_268C88C84();
        v7 = v6;
      }

      else
      {
        v5 = 7104878;
        v7 = 0xE300000000000000;
      }

      MEMORY[0x26D629FC0](v5, v7);

LABEL_20:

      return *&v34[0];
  }
}

unint64_t RROrdinalDirection.rawValue.getter()
{
  result = 1413891404;
  switch(*v0)
  {
    case 1:
      v2 = 1212631378;
      goto LABEL_4;
    case 2:
      result = 5263188;
      break;
    case 3:
      result = 0x4D4F54544F42;
      break;
    case 4:
      v2 = 1313821254;
LABEL_4:
      result = v2 & 0xFFFF0000FFFFFFFFLL | 0x5400000000;
      break;
    case 5:
      result = 1262698818;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268C7A430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4820, &unk_268C8AA40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RRQueryOption.description.getter()
{
  if (*v0)
  {
    return 0x446564756C636E49;
  }

  else
  {
    return 0x656C706D6953;
  }
}

SiriReferenceResolutionDataModel::RRQueryOption_optional __swiftcall RRQueryOption.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}