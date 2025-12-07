__n128 OUTLINED_FUNCTION_5_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12)
{
  *(v13 + 336) = a1;
  *(a1 + 16) = v12;
  result = a10;
  *(a1 + 24) = a10;
  *(a1 + 40) = a12;
  return result;
}

void OUTLINED_FUNCTION_9_3()
{
}

void OUTLINED_FUNCTION_11_3(uint64_t a1@<X8>)
{
  v1[12] = sub_222DAFC38;
  v1[13] = a1;
  v1[14] = v2;
}

uint64_t OUTLINED_FUNCTION_12_3(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_14_3()
{
  *(v0 + 24) = sub_222DADA7C;

  return swift_continuation_init();
}

BOOL OUTLINED_FUNCTION_25_1(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_40_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  return 0;
}

void *OUTLINED_FUNCTION_41_2()
{
  sub_222DB0F4C(v1 + 16);

  return memcpy(v0, (v1 + 16), 0x99uLL);
}

void OUTLINED_FUNCTION_48_2()
{

  JUMPOUT(0x223DCEF40);
}

void *OUTLINED_FUNCTION_49_2()
{
  v2 = *(v0 + 1896);

  return memcpy(v2, (v0 + 336), 0x99uLL);
}

uint64_t OUTLINED_FUNCTION_53_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 7;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_54_1()
{

  return sub_222DDA4A0();
}

void OUTLINED_FUNCTION_60_1()
{
  v2 = *(v0 + 200);

  sub_222D9FE18(v2);
}

id OUTLINED_FUNCTION_61_1(uint64_t a1, const char *a2)
{

  return [v5 a2];
}

void *OUTLINED_FUNCTION_67_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(__srca, a12);
  __src = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  v29 = va_arg(va1, void);
  v30 = va_arg(va1, void);
  v31 = va_arg(va1, void);

  return memcpy((v12 + 16), __srca, 0x80uLL);
}

uint64_t OUTLINED_FUNCTION_68_0(uint64_t a1)
{
  *(v1 + 304) = a1;

  return sub_222DDA800();
}

uint64_t OUTLINED_FUNCTION_69_0()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_70_0()
{

  return MEMORY[0x2821BB820](v0);
}

uint64_t OUTLINED_FUNCTION_71_0()
{
}

uint64_t OUTLINED_FUNCTION_74(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a2);

  return sub_222DDA760();
}

uint64_t OUTLINED_FUNCTION_77@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 153) = a1;
  *(v5 + 160) = a5;
}

void *OUTLINED_FUNCTION_78()
{

  return sub_222D94BC4(v0, v2 & 0xFFFFFFFE | ((v1 & 1) == 0));
}

uint64_t OUTLINED_FUNCTION_79(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;

  return sub_222DDA770();
}

uint64_t OUTLINED_FUNCTION_82()
{
}

void *OUTLINED_FUNCTION_83(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x99uLL);
}

void sub_222DB1A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_222DDB4C0();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v7[4] = sub_222DB1B58;
  v7[5] = v5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_222DB1B60;
  v7[3] = &block_descriptor_0;
  v6 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

id sub_222DB1B60(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_222DB1C04();
    v4 = sub_222DDB440();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_222DB1C04()
{
  result = qword_27D047BC8;
  if (!qword_27D047BC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D047BC8);
  }

  return result;
}

uint64_t sub_222DB1C58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CB0, &qword_222DDDDB0);
  OUTLINED_FUNCTION_8(v0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v1);
  v45 = v41 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CB8, &qword_222DDDDB8);
  OUTLINED_FUNCTION_8(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v42 = v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CC0, &qword_222DDDDC0);
  OUTLINED_FUNCTION_8(v6);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CC8, &qword_222DDDDC8);
  OUTLINED_FUNCTION_8(v10);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = v41 - v12;
  sub_222DD9FC0();
  OUTLINED_FUNCTION_2();
  v43 = v15;
  v44 = v14;
  MEMORY[0x28223BE20](v14);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CD0, &qword_222DDDDD0);
  v18 = sub_222DDA200();
  OUTLINED_FUNCTION_2();
  v20 = v19;
  v22 = *(v21 + 72);
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_222DDDDA0;
  v25 = v24 + v23;
  v26 = *(v20 + 104);
  v26(v25, *MEMORY[0x277CC9968], v18);
  v26(v25 + v22, *MEMORY[0x277CC9998], v18);
  v26(v25 + 2 * v22, *MEMORY[0x277CC9988], v18);
  sub_222DB2034(v24);
  sub_222DDA1E0();

  v41[1] = sub_222DD9F80();
  sub_222DD9FB0();
  sub_222DD9FA0();
  v27 = sub_222DDAC90();
  OUTLINED_FUNCTION_0_6(v13, v28, v29, v27);
  v30 = sub_222DDACB0();
  OUTLINED_FUNCTION_0_6(v9, v31, v32, v30);
  v33 = sub_222DDACD0();
  OUTLINED_FUNCTION_0_6(v42, v34, v35, v33);
  v36 = sub_222DDACA0();
  OUTLINED_FUNCTION_0_6(v45, v37, v38, v36);
  sub_222DDACE0();
  swift_allocObject();
  v39 = sub_222DDACC0();
  (*(v43 + 8))(v17, v44);
  return v39;
}

uint64_t sub_222DB2034(uint64_t a1)
{
  v2 = sub_222DDA200();
  v32 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CD8, &qword_222DDDDD8);
  result = sub_222DDB810();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_222DB2350(&qword_27D047CE0, MEMORY[0x277CC99D8]);
    v14 = sub_222DDB470();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v5, *(v8 + 48) + v16 * v12, v2);
      sub_222DB2350(&qword_27D047CE8, MEMORY[0x277CC99E0]);
      v21 = sub_222DDB4B0();
      v22 = *v11;
      (*v11)(v5, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_222DB2350(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_222DDA200();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_222DB23B4()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v0 + *(v1 + 152);
  v3 = *v2;
  sub_222DB70DC(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_222DB23FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_22_3();
  v4 = (v2 + *(v3 + 152));
  v5 = *v4;
  v6 = v4[1];
  *v4 = v7;
  v4[1] = v8;
  return sub_222DB6A34(v5, v6);
}

uint64_t sub_222DB2434@<X0>(uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  v7 = *(v6 + 160);
  swift_beginAccess();
  return sub_222DB706C(v4 + v7, a4);
}

uint64_t sub_222DB2494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_3();
  v6 = *(v5 + 160);
  swift_beginAccess();
  sub_222DB7128(a1, v3 + v6);
  return swift_endAccess();
}

uint64_t sub_222DB2524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_3();
  *(v3 + *(v4 + 168)) = v5;
}

uint64_t DateTimeResolverFlow.__allocating_init(nextFlow:resolutionStrategy:spec:locale:timeZone:calendar:currentDate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = swift_allocObject();
  DateTimeResolverFlow.init(nextFlow:resolutionStrategy:spec:locale:timeZone:calendar:currentDate:)();
  return v7;
}

void DateTimeResolverFlow.init(nextFlow:resolutionStrategy:spec:locale:timeZone:calendar:currentDate:)()
{
  OUTLINED_FUNCTION_32_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = *v0;
  v16 = *(*v0 + 160);
  v17 = sub_222DDA940();
  __swift_storeEnumTagSinglePayload(&v0[v16], 1, 1, v17);
  OUTLINED_FUNCTION_22_3();
  *&v0[*(v18 + 168)] = 0;
  *(v0 + 2) = v14;
  OUTLINED_FUNCTION_22_3();
  *&v0[*(v19 + 152)] = xmmword_222DDDDE0;
  OUTLINED_FUNCTION_22_3();
  (*(*(*(v15 + 80) - 8) + 32))(&v0[*(v20 + 144)], v12);
  v21 = qword_27D04C8D0;
  sub_222DDA1D0();
  OUTLINED_FUNCTION_4_6();
  (*(v22 + 32))(&v0[v21], v8);
  v23 = qword_27D04C8D8;
  sub_222DDA220();
  OUTLINED_FUNCTION_4_6();
  (*(v24 + 32))(&v0[v23], v6);
  v25 = qword_27D04C8E0;
  sub_222DDA210();
  OUTLINED_FUNCTION_4_6();
  (*(v26 + 32))(&v0[v25], v4);
  v27 = qword_27D04C8E8;
  sub_222DDA160();
  OUTLINED_FUNCTION_4_6();
  (*(v28 + 32))(&v0[v27], v2);
  v29 = qword_27D04C8F0;
  sub_222DDAB70();
  OUTLINED_FUNCTION_4_6();
  (*(v30 + 32))(&v0[v29], v10);
  OUTLINED_FUNCTION_36_1();
}

void sub_222DB2810()
{
  OUTLINED_FUNCTION_32_2();
  v2 = v1;
  OUTLINED_FUNCTION_22_3();
  v43 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = v41 - v6;
  v8 = sub_222DDA940();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_6();
  v44 = v12;
  OUTLINED_FUNCTION_10_4();
  v46 = sub_222DDA900();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v19 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v19, qword_27D04C910);

  v20 = sub_222DDB3C0();
  v21 = sub_222DDB6B0();

  v22 = os_log_type_enabled(v20, v21);
  v45 = v0;
  if (v22)
  {
    v23 = OUTLINED_FUNCTION_29_4();
    v42 = v7;
    v24 = v23;
    v25 = OUTLINED_FUNCTION_25_2();
    v41[1] = v2;
    v26 = v25;
    v49 = v25;
    *v24 = 136315138;
    v47 = sub_222DB23B4();
    v48 = v27;
    type metadata accessor for DateTimeResolverFlow.State(0, *(v43 + 80), *(v43 + 88), v28);
    v29 = sub_222DDB540();
    v31 = v10;
    v32 = v8;
    v33 = OUTLINED_FUNCTION_28_4(v29, v30);

    *(v24 + 4) = v33;
    v8 = v32;
    v10 = v31;
    _os_log_impl(&dword_222D8A000, v20, v21, "state of DateTimeResolverFlow: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_48_2();
    v7 = v42;
    OUTLINED_FUNCTION_48_2();
  }

  sub_222DDA870();
  v34 = v46;
  if ((*(v14 + 88))(v18, v46) == *MEMORY[0x277D5C158])
  {
    (*(v14 + 96))(v18, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250);
    v35 = v44;
    (*(v10 + 32))(v44, v18, v8);
    (*(v10 + 16))(v7, v35, v8);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    sub_222DB2494(v7, v36, v37);

    sub_222DB2524(v38, v39, v40);

    (*(v10 + 8))(v35, v8);
  }

  else
  {
    (*(v14 + 8))(v18, v34);
  }

  OUTLINED_FUNCTION_36_1();
}

void sub_222DB2BC0()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v54 = v2;
  OUTLINED_FUNCTION_22_3();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF8, &qword_222DDDE20);
  OUTLINED_FUNCTION_8(v5);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047D00, qword_222DDDE28);
  OUTLINED_FUNCTION_8(v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v9);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v13 = sub_222DDA940();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  sub_222DB2434(v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_222DB6FC0(v12, &qword_27D047CF0, &unk_222DDDE10);
    sub_222DDB900();
    __break(1u);
  }

  else
  {
    (*(v15 + 32))(v19, v12, v13);
    if ((*(*(v4 + 88) + 16))(v19, *(v4 + 80)))
    {
      v20 = sub_222DB23B4();
      v22 = v21;
      if (v21 >> 62)
      {
        if (v21 >> 62 == 1)
        {
          v52 = v20;
          v53 = v1;
          v23 = v21 & 0x3FFFFFFFFFFFFFFFLL;
          v51 = sub_222DDAD40();
          sub_222DDAD50();
          sub_222DDAD10();
          sub_222DDAD30();
          sub_222DDAD20();
          sub_222DDAD00();
          v50 = sub_222DDAD60();
          swift_allocObject();
          v24 = sub_222DDAC70();
          if (qword_27D0475A8 != -1)
          {
            OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
          }

          v25 = sub_222DDB3E0();
          OUTLINED_FUNCTION_63_0(v25, qword_27D04C910);

          v26 = sub_222DDB3C0();
          v27 = sub_222DDB6B0();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v47 = v28;
            v51 = swift_slowAlloc();
            v55 = v23;
            v56 = v51;
            *v28 = 136315394;
            sub_222DB6F78(qword_27D047D08, MEMORY[0x277D56498], MEMORY[0x277D564C0]);
            v49 = v27;
            v48 = v26;
            v29 = sub_222DDBAB0();
            v31 = v24;
            v32 = OUTLINED_FUNCTION_28_4(v29, v30);

            v33 = v47;
            *(v47 + 1) = v32;
            v34 = v31;
            *(v33 + 6) = 2080;
            v35 = v33;
            v55 = v34;
            v36 = sub_222DDBAB0();
            v38 = OUTLINED_FUNCTION_28_4(v36, v37);

            *(v35 + 14) = v38;
            v39 = v48;
            _os_log_impl(&dword_222D8A000, v48, v49, "Original dateTime: %s, mutated datetime: %s", v35, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_48_2();
            OUTLINED_FUNCTION_48_2();
          }

          else
          {
          }

          sub_222DB4DCC();
        }

        else if (v20 | v21 ^ 0x8000000000000000)
        {
          sub_222DB4C68(v54);
        }

        else
        {
          sub_222DB3B34();
        }
      }

      else
      {
        v46 = v20;
        sub_222DB3DF0();
        sub_222DB6A34(v46, v22);
      }
    }

    else
    {
      if (qword_27D0475A8 != -1)
      {
        OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
      }

      v40 = sub_222DDB3E0();
      OUTLINED_FUNCTION_63_0(v40, qword_27D04C910);
      v41 = sub_222DDB3C0();
      v42 = sub_222DDB6B0();
      if (OUTLINED_FUNCTION_26_3(v42))
      {
        v43 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_50_1(v43);
        OUTLINED_FUNCTION_32_3(&dword_222D8A000, v44, v45, "delegate.shouldResolve returned false, returning early");
        OUTLINED_FUNCTION_48_2();
      }

      sub_222DB4654();
    }

    (*(v15 + 8))(v19, v13);
    OUTLINED_FUNCTION_36_1();
  }
}

void sub_222DB31A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_3();
  v4 = v3;
  v5 = sub_222DB23B4();
  if (v6 >> 62 == 2 && v5 == 0 && v6 == 0x8000000000000000)
  {
    sub_222DB23FC(8, 0x8000000000000000);
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v18 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v18, qword_27D04C910);

    oslog = sub_222DDB3C0();
    v10 = sub_222DDB6B0();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = OUTLINED_FUNCTION_29_4();
      v12 = OUTLINED_FUNCTION_25_2();
      v24 = v12;
      *v11 = 136315138;
      sub_222DB23B4();
      type metadata accessor for DateTimeResolverFlow.State(0, *(v4 + 80), *(v4 + 88), v19);
      v20 = sub_222DDB540();
      v22 = sub_222D8F7F0(v20, v21, &v24);

      *(v11 + 4) = v22;
      v17 = "[DateTimeResolverFlow::onFlowCompletion] setting state to %s";
      goto LABEL_16;
    }
  }

  else
  {
    sub_222DB6A34(v5, v6);
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v9 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v9, qword_27D04C910);

    oslog = sub_222DDB3C0();
    v10 = sub_222DDB6C0();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = OUTLINED_FUNCTION_29_4();
      v12 = OUTLINED_FUNCTION_25_2();
      v24 = v12;
      *v11 = 136315138;
      sub_222DB23B4();
      type metadata accessor for DateTimeResolverFlow.State(0, *(v4 + 80), *(v4 + 88), v13);
      v14 = sub_222DDB540();
      v16 = sub_222D8F7F0(v14, v15, &v24);

      *(v11 + 4) = v16;
      v17 = "[DateTimeResolverFlow::onFlowCompletion] unexpected state: %s";
LABEL_16:
      _os_log_impl(&dword_222D8A000, oslog, v10, v17, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_48_2();

      return;
    }
  }
}

void sub_222DB3438()
{
  OUTLINED_FUNCTION_32_2();
  sub_222DDA160();
  OUTLINED_FUNCTION_2();
  v48 = v2;
  v49 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_6();
  v47 = v3;
  OUTLINED_FUNCTION_10_4();
  sub_222DDA210();
  OUTLINED_FUNCTION_2();
  v45 = v5;
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_6();
  v44 = v6;
  OUTLINED_FUNCTION_10_4();
  sub_222DDA220();
  OUTLINED_FUNCTION_2();
  v42 = v8;
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_6();
  v41 = v9;
  OUTLINED_FUNCTION_10_4();
  v10 = sub_222DDA1D0();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_3();
  v40 = (v14 - v15);
  OUTLINED_FUNCTION_33_1();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v38 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  v38 = &v38 - v20;
  v22 = sub_222DDABB0();
  OUTLINED_FUNCTION_2();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_3();
  v39 = v26 - v27;
  OUTLINED_FUNCTION_33_1();
  v29 = MEMORY[0x28223BE20](v28);
  v31 = &v38 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v38 - v32;
  v34 = sub_222DB3874();
  v35 = MEMORY[0x277D56150];
  if (v34 <= 0.0)
  {
    v35 = MEMORY[0x277D56158];
  }

  (*(v24 + 104))(v31, *v35, v22);
  (*(v24 + 32))(v33, v31, v22);
  v36 = qword_27D04C8D0;
  v37 = *(v12 + 16);
  v37(v21, v0 + qword_27D04C8D0, v10);
  v37(v19, v0 + v36, v10);
  v37(v40, v0 + v36, v10);
  (*(v42 + 16))(v41, v0 + qword_27D04C8D8, v43);
  (*(v24 + 16))(v39, v33, v22);
  (*(v45 + 16))(v44, v0 + qword_27D04C8E0, v46);
  (*(v48 + 16))(v47, v0 + qword_27D04C8E8, v49);
  sub_222DDABD0();
  swift_allocObject();
  sub_222DDABC0();
  (*(v24 + 8))(v33, v22);
  OUTLINED_FUNCTION_36_1();
}

double sub_222DB3874()
{
  v1 = type metadata accessor for LocationService(0);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v5 = v4 - v3;
  sub_222DDA430();
  if (qword_27D0475A0 != -1)
  {
    swift_once();
  }

  v6 = sub_222DDB3F0();
  v7 = __swift_project_value_buffer(v6, qword_27D04C8F8);
  (*(*(v6 - 8) + 16))(v5 + *(v1 + 20), v7, v6);
  v8 = sub_222DC98E0();
  if (v8)
  {
    v9 = v8;
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v10 = sub_222DDB3E0();
    __swift_project_value_buffer(v10, qword_27D04C910);
    v11 = v9;
    v12 = sub_222DDB3C0();
    v13 = sub_222DDB6B0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134218240;
      [v11 lat];
      *(v14 + 4) = v15;
      *(v14 + 12) = 2048;
      [v11 lng];
      *(v14 + 14) = v16;
      _os_log_impl(&dword_222D8A000, v12, v13, "latitude: %f, longitude: %f", v14, 0x16u);
      OUTLINED_FUNCTION_48_2();
    }

    [v11 lat];
    v18 = v17;
    [v11 lng];
  }

  else
  {
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v19 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v19, qword_27D04C910);
    v11 = sub_222DDB3C0();
    v20 = sub_222DDB6C0();
    v18 = 0.0;
    if (os_log_type_enabled(v11, v20))
    {
      v21 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_50_1(v21);
      _os_log_impl(&dword_222D8A000, v11, v20, "did not get location information from LocationService", v0, 2u);
      OUTLINED_FUNCTION_48_2();
    }
  }

  sub_222DB6F18(v5);
  return v18;
}

void sub_222DB3B34()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_22_3();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v6);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v10 = sub_222DDB3E0();
  __swift_project_value_buffer(v10, qword_27D04C910);

  v11 = sub_222DDB3C0();
  v12 = sub_222DDB6B0();

  if (os_log_type_enabled(v11, v12))
  {
    v26[0] = v3;
    v26[1] = v1;
    v13 = OUTLINED_FUNCTION_29_4();
    v14 = OUTLINED_FUNCTION_25_2();
    v27 = v14;
    *v13 = 136315138;
    if (sub_222DB24FC(v14, v15, v16))
    {
      v17 = sub_222DDA8B0();
    }

    else
    {
      v17 = 0;
    }

    v26[2] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E18, &qword_222DDDF88);
    v18 = sub_222DDB540();
    v20 = OUTLINED_FUNCTION_28_4(v18, v19);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_222D8A000, v11, v12, "handling initialized state intent: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_16_1();
    OUTLINED_FUNCTION_48_2();
  }

  else
  {
  }

  sub_222DB2434(v9);
  (*(*(v5 + 88) + 24))(&v27, v9, *(v5 + 80));
  sub_222DB6FC0(v9, &qword_27D047CF0, &unk_222DDDE10);
  if (v27)
  {
    sub_222DB4DCC();
  }

  else
  {
    v21 = sub_222DDB3C0();
    v22 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_26_3(v22))
    {
      v23 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_50_1(v23);
      OUTLINED_FUNCTION_32_3(&dword_222D8A000, v24, v25, "no datetime node present in the intent, skipping to nextFlow");
      OUTLINED_FUNCTION_48_2();
    }

    sub_222DB4654();
  }

  OUTLINED_FUNCTION_36_1();
}

void sub_222DB3DF0()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v102 = v2;
  v104 = v3;
  v96 = v4;
  OUTLINED_FUNCTION_22_3();
  v6 = v5;
  v7 = sub_222DDA650();
  OUTLINED_FUNCTION_2();
  v105 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_6();
  v103 = v10;
  OUTLINED_FUNCTION_10_4();
  sub_222DDA890();
  OUTLINED_FUNCTION_2();
  v94 = v12;
  v95 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v15 = v14 - v13;
  sub_222DDA900();
  OUTLINED_FUNCTION_2();
  v98 = v17;
  v99 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_5_3();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v97 = v90 - v22;
  OUTLINED_FUNCTION_10_4();
  v23 = sub_222DDA350();
  v24 = OUTLINED_FUNCTION_8(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v25);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v26);
  v28 = v90 - v27;
  v29 = sub_222DDA940();
  OUTLINED_FUNCTION_2();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_6();
  v100 = v33;
  if (!sub_222DB24FC(v34, v35, v36))
  {
    goto LABEL_4;
  }

  sub_222DB2434(v28);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {

    sub_222DB6FC0(v28, &qword_27D047CF0, &unk_222DDDE10);
LABEL_4:
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v37 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v37, qword_27D04C910);
    v38 = sub_222DDB3C0();
    v39 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_34_2(v39))
    {
      v40 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v40);
      OUTLINED_FUNCTION_5_5(&dword_222D8A000, v41, v42, "serverConversion and nlIntent are nil, returning early from handleDateTimeResolved");
      OUTLINED_FUNCTION_16_1();
    }

    v43 = sub_222DB45D4(v0);
    OUTLINED_FUNCTION_18_3(v43, v44);

    v45 = OUTLINED_FUNCTION_24_4();
    v46(v45);
    v47 = OUTLINED_FUNCTION_13_4();
    v48(v47);
    goto LABEL_20;
  }

  v91 = v31;
  v92 = v7;
  (*(v31 + 32))(v100, v28, v29);
  v93 = v29;
  v49 = sub_222DDA8B0();
  v107[0] = v96;
  v50 = (*(*(v6 + 88) + 72))(v49, v107, *(v6 + 80));

  if (v50)
  {
    v51 = v50;
    sub_222DDA8C0();
    sub_222DDA8D0();
    sub_222DDA8E0();
    sub_222DDA8F0();
    swift_allocObject();
    v96 = v51;
    v52 = sub_222DDA8A0();
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250) + 48);
    v54 = v91;
    v55 = v97;
    v56 = v100;
    (*(v91 + 16))(v97, v100, v93);
    *&v55[v53] = v52;
    v57 = v98;
    v58 = v99;
    (*(v98 + 104))(v55, *MEMORY[0x277D5C158], v99);
    v59 = *(v1 + 16);
    (*(v57 + 16))(v20, v55, v58);
    v90[1] = v52;

    sub_222DDA880();
    v60 = sub_222DDA290();
    (*(v94 + 8))(v15, v95);
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v61 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v61, qword_27D04C910);

    v62 = sub_222DDB3C0();
    v63 = sub_222DDB6B0();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = OUTLINED_FUNCTION_25_2();
      v106 = v59;
      v107[0] = v65;
      *v64 = 67109378;
      *(v64 + 4) = v60 & 1;
      *(v64 + 8) = 2080;
      sub_222DDA2A0();
      OUTLINED_FUNCTION_9_4();
      sub_222DB6F78(v66, v67, MEMORY[0x277D5B780]);
      v68 = sub_222DDBAB0();
      v70 = sub_222D8F7F0(v68, v69, v107);

      *(v64 + 10) = v70;
      _os_log_impl(&dword_222D8A000, v62, v63, "nextFlowOn: %{BOOL}d, flow is: %s", v64, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v65);
      OUTLINED_FUNCTION_48_2();
      v56 = v100;
      OUTLINED_FUNCTION_48_2();
    }

    sub_222DB45D4(v1);
    sub_222DDA620();

    v86 = OUTLINED_FUNCTION_24_4();
    v87(v86);

    v88 = OUTLINED_FUNCTION_13_4();
    v89(v88);
    (*(v98 + 8))(v97, v99);
    (*(v54 + 8))(v56, v93);
  }

  else
  {
    v71 = v93;
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v72 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v72, qword_27D04C910);
    v73 = sub_222DDB3C0();
    v74 = sub_222DDB6C0();
    v75 = OUTLINED_FUNCTION_34_2(v74);
    v76 = v100;
    if (v75)
    {
      v77 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v77);
      OUTLINED_FUNCTION_5_5(&dword_222D8A000, v78, v79, "delegate did return an intent with the resolved dateTime, moving on to the next flow without setting location");
      OUTLINED_FUNCTION_16_1();
    }

    v80 = sub_222DB4614(v1);
    OUTLINED_FUNCTION_18_3(v80, v81);

    v82 = OUTLINED_FUNCTION_24_4();
    v83(v82);

    v84 = OUTLINED_FUNCTION_13_4();
    v85(v84);
    (*(v31 + 8))(v76, v71);
  }

LABEL_20:
  OUTLINED_FUNCTION_36_1();
}

