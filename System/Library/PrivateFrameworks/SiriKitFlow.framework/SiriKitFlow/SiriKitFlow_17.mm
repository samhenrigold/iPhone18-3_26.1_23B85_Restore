void sub_1DCCBE40C(char a1)
{
  v2 = a1;
  *(v1 + 72) = 0;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCBE4D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DCCBE404();
  *a1 = result;
  return result;
}

uint64_t sub_1DCCBE50C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DCCBE5C0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  if ((*(v5 + 80) & 0x1000F8) == 0 && ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16 <= 0x18)
  {
    (*(v5 + 16))(a1, a2);
    v8 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v9 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v8 = *v9;
    v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v12 = ((v11 + 15) & 0xFFFFFFFFFFFFFFF8);
    v13 = v12[1];
    v14 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v14 = *v12;
    v14[1] = v13;
    sub_1DD0DCF8C();
  }

  *a1 = *a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCBE6F8(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

void sub_1DCCBE780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12[1];
  *v11 = *v12;
  v11[1] = v13;
  sub_1DD0DCF8C();
}

void sub_1DCCBE830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCBE8FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1DCCBE998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = ((v7 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  *((v9 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 15) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1DCCBEA4C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DCCBEBA0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCCBEDA8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCCBEDF8@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v12 = *(type metadata accessor for ConfirmPlan(0, v10, v11, a4) - 8);
  v13 = v5 + ((*(v12 + 80) + 32) & ~*(v12 + 80));

  return sub_1DCCBC098(a1, a2, a3, v13, v10, v11, a5);
}

uint64_t sub_1DCCBEEE0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28_11(v1, v2, v3, v4, v5);
  v6 = type metadata accessor for ExecuteResponse(0);
  OUTLINED_FUNCTION_20_0(v6);
  v7 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_1_39(v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_18_16(v8);

  return v11(v10);
}

uint64_t sub_1DCCBEFB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCCBF098()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_27_13();
  v2(v1);
  sub_1DCCC3EEC(v0, type metadata accessor for ExecuteResponse);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCCBF118()
{
  OUTLINED_FUNCTION_42();
  v0[4] = v1;
  v0[5] = v2;
  OUTLINED_FUNCTION_0_30();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[6] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_26(v3);

  return v6(v5);
}

uint64_t sub_1DCCBF1CC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCCBF2B0()
{
  OUTLINED_FUNCTION_42();
  (*(v0 + 32))(v0 + 16);
  sub_1DCCB707C(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCCBF31C()
{
  OUTLINED_FUNCTION_42();
  v0[5] = v1;
  v0[6] = v2;
  OUTLINED_FUNCTION_0_30();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[7] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_26(v3);

  return v6(v5);
}

uint64_t sub_1DCCBF3D0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCCBF4B4()
{
  OUTLINED_FUNCTION_42();
  (*(v0 + 40))(v0 + 16);
  sub_1DCCB6F10(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCCBF520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[3] = a4;
  v6[4] = a5;
  v9 = (a6 + *a6);
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_1DCCBF614;

  return v9(v6 + 2);
}

uint64_t sub_1DCCBF614()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCCBF6F8()
{
  OUTLINED_FUNCTION_42();
  (*(v0 + 24))(v0 + 16);

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCCBF760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[3] = a4;
  v6[4] = a5;
  v9 = (a6 + *a6);
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_1DCCBF854;

  return v9(v6 + 2);
}

uint64_t sub_1DCCBF854()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCCBF938()
{
  OUTLINED_FUNCTION_42();
  (*(v0 + 24))(v0 + 16);

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCCBF9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[2] = a4;
  v6[3] = a5;
  v9 = (a6 + *a6);
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_1DCCBFA94;

  return v9(v6 + 5);
}

uint64_t sub_1DCCBFA94()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCCBFB78()
{
  OUTLINED_FUNCTION_42();
  (*(v0 + 16))(v0 + 40);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCCBFBD8()
{
  OUTLINED_FUNCTION_42();
  v0[22] = v1;
  v0[23] = v2;
  OUTLINED_FUNCTION_0_30();
  v7 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[24] = v4;
  *v4 = v5;
  v4[1] = sub_1DCCBFC98;

  return v7(v0 + 12);
}

uint64_t sub_1DCCBFC98()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCCBFD7C()
{
  OUTLINED_FUNCTION_42();
  v0[22](v0 + 12);
  memcpy(v0 + 2, v0 + 12, 0x49uLL);
  sub_1DCB16DB0((v0 + 2), &unk_1ECCA3260, &unk_1DD0E5AD0);
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCCBFE04()
{
  OUTLINED_FUNCTION_42();
  v0[3] = v1;
  v0[4] = v2;
  OUTLINED_FUNCTION_0_30();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[5] = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_11_26(v3);

  return v6(v5);
}

uint64_t sub_1DCCBFEB8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCCBFF9C()
{
  OUTLINED_FUNCTION_42();
  (*(v0 + 24))(v0 + 16);

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCCC0004()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28_11(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_20_0(v6);
  v7 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_1_39(v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_18_16(v8);

  return v11(v10);
}

uint64_t sub_1DCCC00E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCCC01C8()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_27_13();
  v2(v1);
  sub_1DCB16DB0(v0, &qword_1ECCA9BF0, &qword_1DD0EA250);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCCC0244()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_28_11(v1, v2, v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABD0, &qword_1DD0EA240);
  OUTLINED_FUNCTION_20_0(v6);
  v7 = OUTLINED_FUNCTION_38();
  OUTLINED_FUNCTION_1_39(v7);
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_18_16(v8);

  return v11(v10);
}

uint64_t sub_1DCCC0324()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCCC0408()
{
  OUTLINED_FUNCTION_42();
  v1 = OUTLINED_FUNCTION_27_13();
  v2(v1);
  sub_1DCB16DB0(v0, &qword_1ECCAABD0, &qword_1DD0EA240);

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t ContactsManager.__allocating_init(aceService:)(__int128 *a1)
{
  v2 = swift_allocObject();
  ContactsManager.init(aceService:)(a1);
  return v2;
}

void sub_1DCCC04DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v27[0] = a5;
  v27[1] = a8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v18 = OUTLINED_FUNCTION_20_0(v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = v27 - v20;
  OUTLINED_FUNCTION_88_0();
  v22 = swift_allocObject();
  *(v22 + 16) = a7;
  *(v22 + 24) = a8;
  v23 = swift_allocObject();
  v23[2] = v9;
  v23[3] = a1;
  v23[4] = a2;
  v23[5] = a3;
  v24 = v27[0];
  v23[6] = a4;
  v23[7] = v24;
  v23[8] = a6;
  v25 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v25);
  OUTLINED_FUNCTION_41_4();
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = sub_1DCCC34BC;
  v26[5] = v22;
  v26[6] = &unk_1DD0EA0D0;
  v26[7] = v23;

  sub_1DD0DCF8C();
}

uint64_t sub_1DCCC0678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCC06A4, 0, 0);
}

uint64_t sub_1DCCC06A4()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1DCCC0744;

  return sub_1DCCC1158();
}

uint64_t sub_1DCCC0744()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCCC0840(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v6 = OUTLINED_FUNCTION_20_0(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v15 - v8;
  OUTLINED_FUNCTION_88_0();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(v2 + 16);
  OUTLINED_FUNCTION_88_0();
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_1DD0EA0F0;
  *(v12 + 24) = v11;
  v13 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v13);
  OUTLINED_FUNCTION_41_4();
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = sub_1DCCC3628;
  v14[5] = v10;
  v14[6] = &unk_1DD0EA100;
  v14[7] = v12;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCC0994()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBC3348;

  return sub_1DCCC19DC();
}

uint64_t sub_1DCCC0A24(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1DCCC0B10;

  return v5();
}

uint64_t sub_1DCCC0B10()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_32_1();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  *v4 = v2;
  OUTLINED_FUNCTION_29();

  return v7();
}

void sub_1DCCC0C0C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v10 = OUTLINED_FUNCTION_20_0(v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for RelationshipLabel(0);
  v15 = OUTLINED_FUNCTION_99(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15, v20);
  OUTLINED_FUNCTION_88_0();
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  sub_1DCC08BCC(a1, &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v4;
  sub_1DCCC3844(&v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  *(v23 + ((v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v24 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v24);
  OUTLINED_FUNCTION_41_4();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = sub_1DCCC3818;
  v25[5] = v21;
  v25[6] = &unk_1DD0EA128;
  v25[7] = v23;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCC0E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCC0E2C, 0, 0);
}

uint64_t sub_1DCCC0E2C()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1DCCC0EC4;

  return sub_1DCCC204C();
}

uint64_t sub_1DCCC0EC4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 56) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCCC1064(void *a1, uint64_t (*a2)(char *, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  MEMORY[0x1EEE9AC00](v7, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = a2(v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

uint64_t sub_1DCCC1158()
{
  OUTLINED_FUNCTION_42();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[11] = v5;
  v1[12] = v6;
  v1[10] = v7;
  v8 = sub_1DD0DB04C();
  v1[17] = v8;
  OUTLINED_FUNCTION_99(v8);
  v1[18] = v9;
  v1[19] = OUTLINED_FUNCTION_38();
  v10 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DCCC1208()
{
  v42 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = v0[15];
  v2 = v0[13];
  v3 = sub_1DD0DD8FC();
  v0[20] = __swift_project_value_buffer(v3, qword_1EDE57E00);

  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v4, v5))
  {
    v37 = v0[14];
    v38 = v0[15];
    v39 = v1;
    v6 = v2;
    v7 = v0[12];
    v8 = v0[13];
    v9 = OUTLINED_FUNCTION_83();
    v40 = swift_slowAlloc();
    *v9 = 136315650;
    v10 = OUTLINED_FUNCTION_30_13();
    *(v9 + 4) = sub_1DCB10E9C(v10, v11, v12);
    *(v9 + 12) = 2080;
    v0[5] = v7;
    v0[6] = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2900, &qword_1DD0E7ED0);
    v13 = sub_1DD0DE02C();
    v15 = sub_1DCB10E9C(v13, v14, &v40);

    *(v9 + 14) = v15;
    v2 = v6;
    *(v9 + 22) = 2080;
    v1 = v39;
    v0[7] = v37;
    v0[8] = v38;

    v16 = sub_1DD0DE02C();
    v18 = sub_1DCB10E9C(v16, v17, &v40);

    *(v9 + 24) = v18;
    _os_log_impl(&dword_1DCAFC000, v4, v5, "[ContactsManager] searchForContacts firstName: %s, lastName: %s, fullName: %s", v9, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_37();
  }

  v19 = v0[18];
  v20 = v0[19];
  v21 = v0[17];
  v22 = v0[15];
  v23 = [objc_allocWithZone(MEMORY[0x1E69C76E8]) init];
  v0[21] = v23;
  sub_1DD0DB03C();
  v24 = sub_1DD0DAFFC();
  v26 = v25;
  (*(v19 + 8))(v20, v21);
  sub_1DCB2C534(v24, v26, v23, &selRef_setAceId_);
  if (v22)
  {
    sub_1DCCC32C4(v0[14], v1, v23);
  }

  else
  {
    if (v0[13])
    {
      v27 = v0[11];
      v28 = v0[12];
      v40 = v0[10];
      v41 = v27;

      MEMORY[0x1E12A6780](32, 0xE100000000000000);
      MEMORY[0x1E12A6780](v28, v2);
      v29 = v40;
      v30 = v41;
      v31 = &selRef_setName_;
    }

    else
    {

      v29 = OUTLINED_FUNCTION_33_1();
    }

    sub_1DCB2C534(v29, v30, v23, v31);
  }

  v32 = v0[16];
  v33 = sub_1DD0DDFBC();
  sub_1DCB2C534(v33, v34, v23, &selRef_setScope_);
  __swift_project_boxed_opaque_existential_1((v32 + 16), *(v32 + 40));
  v35 = swift_task_alloc();
  v0[22] = v35;
  sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
  *v35 = v0;
  v35[1] = sub_1DCCC15E0;

  return AceServiceInvokerAsync.submit<A>(_:)();
}

uint64_t sub_1DCCC15E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 184) = v4;
  *(v2 + 192) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCCC16E4()
{
  OUTLINED_FUNCTION_39();
  v1 = (v0 + 184);
  v2 = sub_1DCCC1938();
  v3 = [v2 results];

  if (v3)
  {
    v4 = *(v0 + 168);
    sub_1DCB10E5C(0, &qword_1ECCA3C30, 0x1E69C7930);
    v5 = sub_1DD0DE2EC();
  }

  else
  {

    v1 = (v0 + 168);
    v5 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_69();

  return v6(v5);
}

uint64_t sub_1DCCC17D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  v21 = *(v18 + 192);
  v22 = v21;
  v23 = sub_1DD0DD8EC();
  v24 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v18 + 192);
    v26 = swift_slowAlloc();
    v27 = OUTLINED_FUNCTION_83();
    a9 = v27;
    *v26 = 136315138;
    swift_getErrorValue();
    v28 = sub_1DD0DF18C();
    v30 = sub_1DCB10E9C(v28, v29, &a9);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1DCAFC000, v23, v24, "[ContactsManager] Failed to perform person search: %s; returning empty array.", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_37();
  }

  else
  {
    v31 = *(v18 + 192);
  }

  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_121();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

id sub_1DCCC1938()
{
  result = [v0 dictionary];
  if (result)
  {
    result = sub_1DD0DDE5C();
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t sub_1DCCC19DC()
{
  OUTLINED_FUNCTION_42();
  v1[3] = v0;
  v2 = sub_1DD0DB04C();
  v1[4] = v2;
  OUTLINED_FUNCTION_99(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_38();
  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DCCC1A80()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  v0[7] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v4, v5, "[ContactsManager] Fetching MeCard via Ace");
    OUTLINED_FUNCTION_80();
  }

  v7 = v0[5];
  v6 = v0[6];
  v9 = v0[3];
  v8 = v0[4];

  v10 = [objc_allocWithZone(MEMORY[0x1E69C76E8]) init];
  v0[8] = v10;
  sub_1DD0DB03C();
  v11 = sub_1DD0DAFFC();
  v13 = v12;
  (*(v7 + 8))(v6, v8);
  sub_1DCB2C534(v11, v13, v10, &selRef_setAceId_);
  sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
  v14 = sub_1DD0DE8CC();
  [v10 setMe_];

  v15 = sub_1DD0DDFBC();
  sub_1DCB2C534(v15, v16, v10, &selRef_setScope_);
  __swift_project_boxed_opaque_existential_1((v9 + 16), *(v9 + 40));
  v17 = swift_task_alloc();
  v0[9] = v17;
  sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
  *v17 = v0;
  v17[1] = sub_1DCCC1CB4;
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_121();

  return AceServiceInvokerAsync.submit<A>(_:)();
}

uint64_t sub_1DCCC1CB4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v4;
  *(v2 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DCCC1DB8()
{
  OUTLINED_FUNCTION_39();
  v1 = sub_1DCCC1938();
  v2 = sub_1DCCC324C(v1);
  if (v2)
  {
    v3 = v2;
    if (sub_1DCB08B14(v2))
    {
      sub_1DCB35460(0, (v3 & 0xC000000000000001) == 0, v3);
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1E12A72C0](0, v3);
      }

      else
      {
        v4 = *(v3 + 32);
      }

      v5 = v4;
      v6 = *(v0 + 80);
      v7 = *(v0 + 64);

      goto LABEL_9;
    }

    v9 = *(v0 + 64);
  }

  else
  {
    v8 = *(v0 + 64);
  }

  v5 = 0;
LABEL_9:

  OUTLINED_FUNCTION_69();

  return v10(v5);
}

uint64_t sub_1DCCC1EB8()
{
  OUTLINED_FUNCTION_125();
  v18 = v0;
  v1 = v0[11];
  v2 = v1;
  v3 = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = v0[8];
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_83();
    v17 = v8;
    *v7 = 136315138;
    v0[2] = v5;
    v9 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v10 = sub_1DD0DE02C();
    v12 = sub_1DCB10E9C(v10, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1DCAFC000, v3, v4, "[ContactsManager] Failed to perform meCard search, returning nil, %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_80();
  }

  else
  {
    v13 = v0[11];
    v14 = v0[8];
  }

  OUTLINED_FUNCTION_69();

  return v15(0);
}

uint64_t sub_1DCCC204C()
{
  OUTLINED_FUNCTION_42();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v1[5] = *v0;
  v4 = sub_1DD0DB04C();
  v1[6] = v4;
  OUTLINED_FUNCTION_99(v4);
  v1[7] = v5;
  v1[8] = OUTLINED_FUNCTION_38();
  v6 = sub_1DD0DAECC();
  v1[9] = v6;
  OUTLINED_FUNCTION_99(v6);
  v1[10] = v7;
  v1[11] = OUTLINED_FUNCTION_38();
  v8 = type metadata accessor for RelationshipLabel(0);
  v1[12] = v8;
  OUTLINED_FUNCTION_20_0(v8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCCC21A0()
{
  OUTLINED_FUNCTION_125();
  v26 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = v0[3];
  v2 = sub_1DD0DD8FC();
  v0[15] = __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = OUTLINED_FUNCTION_33_1();
  sub_1DCC08BCC(v3, v4);
  v5 = v1;
  v6 = sub_1DD0DD8EC();
  v7 = sub_1DD0DE6DC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  if (v8)
  {
    v10 = v0[13];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = OUTLINED_FUNCTION_83();
    v25 = v13;
    *v11 = 136315394;
    sub_1DCCC3844(v9, v10);
    OUTLINED_FUNCTION_30_13();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v16 = *v10;
    v15 = v10[1];
    if (EnumCaseMultiPayload != 1)
    {
      v17 = v0[13];
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
      sub_1DD0DB0FC();
      OUTLINED_FUNCTION_13_1();
      (*(v19 + 8))(v17 + v18);
    }

    v20 = v0[3];
    v21 = sub_1DCB10E9C(v16, v15, &v25);

    *(v11 + 4) = v21;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v20;
    *v12 = v20;
    v22 = v20;
    _os_log_impl(&dword_1DCAFC000, v6, v7, "[ContactsManager] setRelationship relationship: %s contact: %@", v11, 0x16u);
    sub_1DCB16DB0(v12, qword_1ECCA8AD0, &qword_1DD0E4F90);
    OUTLINED_FUNCTION_37();
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {

    sub_1DCCC3EEC(v9, type metadata accessor for RelationshipLabel);
  }

  v23 = swift_task_alloc();
  v0[16] = v23;
  *v23 = v0;
  v23[1] = sub_1DCCC2428;

  return sub_1DCCC19DC();
}

uint64_t sub_1DCCC2428()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 136) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCCC2514()
{
  v2 = v0[17];
  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69C76E0]) init];
    v0[18] = v3;
    v4 = v3;
    v5 = [v2 identifier];
    if (v5)
    {
      v7 = v0[10];
      v6 = v0[11];
      v8 = v0[9];
      sub_1DD0DAE9C();

      v5 = sub_1DD0DAE6C();
      (*(v7 + 8))(v6, v8);
    }

    v9 = v0[3];
    [v4 setIdentifier_];

    v10 = [objc_allocWithZone(MEMORY[0x1E69C79B0]) init];
    v0[19] = v10;
    v11 = sub_1DCB28184(v9, &selRef_fullName);
    if (v12)
    {
      v13 = sub_1DCCC2F28(v11, v12);
      v15 = v14;

      sub_1DCB2C534(v13, v15, v10, &selRef_setName_);
      v16 = sub_1DCF12A3C();
      v56 = v4;
      if (!v17)
      {
        v16 = RelationshipLabel.asUnboundedSemanticValue.getter();
      }

      v19 = v0[7];
      v18 = v0[8];
      v20 = v0[6];
      v55 = v0[3];
      sub_1DCB2C534(v16, v17, v10, &selRef_setLabel_);
      v21 = [objc_allocWithZone(MEMORY[0x1E69C76E0]) init];
      v0[20] = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1DD0E15D0;
      *(v22 + 32) = v10;
      v54 = v10;
      v23 = OUTLINED_FUNCTION_30_13();
      sub_1DCCC3328(v23, v24);
      v25 = [objc_allocWithZone(MEMORY[0x1E69C77C8]) init];
      v0[21] = v25;
      sub_1DD0DB03C();
      v26 = sub_1DD0DAFFC();
      v28 = v27;
      v29 = *(v19 + 8);
      v29(v18, v20);
      sub_1DCB2C534(v26, v28, v25, &selRef_setAceId_);
      [v25 setAddFields_];
      [v25 setIdentifier_];
      v30 = [objc_allocWithZone(MEMORY[0x1E69C77C0]) init];
      v0[22] = v30;
      sub_1DD0DB03C();
      v31 = sub_1DD0DAFFC();
      v33 = v32;
      v29(v18, v20);
      sub_1DCB2C534(v31, v33, v30, &selRef_setAceId_);
      [v30 setIdentifier_];

      v34 = v55;
      v35 = v54;
      v36 = sub_1DD0DD8EC();
      v37 = sub_1DD0DE6DC();
      if (!os_log_type_enabled(v36, v37))
      {
        v52 = v0[3];

        goto LABEL_15;
      }

      v38 = swift_slowAlloc();
      swift_slowAlloc();
      *v38 = 136315394;
      sub_1DCB28184(v35, &selRef_label);
      v40 = v39;

      v1 = v0[3];
      if (v40)
      {
        v41 = OUTLINED_FUNCTION_30_13();
        v44 = sub_1DCB10E9C(v41, v42, v43);

        *(v38 + 4) = v44;
        *(v38 + 12) = 2080;
        sub_1DCB28184(v1, &selRef_fullName);
        v46 = v45;

        if (v46)
        {
          v47 = OUTLINED_FUNCTION_30_13();
          v50 = sub_1DCB10E9C(v47, v48, v49);

          *(v38 + 14) = v50;
          _os_log_impl(&dword_1DCAFC000, v36, v37, "[ContactsManager] Updating MeCard to set relationship %s to name %s", v38, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_37();
          OUTLINED_FUNCTION_80();

LABEL_15:
          __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
          v53 = swift_task_alloc();
          v0[23] = v53;
          v0[24] = sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
          *v53 = v0;
          v53[1] = sub_1DCCC2A68;

          AceServiceInvokerAsync.submit<A>(_:)();
          return;
        }

LABEL_20:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_32_9();

  OUTLINED_FUNCTION_69();

  v51(0);
}

uint64_t sub_1DCCC2A68()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCCC2B74()
{
  OUTLINED_FUNCTION_39();
  __swift_project_boxed_opaque_existential_1((*(v0 + 32) + 16), *(*(v0 + 32) + 40));
  v1 = swift_task_alloc();
  *(v0 + 200) = v1;
  *v1 = v0;
  v1[1] = sub_1DCCC2C38;

  return AceServiceInvokerAsync.submit<A>(_:)();
}

uint64_t sub_1DCCC2C38()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;

  if (v0)
  {
  }

  else
  {
    *(v5 + 208) = v3;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCCC2D4C()
{
  OUTLINED_FUNCTION_125();
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6DC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[21];
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[18];
  if (v3)
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v10, v11, "[ContactsManager] MeCard update failed to commit");
    OUTLINED_FUNCTION_80();
  }

  else
  {

    v4 = v8;
  }

  OUTLINED_FUNCTION_32_9();

  OUTLINED_FUNCTION_69();

  return v12(0);
}

uint64_t sub_1DCCC2E78()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 168);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);

  OUTLINED_FUNCTION_32_9();

  OUTLINED_FUNCTION_69();

  return v7(1);
}

uint64_t sub_1DCCC2F28(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD0DE0CC();

  if (v3 >= 257)
  {
    v4 = sub_1DCB598EC(256);
    a1 = MEMORY[0x1E12A66E0](v4);
  }

  return a1;
}

uint64_t sub_1DCCC2FBC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBCC7F0;

  return sub_1DCCC1158();
}

uint64_t sub_1DCCC3094()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBC3348;

  return sub_1DCCC204C();
}

uint64_t sub_1DCCC313C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCBCC7F0;

  return sub_1DCCC19DC();
}

id sub_1DCCC31CC(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1DD0DDE4C();
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 initWithDictionary_];

  return v3;
}

