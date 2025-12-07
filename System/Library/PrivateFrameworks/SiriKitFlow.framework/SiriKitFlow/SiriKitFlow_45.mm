uint64_t sub_1DCF9B390()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCF9B490()
{
  OUTLINED_FUNCTION_42();
  sub_1DCF9D1B0(*(v0 + 328), *(v0 + 336), 3);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF9B4EC()
{
  OUTLINED_FUNCTION_42();
  sub_1DCC5BF24(v0 + 208);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF9B548()
{
  OUTLINED_FUNCTION_42();
  sub_1DCF9D1B0(*(v0 + 328), *(v0 + 336), 0);
  sub_1DCC5BF24(v0 + 112);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF9B5B0()
{
  OUTLINED_FUNCTION_42();
  sub_1DCC5BF24(v0 + 16);
  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCF9B60C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v4 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v4, qword_1EDE57E00);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_50_0();
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "Authored Flow received response from child flow", v7, 2u);
    OUTLINED_FUNCTION_80();
  }

  if (*(v1 + 272) == 2)
  {
    if (v3 >> 6)
    {
      if (v3 >> 6 == 1)
      {
        sub_1DCC5F868(v2, v3);
        v8 = sub_1DD0DD8EC();
        v9 = sub_1DD0DE6DC();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = OUTLINED_FUNCTION_151();
          v11 = OUTLINED_FUNCTION_83();
          v27 = v11;
          *v10 = 136315138;
          swift_getErrorValue();
          v12 = sub_1DD0DF18C();
          v14 = sub_1DCB10E9C(v12, v13, &v27);

          *(v10 + 4) = v14;
          _os_log_impl(&dword_1DCAFC000, v8, v9, "Child flow encountered an error: %s", v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        sub_1DCC5F868(v2, v3);
        sub_1DCF998D4(v2, (v3 & 1), 3);
      }

      v24 = sub_1DD0DD8EC();
      v25 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_50_0();
        *v26 = 0;
        _os_log_impl(&dword_1DCAFC000, v24, v25, "Child flow indicated user cancelled prompt.", v26, 2u);
        OUTLINED_FUNCTION_80();
      }

      OUTLINED_FUNCTION_29_33();
    }

    else
    {
      v15 = *(v1 + 256);

      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_50_0();
        *v18 = 0;
        _os_log_impl(&dword_1DCAFC000, v16, v17, "Received a Dictionary of values from the Prompt Flow. Setting variableNames based on key names.", v18, 2u);
        OUTLINED_FUNCTION_80();
      }

      v27 = v2;
      v28 = v3;
      v19 = sub_1DD0DDE9C();
      v20 = AuthoredValueProvidingResult.extractVariables(variableNameMap:)(v19);

      v21 = v20;
      v22 = v15;
      v23 = 1;
    }

    sub_1DCF998D4(v21, v22, v23);
  }

  sub_1DD0DCF8C();
}

uint64_t sub_1DCF9BA48()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  *(v1 + 144) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v6 = sub_1DD0DB04C();
  *(v1 + 80) = v6;
  *(v1 + 88) = *(v6 - 8);
  *(v1 + 96) = swift_task_alloc();
  *(v1 + 104) = type metadata accessor for OutputGenerationManifest(0);
  *(v1 + 112) = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF9BB34()
{
  OUTLINED_FUNCTION_42();
  __swift_project_boxed_opaque_existential_1((*(v0 + 72) + 136), *(*(v0 + 72) + 160));
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1DCF9BBDC;
  v2 = *(v0 + 64);
  v3 = *(v0 + 144);

  return sub_1DCC710FC(v3, v2);
}

uint64_t sub_1DCF9BBDC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1DCF9BCDC()
{
  __swift_project_boxed_opaque_existential_1((v0[9] + 16), *(v0[9] + 40));
  if (qword_1EDE4EBE0 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v3 = qword_1EDE4EBE8;
  v4 = unk_1EDE4EBF0;
  *(v2 + v1[6]) = 0;
  *(v2 + v1[7]) = 0;
  v14 = v3;
  *(v2 + v1[9]) = 256;
  *(v2 + v1[11]) = 0;
  type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_34_37();
  v5 = (v2 + v1[14]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (v2 + v1[15]);
  *v6 = 0;
  v6[1] = 0;
  *(v2 + v1[16]) = 0;
  *(v2 + v1[18]) = 0;
  v7 = v2 + v1[19];
  *v7 = 0;
  *(v7 + 4) = 512;
  *(v2 + v1[20]) = 0;
  *(v2 + v1[21]) = 0;
  *(v2 + v1[22]) = 0;
  *(v2 + v1[23]) = 0;
  *(v2 + v1[24]) = 0;
  *(v2 + v1[25]) = 0;
  v8 = (v2 + v1[26]);
  *v8 = 0;
  v8[1] = 0;
  *(v2 + v1[27]) = 0;
  *(v2 + v1[28]) = MEMORY[0x1E69E7CC0];
  v9 = v1[29];
  v10 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_2();
  (*(v11 + 104))(v2 + v9, v10);
  v12 = v1[30];
  v13 = sub_1DD0DD10C();
  __swift_storeEnumTagSinglePayload(v2 + v12, 1, 1, v13);
  *(v2 + v1[31]) = 2;
  *v2 = v14;
  v2[1] = v4;

  sub_1DCB67914();
}

void sub_1DCF9C030()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = *(v0 + 136);
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_33_25(4.8149e-34);
    v6 = sub_1DD0DF18C();
    v8 = sub_1DCB10E9C(v6, v7, &v13);

    *(v1 + 4) = v8;
    OUTLINED_FUNCTION_88(&dword_1DCAFC000, v9, v10, "Unable to generate Error response due to unexpected error: %s. Completing with unhandled error.");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_92_0();
  }

  v11 = *(v0 + 136);
  v12 = v11;
  sub_1DCF998D4(v11, 0, 3);
}

uint64_t sub_1DCF9C1A8(uint64_t a1, uint64_t a2)
{
  v3[47] = a2;
  v3[48] = v2;
  v3[46] = a1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF9C1C4);
}

uint64_t sub_1DCF9C1C4()
{
  v27 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = *(v0 + 376);
  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  sub_1DCC5BEEC(v1, (v0 + 16));
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_12_42(v4))
  {
    v5 = OUTLINED_FUNCTION_151();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_93();
    *v5 = 136315138;
    v6 = sub_1DCC51DD8();
    v8 = v7;
    sub_1DCC5BF24(v0 + 16);
    v9 = sub_1DCB10E9C(v6, v8, &v26);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "Handling next AuthoredFlowRunner action: %s", v5, 0xCu);
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_62();
  }

  else
  {

    sub_1DCC5BF24(v0 + 16);
  }

  sub_1DCC5BEEC(*(v0 + 376), (v0 + 112));
  switch(*(v0 + 200))
  {
    case 1:
      v22 = *(v0 + 128);
      *(v0 + 328) = *(v0 + 112);
      *(v0 + 344) = v22;
      *(v0 + 360) = *(v0 + 144);
      v11 = swift_task_alloc();
      *(v0 + 392) = v11;
      *v11 = v0;
      v12 = sub_1DCF9C4F4;
      goto LABEL_12;
    case 2:
      v16 = *(v0 + 128);
      *(v0 + 208) = *(v0 + 112);
      *(v0 + 224) = v16;
      *(v0 + 240) = *(v0 + 144);
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 432) = v17;
      *v17 = v18;
      v17[1] = sub_1DCF9C85C;
      goto LABEL_13;
    case 3:
      OUTLINED_FUNCTION_25_31();
      v19 = *(v0 + 112);
      v20 = *(v0 + 120);
      v21 = v19;
      sub_1DCF998D4(v19, v20, 3);
    case 4:
      OUTLINED_FUNCTION_25_31();
      OUTLINED_FUNCTION_29_33();
      sub_1DCF998D4(v13, v14, v15);
    default:
      *(v0 + 408) = *(v0 + 192);
      v10 = *(v0 + 128);
      *(v0 + 248) = *(v0 + 112);
      *(v0 + 264) = v10;
      *(v0 + 280) = *(v0 + 144);
      sub_1DCAFF9E8((v0 + 152), v0 + 288);
      v11 = swift_task_alloc();
      *(v0 + 416) = v11;
      *v11 = v0;
      v12 = sub_1DCF9C670;
LABEL_12:
      v11[1] = v12;
LABEL_13:
      OUTLINED_FUNCTION_48();

      return sub_1DCF9CB60(v23);
  }
}

uint64_t sub_1DCF9C4F4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 400) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF9C5EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_25_31();
  OUTLINED_FUNCTION_29_33();
  sub_1DCF998D4(v0, v1, v2);
}

uint64_t sub_1DCF9C670()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v3 + 424) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCF9C778()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_31();
  sub_1DCF998D4(v0, 0, 2);
}

uint64_t sub_1DCF9C85C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 440) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCF9C954()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_25_31();
  OUTLINED_FUNCTION_29_33();
  sub_1DCF998D4(v0, v1, v2);
}

uint64_t sub_1DCF9C9D4()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB0E9D8(v0 + 328, &qword_1ECCA1810, &dword_1DD0E0F78);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF9CA40()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB0E9D8(v0 + 248, &qword_1ECCA1810, &dword_1DD0E0F78);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 288));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF9CAB4()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB0E9D8(v0 + 208, &qword_1ECCA1810, &dword_1DD0E0F78);
  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCF9CB20(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = v1;
  sub_1DCF9B60C(&v2);
}

uint64_t sub_1DCF9CB60(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCF9CB78);
}

uint64_t sub_1DCF9CB78()
{
  OUTLINED_FUNCTION_33();
  sub_1DCF9D4F8(*(v0 + 96), v0 + 56);
  if (*(v0 + 80))
  {
    sub_1DCAFF9E8((v0 + 56), v0 + 16);
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
      v4 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v4);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Output was provided. Publishing...");
      OUTLINED_FUNCTION_62();
    }

    v7 = *(v0 + 104);

    v8 = v7[15];
    v9 = v7[16];
    __swift_project_boxed_opaque_existential_1(v7 + 12, v8);
    v14 = (*(v9 + 8) + **(v9 + 8));
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 112) = v10;
    *v10 = v11;
    v10[1] = sub_1DCF9CD80;

    return v14(v0 + 16, v8, v9);
  }

  else
  {
    sub_1DCB0E9D8(v0 + 56, &qword_1ECCA1810, &dword_1DD0E0F78);
    OUTLINED_FUNCTION_43();

    return v13();
  }
}

uint64_t sub_1DCF9CD80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCF9CE78()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1DCF9CED0()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCF9CF38(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
    sub_1DD0DEC1C();

    strcpy(v8, ".unsupported(");
    HIWORD(v8[1]) = -4864;
    MEMORY[0x1E12A6780](a1, a2);
  }

  else
  {
    sub_1DD0DEC1C();

    v8[0] = 0xD000000000000011;
    v8[1] = 0x80000001DD1268D0;
    v6 = sub_1DCF997A4(a1, a2, a3);
    MEMORY[0x1E12A6780](v6);
  }

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return v8[0];
}

uint64_t sub_1DCF9D044()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 216));
  sub_1DCF9D1B0(*(v0 + 256), *(v0 + 264), *(v0 + 272));
  return v0;
}

uint64_t sub_1DCF9D098()
{
  sub_1DCF9D044();

  return swift_deallocClassInstance();
}

void sub_1DCF9D0F0(void *a1, void *a2, char a3)
{
  switch(a3)
  {
    case 0:

      sub_1DD0DCF8C();
    case 1:

      goto LABEL_6;
    case 2:
LABEL_6:

      break;
    case 3:

      v3 = a1;
      break;
    default:
      return;
  }
}

void sub_1DCF9D1B0(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:

      break;
    case 1:

      goto LABEL_6;
    case 2:
LABEL_6:

      break;
    case 3:

      break;
    default:
      return;
  }
}

uint64_t getEnumTagSinglePayload for SiriKitAuthoredFlow.State(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t storeEnumTagSinglePayload for SiriKitAuthoredFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1DCF9D328(uint64_t a1)
{
  if (*(a1 + 16) <= 3u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_1DCF9D340(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1DCF9D384()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB47434;

  return sub_1DCF99A0C();
}

uint64_t sub_1DCF9D440()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCF9A090();
}

uint64_t sub_1DCF9D4F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1810, &dword_1DD0E0F78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCF9D570()
{
  result = qword_1ECCAB508;
  if (!qword_1ECCAB508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB508);
  }

  return result;
}

uint64_t sub_1DCF9D5C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

double sub_1DCF9D61C(void *a1, void *a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    sub_1DCF9D0F0(a1, a2, a3);
  }

  return result;
}

void sub_1DCF9D63C(void *a1, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
  }

  else
  {
    sub_1DCF9D1B0(a1, a2, a3);
  }
}

uint64_t sub_1DCF9D64C(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t))
{
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  a4(*a2, v6, v7);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  return a1;
}

uint64_t *sub_1DCF9D6C8(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 16);
  a4(*a2, v8, v9);
  v10 = *a1;
  v11 = a1[1];
  *a1 = v7;
  a1[1] = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v9;
  a5(v10, v11, v12);
  return a1;
}

uint64_t *sub_1DCF9D74C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2 + 16);
  v6 = *a1;
  v7 = a1[1];
  *a1 = *a2;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  a4(v6, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for SiriKitAuthoredFlow.AuthoredFlowError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1F && *(a1 + 17))
    {
      v2 = *a1 + 30;
    }

    else
    {
      v2 = ((*(a1 + 16) >> 2) & 0x1E | (*(a1 + 16) >> 7)) ^ 0x1F;
      if (v2 >= 0x1E)
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

uint64_t storeEnumTagSinglePayload for SiriKitAuthoredFlow.AuthoredFlowError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 16) = 0;
    *result = a2 - 31;
    *(result + 8) = 0;
    if (a3 >= 0x1F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1DCF9D884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for SiriKitEventPayload(0);
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = v29 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = v29 - v21;
  (*(a7 + 32))(v31, a6, a7);
  v23 = sub_1DD0DD2FC();
  (*(*(v23 - 8) + 16))(v22, a3, v23);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
  v30 = 0;
  memset(v29, 0, sizeof(v29));
  sub_1DCE0669C(25, 10);
  sub_1DCE0669C(25, 10);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
  *v18 = 25;
  *(v18 + 1) = 0x54746E6572727543;
  *(v18 + 2) = 0xEB000000006B7361;
  v18[24] = 29;
  sub_1DCB28B08(v29, (v18 + 32), &unk_1ECCA3280, &unk_1DD0E23D0);
  *(v18 + 9) = a4;
  sub_1DCB28B08(v22, &v18[v24], &qword_1ECCA2278, &qword_1DD0E4830);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SiriKitEvent(0);
  sub_1DCB22FCC(v18, v15);

  v25 = SiriKitEvent.__allocating_init(_:builder:)(v15, 0);
  sub_1DCB22AA4(v18);
  v26 = v32;
  v27 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  (*(v27 + 8))(v25, v26, v27);

  sub_1DCB16D50(v29, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16D50(v22, &qword_1ECCA2278, &qword_1DD0E4830);
  return __swift_destroy_boxed_opaque_existential_1Tm(v31);
}

uint64_t SiriKitConfirmationState.rawValue.getter()
{
  result = 0x5445534E55;
  switch(*v0)
  {
    case 1:
      result = 0x454C4C45434E4143;
      break;
    case 2:
      result = 0x454D5249464E4F43;
      break;
    case 3:
      result = 0x44455443454A4552;
      break;
    default:
      return result;
  }

  return result;
}

SiriKitFlow::SiriKitConfirmationState_optional __swiftcall SiriKitConfirmationState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DEE9C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1DCF9DCE4()
{
  result = qword_1ECCAB510;
  if (!qword_1ECCAB510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB510);
  }

  return result;
}

uint64_t sub_1DCF9DD5C@<X0>(uint64_t *a1@<X8>)
{
  result = SiriKitConfirmationState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

double SiriKitDisambiguationItem.__allocating_init(components:utterance:allowLineWrapForDisplayText:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_0_119();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 48) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = 0;
  return OUTLINED_FUNCTION_1_128(v8);
}

uint64_t sub_1DCF9DF4C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SiriKitDisambiguationItemComponent.Builder();
  v4 = swift_allocObject();
  sub_1DCF9DFA8(a1, a2);

  return v4;
}

uint64_t sub_1DCF9DFA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  *(v2 + 80) = 1;
  swift_bridgeObjectRetain_n();
  return v2;
}

void sub_1DCF9DFE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  sub_1DD0DCF8C();
}

void sub_1DCF9E02C(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  sub_1DD0DCF8C();
}

void sub_1DCF9E074(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  sub_1DD0DCF8C();
}

void sub_1DCF9E0BC(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCF9E130()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v8 = *(v0 + 64);
  v7 = *(v0 + 72);
  v9 = *(v0 + 80);
  v12 = *(v0 + 81);
  type metadata accessor for SiriKitDisambiguationItemComponent();
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v1;
  *(v10 + 32) = v4;
  *(v10 + 40) = v3;
  *(v10 + 48) = v6;
  *(v10 + 56) = v5;
  *(v10 + 64) = v8;
  *(v10 + 72) = v7;
  *(v10 + 80) = v9;
  *(v10 + 81) = v12;

  return v10;
}

uint64_t SiriKitDisambiguationItemComponent.Builder.__deallocating_deinit()
{
  SiriKitDisambiguationItemComponent.Builder.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s11SiriKitFlow0aB27DisambiguationItemComponentC7BuilderCfd_0()
{

  return v0;
}

uint64_t ImageSize.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

void *SiriKitDisambiguationItem.directInvocation.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void *SiriKitDisambiguationItem.displayImage.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void SiriKitDisambiguationItem.__allocating_init(components:directInvocation:allowLineWrapForDisplayText:)(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_0_119();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  *(v6 + 48) = a3;
  OUTLINED_FUNCTION_1_128(v6);
  *(v7 + 32) = v8;
  *(v7 + 40) = a2;
}

uint64_t SiriKitDisambiguationItem.init(components:directInvocation:allowLineWrapForDisplayText:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 48) = a3;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 32) = 0xE000000000000000;
  *(v3 + 40) = a2;
  return OUTLINED_FUNCTION_96_2();
}

uint64_t SiriKitDisambiguationItem.init(components:utterance:allowLineWrapForDisplayText:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 48) = a4;
  *(v4 + 32) = a3;
  *(v4 + 40) = 0;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  return OUTLINED_FUNCTION_96_2();
}

uint64_t SiriKitDisambiguationItem.__allocating_init(components:displayImage:utterance:allowLineWrapForDisplayText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  OUTLINED_FUNCTION_0_119();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a3;
  *(result + 48) = a5;
  *(result + 32) = a4;
  *(result + 40) = 0;
  *(result + 56) = a2;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  return result;
}

uint64_t SiriKitDisambiguationItem.init(components:displayImage:utterance:allowLineWrapForDisplayText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  *(v5 + 48) = a5;
  *(v5 + 32) = a4;
  *(v5 + 40) = 0;
  *(v5 + 56) = a2;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  return OUTLINED_FUNCTION_96_2();
}

uint64_t SiriKitDisambiguationItem.__allocating_init(components:image:directInvocation:allowLineWrapForDisplayText:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  OUTLINED_FUNCTION_0_119();
  v8 = swift_allocObject();
  SiriKitDisambiguationItem.init(components:image:directInvocation:allowLineWrapForDisplayText:)(a1, a2, a3, v4);
  return v8;
}

uint64_t SiriKitDisambiguationItem.init(components:image:directInvocation:allowLineWrapForDisplayText:)(uint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
  v5 = *a2;
  v6 = *(a2 + 16);
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  *(v4 + 48) = a4;
  *(v4 + 32) = 0xE000000000000000;
  *(v4 + 40) = a3;
  switch(v6)
  {
    case 1:
      *(v4 + 80) = v5;
      *(v4 + 64) = 0;
      *(v4 + 72) = 0;
      *(v4 + 56) = 0;
      break;
    case 2:
      *(v4 + 80) = 0;
      *(v4 + 56) = 0;
      *(v4 + 64) = v5;
      break;
    case 3:
      *(v4 + 72) = 0u;
      *(v4 + 56) = 0u;
      break;
    default:
      *(v4 + 56) = v5;
      *(v4 + 72) = 0;
      *(v4 + 80) = 0;
      *(v4 + 64) = 0;
      break;
  }

  return OUTLINED_FUNCTION_96_2();
}

uint64_t SiriKitDisambiguationItem.__allocating_init(components:image:directInvocation:utterance:allowLineWrapForDisplayText:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  OUTLINED_FUNCTION_0_119();
  v12 = swift_allocObject();
  SiriKitDisambiguationItem.init(components:image:directInvocation:utterance:allowLineWrapForDisplayText:)(a1, a2, a3, a4, a5, v6);
  return v12;
}

uint64_t SiriKitDisambiguationItem.init(components:image:directInvocation:utterance:allowLineWrapForDisplayText:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = *a2;
  v8 = *(a2 + 16);
  *(v6 + 16) = a1;
  *(v6 + 24) = a4;
  *(v6 + 48) = a6;
  *(v6 + 32) = a5;
  *(v6 + 40) = a3;
  switch(v8)
  {
    case 1:
      *(v6 + 80) = v7;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      *(v6 + 56) = 0;
      break;
    case 2:
      *(v6 + 80) = 0;
      *(v6 + 56) = 0;
      *(v6 + 64) = v7;
      break;
    case 3:
      *(v6 + 72) = 0u;
      *(v6 + 56) = 0u;
      break;
    default:
      *(v6 + 56) = v7;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 64) = 0;
      break;
  }

  return OUTLINED_FUNCTION_96_2();
}

uint64_t SiriKitDisambiguationItem.__allocating_init(components:image:utterance:allowLineWrapForDisplayText:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  OUTLINED_FUNCTION_0_119();
  v10 = swift_allocObject();
  SiriKitDisambiguationItem.init(components:image:utterance:allowLineWrapForDisplayText:)(a1, a2, a3, a4, v5);
  return v10;
}

