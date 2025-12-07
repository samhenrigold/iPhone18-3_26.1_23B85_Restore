uint64_t sub_21B0DAA90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v8 = OUTLINED_FUNCTION_5_30(v0, v1, v2, v3, v4, v5, v6, v7, v19);
  OUTLINED_FUNCTION_3_21(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  OUTLINED_FUNCTION_5_19();
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = v30[56];
    sub_21AF99BE0(v30, &qword_27CD46E18, &qword_21B1283D0);
  }

  return v17 & 1;
}

uint64_t sub_21B0DAB08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __dst[10] = *MEMORY[0x277D85DE8];
  v6 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  *(v3 + 16) = 1;
  v14 = v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment_weeklyOddsLastCalculatedTime;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment__nextStartTime;
  *v15 = 0;
  *(v15 + 8) = 1;
  v44 = a2;
  sub_21B0DB700(a2, v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment_knownHost);
  v16 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment_params;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v18 = *(v17 - 8);
  (*(v18 + 16))(v3 + v16, a1, v17);
  v19 = COERCE_DOUBLE(PoirotUserTaskParameters<>.startTime.getter());
  v21 = v20;
  sub_21B110ED4();
  sub_21B110F44();
  v23 = v22;
  v24 = *(v8 + 8);
  v24(v13, v6);
  if ((v21 & 1) != 0 || v23 != v19 || (v25 = v24, sub_21B1111F4(), memcpy(__dst, __src, 0x50uLL), __dst[1] == 1) || (v26 = __dst[6], , sub_21AF99BE0(__dst, &qword_27CD46E18, &qword_21B1283D0), !v26))
  {
    sub_21AF99BE0(v44, &qword_27CD42F60, &qword_21B1149F0);
    (*(v18 + 8))(a1, v17);
  }

  else
  {
    v27 = [objc_opt_self() defaultManager];
    v28 = sub_21B1123D4();

    __src[0] = 0;
    v29 = [v27 contentsOfDirectoryAtPath:v28 error:__src];

    v30 = __src[0];
    if (v29)
    {
      v31 = sub_21B1125F4();
      v32 = v30;

      v33 = *(v31 + 16);
    }

    else
    {
      v35 = __src[0];
      v36 = sub_21B110C84();

      swift_willThrow();
      v33 = 0;
    }

    if ((v33 * 1200) >> 64 != (1200 * v33) >> 63)
    {
      __break(1u);
    }

    v37 = ceil((1200 * v33) / 86400.0) * 86400.0;
    v38 = v43;
    sub_21B110F74();
    sub_21B110F44();
    v40 = v39;
    sub_21AF99BE0(v44, &qword_27CD42F60, &qword_21B1149F0);
    (*(v18 + 8))(a1, v17);
    v25(v38, v6);
    v41 = v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment__nextStartTime;
    *v41 = v40 - v37;
    *(v41 + 8) = 0;
  }

  return v3;
}

uint64_t sub_21B0DAF30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  sub_21B111214();
  sub_21B110CC4();
}

uint64_t sub_21B0DAF9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471F0, &unk_21B129F00);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v16 - v1;
  v3 = sub_21B111DE4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  sub_21B1111F4();
  v10 = OUTLINED_FUNCTION_4_27();
  memcpy(v10, v11, v12);
  v13 = v18;
  if (v18 != 1)
  {

    sub_21AF99BE0(&v17, &qword_27CD46E18, &qword_21B1283D0);
    if (v13)
    {
      sub_21B111DD4();
      if (__swift_getEnumTagSinglePayload(v2, 1, v3) != 1)
      {
        (*(v5 + 32))(v9, v2, v3);
        v14 = sub_21B0CFB70();
        (*(v5 + 8))(v9, v3);
        return v14;
      }

      sub_21AF99BE0(v2, &qword_27CD471F0, &unk_21B129F00);
    }
  }

  return sub_21B0CEC74(byte_282C8D970);
}

uint64_t sub_21B0DB190()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F60, &qword_21B1149F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v7 - v2;
  sub_21B0DB700(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment_knownHost, v7 - v2);
  v4 = sub_21B111E34();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
  sub_21AF99BE0(v3, &qword_27CD42F60, &qword_21B1149F0);
  if (EnumTagSinglePayload == 1)
  {
    return sub_21B0CEF58();
  }

  else
  {
    return sub_21B0DAF9C();
  }
}

uint64_t sub_21B0DB27C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  sub_21B1111E4();
  if (v2)
  {
    sub_21B110CC4();

    v3 = MEMORY[0x277D3DF68];
  }

  else
  {
    v3 = MEMORY[0x277D3DF70];
  }

  v4 = *v3;
  sub_21B1112C4();
  OUTLINED_FUNCTION_4_1();
  v7 = *(v6 + 104);

  return v7(a1, v4, v5);
}

uint64_t sub_21B0DB338()
{
  sub_21AF99BE0(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment_knownHost, &qword_27CD42F60, &qword_21B1149F0);
  v1 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment_params;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  OUTLINED_FUNCTION_4_1();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for AdHocRecipeEnvironment(uint64_t a1)
{
  result = qword_27CD47600;
  if (!qword_27CD47600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B0DB44C(uint64_t a1)
{
  sub_21B0DB530(319);
  if (v1 <= 0x3F)
  {
    sub_21B0DB588(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21B0DB530(uint64_t a1)
{
  if (!qword_27CD47610)
  {
    sub_21B111E34();
    v1 = sub_21B112774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD47610);
    }
  }
}

void sub_21B0DB588(uint64_t a1)
{
  if (!qword_27CD47618)
  {
    sub_21B0BDCA0();
    sub_21B0BDCF4();
    sub_21B0BDD48();
    v1 = sub_21B111224();
    if (!v2)
    {
      atomic_store(v1, &qword_27CD47618);
    }
  }
}

uint64_t (*sub_21B0DB654(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = sub_21B0DA710();
  *(a1 + 8) = v3 & 1;
  return sub_21B0DB6A4;
}

uint64_t sub_21B0DB6A4(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22AdHocRecipeEnvironment__nextStartTime;
  *v2 = *result;
  *(v2 + 8) = v1;
  return result;
}

uint64_t sub_21B0DB700(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F60, &qword_21B1149F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *OUTLINED_FUNCTION_5_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_21B1111F4();
}

uint64_t type metadata accessor for SessionSchemaProviderUnwrapped(uint64_t a1)
{
  result = qword_27CD47620;
  if (!qword_27CD47620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0DB830(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_27CD6E8C0);
  *v3 = a1;
  v3[1] = a2;
  if (qword_27CD424A8 != -1)
  {
    swift_once();
  }

  v4 = qword_27CD6E730;
  v5 = *algn_27CD6E738;

  return sub_21AFA7620(v4, v5);
}

void sub_21B0DB8B4(uint64_t a1@<X0>, unint64_t *a4@<X8>)
{
  v6 = v4;
  v51 = a4;
  v52 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43048, &unk_21B117C90);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v50 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43038, &qword_21B114C10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v50 - v12;
  v14 = sub_21B111894();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = qword_27CD6E758;
  swift_beginAccess();
  sub_21AFA88A8(v4 + v18, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_21AFA8918(v13, &qword_27CD43038, &qword_21B114C10);
    v49 = 24;
LABEL_22:
    sub_21B1129C4("Fatal error", 11, 2, 0, 0xE000000000000000, "SearchOnDeviceAnalytics/SessionSchemaProviderUnwrapped.swift", 60, 2, v49);
    __break(1u);
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    sub_21B111884();
    if (v5)
    {
LABEL_3:
      v19 = OUTLINED_FUNCTION_0_26();
      v20(v19);
      return;
    }

    v21 = v53;
    switch(v52)
    {
      case 1:
        v22 = OUTLINED_FUNCTION_0_26();
        v23(v22);

        v24 = *(v4 + qword_27CD6E8C0 + 8);
        v25 = v51;
        *v51 = *(v6 + qword_27CD6E8C0);
        v25[1] = v24;
        sub_21B1119B4();
        swift_storeEnumTagMultiPayload();
        v26 = OUTLINED_FUNCTION_1_26();
        __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);

        return;
      case 2:
      case 4:
      case 5:
        sub_21B111974();
        v36 = OUTLINED_FUNCTION_0_26();
        v37(v36);

        return;
      case 3:
        v30 = v50;
        sub_21B111974();
        v31 = OUTLINED_FUNCTION_0_26();
        v32(v31);

        v33 = sub_21B1119B4();
        if (__swift_getEnumTagSinglePayload(v30, 1, v33) == 1)
        {
          v34 = v51;
          *v51 = 0;
          swift_storeEnumTagMultiPayload();
          if (__swift_getEnumTagSinglePayload(v30, 1, v33) != 1)
          {
            sub_21AFA8918(v30, &qword_27CD43048, &unk_21B117C90);
          }
        }

        else
        {
          v34 = v51;
          sub_21AFD2EFC(v30, v51);
        }

        v38 = v34;
        v39 = 0;
        v40 = 1;
        v41 = v33;
        goto LABEL_15;
      case 6:
        sub_21B111974();
        v35 = sub_21B1119B4();
        if (__swift_getEnumTagSinglePayload(v21, 1, v35) == 1)
        {
          sub_21AFA8918(v21, &qword_27CD43048, &unk_21B117C90);
LABEL_19:
          sub_21AFA86EC();
          swift_allocError();
          *v42 = 0;
          swift_willThrow();

          goto LABEL_3;
        }

        if (swift_getEnumCaseMultiPayload() != 8)
        {
          sub_21AFA8978(v21);
          goto LABEL_19;
        }

        v43 = sub_21AFA80BC(*v21, *(v21 + 8));
        v45 = v44;
        v46 = OUTLINED_FUNCTION_0_26();
        v47(v46);

        v48 = v51;
        *v51 = v43;
        v48[1] = v45;
        swift_storeEnumTagMultiPayload();
        v38 = OUTLINED_FUNCTION_1_26();
LABEL_15:
        __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
        break;
      default:
        v49 = 29;
        goto LABEL_22;
    }
  }
}

uint64_t sub_21B0DBE94()
{
  v0 = sub_21B1111A4();
  sub_21AFA8918(v0 + qword_27CD6E758, &qword_27CD43038, &qword_21B114C10);

  return v0;
}

uint64_t sub_21B0DBEF4()
{
  v0 = sub_21B0DBE94();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_21B0DBF74(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B110F84();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_21B0E3028(0xD000000000000015, 0x800000021B141FD0, v11);
  v12 = sub_21B1123D4();
  v13 = [v11 dateFromString_];

  if (!v13)
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_21B112904();
    MEMORY[0x21CEE9770](0x6F632074276E6143, 0xEE0020747265766ELL);
    MEMORY[0x21CEE9770](a1, a2);
    MEMORY[0x21CEE9770](0xD000000000000027, 0x800000021B141FF0);
    v15 = v18;
    v16 = v19;
    sub_21B0DC308();
    swift_allocError();
    *v17 = v15;
    *(v17 + 8) = v16;
    *(v17 + 16) = 2;
    swift_willThrow();

    return;
  }

  sub_21B110F54();

  (*(v5 + 32))(v10, v8, v4);
  sub_21B110F44();
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v14 > -1.0)
  {
    if (v14 < 1.84467441e19)
    {
      v18 = v14;
      sub_21B112B84();

      (*(v5 + 8))(v10, v4);
      return;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

uint64_t sub_21B0DC24C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_21B0DC27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21B0DC4A8();

  return MEMORY[0x28219E770](a1, a2, a3, v6);
}

unint64_t sub_21B0DC308()
{
  result = qword_27CD47630;
  if (!qword_27CD47630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47630);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_21B0DC368(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21B0DC3A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21B0DC3FC()
{
  result = qword_27CD47638;
  if (!qword_27CD47638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47638);
  }

  return result;
}

unint64_t sub_21B0DC454()
{
  result = qword_27CD47640;
  if (!qword_27CD47640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47640);
  }

  return result;
}

unint64_t sub_21B0DC4A8()
{
  result = qword_27CD47648;
  if (!qword_27CD47648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47648);
  }

  return result;
}

uint64_t sub_21B0DC50C(uint64_t a1, void *a2, void *a3)
{
  v51 = a3;
  v42 = sub_21B111844();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_21B111874();
  v7 = MEMORY[0x28223BE20](v47);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v10;
  v11 = *(a1 + 16);
  v37 = (v5 + 8);
  v38 = v12 + 32;
  v40 = v12;
  v36 = (v12 + 8);
  v13 = (a1 + 40);
  for (i = a2; v11; --v11)
  {
    v14 = *(v13 - 1);
    v15 = *v13;

    v16 = sub_21AF98B58(v14, v15);
    if (v17)
    {
      v18 = v16;
      v44 = v14;
      v45 = v11;
      swift_isUniquelyReferenced_nonNull_native();
      *&v48 = *a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47690, &qword_21B12B7E0);
      sub_21B112994();
      v19 = v48;

      v20 = v39;
      v21 = *(v40 + 32);
      v22 = v47;
      v21(v39, *(v19 + 56) + *(v40 + 72) * v18, v47);
      sub_21B1129B4();
      *a2 = v19;
      v21(v46, v20, v22);

      v23 = v41;
      sub_21B111864();
      v24 = sub_21B0DDB68();
      v26 = v25;
      (*v37)(v23, v42);
      v27 = v51;
      v28 = *v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v27 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21B0D538C();
        v28 = v33;
        *v51 = v33;
      }

      v30 = *(v28 + 16);
      v11 = v45;
      if (v30 >= *(v28 + 24) >> 1)
      {
        sub_21B0D538C();
        *v51 = v34;
      }

      (*v36)(v46, v47);
      v49 = &type metadata for SODAWarehouseColumn;
      v50 = sub_21B0DC4A8();
      v31 = swift_allocObject();
      *&v48 = v31;
      v31[2] = v44;
      v31[3] = v15;
      v31[4] = v24;
      v31[5] = v26;
      v32 = *v51;
      *(v32 + 16) = v30 + 1;
      sub_21AF81D68(&v48, v32 + 40 * v30 + 32);
      a2 = i;
    }

    v13 += 2;
  }

  return result;
}

void sub_21B0DC8D8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47680, &unk_21B12B7D0);
  MEMORY[0x28223BE20](v4);
  v87 = &v70[-v5];
  v102 = sub_21B111874();
  v6 = *(v102 - 8);
  v7 = MEMORY[0x28223BE20](v102);
  v98 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v91 = &v70[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47698, &qword_21B12B7E8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v96 = &v70[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v95 = &v70[-v13];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476A0, &unk_21B12B7F0);
  MEMORY[0x28223BE20](v14 - 8);
  v93 = &v70[-v15];
  v16 = sub_21B111954();
  MEMORY[0x28223BE20](v16);
  v19 = &v70[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a1 + 64);
  v24 = (v21 + 63) >> 6;
  v77 = v17 + 16;
  v90 = v6 + 16;
  v101 = (v6 + 32);
  v97 = v6;
  v86 = v6 + 40;
  v78 = v17;
  v71 = (v17 + 8);
  v79 = a1;

  v25 = 0;
  v73 = a1 + 64;
  v72 = v24;
  v76 = a2;
  v75 = v16;
  v74 = v19;
  if (v23)
  {
LABEL_4:
    v26 = v25;
LABEL_8:
    v27 = v4;
    v83 = (v23 - 1) & v23;
    v82 = v26;
    (*(v78 + 16))(v19, *(v79 + 56) + *(v78 + 72) * (__clz(__rbit64(v23)) | (v26 << 6)), v16);
    v28 = sub_21B111944();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *a2;
    v109 = *a2;
    sub_21B0DEF54(v28, sub_21B0DEEE0, 0, v103);
    v89 = v108;
    v92 = v103[0];
    v85 = v103[1];
    v31 = v105;
    v32 = v106;
    v88 = v107;
    v80 = v104;
    v84 = (v104 + 64) >> 6;
    v81 = v28;

    while (1)
    {
      v33 = v32;
      v34 = v31;
      v100 = isUniquelyReferenced_nonNull_native;
      v94 = v31;
      if (!v32)
      {
        break;
      }

LABEL_14:
      v99 = (v33 - 1) & v33;
      v37 = __clz(__rbit64(v33)) | (v34 << 6);
      v38 = v91;
      v39 = (*(v92 + 48) + 16 * v37);
      v41 = *v39;
      v40 = v39[1];
      v42 = v97;
      v43 = v102;
      (*(v97 + 16))(v91, *(v92 + 56) + *(v97 + 72) * v37, v102);
      v44 = *(v27 + 48);
      v45 = v95;
      *v95 = v41;
      *(v45 + 1) = v40;
      v36 = v45;
      v46 = *(v42 + 32);
      v4 = v27;
      v46(&v36[v44], v38, v43);
      __swift_storeEnumTagSinglePayload(v36, 0, 1, v27);

      v35 = v34;
LABEL_15:
      v47 = v96;
      sub_21AFA41DC(v36, v96, &qword_27CD47698, &qword_21B12B7E8);
      v48 = 1;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v4);
      v50 = v93;
      if (EnumTagSinglePayload != 1)
      {
        v51 = v87;
        sub_21AFA41DC(v96, v87, &qword_27CD47680, &unk_21B12B7D0);
        v88(v51);
        sub_21B0DDFFC(v51);
        v48 = 0;
      }

      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43058, &qword_21B114C20);
      __swift_storeEnumTagSinglePayload(v50, v48, 1, v52);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43058, &qword_21B114C20);
      if (__swift_getEnumTagSinglePayload(v50, 1, v53) == 1)
      {
        sub_21AF9C4BC(v92);

        a2 = v76;
        *v76 = v30;
        v19 = v74;
        v16 = v75;
        (*v71)(v74, v75);
        v25 = v82;
        v20 = v73;
        v24 = v72;
        v23 = v83;
        if (!v83)
        {
          goto LABEL_5;
        }

        goto LABEL_4;
      }

      v55 = *v50;
      v54 = v50[1];
      v56 = v50;
      v57 = *v101;
      (*v101)(v98, v56 + *(v53 + 48), v102);
      v59 = sub_21AF98B58(v55, v54);
      v60 = v30[2];
      v61 = (v58 & 1) == 0;
      v62 = v60 + v61;
      if (__OFADD__(v60, v61))
      {
        goto LABEL_34;
      }

      v63 = v58;
      if (v30[3] >= v62)
      {
        if ((v100 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47690, &qword_21B12B7E0);
          sub_21B1129A4();
        }
      }

      else
      {
        sub_21B0C1400(v62, v100 & 1);
        v64 = sub_21AF98B58(v55, v54);
        if ((v63 & 1) != (v65 & 1))
        {
          goto LABEL_37;
        }

        v59 = v64;
      }

      v30 = v109;
      if (v63)
      {

        (*(v97 + 40))(v30[7] + *(v97 + 72) * v59, v98, v102);
      }

      else
      {
        v109[(v59 >> 6) + 8] |= 1 << v59;
        v66 = (v30[6] + 16 * v59);
        *v66 = v55;
        v66[1] = v54;
        v57(v30[7] + *(v97 + 72) * v59, v98, v102);
        v67 = v30[2];
        v68 = __OFADD__(v67, 1);
        v69 = v67 + 1;
        if (v68)
        {
          goto LABEL_35;
        }

        v30[2] = v69;
      }

      isUniquelyReferenced_nonNull_native = 1;
      v31 = v35;
      v32 = v99;
      v27 = v4;
    }

    v35 = v31;
    v36 = v95;
    v4 = v27;
    while (1)
    {
      v34 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v34 >= v84)
      {
        __swift_storeEnumTagSinglePayload(v95, 1, 1, v27);
        v99 = 0;
        goto LABEL_15;
      }

      v33 = *(v85 + 8 * v34);
      ++v35;
      if (v33)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        return;
      }

      v23 = *(v20 + 8 * v26);
      ++v25;
      if (v23)
      {
        goto LABEL_8;
      }
    }
  }

  __break(1u);
LABEL_37:
  sub_21B112E54();
  __break(1u);
}

void sub_21B0DD160()
{
  qword_27CD47650 = 0x6D617473656D6974;
  *algn_27CD47658 = 0xE900000000000070;
  qword_27CD47660 = MEMORY[0x277D837D0];
  qword_27CD47668 = MEMORY[0x277D3E338];
}

