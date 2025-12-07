uint64_t sub_237DB24F8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3218, &qword_237F14450);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237DB2BC8();
  sub_237EFA190();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3200, &qword_237F14448);
  v11 = 0;
  sub_237DB2C70(&qword_27DEB3220, sub_237DB2CE8, MEMORY[0x277D83978]);
  OUTLINED_FUNCTION_1_76();
  v9 = v12;
  v11 = 1;
  OUTLINED_FUNCTION_1_76();
  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_237DB26D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000237EFFA10 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237DB27A4(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x65726F6373;
  }
}

uint64_t sub_237DB27DC(void *a1, float a2, float a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3248, &qword_237F145E0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237DB31B0();
  sub_237EFA1B0();
  v14 = 0;
  sub_237EF9A40();
  if (!v3)
  {
    v13 = 1;
    sub_237EF9A40();
  }

  return (*(v7 + 8))(v10, v5);
}

float sub_237DB2938(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3258, &qword_237F145E8);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237DB31B0();
  sub_237EFA190();
  if (!v1)
  {
    v12[15] = 0;
    sub_237EF9940();
    v2 = v10;
    v12[14] = 1;
    sub_237EF9940();
    (*(v6 + 8))(v9, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_237DB2AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237DB2248(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237DB2B08(uint64_t a1)
{
  v2 = sub_237DB2BC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DB2B44(uint64_t a1)
{
  v2 = sub_237DB2BC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237DB2B80@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237DB24F8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

unint64_t sub_237DB2BC8()
{
  result = qword_27DEB31F8;
  if (!qword_27DEB31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB31F8);
  }

  return result;
}

unint64_t sub_237DB2C1C()
{
  result = qword_27DEB3210;
  if (!qword_27DEB3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3210);
  }

  return result;
}

uint64_t sub_237DB2C70(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB3200, &qword_237F14448);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237DB2CE8()
{
  result = qword_27DEB3228;
  if (!qword_27DEB3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3228);
  }

  return result;
}

uint64_t sub_237DB2D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237DB26D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237DB2D6C(uint64_t a1)
{
  v2 = sub_237DB31B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DB2DA8(uint64_t a1)
{
  v2 = sub_237DB31B0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_237DB2DE4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_237DB2938(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 4) = v5;
  }
}

uint64_t sub_237DB2E2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    OUTLINED_FUNCTION_3_70();
    v5 = v30;
    v6 = (a1 + 32);
    v7 = *(v30 + 16);
    v8 = v2;
    do
    {
      v9 = *v6;
      v10 = *(v30 + 24);
      if (v7 >= v10 >> 1)
      {
        sub_237C63670(v10 > 1, v7 + 1, 1);
      }

      *(v30 + 16) = v7 + 1;
      *(v30 + 4 * v7 + 32) = v9;
      v6 += 2;
      ++v7;
      --v8;
    }

    while (v8);
    OUTLINED_FUNCTION_3_70();
    v11 = a2;
    v3 = v30;
    v12 = *(v30 + 16);
    v13 = (a1 + 36);
    do
    {
      v14 = *v13;
      v30 = v5;
      v15 = *(v5 + 24);
      if (v12 >= v15 >> 1)
      {
        sub_237C63670(v15 > 1, v12 + 1, 1);
      }

      *(v5 + 16) = v12 + 1;
      *(v5 + 4 * v12 + 32) = v14;
      v13 += 2;
      ++v12;
      --v2;
    }

    while (v2);
  }

  else
  {
    v11 = a2;
    v5 = MEMORY[0x277D84F90];
  }

  v16 = *(v11 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    OUTLINED_FUNCTION_4_65();
    v18 = v30;
    v19 = (v11 + 32);
    v20 = *(v30 + 16);
    v21 = v16;
    do
    {
      v22 = *v19;
      v23 = *(v30 + 24);
      if (v20 >= v23 >> 1)
      {
        sub_237C63670(v23 > 1, v20 + 1, 1);
      }

      *(v30 + 16) = v20 + 1;
      *(v30 + 4 * v20 + 32) = v22;
      v19 += 2;
      ++v20;
      --v21;
    }

    while (v21);
    OUTLINED_FUNCTION_4_65();
    v17 = v30;
    v24 = *(v30 + 16);
    v25 = (a2 + 36);
    do
    {
      v26 = *v25;
      v27 = *(v30 + 24);
      if (v24 >= v27 >> 1)
      {
        sub_237C63670(v27 > 1, v24 + 1, 1);
      }

      *(v30 + 16) = v24 + 1;
      *(v30 + 4 * v24 + 32) = v26;
      v25 += 2;
      ++v24;
      --v16;
    }

    while (v16);
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  return MEMORY[0x282183E50](v5, v3, v18, v17);
}

unint64_t sub_237DB30AC()
{
  result = qword_27DEB3230;
  if (!qword_27DEB3230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3230);
  }

  return result;
}

unint64_t sub_237DB3104()
{
  result = qword_27DEB3238;
  if (!qword_27DEB3238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3238);
  }

  return result;
}

unint64_t sub_237DB315C()
{
  result = qword_27DEB3240;
  if (!qword_27DEB3240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3240);
  }

  return result;
}

unint64_t sub_237DB31B0()
{
  result = qword_27DEB3250;
  if (!qword_27DEB3250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3250);
  }

  return result;
}

_BYTE *sub_237DB3204(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237DB32E4()
{
  result = qword_27DEB3260;
  if (!qword_27DEB3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3260);
  }

  return result;
}

unint64_t sub_237DB333C()
{
  result = qword_27DEB3268;
  if (!qword_27DEB3268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3268);
  }

  return result;
}

unint64_t sub_237DB3394()
{
  result = qword_27DEB3270;
  if (!qword_27DEB3270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3270);
  }

  return result;
}

void *OUTLINED_FUNCTION_1_76()
{

  return sub_237EF9970();
}

uint64_t OUTLINED_FUNCTION_2_68()
{

  return sub_237EF9A70();
}

void OUTLINED_FUNCTION_3_70()
{

  sub_237C63670(0, v0, 0);
}

void OUTLINED_FUNCTION_4_65()
{

  sub_237C63670(0, v0, 0);
}

uint64_t sub_237DB34A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746F6F6D536E6F6ELL && a2 == 0xE900000000000068;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F6D654D776F6CLL && a2 == 0xE900000000000079;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1953718630 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

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

uint64_t sub_237DB3604(char a1)
{
  result = 0x6974616D6F747561;
  switch(a1)
  {
    case 1:
      result = 0x746F6F6D536E6F6ELL;
      break;
    case 2:
      result = 0x726F6D654D776F6CLL;
      break;
    case 3:
      result = 1953718630;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237DB3684(uint64_t a1)
{
  v2 = sub_237DB3E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DB36C0(uint64_t a1)
{
  v2 = sub_237DB3E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237DB3704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237DB34A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237DB372C(uint64_t a1)
{
  v2 = sub_237DB3CC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DB3768(uint64_t a1)
{
  v2 = sub_237DB3CC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237DB37A4(uint64_t a1)
{
  v2 = sub_237DB3D1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DB37E0(uint64_t a1)
{
  v2 = sub_237DB3D1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237DB381C(uint64_t a1)
{
  v2 = sub_237DB3D70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DB3858(uint64_t a1)
{
  v2 = sub_237DB3D70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237DB3894(uint64_t a1)
{
  v2 = sub_237DB3DC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DB38D0(uint64_t a1)
{
  v2 = sub_237DB3DC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OptimizationStrategy.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3278, &qword_237F14700);
  OUTLINED_FUNCTION_1();
  v40 = v4;
  v41 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_19();
  v39 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3280, &qword_237F14708);
  OUTLINED_FUNCTION_1();
  v37 = v8;
  v38 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v36 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3288, &qword_237F14710);
  OUTLINED_FUNCTION_1();
  v34 = v12;
  v35 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  v33 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3290, &qword_237F14718);
  OUTLINED_FUNCTION_1();
  v31 = v16;
  v32 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3298, &qword_237F14720);
  OUTLINED_FUNCTION_1();
  v22 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237DB3CC8();
  sub_237EFA1B0();
  switch(v26)
  {
    case 1:
      v43 = 1;
      sub_237DB3DC4();
      v27 = v33;
      OUTLINED_FUNCTION_3_71(&type metadata for OptimizationStrategy.NonSmoothCodingKeys, &v43);
      v29 = v34;
      v28 = v35;
      goto LABEL_6;
    case 2:
      v44 = 2;
      sub_237DB3D70();
      v27 = v36;
      OUTLINED_FUNCTION_3_71(&type metadata for OptimizationStrategy.LowMemoryCodingKeys, &v44);
      v29 = v37;
      v28 = v38;
      goto LABEL_6;
    case 3:
      v45 = 3;
      sub_237DB3D1C();
      v27 = v39;
      OUTLINED_FUNCTION_3_71(&type metadata for OptimizationStrategy.FastCodingKeys, &v45);
      v29 = v40;
      v28 = v41;
LABEL_6:
      (*(v29 + 8))(v27, v28);
      break;
    default:
      v42 = 0;
      sub_237DB3E18();
      sub_237EF99C0();
      (*(v31 + 8))(v19, v32);
      break;
  }

  return (*(v22 + 8))(v25, v20);
}

unint64_t sub_237DB3CC8()
{
  result = qword_27DEB32A0;
  if (!qword_27DEB32A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB32A0);
  }

  return result;
}

unint64_t sub_237DB3D1C()
{
  result = qword_27DEB32A8;
  if (!qword_27DEB32A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB32A8);
  }

  return result;
}

unint64_t sub_237DB3D70()
{
  result = qword_27DEB32B0;
  if (!qword_27DEB32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB32B0);
  }

  return result;
}

unint64_t sub_237DB3DC4()
{
  result = qword_27DEB32B8;
  if (!qword_27DEB32B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB32B8);
  }

  return result;
}

unint64_t sub_237DB3E18()
{
  result = qword_27DEB32C0;
  if (!qword_27DEB32C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB32C0);
  }

  return result;
}

uint64_t OptimizationStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_237EFA120();
  MEMORY[0x2383E2210](v1);
  return sub_237EFA170();
}

uint64_t OptimizationStrategy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v64 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB32C8, &qword_237F14728);
  OUTLINED_FUNCTION_1();
  v63 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_19();
  v66 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB32D0, &qword_237F14730);
  OUTLINED_FUNCTION_1();
  v60 = v7;
  v61 = v6;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v62 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB32D8, &qword_237F14738);
  OUTLINED_FUNCTION_1();
  v58 = v11;
  v59 = v10;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB32E0, &qword_237F14740);
  OUTLINED_FUNCTION_1();
  v57 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB32E8, &unk_237F14748);
  OUTLINED_FUNCTION_1();
  v65 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v51 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237DB3CC8();
  v25 = v68;
  sub_237EFA190();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v54 = v15;
  v55 = v19;
  v56 = v14;
  v26 = v66;
  v27 = v67;
  v68 = a1;
  v28 = v24;
  sub_237EF9980();
  result = sub_237CADBA0();
  if (v31 == v32 >> 1)
  {
    goto LABEL_8;
  }

  v53 = 0;
  if (v31 >= (v32 >> 1))
  {
    __break(1u);
    return result;
  }

  v33 = *(v30 + v31);
  sub_237CADB98();
  v35 = v34;
  v37 = v36;
  swift_unknownObjectRelease();
  if (v35 != v37 >> 1)
  {
LABEL_8:
    v43 = v65;
    v44 = sub_237EF93E0();
    swift_allocError();
    v46 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
    *v46 = &type metadata for OptimizationStrategy;
    sub_237EF98C0();
    sub_237EF93D0();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D84160], v44);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v28, v20);
    a1 = v68;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v64;
  v39 = v65;
  v52 = v33;
  v40 = v33;
  v41 = v63;
  switch(v40)
  {
    case 1:
      v70 = 1;
      sub_237DB3DC4();
      v47 = v56;
      OUTLINED_FUNCTION_2_69(&type metadata for OptimizationStrategy.NonSmoothCodingKeys, &v70);
      swift_unknownObjectRelease();
      v49 = v58;
      v48 = v59;
      goto LABEL_18;
    case 2:
      v71[0] = 2;
      sub_237DB3D70();
      v47 = v62;
      OUTLINED_FUNCTION_2_69(&type metadata for OptimizationStrategy.LowMemoryCodingKeys, v71);
      swift_unknownObjectRelease();
      v49 = v60;
      v48 = v61;
LABEL_18:
      (*(v49 + 8))(v47, v48);
      goto LABEL_19;
    case 3:
      v71[1] = 3;
      sub_237DB3D1C();
      v50 = v53;
      sub_237EF98B0();
      if (v50)
      {
        (*(v39 + 8))(v28, v20);
        swift_unknownObjectRelease();
        a1 = v68;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      swift_unknownObjectRelease();
      (*(v41 + 8))(v26, v27);
LABEL_19:
      (*(v39 + 8))(v28, v20);
      *v38 = v52;
      result = __swift_destroy_boxed_opaque_existential_1(v68);
      break;
    default:
      v69 = 0;
      sub_237DB3E18();
      v42 = v55;
      OUTLINED_FUNCTION_2_69(&type metadata for OptimizationStrategy.AutomaticCodingKeys, &v69);
      swift_unknownObjectRelease();
      (*(v57 + 8))(v42, v54);
      goto LABEL_19;
  }

  return result;
}

unint64_t sub_237DB4520()
{
  result = qword_27DEB32F0;
  if (!qword_27DEB32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB32F0);
  }

  return result;
}

_BYTE *sub_237DB4584(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237DB46A4()
{
  result = qword_27DEB32F8;
  if (!qword_27DEB32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB32F8);
  }

  return result;
}

unint64_t sub_237DB46FC()
{
  result = qword_27DEB3300;
  if (!qword_27DEB3300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3300);
  }

  return result;
}

unint64_t sub_237DB4754()
{
  result = qword_27DEB3308;
  if (!qword_27DEB3308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3308);
  }

  return result;
}

unint64_t sub_237DB47AC()
{
  result = qword_27DEB3310;
  if (!qword_27DEB3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3310);
  }

  return result;
}

unint64_t sub_237DB4804()
{
  result = qword_27DEB3318;
  if (!qword_27DEB3318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3318);
  }

  return result;
}

unint64_t sub_237DB485C()
{
  result = qword_27DEB3320;
  if (!qword_27DEB3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3320);
  }

  return result;
}

unint64_t sub_237DB48B4()
{
  result = qword_27DEB3328;
  if (!qword_27DEB3328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3328);
  }

  return result;
}

unint64_t sub_237DB490C()
{
  result = qword_27DEB3330;
  if (!qword_27DEB3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3330);
  }

  return result;
}

unint64_t sub_237DB4964()
{
  result = qword_27DEB3338;
  if (!qword_27DEB3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3338);
  }

  return result;
}

unint64_t sub_237DB49BC()
{
  result = qword_27DEB3340;
  if (!qword_27DEB3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3340);
  }

  return result;
}

unint64_t sub_237DB4A14()
{
  result = qword_27DEB3348;
  if (!qword_27DEB3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3348);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_69(uint64_t a1, uint64_t a2)
{

  return sub_237EF98B0();
}

uint64_t OUTLINED_FUNCTION_3_71(uint64_t a1, uint64_t a2)
{

  return sub_237EF99C0();
}

uint64_t sub_237DB4AB0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_12_35(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_49(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_6_50(v4);

  return AudioReader.AsyncBuffers.Iterator.next()();
}

uint64_t sub_237DB4B38()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (*(v3 + 24))
    {
      v7 = OUTLINED_FUNCTION_14_39();
      OUTLINED_FUNCTION_13_31(v7);
      OUTLINED_FUNCTION_11_40();
    }

    else
    {
      OUTLINED_FUNCTION_10_41();
    }

    return MEMORY[0x2822009F8](sub_237DB4C74, v9, v8);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t sub_237DB4C74()
{
  OUTLINED_FUNCTION_2_0();
  *(v0 + 16) = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DB4CFC()
{
  OUTLINED_FUNCTION_12_2();
  v1[3] = v2;
  v1[4] = v0;
  if (v3)
  {
    swift_getObjectType();
    v4 = sub_237EF8AD0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v1[5] = v4;
  v1[6] = v6;

  return MEMORY[0x2822009F8](sub_237DB4D98, v4, v6);
}

uint64_t sub_237DB4D98()
{
  OUTLINED_FUNCTION_2_0();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_237DB4E34;

  return AudioReader.MicrophoneAsyncBuffers.Iterator.next()();
}

uint64_t sub_237DB4E34()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[8] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];

    return MEMORY[0x2822009F8](sub_237DB4F48, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v9();
  }
}

uint64_t sub_237DB4F48()
{
  OUTLINED_FUNCTION_2_0();
  *(v0 + 16) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DB4FD0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_12_35(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_49(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_6_50(v4);

  return VideoReader.AsyncFrames.Iterator.next()();
}

uint64_t sub_237DB5058()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    if (*(v3 + 24))
    {
      v7 = OUTLINED_FUNCTION_14_39();
      OUTLINED_FUNCTION_13_31(v7);
      OUTLINED_FUNCTION_11_40();
    }

    else
    {
      OUTLINED_FUNCTION_10_41();
    }

    return MEMORY[0x2822009F8](sub_237DB62B4, v9, v8);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v10();
  }
}

uint64_t sub_237DB5194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a1;
  v4[4] = v3;
  if (a2)
  {
    swift_getObjectType();
    v5 = sub_237EF8AD0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[5] = v5;
  v4[6] = v7;

  return MEMORY[0x2822009F8](sub_237DB5234, v5, v7);
}

uint64_t sub_237DB5234()
{
  OUTLINED_FUNCTION_2_0();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_237DB52CC;
  v2 = *(v0 + 24);

  return VideoReader.CameraAsyncBuffers.Iterator.next()(v2);
}

uint64_t sub_237DB52CC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  v3[8] = v0;

  if (v0)
  {
    v7 = v3[5];
    v8 = v3[6];

    return MEMORY[0x2822009F8](sub_237DB62B8, v7, v8);
  }

  else
  {
    OUTLINED_FUNCTION_3_0();

    return v9();
  }
}

uint64_t sub_237DB53E0()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_12_35(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_49(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_6_50(v4);

  return AudioFeaturePrint.FeatureSequence.Iterator.next()();
}

uint64_t sub_237DB5468()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_12_35(v0, v1, v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_7_49(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_50(v4);

  return HumanBodyActionCounter.CumulativeSumSequence.Iterator.next()(v6);
}

uint64_t sub_237DB54F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_237DB557C()
{
  v0 = [objc_opt_self() authorizationStatusForMediaType_];
  if (v0 == 2 || v0 == 1)
  {
    type metadata accessor for VideoReaderError(0);
    sub_237DB624C(qword_27DEAFA98, 255, type metadata accessor for VideoReaderError, &protocol conformance descriptor for VideoReaderError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    OUTLINED_FUNCTION_3_0();
  }

  else
  {
    if (!v0)
    {

      return MEMORY[0x2822009F8](sub_237DB56E8, 0, 0);
    }

    OUTLINED_FUNCTION_3_0();
  }

  return v1();
}

uint64_t sub_237DB56E8()
{
  OUTLINED_FUNCTION_2_0();
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_237DB5774;
  v1 = swift_continuation_init();
  sub_237DB593C(v1);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_237DB5774()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v1 = *v0;
  OUTLINED_FUNCTION_14_0();
  *v2 = v1;
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  OUTLINED_FUNCTION_24_0();

  return v4();
}

uint64_t VideoReader.CameraAsyncBuffers.makeAsyncIterator()()
{
  v1 = *v0;
  if ([*(*v0 + OBJC_IVAR____TtCV18CreateMLComponents11VideoReader8Observer_captureSession) isRunning])
  {
    result = sub_237EF9740("Fatal error", 11, 2, 0xD000000000000027, 0x8000000237EFFA70, "CreateMLComponents/VideoReader.CameraAsyncBuffers.swift", 55, 2, 52);
    __break(1u);
  }

  else
  {
    type metadata accessor for VideoReader.CameraAsyncBuffers.Iterator();
    v2 = swift_allocObject();
    sub_237DB5B58(v1);
    return v2;
  }

  return result;
}

void sub_237DB593C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = *MEMORY[0x277CE5EA8];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v6[4] = sub_237DB6294;
  v6[5] = v4;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_237DB54F0;
  v6[3] = &block_descriptor_3;
  v5 = _Block_copy(v6);

  [v2 requestAccessForMediaType:v3 completionHandler:v5];
  _Block_release(v5);
}

uint64_t sub_237DB5A2C(char a1, uint64_t a2)
{
  if (a1)
  {

    return MEMORY[0x282200950](a2);
  }

  else
  {
    type metadata accessor for VideoReaderError(0);
    sub_237DB624C(qword_27DEAFA98, 255, type metadata accessor for VideoReaderError, &protocol conformance descriptor for VideoReaderError);
    v3 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
    v4 = swift_allocError();
    *v5 = v3;

    return MEMORY[0x282200958](a2, v4);
  }
}

uint64_t sub_237DB5B30@<X0>(uint64_t *a1@<X8>)
{
  result = VideoReader.CameraAsyncBuffers.makeAsyncIterator()();
  *a1 = result;
  return result;
}

uint64_t sub_237DB5B58(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 30;
  *(v1 + 24) = a1;
  *(v1 + 32) = 0;
  v3 = a1;
  sub_237DA3188();

  return v2;
}

uint64_t VideoReader.CameraAsyncBuffers.Iterator.deinit()
{
  v1 = v0;
  v2 = *(v0 + 24);
  sub_237DA4068();

  return v1;
}

uint64_t VideoReader.CameraAsyncBuffers.Iterator.__deallocating_deinit()
{
  VideoReader.CameraAsyncBuffers.Iterator.deinit();

  return swift_deallocClassInstance();
}

uint64_t VideoReader.CameraAsyncBuffers.Iterator.next()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_5_63(sub_237DB5C24);
}

uint64_t sub_237DB5C24()
{
  OUTLINED_FUNCTION_12_2();
  sub_237EF8B90();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_237DB5CFC;

  return sub_237DA4684();
}

uint64_t sub_237DB5CFC()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3[2] = v1;
  v3[3] = v2;
  v3[4] = v0;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_3_0();

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_237DB5E20, 0, 0);
  }
}

void sub_237DB5E20()
{
  v1 = v0[6];
  v2 = *(v1 + 32);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < v2)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = v0[3];
  v5 = v0[5];
  *(v1 + 32) = v3;
  v6 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];

  *v5 = 0xD000000000000028;
  v5[1] = 0x8000000237EFFAA0;
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = 30;
  v5[5] = v6;
  OUTLINED_FUNCTION_3_0();

  v7();
}

unint64_t sub_237DB5F00(uint64_t a1)
{
  result = sub_237DB5F28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_237DB5F28()
{
  result = qword_27DEB3350;
  if (!qword_27DEB3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3350);
  }

  return result;
}

uint64_t sub_237DB5FC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237C6A904;

  return VideoReader.CameraAsyncBuffers.Iterator.next()(a1);
}

uint64_t sub_237DB6060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_237DB612C;

  return sub_237DB5194(a1, a2, a3);
}

uint64_t sub_237DB612C()
{
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_14_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  OUTLINED_FUNCTION_24_0();

  return v7();
}

uint64_t sub_237DB624C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
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

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_13_31(uint64_t a1)
{

  return sub_237EF8AD0();
}

uint64_t OUTLINED_FUNCTION_14_39()
{

  return swift_getObjectType();
}

uint64_t sub_237DB6354(uint64_t a1)
{
  OUTLINED_FUNCTION_16_36(a1);
  MEMORY[0x2383E2210](a1);
  return sub_237EFA170();
}

uint64_t sub_237DB6394(uint64_t a1)
{
  OUTLINED_FUNCTION_16_36(a1);
  OUTLINED_FUNCTION_1_77();
  sub_237EF8610();
  return sub_237EFA170();
}

