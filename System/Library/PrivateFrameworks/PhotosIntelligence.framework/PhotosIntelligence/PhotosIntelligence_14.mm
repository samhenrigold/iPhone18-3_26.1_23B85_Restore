uint64_t sub_1C706C2F4()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C706C458()
{
  v1 = v0[61];
  v2 = v0[60];
  v3 = v0[52];
  (*(v0[46] + 8))(v0[48], v0[45]);
  v1(v2, v3);
  v4 = v0[23];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1C706C5C0()
{
  v3 = OUTLINED_FUNCTION_83();
  v4(v3);
  v2(v1, v0);
  OUTLINED_FUNCTION_59_0();

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C706C6D4()
{
  v3 = OUTLINED_FUNCTION_83();
  v4(v3);
  v2(v1, v0);
  OUTLINED_FUNCTION_59_0();

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C706C7E8(uint64_t a1)
{
  v1 = sub_1C755029C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754FA7C();
  sub_1C706CBD4(&qword_1EDD06CB0, MEMORY[0x1E69A14E8], MEMORY[0x1E69A14B8]);
  sub_1C75502CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E50, &qword_1C755C030);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C755BAB0;
  (*(v2 + 16))(v6 + v5, v4, v1);
  MEMORY[0x1CCA5C7D0](v6);

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1C706C9A0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1C706CA78;

  return sub_1C706B114(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_1C706CA78()
{
  OUTLINED_FUNCTION_42();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C706CB5C(uint64_t a1)
{
  v2 = type metadata accessor for LLMConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C706CBD4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t (*sub_1C706CC1C(uint64_t (*result)(_BYTE *), uint64_t a2, uint64_t a3))(_BYTE *)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = 32;
  v24 = result;
  v25 = a2;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    memcpy(__dst, (a3 + v9), sizeof(__dst));
    memcpy(v28, (a3 + v9), 0x78uLL);
    sub_1C6FCA6E4(__dst, __src);
    v10 = v5(v28);
    if (v3)
    {
      OUTLINED_FUNCTION_257_0(v10, v11, v12, v13, v14, v15, v16, v17, v24, v25);
      sub_1C6FDD548(__src);

LABEL_14:

      return v8;
    }

    if (v10)
    {
      OUTLINED_FUNCTION_257_0(v10, v11, v12, v13, v14, v15, v16, v17, v24, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = OUTLINED_FUNCTION_99();
        sub_1C716D7D8(v19, v20, v21);
        v8 = v29;
      }

      v23 = *(v8 + 16);
      v22 = *(v8 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1C716D7D8(v22 > 1, v23 + 1, 1);
        v8 = v29;
      }

      *(v8 + 16) = v23 + 1;
      result = memcpy((v8 + 120 * v23 + 32), __src, 0x78uLL);
      v5 = v24;
    }

    else
    {
      OUTLINED_FUNCTION_257_0(v10, v11, v12, v13, v14, v15, v16, v17, v24, v25);
      result = sub_1C6FDD548(__src);
    }

    v9 += 120;
    ++v6;
  }

  __break(1u);
  return result;
}

void sub_1C706CDA4(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Hastings.Asset(0);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_209_0();
  v9 = 0;
  v10 = *(a3 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v10 == v9)
    {

      return;
    }

    if (v9 >= *(a3 + 16))
    {
      break;
    }

    sub_1C7080BB8();
    v11 = a1(v4);
    if (v3)
    {
      sub_1C7080E04();

      return;
    }

    if (v11)
    {
      sub_1C7080C2C();
      v12 = v19;
      v22 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = OUTLINED_FUNCTION_99();
        sub_1C716E298(v13, v14, v15);
        v12 = v19;
      }

      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v20 = v17 + 1;
        sub_1C716E298(v16 > 1, v17 + 1, 1);
        v18 = v20;
        v12 = v22;
      }

      ++v9;
      *(v12 + 16) = v18;
      v19 = v12;
      sub_1C7080C2C();
    }

    else
    {
      sub_1C7080E04();
      ++v9;
    }
  }

  __break(1u);
}

void sub_1C706D018(uint64_t (*result)(char *), uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v17 = v7;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_13;
    }

    if (v6 >= *(a3 + 16))
    {
      break;
    }

    v19 = *(a3 + v6 + 32);
    v9 = v5(&v19);
    if (v3)
    {

LABEL_13:

      return;
    }

    if (v9)
    {
      v10 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = OUTLINED_FUNCTION_99();
        sub_1C716EBB0(v12, v13, v14);
        v8 = v20;
      }

      v16 = *(v8 + 16);
      v15 = *(v8 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1C716EBB0(v15 > 1, v16 + 1, 1);
        v8 = v20;
      }

      *(v8 + 16) = v16 + 1;
      *(v8 + v16 + 32) = v10;
      v7 = v17;
      v5 = result;
    }

    ++v6;
  }

  __break(1u);
}

void sub_1C706D1DC()
{
  OUTLINED_FUNCTION_33();
  v1 = OUTLINED_FUNCTION_300();
  v2 = type metadata accessor for Hastings.Feature(v1);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *(v0 + 16);
  v7 = sub_1C707E638(&qword_1EC216778, type metadata accessor for Hastings.Feature);
  v8 = 0;
  MEMORY[0x1CCA5D4D0](v6, v2, v7);
  OUTLINED_FUNCTION_11();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  if ((v10 & v9) != 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v14 >= v13)
    {

      OUTLINED_FUNCTION_25_0();
      return;
    }

    v11 = *(v0 + 64 + 8 * v14);
    ++v8;
    if (v11)
    {
      v8 = v14;
      do
      {
LABEL_7:
        v11 &= v11 - 1;
        sub_1C7080BB8();
        sub_1C7080C2C();
        OUTLINED_FUNCTION_103();
        sub_1C70F0B34();
        sub_1C7080E04();
      }

      while (v11);
      continue;
    }
  }

  __break(1u);
}

void sub_1C706D4E4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_300();
  v3 = sub_1C754E07C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_291_0();
  sub_1C707E638(&qword_1EC215FD8, MEMORY[0x1E6969610]);
  v8 = OUTLINED_FUNCTION_81_6();
  MEMORY[0x1CCA5D4D0](v8, v3);
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = *(v5 + 16);
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_268_0();
    do
    {
      v11 = OUTLINED_FUNCTION_296_0();
      v10(v11);
      OUTLINED_FUNCTION_103();
      sub_1C70F1248();
      v12 = OUTLINED_FUNCTION_154();
      v13(v12);
      v1 += v2;
      --v9;
    }

    while (v9);
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C706D644(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for PHSearchEntityCategoryType(0);
  v4 = v3;
  v5 = sub_1C707E638(&qword_1EDD06908, type metadata accessor for PHSearchEntityCategoryType);
  v6 = MEMORY[0x1CCA5D4D0](v2, v4, v5);
  v12 = v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 32;
    do
    {
      sub_1C70F1528(&v11, *(a1 + v8));
      v8 += 8;
      --v7;
    }

    while (v7);

    return v12;
  }

  else
  {
    v9 = v6;
  }

  return v9;
}

void sub_1C706D714()
{
  OUTLINED_FUNCTION_72_4();
  v4 = sub_1C7080600();
  v5 = 0;
  v9 = MEMORY[0x1CCA5D4D0](v1, &type metadata for StoryMusicCurationSong, v4);
  OUTLINED_FUNCTION_167_1();
  while (1)
  {
    if (v2 == v5)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v6)
    {
      break;
    }

    memcpy(__dst, (v0 + v3), sizeof(__dst));
    ++v5;
    sub_1C7080654(__dst, v8);
    sub_1C70F1A9C();
    memcpy(v8, __src, sizeof(v8));
    sub_1C70806B0(v8);
    v3 += 192;
  }

  __break(1u);
}

void sub_1C706D940()
{
  OUTLINED_FUNCTION_72_4();
  v3 = sub_1C7027E0C();
  v40 = MEMORY[0x1CCA5D4D0](v0, &type metadata for PersonExtendedToken, v3);
  OUTLINED_FUNCTION_167_1();
  while (1)
  {
    if (!v1)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v4)
    {
      break;
    }

    v5 = OUTLINED_FUNCTION_267_0();
    memcpy(v5, v6, 0x41uLL);
    v7 = OUTLINED_FUNCTION_120_4();
    v9 = sub_1C7025F3C(v7, v8);
    v17 = OUTLINED_FUNCTION_122_3(v9, v10, v11, v12, v13, v14, v15, v16, v29);
    v19 = sub_1C70F3F1C(v17, v18);
    v27 = OUTLINED_FUNCTION_266_0(v19, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0]);
    memcpy(v27, v28, 0x41uLL);
    sub_1C7025F74(v39);
    v2 += 72;
  }

  __break(1u);
}

void sub_1C706D9F4()
{
  OUTLINED_FUNCTION_72_4();
  v3 = sub_1C7027EF8();
  v40 = MEMORY[0x1CCA5D4D0](v0, &type metadata for PetExtendedToken, v3);
  OUTLINED_FUNCTION_167_1();
  while (1)
  {
    if (!v1)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v4)
    {
      break;
    }

    v5 = OUTLINED_FUNCTION_267_0();
    memcpy(v5, v6, 0x42uLL);
    v7 = OUTLINED_FUNCTION_120_4();
    v9 = sub_1C7025FF8(v7, v8);
    v17 = OUTLINED_FUNCTION_122_3(v9, v10, v11, v12, v13, v14, v15, v16, v29);
    v19 = sub_1C70F3DC8(v17, v18);
    v27 = OUTLINED_FUNCTION_266_0(v19, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0]);
    memcpy(v27, v28, 0x42uLL);
    sub_1C7026030(v39);
    v2 += 72;
  }

  __break(1u);
}

uint64_t sub_1C706DAA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C7027FE4();
  result = MEMORY[0x1CCA5D4D0](v2, &type metadata for LocationExtendedToken, v3);
  v5 = 0;
  v36 = result;
  v6 = *(a1 + 16);
  for (i = 32; ; i += 56)
  {
    if (v6 == v5)
    {

      return v36;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = OUTLINED_FUNCTION_264_0();
    v38 = v9;
    v39 = v8;
    v40 = *(v10 + 48);
    ++v5;
    v11 = sub_1C70260B4(v37, v35);
    v19 = OUTLINED_FUNCTION_276_0(v11, v12, v13, v14, v15, v16, v17, v18, v29, v31);
    v21 = sub_1C70F3B88(v19, v20);
    result = OUTLINED_FUNCTION_173_0(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, v32, v33, v34, *v35, *&v35[16], *&v35[32], *&v35[48]);
  }

  __break(1u);
  return result;
}

void sub_1C706DB74()
{
  OUTLINED_FUNCTION_72_4();
  v3 = sub_1C70280D0();
  MEMORY[0x1CCA5D4D0](v0, &type metadata for GenericLocationExtendedToken, v3);
  OUTLINED_FUNCTION_167_1();
  while (1)
  {
    if (!v1)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v4)
    {
      break;
    }

    OUTLINED_FUNCTION_22_15();
    v7 = sub_1C70805A4(v5, v6);
    v15 = OUTLINED_FUNCTION_123_4(v7, v8, v9, v10, v11, v12, v13, v14, v17);
    sub_1C70F3990(v15, v16);
    OUTLINED_FUNCTION_318_0();

    v2 += 40;
  }

  __break(1u);
}