void sub_222DB4654()
{
  OUTLINED_FUNCTION_32_2();
  v80 = v3;
  v81 = v2;
  sub_222DDA650();
  OUTLINED_FUNCTION_2();
  v82 = v5;
  v83 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = sub_222DDA890();
  OUTLINED_FUNCTION_2();
  v75 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  sub_222DDA900();
  OUTLINED_FUNCTION_2();
  v78 = v16;
  v79 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_3();
  v19 = v17 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v72 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v23);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_23_4();
  v25 = sub_222DDA940();
  OUTLINED_FUNCTION_2();
  v77 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_6();
  v76 = v28;
  v32 = sub_222DB24FC(v29, v30, v31);
  if (!v32)
  {
    goto LABEL_4;
  }

  v33 = v32;
  sub_222DB2434(v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v25) == 1)
  {

    sub_222DB6FC0(v1, &qword_27D047CF0, &unk_222DDDE10);
LABEL_4:
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v34 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v34, qword_27D04C910);
    v35 = sub_222DDB3C0();
    v36 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_34_2(v36))
    {
      v37 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v37);
      OUTLINED_FUNCTION_5_5(&dword_222D8A000, v38, v39, "serverConversion and nlIntent are nil, returning early from passThroughIntent");
      OUTLINED_FUNCTION_16_1();
    }

    sub_222DB45D4(v0);
    sub_222DDA620();

    v81(v8);
    (*(v82 + 8))(v8, v83);
    goto LABEL_14;
  }

  v74 = v8;
  v40 = v77;
  v41 = *(v77 + 32);
  v72 = v9;
  v42 = v33;
  v43 = v0;
  v44 = v22;
  v45 = v25;
  v46 = v76;
  v41(v76, v1, v45);
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250) + 48);
  v48 = *(v40 + 16);
  v49 = v44;
  v50 = v46;
  v51 = v44;
  v52 = v43;
  v53 = v42;
  v73 = v45;
  v48(v49, v50, v45);
  *&v51[v47] = v42;
  v55 = v78;
  v54 = v79;
  (*(v78 + 104))(v51, *MEMORY[0x277D5C158], v79);
  v56 = *(v52 + 16);
  (*(v55 + 16))(v19, v51, v54);

  sub_222DDA880();
  v57 = sub_222DDA290();
  (*(v75 + 8))(v14, v72);
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v58 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v58, qword_27D04C910);

  v59 = sub_222DDB3C0();
  v60 = sub_222DDB6B0();

  v61 = os_log_type_enabled(v59, v60);
  v62 = v74;
  if (v61)
  {
    v63 = swift_slowAlloc();
    v64 = OUTLINED_FUNCTION_25_2();
    v75 = v53;
    v65 = v56;
    v66 = v64;
    *v63 = 67109378;
    *(v63 + 4) = v57 & 1;
    *(v63 + 8) = 2080;
    v84 = v65;
    v85 = v64;
    sub_222DDA2A0();
    OUTLINED_FUNCTION_9_4();
    sub_222DB6F78(v67, v68, MEMORY[0x277D5B780]);
    v69 = sub_222DDBAB0();
    v71 = OUTLINED_FUNCTION_28_4(v69, v70);

    *(v63 + 10) = v71;
    _os_log_impl(&dword_222D8A000, v59, v60, "nextFlowOn: %{BOOL}d, flow is: %s", v63, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v66);
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_48_2();
  }

  sub_222DB45D4(v52);
  sub_222DDA620();

  v81(v62);

  (*(v82 + 8))(v62, v83);
  (*(v78 + 8))(v51, v79);
  (*(v77 + 8))(v76, v73);
LABEL_14:
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DB4C68(void (*a1)(uint64_t))
{
  v2 = sub_222DDA650();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v9 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v9, qword_27D04C910);
  v10 = sub_222DDB3C0();
  v11 = sub_222DDB6B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_43_0();
    *v12 = 0;
    _os_log_impl(&dword_222D8A000, v10, v11, "[DateTimeResolverFlow::execute] completed, returning .complete()", v12, 2u);
    OUTLINED_FUNCTION_48_2();
  }

  sub_222DDA640();
  a1(v8);
  return (*(v4 + 8))(v8, v2);
}

void sub_222DB4DCC()
{
  OUTLINED_FUNCTION_32_2();
  v169 = v2;
  v172 = v3;
  v175 = v4;
  v157 = *v0;
  v5 = v157;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E28, &qword_222DDDF90);
  OUTLINED_FUNCTION_8(v6);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v146 - v8;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E30, &qword_222DDDF98);
  OUTLINED_FUNCTION_2();
  v165 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_3();
  v168 = v12 - v13;
  OUTLINED_FUNCTION_33_1();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v146 - v16;
  MEMORY[0x28223BE20](v15);
  v173 = &v146 - v18;
  OUTLINED_FUNCTION_10_4();
  sub_222DDAAD0();
  OUTLINED_FUNCTION_2();
  v166 = v20;
  v167 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_6();
  v176 = v21;
  OUTLINED_FUNCTION_10_4();
  v160 = sub_222DDA650();
  OUTLINED_FUNCTION_2();
  v159 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_6();
  v158 = v24;
  OUTLINED_FUNCTION_10_4();
  v156 = sub_222DDA210();
  OUTLINED_FUNCTION_2();
  v155 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_6();
  v154 = v27;
  v153 = *(v5 + 80);
  v151 = *(v153 - 8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  v152 = &v146 - v29;
  OUTLINED_FUNCTION_10_4();
  v30 = sub_222DDA200();
  OUTLINED_FUNCTION_2();
  v161 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4();
  v35 = v34 - v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E38, &qword_222DDDFA0);
  OUTLINED_FUNCTION_8(v36);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_23_4();
  v38 = sub_222DDA160();
  OUTLINED_FUNCTION_2();
  v174 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_5_3();
  v150 = v41 - v42;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v43);
  v149 = &v146 - v44;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v45);
  v162 = &v146 - v46;
  OUTLINED_FUNCTION_33_1();
  MEMORY[0x28223BE20](v47);
  v164 = &v146 - v48;
  OUTLINED_FUNCTION_10_4();
  sub_222DDAC00();
  OUTLINED_FUNCTION_2();
  v170 = v50;
  v171 = v49;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2_6();
  v178 = v51;
  sub_222DDABF0();
  sub_222DB3438();
  v179 = v52;
  v53 = sub_222DDAB60();
  v180 = v0;
  if (v53)
  {
    v54 = qword_27D04C8E8;
    v148 = v35;
    v55 = v1;
    v56 = v30;
    v57 = v9;
    v58 = qword_27D04C8E0;
    sub_222DDACF0();
    sub_222DDAD60();
    v163 = v38;
    sub_222DB6F78(&qword_27D047E48, MEMORY[0x277D563F8], MEMORY[0x277D56400]);
    sub_222DDB460();
    v146 = v54;
    v147 = v58;
    v9 = v57;
    v59 = v56;
    v60 = v55;
    v35 = v148;
    v61 = v180;
    v62 = sub_222DDABE0();
    v63 = v163;

    if (v62)
    {
      v64 = v174;
      v65 = *(v174 + 16);
      v65(v164, &v61[v146], v63);
      v66 = v161;
      (*(v161 + 104))(v35, *MEMORY[0x277CC9968], v59);
      sub_222DDA1F0();
      (*(v66 + 8))(v35, v59);
      if (__swift_getEnumTagSinglePayload(v60, 1, v63) == 1)
      {
        sub_222DB6FC0(v60, &qword_27D047E38, &qword_222DDDFA0);
        if (qword_27D0475A8 != -1)
        {
          OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
        }

        v67 = sub_222DDB3E0();
        OUTLINED_FUNCTION_63_0(v67, qword_27D04C910);
        v68 = sub_222DDB3C0();
        v69 = sub_222DDB6B0();
        v70 = OUTLINED_FUNCTION_34_2(v69);
        v71 = v174;
        v72 = v164;
        if (v70)
        {
          v73 = OUTLINED_FUNCTION_43_0();
          OUTLINED_FUNCTION_19_1(v73);
          OUTLINED_FUNCTION_5_5(&dword_222D8A000, v74, v75, "could not get later date to display witching hour disambiguation prompt");
          OUTLINED_FUNCTION_16_1();
        }

        sub_222DB4654();

        (*(v71 + 8))(v72, v163);
      }

      else
      {
        v116 = v162;
        (*(v64 + 32))(v162, v60, v63);
        v117 = v153;
        type metadata accessor for RelativeDateInWitchingHourDisambiguationStrategy(0, v153, *(v157 + 88), v118);
        v119 = v149;
        v120 = v164;
        v65(v149, v164, v63);
        v121 = v150;
        v65(v150, v116, v63);
        v122 = v152;
        (*(v151 + 16))(v152, &v61[*(*v61 + 144)], v117);
        v123 = v154;
        (*(v155 + 16))(v154, &v61[v147], v156);
        sub_222DD46A0(v119, v121, v122, v123);
        v124 = v174;
        if (qword_27D0475A8 != -1)
        {
          OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
        }

        v125 = sub_222DDB3E0();
        OUTLINED_FUNCTION_63_0(v125, qword_27D04C910);
        v126 = sub_222DDB3C0();
        v127 = sub_222DDB6B0();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = OUTLINED_FUNCTION_43_0();
          *v128 = 0;
          _os_log_impl(&dword_222D8A000, v126, v127, "going to show disambiguation prompt for witching hour", v128, 2u);
          v61 = v180;
          OUTLINED_FUNCTION_48_2();
        }

        swift_getWitnessTable();
        sub_222DDA280();

        sub_222DDA7C0();
        v181[0] = sub_222DDA270();
        v129 = swift_allocObject();
        v130 = v175;
        v129[2] = v61;
        v129[3] = v130;
        v131 = v172;
        v132 = v169;
        v129[4] = v172;
        v129[5] = v132;

        swift_getWitnessTable();
        v133 = v158;
        sub_222DDA610();

        v131(v133);

        (*(v159 + 8))(v133, v160);
        v134 = *(v124 + 8);
        v135 = v163;
        v134(v162, v163);
        v134(v120, v135);
      }

      goto LABEL_30;
    }
  }

  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v76 = sub_222DDB3E0();
  v174 = __swift_project_value_buffer(v76, qword_27D04C910);
  v77 = sub_222DDB3C0();
  v78 = sub_222DDB6B0();
  v79 = OUTLINED_FUNCTION_26_3(v78);
  v80 = v173;
  if (v79)
  {
    v81 = OUTLINED_FUNCTION_43_0();
    *v81 = 0;
    _os_log_impl(&dword_222D8A000, v77, v35, "not going to show disambiguation prompt for witching hours", v81, 2u);
    OUTLINED_FUNCTION_48_2();
  }

  sub_222DDAAC0();
  sub_222DDAAB0();
  v82 = v177;
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v177);
  v83 = v165;
  (*(v165 + 32))(v80, v9, v82);
  v84 = *(v83 + 16);
  v84(v17, v80, v82);
  v85 = sub_222DDB3C0();
  v86 = sub_222DDB6B0();
  if (os_log_type_enabled(v85, v86))
  {
    v9 = OUTLINED_FUNCTION_29_4();
    v87 = OUTLINED_FUNCTION_25_2();
    v181[0] = v87;
    *v9 = 136315138;
    sub_222DB7024(&qword_27D047E40, &qword_27D047E30, &qword_222DDDF98, MEMORY[0x277D56088]);
    v88 = sub_222DDBAB0();
    v89 = v17;
    v91 = v90;
    v92 = *(v83 + 8);
    v92(v89, v177);
    v93 = sub_222D8F7F0(v88, v91, v181);
    v94 = v92;
    v82 = v177;

    *(v9 + 4) = v93;
    _os_log_impl(&dword_222D8A000, v85, v86, "recommendation: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v87);
    v80 = v173;
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_48_2();
  }

  else
  {

    v95 = v17;
    v94 = *(v83 + 8);
    v94(v95, v82);
  }

  v84(v168, v80, v82);
  v96 = OUTLINED_FUNCTION_30_4();
  v98 = v97(v96);
  if (v98 == *MEMORY[0x277D56080])
  {
    v99 = OUTLINED_FUNCTION_30_4();
    v100(v99);
    v101 = v174;
    v102 = sub_222DDB3C0();
    v103 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_34_2(v103))
    {
      v104 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_50_1(v104);
      _os_log_impl(&dword_222D8A000, v102, v101, "handling confident recommendation", v9, 2u);
      OUTLINED_FUNCTION_48_2();
    }

    sub_222DB3DF0();

LABEL_20:

    v94(v80, v82);
LABEL_29:
    (*(v166 + 8))(v176, v167);
LABEL_30:
    (*(v170 + 8))(v178, v171);
    goto LABEL_31;
  }

  v105 = v98;
  if (v98 == *MEMORY[0x277D56068])
  {
    v106 = OUTLINED_FUNCTION_30_4();
    (v94)(v106);
    v107 = sub_222DDB3C0();
    v108 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_34_2(v108))
    {
      v109 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v109);
      v112 = "got .needsConfirmation recommendation, returning to the next flow without performing any inference";
LABEL_27:
      OUTLINED_FUNCTION_5_5(&dword_222D8A000, v110, v111, v112);
      OUTLINED_FUNCTION_16_1();
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  if (v98 == *MEMORY[0x277D56070])
  {
    v113 = OUTLINED_FUNCTION_30_4();
    (v94)(v113);
    v107 = sub_222DDB3C0();
    v114 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_34_2(v114))
    {
      v115 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v115);
      v112 = "got .needsDisambiguation recommendation, returning to the next flow without performing any inference";
      goto LABEL_27;
    }

LABEL_28:

    OUTLINED_FUNCTION_27_4();

    v94(v80, v82);
    goto LABEL_29;
  }

  v136 = *MEMORY[0x277D56078];
  v137 = sub_222DDB3C0();
  if (v105 == v136)
  {
    v138 = sub_222DDB6C0();
    if (OUTLINED_FUNCTION_34_2(v138))
    {
      v139 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v139);
      OUTLINED_FUNCTION_5_5(&dword_222D8A000, v140, v141, "got .none recommendation, returning to the next flow without performing any inference");
      OUTLINED_FUNCTION_16_1();
    }

    OUTLINED_FUNCTION_27_4();
    goto LABEL_20;
  }

  v142 = sub_222DDB6B0();
  if (OUTLINED_FUNCTION_34_2(v142))
  {
    v143 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_19_1(v143);
    OUTLINED_FUNCTION_5_5(&dword_222D8A000, v144, v145, "unknown recommendation, returning to the next flow without performing any inference");
    OUTLINED_FUNCTION_16_1();
  }

  OUTLINED_FUNCTION_27_4();

  v94(v80, v82);
  (*(v166 + 8))(v176, v167);
  (*(v170 + 8))(v178, v171);
  v94(v168, v82);
LABEL_31:
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DB5EA0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v48 = a3;
  v49 = a2;
  v8 = sub_222DDA650();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E50, qword_222DDDFA8);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v51 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  if (qword_27D0475A8 != -1)
  {
    swift_once();
  }

  v16 = sub_222DDB3E0();
  v17 = __swift_project_value_buffer(v16, qword_27D04C910);
  v18 = *(v11 + 16);
  v52 = a1;
  v50 = v18;
  v18(v15, a1, v10);
  v44 = v17;
  v19 = sub_222DDB3C0();
  v20 = sub_222DDB6B0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = a5;
    v22 = v21;
    v41 = swift_slowAlloc();
    v54 = v41;
    *v22 = 136315138;
    sub_222DB7024(&qword_27D047E58, &qword_27D047E50, qword_222DDDFA8, MEMORY[0x277D5BC48]);
    v23 = sub_222DDBAB0();
    v42 = a4;
    v25 = v24;
    v26 = *(v11 + 8);
    v26(v15, v10);
    v27 = sub_222D8F7F0(v23, v25, &v54);
    a4 = v42;

    *(v22 + 4) = v27;
    _os_log_impl(&dword_222D8A000, v19, v20, "result: %s", v22, 0xCu);
    v28 = v41;
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x223DCEF40](v28, -1, -1);
    MEMORY[0x223DCEF40](v22, -1, -1);
  }

  else
  {

    v26 = *(v11 + 8);
    v26(v15, v10);
  }

  v29 = v51;
  v50(v51, v52, v10);
  if ((*(v11 + 88))(v29, v10) == *MEMORY[0x277D5BC38])
  {
    (*(v11 + 96))(v29, v10);
    v30 = *v29;

    v31 = sub_222DDB3C0();
    v32 = sub_222DDB6B0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v53 = v30;
      v54 = v34;
      *v33 = 136315138;
      sub_222DDAD60();
      sub_222DB6F78(qword_27D047D08, MEMORY[0x277D56498], MEMORY[0x277D564C0]);
      v35 = sub_222DDBAB0();
      v37 = sub_222D8F7F0(v35, v36, &v54);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_222D8A000, v31, v32, "picked date: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x223DCEF40](v34, -1, -1);
      MEMORY[0x223DCEF40](v33, -1, -1);
    }

    sub_222DB23FC(v30, v38 | 0x4000000000000000);
  }

  else
  {
    v40 = v45;
    sub_222DDA640();
    a4(v40);
    (*(v46 + 8))(v40, v47);
    return (v26)(v29, v10);
  }
}

char *DateTimeResolverFlow.deinit()
{
  v1 = *v0;

  v2 = qword_27D04C8D0;
  sub_222DDA1D0();
  OUTLINED_FUNCTION_4_6();
  (*(v3 + 8))(&v0[v2]);
  v4 = qword_27D04C8D8;
  sub_222DDA220();
  OUTLINED_FUNCTION_4_6();
  (*(v5 + 8))(&v0[v4]);
  v6 = qword_27D04C8E0;
  sub_222DDA210();
  OUTLINED_FUNCTION_4_6();
  (*(v7 + 8))(&v0[v6]);
  v8 = qword_27D04C8E8;
  sub_222DDA160();
  OUTLINED_FUNCTION_4_6();
  (*(v9 + 8))(&v0[v8]);
  v10 = qword_27D04C8F0;
  sub_222DDAB70();
  OUTLINED_FUNCTION_4_6();
  (*(v11 + 8))(&v0[v10]);
  OUTLINED_FUNCTION_22_3();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v12 + 144)]);
  OUTLINED_FUNCTION_22_3();
  sub_222DB6A34(*&v0[*(v13 + 152)], *&v0[*(v13 + 152) + 8]);
  OUTLINED_FUNCTION_22_3();
  sub_222DB6FC0(&v0[*(v14 + 160)], &qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_22_3();

  return v0;
}

uint64_t DateTimeResolverFlow.__deallocating_deinit()
{
  DateTimeResolverFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222DB6660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_222DB6710;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_222DB6710(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_222DB6830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_222DB68E4;

  return MEMORY[0x2821BA640](a1, a2, a3);
}

uint64_t sub_222DB68E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_222DB69D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DateTimeResolverFlow(0, *(a1 + 80), *(a1 + 88), a4);

  return MEMORY[0x2821BA658](v5, a2);
}

uint64_t sub_222DB6A34(uint64_t result, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 != 1)
    {
      return v3;
    }
  }
}

void sub_222DB6A84(uint64_t a1)
{
  sub_222DDA1D0();
  if (v1 <= 0x3F)
  {
    sub_222DDA220();
    if (v2 <= 0x3F)
    {
      sub_222DDA210();
      if (v3 <= 0x3F)
      {
        sub_222DDA160();
        if (v4 <= 0x3F)
        {
          sub_222DDAB70();
          if (v5 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v6 <= 0x3F)
            {
              sub_222DB6D38(319);
              if (v7 <= 0x3F)
              {
                swift_initClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_222DB6D38(uint64_t a1)
{
  if (!qword_27D047D90[0])
  {
    sub_222DDA940();
    v1 = sub_222DDB720();
    if (!v2)
    {
      atomic_store(v1, qword_27D047D90);
    }
  }
}

uint64_t sub_222DB6D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t get_enum_tag_for_layout_string_17SiriInferenceFlow016DateTimeResolverC0C5StateOyx_G(void *a1)
{
  v1 = a1[1];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_222DB6E00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFE && *(a1 + 16))
    {
      v2 = *a1 + 16381;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 50) >> 12) | (4 * ((*(a1 + 8) >> 50) & 0xC00 | ((*(a1 + 8) & 7) << 7) | (*a1 >> 57) & 0x78 | *a1 & 7))) ^ 0x3FFF;
      if (v2 >= 0x3FFD)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_222DB6E70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *result = a2 - 16382;
    *(result + 8) = 0;
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t *sub_222DB6EEC(uint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8;
    v3 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = 8 * (a2 - 2);
    v3 = 0x8000000000000000;
  }

  *result = v2;
  result[1] = v3;
  return result;
}

uint64_t sub_222DB6F18(uint64_t a1)
{
  v2 = type metadata accessor for LocationService(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222DB6F78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_222DB6FC0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4_6();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_222DB7024(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_222DB706C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222DB70DC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 != 1)
    {
      return v3;
    }
  }
}

uint64_t sub_222DB7128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_5_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_18_3(uint64_t a1, uint64_t a2)
{

  return sub_222DDA620();
}

uint64_t OUTLINED_FUNCTION_25_2()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_26_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_27_4()
{

  sub_222DB4654();
}

unint64_t OUTLINED_FUNCTION_28_4(uint64_t a1, unint64_t a2)
{

  return sub_222D8F7F0(a1, a2, (v2 - 88));
}

uint64_t OUTLINED_FUNCTION_29_4()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_32_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_222DB734C()
{
  sub_222DDA1D0();
  OUTLINED_FUNCTION_2();
  v44 = v1;
  v45 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_4();
  v42 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v43 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v41 = &v38 - v7;
  sub_222DDAE20();
  OUTLINED_FUNCTION_2();
  v39 = v9;
  v40 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v12 = v11 - v10;
  v38 = sub_222DDAE40();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v18 = v17 - v16;
  sub_222DDB370();
  swift_allocObject();
  sub_222DDB360();
  OUTLINED_FUNCTION_0_7();
  v19 = sub_222DDA520();
  OUTLINED_FUNCTION_4_7(v19);
  sub_222DDB2D0();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_0_7();
  v20 = sub_222DDA4F0();
  OUTLINED_FUNCTION_3_6(v20);
  sub_222DDB290();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_0_7();
  v21 = sub_222DDA4E0();
  OUTLINED_FUNCTION_4_7(v21);
  sub_222DDB350();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_0_7();
  v22 = sub_222DDA510();
  OUTLINED_FUNCTION_3_6(v22);
  sub_222DDB2C0();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_0_7();
  v23 = sub_222DDA480();
  OUTLINED_FUNCTION_4_7(v23);
  sub_222DDB2A0();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_0_7();
  v24 = sub_222DDA500();
  OUTLINED_FUNCTION_3_6(v24);
  sub_222DDB2B0();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_0_7();
  v25 = sub_222DDA4C0();
  OUTLINED_FUNCTION_4_7(v25);
  sub_222DDB320();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_0_7();
  v26 = sub_222DDA4B0();
  OUTLINED_FUNCTION_3_6(v26);
  sub_222DDB310();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_0_7();
  v27 = sub_222DDA450();
  OUTLINED_FUNCTION_4_7(v27);
  sub_222DDB2E0();
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_0_7();
  v28 = sub_222DDA4D0();
  OUTLINED_FUNCTION_3_6(v28);
  sub_222DDB330();
  OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_0_7();
  sub_222DDA490();
  sub_222DDAE30();
  (*(v14 + 8))(v18, v38);
  OUTLINED_FUNCTION_5_6();
  sub_222DDB300();

  OUTLINED_FUNCTION_0_7();
  sub_222DDA470();
  sub_222DDAE10();
  (*(v39 + 8))(v12, v40);
  OUTLINED_FUNCTION_5_6();
  sub_222DDB2F0();

  v29 = sub_222DDB240();
  v30 = 1;
  v31 = v41;
  __swift_storeEnumTagSinglePayload(v41, 1, 1, v29);
  sub_222DDB250();

  sub_222DB783C(v31);
  OUTLINED_FUNCTION_0_7();
  sub_222DDA440();
  OUTLINED_FUNCTION_5_6();
  sub_222DDB260();

  OUTLINED_FUNCTION_0_7();
  sub_222DDA440();
  OUTLINED_FUNCTION_5_6();
  sub_222DDB280();

  v32 = v42;
  OUTLINED_FUNCTION_0_7();
  sub_222DDA460();
  sub_222DDA1B0();
  v34 = v33;
  (*(v44 + 8))(v32, v45);
  v35 = v43;
  if (v34)
  {
    OUTLINED_FUNCTION_5_6();
    sub_222DDB210();
    v30 = 0;
  }

  __swift_storeEnumTagSinglePayload(v35, v30, 1, v29);
  sub_222DDB270();

  sub_222DB783C(v35);
  v36 = sub_222DDB340();

  return v36;
}

uint64_t sub_222DB783C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_6_5()
{
}

uint64_t OUTLINED_FUNCTION_7_4()
{
}

uint64_t sub_222DB79A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_222DDA910();
  type metadata accessor for ShowContactViewBuilder();
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_4_8(inited, v17, v18, v19, v20, v21, v22, v23, v28, v29, *(&v29 + 1), v30, v31, v32, v33[0]);
  sub_222D93674(a4, &v29);
  v24 = swift_allocObject();
  *(v24 + 16) = a6;
  *(v24 + 24) = a7;
  *(v24 + 32) = v15;
  *(v24 + 40) = a5;
  *(v24 + 48) = a2;
  *(v24 + 56) = a3;
  sub_222D97C84(&v29, v24 + 64);
  *(v24 + 104) = a1;
  v25 = a1;

  v26 = v15;

  sub_222DB9918(MEMORY[0x277D84F90], sub_222DBA960, v24);
}

uint64_t sub_222DB7B3C(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, void *a9)
{
  v40 = a7;
  v42 = a5;
  v15 = sub_222DDB3B0();
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x28223BE20](v15);
  v41 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_222DDA770();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v46[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C80, &unk_222DDDFF0);
    swift_willThrowTypedImpl();
    sub_222DBA650();
    v21 = swift_allocError();
    *v22 = 0x4E73736572646461;
    v22[1] = 0xEF646E756F46746FLL;
    v46[0] = v21;
    v47 = 1;
    a3(v46);
    v23 = &unk_27D047F40;
    v24 = &unk_222DDE220;
  }

  else
  {
    v38 = a3;
    v39 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222DDC9C0;
    *(inited + 32) = 1699574633;
    *(inited + 40) = 0xE400000000000000;
    v27 = MEMORY[0x277D839B0];
    *(inited + 48) = a6 & 1;
    *(inited + 72) = v27;
    strcpy((inited + 80), "addressLabel");
    v28 = MEMORY[0x277D837D0];
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    *(inited + 96) = v40;
    *(inited + 104) = a8;
    *(inited + 120) = v28;
    *(inited + 128) = 0x7453656369766564;
    *(inited + 136) = 0xEB00000000657461;
    __swift_project_boxed_opaque_existential_1(a9, a9[3]);

    v29 = sub_222DB734C();
    v30 = sub_222DDB380();
    *(inited + 144) = v29;
    *(inited + 168) = v30;
    *(inited + 176) = 0x746361746E6F63;
    *(inited + 184) = 0xE700000000000000;
    __swift_project_boxed_opaque_existential_1(a9, a9[3]);
    sub_222DDA760();
    LOBYTE(v29) = sub_222DDA4A0();
    (*(v18 + 8))(v20, v17);
    if (v29)
    {
      v31 = sub_222D8EEBC(0);
      v32 = sub_222DDB0D0();
    }

    else
    {
      *(inited + 200) = 0xE400000000000000;
      v32 = MEMORY[0x277D837D0];
      v31 = 1952540788;
    }

    v33 = v38;
    *(inited + 216) = v32;
    *(inited + 192) = v31;
    sub_222DDB1B0();
    sub_222DDB460();
    memset(v46, 0, sizeof(v46));
    sub_222D93674(a9, v45);
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v39;
    sub_222D97C84(v45, v34 + 32);
    sub_222DDB180();

    v35 = sub_222DDB170();
    v36 = v41;
    sub_222DDB3A0();
    sub_222DDB190();

    (*(v43 + 8))(v36, v44);
    v23 = &qword_27D047BB8;
    v24 = &qword_222DDD430;
  }

  return sub_222DB6FC0(v46, v23, v24);
}

void sub_222DB7FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32_2();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_222DDA700();
  OUTLINED_FUNCTION_2();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_4();
  v33 = v32 - v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x28223BE20](v34);
  v36 = (&a9 - v35);
  sub_222DBA6B4(v20, &a9 - v35);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *v26 = *v36;
  }

  else
  {
    (*(v29 + 32))(v33, v36, v27);
    v24(v33);
    (*(v29 + 8))(v33, v27);
  }

  *(v26 + 40) = EnumCaseMultiPayload == 1;
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DB816C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_222DDA910();
  type metadata accessor for ShowContactViewBuilder();
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_4_8(inited, v17, v18, v19, v20, v21, v22, v23, v28, v29, *(&v29 + 1), v30, v31, v32, v33[0]);
  sub_222D93674(a4, &v29);
  v24 = swift_allocObject();
  *(v24 + 16) = a6;
  *(v24 + 24) = a7;
  *(v24 + 32) = v15;
  *(v24 + 40) = a5;
  *(v24 + 48) = a2;
  *(v24 + 56) = a3;
  sub_222D97C84(&v29, v24 + 64);
  v25 = a1;

  v26 = v15;

  sub_222DB9918(MEMORY[0x277D84F90], sub_222DBA8F8, v24);
}