uint64_t sub_21B0DD19C(uint64_t a1, uint64_t a2)
{
  v90 = sub_21B111844();
  v4 = *(v90 - 8);
  v5 = MEMORY[0x28223BE20](v90);
  v87 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v89 = v70 - v7;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47680, &unk_21B12B7D0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v8);
  v10 = (v70 - v9);
  v11 = MEMORY[0x277D84F90];
  v102 = MEMORY[0x277D84F90];
  v12 = sub_21B111874();
  v101 = sub_21B112334();
  v82 = a1;
  v13 = sub_21B1118E4();
  sub_21B0DC8D8(v13, &v101);

  sub_21B0DC50C(a2, &v101, &v102);
  v81 = 0;

  v15 = v101 + 64;
  v14 = *(v101 + 64);
  v16 = 1 << *(v101 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v86 = *MEMORY[0x277D3E518];
  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v80 = *MEMORY[0x277D3E500];
  v92 = v12 - 8;
  v93 = v12;
  v85 = (v4 + 16);
  v84 = (v4 + 88);
  v79 = *MEMORY[0x277D3E510];
  v78 = *MEMORY[0x277D3E540];
  v77 = *MEMORY[0x277D3E508];
  v76 = *MEMORY[0x277D3E550];
  v75 = *MEMORY[0x277D3E548];
  v74 = *MEMORY[0x277D3E4E8];
  v73 = *MEMORY[0x277D3E530];
  v72 = *MEMORY[0x277D3E558];
  v71 = *MEMORY[0x277D3E4F8];
  v70[5] = *MEMORY[0x277D3E538];
  v70[4] = *MEMORY[0x277D3E4F0];
  v70[3] = *MEMORY[0x277D3E560];
  v70[2] = *MEMORY[0x277D3E568];
  v70[1] = *MEMORY[0x277D3E520];
  v83 = (v4 + 8);
  v70[0] = *MEMORY[0x277D3E528];
  v96 = v101;

  v20 = 0;
  v94 = v10;
  v91 = v15;
  if (v18)
  {
LABEL_8:
    while (1)
    {
      v22 = __clz(__rbit64(v18)) | (v20 << 6);
      v23 = (*(v96 + 48) + 16 * v22);
      v25 = *v23;
      v24 = v23[1];
      (*(*(v93 - 8) + 16))(v10 + *(v95 + 48), *(v96 + 56) + *(*(v93 - 8) + 72) * v22);
      *v10 = v25;
      v10[1] = v24;
      v26 = v25 == 0x697461636F766E69 && v24 == 0xEF657079745F6E6FLL;
      if (!v26 && (sub_21B112D04() & 1) == 0)
      {
        break;
      }

      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_27();
        sub_21B0D538C();
        v11 = v51;
      }

      v27 = v25;
      v28 = *(v11 + 16);
      if (v28 >= *(v11 + 24) >> 1)
      {
        sub_21B0D538C();
        v29 = v52;
      }

      else
      {
        v29 = v11;
      }

      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46E40, &qword_21B128568);
      v31 = sub_21B0DE064();
      v99 = &type metadata for SODAWarehouseColumn;
      v100 = sub_21B0DC4A8();
      OUTLINED_FUNCTION_6_21();
      v32 = swift_allocObject();
      *&v98 = v32;
      v32[2] = v27;
      v32[3] = v24;
      v32[4] = v30;
      v32[5] = v31;
      v11 = v29;
      *(v29 + 16) = v28 + 1;
      sub_21AF81D68(&v98, v29 + 40 * v28 + 32);
      v15 = v91;
LABEL_53:
      v18 &= v18 - 1;
      v10 = v94;
      sub_21B0DDFFC(v94);
      if (!v18)
      {
        goto LABEL_4;
      }
    }

    v88 = v25;
    swift_bridgeObjectRetain_n();
    v33 = v89;
    sub_21B111864();
    v34 = v87;
    v35 = v90;
    (*v85)(v87, v33, v90);
    v36 = (*v84)(v34, v35);
    if (v36 == v86)
    {
      v37 = MEMORY[0x277D839F8];
      v38 = MEMORY[0x277D3E350];
LABEL_48:
      (*v83)(v89, v90);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_27();
        sub_21B0D538C();
        v11 = v54;
      }

      v48 = *(v11 + 16);
      v49 = v11;
      if (v48 >= *(v11 + 24) >> 1)
      {
        sub_21B0D538C();
        v49 = v55;
      }

      v99 = &type metadata for SODAWarehouseColumn;
      v100 = sub_21B0DC4A8();
      OUTLINED_FUNCTION_6_21();
      v50 = swift_allocObject();
      *&v98 = v50;
      v50[2] = v88;
      v50[3] = v24;
      v50[4] = v37;
      v50[5] = v38;
      *(v49 + 16) = v48 + 1;
      v11 = v49;
      sub_21AF81D68(&v98, v49 + 40 * v48 + 32);
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_0_27();
    if (v26)
    {
      v37 = MEMORY[0x277D83A90];
      v38 = MEMORY[0x277D3E368];
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_0_27();
    if (v39)
    {
LABEL_25:
      v37 = MEMORY[0x277D84A28];
      v38 = MEMORY[0x277D3E388];
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_0_27();
    if (v40)
    {
      goto LABEL_28;
    }

    OUTLINED_FUNCTION_0_27();
    if (v41)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_0_27();
    if (v42)
    {
LABEL_28:
      v37 = MEMORY[0x277D84D38];
      v38 = MEMORY[0x277D3E398];
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_0_27();
    if (!v26)
    {
      OUTLINED_FUNCTION_0_27();
      if (v43)
      {
        v37 = MEMORY[0x277D839B0];
        v38 = MEMORY[0x277D3E348];
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_0_27();
      if (v44)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_0_27();
      if (v45)
      {
        v47 = 1;
      }

      else
      {
        v47 = v46 == v71;
      }

      if (v47)
      {
        v38 = sub_21AF997C4();
        v37 = MEMORY[0x277CC9318];
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_0_27();
      if (!v53)
      {
        OUTLINED_FUNCTION_0_27();
        if (!v26)
        {
          OUTLINED_FUNCTION_0_27();
          if (!v26)
          {
            OUTLINED_FUNCTION_0_27();
            if (!v26)
            {
              OUTLINED_FUNCTION_0_27();
              if (v26)
              {
                v37 = MEMORY[0x277D849A8];
                v38 = MEMORY[0x277D3E380];
              }

              else
              {
                OUTLINED_FUNCTION_0_27();
                if (!v56)
                {
                  result = sub_21B112CF4();
                  __break(1u);
                  return result;
                }

                v37 = MEMORY[0x277D84A28];
                v38 = MEMORY[0x277D3E388];
              }

              v15 = v91;
              goto LABEL_48;
            }

            goto LABEL_25;
          }

LABEL_31:
          v37 = MEMORY[0x277D849A8];
          v38 = MEMORY[0x277D3E380];
          goto LABEL_48;
        }

LABEL_41:
        v37 = MEMORY[0x277D837D0];
        v38 = MEMORY[0x277D3E338];
        goto LABEL_48;
      }
    }

    v37 = MEMORY[0x277D84CC0];
    v38 = MEMORY[0x277D3E390];
    goto LABEL_48;
  }

  while (1)
  {
LABEL_4:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_74;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_8;
    }
  }

  v19 = v102;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_68;
  }

LABEL_74:
  sub_21AFAB368(v19);
  v19 = v67;
LABEL_68:
  v57 = v82;
  v58 = *(v19 + 16);
  *&v98 = v19 + 32;
  *(&v98 + 1) = v58;
  sub_21B0DE0E0(&v98);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21AFAB368(v11);
    v11 = v68;
  }

  v59 = *(v11 + 16);
  *&v98 = v11 + 32;
  *(&v98 + 1) = v59;
  sub_21B0DE0E0(&v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436F0, &unk_21B1178A0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_21B113D90;
  if (qword_27CD42A20 != -1)
  {
    swift_once();
  }

  v61 = qword_27CD47650;
  v62 = qword_27CD47668;
  *(v60 + 56) = &type metadata for SODAWarehouseColumn;
  *(v60 + 64) = sub_21B0DC4A8();
  OUTLINED_FUNCTION_6_21();
  v63 = swift_allocObject();
  *(v60 + 32) = v63;
  *(v63 + 16) = v61;
  *(v63 + 24) = *algn_27CD47658;
  *(v63 + 40) = v62;
  v97 = v60;

  sub_21B0D0DCC(v64);

  sub_21B0D0DCC(v65);
  sub_21B111924();
  OUTLINED_FUNCTION_4_1();
  (*(v66 + 8))(v57);

  return v97;
}

uint64_t sub_21B0DDB68()
{
  v1 = sub_21B111844();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277D3E518])
  {
    return MEMORY[0x277D839F8];
  }

  if (v5 == *MEMORY[0x277D3E500])
  {
    return MEMORY[0x277D83A90];
  }

  if (v5 == *MEMORY[0x277D3E510])
  {
    return MEMORY[0x277D84A28];
  }

  if (v5 == *MEMORY[0x277D3E540])
  {
    return MEMORY[0x277D84D38];
  }

  if (v5 == *MEMORY[0x277D3E508])
  {
    return MEMORY[0x277D849A8];
  }

  if (v5 == *MEMORY[0x277D3E550])
  {
    return MEMORY[0x277D84D38];
  }

  if (v5 == *MEMORY[0x277D3E548])
  {
    return MEMORY[0x277D84CC0];
  }

  if (v5 == *MEMORY[0x277D3E4E8])
  {
    return MEMORY[0x277D839B0];
  }

  if (v5 == *MEMORY[0x277D3E530])
  {
    return MEMORY[0x277D837D0];
  }

  if (v5 == *MEMORY[0x277D3E558] || v5 == *MEMORY[0x277D3E4F8])
  {
    v6 = MEMORY[0x277CC9318];
    sub_21AF997C4();
    return v6;
  }

  if (v5 == *MEMORY[0x277D3E538])
  {
    return MEMORY[0x277D84CC0];
  }

  if (v5 == *MEMORY[0x277D3E4F0])
  {
    return MEMORY[0x277D837D0];
  }

  if (v5 == *MEMORY[0x277D3E560])
  {
    return MEMORY[0x277D849A8];
  }

  if (v5 == *MEMORY[0x277D3E568])
  {
    return MEMORY[0x277D84A28];
  }

  if (v5 == *MEMORY[0x277D3E520])
  {
    return MEMORY[0x277D849A8];
  }

  if (v5 == *MEMORY[0x277D3E528])
  {
    return MEMORY[0x277D84A28];
  }

  result = sub_21B112CF4();
  __break(1u);
  return result;
}

uint64_t sub_21B0DDE54(void *a1, void *a2)
{
  OUTLINED_FUNCTION_1_27(a1, a1[3]);
  v3 = sub_21B1115C4();
  v5 = v4;
  OUTLINED_FUNCTION_1_27(a2, a2[3]);
  if (v3 == sub_21B1115C4() && v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_21B112D04();
  }

  return v8 & 1;
}

unint64_t sub_21B0DDF54()
{
  result = qword_27CD47670;
  if (!qword_27CD47670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47670);
  }

  return result;
}

unint64_t sub_21B0DDFA8()
{
  result = qword_27CD47678;
  if (!qword_27CD47678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47678);
  }

  return result;
}

uint64_t sub_21B0DDFFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47680, &unk_21B12B7D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B0DE064()
{
  result = qword_27CD47688;
  if (!qword_27CD47688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD46E40, &qword_21B128568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47688);
  }

  return result;
}

uint64_t sub_21B0DE0E0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21B112B74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436F8, &unk_21B12AF60);
        v6 = sub_21B112614();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21B0DE368(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21B0DE1E4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21B0DE1E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v21 = a3;
      v16 = v6;
      v17 = v5;
      while (1)
      {
        sub_21AF92198(v5, &v19);
        sub_21AF92198(v5 - 40, v18);
        OUTLINED_FUNCTION_1_27(&v19, v20);
        v7 = sub_21B1115C4();
        v9 = v8;
        OUTLINED_FUNCTION_1_27(v18, v18[3]);
        if (v7 == sub_21B1115C4() && v9 == v10)
        {
          break;
        }

        v12 = OUTLINED_FUNCTION_5_31();

        __swift_destroy_boxed_opaque_existential_0(v18);
        result = __swift_destroy_boxed_opaque_existential_0(&v19);
        if (v12)
        {
          if (!v4)
          {
            __break(1u);
            return result;
          }

          sub_21AF81D68(v5, &v19);
          v13 = *(v5 - 24);
          *v5 = *(v5 - 40);
          *(v5 + 16) = v13;
          *(v5 + 32) = *(v5 - 8);
          result = sub_21AF81D68(&v19, v5 - 40);
          v5 -= 40;
          if (!__CFADD__(v6++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_0(v18);
      result = __swift_destroy_boxed_opaque_existential_0(&v19);
LABEL_14:
      a3 = v21 + 1;
      v5 = v17 + 40;
      v6 = v16 - 1;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21B0DE368(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_104:
    v110 = *result;
    if (!*result)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_106;
    }

    goto LABEL_140;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (1)
  {
    v7 = v5;
    v8 = (v5 + 1);
    v104 = v5;
    if ((v5 + 1) < v4)
    {
      v9 = *a3;
      sub_21AF92198(*a3 + 40 * v8, &v114);
      sub_21AF92198(v9 + 40 * v7, v112);
      v10 = v116;
      LODWORD(v110) = sub_21B0DDE54(&v114, v112);
      v116 = v10;
      if (v10)
      {
        __swift_destroy_boxed_opaque_existential_0(v112);
        __swift_destroy_boxed_opaque_existential_0(&v114);
LABEL_114:

        return;
      }

      v101 = v6;
      __swift_destroy_boxed_opaque_existential_0(v112);
      __swift_destroy_boxed_opaque_existential_0(&v114);
      v107 = 40 * v7;
      v11 = v9 + 40 * v7 + 80;
      v12 = v7 + 2;
      while (1)
      {
        v13 = v12;
        if (v8 + 1 >= v4)
        {
          break;
        }

        sub_21AF92198(v11, &v114);
        sub_21AF92198(v11 - 40, v112);
        OUTLINED_FUNCTION_1_27(&v114, v115);
        v14 = sub_21B1115C4();
        v16 = v15;
        OUTLINED_FUNCTION_1_27(v112, v113);
        if (v14 == sub_21B1115C4() && v16 == v17)
        {
          v19 = 0;
        }

        else
        {
          v19 = OUTLINED_FUNCTION_4_28(v14);
        }

        __swift_destroy_boxed_opaque_existential_0(v112);
        __swift_destroy_boxed_opaque_existential_0(&v114);
        v11 += 40;
        ++v8;
        v12 = v13 + 1;
        if ((v110 ^ v19))
        {
          goto LABEL_16;
        }
      }

      v8 = v4;
LABEL_16:
      if (v110)
      {
        v20 = v104;
        v6 = v101;
        if (v8 < v104)
        {
          goto LABEL_139;
        }

        if (v104 >= v8)
        {
          v7 = v104;
        }

        else
        {
          if (v4 >= v13)
          {
            v21 = v13;
          }

          else
          {
            v21 = v4;
          }

          v22 = 40 * v21 - 40;
          v23 = v8;
          v24 = v107;
          do
          {
            if (v20 != --v23)
            {
              v25 = *a3;
              if (!*a3)
              {
                goto LABEL_144;
              }

              v26 = v8;
              v27 = v25 + v24;
              v28 = v25 + v22;
              sub_21AF81D68((v25 + v24), &v114);
              v29 = *(v28 + 32);
              v30 = *(v28 + 16);
              *v27 = *v28;
              *(v27 + 16) = v30;
              *(v27 + 32) = v29;
              sub_21AF81D68(&v114, v28);
              v8 = v26;
            }

            ++v20;
            v22 -= 40;
            v24 += 40;
          }

          while (v20 < v23);
          v7 = v104;
        }
      }

      else
      {
        v7 = v104;
        v6 = v101;
      }
    }

    v31 = a3[1];
    if (v8 < v31)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_136;
      }

      if (v8 - v7 < a4)
      {
        break;
      }
    }

LABEL_52:
    if (v8 < v7)
    {
      goto LABEL_135;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = OUTLINED_FUNCTION_3_27();
      sub_21B0D4B14(v87, v88, v89, v6);
      v6 = v90;
    }

    v45 = *(v6 + 16);
    v44 = *(v6 + 24);
    v46 = v45 + 1;
    v110 = v8;
    if (v45 >= v44 >> 1)
    {
      sub_21B0D4B14(v44 > 1, v45 + 1, 1, v6);
      v6 = v91;
    }

    *(v6 + 16) = v46;
    v47 = v6 + 32;
    v48 = (v6 + 32 + 16 * v45);
    *v48 = v104;
    v48[1] = v110;
    v109 = *result;
    if (!*result)
    {
      goto LABEL_145;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        v50 = (v47 + 16 * (v46 - 1));
        v51 = (v6 + 16 * v46);
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v52 = *(v6 + 32);
          v53 = *(v6 + 40);
          v62 = __OFSUB__(v53, v52);
          v54 = v53 - v52;
          v55 = v62;
LABEL_72:
          if (v55)
          {
            goto LABEL_122;
          }

          v67 = *v51;
          v66 = v51[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_125;
          }

          v71 = v50[1];
          v72 = v71 - *v50;
          if (__OFSUB__(v71, *v50))
          {
            goto LABEL_128;
          }

          if (__OFADD__(v69, v72))
          {
            goto LABEL_130;
          }

          if (v69 + v72 >= v54)
          {
            if (v54 < v72)
            {
              v49 = v46 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        if (v46 < 2)
        {
          goto LABEL_124;
        }

        v74 = *v51;
        v73 = v51[1];
        v62 = __OFSUB__(v73, v74);
        v69 = v73 - v74;
        v70 = v62;
LABEL_87:
        if (v70)
        {
          goto LABEL_127;
        }

        v76 = *v50;
        v75 = v50[1];
        v62 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v62)
        {
          goto LABEL_129;
        }

        if (v77 < v69)
        {
          goto LABEL_101;
        }

LABEL_94:
        if (v49 - 1 >= v46)
        {
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
          goto LABEL_138;
        }

        if (!*a3)
        {
          goto LABEL_142;
        }

        v81 = v6;
        v82 = (v47 + 16 * (v49 - 1));
        v83 = *v82;
        v84 = v47 + 16 * v49;
        v6 = *(v84 + 8);
        v85 = v116;
        sub_21B0DEAEC((*a3 + 40 * *v82), (*a3 + 40 * *v84), *a3 + 40 * v6, v109);
        v116 = v85;
        if (v85)
        {
          goto LABEL_114;
        }

        if (v6 < v83)
        {
          goto LABEL_117;
        }

        v86 = *(v81 + 16);
        if (v49 > v86)
        {
          goto LABEL_118;
        }

        *v82 = v83;
        v82[1] = v6;
        if (v49 >= v86)
        {
          goto LABEL_119;
        }

        v46 = v86 - 1;
        sub_21B0D61C0((v84 + 16), v86 - 1 - v49, (v47 + 16 * v49));
        v6 = v81;
        *(v81 + 16) = v86 - 1;
        if (v86 <= 2)
        {
          goto LABEL_101;
        }
      }

      v56 = v47 + 16 * v46;
      v57 = *(v56 - 64);
      v58 = *(v56 - 56);
      v62 = __OFSUB__(v58, v57);
      v59 = v58 - v57;
      if (v62)
      {
        goto LABEL_120;
      }

      v61 = *(v56 - 48);
      v60 = *(v56 - 40);
      v62 = __OFSUB__(v60, v61);
      v54 = v60 - v61;
      v55 = v62;
      if (v62)
      {
        goto LABEL_121;
      }

      v63 = v51[1];
      v64 = v63 - *v51;
      if (__OFSUB__(v63, *v51))
      {
        goto LABEL_123;
      }

      v62 = __OFADD__(v54, v64);
      v65 = v54 + v64;
      if (v62)
      {
        goto LABEL_126;
      }

      if (v65 >= v59)
      {
        v79 = *v50;
        v78 = v50[1];
        v62 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v62)
        {
          goto LABEL_134;
        }

        if (v54 < v80)
        {
          v49 = v46 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_72;
    }

LABEL_101:
    v5 = v110;
    v4 = a3[1];
    if (v110 >= v4)
    {
      goto LABEL_104;
    }
  }

  v32 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_137;
  }

  if (v32 >= v31)
  {
    v32 = a3[1];
  }

  if (v32 < v7)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    v6 = sub_21B0D61A8(v6, a2, a3, a4);
LABEL_106:
    v92 = v6;
    v93 = (v6 + 16);
    for (i = *(v6 + 16); ; *v93 = i)
    {
      v6 = i - 2;
      if (i < 2)
      {
        break;
      }

      if (!*a3)
      {
        goto LABEL_143;
      }

      v95 = (v92 + 16 * i);
      v96 = *v95;
      v97 = &v93[2 * i];
      v98 = *(v97 + 1);
      v99 = v116;
      sub_21B0DEAEC((*a3 + 40 * *v95), (*a3 + 40 * *v97), *a3 + 40 * v98, v110);
      v116 = v99;
      if (v99)
      {
        break;
      }

      if (v98 < v96)
      {
        goto LABEL_131;
      }

      if (v6 >= *v93)
      {
        goto LABEL_132;
      }

      *v95 = v96;
      v95[1] = v98;
      a2 = *v93 - i;
      if (*v93 < i)
      {
        goto LABEL_133;
      }

      i = *v93 - 1;
      sub_21B0D61C0(v97 + 16, a2, v97);
    }

    goto LABEL_114;
  }

  if (v8 == v32)
  {
    goto LABEL_52;
  }

  v102 = v6;
  v33 = *a3;
  v34 = *a3 + 40 * v8;
  v35 = v7 - v8;
  v105 = v32;
LABEL_39:
  v108 = v34;
  v110 = v8;
  v106 = v35;
  while (1)
  {
    sub_21AF92198(v34, &v114);
    sub_21AF92198(v34 - 40, v112);
    OUTLINED_FUNCTION_1_27(&v114, v115);
    v36 = sub_21B1115C4();
    v38 = v37;
    OUTLINED_FUNCTION_1_27(v112, v113);
    if (v36 == sub_21B1115C4() && v38 == v39)
    {

      __swift_destroy_boxed_opaque_existential_0(v112);
      __swift_destroy_boxed_opaque_existential_0(&v114);
LABEL_50:
      v8 = (v110 + 1);
      v34 = v108 + 40;
      v35 = v106 - 1;
      if (v110 + 1 == v105)
      {
        v8 = v105;
        v6 = v102;
        v7 = v104;
        goto LABEL_52;
      }

      goto LABEL_39;
    }

    v41 = OUTLINED_FUNCTION_4_28(v36);

    __swift_destroy_boxed_opaque_existential_0(v112);
    __swift_destroy_boxed_opaque_existential_0(&v114);
    if ((v41 & 1) == 0)
    {
      goto LABEL_50;
    }

    if (!v33)
    {
      break;
    }

    sub_21AF81D68(v34, &v114);
    v42 = *(v34 - 24);
    *v34 = *(v34 - 40);
    *(v34 + 16) = v42;
    *(v34 + 32) = *(v34 - 8);
    sub_21AF81D68(&v114, v34 - 40);
    v34 -= 40;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_21B0DEAEC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_21AFCC408(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    v45 = v5;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      sub_21AF92198(v6, v43);
      sub_21AF92198(v4, v41);
      OUTLINED_FUNCTION_1_27(v43, v44);
      v12 = sub_21B1115C4();
      v14 = v13;
      OUTLINED_FUNCTION_1_27(v41, v42);
      v16 = v12 == sub_21B1115C4() && v14 == v15;
      if (v16)
      {

        __swift_destroy_boxed_opaque_existential_0(v41);
        __swift_destroy_boxed_opaque_existential_0(v43);
      }

      else
      {
        v17 = OUTLINED_FUNCTION_5_31();

        __swift_destroy_boxed_opaque_existential_0(v41);
        __swift_destroy_boxed_opaque_existential_0(v43);
        if (v17)
        {
          v18 = v6;
          v19 = v7 == v6;
          v6 += 40;
          goto LABEL_15;
        }
      }

      v18 = v4;
      v19 = v7 == v4;
      v4 += 40;
LABEL_15:
      v5 = v45;
      if (!v19)
      {
        v20 = *v18;
        v21 = *(v18 + 1);
        *(v7 + 4) = *(v18 + 4);
        *v7 = v20;
        *(v7 + 1) = v21;
      }

      v7 += 40;
    }
  }

  sub_21AFCC408(a2, (a3 - a2) / 40, a4);
  v22 = &v4[40 * v9];
  v39 = v7;
LABEL_19:
  v23 = (v6 - 40);
  v5 -= 40;
  v24 = (v22 - 40);
  v40 = v6 - 40;
  while (1)
  {
    v10 = (v24 + 40);
    if (v24 + 40 <= v4 || v6 <= v7)
    {
      break;
    }

    v45 = v24 + 40;
    sub_21AF92198(v24, v43);
    sub_21AF92198(v23, v41);
    OUTLINED_FUNCTION_1_27(v43, v44);
    v26 = sub_21B1115C4();
    v28 = v27;
    OUTLINED_FUNCTION_1_27(v41, v42);
    if (v26 == sub_21B1115C4() && v28 == v29)
    {
      v31 = 0;
    }

    else
    {
      v31 = OUTLINED_FUNCTION_4_28(v26);
    }

    __swift_destroy_boxed_opaque_existential_0(v41);
    __swift_destroy_boxed_opaque_existential_0(v43);
    if (v31)
    {
      v22 = (v24 + 40);
      v16 = v5 + 40 == v6;
      v7 = v39;
      v6 -= 40;
      if (!v16)
      {
        v34 = *v40;
        v35 = *(v40 + 1);
        *(v5 + 32) = *(v40 + 4);
        *v5 = v34;
        *(v5 + 16) = v35;
        v6 = v40;
      }

      goto LABEL_19;
    }

    if (v45 != v5 + 40)
    {
      v32 = *v24;
      v33 = *(v24 + 16);
      *(v5 + 32) = *(v24 + 32);
      *v5 = v32;
      *(v5 + 16) = v33;
    }

    v5 -= 40;
    v24 -= 40;
    v7 = v39;
    v23 = (v6 - 40);
  }

LABEL_38:
  v36 = (v10 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[40 * v36])
  {
    memmove(v6, v4, 40 * v36);
  }

  return 1;
}

uint64_t sub_21B0DEE18(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;

  v6 = a4;
  return a2;
}

uint64_t sub_21B0DEE60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21B111874();
  (*(*(v7 - 8) + 16))(a1, a4, v7);

  return a2;
}

uint64_t sub_21B0DEEE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47680, &unk_21B12B7D0) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43058, &qword_21B114C20);
  result = sub_21B0DEE60(a2 + *(v5 + 48), *a1, a1[1], a1 + v4);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_21B0DEF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_28(uint64_t a1)
{

  return sub_21B112D04();
}