uint64_t sub_1C706DC14()
{
  v1 = OUTLINED_FUNCTION_300();
  type metadata accessor for TimeExtendedToken(v1);
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_212_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_290_0();
  sub_1C707E638(qword_1EDD0A7E0, type metadata accessor for TimeExtendedToken);
  v6 = OUTLINED_FUNCTION_117_0();
  v7 = MEMORY[0x1CCA5D4D0](v6);
  v14 = v7;
  v8 = *(v0 + 16);
  if (v8)
  {
    OUTLINED_FUNCTION_191();
    v10 = v0 + v9;
    v11 = *(v3 + 72);
    do
    {
      OUTLINED_FUNCTION_154();
      sub_1C7080BB8();
      OUTLINED_FUNCTION_211_0();
      sub_1C70F3190();
      OUTLINED_FUNCTION_115_4();
      v10 += v11;
      --v8;
    }

    while (v8);

    return v14;
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

uint64_t sub_1C706DD74()
{
  OUTLINED_FUNCTION_72_4();
  v2 = sub_1C7028308();
  result = MEMORY[0x1CCA5D4D0](v1, &type metadata for PartOfDayExtendedToken, v2);
  v20 = result;
  v11 = *(v0 + 16);
  for (i = 32; ; i += 56)
  {
    if (!v11)
    {

      return v20;
    }

    if (!*(v0 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_145_1(result, v4, v5, v6, v7, v8, v9, v10, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
    sub_1C70F2CAC();
  }

  __break(1u);
  return result;
}

void sub_1C706DE30()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = type metadata accessor for PartOfWeekExtendedToken(0);
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  v68 = v8 - v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  v67 = v58 - v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  v62 = v58 - v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_209_0();
  sub_1C707E638(&qword_1EDD09800, type metadata accessor for PartOfWeekExtendedToken);
  v15 = OUTLINED_FUNCTION_81_6();
  v65 = v4;
  v16 = MEMORY[0x1CCA5D4D0](v15, v4);
  v59 = *(v3 + 16);
  if (!v59)
  {
    goto LABEL_50;
  }

  v17 = 0;
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_294_0(v3 + v18);
  *(v19 - 256) = v3;
  v58[0] = v6;
  while (1)
  {
    if (v17 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_52;
    }

    v20 = *(v6 + 72);
    v60 = v17;
    OUTLINED_FUNCTION_3_20();
    sub_1C7080BB8();
    sub_1C7551F3C();
    OUTLINED_FUNCTION_18_12();
    v21 = *v1;
    v22 = *(v1 + 8);
    v23 = OUTLINED_FUNCTION_296_0();
    MEMORY[0x1CCA5CD70](v23);
    OUTLINED_FUNCTION_192_0();

    sub_1C7551FAC();
    v24 = v16 + 56;
    OUTLINED_FUNCTION_40_12();
    v27 = *(v16 + 56 + v26) >> v0;
    v66 = v20;
    if ((v27 & 1) == 0)
    {
      break;
    }

    v28 = ~v25;
    v63 = v16;
    while (1)
    {
      OUTLINED_FUNCTION_3_20();
      v29 = v68;
      sub_1C7080BB8();
      v30 = *v29 == v21 && v29[1] == v22;
      if (!v30 && (sub_1C7551DBC() & 1) == 0)
      {
        goto LABEL_20;
      }

      if ((*(v68 + 24) & 1) == 0)
      {
        break;
      }

      if (*(v1 + 24))
      {
        goto LABEL_13;
      }

LABEL_20:
      OUTLINED_FUNCTION_1_28();
      sub_1C7080E04();
LABEL_21:
      v0 = (v0 + 1) & v28;
      OUTLINED_FUNCTION_187_0();
      if (((*(v24 + v38) >> v0) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    OUTLINED_FUNCTION_134_2();
    if (v37)
    {
      goto LABEL_20;
    }

LABEL_13:
    OUTLINED_FUNCTION_220_0();
    OUTLINED_FUNCTION_14_16();
    v32 = sub_1C707E638(&qword_1EC2147B8, v31);
    OUTLINED_FUNCTION_218_0(v32);
    OUTLINED_FUNCTION_315_0();
    v1 = v70;
    OUTLINED_FUNCTION_284();
    if (!v30 || v1 != v24)
    {
      v36 = OUTLINED_FUNCTION_13_6(v33, v1, v34);

      OUTLINED_FUNCTION_1_28();
      sub_1C7080E04();
      OUTLINED_FUNCTION_235_1();
      if (v36)
      {
        goto LABEL_47;
      }

      goto LABEL_21;
    }

    OUTLINED_FUNCTION_1_28();
    sub_1C7080E04();
    v16 = v63;
    v1 = v64;
LABEL_47:
    v17 = v60 + 1;
    OUTLINED_FUNCTION_1_28();
    sub_1C7080E04();
    v3 = v58[1];
    v6 = v58[0];
    if (v17 == v59)
    {
LABEL_50:

      OUTLINED_FUNCTION_25_0();
      return;
    }
  }

LABEL_22:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_20();
  v40 = v62;
  sub_1C7080BB8();
  v69 = v16;
  if (*(v16 + 24) <= *(v16 + 16))
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_1C72E97B0();
    }

    else
    {
      sub_1C72F7BDC();
    }

    v41 = v69;
    sub_1C7551F3C();
    OUTLINED_FUNCTION_18_12();
    OUTLINED_FUNCTION_313_0();
    OUTLINED_FUNCTION_192_0();

    sub_1C7551FAC();
    OUTLINED_FUNCTION_40_12();
    if (((*(v41 + 56 + v43) >> v0) & 1) == 0)
    {
      goto LABEL_45;
    }

    v44 = ~v42;
    v63 = v41 + 56;
    v61 = ~v42;
    while (1)
    {
      OUTLINED_FUNCTION_3_20();
      v45 = v67;
      sub_1C7080BB8();
      v46 = *v45 == v16 && v45[1] == v21;
      if (!v46 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      if (v67[24])
      {
        if (!*(v40 + 24))
        {
          break;
        }
      }

      else
      {
        OUTLINED_FUNCTION_134_2();
        if (v47)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_216_0();
      OUTLINED_FUNCTION_14_16();
      v49 = sub_1C707E638(&qword_1EC2147B8, v48);
      OUTLINED_FUNCTION_219_0(v49);
      OUTLINED_FUNCTION_314_0();
      v40 = v70;
      OUTLINED_FUNCTION_284();
      if (v30 && v40 == v45)
      {
        goto LABEL_53;
      }

      v53 = OUTLINED_FUNCTION_13_6(v50, v40, v51);

      OUTLINED_FUNCTION_1_28();
      sub_1C7080E04();
      OUTLINED_FUNCTION_185_0();
      if (v53)
      {
        goto LABEL_54;
      }

LABEL_44:
      v0 = (v0 + 1) & v44;
      OUTLINED_FUNCTION_187_0();
      if (((*(v41 + 56 + v54) >> v0) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    OUTLINED_FUNCTION_1_28();
    sub_1C7080E04();
    goto LABEL_44;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C72F3988();
  }

LABEL_45:
  OUTLINED_FUNCTION_73_4();
  v55 = *(v16 + 16);
  v56 = __OFADD__(v55, 1);
  v57 = v55 + 1;
  if (!v56)
  {
    *(v16 + 16) = v57;
    v1 = v64;
    goto LABEL_47;
  }

LABEL_52:
  __break(1u);
LABEL_53:

  OUTLINED_FUNCTION_1_28();
  sub_1C7080E04();
LABEL_54:
  sub_1C7551E3C();
  __break(1u);
}

void sub_1C706E37C()
{
  OUTLINED_FUNCTION_72_4();
  v3 = sub_1C70284E8();
  MEMORY[0x1CCA5D4D0](v0, &type metadata for TripExtendedToken, v3);
  OUTLINED_FUNCTION_167_1();
  while (1)
  {
    if (!v1)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v4)
    {
      break;
    }

    v5 = OUTLINED_FUNCTION_43_7();
    v7 = sub_1C7026698(v5, v6);
    v15 = OUTLINED_FUNCTION_203_0(v7, v8, v9, v10, v11, v12, v13, v14, v26);
    v17 = sub_1C70F2A94(v15, v16);
    OUTLINED_FUNCTION_87_6(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, v31);
    sub_1C70266D0(v25);
    v2 += 64;
  }

  __break(1u);
}

void sub_1C706E418()
{
  OUTLINED_FUNCTION_72_4();
  v3 = sub_1C7028680();
  MEMORY[0x1CCA5D4D0](v0, &type metadata for EventExtendedToken, v3);
  OUTLINED_FUNCTION_167_1();
  while (1)
  {
    if (!v1)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v4)
    {
      break;
    }

    OUTLINED_FUNCTION_22_15();
    v7 = sub_1C70804EC(v5, v6);
    v15 = OUTLINED_FUNCTION_123_4(v7, v8, v9, v10, v11, v12, v13, v14, v18);
    sub_1C70F26F0(v15, v16, v17);
    OUTLINED_FUNCTION_318_0();

    v2 += 40;
  }

  __break(1u);
}

uint64_t sub_1C706E520(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_280_0(a1);
  v4 = MEMORY[0x1CCA5D4D0](v3, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v17 = v4;
  v11 = *(v1 + 16);
  if (v11)
  {
    v12 = 32;
    do
    {
      v13 = OUTLINED_FUNCTION_124_4(v4, *(v1 + v12), v5, v6, v7, v8, v9, v10, v16);
      v4 = sub_1C70F428C(v13, v14);
      v12 += 8;
      --v11;
    }

    while (v11);

    return v17;
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  return v2;
}

uint64_t sub_1C706E610(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = MEMORY[0x1CCA5D4D0](result, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v15 = result;
  if (v2 == a2)
  {
    return result;
  }

  if (a2 < v2)
  {
    goto LABEL_9;
  }

  if (v2 >= a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  do
  {
    v13 = OUTLINED_FUNCTION_124_4(result, v6, v7, v8, v9, v10, v11, v12, v14);
    result = sub_1C70F428C(v13, v2++);
  }

  while (a2 != v2);
  return v15;
}

void sub_1C706E6DC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_300();
  v3 = sub_1C754F0FC();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_291_0();
  sub_1C707E638(&qword_1EC2167B8, MEMORY[0x1E69C1790]);
  v8 = OUTLINED_FUNCTION_81_6();
  MEMORY[0x1CCA5D4D0](v8, v3);
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = *(v5 + 16);
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_268_0();
    do
    {
      v11 = OUTLINED_FUNCTION_296_0();
      v10(v11);
      OUTLINED_FUNCTION_103();
      sub_1C70F5514();
      v12 = OUTLINED_FUNCTION_154();
      v13(v12);
      v1 += v2;
      --v9;
    }

    while (v9);
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C706E8F0()
{
  v1 = OUTLINED_FUNCTION_300();
  type metadata accessor for Hastings.Asset(v1);
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_212_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_290_0();
  sub_1C707E638(&qword_1EC216190, type metadata accessor for Hastings.Asset);
  v6 = OUTLINED_FUNCTION_117_0();
  v7 = MEMORY[0x1CCA5D4D0](v6);
  v14 = v7;
  v8 = *(v0 + 16);
  if (v8)
  {
    OUTLINED_FUNCTION_191();
    v10 = v0 + v9;
    v11 = *(v3 + 72);
    do
    {
      OUTLINED_FUNCTION_154();
      sub_1C7080BB8();
      OUTLINED_FUNCTION_211_0();
      sub_1C70F0914();
      sub_1C7080E04();
      v10 += v11;
      --v8;
    }

    while (v8);

    return v14;
  }

  else
  {
    v12 = v7;
  }

  return v12;
}

void sub_1C706EA68()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1C754D8BC();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  sub_1C707E638(&qword_1EDD0CBF8, MEMORY[0x1E6968130]);
  v13 = OUTLINED_FUNCTION_81_6();
  v14 = MEMORY[0x1CCA5D4D0](v13, v3);
  v15 = 0;
  v25 = v2;
  v26 = v14;
  v16 = v2 + 64;
  OUTLINED_FUNCTION_11();
  v19 = v18 & v17;
  v21 = (v20 + 63) >> 6;
  v24[2] = v5 + 32;
  v24[3] = v5 + 16;
  v24[1] = v5 + 8;
  if ((v18 & v17) != 0)
  {
    do
    {
      v22 = v15;
LABEL_7:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v5 + 16))(v12, *(v25 + 56) + *(v5 + 72) * (v23 | (v22 << 6)), v3);
      (*(v5 + 32))(v0, v12, v3);
      OUTLINED_FUNCTION_117_0();
      sub_1C70F5684();
      (*(v5 + 8))(v9, v3);
    }

    while (v19);
  }

  while (1)
  {
    v22 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v22 >= v21)
    {

      OUTLINED_FUNCTION_25_0();
      return;
    }

    v19 = *(v16 + 8 * v22);
    ++v15;
    if (v19)
    {
      v15 = v22;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1C706EC80()
{
  OUTLINED_FUNCTION_72_4();
  v3 = sub_1C7080298();
  MEMORY[0x1CCA5D4D0](v0, &type metadata for GroundedLocation, v3);
  OUTLINED_FUNCTION_167_1();
  while (1)
  {
    if (!v1)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v4)
    {
      break;
    }

    v5 = OUTLINED_FUNCTION_43_7();
    v7 = sub_1C70802EC(v5, v6);
    v15 = OUTLINED_FUNCTION_203_0(v7, v8, v9, v10, v11, v12, v13, v14, v26);
    v17 = sub_1C70F4DB8(v15, v16);
    OUTLINED_FUNCTION_87_6(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, v29, v30, v31);
    sub_1C7080348(v25);
    v2 += 64;
  }

  __break(1u);
}

uint64_t sub_1C706ED1C()
{
  OUTLINED_FUNCTION_72_4();
  type metadata accessor for PHPersonAgeType(0);
  v3 = v2;
  sub_1C707E638(&qword_1EC216788, type metadata accessor for PHPersonAgeType);
  v4 = OUTLINED_FUNCTION_81_6();
  v9 = MEMORY[0x1CCA5D4D0](v4, v3);
  v5 = *(v0 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_1C70F57F4(v8, *(v0 + v6));
      v6 += 2;
      --v5;
    }

    while (v5);

    return v9;
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  return v1;
}

void sub_1C706F164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_23_12();
  a20 = v21;
  a21 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = *(v27 + 16);
  v31 = v30();
  a13 = MEMORY[0x1CCA5D4D0](v29, v26, v31);
  v32 = *(v28 + 16);
  if (v32)
  {
    v33 = 32;
    do
    {
      v24(&a12, *(v28 + v33++));
      --v32;
    }

    while (v32);
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
  }

  OUTLINED_FUNCTION_22_14();
}

void sub_1C706F5AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (!__OFSUB__(a4 >> 1, a3))
  {
    v6 = a3;
    OUTLINED_FUNCTION_95_1();
    v11 = sub_1C6F65BE8(v8, v9, v10);
    OUTLINED_FUNCTION_95_1();
    v15 = sub_1C7080178(v12, v13, v14);
    MEMORY[0x1CCA5D4D0](v5, v11, v15);
    while (1)
    {
      if (v4 == v6)
      {
        swift_unknownObjectRelease();
        return;
      }

      if (v6 >= v4)
      {
        break;
      }

      v16 = *(a2 + 8 * v6);
      v23 = OUTLINED_FUNCTION_124_4(v16, v16, v17, v18, v19, v20, v21, v22, v24);
      sub_1C70F1000(v23);

      ++v6;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C706F948()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_297_0();
  OUTLINED_FUNCTION_142();

  return SafetyController.validatedUserPromptBeforeQU(userPrompt:includeCriticalSafety:useCaseIdentifier:eventRecorder:)();
}

uint64_t SafetyController.validatedUserPromptBeforeQU(userPrompt:includeCriticalSafety:useCaseIdentifier:eventRecorder:)()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  *(v1 + 32) = v4;
  *(v1 + 40) = v0;
  *(v1 + 178) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  v8 = type metadata accessor for SafetyError(0);
  *(v1 + 48) = v8;
  OUTLINED_FUNCTION_76(v8);
  *(v1 + 56) = OUTLINED_FUNCTION_77();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216748, &qword_1C7565458);
  OUTLINED_FUNCTION_76(v9);
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  v10 = sub_1C754F38C();
  *(v1 + 96) = v10;
  OUTLINED_FUNCTION_18(v10);
  *(v1 + 104) = v11;
  *(v1 + 112) = OUTLINED_FUNCTION_77();
  *(v1 + 179) = *v3;
  v12 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C706FB30()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 179);
  OUTLINED_FUNCTION_25_9(*(v0 + 32));
  OUTLINED_FUNCTION_132("SafetyController.validatedUserPromptBeforeQU", 44);
  sub_1C707DB58(&unk_1F469DFA8);
  *(v0 + 120) = v2;
  *(v0 + 176) = v1;
  v3 = swift_task_alloc();
  *(v0 + 128) = v3;
  *v3 = v0;
  v3[1] = sub_1C706FC28;
  OUTLINED_FUNCTION_61_3(*(v0 + 16));
  OUTLINED_FUNCTION_244_0();

  return static TextSanitizer.validateCharacterCategories(_:unsupportedCategories:storyGenerationCache:useCaseIdentifier:)(v4, v5, v6, v7, v8);
}

uint64_t sub_1C706FC28()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[17] = v5;
  v3[18] = v0;

  if (v0)
  {
    v6 = v3[5];

    v7 = sub_1C7070508;
  }

  else
  {
    v6 = v3[5];

    v7 = sub_1C706FD44;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1C706FD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v19 = *(v18 + 178);
  *(v18 + 152) = *(*(v18 + 136) + 16);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  if (v19 == 1)
  {
    if (qword_1EDD0AF98 != -1)
    {
      swift_once();
    }

    v24 = *(v18 + 179);
    v25 = type metadata accessor for TextSanitizer(0);
    __swift_project_value_buffer(v25, &unk_1EDD28C28);
    *(v18 + 177) = v24;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v18 + 160) = v26;
    *v26 = v27;
    v26[1] = sub_1C7070108;
    OUTLINED_FUNCTION_297_0();
    OUTLINED_FUNCTION_94_1();

    return SafetyController.safety(of:with:useCaseIdentifier:)(v28);
  }

  v31 = *(v18 + 152);
  v32 = *(v18 + 72);
  sub_1C6FD7F70();
  OUTLINED_FUNCTION_112(v32);
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  v35 = OUTLINED_FUNCTION_49_3();
  sub_1C6FD7FC8(v35, v36, &qword_1C7565458);
  v77 = (v31 != 0) | (v34 << 16);
  LOBYTE(a14) = 1;
  sub_1C6FD1EE8();
  v37 = *(v18 + 88);
  if (v31)
  {
    OUTLINED_FUNCTION_0_30();
    v40 = sub_1C707E638(v38, v39);
    v41 = OUTLINED_FUNCTION_66_8(v40);
    OUTLINED_FUNCTION_133_3(v41, v42);
    v76 = v34;
    swift_willThrow();
LABEL_17:
    sub_1C6FD7FC8(v37, &qword_1EC216748, &qword_1C7565458);
    OUTLINED_FUNCTION_129_4();
    v74 = *(v18 + 64);
    v75 = *(v18 + 56);
    OUTLINED_FUNCTION_49_7();
    v64 = OUTLINED_FUNCTION_45_1();
    v65(v64);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_94_1();

    return v67(v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, 0, a14, a15, a16, a17, a18);
  }

  v43 = *(v18 + 64);
  v44 = *(v18 + 48);

  OUTLINED_FUNCTION_66_2();
  sub_1C6FD7F70();
  OUTLINED_FUNCTION_48_1(v43);
  if (!v33)
  {
    v37 = *(v18 + 88);
    OUTLINED_FUNCTION_8_15();
    sub_1C7080C2C();
    OUTLINED_FUNCTION_0_30();
    v62 = sub_1C707E638(v60, v61);
    v63 = OUTLINED_FUNCTION_86_0(v62);
    OUTLINED_FUNCTION_21_16();
    v76 = v63;
    swift_willThrow();
    OUTLINED_FUNCTION_2_17();
    sub_1C7080E04();
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_180_0();
  sub_1C6FD7FC8(v45, v46, v47);
  v48 = OUTLINED_FUNCTION_0_11();
  sub_1C6FD7FC8(v48, v49, &qword_1C7565458);
  v50 = OUTLINED_FUNCTION_66_2();
  __swift_project_boxed_opaque_existential_1(v50, v51);
  sub_1C75504FC();
  OUTLINED_FUNCTION_180_0();
  sub_1C754F1AC();
  MEMORY[8](v44, &qword_1C7565458);

  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_94_1();

  return v55(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, v77, 0, a14, a15, a16, a17, a18);
}

uint64_t sub_1C7070108()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {
    v7 = *(v3 + 40);

    v8 = sub_1C70705BC;
    v9 = v7;
  }

  else
  {
    v9 = *(v3 + 40);
    v8 = sub_1C7070218;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, 0);
}

uint64_t sub_1C7070218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v19 = OUTLINED_FUNCTION_43_2();
  sub_1C6FD7FC8(v19, v20, &qword_1C7565458);
  v21 = OUTLINED_FUNCTION_90();
  sub_1C707DD50(v21, v22);
  v23 = v18[19];
  v24 = v18[9];
  sub_1C6FD7F70();
  OUTLINED_FUNCTION_112(v24);
  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  sub_1C6FD7FC8(v24, &qword_1EC216748, &qword_1C7565458);
  v68 = (v23 != 0) | (v26 << 16) | 0x100;
  LOBYTE(a14) = 1;
  sub_1C6FD1EE8();
  v27 = v18[11];
  if (v23)
  {
    OUTLINED_FUNCTION_0_30();
    v30 = sub_1C707E638(v28, v29);
    v31 = OUTLINED_FUNCTION_66_8(v30);
    OUTLINED_FUNCTION_133_3(v31, v32);
    v67 = v26;
    swift_willThrow();
LABEL_11:
    sub_1C6FD7FC8(v27, &qword_1EC216748, &qword_1C7565458);
    OUTLINED_FUNCTION_129_4();
    v65 = v18[8];
    v66 = v18[7];
    OUTLINED_FUNCTION_49_7();
    v55 = OUTLINED_FUNCTION_45_1();
    v56(v55);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_94_1();

    return v58(v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, 0, a14, a15, a16, a17, a18);
  }

  v33 = v18[8];
  v34 = v18[6];

  OUTLINED_FUNCTION_66_2();
  sub_1C6FD7F70();
  OUTLINED_FUNCTION_48_1(v33);
  if (!v25)
  {
    v27 = v18[11];
    OUTLINED_FUNCTION_8_15();
    sub_1C7080C2C();
    OUTLINED_FUNCTION_0_30();
    v53 = sub_1C707E638(v51, v52);
    v54 = OUTLINED_FUNCTION_86_0(v53);
    OUTLINED_FUNCTION_21_16();
    v67 = v54;
    swift_willThrow();
    OUTLINED_FUNCTION_2_17();
    sub_1C7080E04();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_168_1();
  OUTLINED_FUNCTION_180_0();
  sub_1C6FD7FC8(v35, v36, v37);
  v38 = OUTLINED_FUNCTION_0_11();
  sub_1C6FD7FC8(v38, v39, &qword_1C7565458);
  v40 = OUTLINED_FUNCTION_66_2();
  __swift_project_boxed_opaque_existential_1(v40, v41);
  sub_1C75504FC();
  OUTLINED_FUNCTION_180_0();
  sub_1C754F1AC();
  MEMORY[8](v34, v24);

  OUTLINED_FUNCTION_60_4();
  OUTLINED_FUNCTION_94_1();

  return v45(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, v68, 0, a14, a15, a16, a17, a18);
}

uint64_t sub_1C7070508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_129_4();
  v27 = *(v14 + 64);
  v28 = *(v14 + 56);
  v29 = v15;
  OUTLINED_FUNCTION_49_7();
  v16 = OUTLINED_FUNCTION_45_1();
  v17(v16);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, a12, a13, a14);
}

uint64_t sub_1C70705BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  sub_1C6FD7FC8(v14[11], &qword_1EC216748, &qword_1C7565458);
  OUTLINED_FUNCTION_129_4();
  v27 = v14[8];
  v28 = v14[7];
  v29 = v15;
  OUTLINED_FUNCTION_49_7();
  v16 = OUTLINED_FUNCTION_45_1();
  v17(v16);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, a12, a13, a14);
}

uint64_t sub_1C7070688()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_273_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  v3 = OUTLINED_FUNCTION_48_8();

  return SafetyController.validatedPromptSuggestion(userPrompt:useCaseIdentifier:eventRecorder:)(v3, v4, v5);
}

uint64_t sub_1C7070718()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  OUTLINED_FUNCTION_116();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t SafetyController.validatedPromptSuggestion(userPrompt:useCaseIdentifier:eventRecorder:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 80) = a1;
  *(v4 + 186) = *a2;
  v5 = OUTLINED_FUNCTION_29_9();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7070838()
{
  sub_1C707DDC0();
  v2 = OUTLINED_FUNCTION_57_3();
  static TextSanitizer.removeCategories(in:categories:)(v2, v3);

  v4 = OUTLINED_FUNCTION_90();
  v6 = sub_1C73BF00C(v4, v5);

  if (v6)
  {
    v7 = *(v0 + 186);
    v8 = [*(v0 + 80) string];
    sub_1C755068C();
    v10 = v9;

    *(v0 + 160) = v10;
    *(v0 + 185) = v7;
    v11 = swift_task_alloc();
    *(v0 + 168) = v11;
    *v11 = v0;
    v11[1] = sub_1C7070D84;
    OUTLINED_FUNCTION_57_0();
    OUTLINED_FUNCTION_258_0();

    return SafetyController.validatedUserPromptWithMusicTitleOnly(userPrompt:useCaseIdentifier:eventRecorder:)();
  }

  else
  {
    sub_1C706D644(&unk_1F469E030);
    v14 = OUTLINED_FUNCTION_300_0();
    static TextSanitizer.removeCategories(in:categories:)(v14, v1);
    *(v0 + 104) = v15;
    sub_1C75504FC();
    sub_1C7073880(&unk_1F469E078, v1);
    v16 = OUTLINED_FUNCTION_275_0();
    static TextSanitizer.removeCategories(in:categories:)(v16, v17);
    *(v0 + 112) = v18;
    v19 = *(v0 + 80);

    v20 = sub_1C7073880(&unk_1F469E0A0, v1);
    static TextSanitizer.removeCategories(in:categories:)(v19, v20);
    *(v0 + 120) = v21;
    v22 = *(v0 + 80);

    v23 = sub_1C706D644(&unk_1F469E0D0);
    static TextSanitizer.removeCategories(in:categories:)(v22, v23);
    *(v0 + 128) = v24;
    v25 = *(v0 + 186);
    v26 = *(v0 + 80);

    v27 = [v26 string];
    sub_1C755068C();
    v29 = v28;

    *(v0 + 136) = v29;
    *(v0 + 184) = v25;
    v30 = swift_task_alloc();
    *(v0 + 144) = v30;
    *v30 = v0;
    v30[1] = sub_1C7070B9C;
    OUTLINED_FUNCTION_258_0();

    return sub_1C7076E90(v31, v32, v33, v34, v35, v36, v37, v38);
  }
}

uint64_t sub_1C7070B9C(uint64_t a1)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_47();
  v4 = v3;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v4[2] = v2;
  v4[3] = v6;
  v4[4] = v7;
  v4[5] = v1;
  OUTLINED_FUNCTION_292_0();
  v8 = *v2;
  OUTLINED_FUNCTION_14();
  *v9 = v8;
  v4[19] = v1;

  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C7070D04()
{
  OUTLINED_FUNCTION_42();
  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  OUTLINED_FUNCTION_66_2();
  sub_1C7073450();
  OUTLINED_FUNCTION_116();

  return v0();
}

uint64_t sub_1C7070D84()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v3[6] = v1;
  v3[7] = v5;
  v3[8] = v6;
  v3[9] = v0;
  OUTLINED_FUNCTION_292_0();
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  v3[22] = v0;

  if (v0)
  {
    v9 = v3[12];

    v10 = sub_1C7070F1C;
  }

  else
  {
    v9 = v3[12];

    v10 = sub_1C7070E9C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1C7070E9C()
{
  OUTLINED_FUNCTION_42();
  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  OUTLINED_FUNCTION_66_2();
  sub_1C7073450();
  OUTLINED_FUNCTION_116();

  return v0();
}

uint64_t sub_1C7070F64()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_299_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_282();
  OUTLINED_FUNCTION_297_0();
  OUTLINED_FUNCTION_142();

  return SafetyController.validatedUserPrompt(userPrompt:queryTokens:useCaseIdentifier:eventRecorder:)();
}

uint64_t sub_1C7071004()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_47();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;

  OUTLINED_FUNCTION_82_0();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_0_11();
  }

  return v5(v4);
}

uint64_t SafetyController.validatedUserPrompt(userPrompt:queryTokens:useCaseIdentifier:eventRecorder:)()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  *(v1 + 280) = v4;
  *(v1 + 288) = v0;
  *(v1 + 264) = v5;
  *(v1 + 272) = v6;
  *(v1 + 256) = v7;
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  *(v1 + 296) = TokenCategoryType;
  OUTLINED_FUNCTION_76(TokenCategoryType);
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216368, &unk_1C7563BB0);
  *(v1 + 352) = v9;
  OUTLINED_FUNCTION_76(v9);
  *(v1 + 360) = OUTLINED_FUNCTION_77();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  OUTLINED_FUNCTION_18(TokenSuggestion);
  *(v1 + 368) = v11;
  *(v1 + 376) = OUTLINED_FUNCTION_77();
  *(v1 + 450) = *v3;
  v12 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1C707124C()
{
  v111 = v0;
  v2 = *(v0 + 272);
  sub_1C707DEC4();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_0_11();
  static TextSanitizer.removeCategories(in:queryTokens:categories:)(v5, v6, v2, v4);

  v8 = OUTLINED_FUNCTION_90();
  v10 = sub_1C73BF00C(v8, v9);

  if (v10)
  {
    *(v0 + 449) = *(v0 + 450);
    v12 = swift_task_alloc();
    *(v0 + 432) = v12;
    *v12 = v0;
    v12[1] = sub_1C7071E88;
    OUTLINED_FUNCTION_61_3(*(v0 + 256));

    return SafetyController.validatedUserPromptWithMusicTitleOnly(userPrompt:useCaseIdentifier:eventRecorder:)();
  }

  v13 = 0;
  v14 = *(v0 + 272);
  v97 = v14 + 32;
  v15 = MEMORY[0x1E69E7CC0];
  v103 = *(v0 + 352);
  v98 = *(v14 + 16);
LABEL_10:
  v100 = v15;
  while (v13 != v98)
  {
    if (v13 >= v98)
    {
      __break(1u);
LABEL_84:
      __break(1u);
      return result;
    }

    result = memcpy((v0 + 16), (v97 + 120 * v13), 0x78uLL);
    v16 = __OFADD__(v13, 1);
    v17 = v13 + 1;
    if (v16)
    {
      goto LABEL_84;
    }

    v101 = v17;
    v18 = *(v0 + 96);
    v106 = *(v18 + 16);
    v19 = sub_1C6FCA6E4(v0 + 16, v0 + 136);
    v21 = 0;
    while (2)
    {
      if (v106 == v21)
      {
        goto LABEL_71;
      }

      if (v21 >= *(v18 + 16))
      {
        __break(1u);
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_191();
      sub_1C7080BB8();
      if (qword_1EDD0E058 != -1)
      {
        swift_once();
      }

      v1 = *(v0 + 376);
      v22 = *(v0 + 360);
      __swift_project_value_buffer(*(v0 + 296), qword_1EDD0E060);
      v23 = v22 + *(v103 + 48);
      sub_1C7080BB8();
      OUTLINED_FUNCTION_151_1();
      sub_1C7080BB8();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          if (OUTLINED_FUNCTION_179_0() != 1)
          {
            goto LABEL_59;
          }

          goto LABEL_60;
        case 2u:
          v1 = *(v0 + 344);
          OUTLINED_FUNCTION_5_22();
          sub_1C7080BB8();
          v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90) + 48);
          OUTLINED_FUNCTION_66_2();
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v35 = *(v0 + 344);
          if (EnumCaseMultiPayload == 2)
          {
            v43 = &qword_1C75606A0;
            sub_1C6FD7FC8(v23 + v33, &qword_1EC218C50, &qword_1C75606A0);
            v44 = OUTLINED_FUNCTION_66_2();
            sub_1C6FD7FC8(v44, v45, &qword_1C75606A0);
            sub_1C6FD7FC8(v1 + v33, &qword_1EC218C50, &qword_1C75606A0);
            v40 = v35;
            v41 = &qword_1EC218C50;
            goto LABEL_67;
          }

          sub_1C6FD7FC8(v1 + v33, &qword_1EC218C50, &qword_1C75606A0);
          v30 = v35;
          v31 = &qword_1EC218C50;
          v32 = &qword_1C75606A0;
          goto LABEL_58;
        case 3u:
          if (OUTLINED_FUNCTION_179_0() == 3)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        case 4u:
          OUTLINED_FUNCTION_5_22();
          sub_1C7080BB8();
          OUTLINED_FUNCTION_66_2();
          v24 = swift_getEnumCaseMultiPayload();
          v1 = *(v0 + 336);
          v25 = sub_1C754F09C();
          OUTLINED_FUNCTION_12();
          v27 = *(v26 + 8);
          if (v24 == 4)
          {
            goto LABEL_62;
          }

          goto LABEL_47;
        case 5u:
          OUTLINED_FUNCTION_5_22();
          sub_1C7080BB8();
          OUTLINED_FUNCTION_66_2();
          v37 = swift_getEnumCaseMultiPayload();
          v1 = *(v0 + 328);
          v25 = sub_1C754F5FC();
          OUTLINED_FUNCTION_12();
          v27 = *(v38 + 8);
          if (v37 == 5)
          {
LABEL_62:
            v27(v23, v25);
            v27(v1, v25);
            goto LABEL_69;
          }

LABEL_47:
          v27(v1, v25);
          goto LABEL_59;
        case 6u:
          if (OUTLINED_FUNCTION_179_0() == 6)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        case 7u:
          OUTLINED_FUNCTION_5_22();
          sub_1C7080BB8();
          OUTLINED_FUNCTION_66_2();
          v36 = swift_getEnumCaseMultiPayload();
          v1 = *(v0 + 320);
          if (v36 == 7)
          {
            sub_1C7080E04();
LABEL_61:
            sub_1C7080E04();
            goto LABEL_69;
          }

          sub_1C7080E04();
          goto LABEL_59;
        case 8u:
          OUTLINED_FUNCTION_5_22();
          sub_1C7080BB8();
          OUTLINED_FUNCTION_66_2();
          v39 = swift_getEnumCaseMultiPayload();
          v1 = *(v0 + 312);
          if (v39 == 8)
          {
            sub_1C6FD7FC8(v23, &qword_1EC216328, &qword_1C7575BE0);
            v40 = v1;
            v41 = &qword_1EC216328;
            v42 = &qword_1C7575BE0;
            goto LABEL_68;
          }

          v30 = *(v0 + 312);
          v31 = &qword_1EC216328;
          v32 = &qword_1C7575BE0;
          goto LABEL_58;
        case 9u:
          v1 = *(v0 + 304);
          OUTLINED_FUNCTION_5_22();
          sub_1C7080BB8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730);
          OUTLINED_FUNCTION_66_2();
          v28 = swift_getEnumCaseMultiPayload();
          v29 = *(v0 + 304);
          if (v28 != 9)
          {
            sub_1C7080E04();
            v30 = v29;
            v31 = &qword_1EC216320;
            v32 = &unk_1C7563B80;
LABEL_58:
            sub_1C6FD7FC8(v30, v31, v32);
LABEL_59:
            v15 = *(v0 + 376);
            sub_1C6FD7FC8(*(v0 + 360), &qword_1EC216368, &unk_1C7563BB0);
            v19 = OUTLINED_FUNCTION_116_4();
            ++v21;
            continue;
          }

          sub_1C7080E04();
          v43 = &unk_1C7563B80;
          sub_1C6FD7FC8(v23, &qword_1EC216320, &unk_1C7563B80);
          sub_1C7080E04();
          v40 = v29;
          v41 = &qword_1EC216320;
LABEL_67:
          v42 = v43;
LABEL_68:
          sub_1C6FD7FC8(v40, v41, v42);
LABEL_69:
          OUTLINED_FUNCTION_106_1();
          sub_1C7080E04();
          OUTLINED_FUNCTION_116_4();
          memcpy(__dst, (v0 + 16), 0x78uLL);
          v15 = __dst;
          sub_1C72D36F8();
          if (v46 != 2)
          {
LABEL_71:
            v15 = v100;
            v109 = v100;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v47 = OUTLINED_FUNCTION_99();
              sub_1C716D7D8(v47, v48, v49);
              v15 = v100;
            }

            v51 = v15[2];
            v50 = v15[3];
            v1 = v51 + 1;
            v13 = v101;
            if (v51 >= v50 >> 1)
            {
              sub_1C716D7D8(v50 > 1, v51 + 1, 1);
              v15 = v100;
            }

            v15[2] = v1;
            result = memcpy(&v15[15 * v51 + 4], (v0 + 16), 0x78uLL);
            goto LABEL_10;
          }

          result = sub_1C6FDD548(v0 + 16);
          v13 = v101;
          break;
        case 0xAu:
          if (OUTLINED_FUNCTION_179_0() == 10)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        case 0xBu:
          if (OUTLINED_FUNCTION_179_0() == 11)
          {
            goto LABEL_69;
          }

          goto LABEL_59;
        case 0xCu:
          if (OUTLINED_FUNCTION_179_0() == 12)
          {
            goto LABEL_60;
          }

          goto LABEL_59;
        case 0xDu:
          if (OUTLINED_FUNCTION_179_0() == 13)
          {
            goto LABEL_69;
          }

          goto LABEL_59;
        case 0xEu:
          if (OUTLINED_FUNCTION_179_0() == 14)
          {
            goto LABEL_69;
          }

          goto LABEL_59;
        case 0xFu:
          if (OUTLINED_FUNCTION_179_0() == 15)
          {
            goto LABEL_69;
          }

          goto LABEL_59;
        case 0x10u:
          if (OUTLINED_FUNCTION_179_0() == 16)
          {
            goto LABEL_69;
          }

          goto LABEL_59;
        case 0x11u:
          if (OUTLINED_FUNCTION_179_0() == 17)
          {
            goto LABEL_69;
          }

          goto LABEL_59;
        case 0x12u:
          if (OUTLINED_FUNCTION_179_0() == 18)
          {
            goto LABEL_69;
          }

          goto LABEL_59;
        default:
          if (OUTLINED_FUNCTION_179_0())
          {
            goto LABEL_59;
          }