uint64_t SiriKitDisambiguationItem.init(components:image:utterance:allowLineWrapForDisplayText:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *a2;
  v7 = *(a2 + 16);
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;
  *(v5 + 48) = a5;
  *(v5 + 32) = a4;
  *(v5 + 40) = 0;
  switch(v7)
  {
    case 1:
      *(v5 + 80) = v6;
      *(v5 + 64) = 0;
      *(v5 + 72) = 0;
      *(v5 + 56) = 0;
      break;
    case 2:
      *(v5 + 80) = 0;
      *(v5 + 56) = 0;
      *(v5 + 64) = v6;
      break;
    case 3:
      *(v5 + 72) = 0u;
      *(v5 + 56) = 0u;
      break;
    default:
      *(v5 + 56) = v6;
      *(v5 + 72) = 0;
      *(v5 + 80) = 0;
      *(v5 + 64) = 0;
      break;
  }

  return OUTLINED_FUNCTION_96_2();
}

double SiriKitDisambiguationItem.__allocating_init(components:optionalDisplayImage:utterance:allowLineWrapForDisplayText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  type metadata accessor for SiriKitDisambiguationItem();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 48) = a5;
  *(v10 + 40) = 0;
  if (!a2)
  {
    return OUTLINED_FUNCTION_1_128(v10);
  }

  *(v10 + 56) = a2;
  *(v10 + 64) = 0;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  return result;
}

unint64_t sub_1DCF9E828(unint64_t a1, char a2)
{
  v2 = a1;
  if ((a2 & 1) == 0)
  {

    return v2;
  }

  if (a1 >> 62)
  {
    v3 = OUTLINED_FUNCTION_5_107();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  result = sub_1DD0DED0C();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) == 0)
      {
        sub_1DD0DCF8C();
      }

      MEMORY[0x1E12A72C0](v5++, v2);
      sub_1DCF9ED40();

      sub_1DD0DECDC();
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
    }

    while (v3 != v5);
    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCF9E948()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = OUTLINED_FUNCTION_5_107();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 1)
  {
    return 0;
  }

  sub_1DCB35460(0, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) == 0)
  {
    sub_1DD0DCF8C();
  }

  return MEMORY[0x1E12A72C0](0, v1);
}

uint64_t sub_1DCF9E9C0()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = OUTLINED_FUNCTION_5_107();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 2)
  {
    return 0;
  }

  sub_1DCB35460(1, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) == 0)
  {
    sub_1DD0DCF8C();
  }

  return MEMORY[0x1E12A72C0](1, v1);
}

uint64_t sub_1DCF9EA38()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = OUTLINED_FUNCTION_5_107();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 < 3)
  {
    return 0;
  }

  sub_1DCB35460(2, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) == 0)
  {
    sub_1DD0DCF8C();
  }

  return MEMORY[0x1E12A72C0](2, v1);
}

uint64_t sub_1DCF9EAB0(char a1)
{
  v3 = *(v1 + 16);
  result = sub_1DCB08B14(v3);
  v5 = result;
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
      return 0;
    }

    if ((v3 & 0xC000000000000001) == 0)
    {
      break;
    }

    result = MEMORY[0x1E12A72C0](i, v3);
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_17;
    }

    if ((a1 & 1) != 0 && (*(result + 80) & 1) == 0)
    {
    }

    else
    {
      OUTLINED_FUNCTION_6_74();
      if (v7)
      {
        MEMORY[0x1E12A6780](0x209480E220, 0xA500000000000000);
      }

      v8 = sub_1DCF9DEB4(a1 & 1);
      MEMORY[0x1E12A6780](v8);
    }
  }

  if (i < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    sub_1DD0DCF8C();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DCF9ED40()
{
  v1 = v0;
  v2 = v0[2];
  *&v18 = MEMORY[0x1E69E7CC0];
  result = sub_1DCB08B14(v2);
  v4 = result;
  for (i = 0; v4 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) == 0)
    {
      if (i < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        sub_1DD0DCF8C();
      }

      goto LABEL_17;
    }

    result = MEMORY[0x1E12A72C0](i, v2);
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }

    if (*(result + 80))
    {
      sub_1DD0DECDC();
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      result = sub_1DD0DECEC();
    }

    else
    {
    }
  }

  v6 = v18;
  v7 = v1[9];
  if (v7)
  {
    *&v18 = v1[8];
    *(&v18 + 1) = v7;
    v19 = 2;
    v8 = v1[3];
    v11 = v1 + 4;
    v9 = v1[4];
    v10 = v11[1];
    type metadata accessor for SiriKitDisambiguationItem();
    v12 = swift_allocObject();
    SiriKitDisambiguationItem.init(components:image:directInvocation:utterance:allowLineWrapForDisplayText:)(v6, &v18, v10, v8, v9, 0);
  }

  else
  {
    v13 = v1[3];
    v15 = v1 + 4;
    v14 = v1[4];
    v10 = v15[1];
    type metadata accessor for SiriKitDisambiguationItem();
    v12 = swift_allocObject();
    *(v12 + 16) = v18;
    *(v12 + 24) = v13;
    *(v12 + 48) = 0;
    OUTLINED_FUNCTION_1_128(v12);
    *(v16 + 32) = v14;
    *(v16 + 40) = v10;
  }

  v17 = v10;

  return v12;
}

uint64_t sub_1DCF9EEEC()
{
  sub_1DD0DEC1C();

  v0 = sub_1DD0DF03C();
  MEMORY[0x1E12A6780](v0);

  MEMORY[0x1E12A6780](8224092, 0xE300000000000000);
  return 0x5C1B237374747B40;
}

uint64_t SiriKitDisambiguationItem.deinit()
{

  return v0;
}

uint64_t SiriKitDisambiguationItem.__deallocating_deinit()
{
  SiriKitDisambiguationItem.deinit();
  OUTLINED_FUNCTION_0_119();

  return swift_deallocClassInstance();
}

unint64_t sub_1DCF9F014()
{
  result = qword_1ECCAB518;
  if (!qword_1ECCAB518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCAB518);
  }

  return result;
}

double sub_1DCF9F280(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
    v3 = a1;
  }

  return result;
}

void sub_1DCF9F2BC(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 1)
  {
  }

  else if (!a3)
  {
  }
}

uint64_t sub_1DCF9F2E8(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCF9F280(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for Image(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  sub_1DCF9F280(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  sub_1DCF9F2BC(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for Image(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  sub_1DCF9F2BC(v4, v5, v6);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ImageSize(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t SiriKitDisambiguationList.__allocating_init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 33) = a4;
  return result;
}

_OWORD *SiriKitDisambiguationItemPair.init(rawItem:formattedItem:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_1DCB20B30(a1, (a3 + 8));
  *a3 = a2;
  return result;
}

uint64_t sub_1DCF9F6C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v38 = &v38 - v6;
  v7 = 0;
  v8 = *(v0 + 16);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v7 == v9)
    {
      v11 = 0;
      v12 = 0uLL;
      v7 = v9;
      v13 = 0uLL;
    }

    else
    {
      if (v7 >= *(v8 + 16))
      {
        goto LABEL_24;
      }

      *&v42 = v7;
      sub_1DCB0DF6C(v8 + 32 + 32 * v7, &v42 + 8);
      v12 = v42;
      v13 = v43;
      ++v7;
      v11 = v44;
    }

    v45[0] = v12;
    v45[1] = v13;
    v46 = v11;
    if (!v11)
    {
      return v10;
    }

    v40 = v12;
    sub_1DCB20B30((v45 + 8), v41);
    v14 = *(v0 + 24);
    if (v14 >> 62)
    {
      v15 = sub_1DD0DEB3C();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v40;
    if (v40 >= v15)
    {
      goto LABEL_25;
    }

    sub_1DCB0DF6C(v41, &v42 + 8);
    if ((v14 & 0xC000000000000001) == 0)
    {
      if ((v16 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v16 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        sub_1DD0DCF8C();
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v25 = sub_1DD0DD8FC();
      v26 = __swift_project_value_buffer(v25, qword_1EDE57E00);
      v27 = *(v25 - 8);
      v28 = v38;
      (*(v27 + 16))(v38, v26, v25);
      __swift_storeEnumTagSinglePayload(v28, 0, 1, v25);
      v29 = v28;
      v30 = v39;
      sub_1DCBCF6C8(v29, v39);
      if (__swift_getEnumTagSinglePayload(v30, 1, v25) == 1)
      {
        sub_1DCBCF738(v39);
      }

      else
      {
        v31 = sub_1DD0DD8EC();
        v32 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          *&v42 = v34;
          *v33 = 136315650;
          v35 = sub_1DD0DEC3C();
          v37 = sub_1DCB10E9C(v35, v36, &v42);

          *(v33 + 4) = v37;
          *(v33 + 12) = 2048;
          *(v33 + 14) = 42;
          *(v33 + 22) = 2080;
          *(v33 + 24) = sub_1DCB10E9C(0xD00000000000004DLL, 0x80000001DD126B10, &v42);
          _os_log_impl(&dword_1DCAFC000, v31, v32, "FatalError at %s:%lu - %s", v33, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1E12A8390](v34, -1, -1);
          MEMORY[0x1E12A8390](v33, -1, -1);
        }

        (*(v27 + 8))(v39, v25);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004DLL, 0x80000001DD126B10);
    }

    *&v42 = MEMORY[0x1E12A72C0](v16, v14);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DCE18D60();
      v10 = v22;
    }

    v18 = *(v10 + 16);
    v17 = *(v10 + 24);
    if (v18 >= v17 >> 1)
    {
      OUTLINED_FUNCTION_21_0(v17);
      sub_1DCE18D60();
      v10 = v23;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    *(v10 + 16) = v18 + 1;
    v19 = v10 + 40 * v18;
    v20 = v42;
    v21 = v43;
    *(v19 + 64) = v44;
    *(v19 + 32) = v20;
    *(v19 + 48) = v21;
  }
}

uint64_t SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 33) = a4;
  return v4;
}

uint64_t SiriKitDisambiguationList.__allocating_init<A>(rawItems:itemConverter:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  v12 = sub_1DD0DEDAC();
  v19[7] = a1;
  v19[2] = a6;
  v19[3] = a2;
  v19[4] = a3;
  v13 = sub_1DD0DE40C();
  v14 = type metadata accessor for SiriKitDisambiguationItem();
  WitnessTable = swift_getWitnessTable();
  v17 = sub_1DCCEFBC4(sub_1DCF9FCC4, v19, v13, v14, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v16);

  type metadata accessor for SiriKitDisambiguationList();
  result = swift_allocObject();
  *(result + 16) = v12;
  *(result + 24) = v17;
  *(result + 32) = a4;
  *(result + 33) = a5;
  return result;
}

uint64_t sub_1DCF9FCC4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 24))();
  *a1 = result;
  return result;
}

void sub_1DCF9FD28(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1DCFA0018(*(v1 + 24), a1);
  if (sub_1DCB08B14(v3) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
    *(swift_allocObject() + 16) = xmmword_1DD0E07C0;
    sub_1DCB35460(0, (v3 & 0xC000000000000001) == 0, v3);
    if ((v3 & 0xC000000000000001) == 0)
    {
      sub_1DD0DCF8C();
    }

    MEMORY[0x1E12A72C0](0, v3);

    sub_1DCF9EBDC(v2 & 1);
  }

  type metadata accessor for SiriKitDisambiguationList();
  sub_1DCFA0554(v3, v2 & 1);
  v5 = v4;

  v6 = sub_1DCB08B14(v5);
  if (v6)
  {
    v7 = v6;
    sub_1DCB38954();
    if ((v7 & 0x8000000000000000) == 0)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12A72C0](0, v5);
        sub_1DCF9EBDC(v2 & 1);
      }

      sub_1DD0DCF8C();
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1DCF9FF44(char a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  type metadata accessor for SiriKitDisambiguationItem();
  v5 = sub_1DCF9E828(v4, a1);
  type metadata accessor for SiriKitDisambiguationList();
  v6 = sub_1DCFA0958(v5, 1);
  v7 = sub_1DCFA0958(v4, 0);
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  if (v7 < v6)
  {

    return 1;
  }

  if (*(v2 + 33) == 1)
  {
    v9 = sub_1DCFA0B08(v5);

    if (v9)
    {
      return 1;
    }

    sub_1DCFA0BEC(v4, 1);
    return v10 & 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

uint64_t sub_1DCFA0018(unint64_t a1, char a2)
{
  LOBYTE(v2) = a2;
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_76;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v4 <= 1)
  {
LABEL_68:

    return v3;
  }

  sub_1DCB35460(0, (v3 & 0xC000000000000001) == 0, v3);
  v37 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) == 0)
  {
    sub_1DD0DCF8C();
  }

  MEMORY[0x1E12A72C0](0, v3);
  v5 = sub_1DCF9E948();

  v36 = v4;
  if (v5)
  {
    v6 = sub_1DCF9DF00(v2 & 1);
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = sub_1DCB08B14(v3);
  for (i = 0; v9 != i; ++i)
  {
    if (!v37)
    {
      if (i < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        sub_1DD0DCF8C();
      }

      goto LABEL_75;
    }

    MEMORY[0x1E12A72C0](i, v3);
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      v4 = sub_1DD0DEB3C();
      goto LABEL_3;
    }

    if (!sub_1DCF9E948())
    {
      goto LABEL_26;
    }

    v11 = sub_1DCF9DF00(v2 & 1);
    v13 = v12;

    if (v6 == v11 && v8 == v13)
    {
    }

    else
    {
      v15 = sub_1DD0DF0AC();

      if ((v15 & 1) == 0)
      {
LABEL_26:

        goto LABEL_68;
      }
    }

    v16 = sub_1DCF9E9C0();

    if (!v16)
    {

      goto LABEL_68;
    }
  }

  v38 = MEMORY[0x1E69E7CC0];
  sub_1DD0DED0C();
  v2 = 0;
  while (1)
  {
    if (!v37)
    {
      sub_1DD0DCF8C();
    }

    v17 = MEMORY[0x1E12A72C0](v2, v3);
    v18 = v17[2];
    if (v18 >> 62)
    {
      result = sub_1DD0DEB3C();
      if (result < 1)
      {
        goto LABEL_79;
      }

      v19 = result;
      result = sub_1DD0DEB3C();
      if (result < 1)
      {
        goto LABEL_80;
      }

      if (sub_1DD0DEB3C() < v19)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_71;
      }
    }

    if ((v18 & 0xC000000000000001) == 0 || v19 == 1)
    {
    }

    else
    {
      type metadata accessor for SiriKitDisambiguationItemComponent();

      v21 = 1;
      do
      {
        v22 = v21 + 1;
        sub_1DD0DEC4C();
        v21 = v22;
      }

      while (v19 != v22);
    }

    if (v18 >> 62)
    {

      sub_1DD0DEE4C();
      v24 = v25;
    }

    else
    {
      v23 = (2 * v19) | 1;
      v24 = 1;
    }

    v26 = v23 >> 1;
    if ((v23 & 1) == 0)
    {
      v27 = v26 - v24;
      if (__OFSUB__(v26, v24))
      {
        goto LABEL_73;
      }

      if (v27)
      {
        goto LABEL_46;
      }

LABEL_62:
      v28 = MEMORY[0x1E69E7CC0];
LABEL_63:
      v32 = v36;
LABEL_64:
      swift_unknownObjectRelease();
      goto LABEL_65;
    }

    sub_1DD0DF0DC();
    swift_unknownObjectRetain_n();
    v30 = swift_dynamicCastClass();
    if (!v30)
    {
      swift_unknownObjectRelease();
      v30 = MEMORY[0x1E69E7CC0];
    }

    v31 = *(v30 + 16);

    v27 = v26 - v24;
    if (__OFSUB__(v26, v24))
    {
      goto LABEL_74;
    }

    if (v31 != v27)
    {
      break;
    }

    v28 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v32 = v36;
    if (!v28)
    {
      v28 = MEMORY[0x1E69E7CC0];
      goto LABEL_64;
    }

LABEL_65:
    ++v2;
    v34 = v17[3];
    v35 = v17[4];

    type metadata accessor for SiriKitDisambiguationItem();
    swift_allocObject();
    SiriKitDisambiguationItem.init(components:utterance:allowLineWrapForDisplayText:)(v28, v34, v35, 0);
    sub_1DD0DECDC();
    sub_1DD0DED1C();
    sub_1DD0DED2C();
    sub_1DD0DECEC();
    if (v2 == v32)
    {
      return v38;
    }
  }

  swift_unknownObjectRelease();
  if (!v27)
  {
    goto LABEL_62;
  }

LABEL_46:
  if (v27 < 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    v28 = swift_allocObject();
    v29 = _swift_stdlib_malloc_size(v28);
    v28[2] = v27;
    v28[3] = (2 * ((v29 - 32) / 8)) | 1;
  }

  if (v24 != v26)
  {
    type metadata accessor for SiriKitDisambiguationItemComponent();
    swift_arrayInitWithCopy();
    goto LABEL_63;
  }

  result = swift_unknownObjectRelease();
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
  return result;
}

void sub_1DCFA0554(uint64_t a1, int a2)
{
  v45 = a2;
  v3 = sub_1DCB08B14(a1);
  v4 = 0;
  v44 = 0;
  v5 = a1 & 0xC000000000000001;
  v6 = MEMORY[0x1E69E7CC0];
  v46 = MEMORY[0x1E69E7CC0];
  while (v3 != v4)
  {
    if (!v5)
    {
      if (v4 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        sub_1DD0DCF8C();
      }

LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    MEMORY[0x1E12A72C0](v4, a1);
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    v8 = sub_1DCF9E948();

    ++v4;
    if (v8)
    {
      v9 = sub_1DCF9DF00(v45 & 1);
      v11 = v10;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DCB34108(0, *(v46 + 16) + 1, 1, v46);
        v46 = v16;
      }

      v13 = *(v46 + 16);
      v12 = *(v46 + 24);
      if (v13 >= v12 >> 1)
      {
        v17 = OUTLINED_FUNCTION_21_0(v12);
        sub_1DCB34108(v17, v13 + 1, 1, v46);
        v46 = v18;
      }

      v14 = v46;
      *(v46 + 16) = v13 + 1;
      v15 = v14 + 16 * v13;
      *(v15 + 32) = v9;
      *(v15 + 40) = v11;
      v4 = v7;
    }
  }

  v19 = 0;
  v48 = v6;
  v41 = xmmword_1DD0E15D0;
  while (1)
  {
    if (v3 == v19)
    {

      return;
    }

    if (!v5)
    {
      break;
    }

    v37 = MEMORY[0x1E12A72C0](v19, a1);
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      goto LABEL_36;
    }

    v21 = sub_1DCF9E948();
    if (v21)
    {
      v22 = v21;
      v23 = sub_1DCF9DF00(v45 & 1);
      v25 = v24;
      v26 = v46;
      v40 = sub_1DCFA08CC(v23, v24, v46);
      v43 = v27;
      v42 = &v39;
      v47[0] = v23;
      v47[1] = v25;
      MEMORY[0x1EEE9AC00](v40, v27);
      v38[2] = v47;
      v28 = v26;
      v29 = v44;
      v39 = sub_1DCC3C940(sub_1DCD00108, v38, v28);
      v31 = v30;
      v44 = v29;

      if (v43)
      {
        if (v31)
        {
          goto LABEL_27;
        }
      }

      else if ((v31 & 1) == 0 && v40 == v39)
      {
LABEL_27:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
        v32 = swift_allocObject();
        *(v32 + 16) = v41;
        *(v32 + 32) = v22;
        v33 = *(v37 + 24);
        v34 = *(v37 + 32);

        type metadata accessor for SiriKitDisambiguationItem();
        swift_allocObject();
        v35 = SiriKitDisambiguationItem.init(components:utterance:allowLineWrapForDisplayText:)(v32, v33, v34, 0);
        goto LABEL_29;
      }

LABEL_29:
      MEMORY[0x1E12A6920](v35);
      v36 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v36 >> 1)
      {
        OUTLINED_FUNCTION_21_0(v36);
        sub_1DD0DE33C();
      }

      sub_1DD0DE3AC();
      v19 = v20;
    }

    else
    {

      ++v19;
    }
  }

  if (v19 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    sub_1DD0DCF8C();
  }

LABEL_37:
  __break(1u);
}

