uint64_t sub_22317884C(uint64_t a1)
{
  v2 = sub_223179DF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223178888(uint64_t a1)
{
  v2 = sub_223179DF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231788C4(uint64_t a1)
{
  v2 = sub_223179E9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223178900(uint64_t a1)
{
  v2 = sub_223179E9C();

  return MEMORY[0x2821FE720](a1, v2);
}

void QueryType.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0593A0, &qword_223211E48);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0593A8, &qword_223211E50);
  OUTLINED_FUNCTION_9();
  v15 = v7;
  v16 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_16();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0593B0, &qword_223211E58);
  OUTLINED_FUNCTION_9();
  v10 = v9;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v12 = *(v0 + 8);
  OUTLINED_FUNCTION_29(v4, v4[3]);
  sub_223179DA0();
  OUTLINED_FUNCTION_50_0();
  sub_2232007A4();
  if (v12)
  {
    sub_223179DF4();
    OUTLINED_FUNCTION_19_3();
    sub_2232005B4();
    sub_223179E48();
    sub_223200654();
    v13 = OUTLINED_FUNCTION_40_1();
    v14(v13);
  }

  else
  {
    sub_223179E9C();
    OUTLINED_FUNCTION_19_3();
    sub_2232005B4();
    (*(v15 + 8))(v2, v16);
  }

  (*(v10 + 8))(v1, v17);
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_9_0();
}

void QueryType.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  v54 = v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0593D8, &qword_223211E60);
  OUTLINED_FUNCTION_9();
  v55 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_11();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0593E0, &qword_223211E68);
  OUTLINED_FUNCTION_9();
  v53 = v9;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0593E8, &qword_223211E70);
  OUTLINED_FUNCTION_9();
  v56 = v12;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  OUTLINED_FUNCTION_5_3(v4);
  sub_223179DA0();
  sub_223200794();
  if (!v0)
  {
    v50 = v8;
    v51 = v2;
    v52 = v1;
    v16 = v57;
    v17 = sub_223200594();
    sub_2230E0B80(v17, 0);
    if (v19 != v18 >> 1)
    {
      OUTLINED_FUNCTION_32();
      OUTLINED_FUNCTION_61_0();
      if (v22 == v23)
      {
        __break(1u);
        return;
      }

      v49 = *(v21 + v20);
      sub_2230E0B40(v20 + 1);
      v25 = v24;
      v27 = v26;
      swift_unknownObjectRelease();
      v28 = v25 == v27 >> 1;
      v29 = v55;
      if (v28)
      {
        if (v49)
        {
          LOBYTE(v58) = 1;
          sub_223179DF4();
          v30 = v52;
          v31 = v11;
          OUTLINED_FUNCTION_11_12();
          sub_223200474();
          v32 = v54;
          sub_223179EF0();
          OUTLINED_FUNCTION_19_3();
          sub_223200554();
          v43 = v56;
          swift_unknownObjectRelease();
          (*(v29 + 8))(v30, v16);
          (*(v43 + 8))(v15, v31);
          v46 = v58;
          v47 = v59;
        }

        else
        {
          LOBYTE(v58) = 0;
          sub_223179E9C();
          v41 = v51;
          v42 = v11;
          OUTLINED_FUNCTION_11_12();
          sub_223200474();
          v32 = v54;
          swift_unknownObjectRelease();
          (*(v53 + 8))(v41, v50);
          v44 = OUTLINED_FUNCTION_15_0();
          v45(v44, v42);
          v46 = 0;
          v47 = 0;
        }

        *v32 = v46;
        v32[1] = v47;
        v40 = v4;
        goto LABEL_11;
      }
    }

    v33 = sub_2232003A4();
    OUTLINED_FUNCTION_26(v33, MEMORY[0x277D841A0]);
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v35 = &type metadata for QueryType;
    v36 = sub_223200484();
    OUTLINED_FUNCTION_48(v36);
    OUTLINED_FUNCTION_5_0();
    (*(v37 + 104))(v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    v38 = OUTLINED_FUNCTION_15_0();
    v39(v38, v11);
  }

  v40 = v4;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v40);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_223179150(uint64_t a1)
{
  v2 = sub_223179F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317918C(uint64_t a1)
{
  v2 = sub_223179F44();

  return MEMORY[0x2821FE720](a1, v2);
}

void AjaxRewrite.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0593F8, &qword_223211E78);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_29(v1, v1[3]);
  sub_223179F44();
  OUTLINED_FUNCTION_58();
  sub_2232007A4();
  sub_2232005F4();
  v3 = OUTLINED_FUNCTION_40_1();
  v4(v3);
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_9_0();
}

void AjaxRewrite.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059408, &qword_223211E80);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_3(v2);
  sub_223179F44();
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (!v0)
  {
    v6 = sub_2232004F4();
    v8 = v7;
    v9 = OUTLINED_FUNCTION_40_1();
    v10(v9);
    *v4 = v6;
    v4[1] = v8;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_223179434(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return sub_22317716C();
  }

  return result;
}

uint64_t sub_223179448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >> 1 != 0xFFFFFFFF)
  {
    return sub_22311DE7C(a1, a2, a3, a4, a5);
  }

  return a1;
}

unint64_t sub_22317945C()
{
  result = qword_27D059208;
  if (!qword_27D059208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059208);
  }

  return result;
}

unint64_t sub_2231794B0()
{
  result = qword_27D059210;
  if (!qword_27D059210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059210);
  }

  return result;
}

unint64_t sub_223179504()
{
  result = qword_27D059230;
  if (!qword_27D059230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059230);
  }

  return result;
}

unint64_t sub_223179558()
{
  result = qword_27D059238;
  if (!qword_27D059238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059238);
  }

  return result;
}

unint64_t sub_2231795AC()
{
  result = qword_27D059248;
  if (!qword_27D059248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059248);
  }

  return result;
}

unint64_t sub_223179600()
{
  result = qword_27D059258;
  if (!qword_27D059258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059258);
  }

  return result;
}

unint64_t sub_223179654()
{
  result = qword_27D059260;
  if (!qword_27D059260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059260);
  }

  return result;
}

unint64_t sub_2231796A8()
{
  result = qword_27D059270;
  if (!qword_27D059270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059270);
  }

  return result;
}

unint64_t sub_2231796FC()
{
  result = qword_27D059290;
  if (!qword_27D059290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059290);
  }

  return result;
}

unint64_t sub_223179750()
{
  result = qword_27D059298;
  if (!qword_27D059298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059298);
  }

  return result;
}

unint64_t sub_2231797A4()
{
  result = qword_27D0592A0;
  if (!qword_27D0592A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0592A0);
  }

  return result;
}

unint64_t sub_2231797F8()
{
  result = qword_27D0592A8;
  if (!qword_27D0592A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0592A8);
  }

  return result;
}

unint64_t sub_22317984C()
{
  result = qword_27D0592B0;
  if (!qword_27D0592B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0592B0);
  }

  return result;
}

unint64_t sub_2231798A0()
{
  result = qword_27D0592D0;
  if (!qword_27D0592D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0592D0);
  }

  return result;
}

unint64_t sub_2231798F4()
{
  result = qword_27D0592D8;
  if (!qword_27D0592D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0592D8);
  }

  return result;
}

unint64_t sub_223179948()
{
  result = qword_27D0592E8;
  if (!qword_27D0592E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0592E8);
  }

  return result;
}

unint64_t sub_22317999C()
{
  result = qword_27D0592F0;
  if (!qword_27D0592F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0592F0);
  }

  return result;
}

unint64_t sub_2231799F0()
{
  result = qword_27D0592F8;
  if (!qword_27D0592F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0592F8);
  }

  return result;
}

unint64_t sub_223179A44()
{
  result = qword_27D059300;
  if (!qword_27D059300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059300);
  }

  return result;
}

unint64_t sub_223179A98()
{
  result = qword_27D059310;
  if (!qword_27D059310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059310);
  }

  return result;
}

unint64_t sub_223179AEC()
{
  result = qword_27D059318;
  if (!qword_27D059318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059318);
  }

  return result;
}

unint64_t sub_223179B40()
{
  result = qword_27D059320;
  if (!qword_27D059320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059320);
  }

  return result;
}

unint64_t sub_223179BFC()
{
  result = qword_27D059350;
  if (!qword_27D059350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059350);
  }

  return result;
}

unint64_t sub_223179C50()
{
  result = qword_27D059358;
  if (!qword_27D059358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059358);
  }

  return result;
}

unint64_t sub_223179CA4()
{
  result = qword_27D059360;
  if (!qword_27D059360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059360);
  }

  return result;
}

unint64_t sub_223179CF8()
{
  result = qword_27D059368;
  if (!qword_27D059368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059368);
  }

  return result;
}

unint64_t sub_223179D4C()
{
  result = qword_27D059370;
  if (!qword_27D059370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059370);
  }

  return result;
}

unint64_t sub_223179DA0()
{
  result = qword_27D0593B8;
  if (!qword_27D0593B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0593B8);
  }

  return result;
}

unint64_t sub_223179DF4()
{
  result = qword_27D0593C0;
  if (!qword_27D0593C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0593C0);
  }

  return result;
}

unint64_t sub_223179E48()
{
  result = qword_27D0593C8;
  if (!qword_27D0593C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0593C8);
  }

  return result;
}

unint64_t sub_223179E9C()
{
  result = qword_27D0593D0;
  if (!qword_27D0593D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0593D0);
  }

  return result;
}

unint64_t sub_223179EF0()
{
  result = qword_27D0593F0;
  if (!qword_27D0593F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0593F0);
  }

  return result;
}

unint64_t sub_223179F44()
{
  result = qword_27D059400;
  if (!qword_27D059400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059400);
  }

  return result;
}

unint64_t sub_223179F9C()
{
  result = qword_27D059410;
  if (!qword_27D059410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059410);
  }

  return result;
}

unint64_t sub_223179FF4()
{
  result = qword_27D059418;
  if (!qword_27D059418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059418);
  }

  return result;
}

uint64_t sub_22317A048(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 40) = 2 * -a2;
      *(result + 64) = 0;
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22317A0AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 65))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40) >> 1;
      v4 = -2 - v3;
      if (-2 - v3 < 0)
      {
        v4 = -1;
      }

      if (v3 <= 0x80000000)
      {
        v2 = -1;
      }

      else
      {
        v2 = v4;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22317A108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0;
      *(result + 40) = 2 * ~a2;
      *(result + 64) = 0;
    }
  }

  return result;
}

uint64_t sub_22317A18C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_22317A1D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 2 * -a2;
      *(result + 40) = 0;
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22317A26C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_22317A2C0(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22317A328(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_22317A37C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22317A3E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22317A438(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22317A4FC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_48_0(-1);
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
      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_48_0(v8);
}

_BYTE *sub_22317A580(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_47(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_45_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_46_1(result, v6);
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
          result = OUTLINED_FUNCTION_68(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_22317A66C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_48_0(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_48_0(v8);
}

uint64_t sub_22317A700(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_48_0(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_48_0((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_48_0(v8);
}

_BYTE *sub_22317A784(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_47(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_45_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_46_1(result, v6);
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
          result = OUTLINED_FUNCTION_68(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22317A874()
{
  result = qword_27D059420;
  if (!qword_27D059420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059420);
  }

  return result;
}

unint64_t sub_22317A8CC()
{
  result = qword_27D059428;
  if (!qword_27D059428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059428);
  }

  return result;
}

unint64_t sub_22317A924()
{
  result = qword_27D059430;
  if (!qword_27D059430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059430);
  }

  return result;
}

unint64_t sub_22317A97C()
{
  result = qword_27D059438;
  if (!qword_27D059438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059438);
  }

  return result;
}

unint64_t sub_22317A9D4()
{
  result = qword_27D059440;
  if (!qword_27D059440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059440);
  }

  return result;
}

unint64_t sub_22317AA2C()
{
  result = qword_27D059448;
  if (!qword_27D059448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059448);
  }

  return result;
}

unint64_t sub_22317AA84()
{
  result = qword_27D059450;
  if (!qword_27D059450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059450);
  }

  return result;
}

unint64_t sub_22317AADC()
{
  result = qword_27D059458;
  if (!qword_27D059458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059458);
  }

  return result;
}

unint64_t sub_22317AB34()
{
  result = qword_27D059460;
  if (!qword_27D059460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059460);
  }

  return result;
}

unint64_t sub_22317AB8C()
{
  result = qword_27D059468;
  if (!qword_27D059468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059468);
  }

  return result;
}

unint64_t sub_22317ABE4()
{
  result = qword_27D059470;
  if (!qword_27D059470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059470);
  }

  return result;
}

unint64_t sub_22317AC3C()
{
  result = qword_27D059478;
  if (!qword_27D059478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059478);
  }

  return result;
}

unint64_t sub_22317AC94()
{
  result = qword_27D059480;
  if (!qword_27D059480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059480);
  }

  return result;
}

unint64_t sub_22317ACEC()
{
  result = qword_27D059488;
  if (!qword_27D059488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059488);
  }

  return result;
}

unint64_t sub_22317AD44()
{
  result = qword_27D059490;
  if (!qword_27D059490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059490);
  }

  return result;
}

unint64_t sub_22317AD9C()
{
  result = qword_27D059498;
  if (!qword_27D059498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059498);
  }

  return result;
}

unint64_t sub_22317ADF4()
{
  result = qword_27D0594A0;
  if (!qword_27D0594A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594A0);
  }

  return result;
}

unint64_t sub_22317AE4C()
{
  result = qword_27D0594A8;
  if (!qword_27D0594A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594A8);
  }

  return result;
}

unint64_t sub_22317AEA4()
{
  result = qword_27D0594B0;
  if (!qword_27D0594B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594B0);
  }

  return result;
}

unint64_t sub_22317AEFC()
{
  result = qword_27D0594B8;
  if (!qword_27D0594B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594B8);
  }

  return result;
}

unint64_t sub_22317AF54()
{
  result = qword_27D0594C0;
  if (!qword_27D0594C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594C0);
  }

  return result;
}

unint64_t sub_22317AFAC()
{
  result = qword_27D0594C8;
  if (!qword_27D0594C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594C8);
  }

  return result;
}

unint64_t sub_22317B004()
{
  result = qword_27D0594D0;
  if (!qword_27D0594D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594D0);
  }

  return result;
}

unint64_t sub_22317B05C()
{
  result = qword_27D0594D8;
  if (!qword_27D0594D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594D8);
  }

  return result;
}

unint64_t sub_22317B0B4()
{
  result = qword_27D0594E0;
  if (!qword_27D0594E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594E0);
  }

  return result;
}

unint64_t sub_22317B10C()
{
  result = qword_27D0594E8;
  if (!qword_27D0594E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594E8);
  }

  return result;
}

unint64_t sub_22317B164()
{
  result = qword_27D0594F0;
  if (!qword_27D0594F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594F0);
  }

  return result;
}

unint64_t sub_22317B1BC()
{
  result = qword_27D0594F8;
  if (!qword_27D0594F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0594F8);
  }

  return result;
}

unint64_t sub_22317B214()
{
  result = qword_27D059500;
  if (!qword_27D059500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059500);
  }

  return result;
}

unint64_t sub_22317B26C()
{
  result = qword_27D059508;
  if (!qword_27D059508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059508);
  }

  return result;
}