uint64_t sub_222DB82F8(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, void *a9)
{
  v35 = a3;
  v36 = a4;
  v15 = sub_222DDB3B0();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v38[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C80, &unk_222DDDFF0);
    swift_willThrowTypedImpl();
    sub_222DBA650();
    v20 = swift_allocError();
    *v21 = 0xD000000000000013;
    v21[1] = 0x8000000222DE1010;
    v38[0] = v20;
    v39 = 1;
    v35(v38);
    v22 = &unk_27D047F40;
    v23 = &unk_222DDE220;
  }

  else
  {
    v34 = v17;
    v24 = sub_222DDB1B0();
    v33[2] = "invalidUserLocation";
    v33[3] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222DDDDA0;
    *(inited + 32) = 1699574633;
    *(inited + 40) = 0xE400000000000000;
    v26 = MEMORY[0x277D839B0];
    *(inited + 48) = a6 & 1;
    *(inited + 72) = v26;
    strcpy((inited + 80), "addressLabel");
    v27 = MEMORY[0x277D837D0];
    *(inited + 93) = 0;
    *(inited + 94) = -5120;
    *(inited + 96) = a7;
    *(inited + 104) = a8;
    *(inited + 120) = v27;
    *(inited + 128) = 0x7453656369766564;
    *(inited + 136) = 0xEB00000000657461;
    __swift_project_boxed_opaque_existential_1(a9, a9[3]);
    v33[1] = a5;

    v28 = sub_222DB734C();
    *(inited + 168) = sub_222DDB380();
    *(inited + 144) = v28;
    sub_222DDB460();
    memset(v38, 0, sizeof(v38));
    sub_222D93674(a9, v37);
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v35;
    *(v29 + 24) = v30;
    sub_222D97C84(v37, v29 + 32);
    sub_222DDB180();

    v31 = sub_222DDB170();
    sub_222DDB3A0();
    sub_222DDB190();

    (*(v16 + 8))(v19, v34);
    v22 = &qword_27D047BB8;
    v23 = &qword_222DDD430;
  }

  return sub_222DB6FC0(v38, v22, v23);
}

uint64_t sub_222DB8684(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_222DB7FF8(a5, v10, a3, a4, a5, a6, a7, a8, v10[0], v10[1], a4, v10[3], v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7]);
  a2(v11);
  return sub_222DB6FC0(v11, &unk_27D047F40, &unk_222DDE220);
}

void sub_222DB86F8()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E70, &unk_222DDE010);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_222DDA4C0();
  v7 = sub_222DDA660();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = sub_222DDA920();
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v9 = MEMORY[0x277D5C1D8];
  v3[3] = v8;
  v3[4] = v9;
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_222DDA600();
  sub_222DB6FC0(v10, &qword_27D047F80, &qword_222DE0010);
  sub_222DB6FC0(v6, &qword_27D047E70, &unk_222DDE010);
  OUTLINED_FUNCTION_36_1();
}

void sub_222DB8858()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v21 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v22 = sub_222DDB3B0();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_222DDB1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
  inited = swift_initStackObject();
  v18 = OUTLINED_FUNCTION_0_8(inited, xmmword_222DDC9B0);
  v18[4].n128_u64[1] = MEMORY[0x277D837D0];
  v18[3].n128_u64[0] = v8;
  v18[3].n128_u64[1] = v6;

  sub_222DDB460();
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  sub_222D93674(v4, v23);
  v19 = swift_allocObject();
  *(v19 + 16) = v21;
  *(v19 + 24) = v1;
  sub_222D97C84(v23, v19 + 32);
  sub_222DDB180();

  v20 = sub_222DDB170();
  sub_222DDB3A0();
  sub_222DDB190();

  (*(v10 + 8))(v14, v22);
  sub_222DB6FC0(v24, &qword_27D047BB8, &qword_222DDD430);
  OUTLINED_FUNCTION_36_1();
}

void sub_222DB8AE8()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v23 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v25 = sub_222DDB3B0();
  OUTLINED_FUNCTION_2();
  v24 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_222DDB1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
  inited = swift_initStackObject();
  v17 = OUTLINED_FUNCTION_0_8(inited, xmmword_222DDDFD0);
  v18 = MEMORY[0x277D837D0];
  v17[3].n128_u64[0] = v8;
  v17[3].n128_u64[1] = v6;
  v17[4].n128_u64[1] = v18;
  v17[5].n128_u64[0] = 0x7453656369766564;
  v17[5].n128_u64[1] = v19 + 1792;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);

  v20 = sub_222DB734C();
  inited[7].n128_u64[1] = sub_222DDB380();
  inited[6].n128_u64[0] = v20;
  sub_222DDB460();
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  sub_222D93674(v4, v26);
  v21 = swift_allocObject();
  *(v21 + 16) = v23;
  *(v21 + 24) = v1;
  sub_222D97C84(v26, v21 + 32);
  sub_222DDB180();

  v22 = sub_222DDB170();
  sub_222DDB3A0();
  sub_222DDB190();

  (*(v24 + 8))(v13, v25);
  sub_222DB6FC0(v27, &qword_27D047BB8, &qword_222DDD430);
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DB8DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  sub_222D93674(a1, v12);
  type metadata accessor for MissingMeCardViewBuilder();
  v8 = swift_allocObject();
  sub_222D97C84(v12, v8 + 16);
  *(v8 + 80) = &type metadata for InstalledAppsProvider;
  *(v8 + 88) = &off_28362CB10;
  sub_222D93674(a1, v12);
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v7;
  sub_222D97C84(v12, (v9 + 5));

  v10 = v7;
  sub_222DB9E6C(MEMORY[0x277D84F90], sub_222DB9904, v9);
}

uint64_t sub_222DB8F40(uint64_t a1, char a2, void (*a3)(_OWORD *), uint64_t a4, void *a5, uint64_t a6)
{
  v12 = sub_222DDB3B0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    *&v27[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C80, &unk_222DDDFF0);
    swift_willThrowTypedImpl();
    sub_222DBA650();
    v16 = swift_allocError();
    *v17 = 0xD000000000000013;
    v17[1] = 0x8000000222DE0F30;
    *&v27[0] = v16;
    v29 = 1;
    a3(v27);
    v18 = &unk_27D047F40;
    v19 = &unk_222DDE220;
  }

  else
  {
    sub_222DDB1B0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_222DDC9B0;
    *(inited + 32) = 1699574633;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = 1;
    sub_222DDB460();
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_222D93674(a6, v26);
    v21 = swift_allocObject();
    v21[2] = a5;
    sub_222D97C84(v26, (v21 + 3));
    v21[8] = a3;
    v21[9] = a4;
    sub_222DDB180();
    v22 = a5;

    v23 = sub_222DDB170();
    sub_222DDB3A0();
    sub_222DDB190();

    (*(v13 + 8))(v15, v12);
    v18 = &qword_27D047BB8;
    v19 = &qword_222DDD430;
  }

  return sub_222DB6FC0(v27, v18, v19);
}

uint64_t sub_222DB9230(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a2;
  v24 = a1;
  v29 = sub_222DDB3B0();
  v7 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v23 - v13;
  v26 = sub_222DDB1B0();
  v25 = "nsupportedMissingMeCard";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222DDC9B0;
  *(inited + 32) = 0x656369766564;
  *(inited + 40) = 0xE600000000000000;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v16 = sub_222DB734C();
  *(inited + 72) = sub_222DDB380();
  *(inited + 48) = v16;
  sub_222DDB460();
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  sub_222DBA6B4(v24, v14);
  sub_222D93674(a3, v30);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_222DBA724(v14, v19 + v17);
  v20 = (v19 + v18);
  *v20 = v27;
  v20[1] = a5;
  sub_222D97C84(v30, v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  sub_222DDB180();

  v21 = sub_222DDB170();
  sub_222DDB3A0();
  sub_222DDB190();

  (*(v7 + 8))(v9, v29);
  return sub_222DB6FC0(v31, &qword_27D047BB8, &qword_222DDD430);
}

uint64_t sub_222DB9590(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E68, &qword_222DDE008);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (v22 - v12);
  v14 = sub_222DDA7B0();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v14);
  sub_222DB972C(a1, v10, v13);
  sub_222DB6FC0(v10, &qword_27D047E68, &qword_222DDE008);
  sub_222DB7FF8(sub_222DBA84C, v22, v15, v16, v17, v18, v19, v20, v22[0], v22[1], a5, v22[3], v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v23[6], v23[7]);
  a3(v23);
  sub_222DB6FC0(v23, &unk_27D047F40, &unk_222DDE220);
  return sub_222DB6FC0(v13, &unk_27D047F60, &qword_222DDE000);
}

uint64_t sub_222DB972C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = sub_222DDA700();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  MEMORY[0x28223BE20](v12);
  v14 = (&v16 - v13);
  sub_222DBA6B4(v4, &v16 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a3 = *v14;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_222DBA404(v11, a1, a2, a3);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_222DB9918(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  swift_retain_n();
  sub_222D93674(v3 + 32, v32);
  __swift_project_boxed_opaque_existential_1(v32, v33);
  swift_retain_n();
  v7 = sub_222DDA4F0();
  __swift_destroy_boxed_opaque_existential_0(v32);
  if (v7)
  {
    if (qword_27D0475A8 != -1)
    {
      swift_once();
    }

    v8 = sub_222DDB3E0();
    __swift_project_value_buffer(v8, qword_27D04C910);
    v9 = sub_222DDB3C0();
    v10 = sub_222DDB6A0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_222D8A000, v9, v10, "[IdiomSensitiveViewBuilder] Building views for Watch", v11, 2u);
      MEMORY[0x223DCEF40](v11, -1, -1);
    }

    sub_222DD9BF8(v4, a2, a3);
  }

  else
  {
    sub_222D93674(v4 + 32, v32);
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v12 = sub_222DDA4E0();
    __swift_destroy_boxed_opaque_existential_0(v32);
    if (v12)
    {
      if (qword_27D0475A8 != -1)
      {
        swift_once();
      }

      v13 = sub_222DDB3E0();
      __swift_project_value_buffer(v13, qword_27D04C910);
      v14 = sub_222DDB3C0();
      v15 = sub_222DDB6A0();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_222D8A000, v14, v15, "[IdiomSensitiveViewBuilder] Building views for Mac", v16, 2u);
        MEMORY[0x223DCEF40](v16, -1, -1);
      }

      sub_222DD9C04(v4, a2, a3);
    }

    else
    {
      sub_222D93674(v4 + 32, v32);
      __swift_project_boxed_opaque_existential_1(v32, v33);
      v17 = sub_222DDA480();
      __swift_destroy_boxed_opaque_existential_0(v32);
      if (v17)
      {
        if (qword_27D0475A8 != -1)
        {
          swift_once();
        }

        v18 = sub_222DDB3E0();
        __swift_project_value_buffer(v18, qword_27D04C910);
        v19 = sub_222DDB3C0();
        v20 = sub_222DDB6A0();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_222D8A000, v19, v20, "[IdiomSensitiveViewBuilder] Building views for CarDND", v21, 2u);
          MEMORY[0x223DCEF40](v21, -1, -1);
        }

        sub_222DD9C1C(v4, a2, a3);
      }

      else
      {
        sub_222D93674(v4 + 32, v32);
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v22 = sub_222DDA510();
        __swift_destroy_boxed_opaque_existential_0(v32);
        if (v22)
        {
          if (qword_27D0475A8 != -1)
          {
            swift_once();
          }

          v23 = sub_222DDB3E0();
          __swift_project_value_buffer(v23, qword_27D04C910);
          v24 = sub_222DDB3C0();
          v25 = sub_222DDB6A0();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&dword_222D8A000, v24, v25, "[IdiomSensitiveViewBuilder] Building views for CarPlay", v26, 2u);
            MEMORY[0x223DCEF40](v26, -1, -1);
          }

          sub_222DD9C10(v4, a2, a3);
        }

        else
        {
          if (qword_27D0475A8 != -1)
          {
            swift_once();
          }

          v27 = sub_222DDB3E0();
          __swift_project_value_buffer(v27, qword_27D04C910);
          v28 = sub_222DDB3C0();
          v29 = sub_222DDB6A0();
          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            *v30 = 0;
            _os_log_impl(&dword_222D8A000, v28, v29, "[IdiomSensitiveViewBuilder] Building views for IOS", v30, 2u);
            MEMORY[0x223DCEF40](v30, -1, -1);
          }

          sub_222DD9C28(v4, a2, a3);
        }
      }
    }
  }
}

uint64_t sub_222DB9E6C(uint64_t a1, void (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;

  sub_222D93674(v3 + 16, v33);
  __swift_project_boxed_opaque_existential_1(v33, v34);
  swift_retain_n();
  v8 = sub_222DDA4F0();
  __swift_destroy_boxed_opaque_existential_0(v33);
  if (v8)
  {
    if (qword_27D0475A8 != -1)
    {
      swift_once();
    }

    v9 = sub_222DDB3E0();
    __swift_project_value_buffer(v9, qword_27D04C910);
    v10 = sub_222DDB3C0();
    v11 = sub_222DDB6A0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_222D8A000, v10, v11, "[IdiomSensitiveViewBuilder] Building views for Watch", v12, 2u);
      MEMORY[0x223DCEF40](v12, -1, -1);
    }

    sub_222DCA79C(v4, a2, a3);
  }

  else
  {
    sub_222D93674(v4 + 16, v33);
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v13 = sub_222DDA4E0();
    __swift_destroy_boxed_opaque_existential_0(v33);
    if (v13)
    {
      if (qword_27D0475A8 != -1)
      {
        swift_once();
      }

      v14 = sub_222DDB3E0();
      __swift_project_value_buffer(v14, qword_27D04C910);
      v15 = sub_222DDB3C0();
      v16 = sub_222DDB6A0();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_222D8A000, v15, v16, "[IdiomSensitiveViewBuilder] Building views for Mac", v17, 2u);
        MEMORY[0x223DCEF40](v17, -1, -1);
      }

      sub_222DCA7A8(sub_222DBA3F8, v7);
    }

    else
    {
      sub_222D93674(v4 + 16, v33);
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v18 = sub_222DDA480();
      __swift_destroy_boxed_opaque_existential_0(v33);
      if (v18)
      {
        if (qword_27D0475A8 != -1)
        {
          swift_once();
        }

        v19 = sub_222DDB3E0();
        __swift_project_value_buffer(v19, qword_27D04C910);
        v20 = sub_222DDB3C0();
        v21 = sub_222DDB6A0();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&dword_222D8A000, v20, v21, "[IdiomSensitiveViewBuilder] Building views for CarDND", v22, 2u);
          MEMORY[0x223DCEF40](v22, -1, -1);
        }

        sub_222DCAA70(v4, a2, a3);
      }

      else
      {
        sub_222D93674(v4 + 16, v33);
        __swift_project_boxed_opaque_existential_1(v33, v34);
        v23 = sub_222DDA510();
        __swift_destroy_boxed_opaque_existential_0(v33);
        if (v23)
        {
          if (qword_27D0475A8 != -1)
          {
            swift_once();
          }

          v24 = sub_222DDB3E0();
          __swift_project_value_buffer(v24, qword_27D04C910);
          v25 = sub_222DDB3C0();
          v26 = sub_222DDB6A0();
          if (os_log_type_enabled(v25, v26))
          {
            v27 = swift_slowAlloc();
            *v27 = 0;
            _os_log_impl(&dword_222D8A000, v25, v26, "[IdiomSensitiveViewBuilder] Building views for CarPlay", v27, 2u);
            MEMORY[0x223DCEF40](v27, -1, -1);
          }

          sub_222DCAA64(v4, a2, a3);
        }

        else
        {
          if (qword_27D0475A8 != -1)
          {
            swift_once();
          }

          v28 = sub_222DDB3E0();
          __swift_project_value_buffer(v28, qword_27D04C910);
          v29 = sub_222DDB3C0();
          v30 = sub_222DDB6A0();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&dword_222D8A000, v29, v30, "[IdiomSensitiveViewBuilder] Building views for IOS", v31, 2u);
            MEMORY[0x223DCEF40](v31, -1, -1);
          }

          sub_222DCAB80(sub_222DBA3F8, v7);
        }
      }
    }
  }
}

void sub_222DBA404(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_222DDA700();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = (&v19 - v16);
  sub_222DBA6B4(a2, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v17 = *v15;
  }

  else
  {
    (*(v9 + 32))(v11, v15, v8);
    sub_222DD7EE8(a3, v17);
    (*(v9 + 8))(v11, v8);
  }

  swift_storeEnumTagMultiPayload();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    (*(v9 + 16))(a4, a1, v8);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v9 + 32))(a4, v17, v8);
    swift_storeEnumTagMultiPayload();
  }
}

unint64_t sub_222DBA650()
{
  result = qword_27D047E60;
  if (!qword_27D047E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047E60);
  }

  return result;
}