uint64_t OUTLINED_FUNCTION_5_31()
{

  return sub_21B112D04();
}

double sub_21B0DF010@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_21B0B5B7C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_21AF94C04(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_21B0DF0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if (*(a3 + 16) && (v8 = sub_21AF98B58(a1, a2), (a2 & 1) != 0))
  {
    v9 = v8;
    v10 = *(a3 + 56);
    v11 = a4(0);
    OUTLINED_FUNCTION_4_1();
    (*(v12 + 16))(a5, v10 + *(v12 + 72) * v9, v11);
    v13 = OUTLINED_FUNCTION_10_14();
    v16 = v11;
  }

  else
  {
    (a4)(0, a2);
    v13 = OUTLINED_FUNCTION_6_22();
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_21B0DF160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    sub_21AF98B58(a1, a2);
    if (v3)
    {
    }
  }

  return OUTLINED_FUNCTION_52();
}

uint64_t sub_21B0DF1B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_21B0B5BC0(a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
    OUTLINED_FUNCTION_4_1();
    sub_21B0BFFD8(v8 + *(v10 + 72) * v7, a3);
    v11 = OUTLINED_FUNCTION_10_14();
    v14 = v9;
  }

  else
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
    v11 = OUTLINED_FUNCTION_6_22();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_21B0DF248(uint64_t *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_21B0B5BC0(a1);
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B0DF298@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_21B0B5D3C(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = sub_21B110F84();
    OUTLINED_FUNCTION_4_1();
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    v10 = OUTLINED_FUNCTION_10_14();
    v13 = v8;
  }

  else
  {
    sub_21B110F84();
    v10 = OUTLINED_FUNCTION_6_22();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_21B0DF344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_21AF98B58(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double sub_21B0DF394@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_21AF98B58(a1, a2), (v7 & 1) != 0))
  {
    sub_21AF92198(*(a3 + 56) + 40 * v6, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void sub_21B0DF3EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47170, &unk_21B12B960);
    v2 = sub_21B112A14();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_12:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v8 << 6);
    v11 = (*(a1 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    v14 = *(*(a1 + 56) + 8 * v10);

    v15 = v14;
    v16 = sub_21AF98B58(v13, v12);
    v17 = v16;
    if (v18)
    {
      v19 = (v2[6] + 16 * v16);
      *v19 = v13;
      v19[1] = v12;

      v20 = v2[7];
      v21 = *(v20 + 8 * v17);
      *(v20 + 8 * v17) = v15;

      v7 = v8;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
      v22 = (v2[6] + 16 * v16);
      *v22 = v13;
      v22[1] = v12;
      *(v2[7] + 8 * v16) = v15;
      v23 = v2[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_20;
      }

      v2[2] = v25;
      v7 = v8;
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

unint64_t sub_21B0DF5D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476B8, &qword_21B12B978);
    v2 = sub_21B112A14();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    sub_21AF92198(*(a1 + 56) + 40 * v11, v30);
    *&v29 = v13;
    *(&v29 + 1) = v14;
    v26[2] = v29;
    v27[0] = v30[0];
    v27[1] = v30[1];
    v28 = v31;
    v15 = v29;
    sub_21AF81D68(v27, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC0, &unk_21B114250);
    swift_dynamicCast();
    sub_21AF94BF4(&v23, v25);
    sub_21AF94BF4(v25, v26);
    sub_21AF94BF4(v26, &v24);
    result = sub_21AF98B58(v15, *(&v15 + 1));
    v16 = result;
    if (v17)
    {
      *(v2[6] + 16 * result) = v15;

      v18 = (v2[7] + 32 * v16);
      __swift_destroy_boxed_opaque_existential_0(v18);
      result = sub_21AF94BF4(&v24, v18);
      v8 = v9;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v2[6] + 16 * result) = v15;
      result = sub_21AF94BF4(&v24, (v2[7] + 32 * result));
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_20;
      }

      v2[2] = v21;
      v8 = v9;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

BOOL sub_21B0DF864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_21B1128F4();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

uint64_t SODAWarehouseSnapshot.init(csvURL:jsonURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_21B110BA4();
  OUTLINED_FUNCTION_1();
  v61 = v6;
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v60 = v8 - v7;
  OUTLINED_FUNCTION_33_0();
  v9 = sub_21B112444();
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_2();
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  sub_21B110D44();
  v12 = sub_21B1123D4();

  v13 = [v11 fileExistsAtPath_];

  if (!v13)
  {
    sub_21B112904();

    OUTLINED_FUNCTION_16_10();
    v64 = v26 | 1;
    v66 = v25;
    v27 = sub_21B110D44();
    MEMORY[0x21CEE9770](v27);

    v28 = sub_21B0DC308();
    OUTLINED_FUNCTION_4_0(&type metadata for CSVError, v28);
    *v29 = v64;
    *(v29 + 8) = v66;
    *(v29 + 16) = 1;
LABEL_8:
    swift_willThrow();
    v22 = sub_21B110D94();
    OUTLINED_FUNCTION_4_1();
    v24 = *(v35 + 8);
    v24(a2, v22);
    return (v24)(a1, v22);
  }

  v14 = [v10 defaultManager];
  sub_21B110D44();
  v15 = sub_21B1123D4();

  v16 = [v14 fileExistsAtPath_];

  if (!v16)
  {
    sub_21B112904();

    OUTLINED_FUNCTION_16_10();
    v65 = v31;
    v67 = v30;
    v32 = sub_21B110D44();
    MEMORY[0x21CEE9770](v32);

    v33 = sub_21B0DC308();
    OUTLINED_FUNCTION_4_0(&type metadata for CSVError, v33);
    *v34 = v65;
    *(v34 + 8) = v67;
    *(v34 + 16) = 1;
    goto LABEL_8;
  }

  v17 = a2;
  v18 = sub_21B110DC4();
  if (v68)
  {
LABEL_5:
    v22 = sub_21B110D94();
    OUTLINED_FUNCTION_4_1();
    v24 = *(v23 + 8);
    v24(v17, v22);
    return (v24)(a1, v22);
  }

  v20 = v18;
  v21 = v19;
  v37 = sub_21B110DC4();
  v39 = v38;
  v69 = v21;
  sub_21B112434();
  sub_21B112424();
  if (!v40)
  {
    v49 = sub_21B0DC308();
    OUTLINED_FUNCTION_4_0(&type metadata for CSVError, v49);
    OUTLINED_FUNCTION_8_19(v50, 0xD000000000000041);
    sub_21AF99728(v37, v39);
    sub_21AF99728(v20, v21);
    goto LABEL_5;
  }

  sub_21B110B94();
  sub_21AFC921C();
  v57 = sub_21B1127F4();
  v58 = v41;
  v42 = *(v61 + 8);
  v42(v60, v63);

  sub_21B112434();
  sub_21B112424();
  if (v43)
  {
    sub_21B110B94();
    v62 = sub_21B1127F4();
    v56 = v44;
    sub_21AF99728(v37, v39);
    sub_21AF99728(v20, v69);
    v45 = sub_21B110D94();
    v46 = v17;
    v47 = v45;
    v48 = *(*(v45 - 8) + 8);
    v48(v46, v45);
    v48(a1, v47);
    v42(v60, v63);

    *a3 = v57;
    a3[1] = v58;
    a3[2] = v62;
    a3[3] = v56;
  }

  else
  {
    v51 = sub_21B0DC308();
    OUTLINED_FUNCTION_4_0(&type metadata for CSVError, v51);
    OUTLINED_FUNCTION_8_19(v52, 0xD000000000000042);
    sub_21AF99728(v37, v39);
    sub_21AF99728(v20, v69);
    v53 = sub_21B110D94();
    OUTLINED_FUNCTION_4_1();
    v55 = *(v54 + 8);
    v55(v17, v53);
    v55(a1, v53);
  }

  return result;
}

void SODAWarehouseSnapshot.init(fileManager:dataWarehouseUrl:)(char *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v118 = a2;
  v119 = a1;
  v104 = a3;
  v110 = sub_21B1112A4();
  OUTLINED_FUNCTION_1();
  v108 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v111 = v6 - v5;
  OUTLINED_FUNCTION_33_0();
  v113 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v107 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v112 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD470B8, &qword_21B12B820);
  MEMORY[0x28223BE20](v11 - 8);
  v106 = &v93 - v12;
  OUTLINED_FUNCTION_33_0();
  v114 = sub_21B111514();
  OUTLINED_FUNCTION_1();
  v116 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v115 = v16 - v15;
  OUTLINED_FUNCTION_33_0();
  v17 = sub_21B111CB4();
  OUTLINED_FUNCTION_1();
  v109 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  v22 = (v21 - v20);
  v23 = sub_21B1117B4();
  OUTLINED_FUNCTION_1();
  v105 = v24;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2();
  v28 = v27 - v26;
  v29 = sub_21B111924();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_1();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v93 - v37;
  sub_21B111714();
  swift_allocObject();
  v39 = v117;
  v40 = sub_21B111704();
  if (v39)
  {
    sub_21AF99BE0(v118, &qword_27CD43750, &qword_21B117A30);
  }

  else
  {
    v100 = v22;
    v98 = v35;
    v101 = v28;
    v99 = v23;
    v103 = v38;
    v41 = v118;
    v102 = v31;
    v117 = v40;
    if (!sub_21B1116D4())
    {
      sub_21B1129C4("Fatal error", 11, 2, 0, 0xE000000000000000, "SearchOnDeviceAnalytics/SODAWarehouseSnapshotMigrator.swift", 59, 2, 60);
      goto LABEL_16;
    }

    sub_21B111124();
    v42 = v41;
    v43 = sub_21B1110D4();
    v44 = v103;
    sub_21B1118C4();
    v45 = v119;
    sub_21B0CF044(v44, v119, v41);
    sub_21B0CF5F8(v43, v45, v41);
    sub_21B111114();
    v96 = v29;
    *&v121 = &unk_282C8D838;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D48, &qword_21B114290);
    sub_21B0E0E64();
    v95 = 0;
    v94 = sub_21B112384();
    v49 = v48;
    *&v121 = 0;
    *(&v121 + 1) = 0xE000000000000000;
    sub_21B112904();

    strcpy(&v121, "SELECT * FROM ");
    HIBYTE(v121) = -18;
    v50 = v109;
    v51 = v100;
    v52 = v17;
    (*(v109 + 13))(v100, *MEMORY[0x277D39DD8], v17);
    v93 = sub_21B111C44();
    v54 = v53;
    v50[1](v51, v52);
    MEMORY[0x21CEE9770](v93, v54);

    MEMORY[0x21CEE9770](0xD000000000000014, 0x800000021B142180);
    MEMORY[0x21CEE9770](v94, v49);
    v55 = v95;
    sub_21B1116F4();
    if (v55)
    {

      sub_21AF99BE0(v41, &qword_27CD43750, &qword_21B117A30);
      v56 = OUTLINED_FUNCTION_4_29();
      v47(v56, v46);
    }

    else
    {
      v95 = v43;

      sub_21B111504();
      v109 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      sub_21B0E3028(0xD000000000000013, 0x800000021B1421A0, v109);
      v57 = v106;
      sub_21B111084();
      v58 = sub_21B1110B4();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v57, 1, v58);
      v60 = 0;
      v61 = v102;
      if (EnumTagSinglePayload != 1)
      {
        v60 = sub_21B1110A4();
        (*(*(v58 - 8) + 8))(v57, v58);
      }

      [v109 setTimeZone_];

      v62 = v98;
      (*(v61 + 16))(v98, v103, v96);
      v63 = sub_21B0DD19C(v62, &unk_282C8D838);
      v106 = sub_21B0DDFA8();
      v100 = (v108 + 8);
      v108 = v107 + 8;
      v97 = v49;
      while (1)
      {
        v123 = v106;
        v122 = &type metadata for SODAWarehouseSchema;
        *&v121 = v63;

        v64 = sub_21B111734();
        __swift_destroy_boxed_opaque_existential_0(&v121);
        if (!v64)
        {
          break;
        }

        sub_21B0DF394(0x6D617473656D6974, 0xE900000000000070, v64, &v121);
        if (!v122)
        {
          goto LABEL_17;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC0, &unk_21B114250);
        v65 = MEMORY[0x277D837D0];
        if (swift_dynamicCast() & 1) == 0 || (sub_21B0E0EC8(v120[0], v120[1]), (v66))
        {
          while (1)
          {
            sub_21B1129C4("Fatal error", 11, 2, 0xD000000000000014, 0x800000021B1421C0, "SearchOnDeviceAnalytics/SODAWarehouseSnapshotMigrator.swift", 59, 2, 96);
LABEL_16:
            __break(1u);
LABEL_17:
            sub_21AF99BE0(&v121, &qword_27CD476A8, &unk_21B12B828);
          }
        }

        sub_21B110F34();
        v67 = sub_21B110F14();
        v68 = [v109 stringFromDate_];

        v69 = sub_21B112404();
        v71 = v70;

        *&v121 = v69;
        *(&v121 + 1) = v71;
        MEMORY[0x21CEE9770](1129600288, 0xE400000000000000);
        v122 = v65;
        v123 = MEMORY[0x277D3E338];
        sub_21AF81D68(&v121, v120);
        LOBYTE(v69) = swift_isUniquelyReferenced_nonNull_native();
        v124 = v64;
        v72 = __swift_mutable_project_boxed_opaque_existential_1(v120, v120[3]);
        MEMORY[0x28223BE20](v72);
        OUTLINED_FUNCTION_2();
        v75 = (v74 - v73);
        (*(v76 + 16))(v74 - v73);
        sub_21B0E308C(*v75, v75[1], 0x6D617473656D6974, 0xE900000000000070, v69, &v124);
        __swift_destroy_boxed_opaque_existential_0(v120);
        sub_21B0DF5D0(v124);

        v77 = v111;
        sub_21B111284();
        sub_21B1114D4();
        (*v100)(v77, v110);
        v78 = OUTLINED_FUNCTION_12_12();
        v79(v78);
      }

      v80 = sub_21B0E0F28(v115, v63);
      v82 = v81;

      v83 = sub_21B0E14F0();
      v85 = v84;

      OUTLINED_FUNCTION_14_10();
      sub_21AF99BE0(v42, &qword_27CD43750, &qword_21B117A30);
      v86 = OUTLINED_FUNCTION_9_17();
      v87(v86);
      v88 = OUTLINED_FUNCTION_1_28();
      v89(v88);
      v90 = OUTLINED_FUNCTION_15_9();
      v91(v90);
      v92 = v104;
      *v104 = v80;
      v92[1] = v82;
      v92[2] = v83;
      v92[3] = v85;
    }
  }
}

unint64_t sub_21B0E0E64()
{
  result = qword_27CD42D50;
  if (!qword_27CD42D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD42D48, &qword_21B114290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42D50);
  }

  return result;
}

uint64_t sub_21B0E0EC8(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = sub_21B0DF864(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B0E0F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_21B111334();
  v5 = *(v4 - 8);
  v76 = v4;
  v77 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_21B1112A4();
  v67 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v75 = a1;
    v79 = MEMORY[0x277D84F90];
    sub_21AFCC4E4(0, v10, 0);
    v11 = v79;
    v12 = a2 + 32;
    do
    {
      sub_21AF92198(v12, v78);
      __swift_project_boxed_opaque_existential_0(v78, v78[3]);
      v13 = sub_21B1115C4();
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_0(v78);
      v79 = v11;
      v16 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v16 >= v17 >> 1)
      {
        sub_21AFCC4E4(v17 > 1, v16 + 1, 1);
        v11 = v79;
      }

      *(v11 + 16) = v16 + 1;
      v18 = v11 + 16 * v16;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
      v12 += 40;
      --v10;
    }

    while (v10);
  }

  v70 = v11;
  v78[0] = v11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D48, &qword_21B114290);
  v68 = sub_21B0E0E64();
  v69 = v19;
  v20 = sub_21B112384();
  v22 = v21;
  sub_21B0D4B3C();
  v24 = v23;
  v25 = *(v23 + 16);
  v26 = v25 + 1;
  if (v25 >= *(v23 + 24) >> 1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    *(v24 + 16) = v26;
    v27 = v24 + 16 * v25;
    *(v27 + 32) = v20;
    *(v27 + 40) = v22;
    v28 = sub_21B1114B4();
    v66 = *(v28 + 16);
    if (v29 == v66)
    {
      break;
    }

    v20 = *(v70 + 16);
    v62 = v28 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v61 = v67 + 16;
    v74 = v77 + 8;
    v75 = v77 + 16;
    v60 = (v67 + 8);
    v59 = (v70 + 40);
    v26 = v29;
    v63 = v20;
    v64 = v29;
    v65 = v28;
    while ((v29 & 0x8000000000000000) == 0)
    {
      if (v26 >= *(v28 + 16))
      {
        goto LABEL_30;
      }

      v71 = v26;
      v72 = v24;
      (*(v67 + 16))(v9, v62 + *(v67 + 72) * v26, v73);
      if (v20)
      {
        v30 = v59;
        v31 = v20;
        v32 = MEMORY[0x277D84F90];
        while (1)
        {
          v33 = *(v30 - 1);
          v34 = *v30;

          v35 = sub_21B111294();
          if (!*(v35 + 16))
          {
            break;
          }

          v36 = sub_21AF98B58(v33, v34);
          v38 = v37;

          if ((v38 & 1) == 0)
          {
            goto LABEL_17;
          }

          v39 = v77;
          v40 = *(v35 + 56) + *(v77 + 72) * v36;
          v41 = v76;
          (*(v77 + 16))(v7, v40, v76);

          v42 = sub_21B111324();
          v44 = v43;
          (*(v39 + 8))(v7, v41);
LABEL_18:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21B0D4B3C();
            v32 = v47;
          }

          v45 = *(v32 + 16);
          if (v45 >= *(v32 + 24) >> 1)
          {
            sub_21B0D4B3C();
            v32 = v48;
          }

          *(v32 + 16) = v45 + 1;
          v46 = v32 + 16 * v45;
          *(v46 + 32) = v42;
          *(v46 + 40) = v44;
          v30 += 2;
          if (!--v31)
          {
            goto LABEL_25;
          }
        }

LABEL_17:

        v42 = 0;
        v44 = 0xE000000000000000;
        goto LABEL_18;
      }

      v32 = MEMORY[0x277D84F90];
LABEL_25:
      v78[0] = v32;
      v49 = sub_21B112384();
      v51 = v50;

      v24 = v72;
      v52 = *(v72 + 16);
      v22 = v52 + 1;
      if (v52 >= *(v72 + 24) >> 1)
      {
        sub_21B0D4B3C();
        v24 = v54;
      }

      v26 = v71 + 1;
      (*v60)(v9, v73);
      *(v24 + 16) = v22;
      v53 = v24 + 16 * v52;
      *(v53 + 32) = v49;
      *(v53 + 40) = v51;
      v28 = v65;
      v25 = v70;
      v20 = v63;
      v29 = v64;
      if (v26 == v66)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    sub_21B0D4B3C();
    v24 = v57;
  }

LABEL_28:

  v78[0] = v24;
  v55 = sub_21B112384();

  return v55;
}