uint64_t sub_1DCCC324C(void *a1)
{
  v2 = [a1 results];

  if (!v2)
  {
    return 0;
  }

  sub_1DCB10E5C(0, &qword_1ECCA3C30, 0x1E69C7930);
  v3 = sub_1DD0DE2EC();

  return v3;
}

void sub_1DCCC32C4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();
  [a3 setName_];
}

void sub_1DCCC3328(uint64_t a1, void *a2)
{
  sub_1DCB10E5C(0, &qword_1ECCA3C38, 0x1E69C79B0);
  v3 = sub_1DD0DE2DC();

  [a2 setRelatedNames_];
}

void *sub_1DCCC33AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ContactsManagerAsync();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v11 = sub_1DCCC3A48(v9, v10, a3, a4);
  (*(v7 + 8))(a1, a3);
  return v11;
}

uint64_t sub_1DCCC34E8()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_4();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_40(v4);

  return sub_1DCCC0678(v6, v7, v8, v9, v10, v11, v1, v2);
}

uint64_t sub_1DCCC3594()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_40(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCCBF520(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCCC3654()
{
  OUTLINED_FUNCTION_42();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_31_0(v1);

  return sub_1DCCC0994();
}

uint64_t sub_1DCCC36D8()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCCC0A24(v2, v3);
}

uint64_t sub_1DCCC3784()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_40(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCCBF760(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCCC3844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelationshipLabel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCCC38A8(uint64_t a1)
{
  v3 = type metadata accessor for RelationshipLabel(0);
  OUTLINED_FUNCTION_99(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_11_0(v9);
  *v10 = v11;
  v10[1] = sub_1DCB4AE1C;

  return sub_1DCCC0E08(a1, v7, v1 + v5, v8);
}

uint64_t sub_1DCCC39B4()
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_3_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_40(v1);
  OUTLINED_FUNCTION_121();

  return sub_1DCCBF9A0(v3, v4, v5, v6, v7, v8);
}

void *sub_1DCCC3A48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1Tm, a1, a3);
  return a2;
}

uint64_t dispatch thunk of ContactsManagerAsync.searchForContacts(firstName:lastName:fullName:)()
{
  OUTLINED_FUNCTION_125();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v17 = (*(*v0 + 96) + **(*v0 + 96));
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_30_1(v13);
  *v14 = v15;
  OUTLINED_FUNCTION_31_0(v14);

  return v17(v12, v10, v8, v6, v4, v2);
}

uint64_t dispatch thunk of ContactsManagerAsync.findMeCard()()
{
  OUTLINED_FUNCTION_39();
  v5 = (*(*v0 + 104) + **(*v0 + 104));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_30_1(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_31_0(v2);

  return v5();
}

uint64_t dispatch thunk of ContactsManagerAsync.setRelationship(relationship:contact:)(uint64_t a1, uint64_t a2)
{
  v9 = (*(*v2 + 112) + **(*v2 + 112));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_30_1(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_31_0(v6);

  return v9(a1, a2);
}

uint64_t sub_1DCCC3EEC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t dispatch thunk of ContactsManagingAsync.searchForContacts(firstName:lastName:fullName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_8();
  v20 = (v17 + *v17);
  v18 = swift_task_alloc();
  *(v8 + 16) = v18;
  *v18 = v8;
  v18[1] = sub_1DCBCF434;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of ContactsManagingAsync.setRelationship(relationship:contact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_8();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1DCBCF434;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ContactsManagingAsync.findMeCard()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8();
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DCCC5288;

  return v8(a1, a2);
}

uint64_t sub_1DCCC4318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[8] = a6;
  v7[9] = v6;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCCC4338()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  *(v4 + 40) = v6;
  *(v4 + 56) = v5;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3C50, &qword_1DD0EA348);
  *v7 = v0;
  v7[1] = sub_1DCCC4460;

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD00000000000002FLL, 0x80000001DD116F80, sub_1DCCC51C4, v4, v8);
}

uint64_t sub_1DCCC4460()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCCC4578(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a7;
  v26 = a8;
  v23 = a5;
  v24 = a6;
  v22 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3C58, &unk_1DD0EA350);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v21 - v14;
  v16 = a2[5];
  v17 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v16);
  (*(v12 + 16))(v15, a1, v11);
  v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v19 = swift_allocObject();
  (*(v12 + 32))(v19 + v18, v15, v11);
  (*(v17 + 8))(a3, v22, v23, v24, v25, v26, sub_1DCCC51D8, v19, v16, v17);
}

uint64_t sub_1DCCC471C(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3C58, &unk_1DD0EA350);
  return sub_1DD0DE46C();
}

uint64_t sub_1DCCC476C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCCC4784()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1DCCC4884;
  v5 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 56, 0, 0, 0xD000000000000026, 0x80000001DD116F50, sub_1DCCC513C, v2, v5);
}

uint64_t sub_1DCCC4884()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCCC499C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C50, &qword_1DD0EA340);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v17 - v10;
  v12 = a2[5];
  v13 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v12);
  (*(v8 + 16))(v11, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v14, v11, v7);
  (*(v13 + 16))(a3, v18, sub_1DCCC5148, v15, v12, v13);
}

uint64_t sub_1DCCC4B44()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3C40, &qword_1DD0EA330);
  *v1 = v0;
  v1[1] = sub_1DCCC4C2C;
  v3 = *(v0 + 24);

  return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0x6143654D646E6966, 0xEC00000029286472, sub_1DCCC510C, v3, v2);
}

uint64_t sub_1DCCC4C2C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCCC4D10(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3C48, &qword_1DD0EA338);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v14 - v7;
  v9 = a2[5];
  v10 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v9);
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  (*(v10 + 24))(sub_1DCCC5114, v12, v9, v10);
}

uint64_t sub_1DCCC4E88(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3C48, &qword_1DD0EA338);
  return sub_1DD0DE46C();
}

uint64_t sub_1DCCC4EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DCBCF434;

  return sub_1DCCC4318(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1DCCC4FD4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCBCF434;

  return sub_1DCCC476C(a1, a2);
}

uint64_t sub_1DCCC507C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCCC5288;

  return sub_1DCCC4B30();
}

uint64_t sub_1DCCC5148(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C50, &qword_1DD0EA340);

  return sub_1DCBCE9D4(a1);
}

uint64_t sub_1DCCC5200(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

double sub_1DCCC5290()
{
  type metadata accessor for RefreshableContextSender();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  qword_1EDE57D70 = v0;
  return result;
}

void static ContextSender.current.getter(uint64_t *a1@<X8>)
{
  if (qword_1EDE49C08 != -1)
  {
    OUTLINED_FUNCTION_0_31(&qword_1EDE49C08);
  }

  v2 = qword_1EDE57D70;
  sub_1DCCC53BC(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  a1[3] = type metadata accessor for RefreshableContextSender();
  a1[4] = &off_1F5859AB8;
  *a1 = v2;
  sub_1DD0DCF8C();
}

uint64_t static ContextSender.setCurrentContextSenderForTesting(_:)(uint64_t a1)
{
  if (qword_1EDE49C08 != -1)
  {
    OUTLINED_FUNCTION_0_31(&qword_1EDE49C08);
  }

  v2 = qword_1EDE57D70;
  swift_beginAccess();
  sub_1DCCC5774(a1, v2 + 16);
  return swift_endAccess();
}

uint64_t sub_1DCCC53BC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v23[-v9];
  swift_beginAccess();
  sub_1DCB28B08(v1 + 16, &v24, &unk_1ECCA3C60, &qword_1DD0EA360);
  if (!v25)
  {
    v12 = v7;
    sub_1DCB16D50(&v24, &unk_1ECCA3C60, &qword_1DD0EA360);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v13 = sub_1DD0DD8FC();
    v14 = __swift_project_value_buffer(v13, qword_1EDE57E00);
    v15 = *(v13 - 8);
    (*(v15 + 16))(v10, v14, v13);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v13);
    sub_1DCB28B08(v10, v7, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
    {
      sub_1DCB16D50(v7, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v16 = sub_1DD0DD8EC();
      v17 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *&v24 = v19;
        *v18 = 136315650;
        v20 = sub_1DD0DEC3C();
        v22 = sub_1DCB10E9C(v20, v21, &v24);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2048;
        *(v18 + 14) = 74;
        *(v18 + 22) = 2080;
        *(v18 + 24) = sub_1DCB10E9C(0xD0000000000000D0, 0x80000001DD116FE0, &v24);
        _os_log_impl(&dword_1DCAFC000, v16, v17, "FatalError at %s:%lu - %s", v18, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v19, -1, -1);
        MEMORY[0x1E12A8390](v18, -1, -1);
      }

      (*(v15 + 8))(v12, v13);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD0000000000000D0, 0x80000001DD116FE0);
  }

  return sub_1DCAFF9E8(&v24, a1);
}

uint64_t sub_1DCCC5774(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3C60, &qword_1DD0EA360);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for ContextSender(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCCC58E0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_41(a1);
  OUTLINED_FUNCTION_2_44(v4);
  v1 = OUTLINED_FUNCTION_1_40();
  v2(v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_1DCCC5938(uint64_t a1)
{
  OUTLINED_FUNCTION_3_41(a1);
  OUTLINED_FUNCTION_2_44(v4);
  v1 = OUTLINED_FUNCTION_1_40();
  v2(v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_1DCCC5990(uint64_t a1)
{
  OUTLINED_FUNCTION_3_41(a1);
  OUTLINED_FUNCTION_2_44(v4);
  v1 = OUTLINED_FUNCTION_1_40();
  v2(v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_1DCCC59E8(uint64_t a1)
{
  OUTLINED_FUNCTION_3_41(a1);
  OUTLINED_FUNCTION_2_44(v4);
  v1 = OUTLINED_FUNCTION_1_40();
  v2(v1);
  return __swift_destroy_boxed_opaque_existential_1Tm(v4);
}

uint64_t sub_1DCCC5A40()
{
  sub_1DCB16D50(v0 + 16, &unk_1ECCA3C60, &qword_1DD0EA360);

  return swift_deallocClassInstance();
}

uint64_t static ContextUpdate.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1ECCA3C70 = a1;
  return result;
}

uint64_t sub_1DCCC5C34@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECCA3C70;
  return result;
}

uint64_t sub_1DCCC5C80(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECCA3C70 = v1;
  return result;
}

void *ContextUpdate.provideContextCommand.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEContextUpdate_provideContextCommand);
  v2 = v1;
  return v1;
}

void *ContextUpdate.nativeFlowContextCommand.getter()
{
  v1 = *(v0 + OBJC_IVAR___SKEContextUpdate_nativeFlowContextCommand);
  v2 = v1;
  return v1;
}

id ContextUpdate.init(provideContextCommand:systemDialogActs:rrEntities:nativeFlowContextCommand:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___SKEContextUpdate_provideContextCommand] = a1;
  *&v4[OBJC_IVAR___SKEContextUpdate_systemDialogActs] = a2;
  *&v4[OBJC_IVAR___SKEContextUpdate_nativeFlowContextCommand] = a4;
  *&v4[OBJC_IVAR___SKEContextUpdate_rrEntities] = a3;
  v6.receiver = v4;
  v6.super_class = type metadata accessor for ContextUpdate();
  return objc_msgSendSuper2(&v6, sel_init);
}

id ContextUpdate.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = sub_1DD0DAE2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB10E5C(0, &qword_1ECCA3C98, 0x1E69C7748);
  v9 = sub_1DD0DE88C();
  sub_1DCB10E5C(0, &unk_1ECCA3CA0, 0x1E69C7990);
  v10 = sub_1DD0DE88C();
  sub_1DCCC6A90();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E8470;
  *(inited + 32) = sub_1DCB10E5C(0, &unk_1EDE4D6B0, 0x1E695DEC8);
  *(inited + 40) = sub_1DCB10E5C(0, &qword_1ECCA3CB0, 0x1E69D2550);
  *(inited + 48) = sub_1DCB10E5C(0, &qword_1ECCA3CB8, 0x1E69D2548);
  *(inited + 56) = sub_1DCB10E5C(0, &qword_1ECCA3CC0, 0x1E69D2540);
  *(inited + 64) = sub_1DCB10E5C(0, &qword_1ECCA3CC8, 0x1E69D2538);
  *(inited + 72) = sub_1DCB10E5C(0, &qword_1ECCA3CD0, 0x1E69D2558);
  *(inited + 80) = sub_1DCB10E5C(0, &qword_1ECCA3CD8, 0x1E69D2560);
  sub_1DCC344D8(inited);

  sub_1DD0DE89C();

  if (!v50)
  {
    sub_1DCC8BC14(&v49);
LABEL_11:
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v15 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v15, qword_1EDE57E00);
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v17))
    {
      v18 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v18);
      OUTLINED_FUNCTION_4_31(&dword_1DCAFC000, v19, v17, "Could not deserialize SystemDialogActs array");
      OUTLINED_FUNCTION_92_0();
    }

    goto LABEL_16;
  }

  v46 = v10;
  v12 = MEMORY[0x1E69E7CA0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    v10 = v46;
    goto LABEL_11;
  }

  v44 = v9;
  v45 = v2;
  v13 = MEMORY[0x1E69E7CC0];
  v48 = MEMORY[0x1E69E7CC0];
  v43 = v47;
  sub_1DD0DE87C();
  while (1)
  {
    sub_1DD0DAE1C();
    if (!v50)
    {
      break;
    }

    sub_1DCB20B30(&v49, &v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3D08, &qword_1DD0EA3E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v28 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v28, qword_1EDE57E00);
      v29 = sub_1DD0DD8EC();
      v30 = sub_1DD0DE6EC();
      OUTLINED_FUNCTION_75(v30);
      OUTLINED_FUNCTION_7_29();
      if (v31)
      {
        v32 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v32);
        OUTLINED_FUNCTION_4_31(&dword_1DCAFC000, v33, v30, "Element in decoded array is not of type SystemDialogAct");
        OUTLINED_FUNCTION_92_0();
      }

      (*(v5 + 8))(v8, v4);
      goto LABEL_16;
    }

    v14 = swift_unknownObjectRetain();
    MEMORY[0x1E12A6920](v14);
    if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
    swift_unknownObjectRelease();
    v13 = v48;
  }

  (*(v5 + 8))(v8, v4);
  sub_1DCB10E5C(0, &qword_1EDE4F6B0, 0x1E695DEF0);
  v22 = sub_1DD0DE88C();
  if (v22)
  {
    v23 = v22;
    v24 = sub_1DD0DAF2C();
    v26 = v25;

    sub_1DD0DAACC();
    swift_allocObject();
    sub_1DD0DAABC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3CF0, &unk_1DD0EA3D0);
    sub_1DCCC6AF8(&qword_1ECCA3CF8, &qword_1ECCA3D00, MEMORY[0x1E69D2960], MEMORY[0x1E69E6330]);
    sub_1DD0DAAAC();
    v27 = v46;
    v40 = v49;
    v41 = objc_allocWithZone(type metadata accessor for ContextUpdate());
    v20 = ContextUpdate.init(provideContextCommand:systemDialogActs:rrEntities:nativeFlowContextCommand:)(v44, v13, v40, v27);

    sub_1DCB21A14(v24, v26);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v20;
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v34 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v34, qword_1EDE57E00);
  v35 = sub_1DD0DD8EC();
  v36 = sub_1DD0DE6EC();
  OUTLINED_FUNCTION_75(v36);
  OUTLINED_FUNCTION_7_29();
  if (v37)
  {
    v38 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_167(v38);
    OUTLINED_FUNCTION_4_31(&dword_1DCAFC000, v39, v36, "Can't decode RREntity data into Data");
    OUTLINED_FUNCTION_92_0();
  }