uint64_t sub_222DBA6B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222DBA724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222DBA794(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1 + v5;
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_222DB9590(a1, v1 + v4, v8, v9, v1 + v6);
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

uint64_t objectdestroy_12Tm()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_222DBAA2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_222DBAA6C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 *OUTLINED_FUNCTION_0_8(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x4E746361746E6F63;
  result[2].n128_u64[1] = 0xEB00000000656D61;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{

  return sub_222DD9BD0(v16, v15, &v19);
}

uint64_t OUTLINED_FUNCTION_7_5(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_222DB8684(a1, a2, a3, v9 + 32, v8, a6, a7, a8);
}

void sub_222DBAB24(id *a1, char a2, void (*a3)(void, void))
{
  LOBYTE(v4) = a2;
  v5 = a1;
  if (a2)
  {
    v6 = a1;
    v7 = v5;
  }

  else
  {
    v8 = sub_222DA8780();
    v7 = MEMORY[0x277D84F90];
    if (v8)
    {
      v9 = v8;
      v37 = MEMORY[0x277D84F90];
      sub_222DA54C8(0, v8 & ~(v8 >> 63), 0);
      if (v9 < 0)
      {
        __break(1u);
        return;
      }

      v33 = a3;
      v34 = v4;
      v10 = 0;
      v11 = v5 & 0xC000000000000001;
      v7 = v37;
      v35 = v5 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v11)
        {
          v13 = MEMORY[0x223DCE590](v10, v5);
        }

        else
        {
          if (v10 >= *(v35 + 16))
          {
            goto LABEL_32;
          }

          v13 = *(v5 + 8 * v10 + 32);
        }

        v14 = v13;
        v15 = sub_222DA7B8C(v13, &selRef_encodedClassName);
        if (v16)
        {
          v17 = v15;
        }

        else
        {
          v17 = 0x416E776F6E6B6E55;
        }

        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = 0xEE00776569566563;
        }

        v19 = sub_222DA7B8C(v14, &selRef_aceId);
        if (v20)
        {
          v21 = v19;
        }

        else
        {
          v21 = 7104878;
        }

        if (v20)
        {
          v22 = v20;
        }

        else
        {
          v22 = 0xE300000000000000;
        }

        MEMORY[0x223DCE2E0](0x3D64496563615BLL, 0xE700000000000000);
        MEMORY[0x223DCE2E0](v21, v22);

        MEMORY[0x223DCE2E0](93, 0xE100000000000000);

        a3 = v18;
        v37 = v7;
        v4 = v7[2];
        v23 = v7[3];
        if (v4 >= v23 >> 1)
        {
          sub_222DA54C8((v23 > 1), v4 + 1, 1);
          v7 = v37;
        }

        v7[2] = v4 + 1;
        v24 = &v7[2 * v4];
        v24[4] = v17;
        v24[5] = a3;
        ++v10;
        v5 = a1;
        if (v12 == v9)
        {
          LOBYTE(v4) = v34;
          a3 = v33;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }
  }

LABEL_27:
  if (qword_27D0475A8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v25 = sub_222DDB3E0();
  __swift_project_value_buffer(v25, qword_27D04C910);
  sub_222DBAEA4(v7, v4 & 1);
  v26 = sub_222DDB3C0();
  v27 = sub_222DDB6A0();
  sub_222DBAEB0(v7, v4 & 1);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136315138;
    sub_222DBAEA4(v7, v4 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E78, "N=");
    v30 = sub_222DDB540();
    v32 = sub_222D8F7F0(v30, v31, &v37);
    v5 = a1;

    *(v28 + 4) = v32;
    _os_log_impl(&dword_222D8A000, v26, v27, "IdiomSensitiveViewBuilder: Built views: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x223DCEF40](v29, -1, -1);
    MEMORY[0x223DCEF40](v28, -1, -1);
  }

  a3(v5, v4 & 1);
  sub_222DBAEB0(v7, v4 & 1);
}

id sub_222DBAEA4(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

void sub_222DBAEB0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void *sub_222DBAEBC(uint64_t a1, uint64_t a2, void *a3)
{

  v4 = sub_222DDB460();
  v5 = [a3 dialogId];
  v6 = sub_222DDB630();

  v7 = 0;
  v8 = *(v6 + 16);
  while (2)
  {
    while (2)
    {
      for (i = 16 * v7 + 40; ; i += 16)
      {
        if (v8 == v7)
        {

          return v4;
        }

        if (v7 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        sub_222D8F710();
        v10 = sub_222DDB750();
        v11 = *(v10 + 16);
        if (v11)
        {
          break;
        }

        ++v7;
      }

      v12 = v10 + 16 * v11;
      v37 = *(v12 + 16);
      v38 = *(v12 + 24);

      v13 = [a3 print];
      v14 = sub_222DDB630();

      if (v7 >= *(v14 + 16))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v36 = a3;
      v15 = *(v14 + i - 8);
      v16 = *(v14 + i);

      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
        v18 = [v36 print];
        v19 = sub_222DDB630();

        if (v7 >= *(v19 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v20 = [v36 captionPrint];
        v19 = sub_222DDB630();

        if (v7 >= *(v19 + 16))
        {
          goto LABEL_28;
        }
      }

      v34 = *(v19 + i - 8);
      v35 = *(v19 + i);

      swift_isUniquelyReferenced_nonNull_native();
      v21 = sub_222DCC9E4(v37, v38);
      if (__OFADD__(v4[2], (v22 & 1) == 0))
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v23 = v21;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E80, &unk_222DDE0E8);
      if (sub_222DDB8E0())
      {
        v25 = sub_222DCC9E4(v37, v38);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_29;
        }

        v23 = v25;
      }

      ++v7;
      if (v24)
      {
        v27 = (v4[7] + 16 * v23);
        *v27 = v34;
        v27[1] = v35;

        a3 = v36;
        continue;
      }

      break;
    }

    v4[(v23 >> 6) + 8] |= 1 << v23;
    v28 = (v4[6] + 16 * v23);
    *v28 = v37;
    v28[1] = v38;
    v29 = (v4[7] + 16 * v23);
    *v29 = v34;
    v29[1] = v35;
    v30 = v4[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (!v31)
    {
      v4[2] = v32;
      a3 = v36;
      continue;
    }

    break;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_222DDBAF0();
  __break(1u);
  return result;
}

uint64_t Location.formattedPlaceName.getter()
{
  v0 = sub_222DDB3B0();
  OUTLINED_FUNCTION_2();
  v138 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_6(v3);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  OUTLINED_FUNCTION_28_2();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_6(v123 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E88, &qword_222DDE0F8);
  v7 = OUTLINED_FUNCTION_8(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_6(v123 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  v13 = OUTLINED_FUNCTION_8(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7_6(v123 - v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E90, &qword_222DDE108);
  OUTLINED_FUNCTION_8(v18);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_7_6(v123 - v20);
  v143 = sub_222DDAE00();
  OUTLINED_FUNCTION_2();
  v140 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_6(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E98, &qword_222DDE110);
  v25 = OUTLINED_FUNCTION_8(v24);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_5_3();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = v123 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047EA0, &qword_222DDE118);
  v33 = OUTLINED_FUNCTION_8(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_5_3();
  v36 = v34 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = v123 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047EA8, &qword_222DDE120);
  OUTLINED_FUNCTION_8(v40);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v41);
  v43 = v123 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047EB0, &qword_222DDE128);
  OUTLINED_FUNCTION_8(v44);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v45);
  v47 = v123 - v46;
  v145 = sub_222DDAA40();
  OUTLINED_FUNCTION_2();
  v142 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_7_6(v123 - v51);
  sub_222DDADA0();
  v52 = sub_222DDAC60();
  if (__swift_getEnumTagSinglePayload(v31, 1, v52) == 1)
  {
    v53 = &qword_27D047E98;
    v54 = &qword_222DDE110;
    v55 = v31;
LABEL_8:
    sub_222DA8300(v55, v53, v54);
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v145);
LABEL_9:
    v64 = qword_27D047EB0;
    v65 = &qword_222DDE128;
    v66 = v47;
LABEL_10:
    sub_222DA8300(v66, v64, v65);
    return 0;
  }

  v125 = v0;
  sub_222DDAC50();
  OUTLINED_FUNCTION_28_2();
  v57 = *(v56 + 8);
  v57(v31, v52);
  v58 = sub_222DDA9B0();
  OUTLINED_FUNCTION_61_0(v39);
  if (v59)
  {
    v53 = &qword_27D047EA0;
    v54 = &qword_222DDE118;
    v55 = v39;
    goto LABEL_8;
  }

  v124 = v57;
  sub_222DDA990();
  OUTLINED_FUNCTION_2_7();
  v61 = *(v60 + 8);
  v123[1] = v60 + 8;
  v61(v39, v58);
  v62 = sub_222DDAA60();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v62);
  if (EnumTagSinglePayload == 1)
  {
    v53 = &qword_27D047EA8;
    v54 = &qword_222DDE120;
    v55 = v43;
    goto LABEL_8;
  }

  v123[0] = v61;
  sub_222DDAA50();
  OUTLINED_FUNCTION_28_2();
  (*(v69 + 8))(v43, v62);
  v70 = v145;
  if (__swift_getEnumTagSinglePayload(v47, 1, v145) == 1)
  {
    goto LABEL_9;
  }

  v71 = v142;
  v72 = v144;
  (*(v142 + 32))(v144, v47, v70);
  sub_222DDADA0();
  if (__swift_getEnumTagSinglePayload(v28, 1, v52) == 1)
  {
    (*(v71 + 8))(v72, v70);
    v73 = &qword_27D047E98;
    v74 = &qword_222DDE110;
    v75 = v28;
LABEL_18:
    sub_222DA8300(v75, v73, v74);
    v76 = v141;
    __swift_storeEnumTagSinglePayload(v141, 1, 1, v143);
LABEL_19:
    v64 = &qword_27D047E90;
    v65 = &qword_222DDE108;
    v66 = v76;
    goto LABEL_10;
  }

  sub_222DDAC50();
  v124(v28, v52);
  OUTLINED_FUNCTION_61_0(v36);
  if (v59)
  {
    (*(v71 + 8))(v144, v70);
    v73 = &qword_27D047EA0;
    v74 = &qword_222DDE118;
    v75 = v36;
    goto LABEL_18;
  }

  v76 = v141;
  sub_222DDA9A0();
  (v123[0])(v36, v58);
  v77 = v143;
  v78 = __swift_getEnumTagSinglePayload(v76, 1, v143);
  v79 = v144;
  v80 = v71;
  if (v78 == 1)
  {
    (*(v71 + 8))(v144, v70);
    goto LABEL_19;
  }

  (*(v140 + 32))(v139, v76, v77);
  if (qword_27D0475A8 != -1)
  {
    swift_once();
  }

  v81 = sub_222DDB3E0();
  __swift_project_value_buffer(v81, qword_27D04C910);
  v82 = *(v71 + 16);
  v83 = v126;
  v84 = v70;
  v82(v126, v79, v70);
  v85 = sub_222DDB3C0();
  v86 = sub_222DDB6B0();
  v87 = os_log_type_enabled(v85, v86);
  v88 = v129;
  if (v87)
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *&v146[0] = v90;
    *v89 = 136315138;
    v91 = sub_222DDAA30();
    v92 = v84;
    v94 = v93;
    v141 = *(v80 + 8);
    v141(v83, v92);
    v95 = sub_222D8F7F0(v91, v94, v146);

    *(v89 + 4) = v95;
    _os_log_impl(&dword_222D8A000, v85, v86, "About to set locationName with bounded value: %s", v89, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v90);
    MEMORY[0x223DCEF40](v90, -1, -1);
    MEMORY[0x223DCEF40](v89, -1, -1);
  }

  else
  {

    v141 = *(v80 + 8);
    v141(v83, v70);
  }

  v96 = v133;
  v97 = v128;
  v98 = v127;
  sub_222DDB040();
  swift_allocObject();
  sub_222DDB030();
  sub_222DDADE0();
  v99 = sub_222DDAA20();
  OUTLINED_FUNCTION_61_0(v98);
  v100 = v132;
  v101 = v131;
  if (v59)
  {
    sub_222DA8300(v98, &qword_27D047E88, &qword_222DDE0F8);
    v103 = 1;
  }

  else
  {
    sub_222DDAA10();
    OUTLINED_FUNCTION_2_7();
    (*(v102 + 8))();
    sub_222DDB210();
    v103 = 0;
  }

  sub_222DDB240();
  OUTLINED_FUNCTION_12_4(v97, v103);
  sub_222DDAFA0();

  sub_222DA8300(v97, &qword_27D0479C0, &qword_222DDE100);
  sub_222DDADF0();
  OUTLINED_FUNCTION_61_0(v88);
  if (v59)
  {
    sub_222DA8300(v88, &qword_27D047E88, &qword_222DDE0F8);
    v106 = 1;
    v105 = v130;
  }

  else
  {
    sub_222DDAA10();
    OUTLINED_FUNCTION_2_7();
    (*(v104 + 8))(v88, v99);
    v105 = v130;
    OUTLINED_FUNCTION_11_4();
    v106 = 0;
  }

  OUTLINED_FUNCTION_12_4(v105, v106);
  sub_222DDAFB0();

  sub_222DA8300(v105, &qword_27D0479C0, &qword_222DDE100);
  sub_222DDADD0();
  OUTLINED_FUNCTION_61_0(v101);
  if (v59)
  {
    sub_222DA8300(v101, &qword_27D047E88, &qword_222DDE0F8);
    v108 = 1;
  }

  else
  {
    sub_222DDAA10();
    OUTLINED_FUNCTION_2_7();
    (*(v107 + 8))(v101, v99);
    sub_222DDB210();
    v108 = 0;
  }

  OUTLINED_FUNCTION_12_4(v100, v108);
  sub_222DDAFC0();

  sub_222DA8300(v100, &qword_27D0479C0, &qword_222DDE100);
  sub_222DDADC0();
  OUTLINED_FUNCTION_61_0(v96);
  if (v59)
  {
    sub_222DA8300(v96, &qword_27D047E88, &qword_222DDE0F8);
    v111 = 1;
    v110 = v134;
  }

  else
  {
    sub_222DDAA10();
    OUTLINED_FUNCTION_2_7();
    (*(v109 + 8))(v96, v99);
    v110 = v134;
    OUTLINED_FUNCTION_11_4();
    v111 = 0;
  }

  OUTLINED_FUNCTION_12_4(v110, v111);
  sub_222DDAF90();

  sub_222DA8300(v110, &qword_27D0479C0, &qword_222DDE100);
  sub_222DDB000();

  v112 = sub_222DDB020();

  type metadata accessor for _BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v114 = [objc_opt_self() bundleForClass_];
  sub_222DDB1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222DDDFD0;
  *(inited + 32) = 0x746361746E6F63;
  *(inited + 40) = 0xE700000000000000;
  v116 = sub_222DDB0D0();
  *(inited + 48) = v112;
  *(inited + 72) = v116;
  strcpy((inited + 80), "addressLabel");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;

  v117 = v144;
  v118 = sub_222DDAA30();
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v118;
  *(inited + 104) = v119;
  sub_222DDB460();
  sub_222DDB180();
  memset(v146, 0, sizeof(v146));
  v147 = 0;
  v120 = sub_222DDB170();
  v121 = v135;
  sub_222DDB3A0();
  v122 = v137;
  sub_222DDB1A0();

  (*(v138 + 8))(v121, v125);
  sub_222DA8300(v146, &qword_27D047BB8, &qword_222DDD430);
  v67 = sub_222DDBBA0();

  sub_222DA8300(v122, &unk_27D047F60, &qword_222DDE000);
  (*(v140 + 8))(v139, v143);
  v141(v117, v145);
  return v67;
}

uint64_t OUTLINED_FUNCTION_11_4()
{

  return sub_222DDB210();
}

uint64_t OUTLINED_FUNCTION_12_4(uint64_t a1, uint64_t a2)
{

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v2);
}

uint64_t sub_222DBC2C0(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_222DBC354()
{
  sub_222DDBB60();
  MEMORY[0x223DCE8B0](0);
  return sub_222DDBB90();
}

uint64_t sub_222DBC3A4(uint64_t a1)
{
  sub_222DDBB60();
  sub_222D8D8C8();
  return sub_222DDBB90();
}

uint64_t sub_222DBC3E0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_222DBC420(a1);
  return v2;
}

void sub_222DBC498()
{
  OUTLINED_FUNCTION_32_2();
  v73 = v2;
  v74 = v1;
  v71 = v3;
  v4 = *v0;
  v67 = v0;
  v5 = v4;
  v69 = sub_222DDA890();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v68 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047F88, &qword_222DDE240);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v65 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047F90, &qword_222DDE248);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x28223BE20](v14);
  v16 = (v65 - v15);
  v70 = sub_222DDA940();
  OUTLINED_FUNCTION_2();
  v66 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_4();
  v21 = v20 - v19;
  v22 = sub_222DDA900();
  OUTLINED_FUNCTION_2();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_4();
  v28 = v27 - v26;
  if (qword_27D0475A8 != -1)
  {
    swift_once();
  }

  v29 = sub_222DDB3E0();
  v65[1] = __swift_project_value_buffer(v29, qword_27D04C910);
  v30 = sub_222DDB3C0();
  v31 = sub_222DDB6B0();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v65[0] = v13;
    v33 = v28;
    v34 = v21;
    v35 = v24;
    v36 = v7;
    v37 = v16;
    v38 = v22;
    v39 = v5;
    v40 = v32;
    *v32 = 0;
    _os_log_impl(&dword_222D8A000, v30, v31, "[LocationConfirmationStrategy::parseConfirmationResponse] called", v32, 2u);
    v41 = v40;
    v5 = v39;
    v22 = v38;
    v16 = v37;
    v7 = v36;
    v24 = v35;
    v21 = v34;
    v28 = v33;
    v13 = v65[0];
    MEMORY[0x223DCEF40](v41, -1, -1);
  }

  v42 = v71;
  sub_222DDA870();
  if ((*(v24 + 88))(v28, v22) == *MEMORY[0x277D5C158])
  {
    (*(v24 + 96))(v28, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250);

    v43 = v66 + 32;
    v44 = v70;
    (*(v66 + 32))(v21, v28, v70);
    v45 = (*(*(v5 + 88) + 32))(v21, *(v5 + 80));
    v46 = sub_222DDA790();
    OUTLINED_FUNCTION_4_6();
    v48 = (v43 - 24);
    if (v45)
    {
      v49 = MEMORY[0x277D5BED8];
    }

    else
    {
      v49 = MEMORY[0x277D5BED0];
    }

    (*(v47 + 104))(v13, *v49, v46);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v46);
    sub_222DDA860();
    swift_storeEnumTagMultiPayload();
    v74(v16);
    sub_222DB6FC0(v16, &qword_27D047F90, &qword_222DDE248);
    (*v48)(v21, v44);
  }

  else
  {
    v50 = v68;
    v51 = v69;
    (*(v7 + 16))(v68, v42, v69);
    v52 = sub_222DDB3C0();
    v53 = sub_222DDB6B0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v71 = v22;
      v55 = v54;
      v70 = swift_slowAlloc();
      v75 = v70;
      *v55 = 136315138;
      sub_222DBE544();
      LODWORD(v67) = v53;
      v56 = sub_222DDBAB0();
      v57 = v51;
      v58 = v5;
      v60 = v59;
      (*(v7 + 8))(v50, v57);
      v61 = sub_222D8F7F0(v56, v60, &v75);
      v5 = v58;

      *(v55 + 4) = v61;
      _os_log_impl(&dword_222D8A000, v52, v67, "received unsupported parse %s", v55, 0xCu);
      v62 = v70;
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x223DCEF40](v62, -1, -1);
      v63 = v55;
      v22 = v71;
      MEMORY[0x223DCEF40](v63, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v50, v51);
    }

    type metadata accessor for LocationConfirmationStrategy.LocationConfirmationError(0, *(v5 + 80), *(v5 + 88), v64);
    swift_getWitnessTable();
    *v16 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v74(v16);
    sub_222DB6FC0(v16, &qword_27D047F90, &qword_222DDE248);
    (*(v24 + 8))(v28, v22);
  }

  OUTLINED_FUNCTION_36_1();
}

void sub_222DBCB4C()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v39 = v2;
  v40 = v3;
  v5 = v4;
  v38 = *v0;
  sub_222DDB3B0();
  OUTLINED_FUNCTION_2();
  v42 = v7;
  v43 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v41 = v9 - v8;
  v10 = sub_222DDADB0();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v16 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(MEMORY[0x277D47498]) init];
  v18 = sub_222DDAD90();
  if (v18)
  {
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_222DDD2F0;
    sub_222D9E3E4(0, &unk_27D047F50, 0x277D47478);
    v37 = v19;
    *(v20 + 32) = sub_222DD867C(v37, MEMORY[0x277D84F90]);
    v21 = sub_222DDB620();

    [v17 setItems_];

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    v24 = sub_222DDB1B0();
    v36[1] = "83D0FACF4CA12_BundleClass";
    v36[2] = v24;
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    (*(v12 + 16))(v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v5, v10);
    v25 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    v29 = v38;
    *(v28 + 2) = *(v38 + 80);
    *(v28 + 3) = *(v29 + 88);
    *(v28 + 4) = v23;
    *(v28 + 5) = v1;
    (*(v12 + 32))(&v28[v25], v16, v10);
    v30 = &v28[v26];
    v31 = v40;
    *v30 = v39;
    *(v30 + 1) = v31;
    *&v28[v27] = v17;
    v32 = v23;

    v33 = v17;
    sub_222DDB460();
    sub_222DDB180();
    v34 = sub_222DDB170();
    v35 = v41;
    sub_222DDB3A0();
    sub_222DDB190();

    (*(v42 + 8))(v35, v43);
    sub_222DB6FC0(v44, &qword_27D047BB8, &qword_222DDD430);
    OUTLINED_FUNCTION_36_1();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_222DBCF64(uint64_t a1, void *a2, void *a3, uint64_t a4, void (*a5)(id *), uint64_t a6, void *a7)
{
  v38 = a4;
  v39 = a7;
  v46 = a6;
  v47 = a5;
  v41 = a3;
  v42 = a2;
  v40 = *a3;
  v45 = sub_222DDADB0();
  v8 = *(v45 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v45);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222DDA700();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v43 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  MEMORY[0x28223BE20](v16);
  v18 = (&v36 - v17);
  sub_222DBA6B4(a1, &v36 - v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48[0] = *v18;
    v19 = v48[0];
    v49 = 1;
    v20 = v48[0];
    v47(v48);

    return sub_222DB6FC0(v48, &unk_27D047F40, &unk_222DDE220);
  }

  else
  {
    v36 = *(v11 + 32);
    v37 = v15;
    v36(v15, v18, v10);
    (*(v8 + 16))(v44, v38, v45);
    (*(v11 + 16))(v43, v15, v10);
    v22 = (*(v8 + 80) + 48) & ~*(v8 + 80);
    v23 = (v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v24 = (*(v11 + 80) + v23 + 16) & ~*(v11 + 80);
    v25 = swift_allocObject();
    v26 = v40;
    v27 = v41;
    *(v25 + 2) = *(v40 + 80);
    v28 = *(v26 + 88);
    v40 = v10;
    v29 = v42;
    *(v25 + 3) = v28;
    *(v25 + 4) = v29;
    *(v25 + 5) = v27;
    (*(v8 + 32))(&v25[v22], v44, v45);
    v30 = &v25[v23];
    v31 = v46;
    *v30 = v47;
    v30[1] = v31;
    v32 = v40;
    v36(&v25[v24], v43, v40);
    v33 = v39;
    *&v25[(v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8] = v39;
    v34 = v29;

    v35 = v33;
    sub_222DDA5A0();

    return (*(v11 + 8))(v37, v32);
  }
}

uint64_t sub_222DBD32C(void *a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t a6, void (*a7)(_OWORD *), uint64_t a8, uint64_t a9, void *a10)
{
  v56 = a7;
  v57 = a8;
  v48 = a6;
  v53 = a4;
  v54 = a1;
  v55 = a2;
  v50 = *a5;
  v51 = a5;
  v11 = sub_222DDB3B0();
  v49 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v52 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222DDA700();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = sub_222DDADB0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    *&v58[0] = v54;
    v60 = 1;
    v21 = v54;
    v56(v58);
    v22 = &unk_27D047F40;
    v23 = &unk_222DDE220;
  }

  else
  {
    v45 = a10;
    v24 = v19;
    v42 = v19;
    v25 = sub_222DDB1B0();
    v46 = "riggerConfirmation";
    v47 = v25;
    v59 = 0;
    memset(v58, 0, sizeof(v58));
    (*(v17 + 16))(&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v48, v24);
    v26 = *(v14 + 16);
    v44 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v43 = v13;
    v26(v44, a9, v13);
    v27 = *(v17 + 80);
    v48 = v11;
    v28 = (v27 + 56) & ~v27;
    v29 = (v18 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (*(v14 + 80) + v29 + 16) & ~*(v14 + 80);
    v31 = swift_allocObject();
    v32 = v50;
    v33 = v51;
    *(v31 + 2) = *(v50 + 80);
    v34 = v54;
    *(v31 + 3) = *(v32 + 88);
    *(v31 + 4) = v34;
    *(v31 + 5) = v55;
    *(v31 + 6) = v33;
    (*(v17 + 32))(&v31[v28], v20, v42);
    v35 = &v31[v29];
    v36 = v57;
    *v35 = v56;
    *(v35 + 1) = v36;
    (*(v14 + 32))(&v31[v30], v44, v43);
    v37 = v45;
    *&v31[(v15 + v30 + 7) & 0xFFFFFFFFFFFFFFF8] = v45;
    sub_222DBE51C(v34, v55, 0);

    v38 = v37;
    sub_222DDB460();
    sub_222DDB180();
    v39 = sub_222DDB170();
    v40 = v52;
    sub_222DDB3A0();
    sub_222DDB190();

    (*(v49 + 8))(v40, v48);
    v22 = &qword_27D047BB8;
    v23 = &qword_222DDD430;
  }

  return sub_222DB6FC0(v58, v22, v23);
}

uint64_t sub_222DBD798(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(id *), uint64_t a7, uint64_t a8, void *a9)
{
  v64 = a8;
  v62 = a5;
  v66 = a3;
  v65 = a2;
  v61 = *a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E70, &unk_222DDE010);
  MEMORY[0x28223BE20](v13 - 8);
  v63 = v54 - v14;
  v60 = sub_222DDA5D0();
  *&v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_222DDA740();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_222DDA700();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  MEMORY[0x28223BE20](v22);
  v24 = (v54 - v23);
  sub_222DBA6B4(a1, v54 - v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v74[0] = *v24;
    v25 = v74[0];
    v75 = 1;
    v26 = v74[0];
    a6(v74);

    return sub_222DB6FC0(v74, &unk_27D047F40, &unk_222DDE220);
  }

  v56 = a4;
  v57 = a7;
  v58 = a6;
  (*(v68 + 32))(v67, v24, v69);
  v27 = [objc_allocWithZone(MEMORY[0x277D47A38]) init];
  v28 = sub_222DDB4C0();
  [v27 setConfirmText_];

  result = sub_222DDA6F0();
  if (*(result + 16))
  {
    v65 = a9;
    (*(v18 + 16))(v20, result + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v17);

    sub_222DDA730();
    (*(v18 + 8))(v20, v17);
    sub_222DDA5C0();
    (*(v59 + 8))(v16, v60);
    v30 = sub_222DDB4C0();

    [v27 setDenyText_];

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
    v55 = v27;
    v31 = swift_allocObject();
    v59 = xmmword_222DDD2F0;
    *(v31 + 16) = xmmword_222DDD2F0;
    v54[1] = sub_222D9E3E4(0, &unk_27D047F70, 0x277D477C0);
    v32 = *(*v56 + 96);
    v33 = *(v61 + 88);
    v61 = *(v61 + 80);
    v34 = *(v33 + 56);
    v60 = v32;
    v35 = v62;
    v36 = v34(v62, 1);
    *(v31 + 32) = sub_222DD99A0(v36, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D048870, &unk_222DDE230);
    v38 = sub_222DDB620();

    v39 = v55;
    [v55 setConfirmCommands_];

    v40 = swift_allocObject();
    *(v40 + 16) = v59;
    v41 = v35;
    v42 = v61;
    v43 = (v34)(v41, 0, v61, v33);
    *(v40 + 32) = sub_222DD99A0(v43, v44);
    v45 = sub_222DDB620();

    [v39 setDenyCommands_];

    sub_222DDA910();
    sub_222DDA910();
    __swift_project_boxed_opaque_existential_1(v72, v72[3]);
    sub_222DDA4C0();
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_222DDE150;
    v47 = v65;
    *(v46 + 32) = v65;
    *(v46 + 40) = v39;
    v48 = *(v33 + 64);
    v49 = v47;
    v50 = v39;
    v51 = v63;
    v48(MEMORY[0x277D84F90], v42, v33);
    v52 = sub_222DDA660();
    __swift_storeEnumTagSinglePayload(v51, 0, 1, v52);
    v53 = sub_222DDA920();
    memset(v70, 0, sizeof(v70));
    v71 = 0;
    v74[3] = v53;
    v74[4] = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v74);
    sub_222DDA5E0();

    sub_222DB6FC0(v70, &qword_27D047F80, &qword_222DE0010);
    sub_222DB6FC0(v51, &qword_27D047E70, &unk_222DDE010);
    __swift_destroy_boxed_opaque_existential_0(v73);
    __swift_destroy_boxed_opaque_existential_0(v72);
    v75 = 0;
    v58(v74);

    (*(v68 + 8))(v67, v69);
    return sub_222DB6FC0(v74, &unk_27D047F40, &unk_222DDE220);
  }

  __break(1u);
  return result;
}

uint64_t sub_222DBDFB8(void (*a1)(_BYTE *))
{
  sub_222DDA550();
  sub_222DDA540();
  v3[40] = 0;
  a1(v3);
  return sub_222DB6FC0(v3, &unk_27D047F40, &unk_222DDE220);
}

uint64_t sub_222DBE02C(void *a1, void (*a2)(void *))
{
  v5[0] = a1;
  v6 = 1;
  v3 = a1;
  a2(v5);
  return sub_222DB6FC0(v5, &unk_27D047F40, &unk_222DDE220);
}

uint64_t sub_222DBE0FC()
{
  sub_222DBE08C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222DBE1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = type metadata accessor for LocationConfirmationStrategy(0, *(a4 + 80), *(a4 + 88), a4);

  return a6(a1, a2, a3, v10, a5);
}

uint64_t sub_222DBE260(uint64_t a1)
{
  v3 = sub_222DDADB0();
  OUTLINED_FUNCTION_10_1(v3);
  OUTLINED_FUNCTION_4_9();
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = v1 + v5;
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v1 + v6);

  return sub_222DBCF64(a1, v7, v8, v1 + v4, v10, v11, v12);
}

uint64_t sub_222DBE300(void *a1, uint64_t a2, char a3)
{
  v7 = sub_222DDADB0();
  OUTLINED_FUNCTION_10_1(v7);
  v9 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = sub_222DDA700();
  OUTLINED_FUNCTION_10_1(v12);
  OUTLINED_FUNCTION_4_9();
  return sub_222DBD32C(a1, a2, a3 & 1, *(v3 + 32), *(v3 + 40), v3 + v9, *(v3 + v11), *(v3 + v11 + 8), v3 + v14, *(v3 + v13));
}

uint64_t sub_222DBE418(uint64_t a1)
{
  v3 = sub_222DDADB0();
  OUTLINED_FUNCTION_10_1(v3);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_222DDA700();
  OUTLINED_FUNCTION_10_1(v8);
  OUTLINED_FUNCTION_4_9();
  return sub_222DBD798(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v5, *(v1 + v7), *(v1 + v7 + 8), v1 + v10, *(v1 + v9));
}

id sub_222DBE51C(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

unint64_t sub_222DBE544()
{
  result = qword_27D047F98;
  if (!qword_27D047F98)
  {
    sub_222DDA890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047F98);
  }

  return result;
}

_BYTE *sub_222DBE59C(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_8_3()
{

  return sub_222DDA700();
}

void *sub_222DBE6A0(uint64_t a1)
{
  result = sub_222DC19D0(a1);
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_222DC1A10(&v5, result, v3, 0, a1);
  }
}

void sub_222DBE730(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a3 >> 1 == a2)
  {
    v5 = sub_222DDADB0();
    v6 = a4;
    v7 = 1;
  }

  else
  {
    if ((a3 >> 1) <= a2)
    {
      __break(1u);
      return;
    }

    v10 = sub_222DDADB0();
    (*(*(v10 - 8) + 16))(a4, a1 + *(*(v10 - 8) + 72) * a2, v10);
    v6 = a4;
    v7 = 0;
    v5 = v10;
  }

  __swift_storeEnumTagSinglePayload(v6, v7, 1, v5);
}

uint64_t sub_222DBE82C(char a1)
{
  sub_222DDBB60();
  MEMORY[0x223DCE8B0](a1 & 1);
  return sub_222DDBB90();
}

uint64_t sub_222DBE890(uint64_t a1)
{
  sub_222DDBB60();
  sub_222DBE804(v3, *v1);
  return sub_222DDBB90();
}

uint64_t sub_222DBE8D0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_222DBE910(a1);
  return v2;
}

uint64_t sub_222DBE910(uint64_t a1)
{
  OUTLINED_FUNCTION_8_4();
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(v2 + 96));
  return v1;
}