char *sub_21B0E14F0()
{
  v27[4] = *MEMORY[0x277D85DE8];
  v1 = sub_21B112444();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v27[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21B1118A4();
  if (!v0)
  {
    v7 = v4;
    v8 = v5;
    v9 = objc_opt_self();
    v10 = sub_21B110E34();
    v26 = 0;
    v11 = [v9 JSONObjectWithData:v10 options:0 error:&v26];

    v12 = v26;
    if (!v11)
    {
      v21 = v12;
      sub_21B110C84();

      swift_willThrow();
      sub_21AF99728(v7, v8);
      return v3;
    }

    sub_21B112864();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_0(v27, v27[3]);
    v13 = sub_21B112CE4();
    v26 = 0;
    v14 = [v9 dataWithJSONObject:v13 options:1 error:&v26];
    swift_unknownObjectRelease();
    v15 = v26;
    if (v14)
    {
      v16 = sub_21B110E54();
      v18 = v17;

      sub_21B112434();
      v19 = sub_21B112424();
      if (v20)
      {
        v3 = v19;
        sub_21AF99728(v16, v18);
        sub_21AF99728(v7, v8);
        __swift_destroy_boxed_opaque_existential_0(v27);
        return v3;
      }

      v3 = 0x800000021B142230;
      sub_21B0DC308();
      swift_allocError();
      *v25 = 0xD000000000000020;
      *(v25 + 8) = 0x800000021B142230;
      *(v25 + 16) = 1;
      swift_willThrow();
      sub_21AF99728(v7, v8);
      v23 = v16;
      v24 = v18;
    }

    else
    {
      v22 = v15;
      sub_21B110C84();

      swift_willThrow();
      v23 = v7;
      v24 = v8;
    }

    sub_21AF99728(v23, v24);
    __swift_destroy_boxed_opaque_existential_0(v27);
  }

  return v3;
}

void SODAWarehouseSnapshot.persistDatawarehouse(to:fileManager:)(unint64_t a1, void *a2)
{
  v86 = a2;
  v85 = a1;
  sub_21B111514();
  OUTLINED_FUNCTION_1();
  v71 = v4;
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v70 = v6 - v5;
  OUTLINED_FUNCTION_33_0();
  sub_21B1112A4();
  OUTLINED_FUNCTION_1();
  v82 = v7;
  v83 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v88 = v10 - v9;
  OUTLINED_FUNCTION_33_0();
  sub_21B111924();
  OUTLINED_FUNCTION_1();
  v77 = v12;
  v78 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_1();
  v76 = (v13 - v14);
  MEMORY[0x28223BE20](v15);
  v80 = &v69 - v16;
  OUTLINED_FUNCTION_33_0();
  v84 = sub_21B111CB4();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v69 - v24;
  v81 = sub_21B111BA4();
  OUTLINED_FUNCTION_1();
  v79 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_1();
  v73 = v28 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v69 - v31;
  v33 = sub_21B112444();
  OUTLINED_FUNCTION_1();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2();
  v39 = v38 - v37;
  v40 = *v2;
  v74 = v2[1];
  v75 = v40;
  sub_21B112434();
  v41 = sub_21B112414();
  v43 = v42;
  (*(v35 + 8))(v39, v33);
  if (v43 >> 60 == 15)
  {
    v44 = sub_21B0DC308();
    OUTLINED_FUNCTION_4_0(&type metadata for CSVError, v44);
    OUTLINED_FUNCTION_8_19(v45, 0xD00000000000002ALL);
  }

  else
  {
    v46 = sub_21B110D94();
    OUTLINED_FUNCTION_4_1();
    (*(v47 + 16))(v25, v85, v46);
    __swift_storeEnumTagSinglePayload(v25, 0, 1, v46);
    (*(v18 + 104))(v22, *MEMORY[0x277D39DD8], v84);
    v48 = v86;
    v49 = v87;
    sub_21B111B44();
    if (v49)
    {
      sub_21AFC5440(v41, v43);
    }

    else
    {
      sub_21AF99818(v41, v43);
      v50 = v41;
      v51 = v80;
      OUTLINED_FUNCTION_52();
      sub_21B1118F4();
      v84 = v50;
      v85 = v43;
      v52 = v76;
      v53 = v77;
      v54 = v78;
      (*(v77 + 16))(v76, v51, v78);
      v55 = sub_21B0DD19C(v52, &unk_282C8D838);
      sub_21B0E1FA0(v55, v75, v74);
      v56 = v79;
      v58 = v57;

      v59 = *(v58 + 16);
      if (v59)
      {
        v76 = v32;
        v89 = MEMORY[0x277D84F90];
        v87 = v59;
        sub_21AFCC9D0(0, v59, 0);
        v60 = 0;
        v61 = v89;
        v86 = (v83 + 32);
        while (v60 < *(v58 + 16))
        {
          v62 = *(v58 + 8 * v60 + 32);
          swift_bridgeObjectRetain_n();
          v63 = sub_21B0E2A60(v62);

          sub_21B0DF5D0(v63);

          sub_21B111284();

          v89 = v61;
          v65 = *(v61 + 16);
          v64 = *(v61 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_21AFCC9D0(v64 > 1, v65 + 1, 1);
            v61 = v89;
          }

          ++v60;
          *(v61 + 16) = v65 + 1;
          (*(v83 + 32))(v61 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v65, v88, v82);
          if (v87 == v60)
          {

            v53 = v77;
            v54 = v78;
            v56 = v79;
            v51 = v80;
            v32 = v76;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      else
      {

LABEL_13:
        v66 = v73;
        (*(v56 + 16))(v73, v32, v81);
        type metadata accessor for DataWarehouseControllerV2();
        swift_allocObject();
        sub_21B0C4B9C(v66);
        v67 = v81;
        v68 = v70;
        sub_21B111544();
        sub_21B0C514C(v68);

        sub_21AFC5440(v84, v85);
        (*(v71 + 8))(v68, v72);
        (*(v53 + 8))(v51, v54);
        (*(v56 + 8))(v32, v67);
      }
    }
  }
}

void sub_21B0E1FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21B0E27C4(a2, a3);
  if (!v8)
  {
    sub_21B0DC308();
    swift_allocError();
    v51 = xmmword_21B12B810;
    goto LABEL_40;
  }

  v77 = a2;
  v78 = a3;
  *&v76[0] = v7;
  *(&v76[0] + 1) = v8;
  v9 = sub_21AFC921C();
  v10 = sub_21B1127E4();

  v80 = v10;
  if (!v10[2])
  {

    sub_21B0DC308();
    swift_allocError();
    v51 = xmmword_21B12B800;
LABEL_40:
    *v50 = v51;
    *(v50 + 16) = 3;
LABEL_42:
    swift_willThrow();
    return;
  }

  v12 = v10[4];
  v11 = v10[5];

  sub_21B0E2918(0, 1);
  v77 = v12;
  v78 = v11;
  *&v76[0] = 44;
  *(&v76[0] + 1) = 0xE100000000000000;
  v13 = sub_21B1127E4();

  v14 = v80;
  v15 = v80[2];
  if (v15)
  {
    v16 = 0;
    v17 = v80 + 4;
    v65 = v13 + 32;
    v64 = a1 + 32;
    v60 = MEMORY[0x277D84F90];
    v66 = v13;
    v62 = a1;
    v61 = v9;
    v59 = v80;
    v57 = v15;
    v56 = v80 + 4;
    while (v16 < v14[2])
    {
      v18 = &v17[2 * v16];
      v19 = *v18;
      v20 = v18[1];
      v21 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v21 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        v58 = v16;
        v77 = v19;
        v78 = v20;
        *&v76[0] = 44;
        *(&v76[0] + 1) = 0xE100000000000000;
        v22 = sub_21B1127E4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CC0, &unk_21B114250);
        v23 = sub_21B112334();
        v24 = 0;
        v25 = *(v22 + 16);
        v70 = v22;
        v67 = v22 + 32;
        for (i = v25; ; v25 = i)
        {
          if (v24 == v25)
          {

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_21B0D546C();
              v60 = v48;
            }

            v14 = v59;
            v46 = *(v60 + 16);
            if (v46 >= *(v60 + 24) >> 1)
            {
              sub_21B0D546C();
              v14 = v59;
              v60 = v49;
            }

            v47 = v60;
            *(v60 + 16) = v46 + 1;
            *(v47 + 8 * v46 + 32) = v23;
            v15 = v57;
            v16 = v58;
            v17 = v56;
            goto LABEL_36;
          }

          if (v24 >= *(v70 + 16))
          {
            break;
          }

          if (v24 >= *(v13 + 16))
          {
            goto LABEL_47;
          }

          v71 = v23;
          v26 = (v67 + 16 * v24);
          v27 = *v26;
          v28 = v26[1];
          v68 = v24 + 1;
          v69 = v27;
          v29 = (v65 + 16 * v24);
          v30 = *v29;
          v31 = v29[1];
          v32 = *(a1 + 16);

          v33 = v64;
          if (!v32)
          {
LABEL_41:

            v77 = 0;
            v78 = 0xE000000000000000;
            sub_21B112904();

            v77 = v30;
            v78 = v31;
            MEMORY[0x21CEE9770](0xD000000000000018, 0x800000021B142210);
            v52 = v77;
            v53 = v78;
            sub_21B0DC308();
            swift_allocError();
            *v54 = v52;
            *(v54 + 8) = v53;
            *(v54 + 16) = 0;
            goto LABEL_42;
          }

          while (1)
          {
            sub_21AF92198(v33, &v73);
            __swift_project_boxed_opaque_existential_0(&v73, v74);
            if (sub_21B1115C4() == v30 && v34 == v31)
            {
              break;
            }

            v36 = sub_21B112D04();

            if (v36)
            {
              goto LABEL_22;
            }

            __swift_destroy_boxed_opaque_existential_0(&v73);
            v33 += 40;
            if (!--v32)
            {
              goto LABEL_41;
            }
          }

LABEL_22:
          sub_21AF81D68(&v73, v76);
          sub_21AF81D68(v76, &v77);
          v37 = v30 == 0x6D617473656D6974 && v31 == 0xE900000000000070;
          if (v37 || (sub_21B112D04() & 1) != 0)
          {
            sub_21B0DBF74(v69, v28);
            if (v3)
            {
              goto LABEL_45;
            }

            __swift_project_boxed_opaque_existential_0(&v77, v79);
            sub_21B1115D4();
            sub_21B1116A4();
          }

          else
          {
            __swift_project_boxed_opaque_existential_0(&v77, v79);
            sub_21B1115D4();
            sub_21B1116A4();
            if (v3)
            {
LABEL_45:

              __swift_destroy_boxed_opaque_existential_0(&v77);
              return;
            }
          }

          sub_21AF81D68(v76, &v73);
          v38 = v71;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v72 = v38;
          v40 = v74;
          v41 = v75;
          v42 = __swift_mutable_project_boxed_opaque_existential_1(&v73, v74);
          MEMORY[0x28223BE20](v42);
          v44 = &v55 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v45 + 16))(v44);
          sub_21B0E32AC(v44, v30, v31, isUniquelyReferenced_nonNull_native, &v72, v40, v41);
          __swift_destroy_boxed_opaque_existential_0(&v73);

          v23 = v72;
          __swift_destroy_boxed_opaque_existential_0(&v77);
          v24 = v68;
          v13 = v66;
          a1 = v62;
        }

        __break(1u);
LABEL_47:
        __break(1u);
        break;
      }

LABEL_36:
      if (++v16 == v15)
      {

        goto LABEL_44;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_44:
  }
}

uint64_t sub_21B0E27C4(uint64_t a1, uint64_t a2)
{
  v2 = 2573;
  sub_21AFC921C();
  if ((sub_21B112814() & 1) == 0)
  {
    v2 = 10;
    if ((sub_21B112814() & 1) == 0)
    {
      if (sub_21B112814())
      {
        return 13;
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t SQLiteType.any.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  v5 = *(*(a1 - 8) + 16);

  return v5(boxed_opaque_existential_1, v2, a1);
}

uint64_t sub_21B0E2918(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_21B0D2E98(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = (v9 + 16 * v5);
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_21AFCC250((v9 + 16 * a2), v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

_BYTE *sub_21B0E29F4@<X0>(_BYTE *result@<X0>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  v7 = v5 || v6 == 0;
  v8 = v7 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a3 = v8;
  return result;
}

unint64_t *sub_21B0E2A60(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_21B0E2D5C(v8, v4, v2);
      MEMORY[0x21CEEA9A0](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_21B0CFEC4(0, v4, v5);
  v6 = sub_21B0E2BC4(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t *sub_21B0E2BC4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v16 = result;
  v17 = 0;
  v3 = 0;
  v21 = a3;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    sub_21AF92198(*(v21 + 56) + 40 * v12, v20);
    __swift_project_boxed_opaque_existential_0(v20, v20[3]);

    sub_21B111694();
    v13 = v19;
    sub_21AF99BE0(v18, &qword_27CD476A8, &unk_21B12B828);
    __swift_destroy_boxed_opaque_existential_0(v20);

    if (v13)
    {
      *(v16 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v17++, 1))
      {
        __break(1u);
        return sub_21B0E2DD4(v16, a2, v17, v21);
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_21B0E2DD4(v16, a2, v17, v21);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_21B0E2D5C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_21B0E2BC4(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_21B0E2DD4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CF8, &qword_21B114268);
  result = sub_21B112A14();
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
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_21AF92198(v17 + 40 * v16, v33);
    sub_21AF81D68(v33, v32);
    sub_21B112EC4();

    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
    result = sub_21B112F14();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_21AF81D68(v32, *(v9 + 56) + 40 * v24);
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void sub_21B0E3028(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21B1123D4();

  [a3 setDateFormat_];
}

uint64_t sub_21B0E308C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v9 = MEMORY[0x277D837D0];
  v26 = MEMORY[0x277D837D0];
  v27 = MEMORY[0x277D3E338];
  *&v25 = a1;
  *(&v25 + 1) = a2;
  v10 = *a6;
  v11 = sub_21AF98B58(a3, a4);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476B0, &qword_21B12B970);
  if ((sub_21B112994() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_21AF98B58(a3, a4);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_10:
    result = sub_21B112E54();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *a6;
  if (v14)
  {
    v18 = (v17[7] + 40 * v13);
    __swift_destroy_boxed_opaque_existential_0(v18);
    return sub_21AF81D68(&v25, v18);
  }

  else
  {
    v20 = __swift_mutable_project_boxed_opaque_existential_1(&v25, v9);
    MEMORY[0x28223BE20](v20);
    v22 = (&v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    sub_21B0E34D4(v13, a3, a4, *v22, v22[1], v17);
    __swift_destroy_boxed_opaque_existential_0(&v25);
  }
}

uint64_t get_enum_tag_for_layout_string_23SearchOnDeviceAnalytics8CSVErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_21B0E32AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v14 = *a5;
  v15 = sub_21AF98B58(a2, a3);
  if (__OFADD__(v14[2], (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v15;
  v18 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476B0, &qword_21B12B970);
  if ((sub_21B112994() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = sub_21AF98B58(a2, a3);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_10:
    result = sub_21B112E54();
    __break(1u);
    return result;
  }

  v17 = v19;
LABEL_5:
  v21 = *a5;
  if (v18)
  {
    v22 = (v21[7] + 40 * v17);
    __swift_destroy_boxed_opaque_existential_0(v22);
    return sub_21AF81D68(&v29, v22);
  }

  else
  {
    v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
    MEMORY[0x28223BE20](v24);
    v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v26);
    sub_21B0E3564(v17, a2, a3, v26, v21, a6, a7);
    __swift_destroy_boxed_opaque_existential_0(&v29);
  }
}

uint64_t sub_21B0E34D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x277D837D0];
  v14 = MEMORY[0x277D3E338];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_21AF81D68(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_21B0E3564(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_21AF81D68(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_8_19@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3;
  *(a2 + 8) = v3;
  *(a2 + 16) = 1;

  return swift_willThrow();
}

double OUTLINED_FUNCTION_14_10()
{

  return result;
}

SearchOnDeviceAnalytics::TypeModel_optional __swiftcall TypeModel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21B112A34();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TypeModel.rawValue.getter()
{
  result = 7630441;
  switch(*v0)
  {
    case 1:
      result = 0x3436746E69;
      break;
    case 2:
      result = 1953393013;
      break;
    case 3:
      result = 0x3436746E6975;
      break;
    case 4:
      result = 0x74616F6C66;
      break;
    case 5:
      result = 0x656C62756F64;
      break;
    case 6:
      result = 1819242338;
      break;
    case 7:
      result = 1836412517;
      break;
    case 8:
      result = 1635017060;
      break;
    case 9:
      result = 0x676E69727473;
      break;
    case 0xA:
      result = 0x616D65686373;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21B0E38A8()
{
  result = qword_27CD476C0;
  if (!qword_27CD476C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD476C0);
  }

  return result;
}

uint64_t sub_21B0E3920@<X0>(uint64_t *a1@<X8>)
{
  result = TypeModel.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TypeModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TypeModel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21B0E3B5C()
{
  result = qword_27CD476C8;
  if (!qword_27CD476C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD476C8);
  }

  return result;
}

unint64_t sub_21B0E3C60()
{
  v1 = v0;
  MEMORY[0x21CEE9770](*v0, v0[1]);
  OUTLINED_FUNCTION_0_28();
  MEMORY[0x21CEE9770](v1[2], v1[3]);
  OUTLINED_FUNCTION_0_28();
  MEMORY[0x21CEE9770](v1[4], v1[5]);
  return 0xD000000000000016;
}

uint64_t sub_21B0E3CF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476D0, &qword_21B12BAD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B1141D0;
  v2 = *v0;
  v7 = v0[1];
  v3 = v7;
  v8 = v2;
  *(inited + 48) = v2;
  *(inited + 32) = 0xD000000000000013;
  *(inited + 40) = 0x800000021B1422A0;
  *(inited + 64) = 0x696C632E616C646FLL;
  *(inited + 72) = 0xEB00000000746E65;
  *(inited + 80) = v3;
  *(inited + 96) = 0x6365722E616C646FLL;
  *(inited + 104) = 0xEB00000000657069;
  v6 = v0[2];
  *(inited + 112) = v6;
  sub_21B0E4064(&v8, v5);
  sub_21B0E4064(&v7, v5);
  sub_21B0E4064(&v6, v5);
  return sub_21B112334();
}

uint64_t sub_21B0E3DF8()
{
  v1 = v0;
  sub_21B112904();

  MEMORY[0x21CEE9770](v1[2], v1[3]);
  OUTLINED_FUNCTION_0_28();
  MEMORY[0x21CEE9770](v1[4], v1[5]);
  return 0x6C7070612E6D6F63;
}

uint64_t sub_21B0E3E80()
{
  MEMORY[0x21CEE9770](v0[2], v0[3]);
  MEMORY[0x21CEE9770](45, 0xE100000000000000);
  MEMORY[0x21CEE9770](v0[4], v0[5]);
  return 0x2D73657069636572;
}

uint64_t sub_21B0E3EEC(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_21B112D04() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_21B112D04() & 1) != 0)
    {
      v6 = a1[4] == a2[4] && a1[5] == a2[5];
      if (v6 || (sub_21B112D04() & 1) != 0)
      {
        v7 = a1[6] == a2[6] && a1[7] == a2[7];
        if (v7 || (sub_21B112D04() & 1) != 0)
        {
          v8 = a1[9];
          v9 = a2[9];
          if (v8)
          {
            if (v9)
            {
              v10 = a1[8] == a2[8] && v8 == v9;
              if (v10 || (sub_21B112D04() & 1) != 0)
              {
                return 1;
              }
            }
          }

          else if (!v9)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_21B0E3FD4()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_21B0E4004()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_21B0E40C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_21B0E4100(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0_28()
{

  JUMPOUT(0x21CEE9770);
}

uint64_t sub_21B0E4184(uint64_t a1)
{
  v2 = sub_21B111DA4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_1();
  v49 = v6;
  OUTLINED_FUNCTION_12();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v43 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  *(&v54 + 1) = &type metadata for SODAFeatureFlags;
  v55 = sub_21B0C6C54();
  LOBYTE(v53) = 1;
  v13 = sub_21B1111D4();
  __swift_destroy_boxed_opaque_existential_0(&v53);
  v14 = sub_21B111D74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476F0, &qword_21B12BBD0);
  sub_21B0E70F4(&qword_27CD46FE0, MEMORY[0x277D39E18], MEMORY[0x277D39E20]);
  v15 = sub_21B112334();
  v16 = *(v14 + 16);
  if (v16)
  {
    v44 = v13;
    v45 = a1;
    v17 = objc_opt_self();
    v47 = v12;
    v48 = v17;
    v19 = *(v4 + 16);
    v18 = v4 + 16;
    v20 = *(v18 + 64);
    v43 = v14;
    v21 = v14 + ((v20 + 32) & ~v20);
    v50 = *(v18 + 56);
    v51 = v19;
    v46 = (v18 - 8);
    while (1)
    {
      v52 = v16;
      v22 = v51;
      v51(v12, v21, v2);
      v22(v10, v12, v2);
      v23 = v49;
      v24 = v12;
      v25 = v2;
      v22(v49, v24, v2);
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v26 = [v48 defaultManager];
      type metadata accessor for RegisteredRecipeEnvironment(0);
      swift_allocObject();
      v27 = sub_21B0C7920(v23, 0, 0, &v53, 0, v26);
      swift_isUniquelyReferenced_nonNull_native();
      *&v53 = v15;
      v28 = v10;
      v29 = sub_21B0B5C74();
      if (__OFADD__(v15[2], (v30 & 1) == 0))
      {
        break;
      }

      v31 = v29;
      v32 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476F8, &qword_21B12BBD8);
      if (sub_21B112994())
      {
        v33 = sub_21B0B5C74();
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_17;
        }

        v31 = v33;
      }

      v15 = v53;
      if (v32)
      {
        v35 = (*(v53 + 56) + 16 * v31);
        *v35 = v27;
        v35[1] = &off_282C963F0;
        swift_unknownObjectRelease();
        v10 = v28;
        v2 = v25;
      }

      else
      {
        *(v53 + 8 * (v31 >> 6) + 64) |= 1 << v31;
        v10 = v28;
        v36 = v28;
        v2 = v25;
        v51((v15[6] + v31 * v50), v36, v25);
        v37 = (v15[7] + 16 * v31);
        *v37 = v27;
        v37[1] = &off_282C963F0;
        v38 = v15[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_16;
        }

        v15[2] = v40;
      }

      v41 = *v46;
      (*v46)(v10, v2);
      v12 = v47;
      v41(v47, v2);
      v21 += v50;
      v16 = v52 - 1;
      if (v52 == 1)
      {

        a1 = v45;
        LOBYTE(v13) = v44;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_21B112E54();
    __break(1u);
  }

  else
  {

LABEL_14:
    type metadata accessor for SODAPoirotV1ToV2DataMigrator();
    result = swift_allocObject();
    *(result + 16) = a1;
    *(result + 24) = v13 & 1;
    *(result + 32) = v15;
  }

  return result;
}

uint64_t sub_21B0E45E0@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v33 = sub_21B110C44();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v29 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD470B0, &unk_21B129080);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD470B8, &qword_21B12B820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  v8 = sub_21B1110B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21B110FD4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21B111074();
  v16 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v15, *MEMORY[0x277CC9810], v12);
  sub_21B110FE4();
  (*(v13 + 8))(v15, v12);
  sub_21B111094();
  result = __swift_getEnumTagSinglePayload(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_21B111054();
    v20 = sub_21B110FC4();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v20);
    sub_21B111044();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476E8, &qword_21B12BBC8);
    v21 = sub_21B111064();
    v22 = *(v21 - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_21B113DB0;
    v26 = v25 + v24;
    v27 = *(v22 + 104);
    v27(v26, *MEMORY[0x277CC9960], v21);
    v27(v26 + v23, *MEMORY[0x277CC9940], v21);
    sub_21AF9F1E8(v25);
    v28 = v30;
    sub_21B111014();

    sub_21B111034();
    (*(v31 + 8))(v28, v33);
    return (*(v16 + 8))(v18, v29);
  }

  return result;
}

uint64_t sub_21B0E4AA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47270, &qword_21B12A140);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_21B110F84();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_21B0E45E0(v2);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_21AF99BE0(v2, &qword_27CD47270, &qword_21B12A140);
    result = sub_21B1129C4("Fatal error", 11, 2, 0, 0xE000000000000000, "SearchOnDeviceAnalytics/SODAPoirotV1ToV2DataMigrator.swift", 58, 2, 26);
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    sub_21B110F04();
    sub_21B110F44();
    v10 = *(v4 + 8);
    v10(v7, v3);
    return (v10)(v9, v3);
  }

  return result;
}

void sub_21B0E4CA8()
{
  sub_21B1117B4();
  OUTLINED_FUNCTION_1();
  v41 = v2;
  v42 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v45 = v4 - v3;
  OUTLINED_FUNCTION_33_0();
  v44 = sub_21B110D94();
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v6 = sub_21B111CB4();
  OUTLINED_FUNCTION_1();
  v43 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v37 - v13;
  v15 = sub_21B111BA4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v37 - v22;
  v24 = v46;
  v25 = sub_21B0E57D4();
  if (!v24)
  {
    v38 = v21;
    v39 = v15;
    v26 = v45;
    v46 = v23;
    v40 = v17;
    if (v25)
    {
      __swift_storeEnumTagSinglePayload(v14, 1, 1, v44);
      (*(v43 + 104))(v11, *MEMORY[0x277D39DD8], v6);
      v27 = *(v0 + 16);
      v28 = v46;
      sub_21B111B44();
      sub_21B111B54();
      sub_21B111714();
      swift_allocObject();
      v29 = sub_21B111724();
      sub_21B1116F4();
      v31 = v39;
      v30 = v40;
      sub_21B1117A4();
      (*(v41 + 8))(v26, v42);
      if (v47 > 5)
      {
        v32 = OUTLINED_FUNCTION_8_20();
        v33(v32);
      }

      else
      {
        sub_21B0E511C(v29, v47 != 5);
        v36 = v38;
        (*(v30 + 16))(v38, v28, v31);
        type metadata accessor for DataWarehouseControllerV2();
        swift_allocObject();
        sub_21B0C4B9C(v36);

        v34 = OUTLINED_FUNCTION_8_20();
        v35(v34);
      }
    }
  }
}

void sub_21B0E511C(uint64_t a1, int a2)
{
  v4 = v3;
  v24 = a2;
  v22 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD476E0, &qword_21B12BBC0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = *(v2 + 32);
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  if (v11)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v11)) | (v14 << 6);
      v16 = *(v8 + 48);
      sub_21B111DA4();
      OUTLINED_FUNCTION_4_1();
      (*(v17 + 16))(v7, v16 + *(v17 + 72) * v15);
      v18 = *(v21 + 48);
      v19 = *(*(v8 + 56) + 16 * v15);
      v23 = v19;
      *&v7[v18] = v19;
      v20 = v19;
      swift_unknownObjectRetain();
      sub_21B0E5318(v7, v20, *(&v23 + 1), v22, v24 & 1);
      if (v4)
      {
        break;
      }

      v11 &= v11 - 1;
      sub_21AF99BE0(v7, &qword_27CD476E0, &qword_21B12BBC0);
      v13 = v14;
      if (!v11)
      {
        goto LABEL_5;
      }
    }

    sub_21AF99BE0(v7, &qword_27CD476E0, &qword_21B12BBC0);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        return;
      }

      v11 = *(v8 + 64 + 8 * v14);
      ++v13;
      if (v11)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21B0E5318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v42 = a5;
  v44 = a3;
  v45 = a2;
  v46 = a1;
  v5 = sub_21B110F84();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B111DA4();
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B1117B4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  v18 = v49;
  result = sub_21B1116F4();
  if (!v18)
  {
    v39 = v10;
    v40 = v12;
    v49 = v11;
    v37 = v7;
    v38 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA0, &unk_21B114220);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21B113D90;
    v21 = v46;
    v22 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
    v23 = MEMORY[0x277D3E340];
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = v23;
    *(v20 + 32) = v22;
    *(v20 + 40) = v24;
    sub_21B111774();
    v25 = *(v40 + 8);
    v26 = v49;
    v25(v15, v49);

    sub_21B111744();
    result = (v25)(v17, v26);
    if ((v48 & 1) == 0)
    {
      v27 = v47;
      v28 = v43;
      v29 = v39;
      (*(v43 + 16))(v39, v21, v8);
      v30 = (*(v28 + 88))(v29, v8);
      v31 = *MEMORY[0x277D39E08];
      (*(v28 + 8))(v29, v8);
      if (v30 == v31 && (v42 & 1) != 0)
      {
        v32 = v37;
        sub_21B110F74();
        sub_21B0E4AA0();
        v34 = v33;
        (*(v41 + 8))(v32, v38);
        ObjectType = swift_getObjectType();
        if (v34 > v27)
        {
          return (*(*(*(v44 + 8) + 8) + 24))(COERCE_DOUBLE(*&v34), 0, ObjectType);
        }

        v36 = *(v44 + 8);
      }

      else
      {
        ObjectType = swift_getObjectType();
        v36 = *(v44 + 8);
      }

      return (*(*(v36 + 8) + 24))(COERCE_DOUBLE(*&v27), 0, ObjectType);
    }
  }

  return result;
}

uint64_t sub_21B0E57D4()
{
  v140[2] = *MEMORY[0x277D85DE8];
  v115 = sub_21B110CA4();
  OUTLINED_FUNCTION_1();
  v114 = v0;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v113 = v3 - v2;
  v4 = OUTLINED_FUNCTION_33_0();
  v125 = type metadata accessor for LegacySchemaManifest(v4);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v6);
  v124 = (v110 - v7);
  OUTLINED_FUNCTION_33_0();
  v121 = sub_21B111924();
  OUTLINED_FUNCTION_1();
  v122 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v11);
  v123 = v110 - v12;
  OUTLINED_FUNCTION_33_0();
  v13 = sub_21B110D94();
  OUTLINED_FUNCTION_1();
  v131 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_22_2();
  v126 = v19;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_22_2();
  v127 = v21;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v22);
  v130 = v110 - v23;
  OUTLINED_FUNCTION_33_0();
  sub_21B111D14();
  OUTLINED_FUNCTION_1();
  v128 = v25;
  v129 = v24;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2();
  v137 = v27 - v26;
  OUTLINED_FUNCTION_33_0();
  v28 = sub_21B111CB4();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_9_1();
  v133 = v32;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v33);
  v35 = v110 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  MEMORY[0x28223BE20](v36 - 8);
  OUTLINED_FUNCTION_9_1();
  v132 = v37;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v38);
  v40 = v110 - v39;
  v41 = sub_21B111BA4();
  OUTLINED_FUNCTION_1();
  v136 = v42;
  v44 = MEMORY[0x28223BE20](v43);
  v46 = v110 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v48 = v110 - v47;
  v135 = v13;
  __swift_storeEnumTagSinglePayload(v40, 1, 1, v13);
  v49 = *MEMORY[0x277D39DD8];
  v50 = *(v30 + 104);
  v134 = v28;
  v50(v35, v49, v28);
  v51 = v139[2];
  v52 = v138;
  sub_21B111B44();
  if (!v52)
  {
    v110[1] = v46;
    v138 = v48;
    v111 = v41;
    v48 = v135;
    __swift_storeEnumTagSinglePayload(v132, 1, 1, v135);
    v50(v133, v49, v134);
    v53 = v51;
    sub_21B111CD4();
    v55 = v130;
    sub_21B111CC4();
    sub_21B110D44();
    v56 = v131 + 1;
    v57 = v131[1];
    v57(v55, v48);
    v58 = sub_21B1123D4();

    v59 = [v53 fileExistsAtPath_];

    if (!v59)
    {
      LOBYTE(v48) = 0;
      v65 = v128;
      v64 = v129;
      v60 = v111;
      v66 = v136;
      v63 = v137;
LABEL_15:
      (*(v65 + 8))(v63, v64);
      (*(v66 + 8))(v138, v60);
      return v48 & 1;
    }

    sub_21B111B34();
    sub_21B110D44();
    v57(v55, v48);
    v60 = sub_21B1123D4();

    v61 = [v53 fileExistsAtPath_];

    if (v61)
    {
      LOBYTE(v48) = 0;
      v62 = OUTLINED_FUNCTION_9_18();
      v63 = v137;
LABEL_14:
      sub_21B0E6B2C(v62, v63);
      v65 = v128;
      v64 = v129;
      v66 = v136;
      goto LABEL_15;
    }

    sub_21B111CC4();
    v67 = sub_21B110CE4();
    v57(v55, v48);
    sub_21B111B34();
    v68 = sub_21B110CE4();
    v131 = v56;
    v134 = v57;
    v57(v55, v48);
    v140[0] = 0;
    v69 = [v53 copyItemAtURL:v67 toURL:v68 error:v140];

    if (v69)
    {
      v70 = v140[0];
      v71 = v127;
      v63 = v137;
      sub_21B111D04();
      v72 = v126;
      sub_21B111CF4();
      sub_21B110D54();
      v73 = sub_21B1123D4();

      v74 = [v53 fileExistsAtPath_];

      if (v74 && (sub_21B110D54(), v75 = sub_21B1123D4(), , v76 = [v53 fileExistsAtPath_], v75, v76))
      {
        v133 = v53;
        sub_21B110B84();
        swift_allocObject();
        v77 = sub_21B110B74();
        v80 = sub_21B110DC4();
        v82 = v81;
        sub_21B0E70F4(&qword_27CD476D8, type metadata accessor for LegacySchemaManifest, &unk_21B12B068);
        v83 = v124;
        sub_21B110B64();
        v132 = v77;
        sub_21AF99728(v80, v82);
        v84 = *(v122 + 32);
        v85 = v121;
        v84(v123, v83, v121);
        v86 = sub_21B110DC4();
        v87 = v120;
        v110[0] = v86;
        v124 = v88;
        sub_21B110B64();
        sub_21AF99728(v110[0], v124);
        v84(v118, v87, v85);
        sub_21B111904();
        v63 = v137;
        v89 = sub_21B111914();
        v91 = v90;
        v92 = *(v122 + 8);
        v122 += 8;
        v124 = v92;
        (v92)(v119, v121);
        sub_21B111B94();
        sub_21B110E84();
        v125 = 0;
        v93 = v134;
        v134(v117, v48);
        sub_21AF99728(v89, v91);
        sub_21B111B34();
        v94 = v112;
        sub_21B111CE4();
        v95 = sub_21B110CD4();
        v97 = v96;
        v120 = v96;
        v93(v94, v48);
        v140[0] = v95;
        v140[1] = v97;
        v98 = v114;
        v99 = v113;
        v100 = v115;
        (*(v114 + 104))(v113, *MEMORY[0x277CC91D8], v115);
        sub_21AFC921C();
        v101 = v130;
        v102 = v116;
        sub_21B110D84();
        (*(v98 + 8))(v99, v100);

        v103 = v135;
        v93(v102, v135);
        v104 = sub_21B110CE4();
        v93(v101, v103);
        v140[0] = 0;
        v105 = [v133 removeItemAtURL:v104 error:v140];

        if (v105)
        {
          v106 = v140[0];
        }

        else
        {
          v105 = v140[0];
          v107 = sub_21B110C84();

          swift_willThrow();

          v125 = 0;
        }

        v108 = OUTLINED_FUNCTION_6_23();
        (v104)(v108);
        (v104)(v123, v105);
        v60 = v131;
        v109 = v134;
        v134(v126, v48);
        v109(v127, v48);
        LOBYTE(v48) = 1;
        v62 = OUTLINED_FUNCTION_9_18();
      }

      else
      {
        v60 = v131;
        v79 = v134;
        v134(v72, v48);
        v79(v71, v48);
        LOBYTE(v48) = 0;
        v62 = OUTLINED_FUNCTION_9_18();
      }

      goto LABEL_14;
    }

    v78 = v140[0];
    sub_21B110C84();

    swift_willThrow();
    v48 = v137;
    sub_21B0E6B2C(v139, v137);
    (*(v128 + 8))(v48, v129);
    (*(v136 + 8))(v138, v111);
  }

  return v48 & 1;
}