LABEL_16:
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1DCCC6644(void *a1)
{
  v2 = sub_1DD0DDF8C();
  OUTLINED_FUNCTION_3_42();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3D08, &qword_1DD0EA3E0);
  v3 = sub_1DD0DE2DC();
  v4 = sub_1DD0DDF8C();
  OUTLINED_FUNCTION_3_42();

  v5 = sub_1DD0DDF8C();
  OUTLINED_FUNCTION_3_42();

  sub_1DD0DAAFC();
  swift_allocObject();
  sub_1DD0DAAEC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3CF0, &unk_1DD0EA3D0);
  sub_1DCCC6AF8(&qword_1ECCA3D10, &qword_1ECCA3D18, MEMORY[0x1E69D2950], MEMORY[0x1E69E6300]);
  v6 = sub_1DD0DAADC();
  v8 = v7;

  v9 = sub_1DD0DAEFC();
  v10 = sub_1DD0DDF8C();
  [a1 encodeObject:v9 forKey:v10];

  return sub_1DCB21A14(v6, v8);
}

id ContextUpdate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ContextUpdate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextUpdate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DCCC6A90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA3D20, &qword_1DD0E5A48);
  if (dynamic_cast_existential_0_class_conditional(v0, v0))
  {
    v1 = &qword_1ECCA2600;
    v2 = &qword_1DD0E1660;
  }

  else
  {
    v1 = &unk_1ECCA3D28;
    v2 = &unk_1DD0EA410;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

uint64_t sub_1DCCC6AF8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA3CF0, &unk_1DD0EA3D0);
    sub_1DCCC6B80(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DCCC6B80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DD0DD9BC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1DCCC6CB4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = sub_1DCCC7168(&v11);
  if (v14 != 1)
  {
    v8 = type metadata accessor for ContinuationPromptFlow.State(0, *(v3 + 80), *(v3 + 88), v5);
    OUTLINED_FUNCTION_2();
    (*(v9 + 8))(&v11, v8);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v10 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v10, qword_1EDE57E00);
    sub_1DD0DCF8C();
  }

  v6 = v12;
  v7 = v13;
  *a1 = v11;
  *(a1 + 8) = v6;
  *(a1 + 9) = v7;
  return result;
}

void sub_1DCCC6F30()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCC7168@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7_30();
  swift_beginAccess();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6();
  type metadata accessor for ContinuationPromptFlow.State(0, v4, *(v3 + 88), v5);
  OUTLINED_FUNCTION_2();
  return (*(v6 + 16))(a1, v1);
}

void sub_1DCCC71FC(uint64_t a1)
{
  OUTLINED_FUNCTION_7_30();
  swift_beginAccess();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6();
  v6 = type metadata accessor for ContinuationPromptFlow.State(0, v4, *(v3 + 88), v5);
  (*(*(v6 - 8) + 24))(v1, a1, v6);
  swift_endAccess();
  sub_1DCCC6F30();
}

uint64_t sub_1DCCC72DC(uint64_t a1, _BYTE *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_1DCCC7334(a1, a2, a3);
  return v6;
}

uint64_t sub_1DCCC7334(uint64_t a1, _BYTE *a2, __int128 *a3)
{
  *(v3 + 16) = *a2;
  *(v3 + 24) = a1;
  sub_1DCB18FF0(a3, v3 + 32);
  *(v3 + 72) = 0;
  return v3;
}

void sub_1DCCC7368(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  type metadata accessor for ContinuationPromptFlow(0, v3, *(v2 + 88), v4);
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCCC73E8(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v2[16] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DCCC7430, 0, 0);
}

uint64_t sub_1DCCC7430()
{
  sub_1DCCC7168(v0 + 16);
  if ((*(v0 + 64) & 1) == 0)
  {
    v4 = *(v0 + 128);
    v5 = *(v0 + 16);
    sub_1DCB18FF0((v0 + 24), v0 + 72);
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v6);
    (*(v7 + 40))(v5, *(v4 + 80), *(v4 + 88), v6, v7);
    sub_1DCCC7594();
  }

  type metadata accessor for ContinuationPromptFlow.State(0, *(*(v0 + 128) + 80), *(*(v0 + 128) + 88), v1);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + 16);
  v3.n128_f64[0] = static ExecuteResponse.complete()();
  v8 = *(v0 + 8);

  return v8(v3);
}

void sub_1DCCC75D4(uint64_t *a1)
{
  v1 = *(a1 + 4);
  v2 = *a1;
  v3 = v1;
  sub_1DCCC7614(&v2);
}

void sub_1DCCC7614(uint64_t a1)
{
  if (*(a1 + 9))
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v2 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v2, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    v4 = sub_1DD0DE6DC();
    if (!OUTLINED_FUNCTION_5(v4))
    {
      goto LABEL_18;
    }

    *swift_slowAlloc() = 0;
    v7 = "Received a response from the prompt flow but it did not contain a successful confirmation response. Will indicate to stop windowing.";
  }

  else
  {
    if (*a1 != 2 && ((*(v1 + 16) ^ *a1) & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v8 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v8, qword_1EDE57E00);
      v9 = sub_1DD0DD8EC();
      v10 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_5(v10))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v11, v12, "User indicated that they want to continue. Will indicate to continue windowing.");
        OUTLINED_FUNCTION_52();
      }

      v15 = 0;
      v16 = 512;
      v17 = 1;
LABEL_19:
      sub_1DCCC71FC(&v15);
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v13 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v13, qword_1EDE57E00);
    v3 = sub_1DD0DD8EC();
    v14 = sub_1DD0DE6DC();
    if (!OUTLINED_FUNCTION_5(v14))
    {
LABEL_18:

      v15 = 1;
      v16 = 0;
      v17 = 1;
      goto LABEL_19;
    }

    *swift_slowAlloc() = 0;
    v7 = "User indicated that they don't want to continue. Will indicate to stop windowing.";
  }

  OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v5, v6, v7);
  OUTLINED_FUNCTION_52();
  goto LABEL_18;
}

uint64_t sub_1DCCC7800(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  (*(v4 + 16))(&v6, v2, a1);
  if (v8)
  {
    (*(v4 + 8))(&v6, a1);
    return 0x6574656C706D6F63;
  }

  else
  {
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    return 0x6D6F7250646E6573;
  }
}

uint64_t sub_1DCCC78F8()
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  type metadata accessor for ContinuationPromptFlow.State(0, v2, *(v1 + 88), v3);
  OUTLINED_FUNCTION_2();
  (*(v4 + 8))(v0 + 24);
  return v0;
}

uint64_t sub_1DCCC7970()
{
  sub_1DCCC78F8();

  return swift_deallocClassInstance();
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

uint64_t sub_1DCCC79D8(uint64_t a1)
{
  result = *(a1 + 48);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t sub_1DCCC79F4(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1DCCC7A58(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB193FC;

  return sub_1DCCC73E8(a1);
}

uint64_t sub_1DCCC7B38(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a5;
  v15 = a6;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v13);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1Tm, a3, a5);
  *(a4 + 16) = a2 & 1;
  *(a4 + 24) = a1;
  sub_1DCB18FF0(&v13, a4 + 32);
  *(a4 + 72) = 0;
  return a4;
}

void sub_1DCCC7BDC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 >= 2)
  {
    v2 = *a1 + 2;
  }

  if (v2 == 1)
  {
    v3 = OUTLINED_FUNCTION_3_43();

    sub_1DCBB12E0(v3, v4, v5);
  }

  else
  {
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  }
}

uint64_t sub_1DCCC7C48(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 48);
  if (v4 >= 2)
  {
    v4 = *a2 + 2;
  }

  if (v4 == 1)
  {
    OUTLINED_FUNCTION_2_46();
  }

  else
  {
    *a1 = *a2;
    v6 = *(a2 + 2);
    *(a1 + 32) = v6;
    v7 = v6;
    v8 = **(v6 - 8);
    swift_unknownObjectRetain();
    v8(a1 + 8, a2 + 1, v7);
    v5 = 0;
  }

  *(a1 + 48) = v5;
  return a1;
}

uint64_t sub_1DCCC7CF8(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 48);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      v5 = OUTLINED_FUNCTION_3_43();
      sub_1DCBB12E0(v5, v6, v7);
    }

    else
    {
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
    }

    v8 = *(a2 + 48);
    if (v8 >= 2)
    {
      v8 = *a2 + 2;
    }

    if (v8 == 1)
    {
      OUTLINED_FUNCTION_2_46();
    }

    else
    {
      *a1 = *a2;
      v10 = a2[4];
      *(a1 + 32) = v10;
      *(a1 + 40) = a2[5];
      v11 = **(v10 - 8);
      swift_unknownObjectRetain();
      v11(a1 + 8, a2 + 1, v10);
      v9 = 0;
    }

    *(a1 + 48) = v9;
  }

  return a1;
}

uint64_t sub_1DCCC7DF0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 48);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {
      v5 = OUTLINED_FUNCTION_3_43();
      sub_1DCBB12E0(v5, v6, v7);
    }

    else
    {
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
    }

    v8 = *(a2 + 48);
    if (v8 >= 2)
    {
      v8 = *a2 + 2;
    }

    if (v8 == 1)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v9 = 1;
    }

    else
    {
      v9 = 0;
      v10 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v10;
      *(a1 + 32) = *(a2 + 32);
    }

    *(a1 + 48) = v9;
  }

  return a1;
}

uint64_t sub_1DCCC7EB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCCC7EEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCCC7FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1DCB4AE1C;

  return ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)();
}

uint64_t ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEAAE74();
}

void sub_1DCCC818C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v35 = a7;
  v36 = a2;
  v40 = a4;
  v41 = a5;
  v42 = a11;
  v39 = a10;
  v37 = a3;
  v38 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  v15 = OUTLINED_FUNCTION_20_0(v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v35 - v17;
  OUTLINED_FUNCTION_0_1();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23, v24);
  v25 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v25, v11, a6);
  v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v27 = (v22 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = v35;
  *(v29 + 16) = a6;
  *(v29 + 24) = v30;
  (*(v20 + 32))(v29 + v26, v25, a6);
  *(v29 + v27) = a1;
  *(v29 + v28) = v36;
  *(v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8)) = v37;
  v31 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v31);
  v32 = swift_allocObject();
  v32[2] = 0;
  v32[3] = 0;
  v33 = v40;
  v32[4] = v39;
  v32[5] = v29;
  v34 = v41;
  v32[6] = v33;
  v32[7] = v34;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCC83B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCCC8448;

  return ContinueInAppHandoffToCompanionFlowStrategy.makeContinueInAppHandoffResponse(app:intent:intentResponse:)(a1);
}

uint64_t sub_1DCCC8448()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_86();
  }

  return v5(v4);
}

uint64_t sub_1DCCC855C()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  swift_asyncLet_begin();
  v1 = swift_task_alloc();
  *(v0 + 856) = v1;
  *v1 = v0;
  v1[1] = sub_1DCCC8628;

  return static NotificationTemplates.genericHandoffNotification()();
}

uint64_t sub_1DCCC8628()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v3[97] = v1;
  v3[98] = v5;
  v3[99] = v6;
  v3[100] = v0;
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  v3[113] = v9;
  v3[114] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DEB0](v3 + 2, v3 + 87, sub_1DCCC879C, v3 + 82);
  }

  else
  {

    return MEMORY[0x1EEE6DEC0](v3 + 2, v3 + 87, sub_1DCCC8768, v3 + 92);
  }
}

uint64_t sub_1DCCC8768()
{
  v1[115] = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_0_12(sub_1DCCC8858);
  }

  v1[116] = v1[98];
  return OUTLINED_FUNCTION_0_12(sub_1DCCC87B8);
}

uint64_t sub_1DCCC87B8()
{
  OUTLINED_FUNCTION_42();
  sub_1DCB17D04(v0 + 696, *(v0 + 808));

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 696, sub_1DCCC8824, v0 + 864);
}

uint64_t sub_1DCCC8858()
{
  OUTLINED_FUNCTION_42();

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 696, sub_1DCCC88C0, v0 + 816);
}

uint64_t sub_1DCCC88DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = (*(a7 + 24) + **(a7 + 24));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1DCB4AE1C;

  return v16(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_1DCCC8A30()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_26_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_32_10(v1);

  return sub_1DCCC88DC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCCC8B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 16) = a1;
  v16 = (*(a7 + 24) + **(a7 + 24));
  v14 = swift_task_alloc();
  *(v7 + 24) = v14;
  *v14 = v7;
  v14[1] = sub_1DCCC8C60;

  return v16(a1, a3, a4, a5, a6, a7);
}

uint64_t sub_1DCCC8C60()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_32_1();
  v7 = v6;
  OUTLINED_FUNCTION_12_0();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_27();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

uint64_t sub_1DCCC8DA0()
{
  v1 = v0[4];
  v2 = v0[2];
  *(v2 + 40) = v0[5];
  *(v2 + 48) = v1;
  OUTLINED_FUNCTION_29();
  return v3();
}

uint64_t sub_1DCCC8DD0()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_95();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_68_6();
  OUTLINED_FUNCTION_26_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_32_10(v1);

  return sub_1DCCC8B08(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCCC8EA8(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB4AE1C;

  return sub_1DCEAB6BC();
}

uint64_t sub_1DCCC8F40(uint64_t a1, uint64_t a2)
{
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1DCB4AD3C;

  return ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)();
}

uint64_t ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_39();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;

  return sub_1DCEAAE74();
}

uint64_t sub_1DCCC9088(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DCB4AE1C;

  return ContinueInAppHandoffToCompanionFlowStrategyAsync.makeContinueInAppHandoffResponse(intentResolutionRecord:)(a1);
}

void sub_1DCCC9138()
{
  OUTLINED_FUNCTION_42();
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE46630;
  sub_1DCB4E718((v0 + 7));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v0[5] = type metadata accessor for RefreshableDeviceState();
  v0[6] = &protocol witness table for RefreshableDeviceState;
  v0[2] = v1;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCC923C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 112) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCCC9380(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  *(v3 + 48) = *(a2 + 16);
  return OUTLINED_FUNCTION_0_12(sub_1DCCC93A8);
}

uint64_t sub_1DCCC93A8()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v2 = v0;
  v2[1] = sub_1DCCA7BC4;
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x1EEE6DE38](v3);
}

uint64_t sub_1DCCC9490(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(*(v7 + 88) + 16))(a3, v16, v17, sub_1DCC111BC, v14, *(v7 + 80));
}

uint64_t sub_1DCCC964C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCCC9380(a1, a2);
}

uint64_t sub_1DCCC96F8()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_33_4();
  sub_1DCCC9C38();
  return v0;
}

uint64_t sub_1DCCC9728()
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  return v1(v0) & 1;
}

uint64_t sub_1DCCC97A4(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  *(v3 + 48) = *(a2 + 16);
  return OUTLINED_FUNCTION_0_12(sub_1DCCC97CC);
}

uint64_t sub_1DCCC97CC()
{
  OUTLINED_FUNCTION_39();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_12_24(v1);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v2 = v0;
  v2[1] = sub_1DCCA7008;
  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x1EEE6DE38](v3);
}

uint64_t sub_1DCCC98B4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a4;
  v17 = a5;
  v7 = *a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  (*(*(v7 + 88) + 40))(a3, v16, v17, sub_1DCC11344, v14, *(v7 + 80));
}

uint64_t sub_1DCCC9A6C()
{
  sub_1DCCC9CA4();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCC9AEC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DCB4AE1C;

  return sub_1DCCC97A4(a1, a2);
}

uint64_t sub_1DCCC9B98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB4AE1C;

  return ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)();
}

uint64_t sub_1DCCC9C38()
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_112();
  (*(v1 + 32))(v0 + v2);
  return v0;
}

uint64_t sub_1DCCC9CA4()
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + v2);
  return v0;
}

uint64_t sub_1DCCC9D0C()
{
  OUTLINED_FUNCTION_65();
  v7 = *(v6 + 16);
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_112();
  (*(v8 + 32))(v1 + v9);
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v5, v1 + *(v10 + 112));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v4, v1 + *(v11 + 120));
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v3, v1 + *(v12 + 128));
  OUTLINED_FUNCTION_66();
  v14 = v1 + *(v13 + 136);
  *v14 = *v2;
  *(v14 + 16) = v7;
  OUTLINED_FUNCTION_66();
  sub_1DCAFF9E8(v0, v1 + *(v15 + 144));
  return v1;
}

void sub_1DCCC9E30()
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_8_2();
  type metadata accessor for SiriKitContinueInAppFlow(0, v1, *(v0 + 88), v2);
  OUTLINED_FUNCTION_86();
  Flow.deferToExecuteAsync(_:)();
}