LABEL_60:
          OUTLINED_FUNCTION_106_1();
          goto LABEL_61;
      }

      break;
    }
  }

  v52 = *(v0 + 272);
  sub_1C707DEC4();
  v54 = v53;
  v55 = OUTLINED_FUNCTION_0_11();
  v21 = 0;
  v57 = static TextSanitizer.removeCategories(in:queryTokens:categories:)(v55, v56, v52, v54);
  *(v0 + 384) = v58;
  v1 = v57;
  v18 = v58;
  v60 = *(v0 + 256);
  v59 = *(v0 + 264);
  sub_1C75504FC();
  OUTLINED_FUNCTION_114_4(&unk_1F469E180, v61, v62, v63, v64, v65, v66, v67, v96, SWORD2(v96), SBYTE6(v96), SHIBYTE(v96), v97, v98, v100, v101, v103, v106, v109, __dst[0], __dst[1]);
  v15 = v100;
  v19 = static TextSanitizer.removeCategories(in:queryTokens:categories:)(v60, v59, v100, v68);
  *(v0 + 392) = v20;
LABEL_78:
  v69 = v20;
  v104 = v19;
  v107 = v1;
  v71 = *(v0 + 256);
  v70 = *(v0 + 264);

  OUTLINED_FUNCTION_114_4(&unk_1F469E1A8, v72, v73, v74, v75, v76, v77, v78, v96, SWORD2(v96), SBYTE6(v96), SHIBYTE(v96), v97, v98, v100, v101, v104, v107, v109, __dst[0], __dst[1]);
  v80 = static TextSanitizer.removeCategories(in:queryTokens:categories:)(v71, v70, v15, v79);
  *(v0 + 400) = v81;
  if (v21)
  {

    OUTLINED_FUNCTION_43();

    return v7();
  }

  else
  {
    v82 = v81;
    v99 = v80;
    v83 = *(v0 + 264);
    v102 = *(v0 + 272);
    v84 = *(v0 + 256);

    sub_1C707DEC4();
    v86 = static TextSanitizer.removeCategories(in:queryTokens:categories:)(v84, v83, v102, v85);
    *(v0 + 408) = v87;
    v88 = v86;
    v89 = v87;
    v90 = *(v0 + 450);

    *(v0 + 448) = v90;
    v91 = swift_task_alloc();
    *(v0 + 416) = v91;
    *v91 = v0;
    v91[1] = sub_1C7071CCC;
    v92 = *(v0 + 280);
    v93 = *(v0 + 256);
    v115 = v0 + 448;
    v116 = v92;
    v113 = v88;
    v114 = v89;
    v94 = OUTLINED_FUNCTION_61_3(v93);

    return sub_1C7076E90(v94, v95, v108, v18, v105, v69, v99, v82);
  }
}

uint64_t sub_1C7071CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_47();
  v15 = v14;
  OUTLINED_FUNCTION_6_4();
  *v16 = v15;
  v17 = *v13;
  OUTLINED_FUNCTION_14();
  *v18 = v17;
  *(v15 + 424) = v12;

  if (v12)
  {

    OUTLINED_FUNCTION_44();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

  else
  {

    OUTLINED_FUNCTION_256_0();

    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_457();
    OUTLINED_FUNCTION_44();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
  }
}

uint64_t sub_1C7071E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_47();
  v15 = v14;
  OUTLINED_FUNCTION_6_4();
  *v16 = v15;
  v17 = *v13;
  OUTLINED_FUNCTION_14();
  *v18 = v17;
  *(v15 + 440) = v12;

  if (v12)
  {
    OUTLINED_FUNCTION_44();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

  else
  {
    OUTLINED_FUNCTION_256_0();

    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_457();
    OUTLINED_FUNCTION_44();

    return v26(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
  }
}

uint64_t sub_1C7071FF8()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_248_0();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C70720A0()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_248_0();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7072148()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_273_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_48_8();

  return SafetyController.validateStoryTitle(storyTitle:eventRecorder:)();
}

uint64_t SafetyController.validateStoryTitle(storyTitle:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_1C754F38C();
  v1[6] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_77();
  v7 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7072280()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_9(*(v0 + 32));
  OUTLINED_FUNCTION_132("SafetyController.validateStoryTitle", 35);
  if (qword_1EDD0AF90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for TextSanitizer(0);
  __swift_project_value_buffer(v1, &unk_1EDD28C10);
  OUTLINED_FUNCTION_208_0();
  *(v0 + 88) = v2;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_1C7072394;
  OUTLINED_FUNCTION_61_3(*(v0 + 16));

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C7072394()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_9();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_287_0();
  }

  else
  {

    v7 = OUTLINED_FUNCTION_137_2();
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C70724A8()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_191_0();
  sub_1C6FD1EE8();
  OUTLINED_FUNCTION_38_6(v1);
  v2 = OUTLINED_FUNCTION_39_1();
  v3(v2);

  OUTLINED_FUNCTION_116();
  v5 = *(v0 + 80) == 0;

  return v4(v5);
}

uint64_t sub_1C70726F4()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_126();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_0_11();

  return SafetyController.validatedPersonalTraits(traits:eventRecorder:)();
}

uint64_t SafetyController.validatedPersonalTraits(traits:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_1C754F38C();
  v1[7] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_77();
  v6 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7072830()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_9(*(v0 + 40));
  OUTLINED_FUNCTION_132("SafetyController.validatedPersonalTraits", 40);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1C70728E8;
  v2 = OUTLINED_FUNCTION_61_3(*(v0 + 32));

  return sub_1C707B030(v2, v3);
}

uint64_t sub_1C70728E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *(v1 + 16) = v0;
  *(v1 + 24) = v3;
  OUTLINED_FUNCTION_292_0();
  v4 = *v0;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7072A70()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_126();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_0_11();

  return SafetyController.validatedGlobalTraits(traits:eventRecorder:)();
}

uint64_t SafetyController.validatedGlobalTraits(traits:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_1C754F38C();
  v1[7] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[8] = v5;
  v1[9] = OUTLINED_FUNCTION_77();
  v6 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7072BAC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_9(*(v0 + 40));
  OUTLINED_FUNCTION_132("SafetyController.validatedGlobalTraits", 38);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1C7072C64;
  v2 = OUTLINED_FUNCTION_61_3(*(v0 + 32));

  return sub_1C707B420(v2, v3);
}

uint64_t sub_1C7072C64()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *(v1 + 16) = v0;
  *(v1 + 24) = v3;
  OUTLINED_FUNCTION_292_0();
  v4 = *v0;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7072DEC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_126();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_52_3(v1);
  OUTLINED_FUNCTION_0_11();

  return SafetyController.validatedAppleMusicSongs(songs:eventRecorder:)();
}

uint64_t SafetyController.validatedAppleMusicSongs(songs:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_1C754F38C();
  v1[5] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_77();
  v6 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7072F28()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_9(*(v0 + 24));
  OUTLINED_FUNCTION_132("SafetyController.validatedAppleMusicSongs", 41);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_41_7(v1);

  return sub_1C707B86C(v2, v3);
}

uint64_t sub_1C7072FD4(uint64_t a1)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 72) = v1;

  if (!v1)
  {
    *(v5 + 80) = v4;
  }

  OUTLINED_FUNCTION_286_0();
  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70730F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_161_1();
  sub_1C706D714();
  v14 = OUTLINED_FUNCTION_55();
  v16 = OUTLINED_FUNCTION_80_0(v14, v15);
  OUTLINED_FUNCTION_103_4(v16);
  v17 = OUTLINED_FUNCTION_45_1();
  v18(v17);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_93_0();

  return v21(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C7073190()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 72);
  v2 = sub_1C754FEEC();
  sub_1C755119C();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    v3 = OUTLINED_FUNCTION_163_0();
    OUTLINED_FUNCTION_261_0(5.7779e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_232_0(v4);
    OUTLINED_FUNCTION_89(&dword_1C6F5C000, v5, v6, "Apple Music songs batch validation failed: %@, validating them individually");
    sub_1C6FD7FC8(v3, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_41_7(v7);
  OUTLINED_FUNCTION_244_0();

  return sub_1C707CB38(v8, v9);
}

uint64_t sub_1C70732B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 96) = v5;

  v7 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70733B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_161_1();
  sub_1C706D714();
  v15 = OUTLINED_FUNCTION_55();
  v17 = OUTLINED_FUNCTION_80_0(v15, v16);
  OUTLINED_FUNCTION_103_4(v17);
  v18 = OUTLINED_FUNCTION_45_1();
  v19(v18);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_93_0();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14);
}

id sub_1C7073450()
{
  OUTLINED_FUNCTION_126();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_0_11();
  v1 = sub_1C755065C();

  v2 = [v0 initWithString_];

  return v2;
}

BOOL sub_1C707351C()
{
  OUTLINED_FUNCTION_143_2();
  v3 = (v2 + 32);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    memcpy(__dst, v3, sizeof(__dst));
    memcpy(v22, v3, sizeof(v22));
    sub_1C6FCA6E4(__dst, v21);
    v6 = v1(v22);
    if (v0)
    {
      v17 = OUTLINED_FUNCTION_276_0(v6, v7, v8, v9, v10, v11, v12, v13, v20, v21[0]);
      memcpy(v17, v18, 0x78uLL);
      sub_1C6FDD548(v21);
      return v5 != 0;
    }

    v14 = v6;
    v3 += 120;
    v15 = OUTLINED_FUNCTION_276_0(v6, v7, v8, v9, v10, v11, v12, v13, v20, v21[0]);
    memcpy(v15, v16, 0x78uLL);
    sub_1C6FDD548(v21);
  }

  while ((v14 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1C70735F4()
{
  OUTLINED_FUNCTION_143_2();
  v3 = (v2 + 40);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *v3;
    v10[0] = *(v3 - 1);
    v10[1] = v6;
    sub_1C75504FC();
    v7 = v1(v10);
    if (v0)
    {

      return v5 != 0;
    }

    v8 = v7;
    v3 += 2;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1C70736C8()
{
  OUTLINED_FUNCTION_143_2();
  v3 = (v2 + 48);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *(v3 - 1);
    v7 = *v3;
    v10[0] = *(v3 - 2);
    v10[1] = v6;
    v10[2] = v7;
    sub_1C75504FC();
    sub_1C75504FC();
    v8 = v1(v10);

    if (v0)
    {
      break;
    }

    v3 += 3;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1C70737A4(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = (a4)(0, a2);
    OUTLINED_FUNCTION_18(v11);
    v14 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v14 & 1) == 0);
  return v9 != v10;
}

uint64_t sub_1C7073880(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1C70F1528(&v7, *(a1 + v4));
      v4 += 8;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = a2;
  }

  return v5;
}

void sub_1C7073A2C()
{
  OUTLINED_FUNCTION_186_0();
  v40 = v3;
  OUTLINED_FUNCTION_227_0();
  while (1)
  {
    if (v1 == v0)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v4)
    {
      break;
    }

    v5 = OUTLINED_FUNCTION_267_0();
    memcpy(v5, v6, 0x41uLL);
    v7 = OUTLINED_FUNCTION_120_4();
    v9 = sub_1C7025F3C(v7, v8);
    v17 = OUTLINED_FUNCTION_122_3(v9, v10, v11, v12, v13, v14, v15, v16, v29);
    v19 = sub_1C70F3F1C(v17, v18);
    v27 = OUTLINED_FUNCTION_266_0(v19, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0]);
    memcpy(v27, v28, 0x41uLL);
    sub_1C7025F74(v39);
    v2 += 72;
  }

  __break(1u);
}

void sub_1C7073AC4()
{
  OUTLINED_FUNCTION_186_0();
  v40 = v3;
  OUTLINED_FUNCTION_227_0();
  while (1)
  {
    if (v1 == v0)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v4)
    {
      break;
    }

    v5 = OUTLINED_FUNCTION_267_0();
    memcpy(v5, v6, 0x42uLL);
    v7 = OUTLINED_FUNCTION_120_4();
    v9 = sub_1C7025FF8(v7, v8);
    v17 = OUTLINED_FUNCTION_122_3(v9, v10, v11, v12, v13, v14, v15, v16, v29);
    v19 = sub_1C70F3DC8(v17, v18);
    v27 = OUTLINED_FUNCTION_266_0(v19, v20, v21, v22, v23, v24, v25, v26, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39[0]);
    memcpy(v27, v28, 0x42uLL);
    sub_1C7026030(v39);
    v2 += 72;
  }

  __break(1u);
}

void sub_1C7073B5C()
{
  OUTLINED_FUNCTION_186_0();
  v34 = v1;
  v3 = *(v2 + 16);
  for (i = 32; ; i += 56)
  {
    if (v3 == v0)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v5)
    {
      break;
    }

    v6 = OUTLINED_FUNCTION_264_0();
    v36 = v7;
    v37 = v6;
    v38 = *(v8 + 48);
    ++v0;
    v9 = sub_1C70260B4(v35, v33);
    v17 = OUTLINED_FUNCTION_276_0(v9, v10, v11, v12, v13, v14, v15, v16, v27, v29);
    v19 = sub_1C70F3B88(v17, v18);
    OUTLINED_FUNCTION_173_0(v19, v20, v21, v22, v23, v24, v25, v26, v28, v29, v30, v31, v32, *v33, *&v33[16], *&v33[32], *&v33[48]);
  }

  __break(1u);
}

void sub_1C7073C04()
{
  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_227_0();
  while (1)
  {
    if (v1 == v0)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v3)
    {
      break;
    }

    OUTLINED_FUNCTION_22_15();
    v6 = sub_1C70805A4(v4, v5);
    v14 = OUTLINED_FUNCTION_123_4(v6, v7, v8, v9, v10, v11, v12, v13, v16);
    sub_1C70F3990(v14, v15);
    OUTLINED_FUNCTION_318_0();

    v2 += 40;
  }

  __break(1u);
}

uint64_t sub_1C7073C88(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_300();
  v5 = type metadata accessor for TimeExtendedToken(v4) - 8;
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = *(v2 + 16);
  if (v8)
  {
    v9 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);
    do
    {
      OUTLINED_FUNCTION_154();
      sub_1C7080BB8();
      OUTLINED_FUNCTION_211_0();
      sub_1C70F3190();
      OUTLINED_FUNCTION_115_4();
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return a2;
}

uint64_t sub_1C7073DC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v18 = a2;
  v9 = *(result + 16);
  for (i = 32; ; i += 56)
  {
    if (!v9)
    {

      return v18;
    }

    if (!*(v8 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_145_1(result, a2, a3, a4, a5, a6, a7, a8, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22);
    sub_1C70F2CAC();
  }

  __break(1u);
  return result;
}

void sub_1C7073E6C()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_300();
  v63 = type metadata accessor for PartOfWeekExtendedToken(v6);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  v66 = v8 - v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  v65 = v56 - v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_212_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_209_0();
  v57 = *(v0 + 16);
  if (!v57)
  {
    goto LABEL_50;
  }

  v14 = 0;
  OUTLINED_FUNCTION_191();
  OUTLINED_FUNCTION_294_0(v0 + v15);
  *(v17 - 256) = v0;
  v56[0] = v16;
  v60 = v1;
  while (1)
  {
    if (v14 >= *(v0 + 16))
    {
      __break(1u);
      goto LABEL_52;
    }

    v18 = *(v16 + 72);
    v58 = v14;
    OUTLINED_FUNCTION_3_20();
    sub_1C7080BB8();
    sub_1C7551F3C();
    OUTLINED_FUNCTION_18_12();
    v19 = *v3;
    v20 = *(v3 + 8);
    v21 = OUTLINED_FUNCTION_296_0();
    MEMORY[0x1CCA5CD70](v21);
    OUTLINED_FUNCTION_192_0();

    sub_1C7551FAC();
    v22 = v5 + 56;
    OUTLINED_FUNCTION_40_12();
    v25 = *(v5 + 56 + v24) >> v2;
    v64 = v18;
    if ((v25 & 1) == 0)
    {
      break;
    }

    v26 = ~v23;
    v61 = v5;
    while (1)
    {
      OUTLINED_FUNCTION_3_20();
      v27 = v66;
      sub_1C7080BB8();
      v28 = *v27 == v19 && v27[1] == v20;
      if (!v28 && (sub_1C7551DBC() & 1) == 0)
      {
        goto LABEL_20;
      }

      if ((*(v66 + 24) & 1) == 0)
      {
        break;
      }

      if (*(v3 + 24))
      {
        goto LABEL_13;
      }

LABEL_20:
      OUTLINED_FUNCTION_1_28();
      sub_1C7080E04();
LABEL_21:
      v2 = (v2 + 1) & v26;
      OUTLINED_FUNCTION_187_0();
      if (((*(v22 + v36) >> v2) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    OUTLINED_FUNCTION_134_2();
    if (v35)
    {
      goto LABEL_20;
    }

LABEL_13:
    OUTLINED_FUNCTION_220_0();
    OUTLINED_FUNCTION_14_16();
    v30 = sub_1C707E638(&qword_1EC2147B8, v29);
    OUTLINED_FUNCTION_218_0(v30);
    OUTLINED_FUNCTION_315_0();
    v3 = v68;
    OUTLINED_FUNCTION_284();
    if (!v28 || v3 != v22)
    {
      v34 = OUTLINED_FUNCTION_13_6(v31, v3, v32);

      OUTLINED_FUNCTION_1_28();
      sub_1C7080E04();
      OUTLINED_FUNCTION_235_1();
      if (v34)
      {
        goto LABEL_47;
      }

      goto LABEL_21;
    }

    OUTLINED_FUNCTION_1_28();
    sub_1C7080E04();
    v5 = v61;
    v3 = v62;
LABEL_47:
    v14 = v58 + 1;
    OUTLINED_FUNCTION_1_28();
    sub_1C7080E04();
    v0 = v56[1];
    v16 = v56[0];
    if (v14 == v57)
    {
LABEL_50:

      OUTLINED_FUNCTION_25_0();
      return;
    }
  }

LABEL_22:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_3_20();
  v38 = v60;
  sub_1C7080BB8();
  v67 = v5;
  if (*(v5 + 24) <= *(v5 + 16))
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      sub_1C72E97B0();
    }

    else
    {
      sub_1C72F7BDC();
    }

    v39 = v67;
    sub_1C7551F3C();
    OUTLINED_FUNCTION_18_12();
    OUTLINED_FUNCTION_313_0();
    OUTLINED_FUNCTION_192_0();

    sub_1C7551FAC();
    OUTLINED_FUNCTION_40_12();
    if (((*(v39 + 56 + v41) >> v2) & 1) == 0)
    {
      goto LABEL_45;
    }

    v42 = ~v40;
    v61 = v39 + 56;
    v59 = ~v40;
    while (1)
    {
      OUTLINED_FUNCTION_3_20();
      v43 = v65;
      sub_1C7080BB8();
      v44 = *v43 == v5 && v43[1] == v19;
      if (!v44 && (sub_1C7551DBC() & 1) == 0)
      {
        break;
      }

      if (v65[24])
      {
        if (!*(v38 + 24))
        {
          break;
        }
      }

      else
      {
        OUTLINED_FUNCTION_134_2();
        if (v45)
        {
          break;
        }
      }

      OUTLINED_FUNCTION_216_0();
      OUTLINED_FUNCTION_14_16();
      v47 = sub_1C707E638(&qword_1EC2147B8, v46);
      OUTLINED_FUNCTION_219_0(v47);
      OUTLINED_FUNCTION_314_0();
      v38 = v68;
      OUTLINED_FUNCTION_284();
      if (v28 && v38 == v43)
      {
        goto LABEL_53;
      }

      v51 = OUTLINED_FUNCTION_13_6(v48, v38, v49);

      OUTLINED_FUNCTION_1_28();
      sub_1C7080E04();
      OUTLINED_FUNCTION_185_0();
      if (v51)
      {
        goto LABEL_54;
      }

LABEL_44:
      v2 = (v2 + 1) & v42;
      OUTLINED_FUNCTION_187_0();
      if (((*(v39 + 56 + v52) >> v2) & 1) == 0)
      {
        goto LABEL_45;
      }
    }

    OUTLINED_FUNCTION_1_28();
    sub_1C7080E04();
    goto LABEL_44;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C72F3988();
  }

LABEL_45:
  OUTLINED_FUNCTION_73_4();
  v53 = *(v5 + 16);
  v54 = __OFADD__(v53, 1);
  v55 = v53 + 1;
  if (!v54)
  {
    *(v5 + 16) = v55;
    v3 = v62;
    goto LABEL_47;
  }

LABEL_52:
  __break(1u);
LABEL_53:

  OUTLINED_FUNCTION_1_28();
  sub_1C7080E04();
LABEL_54:
  sub_1C7551E3C();
  __break(1u);
}

void sub_1C7074368()
{
  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_227_0();
  while (1)
  {
    if (v1 == v0)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v3)
    {
      break;
    }

    v4 = OUTLINED_FUNCTION_43_7();
    v6 = sub_1C7026698(v4, v5);
    v14 = OUTLINED_FUNCTION_203_0(v6, v7, v8, v9, v10, v11, v12, v13, v25);
    v16 = sub_1C70F2A94(v14, v15);
    OUTLINED_FUNCTION_87_6(v16, v17, v18, v19, v20, v21, v22, v23, v26, v27, v28, v29, v30);
    sub_1C70266D0(v24);
    v2 += 64;
  }

  __break(1u);
}

void sub_1C70743E8()
{
  OUTLINED_FUNCTION_186_0();
  OUTLINED_FUNCTION_227_0();
  while (1)
  {
    if (v1 == v0)
    {

      return;
    }

    OUTLINED_FUNCTION_96_4();
    if (v3)
    {
      break;
    }

    OUTLINED_FUNCTION_22_15();
    v6 = sub_1C70804EC(v4, v5);
    v14 = OUTLINED_FUNCTION_123_4(v6, v7, v8, v9, v10, v11, v12, v13, v17);
    sub_1C70F26F0(v14, v15, v16);
    OUTLINED_FUNCTION_318_0();

    v2 += 40;
  }

  __break(1u);
}

void sub_1C707446C(uint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1C755165C();
    sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
    sub_1C7080178(&qword_1EDD0FAA8, &qword_1EDD0FAB0, 0x1E695D630);
    sub_1C7550FEC();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    if (!*(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11))))))
    {
LABEL_18:
      v14 = OUTLINED_FUNCTION_57_0();
      sub_1C6F61E88(v14);
      return;
    }

    while (1)
    {
      sub_1C70F25A0(v15);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1C75516FC())
      {
        sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
        swift_dynamicCast();
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_1C7074680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_23_12();
  a20 = v21;
  a21 = v23;
  v25 = v24;
  a13 = v26;
  v27 = *(v24 + 16);
  if (v27)
  {
    v28 = v22;
    v29 = 32;
    do
    {
      v28(&a12, *(v25 + v29++));
      --v27;
    }

    while (v27);
  }

  OUTLINED_FUNCTION_22_14();
}