uint64_t sub_1DCFA08CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_1DD0DF0AC() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_1DCFA0958(uint64_t a1, char a2)
{
  v3 = sub_1DD0DDE9C();
  result = sub_1DCB08B14(a1);
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a1;
  v19 = a1 & 0xFFFFFFFFFFFFFF8;
  v20 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v5 == v6)
    {

      return v7;
    }

    if (!v20)
    {
      break;
    }

    result = MEMORY[0x1E12A72C0](v6, v8);
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    v9 = sub_1DCF9EAB0(a2 & 1);
    v11 = v10;
    result = sub_1DCC17E34(v9, v10, v3);
    if ((v12 & 1) == 0 && result == -1)
    {
      goto LABEL_20;
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC60728();
    v13 = sub_1DCC17E34(v9, v11, v3);
    v15 = v14;

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13;
    }

    ++v6;
    v17 = __CFADD__(v7, v16);
    v7 += v16;
    if (v17)
    {
      goto LABEL_19;
    }
  }

  if (v6 < *(v19 + 16))
  {
    sub_1DD0DCF8C();
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DCFA0B08(uint64_t a1)
{
  result = sub_1DCB08B14(a1);
  v3 = result;
  v4 = 0;
  while (1)
  {
    v5 = v4;
    if (v3 == v4)
    {
      return v3 != v5;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    result = MEMORY[0x1E12A72C0](v4, a1);
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_15;
    }

    v6 = *(result + 16);
    if (v6 >> 62)
    {
      v7 = sub_1DD0DEB3C();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = v5 + 1;
    if (!v7)
    {
      return v3 != v5;
    }
  }

  if (v4 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    sub_1DD0DCF8C();
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1DCFA0BEC(uint64_t a1, char a2)
{
  v3 = sub_1DCB08B14(a1);
  v4 = 0;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v23 = v3;
LABEL_2:
  if (v4 != v3)
  {
    if ((a1 & 0xC000000000000001) == 0)
    {
      if (v4 < *(v5 + 16))
      {
        sub_1DD0DCF8C();
      }

LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v12 = MEMORY[0x1E12A72C0](v4, a1);
    v6 = __OFADD__(v4++, 1);
    if (v6)
    {
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    v7 = *(v12 + 16);
    if (v7 >> 62)
    {
      v8 = sub_1DD0DEB3C();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    do
    {
      while (1)
      {
        if (v9 == v8)
        {

          v5 = a1 & 0xFFFFFFFFFFFFFF8;
          v3 = v23;
          goto LABEL_2;
        }

        if ((v7 & 0xC000000000000001) == 0)
        {
          break;
        }

        v11 = MEMORY[0x1E12A72C0](v9, v7);
        v6 = __OFADD__(v9++, 1);
        if (v6)
        {
          goto LABEL_33;
        }

        v22 = *(v11 + 80);
        swift_unknownObjectRelease();
        if ((v22 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v10 = *(v7 + 32 + 8 * v9++);
    }

    while ((*(v10 + 80) & 1) != 0);
LABEL_22:

    v13 = sub_1DCB08B14(a1);
    if (v13 >= 2)
    {
      v14 = v13;
      v25 = MEMORY[0x1E69E7CC0];
      sub_1DCB38954();
      v15 = 0;
      do
      {
        MEMORY[0x1E12A72C0](v15, a1);
        v16 = sub_1DCF9EAB0(a2 & 1);
        v18 = v17;

        v20 = *(v25 + 16);
        v19 = *(v25 + 24);
        if (v20 >= v19 >> 1)
        {
          OUTLINED_FUNCTION_21_0(v19);
          sub_1DCB38954();
        }

        ++v15;
        *(v25 + 16) = v20 + 1;
        v21 = v25 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
      }

      while (v14 != v15);
      sub_1DCDA58AC(v25);
    }
  }
}

uint64_t SiriKitDisambiguationList.deinit()
{

  return v0;
}

uint64_t SiriKitDisambiguationList.__deallocating_deinit()
{
  SiriKitDisambiguationList.deinit();

  return swift_deallocClassInstance();
}

uint64_t destroy for SiriKitDisambiguationItemPair(uint64_t a1)
{
  v1 = (a1 + 8);

  return __swift_destroy_boxed_opaque_existential_1Tm(v1);
}

void initializeWithCopy for SiriKitDisambiguationItemPair(void *a1, void *a2)
{
  *a1 = *a2;
  a1[4] = a2[4];
  sub_1DD0DCF8C();
}

uint64_t assignWithTake for SiriKitDisambiguationItemPair(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

_OWORD *SiriKitDisambiguationListAdapter.__allocating_init(disambiguationList:deviceState:authenticationPolicy:)(uint64_t a1, __int128 *a2)
{
  OUTLINED_FUNCTION_5_5();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  sub_1DCB18FF0(a2, v4 + 24);
  return OUTLINED_FUNCTION_1_129();
}

uint64_t SiriKitDisambiguationListAdapter.__allocating_init(disambiguationList:deviceState:)(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_5_5();
  v4 = swift_allocObject();
  SiriKitDisambiguationListAdapter.init(disambiguationList:deviceState:)(a1, a2);
  return v4;
}

uint64_t SiriKitDisambiguationListAdapter.init(disambiguationList:deviceState:)(uint64_t a1, void *a2)
{
  *(v2 + 16) = a1;
  sub_1DCB17CA0(a2, v2 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 96) = &type metadata for FeatureFlagDefinitions.Core;
  *(v2 + 104) = &off_1F585CB38;
  return v2;
}

_OWORD *SiriKitDisambiguationListAdapter.init(disambiguationList:deviceState:authenticationPolicy:)(uint64_t a1, __int128 *a2)
{
  *(v2 + 16) = a1;
  sub_1DCB18FF0(a2, v2 + 24);
  return OUTLINED_FUNCTION_1_129();
}

uint64_t sub_1DCFA1238()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  if ((*(v2 + 248))(v0 + 8, v1, v2))
  {
    v3 = 0;
  }

  else
  {
    v4 = v0[6];
    v5 = v0[7];
    __swift_project_boxed_opaque_existential_1(v0 + 3, v4);
    v3 = (*(v5 + 8))(v4, v5) ^ 1;
  }

  return v3 & 1;
}

uint64_t SiriKitDisambiguationListAdapter.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  sub_1DCC4B20C(v0 + 64);
  return v0;
}

uint64_t SiriKitDisambiguationListAdapter.__deallocating_deinit()
{
  SiriKitDisambiguationListAdapter.deinit();
  OUTLINED_FUNCTION_5_5();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFA142C(unint64_t a1, char a2, unsigned int a3, void *a4)
{
  v5 = v4;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1DD0DEB3C())
  {
    result = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      break;
    }

    v16 = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        __break(1u);
        goto LABEL_16;
      }

      if ((a1 & 0xC000000000000001) == 0)
      {
        break;
      }

      v14 = MEMORY[0x1E12A72C0](j, a1);
      sub_1DCFA30D8(&v14, a2 & 1, a3, a4, &v15);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      sub_1DD0DECDC();
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      if (v10 == i)
      {
        return v16;
      }
    }

    if (j < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      sub_1DD0DCF8C();
    }

LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

id sub_1DCFA15B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = objc_allocWithZone(MEMORY[0x1E69C7AB0]);

      v8 = [v7 init];
      v9 = sub_1DD0DDFBC();
      sub_1DCC65D3C(v9, v10, v8);
      sub_1DCC65D48(v5, v6, v8);

      sub_1DD0DECDC();
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      v4 += 2;
      --v1;
    }

    while (v1);
    v2 = v14;
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E69C7A48]) init];

  if (v2 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D8, &qword_1DD106560);
    v12 = sub_1DD0DEE0C();
  }

  else
  {
    sub_1DD0DF0CC();
    v12 = v2;
  }

  sub_1DCC6589C(v12, v11);
  return v11;
}

id sub_1DCFA19B8(uint64_t a1, char a2)
{
  type metadata accessor for SiriKitDisambiguationItem();
  v3 = OUTLINED_FUNCTION_3_117();
  v14 = MEMORY[0x1E69E7CC0];
  v4 = sub_1DCFA142C(v3, a2, 1u, &v14);

  v5 = sub_1DCCD2C5C(v4);
  if (v5)
  {
    v6 = v5;
    [v5 setSeparatorStyle_];
  }

  v7 = v14;
  v8 = sub_1DCB10E5C(0, &unk_1ECCA25E0, 0x1E69C7770);
  v12 = OUTLINED_FUNCTION_4_109(v8, v9, v10, v11, MEMORY[0x1E69E7CC0]);

  sub_1DCFA391C(v7, v12, qword_1ECCA1C80, &qword_1DD0E1D90, &selRef_setReferencedCommands_);
  return v12;
}

id sub_1DCFA1AB0(uint64_t a1, char a2, unsigned __int8 *a3)
{
  v4 = *a3;
  type metadata accessor for SiriKitDisambiguationItem();
  v5 = OUTLINED_FUNCTION_3_117();
  v16 = MEMORY[0x1E69E7CC0];
  v6 = sub_1DCFA142C(v5, a2, v4, &v16);

  v7 = sub_1DCCD2C5C(v6);
  if (v7)
  {
    v8 = v7;
    [v7 setSeparatorStyle_];
  }

  v9 = v16;
  v10 = sub_1DCB10E5C(0, &unk_1ECCA25E0, 0x1E69C7770);
  v14 = OUTLINED_FUNCTION_4_109(v10, v11, v12, v13, MEMORY[0x1E69E7CC0]);

  sub_1DCFA391C(v9, v14, qword_1ECCA1C80, &qword_1DD0E1D90, &selRef_setReferencedCommands_);
  return v14;
}

void static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForWatch(disambiguationItems:textToSpeechIsEnabled:)(uint64_t a1, char a2)
{
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_16();
  sub_1DD0DCB8C();
}

id sub_1DCFA21D0(void *a1)
{
  v1 = a1[5];
  if (v1)
  {
    v2 = qword_1EDE46628;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    sub_1DCB4E718(v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    sub_1DCFA399C(v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  v6 = a1[4];
  *(inited + 32) = a1[3];
  *(inited + 40) = v6;

  v7 = sub_1DCFA15B4(inited);
  swift_setDeallocating();
  sub_1DCB19D2C();
  return v7;
}

id static SiriKitDisambiguationSnippetFactory.makeDisambiguationSnippetForAppleTV(disambiguationItems:)(uint64_t a1)
{
  v2 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_16();
  v9 = v8 - v7;
  v10 = sub_1DCB08B14(a1);
  if (v10)
  {
    v11 = v10;
    sub_1DD0DED0C();
    if ((v11 & 0x8000000000000000) == 0)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12A72C0](0, a1);
        sub_1DCFA2A0C();
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        sub_1DD0DCF8C();
      }

      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E69C7B58]) init];
    sub_1DCB2C534(0xD000000000000010, 0x80000001DD126C30, v12, &selRef_setGroupTitle_);
    sub_1DCB2C534(0x746974207473694CLL, 0xEA0000000000656CLL, v12, &selRef_setTitle_);
    v13 = OUTLINED_FUNCTION_68();
    sub_1DCC363A4(v13, v14);
    v15 = v12;
    sub_1DD0DB03C();
    v16 = sub_1DD0DAFFC();
    v18 = v17;
    (*(v4 + 8))(v9, v2);
    sub_1DCB4D8E8(v16, v18, v15);

    return v15;
  }

  return result;
}

void sub_1DCFA2A0C()
{
  v2 = sub_1DD0DB04C();
  v6[5] = *(v2 - 8);
  v6[6] = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v6[4] = v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v5, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCFA30D8(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v71 = a4;
  v72 = a3;
  v75 = a5;
  v7 = sub_1DD0DB04C();
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v67 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v66 - v12;
  v14 = *a1;
  if (sub_1DCF9E948())
  {
    v74 = sub_1DCF9DEB4(a2 & 1);
    v16 = v15;
  }

  else
  {
    v74 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = sub_1DCF9E948();
  if (v17)
  {
    v73 = *(v17 + 81);
  }

  else
  {
    v73 = 0;
  }

  if (sub_1DCF9E9C0())
  {
    v18 = sub_1DCF9DEB4(a2 & 1);
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v66 = v13;
  if (sub_1DCF9EA38())
  {
    v21 = sub_1DCF9DEB4(a2 & 1);
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v24 = *(v14 + 72);
  v25 = *(v14 + 80);
  if (*(v14 + 48))
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  v27 = *(v14 + 56);
  v70 = *(v14 + 64);
  v28 = sub_1DCC648A4(v74, v16, v18, v20, v21, v23, v26, v73);

  if (v25 && *(v25 + 16))
  {
    v29 = [objc_allocWithZone(MEMORY[0x1E69C9FC0]) init];
    sub_1DCC65CE0(v25, v29);
    v30 = dbl_1DD106568[v72];
    v31 = v29;
    [v31 setSize_];
    [v31 setShouldCropToCircle_];
    [v28 setImage_];

LABEL_38:
    goto LABEL_39;
  }

  if (v24)
  {
    v32 = [objc_allocWithZone(MEMORY[0x1E69CA260]) init];
    sub_1DCC65C8C(v70, v24, v32);
    [v32 setMonogramStyle_];
    v33 = dbl_1DD106568[v72];
    v34 = v32;
    [v34 setSize_];
    [v34 setShouldCropToCircle_];
    [v28 setImage_];

    goto LABEL_39;
  }

  if (v27)
  {
    v35 = objc_allocWithZone(MEMORY[0x1E69CA548]);
    v36 = v27;
    v37 = [v35 init];
    v38 = sub_1DCC65B64(v36);
    if (v39 >> 60 == 15)
    {
      sub_1DCC65BC8(v36);
      if (v40)
      {
        sub_1DCC65C2C(0x7079546567616D49, 0xEC0000004C525565, v37);
        v41 = v66;
        sub_1DD0DAEBC();

        v42 = sub_1DD0DAECC();
        v43 = 0;
        if (__swift_getEnumTagSinglePayload(v41, 1, v42) != 1)
        {
          v43 = sub_1DD0DAE6C();
          (*(*(v42 - 8) + 8))(v41, v42);
        }

        [v37 setUrlValue_];
      }
    }

    else
    {
      v44 = v38;
      v45 = v39;
      v46 = v37;
      sub_1DCC65C38(v44, v45, v46);

      sub_1DCB2C520(v44, v45);
    }

    v31 = v37;
    [v31 setShouldCropToCircle_];
    if (v72)
    {
      if (v72 != 1)
      {
        v47 = 34.0;
LABEL_36:
        v53 = v47;
        goto LABEL_37;
      }
    }

    else
    {
      v48 = v36;
      [v48 _imageSize];
      if (v49 > 0.0)
      {
        [v48 _imageSize];
        if (v50 > 0.0)
        {
          [v48 _imageSize];
          v47 = v51;
          [v48 _imageSize];
          v53 = v52;

LABEL_37:
          [v31 setSize_];
          [v28 setImage_];

          [v28 setImageIsRightAligned_];
          goto LABEL_38;
        }
      }
    }

    v47 = 47.0;
    goto LABEL_36;
  }

LABEL_39:
  v54 = *(v14 + 40);
  if (v54)
  {
    v55 = qword_1EDE46628;
    v56 = v54;
    if (v55 != -1)
    {
      swift_once();
    }

    sub_1DCB4E718(v76);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    sub_1DCFA399C(v56);
  }

  v58 = *(v14 + 24);
  v57 = *(v14 + 32);
  v59 = HIBYTE(v57) & 0xF;
  if ((v57 & 0x2000000000000000) == 0)
  {
    v59 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (v59)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DD0E07C0;
    *(inited + 32) = v58;
    *(inited + 40) = v57;

    v61 = sub_1DCFA15B4(inited);
    swift_setDeallocating();
    sub_1DCB19D2C();
    v62 = v67;
    sub_1DD0DB03C();
    sub_1DD0DAFFC();
    (*(v68 + 8))(v62, v69);
    v63 = sub_1DD0DDF8C();

    [v61 setAceId_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_1DD0E15D0;
    v65 = swift_unknownObjectRetain();
    *(v64 + 32) = static CasinoFactory.makeReferentialAbstractCommand(originalCommand:)(v65);
    sub_1DCFA3898(v64, v28);
    MEMORY[0x1E12A6920]();
    sub_1DCBBF95C();
    sub_1DD0DE3AC();
    swift_unknownObjectRelease();
  }

  *v75 = v28;
}

void sub_1DCFA3898(uint64_t a1, void *a2)
{
  sub_1DCB10E5C(0, &unk_1ECCAB530, 0x1E69C9E60);
  v3 = sub_1DD0DE2DC();

  [a2 setCommands_];
}

void sub_1DCFA391C(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, SEL *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v7 = sub_1DD0DE2DC();

  [a2 *a5];
}

_BYTE *storeEnumTagSinglePayload for SiriKitDisambiguationSnippetFactory(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCFA3C08()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_70(v1 + 16, v3);
  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
}

uint64_t sub_1DCFA3C4C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_22(v2 + 32, a2);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCFA3C88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_70(v1 + 32, v3);
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
}

uint64_t sub_1DCFA3CF8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_22(v2 + 24, a2);

  return OUTLINED_FUNCTION_33_1();
}

void sub_1DCFA3D78(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1DCB5769C(v1, v3);
}

void *sub_1DCFA3DA8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_22(v2 + 40, a2);
  v3 = *(v2 + 40);
  v4 = v3;
  return v3;
}

uint64_t sub_1DCFA3E24(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_22(v2 + 48, a2);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCFA3EA4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_22(v2 + 64, a2);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCFA3EE0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_13_70(v1 + 64, v3);
  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
}

uint64_t sub_1DCFA3F24(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_22(v2 + 80, a2);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCFA3F60(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_22(v2 + 96, a2);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCFA3F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_19();
  return a5(v6);
}

uint64_t sub_1DCFA3FE0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_22(v2 + 112, a2);

  return OUTLINED_FUNCTION_33_1();
}

uint64_t SiriKitEvent.SiriKitHybridEventBuilder.chosenItem.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_1DCC33634(a1, v1 + 128, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  return swift_endAccess();
}

double SiriKitEvent.SiriKitHybridEventBuilder.disambiguationItems.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_22(v2 + 160, a2);

  return result;
}

uint64_t SiriKitEvent.SiriKitHybridEventBuilder.disambiguationItems.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_13_70(v2 + 160, a2);
  *(v2 + 160) = a1;
}

uint64_t SiriKitEvent.SiriKitHybridEventBuilder.flowActivity.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_1DCC33634(a1, v1 + 168, &unk_1ECCA3280, &unk_1DD0E23D0);
  return swift_endAccess();
}

uint64_t sub_1DCFA42B0()
{
  sub_1DCB0E9D8(v0 + 128, &dword_1ECCA3CE0, &unk_1DD0E4F80);

  return sub_1DCB0E9D8(v0 + 168, &unk_1ECCA3280, &unk_1DD0E23D0);
}

void SiriKitEvent.__allocating_init(taskFlowConfiguration:_:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  v8 = v7 - v6;
  v9 = *v3;
  v10 = v3[1];
  v11 = v3[2];
  v12 = *(v3 + 24);
  type metadata accessor for SiriKitEvent.SiriKitOverridesEventBuilder();
  OUTLINED_FUNCTION_136();
  v13 = swift_allocObject();
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0u;
  v14 = v13;
  if (v1)
  {
    v1(&v14);
  }

  *v8 = v9;
  *(v8 + 8) = v10;
  *(v8 + 16) = v11;
  *(v8 + 24) = v12;
  OUTLINED_FUNCTION_138();
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFA4474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCEE0D08;

  return SiriKitEventSending.sendAsync(_:)(a1, a2, a3);
}

uint64_t SiriKitEventSending.sendAsync(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCFA4538()
{
  OUTLINED_FUNCTION_42();
  (*(v0[4] + 8))(v0[2], v0[3]);
  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCFA45EC()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFA4750(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DCFA4794, 0, 0);
}

uint64_t sub_1DCFA4810(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCEE0D08;

  return sub_1DCFA4750(a1);
}

uint64_t sub_1DCFA48A8()
{
  type metadata accessor for RefreshableSiriKitEventSending();
  v0 = swift_allocObject();
  result = sub_1DCFA48E4();
  qword_1EDE57DF8 = v0;
  return result;
}

uint64_t sub_1DCFA48E4()
{
  v3[3] = type metadata accessor for NoopSiriKitEventSender();
  v3[4] = &off_1F5873928;
  v3[0] = swift_initStaticObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCAB548, qword_1DD106A80);
  v1 = swift_allocObject();
  *(v1 + 56) = 0;
  sub_1DCB17CA0(v3, v1 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_1DCFA4974(void *a1)
{
  v1 = [a1 intentId];
  if (v1)
  {
    v2 = v1;
    sub_1DD0DDFBC();
  }

  return OUTLINED_FUNCTION_33_1();
}

id sub_1DCFA49D4(id result)
{
  if (result != 3)
  {
    return sub_1DCFA49E4(result);
  }

  return result;
}

id sub_1DCFA49E4(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t sub_1DCFA49F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *initializeBufferWithCopyOfBuffer for SiriKitEventPayload(char *a1, char *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      *a1 = *a2;
      v6 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v6;
      a1[24] = a2[24];
      v7 = *(a2 + 7);

      if (v7)
      {
        v8 = *(a2 + 8);
        *(a1 + 7) = v7;
        *(a1 + 8) = v8;
        (**(v7 - 8))(a1 + 32, a2 + 32, v7);
      }

      else
      {
        v64 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v64;
        *(a1 + 8) = *(a2 + 8);
      }

      *(a1 + 9) = *(a2 + 9);

      v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
      v66 = sub_1DD0DD2FC();
      if (__swift_getEnumTagSinglePayload(&a2[v65], 1, v66))
      {
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
        memcpy(&a1[v65], &a2[v65], *(*(v67 - 8) + 64));
      }

      else
      {
        (*(*(v66 - 8) + 16))(&a1[v65], &a2[v65], v66);
        __swift_storeEnumTagSinglePayload(&a1[v65], 0, 1, v66);
      }

      goto LABEL_33;
    case 1u:
      v41 = *a2;
      v42 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v42;
      *(a1 + 2) = *(a2 + 2);
      v43 = v41;

      goto LABEL_33;
    case 2u:
      v28 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v28;
      v29 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v29;
      v30 = *(a2 + 5);
      *(a1 + 4) = *(a2 + 4);
      *(a1 + 5) = v30;
      *(a1 + 6) = *(a2 + 6);
      a1[56] = a2[56];

      v31 = v28;

      goto LABEL_33;
    case 3u:
      *a1 = *a2;
      v33 = *(a2 + 1);
      v34 = *(a2 + 2);
      *(a1 + 1) = v33;
      *(a1 + 2) = v34;
      v35 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v35;
      v36 = *(a2 + 6);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 6) = v36;
      a1[56] = a2[56];
      v37 = v33;

      goto LABEL_33;
    case 4u:
      v15 = *(a2 + 3);
      *(a1 + 3) = v15;
      (**(v15 - 8))(a1, a2);
      v16 = *(a2 + 4);
      v17 = *(a2 + 5);
      *(a1 + 4) = v16;
      *(a1 + 5) = v17;
      v18 = *(a2 + 7);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + 7) = v18;
      v19 = *(a2 + 9);
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = v19;
      a1[80] = a2[80];
      v20 = v16;

      goto LABEL_33;
    case 5u:
      *a1 = *a2;
      v46 = *(a2 + 1);
      v47 = *(a2 + 2);
      *(a1 + 1) = v46;
      *(a1 + 2) = v47;
      v48 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v48;
      *(a1 + 5) = *(a2 + 5);
      v49 = *(a2 + 9);
      v50 = v46;

      if (v49)
      {
        *(a1 + 9) = v49;
        (**(v49 - 8))(a1 + 48, a2 + 48, v49);
      }

      else
      {
        v68 = *(a2 + 4);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = v68;
      }

      *(a1 + 10) = *(a2 + 10);
      a1[88] = a2[88];
      goto LABEL_33;
    case 6u:
      *a1 = *a2;
      v54 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v54;
      v55 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v55;
      v56 = *(a2 + 6);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 6) = v56;
      v57 = *(a2 + 8);
      *(a1 + 7) = *(a2 + 7);
      *(a1 + 8) = v57;
      v58 = *(a2 + 10);
      *(a1 + 9) = *(a2 + 9);
      *(a1 + 10) = v58;
      *(a1 + 11) = *(a2 + 11);
      a1[96] = a2[96];

      sub_1DD0DCF8C();
    case 7u:
      *a1 = *a2;
      v38 = *(a2 + 1);
      v39 = *(a2 + 2);
      *(a1 + 1) = v38;
      *(a1 + 2) = v39;
      v40 = v38;
      sub_1DD0DCF8C();
    case 8u:
      *a1 = *a2;
      v60 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v60;
      v61 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v61;
      *(a1 + 5) = *(a2 + 5);
      a1[48] = a2[48];
      sub_1DD0DCF8C();
    case 9u:
      *a1 = *a2;
      v27 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v27;
      *(a1 + 3) = *(a2 + 3);
      a1[32] = a2[32];
      sub_1DD0DCF8C();
    case 0xAu:
      *a1 = *a2;
      v59 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v59;
      *(a1 + 3) = *(a2 + 3);
      a1[32] = a2[32];
      sub_1DD0DCF8C();
    case 0xBu:
      *a1 = *a2;
      v13 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v13;
      v14 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v14;
      *(a1 + 5) = *(a2 + 5);

      sub_1DD0DCF8C();
    case 0xCu:
      *a1 = *a2;
      v21 = *(a2 + 2);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 2) = v21;
      v22 = *(a2 + 4);
      *(a1 + 3) = *(a2 + 3);
      *(a1 + 4) = v22;
      v23 = *(a2 + 6);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 6) = v23;
      v24 = *(a2 + 8);
      *(a1 + 7) = *(a2 + 7);
      *(a1 + 8) = v24;
      v25 = *(a2 + 10);
      *(a1 + 9) = *(a2 + 9);
      *(a1 + 10) = v25;
      v26 = *(a2 + 12);
      *(a1 + 11) = *(a2 + 11);
      *(a1 + 12) = v26;
      a1[108] = a2[108];
      *(a1 + 26) = *(a2 + 26);

      sub_1DD0DCF8C();
    case 0xDu:
      v51 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v51;
      v52 = *(a2 + 2);
      v53 = *(a2 + 3);
      *(a1 + 2) = v52;
      *(a1 + 3) = v53;

      goto LABEL_33;
    case 0xEu:
    case 0x11u:
      v12 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v12;

      goto LABEL_33;
    case 0xFu:
      v32 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v32;
      *(a1 + 2) = *(a2 + 2);
      a1[24] = a2[24];

      goto LABEL_33;
    case 0x10u:
    case 0x12u:
      v9 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v9;
      v10 = *(a2 + 2);
      *(a1 + 2) = v10;

      v11 = v10;
      goto LABEL_33;
    case 0x13u:
      v62 = *a2;
      *a1 = *a2;
      v63 = v62;