uint64_t sub_1DCCC9EC4()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v0 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v0, qword_1EDE57E00);
  v1 = sub_1DD0DD8EC();
  v2 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_23(v2))
  {
    v3 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v3);
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_62();
  }

  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1DCCC9F9C(uint64_t a1, _BYTE *a2)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  *(v3 + 106) = *a2;
  return OUTLINED_FUNCTION_0_12(sub_1DCCC9FBC);
}

uint64_t sub_1DCCC9FBC()
{
  OUTLINED_FUNCTION_33();
  v1 = (v0[9] + *(*v0[9] + 128));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_8();
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1DCCCA0F0;
  v6 = v0[8];

  return v8(v6, v2, v3);
}

uint64_t sub_1DCCCA0F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCCCA1EC()
{
  OUTLINED_FUNCTION_33();
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

  v10 = *(v0 + 64);

  v11 = v10[3];
  __swift_project_boxed_opaque_existential_1(v10, v11);
  if (sub_1DCB651D0(v11))
  {
    v12 = *(v0 + 106);
    v13 = *(v0 + 64);
    *(v0 + 104) = 7;
    v15 = v10[3];
    v14 = v10[4];
    __swift_project_boxed_opaque_existential_1(v13, v15);
    (*(v14 + 8))(v15, v14);
    *(v0 + 105) = v12;
    v16 = swift_task_alloc();
    *(v0 + 96) = v16;
    *v16 = v0;
    v16[1] = sub_1DCCCA3B8;

    return sub_1DCCCA62C();
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v18();
  }
}

uint64_t sub_1DCCCA3B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = v1;
  OUTLINED_FUNCTION_12_0();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  sub_1DCB0E9D8(v2 + 16, &unk_1ECCA3280, &unk_1DD0E23D0);
  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCCCA4AC()
{
  OUTLINED_FUNCTION_41();
  v21 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = *(v0 + 88);
  v2 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v2, qword_1EDE57E00);
  v3 = v1;
  v4 = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = OUTLINED_FUNCTION_151();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315138;
    *(v0 + 56) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v10 = sub_1DD0DE02C();
    v12 = sub_1DCB10E9C(v10, v11, &v20);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_36_0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_62();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_29();

  return v18();
}

uint64_t sub_1DCCCA62C()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v5 = v4;
  *(v1 + 16) = v6;
  *(v1 + 24) = v0;
  v7 = type metadata accessor for SiriKitEventPayload(0);
  *(v1 + 32) = v7;
  OUTLINED_FUNCTION_20_0(v7);
  *(v1 + 40) = OUTLINED_FUNCTION_38();
  *(v1 + 64) = *v5;
  *(v1 + 65) = *v3;
  v8 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1DCCCA6C8()
{
  v1 = *(v0 + 65);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1((v4 + *(*v4 + 112)), *(v4 + *(*v4 + 112) + 24));
  type metadata accessor for SiriKitEvent(0);
  *v3 = v2;
  v6 = (v4 + *(*v4 + 136));
  *(v3 + 8) = *v6;
  *(v3 + 16) = v6[1];
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  sub_1DCB09910(v5, v3 + 40, &unk_1ECCA3280, &unk_1DD0E23D0);
  *(v3 + 80) = 3;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = v1;
  swift_storeEnumTagMultiPayload();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCCA8D4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCCCA9EC()
{
  OUTLINED_FUNCTION_8_2();
  OUTLINED_FUNCTION_112();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v3 + 112)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v4 + 120)));
  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v5 + 128)));
  OUTLINED_FUNCTION_66();
  v7 = v0 + *(v6 + 136);
  v8 = *(v7 + 8);

  OUTLINED_FUNCTION_66();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(v9 + 144)));
  return v0;
}

uint64_t sub_1DCCCAAF4()
{
  sub_1DCCCA9EC();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCCABE8(uint64_t a1)
{
  v6 = (*(**v1 + 200) + **(**v1 + 200));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1DCB4AD3C;

  return v6(a1);
}

uint64_t sub_1DCCCAD10(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCCCAD50);
}

void sub_1DCCCAD50()
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_70_3();
  OUTLINED_FUNCTION_34_15(*(v0 + 136));
}

uint64_t sub_1DCCCAE8C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v7 = *(v3 + 64);
    v8 = *(v3 + 72);

    v9 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 64);
    v13 = *(v3 + 72);

    *(v3 + 144) = 39;
    v14 = swift_task_alloc();
    *(v3 + 128) = v14;
    *v14 = v5;
    v14[1] = sub_1DCCCB01C;
    v15 = OUTLINED_FUNCTION_86();

    return sub_1DCCC9F9C(v15, v16);
  }
}

uint64_t sub_1DCCCB01C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCCCB118()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCCCB3E0()
{
  OUTLINED_FUNCTION_42();
  v1[52] = v2;
  v1[53] = v0;
  v1[54] = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  OUTLINED_FUNCTION_20_0(v3);
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  v4 = type metadata accessor for FlowOutputAtom(0);
  v1[57] = v4;
  v1[58] = *(v4 - 8);
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD0, &qword_1DD0EB860);
  OUTLINED_FUNCTION_20_0(v5);
  v1[62] = OUTLINED_FUNCTION_38();
  v6 = type metadata accessor for AceOutput(0);
  v1[63] = v6;
  OUTLINED_FUNCTION_20_0(v6);
  v1[64] = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCCCB564()
{
  v22 = v0;
  v2 = v0[53];
  v3 = *(*v2 + 120);
  v0[65] = v3;
  v4 = *(v2 + v3 + 32);
  __swift_project_boxed_opaque_existential_1((v2 + v3), *(v2 + v3 + 24));
  v5 = OUTLINED_FUNCTION_33_4();
  v0[66] = v6(v5, v4);
  v0[67] = v7;
  if (v7)
  {
    v8 = (v0[53] + *(*v0[53] + 136));
    v9 = v8[1];
    v10 = v8[2];
    v0[42] = *v8;
    v0[43] = v9;
    v0[44] = v10;
    sub_1DD0DCF8C();
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v12 = v0[55];
  v11 = v0[56];
  v13 = sub_1DD0DD8FC();
  v14 = __swift_project_value_buffer(v13, qword_1EDE57E00);
  v15 = *(v13 - 8);
  (*(v15 + 16))(v11, v14, v13);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v13);
  sub_1DCB09910(v11, v12, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1DCB0E9D8(v0[55], &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v18 = 136315650;
      v19 = sub_1DD0DEC3C();
      sub_1DCB10E9C(v19, v20, &v21);
      OUTLINED_FUNCTION_92_1();
      *(v18 + 4) = v1;
      *(v18 + 12) = 2048;
      *(v18 + 14) = 377;
      *(v18 + 22) = 2080;
      *(v18 + 24) = sub_1DCB10E9C(0xD000000000000039, 0x80000001DD117270, &v21);
      _os_log_impl(&dword_1DCAFC000, v16, v17, "FatalError at %s:%lu - %s", v18, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_62();
    }

    (*(v15 + 8))(v0[55], v13);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000039, 0x80000001DD117270);
}

uint64_t sub_1DCCCB99C()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 552) = v0;

  v5 = *(v2 + 344);
  v6 = *(v2 + 352);

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCCCBB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_73_2();
  memcpy(v24 + 2, v24 + 12, 0x50uLL);
  sub_1DCB17D04((v24 + 2), (v24 + 22));
  v25 = MEMORY[0x1E69E7CC0];
  v24[49] = MEMORY[0x1E69E7CC0];
  sub_1DCB17D04((v24 + 22), (v24 + 27));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  if (swift_dynamicCast())
  {
    v26 = v24[64];
    v27 = v24[62];
    __swift_storeEnumTagSinglePayload(v27, 0, 1, v24[63]);
    sub_1DCCCF3D0(v27, v26, type metadata accessor for AceOutput);

    sub_1DCBB920C(v28);
    sub_1DCCCF430(v26, type metadata accessor for AceOutput);
  }

  else
  {
    v29 = v24[62];
    __swift_storeEnumTagSinglePayload(v29, 1, 1, v24[63]);
    sub_1DCB0E9D8(v29, &qword_1ECCA1BD0, &qword_1DD0EB860);
    sub_1DCB17D04((v24 + 22), (v24 + 32));
    type metadata accessor for FlowOutput();
    if (swift_dynamicCast())
    {
      v30 = *(v24[50] + 16);
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = v24[58];
        v33 = v30 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
        v34 = *(v32 + 72);
        v35 = MEMORY[0x1E69E7CC0];
        do
        {
          v37 = v24[60];
          v36 = v24[61];
          sub_1DCCCF36C(v33, v36);
          OUTLINED_FUNCTION_24_15();
          sub_1DCCCF3D0(v36, v37, v38);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1DCCCF430(v24[60], type metadata accessor for FlowOutputAtom);
          }

          else
          {
            MEMORY[0x1E12A6920]();
            if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1DD0DE33C();
            }

            sub_1DD0DE3AC();
            v35 = v25;
          }

          v33 += v34;
          --v31;
        }

        while (v31);
      }

      else
      {
        v35 = v25;
      }

      sub_1DCBB920C(v35);
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
      }

      v39 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v39, qword_1EDE57E00);
      v40 = sub_1DD0DD8EC();
      v41 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_23(v41))
      {
        v42 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_46(v42);
        OUTLINED_FUNCTION_36_0();
        _os_log_impl(v43, v44, v45, v46, v47, 2u);
        OUTLINED_FUNCTION_62();
      }
    }
  }

  v48 = v24[9];
  if (v48)
  {
    v49 = (v24[53] + v24[65]);
    v57 = v48;

    v50 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
    [v50 encodeObject:v57 forKey:*MEMORY[0x1E696A508]];
    sub_1DCB10E5C(0, &qword_1ECCA9330, 0x1E69C7828);
    v51 = [v50 encodedData];
    sub_1DD0DAF2C();

    v53 = v49[3];
    v52 = v49[4];
    __swift_project_boxed_opaque_existential_1(v49, v53);
    sub_1DCCDEA6C(v53, v52);
  }

  v54 = (v24[53] + v24[65]);
  sub_1DCB10E5C(0, &qword_1ECCA9330, 0x1E69C7828);
  v55 = v54[3];
  v56 = v54[4];
  __swift_project_boxed_opaque_existential_1(v54, v55);
  sub_1DCCDEA6C(v55, v56);
}

uint64_t sub_1DCCCC1F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 584) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 296));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCCCC2F0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[70];
  v2 = v0[52];
  v3 = [objc_allocWithZone(MEMORY[0x1E69C7898]) init];
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_59_7(*(v4 + 144));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  static ExecuteResponse.ongoing(requireInput:)(1, v2);
  sub_1DCCCF318((v0 + 2));
  OUTLINED_FUNCTION_39_10();

  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCCCC558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_139();
  a17 = v19;
  a18 = v20;
  OUTLINED_FUNCTION_41();
  a16 = v18;
  __swift_destroy_boxed_opaque_existential_1Tm(v18 + 37);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v21 = v18[73];
  v22 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v22, qword_1EDE57E00);
  v23 = v21;
  v24 = sub_1DD0DD8EC();
  v25 = sub_1DD0DE6DC();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v18[73];
  if (v26)
  {
    v28 = OUTLINED_FUNCTION_151();
    v29 = swift_slowAlloc();
    a9 = v29;
    *v28 = 136315138;
    swift_getErrorValue();
    v30 = sub_1DD0DF18C();
    v32 = sub_1DCB10E9C(v30, v31, &a9);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_1DCAFC000, v24, v25, "Encountered Error: error: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  v33 = v18[70];
  v34 = v18[52];
  v35 = [objc_allocWithZone(MEMORY[0x1E69C7898]) init];
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_59_7(*(v36 + 144));

  __swift_destroy_boxed_opaque_existential_1Tm(v18 + 22);
  static ExecuteResponse.ongoing(requireInput:)(1, v34);
  sub_1DCCCF318((v18 + 2));
  OUTLINED_FUNCTION_39_10();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_121();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

uint64_t sub_1DCCCC770()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_65_1();
  v1 = OUTLINED_FUNCTION_3_17();
  sub_1DCCCCE24(v1, v2, v3, v4, v5, v6, v7, v8);
  return v0;
}

uint64_t sub_1DCCCC7BC(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v2[13] = *v1;
  return OUTLINED_FUNCTION_0_12(sub_1DCCCC7FC);
}

void sub_1DCCCC7FC()
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_70_3();
  OUTLINED_FUNCTION_34_15(*(v0 + 136));
}

uint64_t sub_1DCCCC938()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    v7 = *(v3 + 64);
    v8 = *(v3 + 72);

    v9 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 64);
    v13 = *(v3 + 72);

    *(v3 + 144) = 74;
    v14 = swift_task_alloc();
    *(v3 + 128) = v14;
    *v14 = v5;
    v14[1] = sub_1DCCCCAC8;
    v15 = OUTLINED_FUNCTION_86();

    return sub_1DCCC9F9C(v15, v16);
  }
}

uint64_t sub_1DCCCCAC8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCCCCE4C()
{
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v0 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v0, qword_1EDE57E00);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCCD040()
{
  OUTLINED_FUNCTION_42();
  v1[51] = v2;
  v1[52] = v0;
  OUTLINED_FUNCTION_8_2();
  v1[53] = v3;
  v1[54] = *(v4 + 224);
  OUTLINED_FUNCTION_0_1();
  v1[55] = v5;
  v1[56] = OUTLINED_FUNCTION_38();
  v6 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCCCD118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 424);
  v5 = *(v4 + 432);
  v7 = *(v4 + 416);
  *(v4 + 377) = 1;
  v8 = *(*v7 + 240);
  *(v4 + 378) = *(v7 + v8);
  v9 = *(v6 + 232);
  *(v4 + 456) = v9;
  type metadata accessor for SiriKitContinueInAppAutoPunchOutFlow.State(0, v5, v9, a4);
  swift_getWitnessTable();
  if (sub_1DD0DF0EC())
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v10 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v10, qword_1EDE57E00);
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_23(v12))
    {
      v13 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v13);
      OUTLINED_FUNCTION_36_0();
      _os_log_impl(v14, v15, v16, v17, v18, 2u);
      OUTLINED_FUNCTION_62();
    }

    static ExecuteResponse.complete()();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_73();

    __asm { BRAA            X1, X16 }
  }

  *(v4 + 379) = 0;
  *(v4 + 380) = *(v7 + v8);
  if (sub_1DD0DF0EC())
  {
    sub_1DD0DCF8C();
  }

  v21 = *(v4 + 416);
  v22 = *v21;
  *(v4 + 464) = *(*v21 + 104);
  v23 = *(v22 + 136);
  *(v4 + 472) = v23;
  v24 = (v21 + v23);
  v25 = v24[1];
  v26 = v24[2];
  *(v4 + 344) = *v24;
  *(v4 + 352) = v25;
  *(v4 + 360) = v26;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCCD6A8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_12_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 488) = v0;

  if (v0)
  {
    v7 = *(v3 + 352);
    v8 = *(v3 + 360);

    v9 = OUTLINED_FUNCTION_15_0();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 352);
    v13 = *(v3 + 360);

    *(v3 + 381) = 38;
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v3 + 496) = v14;
    *v14 = v15;
    v14[1] = sub_1DCCCD838;

    return sub_1DCCC9F9C(v3 + 64, (v3 + 381));
  }
}

