uint64_t sub_1D54F2BB0()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_22_1();

  return v0();
}

uint64_t sub_1D54F2C08()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54F2C64()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v1[6] = v4;
  v1[7] = v0;
  v1[4] = v2;
  v1[5] = v5;
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v1;
  v6[1] = sub_1D54F2CFC;

  return sub_1D54F9828(v3);
}

uint64_t sub_1D54F2CFC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  *(v3 + 72) = v6;

  if (v0)
  {
    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_204();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1D54F2E30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_160();
  if (qword_1EDD58A80 != -1)
  {
    OUTLINED_FUNCTION_10_121(&qword_1EDD58A80);
  }

  v14 = v12[9];
  v15 = v12[7];
  v16 = v12[4];
  v12[3] = v14;
  v17 = swift_task_alloc();
  OUTLINED_FUNCTION_29_59(v17);
  v18[4] = v15;
  v18[5] = v14;
  v18[6] = v16;
  v19 = sub_1D54E6DE4();

  v20 = swift_task_alloc();
  v12[11] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  *v20 = v12;
  v20[1] = sub_1D54F2F9C;

  return MEMORY[0x1EEE6DE98](v12 + 2, v12 + 3, &unk_1D566D138, v13, v15, v19, 0xD00000000000002CLL, 0x80000001D568FA60, a9, a10, a11, a12);
}

uint64_t sub_1D54F2F9C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 96) = v0;

  v7 = *(v3 + 56);
  if (v0)
  {
    v8 = sub_1D54F2C08;
  }

  else
  {
    v8 = sub_1D54F30DC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D54F30DC()
{
  OUTLINED_FUNCTION_60();

  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D54F3140(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v6[15] = v7;
  *v7 = v6;
  v7[1] = sub_1D54F324C;

  return v9();
}

uint64_t sub_1D54F324C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v0;

  OUTLINED_FUNCTION_204();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

const char *sub_1D54F3368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  v15 = *(v14 + 128);
  sub_1D54FA610(*(v14 + 104), *(v14 + 96), *(v14 + 112));
  if (v15)
  {
    v16 = v15;
    *(v14 + 88) = v15;
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {
      v18 = *(v14 + 16);
      v19 = *(v14 + 20);
      v20 = *(v14 + 24);
      v22 = *(v14 + 32);
      v21 = *(v14 + 40);
      v23 = *(v14 + 48);
      if (sub_1D54EF1D8(v19 | (v20 << 32), 0xE00000011))
      {
        a9 = v23;
        HIDWORD(a10) = v18;
        v24 = *(v14 + 112);

        OUTLINED_FUNCTION_34_62();
        if (v24)
        {
        }

        else
        {
          v34 = sub_1D51D2BD0();
          OUTLINED_FUNCTION_121_0(&unk_1F50C0D60, v34);
          *v35 = HIDWORD(a10);
          *(v35 + 4) = v19;
          *(v35 + 8) = v20;
          *(v35 + 16) = v22;
          *(v35 + 24) = v21;
          OUTLINED_FUNCTION_38_47(v35, v23);
        }

        goto LABEL_19;
      }
    }

    v25 = sub_1D54F634C();
    sub_1D54EF4CC(v25);
    OUTLINED_FUNCTION_17_88();
    if (!v28)
    {
      v28 = v27 == 14 && v26 == 16;
      if (!v28)
      {
        v29 = *(v14 + 96);
        swift_beginAccess();
        sqlite3_extended_errcode(*(v29 + 136));
        result = OUTLINED_FUNCTION_36_60();
        if (result)
        {
          sub_1D5614E98();
          result = OUTLINED_FUNCTION_19_83();
          if (result)
          {
            sub_1D5614E98();
            OUTLINED_FUNCTION_22_73();
            v31 = OUTLINED_FUNCTION_37_49();
            v32 = OUTLINED_FUNCTION_121_0(&unk_1F50C0D60, v31);
            OUTLINED_FUNCTION_3_191(v32, v33);

LABEL_19:
            OUTLINED_FUNCTION_15_5();
            goto LABEL_20;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return result;
      }
    }

    swift_willThrow();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_22_1();
LABEL_20:
  OUTLINED_FUNCTION_89();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D54F3724()
{
  OUTLINED_FUNCTION_163_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1D4E73560;
  v3 = OUTLINED_FUNCTION_18_90();

  return sub_1D54F3140(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D54F37C4(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[13] = a3;
  v10 = a1 + *a1;
  v8 = swift_task_alloc();
  v5[16] = v8;
  *v8 = v5;
  v8[1] = sub_1D54F38D8;

  return (v10)(v5 + 11, a3, a4);
}

uint64_t sub_1D54F38D8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v0;

  OUTLINED_FUNCTION_204();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D54F3DD4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1D54F3E9C;

  return sub_1D54F37C4(a2, a3, a4, a5, a6);
}

uint64_t sub_1D54F3E9C()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_1D54F3F94()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_163_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1D4E6ED20;
  v3 = OUTLINED_FUNCTION_18_90();

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_20_93()
{
  v2 = *(v0 + 20) | (*(v0 + 24) << 32);

  return sub_1D54EF1D8(v2, 0xE00000011);
}

void OUTLINED_FUNCTION_34_62()
{

  sub_1D54FA610(v1, v2, v0);
}

unint64_t OUTLINED_FUNCTION_37_49()
{

  return sub_1D51D2BD0();
}

uint64_t sub_1D54F40BC(uint64_t a1)
{
  result = sub_1D54F6560();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    result = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v6 = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v5 = 0;
      while (1)
      {
        sub_1D54F65A4(a1, v5);
        if (v1)
        {
          break;
        }

        v5 = (v5 + 1);
        sub_1D5615C88();
        sub_1D5615CC8();
        sub_1D5615CD8();
        sub_1D5615C98();
        if (v4 == v5)
        {
          return v6;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D54F419C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D54F40BC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double sub_1D54F41C8@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v11 = *v1;
  v12[0] = v3;
  *(v12 + 9) = *(v1 + 25);
  v4 = *(v1 + 24);
  v13[0] = *(v1 + 8);
  v13[1] = v4;
  v14 = *(v1 + 40);
  sub_1D51D28F8(v8);

  sub_1D51D2984(v13);
  v5 = v8[1];
  *a1 = v8[0];
  a1[1] = v5;
  result = *&v9;
  v7 = v10;
  a1[2] = v9;
  a1[3] = v7;
  return result;
}

double sub_1D54F424C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v3, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1D54F5660(v8, AssociatedTypeWitness, a1, a2, v14);
  v11 = v14[1];
  *a3 = v14[0];
  a3[1] = v11;
  result = *&v15;
  v13 = v16;
  a3[2] = v15;
  a3[3] = v13;
  return result;
}

void sub_1D54F435C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a1;
  v10 = sub_1D54F6560();
  v11 = 0;
  v31 = 0;
  v29 = a3;
  v30 = a4;
  v12 = (a3 & 0xFFFFFFFFFFFFFFFELL);
  v26 = a4 & 0xFFFFFFFFFFFFFFFELL;
  v27 = v10;
  v13 = 16;
  v24 = a5;
  v25 = 8 * a2;
  while (v11 != a2)
  {
    v14 = v12[v11];
    if (a2 == 1)
    {
      TupleTypeMetadata = *v12;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v10);
      for (i = 0; a2 != i; ++i)
      {
        *(&v23 + 8 * i - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0)) = v12[i];
      }

      TupleTypeMetadata = swift_getTupleTypeMetadata();
      a5 = v24;
    }

    sub_1D54F459C(v14, &v31, v27, v28, a2, v29, v14);
    if (v5)
    {
      if (v11)
      {
        v19 = (TupleTypeMetadata + v13);
        do
        {
          v20 = *v19;
          v19 -= 4;
          (*(*(v12[--v11] - 8) + 8))(a5 + v20);
        }

        while (v11);
      }

      return;
    }

    ++v11;
    v13 += 16;
  }

  if (a2 == 1)
  {
    v18 = *v12;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v10);
    for (j = 0; a2 != j; ++j)
    {
      *(&v23 + 8 * j - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0)) = v12[j];
    }

    v18 = swift_getTupleTypeMetadata();
  }

  __swift_storeEnumTagSinglePayload(a5, 0, 1, v18);
}

void sub_1D54F459C(uint64_t a1, int64_t *a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = OUTLINED_FUNCTION_7_137(a1, v39);
  if (*a2 >= a3)
  {
LABEL_7:
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1D5615B68();
    v35 = v37;
    v36 = v38;
    v25 = MEMORY[0x1DA6EAC70](0x6574656D61726150, 0xEA00000000002072);
    OUTLINED_FUNCTION_7_137(v25, &v37);
    v34[0] = *a2;
    v26 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v26);

    MEMORY[0x1DA6EAC70](543584032, 0xE400000000000000);
    v34[0] = a7;
    swift_getMetatypeMetadata();
    v27 = sub_1D5614DB8();
    MEMORY[0x1DA6EAC70](v27);

    MEMORY[0x1DA6EAC70](0xD000000000000022, 0x80000001D568FA90);
    v34[0] = a3;
    v28 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v28);

    MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D568FAC0);
    v29 = v35;
    v30 = v36;
    sub_1D51D2CAC();
    swift_allocError();
    *v31 = v29;
    v31[1] = v30;
    v32 = swift_willThrow();
    OUTLINED_FUNCTION_6_149(v32, &v35);
    OUTLINED_FUNCTION_9_124();
    if (!v24)
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_10;
  }

  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1D54F6658(sub_1D54F59E8);
  if (v7)
  {
    v40 = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (!swift_dynamicCast())
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_7_137(v14, &v37);
    v15 = sub_1D54F671C(*a2);
    v17 = v16;
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_1D5615B68();
    v34[4] = 0;
    v34[5] = 0xE000000000000000;
    v18 = MEMORY[0x1DA6EAC70](0x6320746C75736552, 0xEE00206E6D756C6FLL);
    OUTLINED_FUNCTION_7_137(v18, &v35);
    v19 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v19);

    MEMORY[0x1DA6EAC70](24608, 0xE200000000000000);
    MEMORY[0x1DA6EAC70](v15, v17);

    MEMORY[0x1DA6EAC70](0xD00000000000001ELL, 0x80000001D568FAE0);
    v34[3] = a7;
    swift_getMetatypeMetadata();
    v20 = sub_1D5614DB8();
    MEMORY[0x1DA6EAC70](v20);

    MEMORY[0x1DA6EAC70](8250, 0xE200000000000000);
    MEMORY[0x1DA6EAC70](v34[0], v34[1]);

    a7 = 0;
    a3 = 0xE000000000000000;
    sub_1D51D2CAC();
    swift_allocError();
    *v21 = 0;
    v21[1] = 0xE000000000000000;
    swift_willThrow();

    OUTLINED_FUNCTION_6_149(v22, v34);
    OUTLINED_FUNCTION_9_124();
    if (!v24)
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_10:
  OUTLINED_FUNCTION_6_149(v12, &v37);
  OUTLINED_FUNCTION_9_124();
  if (!v24)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:

  OUTLINED_FUNCTION_6_149(v33, &v37);
  OUTLINED_FUNCTION_9_124();
  if (!v24)
  {
LABEL_14:
    *a2 = v23;
    return;
  }

  __break(1u);
}

double sub_1D54F4A84@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  sub_1D54F424C(a1, WitnessTable, v9);

  sub_1D51D29D8(*(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  v6 = v9[1];
  *a2 = v9[0];
  a2[1] = v6;
  result = *&v10;
  v8 = v11;
  a2[2] = v10;
  a2[3] = v8;
  return result;
}

uint64_t sub_1D54F4B0C(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F4B2C, 0);
}

uint64_t sub_1D54F4B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 128);
  *(v10 + 136) = *v11;
  v12 = *(v11 + 8);
  *(v10 + 144) = v12;
  v13 = *(v11 + 16);
  *(v10 + 152) = v13;
  v14 = *(v11 + 24);
  *(v10 + 160) = v14;
  v15 = *(v11 + 32);
  *(v10 + 168) = v15;
  v16 = *(v11 + 40);
  *(v10 + 97) = v16;
  if (v16 >> 6)
  {
    if (v16 >> 6 == 1)
    {
      v17 = *(v10 + 120);
      v18 = swift_task_alloc();
      *(v10 + 200) = v18;
      v19 = *(v17 + 16);
      *(v10 + 208) = v19;
      *(v18 + 16) = v19;
      *(v18 + 24) = v11;

      v20 = swift_task_alloc();
      *(v10 + 216) = v20;
      sub_1D56158D8();
      *v20 = v10;
      v20[1] = sub_1D54F4E88;
      v21 = *(v10 + 112);

      return sub_1D54F7EA4(v21, v12, &unk_1D566D180, v18);
    }

    else
    {
      __swift_storeEnumTagSinglePayload(*(v10 + 112), 1, 1, *(*(v10 + 120) + 16));
      OUTLINED_FUNCTION_22_1();

      return v27();
    }
  }

  else
  {
    *&v23 = v12;
    *(&v23 + 1) = v13;
    *&v24 = v14;
    *(&v24 + 1) = v15;
    *(v10 + 64) = v23;
    *(v10 + 80) = v24;
    v25 = v16 & 1;
    *(v10 + 96) = v16 & 1;

    sub_1D51D2A80(v12, v13, v14, v15, v25);
    v26 = swift_task_alloc();
    *(v10 + 176) = v26;
    *v26 = v10;
    v26[1] = sub_1D54F4D6C;

    return sub_1D54F6844();
  }
}

uint64_t sub_1D54F4D6C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 184) = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
    v6 = sub_1D54F5258;
  }

  else
  {
    sub_1D51D29D8(*(v3 + 144), *(v3 + 152), *(v3 + 160), *(v3 + 168), *(v3 + 97) & 1);
    v6 = sub_1D54F4F90;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D54F4E88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
    v7 = sub_1D54F5334;
  }

  else
  {

    v7 = sub_1D54F51F8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D54F4F90()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = *(v0 + 97);

  sub_1D51D2AD0(v6, v5, v4, v3, v2, v8);
  *v7 = v6;
  *(v7 + 8) = v1;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0;
  *(v7 + 40) = 64;
  v9 = swift_task_alloc();
  *(v0 + 232) = v9;
  *v9 = v0;
  v9[1] = sub_1D54F5094;
  v10 = *(v0 + 120);
  v11 = *(v0 + 112);

  return sub_1D54F4B0C(v11, v10);
}

uint64_t sub_1D54F5094()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 240) = v0;

  if (v0)
  {
    v7 = sub_1D54F52CC;
  }

  else
  {
    v7 = sub_1D54F5194;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D54F5194()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_22_1();

  return v0();
}

uint64_t sub_1D54F51F8()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_22_1();

  return v0();
}

uint64_t sub_1D54F5258()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D29D8(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 97) & 1);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D54F52CC()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54F5334()
{
  v1 = *(v0 + 224);

  *(v0 + 104) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  if (swift_dynamicCast() && (v3 = *(v0 + 20), v4 = *(v0 + 24), , , (sub_1D54EF1D8(v3 | (v4 << 32), 0xE00000011) & 1) != 0))
  {
    v5 = *(v0 + 144);

    *(v0 + 248) = *(v5 + 16);
    *(v0 + 256) = *(v5 + 24);
    v6 = *(v0 + 136);

    return MEMORY[0x1EEE6DFA0](sub_1D54F5494, v6, 0);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D54F5494()
{
  sub_1D54F81FC(v0[31], v0[32]);
  v0[33] = 0;

  return MEMORY[0x1EEE6DFA0](sub_1D54F552C, 0, 0);
}

uint64_t sub_1D54F552C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);

  sub_1D51D2AD0(*v2, *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
  *(v2 + 32) = 0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 40) = 0x80;
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v1);

  OUTLINED_FUNCTION_22_1();

  return v4();
}

uint64_t sub_1D54F55E8()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v1();
}

__n128 sub_1D54F5660@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = (*(a4 + 16))(a3, a4);
  (*(a4 + 24))(v15, a3, a4);
  v11 = v16;
  (*(*(a3 - 8) + 8))(a1, a3);
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a3;
  result = v15[0];
  v14 = v15[1];
  *a5 = v10;
  *(a5 + 24) = v14;
  *(a5 + 8) = result;
  *(a5 + 40) = v11;
  *(a5 + 48) = sub_1D54F5FEC;
  *(a5 + 56) = v12;
  return result;
}

uint64_t sub_1D54F576C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D54F578C, a2, 0);
}

const char *sub_1D54F578C()
{
  v1 = sub_1D54F6448();
  v2 = sub_1D54EF4CC(v1);
  if (BYTE4(v2) != 1 && (BYTE4(v2) != 14 || v2 != 16))
  {
    v4 = v0[6];
    swift_beginAccess();
    v5 = sqlite3_extended_errcode(*(v4 + 136));
    result = sqlite3_errstr(v1);
    if (result)
    {
      v7 = sub_1D5614E98();
      v9 = v8;
      result = sqlite3_errmsg(*(v4 + 136));
      if (result)
      {
        v10 = sub_1D5614E98();
        v12 = v11;
        v13 = sub_1D54EF4CC(v5);
        v14 = v13;
        v15 = HIDWORD(v13);
        sub_1D51D2BD0();
        swift_allocError();
        *v16 = v5;
        *(v16 + 4) = v14;
        *(v16 + 8) = v15;
        *(v16 + 16) = v7;
        *(v16 + 24) = v9;
        *(v16 + 32) = v10;
        *(v16 + 40) = v12;
        swift_willThrow();
        OUTLINED_FUNCTION_55();
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  v17 = v0[7];
  v18 = *(v0[8] + 48);

  v18(v17);

  OUTLINED_FUNCTION_22_1();
LABEL_11:

  return v19();
}

uint64_t sub_1D54F5924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 24);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D4E6ED20;

  return sub_1D54F576C(a1, a2, a3, v8);
}

uint64_t sub_1D54F5A0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D4E6ED20;

  return sub_1D54F4B0C(a1, a2);
}

uint64_t sub_1D54F5AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1D54F5B88;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1D54F5B88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (v0)
  {
    **(v3 + 24) = *(v3 + 16);
  }

  OUTLINED_FUNCTION_55();

  return v7();
}

uint64_t sub_1D54F5C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return OUTLINED_FUNCTION_12_6(sub_1D54F5C94, a2);
}

uint64_t sub_1D54F5C94()
{
  result = sub_1D54F8520();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = MEMORY[0x1E69E7CC0];
    if (result)
    {
      v12 = MEMORY[0x1E69E7CC0];
      sub_1D4F03980(0, result, 0);
      v4 = 0;
      v3 = v12;
      do
      {
        v5 = sub_1D54F671C(v4);
        v7 = v6;
        v9 = *(v12 + 16);
        v8 = *(v12 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1D4F03980(v8 > 1, v9 + 1, 1);
        }

        ++v4;
        *(v12 + 16) = v9 + 1;
        v10 = v12 + 16 * v9;
        *(v10 + 32) = v5;
        *(v10 + 40) = v7;
      }

      while (v2 != v4);
    }

    **(v0 + 16) = v3;
    OUTLINED_FUNCTION_22_1();

    return v11();
  }

  return result;
}