LABEL_33:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v44 = *(v5 + 64);

      result = memcpy(a1, a2, v44);
      break;
  }

  return result;
}

char *assignWithCopy for SiriKitEventPayload(char *a1, char *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_1DCB22AA4(a1);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        a1[24] = a2[24];
        v6 = *(a2 + 7);

        if (v6)
        {
          *(a1 + 7) = v6;
          *(a1 + 8) = *(a2 + 8);
          (**(v6 - 8))(a1 + 32, a2 + 32, v6);
        }

        else
        {
          v35 = *(a2 + 2);
          v36 = *(a2 + 3);
          *(a1 + 8) = *(a2 + 8);
          *(a1 + 2) = v35;
          *(a1 + 3) = v36;
        }

        *(a1 + 9) = *(a2 + 9);

        v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
        v38 = sub_1DD0DD2FC();
        if (__swift_getEnumTagSinglePayload(&a2[v37], 1, v38))
        {
          v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
          memcpy(&a1[v37], &a2[v37], *(*(v39 - 8) + 64));
        }

        else
        {
          (*(*(v38 - 8) + 16))(&a1[v37], &a2[v37], v38);
          __swift_storeEnumTagSinglePayload(&a1[v37], 0, 1, v38);
        }

        goto LABEL_32;
      case 1u:
        v24 = *a2;
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        v25 = v24;

        goto LABEL_32;
      case 2u:
        *a1 = *a2;
        v15 = *(a2 + 1);
        *(a1 + 1) = v15;
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = *(a2 + 5);
        v16 = *(a2 + 6);
        a1[56] = a2[56];
        *(a1 + 6) = v16;

        v17 = v15;

        goto LABEL_32;
      case 3u:
        *a1 = *a2;
        v19 = *(a2 + 1);
        *(a1 + 1) = v19;
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = *(a2 + 5);
        v20 = *(a2 + 6);
        a1[56] = a2[56];
        *(a1 + 6) = v20;
        v21 = v19;

        goto LABEL_32;
      case 4u:
        v9 = *(a2 + 3);
        *(a1 + 3) = v9;
        (**(v9 - 8))(a1, a2);
        v10 = *(a2 + 4);
        *(a1 + 4) = v10;
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = *(a2 + 6);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = *(a2 + 8);
        v11 = *(a2 + 9);
        a1[80] = a2[80];
        *(a1 + 9) = v11;
        v12 = v10;

        goto LABEL_32;
      case 5u:
        *a1 = *a2;
        v28 = *(a2 + 1);
        *(a1 + 1) = v28;
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = *(a2 + 5);
        v29 = *(a2 + 9);
        v30 = v28;

        if (v29)
        {
          *(a1 + 9) = v29;
          (**(v29 - 8))(a1 + 48, a2 + 48, v29);
        }

        else
        {
          v40 = *(a2 + 4);
          *(a1 + 3) = *(a2 + 3);
          *(a1 + 4) = v40;
        }

        v41 = *(a2 + 10);
        a1[88] = a2[88];
        *(a1 + 10) = v41;
        goto LABEL_32;
      case 6u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = *(a2 + 6);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        *(a1 + 10) = *(a2 + 10);
        *(a1 + 11) = *(a2 + 11);
        a1[96] = a2[96];

        sub_1DD0DCF8C();
      case 7u:
        *a1 = *a2;
        v22 = *(a2 + 1);
        *(a1 + 1) = v22;
        *(a1 + 2) = *(a2 + 2);
        v23 = v22;
        sub_1DD0DCF8C();
      case 8u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = *(a2 + 4);
        v32 = *(a2 + 5);
        a1[48] = a2[48];
        *(a1 + 5) = v32;
        sub_1DD0DCF8C();
      case 9u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        v14 = *(a2 + 3);
        a1[32] = a2[32];
        *(a1 + 3) = v14;
        sub_1DD0DCF8C();
      case 0xAu:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        v31 = *(a2 + 3);
        a1[32] = a2[32];
        *(a1 + 3) = v31;
        sub_1DD0DCF8C();
      case 0xBu:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = *(a2 + 5);

        sub_1DD0DCF8C();
      case 0xCu:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 4) = *(a2 + 4);
        *(a1 + 5) = *(a2 + 5);
        *(a1 + 6) = *(a2 + 6);
        *(a1 + 7) = *(a2 + 7);
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 9) = *(a2 + 9);
        *(a1 + 10) = *(a2 + 10);
        *(a1 + 11) = *(a2 + 11);
        *(a1 + 12) = *(a2 + 12);
        v13 = *(a2 + 26);
        a1[108] = a2[108];
        *(a1 + 26) = v13;

        sub_1DD0DCF8C();
      case 0xDu:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);

        goto LABEL_32;
      case 0xEu:
      case 0x11u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);

        goto LABEL_32;
      case 0xFu:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        v18 = *(a2 + 2);
        a1[24] = a2[24];
        *(a1 + 2) = v18;

        goto LABEL_32;
      case 0x10u:
      case 0x12u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        v7 = *(a2 + 2);
        *(a1 + 2) = v7;

        v8 = v7;
        goto LABEL_32;
      case 0x13u:
        v33 = *a2;
        *a1 = *a2;
        v34 = v33;
LABEL_32:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v26 = *(*(a3 - 8) + 64);

        return memcpy(a1, a2, v26);
    }
  }

  return a1;
}

_BYTE *initializeWithTake for SiriKitEventPayload(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    a1[24] = a2[24];
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
    v9 = *(a2 + 9);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 9) = v9;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
    v11 = sub_1DD0DD2FC();
    if (__swift_getEnumTagSinglePayload(&a2[v10], 1, v11))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
      memcpy(&a1[v10], &a2[v10], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
      __swift_storeEnumTagSinglePayload(&a1[v10], 0, 1, v11);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *assignWithTake for SiriKitEventPayload(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_1DCB22AA4(a1);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    a1[24] = a2[24];
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
    v9 = *(a2 + 9);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 9) = v9;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60) + 112);
    v11 = sub_1DD0DD2FC();
    if (__swift_getEnumTagSinglePayload(&a2[v10], 1, v11))
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2278, &qword_1DD0E4830);
      memcpy(&a1[v10], &a2[v10], *(*(v12 - 8) + 64));
    }

    else
    {
      (*(*(v11 - 8) + 32))(&a1[v10], &a2[v10], v11);
      __swift_storeEnumTagSinglePayload(&a1[v10], 0, 1, v11);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void sub_1DCFA63E8(uint64_t a1)
{
  sub_1DCFA6558(319);
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout();
    v3 = &v2;
    v4 = &unk_1DD1066E0;
    v5 = &unk_1DD1066F8;
    v6 = &unk_1DD1066F8;
    v7 = &unk_1DD106710;
    v8 = &unk_1DD106728;
    v9 = &unk_1DD106740;
    v10 = &unk_1DD106728;
    v11 = &unk_1DD106758;
    v12 = &unk_1DD106740;
    v13 = &unk_1DD106770;
    v14 = &unk_1DD106788;
    v15 = &unk_1DD1067A0;
    v16 = &unk_1DD1067B8;
    v17 = &unk_1DD106680;
    v18 = &unk_1DD1067D0;
    v19 = &unk_1DD1067E8;
    v20 = &unk_1DD106680;
    v21 = &unk_1DD1067E8;
    v22 = MEMORY[0x1E69E5CE0] + 64;
    swift_initEnumMetadataMultiPayload();
  }
}

void sub_1DCFA6558(uint64_t a1)
{
  if (!qword_1EDE4F6B8)
  {
    sub_1DD0DD2FC();
    v1 = sub_1DD0DE97C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE4F6B8);
    }
  }
}

uint64_t sub_1DCFA65C8(uint64_t a1)
{
  result = type metadata accessor for SiriKitEventPayload(319);
  if (v2 <= 0x3F)
  {
    result = sub_1DD0DAFDC();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriKitEventSender(_BYTE *result, int a2, int a3)
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

void sub_1DCFA6B38(void *a1, char *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_16();
  v20 = v19 - v18;
  v26 = *a7;
  v28 = *a2;
  v21 = v28;
  v22 = (*(a11 + 304))(&v28, a5, a6, a10, a11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  *v20 = v21;
  *(v20 + 8) = a3;
  *(v20 + 16) = a5;
  *(v20 + 24) = 0;
  *(v20 + 32) = 1;
  if (v22)
  {
    v23 = type metadata accessor for DefaultFlowActivity();
    v24 = sub_1DCCAE20C();
  }

  else
  {
    v23 = 0;
    v24 = 0;
    *(v20 + 48) = 0;
    *(v20 + 56) = 0;
  }

  *(v20 + 40) = v22;
  *(v20 + 64) = v23;
  *(v20 + 72) = v24;
  type metadata accessor for SiriKitEvent(0);
  *(v20 + 80) = a8;
  *(v20 + 88) = a9;
  *(v20 + 96) = v26;
  swift_storeEnumTagMultiPayload();

  sub_1DD0DCF8C();
}

void sub_1DCFA6D00(void *a1, char *a2, uint64_t a3, uint64_t a4, void *a5, char *a6, uint64_t a7, char a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_16();
  v22 = v21 - v20;
  v31 = *a6;
  v32 = *a10;
  v24 = *(a10 + 4);
  v33 = *a2;
  v23 = v33;
  v25 = (*(a14 + 304))(&v33, a5, a9, a13, a14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  *v22 = v23;
  *(v22 + 8) = a3;
  *(v22 + 16) = a5;
  *(v22 + 24) = a7;
  *(v22 + 32) = a8 & 1;
  if (v25)
  {
    v26 = type metadata accessor for DefaultFlowActivity();
    v27 = sub_1DCCAE20C();
  }

  else
  {
    v26 = 0;
    v27 = 0;
    *(v22 + 48) = 0;
    *(v22 + 56) = 0;
  }

  *(v22 + 40) = v25;
  *(v22 + 64) = v26;
  *(v22 + 72) = v27;
  type metadata accessor for SiriKitEvent(0);
  *(v22 + 80) = v32;
  *(v22 + 88) = v24;
  *(v22 + 96) = a11;
  *(v22 + 104) = a12;
  *(v22 + 112) = v31;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

void sub_1DCFA6EF4(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9, char a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_16();
  v24 = v23 - v22;
  v33 = *a8;
  v34 = *a12;
  v26 = *(a12 + 4);
  v35[0] = *a2;
  v25 = v35[0];
  v27 = (*(a16 + 312))(v35, a5, a11, a15, a16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  *v24 = v25;
  *(v24 + 8) = a3;
  *(v24 + 16) = a5;
  *(v24 + 24) = a6;
  *(v24 + 32) = a7;
  *(v24 + 40) = a9;
  *(v24 + 48) = a10 & 1;
  if (v27)
  {
    v28 = type metadata accessor for DefaultFlowActivity();
    v29 = sub_1DCCAE20C();
  }

  else
  {
    v28 = 0;
    v29 = 0;
    *(v24 + 64) = 0;
    *(v24 + 72) = 0;
  }

  *(v24 + 56) = v27;
  *(v24 + 80) = v28;
  *(v24 + 88) = v29;
  type metadata accessor for SiriKitEvent(0);
  *(v24 + 96) = v34;
  *(v24 + 104) = v26;
  *(v24 + 112) = a13;
  *(v24 + 120) = a14;
  *(v24 + 128) = v33;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

void sub_1DCFA7174()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCFA7348(void *a1, char a2)
{
  v3 = *(v2 + 80);
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  sub_1DCC93338(a1);
  sub_1DCC22568(v3);
  sub_1DCFA7174();
}

uint64_t sub_1DCFA7418(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCFA7438, 0, 0);
}

uint64_t sub_1DCFA7438(uint64_t a1)
{
  if (!*(v1[16] + 80))
  {
    v7 = sub_1DD0DD1BC();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = v1[16];
      sub_1DCFA78F0(v1 + 9);
      v12 = *(v11 + 64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1DD0E07C0;
      *(v13 + 32) = v9;
      *(v13 + 40) = v10;
      v14 = v12();

      if (v14)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA26B0, &qword_1DD0FF8A0);
        swift_initStackObject();
        sub_1DCC4A9D8(v14);
      }

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v20 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v20, qword_1EDE57E00);
      v21 = sub_1DD0DD8EC();
      v22 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v21, v22))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_20_2(&dword_1DCAFC000, v23, v24, "[SiriKitFixedAppResolutionFlow] Flow is configured to bypass authorization guards");
        OUTLINED_FUNCTION_80();
      }

      sub_1DCFA7348(1, 0);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v15 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v15, qword_1EDE57E00);
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v16, v17))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_80();
    }

    sub_1DCFA7348(1, 0);
  }

  v2 = v1[15];
  v3 = type metadata accessor for ExecuteResponse(0);
  v4 = *(v3 + 36);
  v5 = type metadata accessor for PluginAction(0);
  __swift_storeEnumTagSinglePayload(v2 + v4, 1, 1, v5);
  *v2 = 1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = 0;
  *(v2 + 48) = -4;
  v6 = (v2 + *(v3 + 40));
  *v6 = 0u;
  v6[1] = 0u;
  v25 = v1[1];

  return v25();
}

uint64_t sub_1DCFA78F0@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_1DCEC8974(v1 + 16, &v4);
  if (!v5)
  {
    sub_1DCEC89E4(&v4);
    type metadata accessor for EnvironmentSummoner();
    swift_initStaticObject();
    sub_1DCEC8A4C(&qword_1EDE48A98, type metadata accessor for EnvironmentSummoner, &unk_1DD101350);
    sub_1DD0DCB0C();
  }

  sub_1DCB18FF0(&v4, &v6);
  return sub_1DCB18FF0(&v6, a1);
}

void sub_1DCFA7AA4(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v1 = *a1;
    v2 = *a1;
    v3 = v1;
    v4 = 1;
  }

  else
  {
    v3 = 1;
    v4 = 0;
  }

  sub_1DCFA7348(v3, v4);
}

uint64_t sub_1DCFA7AF4(uint64_t a1)
{
  if (!a1)
  {
    return 0xD000000000000010;
  }

  if (a1 == 1)
  {
    return 0x74656C706D6F632ELL;
  }

  MEMORY[0x1E12A6780](0x2864656C6961662ELL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DEDBC();
  MEMORY[0x1E12A6780](10537, 0xE200000000000000);
  return 0;
}

uint64_t sub_1DCFA7BE8()
{
  sub_1DCEC89E4(v0 + 16);

  sub_1DCC22568(*(v0 + 80));
  return v0;
}

uint64_t sub_1DCFA7C24()
{
  sub_1DCFA7BE8();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFA7C70(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 < 0xFFFFFFFFuLL)
  {
    *a1 = *a2;
  }

  else
  {
    v5 = v4;
    *a1 = v4;
  }

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t sub_1DCFA7CD0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 < 0xFFFFFFFF)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      v8 = v5;
      *a1 = v5;
      goto LABEL_6;
    }

LABEL_8:
    v9 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v9;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    goto LABEL_8;
  }

  v6 = v5;
  v7 = *a1;
  *a1 = v5;

LABEL_6:
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t sub_1DCFA7D70(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 < 0xFFFFFFFF)
  {
    goto LABEL_5;
  }

  if (*a2 < 0xFFFFFFFFuLL)
  {

LABEL_5:
    *a1 = *a2;
    goto LABEL_6;
  }

  *a1 = *a2;

LABEL_6:
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t sub_1DCFA7DD8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 9))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCFA7E2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DCFA7E8C(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1DCFA7EC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1DCEC8974(v3 + 16, a1);
}

uint64_t sub_1DCFA7F10(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1DCEC8A94(a1, v3 + 16);
  return swift_endAccess();
}

uint64_t sub_1DCFA7FDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB193FC;

  return sub_1DCFA7418(a1);
}

uint64_t SiriKitFlowFrameInput.confirmationState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SiriKitFlowFrameInput(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for SiriKitFlowFrameInput(uint64_t a1)
{
  result = qword_1EDE4F2B0;
  if (!qword_1EDE4F2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double SiriKitFlowFrameInput.parameterMetadata.getter()
{
  type metadata accessor for SiriKitFlowFrameInput(0);

  return result;
}

uint64_t SiriKitFlowFrameInput.appResolutionState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriKitFlowFrameInput(0) + 28);

  return sub_1DCB17CA0(v3, a1);
}

uint64_t SiriKitFlowFrameInput.init(parse:confirmationState:parameterMetadata:appResolutionState:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  sub_1DCB541FC(a1, a5);
  v9 = type metadata accessor for SiriKitFlowFrameInput(0);
  *(a5 + v9[5]) = v8;
  *(a5 + v9[6]) = a3;
  v10 = a5 + v9[7];

  return sub_1DCAFF9E8(a4, v10);
}

char *initializeBufferWithCopyOfBuffer for SiriKitFlowFrameInput(char *a1, char *a2, int *a3)
{
  if ((*(*(a3 - 1) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = sub_1DD0DC76C();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      goto LABEL_27;
    case 1u:
      v16 = sub_1DD0DC76C();
      (*(*(v16 - 8) + 16))(a1, a2, v16);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&a1[*(v17 + 48)] = *&a2[*(v17 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v10 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v10;
      *(a1 + 2) = *(a2 + 2);

      goto LABEL_27;
    case 3u:
      *a1 = *a2;
      swift_unknownObjectRetain();
      goto LABEL_27;
    case 4u:
      v8 = sub_1DD0DB1EC();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      goto LABEL_27;
    case 5u:
      v18 = *a2;
      *a1 = *a2;
      v19 = v18;
      goto LABEL_27;
    case 6u:
      v20 = sub_1DD0DB4BC();
      (*(*(v20 - 8) + 16))(a1, a2, v20);
      v21 = type metadata accessor for USOParse(0);
      v22 = v21[5];
      v23 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v22], 1, v23))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v22], &a2[v22], *(*(v24 - 8) + 64));
      }

      else
      {
        (*(*(v23 - 8) + 16))(&a1[v22], &a2[v22], v23);
        __swift_storeEnumTagSinglePayload(&a1[v22], 0, 1, v23);
      }

      v56 = v21[6];
      v57 = &a1[v56];
      v58 = &a2[v56];
      v59 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v59;
      v60 = v21[7];
      v61 = &a1[v60];
      v62 = &a2[v60];
      v61[4] = v62[4];
      *v61 = *v62;

      goto LABEL_27;
    case 7u:
      v11 = sub_1DD0DB4BC();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      v12 = type metadata accessor for USOParse(0);
      v13 = v12[5];
      v14 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v13], 1, v14))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v13], &a2[v13], *(*(v15 - 8) + 64));
      }

      else
      {
        (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
        __swift_storeEnumTagSinglePayload(&a1[v13], 0, 1, v14);
      }

      v36 = v12[6];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v39 = *(v38 + 1);
      *v37 = *v38;
      *(v37 + 1) = v39;
      v40 = v12[7];
      v41 = &a1[v40];
      v42 = &a2[v40];
      v41[4] = v42[4];
      *v41 = *v42;
      v43 = type metadata accessor for LinkParse(0);
      v44 = v43[5];
      v45 = &a1[v44];
      v46 = &a2[v44];
      v47 = *(v46 + 1);
      *v45 = *v46;
      *(v45 + 1) = v47;
      v48 = v43[6];
      v49 = &a1[v48];
      v50 = &a2[v48];
      v51 = *(v50 + 1);
      *v49 = *v50;
      *(v49 + 1) = v51;
      v52 = v43[7];
      v53 = &a1[v52];
      v54 = &a2[v52];
      v55 = *(v54 + 1);
      *v53 = *v54;
      *(v53 + 1) = v55;

      goto LABEL_27;
    case 8u:
      v25 = sub_1DD0DD12C();
      (*(*(v25 - 8) + 16))(a1, a2, v25);
      v26 = type metadata accessor for NLRouterParse(0);
      v27 = v26[5];
      v28 = &a1[v27];
      v29 = &a2[v27];
      v30 = *(v29 + 1);
      *v28 = *v29;
      *(v28 + 1) = v30;
      v31 = v26[6];
      v32 = &a1[v31];
      v33 = &a2[v31];
      v34 = type metadata accessor for USOParse(0);

      if (__swift_getEnumTagSinglePayload(v33, 1, v34))
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v32, v33, *(*(v35 - 8) + 64));
      }

      else
      {
        v63 = sub_1DD0DB4BC();
        (*(*(v63 - 8) + 16))(v32, v33, v63);
        v64 = v34[5];
        v65 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v33[v64], 1, v65))
        {
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v32[v64], &v33[v64], *(*(v66 - 8) + 64));
        }

        else
        {
          (*(*(v65 - 8) + 16))(&v32[v64], &v33[v64], v65);
          __swift_storeEnumTagSinglePayload(&v32[v64], 0, 1, v65);
        }

        v67 = v34[6];
        v68 = &v32[v67];
        v69 = &v33[v67];
        v70 = *(v69 + 1);
        *v68 = *v69;
        *(v68 + 1) = v70;
        v71 = v34[7];
        v72 = &v32[v71];
        v73 = &v33[v71];
        v72[4] = v73[4];
        *v72 = *v73;

        __swift_storeEnumTagSinglePayload(v32, 0, 1, v34);
      }

      v74 = v26[7];
      v75 = *&a2[v74];
      *&a1[v74] = v75;
      v76 = v75;
      goto LABEL_27;
    case 9u:
      v9 = sub_1DD0DD08C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