unint64_t sub_22317B2C4()
{
  result = qword_27D059510;
  if (!qword_27D059510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059510);
  }

  return result;
}

unint64_t sub_22317B31C()
{
  result = qword_27D059518;
  if (!qword_27D059518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059518);
  }

  return result;
}

unint64_t sub_22317B374()
{
  result = qword_27D059520;
  if (!qword_27D059520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059520);
  }

  return result;
}

unint64_t sub_22317B3CC()
{
  result = qword_27D059528;
  if (!qword_27D059528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059528);
  }

  return result;
}

unint64_t sub_22317B424()
{
  result = qword_27D059530;
  if (!qword_27D059530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059530);
  }

  return result;
}

unint64_t sub_22317B47C()
{
  result = qword_27D059538;
  if (!qword_27D059538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059538);
  }

  return result;
}

unint64_t sub_22317B4D4()
{
  result = qword_27D059540;
  if (!qword_27D059540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059540);
  }

  return result;
}

unint64_t sub_22317B52C()
{
  result = qword_27D059548;
  if (!qword_27D059548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059548);
  }

  return result;
}

unint64_t sub_22317B584()
{
  result = qword_27D059550;
  if (!qword_27D059550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059550);
  }

  return result;
}

unint64_t sub_22317B5DC()
{
  result = qword_27D059558;
  if (!qword_27D059558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059558);
  }

  return result;
}

unint64_t sub_22317B634()
{
  result = qword_27D059560;
  if (!qword_27D059560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059560);
  }

  return result;
}

unint64_t sub_22317B68C()
{
  result = qword_27D059568;
  if (!qword_27D059568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059568);
  }

  return result;
}

unint64_t sub_22317B6E4()
{
  result = qword_27D059570;
  if (!qword_27D059570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059570);
  }

  return result;
}

unint64_t sub_22317B73C()
{
  result = qword_27D059578;
  if (!qword_27D059578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059578);
  }

  return result;
}

unint64_t sub_22317B794()
{
  result = qword_27D059580;
  if (!qword_27D059580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059580);
  }

  return result;
}

void *OUTLINED_FUNCTION_43_1()
{

  return memcpy((v0 - 232), (v0 - 160), 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_49_1(uint64_t a1)
{

  return sub_2231FFF04();
}

uint64_t OUTLINED_FUNCTION_50_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2232007A4();
}

uint64_t OUTLINED_FUNCTION_65_0(uint64_t a1, uint64_t a2)
{

  return sub_223200554();
}

uint64_t OUTLINED_FUNCTION_66(uint64_t a1)
{

  return sub_2232006B4();
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1)
{

  return sub_2231FFF04();
}

uint64_t sub_22317B954(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xEC00000065646F43;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000223221D40 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_22317BA28(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

uint64_t sub_22317BA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22317B954(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22317BA9C(uint64_t a1)
{
  v2 = sub_22317C6F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317BAD8(uint64_t a1)
{
  v2 = sub_22317C6F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PrewarmNLMessage.languageCode.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes16PrewarmNLMessage_languageCode);

  return v1;
}

id PrewarmNLMessage.init(build:)(uint64_t (*a1)(char *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_2231FFC84();
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[0] = 15;
  v38 = 0u;
  v39 = 0u;
  v40 = 3;
  a1(v37);
  v11 = v37[0];
  if (v37[0] == 15 || (v12 = *(&v38 + 1)) == 0 || !*(&v39 + 1) || (v13 = v40, v40 == 3))
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v14 = sub_223200014();
    __swift_project_value_buffer(v14, qword_280FCE830);
    v15 = sub_223200004();
    v16 = sub_223200254();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_10;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *&v36 = v18;
    *v17 = 136446210;
    v19 = sub_2230F7898(ObjectType);
    v21 = sub_2231A5D38(v19, v20, &v36);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_2230CE000, v15, v16, "Could not build %{public}s: Builder has missing required fields", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x223DD6780](v18, -1, -1);
    v22 = v17;
LABEL_9:
    MEMORY[0x223DD6780](v22, -1, -1);
LABEL_10:

    type metadata accessor for PrewarmNLMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v35 = v38;
  v36 = v39;
  sub_2231FFC74();
  sub_2230D1D30();
  v25 = sub_2232002E4();
  v27 = v26;
  (*(v7 + 8))(v10, v5);

  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v31 = sub_223200014();
    __swift_project_value_buffer(v31, qword_280FCE830);
    v15 = sub_223200004();
    v32 = sub_223200254();
    if (!os_log_type_enabled(v15, v32))
    {
      goto LABEL_10;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2230CE000, v15, v32, "languageCode is empty, can't create message", v33, 2u);
    v22 = v33;
    goto LABEL_9;
  }

  v29 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes16PrewarmNLMessage_languageCode);
  *v29 = v25;
  v29[1] = v27;
  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes16PrewarmNLMessage_conversationSessionType) = v13;

  v23 = sub_2230D20C4(v2, v11, v35, v12);
  v30 = v23;

  if (v23)
  {
  }

  return v23;
}

uint64_t type metadata accessor for PrewarmNLMessage(uint64_t a1)
{
  result = qword_280FCAB48;
  if (!qword_280FCAB48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *PrewarmNLMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059588, &qword_223213710);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22317C6F8();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for PrewarmNLMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_5_2();
    v8 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes16PrewarmNLMessage_languageCode);
    *v8 = v5;
    v8[1] = v9;
    LOBYTE(v14[0]) = 1;
    OUTLINED_FUNCTION_5_2();
    v10 = sub_223200464();

    v11 = v10 == 1;
    if (v10 == 2)
    {
      v11 = 2;
    }

    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes16PrewarmNLMessage_conversationSessionType) = v11;
    sub_2230F7158(a1, v14);
    v6 = MessageBase.init(from:)(v14);
    v12 = OUTLINED_FUNCTION_2();
    v13(v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t sub_22317C2E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059598, &qword_223213718);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22317C6F8();
  sub_2232007A4();
  v12 = 0;
  sub_2232005F4();
  if (!v1)
  {
    v11 = 1;
    sub_2232005F4();

    sub_2230D8F5C(a1);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t PrewarmNLMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PrewarmNLMessage.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t PrewarmNLMessage.Builder.languageCode.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t PrewarmNLMessage.Builder.languageCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

id PrewarmNLMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrewarmNLMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22317C6F8()
{
  result = qword_27D059590;
  if (!qword_27D059590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059590);
  }

  return result;
}

uint64_t sub_22317C7CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_22317C820(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PrewarmNLMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22317C970()
{
  result = qword_27D0595A0;
  if (!qword_27D0595A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0595A0);
  }

  return result;
}

unint64_t sub_22317C9C8()
{
  result = qword_27D0595A8;
  if (!qword_27D0595A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0595A8);
  }

  return result;
}

unint64_t sub_22317CA20()
{
  result = qword_27D0595B0;
  if (!qword_27D0595B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0595B0);
  }

  return result;
}

uint64_t PromptInfo.promptSource.getter()
{
  v2 = OUTLINED_FUNCTION_20_0();
  result = type metadata accessor for PromptInfo(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t PromptInfo.promptType.getter()
{
  v2 = OUTLINED_FUNCTION_20_0();
  result = type metadata accessor for PromptInfo(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t PromptInfo.init(build:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0595B8, &qword_2232138D0);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_16_8();
  v8 = type metadata accessor for PromptId(v7);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v12 = v11 - v10;
  v13 = type metadata accessor for PromptInfo.Builder(0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v17 = v16 - v15;
  v18 = type metadata accessor for PromptInfo(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_2();
  v22 = v21 - v20;
  *v17 = 769;
  v23 = *(v14 + 32);
  __swift_storeEnumTagSinglePayload(v17 + v23, 1, 1, v8);
  a1(v17);
  sub_22317CE68(v17 + v23, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
  {
    sub_2230D40E0(v3, &qword_27D0595B8, &qword_2232138D0);
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v24 = sub_223200014();
    __swift_project_value_buffer(v24, qword_280FCE830);
    v25 = sub_223200004();
    v26 = sub_223200254();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v35 = v28;
      *v27 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0595C0, &qword_2232138D8);
      v29 = sub_223200104();
      v31 = sub_2231A5D38(v29, v30, &v35);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_2230CE000, v25, v26, "Could not build %{public}s: Builder has missing required fields: promptId", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x223DD6780](v28, -1, -1);
      MEMORY[0x223DD6780](v27, -1, -1);
    }

    OUTLINED_FUNCTION_10_13();
    v32 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_8_14();
    sub_22317EF7C(v3, v12);
    sub_22317EF7C(v12, v22);
    *(v22 + *(v18 + 20)) = *v17;
    v33 = *(v17 + 1);
    OUTLINED_FUNCTION_10_13();
    *(v22 + *(v18 + 24)) = v33;
    OUTLINED_FUNCTION_6_18();
    sub_22317EF7C(v22, a3);
    v32 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v32, 1, v18);
}

uint64_t sub_22317CE68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0595B8, &qword_2232138D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PromptInfo.description.getter()
{
  type metadata accessor for PromptId(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_2();
  v4 = v3 - v2;
  BYTE8(v10) = 0;
  sub_223200374();
  MEMORY[0x223DD5AA0](0xD000000000000019, 0x8000000223224660);
  v5 = type metadata accessor for PromptInfo(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0595C8, &qword_2232138E0);
  v6 = sub_223200104();
  MEMORY[0x223DD5AA0](v6);

  MEMORY[0x223DD5AA0](0x74706D6F7270202CLL, 0xEE00203A65707954);
  *&v10 = *(v0 + *(v5 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0595D0, &qword_2232138E8);
  v7 = sub_223200104();
  MEMORY[0x223DD5AA0](v7);

  MEMORY[0x223DD5AA0](0x74706D6F7270202CLL, 0xEC000000203A6449);
  OUTLINED_FUNCTION_0_9();
  sub_22317F288(v0, v4);
  v8 = sub_223200104();
  MEMORY[0x223DD5AA0](v8);

  MEMORY[0x223DD5AA0](41, 0xE100000000000000);
  return *(&v10 + 1);
}

uint64_t PromptInfo.id.getter()
{
  v2 = OUTLINED_FUNCTION_20_0();
  v3 = type metadata accessor for PromptId(v2);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2_2();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_0_9();
  sub_22317F288(v1, v6);
  sub_2231FFDA4();
  OUTLINED_FUNCTION_4();
  return (*(v7 + 32))(v0, v6);
}

uint64_t PromptInfo.Builder.promptId.getter()
{
  v2 = OUTLINED_FUNCTION_20_0();
  v3 = v1 + *(type metadata accessor for PromptInfo.Builder(v2) + 24);

  return sub_22317CE68(v3, v0);
}

uint64_t PromptInfo.Builder.promptId.setter()
{
  v2 = OUTLINED_FUNCTION_8_0();
  v3 = v1 + *(type metadata accessor for PromptInfo.Builder(v2) + 24);

  return sub_22317EFD8(v0, v3);
}

void (*PromptInfo.Builder.promptId.modify())()
{
  v0 = OUTLINED_FUNCTION_8_0();
  type metadata accessor for PromptInfo.Builder(v0);
  return nullsub_1;
}

BOOL static PromptInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static PromptId.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PromptInfo(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 != 3)
  {
    return v8 != 3 && (sub_22310710C(v7, v8) & 1) != 0;
  }

  return v8 == 3;
}

uint64_t static PromptId.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v32 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_10();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_19_4();
  type metadata accessor for PromptId(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_12_10();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0595D8, &qword_2232138F0);
  OUTLINED_FUNCTION_2_0();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v31 - v21;
  v23 = *(v20 + 56);
  sub_22317F288(a1, &v31 - v21);
  sub_22317F288(v31, &v22[v23]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_0_9();
    sub_22317F288(v22, v18);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v29 = v32;
      (*(v5 + 32))(v2, &v22[v23], v32);
      v25 = _s16SiriMessageTypes17OrchestrationTaskV2eeoiySbAC_ACtFZ_0();
      v26 = *(v5 + 8);
      v26(v2, v29);
      v27 = v18;
      v28 = v29;
      goto LABEL_6;
    }

LABEL_8:
    (*(v5 + 8))(v18, v32);
    sub_2230D40E0(v22, &qword_27D0595D8, &qword_2232138F0);
    v25 = 0;
    return v25 & 1;
  }

  OUTLINED_FUNCTION_0_9();
  sub_22317F288(v22, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v18 = v15;
    goto LABEL_8;
  }

  v24 = v32;
  (*(v5 + 32))(v9, &v22[v23], v32);
  v25 = _s16SiriMessageTypes17OrchestrationTaskV2eeoiySbAC_ACtFZ_0();
  v26 = *(v5 + 8);
  v26(v9, v24);
  v27 = v15;
  v28 = v24;
LABEL_6:
  v26(v27, v28);
  sub_22317F048();
  return v25 & 1;
}

uint64_t sub_22317D5F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644974706D6F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F5374706D6F7270 && a2 == 0xEC00000065637275;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x795474706D6F7270 && a2 == 0xEA00000000006570)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

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

uint64_t sub_22317D70C(char a1)
{
  if (!a1)
  {
    return 0x644974706D6F7270;
  }

  if (a1 == 1)
  {
    return 0x6F5374706D6F7270;
  }

  return 0x795474706D6F7270;
}

uint64_t sub_22317D778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22317D5F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22317D7A0(uint64_t a1)
{
  v2 = sub_22317F09C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317D7DC(uint64_t a1)
{
  v2 = sub_22317F09C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PromptInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0595E0, &qword_2232138F8);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22317F09C();
  sub_2232007A4();
  v15[15] = 0;
  type metadata accessor for PromptId(0);
  OUTLINED_FUNCTION_7_18();
  sub_22317F198(v11, v12, &protocol conformance descriptor for PromptId);
  sub_223200654();
  if (!v2)
  {
    v13 = type metadata accessor for PromptInfo(0);
    v15[14] = *(v3 + *(v13 + 20));
    v15[13] = 1;
    sub_22317F0F0();
    sub_2232005E4();
    v15[12] = *(v3 + *(v13 + 24));
    v15[11] = 2;
    sub_22317F144();
    sub_2232005E4();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t PromptInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for PromptId(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v19 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059608, &qword_223213900);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for PromptInfo(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_2();
  v12 = v11 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22317F09C();
  sub_223200794();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21[2] = 0;
  OUTLINED_FUNCTION_7_18();
  sub_22317F198(v13, v14, &protocol conformance descriptor for PromptId);
  sub_223200554();
  OUTLINED_FUNCTION_0_9();
  sub_22317EF7C(v19, v12);
  v21[0] = 1;
  sub_22317F1E0();
  OUTLINED_FUNCTION_22_5(&type metadata for PromptSource, v21);
  *(v12 + *(v8 + 20)) = v21[1];
  v20[0] = 2;
  sub_22317F234();
  OUTLINED_FUNCTION_22_5(&type metadata for PromptType, v20);
  v15 = OUTLINED_FUNCTION_13_8();
  v16(v15);
  *(v12 + *(v8 + 24)) = v20[1];
  OUTLINED_FUNCTION_6_18();
  sub_22317F288(v12, a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_22317F048();
}

uint64_t PromptSource.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_223200464();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_22317DDC4@<X0>(void *a1@<X8>)
{
  result = PromptSource.rawValue.getter();
  *a1 = 0xD000000000000010;
  a1[1] = v3;
  return result;
}

SiriMessageTypes::PromptType_optional __swiftcall PromptType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223200464();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PromptType.rawValue.getter()
{
  v1 = 0x6769626D61736964;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x616D7269666E6F63;
  }
}

uint64_t sub_22317DF90@<X0>(uint64_t *a1@<X8>)
{
  result = PromptType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PromptId.description.getter()
{
  v1 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v7 = v6 - v5;
  type metadata accessor for PromptId(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_0_9();
  sub_22317F288(v0, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v3 + 32))(v7, v11, v1);
  if (EnumCaseMultiPayload == 1)
  {
    sub_223200374();

    v13 = 0x76456E6F69746361;
  }

  else
  {
    v13 = 0x644974706D6F7270;
  }

  v18 = v13;
  OUTLINED_FUNCTION_1_20();
  sub_22317F198(v14, v15, MEMORY[0x277CC9628]);
  v16 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v16);

  (*(v3 + 8))(v7, v1);
  return v18;
}

uint64_t sub_22317E258(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644974706D6F7270 && a2 == 0xE800000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x76456E6F69746361 && a2 == 0xED00006449746E65)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_22317E328(char a1)
{
  if (a1)
  {
    return 0x76456E6F69746361;
  }

  else
  {
    return 0x644974706D6F7270;
  }
}

uint64_t sub_22317E36C(uint64_t a1)
{
  v2 = sub_22317F338();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317E3A8(uint64_t a1)
{
  v2 = sub_22317F338();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22317E3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22317E258(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22317E414(uint64_t a1)
{
  v2 = sub_22317F2E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317E450(uint64_t a1)
{
  v2 = sub_22317F2E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22317E48C(uint64_t a1)
{
  v2 = sub_22317F38C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22317E4C8(uint64_t a1)
{
  v2 = sub_22317F38C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PromptId.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059628, &qword_223213908);
  OUTLINED_FUNCTION_9();
  v46 = v4;
  v47 = v3;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_3();
  v45 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059630, &qword_223213910);
  OUTLINED_FUNCTION_9();
  v43 = v8;
  v44 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_3();
  v42 = v10;
  v11 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v48 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_12_10();
  v41 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_19_4();
  type metadata accessor for PromptId(v17);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_2();
  v21 = v20 - v19;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059638, &qword_223213918);
  OUTLINED_FUNCTION_9();
  v50 = v23;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v24);
  v26 = &v40 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22317F2E4();
  v27 = v48;
  sub_2232007A4();
  OUTLINED_FUNCTION_0_9();
  sub_22317F288(v49, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = *(v27 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v30 = v41;
    v29(v41, v21, v11);
    v52 = 1;
    sub_22317F338();
    v31 = v45;
    sub_2232005B4();
    OUTLINED_FUNCTION_1_20();
    sub_22317F198(v32, v33, MEMORY[0x277CC95F8]);
    v34 = v47;
    sub_223200654();
    (*(v46 + 8))(v31, v34);
    v1 = v30;
  }

  else
  {
    v29(v1, v21, v11);
    v51 = 0;
    sub_22317F38C();
    sub_2232005B4();
    OUTLINED_FUNCTION_1_20();
    sub_22317F198(v35, v36, MEMORY[0x277CC95F8]);
    sub_223200654();
    v37 = OUTLINED_FUNCTION_5_18();
    v38(v37);
  }

  (*(v27 + 8))(v1, v11);
  return (*(v50 + 8))(v26, v22);
}

void PromptId.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059658, &qword_223213920);
  OUTLINED_FUNCTION_9();
  v68 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_3();
  v70 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059660, &qword_223213928);
  OUTLINED_FUNCTION_9();
  v66 = v8;
  v67 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_3();
  v69 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059668, &unk_223213930);
  OUTLINED_FUNCTION_9();
  v71 = v12;
  v72 = v11;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  v14 = OUTLINED_FUNCTION_16_8();
  v15 = type metadata accessor for PromptId(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_12_10();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v61 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v61 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22317F2E4();
  v26 = v74;
  sub_223200794();
  if (v26)
  {
    goto LABEL_8;
  }

  v61 = v19;
  v62 = v23;
  v27 = v72;
  v63 = v25;
  v64 = v15;
  v74 = a1;
  v28 = sub_223200594();
  sub_2230E0B80(v28, 0);
  if (v30 == v31 >> 1)
  {
LABEL_7:
    v44 = v64;
    v45 = sub_2232003A4();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v47 = v44;
    sub_223200484();
    sub_223200394();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = OUTLINED_FUNCTION_15_0();
    v49(v48, v27);
    a1 = v74;
LABEL_8:
    v50 = a1;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v50);
    return;
  }

  if (v30 < (v31 >> 1))
  {
    v75 = *(v29 + v30);
    sub_2230E0B40(v30 + 1);
    v33 = v32;
    v35 = v34;
    swift_unknownObjectRelease();
    if (v33 == v35 >> 1)
    {
      v36 = v27;
      if (v75)
      {
        v77 = 1;
        sub_22317F338();
        OUTLINED_FUNCTION_14_7(&type metadata for PromptId.ActionEventIdCodingKeys, &v77);
        v37 = v63;
        v38 = sub_2231FFDA4();
        OUTLINED_FUNCTION_1_20();
        sub_22317F198(v39, v40, MEMORY[0x277CC9618]);
        v41 = v61;
        OUTLINED_FUNCTION_21_7(v38, v42);
        v43 = v71;
        swift_unknownObjectRelease();
        v55 = OUTLINED_FUNCTION_5_18();
        v56(v55);
        (*(v43 + 8))(v2, v36);
      }

      else
      {
        v76 = 0;
        sub_22317F38C();
        OUTLINED_FUNCTION_14_7(&type metadata for PromptId.PromptIdCodingKeys, &v76);
        v37 = v63;
        v51 = sub_2231FFDA4();
        OUTLINED_FUNCTION_1_20();
        sub_22317F198(v52, v53, MEMORY[0x277CC9618]);
        v41 = v62;
        OUTLINED_FUNCTION_21_7(v51, v54);
        swift_unknownObjectRelease();
        v57 = OUTLINED_FUNCTION_5_18();
        v58(v57);
        v59 = OUTLINED_FUNCTION_15_0();
        v60(v59, v36);
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_14();
      sub_22317EF7C(v41, v37);
      sub_22317EF7C(v37, v65);
      v50 = v74;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_22317EF7C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_18_10();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_22317EFD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0595B8, &qword_2232138D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22317F048()
{
  v1 = OUTLINED_FUNCTION_8_0();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_22317F09C()
{
  result = qword_27D0595E8;
  if (!qword_27D0595E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0595E8);
  }

  return result;
}

unint64_t sub_22317F0F0()
{
  result = qword_27D0595F8;
  if (!qword_27D0595F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0595F8);
  }

  return result;
}

unint64_t sub_22317F144()
{
  result = qword_27D059600;
  if (!qword_27D059600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059600);
  }

  return result;
}

uint64_t sub_22317F198(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22317F1E0()
{
  result = qword_27D059618;
  if (!qword_27D059618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059618);
  }

  return result;
}

unint64_t sub_22317F234()
{
  result = qword_27D059620;
  if (!qword_27D059620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059620);
  }

  return result;
}

uint64_t sub_22317F288(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_18_10();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

unint64_t sub_22317F2E4()
{
  result = qword_27D059640;
  if (!qword_27D059640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059640);
  }

  return result;
}

unint64_t sub_22317F338()
{
  result = qword_27D059648;
  if (!qword_27D059648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059648);
  }

  return result;
}

unint64_t sub_22317F38C()
{
  result = qword_27D059650;
  if (!qword_27D059650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059650);
  }

  return result;
}

unint64_t sub_22317F3E4()
{
  result = qword_27D059670;
  if (!qword_27D059670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059670);
  }

  return result;
}