uint64_t sub_1D54F5DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D54F5E00(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1D54F5E40(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D54F5ECC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D54F5F0C()
{
  result = qword_1EC7F7878;
  if (!qword_1EC7F7878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F7880, &qword_1D566D318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7878);
  }

  return result;
}

unint64_t sub_1D54F5F70(uint64_t a1)
{
  result = sub_1D54F5F98();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D54F5F98()
{
  result = qword_1EC7F7888[0];
  if (!qword_1EC7F7888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F7888);
  }

  return result;
}

uint64_t sub_1D54F6024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal11SQLDatabaseC20AsyncResultsIteratorV0F5State33_A53AC6D3F49790A2EEF7C0CAFC751450LLOy_x_G(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1D54F6084(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1D54F60C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D54F612C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D54F6168(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFE && *(a1 + 41))
    {
      v2 = *a1 + 16381;
    }

    else
    {
      v2 = ((*(a1 + 40) >> 6) | (4 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 40) >> 1) & 0x1F) << 7)))) ^ 0x3FFF;
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

uint64_t sub_1D54F61D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 16382;
    if (a3 >= 0x3FFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0xFFF | ((-a2 & 0x3FFF) << 12);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0u;
      *(result + 24) = 0u;
      *(result + 40) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_1D54F626C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 40) & 1 | (a2 << 6);
    *result &= 0xFFFFFFFFFFFFFF8uLL;
    *(result + 40) = v2;
  }

  else
  {
    *result = 8 * (a2 - 2);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0x80;
  }

  return result;
}

void sub_1D54F62E0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < a1 || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {

    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_1D54F634C()
{
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_147();
    _s10ConnectionCMa();
    OUTLINED_FUNCTION_0_254();
    sub_1D54FE58C(v1, v2, &unk_1D566B020);
    OUTLINED_FUNCTION_6_150();
    sub_1D5615348();
  }

  swift_beginAccess();
  v3 = *(v0 + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = sqlite3_finalize(v3);
  *(v0 + 48) = 0;
  swift_weakAssign();
  if (*(v0 + 56))
  {

    sub_1D54F634C();
  }

  return v4;
}

uint64_t sub_1D54F6448()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_147();
    _s10ConnectionCMa();
    OUTLINED_FUNCTION_0_254();
    sub_1D54FE58C(v2, v3, &unk_1D566B020);
    OUTLINED_FUNCTION_6_150();
    sub_1D5615348();

    if (*(v0 + 88) != 101)
    {
      OUTLINED_FUNCTION_3_192();
      swift_beginAccess();
      v4 = sqlite3_step(*(v0 + 48));
      *(v0 + 88) = v4;
      if (v4 != 101)
      {
        return v4;
      }
    }

    if (!*(v0 + 56))
    {
      return 101;
    }

    v5 = sub_1D54F6448();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

sqlite3_stmt *sub_1D54F65A4(uint64_t a1, sqlite3_stmt *a2)
{
  if (*(a1 + 88) == 101 && *(a1 + 56))
  {

    a2 = sub_1D54F65A4(v5, a2);

    return a2;
  }

  OUTLINED_FUNCTION_3_192();
  swift_beginAccess();
  result = *(a1 + 48);
  if (result)
  {
    v7 = sub_1D54E3EA8(result, a2);
    if (!v2)
    {
      return v7;
    }

    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54F6658(uint64_t (*a1)(void))
{
  if (*(v1 + 88) == 101 && *(v1 + 56))
  {

    sub_1D54F6658(a1);
  }

  else
  {
    OUTLINED_FUNCTION_3_192();
    swift_beginAccess();
    result = *(v1 + 48);
    if (result)
    {
      return a1();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

const char *sub_1D54F671C(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_147();
  _s10ConnectionCMa();
  OUTLINED_FUNCTION_0_254();
  sub_1D54FE58C(v4, v5, &unk_1D566B020);
  OUTLINED_FUNCTION_6_150();
  sub_1D5615348();

  if (*(v1 + 88) == 101 && *(v1 + 56))
  {

    sub_1D54F671C(a1);
    OUTLINED_FUNCTION_218_0();

    return a1;
  }

  OUTLINED_FUNCTION_3_192();
  result = swift_beginAccess();
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (a1 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sqlite3_column_name(*(v1 + 48), a1);
  if (result)
  {
    return sub_1D5614E98();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1D54F6844()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  *(v1 + 40) = v0;
  v4 = swift_task_alloc();
  *(v1 + 48) = v4;
  *v4 = v1;
  v4[1] = sub_1D54F68D8;

  return sub_1D54F9828(v3);
}

uint64_t sub_1D54F68D8()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;

  if (v0)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 56) = v3;
    OUTLINED_FUNCTION_47_44();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }
}

uint64_t sub_1D54F6A10()
{
  OUTLINED_FUNCTION_160();
  v1 = *(v0 + 40);
  _s14StatementTokenCMa();
  swift_allocObject();

  v3 = sub_1D54F9FD0(v2);
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 216);
  sub_1D4F13984();
  *(v1 + 216) = v6;
  swift_endAccess();

  OUTLINED_FUNCTION_50();

  return v4(v3);
}

uint64_t sub_1D54F6B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54F6B30, a1, 0);
}

const char *sub_1D54F6B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[8];
  v14 = sub_1D54F6448();
  sub_1D54EF4CC(v14);
  OUTLINED_FUNCTION_17_88();
  if (!v17)
  {
    v17 = v16 == 14 && v15 == 16;
    if (!v17)
    {
      v18 = v12[7];
      OUTLINED_FUNCTION_146();
      swift_beginAccess();
      sqlite3_extended_errcode(*(v18 + 136));
      result = OUTLINED_FUNCTION_55_34();
      if (result)
      {
        sub_1D5614E98();
        OUTLINED_FUNCTION_218_0();
        result = sqlite3_errmsg(*(v18 + 136));
        if (result)
        {
          sub_1D5614E98();
          OUTLINED_FUNCTION_24_71();
          sub_1D54EF4CC(v13);
          OUTLINED_FUNCTION_40_54();
          sub_1D51D2BD0();
          OUTLINED_FUNCTION_29();
          v20 = swift_allocError();
          OUTLINED_FUNCTION_10_122(v20, v21);
          OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_134();

          return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  v22 = *(v12[9] + 48);

  v23 = OUTLINED_FUNCTION_22_74();
  v22(v23);

  OUTLINED_FUNCTION_47_34();
  OUTLINED_FUNCTION_134();

  return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_1D54F6C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54FE664, a1, 0);
}

uint64_t sub_1D54F6CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54F6CDC, a1, 0);
}

const char *sub_1D54F6CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[7];
  v14 = sub_1D54F6448();
  sub_1D54EF4CC(v14);
  OUTLINED_FUNCTION_17_88();
  if (!v17)
  {
    v17 = v16 == 14 && v15 == 16;
    if (!v17)
    {
      v18 = v12[6];
      OUTLINED_FUNCTION_146();
      swift_beginAccess();
      sqlite3_extended_errcode(*(v18 + 136));
      result = OUTLINED_FUNCTION_55_34();
      if (result)
      {
        sub_1D5614E98();
        OUTLINED_FUNCTION_218_0();
        result = sqlite3_errmsg(*(v18 + 136));
        if (result)
        {
          sub_1D5614E98();
          OUTLINED_FUNCTION_24_71();
          sub_1D54EF4CC(v13);
          OUTLINED_FUNCTION_40_54();
          sub_1D51D2BD0();
          OUTLINED_FUNCTION_29();
          v20 = swift_allocError();
          OUTLINED_FUNCTION_10_122(v20, v21);
          OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_134();

          return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  v22 = *(v12[8] + 48);

  v23 = OUTLINED_FUNCTION_22_74();
  v22(v23);

  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_134();

  return v34(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_1D54F6E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D54F6E58, a2, 0);
}

const char *sub_1D54F6E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[7];
  v14 = sub_1D54F6448();
  sub_1D54EF4CC(v14);
  OUTLINED_FUNCTION_17_88();
  if (v17 || (v16 == 14 ? (v17 = v15 == 16) : (v17 = 0), v17))
  {
    v22 = v12[7];
    v23 = *(v12[8] + 48);

    v23(v22);

    OUTLINED_FUNCTION_55();
    goto LABEL_10;
  }

  v18 = v12[6];
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  sqlite3_extended_errcode(*(v18 + 136));
  result = OUTLINED_FUNCTION_55_34();
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_1D5614E98();
  OUTLINED_FUNCTION_218_0();
  result = sqlite3_errmsg(*(v18 + 136));
  if (!result)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1D5614E98();
  OUTLINED_FUNCTION_24_71();
  sub_1D54EF4CC(v13);
  OUTLINED_FUNCTION_40_54();
  sub_1D51D2BD0();
  OUTLINED_FUNCTION_29();
  v20 = swift_allocError();
  OUTLINED_FUNCTION_10_122(v20, v21);
  OUTLINED_FUNCTION_55();
LABEL_10:
  OUTLINED_FUNCTION_134();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
}

uint64_t sub_1D54F6F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D54F6FC0, a1, 0);
}

const char *sub_1D54F6FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[8];
  v14 = sub_1D54F6448();
  sub_1D54EF4CC(v14);
  OUTLINED_FUNCTION_17_88();
  if (!v17)
  {
    v17 = v16 == 14 && v15 == 16;
    if (!v17)
    {
      v18 = v12[7];
      OUTLINED_FUNCTION_146();
      swift_beginAccess();
      sqlite3_extended_errcode(*(v18 + 136));
      result = OUTLINED_FUNCTION_55_34();
      if (result)
      {
        sub_1D5614E98();
        OUTLINED_FUNCTION_218_0();
        result = sqlite3_errmsg(*(v18 + 136));
        if (result)
        {
          sub_1D5614E98();
          OUTLINED_FUNCTION_24_71();
          sub_1D54EF4CC(v13);
          OUTLINED_FUNCTION_40_54();
          sub_1D51D2BD0();
          OUTLINED_FUNCTION_29();
          v20 = swift_allocError();
          OUTLINED_FUNCTION_10_122(v20, v21);
          OUTLINED_FUNCTION_55();
          OUTLINED_FUNCTION_134();

          return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }
  }

  v22 = *(v12[9] + 48);

  v23 = OUTLINED_FUNCTION_22_74();
  v22(v23);

  OUTLINED_FUNCTION_47_34();
  OUTLINED_FUNCTION_134();

  return v35(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12);
}

uint64_t sub_1D54F7120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F713C, a2);
}

uint64_t sub_1D54F713C()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_9_125();
  v1 = OUTLINED_FUNCTION_71();
  v4 = sub_1D4ED06B0(v1, v2, v3);
  *(v0 + 64) = v4;
  if (!v4)
  {
    swift_endAccess();
    sub_1D54FE4D8();
    OUTLINED_FUNCTION_29();
    v13 = swift_allocError();
    OUTLINED_FUNCTION_25_65(v13, v14);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_42_47();
    OUTLINED_FUNCTION_39_51(v15, v16, v17, v18, v19, v20, v21, v22, v25, v26, v27);
    OUTLINED_FUNCTION_45_45();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_43_43();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_272(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_7_138(v6);
  OUTLINED_FUNCTION_45_45();

  return sub_1D54F6B08(v8, v9, v10);
}

uint64_t sub_1D54F7244()
{
  OUTLINED_FUNCTION_91();
  v5 = v4;
  OUTLINED_FUNCTION_32_60();
  OUTLINED_FUNCTION_23_0();
  *v6 = v3;
  *v6 = *v1;
  v3[10] = v0;

  if (!v0)
  {
    v3[11] = v5;
    v3[12] = v2;
  }

  OUTLINED_FUNCTION_47_44();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54F736C()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_47_34();
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1(v2, v3);
}

uint64_t sub_1D54F73CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F73E8, a2);
}

uint64_t sub_1D54F73E8()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_9_125();
  v1 = OUTLINED_FUNCTION_71();
  v4 = sub_1D4ED06B0(v1, v2, v3);
  *(v0 + 64) = v4;
  if (!v4)
  {
    swift_endAccess();
    sub_1D54FE4D8();
    OUTLINED_FUNCTION_29();
    v13 = swift_allocError();
    OUTLINED_FUNCTION_25_65(v13, v14);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_42_47();
    OUTLINED_FUNCTION_39_51(v15, v16, v17, v18, v19, v20, v21, v22, v25, v26, v27);
    OUTLINED_FUNCTION_45_45();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_43_43();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_272(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_7_138(v6);
  OUTLINED_FUNCTION_45_45();

  return sub_1D54F6C8C(v8, v9, v10);
}

uint64_t sub_1D54F74F0()
{
  OUTLINED_FUNCTION_91();
  v5 = v4;
  OUTLINED_FUNCTION_32_60();
  OUTLINED_FUNCTION_23_0();
  *v6 = v3;
  *v6 = *v1;
  *(v3 + 80) = v0;

  if (!v0)
  {
    *(v3 + 96) = v5;
    *(v3 + 88) = v2;
  }

  OUTLINED_FUNCTION_47_44();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54F761C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F7638, a2);
}

uint64_t sub_1D54F7638()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_9_125();
  v1 = OUTLINED_FUNCTION_71();
  v4 = sub_1D4ED06B0(v1, v2, v3);
  *(v0 + 64) = v4;
  if (!v4)
  {
    swift_endAccess();
    sub_1D54FE4D8();
    OUTLINED_FUNCTION_29();
    v13 = swift_allocError();
    OUTLINED_FUNCTION_25_65(v13, v14);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_42_47();
    OUTLINED_FUNCTION_39_51(v15, v16, v17, v18, v19, v20, v21, v22, v25, v26, v27);
    OUTLINED_FUNCTION_45_45();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_43_43();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_272(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_7_138(v6);
  OUTLINED_FUNCTION_45_45();

  return sub_1D54F6CB4(v8, v9, v10);
}

uint64_t sub_1D54F7740()
{
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 80) = v0;

  v7 = *(v4 + 48);
  if (v0)
  {
    v8 = sub_1D52F4514;
  }

  else
  {
    *(v5 + 88) = v3;
    v8 = sub_1D54F7870;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1D54F7870()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_50();
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_1D54F78D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  return OUTLINED_FUNCTION_12_6(sub_1D54F78F0, a3);
}

uint64_t sub_1D54F78F0()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_9_125();
  v1 = OUTLINED_FUNCTION_71();
  v4 = sub_1D4ED06B0(v1, v2, v3);
  *(v0 + 72) = v4;
  if (!v4)
  {
    swift_endAccess();
    sub_1D54FE4D8();
    OUTLINED_FUNCTION_29();
    v12 = swift_allocError();
    OUTLINED_FUNCTION_25_65(v12, v13);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_42_47();
    OUTLINED_FUNCTION_39_51(v14, v15, v16, v17, v18, v19, v20, v21, v24, v25, v26);
    OUTLINED_FUNCTION_45_45();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_43_43();
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1D54F7A10;
  OUTLINED_FUNCTION_45_45();

  return sub_1D54F6E38(v6, v7, v8, v9);
}

uint64_t sub_1D54F7A10()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_1D54F7B90;
  }

  else
  {
    v6 = sub_1D54F7B34;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D54F7B34()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54F7B90()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54F7BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F7C08, a2);
}

uint64_t sub_1D54F7C08()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_9_125();
  v1 = OUTLINED_FUNCTION_71();
  v4 = sub_1D4ED06B0(v1, v2, v3);
  *(v0 + 64) = v4;
  if (!v4)
  {
    swift_endAccess();
    sub_1D54FE4D8();
    OUTLINED_FUNCTION_29();
    v13 = swift_allocError();
    OUTLINED_FUNCTION_25_65(v13, v14);
    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_42_47();
    OUTLINED_FUNCTION_39_51(v15, v16, v17, v18, v19, v20, v21, v22, v25, v26, v27);
    OUTLINED_FUNCTION_45_45();

    __asm { BRAA            X0, X16 }
  }

  OUTLINED_FUNCTION_43_43();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_272(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_7_138(v6);
  OUTLINED_FUNCTION_45_45();

  return sub_1D54F6F98(v8, v9, v10);
}

uint64_t sub_1D54F7D10()
{
  OUTLINED_FUNCTION_91();
  v5 = v4;
  OUTLINED_FUNCTION_32_60();
  OUTLINED_FUNCTION_23_0();
  *v6 = v3;
  *v6 = *v1;
  *(v3 + 80) = v0;

  if (!v0)
  {
    *(v3 + 96) = v5;
    *(v3 + 88) = v2;
  }

  OUTLINED_FUNCTION_47_44();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54F7E3C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_47_34();
  v3 = *(v0 + 88);

  return v2(v3, v1 & 1);
}

uint64_t sub_1D54F7EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F7EC8, v4);
}

uint64_t sub_1D54F7EC8()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[9];
  v2 = v0[6];
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  swift_beginAccess();
  v5 = sub_1D4ED06B0(v4, v3, *(v1 + 216));
  v0[10] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = v0[7];
    swift_endAccess();
    v14 = (v7 + *v7);
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = sub_1D54F807C;
    v9 = v0[9];
    v10 = v0[5];

    return v14(v10, v9, v6);
  }

  else
  {
    swift_endAccess();
    sub_1D54FE4D8();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v12 = v4;
    v12[1] = v3;
    swift_willThrow();
    OUTLINED_FUNCTION_55();
    v15 = v13;

    return v15();
  }
}