LABEL_27:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      break;
  }

  v77 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v77] = *&a2[v77];
  v78 = a3[7];
  v79 = &a1[v78];
  v80 = &a2[v78];
  v81 = *(v80 + 24);
  *&a1[v78 + 24] = v81;
  v82 = v81;
  v83 = **(v81 - 8);

  v83(v79, v80, v82);
  return a1;
}

uint64_t destroy for SiriKitFlowFrameInput(void **a1, uint64_t a2)
{
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v4 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v8 = sub_1DD0DC76C();
      (*(*(v8 - 8) + 8))(a1, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      break;
    case 2u:

      goto LABEL_15;
    case 3u:
      swift_unknownObjectRelease();
      break;
    case 4u:
      v4 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v9 = *a1;
      goto LABEL_21;
    case 6u:
      v10 = sub_1DD0DB4BC();
      (*(*(v10 - 8) + 8))(a1, v10);
      v11 = *(type metadata accessor for USOParse(0) + 20);
      v12 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(a1 + v11, 1, v12))
      {
        (*(*(v12 - 8) + 8))(a1 + v11, v12);
      }

      goto LABEL_15;
    case 7u:
      v5 = sub_1DD0DB4BC();
      (*(*(v5 - 8) + 8))(a1, v5);
      v6 = *(type metadata accessor for USOParse(0) + 20);
      v7 = sub_1DD0DB3EC();
      if (!__swift_getEnumTagSinglePayload(a1 + v6, 1, v7))
      {
        (*(*(v7 - 8) + 8))(a1 + v6, v7);
      }

      type metadata accessor for LinkParse(0);

LABEL_15:

      break;
    case 8u:
      v13 = sub_1DD0DD12C();
      (*(*(v13 - 8) + 8))(a1, v13);
      v14 = type metadata accessor for NLRouterParse(0);

      v15 = a1 + *(v14 + 24);
      v16 = type metadata accessor for USOParse(0);
      if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
      {
        v17 = sub_1DD0DB4BC();
        (*(*(v17 - 8) + 8))(v15, v17);
        v18 = *(v16 + 20);
        v19 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(&v15[v18], 1, v19))
        {
          (*(*(v19 - 8) + 8))(&v15[v18], v19);
        }
      }

      v9 = *(a1 + *(v14 + 28));
LABEL_21:

      break;
    case 9u:
      v4 = sub_1DD0DD08C();
LABEL_5:
      (*(*(v4 - 8) + 8))(a1, v4);
      break;
    default:
      break;
  }

  v20 = (a1 + *(a2 + 28));

  return __swift_destroy_boxed_opaque_existential_1Tm(v20);
}

char *initializeWithCopy for SiriKitFlowFrameInput(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = sub_1DD0DC76C();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      goto LABEL_25;
    case 1u:
      v16 = sub_1DD0DC76C();
      (*(*(v16 - 8) + 16))(a1, a2, v16);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&a1[*(v17 + 48)] = *&a2[*(v17 + 48)];
      sub_1DD0DCF8C();
    case 2u:
      v10 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v10;
      *(a1 + 2) = *(a2 + 2);

      goto LABEL_25;
    case 3u:
      *a1 = *a2;
      swift_unknownObjectRetain();
      goto LABEL_25;
    case 4u:
      v8 = sub_1DD0DB1EC();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      goto LABEL_25;
    case 5u:
      v18 = *a2;
      *a1 = *a2;
      v19 = v18;
      goto LABEL_25;
    case 6u:
      v20 = sub_1DD0DB4BC();
      (*(*(v20 - 8) + 16))(a1, a2, v20);
      v21 = type metadata accessor for USOParse(0);
      v22 = v21[5];
      v23 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v22], 1, v23))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v22], &a2[v22], *(*(v24 - 8) + 64));
      }

      else
      {
        (*(*(v23 - 8) + 16))(&a1[v22], &a2[v22], v23);
        __swift_storeEnumTagSinglePayload(&a1[v22], 0, 1, v23);
      }

      v56 = v21[6];
      v57 = &a1[v56];
      v58 = &a2[v56];
      v59 = *(v58 + 1);
      *v57 = *v58;
      *(v57 + 1) = v59;
      v60 = v21[7];
      v61 = &a1[v60];
      v62 = &a2[v60];
      v61[4] = v62[4];
      *v61 = *v62;

      goto LABEL_25;
    case 7u:
      v11 = sub_1DD0DB4BC();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      v12 = type metadata accessor for USOParse(0);
      v13 = v12[5];
      v14 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v13], 1, v14))
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v13], &a2[v13], *(*(v15 - 8) + 64));
      }

      else
      {
        (*(*(v14 - 8) + 16))(&a1[v13], &a2[v13], v14);
        __swift_storeEnumTagSinglePayload(&a1[v13], 0, 1, v14);
      }

      v36 = v12[6];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v39 = *(v38 + 1);
      *v37 = *v38;
      *(v37 + 1) = v39;
      v40 = v12[7];
      v41 = &a1[v40];
      v42 = &a2[v40];
      v41[4] = v42[4];
      *v41 = *v42;
      v43 = type metadata accessor for LinkParse(0);
      v44 = v43[5];
      v45 = &a1[v44];
      v46 = &a2[v44];
      v47 = *(v46 + 1);
      *v45 = *v46;
      *(v45 + 1) = v47;
      v48 = v43[6];
      v49 = &a1[v48];
      v50 = &a2[v48];
      v51 = *(v50 + 1);
      *v49 = *v50;
      *(v49 + 1) = v51;
      v52 = v43[7];
      v53 = &a1[v52];
      v54 = &a2[v52];
      v55 = *(v54 + 1);
      *v53 = *v54;
      *(v53 + 1) = v55;

      goto LABEL_25;
    case 8u:
      v25 = sub_1DD0DD12C();
      (*(*(v25 - 8) + 16))(a1, a2, v25);
      v26 = type metadata accessor for NLRouterParse(0);
      v27 = v26[5];
      v28 = &a1[v27];
      v29 = &a2[v27];
      v30 = *(v29 + 1);
      *v28 = *v29;
      *(v28 + 1) = v30;
      v31 = v26[6];
      v32 = &a1[v31];
      v33 = &a2[v31];
      v34 = type metadata accessor for USOParse(0);

      if (__swift_getEnumTagSinglePayload(v33, 1, v34))
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v32, v33, *(*(v35 - 8) + 64));
      }

      else
      {
        v63 = sub_1DD0DB4BC();
        (*(*(v63 - 8) + 16))(v32, v33, v63);
        v64 = v34[5];
        v65 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v33[v64], 1, v65))
        {
          v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v32[v64], &v33[v64], *(*(v66 - 8) + 64));
        }

        else
        {
          (*(*(v65 - 8) + 16))(&v32[v64], &v33[v64], v65);
          __swift_storeEnumTagSinglePayload(&v32[v64], 0, 1, v65);
        }

        v67 = v34[6];
        v68 = &v32[v67];
        v69 = &v33[v67];
        v70 = *(v69 + 1);
        *v68 = *v69;
        *(v68 + 1) = v70;
        v71 = v34[7];
        v72 = &v32[v71];
        v73 = &v33[v71];
        v72[4] = v73[4];
        *v72 = *v73;

        __swift_storeEnumTagSinglePayload(v32, 0, 1, v34);
      }

      v74 = v26[7];
      v75 = *&a2[v74];
      *&a1[v74] = v75;
      v76 = v75;
      goto LABEL_25;
    case 9u:
      v9 = sub_1DD0DD08C();
      (*(*(v9 - 8) + 16))(a1, a2, v9);
LABEL_25:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      break;
  }

  v77 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v77] = *&a2[v77];
  v78 = a3[7];
  v79 = &a1[v78];
  v80 = &a2[v78];
  v81 = *(v80 + 24);
  *&a1[v78 + 24] = v81;
  v82 = v81;
  v83 = **(v81 - 8);

  v83(v79, v80, v82);
  return a1;
}

char *assignWithCopy for SiriKitFlowFrameInput(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_1DCB29EBC(a1);
    v6 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v7 = sub_1DD0DC76C();
        (*(*(v7 - 8) + 16))(a1, a2, v7);
        goto LABEL_26;
      case 1u:
        v15 = sub_1DD0DC76C();
        (*(*(v15 - 8) + 16))(a1, a2, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&a1[*(v16 + 48)] = *&a2[*(v16 + 48)];
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);

        goto LABEL_26;
      case 3u:
        *a1 = *a2;
        swift_unknownObjectRetain();
        goto LABEL_26;
      case 4u:
        v8 = sub_1DD0DB1EC();
        (*(*(v8 - 8) + 16))(a1, a2, v8);
        goto LABEL_26;
      case 5u:
        v17 = *a2;
        *a1 = *a2;
        v18 = v17;
        goto LABEL_26;
      case 6u:
        v19 = sub_1DD0DB4BC();
        (*(*(v19 - 8) + 16))(a1, a2, v19);
        v20 = type metadata accessor for USOParse(0);
        v21 = v20[5];
        v22 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v21], 1, v22))
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v21], &a2[v21], *(*(v23 - 8) + 64));
        }

        else
        {
          (*(*(v22 - 8) + 16))(&a1[v21], &a2[v21], v22);
          __swift_storeEnumTagSinglePayload(&a1[v21], 0, 1, v22);
        }

        v51 = v20[6];
        v52 = &a1[v51];
        v53 = &a2[v51];
        *v52 = *v53;
        *(v52 + 1) = *(v53 + 1);
        v54 = v20[7];
        v55 = &a1[v54];
        v56 = &a2[v54];
        v57 = *v56;
        v55[4] = v56[4];
        *v55 = v57;

        goto LABEL_26;
      case 7u:
        v10 = sub_1DD0DB4BC();
        (*(*(v10 - 8) + 16))(a1, a2, v10);
        v11 = type metadata accessor for USOParse(0);
        v12 = v11[5];
        v13 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v12], 1, v13))
        {
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v12], &a2[v12], *(*(v14 - 8) + 64));
        }

        else
        {
          (*(*(v13 - 8) + 16))(&a1[v12], &a2[v12], v13);
          __swift_storeEnumTagSinglePayload(&a1[v12], 0, 1, v13);
        }

        v34 = v11[6];
        v35 = &a1[v34];
        v36 = &a2[v34];
        *v35 = *v36;
        *(v35 + 1) = *(v36 + 1);
        v37 = v11[7];
        v38 = &a1[v37];
        v39 = &a2[v37];
        v40 = *v39;
        v38[4] = v39[4];
        *v38 = v40;
        v41 = type metadata accessor for LinkParse(0);
        v42 = v41[5];
        v43 = &a1[v42];
        v44 = &a2[v42];
        *v43 = *v44;
        *(v43 + 1) = *(v44 + 1);
        v45 = v41[6];
        v46 = &a1[v45];
        v47 = &a2[v45];
        *v46 = *v47;
        *(v46 + 1) = *(v47 + 1);
        v48 = v41[7];
        v49 = &a1[v48];
        v50 = &a2[v48];
        *v49 = *v50;
        *(v49 + 1) = *(v50 + 1);

        goto LABEL_26;
      case 8u:
        v24 = sub_1DD0DD12C();
        (*(*(v24 - 8) + 16))(a1, a2, v24);
        v25 = type metadata accessor for NLRouterParse(0);
        v26 = v25[5];
        v27 = &a1[v26];
        v28 = &a2[v26];
        *v27 = *v28;
        *(v27 + 1) = *(v28 + 1);
        v29 = v25[6];
        v30 = &a1[v29];
        v31 = &a2[v29];
        v32 = type metadata accessor for USOParse(0);

        if (__swift_getEnumTagSinglePayload(v31, 1, v32))
        {
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v30, v31, *(*(v33 - 8) + 64));
        }

        else
        {
          v58 = sub_1DD0DB4BC();
          (*(*(v58 - 8) + 16))(v30, v31, v58);
          v59 = v32[5];
          v60 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v31[v59], 1, v60))
          {
            v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v30[v59], &v31[v59], *(*(v61 - 8) + 64));
          }

          else
          {
            (*(*(v60 - 8) + 16))(&v30[v59], &v31[v59], v60);
            __swift_storeEnumTagSinglePayload(&v30[v59], 0, 1, v60);
          }

          v62 = v32[6];
          v63 = &v30[v62];
          v64 = &v31[v62];
          *v63 = *v64;
          *(v63 + 1) = *(v64 + 1);
          v65 = v32[7];
          v66 = &v30[v65];
          v67 = &v31[v65];
          v68 = *v67;
          v66[4] = v67[4];
          *v66 = v68;

          __swift_storeEnumTagSinglePayload(v30, 0, 1, v32);
        }

        v69 = v25[7];
        v70 = *&a2[v69];
        *&a1[v69] = v70;
        v71 = v70;
        goto LABEL_26;
      case 9u:
        v9 = sub_1DD0DD08C();
        (*(*(v9 - 8) + 16))(a1, a2, v9);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        break;
    }
  }

  a1[a3[5]] = a2[a3[5]];
  *&a1[a3[6]] = *&a2[a3[6]];

  __swift_assign_boxed_opaque_existential_1(&a1[a3[7]], &a2[a3[7]]);
  return a1;
}

char *initializeWithTake for SiriKitFlowFrameInput(char *a1, char *a2, int *a3)
{
  v6 = type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = sub_1DD0DC76C();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      goto LABEL_22;
    case 1u:
      v15 = sub_1DD0DC76C();
      (*(*(v15 - 8) + 32))(a1, a2, v15);
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      *&a1[*(v16 + 48)] = *&a2[*(v16 + 48)];
      goto LABEL_22;
    case 4u:
      v18 = sub_1DD0DB1EC();
      (*(*(v18 - 8) + 32))(a1, a2, v18);
      goto LABEL_22;
    case 6u:
      v19 = sub_1DD0DB4BC();
      (*(*(v19 - 8) + 32))(a1, a2, v19);
      v20 = type metadata accessor for USOParse(0);
      v21 = v20[5];
      v22 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v21], 1, v22))
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v21], &a2[v21], *(*(v23 - 8) + 64));
      }

      else
      {
        (*(*(v22 - 8) + 32))(&a1[v21], &a2[v21], v22);
        __swift_storeEnumTagSinglePayload(&a1[v21], 0, 1, v22);
      }

      *&a1[v20[6]] = *&a2[v20[6]];
      v33 = v20[7];
      v34 = &a1[v33];
      v35 = &a2[v33];
      v34[4] = v35[4];
      *v34 = *v35;
      goto LABEL_22;
    case 7u:
      v24 = sub_1DD0DB4BC();
      (*(*(v24 - 8) + 32))(a1, a2, v24);
      v25 = type metadata accessor for USOParse(0);
      v26 = v25[5];
      v27 = sub_1DD0DB3EC();
      if (__swift_getEnumTagSinglePayload(&a2[v26], 1, v27))
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
        memcpy(&a1[v26], &a2[v26], *(*(v28 - 8) + 64));
      }

      else
      {
        (*(*(v27 - 8) + 32))(&a1[v26], &a2[v26], v27);
        __swift_storeEnumTagSinglePayload(&a1[v26], 0, 1, v27);
      }

      *&a1[v25[6]] = *&a2[v25[6]];
      v36 = v25[7];
      v37 = &a1[v36];
      v38 = &a2[v36];
      v37[4] = v38[4];
      *v37 = *v38;
      v39 = type metadata accessor for LinkParse(0);
      *&a1[v39[5]] = *&a2[v39[5]];
      *&a1[v39[6]] = *&a2[v39[6]];
      *&a1[v39[7]] = *&a2[v39[7]];
      goto LABEL_22;
    case 8u:
      v8 = sub_1DD0DD12C();
      (*(*(v8 - 8) + 32))(a1, a2, v8);
      v9 = type metadata accessor for NLRouterParse(0);
      *&a1[v9[5]] = *&a2[v9[5]];
      v10 = v9[6];
      v11 = &a1[v10];
      v12 = &a2[v10];
      v13 = type metadata accessor for USOParse(0);
      if (__swift_getEnumTagSinglePayload(v12, 1, v13))
      {
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
        memcpy(v11, v12, *(*(v14 - 8) + 64));
      }

      else
      {
        v29 = sub_1DD0DB4BC();
        (*(*(v29 - 8) + 32))(v11, v12, v29);
        v30 = v13[5];
        v31 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&v12[v30], 1, v31))
        {
          v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&v11[v30], &v12[v30], *(*(v32 - 8) + 64));
        }

        else
        {
          (*(*(v31 - 8) + 32))(&v11[v30], &v12[v30], v31);
          __swift_storeEnumTagSinglePayload(&v11[v30], 0, 1, v31);
        }

        *&v11[v13[6]] = *&v12[v13[6]];
        v40 = v13[7];
        v41 = &v11[v40];
        v42 = &v12[v40];
        v41[4] = v42[4];
        *v41 = *v42;
        __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
      }

      *&a1[v9[7]] = *&a2[v9[7]];
      goto LABEL_22;
    case 9u:
      v17 = sub_1DD0DD08C();
      (*(*(v17 - 8) + 32))(a1, a2, v17);
LABEL_22:
      swift_storeEnumTagMultiPayload();
      break;
    default:
      memcpy(a1, a2, *(*(v6 - 8) + 64));
      break;
  }

  v43 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v43] = *&a2[v43];
  v44 = a3[7];
  v45 = &a1[v44];
  v46 = &a2[v44];
  v47 = *(v46 + 1);
  *v45 = *v46;
  *(v45 + 1) = v47;
  *(v45 + 4) = *(v46 + 4);
  return a1;
}

char *assignWithTake for SiriKitFlowFrameInput(char *a1, char *a2, int *a3)
{
  if (a1 != a2)
  {
    sub_1DCB29EBC(a1);
    v6 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v7 = sub_1DD0DC76C();
        (*(*(v7 - 8) + 32))(a1, a2, v7);
        goto LABEL_23;
      case 1u:
        v15 = sub_1DD0DC76C();
        (*(*(v15 - 8) + 32))(a1, a2, v15);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&a1[*(v16 + 48)] = *&a2[*(v16 + 48)];
        goto LABEL_23;
      case 4u:
        v18 = sub_1DD0DB1EC();
        (*(*(v18 - 8) + 32))(a1, a2, v18);
        goto LABEL_23;
      case 6u:
        v19 = sub_1DD0DB4BC();
        (*(*(v19 - 8) + 32))(a1, a2, v19);
        v20 = type metadata accessor for USOParse(0);
        v21 = v20[5];
        v22 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v21], 1, v22))
        {
          v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v21], &a2[v21], *(*(v23 - 8) + 64));
        }

        else
        {
          (*(*(v22 - 8) + 32))(&a1[v21], &a2[v21], v22);
          __swift_storeEnumTagSinglePayload(&a1[v21], 0, 1, v22);
        }

        *&a1[v20[6]] = *&a2[v20[6]];
        v33 = v20[7];
        v34 = &a1[v33];
        v35 = &a2[v33];
        v34[4] = v35[4];
        *v34 = *v35;
        goto LABEL_23;
      case 7u:
        v24 = sub_1DD0DB4BC();
        (*(*(v24 - 8) + 32))(a1, a2, v24);
        v25 = type metadata accessor for USOParse(0);
        v26 = v25[5];
        v27 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v26], 1, v27))
        {
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v26], &a2[v26], *(*(v28 - 8) + 64));
        }

        else
        {
          (*(*(v27 - 8) + 32))(&a1[v26], &a2[v26], v27);
          __swift_storeEnumTagSinglePayload(&a1[v26], 0, 1, v27);
        }

        *&a1[v25[6]] = *&a2[v25[6]];
        v36 = v25[7];
        v37 = &a1[v36];
        v38 = &a2[v36];
        v37[4] = v38[4];
        *v37 = *v38;
        v39 = type metadata accessor for LinkParse(0);
        *&a1[v39[5]] = *&a2[v39[5]];
        *&a1[v39[6]] = *&a2[v39[6]];
        *&a1[v39[7]] = *&a2[v39[7]];
        goto LABEL_23;
      case 8u:
        v8 = sub_1DD0DD12C();
        (*(*(v8 - 8) + 32))(a1, a2, v8);
        v9 = type metadata accessor for NLRouterParse(0);
        *&a1[v9[5]] = *&a2[v9[5]];
        v10 = v9[6];
        v11 = &a1[v10];
        v12 = &a2[v10];
        v13 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v12, 1, v13))
        {
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v11, v12, *(*(v14 - 8) + 64));
        }

        else
        {
          v29 = sub_1DD0DB4BC();
          (*(*(v29 - 8) + 32))(v11, v12, v29);
          v30 = v13[5];
          v31 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v12[v30], 1, v31))
          {
            v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v11[v30], &v12[v30], *(*(v32 - 8) + 64));
          }

          else
          {
            (*(*(v31 - 8) + 32))(&v11[v30], &v12[v30], v31);
            __swift_storeEnumTagSinglePayload(&v11[v30], 0, 1, v31);
          }

          *&v11[v13[6]] = *&v12[v13[6]];
          v40 = v13[7];
          v41 = &v11[v40];
          v42 = &v12[v40];
          v41[4] = v42[4];
          *v41 = *v42;
          __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
        }

        *&a1[v9[7]] = *&a2[v9[7]];
        goto LABEL_23;
      case 9u:
        v17 = sub_1DD0DD08C();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