unint64_t sub_22317F43C()
{
  result = qword_27D059678;
  if (!qword_27D059678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059678);
  }

  return result;
}

void sub_22317F490(uint64_t a1)
{
  type metadata accessor for PromptId(319);
  if (v1 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCAC90, &type metadata for PromptSource);
    if (v2 <= 0x3F)
    {
      sub_2230D525C(319, qword_280FCACD8, &type metadata for PromptType);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22317F574(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCAC90, &type metadata for PromptSource);
  if (v1 <= 0x3F)
  {
    sub_2230D525C(319, qword_280FCACD8, &type metadata for PromptType);
    if (v2 <= 0x3F)
    {
      sub_22317F630(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22317F630(uint64_t a1)
{
  if (!qword_280FCA5C8[0])
  {
    type metadata accessor for PromptId(255);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, qword_280FCA5C8);
    }
  }
}

uint64_t sub_22317F690(uint64_t a1)
{
  result = sub_2231FFDA4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptId.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22317F7DC(_BYTE *result, int a2, int a3)
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

_BYTE *sub_22317F888(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22317F968()
{
  result = qword_27D059680;
  if (!qword_27D059680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059680);
  }

  return result;
}

unint64_t sub_22317F9C0()
{
  result = qword_27D059688;
  if (!qword_27D059688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059688);
  }

  return result;
}

unint64_t sub_22317FA18()
{
  result = qword_27D059690;
  if (!qword_27D059690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059690);
  }

  return result;
}

unint64_t sub_22317FA70()
{
  result = qword_27D059698;
  if (!qword_27D059698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059698);
  }

  return result;
}

unint64_t sub_22317FAC8()
{
  result = qword_27D0596A0;
  if (!qword_27D0596A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596A0);
  }

  return result;
}

unint64_t sub_22317FB20()
{
  result = qword_27D0596A8;
  if (!qword_27D0596A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596A8);
  }

  return result;
}

unint64_t sub_22317FB78()
{
  result = qword_27D0596B0;
  if (!qword_27D0596B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596B0);
  }

  return result;
}

unint64_t sub_22317FBD0()
{
  result = qword_27D0596B8;
  if (!qword_27D0596B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596B8);
  }

  return result;
}

unint64_t sub_22317FC28()
{
  result = qword_27D0596C0;
  if (!qword_27D0596C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596C0);
  }

  return result;
}

unint64_t sub_22317FC80()
{
  result = qword_27D0596C8;
  if (!qword_27D0596C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596C8);
  }

  return result;
}

unint64_t sub_22317FCD8()
{
  result = qword_27D0596D0;
  if (!qword_27D0596D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596D0);
  }

  return result;
}

unint64_t sub_22317FD30()
{
  result = qword_27D0596D8;
  if (!qword_27D0596D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596D8);
  }

  return result;
}

unint64_t sub_22317FD84()
{
  result = qword_27D0596E0;
  if (!qword_27D0596E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596E0);
  }

  return result;
}

unint64_t sub_22317FDD8()
{
  result = qword_27D0596E8;
  if (!qword_27D0596E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0596E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_7(uint64_t a1, uint64_t a2)
{

  return sub_223200554();
}

void *RequestCompletedMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = EndRequestMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id RequestCompletedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestCompletedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for RequestCompletedMessage(uint64_t a1)
{
  result = qword_280FCDAE0;
  if (!qword_280FCDAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static RequestConjunctionInfo.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27D0596F0 = a1;
  return result;
}

uint64_t sub_223180120@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27D0596F0;
  return result;
}

uint64_t sub_22318016C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27D0596F0 = v1;
  return result;
}

id RequestConjunctionInfo.init(build:)(void (*a1)(uint64_t *))
{
  ObjectType = swift_getObjectType();
  v16 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 1;
  a1(&v16);
  if (v17 & 1) != 0 || (v19)
  {
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v4 = sub_223200014();
    __swift_project_value_buffer(v4, qword_280FCE830);
    v5 = sub_223200004();
    v6 = sub_223200254();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136446210;
      v9 = sub_2230F7898(ObjectType);
      v11 = sub_2231A5D38(v9, v10, &v15);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2230CE000, v5, v6, "Could not build %{public}s: Builder has missing required fields", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x223DD6780](v8, -1, -1);
      MEMORY[0x223DD6780](v7, -1, -1);
    }

    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v13 = v16;
    *&v1[OBJC_IVAR___SMTRequestConjunctionInfo_requestCount] = v18;
    *&v1[OBJC_IVAR___SMTRequestConjunctionInfo_requestIndex] = v13;
    v14.receiver = v1;
    v14.super_class = ObjectType;
    return objc_msgSendSuper2(&v14, sel_init);
  }
}

uint64_t RequestConjunctionInfo.Builder.requestIndex.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t RequestConjunctionInfo.Builder.requestCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_223180470(uint64_t a1, uint64_t a2)
{
  v2 = sub_223200464();

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

uint64_t sub_2231804E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_223180470(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_223180518@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230EE4C4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22318054C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223180470(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223180574(uint64_t a1)
{
  v2 = sub_2231811F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231805B0(uint64_t a1)
{
  v2 = sub_2231811F4();

  return MEMORY[0x2821FE720](a1, v2);
}

id RequestConjunctionInfo.init(coder:)(void *a1)
{
  v1 = objc_allocWithZone(swift_getObjectType());
  v2 = RequestConjunctionInfo.init(build:)(sub_223181114);
  v3 = v2;

  if (v2)
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v2;
}

void sub_2231806BC(uint64_t a1, void *a2)
{
  v4 = sub_2232000A4();
  v5 = [a2 decodeIntegerForKey_];

  *a1 = v5 & ~(v5 >> 63);
  *(a1 + 8) = 0;
  v6 = sub_2232000A4();
  v7 = [a2 decodeIntegerForKey_];

  *(a1 + 16) = v7 & ~(v7 >> 63);
  *(a1 + 24) = 0;
}

Swift::Void __swiftcall RequestConjunctionInfo.encode(with:)(NSCoder with)
{
  v2 = *(v1 + OBJC_IVAR___SMTRequestConjunctionInfo_requestIndex);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = sub_2232000A4();
  [(objc_class *)with.super.isa encodeInteger:v2 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___SMTRequestConjunctionInfo_requestCount);
  if (v5 < 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = sub_2232000A4();
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];
}

uint64_t RequestConjunctionInfo.debugDescription.getter()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v16, sel_debugDescription);
  v2 = sub_2232000C4();
  v4 = v3;

  v17[0] = v2;
  v17[1] = v4;
  MEMORY[0x223DD5AA0](31520, 0xE200000000000000);
  v6 = v17[0];
  v5 = v17[1];
  strcpy(v17, "requestIndex: ");
  HIBYTE(v17[1]) = -18;
  v7 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v7);

  MEMORY[0x223DD5AA0](8236, 0xE200000000000000);
  v8 = v17[0];
  v9 = v17[1];
  v17[0] = v6;
  v17[1] = v5;

  MEMORY[0x223DD5AA0](v8, v9);

  v11 = v17[0];
  v10 = v17[1];
  strcpy(v17, "requestCount: ");
  HIBYTE(v17[1]) = -18;
  v12 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v12);

  MEMORY[0x223DD5AA0](125, 0xE100000000000000);
  v13 = v17[0];
  v14 = v17[1];
  v17[0] = v11;
  v17[1] = v10;

  MEMORY[0x223DD5AA0](v13, v14);

  return v17[0];
}