uint64_t sub_1DCCCD838()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 504) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCCCD934()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCCCD9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_73_2();
  a25 = v30;
  a26 = v31;
  a24 = v26;
  v32 = *(v26 + 488);
  OUTLINED_FUNCTION_52_9();
  v35 = (v34 + *(v33 + 120));
  v36 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v37 = OUTLINED_FUNCTION_48_1();
  if (v38(v37, v36))
  {
    *(v26 + 392) = v32;
    v39 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    if (swift_dynamicCast())
    {
      v40 = *(v26 + 368);
      v41 = *(v26 + 376);
      if (v41 == 1)
      {
        if ([*(v26 + 368) errorCode] == 1305)
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
          }

          v42 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v42, qword_1EDE57E00);
          v43 = sub_1DD0DD8EC();
          v44 = sub_1DD0DE6DC();
          if (os_log_type_enabled(v43, v44))
          {
            v27 = OUTLINED_FUNCTION_50_0();
            *v27 = 0;
            OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v45, v46, "ContinueInApp output received error code 1305 on a CarPlay device");
            OUTLINED_FUNCTION_14_3();
          }

          OUTLINED_FUNCTION_53_5();
          type metadata accessor for SiriKitContinueInAppDialogFlow(0, v28, *(v27 + 8), v47);
          v48 = OUTLINED_FUNCTION_49_7();
          v49(v48);
          OUTLINED_FUNCTION_43_11();
          sub_1DCB17D04(v29 + *(v50 + 112), v26 + 104);
          sub_1DCB17D04(v35, v26 + 144);
          OUTLINED_FUNCTION_43_11();
          sub_1DCB17D04(v29 + *(v51 + 128), v26 + 184);
          OUTLINED_FUNCTION_41_11();
          v53 = sub_1DCB17D04(v29 + *(v52 + 144), v26 + 224);
          OUTLINED_FUNCTION_79_3(v53, v26 + 104, v26 + 144, v26 + 184, &a13);
        }

        v54 = v40;
        LOBYTE(v41) = 1;
      }

      else
      {
        v54 = *(v26 + 368);
      }

      sub_1DCB6DE90(v54, v41);
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v55 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v55, qword_1EDE57E00);
  v56 = OUTLINED_FUNCTION_33_4();
  v57 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_63_4();
  if (OUTLINED_FUNCTION_62_0())
  {
    OUTLINED_FUNCTION_151();
    a13 = OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_64_3(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v58 = sub_1DD0DE02C();
    sub_1DCB10E9C(v58, v59, &a13);
    OUTLINED_FUNCTION_92_1();
    *(v35 + 4) = v28;
    OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v60, v61, "SiriKitContinueInAppAutoPunchOutFlow strategy was unable to produce auto punch out response: %s. Cannot continue.");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_33_5();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1DCCCDD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_73_2();
  a25 = v30;
  a26 = v31;
  a24 = v26;
  __swift_destroy_boxed_opaque_existential_1Tm((v26 + 64));
  v32 = *(v26 + 504);
  OUTLINED_FUNCTION_52_9();
  v35 = (v34 + *(v33 + 120));
  v36 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v37 = OUTLINED_FUNCTION_48_1();
  if (v38(v37, v36))
  {
    *(v26 + 392) = v32;
    v39 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    if (swift_dynamicCast())
    {
      v40 = *(v26 + 368);
      v41 = *(v26 + 376);
      if (v41 == 1)
      {
        if ([*(v26 + 368) errorCode] == 1305)
        {
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
          }

          v42 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v42, qword_1EDE57E00);
          v43 = sub_1DD0DD8EC();
          v44 = sub_1DD0DE6DC();
          if (os_log_type_enabled(v43, v44))
          {
            v27 = OUTLINED_FUNCTION_50_0();
            *v27 = 0;
            OUTLINED_FUNCTION_36_1(&dword_1DCAFC000, v45, v46, "ContinueInApp output received error code 1305 on a CarPlay device");
            OUTLINED_FUNCTION_14_3();
          }

          OUTLINED_FUNCTION_53_5();
          type metadata accessor for SiriKitContinueInAppDialogFlow(0, v28, *(v27 + 8), v47);
          v48 = OUTLINED_FUNCTION_49_7();
          v49(v48);
          OUTLINED_FUNCTION_43_11();
          sub_1DCB17D04(v29 + *(v50 + 112), v26 + 104);
          sub_1DCB17D04(v35, v26 + 144);
          OUTLINED_FUNCTION_43_11();
          sub_1DCB17D04(v29 + *(v51 + 128), v26 + 184);
          OUTLINED_FUNCTION_41_11();
          v53 = sub_1DCB17D04(v29 + *(v52 + 144), v26 + 224);
          OUTLINED_FUNCTION_79_3(v53, v26 + 104, v26 + 144, v26 + 184, &a13);
        }

        v54 = v40;
        LOBYTE(v41) = 1;
      }

      else
      {
        v54 = *(v26 + 368);
      }

      sub_1DCB6DE90(v54, v41);
    }
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v55 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v55, qword_1EDE57E00);
  v56 = OUTLINED_FUNCTION_33_4();
  v57 = sub_1DD0DD8EC();
  sub_1DD0DE6EC();
  OUTLINED_FUNCTION_63_4();
  if (OUTLINED_FUNCTION_62_0())
  {
    OUTLINED_FUNCTION_151();
    a13 = OUTLINED_FUNCTION_52_0();
    OUTLINED_FUNCTION_64_3(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v58 = sub_1DD0DE02C();
    sub_1DCB10E9C(v58, v59, &a13);
    OUTLINED_FUNCTION_92_1();
    *(v35 + 4) = v28;
    OUTLINED_FUNCTION_8_4(&dword_1DCAFC000, v60, v61, "SiriKitContinueInAppAutoPunchOutFlow strategy was unable to produce auto punch out response: %s. Cannot continue.");
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_92_0();
  }

  else
  {
  }

  static ExecuteResponse.complete()();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_33_5();

  return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void sub_1DCCCE0D8(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *v5;
  LOBYTE(v26) = 1;
  v27 = *(v5 + v8[30]);
  type metadata accessor for SiriKitContinueInAppAutoPunchOutFlow.State(0, v8[28], v8[29], a4);
  swift_getWitnessTable();
  if (sub_1DD0DF0EC())
  {
    if ((a2 & 1) == 0)
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v22 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v22, qword_1EDE57E00);
      v23 = sub_1DD0DD8EC();
      v24 = sub_1DD0DE6DC();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1DCAFC000, v23, v24, "SiriKitContinueInAppAutoPunchOutFlow received success from device unlock flow. Continuing.", v25, 2u);
        MEMORY[0x1E12A8390](v25, -1, -1);
      }

      sub_1DCCCD024(2);
    }

    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v9 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v9, qword_1EDE57E00);
    v10 = a1;
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    sub_1DCB79378(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = sub_1DD0DF18C();
      v17 = sub_1DCB10E9C(v15, v16, &v26);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1DCAFC000, v11, v12, "SiriKitContinueInAppAutoPunchOutFlow received an unexpected error while trying to unlock the device: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1E12A8390](v14, -1, -1);
      v18 = v13;
LABEL_11:
      MEMORY[0x1E12A8390](v18, -1, -1);
    }
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v19 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v19, qword_1EDE57E00);
    v11 = sub_1DD0DD8EC();
    v20 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v11, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1DCAFC000, v11, v20, "SiriKitContinueInAppAutoPunchOutFlow.processDeviceUnlockResult called in unexpected state.", v21, 2u);
      v18 = v21;
      goto LABEL_11;
    }
  }
}

unint64_t sub_1DCCCE44C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD0DEE9C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DCCCE498(char a1)
{
  if (!a1)
  {
    return 0x64657472617473;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x64656B636F6C6E75;
}

uint64_t sub_1DCCCE4F4()
{
  OUTLINED_FUNCTION_65();
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_3_17();
  sub_1DCCCE540();
  return v0;
}

uint64_t sub_1DCCCE540()
{
  OUTLINED_FUNCTION_66();
  *(v0 + *(v1 + 240)) = 0;
  OUTLINED_FUNCTION_76_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
  return v0;
}

uint64_t sub_1DCCCE57C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1DD0DF0EC();
}

uint64_t sub_1DCCCE5F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1DCCCE65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1DCCCE6CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_1DCCCE73C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DCCCE44C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DCCCE774@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DCCCE498(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t dispatch thunk of ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_2(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContinueInAppHandoffToCompanionFlowStrategy.makeContinueInAppHandoffResponse(app:intent:intentResponse:)()
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_31_2(v1);

  return v4(v3);
}

uint64_t sub_1DCCCE9FC()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_86();

  return v4(v3);
}

uint64_t dispatch thunk of ContinueInAppDialogFlowStrategyAsync.makeContinueInAppResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContinueInAppHandoffToCompanionFlowStrategyAsync.makeContinueInAppHandoffResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1(v1);

  return v4(v3);
}

uint64_t dispatch thunk of ContinueInAppAutoPunchOutFlowStrategyAsync.makeContinueInAppAutoPunchOutResponse(intentResolutionRecord:)()
{
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1(v1);

  return v4(v3);
}

uint64_t sub_1DCCCEE6C(uint64_t a1)
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

_BYTE *sub_1DCCCF018(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DCCCF118(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DCCCF154(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCCCF190(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCCCF1CC(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCCCF208(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCCCF244()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  OUTLINED_FUNCTION_141_0();
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  type metadata accessor for RCHDelegateToContinueInAppDialogFlowStrategy(0, *(v2 + 80), *(v2 + 88), v4);
  *v3 = v0;
  v3[1] = sub_1DCB4AE1C;

  return ContinueInAppDialogFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:)();
}

uint64_t sub_1DCCCF36C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowOutputAtom(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCCCF3D0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DCCCF430(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

void *ContinueReadingConfirmationFlowStrategy.__allocating_init(outputProducer:confirmationResponseParser:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  OUTLINED_FUNCTION_1_1();
  v6 = swift_allocObject();
  sub_1DCAFF9E8(a3, v6 + 16);
  type metadata accessor for ContinueReadingConfirmationFlowStrategy();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = sub_1DCCCF5B0;
  result[5] = v6;
  return result;
}

uint64_t sub_1DCCCF548(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

void *ContinueReadingConfirmationFlowStrategy.__allocating_init(outputProducer:parseConfirmationResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18_3();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *ContinueReadingConfirmationFlowStrategy.init(outputProducer:parseConfirmationResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

void *sub_1DCCCF638@<X0>(char *a1@<X8>)
{
  result = (*(v1 + 32))(&v5);
  if (v5 == 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  *a1 = v4;
  return result;
}

void sub_1DCCCF684(uint64_t a1, void (*a2)(void **))
{
  (*(v2 + 32))(&v25, a1);
  v4 = v25;
  if (v25 == 2)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_51_1(v7))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_16_0(&dword_1DCAFC000, v8, v9, "Confirmation Flow could not parse confirmation response. This flow should not have handled the user input. (ConfirmationResponseParsing is returning inconsistent values?)");
      OUTLINED_FUNCTION_92_0();
    }

    sub_1DCCD15C0();
    v10 = swift_allocError();
  }

  else if (v25)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v11 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v11, qword_1EDE57E00);
    v12 = sub_1DD0DD8EC();
    v13 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_51_1(v13))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_16_0(&dword_1DCAFC000, v14, v15, "User has rejected to continue reading");
      OUTLINED_FUNCTION_92_0();
    }

    v10 = 1;
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_51_1(v18))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_16_0(&dword_1DCAFC000, v19, v20, "User has confirmed to continue reading");
      OUTLINED_FUNCTION_92_0();
    }

    v10 = 0;
  }

  v23 = v10;
  v24 = v4 == 2;
  sub_1DCB8D4CC(v10, v4 == 2);
  a2(&v23);
  sub_1DCB79378(v10, v4 == 2);
  v21 = v23;
  v22 = v24;

  sub_1DCB79378(v21, v22);
}

void sub_1DCCCF8EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  v8 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCCF9D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v6 = swift_task_alloc();
  v5[20] = v6;
  *v6 = v5;
  v6[1] = sub_1DCCCFA70;

  return sub_1DCCDBBA0();
}

uint64_t sub_1DCCCFA70()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCCCFB6C()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 104) = 0;
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  *(v0 + 112) = v2;
  *(v0 + 128) = v3;
  v4 = *(v0 + 144);
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 40) = v3;
  *(v0 + 56) = 0;
  v4(v0 + 16);
  sub_1DCCD16C4(v0 + 16);
  OUTLINED_FUNCTION_29();

  return v5();
}

uint64_t sub_1DCCCFBFC()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 176) = 1;
  *(v0 + 16) = *(v0 + 168);
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);
  *(v0 + 24) = *(v0 + 112);
  *(v0 + 40) = v2;
  *(v0 + 56) = 1;
  v1(v0 + 16);
  sub_1DCCD16C4(v0 + 16);
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCCCFC8C(void (*a1)(double))
{
  type metadata accessor for AceOutput(0);
  OUTLINED_FUNCTION_29_11();
  v21[3] = v3;
  v21[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v21);
  v5 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_11_9(v5);
  v6 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_11_9(v6);
  v7 = *(v1 + 32);
  v8 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_2();
  v10 = (*(v9 + 104))(boxed_opaque_existential_1Tm + v7, v8);
  OUTLINED_FUNCTION_21_9(v10, v11, v12, v13, v14, v15, v16, v17, v20);
  *(boxed_opaque_existential_1Tm + *(v1 + 40)) = 0;
  v18 = OUTLINED_FUNCTION_9_24(MEMORY[0x1E69E7CC0]);
  a1(v18);
  return sub_1DCCD16C4(v21);
}

uint64_t sub_1DCCCFD78(uint64_t a1, void (*a2)(double))
{
  type metadata accessor for AceOutput(0);
  OUTLINED_FUNCTION_29_11();
  v22[3] = v4;
  v22[4] = &protocol witness table for AceOutput;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v22);
  v6 = type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_11_9(v6);
  v7 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_11_9(v7);
  v8 = *(v2 + 32);
  v9 = *MEMORY[0x1E69D0678];
  sub_1DD0DD15C();
  OUTLINED_FUNCTION_2();
  v11 = (*(v10 + 104))(boxed_opaque_existential_1Tm + v8, v9);
  OUTLINED_FUNCTION_21_9(v11, v12, v13, v14, v15, v16, v17, v18, v21);
  *(boxed_opaque_existential_1Tm + *(v2 + 40)) = 0;
  v19 = OUTLINED_FUNCTION_9_24(MEMORY[0x1E69E7CC0]);
  a2(v19);
  return sub_1DCCD16C4(v22);
}

void sub_1DCCCFFC0(uint64_t a1)
{
  sub_1DCB17CA0(a1, v5);
  v1 = __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  MEMORY[0x1EEE9AC00](v1, v1);
  (*(v3 + 16))(&v5[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DD0DCF8C();
}

void *ContinueReadingConfirmationFlowStrategy.ContinueReadingActionGroupReturning.__allocating_init(yesGroup:noGroup:cancelGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void *ContinueReadingConfirmationFlowStrategy.ContinueReadingActionGroupReturning.init(yesGroup:noGroup:cancelGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

double sub_1DCCD0130@<D0>(unsigned __int8 *a1@<X0>, void *a3@<X8>)
{
  if (*(a1 + 4) > 0xFFu || (v4 = *a1, v4 == 2))
  {
    v5 = v3[6];
    if (v5)
    {
      v6 = v3[7];
LABEL_5:
      *a3 = v5;
      a3[1] = v6;
      swift_unknownObjectRetain();
      return result;
    }
  }

  else if (v4)
  {
    v5 = v3[4];
    if (v5)
    {
      v6 = v3[5];
      goto LABEL_5;
    }
  }

  else
  {
    v5 = v3[2];
    if (v5)
    {
      v6 = v3[3];
      goto LABEL_5;
    }
  }

  result = 0.0;
  *a3 = xmmword_1DD0E2F10;
  return result;
}

uint64_t ContinueReadingConfirmationFlowStrategy.ContinueReadingActionGroupReturning.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ContinueReadingConfirmationFlowStrategy.ContinueReadingActionGroupReturning.__deallocating_deinit()
{
  ContinueReadingConfirmationFlowStrategy.ContinueReadingActionGroupReturning.deinit();

  return swift_deallocClassInstance();
}

uint64_t ContinueReadingConfirmationFlowStrategy.deinit()
{

  return v0;
}

uint64_t ContinueReadingConfirmationFlowStrategy.__deallocating_deinit()
{
  ContinueReadingConfirmationFlowStrategy.deinit();
  OUTLINED_FUNCTION_18_3();

  return swift_deallocClassInstance();
}

void *sub_1DCCD02B8(uint64_t a1)
{
  v1[2] = sub_1DCCD026C;
  v1[3] = a1;
  v1[4] = &unk_1DD0EAF08;
  v1[5] = a1;
  v1[6] = &unk_1DD0EAF18;
  v1[7] = a1;
  v1[8] = &unk_1DD0EAF28;
  v1[9] = a1;
  v1[10] = &unk_1DD0EAF38;
  v1[11] = a1;
  v1[12] = &unk_1DD0EAF48;
  v1[13] = a1;
  v1[14] = &unk_1DD0EAF58;
  v1[15] = a1;
  v1[16] = &unk_1DD0EAF68;
  v1[17] = a1;
  swift_retain_n();
  return v1;
}

uint64_t sub_1DCCD0378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCCD039C, 0, 0);
}

uint64_t sub_1DCCD039C()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1DCCD045C;
  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_2_47();

  return MEMORY[0x1EEE6DE38](v3);
}

uint64_t sub_1DCCD045C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCCD057C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA41D0, &qword_1DD0EAF88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v13 - v8;
  (*(v6 + 16))(&v13 - v8, a1, v5);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  (*(v6 + 32))(v11 + v10, v9, v5);
  sub_1DCCCF684(a3, sub_1DCCD2378);
}

uint64_t sub_1DCCD06CC(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA41D0, &qword_1DD0EAF88);
    return sub_1DD0DE45C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA41D0, &qword_1DD0EAF88);
    return sub_1DD0DE46C();
  }
}

uint64_t sub_1DCCD0748(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCD0768, 0, 0);
}

uint64_t sub_1DCCD0768()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_19_16(v1);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_2_47();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCCD0830()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCCD0950(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCD0970, 0, 0);
}

uint64_t sub_1DCCD0970()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_19_16(v1);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_2_47();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCCD0A38()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCCD0B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = OUTLINED_FUNCTION_15_24(v12, v18);
  v14(v13);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v4, v7);
  (*(a2 + 16))(a4, v16);
}

uint64_t sub_1DCCD0C7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCD0C9C, 0, 0);
}

uint64_t sub_1DCCD0C9C()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_19_16(v1);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_2_47();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCCD0D64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCD0D84, 0, 0);
}

uint64_t sub_1DCCD0D84()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v1 = v0;
  v1[1] = sub_1DCCD0E4C;
  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v2);
}

uint64_t sub_1DCCD0E4C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCCD0F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = OUTLINED_FUNCTION_15_24(v13, v19);
  v15(v14);
  v16 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v16, v5, v8);
  a5(a4, v17);
}

uint64_t sub_1DCCD107C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCCD109C, 0, 0);
}

uint64_t sub_1DCCD109C()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  *v1 = v0;
  v1[1] = sub_1DCCD1164;
  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DE38](v2);
}

uint64_t sub_1DCCD1164()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCCD127C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCCD12A0, 0, 0);
}

uint64_t sub_1DCCD12A0()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_10_7(v1);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAC3A0, &unk_1DD0E1640);
  OUTLINED_FUNCTION_17();
  *v2 = v3;
  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_0_32();
  OUTLINED_FUNCTION_2_47();

  return MEMORY[0x1EEE6DE38](v4);
}

uint64_t sub_1DCCD1364()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_29();

    return v10();
  }
}

uint64_t sub_1DCCD1484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v11 - v5;
  (*(v3 + 16))(&v11 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v9 = (*(v3 + 32))(v8 + v7, v6, v2);
  sub_1DCCCFD78(v9, sub_1DCCD2180);
}

unint64_t sub_1DCCD15C0()
{
  result = qword_1ECCA41B0;
  if (!qword_1ECCA41B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA41B0);
  }

  return result;
}

uint64_t sub_1DCCD1614()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_11_0(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_13_17(v6);

  return sub_1DCCCF9D8(v8, v1, v2, v4, v3);
}

uint64_t sub_1DCCD16C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1F70, &qword_1DD0E2BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCCD172C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DCB4AD3C;

  return sub_1DCCD0748(a1, a3);
}

uint64_t sub_1DCCD17CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DCB4AE1C;

  return sub_1DCCD0950(a1, a3);
}

uint64_t sub_1DCCD186C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DCB4AE1C;

  return sub_1DCCD0C7C(a1, a3);
}

void *sub_1DCCD1920(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OutputPublisherAsyncAdapter();
  v20 = &protocol witness table for OutputPublisherAsyncAdapter;
  *&v18 = a2;
  sub_1DD0DB03C();
  sub_1DD0DAFFC();
  (*(v8 + 8))(v12, v6);
  a3[8] = sub_1DCB598EC(8);
  a3[9] = v13;
  a3[10] = v14;
  a3[11] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1E68, &qword_1DD0E2550);
  swift_storeEnumTagMultiPayload();
  a3[7] = a1;
  sub_1DCAFF9E8(&v18, (a3 + 2));
  return a3;
}

_BYTE *storeEnumTagSinglePayload for ContinueReadingConfirmationFlowStrategy.ConfirmationResponseParseError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCCD1D20()
{
  result = qword_1ECCA41C8;
  if (!qword_1ECCA41C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA41C8);
  }

  return result;
}

uint64_t sub_1DCCD1D74()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AE1C;
  v3 = OUTLINED_FUNCTION_4_32();

  return sub_1DCCD0378(v3, v4, v5);
}

uint64_t sub_1DCCD1E04()
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

uint64_t sub_1DCCD1EA0()
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

uint64_t sub_1DCCD1F3C()
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

uint64_t sub_1DCCD1FD8()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCCD0D64(v4, v0);
}

uint64_t sub_1DCCD2060()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_11_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_13_17(v2);

  return sub_1DCCD107C(v4, v0);
}