uint64_t sub_237DB63F4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_16_36(a1);
  sub_237EF8610();
  return sub_237EFA170();
}

uint64_t sub_237DB649C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_16_36(a1);
  v4 = a2(a1);
  OUTLINED_FUNCTION_7_50(v4, v5, v6);

  return sub_237EFA170();
}

uint64_t sub_237DB64EC(uint64_t a1, unsigned __int8 a2)
{
  sub_237EF8610();
}

uint64_t sub_237DB6590(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_8_56();
  }

  sub_237EF8610();
}

uint64_t sub_237DB660C(uint64_t a1, char a2)
{
  sub_237EF8610();
}

uint64_t sub_237DB668C(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_14_40();
  }

  sub_237EF8610();
}

uint64_t sub_237DB6714(uint64_t a1, char a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_2_70();
  }

  else
  {
    OUTLINED_FUNCTION_9_43();
  }

  sub_237EF8610();
}

uint64_t sub_237DB676C(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_3_72();
  }

  sub_237EF8610();
}

uint64_t sub_237DB67E0(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 3:
      OUTLINED_FUNCTION_12_36();
      goto LABEL_3;
    case 2:
LABEL_3:
      OUTLINED_FUNCTION_10_42();
      break;
    default:
      break;
  }

  sub_237EF8610();
}

uint64_t sub_237DB68EC(uint64_t a1, char a2)
{
  sub_237EF8610();
}

uint64_t sub_237DB6960(uint64_t a1, char a2)
{
  sub_237EF8610();
}

uint64_t sub_237DB69CC(void *a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_3_72();
      break;
    case 5:
    case 6:
      OUTLINED_FUNCTION_12_36();
      goto LABEL_4;
    case 7:
LABEL_4:
      OUTLINED_FUNCTION_10_42();
      break;
    default:
      break;
  }

  sub_237EF8610();
}

uint64_t sub_237DB6B0C(uint64_t a1, char a2)
{
  sub_237EF8610();
}

uint64_t sub_237DB6B78(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_6_51(a1, a2);
  if (v2)
  {
    v5 = 0x746567726174;
  }

  else
  {
    v5 = 0x6953746567726174;
  }

  OUTLINED_FUNCTION_5_64(v3, v5, v4);

  return sub_237EFA170();
}

uint64_t sub_237DB6BE8(uint64_t a1, uint64_t a2)
{
  sub_237EFA120();
  MEMORY[0x2383E2210](a2);
  return sub_237EFA170();
}

uint64_t sub_237DB6C2C(uint64_t a1)
{
  sub_237EFA120();
  OUTLINED_FUNCTION_1_77();
  sub_237EF8610();
  return sub_237EFA170();
}

uint64_t sub_237DB6C84(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_6_51(a1, a2);
  if (v2)
  {
    v5 = 1702521203;
  }

  else
  {
    v5 = 0x54746E656D656C65;
  }

  OUTLINED_FUNCTION_5_64(v3, v5, v4);

  return sub_237EFA170();
}

uint64_t sub_237DB6CF4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_6_51(a1, a2);
  if (v2)
  {
    v5 = 0x6E6F697369766572;
  }

  else
  {
    v5 = 0x53646E41706F7263;
  }

  OUTLINED_FUNCTION_5_64(v3, v5, v4);

  return sub_237EFA170();
}

uint64_t sub_237DB6D84(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_237EFA120();
  v5 = a3(a2);
  OUTLINED_FUNCTION_7_50(v5, v6, v7);

  return sub_237EFA170();
}

uint64_t sub_237DB6DD8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_6_51(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x656C62756F64;
    }

    else
    {
      v5 = 0x3233746E69;
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_72();
  }

  OUTLINED_FUNCTION_5_64(v3, v5, v4);

  return sub_237EFA170();
}

uint64_t sub_237DB6E50(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_51(a1, a2);
  if (v2)
  {
    OUTLINED_FUNCTION_2_70();
  }

  else
  {
    OUTLINED_FUNCTION_9_43();
  }

  OUTLINED_FUNCTION_5_64(v3, v4, v5);

  return sub_237EFA170();
}

uint64_t sub_237DB6EAC(uint64_t a1, char a2)
{
  v3 = sub_237EFA120();
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0x65536D6F646E6172;
    }
  }

  else
  {
    OUTLINED_FUNCTION_14_40();
  }

  OUTLINED_FUNCTION_5_64(v3, v5, v4);

  return sub_237EFA170();
}

uint64_t sub_237DB6F40(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_6_51(a1, a2);
  if (v2)
  {
    v5 = 0x657A696D6974706FLL;
  }

  else
  {
    v5 = 0x6963696666656F63;
  }

  OUTLINED_FUNCTION_5_64(v3, v5, v4);

  return sub_237EFA170();
}

uint64_t sub_237DB6FC4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_6_51(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x65676E6172;
    }

    else
    {
      v5 = 0x6C616373656D6974;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_56();
  }

  OUTLINED_FUNCTION_5_64(v3, v5, v4);

  return sub_237EFA170();
}

uint64_t sub_237DB7044(uint64_t a1, char a2)
{
  sub_237EFA120();
  sub_237EF8610();

  return sub_237EFA170();
}

uint64_t sub_237DB70FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237EFA120();
  sub_237EF8610();
  return sub_237EFA170();
}

uint64_t BaseLogisticRegressionClassifierModel.encode(to:)(void *a1)
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  OUTLINED_FUNCTION_1();
  v21 = v3;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v20 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3360, &qword_237F14DD0);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = *v1;
  memcpy(__dst, v1 + 2, 0x49uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237DB7534();
  sub_237EFA1B0();
  LOBYTE(__src[0]) = 0;
  v13 = v23;
  sub_237EF9A50();
  if (v13)
  {
    return (*(v8 + 8))(v11, v6);
  }

  v15 = v8;
  __src[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_237F03530;
  *(v16 + 32) = *(v12 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB02F8, &qword_237F0F350);
  sub_237C96710(&qword_280C8CCE0, &qword_27DEB02F8, &qword_237F0F350, MEMORY[0x277D84268]);
  v17 = v20;
  sub_237EF7E40();
  LOBYTE(__src[0]) = 1;
  sub_237D0A15C(&qword_280C8CD70, MEMORY[0x277D83A08], MEMORY[0x277CBFD38]);
  v18 = v22;
  sub_237EF9A70();
  (*(v21 + 8))(v17, v18);
  memcpy(__src, __dst, 0x49uLL);
  __dst[103] = 2;
  sub_237D914E8(__dst, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08, qword_237F15D10);
  sub_237D91558(&qword_27DEB2A10, MEMORY[0x277D83A08], &unk_237F1A778);
  sub_237EF9A00();
  memcpy(v24, __src, 0x49uLL);
  sub_237D09E34(v24);
  return (*(v15 + 8))(v11, v6);
}

unint64_t sub_237DB7534()
{
  result = qword_27DEB3368;
  if (!qword_27DEB3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3368);
  }

  return result;
}

uint64_t BaseLogisticRegressionClassifierModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3370, &qword_237F14DD8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237DB7534();
  sub_237EFA190();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v31 = 0u;
    memset(v32, 0, 25);
    v29 = 0u;
    v30 = 0u;
    return sub_237D09E34(&v29);
  }

  else
  {
    *(&v22 + 1) = sub_237EF9950();
    LOBYTE(v29) = 1;
    sub_237D0A15C(&qword_280C8CD68, MEMORY[0x277D83A30], MEMORY[0x277CBFD48]);
    sub_237EF9970();
    sub_237C96710(qword_280C8CD78, &qword_27DEAEA60, &unk_237F07350, MEMORY[0x277CBFD28]);
    v6 = sub_237EF7F50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08, qword_237F15D10);
    v45 = 2;
    sub_237D91558(&qword_27DEB2A20, MEMORY[0x277D83A30], &unk_237F1A738);
    sub_237EF9900();
    v7 = OUTLINED_FUNCTION_11_41();
    v8(v7);
    v9 = OUTLINED_FUNCTION_4_66();
    v10(v9);
    v12 = v34;
    v11 = v35;
    v14 = v36;
    v13 = v37;
    v24 = v37;
    v25 = v35;
    v16 = v38;
    v15 = v39;
    v21 = v39;
    *&v22 = v6;
    v19 = v41;
    v20 = v40;
    v18 = v42;
    v44 = v43;
    memset(v27, 0, 73);
    sub_237D09E34(v27);
    v28[0] = __PAIR128__(*(&v22 + 1), v6);
    *&v28[1] = v12;
    *(&v28[1] + 1) = v11;
    *&v28[2] = v14;
    *(&v28[2] + 1) = v13;
    *&v28[3] = v16;
    *(&v28[3] + 1) = v15;
    *&v28[4] = v20;
    *(&v28[4] + 1) = v19;
    *&v28[5] = v18;
    LOBYTE(v6) = v44;
    BYTE8(v28[5]) = v44;
    memcpy(a2, v28, 0x59uLL);
    sub_237D4D938(v28, &v29);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v29 = v22;
    *&v30 = v12;
    *(&v30 + 1) = v25;
    *&v31 = v14;
    *(&v31 + 1) = v24;
    v32[0] = v16;
    v32[1] = v21;
    v32[2] = v20;
    v32[3] = v19;
    v32[4] = v18;
    v33 = v6;
    return sub_237CC9A9C(&v29);
  }
}

unint64_t sub_237DB79A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_237DB79EC(char a1)
{
  if (!a1)
  {
    return 0x756F437373616C63;
  }

  if (a1 == 1)
  {
    return 0x6963696666656F63;
  }

  return 0x657A696D6974706FLL;
}

unint64_t sub_237DB7A80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237DB79A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_237DB7AB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237DB79EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_237DB7AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237DB79A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237DB7B0C(uint64_t a1)
{
  v2 = sub_237DB7534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237DB7B48(uint64_t a1)
{
  v2 = sub_237DB7534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BaseLogisticRegressionClassifierModel.export(to:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_60();
  OUTLINED_FUNCTION_3_60();

  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  __src[2] = 0;
  __src[3] = 0xE000000000000000;
  __src[4] = 0;
  __src[5] = 0xE000000000000000;
  __src[6] = 0;
  __src[7] = 0xE000000000000000;
  __src[8] = v2;
  BaseLogisticRegressionClassifierModel.export(to:metadata:)(a1, __src);
  memcpy(v4, __src, sizeof(v4));
  return sub_237D91628(v4);
}

uint64_t BaseLogisticRegressionClassifierModel.export(to:metadata:)(uint64_t a1, uint64_t *a2)
{
  v16 = a1;
  v5 = type metadata accessor for CoreMLPackage(0);
  MEMORY[0x28223BE20](v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[2];
  v14[0] = *a2;
  v14[1] = v8;
  v9 = a2[6];
  v14[2] = a2[4];
  v14[3] = v9;
  v10 = a2[8];
  memcpy(__dst, v2, 0x59uLL);
  result = sub_237E6BCA8(v7);
  if (!v3)
  {
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF7770();
    sub_237EF7800();
    sub_237EF77C0();
    sub_237EF77E0();
    v12 = sub_237EF7780();
    sub_237C9FB0C(v10, sub_237C9FE58, 0, v13);
    v12(__dst, 0);
    sub_237E33BC0(v16);
    return sub_237D0F8BC(v7);
  }

  return result;
}

_BYTE *_s10CodingKeysOwst_1(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237DB7F00()
{
  result = qword_27DEB3378;
  if (!qword_27DEB3378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3378);
  }

  return result;
}

unint64_t sub_237DB7F58()
{
  result = qword_27DEB3380;
  if (!qword_27DEB3380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB3380);
  }

  return result;
}

unint64_t sub_237DB7FB0()
{
  result = qword_27DEB3388[0];
  if (!qword_27DEB3388[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB3388);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_64(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_237EF8610();
}

void *OUTLINED_FUNCTION_6_51(uint64_t a1, uint64_t a2, ...)
{

  return sub_237EFA120();
}

uint64_t OUTLINED_FUNCTION_7_50(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_237EF8610();
}

void *OUTLINED_FUNCTION_16_36(uint64_t a1, ...)
{

  return sub_237EFA120();
}

uint64_t TimeSeriesForecasterBatches.features.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_237EF7E90();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t TimeSeriesForecasterBatches.annotations.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_237EF7E90();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *TimeSeriesForecasterBatches.init(features:annotations:batchSize:inputWindowSize:forecastWindowSize:shufflesBatches:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = type metadata accessor for TimeSeriesForecasterBatches(0, a7, a8, a4);
  v43 = v14[13];
  OUTLINED_FUNCTION_4_67();
  v15 = sub_237EF7E90();
  OUTLINED_FUNCTION_77();
  v42 = v16;
  v17 = *(v16 + 16);
  v17(a9, a1, v15);
  v41 = v14[9];
  v17(a9 + v41, a2, v15);
  v18 = a5;
  *(a9 + v14[10]) = a3;
  *(a9 + v14[11]) = a4;
  *(a9 + v14[12]) = a5;
  v46 = a9;
  *(a9 + v43) = a6;
  if (a3 < 1 || a4 < 1 || a5 < 1)
  {
    v21 = 0xD00000000000001BLL;
    v22 = 0x8000000237F14F60;
    v23 = 0x8000000237EFFB50;
    v18 = 0xD000000000000031;
    v24 = 5;
LABEL_24:
    sub_237C84150();
    swift_allocError();
    *v39 = v21;
    *(v39 + 8) = v22;
    *(v39 + 16) = v18;
    *(v39 + 24) = v23;
    *(v39 + 32) = v24;
    swift_willThrow();
    v40 = *(v42 + 8);
    v40(a2, v15);
    v40(a1, v15);
    v40(v46, v15);
    return (v40)(v46 + v41, v15);
  }

  v25 = *(sub_237EF7E20() + 16);

  result = sub_237EF7E20();
  v21 = result;
  if (v25 != 2)
  {
    v23 = 0;
    OUTLINED_FUNCTION_9_44();
    v22 = v37 + 24;
LABEL_23:
    v24 = 6;
    goto LABEL_24;
  }

  if (!result[2])
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = result[4];

  result = sub_237EF7E20();
  if (!result[2])
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v28 = result[4];

  if (v27 != v28)
  {
    v21 = sub_237EF7E20();
    v23 = 0;
    OUTLINED_FUNCTION_9_44();
    v22 = v38 + 91;
    goto LABEL_23;
  }

  result = sub_237EF7E20();
  if (result[2] < 2uLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v29 = result[5];

  *(a9 + v14[14]) = v29;
  result = sub_237EF7E20();
  if (result[2] < 2uLL)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v30 = result[5];

  *(a9 + v14[15]) = v30;
  result = sub_237EF7E20();
  if (!result[2])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v31 = result[4];

  v32 = *(v42 + 8);
  v32(a2, v15);
  result = (v32)(a1, v15);
  v33 = a4 + a5;
  if (__OFADD__(a4, a5))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v34 = __OFSUB__(v31, v33);
  v35 = v31 - v33;
  if (!v34)
  {
    v34 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (!v34)
    {
      *(a9 + v14[16]) = v36 & ~(v36 >> 63);
      return result;
    }

    goto LABEL_32;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t TimeSeriesForecasterBatches.underestimatedCount.getter(uint64_t result)
{
  v2 = *(v1 + *(result + 64));
  v3 = *(v1 + *(result + 40));
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = __OFSUB__(v5, 1);
  v6 = v5 - 1;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 != 0x8000000000000000 || v3 != -1)
  {
    return v6 / v3;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t TimeSeriesForecasterBatches.makeIterator()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v18 - v14;
  v16 = *(v8 + 16);
  v16(&v18 - v14, v2, v6, v13);
  (v16)(v11, v2 + *(a1 + 36), v6);
  return sub_237DB87F4(v15, v11, *(v2 + *(a1 + 40)), *(v2 + *(a1 + 44)), *(v2 + *(a1 + 48)), *(v2 + *(a1 + 52)), *(v2 + *(a1 + 56)), *(v2 + *(a1 + 60)), *(v2 + *(a1 + 64)), v4, v5);
}

uint64_t sub_237DB8A70(uint64_t a1)
{
  TimeSeriesForecasterBatches.makeIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

void sub_237DB8AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_12_37();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_237F04760;
  *(v21 + 32) = v20;
  if ((v18 * v14) >> 64 == (v18 * v14) >> 63)
  {
    *(v21 + 40) = v18 * v14;
    sub_237D14E78(v21);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_237F04760;
    *(v22 + 32) = v20;
    if ((v16 * v12) >> 64 == (v16 * v12) >> 63)
    {
      v24 = v22;
      *(v22 + 40) = v16 * v12;
      type metadata accessor for AnnotatedBatch(0, v10, v8, v23);
      sub_237D14E78(v24);
      OUTLINED_FUNCTION_8_6();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void TimeSeriesForecasterBatches.Iterator.next()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  OUTLINED_FUNCTION_4_67();
  v8 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - v12;
  v14 = *(a1 + 68);
  v15 = *(v3 + v14);
  v16 = *(v3 + *(a1 + 72));
  if (v15 < *(v16 + 16))
  {
    if (v15 < 0)
    {
      __break(1u);
    }

    else
    {
      v17 = *(v16 + 8 * v15 + 32);
      *(v3 + v14) = v15 + 1;
      v18 = *(v3 + *(a1 + 64));
      v19 = __OFSUB__(v18, v17);
      v20 = v18 - v17;
      if (!v19)
      {
        v61 = v17;
        v62 = v13;
        v63 = a2;
        v21 = *(v3 + *(a1 + 40));
        v60 = v6;
        if (v20 >= v21)
        {
          v22 = v21;
        }

        else
        {
          v22 = v20;
        }

        v23 = v3 + *(a1 + 76);
        v24 = sub_237EF7E20();
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
        inited = swift_initStackObject();
        v67 = xmmword_237F08A50;
        *(inited + 16) = xmmword_237F08A50;
        *(inited + 32) = v22;
        v66 = *(v3 + *(a1 + 44));
        *(inited + 40) = v66;
        v64 = *(v3 + *(a1 + 56));
        *(inited + 48) = v64;
        v26 = sub_237C60C7C(v24, inited);
        v27 = v23;
        v28 = v22;
        v29 = v60;

        swift_setDeallocating();
        if ((v26 & 1) == 0)
        {
          v31 = swift_allocObject();
          *(v31 + 16) = v67;
          v32 = v66;
          *(v31 + 32) = v28;
          *(v31 + 40) = v32;
          *(v31 + 48) = v64;
          v33 = v62;
          sub_237D14E78(v31);
          (*(v10 + 40))(v27, v33, v8);
        }

        v59 = v10;
        v34 = type metadata accessor for AnnotatedBatch(0, v7, v29, v30);
        v35 = *(v34 + 36);
        v66 = v27;
        v58 = v35;
        v36 = sub_237EF7E20();
        v37 = swift_initStackObject();
        *(v37 + 16) = v67;
        v65 = v28;
        *(v37 + 32) = v28;
        v38 = *(a1 + 48);
        v57 = v7;
        v39 = *(v3 + v38);
        *(v37 + 40) = v39;
        v40 = *(v3 + *(a1 + 60));
        *(v37 + 48) = v40;
        v41 = sub_237C60C7C(v36, v37);

        swift_setDeallocating();
        if ((v41 & 1) == 0)
        {
          v42 = swift_allocObject();
          *(v42 + 16) = v67;
          *(v42 + 32) = v65;
          *(v42 + 40) = v39;
          *(v42 + 48) = v40;
          v43 = v62;
          sub_237D14E78(v42);
          (*(v59 + 40))(v66 + v58, v43, v8);
        }

        if (v64 == 1 && v40 == 1)
        {
          v53 = OUTLINED_FUNCTION_10_43(&v69);
          sub_237DB8FF8(v53, v54, v55);
        }

        else
        {
          v45 = OUTLINED_FUNCTION_10_43(&v69);
          sub_237DB9088(v45, v46, v47);
        }

        v56 = v63;
        (*(*(v34 - 8) + 16))(v63, v66, v34);
        __swift_storeEnumTagSinglePayload(v56, 0, 1, v34);
        return;
      }
    }

    __break(1u);
    return;
  }

  v48 = OUTLINED_FUNCTION_4_67();
  v52 = type metadata accessor for AnnotatedBatch(v48, v49, v50, v51);

  __swift_storeEnumTagSinglePayload(a2, 1, 1, v52);
}

uint64_t sub_237DB8FF8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(result, *(v3 + *(a3 + 44))))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    v10[1] = *(v4 + 16);
    v11 = v5;
    v12 = v6;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    return OUTLINED_FUNCTION_13_32(v4, v10);
  }

  return result;
}

uint64_t sub_237DB9088(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (__OFADD__(result, *(v3 + *(a3 + 44))))
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x28223BE20](result);
    v12[1] = *(v4 + 16);
    v13 = v5;
    v14 = v6;
    v15 = v8;
    v16 = v7;
    v17 = v9;
    v18 = v10;
    v19 = v11;
    return OUTLINED_FUNCTION_13_32(v4, v12);
  }

  return result;
}

void sub_237DB9128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v49 = a8;
  v48 = a7;
  v47 = a6;
  v46 = a5;
  v55 = a4;
  v54 = a3;
  v53 = a2;
  v52 = a1;
  v23 = *(a22 - 8);
  MEMORY[0x28223BE20](a1);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v24 < 0)
  {
    goto LABEL_21;
  }

  if (v24)
  {
    v56 = a20;
    v57 = a18;
    if ((a20 | a18) < 0)
    {
LABEL_22:
      __break(1u);
      return;
    }

    v27 = 0;
    v60 = a23;
    v41 = a21;
    v42 = a19;
    v45 = a16;
    v44 = a13;
    v51 = a12;
    v59 = xmmword_237F08A50;
    v58 = xmmword_237F04760;
    v50 = a9;
    v43 = v24;
    while (!v57)
    {
LABEL_10:
      if (v56)
      {
        v34 = v41 + v27;
        if (__OFADD__(v41, v27))
        {
          goto LABEL_20;
        }

        v35 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
          inited = swift_initStackObject();
          *(inited + 16) = v59;
          *(inited + 32) = v27;
          *(inited + 40) = v35;
          *(inited + 48) = 0;
          v37 = swift_initStackObject();
          *(v37 + 16) = v58;
          v38 = v34 + v35;
          if (__OFADD__(v34, v35))
          {
            goto LABEL_18;
          }

          ++v35;
          *(v37 + 32) = v38;
          *(v37 + 40) = 0;
          sub_237D16AC4();
          swift_setDeallocating();
          v39 = sub_237D166DC(inited, v45);
          swift_setDeallocating();
          (*(v23 + 40))(v44 + *(v23 + 72) * v39, v26, a22);
        }

        while (v56 != v35);
      }

      if (++v27 == v43)
      {
        return;
      }
    }

    v28 = v42 + v27;
    if (__OFADD__(v42, v27))
    {
      goto LABEL_19;
    }

    v29 = 0;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
      v30 = swift_initStackObject();
      *(v30 + 16) = v59;
      *(v30 + 32) = v27;
      *(v30 + 40) = v29;
      *(v30 + 48) = 0;
      v31 = swift_initStackObject();
      *(v31 + 16) = v58;
      v32 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      ++v29;
      *(v31 + 32) = v32;
      *(v31 + 40) = 0;
      sub_237D16AC4();
      swift_setDeallocating();
      v33 = sub_237D166DC(v30, v51);
      swift_setDeallocating();
      (*(v23 + 40))(v50 + *(v23 + 72) * v33, v26, a22);
      if (v57 == v29)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }
}

uint64_t sub_237DB9524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v21[1] = a5;
  v11 = *(a3 + 16);
  v10 = *(a3 + 24);
  v12 = sub_237EF7E90();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v21 - v17;
  (*(v14 + 16))(v21 - v17, v6, v12, v16);
  v23 = v11;
  v24 = a4;
  v25 = v10;
  v26 = v6;
  v27 = a1;
  v28 = a2;
  WitnessTable = swift_getWitnessTable();
  sub_237D14E4C(sub_237DBA10C, v22, v12, a4, WitnessTable);
  return (*(v14 + 8))(v18, v12);
}