BOOL RequestConjunctionInfo.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_22318111C(a1, v7);
  if (v8)
  {
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR___SMTRequestConjunctionInfo_requestIndex) == *&v6[OBJC_IVAR___SMTRequestConjunctionInfo_requestIndex])
      {
        v3 = *(v1 + OBJC_IVAR___SMTRequestConjunctionInfo_requestCount);
        v4 = *&v6[OBJC_IVAR___SMTRequestConjunctionInfo_requestCount];

        return v3 == v4;
      }
    }
  }

  else
  {
    sub_22318118C(v7);
  }

  return 0;
}

id RequestConjunctionInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RequestConjunctionInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t RequestConjunctionInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059710, &qword_223214158);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231811F4();
  sub_2232007A4();
  v10[15] = 0;
  sub_223200644();
  if (!v1)
  {
    v10[14] = 1;
    sub_223200644();
  }

  return (*(v5 + 8))(v8, v3);
}

void *RequestConjunctionInfo.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D059720, &qword_223214160);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231811F4();
  v12 = ObjectType;
  sub_223200794();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = 0;
    v13 = v16;
    *&v3[OBJC_IVAR___SMTRequestConjunctionInfo_requestIndex] = sub_223200544();
    v18 = 1;
    *&v3[OBJC_IVAR___SMTRequestConjunctionInfo_requestCount] = sub_223200544();
    v17.receiver = v3;
    v17.super_class = v12;
    v11 = objc_msgSendSuper2(&v17, sel_init);
    (*(v7 + 8))(v10, v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v11;
}

void *sub_2231810C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = RequestConjunctionInfo.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22318111C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0580F8, &unk_223208E30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22318118C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0580F8, &unk_223208E30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2231811F4()
{
  result = qword_27D059718;
  if (!qword_27D059718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059718);
  }

  return result;
}

uint64_t sub_2231812B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2231812D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 25) = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for RequestConjunctionInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2231813F0()
{
  result = qword_27D059790;
  if (!qword_27D059790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059790);
  }

  return result;
}

unint64_t sub_223181448()
{
  result = qword_27D059798;
  if (!qword_27D059798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059798);
  }

  return result;
}

unint64_t sub_2231814A0()
{
  result = qword_27D0597A0;
  if (!qword_27D0597A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0597A0);
  }

  return result;
}

uint64_t static RequestContextData.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27D059810 = a1;
  return result;
}

uint64_t sub_2231815B0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27D059810;
  return result;
}

uint64_t sub_2231815FC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27D059810 = v1;
  return result;
}

void *RequestContextData.userProfileMetadata.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_userProfileMetadata);
  v2 = v1;
  return v1;
}

void *RequestContextData.conjunctionInfo.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_conjunctionInfo);
  v2 = v1;
  return v1;
}

void RequestContextData.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v1 = objc_allocWithZone(v0);
  RequestContextData.init(build:)();
}

uint64_t RequestContextData.Builder.audioSource.setter()
{
  OUTLINED_FUNCTION_6_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RequestContextData.Builder.audioDestination.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t RequestContextData.Builder.responseMode.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t RequestContextData.Builder.bargeInModes.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t RequestContextData.Builder.approximatePreviousTTSInterval.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_16_1() + 48);

  return sub_223185348(v0, v2);
}

uint64_t RequestContextData.Builder.deviceRestrictions.getter()
{
  type metadata accessor for RequestContextData.Builder(0);
}

uint64_t RequestContextData.Builder.deviceRestrictions.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_1() + 52);

  *(v1 + v2) = v0;
  return result;
}

uint64_t RequestContextData.Builder.voiceTriggerEventInfo.getter()
{
  type metadata accessor for RequestContextData.Builder(0);
}

uint64_t RequestContextData.Builder.voiceTriggerEventInfo.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_1() + 56);

  *(v1 + v2) = v0;
  return result;
}

uint64_t RequestContextData.Builder.voiceAudioSessionId.setter()
{
  result = OUTLINED_FUNCTION_16_1();
  v3 = v1 + *(result + 60);
  *v3 = v0;
  *(v3 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t RequestContextData.Builder.isSystemApertureEnabled.setter()
{
  result = OUTLINED_FUNCTION_16_1();
  *(v1 + *(result + 64)) = v0;
  return result;
}

uint64_t RequestContextData.Builder.isLiveActivitiesSupported.setter()
{
  result = OUTLINED_FUNCTION_16_1();
  *(v1 + *(result + 68)) = v0;
  return result;
}

uint64_t RequestContextData.Builder.isInAmbient.setter()
{
  result = OUTLINED_FUNCTION_16_1();
  *(v1 + *(result + 72)) = v0;
  return result;
}

void *RequestContextData.Builder.conjunctionInfo.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestContextData.Builder(0) + 76));
  v2 = v1;
  return v1;
}

uint64_t RequestContextData.Builder.isDeviceShowingLockScreen.setter()
{
  result = OUTLINED_FUNCTION_16_1();
  *(v1 + *(result + 80)) = v0;
  return result;
}

uint64_t RequestContextData.Builder.isDeviceLocked.setter()
{
  result = OUTLINED_FUNCTION_16_1();
  *(v1 + *(result + 84)) = v0;
  return result;
}

void *RequestContextData.Builder.userProfileMetadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestContextData.Builder(0) + 88));
  v2 = v1;
  return v1;
}

void RequestContextData.Builder.userProfileMetadata.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_1() + 88);

  *(v1 + v2) = v0;
}

void *RequestContextData.init(coder:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for RequestContextData(0));
  RequestContextData.init(build:)();
  v4 = v3;
  v5 = v3;

  if (v4)
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

void sub_2231822A0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v96[0] = v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v97 = v96 - v7;
  v8 = sub_2232000A4();
  v9 = [a2 decodeBoolForKey_];

  *(a1 + 48) = v9;
  v10 = sub_2232000A4();
  v11 = [a2 decodeBoolForKey_];

  *(a1 + 49) = v11;
  v12 = sub_2232000A4();
  v13 = [a2 decodeBoolForKey_];

  *(a1 + 50) = v13;
  v14 = sub_2232000A4();
  v15 = [a2 decodeBoolForKey_];

  *(a1 + 51) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598C8, &qword_223214510);
  v17 = swift_allocObject();
  v99 = xmmword_223214360;
  *(v17 + 16) = xmmword_223214360;
  v18 = sub_2230FB7F4(0, &qword_27D0598D0, 0x277CBEA60);
  *(v17 + 32) = v18;
  v19 = sub_2230FB7F4(0, &qword_27D0598D8, 0x277CCACA8);
  *(v17 + 40) = v19;
  sub_2232002A4();

  if (v103)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059880, &unk_223214380);
    if (swift_dynamicCast())
    {
      v20 = v100;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    sub_2230D40E0(&v101, &qword_27D0580F8, &unk_223208E30);
    v20 = 0;
  }

  *(a1 + 56) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = v99;
  *(v21 + 32) = v18;
  *(v21 + 40) = v19;
  sub_2232002A4();

  if (v103)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059880, &unk_223214380);
    if (swift_dynamicCast())
    {
      v22 = v100;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    sub_2230D40E0(&v101, &qword_27D0580F8, &unk_223208E30);
    v22 = 0;
  }

  v23 = type metadata accessor for RequestContextData.Builder(0);
  v24 = v23[13];

  *(a1 + v24) = v22;
  sub_2230FB7F4(0, &qword_27D0598E0, 0x277CCABB0);
  v98 = 0xD000000000000013;
  v25 = sub_223200294();
  v26 = 1;
  v96[1] = v16;
  if (v25)
  {
    v27 = v25;
    LODWORD(v101) = 0;
    BYTE4(v101) = 1;
    sub_223200784();

    v28 = v101;
    v26 = BYTE4(v101);
  }

  else
  {
    v28 = 0;
  }

  v29 = a1 + v23[15];
  *v29 = v28;
  *(v29 + 4) = v26;
  v30 = sub_2232000A4();
  v31 = [a2 containsValueForKey_];

  if (v31)
  {
    v32 = sub_223200294();
    if (v32)
    {
      v101 = 0;
      v102 = 0;
      sub_2232000B4();

      v32 = v102;
      if (v102)
      {
        v33 = v101;
      }

      else
      {
        v33 = 0;
      }
    }

    else
    {
      v33 = 0;
    }

    *a1 = v33;
    *(a1 + 8) = v32;
  }

  v34 = sub_2232000A4();
  v35 = [a2 containsValueForKey_];

  if (v35)
  {
    v36 = sub_223200294();
    if (v36)
    {
      v101 = 0;
      v102 = 0;
      sub_2232000B4();

      v36 = v102;
      if (v102)
      {
        v37 = v101;
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v37 = 0;
    }

    *(a1 + 16) = v37;
    *(a1 + 24) = v36;
  }

  v38 = sub_2232000A4();
  v39 = [a2 containsValueForKey_];

  if (v39)
  {
    v40 = sub_223200294();
    if (v40)
    {
      v101 = 0;
      v102 = 0;
      sub_2232000B4();

      v40 = v102;
      if (v102)
      {
        v41 = v101;
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = 0;
    }

    *(a1 + 32) = v41;
    *(a1 + 40) = v40;
  }

  v42 = sub_2232000A4();
  v43 = [a2 containsValueForKey_];

  if (v43)
  {
    sub_2230FB7F4(0, &qword_27D0598F0, 0x277CCA970);
    v44 = sub_223200294();
    if (v44)
    {
      v45 = v44;
      v46 = sub_2231FFCC4();
      v47 = v96[0];
      __swift_storeEnumTagSinglePayload(v96[0], 1, 1, v46);
      sub_223185930(&qword_27D0598F8, MEMORY[0x277CC88D8]);
      sub_223200454();

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v47, 1, v46);
      v49 = v97;
      if (EnumTagSinglePayload == 1)
      {
        v50 = v97;
        v51 = 1;
      }

      else
      {
        (*(*(v46 - 8) + 32))(v97, v47, v46);
        v50 = v49;
        v51 = 0;
      }

      __swift_storeEnumTagSinglePayload(v50, v51, 1, v46);
    }

    else
    {
      v52 = sub_2231FFCC4();
      v49 = v97;
      __swift_storeEnumTagSinglePayload(v97, 1, 1, v52);
    }

    sub_223185348(v49, a1 + v23[12]);
  }

  v53 = sub_2232000A4();
  v54 = [a2 containsValueForKey_];

  if (v54)
  {
    v55 = swift_allocObject();
    *(v55 + 16) = v99;
    *(v55 + 32) = sub_2230FB7F4(0, &qword_27D0598E8, 0x277CBEAC0);
    *(v55 + 40) = v19;
    sub_2232002A4();

    if (v103)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0579F0, &qword_223205AD0);
      if (swift_dynamicCast())
      {
        v56 = v100;
      }

      else
      {
        v56 = 0;
      }
    }

    else
    {
      sub_2230D40E0(&v101, &qword_27D0580F8, &unk_223208E30);
      v56 = 0;
    }

    v57 = v23[14];

    *(a1 + v57) = v56;
  }

  v58 = sub_2232000A4();
  v59 = [a2 containsValueForKey_];

  if (v59)
  {
    v60 = sub_2232000A4();
    v61 = [a2 decodeBoolForKey_];

    *(a1 + v23[16]) = v61;
  }

  v62 = sub_2232000A4();
  v63 = [a2 containsValueForKey_];

  if (v63)
  {
    v64 = sub_2232000A4();
    v65 = [a2 decodeBoolForKey_];

    *(a1 + v23[17]) = v65;
  }

  v66 = sub_2232000A4();
  v67 = [a2 containsValueForKey_];

  if (v67)
  {
    v68 = sub_2232000A4();
    v69 = [a2 decodeBoolForKey_];

    *(a1 + v23[18]) = v69;
  }

  v70 = sub_2232000A4();
  v71 = [a2 containsValueForKey_];

  if (v71)
  {
    type metadata accessor for RequestConjunctionInfo();
    v72 = sub_223200294();
    v73 = v23[19];

    *(a1 + v73) = v72;
  }

  v74 = sub_2232000A4();
  v75 = [a2 containsValueForKey_];

  if (v75)
  {
    v76 = sub_2232000A4();
    v77 = [a2 decodeBoolForKey_];

    *(a1 + v23[20]) = v77;
  }

  v78 = sub_2232000A4();
  v79 = [a2 containsValueForKey_];

  if (v79)
  {
    v80 = sub_2232000A4();
    v81 = [a2 decodeBoolForKey_];

    *(a1 + v23[21]) = v81;
  }

  v82 = sub_2232000A4();
  v83 = [a2 containsValueForKey_];

  if (v83)
  {
    sub_2230FB7F4(0, &qword_280FCA3A8, off_2784D4AB8);
    v84 = sub_223200294();
    v85 = v23[22];

    *(a1 + v85) = v84;
  }

  v86 = sub_2232000A4();
  v87 = [a2 containsValueForKey_];

  if (v87)
  {
    v88 = sub_2232000A4();
    v89 = [a2 decodeInt64ForKey_];

    v90 = a1 + v23[23];
    *v90 = v89;
    *(v90 + 8) = 0;
  }

  v91 = sub_2232000A4();
  v92 = [a2 containsValueForKey_];

  if (v92)
  {
    v93 = sub_2232000A4();
    v94 = [a2 decodeIntegerForKey_];

    v95 = a1 + v23[24];
    *v95 = v94;
    *(v95 + 8) = 0;
  }
}