void sub_222DBE980()
{
  OUTLINED_FUNCTION_32_2();
  v63 = v2;
  v64 = v1;
  v61 = v3;
  v59 = v0;
  v4 = *v0;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D0480F8, &unk_222DDE440);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = &v55 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0480B8, &unk_222DDE400);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v58 = &v55 - v9;
  v60 = sub_222DDADB0();
  OUTLINED_FUNCTION_2();
  v57 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v56 = v13 - v12;
  v65 = sub_222DDA940();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  v20 = sub_222DDA900();
  OUTLINED_FUNCTION_2();
  v66 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4();
  v25 = v24 - v23;
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v26 = sub_222DDB3E0();
  __swift_project_value_buffer(v26, qword_27D04C910);
  v27 = sub_222DDB3C0();
  v28 = sub_222DDB6B0();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v55 = v25;
    v30 = v19;
    v31 = v4;
    v32 = v15;
    v33 = v29;
    *v29 = 0;
    _os_log_impl(&dword_222D8A000, v27, v28, "[LocationDisambiguationStrategy::parseDisambiguationResult] called", v29, 2u);
    v34 = v33;
    v15 = v32;
    v4 = v31;
    v19 = v30;
    v25 = v55;
    MEMORY[0x223DCEF40](v34, -1, -1);
  }

  sub_222DDA870();
  v35 = v66;
  if ((*(v66 + 88))(v25, v20) == *MEMORY[0x277D5C158])
  {
    (*(v35 + 96))(v25, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250);

    (*(v15 + 32))(v19, v25, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0480F0, &qword_222DDE438);
    sub_222DDA7D0();
    v37 = *(v4 + 80);
    v36 = *(v4 + 88);
    v38 = v58;
    (*(v36 + 40))();

    v39 = v60;
    if (__swift_getEnumTagSinglePayload(v38, 1, v60) == 1)
    {
      sub_222DB6FC0(v38, &qword_27D0480B8, &unk_222DDE400);
      type metadata accessor for LocationDisambiguationStrategy.Error(0, v37, v36, v40);
      OUTLINED_FUNCTION_0_10();
      WitnessTable = swift_getWitnessTable();
      v42 = OUTLINED_FUNCTION_12_5(WitnessTable);
      *v43 = 1;
      OUTLINED_FUNCTION_11_5(v42);
      v64(v7);
      sub_222DB6FC0(v7, qword_27D0480F8, &unk_222DDE440);
    }

    else
    {
      v54 = v56;
      v53 = v57;
      (*(v57 + 32))(v56, v38, v39);
      sub_222DDA7A0();
      swift_storeEnumTagMultiPayload();
      v64(v7);
      sub_222DB6FC0(v7, qword_27D0480F8, &unk_222DDE440);
      (*(v53 + 8))(v54, v39);
    }

    (*(v15 + 8))(v19, v65);
  }

  else
  {
    v44 = sub_222DDB3C0();
    v45 = sub_222DDB6B0();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = v4;
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_222D8A000, v44, v45, "received unsupported parse", v47, 2u);
      v48 = v47;
      v4 = v46;
      MEMORY[0x223DCEF40](v48, -1, -1);
    }

    type metadata accessor for LocationDisambiguationStrategy.Error(0, *(v4 + 80), *(v4 + 88), v49);
    OUTLINED_FUNCTION_0_10();
    v50 = swift_getWitnessTable();
    v51 = OUTLINED_FUNCTION_12_5(v50);
    *v52 = 0;
    OUTLINED_FUNCTION_11_5(v51);
    v64(v7);
    sub_222DB6FC0(v7, qword_27D0480F8, &unk_222DDE440);
    (*(v66 + 8))(v25, v20);
  }

  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DBEFA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0480F0, &qword_222DDE438);
  v6 = sub_222DDA7D0();
  OUTLINED_FUNCTION_10_6();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v6;
  v7[4] = a2;
  v7[5] = a3;

  sub_222DC0C80(v6);
}

uint64_t sub_222DBF070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_222DC005C();
  v11 = v10;
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a1;

  sub_222DC0554(v11, sub_222DC19C0, v12);
}

uint64_t sub_222DBF14C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7)
{
  v44 = a7;
  v46 = a6;
  v45 = a5;
  v40[1] = a4;
  v42 = a2;
  v43 = a3;
  v8 = *a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E70, &unk_222DDE010);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v40 - v10;
  v12 = sub_222DDA770();
  v41 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_222DDA700();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  MEMORY[0x28223BE20](v19);
  v21 = (v40 - v20);
  sub_222DBA6B4(a1, v40 - v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LocationDisambiguationStrategy.Error(0, *(v8 + 80), *(v8 + 88), v22);
    swift_getWitnessTable();
    v23 = swift_allocError();
    *v24 = 0;
    v51[0] = v23;
    v54 = 1;
    v45(v51);
    sub_222DB6FC0(v51, &unk_27D047F40, &unk_222DDE220);
    v25 = &unk_27D047F60;
    v26 = &qword_222DDE000;
    v27 = v21;
  }

  else
  {
    v40[0] = v16;
    (*(v16 + 32))(v18, v21, v15);
    sub_222DDA910();
    __swift_project_boxed_opaque_existential_1(v51, v52);
    v28 = sub_222DDA510();
    __swift_destroy_boxed_opaque_existential_0(v51);
    if (v28)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_222DDD2F0;
      v42 = sub_222DDA390();
      sub_222DDA910();
      __swift_project_boxed_opaque_existential_1(v51, v52);
      sub_222DDA760();
      v30 = sub_222DDA4A0();
      (*(v41 + 8))(v14, v12);
      __swift_destroy_boxed_opaque_existential_0(v51);
      v31 = MEMORY[0x223DCD140](v42, (v30 & 1) == 0);

      *(v29 + 32) = v31;
      v32 = v40[0];
    }

    else
    {
      sub_222DDA910();
      __swift_project_boxed_opaque_existential_1(v51, v52);
      v33 = sub_222DDA4F0();
      __swift_destroy_boxed_opaque_existential_0(v51);
      if (v33)
      {
        sub_222DDA390();
        sub_222DDA910();
        __swift_project_boxed_opaque_existential_1(v51, v52);
        sub_222DDA4C0();
        v34 = sub_222DDA420();

        __swift_destroy_boxed_opaque_existential_0(v51);
      }

      else
      {
        sub_222DBF8D0();
        v34 = v35;
      }

      v32 = v40[0];
      sub_222DDA340();
      v36 = v34;
      sub_222DDA910();
      sub_222DDA300();
      __swift_destroy_boxed_opaque_existential_0(v51);
      sub_222DDA320();

      sub_222DDA310();

      sub_222DDA330();
    }

    sub_222DDA910();
    sub_222DDA910();
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    sub_222DDA4C0();
    sub_222DC04E0(v44);
    v37 = sub_222DDA660();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v37);
    v38 = sub_222DDA920();
    memset(v47, 0, sizeof(v47));
    v48 = 0;
    v52 = v38;
    v53 = MEMORY[0x277D5C1D8];
    __swift_allocate_boxed_opaque_existential_1(v51);
    sub_222DDA5F0();

    sub_222DB6FC0(v47, &qword_27D047F80, &qword_222DE0010);
    sub_222DB6FC0(v11, &qword_27D047E70, &unk_222DDE010);
    __swift_destroy_boxed_opaque_existential_0(v50);
    __swift_destroy_boxed_opaque_existential_0(v49);
    v54 = 0;
    v45(v51);
    (*(v32 + 8))(v18, v15);
    v25 = &unk_27D047F40;
    v26 = &unk_222DDE220;
    v27 = v51;
  }

  return sub_222DB6FC0(v27, v25, v26);
}

uint64_t sub_222DBF814(void (*a1)(void *), uint64_t a2)
{
  OUTLINED_FUNCTION_8_4();
  type metadata accessor for LocationDisambiguationStrategy.Error(0, *(v3 + 80), *(v4 + 88), v5);
  OUTLINED_FUNCTION_0_10();
  swift_getWitnessTable();
  v6 = swift_allocError();
  *v7 = 0;
  v9[0] = v6;
  v10 = 1;
  a1(v9);
  return sub_222DB6FC0(v9, &unk_27D047F40, &unk_222DDE220);
}

void sub_222DBF8D0()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  sub_222DDA190();
  OUTLINED_FUNCTION_2();
  v44 = v5;
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v43 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0480D0, &unk_222DDE428);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = (&v41 - v10);
  v12 = 0;
  v13 = *(v3 + 16);
  v14 = MEMORY[0x277D84F90];
  while (v13 != v12)
  {
    if (v12 >= v13)
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_222DDADB0();
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_7_7();
    v18 = *(v8 + 48);
    *v11 = v12;
    v19(v11 + v18, v16 + v17 * v12);
    v20 = sub_222DBFD14(v12, v11 + v18, v1);
    v22 = v21;
    sub_222DB6FC0(v11, &qword_27D0480D0, &unk_222DDE428);
    ++v12;
    if (v20)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_222DD7668();
        v14 = v26;
      }

      v23 = *(v14 + 16);
      v24 = v23 + 1;
      if (v23 >= *(v14 + 24) >> 1)
      {
        v42 = v23 + 1;
        sub_222DD7668();
        v24 = v42;
        v14 = v27;
      }

      *(v14 + 16) = v24;
      v25 = v14 + 16 * v23;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      v12 = v15;
    }
  }

  v28 = [objc_allocWithZone(MEMORY[0x277D4C230]) init];
  v29 = v43;
  sub_222DDA180();
  sub_222DDA170();
  (*(v44 + 8))(v29, v45);
  v30 = sub_222DDB4C0();

  [v28 setCardId_];

  v31 = *(v14 + 16);
  v32 = MEMORY[0x277D84F90];
  if (v31)
  {
    v46 = MEMORY[0x277D84F90];
    sub_222DDB8B0();
    v33 = (v14 + 32);
    v34 = v31;
    do
    {
      v35 = *v33;
      v33 += 2;
      v36 = v35;
      sub_222DDB890();
      sub_222DDB8C0();
      sub_222DDB8D0();
      sub_222DDB8A0();
      --v34;
    }

    while (v34);
  }

  sub_222D9E3E4(0, &qword_27D0480D8, 0x277D4C238);
  v37 = sub_222DDB620();

  [v28 setCardSections_];

  v38 = [objc_allocWithZone(MEMORY[0x277D47B08]) init];
  if (!v31)
  {
LABEL_18:

    sub_222D9E3E4(0, &qword_27D0480E0, 0x277D47200);
    sub_222DDB690();

    OUTLINED_FUNCTION_36_1();
    return;
  }

  v46 = v32;
  sub_222DDB8B0();
  v39 = 0;
  v40 = 40;
  while (v39 < *(v14 + 16))
  {
    ++v39;
    *(v14 + v40);
    sub_222DDB890();
    sub_222DDB8C0();
    sub_222DDB8D0();
    sub_222DDB8A0();
    v40 += 16;
    if (v31 == v39)
    {
      goto LABEL_18;
    }
  }

LABEL_21:
  __break(1u);
}

void *sub_222DBFD14(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = sub_222DDA190();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_222DDAD90();
  v11 = v10;
  if (!v10)
  {
    return 0;
  }

  v12 = [v10 _geoMapItem];

  if (!v12)
  {
    return 0;
  }

  v13 = [v12 _placeDataAsData];
  if (!v13)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v31 = sub_222DDA130();
  v32 = v12;
  v15 = v14;

  v16 = [objc_allocWithZone(MEMORY[0x277D4C450]) init];
  v30 = a1;
  v17 = v16;
  v18 = sub_222DDA110();
  [v17 setMapsData_];

  v19 = (*(*(v5 + 88) + 48))(a2, v30, *(v5 + 80));
  v21 = v20;
  sub_222D9E3E4(0, &unk_27D047F70, 0x277D477C0);
  v22 = sub_222DD99A0(v19, v21);
  sub_222DDA180();
  sub_222DDA170();
  (*(v7 + 8))(v9, v6);
  v23 = sub_222DDB4C0();

  [v22 setAceId_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_222DDD2F0;
  v25 = v22;
  v26 = sub_222DDA570();

  *(v24 + 32) = v26;
  sub_222D9E3E4(0, &qword_27D0480E8, 0x277D4C1A0);
  v27 = sub_222DDB620();

  [v17 setCommands_];
  sub_222D9322C(v31, v15);

  swift_unknownObjectRelease();
  return v17;
}

void sub_222DC005C()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0480C8, &unk_222DDE418);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = (&v23 - v8);
  v10 = 0;
  v23 = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];
  v11 = *(v5 + 16);
  while (v11 != v10)
  {
    if (v10 >= v11)
    {
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
      goto LABEL_11;
    }

    sub_222DDA700();
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_7_7();
    v15 = *(v6 + 48);
    *v9 = v10;
    v16(v9 + v15, v13 + v14 * v10);
    v17 = sub_222DC02E4(v10, v9 + v15, v1, v3);
    v18 = sub_222DB6FC0(v9, &qword_27D0480C8, &unk_222DDE418);
    ++v10;
    if (v17)
    {
      MEMORY[0x223DCE350](v18);
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222DDB640();
      }

      sub_222DDB660();
      v23 = v24;
      v10 = v12;
    }
  }

  if (sub_222DA8780() == v11)
  {
    goto LABEL_14;
  }

  if (qword_27D0475A8 != -1)
  {
    goto LABEL_17;
  }

LABEL_11:
  v19 = sub_222DDB3E0();
  __swift_project_value_buffer(v19, qword_27D04C910);
  v20 = sub_222DDB3C0();
  v21 = sub_222DDB6C0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_222D8A000, v20, v21, "TemplatingResult::print::first returned nil, so the list of SiriKitDisambiguationItem is incomplete", v22, 2u);
    MEMORY[0x223DCEF40](v22, -1, -1);
  }

LABEL_14:
  sub_222DDA3B0();
  swift_allocObject();
  sub_222DDA3A0();
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DC02E4(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a3;
  if (*(sub_222DDA6E0() + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_222DDD2F0;
    sub_222DDA3F0();
    sub_222DDA3C0();

    sub_222DDA3D0();

    v8 = sub_222DDA3E0();

    *(v7 + 32) = v8;
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a4 + 16) > a1)
    {
      v10 = *(sub_222DDADB0() - 8);
      (*(*(v6 + 88) + 48))(a4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a1, a1, *(v6 + 80));
      sub_222DDA370();
      swift_allocObject();
      return sub_222DDA360();
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_222DC0554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_222DDA910();
  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_222DDA4B0();
  v3 = sub_222DDA380();
  __swift_destroy_boxed_opaque_existential_0(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222DDC9C0;
  *(inited + 32) = 0x656D614E746F6C73;
  *(inited + 40) = 0xE800000000000000;
  v5 = MEMORY[0x277D837D0];
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x8000000222DE11E0;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x8000000222DE1200;
  *(inited + 96) = 0;
  *(inited + 104) = 0xE000000000000000;
  *(inited + 120) = v5;
  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x8000000222DE1220;
  sub_222DDA390();
  v6 = sub_222DA8780();

  v7 = MEMORY[0x277D83B88];
  *(inited + 144) = v6;
  *(inited + 168) = v7;
  *(inited + 176) = 0xD000000000000012;
  *(inited + 184) = 0x8000000222DE1240;
  *(inited + 216) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0480C0, &qword_222DDE410);
  *(inited + 192) = v3;
  sub_222DDB460();
  sub_222DC073C();
}

void sub_222DC073C()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_222DDB3B0();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  sub_222DDB1B0();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  OUTLINED_FUNCTION_10_6();
  v17 = swift_allocObject();
  v17[2] = v7;
  v17[3] = v5;
  v17[4] = v3;
  v17[5] = v1;
  sub_222DDB180();

  v18 = sub_222DDB170();
  sub_222DDB3A0();
  sub_222DDB190();

  (*(v10 + 8))(v14, v8);
  sub_222DB6FC0(v19, &qword_27D047BB8, &qword_222DDD430);
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DC0928(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void *))
{
  v25 = a2;
  v7 = sub_222DDA700();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (&v25 - v15);
  sub_222DBA6B4(a1, &v25 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_27D0475A8 != -1)
    {
      swift_once();
    }

    v18 = sub_222DDB3E0();
    __swift_project_value_buffer(v18, qword_27D04C910);

    v19 = sub_222DDB3C0();
    v20 = sub_222DDB6C0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_222D8F7F0(v25, a3, &v26);
      _os_log_impl(&dword_222D8A000, v19, v20, "Failed to execute cat with id: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x223DCEF40](v22, -1, -1);
      MEMORY[0x223DCEF40](v21, -1, -1);
    }

    *v14 = v17;
    swift_storeEnumTagMultiPayload();
    v23 = v17;
    a4(v14);

    return sub_222DB6FC0(v14, &unk_27D047F60, &qword_222DDE000);
  }

  else
  {
    (*(v8 + 32))(v10, v16, v7);
    (*(v8 + 16))(v14, v10, v7);
    swift_storeEnumTagMultiPayload();
    a4(v14);
    sub_222DB6FC0(v14, &unk_27D047F60, &qword_222DDE000);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_222DC0C80(uint64_t a1)
{
  sub_222DC18B4(0, *(a1 + 16), a1);
  sub_222DC0CE8();

  return swift_unknownObjectRelease();
}

uint64_t sub_222DC0FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = a5;
  v37 = a6;
  v34 = a4;
  v35 = a9;
  v11 = sub_222DDA700();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  MEMORY[0x28223BE20](v15);
  v17 = (&v32 - v16);
  sub_222DBA6B4(a1, &v32 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    if (qword_27D0475A8 != -1)
    {
      swift_once();
    }

    v19 = sub_222DDB3E0();
    __swift_project_value_buffer(v19, qword_27D04C910);
    v20 = v18;
    v21 = sub_222DDB3C0();
    v22 = sub_222DDB6C0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v38 = v18;
      v39[0] = v33;
      *v23 = 136315138;
      v24 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047C80, &unk_222DDDFF0);
      v25 = sub_222DDB540();
      v27 = sub_222D8F7F0(v25, v26, v39);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_222D8A000, v21, v22, "LocationResolutionFlow templatingError: %s", v23, 0xCu);
      v28 = v33;
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x223DCEF40](v28, -1, -1);
      MEMORY[0x223DCEF40](v23, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    (*(v12 + 32))(v14, v17, v11);
    swift_beginAccess();
    sub_222DC1828();
    v29 = *(*(a2 + 16) + 16);
    sub_222DC1874(v29);
    v30 = *(a2 + 16);
    *(v30 + 16) = v29 + 1;
    (*(v12 + 16))(v30 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v29, v14, v11);
    *(a2 + 16) = v30;
    swift_endAccess();
    (*(v12 + 8))(v14, v11);
  }

  swift_beginAccess();

  sub_222DC0CE8();
}

void sub_222DC1398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32_2();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v24);
  v26 = (&a9 - v25);
  sub_222DC1528(0);
  v27 = sub_222DDAD90();
  if (v27)
  {
    v28 = v27;
    sub_222DCBFEC(v27);
    sub_222DC073C();

    OUTLINED_FUNCTION_36_1();
  }

  else
  {

    sub_222DC17D4();
    v30 = swift_allocError();
    *v31 = 0;
    *v26 = v30;
    swift_storeEnumTagMultiPayload();
    v23(v26);
    sub_222DB6FC0(v26, &unk_27D047F60, &qword_222DDE000);
    OUTLINED_FUNCTION_36_1();
  }
}

unint64_t sub_222DC1528(char a1)
{
  v1 = sub_222DC1584(a1);
  MEMORY[0x223DCE2E0](v1);

  return 0xD000000000000013;
}

unint64_t sub_222DC1584(char a1)
{
  result = 0x54746361746E6F43;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001DLL;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_222DC1628(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_4();
  (*(*(*(v4 + 80) - 8) + 8))(v2 + *(v3 + 96));
  return v2;
}

uint64_t sub_222DC1690(uint64_t a1, uint64_t a2)
{
  sub_222DC1628(a1, a2);
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 52);

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_222DC1750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = type metadata accessor for LocationDisambiguationStrategy(0, *(a4 + 80), *(a4 + 88), a4);

  return a6(a1, a2, a3, v10, a5);
}

unint64_t sub_222DC17D4()
{
  result = qword_27D0480B0;
  if (!qword_27D0480B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0480B0);
  }

  return result;
}

void *sub_222DC1828()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_222DD772C(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

void *sub_222DC1874(void *result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    result = sub_222DD772C((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

unint64_t sub_222DC18B4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_222DDADB0();
  }

LABEL_10:
  __break(1u);
  return result;
}

void *sub_222DC1A10(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = (*(a5 + 56) + 16 * a2);
    v7 = v6[1];
    *result = *v6;
    result[1] = v7;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_222DC1AA8(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_222DC1B30(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_222DC1C10()
{
  result = qword_27D048180;
  if (!qword_27D048180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048180);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_5(uint64_t a1)
{
  *v1 = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_12_5(uint64_t a1)
{

  return swift_allocError();
}

uint64_t LocationResolutionErrorFlowProvider.makeFlow(forError:)(uint64_t a1)
{
  v2 = sub_222DDA950();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277D55FC8])
  {
    v7 = OUTLINED_FUNCTION_2_8();
    v8(v7);
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v9 = sub_222DDB3E0();
    v10 = OUTLINED_FUNCTION_12_6(v9, qword_27D04C910);
    v11 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_26_3(v11))
    {
      v12 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_50_1(v12);
      OUTLINED_FUNCTION_32_3(&dword_222D8A000, v13, v14, "contact not found");
      OUTLINED_FUNCTION_6_6();
    }

    goto LABEL_6;
  }

  if (v6 == *MEMORY[0x277D55FD8])
  {
    v18 = OUTLINED_FUNCTION_2_8();
    v19(v18);
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v20 = sub_222DDB3E0();
    v21 = OUTLINED_FUNCTION_12_6(v20, qword_27D04C910);
    v22 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_26_3(v22))
    {
      v23 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_50_1(v23);
      OUTLINED_FUNCTION_32_3(&dword_222D8A000, v24, v25, "address not present");
      OUTLINED_FUNCTION_6_6();
    }

LABEL_13:

    OUTLINED_FUNCTION_10_7();
    v26 = swift_allocObject();
    v27 = OUTLINED_FUNCTION_4_10(v26);
    sub_222DDA7C0();
    v28 = sub_222DDA240();
    OUTLINED_FUNCTION_8_5(v28);
    *&v60 = sub_222DDA230();
    v17 = sub_222DDA2B0();

    return v17;
  }

  if (v6 == *MEMORY[0x277D55FE0])
  {
    v30 = OUTLINED_FUNCTION_2_8();
    v31(v30);
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v32 = sub_222DDB3E0();
    v10 = OUTLINED_FUNCTION_12_6(v32, qword_27D04C910);
    v33 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_26_3(v33))
    {
      v34 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_50_1(v34);
      OUTLINED_FUNCTION_32_3(&dword_222D8A000, v35, v36, "location geocode error for multiple contacts");
      OUTLINED_FUNCTION_6_6();
    }

    goto LABEL_6;
  }

  if (v6 == *MEMORY[0x277D55FB8])
  {
    v37 = OUTLINED_FUNCTION_2_8();
    v38(v37);
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v39 = sub_222DDB3E0();
    v21 = OUTLINED_FUNCTION_12_6(v39, qword_27D04C910);
    v40 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_26_3(v40))
    {
      v41 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_50_1(v41);
      OUTLINED_FUNCTION_32_3(&dword_222D8A000, v42, v43, "location geocode error");
      OUTLINED_FUNCTION_6_6();
    }

    goto LABEL_13;
  }

  if (v6 != *MEMORY[0x277D55FC0])
  {
    if (v6 != *MEMORY[0x277D55FD0])
    {
      OUTLINED_FUNCTION_10_7();
      v56 = swift_allocObject();
      v57 = v61;
      *(v56 + 16) = v60;
      *(v56 + 32) = v57;
      *(v56 + 48) = v62;
      sub_222DDA7C0();
      v58 = sub_222DDA240();
      OUTLINED_FUNCTION_8_5(v58);
      *&v60 = sub_222DDA230();
      v17 = sub_222DDA2B0();

      (*(v3 + 8))(v5, v2);
      return v17;
    }

    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v51 = sub_222DDB3E0();
    v52 = OUTLINED_FUNCTION_12_6(v51, qword_27D04C910);
    v53 = sub_222DDB6B0();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_43_0();
      *v54 = 0;
      _os_log_impl(&dword_222D8A000, v52, v53, "me card not present", v54, 2u);
      MEMORY[0x223DCEF40](v54, -1, -1);
    }

    sub_222DDA7C0();
    v55 = sub_222DDA240();
    OUTLINED_FUNCTION_8_5(v55);
    *&v60 = sub_222DDA230();
    v17 = sub_222DDA2B0();
    goto LABEL_7;
  }

  v44 = OUTLINED_FUNCTION_2_8();
  v45(v44);
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v46 = sub_222DDB3E0();
  v10 = OUTLINED_FUNCTION_12_6(v46, qword_27D04C910);
  v47 = sub_222DDB6B0();
  if (OUTLINED_FUNCTION_26_3(v47))
  {
    v48 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_50_1(v48);
    OUTLINED_FUNCTION_32_3(&dword_222D8A000, v49, v50, "location geocode error for multiple contacts");
    OUTLINED_FUNCTION_6_6();
  }

LABEL_6:

  OUTLINED_FUNCTION_10_7();
  OUTLINED_FUNCTION_11_6();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_1_5(v15);
  v16 = sub_222DDA240();
  OUTLINED_FUNCTION_8_5(v16);
  *&v60 = sub_222DDA230();
  v17 = sub_222DDA2B0();
LABEL_7:

  return v17;
}

uint64_t sub_222DC249C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for GenericViews();
  swift_initStackObject();
  sub_222DDA910();
  sub_222DB8DE0(v5, a1, a2);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_222DC2508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for GenericViews();
  swift_initStackObject();
  return a8(a3, a4, a5, a6, a7, a1, a2);
}

uint64_t sub_222DC25A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for GenericViews();
  swift_initStackObject();
  return a6(a3, a4, a5, a1, a2);
}

uint64_t sub_222DC2620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_222DC26BC(a3, v8);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = v8[1];
  *(v5 + 32) = v8[0];
  *(v5 + 48) = v6;
  *(v5 + 64) = v9;

  sub_222DDA590();
}

uint64_t sub_222DC26FC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_222DB7FF8(sub_222DC2A58, v10, a3, a4, a5, a6, a7, a8, v10[0], v10[1], a4, v10[3], v11[0], v11[1], v11[2], v11[3], v11[4], v11[5], v11[6], v11[7]);
  a2(v11);
  return sub_222D8F1B0(v11, &unk_27D047F40, &unk_222DDE220);
}

uint64_t sub_222DC2780@<X0>(void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E70, &unk_222DDE010);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v12 - v6;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_222DDA4C0();
  v8 = sub_222DDA660();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = sub_222DDA920();
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  v10 = MEMORY[0x277D5C1D8];
  a3[3] = v9;
  a3[4] = v10;
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_222DDA600();
  sub_222D8F1B0(v12, &qword_27D047F80, &qword_222DE0010);
  return sub_222D8F1B0(v7, &qword_27D047E70, &unk_222DDE010);
}