void sub_1C7074704()
{
  OUTLINED_FUNCTION_23_12();
  v0 = 0;
  v2 = v1 + 56;
  OUTLINED_FUNCTION_11();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  if ((v4 & v3) != 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v8 = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      OUTLINED_FUNCTION_22_14();
      return;
    }

    v5 = *(v2 + 8 * v8);
    ++v0;
    if (v5)
    {
      v0 = v8;
      do
      {
LABEL_7:
        OUTLINED_FUNCTION_121_4();
        sub_1C70F54FC(v9, v10);
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

void sub_1C7074834()
{
  OUTLINED_FUNCTION_33();
  sub_1C754FBCC();
  OUTLINED_FUNCTION_3_0();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2167F0, &qword_1C7565550);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C759B4D0);
  v4 = sub_1C754FB7C();
  MEMORY[0x1CCA5CD70](v4);

  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C759B4F0);
  sub_1C754FB9C();
  OUTLINED_FUNCTION_117_0();
  v5 = sub_1C75506EC();
  MEMORY[0x1CCA5CD70](v5);

  MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C759B510);
  v6 = sub_1C754FBAC();
  v7 = (v6 & 1) == 0;
  if (v6)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v7)
  {
    v9 = 0xE500000000000000;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x1CCA5CD70](v8, v9);

  MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C759B530);
  sub_1C754FB6C();
  OUTLINED_FUNCTION_246_0();
  v10 = *(v1 + 8);
  v11 = OUTLINED_FUNCTION_295();
  v10(v11);
  MEMORY[0x1CCA5CD70](0xD00000000000001CLL, 0x80000001C759B550);
  sub_1C754FBBC();
  OUTLINED_FUNCTION_246_0();
  v12 = OUTLINED_FUNCTION_295();
  v10(v12);
  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
  OUTLINED_FUNCTION_25_0();
}

uint64_t SafetyController.scrub(_:with:useCaseIdentifier:)(uint64_t a1)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v4 = v3;
  OUTLINED_FUNCTION_126();
  *(v2 + 56) = v1;
  v5 = sub_1C754FBFC();
  *(v2 + 64) = v5;
  OUTLINED_FUNCTION_18(v5);
  *(v2 + 72) = v6;
  *(v2 + 80) = OUTLINED_FUNCTION_77();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2154E0, &qword_1C755D328);
  OUTLINED_FUNCTION_76(v7);
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v8 = sub_1C754FACC();
  *(v2 + 104) = v8;
  OUTLINED_FUNCTION_18(v8);
  *(v2 + 112) = v9;
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = swift_task_alloc();
  v10 = sub_1C754FBDC();
  *(v2 + 136) = v10;
  OUTLINED_FUNCTION_18(v10);
  *(v2 + 144) = v11;
  *(v2 + 152) = OUTLINED_FUNCTION_77();
  v12 = sub_1C754FC4C();
  *(v2 + 160) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v2 + 168) = v13;
  *(v2 + 176) = OUTLINED_FUNCTION_77();
  v14 = sub_1C754FCEC();
  *(v2 + 184) = v14;
  OUTLINED_FUNCTION_18(v14);
  *(v2 + 192) = v15;
  *(v2 + 200) = OUTLINED_FUNCTION_77();
  v16 = sub_1C754FC6C();
  *(v2 + 208) = v16;
  OUTLINED_FUNCTION_18(v16);
  *(v2 + 216) = v17;
  *(v2 + 224) = OUTLINED_FUNCTION_77();
  v18 = sub_1C754FD2C();
  *(v2 + 232) = v18;
  OUTLINED_FUNCTION_18(v18);
  *(v2 + 240) = v19;
  *(v2 + 248) = swift_task_alloc();
  *(v2 + 256) = swift_task_alloc();
  v20 = *v4;
  type metadata accessor for TextSanitizer(0);
  *(v2 + 280) = v20;
  v21 = swift_task_alloc();
  *(v2 + 264) = v21;
  *v21 = v2;
  v21[1] = sub_1C7074DF8;
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_244_0();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C7074DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v17 = v16;
  v19 = v18;
  OUTLINED_FUNCTION_47();
  v21 = v20;
  OUTLINED_FUNCTION_6_4();
  *v22 = v21;
  v23 = *v15;
  OUTLINED_FUNCTION_14();
  *v24 = v23;
  *(v21 + 272) = v14;

  if (v14)
  {
    OUTLINED_FUNCTION_41();
    OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v25, v26, v27);
  }

  else
  {
    v38 = *(v21 + 88);

    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_17_1();

    return v32(v29, v30, v31, v32, v33, v34, v35, v36, v38, v19, v17, a12, a13, a14);
  }
}

uint64_t sub_1C7074FB8()
{
  v180 = v0;
  v1 = *(v0 + 272);
  *(v0 + 48) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  OUTLINED_FUNCTION_66_2();
  v3 = swift_dynamicCast();
  v4 = *(v0 + 272);
  if (v3)
  {
    v6 = *(v0 + 192);
    v5 = *(v0 + 200);
    v7 = *(v0 + 184);

    v8 = OUTLINED_FUNCTION_154();
    v9(v8);
    sub_1C754FD0C();
    if ((*(v6 + 88))(v5, v7) == *MEMORY[0x1E69A0A58])
    {
      v10 = *(v0 + 168);
      (*(*(v0 + 192) + 96))(*(v0 + 200), *(v0 + 184));
      v11 = OUTLINED_FUNCTION_57_3();
      v12(v11);
      sub_1C754FC5C();
      v13 = v10 + 88;
      v14 = OUTLINED_FUNCTION_55();
      v16 = v15(v14);
      if (v16 == *MEMORY[0x1E69A09E0])
      {
        v17 = *(v0 + 152);
        v18 = *(v0 + 144);
        v19 = *(v0 + 96);
        (*(*(v0 + 168) + 96))(*(v0 + 176), *(v0 + 160));
        v20 = v18 + 32;
        v21 = OUTLINED_FUNCTION_90();
        v23 = v22(v21);
        MEMORY[0x1CCA5C070](v23);
        OUTLINED_FUNCTION_48_1(v19);
        if (v24)
        {
          sub_1C6FD7FC8(*(v0 + 96), &qword_1EC2154E0, &qword_1C755D328);
          if ((sub_1C754FB8C() & 1) == 0)
          {
            sub_1C754FBAC();
          }

          OUTLINED_FUNCTION_138_3();
          OUTLINED_FUNCTION_0_30();
          v142 = sub_1C707E638(v140, v141);
          OUTLINED_FUNCTION_65_6(v142);
          OUTLINED_FUNCTION_117_3();
          sub_1C755180C();
          OUTLINED_FUNCTION_247_0();
          sub_1C7074834();
          MEMORY[0x1CCA5CD70]();

          OUTLINED_FUNCTION_4_18();
          v145 = sub_1C707E638(v143, v144);
          v146 = OUTLINED_FUNCTION_86_0(v145);
          OUTLINED_FUNCTION_148_3(v146, v147);
          OUTLINED_FUNCTION_269_0();
          v148();
          type metadata accessor for SafetyError.SafetyValidationFailureInfo(0);
          OUTLINED_FUNCTION_84();
          __swift_storeEnumTagSinglePayload(v149, v150, v151, v175);
          OUTLINED_FUNCTION_288_0();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v20 + 8))();
          (*(v168 + 8))();
          (*(v13 + 8))(v19, v17);
        }

        else
        {
          v86 = *(v0 + 240);
          v87 = *(v0 + 248);
          v88 = *(v0 + 232);
          v170 = *(v0 + 208);
          v172 = *(v0 + 224);
          v154 = *(v0 + 152);
          v162 = *(v0 + 136);
          v166 = *(v0 + 216);
          v158 = *(v0 + 128);
          v160 = *(v0 + 144);
          v89 = *(v0 + 104);
          v90 = *(v0 + 112);
          (*(v90 + 32))();
          type metadata accessor for SafetyError(0);
          OUTLINED_FUNCTION_0_30();
          v93 = sub_1C707E638(v91, v92);
          OUTLINED_FUNCTION_65_6(v93);
          v95 = v94;
          OUTLINED_FUNCTION_117_3();
          sub_1C755180C();
          OUTLINED_FUNCTION_201_0();
          MEMORY[0x1CCA5CD70](v96 + 32, v97 | 0x8000000000000000);
          sub_1C7074834();
          MEMORY[0x1CCA5CD70]();

          v98 = v179;
          OUTLINED_FUNCTION_4_18();
          v101 = sub_1C707E638(v99, v100);
          v102 = OUTLINED_FUNCTION_166_0(v88, v101);
          v104 = OUTLINED_FUNCTION_148_3(v102, v103);
          (*(v86 + 16))(v104, v87, v88);
          v105 = *(type metadata accessor for SafetyError.SafetyValidationFailureInfo(0) + 24);
          (*(v90 + 16))(&v95[v105], v158, v89);
          __swift_storeEnumTagSinglePayload(&v95[v105], 0, 1, v89);
          *v95 = v178;
          *(v95 + 1) = v98;
          *(v95 + 2) = &v178;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v90 + 8))(v158, v89);
          (*(v160 + 8))(v154, v162);
          (*(v166 + 8))(v172, v170);
          (*(v86 + 8))(v87);
        }
      }

      else if (v16 == *MEMORY[0x1E69A09E8])
      {
        v56 = *(v0 + 176);
        v57 = *(v0 + 104);
        v59 = *(v0 + 80);
        v58 = *(v0 + 88);
        v60 = *(v0 + 64);
        v61 = *(v0 + 72);
        (*(*(v0 + 168) + 96))(v56, *(v0 + 160));
        v62 = (*(v61 + 32))(v59, v56, v60);
        MEMORY[0x1CCA5C100](v62);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58, 1, v57);
        v64 = *(v0 + 240);
        v65 = *(v0 + 232);
        v171 = *(v0 + 224);
        v174 = *(v0 + 216);
        v165 = *(v0 + 248);
        v169 = *(v0 + 208);
        if (EnumTagSinglePayload == 1)
        {
          v176 = *(v0 + 104);
          v66 = *(v0 + 72);
          v157 = *(v0 + 64);
          v159 = *(v0 + 80);
          sub_1C6FD7FC8(*(v0 + 88), &qword_1EC2154E0, &qword_1C755D328);
          type metadata accessor for SafetyError(0);
          OUTLINED_FUNCTION_0_30();
          v69 = sub_1C707E638(v67, v68);
          OUTLINED_FUNCTION_65_6(v69);
          v71 = v70;
          OUTLINED_FUNCTION_117_3();
          sub_1C755180C();
          v72 = v179;
          *(v0 + 16) = v178;
          *(v0 + 24) = v72;
          OUTLINED_FUNCTION_201_0();
          MEMORY[0x1CCA5CD70](v73 + 4, v74 | 0x8000000000000000);
          sub_1C75519EC();
          v75 = *(v0 + 16);
          v76 = *(v0 + 24);
          OUTLINED_FUNCTION_4_18();
          v79 = sub_1C707E638(v77, v78);
          v80 = OUTLINED_FUNCTION_166_0(v65, v79);
          v82 = OUTLINED_FUNCTION_148_3(v80, v81);
          (*(v64 + 16))(v82, v165, v65);
          type metadata accessor for SafetyError.SafetyValidationFailureInfo(0);
          OUTLINED_FUNCTION_84();
          __swift_storeEnumTagSinglePayload(v83, v84, v85, v176);
          *v71 = v75;
          v71[1] = v76;
          v71[2] = v0 + 16;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v66 + 8))(v159, v157);
        }

        else
        {
          v124 = *(v0 + 112);
          v125 = *(v0 + 104);
          v161 = *(v0 + 120);
          v164 = *(v0 + 72);
          v155 = *(v0 + 64);
          v156 = *(v0 + 80);
          (*(v124 + 32))();
          type metadata accessor for SafetyError(0);
          OUTLINED_FUNCTION_0_30();
          v128 = sub_1C707E638(v126, v127);
          OUTLINED_FUNCTION_65_6(v128);
          v178 = 0;
          v130 = v129;
          v179 = 0xE000000000000000;
          sub_1C755180C();
          *(v0 + 32) = 0;
          *(v0 + 40) = 0xE000000000000000;
          OUTLINED_FUNCTION_201_0();
          MEMORY[0x1CCA5CD70](v131 + 36, v132 | 0x8000000000000000);
          OUTLINED_FUNCTION_275_0();
          sub_1C75519EC();
          v152 = *(v0 + 40);
          v153 = *(v0 + 32);
          OUTLINED_FUNCTION_4_18();
          v135 = sub_1C707E638(v133, v134);
          v136 = OUTLINED_FUNCTION_166_0(v65, v135);
          v138 = OUTLINED_FUNCTION_148_3(v136, v137);
          (*(v64 + 16))(v138, v165, v65);
          v139 = *(type metadata accessor for SafetyError.SafetyValidationFailureInfo(0) + 24);
          (*(v124 + 16))(&v130[v139], v161, v125);
          __swift_storeEnumTagSinglePayload(&v130[v139], 0, 1, v125);
          *v130 = v153;
          *(v130 + 1) = v152;
          *(v130 + 2) = v0 + 32;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          (*(v124 + 8))(v161, v125);
          (*(v164 + 8))(v156, v155);
        }

        (*(v174 + 8))(v171, v169);
        (*(v64 + 8))(v165, v65);
      }

      else
      {
        v106 = *(v0 + 240);
        v107 = *(v0 + 248);
        v108 = *(v0 + 232);
        v109 = *(v0 + 216);
        v163 = *(v0 + 208);
        v167 = *(v0 + 224);
        v110 = *(v0 + 168);
        v173 = *(v0 + 176);
        v177 = *(v0 + 104);
        type metadata accessor for SafetyError(0);
        OUTLINED_FUNCTION_0_30();
        v113 = sub_1C707E638(v111, v112);
        OUTLINED_FUNCTION_66_8(v113);
        v115 = v114;
        OUTLINED_FUNCTION_4_18();
        v118 = sub_1C707E638(v116, v117);
        v119 = OUTLINED_FUNCTION_166_0(v108, v118);
        (*(v106 + 16))(v120, v107, v108);
        type metadata accessor for SafetyError.SafetyValidationFailureInfo(0);
        OUTLINED_FUNCTION_84();
        __swift_storeEnumTagSinglePayload(v121, v122, v123, v177);
        *v115 = 0xD00000000000003DLL;
        v115[1] = 0x80000001C759B350;
        v115[2] = v119;
        OUTLINED_FUNCTION_57_3();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*(v109 + 8))(v167, v163);
        (*(v106 + 8))(v107, v108);
        (*(v110 + 8))(v173);
      }
    }

    else
    {
      v34 = *(v0 + 240);
      v35 = *(v0 + 248);
      v36 = *(v0 + 232);
      v37 = *(v0 + 104);
      (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
      v38 = type metadata accessor for SafetyError(0);
      OUTLINED_FUNCTION_0_30();
      v41 = sub_1C707E638(v39, v40);
      OUTLINED_FUNCTION_166_0(v38, v41);
      v43 = v42;
      OUTLINED_FUNCTION_4_18();
      v46 = sub_1C707E638(v44, v45);
      v47 = OUTLINED_FUNCTION_66_8(v46);
      (*(v34 + 16))(v48, v35, v36);
      type metadata accessor for SafetyError.SafetyValidationFailureInfo(0);
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v49, v50, v51, v37);
      *v43 = 0xD000000000000030;
      v43[1] = 0x80000001C759B310;
      v43[2] = v47;
      OUTLINED_FUNCTION_282();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v52 = OUTLINED_FUNCTION_57_3();
      v53(v52);
    }
  }

  else
  {
    v25 = *(v0 + 104);

    type metadata accessor for SafetyError(0);
    OUTLINED_FUNCTION_0_30();
    v28 = sub_1C707E638(v26, v27);
    OUTLINED_FUNCTION_66_8(v28);
    v30 = v29;
    type metadata accessor for SafetyError.SafetyValidationFailureInfo(0);
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v25);
    *v30 = 0xD00000000000002ELL;
    v30[1] = 0x80000001C759B2E0;
    v30[2] = v4;
    OUTLINED_FUNCTION_117_0();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  OUTLINED_FUNCTION_43();

  return v54();
}

uint64_t SafetyController.safety(of:with:useCaseIdentifier:)(uint64_t a1)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_299_0();
  *(v3 + 24) = v4;
  *(v3 + 32) = v2;
  v5 = type metadata accessor for SafetyError(0);
  *(v3 + 40) = v5;
  OUTLINED_FUNCTION_76(v5);
  *(v3 + 48) = OUTLINED_FUNCTION_77();
  *(v3 + 72) = *v1;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_298_0(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_52_3(v7);
  OUTLINED_FUNCTION_117_0();
  OUTLINED_FUNCTION_244_0();

  return SafetyController.scrub(_:with:useCaseIdentifier:)(v9);
}

uint64_t sub_1C7075E40()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_9();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 64) = v0;

  if (v0)
  {
    v7 = *(v3 + 32);
    v8 = sub_1C7075FC4;
  }

  else
  {

    v8 = OUTLINED_FUNCTION_137_2();
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C7075F58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C7075FC4()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 64);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  OUTLINED_FUNCTION_90();
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 40);
    v4 = *(v0 + 24);

    OUTLINED_FUNCTION_8_15();
    OUTLINED_FUNCTION_43_2();
    sub_1C7080C2C();
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  }

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C70760C0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216748, &qword_1C7565458);
  *(v6 + 56) = swift_task_alloc();
  v8 = sub_1C754F38C();
  *(v6 + 64) = v8;
  *(v6 + 72) = *(v8 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 105) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1C70761CC, v5, 0);
}

uint64_t sub_1C70761CC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_9(*(v0 + 40));
  OUTLINED_FUNCTION_132("SafetyController.validatedUserPrompt.validateUserPromptSafety", 61);
  if (qword_1EDD0EFB0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 105);
  v2 = type metadata accessor for TextSanitizer(0);
  __swift_project_value_buffer(v2, &unk_1EDD28D90);
  *(v0 + 104) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 88) = v3;
  *v3 = v4;
  v3[1] = sub_1C70762DC;
  OUTLINED_FUNCTION_297_0();

  return SafetyController.safety(of:with:useCaseIdentifier:)(v5);
}

uint64_t sub_1C70762DC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 96) = v0;

  v7 = *(v3 + 48);
  if (v0)
  {
    v8 = sub_1C70764B0;
  }

  else
  {
    v8 = sub_1C70763DC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C70764B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_38_6(*(v10 + 40));
  v11 = OUTLINED_FUNCTION_39_1();
  v12(v11);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C7076540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1C754F38C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7076604, v3, 0);
}

uint64_t sub_1C7076604()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_25_9(*(v0 + 32));
  OUTLINED_FUNCTION_132("SafetyController.validatedUserPrompt.validateUserPromptCharacters", 65);
  *(v0 + 72) = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_storyPhotoLibraryContext + 16);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C707669C()
{
  OUTLINED_FUNCTION_42();
  sub_1C707DB58(&unk_1F469DFD0);
  v2 = v1;
  *(v0 + 80) = v1;
  *(v0 + 112) = 1;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1C7076758;
  v4 = OUTLINED_FUNCTION_61_3(*(v0 + 16));

  return static TextSanitizer.validateCharacterCategories(_:unsupportedCategories:storyGenerationCache:useCaseIdentifier:)(v4, v5, v2, v6, (v0 + 112));
}

uint64_t sub_1C7076758(uint64_t a1)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v4 = v3;
  OUTLINED_FUNCTION_47();
  v6 = v5;
  OUTLINED_FUNCTION_6_4();
  *v7 = v6;
  v8 = *v2;
  OUTLINED_FUNCTION_14();
  *v9 = v8;
  *(v6 + 96) = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_287_0();
  }

  else
  {
    *(v6 + 104) = v4;
  }

  OUTLINED_FUNCTION_244_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C707688C()
{
  OUTLINED_FUNCTION_115_0();
  v1 = *(v0 + 32);
  v7 = *(v0 + 104);
  sub_1C75504FC();
  sub_1C6FD1EE8();
  sub_1C7080EAC(v7, 0, 3);
  OUTLINED_FUNCTION_38_6(v1);
  v2 = OUTLINED_FUNCTION_39_1();
  v3(v2);

  OUTLINED_FUNCTION_116();
  v5 = *(v0 + 104);

  return v4(v5);
}

uint64_t sub_1C7076968()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_0_22(*(v0 + 32), *(*(v0 + 32) + 24));
  OUTLINED_FUNCTION_95_1();
  sub_1C754F1AC();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_142();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t SafetyController.validatedUserPromptWithMusicTitleOnly(userPrompt:useCaseIdentifier:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 32) = v4;
  *(v1 + 40) = v0;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216748, &qword_1C7565458);
  OUTLINED_FUNCTION_76(v7);
  *(v1 + 48) = OUTLINED_FUNCTION_77();
  v8 = type metadata accessor for SafetyError(0);
  *(v1 + 56) = v8;
  OUTLINED_FUNCTION_76(v8);
  *(v1 + 64) = OUTLINED_FUNCTION_77();
  *(v1 + 89) = *v3;
  v9 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7076AB8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1C754FEEC();
  v2 = sub_1C75511BC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C6F5C000, v1, v2, "The user prompt was detected having a music title only, applying safety on the title", v3, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v4 = *(v0 + 89);

  *(v0 + 88) = v4;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 72) = v5;
  *v5 = v6;
  v5[1] = sub_1C7076BD8;
  v7 = *(v0 + 48);
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  return sub_1C70760C0(v7, v10, v8, (v0 + 88), v9);
}

uint64_t sub_1C7076BD8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 80) = v0;

  v7 = *(v3 + 40);
  if (v0)
  {
    v8 = sub_1C7076E28;
  }

  else
  {
    v8 = sub_1C7076CD8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C7076CD8()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 48);
  if (__swift_getEnumTagSinglePayload(v1, 1, *(v0 + 56)) == 1)
  {
    sub_1C6FD7FC8(v1, &qword_1EC216748, &qword_1C7565458);
    sub_1C75504FC();

    v2 = OUTLINED_FUNCTION_60_4();

    return v3(v2);
  }

  else
  {
    OUTLINED_FUNCTION_8_15();
    OUTLINED_FUNCTION_457();
    sub_1C7080C2C();
    OUTLINED_FUNCTION_0_30();
    v7 = sub_1C707E638(v5, v6);
    OUTLINED_FUNCTION_65_6(v7);
    OUTLINED_FUNCTION_21_16();
    swift_willThrow();
    OUTLINED_FUNCTION_2_17();
    sub_1C7080E04();

    OUTLINED_FUNCTION_43();

    return v8();
  }
}

uint64_t sub_1C7076E28()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7076E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 96) = v15;
  *(v9 + 104) = v8;
  *(v9 + 80) = v13;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 112) = type metadata accessor for SafetyError(0);
  *(v9 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216748, &qword_1C7565458);
  *(v9 + 128) = swift_task_alloc();
  *(v9 + 136) = swift_task_alloc();
  *(v9 + 144) = swift_task_alloc();
  *(v9 + 152) = swift_task_alloc();
  *(v9 + 160) = swift_task_alloc();
  *(v9 + 168) = swift_task_alloc();
  *(v9 + 176) = swift_task_alloc();
  *(v9 + 184) = swift_task_alloc();
  v10 = sub_1C754F38C();
  *(v9 + 192) = v10;
  *(v9 + 200) = *(v10 - 8);
  *(v9 + 208) = swift_task_alloc();
  *(v9 + 299) = *v14;

  return MEMORY[0x1EEE6DFA0](sub_1C707703C, v8, 0);
}

uint64_t sub_1C707703C()
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  sub_1C754F1CC();
  *(v0 + 216) = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_logger;
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_103_0();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_198();
    *(v1 + 4) = OUTLINED_FUNCTION_64_5(4.9654e-34, v3, v4);
    OUTLINED_FUNCTION_67(&dword_1C6F5C000, v5, v6, "User prompt for checking safety: %{sensitive}s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  *(v0 + 296) = *(v0 + 299);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 224) = v7;
  *v7 = v8;
  v7[1] = sub_1C707719C;
  OUTLINED_FUNCTION_239_0();

  return sub_1C70760C0(v9, v10, v11, v12, v13);
}

uint64_t sub_1C707719C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 232) = v0;

  v7 = *(v3 + 104);
  if (v0)
  {
    v8 = sub_1C7077EFC;
  }

  else
  {
    v8 = sub_1C707729C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C707729C()
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  v2 = *(v0 + 176);
  sub_1C6FD7F70();
  OUTLINED_FUNCTION_112(v2);
  if (!v3)
  {
    sub_1C6FD7F70();
    OUTLINED_FUNCTION_66_2();
    if ((swift_getEnumCaseMultiPayload() | 2) == 3)
    {
      v4 = *(v0 + 176);
      OUTLINED_FUNCTION_2_17();
      sub_1C7080E04();
      sub_1C6FD7FC8(v4, &qword_1EC216748, &qword_1C7565458);
      sub_1C75504FC();
      v5 = sub_1C754FEEC();
      sub_1C75511BC();
      OUTLINED_FUNCTION_103_0();

      if (OUTLINED_FUNCTION_200())
      {
        OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_17_6();
        OUTLINED_FUNCTION_198();
        *(v1 + 4) = OUTLINED_FUNCTION_64_5(4.9654e-34, v6, v7);
        OUTLINED_FUNCTION_67(&dword_1C6F5C000, v8, v9, "Safety rejected the prompt, trying without grounded names: %{sensitive}s");
        OUTLINED_FUNCTION_56_2();
        OUTLINED_FUNCTION_10_1();
      }

      *(v0 + 297) = *(v0 + 299);
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 240) = v10;
      *v10 = v11;
      v10[1] = sub_1C7077510;
      OUTLINED_FUNCTION_239_0();

      return sub_1C70760C0(v12, v13, v14, v15, v16);
    }

    OUTLINED_FUNCTION_2_17();
    sub_1C7080E04();
  }

  sub_1C6FD7FC8(*(v0 + 176), &qword_1EC216748, &qword_1C7565458);
  OUTLINED_FUNCTION_175();
  v19 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_103_0();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_198();
    *(v1 + 4) = OUTLINED_FUNCTION_64_5(4.9654e-34, v20, v21);
    OUTLINED_FUNCTION_67(&dword_1C6F5C000, v22, v23, "User prompt for checking characters: %{sensitive}s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  v24 = swift_task_alloc();
  *(v0 + 272) = v24;
  *v24 = v0;
  OUTLINED_FUNCTION_23_13(v24);
  OUTLINED_FUNCTION_239_0();

  return sub_1C7076540(v25, v26, v27);
}