void sub_237DB9690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v25 = *(a24 - 8);
  MEMORY[0x28223BE20](a1);
  v36 = &v55 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v34 < 0)
  {
    goto LABEL_41;
  }

  v74 = v26;
  v75 = v27;
  v76 = v28;
  v77 = v29;
  v67 = v30;
  v68 = v31;
  v69 = v32;
  v70 = v33;
  if (v34)
  {
    v37 = a18;
    if ((a21 | a18) < 0)
    {
LABEL_42:
      __break(1u);
      return;
    }

    v38 = 0;
    v56 = a23;
    v71 = a22;
    v57 = a20;
    v39 = a19;
    v81 = v25 + 40;
    v62 = a18 & ~(a18 >> 63);
    v65 = a13;
    v63 = a21;
    v61 = a21 & ~(a21 >> 63);
    v72 = a9;
    v82 = a25;
    v78 = a19;
    v66 = a16;
    v80 = xmmword_237F08A50;
    v79 = xmmword_237F04760;
    v58 = v34;
    v64 = a18;
    v73 = a12;
    while (1)
    {
      v83 = v38;
      if (v37)
      {
        break;
      }

LABEL_18:
      v47 = v71;
      if (v63)
      {
        if (v71 < 0)
        {
          goto LABEL_40;
        }

        v48 = 0;
        v59 = v56 + v83;
        v49 = __OFADD__(v56, v83);
        v60 = v49;
        while (v48 != v61)
        {
          if (v47)
          {
            if (v60)
            {
              goto LABEL_37;
            }

            v50 = v59 + v48;
            if (__OFADD__(v59, v48))
            {
              goto LABEL_38;
            }

            v51 = 0;
            do
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
              inited = swift_initStackObject();
              *(inited + 16) = v80;
              *(inited + 32) = v83;
              *(inited + 40) = v48;
              *(inited + 48) = v51;
              v53 = swift_initStackObject();
              *(v53 + 16) = v79;
              *(v53 + 32) = v50;
              *(v53 + 40) = v51;
              sub_237D16AC4();
              swift_setDeallocating();
              v54 = sub_237D166DC(inited, v66);
              swift_setDeallocating();
              (*(v25 + 40))(v65 + *(v25 + 72) * v54, v36, a24);
              v47 = v71;
              ++v51;
            }

            while (v71 != v51);
          }

          ++v48;
          v39 = v78;
          if (v48 == v63)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_34;
      }

LABEL_31:
      v38 = v83 + 1;
      v37 = v64;
      if (v83 + 1 == v58)
      {
        return;
      }
    }

    if (v39 < 0)
    {
      goto LABEL_39;
    }

    v40 = 0;
    v59 = v57 + v83;
    v41 = __OFADD__(v57, v83);
    v60 = v41;
    while (v40 != v62)
    {
      if (v39)
      {
        if (v60)
        {
          goto LABEL_35;
        }

        v42 = v59 + v40;
        if (__OFADD__(v59, v40))
        {
          goto LABEL_36;
        }

        v43 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
          v44 = swift_initStackObject();
          *(v44 + 16) = v80;
          *(v44 + 32) = v83;
          *(v44 + 40) = v40;
          *(v44 + 48) = v43;
          v45 = swift_initStackObject();
          *(v45 + 16) = v79;
          *(v45 + 32) = v42;
          *(v45 + 40) = v43;
          sub_237D16AC4();
          swift_setDeallocating();
          v46 = sub_237D166DC(v44, v73);
          swift_setDeallocating();
          (*(v25 + 40))(v72 + *(v25 + 72) * v46, v36, a24);
          v39 = v78;
          ++v43;
        }

        while (v78 != v43);
      }

      if (++v40 == v64)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
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
    goto LABEL_42;
  }
}

uint64_t sub_237DB9BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v26 = a7;
  v27 = a4;
  v24 = a6;
  v25 = a3;
  v28 = a9;
  v15 = sub_237EF7E90();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v23 - v17;
  v20 = type metadata accessor for TimeSeriesForecasterBatches.Iterator(0, a8, a11, v19);
  (*(v16 + 16))(v18, a5 + *(v20 + 36), v15);
  v30 = a8;
  v31 = a10;
  v32 = a11;
  v33 = a5;
  v34 = v24;
  v35 = v26;
  v36 = a1;
  v37 = a2;
  v38 = v25;
  v39 = v27;
  WitnessTable = swift_getWitnessTable();
  sub_237D14E4C(sub_237DBA13C, v29, v15, a10, WitnessTable);
  return (*(v16 + 8))(v18, v15);
}

uint64_t sub_237DB9D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  type metadata accessor for TimeSeriesForecasterBatches.Iterator(0, a12, a14, a4);
  sub_237EF7E90();
  swift_getWitnessTable();
  return sub_237D14EC8();
}

uint64_t sub_237DB9E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  type metadata accessor for TimeSeriesForecasterBatches.Iterator(0, a16, a18, a4);
  type metadata accessor for AnnotatedBatch(0, a16, a18, v18);
  sub_237EF7E90();
  swift_getWitnessTable();
  return sub_237D14EC8();
}