uint64_t sub_1D54F807C()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_1D54DFDF4;
  }

  else
  {
    v6 = sub_1D54F81A0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D54F81A0()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

const char *sub_1D54F81FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 216);
  if (!*(v6 + 16))
  {
    return swift_endAccess();
  }

  v7 = sub_1D4F15A78();
  if ((v8 & 1) == 0)
  {
    return swift_endAccess();
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  swift_endAccess();

  if (sub_1D54F8E68())
  {
    v10 = sub_1D54F972C();
    sub_1D54EF4CC(v10);
    OUTLINED_FUNCTION_17_88();
    if (!v13)
    {
      v13 = v12 == 14 && v11 == 16;
      if (!v13)
      {
        OUTLINED_FUNCTION_3_192();
        swift_beginAccess();
        v14 = sqlite3_extended_errcode(*(v3 + 136));
        result = sqlite3_errstr(v10);
        if (result)
        {
          sub_1D5614E98();
          OUTLINED_FUNCTION_24_71();
          if (!sqlite3_errmsg(*(v3 + 136)))
          {
            __break(1u);
            return swift_endAccess();
          }

          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_34;
      }
    }
  }

  else
  {
    v16 = sub_1D54F634C();
    sub_1D54EF4CC(v16);
    OUTLINED_FUNCTION_17_88();
    if (v13)
    {
      goto LABEL_31;
    }

    if (v18 == 14 && v17 == 16)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_3_192();
    swift_beginAccess();
    v14 = sqlite3_extended_errcode(*(v3 + 136));
    result = sqlite3_errstr(v16);
    if (!result)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    sub_1D5614E98();
    OUTLINED_FUNCTION_24_71();
    if (sqlite3_errmsg(*(v3 + 136)))
    {
LABEL_29:
      v27 = sub_1D5614E98();
      v29 = v28;
      v30 = sub_1D54EF4CC(v14);
      v31 = v30;
      v32 = HIDWORD(v30);
      sub_1D51D2BD0();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      *v33 = v14;
      *(v33 + 4) = v31;
      *(v33 + 8) = v32;
      *(v33 + 16) = a2;
      *(v33 + 24) = a1;
      *(v33 + 32) = v27;
      *(v33 + 40) = v29;
      swift_willThrow();
    }

    __break(1u);
  }

  v20 = *(v9 + 32);
  v21 = *(v9 + 40);
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();

  v22 = sub_1D54F9F70(v20, v21);
  swift_endAccess();

  if (!v22)
  {
    v34 = *(v9 + 32);
    v35 = *(v9 + 40);
    OUTLINED_FUNCTION_26_75();
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    sub_1D54FAFF0(v36, 0, 1, v34, v35);
    sub_1D54FAE84(v34, v35);

    sub_1D54FA7FC();
    swift_endAccess();
LABEL_31:
    OUTLINED_FUNCTION_26_75();
    swift_beginAccess();
    sub_1D5515D2C();
    swift_endAccess();
  }

  v23 = sub_1D54F634C();
  sub_1D54EF4CC(v23);
  OUTLINED_FUNCTION_17_88();
  if (v13)
  {
    goto LABEL_31;
  }

  if (v25 == 14 && v24 == 16)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_3_192();
  swift_beginAccess();
  v14 = sqlite3_extended_errcode(*(v3 + 136));
  result = sqlite3_errstr(v23);
  if (!result)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  sub_1D5614E98();
  OUTLINED_FUNCTION_24_71();
  result = sqlite3_errmsg(*(v3 + 136));
  if (result)
  {
    goto LABEL_29;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1D54F8564(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), int (*a4)(void))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_147();
    _s10ConnectionCMa();
    OUTLINED_FUNCTION_0_254();
    sub_1D54FE58C(v8, v9, &unk_1D566B020);
    sub_1D5615348();

    if (*(v4 + 88) == 101 && *(v4 + 56))
    {

      v11 = a3(v10);

      return v11;
    }

    else
    {
      OUTLINED_FUNCTION_3_192();
      swift_beginAccess();
      return a4(*(v4 + 48));
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54F8678()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7990, &qword_1D566D690);
  swift_allocObject();
  result = sub_1D5616428();
  qword_1EDD76C98 = result;
  return result;
}

uint64_t sub_1D54F86D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v52[1] = *MEMORY[0x1E69E9840];
  v43 = *v5;
  v12 = sub_1D560BAB8();
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = MEMORY[0x1E69E7CC0];
  swift_weakInit();
  *(v6 + 88) = 0;
  swift_weakAssign();
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  v44 = a4;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  v15 = sub_1D5614DE8();
  v16 = v15 + 32;
  v47 = v15;
  v17 = *(v15 + 16);
  v52[0] = 0;

  v48 = a5;
  v18 = a1;
  v19 = v17;

  v20 = v17;
  v21 = v49;
  sub_1D54E4D58(v18, v16, v16, v20, v6, v52);
  if (v21)
  {
    swift_beginAccess();
    sqlite3_finalize(*(v6 + 48));
    swift_willThrow();
  }

  else
  {
    v49 = v14;
    if (v52[0])
    {
      v42 = v19;
      v22 = &v52[0][-v16];
      if (v22 < sub_1D5614E38())
      {

        v23 = sub_1D54F8AE8(v22, a2, a3);
        v24 = MEMORY[0x1DA6EABE0](v23);
        v41 = v25;

        v26 = v41;
        *(v6 + 32) = v24;
        *(v6 + 40) = v26;

        v27 = v42 - v22;
        if (__OFSUB__(v42, v22))
        {
          __break(1u);
        }

        v28 = sub_1D54F8BA8(v27, a2, a3);
        v29 = MEMORY[0x1DA6EABE0](v28);
        v31 = v30;

        v50 = v29;
        v51 = v31;
        v32 = v49;
        sub_1D560BAA8();
        sub_1D4F53278();
        v33 = sub_1D5615958();
        v35 = v34;
        (*(v45 + 8))(v32, v46);

        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v33 & 0xFFFFFFFFFFFFLL;
        }

        v37 = v44;
        if (v36)
        {
          swift_allocObject();
          v38 = v48;

          *(v6 + 56) = sub_1D54F86D4(v39, v33, v35, v37, v38);
        }

        else
        {
        }
      }
    }

    swift_beginAccess();
    *(v6 + 64) = sqlite3_bind_parameter_count(*(v6 + 48));
  }

  return v6;
}

uint64_t sub_1D54F8AE8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D5614E58();
    v3 = sub_1D5614F88();

    return v3;
  }

  return result;
}