uint64_t sub_1C7077510()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 248) = v0;

  v7 = *(v3 + 104);
  if (v0)
  {
    v8 = sub_1C7077FC0;
  }

  else
  {
    v8 = sub_1C7077610;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C7077610()
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_109_0();
  sub_1C6FD7FC8(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_90();
  sub_1C707DD50(v5, v6);
  OUTLINED_FUNCTION_43_2();
  sub_1C6FD7F70();
  OUTLINED_FUNCTION_48_1(v1);
  if (!v7)
  {
    sub_1C6FD7F70();
    OUTLINED_FUNCTION_66_2();
    if ((swift_getEnumCaseMultiPayload() | 2) == 3)
    {
      v8 = *(v0 + 152);
      OUTLINED_FUNCTION_2_17();
      sub_1C7080E04();
      sub_1C6FD7FC8(v8, &qword_1EC216748, &qword_1C7565458);
      sub_1C75504FC();
      v9 = sub_1C754FEEC();
      sub_1C75511BC();
      OUTLINED_FUNCTION_103_0();

      if (OUTLINED_FUNCTION_200())
      {
        OUTLINED_FUNCTION_41_0();
        OUTLINED_FUNCTION_17_6();
        OUTLINED_FUNCTION_198();
        *(&qword_1EC216748 + 4) = OUTLINED_FUNCTION_64_5(4.9654e-34, v10, v11);
        OUTLINED_FUNCTION_67(&dword_1C6F5C000, v12, v13, "Safety rejected the prompt, trying without grounded names and locations: %{sensitive}s");
        OUTLINED_FUNCTION_56_2();
        OUTLINED_FUNCTION_10_1();
      }

      *(v0 + 298) = *(v0 + 299);
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v0 + 256) = v14;
      *v14 = v15;
      v14[1] = sub_1C70778A4;
      OUTLINED_FUNCTION_239_0();

      return sub_1C70760C0(v16, v17, v18, v19, v20);
    }

    OUTLINED_FUNCTION_2_17();
    sub_1C7080E04();
  }

  sub_1C6FD7FC8(*(v0 + 152), &qword_1EC216748, &qword_1C7565458);
  OUTLINED_FUNCTION_175();
  v23 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_103_0();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_198();
    *(&qword_1EC216748 + 4) = OUTLINED_FUNCTION_64_5(4.9654e-34, v24, v25);
    OUTLINED_FUNCTION_67(&dword_1C6F5C000, v26, v27, "User prompt for checking characters: %{sensitive}s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  v28 = swift_task_alloc();
  *(v0 + 272) = v28;
  *v28 = v0;
  OUTLINED_FUNCTION_23_13(v28);
  OUTLINED_FUNCTION_239_0();

  return sub_1C7076540(v29, v30, v31);
}

uint64_t sub_1C70778A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 264) = v0;

  v7 = *(v3 + 104);
  if (v0)
  {
    v8 = sub_1C707809C;
  }

  else
  {
    v8 = sub_1C70779A4;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1C70779A4()
{
  OUTLINED_FUNCTION_316_0();
  OUTLINED_FUNCTION_75_1();
  sub_1C6FD7FC8(*(v0 + 184), &qword_1EC216748, &qword_1C7565458);
  v2 = OUTLINED_FUNCTION_90();
  sub_1C707DD50(v2, v3);
  OUTLINED_FUNCTION_175();
  v4 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_103_0();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_17_6();
    OUTLINED_FUNCTION_198();
    *(v1 + 4) = OUTLINED_FUNCTION_64_5(4.9654e-34, v5, v6);
    OUTLINED_FUNCTION_67(&dword_1C6F5C000, v7, v8, "User prompt for checking characters: %{sensitive}s");
    OUTLINED_FUNCTION_56_2();
    OUTLINED_FUNCTION_10_1();
  }

  v9 = swift_task_alloc();
  *(v0 + 272) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_23_13(v9);
  OUTLINED_FUNCTION_239_0();

  return sub_1C7076540(v10, v11, v12);
}

uint64_t sub_1C7077AA4()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_20();
  *v5 = v4;
  *(v7 + 280) = v6;
  *(v7 + 288) = v0;

  OUTLINED_FUNCTION_286_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7077BC0()
{
  v1 = *(v0 + 184);
  if (*(*(v0 + 280) + 16))
  {
    OUTLINED_FUNCTION_0_30();
    v4 = sub_1C707E638(v2, v3);
    v5 = OUTLINED_FUNCTION_66_8(v4);
    OUTLINED_FUNCTION_133_3(v5, v6);
    swift_willThrow();
LABEL_8:
    sub_1C6FD7FC8(v1, &qword_1EC216748, &qword_1C7565458);
    __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
    OUTLINED_FUNCTION_48_8();
    sub_1C754F1AC();
    v19 = OUTLINED_FUNCTION_88_3();
    v20(v19);

    OUTLINED_FUNCTION_43();

    return v21();
  }

  v7 = *(v0 + 128);

  OUTLINED_FUNCTION_66_2();
  sub_1C6FD7F70();
  OUTLINED_FUNCTION_48_1(v7);
  if (!v8)
  {
    v1 = *(v0 + 184);
    OUTLINED_FUNCTION_8_15();
    sub_1C7080C2C();
    OUTLINED_FUNCTION_0_30();
    v18 = sub_1C707E638(v16, v17);
    OUTLINED_FUNCTION_86_0(v18);
    OUTLINED_FUNCTION_21_16();
    swift_willThrow();
    OUTLINED_FUNCTION_2_17();
    sub_1C7080E04();
    goto LABEL_8;
  }

  v9 = *(v0 + 128);
  v10 = *(v0 + 96);
  sub_1C6FD7FC8(*(v0 + 184), &qword_1EC216748, &qword_1C7565458);
  sub_1C6FD7FC8(v9, &qword_1EC216748, &qword_1C7565458);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1C75504FC();
  sub_1C754F1AC();
  v11 = OUTLINED_FUNCTION_457();
  v12(v11);

  v13 = OUTLINED_FUNCTION_60_4();

  return v14(v13);
}

uint64_t sub_1C7077EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_17_16();
  v18 = OUTLINED_FUNCTION_88_3();
  v19(v18);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C7077FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  sub_1C6FD7FC8(*(v18 + 184), &qword_1EC216748, &qword_1C7565458);
  OUTLINED_FUNCTION_17_16();
  v19 = OUTLINED_FUNCTION_88_3();
  v20(v19);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C707809C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  sub_1C6FD7FC8(*(v18 + 184), &qword_1EC216748, &qword_1C7565458);
  OUTLINED_FUNCTION_17_16();
  v19 = OUTLINED_FUNCTION_88_3();
  v20(v19);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C7078178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  sub_1C6FD7FC8(*(v18 + 184), &qword_1EC216748, &qword_1C7565458);
  OUTLINED_FUNCTION_17_16();
  v19 = OUTLINED_FUNCTION_88_3();
  v20(v19);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C7078254(uint64_t *a1)
{
  v2 = type metadata accessor for GlobalTrait(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (![objc_opt_self() useGlobalTraitsV3])
  {
    goto LABEL_5;
  }

  sub_1C7080BB8();
  if (*(v4 + *(v2 + 28)) != 1)
  {
    sub_1C7080E04();
LABEL_5:
    v8 = *a1;
    sub_1C75504FC();
    return v8;
  }

  v5 = v4[1];
  v10[0] = *v4;
  v10[1] = v5;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  v6 = v4[2];
  v7 = v4[3];
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v6, v7);

  v8 = v10[0];
  sub_1C7080E04();
  return v8;
}

uint64_t sub_1C70783BC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = sub_1C754F38C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C70784A8, v2, 0);
}

uint64_t sub_1C70784A8()
{
  v33 = v0;
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_25_9(*(v0 + 32));
  v3 = OUTLINED_FUNCTION_132("SafetyController.batchValidationOfTraits", 40);
  v10 = *(v2 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    OUTLINED_FUNCTION_217(v3, v4, v5, v6, v7, v8, v9);
    v11 = v31;
    v12 = type metadata accessor for PersonalTrait(0);
    OUTLINED_FUNCTION_18(v12);
    v1 += (*(v13 + 80) + 32) & ~*(v13 + 80);
    v14 = v0;
    do
    {
      sub_1C708010C(sub_1C7078E94, v32);
      OUTLINED_FUNCTION_243_0();
      if (v22)
      {
        OUTLINED_FUNCTION_317_0(v21 > 1, v15, v16, v17, v18, v19, v20);
        v14 = v11;
        v11 = v31;
      }

      OUTLINED_FUNCTION_241_0();
    }

    while (!v23);
  }

  else
  {
    v14 = v0;
  }

  *(v14 + 16) = v11;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  v25 = sub_1C703328C();
  OUTLINED_FUNCTION_213_0(v25);
  OUTLINED_FUNCTION_181();
  *(v0 + 80) = v24;
  *(v0 + 88) = v10;
  if (qword_1EDD0AFA8 != -1)
  {
    OUTLINED_FUNCTION_57_2(&qword_1EDD0AFA8);
  }

  v26 = type metadata accessor for TextSanitizer(0);
  __swift_project_value_buffer(v26, &unk_1EDD28C40);
  OUTLINED_FUNCTION_135_3();
  *(v1 + 112) = v27;
  v28 = swift_task_alloc();
  *(v0 + 96) = v28;
  *v28 = v0;
  v28[1] = sub_1C70786A8;
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_258_0();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C70786A8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_9();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    v7 = sub_1C70787CC;
    v8 = 0;
  }

  else
  {
    v9 = *(v3 + 40);

    v7 = sub_1C7080ED0;
    v8 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C70787E0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = sub_1C754F38C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C70788CC, v2, 0);
}

uint64_t sub_1C70788CC()
{
  v33 = v0;
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_25_9(*(v0 + 32));
  v3 = OUTLINED_FUNCTION_132("SafetyController.batchValidationOfTraits", 40);
  v10 = *(v2 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    OUTLINED_FUNCTION_217(v3, v4, v5, v6, v7, v8, v9);
    v11 = v31;
    v12 = type metadata accessor for GlobalTrait(0);
    OUTLINED_FUNCTION_18(v12);
    v1 += (*(v13 + 80) + 32) & ~*(v13 + 80);
    v14 = v0;
    do
    {
      sub_1C708010C(sub_1C7078EE8, v32);
      OUTLINED_FUNCTION_243_0();
      if (v22)
      {
        OUTLINED_FUNCTION_317_0(v21 > 1, v15, v16, v17, v18, v19, v20);
        v14 = v11;
        v11 = v31;
      }

      OUTLINED_FUNCTION_241_0();
    }

    while (!v23);
  }

  else
  {
    v14 = v0;
  }

  *(v14 + 16) = v11;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  v25 = sub_1C703328C();
  OUTLINED_FUNCTION_213_0(v25);
  OUTLINED_FUNCTION_181();
  *(v0 + 80) = v24;
  *(v0 + 88) = v10;
  if (qword_1EDD0AFA8 != -1)
  {
    OUTLINED_FUNCTION_57_2(&qword_1EDD0AFA8);
  }

  v26 = type metadata accessor for TextSanitizer(0);
  __swift_project_value_buffer(v26, &unk_1EDD28C40);
  OUTLINED_FUNCTION_135_3();
  *(v1 + 112) = v27;
  v28 = swift_task_alloc();
  *(v0 + 96) = v28;
  *v28 = v0;
  v28[1] = sub_1C7078ACC;
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_258_0();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C7078ACC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_9();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    v7 = sub_1C7078C98;
    v8 = 0;
  }

  else
  {
    v9 = *(v3 + 40);

    v7 = sub_1C7078BF0;
    v8 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C7078BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  __swift_project_boxed_opaque_existential_1(*(v10 + 32), *(*(v10 + 32) + 24));
  OUTLINED_FUNCTION_300_0();
  sub_1C75504FC();
  OUTLINED_FUNCTION_95_1();
  sub_1C754F1AC();
  v11 = OUTLINED_FUNCTION_39_1();
  v12(v11);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_88_0();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C7078CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_309();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_115_0();
  a18 = v20;
  v24 = v20[13];
  sub_1C75504FC();
  v25 = v24;
  v26 = sub_1C754FEEC();
  v27 = sub_1C755119C();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = v20[13];
    v30 = v20[10];
    v29 = v20[11];
    v31 = OUTLINED_FUNCTION_23_1();
    swift_slowAlloc();
    v32 = OUTLINED_FUNCTION_17_6();
    a9 = v32;
    *v31 = 136380931;
    v33 = sub_1C6F765A4(v30, v29, &a9);

    *(v31 + 4) = v33;
    *(v31 + 12) = 2112;
    v34 = v28;
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 14) = v35;
    *v21 = v35;
    _os_log_impl(&dword_1C6F5C000, v26, v27, "Batch validation of all traits at once failed: %{private}s, with error: %@", v31, 0x16u);
    sub_1C6FD7FC8(v21, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_10_1();
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_37();
    MEMORY[0x1CCA5F8E0](v31, -1, -1);
  }

  else
  {
  }

  swift_willThrow();
  v36 = OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_0_22(v36, v37);
  sub_1C754F1AC();
  v38 = OUTLINED_FUNCTION_457();
  v39(v38);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_20_3();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_1C7078E94(uint64_t *a1)
{
  [objc_opt_self() useGlobalTraitsV3];
  v2 = *a1;
  sub_1C75504FC();
  return v2;
}

uint64_t sub_1C7078EE8(uint64_t *a1)
{
  v2 = type metadata accessor for GlobalTrait(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (![objc_opt_self() useGlobalTraitsV3])
  {
    goto LABEL_5;
  }

  sub_1C7080BB8();
  if (*(v4 + *(v2 + 28)) != 1)
  {
    sub_1C7080E04();
LABEL_5:
    v8 = *a1;
    sub_1C75504FC();
    return v8;
  }

  v5 = v4[1];
  v10[0] = *v4;
  v10[1] = v5;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  v6 = v4[2];
  v7 = v4[3];
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](v6, v7);

  v8 = v10[0];
  sub_1C7080E04();
  return v8;
}

uint64_t sub_1C7079058(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = sub_1C754F38C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7079144, v2, 0);
}

uint64_t sub_1C7079144()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_321_0();
  OUTLINED_FUNCTION_221_0("SafetyController.concurrentValidationOfTraits");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216860, &qword_1C7565610);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8, &qword_1C7564C88);
  OUTLINED_FUNCTION_6_23();
  sub_1C707E638(v1, v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_281_0(v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 88) = v4;
  *v4 = v5;
  v4[1] = sub_1C7079270;
  OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1C7079270()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_210();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7079384(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  v4 = sub_1C754F38C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7079470, v2, 0);
}

uint64_t sub_1C7079470()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_321_0();
  OUTLINED_FUNCTION_221_0("SafetyController.concurrentValidationOfTraits");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216840, &qword_1C75655B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216848, &unk_1C7577970);
  OUTLINED_FUNCTION_6_23();
  sub_1C707E638(v1, v2);
  v3 = swift_task_alloc();
  OUTLINED_FUNCTION_281_0(v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 88) = v4;
  *v4 = v5;
  v4[1] = sub_1C707959C;
  OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1C707959C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_210();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C70796B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_38_6(*(v10 + 32));
  v11 = OUTLINED_FUNCTION_39_1();
  v12(v11);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_88_0();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C707973C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216868, &qword_1C7565630);
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216870, &qword_1C7565638);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = *(type metadata accessor for PersonalTrait(0) - 8);
  v4[17] = v7;
  v4[18] = *(v7 + 64);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7079904, a3, 0);
}

uint64_t sub_1C7079904()
{
  if (*(v0[10] + 16))
  {
    v3 = OUTLINED_FUNCTION_78_5();
    v33 = v3 - 8;
    do
    {
      v4 = v0[22];
      v6 = v0[11];
      v5 = v0[12];
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
      OUTLINED_FUNCTION_10_18();
      OUTLINED_FUNCTION_275_0();
      sub_1C7080BB8();
      OUTLINED_FUNCTION_228_0();
      v10 = swift_allocObject();
      OUTLINED_FUNCTION_283_0(v10);
      OUTLINED_FUNCTION_27_11();
      sub_1C7080C2C();
      *(v1 + v36) = v6;
      *(v1 + v3) = v5;
      OUTLINED_FUNCTION_255_0();
      OUTLINED_FUNCTION_320();

      v11 = v0[22];
      if (v4 == 1)
      {
        v12 = OUTLINED_FUNCTION_43_2();
        sub_1C6FD7FC8(v12, v13, &qword_1C755FF40);
      }

      else
      {
        sub_1C7550D4C();
        (*(*(v3 - 8) + 8))(v11, v3);
      }

      if (*v2)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v14 = sub_1C7550C8C();
        v16 = v15;
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      OUTLINED_FUNCTION_30();
      v17 = swift_allocObject();
      *(v17 + 16) = &unk_1C7565648;
      *(v17 + 24) = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216860, &qword_1C7565610);
      v18 = v16 | v14;
      if (v16 | v14)
      {
        v18 = v34;
        *v34 = 0;
        v34[1] = 0;
        v0[4] = v14;
        v0[5] = v16;
      }

      OUTLINED_FUNCTION_236_0(v18, v32, v33, v34, v35, v36, v37, v38, v39, v40);
      OUTLINED_FUNCTION_312_0(v19, v20, v21);

      sub_1C6FD7FC8(v14, &qword_1EC2158F8, &qword_1C755FF40);
      OUTLINED_FUNCTION_265_0();
    }

    while (!v22);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216860, &qword_1C7565610);
  OUTLINED_FUNCTION_311_0(v23);
  OUTLINED_FUNCTION_6_23();
  v26 = sub_1C707E638(v24, v25);
  v27 = MEMORY[0x1E69E7CC0];
  v0[25] = v26;
  v0[26] = v27;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[27] = v28;
  *v28 = v29;
  v30 = OUTLINED_FUNCTION_30_9(v28);

  return MEMORY[0x1EEE6D8A8](v30);
}

uint64_t sub_1C7079BF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7079CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[24];
  v12 = v10[13];
  OUTLINED_FUNCTION_112(v12);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_169_1();
    v15(v14);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_88_0();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    v25 = *(v12 + *(v11 + 48));
    OUTLINED_FUNCTION_27_11();
    sub_1C7080C2C();
    if (v25)
    {
      OUTLINED_FUNCTION_10_18();
      sub_1C7080BB8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v10[26];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = OUTLINED_FUNCTION_92();
        sub_1C6FB1D20(v34, v35, v36, v37);
        v27 = v38;
      }

      v29 = *(v27 + 16);
      v28 = *(v27 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C6FB1D20(v28 > 1, v29 + 1, 1, v27);
        v27 = v39;
      }

      OUTLINED_FUNCTION_13_17();
      sub_1C7080E04();
      *(v27 + 16) = v29 + 1;
      OUTLINED_FUNCTION_191();
      OUTLINED_FUNCTION_27_11();
      sub_1C7080C2C();
    }

    else
    {
      OUTLINED_FUNCTION_13_17();
      sub_1C7080E04();
      v27 = v10[26];
    }

    v10[26] = v27;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v10[27] = v30;
    *v30 = v31;
    OUTLINED_FUNCTION_30_9(v30);
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE6D8A8](v32);
  }
}

uint64_t sub_1C7079EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216850, &qword_1C75655D8);
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216858, &qword_1C75655E0);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v7 = *(type metadata accessor for GlobalTrait(0) - 8);
  v4[17] = v7;
  v4[18] = *(v7 + 64);
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C707A0A4, a3, 0);
}

uint64_t sub_1C707A0A4()
{
  if (*(v0[10] + 16))
  {
    v3 = OUTLINED_FUNCTION_78_5();
    v33 = v3 - 8;
    do
    {
      v4 = v0[22];
      v6 = v0[11];
      v5 = v0[12];
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
      OUTLINED_FUNCTION_9_16();
      OUTLINED_FUNCTION_275_0();
      sub_1C7080BB8();
      OUTLINED_FUNCTION_228_0();
      v10 = swift_allocObject();
      OUTLINED_FUNCTION_283_0(v10);
      OUTLINED_FUNCTION_26_11();
      sub_1C7080C2C();
      *(v1 + v36) = v6;
      *(v1 + v3) = v5;
      OUTLINED_FUNCTION_255_0();
      OUTLINED_FUNCTION_320();

      v11 = v0[22];
      if (v4 == 1)
      {
        v12 = OUTLINED_FUNCTION_43_2();
        sub_1C6FD7FC8(v12, v13, &qword_1C755FF40);
      }

      else
      {
        sub_1C7550D4C();
        (*(*(v3 - 8) + 8))(v11, v3);
      }

      if (*v2)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v14 = sub_1C7550C8C();
        v16 = v15;
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      OUTLINED_FUNCTION_30();
      v17 = swift_allocObject();
      *(v17 + 16) = &unk_1C75655F0;
      *(v17 + 24) = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216840, &qword_1C75655B8);
      v18 = v16 | v14;
      if (v16 | v14)
      {
        v18 = v34;
        *v34 = 0;
        v34[1] = 0;
        v0[4] = v14;
        v0[5] = v16;
      }

      OUTLINED_FUNCTION_236_0(v18, v32, v33, v34, v35, v36, v37, v38, v39, v40);
      OUTLINED_FUNCTION_312_0(v19, v20, v21);

      sub_1C6FD7FC8(v14, &qword_1EC2158F8, &qword_1C755FF40);
      OUTLINED_FUNCTION_265_0();
    }

    while (!v22);
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216840, &qword_1C75655B8);
  OUTLINED_FUNCTION_311_0(v23);
  OUTLINED_FUNCTION_6_23();
  v26 = sub_1C707E638(v24, v25);
  v27 = MEMORY[0x1E69E7CC0];
  v0[25] = v26;
  v0[26] = v27;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[27] = v28;
  *v28 = v29;
  v30 = OUTLINED_FUNCTION_30_9(v28);

  return MEMORY[0x1EEE6D8A8](v30);
}

uint64_t sub_1C707A394()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C707A48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[24];
  v12 = v10[13];
  OUTLINED_FUNCTION_112(v12);
  if (v13)
  {
    v14 = OUTLINED_FUNCTION_169_1();
    v15(v14);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_88_0();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    v25 = *(v12 + *(v11 + 48));
    OUTLINED_FUNCTION_26_11();
    sub_1C7080C2C();
    if (v25)
    {
      OUTLINED_FUNCTION_9_16();
      sub_1C7080BB8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v10[26];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = OUTLINED_FUNCTION_92();
        sub_1C6FB1D60(v34, v35, v36, v37);
        v27 = v38;
      }

      v29 = *(v27 + 16);
      v28 = *(v27 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C6FB1D60(v28 > 1, v29 + 1, 1, v27);
        v27 = v39;
      }

      OUTLINED_FUNCTION_12_18();
      sub_1C7080E04();
      *(v27 + 16) = v29 + 1;
      OUTLINED_FUNCTION_191();
      OUTLINED_FUNCTION_26_11();
      sub_1C7080C2C();
    }

    else
    {
      OUTLINED_FUNCTION_12_18();
      sub_1C7080E04();
      v27 = v10[26];
    }

    v10[26] = v27;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v10[27] = v30;
    *v30 = v31;
    OUTLINED_FUNCTION_30_9(v30);
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE6D8A8](v32);
  }
}

uint64_t sub_1C707A67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for PersonalTrait(0);
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C707A710, 0, 0);
}