void sub_237DB9FAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  sub_237EF7E90();
  if (v3 <= 0x3F)
  {
    sub_237CFF010();
    if (v5 <= 0x3F)
    {
      type metadata accessor for AnnotatedBatch(319, v1, v2, v4);
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237DBA264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_12_37();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_237EF8260();
  sub_237EF8260();
  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  v16 = (MEMORY[0x277D84F90] + 32);
  if (v9)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v17 = *(v11 + 16);
    sub_237EF8260();
    v21 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_237E641B8(v11, v18, v19, v20);
      v21 = v39;
    }

    while (1)
    {
      v22 = v17 < 1;
      if (v17 <= 0)
      {
        goto LABEL_11;
      }

      if (v17 > *(v21 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (v17 > *(v13 + 16))
      {
        goto LABEL_32;
      }

      v23 = *(v13 + 24 + 8 * v17);
      v24 = v23 - 1;
      if (__OFSUB__(v23, 1))
      {
        goto LABEL_33;
      }

      v25 = v21 + 8 * v17;
      v26 = *(v25 + 24);
      if (v26 < v24)
      {
        break;
      }

      *(v25 + 24) = 0;
      --v17;
    }

    *(v25 + 24) = v26 + 1;
LABEL_11:
    if (!v14)
    {
      v27 = v15[3];
      if (((v27 >> 1) + 0x4000000000000000) >= 0)
      {
        v28 = v27 & 0xFFFFFFFFFFFFFFFELL;
        if (v28 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD348, &unk_237F0B000);
        v30 = OUTLINED_FUNCTION_30();
        v31 = (_swift_stdlib_malloc_size(v30) - 32) / 8;
        v30[2] = v29;
        v30[3] = 2 * v31;
        v32 = (v30 + 4);
        v33 = v15[3];
        v34 = v33 >> 1;
        if (v15[2])
        {
          v35 = v15 + 4;
          v43 = v15;
          if (v30 != v15 || v32 >= &v15[v34 + 4])
          {
            v37 = v31;
            memmove(v30 + 4, v35, 8 * v34);
            v31 = v37;
          }

          v43[2] = 0;
        }

        v16 = (v32 + 8 * v34);
        v14 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - (v33 >> 1);

        v15 = v30;
        goto LABEL_25;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_25:
    v38 = __OFSUB__(v14--, 1);
    if (v38)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    *v16++ = v11;
    v11 = v21;
    if (!v22)
    {
      continue;
    }

    break;
  }

LABEL_27:

  v40 = v15[3];
  if (v40 < 2)
  {
LABEL_30:
    OUTLINED_FUNCTION_8_6();
  }

  else
  {
    v41 = v40 >> 1;
    v38 = __OFSUB__(v41, v14);
    v42 = v41 - v14;
    if (!v38)
    {
      v15[2] = v42;
      goto LABEL_30;
    }

LABEL_36:
    __break(1u);
  }
}

void sub_237DBA454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_12_37();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = sub_237DBA8D8(v12, v10, v8);
  v15 = v14;
  if (v14)
  {
    if (v14 <= 0)
    {
      v16 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
      v16 = OUTLINED_FUNCTION_30();
      v17 = _swift_stdlib_malloc_size(v16);
      v16[2] = v15;
      v16[3] = 2 * ((v17 - 32) / 8);
    }
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v18 = v16[3];

  if (v15 < 0)
  {
    goto LABEL_48;
  }

  v19 = v16 + 4;
  v20 = v18 >> 1;
  if (!v15)
  {
    goto LABEL_17;
  }

  v20 -= v15;
  do
  {
    v21 = v13 <= v11;
    if (v9 > 0)
    {
      v21 = v13 >= v11;
    }

    if (v21)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return;
    }

    v22 = v13 + v9;
    if (__OFADD__(v13, v9))
    {
      v22 = ((v13 + v9) >> 63) ^ 0x8000000000000000;
    }

    *v19++ = v13;
    v13 = v22;
    --v15;
  }

  while (v15);
  v13 = v22;
LABEL_17:
  v23 = (v9 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  v40 = v11;
  while (2)
  {
    v24 = v13 <= v11;
    if (v9 > 0)
    {
      v24 = v13 >= v11;
    }

    if (!v24)
    {
      v25 = v13 + v9;
      if (__OFADD__(v13, v9))
      {
        v25 = v23;
        if (!v20)
        {
          goto LABEL_26;
        }

        v25 = v23;
      }

      else if (!v20)
      {
LABEL_26:
        v26 = v16[3];
        if (((v26 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_47;
        }

        v27 = v23;
        v28 = v26 & 0xFFFFFFFFFFFFFFFELL;
        if (v28 <= 1)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
        v30 = OUTLINED_FUNCTION_30();
        v31 = (_swift_stdlib_malloc_size(v30) - 32) / 8;
        v30[2] = v29;
        v30[3] = 2 * v31;
        v32 = (v30 + 4);
        v33 = v16[3];
        v34 = v33 >> 1;
        if (v16[2])
        {
          if (v30 != v16 || v32 >= &v16[v34 + 4])
          {
            memmove(v30 + 4, v16 + 4, 8 * v34);
          }

          v16[2] = 0;
        }

        v19 = (v32 + 8 * v34);
        v20 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - (v33 >> 1);

        v16 = v30;
        v23 = v27;
        v11 = v40;
      }

      v36 = __OFSUB__(v20--, 1);
      if (v36)
      {
        __break(1u);
        goto LABEL_46;
      }

      *v19++ = v13;
      v13 = v25;
      continue;
    }

    break;
  }

  v37 = v16[3];
  if (v37 >= 2)
  {
    v38 = v37 >> 1;
    v36 = __OFSUB__(v38, v20);
    v39 = v38 - v20;
    if (v36)
    {
      goto LABEL_49;
    }

    v16[2] = v39;
  }

  OUTLINED_FUNCTION_8_6();
}

void *sub_237DBA688(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD418, &qword_237F03138);
    v7 = OUTLINED_FUNCTION_30();
    v8 = 2 * ((_swift_stdlib_malloc_size(v7) - 32) / 16);
    v7[2] = v6;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 24);
  }

  v10 = v7 + 4;
  v11 = v8 >> 1;
  if (v6)
  {
    v12 = 0;
    while (v4 != v12)
    {
      if (v5 == v12)
      {
        goto LABEL_40;
      }

      v13 = *(a2 + 32 + 8 * v12);
      v14 = v12 + 1;
      *v10 = *(a1 + 32 + 4 * v12);
      v10[1] = v13;
      v10 += 2;
      v12 = v14;
      if (v6 == v14)
      {
        v11 -= v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_13:
  v15 = a1 + 32;
  v16 = a2 + 32;
  v32 = a2 + 32;
  v33 = a1 + 32;
  while (v4 != v6)
  {
    if (v6 >= v4)
    {
      goto LABEL_41;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_42;
    }

    if (v5 == v6)
    {
      break;
    }

    if (v6 >= v5)
    {
      goto LABEL_43;
    }

    v17 = *(v15 + 4 * v6);
    v18 = *(v16 + 8 * v6);
    if (!v11)
    {
      v19 = v7[3];
      if (((v19 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_45;
      }

      v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
      if (v20 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD418, &qword_237F03138);
      v22 = OUTLINED_FUNCTION_30();
      v23 = (_swift_stdlib_malloc_size(v22) - 32) / 16;
      v22[2] = v21;
      v22[3] = 2 * v23;
      v24 = (v22 + 4);
      v25 = v7[3];
      v26 = v25 >> 1;
      if (v7[2])
      {
        if (v22 != v7 || v24 >= &v7[2 * v26 + 4])
        {
          memmove(v22 + 4, v7 + 4, 16 * v26);
        }

        v7[2] = 0;
      }

      v10 = (v24 + 16 * v26);
      v11 = (v23 & 0x7FFFFFFFFFFFFFFFLL) - (v25 >> 1);

      v7 = v22;
      v16 = v32;
      v15 = v33;
    }

    v28 = __OFSUB__(v11--, 1);
    if (v28)
    {
      goto LABEL_44;
    }

    *v10 = v17;
    v10[1] = v18;
    v10 += 2;
    ++v6;
  }

  v29 = v7[3];
  if (v29 < 2)
  {
    return v7;
  }

  v30 = v29 >> 1;
  v28 = __OFSUB__(v30, v11);
  v31 = v30 - v11;
  if (!v28)
  {
    v7[2] = v31;
    return v7;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_237DBA8D8(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13_32@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{

  return sub_237DB9524(v3, a2, a1, v2 + 8, a2);
}

uint64_t TemporalTransformer.export(to:)(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for CoreMLPackage(0);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  (*(v13 + 16))(v12 - v11, v2, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB05B0, &qword_237F0B378);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v20, &v22);
    v14 = v24;
    v15 = v25;
    __swift_project_boxed_opaque_existential_1(&v22, v24);
    (*(v15 + 8))(v14, v15);
    if (!v3)
    {
      sub_237E33BC0(a1);
      sub_237D0F8BC(v9);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v22);
  }

  else
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_237D0F854(v20);
    type metadata accessor for SerializationError(0);
    sub_237CA2D6C();
    swift_allocError();
    v18 = v17;
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_237EF9CF0();
    v19 = v23;
    *v18 = v22;
    v18[1] = v19;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t TemporalTransformer.export(to:metadata:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = v3;
  v31 = a1;
  v8 = type metadata accessor for CoreMLPackage(0);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = a2[8];
  (*(v16 + 16))(v14 - v13, v5, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB05B0, &qword_237F0B378);
  if (swift_dynamicCast())
  {
    sub_237C531B8(v25, &v27);
    v17 = v29;
    v18 = v30;
    __swift_project_boxed_opaque_existential_1(&v27, v29);
    (*(v18 + 8))(v17, v18);
    if (!v4)
    {
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF8260();
      sub_237EF7770();
      sub_237EF7800();
      sub_237EF77C0();
      sub_237EF77E0();
      v19 = sub_237EF7780();
      sub_237C9FB0C(v15, sub_237C9FE58, 0, v20);
      v19(v25, 0);
      sub_237E33BC0(v31);
      sub_237D0F8BC(v11);
    }

    return __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  else
  {
    v26 = 0;
    memset(v25, 0, sizeof(v25));
    sub_237D0F854(v25);
    type metadata accessor for SerializationError(0);
    sub_237CA2D6C();
    swift_allocError();
    v23 = v22;
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_237EF9CF0();
    v24 = v28;
    *v23 = v27;
    v23[1] = v24;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

int *sub_237DBAF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for MultivariateLinearRegressor.Model(0, a5, a6, a7);
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  result = type metadata accessor for LinearTimeSeriesForecaster.Model(0, a5, a6, a7);
  *(a8 + result[11]) = a2;
  *(a8 + result[12]) = a3;
  *(a8 + result[13]) = a4;
  return result;
}

uint64_t sub_237DBAFFC()
{
  OUTLINED_FUNCTION_2_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v1[7] = *(v2 + 16);
  v1[8] = *(v2 + 24);
  v6 = sub_237EF7E90();
  v1[9] = v6;
  OUTLINED_FUNCTION_6_1(v6);
  v1[10] = v7;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void *sub_237DBB0CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v2 = OUTLINED_FUNCTION_36_1(v1);
  *(v2 + 16) = xmmword_237F04760;
  result = sub_237EF7E20();
  if (!result[2])
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = result[4];

  *(v2 + 32) = v4;
  result = sub_237EF7E20();
  if (result[2] < 2uLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result[5];

  result = sub_237EF7E20();
  if (result[2] < 3uLL)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result[6];

  v7 = v5 * v6;
  if ((v5 * v6) >> 64 != (v5 * v6) >> 63)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = v0[8];
  v9 = v0[7];
  v10 = v0[5];
  *(v2 + 40) = v7;
  sub_237EF7E60();

  v11 = swift_task_alloc();
  v0[13] = v11;
  v12 = *(v10 + 32);
  v0[14] = v12;
  type metadata accessor for MultivariateLinearRegressor.Model(0, v9, v8, v12);
  *v11 = v0;
  v11[1] = sub_237DBB278;

  return MultivariateLinearRegressor.Model.applied(to:eventHandler:)();
}

uint64_t sub_237DBB278()
{
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v8 = v7;
  v3[15] = v0;

  v3[16] = *(v6 + 8);
  v3[17] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9 = OUTLINED_FUNCTION_9_9();
  v10(v9);
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_237DBB3E4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  v10 = *(v0 + 56);
  *(v6 + 16) = v10;
  *(v6 + 32) = v2;
  *(v6 + 40) = v5;
  OUTLINED_FUNCTION_0_18();
  WitnessTable = swift_getWitnessTable();
  sub_237D14E4C(sub_237DBD68C, v6, v4, v10, WitnessTable);

  v1(v3, v4);

  OUTLINED_FUNCTION_3_0();

  return v8();
}

uint64_t sub_237DBB4F4()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t LinearTimeSeriesForecaster.Model.inputWindowSize.getter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_24_23(a1);
  result = MultivariateLinearRegressor.Model.inputSize.getter(v3);
  v5 = *(v1 + *(a1 + 44));
  if (v5)
  {
    if (result != 0x8000000000000000 || v5 != -1)
    {
      result /= v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t LinearTimeSeriesForecaster.Model.forecastWindowSize.getter(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_24_23(a1);
  result = MultivariateLinearRegressor.Model.outputSize.getter(v3);
  v5 = *(v1 + *(a1 + 48));
  if (v5)
  {
    if (result != 0x8000000000000000 || v5 != -1)
    {
      result /= v5;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237DBB670(void *a1, uint64_t (*a2)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_24_23(a1);

  return a2(v2);
}

uint64_t LinearTimeSeriesForecaster.Model.applied<A>(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[31] = a6;
  v7[32] = v6;
  v7[29] = a4;
  v7[30] = a5;
  v7[27] = a2;
  v7[28] = a3;
  v7[26] = a1;
  v9 = *(a4 + 16);
  v7[33] = v9;
  v10 = *(a4 + 24);
  v7[34] = v10;
  v7[35] = type metadata accessor for SlidingWindows(255, v9, v10, a4);
  OUTLINED_FUNCTION_5_66();
  v7[36] = swift_getWitnessTable();
  v11 = sub_237EF9680();
  v7[37] = v11;
  OUTLINED_FUNCTION_6_1(v11);
  v7[38] = v12;
  v7[39] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_16_37();
  v7[40] = v13;
  v7[41] = OUTLINED_FUNCTION_27_0();
  v14 = sub_237EF7EE0();
  OUTLINED_FUNCTION_18(v14);
  v7[42] = OUTLINED_FUNCTION_27_0();
  v7[43] = sub_237EF7E90();
  v7[44] = swift_getTupleTypeMetadata2();
  v15 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v15);
  v7[45] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_16_37();
  v7[46] = v16;
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v7[51] = swift_task_alloc();
  v7[52] = *(a5 - 8);
  v7[53] = OUTLINED_FUNCTION_27_0();
  v17 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_237DBB940()
{
  v50 = *(v0 + 352);
  v51 = *(v0 + 368);
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  (*(*(v0 + 416) + 16))(*(v0 + 424), *(v0 + 208), *(v0 + 240));
  v3 = sub_237EF8A90();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v5 = OUTLINED_FUNCTION_36_1(v4);
  *(v5 + 16) = xmmword_237F04760;
  *(v5 + 32) = sub_237EF8A00();
  v49 = *(v1 + *(v2 + 44));
  *(v5 + 40) = v49;
  sub_237D14E78(v5);
  *(v0 + 184) = 0;
  *(v0 + 192) = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAF7F8, &qword_237F09CD0);
  v7 = sub_237EF8A60();
  *(v0 + 432) = v7;
  v8 = sub_237CE32D8();
  WitnessTable = swift_getWitnessTable();
  sub_237EFA000();

  *(v0 + 168) = *(v0 + 152);
  *(v0 + 176) = *(v0 + 160);
  *(v0 + 56) = v6;
  v53 = v8;
  v54 = v7;
  *(v0 + 64) = v7;
  *(v0 + 72) = v8;
  *(v0 + 80) = WitnessTable;
  sub_237EF9380();
  sub_237EF9350();
  v10 = (v51 + 32);
  v52 = (v51 + 8);
  while (1)
  {
    v11 = *(v0 + 352);
    v12 = *(v0 + 360);
    *(v0 + 88) = v6;
    *(v0 + 96) = v54;
    *(v0 + 104) = v53;
    *(v0 + 112) = WitnessTable;
    sub_237EF9370();
    sub_237EF9360();
    if (__swift_getEnumTagSinglePayload(v12, 1, v11) == 1)
    {
      break;
    }

    (*v10)(*(v0 + 400), *(v0 + 360) + *(v50 + 48), *(v0 + 344));
    v13 = sub_237EF7E20();
    if (*(v13 + 16) != 1 || *(v13 + 32) != v49)
    {
      v17 = *(v0 + 400);
      v16 = *(v0 + 408);
      v18 = *(v0 + 344);

      v19 = sub_237EF7E20();
      sub_237C84150();
      swift_allocError();
      *v20 = v19;
      *(v20 + 8) = 0xD000000000000030;
      *(v20 + 16) = 0x8000000237EFFB90;
      *(v20 + 24) = 0;
      *(v20 + 32) = 6;
      swift_willThrow();
      v21 = *v52;
      (*v52)(v17, v18);
      v21(v16, v18);
      OUTLINED_FUNCTION_14_41();

      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_30_24();

      __asm { BRAA            X1, X16 }
    }

    v14 = *(v0 + 400);
    v15 = *(v0 + 344);

    *(v0 + 40) = v6;
    *(v0 + 48) = sub_237CE3364();
    *(v0 + 16) = 0;
    OUTLINED_FUNCTION_0_18();
    swift_getWitnessTable();
    sub_237EF7F90();
    sub_237EF7EA0();
    (*v52)(v14, v15);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v22 = *(v0 + 344);
  v23 = *(v0 + 328);
  v24 = *(v0 + 256);
  v25 = *(v0 + 232);

  v26 = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v25);
  sub_237C83E40(v26, *(v24 + *(v25 + 52)), v22, v23);
  v30 = *(v0 + 320);
  v29 = *(v0 + 328);
  v31 = *(v0 + 312);
  v32 = *(v0 + 296);
  v33 = *(v0 + 280);
  *(v0 + 200) = sub_237EF8110();
  sub_237EF8E20();
  sub_237EF8970();
  (*(v30 + 16))(v31, v29, v33);
  *(v0 + 148) = *(v32 + 36);
  v34 = SlidingWindows.startIndex.getter();
  if (v34 == SlidingWindows.endIndex.getter(*(v0 + 280)))
  {
    OUTLINED_FUNCTION_26_20();
    v35 = *(v0 + 368);
    v36 = *(v0 + 344);
    v38 = OUTLINED_FUNCTION_13_33(v37);
    v39(v38);
    (*(v0 + 24))(v29, v10);
    (*(v35 + 8))(v32, v36);

    OUTLINED_FUNCTION_28_20();
    OUTLINED_FUNCTION_30_24();

    __asm { BRAA            X2, X16 }
  }

  v42 = OUTLINED_FUNCTION_21_30();
  SlidingWindows.subscript.getter(v42, v43);
  v44 = OUTLINED_FUNCTION_21_30();
  *(v0 + 440) = SlidingWindows.index(after:)(v44);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  *(v0 + 448) = v45;
  *v45 = v46;
  OUTLINED_FUNCTION_1_79(v45);
  OUTLINED_FUNCTION_30_24();

  return LinearTimeSeriesForecaster.Model.applied(toWindow:eventHandler:)();
}

uint64_t sub_237DBBF94()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v6 = v5;
  *(v3 + 456) = v0;

  v7 = *(v3 + 392);
  if (v0)
  {
    v8 = *(v3 + 368);
    v9 = *(v3 + 344);
    *(*(v3 + 312) + *(v3 + 148)) = *(v3 + 440);
    v10 = *(v8 + 8);
    *(v3 + 480) = v10;
    *(v3 + 488) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v9);
  }

  else
  {
    v11 = *(v3 + 368);
    v12 = *(v3 + 344);
    v13 = *(v11 + 8);
    *(v3 + 464) = v13;
    *(v3 + 472) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v7, v12);
  }

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_237DBC0F8()
{
  v3 = v0[58];
  v2 = v0[59];
  v4 = v0[54];
  v5 = v0[48];
  v6 = v0[43];
  (*(v0[46] + 16))(v0[47], v5, v6);
  OUTLINED_FUNCTION_21_30();
  sub_237EF8A20();
  (v3)(v5, v6);
  v7 = v0[55];
  if (v7 == SlidingWindows.endIndex.getter(v0[35]))
  {
    OUTLINED_FUNCTION_26_20();
    v8 = v0[46];
    v9 = v0[43];
    v11 = OUTLINED_FUNCTION_13_33(v10);
    v12(v11);
    (*(v3 + 8))(v4, v1);
    (*(v8 + 8))(v2, v9);

    OUTLINED_FUNCTION_28_20();
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X2, X16 }
  }

  v15 = OUTLINED_FUNCTION_21_30();
  SlidingWindows.subscript.getter(v15, v16);
  v17 = OUTLINED_FUNCTION_21_30();
  v0[55] = SlidingWindows.index(after:)(v17);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[56] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_1_79(v18);
  OUTLINED_FUNCTION_58();

  return LinearTimeSeriesForecaster.Model.applied(toWindow:eventHandler:)();
}

uint64_t sub_237DBC2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  v13 = v12[60];
  v14 = v12[51];
  v15 = v12[43];
  (*(v12[38] + 8))(v12[39], v12[37]);
  v16 = OUTLINED_FUNCTION_9_9();
  v17(v16);
  v13(v14, v15);
  v27 = v12[57];
  OUTLINED_FUNCTION_14_41();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, a10, a11, a12);
}

uint64_t LinearTimeSeriesForecaster.Model.applied(toWindow:eventHandler:)()
{
  OUTLINED_FUNCTION_2_0();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v1[14] = *(v2 + 16);
  v1[15] = *(v2 + 24);
  v7 = sub_237EF7E90();
  v1[16] = v7;
  OUTLINED_FUNCTION_6_1(v7);
  v1[17] = v8;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_237DBC4B0()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = type metadata accessor for MultivariateLinearRegressor.Model(0, v0[14], v0[15], *(v2 + 32));
  v4 = MultivariateLinearRegressor.Model.inputSize.getter(v3);
  v5 = *(v1 + *(v2 + 44));
  result = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v2);
  if ((v5 * result) >> 64 != (v5 * result) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v4 != v5 * result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = *(sub_237EF7E20() + 16);

  if (v7 == 2)
  {
    v8 = v0[12];
    v9 = sub_237EF7E20();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
    v0[20] = v10;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237F04760;
    *(inited + 32) = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v8);
    *(inited + 40) = v5;
    v12 = sub_237C60C7C(v9, inited);

    swift_setDeallocating();
    if (v12)
    {
      v13 = v0[12];
      v14 = OUTLINED_FUNCTION_36_1(v10);
      *(v14 + 16) = xmmword_237F04760;
      *(v14 + 32) = 1;
      result = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v13);
      if ((v5 * result) >> 64 == (v5 * result) >> 63)
      {
        *(v14 + 40) = v5 * result;
        sub_237EF7E60();

        swift_task_alloc();
        OUTLINED_FUNCTION_30_0();
        v0[21] = v15;
        *v15 = v16;
        v15[1] = sub_237DBC758;

        return MultivariateLinearRegressor.Model.applied(to:eventHandler:)();
      }

LABEL_14:
      __break(1u);
      return result;
    }
  }

  v17 = sub_237EF7E20();
  sub_237C84150();
  v18 = swift_allocError();
  *v19 = v17;
  v19[1] = 0xD000000000000033;
  OUTLINED_FUNCTION_31_16(v18, v19);

  OUTLINED_FUNCTION_3_0();

  return v20();
}

uint64_t sub_237DBC758()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DBC854()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[16];
  v5 = v0[12];
  v4 = v0[13];
  v6 = OUTLINED_FUNCTION_36_1(v0[20]);
  *(v6 + 16) = xmmword_237F04760;
  *(v6 + 32) = LinearTimeSeriesForecaster.Model.forecastWindowSize.getter(v5);
  *(v6 + 40) = *(v4 + *(v5 + 48));
  sub_237EF7E60();

  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_9_9();
  v7(v8);
  (v7)(v1, v3);

  OUTLINED_FUNCTION_3_0();

  return v9();
}

uint64_t sub_237DBC958()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[17] + 8))(v0[19], v0[16]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t LinearTimeSeriesForecaster.Model.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = *(a5 + 16);
  v6[17] = v7;
  v8 = *(a5 + 24);
  v6[18] = v8;
  v9 = sub_237EF7EE0();
  OUTLINED_FUNCTION_18(v9);
  v6[19] = OUTLINED_FUNCTION_27_0();
  v10 = sub_237EF7E90();
  v6[20] = v10;
  v6[21] = *(v10 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_getTupleTypeMetadata2();
  v11 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v11);
  v6[25] = OUTLINED_FUNCTION_27_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEAF7F8, &qword_237F09CD0);
  v6[26] = v12;
  v14 = type metadata accessor for SlidingWindows(255, v7, v8, v13);
  v6[27] = v14;
  v15 = sub_237CE32D8();
  v6[28] = v15;
  WitnessTable = swift_getWitnessTable();
  v6[29] = WitnessTable;
  v6[2] = v12;
  v6[3] = v14;
  v6[4] = v15;
  v6[5] = WitnessTable;
  v17 = sub_237EF9380();
  v6[30] = v17;
  OUTLINED_FUNCTION_18(v17);
  v6[31] = OUTLINED_FUNCTION_27_0();
  v6[6] = v12;
  v6[7] = v14;
  v6[8] = v15;
  v6[9] = WitnessTable;
  v18 = sub_237EF9370();
  v6[32] = v18;
  OUTLINED_FUNCTION_6_1(v18);
  v6[33] = v19;
  v6[34] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_16_37();
  v6[35] = v20;
  v6[36] = OUTLINED_FUNCTION_27_0();
  v21 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_237DBCC68()
{
  v1 = *(sub_237EF7E20() + 16);

  if (v1 != 2)
  {
    goto LABEL_6;
  }

  result = sub_237EF7E20();
  if (*(result + 16) < 2uLL)
  {
    __break(1u);
    return result;
  }

  v3 = v0[15];
  v4 = v0[16];
  v5 = *(result + 40);

  if (v5 != *(v4 + *(v3 + 44)))
  {
LABEL_6:
    v20 = sub_237EF7E20();
    sub_237C84150();
    v21 = swift_allocError();
    *v22 = v20;
    v22[1] = 0xD000000000000025;
    OUTLINED_FUNCTION_31_16(v21, v22);
    OUTLINED_FUNCTION_17_35();

    OUTLINED_FUNCTION_3_0();
LABEL_7:
    OUTLINED_FUNCTION_58();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[36];
  v7 = v0[20];
  v9 = v0[15];
  v8 = v0[16];
  v10 = LinearTimeSeriesForecaster.Model.inputWindowSize.getter(v9);
  sub_237C83E40(v10, *(v8 + *(v9 + 52)), v7, v6);
  v11 = v0[31];
  v12 = v0[17];
  v14 = v0[15];
  v13 = v0[16];
  v15 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_237F08A50;
  OUTLINED_FUNCTION_5_66();
  swift_getWitnessTable();
  *(v16 + 32) = sub_237EF8E20();
  *(v16 + 40) = LinearTimeSeriesForecaster.Model.forecastWindowSize.getter(v14);
  *(v16 + 48) = *(v13 + *(v14 + 48));
  v17 = OUTLINED_FUNCTION_9_9();
  sub_237D14E78(v17);
  v0[10] = 0;
  sub_237EFA000();
  sub_237EF9350();
  OUTLINED_FUNCTION_32_16();
  if (__swift_getEnumTagSinglePayload(v11, 1, v16) == 1)
  {
    v18 = OUTLINED_FUNCTION_6_53();
    v19(v18);
    (*(v15 + 8))(v11, v12);

    OUTLINED_FUNCTION_3_0();
    goto LABEL_7;
  }

  v25 = OUTLINED_FUNCTION_10_44();
  v26(v25);
  swift_task_alloc();
  OUTLINED_FUNCTION_30_0();
  v0[38] = v27;
  *v27 = v28;
  OUTLINED_FUNCTION_2_71(v27);
  OUTLINED_FUNCTION_58();

  return LinearTimeSeriesForecaster.Model.applied(toWindow:eventHandler:)();
}

uint64_t sub_237DBCF9C()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_11_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_237DBD098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  v13 = v12[26];
  v15 = v12[22];
  v14 = v12[23];
  v16 = v12[20];
  v17 = v12[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEADE38, &qword_237F093D0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_237F04760;
  *(v18 + 56) = v13;
  v19 = sub_237CE3364();
  *(v18 + 32) = 0;
  *(v18 + 96) = v13;
  *(v18 + 104) = v19;
  *(v18 + 64) = v19;
  *(v18 + 72) = 0;
  OUTLINED_FUNCTION_0_18();
  swift_getWitnessTable();
  sub_237EF7FA0();

  sub_237EF7EA0();
  v22 = *(v17 + 8);
  v21 = v17 + 8;
  v20 = v22;
  v22(v15, v16);
  v22(v14, v16);
  OUTLINED_FUNCTION_32_16();
  if (__swift_getEnumTagSinglePayload(v14, 1, v16) == 1)
  {
    v23 = OUTLINED_FUNCTION_6_53();
    v24(v23);
    (*(v21 + 8))(v20, v15);

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_45();

    return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
  }

  else
  {
    v34 = OUTLINED_FUNCTION_10_44();
    v35(v34);
    swift_task_alloc();
    OUTLINED_FUNCTION_30_0();
    v12[38] = v36;
    *v36 = v37;
    OUTLINED_FUNCTION_2_71(v36);
    OUTLINED_FUNCTION_45();

    return LinearTimeSeriesForecaster.Model.applied(toWindow:eventHandler:)();
  }
}

uint64_t sub_237DBD298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46();
  v13 = v12[35];
  v30 = v12[36];
  v15 = v12[33];
  v14 = v12[34];
  v16 = v12[32];
  v17 = v12[27];
  v18 = v12[20];
  v19 = v12[11];
  v20 = *(v12[21] + 8);
  v20(v12[23], v18);
  (*(v15 + 8))(v14, v16);
  v20(v19, v18);
  (*(v13 + 8))(v30, v17);
  OUTLINED_FUNCTION_17_35();

  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_45();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10, a11, a12);
}

uint64_t sub_237DBD3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12[2] = a6;
  v12[3] = a7;
  v12[4] = a8;
  v12[5] = a1;
  v12[6] = a2;
  v12[7] = a3;
  v12[8] = a4;
  v9 = sub_237EF7E90();
  WitnessTable = swift_getWitnessTable();
  return sub_237D14E4C(sub_237DBD6AC, v12, v9, a6, WitnessTable);
}

void sub_237DBD45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_237EF8550();
  swift_getWitnessTable();
  meanSquaredError<A, B, C>(_:_:)();
}

uint64_t sub_237DBD504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C6A904;

  return LinearTimeSeriesForecaster.Model.applied(to:eventHandler:)(a1, a2, a3, a4, a5);
}

uint64_t sub_237DBD5CC(void *a1)
{
  result = type metadata accessor for MultivariateLinearRegressor.Model(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_44()
{
  result = *(v0 + 184);
  *(v0 + 296) = **(v0 + 200);
  return result;
}

uint64_t OUTLINED_FUNCTION_13_33@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 312);
  *(v3 + a1) = v2;
  return v3;
}

uint64_t OUTLINED_FUNCTION_14_41()
{
}

uint64_t OUTLINED_FUNCTION_17_35()
{
}

uint64_t OUTLINED_FUNCTION_24_23(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];

  return type metadata accessor for MultivariateLinearRegressor.Model(0, v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_31_16(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = v2;
  *(a2 + 24) = 0;
  *(a2 + 32) = 6;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_32_16()
{

  return sub_237EF9360();
}

uint64_t sub_237DBD8DC(uint64_t result, void *__dst, uint64_t a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return v3;
  }

  if (v3 <= a3)
  {
    memcpy(__dst, (result + 32), 8 * v3);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t LogisticRegressionClassifierModel.featureCount.getter()
{
  v1 = v0[1];
  v2 = *(*v0 + 16);
  if (v1 == 2)
  {
    return v2 - 1;
  }

  v3 = __OFSUB__(v1, 1);
  v4 = v1 - 1;
  if (v3)
  {
    __break(1u);
  }

  else if (v4)
  {
    v2 /= v4;
    return v2 - 1;
  }

  __break(1u);
  return result;
}

uint64_t LogisticRegressionClassifierModel.coefficients.getter(_OWORD *a1)
{
  v15 = *v1;
  v2 = a1[2];
  v10 = a1[1];
  v11 = v2;
  v3 = a1[4];
  v12 = a1[3];
  v13 = v3;
  v14 = v10;

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB02F8, &qword_237F0F350);
  v5 = sub_237C96710(&qword_280C8CCD8, &qword_27DEB02F8, &qword_237F0F350, MEMORY[0x277D84280]);
  sub_237C9339C(sub_237DBDA48, &v9, v4, v10, MEMORY[0x277D84A98], v5);
  v7 = v6;

  return v7;
}

void *sub_237DBDA84@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = memcpy(a4, __src, 0x59uLL);
  a4[12] = a2;
  a4[13] = a3;
  return result;
}

void LogisticRegressionClassifierModel.init<A>(coefficients:labels:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = sub_237E5E16C(a2, a4, a8, a12);
  v20 = v19;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v34 = a10;
  v35 = a11;
  v36 = a12;
  v37 = a13;
  sub_237EF8260();
  sub_237EF8260();
  v22 = sub_237C8FFEC(sub_237DBDD24, v27, a5, MEMORY[0x277D839F8], MEMORY[0x277D84A98], a13, MEMORY[0x277D84AC0], v21);
  v23 = sub_237E5E170(v18, v20, a4, a8, a12);

  (*(*(a5 - 8) + 8))(a1, a5);
  *a9 = v22;
  a9[1] = v23;
  OUTLINED_FUNCTION_5_67();
  a9[12] = v18;
  a9[13] = v20;
}

double sub_237DBDC30(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_237C65348();
  sub_237EF8190();
  return result;
}

double sub_237DBDD68@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26 = a4;
  v16 = *(a5 - 8);
  v17 = MEMORY[0x28223BE20](a1);
  a6[12] = v19;
  a6[13] = v20;
  (*(v16 + 16))(&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v21, v17);
  sub_237EF8260();
  sub_237EF8260();
  v22 = sub_237EF8A90();
  v23 = sub_237E5E170(a2, a3, v26, a7, a10);

  (*(v16 + 8))(a1, a5);
  *a6 = v22;
  a6[1] = v23;
  return OUTLINED_FUNCTION_5_67();
}

uint64_t LogisticRegressionClassifierModel.applied(to:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[20] = a4;
  v6[21] = a5;
  v6[18] = a2;
  v6[19] = a3;
  v6[17] = a1;
  memcpy(v6 + 2, v5, 0x70uLL);

  return MEMORY[0x2822009F8](sub_237DBDF7C, 0, 0);
}

void sub_237DBDF7C()
{
  v28 = v0;
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = sub_237EF7E90();
  v5 = *(sub_237EF7E20() + 16);

  v6 = sub_237EF7E20();
  v7 = v6;
  if (v5 == 1)
  {
    if (!*(v6 + 16))
    {

      __break(1u);
      JUMPOUT(0x2383E2DF0);
    }

    v8 = *(v6 + 32);

    if (v8 == LogisticRegressionClassifierModel.featureCount.getter())
    {
      isStackAllocationSafe = LogisticRegressionClassifierModel.featureCount.getter();
      if (isStackAllocationSafe < -1)
      {
        __break(1u);
      }

      else if (!((isStackAllocationSafe + 0x1000000000000001) >> 61))
      {
        v10 = isStackAllocationSafe + 1;
        if (8 * (isStackAllocationSafe + 1) <= 1024 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), isStackAllocationSafe))
        {
          MEMORY[0x28223BE20](isStackAllocationSafe);
          sub_237DBE404(&v24 - v11, v10, (v0 + 16), v2, v12[3], &v25, v3, v12[5], v12[6], v12[7], v12[8], v12[9]);
          **(v0 + 136) = v25;
          goto LABEL_11;
        }

        v22 = *(v0 + 168);
        v24 = *(v0 + 160);
        v23 = *(v0 + 136);
        v4 = swift_slowAlloc();
        sub_237DBE404(v4, v10, (v0 + 16), v2, v22[3], v23, v3, v22[5], v22[6], v22[7], v22[8], v22[9]);
        goto LABEL_18;
      }

      __break(1u);
LABEL_18:
      MEMORY[0x2383E2DF0](v4, -1, -1);
LABEL_11:
      OUTLINED_FUNCTION_45();

      __asm { BRAA            X1, X16 }
    }

    v7 = sub_237EF7E20();
    sub_237EF9330();

    v25 = 0xD00000000000001ELL;
    v26 = 0x8000000237EFD610;
    *(v0 + 128) = LogisticRegressionClassifierModel.featureCount.getter();
    v15 = sub_237EF9AB0();
    MEMORY[0x2383E0710](v15);

    MEMORY[0x2383E0710](0x6F6720747562205DLL, 0xEA00000000002074);
    sub_237EF7E20();
    v16 = MEMORY[0x2383E0A10]();
    v18 = v17;

    MEMORY[0x2383E0710](v16, v18);

    MEMORY[0x2383E0710](46, 0xE100000000000000);
    v14 = v25;
    v13 = v26;
  }

  else
  {
    v13 = 0x8000000237EFD5E0;
    v14 = 0xD000000000000024;
  }

  sub_237C84150();
  swift_allocError();
  *v19 = v7;
  *(v19 + 8) = v14;
  *(v19 + 16) = v13;
  *(v19 + 24) = 0;
  *(v19 + 32) = 6;
  swift_willThrow();
  goto LABEL_11;
}

uint64_t sub_237DBE404@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v43 = a5;
  v35 = a1;
  __src = a3;
  v34 = a2;
  v32 = a6;
  v39 = a12;
  v38 = a8;
  v37 = a7;
  sub_237EF7E90();
  swift_getWitnessTable();
  __dst[0] = sub_237EF7F50();
  v40[2] = a4;
  v40[3] = v43;
  v40[4] = a7;
  v40[5] = a8;
  v40[6] = a9;
  v40[7] = a10;
  v40[8] = a11;
  v40[9] = a12;
  v13 = a4;
  v14 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237DBF8DC, v40, v14, MEMORY[0x277D839F8], MEMORY[0x277D84A98], WitnessTable);
  v17 = v16;
  v28[12] = v33;
  v18 = v34;

  v19 = v35;
  sub_237DBD8DC(v17, v35, v34);

  v20 = __src;
  memcpy(__dst, __src, 0x70uLL);
  v29 = v13;
  v41[0] = v13;
  v41[1] = v43;
  v41[2] = a7;
  v41[3] = a8;
  v30 = a9;
  v31 = a10;
  v41[4] = a9;
  v41[5] = a10;
  v33 = a11;
  v41[6] = a11;
  v41[7] = a12;
  type metadata accessor for LogisticRegressionClassifierModel(0, v41);
  result = LogisticRegressionClassifierModel.featureCount.getter();
  *(v35 + result) = 0x3FF0000000000000;
  if (v19)
  {
    v22 = v20;
    memcpy(__dst, v20, 0x59uLL);
    v23 = __dst[0];
    v24 = *(__dst[0] + 16);
    if (__dst[1] == 2)
    {
      sub_237D4D938(__dst, v41);
      sub_237D4DDAC(v19, v18, 1, v23 + 32, v24, 1, v41);
    }

    else
    {
      sub_237D4D938(__dst, v41);
      sub_237D4E168(v24, __dst, v19, 1, v41);
    }

    v25 = sub_237CC9A9C(__dst);
    MEMORY[0x28223BE20](v25);
    v26 = v43;
    v28[2] = v29;
    v28[3] = v43;
    v28[4] = v37;
    v28[5] = v38;
    v28[6] = v30;
    v28[7] = v31;
    v28[8] = v33;
    v28[9] = v39;
    v28[10] = v22;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD428, &qword_237F03140);
    ClassificationDistribution.map<A>(_:)(sub_237DBF914, v28, v27, v26, v39, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_237DBE728(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  sub_237C65348();
  sub_237EF8190();
  return result;
}

uint64_t sub_237DBE81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10)
{
  v15 = sub_237EF90F0();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v20 - v16;
  v18 = *(a1 + 8);
  sub_237E5E174(*a1, *(a2 + 96), *(a2 + 104), a4, v20 - v16);
  result = __swift_getEnumTagSinglePayload(v17, 1, a4);
  if (result != 1)
  {
    return Classification.init(label:probability:)(v17, a4, a10, x8_0, v18);
  }

  __break(1u);
  return result;
}