void sub_223182F7C()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v3 = v2;
  v4 = sub_2231FFCC4();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  OUTLINED_FUNCTION_9_13(v11);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v12);
  v14 = v60 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D059860, &qword_223214378);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v16);
  v18 = v60 - v17;
  sub_2230D3100(v3, v61, &qword_27D0580F8, &unk_223208E30);
  if (!v61[3])
  {
    v26 = &qword_27D0580F8;
    v27 = &unk_223208E30;
    v28 = v61;
LABEL_12:
    sub_2230D40E0(v28, v26, v27);
    goto LABEL_85;
  }

  type metadata accessor for RequestContextData(0);
  if (swift_dynamicCast())
  {
    v19 = v60[1];
    OUTLINED_FUNCTION_10_14();
    if (v22)
    {
      if (!v20)
      {
        goto LABEL_84;
      }

      OUTLINED_FUNCTION_24_3(v21);
      v25 = v25 && v23 == v24;
      if (!v25 && (sub_2232006B4() & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    else if (v20)
    {
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_10_14();
    if (v31)
    {
      if (!v29)
      {
        goto LABEL_84;
      }

      OUTLINED_FUNCTION_24_3(v30);
      v34 = v25 && v32 == v33;
      if (!v34 && (sub_2232006B4() & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    else if (v29)
    {
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_10_14();
    if (v37)
    {
      if (!v35)
      {
        goto LABEL_84;
      }

      OUTLINED_FUNCTION_24_3(v36);
      v40 = v25 && v38 == v39;
      if (!v40 && (sub_2232006B4() & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    else if (v35)
    {
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_1_21();
    if (!v25)
    {
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_1_21();
    if (!v25)
    {
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_1_21();
    if (!v25)
    {
      goto LABEL_84;
    }

    OUTLINED_FUNCTION_1_21();
    if (!v25 || (sub_22315F340(*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_bargeInModes), *&v19[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_bargeInModes]) & 1) == 0)
    {
      goto LABEL_84;
    }

    v41 = OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_approximatePreviousTTSInterval;
    v42 = *(v15 + 48);
    sub_2230D3100(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_approximatePreviousTTSInterval, v18, &qword_27D059858, &qword_223214370);
    sub_2230D3100(&v19[v41], &v18[v42], &qword_27D059858, &qword_223214370);
    OUTLINED_FUNCTION_46(v18);
    if (v25)
    {
      OUTLINED_FUNCTION_46(&v18[v42]);
      if (v25)
      {
        sub_2230D40E0(v18, &qword_27D059858, &qword_223214370);
        goto LABEL_51;
      }
    }

    else
    {
      sub_2230D3100(v18, v14, &qword_27D059858, &qword_223214370);
      OUTLINED_FUNCTION_46(&v18[v42]);
      if (!v43)
      {
        (*(v6 + 32))(v10, &v18[v42], v4);
        sub_223185930(&unk_27D059870, MEMORY[0x277CC88C8]);
        v44 = sub_223200094();
        v45 = *(v6 + 8);
        v45(v10, v4);
        v45(v14, v4);
        sub_2230D40E0(v18, &qword_27D059858, &qword_223214370);
        if ((v44 & 1) == 0)
        {
          goto LABEL_84;
        }

LABEL_51:
        if (sub_22315F340(*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_deviceRestrictions), *&v19[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_deviceRestrictions]))
        {
          v46 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceTriggerEventInfo);
          v47 = *&v19[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceTriggerEventInfo];
          if (v46)
          {
            if (!v47)
            {
              goto LABEL_84;
            }

            v48 = sub_223134FE0(v46, v47);

            if ((v48 & 1) == 0)
            {
              goto LABEL_84;
            }
          }

          else if (v47)
          {
            goto LABEL_84;
          }

          if (*(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceAudioSessionId) == *&v19[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceAudioSessionId])
          {
            OUTLINED_FUNCTION_20_9();
            if (v25)
            {
              if (v49 != 2)
              {
                goto LABEL_84;
              }
            }

            else if (v49 == 2 || ((v49 ^ v50) & 1) != 0)
            {
              goto LABEL_84;
            }

            OUTLINED_FUNCTION_20_9();
            if (v25)
            {
              if (v51 != 2)
              {
                goto LABEL_84;
              }
            }

            else if (v51 == 2 || ((v51 ^ v52) & 1) != 0)
            {
              goto LABEL_84;
            }

            OUTLINED_FUNCTION_20_9();
            if (v25)
            {
              if (v53 != 2)
              {
                goto LABEL_84;
              }
            }

            else if (v53 == 2 || ((v53 ^ v54) & 1) != 0)
            {
              goto LABEL_84;
            }

            v55 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_conjunctionInfo);
            v56 = *&v19[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_conjunctionInfo];
            if (v55)
            {
              if (!v56)
              {
                goto LABEL_84;
              }

              type metadata accessor for RequestConjunctionInfo();
              v57 = v56;
              v58 = v55;
              v59 = sub_2232002B4();

              if ((v59 & 1) == 0)
              {
                goto LABEL_84;
              }

LABEL_81:
              OUTLINED_FUNCTION_1_21();
              if (v25)
              {
                OUTLINED_FUNCTION_1_21();
              }

              goto LABEL_84;
            }

            if (!v56)
            {
              goto LABEL_81;
            }
          }
        }

LABEL_84:

        goto LABEL_85;
      }

      (*(v6 + 8))(v14, v4);
    }

    v26 = &unk_27D059860;
    v27 = &qword_223214378;
    v28 = v18;
    goto LABEL_12;
  }

LABEL_85:
  OUTLINED_FUNCTION_40();
}

void sub_223183630()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  OUTLINED_FUNCTION_9_13(v2);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  v5 = v100 - v4;
  v6 = type metadata accessor for RequestContextData(0);
  v101.receiver = v0;
  v101.super_class = v6;
  v7 = objc_msgSendSuper2(&v101, sel_debugDescription);
  v8 = sub_2232000C4();
  v10 = v9;

  *&v102 = v8;
  *(&v102 + 1) = v10;
  MEMORY[0x223DD5AA0](31520, 0xE200000000000000);
  strcpy(&v102, "audioSource: ");
  HIWORD(v102) = -4864;
  v11 = OUTLINED_FUNCTION_5(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioSource);
  if (v11)
  {
    v13 = *v12;
    v14 = v11;
  }

  else
  {
    v14 = 0xE500000000000000;
    v13 = 0x3E6C696E3CLL;
  }

  MEMORY[0x223DD5AA0](v13, v14);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_29_5();

  OUTLINED_FUNCTION_3_23();
  *&v102 = 0xD000000000000012;
  *(&v102 + 1) = v15;
  v16 = OUTLINED_FUNCTION_5(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_audioDestination);
  v99 = v5;
  if (v16)
  {
    v18 = *v17;
    v19 = v16;
  }

  else
  {
    v19 = 0xE500000000000000;
    v18 = 0x3E6C696E3CLL;
  }

  MEMORY[0x223DD5AA0](v18, v19);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_29_5();

  strcpy(&v102, "responseMode: ");
  HIBYTE(v102) = -18;
  v20 = *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_responseMode + 8];
  v100[0] = *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_responseMode];
  v100[1] = v20;

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
  v22 = OUTLINED_FUNCTION_30_3(v21);
  MEMORY[0x223DD5AA0](v22);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_29_5();

  v23 = v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isEyesFree];
  strcpy(&v102, "isEyesFree: ");
  BYTE13(v102) = 0;
  HIWORD(v102) = -5120;
  if (v23)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (v23)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v24, v25);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_29_5();

  OUTLINED_FUNCTION_3_23();
  *&v102 = 0xD000000000000017;
  *(&v102 + 1) = v26;
  if (v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isVoiceTriggerEnabled])
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isVoiceTriggerEnabled])
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v27, v28);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_29_5();

  OUTLINED_FUNCTION_3_23();
  *&v102 = 0xD000000000000017;
  *(&v102 + 1) = v29;
  OUTLINED_FUNCTION_23_3();
  v32 = v31 | 0x65750000u;
  if (v30)
  {
    v33 = 0x65736C6166;
  }

  else
  {
    v33 = v32;
  }

  if (v30)
  {
    v34 = 0xE500000000000000;
  }

  else
  {
    v34 = 0xE400000000000000;
  }

  MEMORY[0x223DD5AA0](v33, v34);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_29_5();

  v35 = v102;
  strcpy(&v102, "bargeInModes: ");
  HIBYTE(v102) = -18;
  v36 = MEMORY[0x223DD5B40](*&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_bargeInModes], MEMORY[0x277D837D0]);
  MEMORY[0x223DD5AA0](v36);

  OUTLINED_FUNCTION_17_7();
  v102 = v35;

  OUTLINED_FUNCTION_29_5();

  v37 = v102;
  OUTLINED_FUNCTION_3_23();
  *&v102 = 0xD000000000000020;
  *(&v102 + 1) = v38;
  v39 = v99;
  sub_2230D3100(&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_approximatePreviousTTSInterval], v99, &qword_27D059858, &qword_223214370);
  v40 = sub_2231FFCC4();
  if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
  {
    sub_2230D40E0(v39, &qword_27D059858, &qword_223214370);
    v41 = 0xE500000000000000;
    v42 = 0x3E6C696E3CLL;
  }

  else
  {
    v42 = sub_2231FFC94();
    v41 = v43;
    (*(*(v40 - 8) + 8))(v39, v40);
  }

  MEMORY[0x223DD5AA0](v42, v41);

  OUTLINED_FUNCTION_17_7();
  v44 = v102;
  v102 = v37;

  MEMORY[0x223DD5AA0](v44, *(&v44 + 1));

  v45 = v102;
  OUTLINED_FUNCTION_3_23();
  *&v102 = 0xD000000000000014;
  *(&v102 + 1) = v46;
  v100[0] = *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_deviceRestrictions];

  sub_223184814(v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059880, &unk_223214380);
  sub_2231853C0();
  sub_223200084();

  v47 = OUTLINED_FUNCTION_28_3();
  MEMORY[0x223DD5AA0](v47);

  OUTLINED_FUNCTION_17_7();
  v48 = v102;
  v102 = v45;

  MEMORY[0x223DD5AA0](v48, *(&v48 + 1));

  OUTLINED_FUNCTION_3_23();
  v49 = v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isTriggerlessFollowup];
  *&v102 = 0xD000000000000017;
  *(&v102 + 1) = v50;
  if (v49)
  {
    v51 = 1702195828;
  }

  else
  {
    v51 = 0x65736C6166;
  }

  if (v49)
  {
    v52 = 0xE400000000000000;
  }

  else
  {
    v52 = 0xE500000000000000;
  }

  MEMORY[0x223DD5AA0](v51, v52);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_25_2();

  OUTLINED_FUNCTION_3_23();
  *&v102 = 0xD000000000000017;
  *(&v102 + 1) = v53;
  v100[0] = *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceTriggerEventInfo];

  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059890, &unk_223205AF0);
  v55 = OUTLINED_FUNCTION_30_3(v54);
  MEMORY[0x223DD5AA0](v55);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_25_2();

  OUTLINED_FUNCTION_3_23();
  v99 = 0xD000000000000015;
  *&v102 = 0xD000000000000015;
  *(&v102 + 1) = v56;
  LODWORD(v100[0]) = *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_voiceAudioSessionId];
  v57 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v57);

  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_25_2();

  v58 = v102;
  OUTLINED_FUNCTION_3_23();
  *&v102 = 0xD000000000000019;
  *(&v102 + 1) = v59;
  LOBYTE(v100[0]) = v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isSystemApertureEnabled];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059898, &qword_223214390);
  v60 = sub_223200104();
  MEMORY[0x223DD5AA0](v60);

  v102 = v58;

  v61 = OUTLINED_FUNCTION_28_3();
  MEMORY[0x223DD5AA0](v61);

  v62 = v102;
  OUTLINED_FUNCTION_3_23();
  v64 = v63 + 4;
  *&v102 = v63 + 4;
  *(&v102 + 1) = v65;
  v66 = OUTLINED_FUNCTION_44_3(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isLiveActivitiesSupported);
  MEMORY[0x223DD5AA0](v66);

  v102 = v62;

  v67 = OUTLINED_FUNCTION_28_3();
  MEMORY[0x223DD5AA0](v67);

  v68 = v102;
  strcpy(&v102, "isInAmbient: ");
  HIWORD(v102) = -4864;
  v69 = OUTLINED_FUNCTION_44_3(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_isInAmbient);
  MEMORY[0x223DD5AA0](v69);

  v70 = v102;
  v102 = v68;

  MEMORY[0x223DD5AA0](v70, *(&v70 + 1));

  OUTLINED_FUNCTION_3_23();
  *&v102 = 0xD000000000000011;
  *(&v102 + 1) = v71;
  v100[0] = *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_conjunctionInfo];
  v72 = v100[0];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598A0, &qword_223214398);
  v74 = OUTLINED_FUNCTION_30_3(v73);
  MEMORY[0x223DD5AA0](v74);

  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_25_2();

  OUTLINED_FUNCTION_3_23();
  *&v102 = v64;
  *(&v102 + 1) = v75;
  OUTLINED_FUNCTION_23_3();
  v78 = v77 | 0x65750000u;
  if (v76)
  {
    v79 = 0x65736C6166;
  }

  else
  {
    v79 = v78;
  }

  if (v76)
  {
    v80 = 0xE500000000000000;
  }

  else
  {
    v80 = 0xE400000000000000;
  }

  MEMORY[0x223DD5AA0](v79, v80);

  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_25_2();

  OUTLINED_FUNCTION_3_23();
  *&v102 = 0xD000000000000010;
  *(&v102 + 1) = v81;
  OUTLINED_FUNCTION_23_3();
  v84 = v83 | 0x65750000u;
  if (v82)
  {
    v85 = 0x65736C6166;
  }

  else
  {
    v85 = v84;
  }

  if (v82)
  {
    v86 = 0xE500000000000000;
  }

  else
  {
    v86 = 0xE400000000000000;
  }

  MEMORY[0x223DD5AA0](v85, v86);

  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_25_2();

  OUTLINED_FUNCTION_3_23();
  *&v102 = v99;
  *(&v102 + 1) = v87;
  v100[0] = *&v1[OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_userProfileMetadata];
  v88 = v100[0];
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598A8, &qword_2232143A0);
  v90 = OUTLINED_FUNCTION_30_3(v89);
  MEMORY[0x223DD5AA0](v90);

  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_25_2();

  OUTLINED_FUNCTION_3_23();
  *&v102 = 0xD000000000000010;
  *(&v102 + 1) = v91;
  OUTLINED_FUNCTION_27_3(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_activationTime);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598B0, &qword_2232143A8);
  v93 = OUTLINED_FUNCTION_30_3(v92);
  MEMORY[0x223DD5AA0](v93);

  OUTLINED_FUNCTION_35_4();
  OUTLINED_FUNCTION_25_2();

  v94 = v102;
  OUTLINED_FUNCTION_3_23();
  *&v102 = 0xD000000000000017;
  *(&v102 + 1) = v95;
  OUTLINED_FUNCTION_27_3(OBJC_IVAR____TtC16SiriMessageTypes18RequestContextData_suggestionRequestType);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598B8, &qword_2232143B0);
  v97 = OUTLINED_FUNCTION_30_3(v96);
  MEMORY[0x223DD5AA0](v97);

  v98 = v102;
  v102 = v94;

  MEMORY[0x223DD5AA0](v98, *(&v98 + 1));

  MEMORY[0x223DD5AA0](125, 0xE100000000000000);

  OUTLINED_FUNCTION_40();
}

id RequestContextData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RequestContextData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestContextData(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_223184234(void *__src, uint64_t a2, void *__dst)
{
  if (__dst != __src || __src + 16 * a2 <= __dst)
  {
    return OUTLINED_FUNCTION_5_19(__src, a2, __dst);
  }

  return __src;
}

void sub_22318427C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_4(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    v10 = OUTLINED_FUNCTION_37_3();

    MEMORY[0x2821FE828](v10);
  }

  else if (a3 != a1)
  {
    v9 = OUTLINED_FUNCTION_37_3();

    MEMORY[0x2821FE820](v9);
  }
}

void sub_22318433C(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_22_6();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_21_8();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 16);
  if (v6 <= v9)
  {
    v10 = *(a4 + 16);
  }

  else
  {
    v10 = v6;
  }

  if (!v10)
  {
    v14 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059918, &unk_223214530);
  v11 = *(sub_2231FFE94() - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v15 = _swift_stdlib_malloc_size(v14);
  if (!v12)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v15 - v13 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_23;
  }

  v14[2] = v9;
  v14[3] = 2 * ((v15 - v13) / v12);