unint64_t sub_1D54F8BA8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    result = sub_1D5614E58();
    if (v4)
    {
      result = 15;
    }

    if (4 * v3 >= result >> 14)
    {
      v5 = sub_1D5614F88();

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54F8C80(uint64_t a1, uint64_t a2)
{

  v5 = sub_1D54F1774();
  v7 = v6;
  v8 = sub_1D54F1774();
  v10 = v9;
  swift_allocObject();
  v11 = sub_1D54F86D4(a1, v5, v7, v8, v10);
  if (!v2)
  {
    sub_1D54F8D70(a2);
  }

  sub_1D51D2984(a2);

  return v11;
}

uint64_t sub_1D54F8D70(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_147();
    _s10ConnectionCMa();
    OUTLINED_FUNCTION_0_254();
    sub_1D54FE58C(v3, v4, &unk_1D566B020);
    OUTLINED_FUNCTION_6_150();
    sub_1D5615348();

    sub_1D54F9358();
    if (*(a1 + 32))
    {
      v5 = *(a1 + 24);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }

    sub_1D54F9440(v5, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54F8E68()
{

  v1 = sub_1D5614F18();

  if (v1)
  {
    return 0;
  }

  v2 = sub_1D5614F18();

  if (v2)
  {
    return 0;
  }

  if (*(v0 + 56))
  {

    sub_1D54F8E68();
  }

  return 1;
}

uint64_t sub_1D54F8F24()
{
  OUTLINED_FUNCTION_3_192();
  result = swift_beginAccess();
  if (*(v0 + 48))
  {
    __break(1u);
  }

  else
  {

    swift_weakDestroy();
    v2 = *(v0 + 56);
    *(v0 + 56) = 0;

    if (v2)
    {
      do
      {

        if (!swift_isUniquelyReferenced_native())
        {
          break;
        }

        v3 = *(v2 + 56);
        swift_retain_n();

        v2 = v3;
      }

      while (v3);
    }

    return v0;
  }

  return result;
}

uint64_t sub_1D54F8FDC()
{
  sub_1D54F8F24();

  return MEMORY[0x1EEE6BDC0](v0, 92, 7);
}

uint64_t sub_1D54F9034(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1D54F90E8(a2, a3, a4 & 1, a5);
  if (!v8)
  {
    v12 = result;
    swift_beginAccess();
    result = *(v7 + 48);
    if (result)
    {
      return (*(a7 + 8))(result, v12, a6, a7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D54F90E8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    swift_beginAccess();
    v7 = *(v4 + 48);
    v8 = sub_1D5614DE8();
    v9 = sqlite3_bind_parameter_index(v7, (v8 + 32));

    if (v9 > 0)
    {
      return v9;
    }

    sub_1D5615B68();

    strcpy(v15, "Position name ");
    HIBYTE(v15[1]) = -18;
    MEMORY[0x1DA6EAC70](v5, a2);
    MEMORY[0x1DA6EAC70](0xD00000000000001DLL, 0x80000001D568FC20);
    v13 = v15[0];
    v12 = v15[1];
    goto LABEL_9;
  }

  a2 = result + a4;
  if (!__OFADD__(result, a4))
  {
    if (a2 < 1)
    {
      v12 = 0x80000001D568FC40;
      sub_1D54FE484();
      swift_allocError();
      v13 = 0xD00000000000004ELL;
      goto LABEL_11;
    }

    if (*(v4 + 64) >= a2)
    {
      return a2;
    }

    sub_1D5615B68();

    v15[2] = 0x6E6F697469736F50;
    v15[3] = 0xEF207865646E6920;
    v15[0] = a2;
    a2 = MEMORY[0x1E69E6590];
    v10 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v10);

    MEMORY[0x1DA6EAC70](0xD00000000000001ELL, 0x80000001D568FC90);
    v15[0] = *(v4 + 64);
    v11 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v11);

    v13 = 0x6E6F697469736F50;
    v12 = 0xEF207865646E6920;
LABEL_9:
    sub_1D54FE484();
    swift_allocError();
LABEL_11:
    *v14 = v13;
    v14[1] = v12;
    swift_willThrow();
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54F9358()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_147();
    _s10ConnectionCMa();
    OUTLINED_FUNCTION_0_254();
    sub_1D54FE58C(v2, v3, &unk_1D566B020);
    OUTLINED_FUNCTION_6_150();
    sub_1D5615348();

    *(v0 + 72) = MEMORY[0x1E69E7CC0];

    if (*(v0 + 56))
    {

      sub_1D54F9358();
    }

    OUTLINED_FUNCTION_3_192();
    swift_beginAccess();
    return sqlite3_clear_bindings(*(v0 + 48));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54F9440(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;

  v6 = 0;
  v34 = *(a1 + 16);
  v24 = a1;
  for (i = a1 + 32; ; i += 88)
  {
    if (v34 == v6)
    {
      v6 = v34;
      goto LABEL_10;
    }

    sub_1D54FE3C4(i, v33);
    if (v6 == v2[8])
    {
      break;
    }

    sub_1D54FE3C4(v33, v26);
    v8 = v26[0];
    v9 = v26[1];
    v10 = v27;
    if (v29 == 1)
    {
    }

    sub_1D4F69344(v28, v30);
    v12 = v31;
    v11 = v32;
    v13 = __swift_project_boxed_opaque_existential_1(v30, v31);
    sub_1D54F9034(v13, v8, v9, v10, a2, v12, v11);
    sub_1D54FE420(v33);
    sub_1D54FE474(v8, v9, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v30);
    ++v6;
    if (v3)
    {
      return result;
    }
  }

  result = sub_1D54FE420(v33);
LABEL_10:
  if (v2[7])
  {
    sub_1D54F62E0(v6, v34, v24);
    v15 = v14;
    v17 = v16;
    if (v16)
    {
      sub_1D56161E8();
      swift_unknownObjectRetain_n();

      v22 = swift_dynamicCastClass();
      if (!v22)
      {
        swift_unknownObjectRelease();
        v22 = MEMORY[0x1E69E7CC0];
      }

      v23 = *(v22 + 16);

      if (__OFSUB__(v17 >> 1, v15))
      {
        __break(1u);
      }

      else if (v23 == (v17 >> 1) - v15)
      {
        v21 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v21)
        {
LABEL_21:
          sub_1D54F9440(v21, -v6);
        }

        v21 = MEMORY[0x1E69E7CC0];
LABEL_20:
        swift_unknownObjectRelease();
        goto LABEL_21;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v18 = OUTLINED_FUNCTION_85_0();
    sub_1D5240214(v18, v19, v15, v17);
    v21 = v20;
    goto LABEL_20;
  }

  return result;
}

char *sub_1D54F968C()
{
  v4 = 0;
  OUTLINED_FUNCTION_3_192();
  swift_beginAccess();
  result = sqlite3_expanded_sql(*(v0 + 48));
  if (result)
  {
    result = sub_1D5614D28();
    if (v2)
    {
      v4 = result;
    }

    else
    {
      result = 0;
    }

    if (*(v0 + 56))
    {

      v3 = sub_1D54F968C();
      MEMORY[0x1DA6EAC70](v3);

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54F972C()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_147();
    _s10ConnectionCMa();
    OUTLINED_FUNCTION_0_254();
    sub_1D54FE58C(v2, v3, &unk_1D566B020);
    OUTLINED_FUNCTION_6_150();
    sub_1D5615348();

    *(v0 + 88) = 0;
    if (*(v0 + 56))
    {

      sub_1D54F972C();
    }

    OUTLINED_FUNCTION_3_192();
    swift_beginAccess();
    return sqlite3_reset(*(v0 + 48));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D54F9828(uint64_t a1)
{
  *(v2 + 232) = a1;
  *(v2 + 240) = v1;
  return OUTLINED_FUNCTION_12_6(sub_1D54F9844, v1);
}

void sub_1D54F9844()
{
  sub_1D54F1774();
  OUTLINED_FUNCTION_218_0();
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  v3 = sub_1D54F9F70(v0, v1);

  if (!v3)
  {
    v32 = *(v2 + 240);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v2 + 248) = Strong;
    *(v2 + 256) = *(v32 + 128);
    if (Strong)
    {
      if (*(*(v2 + 232) + 32))
      {
      }

      else
      {
        v34 = MEMORY[0x1E69E7CC0];
      }

      *(v2 + 264) = v34;
      v35 = *(v34 + 16);
      *(v2 + 272) = v35;
      if (v35)
      {
        v36 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_52_36(v36);
          if (v39)
          {
            break;
          }

          sub_1D54FE3C4(v38 + 88 * v37 + 32, v2 + 16);
          if (*(v2 + 96))
          {
            sub_1D54FE474(*(v2 + 16), *(v2 + 24), *(v2 + 32));
            *(v2 + 288) = *(v2 + 88);
            __swift_destroy_boxed_opaque_existential_1((v2 + 40));
            OUTLINED_FUNCTION_12_103();
            v46 = swift_task_alloc();
            *(v2 + 296) = v46;
            *v46 = v2;
            OUTLINED_FUNCTION_15_94(v46);
            OUTLINED_FUNCTION_89();

            __asm { BRAA            X2, X16 }
          }

          sub_1D54FE420(v2 + 16);
          v36 = *(v2 + 280) + 1;
          if (v36 == *(v2 + 272))
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        goto LABEL_34;
      }

LABEL_22:

      swift_unknownObjectRelease();
    }

    v40 = *(v2 + 232);
    v41 = *(v2 + 240);
    _s9StatementCMa();

    sub_1D51D2F74(v40, v2 + 104);
    sub_1D54F8C80(v41, v40);
LABEL_27:
    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_89();

    __asm { BRAA            X2, X16 }
  }

  v4 = *(v2 + 240);
  swift_endAccess();
  v5 = sub_1D54F1774();
  v7 = v6;
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  v9 = *(v4 + 160);
  v8 = *(v4 + 168);
  *(v2 + 216) = v5;
  *(v2 + 224) = v7;
  v10 = swift_task_alloc();
  v10[2] = v9;
  v10[3] = v8;
  v10[4] = v2 + 216;
  v11 = sub_1D523FA04(sub_1D54FE648, v10, v8);
  v13 = v12;
  v15 = v14;

  if ((v13 & 1) == 0)
  {
    sub_1D54FC91C(v11, v15);

    sub_1D54FCAE0(v11);
  }

  sub_1D54FA7FC();
  swift_endAccess();
  v16 = sub_1D54F9358();
  sub_1D54EF4CC(v16);
  OUTLINED_FUNCTION_17_88();
  if (v19 || (v18 == 14 ? (v19 = v17 == 16) : (v19 = 0), v19))
  {
    sub_1D54F8D70(*(v2 + 232));
    goto LABEL_27;
  }

  v20 = *(v2 + 240);
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  v21 = sqlite3_extended_errcode(*(v20 + 136));
  if (!sqlite3_errstr(v16))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v22 = sub_1D5614E98();
  v24 = v23;
  if (sqlite3_errmsg(*(v20 + 136)))
  {
    v25 = sub_1D5614E98();
    v27 = v26;
    v28 = sub_1D54EF4CC(v21);
    v29 = v28;
    v30 = HIDWORD(v28);
    sub_1D51D2BD0();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v31 = v21;
    *(v31 + 4) = v29;
    *(v31 + 8) = v30;
    *(v31 + 16) = v22;
    *(v31 + 24) = v24;
    *(v31 + 32) = v25;
    *(v31 + 40) = v27;
    swift_willThrow();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_89();

    __asm { BRAA            X1, X16 }
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_1D54F9C54()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v2 + 304) = v0;

  if (v0)
  {
    v6 = *(v2 + 240);

    v7 = sub_1D54F9F08;
    v8 = v6;
  }

  else
  {
    v8 = *(v2 + 240);
    v7 = sub_1D54F9D6C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

void sub_1D54F9D6C()
{
  OUTLINED_FUNCTION_91();

  while (1)
  {
    v1 = *(v0 + 280) + 1;
    if (v1 == *(v0 + 272))
    {
      break;
    }

    OUTLINED_FUNCTION_52_36(v1);
    if (v4)
    {
      __break(1u);
      return;
    }

    sub_1D54FE3C4(v3 + 88 * v2 + 32, v0 + 16);
    if (*(v0 + 96))
    {
      sub_1D54FE474(*(v0 + 16), *(v0 + 24), *(v0 + 32));
      *(v0 + 288) = *(v0 + 88);
      __swift_destroy_boxed_opaque_existential_1((v0 + 40));
      OUTLINED_FUNCTION_12_103();
      v11 = v8;
      v9 = swift_task_alloc();
      *(v0 + 296) = v9;
      *v9 = v0;
      v10 = OUTLINED_FUNCTION_15_94(v9);

      v11(v10);
      return;
    }

    sub_1D54FE420(v0 + 16);
  }

  swift_unknownObjectRelease();
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  _s9StatementCMa();

  sub_1D51D2F74(v5, v0 + 104);
  sub_1D54F8C80(v6, v5);
  OUTLINED_FUNCTION_50();

  v7();
}

uint64_t sub_1D54F9F08()
{
  OUTLINED_FUNCTION_60();
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_55();

  return v0();
}

unint64_t sub_1D54F9F70(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D54FAB28(a1, a2, v2[2], v2[3], v2[4]);
  if (v5)
  {
  }

  sub_1D54FAE84(a1, a2);
  return v5;
}

void *sub_1D54F9FD0(uint64_t a1)
{
  sub_1D4EF1814(0xD000000000000040, 0x80000001D567E560, 0xFuLL);
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = a1;
  return v1;
}

void *sub_1D54FA01C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v6;
  v8[6] = v5;
  swift_retain_n();

  sub_1D54FA208(0, 0, v3, 0, 0, &unk_1D566D688, v8);

  sub_1D4E6C9CC(v3, &qword_1EC7EB710, &qword_1D561F440);

  return v0;
}

uint64_t sub_1D54FA16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D54FA190, a4, 0);
}

uint64_t sub_1D54FA190()
{
  OUTLINED_FUNCTION_80();
  sub_1D54F81FC(*(v0 + 24), *(v0 + 32));
  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D54FA208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24[0] = a5;
  v24[1] = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v24 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_1D5615338();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1D5155C5C(a3, v13);
  v18 = sub_1D5615458();
  if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
  {
    sub_1D4E6C9CC(v13, &qword_1EC7EB710, &qword_1D561F440);
  }

  else
  {
    sub_1D5615448();
    (*(*(v18 - 8) + 8))(v13, v18);
  }

  if (a2)
  {
    v19 = sub_1D5614DE8() + 32;
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v26[0] = 0;
      v26[1] = 0;
      v20 = v26;
      v26[2] = v14;
      v26[3] = v16;
    }

    else
    {
      v20 = 0;
    }

    if (a4 != 1)
    {
      v25[0] = 6;
      v25[1] = v20;
      v25[2] = a4;
      v25[3] = v24[0];
      v20 = v25;
    }

    v24[2] = 7;
    v24[3] = v20;
    v24[4] = v19;
    v22 = swift_task_create();

    if (isCurrentExecutorWithFlags)
    {
LABEL_16:
      swift_task_immediate();
    }
  }

  else
  {
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v27[0] = 0;
      v27[1] = 0;
      v21 = v27;
      v27[2] = v14;
      v27[3] = v16;
    }

    else
    {
      v21 = 0;
    }

    if (a4 != 1)
    {
      v26[4] = 6;
      v26[5] = v21;
      v26[6] = a4;
      v26[7] = v24[0];
    }

    v22 = swift_task_create();
    if (isCurrentExecutorWithFlags)
    {
      goto LABEL_16;
    }
  }

  swift_unknownObjectRelease();

  return v22;
}

uint64_t sub_1D54FA4E0()
{
  sub_1D54FA01C();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

double sub_1D54FA53C@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t sub_1D54FA54C()
{
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1D4E6E494;

  return sub_1D54FA16C(v3, v4, v5, v6, v7, v8);
}

void sub_1D54FA610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1D54F8E68())
  {
    v8 = sub_1D54F972C();
    sub_1D54EF4CC(v8);
    OUTLINED_FUNCTION_17_88();
    if (v11 || (v10 == 14 ? (v11 = v9 == 16) : (v11 = 0), v11))
    {
      sub_1D54F1774();
      OUTLINED_FUNCTION_24_71();
      OUTLINED_FUNCTION_26_75();
      swift_beginAccess();

      sub_1D54FAFF0(a1, 0, 1, v8, a3);
      sub_1D54FAE84(v8, a3);

      sub_1D54FA7FC();
      swift_endAccess();
      return;
    }

    OUTLINED_FUNCTION_3_192();
    swift_beginAccess();
    v12 = sqlite3_extended_errcode(*(a2 + 136));
    if (!sqlite3_errstr(v8))
    {
      __break(1u);
      goto LABEL_21;
    }

    v13 = sub_1D5614E98();
    v15 = v14;
    if (sqlite3_errmsg(*(a2 + 136)))
    {
LABEL_17:
      v21 = sub_1D5614E98();
      v23 = v22;
      sub_1D54EF4CC(v12);
      OUTLINED_FUNCTION_40_54();
      sub_1D51D2BD0();
      OUTLINED_FUNCTION_29();
      swift_allocError();
      *v24 = v12;
      *(v24 + 4) = v3;
      *(v24 + 8) = v4;
      *(v24 + 16) = v13;
      *(v24 + 24) = v15;
      *(v24 + 32) = v21;
      *(v24 + 40) = v23;
      swift_willThrow();
      return;
    }

    __break(1u);
  }

  v16 = sub_1D54F634C();
  sub_1D54EF4CC(v16);
  OUTLINED_FUNCTION_17_88();
  if (!v11 && (v18 != 14 || v17 != 16))
  {
    OUTLINED_FUNCTION_3_192();
    swift_beginAccess();
    v12 = sqlite3_extended_errcode(*(a2 + 136));
    if (sqlite3_errstr(v16))
    {
      v13 = sub_1D5614E98();
      v15 = v20;
      if (sqlite3_errmsg(*(a2 + 136)))
      {
        goto LABEL_17;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_1D54FA7FC()
{
  v2 = v0;
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  if ((v4 & 1) == 0)
  {
    v5 = v0 + 32;
    v6 = *(v0 + 32);
    v7 = *(v6 + 16);
    if (v3 < v7)
    {
      v8 = v7 - v3;
      if (__OFSUB__(v7, v3))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v9 = *v0;
      if (*v0)
      {
        v10 = *(v0 + 8);
        v11 = *(v2 + 16);
        v1 = *(v2 + 24);
        sub_1D4EA73A4(*v2, *(v2 + 8));

        v37 = v8;
        v39 = sub_1D54FABAC(v8, v11, v1, v6);
        v12 = *(v39 + 16);
        if (v12)
        {
          v13 = (v39 + 48);
          do
          {
            v14 = *(v13 - 2);
            v1 = *(v13 - 1);
            v15 = *v13;
            v13 += 5;
            v44 = v14;
            v45 = v1;
            v41[0] = v15;

            v9(&v44, v41);

            --v12;
          }

          while (v12);
        }

        sub_1D4EA7420(v9, v10);

        v8 = v37;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_34;
      }

      if (*(v6 + 16) < v8)
      {
        __break(1u);
        goto LABEL_38;
      }

      sub_1D54FD370(v8);
      sub_1D54FD390(v8);
    }
  }

  if ((*(v2 + 48) & 1) == 0)
  {
    v16 = *(v2 + 40);
    v8 = *v2;
    v17 = *(v2 + 8);
    v1 = *(v2 + 16);
    v6 = *(v2 + 24);
    v5 = *(v2 + 32);
    v43 = 0;
    v42 = v4;
    v44 = v8;
    v45 = v17;
    v46 = v1;
    v47 = v6;
    v48 = v5;
    v49 = v16;
    v50 = 0;
    v51 = v3;
    v52 = v4;
    v18 = sub_1D54FAAE8();
    if (v16 < v18)
    {
      v19 = v18 - v16;
      if (!__OFSUB__(v18, v16))
      {
        v20 = *(v5 + 16);
        if (v20)
        {
          v21 = 0;
          v22 = v20 - 1;
          v23 = (v5 + 24 * v20 + 24);
          while (1)
          {
            if ((*v23 & 1) == 0)
            {
              v24 = *(v23 - 1);
              v25 = __OFSUB__(v19, v24);
              v19 -= v24;
              if (v25)
              {
                goto LABEL_39;
              }
            }

            v23 -= 24;
            v26 = v21 + 1;
            if (v22 == v21++ || v19 < 1)
            {
              if (!v8)
              {
                goto LABEL_29;
              }

              goto LABEL_25;
            }
          }
        }

LABEL_35:
        v26 = 0;
        if (v8)
        {
LABEL_25:
          v28 = OUTLINED_FUNCTION_85_0();
          sub_1D4EA73A4(v28, v29);

          v38 = sub_1D54FABAC(v26, v1, v6, v5);
          v30 = *(v38 + 16);
          if (v30)
          {
            v31 = (v38 + 48);
            do
            {
              v32 = *(v31 - 2);
              v33 = *(v31 - 1);
              v34 = *v31;
              v31 += 5;
              v41[0] = v32;
              v41[1] = v33;
              v40 = v34;

              (v8)(v41, &v40);

              --v30;
            }

            while (v30);
          }

          v35 = OUTLINED_FUNCTION_85_0();
          sub_1D4EA7420(v35, v36);
        }

LABEL_29:
        if (*(v5 + 16) >= v26)
        {
          sub_1D54FD370(v26);
          sub_1D54FD390(v26);
          return;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        return;
      }

      goto LABEL_33;
    }
  }
}

uint64_t sub_1D54FAAE8()
{
  result = 0;
  v2 = *(v0 + 32);
  v3 = (v2 + 48);
  v4 = *(v2 + 16) + 1;
  while (--v4)
  {
    v5 = *v3;
    v6 = *(v3 - 1);
    v3 += 24;
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = v6;
    }

    v8 = __OFADD__(result, v7);
    result += v7;
    if (v8)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

unint64_t sub_1D54FAB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10[0] = a1;
  v10[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v10;
  v6 = sub_1D523FA04(sub_1D54FE648, v9, a4);
  if (v7)
  {
    return 0;
  }

  else
  {
    return sub_1D52403F8(v6, a5);
  }
}

unint64_t sub_1D54FABAC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v4 = a4;
  if (result)
  {
    if (*(a4 + 16) >= result)
    {
      v5 = result;
    }

    else
    {
      v5 = *(a4 + 16);
    }

    v37 = MEMORY[0x1E69E7CC0];
    v6 = result;
    result = sub_1D4F03BD4(0, v5, 0);
    v7 = v6;
    v29 = 0;
    v30 = v4;
    v8 = 0;
    v9 = v37;
    v31 = *(v4 + 16);
    v10 = a3 + 40;
LABEL_7:
    v11 = (v10 + 16 * v8);
    v12 = 24 * v8;
    while (v8 < v31)
    {
      if (v8 >= *(a3 + 16))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= *(v4 + 16))
      {
        goto LABEL_32;
      }

      v13 = *(v11 - 1);
      v14 = *v11;
      v16 = *(v4 + v12 + 32);
      v15 = *(v4 + v12 + 40);
      v17 = *(v4 + v12 + 48);
      v18 = *(v9 + 16);
      v19 = v7;
      if (v18 >= v7)
      {
        v22 = v9;

        if (v29 >= v18)
        {
          goto LABEL_34;
        }

        v23 = v9 + 40 * v29;
        ++v8;
        *(v23 + 32) = v13;
        *(v23 + 40) = v14;
        *(v23 + 48) = v16;
        *(v23 + 56) = v15;
        *(v23 + 64) = v17;

        if ((v29 + 1) < v19)
        {
          v24 = v29 + 1;
        }

        else
        {
          v24 = 0;
        }

        v29 = v24;
        v9 = v22;
        v7 = v19;
        v4 = v30;
        v10 = a3 + 40;
        goto LABEL_7;
      }

      v33 = v12;
      v34 = v11;
      v20 = *(v9 + 24);
      v35 = v18 + 1;

      if (v18 >= v20 >> 1)
      {
        result = sub_1D4F03BD4((v20 > 1), v35, 1);
      }

      *(v9 + 16) = v35;
      v21 = v9 + 40 * v18;
      *(v21 + 32) = v13;
      *(v21 + 40) = v14;
      *(v21 + 48) = v16;
      *(v21 + 56) = v15;
      *(v21 + 64) = v17;
      v11 = v34 + 2;
      v12 = v33 + 24;
      ++v8;
      v4 = v30;
      v7 = v19;
    }

    if (!v29)
    {
      return v9;
    }

    v25 = *(v9 + 16);
    v36 = MEMORY[0x1E69E7CC0];
    result = sub_1D4F03BD4(0, v25, 0);
    if (v25 >= v29)
    {
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      v26 = *(v9 + 16);
      if (v26 >= v29 && v26 >= v25)
      {

        sub_1D54FD238(v28, v9 + 32, v29, (2 * v25) | 1);
        sub_1D54FD238(v9, v9 + 32, 0, (2 * v29) | 1);
        return v36;
      }

      goto LABEL_37;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    return result;
  }

  return MEMORY[0x1E69E7CC0];
}

void sub_1D54FAE84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v7 = v2[2];
  v6 = v2[3];
  v25[0] = a1;
  v25[1] = a2;
  v24[2] = v7;
  v24[3] = v6;
  v24[4] = v25;
  v8 = sub_1D523FA04(sub_1D54FE3A0, v24, v6);
  if ((v10 & 1) == 0)
  {
    v11 = v8;
    sub_1D54FC91C(v8, v9);

    sub_1D54FCAE0(v11);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v18 = sub_1D54FD6F0(a1, a2, 0);
    v20 = v19;
    v21 = v2[4];
    if (v18)
    {
      if (*(v21 + 16) >= v19)
      {
        if ((v19 & 0x8000000000000000) == 0)
        {
          sub_1D54FDBC4(v19, v19, v13, v15, v17 & 1);
          return;
        }

        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    sub_1D52403F8(v19, v3[4]);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D54FBD34();
      v21 = v22;
    }

    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

    if (v20 >= *(v21 + 16))
    {
LABEL_15:
      __break(1u);
      return;
    }

    v23 = v21 + 24 * v20;
    *(v23 + 32) = v13;
    *(v23 + 40) = v15;
    *(v23 + 48) = v17 & 1;

    v3[4] = v21;
  }
}

void sub_1D54FAFF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v12 = *v5;
  v11 = v5[1];
  v29[0] = a4;
  v29[1] = a5;
  v28[2] = v12;
  v28[3] = v11;
  v28[4] = v29;
  v13 = sub_1D523FA04(sub_1D54FE648, v28, v11);
  v15 = v14;
  if (v16)
  {
    if (a1)
    {
      sub_1D54FBDC0(a4, a5);

      v19 = v5[2];
      v17 = v5 + 2;
      v18 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D4F03BB4(0, *(v18 + 16) + 1, 1);
        v18 = *v17;
      }

      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1D4F03BB4(v21 > 1, v22 + 1, 1);
        v18 = *v17;
      }

      *(v18 + 16) = v22 + 1;
      v23 = v18 + 24 * v22;
      *(v23 + 32) = a1;
      *(v23 + 40) = a2;
      *(v23 + 48) = a3 & 1;
      *v17 = v18;
    }

    else
    {
    }
  }

  else
  {
    v24 = v13;

    if (a1)
    {
      v25 = v5[2];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D54FBD34();
        v25 = v26;
      }

      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v24 < *(v25 + 16))
      {
        v27 = v25 + 24 * v24;
        *(v27 + 32) = a1;
        *(v27 + 40) = a2;
        *(v27 + 48) = a3 & 1;

        v5[2] = v25;
        return;
      }

      __break(1u);
    }

    else
    {
      sub_1D54FC91C(v24, v15);

      sub_1D54FCAE0(v24);
    }
  }
}

void *sub_1D54FB1A8(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, MEMORY[0x1E69E7CC0]);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_1D5240178(a1);

      objc_setAssociatedObject(v2, MEMORY[0x1E69E7CC0], v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

void sub_1D54FB264()
{
  OUTLINED_FUNCTION_47();
  v11 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
    goto LABEL_22;
  }

  v0 = v10;
  v4 = v9;
  v3 = v8;
  v12 = *v1;
  v1 = (*v1 & 0xFFFFFFFFFFFFFF8);
  v5 = v1 + 4;
  v2 = &v1[v7 + 4];
  sub_1D54FE52C();
  v13 = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v11)
  {
    goto LABEL_12;
  }

  v6 = v12 >> 62;
  if (!(v12 >> 62))
  {
    v15 = v1[2];
    goto LABEL_6;
  }

LABEL_23:
  v15 = sub_1D5615A98();
LABEL_6:
  if (__OFSUB__(v15, v3))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1D4F036F8(&v5[v3], v15 - v3, (v2 + 8 * v4));
  if (v6)
  {
    v13 = sub_1D5615A98();
  }

  else
  {
    v13 = v1[2];
  }

  if (__OFADD__(v13, v11))
  {
    goto LABEL_25;
  }

  v1[2] = v13 + v11;
LABEL_12:
  if (v4 < 1)
  {
    OUTLINED_FUNCTION_46();

    return;
  }

  MEMORY[0x1EEE9AC00](v13);
  if (v0 < 0 || (v0 & 0x4000000000000000) != 0)
  {
LABEL_26:
    sub_1D54FE250(v0, sub_1D54FE570);
    goto LABEL_17;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10) == v4)
  {
    swift_arrayInitWithCopy();
LABEL_17:

    OUTLINED_FUNCTION_46();
    return;
  }

  __break(1u);
}

uint64_t sub_1D54FB408(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *v6;
  v13 = v12 + 32 + 24 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD0, &qword_1D561DAA8);
  result = swift_arrayDestroy();
  v14 = a3 - v7;
  if (__OFSUB__(a3, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = *(v12 + 16);
  if (__OFSUB__(v15, a2))
  {
    goto LABEL_16;
  }

  result = sub_1D4F03718((v12 + 32 + 24 * a2), v15 - a2, (v13 + 24 * a3));
  v16 = *(v12 + 16);
  v17 = __OFADD__(v16, v14);
  v18 = v16 + v14;
  if (v17)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v12 + 16) = v18;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v13 = a4;
    *(v13 + 8) = a5;
    *(v13 + 16) = a6 & 1;
    if (v13 + 24 < (v13 + 24 * a3))
    {

      __break(1u);
    }
  }

  return result;
}

void sub_1D54FB55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  swift_arrayDestroy();
  v13 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  sub_1D4EA729C((v11 + 32 + 16 * a2), v14 - a2, &v12[2 * a3]);
  v15 = *(v11 + 16);
  v16 = __OFADD__(v15, v13);
  v17 = v15 + v13;
  if (v16)
  {
LABEL_17:
    __break(1u);
    return;
  }

  *(v11 + 16) = v17;
LABEL_7:
  if (a3 < 1)
  {
  }

  else
  {
    *v12 = a4;
    v12[1] = a5;
    if (v12 + 2 < &v12[2 * a3])
    {

      __break(1u);
    }
  }
}