void sub_21B0E6B2C(_BYTE *a1, uint64_t a2)
{
  v47[1] = *MEMORY[0x277D85DE8];
  v4 = sub_21B110D94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B111D14();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[24] == 1)
  {
    v45 = a1;
    if (qword_2811FAAD8 != -1)
    {
      swift_once();
    }

    v12 = sub_21B1122D4();
    v13 = __swift_project_value_buffer(v12, qword_2811FAB28);
    (*(v9 + 16))(v11, a2, v8);
    v43 = v13;
    v14 = sub_21B1122B4();
    v15 = sub_21B1126E4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v44 = v5;
      v17 = v16;
      v41 = swift_slowAlloc();
      v47[0] = v41;
      *v17 = 136315138;
      sub_21B111CC4();
      sub_21B0E70F4(&qword_2811FAAF0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v18 = sub_21B112B84();
      v42 = a2;
      v20 = v19;
      (*(v44 + 8))(v7, v4);
      (*(v9 + 8))(v11, v8);
      v21 = sub_21AFCEC24(v18, v20, v47);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_21AF80000, v14, v15, "Attempting to remove legacy data warehouse at %s", v17, 0xCu);
      v22 = v41;
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x21CEEA9A0](v22, -1, -1);
      v23 = v17;
      v5 = v44;
      MEMORY[0x21CEEA9A0](v23, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v24 = *(v45 + 2);
    sub_21B111CC4();
    v25 = sub_21B110CE4();
    (*(v5 + 8))(v7, v4);
    v47[0] = 0;
    v26 = [v24 removeItemAtURL:v25 error:v47];

    v27 = v47[0];
    if (v26)
    {

      v28 = v27;
    }

    else
    {
      v45 = v47[0];
      v29 = v47[0];
      v30 = sub_21B110C84();

      swift_willThrow();
      v31 = v30;
      v32 = sub_21B1122B4();
      v33 = sub_21B112704();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v47[0] = v35;
        *v34 = 136315138;
        v46 = v30;
        v36 = v30;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
        v37 = sub_21B112454();
        v39 = sub_21AFCEC24(v37, v38, v47);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_21AF80000, v32, v33, "Failed to remove legacy data warehouse: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x21CEEA9A0](v35, -1, -1);
        MEMORY[0x21CEEA9A0](v34, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_21B0E709C()
{
  sub_21B0E7074();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_21B0E70F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21B0E71B0(uint64_t (*a1)(void))
{
  OUTLINED_FUNCTION_3_4();
  v4 = *(*(v1 + *(v3 + 152)) + 16);

  os_unfair_lock_lock(v4);
  v51 = *(v1 + 32);
  v52 = *(v1 + 24);
  HIDWORD(v50) = *(v1 + 40);
  v53 = *(v1 + 41);
  v6 = *(v1 + 48);
  v5 = *(v1 + 56);
  v7 = *(v1 + 64);
  swift_unknownObjectRetain();

  v55 = v7;

  os_unfair_lock_unlock(v4);

  OUTLINED_FUNCTION_3_4();
  v9 = *(v1 + *(v8 + 128));
  v10 = sub_21B112704();
  sub_21B112264("LEAKED SPAN: {{{", 16, 2, &dword_21AF80000, v9, v10, MEMORY[0x277D84F90]);
  sub_21B112704();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_21B1141D0;
  a1();
  v13 = sub_21B112924();
  v15 = v14;
  v16 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v17 = sub_21AF93F18();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  *(v12 + 96) = v16;
  *(v12 + 104) = v17;
  *(v12 + 64) = v17;
  *(v12 + 72) = 0x7461676572676761;
  *(v12 + 80) = 0xEB000000006E6F69;
  OUTLINED_FUNCTION_32_0();
  *(v12 + 136) = v16;
  *(v12 + 144) = v18;
  v54 = v18;
  *(v12 + 112) = 0xD000000000000010;
  *(v12 + 120) = v19;
  sub_21B112264("Name: %s, Category: %s, Subsystem: %s", v50, v51, v52);

  if ((v53 & 1) == 0)
  {
    sub_21B112704();
    v20 = OUTLINED_FUNCTION_7_16(v11);
    *(v20 + 16) = xmmword_21B113D90;
    v21 = sub_21B112924();
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = v54;
    *(v20 + 32) = v21;
    *(v20 + 40) = v22;
    OUTLINED_FUNCTION_22_6("Format string: %s");
    sub_21B112264(v23);

    if (v5)
    {

      sub_21B112704();
      v24 = OUTLINED_FUNCTION_7_16(v11);
      *(v24 + 16) = xmmword_21B113D90;
      *(v24 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F90, &qword_21B128910);
      OUTLINED_FUNCTION_13_8();
      *(v24 + 64) = sub_21B0ECE3C(v25, v27, &unk_27CD46F90, &qword_21B128910, v26);
      *(v24 + 32) = v5;
      OUTLINED_FUNCTION_21_5("Arguments: %@");
      sub_21B112264(v28);
    }
  }

  if (v6)
  {

    sub_21B112704();
    v29 = OUTLINED_FUNCTION_7_16(v11);
    *(v29 + 16) = xmmword_21B113D90;
    *(v29 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F80, &unk_21B12BD20);
    OUTLINED_FUNCTION_12_13();
    *(v29 + 64) = sub_21B0ECE3C(v30, v32, &unk_27CD46F80, &unk_21B12BD20, v31);
    *(v29 + 32) = v6;
    OUTLINED_FUNCTION_21_5("Analytics: %@");
    sub_21B112264(v33);
  }

  result = sub_21B0EC838(v7);
  if (!result)
  {
    goto LABEL_14;
  }

  v35 = result;
  if (result >= 1)
  {

    v36 = 0;
    do
    {
      if ((v55 & 0xC000000000000001) != 0)
      {
        v37 = OUTLINED_FUNCTION_48_1();
        MEMORY[0x21CEE9BB0](v37);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v36;
      sub_21B112704();
      v38 = OUTLINED_FUNCTION_7_16(v11);
      *(v38 + 16) = xmmword_21B113D90;
      swift_unknownObjectRetain();
      v39 = sub_21B112454();
      *(v38 + 56) = MEMORY[0x277D837D0];
      *(v38 + 64) = v54;
      *(v38 + 32) = v39;
      *(v38 + 40) = v40;
      OUTLINED_FUNCTION_40_3("Leaked cancellables: %s");
      sub_21B112264(v41);
      swift_unknownObjectRelease();
    }

    while (v35 != v36);

LABEL_14:
    v42 = sub_21B112704();
    OUTLINED_FUNCTION_43_3("}}}", 3, v43, v44, v45, v42);
    v46 = sub_21B112714();
    OUTLINED_FUNCTION_43_3("Some objects remain retained at the moment when all activities must be finalized. This could indicate deadlock, memory leak or not cancelled asynchronous procedures, such as networking or XPC calls.", 198, v47, v48, v49, v46);
    swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0E7698()
{
  v1 = *(*(v0 + *(*v0 + 152)) + 16);

  os_unfair_lock_lock(v1);
  v33 = *(v0 + 32);
  HIDWORD(v32) = *(v0 + 40);
  v34 = *(v0 + 41);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 64);
  swift_unknownObjectRetain();

  v36 = v4;

  os_unfair_lock_unlock(v1);

  v5 = *(v0 + 96);
  v6 = sub_21B112704();
  sub_21B112264("LEAKED SPAN: {{{", 16, 2, &dword_21AF80000, v5, v6, MEMORY[0x277D84F90]);
  sub_21B112704();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21B1141D0;
  sub_21B0EBA44(*(v0 + 80));
  v8 = sub_21B112924();
  v10 = v9;
  v11 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v12 = sub_21AF93F18();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 64) = v12;
  strcpy((v7 + 72), "resourceAccess");
  *(v7 + 87) = -18;
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  v35 = v12;
  *(v7 + 112) = 0xD000000000000010;
  *(v7 + 120) = 0x800000021B141B30;
  sub_21B112264("Name: %s, Category: %s, Subsystem: %s", v30, v32, v33);

  if ((v34 & 1) == 0)
  {
    sub_21B112704();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21B113D90;
    v14 = sub_21B112924();
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = v35;
    *(v13 + 32) = v14;
    *(v13 + 40) = v15;
    sub_21B112264("Format string: %s", v31);

    if (v2)
    {

      v16 = sub_21B112704();
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_21B113D90;
      *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F90, &qword_21B128910);
      *(v17 + 64) = sub_21B0ECE3C(&qword_27CD477A0, v18, &unk_27CD46F90, &qword_21B128910, MEMORY[0x277CC9C50]);
      *(v17 + 32) = v2;
      sub_21B112264("Arguments: %@", 13, 2, &dword_21AF80000, v5, v16, v17);
    }
  }

  if (v3)
  {

    v19 = sub_21B112704();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_21B113D90;
    *(v20 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F80, &unk_21B12BD20);
    *(v20 + 64) = sub_21B0ECE3C(&unk_27CD47790, v21, &unk_27CD46F80, &unk_21B12BD20, MEMORY[0x277CC9BB8]);
    *(v20 + 32) = v3;
    sub_21B112264("Analytics: %@", 13, 2, &dword_21AF80000, v5, v19, v20);
  }

  result = sub_21B0EC838(v36);
  if (result)
  {
    v23 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v24 = 0;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CEE9BB0](v24, v36);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v24;
      sub_21B112704();
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_21B113D90;
      swift_unknownObjectRetain();
      v26 = sub_21B112454();
      *(v25 + 56) = MEMORY[0x277D837D0];
      *(v25 + 64) = v35;
      *(v25 + 32) = v26;
      *(v25 + 40) = v27;
      sub_21B112264("Leaked cancellables: %s", v31);
      swift_unknownObjectRelease();
    }

    while (v23 != v24);
  }

  v28 = sub_21B112704();
  sub_21B112264("}}}", 3, 2, &dword_21AF80000, v5, v28, MEMORY[0x277D84F90]);
  if (sub_21B0E84F0(&type metadata for ResourceAccessActivity, &off_282C96FC0, sub_21AFD3014))
  {
    v29 = sub_21B112714();
    sub_21B112264("Some objects remain retained at the moment when all activities must be finalized. This could indicate deadlock, memory leak or not cancelled asynchronous procedures, such as networking or XPC calls.", 198, 2, &dword_21AF80000, v5, v29, MEMORY[0x277D84F90]);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_21B0E7C28()
{
  OUTLINED_FUNCTION_3_4();
  v2 = *(*(v0 + *(v1 + 152)) + 16);

  os_unfair_lock_lock(v2);
  v40 = *(v0 + 41);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 64);
  swift_unknownObjectRetain();

  os_unfair_lock_unlock(v2);

  sub_21B112704();
  OUTLINED_FUNCTION_9_16("LEAKED SPAN: {{{");
  sub_21B112264(v6);
  sub_21B112704();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21B1141D0;
  sub_21B0EBA44(*(v0 + 80));
  v9 = sub_21B112924();
  v11 = v10;
  v12 = MEMORY[0x277D837D0];
  *(v8 + 56) = MEMORY[0x277D837D0];
  v13 = sub_21AF93F18();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  *(v8 + 96) = v12;
  *(v8 + 104) = v13;
  *(v8 + 64) = v13;
  strcpy((v8 + 72), "networkRequest");
  *(v8 + 87) = -18;
  OUTLINED_FUNCTION_32_0();
  *(v8 + 136) = v12;
  *(v8 + 144) = v14;
  v41 = v14;
  *(v8 + 112) = 0xD000000000000010;
  *(v8 + 120) = v15;
  OUTLINED_FUNCTION_9_16("Name: %s, Category: %s, Subsystem: %s");
  sub_21B112264(v16);

  if ((v40 & 1) == 0)
  {
    sub_21B112704();
    v17 = OUTLINED_FUNCTION_7_16(v7);
    *(v17 + 16) = xmmword_21B113D90;
    v18 = sub_21B112924();
    *(v17 + 56) = MEMORY[0x277D837D0];
    *(v17 + 64) = v41;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    OUTLINED_FUNCTION_22_6("Format string: %s");
    sub_21B112264(v20);

    if (v3)
    {

      sub_21B112704();
      v21 = OUTLINED_FUNCTION_7_16(v7);
      *(v21 + 16) = xmmword_21B113D90;
      *(v21 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F90, &qword_21B128910);
      OUTLINED_FUNCTION_13_8();
      *(v21 + 64) = sub_21B0ECE3C(v22, v24, &unk_27CD46F90, &qword_21B128910, v23);
      *(v21 + 32) = v3;
      OUTLINED_FUNCTION_21_5("Arguments: %@");
      sub_21B112264(v25);
    }
  }

  if (v4)
  {

    sub_21B112704();
    v26 = OUTLINED_FUNCTION_7_16(v7);
    *(v26 + 16) = xmmword_21B113D90;
    *(v26 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F80, &unk_21B12BD20);
    OUTLINED_FUNCTION_12_13();
    *(v26 + 64) = sub_21B0ECE3C(v27, v29, &unk_27CD46F80, &unk_21B12BD20, v28);
    *(v26 + 32) = v4;
    OUTLINED_FUNCTION_21_5("Analytics: %@");
    sub_21B112264(v30);
  }

  result = sub_21B0EC838(v5);
  if (result)
  {
    v32 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v33 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CEE9BB0](v33, v5);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v33;
      sub_21B112704();
      v34 = OUTLINED_FUNCTION_7_16(v7);
      *(v34 + 16) = xmmword_21B113D90;
      swift_unknownObjectRetain();
      v35 = sub_21B112454();
      *(v34 + 56) = MEMORY[0x277D837D0];
      *(v34 + 64) = v41;
      *(v34 + 32) = v35;
      *(v34 + 40) = v36;
      OUTLINED_FUNCTION_40_3("Leaked cancellables: %s");
      sub_21B112264(v37);
      swift_unknownObjectRelease();
    }

    while (v32 != v33);
  }

  sub_21B112704();
  OUTLINED_FUNCTION_22_6("}}}");
  sub_21B112264(v38);
  if (sub_21B0E84F0(&type metadata for ResourceNetworkActivity, &off_282C96A00, sub_21AFD2FEC))
  {
    sub_21B112714();
    OUTLINED_FUNCTION_22_6("Some objects remain retained at the moment when all activities must be finalized. This could indicate deadlock, memory leak or not cancelled asynchronous procedures, such as networking or XPC calls.");
    sub_21B112264(v39);
  }

  swift_unknownObjectRelease();
}

double sub_21B0E8140(uint64_t a1)
{
  OUTLINED_FUNCTION_3_4();
  v4 = *(*(v1 + *(v3 + 152)) + 16);

  os_unfair_lock_lock(v4);
  *(v1 + 48) = a1;

  os_unfair_lock_unlock(v4);

  return result;
}

const char *sub_21B0E81CC()
{
  v1 = sub_21B1113D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + *(*v0 + 112), v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277D3E098])
  {
    return "initialization";
  }

  if (v5 == *MEMORY[0x277D3E090])
  {
    return "validation";
  }

  if (v5 == *MEMORY[0x277D3E088])
  {
    return "processing";
  }

  (*(v2 + 8))(v4, v1);
  return "unknown";
}

const char *sub_21B0E834C()
{
  v1 = sub_21B111424();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0 + *(*v0 + 112), v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277D3E0D0])
  {
    return "engine";
  }

  if (v5 == *MEMORY[0x277D3E0C8])
  {
    return "initialization";
  }

  if (v5 == *MEMORY[0x277D3E0C0])
  {
    return "validation";
  }

  if (v5 == *MEMORY[0x277D3E0B8])
  {
    return "processing";
  }

  (*(v2 + 8))(v4, v1);
  return "unknown";
}