uint64_t sub_1DCCD20E8()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;
  v3 = OUTLINED_FUNCTION_4_32();

  return sub_1DCCD127C(v3, v4, v5);
}

uint64_t sub_1DCCD22EC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  v2 = OUTLINED_FUNCTION_79_1();

  return a2(v2);
}

uint64_t sub_1DCCD2378()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA41D0, &qword_1DD0EAF88);
  v0 = OUTLINED_FUNCTION_79_1();

  return sub_1DCCD190C(v0);
}

uint64_t ControllerFlow.execute(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v17[-v14];
  (*(a4 + 40))(a3, a4);
  v18 = a3;
  v19 = a4;
  v20 = v4;
  v21 = a1;
  v22 = a2;
  (*(a4 + 64))(v15, sub_1DCCD267C, v17, a3, a4);
  return (*(v11 + 8))(v15, AssociatedTypeWitness);
}

uint64_t sub_1DCCD2534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v15 = &v17 - v14;
  (*(a6 + 48))(a5, a6);
  (*(a6 + 72))(v15, a1, a3, a4, a5, a6);
  return (*(v12 + 8))(v15, AssociatedTypeWitness);
}

uint64_t ControllerFlow.exitValue.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v12 - v9;
  (*(a2 + 40))(a1, a2);
  (*(a2 + 80))(v10, a1, a2);
  return (*(v6 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_1DCCD2894()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA41E0, &qword_1DD0EB028);
  swift_allocObject();
  result = sub_1DD0DF28C();
  qword_1ECCA41D8 = result;
  return result;
}

void static ConversationEnvironment.$conversationContext.getter()
{
  if (qword_1ECCA1270 != -1)
  {
    OUTLINED_FUNCTION_0_33(&qword_1ECCA1270);
  }

  sub_1DD0DCF8C();
}

uint64_t static ConversationEnvironment.conversationContext.getter()
{
  if (qword_1ECCA1270 != -1)
  {
    OUTLINED_FUNCTION_0_33(&qword_1ECCA1270);
  }

  return sub_1DD0DF29C();
}

uint64_t destroy for ExecutionContext(void *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return __swift_destroy_boxed_opaque_existential_1Tm(a1 + 5);
}

uint64_t initializeWithCopy for ExecutionContext(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 64);
  *(a1 + 64) = v5;
  (**(v5 - 8))(a1 + 40, a2 + 40);
  return a1;
}

void *assignWithCopy for ExecutionContext(void *a1, void *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  __swift_assign_boxed_opaque_existential_1(a1 + 5, a2 + 5);
  return a1;
}

uint64_t assignWithTake for ExecutionContext(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 40));
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  return a1;
}

uint64_t getEnumTagSinglePayload for ExecutionContext(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for ExecutionContext(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for ConversationEnvironment(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCCD2C74(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  return OUTLINED_FUNCTION_33_1();
}

char *sub_1DCCD2CD4(unint64_t a1, void (*a2)(char *, BOOL, uint64_t))
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    v6 = OUTLINED_FUNCTION_86();
    return MEMORY[0x1E12A72C0](v6);
  }

  result = sub_1DD0DEB3C();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

void sub_1DCCD2D6C()
{
  v0 = type metadata accessor for FeatureChecker();
  v1 = swift_allocObject();
  *(v1 + 16) = AFDeviceSupportsSAEByDeviceCapabilityAndFeatureFlags();
  v17[3] = v0;
  v17[4] = &off_1F585C9F0;
  v17[0] = v1;
  type metadata accessor for ConversationSELFHelper(0);
  v2 = swift_allocObject();
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v17, v0);
  MEMORY[0x1EEE9AC00](v3, v3);
  OUTLINED_FUNCTION_16();
  v6 = (v5 - v4);
  (*(v7 + 16))(v5 - v4);
  v8 = *v6;
  v2[7] = v0;
  v2[8] = &off_1F585C9F0;
  v2[4] = v8;
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_31_11();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_31_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  v2[2] = sub_1DCB226E0;
  v2[3] = 0;
  sub_1DD0DCF8C();
}

void static ConversationSELFHelper.shared.getter()
{
  if (qword_1EDE4DFB8 != -1)
  {
    swift_once();
  }

  sub_1DD0DCF8C();
}

void sub_1DCCD2F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1DCCD3B44(a1, a2, a3, a4))
  {
    OUTLINED_FUNCTION_27_14();
    v4();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v5 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v5, qword_1EDE57DA0);
    v24 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v6, v7, v8, v9, v10, v11, v12, v13, v21, v24))
    {
      v14 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v14);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v15, v16, "[ConversationSELFHelper] buildFinalExecutionContextFailedMessage failed to be emitted", v17, v18, v19, v20, v22, v23);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

void sub_1DCCD3120(uint64_t a1, uint64_t a2, uint64_t a3, Class *a4, Class *a5, SEL *a6)
{
  sub_1DCB0D344();
  if (v11 && (v12 = v11, oslog = sub_1DCCD666C(v11, a3, a4, a5, a6), v12, oslog))
  {
    (*(v6 + 16))();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v13 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v13, qword_1EDE57DA0);
    oslog = sub_1DD0DD8EC();
    v14 = sub_1DD0DE6EC();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v15);
      OUTLINED_FUNCTION_44_8(&dword_1DCAFC000, v16, v17, v18, v19, v20, v21, v22, v23, oslog);
      OUTLINED_FUNCTION_62();
    }
  }
}

void sub_1DCCD3230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1DCCD3914(a1, a2, a3);
  if (v5)
  {
    oslog = v5;
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v6 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v6, qword_1EDE57DA0);
    v7 = sub_1DD0DD8EC();
    v8 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_75(v8))
    {
      v9 = OUTLINED_FUNCTION_151();
      v10 = OUTLINED_FUNCTION_83();
      v18 = v10;
      *v9 = 136315138;
      v11 = sub_1DD0DE86C();
      v13 = sub_1DCB10E9C(v11, v12, &v18);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DCAFC000, v7, v8, "[ConversationSELFHelper] Emitting execution override decision %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v4 + 2))(oslog);
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v14 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v14, qword_1EDE57DA0);
    oslog = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6EC();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v16);
      _os_log_impl(&dword_1DCAFC000, oslog, v15, "[ConversationSELFHelper] buildExecutionOverrideMessage failed to be emitted", v3, 2u);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

void sub_1DCCD33FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1DCCD3F74(a1, a2, a3))
  {
    OUTLINED_FUNCTION_27_14();
    v3();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v4 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v4, qword_1EDE57DA0);
    v23 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v5, v6, v7, v8, v9, v10, v11, v12, v20, v23))
    {
      v13 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v13);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v14, v15, "[ConversationSELFHelper] actionCandidatesCollated failed to be emitted", v16, v17, v18, v19, v21, v22);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

void sub_1DCCD34B4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *a2;
  sub_1DCB0D344();
  if (v5 && (v6 = v5, v25 = sub_1DCCD4824(v5, a1, v4), v6, v25))
  {
    (*(v2 + 16))();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v7 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v7, qword_1EDE57DA0);
    v26 = sub_1DD0DD8EC();
    v8 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v8, v9, v10, v11, v12, v13, v14, v15, v23, v26))
    {
      v16 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v16);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v17, v18, "[ConversationSELFHelper] DisambiguationDialogGenerated failed to be emitted", v19, v20, v21, v22, v24, v25);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

void sub_1DCCD35A4()
{
  OUTLINED_FUNCTION_70();
  sub_1DCB0D344();
  if (v2 && (v3 = v2, v22 = sub_1DCCD4B98(v2, v0), v3, v22))
  {
    (*(v1 + 16))();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v4 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v4, qword_1EDE57DA0);
    v23 = sub_1DD0DD8EC();
    v5 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v5, v6, v7, v8, v9, v10, v11, v12, v20, v23))
    {
      v13 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v13);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v14, v15, "[ConversationSELFHelper] DisambiguationFollowupHandled failed to be emitted", v16, v17, v18, v19, v21, v22);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

void sub_1DCCD3688(uint64_t a1)
{
  sub_1DCB0D344();
  if (v3 && (v4 = v3, v23 = sub_1DCCD4D30(v3, a1), v4, v23))
  {
    (*(v1 + 16))();
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
    }

    v5 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v5, qword_1EDE57DA0);
    v24 = sub_1DD0DD8EC();
    v6 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_6_29(v6, v7, v8, v9, v10, v11, v12, v13, v21, v24))
    {
      v14 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_11_27(v14);
      OUTLINED_FUNCTION_4_33(&dword_1DCAFC000, v15, v16, "[ConversationSELFHelper] DisambiguationFailed failed to be emitted", v17, v18, v19, v20, v22, v23);
      OUTLINED_FUNCTION_5_34();
    }
  }
}

uint64_t sub_1DCCD3770()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCCD37F8()
{
  OUTLINED_FUNCTION_39();
  v1 = (*(v0 + 16))(0);
  if (v1)
  {
    v2 = v1;
    (*(*(v0 + 32) + 16))();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCCD3888()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 40);

  v2 = OUTLINED_FUNCTION_138();
  sub_1DCB40710(v2, v3, v1);

  OUTLINED_FUNCTION_29();

  return v4();
}

void sub_1DCCD3914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
  }

  v4 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v4, qword_1EDE57DA0);
  v5 = sub_1DD0DD8EC();
  v6 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v6))
  {
    v7 = OUTLINED_FUNCTION_50_0();
    *v7 = 0;
    _os_log_impl(&dword_1DCAFC000, v5, v6, "[ConversationSELFHelper] building execution overrride SELF objects", v7, 2u);
    OUTLINED_FUNCTION_80();
  }

  sub_1DCB0D344();
  if (v8)
  {
    v9 = v8;
    sub_1DCCD3A0C(v8, a3);
  }
}

void *sub_1DCCD3A0C(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69CE9C0]) init];
  if (v4)
  {
    v5 = v4;
    [v4 setExecutionOverrideDecision_];
    [a1 setExecutionOverridesEvaluated_];

    v6 = a1;
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
      swift_once();
    }

    v7 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v7, qword_1EDE57DA0);
    v8 = sub_1DD0DD8EC();
    v9 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DCAFC000, v8, v9, "[ConversationSELFHelper] Failed to create execution overrride SELF objects", v10, 2u);
      MEMORY[0x1E12A8390](v10, -1, -1);
    }

    return 0;
  }

  return a1;
}

void *sub_1DCCD3B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_35_14();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_20_0(v5);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v16 - v8;
  v10 = OUTLINED_FUNCTION_19();
  sub_1DCB099BC(v10, v11, &qword_1ECCA2618, &unk_1DD0E5C50);
  OUTLINED_FUNCTION_138();
  sub_1DCB0D344();
  if (v12)
  {
    v13 = v12;
    v14 = sub_1DCCD3C28(v12, a4, v9);
  }

  else
  {
    v14 = 0;
  }

  sub_1DCB0E9D8(v9, &qword_1ECCA2618, &unk_1DD0E5C50);
  return v14;
}

void *sub_1DCCD3C28(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2618, &unk_1DD0E5C50);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v30 - v17;
  v19 = [objc_allocWithZone(MEMORY[0x1E69CEA50]) init];
  if (v19)
  {
    v20 = v19;
    v21 = [objc_allocWithZone(MEMORY[0x1E69CEA60]) init];
    if (v21)
    {
      v22 = v21;
      [v21 setReason_];
      [v20 setFailed_];
      sub_1DCB099BC(a3, v18, &qword_1ECCA2618, &unk_1DD0E5C50);
      if (__swift_getEnumTagSinglePayload(v18, 1, v6) == 1)
      {
        v23 = 0;
      }

      else
      {
        (*(v7 + 32))(v14, v18, v6);
        sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
        (*(v7 + 16))(v11, v14, v6);
        v23 = sub_1DCB0DEDC(v11);
        (*(v7 + 8))(v14, v6);
      }

      [v20 setHypothesisId_];

      [a1 setIntentFinalExecutionContext_];
      v28 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v24 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v24, qword_1EDE57DA0);
  v25 = sub_1DD0DD8EC();
  v26 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1DCAFC000, v25, v26, "[ConversationSELFHelper] Failed to create context SELF objects", v27, 2u);
    MEMORY[0x1E12A8390](v27, -1, -1);
  }

  return 0;
}

id sub_1DCCD3F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_46_8();

  OUTLINED_FUNCTION_19();
  sub_1DCB0D344();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1DCCD3FE4(v4, a3);

    return v6;
  }

  else
  {

    return 0;
  }
}

id sub_1DCCD3FE4(void *a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v13 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v78 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4210, &qword_1DD0EB1E8);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v78 - v23;
  v25 = [objc_allocWithZone(MEMORY[0x1E69CE958]) init];
  if (v25)
  {
    v82 = v9;
    v80 = v25;
    v79 = a1;
    v26 = MEMORY[0x1E69E7CC0];
    v100 = MEMORY[0x1E69E7CC0];
    v27 = *(a2 + 64);
    v84 = a2 + 64;
    v28 = 1 << *(a2 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & v27;
    v81 = (v28 + 63) >> 6;
    v31 = (v5 + 16);
    v91 = (v5 + 32);
    v87 = v5;
    v32 = (v5 + 8);

    v33 = 0;
    v89 = v24;
    v90 = v21;
    v94 = v31;
    v95 = v16;
    v83 = a2;
    v88 = v13;
    v98 = v32;
    while (1)
    {
      v97 = v26;
      if (!v30)
      {
        while (1)
        {
          v34 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            break;
          }

          if (v34 >= v81)
          {
            v42 = v4;
            v37 = a2;
            v93 = v33;
            v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4218, &unk_1DD0EB1F0);
            __swift_storeEnumTagSinglePayload(v21, 1, 1, v62);
            v92 = 0;
            goto LABEL_12;
          }

          v30 = *(v84 + 8 * v34);
          ++v33;
          if (v30)
          {
            v93 = v34;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      v93 = v33;
      v34 = v33;
LABEL_11:
      v92 = (v30 - 1) & v30;
      v35 = __clz(__rbit64(v30)) | (v34 << 6);
      v36 = v87;
      (*(v87 + 16))(v16, *(a2 + 48) + *(v87 + 72) * v35, v4);
      v37 = a2;
      v38 = *(*(a2 + 56) + 8 * v35);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4218, &unk_1DD0EB1F0);
      v40 = *(v39 + 48);
      v41 = *(v36 + 32);
      v21 = v90;
      v42 = v4;
      v41(v90, v16, v4);
      *&v21[v40] = v38;
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v39);

      v24 = v89;
LABEL_12:
      sub_1DCCD75FC(v21, v24);
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4218, &unk_1DD0EB1F0);
      if (__swift_getEnumTagSinglePayload(v24, 1, v43) == 1)
      {
        break;
      }

      v44 = *&v24[*(v43 + 48)];
      v45 = v88;
      v4 = v42;
      (*v91)(v88, v24, v42);
      v46 = [objc_allocWithZone(MEMORY[0x1E69CEAA0]) init];
      if (!v46)
      {
        v71 = v45;

        if (qword_1EDE4D8C8 != -1)
        {
          swift_once();
        }

        v72 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v72, qword_1EDE57DA0);
        v73 = sub_1DD0DD8EC();
        v74 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          *v75 = 0;
          _os_log_impl(&dword_1DCAFC000, v73, v74, "[ConversationSELFHelper]  Failed to create CNVSchemaCollatedActionCandidate SELF object", v75, 2u);
          MEMORY[0x1E12A8390](v75, -1, -1);
          v76 = v80;
        }

        else
        {
          v76 = v73;
          v73 = v80;
        }

        (*v32)(v71, v42);
        return 0;
      }

      v47 = v46;
      v48 = sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
      v49 = v95;
      v50 = *v94;
      (*v94)(v95, v45, v4);
      v51 = v48;
      v52 = sub_1DCB0DEDC(v49);
      [v47 setPrimaryActionCandidateId_];

      v53 = *(v44 + 16);
      if (v53)
      {
        v85 = v47;
        v99 = MEMORY[0x1E69E7CC0];
        sub_1DD0DED0C();
        v54 = *(v87 + 80);
        v86 = v44;
        v55 = (v44 + ((v54 + 32) & ~v54));
        v56 = *(v87 + 72);
        v96 = v51;
        v97 = v56;
        v57 = v82;
        v58 = v95;
        do
        {
          v50(v58, v55, v4);
          v50(v57, v58, v4);
          sub_1DCB0DEDC(v57);
          (*v98)(v58, v4);
          sub_1DD0DECDC();
          sub_1DD0DED1C();
          sub_1DD0DED2C();
          sub_1DD0DECEC();
          v55 += v97;
          --v53;
        }

        while (v53);

        v32 = v98;
        v59 = v99;
        a2 = v83;
        v60 = v88;
        v21 = v90;
        v47 = v85;
      }

      else
      {

        v59 = MEMORY[0x1E69E7CC0];
        v21 = v90;
        a2 = v37;
        v60 = v45;
      }

      sub_1DCCD7514(v59, v47, &qword_1EDE4D700, 0x1E69CF638, &selRef_setAlternativeActionCandidateIds_);
      v61 = v47;
      MEMORY[0x1E12A6920]();
      v16 = v95;
      v30 = v92;
      if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD0DE33C();
      }

      sub_1DD0DE3AC();

      (*v32)(v60, v4);
      v26 = v100;
      v24 = v89;
      v33 = v93;
    }

    v67 = v97;
    if (sub_1DCB08B14(v97))
    {
      v68 = v80;
      sub_1DCCD7514(v67, v80, &unk_1EDE460F8, 0x1E69CEAA0, &selRef_setCollatedActionCandidates_);
      v69 = v79;
      [v79 setActionCandidatesCollated_];

      v70 = v69;
      return v69;
    }
  }

  else
  {
    if (qword_1EDE4D8C8 != -1)
    {
LABEL_39:
      swift_once();
    }

    v63 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v63, qword_1EDE57DA0);
    v64 = sub_1DD0DD8EC();
    v65 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_1DCAFC000, v64, v65, "[ConversationSELFHelper] Failed to create CNVSchemaCNVActionCandidatesCollated SELF object", v66, 2u);
      MEMORY[0x1E12A8390](v66, -1, -1);
    }
  }

  return 0;
}