uint64_t objectdestroy_8Tm()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 81, 7);
}

uint64_t objectdestroy_2Tm(void (*a1)(void))
{
  a1(*(v1 + 24));
  __swift_destroy_boxed_opaque_existential_0((v1 + 32));
  OUTLINED_FUNCTION_11_6();

  return MEMORY[0x2821FE8E8](v2, v3, v4);
}

void *OUTLINED_FUNCTION_1_5(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v5 = *(v3 - 88);
  *(a1 + 32) = *(v3 - 104);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(v3 - 72);

  return sub_222DDA7C0();
}

id OUTLINED_FUNCTION_4_10(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  v7 = *(v5 - 88);
  *(a1 + 40) = *(v5 - 104);
  *(a1 + 56) = v7;
  *(a1 + 72) = *(v5 - 72);
  *(a1 + 80) = v2;

  return v1;
}

void OUTLINED_FUNCTION_6_6()
{

  JUMPOUT(0x223DCEF40);
}

uint64_t OUTLINED_FUNCTION_8_5(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_10_7()
{

  return sub_222DC26BC(v0, v1 - 104);
}

uint64_t OUTLINED_FUNCTION_12_6(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_222DDB3C0();
}

uint64_t sub_222DC2B5C@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_34_4();
  v4 = *(v3 + 104);
  OUTLINED_FUNCTION_5_6();
  swift_beginAccess();
  OUTLINED_FUNCTION_34_4();
  OUTLINED_FUNCTION_34_4();
  type metadata accessor for LocationResolverFlow.State(0, v6, *(v5 + 88), v7);
  OUTLINED_FUNCTION_4_6();
  return (*(v8 + 16))(a1, v1 + v4);
}

uint64_t sub_222DC2C04(uint64_t a1)
{
  OUTLINED_FUNCTION_34_4();
  v4 = *(v3 + 104);
  swift_beginAccess();
  OUTLINED_FUNCTION_34_4();
  OUTLINED_FUNCTION_34_4();
  type metadata accessor for LocationResolverFlow.State(0, v6, *(v5 + 88), v7);
  OUTLINED_FUNCTION_4_6();
  (*(v8 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t sub_222DC2CB8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_22_3();
  v4 = *(v3 + 136);
  OUTLINED_FUNCTION_5_6();
  swift_beginAccess();
  return sub_222DB706C(v1 + v4, a1);
}

uint64_t sub_222DC2D14(uint64_t a1)
{
  OUTLINED_FUNCTION_22_3();
  v4 = *(v3 + 136);
  swift_beginAccess();
  sub_222DB7128(a1, v1 + v4);
  return swift_endAccess();
}

uint64_t sub_222DC2DA4()
{
  OUTLINED_FUNCTION_22_3();
  *(v0 + *(v1 + 144)) = v2;
}

uint64_t LocationResolverFlow.__allocating_init(nextFlow:resolutionStrategy:locale:timeZone:)()
{
  OUTLINED_FUNCTION_48_3();
  swift_allocObject();
  OUTLINED_FUNCTION_46_3();
  LocationResolverFlow.init(nextFlow:resolutionStrategy:locale:timeZone:)();
  return v0;
}

char *LocationResolverFlow.init(nextFlow:resolutionStrategy:locale:timeZone:)()
{
  OUTLINED_FUNCTION_48_3();
  v5 = *v1;
  v6 = *(*v1 + 136);
  v7 = sub_222DDA940();
  __swift_storeEnumTagSinglePayload(&v1[v6], 1, 1, v7);
  OUTLINED_FUNCTION_22_3();
  *&v1[*(v8 + 144)] = 0;
  *(v1 + 2) = v4;
  OUTLINED_FUNCTION_22_3();
  v10 = *(v9 + 104);
  v11 = sub_222DDADB0();
  __swift_storeEnumTagSinglePayload(&v1[v10], 1, 3, v11);
  OUTLINED_FUNCTION_22_3();
  (*(*(*(v5 + 80) - 8) + 32))(&v1[*(v12 + 128)], v3);
  OUTLINED_FUNCTION_22_3();
  v14 = *(v13 + 112);
  sub_222DDA1D0();
  OUTLINED_FUNCTION_4_6();
  (*(v15 + 32))(&v1[v14], v2);
  OUTLINED_FUNCTION_22_3();
  v17 = *(v16 + 120);
  sub_222DDA220();
  OUTLINED_FUNCTION_4_6();
  (*(v18 + 32))(&v1[v17], v0);
  return v1;
}

void sub_222DC2FE4()
{
  OUTLINED_FUNCTION_32_2();
  v2 = v1;
  v3 = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_32_4();
  v38 = v6;
  OUTLINED_FUNCTION_10_4();
  v7 = sub_222DDA940();
  OUTLINED_FUNCTION_2();
  v39 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_6();
  v37 = v10;
  OUTLINED_FUNCTION_10_4();
  v40 = sub_222DDA900();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  v16 = v15 - v14;
  type metadata accessor for LocationResolverFlow.State(0, *(v3 + 80), *(v3 + 88), v17);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = v35 - v19;
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v21 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v21, qword_27D04C910);

  v22 = sub_222DDB3C0();
  v23 = sub_222DDB6B0();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_29_4();
    v36 = v7;
    v25 = v24;
    v26 = OUTLINED_FUNCTION_25_2();
    v35[1] = v2;
    v27 = v26;
    v41 = v26;
    *v25 = 136315138;
    sub_222DC2B5C(v20);
    v28 = sub_222DDB540();
    v30 = sub_222D8F7F0(v28, v29, &v41);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_222D8A000, v22, v23, "state of LocationResolverFlow: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    OUTLINED_FUNCTION_48_2();
    v7 = v36;
    OUTLINED_FUNCTION_48_2();
  }

  sub_222DDA870();
  v31 = v40;
  if ((*(v12 + 88))(v16, v40) == *MEMORY[0x277D5C158])
  {
    (*(v12 + 96))(v16, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250);
    v32 = v39;
    v33 = v37;
    (*(v39 + 32))(v37, v16, v7);
    v34 = v38;
    (*(v32 + 16))(v38, v33, v7);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v7);
    sub_222DC2D14(v34);

    sub_222DC2DA4();

    (*(v32 + 8))(v33, v7);
  }

  else
  {
    (*(v12 + 8))(v16, v31);
  }

  OUTLINED_FUNCTION_36_1();
}

void sub_222DC33C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32_2();
  v23 = v20;
  v176 = v24;
  v177 = v25;
  sub_222DDA650();
  OUTLINED_FUNCTION_2();
  v173 = v27;
  v174 = v26;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_6();
  v172 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D048188, &unk_222DDE630);
  OUTLINED_FUNCTION_2();
  v167 = v29;
  v168 = v30;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_32_4();
  v166 = v32;
  OUTLINED_FUNCTION_10_4();
  v161 = sub_222DDAB90();
  OUTLINED_FUNCTION_2();
  v160 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_8_6(v35);
  v159 = sub_222DDAC20();
  OUTLINED_FUNCTION_2();
  v158 = v36;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_6(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0480B8, &unk_222DDE400);
  OUTLINED_FUNCTION_8(v39);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_25_3();
  sub_222DDADB0();
  OUTLINED_FUNCTION_2();
  v169 = v41;
  v170 = v42;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_44_3();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_8_6(v45);
  sub_222DDAB10();
  OUTLINED_FUNCTION_2();
  v163 = v47;
  v164 = v46;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_2_6();
  v165 = v48;
  OUTLINED_FUNCTION_50_2();
  v53 = type metadata accessor for LocationResolverFlow.State(v49, v50, v51, v52);
  OUTLINED_FUNCTION_8(v53);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v54);
  v56 = &v153 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  v58 = OUTLINED_FUNCTION_8(v57);
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_5_3();
  v61 = v59 - v60;
  MEMORY[0x28223BE20](v62);
  v64 = &v153 - v63;
  v65 = sub_222DDA940();
  OUTLINED_FUNCTION_2();
  v175 = v66;
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_2_6();
  v171 = v68;
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_50_2();
  v178[3] = type metadata accessor for LocationResolverFlow.FeatureFlags(v69, v70, v71, v72);
  v178[4] = swift_getWitnessTable();
  v73 = sub_222DDA930();
  __swift_destroy_boxed_opaque_existential_0(v178);
  if (v73)
  {
    sub_222DC2CB8(v64);
    OUTLINED_FUNCTION_27_5(v64, 1, v65);
    if (v74)
    {
      sub_222DB6FC0(v64, &qword_27D047CF0, &unk_222DDDE10);
      if (qword_27D0475A8 != -1)
      {
        OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
      }

      v75 = sub_222DDB3E0();
      OUTLINED_FUNCTION_63_0(v75, qword_27D04C910);
      v76 = sub_222DDB3C0();
      v77 = sub_222DDB6C0();
      if (OUTLINED_FUNCTION_34_2(v77))
      {
        v78 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_19_1(v78);
        OUTLINED_FUNCTION_5_5(&dword_222D8A000, v79, v80, "nlIntent is nil in LocationResolverFlow::execute, returning early");
        OUTLINED_FUNCTION_16_1();
      }

      v81 = sub_222DC4034(v23);
      OUTLINED_FUNCTION_16_3(v81, v82);

      v176(v21);
      v83 = OUTLINED_FUNCTION_42_3();
    }

    else
    {
      v92 = v65;
      v93 = *(v175 + 32);
      v94 = v171;
      v154 = v92;
      v93(v171, v64);
      OUTLINED_FUNCTION_50_2();
      if (v95())
      {
        sub_222DC2B5C(v56);
        v96 = v169;
        switch(__swift_getEnumTagSinglePayload(v56, 3, v169))
        {
          case 1u:
            sub_222DC4998(v176, v177, v97, v98, v99, v100, v101, v102, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
            break;
          case 2u:
            v115 = v165;
            sub_222DDAB00();
            v116 = v154;
            (*(v175 + 16))(v61, v94, v154);
            __swift_storeEnumTagSinglePayload(v61, 0, 1, v116);
            OUTLINED_FUNCTION_50_2();
            v117();
            v118 = v169;
            sub_222DB6FC0(v61, &qword_27D047CF0, &unk_222DDDE10);
            OUTLINED_FUNCTION_61_0(v21);
            if (!v74)
            {
              v128 = v170 + 32;
              v129 = *(v170 + 32);
              v130 = v162;
              v129(v162, v21, v118);
              v131 = v156;
              sub_222DC44C8(v156);
              v132 = v157;
              sub_222DDAB80();
              v135 = sub_222DDAAE0();
              OUTLINED_FUNCTION_20_4();
              v136(v132, v161);
              OUTLINED_FUNCTION_20_4();
              v137(v131, v159);
              KeyPath = swift_getKeyPath();
              v139 = *(v135 + 16);
              if (v139)
              {
                v173 = v129;
                v174 = KeyPath;
                v178[0] = MEMORY[0x277D84F90];
                sub_222DA5528(0, v139, 0);
                v140 = v178[0];
                v172 = *(v168 + 16);
                v141 = (*(v168 + 80) + 32) & ~*(v168 + 80);
                v160 = v135;
                v142 = v135 + v141;
                v161 = *(v168 + 72);
                v168 += 16;
                v143 = (v168 - 8);
                v144 = v169;
                v145 = v155;
                do
                {
                  v146 = v128;
                  v148 = v166;
                  v147 = v167;
                  v172(v166, v142, v167);
                  swift_getAtKeyPath();
                  (*v143)(v148, v147);
                  v178[0] = v140;
                  v150 = *(v140 + 16);
                  v149 = *(v140 + 24);
                  if (v150 >= v149 >> 1)
                  {
                    sub_222DA5528(v149 > 1, v150 + 1, 1);
                    v144 = v169;
                    v140 = v178[0];
                  }

                  *(v140 + 16) = v150 + 1;
                  v151 = v140 + ((*(v170 + 80) + 32) & ~*(v170 + 80)) + *(v170 + 72) * v150;
                  v128 = v146;
                  v173(v151, v145, v144);
                  OUTLINED_FUNCTION_51_0();
                  v142 += v152;
                  --v139;
                }

                while (v139);

                v115 = v165;
                v130 = v162;
              }

              else
              {
              }

              sub_222DC63B4();

              (*(v170 + 8))(v130, v169);
              (*(v163 + 8))(v115, v164);
              v85 = *(v175 + 8);
              v83 = v171;
              goto LABEL_23;
            }

            sub_222DB6FC0(v21, &qword_27D0480B8, &unk_222DDE400);
            if (qword_27D0475A8 != -1)
            {
              OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
            }

            v119 = sub_222DDB3E0();
            OUTLINED_FUNCTION_63_0(v119, qword_27D04C910);
            v120 = sub_222DDB3C0();
            v121 = sub_222DDB6C0();
            if (OUTLINED_FUNCTION_34_2(v121))
            {
              v122 = OUTLINED_FUNCTION_43_0();
              OUTLINED_FUNCTION_19_1(v122);
              OUTLINED_FUNCTION_5_5(&dword_222D8A000, v123, v124, "no location node present in the intent, skipping to nextFlow");
              OUTLINED_FUNCTION_16_1();
            }

            v125 = sub_222DC4034(v23);
            OUTLINED_FUNCTION_16_3(v125, v126);

            v176(v21);
            v127 = OUTLINED_FUNCTION_42_3();
            v134(v127, v133);
            (*(v163 + 8))(v115, v164);
            break;
          case 3u:
            sub_222DC8E2C(v176);
            break;
          default:
            v103 = v170;
            (*(v170 + 32))(v22, v56, v96);
            sub_222DC6BCC(v22, v176, v177, v104, v105, v106, v107, v108, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164);
            (*(v103 + 8))(v22, v96);
            break;
        }
      }

      else
      {
        if (qword_27D0475A8 != -1)
        {
          OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
        }

        v109 = sub_222DDB3E0();
        OUTLINED_FUNCTION_63_0(v109, qword_27D04C910);
        v110 = sub_222DDB3C0();
        v111 = sub_222DDB6B0();
        if (OUTLINED_FUNCTION_34_2(v111))
        {
          v112 = OUTLINED_FUNCTION_43_0();
          OUTLINED_FUNCTION_19_1(v112);
          OUTLINED_FUNCTION_5_5(&dword_222D8A000, v113, v114, "resolutionStrategy.shouldResolve returned false, returning early");
          OUTLINED_FUNCTION_16_1();
        }

        sub_222DC8854();
      }

      v85 = *(v175 + 8);
      v83 = v94;
LABEL_23:
      v84 = v154;
    }

    v85(v83, v84);
  }

  else
  {
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v86 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v86, qword_27D04C910);
    v87 = sub_222DDB3C0();
    v88 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_34_2(v88))
    {
      v89 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v89);
      OUTLINED_FUNCTION_5_5(&dword_222D8A000, v90, v91, "native location resolution is disabled, returning early");
      OUTLINED_FUNCTION_16_1();
    }

    sub_222DC8854();
  }

  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DC40B4(uint64_t a1)
{
  v2 = sub_222DDADB0();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D048188, &unk_222DDE630);
  return sub_222DDAC40();
}

void sub_222DC4194()
{
  OUTLINED_FUNCTION_32_2();
  v3 = type metadata accessor for LocationResolverFlow.State(0, *(*v0 + 80), *(*v0 + 88), v2);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_3();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  sub_222DC2B5C(&v30 - v11);
  sub_222DDADB0();
  v13 = OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_27_5(v13, 3, v0);
  if (v14)
  {
    __swift_storeEnumTagSinglePayload(v9, 3, 3, v0);
    sub_222DC2C04(v9);
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v15 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v15, qword_27D04C910);

    v16 = sub_222DDB3C0();
    v17 = sub_222DDB6B0();

    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_29_4();
      v18 = OUTLINED_FUNCTION_37_3();
      v31 = v18;
      *v1 = 136315138;
      sub_222DC2B5C(v9);
      v19 = sub_222DDB540();
      v21 = sub_222D8F7F0(v19, v20, &v31);

      *(v1 + 4) = v21;
      _os_log_impl(&dword_222D8A000, v16, v17, "[LocationResolverFlow::onFlowCompletion] setting state to %s", v1, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_48_2();
    }
  }

  else
  {
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v22 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v22, qword_27D04C910);

    v23 = sub_222DDB3C0();
    v24 = sub_222DDB6C0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_29_4();
      v26 = OUTLINED_FUNCTION_25_2();
      v31 = v26;
      *v25 = 136315138;
      sub_222DC2B5C(v9);
      v27 = sub_222DDB540();
      v29 = sub_222D8F7F0(v27, v28, &v31);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_222D8A000, v23, v24, "[LocationResolverFlow::onFlowCompletion] unexpected state: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_48_2();
      OUTLINED_FUNCTION_48_2();
    }

    (*(v5 + 8))(v12, v3);
  }

  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DC44C8@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v25[0] = sub_222DDA220();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = sub_222DDA1D0();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_3();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_44_3();
  MEMORY[0x28223BE20](v17);
  v19 = v25 - v18;
  sub_222DC46D4();
  OUTLINED_FUNCTION_22_3();
  v21 = *(v20 + 112);
  v22 = *(v11 + 16);
  v22(v19, v1 + v21, v9);
  v22(v2, v1 + v21, v9);
  v22(v15, v1 + v21, v9);
  OUTLINED_FUNCTION_22_3();
  (*(v4 + 16))(v8, v1 + *(v23 + 120), v25[0]);
  return sub_222DDAC10();
}

double sub_222DC46D4()
{
  v0 = type metadata accessor for LocationService(0);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_4();
  v4 = v3 - v2;
  sub_222DDA430();
  if (qword_27D0475A0 != -1)
  {
    swift_once();
  }

  v5 = sub_222DDB3F0();
  v6 = __swift_project_value_buffer(v5, qword_27D04C8F8);
  (*(*(v5 - 8) + 16))(v4 + *(v0 + 20), v6, v5);
  v7 = sub_222DC98E0();
  if (v7)
  {
    v8 = v7;
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v9 = sub_222DDB3E0();
    __swift_project_value_buffer(v9, qword_27D04C910);
    v10 = v8;
    v11 = sub_222DDB3C0();
    v12 = sub_222DDB6B0();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134218240;
      [v10 lat];
      *(v13 + 4) = v14;
      *(v13 + 12) = 2048;
      [v10 lng];
      *(v13 + 14) = v15;
      _os_log_impl(&dword_222D8A000, v11, v12, "latitude: %f, longitude: %f", v13, 0x16u);
      OUTLINED_FUNCTION_48_2();
    }

    [v10 lat];
    v17 = v16;
    [v10 lng];
  }

  else
  {
    if (qword_27D0475A8 != -1)
    {
      OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
    }

    v18 = sub_222DDB3E0();
    OUTLINED_FUNCTION_63_0(v18, qword_27D04C910);
    v10 = sub_222DDB3C0();
    v19 = sub_222DDB6C0();
    v17 = 0.0;
    if (os_log_type_enabled(v10, v19))
    {
      v20 = OUTLINED_FUNCTION_43_0();
      *v20 = 0;
      _os_log_impl(&dword_222D8A000, v10, v19, "did not get location information from LocationService", v20, 2u);
      OUTLINED_FUNCTION_48_2();
    }
  }

  sub_222DB6F18(v4);
  return v17;
}

void sub_222DC4998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32_2();
  v22 = v20;
  v24 = v23;
  v195 = v25;
  v193 = *v20;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048310, &qword_222DDE800);
  OUTLINED_FUNCTION_8(v26);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_8_6(v28);
  v187 = sub_222DDA950();
  OUTLINED_FUNCTION_2();
  v179 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_8_6(v31);
  v183 = sub_222DDA650();
  OUTLINED_FUNCTION_2();
  v182 = v32;
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_6(v34);
  v35 = *(v193 + 80);
  v175 = *(v35 - 8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_7_6(v37);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048318, &unk_222DDE808);
  OUTLINED_FUNCTION_2();
  v184 = v38;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_5_3();
  v42 = (v40 - v41);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_10_5();
  v190 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_24_5();
  v191 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v48);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v49);
  v51 = &v171 - v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0480B8, &unk_222DDE400);
  OUTLINED_FUNCTION_8(v52);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_25_3();
  sub_222DDADB0();
  OUTLINED_FUNCTION_2();
  v197 = v55;
  v198 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_7_6(&v171 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_7_6(v59);
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_7_6(v61);
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_24_5();
  v194 = v63;
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v185 = v42;
  v64 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v64, qword_27D04C910);

  v196 = v20;
  v65 = sub_222DDB3C0();
  v66 = sub_222DDB6B0();

  v67 = os_log_type_enabled(v65, v66);
  v192 = v35;
  if (v67)
  {
    v189 = v24;
    v68 = OUTLINED_FUNCTION_29_4();
    v69 = OUTLINED_FUNCTION_25_2();
    v200[0] = v69;
    *v68 = 136315138;
    if (sub_222DC2D7C())
    {
      v70 = sub_222DDA8B0();
    }

    else
    {
      v70 = 0;
    }

    v199 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E18, &qword_222DDDF88);
    v71 = sub_222DDB540();
    v73 = sub_222D8F7F0(v71, v72, v200);

    *(v68 + 4) = v73;
    _os_log_impl(&dword_222D8A000, v65, v66, "handling initialized state intent: %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v69);
    OUTLINED_FUNCTION_48_2();
    OUTLINED_FUNCTION_48_2();

    v24 = v189;
    v35 = v192;
  }

  else
  {
  }

  v74 = *(*v20 + 128);
  sub_222DC2CB8(v51);
  v75 = *(v193 + 88);
  (*(v75 + 24))(v51, v35, v75);
  sub_222DB6FC0(v51, &qword_27D047CF0, &unk_222DDDE10);
  v76 = v198;
  OUTLINED_FUNCTION_27_5(v21, 1, v198);
  if (v77)
  {
    sub_222DB6FC0(v21, &qword_27D0480B8, &unk_222DDE400);
    v78 = sub_222DDB3C0();
    v79 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_34_2(v79))
    {
      v80 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v80);
      OUTLINED_FUNCTION_5_5(&dword_222D8A000, v81, v82, "no location node present in the intent, skipping to nextFlow");
      OUTLINED_FUNCTION_16_1();
    }

    OUTLINED_FUNCTION_36_2();
  }

  else
  {
    v84 = (v197 + 4);
    v83 = v197[4];
    v85 = v194;
    v83(v194, v21, v76);
    v86 = v190;
    sub_222DC61BC(v85);
    v187 = v83;
    v189 = v24;
    v87 = v184;
    v88 = v191;
    v89 = v188;
    (*(v184 + 32))(v191, v86, v188);
    v90 = *(v87 + 16);
    v190 = v87 + 16;
    v186 = v90;
    v90(v180, v88, v89);
    v91 = sub_222DDB3C0();
    v92 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_54_2(v92))
    {
      v94 = OUTLINED_FUNCTION_29_4();
      v178 = v84;
      v95 = v94;
      v179 = OUTLINED_FUNCTION_25_2();
      v200[0] = v179;
      *v95 = 136315138;
      sub_222DB7024(&qword_27D048320, &qword_27D048318, &unk_222DDE808, MEMORY[0x277D56088]);
      v172 = v91;
      v96 = sub_222DDBAB0();
      HIDWORD(v171) = v92;
      v98 = v97;
      v99 = OUTLINED_FUNCTION_45_2();
      v100(v99);
      v101 = sub_222D8F7F0(v96, v98, v200);

      *(v95 + 4) = v101;
      v102 = v172;
      _os_log_impl(&dword_222D8A000, v172, BYTE4(v171), "recommendation: %s", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v179);
      OUTLINED_FUNCTION_16_1();
      OUTLINED_FUNCTION_48_2();

      v103 = v198;
      v104 = v89;
    }

    else
    {

      v106 = OUTLINED_FUNCTION_45_2();
      v107(v106);
      v104 = v89;
      v103 = v198;
    }

    v108 = v185;
    v186(v185, v191, v104);
    v109 = (*(v87 + 88))(v108, v104);
    if (v109 == *MEMORY[0x277D56080])
    {
      v110 = v189;
      (*(v87 + 96))(v108, v104);
      v111 = v176;
      OUTLINED_FUNCTION_51_0();
      v112();
      v113 = sub_222DDB3C0();
      v114 = sub_222DDB6B0();
      if (OUTLINED_FUNCTION_34_2(v114))
      {
        v115 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_19_1(v115);
        OUTLINED_FUNCTION_5_5(&dword_222D8A000, v116, v117, "handling confident recommendation");
        OUTLINED_FUNCTION_16_1();
      }

      sub_222DC6BCC(v111, v195, v110, v118, v119, v120, v121, v122, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182);
      v123 = v197[1];
      v123(v111, v103);
      v124 = OUTLINED_FUNCTION_23_5();
      v125(v124);
      v123(v194, v103);
      goto LABEL_25;
    }

    v126 = v109;
    if (v109 == *MEMORY[0x277D56068])
    {
      v127 = v185;
      (*(v87 + 96))(v185, v104);
      OUTLINED_FUNCTION_51_0();
      v128();
      v129 = sub_222DDB3C0();
      v130 = sub_222DDB6B0();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_19_1(v131);
        _os_log_impl(&dword_222D8A000, v129, v130, "handling needsConfirmation recommendation like a confident recommendation", v127, 2u);
        OUTLINED_FUNCTION_16_1();
      }

      v132 = v192;
      type metadata accessor for LocationConfirmationStrategy(0, v192, v75, v133);
      v134 = v22 + v74;
      v135 = v174;
      (*(v175 + 16))(v174, v134, v132);
      v196 = sub_222DBC3E0(v135);
      swift_getWitnessTable();
      sub_222DDA260();
      v136 = v197[2];
      v137 = v173;
      v138 = v177;
      v136(v173, v177, v198);

      sub_222DDA7C0();
      v190 = sub_222DDA250();
      v200[0] = v190;
      v139 = v198;
      v136(v137, v138, v198);
      v140 = v197;
      v141 = swift_allocObject();
      v141[2] = v192;
      v141[3] = v75;
      v141[4] = v22;
      OUTLINED_FUNCTION_51_0();
      v142();

      swift_getWitnessTable();
      v143 = v181;
      sub_222DDA610();

      v195(v143);

      OUTLINED_FUNCTION_20_4();
      v144(v143, v183);
      v145 = v140[1];
      v145(v177, v139);
      v146 = OUTLINED_FUNCTION_23_5();
      v147(v146);
      v145(v194, v139);
      goto LABEL_25;
    }

    if (v109 == *MEMORY[0x277D56070])
    {
      v148 = v185;
      (*(v87 + 96))(v185, v104);
      v149 = *v148;

      v150 = v196;
      v151 = sub_222DDB3C0();
      v152 = sub_222DDB6B0();
      if (OUTLINED_FUNCTION_34_2(v152))
      {
        v153 = OUTLINED_FUNCTION_29_4();
        *v153 = 134349056;
        *(v153 + 4) = *(v149 + 16);

        _os_log_impl(&dword_222D8A000, v151, v150, "handling needsDisambiguation recommendation with locations: %{public}ld", v153, 0xCu);
        OUTLINED_FUNCTION_48_2();
      }

      else
      {
      }

      sub_222DC63B4();

LABEL_35:
      v160 = OUTLINED_FUNCTION_23_5();
      v161(v160);
      v162 = OUTLINED_FUNCTION_43_3();
      v105(v162, v103);
      goto LABEL_25;
    }

    v154 = *MEMORY[0x277D56078];
    v155 = sub_222DDB3C0();
    if (v126 == v154)
    {
      v156 = sub_222DDB6C0();
      if (OUTLINED_FUNCTION_34_2(v156))
      {
        v157 = OUTLINED_FUNCTION_43_0();
        OUTLINED_FUNCTION_19_1(v157);
        OUTLINED_FUNCTION_5_5(&dword_222D8A000, v158, v159, "got .none recommendation, returning to the next flow without performing any inference");
        OUTLINED_FUNCTION_16_1();
      }

      OUTLINED_FUNCTION_36_2();
      goto LABEL_35;
    }

    v163 = sub_222DDB6B0();
    if (OUTLINED_FUNCTION_34_2(v163))
    {
      v164 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_19_1(v164);
      OUTLINED_FUNCTION_5_5(&dword_222D8A000, v165, v166, "unknown recommendation, returning to the next flow without performing any inference");
      OUTLINED_FUNCTION_16_1();
    }

    OUTLINED_FUNCTION_36_2();
    v167 = v188;
    v168 = v193;
    (v193)(v191, v188);
    v169 = OUTLINED_FUNCTION_43_3();
    v170(v169, v103);
    v168(v185, v167);
  }