uint64_t sub_21B0E84F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(v3 + 80);
  v8[3] = a1;
  v8[4] = a2;
  v8[0] = v5;
  v6 = __swift_project_boxed_opaque_existential_0(v8, a1);
  LOBYTE(a3) = a3(*v6);
  __swift_destroy_boxed_opaque_existential_0(v8);
  return a3 & 1;
}

uint64_t sub_21B0E8550()
{
  v1 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_3_4();
  (*(v3 + 16))(v7, v0 + *(v8 + 144), v1);
  sub_21B110F24();
  return (*(v3 + 8))(v7, v1);
}

void sub_21B0E866C()
{
  OUTLINED_FUNCTION_76();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47750, &qword_21B128908);
  v5 = OUTLINED_FUNCTION_25(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_38_4();
  v10 = sub_21B1113D4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11_9();
  sub_21AF99A84(v60, &v59, &qword_27CD477E8, &unk_21B12BD58);
  sub_21B0EA8FC(v0, sub_21B0EACB4);
  if ((v62 & 1) != 0 || !v63)
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_20_7();
    v34(v16);
    OUTLINED_FUNCTION_8();
    v36 = *(v35 + 136);
    OUTLINED_FUNCTION_18_6();
    sub_21AF99A84(v3 + v36, v8, &qword_27CD47750, &qword_21B128908);
    v37 = sub_21B1122A4();
    if (__swift_getEnumTagSinglePayload(v8, 1, v37) != 1)
    {
      OUTLINED_FUNCTION_8();
      v24 = *(v3 + *(v38 + 128));
      sub_21B112734();
      sub_21AF92A48();
      OUTLINED_FUNCTION_9_19();
      sub_21B112284();
      (*(v12 + 8))(v16, v10);
      OUTLINED_FUNCTION_7_2();
      v39 = OUTLINED_FUNCTION_48_1();
      v41(v39, v40);
      goto LABEL_7;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v58 = v60[1];
  HIDWORD(v57) = v61;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_20_7();
  v18(v2);
  OUTLINED_FUNCTION_8();
  v20 = *(v19 + 136);
  OUTLINED_FUNCTION_18_6();
  sub_21AF99A84(v3 + v20, v1, &qword_27CD47750, &qword_21B128908);
  v21 = sub_21B1122A4();
  OUTLINED_FUNCTION_203(v1);
  if (v22)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_8();
  v24 = *(v3 + *(v23 + 128));

  sub_21B112734();
  sub_21AF92A48();
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_19_6(v25, v26, v27, v28, v29, v30, v31, v32, v57, v58);

  (*(v12 + 8))(v2, v10);
  OUTLINED_FUNCTION_7_2();
  (*(v33 + 8))(v1, v21);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v43 = Strong;
    v59 = v3;
    sub_21B112454();
    OUTLINED_FUNCTION_28_3();
    v44 = *(*(v43 + 32) + 16);
    os_unfair_lock_lock(v44);
    OUTLINED_FUNCTION_31_6();
    sub_21B0B58C8(v45, v46, v47, v48, v49);

    os_unfair_lock_unlock(v44);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v50 = *(v43 + 24);
      ObjectType = swift_getObjectType();
      (*(v50 + 16))(v3, &off_282C95908, ObjectType, v50);
      swift_unknownObjectRelease();
    }

    LOBYTE(v59) = 1;

    sub_21B0ED1A4(v60, v52, &qword_27CD477E8);
    *&v53 = OUTLINED_FUNCTION_10_15().n128_u64[0];
    OUTLINED_FUNCTION_42_3(MEMORY[0x277D84F90], v53);
    OUTLINED_FUNCTION_8();
    *(v3 + *(v54 + 120)) = 1;
    swift_weakAssign();
  }

  else
  {
    v55 = sub_21B112714();
    v56 = sub_21B112264("ActivityMonitor is deallocated before ActivitySpan's end() method is invoked. Activity's bookkeeping could be inaccurate.", 121, 2, &dword_21AF80000, v24, v55, MEMORY[0x277D84F90]);
    sub_21B0ED1A4(v60, v56, &qword_27CD477E8);
  }

  OUTLINED_FUNCTION_77();
}

void sub_21B0E8B14()
{
  OUTLINED_FUNCTION_76();
  v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47750, &qword_21B128908);
  v5 = OUTLINED_FUNCTION_25(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_1();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_38_4();
  v10 = sub_21B111424();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11_9();
  sub_21AF99A84(v60, &v59, &qword_27CD477B8, &unk_21B12BD40);
  sub_21B0EA8FC(v0, sub_21B0EADE4);
  if ((v62 & 1) != 0 || !v63)
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_20_7();
    v34(v16);
    OUTLINED_FUNCTION_8();
    v36 = *(v35 + 136);
    OUTLINED_FUNCTION_18_6();
    sub_21AF99A84(v3 + v36, v8, &qword_27CD47750, &qword_21B128908);
    v37 = sub_21B1122A4();
    if (__swift_getEnumTagSinglePayload(v8, 1, v37) != 1)
    {
      OUTLINED_FUNCTION_8();
      v24 = *(v3 + *(v38 + 128));
      sub_21B112734();
      sub_21B0B2458();
      OUTLINED_FUNCTION_9_19();
      sub_21B112284();
      (*(v12 + 8))(v16, v10);
      OUTLINED_FUNCTION_7_2();
      v39 = OUTLINED_FUNCTION_48_1();
      v41(v39, v40);
      goto LABEL_7;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v58 = v60[1];
  HIDWORD(v57) = v61;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_20_7();
  v18(v2);
  OUTLINED_FUNCTION_8();
  v20 = *(v19 + 136);
  OUTLINED_FUNCTION_18_6();
  sub_21AF99A84(v3 + v20, v1, &qword_27CD47750, &qword_21B128908);
  v21 = sub_21B1122A4();
  OUTLINED_FUNCTION_203(v1);
  if (v22)
  {
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_8();
  v24 = *(v3 + *(v23 + 128));

  sub_21B112734();
  sub_21B0B2458();
  OUTLINED_FUNCTION_9_19();
  OUTLINED_FUNCTION_19_6(v25, v26, v27, v28, v29, v30, v31, v32, v57, v58);

  (*(v12 + 8))(v2, v10);
  OUTLINED_FUNCTION_7_2();
  (*(v33 + 8))(v1, v21);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v43 = Strong;
    v59 = v3;
    sub_21B112454();
    OUTLINED_FUNCTION_28_3();
    v44 = *(*(v43 + 32) + 16);
    os_unfair_lock_lock(v44);
    OUTLINED_FUNCTION_31_6();
    sub_21B0B58C8(v45, v46, v47, v48, v49);

    os_unfair_lock_unlock(v44);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v50 = *(v43 + 24);
      ObjectType = swift_getObjectType();
      (*(v50 + 16))(v3, &off_282C95908, ObjectType, v50);
      swift_unknownObjectRelease();
    }

    LOBYTE(v59) = 1;

    sub_21B0ED1A4(v60, v52, &qword_27CD477B8);
    *&v53 = OUTLINED_FUNCTION_10_15().n128_u64[0];
    OUTLINED_FUNCTION_42_3(MEMORY[0x277D84F90], v53);
    OUTLINED_FUNCTION_8();
    *(v3 + *(v54 + 120)) = 1;
    swift_weakAssign();
  }

  else
  {
    v55 = sub_21B112714();
    v56 = sub_21B112264("ActivityMonitor is deallocated before ActivitySpan's end() method is invoked. Activity's bookkeeping could be inaccurate.", 121, 2, &dword_21AF80000, v24, v55, MEMORY[0x277D84F90]);
    sub_21B0ED1A4(v60, v56, &qword_27CD477B8);
  }

  OUTLINED_FUNCTION_77();
}

uint64_t sub_21B0E8FBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47750, &qword_21B128908);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v3);
  v7 = v40 - v6 + 16;
  v8 = *(v0 + 40);
  v43 = *(v0 + 24);
  v44 = v8;
  v45 = *(v0 + 56);
  v46 = *(v0 + 72);
  v9 = *(&v8 + 1);
  sub_21AF99A84(&v43, v40, &unk_27CD47770, &unk_21B12BD08);
  sub_21B0EAAEC(v9, 0x526B726F7774656ELL, 0xEE00747365757165);
  if ((BYTE1(v44) & 1) == 0)
  {
    v10 = v45;
    if (v45)
    {
      v11 = v43;
      v12 = v44;
      v13 = *(v1 + 80);
      v14 = *(*v1 + 136);
      swift_beginAccess();
      sub_21AF99A84(v1 + v14, v7, &qword_27CD47750, &qword_21B128908);
      v15 = sub_21B1122A4();
      result = __swift_getEnumTagSinglePayload(v7, 1, v15);
      if (result != 1)
      {
        v17 = *(v1 + 96);

        v18 = sub_21B112734();
        v19 = sub_21B0EBA44(v13);
        LOBYTE(v38) = v12;
        sub_21AFD3040(v18, v17, v19, v20, 2, v7, v11, *(&v11 + 1), v38, v10);

        (*(*(v15 - 8) + 8))(v7, v15);
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return result;
    }
  }

  v21 = *(v1 + 80);
  v22 = *(*v1 + 136);
  swift_beginAccess();
  sub_21AF99A84(v1 + v22, v5, &qword_27CD47750, &qword_21B128908);
  v23 = sub_21B1122A4();
  result = __swift_getEnumTagSinglePayload(v5, 1, v23);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = *(v1 + 96);
  sub_21B112734();
  sub_21B0EBA44(v21);
  sub_21B112284();
  (*(*(v23 - 8) + 8))(v5, v23);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    *&v40[0] = v1;
    v26 = sub_21B112454();
    v28 = v27;
    v29 = *(*(v25 + 32) + 16);
    os_unfair_lock_lock(v29);
    sub_21B0B58C8(v25, v26, v28, v1, &off_282C95908);

    os_unfair_lock_unlock(v29);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v25 + 24);
      ObjectType = swift_getObjectType();
      (*(v30 + 16))(v1, &off_282C95908, ObjectType, v30);
      swift_unknownObjectRelease();
    }

    LOBYTE(v40[0]) = 1;

    sub_21B0ED1A4(&v43, v32, &unk_27CD47770);
    v33 = v40[0];
    v34 = *(v1 + 40);
    v40[0] = *(v1 + 24);
    v40[1] = v34;
    v41 = *(v1 + 56);
    v35 = *&v41;
    v42 = *(v1 + 72);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 41) = v33;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = MEMORY[0x277D84F90];
    *(v1 + 72) = 0;
    sub_21B0ED1A4(v40, v35, &unk_27CD47770);
    *(v1 + 88) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_21B0E84F0(&type metadata for ResourceNetworkActivity, &off_282C96A00, sub_21AFD2FEC))
    {
      v37 = sub_21B112714();
      v36 = sub_21B112264("ActivityMonitor is deallocated before ActivitySpan's end() method is invoked. Activity's bookkeeping could be inaccurate.", 121, 2, &dword_21AF80000, v17, v37, MEMORY[0x277D84F90]);
    }

    return sub_21B0ED1A4(&v43, v36, &unk_27CD47770);
  }
}

uint64_t sub_21B0E9474()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47750, &qword_21B128908);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v3);
  v7 = v40 - v6 + 16;
  v8 = *(v0 + 40);
  v43 = *(v0 + 24);
  v44 = v8;
  v45 = *(v0 + 56);
  v46 = *(v0 + 72);
  v9 = *(&v8 + 1);
  sub_21AF99A84(&v43, v40, &qword_27CD47758, &unk_21B12BCF0);
  sub_21B0EAAEC(v9, 0x656372756F736572, 0xEE00737365636341);
  if ((BYTE1(v44) & 1) == 0)
  {
    v10 = v45;
    if (v45)
    {
      v11 = v43;
      v12 = v44;
      v13 = *(v1 + 80);
      v14 = *(*v1 + 136);
      swift_beginAccess();
      sub_21AF99A84(v1 + v14, v7, &qword_27CD47750, &qword_21B128908);
      v15 = sub_21B1122A4();
      result = __swift_getEnumTagSinglePayload(v7, 1, v15);
      if (result != 1)
      {
        v17 = *(v1 + 96);

        v18 = sub_21B112734();
        v19 = sub_21B0EBA44(v13);
        LOBYTE(v38) = v12;
        sub_21AFD3040(v18, v17, v19, v20, 2, v7, v11, *(&v11 + 1), v38, v10);

        (*(*(v15 - 8) + 8))(v7, v15);
        goto LABEL_7;
      }

LABEL_16:
      __break(1u);
      return result;
    }
  }

  v21 = *(v1 + 80);
  v22 = *(*v1 + 136);
  swift_beginAccess();
  sub_21AF99A84(v1 + v22, v5, &qword_27CD47750, &qword_21B128908);
  v23 = sub_21B1122A4();
  result = __swift_getEnumTagSinglePayload(v5, 1, v23);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = *(v1 + 96);
  sub_21B112734();
  sub_21B0EBA44(v21);
  sub_21B112284();
  (*(*(v23 - 8) + 8))(v5, v23);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    *&v40[0] = v1;
    v26 = sub_21B112454();
    v28 = v27;
    v29 = *(*(v25 + 32) + 16);
    os_unfair_lock_lock(v29);
    sub_21B0B58C8(v25, v26, v28, v1, &off_282C95908);

    os_unfair_lock_unlock(v29);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v30 = *(v25 + 24);
      ObjectType = swift_getObjectType();
      (*(v30 + 16))(v1, &off_282C95908, ObjectType, v30);
      swift_unknownObjectRelease();
    }

    LOBYTE(v40[0]) = 1;

    sub_21B0ED1A4(&v43, v32, &qword_27CD47758);
    v33 = v40[0];
    v34 = *(v1 + 40);
    v40[0] = *(v1 + 24);
    v40[1] = v34;
    v41 = *(v1 + 56);
    v35 = *&v41;
    v42 = *(v1 + 72);
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    *(v1 + 41) = v33;
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = MEMORY[0x277D84F90];
    *(v1 + 72) = 0;
    sub_21B0ED1A4(v40, v35, &qword_27CD47758);
    *(v1 + 88) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_21B0E84F0(&type metadata for ResourceAccessActivity, &off_282C96FC0, sub_21AFD3014))
    {
      v37 = sub_21B112714();
      v36 = sub_21B112264("ActivityMonitor is deallocated before ActivitySpan's end() method is invoked. Activity's bookkeeping could be inaccurate.", 121, 2, &dword_21AF80000, v17, v37, MEMORY[0x277D84F90]);
    }

    return sub_21B0ED1A4(&v43, v36, &qword_27CD47758);
  }
}

double sub_21B0E992C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_3_4();
  v10 = *(*(v4 + *(v9 + 152)) + 16);

  os_unfair_lock_lock(v10);
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 41) = 0;
  *(v4 + 56) = a4;

  os_unfair_lock_unlock(v10);
  OUTLINED_FUNCTION_114();

  return result;
}

void sub_21B0E9A2C()
{
  OUTLINED_FUNCTION_76();
  v68 = v1;
  v72 = v2;
  v73 = v3;
  v4 = v0;
  v69 = v5;
  v70 = v6;
  v71 = v7;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47750, &qword_21B128908);
  v13 = OUTLINED_FUNCTION_25(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1_1();
  v74 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - v17;
  v19 = sub_21B110F84();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2();
  v25 = v24 - v23;
  swift_weakInit();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 256;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = MEMORY[0x277D84F90];
  *(v0 + 72) = 0;
  OUTLINED_FUNCTION_3_4();
  *(v0 + *(v26 + 120)) = 0;
  OUTLINED_FUNCTION_3_4();
  v28 = *(v27 + 128);
  sub_21AF9406C(0, &qword_27CD46FC8, 0x277D86200);
  OUTLINED_FUNCTION_32_0();
  v75 = 0xD000000000000010;
  v76 = v29;
  v79 = 45;
  v80 = 0xE100000000000000;
  v77 = 95;
  v78 = 0xE100000000000000;
  v66 = sub_21AFC921C();
  sub_21B112804();
  *(v0 + v28) = sub_21B112764();
  OUTLINED_FUNCTION_8();
  v31 = *(v30 + 136);
  v32 = sub_21B1122A4();
  __swift_storeEnumTagSinglePayload(v4 + v31, 1, 1, v32);
  OUTLINED_FUNCTION_8();
  v34 = *(v33 + 152);
  type metadata accessor for Locker();
  v35 = swift_allocObject();
  v36 = swift_slowAlloc();
  *(v35 + 16) = v36;
  *v36 = 0;
  *(v4 + v34) = v35;
  sub_21B110F74();
  OUTLINED_FUNCTION_8();
  (*(v21 + 32))(v4 + *(v37 + 144), v25, v19);
  swift_weakAssign();
  OUTLINED_FUNCTION_8();
  v39 = *(v38 + 112);
  v40 = v73(0);
  v41 = *(v40 - 8);
  v42 = *(v41 + 16);
  v73 = v9;
  v42(v4 + v39, v9, v40);
  OUTLINED_FUNCTION_8();
  v44 = *(v43 + 128);
  *(v4 + v44);

  sub_21B112294();
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v32);
  OUTLINED_FUNCTION_8();
  v46 = *(v45 + 136);
  swift_beginAccess();
  sub_21B0ED0B8(v18, v4 + v46);
  swift_endAccess();
  v75 = v4;

  sub_21B112454();
  OUTLINED_FUNCTION_28_3();
  v47 = *(*(v11 + 32) + 16);
  os_unfair_lock_lock(v47);
  OUTLINED_FUNCTION_31_6();
  sub_21B0B576C(v48, v49, v50, v51, v52, v53);

  os_unfair_lock_unlock(v47);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v54 = *(v11 + 24);
    ObjectType = swift_getObjectType();
    (*(v54 + 8))(v4, &off_282C95908, ObjectType, v54);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v56 = v4 + v46;
  v57 = v74;
  sub_21AF99A84(v56, v74, &qword_27CD47750, &qword_21B128908);
  OUTLINED_FUNCTION_203(v57);
  if (v58)
  {
    __break(1u);
  }

  else
  {
    v59 = *(v4 + v44);
    v60 = sub_21B112744();
    v61 = v73;
    v68();
    OUTLINED_FUNCTION_9_19();
    LOBYTE(v66) = v69;
    sub_21AFD3040(v60, v59, v62, v63, v64, v57, v70, v71, v66, v72);

    (*(v41 + 8))(v61, v40);
    OUTLINED_FUNCTION_7_2();
    (*(v65 + 8))(v57, v32);
    OUTLINED_FUNCTION_77();
  }
}

id *sub_21B0E9F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = v6;
  v44 = a4;
  v45 = a6;
  v42 = a5;
  v43 = a3;
  v46 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47750, &qword_21B128908);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v41[-v13];
  v15 = sub_21B110F84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_weakInit();
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 40) = 256;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = MEMORY[0x277D84F90];
  *(v6 + 72) = 0;
  *(v6 + 88) = 0;
  sub_21AF9406C(0, &qword_27CD46FC8, 0x277D86200);
  v47 = 0xD000000000000010;
  v48 = 0x800000021B141B30;
  v51 = 45;
  v52 = 0xE100000000000000;
  v49 = 95;
  v50 = 0xE100000000000000;
  v40 = sub_21AFC921C();
  sub_21B112804();
  *(v6 + 96) = sub_21B112764();
  v19 = *(*v6 + 136);
  v20 = sub_21B1122A4();
  __swift_storeEnumTagSinglePayload(v7 + v19, 1, 1, v20);
  v21 = *(*v7 + 19);
  type metadata accessor for Locker();
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  *(v22 + 16) = v23;
  *v23 = 0;
  *(v7 + v21) = v22;
  sub_21B110F74();
  v24 = v18;
  v25 = v46;
  (*(v16 + 32))(v7 + *(*v7 + 18), v24, v15);
  swift_weakAssign();
  v7[10] = v25;
  v26 = v7[12];

  sub_21B112294();
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v20);
  v27 = *(*v7 + 17);
  swift_beginAccess();
  sub_21B0ED0B8(v14, v7 + v27);
  swift_endAccess();
  v47 = v7;

  v28 = sub_21B112454();
  v30 = v29;
  v31 = *(*(a1 + 32) + 16);
  os_unfair_lock_lock(v31);
  sub_21B0B576C(a1, v28, v30, v7, &off_282C95908, v32);

  os_unfair_lock_unlock(v31);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v33 = *(a1 + 24);
    ObjectType = swift_getObjectType();
    (*(v33 + 8))(v7, &off_282C95908, ObjectType, v33);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_21AF99A84(v7 + v27, v12, &qword_27CD47750, &qword_21B128908);
  result = __swift_getEnumTagSinglePayload(v12, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v36 = v7[12];
    v37 = sub_21B112744();
    v38 = sub_21B0EBA44(v25);
    LOBYTE(v40) = v42;
    sub_21AFD3040(v37, v36, v38, v39, 2, v12, v43, v44, v40, v45);

    (*(*(v20 - 8) + 8))(v12, v20);
    sub_21B0EA78C();

    return v7;
  }

  return result;
}

void *sub_21B0EA49C(void (*a1)(void))
{
  if ((*(v1 + *(*v1 + 120)) & 1) == 0)
  {
    (*(*v1 + 400))();
  }

  swift_weakDestroy();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_4();
  v4 = *(v3 + 112);
  a1(0);
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 8))(v1 + v4);
  OUTLINED_FUNCTION_3_4();

  OUTLINED_FUNCTION_3_4();
  sub_21B0ED1A4(v1 + *(v7 + 136), v8, &qword_27CD47750);
  OUTLINED_FUNCTION_3_4();
  v10 = *(v9 + 144);
  sub_21B110F84();
  OUTLINED_FUNCTION_0_1();
  (*(v11 + 8))(v1 + v10);
  OUTLINED_FUNCTION_3_4();

  return v1;
}

uint64_t sub_21B0EA630()
{
  if (*(v0 + 88) != 1)
  {
    (*(*v0 + 400))();
  }

  swift_weakDestroy();

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_3_4();
  sub_21B0ED1A4(v0 + *(v1 + 136), v2, &qword_27CD47750);
  OUTLINED_FUNCTION_3_4();
  v4 = *(v3 + 144);
  sub_21B110F84();
  OUTLINED_FUNCTION_0_1();
  (*(v5 + 8))(v0 + v4);
  OUTLINED_FUNCTION_3_4();

  return v0;
}

BOOL sub_21B0EA764(uint64_t a1)
{
  v1 = 0;
  do
  {
    v2 = v1;
    v1 = 1;
  }

  while ((v2 & 1) == 0 && qword_282C8D8C8 != a1);
  return (v2 & 1) == 0;
}

uint64_t sub_21B0EA78C()
{
  v1 = *(v0 + 80);
  v5[3] = &type metadata for ResourceAccessActivity;
  v5[4] = &off_282C96FE8;
  v5[0] = v1;
  v2 = __swift_project_boxed_opaque_existential_0(v5, &type metadata for ResourceAccessActivity);
  if (sub_21B0EA764(*v2))
  {
    MEMORY[0x21CEE9770](46, 0xE100000000000000);

    MEMORY[0x21CEE9770](0x656372756F736572, 0xEE00737365636341);

    sub_21B0EBA44(v1);
    v3 = sub_21B112924();
    MEMORY[0x21CEE9770](v3);

    MEMORY[0x21CEE9770](46, 0xE100000000000000);

    sub_21B0EB130(0xD000000000000010, 0x800000021B141B30, v0);
  }

  return __swift_destroy_boxed_opaque_existential_0(v5);
}