LABEL_23:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        break;
    }
  }

  v43 = a3[6];
  a1[a3[5]] = a2[a3[5]];
  *&a1[v43] = *&a2[v43];

  v44 = a3[7];
  v45 = &a1[v44];
  v46 = &a2[v44];
  __swift_destroy_boxed_opaque_existential_1Tm(&a1[v44]);
  v47 = *(v46 + 1);
  *v45 = *v46;
  *(v45 + 1) = v47;
  *(v45 + 4) = *(v46 + 4);
  return a1;
}

uint64_t sub_1DCFAAB04(uint64_t a1)
{
  result = type metadata accessor for Parse(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DCFAABB0(unint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a3 & 1) == 0)
  {
    if (a1)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  if (HIDWORD(a1))
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_76();
  if (v10)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (a1 >> 16 > 0x10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

LABEL_7:
  OUTLINED_FUNCTION_5_109();
  *swift_slowAlloc() = 0;
  v11 = sub_1DD0DD87C();
  v12 = sub_1DD0DE7FC();
  v13 = sub_1DD0DD83C();
  OUTLINED_FUNCTION_10_77(&dword_1DCAFC000, v14, v12, v13, v15, "enableTelemetry=YES");
  sub_1DCC56CC0(a6, &v20);
  if (v7)
  {
  }

  else
  {
    v16 = sub_1DD0DE7EC();
    v17 = sub_1DD0DD83C();
    OUTLINED_FUNCTION_10_77(&dword_1DCAFC000, v18, v16, v17, v19, "enableTelemetry=YES");

    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }
}

uint64_t sub_1DCFAAD08()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_11_67();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCFAAD68()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = v4;
  *(v0 + 128) = v5;
  *(v0 + 32) = v6;
  *(v0 + 40) = v7;
  *(v0 + 24) = v8;
  v9 = sub_1DD0DD85C();
  *(v0 + 80) = v9;
  *(v0 + 88) = *(v9 - 8);
  *(v0 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCFAAE34, 0, 0);
}

void sub_1DCFAAE34(uint64_t a1)
{
  v2 = sub_1DD0DD87C();
  v3 = sub_1DD0DE7FC();
  if (sub_1DD0DE92C())
  {
    v4 = *(v1 + 32);
    if ((*(v1 + 128) & 1) == 0)
    {
      if (v4)
      {
LABEL_9:
        OUTLINED_FUNCTION_5_109();
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = sub_1DD0DD83C();
        _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v2, v3, v7, v4, "", v6, 2u);
        OUTLINED_FUNCTION_18();
        MEMORY[0x1E12A8390]();
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v4 >> 32)
    {
      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_6_76();
      if (v5)
      {
LABEL_15:
        __break(1u);
        return;
      }

      if (v4 >> 16 <= 0x10)
      {
        v4 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_10:

  (*(*(v1 + 88) + 16))(*(v1 + 96), *(v1 + 48), *(v1 + 80));
  sub_1DD0DD8CC();
  swift_allocObject();
  *(v1 + 104) = sub_1DD0DD8BC();
  v8 = swift_task_alloc();
  *(v1 + 112) = v8;
  *v8 = v1;
  v8[1] = sub_1DCFAAFE0;
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 24);

  sub_1DCF485A8(v11, v9, v10);
}

uint64_t sub_1DCFAAFE0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  if (v0)
  {
    v7 = sub_1DCFAB168;
  }

  else
  {
    v7 = sub_1DCFAB0E8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCFAB0E8()
{
  OUTLINED_FUNCTION_4_111();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCFAB168()
{
  OUTLINED_FUNCTION_4_111();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCFAB298(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_1DD0DD8FC();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_1DD0DD90C();
}

void sub_1DCFAB324(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1EDE57E00);
  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    *(v9 + 4) = a1;
    *(v9 + 12) = 2048;
    *(v9 + 14) = a2;
    _os_log_impl(&dword_1DCAFC000, v7, v8, "AFAnalytics log end : AFAnalyticsEventType %ld - %ld", v9, 0x16u);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  sub_1DCDAC354(a3);
}

uint64_t sub_1DCFAB4B4()
{
  v0 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  v8 = sub_1DD0DD88C();
  __swift_allocate_value_buffer(v8, qword_1EDE57DD0);
  __swift_project_value_buffer(v8, qword_1EDE57DD0);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v9 = __swift_project_value_buffer(v0, qword_1EDE57E00);
  (*(v2 + 16))(v7, v9, v0);
  return sub_1DD0DD86C();
}

uint64_t sub_1DCFAB620()
{
  sub_1DCCFA914();
  result = sub_1DD0DE94C();
  qword_1EDE57DB8 = result;
  return result;
}

uint64_t sub_1DCFAB6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1DCCFA914();
  result = sub_1DD0DE94C();
  *a4 = result;
  return result;
}

void static SiriKitLifecycle.abortExecution(_:logger:file:line:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v26[-v14];
  sub_1DCB09910(a3, &v26[-v14], &unk_1ECCA7470, &qword_1DD0E16E0);
  v16 = sub_1DD0DD8FC();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_1DCB0E9D8(v15, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v30 = a7;

    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = a4;
      v20 = v19;
      v28 = swift_slowAlloc();
      v31 = v28;
      *v20 = 136315650;
      v21 = sub_1DD0DEC3C();
      v23 = sub_1DCB10E9C(v21, v22, &v31);
      v27 = v18;
      v24 = v23;

      *(v20 + 4) = v24;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v30;
      *(v20 + 22) = 2080;
      *(v20 + 24) = sub_1DCB10E9C(a1, a2, &v31);
      _os_log_impl(&dword_1DCAFC000, v17, v27, "FatalError at %s:%lu - %s", v20, 0x20u);
      v25 = v28;
      swift_arrayDestroy();
      MEMORY[0x1E12A8390](v25, -1, -1);
      MEMORY[0x1E12A8390](v20, -1, -1);
    }

    (*(*(v16 - 8) + 8))(v15, v16);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(a1, a2);
}

void static SiriKitLifecycle._logCrashToEventBus(_:)(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4F6A8 != -1)
  {
    swift_once();
  }

  memset(v11, 0, sizeof(v11));
  type metadata accessor for SiriKitEvent(0);
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  *v6 = 6;
  *(v6 + 1) = 0x54746E6572727543;
  *(v6 + 2) = 0xEB000000006B7361;
  *(v6 + 4) = 0;
  *(v6 + 5) = 0;
  *(v6 + 3) = 0;
  sub_1DCB09910(v11, (v6 + 48), &dword_1ECCA3CE0, &unk_1DD0E4F80);
  *(v6 + 10) = 0;
  *(v6 + 11) = 0;
  sub_1DCB09910(v9, (v6 + 96), &unk_1ECCA3280, &unk_1DD0E23D0);
  *(v6 + 17) = 0;
  *(v6 + 18) = 0;
  *(v6 + 19) = 0xD000000000000012;
  *(v6 + 20) = 0x80000001DD120EB0;
  *(v6 + 21) = v8;
  *(v6 + 22) = a2;
  v6[184] = 44;
  swift_storeEnumTagMultiPayload();

  SiriKitEvent.__allocating_init(_:builder:)(v6, 0);
  sub_1DCB4C064();
}

_BYTE *storeEnumTagSinglePayload for SiriKitLifecycle(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCFABC48(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  v4 = v2;
  if (v5 <= 0x3F)
  {
    v4 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State(319, v2, *(a1 + 88), v3);
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

uint64_t sub_1DCFABD38(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_1DCFAC368(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_1DCFABDA8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_7();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_3_7();
  v6 = *(v5 + 88);
  v8 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State(0, v4, v6, v7);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - v11;
  OUTLINED_FUNCTION_3_7();
  v14 = *(v13 + 128);
  swift_beginAccess();
  v15 = *(v9 + 16);
  v15(v12, v1 + v14, v8);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v19 = v12[8];
    *a1 = *v12;
    *(a1 + 8) = v19;
    *(a1 + 40) = 1;
  }

  else if (result == 3)
  {
    v18 = *(v12 + 1);
    *a1 = *v12;
    *(a1 + 16) = v18;
    *(a1 + 25) = *(v12 + 25);
  }

  else
  {
    type metadata accessor for SiriKitNeedsDisambiguationFlow.NeedsDisambiguationError(0, v4, v6, v17);
    OUTLINED_FUNCTION_3_119();
    swift_getWitnessTable();
    v20 = swift_allocError();
    v22 = v21;
    v15(v21, v1 + v14, v8);
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v8);
    *a1 = v20;
    *(a1 + 8) = 0;
    *(a1 + 40) = 1;
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

void sub_1DCFABFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  MEMORY[0x1EEE9AC00](v5, v6);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCFAC264(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v6 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State(0, *(v3 + 80), *(v3 + 88), v5);
  (*(*(v6 - 8) + 24))(v1 + v4, a1, v6);
  v7 = swift_endAccess();
  sub_1DCFABFB0(v7, v8, v9, v10);
}

char *sub_1DCFAC368(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v10 = *v5;
  v24 = *(a5 + 16);
  v11 = *(a5 + 32);
  v12 = *(a5 + 40);
  v13 = *(a5 + 48);
  OUTLINED_FUNCTION_3_7();
  v15 = *(v10 + 80);
  (*(*(v15 - 8) + 32))(&v5[*(v14 + 96)]);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a2, &v5[*(v16 + 104)]);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a3, &v5[*(v17 + 120)]);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(a4, &v5[*(v18 + 112)]);
  OUTLINED_FUNCTION_66();
  v20 = &v5[*(v19 + 128)];
  *v20 = *a5;
  *(v20 + 1) = v24;
  *(v20 + 4) = v11;
  v20[40] = v12;
  *(v20 + 6) = v13;
  OUTLINED_FUNCTION_3_7();
  type metadata accessor for SiriKitNeedsDisambiguationFlow.State(0, v15, *(v21 + 88), v22);
  swift_storeEnumTagMultiPayload();
  return v5;
}

void sub_1DCFAC4DC()
{
  OUTLINED_FUNCTION_66();
  swift_getWitnessTable();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCFAC56C()
{
  OUTLINED_FUNCTION_42();
  v1[12] = v2;
  v1[13] = v0;
  v3 = *v0;
  v4 = *(*v0 + 88);
  v1[14] = v4;
  v5 = *(v3 + 80);
  v1[15] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[16] = AssociatedTypeWitness;
  v1[17] = *(AssociatedTypeWitness - 8);
  v1[18] = swift_task_alloc();
  v8 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State(0, v5, v4, v7);
  v1[19] = v8;
  v1[20] = *(v8 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCFAC6DC()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 104);
  v5 = *(*v4 + 128);
  swift_beginAccess();
  (*(v3 + 16))(v1, v4 + v5, v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v7 = *(v0 + 176);
      v8 = *v7;
      *(v0 + 184) = *v7;
      v9 = v7[1];
      *(v0 + 192) = v9;
      v10 = v7[2];
      v11 = v7[3];
      *(v0 + 200) = v11;
      v12 = v7[4];
      v13 = *(v7 + 40);
      v14 = v7[6];
      *(v0 + 208) = v14;
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v15 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v15, qword_1EDE57E00);
      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v17))
      {
        v18 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v18);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v19, v20, v21, v22, v23, 2u);
        OUTLINED_FUNCTION_80();
      }

      *(v0 + 16) = v8;
      *(v0 + 24) = v9;
      *(v0 + 32) = v10;
      *(v0 + 40) = v11;
      *(v0 + 48) = v12;
      *(v0 + 56) = v13;
      *(v0 + 64) = v14;
      swift_task_alloc();
      OUTLINED_FUNCTION_45();
      *(v0 + 216) = v24;
      *v24 = v25;
      v24[1] = sub_1DCFACD74;
      OUTLINED_FUNCTION_73();

      return sub_1DCFACEE8(v26, v27, v28, v29);
    case 2u:
      v44 = *(v0 + 176);
      v46 = *(v0 + 136);
      v45 = *(v0 + 144);
      v47 = *(v0 + 128);
      v48 = *v44;
      type metadata accessor for NeedsDisambiguationFlowStrategyAdapter(255, *(v0 + 120), *(v0 + 112), v6);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v46 + 32))(v45, v44 + *(TupleTypeMetadata2 + 48), v47);
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v50 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v50, qword_1EDE57E00);
      v51 = sub_1DD0DD8EC();
      v52 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = OUTLINED_FUNCTION_50_0();
        *v53 = 0;
        _os_log_impl(&dword_1DCAFC000, v51, v52, "SiriKitNeedsDisambiguationFlow handling disambiguation", v53, 2u);
        OUTLINED_FUNCTION_80();
      }

      v54 = *(v0 + 144);

      sub_1DCFAD760(v48, v54, v55, v56);
    case 3u:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v31 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v31, qword_1EDE57E00);
      v32 = sub_1DD0DD8EC();
      v33 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v33))
      {
        v34 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v34);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v35, v36, v37, v38, v39, 2u);
        OUTLINED_FUNCTION_62();
      }

      v40 = *(v0 + 176);
      v41 = *(v0 + 152);
      v42 = *(v0 + 160);

      v43 = static ExecuteResponse.complete()();
      (*(v42 + 8))(v40, v41, v43);
      break;
    case 4u:
      (*(*(v0 + 160) + 8))(*(v0 + 176), *(v0 + 152));
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v57 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v57, qword_1EDE57E00);
      v58 = sub_1DD0DD8EC();
      v59 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_23(v59))
      {
        v60 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v60);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v61, v62, v63, v64, v65, 2u);
        OUTLINED_FUNCTION_62();
      }

      static ExecuteResponse.complete()();
      break;
    default:
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v66 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v66, qword_1EDE57E00);
      sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_73();

  __asm { BRAA            X1, X16 }

  return result;
}

uint64_t sub_1DCFACD74()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCFACE58()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCFACEE8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 168) = a1;
  *(v5 + 176) = v4;
  v7 = *v4;
  v8 = *(*v4 + 80);
  *(v5 + 184) = v8;
  v9 = *(v7 + 88);
  *(v5 + 192) = v9;
  *(v5 + 200) = type metadata accessor for SiriKitNeedsDisambiguationFlow.State(0, v8, v9, a4);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = *(v8 - 8);
  *(v5 + 224) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 232) = AssociatedTypeWitness;
  *(v5 + 240) = *(AssociatedTypeWitness - 8);
  v11 = swift_task_alloc();
  v12 = *a2;
  v13 = a2[1];
  *(v5 + 248) = v11;
  *(v5 + 256) = v12;
  v14 = a2[2];
  v15 = a2[3];
  *(v5 + 264) = v13;
  *(v5 + 272) = v14;
  v16 = a2[4];
  *(v5 + 280) = v15;
  *(v5 + 288) = v16;
  v17 = *(a2 + 40);
  *(v5 + 336) = v17;
  v18 = a2[6];
  *(v5 + 296) = v18;
  *(v5 + 304) = *(v7 + 96);
  *(v5 + 16) = v12;
  *(v5 + 24) = v13;
  *(v5 + 32) = v14;
  *(v5 + 40) = v15;
  *(v5 + 48) = v16;
  *(v5 + 56) = v17;
  *(v5 + 64) = v18;
  v21 = (*(v9 + 72) + **(v9 + 72));
  v19 = swift_task_alloc();
  *(v5 + 312) = v19;
  *v19 = v5;
  v19[1] = sub_1DCFAD1AC;

  return v21(v11, v5 + 16, v8, v9);
}

uint64_t sub_1DCFAD1AC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 320) = v0;

  if (v0)
  {
    v7 = sub_1DCFAD53C;
  }

  else
  {
    v7 = sub_1DCFAD2AC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1DCFAD2AC()
{
  v33 = v0;
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
    v4 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v4);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_62();
  }

  v25 = *(v0 + 336);
  v23 = *(v0 + 280);
  v24 = *(v0 + 288);
  v10 = *(v0 + 264);
  v21 = *(v0 + 304);
  v22 = *(v0 + 272);
  v11 = *(v0 + 256);
  v26 = *(v0 + 296);
  v28 = *(v0 + 240);
  v29 = *(v0 + 248);
  v27 = *(v0 + 232);
  v12 = *(v0 + 216);
  v13 = *(v0 + 224);
  v14 = *(v0 + 208);
  v15 = *(v0 + 184);
  v16 = *(v0 + 192);
  v17 = *(v0 + 176);

  type metadata accessor for NeedsDisambiguationFlowStrategyAdapter(0, v15, v16, v18);
  (*(v12 + 16))(v13, v17 + v21, v15);
  v30[0] = v11;
  v30[1] = v10;
  v30[2] = v22;
  v30[3] = v23;
  v30[4] = v24;
  v31 = v25;
  v32 = v26;
  sub_1DCB17CA0(v17 + *(*v17 + 104), v0 + 128);
  v19 = sub_1DCDF118C(v13, v30, (v0 + 128));
  v20 = *(swift_getTupleTypeMetadata2() + 48);
  *v14 = v19;
  (*(v28 + 16))(v14 + v20, v29, v27);
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFAD53C()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 336);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 272);
  *(v0 + 72) = *(v0 + 256);
  *(v0 + 88) = v4;
  *(v0 + 104) = v3;
  *(v0 + 112) = v1;
  *(v0 + 120) = v2;
  v5 = swift_task_alloc();
  *(v0 + 328) = v5;
  *v5 = v0;
  v5[1] = sub_1DCFAD5F8;
  v8 = *(v0 + 320);

  return sub_1DCFAE034(v8, v0 + 72, v6, v7);
}

uint64_t sub_1DCFAD5F8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCFAD6DC()
{
  OUTLINED_FUNCTION_42();

  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCFAD760(uint64_t a1, uint64_t a2, void x2_0, uint64_t a4)
{
  v5 = v4;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v47 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State(0, v6, v7, a4);
  MEMORY[0x1EEE9AC00](v47, v8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 24);
  v48 = swift_checkMetadataState();
  v11 = v10(v48, AssociatedConformanceWitness);
  v12 = &off_1EDE4F000;
  if (v11)
  {
    v13 = (v4 + *(*v4 + 112));
    v14 = v13[3];
    v15 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v14);
    if ((*(v15 + 8))(v14, v15) & 1) != 0 || (v16 = v13[3], v17 = v13[4], __swift_project_boxed_opaque_existential_1(v13, v16), ((*(v17 + 16))(v16, v17)))
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v18 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v18, qword_1EDE57E00);
      v19 = sub_1DD0DD8EC();
      v20 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1DCAFC000, v19, v20, "SiriKitNeedsDisambiguationFlow cannot request device unlock. Initiating Handoff", v21, 2u);
        MEMORY[0x1E12A8390](v21, -1, -1);
      }

      type metadata accessor for HandoffSessionToCompanionFlowAsync();
      sub_1DCB17CA0(v13, v50);
      sub_1DCB17CA0(v5 + *(*v5 + 120), v49);
      type metadata accessor for NeedsDisambiguationFlowStrategyAdapter(0, v6, v7, v22);
      sub_1DD0DCF8C();
    }

    v23 = v13[3];
    v24 = v13[4];
    __swift_project_boxed_opaque_existential_1(v13, v23);
    (*(v7 + 48))(v50, v6, v7);
    v25 = (*(v24 + 248))(v50, v23, v24);
    sub_1DCC4B20C(v50);
    v12 = &off_1EDE4F000;
    if ((v25 & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v42 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v42, qword_1EDE57E00);
      v43 = sub_1DD0DD8EC();
      v44 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1DCAFC000, v43, v44, "SiriKitNeedsDisambiguationFlow requires that the device is unlocked to proceed. Pushing an UnlockDeviceFlow. Transitioning to unlockRequestSent.", v45, 2u);
        MEMORY[0x1E12A8390](v45, -1, -1);
      }

      type metadata accessor for UnlockDeviceFlowAsync(0);
      sub_1DCB17CA0(v13, v50);
      sub_1DCB17CA0(v5 + *(*v5 + 120), v49);
      type metadata accessor for NeedsDisambiguationFlowStrategyAdapter(0, v6, v7, v46);
      sub_1DD0DCF8C();
    }

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v26 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v26, qword_1EDE57E00);
    v27 = sub_1DD0DD8EC();
    v28 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1DCAFC000, v27, v28, "DisambiguationList requested an unlock but we are already unlocked", v29, 2u);
      v30 = v29;
      v12 = &off_1EDE4F000;
      MEMORY[0x1E12A8390](v30, -1, -1);
    }
  }

  if (v12[288] != -1)
  {
    swift_once();
  }

  v31 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v31, qword_1EDE57E00);
  v32 = sub_1DD0DD8EC();
  v33 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1DCAFC000, v32, v33, "SiriKitNeedsDisambiguationFlow pushing a PromptForDisambiguationFlow to handle disambiguation.", v34, 2u);
    MEMORY[0x1E12A8390](v34, -1, -1);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = swift_getAssociatedTypeWitness();
  v39 = type metadata accessor for IntentPromptAnswer(255, v36, v37, v38);
  type metadata accessor for PromptForDisambiguationFlowAsync(0, AssociatedTypeWitness, v39, v40);
  (*(AssociatedConformanceWitness + 16))(v48, AssociatedConformanceWitness);
  sub_1DCB17CA0(v5 + *(*v5 + 120), v50);
  type metadata accessor for NeedsDisambiguationFlowStrategyAdapter(0, v6, v7, v41);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCFAE034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 248) = a1;
  *(v5 + 256) = v4;
  *(v5 + 264) = type metadata accessor for SiriKitNeedsDisambiguationFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  *(v5 + 272) = swift_task_alloc();
  *(v5 + 280) = type metadata accessor for SiriKitEventPayload(0);
  *(v5 + 288) = swift_task_alloc();
  v7 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v7;
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = *(a2 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1DCFAE140, 0, 0);
}