void *sub_1DCCD4824(void *a1, uint64_t a2, int a3)
{
  v6 = sub_1DD0DB04C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v30 - v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E69CE990]) init];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v17 = [objc_allocWithZone(MEMORY[0x1E69CE988]) init];
  if (!v17)
  {

    return 0;
  }

  v18 = v17;
  v19 = *(a2 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v30 = v18;
    v31 = v16;
    v32 = a3;
    v33 = a1;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1DD0DED0C();
    v21 = sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v35 = v23;
    v36 = v21;
    v24 = (a2 + ((*(v22 + 64) + 32) & ~*(v22 + 64)));
    v34 = *(v22 + 56);
    do
    {
      v25 = v35;
      v35(v14, v24, v6);
      v25(v11, v14, v6);
      sub_1DCB0DEDC(v11);
      (*(v22 - 8))(v14, v6);
      sub_1DD0DECDC();
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      sub_1DD0DECEC();
      v24 += v34;
      --v19;
    }

    while (v19);
    v20 = v37;
    a1 = v33;
    LOBYTE(a3) = v32;
    v18 = v30;
    v16 = v31;
  }

  sub_1DCCD7514(v20, v16, &qword_1EDE4D700, 0x1E69CF638, &selRef_setActionCandidateIds_);
  [v18 setStartedOrChanged_];
  if (a3)
  {
    if (a3 == 1)
    {
      v26 = 0xD000000000000012;
    }

    else
    {
      v26 = 0x69746E4562726576;
    }

    if (a3 == 1)
    {
      v27 = 0x80000001DD110F80;
    }

    else
    {
      v27 = 0xEA00000000007974;
    }
  }

  else
  {
    v27 = 0xE700000000000000;
    v26 = 0x656D614E707061;
  }

  sub_1DCCD7598(v26, v27, v16);
  [a1 setDisambiguationContext_];

  v28 = a1;
  return a1;
}

unint64_t CAMDisambiguationDialogType.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x69746E4562726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D614E707061;
  }
}

void *sub_1DCCD4B98(void *a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E69CE9A0]) init];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = [objc_allocWithZone(MEMORY[0x1E69CE988]) init];
  if (!v11)
  {

    return 0;
  }

  v12 = v11;
  sub_1DCB10E5C(0, &qword_1EDE4D700, 0x1E69CF638);
  (*(v5 + 16))(v8, a2, v4);
  v13 = sub_1DCB0DEDC(v8);
  [v10 setActionCandidateId_];

  [v12 setEnded_];
  [a1 setDisambiguationContext_];

  v14 = a1;
  return a1;
}

void *sub_1DCCD4D30(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69CE998]) init];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E69CE988]) init];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  [v5 setErrorCode_];
  [v7 setFailed_];
  [a1 setDisambiguationContext_];

  v8 = a1;
  return a1;
}

uint64_t sub_1DCCD4DF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4200, &qword_1DD0EB1D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0EB030;
  v1 = sub_1DCB50C00();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);

  *(inited + 32) = v3;
  *(inited + 40) = v2;
  *(inited + 48) = 1;
  v4 = sub_1DCB50C00();
  v6 = *(v4 + 16);
  v5 = *(v4 + 24);

  *(inited + 56) = v6;
  *(inited + 64) = v5;
  *(inited + 72) = 2;
  v7 = sub_1DCB50C00();
  v9 = *(v7 + 16);
  v8 = *(v7 + 24);

  *(inited + 80) = v9;
  *(inited + 88) = v8;
  *(inited + 96) = 3;
  v10 = sub_1DCB50C00();
  v12 = *(v10 + 16);
  v11 = *(v10 + 24);

  *(inited + 104) = v12;
  *(inited + 112) = v11;
  *(inited + 120) = 30;
  v13 = sub_1DCB50C00();
  v15 = *(v13 + 16);
  v14 = *(v13 + 24);

  *(inited + 128) = v15;
  *(inited + 136) = v14;
  *(inited + 144) = 4;
  v16 = sub_1DCB50C00();
  v18 = *(v16 + 16);
  v17 = *(v16 + 24);

  *(inited + 152) = v18;
  *(inited + 160) = v17;
  *(inited + 168) = 28;
  v19 = sub_1DCB50C00();
  v21 = *(v19 + 16);
  v20 = *(v19 + 24);

  *(inited + 176) = v21;
  *(inited + 184) = v20;
  *(inited + 192) = 29;
  v22 = sub_1DCB50C00();
  v24 = *(v22 + 16);
  v23 = *(v22 + 24);

  *(inited + 200) = v24;
  *(inited + 208) = v23;
  *(inited + 216) = 6;
  v25 = sub_1DCB50C00();
  v27 = *(v25 + 16);
  v26 = *(v25 + 24);

  *(inited + 224) = v27;
  *(inited + 232) = v26;
  *(inited + 240) = 7;
  v28 = sub_1DCB50C00();
  v30 = *(v28 + 16);
  v29 = *(v28 + 24);

  *(inited + 248) = v30;
  *(inited + 256) = v29;
  *(inited + 264) = 8;
  v31 = sub_1DCB50C00();
  v33 = *(v31 + 16);
  v32 = *(v31 + 24);

  *(inited + 272) = v33;
  *(inited + 280) = v32;
  *(inited + 288) = 9;
  v34 = sub_1DCB50C00();
  v36 = *(v34 + 16);
  v35 = *(v34 + 24);

  *(inited + 296) = v36;
  *(inited + 304) = v35;
  *(inited + 312) = 36;
  v37 = sub_1DCB50C00();
  v39 = *(v37 + 16);
  v38 = *(v37 + 24);

  *(inited + 320) = v39;
  *(inited + 328) = v38;
  *(inited + 336) = 10;
  v40 = sub_1DCB50C00();
  v42 = *(v40 + 16);
  v41 = *(v40 + 24);

  *(inited + 344) = v42;
  *(inited + 352) = v41;
  *(inited + 360) = 11;
  v43 = sub_1DCB50C00();
  v45 = *(v43 + 16);
  v44 = *(v43 + 24);

  *(inited + 368) = v45;
  *(inited + 376) = v44;
  *(inited + 384) = 12;
  v46 = sub_1DCB50C00();
  v48 = *(v46 + 16);
  v47 = *(v46 + 24);

  *(inited + 392) = v48;
  *(inited + 400) = v47;
  *(inited + 408) = 13;
  v49 = sub_1DCB50C00();
  v51 = *(v49 + 16);
  v50 = *(v49 + 24);

  *(inited + 416) = v51;
  *(inited + 424) = v50;
  *(inited + 432) = 14;
  v52 = sub_1DCB50C00();
  v54 = *(v52 + 16);
  v53 = *(v52 + 24);

  *(inited + 440) = v54;
  *(inited + 448) = v53;
  *(inited + 456) = 15;
  v55 = sub_1DCB50C00();
  v57 = *(v55 + 16);
  v56 = *(v55 + 24);

  *(inited + 464) = v57;
  *(inited + 472) = v56;
  *(inited + 480) = 26;
  v58 = sub_1DCB50C00();
  v60 = *(v58 + 16);
  v59 = *(v58 + 24);

  *(inited + 488) = v60;
  *(inited + 496) = v59;
  *(inited + 504) = 33;
  v61 = sub_1DCB50C00();
  v63 = *(v61 + 16);
  v62 = *(v61 + 24);

  *(inited + 512) = v63;
  *(inited + 520) = v62;
  *(inited + 528) = 16;
  v64 = sub_1DCB50C00();
  v66 = *(v64 + 16);
  v65 = *(v64 + 24);

  *(inited + 536) = v66;
  *(inited + 544) = v65;
  *(inited + 552) = 17;
  v67 = sub_1DCB50C00();
  v69 = *(v67 + 16);
  v68 = *(v67 + 24);

  *(inited + 560) = v69;
  *(inited + 568) = v68;
  *(inited + 576) = 18;
  v70 = sub_1DCB50C00();
  v72 = *(v70 + 16);
  v71 = *(v70 + 24);

  *(inited + 584) = v72;
  *(inited + 592) = v71;
  *(inited + 600) = 34;
  v73 = sub_1DCB50C00();
  v75 = *(v73 + 16);
  v74 = *(v73 + 24);

  *(inited + 608) = v75;
  *(inited + 616) = v74;
  *(inited + 624) = 19;
  v76 = sub_1DCB50C00();
  v78 = *(v76 + 16);
  v77 = *(v76 + 24);

  *(inited + 632) = v78;
  *(inited + 640) = v77;
  *(inited + 648) = 39;
  v79 = sub_1DCB50C00();
  v81 = *(v79 + 16);
  v80 = *(v79 + 24);

  *(inited + 656) = v81;
  *(inited + 664) = v80;
  *(inited + 672) = 38;
  v82 = sub_1DCB50C00();
  v84 = *(v82 + 16);
  v83 = *(v82 + 24);

  *(inited + 680) = v84;
  *(inited + 688) = v83;
  *(inited + 696) = 20;
  v85 = sub_1DCB50C00();
  v87 = *(v85 + 16);
  v86 = *(v85 + 24);

  *(inited + 704) = v87;
  *(inited + 712) = v86;
  *(inited + 720) = 23;
  v88 = sub_1DCB50C00();
  v90 = *(v88 + 16);
  v89 = *(v88 + 24);

  *(inited + 728) = v90;
  *(inited + 736) = v89;
  *(inited + 744) = 40;
  v91 = sub_1DCB50C00();
  v93 = *(v91 + 16);
  v92 = *(v91 + 24);

  *(inited + 752) = v93;
  *(inited + 760) = v92;
  *(inited + 768) = 25;
  v94 = sub_1DCB50C00();
  v96 = *(v94 + 16);
  v95 = *(v94 + 24);

  *(inited + 776) = v96;
  *(inited + 784) = v95;
  *(inited + 792) = 32;
  v97 = sub_1DCB50C00();
  v99 = *(v97 + 16);
  v98 = *(v97 + 24);

  *(inited + 800) = v99;
  *(inited + 808) = v98;
  *(inited + 816) = 31;
  v100 = sub_1DCB50C00();
  v102 = *(v100 + 16);
  v101 = *(v100 + 24);

  *(inited + 824) = v102;
  *(inited + 832) = v101;
  *(inited + 840) = 21;
  v103 = sub_1DCB50C00();
  v105 = *(v103 + 16);
  v104 = *(v103 + 24);

  *(inited + 848) = v105;
  *(inited + 856) = v104;
  *(inited + 864) = 35;
  v106 = sub_1DCB50C00();
  v108 = *(v106 + 16);
  v107 = *(v106 + 24);

  *(inited + 872) = v108;
  *(inited + 880) = v107;
  *(inited + 888) = 22;
  v109 = sub_1DCB50C00();
  v111 = *(v109 + 16);
  v110 = *(v109 + 24);

  *(inited + 896) = v111;
  *(inited + 904) = v110;
  *(inited + 912) = 24;
  v112 = sub_1DCB50C00();
  v114 = *(v112 + 16);
  v113 = *(v112 + 24);

  *(inited + 920) = v114;
  *(inited + 928) = v113;
  *(inited + 936) = 37;
  type metadata accessor for CNVSchemaCNVPlugin(0);
  result = sub_1DD0DDE9C();
  qword_1EDE57D28 = result;
  return result;
}

void sub_1DCCD5620(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_1DCB0D344();
  if (v4)
  {
    v5 = v4;
    a3();
  }
}

void sub_1DCCD5670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4228, &unk_1DD0F6E40);
  OUTLINED_FUNCTION_20_0(v28);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &a9 - v31;
  sub_1DCB099BC(v27, &a9 - v31, &qword_1ECCA4228, &unk_1DD0F6E40);

  sub_1DCB0D344();
  if (v33)
  {
    v34 = v33;
    sub_1DCCD57A0(v33, v32, v25, v23);
  }

  sub_1DCB0E9D8(v32, &qword_1ECCA4228, &unk_1DD0F6E40);

  OUTLINED_FUNCTION_49();
}

void *sub_1DCCD57A0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x1E69CEA70]) init];
  if (v5)
  {
    v6 = v5;
    if ([objc_allocWithZone(MEMORY[0x1E69CEA88]) init])
    {
      sub_1DCCD5958(a2);
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v7 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v7, qword_1EDE57DA0);
  v8 = sub_1DD0DD8EC();
  v9 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DCAFC000, v8, v9, "[ConversationSELFHelper] Failed to create context SELF objects", v10, 2u);
    MEMORY[0x1E12A8390](v10, -1, -1);
  }

  return 0;
}

void sub_1DCCD5958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4228, &unk_1DD0F6E40);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  sub_1DCB099BC(a1, &v5 - v4, &qword_1ECCA4228, &unk_1DD0F6E40);
  sub_1DD0DCF7C();
}

void *sub_1DCCD5CAC()
{
  OUTLINED_FUNCTION_35_14();
  OUTLINED_FUNCTION_66();
  v0 = type metadata accessor for Parse(0);
  v1 = OUTLINED_FUNCTION_20_0(v0);
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_16();
  v3 = OUTLINED_FUNCTION_45_7();
  sub_1DCB29E58(v3, v4);
  OUTLINED_FUNCTION_138();
  sub_1DCB0D344();
  if (v5)
  {
    v6 = v5;
    OUTLINED_FUNCTION_169();
    v9 = sub_1DCCD5D84(v7, v8);
  }

  else
  {
    v9 = 0;
  }

  sub_1DCB28484();
  return v9;
}

void *sub_1DCCD5D84(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69CEA70]) init];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x1E69CEA78]) init];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1DCCD5F14(a2);
      [v7 setReformedIntent_];

      [v5 setEnded_];
      [a1 setIntentReformationContext_];

      v9 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1EDE57DA0);
  v11 = sub_1DD0DD8EC();
  v12 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DCAFC000, v11, v12, "[ConversationSELFHelper] Failed to create context SELF objects", v13, 2u);
    MEMORY[0x1E12A8390](v13, -1, -1);
  }

  return 0;
}

id sub_1DCCD5F14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v6 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v50 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v50 - v12;
  v14 = sub_1DD0DB5BC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for USOParse(0);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Parse(0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DCB29E58(a1, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 6)
  {
    sub_1DCC6D300(v26, v22);
    v28 = sub_1DD0DB46C();
    sub_1DCC621EC(v28);

    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      (*(v15 + 32))(v18, v13, v14);
      v29 = *(sub_1DD0DB46C() + 16);

      if (v29 >= 2)
      {
        if (qword_1EDE4D8C8 != -1)
        {
          swift_once();
        }

        v30 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v30, qword_1EDE57DA0);
        v31 = sub_1DD0DD8EC();
        v32 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_1DCAFC000, v31, v32, "Multiple UserDialogActs received but only taking the first", v33, 2u);
          MEMORY[0x1E12A8390](v33, -1, -1);
        }
      }

      sub_1DCCD6A98(v18);
    }

LABEL_19:
    sub_1DCB0E9D8(v13, &qword_1ECCA29B8, &qword_1DD0E96C0);
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v40 = sub_1DD0DD8FC();
    v41 = __swift_project_value_buffer(v40, qword_1EDE57E00);
    v42 = *(v40 - 8);
    (*(v42 + 16))(v9, v41, v40);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v40);
    sub_1DCB099BC(v9, v6, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v40) == 1)
    {
      sub_1DCB0E9D8(v6, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v43 = sub_1DD0DD8EC();
      v44 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v51 = v46;
        *v45 = 136315650;
        v47 = sub_1DD0DEC3C();
        v49 = sub_1DCB10E9C(v47, v48, &v51);

        *(v45 + 4) = v49;
        *(v45 + 12) = 2048;
        *(v45 + 14) = 1000;
        *(v45 + 22) = 2080;
        *(v45 + 24) = sub_1DCB10E9C(0xD00000000000004DLL, 0x80000001DD117620, &v51);
        _os_log_impl(&dword_1DCAFC000, v43, v44, "FatalError at %s:%lu - %s", v45, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E12A8390](v46, -1, -1);
        MEMORY[0x1E12A8390](v45, -1, -1);
      }

      (*(v42 + 8))(v6, v40);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004DLL, 0x80000001DD117620);
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1DCCD6848(*v26);
  }

  if (qword_1EDE4D8C8 != -1)
  {
    swift_once();
  }

  v34 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v34, qword_1EDE57DA0);
  v6 = sub_1DD0DD8EC();
  v35 = sub_1DD0DE6CC();
  if (os_log_type_enabled(v6, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1DCAFC000, v6, v35, "[ConversationSELFHelper] Parse is not .uso or .NLv4IntentOnly; using empty graph for SELF log", v36, 2u);
    MEMORY[0x1E12A8390](v36, -1, -1);
  }

  v37 = [objc_allocWithZone(MEMORY[0x1E69CF838]) init];
  if (!v37)
  {
    __break(1u);
    goto LABEL_19;
  }

  v38 = v37;
  sub_1DCB28484();
  return v38;
}

void *sub_1DCCD666C(void *a1, uint64_t a2, Class *a3, Class *a4, SEL *a5)
{
  v9 = [objc_allocWithZone(*a3) init];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(*a4) init];
    if (v11)
    {
      v12 = v11;
      [v11 setReason_];
      [v10 setFailed_];
      [a1 *a5];

      v13 = a1;
      return a1;
    }
  }

  if (qword_1EDE4D8C8 != -1)
  {
    OUTLINED_FUNCTION_0_34(&qword_1EDE4D8C8);
  }

  v14 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v14, qword_1EDE57DA0);
  v15 = sub_1DD0DD8EC();
  v16 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_22(v16))
  {
    v17 = OUTLINED_FUNCTION_50_0();
    OUTLINED_FUNCTION_46(v17);
    OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v18, v19, "[ConversationSELFHelper] Failed to create context SELF objects");
    OUTLINED_FUNCTION_62();
  }

  return 0;
}

uint64_t sub_1DCCD67C0()
{
  type metadata accessor for CNVSchemaCNVPlugin(0);
  result = sub_1DD0DDE9C();
  qword_1EDE4DFD0 = result;
  return result;
}

uint64_t sub_1DCCD6804()
{
  type metadata accessor for CNVSchemaCNVTransformer(0);
  result = sub_1DD0DDE9C();
  qword_1ECCA41E8 = result;
  return result;
}

uint64_t ConversationSELFHelper.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  OUTLINED_FUNCTION_169();
  sub_1DCB0E9D8(v1, v2, v3);
  OUTLINED_FUNCTION_169();
  sub_1DCB0E9D8(v4, v5, v6);
  return v0;
}

uint64_t ConversationSELFHelper.__deallocating_deinit()
{
  ConversationSELFHelper.deinit();

  return swift_deallocClassInstance();
}

SiriKitFlow::FlowPluginLoadResult __swiftcall FlowPluginLoadResult.init(success:wasInCache:)(Swift::Bool success, Swift::Bool wasInCache)
{
  *v2 = success;
  v2[1] = wasInCache;
  result.success = success;
  return result;
}

SiriKitFlow::CAMDisambiguationDialogType_optional __swiftcall CAMDisambiguationDialogType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD0DEE9C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1DCCD6E74@<X0>(unint64_t *a1@<X8>)
{
  result = CAMDisambiguationDialogType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DCCD6E9C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 2:

    case 1:

    case 0:
  }

  return v5;
}

unint64_t sub_1DCCD6F1C()
{
  result = qword_1ECCA41F8;
  if (!qword_1ECCA41F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA41F8);
  }

  return result;
}