void sub_21B0EA8FC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a2(a1))
  {
    OUTLINED_FUNCTION_3_4();
    if ((*(v2 + 272))())
    {
      v3 = MEMORY[0x277D837D0];
      OUTLINED_FUNCTION_3_4();
      sub_21B1126F4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_21B113DB0;
      *(v4 + 56) = v3;
      v5 = sub_21AF93F18();
      *(v4 + 64) = v5;
      *(v4 + 32) = 0x7461676572676761;
      *(v4 + 40) = 0xEB000000006E6F69;
      sub_21AF9406C(0, &qword_27CD46FA0, 0x277D82BB8);
      v6 = sub_21B112314();
      *(v4 + 96) = v3;
      *(v4 + 104) = v5;
      *(v4 + 72) = v6;
      *(v4 + 80) = v7;
      OUTLINED_FUNCTION_35_5("Reporting to CA event: '%s'\n\twith data: %@", v7, v8, &dword_21AF80000);
    }

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_33_6();
    MEMORY[0x21CEE9770](0x7461676572676761, 0xEB000000006E6F69);
    sub_21B1123D4();
    OUTLINED_FUNCTION_39_2();

    sub_21AF9406C(0, &qword_27CD46FA0, 0x277D82BB8);
    v9 = sub_21B1122E4();
    AnalyticsSendEvent();

    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    OUTLINED_FUNCTION_41_3();
  }
}

void sub_21B0EAAEC(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_21B0EB038(a1))
  {
    OUTLINED_FUNCTION_3_4();
    if ((*(v5 + 272))())
    {
      v6 = MEMORY[0x277D837D0];
      sub_21B1126F4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_21B113DB0;
      *(v7 + 56) = v6;
      v8 = sub_21AF93F18();
      *(v7 + 64) = v8;
      *(v7 + 32) = a2;
      *(v7 + 40) = a3;
      sub_21AF9406C(0, &qword_27CD46FA0, 0x277D82BB8);
      v9 = sub_21B112314();
      *(v7 + 96) = v6;
      *(v7 + 104) = v8;
      *(v7 + 72) = v9;
      *(v7 + 80) = v10;
      OUTLINED_FUNCTION_35_5("Reporting to CA event: '%s'\n\twith data: %@", v10, v11, &dword_21AF80000);
    }

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_33_6();
    MEMORY[0x21CEE9770](a2, a3);
    sub_21B1123D4();
    OUTLINED_FUNCTION_39_2();

    sub_21AF9406C(0, &qword_27CD46FA0, 0x277D82BB8);
    v12 = sub_21B1122E4();
    AnalyticsSendEvent();

    OUTLINED_FUNCTION_41_3();
  }

  else
  {
    OUTLINED_FUNCTION_41_3();
  }
}

uint64_t sub_21B0EACB4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_21B1113D4();
    sub_21AF9C430(&unk_27CD477F0, MEMORY[0x277D3E0A0], MEMORY[0x277D3E0B0]);

    sub_21B1125B4();
    v2 = sub_21B1127D4();
    swift_isUniquelyReferenced_nonNull_native();
    sub_21B0EC85C(v2, 1701869940, 0xE400000000000000);
    sub_21B0E8550();
    v3 = sub_21B112674();
    swift_isUniquelyReferenced_nonNull_native();
    sub_21B0EC85C(v3, 0x6E6F697461727564, 0xE800000000000000);
    return v1;
  }

  return result;
}

uint64_t sub_21B0EADE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21B111424();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2 + *(*v2 + 112), v4);
  (*(v5 + 8))(v7, v4);
  v9 = dynamic_cast_existential_1_conditional(v4, v4, &protocol descriptor for __CoreAnalyticsActivity);
  result = 0;
  if (v9)
  {
    if (a1)
    {
      v11 = v8;
      v12 = *(v8 + 16);

      v13 = v12(v9, v11);
      v15 = v14;
      sub_21AF9C430(&unk_27CD477C0, MEMORY[0x277D3E0D8], MEMORY[0x277D3E0E8]);
      sub_21B1125B4();
      v16 = sub_21B1127D4();
      swift_isUniquelyReferenced_nonNull_native();
      v22 = a1;
      sub_21B0EC85C(v16, v13, v15);

      v17 = v22;
      v18 = (*(v11 + 8))(v9, v11);
      v20 = v19;
      sub_21B0E8550();
      v21 = sub_21B112674();
      swift_isUniquelyReferenced_nonNull_native();
      v23 = v17;
      sub_21B0EC85C(v21, v18, v20);

      return v23;
    }
  }

  return result;
}

uint64_t sub_21B0EB038(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = result;
    v4 = *(v2 + 80);

    sub_21B1127D4();
    OUTLINED_FUNCTION_39_2();
    swift_isUniquelyReferenced_nonNull_native();
    sub_21B0EC85C(v4, 1701869940, 0xE400000000000000);
    sub_21B0E8550();
    v5 = sub_21B112674();
    swift_isUniquelyReferenced_nonNull_native();
    sub_21B0EC85C(v5, 0x6E6F697461727564, 0xE800000000000000);
    return v3;
  }

  return result;
}

void sub_21B0EB130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    *(a3 + 72) = os_transaction_create();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_21B1128F4();
  }
}

double sub_21B0EB1EC(uint64_t a1)
{
  if ((v1[88] & 1) == 0)
  {
    v2 = v1;
    v3 = sub_21B0EB4A0();
    v5 = MEMORY[0x277D837D0];
    if (v6)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
      v8 = OUTLINED_FUNCTION_7_16(v7);
      *(v8 + 16) = xmmword_21B113D90;
      v9 = &v1[*(*v1 + 464)];
      v10 = *v9;
      v11 = v9[1];
      ObjectType = swift_getObjectType();
      (*(v11 + 16))(ObjectType, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47760, &qword_21B12B470);
      sub_21B112454();
      OUTLINED_FUNCTION_28_3();
      *(v8 + 56) = v5;
      *(v8 + 64) = sub_21AF93F18();
      *(v8 + 32) = v10;
      *(v8 + 40) = v11;
      OUTLINED_FUNCTION_9_16("UNIDENTIFIED_RESPONSE_TYPE=%{signpost.description:attribute,public}s");
      sub_21B0E992C(v13, v14, v15, v16);
    }

    else
    {
      v17 = OUTLINED_FUNCTION_27_6(v3, v4);
      v18(v17);
    }

    v19 = *(*&v2[*(*v2 + 152)] + 16);

    os_unfair_lock_lock(v19);
    if ((v2[88] & 1) == 0)
    {
      if (*&v2[*(*v2 + 480)])
      {
        swift_unknownObjectRetain();
        if (nw_activity_is_activated())
        {
          nw_activity_complete_with_reason();
        }

        else
        {
          sub_21B1126E4();
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
          v21 = OUTLINED_FUNCTION_7_16(v20);
          *(v21 + 16) = xmmword_21B113D90;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD475F0, &qword_21B12BD00);
          v22 = sub_21B112454();
          v24 = v23;
          *(v21 + 56) = v5;
          *(v21 + 64) = sub_21AF93F18();
          *(v21 + 32) = v22;
          *(v21 + 40) = v24;
          sub_21B112264("Ending NetworkSpan before nw_activity (%s) was activated", v26);
        }

        swift_unknownObjectRelease();
      }

      sub_21B0E8FBC();
    }

    os_unfair_lock_unlock(v19);
  }

  return result;
}

uint64_t sub_21B0EB4A0()
{
  v1 = v0;
  OUTLINED_FUNCTION_3_4();
  v3 = (v0 + *(v2 + 464));
  v4 = *v3;
  v5 = v3[1];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 16);
  v8 = v7(ObjectType, v5);
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      [v10 statusCode];
      if (!(*(v5 + 8))(ObjectType, v5))
      {

        *&result = 0.0;
        return result;
      }

      OUTLINED_FUNCTION_32_0();
      *&v137 = 0xD000000000000021;
      *(&v137 + 1) = v11;
      v12 = sub_21B1128A4();
      OUTLINED_FUNCTION_23_6(v12, v13, v14, v15, v16, v17, v18, v19, v102, v106, v110, v114, v118, v123, v128, v132, v133, v134, v135, v136, v137);
      v20 = sub_21B0B6350(&v132);
      if (v138)
      {
        OUTLINED_FUNCTION_17_10(v20, v21, v22, MEMORY[0x277D84CC0], v23, v24, v25);
      }

      else
      {
        sub_21B0ED1A4(&v137, v26, &unk_27CD47250);
      }

      OUTLINED_FUNCTION_32_0();
      *&v137 = 0xD00000000000001DLL;
      *(&v137 + 1) = v43;
      v44 = sub_21B1128A4();
      OUTLINED_FUNCTION_23_6(v44, v45, v46, v47, v48, v49, v50, v51, v103, v107, v111, v115, v119, v124, v129, v132, v133, v134, v135, v136, v137);
      v52 = sub_21B0B6350(&v132);
      if (v138)
      {
        OUTLINED_FUNCTION_17_10(v52, v53, v54, MEMORY[0x277D84CC0], v55, v56, v57);
      }

      else
      {
        sub_21B0ED1A4(&v137, v58, &unk_27CD47250);
      }

      OUTLINED_FUNCTION_32_0();
      v120 = v59;
      v60 = sub_21B1128A4();
      OUTLINED_FUNCTION_23_6(v60, v61, v62, v63, v64, v65, v66, v67, v104, v108, v112, 0xD00000000000001BLL, v120, v125, v130, v132, v133, v134, v135, v136, v137);
      v68 = sub_21B0B6350(&v132);
      if (v138)
      {
        if (OUTLINED_FUNCTION_17_10(v68, v69, v70, MEMORY[0x277D839F8], v71, v72, v73))
        {
          v127 = v116;
          goto LABEL_26;
        }
      }

      else
      {
        sub_21B0ED1A4(&v137, v74, &unk_27CD47250);
      }

      OUTLINED_FUNCTION_32_0();
      v121 = v75;
      v76 = sub_21B1128A4();
      OUTLINED_FUNCTION_23_6(v76, v77, v78, v79, v80, v81, v82, v83, v105, v109, v113, 0xD00000000000001BLL, v121, v126, v131, v132, v133, v134, v135, v136, v137);
      sub_21B0B6350(&v132);
      if (v138)
      {
        if (swift_dynamicCast())
        {
LABEL_26:
          v85 = *&v127;
          OUTLINED_FUNCTION_32_0();
          v122 = v86;
          v87 = sub_21B1128A4();
          OUTLINED_FUNCTION_23_6(v87, v88, v89, v90, v91, v92, v93, v94, v105, v109, v113, 0xD00000000000001ALL, v122, v127, v131, v132, v133, v134, v135, v136, v137);

          v95 = sub_21B0B6350(&v132);
          if (v138)
          {
            if (OUTLINED_FUNCTION_17_10(v95, v96, v97, MEMORY[0x277D839F8], v98, v99, v100))
            {
              *&result = v117 - v85;
              return result;
            }
          }

          else
          {
            sub_21B0ED1A4(&v137, v101, &unk_27CD47250);
          }

          goto LABEL_32;
        }
      }

      else
      {
        sub_21B0ED1A4(&v137, v84, &unk_27CD47250);
      }

LABEL_32:
      *&result = 0.0;
      return result;
    }
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v28 = OUTLINED_FUNCTION_7_16(v27);
  *(v28 + 16) = xmmword_21B113D90;
  v132 = v7(ObjectType, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47760, &qword_21B12B470);
  sub_21B112454();
  OUTLINED_FUNCTION_28_3();
  v29 = MEMORY[0x277D837D0];
  *(v28 + 56) = MEMORY[0x277D837D0];
  v30 = sub_21AF93F18();
  *(v28 + 64) = v30;
  *(v28 + 32) = v4;
  *(v28 + 40) = v5;
  OUTLINED_FUNCTION_9_16("UNIDENTIFIED_RESPONSE_TYPE=%{signpost.description:attribute,public}s");
  sub_21B0E992C(v31, v32, v33, v34);

  OUTLINED_FUNCTION_8();
  v36 = *(*(v1 + *(v35 + 152)) + 16);

  os_unfair_lock_lock(v36);
  if ((*(v1 + 88) & 1) == 0)
  {
    OUTLINED_FUNCTION_8();
    v38 = *(v1 + *(v37 + 480));
    if (v38)
    {
      swift_unknownObjectRetain();
      if (nw_activity_is_activated())
      {
        OUTLINED_FUNCTION_8();
        nw_activity_complete_with_reason();
      }

      else
      {
        sub_21B1126E4();
        v40 = OUTLINED_FUNCTION_7_16(v27);
        *(v40 + 16) = xmmword_21B113D90;
        v132 = v38;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD475F0, &qword_21B12BD00);
        v41 = sub_21B112454();
        *(v40 + 56) = v29;
        *(v40 + 64) = v30;
        *(v40 + 32) = v41;
        *(v40 + 40) = v42;
        sub_21B112264("Ending NetworkSpan before nw_activity (%s) was activated", 1);
      }

      swift_unknownObjectRelease();
    }

    sub_21B0E8FBC();
  }

  os_unfair_lock_unlock(v36);

  *&result = 0.0;
  return result;
}

const char *sub_21B0EBA44(uint64_t a1)
{
  result = "unknown";
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = "configuration";
      break;
    case 2:
      result = "parsecdSearch";
      break;
    case 3:
      result = "parsecdZeroKeyWord";
      break;
    case 4:
      result = "parsecdLookup";
      break;
    case 5:
      result = "parsecdFlight";
      break;
    case 6:
      result = "parsecdMoreResults";
      break;
    case 7:
      result = "parsecdCard";
      break;
    case 8:
      result = "parsecdWarm";
      break;
    case 9:
      result = "bagResourceDownload";
      break;
    case 10:
      result = "pegasusKitVisualSearch";
      break;
    case 11:
      result = "pegasusKitSiriPersonalization";
      break;
    case 12:
      result = "pegasusKitHashtagImages";
      break;
    case 13:
      result = "pegasusKitAssistant";
      break;
    case 14:
      result = "pegasusKitBagFetchXPC";
      break;
    case 15:
      result = "pegasusKitContextFetchXPC";
      break;
    case 16:
      result = "pegasusKitLookup";
      break;
    case 17:
      result = "pegasusKitSpotlightZKW";
      break;
    case 18:
      result = "pegasusKitEngagementSearch";
      break;
    case 19:
      result = "engagementCache";
      break;
    case 20:
      result = "topicCache";
      break;
    case 21:
      result = "pegasusKitIntelligencePlatform";
      break;
    case 22:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_90;
    case 23:
      result = "pegasusKitIntelligenceFlow";
      break;
    case 24:
      result = "pegasusKitSafariAssistantPrefetch";
      break;
    case 25:
      result = "pegasusKitSafariAssistantSummarize";
      break;
    case 26:
      result = "pegasusKitEncryptedVisualSearch";
      break;
    case 27:
      result = "pegasusKitSportsWatchFace";
      break;
    case 28:
      result = "pegasusKitLookupSearch";
      break;
    case 29:
      result = "pegasusKitEncryptedVisualSearchConfig";
      break;
    case 30:
      result = "pegasusKitSafariSearch";
      break;
    case 31:
      result = "pegasusKitCameraVisualSearch";
      break;
    case 32:
      result = "pegasusKitEncryptedPQAGeo";
      break;
    case 33:
      result = "pegasusKitEncryptedPQAGeoConfig";
      break;
    case 34:
      result = "pegasusKitEncryptedVisualSearchSupportedUsecases";
      break;
    case 35:
      result = "pegasusKitEncryptedPQAGeoSupportedUsecases";
      break;
    case 37:
      result = "pegasusKitFlightUtilities";
      break;
    case 38:
      result = "pegasusKitFlightUtilitiesSubscribe";
      break;
    case 39:
      result = "pegasusKitDeviceExpertSearch";
      break;
    case 50:
      result = "installedAppWhitelist";
      break;
    case 60:
      result = "assetDeliveryPreloadAsset";
      break;
    case 61:
      result = "assetDeliveryPrefilterPrefetch";
      break;
    case 62:
      result = "assetDeliveryGetPreloadedData";
      break;
    case 63:
      result = "assetDeliveryBloomFilter";
      break;
    case 65:
      result = "assetDeliveryRetrieveAsset";
      break;
    case 66:
      result = "assetDeliveryRedact";
      break;
    case 67:
      result = "assetDeliveryFeatureSupported";
      break;
    case 100:
      result = "contextFetchAMSTreatments";
      break;
    default:
      switch(a1)
      {
        case 200:
          result = "feedbackEnumerator";
          break;
        case 201:
          result = "feedbackFileCreation";
          break;
        case 202:
          result = "simpleFeedbackEnumerator";
          break;
        case 300:
          result = "aggregation";
          break;
        case 301:
          result = "uploadaggregates";
          break;
        case 400:
          result = "clientXPCConnection";
          break;
        case 401:
          result = "clientSessionComplete";
          break;
        case 500:
          result = "sbaPlugin";
          break;
        case 600:
          result = "parsecdCloudConnectionSubscribe";
          break;
        case 601:
          result = "parsecdCloudConnectionUnsubscribe";
          break;
        case 602:
          result = "parsecdCloudConnectionFetchLatestPush";
          break;
        case 700:
          result = "parseKeys";
          break;
        default:
LABEL_90:
          result = sub_21B112E24();
          __break(1u);
          break;
      }

      break;
  }

  return result;
}

id *sub_21B0EBE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = a5 & 1;
  *(v6 + qword_27CD47700) = 0;
  *(v6 + qword_27CD6E8D8) = 0;
  v12 = v6 + qword_27CD6E8E0;
  *v12 = 0;
  *(v12 + 8) = 1;
  *(v6 + qword_27CD47708) = 0;
  v13 = qword_27CD6E8E8;
  v14 = sub_21B111E64();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v6 + v13, a3, v14);
  *v12 = a4;
  *(v12 + 8) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  if (a5)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B113D90;
    v17 = sub_21B111E44();
    v19 = v18;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_21AF93F18();
    *(inited + 32) = v17;
    *(inited + 40) = v19;
    v20 = "client=%{signpost.description:attribute,public}s";
    v21 = a1;
    v22 = a2;
    v23 = 48;
    v24 = inited;
  }

  else
  {
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_21B113DB0;
    v26 = sub_21B111E44();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x277D837D0];
    v29 = sub_21AF93F18();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v30 = MEMORY[0x277D84D90];
    *(v25 + 96) = MEMORY[0x277D84D38];
    *(v25 + 104) = v30;
    *(v25 + 64) = v29;
    *(v25 + 72) = a4;
    v20 = "client=%{signpost.description:attribute,public}s, identifier=%{signpost.description:attribute,public}llu";
    v21 = a1;
    v22 = a2;
    v23 = 104;
    v24 = v25;
  }

  v31 = sub_21B0E9F74(v21, v22, v20, v23, 2, v24);
  (*(v15 + 8))(a3, v14);
  return v31;
}

uint64_t sub_21B0EC084()
{

  v1 = qword_27CD6E8E8;
  sub_21B111E64();
  OUTLINED_FUNCTION_0_1();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_21B0EC0F0()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    sub_21B0EC504();
  }

  v1 = sub_21B0EA630();

  v2 = qword_27CD6E8E8;
  sub_21B111E64();
  OUTLINED_FUNCTION_0_1();
  (*(v3 + 8))(v1 + v2);
  return v1;
}

uint64_t sub_21B0EC168()
{
  v0 = sub_21B0EC0F0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ResourceAccessSpan(uint64_t a1)
{
  result = qword_27CD47718;
  if (!qword_27CD47718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0EC208(uint64_t a1)
{
  result = sub_21B111E64();
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

double sub_21B0EC2C0(uint64_t a1)
{
  sub_21B112704();
  OUTLINED_FUNCTION_7_17("LEAKED RESOURCE ACCESS SPAN: {{{");
  sub_21B112264(v2);
  sub_21B0E7698();
  sub_21B112704();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
  v4 = OUTLINED_FUNCTION_7_16(v3);
  *(v4 + 16) = xmmword_21B113D90;
  v5 = sub_21B112454();
  v7 = v6;
  v8 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v9 = sub_21AF93F18();
  *(v4 + 64) = v9;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  OUTLINED_FUNCTION_7_17("Outcome: %s");
  sub_21B112264(v10);

  sub_21B112704();
  v11 = OUTLINED_FUNCTION_7_16(v3);
  *(v11 + 16) = xmmword_21B113D90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47780, &qword_21B12BD18);
  v12 = sub_21B112454();
  *(v11 + 56) = v8;
  *(v11 + 64) = v9;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  OUTLINED_FUNCTION_7_17("Identifier: %s");
  sub_21B112264(v14);

  sub_21B112704();
  v15 = OUTLINED_FUNCTION_7_16(v3);
  v16 = *(v1 + qword_27CD6E8D8);
  *(v15 + 16) = xmmword_21B113D90;
  v17 = v16 == 0;
  v18 = 7562617;
  if (v17)
  {
    v18 = 28526;
  }

  v19 = 0xE300000000000000;
  *(v15 + 56) = v8;
  *(v15 + 64) = v9;
  if (v17)
  {
    v19 = 0xE200000000000000;
  }

  *(v15 + 32) = v18;
  *(v15 + 40) = v19;
  OUTLINED_FUNCTION_7_17("Has network span: %s");
  sub_21B112264(v20);

  sub_21B112704();
  OUTLINED_FUNCTION_7_17("}}}");
  return sub_21B112264(v21);
}

double sub_21B0EC504()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    v2 = v0;
    v3 = *(v0 + qword_27CD6E8D8);
    if (v3)
    {

      sub_21B0EB1EC(v4);
    }

    v5 = MEMORY[0x277D837D0];
    if ((*(v2 + qword_27CD47708) & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47740, &qword_21B114608);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21B113DB0;
      *(inited + 32) = 0x726574706F6461;
      *(inited + 40) = 0xE700000000000000;
      sub_21B111E54();
      v1 = 0x277CCABB0uLL;
      *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
      *(inited + 56) = 0x656D6F6374756FLL;
      *(inited + 64) = 0xE700000000000000;
      *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
      sub_21AF9406C(0, &qword_27CD42E10, 0x277CCABB0);
      v7 = sub_21B112334();
      sub_21B0DF3EC(v7);
      OUTLINED_FUNCTION_39_2();

      v3 = v2;
      sub_21B0E8140(inited);
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD46F70, &unk_21B128620);
    v9 = OUTLINED_FUNCTION_7_16(v8);
    *(v9 + 16) = xmmword_21B113D90;
    sub_21B112454();
    OUTLINED_FUNCTION_28_3();
    *(v9 + 56) = v5;
    *(v9 + 64) = sub_21AF93F18();
    *(v9 + 32) = v3;
    *(v9 + 40) = v1;
    OUTLINED_FUNCTION_9_16("outcome=%{signpost.description:attribute,public}s");
    sub_21B0E992C(v10, v11, v12, v13);

    OUTLINED_FUNCTION_8();
    v15 = *(*(v2 + *(v14 + 152)) + 16);

    os_unfair_lock_lock(v15);
    if ((*(v2 + 88) & 1) == 0)
    {
      sub_21B0E9474();
    }

    os_unfair_lock_unlock(v15);
  }

  return result;
}

unint64_t sub_21B0EC760(uint64_t a1)
{
  *(a1 + 8) = sub_21B0EC790();
  result = sub_21B0EC7E4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21B0EC790()
{
  result = qword_27CD47730;
  if (!qword_27CD47730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47730);
  }

  return result;
}

unint64_t sub_21B0EC7E4()
{
  result = qword_27CD47738;
  if (!qword_27CD47738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47738);
  }

  return result;
}