void sub_1D54FB678()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_2_187();
  type metadata accessor for MusicSuggestedPivotRound(v5);
  OUTLINED_FUNCTION_5_147();
  v7 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_4_148(v6);
  if (__OFSUB__(v1, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_38_48();
  if (v1 != v7)
  {
    OUTLINED_FUNCTION_36_61();
    if (!v8)
    {
      v9 = OUTLINED_FUNCTION_35_63();
      sub_1D4F03754(v9, v10, v11);
      OUTLINED_FUNCTION_37_50();
      if (!v8)
      {
        *(v4 + 16) = v12;
        goto LABEL_7;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  if (v1 < 1 || v3 < 1)
  {
LABEL_15:
    sub_1D4E6C9CC(v0, &qword_1EC7EF858, &qword_1D56331D8);
    OUTLINED_FUNCTION_46();
    return;
  }

  v14 = 0;
  while ((v14 & 1) == 0)
  {
    v15 = OUTLINED_FUNCTION_71();
    sub_1D54FE5D4(v15, v16);
    OUTLINED_FUNCTION_14_95();
    if (v17)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  __break(1u);
}

void sub_1D54FB780()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_2_187();
  _s14TransientEntryVMa(v5);
  OUTLINED_FUNCTION_5_147();
  v7 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_4_148(v6);
  if (__OFSUB__(v1, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_38_48();
  if (v1 != v7)
  {
    OUTLINED_FUNCTION_36_61();
    if (!v8)
    {
      v9 = OUTLINED_FUNCTION_35_63();
      sub_1D4F0376C(v9, v10, v11);
      OUTLINED_FUNCTION_37_50();
      if (!v8)
      {
        *(v4 + 16) = v12;
        goto LABEL_7;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  if (v1 < 1 || v3 < 1)
  {
LABEL_15:
    sub_1D4E6C9CC(v0, &qword_1EC7F5E38, &qword_1D5660808);
    OUTLINED_FUNCTION_46();
    return;
  }

  v14 = 0;
  while ((v14 & 1) == 0)
  {
    v15 = OUTLINED_FUNCTION_71();
    sub_1D54FE5D4(v15, v16);
    OUTLINED_FUNCTION_14_95();
    if (v17)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  __break(1u);
}

void sub_1D54FB888()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_2_187();
  type metadata accessor for MusicRecentlySearchedViewModel.Entry(v5);
  OUTLINED_FUNCTION_5_147();
  v7 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_4_148(v6);
  if (__OFSUB__(v1, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_38_48();
  if (v1 != v7)
  {
    OUTLINED_FUNCTION_36_61();
    if (!v8)
    {
      v9 = OUTLINED_FUNCTION_35_63();
      sub_1D4F03784(v9, v10, v11);
      OUTLINED_FUNCTION_37_50();
      if (!v8)
      {
        *(v4 + 16) = v12;
        goto LABEL_7;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  if (v1 < 1 || v3 < 1)
  {
LABEL_15:
    sub_1D4E6C9CC(v0, &qword_1EC7F0D20, &qword_1D563C1E8);
    OUTLINED_FUNCTION_46();
    return;
  }

  v14 = 0;
  while ((v14 & 1) == 0)
  {
    v15 = OUTLINED_FUNCTION_71();
    sub_1D54FE5D4(v15, v16);
    OUTLINED_FUNCTION_14_95();
    if (v17)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  __break(1u);
}

void sub_1D54FB990()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_2_187();
  type metadata accessor for MusicPin(v5);
  OUTLINED_FUNCTION_5_147();
  v7 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_4_148(v6);
  if (__OFSUB__(v1, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_38_48();
  if (v1 != v7)
  {
    OUTLINED_FUNCTION_36_61();
    if (!v8)
    {
      v9 = OUTLINED_FUNCTION_35_63();
      sub_1D4F0373C(v9, v10, v11);
      OUTLINED_FUNCTION_37_50();
      if (!v8)
      {
        *(v4 + 16) = v12;
        goto LABEL_7;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  if (v1 < 1 || v3 < 1)
  {
LABEL_15:
    sub_1D4E6C9CC(v0, &qword_1EC7F1D60, &unk_1D5643C70);
    OUTLINED_FUNCTION_46();
    return;
  }

  v14 = 0;
  while ((v14 & 1) == 0)
  {
    v15 = OUTLINED_FUNCTION_71();
    sub_1D54FE5D4(v15, v16);
    OUTLINED_FUNCTION_14_95();
    if (v17)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  __break(1u);
}

void sub_1D54FBA98()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v0;
  type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  OUTLINED_FUNCTION_5_147();
  v12 = *(v11 + 72);
  v13 = v6 - v8;
  if (__OFSUB__(v6, v8))
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v15 = v14 + v12 * v8;
  OUTLINED_FUNCTION_85_0();
  swift_arrayDestroy();
  v16 = __OFSUB__(v4, v13);
  v17 = v4 - v13;
  if (v16)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v17)
  {
    goto LABEL_7;
  }

  v18 = *(v9 + 16);
  if (__OFSUB__(v18, v6))
  {
    goto LABEL_15;
  }

  sub_1D4F037B4(v14 + v12 * v6, v18 - v6, v15 + v12 * v4);
  v19 = *(v9 + 16);
  v16 = __OFADD__(v19, v17);
  v20 = v19 + v17;
  if (v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v9 + 16) = v20;
LABEL_7:
  if (v4 >= 1)
  {
    if (*(v2 + 16) == v4)
    {
      swift_arrayInitWithCopy();
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return;
  }

LABEL_10:
  OUTLINED_FUNCTION_46();
}

void sub_1D54FBBC4()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_2_187();
  type metadata accessor for InternalMusicPlayer.Queue.Entry(v5);
  OUTLINED_FUNCTION_5_147();
  v7 = v2 - v3;
  if (__OFSUB__(v2, v3))
  {
    __break(1u);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_4_148(v6);
  if (__OFSUB__(v1, v7))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_38_48();
  if (v1 != v7)
  {
    OUTLINED_FUNCTION_36_61();
    if (!v8)
    {
      v9 = OUTLINED_FUNCTION_35_63();
      sub_1D4F037B4(v9, v10, v11);
      OUTLINED_FUNCTION_37_50();
      if (!v8)
      {
        *(v4 + 16) = v12;
        goto LABEL_7;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_7:
  if (v1 < 1 || v3 < 1)
  {
LABEL_15:
    sub_1D4E6C9CC(v0, &unk_1EC7F2B70, &qword_1D564A650);
    OUTLINED_FUNCTION_46();
    return;
  }

  v14 = 0;
  while ((v14 & 1) == 0)
  {
    v15 = OUTLINED_FUNCTION_71();
    sub_1D54FE5D4(v15, v16);
    OUTLINED_FUNCTION_14_95();
    if (v17)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1D54FBCCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_1D54FE52C();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D54FBDC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8 = v2[1];
  v6 = v2 + 1;
  v7 = v8;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = OUTLINED_FUNCTION_44_42();
    sub_1D4F03980(v10, v11, v12);
    v7 = *v6;
  }

  v14 = *(v7 + 16);
  v13 = *(v7 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1D4F03980(v13 > 1, v14 + 1, 1);
    v7 = *v6;
  }

  *(v7 + 16) = v14 + 1;
  v15 = v7 + 16 * v14;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  v3[1] = v7;
  v16 = *v3;
  if (!*v3)
  {
    if (v14 <= 0xE)
    {
      return;
    }

    v17 = 0;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_192();
  swift_beginAccess();
  if (MEMORY[0x1DA6E23A0](*(v16 + 16) & 0x3FLL) <= v14)
  {
    v17 = *(v16 + 24) & 0x3FLL;
    if (v14 <= 0xE && v17 == 0)
    {

      *v3 = 0;
      return;
    }

LABEL_15:
    v19 = MEMORY[0x1DA6E23D0](v14 + 1);
    sub_1D54FC188(v19, v17, sub_1D54FC25C);
    return;
  }

  sub_1D54FC100();
  if (*v3)
  {
    OUTLINED_FUNCTION_41_52(*v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D54FBF10()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_147();
  v3 = _s14IdentifierKindOMa(v2);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D54FE5D4(v0, v6);
  v7 = (v0 + 8);
  v8 = v1[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = OUTLINED_FUNCTION_44_42();
    sub_1D4F046DC(v10, v11, v12);
    v8 = *v7;
  }

  v14 = *(v8 + 16);
  v13 = *(v8 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1D4F046DC(v13 > 1, v14 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v14 + 1;
  result = sub_1D5241994(v6, v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14);
  v1[1] = v8;
  v16 = *v1;
  if (!*v1)
  {
    if (v14 <= 0xE)
    {
      return result;
    }

    v17 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  if (MEMORY[0x1DA6E23A0](*(v16 + 16) & 0x3FLL) <= v14)
  {
    v17 = *(v16 + 24) & 0x3FLL;
    if (v14 <= 0xE && !v17)
    {

      *v1 = 0;
      return result;
    }

LABEL_14:
    v18 = MEMORY[0x1DA6E23D0](v14 + 1);
    return sub_1D54FC188(v18, v17, sub_1D54FC29C);
  }

  result = sub_1D54FC100();
  if (*v1)
  {
    return OUTLINED_FUNCTION_41_52(*v1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54FC100()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = sub_1D560C5D8();

        *v0 = v2;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1D54FC188(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v5 = sub_1D54FC1D4(v3[1], a2, 0, v4, a3);

  *v3 = v5;
  return result;
}

uint64_t sub_1D54FC1D4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 16);
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = MEMORY[0x1DA6E23D0](v8, a2);
  v11 = 0;
  if (v10 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v10;
  }

  if (v12 <= a4)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  if (v13 >= 5)
  {
    v11 = MEMORY[0x1DA6E23E0]();
    a5(a1, v11 + 16, v11 + 32);
  }

  return v11;
}

void *sub_1D54FC29C(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1D560D4C8();
  sub_1D560F148();
  v6 = *(_s14IdentifierKindOMa(0) - 8);
  return sub_1D54FC460(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a1 + 16), a2, a3);
}

uint64_t sub_1D54FC338(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_1D56162D8();

        sub_1D5614E28();
        v7 = sub_1D5616328();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_1D560C548();

        if (v8)
        {
          while (1)
          {
            sub_1D560C5A8();
          }
        }

        v7 = sub_1D560C598();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

uint64_t sub_1D54FC460(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v43 = a1;
  v40 = sub_1D560D4C8();
  v7 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1D560F148();
  v9 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = _s14IdentifierKindOMa(0);
  v11 = MEMORY[0x1EEE9AC00](v42);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v32 - v16;
  v51 = a2;
  if (!a2)
  {
    return result;
  }

  if (v51 < 0)
  {
    goto LABEL_16;
  }

  v18 = 0;
  v41 = *(v15 + 72);
  v35 = (v7 + 8);
  v36 = (v7 + 32);
  v33 = (v9 + 8);
  v34 = (v9 + 32);
  while (1)
  {
    sub_1D54FE5D4(v43 + v41 * v18, v17);
    sub_1D56162D8();
    sub_1D54FE5D4(v17, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        MEMORY[0x1DA6EC0D0](1);
        sub_1D5614E28();

        goto LABEL_10;
      }

      v21 = v39;
      v20 = v40;
      (*v36)(v39, v13, v40);
      MEMORY[0x1DA6EC0D0](2);
      sub_1D54FE58C(&qword_1EC7EBF70, MEMORY[0x1E6974F48], MEMORY[0x1E6974F50]);
      sub_1D5614CB8();
      v22 = v35;
    }

    else
    {
      v21 = v37;
      v20 = v38;
      (*v34)(v37, v13, v38);
      MEMORY[0x1DA6EC0D0](0);
      sub_1D54FE58C(&qword_1EC7EBF78, MEMORY[0x1E69755E8], MEMORY[0x1E69755F0]);
      sub_1D5614CB8();
      v22 = v33;
    }

    (*v22)(v21, v20);
LABEL_10:
    result = sub_1D5616328();
    v23 = 1 << *a3;
    v24 = __OFSUB__(v23, 1);
    v25 = v23 - 1;
    if (v24)
    {
      break;
    }

    v26 = v25 & result;
    v27 = sub_1D560C548();
    v29 = v28;
    v31 = v30;
    sub_1D52418D4(v17);
    v44 = a3;
    v45 = a4;
    v46 = v26;
    v47 = v27;
    v48 = v29;
    v49 = v31;
    v50 = 0;
    while (v47)
    {
      sub_1D560C5A8();
    }

    result = sub_1D560C598();
    if (++v18 == v51)
    {
      return result;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_1D54FC91C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      sub_1D54FCB74(a1);
      return;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= MEMORY[0x1DA6E23B0]())
  {
LABEL_12:
    sub_1D54FCB74(a1);
    if (v7)
    {
      swift_beginAccess();
      v11 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*v5 + 16);
    if (v11 || v12 >= 0x10)
    {
      v13 = MEMORY[0x1DA6E23D0](v12);
      sub_1D54FC188(v13, v11, sub_1D54FC25C);
    }

    else
    {

      *v3 = 0;
    }

    return;
  }

  sub_1D54FC100();
  v9 = *v3;
  if (*v3)
  {

    sub_1D54FCBF8(a2, (v9 + 16), v9 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v10 = v3[1];

      sub_1D54FCDE8(a1, a1 + 1, v10, (v9 + 16), v9 + 32);

      sub_1D54FCB74(a1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1D54FCAE0(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54FBD34();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    sub_1D4F03718((v3 + 24 * a1 + 56), v5 - 1 - a1, (v3 + 24 * a1 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

void sub_1D54FCB74(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D54FBD48();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    sub_1D4EA729C((v3 + 16 * a1 + 48), v5 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

unint64_t sub_1D54FCBF8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = sub_1D560C548();
  sub_1D560C5A8();
  if (v17)
  {
    v7 = sub_1D560C558();
    v8 = a1;
    while (1)
    {
      result = sub_1D560C588();
      if (v10)
      {
LABEL_26:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result >= *(*(a4 + 8) + 16))
      {
        goto LABEL_24;
      }

      sub_1D56162D8();

      sub_1D5614E28();
      v11 = sub_1D5616328();

      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_25;
      }

      v13 = (v12 - 1) & v11;
      if (v8 >= v7)
      {
        if (v13 >= v7 && v8 >= v13)
        {
LABEL_18:
          sub_1D560C588();
          v8 = a1;
          sub_1D560C568();
        }
      }

      else if (v13 >= v7 || v8 >= v13)
      {
        goto LABEL_18;
      }

      sub_1D560C5A8();
    }
  }

  return sub_1D560C568();
}

uint64_t sub_1D54FCDE8(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_57;
  }

  if (v5 >= 1)
  {
    v8 = result;
    v9 = *(a3 + 16);
    if ((v9 - v5) / 2 <= result)
    {
      v13 = a2;
      v14 = __OFSUB__(v9, a2);
      v15 = v9 - a2;
      if (v14)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v15 >= MEMORY[0x1DA6E23A0](*a4 & 0x3FLL) / 3)
      {
        sub_1D560C548();
        v24 = sub_1D560C588();
        if ((v25 & 1) == 0 && v24 >= v13)
        {
          v14 = __OFSUB__(v24, v5);
          result = v24 - v5;
          if (v14)
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          sub_1D560C598();
        }

        return sub_1D560C5A8();
      }

      result = sub_1D55D6190(v13, a3);
      v17 = v16;
      v19 = v18 >> 1;
      while (v17 != v19)
      {
        if (v17 >= v19)
        {
          goto LABEL_51;
        }

        sub_1D56162D8();

        sub_1D5614E28();
        result = sub_1D5616328();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (sub_1D560C548())
        {
          while (1)
          {
            v20 = sub_1D560C588();
            if ((v21 & 1) == 0 && v20 == v13)
            {
              break;
            }

            sub_1D560C5A8();
          }
        }

        result = v13 - v5;
        if (__OFSUB__(v13, v5))
        {
          goto LABEL_53;
        }

        sub_1D560C598();

        v14 = __OFADD__(v13++, 1);
        if (v14)
        {
          goto LABEL_54;
        }

        ++v17;
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      result = MEMORY[0x1DA6E23A0](*a4 & 0x3FLL);
      if (result / 3 > v8)
      {
        if (v8 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v9 < v8)
        {
LABEL_62:
          __break(1u);
          return result;
        }

        for (i = 0; ; ++i)
        {
          if (i == v8)
          {

            goto LABEL_40;
          }

          sub_1D56162D8();

          sub_1D5614E28();
          result = sub_1D5616328();
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (sub_1D560C548())
          {
            while (1)
            {
              v11 = sub_1D560C588();
              if ((v12 & 1) == 0 && v11 == i)
              {
                break;
              }

              sub_1D560C5A8();
            }
          }

          result = i + v5;
          if (__OFADD__(i, v5))
          {
            goto LABEL_50;
          }

          sub_1D560C598();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      sub_1D560C548();
      v22 = sub_1D560C588();
      if ((v23 & 1) == 0 && v22 < v8)
      {
        v14 = __OFADD__(v22, v5);
        result = v22 + v5;
        if (v14)
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        sub_1D560C598();
      }

      result = sub_1D560C5A8();
LABEL_40:
      v26 = a4[1];
      if (__OFSUB__(v26 >> 6, v5))
      {
        goto LABEL_59;
      }

      v27 = 1 << *a4;
      v14 = __OFSUB__(v27, 1);
      v28 = v27 - 1;
      if (v14)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v29 = (v28 & (((v26 >> 6) - v5) >> 63)) + (v26 >> 6) - v5;
      if (v29 < v28)
      {
        v28 = 0;
      }

      a4[1] = a4[1] & 0x3FLL | ((v29 - v28) << 6);
    }
  }

  return result;
}

void sub_1D54FD238(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_21;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (isUniquelyReferenced_nonNull_native)
  {
    v12 = *(v7 + 24) >> 1;
    if (v12 >= v9)
    {
      goto LABEL_12;
    }

    if (v8 <= v9)
    {
      v13 = v8 + v6;
    }

    else
    {
      v13 = v8;
    }
  }

  else if (v8 <= v9)
  {
    v13 = v8 + v6;
  }

  else
  {
    v13 = v8;
  }

  sub_1D4F03BD4(isUniquelyReferenced_nonNull_native, v13, 1);
  v7 = *v4;
  v12 = *(*v4 + 24) >> 1;
LABEL_12:
  if (v5 == a3)
  {
    if (v6 <= 0)
    {
LABEL_19:
      swift_unknownObjectRelease();
      *v4 = v7;
      return;
    }

    __break(1u);
  }

  if (v12 - *(v7 + 16) < v6)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACC0, &qword_1D561DA98);
  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
    goto LABEL_19;
  }

  v14 = *(v7 + 16);
  v15 = __OFADD__(v14, v6);
  v16 = v14 + v6;
  if (!v15)
  {
    *(v7 + 16) = v16;
    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
}

unint64_t sub_1D54FD370(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(*(v1 + 8) + 16);
    v3 = v2 >= result;
    result = v2 - result;
    if (v3)
    {
      return sub_1D54FD404(result, v2);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D54FD390(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = *(*v1 + 16);
  result = sub_1D54FE2B4(v2, -result, 0);
  if (v3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  if (v2 < result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return sub_1D54FD994(result, v2);
}

uint64_t sub_1D54FD404(uint64_t result, unint64_t a2)
{
  v4 = result;
  v6 = v2 + 1;
  v5 = *v2;
  if (!*v2)
  {
    return sub_1D54FDAB8(v4, a2);
  }

  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v7 <= 0)
  {
    return result;
  }

  v8 = v2;
  v9 = *(*v6 + 16);
  v10 = v9 - v7;
  if ((v9 - v7) > (v9 >> 1))
  {
    swift_beginAccess();
    if ((*(v5 + 16) & 0x3FLL) == (*(v5 + 24) & 0x3FLL) || v10 >= MEMORY[0x1DA6E23B0]())
    {
      result = sub_1D54FC100();
      v14 = *v8;
      if (*v8)
      {

        sub_1D54FD574((v14 + 16), v14 + 32, v8, v4, a2);

        return sub_1D54FDAB8(v4, a2);
      }

LABEL_18:
      __break(1u);
      return result;
    }
  }

  sub_1D54FDAB8(v4, a2);
  swift_beginAccess();
  v11 = *(v5 + 24) & 0x3FLL;
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(*v6 + 16) >= 0x10uLL;
  }

  if (v12)
  {
    v13 = MEMORY[0x1DA6E23D0]();
    return sub_1D54FC188(v13, v11, sub_1D54FC25C);
  }

  else
  {

    *v8 = 0;
  }

  return result;
}

void *sub_1D54FD574(void *result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = a5;
  v6 = a4;
  v8 = *(a3 + 8);
  v9 = *(v8 + 16);
  if (v9 < a4 || v9 < a5)
  {
    goto LABEL_18;
  }

  if ((a5 & 0x8000000000000000) != 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = result;
  if (a4 == a5)
  {
LABEL_14:

    sub_1D54FCDE8(v6, v5, v8, v12, a2);
  }

  if (a4 < a5)
  {

    v23 = v6;
    v13 = (v8 + 16 * v6 + 40);
    v14 = v6;
    v24 = v5;
    while (v14 < v5)
    {
      v15 = *(v13 - 1);
      v16 = *v13;
      v17 = *(a3 + 8);
      v18 = *(v17 + 16);

      sub_1D5240D0C(v15, v16, v17 + 32, v18, v12, a2);
      v20 = v19;
      v22 = v21;

      if (v20)
      {
        goto LABEL_16;
      }

      ++v14;
      result = sub_1D54FCBF8(v22, v12, a2, a3);
      v13 += 2;
      v5 = v24;
      if (v24 == v14)
      {

        v8 = *(a3 + 8);
        v6 = v23;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D54FD6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v7 = v3[1];
  v14[0] = a1;
  v14[1] = a2;
  v13[2] = v8;
  v13[3] = v7;
  v13[4] = v14;
  sub_1D523FA04(sub_1D54FE648, v13, v7);
  v11 = v10;
  if (v10)
  {
    sub_1D54FD790(a1, a2, a3, v9);
  }

  return v11 & 1;
}

void sub_1D54FD790(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = (v4 + 1);
  v10 = *(v4[1] + 16);
  v11 = *v5;
  if (*v5)
  {
    swift_beginAccess();
    if (v10 >= MEMORY[0x1DA6E23A0](*(v11 + 16) & 0x3FLL))
    {
      goto LABEL_11;
    }

    sub_1D54FC100();
    v10 = *v5;
    if (!*v5)
    {
LABEL_26:
      __break(1u);
      return;
    }

    v5 = *v9;

    sub_1D54FDD9C(a3, v5, (v10 + 16), v10 + 32);

    sub_1D560C568();

    if (v5[2] < a3)
    {
      goto LABEL_23;
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
LABEL_10:

      sub_1D54FDCB8(a3, a3, result, a2);
      return;
    }

    __break(1u);
  }

  if (v10 < 0xF)
  {
    if (v10 >= a3)
    {
      if ((a3 & 0x8000000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_25;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_11:
  if (v10 < a3)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (a3 < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1D54FDCB8(a3, a3, result, a2);
  if (v11)
  {
    swift_beginAccess();
    v12 = *(v11 + 24) & 0x3FLL;
  }

  else
  {
    v12 = 0;
  }

  v13 = (*v9)[2];
  if (v12 || v13 >= 0x10)
  {
    v14 = MEMORY[0x1DA6E23D0](v13);
    sub_1D54FC188(v14, v12, sub_1D54FC25C);
  }

  else
  {

    *v5 = 0;
  }
}

unint64_t sub_1D54FD994(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = (result - a2);
  if (__OFSUB__(0, v7))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v5 - v7;
  if (__OFADD__(v5, v8))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v9 <= *(v4 + 24) >> 1)
    {
      goto LABEL_15;
    }

    if (v5 <= v9)
    {
      v11 = &v8[v5];
    }

    else
    {
      v11 = v5;
    }
  }

  else if (v5 <= v9)
  {
    v11 = &v8[v5];
  }

  else
  {
    v11 = v5;
  }

  sub_1D4F03BB4(isUniquelyReferenced_nonNull_native, v11, 1);
  v4 = *v2;
LABEL_15:
  v12 = (v4 + 32 + 24 * v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD0, &qword_1D561DAA8);
  result = swift_arrayDestroy();
  if (!v7)
  {
LABEL_19:
    *v2 = v4;
    return result;
  }

  v13 = *(v4 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_25;
  }

  result = sub_1D4F03718((v4 + 32 + 24 * a2), v13 - a2, v12);
  v14 = *(v4 + 16);
  v15 = __OFADD__(v14, v8);
  v16 = v14 - v7;
  if (!v15)
  {
    *(v4 + 16) = v16;
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1D54FDAB8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v8 = (result - a2);
  if (__OFSUB__(0, v7))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = v5 - v7;
  if (__OFADD__(v5, v8))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v9 <= *(v4 + 24) >> 1)
    {
      goto LABEL_15;
    }

    if (v5 <= v9)
    {
      v11 = &v8[v5];
    }

    else
    {
      v11 = v5;
    }
  }

  else if (v5 <= v9)
  {
    v11 = &v8[v5];
  }

  else
  {
    v11 = v5;
  }

  sub_1D4F03980(isUniquelyReferenced_nonNull_native, v11, 1);
  v4 = *v2;
LABEL_15:
  v12 = (v4 + 32 + 16 * v6);
  result = swift_arrayDestroy();
  if (!v7)
  {
LABEL_19:
    *v2 = v4;
    return result;
  }

  v13 = *(v4 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_25;
  }

  result = sub_1D4EA729C((v4 + 32 + 16 * a2), v13 - a2, v12);
  v14 = *(v4 + 16);
  v15 = __OFADD__(v14, v8);
  v16 = v14 - v7;
  if (!v15)
  {
    *(v4 + 16) = v16;
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D54FDBC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = __OFSUB__(1, v10);
  v12 = 1 - v10;
  if (v11)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v13 = v8 + v12;
  if (__OFADD__(v8, v12))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native)
  {
    if (v8 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v8;
    }

    goto LABEL_14;
  }

  if (v13 > *(v7 + 24) >> 1)
  {
    if (v8 <= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v8;
    }

LABEL_14:
    sub_1D4F03BB4(isUniquelyReferenced_nonNull_native, v18, 1);
  }

  return sub_1D54FB408(v9, a2, 1, a3, a4, a5 & 1);
}

void sub_1D54FDCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_22:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

    goto LABEL_14;
  }

  if (v12 > *(v6 + 24) >> 1)
  {
    if (v7 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v7;
    }

LABEL_14:
    sub_1D4F03980(isUniquelyReferenced_nonNull_native, v16, 1);
  }

  sub_1D54FB55C(a1, a2, 1, a3, a4);
}

uint64_t sub_1D54FDD9C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = result;
  v7 = *(a2 + 16);
  if (result < (v7 >> 1))
  {
    v8 = *a3;
    v9 = 1 << *a3;
    v10 = __OFSUB__(v9, 1);
    v11 = v9 - 1;
    if (v10)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v12 = a3[1];
    if (v12 >> 6 >= -1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }

    v14 = v13 + (v12 >> 6) + 1;
    if (v14 < v11)
    {
      v11 = 0;
    }

    a3[1] = a3[1] & 0x3F | ((v14 - v11) << 6);
    result = MEMORY[0x1DA6E23A0](v8 & 0x3F);
    if (result / 3 >= v6)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        if (v7 >= v6)
        {

          v26 = 0;
          v27 = 1;
          while (v26 != v6)
          {
            sub_1D56162D8();

            sub_1D5614E28();
            result = sub_1D5616328();
            if (__OFSUB__(1 << *a3, 1))
            {
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

            if (sub_1D560C548())
            {
              while (1)
              {
                v28 = sub_1D560C588();
                if ((v29 & 1) == 0 && v28 == v27)
                {
                  break;
                }

                sub_1D560C5A8();
              }
            }

            result = sub_1D560C588();
            if (v30)
            {
              goto LABEL_63;
            }

            v10 = __OFSUB__(result--, 1);
            if (v10)
            {
              goto LABEL_52;
            }

            sub_1D560C598();

            if (v26 == 0x7FFFFFFFFFFFFFFELL)
            {
              goto LABEL_53;
            }

            ++v26;
            ++v27;
          }
        }

        goto LABEL_62;
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return result;
    }

    sub_1D560C548();
    v15 = sub_1D560C588();
    if ((v16 & 1) != 0 || v15 > v6)
    {
      return sub_1D560C5A8();
    }

    v10 = __OFSUB__(v15, 1);
    result = v15 - 1;
    if (!v10)
    {
      sub_1D560C598();
      return sub_1D560C5A8();
    }

LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (MEMORY[0x1DA6E23A0](*a3 & 0x3F) / 3 < (v7 + ~result))
  {
    sub_1D560C548();
    v17 = sub_1D560C588();
    if ((v18 & 1) != 0 || v17 < v6)
    {
      return sub_1D560C5A8();
    }

    v10 = __OFADD__(v17, 1);
    result = v17 + 1;
    if (!v10)
    {
      sub_1D560C598();
      return sub_1D560C5A8();
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  result = sub_1D55D6190(v6, a2);
  v20 = v19;
  v22 = v21 >> 1;
  while (v20 != v22)
  {
    if (v20 >= v22)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    sub_1D56162D8();

    sub_1D5614E28();
    result = sub_1D5616328();
    if (__OFSUB__(1 << *a3, 1))
    {
      goto LABEL_55;
    }

    if (sub_1D560C548())
    {
      while (1)
      {
        v23 = sub_1D560C588();
        if ((v24 & 1) == 0 && v23 == v6)
        {
          break;
        }

        sub_1D560C5A8();
      }
    }

    result = sub_1D560C588();
    if (v25)
    {
      goto LABEL_64;
    }

    v10 = __OFADD__(result++, 1);
    if (v10)
    {
      goto LABEL_56;
    }

    sub_1D560C598();

    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      goto LABEL_57;
    }

    ++v20;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1D54FE250(int64_t a1, uint64_t (*a2)(void *, uint64_t))
{
  v3 = sub_1D54FB1A8(a1);
  v4 = v3[2];

  return a2(v3 + 4, v4);
}

uint64_t sub_1D54FE2B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1D54FE300@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  if (a1)
  {

    v3 = OUTLINED_FUNCTION_49_34();
    v9 = sub_1D5240D0C(v3, v4, v5, v6, v7, v8);
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v15 = OUTLINED_FUNCTION_49_34();
    result = sub_1D5240708(v15, v16, v17, v18);
    v9 = result;
    v11 = v19;
    v13 = 0;
  }

  *a2 = v9;
  *(a2 + 8) = v11 & 1;
  *(a2 + 16) = v13;
  return result;
}

uint64_t sub_1D54FE474(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1D54FE484()
{
  result = qword_1EC7F7998;
  if (!qword_1EC7F7998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F7998);
  }

  return result;
}

unint64_t sub_1D54FE4D8()
{
  result = qword_1EC7F79A0;
  if (!qword_1EC7F79A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79A0);
  }

  return result;
}

unint64_t sub_1D54FE52C()
{
  result = qword_1EDD526B0;
  if (!qword_1EDD526B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD526B0);
  }

  return result;
}

uint64_t sub_1D54FE58C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D54FE5D4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_25_65(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

double OUTLINED_FUNCTION_42_47()
{

  return result;
}

uint64_t static MusicSubscription.current(privacyAcknowledgementPolicy:)(uint64_t a1, _BYTE *a2)
{
  v2[2] = a1;
  v4 = sub_1D560D478();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v5 = swift_task_alloc();
  v2[5] = v5;
  v6 = swift_task_alloc();
  v2[6] = v6;
  if (*a2)
  {
    v7 = swift_task_alloc();
    v2[9] = v7;
    *v7 = v2;
    v7[1] = sub_1D54FE9D0;

    return MEMORY[0x1EEDCE620](v5);
  }

  else
  {
    v8 = v6;
    v9 = swift_task_alloc();
    v2[7] = v9;
    *v9 = v2;
    v9[1] = sub_1D54FE850;

    return MEMORY[0x1EEDCE630](v8);
  }
}

uint64_t sub_1D54FE850()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    v7 = sub_1D54FEB50;
  }

  else
  {
    v7 = sub_1D54FE958;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D54FE958()
{
  OUTLINED_FUNCTION_60();
  v1 = OUTLINED_FUNCTION_3_193();
  v2(v1, v0);

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54FE9D0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    v7 = sub_1D54FEBB4;
  }

  else
  {
    v7 = sub_1D54FEAD8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D54FEAD8()
{
  OUTLINED_FUNCTION_60();
  v1 = OUTLINED_FUNCTION_3_193();
  v2(v1, v0);

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D54FEB50()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D54FEBB4()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t MusicSubscription.PrivacyAcknowledgementPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D54FECD0()
{
  result = qword_1EC7F79A8;
  if (!qword_1EC7F79A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F79B0, &qword_1D566D778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79A8);
  }

  return result;
}

unint64_t sub_1D54FED38()
{
  result = qword_1EC7F79B8;
  if (!qword_1EC7F79B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79B8);
  }

  return result;
}

_BYTE *_s28PrivacyAcknowledgementPolicyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy38_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D54FEE7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 38))
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

uint64_t sub_1D54FEED0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 38) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 38) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D54FEF40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB170, &qword_1D561DEF0);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D4F03B0C(0, v8, 0);
    v9 = v26;
    v11 = *(v4 + 16);
    v10 = v4 + 16;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v23 = *(v10 + 56);
    v24 = v11;
    do
    {
      v24(v7, v12, v2);
      sub_1D550008C(v25);
      (*(v10 - 8))(v7, v2);
      v26 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        v18 = OUTLINED_FUNCTION_4_149(v13);
        sub_1D4F03B0C(v18, v19, v20);
        v9 = v26;
      }

      *(v9 + 16) = v14 + 1;
      v15 = (v9 + 48 * v14);
      v16 = v25[0];
      v17 = v25[2];
      v15[3] = v25[1];
      v15[4] = v17;
      v15[2] = v16;
      v12 += v23;
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_1D54FF0E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB170, &qword_1D561DEF0);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v26 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1D4F0401C(0, v8, 0);
    v9 = v33;
    v10 = a1 + 72;
    do
    {
      v11 = *(v10 - 32);
      v12 = *(v10 - 24);
      v13 = *(v10 - 16);
      v14 = *(v10 - 8);
      v15 = *(v10 - 7);
      v16 = *(v10 - 6);
      v17 = *(v10 - 5);
      v18 = *(v10 - 4);
      v19 = *(v10 - 3);
      v26[0] = *(v10 - 40);
      v26[1] = v11;
      v26[2] = v12;
      v26[3] = v13;
      v27 = v14;
      v28 = v15;
      v29 = v16;
      v30 = v17;
      v31 = v18;
      v32 = v19;

      sub_1D56106F8();
      v33 = v9;
      v21 = *(v9 + 16);
      v20 = *(v9 + 24);
      if (v21 >= v20 >> 1)
      {
        v22 = OUTLINED_FUNCTION_4_149(v20);
        sub_1D4F0401C(v22, v23, v24);
        v9 = v33;
      }

      v10 += 48;
      *(v9 + 16) = v21 + 1;
      (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v7, v2);
      --v8;
    }

    while (v8);
  }

  return v9;
}

uint64_t sub_1D54FF2B4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = *(a2 + 24);
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = a1[2] == *(a2 + 16) && v7 == v8;
  if (!v9 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  if (*(a1 + 32) == 2)
  {
    if (*(a2 + 32) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v6 || ((v11 ^ v12) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 33) == 2)
  {
    if (*(a2 + 33) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v6 || ((v13 ^ v14) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 34) == 2)
  {
    if (*(a2 + 34) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v6 || ((v15 ^ v16) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 35) == 2)
  {
    if (*(a2 + 35) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v6 || ((v17 ^ v18) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 36) == 2)
  {
    if (*(a2 + 36) != 2)
    {
      return 0;
    }

LABEL_44:
    v21 = *(a1 + 37);
    v22 = *(a2 + 37);
    if (v21 == 2)
    {
      if (v22 != 2)
      {
        return 0;
      }
    }

    else if (v22 == 2 || ((v22 ^ v21) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = OUTLINED_FUNCTION_39();
  if (!v6 && ((v19 ^ v20) & 1) == 0)
  {
    goto LABEL_44;
  }

  return result;
}

uint64_t sub_1D54FF45C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6775156 && a2 == 0xE300000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72616D6972507369 && a2 == 0xE900000000000079;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001D567EFC0 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572657453736168 && a2 == 0xE90000000000006FLL;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79626C6F44736168 && a2 == 0xE800000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x79626C6F44736168 && a2 == 0xEA00000000003137;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000013 && 0x80000001D567EFA0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = sub_1D5616168();

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

unint64_t sub_1D54FF6E8(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 6775156;
      break;
    case 2:
      result = 0x72616D6972507369;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6572657453736168;
      break;
    case 5:
    case 6:
      result = 0x79626C6F44736168;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D54FF7BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F79D0, &unk_1D566D968);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54FFFD0();
  sub_1D56163D8();
  v24[2] = 0;
  sub_1D5616028();
  if (!v2)
  {
    v24[1] = 1;
    sub_1D5616028();
    v11 = v3[32];
    v24[0] = 2;
    OUTLINED_FUNCTION_2_23(v11, v24);
    v12 = v3[33];
    v23 = 3;
    OUTLINED_FUNCTION_2_23(v12, &v23);
    v13 = v3[34];
    v22 = 4;
    OUTLINED_FUNCTION_2_23(v13, &v22);
    v14 = v3[35];
    v21 = 5;
    OUTLINED_FUNCTION_2_23(v14, &v21);
    v15 = v3[36];
    v20 = 6;
    OUTLINED_FUNCTION_2_23(v15, &v20);
    v16 = v3[37];
    v19 = 7;
    OUTLINED_FUNCTION_2_23(v16, &v19);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1D54FF9B8(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (*(v1 + 24))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (*(v1 + 32) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v1 + 33) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v1 + 34) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v1 + 35) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v1 + 36) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v1 + 37) != 2)
  {
    sub_1D56162F8();
  }

  return sub_1D56162F8();
}

uint64_t sub_1D54FFB1C()
{
  sub_1D56162D8();
  sub_1D54FF9B8(v1);
  return sub_1D5616328();
}

uint64_t sub_1D54FFB5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F79C0, &qword_1D566D960);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54FFFD0();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v31[0]) = 0;
  v11 = sub_1D5615F38();
  v13 = v12;
  v28 = v11;
  OUTLINED_FUNCTION_0_255(1);
  v14 = sub_1D5615F38();
  v16 = v15;
  v27 = v14;
  OUTLINED_FUNCTION_0_255(2);
  v38 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_255(3);
  v26 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_255(4);
  v25 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_255(5);
  v24 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_255(6);
  v23 = sub_1D5615F48();
  v39 = 7;
  v17 = sub_1D5615F48();
  (*(v7 + 8))(v10, v5);
  v19 = v27;
  v18 = v28;
  *&v29 = v28;
  *(&v29 + 1) = v13;
  *v30 = v27;
  *&v30[8] = v16;
  v20 = v38;
  v30[16] = v38;
  v30[17] = v26;
  v30[18] = v25;
  v30[19] = v24;
  v30[20] = v23;
  v30[21] = v17;
  sub_1D5500024(&v29, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v31[0] = v18;
  v31[1] = v13;
  v31[2] = v19;
  v31[3] = v16;
  v32 = v20;
  v33 = v26;
  v34 = v25;
  v35 = v24;
  v36 = v23;
  v37 = v17;
  result = sub_1D550005C(v31);
  v22 = *v30;
  *a2 = v29;
  *(a2 + 16) = v22;
  *(a2 + 30) = *&v30[14];
  return result;
}

uint64_t sub_1D54FFE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D54FF45C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D54FFEB0(uint64_t a1)
{
  v2 = sub_1D54FFFD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54FFEEC(uint64_t a1)
{
  v2 = sub_1D54FFFD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D54FFF28@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D54FFB5C(a1, &v6);
  if (!v2)
  {
    result = *&v6;
    v5 = *v7;
    *a2 = v6;
    *(a2 + 16) = v5;
    *(a2 + 30) = *&v7[14];
  }

  return result;
}

uint64_t sub_1D54FFF94(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D54FF9B8(v2);
  return sub_1D5616328();
}

unint64_t sub_1D54FFFD0()
{
  result = qword_1EC7F79C8;
  if (!qword_1EC7F79C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79C8);
  }

  return result;
}

uint64_t sub_1D550008C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB170, &qword_1D561DEF0);
  sub_1D5610708();
  v47 = v45;
  *v48 = *v46;
  *&v48[14] = *&v46[14];

  sub_1D550005C(&v47);
  if (*(&v45 + 1))
  {
    v2 = v45;
  }

  else
  {
    v2 = 0;
  }

  if (*(&v45 + 1))
  {
    v3 = *(&v45 + 1);
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v15 = v3;
  v16 = v2;
  sub_1D5610708();
  v43 = v41;
  *v44 = *v42;
  *&v44[14] = *&v42[14];
  v4 = *&v44[8];
  v5 = *v42;

  sub_1D550005C(&v43);
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v14 = v6;
  sub_1D5610708();
  v39 = v37;
  *v40 = *v38;
  *&v40[14] = *&v38[14];
  sub_1D550005C(&v39);
  v7 = v40[16];
  sub_1D5610708();
  v35 = v33;
  *v36 = *v34;
  *&v36[14] = *&v34[14];
  sub_1D550005C(&v35);
  v8 = v36[17];
  sub_1D5610708();
  v31 = v29;
  *v32 = *v30;
  *&v32[14] = *&v30[14];
  sub_1D550005C(&v31);
  v9 = v32[18];
  sub_1D5610708();
  v27 = v25;
  *v28 = *v26;
  *&v28[14] = *&v26[14];
  sub_1D550005C(&v27);
  v10 = v28[19];
  sub_1D5610708();
  v23 = v21;
  *v24 = *v22;
  *&v24[14] = *&v22[14];
  sub_1D550005C(&v23);
  v11 = v24[20];
  sub_1D5610708();
  v19 = v17;
  *v20 = *v18;
  *&v20[14] = *&v18[14];
  sub_1D550005C(&v19);
  v12 = v20[21];
  result = sub_1D5610718();
  *a1 = v16;
  *(a1 + 8) = v15;
  *(a1 + 16) = v5;
  *(a1 + 24) = v14;
  *(a1 + 32) = v7 & 1;
  *(a1 + 33) = v8 & 1;
  *(a1 + 34) = v9 & 1;
  *(a1 + 35) = v10 & 1;
  *(a1 + 36) = v11 & 1;
  *(a1 + 37) = v12 & 1;
  *(a1 + 40) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudLanguageAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D55003D4()
{
  result = qword_1EC7F79D8;
  if (!qword_1EC7F79D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79D8);
  }

  return result;
}

unint64_t sub_1D550042C()
{
  result = qword_1EC7F79E0;
  if (!qword_1EC7F79E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79E0);
  }

  return result;
}

unint64_t sub_1D5500484()
{
  result = qword_1EC7F79E8;
  if (!qword_1EC7F79E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79E8);
  }

  return result;
}

uint64_t MusicPlaybackMetrics.convertToCloudMetricAttribute()()
{
  v0 = sub_1D560FB38();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;

  sub_1D560FB18();
  (*(v1 + 16))(v4, v6, v0);
  sub_1D56106F8();
  return (*(v1 + 8))(v6, v0);
}

Swift::Int __swiftcall Playlist.Collaboration.InvitationMode.convertToLegacyModelRawValue()()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  v2 = objc_opt_self();

  return [v2 rawValueForSharingMode_];
}

id Playlist.Collaboration.InvitationMode.init(legacyModelRawValue:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = [objc_opt_self() sharingModeForRawValue_];
  v4 = 2 * (result != 1);
  if (result == 2)
  {
    v4 = 1;
  }

  *a2 = v4;
  return result;
}

Swift::Int sub_1D55006DC@<X0>(Swift::Int *a1@<X8>)
{
  result = Playlist.Collaboration.InvitationMode.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

uint64_t sub_1D5500704()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE510, &qword_1D5648570);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AC0, &qword_1D564A5E0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - v13;
  *(v1 + 24) = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = 0;
  if (qword_1EC7E8FF0 != -1)
  {
    swift_once();
  }

  v15 = unk_1EC7F10C0;
  v31 = qword_1EC7F10B8;
  v16 = off_1EC7F10C8;
  sub_1D5613838();

  sub_1D560DD68();
  v33 = v5;
  v34 = &protocol witness table for MusicLibraryRequest<A>;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(aBlock);
  (*(v6 + 16))(boxed_opaque_existential_0, v8, v5);
  v18 = sub_1D560D838();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v18);
  sub_1D5424200();
  sub_1D4E6C9CC(v4, &unk_1EC7EEC20, &unk_1D5623F70);
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  v19 = type metadata accessor for MusicPlaybackIntent(0);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v19);
  v20 = *(v16 + 2);
  if (v20)
  {
    v21 = 0;
    v22 = v16 + 32;
    do
    {
      v23 = *v22++;
      v21 |= qword_1D566DBF0[v23];
      --v20;
    }

    while (v20);
  }

  else
  {
    v21 = 0;
  }

  sub_1D55011D4(v14, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v19) == 1)
  {
    sub_1D4E6C9CC(v12, &qword_1EC7F2AC0, &qword_1D564A5E0);
    v24 = 0;
  }

  else
  {
    v24 = *v12;
    sub_1D542348C(v12);
  }

  v25 = objc_allocWithZone(MusicKit_SoftLinking_MPCPlaybackEngine);
  v26 = sub_1D5501160(v31, v15, v21, v24);
  *(v1 + 16) = v26;
  [v26 becomeActive];
  v27 = *(v1 + 16);
  v34 = sub_1D5500B24;
  v35 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5500CD8;
  v33 = &block_descriptor_33;
  v28 = _Block_copy(aBlock);
  [v27 restoreStateWithCompletion_];
  _Block_release(v28);
  (*(v6 + 8))(v8, v5);
  sub_1D4E6C9CC(v14, &qword_1EC7F2AC0, &qword_1D564A5E0);
  return v1;
}

void sub_1D5500B24(int a1, NSObject *a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_1EDD54498 != -1)
    {
      swift_once();
    }

    v4 = sub_1D560C758();
    __swift_project_value_buffer(v4, qword_1EDD76AC0);
    v5 = a2;
    oslog = sub_1D560C738();
    v6 = sub_1D56156C8();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      v9 = a2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_1D4E3F000, oslog, v6, "InternalMusicPlayer restoration failed with error =%{public}@", v7, 0xCu);
      sub_1D4E6C9CC(v8, &unk_1EC7F2C00, &qword_1D5623260);
      MEMORY[0x1DA6ED200](v8, -1, -1);
      MEMORY[0x1DA6ED200](v7, -1, -1);

      v11 = oslog;
    }

    else
    {

      v11 = a2;
    }
  }
}

void sub_1D5500CD8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_1D5500D50(unsigned __int8 a1)
{
  if (*(v1 + 32) != a1)
  {
    switch(*(v1 + 32))
    {
      case 1:
        v5 = *(v1 + 16);

        [v5 start];
        break;
      case 2:
        swift_beginAccess();
        v6 = *(v1 + 24);
        *(v1 + 24) = MEMORY[0x1E69E7CC0];
        v7 = *(v6 + 16);
        if (v7)
        {
          v8 = v6 + 40;
          do
          {
            v9 = *(v8 - 8);

            v9(v10);

            v8 += 16;
            --v7;
          }

          while (v7);
        }

        break;
      case 3:
        return;
      default:
        if (qword_1EDD54498 != -1)
        {
          swift_once();
        }

        v2 = sub_1D560C758();
        __swift_project_value_buffer(v2, qword_1EDD76AC0);
        oslog = sub_1D560C738();
        v3 = sub_1D56156D8();
        if (os_log_type_enabled(oslog, v3))
        {
          v4 = swift_slowAlloc();
          *v4 = 0;
          _os_log_impl(&dword_1D4E3F000, oslog, v3, "The engine should not be turned to an off state.", v4, 2u);
          MEMORY[0x1DA6ED200](v4, -1, -1);
        }

        break;
    }
  }
}

void sub_1D5500F24(char a1)
{
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;
  sub_1D5500D50(v2);
}

uint64_t sub_1D5500F6C()
{
  sub_1D5500F44();

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

_BYTE *storeEnumTagSinglePayload for InternalPlaybackEngine.State(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D55010A4()
{
  result = qword_1EC7F79F0;
  if (!qword_1EC7F79F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79F0);
  }

  return result;
}

unint64_t sub_1D55010FC()
{
  result = qword_1EC7F79F8;
  if (!qword_1EC7F79F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F7A00, qword_1D566DBA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F79F8);
  }

  return result;
}

id sub_1D5501160(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1D5614D38();

  v8 = [v4 initWithPlayerID:v7 options:a3 fallbackPlaybackIntent:a4];

  return v8;
}

uint64_t sub_1D55011D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2AC0, &qword_1D564A5E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void MusicFavoriteStatusController.init(item:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v29 = v28;
  v30 = type metadata accessor for MusicFavoriteStatusController.Item(0);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_59_0();
  v130 = v32 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v134 = &v124 - v35;
  v36 = type metadata accessor for MusicDaemon.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  v39 = *v27;
  v38 = v27[1];
  v40 = *(v27 + 16);
  v133 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_id;
  sub_1D560C358();
  v41 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_daemonClient;
  if (qword_1EDD591D8 != -1)
  {
    v123 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_daemonClient;
    swift_once();
    v41 = v123;
  }

  v135 = v41;
  *(v25 + v41) = qword_1EDD76CD0;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v36);
  sub_1D560D478();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  v49 = (v25 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_restrictions);
  *v49 = 2;
  v49[1] = 0;
  v49[2] = 0;
  *(v25 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_previousStatus) = 6;
  v50 = v25 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account;
  *v50 = v39;
  *(v50 + 8) = v38;
  v132 = v50;
  *(v50 + 16) = v40;
  OUTLINED_FUNCTION_10_123();
  v131 = v51;
  sub_1D55067D8(v29, v25 + v51, v52);

  v53 = OUTLINED_FUNCTION_26_76();
  sub_1D4E58128(v53, v54, v55);
  sub_1D53A3C74(&v137, v22);
  v56 = v21;
  v136 = v29;
  if (v21)
  {
    v57 = OUTLINED_FUNCTION_26_76();
    sub_1D4E58768(v57, v58, v59);
    v60 = v137;
    v61 = v138;
    sub_1D53476CC();
    OUTLINED_FUNCTION_29();
    v62 = swift_allocError();
    *v63 = v60;
    *(v63 + 16) = v61;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_2_188();
  v129 = v65;
  sub_1D55067D8(v65, v25 + v64, v66);
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  LOBYTE(a10) = 3;
  sub_1D560C8B8();
  swift_endAccess();
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v67 = sub_1D560C758();
  v68 = __swift_project_value_buffer(v67, qword_1EDD76B38);
  OUTLINED_FUNCTION_10_123();
  v69 = v134;
  sub_1D55067D8(v29, v134, v70);
  v71 = OUTLINED_FUNCTION_26_76();
  sub_1D4E58128(v71, v72, v73);

  v127 = v68;
  v74 = sub_1D560C738();
  v75 = sub_1D56156E8();

  v76 = OUTLINED_FUNCTION_26_76();
  sub_1D4E58768(v76, v77, v78);
  v128 = v75;
  if (os_log_type_enabled(v74, v75))
  {
    OUTLINED_FUNCTION_38_3();
    v79 = v69;
    v80 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    a10 = v125;
    *v80 = 136446722;
    v124 = v74;
    v81 = sub_1D4F636B4();
    v83 = sub_1D4E6835C(v81, v82, &a10);
    v126 = 0;
    v84 = v83;

    *(v80 + 4) = v84;
    *(v80 + 12) = 2082;
    v85 = v130;
    sub_1D55067D8(v79, v130, type metadata accessor for MusicFavoriteStatusController.Item);
    OUTLINED_FUNCTION_20_94();
    *&v137 = v87;
    *(&v137 + 1) = v86;
    v93 = sub_1D531AB30(v88, v89, v90, v91, v92);
    v95 = v94;
    MEMORY[0x1DA6EAC70](v93);

    sub_1D5506784(v85, type metadata accessor for MusicFavoriteStatusController.Item);
    v96 = v129;
    v56 = v126;
    sub_1D5506784(v134, type metadata accessor for MusicFavoriteStatusController.Item);
    sub_1D4E6835C(v137, *(&v137 + 1), &a10);
    OUTLINED_FUNCTION_48_40();

    *(v80 + 14) = v95;
    *(v80 + 22) = 2082;
    *&v137 = v39;
    *(&v137 + 1) = v38;
    v138 = v40;
    v97 = Account.description.getter();
    v99 = v98;
    sub_1D4E58768(v137, *(&v137 + 1), v138);
    v100 = sub_1D4E6835C(v97, v99, &a10);

    *(v80 + 24) = v100;
    v101 = v124;
    _os_log_impl(&dword_1D4E3F000, v124, v128, "MusicFavoriteStatusController[%{public}s]: init with item: %{public}s and account: %{public}s.", v80, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  else
  {
    v102 = OUTLINED_FUNCTION_26_76();
    sub_1D4E58768(v102, v103, v104);

    OUTLINED_FUNCTION_4_150();
    sub_1D5506784(v69, v105);
    v96 = v129;
  }

  sub_1D55166B8();
  if (v56)
  {

    OUTLINED_FUNCTION_1_190();
    sub_1D5506784(v96, v106);
    v62 = v56;
LABEL_12:
    sub_1D55066E4();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    v108 = v107;
    v109 = v62;
    sub_1D5507DA4(v62, v108);
    swift_willThrow();

    OUTLINED_FUNCTION_4_150();
    sub_1D5506784(v136, v110);
    if (v56)
    {
      OUTLINED_FUNCTION_4_150();
      sub_1D5506784(v25 + v131, v111);
      sub_1D4E58768(*v132, *(v132 + 8), *(v132 + 16));
      sub_1D560C368();
      OUTLINED_FUNCTION_4_0();
      (*(v112 + 8))(v25 + v133);

      sub_1D4E765C8(v25 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_mappedDaemonItem, &qword_1EC7F7A10, &unk_1D566DC20);
      sub_1D4E765C8(v25 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_subscription, &qword_1EC7ECC98, &qword_1D5622EB0);
      type metadata accessor for MusicFavoriteStatusController(0);
      swift_deallocPartialClassInstance();
    }

    else
    {
    }

    goto LABEL_18;
  }

  v113 = v96;

  v114 = sub_1D560C738();
  v115 = sub_1D56156E8();

  if (os_log_type_enabled(v114, v115))
  {
    OUTLINED_FUNCTION_55_1();
    v116 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v117 = swift_slowAlloc();
    *&v137 = v117;
    *v116 = 136446210;
    v118 = sub_1D4F636B4();
    v120 = sub_1D4E6835C(v118, v119, &v137);

    *(v116 + 4) = v120;
    _os_log_impl(&dword_1D4E3F000, v114, v115, "MusicFavoriteStatusController[%{public}s]: subscribed to daemon client.", v116, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v117);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  OUTLINED_FUNCTION_4_150();
  sub_1D5506784(v136, v121);
  OUTLINED_FUNCTION_1_190();
  sub_1D5506784(v113, v122);
LABEL_18:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5501A24(char *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D560C908();
}

uint64_t MusicFavoriteStatusController.deinit()
{
  v1 = v0;
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v2 = sub_1D560C758();
  __swift_project_value_buffer(v2, qword_1EDD76B38);

  v3 = sub_1D560C738();
  v4 = sub_1D56156E8();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_55_1();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v6 = swift_slowAlloc();
    v28[0] = v6;
    *v5 = 136446210;
    v7 = sub_1D4F636B4();
    v9 = sub_1D4E6835C(v7, v8, v28);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D4E3F000, v3, v4, "MusicFavoriteStatusController[%{public}s]: deninit.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200](v10);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200](v11);
  }

  sub_1D5516740();

  v12 = sub_1D560C738();
  v13 = sub_1D56156E8();

  if (os_log_type_enabled(v12, v13))
  {
    OUTLINED_FUNCTION_55_1();
    v14 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v15 = swift_slowAlloc();
    v28[0] = v15;
    *v14 = 136446210;
    v16 = sub_1D4F636B4();
    v18 = sub_1D4E6835C(v16, v17, v28);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1D4E3F000, v12, v13, "MusicFavoriteStatusController[%{public}s]: unsubscribed to daemon client.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  v19 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController__status;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A18, &unk_1D566DC30);
  OUTLINED_FUNCTION_4_0();
  (*(v20 + 8))(v1 + v19);
  OUTLINED_FUNCTION_4_150();
  sub_1D5506784(v1 + v21, v22);
  sub_1D4E58768(*(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account), *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 8), *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 16));
  v23 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_id;
  sub_1D560C368();
  OUTLINED_FUNCTION_4_0();
  (*(v24 + 8))(v1 + v23);

  OUTLINED_FUNCTION_1_190();
  sub_1D5506784(v1 + v25, v26);
  sub_1D4E765C8(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_mappedDaemonItem, &qword_1EC7F7A10, &unk_1D566DC20);
  sub_1D4E765C8(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_subscription, &qword_1EC7ECC98, &qword_1D5622EB0);
  return v1;
}

uint64_t MusicFavoriteStatusController.__deallocating_deinit()
{
  MusicFavoriteStatusController.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void *sub_1D5501F7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D5501FF0();
  *a1 = v3;
  return result;
}

uint64_t sub_1D5501FF0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();
}

uint64_t sub_1D5502068(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B00, &qword_1D566E3B8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3, a1);
  return sub_1D55021AC(v4);
}

uint64_t sub_1D550213C()
{
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A18, &unk_1D566DC30);
  sub_1D560C8C8();
  return swift_endAccess();
}

uint64_t sub_1D55021AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7B00, &qword_1D566E3B8);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v8 - v6, a1, v2);
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A18, &unk_1D566DC30);
  sub_1D560C8D8();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t MusicFavoriteStatusController.account.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account);
  v4 = *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v5 = *(v2 + 16);
  *(a1 + 16) = v5;
  return sub_1D4E58128(v3, v4, v5);
}

uint64_t sub_1D550231C@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A10, &unk_1D566DC20);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  v6 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_mappedDaemonItem;
  swift_beginAccess();
  sub_1D4F39AB0(v1 + v6, v2, &qword_1EC7F7A10, &unk_1D566DC20);
  v7 = type metadata accessor for MusicDaemon.Item(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    return sub_1D5506A64(v2, a1);
  }

  OUTLINED_FUNCTION_2_188();
  sub_1D55067D8(v1 + v8, a1, v9);
  result = __swift_getEnumTagSinglePayload(v2, 1, v7);
  if (result != 1)
  {
    return sub_1D4E765C8(v2, &qword_1EC7F7A10, &unk_1D566DC20);
  }

  return result;
}

void sub_1D5502444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v24;
  a20 = v25;
  v26 = v22;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_47_5();
  v29 = type metadata accessor for MusicDaemon.Item(0);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_108();
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v31 = sub_1D560C758();
  __swift_project_value_buffer(v31, qword_1EDD76B38);

  v32 = sub_1D560C738();
  v33 = sub_1D56156E8();

  if (os_log_type_enabled(v32, v33))
  {
    OUTLINED_FUNCTION_41_0();
    v34 = swift_slowAlloc();
    OUTLINED_FUNCTION_59_35();
    a10 = swift_slowAlloc();
    *v34 = 136446466;
    v35 = sub_1D4F636B4();
    sub_1D4E6835C(v35, v36, &a10);
    OUTLINED_FUNCTION_48_40();

    *(v34 + 4) = v22;
    *(v34 + 12) = 2082;
    sub_1D550231C(v23);
    OUTLINED_FUNCTION_17_91();
    v64 = v37;
    v65 = v38;
    v39 = sub_1D53A3188();
    v41 = v40;
    MEMORY[0x1DA6EAC70](v39);

    OUTLINED_FUNCTION_1_190();
    sub_1D5506784(v23, v42);
    sub_1D4E6835C(v64, v65, &a10);
    OUTLINED_FUNCTION_48_40();

    *(v34 + 14) = v41;
    v26 = v22;
    _os_log_impl(&dword_1D4E3F000, v32, v33, "MusicFavoriteStatusController[%{public}s]: favorite action for item: %{public}s.", v34, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  v43 = v26;
  sub_1D55167C8(0, v21, &off_1F50C1E80);
  v44 = v26;
  sub_1D5615458();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  OUTLINED_FUNCTION_40_13();
  if (v26)
  {
    v49 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_83_2();
    v50 = swift_allocObject();
    v50[2] = 0;
    v50[3] = 0;
    v50[4] = v49;
    v51 = OUTLINED_FUNCTION_41_7();
    sub_1D51ECB60(v51, v52, v20, v53, v54);

    sub_1D55066E4();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    v56 = v55;
    v57 = v43;
    sub_1D5507DA4(v43, v56);
    swift_willThrow();
  }

  else
  {
    v58 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_83_2();
    v59 = swift_allocObject();
    v59[2] = 0;
    v59[3] = 0;
    v59[4] = v58;
    v60 = OUTLINED_FUNCTION_41_7();
    sub_1D51ECB60(v60, v61, v20, v62, v63);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D55027CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D55027EC, 0, 0);
}

uint64_t sub_1D55027EC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    *(v0 + 72) = 0;
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v5();
  }
}

uint64_t sub_1D55028A8()
{
  OUTLINED_FUNCTION_60();

  sub_1D5503184((v0 + 72));

  v1 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D5502914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5502934, 0, 0);
}

uint64_t sub_1D5502934()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v5();
  }
}

uint64_t sub_1D55029EC()
{
  OUTLINED_FUNCTION_60();

  sub_1D5503B18();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

void sub_1D5502A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v23;
  a20 = v24;
  v86 = v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v81[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A10, &unk_1D566DC20);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_47_5();
  v31 = type metadata accessor for MusicDaemon.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_59_0();
  v85 = v33 - v34;
  v36 = MEMORY[0x1EEE9AC00](v35);
  v38 = &v81[-v37];
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v81[-v39];
  v41 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_mappedDaemonItem;
  swift_beginAccess();
  sub_1D4F39AB0(v21 + v41, v20, &qword_1EC7F7A10, &unk_1D566DC20);
  if (__swift_getEnumTagSinglePayload(v20, 1, v31) == 1)
  {
    sub_1D550231C(v40);
    if (__swift_getEnumTagSinglePayload(v20, 1, v31) != 1)
    {
      sub_1D4E765C8(v20, &qword_1EC7F7A10, &unk_1D566DC20);
    }
  }

  else
  {
    sub_1D5506A64(v20, v40);
  }

  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v42 = sub_1D560C758();
  __swift_project_value_buffer(v42, qword_1EDD76B38);
  OUTLINED_FUNCTION_2_188();
  sub_1D55067D8(v40, v38, v43);

  v44 = sub_1D560C738();
  v45 = sub_1D56156E8();

  if (os_log_type_enabled(v44, v45))
  {
    OUTLINED_FUNCTION_41_0();
    v46 = swift_slowAlloc();
    v84 = v40;
    v47 = v46;
    OUTLINED_FUNCTION_59_35();
    v83 = swift_slowAlloc();
    a10 = v83;
    *v47 = 136446466;
    v48 = sub_1D4F636B4();
    sub_1D4E6835C(v48, v49, &a10);
    OUTLINED_FUNCTION_48_40();

    *(v47 + 4) = v41;
    *(v47 + 12) = 2082;
    v50 = v85;
    sub_1D55067D8(v38, v85, type metadata accessor for MusicDaemon.Item);
    OUTLINED_FUNCTION_17_91();
    v87 = v51;
    v88 = v52;
    v53 = sub_1D53A3188();
    v82 = v45;
    MEMORY[0x1DA6EAC70](v53);

    sub_1D5506784(v50, type metadata accessor for MusicDaemon.Item);
    sub_1D5506784(v38, type metadata accessor for MusicDaemon.Item);
    sub_1D4E6835C(v87, v88, &a10);
    OUTLINED_FUNCTION_48_40();

    *(v47 + 14) = type metadata accessor for MusicDaemon.Item;
    _os_log_impl(&dword_1D4E3F000, v44, v82, "MusicFavoriteStatusController[%{public}s]: undo-favorite action for item: %{public}s.", v47, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    v40 = v84;
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  else
  {

    OUTLINED_FUNCTION_1_190();
    sub_1D5506784(v38, v54);
  }

  v55 = v86;
  sub_1D55167C8(1, v21, &off_1F50C1E80);
  if (v55)
  {
    OUTLINED_FUNCTION_1_190();
    sub_1D5506784(v40, v56);
    sub_1D5615458();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
    OUTLINED_FUNCTION_40_13();
    v61 = swift_allocObject();
    OUTLINED_FUNCTION_46_40(v61);
    swift_weakInit();
    OUTLINED_FUNCTION_83_2();
    v62 = swift_allocObject();
    OUTLINED_FUNCTION_29_60(v62);
    v63 = OUTLINED_FUNCTION_41_7();
    sub_1D51ECB60(v63, v64, v28, v65, v66);

    sub_1D55066E4();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    v68 = v67;
    v69 = v55;
    sub_1D5507DA4(v55, v68);
    swift_willThrow();
  }

  else
  {
    sub_1D5615458();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v70, v71, v72, v73);
    OUTLINED_FUNCTION_40_13();
    v74 = swift_allocObject();
    OUTLINED_FUNCTION_46_40(v74);
    swift_weakInit();
    OUTLINED_FUNCTION_83_2();
    v75 = swift_allocObject();
    OUTLINED_FUNCTION_29_60(v75);
    v76 = OUTLINED_FUNCTION_41_7();
    sub_1D51ECB60(v76, v77, v28, v78, v79);

    OUTLINED_FUNCTION_1_190();
    sub_1D5506784(v40, v80);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D5502F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5502F84, 0, 0);
}

uint64_t sub_1D5502F84()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    *(v0 + 72) = 1;
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v5();
  }
}

uint64_t sub_1D5503044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5503064, 0, 0);
}

uint64_t sub_1D5503064()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_12_53();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_1D56153C8();
    *(v0 + 64) = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_82();
    sub_1D5615338();
    OUTLINED_FUNCTION_90();
    v2 = OUTLINED_FUNCTION_17_17();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    OUTLINED_FUNCTION_10_4();

    return v5();
  }
}

uint64_t sub_1D550311C()
{
  OUTLINED_FUNCTION_60();

  sub_1D5503B18();

  v0 = OUTLINED_FUNCTION_12_1();

  return MEMORY[0x1EEE6DFA0](v0, v1, v2);
}

uint64_t sub_1D5503184(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_47_45();

    if (v5[2] == 1)
    {
      return result;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_47_45();

    v3 = v5[1];
    v5[0] = 1;
    v4 = v5;
    goto LABEL_7;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_47_45();

  if (v7 - 3 > 2 && v7 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    OUTLINED_FUNCTION_47_45();

    v3 = v6[1];
    v6[0] = 0;
    v4 = v6;
LABEL_7:
    result = sub_1D5501A24(v4);
    if (v3 != 3)
    {
      *(v1 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_previousStatus) = v3;
    }
  }

  return result;
}

BOOL static MusicFavoriteStatusController.Status.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
    case 3:
      return v3 == 3;
  }

  if ((v3 - 3) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

void sub_1D550335C()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v73 = v4;
  v6 = v5;
  sub_1D56106B8();
  OUTLINED_FUNCTION_4();
  v66 = v8;
  v67 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v65 = v10 - v9;
  v11 = sub_1D560D478();
  OUTLINED_FUNCTION_4();
  v71 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v70 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC98, &qword_1D5622EB0);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_59_0();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v63 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A10, &unk_1D566DC20);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_16_0();
  v26 = *v3;
  v72 = v3[1];
  v27 = v3[2];
  OUTLINED_FUNCTION_2_188();
  v69 = v6;
  sub_1D55067D8(v6, v1, v28);
  v68 = type metadata accessor for MusicDaemon.Item(0);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v68);
  v29 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_mappedDaemonItem;
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  v30 = v0;
  sub_1D4E68940(v1, v0 + v29, &qword_1EC7F7A10, &unk_1D566DC20);
  swift_endAccess();
  v31 = v73;
  sub_1D4F39AB0(v73, v23, &qword_1EC7ECC98, &qword_1D5622EB0);
  v32 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_subscription;
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  sub_1D4E68940(v23, v30 + v32, &qword_1EC7ECC98, &qword_1D5622EB0);
  swift_endAccess();
  v74 = v30;
  v33 = (v30 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_restrictions);
  v34 = v72;
  *v33 = v26;
  v33[1] = v34;
  v33[2] = v27;
  sub_1D4F39AB0(v31, v20, &qword_1EC7ECC98, &qword_1D5622EB0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v11) == 1)
  {
    sub_1D4E765C8(v20, &qword_1EC7ECC98, &qword_1D5622EB0);
LABEL_6:
    v37 = 5;
    goto LABEL_7;
  }

  (*(v71 + 32))(v70, v20, v11);
  if (v26 == 2 || *(v69 + v68[9]) == 2)
  {
    v35 = OUTLINED_FUNCTION_28_0();
    v36(v35);
    goto LABEL_6;
  }

  v64 = *(v69 + v68[9]);
  v49 = v68[7];
  LODWORD(v72) = *(v69 + v68[8]);
  if (*(v69 + v49) == 3)
  {
    v37 = 0;
  }

  else
  {
    v37 = *(v69 + v49);
  }

  v50 = v74 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_item;
  type metadata accessor for MusicFavoriteStatusController.Item(0);
  v52 = v65;
  v51 = v66;
  v53 = v26;
  v54 = v67;
  (*(v66 + 104))(v65, *MEMORY[0x1E6975D58], v67);
  v73 = v50;
  v55 = sub_1D56106A8();
  (*(v51 + 8))(v52, v54);
  if ((v55 & 1) != 0 && (v53 & 1) == 0 || *(v73 + 33) == 1 && (v53 & 0x10000) == 0)
  {
    goto LABEL_31;
  }

  if (v72)
  {
    v58 = OUTLINED_FUNCTION_28_0();
    v59(v58);
  }

  else
  {
    if ((sub_1D560D438() & 1) == 0)
    {
LABEL_31:
      v56 = OUTLINED_FUNCTION_28_0();
      v57(v56);
LABEL_32:
      v37 = 4;
      goto LABEL_7;
    }

    v60 = sub_1D560D448();
    v61 = OUTLINED_FUNCTION_28_0();
    v62(v61);
    if ((v60 & 1) == 0 || (v64 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_7:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  if (LOBYTE(v76[0]) != 3)
  {
    if (LOBYTE(v76[0]) == 4)
    {
      if (v37 == 4)
      {
        goto LABEL_23;
      }
    }

    else if (LOBYTE(v76[0]) == 5)
    {
      if (v37 == 5)
      {
        goto LABEL_23;
      }
    }

    else if ((v37 - 6) <= 0xFFFFFFFC && LOBYTE(v76[0]) == v37)
    {
      goto LABEL_23;
    }
  }

  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v39 = sub_1D560C758();
  __swift_project_value_buffer(v39, qword_1EDD76B38);

  v40 = sub_1D560C738();
  v41 = sub_1D56156E8();

  if (os_log_type_enabled(v40, v41))
  {
    OUTLINED_FUNCTION_41_0();
    v42 = swift_slowAlloc();
    OUTLINED_FUNCTION_59_35();
    v76[0] = swift_slowAlloc();
    *v42 = 136446466;
    v43 = sub_1D4F636B4();
    v45 = sub_1D4E6835C(v43, v44, v76);

    *(v42 + 4) = v45;
    *(v42 + 12) = 2082;
    v75 = v37;
    v46 = MusicFavoriteStatusController.Status.description.getter();
    v48 = sub_1D4E6835C(v46, v47, v76);

    *(v42 + 14) = v48;
    _os_log_impl(&dword_1D4E3F000, v40, v41, "MusicFavoriteStatusController[%{public}s]: setting status to %{public}s.", v42, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  LOBYTE(v76[0]) = v37;
  sub_1D5501A24(v76);
LABEL_23:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D55039A4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F7A10, &unk_1D566DC20);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22[-v4 - 8];
  v6 = OUTLINED_FUNCTION_85_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_108();
  sub_1D560D478();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  v14 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_subscription;
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  sub_1D4E68940(v1, v0 + v14, &qword_1EC7ECC98, &qword_1D5622EB0);
  swift_endAccess();
  type metadata accessor for MusicDaemon.Item(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_mappedDaemonItem;
  OUTLINED_FUNCTION_26_75();
  swift_beginAccess();
  sub_1D4E68940(v5, v0 + v19, &qword_1EC7F7A10, &unk_1D566DC20);
  swift_endAccess();
  v22[0] = 5;
  return sub_1D5501A24(v22);
}

uint64_t sub_1D5503B18()
{
  v1 = OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_previousStatus;
  if (*(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_previousStatus) != 6)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_previousStatus);
    result = sub_1D5501A24(&v3);
    *(v0 + v1) = 6;
  }

  return result;
}

uint64_t sub_1D5503B64@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MusicFavoriteStatusController(0);
  result = sub_1D560C838();
  *a2 = result;
  return result;
}

void sub_1D5503BA4()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v66 = v5;
  v6 = type metadata accessor for MusicFavoriteStatusController.Item(0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v65 = v9 - v8;
  v10 = *v2;
  v11 = *(v2 + 8);
  v12 = *(v2 + 16);
  if (qword_1EDD544D0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
    swift_once();
  }

  v13 = sub_1D560C758();
  __swift_project_value_buffer(v13, qword_1EDD76B38);

  v14 = sub_1D560C738();
  v15 = sub_1D56156E8();

  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_55_1();
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_38_3();
    v64 = v11;
    v17 = v10;
    v18 = swift_slowAlloc();
    v67 = v18;
    *v16 = 136446210;
    v19 = v0;
    v20 = sub_1D4F636B4();
    sub_1D4E6835C(v20, v21, &v67);
    OUTLINED_FUNCTION_48_40();

    *(v16 + 4) = v0;
    _os_log_impl(&dword_1D4E3F000, v14, v15, "MusicFavoriteStatusController[%{public}s]: didBeginObserving.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v10 = v17;
    v11 = v64;
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200]();
  }

  else
  {
    v19 = v0;
  }

  if (v12 != 255)
  {

    v22 = OUTLINED_FUNCTION_50_38();
    sub_1D5507888(v22, v23, v24);
    v25 = sub_1D560C738();
    v26 = sub_1D56156E8();
    v27 = OUTLINED_FUNCTION_50_38();
    sub_1D55078B4(v27, v28, v29);

    if (os_log_type_enabled(v25, v26))
    {
      v30 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v30 = 136446978;
      v31 = sub_1D4F636B4();
      OUTLINED_FUNCTION_63_27(v31, v32);
      OUTLINED_FUNCTION_82();

      *(v30 + 4) = v19;
      *(v30 + 12) = 2082;
      v67 = v10;
      v68 = v11;
      v69 = v12;
      v33 = OUTLINED_FUNCTION_50_38();
      sub_1D550789C(v33, v34, v35);
      v36 = sub_1D5614DB8();
      OUTLINED_FUNCTION_63_27(v36, v37);
      OUTLINED_FUNCTION_82();

      *(v30 + 14) = v19;
      *(v30 + 22) = 2082;
      sub_1D55067D8(v19 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_item, v65, type metadata accessor for MusicFavoriteStatusController.Item);
      OUTLINED_FUNCTION_20_94();
      v67 = v39;
      v68 = v38;
      v45 = sub_1D531AB30(v40, v41, v42, v43, v44);
      MEMORY[0x1DA6EAC70](v45);

      sub_1D5506784(v65, type metadata accessor for MusicFavoriteStatusController.Item);
      sub_1D4E6835C(v67, v68, &v70);
      OUTLINED_FUNCTION_82();

      *(v30 + 24) = &v67;
      *(v30 + 32) = 2082;
      v46 = *(v19 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 8);
      v47 = *(v19 + OBJC_IVAR____TtC16MusicKitInternal29MusicFavoriteStatusController_account + 16);
      v48 = OUTLINED_FUNCTION_71();
      sub_1D4E58128(v48, v49, v47);
      v50 = OUTLINED_FUNCTION_71();
      v52 = sub_1D4F5E29C(v50, v51, v47);
      OUTLINED_FUNCTION_63_27(v52, v53);
      OUTLINED_FUNCTION_82();

      *(v30 + 34) = v46;
      _os_log_impl(&dword_1D4E3F000, v25, v26, "MusicFavoriteStatusController[%{public}s]: encountered error: %{public}s trying to observe item: %{public}s, account: %{public}s.", v30, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
      OUTLINED_FUNCTION_12_4();
      MEMORY[0x1DA6ED200]();
    }

    sub_1D5615458();
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
    OUTLINED_FUNCTION_40_13();
    v58 = swift_allocObject();
    OUTLINED_FUNCTION_46_40(v58);
    swift_weakInit();
    OUTLINED_FUNCTION_83_2();
    v59 = swift_allocObject();
    OUTLINED_FUNCTION_29_60(v59);
    v60 = OUTLINED_FUNCTION_41_7();
    sub_1D51ECB60(v60, v61, v66, v62, v63);
  }

  OUTLINED_FUNCTION_46();
}