uint64_t sub_1DCFAE140()
{
  v21 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = v0[31];
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1DD0DF18C();
    v10 = sub_1DCB10E9C(v8, v9, &v20);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "SiriKitNeedsDisambiguationFlow encountered an error while building the disambiguation list: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v12 = v0[31];
  v11 = v0[32];
  v13 = (v11 + *(*v11 + 120));
  v15 = v13[3];
  v14 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v15);
  v16 = swift_task_alloc();
  v0[37] = v16;
  v16[2] = v11;
  v16[3] = v12;
  v16[4] = v0 + 2;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[38] = v17;
  *v17 = v18;
  v17[1] = sub_1DCFAE368;

  return sub_1DCB63BBC((v0 + 9), &unk_1DD106DA8, v16, v15, v14);
}

uint64_t sub_1DCFAE368()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
    v7 = sub_1DCFAE928;
  }

  else
  {

    v7 = sub_1DCFAE470;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

void sub_1DCFAE470()
{
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  __swift_project_boxed_opaque_existential_1((v1 + 72), v3);
  if (sub_1DCB651D0(v3))
  {
    v4 = *(v1 + 288);
    v5 = (*(v1 + 256) + *(**(v1 + 256) + 104));
    v6 = [*(v1 + 24) typeName];
    v7 = sub_1DD0DDFBC();
    v9 = v8;

    v10 = *(v1 + 16);
    *(v1 + 152) = 0u;
    *(v1 + 168) = 0u;
    *(v1 + 128) = 0u;
    *(v1 + 144) = 0;
    *(v1 + 112) = 0u;
    swift_getErrorValue();
    v11 = sub_1DCEE0FD4(*(v1 + 192), *(v1 + 200));
    v13 = v12;
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    type metadata accessor for SiriKitEvent(0);
    *v4 = 6;
    *(v4 + 8) = v7;
    *(v4 + 16) = v9;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 24) = v10;
    sub_1DCB09910(v1 + 152, v4 + 48, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    *(v4 + 80) = 0;
    *(v4 + 88) = 0;
    sub_1DCB09910(v1 + 112, v4 + 96, &unk_1ECCA3280, &unk_1DD0E23D0);
    *(v4 + 136) = 0u;
    *(v4 + 152) = 0u;
    *(v4 + 168) = v11;
    *(v4 + 176) = v13;
    *(v4 + 184) = 83;
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  OUTLINED_FUNCTION_12_66();
  v14 = v0;
  sub_1DCFAC264(v2);
}

uint64_t sub_1DCFAE774()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DCB0E9D8(v2 + 112, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB0E9D8(v2 + 152, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCFAE8A0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_12_66();
  v2 = v1;
  sub_1DCFAC264(v0);
}

void sub_1DCFAE928()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);

  *v2 = v1;
  OUTLINED_FUNCTION_21_48();
  v3 = v1;
  sub_1DCFAC264(v2);
}

uint64_t sub_1DCFAE9C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  v4[18] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCFAEA14, 0, 0);
}

uint64_t sub_1DCFAEA14()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 25);
  *(v0 + 16) = *(v1 + 1);
  *(v0 + 25) = v5;
  v6 = *(v1 + 25);
  *(v0 + 48) = *(v1 + 1);
  *(v0 + 57) = v6;
  v7 = *(*(v2 + 88) + 8);
  v8 = *(v7 + 24);
  sub_1DCDECFFC(v0 + 16, v0 + 80);
  v9 = *(v2 + 80);
  v15 = (v8 + *v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 152) = v10;
  *v10 = v11;
  v10[1] = sub_1DCFAEBA8;
  v12 = *(v0 + 128);
  v13 = *(v0 + 112);

  return v15(v13, v12, v3, v4, v0 + 48, v9, v7);
}

uint64_t sub_1DCFAEBA8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;
  *(v2 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DCFAECFC, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5();
  }
}

void sub_1DCFAED88(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v5;
  v9 = *(*v5 + 80);
  v40 = *(*v5 + 88);
  v41 = v9;
  v10 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State(0, v9, v40, a4);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v39 - v17;
  v19 = *(v8 + 128);
  swift_beginAccess();
  (*(v11 + 16))(v18, v5 + v19, v10);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    (*(v11 + 8))(v18, v10);
    if (a2)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v20 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v20, qword_1EDE57E00);
      v21 = a1;
      v22 = sub_1DD0DD8EC();
      v23 = sub_1DD0DE6EC();
      sub_1DCB79378(a1, 1);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v42 = v25;
        *v24 = 136315138;
        swift_getErrorValue();
        v26 = sub_1DD0DF18C();
        v28 = v15;
        v29 = sub_1DCB10E9C(v26, v27, &v42);

        *(v24 + 4) = v29;
        v15 = v28;
        _os_log_impl(&dword_1DCAFC000, v22, v23, "SiriKitNeedsDisambiguationFlow received an unexpected error while trying to unlock the device: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x1E12A8390](v25, -1, -1);
        MEMORY[0x1E12A8390](v24, -1, -1);
      }

      *v15 = a1;
      v15[8] = 0;
      swift_storeEnumTagMultiPayload();
      v30 = a1;
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v32 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v32, qword_1EDE57E00);
      v33 = sub_1DD0DD8EC();
      v34 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1DCAFC000, v33, v34, "SiriKitNeedsDisambiguationFlow handed session off to companion device.", v35, 2u);
        MEMORY[0x1E12A8390](v35, -1, -1);
      }

      type metadata accessor for SiriKitNeedsDisambiguationFlow.NeedsDisambiguationError(0, v41, v40, v36);
      swift_getWitnessTable();
      v37 = swift_allocError();
      __swift_storeEnumTagSinglePayload(v38, 1, 1, v10);
      *v15 = v37;
      v15[8] = 1;
      swift_storeEnumTagMultiPayload();
    }

    sub_1DCFAC264(v15);
  }

  (*(v11 + 8))(v18, v10);
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v31 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v31, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

void sub_1DCFAF41C(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v37 = a1;
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = *(*v4 + 88);
  v8 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State(0, v6, v7, a4);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v36 - v15;
  v42 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = *(AssociatedTypeWitness - 8);
  v41 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v18);
  v38 = &v36 - v19;
  v20 = *(v5 + 128);
  swift_beginAccess();
  v21 = *(v9 + 16);
  v21(v16, &v4[v20], v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v13;
    v24 = *v16;
    type metadata accessor for NeedsDisambiguationFlowStrategyAdapter(255, v42, v7, v22);
    v25 = v41;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v27 = v40;
    v28 = v38;
    (*(v40 + 32))(v38, &v16[*(TupleTypeMetadata2 + 48)], v25);
    if (v39)
    {
      v29 = v37;
      *v23 = v37;
      *(v23 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      v30 = v29;
      sub_1DCFAC264(v23);
    }

    v35 = *(TupleTypeMetadata2 + 48);
    *v23 = v24;
    (*(v27 + 16))(v23 + v35, v28, v25);
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  (*(v9 + 8))(v16, v8);
  type metadata accessor for SiriKitNeedsDisambiguationFlow.NeedsDisambiguationError(0, v42, v7, v31);
  swift_getWitnessTable();
  v32 = swift_allocError();
  v34 = v33;
  v21(v33, &v4[v20], v8);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v8);
  *v13 = v32;
  v13[8] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1DCFAC264(v13);
}

void sub_1DCFAF810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SiriKitNeedsDisambiguationFlow.State(0, *(*v4 + 80), *(*v4 + 88), a4);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v17 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for IntentPromptAnswer(255, AssociatedTypeWitness, v11, v12);
  v16 = type metadata accessor for PromptResult(0, v13, v14, v15);
  (*(*(v16 - 8) + 16))(v9, a1, v16);
  swift_storeEnumTagMultiPayload();
  sub_1DCFAC264(v9);
}

unint64_t sub_1DCFAF944(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1, v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5);
  v6 = 0x6C616974696E692ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v6 = 0xD000000000000012;

      type metadata accessor for NeedsDisambiguationFlowStrategyAdapter(255, *(a1 + 16), *(a1 + 24), v7);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(*(AssociatedTypeWitness - 8) + 8))(&v5[*(TupleTypeMetadata2 + 48)], AssociatedTypeWitness);
      break;
    case 2u:

      type metadata accessor for NeedsDisambiguationFlowStrategyAdapter(255, *(a1 + 16), *(a1 + 24), v10);
      v11 = swift_getAssociatedTypeWitness();
      v12 = swift_getTupleTypeMetadata2();
      (*(*(v11 - 8) + 8))(&v5[*(v12 + 48)], v11);
      v6 = 0xD000000000000014;
      break;
    case 3u:
      (*(v3 + 8))(v5, a1);
      v6 = 0x74656C706D6F632ELL;
      break;
    case 4u:
      (*(v3 + 8))(v5, a1);
      v6 = 0x726F7272652ELL;
      break;
    case 5u:
      return v6;
    case 6u:
      v6 = 0xD000000000000012;
      break;
    default:
      (*(v3 + 8))(v5, a1);
      v6 = 0x646574726174732ELL;
      break;
  }

  return v6;
}

uint64_t *sub_1DCFAFC60()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 96), v2);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 104)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v4 + 112)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v5 + 120)));
  OUTLINED_FUNCTION_66();
  v7 = *(v6 + 128);
  type metadata accessor for SiriKitNeedsDisambiguationFlow.State(0, v2, *(v1 + 88), v8);
  OUTLINED_FUNCTION_2();
  (*(v9 + 8))(v0 + v7);
  return v0;
}

uint64_t sub_1DCFAFD84()
{
  sub_1DCFAFC60();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCFAFE0C(uint64_t a1)
{
  v5 = "8";
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v6 = &v4;
    swift_getTupleTypeLayout2();
    v7 = &v3;
    v8 = &unk_1DD106CE0;
    v9 = &unk_1DD106CF8;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_1DCFAFF04(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 80);
  if (((v6 + 8) & ~v6) + *(v5 + 64) <= 0x38)
  {
    v7 = 56;
  }

  else
  {
    v7 = ((v6 + 8) & ~v6) + *(v5 + 64);
  }

  v8 = v7 + 1;
  if (v6 > 7u || (v6 & 0x100000) != 0 || v8 > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v11 = a2[v7];
  v12 = v11 - 5;
  if (v11 >= 5)
  {
    if (v7 <= 3)
    {
      v13 = v7;
    }

    else
    {
      v13 = 4;
    }

    switch(v13)
    {
      case 1:
        v14 = *a2;
        goto LABEL_22;
      case 2:
        v14 = *a2;
        goto LABEL_22;
      case 3:
        v14 = *a2 | (a2[2] << 16);
        goto LABEL_22;
      case 4:
        v14 = *a2;
LABEL_22:
        v15 = (v14 | (v12 << (8 * v7))) + 5;
        if (v7 >= 4)
        {
          v11 = v14 + 5;
        }

        else
        {
          v11 = v15;
        }

        break;
      default:
        break;
    }
  }

  switch(v11)
  {
    case 0u:
      v16 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v16;
      v17 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v17;
      *(a1 + 4) = *(a2 + 4);
      a1[40] = a2[40];
      *(a1 + 6) = *(a2 + 6);
      a1[v7] = 0;
      sub_1DD0DCF8C();
    case 1u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 2u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 3u:
      v21 = a2[40];
      if (v21 >= 2)
      {
        v21 = *a2 + 2;
      }

      if (v21 == 1)
      {
        v24 = *a2;
        v25 = *a2;
        *a1 = v24;
        a1[8] = a2[8];
        a1[40] = 1;
      }

      else if (v21)
      {
        v26 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v26;
        *(a1 + 25) = *(a2 + 25);
      }

      else
      {
        v22 = *(a2 + 3);
        if (v22)
        {
          *(a1 + 3) = v22;
          (**(v22 - 8))(a1, a2);
        }

        else
        {
          v27 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v27;
        }

        v28 = *(a2 + 4);
        *(a1 + 4) = v28;
        a1[40] = 0;
        v29 = v28;
      }

      v20 = 3;
      goto LABEL_44;
    case 4u:
      v18 = *a2;
      v19 = *a2;
      *a1 = v18;
      a1[8] = a2[8];
      v20 = 4;
LABEL_44:
      a1[v7] = v20;
      result = a1;
      break;
    default:

      result = memcpy(a1, a2, v8);
      break;
  }

  return result;
}

void sub_1DCFB0278(id *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 80);
  v5 = ((v4 + 8) & ~v4) + *(*(AssociatedTypeWitness - 8) + 64);
  if (v5 <= 0x38)
  {
    v5 = 56;
  }

  v6 = *(a1 + v5);
  v7 = v6 - 5;
  if (v6 >= 5)
  {
    if (v5 <= 3)
    {
      v8 = v5;
    }

    else
    {
      v8 = 4;
    }

    switch(v8)
    {
      case 1:
        v9 = *a1;
        goto LABEL_12;
      case 2:
        v9 = *a1;
        goto LABEL_12;
      case 3:
        v9 = *a1 | (*(a1 + 2) << 16);
        goto LABEL_12;
      case 4:
        v9 = *a1;
LABEL_12:
        v10 = (v9 | (v7 << (8 * v5))) + 5;
        if (v5 >= 4)
        {
          v6 = v9 + 5;
        }

        else
        {
          v6 = v10;
        }

        break;
      default:
        break;
    }
  }

  switch(v6)
  {
    case 0u:

      v13 = a1[6];
      goto LABEL_31;
    case 1u:
    case 2u:
      v14 = *(AssociatedTypeWitness - 8);

      v11 = *(v14 + 8);

      v11((a1 + v4 + 8) & ~v4, AssociatedTypeWitness);
      return;
    case 3u:
      v12 = *(a1 + 40);
      if (v12 >= 2)
      {
        v12 = *a1 + 2;
      }

      if (v12 == 1)
      {
        goto LABEL_26;
      }

      if (v12)
      {
        return;
      }

      if (a1[3])
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v13 = a1[4];
LABEL_31:

LABEL_28:

      return;
    case 4u:
LABEL_26:
      v13 = *a1;

      goto LABEL_28;
    default:
      return;
  }
}

void *sub_1DCFB04C4(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 80);
  if (((v6 + 8) & ~v6) + *(v5 + 64) <= 0x38)
  {
    v7 = 56;
  }

  else
  {
    v7 = ((v6 + 8) & ~v6) + *(v5 + 64);
  }

  v8 = a2[v7];
  v9 = v8 - 5;
  if (v8 >= 5)
  {
    if (v7 <= 3)
    {
      v10 = v7;
    }

    else
    {
      v10 = 4;
    }

    switch(v10)
    {
      case 1:
        v11 = *a2;
        goto LABEL_13;
      case 2:
        v11 = *a2;
        goto LABEL_13;
      case 3:
        v11 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v11 = *a2;
LABEL_13:
        v12 = (v11 | (v9 << (8 * v7))) + 5;
        if (v7 >= 4)
        {
          v8 = v11 + 5;
        }

        else
        {
          v8 = v12;
        }

        break;
      default:
        break;
    }
  }

  switch(v8)
  {
    case 0u:
      v13 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v13;
      v14 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v14;
      *(a1 + 4) = *(a2 + 4);
      a1[40] = a2[40];
      *(a1 + 6) = *(a2 + 6);
      a1[v7] = 0;
      sub_1DD0DCF8C();
    case 1u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 2u:
      *a1 = *a2;
      sub_1DD0DCF8C();
    case 3u:
      v18 = a2[40];
      if (v18 >= 2)
      {
        v18 = *a2 + 2;
      }

      if (v18 == 1)
      {
        v21 = *a2;
        v22 = *a2;
        *a1 = v21;
        a1[8] = a2[8];
        a1[40] = 1;
      }

      else if (v18)
      {
        v23 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v23;
        *(a1 + 25) = *(a2 + 25);
      }

      else
      {
        v19 = *(a2 + 3);
        if (v19)
        {
          *(a1 + 3) = v19;
          (**(v19 - 8))(a1, a2);
        }

        else
        {
          v24 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v24;
        }

        v25 = *(a2 + 4);
        *(a1 + 4) = v25;
        a1[40] = 0;
        v26 = v25;
      }

      v17 = 3;
      goto LABEL_35;
    case 4u:
      v15 = *a2;
      v16 = *a2;
      *a1 = v15;
      a1[8] = a2[8];
      v17 = 4;
LABEL_35:
      a1[v7] = v17;
      result = a1;
      break;
    default:

      result = memcpy(a1, a2, v7 + 1);
      break;
  }

  return result;
}

unsigned __int8 *sub_1DCFB07FC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(AssociatedTypeWitness - 8);
    v7 = *(v6 + 80);
    if (((v7 + 8) & ~v7) + *(v6 + 64) <= 0x38)
    {
      v8 = 56;
    }

    else
    {
      v8 = ((v7 + 8) & ~v7) + *(*(AssociatedTypeWitness - 8) + 64);
    }

    v9 = 8 * v8;
    v10 = a1[v8];
    v11 = v10 - 5;
    if (v10 >= 5)
    {
      if (v8 <= 3)
      {
        v12 = v8;
      }

      else
      {
        v12 = 4;
      }

      switch(v12)
      {
        case 1:
          v13 = *a1;
          goto LABEL_14;
        case 2:
          v13 = *a1;
          goto LABEL_14;
        case 3:
          v13 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v13 = *a1;
LABEL_14:
          v14 = (v13 | (v11 << v9)) + 5;
          v10 = v13 + 5;
          if (v8 < 4)
          {
            v10 = v14;
          }

          break;
        default:
          break;
      }
    }

    switch(v10)
    {
      case 0u:

        v16 = *(a1 + 6);
        goto LABEL_27;
      case 1u:
      case 2u:

        (*(v6 + 8))(&a1[v7 + 8] & ~v7, AssociatedTypeWitness);
        break;
      case 3u:
        v15 = a1[40];
        if (v15 >= 2)
        {
          v15 = *a1 + 2;
        }

        if (v15 == 1)
        {
          goto LABEL_25;
        }

        if (!v15)
        {
          if (*(a1 + 3))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          v16 = *(a1 + 4);
LABEL_27:
        }

        break;
      case 4u:
LABEL_25:

        break;
      default:
        break;
    }

    v17 = a2[v8];
    v18 = v17 - 5;
    if (v17 >= 5)
    {
      if (v8 <= 3)
      {
        v19 = v8;
      }

      else
      {
        v19 = 4;
      }

      switch(v19)
      {
        case 1:
          v20 = *a2;
          goto LABEL_37;
        case 2:
          v20 = *a2;
          goto LABEL_37;
        case 3:
          v20 = *a2 | (a2[2] << 16);
          goto LABEL_37;
        case 4:
          v20 = *a2;
LABEL_37:
          v21 = (v20 | (v18 << v9)) + 5;
          v17 = v20 + 5;
          if (v8 < 4)
          {
            v17 = v21;
          }

          break;
        default:
          break;
      }
    }

    switch(v17)
    {
      case 0u:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        v22 = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 4) = v22;
        *(a1 + 6) = *(a2 + 6);
        a1[v8] = 0;
        sub_1DD0DCF8C();
      case 1u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 3u:
        v26 = a2[40];
        if (v26 >= 2)
        {
          v26 = *a2 + 2;
        }

        if (v26 == 1)
        {
          v29 = *a2;
          v30 = *a2;
          *a1 = v29;
          a1[8] = a2[8];
          a1[40] = 1;
        }

        else if (v26)
        {
          v31 = *a2;
          v32 = *(a2 + 1);
          *(a1 + 25) = *(a2 + 25);
          *a1 = v31;
          *(a1 + 1) = v32;
        }

        else
        {
          v27 = *(a2 + 3);
          if (v27)
          {
            *(a1 + 3) = v27;
            (**(v27 - 8))(a1, a2);
          }

          else
          {
            v33 = *(a2 + 1);
            *a1 = *a2;
            *(a1 + 1) = v33;
          }

          v34 = *(a2 + 4);
          *(a1 + 4) = v34;
          a1[40] = 0;
          v35 = v34;
        }

        v25 = 3;
        goto LABEL_58;
      case 4u:
        v23 = *a2;
        v24 = *a2;
        *a1 = v23;
        a1[8] = a2[8];
        v25 = 4;
LABEL_58:
        a1[v8] = v25;
        return a1;
      default:

        return memcpy(a1, a2, v8 + 1);
    }
  }

  return a1;
}

void *sub_1DCFB0C80(_OWORD *a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  if (((v7 + 8) & ~v7) + *(v6 + 64) <= 0x38)
  {
    v8 = 56;
  }

  else
  {
    v8 = ((v7 + 8) & ~v7) + *(v6 + 64);
  }

  v9 = a2[v8];
  v10 = v9 - 5;
  if (v9 >= 5)
  {
    if (v8 <= 3)
    {
      v11 = v8;
    }

    else
    {
      v11 = 4;
    }

    switch(v11)
    {
      case 1:
        v12 = *a2;
        goto LABEL_13;
      case 2:
        v12 = *a2;
        goto LABEL_13;
      case 3:
        v12 = *a2 | (a2[2] << 16);
        goto LABEL_13;
      case 4:
        v12 = *a2;
LABEL_13:
        v13 = (v12 | (v10 << (8 * v8))) + 5;
        if (v8 >= 4)
        {
          v9 = v12 + 5;
        }

        else
        {
          v9 = v13;
        }

        break;
      default:
        break;
    }
  }

  v14 = ~v7;
  switch(v9)
  {
    case 0u:
      v15 = *(a2 + 1);
      *a1 = *a2;
      a1[1] = v15;
      a1[2] = *(a2 + 2);
      *(a1 + 6) = *(a2 + 6);
      *(a1 + v8) = 0;
      goto LABEL_33;
    case 1u:
      *a1 = *a2;
      (*(v6 + 32))((a1 + v7 + 8) & v14, &a2[v7 + 8] & v14, AssociatedTypeWitness);
      v16 = 1;
      goto LABEL_32;
    case 2u:
      *a1 = *a2;
      (*(v6 + 32))((a1 + v7 + 8) & v14, &a2[v7 + 8] & v14, AssociatedTypeWitness);
      v16 = 2;
      goto LABEL_32;
    case 3u:
      v17 = a2[40];
      if (v17 >= 2)
      {
        v17 = *a2 + 2;
      }

      if (v17 == 1)
      {
        *a1 = *a2;
        *(a1 + 8) = a2[8];
        *(a1 + 40) = 1;
      }

      else
      {
        v18 = *(a2 + 1);
        *a1 = *a2;
        a1[1] = v18;
        if (v17)
        {
          *(a1 + 25) = *(a2 + 25);
        }

        else
        {
          *(a1 + 4) = *(a2 + 4);
          *(a1 + 40) = 0;
        }
      }

      v16 = 3;
      goto LABEL_32;
    case 4u:
      *a1 = *a2;
      *(a1 + 8) = a2[8];
      v16 = 4;
LABEL_32:
      *(a1 + v8) = v16;
LABEL_33:
      result = a1;
      break;
    default:

      result = memcpy(a1, a2, v8 + 1);
      break;
  }

  return result;
}