uint64_t sub_1C707A710()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  [objc_opt_self() useGlobalTraitsV3];
  if (qword_1EDD0AFA8 != -1)
  {
    OUTLINED_FUNCTION_57_2(&qword_1EDD0AFA8);
  }

  v2 = type metadata accessor for TextSanitizer(0);
  __swift_project_value_buffer(v2, &unk_1EDD28C40);
  OUTLINED_FUNCTION_135_3();
  *(v1 + 64) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1C707A814;
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_244_0();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C707A814()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C707A918()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_61_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216860, &qword_1C7565610);
  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_57_0();
  sub_1C7080BB8();
  OUTLINED_FUNCTION_319_0();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_244_0();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C707A9A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_94_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_115_0();
  a18 = v20;
  v24 = *(v20 + 56);
  v25 = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_logger;
  OUTLINED_FUNCTION_10_18();
  sub_1C7080BB8();
  v26 = v24;
  v27 = sub_1C754FEEC();
  sub_1C75511BC();

  v28 = OUTLINED_FUNCTION_262_0();
  v29 = *(v20 + 56);
  v30 = *(v20 + 40);
  if (v28)
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_160_1();
    v31 = OUTLINED_FUNCTION_15_5();
    a9 = v31;
    *v25 = 136380931;
    v32 = *v30;
    v33 = v30[1];
    sub_1C75504FC();
    OUTLINED_FUNCTION_13_17();
    sub_1C7080E04();
    v34 = sub_1C6F765A4(v32, v33, &a9);

    *(v25 + 4) = v34;
    OUTLINED_FUNCTION_162_1();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_234_0(v35);
    OUTLINED_FUNCTION_91_3(&dword_1C6F5C000, v36, v37, "Trait %{private}s found unsafe: %@");
    sub_1C6FD7FC8(v21, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_79();
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {

    OUTLINED_FUNCTION_13_17();
    sub_1C7080E04();
  }

  OUTLINED_FUNCTION_61_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216860, &qword_1C7565610);
  OUTLINED_FUNCTION_10_18();
  OUTLINED_FUNCTION_57_0();
  sub_1C7080BB8();
  OUTLINED_FUNCTION_319_0();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_1C707AB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  type metadata accessor for GlobalTrait(0);
  v5[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C707ABE0, 0, 0);
}

uint64_t sub_1C707ABE0()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  sub_1C7078254(*(v0 + 24));
  *(v0 + 48) = v2;
  if (qword_1EDD0AFA8 != -1)
  {
    OUTLINED_FUNCTION_57_2(&qword_1EDD0AFA8);
  }

  v3 = type metadata accessor for TextSanitizer(0);
  __swift_project_value_buffer(v3, &unk_1EDD28C40);
  OUTLINED_FUNCTION_135_3();
  *(v1 + 72) = v4;
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_298_0(v5);
  *v6 = v7;
  v6[1] = sub_1C707ACD4;
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_244_0();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C707ACD4()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C707ADFC()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_61_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216840, &qword_1C75655B8);
  OUTLINED_FUNCTION_9_16();
  OUTLINED_FUNCTION_57_0();
  sub_1C7080BB8();
  OUTLINED_FUNCTION_319_0();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_244_0();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1C707AE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_94_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_115_0();
  a18 = v20;
  v24 = *(v20 + 64);
  v25 = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_logger;
  OUTLINED_FUNCTION_9_16();
  sub_1C7080BB8();
  v26 = v24;
  v27 = sub_1C754FEEC();
  sub_1C75511BC();

  v28 = OUTLINED_FUNCTION_262_0();
  v29 = *(v20 + 64);
  v30 = *(v20 + 40);
  if (v28)
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_160_1();
    v31 = OUTLINED_FUNCTION_15_5();
    a9 = v31;
    *v25 = 136380931;
    v32 = *v30;
    v33 = v30[1];
    sub_1C75504FC();
    OUTLINED_FUNCTION_12_18();
    sub_1C7080E04();
    v34 = sub_1C6F765A4(v32, v33, &a9);

    *(v25 + 4) = v34;
    OUTLINED_FUNCTION_162_1();
    v35 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_234_0(v35);
    OUTLINED_FUNCTION_91_3(&dword_1C6F5C000, v36, v37, "Trait %{private}s found unsafe: %@");
    sub_1C6FD7FC8(v21, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_79();
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {

    OUTLINED_FUNCTION_12_18();
    sub_1C7080E04();
  }

  OUTLINED_FUNCTION_61_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216840, &qword_1C75655B8);
  OUTLINED_FUNCTION_9_16();
  OUTLINED_FUNCTION_57_0();
  sub_1C7080BB8();
  OUTLINED_FUNCTION_319_0();
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_1C707B030(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1C707B0DC;

  return sub_1C70783BC(a1, a2);
}

uint64_t sub_1C707B0DC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_286_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_270();

    return v11(v10);
  }
}

uint64_t sub_1C707B204()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 48);
  v2 = sub_1C754FEEC();
  sub_1C755119C();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    v3 = OUTLINED_FUNCTION_163_0();
    OUTLINED_FUNCTION_261_0(5.7779e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_232_0(v4);
    OUTLINED_FUNCTION_89(&dword_1C6F5C000, v5, v6, "Batch traits validation failed: %@, validating them individually");
    sub_1C6FD7FC8(v3, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_298_0(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_41_7(v8);
  OUTLINED_FUNCTION_244_0();

  return sub_1C7079058(v10, v11);
}

uint64_t sub_1C707B328()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 64) = v5;

  v7 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C707B420(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1C707B4CC;

  return sub_1C70787E0(a1, a2);
}

uint64_t sub_1C707B4CC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_286_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_270();

    return v11(v10);
  }
}

uint64_t sub_1C707B5F4()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 48);
  v2 = sub_1C754FEEC();
  sub_1C755119C();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    v3 = OUTLINED_FUNCTION_163_0();
    OUTLINED_FUNCTION_261_0(5.7779e-34);
    v4 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_232_0(v4);
    OUTLINED_FUNCTION_89(&dword_1C6F5C000, v5, v6, "Batch traits validation failed: %@, validating them individually");
    sub_1C6FD7FC8(v3, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_298_0(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_41_7(v8);
  OUTLINED_FUNCTION_244_0();

  return sub_1C7079384(v10, v11);
}

uint64_t sub_1C707B718()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;
  *(v6 + 64) = v5;

  v7 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C707B810()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_116();

  return v1();
}

uint64_t sub_1C707B86C(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_1C754F38C();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C707B930, v2, 0);
}

uint64_t sub_1C707B930()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_25_9(*(v0 + 40));
  OUTLINED_FUNCTION_132("SafetyController.batchValidationOfAppleMusicSongs", 49);
  v6 = *(v1 + 16);
  *(v0 + 80) = v6;
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = *(v0 + 32);
    v25 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v6, 0, v2, v3, v4, v5);
    v7 = v25;
    v9 = *(v25 + 16);
    v10 = 16 * v9;
    v11 = (v8 + 48);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v1 = v9 + 1;
      v14 = *(v25 + 24);
      sub_1C75504FC();
      if (v9 >= v14 >> 1)
      {
        sub_1C6F7ED9C(v14 > 1, v1, 1, v15, v16, v17, v18);
      }

      *(v25 + 16) = v1;
      v19 = v25 + v10;
      *(v19 + 32) = v13;
      *(v19 + 40) = v12;
      v10 += 16;
      v11 += 24;
      ++v9;
      --v6;
    }

    while (v6);
  }

  *(v0 + 16) = v7;
  *(v0 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  *(v0 + 96) = sub_1C703328C();
  sub_1C75505FC();
  OUTLINED_FUNCTION_181();
  *(v0 + 104) = v1;
  if (qword_1EDD0AF88 != -1)
  {
    OUTLINED_FUNCTION_55_5(&qword_1EDD0AF88);
  }

  v20 = type metadata accessor for TextSanitizer(0);
  *(v0 + 112) = v20;
  __swift_project_value_buffer(v20, &unk_1EDD28BF8);
  OUTLINED_FUNCTION_208_0();
  *(v0 + 160) = v21;
  v22 = swift_task_alloc();
  *(v0 + 120) = v22;
  *v22 = v0;
  v22[1] = sub_1C707BB1C;
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_44();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C707BB1C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_9();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {

    v7 = sub_1C707BDE8;
    v8 = 0;
  }

  else
  {
    v9 = *(v3 + 48);

    v7 = sub_1C707BC48;
    v8 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C707BC48()
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v6 = *(v0 + 80);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v8 = *(v0 + 32);
    v26 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v6, 0, v2, v3, v4, v5);
    v9 = 0;
    v7 = v26;
    v10 = *(v26 + 16);
    v11 = 16 * v10;
    v12 = (v8 + 64);
    do
    {
      v13 = *(v12 - 1);
      v1 = *v12;
      v14 = v10 + 1;
      v15 = *(v26 + 24);
      sub_1C75504FC();
      if (v10 >= v15 >> 1)
      {
        sub_1C6F7ED9C(v15 > 1, v14, 1, v16, v17, v18, v19);
      }

      v20 = *(v0 + 80);
      ++v9;
      *(v26 + 16) = v14;
      v21 = v26 + v11;
      *(v21 + 32) = v13;
      *(v21 + 40) = v1;
      v11 += 16;
      v12 += 24;
      ++v10;
    }

    while (v9 != v20);
  }

  *(v0 + 24) = v7;
  sub_1C75505FC();
  OUTLINED_FUNCTION_181();
  *(v0 + 136) = v1;
  if (qword_1EDD0AF80 != -1)
  {
    OUTLINED_FUNCTION_54_0(&qword_1EDD0AF80);
  }

  __swift_project_value_buffer(*(v0 + 112), &unk_1EDD28BE0);
  OUTLINED_FUNCTION_208_0();
  *(v0 + 161) = v22;
  v23 = swift_task_alloc();
  *(v0 + 144) = v23;
  *v23 = v0;
  v23[1] = sub_1C707BF3C;
  OUTLINED_FUNCTION_28_6();
  OUTLINED_FUNCTION_44();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C707BDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 128);
  v12 = sub_1C754FEEC();
  sub_1C755119C();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    v13 = OUTLINED_FUNCTION_163_0();
    OUTLINED_FUNCTION_261_0(5.7779e-34);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_232_0(v14);
    OUTLINED_FUNCTION_89(&dword_1C6F5C000, v15, v16, "Batch validation of song ids failed with error: %@");
    sub_1C6FD7FC8(v13, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_80_0(*(v10 + 40), *(*(v10 + 40) + 24));
  OUTLINED_FUNCTION_109_0();
  sub_1C754F1AC();
  v17 = OUTLINED_FUNCTION_49_3();
  v18(v17);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1C707BF3C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_9();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {

    v7 = sub_1C707C110;
    v8 = 0;
  }

  else
  {
    v9 = *(v3 + 48);

    v7 = sub_1C707C068;
    v8 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C707C068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  __swift_project_boxed_opaque_existential_1(*(v10 + 40), *(*(v10 + 40) + 24));
  OUTLINED_FUNCTION_300_0();
  sub_1C75504FC();
  OUTLINED_FUNCTION_95_1();
  sub_1C754F1AC();
  v11 = OUTLINED_FUNCTION_39_1();
  v12(v11);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_88_0();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C707C124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 152);
  v12 = sub_1C754FEEC();
  sub_1C755119C();

  if (OUTLINED_FUNCTION_200())
  {
    OUTLINED_FUNCTION_41_0();
    v13 = OUTLINED_FUNCTION_163_0();
    OUTLINED_FUNCTION_261_0(5.7779e-34);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_232_0(v14);
    OUTLINED_FUNCTION_89(&dword_1C6F5C000, v15, v16, "Batch validation of song titles failed with error: %@");
    sub_1C6FD7FC8(v13, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_80_0(*(v10 + 40), *(*(v10 + 40) + 24));
  OUTLINED_FUNCTION_109_0();
  sub_1C754F1AC();
  v17 = OUTLINED_FUNCTION_49_3();
  v18(v17);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_1C707C264(const void *a1, uint64_t a2)
{
  v3[75] = v2;
  v3[74] = a2;
  v5 = sub_1C754F38C();
  v3[76] = v5;
  v3[77] = *(v5 - 8);
  v3[78] = swift_task_alloc();
  memcpy(v3 + 2, a1, 0xC0uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C707C33C, v2, 0);
}

uint64_t sub_1C707C33C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_9(*(v0 + 592));
  OUTLINED_FUNCTION_132("SafetyController.validateAppleMusicSong", 39);
  if (qword_1EDD0AF88 != -1)
  {
    OUTLINED_FUNCTION_55_5(&qword_1EDD0AF88);
  }

  v1 = type metadata accessor for TextSanitizer(0);
  *(v0 + 632) = v1;
  __swift_project_value_buffer(v1, &unk_1EDD28BF8);
  v2 = *(v0 + 32);
  *(v0 + 640) = *(v0 + 24);
  *(v0 + 648) = v2;
  *(v0 + 704) = 3;
  v3 = swift_task_alloc();
  *(v0 + 656) = v3;
  *v3 = v0;
  v3[1] = sub_1C707C44C;
  OUTLINED_FUNCTION_28_6();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C707C44C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_9();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 664) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_287_0();
  }

  else
  {

    v7 = OUTLINED_FUNCTION_137_2();
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C707C560()
{
  OUTLINED_FUNCTION_49_0();
  if (qword_1EDD0AF80 != -1)
  {
    OUTLINED_FUNCTION_54_0(&qword_1EDD0AF80);
  }

  __swift_project_value_buffer(*(v0 + 632), &unk_1EDD28BE0);
  v1 = *(v0 + 48);
  *(v0 + 672) = *(v0 + 40);
  *(v0 + 680) = v1;
  *(v0 + 705) = 3;
  v2 = swift_task_alloc();
  *(v0 + 688) = v2;
  *v2 = v0;
  v2[1] = sub_1C707C648;
  OUTLINED_FUNCTION_28_6();

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C707C648()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_42_9();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 696) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_287_0();
  }

  else
  {

    v7 = OUTLINED_FUNCTION_137_2();
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, 0);
}

uint64_t sub_1C707C770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  v14 = *(v12 + 664);
  v15 = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_logger;
  sub_1C7080654(v12 + 16, v12 + 208);
  v16 = v14;
  v17 = sub_1C754FEEC();
  sub_1C755117C();
  sub_1C70806B0(v12 + 16);

  v18 = OUTLINED_FUNCTION_262_0();
  v19 = *(v12 + 664);
  if (v18)
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_160_1();
    a10 = OUTLINED_FUNCTION_15_5();
    *(v15 + 4) = OUTLINED_FUNCTION_178(4.8151e-34, a10, v20);
    OUTLINED_FUNCTION_162_1();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_234_0(v21);
    OUTLINED_FUNCTION_91_3(&dword_1C6F5C000, v22, v23, "[Warning-Music] Song id=%s rejected: %@");
    sub_1C6FD7FC8(v13, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_79();
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  OUTLINED_FUNCTION_0_22(*(v12 + 592), *(*(v12 + 592) + 24));
  OUTLINED_FUNCTION_95_1();
  sub_1C754F1AC();
  v24 = OUTLINED_FUNCTION_57_0();
  v25(v24);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_20_3();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1C707C8FC()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_0_22(*(v0 + 592), *(*(v0 + 592) + 24));
  OUTLINED_FUNCTION_95_1();
  sub_1C754F1AC();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_142();

  return v5(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C707C9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  v14 = *(v12 + 696);
  v15 = OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_logger;
  sub_1C7080654(v12 + 16, v12 + 400);
  v16 = v14;
  v17 = sub_1C754FEEC();
  sub_1C755117C();
  sub_1C70806B0(v12 + 16);

  v18 = OUTLINED_FUNCTION_262_0();
  v19 = *(v12 + 696);
  if (v18)
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_160_1();
    a10 = OUTLINED_FUNCTION_15_5();
    *(v15 + 4) = OUTLINED_FUNCTION_178(4.8151e-34, a10, v20);
    OUTLINED_FUNCTION_162_1();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_234_0(v21);
    OUTLINED_FUNCTION_91_3(&dword_1C6F5C000, v22, v23, "[Warning-Music] Song title %s found unsafe: %@");
    sub_1C6FD7FC8(v13, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_79();
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  OUTLINED_FUNCTION_0_22(*(v12 + 592), *(*(v12 + 592) + 24));
  OUTLINED_FUNCTION_95_1();
  sub_1C754F1AC();
  v24 = OUTLINED_FUNCTION_57_0();
  v25(v24);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_20_3();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

uint64_t sub_1C707CB38(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_1C754F38C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C707CBFC, v2, 0);
}

uint64_t sub_1C707CBFC()
{
  OUTLINED_FUNCTION_75_1();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = OUTLINED_FUNCTION_49_3();
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_1C754F1CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216818, &qword_1C7565560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216820, &qword_1C758FDF0);
  OUTLINED_FUNCTION_6_23();
  sub_1C707E638(v6, v7);
  v8 = swift_task_alloc();
  v0[9] = v8;
  v8[2] = v3;
  v8[3] = v2;
  v8[4] = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[10] = v9;
  *v9 = v10;
  v9[1] = sub_1C707CD74;
  OUTLINED_FUNCTION_139_2();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1C707CD74()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_210();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C707CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_38_6(*(v10 + 32));
  v11 = OUTLINED_FUNCTION_39_1();
  v12(v11);

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_88_0();

  return v15(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1C707CF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[171] = a5;
  v5[170] = a4;
  v5[169] = a3;
  v5[168] = a2;
  v5[167] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  v5[172] = swift_task_alloc();
  v5[173] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216830, &qword_1C7565578);
  v5[174] = v7;
  v5[175] = *(v7 - 8);
  v5[176] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C707D038, a5, 0);
}

uint64_t sub_1C707D038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v26 = *(v25 + 1352);
  v27 = *(v26 + 16);
  v28 = (v26 + 32);
  sub_1C75504FC();
  for (i = 1; i - v27 != 1; ++i)
  {
    v30 = *(v25 + 1376);
    v31 = *(v25 + 1368);
    memcpy((v25 + 808), v28, 0xC0uLL);
    v59 = v28;
    memcpy((v25 + 616), v28, 0xC0uLL);
    v32 = OUTLINED_FUNCTION_43_2();
    __swift_project_boxed_opaque_existential_1(v32, v33);
    sub_1C7080654(v25 + 808, v25 + 1000);
    sub_1C755180C();

    *(v25 + 1328) = i;
    v34 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v34);

    sub_1C754F17C();

    v35 = sub_1C7550D5C();
    OUTLINED_FUNCTION_84();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
    sub_1C6FB5E28(v25 + 1192, v25 + 1232);
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    memcpy(v39 + 4, (v25 + 616), 0xC0uLL);
    v39[28] = v31;
    sub_1C6FD80E4((v25 + 1232), (v39 + 29));
    sub_1C6FD7F70();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v35);

    if (EnumTagSinglePayload == 1)
    {
      sub_1C6FD7FC8(*(v25 + 1376), &qword_1EC2158F8, &qword_1C755FF40);
    }

    else
    {
      sub_1C7550D4C();
      v41 = OUTLINED_FUNCTION_43_2();
      v42(v41);
    }

    if (v39[2])
    {
      swift_getObjectType();
      OUTLINED_FUNCTION_300_0();
      swift_unknownObjectRetain();
      v43 = sub_1C7550C8C();
      v45 = v44;
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v46 = **(v25 + 1344);
    OUTLINED_FUNCTION_30();
    v47 = swift_allocObject();
    *(v47 + 16) = &unk_1C7565588;
    *(v47 + 24) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216818, &qword_1C7565560);
    v48 = v45 | v43;
    if (v45 | v43)
    {
      v48 = v25 + 1272;
      *(v25 + 1272) = 0;
      *(v25 + 1280) = 0;
      *(v25 + 1288) = v43;
      *(v25 + 1296) = v45;
    }

    v49 = *(v25 + 1384);
    *(v25 + 1304) = 1;
    *(v25 + 1312) = v48;
    *(v25 + 1320) = v46;
    swift_task_create();

    sub_1C6FD7FC8(v49, &qword_1EC2158F8, &qword_1C755FF40);
    __swift_destroy_boxed_opaque_existential_1((v25 + 1192));
    v28 = v59 + 192;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216818, &qword_1C7565560);
  sub_1C7550CCC();
  OUTLINED_FUNCTION_6_23();
  v52 = sub_1C707E638(v50, v51);
  v53 = MEMORY[0x1E69E7CC0];
  *(v25 + 1416) = v52;
  *(v25 + 1432) = v53;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v25 + 1424) = v54;
  *v54 = v55;
  OUTLINED_FUNCTION_75_4(v54);
  OUTLINED_FUNCTION_94_1();

  return MEMORY[0x1EEE6D8A8](v56);
}

uint64_t sub_1C707D46C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_29_9();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C707D564()
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  memcpy((v0 + 216), (v0 + 416), 0xC1uLL);
  memcpy((v0 + 16), (v0 + 216), 0xC1uLL);
  if (sub_1C70808D8(v0 + 16) == 1)
  {
    v1 = *(v0 + 1432);
    v2 = *(v0 + 1336);
    (*(*(v0 + 1400) + 8))(*(v0 + 1408), *(v0 + 1392));
    *v2 = v1;

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_244_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    if (*(v0 + 208) == 1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *(v0 + 1432);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_92();
        sub_1C6FB2CFC();
        v13 = v20;
      }

      v14 = *(v13 + 16);
      v15 = v14 + 1;
      if (v14 >= *(v13 + 24) >> 1)
      {
        sub_1C6FB2CFC();
        v15 = v14 + 1;
        v13 = v21;
      }

      *(v13 + 16) = v15;
      memcpy((v13 + 192 * v14 + 32), (v0 + 16), 0xC0uLL);
      *(v0 + 1432) = v13;
    }

    else
    {
      sub_1C6FD7FC8(v0 + 216, &qword_1EC216838, &qword_1C7565598);
    }

    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 1424) = v16;
    *v16 = v17;
    OUTLINED_FUNCTION_75_4(v16);
    OUTLINED_FUNCTION_244_0();

    return MEMORY[0x1EEE6D8A8](v18);
  }
}

uint64_t sub_1C707D730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[52] = a5;
  v6[53] = a6;
  v6[50] = a1;
  v6[51] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C707D754, 0, 0);
}

uint64_t sub_1C707D754()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 408);
  memcpy(*(v0 + 400), v1, 0xC0uLL);
  memcpy((v0 + 16), v1, 0xC0uLL);
  sub_1C7080654(v1, v0 + 208);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 432) = v2;
  *v2 = v3;
  v2[1] = sub_1C707D810;
  v4 = *(v0 + 424);

  return sub_1C707C264((v0 + 16), v4);
}

uint64_t sub_1C707D810()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 440) = v3;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C707D8FC()
{
  *(*(v0 + 400) + 192) = *(v0 + 440);
  OUTLINED_FUNCTION_43();
  return v1();
}

uint64_t sub_1C707D928(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == *a1 && v4 == a1[1])
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1C7551DBC() ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1C707D994(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v3 == *(a1 + 8) && v4 == *(a1 + 16))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1C7551DBC() ^ 1;
  }

  return v6 & 1;
}