LABEL_25:
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DC5A44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a3;
  v5 = type metadata accessor for LocationResolverFlow.State(0, *(*a2 + 80), *(*a2 + 88), a4);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047F88, &qword_222DDE240);
  MEMORY[0x28223BE20](v8 - 8);
  v66 = &v58 - v9;
  v10 = sub_222DDA790();
  v73 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v64 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v74 = &v58 - v13;
  v14 = sub_222DDA850();
  v68 = *(v14 - 8);
  v69 = v14;
  MEMORY[0x28223BE20](v14);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048328, &qword_222DDE818);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v71 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - v20;
  if (qword_27D0475A8 != -1)
  {
    swift_once();
  }

  v22 = sub_222DDB3E0();
  v23 = __swift_project_value_buffer(v22, qword_27D04C910);
  v24 = *(v17 + 16);
  v72 = a1;
  v70 = v24;
  v24(v21, a1, v16);
  v63 = v23;
  v25 = sub_222DDB3C0();
  v26 = sub_222DDB6B0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v61 = v7;
    v28 = v27;
    v59 = swift_slowAlloc();
    v75 = v59;
    *v28 = 136315138;
    sub_222DB7024(&qword_27D048330, &qword_27D048328, &qword_222DDE818, MEMORY[0x277D5BC48]);
    v29 = sub_222DDBAB0();
    v60 = v10;
    v31 = v30;
    v65 = *(v17 + 8);
    v65(v21, v16);
    v32 = sub_222D8F7F0(v29, v31, &v75);
    v10 = v60;

    *(v28 + 4) = v32;
    _os_log_impl(&dword_222D8A000, v25, v26, "confirmation result: %s", v28, 0xCu);
    v33 = v59;
    __swift_destroy_boxed_opaque_existential_0(v59);
    MEMORY[0x223DCEF40](v33, -1, -1);
    v34 = v28;
    v7 = v61;
    MEMORY[0x223DCEF40](v34, -1, -1);
  }

  else
  {

    v65 = *(v17 + 8);
    v65(v21, v16);
  }

  v35 = v71;
  v70(v71, v72, v16);
  v36 = (*(v17 + 88))(v35, v16);
  v38 = v73;
  v37 = v74;
  if (v36 == *MEMORY[0x277D5BC38])
  {
    (*(v17 + 96))(v35, v16);
    v39 = v35;
    v41 = v67;
    v40 = v68;
    v42 = v69;
    (*(v68 + 32))(v67, v39, v69);
    v43 = v66;
    sub_222DDA840();
    if (__swift_getEnumTagSinglePayload(v43, 1, v10) == 1)
    {
      sub_222DB6FC0(v43, &qword_27D047F88, &qword_222DDE240);
      v44 = sub_222DDB3C0();
      v45 = sub_222DDB6C0();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_222D8A000, v44, v45, "no confirmationResponse returned by confirmation strategy", v46, 2u);
        MEMORY[0x223DCEF40](v46, -1, -1);
      }

      v47 = sub_222DDADB0();
      __swift_storeEnumTagSinglePayload(v7, 3, 3, v47);
      sub_222DC2C04(v7);
    }

    else
    {
      (*(v38 + 32))(v37, v43, v10);
      v50 = v64;
      (*(v38 + 104))(v64, *MEMORY[0x277D5BED8], v10);
      v51 = sub_222DDA780();
      v52 = *(v38 + 8);
      v52(v50, v10);
      v53 = sub_222DDADB0();
      v54 = v10;
      v55 = v53;
      if (v51)
      {
        (*(*(v53 - 8) + 16))(v7, v62, v53);
        v56 = v7;
        v57 = 0;
      }

      else
      {
        v56 = v7;
        v57 = 2;
      }

      __swift_storeEnumTagSinglePayload(v56, v57, 3, v55);
      sub_222DC2C04(v7);
      v52(v74, v54);
    }

    return (*(v40 + 8))(v41, v42);
  }

  else
  {
    v48 = sub_222DDADB0();
    __swift_storeEnumTagSinglePayload(v7, 3, 3, v48);
    sub_222DC2C04(v7);
    return (v65)(v35, v16);
  }
}

uint64_t sub_222DC61BC(uint64_t a1)
{
  v22 = sub_222DDAB90();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v6 = v5 - v4;
  v7 = sub_222DDAC20();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  v14 = sub_222DDAB10();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  sub_222DDAB00();
  sub_222DC44C8(v13);
  sub_222DDAB80();
  sub_222DDAAF0();
  (*(v2 + 8))(v6, v22);
  (*(v9 + 8))(v13, v7);
  return (*(v16 + 8))(v20, v14);
}

void sub_222DC63B4()
{
  OUTLINED_FUNCTION_32_2();
  v1 = v0;
  v3 = v2;
  v21 = v4;
  v5 = *v0;
  v22 = sub_222DDA650();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  v12 = v5[10];
  v13 = *(v12 - 8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  type metadata accessor for LocationDisambiguationStrategy(0, v12, v5[11], v17);
  (*(v13 + 16))(v16, &v1[v5[16]], v12);
  sub_222DBE8D0(v16);
  swift_getWitnessTable();
  sub_222DDA280();

  sub_222DDA7C0();
  v23 = sub_222DDA270();
  v18 = swift_allocObject();
  v19 = v21;
  v18[2] = v1;
  v18[3] = v19;
  v18[4] = v3;

  swift_getWitnessTable();
  sub_222DDA610();

  v19(v11);

  (*(v7 + 8))(v11, v22);
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DC6658(uint64_t a1, uint64_t *a2, void (*a3)(void), void *a4)
{
  v7 = *a2;
  v8 = sub_222DDA650();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v48 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocationResolverFlow.State(0, *(v7 + 80), *(v7 + 88), v10);
  MEMORY[0x28223BE20](v11 - 8);
  v46 = v42 - v12;
  v47 = sub_222DDADB0();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048338, &qword_222DDE820);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v52 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v42 - v18;
  if (qword_27D0475A8 != -1)
  {
    swift_once();
  }

  v20 = sub_222DDB3E0();
  __swift_project_value_buffer(v20, qword_27D04C910);
  v21 = *(v15 + 16);
  v53 = a1;
  v51 = v21;
  v21(v19, a1, v14);
  v22 = sub_222DDB3C0();
  v23 = sub_222DDB6B0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v43 = a3;
    v25 = v24;
    v42[0] = swift_slowAlloc();
    v54 = v42[0];
    *v25 = 136315138;
    sub_222DB7024(&qword_27D048340, &qword_27D048338, &qword_222DDE820, MEMORY[0x277D5BC48]);
    v26 = sub_222DDBAB0();
    v42[1] = a4;
    v28 = v27;
    v29 = v19;
    v30 = *(v15 + 8);
    v30(v29, v14);
    v31 = sub_222D8F7F0(v26, v28, &v54);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_222D8A000, v22, v23, "result: %s", v25, 0xCu);
    v32 = v42[0];
    __swift_destroy_boxed_opaque_existential_0(v42[0]);
    MEMORY[0x223DCEF40](v32, -1, -1);
    v33 = v25;
    a3 = v43;
    MEMORY[0x223DCEF40](v33, -1, -1);
  }

  else
  {

    v34 = v19;
    v30 = *(v15 + 8);
    v30(v34, v14);
  }

  v35 = v52;
  v51(v52, v53, v14);
  if ((*(v15 + 88))(v35, v14) == *MEMORY[0x277D5BC38])
  {
    (*(v15 + 96))(v35, v14);
    v37 = v44;
    v36 = v45;
    v38 = v47;
    (*(v45 + 32))(v44, v35, v47);
    v39 = v46;
    (*(v36 + 16))(v46, v37, v38);
    __swift_storeEnumTagSinglePayload(v39, 0, 3, v38);
    sub_222DC2C04(v39);
    return (*(v36 + 8))(v37, v38);
  }

  else
  {
    v41 = v48;
    sub_222DDA640();
    a3(v41);
    (*(v49 + 8))(v41, v50);
    return (v30)(v35, v14);
  }
}

void sub_222DC6BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32_2();
  a19 = v22;
  a20 = v23;
  v310 = v24;
  v312 = v25;
  v299 = v26;
  OUTLINED_FUNCTION_22_3();
  v300 = v27;
  v314 = sub_222DDA650();
  OUTLINED_FUNCTION_2();
  v313 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_8_6(v30);
  v298 = sub_222DDA890();
  OUTLINED_FUNCTION_2();
  v297 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_8_6(v33);
  v304 = sub_222DDA900();
  OUTLINED_FUNCTION_2();
  v303 = v34;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_8_6(v37);
  v38 = sub_222DDA350();
  v39 = OUTLINED_FUNCTION_8(v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_6(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048348, &qword_222DDE828);
  OUTLINED_FUNCTION_8(v41);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_8_6(v43);
  v283 = sub_222DDB3B0();
  OUTLINED_FUNCTION_2();
  v282 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_6(v46);
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_7_6(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E88, &qword_222DDE0F8);
  v50 = OUTLINED_FUNCTION_8(v49);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_7_6(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C0, &qword_222DDE100);
  v56 = OUTLINED_FUNCTION_8(v55);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_7_6(v60);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E90, &qword_222DDE108);
  OUTLINED_FUNCTION_8(v61);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_32_4();
  OUTLINED_FUNCTION_8_6(v63);
  v292 = sub_222DDAE00();
  OUTLINED_FUNCTION_2();
  v286 = v64;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_8_6(v66);
  v67 = sub_222DDAC60();
  OUTLINED_FUNCTION_2();
  v295 = v68;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v70);
  v72 = &v266 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047E98, &qword_222DDE110);
  v74 = OUTLINED_FUNCTION_8(v73);
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v75);
  v77 = &v266 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047EA0, &qword_222DDE118);
  v79 = OUTLINED_FUNCTION_8(v78);
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v80);
  v82 = &v266 - v81;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047EA8, &qword_222DDE120);
  OUTLINED_FUNCTION_8(v83);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v84);
  v86 = &v266 - v85;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047EB0, &qword_222DDE128);
  OUTLINED_FUNCTION_8(v87);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v88);
  v90 = &v266 - v89;
  v301 = sub_222DDAA40();
  OUTLINED_FUNCTION_2();
  v291 = v91;
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_0_9();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_8_6(v94);
  v306 = sub_222DDADB0();
  OUTLINED_FUNCTION_2();
  v305 = v95;
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_6(v97);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v98);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_25_3();
  v100 = sub_222DDA940();
  OUTLINED_FUNCTION_2();
  v308 = v101;
  MEMORY[0x28223BE20](v102);
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_7_6(v103);
  v104 = v20;
  v105 = sub_222DC2D7C();
  v106 = 0x27D047000;
  v309 = v105;
  if (v105)
  {
    sub_222DC2CB8(v21);
    OUTLINED_FUNCTION_61_0(v21);
    if (!v135)
    {
      v120 = *(v308 + 32);
      v270 = v100;
      v120(v307, v21, v100);
      (*(v305 + 16))(v315, v299, v306);
      sub_222DDADA0();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v77, 1, v67);
      v122 = &swift_deallocObject;
      if (EnumTagSinglePayload)
      {
        v123 = &qword_27D047E98;
        v124 = &qword_222DDE110;
        v125 = v77;
LABEL_18:
        sub_222DB6FC0(v125, v123, v124);
        v136 = OUTLINED_FUNCTION_47_3();
        __swift_storeEnumTagSinglePayload(v136, v137, 1, v138);
LABEL_19:
        sub_222DB6FC0(v90, qword_27D047EB0, &qword_222DDE128);
        v139 = v104;
LABEL_20:
        if (qword_27D0475A8 != -1)
        {
          OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
        }

        v140 = sub_222DDB3E0();
        v301 = __swift_project_value_buffer(v140, qword_27D04C910);
        v141 = sub_222DDB3C0();
        v142 = sub_222DDB6B0();
        if (os_log_type_enabled(v141, v142))
        {
          v143 = OUTLINED_FUNCTION_29_4();
          v86 = OUTLINED_FUNCTION_25_2();
          v320 = v86;
          *v143 = v122[240];
          OUTLINED_FUNCTION_5_6();
          swift_beginAccess();
          v144 = v294;
          sub_222DDAD80();
          v145 = v144;
          v146 = sub_222DDAA00();
          OUTLINED_FUNCTION_27_5(v145, 1, v146);
          if (v135)
          {
            sub_222DB6FC0(v145, &qword_27D048348, &qword_222DDE828);
            v149 = 0;
            v151 = 0;
          }

          else
          {
            v147 = v139;
            v148 = v145;
            v149 = sub_222DDA9F0();
            v151 = v150;
            OUTLINED_FUNCTION_28_2();
            v153 = v148;
            v139 = v147;
            (*(v152 + 8))(v153, v146);
          }

          *&v317 = v149;
          *(&v317 + 1) = v151;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BA8, &qword_222DDE830);
          v154 = sub_222DDB540();
          v156 = sub_222D8F7F0(v154, v155, &v320);

          *(v143 + 4) = v156;
          _os_log_impl(&dword_222D8A000, v141, v142, "location name is %s", v143, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v86);
          OUTLINED_FUNCTION_48_2();
          OUTLINED_FUNCTION_48_2();
        }

        v157 = sub_222DDA8B0();
        v158 = v315;
        OUTLINED_FUNCTION_5_6();
        swift_beginAccess();
        v159 = (*(*(v300 + 88) + 72))(v157, v158, *(v300 + 80));

        if (v159)
        {
          v160 = v159;
          sub_222DDA8C0();
          sub_222DDA8D0();
          sub_222DDA8E0();
          sub_222DDA8F0();
          swift_allocObject();
          v161 = sub_222DDA8A0();
          v162 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250) + 48);
          v163 = v302;
          (*(v308 + 16))(v302, v307, v270);
          *(v163 + v162) = v161;
          OUTLINED_FUNCTION_49_3();
          v165 = v304;
          (*(v164 + 104))(v163);
          v166 = *(v139 + 16);
          (*(v86 + 2))(v296, v163, v165);

          OUTLINED_FUNCTION_49_3();
          sub_222DDA880();
          v167 = sub_222DDA290();
          OUTLINED_FUNCTION_20_4();
          v168(v86, v298);

          v169 = sub_222DDB3C0();
          v170 = sub_222DDB6B0();

          if (os_log_type_enabled(v169, v170))
          {
            swift_slowAlloc();
            v171 = OUTLINED_FUNCTION_37_3();
            v316 = v166;
            *&v317 = v171;
            *v163 = 67109378;
            OUTLINED_FUNCTION_52_3(v167 & 1);
            sub_222DC966C();
            v172 = sub_222DDBAB0();
            v174 = sub_222D8F7F0(v172, v173, &v317);

            *(v163 + 10) = v174;
            _os_log_impl(&dword_222D8A000, v169, v170, "nextFlowOn: %{BOOL}d, flow is: %s", v163, 0x12u);
            __swift_destroy_boxed_opaque_existential_0(v171);
            OUTLINED_FUNCTION_48_2();
            OUTLINED_FUNCTION_48_2();
          }

          sub_222DC4034(v139);
          OUTLINED_FUNCTION_49_3();
          sub_222DDA620();

          OUTLINED_FUNCTION_22_4();
          v175();

          OUTLINED_FUNCTION_20_4();
          v176(v170, v314);
          OUTLINED_FUNCTION_20_4();
          v178 = v302;
          v179 = &v317;
        }

        else
        {
          v180 = sub_222DDB3C0();
          v181 = sub_222DDB6C0();
          if (OUTLINED_FUNCTION_34_2(v181))
          {
            v182 = OUTLINED_FUNCTION_43_0();
            OUTLINED_FUNCTION_19_1(v182);
            OUTLINED_FUNCTION_5_5(&dword_222D8A000, v183, v184, "resolutionStrategy did return an intent with the resolved location, moving on to the next flow without setting location");
            OUTLINED_FUNCTION_16_1();
          }

          v185 = sub_222DC8814(v139);
          v186 = v311;
          OUTLINED_FUNCTION_18_4(v185, v187, v185);

          OUTLINED_FUNCTION_22_4();
          v188();

          OUTLINED_FUNCTION_20_4();
          v178 = v186;
          v179 = &a9;
        }

        v177(v178, *(v179 - 32));
        OUTLINED_FUNCTION_20_4();
        v189(v307, v270);
        OUTLINED_FUNCTION_20_4();
        v118 = v315;
        v119 = &v318;
        goto LABEL_35;
      }

      v126 = v295;
      v127 = *(v295 + 16);
      v299 = (v295 + 16);
      v269 = v127;
      v127(v72, v77, v67);
      sub_222DB6FC0(v77, &qword_27D047E98, &qword_222DDE110);
      sub_222DDAC50();
      v130 = *(v126 + 8);
      v128 = v126 + 8;
      v129 = v130;
      v130(v72, v67);
      v131 = sub_222DDA9B0();
      OUTLINED_FUNCTION_27_5(v82, 1, v131);
      if (v135)
      {
        v123 = &qword_27D047EA0;
        v124 = &qword_222DDE118;
        v125 = v82;
        goto LABEL_18;
      }

      v295 = v128;
      sub_222DDA990();
      OUTLINED_FUNCTION_28_2();
      v133 = *(v132 + 8);
      v268 = v132 + 8;
      v133(v82, v131);
      v134 = sub_222DDAA60();
      OUTLINED_FUNCTION_27_5(v86, 1, v134);
      if (v135)
      {
        v123 = &qword_27D047EA8;
        v124 = &qword_222DDE120;
        v125 = v86;
        goto LABEL_18;
      }

      v267 = v133;
      sub_222DDAA50();
      OUTLINED_FUNCTION_28_2();
      (*(v190 + 8))(v86, v134);
      v191 = OUTLINED_FUNCTION_47_3();
      v192 = v301;
      OUTLINED_FUNCTION_27_5(v191, v193, v301);
      if (v194)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_49_3();
      v196 = v293;
      (*(v195 + 32))(v293, v90, v192);
      v197 = v289;
      sub_222DDADA0();
      v198 = OUTLINED_FUNCTION_47_3();
      if (__swift_getEnumTagSinglePayload(v198, v199, v67))
      {
        v200 = *(v86 + 1);
        v86 += 8;
        v200(v196, v192);
        sub_222DB6FC0(v197, &qword_27D047E98, &qword_222DDE110);
        v139 = v104;
      }

      else
      {
        v201 = v288;
        v269(v288, v197, v67);
        sub_222DB6FC0(v197, &qword_27D047E98, &qword_222DDE110);
        v202 = v287;
        sub_222DDAC50();
        v129(v201, v67);
        v203 = OUTLINED_FUNCTION_47_3();
        OUTLINED_FUNCTION_27_5(v203, v204, v131);
        if (!v135)
        {
          v207 = v290;
          sub_222DDA9A0();
          v208 = v207;
          v267(v202, v131);
          v209 = v207;
          v210 = v292;
          OUTLINED_FUNCTION_27_5(v209, 1, v292);
          v139 = v104;
          if (!v211)
          {
            (*(v286 + 32))(v285, v208, v210);
            if (qword_27D0475A8 != -1)
            {
              OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
            }

            v214 = sub_222DDB3E0();
            OUTLINED_FUNCTION_63_0(v214, qword_27D04C910);
            v215 = v271;
            v216 = v301;
            (*(v86 + 2))(v271, v293, v301);
            v295 = v208;
            v217 = sub_222DDB3C0();
            v218 = sub_222DDB6B0();
            if (os_log_type_enabled(v217, v218))
            {
              v219 = OUTLINED_FUNCTION_29_4();
              v220 = v215;
              v221 = OUTLINED_FUNCTION_25_2();
              *&v317 = v221;
              *v219 = 136315138;
              v222 = sub_222DDAA30();
              v223 = v86;
              v225 = v224;
              v299 = *(v223 + 1);
              v299(v220, v301);
              v226 = sub_222D8F7F0(v222, v225, &v317);

              *(v219 + 4) = v226;
              _os_log_impl(&dword_222D8A000, v217, v218, "About to set locationName with bounded value: %s", v219, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v221);
              OUTLINED_FUNCTION_48_2();
              OUTLINED_FUNCTION_16_1();
            }

            else
            {

              v299 = *(v86 + 1);
              v299(v215, v216);
            }

            v227 = v277;
            v228 = v273;
            sub_222DDB040();
            swift_allocObject();
            sub_222DDB030();
            v229 = v272;
            sub_222DDADE0();
            v230 = sub_222DDAA20();
            OUTLINED_FUNCTION_61_0(v229);
            v231 = v278;
            if (v135)
            {
              sub_222DB6FC0(v229, &qword_27D047E88, &qword_222DDE0F8);
              v233 = 1;
            }

            else
            {
              sub_222DDAA10();
              OUTLINED_FUNCTION_28_2();
              (*(v232 + 8))();
              OUTLINED_FUNCTION_5_6();
              sub_222DDB210();
              v233 = 0;
            }

            sub_222DDB240();
            OUTLINED_FUNCTION_12_4(v228, v233);
            sub_222DDAFA0();

            sub_222DB6FC0(v228, &qword_27D0479C0, &qword_222DDE100);
            v234 = v274;
            sub_222DDADF0();
            OUTLINED_FUNCTION_61_0(v234);
            if (v135)
            {
              sub_222DB6FC0(v234, &qword_27D047E88, &qword_222DDE0F8);
              v237 = 1;
              v236 = v275;
            }

            else
            {
              sub_222DDAA10();
              OUTLINED_FUNCTION_28_2();
              (*(v235 + 8))(v234, v230);
              v236 = v275;
              OUTLINED_FUNCTION_5_6();
              sub_222DDB210();
              v237 = 0;
            }

            OUTLINED_FUNCTION_12_4(v236, v237);
            sub_222DDAFB0();

            sub_222DB6FC0(v236, &qword_27D0479C0, &qword_222DDE100);
            v238 = v276;
            sub_222DDADD0();
            OUTLINED_FUNCTION_61_0(v238);
            if (v135)
            {
              sub_222DB6FC0(v238, &qword_27D047E88, &qword_222DDE0F8);
              v240 = 1;
            }

            else
            {
              sub_222DDAA10();
              OUTLINED_FUNCTION_46_3();
              OUTLINED_FUNCTION_28_2();
              (*(v239 + 8))();
              OUTLINED_FUNCTION_5_6();
              sub_222DDB210();
              v240 = 0;
            }

            v241 = v292;
            OUTLINED_FUNCTION_12_4(v227, v240);
            sub_222DDAFC0();

            sub_222DB6FC0(v227, &qword_27D0479C0, &qword_222DDE100);
            sub_222DDADC0();
            OUTLINED_FUNCTION_61_0(v231);
            if (v135)
            {
              sub_222DB6FC0(v231, &qword_27D047E88, &qword_222DDE0F8);
              v244 = 1;
              v243 = v279;
            }

            else
            {
              sub_222DDAA10();
              OUTLINED_FUNCTION_28_2();
              (*(v242 + 8))(v231, v230);
              v243 = v279;
              OUTLINED_FUNCTION_5_6();
              sub_222DDB210();
              v244 = 0;
            }

            OUTLINED_FUNCTION_12_4(v243, v244);
            sub_222DDAF90();
            OUTLINED_FUNCTION_46_3();

            sub_222DB6FC0(v243, &qword_27D0479C0, &qword_222DDE100);
            sub_222DDB000();

            v245 = sub_222DDB020();

            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v247 = [objc_opt_self() bundleForClass_];
            sub_222DDB1B0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B40, &unk_222DDD450);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_222DDDFD0;
            *(inited + 32) = 0x746361746E6F63;
            *(inited + 40) = 0xE700000000000000;
            v249 = sub_222DDB0D0();
            *(inited + 48) = v245;
            *(inited + 72) = v249;
            strcpy((inited + 80), "addressLabel");
            *(inited + 93) = 0;
            *(inited + 94) = -5120;

            v250 = sub_222DDAA30();
            *(inited + 120) = MEMORY[0x277D837D0];
            *(inited + 96) = v250;
            *(inited + 104) = v251;
            sub_222DDB460();
            sub_222DDB180();
            v317 = 0u;
            v318 = 0u;
            v319 = 0;
            v86 = sub_222DDB170();
            v252 = v280;
            sub_222DDB3A0();
            v253 = v284;
            sub_222DDB1A0();

            OUTLINED_FUNCTION_20_4();
            v254(v252, v283);
            sub_222DB6FC0(&v317, &qword_27D047BB8, &qword_222DDD430);
            v255 = sub_222DDBBA0();
            if (v256)
            {
              v257 = v255;
              v258 = v256;
              v259 = sub_222DDB3C0();
              v86 = sub_222DDB6B0();
              if (OUTLINED_FUNCTION_54_2(v86))
              {
                OUTLINED_FUNCTION_29_4();
                v260 = OUTLINED_FUNCTION_37_3();
                *&v317 = v260;
                *v253 = 136315138;
                *(v253 + 4) = sub_222D8F7F0(v257, v258, &v317);
                _os_log_impl(&dword_222D8A000, v259, v86, "Setting locationName to %s", v253, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v260);
                v241 = v292;
                OUTLINED_FUNCTION_48_2();
                v253 = v284;
                OUTLINED_FUNCTION_48_2();
              }

              sub_222DDAD70();
            }

            else
            {
              v261 = sub_222DDB3C0();
              v262 = sub_222DDB6B0();
              if (OUTLINED_FUNCTION_54_2(v262))
              {
                v263 = OUTLINED_FUNCTION_43_0();
                *v263 = 0;
                _os_log_impl(&dword_222D8A000, v261, v262, "result from cat is nil", v263, 2u);
                OUTLINED_FUNCTION_48_2();
              }
            }

            sub_222DB6FC0(v253, &unk_27D047F60, &qword_222DDE000);
            OUTLINED_FUNCTION_20_4();
            v264(v285, v241);
            v265 = OUTLINED_FUNCTION_26_4();
            (v299)(v265);
            v122 = &swift_deallocObject;
            goto LABEL_20;
          }

          v86 += 8;
          v212 = OUTLINED_FUNCTION_26_4();
          v213(v212);
          goto LABEL_43;
        }

        v86 += 8;
        v205 = OUTLINED_FUNCTION_26_4();
        v206(v205);
        sub_222DB6FC0(v202, &qword_27D047EA0, &qword_222DDE118);
        v139 = v104;
      }

      v208 = v290;
      __swift_storeEnumTagSinglePayload(v290, 1, 1, v292);