uint64_t sub_21B0EC838(unint64_t a1)
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

void sub_21B0EC85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_4(a1, a2, a3);
  OUTLINED_FUNCTION_2_27();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD42E18, &qword_21B114610);
  OUTLINED_FUNCTION_30_4();
  if ((sub_21B112994() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_21AF98B58(v5, v3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_21B112E54();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v6;
  if (v11)
  {
    *(v14[7] + 8 * v10) = v4;
    OUTLINED_FUNCTION_114();
  }

  else
  {
    sub_21B0ED024(v10, v5, v3, v4, v14);
    OUTLINED_FUNCTION_114();
  }
}

uint64_t sub_21B0EC95C(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_27_6(a2, a3);
  sub_21AF98B58(v7, v8);
  OUTLINED_FUNCTION_2_27();
  if (v10)
  {
    __break(1u);
LABEL_12:
    result = sub_21B112E54();
    __break(1u);
    return result;
  }

  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD477B0, &qword_21B114230);
  OUTLINED_FUNCTION_30_4();
  if (sub_21B112994())
  {
    sub_21AF98B58(a3, a4);
    if ((v11 & 1) != (v12 & 1))
    {
      goto LABEL_12;
    }
  }

  if (v11)
  {
    sub_21B111334();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_114();

    __asm { BRAA            X3, X16 }
  }

  v15 = OUTLINED_FUNCTION_48_1();
  sub_21B0ECE80(v15, v16, a4, a2, v17);
  OUTLINED_FUNCTION_114();
}

void sub_21B0ECAA4()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  sub_21B0B5BC0(v2);
  OUTLINED_FUNCTION_2_27();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD477E0, &qword_21B12BD50);
  if ((sub_21B112994() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_21B0B5BC0(v2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    sub_21B112E54();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v0;
  if (v13)
  {
    v17 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
    OUTLINED_FUNCTION_25(v17);
    OUTLINED_FUNCTION_77();

    sub_21AFA4010(v18, v19);
  }

  else
  {
    sub_21B0B63E8(v2, v8);
    sub_21B0ECF30(v12, v8, v4, v16);
    OUTLINED_FUNCTION_77();
  }
}

void sub_21B0ECC0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_4(a1, a2, a3);
  OUTLINED_FUNCTION_2_27();
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD46FC0, &qword_21B1289D0);
  OUTLINED_FUNCTION_30_4();
  if ((sub_21B112994() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_21AF98B58(v5, v3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_21B112E54();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v6;
  if (v11)
  {
    *(v14[7] + 8 * v10) = v4;
    OUTLINED_FUNCTION_114();
  }

  else
  {
    sub_21B0ED024(v10, v5, v3, v4, v14);
    OUTLINED_FUNCTION_114();
  }
}

uint64_t sub_21B0ECD0C()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_21AF98B58(v3, v1);
  OUTLINED_FUNCTION_2_27();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD477A8, &unk_21B12BD30);
  if ((sub_21B112994() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_21AF98B58(v4, v2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_21B112E54();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v0;
  if (v13)
  {
    v17 = (v16[7] + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    OUTLINED_FUNCTION_77();
  }

  else
  {
    sub_21B0ED06C(v12, v4, v2, v8, v6, v16);
    OUTLINED_FUNCTION_77();
  }
}

uint64_t sub_21B0ECE3C(unint64_t *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_27_6(0, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21B0ECE80(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_21B111334();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
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

uint64_t sub_21B0ECF30(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_14_11(a1, a2, a3, a4);
  OUTLINED_FUNCTION_25(v7);
  OUTLINED_FUNCTION_15_10(*(v8 + 72));
  v9 = *(v4 + 56);
  v10 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  OUTLINED_FUNCTION_25(v10);
  result = sub_21B0ED144(v5, v9 + *(v11 + 72) * v6, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup);
  v13 = *(v4 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v15;
  }

  return result;
}

uint64_t sub_21B0ECFC4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OUTLINED_FUNCTION_14_11(a1, a2, a3, a4);
  OUTLINED_FUNCTION_25(v7);
  result = OUTLINED_FUNCTION_15_10(*(v8 + 72));
  *(*(v4 + 56) + 8 * v6) = v5;
  v10 = *(v4 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v4 + 16) = v12;
  }

  return result;
}

unint64_t sub_21B0ED024(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_21B0ED06C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_21B0ED0B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47750, &qword_21B128908);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0ED144(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_1();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_21B0ED1A4(uint64_t a1, double a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_27_6(a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_0_1();
  (*(v6 + 8))(a1);
  return a1;
}

__n128 OUTLINED_FUNCTION_10_15()
{
  v2 = *(v1 - 208);
  v3 = *(v0 + 40);
  *(v1 - 208) = *(v0 + 24);
  *(v1 - 192) = v3;
  result = *(v0 + 56);
  *(v1 - 176) = result;
  *(v1 - 160) = *(v0 + 72);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 41) = v2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  return result;
}

__n128 OUTLINED_FUNCTION_11_9()
{
  v2 = *(v0 + 40);
  *(v1 - 144) = *(v0 + 24);
  *(v1 - 128) = v2;
  result = *(v0 + 56);
  *(v1 - 112) = result;
  *(v1 - 96) = *(v0 + 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_11(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 8 * (a1 >> 6) + 64) |= 1 << a1;

  return type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
}

uint64_t OUTLINED_FUNCTION_15_10@<X0>(uint64_t a1@<X8>)
{

  return sub_21B0ED144(v1, v3 + a1 * v2, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
}

uint64_t OUTLINED_FUNCTION_17_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_18_6()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_19_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *(v13 - 248);
  v15 = *(v13 - 240);

  sub_21AFD3040(v11, v12, a4, a5, a6, v10, v15, v16, a9, a10);
}

double OUTLINED_FUNCTION_23_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{

  return sub_21B0DF010(&a16, v21, &a21);
}

unint64_t OUTLINED_FUNCTION_25_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_21AF98B58(a2, a3);
}

void OUTLINED_FUNCTION_33_6()
{

  JUMPOUT(0x21CEE9770);
}

uint64_t OUTLINED_FUNCTION_35_5(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_21B112264(a1, 42, 2, a4, v4, v5, v6);
}

uint64_t OUTLINED_FUNCTION_42_3@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = 0;

  return sub_21B0ED1A4(v4 - 208, a2, v3);
}

double OUTLINED_FUNCTION_43_3(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_21B112264(a1, a2, 2, v6, v8, a6, v7);
}

uint64_t type metadata accessor for LegacyFieldManifest(uint64_t a1)
{
  result = qword_27CD47800;
  if (!qword_27CD47800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0ED5AC(uint64_t a1)
{
  result = sub_21B111874();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B0ED618(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_2_22(1701869940) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E65707974 && a2 == 0xE800000000000000;
    if (v6 || (OUTLINED_FUNCTION_2_22(0x656D614E65707974) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 6775156 && a2 == 0xE300000000000000;
      if (v7 || (OUTLINED_FUNCTION_2_22(6775156) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7461657065527369 && a2 == 0xEA00000000006465)
      {

        return 3;
      }

      else
      {
        v9 = OUTLINED_FUNCTION_2_22(0x7461657065527369);

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

uint64_t sub_21B0ED748(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x656D614E65707974;
      break;
    case 2:
      result = 6775156;
      break;
    case 3:
      result = 0x7461657065527369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21B0ED7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0ED618(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B0ED7FC(uint64_t a1)
{
  v2 = sub_21B0EDC34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0ED838(uint64_t a1)
{
  v2 = sub_21B0EDC34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B0ED874@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_21B111844();
  OUTLINED_FUNCTION_1();
  v29 = v4;
  v30 = v3;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47810, &qword_21B12C1A0);
  OUTLINED_FUNCTION_1();
  v28 = v10;
  MEMORY[0x28223BE20](v11);
  v12 = type metadata accessor for LegacyFieldManifest(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21B0EDC34();
  v15 = v32;
  sub_21B112F34();
  if (v15)
  {
    v23 = a1;
  }

  else
  {
    v25 = v14;
    v26 = v7;
    v32 = a1;
    v17 = v29;
    v16 = v30;
    v18 = v28;
    v37 = 0;
    sub_21B0EDC88();
    sub_21B112AC4();
    (*(v17 + 104))(v9, **(&unk_2782B9ED0 + v38), v16);
    v36 = 1;
    v19 = sub_21B112A44();
    v35 = 2;
    v24[1] = sub_21B112AA4();
    v34 = 3;
    sub_21B112A54();
    v21 = *(v17 + 16);
    v24[0] = v19;
    v21(v26, v9, v16);
    v33 = 1;
    v22 = v25;
    sub_21B111854();
    (*(v17 + 8))(v9, v16);
    (*(v18 + 8))(0, v31);
    sub_21B0EDCDC(v22, v27);
    v23 = v32;
  }

  return __swift_destroy_boxed_opaque_existential_0(v23);
}

unint64_t sub_21B0EDC34()
{
  result = qword_27CD47818;
  if (!qword_27CD47818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47818);
  }

  return result;
}

unint64_t sub_21B0EDC88()
{
  result = qword_27CD47820;
  if (!qword_27CD47820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47820);
  }

  return result;
}

uint64_t sub_21B0EDCDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyFieldManifest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for LegacyFieldManifest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B0EDE20()
{
  result = qword_27CD47828;
  if (!qword_27CD47828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47828);
  }

  return result;
}

unint64_t sub_21B0EDE78()
{
  result = qword_27CD47830;
  if (!qword_27CD47830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47830);
  }

  return result;
}

unint64_t sub_21B0EDED0()
{
  result = qword_27CD47838;
  if (!qword_27CD47838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47838);
  }

  return result;
}

uint64_t sub_21B0EDF24(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v5 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    AvroValue.schema.getter();
    v6 = OUTLINED_FUNCTION_578();
    v8 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v6, v7);

    if (v8)
    {

      v3 = 1;
    }

    else
    {
      v11 = AvroValue.schema.getter();
      MEMORY[0x28223BE20](v11);
      v10[2] = &v11;
      sub_21B0F3F14(sub_21B0F6A24, v10, v5);
      OUTLINED_FUNCTION_58_1();
    }
  }

  else
  {
    v4 = AvroValue.schema.getter();
    v3 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(a2, v4);
  }

  return v3 & 1;
}

unint64_t sub_21B0EE03C@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result >> 61;
  switch(result >> 61)
  {
    case 1uLL:
      v5 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

      result = MEMORY[0x277D84F90];
      goto LABEL_9;
    case 2uLL:
      v5 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v2 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

      result = sub_21B112334();
      goto LABEL_9;
    case 3uLL:
      v8 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      schema.type = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      schema.name = v8;
      schema.namespace = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      schema.fields._rawValue = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      sub_21AFC5454(&schema, __src);
      AvroRecord.init(schema:)(__src, &schema);
      v5 = *__src;
      v6 = *&__src[8];
      v2 = *&__src[16];
      result = *&__src[24];
      v12 = *&__src[32];
      v13 = *&__src[48];
      goto LABEL_9;
    case 4uLL:
      v6 = *((result & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      if (*(v6 + 16))
      {
        v7 = *(v6 + 32);

        sub_21B0EE03C(v7, __src);

        v5 = swift_allocObject();
        *(v5 + 16) = v6;
        result = memcpy((v5 + 24), __src, 0x41uLL);
        *(v5 + 96) = 0;
LABEL_9:
        *a2 = v5;
        *(a2 + 8) = v6;
        *(a2 + 16) = v2;
        *(a2 + 24) = result;
        v9 = v13;
        *(a2 + 32) = v12;
        *(a2 + 48) = v9;
        *(a2 + 64) = v3;
      }

      else
      {
        __break(1u);
      }

      return result;
    default:
      v2 = *(result + 16);
      result = 7;
      v5 = v2;
      v6 = v2;
      switch(v2)
      {
        case 1uLL:
          v6 = 0;
          v2 = 0;
          result = 0;
          v5 = 1;
          break;
        case 2uLL:
          OUTLINED_FUNCTION_19_7();
          result = 1;
          break;
        case 3uLL:
          OUTLINED_FUNCTION_19_7();
          result = 2;
          break;
        case 4uLL:
          OUTLINED_FUNCTION_19_7();
          result = 3;
          break;
        case 5uLL:
          OUTLINED_FUNCTION_19_7();
          result = 4;
          break;
        case 6uLL:
          v5 = 0;
          v2 = 0;
          v6 = 0xE000000000000000;
          result = 5;
          break;
        case 7uLL:
          v6 = 0;
          v2 = 0;
          v5 = MEMORY[0x277D84F90];
          result = 6;
          break;
        default:
          goto LABEL_9;
      }

      goto LABEL_9;
  }
}

uint64_t sub_21B0EE27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_35_6();
  result = swift_allocObject();
  *(result + 16) = 0;
  static AvroSchema.null = result;
  return result;
}

uint64_t *AvroSchema.null.unsafeMutableAddressor()
{
  if (qword_27CD47840 != -1)
  {
    OUTLINED_FUNCTION_16_11(&qword_27CD47840);
  }

  return &static AvroSchema.null;
}

uint64_t sub_21B0EE31C()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  static AvroSchema.BOOLean = result;
  return result;
}

uint64_t *AvroSchema.BOOLean.unsafeMutableAddressor()
{
  if (qword_27CD47848 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.BOOLean;
}

uint64_t sub_21B0EE3D4()
{
  result = swift_allocObject();
  *(result + 16) = 2;
  static AvroSchema.int = result;
  return result;
}

uint64_t *AvroSchema.int.unsafeMutableAddressor()
{
  if (qword_27CD47850 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.int;
}

uint64_t sub_21B0EE48C()
{
  result = swift_allocObject();
  *(result + 16) = 3;
  static AvroSchema.long = result;
  return result;
}

uint64_t *AvroSchema.long.unsafeMutableAddressor()
{
  if (qword_27CD47858 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.long;
}

uint64_t sub_21B0EE544()
{
  result = swift_allocObject();
  *(result + 16) = 4;
  static AvroSchema.float = result;
  return result;
}

uint64_t *AvroSchema.float.unsafeMutableAddressor()
{
  if (qword_27CD47860 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.float;
}

uint64_t sub_21B0EE5FC()
{
  result = swift_allocObject();
  *(result + 16) = 5;
  static AvroSchema.double = result;
  return result;
}

uint64_t *AvroSchema.double.unsafeMutableAddressor()
{
  if (qword_27CD47868 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.double;
}

uint64_t sub_21B0EE6B4()
{
  result = swift_allocObject();
  *(result + 16) = 6;
  static AvroSchema.string = result;
  return result;
}

uint64_t *AvroSchema.string.unsafeMutableAddressor()
{
  if (qword_27CD47870 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.string;
}

uint64_t sub_21B0EE76C()
{
  result = swift_allocObject();
  *(result + 16) = 7;
  static AvroSchema.bytes = result;
  return result;
}

uint64_t *AvroSchema.bytes.unsafeMutableAddressor()
{
  if (qword_27CD47878 != -1)
  {
    swift_once();
  }

  return &static AvroSchema.bytes;
}

uint64_t sub_21B0EE82C(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

uint64_t static AvroSchema.array(itemSchema:)(uint64_t a1)
{
  OUTLINED_FUNCTION_29_6();
  v2 = swift_allocObject();
  *(v2 + 16) = 0x7961727261;
  *(v2 + 24) = 0xE500000000000000;
  *(v2 + 32) = a1;

  return v2 | 0x2000000000000000;
}

uint64_t static AvroSchema.array(schema:)()
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_29_6();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_87_1(v1);

  return v0 | 0x2000000000000000;
}

uint64_t static AvroSchema.map(valueSchema:)(uint64_t a1)
{
  OUTLINED_FUNCTION_29_6();
  v2 = swift_allocObject();
  *(v2 + 16) = 7364973;
  *(v2 + 24) = 0xE300000000000000;
  *(v2 + 32) = a1;

  return v2 | 0x4000000000000000;
}

uint64_t static AvroSchema.map(schema:)()
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_29_6();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_87_1(v1);

  return v0 | 0x4000000000000000;
}

uint64_t static AvroSchema.record(name:fields:)()
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_52_1();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_77_1();
  v4[2] = v5;
  v4[3] = v6;
  v4[4] = v2;
  v4[5] = v1;
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = v0;

  return v3 | 0x6000000000000000;
}

void __swiftcall AvroRecordSchema.init(name:fields:)(SwiftAvro::AvroRecordSchema *__return_ptr retstr, Swift::String name, Swift::OpaquePointer fields)
{
  retstr->type._countAndFlagsBits = 0x64726F636572;
  retstr->type._object = 0xE600000000000000;
  retstr->name = name;
  retstr->namespace.value._countAndFlagsBits = 0;
  retstr->namespace.value._object = 0;
  retstr->fields = fields;
}

uint64_t static AvroSchema.record(name:namespace:fields:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_52_1();
  v10 = swift_allocObject();

  OUTLINED_FUNCTION_77_1();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 48) = a3;
  *(v10 + 56) = a4;
  result = v10 | 0x6000000000000000;
  *(v10 + 64) = a5;
  return result;
}

void __swiftcall AvroRecordSchema.init(name:namespace:fields:)(SwiftAvro::AvroRecordSchema *__return_ptr retstr, Swift::String name, Swift::String a3, Swift::OpaquePointer fields)
{
  retstr->type._countAndFlagsBits = 0x64726F636572;
  retstr->type._object = 0xE600000000000000;
  retstr->name = name;
  retstr->namespace.value = a3;
  retstr->fields = fields;
}

uint64_t static AvroSchema.record(schema:)(uint64_t a1)
{
  OUTLINED_FUNCTION_52_1();
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_21AFC5454(a1, v5);
  return v2 | 0x6000000000000000;
}

unint64_t static AvroSchema.union(of:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_61();
  v2 = swift_allocObject();
  AvroUnionSchema.init(of:)(a1);
  *(v2 + 16) = a1;

  return v2 | 0x8000000000000000;
}

SwiftAvro::AvroUnionSchema __swiftcall AvroUnionSchema.init(of:)(SwiftAvro::AvroUnionSchema of)
{
  v1 = *(of.schemas._rawValue + 2);
  if (v1)
  {
    v2 = 32;
    while (v1)
    {
      v3 = *(of.schemas._rawValue + v2);
      v2 += 8;
      --v1;
      if (v3 >> 61 == 4)
      {
        __break(1u);
        return of;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return of;
}

unint64_t static AvroSchema.union(schema:)(uint64_t a1)
{
  OUTLINED_FUNCTION_61();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  return v2 | 0x8000000000000000;
}

uint64_t AvroSchema.init(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_35_6();
  result = swift_allocObject();
  *(result + 16) = 1;
  return result;
}

{
  OUTLINED_FUNCTION_35_6();
  result = swift_allocObject();
  *(result + 16) = 2;
  return result;
}

{
  OUTLINED_FUNCTION_35_6();
  result = swift_allocObject();
  *(result + 16) = 3;
  return result;
}

{
  OUTLINED_FUNCTION_35_6();
  result = swift_allocObject();
  *(result + 16) = 4;
  return result;
}

{
  OUTLINED_FUNCTION_35_6();
  result = swift_allocObject();
  *(result + 16) = 5;
  return result;
}

{
  OUTLINED_FUNCTION_35_6();
  result = swift_allocObject();
  *(result + 16) = 6;
  return result;
}

{
  OUTLINED_FUNCTION_35_6();
  result = swift_allocObject();
  *(result + 16) = 7;
  return result;
}

uint64_t _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(unint64_t a1, unint64_t a2)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      if (a2 >> 61 != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    case 2uLL:
      if (a2 >> 61 != 2)
      {
        goto LABEL_21;
      }

LABEL_15:
      v16 = a1 & 0x1FFFFFFFFFFFFFFFLL;
      v17 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *(v16 + 32);
      v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v20 = v17 == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) && *(v16 + 24) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      if (v20 || (OUTLINED_FUNCTION_51_0(v17) & 1) != 0)
      {

        v21 = _s9SwiftAvro0B6SchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v19);

        if (v21)
        {
          goto LABEL_24;
        }
      }

LABEL_21:
      v12 = 0;
      return v12 & 1;
    case 3uLL:
      v13 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v23 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = v13;
      v25 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v26 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      if (a2 >> 61 != 3)
      {
        goto LABEL_21;
      }

      v14 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v27[0] = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
      v27[1] = v14;
      v27[2] = v15;
      v28 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x40);
      sub_21AFC5454(v27, v22);
      v12 = static AvroRecordSchema.__derived_struct_equals(_:_:)();
      sub_21B0CAA60(v27);
      return v12 & 1;
    case 4uLL:
      if (a2 >> 61 != 4)
      {
        goto LABEL_21;
      }

      v10 = OUTLINED_FUNCTION_52();
      v12 = _s9SwiftAvro0B11UnionSchemaV23__derived_struct_equalsySbAC_ACtFZ_0(v10, v11);

      return v12 & 1;
    default:
      if (a2 >> 61)
      {
        goto LABEL_21;
      }

      v2 = *(a2 + 16);
      v3 = sub_21B0F3574(*(a1 + 16));
      v5 = v4;
      if (v3 == sub_21B0F3574(v2) && v5 == v6)
      {

LABEL_24:
        v12 = 1;
        return v12 & 1;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_51_0(v3);

        return v8 & 1;
      }
  }
}

uint64_t objectdestroyTm()
{

  OUTLINED_FUNCTION_29_6();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 61)
  {
    case 1uLL:
      v3 = 1;
      goto LABEL_8;
    case 2uLL:
      v3 = 2;
LABEL_8:
      MEMORY[0x21CEEA150](v3);

      OUTLINED_FUNCTION_105();
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      v5 = OUTLINED_FUNCTION_35_2();
      _s9SwiftAvro0B6SchemaV4hash4intoys6HasherVz_tF_0(v5, v6);

      break;
    case 3uLL:
      v4 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x38);
      MEMORY[0x21CEEA150](3);

      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      OUTLINED_FUNCTION_34_3();
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      sub_21B112EE4();
      if (v4)
      {
        _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      }

      sub_21B0F55EC();

      break;
    case 4uLL:
      MEMORY[0x21CEEA150](4);

      OUTLINED_FUNCTION_7();
      sub_21B0F4590();
      break;
    default:
      v2 = *(a2 + 16);
      MEMORY[0x21CEEA150](0);
      sub_21B0F3574(v2);
      _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
      break;
  }
}

uint64_t AvroSchema.encode(to:)(void *a1, unint64_t a2)
{
  switch(a2 >> 61)
  {
    case 1uLL:
      OUTLINED_FUNCTION_86_1(a1, a2);

      v10 = OUTLINED_FUNCTION_57_0();
      AvroArraySchema.encode(to:)(v10, v11, v12, v13);
      goto LABEL_7;
    case 2uLL:
      OUTLINED_FUNCTION_86_1(a1, a2);

      v4 = OUTLINED_FUNCTION_57_0();
      AvroMapSchema.encode(to:)(v4, v5, v6, v7);
LABEL_7:

      goto LABEL_8;
    case 3uLL:
      OUTLINED_FUNCTION_25_5((a2 & 0x1FFFFFFFFFFFFFFFLL));
      sub_21AFC5454(v8, v9);
      AvroRecordSchema.encode(to:)(a1);
      return sub_21B0CAA60(v14);
    case 4uLL:
      sub_21B0F3FC4();

      sub_21B112624();
LABEL_8:

      break;
    default:
      result = AvroPrimitiveSchema.encode(to:)(a1, *(a2 + 16));
      break;
  }

  return result;
}