BOOL sub_1C707D9DC(_BOOL8 result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    if (a3)
    {
      v6 = MEMORY[0x1CCA5DB90](a4, a5, result, a2);
      return (v6 & 1) == 0;
    }
  }

  else if ((a3 & 1) == 0)
  {
    if (a5 == a2)
    {
      v6 = a4 < result;
      return (v6 & 1) == 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C707DA44()
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_72_4();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2167E8, &unk_1C7581230), OUTLINED_FUNCTION_63(), v6 = sub_1C75517AC(), (v7 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_225_0();
    while (v4 < *(v0 + 16))
    {
      OUTLINED_FUNCTION_215();
      sub_1C75504FC();
      OUTLINED_FUNCTION_231();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_5();
      while (1)
      {
        OUTLINED_FUNCTION_240_1();
        if (v13)
        {
          break;
        }

        OUTLINED_FUNCTION_295_0();
        v12 = v11[1];
        v13 = *v11 == v3 && v12 == v2;
        if (v13 || (OUTLINED_FUNCTION_253_0(*v11, v12) & 1) != 0)
        {

          goto LABEL_15;
        }
      }

      *(v5 + 8 * v8) = v10 | v9;
      OUTLINED_FUNCTION_295_0();
      *v14 = v3;
      v14[1] = v2;
      OUTLINED_FUNCTION_99_4();
      if (v16)
      {
        goto LABEL_18;
      }

      *(v6 + 16) = v15;
LABEL_15:
      if (v4 == v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:

    OUTLINED_FUNCTION_224_0();
  }
}

void sub_1C707DB58(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216890, &qword_1C75812B0), OUTLINED_FUNCTION_63(), v2 = sub_1C75517AC(), (v22 = *(v1 + 16)) != 0))
  {
    v3 = 0;
    v20 = v1;
    v21 = v1 + 32;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v21 + v3);
      sub_1C7551F3C();
      if (v4)
      {
        v5 = 0xD000000000000015;
      }

      else
      {
        v5 = 0x696A6F6D65;
      }

      if (v4)
      {
        v6 = 0x80000001C75964E0;
      }

      else
      {
        v6 = 0xE500000000000000;
      }

      OUTLINED_FUNCTION_231();
      sub_1C75505AC();

      v7 = sub_1C7551FAC() & ~(-1 << *(v2 + 32));
      OUTLINED_FUNCTION_289_0();
      if ((v10 & v9) != 0)
      {
        v19 = v4;
        v12 = ~v11;
        while (1)
        {
          v13 = *(*(v2 + 48) + v7) ? 0xD000000000000015 : 0x696A6F6D65;
          v14 = *(*(v2 + 48) + v7) ? 0x80000001C75964E0 : 0xE500000000000000;
          if (v13 == v5 && v14 == v6)
          {
            break;
          }

          v16 = OUTLINED_FUNCTION_253_0(v13, v14);

          if (v16)
          {
            goto LABEL_29;
          }

          v7 = (v7 + 1) & v12;
          OUTLINED_FUNCTION_289_0();
          if ((v9 & v10) == 0)
          {
            LOBYTE(v4) = v19;
            goto LABEL_26;
          }
        }
      }

      else
      {
LABEL_26:
        *(v2 + 56 + 8 * v8) = v9 | v10;
        *(*(v2 + 48) + v7) = v4;
        OUTLINED_FUNCTION_99_4();
        if (v18)
        {
          goto LABEL_32;
        }

        *(v2 + 16) = v17;
      }

LABEL_29:
      ++v3;
      v1 = v20;
      if (v3 == v22)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_30:
  }
}