LABEL_18:
  v17 = *(sub_2231FFE94() - 8);
  if (a1)
  {
    v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    sub_22318427C(a4 + v18, v9, v14 + v18, MEMORY[0x277D5DD80]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2231844F4(char a1, uint64_t a2, char a3, char *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_22_6();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_21_8();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = *(a4 + 2);
  if (v6 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059910, &qword_22320D320);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * ((v12 - 32) / 16);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (a1)
  {
    if (v11 != a4 || &v14[16 * v9] <= v13)
    {
      memmove(v13, v14, 16 * v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2231845EC(char a1, uint64_t a2, char a3, void *a4)
{
  if (a3)
  {
    OUTLINED_FUNCTION_22_6();
    if (v7 != v8)
    {
      if (v6 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_21_8();
    }
  }

  else
  {
    v6 = a2;
  }

  v9 = a4[2];
  if (v6 <= v9)
  {
    v10 = a4[2];
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059900, &qword_223214518);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v11[2] = v9;
    v11[3] = 2 * ((v12 - 32) / 24);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (a1)
  {
    if (v11 != a4 || &a4[3 * v9 + 4] <= v11 + 4)
    {
      v14 = OUTLINED_FUNCTION_28_3();
      memmove(v14, v15, v16);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059908, &unk_223214520);
    OUTLINED_FUNCTION_28_3();
    swift_arrayInitWithCopy();
  }
}

char *sub_22318470C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598C0, &qword_223214508);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_223184814(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22318591C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_223184880(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_223184880(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_223200694();
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
        v6 = sub_223200204();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_223184A3C(v7, v8, a1, v4);
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
    return sub_223184974(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_223184974(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_2232006B4();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_223184A3C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v83 = result;
  v89 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        result = *v11;
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          result = sub_2232006B4();
          v14 = result;
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          result = *(v16 - 1);
          if (result == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_2232006B4();
            if ((v14 ^ result))
            {
              break;
            }
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return result;
          }

          if (v10 != v27)
          {
            v84 = v5;
            v86 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              result = *v32;
              v33 = v32[1];
              v34 = v30;
              v35 = v29;
              do
              {
                if (result == *(v35 - 2) && v33 == *(v35 - 1))
                {
                  break;
                }

                result = sub_2232006B4();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                result = *v35;
                v33 = v35[1];
                *v35 = *(v35 - 1);
                *(v35 - 1) = v33;
                *(v35 - 2) = result;
                v35 -= 2;
              }

              while (!__CFADD__(v34++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v84;
            v9 = v86;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v85 = v10;
      if ((result & 1) == 0)
      {
        result = sub_22314C798(0, v8[2] + 1, 1, v8);
        v8 = result;
      }

      v39 = v8[2];
      v38 = v8[3];
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_22314C798(v38 > 1, v39 + 1, 1, v8);
        v8 = result;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v85;
      v87 = *v83;
      if (!*v83)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          result = sub_223185070((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v87);
          if (v5)
          {
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          result = memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v85;
      if (v85 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*v83)
  {
    goto LABEL_128;
  }

  sub_223184F44(&v89, *v83, a3);
}

uint64_t sub_223184F44(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_223185234(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_223185070((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_223185070(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_2232006B4() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_2232006B4() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

char *sub_223185248(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A58, &qword_223214500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_223185348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2231853C0()
{
  result = qword_27D059888;
  if (!qword_27D059888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059880, &unk_223214380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059888);
  }

  return result;
}

void sub_22318542C(uint64_t a1)
{
  sub_223185860(319, &qword_280FCE6A8, MEMORY[0x277CC88A8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2231855FC(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA440, MEMORY[0x277D839B0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_223110900(319, &qword_280FCA458, &qword_27D059880, &unk_223214380);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_223185860(319, &qword_280FCE6A8, MEMORY[0x277CC88A8]);
        if (v9 > 0x3F)
        {
          return v8;
        }

        sub_223110900(319, &qword_280FCA520, &qword_27D0579F0, &qword_223205AD0);
        if (v10 > 0x3F)
        {
          return v8;
        }

        sub_2230D525C(319, &qword_280FCA330, MEMORY[0x277D84CC0]);
        if (v11 > 0x3F)
        {
          return v8;
        }

        sub_223185860(319, &qword_280FCA7B8, type metadata accessor for RequestConjunctionInfo);
        if (v12 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_2231858B4(319);
          v2 = v13;
          if (v14 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA320, MEMORY[0x277D84D38]);
            v2 = v15;
            if (v16 <= 0x3F)
            {
              sub_223185860(319, &qword_280FCA388, type metadata accessor for SMTSuggestionRequestType);
              v2 = v17;
              if (v18 <= 0x3F)
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

  return v2;
}

void sub_223185860(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2231858B4(uint64_t a1)
{
  if (!qword_280FCA3A0)
  {
    sub_2230FB7F4(255, &qword_280FCA3A8, off_2784D4AB8);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280FCA3A0);
    }
  }
}

uint64_t sub_223185930(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2231FFCC4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void OUTLINED_FUNCTION_25_2()
{

  JUMPOUT(0x223DD5AA0);
}

uint64_t OUTLINED_FUNCTION_32_2()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;
}

uint64_t OUTLINED_FUNCTION_33_3()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;
}

uint64_t OUTLINED_FUNCTION_35_4()
{
  *(v2 - 96) = v1;
  *(v2 - 88) = v0;
}

uint64_t sub_223185A20(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F536F69647561 && a2 == 0xEB00000000656372;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000002232248C0 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F4DLL;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7246736579457369 && a2 == 0xEA00000000006565;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x8000000223224740 == a2;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x8000000223224760 == a2;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x8000000223224780 == a2;
              if (v11 || (sub_2232006B4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4D6E496567726162 && a2 == 0xEC0000007365646FLL;
                if (v12 || (sub_2232006B4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001ELL && 0x80000002232248A0 == a2;
                  if (v13 || (sub_2232006B4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x80000002232247A0 == a2;
                    if (v14 || (sub_2232006B4() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000015 && 0x8000000223224880 == a2;
                      if (v15 || (sub_2232006B4() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000013 && 0x80000002232247C0 == a2;
                        if (v16 || (sub_2232006B4() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000017 && 0x8000000223224860 == a2;
                          if (v17 || (sub_2232006B4() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000019 && 0x8000000223224840 == a2;
                            if (v18 || (sub_2232006B4() & 1) != 0)
                            {

                              return 13;
                            }

                            else if (a1 == 0x69626D416E497369 && a2 == 0xEB00000000746E65)
                            {

                              return 14;
                            }

                            else
                            {
                              v20 = sub_2232006B4();

                              if (v20)
                              {
                                return 14;
                              }

                              else
                              {
                                return 15;
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
          }
        }
      }
    }
  }
}

unint64_t sub_223185EA8(char a1)
{
  result = 0x756F536F69647561;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x65736E6F70736572;
      break;
    case 3:
      result = 0x7246736579457369;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x4D6E496567726162;
      break;
    case 8:
      result = 0xD00000000000001ELL;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD000000000000019;
      break;
    case 14:
      result = 0x69626D416E497369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_223186088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223185A20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231860B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_223185EA0();
  *a1 = result;
  return result;
}

uint64_t sub_2231860D8(uint64_t a1)
{
  v2 = sub_2231883B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223186114(uint64_t a1)
{
  v2 = sub_2231883B8();

  return MEMORY[0x2821FE720](a1, v2);
}

id RequestContextMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v3 = objc_allocWithZone(v1);
  return RequestContextMessage.init(build:)(v2, v0);
}

id RequestContextMessage.init(build:)(void (*a1)(unsigned __int8 *), uint64_t a2)
{
  v84 = a2;
  v85 = a1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  v81 = &v67[-v3];
  v4 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v79 = v5;
  MEMORY[0x28223BE20](v6);
  v80 = &v67[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for RequestContextMessage.Builder(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v11 = 15;
  *(v11 + 1) = 0;
  *(v11 + 2) = 0;
  v12 = v9[8];
  v82 = v4;
  __swift_storeEnumTagSinglePayload(&v11[v12], 1, 1, v4);
  v13 = &v11[v9[9]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v78 = v13;
  v14 = &v11[v9[10]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v11[v9[11]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v70 = v15;
  v16 = &v11[v9[12]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v71 = v16;
  v17 = v9[13];
  v11[v17] = 2;
  v18 = v9[14];
  v11[v18] = 2;
  v19 = v9[15];
  v11[v19] = 2;
  v77 = v9[16];
  v11[v77] = 2;
  v76 = v9[17];
  *&v11[v76] = 0;
  v20 = v9[18];
  v21 = sub_2231FFCC4();
  v75 = v20;
  __swift_storeEnumTagSinglePayload(&v11[v20], 1, 1, v21);
  v22 = v9[19];
  *&v11[v22] = 0;
  v73 = v9[20];
  *&v11[v73] = 0;
  v23 = &v11[v9[21]];
  *v23 = 0;
  v23[4] = 1;
  v72 = v9[22];
  v11[v72] = 2;
  v74 = v9[23];
  v11[v74] = 2;
  v24 = v9[24];
  v11[v24] = 2;
  v85(v11);
  v25 = *v11;
  if (v25 == 15)
  {
    goto LABEL_16;
  }

  v26 = *(v11 + 2);
  if (!v26)
  {
    goto LABEL_16;
  }

  v69 = v24;
  v85 = v26;
  v84 = *(v11 + 1);
  v27 = &v11[v12];
  v28 = v81;
  sub_2230D3008(v27, v81, &qword_27D0575C0, &qword_2232035E0);
  v29 = v82;
  if (__swift_getEnumTagSinglePayload(v28, 1, v82) == 1)
  {
    sub_2230D40E0(v28, &qword_27D0575C0, &qword_2232035E0);
LABEL_16:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v43 = sub_223200014();
    __swift_project_value_buffer(v43, qword_280FCE830);
    v44 = sub_223200004();
    v45 = sub_223200254();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v87 = v47;
      *v46 = 136446210;
      v48 = sub_2230F7898(ObjectType);
      v50 = sub_2231A5D38(v48, v49, &v87);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_2230CE000, v44, v45, "Could not build %{public}s: Builder has missing required fields", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x223DD6780](v47, -1, -1);
      MEMORY[0x223DD6780](v46, -1, -1);
    }

    sub_223186A24(v11);
    type metadata accessor for RequestContextMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v68 = v25;
  v30 = v79;
  v31 = v28;
  v32 = v80;
  (*(v79 + 32))(v80, v31, v29);
  v33 = v78;
  v34 = *(v78 + 1);
  if (!v34)
  {
    (*(v30 + 8))(v32, v29);
    goto LABEL_16;
  }

  v35 = v11[v17];
  if (v35 == 2 || (v36 = v11[v18], v37 = v30, v36 == 2) || (v38 = v11[v19], v38 == 2) || (v39 = v11[v77], v39 == 2) || (v40 = *&v11[v76]) == 0 || (v41 = *&v11[v22]) == 0 || (v42 = v80, (v23[4] & 1) != 0))
  {
    (*(v30 + 8))(v80, v29);
    goto LABEL_16;
  }

  v53 = *v14;
  ObjectType = *(v14 + 1);
  v54 = ObjectType;
  v77 = v34;
  v55 = v86;
  v56 = (v86 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_audioSource);
  *v56 = v53;
  v56[1] = v54;
  v57 = *(v70 + 1);
  v58 = (v55 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_audioDestination);
  *v58 = *v70;
  v58[1] = v57;
  v59 = *v71;
  v81 = *(v71 + 1);
  v60 = v81;
  v61 = (v55 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_responseMode);
  *v61 = v59;
  v61[1] = v60;
  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isEyesFree) = v35 & 1;
  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isVoiceTriggerEnabled) = v36 & 1;
  v62 = *v33;
  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isTextToSpeechEnabled) = v38 & 1;
  v63 = *v23;
  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isTriggerlessFollowup) = v39 & 1;
  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_bargeInModes) = v40;
  sub_2230D3008(&v11[v75], v55 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_approximatePreviousTTSInterval, &qword_27D059858, &qword_223214370);
  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_deviceRestrictions) = v41;
  v64 = *&v11[v73];
  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_voiceTriggerEventInfo) = v64;
  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_voiceAudioSessionId) = v63;
  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isSystemApertureEnabled) = v11[v72];
  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isLiveActivitiesSupported) = v11[v74];
  *(v55 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isInAmbient) = v11[v69];
  MEMORY[0x28223BE20](v64);
  v67[-48] = v68;
  v65 = v85;
  *&v67[-40] = v84;
  *&v67[-32] = v65;
  *&v67[-24] = v42;
  *&v67[-16] = v62;
  *&v67[-8] = v77;

  v51 = RequestMessageBase.init(build:)(sub_22311A588);
  v66 = v51;
  sub_223186A24(v11);
  if (v51)
  {
  }

  (*(v37 + 8))(v42, v82);
  return v51;
}

uint64_t sub_223186A24(uint64_t a1)
{
  v2 = type metadata accessor for RequestContextMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RequestContextMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059858, &qword_223214370);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  v5 = v57 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059920, &qword_223214540);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = v57 - v10;
  v12 = a1[3];
  v59 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2231883B8();
  sub_223200794();
  v14 = &qword_280FCDFA0[12];
  if (v1)
  {
    v60 = v1;
    v16 = 0;
    v17 = 0;
    LODWORD(v5) = 0;
    OUTLINED_FUNCTION_5_20();
  }

  else
  {
    v16 = v8;
    LOBYTE(v61[0]) = 0;
    v15 = sub_223200494();
    v20 = v58;
    v21 = (v58 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_audioSource);
    *v21 = v15;
    v21[1] = v22;
    OUTLINED_FUNCTION_2_29(1);
    v23 = sub_223200494();
    v24 = (v20 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_audioDestination);
    *v24 = v23;
    v24[1] = v25;
    OUTLINED_FUNCTION_2_29(2);
    v26 = sub_223200494();
    v27 = (v20 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_responseMode);
    *v27 = v26;
    v27[1] = v28;
    OUTLINED_FUNCTION_2_29(3);
    v29 = sub_223200504();
    OUTLINED_FUNCTION_20_10(v29, OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isEyesFree);
    OUTLINED_FUNCTION_2_29(4);
    v30 = sub_223200504();
    OUTLINED_FUNCTION_20_10(v30, OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isVoiceTriggerEnabled);
    OUTLINED_FUNCTION_2_29(5);
    v31 = sub_223200504();
    OUTLINED_FUNCTION_20_10(v31, OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isTextToSpeechEnabled);
    OUTLINED_FUNCTION_2_29(6);
    v32 = sub_223200504();
    OUTLINED_FUNCTION_20_10(v32, OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isTriggerlessFollowup);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059880, &unk_223214380);
    v62 = 7;
    v57[1] = sub_223165264(&qword_27D058DB8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_223200554();
    *(v20 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_bargeInModes) = v61[0];
    sub_2231FFCC4();
    LOBYTE(v61[0]) = 8;
    sub_223185930(&qword_27D059928, MEMORY[0x277CC88D0]);
    sub_2232004C4();
    v60 = 0;
    sub_2230DA700(v5, v58 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_approximatePreviousTTSInterval);
    v62 = 9;
    v17 = v6;
    v33 = v60;
    sub_223200554();
    v60 = v33;
    if (v33)
    {
      v34 = OUTLINED_FUNCTION_9_22();
      v35(v34);
      v6 = 0;
      v13 = 0;
      LOBYTE(v14) = 0;
      OUTLINED_FUNCTION_3_24();
      LODWORD(v11) = 1;
    }

    else
    {
      *(v58 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_deviceRestrictions) = v61[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0579F0, &qword_223205AD0);
      v62 = 10;
      sub_22310C4F4(&qword_27D0579F8, MEMORY[0x277D83808], MEMORY[0x277D83528]);
      v36 = v60;
      sub_223200554();
      v60 = v36;
      if (v36)
      {
        v37 = OUTLINED_FUNCTION_9_22();
        v38(v37);
        v13 = 0;
        LOBYTE(v14) = 0;
        OUTLINED_FUNCTION_3_24();
        LODWORD(v11) = 1;
        v6 = 1;
      }

      else
      {
        *(v58 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_voiceTriggerEventInfo) = v61[0];
        OUTLINED_FUNCTION_7_19(11);
        v39 = sub_2232004E4();
        v60 = 0;
        if ((v39 & 0x100000000) != 0)
        {
          v40 = 0;
        }

        else
        {
          v40 = v39;
        }

        *(v58 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_voiceAudioSessionId) = v40;
        OUTLINED_FUNCTION_7_19(12);
        v41 = v60;
        v42 = sub_2232004A4();
        v60 = v41;
        if (v41 || (*(v58 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isSystemApertureEnabled) = v42 & 1, OUTLINED_FUNCTION_7_19(13), v43 = v60, v44 = sub_2232004A4(), (v60 = v43) != 0) || (*(v58 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isLiveActivitiesSupported) = v44 & 1, OUTLINED_FUNCTION_7_19(14), v45 = v60, v46 = sub_2232004A4(), (v60 = v45) != 0))
        {
          v47 = OUTLINED_FUNCTION_9_22();
          v48(v47);
          LOBYTE(v14) = 0;
          OUTLINED_FUNCTION_3_24();
          LODWORD(v11) = 1;
          v6 = 1;
          v13 = 1;
        }

        else
        {
          v49 = v46 & 1;
          v50 = v59;
          *(v58 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isInAmbient) = v49;
          sub_2230F7158(v50, v61);
          v51 = v60;
          v52 = RequestMessageBase.init(from:)(v61);
          v60 = v51;
          if (!v51)
          {
            v13 = v52;
            v55 = OUTLINED_FUNCTION_9_22();
            v56(v55);
            __swift_destroy_boxed_opaque_existential_1(v59);
            return v13;
          }

          v53 = OUTLINED_FUNCTION_9_22();
          v54(v53);
          OUTLINED_FUNCTION_3_24();
          LODWORD(v11) = 1;
          v6 = 1;
          v13 = 1;
          LOBYTE(v14) = 1;
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v59);
  if ((v14 & 1) == 0)
  {
    v18 = v58;
    if (v16)
    {
    }

    if (v17)
    {

      if (!v5)
      {
LABEL_9:
        if (!v11)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    else if (!v5)
    {
      goto LABEL_9;
    }

    if (!v11)
    {
LABEL_10:
      if (!v6)
      {
        goto LABEL_11;
      }

      goto LABEL_18;
    }

LABEL_17:
    sub_2230D40E0(v18 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_approximatePreviousTTSInterval, &qword_27D059858, &qword_223214370);
    if (!v6)
    {
LABEL_11:
      if (!v13)
      {
LABEL_13:
        type metadata accessor for RequestContextMessage(0);
        swift_deallocPartialClassInstance();
        return v13;
      }

LABEL_12:

      goto LABEL_13;
    }

LABEL_18:

    if (!v13)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  return v13;
}

uint64_t sub_223187280(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059930, &qword_223214548);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231883B8();
  sub_2232007A4();
  LOBYTE(v13) = 0;
  OUTLINED_FUNCTION_10();
  sub_2232005C4();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    OUTLINED_FUNCTION_10();
    sub_2232005C4();
    LOBYTE(v13) = 2;
    OUTLINED_FUNCTION_10();
    sub_2232005C4();
    OUTLINED_FUNCTION_0_10(3);
    sub_223200604();
    OUTLINED_FUNCTION_0_10(4);
    sub_223200604();
    OUTLINED_FUNCTION_0_10(5);
    sub_223200604();
    OUTLINED_FUNCTION_0_10(6);
    sub_223200604();
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_bargeInModes);
    v12 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059880, &unk_223214380);
    sub_223165264(&qword_280FCA460, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_1_22();
    v11 = OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_approximatePreviousTTSInterval;
    LOBYTE(v13) = 8;
    sub_2231FFCC4();
    sub_223185930(&qword_280FCE6B0, MEMORY[0x277CC88B0]);
    OUTLINED_FUNCTION_10();
    sub_2232005E4();
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_deviceRestrictions);
    v12 = 9;
    OUTLINED_FUNCTION_1_22();
    v13 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_voiceTriggerEventInfo);
    v12 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059890, &unk_223205AF0);
    sub_22310C44C();
    OUTLINED_FUNCTION_10();
    sub_223200654();
    OUTLINED_FUNCTION_0_10(11);
    sub_223200674();
    LOBYTE(v13) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isSystemApertureEnabled);
    v12 = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059898, &qword_223214390);
    sub_22318840C();
    OUTLINED_FUNCTION_1_22();
    LOBYTE(v13) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isLiveActivitiesSupported);
    v12 = 13;
    OUTLINED_FUNCTION_1_22();
    LOBYTE(v13) = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_isInAmbient);
    v12 = 14;
    OUTLINED_FUNCTION_1_22();
    sub_2230D77A8(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t RequestContextMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.requestId.getter()
{
  type metadata accessor for RequestContextMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RequestContextMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for RequestContextMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.audioSource.getter()
{
  type metadata accessor for RequestContextMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RequestContextMessage.Builder.audioSource.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for RequestContextMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.audioDestination.getter()
{
  type metadata accessor for RequestContextMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RequestContextMessage.Builder.audioDestination.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for RequestContextMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.responseMode.getter()
{
  type metadata accessor for RequestContextMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t RequestContextMessage.Builder.responseMode.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for RequestContextMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.isEyesFree.setter()
{
  result = OUTLINED_FUNCTION_16_9();
  *(v1 + *(result + 44)) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.isVoiceTriggerEnabled.setter()
{
  result = OUTLINED_FUNCTION_16_9();
  *(v1 + *(result + 48)) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.isTextToSpeechEnabled.setter()
{
  result = OUTLINED_FUNCTION_16_9();
  *(v1 + *(result + 52)) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.isTriggerlessFollowup.setter()
{
  result = OUTLINED_FUNCTION_16_9();
  *(v1 + *(result + 56)) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.bargeInModes.getter()
{
  type metadata accessor for RequestContextMessage.Builder(0);
}

uint64_t RequestContextMessage.Builder.bargeInModes.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_9() + 60);

  *(v1 + v2) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.deviceRestrictions.getter()
{
  type metadata accessor for RequestContextMessage.Builder(0);
}

uint64_t RequestContextMessage.Builder.deviceRestrictions.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_9() + 68);

  *(v1 + v2) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.voiceTriggerEventInfo.getter()
{
  type metadata accessor for RequestContextMessage.Builder(0);
}

uint64_t RequestContextMessage.Builder.voiceTriggerEventInfo.setter()
{
  v2 = *(OUTLINED_FUNCTION_16_9() + 72);

  *(v1 + v2) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.voiceAudioSessionId.setter()
{
  result = OUTLINED_FUNCTION_16_9();
  v3 = v1 + *(result + 76);
  *v3 = v0;
  *(v3 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t RequestContextMessage.Builder.isSystemApertureEnabled.setter()
{
  result = OUTLINED_FUNCTION_16_9();
  *(v1 + *(result + 80)) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.isLiveActivitiesSupported.setter()
{
  result = OUTLINED_FUNCTION_16_9();
  *(v1 + *(result + 84)) = v0;
  return result;
}

uint64_t RequestContextMessage.Builder.isInAmbient.setter()
{
  result = OUTLINED_FUNCTION_16_9();
  *(v1 + *(result + 88)) = v0;
  return result;
}

uint64_t sub_22318821C()
{

  sub_2230D40E0(v0 + OBJC_IVAR____TtC16SiriMessageTypes21RequestContextMessage_approximatePreviousTTSInterval, &qword_27D059858, &qword_223214370);
}

id RequestContextMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestContextMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231883B8()
{
  result = qword_280FCDEA0;
  if (!qword_280FCDEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDEA0);
  }

  return result;
}

unint64_t sub_22318840C()
{
  result = qword_280FCA438;
  if (!qword_280FCA438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D059898, &qword_223214390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA438);
  }

  return result;
}

void sub_223188490(uint64_t a1)
{
  sub_2231887E8(319, &qword_280FCE6A8, MEMORY[0x277CC88A8]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2231885E0(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2231887E8(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_280FCA440, MEMORY[0x277D839B0]);
      v2 = v8;
      if (v9 <= 0x3F)
      {
        sub_223110900(319, &qword_280FCA458, &qword_27D059880, &unk_223214380);
        if (v11 > 0x3F)
        {
          return v10;
        }

        sub_2231887E8(319, &qword_280FCE6A8, MEMORY[0x277CC88A8]);
        if (v12 <= 0x3F)
        {
          sub_223110900(319, &qword_280FCA520, &qword_27D0579F0, &qword_223205AD0);
          if (v13 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA330, MEMORY[0x277D84CC0]);
            if (v14 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }

        return v6;
      }
    }
  }

  return v2;
}

void sub_2231887E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for RequestContextMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22318891C()
{
  result = qword_27D059938;
  if (!qword_27D059938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059938);
  }

  return result;
}

unint64_t sub_223188974()
{
  result = qword_280FCDE90;
  if (!qword_280FCDE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDE90);
  }

  return result;
}

unint64_t sub_2231889CC()
{
  result = qword_280FCDE98;
  if (!qword_280FCDE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCDE98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_9()
{

  return type metadata accessor for RequestContextMessage.Builder(0);
}

void *RequestMessageBase.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059948, &qword_2232147A0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2230DCF70();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for RequestMessageBase(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5 = sub_2232004F4();
    v7 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes18RequestMessageBase_requestId);
    *v7 = v5;
    v7[1] = v8;
    sub_2230F7158(a1, v12);
    v9 = SessionMessageBase.init(from:)(v12);
    v10 = OUTLINED_FUNCTION_2();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_223188C88(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_223188D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223188C88(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_223188D34(uint64_t a1)
{
  v2 = sub_2230DCF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223188D70(uint64_t a1)
{
  v2 = sub_2230DCF70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RequestMessageBase.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t RequestMessageBase.Builder.assistantId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t RequestMessageBase.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RequestMessageBase.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t RequestMessageBase.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestMessageBase.Builder(0) + 28));

  return v1;
}

id RequestMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RequestMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for RequestMessageBase.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231891A0()
{
  result = qword_27D059950;
  if (!qword_27D059950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D059950);
  }

  return result;
}

unint64_t sub_2231891F8()
{
  result = qword_280FCB618;
  if (!qword_280FCB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB618);
  }

  return result;
}

unint64_t sub_223189250()
{
  result = qword_280FCB620;
  if (!qword_280FCB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCB620);
  }

  return result;
}

void *RequestSummary.conjunctionInfo.getter()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

uint64_t RequestSummary.description.getter()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 112);
  v5 = *(v0 + 120);
  sub_223200374();
  MEMORY[0x223DD5AA0](0x747365757165723CLL, 0xEC000000203A6449);
  MEMORY[0x223DD5AA0](v2, v3);
  v6 = MEMORY[0x223DD5AA0](0x726573753C202C3ELL, 0xEF203A7475706E49);
  OUTLINED_FUNCTION_31_3(v6, v7, &type metadata for RequestSummary.UserInput, v8, v9, v10, v11, v12, v1[2], v1[3], v1[4], v1[5], v33, v35, v37, v39, 0);
  v13 = MEMORY[0x223DD5AA0](0xD000000000000014, 0x8000000223224CD0);
  OUTLINED_FUNCTION_31_3(v13, v14, &type metadata for RequestSummary.SystemResponse, v15, v16, v17, v18, v19, v1[6], v1[7], v1[8], v1[9], v1[10], v1[11], v1[12], v1[13], v41);
  OUTLINED_FUNCTION_45_1();
  LOWORD(v29) = v4;
  OUTLINED_FUNCTION_31_3(v20, v21, &type metadata for RequestSummary.ExecutionSource, v22, v23, v24, v25, v26, v29, v30, v31, v32, v34, v36, v38, v40, v42);
  OUTLINED_FUNCTION_45_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0598A0, &qword_223214398);
  v27 = sub_223200104();
  MEMORY[0x223DD5AA0](v27);

  MEMORY[0x223DD5AA0](10558, 0xE200000000000000);
  return v43;
}

uint64_t _s16SiriMessageTypes14RequestSummaryV15routingDecisionAA09NLRoutinggB0C07RoutingG0OSgvg_0@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 128), 0x41uLL);
  memcpy(a1, (v1 + 128), 0x41uLL);
  return sub_2230E3D68(__dst, &v4, &qword_27D057DC8, &qword_22320E730);
}

BOOL static RequestSummary.UserInput.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  if (!v2)
  {
    if (!v6)
    {
      sub_22318DFEC(*a1, 0);
      v45 = v5;
      v46 = 0;
      goto LABEL_19;
    }

LABEL_15:
    v24 = OUTLINED_FUNCTION_7_20();
    sub_2230E3DD8(v24, v25, v26, v27);
    v28 = OUTLINED_FUNCTION_2_30();
    sub_2230E3DD8(v28, v29, v30, v31);
    v32 = OUTLINED_FUNCTION_2_30();
    sub_22318DFEC(v32, v33);
    v34 = OUTLINED_FUNCTION_7_20();
    sub_22318DFEC(v34, v35);
    return 0;
  }

  if (!v6)
  {
    goto LABEL_15;
  }

  if (*a1 != v5 || v2 != v6)
  {
    OUTLINED_FUNCTION_17_8();
    if ((sub_2232006B4() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (v4 != v8 || v3 != v7)
  {
    v11 = sub_2232006B4();
    v12 = OUTLINED_FUNCTION_7_20();
    sub_2230E3DD8(v12, v13, v14, v15);
    v16 = OUTLINED_FUNCTION_2_30();
    sub_2230E3DD8(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_2_30();
    sub_22318DFEC(v20, v21);
    v22 = OUTLINED_FUNCTION_7_20();
    sub_22318DFEC(v22, v23);
    return (v11 & 1) != 0;
  }

  v37 = OUTLINED_FUNCTION_2_1();
  sub_2230E3DD8(v37, v38, v4, v3);
  v39 = OUTLINED_FUNCTION_2_30();
  sub_2230E3DD8(v39, v40, v41, v42);
  v43 = OUTLINED_FUNCTION_2_30();
  sub_22318DFEC(v43, v44);
  v45 = OUTLINED_FUNCTION_2_1();
LABEL_19:
  sub_22318DFEC(v45, v46);
  return 1;
}

uint64_t static RequestSummary.UserQuery.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2232006B4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_2_1();

      return sub_2232006B4();
    }
  }

  return result;
}

uint64_t sub_223189840(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7364980 && a2 == 0xE300000000000000;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_223189904(char a1)
{
  if (a1)
  {
    return 0x7972657571;
  }

  else
  {
    return 7364980;
  }
}

uint64_t sub_223189938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223189840(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223189960(uint64_t a1)
{
  v2 = sub_22318E030();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318999C(uint64_t a1)
{
  v2 = sub_22318E030();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231899D8(uint64_t a1)
{
  v2 = sub_22318E084();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223189A14(uint64_t a1)
{
  v2 = sub_22318E084();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223189A50(uint64_t a1)
{
  v2 = sub_22318E12C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223189A8C(uint64_t a1)
{
  v2 = sub_22318E12C();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestSummary.UserInput.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059970, &qword_223214940);
  OUTLINED_FUNCTION_9();
  v18 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059978, &qword_223214948);
  OUTLINED_FUNCTION_9();
  v16 = v8;
  v17 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_16();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059980, &qword_223214950);
  OUTLINED_FUNCTION_9();
  v11 = v10;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v13 = *(v0 + 8);
  OUTLINED_FUNCTION_29(v4, v4[3]);
  sub_22318E030();
  sub_2232007A4();
  if (v13)
  {
    sub_22318E084();
    sub_2232005B4();
    sub_22318E0D8();
    sub_223200654();
    v14 = OUTLINED_FUNCTION_29_6();
    v15(v14, v18);
  }

  else
  {
    sub_22318E12C();
    sub_2232005B4();
    (*(v16 + 8))(v2, v17);
  }

  (*(v11 + 8))(v1, v19);
  OUTLINED_FUNCTION_9_0();
}

void RequestSummary.UserInput.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v50 = v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0599A8, &qword_223214958);
  OUTLINED_FUNCTION_9();
  v49 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0599B0, &qword_223214960);
  OUTLINED_FUNCTION_9();
  v48 = v8;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0599B8, &unk_223214968);
  OUTLINED_FUNCTION_9();
  v51 = v13;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_22318E030();
  OUTLINED_FUNCTION_33_4();
  sub_223200794();
  if (v0)
  {
    goto LABEL_8;
  }

  v46 = v7;
  v47 = v11;
  v57 = v3;
  v15 = sub_223200594();
  sub_2230E0B80(v15, 0);
  if (v17 == v16 >> 1)
  {
LABEL_7:
    sub_2232003A4();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v28 = &type metadata for RequestSummary.UserInput;
    v29 = sub_223200484();
    OUTLINED_FUNCTION_48(v29);
    OUTLINED_FUNCTION_5_0();
    (*(v30 + 104))(v28);
    swift_willThrow();
    swift_unknownObjectRelease();
    v31 = OUTLINED_FUNCTION_22_7();
    v32(v31);
    v3 = v57;
LABEL_8:
    v33 = v3;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1(v33);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  OUTLINED_FUNCTION_32();
  if (v21 < (v20 >> 1))
  {
    HIDWORD(v45) = *(v19 + v18);
    sub_2230E0B40(v18 + 1);
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    if (v23 == v25 >> 1)
    {
      if ((v45 & 0x100000000) != 0)
      {
        LOBYTE(v53) = 1;
        sub_22318E084();
        sub_223200474();
        v26 = v50;
        sub_22318E180();
        sub_223200554();
        v34 = v51;
        swift_unknownObjectRelease();
        v39 = OUTLINED_FUNCTION_56_1();
        v40(v39);
        (*(v34 + 8))(v1, v12);
        v41 = v53;
        v42 = v54;
        v43 = v55;
        v44 = v56;
      }

      else
      {
        LOBYTE(v53) = 0;
        sub_22318E12C();
        OUTLINED_FUNCTION_13_7();
        sub_223200474();
        v26 = v50;
        swift_unknownObjectRelease();
        v35 = OUTLINED_FUNCTION_42_2();
        v36(v35, v46);
        v37 = OUTLINED_FUNCTION_22_7();
        v38(v37);
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v44 = 0;
      }

      *v26 = v41;
      v26[1] = v42;
      v26[2] = v43;
      v26[3] = v44;
      v33 = v57;
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t RequestSummary.UserQuery.executedQuery.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

double RequestSummary.UserQuery.init(build:)@<D0>(void (*a1)(__int128 *)@<X0>, void *a2@<X8>)
{
  v18 = 0u;
  v19 = 0u;
  a1(&v18);
  v4 = *(&v18 + 1);
  v5 = *(&v19 + 1);
  if (*(&v18 + 1))
  {
    if (*(&v19 + 1))
    {
      v6 = v19;
      *a2 = v18;
      a2[1] = v4;
      a2[2] = v6;
      a2[3] = v5;
      return result;
    }
  }

  else
  {
  }

  if (qword_280FCA778 != -1)
  {
    OUTLINED_FUNCTION_1_0(&qword_280FCA778);
  }

  v7 = sub_223200014();
  __swift_project_value_buffer(v7, qword_280FCE830);
  v8 = sub_223200004();
  v9 = sub_223200254();
  if (OUTLINED_FUNCTION_46_2(v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446210;
    v17 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0599C8, &qword_223214978);
    v12 = sub_223200104();
    v14 = sub_2231A5D38(v12, v13, &v17);

    *(v10 + 4) = v14;
    OUTLINED_FUNCTION_62_1(&dword_2230CE000, v15, v16, "Could not build %{public}s: Builder has missing required fields");
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_49_2();
    MEMORY[0x223DD6780](v10, -1, -1);
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

uint64_t RequestSummary.UserQuery.Builder.originalUtterance.setter()
{
  OUTLINED_FUNCTION_6_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t RequestSummary.UserQuery.Builder.executedQuery.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_22318A5B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000223224D30 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465747563657865 && a2 == 0xED00007972657551)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_22318A690(char a1)
{
  if (a1)
  {
    return 0x6465747563657865;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_22318A6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22318A5B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22318A708(uint64_t a1)
{
  v2 = sub_22318E1D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318A744(uint64_t a1)
{
  v2 = sub_22318E1D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestSummary.UserQuery.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0599D0, &qword_223214980);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29(v2, v2[3]);
  sub_22318E1D4();
  OUTLINED_FUNCTION_33_4();
  sub_2232007A4();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_8_2();
  sub_2232005F4();
  if (!v0)
  {
    OUTLINED_FUNCTION_57_1();
    OUTLINED_FUNCTION_8_2();
    sub_2232005F4();
  }

  v5 = OUTLINED_FUNCTION_42_2();
  v6(v5, v3);
  OUTLINED_FUNCTION_9_0();
}

void RequestSummary.UserQuery.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0599E0, &qword_223214988);
  OUTLINED_FUNCTION_9();
  v31 = v30;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29(v26, v26[3]);
  sub_22318E1D4();
  sub_223200794();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v33 = sub_2232004F4();
    v35 = v34;
    v36 = sub_2232004F4();
    v38 = v37;
    v39 = v36;
    (*(v31 + 8))(v24, v29);
    *v28 = v33;
    v28[1] = v35;
    v28[2] = v39;
    v28[3] = v38;

    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t static RequestSummary.SystemResponse.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v36 = a1[5];
      v37 = a2[5];
      v18 = a1[4];
      v19 = a2[6];
      v20 = a2[7];
      v21 = a1[7];
      v22 = a1[6];
      v23 = a2[4];
      v24 = sub_2232006B4();
      v12 = v23;
      v7 = v22;
      v9 = v21;
      v16 = v20;
      v14 = v19;
      v5 = v18;
      v8 = v36;
      v15 = v37;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v6)
  {
    if (!v13)
    {
      return 0;
    }

    if (v4 != v11 || v6 != v13)
    {
      OUTLINED_FUNCTION_55_0();
      v27 = v26;
      v29 = v28;
      v30 = sub_2232006B4();
      v12 = v29;
      v7 = v27;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (!v15)
    {
      return 0;
    }

    if (v5 != v12 || v8 != v15)
    {
      v32 = v7;
      v33 = sub_2232006B4();
      v7 = v32;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v9)
  {
    if (v16)
    {
      v34 = v7 == v14 && v9 == v16;
      if (v34 || (sub_2232006B4() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v16)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_22318ACB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6972506C6C7566 && a2 == 0xE900000000000074;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616570536C6C7566 && a2 == 0xE90000000000006BLL;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000223221F90 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x8000000223221FB0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

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

unint64_t sub_22318AE20(char a1)
{
  result = 0x6E6972506C6C7566;
  switch(a1)
  {
    case 1:
      result = 0x616570536C6C7566;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22318AEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22318ACB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22318AEE0(uint64_t a1)
{
  v2 = sub_22318E228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318AF1C(uint64_t a1)
{
  v2 = sub_22318E228();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestSummary.SystemResponse.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0599E8, &qword_223214990);
  OUTLINED_FUNCTION_9();
  v29 = v28;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29(v26, v26[3]);
  sub_22318E228();
  OUTLINED_FUNCTION_33_4();
  sub_2232007A4();
  sub_2232005C4();
  if (!v23)
  {
    OUTLINED_FUNCTION_57_1();
    OUTLINED_FUNCTION_8_2();
    sub_2232005C4();
    OUTLINED_FUNCTION_55_0();
    OUTLINED_FUNCTION_8_2();
    sub_2232005C4();
    OUTLINED_FUNCTION_8_2();
    sub_2232005C4();
  }

  (*(v29 + 8))(v24, v27);
  OUTLINED_FUNCTION_9_0();
}

void RequestSummary.SystemResponse.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0599F8, &qword_223214998);
  OUTLINED_FUNCTION_9();
  v31 = v30;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_16();
  OUTLINED_FUNCTION_29(v26, v26[3]);
  sub_22318E228();
  sub_223200794();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    OUTLINED_FUNCTION_20_11();
    v33 = sub_223200494();
    v47 = v34;
    OUTLINED_FUNCTION_20_11();
    v35 = sub_223200494();
    v46 = v36;
    v44 = v35;
    LOBYTE(v52[0]) = 2;
    v43 = sub_223200494();
    v45 = v37;
    OUTLINED_FUNCTION_20_11();
    v38 = sub_223200494();
    v40 = v39;
    (*(v31 + 8))(v24, v29);
    *&v48 = v33;
    *(&v48 + 1) = v47;
    *&v49 = v44;
    *(&v49 + 1) = v46;
    *&v50 = v43;
    *(&v50 + 1) = v45;
    *&v51 = v38;
    *(&v51 + 1) = v40;
    v41 = v49;
    *v28 = v48;
    v28[1] = v41;
    v42 = v51;
    v28[2] = v50;
    v28[3] = v42;
    sub_2230E582C(&v48, v52);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v52[0] = v33;
    v52[1] = v47;
    v52[2] = v44;
    v52[3] = v46;
    v52[4] = v43;
    v52[5] = v45;
    v52[6] = v38;
    v52[7] = v40;
    sub_22318E27C(v52);
  }

  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_22318B3C8()
{
  sub_2231900DC();
  result = sub_2231FFF04();
  if (v3)
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  word_27D059958 = v1 | v2;
  return result;
}

uint64_t static RequestSummary.ExecutionSource.intelligenceFlow.getter@<X0>(_WORD *a1@<X8>)
{
  if (qword_27D057580 != -1)
  {
    result = swift_once();
  }

  *a1 = word_27D059958;
  return result;
}

uint64_t RequestSummary.ExecutionSource.IntelligenceFlow.init(_:)@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  sub_2231FFEC4();

  KeyPath = swift_getKeyPath();
  sub_2231FFEE4();

  v4 = v10;
  if (v10 == 2)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v5 = sub_223200014();
    __swift_project_value_buffer(v5, qword_280FCE830);
    v6 = sub_223200004();
    v7 = sub_223200254();
    if (OUTLINED_FUNCTION_46_2(v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2230CE000, v6, KeyPath, "Missing required field: actionCanceled", v8, 2u);
      OUTLINED_FUNCTION_49_2();
    }

    v4 = 0;
  }

  else
  {
  }

  *a2 = v11;
  a2[1] = v4 & 1;
  return result;
}

uint64_t static RequestSummary.ExecutionSource.IntelligenceFlow.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 != 4)
    {
      return OUTLINED_FUNCTION_47_0();
    }
  }

  else if (v2 != v3)
  {
    return OUTLINED_FUNCTION_47_0();
  }

  return a1[1] ^ a2[1] ^ 1u;
}

uint64_t sub_22318B68C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6F5449416E6567 && a2 == 0xE90000000000006CLL;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61436E6F69746361 && a2 == 0xEE0064656C65636ELL)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_22318B764(char a1)
{
  if (a1)
  {
    return 0x61436E6F69746361;
  }

  else
  {
    return 0x6F6F5449416E6567;
  }
}

uint64_t sub_22318B7B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22318B68C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22318B7DC(uint64_t a1)
{
  v2 = sub_22318E2AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22318B818(uint64_t a1)
{
  v2 = sub_22318E2AC();

  return MEMORY[0x2821FE720](a1, v2);
}

void RequestSummary.ExecutionSource.IntelligenceFlow.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A00, &qword_2232149E0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_22318E2AC();
  OUTLINED_FUNCTION_33_4();
  sub_2232007A4();
  sub_22318E300();
  OUTLINED_FUNCTION_8_2();
  sub_2232005E4();
  if (!v0)
  {
    OUTLINED_FUNCTION_29_4();
    OUTLINED_FUNCTION_8_2();
    sub_223200604();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_9_0();
}

void RequestSummary.ExecutionSource.IntelligenceFlow.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_8_1();
  v21 = v20;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059A18, &qword_2232149E8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_29(v21, v21[3]);
  sub_22318E2AC();
  sub_223200794();
  if (!v19)
  {
    sub_22318E354();
    OUTLINED_FUNCTION_22();
    sub_2232004C4();
    OUTLINED_FUNCTION_29_4();
    v26 = sub_223200504();
    v27 = OUTLINED_FUNCTION_21_5();
    v28(v27, v24);
    *v23 = BYTE7(a10);
    v23[1] = v26 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v21);
  OUTLINED_FUNCTION_9_0();
}

uint64_t static RequestSummary.ExecutionSource.== infix(_:_:)(_WORD *a1, _WORD *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 14))
  {
    if (v3 < 0x4000)
    {
      if (*a1 == 4)
      {
        if (*a2 != 4)
        {
          return OUTLINED_FUNCTION_47_0();
        }

        return ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
      }

      if (*a1 == v3)
      {
        return ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
      }
    }

    return OUTLINED_FUNCTION_47_0();
  }

  if (v2 >> 14 == 1)
  {
    if ((v3 & 0xC000) == 0x4000)
    {
      return (v3 ^ v2) == 0;
    }

    return OUTLINED_FUNCTION_47_0();
  }

  switch(*a1)
  {
    case 0x8001:
      v5 = 32769;
      goto LABEL_17;
    case 0x8002:
      v5 = 32770;
      goto LABEL_17;
    case 0x8003:
      v5 = 32771;
LABEL_17:
      if (v3 == v5)
      {
        goto LABEL_18;
      }

      return OUTLINED_FUNCTION_47_0();
    default:
      if (v3 != 0x8000)
      {
        return OUTLINED_FUNCTION_47_0();
      }

LABEL_18:
      result = 1;
      break;
  }

  return result;
}