uint64_t type metadata accessor for ConversationSELFHelper(uint64_t a1)
{
  result = qword_1EDE4DFA8;
  if (!qword_1EDE4DFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DCCD6FC4(uint64_t a1)
{
  sub_1DCC42330(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for FlowPluginLoadResult(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for FlowPluginLoadResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

_BYTE *storeEnumTagSinglePayload for CAMDisambiguationDialogType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1DCCD7514(uint64_t a1, void *a2, unint64_t *a3, void *a4, SEL *a5)
{
  sub_1DCB10E5C(0, a3, a4);
  v7 = sub_1DD0DE2DC();

  [a2 *a5];
}

void sub_1DCCD7598(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setDialogType_];
}

uint64_t sub_1DCCD75FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4210, &qword_1DD0EB1E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCCD767C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4230, &unk_1DD0EB268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E4050;
  *(inited + 32) = 0x6D614E726F727265;
  *(inited + 40) = 0xE900000000000065;
  v11 = sub_1DD0DDF8C();

  *(inited + 48) = v11;
  *(inited + 56) = 0x656D614E656C6966;
  *(inited + 64) = 0xE800000000000000;
  sub_1DD0DEC3C();
  v12 = sub_1DD0DDF8C();

  *(inited + 72) = v12;
  *(inited + 80) = 0x6E6F6974636E7566;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = sub_1DD0DDF8C();
  *(inited + 104) = 1701734764;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = sub_1DD0DE9FC();
  *(inited + 128) = 0x6E6F73616572;
  *(inited + 136) = 0xE600000000000000;
  sub_1DCCD79B0();
  v13 = sub_1DD0DDF8C();

  *(inited + 144) = v13;
  *(inited + 152) = 0xD000000000000013;
  *(inited + 160) = 0x80000001DD117D10;
  v14 = sub_1DD0DDF8C();

  *(inited + 168) = v14;
  sub_1DCB525A0();
  return sub_1DD0DDE9C();
}

double sub_1DCCD7934(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  switch(a4)
  {
    case 2:

      goto LABEL_9;
    case 1:

LABEL_9:

      return result;
    case 0:

      sub_1DD0DCF8C();
  }

  return result;
}

uint64_t sub_1DCCD79B0()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      v2 = 0;
    }

    else
    {

      v2 = v1;
    }
  }

  else
  {
    v3 = sub_1DCB28B74();
    if ((v3 & 0x100000000) != 0)
    {
      v2 = SiriKitEventPayload.description.getter();
    }

    else
    {
      if (v3 > 0xD0)
      {
        v4 = @"FLOWSTATETYPE_UNKNOWN";
        v5 = @"FLOWSTATETYPE_UNKNOWN";
      }

      else
      {
        v4 = off_1E864A840[v3];
        v5 = off_1E864AEC8[v3];
      }

      v6 = v4;
      v7 = v5;
      v2 = sub_1DD0DDFBC();
    }
  }

  MEMORY[0x1E12A6780](8250, 0xE200000000000000);
  v8 = sub_1DCCD7D60();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0x3E4C494E3CLL;
    v10 = 0xE500000000000000;
  }

  MEMORY[0x1E12A6780](v8, v10);

  return v2;
}

uint64_t CoreAnalyticsService.__deallocating_deinit()
{

  OUTLINED_FUNCTION_88_0();

  return swift_deallocClassInstance();
}

uint64_t initializeWithCopy for SiriKitReliabilityEvent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1DCCD7934(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for SiriKitReliabilityEvent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_1DCCD7934(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v10 = *(a1 + 24);
  *(a1 + 24) = v6;
  sub_1DCCD6E9C(v7, v8, v9, v10);
  return a1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for SiriKitReliabilityEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 24);
  *(a1 + 24) = v4;
  sub_1DCCD6E9C(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for SiriKitReliabilityEvent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for SiriKitReliabilityEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DCCD7D60()
{
  v1 = *v0;
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      v2 = v0[1];
      v3 = HIBYTE(v2) & 0xF;
      if ((v2 & 0x2000000000000000) == 0)
      {
        v3 = v1 & 0xFFFFFFFFFFFFLL;
      }

      if (v3)
      {
      }

      else
      {
        return 4271950;
      }
    }

    else
    {
      sub_1DCCD82B8(v0[2]);
      return v6;
    }
  }

  else
  {
    v4 = sub_1DCCD7E0C();
    if (v5)
    {
      return v4;
    }

    else
    {
      return 1701736302;
    }
  }

  return v1;
}

uint64_t sub_1DCCD7E0C()
{
  v1 = v0;
  v2 = type metadata accessor for SiriKitEventPayload(0);
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB22FCC(v1, v5);
  v6 = 0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v11 = *v5;
      goto LABEL_24;
    case 2u:
      v28 = *(v5 + 8);

      goto LABEL_12;
    case 3u:
      v28 = *(v5 + 8);
LABEL_12:

      goto LABEL_23;
    case 4u:
      v28 = *(v5 + 2);

      __swift_destroy_boxed_opaque_existential_1Tm(v5);
      goto LABEL_23;
    case 5u:
      v28 = *(v5 + 8);

      sub_1DCB16D50((v5 + 48), &dword_1ECCA3CE0, &unk_1DD0E4F80);
LABEL_23:
      v11 = v28;
LABEL_24:
      v6 = *(&v11 + 1);
      if (v11)
      {
        v17 = sub_1DCB8DC6C(v11);
        if (v18)
        {
          v19 = v17;

          return v19;
        }
      }

      return v6;
    case 6u:
      v8 = *(v5 + 1);
      v9 = *(v5 + 2);
      v10 = *(v5 + 3);

      goto LABEL_14;
    case 7u:
      v23 = *(v5 + 1);
      v24 = *(v5 + 2);
      v25 = *(v5 + 3);

      sub_1DCCD86D4(v25);
      v26 = sub_1DCFA4974(v23);
      if (v27)
      {
        v6 = v26;

LABEL_31:
      }

      else if (v24)
      {
        v6 = sub_1DD0DD1BC();
      }

      else
      {

        return 0;
      }

      return v6;
    case 8u:
      v28 = *(v5 + 8);

      v7 = (v5 + 56);
      sub_1DCCD86D4(*(v5 + 12));
      goto LABEL_28;
    case 9u:
      v28 = *(v5 + 8);
      v7 = (v5 + 40);
      goto LABEL_28;
    case 0xAu:
      v28 = *(v5 + 8);
      v7 = (v5 + 40);
      sub_1DCCD86D4(*(v5 + 10));
LABEL_28:

      sub_1DCB16D50(v7, &unk_1ECCA3280, &unk_1DD0E23D0);
      v20 = sub_1DCB8DC6C(*(&v28 + 1));
      if (!v21)
      {
        v20 = sub_1DD0DD1BC();
      }

      v6 = v20;
      goto LABEL_31;
    case 0xBu:
      v8 = *(v5 + 1);
      v9 = *(v5 + 2);
      v10 = *(v5 + 3);

      sub_1DCB16D50((v5 + 96), &unk_1ECCA3280, &unk_1DD0E23D0);
      sub_1DCB16D50((v5 + 48), &dword_1ECCA3CE0, &unk_1DD0E4F80);
LABEL_14:
      v6 = sub_1DCCD85A8(v8, v9);
      v13 = v12;

      if (v13)
      {
        goto LABEL_31;
      }

      if (!v10)
      {
        return 0;
      }

      v6 = sub_1DD0DD1BC();
      goto LABEL_31;
    case 0xCu:
      v6 = *(v5 + 1);
      v15 = *(v5 + 3);
      v16 = *(v5 + 6);

      if (v15)
      {
        sub_1DD0DCF8C();
      }

      return v6;
    case 0xDu:
      v6 = *v5;

      return v6;
    case 0xEu:
    case 0xFu:
    case 0x13u:
      sub_1DCB22AA4(v5);
      return 0;
    case 0x10u:
    case 0x12u:
      v6 = *v5;

      return v6;
    case 0x11u:
      return *v5;
    case 0x14u:
      return v6;
    default:
      v6 = *(v5 + 1);

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2280, &unk_1DD0E4C60);
      sub_1DCB16D50(&v5[*(v14 + 112)], &qword_1ECCA2278, &qword_1DD0E4830);
      sub_1DCB16D50((v5 + 32), &unk_1ECCA3280, &unk_1DD0E23D0);
      return v6;
  }
}

void sub_1DCCD82B8(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 40;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = v3 + 16 * v1;
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_32;
    }

    sub_1DCB1C4D8();

    v7 = sub_1DD0DEA5C();
    if (v7[2] > 1uLL)
    {
      v32 = v3;
      v9 = v7[8];
      v8 = v7[9];
      v11 = v7[10];
      v10 = v7[11];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DCE195B4();
        v4 = v14;
      }

      v12 = v4[2];
      if (v12 >= v4[3] >> 1)
      {
        sub_1DCE195B4();
        v4 = v15;
      }

      v4[2] = v12 + 1;
      v13 = &v4[4 * v12];
      v13[4] = v9;
      v13[5] = v8;
      v13[6] = v11;
      v13[7] = v10;
      v1 = v6;
      v3 = v32;
      goto LABEL_2;
    }

    ++v1;
    v5 += 16;
  }

  v16 = v4[2];
  if (v16)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1DCB38954();
    v17 = 0;
    v18 = v33;
    v19 = v4 + 7;
    while (v17 < v4[2])
    {
      v20 = *(v19 - 3);
      v21 = *(v19 - 2);
      v22 = *(v19 - 1);
      v23 = *v19;

      v24 = MEMORY[0x1E12A66E0](v20, v21, v22, v23);
      v26 = v25;

      v27 = *(v33 + 16);
      if (v27 >= *(v33 + 24) >> 1)
      {
        sub_1DCB38954();
      }

      ++v17;
      *(v33 + 16) = v27 + 1;
      v28 = v33 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v26;
      v19 += 4;
      if (v16 == v17)
      {

        goto LABEL_21;
      }
    }

    goto LABEL_33;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v29 = *(v18 + 16);
  v30 = (v18 + 40);
  if (v29)
  {
    while (1)
    {
      v31 = *(v30 - 1) == 0x4674694B69726953 && *v30 == 0xEB00000000776F6CLL;
      if (!v31 && (sub_1DD0DF0AC() & 1) == 0)
      {
        break;
      }

      v30 += 2;
      if (!--v29)
      {
        goto LABEL_30;
      }
    }
  }

LABEL_30:
}

uint64_t sub_1DCCD85A8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x54746E6572727543 && a2 == 0xEB000000006B7361)
  {
    return 0;
  }

  v4 = a1;
  if (sub_1DD0DF0AC())
  {
    return 0;
  }

  v5 = v4 == 0x6573726170204C4ELL && a2 == 0xE800000000000000;
  if (v5 || (sub_1DD0DF0AC() & 1) != 0)
  {
    return 0;
  }

  v6 = v4 == 0x206E776F6E6B6E55 && a2 == 0xED00006573726170;
  if (v6 || (sub_1DD0DF0AC() & 1) != 0)
  {
    return 0;
  }

  v7 = v4 == 0x6465737261706E55 && a2 == 0xEE00746E65746E49;
  if (v7 || (sub_1DD0DF0AC() & 1) != 0)
  {
    return 0;
  }

  return v4;
}

void sub_1DCCD86D4(id result)
{
  if (result != 3)
  {
    sub_1DCCD86E4(result);
  }
}

void sub_1DCCD86E4(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1DCCD86F4(uint64_t *a1)
{
  sub_1DD0DD89C();
  OUTLINED_FUNCTION_9();
  v59 = v3;
  v60 = v2;
  v5 = MEMORY[0x1EEE9AC00](v2, v4);
  v57 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v7);
  v55 = &v53 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v56 = &v53 - v11;
  v12 = sub_1DD0DD85C();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = &v53 - v22;
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v27 = &v53 - v26;
  MEMORY[0x1EEE9AC00](v25, v28);
  v30 = &v53 - v29;
  v32 = *a1;
  v31 = a1[1];
  v33 = a1[2];
  LODWORD(v64) = *(a1 + 24);
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v61 = v32;
  v62 = v31;
  v63 = v33;
  v34 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v34, qword_1EDE57E00);
  v35 = sub_1DD0DD8EC();
  v36 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v36))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_4_31(&dword_1DCAFC000, v37, v36, "Log CoreDuet processIntent result");
    OUTLINED_FUNCTION_80();
  }

  v58 = v23;

  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v38 = sub_1DD0DD88C();
  __swift_project_value_buffer(v38, qword_1EDE57DD0);
  sub_1DD0DD84C();
  v39 = sub_1DD0DD87C();
  v40 = sub_1DD0DE7FC();
  if (sub_1DD0DE92C())
  {
    v41 = OUTLINED_FUNCTION_50_0();
    v54 = v27;
    v42 = v14;
    v43 = v19;
    v44 = v12;
    v45 = v41;
    *v41 = 0;
    v46 = sub_1DD0DD83C();
    _os_signpost_emit_with_name_impl(&dword_1DCAFC000, v39, v40, v46, "logCoreDuet", "", v45, 2u);
    v12 = v44;
    v19 = v43;
    v14 = v42;
    v27 = v54;
    OUTLINED_FUNCTION_80();
  }

  (*(v14 + 16))(v27, v30, v12);
  sub_1DD0DD8CC();
  swift_allocObject();
  sub_1DD0DD8BC();
  v47 = *(v14 + 8);
  v47(v30, v12);
  if ((v64 & 1) == 0)
  {
    v57 = v47;
    v64 = v12;
    sub_1DD0DCF8C();
  }

  v48 = sub_1DD0DD8EC();
  v49 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v49))
  {
    *OUTLINED_FUNCTION_50_0() = 0;
    OUTLINED_FUNCTION_4_31(&dword_1DCAFC000, v50, v49, "CoreDuetHelper.donateHandleResult, ProcessIntent not successful. CoreDuet skipping.");
    OUTLINED_FUNCTION_80();
  }

  v51 = sub_1DD0DD87C();
  sub_1DD0DD8AC();
  sub_1DD0DE7EC();
  if (sub_1DD0DE92C())
  {
    sub_1DD0DCF8C();
  }

  v47(v19, v12);
  return 0;
}

id sub_1DCCD8EF4(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

uint64_t sub_1DCCD8F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 176) = a4;
  *(v5 + 184) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DCCD8F70, 0, 0);
}

uint64_t sub_1DCCD8F70()
{
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v1 = sub_1DD0DD8FC();
  v0[24] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "<background task> CoreDuetHelper.donateHandleResult, intentHandlingStatus success. CoreDuet logging.", v4, 2u);
    OUTLINED_FUNCTION_80();
  }

  v5 = v0[23];

  v0[2] = v0;
  v0[3] = sub_1DCCD9118;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2638, &qword_1DD0E5C98);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1DCC40AF8;
  v0[13] = &block_descriptor_3;
  v0[14] = v6;
  [v5 donateInteractionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DCCD9118()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1DCCD92E8;
  }

  else
  {
    v2 = sub_1DCCD9228;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DCCD9228(uint64_t a1)
{
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (OUTLINED_FUNCTION_75(v3))
  {
    v4 = OUTLINED_FUNCTION_50_0();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "<background task> Log CoreDuet logging success", v4, 2u);
    OUTLINED_FUNCTION_80();
  }

  sub_1DCCD9464(*(v1 + 176));
  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_1DCCD92E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = v4;
  v5 = v4[25];
  swift_willThrow();
  v6 = v5;
  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6EC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v4[25];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_1DD0DF18C();
    v14 = sub_1DCB10E9C(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DCAFC000, v7, v8, "<background task> Log CoreDuet logging error %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  else
  {
    v15 = v4[25];
  }

  sub_1DCCD9464(v4[22]);
  v16 = v4[1];

  return v16();
}

uint64_t sub_1DCCD9464(uint64_t a1)
{
  v1 = sub_1DD0DD89C();
  MEMORY[0x1EEE9AC00](v1, v2);
  v3 = sub_1DD0DD85C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE4EC80 != -1)
  {
    swift_once();
  }

  v8 = sub_1DD0DD88C();
  __swift_project_value_buffer(v8, qword_1EDE57DD0);
  v9 = sub_1DD0DD87C();
  sub_1DD0DD8AC();
  sub_1DD0DE7EC();
  if (sub_1DD0DE92C())
  {
    sub_1DD0DCF8C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DCCD96F0()
{
  result = qword_1EDE46218;
  if (!qword_1EDE46218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE46218);
  }

  return result;
}

uint64_t sub_1DCCD9734(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DCB193FC;

  return sub_1DCCD8F50(a1, v4, v5, v7, v6);
}

uint64_t sub_1DCCD97F4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return OUTLINED_FUNCTION_0_12(sub_1DCCD9810);
}

uint64_t sub_1DCCD9810()
{
  v1 = sub_1DD0DDE9C();
  *(v0 + 24) = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1DCCD98DC;
  v3 = *(v0 + 40);

  return sub_1DCC710FC(v3, v1);
}

uint64_t sub_1DCCD98DC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

void sub_1DCCD9A14()
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

_BYTE *storeEnumTagSinglePayload for CorrectionsPatterns(_BYTE *result, int a2, int a3)
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

void SiriEnvironment.currentTCU.getter()
{
  type metadata accessor for CurrentTCUProvider();
  OUTLINED_FUNCTION_0_35();
  sub_1DCCDAFDC(v0, v1, &protocol conformance descriptor for CurrentTCUProvider);

  sub_1DD0DCA7C();
}

void SiriEnvironment.currentTCU.setter(uint64_t a1)
{
  type metadata accessor for CurrentTCUProvider();
  OUTLINED_FUNCTION_0_35();
  sub_1DCCDAFDC(v1, v2, &protocol conformance descriptor for CurrentTCUProvider);

  sub_1DD0DCA8C();
}

void SiriEnvironment.currentTCU.modify(void *a1)
{
  a1[1] = v1;
  a1[2] = type metadata accessor for CurrentTCUProvider();
  OUTLINED_FUNCTION_0_35();
  a1[3] = sub_1DCCDAFDC(v3, v4, &protocol conformance descriptor for CurrentTCUProvider);
  sub_1DD0DCA7C();
}

void CurrentTCUProvider.__allocating_init(storage:)(uint64_t a1)
{
  OUTLINED_FUNCTION_5_2();
  swift_allocObject();
  CurrentTCUProvider.init(storage:)(a1);
}

void CurrentTCUProvider.init(storage:)(uint64_t a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  type metadata accessor for DefaultFlowOperationQueue();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_5_35(v2 + 24, v4);
  sub_1DCCDAFDC(&qword_1ECCA4240, type metadata accessor for DefaultFlowOperationQueue, &unk_1DD0EB498);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4248, &qword_1DD0EB2D0);
  swift_allocObject();
  sub_1DD0DCE9C();
}