uint64_t sub_1C707DD50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216748, &qword_1C7565458);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C707DDC0()
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_72_4();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216888, &qword_1C7565668), OUTLINED_FUNCTION_63(), v5 = sub_1C75517AC(), (v6 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_226();
    while (1)
    {
      OUTLINED_FUNCTION_277_0();
      if (v7)
      {
        break;
      }

      v8 = *(v4 + 8 * v2++);
      sub_1C7551F3C();
      MEMORY[0x1CCA5E460](v8);
      sub_1C7551FAC();
      while (1)
      {
        OUTLINED_FUNCTION_238_0();
        if (v13)
        {
          break;
        }

        if (*(*(v5 + 48) + 8 * v9) == v8)
        {
          goto LABEL_11;
        }
      }

      *(v3 + 8 * v10) = v12 | v11;
      *(*(v5 + 48) + 8 * v9) = v8;
      OUTLINED_FUNCTION_99_4();
      if (v15)
      {
        goto LABEL_14;
      }

      *(v5 + 16) = v14;
LABEL_11:
      if (v2 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_224_0();
  }
}

void sub_1C707DEC4()
{
  OUTLINED_FUNCTION_72_4();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216880, &qword_1C7565658), OUTLINED_FUNCTION_63(), v2 = sub_1C75517AC(), v3 = v2, (v41 = *(v0 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v39 = v0;
    v40 = v0 + 32;
    while (v4 < *(v0 + 16))
    {
      v6 = *(v40 + v4++);
      sub_1C7551F3C();
      switch(v6)
      {
        case 4:
        case 19:
          OUTLINED_FUNCTION_188();
          break;
        case 5:
        case 14:
          OUTLINED_FUNCTION_437();
          break;
        case 8:
          OUTLINED_FUNCTION_274();
          break;
        case 13:
          OUTLINED_FUNCTION_207();
          break;
        default:
          break;
      }

      sub_1C75505AC();

      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_5();
      v9 = ~v8;
      v11 = v10 & ~v8;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) != 0)
      {
        while (1)
        {
          v15 = 0xE400000000000000;
          v16 = 1701736302;
          switch(*(*(v3 + 48) + v11))
          {
            case 1:
              v15 = 0xE600000000000000;
              v17 = 1936876912;
              goto LABEL_29;
            case 2:
              v16 = 0x67416E6F73726570;
              v20 = 0x6570795465;
              goto LABEL_20;
            case 3:
              v16 = 1702125924;
              break;
            case 4:
              OUTLINED_FUNCTION_188();
              v15 = v21 + 20;
              v16 = 0x6144664F74726170;
              break;
            case 5:
              OUTLINED_FUNCTION_437();
              v15 = v22 + 1529;
              v16 = 0x6557664F74726170;
              break;
            case 6:
              v15 = 0xE600000000000000;
              v17 = 1935762803;
LABEL_29:
              v16 = v17 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
              break;
            case 7:
              v15 = 0xE800000000000000;
              v18 = 1633906540;
              goto LABEL_24;
            case 8:
              OUTLINED_FUNCTION_274();
              break;
            case 9:
              v16 = 1952540791;
              break;
            case 0xA:
              v16 = 0x764563696C627570;
              v15 = 0xEB00000000746E65;
              break;
            case 0xB:
              v16 = 0x6C616E6F73726570;
              v20 = 0x746E657645;
LABEL_20:
              v15 = v20 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 0xC:
              v16 = 0x746954636973756DLL;
              v15 = 0xEA0000000000656CLL;
              break;
            case 0xD:
              OUTLINED_FUNCTION_207();
              v15 = v23 + 1284;
              v16 = 0x747241636973756DLL;
              break;
            case 0xE:
              OUTLINED_FUNCTION_437();
              v15 = v19 + 6;
              v16 = 0x6E6547636973756DLL;
              break;
            case 0xF:
              v16 = 1685024621;
              break;
            case 0x10:
              v15 = 0xE800000000000000;
              v18 = 1634891108;
LABEL_24:
              v16 = v18 | 0x6E6F697400000000;
              break;
            case 0x11:
              v15 = 0xE600000000000000;
              v16 = 0x706972547369;
              break;
            case 0x12:
              v16 = 0x6D69546C6C417369;
              v15 = 0xE900000000000065;
              break;
            case 0x13:
              OUTLINED_FUNCTION_188();
              v15 = v24 + 13;
              v16 = 0x6564724F74726F73;
              break;
            default:
              break;
          }

          v25 = 0xE400000000000000;
          v26 = 1701736302;
          switch(v6)
          {
            case 1:
              v25 = 0xE600000000000000;
              v27 = 1936876912;
              goto LABEL_52;
            case 2:
              v26 = 0x67416E6F73726570;
              v30 = 0x6570795465;
              goto LABEL_43;
            case 3:
              v26 = 1702125924;
              break;
            case 4:
              OUTLINED_FUNCTION_188();
              v25 = v31 + 20;
              v26 = 0x6144664F74726170;
              break;
            case 5:
              OUTLINED_FUNCTION_437();
              v25 = v32 + 1529;
              v26 = 0x6557664F74726170;
              break;
            case 6:
              v25 = 0xE600000000000000;
              v27 = 1935762803;
LABEL_52:
              v26 = v27 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
              break;
            case 7:
              v25 = 0xE800000000000000;
              v28 = 1633906540;
              goto LABEL_47;
            case 8:
              v26 = 0x4C636972656E6567;
              v25 = 0xEF6E6F697461636FLL;
              break;
            case 9:
              v26 = 1952540791;
              break;
            case 10:
              v26 = 0x764563696C627570;
              v25 = 0xEB00000000746E65;
              break;
            case 11:
              v26 = 0x6C616E6F73726570;
              v30 = 0x746E657645;
LABEL_43:
              v25 = v30 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              break;
            case 12:
              v26 = 0x746954636973756DLL;
              v25 = 0xEA0000000000656CLL;
              break;
            case 13:
              OUTLINED_FUNCTION_207();
              v25 = v33 + 1284;
              v26 = 0x747241636973756DLL;
              break;
            case 14:
              OUTLINED_FUNCTION_437();
              v25 = v29 + 6;
              v26 = 0x6E6547636973756DLL;
              break;
            case 15:
              v26 = 1685024621;
              break;
            case 16:
              v25 = 0xE800000000000000;
              v28 = 1634891108;
LABEL_47:
              v26 = v28 | 0x6E6F697400000000;
              break;
            case 17:
              v25 = 0xE600000000000000;
              v26 = 0x706972547369;
              break;
            case 18:
              v26 = 0x6D69546C6C417369;
              v25 = 0xE900000000000065;
              break;
            case 19:
              OUTLINED_FUNCTION_188();
              v25 = v34 + 13;
              v26 = 0x6564724F74726F73;
              break;
            default:
              break;
          }

          if (v16 == v26 && v15 == v25)
          {
            break;
          }

          v36 = OUTLINED_FUNCTION_249_0(v16, v7, v26);

          if (v36)
          {
            goto LABEL_66;
          }

          v11 = (v11 + 1) & v9;
          v12 = v11 >> 6;
          v13 = *(v5 + 8 * (v11 >> 6));
          v14 = 1 << v11;
          if ((v13 & (1 << v11)) == 0)
          {
            goto LABEL_63;
          }
        }
      }

      else
      {
LABEL_63:
        *(v5 + 8 * v12) = v13 | v14;
        *(*(v3 + 48) + v11) = v6;
        OUTLINED_FUNCTION_99_4();
        if (v38)
        {
          goto LABEL_69;
        }

        *(v3 + 16) = v37;
      }

LABEL_66:
      v0 = v39;
      if (v4 == v41)
      {
        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_69:
    __break(1u);
  }

  else
  {
LABEL_67:
  }
}

uint64_t sub_1C707E638(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    v4 = OUTLINED_FUNCTION_63();
    result = swift_getWitnessTable(v4);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1C707E67C()
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_72_4();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2167B0, &qword_1C7565530), OUTLINED_FUNCTION_63(), v6 = sub_1C75517AC(), (v7 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_225_0();
    while (v4 < *(v0 + 16))
    {
      OUTLINED_FUNCTION_215();
      OUTLINED_FUNCTION_231();
      sub_1C75505AC();
      sub_1C7551FAC();
      OUTLINED_FUNCTION_38_5();
      while (1)
      {
        OUTLINED_FUNCTION_240_1();
        if (v13)
        {
          break;
        }

        OUTLINED_FUNCTION_295_0();
        v12 = v11[1];
        v13 = *v11 == v3 && v12 == v2;
        if (v13 || (OUTLINED_FUNCTION_253_0(*v11, v12) & 1) != 0)
        {
          goto LABEL_15;
        }
      }

      *(v5 + 8 * v8) = v10 | v9;
      OUTLINED_FUNCTION_295_0();
      *v14 = v3;
      v14[1] = v2;
      OUTLINED_FUNCTION_99_4();
      if (v16)
      {
        goto LABEL_18;
      }

      *(v6 + 16) = v15;
      sub_1C75504FC();
LABEL_15:
      if (v4 == v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:

    OUTLINED_FUNCTION_224_0();
  }
}

void sub_1C707E784()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1C754E22C();
  OUTLINED_FUNCTION_3_0();
  v36 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v31 - v7;
  if (*(v2 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2167D0, &qword_1C7565548), OUTLINED_FUNCTION_63(), v8 = sub_1C75517AC(), v9 = v8, (v35 = *(v2 + 16)) != 0))
  {
    v10 = 0;
    v39 = v8 + 56;
    v11 = *(v36 + 80);
    v33 = v2;
    v34 = v2 + ((v11 + 32) & ~v11);
    v38 = v36 + 16;
    v12 = (v36 + 8);
    v32 = (v36 + 32);
    while (v10 < *(v2 + 16))
    {
      v13 = *(v36 + 72);
      v37 = v10 + 1;
      v14 = *(v36 + 16);
      v14(v40, v34 + v13 * v10, v3);
      OUTLINED_FUNCTION_102_5();
      sub_1C707E638(&qword_1EC2167D8, v15);
      OUTLINED_FUNCTION_81_6();
      v16 = sub_1C755058C();
      v17 = ~(-1 << *(v9 + 32));
      while (1)
      {
        v18 = v16 & v17;
        OUTLINED_FUNCTION_85_3();
        if ((v21 & v20) == 0)
        {
          break;
        }

        v22 = v9;
        v14(v0, *(v9 + 48) + v18 * v13, v3);
        OUTLINED_FUNCTION_102_5();
        sub_1C707E638(&qword_1EC2167E0, v23);
        v24 = sub_1C755063C();
        v25 = *v12;
        v26 = OUTLINED_FUNCTION_154();
        v25(v26);
        if (v24)
        {
          (v25)(v40, v3);
          v9 = v22;
          goto LABEL_12;
        }

        v16 = v18 + 1;
        v9 = v22;
      }

      v27 = v40;
      *(v39 + 8 * v19) = v21 | v20;
      (*v32)(*(v9 + 48) + v18 * v13, v27, v3);
      v28 = *(v9 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_15;
      }

      *(v9 + 16) = v30;
LABEL_12:
      v10 = v37;
      v2 = v33;
      if (v37 == v35)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
LABEL_13:

    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C707EA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_307();
  if (sub_1C6FB6304())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216808, &qword_1C7565558);
    OUTLINED_FUNCTION_63();
    v9 = v11;
    v12 = sub_1C75517AC();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  v21 = sub_1C6FB6304();
  if (v21)
  {
    OUTLINED_FUNCTION_46_7();
    while (1)
    {
      OUTLINED_FUNCTION_90_6();
      sub_1C6FB6330();
      if (v9)
      {
        v13 = OUTLINED_FUNCTION_103();
        v14 = MEMORY[0x1CCA5DDD0](v13);
      }

      else
      {
        v14 = *(a9 + 8 * v10);
      }

      v15 = v14;
      v16 = __OFADD__(v10++, 1);
      if (v16)
      {
        break;
      }

      v9 = v14;
      sub_1C75513DC();
      OUTLINED_FUNCTION_38_5();
      while (1)
      {
        OUTLINED_FUNCTION_84_4();
        if (v18)
        {
          break;
        }

        sub_1C6F65BE8(0, &qword_1EDD0CE08, 0x1E6978A38);
        v19 = OUTLINED_FUNCTION_250_0();
        v9 = sub_1C75513EC();

        if (v9)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_53_9(v17);
      if (v16)
      {
        goto LABEL_20;
      }

      *(v12 + 16) = v20;
LABEL_17:
      if (v10 == v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    OUTLINED_FUNCTION_110_0();
  }
}

void sub_1C707EBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_303_0();
  OUTLINED_FUNCTION_72_4();
  if (!v42)
  {
    goto LABEL_47;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216758, &qword_1C75654D8);
  OUTLINED_FUNCTION_63();
  sub_1C75517AC();
  OUTLINED_FUNCTION_204_1();
  if (!v46)
  {
    goto LABEL_47;
  }

  v47 = 0;
  v48 = 0xEE0064696C61766ELL;
  v49 = 0x4973497465737361;
  OUTLINED_FUNCTION_301_0();
  OUTLINED_FUNCTION_242();
  while (1)
  {
    OUTLINED_FUNCTION_277_0();
    if (v50)
    {
      __break(1u);
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_159_1();
    switch(v44)
    {
      case 1:
      case 5:
        OUTLINED_FUNCTION_524();
        break;
      case 3:
        OUTLINED_FUNCTION_197_0();
        break;
      default:
        break;
    }

    sub_1C75504FC();
    sub_1C75505AC();

    v74 = v47;
    sub_1C7551F5C();
    if (v45)
    {
      sub_1C75505AC();
    }

    sub_1C7551FAC();
    OUTLINED_FUNCTION_38_5();
    v75 = ~v51;
    v53 = v52 & ~v51;
    OUTLINED_FUNCTION_85_3();
    if ((v56 & v55) == 0)
    {
      break;
    }

    while (1)
    {
      OUTLINED_FUNCTION_140_3();
      v58 = *(v57 + 16);
      v76 = *(v57 + 8);
      v59 = v48;
      v60 = v45;
      v61 = v49;
      switch(*v57)
      {
        case 1:
          OUTLINED_FUNCTION_524();
          v61 = v62 + 5;
          v59 = a14;
          break;
        case 2:
          v61 = 0x726F6353706F7263;
          v59 = 0xEF776F4C6F6F5465;
          break;
        case 3:
          v61 = OUTLINED_FUNCTION_195_0();
          break;
        case 4:
          v61 = 0xD000000000000011;
          v59 = a15;
          break;
        case 5:
          OUTLINED_FUNCTION_524();
          v61 = v63 + 8;
          v59 = a16;
          break;
        default:
          break;
      }

      v45 = v43;
      v64 = v49;
      v43 = v48;
      switch(v44)
      {
        case 1:
          OUTLINED_FUNCTION_524();
          v64 = v65 + 5;
          v48 = a14;
          break;
        case 2:
          OUTLINED_FUNCTION_293_0();
          break;
        case 3:
          OUTLINED_FUNCTION_194_0();
          break;
        case 4:
          v64 = 0xD000000000000011;
          v48 = a15;
          break;
        case 5:
          OUTLINED_FUNCTION_524();
          v64 = v66 + 8;
          v48 = a16;
          break;
        default:
          break;
      }

      if (v61 == v64 && v59 == v48)
      {
        sub_1C75504FC();
      }

      else
      {
        v49 = sub_1C7551DBC();
        sub_1C75504FC();

        if ((v49 & 1) == 0)
        {

          v48 = v43;
          OUTLINED_FUNCTION_57_6();
          goto LABEL_41;
        }
      }

      v48 = v43;
      if (v58)
      {
        break;
      }

      OUTLINED_FUNCTION_57_6();
      if (!v60)
      {
        goto LABEL_45;
      }

LABEL_41:
      v53 = (v53 + 1) & v75;
      OUTLINED_FUNCTION_85_3();
      if ((v55 & v56) == 0)
      {
        goto LABEL_42;
      }
    }

    OUTLINED_FUNCTION_57_6();
    if (!v60)
    {

      goto LABEL_41;
    }

    if (v76 != a17 || v58 != v45)
    {
      v70 = OUTLINED_FUNCTION_249_0(v76, v68, a17);

      if (v70)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

LABEL_45:

LABEL_46:
    v47 = v74;
    if (v74 == a12)
    {
LABEL_47:

      OUTLINED_FUNCTION_302_0();
      return;
    }
  }

LABEL_42:
  *(a19 + 8 * v54) = v55 | v56;
  OUTLINED_FUNCTION_140_3();
  *v71 = v44;
  *(v71 + 8) = a17;
  *(v71 + 16) = v45;
  OUTLINED_FUNCTION_99_4();
  if (!v73)
  {
    *(v43 + 16) = v72;
    goto LABEL_46;
  }

LABEL_49:
  __break(1u);
}

void sub_1C707EFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_303_0();
  OUTLINED_FUNCTION_72_4();
  if (!v42)
  {
    goto LABEL_47;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216760, &qword_1C75654E0);
  OUTLINED_FUNCTION_63();
  sub_1C75517AC();
  OUTLINED_FUNCTION_204_1();
  if (!v47)
  {
    goto LABEL_47;
  }

  v48 = 0;
  OUTLINED_FUNCTION_293_0();
  v49 = 0x726F6353706F7263;
  OUTLINED_FUNCTION_301_0();
  OUTLINED_FUNCTION_242();
  while (1)
  {
    OUTLINED_FUNCTION_277_0();
    if (v50)
    {
      __break(1u);
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_159_1();
    switch(v44)
    {
      case 2:
      case 4:
      case 5:
        break;
      case 3:
        OUTLINED_FUNCTION_197_0();
        break;
      default:
        OUTLINED_FUNCTION_524();
        break;
    }

    sub_1C75504FC();
    sub_1C75505AC();

    v74 = v48;
    sub_1C7551F5C();
    if (v45)
    {
      sub_1C75505AC();
    }

    sub_1C7551FAC();
    OUTLINED_FUNCTION_38_5();
    v75 = ~v51;
    v53 = v52 & ~v51;
    OUTLINED_FUNCTION_85_3();
    if ((v56 & v55) == 0)
    {
      break;
    }

    while (1)
    {
      OUTLINED_FUNCTION_140_3();
      v58 = *(v57 + 16);
      v76 = *(v57 + 8);
      v59 = v46;
      v60 = v45;
      v61 = v49;
      switch(*v57)
      {
        case 1:
          OUTLINED_FUNCTION_524();
          v61 = v63 + 5;
          v59 = a15;
          break;
        case 2:
          break;
        case 3:
          v61 = OUTLINED_FUNCTION_195_0();
          break;
        case 4:
          v61 = 0xD000000000000011;
          v59 = a16;
          break;
        case 5:
          v61 = 0x736E6961746E6F63;
          v59 = 0xEC00000074786554;
          break;
        default:
          OUTLINED_FUNCTION_524();
          v61 = v62 + 25;
          v59 = a14;
          break;
      }

      v45 = v43;
      v64 = v49;
      v43 = v46;
      switch(v44)
      {
        case 1:
          OUTLINED_FUNCTION_524();
          v64 = v66 + 5;
          v46 = a15;
          break;
        case 2:
          break;
        case 3:
          OUTLINED_FUNCTION_194_0();
          break;
        case 4:
          v64 = 0xD000000000000011;
          v46 = a16;
          break;
        case 5:
          v64 = 0x736E6961746E6F63;
          v46 = 0xEC00000074786554;
          break;
        default:
          OUTLINED_FUNCTION_524();
          v64 = v65 + 25;
          v46 = a14;
          break;
      }

      if (v61 == v64 && v59 == v46)
      {
        sub_1C75504FC();
      }

      else
      {
        v49 = sub_1C7551DBC();
        sub_1C75504FC();

        if ((v49 & 1) == 0)
        {

          v46 = v43;
          OUTLINED_FUNCTION_57_6();
          goto LABEL_41;
        }
      }

      v46 = v43;
      if (v58)
      {
        break;
      }

      OUTLINED_FUNCTION_57_6();
      if (!v60)
      {
        goto LABEL_45;
      }

LABEL_41:
      v53 = (v53 + 1) & v75;
      OUTLINED_FUNCTION_85_3();
      if ((v55 & v56) == 0)
      {
        goto LABEL_42;
      }
    }

    OUTLINED_FUNCTION_57_6();
    if (!v60)
    {

      goto LABEL_41;
    }

    if (v76 != a17 || v58 != v45)
    {
      v70 = OUTLINED_FUNCTION_249_0(v76, v68, a17);

      if (v70)
      {
        goto LABEL_45;
      }

      goto LABEL_41;
    }

LABEL_45:

LABEL_46:
    v48 = v74;
    if (v74 == a12)
    {
LABEL_47:

      OUTLINED_FUNCTION_302_0();
      return;
    }
  }

LABEL_42:
  *(a19 + 8 * v54) = v55 | v56;
  OUTLINED_FUNCTION_140_3();
  *v71 = v44;
  *(v71 + 8) = a17;
  *(v71 + 16) = v45;
  OUTLINED_FUNCTION_99_4();
  if (!v73)
  {
    *(v43 + 16) = v72;
    goto LABEL_46;
  }

LABEL_49:
  __break(1u);
}

void sub_1C707F400()
{
  OUTLINED_FUNCTION_223();
  OUTLINED_FUNCTION_72_4();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(v5, v6), OUTLINED_FUNCTION_63(), v7 = sub_1C75517AC(), (v8 = *(v0 + 16)) != 0))
  {
    OUTLINED_FUNCTION_226();
    while (1)
    {
      OUTLINED_FUNCTION_277_0();
      if (v9)
      {
        break;
      }

      v10 = *(v4 + v2++);
      sub_1C7551F3C();
      MEMORY[0x1CCA5E460](v10);
      sub_1C7551FAC();
      while (1)
      {
        OUTLINED_FUNCTION_238_0();
        if (v15)
        {
          break;
        }

        if (*(*(v7 + 48) + v11) == v10)
        {
          goto LABEL_11;
        }
      }

      *(v3 + 8 * v12) = v14 | v13;
      *(*(v7 + 48) + v11) = v10;
      OUTLINED_FUNCTION_99_4();
      if (v17)
      {
        goto LABEL_14;
      }

      *(v7 + 16) = v16;
LABEL_11:
      if (v2 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    OUTLINED_FUNCTION_224_0();
  }
}

void sub_1C707F4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_307();
  if (sub_1C6FB6304())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216790, &qword_1C7565528);
    OUTLINED_FUNCTION_63();
    v9 = v11;
    v12 = sub_1C75517AC();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  v21 = sub_1C6FB6304();
  if (v21)
  {
    OUTLINED_FUNCTION_46_7();
    while (1)
    {
      OUTLINED_FUNCTION_90_6();
      sub_1C6FB6330();
      if (v9)
      {
        v13 = OUTLINED_FUNCTION_103();
        v14 = MEMORY[0x1CCA5DDD0](v13);
      }

      else
      {
        v14 = *(a9 + 8 * v10);
      }

      v15 = v14;
      v16 = __OFADD__(v10++, 1);
      if (v16)
      {
        break;
      }

      v9 = v14;
      sub_1C75513DC();
      OUTLINED_FUNCTION_38_5();
      while (1)
      {
        OUTLINED_FUNCTION_84_4();
        if (v18)
        {
          break;
        }

        sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
        v19 = OUTLINED_FUNCTION_250_0();
        v9 = sub_1C75513EC();

        if (v9)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_53_9(v17);
      if (v16)
      {
        goto LABEL_20;
      }

      *(v12 + 16) = v20;
LABEL_17:
      if (v10 == v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    OUTLINED_FUNCTION_110_0();
  }
}

void sub_1C707F668()
{
  OUTLINED_FUNCTION_72_4();
  if (v1 && (__swift_instantiateConcreteTypeFromMangledNameV2(v3, v4), OUTLINED_FUNCTION_63(), sub_1C75517AC(), OUTLINED_FUNCTION_204_1(), v5))
  {
    v6 = 0;
    v7 = v2 + 56;
    v27 = v0;
    v28 = v0 + 32;
    while (v6 < *(v0 + 16))
    {
      v8 = *(v28 + 8 * v6++);
      sub_1C755068C();
      sub_1C7551F3C();
      v30 = v8;
      OUTLINED_FUNCTION_109_0();
      sub_1C75505AC();
      v9 = sub_1C7551FAC();

      OUTLINED_FUNCTION_38_5();
      v11 = ~v10;
      while (1)
      {
        v12 = v9 & v11;
        v13 = (v9 & v11) >> 6;
        v14 = *(v7 + 8 * v13);
        v15 = 1 << (v9 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        v16 = sub_1C755068C();
        v18 = v17;
        if (v16 == sub_1C755068C() && v18 == v19)
        {

          goto LABEL_17;
        }

        v21 = OUTLINED_FUNCTION_282();
        v24 = OUTLINED_FUNCTION_13_6(v21, v22, v23);

        if (v24)
        {

          goto LABEL_17;
        }

        v9 = v12 + 1;
      }

      *(v7 + 8 * v13) = v15 | v14;
      *(*(v2 + 48) + 8 * v12) = v30;
      OUTLINED_FUNCTION_99_4();
      if (v26)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v25;
LABEL_17:
      v0 = v27;
      if (v6 == v29)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:
  }
}

void sub_1C707F838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_307();
  if (sub_1C6FB6304())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216768, &qword_1C756BCB0);
    OUTLINED_FUNCTION_63();
    v9 = v11;
    v12 = sub_1C75517AC();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  v21 = sub_1C6FB6304();
  if (v21)
  {
    OUTLINED_FUNCTION_46_7();
    while (1)
    {
      OUTLINED_FUNCTION_90_6();
      sub_1C6FB6330();
      if (v9)
      {
        v13 = OUTLINED_FUNCTION_103();
        v14 = MEMORY[0x1CCA5DDD0](v13);
      }

      else
      {
        v14 = *(a9 + 8 * v10);
      }

      v15 = v14;
      v16 = __OFADD__(v10++, 1);
      if (v16)
      {
        break;
      }

      v9 = v14;
      sub_1C75513DC();
      OUTLINED_FUNCTION_38_5();
      while (1)
      {
        OUTLINED_FUNCTION_84_4();
        if (v18)
        {
          break;
        }

        sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
        v19 = OUTLINED_FUNCTION_250_0();
        v9 = sub_1C75513EC();

        if (v9)
        {

          goto LABEL_17;
        }
      }

      OUTLINED_FUNCTION_53_9(v17);
      if (v16)
      {
        goto LABEL_20;
      }

      *(v12 + 16) = v20;
LABEL_17:
      if (v10 == v21)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    OUTLINED_FUNCTION_110_0();
  }
}

uint64_t sub_1C707F97C(uint64_t result, int a2, char a3, uint64_t a4, int a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_29;
  }

  v7 = result;
  if (a4 < result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a5 != a2)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (result != a4)
  {
    if (*(a7 + 36) != a5)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v8 = 1 << *(a7 + 32);
    result = 1;
    while ((v7 & 0x8000000000000000) == 0 && v7 < v8)
    {
      v9 = v7 >> 6;
      v10 = *(a7 + 56 + 8 * (v7 >> 6));
      if (((v10 >> v7) & 1) == 0)
      {
        goto LABEL_25;
      }

      v11 = v10 & (-2 << (v7 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v9 << 6;
        v13 = v9 + 1;
        v14 = (a7 + 64 + 8 * v9);
        while (v13 < (v8 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_20;
          }
        }

        v7 = 1 << *(a7 + 32);
      }

LABEL_20:
      if (v7 == a4)
      {
        return result;
      }

      if (__OFADD__(result++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  return 0;
}

void sub_1C707FD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_597();
  a21 = v24;
  a22 = v25;
  OUTLINED_FUNCTION_115();
  if ((v26 & 0xC000000000000001) == 0)
  {
    v27 = *v23;
    v28 = *(v23 + 8);
    v29 = *(v23 + 16);
    v30 = sub_1C707FE18(*v23, v28, v29, v22);
    v32 = v31;
    v34 = v33;
    sub_1C6F9ED50(v27, v28, v29);
    *v23 = v30;
    *(v23 + 8) = v32;
    *(v23 + 16) = v34 & 1;
LABEL_7:
    OUTLINED_FUNCTION_596();
    return;
  }

  if (*(v23 + 16) == 1)
  {
    if (sub_1C755166C())
    {
      swift_isUniquelyReferenced_nonNull_native();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A0, &unk_1C755EA90);
    v35 = sub_1C7550FCC();
    OUTLINED_FUNCTION_148_3(v35, v36);
    sub_1C755172C();
    (v23)(&a9, 0);
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1C707FE18(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3)
  {
    goto LABEL_10;
  }

  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
  }

  else if ((*(a4 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result))
  {
    if (*(a4 + 36) == a2)
    {
      return sub_1C755162C();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1C707FEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1C7080EDC;

  return sub_1C707973C(a2, a3, a4, a5);
}

uint64_t sub_1C707FF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_1C7080010;

  return sub_1C7079EDC(a2, a3, a4, a5);
}

uint64_t sub_1C7080010()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_47();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_14();
  *v6 = v5;

  *v4 = v2;
  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C708010C@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

BOOL sub_1C7080144(uint64_t a1, int a2, char a3, uint64_t a4, int a5, char a6)
{
  if (a3)
  {
    if (a6)
    {
LABEL_9:
      JUMPOUT(0x1CCA5DBA0);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (a6)
  {
    goto LABEL_8;
  }

  if (a2 != a5)
  {
    __break(1u);
    goto LABEL_8;
  }

  return a1 == a4;
}

uint64_t sub_1C7080178(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_1C6F65BE8(255, a2, a3);
    result = swift_getWitnessTable(MEMORY[0x1E69E81B8], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C70801C8()
{
  result = qword_1EC216770;
  if (!qword_1EC216770)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215620, &qword_1C756EAF0);
    v4[0] = MEMORY[0x1E69E6168];
    result = swift_getWitnessTable(MEMORY[0x1E69E7C78], v3, v4);
    atomic_store(result, &qword_1EC216770);
  }

  return result;
}

unint64_t sub_1C7080244()
{
  result = qword_1EDD09468;
  if (!qword_1EDD09468)
  {
    result = swift_getWitnessTable(asc_1C7577F18, &type metadata for FreeformStoryAssetElector.FeatureType, v0, v1);
    atomic_store(result, &qword_1EDD09468);
  }

  return result;
}

unint64_t sub_1C7080298()
{
  result = qword_1EC216798;
  if (!qword_1EC216798)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for GroundedLocation, &type metadata for GroundedLocation, v0, v1);
    atomic_store(result, &qword_1EC216798);
  }

  return result;
}

unint64_t sub_1C708039C()
{
  result = qword_1EDD0F0C8;
  if (!qword_1EDD0F0C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion.Source, &type metadata for PromptSuggestion.Source, v0, v1);
    atomic_store(result, &qword_1EDD0F0C8);
  }

  return result;
}

unint64_t sub_1C70803F0()
{
  result = qword_1EDD0C908;
  if (!qword_1EDD0C908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryAsset.Filter, &type metadata for StoryAsset.Filter, v0, v1);
    atomic_store(result, &qword_1EDD0C908);
  }

  return result;
}

unint64_t sub_1C7080444()
{
  result = qword_1EC2167F8;
  if (!qword_1EC2167F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AssetFetcherFilters, &type metadata for AssetFetcherFilters, v0, v1);
    atomic_store(result, &qword_1EC2167F8);
  }

  return result;
}

unint64_t sub_1C7080498()
{
  result = qword_1EC216800;
  if (!qword_1EC216800)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AssetFetcherSources, &type metadata for AssetFetcherSources, v0, v1);
    atomic_store(result, &qword_1EC216800);
  }

  return result;
}

unint64_t sub_1C7080600()
{
  result = qword_1EC216810;
  if (!qword_1EC216810)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryMusicCurationSong, &type metadata for StoryMusicCurationSong, v0, v1);
    atomic_store(result, &qword_1EC216810);
  }

  return result;
}

uint64_t sub_1C7080704(uint64_t a1)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_126();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_2(v1);
  *v2 = v3;
  v2[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_55_6();
  OUTLINED_FUNCTION_244_0();

  return sub_1C707CF14(v4, v5, v6, v7, v8);
}

uint64_t sub_1C708079C(uint64_t a1)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_123();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_2(v1);
  *v2 = v3;
  v2[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_244_0();

  return sub_1C707D730(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C7080844()
{
  OUTLINED_FUNCTION_49_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_8(v1);

  return v4(v3);
}

uint64_t sub_1C70808D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C70808F0()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_126();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_55_6();
  OUTLINED_FUNCTION_142();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7080994()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v0 = OUTLINED_FUNCTION_300();
  v1 = type metadata accessor for GlobalTrait(v0);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_146_1();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_2(v2);
  *v3 = v4;
  v3[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_88_0();

  return sub_1C707AB4C(v5, v6, v7, v8, v9);
}

uint64_t sub_1C7080A80()
{
  OUTLINED_FUNCTION_49_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_8(v1);

  return v4(v3);
}

uint64_t sub_1C7080B14()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_126();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_55_6();
  OUTLINED_FUNCTION_142();

  return v8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7080BB8()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C7080C10(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_1C7080C2C()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C7080C84()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v0 = OUTLINED_FUNCTION_300();
  v1 = type metadata accessor for PersonalTrait(v0);
  OUTLINED_FUNCTION_18(v1);
  OUTLINED_FUNCTION_146_1();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_5_2(v2);
  *v3 = v4;
  v3[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_88_0();

  return sub_1C707A67C(v5, v6, v7, v8, v9);
}

uint64_t sub_1C7080D70()
{
  OUTLINED_FUNCTION_49_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_1_8(v1);

  return v4(v3);
}

uint64_t sub_1C7080E04()
{
  v1 = OUTLINED_FUNCTION_300();
  v2(v1);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1C7080E58()
{
  result = qword_1EC216878;
  if (!qword_1EC216878)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TextSanitizer.SupportedLanguage, &type metadata for TextSanitizer.SupportedLanguage, v0, v1);
    atomic_store(result, &qword_1EC216878);
  }

  return result;
}

uint64_t sub_1C7080EAC(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a3 == 3 || a3 == 7;
  if (v3 || a3 == 12)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_16()
{

  return sub_1C7080BB8();
}

uint64_t OUTLINED_FUNCTION_43_7()
{
  v3 = *(v0 + v1 + 16);
  *(v2 - 112) = *(v0 + v1);
  *(v2 - 96) = v3;
  v4 = *(v0 + v1 + 48);
  *(v2 - 80) = *(v0 + v1 + 32);
  *(v2 - 64) = v4;
  return v2 - 112;
}

uint64_t OUTLINED_FUNCTION_64_5(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v5 = a1;

  return sub_1C6F765A4(v4, v3, va);
}

uint64_t OUTLINED_FUNCTION_66_8(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_78_5()
{

  return sub_1C7550D5C();
}

void OUTLINED_FUNCTION_91_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_114_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  sub_1C7074680(a1, v21, sub_1C70F15D8, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t OUTLINED_FUNCTION_115_4()
{

  return sub_1C7080E04();
}

uint64_t OUTLINED_FUNCTION_116_4()
{

  return sub_1C7080E04();
}

uint64_t OUTLINED_FUNCTION_118_3()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_133_3(uint64_t a1, void *a2)
{
  *a2 = v2;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_138_3()
{

  return type metadata accessor for SafetyError(0);
}

uint64_t OUTLINED_FUNCTION_145_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, char a20)
{
  v23 = *(v20 + v21 + 16);
  a17 = *(v20 + v21);
  a18 = v23;
  a19 = *(v20 + v21 + 32);
  a20 = *(v20 + v21 + 48);

  return sub_1C7080548(&a17, &a9);
}

uint64_t OUTLINED_FUNCTION_159_1()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_160_1()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_161_1()
{

  sub_1C6FD1EE8();
}

id OUTLINED_FUNCTION_162_1()
{
  *(v1 + 12) = 2112;

  return v0;
}

uint64_t OUTLINED_FUNCTION_173_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __int128 a12, uint64_t a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17)
{
  a14 = a10;
  a15 = a11;
  a16 = a12;
  a17 = a13;

  return sub_1C70260EC(&a14);
}

uint64_t OUTLINED_FUNCTION_175()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_178(float a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *v3 = a1;

  return sub_1C6F765A4(v5, v4, va);
}

uint64_t OUTLINED_FUNCTION_179_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_181()
{
}

uint64_t OUTLINED_FUNCTION_192_0()
{

  return sub_1C75505AC();
}

uint64_t OUTLINED_FUNCTION_213_0(uint64_t a1)
{

  return sub_1C75505FC();
}

double OUTLINED_FUNCTION_214_0()
{

  swift_unknownObjectRelease();
  return result;
}

uint64_t OUTLINED_FUNCTION_215()
{

  return sub_1C7551F3C();
}

uint64_t OUTLINED_FUNCTION_216_0()
{

  return sub_1C754F09C();
}

void OUTLINED_FUNCTION_217(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1C6F7ED9C(0, v7, 0, a4, a5, a6, a7);
}

void *OUTLINED_FUNCTION_218_0(uint64_t a1)
{

  return sub_1C7550A5C();
}

void *OUTLINED_FUNCTION_219_0(uint64_t a1)
{

  return sub_1C7550A5C();
}

uint64_t OUTLINED_FUNCTION_220_0()
{

  return sub_1C754F09C();
}

uint64_t OUTLINED_FUNCTION_221_0(uint64_t a1)
{

  return sub_1C754F1CC();
}

uint64_t OUTLINED_FUNCTION_232_0(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_234_0(uint64_t result)
{
  *(v1 + 14) = result;
  *v2 = result;
  return result;
}

void OUTLINED_FUNCTION_236_0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10[6] = 1;
  v10[7] = a1;
  v10[8] = a10;
}

void OUTLINED_FUNCTION_241_0()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v1;
  *(v5 + 32) = v3;
  *(v5 + 40) = v4;
}

uint64_t OUTLINED_FUNCTION_246_0()
{

  return sub_1C75519EC();
}

void OUTLINED_FUNCTION_247_0()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_248_0()
{
}

uint64_t OUTLINED_FUNCTION_249_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C7551DBC();
}

id OUTLINED_FUNCTION_250_0()
{
  v3 = *(*(v0 + 48) + 8 * v1);

  return v3;
}

uint64_t OUTLINED_FUNCTION_251_0()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_253_0(uint64_t a1, uint64_t a2)
{

  return sub_1C7551DBC();
}

uint64_t OUTLINED_FUNCTION_255_0()
{

  return sub_1C6FD7F70();
}

uint64_t OUTLINED_FUNCTION_256_0()
{
}

void *OUTLINED_FUNCTION_257_0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return memcpy(va, (v10 - 208), 0x78uLL);
}

id OUTLINED_FUNCTION_260_1()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

id OUTLINED_FUNCTION_261_0(float a1)
{
  *v2 = a1;

  return v1;
}

BOOL OUTLINED_FUNCTION_262_0()
{

  return os_log_type_enabled(v0, v1);
}

void *OUTLINED_FUNCTION_281_0(void *result)
{
  *(v2 + 80) = result;
  result[2] = v4;
  result[3] = v1;
  result[4] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_283_0(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *OUTLINED_FUNCTION_288_0()
{
  *v2 = v3;
  v2[1] = v1;
  v2[2] = v0;
  return v2;
}

uint64_t OUTLINED_FUNCTION_311_0(uint64_t a1)
{
  *(v1 + 192) = a1;

  return sub_1C7550CCC();
}

uint64_t OUTLINED_FUNCTION_312_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_task_create();
}

void OUTLINED_FUNCTION_313_0()
{

  JUMPOUT(0x1CCA5CD70);
}

void *OUTLINED_FUNCTION_314_0()
{

  return sub_1C7550A5C();
}

void *OUTLINED_FUNCTION_315_0()
{

  return sub_1C7550A5C();
}

void OUTLINED_FUNCTION_317_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1C6F7ED9C(a1, v7, 1, a4, a5, a6, a7);
}

uint64_t OUTLINED_FUNCTION_318_0()
{
}

uint64_t OUTLINED_FUNCTION_319_0()
{
  *(v0 + v2) = v1;
}

uint64_t OUTLINED_FUNCTION_320()
{
  __swift_getEnumTagSinglePayload(v1, 1, v0);
}

uint64_t sub_1C7081F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C75604F0;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1C6F6D524();
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
  *(v12 + 104) = sub_1C7067A60();
  *(v12 + 72) = a2;
  sub_1C75504FC();
  v13 = sub_1C755112C();
  v14 = *(a1 + 24);
  v15 = [v14 predicate];
  if (v15)
  {
    v16 = v15;
    sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    v18 = OUTLINED_FUNCTION_13_1(v17);
    *(v18 + 16) = xmmword_1C7564A90;
    *(v18 + 32) = v13;
    *(v18 + 40) = v16;
    v19 = v13;
    v20 = v16;
    v21 = sub_1C6F6E5C4(v18);
    [v14 setPredicate_];
  }

  else
  {
    [v14 setPredicate_];
  }

  a5(0);
  v22 = a6(a1);

  return v22;
}

id static PHSuggestion.fetchRelatedCollection(with:options:)(void *a1, void *a2)
{
  [a1 type];
  v4 = [a1 relatedCollectionUUID];
  v5 = sub_1C755068C();
  v7 = v6;

  v8 = static PHSuggestion.fetchRelatedCollection(with:suggestionSubtype:options:)(v5, v7, [a1 subtype], a2);

  return v8;
}

id static PHSuggestion.fetchRelatedCollection(with:suggestionSubtype:options:)(uint64_t a1, int a2, __int16 a3, id a4)
{
  switch(a3)
  {
    case 910:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1C7565670;
      *(v4 + 32) = sub_1C7551EFC();
      sub_1C7082AAC(v4, a4);
      sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      OUTLINED_FUNCTION_2_18(ObjCClassFromMetadata);
      if (!v7)
      {
        return 0;
      }

      goto LABEL_14;
    case 911:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1C7565670;
      *(v4 + 32) = sub_1C7551EFC();
      sub_1C7082AAC(v4, a4);
      sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
      v29 = swift_getObjCClassFromMetadata();
      OUTLINED_FUNCTION_2_18(v29);
      if (!v30)
      {
        return 0;
      }

LABEL_14:
      OUTLINED_FUNCTION_5_5();
      objc_opt_self();
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v32 = OUTLINED_FUNCTION_13_1(v31);
      OUTLINED_FUNCTION_6_24(v32, xmmword_1C755BAB0);
      sub_1C7550B3C();
      v33 = OUTLINED_FUNCTION_9_17();
      v14 = OUTLINED_FUNCTION_3_21(v33, sel_fetchPersonsWithLocalIdentifiers_options_);
      goto LABEL_15;
    case 912:
      sub_1C6F65BE8(0, &qword_1EDD0FA88, 0x1E6978650);
      v15 = swift_getObjCClassFromMetadata();
      OUTLINED_FUNCTION_2_18(v15);
      if (v16)
      {
        goto LABEL_7;
      }

      return 0;
    case 913:
      result = [a4 photoLibrary];
      if (result)
      {
        OUTLINED_FUNCTION_8_16();
        swift_initStackObject();
        v21 = a4;
        v22 = OUTLINED_FUNCTION_1_29();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
        inited = swift_initStackObject();
        OUTLINED_FUNCTION_4_19(inited, xmmword_1C755BAB0);
        sub_1C707DA44();
        v25 = sub_1C7081F9C(v22, v24, 1684632949, 0xE400000000000000, type metadata accessor for TripHighlightFetcher, sub_1C74B8450);

        if ([v25 count] < 1)
        {

          v45 = swift_initStackObject();
          OUTLINED_FUNCTION_4_19(v45, xmmword_1C755BAB0);
          sub_1C707DA44();
          v37 = v46;
          v38 = type metadata accessor for TripFetcher;
          v39 = static TripFetcher.fetchCollections(using:);
LABEL_22:
          v25 = sub_1C7081F9C(v22, v37, 1684632949, 0xE400000000000000, v38, v39);
LABEL_23:
        }

        else
        {
        }

        return v25;
      }

      else
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
      }

      return result;
    case 914:
      v8 = OUTLINED_FUNCTION_10_19(a1, sel_setIncludePendingMemories_);
      OUTLINED_FUNCTION_10_19(v8, sel_setIncludeLocalMemories_);
      sub_1C6F65BE8(0, &qword_1EDD0FA88, 0x1E6978650);
      v9 = swift_getObjCClassFromMetadata();
      OUTLINED_FUNCTION_2_18(v9);
      if (!v10)
      {
        return 0;
      }

      OUTLINED_FUNCTION_5_5();
      v11 = objc_opt_self();
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v13 = OUTLINED_FUNCTION_13_1(v12);
      OUTLINED_FUNCTION_6_24(v13, xmmword_1C755BAB0);
      sub_1C7550B3C();
      OUTLINED_FUNCTION_9_17();
      v14 = [v11 fetchAssetCollectionsWithType:4 localIdentifiers:v4 options:a4];
      goto LABEL_15;
    case 915:
      result = [a4 photoLibrary];
      if (!result)
      {
        goto LABEL_26;
      }

      OUTLINED_FUNCTION_8_16();
      swift_initStackObject();
      v34 = a4;
      v22 = OUTLINED_FUNCTION_1_29();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v35 = swift_initStackObject();
      OUTLINED_FUNCTION_4_19(v35, xmmword_1C755BAB0);
      sub_1C707DA44();
      v37 = v36;
      v38 = type metadata accessor for DayEventsFetcher;
      v39 = sub_1C74B8438;
      goto LABEL_22;
    case 916:
      result = [a4 photoLibrary];
      if (!result)
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_8_16();
      swift_initStackObject();
      v40 = a4;
      v41 = OUTLINED_FUNCTION_1_29();
      type metadata accessor for SocialGroupFetcher();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v42 = swift_initStackObject();
      OUTLINED_FUNCTION_4_19(v42, xmmword_1C755BAB0);
      sub_1C707DA44();
      static SocialGroupFetcher.fetchCollections(using:uuids:)(v41, v43);
      v25 = v44;
      goto LABEL_23;
    case 917:
      v26 = OUTLINED_FUNCTION_10_19(a1, sel_setIncludeScreenRecordingsSmartAlbum_);
      OUTLINED_FUNCTION_10_19(v26, sel_setIncludeProResSmartAlbum_);
      sub_1C6F65BE8(0, &qword_1EDD0FA88, 0x1E6978650);
      v27 = swift_getObjCClassFromMetadata();
      OUTLINED_FUNCTION_2_18(v27);
      if (!v28)
      {
        return 0;
      }

LABEL_7:
      OUTLINED_FUNCTION_5_5();
      objc_opt_self();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
      v18 = OUTLINED_FUNCTION_13_1(v17);
      OUTLINED_FUNCTION_6_24(v18, xmmword_1C755BAB0);
      sub_1C7550B3C();
      v19 = OUTLINED_FUNCTION_9_17();
      v14 = OUTLINED_FUNCTION_3_21(v19, sel_fetchAssetCollectionsWithLocalIdentifiers_options_);
LABEL_15:
      v25 = v14;

      return v25;
    default:
      return 0;
  }
}