void sub_237DBE914()
{
  OUTLINED_FUNCTION_13_4();
  v50 = v1;
  v48 = v2;
  v5 = v3[2];
  v4 = v3[3];
  v6 = v3[5];
  v45 = v3[4];
  v46 = v5;
  v44 = v6;
  v7 = v3[7];
  v53 = v3[6];
  v54 = v4;
  v43 = v7;
  v8 = v3[9];
  v55 = v3[8];
  *&v56 = v5;
  *(&v56 + 1) = v4;
  v57 = v45;
  v58 = v6;
  v59 = v53;
  v60 = v7;
  v61 = v55;
  v62 = v8;
  v47 = type metadata accessor for LogisticRegressionClassifierModel.Storage(0, &v56);
  OUTLINED_FUNCTION_1();
  v49 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v42 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  v21 = *v0;
  v40 = *(v0 + 6);
  *&v56 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_237F03530;
  *(v22 + 32) = *(v21 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB02F8, &qword_237F0F350);
  sub_237C96710(&qword_280C8CCE0, &qword_27DEB02F8, &qword_237F0F350, MEMORY[0x277D84268]);
  sub_237EF7E40();
  v51 = v14;
  v52 = v12;
  (*(v14 + 16))(v17, v20, v12);
  v41 = v8;
  v39 = v8;
  v23 = v48;
  v24 = v42;
  sub_237DBED00(v17, v46, v54, v45, v44, v53, v43, v55, v42, v39);
  v25 = *(v23 + 24);
  v26 = *(v23 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v23, v25);
  v27 = *(v26 + 8);
  v28 = v47;
  WitnessTable = swift_getWitnessTable();
  v30 = v50;
  v27(v24, v28, WitnessTable, v25, v26);
  v31 = OUTLINED_FUNCTION_7_24();
  v32(v31);
  if (v30)
  {
    (*(v51 + 8))(v20, v52);
  }

  else
  {
    v56 = v40;
    v33 = *(v23 + 24);
    v34 = *(v23 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v23, v33);
    v35 = v20;
    v36 = *(v34 + 8);
    v37 = type metadata accessor for LabelEncoder(0, v54, v53, v41);
    v38 = swift_getWitnessTable();
    v36(&v56, v37, v38, v33, v34);
    (*(v51 + 8))(v35, v52);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DBED00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = 0;
  *(a9 + 1) = 0;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a7;
  v15[6] = a8;
  v15[7] = a10;
  v12 = *(type metadata accessor for LogisticRegressionClassifierModel.Storage(0, v15) + 84);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  return (*(*(v13 - 8) + 32))(&a9[v12], a1, v13);
}

void sub_237DBEDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_13_4();
  v73 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v65[0] = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  OUTLINED_FUNCTION_1();
  v71 = v40;
  v72 = v39;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v41);
  v69 = v33;
  v70 = v65 - v42;
  v74 = v35;
  v75 = v33;
  v76 = v31;
  v77 = v29;
  v67 = a21;
  v68 = v27;
  v78 = v27;
  v79 = v25;
  v65[1] = v25;
  v80 = v23;
  v81 = a21;
  v43 = type metadata accessor for LogisticRegressionClassifierModel.Storage(0, &v74);
  OUTLINED_FUNCTION_1();
  v66 = v44;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v45);
  v47 = v65 - v46;
  v49 = *(v37 + 24);
  v48 = *(v37 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v37, v49);
  v50 = *(v48 + 8);
  WitnessTable = swift_getWitnessTable();
  v52 = v73;
  v50(v43, v43, WitnessTable, v49, v48);
  if (!v52)
  {
    (*(v71 + 16))(v70, &v47[*(v43 + 84)], v72);
    v53 = type metadata accessor for LabelEncoder(0, v69, v68, v67);
    v54 = *(v37 + 24);
    v55 = *(v37 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v37, v54);
    v56 = *(v55 + 8);
    v57 = swift_getWitnessTable();
    v56(&v74, v53, v53, v57, v54, v55);
    v58 = v75;
    v73 = v74;
    sub_237C96710(qword_280C8CD78, &qword_27DEAEA60, &unk_237F07350, MEMORY[0x277CBFD28]);
    v59 = v72;
    v60 = v70;
    v74 = sub_237EF7F50();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAECA8, &qword_237F15D00);
    v62 = sub_237C96710(&qword_280C8CD38, &qword_27DEAECA8, &qword_237F15D00, MEMORY[0x277D83970]);
    sub_237DBDD68(&v74, v73, v58, v69, v61, v65[0], v68, v63, v64, v67, v62);
    (*(v71 + 8))(v60, v59);
    (*(v66 + 8))(0, v43);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DBF124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_237C5FFA4;

  return LogisticRegressionClassifierModel.applied(to:eventHandler:)(a1, a2, a3, a4, a5);
}