LABEL_43:
      sub_222DB6FC0(v208, &qword_27D047E90, &qword_222DDE108);
      goto LABEL_20;
    }

    sub_222DB6FC0(v21, &qword_27D047CF0, &unk_222DDDE10);
    v106 = 0x27D047000uLL;
  }

  if (*(v106 + 1448) != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v107 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v107, qword_27D04C910);
  v108 = sub_222DDB3C0();
  v109 = sub_222DDB6C0();
  if (OUTLINED_FUNCTION_34_2(v109))
  {
    v110 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_19_1(v110);
    OUTLINED_FUNCTION_5_5(&dword_222D8A000, v111, v112, "serverConversion and nlIntent are nil, returning early from handleLocationResolved");
    OUTLINED_FUNCTION_16_1();
  }

  v113 = sub_222DC4034(v20);
  v114 = v311;
  OUTLINED_FUNCTION_18_4(v113, v115, v113);

  OUTLINED_FUNCTION_22_4();
  v116();
  OUTLINED_FUNCTION_20_4();
  v118 = v114;
  v119 = &a9;
LABEL_35:
  v117(v118, *(v119 - 32));
  OUTLINED_FUNCTION_36_1();
}

void sub_222DC8854()
{
  OUTLINED_FUNCTION_32_2();
  v68 = v3;
  v69 = v2;
  sub_222DDA650();
  OUTLINED_FUNCTION_2();
  v70 = v5;
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  v9 = sub_222DDA890();
  OUTLINED_FUNCTION_2();
  v63 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  sub_222DDA900();
  OUTLINED_FUNCTION_2();
  v66 = v16;
  v67 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_44_3();
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_8(v20);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  v23 = &v60 - v22;
  v24 = sub_222DDA940();
  OUTLINED_FUNCTION_2();
  v65 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_2_6();
  v64 = v27;
  v28 = sub_222DC2D7C();
  if (v28)
  {
    v29 = v28;
    sub_222DC2CB8(v23);
    OUTLINED_FUNCTION_27_5(v23, 1, v24);
    if (!v30)
    {
      v62 = v8;
      v37 = v65;
      v38 = *(v65 + 32);
      v60 = v9;
      v39 = v0;
      v40 = v64;
      v38(v64, v23, v24);
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27D047FA0, &unk_222DDE250) + 48);
      v42 = *(v37 + 16);
      v43 = v40;
      v44 = v19;
      v61 = v24;
      v42(v19, v43, v24);
      *&v19[v41] = v29;
      v46 = v66;
      v45 = v67;
      (*(v66 + 104))(v19, *MEMORY[0x277D5C158], v67);
      v47 = v46;
      v48 = *(v39 + 16);
      (*(v47 + 16))(v1, v19, v45);

      sub_222DDA880();
      v49 = sub_222DDA290();
      (*(v63 + 8))(v14, v60);
      if (qword_27D0475A8 != -1)
      {
        OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
      }

      v50 = sub_222DDB3E0();
      OUTLINED_FUNCTION_63_0(v50, qword_27D04C910);

      v51 = sub_222DDB3C0();
      v52 = sub_222DDB6B0();
      v63 = v39;

      v53 = os_log_type_enabled(v51, v52);
      v54 = v62;
      if (v53)
      {
        swift_slowAlloc();
        v55 = OUTLINED_FUNCTION_37_3();
        v72 = v48;
        v73 = v55;
        *v49 = 67109378;
        OUTLINED_FUNCTION_52_3(v49 & 1);
        sub_222DC966C();
        v56 = sub_222DDBAB0();
        v58 = sub_222D8F7F0(v56, v57, &v73);

        *(v49 + 10) = v58;
        _os_log_impl(&dword_222D8A000, v51, v52, "nextFlowOn: %{BOOL}d, flow is: %s", v49, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v55);
        OUTLINED_FUNCTION_48_2();
        OUTLINED_FUNCTION_48_2();
      }

      v59 = v61;
      sub_222DC4034(v63);
      sub_222DDA620();

      v69(v54);

      (*(v70 + 8))(v54, v71);
      (*(v66 + 8))(v44, v67);
      (*(v65 + 8))(v64, v59);
      goto LABEL_15;
    }

    sub_222DB6FC0(v23, &qword_27D047CF0, &unk_222DDDE10);
  }

  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v31 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v31, qword_27D04C910);
  v32 = sub_222DDB3C0();
  v33 = sub_222DDB6C0();
  if (OUTLINED_FUNCTION_34_2(v33))
  {
    v34 = OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_19_1(v34);
    OUTLINED_FUNCTION_5_5(&dword_222D8A000, v35, v36, "serverConversion and nlIntent are nil, returning early from passThroughIntent");
    OUTLINED_FUNCTION_16_1();
  }

  sub_222DC4034(v0);
  sub_222DDA620();

  v69(v8);
  (*(v70 + 8))(v8, v71);
LABEL_15:
  OUTLINED_FUNCTION_36_1();
}

uint64_t sub_222DC8E2C(void (*a1)(uint64_t))
{
  v2 = sub_222DDA650();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v9 = sub_222DDB3E0();
  OUTLINED_FUNCTION_63_0(v9, qword_27D04C910);
  v10 = sub_222DDB3C0();
  v11 = sub_222DDB6B0();
  if (OUTLINED_FUNCTION_54_2(v11))
  {
    v12 = OUTLINED_FUNCTION_43_0();
    *v12 = 0;
    _os_log_impl(&dword_222D8A000, v10, v11, "[LocationResolverFlow::execute] completed, returning .complete()", v12, 2u);
    OUTLINED_FUNCTION_48_2();
  }

  sub_222DDA640();
  a1(v8);
  return (*(v4 + 8))(v8, v2);
}

char *LocationResolverFlow.deinit()
{
  v1 = *v0;

  OUTLINED_FUNCTION_22_3();
  v3 = *(v2 + 104);
  v4 = *(v1 + 80);
  OUTLINED_FUNCTION_34_4();
  type metadata accessor for LocationResolverFlow.State(0, v4, *(v5 + 88), v6);
  OUTLINED_FUNCTION_4_6();
  (*(v7 + 8))(&v0[v3]);
  OUTLINED_FUNCTION_22_3();
  v9 = *(v8 + 112);
  sub_222DDA1D0();
  OUTLINED_FUNCTION_4_6();
  (*(v10 + 8))(&v0[v9]);
  OUTLINED_FUNCTION_22_3();
  v12 = *(v11 + 120);
  sub_222DDA220();
  OUTLINED_FUNCTION_4_6();
  (*(v13 + 8))(&v0[v12]);
  OUTLINED_FUNCTION_22_3();
  (*(*(v4 - 8) + 8))(&v0[*(v14 + 128)], v4);
  OUTLINED_FUNCTION_22_3();
  sub_222DB6FC0(&v0[*(v15 + 136)], &qword_27D047CF0, &unk_222DDDE10);
  OUTLINED_FUNCTION_22_3();

  return v0;
}

uint64_t LocationResolverFlow.__deallocating_deinit()
{
  LocationResolverFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_222DC91C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LocationResolverFlow(0, *(a1 + 80), *(a1 + 88), a4);

  return MEMORY[0x2821BA658](v5, a2);
}

void sub_222DC9238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LocationResolverFlow.State(319, *(a1 + 80), *(a1 + 88), a4);
  if (v4 <= 0x3F)
  {
    sub_222DDA1D0();
    if (v5 <= 0x3F)
    {
      sub_222DDA220();
      if (v6 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v7 <= 0x3F)
        {
          sub_222DB6D38(319);
          if (v8 <= 0x3F)
          {
            swift_initClassMetadata2();
          }
        }
      }
    }
  }
}

_BYTE *sub_222DC9464(_BYTE *result, int a2, int a3)
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

uint64_t sub_222DC9500(uint64_t a1)
{
  v1 = sub_222DDADB0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_222DC95F0(uint64_t a1)
{
  v3 = sub_222DDADB0();
  OUTLINED_FUNCTION_8(v3);
  v6 = *(v1 + 32);
  v7 = v1 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_222DC5A44(a1, v6, v7, v4);
}

unint64_t sub_222DC966C()
{
  result = qword_27D047E20;
  if (!qword_27D047E20)
  {
    sub_222DDA2A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D047E20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1, uint64_t a2)
{

  return sub_222DDA620();
}

uint64_t OUTLINED_FUNCTION_18_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_222DDA620();
}

void OUTLINED_FUNCTION_36_2()
{

  sub_222DC8854();
}

uint64_t OUTLINED_FUNCTION_37_3()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_45_2()
{
  result = v0;
  *(v2 - 224) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_52_3@<X0>(int a1@<W8>)
{
  *(v1 + 4) = a1;
  *(v1 + 8) = 2080;

  return sub_222DDA2A0();
}

BOOL OUTLINED_FUNCTION_54_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void *sub_222DC98E0()
{
  v1 = v0;
  sub_222DDB420();
  OUTLINED_FUNCTION_2();
  v31 = v3;
  v32 = v2;
  v4 = MEMORY[0x28223BE20](v2);
  v29 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v30 = v27 - v6;
  v7 = [objc_allocWithZone(MEMORY[0x277D47310]) init];
  v8 = sub_222DDB500();
  sub_222DCA324(v8, v9, v7);
  sub_222D9E3E4(0, &qword_27D048350, 0x277CCABB0);
  v10 = sub_222DDB700();
  [v7 setMaxAge_];

  v28 = *(type metadata accessor for LocationService(0) + 20);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v7 setSearchTimeout_];

  v12 = dispatch_semaphore_create(0);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v27[1] = v13 + 16;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  sub_222D9E3E4(0, &qword_27D048358, 0x277D477E8);
  v15 = v12;

  sub_222DDA710();

  v16 = v29;
  sub_222DDB410();
  v17 = v30;
  MEMORY[0x223DCE170](v16, v1 + v28);
  v18 = *(v31 + 8);
  v19 = v32;
  v18(v16, v32);
  sub_222DDB6E0();
  v18(v17, v19);
  if (sub_222DDB400())
  {
    if (qword_27D0475A8 != -1)
    {
      swift_once();
    }

    v20 = sub_222DDB3E0();
    __swift_project_value_buffer(v20, qword_27D04C910);
    v21 = sub_222DDB3C0();
    v22 = sub_222DDB6C0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_222D8A000, v21, v22, "could not acquire location within the specified timeout", v23, 2u);
      MEMORY[0x223DCEF40](v23, -1, -1);
    }

    return 0;
  }

  else
  {

    swift_beginAccess();
    v24 = *(v13 + 16);
    v25 = v24;
  }

  return v24;
}

double sub_222DC9CC8()
{
  v1 = v0;
  v2 = sub_222DDB3F0();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v2);
  v8 = (*(v4 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277D85188])
  {
    v9 = OUTLINED_FUNCTION_0_11();
    v10(v9);
    return OUTLINED_FUNCTION_1_6();
  }

  if (v8 == *MEMORY[0x277D85178])
  {
    v12 = OUTLINED_FUNCTION_0_11();
    v13(v12);
    v14 = OUTLINED_FUNCTION_1_6();
    v15 = 1000.0;
  }

  else if (v8 == *MEMORY[0x277D85170])
  {
    v16 = OUTLINED_FUNCTION_0_11();
    v17(v16);
    v14 = OUTLINED_FUNCTION_1_6();
    v15 = 100000.0;
  }

  else
  {
    if (v8 != *MEMORY[0x277D85168])
    {
      (*(v4 + 8))(v7, v2);
      return 9.22337204e18;
    }

    v18 = OUTLINED_FUNCTION_0_11();
    v19(v18);
    v14 = OUTLINED_FUNCTION_1_6();
    v15 = 100000000.0;
  }

  return v14 / v15;
}

uint64_t sub_222DC9E88()
{
  v0 = sub_222DDB3F0();
  __swift_allocate_value_buffer(v0, qword_27D04C8F8);
  *__swift_project_value_buffer(v0, qword_27D04C8F8) = 50;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

void sub_222DC9F18(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_222DDA750();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048360, &qword_222DDE868);
  MEMORY[0x28223BE20](v13);
  v15 = (v34 - v14);
  sub_222DCA3DC(a1, v34 - v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v12, v15, v6);
    if (qword_27D0475A8 != -1)
    {
      swift_once();
    }

    v16 = sub_222DDB3E0();
    __swift_project_value_buffer(v16, qword_27D04C910);
    v17 = *(v7 + 16);
    v35 = v12;
    v17(v10, v12, v6);
    v18 = sub_222DDB3C0();
    v19 = sub_222DDB6B0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      v36[0] = v34[0];
      *v20 = 136315138;
      sub_222DCA44C();
      v21 = sub_222DDBB00();
      v34[1] = a2;
      v23 = v22;
      v24 = *(v7 + 8);
      v24(v10, v6);
      v25 = sub_222D8F7F0(v21, v23, v36);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_222D8A000, v18, v19, "Error getting current location: %s", v20, 0xCu);
      v26 = v34[0];
      __swift_destroy_boxed_opaque_existential_0(v34[0]);
      MEMORY[0x223DCEF40](v26, -1, -1);
      MEMORY[0x223DCEF40](v20, -1, -1);
    }

    else
    {

      v24 = *(v7 + 8);
      v24(v10, v6);
    }

    sub_222DDB6F0();
    v24(v35, v6);
  }

  else
  {
    v27 = *v15;
    v28 = [objc_allocWithZone(MEMORY[0x277D4C408]) init];
    swift_beginAccess();
    v29 = *(a3 + 16);
    *(a3 + 16) = v28;

    swift_beginAccess();
    v30 = *(a3 + 16);
    if (v30)
    {
      v31 = v30;
      [v27 latitude];
      [v31 setLat_];
    }

    swift_beginAccess();
    v32 = *(a3 + 16);
    if (v32)
    {
      v33 = v32;
      [v27 longitude];
      [v33 setLng_];
    }

    sub_222DDB6F0();
  }
}

void sub_222DCA324(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_222DDB4C0();

  [a3 setDesiredAccuracy_];
}

uint64_t type metadata accessor for LocationService(uint64_t a1)
{
  result = qword_27D048370;
  if (!qword_27D048370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222DCA3DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D048360, &qword_222DDE868);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_222DCA44C()
{
  result = qword_27D048368;
  if (!qword_27D048368)
  {
    sub_222DDA750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D048368);
  }

  return result;
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

uint64_t sub_222DCA530(uint64_t a1)
{
  result = sub_222DCA5B4();
  if (v2 <= 0x3F)
  {
    result = sub_222DDB3F0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_222DCA5B4()
{
  result = qword_27D048380;
  if (!qword_27D048380)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D048380);
  }

  return result;
}

uint64_t sub_222DCA62C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v4 = sub_222D8DAFC(0, 0);
  if (!v4)
  {
    return a3(MEMORY[0x277D84F90], 0);
  }

  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_222DDD2F0;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_222DDD2F0;
  *(v7 + 32) = v5;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v9 = sub_222DDBBA0();
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xE000000000000000;
  }

  sub_222DCAFC8();
  *(v6 + 32) = sub_222DD9914(v7, v11, v12);
  a3(v6, 0);
}

uint64_t sub_222DCA7A8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v19 = sub_222DDB3B0();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_7();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v11 = sub_222DDB3E0();
  __swift_project_value_buffer(v11, qword_27D04C910);
  v12 = sub_222DDB3C0();
  v13 = sub_222DDB6B0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_222D8A000, v12, v13, "[MissingMeCardViewBuilder] Constructing punchout button for macOS.", v14, 2u);
    MEMORY[0x223DCEF40](v14, -1, -1);
  }

  sub_222DDB1B0();
  sub_222DDB460();
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a1;
  v15[4] = a2;
  sub_222DDB180();

  v16 = sub_222DDB170();
  sub_222DDB3A0();
  sub_222DDB190();

  (*(v7 + 8))(v3, v19);
  return sub_222D9E37C(v20);
}

uint64_t sub_222DCAA7C(uint64_t a1, void (*a2)(void, void), uint64_t a3, const char *a4)
{
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v6 = sub_222DDB3E0();
  __swift_project_value_buffer(v6, qword_27D04C910);
  v7 = sub_222DDB3C0();
  v8 = sub_222DDB6B0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_222D8A000, v7, v8, a4, v9, 2u);
    MEMORY[0x223DCEF40](v9, -1, -1);
  }

  sub_222DBAB24(MEMORY[0x277D84F90], 0, a2);
}

uint64_t sub_222DCAB80(uint64_t a1, uint64_t a2)
{
  v4 = sub_222DDB3B0();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_7();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  if (qword_27D0475A8 != -1)
  {
    OUTLINED_FUNCTION_3_4(&qword_27D0475A8);
  }

  v10 = sub_222DDB3E0();
  __swift_project_value_buffer(v10, qword_27D04C910);
  v11 = sub_222DDB3C0();
  v12 = sub_222DDB6B0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_222D8A000, v11, v12, "[MissingMeCardViewBuilder] Constructing punchout button for iOS.", v13, 2u);
    MEMORY[0x223DCEF40](v13, -1, -1);
  }

  sub_222DDB1B0();
  sub_222DDB460();
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_222DDB180();

  v15 = sub_222DDB170();
  sub_222DDB3A0();
  sub_222DDB190();

  (*(v6 + 8))(v2, v4);
  return sub_222D9E37C(v18);
}

uint64_t sub_222DCAE2C(uint64_t a1, void (*a2)(uint64_t, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0487F0, &unk_222DDD310);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_222DDD2F0;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_222DDD2F0;
  *(v4 + 32) = sub_222D8DE88(0x6F723A7366657270, 0xEF495249533D746FLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D047F60, &qword_222DDE000);
  v5 = sub_222DDBBA0();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  sub_222DCAFC8();
  *(v3 + 32) = sub_222DD9914(v4, v7, v8);
  a2(v3, 0);
}

uint64_t sub_222DCAF5C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_222DCB020(v0 + 56);

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

unint64_t sub_222DCAFC8()
{
  result = qword_27D048388;
  if (!qword_27D048388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D048388);
  }

  return result;
}

BOOL sub_222DCB094(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

uint64_t sub_222DCB0BC()
{
  v0 = sub_222DDB3E0();
  __swift_allocate_value_buffer(v0, qword_27D04C910);
  __swift_project_value_buffer(v0, qword_27D04C910);
  OUTLINED_FUNCTION_0_12();
  return sub_222DDB3D0();
}

uint64_t sub_222DCB118()
{
  v0 = sub_222DDB3E0();
  __swift_allocate_value_buffer(v0, qword_27D04C928);
  __swift_project_value_buffer(v0, qword_27D04C928);
  OUTLINED_FUNCTION_0_12();
  return sub_222DDB3D0();
}

uint64_t sub_222DCB174()
{
  v0 = sub_222DDB3E0();
  __swift_allocate_value_buffer(v0, qword_27D04C940);
  __swift_project_value_buffer(v0, qword_27D04C940);
  OUTLINED_FUNCTION_0_12();
  return sub_222DDB3D0();
}

uint64_t sub_222DCB204()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

uint64_t sub_222DCB268(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047B28, "|M");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_222DDA0A0();
  v7 = [a1 namePrefix];
  sub_222DDB500();
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_13();
  sub_222DDA030();
  v8 = [a1 givenName];
  sub_222DDB500();
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_13();
  sub_222DD9FE0();
  v9 = [a1 middleName];
  sub_222DDB500();
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_13();
  sub_222DDA020();
  v10 = [a1 nickname];
  sub_222DDB500();
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_13();
  sub_222DDA090();
  v11 = [a1 familyName];
  sub_222DDB500();
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_13();
  sub_222DDA000();
  v12 = [a1 nameSuffix];
  sub_222DDB500();
  OUTLINED_FUNCTION_1_8();
  OUTLINED_FUNCTION_0_13();
  sub_222DDA040();
  sub_222D8E9FC(a2, v6);
  sub_222DDA060();

  return sub_222DCB430(a2);
}

uint64_t sub_222DCB430(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479C8, &qword_222DDC758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void OUTLINED_FUNCTION_1_8()
{
}

uint64_t static PhonemeDataParser.parse(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_222DDB530();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D0475A8 != -1)
  {
    swift_once();
  }

  v8 = sub_222DDB3E0();
  __swift_project_value_buffer(v8, qword_27D04C910);
  v9 = a1;
  v10 = sub_222DDB3C0();
  v11 = sub_222DDB6B0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = a2;
    v38 = v34;
    *v12 = 136315138;
    v36 = sub_222DCBEC8(v9);
    v37 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BA8, &qword_222DDE830);
    v14 = sub_222DDB540();
    v16 = v9;
    v17 = v7;
    v18 = v5;
    v19 = v4;
    v20 = sub_222D8F7F0(v14, v15, &v38);

    *(v12 + 4) = v20;
    v4 = v19;
    v5 = v18;
    v7 = v17;
    v9 = v16;
    _os_log_impl(&dword_222D8A000, v10, v11, "[PhonemeDataParser] phonemeData: %s", v12, 0xCu);
    v21 = v34;
    __swift_destroy_boxed_opaque_existential_0(v34);
    a2 = v35;
    MEMORY[0x223DCEF40](v21, -1, -1);
    MEMORY[0x223DCEF40](v12, -1, -1);
  }

  sub_222DCBEC8(v9);
  if (v22 && (sub_222DDB520(), v23 = sub_222DDB510(), v25 = v24, , (*(v5 + 8))(v7, v4), v25 >> 60 != 15))
  {
    v31 = sub_222D8E87C();
    sub_222DCB850(v31, v32, a2);

    return sub_222D93218(v23, v25);
  }

  else
  {
    v26 = sub_222DDB3C0();
    v27 = sub_222DDB6B0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_222D8A000, v26, v27, "phonemeData string is empty", v28, 2u);
      MEMORY[0x223DCEF40](v28, -1, -1);
    }

    v29 = sub_222DDB200();
    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v29);
  }
}

uint64_t sub_222DCB810()
{
  sub_222DD9EB0();
  swift_allocObject();
  result = sub_222DD9EA0();
  qword_27D048390 = result;
  return result;
}

uint64_t sub_222DCB850@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0479D0, &unk_222DDC760);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v48 - v8;
  v10 = sub_222DDB200();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v54 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - v17;
  if (qword_27D0475C0 != -1)
  {
    swift_once();
  }

  sub_222DCBF2C();
  sub_222DD9E90();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  v52 = *(v11 + 32);
  v53 = v11 + 32;
  v52(v18, v9, v10);
  if (qword_27D0475A8 != -1)
  {
    swift_once();
  }

  v19 = sub_222DDB3E0();
  v20 = __swift_project_value_buffer(v19, qword_27D04C910);

  v21 = sub_222DDB3C0();
  v22 = sub_222DDB6B0();

  v23 = os_log_type_enabled(v21, v22);
  v51 = v16;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v50 = v20;
    v25 = v24;
    v49 = swift_slowAlloc();
    v56[1] = a4;
    v57 = v49;
    *v25 = 136315138;
    v56[0] = v55;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D047BA8, &qword_222DDE830);
    v26 = sub_222DDB540();
    v28 = v18;
    v29 = v11;
    v30 = a5;
    v31 = sub_222D8F7F0(v26, v27, &v57);

    *(v25 + 4) = v31;
    a5 = v30;
    v11 = v29;
    v18 = v28;
    _os_log_impl(&dword_222D8A000, v21, v22, "[PhonemeDataParser] fullName: %s", v25, 0xCu);
    v32 = v49;
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x223DCEF40](v32, -1, -1);
    MEMORY[0x223DCEF40](v25, -1, -1);
  }

  if (a4 && (sub_222DDB1F0() & 1) != 0)
  {
    v55 = a5;
    v33 = *(v11 + 16);
    v34 = v51;
    v33(v51, v18, v10);
    v35 = sub_222DDB3C0();
    v36 = sub_222DDB6B0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v56[0] = v50;
      *v37 = 136315138;
      v33(v54, v34, v10);
      v38 = sub_222DDB540();
      v40 = v39;
      (*(v11 + 8))(v34, v10);
      v41 = sub_222D8F7F0(v38, v40, v56);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_222D8A000, v35, v36, "[PhonemeDataParser] after: %s", v37, 0xCu);
      v42 = v50;
      __swift_destroy_boxed_opaque_existential_0(v50);
      MEMORY[0x223DCEF40](v42, -1, -1);
      MEMORY[0x223DCEF40](v37, -1, -1);
    }

    else
    {

      (*(v11 + 8))(v34, v10);
    }

    a5 = v55;
    v52(v55, v18, v10);
    v46 = 0;
  }

  else
  {
    v43 = sub_222DDB3C0();
    v44 = sub_222DDB6C0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_222D8A000, v43, v44, "[PhonemeDataParser] phonemeData checksum is invalid", v45, 2u);
      MEMORY[0x223DCEF40](v45, -1, -1);
    }

    (*(v11 + 8))(v18, v10);
    v46 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a5, v46, 1, v10);
}