unsigned __int8 *sub_1DCFB0F18(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(AssociatedTypeWitness - 8);
    v7 = *(v6 + 80);
    if (((v7 + 8) & ~v7) + *(v6 + 64) <= 0x38)
    {
      v8 = 56;
    }

    else
    {
      v8 = ((v7 + 8) & ~v7) + *(*(AssociatedTypeWitness - 8) + 64);
    }

    v9 = 8 * v8;
    v10 = a1[v8];
    v11 = v10 - 5;
    if (v10 >= 5)
    {
      if (v8 <= 3)
      {
        v12 = v8;
      }

      else
      {
        v12 = 4;
      }

      switch(v12)
      {
        case 1:
          v13 = *a1;
          goto LABEL_14;
        case 2:
          v13 = *a1;
          goto LABEL_14;
        case 3:
          v13 = *a1 | (a1[2] << 16);
          goto LABEL_14;
        case 4:
          v13 = *a1;
LABEL_14:
          v14 = (v13 | (v11 << v9)) + 5;
          v10 = v13 + 5;
          if (v8 < 4)
          {
            v10 = v14;
          }

          break;
        default:
          break;
      }
    }

    v15 = ~v7;
    switch(v10)
    {
      case 0u:

        v17 = *(a1 + 6);
        goto LABEL_27;
      case 1u:
      case 2u:

        (*(v6 + 8))(&a1[v7 + 8] & v15, AssociatedTypeWitness);
        break;
      case 3u:
        v16 = a1[40];
        if (v16 >= 2)
        {
          v16 = *a1 + 2;
        }

        if (v16 == 1)
        {
          goto LABEL_25;
        }

        if (!v16)
        {
          if (*(a1 + 3))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          v17 = *(a1 + 4);
LABEL_27:
        }

        break;
      case 4u:
LABEL_25:

        break;
      default:
        break;
    }

    v18 = a2[v8];
    v19 = v18 - 5;
    if (v18 >= 5)
    {
      if (v8 <= 3)
      {
        v20 = v8;
      }

      else
      {
        v20 = 4;
      }

      switch(v20)
      {
        case 1:
          v21 = *a2;
          goto LABEL_37;
        case 2:
          v21 = *a2;
          goto LABEL_37;
        case 3:
          v21 = *a2 | (a2[2] << 16);
          goto LABEL_37;
        case 4:
          v21 = *a2;
LABEL_37:
          v22 = (v21 | (v19 << v9)) + 5;
          v18 = v21 + 5;
          if (v8 < 4)
          {
            v18 = v22;
          }

          break;
        default:
          break;
      }
    }

    switch(v18)
    {
      case 0u:
        v23 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v23;
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 6) = *(a2 + 6);
        a1[v8] = 0;
        return a1;
      case 1u:
        *a1 = *a2;
        (*(v6 + 32))(&a1[v7 + 8] & v15, &a2[v7 + 8] & v15, AssociatedTypeWitness);
        v24 = 1;
        goto LABEL_55;
      case 2u:
        *a1 = *a2;
        (*(v6 + 32))(&a1[v7 + 8] & v15, &a2[v7 + 8] & v15, AssociatedTypeWitness);
        v24 = 2;
        goto LABEL_55;
      case 3u:
        v25 = a2[40];
        if (v25 >= 2)
        {
          v25 = *a2 + 2;
        }

        if (v25 == 1)
        {
          *a1 = *a2;
          a1[8] = a2[8];
          a1[40] = 1;
        }

        else
        {
          v26 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v26;
          if (v25)
          {
            *(a1 + 25) = *(a2 + 25);
          }

          else
          {
            *(a1 + 4) = *(a2 + 4);
            a1[40] = 0;
          }
        }

        v24 = 3;
        goto LABEL_55;
      case 4u:
        *a1 = *a2;
        a1[8] = a2[8];
        v24 = 4;
LABEL_55:
        a1[v8] = v24;
        return a1;
      default:

        return memcpy(a1, a2, v8 + 1);
    }
  }

  return a1;
}

uint64_t sub_1DCFB130C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = ((*(v5 + 80) + 8) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = 56;
  if (v6 > 0x38)
  {
    v7 = v6;
  }

  v8 = 250 - (1u >> (8 * v7));
  if (v7 > 3)
  {
    v8 = 250;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_24;
  }

  v9 = v7 + 1;
  v10 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v13 = ((~(-1 << v10) + a2 - v8) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v13 < 2)
    {
LABEL_24:
      v15 = *(a1 + v7);
      if (v8 <= (v15 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v15);
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_24;
  }

LABEL_16:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return v8 + (v9 | v14) + 1;
}

void sub_1DCFB14CC(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = ((*(v7 + 80) + 8) & ~*(v7 + 80)) + *(v7 + 64);
  if (v8 <= 0x38)
  {
    v8 = 56;
  }

  if (v8 <= 3)
  {
    v9 = 250 - (1u >> (8 * v8));
  }

  else
  {
    v9 = 250;
  }

  v10 = v8 + 1;
  v11 = 8 * (v8 + 1);
  if (v9 >= a3)
  {
    v12 = 0;
  }

  else if (v10 <= 3)
  {
    v15 = ((~(-1 << v11) + a3 - v9) >> v11) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v9 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v8] = -a2;
        }

        break;
    }
  }

  else
  {
    v13 = ~v9 + a2;
    if (v10 < 4)
    {
      v14 = (v13 >> v11) + 1;
      if (v8 != -1)
      {
        v17 = v13 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v10 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v10] = v14;
        break;
      case 2:
        *&a1[v10] = v14;
        break;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v10] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCFB170C(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = ((*(v3 + 80) + 8) & ~*(v3 + 80)) + *(v3 + 64);
  if (v4 <= 0x38)
  {
    v4 = 56;
  }

  result = a1[v4];
  if (result >= 5)
  {
    if (v4 <= 3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 4;
    }

    switch(v6)
    {
      case 1:
        v7 = *a1;
        goto LABEL_12;
      case 2:
        v7 = *a1;
        goto LABEL_12;
      case 3:
        v7 = *a1 | (a1[2] << 16);
        goto LABEL_12;
      case 4:
        v7 = *a1;
LABEL_12:
        if (v4 >= 4)
        {
          result = (v7 + 5);
        }

        else
        {
          result = (v7 | ((result - 5) << (8 * v4))) + 5;
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DCFB1820(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = ((*(v5 + 80) + 8) & ~*(v5 + 80)) + *(v5 + 64);
  if (a2 > 4)
  {
    if (v6 <= 0x38)
    {
      v7 = 56;
    }

    else
    {
      v7 = v6;
    }

    v8 = a2 - 5;
    if (v7 < 4)
    {
      a1[v7] = (v8 >> (8 * v7)) + 5;
      if (v7)
      {
        v9 = v8 & ~(-1 << (8 * v7));
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v9;
          a1[2] = BYTE2(v9);
        }

        else if (v7 == 2)
        {
          *a1 = v9;
        }

        else
        {
          *a1 = v8;
        }
      }
    }

    else
    {
      a1[v7] = 5;
      bzero(a1, v7);
      *a1 = v8;
    }
  }

  else
  {
    if (v6 <= 0x38)
    {
      v6 = 56;
    }

    a1[v6] = a2;
  }
}

uint64_t sub_1DCFB1980()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AD3C;

  return sub_1DCFAC56C();
}

uint64_t sub_1DCFB1A40(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCFB1A94()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1DCB4AD3C;

  return sub_1DCFAE9C8(v3, v4, v5, v6);
}

uint64_t sub_1DCFB1B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SiriKitNeedsDisambiguationFlow.State(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

char *sub_1DCFB1BD8(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 80);
  if (((v6 + 8) & ~v6) + *(v5 + 64) <= 0x38)
  {
    v7 = 56;
  }

  else
  {
    v7 = ((v6 + 8) & ~v6) + *(v5 + 64);
  }

  v8 = v7 + 1;
  if (v6 > 7u || (v6 & 0x100000) != 0 || v8 > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v11 = a2[v7];
  if (v7 <= 3)
  {
    v12 = 250 - (1u >> (8 * v7));
  }

  else
  {
    v12 = 250;
  }

  if (v12 <= (v11 ^ 0xFF))
  {
    if (v11 >= 5)
    {
      if (v7 <= 3)
      {
        v14 = v7;
      }

      else
      {
        v14 = 4;
      }

      switch(v14)
      {
        case 1:
          v15 = *a2;
          goto LABEL_29;
        case 2:
          v15 = *a2;
          goto LABEL_29;
        case 3:
          v15 = *a2 | (a2[2] << 16);
          goto LABEL_29;
        case 4:
          v15 = *a2;
LABEL_29:
          v11 = (v15 | ((v11 - 5) << (8 * v7))) + 5;
          if (v7 >= 4)
          {
            v11 = v15 + 5;
          }

          break;
        default:
          break;
      }
    }

    switch(v11)
    {
      case 0u:
        v16 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v16;
        v17 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v17;
        *(a1 + 4) = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 6) = *(a2 + 6);
        a1[v7] = 0;
        sub_1DD0DCF8C();
      case 1u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 3u:
        v21 = a2[40];
        if (v21 >= 2)
        {
          v21 = *a2 + 2;
        }

        if (v21 == 1)
        {
          v23 = *a2;
          v24 = *a2;
          *a1 = v23;
          a1[8] = a2[8];
          a1[40] = 1;
        }

        else if (v21)
        {
          v25 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v25;
          *(a1 + 25) = *(a2 + 25);
        }

        else
        {
          v22 = *(a2 + 3);
          if (v22)
          {
            *(a1 + 3) = v22;
            (**(v22 - 8))(a1, a2);
          }

          else
          {
            v26 = *(a2 + 1);
            *a1 = *a2;
            *(a1 + 1) = v26;
          }

          v27 = *(a2 + 4);
          *(a1 + 4) = v27;
          a1[40] = 0;
          v28 = v27;
        }

        v20 = 3;
        goto LABEL_47;
      case 4u:
        v18 = *a2;
        v19 = *a2;
        *a1 = v18;
        a1[8] = a2[8];
        v20 = 4;
LABEL_47:
        a1[v7] = v20;
        return a1;
      default:
        break;
    }
  }

  return memcpy(a1, a2, v8);
}

void sub_1DCFB1F74(id *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 80);
  v5 = 56;
  if (((v4 + 8) & ~v4) + *(*(AssociatedTypeWitness - 8) + 64) > 0x38)
  {
    v5 = ((v4 + 8) & ~v4) + *(*(AssociatedTypeWitness - 8) + 64);
  }

  v6 = *(a1 + v5);
  if (v5 <= 3)
  {
    v7 = 250 - (1u >> (8 * v5));
  }

  else
  {
    v7 = 250;
  }

  if (v7 <= (v6 ^ 0xFF))
  {
    if (v6 >= 5)
    {
      if (v5 <= 3)
      {
        v8 = v5;
      }

      else
      {
        v8 = 4;
      }

      switch(v8)
      {
        case 1:
          v9 = *a1;
          goto LABEL_17;
        case 2:
          v9 = *a1;
          goto LABEL_17;
        case 3:
          v9 = *a1 | (*(a1 + 2) << 16);
          goto LABEL_17;
        case 4:
          v9 = *a1;
LABEL_17:
          v6 = (v9 | ((v6 - 5) << (8 * v5))) + 5;
          if (v5 >= 4)
          {
            v6 = v9 + 5;
          }

          break;
        default:
          break;
      }
    }

    switch(v6)
    {
      case 0u:

        v12 = a1[6];
        goto LABEL_34;
      case 1u:
      case 2u:
        v13 = *(AssociatedTypeWitness - 8);

        v10 = *(v13 + 8);

        v10((a1 + v4 + 8) & ~v4, AssociatedTypeWitness);
        return;
      case 3u:
        v11 = *(a1 + 40);
        if (v11 >= 2)
        {
          v11 = *a1 + 2;
        }

        if (v11 == 1)
        {
          goto LABEL_30;
        }

        if (v11)
        {
          return;
        }

        if (a1[3])
        {
          __swift_destroy_boxed_opaque_existential_1Tm(a1);
        }

        v12 = a1[4];
LABEL_34:

LABEL_32:

        break;
      case 4u:
LABEL_30:
        v12 = *a1;

        goto LABEL_32;
      default:
        return;
    }
  }
}

char *sub_1DCFB21E8(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 80);
  if (((v6 + 8) & ~v6) + *(v5 + 64) <= 0x38)
  {
    v7 = 56;
  }

  else
  {
    v7 = ((v6 + 8) & ~v6) + *(v5 + 64);
  }

  v8 = a2[v7];
  if (v7 <= 3)
  {
    v9 = 250 - (1u >> (8 * v7));
  }

  else
  {
    v9 = 250;
  }

  if (v9 <= (v8 ^ 0xFF))
  {
    if (v8 >= 5)
    {
      if (v7 <= 3)
      {
        v11 = v7;
      }

      else
      {
        v11 = 4;
      }

      switch(v11)
      {
        case 1:
          v12 = *a2;
          goto LABEL_20;
        case 2:
          v12 = *a2;
          goto LABEL_20;
        case 3:
          v12 = *a2 | (a2[2] << 16);
          goto LABEL_20;
        case 4:
          v12 = *a2;
LABEL_20:
          v8 = (v12 | ((v8 - 5) << (8 * v7))) + 5;
          if (v7 >= 4)
          {
            v8 = v12 + 5;
          }

          break;
        default:
          break;
      }
    }

    switch(v8)
    {
      case 0u:
        v13 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v13;
        v14 = *(a2 + 3);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = v14;
        *(a1 + 4) = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 6) = *(a2 + 6);
        a1[v7] = 0;
        sub_1DD0DCF8C();
      case 1u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 2u:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 3u:
        v18 = a2[40];
        if (v18 >= 2)
        {
          v18 = *a2 + 2;
        }

        if (v18 == 1)
        {
          v20 = *a2;
          v21 = *a2;
          *a1 = v20;
          a1[8] = a2[8];
          a1[40] = 1;
        }

        else if (v18)
        {
          v22 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v22;
          *(a1 + 25) = *(a2 + 25);
        }

        else
        {
          v19 = *(a2 + 3);
          if (v19)
          {
            *(a1 + 3) = v19;
            (**(v19 - 8))(a1, a2);
          }

          else
          {
            v23 = *(a2 + 1);
            *a1 = *a2;
            *(a1 + 1) = v23;
          }

          v24 = *(a2 + 4);
          *(a1 + 4) = v24;
          a1[40] = 0;
          v25 = v24;
        }

        v17 = 3;
        goto LABEL_38;
      case 4u:
        v15 = *a2;
        v16 = *a2;
        *a1 = v15;
        a1[8] = a2[8];
        v17 = 4;
LABEL_38:
        a1[v7] = v17;
        return a1;
      default:
        break;
    }
  }

  return memcpy(a1, a2, v7 + 1);
}

unsigned __int8 *sub_1DCFB2548(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = ~v7;
  if (((v7 + 8) & ~v7) + *(v6 + 64) <= 0x38)
  {
    v9 = 56;
  }

  else
  {
    v9 = ((v7 + 8) & ~v7) + *(*(AssociatedTypeWitness - 8) + 64);
  }

  v10 = 8 * v9;
  v11 = 250 - (1u >> (8 * v9));
  v12 = a1[v9];
  if (v9 > 3)
  {
    v11 = 250;
  }

  v13 = a2[v9];
  v14 = v13 ^ 0xFF;
  if (v11 > (v12 ^ 0xFF))
  {
    if (v11 <= v14)
    {
      if (v13 >= 5)
      {
        if (v9 <= 3)
        {
          v15 = v9;
        }

        else
        {
          v15 = 4;
        }

        switch(v15)
        {
          case 1:
            v16 = *a2;
            goto LABEL_33;
          case 2:
            v16 = *a2;
            goto LABEL_33;
          case 3:
            v16 = *a2 | (a2[2] << 16);
            goto LABEL_33;
          case 4:
            v16 = *a2;
LABEL_33:
            v13 = (v16 | ((v13 - 5) << v10)) + 5;
            v22 = v16 + 5;
            if (v9 >= 4)
            {
              v13 = v22;
            }

            break;
          default:
            break;
        }
      }

      switch(v13)
      {
        case 0u:
          goto LABEL_82;
        case 1u:
          goto LABEL_94;
        case 2u:
          goto LABEL_87;
        case 3u:
          goto LABEL_88;
        case 4u:
          goto LABEL_86;
        default:
          break;
      }
    }

LABEL_83:

    return memcpy(a1, a2, v9 + 1);
  }

  if (v11 > v14)
  {
    if (v12 >= 5)
    {
      if (v9 <= 3)
      {
        v17 = v9;
      }

      else
      {
        v17 = 4;
      }

      switch(v17)
      {
        case 1:
          v18 = *a1;
          goto LABEL_37;
        case 2:
          v18 = *a1;
          goto LABEL_37;
        case 3:
          v18 = *a1 | (a1[2] << 16);
          goto LABEL_37;
        case 4:
          v18 = *a1;
LABEL_37:
          v12 = (v18 | ((v12 - 5) << v10)) + 5;
          v23 = v18 + 5;
          if (v9 >= 4)
          {
            v12 = v23;
          }

          break;
        default:
          break;
      }
    }

    switch(v12)
    {
      case 0u:

        v25 = *(a1 + 6);
        goto LABEL_50;
      case 1u:
      case 2u:

        (*(v6 + 8))(&a1[v7 + 8] & v8, AssociatedTypeWitness);
        goto LABEL_83;
      case 3u:
        v24 = a1[40];
        if (v24 >= 2)
        {
          v24 = *a1 + 2;
        }

        if (v24 == 1)
        {
          goto LABEL_48;
        }

        if (!v24)
        {
          if (*(a1 + 3))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          v25 = *(a1 + 4);
LABEL_50:
        }

        break;
      case 4u:
LABEL_48:

        break;
      default:
        goto LABEL_83;
    }

    goto LABEL_83;
  }

  if (a1 != a2)
  {
    v19 = v12 - 5;
    if (v12 >= 5)
    {
      if (v9 <= 3)
      {
        v20 = v9;
      }

      else
      {
        v20 = 4;
      }

      switch(v20)
      {
        case 1:
          v21 = *a1;
          goto LABEL_54;
        case 2:
          v21 = *a1;
          goto LABEL_54;
        case 3:
          v21 = *a1 | (a1[2] << 16);
          goto LABEL_54;
        case 4:
          v21 = *a1;
LABEL_54:
          if (v9 < 4)
          {
            v21 |= v19 << v10;
          }

          v12 = v21 + 5;
          break;
        default:
          break;
      }
    }

    switch(v12)
    {
      case 0u:

        v27 = *(a1 + 6);
        goto LABEL_68;
      case 1u:
      case 2u:

        (*(v6 + 8))(&a1[v7 + 8] & v8, AssociatedTypeWitness);
        break;
      case 3u:
        v26 = a1[40];
        if (v26 >= 2)
        {
          v26 = *a1 + 2;
        }

        if (v26 == 1)
        {
          goto LABEL_66;
        }

        if (!v26)
        {
          if (*(a1 + 3))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(a1);
          }

          v27 = *(a1 + 4);
LABEL_68:
        }

        break;
      case 4u:
LABEL_66:

        break;
      default:
        break;
    }

    v28 = a2[v9];
    v29 = v28 - 5;
    if (v28 >= 5)
    {
      if (v9 <= 3)
      {
        v30 = v9;
      }

      else
      {
        v30 = 4;
      }

      switch(v30)
      {
        case 1:
          v31 = *a2;
          goto LABEL_78;
        case 2:
          v31 = *a2;
          goto LABEL_78;
        case 3:
          v31 = *a2 | (a2[2] << 16);
          goto LABEL_78;
        case 4:
          v31 = *a2;
LABEL_78:
          if (v9 < 4)
          {
            v28 = (v31 | (v29 << v10)) + 5;
          }

          else
          {
            v28 = v31 + 5;
          }

          break;
        default:
          break;
      }
    }

    switch(v28)
    {
      case 0u:
LABEL_82:
        *a1 = *a2;
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = *(a2 + 2);
        *(a1 + 3) = *(a2 + 3);
        v32 = *(a2 + 4);
        a1[40] = a2[40];
        *(a1 + 4) = v32;
        *(a1 + 6) = *(a2 + 6);
        a1[v9] = 0;
        sub_1DD0DCF8C();
      case 1u:
LABEL_94:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 2u:
LABEL_87:
        *a1 = *a2;
        sub_1DD0DCF8C();
      case 3u:
LABEL_88:
        v37 = a2[40];
        if (v37 >= 2)
        {
          v37 = *a2 + 2;
        }

        if (v37 == 1)
        {
          v39 = *a2;
          v40 = *a2;
          *a1 = v39;
          a1[8] = a2[8];
          a1[40] = 1;
        }

        else if (v37)
        {
          v41 = *a2;
          v42 = *(a2 + 1);
          *(a1 + 25) = *(a2 + 25);
          *a1 = v41;
          *(a1 + 1) = v42;
        }

        else
        {
          v38 = *(a2 + 3);
          if (v38)
          {
            *(a1 + 3) = v38;
            (**(v38 - 8))(a1, a2);
          }

          else
          {
            v43 = *(a2 + 1);
            *a1 = *a2;
            *(a1 + 1) = v43;
          }

          v44 = *(a2 + 4);
          *(a1 + 4) = v44;
          a1[40] = 0;
          v45 = v44;
        }

        v36 = 3;
        goto LABEL_100;
      case 4u:
LABEL_86:
        v34 = *a2;
        v35 = *a2;
        *a1 = v34;
        a1[8] = a2[8];
        v36 = 4;
LABEL_100:
        a1[v9] = v36;
        return a1;
      default:
        goto LABEL_83;
    }
  }

  return a1;
}