void sub_237DBF1EC()
{
  OUTLINED_FUNCTION_13_4();
  v14 = v0;
  v3 = v2;
  v5 = v4[2];
  v15[0] = v4[1];
  v15[1] = v5;
  v6 = v4[4];
  v15[2] = v4[3];
  v15[3] = v6;
  type metadata accessor for LogisticRegressionClassifierModel.Storage.CodingKeys(255, v15);
  OUTLINED_FUNCTION_1_80();
  swift_getWitnessTable();
  v7 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v13 - v11;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_237EFA1B0();
  LOBYTE(v15[0]) = 0;
  sub_237EF99D0();
  if (!v1)
  {
    LOBYTE(v15[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
    sub_237D0A15C(&qword_280C8CD70, MEMORY[0x277D83A08], MEMORY[0x277CBFD38]);
    sub_237EF9A70();
  }

  (*(v9 + 8))(v12, v7);
  OUTLINED_FUNCTION_12_6();
}

void sub_237DBF3B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_13_4();
  v66 = v22;
  v67 = v21;
  v24 = v23;
  v76 = v23;
  v25 = v22;
  v27 = v26;
  v65 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v60 = v38;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  OUTLINED_FUNCTION_1();
  v59 = v39;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v40);
  v62 = &v58 - v41;
  v68 = v35;
  v69 = v33;
  v70 = v31;
  v71 = v29;
  v72 = v27;
  v73 = v25;
  v74 = v24;
  v75 = a21;
  type metadata accessor for LogisticRegressionClassifierModel.Storage.CodingKeys(255, &v68);
  OUTLINED_FUNCTION_1_80();
  swift_getWitnessTable();
  v64 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v61 = v42;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v43);
  v68 = v35;
  v69 = v33;
  v70 = v31;
  v71 = v29;
  v72 = v65;
  v73 = v66;
  v74 = v76;
  v75 = a21;
  v44 = type metadata accessor for LogisticRegressionClassifierModel.Storage(0, &v68);
  OUTLINED_FUNCTION_1();
  v66 = v45;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v46);
  v48 = (&v58 - v47);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  v49 = v67;
  sub_237EFA190();
  if (v49)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v50 = v48;
    v67 = v44;
    v51 = v62;
    v52 = v63;
    LOBYTE(v68) = 0;
    *v50 = sub_237EF98D0();
    v50[1] = v53;
    LOBYTE(v68) = 1;
    sub_237D0A15C(&qword_280C8CD68, MEMORY[0x277D83A30], MEMORY[0x277CBFD48]);
    sub_237EF9970();
    v54 = OUTLINED_FUNCTION_3_35();
    v55(v54);
    v56 = v67;
    (*(v59 + 32))(v50 + *(v67 + 84), v51, v52);
    v57 = v66;
    (*(v66 + 16))(v60, v50, v56);
    __swift_destroy_boxed_opaque_existential_1(v37);
    (*(v57 + 8))(v50, v56);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DBF73C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237DBF790(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_237DBF834(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237DBF870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_237DBF98C(_BYTE *result, unsigned int a2, unsigned int a3)
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

double OUTLINED_FUNCTION_5_67()
{
  result = 0.0;
  v0[1] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[4] = 0u;
  *(v0 + 73) = 0u;
  return result;
}

uint64_t sub_237DBFAD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237DBFCA0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_237DBFF44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  return sub_237DC00D0(v18, v14, a2, a3, a4, a5, a6);
}

uint64_t sub_237DC00D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ComposedRandomTransformer(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

void sub_237DC0198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9;
  v9[8] = a8;
  v9[9] = v8;
  v9[6] = a6;
  v9[7] = a7;
  v9[4] = a4;
  v9[5] = a5;
  v9[2] = a1;
  v9[3] = a3;
  v11 = *(a6 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[10] = AssociatedTypeWitness;
  v10[11] = *(AssociatedTypeWitness - 8);
  v10[12] = swift_task_alloc();
  v14 = *(v11 + 24) + **(v11 + 24);
  v13 = swift_task_alloc();
  v10[13] = v13;
  *v13 = v10;
  v13[1] = sub_237DC0390;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237DC0390()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 112) = v0;

  if (v0)
  {
    v5 = sub_237DC07C4;
  }

  else
  {
    v5 = sub_237DC0498;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_237DC0498(uint64_t a1)
{
  v2 = v1[14];
  sub_237EF8B90();
  if (!v2)
  {
    v6 = (*(v1[6] + 40) + 24);
    v7 = *v6 + **v6;
    v5 = swift_task_alloc();
    v1[15] = v5;
    *v5 = v1;
    v5[1] = sub_237DC0644;

    __asm { BRAA            X8, X16 }
  }

  (*(v1[11] + 8))(v1[12], v1[10]);

  OUTLINED_FUNCTION_3_0();

  return v3();
}

uint64_t sub_237DC0644()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 128) = v0;

  if (v0)
  {
    v5 = sub_237DC0820;
  }

  else
  {
    v5 = sub_237DC074C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_237DC074C()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

uint64_t sub_237DC07C4()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237DC0820()
{
  OUTLINED_FUNCTION_2_0();
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_3_0();

  return v1();
}

void sub_237DC0894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_237CEF6D4;

  sub_237DC0198(a1, a2, a3, a4, a5, a8, a6, a7);
}

uint64_t sub_237DC09F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237DC0A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a1;
  v8 = *(a3 - 8);
  v41 = a2;
  v42 = v8;
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_2_2();
  v37 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  v40 = *(v19 + 16);
  v39 = *(v40 + 16);
  v34 = *(v39 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  sub_237EF9D20();
  result = DenseVector.count.getter(v41);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v36 = a5;
    v22 = v34;
    if (result)
    {
      v23 = v12;
      v24 = 0;
      v25 = (v42 + 8);
      v35 = result;
      do
      {
        v42 = v24 + 1;
        v26 = a4;
        DenseVector.subscript.getter(v24, v38, a3);
        sub_237EF9FD0();
        v27 = *v25;
        (*v25)(v15, a3);
        v28 = v15;
        v29 = v22;
        v30 = v23;
        v31 = v37;
        DenseVector.subscript.getter(v24, v41, a3);
        sub_237EF8D30();
        v32 = v31;
        v23 = v30;
        v22 = v29;
        v15 = v28;
        v27(v32, a3);
        sub_237EF8D30();
        v27(v23, a3);
        sub_237EF9770();
        v27(v28, a3);
        v27(v18, a3);
        a4 = v26;
        result = v35;
        v24 = v42;
      }

      while (v35 != v42);
    }
  }

  return result;
}

void sub_237DC0DA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a1;
  v7 = *(*(*(a4 + 16) + 16) + 8);
  v43 = *(v7 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v34 - v9;
  v45 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  v16 = v34 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v34 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v34 - v21;
  v23 = DenseVector.count.getter(a2);
  if (v23 < 0)
  {
    __break(1u);
  }

  else
  {
    v41 = v7;
    v42 = AssociatedTypeWitness;
    v39 = v13;
    v40 = v10;
    v38 = v22;
    if (v23)
    {
      v24 = v23;
      v35 = *v44++;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v26 = 0;
      v34[0] = v45 + 8;
      v34[1] = AssociatedConformanceWitness;
      v36 = v24;
      v37 = a2;
      v46 = a4;
      do
      {
        v45 = v26 + 1;
        sub_237EF9FB0();
        sub_237EF9D20();
        v27 = v39;
        DenseVector.subscript.getter(v26, a2, a3);
        sub_237EF8D30();
        v28 = *v34[0];
        (*v34[0])(v27, a3);
        v28(v16, a3);
        DenseVector.subscript.getter(v26, v35, a3);
        v29 = v16;
        v30 = v38;
        sub_237EF8D30();
        v28(v29, a3);
        v28(v19, a3);
        DenseVector.subscript.getter(v26, *v44, a3);
        sub_237EF9770();
        v31 = v30;
        v16 = v29;
        v28(v31, a3);
        a2 = v37;
        v33 = type metadata accessor for DenseVector(0, a3, v46, v32);
        DenseVector.subscript.setter(v19, v26, v33);
        v26 = v45;
      }

      while (v36 != v45);
    }
  }
}

uint64_t sub_237DC1148(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = v4;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v1 = type metadata accessor for L2NormRegularizer(319, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
    if (v9 <= 0x3F)
    {
      v1 = type metadata accessor for OptimizerState(319, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
      if (v11 <= 0x3F)
      {
        v1 = type metadata accessor for OptimizerStatistics(319, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
        if (v13 <= 0x3F)
        {
          if (v5 > 0x3F)
          {
            return AssociatedTypeWitness;
          }

          else
          {
            v1 = type metadata accessor for DenseMatrix(319, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
            if (v15 <= 0x3F)
            {
              v1 = type metadata accessor for DenseVector(319, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
              if (v16 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_237DC130C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  result = swift_getAssociatedTypeWitness();
  v9 = *(result - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v12 = *(v6 + 64);
  v13 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = result;
  v16 = v13 | 7;
  if (v11 >= a2)
  {
LABEL_28:
    if (v7 == v11)
    {
      v24 = a1;
      v10 = v7;
      v15 = v5;
    }

    else
    {
      v25 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) == 0)
      {
        v26 = *v25;
        if (*v25 >= 0xFFFFFFFF)
        {
          LODWORD(v26) = -1;
        }

        return (v26 + 1);
      }

      v24 = ((v13 + ((((((((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + v16 + 8) & ~v16) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v13);
    }

    return __swift_getEnumTagSinglePayload(v24, v10, v15);
  }

  v14 = *(*(result - 8) + 64);
  v17 = ((((((((((((((v14 + ((v14 + v13 + ((v13 + ((6 - (((-17 - ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) - v13) | v16) - v14) - ((((((-49 - v13) | v13) - (v14 + v13)) | v13) - (v14 + v13)) | v13)) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v13)) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v17 <= 3)
  {
    v18 = ((a2 - v11 + 255) >> 8) + 1;
  }

  else
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  switch(v20)
  {
    case 1:
      v21 = a1[v17];
      if (!a1[v17])
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    case 2:
      v21 = *&a1[v17];
      if (!*&a1[v17])
      {
        goto LABEL_28;
      }

      goto LABEL_24;
    case 3:
      __break(1u);
      return result;
    case 4:
      v21 = *&a1[v17];
      if (!v21)
      {
        goto LABEL_28;
      }

LABEL_24:
      v22 = (v21 - 1) << (8 * v17);
      if (v17 <= 3)
      {
        v23 = *a1;
      }

      else
      {
        v22 = 0;
        v23 = *a1;
      }

      result = v11 + (v23 | v22) + 1;
      break;
    default:
      goto LABEL_28;
  }

  return result;
}

void sub_237DC1600(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 84);
  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  if (v9 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v9;
  }

  if (v14 <= v12)
  {
    v14 = *(v11 + 84);
  }

  v15 = *(v8 + 64);
  v16 = *(v11 + 80);
  v17 = v16 | 7;
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  v19 = v18 + ((v18 + v16 + ((v18 + v16 + ((v16 + 48) & ~v16)) & ~v16)) & ~v16) + 1;
  v20 = ((((((((((((((v18 + ((v18 + v16 + ((v16 + ((v19 + ((v16 + ((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~(v16 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 24) & ~v16)) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v14 >= a3)
  {
    v23 = 0;
  }

  else
  {
    if (v20 <= 3)
    {
      v21 = ((a3 - v14 + 255) >> 8) + 1;
    }

    else
    {
      v21 = 2;
    }

    if (v21 >= 0x10000)
    {
      v22 = 4;
    }

    else
    {
      v22 = 2;
    }

    if (v21 < 0x100)
    {
      v22 = 1;
    }

    if (v21 >= 2)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }
  }

  if (v14 < a2)
  {
    v24 = ~v14 + a2;
    bzero(a1, v20);
    if (v20 <= 3)
    {
      v25 = (v24 >> 8) + 1;
    }

    else
    {
      v25 = 1;
    }

    if (v20 > 3)
    {
      *a1 = v24;
    }

    else
    {
      *a1 = v24;
    }

    switch(v23)
    {
      case 1:
        *(a1 + v20) = v25;
        break;
      case 2:
        *(a1 + v20) = v25;
        break;
      case 3:
        goto LABEL_65;
      case 4:
        *(a1 + v20) = v25;
        break;
      default:
        return;
    }

    return;
  }

  switch(v23)
  {
    case 1:
      *(a1 + v20) = 0;
      if (a2)
      {
        goto LABEL_36;
      }

      return;
    case 2:
      *(a1 + v20) = 0;
      if (a2)
      {
        goto LABEL_36;
      }

      return;
    case 3:
LABEL_65:
      __break(1u);
      return;
    case 4:
      *(a1 + v20) = 0;
      goto LABEL_35;
    default:
LABEL_35:
      if (!a2)
      {
        return;
      }

LABEL_36:
      if (v9 == v14)
      {
        v26 = a1;
        v27 = a2;
        v12 = v9;
        AssociatedTypeWitness = v7;
LABEL_38:

        __swift_storeEnumTagSinglePayload(v26, v27, v12, AssociatedTypeWitness);
        return;
      }

      v28 = ((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
      if ((v14 & 0x80000000) == 0)
      {
        if ((a2 & 0x80000000) != 0)
        {
          v29 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v29 = (a2 - 1);
        }

        *v28 = v29;
        return;
      }

      v30 = (((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + v17 + 8) & ~v17;
      if (v13 >= a2)
      {
        v26 = ((v16 + ((((v30 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v16);
        v27 = a2;
        goto LABEL_38;
      }

      if (v19 <= 3)
      {
        v31 = ~(-1 << (8 * v19));
      }

      else
      {
        v31 = -1;
      }

      if (v19)
      {
        v32 = v31 & (~v13 + a2);
        if (v19 <= 3)
        {
          v33 = v19;
        }

        else
        {
          v33 = 4;
        }

        bzero(((((v28 + 15) & 0xFFFFFFFFFFFFFFF8) + v17 + 8) & ~v17), v19);
        switch(v33)
        {
          case 2:
            *v30 = v32;
            break;
          case 3:
            *v30 = v32;
            *(v30 + 2) = BYTE2(v32);
            break;
          case 4:
            *v30 = v32;
            break;
          default:
            *v30 = v32;
            break;
        }
      }

      return;
  }
}

void sub_237DC1A1C()
{
  OUTLINED_FUNCTION_13_4();
  v64 = v2;
  v65 = v1;
  v70 = v0;
  v4 = v3;
  v63 = v5;
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v67 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26();
  v57 = (v11 - v12);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_16();
  v56 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_8_16();
  v58 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_8_16();
  v59 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_16();
  v66 = v20;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  v23 = v55 - v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = *(AssociatedConformanceWitness + 8);
  v25 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_26();
  v55[2] = v27 - v28;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  v31 = v55 - v30;
  OUTLINED_FUNCTION_12_7();
  v62 = sub_237EFA1D0();
  OUTLINED_FUNCTION_4();
  v33 = MEMORY[0x28223BE20](v32);
  v61 = v55 - v34;
  v60 = (*(v6 + 32))(v7, v6, v33);
  v68 = v4;
  sub_237DC1FCC(v4);
  v35 = (v0 + *(v4 + 44));
  v36 = OUTLINED_FUNCTION_12_7();
  v55[0] = type metadata accessor for OptimizerState(v36, v37, AssociatedConformanceWitness, v38);
  v39 = v67;
  (*(v67 + 24))(&v35[*(v55[0] + 52)], v63, AssociatedTypeWitness);
  OUTLINED_FUNCTION_28_6();
  DenseVector.init(scalars:)();
  v41 = v40;

  *v35 = v41;
  swift_getAssociatedConformanceWitness();
  v55[3] = v25;
  sub_237EF9FA0();
  v55[1] = v31;
  v63 = v24;
  sub_237EF9CE0();
  sub_237EF9430();
  v42 = v39 + 8;
  v43 = *(v39 + 8);
  v64 = v23;
  v43(v23, AssociatedTypeWitness);
  swift_getWitnessTable();
  v44 = AssociatedConformanceWitness;
  v45 = DenseVector.init<A>(scalars:)();

  *(v35 + 1) = v45;
  v46 = v65;
  sub_237DC26A8(v68);
  if (!v46)
  {
    DenseVector.maximumAbsoluteValue.getter(*(v35 + 1), AssociatedTypeWitness, v44);
    v65 = v43;
    OUTLINED_FUNCTION_7_51();
    sub_237EF9FA0();
    v62 = v42;
    sub_237EF9CE0();
    OUTLINED_FUNCTION_7_51();
    sub_237EF9FA0();
    v47 = v57;
    sub_237EF9CE0();
    v48 = *(*(v44 + 16) + 16);
    AssociatedConformanceWitness = *(v44 + 16);
    v63 = *(*(v48 + 8) + 8);
    v49 = v56;
    sub_237EF9750();
    v65(v47, AssociatedTypeWitness);
    sub_237EF9FD0();
    sub_237EF9750();
    v50 = v65;
    v65(v47, AssociatedTypeWitness);
    v50(v49, AssociatedTypeWitness);
    v51 = v64;
    v52 = v59;
    sub_237EF8330();
    v53 = OUTLINED_FUNCTION_28_6();
    (v50)(v53);
    v50(v52, AssociatedTypeWitness);
    v54 = v68;
    (*(v67 + 40))(v70 + *(v68 + 56), v51, AssociatedTypeWitness);
    sub_237DC27D8(v54);
    sub_237DC2AD8(v54);
    v50(v66, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DC1FCC(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = *(AssociatedConformanceWitness + 8);
  v63 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v63);
  v56 = &v49 - v7;
  v61 = sub_237EFA1D0();
  MEMORY[0x28223BE20](v61);
  v58 = &v49 - v8;
  v59 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v50 = &v49 - v10;
  v51 = AssociatedConformanceWitness;
  v11 = *(*(*(*(AssociatedConformanceWitness + 16) + 16) + 8) + 16);
  v12 = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x28223BE20](v12);
  v14 = *(v3 + 32);
  v62 = v1;
  v15 = v14(v4, v3, v13);
  v55 = v15;
  v16 = *(a1 + 40);
  v49 = a1;
  v17 = *(v1 + v16);
  v57 = v11;
  v53 = swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v18 = v50;
  sub_237EF9D20();
  v19 = v15;
  v20 = v17;
  v54 = v17;
  DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v19, v17, v18, AssociatedTypeWitness, &v64);
  v21 = v64;
  v22 = v65;
  LOBYTE(v18) = v66;
  v23 = v67;
  v24 = v62;
  v25 = v62 + *(a1 + 60);

  *v25 = v21;
  *(v25 + 8) = v22;
  *(v25 + 16) = v18;
  *(v25 + 24) = v23;
  sub_237EF9FB0();
  v26 = v50;
  sub_237EF9D20();
  v27 = v26;
  DenseMatrix.init(rowCount:columnCount:layout:repeating:)(v55, v20, v26, AssociatedTypeWitness, &v64);
  v28 = v64;
  v29 = v65;
  LOBYTE(v25) = v66;
  v30 = v67;
  v31 = v49;
  v32 = v24 + *(v49 + 64);

  *v32 = v28;
  *(v32 + 8) = v29;
  *(v32 + 16) = v25;
  *(v32 + 24) = v30;
  v53 = swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  sub_237EF9430();
  v33 = v59 + 8;
  v57 = *(v59 + 8);
  v57(v27, AssociatedTypeWitness);
  v59 = v33;
  WitnessTable = swift_getWitnessTable();
  v34 = DenseVector.init<A>(scalars:)();
  v35 = *(v31 + 68);
  v36 = v62;

  *(v36 + v35) = v34;
  sub_237EF9FA0();
  sub_237EF9CE0();
  sub_237EF9430();
  v57(v27, AssociatedTypeWitness);
  v37 = DenseVector.init<A>(scalars:)();
  v38 = *(v31 + 72);
  v39 = v62;

  *(v39 + v38) = v37;
  sub_237EF9FA0();
  sub_237EF9CE0();
  sub_237EF9430();
  v57(v27, AssociatedTypeWitness);
  v40 = DenseVector.init<A>(scalars:)();
  v41 = v49;
  v42 = *(v49 + 76);
  v43 = v62;

  *(v43 + v42) = v40;
  v64 = sub_237EF89A0();
  sub_237EF8A60();
  swift_getWitnessTable();
  v44 = DenseVector.init<A>(scalars:)();
  v45 = v41[20];

  *(v43 + v45) = v44;
  sub_237EF9FA0();
  sub_237EF9CE0();
  sub_237EF9430();
  v57(v27, AssociatedTypeWitness);
  v46 = DenseVector.init<A>(scalars:)();
  v47 = v41[21];

  *(v43 + v47) = v46;
  *(v43 + v41[22]) = 0;
  return result;
}

uint64_t sub_237DC26A8(uint64_t a1)
{
  result = (*(*(a1 + 24) + 48))(v1 + *(a1 + 44), *(a1 + 16), *(a1 + 24));
  v4 = v1 + *(a1 + 48);
  v5 = *(v4 + 8);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v4 + 8) = v7;
  v8 = *(v4 + 16);
  v6 = __OFADD__(v8, 1);
  v9 = v8 + 1;
  if (v6)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(v4 + 16) = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for OptimizerState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  result = sub_237EF8380();
  if ((result & 1) == 0)
  {
    sub_237DC6AD0();
    swift_allocError();
    *v13 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_237DC27D8(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v29 = &v24 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = *(v1 + *(a1 + 36));
  v30 = a1;
  v12 = (v1 + *(a1 + 44));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_237DC0DA8(v12, v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  v31 = v12;
  result = DenseVector.count.getter(v12[1]);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v16 = result;
    v26 = v11;
    v27 = v4;
    if (result)
    {
      v17 = 0;
      do
      {
        DenseVector.subscript.getter(v17, v12[1], AssociatedTypeWitness);
        sub_237EF8D40();
        v19 = type metadata accessor for DenseVector(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
        DenseVector.subscript.setter(v10, v17++, v19);
      }

      while (v16 != v17);
    }

    v30 = *(v30 + 56);
    v25 = *(type metadata accessor for OptimizerState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15) + 48);
    v20 = v28;
    sub_237DC0A48(*v31, v26, AssociatedTypeWitness, AssociatedConformanceWitness, v28);
    v21 = v29;
    sub_237EF9750();
    v22 = v27;
    v23 = *(v27 + 8);
    v23(v20, AssociatedTypeWitness);
    sub_237EF8D30();
    v23(v21, AssociatedTypeWitness);
    return (*(v22 + 40))(v31 + v25, v10, AssociatedTypeWitness);
  }

  return result;
}

uint64_t sub_237DC2AD8(uint64_t a1)
{
  v17[1] = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v17 - v8;
  v10 = v1 + *(a1 + 44);
  v11 = *(v10 + 8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  DenseVector.maximumAbsoluteValue.getter(v11, AssociatedTypeWitness, AssociatedConformanceWitness);
  sub_237EF8330();
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  v14 = type metadata accessor for OptimizerState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  (*(v4 + 40))(v10 + *(v14 + 44), v9, AssociatedTypeWitness);
  result = sub_237EF8380();
  if ((result & 1) == 0)
  {
    sub_237DC6AD0();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  return result;
}

void sub_237DC2CD8()
{
  OUTLINED_FUNCTION_13_4();
  v50 = v1;
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = v2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = *(AssociatedConformanceWitness + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26();
  v47 = v7 - v8;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  v42 = v40 - v10;
  OUTLINED_FUNCTION_12_7();
  v11 = swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  v52 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_16();
  v43 = v15;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_16();
  v48 = v17;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_8_16();
  v51 = v19;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8_16();
  v49 = v21;
  OUTLINED_FUNCTION_11_1();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = v40 - v24;
  v26 = *(v3 + 32);
  v46 = v0;
  v26(v4, v3, v23);
  v45 = v5;
  v27 = *(v5 + 44);
  v28 = AssociatedConformanceWitness;
  v40[1] = type metadata accessor for OptimizerState(0, v11, AssociatedConformanceWitness, v29);
  OUTLINED_FUNCTION_4();
  v31 = v50;
  (*(v30 + 24))(v0 + v27, v50);
  sub_237DC1FCC(v5);
  v32 = *(v31 + 8);
  v40[0] = v25;
  DenseVector.maximumAbsoluteValue.getter(v32, v11, v28);
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_7_51();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_12_38();
  OUTLINED_FUNCTION_7_51();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_12_38();
  v33 = v43;
  OUTLINED_FUNCTION_22_13();
  sub_237EF9750();
  v34 = *(v52 + 8);
  v35 = OUTLINED_FUNCTION_38();
  v34(v35);
  sub_237EF9FD0();
  v36 = v48;
  sub_237EF9750();
  v37 = OUTLINED_FUNCTION_38();
  v34(v37);
  (v34)(v33, v11);
  v38 = v49;
  sub_237EF8330();
  (v34)(v36, v11);
  v39 = OUTLINED_FUNCTION_38();
  v34(v39);
  (v34)(v40[0], v11);
  (*(v52 + 40))(v46 + *(v45 + 56), v38, v11);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DC30FC(int *a1)
{
  v4 = a1[12];
  if (*(v1 + v4))
  {
    result = sub_237DC33AC(a1);
    if (v2)
    {
      return result;
    }
  }

  else
  {
    result = sub_237DC3164(a1);
    if (v2)
    {
      return result;
    }
  }

  result = sub_237DC2AD8(a1);
  v6 = *(v1 + v4);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v4) = v8;
  }

  return result;
}

uint64_t sub_237DC3164(int *a1)
{
  v2 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v19 - v5;
  v7 = v1 + a1[11];
  v8 = *(v7 + 8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = static DenseVector.- prefix(_:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness);
  v11 = v21;
  sub_237DC351C(v10, a1);

  if (!v11)
  {
    v21 = type metadata accessor for OptimizerState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
    sub_237EF9410();
    v19 = *(v7 + 8);
    v14 = static DenseVector.* infix(_:_:)(v6, v19);
    v15 = v20;
    (*(v20 + 8))(v6, AssociatedTypeWitness);
    v16 = a1[20];

    *(v2 + v16) = v14;
    static DenseVector.+= infix(_:_:)(v7, v14, AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v15 + 24))(v2 + a1[13], v7 + *(v21 + 48), AssociatedTypeWitness);
    v17 = a1[21];
    v18 = v19;

    *(v2 + v17) = v18;
    sub_237DC26A8(a1);
    return sub_237DC27D8(a1);
  }

  return result;
}

uint64_t sub_237DC351C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v76 = a1;
  v78 = a2;
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v77[0] = v5;
  v77[1] = AssociatedTypeWitness;
  v77[2] = v4;
  v77[3] = AssociatedConformanceWitness;
  v72 = v4;
  v75 = type metadata accessor for LineSearch.LineSearchResult(0, v77);
  v64 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v61 - v8;
  v66 = *(AssociatedTypeWitness - 8);
  v9 = v66;
  MEMORY[0x28223BE20](v10);
  v73 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = &v61 - v13;
  v14 = *(v5 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v17;
  v71 = type metadata accessor for LineSearch(0, v5, v4, v18);
  v63 = *(v71 - 8);
  v19 = MEMORY[0x28223BE20](v71);
  v21 = &v61 - v20;
  (*(v14 + 16))(v17, v3, v5, v19);
  v22 = v78[9];
  v69 = v3;
  v23 = *(v3 + v22);
  v24 = (v3 + v78[11]);
  v26 = type metadata accessor for OptimizerState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v25);
  v68 = *(v26 + 52);
  v27 = *(v9 + 16);
  v28 = v70;
  v27(v70, v24 + v68, AssociatedTypeWitness);
  v62 = v26;
  v29 = v24 + *(v26 + 48);
  v30 = v73;
  v27(v73, v29, AssociatedTypeWitness);
  v31 = *v24;
  v32 = v24[1];

  v33 = v76;

  v34 = v23;
  v35 = v71;
  v36 = v28;
  v37 = v21;
  sub_237DC7B00(v67, v34, v36, v30, v31, v32, v33, v5, v72, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71);
  v38 = v78;
  v39 = *(v66 + 24);
  v40 = v69;
  v39(&v21[*(v35 + 48)], v69 + v78[14], AssociatedTypeWitness);
  v41 = v74;
  sub_237DC860C(v35, v42, v43, v44, v45, v46, v47, v48, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
  result = (v39)(v24 + v68, v41, AssociatedTypeWitness);
  v50 = v75;
  v51 = *&v41[*(v75 + 56)];
  v52 = v40 + v38[12];
  v53 = *(v52 + 8);
  v54 = __OFADD__(v53, v51);
  v55 = v53 + v51;
  if (v54)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v52 + 8) = v55;
  v56 = *&v41[*(v50 + 60)];
  v57 = *(v52 + 16);
  v54 = __OFADD__(v57, v56);
  v58 = v57 + v56;
  if (v54)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *(v52 + 16) = v58;
  v59 = v41[*(v50 + 52)];
  (*(v64 + 8))(v41);
  if ((v59 & 1) == 0)
  {
    *(v24 + *(v62 + 56)) = 1;
  }

  return (*(v63 + 8))(v37, v35);
}

void sub_237DC39B8()
{
  OUTLINED_FUNCTION_13_4();
  v93 = v1;
  v2 = v0;
  v4 = v3;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  swift_getAssociatedTypeWitness();
  v99 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(AssociatedConformanceWitness + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  v95 = v83 - v15;
  OUTLINED_FUNCTION_12_7();
  v16 = swift_checkMetadataState();
  OUTLINED_FUNCTION_1();
  v92 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_8_16();
  v94 = v21;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  MEMORY[0x28223BE20](v23);
  v100 = v83 - v28;
  v29 = *(v2 + v4[12]);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
    goto LABEL_18;
  }

  v32 = *(v2 + v4[10]);
  if (!v32)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v31 != 0x8000000000000000 || v32 != -1)
  {
    v83[2] = v27;
    v84 = v26;
    v85 = v13;
    v101 = v25;
    v97 = AssociatedTypeWitness;
    v98 = AssociatedConformanceWitness;
    v102 = v4;
    v34 = v31 % v32;
    MEMORY[0x28223BE20](v24);
    v35 = v99;
    v83[-4] = v99;
    v83[-3] = v6;
    v83[-2] = v2;
    v36 = OUTLINED_FUNCTION_23_8();
    v40 = type metadata accessor for DenseMatrix(v36, v37, v38, v39);
    v96 = v8;
    v41 = v40;
    v42 = v93;
    v43 = sub_237CC86F0(v34, sub_237DC6B74, &v83[-6], v40, MEMORY[0x277D84F78] + 8);
    MEMORY[0x28223BE20](v43);
    v83[-4] = v35;
    v83[-3] = v6;
    v89 = v6;
    v83[-2] = v2;
    v44 = sub_237CC86F0(v34, sub_237DC6B94, &v83[-6], v41, MEMORY[0x277D84F78] + 8);
    v86 = v102[20];
    v45 = *(v2 + v86);
    MEMORY[0x28223BE20](v44);
    v83[-4] = v35;
    v83[-3] = v6;
    v83[-2] = v2;
    v83[-1] = v34;

    v46 = v98;
    DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237DC6BB4, &v83[-6], v45, v16, v16, v98);
    v88 = v42;

    v87 = swift_getAssociatedConformanceWitness();
    sub_237EF9FA0();
    v47 = v94;
    OUTLINED_FUNCTION_5_68();
    sub_237EF9CE0();
    v48 = *(v46 + 16);
    v49 = v46;
    v50 = v101;
    v93 = v48;
    sub_237EF8330();
    v51 = v92 + 8;
    v90 = *(v92 + 8);
    v90(v47, v16);
    v52 = OUTLINED_FUNCTION_23_8();
    v55 = type metadata accessor for DenseVector(v52, v53, v49, v54);
    DenseVector.subscript.setter(v50, v34, v55);
    v91 = v2 + v102[11];
    v56 = *(v91 + 8);
    v57 = v102[17];

    *(v2 + v57) = v56;
    MEMORY[0x28223BE20](v58);
    v60 = v88;
    v59 = v89;
    v83[-4] = v99;
    v83[-3] = v59;
    v83[-2] = v2;
    v83[-1] = v34;
    DenseVector.withUnsafeMutableVectorPointer<A>(_:)(sub_237DC6BD4, &v83[-6], v55, MEMORY[0x277D84F78] + 8);
    if (sub_237DC63C8(v102))
    {
      v61 = v98;
      v62 = v57;
      v63 = static DenseVector.- prefix(_:)(*(v2 + v57), v16, v98);
      sub_237DC351C(v63, v102);
      if (v60)
      {
        v90(v100, v16);

LABEL_16:
        OUTLINED_FUNCTION_12_6();
        return;
      }

      v99 = v62;

      v75 = v101;
      v71 = v90;
    }

    else
    {
      v99 = v57;
      v64 = OUTLINED_FUNCTION_23_8();
      v61 = v98;
      v67 = *(type metadata accessor for OptimizerState(v64, v65, v98, v66) + 52);
      sub_237EF9FA0();
      OUTLINED_FUNCTION_5_68();
      sub_237EF9CE0();
      v68 = *(*(v93 + 24) + 8);
      v88 = v67;
      v83[1] = v68;
      v69 = sub_237EF8410();
      v70 = OUTLINED_FUNCTION_22_13();
      v71 = v90;
      (v90)(v70);
      if (v69)
      {
        sub_237EF9FA0();
        v89 = v51;
        OUTLINED_FUNCTION_5_68();
        sub_237EF9CE0();
        OUTLINED_FUNCTION_38();
        sub_237EF9FA0();
        OUTLINED_FUNCTION_5_68();
        sub_237EF9CE0();
        v72 = v91;
        v73 = v84;
        sub_237EF8D30();
        v74 = OUTLINED_FUNCTION_22_13();
        v71(v74);
        v75 = v101;
        v76 = v94;
        sub_237EF9FF0();
        (v71)(v73, v16);
        (v71)(v76, v16);
        (*(v92 + 40))(v72 + v88, v75, v16);
LABEL_15:
        v77 = OUTLINED_FUNCTION_23_8();
        type metadata accessor for OptimizerState(v77, v78, v61, v79);
        sub_237EF9410();
        v80 = static DenseVector.* infix(_:_:)(v75, *(v2 + v99));
        v81 = OUTLINED_FUNCTION_22_13();
        v71(v81);
        v82 = v86;

        *(v2 + v82) = v80;
        static DenseVector.+= infix(_:_:)(v72, v80, v16, v61);
        (v71)(v100, v16);
        goto LABEL_16;
      }

      v75 = v101;
    }

    v72 = v91;
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
}

void sub_237DC41BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_13_4();
  v57 = v24;
  v26 = v25;
  v28 = *(v25 + 16);
  v27 = *(v25 + 24);
  OUTLINED_FUNCTION_12_7();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_26();
  v35 = v33 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v53 - v37;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_8_16();
  v58 = v40;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v41);
  v43 = &v53 - v42;
  v44 = *(v23 + *(v26 + 80));
  v55 = v28;
  v56 = v27;
  v45 = v44;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v53 = v45;
  DenseVector.squaredMagnitude.getter(v45, AssociatedTypeWitness, AssociatedConformanceWitness);
  v54 = AssociatedConformanceWitness;
  OUTLINED_FUNCTION_28_6();
  sub_237EF8390();
  OUTLINED_FUNCTION_28_6();
  sub_237EF8390();
  v47 = v58;
  sub_237EF8D30();
  v48 = *(v31 + 8);
  v48(v35, AssociatedTypeWitness);
  v48(v38, AssociatedTypeWitness);
  LOBYTE(v38) = sub_237EF8430();
  v48(v47, AssociatedTypeWitness);
  v49 = (v48)(v43, AssociatedTypeWitness);
  if (v38)
  {
    v50 = 0;
LABEL_5:
    sub_237DC6AD0();
    swift_allocError();
    *v52 = v50;
    swift_willThrow();
    goto LABEL_6;
  }

  MEMORY[0x28223BE20](v49);
  v51 = v56;
  *(&v53 - 2) = v55;
  *(&v53 - 1) = v51;
  DenseVector.withUnsafeVectorPointer<A>(_:)(sub_237DC6B24, (&v53 - 4), v53, AssociatedTypeWitness, MEMORY[0x277D839B0], v54);
  if ((a13 & 1) == 0)
  {
    v50 = 1;
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237DC4480(uint64_t a1, int *a2)
{
  v3 = v2;
  v70 = a1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = *(AssociatedConformanceWitness + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v56 = &v48 - v6;
  v7 = *(AssociatedConformanceWitness + 16);
  v54 = *(*(v7 + 16) + 8);
  v62 = *(v54 + 16);
  v8 = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](v8);
  v61 = &v48 - v9;
  v10 = swift_checkMetadataState();
  v65 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v53 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v67 = &v48 - v13;
  MEMORY[0x28223BE20](v14);
  v64 = &v48 - v15;
  MEMORY[0x28223BE20](v16);
  v63 = &v48 - v17;
  MEMORY[0x28223BE20](v18);
  v68 = &v48 - v19;
  v69 = a2;
  v20 = a2[13];
  v21 = v3 + a2[11];
  v22 = AssociatedConformanceWitness;
  v52 = type metadata accessor for OptimizerState(0, v10, AssociatedConformanceWitness, v23);
  v24 = *(v52 + 48);
  v55 = v7;
  v25 = *(*(v7 + 24) + 8);
  v57 = v24;
  v58 = v20;
  v66 = v25;
  v26 = 0;
  if ((v70 < 1) | ((sub_237EF8430() & 1) == 0) && v70 <= 2)
  {
    v27 = *(v21 + 8);
    v51 = v21;
    v49 = v69[20];
    v50 = v3;
    v28 = *(v3 + v49);
    v29 = v22;
    v30 = v68;
    dot<A>(_:_:)(v27, v28, v10, v29);
    swift_getAssociatedConformanceWitness();
    sub_237EF9FB0();
    v31 = v63;
    sub_237EF9D20();
    v32 = sub_237EF8400();
    v33 = *(v65 + 8);
    v33(v31, v10);
    if (v32)
    {
      v34 = v50;
      v35 = *(v50 + v69[21]);
      v36 = v64;
      v48 = v28;
      dot<A>(_:_:)(v35, v28, v10, v29);
      v61 = v29;
      sub_237DC6DAC(v34 + v58, v51 + v57, v36, v30, v10, v29, v37, v38, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, AssociatedTypeWitness);
      v65 = swift_getAssociatedConformanceWitness();
      sub_237EF9FA0();
      sub_237EF9CE0();
      LOBYTE(v36) = sub_237EF8520();
      v33(v31, v10);
      v39 = v33;
      if (v36)
      {
        v26 = 0;
        v40 = v67;
      }

      else
      {
        sub_237EF9FA0();
        sub_237EF9CE0();
        v41 = sub_237EF8410();
        v62 = v33;
        v33(v31, v10);
        if ((v41 & 1) != 0 || v70 == 2)
        {
          *(v50 + v69[22]) = 1;
        }

        sub_237EF9FA0();
        sub_237EF9CE0();
        v40 = v67;
        v42 = sub_237EF8420();
        v62(v31, v10);
        if (v42 & 1) != 0 && (sub_237EF8430())
        {
          v26 = 0;
          v39 = v62;
          v62(v40, v10);
LABEL_15:
          v39(v64, v10);
          v39(v68, v10);
          return v26;
        }

        sub_237EF8D40();
        sub_237EF9FA0();
        v43 = v53;
        sub_237EF9CE0();
        sub_237EF9760();
        v44 = v43;
        v39 = v62;
        v62(v44, v10);
        v45 = v61;
        v46 = static DenseVector.* infix(_:_:)(v31, v48);
        v39(v31, v10);
        static DenseVector.-= infix(_:_:)(v51, v46, v10, v45);

        static DenseVector.*= infix(_:_:)(v50 + v49, v40, v10, v45);
        v26 = 1;
      }

      v39(v40, v10);
      goto LABEL_15;
    }

    v26 = 0;
    v33(v30, v10);
  }

  return v26;
}

void sub_237DC4BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = a4;
  v19 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v18 - v13;
  if (a2 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (a2)
  {
    v15 = *(type metadata accessor for LBFGSOptimizer(0, a5, a6, v12) + 80);
    swift_getAssociatedConformanceWitness();
    v16 = 0;
    while (1)
    {
      DenseVector.subscript.getter(v16, *(v20 + v15), AssociatedTypeWitness);
      v17 = v16 * a3;
      if ((v16 * a3) >> 64 != (v16 * a3) >> 63)
      {
        break;
      }

      ++v16;
      (*(v11 + 40))(v19 + *(v11 + 72) * v17, v14, AssociatedTypeWitness);
      if (a2 == v16)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }
}

void sub_237DC4D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a4;
  v27 = a1;
  v28 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v24 - v13;
  MEMORY[0x28223BE20](v15);
  v18 = v24 - v17;
  if (a2 < 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  if (a2)
  {
    v19 = type metadata accessor for LBFGSOptimizer(0, a5, a6, v16);
    v26 = v30 + *(v19 + 44);
    v25 = *(v19 + 84);
    swift_getAssociatedConformanceWitness();
    v20 = 0;
    v21 = (v29 + 8);
    v24[2] = v29 + 40;
    while (1)
    {
      DenseVector.subscript.getter(v20, *(v26 + 8), AssociatedTypeWitness);
      DenseVector.subscript.getter(v20, *(v30 + v25), AssociatedTypeWitness);
      sub_237EF9760();
      v22 = *v21;
      (*v21)(v11, AssociatedTypeWitness);
      v22(v14, AssociatedTypeWitness);
      v23 = v20 * v28;
      if ((v20 * v28) >> 64 != (v20 * v28) >> 63)
      {
        break;
      }

      ++v20;
      (*(v29 + 40))(v27 + *(v29 + 72) * v23, v18, AssociatedTypeWitness);
      if (a2 == v20)
      {
        return;
      }
    }

    __break(1u);
    goto LABEL_8;
  }
}

uint64_t sub_237DC5008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (a4 + *(type metadata accessor for LBFGSOptimizer(0, a6, a7, a4) + 60));
  v14 = *(v13 + 16);
  v15 = *(v13 + 3);
  v22 = *v13;
  v23 = v14;
  v24 = v15;
  v21[2] = a6;
  v21[3] = a7;
  v21[4] = a1;
  v21[5] = a2;
  v21[6] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for DenseMatrix(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);

  sub_237CC8544(a5, sub_237DC6D18, v21, v19, AssociatedTypeWitness);
}

void sub_237DC5150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dot<A>(_:_:)();
}

uint64_t sub_237DC521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v90 = a5;
  v96 = a3;
  v97 = a2;
  v95 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v78 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v86 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v85 = &v78 - v15;
  MEMORY[0x28223BE20](v16);
  v84 = &v78 - v17;
  result = type metadata accessor for LBFGSOptimizer(0, a6, a7, v18);
  v79 = *(result + 48);
  v20 = *(v79 + a4);
  v80 = result;
  v89 = *(result + 40);
  if (*(a4 + v89) >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = *(a4 + v89);
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  v88 = a7;
  v94 = a6;
  v91 = a4;
  v101 = AssociatedTypeWitness;
  if (v21)
  {
    v22 = 0;
    v23 = *(v80 + 60);
    v82 = (a4 + *(v80 + 64));
    v81 = a4 + v23;
    v83 = v21;
    while (1)
    {
      v24 = *(a4 + v89);
      v25 = v90 + v24;
      if (__OFADD__(v90, v24))
      {
        goto LABEL_38;
      }

      v26 = __OFSUB__(v25, v22);
      v27 = v25 - v22;
      if (v26)
      {
        goto LABEL_39;
      }

      if (!v24)
      {
        goto LABEL_40;
      }

      if (v27 == 0x8000000000000000 && v24 == -1)
      {
        goto LABEL_41;
      }

      v93 = &v78;
      v22 = (v22 + 1);
      v29 = *(v82 + 16);
      v30 = *(v82 + 3);
      v98 = *v82;
      v31 = v27 % v24;
      v99 = v29;
      v100 = v30;
      MEMORY[0x28223BE20](result);
      v32 = v94;
      v33 = v88;
      *(&v78 - 8) = v94;
      *(&v78 - 7) = v33;
      *(&v78 - 6) = v91;
      *(&v78 - 5) = v31;
      v92 = v8;
      v35 = v95;
      v34 = v96;
      v36 = v97;
      *(&v78 - 4) = v95;
      *(&v78 - 3) = v36;
      *(&v78 - 2) = v34;
      v37 = v101;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v39 = type metadata accessor for DenseMatrix(0, v37, AssociatedConformanceWitness, v38);

      v40 = v92;
      sub_237CC8544(v31, sub_237DC6BF4, (&v78 - 10), v39, MEMORY[0x277D84F78] + 8);
      v92 = v40;

      v41 = *(v81 + 16);
      v42 = *(v81 + 24);
      v98 = *v81;
      v99 = v41;
      v100 = v42;
      MEMORY[0x28223BE20](v42);
      *(&v78 - 8) = v32;
      *(&v78 - 7) = v33;
      a4 = v91;
      v43 = v97;
      *(&v78 - 6) = v35;
      *(&v78 - 5) = v43;
      *(&v78 - 4) = v34;
      *(&v78 - 3) = a4;
      *(&v78 - 2) = v31;

      v44 = v92;
      sub_237CC8544(v31, sub_237DC6C20, (&v78 - 10), v39, MEMORY[0x277D84F78] + 8);
      v8 = v44;

      if (v83 == v22)
      {
        v45 = AssociatedConformanceWitness;
        a7 = v88;
        a6 = v94;
        AssociatedTypeWitness = v101;
        goto LABEL_17;
      }
    }
  }

  result = swift_getAssociatedConformanceWitness();
  v45 = result;
LABEL_17:
  v92 = &v78;
  v46 = (a4 + *(v80 + 60));
  v47 = *(v46 + 16);
  v48 = *(v46 + 3);
  v83 = v46;
  v98 = *v46;
  v99 = v47;
  v100 = v48;
  MEMORY[0x28223BE20](result);
  *(&v78 - 8) = a6;
  *(&v78 - 7) = a7;
  v49 = v96;
  v50 = v97;
  *(&v78 - 6) = v95;
  *(&v78 - 5) = v50;
  *(&v78 - 4) = v49;
  *(&v78 - 3) = a4;
  v51 = v90;
  *(&v78 - 2) = v90;
  v53 = type metadata accessor for DenseMatrix(0, AssociatedTypeWitness, v45, v52);

  v93 = v53;
  sub_237CC8544(v51, sub_237DC6C4C, (&v78 - 10), v53, MEMORY[0x277D84F78] + 8);
  v54 = v8;

  if (*(a4 + v89) >= *(v79 + a4))
  {
    v55 = *(v79 + a4);
  }

  else
  {
    v55 = *(a4 + v89);
  }

  if ((v55 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  if (v55)
  {
    AssociatedConformanceWitness = v45;
    v81 = *(v80 + 72);
    v80 = a4 + *(v80 + 64);
    v79 = (v78 + 8);
    v56 = v55;
    v82 = v55;
    while (v55 >= v56)
    {
      v57 = *(a4 + v89);
      v58 = v90 + v57;
      if (__OFADD__(v90, v57))
      {
        goto LABEL_34;
      }

      v56 = (v56 - 1);
      v26 = __OFSUB__(v58, v56);
      v59 = v58 - v56;
      if (v26)
      {
        goto LABEL_35;
      }

      if (!v57)
      {
        goto LABEL_36;
      }

      if (v59 == 0x8000000000000000 && v57 == -1)
      {
        goto LABEL_37;
      }

      v61 = v59 % v57;
      v62 = v85;
      DenseVector.subscript.getter(v59 % v57, *(a4 + v81), AssociatedTypeWitness);
      v63 = *(v83 + 16);
      v64 = *(v83 + 3);
      v98 = *v83;
      v99 = v63;
      v100 = v64;
      MEMORY[0x28223BE20](v64);
      v65 = v95;
      v66 = v88;
      *(&v78 - 6) = v94;
      *(&v78 - 5) = v66;
      v67 = v96;
      v68 = v97;
      *(&v78 - 4) = v65;
      *(&v78 - 3) = v68;
      *(&v78 - 2) = v67;

      v69 = v86;
      sub_237CC8544(v61, sub_237DC6CB4, (&v78 - 8), v93, v101);
      v92 = v54;

      v70 = v84;
      sub_237EF8D30();
      v71 = *v79;
      (*v79)(v69, v101);
      v71(v62, v101);
      v72 = *(v80 + 16);
      v73 = *(v80 + 24);
      v98 = *v80;
      v99 = v72;
      v100 = v73;
      MEMORY[0x28223BE20](v73);
      v74 = v95;
      *(&v78 - 8) = v94;
      *(&v78 - 7) = v66;
      a4 = v91;
      v75 = v96;
      v76 = v97;
      *(&v78 - 6) = v74;
      *(&v78 - 5) = v76;
      *(&v78 - 4) = v75;
      *(&v78 - 3) = a4;
      AssociatedTypeWitness = v101;
      *(&v78 - 2) = v61;
      *(&v78 - 1) = v70;

      v77 = v92;
      sub_237CC8544(v61, sub_237DC6CE0, (&v78 - 10), v93, MEMORY[0x277D84F78] + 8);
      v54 = v77;

      result = (v71)(v70, AssociatedTypeWitness);
      v55 = v82;
      if (!v56)
      {
        return result;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
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
    goto LABEL_42;
  }

  return result;
}

void sub_237DC5994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v27[6] = a3;
  v27[2] = a7;
  v27[3] = a8;
  v27[1] = a6;
  v28 = a5;
  v27[4] = a1;
  v27[5] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v27 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v27 - v19;
  v27[0] = type metadata accessor for LBFGSOptimizer(0, a9, a10, v21);
  v22 = *(a4 + *(v27[0] + 72));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  DenseVector.subscript.getter(v28, v22, AssociatedTypeWitness);
  UnsafeVectorPointer.init(_:)();
  dot<A>(_:_:)();
  sub_237EF8D30();
  v24 = *(v12 + 8);
  v24(v14, AssociatedTypeWitness);
  v24(v17, AssociatedTypeWitness);
  v26 = type metadata accessor for DenseVector(0, AssociatedTypeWitness, AssociatedConformanceWitness, v25);
  DenseVector.subscript.setter(v20, v28, v26);
}

uint64_t sub_237DC5BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v25 = a1;
  v26 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v25 - v17;
  v20 = *(a7 + *(type metadata accessor for LBFGSOptimizer(0, a9, a10, v19) + 76));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  DenseVector.subscript.getter(a8, v20, AssociatedTypeWitness);
  sub_237EF9410();
  v22 = *(v13 + 8);
  v22(v15, AssociatedTypeWitness);
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v25, v26, v27, v18, v28, v29, v30, AssociatedTypeWitness, AssociatedConformanceWitness, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  return (v22)(v18, AssociatedTypeWitness);
}

uint64_t sub_237DC5D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v41 = a6;
  v37 = a7;
  v38 = a8;
  v39 = a4;
  v40 = a5;
  v35 = a2;
  v36 = a3;
  v33 = a10;
  v34 = a1;
  v32 = a9;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = swift_checkMetadataState();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v31 - v22;
  MEMORY[0x28223BE20](v24);
  v31 = &v31 - v25;
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  UnsafeVectorPointer<A>.squaredMagnitude.getter();
  v27 = type metadata accessor for LBFGSOptimizer(0, v32, v33, v26);
  DenseVector.subscript.getter(v38, *(v37 + *(v27 + 72)), v11);
  sub_237EF8D30();
  v28 = *(v12 + 8);
  v28(v14, v11);
  v28(v17, v11);
  v29 = v31;
  sub_237EF8330();
  v28(v20, v11);
  v28(v23, v11);
  UnsafeMutableVectorPointer<A>.multiply(by:)(v29, v39, v40, v41, v11, AssociatedConformanceWitness);
  return (v28)(v29, v11);
}

void sub_237DC60F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  UnsafeVectorPointer.init(_:)();
  swift_getAssociatedConformanceWitness();
  dot<A>(_:_:)();
}

uint64_t sub_237DC61EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v26 = a1;
  v27 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  v21 = *(a7 + *(type metadata accessor for LBFGSOptimizer(0, a10, a11, v20) + 76));
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  DenseVector.subscript.getter(a8, v21, AssociatedTypeWitness);
  sub_237EF9760();
  v23 = *(v14 + 8);
  v23(v16, AssociatedTypeWitness);
  UnsafeMutableVectorPointer<A>.add(_:scaledBy:)(v26, v27, v28, v19, v29, v30, v31, AssociatedTypeWitness, AssociatedConformanceWitness, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36);
  return (v23)(v19, AssociatedTypeWitness);
}

uint64_t sub_237DC63C8(int *a1)
{
  v2 = v1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = swift_checkMetadataState();
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](&v31 - v14);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v23 = &v31 - v22;
  if (*(v2 + a1[22]) & 1) != 0 || !*(v2 + a1[12]) || (v36 = v17, v37 = v20, v39 = v19, v40 = v21, v38 = v5, v24 = v2 + a1[11], type metadata accessor for OptimizerState(0, v7, AssociatedConformanceWitness, v18), v33 = *(AssociatedConformanceWitness + 16), v34 = v24, v35 = *(*(v33 + 24) + 8), (sub_237EF8400()))
  {
    v25 = 1;
  }

  else
  {
    v32 = *(v34 + 8);
    v34 = *(v2 + a1[21]);
    dot<A>(_:_:)(v32, v34, v7, AssociatedConformanceWitness);
    sub_237EF8D30();
    swift_getAssociatedConformanceWitness();
    sub_237EF9FA0();
    sub_237EF9CE0();
    DenseVector.squaredMagnitude.getter(v32, v7, AssociatedConformanceWitness);
    v27 = v36;
    sub_237EF8D30();
    v28 = *(v39 + 8);
    v28(v9, v7);
    v28(v12, v7);
    DenseVector.squaredMagnitude.getter(v34, v7, AssociatedConformanceWitness);
    v29 = v37;
    sub_237EF8D30();
    v28(v12, v7);
    v28(v27, v7);
    v30 = v40;
    v25 = sub_237EF8400();
    v28(v29, v7);
    v28(v30, v7);
    v28(v23, v7);
  }

  return v25 & 1;
}

uint64_t sub_237DC6814@<X0>(_BYTE *a6@<X8>)
{
  swift_getKeyPath();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for UnsafeVectorPointer(0, AssociatedTypeWitness, v8, v9);
  swift_getWitnessTable();
  v10 = sub_237EF8750();

  *a6 = v10 & 1;
  return result;
}

uint64_t sub_237DC6910@<X0>(_BYTE *a3@<X8>)
{
  OUTLINED_FUNCTION_12_7();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_237EF8380();
  *a3 = result & 1;
  return result;
}

uint64_t sub_237DC69A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = type metadata accessor for OptimizerState(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, v2 + v4, v8);
}

unint64_t sub_237DC6AD0()
{
  result = qword_27DEB3590[0];
  if (!qword_27DEB3590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DEB3590);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_12_38()
{

  return sub_237EF9CE0();
}

void sub_237DC6DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  v21 = v20;
  v23 = v22;
  v162 = v24;
  v145 = v25;
  v132 = v26;
  v155 = v27;
  v131 = v28;
  v140 = *(v20 + 16);
  OUTLINED_FUNCTION_40_10(v140);
  v157 = v29;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v30);
  v32 = &v131 - v31;
  v33 = *(v21 + 8);
  v34 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v35);
  v37 = &v131 - v36;
  OUTLINED_FUNCTION_1_1();
  v154 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_8_16();
  v153 = v41;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_8_16();
  v164 = v43;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8_16();
  v144 = v45;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8_16();
  v151 = v47;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8_16();
  v150 = v49;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_8_16();
  v149 = v52;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_8_16();
  v148 = v54;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v55);
  v57 = &v131 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = &v131 - v59;
  MEMORY[0x28223BE20](v61);
  v63 = &v131 - v62;
  MEMORY[0x28223BE20](v64);
  v66 = &v131 - v65;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_8_16();
  v147 = v68;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v69);
  v71 = &v131 - v70;
  OUTLINED_FUNCTION_14_19();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v137 = v34;
  v135 = AssociatedConformanceWitness;
  sub_237EF9FA0();
  v139 = v71;
  v136 = v37;
  OUTLINED_FUNCTION_18_16();
  v138 = v33;
  sub_237EF9CE0();
  OUTLINED_FUNCTION_34_9();
  v156 = swift_getAssociatedConformanceWitness();
  v152 = v32;
  sub_237EF9FB0();
  OUTLINED_FUNCTION_18_16();
  sub_237EF9D20();
  v73 = *(v159 + 8);
  OUTLINED_FUNCTION_20_30();
  sub_237EF9760();
  OUTLINED_FUNCTION_46_11();
  sub_237EF8D30();
  v75 = (v154 + 8);
  v74 = *(v154 + 1);
  v76 = OUTLINED_FUNCTION_11_19();
  v74(v76);
  (v74)(v60, v23);
  v158 = v66;
  OUTLINED_FUNCTION_20_30();
  sub_237EF9750();
  v77 = OUTLINED_FUNCTION_23_12();
  v74(v77);
  OUTLINED_FUNCTION_20_30();
  sub_237EF9750();
  (v74)(v66, v23);
  OUTLINED_FUNCTION_24_24();
  sub_237EF9FB0();
  OUTLINED_FUNCTION_18_16();
  sub_237EF9D20();
  OUTLINED_FUNCTION_20_30();
  sub_237EF9760();
  OUTLINED_FUNCTION_46_11();
  sub_237EF8D30();
  v134 = v57;
  v78 = OUTLINED_FUNCTION_11_19();
  v74(v78);
  (v74)(v60, v23);
  OUTLINED_FUNCTION_20_30();
  sub_237EF9760();
  v79 = OUTLINED_FUNCTION_23_12();
  v74(v79);
  OUTLINED_FUNCTION_24_24();
  sub_237EF9FB0();
  OUTLINED_FUNCTION_18_16();
  sub_237EF9D20();
  v80 = v145;
  sub_237EF8D30();
  v133 = v60;
  (v74)(v60, v23);
  v163 = v73;
  sub_237EF9760();
  v146 = v63;
  v81 = OUTLINED_FUNCTION_23_12();
  v74(v81);
  v82 = OUTLINED_FUNCTION_11_19();
  v161 = v74;
  v162 = v75;
  v74(v82);
  v83 = v154 + 16;
  v84 = *(v154 + 2);
  (v84)(v149, v80, v23);
  v143 = v83;
  v142 = v84;
  (v84)(v141);
  OUTLINED_FUNCTION_32_17(&unk_237F07D78, 256);
  OUTLINED_FUNCTION_7_52();
  sub_237EF9D20();
  OUTLINED_FUNCTION_32_17(&unk_237F155E8, 512);
  OUTLINED_FUNCTION_7_52();
  sub_237EF9D20();
  v85 = *(*(v140 + 24) + 8);
  sub_237EF9FF0();
  OUTLINED_FUNCTION_42_10();
  v155 = v85;
  if (sub_237EF8410())
  {
    v86 = &unk_237F07D78;
    v87 = 256;
  }

  else
  {
    v86 = &unk_237F155E8;
    v87 = 512;
  }

  OUTLINED_FUNCTION_32_17(v86, v87);
  OUTLINED_FUNCTION_7_52();
  sub_237EF9D20();
  v88 = (v154 + 32);
  v89 = 32;
  v132 = (v154 + 32);
  while (1)
  {
    v145 = v89;
    v90 = v158;
    OUTLINED_FUNCTION_42_10();
    sub_237EF9750();
    sub_237EF9FA0();
    v91 = v146;
    OUTLINED_FUNCTION_7_52();
    sub_237EF9CE0();
    sub_237EF8330();
    v92 = OUTLINED_FUNCTION_34_9();
    v93 = v161;
    v94 = v162;
    v161(v92);
    v93(v90, v23);
    OUTLINED_FUNCTION_47_8();
    v142();
    OUTLINED_FUNCTION_14_42();
    sub_237EF8D30();
    sub_237EF9750();
    v95 = OUTLINED_FUNCTION_34_9();
    (v93)(v95);
    v96 = OUTLINED_FUNCTION_14_19();
    (v93)(v96);
    v97 = *v88;
    v98 = OUTLINED_FUNCTION_41_10();
    v97(v98);
    OUTLINED_FUNCTION_14_42();
    sub_237EF8D30();
    sub_237EF9750();
    v99 = OUTLINED_FUNCTION_34_9();
    (v93)(v99);
    v100 = OUTLINED_FUNCTION_14_19();
    (v93)(v100);
    v101 = OUTLINED_FUNCTION_41_10();
    v97(v101);
    OUTLINED_FUNCTION_14_42();
    sub_237EF8D30();
    sub_237EF9750();
    v102 = v91;
    v103 = v164;
    v93(v102, v23);
    v104 = OUTLINED_FUNCTION_14_19();
    (v93)(v104);
    v105 = OUTLINED_FUNCTION_41_10();
    v154 = v97;
    v97(v105);
    if (sub_237EF8410())
    {
      v106 = v131;
      v107 = OUTLINED_FUNCTION_31_0();
      v108 = v161;
      v161(v107);
      v109 = v144;
      v110 = OUTLINED_FUNCTION_11_19();
      v108(v110);
      v94 = v142;
      (v142)(v109, v153, v23);
      (v94)(v106, v103, v23);
    }

    sub_237EF9760();
    v111 = sub_237EF8410();
    v112 = OUTLINED_FUNCTION_11_19();
    v161(v112);
    if (v111)
    {
      break;
    }

    sub_237EF9FB0();
    v113 = v158;
    OUTLINED_FUNCTION_18_16();
    sub_237EF9D20();
    OUTLINED_FUNCTION_44_10();
    sub_237EF8D30();
    v114 = v161;
    (v161)(v113, v23);
    OUTLINED_FUNCTION_31_17();
    OUTLINED_FUNCTION_24_24();
    sub_237EF9FB0();
    OUTLINED_FUNCTION_7_52();
    sub_237EF9D20();
    v115 = v133;
    sub_237EF8D30();
    v116 = OUTLINED_FUNCTION_14_19();
    v114(v116);
    sub_237EF9750();
    (v114)(v115, v23);
    v117 = OUTLINED_FUNCTION_23_12();
    v114(v117);
    (v114)(v94, v23);
    v118 = OUTLINED_FUNCTION_26_21();
    v88 = v132;
    v154(v118);
    OUTLINED_FUNCTION_31_17();
    OUTLINED_FUNCTION_20_30();
    sub_237EF9750();
    v119 = OUTLINED_FUNCTION_23_12();
    v114(v119);
    (v114)(v94, v23);
    v120 = OUTLINED_FUNCTION_26_21();
    v121 = v154;
    v154(v120);
    sub_237EF9FB0();
    v122 = v164;
    OUTLINED_FUNCTION_18_16();
    v123 = v151;
    sub_237EF9D20();
    OUTLINED_FUNCTION_26_21();
    v124 = sub_237EF8400();
    (v114)(v113, v23);
    (v114)(v94, v23);
    (v114)(v153, v23);
    if (v124)
    {
      v125 = v123;
    }

    else
    {
      v125 = v150;
    }

    v126 = OUTLINED_FUNCTION_31_0();
    v114(v126);
    v121(v125, v122, v23);
    v89 = v145 - 1;
    if (v145 == 1)
    {
      goto LABEL_14;
    }
  }

  v127 = v161;
  (v161)(v153, v23);
  v127(v103, v23);
LABEL_14:
  v128 = v161;
  (v161)(v144, v23);
  v129 = OUTLINED_FUNCTION_23_12();
  v128(v129);
  v130 = OUTLINED_FUNCTION_31_0();
  v128(v130);
  (v128)(v141, v23);
  (v128)(v149, v23);
  (v128)(v148, v23);
  (v128)(v147, v23);
  (v128)(v139, v23);
  OUTLINED_FUNCTION_38_0();
}

void sub_237DC7B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_37_0();
  v22 = v21;
  v153 = v23;
  v142 = v24;
  v149 = v26;
  v150 = v25;
  v158 = v27;
  v159 = v28;
  v151 = v29;
  v31 = v30;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1_1();
  v135 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v36);
  v152 = v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v154 = *(AssociatedConformanceWitness + 16);
  OUTLINED_FUNCTION_40_10(v154);
  v147 = v38;
  v146 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v39);
  v145 = &v122 - v40;
  OUTLINED_FUNCTION_1_1();
  v160 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_2();
  v144 = v43;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8_16();
  v143 = v45;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8_16();
  v148 = v47;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_22_1();
  v161 = v49;
  v156 = AssociatedConformanceWitness;
  v50 = *(AssociatedConformanceWitness + 8);
  v51 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v52);
  v54 = &v122 - v53;
  v55 = swift_getAssociatedConformanceWitness();
  v56.n128_u64[0] = 0x3F1A36E2EB1C432DLL;
  OUTLINED_FUNCTION_13_34(v56);
  OUTLINED_FUNCTION_6_54();
  sub_237EF9CE0();
  v155 = a21;
  v58 = type metadata accessor for LineSearch(0, v22, a21, v57);
  v59 = v31 + v58[9];
  v60.n128_u64[0] = 0x3FE6666666666666;
  OUTLINED_FUNCTION_13_34(v60);
  v128 = v59;
  OUTLINED_FUNCTION_6_54();
  sub_237EF9CE0();
  v61 = v58[10];
  v62.n128_u64[0] = 25.0;
  OUTLINED_FUNCTION_13_34(v62);
  v157 = v61;
  OUTLINED_FUNCTION_6_54();
  sub_237EF9CE0();
  v63 = v58[11];
  v64.n128_u64[0] = 0x3E112E0BE826D695;
  OUTLINED_FUNCTION_13_34(v64);
  OUTLINED_FUNCTION_6_54();
  sub_237EF9CE0();
  v131 = v51;
  v129 = v55;
  sub_237EF9FA0();
  v130 = v54;
  OUTLINED_FUNCTION_6_54();
  v133 = v50;
  v65 = v63;
  sub_237EF9CE0();
  *(v31 + v58[13]) = 20;
  v66 = v58[27];
  v126 = v58[26];
  v127 = v66;
  *(v31 + v58[28]) = 1;
  v67 = *(v152 - 8);
  (*(v67 + 16))(v31 + v58[14], v151);
  *(v31 + v58[15]) = v158;
  v68 = v31 + v58[17];
  v69 = v31;
  v70 = v160 + 16;
  v71 = *(v160 + 16);
  v71(v68, v150, AssociatedTypeWitness);
  *(v69 + v58[16]) = v149;
  *(v69 + v58[18]) = v153;
  v72 = *(*(v154 + 24) + 8);

  v158 = v69;
  OUTLINED_FUNCTION_36_13();
  if ((sub_237EF8420() & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_36_13();
  if ((sub_237EF8430() & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v140 = v71;
  v137 = v68;
  v138 = v70;
  v125 = v67;
  sub_237EF9760();
  v157 = v58;
  v124 = swift_getAssociatedConformanceWitness();
  sub_237EF9FB0();
  v141 = v72;
  v73 = v143;
  OUTLINED_FUNCTION_23_29();
  sub_237EF9D20();
  v74 = v144;
  sub_237EF9760();
  v75 = v148;
  OUTLINED_FUNCTION_14_19();
  sub_237EF8D30();
  v76 = v160 + 8;
  v77 = *(v160 + 8);
  v77(v74, AssociatedTypeWitness);
  v77(v73, AssociatedTypeWitness);
  sub_237EF9750();
  v154 = v76;
  v139 = v77;
  v77(v75, AssociatedTypeWitness);
  if ((sub_237EF8430() & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v78 = v158;
  v79 = v132;
  v140(v132, v158 + v65, AssociatedTypeWitness);
  v80 = TupleTypeMetadata2;
  v81 = *(v160 + 32);
  v81(v79 + *(TupleTypeMetadata2 + 48), v161, AssociatedTypeWitness);
  v123 = v65;
  OUTLINED_FUNCTION_44_10();
  v83 = v136;
  (*(v82 + 16))(v136, v79, v80);
  v84 = *(v80 + 48);
  v85 = v78 + v157[24];
  v86 = OUTLINED_FUNCTION_31_0();
  (v81)(v86);
  v87 = v139;
  v139(v83 + v84, AssociatedTypeWitness);
  v88 = v79;
  v89 = v148;
  (*(v65 + 32))(v83, v88, v80);
  v90 = *(v80 + 48);
  v91 = sub_237EF84E0();
  v81(v85 + *(v91 + 36), v83 + v90, AssociatedTypeWitness);
  v87(v83, AssociatedTypeWitness);
  v92 = v161;
  v93 = v156;
  dot<A>(_:_:)(v142, v153, AssociatedTypeWitness, v156);

  OUTLINED_FUNCTION_29_18();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_23_29();
  sub_237EF9CE0();
  LOBYTE(v83) = sub_237EF8410();
  v87(v89, AssociatedTypeWitness);
  if (v83)
  {
    v94 = v92;
    v95 = v158;
    v96 = v123;
    v97 = v140;
    v140(v89, v158 + v123, AssociatedTypeWitness);
    v98 = v89;
    v99 = v143;
    v97(v143, v137, AssociatedTypeWitness);
    v100 = v144;
    v97(v144, v94, AssociatedTypeWitness);
    v101 = v152;
    sub_237DC9CA0(v98, v99, v100, v152, AssociatedTypeWitness, v155, v93, v95 + v157[21]);
    v97(v98, v95 + v96, AssociatedTypeWitness);
    v97(v99, v137, AssociatedTypeWitness);
    v97(v100, v161, AssociatedTypeWitness);
    OUTLINED_FUNCTION_35_11();
    sub_237DC9CA0(v102, v103, v104, v105, v106, v155, v156, v107);
    v97(v98, v159, AssociatedTypeWitness);
    v108 = OUTLINED_FUNCTION_41_10();
    (v97)(v108);
    sub_237EF9FB0();
    OUTLINED_FUNCTION_23_29();
    sub_237EF9D20();
    v109 = v157;
    OUTLINED_FUNCTION_35_11();
    v110 = v156;
    sub_237DC9CA0(v111, v112, v113, v114, v115, v155, v156, v116);
    v117 = v109;
    v118 = (v95 + v109[29]);
    sub_237E5BC30(AssociatedTypeWitness, v110, v118);

    *v118 = v149;

    v118[1] = v142;
    *(v95 + v126) = 0;
    *(v95 + v127) = 1;
    v119 = v161;
    sub_237EF8D30();
    sub_237EF8D30();
    v120 = v117[30];
    sub_237DC9D84();
    v121 = v139;
    v139(v150, AssociatedTypeWitness);
    (*(v125 + 8))(v151, v101);
    v121(v119, AssociatedTypeWitness);
    (*(v160 + 40))(v95 + v120, v159, AssociatedTypeWitness);
    OUTLINED_FUNCTION_38_0();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_237DC860C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  v22 = v21;
  v171 = v23;
  v25 = *(v21 + 16);
  v24 = *(v21 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_12_7();
  v198[0] = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v31);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v218 = *(AssociatedConformanceWitness + 16);
  v199 = *(v218 + 16);
  v219 = *(v199 + 8);
  v180 = *(v219 + 16);
  v179 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_17(v169 - v34);
  OUTLINED_FUNCTION_12_7();
  v177 = sub_237EF90F0();
  OUTLINED_FUNCTION_1_1();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v39);
  v211 = *(AssociatedConformanceWitness + 8);
  v210 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_17(v42);
  OUTLINED_FUNCTION_1_1();
  v172 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_8_16();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_8_16();
  v216 = v50;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_8_16();
  v220 = v52;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_22_1();
  v214 = v54;
  v55 = v20 + v22[30];
  v200 = v25;
  v230 = v25;
  v231 = AssociatedTypeWitness;
  v56 = v55;
  v201 = v24;
  v232 = v24;
  v233 = AssociatedConformanceWitness;
  v221 = AssociatedConformanceWitness;
  v173 = type metadata accessor for LineSearch.LineSearchResult(0, &v230);
  v57 = v173[14];
  v228 = v22;
  v58 = *(v56 + v57);
  v194 = v22[13];
  v229 = v20;
  if (v58 >= *(v20 + v194))
  {
LABEL_32:
    if (qword_27DEAD0C8 != -1)
    {
      goto LABEL_41;
    }

    goto LABEL_33;
  }

  v59 = v228;
  v193 = v228[16];
  v60 = v229 + v228[23];
  v192 = v228[18];
  v191 = (v229 + v228[29]);
  OUTLINED_FUNCTION_32_12();
  v189 = *(v61 + 48);
  v190 = v61 + 48;
  v188 = v173[15];
  v62 = v59[15];
  v187 = v59[14];
  v186 = v62;
  v63 = OUTLINED_FUNCTION_12_7();
  v195 = v64;
  v65 = v221;
  v185 = *(type metadata accessor for OptimizerState(v63, v66, v221, v67) + 48);
  v230 = v200;
  v231 = AssociatedTypeWitness;
  v232 = v24;
  v233 = v65;
  v68 = v195;
  v69 = type metadata accessor for LineSearch.LineSearchEvaluation(0, &v230);
  v209 = v59[12];
  v215 = *(v69 + 52);
  v174 = v69;
  v204 = *(v69 + 56);
  v184 = v59[17];
  v224 = (v172 + 8);
  v222 = v172 + 40;
  v208 = (v172 + 16);
  v207 = (v172 + 32);
  v175 = v36 + 8;
  v178 = (v172 + 24);
  v182 = v28 + 16;
  v181 = v28 + 32;
  v205 = v59[19];
  v183 = v56;
  v226 = v60;
  while (1)
  {
    v70 = *(v229 + v193);
    v71 = *(v229 + v192);
    v72 = OUTLINED_FUNCTION_14_19();
    v73 = v221;
    v75 = static DenseVector.* infix(_:_:)(v72, v74);
    v76 = static DenseVector.+ infix(_:_:)(v70, v75, AssociatedTypeWitness, v73);

    v77 = v191;

    *v77 = v76;
    v189(v77, v200, v201);
    *(v56 + v68) = v58 + 1;
    v78 = *(v56 + v188);
    v79 = __OFADD__(v78, 1);
    v80 = v78 + 1;
    if (v79)
    {
      break;
    }

    v217 = v71;
    *(v56 + v188) = v80;
    v81 = v229;
    v82 = *(v229 + v186);
    v83 = OUTLINED_FUNCTION_25_23();
    v84 = v221;
    sub_237DC0DA8(v83, v85, v86, v221);
    sub_237DC0A48(*v77, v82, AssociatedTypeWitness, v84, v220);
    OUTLINED_FUNCTION_43_12(&v215);
    v87 = v214;
    OUTLINED_FUNCTION_10_45();
    v225 = v88;
    sub_237EF9750();
    v89 = *v224;
    v90 = OUTLINED_FUNCTION_16_38();
    v89(v90);
    OUTLINED_FUNCTION_3_48();
    v223 = v91;
    v91();
    v206 = *v208;
    v206(v87, v81 + v209, AssociatedTypeWitness);
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_44_10();
    v212 = v92;
    sub_237EF9FA0();
    OUTLINED_FUNCTION_30_25();
    sub_237EF9CE0();
    LOBYTE(v82) = sub_237EF8520();
    v93 = OUTLINED_FUNCTION_16_38();
    v89(v93);
    v94 = OUTLINED_FUNCTION_12_11();
    v227 = v89;
    v89(v94);
    if ((v82 & 1) == 0)
    {
      OUTLINED_FUNCTION_37_12(v215);
      v95 = v209;
      v96 = v229;
      OUTLINED_FUNCTION_10_45();
      sub_237EF8D40();
      static DenseVector.*= infix(_:_:)((v77 + 1), v96 + v95, AssociatedTypeWitness, v221);
    }

    dot<A>(_:_:)(v77[1], v217, AssociatedTypeWitness, v221);
    OUTLINED_FUNCTION_3_48();
    v223();
    OUTLINED_FUNCTION_10_45();
    sub_237EF8D30();
    v97 = v216;
    OUTLINED_FUNCTION_3_48();
    sub_237EF9750();
    v98 = OUTLINED_FUNCTION_12_11();
    v99 = v227;
    v227(v98);
    if (sub_237DC9EA0(v97, v228))
    {
      v99(v216, AssociatedTypeWitness);
      OUTLINED_FUNCTION_19_1();
      v56 = v183;
      v168(v183, v226, AssociatedTypeWitness);
      v167 = v171;
      v166 = v173;
      goto LABEL_37;
    }

    v100 = v228[27];
    if (*(v229 + v100) != 1)
    {
      goto LABEL_15;
    }

    v97 = *(*(v218 + 24) + 8);
    OUTLINED_FUNCTION_37_12(v215);
    OUTLINED_FUNCTION_10_45();
    if (sub_237EF8430())
    {
      OUTLINED_FUNCTION_10_45();
      if (sub_237EF8420())
      {
        *(v229 + v100) = 0;
LABEL_15:
        OUTLINED_FUNCTION_29_18();
        sub_237DCA4E8(v228, v113);
        if (__swift_getEnumTagSinglePayload(v97, 1, AssociatedTypeWitness) == 1)
        {
          OUTLINED_FUNCTION_19_1();
          v114(v97, v177);
          v115 = v228;
          v116 = v229;
          (*v178)(v226, v229 + v228[21], AssociatedTypeWitness);
          *(v116 + v115[28]) = 0;
        }

        else
        {
          OUTLINED_FUNCTION_19_1();
          v117 = v176;
          v118 = OUTLINED_FUNCTION_31_0();
          v119(v118);
          (v223)(v226, v117, AssociatedTypeWitness);
        }

        goto LABEL_18;
      }
    }

    v101 = v229 + v228[21];
    v102 = *(v174 + 52);
    OUTLINED_FUNCTION_37_12(v215);
    OUTLINED_FUNCTION_10_45();
    if ((sub_237EF8430() & 1) == 0)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_37_12(v215);
    OUTLINED_FUNCTION_10_45();
    if ((sub_237EF8400() & 1) == 0)
    {
      goto LABEL_15;
    }

    v103 = v229;
    OUTLINED_FUNCTION_10_45();
    sub_237EF8D30();
    v217 = v102;
    OUTLINED_FUNCTION_3_48();
    sub_237EF9780();
    v104 = OUTLINED_FUNCTION_12_11();
    (v99)(v104);
    v105 = v174;
    v169[3] = *(v174 + 56);
    sub_237EF9780();
    v106 = v103 + v228[22];
    sub_237EF8D30();
    v169[2] = *(v105 + 52);
    OUTLINED_FUNCTION_3_48();
    sub_237EF9780();
    v107 = OUTLINED_FUNCTION_12_11();
    v227(v107);
    v108 = *(v105 + 56);
    v213 = v106;
    v169[1] = v108;
    sub_237EF9780();
    sub_237EF8D30();
    OUTLINED_FUNCTION_3_48();
    sub_237EF9780();
    v109 = OUTLINED_FUNCTION_12_11();
    v227(v109);
    sub_237EF9780();
    v110 = v170;
    sub_237DCA4E8(v228, v170);
    if (__swift_getEnumTagSinglePayload(v110, 1, AssociatedTypeWitness) == 1)
    {
      OUTLINED_FUNCTION_19_1();
      v111(v110, v177);
      OUTLINED_FUNCTION_19_1();
      v112(v226, v101, AssociatedTypeWitness);
      *(v229 + v228[28]) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_19_1();
      v156 = v169[0];
      v157(v169[0], v110, AssociatedTypeWitness);
      v158 = v156;
      v87 = v214;
      (v223)(v226, v158, AssociatedTypeWitness);
    }

    OUTLINED_FUNCTION_10_45();
    sub_237EF8D30();
    OUTLINED_FUNCTION_3_48();
    sub_237EF9770();
    v159 = OUTLINED_FUNCTION_12_11();
    v160 = v227;
    v227(v159);
    OUTLINED_FUNCTION_43_12(v198);
    OUTLINED_FUNCTION_11_42();
    sub_237EF9770();
    sub_237EF8D30();
    OUTLINED_FUNCTION_43_12(&v197);
    OUTLINED_FUNCTION_3_48();
    sub_237EF9770();
    v161 = OUTLINED_FUNCTION_12_11();
    v160(v161);
    OUTLINED_FUNCTION_43_12(&v196);
    v99 = v160;
    OUTLINED_FUNCTION_11_42();
    sub_237EF9770();
LABEL_18:
    LODWORD(v213) = *(v229 + v228[26]);
    if (v213 == 1)
    {
      v120 = v228[21];
      v217 = v228[22];
      v206 = v120;
      OUTLINED_FUNCTION_10_45();
      sub_237EF9760();
      v121 = *(*(v218 + 24) + 8);
      OUTLINED_FUNCTION_16_38();
      sub_237EF9FD0();
      v122 = OUTLINED_FUNCTION_16_38();
      (v99)(v122);
      OUTLINED_FUNCTION_29_18();
      sub_237EF9FA0();
      v123 = v203;
      OUTLINED_FUNCTION_30_25();
      sub_237EF9CE0();
      OUTLINED_FUNCTION_32_12();
      sub_237EF9FA0();
      v124 = v198[1];
      OUTLINED_FUNCTION_30_25();
      sub_237EF9CE0();
      OUTLINED_FUNCTION_29_18();
      sub_237EF8330();
      (v227)(v124, AssociatedTypeWitness);
      v125 = OUTLINED_FUNCTION_33_14();
      v123(v125);
      v212 = v228[25];
      sub_237EF8D30();
      v126 = OUTLINED_FUNCTION_16_38();
      v123(v126);
      OUTLINED_FUNCTION_3_48();
      v127 = sub_237EF8420();
      v128 = OUTLINED_FUNCTION_12_11();
      v123(v128);
      (v123)(v87, AssociatedTypeWitness);
      if (v127)
      {
        v123 = v202;
        OUTLINED_FUNCTION_10_45();
        sub_237EF9760();
        OUTLINED_FUNCTION_16_38();
        swift_getAssociatedConformanceWitness();
        sub_237EF9FB0();
        OUTLINED_FUNCTION_32_12();
        OUTLINED_FUNCTION_30_25();
        sub_237EF9D20();
        OUTLINED_FUNCTION_3_48();
        sub_237EF8330();
        v129 = OUTLINED_FUNCTION_12_11();
        v227(v129);
        v130 = OUTLINED_FUNCTION_33_14();
        v123(v130);
        OUTLINED_FUNCTION_3_48();
        sub_237EF9750();
        v131 = OUTLINED_FUNCTION_12_11();
        v123(v131);
        OUTLINED_FUNCTION_45_9();
        v223();
      }

      v56 = v217;
      OUTLINED_FUNCTION_10_45();
      sub_237EF9760();
      OUTLINED_FUNCTION_12_11();
      sub_237EF9FD0();
      v132 = OUTLINED_FUNCTION_12_11();
      v123(v132);
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_45_9();
      v223();
      OUTLINED_FUNCTION_11_42();
      sub_237EF9FF0();
      OUTLINED_FUNCTION_11_42();
      sub_237EF9FE0();
      OUTLINED_FUNCTION_3_48();
      if ((sub_237EF8430() & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v206(v87, v229 + v228[21], AssociatedTypeWitness);
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_44_10();
      sub_237EF9FB0();
      OUTLINED_FUNCTION_32_12();
      OUTLINED_FUNCTION_30_25();
      sub_237EF9D20();
      OUTLINED_FUNCTION_29_18();
      v56 = v226;
      sub_237EF9760();
      v133 = v202;
      sub_237EF8D30();
      v134 = OUTLINED_FUNCTION_16_38();
      v227(v134);
      v135 = OUTLINED_FUNCTION_12_11();
      v227(v135);
      sub_237EF9750();
      (v227)(v133, AssociatedTypeWitness);
      v121 = *(*(v218 + 24) + 8);
      OUTLINED_FUNCTION_3_48();
      if ((sub_237EF8430() & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v217 = v121;
    v136 = *v207;
    OUTLINED_FUNCTION_45_9();
    v136();
    v137 = v198[0];
    OUTLINED_FUNCTION_3_48();
    v136();
    OUTLINED_FUNCTION_19_1();
    v138 = v197;
    v139 = OUTLINED_FUNCTION_11_19();
    v140(v139);
    v141 = v228;
    v212 = *(v137 + 48);
    v142 = v229 + v228[24];
    OUTLINED_FUNCTION_12_7();
    v143 = sub_237EF84E0();
    OUTLINED_FUNCTION_4();
    (*(v144 + 8))(v142, v143);
    OUTLINED_FUNCTION_45_9();
    v136();
    OUTLINED_FUNCTION_47_8();
    (v227)(v138 + v145, AssociatedTypeWitness);
    OUTLINED_FUNCTION_19_1();
    v146 = OUTLINED_FUNCTION_11_19();
    v147(v146);
    v148 = *(v137 + 48);
    v149 = v226;
    v212 = v143;
    (v136)(v142 + *(v143 + 36), v138 + v148, AssociatedTypeWitness);
    v150 = v227;
    (v227)(v138, AssociatedTypeWitness);
    v206 = v141[11];
    OUTLINED_FUNCTION_11_42();
    sub_237EF9FE0();
    v151 = OUTLINED_FUNCTION_25_23();
    v152 = v223;
    (v223)(v151);
    OUTLINED_FUNCTION_11_42();
    sub_237EF9FF0();
    v153 = OUTLINED_FUNCTION_25_23();
    (v152)(v153);
    if (v213)
    {
      OUTLINED_FUNCTION_47_8();
      OUTLINED_FUNCTION_10_45();
      sub_237EF9760();
      OUTLINED_FUNCTION_11_42();
      v154 = sub_237EF8430();
      v155 = OUTLINED_FUNCTION_12_11();
      v150(v155);
      (v150)(v216, AssociatedTypeWitness);
      v68 = v195;
      if (v154)
      {
        (*v178)(v149, v229 + v228[21], AssociatedTypeWitness);
      }
    }

    else
    {
      (v150)(v216, AssociatedTypeWitness);
      v68 = v195;
    }

    v56 = v183;
    v58 = *(v183 + v68);
    if (v58 >= *(v229 + v194))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_33:
  v162 = sub_237EF7DB0();
  __swift_project_value_buffer(v162, qword_27DEE2458);
  v163 = sub_237EF7D90();
  v164 = sub_237EF8F80();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    *v165 = 0;
    _os_log_impl(&dword_237C51000, v163, v164, "The optimizer reached the function evaluation limit when adjusting the step size.", v165, 2u);
    MEMORY[0x2383E2DF0](v165, -1, -1);
  }

  (*(v172 + 24))(v56, v229 + v228[21], AssociatedTypeWitness);
  v166 = v173;
  *(v56 + v173[13]) = 1;
  v167 = v171;
LABEL_37:
  (*(*(v166 - 1) + 16))(v167, v56);
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237DC9CA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = *(*(a5 - 8) + 32);
  v15(a8, a1, a5);
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  v16 = type metadata accessor for LineSearch.LineSearchEvaluation(0, v18);
  v15(a8 + *(v16 + 52), a2, a5);
  return (v15)(a8 + *(v16 + 56), a3, a5);
}

void sub_237DC9D84()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  v12[0] = v7;
  v12[1] = v5;
  v12[2] = v3;
  v12[3] = v1;
  v11 = type metadata accessor for LineSearch.LineSearchResult(0, v12);
  *(v9 + v11[13]) = 0;
  *(v9 + v11[14]) = 0;
  *(v9 + v11[15]) = 0;
  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237DC9EA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v5 = *(a2 + 16);
  v36 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v33 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  v11 = *(v2 + *(a2 + 104));
  if (v11 == 1 && ((swift_getAssociatedConformanceWitness(), (sub_237EF8430() & 1) != 0) || (sub_237EF84E0(), (sub_237EF8420() & 1) != 0)) || (*(v2 + *(a2 + 112)) & 1) == 0)
  {
    if (qword_27DEAD0C8 != -1)
    {
      swift_once();
    }

    v19 = sub_237EF7DB0();
    __swift_project_value_buffer(v19, qword_27DEE2458);
    v20 = sub_237EF7D90();
    v21 = sub_237EF8F80();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_237C51000, v20, v21, "Failed to find a suitable step size. Tolerances may be too small or dataset may be poorly scaled. This typically happens when the number of features is much larger than the number of training examples. Consider pruning features manually or increasing the regularization value.", v22, 2u);
      MEMORY[0x2383E2DF0](v22, -1, -1);
    }

    v18 = v3 + *(a2 + 120);
    v23 = v36;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v37 = v5;
    v38 = AssociatedTypeWitness;
    v39 = v23;
    v40 = AssociatedConformanceWitness;
    goto LABEL_23;
  }

  v12 = swift_getAssociatedConformanceWitness();
  v31[2] = *(v12 + 16);
  v32 = v12;
  if (sub_237EF8420())
  {
    v37 = v5;
    v38 = AssociatedTypeWitness;
    v39 = v36;
    v40 = v32;
    type metadata accessor for LineSearch.LineSearchEvaluation(0, &v37);
    if (sub_237EF8430() & 1) != 0 && (sub_237EF8430())
    {
      goto LABEL_27;
    }
  }

  v31[1] = *(a2 + 44);
  if (sub_237EF8430() & 1) != 0 && ((v37 = v5, v38 = AssociatedTypeWitness, v39 = v36, v40 = v32, type metadata accessor for LineSearch.LineSearchEvaluation(0, &v37), (sub_237EF8400()) || (sub_237EF8420()) || v11 && (sub_237EF84E0(), sub_237EF9760(), v13 = sub_237EF8430(), (*(v34 + 8))(v10, AssociatedTypeWitness), (v13))
  {
    if (qword_27DEAD0C8 != -1)
    {
      swift_once();
    }

    v14 = sub_237EF7DB0();
    __swift_project_value_buffer(v14, qword_27DEE2458);
    v15 = sub_237EF7D90();
    v16 = sub_237EF8F80();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_237C51000, v15, v16, "Reached the minimum allowed step size.", v17, 2u);
      MEMORY[0x2383E2DF0](v17, -1, -1);
    }

    v18 = v3 + *(a2 + 120);
    v37 = v5;
    v38 = AssociatedTypeWitness;
    v39 = v36;
    v40 = v32;
LABEL_23:
    v25 = type metadata accessor for LineSearch.LineSearchResult(0, &v37);
    v26 = 0;
LABEL_24:
    *(v18 + *(v25 + 52)) = v26;
    return 1;
  }

  v37 = v5;
  v38 = AssociatedTypeWitness;
  v39 = v36;
  v40 = v32;
  type metadata accessor for LineSearch.LineSearchEvaluation(0, &v37);
  if (sub_237EF8430())
  {
    sub_237EF9FD0();
    v28 = v33;
    sub_237EF9410();
    v29 = sub_237EF8430();
    v30 = *(v34 + 8);
    v30(v28, AssociatedTypeWitness);
    v30(v10, AssociatedTypeWitness);
    if (v29)
    {
LABEL_27:
      v18 = v3 + *(a2 + 120);
      v37 = v5;
      v38 = AssociatedTypeWitness;
      v39 = v36;
      v40 = v32;
      v25 = type metadata accessor for LineSearch.LineSearchResult(0, &v37);
      v26 = 1;
      goto LABEL_24;
    }
  }

  return 0;
}